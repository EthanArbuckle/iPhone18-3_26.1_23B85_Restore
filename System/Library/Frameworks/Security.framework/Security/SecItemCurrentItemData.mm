@interface SecItemCurrentItemData
- (SecItemCurrentItemData)initWithPersistentRef:(id)a3;
@end

@implementation SecItemCurrentItemData

- (SecItemCurrentItemData)initWithPersistentRef:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SecItemCurrentItemData;
  v5 = [(SecItemCurrentItemData *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SecItemCurrentItemData *)v5 setPersistentRef:v4];
    v7 = v6;
  }

  return v6;
}

@end