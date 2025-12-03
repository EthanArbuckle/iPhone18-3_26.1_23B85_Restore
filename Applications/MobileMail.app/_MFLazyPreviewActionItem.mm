@interface _MFLazyPreviewActionItem
+ (id)previewActionItemWithTitle:(id)title dataSource:(id)source;
- (BOOL)isKindOfClass:(Class)class;
- (id)_actions;
- (id)handler;
@end

@implementation _MFLazyPreviewActionItem

+ (id)previewActionItemWithTitle:(id)title dataSource:(id)source
{
  sourceCopy = source;
  v7 = [self actionGroupWithTitle:title style:0 actions:&__NSArray0__struct];
  [v7 setDataSource:sourceCopy];

  return v7;
}

- (id)_actions
{
  dataSource = [(_MFLazyPreviewActionItem *)self dataSource];
  lazyPreviewActions = [dataSource lazyPreviewActions];

  return lazyPreviewActions;
}

- (id)handler
{
  dataSource = [(_MFLazyPreviewActionItem *)self dataSource];
  lazyPreviewActionHandler = [dataSource lazyPreviewActionHandler];

  return lazyPreviewActionHandler;
}

- (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    dataSource = [(_MFLazyPreviewActionItem *)self dataSource];
    lazyPreviewActions = [dataSource lazyPreviewActions];
    v7 = [lazyPreviewActions count];

    if (!v7)
    {
      return 0;
    }
  }

  v9.receiver = self;
  v9.super_class = _MFLazyPreviewActionItem;
  return [(_MFLazyPreviewActionItem *)&v9 isKindOfClass:class];
}

@end