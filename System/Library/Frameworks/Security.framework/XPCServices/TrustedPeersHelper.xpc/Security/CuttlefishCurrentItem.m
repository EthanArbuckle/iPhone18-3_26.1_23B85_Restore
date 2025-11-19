@interface CuttlefishCurrentItem
- (CuttlefishCurrentItem)initWithCoder:(id)a3;
- (id)description;
- (id)init:(id)a3 item:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CuttlefishCurrentItem

- (CuttlefishCurrentItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CuttlefishCurrentItem;
  v5 = [(CuttlefishCurrentItem *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"item"];
    item = v5->_item;
    v5->_item = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemPtr"];
    itemPtr = v5->_itemPtr;
    v5->_itemPtr = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CuttlefishCurrentItem *)self itemPtr];
  [v4 encodeObject:v5 forKey:@"itemPtr"];

  v6 = [(CuttlefishCurrentItem *)self item];
  [v4 encodeObject:v6 forKey:@"item"];
}

- (id)description
{
  v2 = [(CuttlefishCurrentItem *)self itemPtr];
  v3 = [NSString stringWithFormat:@"<CuttlefishCurrentItem(%@)>", v2];

  return v3;
}

- (id)init:(id)a3 item:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CuttlefishCurrentItem;
  v9 = [(CuttlefishCurrentItem *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_itemPtr, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

@end