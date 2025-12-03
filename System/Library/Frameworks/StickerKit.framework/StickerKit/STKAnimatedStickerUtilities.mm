@interface STKAnimatedStickerUtilities
+ (id)downSampledHeicsDataFromData:(id)data maxLength:(unint64_t)length;
@end

@implementation STKAnimatedStickerUtilities

+ (id)downSampledHeicsDataFromData:(id)data maxLength:(unint64_t)length
{
  v18[8] = *MEMORY[0x1E69E9840];
  v16 = 0;
  dataCopy = data;
  v18[0] = 0;
  if (CMPhotoDecompressionSessionCreate() || (CFAutorelease(v18[0]), arg[0] = 0, CMPhotoDecompressionSessionCreateContainer()) || (CFAutorelease(arg[0]), CMPhotoDecompressionContainerCreateSequenceContainer()))
  {

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  CFAutorelease(v16);

  v14 = 0;
  v15 = 0;
  v13[0] = 0;
  if (CMPhotoCompressionSessionCreate())
  {
    goto LABEL_5;
  }

  CFAutorelease(v13[0]);
  v8 = *MEMORY[0x1E6991860];
  arg[0] = *MEMORY[0x1E6991870];
  arg[1] = v8;
  v18[0] = &unk_1F0DFA2C0;
  v18[1] = &unk_1F0DFA2D8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:arg count:2];
  if (CMPhotoCompressionSessionOpenEmptyContainer() || CMPhotoCompressionSessionStartImageSequence() || CMPhotoDecompressionContainerGetImageCountWithOptions() || CMPhotoDecompressionContainerCreateDictionaryDescription())
  {

    goto LABEL_5;
  }

  CFAutorelease(0);
  Value = CFDictionaryGetValue(0, *MEMORY[0x1E6991A88]);

  v12 = Value;
  if (CMPhotoCompressionSessionEndImageSequence() || (v13[0] = 0, CMPhotoCompressionSessionCloseContainerAndCopyBacking()))
  {
    v5 = 0;
  }

  else
  {
    v5 = v13[0];
    v11 = v13[0];
  }

LABEL_6:
  v6 = v5;

  return v5;
}

@end