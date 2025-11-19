@interface Service
- (_TtC28ManagedAppDistributionDaemon7Service)init;
- (void)getRemoteContentForLayerContextWithId:(unint64_t)a3 style:(id)a4 tag:(id)a5 reply:(id)a6;
@end

@implementation Service

- (_TtC28ManagedAppDistributionDaemon7Service)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)getRemoteContentForLayerContextWithId:(unint64_t)a3 style:(id)a4 tag:(id)a5 reply:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a4;
  v12 = a5;
  v13 = self;
  sub_1002FD068(a3, v11, v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

@end