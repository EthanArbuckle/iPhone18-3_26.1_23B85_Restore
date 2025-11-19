@interface JournalCoreDataSpotlightDelegate
- (id)attributeSetForObject:(id)a3;
- (id)domainIdentifier;
- (void)dealloc;
@end

@implementation JournalCoreDataSpotlightDelegate

- (id)domainIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)dealloc
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC7Journal32JournalCoreDataSpotlightDelegate_protectedDataObservationTask))
  {
    v3 = self;

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for JournalCoreDataSpotlightDelegate();
  [(JournalCoreDataSpotlightDelegate *)&v5 dealloc];
}

- (id)attributeSetForObject:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1006A0774(v4);

  return v6;
}

@end