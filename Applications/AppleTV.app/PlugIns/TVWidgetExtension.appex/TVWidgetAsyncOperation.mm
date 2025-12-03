@interface TVWidgetAsyncOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (_TtC17TVWidgetExtension22TVWidgetAsyncOperation)init;
- (void)start;
@end

@implementation TVWidgetAsyncOperation

- (_TtC17TVWidgetExtension22TVWidgetAsyncOperation)init
{
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation_lock) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__state) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for TVWidgetAsyncOperation();
  return [(TVWidgetAsyncOperation *)&v4 init];
}

- (BOOL)isExecuting
{
  selfCopy = self;
  v3 = sub_100017C78();

  return v3 & 1;
}

- (BOOL)isFinished
{
  selfCopy = self;
  v3 = sub_100017D94();

  return v3 & 1;
}

- (void)start
{
  selfCopy = self;
  sub_100017F48();
}

@end