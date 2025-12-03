@interface ProductTapToRateCollectionViewCell
- (void)ratingChangedWithSender:(id)sender;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ProductTapToRateCollectionViewCell

- (void)ratingChangedWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_2B5DEC();

  sub_EB68(v6, &unk_3FBB70);
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(ProductTapToRateCollectionViewCell *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2B5D2C(traitCollection);
}

@end