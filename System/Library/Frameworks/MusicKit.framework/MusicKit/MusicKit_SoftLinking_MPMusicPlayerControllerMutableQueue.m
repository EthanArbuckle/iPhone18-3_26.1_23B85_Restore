@interface MusicKit_SoftLinking_MPMusicPlayerControllerMutableQueue
- (id)_initWithUnderlyingMutableQueue:(id)a3;
- (void)insertQueueDescriptor:(id)a3 afterItemWithIdentifier:(id)a4;
@end

@implementation MusicKit_SoftLinking_MPMusicPlayerControllerMutableQueue

- (id)_initWithUnderlyingMutableQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPMusicPlayerControllerMutableQueue;
  v6 = [(MusicKit_SoftLinking_MPMusicPlayerControllerMutableQueue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingMutableQueue, a3);
  }

  return v7;
}

- (void)insertQueueDescriptor:(id)a3 afterItemWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a3 _underlyingQueueDescriptor];
  [(MPMusicPlayerControllerMutableQueue *)self->_underlyingMutableQueue _insertQueueDescriptor:v7 afterItemWithIdentifier:v6];
}

@end