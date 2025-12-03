@interface AVFigAssetWriterVideoTrack
- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass error:(id *)error;
@end

@implementation AVFigAssetWriterVideoTrack

- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass error:(id *)error
{
  passCopy = pass;
  v48 = 0;
  v47 = 0;
  outputSettings = [specification outputSettings];
  sourceFormatDescription = [specification sourceFormatDescription];
  if (!outputSettings)
  {
    v46.receiver = self;
    v46.super_class = AVFigAssetWriterVideoTrack;
    v47 = [(AVFigAssetWriterTrack *)&v46 _attachToFigAssetWriterUsingFormatSpecification:specification sourcePixelBufferAttributes:attributes multiPass:passCopy error:&v48];
    goto LABEL_37;
  }

  v13 = sourceFormatDescription;
  if (![outputSettings willYieldCompressedSamples])
  {
    goto LABEL_37;
  }

  height = [outputSettings height];
  width = [outputSettings width];
  v43 = CMMediaTypeFromAVMediaType([(AVFigAssetWriterTrack *)self mediaType]);
  videoCodecType = [outputSettings videoCodecType];
  videoEncoderSpecification = [outputSettings videoEncoderSpecification];
  pixelTransferProperties = [outputSettings pixelTransferProperties];
  videoCompressionProperties = [outputSettings videoCompressionProperties];
  if (passCopy)
  {
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E69735B0]];
  }

  else
  {
    v17 = 0;
  }

  if (pixelTransferProperties)
  {
    videoCompressionProperties = [MEMORY[0x1E695DF90] dictionaryWithDictionary:videoCompressionProperties];
    [videoCompressionProperties setObject:pixelTransferProperties forKey:*MEMORY[0x1E6983798]];
  }

  if ([outputSettings shouldPrepareEncodedSampleBuffersForPaddedWrites])
  {
    videoCompressionProperties = [MEMORY[0x1E695DF90] dictionaryWithDictionary:videoCompressionProperties];
    [videoCompressionProperties setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69837A8]];
  }

  if (v13)
  {
    v40 = v17;
    v44 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:videoCompressionProperties];
    Dimensions = CMVideoFormatDescriptionGetDimensions(v13);
    Extension = CMFormatDescriptionGetExtension(v13, *MEMORY[0x1E6965EF8]);
    v20 = CMFormatDescriptionGetExtension(v13, *MEMORY[0x1E6965D70]);
    width = width;
    LODWORD(height) = height;
    v23 = height > 0 && width > 0;
    if (v23)
    {
      height = height;
    }

    else
    {
      height = Dimensions.height;
    }

    if (!v23)
    {
      width = Dimensions.width;
    }

    width = width;
    v24 = *MEMORY[0x1E6983790];
    if (![videoCompressionProperties objectForKey:*MEMORY[0x1E6983790]] && Extension)
    {
      [v44 setObject:Extension forKey:v24];
    }

    v25 = *MEMORY[0x1E69835A0];
    if ([videoCompressionProperties objectForKey:*MEMORY[0x1E69835A0]])
    {
      v26 = 1;
    }

    else
    {
      v26 = v20 == 0;
    }

    v27 = v26;
    if (((v27 | v23) & 1) == 0)
    {
      [v44 setObject:v20 forKey:v25];
    }

    if (attributes)
    {
      height = height;
    }

    else
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(v13);
      v29 = CMVideoFormatDescriptionGetDimensions(v13);
      v30 = MEMORY[0x1E695DF20];
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:MediaSubType];
      v32 = *MEMORY[0x1E6966130];
      v33 = [MEMORY[0x1E696AD98] numberWithInteger:v29.width];
      v34 = *MEMORY[0x1E6966208];
      height = height;
      v35 = [MEMORY[0x1E696AD98] numberWithInteger:*&v29 >> 32];
      attributes = [v30 dictionaryWithObjectsAndKeys:{v31, v32, v33, v34, v35, *MEMORY[0x1E69660B8], 0}];
    }

    videoCompressionProperties = v44;
    v17 = v40;
  }

  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  v37 = *(*(CMBaseObjectGetVTable() + 16) + 184);
  if (!v37)
  {
    v38 = 4294954514;
    goto LABEL_36;
  }

  v49 = *MEMORY[0x1E6960C70];
  v50 = *(MEMORY[0x1E6960C70] + 16);
  v38 = v37(figAssetWriter, width, height, 0, v43, videoCodecType, videoEncoderSpecification, videoCompressionProperties, v17, &v49, attributes, &v47);
  if (v38)
  {
LABEL_36:
    v48 = [AVAssetWriter _errorForOSStatus:v38];
  }

LABEL_37:
  if (error)
  {
    *error = v48;
  }

  return v47;
}

@end