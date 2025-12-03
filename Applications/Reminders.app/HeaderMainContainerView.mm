@interface HeaderMainContainerView
- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size;
- (_TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView)initWithArrangedSubviews:(id)subviews;
- (_TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView)initWithCoder:(id)coder;
- (_TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView)initWithFrame:(CGRect)frame;
- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
@end

@implementation HeaderMainContainerView

- (_TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_viewHeightSubject;
  sub_100058000(&qword_100769E68);
  swift_allocObject();
  *&self->NUIContainerView_opaque[v4] = PassthroughSubject.init()();
  v5 = &self->NUIContainerView_opaque[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot];
  v6 = *&UIEdgeInsetsZero.bottom;
  *v5 = *&UIEdgeInsetsZero.top;
  *(v5 + 1) = v6;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size
{
  v3 = *&self->NUIContainerView_opaque[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_contentView];
  selfCopy = self;
  [(HeaderMainContainerView *)selfCopy contentLayoutSizeFittingSize:v3 forArrangedSubview:0.0, 0.0];
  v6 = v5;
  v8 = v7;
  v9 = *&selfCopy->viewHeightSubject[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot];
  v10 = *&selfCopy->safeAreaInsetSnapshot[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot];

  v11 = v6 + v9 + v10;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds
{
  v4 = sub_100068328(bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, *&self->NUIContainerView_opaque[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot], *&self->viewHeightSubject[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot]);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_contentView;
  v12 = *&self->NUIContainerView_opaque[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_contentView];
  selfCopy = self;
  [(HeaderMainContainerView *)selfCopy contentLayoutSizeFittingSize:v12 forArrangedSubview:v8, v10];
  [*&self->NUIContainerView_opaque[v11] setUntransformedFrame:{v4, v6, v13, v14}];
}

- (void)layoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(HeaderMainContainerView *)&v4 layoutMarginsDidChange];
  v3 = *&v2[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_contentView];
  [v2 layoutMargins];
  [v3 setLayoutMargins:?];
}

- (void)safeAreaInsetsDidChange
{
  selfCopy = self;
  sub_10008DF18();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(HeaderMainContainerView *)&v3 layoutSubviews];
  [v2 bounds];
  CGRectGetHeight(v4);
  PassthroughSubject.send(_:)();
}

- (_TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView)initWithArrangedSubviews:(id)subviews
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end