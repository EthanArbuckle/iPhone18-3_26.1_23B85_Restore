@interface AVCameraCalibrationData
- (AVCameraCalibrationData)cameraCalibrationDataWithExifOrientation:(unsigned int)a3;
- (AVCameraCalibrationData)initWithAuxiliaryMetadata:(CGImageMetadata *)a3;
- (AVCameraCalibrationData)initWithCameraCalibrationDataDictionary:(id)a3 error:(id *)a4;
- (AVCameraCalibrationData)initWithDepthMetadataDictionary:(id)a3;
- (CGImageMetadata)copyAuxiliaryMetadata;
- (CGPoint)lensDistortionCenter;
- (CGSize)intrinsicMatrixReferenceDimensions;
- (NSData)inverseLensDistortionLookupTable;
- (NSData)lensDistortionLookupTable;
- (id)_distortionLookupTableFromCoefficients:(id)a3 distortionCenter:(CGPoint)a4 pixelSize:(float)a5 referenceDimensions:(CGSize)a6 lookupTableLength:(int)a7;
- (id)_initEmpty;
- (id)cameraCalibrationDataDictionary;
- (id)debugDescription;
- (id)description;
- (matrix_float3x3)intrinsicMatrix;
- (matrix_float4x3)extrinsicMatrix;
- (uint64_t)copyAuxiliaryMetadata;
- (void)dealloc;
@end

@implementation AVCameraCalibrationData

- (id)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  internal = self->_internal;
  v5 = *internal->_anon_10;
  v4 = *&internal->_anon_10[16];
  v6 = *&internal->_anon_10[32];
  v8 = *internal->_anon_50;
  v7 = *&internal->_anon_50[16];
  v10 = *&internal->_anon_50[32];
  v9 = *&internal->_anon_50[48];
  pixelSize = internal->pixelSize;
  y = internal->lensDistortionCenter.y;
  if (internal->lensDistortionCenter.x == *MEMORY[0x1E695EFF8] && y == *(MEMORY[0x1E695EFF8] + 8))
  {
    v15 = &stru_1F1CBCFE8;
  }

  else
  {
    v22 = *&internal->_anon_10[16];
    v23 = *internal->_anon_10;
    v20 = *internal->_anon_50;
    v21 = *&internal->_anon_10[32];
    v18 = *&internal->_anon_50[32];
    v19 = *&internal->_anon_50[16];
    v17 = *&internal->_anon_50[48];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@", distortionCenter:{%.2f, %.2f}", *&internal->lensDistortionCenter.x, *&y];
    v9 = v17;
    v10 = v18;
    v7 = v19;
    v8 = v20;
    v6 = v21;
    v4 = v22;
    v5 = v23;
    internal = self->_internal;
  }

  return [v2 stringWithFormat:@"intrinsicMatrix: [%.2f %.2f %.2f | %.2f %.2f %.2f | %.2f %.2f %.2f], extrinsicMatrix: [%.2f %.2f %.2f %.2f | %.2f %.2f %.2f %.2f | %.2f %.2f %.2f %.2f] pixelSize:%.3f mm%@, ref:{%.0fx%.0f}", *&v5, *&v4, *&v6, *(&v5 + 1), *(&v4 + 1), *(&v6 + 1), *(&v5 + 2), *(&v4 + 2), *(&v6 + 2), *&v8, *&v7, *&v10, *&v9, *(&v8 + 1), *(&v7 + 1), *(&v10 + 1), *(&v9 + 1), *(&v8 + 2), *(&v7 + 2), *(&v10 + 2), *(&v9 + 2), pixelSize, v15, *&internal->intrinsicMatrixReferenceDimensions.width, *&internal->intrinsicMatrixReferenceDimensions.height];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCameraCalibrationData debugDescription](self, "debugDescription")];
}

- (matrix_float3x3)intrinsicMatrix
{
  internal = self->_internal;
  v3 = *internal->_anon_10;
  v4 = *&internal->_anon_10[16];
  v5 = *&internal->_anon_10[32];
  result.columns[2] = v5;
  result.columns[1] = v4;
  result.columns[0] = v3;
  return result;
}

