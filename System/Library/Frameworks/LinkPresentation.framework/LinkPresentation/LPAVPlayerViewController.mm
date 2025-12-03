@interface LPAVPlayerViewController
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForDisplayWithCompletionHandler:(id)handler;
@end

@implementation LPAVPlayerViewController

- (void)dealloc
{
  if (self->_readyForDisplayCallback)
  {
    [(LPAVPlayerViewController *)self removeObserver:self forKeyPath:@"readyForDisplay" context:&readyForDisplayKVOContext_0];
  }

  v3.receiver = self;
  v3.super_class = LPAVPlayerViewController;
  [(LPAVPlayerViewController *)&v3 dealloc];
}

- (void)prepareForDisplayWithCompletionHandler:(id)handler
{
  aBlock = handler;
  if ([(LPAVPlayerViewController *)self isReadyForDisplay])
  {
    aBlock[2]();
  }

  else
  {
    if (!self->_readyForDisplayCallback)
    {
      [(LPAVPlayerViewController *)self addObserver:self forKeyPath:@"readyForDisplay" options:0 context:&readyForDisplayKVOContext_0];
    }

    v4 = _Block_copy(aBlock);
    readyForDisplayCallback = self->_readyForDisplayCallback;
    self->_readyForDisplayCallback = v4;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &readyForDisplayKVOContext_0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__LPAVPlayerViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7A35450;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = LPAVPlayerViewController;
    [(LPAVPlayerViewController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

uint64_t __75__LPAVPlayerViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 2000);
  if (result)
  {
    (*(result + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 2000);
    *(v3 + 2000) = 0;

    v5 = *(a1 + 32);

    return [v5 removeObserver:v5 forKeyPath:@"readyForDisplay" context:&readyForDisplayKVOContext_0];
  }

  return result;
}

@end