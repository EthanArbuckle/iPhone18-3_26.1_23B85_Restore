@interface PFDUrlHandlerAssetInfo
- (PFDUrlHandlerAssetInfo)initWithContext:(id)context bookRootURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PFDUrlHandlerAssetInfo

- (PFDUrlHandlerAssetInfo)initWithContext:(id)context bookRootURL:(id)l
{
  contextCopy = context;
  lCopy = l;
  v9 = [(PFDUrlHandlerAssetInfo *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bookRootURL, l);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PFDUrlHandlerAssetInfo allocWithZone:?]bookRootURL:"initWithContext:bookRootURL:", self->_context, self->_bookRootURL];
  [(PFDUrlHandlerAssetInfo *)v4 setPath:self->_path];
  return v4;
}

@end