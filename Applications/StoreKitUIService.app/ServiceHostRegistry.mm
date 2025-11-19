@interface ServiceHostRegistry
+ (id)sharedInstance;
@end

@implementation ServiceHostRegistry

+ (id)sharedInstance
{
  if (qword_100069580 != -1)
  {
    sub_10002C560();
  }

  v3 = qword_100069578;

  return v3;
}

@end