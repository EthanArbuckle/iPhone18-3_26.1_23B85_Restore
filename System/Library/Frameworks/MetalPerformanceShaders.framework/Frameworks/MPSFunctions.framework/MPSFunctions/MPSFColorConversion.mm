@interface MPSFColorConversion
- (BOOL)addNxMStage:(CGColorConversionIteratorData *)stage stage:(int64_t)a4 index:(int64_t)index error:(id *)error;
- (BOOL)addTRCStage:(CGColorConversionIteratorData *)stage stage:(int64_t)a4 count:(int64_t)count trcIndices:(int64_t *)indices error:(id *)error;
- (MPSFColorConversion)initWithCoder:(id)coder device:(id)device error:(id *)error;
- (MPSFColorConversion)initWithDevice:(id)device conversion:(CGColorConversionInfo *)conversion functionName:(id)name sourceRange:(id *)range options:(unint64_t)options error:(id *)error;
- (MPSFColorConversion)initWithDevice:(id)device startColorSpace:(CGColorSpace *)space endColorSpace:(CGColorSpace *)colorSpace functionName:(id)name sourceRange:(id *)range options:(unint64_t)options error:(id *)error;
- (const)find1DTexture1Stage;
- (const)find3dTextureStageAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)descriptorFor1DTexture1;
- (id)descriptorFor3DTexture1;
- (id)descriptorFor3DTexture2;
- (id)newDAGUsingFunctionList:(id)list;
- (id)newSubroutineListWithError:(id *)error;
- (void)dealloc;
- (void)effectiveRange:(__n128)range;
- (void)encodeWithCoder:(id)coder;
- (void)initialize1DTexture1:(id)texture1;
- (void)initialize3DTexture1:(id)texture1;
- (void)initialize3DTexture2:(id)texture2;
- (void)optimizeStages;
@end

@implementation MPSFColorConversion

