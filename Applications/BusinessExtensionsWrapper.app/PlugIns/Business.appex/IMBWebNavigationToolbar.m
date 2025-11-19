@interface IMBWebNavigationToolbar
- (_TtC8Business23IMBWebNavigationToolbar)initWithFrame:(CGRect)a3;
- (id)initInView:(id)a3 withFrame:(CGRect)a4 withItemList:(id)a5;
- (void)done;
- (void)nextPage;
- (void)previousPage;
- (void)refresh;
@end

@implementation IMBWebNavigationToolbar

- (void)previousPage
{
  v2 = self;
  sub_100018688();
}

- (void)nextPage
{
  v2 = self;
  sub_10001886C();
}

- (void)refresh
{
  v2 = self;
  sub_100018A50();
}

- (void)done
{
  v2 = self;
  sub_100018B90();
}

- (_TtC8Business23IMBWebNavigationToolbar)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initInView:(id)a3 withFrame:(CGRect)a4 withItemList:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end