- (CGSize)intrinsicMatrixReferenceDimensions
{
  internal = self->_internal;
  width = internal->intrinsicMatrixReferenceDimensions.width;
  height = internal->intrinsicMatrixReferenceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (matrix_float4x3)extrinsicMatrix
{
  internal = self->_internal;
  v3 = *internal->_anon_50;
  v4 = *&internal->_anon_50[16];
  v5 = *&internal->_anon_50[32];
  v6 = *&internal->_anon_50[48];
  result.columns[3] = v6;
  result.columns[2] = v5;
  result.columns[1] = v4;
  result.columns[0] = v3;
  return result;
}

- (NSData)lensDistortionLookupTable
{
  internal = self->_internal;
  lensDistortionLookupTable = internal->lensDistortionLookupTable;
  if (!lensDistortionLookupTable)
  {
    lensDistortionCoefficients = internal->lensDistortionCoefficients;
    if (lensDistortionCoefficients)
    {
      *&v2 = internal->pixelSize;
      self->_internal->lensDistortionLookupTable = [(AVCameraCalibrationData *)self _distortionLookupTableFromCoefficients:lensDistortionCoefficients distortionCenter:42 pixelSize:internal->lensDistortionCenter.x referenceDimensions:internal->lensDistortionCenter.y lookupTableLength:v2, internal->intrinsicMatrixReferenceDimensions.width, internal->intrinsicMatrixReferenceDimensions.height];
      lensDistortionLookupTable = self->_internal->lensDistortionLookupTable;
    }

    else
    {
      lensDistortionLookupTable = 0;
    }
  }

  v7 = lensDistortionLookupTable;

  return v7;
}

- (NSData)inverseLensDistortionLookupTable
{
  internal = self->_internal;
  inverseLensDistortionLookupTable = internal->inverseLensDistortionLookupTable;
  if (!inverseLensDistortionLookupTable)
  {
    inverseLensDistortionCoefficients = internal->inverseLensDistortionCoefficients;
    if (inverseLensDistortionCoefficients)
    {
      *&v2 = internal->pixelSize;
      self->_internal->inverseLensDistortionLookupTable = [(AVCameraCalibrationData *)self _distortionLookupTableFromCoefficients:inverseLensDistortionCoefficients distortionCenter:42 pixelSize:internal->lensDistortionCenter.x referenceDimensions:internal->lensDistortionCenter.y lookupTableLength:v2, internal->intrinsicMatrixReferenceDimensions.width, internal->intrinsicMatrixReferenceDimensions.height];
      inverseLensDistortionLookupTable = self->_internal->inverseLensDistortionLookupTable;
    }

    else
    {
      inverseLensDistortionLookupTable = 0;
    }
  }

  v7 = inverseLensDistortionLookupTable;

  return v7;
}

- (CGPoint)lensDistortionCenter
{
  internal = self->_internal;
  x = internal->lensDistortionCenter.x;
  y = internal->lensDistortionCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (AVCameraCalibrationData)initWithCameraCalibrationDataDictionary:(id)a3 error:(id *)a4
{
  v7 = [a3 objectForKeyedSubscript:@"VersionMajor"];
  v8 = [a3 objectForKeyedSubscript:@"VersionMinor"];
  if ([v7 intValue] != 1 || objc_msgSend(v8, "intValue") || (result = -[AVCameraCalibrationData initWithDepthMetadataDictionary:](self, "initWithDepthMetadataDictionary:", a3)) == 0)
  {
    v9 = AVLocalizedError();
    result = 0;
    if (a4)
    {
      if (v9)
      {
        result = 0;
        *a4 = v9;
      }
    }
  }

  return result;
}

- (id)cameraCalibrationDataDictionary
{
  result = self->_internal->cameraCalibrationDataDictionary;
  if (!result)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [v4 setObject:&unk_1F1CEA010 forKeyedSubscript:@"VersionMajor"];
    [v4 setObject:&unk_1F1CEA028 forKeyedSubscript:@"VersionMinor"];
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_internal->_anon_10 length:48];
    [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E698F888]];
    [v4 setObject:CGSizeCreateDictionaryRepresentation(self->_internal->intrinsicMatrixReferenceDimensions) forKeyedSubscript:*MEMORY[0x1E698F890]];
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_internal->_anon_50 length:64];
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E698F880]];
    *&v7 = self->_internal->pixelSize;
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x1E698F8B0]];
    internal = self->_internal;
    lensDistortionCoefficients = internal->lensDistortionCoefficients;
    if (lensDistortionCoefficients)
    {
      v11 = [(NSData *)lensDistortionCoefficients copy];
      [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x1E698F8A8]];
      internal = self->_internal;
    }

    inverseLensDistortionCoefficients = internal->inverseLensDistortionCoefficients;
    if (inverseLensDistortionCoefficients)
    {
      v13 = [(NSData *)inverseLensDistortionCoefficients copy];
      [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x1E698F898]];
      internal = self->_internal;
    }

    x = internal->lensDistortionCenter.x;
    y = internal->lensDistortionCenter.y;
    if (x != *MEMORY[0x1E695EFF8] || y != *(MEMORY[0x1E695EFF8] + 8))
    {
      [v4 setObject:CGPointCreateDictionaryRepresentation(*&x) forKeyedSubscript:*MEMORY[0x1E698F8A0]];
    }

    self->_internal->cameraCalibrationDataDictionary = [v4 copy];
    return self->_internal->cameraCalibrationDataDictionary;
  }

  return result;
}

