@interface NavTrayWaypointCell
- (_TtC4Maps19NavTrayWaypointCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtP4Maps27NavTrayWaypointCellDelegate_)delegate;
- (void)applyWithIsCallable:(BOOL)a3 isDeletable:(BOOL)a4;
- (void)setEtaString:(id)a3;
- (void)setTitle:(id)a3;
- (void)setWaypoint:(id)a3;
- (void)setWaypointImage:(id)a3;
@end

@implementation NavTrayWaypointCell

- (void)setWaypointImage:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100134644(a3);
}

- (void)setTitle:(id)a3
{
  if (a3)
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
  v8 = self;

  dispatch thunk of ListCellViewModel.title.setter();
}

- (void)setEtaString:(id)a3
{
  if (a3)
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
  v7 = self;

  sub_1001348EC();
}

- (void)setWaypoint:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_waypoint);
  *(self + OBJC_IVAR____TtC4Maps19NavTrayWaypointCell_waypoint) = a3;
  v3 = a3;
}

- (_TtP4Maps27NavTrayWaypointCellDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps19NavTrayWaypointCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100134C50(a3, a4, v6);
}

- (void)applyWithIsCallable:(BOOL)a3 isDeletable:(BOOL)a4
{
  v6 = self;
  sub_1001355D0(a3, a4);
}

@end