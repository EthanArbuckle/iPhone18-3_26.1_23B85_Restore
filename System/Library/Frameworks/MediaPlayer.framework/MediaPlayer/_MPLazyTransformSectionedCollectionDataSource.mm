@interface _MPLazyTransformSectionedCollectionDataSource
- (_MPLazyTransformSectionedCollectionDataSource)initWithSectionedCollection:(id)a3 sectionTransform:(id)a4 itemTransform:(id)a5;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionAtIndex:(unint64_t)a3;
@end

@implementation _MPLazyTransformSectionedCollectionDataSource

- (id)sectionAtIndex:(unint64_t)a3
{
  sectionTransform = self->_sectionTransform;
  v5 = [(MPSectionedCollection *)self->_collection sectionAtIndex:?];
  v6 = sectionTransform[2](sectionTransform, v5, a3);

  return v6;
}

- (id)itemAtIndexPath:(id)a3
{
  itemTransform = self->_itemTransform;
  collection = self->_collection;
  v5 = a3;
  v6 = [(MPSectionedCollection *)collection itemAtIndexPath:v5];
  v7 = itemTransform[2](itemTransform, v6, v5);

  return v7;
}

- (_MPLazyTransformSectionedCollectionDataSource)initWithSectionedCollection:(id)a3 sectionTransform:(id)a4 itemTransform:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = _MPLazyTransformSectionedCollectionDataSource;
  v12 = [(_MPLazyTransformSectionedCollectionDataSource *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collection, a3);
    v14 = _Block_copy(v10);
    sectionTransform = v13->_sectionTransform;
    v13->_sectionTransform = v14;

    v16 = _Block_copy(v11);
    itemTransform = v13->_itemTransform;
    v13->_itemTransform = v16;
  }

  return v13;
}

@end