- (AVCameraCalibrationData)initWithAuxiliaryMetadata:(CGImageMetadata *)a3
{
  v69.receiver = self;
  v69.super_class = AVCameraCalibrationData;
  v4 = [(AVCameraCalibrationData *)&v69 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVCameraCalibrationDataInternal);
    v4->_internal = v5;
    if (!v5)
    {
      goto LABEL_35;
    }

    v6 = *MEMORY[0x1E6991340];
    v7 = AVAuxiliaryMetadataArrayTagWithPrefixedKey(a3, *MEMORY[0x1E6991340], *MEMORY[0x1E6991360]);
    if ([(CGImageMetadataTag *)v7 count]!= 9)
    {
      goto LABEL_35;
    }

    if (v7 && [(CGImageMetadataTag *)v7 count]== 9)
    {
      [-[CGImageMetadataTag objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{0), "floatValue"}];
      *v4->_internal->_anon_10 = v8;
      [-[CGImageMetadataTag objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{1), "floatValue"}];
      *&v4->_internal->_anon_10[4] = v9;
      [-[CGImageMetadataTag objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{2), "floatValue"}];
      *&v4->_internal->_anon_10[8] = v10;
      [-[CGImageMetadataTag objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{3), "floatValue"}];
      *&v4->_internal->_anon_10[16] = v11;
      [-[CGImageMetadataTag objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{4), "floatValue"}];
      *&v4->_internal->_anon_10[20] = v12;
      [-[CGImageMetadataTag objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{5), "floatValue"}];
      *&v4->_internal->_anon_10[24] = v13;
      [-[CGImageMetadataTag objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{6), "floatValue"}];
      *&v4->_internal->_anon_10[32] = v14;
      [-[CGImageMetadataTag objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{7), "floatValue"}];
      *&v4->_internal->_anon_10[36] = v15;
      [-[CGImageMetadataTag objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{8), "floatValue"}];
      *&v4->_internal->_anon_10[40] = v16;
    }

    v17 = AVAuxiliaryMetadataStringTagWithPrefixedKey(a3, v6, *MEMORY[0x1E6991370]);
    if (v17 && ([v17 floatValue], v4->_internal->intrinsicMatrixReferenceDimensions.width = v18, (v19 = AVAuxiliaryMetadataStringTagWithPrefixedKey(a3, v6, *MEMORY[0x1E6991368])) != 0) && (objc_msgSend(v19, "floatValue"), v4->_internal->intrinsicMatrixReferenceDimensions.height = v20, v21 = AVAuxiliaryMetadataArrayTagWithPrefixedKey(a3, v6, *MEMORY[0x1E6991350]), -[CGImageMetadataTag count](v21, "count") == 12) && (objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 0), "floatValue"), *v4->_internal->_anon_50 = v22, objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 1), "floatValue"), *&v4->_internal->_anon_50[4] = v23, objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 2), "floatValue"), *&v4->_internal->_anon_50[8] = v24, objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 3), "floatValue"), *&v4->_internal->_anon_50[16] = v25, objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 4), "floatValue"), *&v4->_internal->_anon_50[20] = v26, objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 5), "floatValue"), *&v4->_internal->_anon_50[24] = v27, objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 6), "floatValue"), *&v4->_internal->_anon_50[32] = v28, objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 7), "floatValue"), *&v4->_internal->_anon_50[36] = v29, objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 8), "floatValue"), *&v4->_internal->_anon_50[40] = v30, objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 9), "floatValue"), *&v4->_internal->_anon_50[48] = v31, objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 10), "floatValue"), *&v4->_internal->_anon_50[52] = v32, objc_msgSend(-[CGImageMetadataTag objectAtIndexedSubscript:](v21, "objectAtIndexedSubscript:", 11), "floatValue"), *&v4->_internal->_anon_50[56] = v33, (v34 = AVAuxiliaryMetadataStringTagWithPrefixedKey(a3, v6, *MEMORY[0x1E6991398])) != 0))
    {
      [v34 floatValue];
      v4->_internal->pixelSize = v35;
      v36 = AVAuxiliaryMetadataArrayTagWithPrefixedKey(a3, v6, *MEMORY[0x1E6991390]);
      if ([(CGImageMetadataTag *)v36 count]== 8)
      {
        v37 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
        v38 = [(NSData *)v37 mutableBytes];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v39 = [(CGImageMetadataTag *)v36 countByEnumeratingWithState:&v65 objects:v64 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v66;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v66 != v41)
              {
                objc_enumerationMutation(v36);
              }

              [*(*(&v65 + 1) + 8 * i) floatValue];
              *v38++ = v43;
            }

            v40 = [(CGImageMetadataTag *)v36 countByEnumeratingWithState:&v65 objects:v64 count:16];
          }

          while (v40);
        }

        v4->_internal->lensDistortionCoefficients = v37;
      }

      v44 = AVAuxiliaryMetadataArrayTagWithPrefixedKey(a3, v6, *MEMORY[0x1E6991378]);
      if ([(CGImageMetadataTag *)v44 count]== 8)
      {
        v45 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
        v46 = [(NSData *)v45 mutableBytes];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v47 = [(CGImageMetadataTag *)v44 countByEnumeratingWithState:&v60 objects:v59 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v61;
          do
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v61 != v49)
              {
                objc_enumerationMutation(v44);
              }

              [*(*(&v60 + 1) + 8 * j) floatValue];
              *v46++ = v51;
            }

            v48 = [(CGImageMetadataTag *)v44 countByEnumeratingWithState:&v60 objects:v59 count:16];
          }

          while (v48);
        }

        v4->_internal->inverseLensDistortionCoefficients = v45;
      }

      v52 = AVAuxiliaryMetadataStringTagWithPrefixedKey(a3, v6, *MEMORY[0x1E6991380]);
      v53 = 0.0;
      v54 = 0.0;
      if (v52)
      {
        [v52 floatValue];
        v54 = v55;
      }

      v4->_internal->lensDistortionCenter.x = v54;
      v56 = AVAuxiliaryMetadataStringTagWithPrefixedKey(a3, v6, *MEMORY[0x1E6991388]);
      if (v56)
      {
        [v56 floatValue];
        v53 = v57;
      }

      v4->_internal->lensDistortionCenter.y = v53;
    }

    else
    {
LABEL_35:

      return 0;
    }
  }

  return v4;
}

