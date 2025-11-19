@interface DragAndDropPreviewImage
- (UIDragPreview)dragPreview;
- (id)targetedDragPreviewWithTarget:(id)a3;
@end

@implementation DragAndDropPreviewImage

- (id)targetedDragPreviewWithTarget:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UIDragPreviewParameters);
  v6 = [(DragAndDropPreviewImage *)self visiblePath];
  [v5 setVisiblePath:v6];

  v7 = [UIImageView alloc];
  v8 = [(DragAndDropPreviewImage *)self image];
  v9 = [v7 initWithImage:v8];

  v10 = [[UITargetedDragPreview alloc] initWithView:v9 parameters:v5 target:v4];

  return v10;
}

- (UIDragPreview)dragPreview
{
  v3 = objc_alloc_init(UIDragPreviewParameters);
  v4 = [(DragAndDropPreviewImage *)self visiblePath];
  [v3 setVisiblePath:v4];

  v5 = [UIImageView alloc];
  v6 = [(DragAndDropPreviewImage *)self image];
  v7 = [v5 initWithImage:v6];

  v8 = [[UIDragPreview alloc] initWithView:v7 parameters:v3];

  return v8;
}

@end