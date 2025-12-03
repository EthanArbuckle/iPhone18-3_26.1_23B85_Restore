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
  sub_100612F40();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100613930(change);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ActionCollectionViewCell *)&v3 prepareForReuse];
  v2[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
}

- (void)accessoryDidActionWithSender:(id)sender
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryAction);
  if (v3)
  {
    senderCopy = sender;
    selfCopy = self;
    sub_10000827C(v3);
    v3(senderCopy);

    sub_10001F63C(v3);
  }
}

@end