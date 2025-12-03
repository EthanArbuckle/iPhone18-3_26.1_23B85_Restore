@interface DragAndDropPreviewImage
- (UIDragPreview)dragPreview;
- (id)targetedDragPreviewWithTarget:(id)target;
@end

@implementation DragAndDropPreviewImage

- (id)targetedDragPreviewWithTarget:(id)target
{
  targetCopy = target;
  v5 = objc_alloc_init(UIDragPreviewParameters);
  visiblePath = [(DragAndDropPreviewImage *)self visiblePath];
  [v5 setVisiblePath:visiblePath];

  v7 = [UIImageView alloc];
  image = [(DragAndDropPreviewImage *)self image];
  v9 = [v7 initWithImage:image];

  v10 = [[UITargetedDragPreview alloc] initWithView:v9 parameters:v5 target:targetCopy];

  return v10;
}

- (UIDragPreview)dragPreview
{
  v3 = objc_alloc_init(UIDragPreviewParameters);
  visiblePath = [(DragAndDropPreviewImage *)self visiblePath];
  [v3 setVisiblePath:visiblePath];

  v5 = [UIImageView alloc];
  image = [(DragAndDropPreviewImage *)self image];
  v7 = [v5 initWithImage:image];

  v8 = [[UIDragPreview alloc] initWithView:v7 parameters:v3];

  return v8;
}

@end