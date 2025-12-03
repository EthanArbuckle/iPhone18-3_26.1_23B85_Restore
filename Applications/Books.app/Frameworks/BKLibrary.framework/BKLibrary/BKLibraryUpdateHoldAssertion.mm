@interface BKLibraryUpdateHoldAssertion
- (BKLibraryUpdateHoldAssertion)initWithRelease:(id)release;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKLibraryUpdateHoldAssertion

- (BKLibraryUpdateHoldAssertion)initWithRelease:(id)release
{
  releaseCopy = release;
  v9.receiver = self;
  v9.super_class = BKLibraryUpdateHoldAssertion;
  v5 = [(BKLibraryUpdateHoldAssertion *)&v9 init];
  if (v5)
  {
    v6 = [releaseCopy copy];
    releaseBlock = v5->_releaseBlock;
    v5->_releaseBlock = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(BKLibraryUpdateHoldAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = BKLibraryUpdateHoldAssertion;
  [(BKLibraryUpdateHoldAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  v4 = objc_retainBlock(self->_releaseBlock);
  if (v4)
  {
    v4[2]();
  }

  releaseBlock = self->_releaseBlock;
  self->_releaseBlock = 0;
}

@end