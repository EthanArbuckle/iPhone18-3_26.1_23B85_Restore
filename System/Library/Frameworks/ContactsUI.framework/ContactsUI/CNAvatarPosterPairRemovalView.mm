@interface CNAvatarPosterPairRemovalView
- (_TtC10ContactsUI29CNAvatarPosterPairRemovalView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CNAvatarPosterPairRemovalView

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CNAvatarPosterPairRemovalView();
  v2 = v4.receiver;
  [(CNAvatarPosterPairRemovalView *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_avatarPosterPair];
  *&v2[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_avatarPosterPair] = 0;
}

- (_TtC10ContactsUI29CNAvatarPosterPairRemovalView)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_avatarPosterPair) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButtonDimension) = 0x4051000000000000;
  result = sub_199DFA85C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_199AD7288();
}

@end