- (AVCameraCalibrationData)initWithDepthMetadataDictionary:(id)a3
{
  v17.receiver = self;
  v17.super_class = AVCameraCalibrationData;
  v4 = [(AVCameraCalibrationData *)&v17 init];
  if (!v4)
  {
    return v4;
  }

  v5 = objc_alloc_init(AVCameraCalibrationDataInternal);
  v4->_internal = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69913F0]];
  if ([v6 length] != 48)
  {
    goto LABEL_17;
  }

  [v6 getBytes:v4->_internal->_anon_10 length:48];
  v7 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69913F8]];
  if (!v7)
  {
    goto LABEL_17;
  }

  if (!CGSizeMakeWithDictionaryRepresentation(v7, &v4->_internal->intrinsicMatrixReferenceDimensions))
  {
    goto LABEL_17;
  }

  v8 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69913E0]];
  if ([v8 length] != 64)
  {
    goto LABEL_17;
  }

  [v8 getBytes:v4->_internal->_anon_50 length:64];
  v9 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6991418]];
  if (!v9)
  {
    goto LABEL_17;
  }

  [v9 floatValue];
  v4->_internal->pixelSize = v10;
  v11 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6991410]];
  if (v11)
  {
    v12 = v11;
    if ([v11 length] != 32)
    {
      goto LABEL_17;
    }

    v4->_internal->lensDistortionCoefficients = [v12 copy];
  }

  v13 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6991400]];
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = v13;
  if ([v13 length] != 32)
  {
LABEL_17:

    return 0;
  }

  v4->_internal->inverseLensDistortionCoefficients = [v14 copy];
