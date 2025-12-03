@interface SecItemCurrentItemData
- (SecItemCurrentItemData)initWithPersistentRef:(id)ref;
@end

@implementation SecItemCurrentItemData

- (SecItemCurrentItemData)initWithPersistentRef:(id)ref
{
  refCopy = ref;
  v9.receiver = self;
  v9.super_class = SecItemCurrentItemData;
  v5 = [(SecItemCurrentItemData *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SecItemCurrentItemData *)v5 setPersistentRef:refCopy];
    v7 = v6;
  }

  return v6;
}

@end