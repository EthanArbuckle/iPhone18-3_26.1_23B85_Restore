@interface HomeDragLocalContext
- (HomeDragLocalContext)initWithItemSnapshot:(id)snapshot dragAndDropMapItem:(id)item;
@end

@implementation HomeDragLocalContext

- (HomeDragLocalContext)initWithItemSnapshot:(id)snapshot dragAndDropMapItem:(id)item
{
  snapshotCopy = snapshot;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = HomeDragLocalContext;
  v9 = [(HomeDragLocalContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemSnapshot, snapshot);
    objc_storeStrong(&v10->_dragAndDropMapItem, item);
  }

  return v10;
}

@end