LABEL_14:
  v15 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6991408]];
  if (v15)
  {
    CGPointMakeWithDictionaryRepresentation(v15, &v4->_internal->lensDistortionCenter);
  }

  return v4;
}

- (AVCameraCalibrationData)cameraCalibrationDataWithExifOrientation:(unsigned int)a3
{
  v4 = [[AVCameraCalibrationData alloc] _initEmpty];
  v5 = v4;
  if (v4 && (internal = self->_internal, v7 = v4[1], v8 = *internal->_anon_10, v9 = *&internal->_anon_10[32], *(v7 + 32) = *&internal->_anon_10[16], *(v7 + 48) = v9, *(v7 + 16) = v8, *(v7 + 64) = internal->intrinsicMatrixReferenceDimensions, v10 = *internal->_anon_50, v11 = *&internal->_anon_50[16], v12 = *&internal->_anon_50[48], *(v7 + 112) = *&internal->_anon_50[32], *(v7 + 128) = v12, *(v7 + 80) = v10, *(v7 + 96) = v11, *(v7 + 144) = internal->pixelSize, *(v7 + 152) = internal->lensDistortionCoefficients, *(v7 + 160) = internal->inverseLensDistortionCoefficients, *(v7 + 168) = internal->lensDistortionCenter, *(v7 + 184) = internal->lensDistortionLookupTable, *(v7 + 192) = internal->inverseLensDistortionLookupTable, FigCaptureRotateCalibrationData()))
  {

    return 0;
  }

  else
  {

    return v5;
  }
}

