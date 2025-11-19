@interface COSWristAttributeVisualDetector
- (CGImage)newImageFromSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (CGImage)resizedImageFromImage:(CGImage *)a3;
- (CGImage)warmupBuffer;
- (COSWristAttributeVisualDetector)init;
- (__CVBuffer)newPixelBufferFromCGImage:(CGImage *)a3;
- (id)computedConfidences;
- (id)confidenceSummary;
- (void)exportSample:(opaqueCMSampleBuffer *)a3 withClassification:(unint64_t)a4;
- (void)ingestSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)ingestWarmupBuffer;
@end

@implementation COSWristAttributeVisualDetector

- (COSWristAttributeVisualDetector)init
{
  v8.receiver = self;
  v8.super_class = COSWristAttributeVisualDetector;
  v2 = [(COSWristAttributeVisualDetector *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    confidenceObservations = v2->_confidenceObservations;
    v2->_confidenceObservations = v3;

    v5 = objc_alloc_init(beam_bridge_2022_v2_1);
    bbModel = v2->_bbModel;
    v2->_bbModel = v5;
  }

  return v2;
}

- (id)confidenceSummary
{
  v2 = [(COSWristAttributeVisualDetector *)self computedConfidences];
  [v2 leftWristRightCrown];
  v4 = v3;
  [v2 leftWristLeftCrown];
  v6 = v5;
  [v2 rightWristRightCrown];
  v8 = v7;
  [v2 rightWristLeftCrown];
  v10 = v9;
  [v2 none];
  v12 = v11;
  [v2 invalid];
  v14 = v13;
  [v2 palm];
  v16 = v15;
  [v2 dock];
  if (v4 <= v6 || v4 <= v8 || v4 <= v10 || v4 <= v12 || v4 <= v14 || v4 <= v16 || v4 <= 0.65 || v4 <= v17)
  {
    if (v8 <= v6 || v8 <= v4 || v8 <= v10 || v8 <= v12 || v8 <= v14 || v8 <= v16 || v8 <= 0.65 || v8 <= v17)
    {
      if (v6 <= v4 || v6 <= v8 || v6 <= v10 || v6 <= v12 || v6 <= v14 || v6 <= v16 || v6 <= 0.65 || v6 <= v17)
      {
        if (v10 <= v6 || v10 <= v4 || v10 <= v8 || v10 <= v12 || v10 <= v14 || v10 <= v16 || v10 <= 0.65 || v10 <= v17)
        {
          if (v14 <= v12 || v14 <= v16 || v14 <= 0.65 || v14 <= v17)
          {
            if (v12 <= v14 || v12 <= v16 || v12 <= 0.55 || v12 <= v17)
            {
              if (v16 <= v14 || v16 <= v17 || v16 <= v12 || v16 <= 0.55)
              {
                if (v17 <= v14 || v17 <= v16 || v17 <= v12 || v17 <= 0.55)
                {
                  v4 = 0.0;
                  v18 = 4;
                }

                else
                {
                  v18 = 3;
                  v4 = v17;
                }
              }

              else
              {
                v18 = 2;
                v4 = v16;
              }
            }

            else
            {
              v18 = 0;
              v4 = v12;
            }
          }

          else
          {
            v18 = 1;
            v4 = v14;
          }
        }

        else
        {
          v18 = 8;
          v4 = v10;
        }
      }

      else
      {
        v18 = 6;
        v4 = v6;
      }
    }

    else
    {
      v18 = 7;
      v4 = v8;
    }
  }

  else
  {
    v18 = 5;
  }

  v19 = [[COSWristAttributeConfidenceSummary alloc] initWithAttribute:v18 andConfidenceValue:v4];

  return v19;
}

- (id)computedConfidences
{
  v3 = +[NSDate date];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v6 = [[COSWristAttributeConfidences alloc] initWithObservationTime:v5];
  v7 = [(NSMutableArray *)self->_confidenceObservations count];
  if (v7 < 7)
  {
    if (v7)
    {
      v10 = self->_confidenceObservations;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    confidenceObservations = self->_confidenceObservations;
    v9 = [NSIndexSet indexSetWithIndexesInRange:v7 - 6, 6];
    v10 = [(NSMutableArray *)confidenceObservations objectsAtIndexes:v9];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v10;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(COSWristAttributeConfidences *)v6 addConfidences:*(*(&v17 + 1) + 8 * i), v17];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  [(COSWristAttributeConfidences *)v6 divideConfidencesBy:[(NSMutableArray *)v11 count]];

  return v6;
}

- (CGImage)newImageFromSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  CVPixelBufferLockBaseAddress(ImageBuffer, 0);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(ImageBuffer, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(ImageBuffer, 0);
  v8 = CVPixelBufferGetBaseAddressOfPlane(ImageBuffer, 1uLL);
  v9 = CVPixelBufferGetBytesPerRowOfPlane(ImageBuffer, 1uLL);
  v10 = malloc_type_malloc(4 * Width * Height, 0x100004077774924uLL);
  v12 = v10;
  if (Height)
  {
    v13 = 0;
    v14 = v10 + 3;
    do
    {
      if (Width)
      {
        v15 = 0;
        v16 = &v8[v9 * (v13 >> 1)];
        v17 = v14;
        do
        {
          v18 = v16[(v15 & 0xFFFFFFFE) + 1] - 128;
          LOBYTE(v11) = BaseAddressOfPlane[v15];
          v19 = *&v11;
          v20 = v19 + v18 * 1.4;
          v21 = (v16[v15 & 0x7FFFFFFE] - 128);
          v22 = llroundf(v20);
          v23 = v19 + v21 * -0.343 + v18 * -0.711;
          v11 = v19 + v21 * 1.765;
          *&v11 = v11;
          v24 = llroundf(v23);
          v25 = llroundf(*&v11);
          *(v17 - 3) = -1;
          v26 = v25 & ~(v25 >> 31);
          if (v26 >= 255)
          {
            LOBYTE(v26) = -1;
          }

          *(v17 - 2) = v26;
          v27 = v24 & ~(v24 >> 31);
          if (v27 >= 255)
          {
            LOBYTE(v27) = -1;
          }

          v28 = v22 & ~(v22 >> 31);
          *(v17 - 1) = v27;
          if (v28 >= 255)
          {
            LOBYTE(v28) = -1;
          }

          *v17 = v28;
          v17 += 4;
          ++v15;
        }

        while (Width != v15);
      }

      ++v13;
      BaseAddressOfPlane += BytesPerRowOfPlane;
      v14 += 4 * Width;
    }

    while (v13 != Height);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v30 = CGBitmapContextCreate(v12, Width, Height, 8uLL, 4 * Width, DeviceRGB, 0x2005u);
  Image = CGBitmapContextCreateImage(v30);
  CGContextRelease(v30);
  CGColorSpaceRelease(DeviceRGB);
  free(v12);
  CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
  return Image;
}

- (CGImage)resizedImageFromImage:(CGImage *)a3
{
  Width = CGImageGetWidth(a3);
  v5 = Width * 256.0 / CGImageGetHeight(a3);
  BitsPerComponent = CGImageGetBitsPerComponent(a3);
  BytesPerRow = CGImageGetBytesPerRow(a3);
  ColorSpace = CGImageGetColorSpace(a3);
  BitmapInfo = CGImageGetBitmapInfo(a3);
  v10 = CGBitmapContextCreate(0, 0x100uLL, 0x100uLL, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
  CGContextSetInterpolationQuality(v10, kCGInterpolationHigh);
  CGContextTranslateCTM(v10, 128.0, 128.0);
  CGContextRotateCTM(v10, -1.57079633);
  CGContextTranslateCTM(v10, -128.0, -128.0);
  v11 = (v5 + -256.0) * 0.5;
  v16.origin.x = -floorf(v11);
  v16.origin.y = 0.0;
  v16.size.width = v5;
  v16.size.height = 256.0;
  CGContextDrawImage(v10, v16, a3);
  Image = CGBitmapContextCreateImage(v10);
  v13 = [UIImage imageWithCGImage:Image];
  if (Image)
  {
    CFRelease(Image);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v14 = [v13 CGImage];

  return v14;
}

- (__CVBuffer)newPixelBufferFromCGImage:(CGImage *)a3
{
  Width = CGImageGetWidth(a3);
  pixelBufferOut = 0;
  Height = CGImageGetHeight(a3);
  v6 = CVPixelBufferCreate(kCFAllocatorDefault, Width, Height, 0x42475241u, 0, &pixelBufferOut);
  result = 0;
  if (!v6)
  {
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v11 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);
    v12 = CGImageGetWidth(a3);
    v14.size.height = CGImageGetHeight(a3);
    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    v14.size.width = v12;
    CGContextDrawImage(v11, v14, a3);
    CGColorSpaceRelease(DeviceRGB);
    CGContextRelease(v11);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    return pixelBufferOut;
  }

  return result;
}

- (CGImage)warmupBuffer
{
  v6.width = 256.0;
  v6.height = 256.0;
  UIGraphicsBeginImageContext(v6);
  v2 = +[UIColor whiteColor];
  [v2 setFill];

  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = 256.0;
  v7.size.height = 256.0;
  UIRectFill(v7);
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v4 = [v3 CGImage];

  return v4;
}

- (void)ingestWarmupBuffer
{
  v3 = [(COSWristAttributeVisualDetector *)self newPixelBufferFromCGImage:[(COSWristAttributeVisualDetector *)self warmupBuffer]];
  bbModel = self->_bbModel;
  if (!bbModel)
  {
    v5 = objc_alloc_init(beam_bridge_2022_v2_1);
    v6 = self->_bbModel;
    self->_bbModel = v5;

    bbModel = self->_bbModel;
  }

  v10 = 0;
  v7 = [(beam_bridge_2022_v2_1 *)bbModel predictionFromImage_Placeholder:v3 error:&v10];
  v8 = v10;
  if (v8)
  {
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001876D8();
    }
  }

  else
  {
    v9 = pbb_setup_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = @"BB2022-2";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ ML Warmup Complete: %@", buf, 0x16u);
    }
  }

  CVPixelBufferRelease(v3);
}

- (void)ingestSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v4 = [(COSWristAttributeVisualDetector *)self newImageFromSampleBuffer:a3];
  v5 = [(COSWristAttributeVisualDetector *)self resizedImageFromImage:v4];
  if (v4)
  {
    CGImageRelease(v4);
  }

  v6 = [(COSWristAttributeVisualDetector *)self newPixelBufferFromCGImage:v5];
  bbModel = self->_bbModel;
  if (!bbModel)
  {
    v8 = objc_alloc_init(beam_bridge_2022_v2_1);
    v9 = self->_bbModel;
    self->_bbModel = v8;

    bbModel = self->_bbModel;
  }

  v16 = 0;
  v10 = [(beam_bridge_2022_v2_1 *)bbModel predictionFromImage_Placeholder:v6 error:&v16];
  v11 = v16;
  if (v10)
  {
    v12 = [v10 leaf_leaf_predictions_probabilities];
    v13 = [COSWristModelTranslator translatorWithBeamBridgeMultiArray:v12];

    v14 = [v13 confidences];
    [(NSMutableArray *)self->_confidenceObservations addObject:v14];
  }

  if (v11)
  {
    v15 = pbb_setupflow_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100187758();
    }
  }

  CVPixelBufferRelease(v6);
}

