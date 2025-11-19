@interface SessionDelegate
- (_TtC10FinanceKitP33_82FCA57B9514272BE863607579F9568E15SessionDelegate)init;
- (_TtC10FinanceKitP33_BBE0122A3E1307DE2D47D62BE8CA3C6615SessionDelegate)init;
- (_TtC10FinanceKitP33_D792C1975BCD83E251CC308B2A7B211715SessionDelegate)init;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
@end

@implementation SessionDelegate

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1B779E7D0(a4);
}

- (_TtC10FinanceKitP33_82FCA57B9514272BE863607579F9568E15SessionDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC10FinanceKitP33_82FCA57B9514272BE863607579F9568E15SessionDelegate_sessionDidBecomeInvalid) = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtC10FinanceKitP33_82FCA57B9514272BE863607579F9568E15SessionDelegate_sessionDidBecomeInvalidHandler);
  v4 = type metadata accessor for SessionDelegate();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(SessionDelegate *)&v6 init];
}

- (_TtC10FinanceKitP33_BBE0122A3E1307DE2D47D62BE8CA3C6615SessionDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC10FinanceKitP33_BBE0122A3E1307DE2D47D62BE8CA3C6615SessionDelegate_sessionDidBecomeInvalid) = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtC10FinanceKitP33_BBE0122A3E1307DE2D47D62BE8CA3C6615SessionDelegate_sessionDidBecomeInvalidHandler);
  v4 = _s10FinanceKit15SessionDelegateCMa_0();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(SessionDelegate *)&v6 init];
}

- (_TtC10FinanceKitP33_D792C1975BCD83E251CC308B2A7B211715SessionDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC10FinanceKitP33_D792C1975BCD83E251CC308B2A7B211715SessionDelegate_sessionDidBecomeInvalid) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC10FinanceKitP33_D792C1975BCD83E251CC308B2A7B211715SessionDelegate_sessionDidBecomeInvalidHandler);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(SessionDelegate *)&v6 init];
}

@end