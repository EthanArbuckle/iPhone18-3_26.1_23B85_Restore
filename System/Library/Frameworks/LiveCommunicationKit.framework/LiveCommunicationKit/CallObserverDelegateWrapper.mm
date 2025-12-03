@interface CallObserverDelegateWrapper
- (_TtC20LiveCommunicationKit27CallObserverDelegateWrapper)init;
- (void)callObserver:(id)observer callChanged:(id)changed;
@end

@implementation CallObserverDelegateWrapper

- (_TtC20LiveCommunicationKit27CallObserverDelegateWrapper)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC20LiveCommunicationKit27CallObserverDelegateWrapper_onCallChanged);
  *v2 = nullsub_1;
  v2[1] = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CallObserverDelegateWrapper();
  return [(CallObserverDelegateWrapper *)&v4 init];
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC20LiveCommunicationKit27CallObserverDelegateWrapper_onCallChanged);
  v5 = *&self->onCallChanged[OBJC_IVAR____TtC20LiveCommunicationKit27CallObserverDelegateWrapper_onCallChanged];
  changedCopy = changed;
  selfCopy = self;

  v6(changedCopy);
}

@end