@interface Service
- (_TtC28ManagedAppDistributionDaemon7Service)init;
- (void)getRemoteContentForLayerContextWithId:(unint64_t)id style:(id)style tag:(id)tag reply:(id)reply;
@end

@implementation Service

- (_TtC28ManagedAppDistributionDaemon7Service)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)getRemoteContentForLayerContextWithId:(unint64_t)id style:(id)style tag:(id)tag reply:(id)reply
{
  v10 = _Block_copy(reply);
  _Block_copy(v10);
  styleCopy = style;
  tagCopy = tag;
  selfCopy = self;
  sub_1002FD068(id, styleCopy, tagCopy, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

@end