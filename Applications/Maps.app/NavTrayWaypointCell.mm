@interface NavTrayWaypointCell
- (_TtC4Maps19NavTrayWaypointCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtP4Maps27NavTrayWaypointCellDelegate_)delegate;
- (void)applyWithIsCallable:(BOOL)callable isDeletable:(BOOL)deletable;
- (void)setEtaString:(id)string;
- (void)setTitle:(id)title;
- (void)setWaypoint:(id)waypoint;
- (void)setWaypointImage:(id)image;
@end

@implementation NavTrayWaypointCell

- (void)setWaypointImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  sub_100134644(image);
}

- (void)setTitle:(id)title
{
  if (title)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_title);
  *v7 = v4;
  v7[1] = v6;
  selfCopy = self;

  dispatch thunk of ListCellViewModel.title.setter();
}

- (void)setEtaString:(id)string
{
  if (string)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_etaString);
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;

  sub_1001348EC();
}

- (void)setWaypoint:(id)waypoint
{
  v4 = *(self + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_waypoint);
  *(self + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_waypoint) = waypoint;
  waypointCopy = waypoint;
}

- (_TtP4Maps27NavTrayWaypointCellDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps19NavTrayWaypointCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100134C50(style, identifier, v6);
}

- (void)applyWithIsCallable:(BOOL)callable isDeletable:(BOOL)deletable
{
  selfCopy = self;
  sub_1001355D0(callable, deletable);
}

@end