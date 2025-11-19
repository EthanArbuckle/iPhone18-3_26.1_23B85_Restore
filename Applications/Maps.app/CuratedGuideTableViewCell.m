@interface CuratedGuideTableViewCell
+ (NSString)reuseIdentifier;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC4Maps25CuratedGuideTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtP4Maps33CuratedGuideTableViewCellDelegate_)delegate;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)configureWith:(id)a3 delegate:(id)a4 template:(id)a5;
- (void)prepareForReuse;
- (void)setCuratedGuideImageProvider:(id)a3;
- (void)setTemplate:(id)a3;
- (void)setViewModel:(id)a3;
@end

@implementation CuratedGuideTableViewCell

- (_TtP4Maps33CuratedGuideTableViewCellDelegate_)delegate
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
  v4 = *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel);
  *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel) = a3;
  v3 = a3;
}

- (void)setTemplate:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template);
  *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template) = a3;
  v3 = a3;
}

- (void)setCuratedGuideImageProvider:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider);
  *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider) = a3;
  v3 = a3;
}

- (_TtC4Maps25CuratedGuideTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_10026B1B8(a3, a4, v6);
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CuratedGuideTableViewCell();
  v2 = v5.receiver;
  [(CuratedGuideTableViewCell *)&v5 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel];
  *&v2[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel] = 0;

  swift_unknownObjectWeakAssign();
  v4 = *&v2[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template];
  *&v2[OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template] = 0;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = objc_opt_self();
  v11 = self;
  [v10 setFrameStallSkipRequest:1];
  v20.receiver = v11;
  v20.super_class = type metadata accessor for CuratedGuideTableViewCell();
  *&v12 = a4;
  *&v13 = a5;
  [(CuratedGuideTableViewCell *)&v20 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v12, v13];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)configureWith:(id)a3 delegate:(id)a4 template:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10026B55C(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10026B7F4();

  (*(v5 + 8))(v7, v4);
}

@end