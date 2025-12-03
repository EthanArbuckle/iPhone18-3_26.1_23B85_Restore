@interface HPRFSeymourSubscriptionProvider
- (HPRFSeymourSubscriptionProvider)init;
- (void)fetchSubscriptionStatusWithCompletion:(id)completion;
@end

@implementation HPRFSeymourSubscriptionProvider

- (HPRFSeymourSubscriptionProvider)init
{
  sub_ED78();
  sub_B4E8(0, &qword_1DC30, OS_dispatch_queue_ptr);
  v3 = sub_F008();
  sub_ED58();

  sub_B124(&qword_1DC38, &qword_111B0);
  sub_ED68();
  sub_EB14(&v7, self + OBJC_IVAR___HPRFSeymourSubscriptionProvider_subscriptionClient);
  v6.receiver = self;
  v6.super_class = type metadata accessor for SeymourSubscriptionProvider();
  v4 = [(HPRFSeymourSubscriptionProvider *)&v6 init];

  return v4;
}

- (void)fetchSubscriptionStatusWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_D1E4(sub_EB0C, v5);
}

@end