@interface PlaceTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (PersonalizedItem)personalizedItemForQuickActionMenu;
- (_TtC4Maps18PlaceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)ETAProviderUpdated:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)addTrailingEntityTypeFrom:(id)a3;
- (void)configureWithTemplate:(id)a3 query:(id)a4 asyncDataManager:(id)a5 delegate:(id)a6;
- (void)prepareForReuse;
- (void)updateContextLinesToDisplayVisitedState;
- (void)updateEVChargerAvailabilityWithTemplate:(id)a3 mapItem:(id)a4;
- (void)updateTrailingEntityUsing:(double)a3;
- (void)updateViewModelWithAddStopWithTemplate:(id)a3;
- (void)updateViewModelWithETA:(id)a3;
@end

@implementation PlaceTableViewCell

- (_TtC4Maps18PlaceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100161D18(a3, a4, v6);
}

- (void)configureWithTemplate:(id)a3 query:(id)a4 asyncDataManager:(id)a5 delegate:(id)a6
{
  if (a4)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = a3;
  v13 = a5;
  swift_unknownObjectRetain();
  v14 = self;
  sub_100161FEC(a3, v9, v11, a5);

  swift_unknownObjectRelease();
}

- (void)updateEVChargerAvailabilityWithTemplate:(id)a3 mapItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_100162230(a3, a4);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = objc_opt_self();
  v11 = self;
  [v10 setFrameStallSkipRequest:1];
  v20.receiver = v11;
  v20.super_class = type metadata accessor for PlaceTableViewCell();
  *&v12 = a4;
  *&v13 = a5;
  [(PlaceTableViewCell *)&v20 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v12, v13];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1001628C8();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100162998();

  (*(v5 + 8))(v7, v4);
}

- (void)addTrailingEntityTypeFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10016A620(v4);
}

- (void)updateViewModelWithETA:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10016A78C();
}

- (void)updateViewModelWithAddStopWithTemplate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10016E698();
}

- (void)ETAProviderUpdated:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10016B394(a3);
}

- (void)updateTrailingEntityUsing:(double)a3
{
  v4 = self;
  sub_10016BAD8(a3);
}

- (void)updateContextLinesToDisplayVisitedState
{
  v2 = self;
  sub_10016BDBC();
}

- (PersonalizedItem)personalizedItemForQuickActionMenu
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = [Strong personalizedItemForQuickActionMenuWithCell:self];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end