- (CGImageMetadata)copyAuxiliaryMetadata
{
  Mutable = CGImageMetadataCreateMutable();
  v4 = Mutable;
  if (!Mutable)
  {
    [AVCameraCalibrationData copyAuxiliaryMetadata];
    return v4;
  }

  v5 = *MEMORY[0x1E6991338];
  v6 = *MEMORY[0x1E6991340];
  if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, *MEMORY[0x1E6991338], *MEMORY[0x1E6991340], 0))
  {
    [AVCameraCalibrationData copyAuxiliaryMetadata];
    goto LABEL_34;
  }

  LODWORD(v7) = *self->_internal->_anon_10;
  v43[0] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  LODWORD(v8) = *&self->_internal->_anon_10[4];
  v43[1] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  LODWORD(v9) = *&self->_internal->_anon_10[8];
  v43[2] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  LODWORD(v10) = *&self->_internal->_anon_10[16];
  v43[3] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  LODWORD(v11) = *&self->_internal->_anon_10[20];
  v43[4] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  LODWORD(v12) = *&self->_internal->_anon_10[24];
  v43[5] = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  LODWORD(v13) = *&self->_internal->_anon_10[32];
  v43[6] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  LODWORD(v14) = *&self->_internal->_anon_10[36];
  v43[7] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  LODWORD(v15) = *&self->_internal->_anon_10[40];
  v43[8] = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:9];
  if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991360], v16))
  {
    [AVCameraCalibrationData copyAuxiliaryMetadata];
    goto LABEL_34;
  }

  if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991370], [MEMORY[0x1E696AD98] numberWithDouble:self->_internal->intrinsicMatrixReferenceDimensions.width]))
  {
    [AVCameraCalibrationData copyAuxiliaryMetadata];
    goto LABEL_34;
  }

  if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991368], [MEMORY[0x1E696AD98] numberWithDouble:self->_internal->intrinsicMatrixReferenceDimensions.height]))
  {
    [AVCameraCalibrationData copyAuxiliaryMetadata];
    goto LABEL_34;
  }

  LODWORD(v17) = *self->_internal->_anon_50;
  v42[0] = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  LODWORD(v18) = *&self->_internal->_anon_50[4];
  v42[1] = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  LODWORD(v19) = *&self->_internal->_anon_50[8];
  v42[2] = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  LODWORD(v20) = *&self->_internal->_anon_50[16];
  v42[3] = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  LODWORD(v21) = *&self->_internal->_anon_50[20];
  v42[4] = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  LODWORD(v22) = *&self->_internal->_anon_50[24];
  v42[5] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  LODWORD(v23) = *&self->_internal->_anon_50[32];
  v42[6] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  LODWORD(v24) = *&self->_internal->_anon_50[36];
  v42[7] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  LODWORD(v25) = *&self->_internal->_anon_50[40];
  v42[8] = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  LODWORD(v26) = *&self->_internal->_anon_50[48];
  v42[9] = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  LODWORD(v27) = *&self->_internal->_anon_50[52];
  v42[10] = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  LODWORD(v28) = *&self->_internal->_anon_50[56];
  v42[11] = [MEMORY[0x1E696AD98] numberWithFloat:v28];
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:12];
  if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991350], v29))
  {
    [AVCameraCalibrationData copyAuxiliaryMetadata];
    goto LABEL_34;
  }

  *&v30 = self->_internal->pixelSize;
  if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991398], [MEMORY[0x1E696AD98] numberWithFloat:v30]))
  {
    [AVCameraCalibrationData copyAuxiliaryMetadata];
    goto LABEL_34;
  }

  if ([(NSData *)self->_internal->lensDistortionCoefficients length]== 32)
  {
    v31 = [MEMORY[0x1E695DF70] array];
    v32 = [(NSData *)self->_internal->lensDistortionCoefficients bytes];
    for (i = 0; i != 32; i += 4)
    {
      LODWORD(v33) = *&v32[i];
      [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v33)}];
    }

    if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991390], v31))
    {
      [AVCameraCalibrationData copyAuxiliaryMetadata];
      goto LABEL_34;
    }
  }

  if ([(NSData *)self->_internal->inverseLensDistortionCoefficients length]== 32)
  {
    v35 = [MEMORY[0x1E695DF70] array];
    v36 = [(NSData *)self->_internal->inverseLensDistortionCoefficients bytes];
    for (j = 0; j != 32; j += 4)
    {
      LODWORD(v37) = *&v36[j];
      [v35 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v37)}];
    }

    if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991378], v35))
    {
      [AVCameraCalibrationData copyAuxiliaryMetadata];
      goto LABEL_34;
    }
  }

  internal = self->_internal;
  if (internal->lensDistortionCenter.x != *MEMORY[0x1E695EFF8] || internal->lensDistortionCenter.y != *(MEMORY[0x1E695EFF8] + 8))
  {
    if (AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991380], [MEMORY[0x1E696AD98] numberWithDouble:?]))
    {
      if (AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991388], [MEMORY[0x1E696AD98] numberWithDouble:self->_internal->lensDistortionCenter.y]))
      {
        return v4;
      }

      [AVCameraCalibrationData copyAuxiliaryMetadata];
    }

    else
    {
      [AVCameraCalibrationData copyAuxiliaryMetadata];
    }

