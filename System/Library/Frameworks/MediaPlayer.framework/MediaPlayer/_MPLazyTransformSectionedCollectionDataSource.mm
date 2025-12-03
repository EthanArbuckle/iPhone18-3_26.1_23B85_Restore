@interface _MPLazyTransformSectionedCollectionDataSource
- (_MPLazyTransformSectionedCollectionDataSource)initWithSectionedCollection:(id)collection sectionTransform:(id)transform itemTransform:(id)itemTransform;
- (id)itemAtIndexPath:(id)path;
- (id)sectionAtIndex:(unint64_t)index;
@end

@implementation _MPLazyTransformSectionedCollectionDataSource

- (id)sectionAtIndex:(unint64_t)index
{
  sectionTransform = self->_sectionTransform;
  v5 = [(MPSectionedCollection *)self->_collection sectionAtIndex:?];
  v6 = sectionTransform[2](sectionTransform, v5, index);

  return v6;
}

- (id)itemAtIndexPath:(id)path
{
  itemTransform = self->_itemTransform;
  collection = self->_collection;
  pathCopy = path;
  v6 = [(MPSectionedCollection *)collection itemAtIndexPath:pathCopy];
  v7 = itemTransform[2](itemTransform, v6, pathCopy);

  return v7;
}

- (_MPLazyTransformSectionedCollectionDataSource)initWithSectionedCollection:(id)collection sectionTransform:(id)transform itemTransform:(id)itemTransform
{
  collectionCopy = collection;
  transformCopy = transform;
  itemTransformCopy = itemTransform;
  v19.receiver = self;
  v19.super_class = _MPLazyTransformSectionedCollectionDataSource;
  v12 = [(_MPLazyTransformSectionedCollectionDataSource *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collection, collection);
    v14 = _Block_copy(transformCopy);
    sectionTransform = v13->_sectionTransform;
    v13->_sectionTransform = v14;

    v16 = _Block_copy(itemTransformCopy);
    itemTransform = v13->_itemTransform;
    v13->_itemTransform = v16;
  }

  return v13;
}

@end