- (MPSFColorConversion)initWithDevice:(id)device startColorSpace:(CGColorSpace *)space endColorSpace:(CGColorSpace *)colorSpace functionName:(id)name sourceRange:(id *)range options:(unint64_t)options error:(id *)error
{
  v14 = off_27DF853A0;
  if (!off_27DF853A0)
  {
    v25 = "CGColorConversionInfoCreate";
    v26 = &off_27DF853A0;
    if (qword_27DF85438 == -1)
    {
      v14 = off_27DF853A0;
      if (!off_27DF853A0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      selfCopy = self;
      spaceCopy = space;
      dispatch_once_f(&qword_27DF85438, &v25, sub_239934C08);
      space = spaceCopy;
      self = selfCopy;
      v14 = off_27DF853A0;
      if (!off_27DF853A0)
      {
        goto LABEL_19;
      }
    }
  }

  if (!off_27DF853D8)
  {
    v25 = "CGColorSpaceGetNumberOfComponents";
    v26 = &off_27DF853D8;
    if (qword_27DF85440 == -1)
    {
      if (off_27DF853D8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      selfCopy2 = self;
      spaceCopy2 = space;
      dispatch_once_f(&qword_27DF85440, &v25, sub_239934C40);
      space = spaceCopy2;
      self = selfCopy2;
      if (off_27DF853D8)
      {
        goto LABEL_7;
      }
    }

LABEL_19:
    objc_msgSend_dealloc(self, a2, device, space, v25, v26);
    return 0;
  }

LABEL_7:
  selfCopy3 = self;
  v16 = v14(space, colorSpace);
  v17 = off_27DF853D8;
  if (!off_27DF853D8)
  {
    v25 = "CGColorSpaceGetNumberOfComponents";
    v26 = &off_27DF853D8;
    if (qword_27DF85440 != -1)
    {
      dispatch_once_f(&qword_27DF85440, &v25, sub_239934C40);
    }

    v17 = off_27DF853D8;
  }

  if (v17(colorSpace) == 1)
  {
    result = objc_msgSend_initWithDevice_conversion_functionName_sourceRange_options_error_(selfCopy3, v18, device, v16, name, range, options, error, v25, v26);
  }

  else
  {
    result = objc_msgSend_initWithDevice_conversion_functionName_sourceRange_options_error_(selfCopy3, v18, device, v16, name, range, options & 0xFFFFFFFFFFFFFEFFLL, error, v25, v26);
  }

  if (v16)
  {
    v20 = result;
    CFRelease(v16);
    return v20;
  }

  return result;
}

- (id)newSubroutineListWithError:(id *)error
{
  v6 = objc_opt_new();
  if (!v6)
  {
    return v6;
  }

  v7 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v5, "MHDR_ExtractChannel0", 4);
  if (v7)
  {
    v10 = objc_msgSend_newFunctionWithName_(self->super._library, v8, v7, v9);
    if (!v10)
    {
      v42 = "MHDR_ExtractChannel0";
      if (!error)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v13 = v10;
    objc_msgSend_addObject_(v6, v11, v10, v12);
  }

  v14 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v8, "MHDR_ExtractChannel1", 4);
  if (v14)
  {
    v17 = objc_msgSend_newFunctionWithName_(self->super._library, v15, v14, v16);
    if (!v17)
    {
      v42 = "MHDR_ExtractChannel1";
      if (!error)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v20 = v17;
    objc_msgSend_addObject_(v6, v18, v17, v19);
  }

  v21 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v15, "MHDR_ExtractChannel2", 4);
  if (v21)
  {
    v24 = objc_msgSend_newFunctionWithName_(self->super._library, v22, v21, v23);
    if (!v24)
    {
      v42 = "MHDR_ExtractChannel2";
      if (!error)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v27 = v24;
    objc_msgSend_addObject_(v6, v25, v24, v26);
  }

  v28 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v22, "MHDR_ExtractChannel3", 4);
  if (v28)
  {
    v31 = objc_msgSend_newFunctionWithName_(self->super._library, v29, v28, v30);
    if (!v31)
    {
      v42 = "MHDR_ExtractChannel3";
      if (!error)
      {
LABEL_27:

        return 0;
      }

LABEL_26:
      *error = sub_239931A78("Failed to find function %s in MTLLibrary %p\n", v42, self->super._library);
      goto LABEL_27;
    }

    v34 = v31;
    objc_msgSend_addObject_(v6, v32, v31, v33);
  }

  v35 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v29, "MHDR_MakePixel", 4);
  if (!v35)
  {
    goto LABEL_17;
  }

  v38 = objc_msgSend_newFunctionWithName_(self->super._library, v36, v35, v37);
  if (!v38)
  {
    v42 = "MHDR_MakePixel";
    if (!error)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v41 = v38;
  objc_msgSend_addObject_(v6, v39, v38, v40);

LABEL_17:
  if (error)
  {
    *error = 0;
  }

  return v6;
}

- (BOOL)addTRCStage:(CGColorConversionIteratorData *)stage stage:(int64_t)a4 count:(int64_t)count trcIndices:(int64_t *)indices error:(id *)error
{
  if (count < 5)
  {
    v10 = malloc_type_malloc(84 * (count & ~(count >> 63)) + 32, 0x10A10400956659AuLL);
    if (v10)
    {
      v15 = v10;
      sub_239928934(v10, stage, v14, count, indices);
      v15->var1 = self->_stageList;
      self->_stageList = v15;
      LOBYTE(v10) = 1;
    }
  }

  else if (error)
  {
    v9 = sub_239931A78("MetalHDRConversion error: conversion stage %lu requires %lu color channels, which is more than will fit in a float4.\n\tTry vImageConvert_AnyToAny or ColorSyncTransformConvert instead on the CPU instead.\n", a4, count);
    LOBYTE(v10) = 0;
    *error = v9;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)addNxMStage:(CGColorConversionIteratorData *)stage stage:(int64_t)a4 index:(int64_t)index error:(id *)error
{
  v9 = off_27DF853D0;
  if (off_27DF853D0)
  {
    goto LABEL_4;
  }

  *&context[0] = "CGColorNxMTransformGetTransform";
  *(&context[0] + 1) = &off_27DF853D0;
  if (qword_27DF85218 == -1)
  {
    v9 = off_27DF853D0;
    if (off_27DF853D0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    dispatch_once_f(&qword_27DF85218, context, sub_2399311E4);
    v9 = off_27DF853D0;
    if (off_27DF853D0)
    {
LABEL_4:
      v15 = 0;
      memset(context, 0, sizeof(context));
      v9(context, (*(&stage->var8 + 4))[index], a2);
      if (*(context + 4) <= 4uLL && *(context + 12) < 5uLL)
      {
        operator new();
      }

      if (error)
      {
        v11 = sub_239931A78("MetalHDRConversion error: conversion stage %lu requires %lu color channels, which is more than will fit in a float4.\n\tTry vImageConvert_AnyToAny or ColorSyncTransformConvert instead on the CPU instead.\n");
LABEL_14:
        v12 = v11;
        result = 0;
        *error = v12;
        return result;
      }

      return 0;
    }
  }

  if (error)
  {
    v11 = sub_239931A78("MetalHDRConversion error: could not load address of CGColorNxMTransformGetTransform\n");
    goto LABEL_14;
  }

  return 0;
}

- (MPSFColorConversion)initWithDevice:(id)device conversion:(CGColorConversionInfo *)conversion functionName:(id)name sourceRange:(id *)range options:(unint64_t)options error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if (!device || (options & 0xFFFFFFFFFFFFFCC0) != 0)
  {
    if ((options & 0x200) != 0)
    {
      selfCopy = self;
      NSLog(&cfstr_InvalidParamet.isa, a2);
LABEL_29:
      self = selfCopy;
    }

LABEL_30:
    objc_msgSend_dealloc(self, a2, device, conversion, name, range);
    return 0;
  }

  if (off_27DF853A8)
  {
    goto LABEL_8;
  }

  context = "CGColorConversionInfoIterateFunctionsWithCallbacks";
  v77 = &off_27DF853A8;
  if (qword_27DF85430 == -1)
  {
    if (off_27DF853A8)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

  selfCopy2 = self;
  deviceCopy = device;
  nameCopy = name;
  rangeCopy = range;
  optionsCopy = options;
  dispatch_once_f(&qword_27DF85430, &context, sub_239934C78);
  device = deviceCopy;
  self = selfCopy2;
  options = optionsCopy;
  range = rangeCopy;
  name = nameCopy;
  if (!off_27DF853A8)
  {
LABEL_48:
    if (error)
    {
      selfCopy3 = self;
      *error = sub_239931A78("[MetalHDRConversion initWithDevice:conversion:type:options] could not load address of CGColorConversionInfoIterateFunctionsWithCallbacks. Unable to proceed.", a2, device, conversion, name, range, options);
      objc_msgSend_dealloc(selfCopy3, v67, v68, v69, v70, v71);
      return 0;
    }

    goto LABEL_30;
  }

LABEL_8:
  optionsCopy2 = options;
  rangeCopy2 = range;
  v75.receiver = self;
  v75.super_class = MPSFColorConversion;
  nameCopy2 = name;
  v13 = [MPSFunction initWithDevice:sel_initWithDevice_functionName_zone_error_ functionName:? zone:? error:?];
  selfCopy = v13;
  if (v13)
  {
    *(v13 + 6) = optionsCopy2;
    *(v13 + 18) = 0;
    v15 = v13 + 112;
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    *(v13 + 7) = vnegq_f32(v16);
    *(v13 + 8) = v16;
    v17 = v13 + 80;
    v18 = *(v13 + 8);
    *(v13 + 5) = *(v13 + 7);
    *(v13 + 6) = v18;
    if (rangeCopy2)
    {
      v19 = *(rangeCopy2 + 1);
      *v17 = *rangeCopy2;
      *(v13 + 6) = v19;
    }

    if (!conversion)
    {
      v34 = objc_autoreleasePoolPush();
      if ((selfCopy->_options & 0x100) != 0)
      {
        v35 = @"MPSFColorConversion_ConvertGrayToRGB";
      }

      else
      {
        v35 = @"MPSFColorConversion_DoNothing_float4";
      }

      v36 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v31, v32, v33);
      objc_msgSend_setName_(v36, v37, v35, v38);
      v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"%@_f32", v40, nameCopy2);
      objc_msgSend_setSpecializedName_(v36, v42, v41, v43);
      context = 0;
      v45 = objc_msgSend_newFunctionWithDescriptor_error_(selfCopy->super._library, v44, v36, &context);
      if (v45)
      {
        v46 = v45;
        v47 = [CompilationResult alloc];
        selfCopy->super._compilationResult = objc_msgSend_initWithFunction_error_(v47, v48, v46, context);
      }

      else if (error)
      {
        *error = context;
      }

      v59 = *&selfCopy->_anon_50[16];
      *v15 = *v17;
      *&selfCopy->_anon_70[16] = v59;
      selfCopy->_outputColorChannels = 0;
      selfCopy->_inputColorChannels = 0;
      v58 = v34;
      goto LABEL_45;
    }

    v20 = off_27DF853A8;
    if (!off_27DF853A8)
    {
      context = "CGColorConversionInfoIterateFunctionsWithCallbacks";
      v77 = &off_27DF853A8;
      if (qword_27DF85430 != -1)
      {
        dispatch_once_f(&qword_27DF85430, &context, sub_239934C78);
      }

      v20 = off_27DF853A8;
    }

    v73[4] = selfCopy;
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = sub_239933218;
    v74[3] = &unk_278AAAC80;
    v74[4] = selfCopy;
    v74[5] = error;
    v72[5] = error;
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_239933268;
    v73[3] = &unk_278AAACA8;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_2399332B0;
    v72[3] = &unk_278AAACD0;
    v72[4] = selfCopy;
    if ((v20)(conversion, 0, &unk_284C6AA28, v74, v73, v72, 0, 0))
    {
      if ((selfCopy->_options & 0x100) == 0)
      {
        goto LABEL_21;
      }

      stageList = selfCopy->_stageList;
      if (!stageList)
      {
        goto LABEL_37;
      }

      if (*(stageList->var0 + 4))(stageList) != 1 || (objc_msgSend_addGrayToRGBStage(selfCopy, v22, v23, v24))
      {
LABEL_21:
        v25 = selfCopy->_stageList;
        if (v25)
        {
          selfCopy->_outputColorChannels = (*(v25->var0 + 4))(v25);
          v26 = selfCopy->_stageList;
          if (v26)
          {
            v27 = 0;
            v28 = selfCopy->_stageList;
            do
            {
              v29 = v27;
              v27 = v28;
              v28 = v28->var1;
              v27->var1 = v29;
            }

            while (v28);
            selfCopy->_stageList = v27;
            v30 = (*(v27->var0 + 3))(v27);
            selfCopy->_inputColorChannels = v30;
            if (v30 < 4)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }
        }

LABEL_37:
        v26 = 0;
        selfCopy->_stageList = 0;
        if (selfCopy->_inputColorChannels < 4)
        {
LABEL_41:
          v49 = objc_autoreleasePoolPush();
          objc_msgSend_optimizeStages(selfCopy, v50, v51, v52);
          v55 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, @"%@_f32", v54, nameCopy2);
          objc_msgSend_buildStitchedFunctionAsyncWithName_(selfCopy, v56, v55, v57);
          v58 = v49;
LABEL_45:
          objc_autoreleasePoolPop(v58);
          return selfCopy;
        }

LABEL_38:
        if (v26 && selfCopy->_outputColorChannels <= 3)
        {
          operator new();
        }

        goto LABEL_41;
      }
    }

    goto LABEL_29;
  }

  return selfCopy;
}

