@interface CRLiOSCanvasDragItem
- (CRLiOSCanvasDragItem)initWithItemProvider:(id)a3 previewGeneratingBlock:(id)a4;
- (id)sourceObject;
@end

@implementation CRLiOSCanvasDragItem

- (CRLiOSCanvasDragItem)initWithItemProvider:(id)a3 previewGeneratingBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRLiOSCanvasDragItem;
  v9 = [(CRLiOSCanvasDragItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemProvider, a3);
    v11 = [v8 copy];
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