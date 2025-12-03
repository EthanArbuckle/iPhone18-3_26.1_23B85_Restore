@interface CuttlefishCurrentItem
- (CuttlefishCurrentItem)initWithCoder:(id)coder;
- (id)description;
- (id)init:(id)init item:(id)item;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CuttlefishCurrentItem

- (CuttlefishCurrentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CuttlefishCurrentItem;
  v5 = [(CuttlefishCurrentItem *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"item"];
    item = v5->_item;
    v5->_item = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemPtr"];
    itemPtr = v5->_itemPtr;
    v5->_itemPtr = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  itemPtr = [(CuttlefishCurrentItem *)self itemPtr];
  [coderCopy encodeObject:itemPtr forKey:@"itemPtr"];

  item = [(CuttlefishCurrentItem *)self item];
  [coderCopy encodeObject:item forKey:@"item"];
}

- (id)description
{
  itemPtr = [(CuttlefishCurrentItem *)self itemPtr];
  v3 = [NSString stringWithFormat:@"<CuttlefishCurrentItem(%@)>", itemPtr];

  return v3;
}

- (id)init:(id)init item:(id)item
{
  initCopy = init;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = CuttlefishCurrentItem;
  v9 = [(CuttlefishCurrentItem *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_itemPtr, init);
    objc_storeStrong(p_isa + 2, item);
  }

  return p_isa;
}

@end