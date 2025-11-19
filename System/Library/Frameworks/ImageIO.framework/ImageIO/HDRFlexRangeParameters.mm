@interface HDRFlexRangeParameters
+ (id)flexRangeParametersFromDictionary:(id)a3;
+ (id)flexRangeParametersFromMetadata:(CGImageMetadata *)a3;
- (CGImageMetadata)createFlexRangeMetadata;
- (HDRFlexRangeParameters)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createFlexRangeDictionary;
- (id)description;
@end

@implementation HDRFlexRangeParameters

- (HDRFlexRangeParameters)init
{
  v9.receiver = self;
  v9.super_class = HDRFlexRangeParameters;
  result = [(HDRFlexRangeParameters *)&v9 init];
  result->_version = 1;
  *&result->_baseHeadroom = 0x4000000000000000;
  *&result->_isMono = 257;
  __asm { FMOV            V1.4S, #1.0 }

  *result->_channelMinRGB = 0u;
  *result->_channelMaxRGB = _Q1;
  v8 = vdupq_n_s32(0x38D1B717u);
  *result->_channelGammaRGB = _Q1;
  *result->_channelBaseOffsetRGB = v8;
  *result->_channelAlternateOffsetRGB = v8;
  return result;
}

+ (id)flexRangeParametersFromDictionary:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HDRFlexRangeParameters_flexRangeParametersFromDictionary___block_invoke_2;
  aBlock[3] = &unk_1E6EF8828;
  v17 = &__block_literal_global;
  v4 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__HDRFlexRangeParameters_flexRangeParametersFromDictionary___block_invoke_3;
  v14[3] = &unk_1E6EF8850;
  v15 = &__block_literal_global;
  v5 = _Block_copy(v14);
  v6 = objc_alloc_init(HDRFlexRangeParameters);
  *&v7 = __60__HDRFlexRangeParameters_flexRangeParametersFromDictionary___block_invoke(v6, v3);
  *&v8 = __60__HDRFlexRangeParameters_flexRangeParametersFromDictionary___block_invoke([(HDRFlexRangeParameters *)v6 setBaseHeadroom:v7], v3);
  [(HDRFlexRangeParameters *)v6 setAlternateHeadroom:v8];
  v9 = [v3 objectForKeyedSubscript:*gIIO_kCMPhotoMetadata_TonemapChannelMetadataKeys];
  if ([v9 count] == 1)
  {
    [(HDRFlexRangeParameters *)v6 setIsMono:1];
    v4[2](v4, v9, *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMin);
    [(HDRFlexRangeParameters *)v6 setChannelMin:?];
    v4[2](v4, v9, *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMax);
    [(HDRFlexRangeParameters *)v6 setChannelMax:?];
    v4[2](v4, v9, *gIIO_kCMPhotoMetadataTonemapChannel_Gamma);
    [(HDRFlexRangeParameters *)v6 setChannelGamma:?];
    v4[2](v4, v9, *gIIO_kCMPhotoMetadataTonemapChannel_BaseOffset);
    [(HDRFlexRangeParameters *)v6 setChannelBaseOffset:?];
    v4[2](v4, v9, *gIIO_kCMPhotoMetadataTonemapChannel_AlternateOffset);
    [(HDRFlexRangeParameters *)v6 setChannelAlternateOffset:?];
  }

  else
  {
    if ([v9 count] != 3)
    {
      LogError("+[HDRFlexRangeParameters flexRangeParametersFromDictionary:]", 95, "Invalid FlexRange channel count: %ld", [v9 count]);
      v12 = 0;
      goto LABEL_9;
    }

    [(HDRFlexRangeParameters *)v6 setIsMono:0];
    v5[2](v5, v9, *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMin);
    [(HDRFlexRangeParameters *)v6 setChannelMinRGB:?];
    v5[2](v5, v9, *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMax);
    [(HDRFlexRangeParameters *)v6 setChannelMaxRGB:?];
    v5[2](v5, v9, *gIIO_kCMPhotoMetadataTonemapChannel_Gamma);
    [(HDRFlexRangeParameters *)v6 setChannelGammaRGB:?];
    v5[2](v5, v9, *gIIO_kCMPhotoMetadataTonemapChannel_BaseOffset);
    [(HDRFlexRangeParameters *)v6 setChannelBaseOffsetRGB:?];
    v5[2](v5, v9, *gIIO_kCMPhotoMetadataTonemapChannel_AlternateOffset);
    [(HDRFlexRangeParameters *)v6 setChannelAlternateOffsetRGB:?];
  }

  v10 = [v3 objectForKeyedSubscript:*gIIO_kCMPhotoMetadata_TonemapBaseColorIsWorkingColor];
  v11 = v10;
  if (!v10)
  {
    v10 = MEMORY[0x1E695E118];
  }

  -[HDRFlexRangeParameters setUseBaseColor:](v6, "setUseBaseColor:", [v10 BOOLValue]);

  [(HDRFlexRangeParameters *)v6 setVersion:1];
  v12 = v6;
LABEL_9:

  return v12;
}

