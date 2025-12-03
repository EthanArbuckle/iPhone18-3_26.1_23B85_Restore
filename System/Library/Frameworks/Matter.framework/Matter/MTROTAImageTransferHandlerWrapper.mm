@interface MTROTAImageTransferHandlerWrapper
- (MTROTAImageTransferHandlerWrapper)initWithMTROTAImageTransferHandler:(void *)handler;
@end

@implementation MTROTAImageTransferHandlerWrapper

- (MTROTAImageTransferHandlerWrapper)initWithMTROTAImageTransferHandler:(void *)handler
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAImageTransferHandler.mm", 107);
  v6.receiver = self;
  v6.super_class = MTROTAImageTransferHandlerWrapper;
  result = [(MTROTAImageTransferHandlerWrapper *)&v6 init];
  if (result)
  {
    result->_otaImageTransferHandler = handler;
  }

  return result;
}

@end