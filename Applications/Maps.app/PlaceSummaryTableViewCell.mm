@interface PlaceSummaryTableViewCell
+ (NSString)reuseIdentifier;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (PersonalizedItem)personalizedItemForQuickActionMenu;
- (_TtC4Maps25PlaceSummaryTableViewCell)initWithCoder:(id)a3;
- (_TtC4Maps25PlaceSummaryTableViewCell)initWithReuseIdentifier:(id)a3;
- (_TtC4Maps25PlaceSummaryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC4Maps28PlaceSummaryAsyncDataManager)asyncDataManager;
- (_TtP4Maps33PlaceSummaryTableViewCellDelegate_)delegate;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setViewModel:(id)a3;
- (void)setViewModel:(id)a3 delegate:(id)a4 asyncDataManager:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)setViewModel:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel);
  *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel) = a3;
  v5 = a3;
  v6 = self;

  sub_100521960();
}

- (_TtC4Maps25PlaceSummaryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100521A48(a3, a4, v6);
}

- (_TtC4Maps25PlaceSummaryTableViewCell)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_hasActionButtons) = 0;
  *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC4Maps25PlaceSummaryTableViewCell)initWithReuseIdentifier:(id)a3
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = objc_opt_self();
  v11 = self;
  [v10 setFrameStallSkipRequest:1];
  v20.receiver = v11;
  v20.super_class = type metadata accessor for PlaceSummaryTableViewCell();
  *&v12 = a4;
  *&v13 = a5;
  [(PlaceSummaryTableViewCell *)&v20 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v12, v13];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)setViewModel:(id)a3 delegate:(id)a4 asyncDataManager:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100521EB0(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100523EFC();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10052212C();

  (*(v5 + 8))(v7, v4);
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = *(self + OBJC_IVAR____TtC4Maps25PlaceSummaryTableViewCell_viewModel);
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = self;
    v9 = v7;
    static Published.subscript.setter();
  }

  else
  {
    v10 = self;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PlaceSummaryTableViewCell();
  [(PlaceSummaryTableViewCell *)&v11 setSelected:v5 animated:v4];
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