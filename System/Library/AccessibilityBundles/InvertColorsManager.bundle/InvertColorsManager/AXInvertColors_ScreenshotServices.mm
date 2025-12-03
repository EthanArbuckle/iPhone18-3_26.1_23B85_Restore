@interface AXInvertColors_ScreenshotServices
+ (void)installCategories:(id)categories;
@end

@implementation AXInvertColors_ScreenshotServices

+ (void)installCategories:(id)categories
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6C60;
  block[3] = &unk_44540;
  categoriesCopy = categories;
  v3 = qword_83508;
  v4 = categoriesCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_83508, block);
  }
}

@end