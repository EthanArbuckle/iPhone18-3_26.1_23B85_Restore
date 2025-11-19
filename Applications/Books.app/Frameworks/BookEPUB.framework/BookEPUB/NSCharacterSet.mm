@interface NSCharacterSet
+ (id)be_allowedURLPathCharacterSet;
@end

@implementation NSCharacterSet

+ (id)be_allowedURLPathCharacterSet
{
  if (qword_36AB68 != -1)
  {
    sub_263A84();
  }

  v3 = qword_36AB60;

  return v3;
}

@end