- (void)dealloc
{
  stageList = self->_stageList;
  if (stageList)
  {
    do
    {
      var1 = stageList->var1;
      (*(stageList->var0 + 1))(stageList, a2);
      stageList = var1;
    }

    while (var1);
  }

  v5.receiver = self;
  v5.super_class = MPSFColorConversion;
  [(MPSFunction *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v18.receiver = self;
  v18.super_class = MPSFColorConversion;
  v7 = [(MPSFunction *)&v18 copyWithZone:zone device:device];
  v7[6] = self->_options;
  v7[7] = self->_inputColorChannels;
  v7[8] = self->_outputColorChannels;
  v8 = *&self->_anon_50[16];
  *(v7 + 5) = *self->_anon_50;
  *(v7 + 6) = v8;
  v9 = *&self->_anon_70[16];
  *(v7 + 7) = *self->_anon_70;
  *(v7 + 8) = v9;
  v7[18] = 0;
  stageList = self->_stageList;
  if (stageList)
  {
    v11 = (*(stageList->var0 + 10))(stageList);
    v7[18] = v11;
    if (!v11)
    {
      goto LABEL_9;
    }

    var1 = self->_stageList->var1;
    if (var1)
    {
      v14 = v11;
      do
      {
        v15 = (*(var1->var0 + 10))(var1);
        if (!v15)
        {
          goto LABEL_9;
        }

        *(v14 + 8) = v15;
        var1 = var1->var1;
        v14 = v15;
      }

      while (var1);
    }
  }

  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%@_f32", v6, self->super._name);
  if (v16)
  {
    objc_msgSend_buildStitchedFunctionAsyncWithName_(v7, v5, v16, v6);
    return v7;
  }

LABEL_9:
  objc_msgSend_dealloc(v7, v5, v12, v6);
  return 0;
}

- (MPSFColorConversion)initWithCoder:(id)coder device:(id)device error:(id *)error
{
  v86.receiver = self;
  v86.super_class = MPSFColorConversion;
  result = [(MPSFunction *)&v86 initWithCoder:coder device:device error:?];
  if (result)
  {
    if (result->super._fileVersion.bits >= 0x20000)
    {
      if (error)
      {
        v11 = result;
        v12 = sub_239931A78("MPSFColorConversion Error: file version for MPSFColorConversion is too new. Unable to decode.\n");
LABEL_15:
        v18 = v12;
        result = v11;
        *error = v18;
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    v11 = result;
    v13 = objc_msgSend_decodeInt64ForKey_(coder, v8, @"MPSFColorConversion.options", v10);
    v11->_options = v13;
    if ((v13 & 0xFFFFFFFFFFFFFCC0) != 0)
    {
      result = v11;
      if (error)
      {
        v12 = sub_239931A78("MPSFColorConversion Error: file contains illegal MPSFColorConversionOptions 0x%llx.\n");
        goto LABEL_15;
      }

LABEL_16:
      objc_msgSend_dealloc(result, v8, v9, v10);
      return 0;
    }

    v11->_inputColorChannels = objc_msgSend_decodeIntegerForKey_(coder, v8, @"MPSFColorConversion.inputChannels", v10);
    v16 = objc_msgSend_decodeIntegerForKey_(coder, v14, @"MPSFColorConversion.outputChannels", v15);
    result = v11;
    v11->_outputColorChannels = v16;
    if (v11->_inputColorChannels > 4 || v16 >= 5)
    {
      if (error)
      {
        v12 = sub_239931A78("MPSFColorConversion Error: file contains illegal channel counts.\n");
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    v19.i64[0] = 0x7F0000007FLL;
    v19.i64[1] = 0x7F0000007FLL;
    v83 = vnegq_f32(v19);
    *v11->_anon_50 = v19;
    *&v11->_anon_50[16] = v83;
    objc_msgSend_decodeFloatForKey_(coder, v8, @"MPSFColorConversion.inputRange.min0", v10);
    *&v11->_anon_50[16] = v20;
    objc_msgSend_decodeFloatForKey_(coder, v21, @"MPSFColorConversion.inputRange.min1", v22);
    *&v11->_anon_50[20] = v23;
    objc_msgSend_decodeFloatForKey_(coder, v24, @"MPSFColorConversion.inputRange.min2", v25);
    *&v11->_anon_50[24] = v26;
    objc_msgSend_decodeFloatForKey_(coder, v27, @"MPSFColorConversion.inputRange.min3", v28);
    *&v11->_anon_50[28] = v29;
    objc_msgSend_decodeFloatForKey_(coder, v30, @"MPSFColorConversion.inputRange.max0", v31);
    *v11->_anon_50 = v32;
    objc_msgSend_decodeFloatForKey_(coder, v33, @"MPSFColorConversion.inputRange.max1", v34);
    *&v11->_anon_50[4] = v35;
    objc_msgSend_decodeFloatForKey_(coder, v36, @"MPSFColorConversion.inputRange.max2", v37);
    *&v11->_anon_50[8] = v38;
    objc_msgSend_decodeFloatForKey_(coder, v39, @"MPSFColorConversion.inputRange.max3", v40);
    v45 = *v11->_anon_50;
    v46 = *&v11->_anon_50[16];
    v45.i32[3] = v44;
    *&v11->_anon_50[12] = v44;
    if ((vminvq_u32(vcgeq_f32(v45, v46)) & 0x80000000) == 0)
    {
      if (error)
      {
        v47 = sub_239931A78("MPSFColorConversion Error: file contains illegal input range information.\n");
LABEL_25:
        *error = v47;
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    *&v48 = 0x7F0000007FLL;
    *(&v48 + 1) = 0x7F0000007FLL;
    *v11->_anon_70 = v48;
    *&v11->_anon_70[16] = v83;
    objc_msgSend_decodeFloatForKey_(coder, v41, @"MPSFColorConversion.outputRange.min0", v43);
    *&v11->_anon_70[16] = v49;
    objc_msgSend_decodeFloatForKey_(coder, v50, @"MPSFColorConversion.outputRange.min1", v51);
    *&v11->_anon_70[20] = v52;
    objc_msgSend_decodeFloatForKey_(coder, v53, @"MPSFColorConversion.outputRange.min2", v54);
    *&v11->_anon_70[24] = v55;
    objc_msgSend_decodeFloatForKey_(coder, v56, @"MPSFColorConversion.outputRange.min3", v57);
    *&v11->_anon_70[28] = v58;
    objc_msgSend_decodeFloatForKey_(coder, v59, @"MPSFColorConversion.outputRange.max0", v60);
    *v11->_anon_70 = v61;
    objc_msgSend_decodeFloatForKey_(coder, v62, @"MPSFColorConversion.outputRange.max1", v63);
    *&v11->_anon_70[4] = v64;
    objc_msgSend_decodeFloatForKey_(coder, v65, @"MPSFColorConversion.outputRange.max2", v66);
    *&v11->_anon_70[8] = v67;
    objc_msgSend_decodeFloatForKey_(coder, v68, @"MPSFColorConversion.outputRange.max3", v69);
    v70 = *v11->_anon_70;
    v71 = *&v11->_anon_70[16];
    v70.i32[3] = v72;
    *&v11->_anon_70[12] = v72;
    if ((vminvq_u32(vcgeq_f32(v70, v71)) & 0x80000000) == 0)
    {
      if (error)
      {
        v47 = sub_239931A78("MPSFColorConversion Error: file contains illegal output range information.\n");
        goto LABEL_25;
      }

LABEL_26:
      objc_msgSend_dealloc(v11, v41, v42, v43);
      return 0;
    }

    v73 = objc_msgSend_decodeIntegerForKey_(coder, v41, @"MPSFColorConversion.stageCount", v43);
    v74 = v11;
    v11->_stageList = 0;
    if (v73)
    {
      v75 = v73;
      v76 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"%@[%lu]", v43, @"MPSFColorConversion.stage", 0);
      if (v76)
      {
        v85 = 0;
        v84 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v41, v76, &v85);
        if (!v84)
        {
          if (!error)
          {
            goto LABEL_26;
          }

LABEL_36:
          v47 = sub_239931A78("MPSFColorConversion Error: stage %lu data missing.\n");
          goto LABEL_25;
        }

        v77 = sub_239926F88(&v84, &v85, error);
        v11->_stageList = v77;
        if (!v77)
        {
          goto LABEL_26;
        }

        if (v75 == 1)
        {
LABEL_32:
          v74 = v11;
          goto LABEL_33;
        }

        v79 = 1;
        while (1)
        {
          v80 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"%@[%lu]", v43, @"MPSFColorConversion.stage", v79);
          if (!v80)
          {
            break;
          }

          v84 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v41, v80, &v85);
          if (!v84)
          {
            if (!error)
            {
              goto LABEL_26;
            }

            goto LABEL_36;
          }

          v81 = sub_239926F88(&v84, &v85, error);
          if (!v81)
          {
            goto LABEL_26;
          }

          *(v77 + 8) = v81;
          ++v79;
          v77 = v81;
          if (v75 == v79)
          {
            goto LABEL_32;
          }
        }
      }

      if (!error)
      {
        goto LABEL_26;
      }

      v47 = sub_239931A78("MPSFColorConversion Error: out of memory.\n", v82);
      goto LABEL_25;
    }

LABEL_33:
    v78 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"%@_f32", v43, v74->super._name);
    if (v78)
    {
      objc_msgSend_buildStitchedFunctionAsyncWithName_(v11, v41, v78, v43);
      return v11;
    }

    goto LABEL_26;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x28223BE20](self, a2, coder);
  v5 = v4;
  v6 = v3;
  v76 = *MEMORY[0x277D85DE8];
  v7 = *(v3 + 32);
  *(v3 + 34) = 1;
  v74.receiver = v3;
  v74.super_class = MPSFColorConversion;
  [(MPSFunction *)&v74 encodeWithCoder:?];
  *(v6 + 32) = v7;
  objc_msgSend_encodeInt64_forKey_(v5, v8, *(v6 + 48), @"MPSFColorConversion.options");
  objc_msgSend_encodeInteger_forKey_(v5, v9, *(v6 + 56), @"MPSFColorConversion.inputChannels");
  objc_msgSend_encodeInteger_forKey_(v5, v10, *(v6 + 64), @"MPSFColorConversion.outputChannels");
  LODWORD(v11) = *(v6 + 96);
  objc_msgSend_encodeFloat_forKey_(v5, v12, @"MPSFColorConversion.inputRange.min0", v13, v11);
  LODWORD(v14) = *(v6 + 100);
  objc_msgSend_encodeFloat_forKey_(v5, v15, @"MPSFColorConversion.inputRange.min1", v16, v14);
  LODWORD(v17) = *(v6 + 104);
  objc_msgSend_encodeFloat_forKey_(v5, v18, @"MPSFColorConversion.inputRange.min2", v19, v17);
  LODWORD(v20) = *(v6 + 108);
  objc_msgSend_encodeFloat_forKey_(v5, v21, @"MPSFColorConversion.inputRange.min3", v22, v20);
  LODWORD(v23) = *(v6 + 80);
  objc_msgSend_encodeFloat_forKey_(v5, v24, @"MPSFColorConversion.inputRange.max0", v25, v23);
  LODWORD(v26) = *(v6 + 84);
  objc_msgSend_encodeFloat_forKey_(v5, v27, @"MPSFColorConversion.inputRange.max1", v28, v26);
  LODWORD(v29) = *(v6 + 88);
  objc_msgSend_encodeFloat_forKey_(v5, v30, @"MPSFColorConversion.inputRange.max2", v31, v29);
  LODWORD(v32) = *(v6 + 92);
  objc_msgSend_encodeFloat_forKey_(v5, v33, @"MPSFColorConversion.inputRange.max3", v34, v32);
  LODWORD(v35) = *(v6 + 128);
  objc_msgSend_encodeFloat_forKey_(v5, v36, @"MPSFColorConversion.outputRange.min0", v37, v35);
  LODWORD(v38) = *(v6 + 132);
  objc_msgSend_encodeFloat_forKey_(v5, v39, @"MPSFColorConversion.outputRange.min1", v40, v38);
  LODWORD(v41) = *(v6 + 136);
  objc_msgSend_encodeFloat_forKey_(v5, v42, @"MPSFColorConversion.outputRange.min2", v43, v41);
  LODWORD(v44) = *(v6 + 140);
  objc_msgSend_encodeFloat_forKey_(v5, v45, @"MPSFColorConversion.outputRange.min3", v46, v44);
  LODWORD(v47) = *(v6 + 112);
  objc_msgSend_encodeFloat_forKey_(v5, v48, @"MPSFColorConversion.outputRange.max0", v49, v47);
  LODWORD(v50) = *(v6 + 116);
  objc_msgSend_encodeFloat_forKey_(v5, v51, @"MPSFColorConversion.outputRange.max1", v52, v50);
  LODWORD(v53) = *(v6 + 120);
  objc_msgSend_encodeFloat_forKey_(v5, v54, @"MPSFColorConversion.outputRange.max2", v55, v53);
  LODWORD(v56) = *(v6 + 124);
  objc_msgSend_encodeFloat_forKey_(v5, v57, @"MPSFColorConversion.outputRange.max3", v58, v56);
  v60 = *(v6 + 144);
  if (v60)
  {
    v61 = 0;
    while (1)
    {
      v62 = objc_autoreleasePoolPush();
      v65 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v63, @"%@[%lu]", v64, @"MPSFColorConversion.stage", v61);
      if (v65)
      {
        v66 = v65;
        v67 = (*(*v60 + 96))(v60);
        v68 = v67;
        if (v67 <= 0x1000)
        {
          v69 = v75;
LABEL_9:
          v72 = v68;
          v73 = v69;
          if ((*(*v60 + 88))(v60, &v73, &v72))
          {
            objc_msgSend_encodeBytes_length_forKey_(v5, v70, v69, v68, v66);
          }

          if (v69 != v75)
          {
            free(v69);
          }

          goto LABEL_3;
        }

        v69 = malloc_type_malloc(v67, 0xCAA36408uLL);
        if (v69)
        {
          goto LABEL_9;
        }
      }

LABEL_3:
      objc_autoreleasePoolPop(v62);
      v60 = v60[1];
      ++v61;
      if (!v60)
      {
        goto LABEL_14;
      }
    }
  }

  v61 = 0;
LABEL_14:
  objc_msgSend_encodeInteger_forKey_(v5, v59, v61, @"MPSFColorConversion.stageCount");
  v71 = *MEMORY[0x277D85DE8];
}

- (void)optimizeStages
{
  if ((self->_options & 0x200) != 0)
  {
    v6 = objc_msgSend_debugDescription(self, a2, v2, v3);
    NSLog(&cfstr_StartingGraph.isa, v6);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  anon_50 = self->_anon_50;
    ;
  }

  v11 = *&self->_anon_50[16];
  v15 = *anon_50;
  v16 = v11;
  for (i = self->_stageList; i; i = i->var1)
  {
    (*(i->var0 + 9))(i, &v15);
  }

  v13 = v16;
  *self->_anon_70 = v15;
  *&self->_anon_70[16] = v13;
  if ((self->_options & 0x200) != 0)
  {
    v14 = objc_msgSend_debugDescription(self, v8, v9, v10);
    NSLog(&cfstr_PruneClamps.isa, v14);
  }
}

- (id)newDAGUsingFunctionList:(id)list
{
  v75 = *MEMORY[0x277D85DE8];
  v73 = 0;
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_f32", v3, self->super._name);
  v9 = objc_msgSend_cStringUsingEncoding_(v6, v7, 4, v8);
  sub_239929E3C(&v73, "DAGS {\n\t%s {\n\t\tALWAYS_INLINE;\n\t\tNODE( tex1d_1) : FUNCTION( MPSFColorConversion_DeclareTex1d1), INPUT(%u);\n\t\tNODE( tex3d_1) : FUNCTION( MPSFColorConversion_DeclareTex3d1), INPUT(%u);\n\t\tNODE( tex3d_2) : FUNCTION( MPSFColorConversion_DeclareTex3d2), INPUT(%u);\n", v10, v11, v12, v13, v14, v15, v9);
  v18 = objc_msgSend_newFunctionWithName_(self->super._library, v16, @"MPSFColorConversion_DeclareTex1d1", v17);
  objc_msgSend_addObject_(list, v19, v18, v20);
  v23 = objc_msgSend_newFunctionWithName_(self->super._library, v21, @"MPSFColorConversion_DeclareTex3d1", v22);
  objc_msgSend_addObject_(list, v24, v23, v25);
  v28 = objc_msgSend_newFunctionWithName_(self->super._library, v26, @"MPSFColorConversion_DeclareTex3d2", v27);
  objc_msgSend_addObject_(list, v29, v28, v30);
  v72 = 1;
  v74[0] = *"INPUT(0)";
  memset(&v74[1], 0, 240);
  stageList = self->_stageList;
  if (stageList)
  {
    v38 = 0;
    v39 = 0;
    do
    {
      v40 = v39 ^ 1;
      if (stageList->var1)
      {
        snprintf(&v74[8 * (v39 ^ 1)], 0x80uLL, "NODE(f%lu)", v38);
      }

      else
      {
        strcpy(&v74[8 * (v39 ^ 1)], "OUTPUT(o)");
      }

      v41 = (*(stageList->var0 + 7))(stageList, &v73, v38, &v72, &v74[8 * v39], &v74[8 * (v39 ^ 1)], list, self->super._library);
      if (v41 && (self->_options & 0x200) != 0)
      {
        v49 = v41;
        v71 = objc_msgSend_localizedDescription(v41, v42, v43, v44);
        objc_msgSend_localizedFailureReason(v49, v50, v51, v52);
        NSLog(&cfstr_DagBuildErrorN.isa);
      }

      stageList = stageList->var1;
      ++v38;
      v39 = v40;
    }

    while (stageList);
  }

  else
  {
    sub_239929E3C(&v73, "\t\t\tOUTPUT(o) : FUNCTION( MPSFColorConversion_DoNothing_float4), INPUT(0);\n", v31, v32, v33, v34, v35, v36, v71);
    v55 = objc_msgSend_newFunctionWithName_(self->super._library, v53, @"MPSFColorConversion_DoNothing_float4", v54);
    objc_msgSend_addObject_(list, v56, v55, v57);
  }

  sub_239929E3C(&v73, "\t}\n}", v43, v44, v45, v46, v47, v48, v71);
  v58 = sub_239931734(&v73);
  if ((self->_options & 0x200) != 0)
  {
    device = self->super._device;
    objc_sync_enter(device);
    v63 = objc_msgSend_description(self, v60, v61, v62);
    v67 = objc_msgSend_debugDescription(list, v64, v65, v66);
    NSLog(&cfstr_DagFunctionlis.isa, v58, v63, v67, 3, v72);
    objc_sync_exit(device);
  }

  while (1)
  {
    v68 = v73;
    if (!v73)
    {
      break;
    }

    v73 = *v73;
    free(v68);
  }

  v69 = *MEMORY[0x277D85DE8];
  return v58;
}

- (void)effectiveRange:(__n128)range
{
  v7 = a2;
  rangeCopy = range;
  for (i = *(self + 144); i; i = i[1])
  {
    v6 = 0;
    v4.n128_f64[0] = (*(*i + 64))(i, &v7, &v6);
    v7 = v4;
    rangeCopy = v5;
  }
}

- (const)find1DTexture1Stage
{
  for (i = self->_stageList; i; i = i->var1)
  {
    if ((*(i->var0 + 2))(i, a2) == 1)
    {
      var0 = i[1].var0;
      if (var0)
      {
        var1 = i[1].var1;
        v6 = 1;
        v7 = i[1].var0;
        v8 = 1;
        do
        {
          if (!LODWORD(var1->var0) && *(&var1->var1 + 4))
          {
            break;
          }

          v8 = v6++ < var0;
          var1 = (var1 + 84);
          v7 = (v7 - 1);
        }

        while (v7);
        if (v8)
        {
          break;
        }
      }
    }
  }

  return i;
}

- (id)descriptorFor1DTexture1
{
  result = objc_msgSend_find1DTexture1Stage(self, a2, v2, v3);
  if (result)
  {

    return sub_239928850(result);
  }

  return result;
}

- (const)find3dTextureStageAtIndex:(unint64_t)index
{
  stageList = self->_stageList;
  if (stageList)
  {
    v5 = 0;
    do
    {
      if ((*(stageList->var0 + 2))(stageList, a2) == 3 && !LODWORD(stageList[8].var1) && ++v5 == index)
      {
        break;
      }

      stageList = stageList->var1;
    }

    while (stageList);
  }

  return stageList;
}

- (id)descriptorFor3DTexture1
{
  result = objc_msgSend_find3dTextureStageAtIndex_(self, a2, 1, v2);
  if (result)
  {

    return sub_23992EB68(result);
  }

  return result;
}

- (id)descriptorFor3DTexture2
{
  result = objc_msgSend_find3dTextureStageAtIndex_(self, a2, 2, v2);
  if (result)
  {

    return sub_23992EB68(result);
  }

  return result;
}

- (void)initialize1DTexture1:(id)texture1
{
  if (texture1)
  {
    v5 = objc_msgSend_find1DTexture1Stage(self, a2, texture1, v3);
    if (v5)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        for (i = *(v5 + 24); ; i += 84)
        {
          if (!*i)
          {
            v9 = *(i + 12);
            if (v9)
            {
              break;
            }
          }

          if (!--v7)
          {
            return;
          }
        }

        memset(v10, 0, sizeof(v10));
        v11 = *(i + 4);
        v12 = vdupq_n_s64(1uLL);
        objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(texture1, v6, v10, 0, v9, 4 * v11);
      }
    }
  }
}

