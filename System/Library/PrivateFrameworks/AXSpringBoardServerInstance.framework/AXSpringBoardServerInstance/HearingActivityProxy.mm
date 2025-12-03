@interface HearingActivityProxy
- (void)finishWithCompletionHandler:(id)handler;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation HearingActivityProxy

- (void)startWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v3 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v3 + 24) = self;
  sub_21FEAA53C(&unk_21FEB5800, v3);
}

- (void)finishWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v3 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v3 + 24) = self;
  sub_21FEAA53C(&unk_21FEB5818, v3);
}

@end