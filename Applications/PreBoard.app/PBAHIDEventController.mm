@interface PBAHIDEventController
+ (id)sharedController;
- (PBAHIDEventController)init;
- (void)startReceivingEvents;
- (void)stopReceivingEvents;
@end

@implementation PBAHIDEventController

+ (id)sharedController
{
  if (qword_100025770 != -1)
  {
    sub_10000D15C();
  }

  v3 = qword_100025768;

  return v3;
}

- (PBAHIDEventController)init
{
  v11.receiver = self;
  v11.super_class = PBAHIDEventController;
  v2 = [(PBAHIDEventController *)&v11 init];
  if (v2)
  {
    v3 = +[BKSHIDEventDispatchingTarget systemTarget];
    v4 = +[BKSMutableHIDEventDiscreteDispatchingPredicate defaultSystemPredicate];
    [v4 setSenderDescriptors:0];
    v5 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v4 toTarget:v3];
    v6 = +[BKSMutableHIDEventDiscreteDispatchingPredicate defaultFocusPredicate];
    [v6 setSenderDescriptors:0];
    v7 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v6 toTarget:v3];
    v12[0] = v5;
    v12[1] = v7;
    v8 = [NSArray arrayWithObjects:v12 count:2];
    dispatchingRules = v2->_dispatchingRules;
    v2->_dispatchingRules = v8;
  }

  return v2;
}

- (void)startReceivingEvents
{
  if (self->_eventDispatchAssertion)
  {
    sub_10000D170(a2, self);
  }

  v5 = +[BKSHIDEventDeliveryManager sharedInstance];
  v3 = [v5 dispatchDiscreteEventsForReason:@"PreBoard in the house" withRules:self->_dispatchingRules];
  eventDispatchAssertion = self->_eventDispatchAssertion;
  self->_eventDispatchAssertion = v3;
}

- (void)stopReceivingEvents
{
  [(BSInvalidatable *)self->_eventDispatchAssertion invalidate];
  eventDispatchAssertion = self->_eventDispatchAssertion;
  self->_eventDispatchAssertion = 0;
}

@end