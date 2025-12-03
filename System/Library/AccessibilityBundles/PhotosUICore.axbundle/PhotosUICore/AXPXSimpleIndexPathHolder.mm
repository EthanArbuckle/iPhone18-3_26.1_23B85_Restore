@interface AXPXSimpleIndexPathHolder
- (AXPXSimpleIndexPathHolder)initWithIndexPath:(PXSimpleIndexPath *)path;
- (PXSimpleIndexPath)indexPath;
- (void)setIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation AXPXSimpleIndexPathHolder

- (AXPXSimpleIndexPathHolder)initWithIndexPath:(PXSimpleIndexPath *)path
{
  v9.receiver = self;
  v9.super_class = AXPXSimpleIndexPathHolder;
  v4 = [(AXPXSimpleIndexPathHolder *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&path->item;
    v8[0] = *&path->dataSourceIdentifier;
    v8[1] = v6;
    [(AXPXSimpleIndexPathHolder *)v4 setIndexPath:v8];
  }

  return v5;
}

- (PXSimpleIndexPath)indexPath
{
  v3 = *&self->subitem;
  *&retstr->dataSourceIdentifier = *&self->section;
  *&retstr->item = v3;
  return self;
}

- (void)setIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->dataSourceIdentifier;
  *&self->_indexPath.item = *&path->item;
  *&self->_indexPath.dataSourceIdentifier = v3;
}

@end