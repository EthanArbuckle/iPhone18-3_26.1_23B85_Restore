@interface ServiceProductCardView
- (void)dismissButtonActionWithSender:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ServiceProductCardView

- (void)layoutSubviews
{
  v2 = self;
  sub_10639C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10667C(a3);
}

- (void)dismissButtonActionWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_13BF54();
  swift_unknownObjectRelease();
  sub_106BC4(v5);

  sub_3C04(v5);
}

@end