- (void)exportSample:(opaqueCMSampleBuffer *)a3 withClassification:(unint64_t)a4
{
  v6 = [(COSWristAttributeVisualDetector *)self newImageFromSampleBuffer:a3];
  v7 = [(COSWristAttributeVisualDetector *)self resizedImageFromImage:v6];
  if (v6)
  {
    CGImageRelease(v6);
  }

  if (a4 - 6 > 2)
  {
    v8 = @"LeftRight";
  }

  else
  {
    v8 = off_1002694B8[a4 - 6];
  }

  v9 = NSTemporaryDirectory();
  v10 = +[NSDate date];
  [v10 timeIntervalSinceReferenceDate];
  v11 = [NSNumber numberWithDouble:?];
  v12 = [NSString stringWithFormat:@"/%@/images/%@-%@.png", v9, v8, v11];

  v13 = [UIImage imageWithCGImage:v7];
  v14 = UIImagePNGRepresentation(v13);
  v18 = 0;
  LODWORD(v10) = [v14 writeToFile:v12 options:1 error:&v18];
  v15 = v18;

  v16 = pbb_setupflow_log();
  v17 = v16;
  if (v10)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "######### Wrote: (%@) %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v20 = v15;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v12;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "######### Failed! %@ -> (%@) %@", buf, 0x20u);
  }
}

@end