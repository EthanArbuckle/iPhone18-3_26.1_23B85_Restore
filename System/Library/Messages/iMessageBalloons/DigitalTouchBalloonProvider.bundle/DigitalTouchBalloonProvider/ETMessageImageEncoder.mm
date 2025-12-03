@interface ETMessageImageEncoder
+ (BOOL)createVideoForMessage:(id)message atURL:(id)l completionBlock:(id)block;
+ (BOOL)createVideoWithIntroMessage:(id)message playingMessagesArray:(id)array sourceVideoURL:(id)l destinationURL:(id)rL completionBlock:(id)block;
+ (void)_drawImageFromPath:(id)path intoContext:(CGContext *)context;
+ (void)_finishedWritingAtURL:(id)l withSuccess:(BOOL)success completionBlock:(id)block;
+ (void)createSingleFrameVideoFromPhotoURL:(id)l atTempURL:(id)rL videoSize:(CGSize)size forMessage:(id)message withCompletion:(id)completion;
- (CGImage)_createImageForMessage:(id)message;
- (void)fallbackForData:(id)data attachments:(id)attachments inFileURL:(id)l completionBlockWithText:(id)text;
@end

@implementation ETMessageImageEncoder

- (void)fallbackForData:(id)data attachments:(id)attachments inFileURL:(id)l completionBlockWithText:(id)text
{
  dataCopy = data;
  attachmentsCopy = attachments;
  lCopy = l;
  textCopy = text;
  if (textCopy)
  {
    v13 = [ETMessage unarchive:dataCopy];
    messageType = [v13 messageType];
    if (messageType == 8)
    {
      if (![attachmentsCopy count] || (objc_msgSend(attachmentsCopy, "objectAtIndexedSubscript:", 0), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) == 0))
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

        (*(textCopy + 2))(textCopy, 0, 0, 0, 0, 1);
        goto LABEL_39;
      }

      v56 = [attachmentsCopy objectAtIndexedSubscript:0];
      v17 = +[NSFileManager defaultManager];
      path = [v56 path];
      v19 = [v17 fileExistsAtPath:path];

      if ((v19 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            absoluteString = [v56 absoluteString];
            *buf = 138412290;
            v65 = absoluteString;
            _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "IMTranscoderAgent can't generate fallback asset because the attachment URL doesn't yet exist: %@", buf, 0xCu);
          }
        }

        (*(textCopy + 2))(textCopy, 0, 0, 0, 0, 1);
        goto LABEL_38;
      }

      v20 = v13;
      identifier = [v20 identifier];
      v22 = [NSString stringWithFormat:@"%@.mov", identifier];
      v55 = [lCopy URLByAppendingPathComponent:v22];

      if ([v20 mediaType] == &dword_0 + 2)
      {
        introMessage = [v20 introMessage];
        if (introMessage)
        {
        }

        else
        {
          playingMessages = [v20 playingMessages];
          v46 = [playingMessages count];

          if (!v46)
          {
            v52 = [attachmentsCopy objectAtIndexedSubscript:0];
            v63 = v52;
            v53 = [NSArray arrayWithObjects:&v63 count:1];
            (*(textCopy + 2))(textCopy, v53, 0, 0, 1, 1);

            goto LABEL_37;
          }
        }

        v47 = NSTemporaryDirectory();
        identifier2 = [v20 identifier];
        v49 = [NSString stringWithFormat:@"Image-%@.mov", identifier2];
        v50 = [v47 stringByAppendingPathComponent:v49];
        v54 = [NSURL fileURLWithPath:v50];

        [v20 setMediaURL:v54];
        v51 = [attachmentsCopy objectAtIndexedSubscript:0];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_FEB8;
        v58[3] = &unk_24B50;
        v59 = v20;
        v60 = v55;
        v61 = textCopy;
        [ETMessageImageEncoder createSingleFrameVideoFromPhotoURL:v51 atTempURL:v54 videoSize:v59 forMessage:v58 withCompletion:480.0, 600.0];
      }

      else
      {
        v44 = [attachmentsCopy objectAtIndexedSubscript:0];
        [v20 setMediaURL:v44];

        [ETMessageImageEncoder createVideoForMessage:v20 atURL:v55 completionBlock:textCopy];
      }

LABEL_37:

LABEL_38:
      goto LABEL_39;
    }

    v24 = messageType;
    identifier3 = [v13 identifier];
    v26 = [NSString stringWithFormat:@"%@.png", identifier3];
    v27 = [lCopy URLByAppendingPathComponent:v26];

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
          (*(textCopy + 2))(textCopy, v37, 0, 0, 1, 1);

LABEL_39:
          goto LABEL_40;
        }

