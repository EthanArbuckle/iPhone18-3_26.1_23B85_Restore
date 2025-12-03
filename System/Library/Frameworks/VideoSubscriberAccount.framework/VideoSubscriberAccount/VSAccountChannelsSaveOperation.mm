@interface VSAccountChannelsSaveOperation
- (VSAccountChannelsSaveOperation)init;
- (VSAccountChannelsSaveOperation)initWithUnsavedAccountChannels:(id)channels accountChannelsCenter:(id)center;
- (void)executionDidBegin;
@end

@implementation VSAccountChannelsSaveOperation

- (VSAccountChannelsSaveOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSAccountChannelsSaveOperation)initWithUnsavedAccountChannels:(id)channels accountChannelsCenter:(id)center
{
  channelsCopy = channels;
  centerCopy = center;
  if (!channelsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accountChannels parameter must not be nil."];
  }

  v12.receiver = self;
  v12.super_class = VSAccountChannelsSaveOperation;
  v9 = [(VSAccountChannelsSaveOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unsavedAccountChannels, channels);
    objc_storeStrong(&v10->_accountChannelsCenter, center);
  }

  return v10;
}

- (void)executionDidBegin
{
  unsavedAccountChannels = [(VSAccountChannelsSaveOperation *)self unsavedAccountChannels];
  objc_initWeak(&location, self);
  accountChannelsCenter = [(VSAccountChannelsSaveOperation *)self accountChannelsCenter];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__VSAccountChannelsSaveOperation_executionDidBegin__block_invoke;
  v5[3] = &unk_278B73358;
  objc_copyWeak(&v6, &location);
  [accountChannelsCenter _saveAccountChannels:unsavedAccountChannels withCompletionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __51__VSAccountChannelsSaveOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setError:v5];
    [v4 finishExecutionIfPossible];
  }
}

@end