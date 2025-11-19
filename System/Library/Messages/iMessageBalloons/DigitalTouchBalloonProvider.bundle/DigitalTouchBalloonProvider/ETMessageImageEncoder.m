@interface ETMessageImageEncoder
+ (BOOL)createVideoForMessage:(id)a3 atURL:(id)a4 completionBlock:(id)a5;
+ (BOOL)createVideoWithIntroMessage:(id)a3 playingMessagesArray:(id)a4 sourceVideoURL:(id)a5 destinationURL:(id)a6 completionBlock:(id)a7;
+ (void)_drawImageFromPath:(id)a3 intoContext:(CGContext *)a4;
+ (void)_finishedWritingAtURL:(id)a3 withSuccess:(BOOL)a4 completionBlock:(id)a5;
+ (void)createSingleFrameVideoFromPhotoURL:(id)a3 atTempURL:(id)a4 videoSize:(CGSize)a5 forMessage:(id)a6 withCompletion:(id)a7;
- (CGImage)_createImageForMessage:(id)a3;
- (void)fallbackForData:(id)a3 attachments:(id)a4 inFileURL:(id)a5 completionBlockWithText:(id)a6;
@end

@implementation ETMessageImageEncoder

- (void)fallbackForData:(id)a3 attachments:(id)a4 inFileURL:(id)a5 completionBlockWithText:(id)a6
{
  v10 = a3;
  v11 = a4;
  v57 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = [ETMessage unarchive:v10];
    v14 = [v13 messageType];
    if (v14 == 8)
    {
      if (![v11 count] || (objc_msgSend(v11, "objectAtIndexedSubscript:", 0), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) == 0))
      {
        if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Not generating fallback video. Video/Photo message contains no attachment or non-NSURL object.", buf, 2u);
          }
        }

        (*(v12 + 2))(v12, 0, 0, 0, 0, 1);
        goto LABEL_39;
      }

      v56 = [v11 objectAtIndexedSubscript:0];
      v17 = +[NSFileManager defaultManager];
      v18 = [v56 path];
      v19 = [v17 fileExistsAtPath:v18];

      if ((v19 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = [v56 absoluteString];
            *buf = 138412290;
            v65 = v43;
            _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "IMTranscoderAgent can't generate fallback asset because the attachment URL doesn't yet exist: %@", buf, 0xCu);
          }
        }

        (*(v12 + 2))(v12, 0, 0, 0, 0, 1);
        goto LABEL_38;
      }

      v20 = v13;
      v21 = [v20 identifier];
      v22 = [NSString stringWithFormat:@"%@.mov", v21];
      v55 = [v57 URLByAppendingPathComponent:v22];

      if ([v20 mediaType] == &dword_0 + 2)
      {
        v23 = [v20 introMessage];
        if (v23)
        {
        }

        else
        {
          v45 = [v20 playingMessages];
          v46 = [v45 count];

          if (!v46)
          {
            v52 = [v11 objectAtIndexedSubscript:0];
            v63 = v52;
            v53 = [NSArray arrayWithObjects:&v63 count:1];
            (*(v12 + 2))(v12, v53, 0, 0, 1, 1);

            goto LABEL_37;
          }
        }

        v47 = NSTemporaryDirectory();
        v48 = [v20 identifier];
        v49 = [NSString stringWithFormat:@"Image-%@.mov", v48];
        v50 = [v47 stringByAppendingPathComponent:v49];
        v54 = [NSURL fileURLWithPath:v50];

        [v20 setMediaURL:v54];
        v51 = [v11 objectAtIndexedSubscript:0];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_FEB8;
        v58[3] = &unk_24B50;
        v59 = v20;
        v60 = v55;
        v61 = v12;
        [ETMessageImageEncoder createSingleFrameVideoFromPhotoURL:v51 atTempURL:v54 videoSize:v59 forMessage:v58 withCompletion:480.0, 600.0];
      }

      else
      {
        v44 = [v11 objectAtIndexedSubscript:0];
        [v20 setMediaURL:v44];

        [ETMessageImageEncoder createVideoForMessage:v20 atURL:v55 completionBlock:v12];
      }

LABEL_37:

