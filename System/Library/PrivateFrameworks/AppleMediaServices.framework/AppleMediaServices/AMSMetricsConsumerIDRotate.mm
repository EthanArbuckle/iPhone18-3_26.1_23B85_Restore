@interface AMSMetricsConsumerIDRotate
+ (void)rotateWithAccountID:(AMSAccountIdentity *)a3 bag:(AMSBagProtocol *)a4 namespaceList:(NSArray *)a5 completionHandler:(id)a6;
@end

@implementation AMSMetricsConsumerIDRotate

+ (void)rotateWithAccountID:(AMSAccountIdentity *)a3 bag:(AMSBagProtocol *)a4 namespaceList:(NSArray *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a5;

  sub_1928FB3BC(&unk_192FC6598, v11);
}

@end