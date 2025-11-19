@interface MessageListCellHelperMobileMailProxy
+ (id)addressListFormatter;
+ (id)sharedApplicationProxy;
- (BOOL)isMessageListCellObject:(id)a3;
@end

@implementation MessageListCellHelperMobileMailProxy

+ (id)sharedApplicationProxy
{
  if (qword_1006DD2B0 != -1)
  {
    sub_100020B08();
  }

  v3 = qword_1006DD2A8;

  return v3;
}

+ (id)addressListFormatter
{
  if (qword_1006DD2A0 != -1)
  {
    sub_100020CB8();
  }

  v3 = qword_1006DD298;

  return v3;
}

- (BOOL)isMessageListCellObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end