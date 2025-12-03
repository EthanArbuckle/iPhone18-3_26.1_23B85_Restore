@interface ColorPickerUISlider.Coordinator
- (void)sliderValueChangedWithSlider:(id)slider;
@end

@implementation ColorPickerUISlider.Coordinator

- (void)sliderValueChangedWithSlider:(id)slider
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = slider;
  sliderCopy = slider;
  swift_retain_n();
  v7 = sliderCopy;
  static ViewGraphHostUpdate.enqueueAction(_:)();
}

@end