@interface JournalCoreDataSpotlightDelegate
- (id)attributeSetForObject:(id)object;
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
    selfCopy = self;

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for JournalCoreDataSpotlightDelegate();
  [(JournalCoreDataSpotlightDelegate *)&v5 dealloc];
}

- (id)attributeSetForObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  v6 = sub_1006A0774(objectCopy);

  return v6;
}

@end