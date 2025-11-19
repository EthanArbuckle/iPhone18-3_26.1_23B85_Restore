@interface UIApplication
+ (void)setSharePlayTogetherObjCViewModel:(id)a3;
@end

@implementation UIApplication

+ (void)setSharePlayTogetherObjCViewModel:(id)a3
{
  v3 = qword_101218AE8;
  qword_101218AE8 = a3;
  v4 = a3;

  v5 = [objc_opt_self() defaultCenter];
  v6 = v5;
  if (qword_10117F208 != -1)
  {
    swift_once();
    v5 = v6;
  }

  [v5 postNotificationName:qword_101218648 object:0];
}

@end