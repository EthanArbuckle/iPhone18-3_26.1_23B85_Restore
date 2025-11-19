@interface ETMessageVideoCompositor
- (CGRect)videoRect;
- (ETMessageVideoCompositor)init;
- (void)dealloc;
- (void)startVideoCompositionRequest:(id)a3;
@end

@implementation ETMessageVideoCompositor

- (ETMessageVideoCompositor)init
{
  v11.receiver = self;
  v11.super_class = ETMessageVideoCompositor;
  v2 = [(ETMessageVideoCompositor *)&v11 init];
  if (v2)
  {
    v3 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
    v2->_colorspace = v3;
    v2->_colorProfileData = CGColorSpaceCopyICCData(v3);
    v4 = kCVPixelBufferPixelFormatTypeKey;
    v14 = kCVPixelBufferPixelFormatTypeKey;
    v15 = &off_25620;
    v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    inputPixelBufferAttributes = v2->_inputPixelBufferAttributes;
    v2->_inputPixelBufferAttributes = v5;

    v12[0] = v4;
    v12[1] = kCVPixelBufferCGBitmapContextCompatibilityKey;
    v13[0] = &off_25620;
    v13[1] = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    outputPixelBufferAttributes = v2->_outputPixelBufferAttributes;
    v2->_outputPixelBufferAttributes = v7;

    v9 = v2;
  }

  return v2;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorspace);
  colorProfileData = self->_colorProfileData;
  if (colorProfileData)
  {
    CFRelease(colorProfileData);
  }

  v4.receiver = self;
  v4.super_class = ETMessageVideoCompositor;
  [(ETMessageVideoCompositor *)&v4 dealloc];
}

- (void)startVideoCompositionRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceFrameByTrackID:self->_videoTrackID];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 renderContext];
    v8 = [v7 newPixelBuffer];

    if (v8)
    {
      CVBufferSetAttachment(v8, kCVImageBufferICCProfileKey, self->_colorProfileData, kCVAttachmentMode_ShouldPropagate);
      if (!CVPixelBufferLockBaseAddress(v8, 0))
      {
        if (v4)
        {
          [v4 compositionTime];
        }

        else
        {
          memset(time, 0, 24);
        }

        Seconds = CMTimeGetSeconds(time);
        Width = CVPixelBufferGetWidth(v8);
        Height = CVPixelBufferGetHeight(v8);
        v12 = Width;
        v13 = Height;
        BytesPerRow = CVPixelBufferGetBytesPerRow(v8);
        BaseAddress = CVPixelBufferGetBaseAddress(v8);
        v16 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, self->_colorspace, 0x2002u);
        v17 = [CIContext contextWithCGContext:v16 options:0];
        v18 = [CIImage imageWithCVPixelBuffer:v6];
        v19 = *&self->_videoTransform.c;
        *time = *&self->_videoTransform.a;
        *&time[16] = v19;
        v41 = *&self->_videoTransform.tx;
        v20 = [v18 imageByApplyingTransform:time];

        [v20 extent];
        [v17 drawImage:v20 inRect:0.0 fromRect:{0.0, v12, v13, v21, v22, v23, v24}];
        introImage = self->_introImage;
        if (introImage)
        {
          v43.origin.x = 0.0;
          v43.origin.y = 0.0;
          v43.size.width = v12;
          v43.size.height = v13;
          CGContextDrawImage(v16, v43, introImage);
        }

        sketchMessageRenderer = self->_sketchMessageRenderer;
        if (sketchMessageRenderer)
        {
          v27 = [(ETMessageFrameRenderer *)sketchMessageRenderer createImageForTime:Seconds];
          if (v27)
          {
            v28 = v27;
            v44.origin.x = 0.0;
            v44.origin.y = 0.0;
            v44.size.width = v12;
            v44.size.height = v13;
            CGContextDrawImage(v16, v44, v27);
            CFRelease(v28);
          }
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v29 = self->_sceneMessageRenderers;
        v30 = [(NSArray *)v29 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v37;
          do
          {
            for (i = 0; i != v31; i = i + 1)
            {
              if (*v37 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = [*(*(&v36 + 1) + 8 * i) createImageForTime:{Seconds, v36}];
              if (v34)
              {
                v35 = v34;
                v45.origin.x = 0.0;
                v45.origin.y = 0.0;
                v45.size.width = v12;
                v45.size.height = v13;
                CGContextDrawImage(v16, v45, v34);
                CFRelease(v35);
              }
            }

            v31 = [(NSArray *)v29 countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v31);
        }

        CVPixelBufferUnlockBaseAddress(v8, 0);
        CGContextRelease(v16);
      }

      [v4 finishWithComposedVideoFrame:{v8, v36}];
      CFRelease(v8);
    }
  }
}

- (CGRect)videoRect
{
  objc_copyStruct(v6, &self->_videoRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end