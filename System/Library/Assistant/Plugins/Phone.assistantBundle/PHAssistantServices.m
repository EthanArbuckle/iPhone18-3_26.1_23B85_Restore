@interface PHAssistantServices
+ (CNContactStore)sharedContactStore;
@end

@implementation PHAssistantServices

+ (CNContactStore)sharedContactStore
{
  if (qword_27DE0E8C8 != -1)
  {
    sub_233527728();
  }

  v3 = qword_27DE0E8C0;

  return v3;
}

@end