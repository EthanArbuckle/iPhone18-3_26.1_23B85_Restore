@interface VNFaceSegments
+ (NSDictionary)faceSegmentIndexToFlagMap;
+ (NSDictionary)faceSegmentToSegmentMaskGrayLevelDictionary;
- (BOOL)isEqual:(id)a3;
- (CGRect)_normalizeRegion:(CGRect)a3;
- (CGRect)boundingBox;
- (VNFaceSegments)initWithCoder:(id)a3;
- (VNFaceSegments)initWithRequestRevision:(unint64_t)a3 outputBufferWidth:(unint64_t)a4 outputBufferHeight:(unint64_t)a5 outputBufferData:(id)a6 numberOfFaceSegments:(unint64_t)a7 faceSegmentBBox:(CGRect)a8 faceSegmentLabelToProbabilityMap:(id)a9;
- (__CVBuffer)createMaskImageOfFaceSegments:(unint64_t)a3 error:(id *)a4;
- (__CVBuffer)createProbabilityImageOfFaceSegment:(unint64_t)a3 region:(CGRect)a4 normalize:(BOOL)a5 error:(id *)a6;
- (id).cxx_construct;
- (unint64_t)hash;
- (vImage_Buffer)_makeFaceSegmentProbabilityDataImageBuffer:(SEL)a3 rect:(id)a4;
- (void)_calculateProbabilityNormalSumsForRect:(CGRect)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNFaceSegments

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_calculateProbabilityNormalSumsForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25 = *MEMORY[0x1E69E9840];
  p_probabilityNormSums = &self->_probabilityNormSums;
  if (self->_probabilityNormSums.__begin_ == self->_probabilityNormSums.__end_)
  {
    v8 = self->_outputBufferHeight * self->_outputBufferWidth;
    v23 = 2143289344;
    std::vector<float>::resize(p_probabilityNormSums, v8, &v23, *&a3.origin.x);
  }

  numberOfFaceSegments = self->_numberOfFaceSegments;
  if (numberOfFaceSegments)
  {
    if (!(numberOfFaceSegments >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned char const*,unsigned long>>>(numberOfFaceSegments);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  memset(v22, 0, sizeof(v22));
  v10 = +[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary];
  v11 = [v10 allKeys];

  if ([v11 countByEnumeratingWithState:v22 objects:v24 count:16])
  {
    v12 = [(NSDictionary *)self->_faceSegmentLabelToProbabilityMap objectForKeyedSubscript:**(&v22[0] + 1)];
    v13 = [v12 objectForKeyedSubscript:@"data"];
    v14 = v13;
    [v13 bytes];

    v15 = [v12 objectForKeyedSubscript:@"rowBytes"];
    [v15 unsignedIntegerValue];

    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned char const*,unsigned long>>>(1uLL);
  }

  if (height >= 1)
  {
    outputBufferWidth = self->_outputBufferWidth;
    v17 = y;
    v18 = *v21 + 4 * outputBufferWidth * v17;
    do
    {
      v19 = x;
      if (width >= 1)
      {
        do
        {
          ++v19;
        }

        while (v19 < x + width);
      }

      v18 += 4 * outputBufferWidth;
      ++v17;
    }

    while (v17 < y + height);
  }
}

- (vImage_Buffer)_makeFaceSegmentProbabilityDataImageBuffer:(SEL)a3 rect:(id)a4
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a4;
  v10 = [v15 objectForKeyedSubscript:@"rowBytes"];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v15 objectForKeyedSubscript:@"data"];
  v13 = ([v12 bytes] + v11 * y + 4 * x);

  retstr->data = v13;
  retstr->height = height;
  retstr->width = width;
  retstr->rowBytes = v11;

  return result;
}

