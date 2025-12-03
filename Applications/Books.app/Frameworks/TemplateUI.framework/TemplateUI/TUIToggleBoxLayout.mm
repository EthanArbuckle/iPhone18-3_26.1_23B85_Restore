@interface TUIToggleBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (id)axModelTreeWithCustomActionsCollector:(id)collector scrollAncestorLayout:(id)layout scrollAncestorTranslation:(CGPoint)translation liveTransformAncestorLayout:(id)ancestorLayout;
@end

@implementation TUIToggleBoxLayout

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  if (*&qword_2E6180 <= -3.40282347e38)
  {
    v5 = 4286578687;
  }

  else
  {
    if (*&qword_2E6180 < 3.40282347e38)
    {
      *&v3 = *&qword_2E6180;
      return (v3 | 0x7FC0000000000000);
    }

    v5 = 2139095039;
  }

  return (v5 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  if (*&qword_2E6178 <= -3.40282347e38)
  {
    v5 = 4286578687;
  }

  else
  {
    if (*&qword_2E6178 < 3.40282347e38)
    {
      *&v3 = *&qword_2E6178;
      return (v3 | 0x7FC0000000000000);
    }

    v5 = 2139095039;
  }

  return (v5 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- (id)axModelTreeWithCustomActionsCollector:(id)collector scrollAncestorLayout:(id)layout scrollAncestorTranslation:(CGPoint)translation liveTransformAncestorLayout:(id)ancestorLayout
{
  v8.receiver = self;
  v8.super_class = TUIToggleBoxLayout;
  v6 = [(TUIStatefulElementBoxLayout *)&v8 axModelTreeWithCustomActionsCollector:collector scrollAncestorLayout:layout scrollAncestorTranslation:ancestorLayout liveTransformAncestorLayout:translation.x, translation.y];
  [v6 setShouldVendControlView:1];

  return v6;
}

@end