LABEL_38:
      goto LABEL_39;
    }

    v24 = v14;
    v25 = [v13 identifier];
    v26 = [NSString stringWithFormat:@"%@.png", v25];
    v27 = [v57 URLByAppendingPathComponent:v26];

    if (v24 == 10)
    {
      v30 = @"PrerenderedAnger";
    }

    else
    {
      if (v24 != 2)
      {
        v38 = CGImageDestinationCreateWithURL(v27, kUTTypePNG, 1uLL, 0);
        if (!v38)
        {
          goto LABEL_33;
        }

        v39 = v38;
        v40 = [(ETMessageImageEncoder *)self _createImageForMessage:v13];
        if (!v40)
        {
          CFRelease(v39);
          goto LABEL_33;
        }

        v41 = v40;
        CGImageDestinationAddImage(v39, v40, 0);
        v36 = CGImageDestinationFinalize(v39);
        CFRelease(v39);
        CFRelease(v41);
LABEL_21:
        if (v36)
        {
          v62 = v27;
          v37 = [NSArray arrayWithObjects:&v62 count:1];
          (*(v12 + 2))(v12, v37, 0, 0, 1, 1);

LABEL_39:
          goto LABEL_40;
        }

LABEL_33:
        (*(v12 + 2))(v12, 0, 0, 0, 0, 1);

        goto LABEL_39;
      }

      [v13 heartbreakTime];
      v28 = @"PrerenderedHeartbeat";
      if (v29 != 0.0)
      {
        v28 = @"PrerenderedHeartbreak";
      }

      v30 = v28;
    }

    v32 = [NSBundle bundleForClass:objc_opt_class()];
    v33 = [UIImage imageNamed:v30 inBundle:v32];

    v34 = UIImagePNGRepresentation(v33);
    v35 = [(__CFURL *)v27 path];
    v36 = [v34 writeToFile:v35 atomically:1];

    goto LABEL_21;
  }

LABEL_40:
}

- (CGImage)_createImageForMessage:(id)a3
{
  v4 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  [v4 setRenderingOffscreen:1];
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 messageType];
  if (v8 <= 0xA)
  {
    v9 = ETMessageRenderBufferWidth / v7;
    v10 = ETMessageRenderBufferHeight / v7;
    if (((1 << v8) & 0x605) != 0)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10180;
      v24 = &unk_24B78;
      v27 = v9;
      v28 = v10;
      v25 = v4;
      v26 = &v29;
      v11 = objc_retainBlock(&v21);
      if ([NSThread isMainThread:v21])
      {
        (v11[2])(v11);
      }

      else
      {
        dispatch_sync(&_dispatch_main_q, v11);
      }

      v12 = v25;
      goto LABEL_12;
    }

    if (v8 == 1)
    {
      [v4 setRenderingOffscreen:1];
      v12 = [[ETGLSketchView alloc] initWithFrame:{0.0, 0.0, v9, v10}];
      [v12 setMessageData:v4];
      v19 = [v4 color];
      [v4 setColor:v19];

      [v12 drawFrameBeforeWisp];
      v20 = [v12 createRenderedFrameImage];
      v30[3] = v20;
LABEL_12:

      goto LABEL_13;
    }

    if (v8 == 8)
    {
      v12 = v4;
      v13 = [v12 introMessage];
      v14 = [v12 playingMessages];
      v15 = v14;
      if (v13 || [v14 count] && (objc_msgSend(v15, "objectAtIndex:", 0), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = [(ETMessageImageEncoder *)self _createImageForMessage:v13];
        v30[3] = v16;
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  v17 = v30[3];
  _Block_object_dispose(&v29, 8);

  return v17;
}

+ (void)_finishedWritingAtURL:(id)a3 withSuccess:(BOOL)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      v11 = v7;
      v10 = [NSArray arrayWithObjects:&v11 count:1];
      (v9)[2](v9, v10, 0, 0, 1, 1);
    }

    else
    {
      (*(v8 + 2))(v8, 0, 0, 0, 0, 1);
    }
  }
}

+ (void)_drawImageFromPath:(id)a3 intoContext:(CGContext *)a4
{
  v5 = [UIImage imageWithContentsOfFile:a3];
  Width = CGBitmapContextGetWidth(a4);
  Height = CGBitmapContextGetHeight(a4);
  v8 = *&CGAffineTransformIdentity.c;
  *&v12.a = *&CGAffineTransformIdentity.a;
  *&v12.c = v8;
  *&v12.tx = *&CGAffineTransformIdentity.tx;
  *&transform.a = *&v12.a;
  *&transform.c = v8;
  *&transform.tx = *&v12.tx;
  CGAffineTransformRotate(&v12, &transform, -1.57079633);
  v10 = v12;
  CGAffineTransformTranslate(&transform, &v10, -Height, 0.0);
  v12 = transform;
  CGContextConcatCTM(a4, &transform);
  v9 = [v5 CGImage];
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = Height;
  v13.size.height = Width;
  CGContextDrawImage(a4, v13, v9);
}

