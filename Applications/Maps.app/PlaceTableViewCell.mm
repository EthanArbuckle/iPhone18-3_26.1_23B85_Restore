@interface PlaceTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (PersonalizedItem)personalizedItemForQuickActionMenu;
- (_TtC4Maps18PlaceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)ETAProviderUpdated:(id)updated;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)addTrailingEntityTypeFrom:(id)from;
- (void)configureWithTemplate:(id)template query:(id)query asyncDataManager:(id)manager delegate:(id)delegate;
- (void)prepareForReuse;
- (void)updateContextLinesToDisplayVisitedState;
- (void)updateEVChargerAvailabilityWithTemplate:(id)template mapItem:(id)item;
- (void)updateTrailingEntityUsing:(double)using;
- (void)updateViewModelWithAddStopWithTemplate:(id)template;
- (void)updateViewModelWithETA:(id)a;
@end

@implementation PlaceTableViewCell

- (_TtC4Maps18PlaceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100161D18(style, identifier, v6);
}

- (void)configureWithTemplate:(id)template query:(id)query asyncDataManager:(id)manager delegate:(id)delegate
{
  if (query)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  templateCopy = template;
  managerCopy = manager;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100161FEC(template, v9, v11, manager);

  swift_unknownObjectRelease();
}

- (void)updateEVChargerAvailabilityWithTemplate:(id)template mapItem:(id)item
{
  templateCopy = template;
  itemCopy = item;
  selfCopy = self;
  sub_100162230(template, item);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v10 = objc_opt_self();
  selfCopy = self;
  [v10 setFrameStallSkipRequest:1];
  v20.receiver = selfCopy;
  v20.super_class = type metadata accessor for PlaceTableViewCell();
  *&v12 = priority;
  *&v13 = fittingPriority;
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
  selfCopy = self;
  sub_1001628C8();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100162998();

  (*(v5 + 8))(v7, v4);
}

- (void)addTrailingEntityTypeFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_10016A620(fromCopy);
}

- (void)updateViewModelWithETA:(id)a
{
  aCopy = a;
  selfCopy = self;
  sub_10016A78C();
}

- (void)updateViewModelWithAddStopWithTemplate:(id)template
{
  templateCopy = template;
  selfCopy = self;
  sub_10016E698();
}

- (void)ETAProviderUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  sub_10016B394(updated);
}

- (void)updateTrailingEntityUsing:(double)using
{
  selfCopy = self;
  sub_10016BAD8(using);
}

- (void)updateContextLinesToDisplayVisitedState
{
  selfCopy = self;
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