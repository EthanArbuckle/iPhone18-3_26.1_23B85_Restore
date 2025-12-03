@interface __HMMainThreadDelegateCaller
- (void)invokeBlock:(id)block;
@end

@implementation __HMMainThreadDelegateCaller

- (void)invokeBlock:(id)block
{
  blockCopy2 = block;
  if (blockCopy2)
  {
    block = blockCopy2;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    blockCopy2 = block;
  }
}

@end