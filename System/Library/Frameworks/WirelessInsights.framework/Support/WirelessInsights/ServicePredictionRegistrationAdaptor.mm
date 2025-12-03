@interface ServicePredictionRegistrationAdaptor
- (_TtC17wirelessinsightsd36ServicePredictionRegistrationAdaptor)init;
- (void)didChangeCellTo:(id)to;
- (void)radioStateDidChangeTo:(unint64_t)to;
@end

@implementation ServicePredictionRegistrationAdaptor

- (void)didChangeCellTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  sub_1001DC0C8(to);
}

- (void)radioStateDidChangeTo:(unint64_t)to
{
  v4 = sub_1000CE644();
  if (v4)
  {
    v5 = v4;
    v6 = sub_100168AD4();

    (*((swift_isaMask & *v6) + 0x3B8))(to);
  }
}

- (_TtC17wirelessinsightsd36ServicePredictionRegistrationAdaptor)init
{
  ObjectType = swift_getObjectType();
  create = [objc_opt_self() create];
  *(&self->super.isa + OBJC_IVAR____TtC17wirelessinsightsd36ServicePredictionRegistrationAdaptor_relayAdaptor) = create;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ServicePredictionRegistrationAdaptor *)&v6 init];
}

@end