+ (void)createSingleFrameVideoFromPhotoURL:(id)a3 atTempURL:(id)a4 videoSize:(CGSize)a5 forMessage:(id)a6 withCompletion:(id)a7
{
  height = a5.height;
  width = a5.width;
  v46 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v63 = 0;
  v43 = v12;
  v15 = [[AVAssetWriter alloc] initWithURL:v12 fileType:AVFileTypeQuickTimeMovie error:&v63];
  v44 = v63;
  v71[0] = AVVideoCodecTypeH264;
  v70[0] = AVVideoCodecKey;
  v70[1] = AVVideoWidthKey;
  v16 = [NSNumber numberWithDouble:width];
  v71[1] = v16;
  v70[2] = AVVideoHeightKey;
  v17 = [NSNumber numberWithDouble:height];
  v71[2] = v17;
  v70[3] = AVVideoScalingModeKey;
  v71[3] = AVVideoScalingModeResizeAspectFill;
  v45 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:4];

  v18 = [[AVAssetWriterInput alloc] initWithMediaType:AVMediaTypeVideo outputSettings:v45];
  [v15 addInput:v18];
  v69[0] = &off_256B0;
  v68[0] = kCVPixelBufferPixelFormatTypeKey;
  v68[1] = kCVPixelBufferBytesPerRowAlignmentKey;
  v19 = [NSNumber numberWithDouble:width * 4.0];
  v69[1] = v19;
  v68[2] = kCVPixelBufferWidthKey;
  v20 = [NSNumber numberWithDouble:width];
  v69[2] = v20;
  v68[3] = kCVPixelBufferHeightKey;
  v21 = [NSNumber numberWithDouble:height];
  v69[3] = v21;
  v68[4] = kCVPixelBufferCGImageCompatibilityKey;
  v68[5] = kCVPixelBufferCGBitmapContextCompatibilityKey;
  v69[4] = &__kCFBooleanTrue;
  v69[5] = &__kCFBooleanTrue;
  v22 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:6];

  v23 = [[AVAssetWriterInputPixelBufferAdaptor alloc] initWithAssetWriterInput:v18 sourcePixelBufferAttributes:v22];
  [v15 startWriting];
  *buf = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [v15 startSessionAtSourceTime:buf];
  pixelBufferOut = 0;
  CVPixelBufferPoolCreatePixelBuffer(0, [v23 pixelBufferPool], &pixelBufferOut);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v26 = CGBitmapContextCreate(BaseAddress, width, height, 8uLL, (width * 4.0), DeviceRGB, 0x2002u);
  if (v46)
  {
    v27 = objc_opt_class();
    v28 = [v46 path];
    [v27 _drawImageFromPath:v28 intoContext:v26];
  }

  else
  {
    v29 = +[UIColor blackColor];
    v30 = v29;
    CGContextSetFillColorWithColor(v26, [v29 CGColor]);

    v72.origin.x = 0.0;
    v72.origin.y = 0.0;
    v72.size.width = width;
    v72.size.height = height;
    CGContextFillRect(v26, v72);
  }

  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v26);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  if (pixelBufferOut)
  {
    goto LABEL_5;
  }

  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = [v13 identifier];
      *buf = 138412290;
      *&buf[4] = v39;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Pixel buffer couldn't be created for message id: %@! Please file a bug.", buf, 0xCu);
    }
  }

  if (!v14)
  {
LABEL_5:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v31 = [v13 playingMessages];
      v32 = [v31 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v32)
      {
        v33 = *v59;
        v34 = 0.0;
        do
        {
          for (i = 0; i != v32; i = i + 1)
          {
            if (*v59 != v33)
            {
              objc_enumerationMutation(v31);
            }

            [*(*(&v58 + 1) + 8 * i) messageDuration];
            v34 = v34 + v36;
          }

          v32 = [v31 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v32);
      }

      else
      {
        v34 = 0.0;
      }
    }

    else
    {
      [v13 messageDuration];
      v34 = v37;
    }

    v40 = v34 + 0.5;
    if (v34 + 0.5 == 0.0)
    {
      if (v14)
      {
        v14[2](v14, v40);
        goto LABEL_27;
      }

      v40 = 10.0;
    }

    v41 = (v40 * 60.0);
    *buf = 0;
    *&buf[8] = buf;
    epoch = 0x2020000000;
    v66 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2020000000;
    v57 = 0;
    v42 = dispatch_queue_create("com.apple.DigitalTouchFallbackVideoWriter", 0);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10C10;
    v47[3] = &unk_24BC8;
    v52 = v56;
    v48 = v18;
    v53 = buf;
    v54 = v41;
    v49 = v23;
    v55 = pixelBufferOut;
    v50 = v15;
    v51 = v14;
    [v48 requestMediaDataWhenReadyOnQueue:v42 usingBlock:v47];

    _Block_object_dispose(v56, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    (v14[2])(v14);
  }

LABEL_27:
}

+ (BOOL)createVideoForMessage:(id)a3 atURL:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 introMessage];
  v12 = [v10 playingMessages];
  v13 = [v10 mediaURL];

  LOBYTE(v10) = [a1 createVideoWithIntroMessage:v11 playingMessagesArray:v12 sourceVideoURL:v13 destinationURL:v9 completionBlock:v8];
  return v10;
}

