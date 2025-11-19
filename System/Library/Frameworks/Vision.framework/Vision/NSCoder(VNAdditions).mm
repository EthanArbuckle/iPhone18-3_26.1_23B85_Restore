@interface NSCoder(VNAdditions)
+ (id)_vn_createEncodableDataWithMagicNumber:()VNAdditions forN:floatValues:error:;
- (__CVBuffer)vn_decodePixelBufferForKey:()VNAdditions;
- (__n128)_vn_decode3x3MatrixFromDataRepresentation:()VNAdditions forKey:;
- (__n128)_vn_decode3x3MatrixFromStringRepresentation:()VNAdditions;
- (__n128)_vn_decode4x4MatrixFromDataRepresentation:()VNAdditions forKey:;
- (__n128)_vn_decode4x4MatrixFromStringRepresentation:()VNAdditions;
- (__n128)_vn_decodeSimdFloat3FromDataRepresentation:()VNAdditions forKey:;
- (__n128)_vn_decodeSimdFloat3FromStringRepresentation:()VNAdditions;
- (__n128)vn_decode3x3MatrixForKey:()VNAdditions;
- (__n128)vn_decode4x4MatrixForKey:()VNAdditions;
- (__n128)vn_decodeSimdFloat3ForKey:()VNAdditions;
- (double)vn_decodePointForKey:()VNAdditions;
- (double)vn_decodeRectForKey:()VNAdditions;
- (double)vn_decodeSizeForKey:()VNAdditions;
- (float)vn_decodeValidatedConfidenceForKey:()VNAdditions;
- (float)vn_decodeValidatedScoreForKey:()VNAdditions;
- (uint64_t)_vn_decodeFloatsFromEncodedData:()VNAdditions withExpectedMagicNumber:valueCount:forKey:usingBlock:;
- (void)vn_decodeCGAffineTransformForKey:()VNAdditions;
- (void)vn_decodeTimeRangeForKey:()VNAdditions;
- (void)vn_encode3x3Matrix:()VNAdditions forKey:;
- (void)vn_encode4x4Matrix:()VNAdditions forKey:;
- (void)vn_encodeCGAffineTransform:()VNAdditions forKey:;
- (void)vn_encodePixelBuffer:()VNAdditions forKey:;
- (void)vn_encodePoint:()VNAdditions forKey:;
- (void)vn_encodeRect:()VNAdditions forKey:;
- (void)vn_encodeSimdFloat3:()VNAdditions forKey:;
- (void)vn_encodeSize:()VNAdditions forKey:;
- (void)vn_encodeTimeRange:()VNAdditions forKey:;
- (void)vn_encodeValidatedConfidence:()VNAdditions forKey:;
- (void)vn_encodeValidatedScore:()VNAdditions forKey:;
@end

@implementation NSCoder(VNAdditions)

- (float)vn_decodeValidatedScoreForKey:()VNAdditions
{
  v4 = a3;
  [a1 decodeFloatForKey:v4];
  v6 = v5;
  v17 = 0;
  v7 = [VNValidationUtilities validateScoreRange:v4 named:&v17 error:?];
  v8 = v17;
  if (!v7)
  {
    [v4 UTF8String];
    v9 = [v8 localizedDescription];
    [v9 UTF8String];
    VNValidatedLog(4, @"unable to accept decoded score of %f for %s - %s", v10, v11, v12, v13, v14, v15, COERCE__INT64(v6));

    v6 = 0.0;
    [a1 failWithError:v8];
  }

  return v6;
}

- (void)vn_encodeValidatedScore:()VNAdditions forKey:
{
  v6 = a4;
  v18 = 0;
  *&v7 = a2;
  v8 = [VNValidationUtilities validateScoreRange:v6 named:&v18 error:v7];
  v9 = v18;
  if (v8)
  {
    *&v10 = a2;
    [a1 encodeFloat:v6 forKey:v10];
  }

  else
  {
    [v6 UTF8String];
    v11 = [v9 localizedDescription];
    [v11 UTF8String];
    VNValidatedLog(4, @"unable to encode score of %f for %s - %s", v12, v13, v14, v15, v16, v17, COERCE__INT64(a2));

    [a1 failWithError:v9];
  }
}

