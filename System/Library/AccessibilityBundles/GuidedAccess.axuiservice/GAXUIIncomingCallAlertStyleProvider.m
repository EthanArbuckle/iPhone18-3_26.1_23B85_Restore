@interface GAXUIIncomingCallAlertStyleProvider
+ (id)styleProviderWithIncomingCallType:(int)a3;
- (CGSize)alertBackgroundSizeForType:(unint64_t)a3;
- (UIEdgeInsets)alertContentEdgeInsetsForType:(unint64_t)a3;
- (UIEdgeInsets)alertIconImageEdgeInsetsForType:(unint64_t)a3;
@end

@implementation GAXUIIncomingCallAlertStyleProvider

+ (id)styleProviderWithIncomingCallType:(int)a3
{
  v3 = *&a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___GAXUIIncomingCallAlertStyleProvider;
  v4 = objc_msgSendSuper2(&v6, "styleProvider");
  [v4 setIncomingCallType:v3];

  return v4;
}

- (CGSize)alertBackgroundSizeForType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = GAXUIIncomingCallAlertStyleProvider;
  [(GAXUIIncomingCallAlertStyleProvider *)&v5 alertBackgroundSizeForType:a3];
  v4 = 40.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)alertContentEdgeInsetsForType:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = GAXUIIncomingCallAlertStyleProvider;
  [(GAXUIIncomingCallAlertStyleProvider *)&v8 alertContentEdgeInsetsForType:a3];
  v7 = v6 + -1.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v7;
  return result;
}

- (UIEdgeInsets)alertIconImageEdgeInsetsForType:(unint64_t)a3
{
  v16.receiver = self;
  v16.super_class = GAXUIIncomingCallAlertStyleProvider;
  [(GAXUIIncomingCallAlertStyleProvider *)&v16 alertIconImageEdgeInsetsForType:a3];
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