@interface ShouldUseTouchIdViewControllerWithCoachings
@end

@implementation ShouldUseTouchIdViewControllerWithCoachings

void __ShouldUseTouchIdViewControllerWithCoachings_block_invoke(id a1)
{
  if (MGIsQuestionValid())
  {
    ShouldUseTouchIdViewControllerWithCoachings_supportsSecureDoubleClick = MGGetBoolAnswer();
  }

  else
  {
    v1 = LACLogTouchIDUI();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __ShouldUseTouchIdViewControllerWithCoachings_block_invoke_cold_1(v1);
    }
  }
}

@end