float __60__HDRFlexRangeParameters_flexRangeParametersFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 count] == 2)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    [v3 doubleValue];
    v5 = v4;

    v6 = [v2 objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v9 = v5 / v8;
  }

  else
  {
    v10 = [v2 description];
    LogError("+[HDRFlexRangeParameters flexRangeParametersFromDictionary:]_block_invoke", 57, "Invalid FlexRange value: %s", [v10 UTF8String]);

    v9 = 0.0;
  }

  return v9;
}

float __60__HDRFlexRangeParameters_flexRangeParametersFromDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [a2 objectAtIndexedSubscript:0];
  v8 = (*(v6 + 16))(v6, v7, v5);

  return v8;
}

__n128 __60__HDRFlexRangeParameters_flexRangeParametersFromDictionary___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 objectAtIndexedSubscript:0];
  v9 = (*(v7 + 16))(v7, v8, v6);
  v19 = LODWORD(v9);

  v10 = *(a1 + 32);
  v11 = [v5 objectAtIndexedSubscript:1];
  v12 = (*(v10 + 16))(v10, v11, v6);
  v18 = LODWORD(v12);

  v13 = *(a1 + 32);
  v14 = [v5 objectAtIndexedSubscript:2];
  v15 = (*(v13 + 16))(v13, v14, v6);
  v17 = LODWORD(v15);

  result.n128_u32[0] = v19;
  result.n128_u32[1] = v18;
  result.n128_u32[2] = v17;
  return result;
}

- (id)createFlexRangeDictionary
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__HDRFlexRangeParameters_createFlexRangeDictionary__block_invoke_2;
  aBlock[3] = &unk_1E6EF8898;
  v32 = &__block_literal_global_42;
  v3 = _Block_copy(aBlock);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __51__HDRFlexRangeParameters_createFlexRangeDictionary__block_invoke_3;
  v29[3] = &unk_1E6EF88C0;
  v30 = &__block_literal_global_42;
  v4 = _Block_copy(v29);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *gIIO_kCMPhotoMetadata_TonemapBaseHDRHeadroom;
  v7 = [(HDRFlexRangeParameters *)self baseHeadroom];
  __51__HDRFlexRangeParameters_createFlexRangeDictionary__block_invoke(v8, v7, v5, v6);
  v9 = *gIIO_kCMPhotoMetadata_TonemapAlternateHDRHeadroom;
  v10 = [(HDRFlexRangeParameters *)self alternateHeadroom];
  __51__HDRFlexRangeParameters_createFlexRangeDictionary__block_invoke(v11, v10, v5, v9);
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(HDRFlexRangeParameters *)self isMono])
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 addObject:v13];

    v14 = *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMin;
    [(HDRFlexRangeParameters *)self channelMin];
    v3[2](v3, v12, v14);
    v15 = *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMax;
    [(HDRFlexRangeParameters *)self channelMax];
    v3[2](v3, v12, v15);
    v16 = *gIIO_kCMPhotoMetadataTonemapChannel_Gamma;
    [(HDRFlexRangeParameters *)self channelGamma];
    v3[2](v3, v12, v16);
    v17 = *gIIO_kCMPhotoMetadataTonemapChannel_BaseOffset;
    [(HDRFlexRangeParameters *)self channelBaseOffset];
    v3[2](v3, v12, v17);
    v18 = *gIIO_kCMPhotoMetadataTonemapChannel_AlternateOffset;
    [(HDRFlexRangeParameters *)self channelAlternateOffset];
    v3[2](v3, v12, v18);
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 addObject:v19];

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 addObject:v20];

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 addObject:v21];

    v22 = *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMin;
    [(HDRFlexRangeParameters *)self channelMinRGB];
    v4[2](v4, v12, v22);
    v23 = *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMax;
    [(HDRFlexRangeParameters *)self channelMaxRGB];
    v4[2](v4, v12, v23);
    v24 = *gIIO_kCMPhotoMetadataTonemapChannel_Gamma;
    [(HDRFlexRangeParameters *)self channelGammaRGB];
    v4[2](v4, v12, v24);
    v25 = *gIIO_kCMPhotoMetadataTonemapChannel_BaseOffset;
    [(HDRFlexRangeParameters *)self channelBaseOffsetRGB];
    v4[2](v4, v12, v25);
    v26 = *gIIO_kCMPhotoMetadataTonemapChannel_AlternateOffset;
    [(HDRFlexRangeParameters *)self channelAlternateOffsetRGB];
    v4[2](v4, v12, v26);
  }

  [v5 setObject:v12 forKeyedSubscript:*gIIO_kCMPhotoMetadata_TonemapChannelMetadataKeys];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[HDRFlexRangeParameters useBaseColor](self, "useBaseColor")}];
  [v5 setObject:v27 forKeyedSubscript:*gIIO_kCMPhotoMetadata_TonemapBaseColorIsWorkingColor];

  return v5;
}

