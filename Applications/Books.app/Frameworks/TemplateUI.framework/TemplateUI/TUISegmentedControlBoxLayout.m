@interface TUISegmentedControlBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- (double)computeDerivedHeight;
- (id)axModelTreeWithCustomActionsCollector:(id)a3 scrollAncestorLayout:(id)a4 scrollAncestorTranslation:(CGPoint)a5 liveTransformAncestorLayout:(id)a6;
@end

@implementation TUISegmentedControlBoxLayout

- (double)computeDerivedHeight
{
  if (qword_2E6430 != -1)
  {
    sub_19B3C4();
  }

  return *&qword_2E6438;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth
{
  [(TUILayout *)self computedTransformedSize];
  if (v3 <= -3.40282347e38)
  {
    v6 = 4286578687;
  }

  else
  {
    if (v3 < 3.40282347e38)
    {
      *&v4 = v3;
      return (v4 | 0x7FC0000000000000);
    }

    v6 = 2139095039;
  }

  return (v6 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- (id)axModelTreeWithCustomActionsCollector:(id)a3 scrollAncestorLayout:(id)a4 scrollAncestorTranslation:(CGPoint)a5 liveTransformAncestorLayout:(id)a6
{
  v8.receiver = self;
  v8.super_class = TUISegmentedControlBoxLayout;
  v6 = [(TUIStatefulElementBoxLayout *)&v8 axModelTreeWithCustomActionsCollector:a3 scrollAncestorLayout:a4 scrollAncestorTranslation:a6 liveTransformAncestorLayout:a5.x, a5.y];
  [v6 setShouldVendControlView:1];

  return v6;
}

@end