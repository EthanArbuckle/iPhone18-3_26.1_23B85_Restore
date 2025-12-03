@interface NPTOBridgeInterfaceTheme
+ (id)sharedInstance;
+ (void)configure;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)configureAlbumListStackViewPhonePhotoDecoration:(id)decoration;
@end

@implementation NPTOBridgeInterfaceTheme

+ (id)sharedInstance
{
  if (qword_12F70 != -1)
  {
    dispatch_once(&qword_12F70, &stru_C488);
  }

  v3 = qword_12F68;

  return v3;
}

+ (void)configure
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3B18;
  block[3] = &unk_C4A8;
  block[4] = self;
  if (qword_12F60 != -1)
  {
    dispatch_once(&qword_12F60, block);
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (objc_opt_respondsToSelector())
  {
    v7.receiver = self;
    v7.super_class = NPTOBridgeInterfaceTheme;
    v5 = [(NPTOBridgeInterfaceTheme *)&v7 methodSignatureForSelector:selector];
  }

  else
  {
    v5 = [qword_12F58 methodSignatureForSelector:selector];
  }

  return v5;
}

- (void)configureAlbumListStackViewPhonePhotoDecoration:(id)decoration
{
  v3 = qword_12F58;
  decorationCopy = decoration;
  [v3 configureAlbumListStackViewPhonePhotoDecoration:decorationCopy];
  v5 = BPSSeparatorColor();
  [decorationCopy setBorderColor:v5];
}

@end