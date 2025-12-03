@interface MusicKit_SoftLinking_MPMusicPlayerControllerMutableQueue
- (id)_initWithUnderlyingMutableQueue:(id)queue;
- (void)insertQueueDescriptor:(id)descriptor afterItemWithIdentifier:(id)identifier;
@end

@implementation MusicKit_SoftLinking_MPMusicPlayerControllerMutableQueue

- (id)_initWithUnderlyingMutableQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPMusicPlayerControllerMutableQueue;
  v6 = [(MusicKit_SoftLinking_MPMusicPlayerControllerMutableQueue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingMutableQueue, queue);
  }

  return v7;
}

- (void)insertQueueDescriptor:(id)descriptor afterItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _underlyingQueueDescriptor = [descriptor _underlyingQueueDescriptor];
  [(MPMusicPlayerControllerMutableQueue *)self->_underlyingMutableQueue _insertQueueDescriptor:_underlyingQueueDescriptor afterItemWithIdentifier:identifierCopy];
}

@end