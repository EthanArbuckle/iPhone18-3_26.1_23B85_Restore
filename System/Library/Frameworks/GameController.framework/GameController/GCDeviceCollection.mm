@interface GCDeviceCollection
- (BOOL)isEqual:(id)a3;
- (GCDeviceCollection)init;
- (id)orderedCollection;
- (id)underlyingCollection;
- (void)initWithUnderlyingCollection:(void *)a1;
@end

@implementation GCDeviceCollection

- (id)orderedCollection
{
  if (a1)
  {
    v1 = [*(a1 + 8) allObjects];
    v2 = [v1 sortedArrayUsingComparator:&__block_literal_global_11];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    underlyingCollection = self->_underlyingCollection;
    v8 = [(GCDeviceCollection *)v4 underlyingCollection];
    v5 = [(NSSet *)underlyingCollection isEqualToSet:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithUnderlyingCollection:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
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
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

@end