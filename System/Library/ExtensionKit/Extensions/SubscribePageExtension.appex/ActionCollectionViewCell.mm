@interface ActionCollectionViewCell
- (void)accessoryDidActionWithSender:(id)sender;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ActionCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100646314();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100646D04(change);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ActionCollectionViewCell *)&v3 prepareForReuse];
  v2[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
}

- (void)accessoryDidActionWithSender:(id)sender
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_accessoryAction);
  if (v3)
  {
    senderCopy = sender;
    selfCopy = self;
    sub_10001B5AC(v3);
    v3(senderCopy);

    sub_1000164A8(v3);
  }
}

@end