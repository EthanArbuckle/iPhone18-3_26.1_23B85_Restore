@interface MPMusicPlayerControllerQueue
- (MPMusicPlayerControllerQueue)initWithController:(id)a3;
- (void)fault;
@end

@implementation MPMusicPlayerControllerQueue

- (void)fault
{
  v5 = [(NSArray *)self->_items objectEnumerator];
  v3 = [v5 allObjects];
  items = self->_items;
  self->_items = v3;
}

- (MPMusicPlayerControllerQueue)initWithController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerControllerQueue;
  v5 = [(MPMusicPlayerControllerQueue *)&v9 init];
  if (v5)
  {
    v6 = [[_MPMusicPlayerQueueItemsProxy alloc] initWithController:v4];
    items = v5->_items;
    v5->_items = &v6->super;
  }

  return v5;
}

@end