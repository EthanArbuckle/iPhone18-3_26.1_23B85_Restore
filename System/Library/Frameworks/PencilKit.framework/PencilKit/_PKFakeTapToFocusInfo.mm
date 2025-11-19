@interface _PKFakeTapToFocusInfo
+ (void)controlInfoWithInteractionValue:(uint64_t)a1;
+ (void)controlInfoWithInteractionValue:(uint64_t)a1 targetValue:(uint64_t)a2 actionValue:(uint64_t)a3 controlEvents:(uint64_t)a4 textInputValue:(uint64_t)a5;
+ (void)tapGestureInfoWithInteractionValue:(uint64_t)a3 firstSubviewValue:(uint64_t)a4 textInputValue:;
+ (void)textFieldInfoWithInteractionValue:(uint64_t)a1;
@end

@implementation _PKFakeTapToFocusInfo

+ (void)textFieldInfoWithInteractionValue:(uint64_t)a1
{
  objc_opt_self();
  v3 = objc_alloc_init(objc_opt_class());
  v3[2] = 0;
  v3[3] = a2;

  return v3;
}

+ (void)tapGestureInfoWithInteractionValue:(uint64_t)a3 firstSubviewValue:(uint64_t)a4 textInputValue:
{
  objc_opt_self();
  v7 = objc_alloc_init(objc_opt_class());
  v7[2] = 2;
  v7[3] = a2;
  v7[4] = a3;
  v7[8] = a4;

  return v7;
}

+ (void)controlInfoWithInteractionValue:(uint64_t)a1
{
  objc_opt_self();
  v3 = objc_alloc_init(objc_opt_class());
  v3[2] = 1;
  v3[3] = a2;
  v3[7] = 64;

  return v3;
}

+ (void)controlInfoWithInteractionValue:(uint64_t)a1 targetValue:(uint64_t)a2 actionValue:(uint64_t)a3 controlEvents:(uint64_t)a4 textInputValue:(uint64_t)a5
{
  objc_opt_self();
  v9 = objc_alloc_init(objc_opt_class());
  v9[2] = 1;
  v9[3] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v9[7] = a5;
  v9[8] = 0;

  return v9;
}

@end