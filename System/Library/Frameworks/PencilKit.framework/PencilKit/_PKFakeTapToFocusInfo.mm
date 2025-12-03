@interface _PKFakeTapToFocusInfo
+ (void)controlInfoWithInteractionValue:(uint64_t)value;
+ (void)controlInfoWithInteractionValue:(uint64_t)value targetValue:(uint64_t)targetValue actionValue:(uint64_t)actionValue controlEvents:(uint64_t)events textInputValue:(uint64_t)inputValue;
+ (void)tapGestureInfoWithInteractionValue:(uint64_t)value firstSubviewValue:(uint64_t)subviewValue textInputValue:;
+ (void)textFieldInfoWithInteractionValue:(uint64_t)value;
@end

@implementation _PKFakeTapToFocusInfo

+ (void)textFieldInfoWithInteractionValue:(uint64_t)value
{
  objc_opt_self();
  v3 = objc_alloc_init(objc_opt_class());
  v3[2] = 0;
  v3[3] = a2;

  return v3;
}

+ (void)tapGestureInfoWithInteractionValue:(uint64_t)value firstSubviewValue:(uint64_t)subviewValue textInputValue:
{
  objc_opt_self();
  v7 = objc_alloc_init(objc_opt_class());
  v7[2] = 2;
  v7[3] = a2;
  v7[4] = value;
  v7[8] = subviewValue;

  return v7;
}

+ (void)controlInfoWithInteractionValue:(uint64_t)value
{
  objc_opt_self();
  v3 = objc_alloc_init(objc_opt_class());
  v3[2] = 1;
  v3[3] = a2;
  v3[7] = 64;

  return v3;
}

+ (void)controlInfoWithInteractionValue:(uint64_t)value targetValue:(uint64_t)targetValue actionValue:(uint64_t)actionValue controlEvents:(uint64_t)events textInputValue:(uint64_t)inputValue
{
  objc_opt_self();
  v9 = objc_alloc_init(objc_opt_class());
  v9[2] = 1;
  v9[3] = targetValue;
  v9[5] = actionValue;
  v9[6] = events;
  v9[7] = inputValue;
  v9[8] = 0;

  return v9;
}

@end