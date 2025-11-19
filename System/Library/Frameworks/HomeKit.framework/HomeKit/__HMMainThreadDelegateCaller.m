@interface __HMMainThreadDelegateCaller
- (void)invokeBlock:(id)a3;
@end

@implementation __HMMainThreadDelegateCaller

- (void)invokeBlock:(id)a3
{
  v3 = a3;
  if (v3)
  {
    block = v3;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v3 = block;
  }
}

@end