void __51__HDRFlexRangeParameters_createFlexRangeDictionary__block_invoke(float a1, uint64_t a2, void *a3, void *a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v8 = frexpf(a1, &v19);
  v9 = ldexpf(v8, 24);
  if (v19 >= -7)
  {
    v10 = 24 - v19;
  }

  else
  {
    v10 = 31;
  }

  if (v19 >= -7)
  {
    v11 = 0;
  }

  else
  {
    v11 = -7 - v19;
  }

  LODWORD(v12) = v9 >> v11;
  if (((v9 >> v11) & 1) != 0 || v10 < 1)
  {
    v15 = v12 << -v10;
    if (v10 >= 0)
    {
      v12 = v12;
    }

    else
    {
      LOBYTE(v10) = 0;
      v12 = v15;
    }
  }

  else
  {
    do
    {
      v13 = v12;
      v12 = (v12 >> 1);
      v14 = v10-- != 0;
    }

    while ((v13 & 2) == 0 && v10 != 0 && v14);
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v20[0] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(1 << v10)];
  v20[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v6 setObject:v18 forKeyedSubscript:v7];
}

void __51__HDRFlexRangeParameters_createFlexRangeDictionary__block_invoke_2(uint64_t a1, void *a2, void *a3, float a4)
{
  v9 = a3;
  v7 = *(a1 + 32);
  v8 = [a2 objectAtIndexedSubscript:0];
  (*(v7 + 16))(v7, v8, v9, a4);
}

void __51__HDRFlexRangeParameters_createFlexRangeDictionary__block_invoke_3(uint64_t a1, void *a2, void *a3, __n128 a4)
{
  v14 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v14 objectAtIndexedSubscript:0];
  (*(v7 + 16))(v7, v8, v6, a4);

  v9 = *(a1 + 32);
  v10 = [v14 objectAtIndexedSubscript:1];
  (*(v9 + 16))(v9, v10, v6, a4.n128_f32[1]);

  v11 = *(a1 + 32);
  v12 = [v14 objectAtIndexedSubscript:2];
  (*(v11 + 16))(v11, v12, v6, a4.n128_f32[2]);
}

