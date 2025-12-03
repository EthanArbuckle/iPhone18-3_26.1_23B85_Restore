@interface CRLUSDExporterItem
- (CGSize)size;
- (CRLUSDExporterItem)initWithURL:(id)l;
@end

@implementation CRLUSDExporterItem

- (CRLUSDExporterItem)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = CRLUSDExporterItem;
  v6 = [(CRLUSDExporterItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v7->_type = 0;
    v7->_size = CGSizeZero;
    *v7->_scale = 0u;
    *v7->_translation = 0u;
    *v7->_rotation = 0u;
  }

  return v7;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end