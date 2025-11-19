@interface VNImageSignature
- (BOOL)isEqual:(id)a3;
- (VNImageSignature)initWithCoder:(id)a3;
- (VNImageSignature)initWithImageBuffer:(id)a3 regionOfInterest:(CGRect)a4 error:(id *)a5;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNImageSignature

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    v8 = (objc_opt_isKindOfClass() & 1) != 0 && (nPiRow = self->_signature.nPiRow, nPiRow == v4->_signature.nPiRow) && (nPiCol = self->_signature.nPiCol, nPiCol == v4->_signature.nPiCol) && (v7 = 4 * nPiRow, !memcmp(self->_signature.piRow, v4->_signature.piRow, 4 * nPiRow)) && !memcmp(self->_signature.piRowTable.sumTable, v4->_signature.piRowTable.sumTable, v7) && !memcmp(self->_signature.piRowTable.sumSqTable, v4->_signature.piRowTable.sumSqTable, v7) && !memcmp(self->_signature.piCol, v4->_signature.piCol, 4 * nPiCol) && !memcmp(self->_signature.piColTable.sumTable, v4->_signature.piColTable.sumTable, 4 * nPiCol) && memcmp(self->_signature.piColTable.sumSqTable, v4->_signature.piColTable.sumSqTable, 4 * nPiCol) == 0;
  }

  return v8;
}

- (unint64_t)hash
{
  nPiRow = self->_signature.nPiRow;
  v4 = 4 * nPiRow;
  v5 = VNHashMemory(self->_signature.piRow, 4 * nPiRow) ^ __ROR8__(self->_signature.nPiCol | (nPiRow << 15), 51);
  v6 = VNHashMemory(self->_signature.piRowTable.sumTable, v4) ^ __ROR8__(v5, 51);
  v7 = 4 * self->_signature.nPiCol;
  v8 = VNHashMemory(self->_signature.piCol, v7) ^ __ROR8__(v6, 51);
  return VNHashMemory(self->_signature.piColTable.sumSqTable, v7) ^ __ROR8__(v8, 51);
}

- (void)dealloc
{
  free(self->_signature._memoryContainer);
  self->_signature._memoryContainer = 0;
  v3.receiver = self;
  v3.super_class = VNImageSignature;
  [(VNImageSignature *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  piRow = self->_signature.piRow;
  nPiRow = self->_signature.nPiRow;
  v7 = v4;
  v8 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:piRow length:4 * nPiRow freeWhenDone:0];
  [v7 encodeObject:v8 forKey:@"rowProjections"];

  v10 = self->_signature.nPiRow;
  sumTable = self->_signature.piRowTable.sumTable;
  v11 = v7;
  v12 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:sumTable length:4 * v10 freeWhenDone:0];
  [v11 encodeObject:v12 forKey:@"rowSum"];

  sumSqTable = self->_signature.piRowTable.sumSqTable;
  v14 = self->_signature.nPiRow;
  v15 = v11;
  v16 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:sumSqTable length:4 * v14 freeWhenDone:0];
  [v15 encodeObject:v16 forKey:@"rowSumSq"];

  piCol = self->_signature.piCol;
  nPiCol = self->_signature.nPiCol;
  v19 = v15;
  v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:piCol length:4 * nPiCol freeWhenDone:0];
  [v19 encodeObject:v20 forKey:@"colProjections"];

  v22 = self->_signature.nPiCol;
  v21 = self->_signature.piColTable.sumTable;
  v23 = v19;
  v24 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v21 length:4 * v22 freeWhenDone:0];
  [v23 encodeObject:v24 forKey:@"colSum"];

  v25 = self->_signature.piColTable.sumSqTable;
  v26 = self->_signature.nPiCol;
  v28 = v23;
  v27 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v25 length:4 * v26 freeWhenDone:0];
  [v28 encodeObject:v27 forKey:@"colSumSq"];
}

