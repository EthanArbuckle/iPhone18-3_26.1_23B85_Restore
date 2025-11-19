@interface AXInvertColors_ScreenshotServices
+ (void)installCategories:(id)a3;
@end

@implementation AXInvertColors_ScreenshotServices

+ (void)installCategories:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6C60;
  block[3] = &unk_44540;
  v6 = a3;
  v3 = qword_83508;
  v4 = v6;
  if (v3 != -1)
  {
    dispatch_once(&qword_83508, block);
  }
}

@end