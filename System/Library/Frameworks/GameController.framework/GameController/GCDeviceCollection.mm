@interface GCDeviceCollection
- (BOOL)isEqual:(id)equal;
- (GCDeviceCollection)init;
- (id)orderedCollection;
- (id)underlyingCollection;
- (void)initWithUnderlyingCollection:(void *)collection;
@end

@implementation GCDeviceCollection

- (id)orderedCollection
{
  if (self)
  {
    allObjects = [*(self + 8) allObjects];
    v2 = [allObjects sortedArrayUsingComparator:&__block_literal_global_11];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (GCDeviceCollection)init
{
  [(GCDeviceCollection *)self doesNotRecognizeSelector:a2];

  return 0;
}

uint64_t __39__GCDeviceCollection_orderedCollection__block_invoke(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > a3)
  {
    return -1;
  }

  else
  {
    return a2 < a3;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    underlyingCollection = self->_underlyingCollection;
    underlyingCollection = [(GCDeviceCollection *)equalCopy underlyingCollection];
    v5 = [(NSSet *)underlyingCollection isEqualToSet:underlyingCollection];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithUnderlyingCollection:(void *)collection
{
  if (!collection)
  {
    return 0;
  }

  v7.receiver = collection;
  v7.super_class = GCDeviceCollection;
  v2 = a2;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = [v2 copy];

  v5 = v3[1];
  v3[1] = v4;

  return v3;
}

- (id)underlyingCollection
{
  if (self)
  {
    self = self[1];
    v1 = vars8;
  }

  return self;
}

@end