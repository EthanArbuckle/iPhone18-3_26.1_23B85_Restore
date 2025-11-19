@interface CanvasAssetDeleteView
- (BOOL)accessibilityElementsHidden;
- (void)layoutSubviews;
- (void)setAccessibilityElementsHidden:(BOOL)a3;
@end

@implementation CanvasAssetDeleteView

- (void)layoutSubviews
{
  v2 = self;
  sub_100134204();
}

- (BOOL)accessibilityElementsHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CanvasAssetDeleteView();
  return [(CanvasAssetDeleteView *)&v3 accessibilityElementsHidden];
}

- (void)setAccessibilityElementsHidden:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  [(CanvasAssetDeleteView *)v4 setIsAccessibilityElement:v3 ^ 1];
  v5.receiver = v4;
  v5.super_class = type metadata accessor for CanvasAssetDeleteView();
  [(CanvasAssetDeleteView *)&v5 setAccessibilityElementsHidden:v3];
}

@end