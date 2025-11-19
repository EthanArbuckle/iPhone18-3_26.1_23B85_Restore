@interface CBLocalServiceInterface
+ (id)clientInterface;
+ (id)serverInterface;
@end

@implementation CBLocalServiceInterface

+ (id)clientInterface
{
  if (qword_100092378 != -1)
  {
    sub_100047218();
  }

  v3 = qword_100092380;

  return v3;
}

+ (id)serverInterface
{
  if (qword_100092388 != -1)
  {
    sub_10004722C();
  }

  v3 = qword_100092390;

  return v3;
}

@end