+ (id)flexRangeParametersFromMetadata:(CGImageMetadata *)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke;
  aBlock[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  aBlock[4] = a3;
  v3 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke_2;
  v28[3] = &unk_1E6EF8908;
  v4 = v3;
  v29 = v4;
  v5 = _Block_copy(v28);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke_3;
  v26[3] = &unk_1E6EF8930;
  v6 = v4;
  v27 = v6;
  v7 = _Block_copy(v26);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke_4;
  v24[3] = &unk_1E6EF8958;
  v8 = v6;
  v25 = v8;
  v9 = _Block_copy(v24);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke_5;
  v22[3] = &unk_1E6EF8980;
  v10 = v5;
  v23 = v10;
  v11 = _Block_copy(v22);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke_6;
  v20[3] = &unk_1E6EF89A8;
  v12 = v11;
  v21 = v12;
  v13 = _Block_copy(v20);
  v14 = (*(v8 + 2))(v8, @"Version");
  v15 = [v14 integerValue];

  if (!v15)
  {
    v18 = 0;
    goto LABEL_10;
  }

  v16 = objc_alloc_init(HDRFlexRangeParameters);
  [(HDRFlexRangeParameters *)v16 setVersion:v15];
  (*(v10 + 2))(v10, @"BaseHeadroom");
  [(HDRFlexRangeParameters *)v16 setBaseHeadroom:?];
  (*(v10 + 2))(v10, @"AlternateHeadroom");
  [(HDRFlexRangeParameters *)v16 setAlternateHeadroom:?];
  v17 = v9[2](v9, @"ChannelMetadata");
  if ([v17 count] == 1)
  {
    [(HDRFlexRangeParameters *)v16 setIsMono:1];
    (*(v12 + 2))(v12, @"GainMapMin", 0);
    [(HDRFlexRangeParameters *)v16 setChannelMin:?];
    (*(v12 + 2))(v12, @"GainMapMax", 0);
    [(HDRFlexRangeParameters *)v16 setChannelMax:?];
    (*(v12 + 2))(v12, @"Gamma", 0);
    [(HDRFlexRangeParameters *)v16 setChannelGamma:?];
    (*(v12 + 2))(v12, @"BaseOffset", 0);
    [(HDRFlexRangeParameters *)v16 setChannelBaseOffset:?];
    (*(v12 + 2))(v12, @"AlternateOffset", 0);
    [(HDRFlexRangeParameters *)v16 setChannelAlternateOffset:?];
  }

  else
  {
    if ([v17 count] != 3)
    {
      LogError("+[HDRFlexRangeParameters flexRangeParametersFromMetadata:]", 237, "Invalid FlexRange channel count: %ld", [v17 count]);
      v18 = 0;
      goto LABEL_9;
    }

    [(HDRFlexRangeParameters *)v16 setIsMono:0];
    v13[2](v13, @"GainMapMin");
    [(HDRFlexRangeParameters *)v16 setChannelMinRGB:?];
    v13[2](v13, @"GainMapMax");
    [(HDRFlexRangeParameters *)v16 setChannelMaxRGB:?];
    v13[2](v13, @"Gamma");
    [(HDRFlexRangeParameters *)v16 setChannelGammaRGB:?];
    v13[2](v13, @"BaseOffset");
    [(HDRFlexRangeParameters *)v16 setChannelBaseOffsetRGB:?];
    v13[2](v13, @"AlternateOffset");
    [(HDRFlexRangeParameters *)v16 setChannelAlternateOffsetRGB:?];
  }

  [(HDRFlexRangeParameters *)v16 setUseBaseColor:v7[2](v7, @"BaseColorIsWorkingColor", 1)];
  v18 = v16;
LABEL_9:

LABEL_10:

  return v18;
}

id __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRToneMap", a2];
  v4 = CGImageMetadataCopyTagWithPath(*(a1 + 32), 0, v3);
  v5 = v4;
  if (v4)
  {
    v6 = CGImageMetadataTagCopyValue(v4);
  }

  else
  {
    _cg_jpeg_mem_term("+[HDRFlexRangeParameters flexRangeParametersFromMetadata:]_block_invoke", 165, "Failed to get metadata tag: %s", [(__CFString *)v3 UTF8String]);
    v6 = 0;
  }

  return v6;
}

float __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v4 floatValue];
    v6 = v5;
  }

  else
  {
    v7 = [v3 UTF8String];
    v8 = [v4 description];
    LogError("+[HDRFlexRangeParameters flexRangeParametersFromMetadata:]_block_invoke_2", 174, "Invalid '%s' tag value: %s", v7, [v8 UTF8String]);

    v6 = 0.0;
  }

  return v6;
}

uint64_t __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = (*(*(a1 + 32) + 16))();
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      a3 = [v6 BOOLValue];
    }

    else
    {
      v7 = [v5 UTF8String];
      v8 = [v6 description];
      LogError("+[HDRFlexRangeParameters flexRangeParametersFromMetadata:]_block_invoke_3", 185, "Invalid '%s' tag value: %s", v7, [v8 UTF8String]);
    }
  }

  return a3;
}

id __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v6 = [v3 UTF8String];
    v7 = [v4 description];
    LogError("+[HDRFlexRangeParameters flexRangeParametersFromMetadata:]_block_invoke_4", 193, "Invalid '%s' tag value: %s", v6, [v7 UTF8String]);

    v5 = 0;
  }

  return v5;
}

float __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%lu].%@", @"ChannelMetadata", a3, a2];
  v5 = (*(*(a1 + 32) + 16))();

  return v5;
}

