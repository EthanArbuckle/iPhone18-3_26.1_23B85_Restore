@interface CanvasAssetDeleteView
- (BOOL)accessibilityElementsHidden;
- (void)layoutSubviews;
- (void)setAccessibilityElementsHidden:(BOOL)hidden;
@end

@implementation CanvasAssetDeleteView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100077DAC();
}

- (BOOL)accessibilityElementsHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CanvasAssetDeleteView();
  return [(CanvasAssetDeleteView *)&v3 accessibilityElementsHidden];
}

- (void)setAccessibilityElementsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  selfCopy = self;
  [(CanvasAssetDeleteView *)selfCopy setIsAccessibilityElement:hiddenCopy ^ 1];
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for CanvasAssetDeleteView();
  [(CanvasAssetDeleteView *)&v5 setAccessibilityElementsHidden:hiddenCopy];
}

@end