@interface TTRIListSharingParticipantCell
- (UILabel)detailLabel;
- (UILabel)mainLabel;
- (UIView)avatarContainerView;
- (_TtC9Reminders30TTRIListSharingParticipantCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)awakeFromNib;
@end

@implementation TTRIListSharingParticipantCell

- (void)awakeFromNib
{
  v2 = self;
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

- (_TtC9Reminders30TTRIListSharingParticipantCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100557028(a3, a4, v6);
}

@end