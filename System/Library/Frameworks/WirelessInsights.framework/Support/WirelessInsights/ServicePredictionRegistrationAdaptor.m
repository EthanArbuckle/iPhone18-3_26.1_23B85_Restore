@interface ServicePredictionRegistrationAdaptor
- (_TtC17wirelessinsightsd36ServicePredictionRegistrationAdaptor)init;
- (void)didChangeCellTo:(id)a3;
- (void)radioStateDidChangeTo:(unint64_t)a3;
@end

@implementation ServicePredictionRegistrationAdaptor

- (void)didChangeCellTo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001DC0C8(a3);
}

- (void)radioStateDidChangeTo:(unint64_t)a3
{
  v4 = sub_1000CE644();
  if (v4)
  {
    v5 = v4;
    v6 = sub_100168AD4();

    (*((swift_isaMask & *v6) + 0x3B8))(a3);
  }
}

- (_TtC17wirelessinsightsd36ServicePredictionRegistrationAdaptor)init
{
  ObjectType = swift_getObjectType();
  v4 = [objc_opt_self() create];
  *(&self->super.isa + OBJC_IVAR____TtC17wirelessinsightsd36ServicePredictionRegistrationAdaptor_relayAdaptor) = v4;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ServicePredictionRegistrationAdaptor *)&v6 init];
}

@end