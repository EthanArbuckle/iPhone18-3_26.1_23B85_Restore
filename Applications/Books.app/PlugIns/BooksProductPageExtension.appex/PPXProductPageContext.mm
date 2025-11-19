@interface PPXProductPageContext
+ (PPXProductPageContext)sharedContext;
@end

@implementation PPXProductPageContext

+ (PPXProductPageContext)sharedContext
{
  if (qword_100038798 != -1)
  {
    sub_10001F124();
  }

  v3 = qword_100038790;

  return v3;
}

@end