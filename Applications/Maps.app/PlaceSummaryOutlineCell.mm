@interface PlaceSummaryOutlineCell
- (BOOL)isHovering;
- (_TtC4Maps23PlaceSummaryOutlineCell)initWithCoder:(id)coder;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)prepareForReuse;
- (void)setHovering:(BOOL)hovering;
- (void)setViewModel:(id)model;
- (void)updateDisclosureIndicator;
@end

@implementation PlaceSummaryOutlineCell

- (void)setViewModel:(id)model
{
  v4 = *(&self->super.super + OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel);
  *(&self->super.super + OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel) = model;
  modelCopy = model;
  selfCopy = self;

  sub_1002ADB60();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PlaceSummaryOutlineCell();
  v2 = v4.receiver;
  [(PlaceSummaryOutlineCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_curatedGuideViewModel];
  *&v2[OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_curatedGuideViewModel] = 0;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002ADE80();

  (*(v5 + 8))(v7, v4);
}

- (_TtC4Maps23PlaceSummaryOutlineCell)initWithCoder:(id)coder
{
  *(&self->super.super + OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_curatedGuideViewModel) = 0;
  *(&self->super.super + OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isHovering
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaceSummaryOutlineCell();
  return [(SidebarOutlineCell *)&v3 isHovering];
}

- (void)setHovering:(BOOL)hovering
{
  hoveringCopy = hovering;
  v5 = type metadata accessor for PlaceSummaryOutlineCell();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHovering = [(SidebarOutlineCell *)&v9 isHovering];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(SidebarOutlineCell *)&v8 setHovering:hoveringCopy];
  sub_1002AEF84(isHovering);
}

- (void)updateDisclosureIndicator
{
  selfCopy = self;
  sub_1002AF054();
}

@end