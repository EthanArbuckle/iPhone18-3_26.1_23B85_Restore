@interface GAXUIIncomingCallAlertStyleProvider
+ (id)styleProviderWithIncomingCallType:(int)type;
- (CGSize)alertBackgroundSizeForType:(unint64_t)type;
- (UIEdgeInsets)alertContentEdgeInsetsForType:(unint64_t)type;
- (UIEdgeInsets)alertIconImageEdgeInsetsForType:(unint64_t)type;
@end

@implementation GAXUIIncomingCallAlertStyleProvider

+ (id)styleProviderWithIncomingCallType:(int)type
{
  v3 = *&type;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___GAXUIIncomingCallAlertStyleProvider;
  v4 = objc_msgSendSuper2(&v6, "styleProvider");
  [v4 setIncomingCallType:v3];

  return v4;
}

- (CGSize)alertBackgroundSizeForType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = GAXUIIncomingCallAlertStyleProvider;
  [(GAXUIIncomingCallAlertStyleProvider *)&v5 alertBackgroundSizeForType:type];
  v4 = 40.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)alertContentEdgeInsetsForType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = GAXUIIncomingCallAlertStyleProvider;
  [(GAXUIIncomingCallAlertStyleProvider *)&v8 alertContentEdgeInsetsForType:type];
  v7 = v6 + -1.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v7;
  return result;
}

- (UIEdgeInsets)alertIconImageEdgeInsetsForType:(unint64_t)type
{
  v16.receiver = self;
  v16.super_class = GAXUIIncomingCallAlertStyleProvider;
  [(GAXUIIncomingCallAlertStyleProvider *)&v16 alertIconImageEdgeInsetsForType:type];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(GAXUIIncomingCallAlertStyleProvider *)self incomingCallType]== 1)
  {
    v12 = v11 + -1.0;
  }

  else
  {
    v12 = v11;
  }

  v13 = v5;
  v14 = v7;
  v15 = v9;
  result.right = v12;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

@end