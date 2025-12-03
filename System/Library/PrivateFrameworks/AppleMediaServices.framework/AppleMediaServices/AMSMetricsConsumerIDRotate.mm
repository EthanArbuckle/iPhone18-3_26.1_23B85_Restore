@interface AMSMetricsConsumerIDRotate
+ (void)rotateWithAccountID:(AMSAccountIdentity *)d bag:(AMSBagProtocol *)bag namespaceList:(NSArray *)list completionHandler:(id)handler;
@end

@implementation AMSMetricsConsumerIDRotate

+ (void)rotateWithAccountID:(AMSAccountIdentity *)d bag:(AMSBagProtocol *)bag namespaceList:(NSArray *)list completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = bag;
  v11[4] = list;
  v11[5] = v10;
  v11[6] = self;
  dCopy = d;
  swift_unknownObjectRetain();
  listCopy = list;

  sub_1928FB3BC(&unk_192FC6598, v11);
}

@end