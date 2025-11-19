@interface _MPMusicPlayerQueueItemsProxy
- (MPMusicPlayerApplicationController)controller;
- (_MPMusicPlayerQueueItemsProxy)initWithController:(id)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)count;
@end

@implementation _MPMusicPlayerQueueItemsProxy

- (MPMusicPlayerApplicationController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (id)objectAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v5 = [WeakRetained nowPlayingAtIndex:a3];

  v6 = [v5 item];

  if (v6)
  {
    v7 = [_MPMusicPlayerMediaItemProxy alloc];
    v8 = [v5 itemIdentifier];
    v9 = [v5 item];
    v6 = [(_MPMusicPlayerMediaItemProxy *)v7 initWithItemIdentifier:v8 item:v9];
  }

  return v6;
}

- (unint64_t)count
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v3 = [WeakRetained numberOfItems];

  return v3;
}

- (_MPMusicPlayerQueueItemsProxy)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _MPMusicPlayerQueueItemsProxy;
  v5 = [(_MPMusicPlayerQueueItemsProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, v4);
  }

  return v6;
}

@end