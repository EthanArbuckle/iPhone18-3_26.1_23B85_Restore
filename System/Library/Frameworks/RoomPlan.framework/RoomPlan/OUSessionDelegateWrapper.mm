@interface OUSessionDelegateWrapper
- (void)session:(id)session didFailWithError:(int64_t)error;
@end

@implementation OUSessionDelegateWrapper

- (void)session:(id)session didFailWithError:(int64_t)error
{
  sessionCopy = session;
  selfCopy = self;
  sub_23A9E2B28(error, &OBJC_IVAR____TtC8RoomPlan24OUSessionDelegateWrapper_captureSession, &unk_284D87260, sub_23A9E2E3C, &block_descriptor_198);
}

@end