- (float)vn_decodeValidatedConfidenceForKey:()VNAdditions
{
  v4 = a3;
  [a1 decodeFloatForKey:v4];
  v6 = v5;
  v17 = 0;
  v7 = [VNValidationUtilities validateVNConfidenceRange:&v17 error:?];
  v8 = v17;
  if (!v7)
  {
    [v4 UTF8String];
    v9 = [v8 localizedDescription];
    [v9 UTF8String];
    VNValidatedLog(4, @"unable to accept decoded confidence of %f for %s - %s", v10, v11, v12, v13, v14, v15, COERCE__INT64(v6));

    v6 = 0.0;
    [a1 failWithError:v8];
  }

  return v6;
}

- (void)vn_encodeValidatedConfidence:()VNAdditions forKey:
{
  v6 = a4;
  v18 = 0;
  *&v7 = a2;
  v8 = [VNValidationUtilities validateVNConfidenceRange:&v18 error:v7];
  v9 = v18;
  if (v8)
  {
    *&v10 = a2;
    [a1 encodeFloat:v6 forKey:v10];
  }

  else
  {
    [v6 UTF8String];
    v11 = [v9 localizedDescription];
    [v11 UTF8String];
    VNValidatedLog(4, @"unable to encode confidence of %f for %s - %s", v12, v13, v14, v15, v16, v17, COERCE__INT64(a2));

    [a1 failWithError:v9];
  }
}

- (__CVBuffer)vn_decodePixelBufferForKey:()VNAdditions
{
  v4 = a3;
  v5 = +[VNCVPixelBufferConversionHelpers dictionaryRepresentationClassesSet];
  v6 = [a1 decodeObjectOfClasses:v5 forKey:v4];
  if (v6)
  {
    v7 = [VNCVPixelBufferConversionHelpers createCVPixelBufferRefFromDictionaryRepresentation:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)vn_encodePixelBuffer:()VNAdditions forKey:
{
  v7 = a4;
  v6 = [VNCVPixelBufferConversionHelpers createDictionaryRepresentationOfCVPixelBuffer:a3];
  [a1 encodeObject:v6 forKey:v7];
}

- (double)vn_decodeRectForKey:()VNAdditions
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.or", v4];
  [a1 vn_decodePointForKey:v5];
  v7 = v6;

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.sz", v4];
  [a1 vn_decodeSizeForKey:v8];

  return v7;
}

- (void)vn_encodeRect:()VNAdditions forKey:
{
  v14 = a7;
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.or", v14];
  [a1 vn_encodePoint:v12 forKey:{a2, a3}];

  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.sz", v14];
  [a1 vn_encodeSize:v13 forKey:{a4, a5}];
}

- (double)vn_decodeSizeForKey:()VNAdditions
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.w", v4];
  [a1 decodeDoubleForKey:v5];
  v7 = v6;

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.h", v4];
  [a1 decodeDoubleForKey:v8];

  return v7;
}

- (void)vn_encodeSize:()VNAdditions forKey:
{
  v10 = a5;
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.w", v10];
  [a1 encodeDouble:v8 forKey:a2];

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.h", v10];
  [a1 encodeDouble:v9 forKey:a3];
}

- (double)vn_decodePointForKey:()VNAdditions
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.x", v4];
  [a1 decodeDoubleForKey:v5];
  v7 = v6;

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.y", v4];
  [a1 decodeDoubleForKey:v8];

  return v7;
}

- (void)vn_encodePoint:()VNAdditions forKey:
{
  v10 = a5;
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.x", v10];
  [a1 encodeDouble:v8 forKey:a2];

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.y", v10];
  [a1 encodeDouble:v9 forKey:a3];
}

- (void)vn_decodeTimeRangeForKey:()VNAdditions
{
  v5 = a2;
  v6 = MEMORY[0x1E6960CA8];
  v7 = *(MEMORY[0x1E6960CA8] + 16);
  *a3 = *MEMORY[0x1E6960CA8];
  a3[1] = v7;
  a3[2] = *(v6 + 32);
  if ([NSCoder(VNAdditions) vn_decodeTimeRangeForKey:]::ourCMTimeRangeRepresentationClassesSetOnceToken != -1)
  {
    dispatch_once(&[NSCoder(VNAdditions) vn_decodeTimeRangeForKey:]::ourCMTimeRangeRepresentationClassesSetOnceToken, &__block_literal_global_3119);
  }

  v8 = [a1 decodeObjectOfClasses:-[NSCoder(VNAdditions) vn_decodeTimeRangeForKey:]::ourCMTimeRangeRepresentationClassesSet forKey:v5];
  v9 = v8;
  if (v8)
  {
    CMTimeRangeMakeFromDictionary(&v11, v8);
    v10 = *&v11.start.epoch;
    *a3 = *&v11.start.value;
    a3[1] = v10;
    a3[2] = *&v11.duration.timescale;
  }
}

