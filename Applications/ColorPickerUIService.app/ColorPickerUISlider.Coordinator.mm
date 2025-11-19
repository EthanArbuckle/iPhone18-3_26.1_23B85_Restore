@interface ColorPickerUISlider.Coordinator
- (void)sliderValueChangedWithSlider:(id)a3;
@end

@implementation ColorPickerUISlider.Coordinator

- (void)sliderValueChangedWithSlider:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = a3;
  v6 = a3;
  swift_retain_n();
  v7 = v6;
  static ViewGraphHostUpdate.enqueueAction(_:)();
}

@end