__n128 __58__HDRFlexRangeParameters_flexRangeParametersFromMetadata___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  v10 = LODWORD(v4);
  v5 = (*(*(a1 + 32) + 16))();
  v9 = LODWORD(v5);
  v6 = (*(*(a1 + 32) + 16))();
  v8 = LODWORD(v6);

  result.n128_u32[0] = v10;
  result.n128_u32[1] = v9;
  result.n128_u32[2] = v8;
  return result;
}

- (CGImageMetadata)createFlexRangeMetadata
{
  Mutable = CGImageMetadataCreateMutable();
  if (CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.apple.com/HDRToneMap/1.0/", @"HDRToneMap", 0))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke;
    aBlock[3] = &unk_1E6EF89D0;
    v4 = Mutable;
    v29 = v4;
    v5 = _Block_copy(aBlock);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke_2;
    v26[3] = &unk_1E6EF89F8;
    v6 = v5;
    v27 = v6;
    v7 = _Block_copy(v26);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke_3;
    v24[3] = &unk_1E6EF8A20;
    v8 = v6;
    v25 = v8;
    v9 = _Block_copy(v24);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke_4;
    v22[3] = &unk_1E6EF8A48;
    v10 = v8;
    v23 = v10;
    v11 = _Block_copy(v22);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke_5;
    v20[3] = &unk_1E6EF8A70;
    v12 = v7;
    v21 = v12;
    v13 = _Block_copy(v20);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke_6;
    v18[3] = &unk_1E6EF8A98;
    v14 = v13;
    v19 = v14;
    v15 = _Block_copy(v18);
    [(HDRFlexRangeParameters *)self baseHeadroom];
    (*(v12 + 2))(v12, @"BaseHeadroom");
    [(HDRFlexRangeParameters *)self alternateHeadroom];
    (*(v12 + 2))(v12, @"AlternateHeadroom");
    if ([(HDRFlexRangeParameters *)self isMono])
    {
      [(HDRFlexRangeParameters *)self channelMin];
      (*(v14 + 2))(v14, @"GainMapMin", 0);
      [(HDRFlexRangeParameters *)self channelMax];
      (*(v14 + 2))(v14, @"GainMapMax", 0);
      [(HDRFlexRangeParameters *)self channelGamma];
      (*(v14 + 2))(v14, @"Gamma", 0);
      [(HDRFlexRangeParameters *)self channelBaseOffset];
      (*(v14 + 2))(v14, @"BaseOffset", 0);
      [(HDRFlexRangeParameters *)self channelAlternateOffset];
      (*(v14 + 2))(v14, @"AlternateOffset", 0);
    }

    else
    {
      [(HDRFlexRangeParameters *)self channelMinRGB];
      v15[2](v15, @"GainMapMin");
      [(HDRFlexRangeParameters *)self channelMaxRGB];
      v15[2](v15, @"GainMapMax");
      [(HDRFlexRangeParameters *)self channelGammaRGB];
      v15[2](v15, @"Gamma");
      [(HDRFlexRangeParameters *)self channelBaseOffsetRGB];
      v15[2](v15, @"BaseOffset");
      [(HDRFlexRangeParameters *)self channelAlternateOffsetRGB];
      v15[2](v15, @"AlternateOffset");
    }

    v9[2](v9, @"BaseColorIsWorkingColor", [(HDRFlexRangeParameters *)self useBaseColor]);
    v11[2](v11, @"Version", [(HDRFlexRangeParameters *)self version]);
    v16 = v4;
  }

  else
  {
    LogError("[HDRFlexRangeParameters createFlexRangeMetadata]", 250, "Failed to register HDRFlexRange metadata tag!");
    v16 = 0;
  }

  return v16;
}

void __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  value = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRToneMap", a2];
  if (!CGImageMetadataSetValueWithPath(*(a1 + 32), 0, v5, value))
  {
    LogError("[HDRFlexRangeParameters createFlexRangeMetadata]_block_invoke", 256, "Failed to set metadata tag: %s", [(__CFString *)v5 UTF8String]);
  }
}

void __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke_2(uint64_t a1, void *a2, float a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  *&v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  (*(v5 + 16))(v5, v8, v7);
}

void __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  (*(v5 + 16))(v5, v7, v6);
}

void __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  (*(v5 + 16))(v5, v7, v6);
}

void __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%lu].%@", @"ChannelMetadata", a3, a2];
  (*(*(a1 + 32) + 16))(a4);
}

