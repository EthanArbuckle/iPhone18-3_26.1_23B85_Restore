@interface AVFigAssetWriterVideoTrack
- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)a3 sourcePixelBufferAttributes:(id)a4 multiPass:(BOOL)a5 error:(id *)a6;
@end

@implementation AVFigAssetWriterVideoTrack

- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)a3 sourcePixelBufferAttributes:(id)a4 multiPass:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v48 = 0;
  v47 = 0;
  v11 = [a3 outputSettings];
  v12 = [a3 sourceFormatDescription];
  if (!v11)
  {
    v46.receiver = self;
    v46.super_class = AVFigAssetWriterVideoTrack;
    v47 = [(AVFigAssetWriterTrack *)&v46 _attachToFigAssetWriterUsingFormatSpecification:a3 sourcePixelBufferAttributes:a4 multiPass:v7 error:&v48];
    goto LABEL_37;
  }

  v13 = v12;
  if (![v11 willYieldCompressedSamples])
  {
    goto LABEL_37;
  }

  v14 = [v11 height];
  v45 = [v11 width];
  v43 = CMMediaTypeFromAVMediaType([(AVFigAssetWriterTrack *)self mediaType]);
  v42 = [v11 videoCodecType];
  v41 = [v11 videoEncoderSpecification];
  v15 = [v11 pixelTransferProperties];
  v16 = [v11 videoCompressionProperties];
  if (v7)
  {
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E69735B0]];
  }

  else
  {
    v17 = 0;
  }

  if (v15)
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v16];
    [v16 setObject:v15 forKey:*MEMORY[0x1E6983798]];
  }

  if ([v11 shouldPrepareEncodedSampleBuffersForPaddedWrites])
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v16];
    [v16 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69837A8]];
  }

  if (v13)
  {
    v40 = v17;
    v44 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v16];
    Dimensions = CMVideoFormatDescriptionGetDimensions(v13);
    Extension = CMFormatDescriptionGetExtension(v13, *MEMORY[0x1E6965EF8]);
    v20 = CMFormatDescriptionGetExtension(v13, *MEMORY[0x1E6965D70]);
    width = v45;
    LODWORD(height) = v14;
    v23 = v14 > 0 && v45 > 0;
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

    v45 = width;
    v24 = *MEMORY[0x1E6983790];
    if (![v16 objectForKey:*MEMORY[0x1E6983790]] && Extension)
    {
      [v44 setObject:Extension forKey:v24];
    }

    v25 = *MEMORY[0x1E69835A0];
    if ([v16 objectForKey:*MEMORY[0x1E69835A0]])
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

    if (a4)
    {
      v14 = height;
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
      v14 = height;
      v35 = [MEMORY[0x1E696AD98] numberWithInteger:*&v29 >> 32];
      a4 = [v30 dictionaryWithObjectsAndKeys:{v31, v32, v33, v34, v35, *MEMORY[0x1E69660B8], 0}];
    }

    v16 = v44;
    v17 = v40;
  }

  v36 = [(AVFigAssetWriterTrack *)self figAssetWriter];
  v37 = *(*(CMBaseObjectGetVTable() + 16) + 184);
  if (!v37)
  {
    v38 = 4294954514;
    goto LABEL_36;
  }

  v49 = *MEMORY[0x1E6960C70];
  v50 = *(MEMORY[0x1E6960C70] + 16);
  v38 = v37(v36, v45, v14, 0, v43, v42, v41, v16, v17, &v49, a4, &v47);
  if (v38)
  {
LABEL_36:
    v48 = [AVAssetWriter _errorForOSStatus:v38];
  }

LABEL_37:
  if (a6)
  {
    *a6 = v48;
  }

  return v47;
}

@end