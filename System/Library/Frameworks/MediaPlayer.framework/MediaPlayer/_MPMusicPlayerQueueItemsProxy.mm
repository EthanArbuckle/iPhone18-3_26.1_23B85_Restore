@interface _MPMusicPlayerQueueItemsProxy
- (MPMusicPlayerApplicationController)controller;
- (_MPMusicPlayerQueueItemsProxy)initWithController:(id)controller;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
@end

@implementation _MPMusicPlayerQueueItemsProxy

- (MPMusicPlayerApplicationController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (id)objectAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v5 = [WeakRetained nowPlayingAtIndex:index];

  item = [v5 item];

  if (item)
  {
    v7 = [_MPMusicPlayerMediaItemProxy alloc];
    itemIdentifier = [v5 itemIdentifier];
    item2 = [v5 item];
    item = [(_MPMusicPlayerMediaItemProxy *)v7 initWithItemIdentifier:itemIdentifier item:item2];
  }

  return item;
}

- (unint64_t)count
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  numberOfItems = [WeakRetained numberOfItems];

  return numberOfItems;
}

- (_MPMusicPlayerQueueItemsProxy)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _MPMusicPlayerQueueItemsProxy;
  v5 = [(_MPMusicPlayerQueueItemsProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
  }

  return v6;
}

@end