- (VNImageSignature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rowProjections"];
  v6 = [v5 length];
  v7 = MEMORY[0x1E695D930];
  if ((v6 & 3) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"inconsistent row data"];
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colProjections"];
  v9 = [v8 length];
  if ((v9 & 3) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*v7 format:@"inconsistent column data"];
  }

  v10 = [(VNImageSignature *)self init];
  p_isa = &v10->super.isa;
  if (v10 && FastRegistration_allocateSignatureBuffersForImageDimension(&v10->_signature, v9 >> 2, v6 >> 2) == 4736)
  {
    memcpy(p_isa[1], [v5 bytes], v6);
    memcpy(p_isa[5], [v8 bytes], v9);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rowSum"];

    if ([v12 length] != v6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"inconsistent row data"];
    }

    memcpy(p_isa[3], [v12 bytes], v6);
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colSum"];

    if ([v13 length] != v9)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"inconsistent column data"];
    }

    memcpy(p_isa[7], [v13 bytes], v9);
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rowSumSq"];

    if ([v5 length] != v6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"inconsistent row data"];
    }

    memcpy(p_isa[4], [v5 bytes], v6);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colSumSq"];

    if ([v8 length] != v9)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"inconsistent column data"];
    }

    memcpy(p_isa[8], [v8 bytes], v9);
    v14 = p_isa;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (VNImageSignature)initWithImageBuffer:(id)a3 regionOfInterest:(CGRect)a4 error:(id *)a5
{
  v5 = MEMORY[0x1EEE9AC00](self).n128_u64[0];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *&v5;
  v16 = v15;
  STACK[0x7E38] = *MEMORY[0x1E69E9840];
  v18 = v17;
  if (v18)
  {
    v41.receiver = v16;
    v41.super_class = VNImageSignature;
    v19 = [(VNImageSignature *)&v41 init];
    v20 = v19;
    if (v19)
    {
      v19->_signature._memoryContainer = 0;
      v21 = [v18 width];
      v22 = [v18 height];
      v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
      v24 = 2;
      if (v21 < 2)
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
      }

      v46.origin.x = v14 * v23;
      v46.size.width = v11 * v23;
      v46.origin.y = v13 * v24;
      v46.size.height = v9 * v24;
      v47 = CGRectIntegral(v46);
      v25 = [v18 croppedBufferWithWidth:v47.size.width height:v47.size.height format:875704422 cropRect:0 options:v7 error:{v47.origin.x, v47.origin.y}];
      v26 = v25;
      if (!v25)
      {
        goto LABEL_43;
      }

      CVPixelBufferLockBaseAddress(v25, 1uLL);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v26, 0);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v26, 0);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(v26, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v26, 0);
      SignatureBuffersForImageDimension = FastRegistration_allocateSignatureBuffersForImageDimension(&v20->_signature, WidthOfPlane, HeightOfPlane);
      if (SignatureBuffersForImageDimension != 4736)
      {
        goto LABEL_39;
      }

      piRow = v20->_signature.piRow;
      piCol = v20->_signature.piCol;
      if (HeightOfPlane & 1 | WidthOfPlane & 0x1F)
      {
        v34 = 0;
      }

      else
      {
        v34 = (BytesPerRowOfPlane & 0x1F | BaseAddressOfPlane & 0xF) == 0;
      }

      if (v34)
      {
        if (!PixelSumASM(BaseAddressOfPlane, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane, &STACK[0x3F20], &block))
        {
          vDSP_vflt32(&STACK[0x3F20], 1, piRow, 1, HeightOfPlane);
          vDSP_vflt32(block.i32, 1, piCol, 1, WidthOfPlane);
          v35 = 4736;
          goto LABEL_30;
        }

        v35 = 4732;
      }

      else
      {
        STACK[0x3F20] = BaseAddressOfPlane;
        LODWORD(STACK[0x3F28]) = WidthOfPlane;
        LODWORD(STACK[0x3F2C]) = HeightOfPlane >> 1;
        STACK[0x3F30] = BytesPerRowOfPlane;
        LODWORD(STACK[0x3F38]) = 1;
        STACK[0x3F40] = piRow;
        STACK[0x3F50] = BaseAddressOfPlane->u64 + BytesPerRowOfPlane * (HeightOfPlane >> 1);
        LODWORD(STACK[0x3F58]) = WidthOfPlane;
        LODWORD(STACK[0x3F5C]) = HeightOfPlane >> 1;
        STACK[0x3F60] = BytesPerRowOfPlane;
        LODWORD(STACK[0x3F68]) = 1;
        STACK[0x3F70] = &piRow[HeightOfPlane >> 1];
        block.i64[0] = MEMORY[0x1E69E9820];
        block.i64[1] = 0x40000000;
        v43 = __Projections_projectionCols_planar8UtoF_block_invoke;
        v44 = &__block_descriptor_tmp_1_37654;
        v45 = &STACK[0x3F20];
        dispatch_apply(2uLL, 0, &block);
        v35 = STACK[0x3F48];
        if (STACK[0x3F48] == 4736)
        {
          v35 = STACK[0x3F78];
        }

        if ((v35 & 0x80) != 0)
        {
          STACK[0x3F20] = BaseAddressOfPlane;
          LODWORD(STACK[0x3F28]) = WidthOfPlane >> 1;
          LODWORD(STACK[0x3F2C]) = HeightOfPlane;
          STACK[0x3F30] = BytesPerRowOfPlane;
          LODWORD(STACK[0x3F38]) = 1;
          STACK[0x3F40] = piCol;
          STACK[0x3F50] = BaseAddressOfPlane->u64 + (WidthOfPlane >> 1);
          LODWORD(STACK[0x3F58]) = WidthOfPlane >> 1;
          LODWORD(STACK[0x3F5C]) = HeightOfPlane;
          STACK[0x3F60] = BytesPerRowOfPlane;
          LODWORD(STACK[0x3F68]) = 1;
          STACK[0x3F70] = &piCol[WidthOfPlane >> 1];
          block.i64[0] = MEMORY[0x1E69E9820];
          block.i64[1] = 0x40000000;
          v43 = __Projections_projectionRows_planar8UtoF_block_invoke;
          v44 = &__block_descriptor_tmp_37652;
          v45 = &STACK[0x3F20];
          dispatch_apply(2uLL, 0, &block);
          v35 = STACK[0x3F48];
          if (STACK[0x3F48] == 4736)
          {
            v35 = STACK[0x3F78];
          }

          if ((v35 & 0x80) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_30;
        }
      }

      if ((v35 & 0x80) == 0)
      {
LABEL_36:
        if (v35 == 4736)
        {
          goto LABEL_37;
        }

        SignatureBuffersForImageDimension = 4710;
LABEL_39:
        CVPixelBufferUnlockBaseAddress(v26, 1uLL);
        CVPixelBufferRelease(v26);
        if (SignatureBuffersForImageDimension == 4736)
        {
          v16 = v20;
          v37 = v16;
          goto LABEL_45;
        }

        if (v7)
        {
          [CVML_Error createNSErrorWithStatus:SignatureBuffersForImageDimension andMessage:@"Error while trying to allocate VNImageSignature object"];
          *v7 = v37 = 0;
LABEL_44:
          v16 = v20;
          goto LABEL_45;
        }

LABEL_43:
        v37 = 0;
        goto LABEL_44;
      }

LABEL_30:
      v20->_signature.nPiCol = WidthOfPlane;
      v20->_signature.nPiRow = HeightOfPlane;
      if (v20->_signature.piRowTable.sumSqTable)
      {
        if (v20->_signature.piRowTable.sumTable)
        {
          sumSqTable = v20->_signature.piColTable.sumSqTable;
          if (sumSqTable)
          {
            sumTable = v20->_signature.piColTable.sumTable;
            if (sumTable)
            {
              Projections_computeMeanStdTable(v20->_signature.piCol, WidthOfPlane, sumTable, sumSqTable);
              Projections_computeMeanStdTable(v20->_signature.piRow, v20->_signature.nPiRow, v20->_signature.piRowTable.sumTable, v20->_signature.piRowTable.sumSqTable);
LABEL_37:
              SignatureBuffersForImageDimension = 4736;
              goto LABEL_39;
            }
          }
        }
      }

      goto LABEL_36;
    }

    if (v7)
    {
      v36 = +[VNError errorForMemoryAllocationFailure];
      v16 = 0;
      goto LABEL_24;
    }

    v16 = 0;
LABEL_26:
    v37 = 0;
    goto LABEL_45;
  }

  if (!v7)
  {
    goto LABEL_26;
  }

  v36 = [VNError errorWithCode:14 message:@"nil buffer passed into initWithImageBuffer"];
LABEL_24:
  v37 = 0;
  *v7 = v36;
LABEL_45:

  return v37;
}

@end