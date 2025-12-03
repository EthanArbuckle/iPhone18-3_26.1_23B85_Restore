@interface CRLiOSCanvasDragItem
- (CRLiOSCanvasDragItem)initWithItemProvider:(id)provider previewGeneratingBlock:(id)block;
- (id)sourceObject;
@end

@implementation CRLiOSCanvasDragItem

- (CRLiOSCanvasDragItem)initWithItemProvider:(id)provider previewGeneratingBlock:(id)block
{
  providerCopy = provider;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = CRLiOSCanvasDragItem;
  v9 = [(CRLiOSCanvasDragItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemProvider, provider);
    v11 = [blockCopy copy];
    previewGeneratingBlock = v10->_previewGeneratingBlock;
    v10->_previewGeneratingBlock = v11;
  }

  return v10;
}

- (id)sourceObject
{
  WeakRetained = objc_loadWeakRetained(&self->sourceObject);

  return WeakRetained;
}

@end