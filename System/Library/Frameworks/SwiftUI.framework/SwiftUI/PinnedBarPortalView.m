@interface PinnedBarPortalView
- (_TtC7SwiftUI19PinnedBarPortalView)initWithCoder:(id)a3;
- (_TtC7SwiftUI19PinnedBarPortalView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PinnedBarPortalView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PinnedBarPortalView();
  v2 = v4.receiver;
  [(PinnedBarPortalView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7SwiftUI19PinnedBarPortalView_portalView];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC7SwiftUI19PinnedBarPortalView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7SwiftUI19PinnedBarPortalView_containerInteraction) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7SwiftUI19PinnedBarPortalView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end