- (void)initialize3DTexture1:(id)texture1
{
  if (texture1)
  {
    v5 = objc_msgSend_find3dTextureStageAtIndex_(self, a2, 1, v3);
    if (v5)
    {
      v7 = *(v5 + 16);
      v8.i64[0] = 0x4F0000004F000000;
      v8.i64[1] = 0x4F0000004F000000;
      v9 = vcgtq_f32(v7, v8);
      v10 = vcvtq_s32_f32(vsubq_f32(v7, vandq_s8(v8, v9)));
      v8.i64[0] = 0x8000000080000000;
      v8.i64[1] = 0x8000000080000000;
      v11 = vandq_s8(v9, v8);
      v12 = vaddq_s32(v11, v10);
      v12.i32[2] *= v12.i32[3];
      v12.i32[3] = 1;
      v13 = vrev64q_s32(v12);
      v14 = vextq_s8(v13, v13, 0xCuLL);
      v15 = *(v5 + 120);
      if (v15 <= 2)
      {
        v14 = vextq_s8(v14, v14, 4uLL);
        if (v15 != 2)
        {
          v11.i64[0] = 0;
          v16 = vextq_s8(v14, v14, 4uLL);
          v9.i64[0] = *(v5 + 120);
          v14 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v9, v11).i64[0], 0), vextq_s8(v16, v16, 4uLL), v16);
        }
      }

      *&v17 = v14.u32[0];
      *(&v17 + 1) = v14.u32[1];
      v20 = v17;
      v18 = *(v5 + 128);
      if (v18 == 3)
      {
        v18 = 4;
      }

      memset(v19, 0, sizeof(v19));
      v21 = v14.u32[2];
      objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(texture1, v6, v19, 0, 0, *(v5 + 32), 2 * v14.u32[0] * v18, 2 * v14.u32[0] * v18 * v14.u32[1]);
    }
  }
}

