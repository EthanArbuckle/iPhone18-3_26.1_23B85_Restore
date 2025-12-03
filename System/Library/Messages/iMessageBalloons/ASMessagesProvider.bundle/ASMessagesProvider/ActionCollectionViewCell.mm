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
  sub_24FEB0();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2508A0(change);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ActionCollectionViewCell *)&v3 prepareForReuse];
  v2[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
}

- (void)accessoryDidActionWithSender:(id)sender
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_accessoryAction);
  if (v3)
  {
    senderCopy = sender;
    selfCopy = self;
    sub_F714(v3);
    v3(senderCopy);

    sub_F704(v3);
  }
}

@end