LABEL_33:
        (*(textCopy + 2))(textCopy, 0, 0, 0, 0, 1);

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
    path2 = [(__CFURL *)v27 path];
    v36 = [v34 writeToFile:path2 atomically:1];

    goto LABEL_21;
  }

LABEL_40:
}

- (CGImage)_createImageForMessage:(id)message
{
  messageCopy = message;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  [messageCopy setRenderingOffscreen:1];
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6;

  messageType = [messageCopy messageType];
  if (messageType <= 0xA)
  {
    v9 = ETMessageRenderBufferWidth / v7;
    v10 = ETMessageRenderBufferHeight / v7;
    if (((1 << messageType) & 0x605) != 0)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10180;
      v24 = &unk_24B78;
      v27 = v9;
      v28 = v10;
      v25 = messageCopy;
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

    if (messageType == 1)
    {
      [messageCopy setRenderingOffscreen:1];
      v12 = [[ETGLSketchView alloc] initWithFrame:{0.0, 0.0, v9, v10}];
      [v12 setMessageData:messageCopy];
      color = [messageCopy color];
      [messageCopy setColor:color];

      [v12 drawFrameBeforeWisp];
      createRenderedFrameImage = [v12 createRenderedFrameImage];
      v30[3] = createRenderedFrameImage;
LABEL_12:

      goto LABEL_13;
    }

    if (messageType == 8)
    {
      v12 = messageCopy;
      introMessage = [v12 introMessage];
      playingMessages = [v12 playingMessages];
      v15 = playingMessages;
      if (introMessage || [playingMessages count] && (objc_msgSend(v15, "objectAtIndex:", 0), (introMessage = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = [(ETMessageImageEncoder *)self _createImageForMessage:introMessage];
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

+ (void)_finishedWritingAtURL:(id)l withSuccess:(BOOL)success completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy)
  {
    if (success)
    {
      v11 = lCopy;
      v10 = [NSArray arrayWithObjects:&v11 count:1];
      (v9)[2](v9, v10, 0, 0, 1, 1);
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0, 0, 0, 0, 1);
    }
  }
}

+ (void)_drawImageFromPath:(id)path intoContext:(CGContext *)context
{
  v5 = [UIImage imageWithContentsOfFile:path];
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
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
  CGContextConcatCTM(context, &transform);
  cGImage = [v5 CGImage];
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = Height;
  v13.size.height = Width;
  CGContextDrawImage(context, v13, cGImage);
}

+ (void)createSingleFrameVideoFromPhotoURL:(id)l atTempURL:(id)rL videoSize:(CGSize)size forMessage:(id)message withCompletion:(id)completion
{
  height = size.height;
  width = size.width;
  lCopy = l;
  rLCopy = rL;
  messageCopy = message;
  completionCopy = completion;
  v63 = 0;
  v43 = rLCopy;
  v15 = [[AVAssetWriter alloc] initWithURL:rLCopy fileType:AVFileTypeQuickTimeMovie error:&v63];
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
  if (lCopy)
  {
    v27 = objc_opt_class();
    path = [lCopy path];
    [v27 _drawImageFromPath:path intoContext:v26];
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
      identifier = [messageCopy identifier];
      *buf = 138412290;
      *&buf[4] = identifier;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Pixel buffer couldn't be created for message id: %@! Please file a bug.", buf, 0xCu);
    }
  }

  if (!completionCopy)
  {
LABEL_5:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      playingMessages = [messageCopy playingMessages];
      v32 = [playingMessages countByEnumeratingWithState:&v58 objects:v67 count:16];
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
              objc_enumerationMutation(playingMessages);
            }

            [*(*(&v58 + 1) + 8 * i) messageDuration];
            v34 = v34 + v36;
          }

          v32 = [playingMessages countByEnumeratingWithState:&v58 objects:v67 count:16];
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
      [messageCopy messageDuration];
      v34 = v37;
    }

    v40 = v34 + 0.5;
    if (v34 + 0.5 == 0.0)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v40);
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
    v51 = completionCopy;
    [v48 requestMediaDataWhenReadyOnQueue:v42 usingBlock:v47];

    _Block_object_dispose(v56, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    (completionCopy[2])(completionCopy);
  }

LABEL_27:
}

+ (BOOL)createVideoForMessage:(id)message atURL:(id)l completionBlock:(id)block
{
  blockCopy = block;
  lCopy = l;
  messageCopy = message;
  introMessage = [messageCopy introMessage];
  playingMessages = [messageCopy playingMessages];
  mediaURL = [messageCopy mediaURL];

  LOBYTE(messageCopy) = [self createVideoWithIntroMessage:introMessage playingMessagesArray:playingMessages sourceVideoURL:mediaURL destinationURL:lCopy completionBlock:blockCopy];
  return messageCopy;
}

