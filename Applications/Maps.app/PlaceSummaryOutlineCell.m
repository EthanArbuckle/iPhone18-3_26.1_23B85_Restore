@interface PlaceSummaryOutlineCell
- (BOOL)isHovering;
- (_TtC4Maps23PlaceSummaryOutlineCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)prepareForReuse;
- (void)setHovering:(BOOL)a3;
- (void)setViewModel:(id)a3;
- (void)updateDisclosureIndicator;
@end

@implementation PlaceSummaryOutlineCell

- (void)setViewModel:(id)a3
{
  v4 = *(&self->super.super + OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel);
  *(&self->super.super + OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel) = a3;
  v5 = a3;
  v6 = self;

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

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1002ADE80();

  (*(v5 + 8))(v7, v4);
}

- (_TtC4Maps23PlaceSummaryOutlineCell)initWithCoder:(id)a3
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

- (void)setHovering:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for PlaceSummaryOutlineCell();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(SidebarOutlineCell *)&v9 isHovering];
  v8.receiver = v6;
  v8.super_class = v5;
  [(SidebarOutlineCell *)&v8 setHovering:v3];
  sub_1002AEF84(v7);
}

- (void)updateDisclosureIndicator
{
  v2 = self;
  sub_1002AF054();
}

@end