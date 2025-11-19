@interface QLDataSource
- (QLDataSource)initWithPreviewItems:(id)a3;
- (void)previewItemAtIndex:(unint64_t)a3 withCompletionHandler:(id)a4;
@end

@implementation QLDataSource

- (QLDataSource)initWithPreviewItems:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = QLDataSource;
  v6 = [(QLDataSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_previewItems, a3);
    v8 = v7;
  }

  return v7;
}

- (void)previewItemAtIndex:(unint64_t)a3 withCompletionHandler:(id)a4
{
  previewItems = self->_previewItems;
  v8 = a4;
  v11 = [(NSArray *)previewItems objectAtIndexedSubscript:a3];
  v9 = [(NSArray *)self->_previewItems objectAtIndexedSubscript:a3];
  v10 = [v9 fetcher];
  (*(a4 + 2))(v8, v11, v10);
}

@end