+ (BOOL)createVideoWithIntroMessage:(id)message playingMessagesArray:(id)array sourceVideoURL:(id)l destinationURL:(id)rL completionBlock:(id)block
{
  messageCopy = message;
  arrayCopy = array;
  rLCopy = rL;
  blockCopy = block;
  if (l)
  {
    v15 = [AVAsset assetWithURL:l];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 tracksWithMediaType:AVMediaTypeVideo];
      lastObject = [v17 lastObject];

      if (lastObject)
      {
        v19 = [[AVAssetExportSession alloc] initWithAsset:v16 presetName:AVAssetExportPresetMediumQuality];
        if (v19)
        {
          v20 = [AVMutableVideoComposition videoCompositionWithPropertiesOfAsset:v16];
          LOBYTE(l) = v20 != 0;
          if (v20)
          {
            [v20 setCustomVideoCompositorClass:objc_opt_class()];
            [v19 setVideoComposition:v20];
            [v19 setOutputFileType:AVFileTypeQuickTimeMovie];
            [v19 setOutputURL:rLCopy];
            [lastObject naturalSize];
            v23 = v21;
            v24 = v22;
            v45 = lastObject;
            v43 = v20;
            if (messageCopy)
            {
              v25 = [[ETMessageFrameRenderer alloc] initWithMessage:messageCopy videoFrame:0.0, 0.0, v21, v22];
              v42 = [(ETMessageFrameRenderer *)v25 createImageForTime:10000.0];
            }

            else
            {
              v42 = 0;
            }

            v44 = v19;
            customVideoCompositor = [v19 customVideoCompositor];
            v27 = +[NSMutableArray array];
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v28 = arrayCopy;
            v29 = [v28 countByEnumeratingWithState:&v51 objects:v55 count:16];
            if (v29)
            {
              v30 = v29;
              v40 = blockCopy;
              v41 = messageCopy;
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
                  messageType = [v33 messageType];
                  if (messageType <= 0xA)
                  {
                    if (((1 << messageType) & 0x605) != 0)
                    {
                      v35 = [[ETMessageFrameRenderer alloc] initWithMessage:v33 videoFrame:0.0, 0.0, v23, v24];
                      [v27 addObject:v35];
LABEL_22:

                      goto LABEL_23;
                    }

                    if (messageType == 1)
                    {
                      v35 = [[ETMessageFrameRenderer alloc] initWithMessage:v33 videoFrame:0.0, 0.0, v23, v24];
                      [customVideoCompositor setSketchMessageRenderer:v35];
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
                  messageCopy = v41;
                  blockCopy = v40;
                  break;
                }
              }
            }

            lastObject = v45;
            [customVideoCompositor setVideoTrackID:{objc_msgSend(v45, "trackID")}];
            [v45 preferredTransform];
            [customVideoCompositor setVideoTransform:v50];
            [customVideoCompositor setVideoRect:{0.0, 0.0, v23, v24}];
            [customVideoCompositor setIntroImage:v42];
            if ([v27 count])
            {
              v37 = v27;
            }

            else
            {
              v37 = 0;
            }

            [customVideoCompositor setSceneMessageRenderers:v37];
            v46[0] = _NSConcreteStackBlock;
            v46[1] = 3221225472;
            v46[2] = sub_11390;
            v46[3] = &unk_24BF0;
            v47 = v44;
            v48 = customVideoCompositor;
            v49 = blockCopy;
            v38 = customVideoCompositor;
            [v47 exportAsynchronouslyWithCompletionHandler:v46];

            v19 = v44;
            LOBYTE(l) = 1;
            v20 = v43;
          }

          else
          {
            [ETMessageImageEncoder _finishedWritingAtURL:rLCopy withSuccess:0 completionBlock:blockCopy];
          }
        }

        else
        {
          [ETMessageImageEncoder _finishedWritingAtURL:rLCopy withSuccess:0 completionBlock:blockCopy];
          LOBYTE(l) = 0;
        }
      }

      else
      {
        [ETMessageImageEncoder _finishedWritingAtURL:rLCopy withSuccess:0 completionBlock:blockCopy];
        LOBYTE(l) = 0;
      }
    }

    else
    {
      [ETMessageImageEncoder _finishedWritingAtURL:rLCopy withSuccess:0 completionBlock:blockCopy];
      LOBYTE(l) = 0;
    }
  }

  else
  {
    [ETMessageImageEncoder _finishedWritingAtURL:rLCopy withSuccess:0 completionBlock:blockCopy];
  }

  return l;
}

@end