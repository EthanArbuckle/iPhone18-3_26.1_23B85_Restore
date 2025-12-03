@interface MetricsActivity
+ (_TtC8ShelfKit15MetricsActivity)shared;
- (NSString)pageContext;
- (NSString)playContext;
- (NSString)stopContext;
- (NSString)stopType;
- (_TtC8ShelfKit15MetricsActivity)init;
- (void)clearStopInfo;
- (void)setInitiator:(unint64_t)initiator;
- (void)setPlayReason:(unint64_t)reason;
- (void)setStopReason:(unint64_t)reason;
@end

@implementation MetricsActivity

+ (_TtC8ShelfKit15MetricsActivity)shared
{
  if (qword_4E89B8 != -1)
  {
    swift_once();
  }

  v3 = qword_4F2F70;

  return v3;
}

- (NSString)pageContext
{
  selfCopy = self;
  sub_3E87D4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_3ED204();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPlayReason:(unint64_t)reason
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v4 + v6));
  v7 = v4 + *(type metadata accessor for MetricsActivity.State(0) + 36) + v5;
  *v7 = reason;
  *(v7 + 8) = 0;
  os_unfair_lock_unlock((v4 + v6));
}

- (void)setInitiator:(unint64_t)initiator
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v4 + v6));
  v7 = v4 + *(type metadata accessor for MetricsActivity.State(0) + 32) + v5;
  *v7 = initiator;
  *(v7 + 8) = 0;
  os_unfair_lock_unlock((v4 + v6));
}

- (NSString)playContext
{
  selfCopy = self;
  MetricsActivity.playContext.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_3ED204();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStopReason:(unint64_t)reason
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v4 + v6));
  v7 = v4 + *(type metadata accessor for MetricsActivity.State(0) + 40) + v5;
  *v7 = reason;
  *(v7 + 8) = 0;
  os_unfair_lock_unlock((v4 + v6));
}

- (NSString)stopContext
{
  v3 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_3E9874();
  v7 = v5[*(v3 + 40) + 8];
  sub_12B2B4(v5, type metadata accessor for MetricsActivity.State);
  if (v7)
  {

    v8 = 0;
  }

  else
  {
    v9 = NSPersistentStringFromMTStopReason();
    sub_3ED244();

    v10 = sub_3ED204();

    v8 = v10;
  }

  return v8;
}

- (NSString)stopType
{
  v3 = type metadata accessor for MetricsActivity.State(0);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_3E9874();
  v7 = v5[*(v3 + 32) + 8];
  sub_12B2B4(v5, type metadata accessor for MetricsActivity.State);
  if (v7)
  {

    v8 = 0;
  }

  else
  {
    v9 = NSPersistentStringFromMTPlaybackAdjustmentInitiator();
    sub_3ED244();

    v10 = sub_3ED204();

    v8 = v10;
  }

  return v8;
}

- (void)clearStopInfo
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8ShelfKit15MetricsActivity_state);
  v3 = v2 + *(*v2 + class metadata base offset for ManagedBuffer + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v4));
  v5 = type metadata accessor for MetricsActivity.State(0);
  v6 = v3 + *(v5 + 32);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v3 + *(v5 + 40);
  *v7 = 0;
  *(v7 + 8) = 1;
  os_unfair_lock_unlock((v2 + v4));
}

- (_TtC8ShelfKit15MetricsActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end