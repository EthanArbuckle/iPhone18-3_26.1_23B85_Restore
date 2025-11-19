@interface ICBrowseAttachmentsDragAndDropDelegate
+ (id)sharedInstance;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)dragItemsForItemAtIndexPath:(id)a3 collectionView:(id)a4;
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

- (id)dragItemsForItemAtIndexPath:(id)a3 collectionView:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v5 cellForItemAtIndexPath:v6];

  v8 = ICDynamicCast();

  v9 = [v8 dragItemForAttachment];
  v10 = v9;
  if (v9)
  {
    v13 = v9;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [a4 localContext];

  if (v11 == self)
  {
    v12 = [(ICBrowseAttachmentsDragAndDropDelegate *)self dragItemsForItemAtIndexPath:v10 collectionView:v9];
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v4 = [a3 cellForItemAtIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = ICDynamicCast();
    v6 = objc_alloc_init(UIDragPreviewParameters);
    v7 = [v5 attachmentBrickView];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v7 layer];
    [v16 cornerRadius];
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