@interface PlaceSummaryTableViewCell
+ (NSString)reuseIdentifier;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (PersonalizedItem)personalizedItemForQuickActionMenu;
- (_TtC4Maps25PlaceSummaryTableViewCell)initWithCoder:(id)coder;
- (_TtC4Maps25PlaceSummaryTableViewCell)initWithReuseIdentifier:(id)identifier;
- (_TtC4Maps25PlaceSummaryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC4Maps28PlaceSummaryAsyncDataManager)asyncDataManager;
- (_TtP4Maps33PlaceSummaryTableViewCellDelegate_)delegate;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setViewModel:(id)model;
- (void)setViewModel:(id)model delegate:(id)delegate asyncDataManager:(id)manager;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlaceSummaryTableViewCell

- (_TtP4Maps33PlaceSummaryTableViewCellDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps28PlaceSummaryAsyncDataManager)asyncDataManager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setViewModel:(id)model
{
  v4 = *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel);
  *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel) = model;
  modelCopy = model;
  selfCopy = self;

  sub_100521960();
}

- (_TtC4Maps25PlaceSummaryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100521A48(style, identifier, v6);
}

- (_TtC4Maps25PlaceSummaryTableViewCell)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_hasActionButtons) = 0;
  *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC4Maps25PlaceSummaryTableViewCell)initWithReuseIdentifier:(id)identifier
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_hasActionButtons) = 0;
  *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PlaceSummaryTableViewCell();
  v2 = v4.receiver;
  [(PlaceSummaryTableViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel];
  *&v2[OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel] = 0;

  sub_100521960();
  swift_unknownObjectWeakAssign();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v10 = objc_opt_self();
  selfCopy = self;
  [v10 setFrameStallSkipRequest:1];
  v20.receiver = selfCopy;
  v20.super_class = type metadata accessor for PlaceSummaryTableViewCell();
  *&v12 = priority;
  *&v13 = fittingPriority;
  [(PlaceSummaryTableViewCell *)&v20 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v12, v13];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)setViewModel:(id)model delegate:(id)delegate asyncDataManager:(id)manager
{
  modelCopy = model;
  swift_unknownObjectRetain();
  managerCopy = manager;
  selfCopy = self;
  sub_100521EB0(modelCopy, delegate, manager);

  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100523EFC();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10052212C();

  (*(v5 + 8))(v7, v4);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  v7 = *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel);
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    selfCopy = self;
    v9 = v7;
    static Published.subscript.setter();
  }

  else
  {
    selfCopy2 = self;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PlaceSummaryTableViewCell();
  [(PlaceSummaryTableViewCell *)&v11 setSelected:selectedCopy animated:animatedCopy];
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