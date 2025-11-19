@interface DefaultSubjectMonitorToken
- (_TtC13AppProtection26DefaultSubjectMonitorToken)init;
- (void)invalidate;
@end

@implementation DefaultSubjectMonitorToken

- (void)invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13AppProtection26DefaultSubjectMonitorToken_invalidationHandler);
  v3 = *&self->subjectMask[OBJC_IVAR____TtC13AppProtection26DefaultSubjectMonitorToken_invalidationHandler];
  v4 = self;
  v2();
}

- (_TtC13AppProtection26DefaultSubjectMonitorToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end