- (void)vn_encodeTimeRange:()VNAdditions forKey:
{
  v6 = a4;
  v7 = a3[1];
  *&v9.start.value = *a3;
  *&v9.start.epoch = v7;
  *&v9.duration.timescale = a3[2];
  v8 = CMTimeRangeCopyAsDictionary(&v9, *MEMORY[0x1E695E480]);
  [a1 encodeObject:v8 forKey:v6];
}

- (__n128)vn_decodeSimdFloat3ForKey:()VNAdditions
{
  v4 = a3;
  v5 = _stringOrDataCodingClassesSet();
  v6 = [a1 decodeObjectOfClasses:v5 forKey:v4];

  if (!v6)
  {
    v8 = missingRequiredCodingKeyError(v4);
    [a1 failWithError:v8];
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 _vn_decodeSimdFloat3FromStringRepresentation:v6];
      goto LABEL_9;
    }

    v8 = unknownDataForCodingKeyError(v4);
    [a1 failWithError:v8];
LABEL_8:

    v7 = 0uLL;
    goto LABEL_9;
  }

  [a1 _vn_decodeSimdFloat3FromDataRepresentation:v6 forKey:v4];
LABEL_9:
  v10 = v7;

  return v10;
}

- (__n128)_vn_decodeSimdFloat3FromStringRepresentation:()VNAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length] < 0xA)
  {
    goto LABEL_12;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E696AE88] scannerWithString:v4];
  if (![v6 scanString:@"d3:|" intoString:0])
  {
    goto LABEL_10;
  }

  v7 = 0;
  v8 = 0;
  v9 = &v17;
  do
  {
    if (([v6 scanDouble:v9] & 1) == 0)
    {
      break;
    }

    v7 = v8 > 1;
    v9 = (v9 + 8);
    ++v8;
  }

  while (v8 != 3);
  if (v7 && [v6 scanString:@"|" intoString:0] && objc_msgSend(v6, "isAtEnd"))
  {
    v11 = 0;
    *&v10 = vcvt_f32_f64(v17);
    v12 = v18;
    *(&v10 + 2) = v12;
    v16 = v10;
  }

  else
  {
LABEL_10:
    v11 = 1;
  }

  objc_autoreleasePoolPop(v5);
  if (v11)
  {
LABEL_12:
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid simd_flloat3 encoding", v4];
    v14 = [VNError errorForInvalidFormatErrorWithLocalizedDescription:v13];
    [a1 failWithError:v14];

    v16 = 0u;
  }

  return v16;
}

- (__n128)_vn_decodeSimdFloat3FromDataRepresentation:()VNAdditions forKey:
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3020000000;
  v12 = 0;
  v13 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__NSCoder_VNAdditions___vn_decodeSimdFloat3FromDataRepresentation_forKey___block_invoke;
  v8[3] = &unk_1E77B2830;
  v8[4] = &v9;
  v4 = [a1 _vn_decodeFloatsFromEncodedData:a3 withExpectedMagicNumber:1935631923 valueCount:3 forKey:a4 usingBlock:v8];
  v5 = 0uLL;
  if (v4)
  {
    v5 = *(v10 + 2);
  }

  v7 = v5;
  _Block_object_dispose(&v9, 8);
  return v7;
}

- (void)vn_encodeSimdFloat3:()VNAdditions forKey:
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v10 = a2.n128_u64[0];
  v11 = a2.n128_u32[2];
  v9 = 0;
  v6 = [objc_opt_class() _vn_createEncodableDataWithMagicNumber:1935631923 forN:3 floatValues:&v10 error:&v9];
  v7 = v9;
  if (v6)
  {
    [a1 encodeObject:v6 forKey:v5];
  }

  else
  {
    [a1 failWithError:v7];
  }
}

- (__n128)vn_decode4x4MatrixForKey:()VNAdditions
{
  v4 = a3;
  v5 = _stringOrDataCodingClassesSet();
  v6 = [a1 decodeObjectOfClasses:v5 forKey:v4];

  if (!v6)
  {
    v8 = missingRequiredCodingKeyError(v4);
    [a1 failWithError:v8];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 _vn_decode4x4MatrixFromStringRepresentation:v6];
      goto LABEL_7;
    }

    v8 = unknownDataForCodingKeyError(v4);
    [a1 failWithError:v8];
LABEL_9:

    v10 = *MEMORY[0x1E69E9B18];
    goto LABEL_10;
  }

  [a1 _vn_decode4x4MatrixFromDataRepresentation:v6 forKey:v4];
