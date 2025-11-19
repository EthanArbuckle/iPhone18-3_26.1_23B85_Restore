@interface AXCollectionViewData
- (AXCollectionViewData)init;
- (id)description;
- (uint64_t)childCount;
- (uint64_t)children;
- (uint64_t)setChildCount:(uint64_t)result;
@end

@implementation AXCollectionViewData

- (AXCollectionViewData)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = AXCollectionViewData;
  v7 = [(AXCollectionViewData *)&v5 init];
  objc_storeStrong(&v7, v7);
  if (v7)
  {
    v2 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v3 = *(v7 + 1);
    *(v7 + 1) = v2;
    MEMORY[0x29EDC9740](v3);
    v8 = MEMORY[0x29EDC9748](v7);
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&v7, 0);
  return v8;
}

- (id)description
{
  v8 = self;
  v7 = a2;
  v3 = MEMORY[0x29EDBA0F8];
  v6.receiver = self;
  v6.super_class = AXCollectionViewData;
  v4 = [(AXCollectionViewData *)&v6 description];
  v5 = [v3 stringWithFormat:@"%@ - %@", v4, v8->_children];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (uint64_t)children
{
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0;
  }
}

- (uint64_t)childCount
{
  if (a1)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setChildCount:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

@end