+ (BOOL)createVideoWithIntroMessage:(id)a3 playingMessagesArray:(id)a4 sourceVideoURL:(id)a5 destinationURL:(id)a6 completionBlock:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if (a5)
  {
    v15 = [AVAsset assetWithURL:a5];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 tracksWithMediaType:AVMediaTypeVideo];
      v18 = [v17 lastObject];

      if (v18)
      {
        v19 = [[AVAssetExportSession alloc] initWithAsset:v16 presetName:AVAssetExportPresetMediumQuality];
        if (v19)
        {
          v20 = [AVMutableVideoComposition videoCompositionWithPropertiesOfAsset:v16];
          LOBYTE(a5) = v20 != 0;
          if (v20)
          {
            [v20 setCustomVideoCompositorClass:objc_opt_class()];
            [v19 setVideoComposition:v20];
            [v19 setOutputFileType:AVFileTypeQuickTimeMovie];
            [v19 setOutputURL:v13];
            [v18 naturalSize];
            v23 = v21;
            v24 = v22;
            v45 = v18;
            v43 = v20;
            if (v11)
            {
              v25 = [[ETMessageFrameRenderer alloc] initWithMessage:v11 videoFrame:0.0, 0.0, v21, v22];
              v42 = [(ETMessageFrameRenderer *)v25 createImageForTime:10000.0];
            }

            else
            {
              v42 = 0;
            }

            v44 = v19;
            v26 = [v19 customVideoCompositor];
            v27 = +[NSMutableArray array];
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v28 = v12;
            v29 = [v28 countByEnumeratingWithState:&v51 objects:v55 count:16];
            if (v29)
            {
              v30 = v29;
              v40 = v14;
              v41 = v11;
              v31 = *v52;
              while (1)
              {
                v32 = 0;
                do
                {
                  if (*v52 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v51 + 1) + 8 * v32);
                  v34 = [v33 messageType];
                  if (v34 <= 0xA)
                  {
                    if (((1 << v34) & 0x605) != 0)
                    {
                      v35 = [[ETMessageFrameRenderer alloc] initWithMessage:v33 videoFrame:0.0, 0.0, v23, v24];
                      [v27 addObject:v35];
LABEL_22:

                      goto LABEL_23;
                    }

                    if (v34 == 1)
                    {
                      v35 = [[ETMessageFrameRenderer alloc] initWithMessage:v33 videoFrame:0.0, 0.0, v23, v24];
                      [v26 setSketchMessageRenderer:v35];
                      goto LABEL_22;
                    }
                  }

LABEL_23:
                  v32 = v32 + 1;
                }

                while (v30 != v32);
                v36 = [v28 countByEnumeratingWithState:&v51 objects:v55 count:16];
                v30 = v36;
                if (!v36)
                {
                  v11 = v41;
                  v14 = v40;
                  break;
                }
              }
            }

            v18 = v45;
            [v26 setVideoTrackID:{objc_msgSend(v45, "trackID")}];
            [v45 preferredTransform];
            [v26 setVideoTransform:v50];
            [v26 setVideoRect:{0.0, 0.0, v23, v24}];
            [v26 setIntroImage:v42];
            if ([v27 count])
            {
              v37 = v27;
            }

            else
            {
              v37 = 0;
            }

            [v26 setSceneMessageRenderers:v37];
            v46[0] = _NSConcreteStackBlock;
            v46[1] = 3221225472;
            v46[2] = sub_11390;
            v46[3] = &unk_24BF0;
            v47 = v44;
            v48 = v26;
            v49 = v14;
            v38 = v26;
            [v47 exportAsynchronouslyWithCompletionHandler:v46];

            v19 = v44;
            LOBYTE(a5) = 1;
            v20 = v43;
          }

          else
          {
            [ETMessageImageEncoder _finishedWritingAtURL:v13 withSuccess:0 completionBlock:v14];
          }
        }

        else
        {
          [ETMessageImageEncoder _finishedWritingAtURL:v13 withSuccess:0 completionBlock:v14];
          LOBYTE(a5) = 0;
        }
      }

      else
      {
        [ETMessageImageEncoder _finishedWritingAtURL:v13 withSuccess:0 completionBlock:v14];
        LOBYTE(a5) = 0;
      }
    }

    else
    {
      [ETMessageImageEncoder _finishedWritingAtURL:v13 withSuccess:0 completionBlock:v14];
      LOBYTE(a5) = 0;
    }
  }

  else
  {
    [ETMessageImageEncoder _finishedWritingAtURL:v13 withSuccess:0 completionBlock:v14];
  }

  return a5;
}

@end