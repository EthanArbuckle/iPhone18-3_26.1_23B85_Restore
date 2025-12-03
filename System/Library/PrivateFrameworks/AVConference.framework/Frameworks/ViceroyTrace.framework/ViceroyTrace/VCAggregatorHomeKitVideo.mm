@interface VCAggregatorHomeKitVideo
- (id)dispatchedAggregatedSessionReport;
- (void)reset;
@end

@implementation VCAggregatorHomeKitVideo

- (void)reset
{
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  [(VCAggregatorDelegate *)self->super.super._delegate reportSegment:[(VCAggregator *)self dispatchedAggregatedSegmentReport:2] withMessageType:2 clientType:3];
  v3.receiver = self;
  v3.super_class = VCAggregatorHomeKitVideo;
  [(VCAggregatorVideoStream *)&v3 reset];
}

uint64_t __76__VCAggregatorHomeKitVideo_dispatchedProcessEventWithCategory_type_payload___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntValue];
  *(*(a1 + 32) + 1472) = result;
  return result;
}

- (id)dispatchedAggregatedSessionReport
{
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  v5.receiver = self;
  v5.super_class = VCAggregatorHomeKitVideo;
  dispatchedAggregatedSessionReport = [(VCAggregatorVideoStream *)&v5 dispatchedAggregatedSessionReport];
  [dispatchedAggregatedSessionReport setObject:&unk_284FA57C8 forKeyedSubscript:@"RVER"];
  [dispatchedAggregatedSessionReport setObject:@"video" forKeyedSubscript:@"HKMT"];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_connectionType), @"HKCT"}];
  return dispatchedAggregatedSessionReport;
}

@end