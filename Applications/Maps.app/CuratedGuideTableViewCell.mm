@interface CuratedGuideTableViewCell
+ (NSString)reuseIdentifier;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC4Maps25CuratedGuideTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtP4Maps33CuratedGuideTableViewCellDelegate_)delegate;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)configureWith:(id)with delegate:(id)delegate template:(id)template;
- (void)prepareForReuse;
- (void)setCuratedGuideImageProvider:(id)provider;
- (void)setTemplate:(id)template;
- (void)setViewModel:(id)model;
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

- (void)setViewModel:(id)model
{
  v4 = *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel);
  *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_viewModel) = model;
  modelCopy = model;
}

- (void)setTemplate:(id)template
{
  v4 = *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template);
  *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_template) = template;
  templateCopy = template;
}

- (void)setCuratedGuideImageProvider:(id)provider
{
  v4 = *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider);
  *(self + OBJC_IVAR____TtC4Maps25CuratedGuideTableViewCell_curatedGuideImageProvider) = provider;
  providerCopy = provider;
}

- (_TtC4Maps25CuratedGuideTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10026B1B8(style, identifier, v6);
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v10 = objc_opt_self();
  selfCopy = self;
  [v10 setFrameStallSkipRequest:1];
  v20.receiver = selfCopy;
  v20.super_class = type metadata accessor for CuratedGuideTableViewCell();
  *&v12 = priority;
  *&v13 = fittingPriority;
  [(CuratedGuideTableViewCell *)&v20 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v12, v13];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)configureWith:(id)with delegate:(id)delegate template:(id)template
{
  withCopy = with;
  swift_unknownObjectRetain();
  templateCopy = template;
  selfCopy = self;
  sub_10026B55C(withCopy, delegate, template);

  swift_unknownObjectRelease();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10026B7F4();

  (*(v5 + 8))(v7, v4);
}

@end