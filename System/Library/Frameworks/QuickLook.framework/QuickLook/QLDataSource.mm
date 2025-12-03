@interface QLDataSource
- (QLDataSource)initWithPreviewItems:(id)items;
- (void)previewItemAtIndex:(unint64_t)index withCompletionHandler:(id)handler;
@end

@implementation QLDataSource

- (QLDataSource)initWithPreviewItems:(id)items
{
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = QLDataSource;
  v6 = [(QLDataSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_previewItems, items);
    v8 = v7;
  }

  return v7;
}

- (void)previewItemAtIndex:(unint64_t)index withCompletionHandler:(id)handler
{
  previewItems = self->_previewItems;
  handlerCopy = handler;
  v11 = [(NSArray *)previewItems objectAtIndexedSubscript:index];
  v9 = [(NSArray *)self->_previewItems objectAtIndexedSubscript:index];
  fetcher = [v9 fetcher];
  (*(handler + 2))(handlerCopy, v11, fetcher);
}

@end