- (CGRect)_normalizeRegion:(CGRect)a3
{
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  v5 = (a3.origin.x - self->_boundingBox.origin.x) / (1.0 / width);
  v6 = (a3.origin.y - self->_boundingBox.origin.y) / (1.0 / height);
  v7 = a3.size.width / width;
  v8 = a3.size.height / height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (__CVBuffer)createProbabilityImageOfFaceSegment:(unint64_t)a3 region:(CGRect)a4 normalize:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  faceSegmentLabelToProbabilityMap = self->_faceSegmentLabelToProbabilityMap;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v15 = [(NSDictionary *)faceSegmentLabelToProbabilityMap objectForKeyedSubscript:v14];

  if (!v15)
  {
    if (a6)
    {
      v39 = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot create CVPixelBuffer object: faceSegment parameter is out of range"];
LABEL_16:
      v27 = 0;
      *a6 = v39;
      goto LABEL_23;
    }

LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  if (!CGRectContainsRect(self->_boundingBox, v49))
  {
    if (a6)
    {
      v39 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Cannot create CVPixelBuffer object: region parameter is out of range"];
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  [(VNFaceSegments *)self _normalizeRegion:x, y, width, height];
  outputBufferHeight = self->_outputBufferHeight;
  outputBufferWidth = self->_outputBufferWidth;
  v21 = v20 * outputBufferWidth;
  v23 = v22 * outputBufferWidth;
  v24 = (1.0 - v16 - v17) * outputBufferHeight;
  v25 = v17 * outputBufferHeight;
  memset(&src, 0, sizeof(src));
  [(VNFaceSegments *)self _makeFaceSegmentProbabilityDataImageBuffer:v15 rect:v20 * outputBufferWidth, v24, v22 * outputBufferWidth, v25];
  v26 = [(VNFaceSegments *)self _createFaceSegmentProabilityDataPixelBufferWithSize:a6 error:v23, v25];
  v27 = v26;
  if (v26)
  {
    CVPixelBufferLockBaseAddress(v26, 0);
    if (v7)
    {
      [(VNFaceSegments *)self _calculateProbabilityNormalSumsForRect:v21, v24, v23, v25];
      rowBytes = src.rowBytes;
      data = src.data;
      BytesPerRow = CVPixelBufferGetBytesPerRow(v27);
      BaseAddress = CVPixelBufferGetBaseAddress(v27);
      if (v25 < 1)
      {
        v38 = 0;
      }

      else
      {
        v30 = BaseAddress;
        v42 = a6;
        v43 = v15;
        v44 = v23;
        v31 = v21 + v23;
        v32 = v24;
        v33 = 4 * v32;
        do
        {
          if (v44 >= 1)
          {
            v34 = 0;
            v35 = self->_probabilityNormSums.__begin_ + self->_outputBufferWidth * v33;
            v36 = v21;
            do
            {
              v37 = *&v35[4 * v36];
              *&v30[v34] = expf(*&data[v34]) / v37;
              ++v36;
              v34 += 4;
            }

            while (v36 < v31);
          }

          v30 += BytesPerRow;
          data += rowBytes;
          ++v32;
          v33 += 4;
        }

        while (v32 < v24 + v25);
        v38 = 0;
        a6 = v42;
        v15 = v43;
      }
    }

    else
    {
      dest.data = CVPixelBufferGetBaseAddress(v27);
      dest.height = CVPixelBufferGetHeight(v27);
      dest.width = CVPixelBufferGetWidth(v27);
      dest.rowBytes = CVPixelBufferGetBytesPerRow(v27);
      v38 = vImageCopyBuffer(&src, &dest, 4uLL, 0);
    }

    CVPixelBufferUnlockBaseAddress(v27, 0);
    if (v38)
    {
      if (a6)
      {
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot copy face segment probability map. Error = %d", v38];
        *a6 = [VNError errorForInternalErrorWithLocalizedDescription:v40];
      }

      goto LABEL_22;
    }
  }

LABEL_23:

  return v27;
}

- (__CVBuffer)createMaskImageOfFaceSegments:(unint64_t)a3 error:(id *)a4
{
  v31 = a3;
  v4 = self;
  v28 = a4;
  v5 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:[(VNFaceSegments *)self outputBufferHeight] height:1278226488 pixelFormatType:a4 error:?];
  v6 = v5;
  if (v5)
  {
    CVPixelBufferLockBaseAddress(v5, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v6);
    Height = CVPixelBufferGetHeight(v6);
    Width = CVPixelBufferGetWidth(v6);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v6);
    v29 = BaseAddress;
    bzero(BaseAddress, BytesPerRow * Height);
    v32 = +[VNFaceSegments faceSegmentIndexToFlagMap];
    v11 = [(VNFaceSegments *)v4 numberOfFaceSegments];
    if (v11)
    {
      v12 = 0;
      v13 = BytesPerRow - Width;
      v30 = v11;
      while (1)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v12, v28}];
        v15 = [v32 objectForKeyedSubscript:v14];

        if (!v15)
        {
          break;
        }

        if (([v15 intValue] & v31) != 0)
        {
          v33 = +[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary];
          v16 = v4;
          v17 = [(VNFaceSegments *)v4 outputBufferData];
          v18 = v6;
          v19 = [v17 bytes];

          v20 = [v33 objectForKey:v15];
          v21 = [v20 unsignedCharValue];

          v6 = v18;
          v4 = v16;
          if (Height)
          {
            v22 = 0;
            v23 = v29;
            do
            {
              v24 = v19;
              for (i = Width; i; --i)
              {
                v26 = *v24++;
                if (v12 == v26)
                {
                  *v23 = v21;
                }

                ++v23;
              }

              v23 += v13;
              ++v22;
              v19 += Width;
            }

            while (v22 != Height);
          }
        }

        if (++v12 == v30)
        {
          goto LABEL_15;
        }
      }

      if (v28)
      {
        *v28 = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot create CVPixelBuffer object: faceSegments is out of range"];
      }

      CVPixelBufferUnlockBaseAddress(v6, 0);
      v6 = 0;
    }

    else
    {
LABEL_15:
      CVPixelBufferUnlockBaseAddress(v6, 0);
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v27 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNFaceSegments *)self requestRevision];
      if (v6 == [(VNFaceSegments *)v5 requestRevision]&& (v7 = [(VNFaceSegments *)self outputBufferWidth], v7 == [(VNFaceSegments *)v5 outputBufferWidth]) && (v8 = [(VNFaceSegments *)self outputBufferHeight], v8 == [(VNFaceSegments *)v5 outputBufferHeight]) && ([(VNFaceSegments *)self outputBufferData], v9 = objc_claimAutoreleasedReturnValue(), [(VNFaceSegments *)v5 outputBufferData], v10 = objc_claimAutoreleasedReturnValue(), v11 = VisionCoreEqualOrNilObjects(), v10, v9, (v11 & 1) != 0) && (v12 = [(VNFaceSegments *)self numberOfFaceSegments], v12 == [(VNFaceSegments *)v5 numberOfFaceSegments]) && ([(VNFaceSegments *)self boundingBox], v14 = v13, v16 = v15, v18 = v17, v20 = v19, [(VNFaceSegments *)v5 boundingBox], v30.origin.x = v21, v30.origin.y = v22, v30.size.width = v23, v30.size.height = v24, v29.origin.x = v14, v29.origin.y = v16, v29.size.width = v18, v29.size.height = v20, CGRectEqualToRect(v29, v30)))
      {
        v25 = [(VNFaceSegments *)self faceSegmentLabelToProbabilityMap];
        v26 = [(VNFaceSegments *)v5 faceSegmentLabelToProbabilityMap];
        v27 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

- (unint64_t)hash
{
  v3 = [(VNFaceSegments *)self outputBufferData];
  v4 = [v3 hash];

  v5 = [(VNFaceSegments *)self faceSegmentLabelToProbabilityMap];
  v6 = [v5 hash] ^ __ROR8__(v4, 51);

  v7 = [(VNFaceSegments *)self numberOfFaceSegments]^ __ROR8__([(VNFaceSegments *)self outputBufferHeight]^ __ROR8__([(VNFaceSegments *)self outputBufferWidth]^ __ROR8__([(VNFaceSegments *)self requestRevision]^ __ROR8__(v6, 51), 51), 51), 51);
  [(VNFaceSegments *)self boundingBox];
  v12 = v11;
  if (v11 == 0.0)
  {
    v12 = 0.0;
  }

  v13 = v8;
  if (v8 == 0.0)
  {
    v13 = 0.0;
  }

  v14 = *&v13 ^ __ROR8__(*&v12, 51);
  v15 = v9;
  if (v9 == 0.0)
  {
    v15 = 0.0;
  }

  v16 = *&v15 ^ __ROR8__(v14, 51);
  v17 = v10;
  if (v10 == 0.0)
  {
    v17 = 0.0;
  }

  return *&v17 ^ __ROR8__(v16, 51) ^ __ROR8__(v7, 51);
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  [v9 encodeObject:v4 forKey:@"VNFaceSegmentsVersion"];

  [v9 encodeInteger:self->_requestRevision forKey:@"fsRev"];
  [v9 encodeInteger:self->_outputBufferWidth forKey:@"fsWidth"];
  [v9 encodeInteger:self->_outputBufferHeight forKey:@"fsHeight"];
  [v9 encodeObject:self->_outputBufferData forKey:@"fsData"];
  [v9 encodeInteger:self->_numberOfFaceSegments forKey:@"fsNumOfSgmnts"];
  x = self->_boundingBox.origin.x;
  *&x = x;
  [v9 encodeFloat:@"fsBBoxOrgX" forKey:x];
  y = self->_boundingBox.origin.y;
  *&y = y;
  [v9 encodeFloat:@"fsBBoxOrgY" forKey:y];
  width = self->_boundingBox.size.width;
  *&width = width;
  [v9 encodeFloat:@"fsBBoxSzW" forKey:width];
  height = self->_boundingBox.size.height;
  *&height = height;
  [v9 encodeFloat:@"fsBBoxSzH" forKey:height];
  [v9 encodeObject:self->_faceSegmentLabelToProbabilityMap forKey:@"fsLblToProbMap"];
}

- (VNFaceSegments)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VNFaceSegmentsVersion"];
  v6 = v5;
  if (v5 && ![v5 unsignedIntValue])
  {
    v8 = [v4 decodeIntegerForKey:@"fsRev"];
    v9 = [v4 decodeIntegerForKey:@"fsWidth"];
    v10 = [v4 decodeIntegerForKey:@"fsHeight"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fsData"];
    v12 = [v4 decodeIntegerForKey:@"fsNumOfSgmnts"];
    v13 = [objc_opt_class() faceSegmentsPixelSizeInBytes];
    if (v10 * v9 * v13 == [v11 length])
    {
      [v4 decodeFloatForKey:@"fsBBoxOrgX"];
      v15 = v14;
      [v4 decodeFloatForKey:@"fsBBoxOrgY"];
      v17 = v16;
      [v4 decodeFloatForKey:@"fsBBoxSzW"];
      v19 = v18;
      v30 = v12;
      v31 = v8;
      [v4 decodeFloatForKey:@"fsBBoxSzH"];
      v21 = v20;
      v22 = MEMORY[0x1E695DFD8];
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = [v22 setWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
      v27 = [v4 decodeObjectOfClasses:v26 forKey:@"fsLblToProbMap"];

      self = [(VNFaceSegments *)self initWithRequestRevision:v31 outputBufferWidth:v9 outputBufferHeight:v10 outputBufferData:v11 numberOfFaceSegments:v30 faceSegmentBBox:v27 faceSegmentLabelToProbabilityMap:v15, v17, v19, v21];
      v7 = self;
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Data integrity check failed when un-archiving an object of type: %@", objc_opt_class()];
      v28 = [VNError errorForInternalErrorWithLocalizedDescription:v27];
      [v4 failWithError:v28];

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (VNFaceSegments)initWithRequestRevision:(unint64_t)a3 outputBufferWidth:(unint64_t)a4 outputBufferHeight:(unint64_t)a5 outputBufferData:(id)a6 numberOfFaceSegments:(unint64_t)a7 faceSegmentBBox:(CGRect)a8 faceSegmentLabelToProbabilityMap:(id)a9
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v19 = a6;
  v20 = a9;
  v26.receiver = self;
  v26.super_class = VNFaceSegments;
  v21 = [(VNFaceSegments *)&v26 init];
  if (v21 && (v22 = [objc_opt_class() faceSegmentsPixelSizeInBytes], a5 * a4 * v22 == objc_msgSend(v19, "length")))
  {
    v21->_requestRevision = a3;
    v21->_outputBufferWidth = a4;
    v21->_outputBufferHeight = a5;
    objc_storeStrong(&v21->_outputBufferData, a6);
    v21->_numberOfFaceSegments = a7;
    v21->_boundingBox.origin.x = x;
    v21->_boundingBox.origin.y = y;
    v21->_boundingBox.size.width = width;
    v21->_boundingBox.size.height = height;
    objc_storeStrong(&v21->_faceSegmentLabelToProbabilityMap, a9);
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (NSDictionary)faceSegmentIndexToFlagMap
{
  if (+[VNFaceSegments faceSegmentIndexToFlagMap]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceSegments faceSegmentIndexToFlagMap]::onceToken, &__block_literal_global_74_24623);
  }

  v3 = +[VNFaceSegments faceSegmentIndexToFlagMap]::faceSegmentIndexToFlagMap;

  return v3;
}

void __43__VNFaceSegments_faceSegmentIndexToFlagMap__block_invoke()
{
  v3[15] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F19C1660;
  v2[1] = &unk_1F19C1690;
  v3[0] = &unk_1F19C1678;
  v3[1] = &unk_1F19C16A8;
  v2[2] = &unk_1F19C16C0;
  v2[3] = &unk_1F19C16F0;
  v3[2] = &unk_1F19C16D8;
  v3[3] = &unk_1F19C1708;
  v2[4] = &unk_1F19C1720;
  v2[5] = &unk_1F19C1750;
  v3[4] = &unk_1F19C1738;
  v3[5] = &unk_1F19C1768;
  v2[6] = &unk_1F19C1780;
  v2[7] = &unk_1F19C17B0;
  v3[6] = &unk_1F19C1798;
  v3[7] = &unk_1F19C17C8;
  v2[8] = &unk_1F19C17E0;
  v2[9] = &unk_1F19C1810;
  v3[8] = &unk_1F19C17F8;
  v3[9] = &unk_1F19C1828;
  v2[10] = &unk_1F19C1840;
  v2[11] = &unk_1F19C1870;
  v3[10] = &unk_1F19C1858;
  v3[11] = &unk_1F19C1888;
  v2[12] = &unk_1F19C18A0;
  v2[13] = &unk_1F19C18D0;
  v3[12] = &unk_1F19C18B8;
  v3[13] = &unk_1F19C18E8;
  v2[14] = &unk_1F19C1900;
  v3[14] = &unk_1F19C1918;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:15];
  v1 = +[VNFaceSegments faceSegmentIndexToFlagMap]::faceSegmentIndexToFlagMap;
  +[VNFaceSegments faceSegmentIndexToFlagMap]::faceSegmentIndexToFlagMap = v0;
}

+ (NSDictionary)faceSegmentToSegmentMaskGrayLevelDictionary
{
  if (+[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary]::onceToken, &__block_literal_global_24629);
  }

  v3 = +[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary]::faceSegmentToSegmentMaskGrayLevelDictionary;

  return v3;
}

void __61__VNFaceSegments_faceSegmentToSegmentMaskGrayLevelDictionary__block_invoke()
{
  v8 = +[VNFaceSegments faceSegmentIndexToFlagMap];
  v0 = [v8 count];
  v1 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v0];
  if (v0)
  {
    for (i = 0; i != v0; ++i)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      v4 = [v8 objectForKeyedSubscript:v3];

      v5 = [MEMORY[0x1E696AD98] numberWithInt:~(i + 5)];
      [v1 setObject:v5 forKeyedSubscript:v4];
    }
  }

  v6 = [v1 copy];
  v7 = +[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary]::faceSegmentToSegmentMaskGrayLevelDictionary;
  +[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary]::faceSegmentToSegmentMaskGrayLevelDictionary = v6;
}

@end