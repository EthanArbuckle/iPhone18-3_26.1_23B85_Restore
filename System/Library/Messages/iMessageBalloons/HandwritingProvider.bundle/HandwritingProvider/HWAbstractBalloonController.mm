@interface HWAbstractBalloonController
+ (id)_sharedRenderQueue;
+ (void)_writeThumbnailOfHandwriting:(id)handwriting atSize:(CGSize)size useHighFidelityInk:(BOOL)ink darkModeOverride:(id)override toDiskWithCompletionHandler:(id)handler;
@end

@implementation HWAbstractBalloonController

+ (id)_sharedRenderQueue
{
  if (qword_322D0 != -1)
  {
    sub_139F0();
  }

  v3 = qword_322C0;

  return v3;
}

+ (void)_writeThumbnailOfHandwriting:(id)handwriting atSize:(CGSize)size useHighFidelityInk:(BOOL)ink darkModeOverride:(id)override toDiskWithCompletionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handwritingCopy = handwriting;
  overrideCopy = override;
  handlerCopy = handler;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_11F64;
  v57 = sub_11F74;
  v58 = 0;
  v15 = DKIsDarkMode();
  if (overrideCopy)
  {
    bOOLValue = [overrideCopy BOOLValue];
    [UIColor forcedInkColor:bOOLValue];
  }

  else
  {
    LODWORD(bOOLValue) = v15;
    +[UIColor inkColor];
  }
  v17 = ;
  uuid = [handwritingCopy uuid];
  uUIDString = [uuid UUIDString];
  v20 = [uUIDString length];

  if (v20)
  {
    uuid2 = [handwritingCopy uuid];
    uUIDString2 = [uuid2 UUIDString];
    v23 = uUIDString2;
    v24 = @"light";
    if (bOOLValue)
    {
      v24 = @"dark";
    }

    v25 = [NSString stringWithFormat:@"hw_%@_%d_%d_%@.png", uUIDString2, width, height, v24];

    v26 = NSTemporaryDirectory();
    v27 = [v26 stringByAppendingPathComponent:v25];

    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_11F64;
    v51 = sub_11F74;
    v52 = [NSURL fileURLWithPath:v27];
    v28 = +[NSFileManager defaultManager];
    if ([v28 fileExistsAtPath:v27])
    {
      objc_storeStrong(v54 + 5, v48[5]);
      if (!handlerCopy)
      {
LABEL_13:

        _Block_object_dispose(&v47, 8);
        goto LABEL_14;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_11F7C;
      block[3] = &unk_28A38;
      v45 = handlerCopy;
      v46 = &v53;
      dispatch_async(&_dispatch_main_q, block);
      v29 = v45;
    }

    else
    {
      v29 = +[HWAbstractBalloonController _sharedRenderQueue];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_11F98;
      v33[3] = &unk_28A60;
      v34 = handwritingCopy;
      v35 = v27;
      v42 = bOOLValue;
      v40 = width;
      v41 = height;
      inkCopy = ink;
      v36 = v17;
      v38 = &v47;
      v39 = &v53;
      v37 = handlerCopy;
      [v29 addOperationWithBlock:v33];
    }

    goto LABEL_13;
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_12178;
  v30[3] = &unk_28A38;
  v31 = handlerCopy;
  v32 = &v53;
  dispatch_async(&_dispatch_main_q, v30);
  v25 = v31;
LABEL_14:

  _Block_object_dispose(&v53, 8);
}

@end