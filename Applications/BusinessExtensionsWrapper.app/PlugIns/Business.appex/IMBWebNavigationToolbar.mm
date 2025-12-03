@interface IMBWebNavigationToolbar
- (_TtC8Business23IMBWebNavigationToolbar)initWithFrame:(CGRect)frame;
- (id)initInView:(id)view withFrame:(CGRect)frame withItemList:(id)list;
- (void)done;
- (void)nextPage;
- (void)previousPage;
- (void)refresh;
@end

@implementation IMBWebNavigationToolbar

- (void)previousPage
{
  selfCopy = self;
  sub_100018688();
}

- (void)nextPage
{
  selfCopy = self;
  sub_10001886C();
}

- (void)refresh
{
  selfCopy = self;
  sub_100018A50();
}

- (void)done
{
  selfCopy = self;
  sub_100018B90();
}

- (_TtC8Business23IMBWebNavigationToolbar)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initInView:(id)view withFrame:(CGRect)frame withItemList:(id)list
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end