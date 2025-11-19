@interface UIStoryboard
+ (id)fbaMainStoryboard;
@end

@implementation UIStoryboard

+ (id)fbaMainStoryboard
{
  if (qword_100108E10 != -1)
  {
    swift_once();
  }

  v3 = qword_10010CEE0;

  return v3;
}

@end