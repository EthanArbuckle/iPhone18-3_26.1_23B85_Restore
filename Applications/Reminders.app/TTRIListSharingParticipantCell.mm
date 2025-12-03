@interface TTRIListSharingParticipantCell
- (UILabel)detailLabel;
- (UILabel)mainLabel;
- (UIView)avatarContainerView;
- (_TtC9Reminders30TTRIListSharingParticipantCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
@end

@implementation TTRIListSharingParticipantCell

- (void)awakeFromNib
{
  selfCopy = self;
  sub_100556CCC();
}

- (UIView)avatarContainerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)mainLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)detailLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC9Reminders30TTRIListSharingParticipantCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100557028(style, identifier, v6);
}

@end