@interface MPMusicPlayerControllerQueue
- (MPMusicPlayerControllerQueue)initWithController:(id)controller;
- (void)fault;
@end

@implementation MPMusicPlayerControllerQueue

- (void)fault
{
  objectEnumerator = [(NSArray *)self->_items objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  items = self->_items;
  self->_items = allObjects;
}

- (MPMusicPlayerControllerQueue)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerControllerQueue;
  v5 = [(MPMusicPlayerControllerQueue *)&v9 init];
  if (v5)
  {
    v6 = [[_MPMusicPlayerQueueItemsProxy alloc] initWithController:controllerCopy];
    items = v5->_items;
    v5->_items = &v6->super;
  }

  return v5;
}

@end