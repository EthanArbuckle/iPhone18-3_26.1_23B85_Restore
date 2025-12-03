@interface COSTheftAndLossModalBuilderHelper
+ (id)createTnLDisclaimerViewControllerWithConfirmActionHandler:(id)handler cancelActionHandler:(id)actionHandler;
- (COSTheftAndLossModalBuilderHelper)init;
@end

@implementation COSTheftAndLossModalBuilderHelper

+ (id)createTnLDisclaimerViewControllerWithConfirmActionHandler:(id)handler cancelActionHandler:(id)actionHandler
{
  v5 = _Block_copy(handler);
  v6 = _Block_copy(actionHandler);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v6 = sub_10013E6A0;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10013E308(sub_10013E5C4, v7, v6, v8);
  sub_10000D74C(v6);

  return v9;
}

- (COSTheftAndLossModalBuilderHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TheftAndLossModalBuilderHelper();
  return [(COSTheftAndLossModalBuilderHelper *)&v3 init];
}

@end