LABEL_34:
    CFRelease(v4);
    return 0;
  }

  return v4;
}

- (id)_initEmpty
{
  v5.receiver = self;
  v5.super_class = AVCameraCalibrationData;
  v2 = [(AVCameraCalibrationData *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVCameraCalibrationDataInternal);
    v2->_internal = v3;
    if (!v3)
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
  }

  v4.receiver = self;
  v4.super_class = AVCameraCalibrationData;
  [(AVCameraCalibrationData *)&v4 dealloc];
}

- (id)_distortionLookupTableFromCoefficients:(id)a3 distortionCenter:(CGPoint)a4 pixelSize:(float)a5 referenceDimensions:(CGSize)a6 lookupTableLength:(int)a7
{
  if (!a3)
  {
    [AVCameraCalibrationData _distortionLookupTableFromCoefficients:distortionCenter:pixelSize:referenceDimensions:lookupTableLength:];
LABEL_18:
    v15 = 0;
LABEL_20:
    v16 = 0;
    goto LABEL_15;
  }

  height = a6.height;
  width = a6.width;
  y = a4.y;
  x = a4.x;
  if ([a3 length] != 32)
  {
    [AVCameraCalibrationData _distortionLookupTableFromCoefficients:distortionCenter:pixelSize:referenceDimensions:lookupTableLength:];
    goto LABEL_18;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * a7];
  v15 = v14;
  if (!v14)
  {
    [AVCameraCalibrationData _distortionLookupTableFromCoefficients:distortionCenter:pixelSize:referenceDimensions:lookupTableLength:];
    goto LABEL_20;
  }

  v16 = [v14 mutableBytes];
  if (v16)
  {
    v17 = [a3 bytes];
    v18 = width - x;
    if (x > width - x)
    {
      v18 = x;
    }

    v19 = height - y;
    if (y > height - y)
    {
      v19 = y;
    }

    if (a7 >= 1)
    {
      v20 = 0;
      v21 = sqrt(v19 * v19 + v18 * v18);
      v18 = (a7 - 1);
      v19 = v21 * a5;
      do
      {
        v22 = v19 * v20 / v18 * (v19 * v20 / v18);
        v23 = v22 * v22;
        v24 = v22 * (v22 * v22);
        v25 = (v22 * v17[1] + *v17 + v17[2] * v23 + v17[3] * v24 + v17[4] * (v23 * v23) + v17[5] * (v22 * v22 * v24) + v17[6] * (v24 * v24) + v17[7] * (v23 * v23 * v24)) / 100.0 + 1.0;
        v26 = 0.0;
        if (v25 > 0.0)
        {
          v26 = 1.0 / v25 + -1.0;
        }

        v16[v20++] = v26;
      }

      while (a7 != v20);
    }

    v16 = [MEMORY[0x1E695DEF0] dataWithData:{v15, v18, v19}];
  }

  else
  {
    [AVCameraCalibrationData _distortionLookupTableFromCoefficients:distortionCenter:pixelSize:referenceDimensions:lookupTableLength:];
  }

LABEL_15:

  return v16;
}

- (uint64_t)copyAuxiliaryMetadata
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_distortionLookupTableFromCoefficients:distortionCenter:pixelSize:referenceDimensions:lookupTableLength:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_distortionLookupTableFromCoefficients:distortionCenter:pixelSize:referenceDimensions:lookupTableLength:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_distortionLookupTableFromCoefficients:distortionCenter:pixelSize:referenceDimensions:lookupTableLength:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_distortionLookupTableFromCoefficients:distortionCenter:pixelSize:referenceDimensions:lookupTableLength:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

@end