- (void)initialize3DTexture2:(id)texture2
{
  if (texture2)
  {
    v5 = objc_msgSend_find3dTextureStageAtIndex_(self, a2, 2, v3);
    if (v5)
    {
      v7 = *(v5 + 16);
      v8.i64[0] = 0x4F0000004F000000;
      v8.i64[1] = 0x4F0000004F000000;
      v9 = vcgtq_f32(v7, v8);
      v10 = vcvtq_s32_f32(vsubq_f32(v7, vandq_s8(v8, v9)));
      v8.i64[0] = 0x8000000080000000;
      v8.i64[1] = 0x8000000080000000;
      v11 = vandq_s8(v9, v8);
      v12 = vaddq_s32(v11, v10);
      v12.i32[2] *= v12.i32[3];
      v12.i32[3] = 1;
      v13 = vrev64q_s32(v12);
      v14 = vextq_s8(v13, v13, 0xCuLL);
      v15 = *(v5 + 120);
      if (v15 <= 2)
      {
        v14 = vextq_s8(v14, v14, 4uLL);
        if (v15 != 2)
        {
          v11.i64[0] = 0;
          v16 = vextq_s8(v14, v14, 4uLL);
          v9.i64[0] = *(v5 + 120);
          v14 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v9, v11).i64[0], 0), vextq_s8(v16, v16, 4uLL), v16);
        }
      }

      *&v17 = v14.u32[0];
      *(&v17 + 1) = v14.u32[1];
      v20 = v17;
      v18 = *(v5 + 128);
      if (v18 == 3)
      {
        v18 = 4;
      }

      memset(v19, 0, sizeof(v19));
      v21 = v14.u32[2];
      objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(texture2, v6, v19, 0, 0, *(v5 + 32), 2 * v14.u32[0] * v18, 2 * v14.u32[0] * v18 * v14.u32[1]);
    }
  }
}

