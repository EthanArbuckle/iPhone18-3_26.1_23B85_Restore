@interface AVCaptureMultiCamClientCompositingData
- (id)_imageForGainMapSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (id)_imageForSampleBuffer:(opaqueCMSampleBuffer *)buffer gainMapMetadata:(id)metadata;
- (id)_initWithPrimarySampleBuffer:(opaqueCMSampleBuffer *)buffer primaryGainMapSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer secondarySampleBuffer:(opaqueCMSampleBuffer *)secondarySampleBuffer secondaryGainMapSampleBuffer:(opaqueCMSampleBuffer *)mapSampleBuffer outputSampleBuffer:(opaqueCMSampleBuffer *)outputSampleBuffer outputGainMapSampleBuffer:(opaqueCMSampleBuffer *)gainMapSampleBuffer;
- (id)primaryGainMapImage;
- (id)primaryImage;
- (id)secondaryGainMapImage;
- (id)secondaryImage;
- (void)dealloc;
@end

@implementation AVCaptureMultiCamClientCompositingData

- (id)_initWithPrimarySampleBuffer:(opaqueCMSampleBuffer *)buffer primaryGainMapSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer secondarySampleBuffer:(opaqueCMSampleBuffer *)secondarySampleBuffer secondaryGainMapSampleBuffer:(opaqueCMSampleBuffer *)mapSampleBuffer outputSampleBuffer:(opaqueCMSampleBuffer *)outputSampleBuffer outputGainMapSampleBuffer:(opaqueCMSampleBuffer *)gainMapSampleBuffer
{
  v22.receiver = self;
  v22.super_class = AVCaptureMultiCamClientCompositingData;
  v14 = [(AVCaptureMultiCamClientCompositingData *)&v22 init];
  if (v14)
  {
    if (buffer)
    {
      v15 = CFRetain(buffer);
    }

    else
    {
      v15 = 0;
    }

    v14->_primarySampleBuffer = v15;
    if (sampleBuffer)
    {
      v16 = CFRetain(sampleBuffer);
    }

    else
    {
      v16 = 0;
    }

    v14->_primaryGainMapSampleBuffer = v16;
    if (secondarySampleBuffer)
    {
      v17 = CFRetain(secondarySampleBuffer);
    }

    else
    {
      v17 = 0;
    }

    v14->_secondarySampleBuffer = v17;
    if (mapSampleBuffer)
    {
      v18 = CFRetain(mapSampleBuffer);
    }

    else
    {
      v18 = 0;
    }

    v14->_secondaryGainMapSampleBuffer = v18;
    if (outputSampleBuffer)
    {
      v19 = CFRetain(outputSampleBuffer);
    }

    else
    {
      v19 = 0;
    }

    v14->_outputSampleBuffer = v19;
    if (gainMapSampleBuffer)
    {
      v20 = CFRetain(gainMapSampleBuffer);
    }

    else
    {
      v20 = 0;
    }

    v14->_outputGainMapSampleBuffer = v20;
  }

  return v14;
}

- (void)dealloc
{
  primarySampleBuffer = self->_primarySampleBuffer;
  if (primarySampleBuffer)
  {
    CFRelease(primarySampleBuffer);
  }

  primaryGainMapSampleBuffer = self->_primaryGainMapSampleBuffer;
  if (primaryGainMapSampleBuffer)
  {
    CFRelease(primaryGainMapSampleBuffer);
  }

  secondarySampleBuffer = self->_secondarySampleBuffer;
  if (secondarySampleBuffer)
  {
    CFRelease(secondarySampleBuffer);
  }

  secondaryGainMapSampleBuffer = self->_secondaryGainMapSampleBuffer;
  if (secondaryGainMapSampleBuffer)
  {
    CFRelease(secondaryGainMapSampleBuffer);
  }

  outputSampleBuffer = self->_outputSampleBuffer;
  if (outputSampleBuffer)
  {
    CFRelease(outputSampleBuffer);
  }

  outputGainMapSampleBuffer = self->_outputGainMapSampleBuffer;
  if (outputGainMapSampleBuffer)
  {
    CFRelease(outputGainMapSampleBuffer);
  }

  v9.receiver = self;
  v9.super_class = AVCaptureMultiCamClientCompositingData;
  [(AVCaptureMultiCamClientCompositingData *)&v9 dealloc];
}

