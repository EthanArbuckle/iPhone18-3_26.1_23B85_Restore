@interface PFDUrlHandlerAssetInfo
- (PFDUrlHandlerAssetInfo)initWithContext:(id)a3 bookRootURL:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PFDUrlHandlerAssetInfo

- (PFDUrlHandlerAssetInfo)initWithContext:(id)a3 bookRootURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PFDUrlHandlerAssetInfo *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bookRootURL, a4);
    objc_storeStrong(&v10->_context, a3);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PFDUrlHandlerAssetInfo allocWithZone:?]bookRootURL:"initWithContext:bookRootURL:", self->_context, self->_bookRootURL];
  [(PFDUrlHandlerAssetInfo *)v4 setPath:self->_path];
  return v4;
}

@end