void __49__HDRFlexRangeParameters_createFlexRangeMetadata__block_invoke_6(uint64_t a1, void *a2, __n128 a3)
{
  v5 = a2;
  (*(*(a1 + 32) + 16))(a3);
  (*(*(a1 + 32) + 16))(a3.n128_f32[1]);
  (*(*(a1 + 32) + 16))(a3.n128_f32[2]);
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  *(result + 3) = self->_version;
  *(result + 3) = LODWORD(self->_baseHeadroom);
  *(result + 4) = LODWORD(self->_alternateHeadroom);
  *(result + 8) = self->_isMono;
  *(result + 3) = *self->_channelMinRGB;
  *(result + 4) = *self->_channelMaxRGB;
  *(result + 5) = *self->_channelGammaRGB;
  *(result + 6) = *self->_channelBaseOffsetRGB;
  *(result + 7) = *self->_channelAlternateOffsetRGB;
  *(result + 9) = self->_useBaseColor;
  *(result + 4) = self->_alternateColorSpace;
  return result;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [(HDRFlexRangeParameters *)self version];
  [(HDRFlexRangeParameters *)self baseHeadroom];
  v8 = v7;
  [(HDRFlexRangeParameters *)self baseHeadroom];
  v10 = exp2f(v9);
  [(HDRFlexRangeParameters *)self alternateHeadroom];
  v12 = v11;
  [(HDRFlexRangeParameters *)self alternateHeadroom];
  v14 = exp2f(v13);
  if ([(HDRFlexRangeParameters *)self isMono])
  {
    v15 = @"Yes";
  }

  else
  {
    v15 = @"No";
  }

  if ([(HDRFlexRangeParameters *)self useBaseColor])
  {
    v16 = @"base";
  }

  else
  {
    v16 = @"alternate";
  }

  [(HDRFlexRangeParameters *)self channelMinRGB];
  v52 = v17;
  [(HDRFlexRangeParameters *)self channelMinRGB];
  v51 = v18;
  [(HDRFlexRangeParameters *)self channelMinRGB];
  v50 = v19;
  [(HDRFlexRangeParameters *)self channelMaxRGB];
  v49 = v20;
  [(HDRFlexRangeParameters *)self channelMaxRGB];
  v48 = v21;
  [(HDRFlexRangeParameters *)self channelMaxRGB];
  v47 = v22;
  [(HDRFlexRangeParameters *)self channelGammaRGB];
  v46 = v23;
  [(HDRFlexRangeParameters *)self channelGammaRGB];
  v45 = v24;
  [(HDRFlexRangeParameters *)self channelGammaRGB];
  v44 = v25;
  [(HDRFlexRangeParameters *)self channelBaseOffsetRGB];
  v43 = v26;
  [(HDRFlexRangeParameters *)self channelBaseOffsetRGB];
  v42 = v27;
  [(HDRFlexRangeParameters *)self channelBaseOffsetRGB];
  v41 = v28;
  [(HDRFlexRangeParameters *)self channelAlternateOffsetRGB];
  v40 = v29;
  [(HDRFlexRangeParameters *)self channelAlternateOffsetRGB];
  v39 = v30;
  [(HDRFlexRangeParameters *)self channelAlternateOffsetRGB];
  v38 = v31;
  v32 = [(HDRFlexRangeParameters *)self alternateColorSpace];
  if (v32)
  {
    v33 = CGColorSpaceCopyName([(HDRFlexRangeParameters *)self alternateColorSpace]);
    if (v33)
    {
      v2 = v33;
      v34 = 0;
      v35 = v33;
    }

    else
    {
      v35 = CFCopyDescription([(HDRFlexRangeParameters *)self alternateColorSpace]);
      v2 = 0;
      v34 = 1;
    }
  }

  else
  {
    v34 = 0;
    v35 = @"n/a";
  }

  v36 = [v4 stringWithFormat:@"<%@:%p version:%ld base:%0.2f(%0.2f) alt:%0.2f(%0.2f) mono:%@ color:%@ min=(%0.3f, %0.3f, %0.3f) max=(%0.3f, %0.3f, %0.3f) g=(%0.3f, %0.3f, %0.3f) kB=(%0.3f, %0.3f, %0.3f) kA=(%0.3f, %0.3f, %0.3f) alt space: %@>", v5, self, v6, v8, v10, v12, v14, v15, v16, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v35];
  if (v34)
  {
  }

  if (v32)
  {
  }

  return v36;
}

@end