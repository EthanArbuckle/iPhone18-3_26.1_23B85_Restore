@interface AuthenticateAccountsImageCardContentView
- (_TtC18SharingViewService40AuthenticateAccountsImageCardContentView)initWithCardStyle:(int64_t)style;
- (_TtC18SharingViewService40AuthenticateAccountsImageCardContentView)initWithCoder:(id)coder;
- (_TtC18SharingViewService40AuthenticateAccountsImageCardContentView)initWithFrame:(CGRect)frame;
@end

@implementation AuthenticateAccountsImageCardContentView

- (_TtC18SharingViewService40AuthenticateAccountsImageCardContentView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageConfiguration;
  v5 = [objc_opt_self() systemFontOfSize:100.0];
  v6 = [objc_opt_self() configurationWithFont:v5];

  *&self->PRXCardContentView_opaque[v4] = v6;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC18SharingViewService40AuthenticateAccountsImageCardContentView)initWithCardStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18SharingViewService40AuthenticateAccountsImageCardContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end