@interface AVCaptureDevice
+ (void)crl_checkAuthorizationForMediaType:(id)a3 completion:(id)a4;
@end

@implementation AVCaptureDevice

+ (void)crl_checkAuthorizationForMediaType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 authorizationStatusForMediaType:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010BA08;
  v13[3] = &unk_10183D168;
  v9 = v7;
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
    [AVCaptureDevice requestAccessForMediaType:v6 completionHandler:v10];
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