@interface NSBundle
+ (id)internalExtrasBundle;
@end

@implementation NSBundle

+ (id)internalExtrasBundle
{
  if (qword_100AD17B0 != -1)
  {
    swift_once();
  }

  v3 = qword_100B23440;

  return v3;
}

@end