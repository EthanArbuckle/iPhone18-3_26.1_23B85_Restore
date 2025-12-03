@interface ICBrowseAttachmentsDragAndDropDelegate
+ (id)sharedInstance;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)dragItemsForItemAtIndexPath:(id)path collectionView:(id)view;
@end

@implementation ICBrowseAttachmentsDragAndDropDelegate

+ (id)sharedInstance
{
  if (qword_1006CB300 != -1)
  {
    sub_1004DEE60();
  }

  v3 = qword_1006CB2F8;

  return v3;
}

- (id)dragItemsForItemAtIndexPath:(id)path collectionView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  objc_opt_class();
  v7 = [viewCopy cellForItemAtIndexPath:pathCopy];

  v8 = ICDynamicCast();

  dragItemForAttachment = [v8 dragItemForAttachment];
  v10 = dragItemForAttachment;
  if (dragItemForAttachment)
  {
    v13 = dragItemForAttachment;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  localContext = [session localContext];

  if (localContext == self)
  {
    v12 = [(ICBrowseAttachmentsDragAndDropDelegate *)self dragItemsForItemAtIndexPath:pathCopy collectionView:viewCopy];
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v4 = [view cellForItemAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = ICDynamicCast();
    v6 = objc_alloc_init(UIDragPreviewParameters);
    attachmentBrickView = [v5 attachmentBrickView];
    [attachmentBrickView frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    layer = [attachmentBrickView layer];
    [layer cornerRadius];
    v18 = [UIBezierPath bezierPathWithRoundedRect:v9 cornerRadius:v11, v13, v15, v17];

    [v6 setVisiblePath:v18];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end