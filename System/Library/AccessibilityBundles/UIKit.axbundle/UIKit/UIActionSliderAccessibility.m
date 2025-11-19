@interface UIActionSliderAccessibility
@end

@implementation UIActionSliderAccessibility

uint64_t __53___UIActionSliderAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) actionSliderDidBeginSlide:*(a1 + 40)];
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) actionSlider:*(a1 + 40) didUpdateSlideWithValue:1.0];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*(a1 + 32) actionSliderDidCompleteSlide:*(a1 + 40)];
  }

  return result;
}

@end