LABEL_7:
  v10 = v7;
LABEL_10:

  return v10;
}

- (__n128)_vn_decode4x4MatrixFromStringRepresentation:()VNAdditions
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 hasPrefix:@"4x4:|"] || objc_msgSend(v3, "length") < 0x25 || ((v4 = objc_autoreleasePoolPush(), objc_msgSend(MEMORY[0x1E696AE88], "scannerWithString:", v3), v5 = objc_claimAutoreleasedReturnValue(), !-[NSScanner scanString:intoString:](v5, "scanString:intoString:", @"4x4:|", 0)) || !_scanNFloats(v5, 0x10uLL, &v9) || !-[NSScanner scanString:intoString:](v5, "scanString:intoString:", @"|", 0) || !-[NSScanner isAtEnd](v5, "isAtEnd") ? (v6 = 1) : (v6 = 0, v8 = v9), v5, objc_autoreleasePoolPop(v4), v6))
  {
    v8 = *MEMORY[0x1E69E9B18];
  }

  return v8;
}

- (__n128)_vn_decode4x4MatrixFromDataRepresentation:()VNAdditions forKey:
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x7012000000;
  v13 = __Block_byref_object_copy__48;
  v4 = MEMORY[0x1E69E9B18];
  v14 = __Block_byref_object_dispose__49;
  v15 = "";
  v5 = *(MEMORY[0x1E69E9B18] + 16);
  v16 = *MEMORY[0x1E69E9B18];
  v17 = v5;
  v6 = *(MEMORY[0x1E69E9B18] + 48);
  v18 = *(MEMORY[0x1E69E9B18] + 32);
  v19 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__NSCoder_VNAdditions___vn_decode4x4MatrixFromDataRepresentation_forKey___block_invoke;
  v9[3] = &unk_1E77B2830;
  v9[4] = &v10;
  if ([a1 _vn_decodeFloatsFromEncodedData:a3 withExpectedMagicNumber:1714714676 valueCount:16 forKey:a4 usingBlock:v9])
  {
    v4 = (v11 + 6);
  }

  v8 = *v4;
  _Block_object_dispose(&v10, 8);
  return v8;
}

- (void)vn_encode4x4Matrix:()VNAdditions forKey:
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a7;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v15 = 0;
  v9 = [objc_opt_class() _vn_createEncodableDataWithMagicNumber:1714714676 forN:16 floatValues:v16 error:&v15];
  v10 = v15;
  if (v9)
  {
    [a1 encodeObject:v9 forKey:v8];
  }

  else
  {
    [a1 failWithError:v10];
  }
}

- (__n128)vn_decode3x3MatrixForKey:()VNAdditions
{
  v4 = a3;
  v5 = _stringOrDataCodingClassesSet();
  v6 = [a1 decodeObjectOfClasses:v5 forKey:v4];

  if (!v6)
  {
    v8 = missingRequiredCodingKeyError(v4);
    [a1 failWithError:v8];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 _vn_decode3x3MatrixFromStringRepresentation:v6];
      goto LABEL_7;
    }

    v8 = unknownDataForCodingKeyError(v4);
    [a1 failWithError:v8];
LABEL_9:

    v10 = *MEMORY[0x1E69E9B10];
    goto LABEL_10;
  }

  [a1 _vn_decode3x3MatrixFromDataRepresentation:v6 forKey:v4];
LABEL_7:
  v10 = v7;
LABEL_10:

  return v10;
}

- (__n128)_vn_decode3x3MatrixFromStringRepresentation:()VNAdditions
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length] < 0x17 || ((v4 = objc_autoreleasePoolPush(), objc_msgSend(MEMORY[0x1E696AE88], "scannerWithString:", v3), v5 = objc_claimAutoreleasedReturnValue(), !-[NSScanner scanString:intoString:](v5, "scanString:intoString:", @"3x3:|", 0)) || !_scanNFloats(v5, 9uLL, v9) || !-[NSScanner scanString:intoString:](v5, "scanString:intoString:", @"|", 0) || !-[NSScanner isAtEnd](v5, "isAtEnd") ? (v6 = 1) : (v6 = 0, v8 = *v9), v5, objc_autoreleasePoolPop(v4), v6))
  {
    v8 = *MEMORY[0x1E69E9B10];
  }

  return v8;
}

