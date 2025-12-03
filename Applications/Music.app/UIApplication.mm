@interface UIApplication
+ (void)setSharePlayTogetherObjCViewModel:(id)model;
@end

@implementation UIApplication

+ (void)setSharePlayTogetherObjCViewModel:(id)model
{
  v3 = qword_101218AE8;
  qword_101218AE8 = model;
  modelCopy = model;

  defaultCenter = [objc_opt_self() defaultCenter];
  v6 = defaultCenter;
  if (qword_10117F208 != -1)
  {
    swift_once();
    defaultCenter = v6;
  }

  [defaultCenter postNotificationName:qword_101218648 object:0];
}

@end