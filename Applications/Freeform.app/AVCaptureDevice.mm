@interface AVCaptureDevice
+ (void)crl_checkAuthorizationForMediaType:(id)type completion:(id)completion;
@end

@implementation AVCaptureDevice

+ (void)crl_checkAuthorizationForMediaType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v8 = [self authorizationStatusForMediaType:typeCopy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010BA08;
  v13[3] = &unk_10183D168;
  v9 = completionCopy;
  v14 = v9;
  v10 = objc_retainBlock(v13);
  v11 = v10;
  if ((v8 - 1) < 2)
  {
    v12 = v10[2];
    goto LABEL_6;
  }

  if (!v8)
  {
    [AVCaptureDevice requestAccessForMediaType:typeCopy completionHandler:v10];
    goto LABEL_8;
  }

  if (v8 == 3)
  {
    v12 = v10[2];
LABEL_6:
    v12();
  }

LABEL_8:
}

@end