@interface AXInvertColors_ScreenshotServicesService
+ (void)installCategories:(id)a3;
@end

@implementation AXInvertColors_ScreenshotServicesService

+ (void)installCategories:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1738;
  block[3] = &unk_44540;
  v6 = a3;
  v3 = qword_834D0;
  v4 = v6;
  if (v3 != -1)
  {
    dispatch_once(&qword_834D0, block);
  }
}

@end