- (__n128)_vn_decode3x3MatrixFromDataRepresentation:()VNAdditions forKey:
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x6012000000;
  v14 = __Block_byref_object_copy__3143;
  v15 = __Block_byref_object_dispose__3144;
  v16 = "";
  v4 = MEMORY[0x1E69E9B10];
  v5 = *(MEMORY[0x1E69E9B10] + 16);
  v17 = *MEMORY[0x1E69E9B10];
  v18 = v5;
  v19 = *(MEMORY[0x1E69E9B10] + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__NSCoder_VNAdditions___vn_decode3x3MatrixFromDataRepresentation_forKey___block_invoke;
  v10[3] = &unk_1E77B2830;
  v10[4] = &v11;
  v6 = [a1 _vn_decodeFloatsFromEncodedData:a3 withExpectedMagicNumber:1714649139 valueCount:9 forKey:a4 usingBlock:v10];
  v7 = (v12 + 6);
  if (!v6)
  {
    v7 = v4;
  }

  v9 = *v7;
  _Block_object_dispose(&v11, 8);
  return v9;
}

- (void)vn_encode3x3Matrix:()VNAdditions forKey:
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a6;
  v8 = a2;
  v8.n128_u32[3] = a3.i32[0];
  v15[0] = v8;
  v15[1] = vextq_s8(vextq_s8(a3, a3, 0xCuLL), a4, 8uLL);
  v16 = a4.u32[2];
  v14 = 0;
  v9 = [objc_opt_class() _vn_createEncodableDataWithMagicNumber:1714649139 forN:9 floatValues:v15 error:&v14];
  v10 = v14;
  if (v9)
  {
    [a1 encodeObject:v9 forKey:v7];
  }

  else
  {
    [a1 failWithError:v10];
  }
}

- (void)vn_decodeCGAffineTransformForKey:()VNAdditions
{
  v11 = a2;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v11];
  if ([v5 length] < 0xD || ((v6 = objc_autoreleasePoolPush(), objc_msgSend(MEMORY[0x1E696AE88], "scannerWithString:", v5), v7 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v7, "scanString:intoString:", @"[", 0)) || !objc_msgSend(v7, "scanDouble:", a3) || !objc_msgSend(v7, "scanDouble:", a3 + 8) || !objc_msgSend(v7, "scanDouble:", a3 + 16) || !objc_msgSend(v7, "scanDouble:", a3 + 24) || !objc_msgSend(v7, "scanDouble:", a3 + 32) || !objc_msgSend(v7, "scanDouble:", a3 + 40) || !objc_msgSend(v7, "scanString:intoString:", @"]", 0) ? (v8 = 0) : (v8 = objc_msgSend(v7, "isAtEnd")), v7, objc_autoreleasePoolPop(v6), (v8 & 1) == 0))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid CGAffineTransform encoding", v5];
    v10 = [VNError errorForInvalidFormatErrorWithLocalizedDescription:v9];
    [a1 failWithError:v10];
  }
}

- (void)vn_encodeCGAffineTransform:()VNAdditions forKey:
{
  v7 = a4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g %g %g %g %g %g]", *a3, a3[1], a3[2], a3[3], a3[4], a3[5]];
  [a1 encodeObject:v6 forKey:v7];
}

- (uint64_t)_vn_decodeFloatsFromEncodedData:()VNAdditions withExpectedMagicNumber:valueCount:forKey:usingBlock:
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if ([v12 length] != 4 * a5 + 4 || (v15 = objc_msgSend(v12, "bytes"), bswap32(*v15) != a4))
  {
    v17 = unknownDataForCodingKeyError(v13);
    [a1 failWithError:v17];
LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * a5];
  v17 = v16;
  if (!v16)
  {
    v23 = +[VNError errorForMemoryAllocationFailure];
    [a1 failWithError:v23];

    v17 = 0;
    goto LABEL_11;
  }

  v18 = [v16 mutableBytes];
  if (a5)
  {
    v19 = v15 + 1;
    v20 = v18;
    do
    {
      v21 = *v19++;
      *v20++ = bswap32(v21);
      --a5;
    }

    while (a5);
  }

  v14[2](v14, v18);
  v22 = 1;
LABEL_12:

  return v22;
}

+ (id)_vn_createEncodableDataWithMagicNumber:()VNAdditions forN:floatValues:error:
{
  v8 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * a4 + 4];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 mutableBytes];
    *v12 = bswap32(a3);
    if (v8)
    {
      v13 = v12 + 1;
      do
      {
        v14 = *a5++;
        *v13++ = bswap32(v14);
        --v8;
      }

      while (v8);
    }

    v15 = v11;
  }

  else if (a6)
  {
    *a6 = +[VNError errorForMemoryAllocationFailure];
  }

  return v11;
}

@end