- (id)debugDescription
{
  v77.receiver = self;
  v77.super_class = MPSFColorConversion;
  v72 = [(MPSFunction *)&v77 debugDescription];
  v76 = 0;
  v3 = *&self->_anon_50[16];
  v74 = *self->_anon_50;
  v75 = v3;
  sub_239929E3C(&v76, "\tStarting range:  ", v4, v5, v6, v7, v8, v9, v66);
  sub_239929E3C(&v76, "{ ", v10, v11, v12, v13, v14, v15, v67);
  v78 = vzip1_s32(*&v75, *&v74);
  sub_239931904(&v76, &v78);
  v78 = __PAIR64__(DWORD1(v74), DWORD1(v75));
  sub_239931904(&v76, &v78);
  v78 = __PAIR64__(DWORD2(v74), DWORD2(v75));
  sub_239931904(&v76, &v78);
  v78 = __PAIR64__(HIDWORD(v74), HIDWORD(v75));
  sub_239931904(&v76, &v78);
  sub_239929E3C(&v76, "%s", v16, v17, v18, v19, v20, v21, "\n");
  stageList = self->_stageList;
  if (stageList)
  {
    while (1)
    {
      sub_239929E3C(&v76, "\n", v22, v23, v24, v25, v26, v27, v68);
      (*(stageList->var0 + 6))(stageList, &v76);
      v73 = 0;
      *&v35 = (*(stageList->var0 + 8))(stageList, &v74, &v73);
      v74 = v35;
      v75 = v36;
      if (stageList->var1)
      {
        v37 = "\n\tcurrent range:  ";
      }

      else
      {
        v37 = "\n\tfinal range:   ";
      }

      sub_239929E3C(&v76, v37, v29, v30, v31, v32, v33, v34, v69);
      sub_239929E3C(&v76, "{ ", v38, v39, v40, v41, v42, v43, v70);
      v78 = vzip1_s32(*&v75, *&v74);
      sub_239931904(&v76, &v78);
      v78 = __PAIR64__(DWORD1(v74), DWORD1(v75));
      sub_239931904(&v76, &v78);
      v78 = __PAIR64__(DWORD2(v74), DWORD2(v75));
      sub_239931904(&v76, &v78);
      v78 = __PAIR64__(HIDWORD(v74), HIDWORD(v75));
      sub_239931904(&v76, &v78);
      sub_239929E3C(&v76, "%s", v44, v45, v46, v47, v48, v49, "\n");
      if (!v73)
      {
        goto LABEL_4;
      }

      sub_239929E3C(&v76, "\tclamps applied: ", v22, v23, v24, v25, v26, v27, v68);
      v56 = v73;
      if (v73)
      {
        break;
      }

      v57 = &unk_2399382D3;
      if ((v73 & 2) != 0)
      {
        goto LABEL_13;
      }

LABEL_14:
      if ((v56 & 4) != 0)
      {
        sub_239929E3C(&v76, "%soutput\n", v50, v51, v52, v53, v54, v55, v57);
      }

      else
      {
        sub_239929E3C(&v76, "\n", v50, v51, v52, v53, v54, v55, v71);
      }

LABEL_4:
      stageList = stageList->var1;
      if (!stageList)
      {
        goto LABEL_16;
      }
    }

    sub_239929E3C(&v76, "input ", v50, v51, v52, v53, v54, v55, v71);
    v56 = v73;
    v57 = ", ";
    if ((v73 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_239929E3C(&v76, "%ssignedReflection", v50, v51, v52, v53, v54, v55, v57);
    v56 = v73;
    v57 = ", ";
    goto LABEL_14;
  }

LABEL_16:
  v58 = sub_239931734(&v76);
  v59 = objc_alloc(MEMORY[0x277CCACA8]);
  v62 = objc_msgSend_initWithFormat_(v59, v60, @"%@\n%@\n", v61, v72, v58);

  v63 = v62;
  for (i = v76; v76; i = v76)
  {
    v76 = *i;
    free(i);
  }

  return v63;
}

@end