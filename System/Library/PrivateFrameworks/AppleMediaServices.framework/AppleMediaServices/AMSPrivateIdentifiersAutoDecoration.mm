@interface AMSPrivateIdentifiersAutoDecoration
- (void)autoDecorationIdentifiersForEvent:(AMSMetricsEvent *)event bag:(AMSBagProtocol *)bag completionHandler:(id)handler;
@end

@implementation AMSPrivateIdentifiersAutoDecoration

- (void)autoDecorationIdentifiersForEvent:(AMSMetricsEvent *)event bag:(AMSBagProtocol *)bag completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = event;
  v9[3] = bag;
  v9[4] = v8;
  v9[5] = self;
  eventCopy = event;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_1928FB3BC(&unk_192FC04B8, v9);
}

@end