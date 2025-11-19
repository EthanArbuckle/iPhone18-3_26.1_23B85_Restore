@interface OUSessionDelegateWrapper
- (void)session:(id)a3 didFailWithError:(int64_t)a4;
@end

@implementation OUSessionDelegateWrapper

- (void)session:(id)a3 didFailWithError:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_23A9E2B28(a4, &OBJC_IVAR____TtC8RoomPlan24OUSessionDelegateWrapper_captureSession, &unk_284D87260, sub_23A9E2E3C, &block_descriptor_198);
}

@end