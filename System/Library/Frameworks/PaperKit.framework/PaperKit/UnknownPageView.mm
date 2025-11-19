@interface UnknownPageView
- (_TtC8PaperKit15UnknownPageView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation UnknownPageView

- (_TtC8PaperKit15UnknownPageView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC8PaperKit15UnknownPageView_textualContextProvider) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = type metadata accessor for UnknownPageView();
  v2 = v16.receiver;
  [(UnknownPageView *)&v16 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8PaperKit15UnknownPageView_questionMarkView];
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v2 bounds];
  v13 = v12 * 0.2;
  [v2 bounds];
  v15 = v14 * 0.2;
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  v18 = CGRectInset(v17, v13, v15);
  [v3 setFrame_];
}

@end