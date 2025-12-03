@interface FavoritesHeaderView
- (_TtC17SequoiaTranslator19FavoritesHeaderView)initWithCoder:(id)coder;
- (void)buttonPressed;
@end

@implementation FavoritesHeaderView

- (_TtC17SequoiaTranslator19FavoritesHeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC17SequoiaTranslator19FavoritesHeaderView_label;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC17SequoiaTranslator19FavoritesHeaderView_button;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator19FavoritesHeaderView_buttonAction);
  *v6 = 0;
  v6[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)buttonPressed
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator19FavoritesHeaderView_buttonAction);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10001AD18(v2);
    v2(v4);

    sub_10001ABE4(v2);
  }
}

@end