- (id)primaryImage
{
  primaryImage = self->_primaryImage;
  if (!primaryImage)
  {
    primaryImage = [(AVCaptureMultiCamClientCompositingData *)self _imageForSampleBuffer:self->_primarySampleBuffer gainMapMetadata:CMGetAttachment(self->_primaryGainMapSampleBuffer, *MEMORY[0x1E6990D40], 0)];
    self->_primaryImage = primaryImage;
  }

  v4 = primaryImage;

  return v4;
}

- (id)primaryGainMapImage
{
  primaryGainMapImage = self->_primaryGainMapImage;
  if (!primaryGainMapImage)
  {
    primaryGainMapImage = [(AVCaptureMultiCamClientCompositingData *)self _imageForGainMapSampleBuffer:self->_primaryGainMapSampleBuffer];
    self->_primaryGainMapImage = primaryGainMapImage;
  }

  v4 = primaryGainMapImage;

  return v4;
}

- (id)secondaryImage
{
  secondaryImage = self->_secondaryImage;
  if (!secondaryImage)
  {
    secondaryImage = [(AVCaptureMultiCamClientCompositingData *)self _imageForSampleBuffer:self->_secondarySampleBuffer gainMapMetadata:CMGetAttachment(self->_secondaryGainMapSampleBuffer, *MEMORY[0x1E6990D40], 0)];
    self->_secondaryImage = secondaryImage;
  }

  v4 = secondaryImage;

  return v4;
}

- (id)secondaryGainMapImage
{
  secondaryGainMapImage = self->_secondaryGainMapImage;
  if (!secondaryGainMapImage)
  {
    secondaryGainMapImage = [(AVCaptureMultiCamClientCompositingData *)self _imageForGainMapSampleBuffer:self->_secondaryGainMapSampleBuffer];
    self->_secondaryGainMapImage = secondaryGainMapImage;
  }

  v4 = secondaryGainMapImage;

  return v4;
}

- (id)_imageForSampleBuffer:(opaqueCMSampleBuffer *)buffer gainMapMetadata:(id)metadata
{
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  v6 = [metadata objectForKeyedSubscript:*MEMORY[0x1E6990DB0]];
  v7 = [metadata objectForKeyedSubscript:*MEMORY[0x1E6990E10]];
  v8 = 0;
  if (metadata)
  {
    if (v6 && v7 != 0)
    {
      v20 = *MEMORY[0x1E696DE30];
      v18[0] = @"33";
      v18[1] = @"48";
      v19[0] = v6;
      v19[1] = v7;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    }
  }

  v10 = MEMORY[0x1E695F658];
  v11 = *MEMORY[0x1E695F9E0];
  v15 = *MEMORY[0x1E695F990];
  v16 = v11;
  v12 = MEMORY[0x1E695E0F8];
  if (v8)
  {
    v12 = v8;
  }

  v17[0] = MEMORY[0x1E695E118];
  v17[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v15 count:2];
  return [v10 imageWithCVPixelBuffer:ImageBuffer options:{v13, v15, v16}];
}

- (id)_imageForGainMapSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (!buffer)
  {
    return 0;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  v5 = CMGetAttachment(buffer, *MEMORY[0x1E6990DA8], 0);
  v6 = MEMORY[0x1E695F658];
  v7 = *MEMORY[0x1E695F990];
  v13[0] = MEMORY[0x1E695E118];
  v8 = *MEMORY[0x1E695F9A8];
  v12[0] = v7;
  v12[1] = v8;
  v13[1] = [MEMORY[0x1E695DFB0] null];
  v12[2] = *MEMORY[0x1E695F9E0];
  v10 = *MEMORY[0x1E696D228];
  v11 = v5;
  v13[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  return [v6 imageWithCVPixelBuffer:ImageBuffer options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, v12, 3)}];
}

@end