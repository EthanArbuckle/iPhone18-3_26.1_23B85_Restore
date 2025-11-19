@interface ProductTapToRateCollectionViewCell
- (void)ratingChangedWithSender:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ProductTapToRateCollectionViewCell

- (void)ratingChangedWithSender:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_2B5DEC();

  sub_EB68(v6, &unk_3FBB70);
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(ProductTapToRateCollectionViewCell *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_2B5D2C(v6);
}

@end