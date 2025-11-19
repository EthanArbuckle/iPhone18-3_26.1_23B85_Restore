@interface AXPXSimpleIndexPathHolder
- (AXPXSimpleIndexPathHolder)initWithIndexPath:(PXSimpleIndexPath *)a3;
- (PXSimpleIndexPath)indexPath;
- (void)setIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation AXPXSimpleIndexPathHolder

- (AXPXSimpleIndexPathHolder)initWithIndexPath:(PXSimpleIndexPath *)a3
{
  v9.receiver = self;
  v9.super_class = AXPXSimpleIndexPathHolder;
  v4 = [(AXPXSimpleIndexPathHolder *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&a3->item;
    v8[0] = *&a3->dataSourceIdentifier;
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

- (void)setIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->dataSourceIdentifier;
  *&self->_indexPath.item = *&a3->item;
  *&self->_indexPath.dataSourceIdentifier = v3;
}

@end