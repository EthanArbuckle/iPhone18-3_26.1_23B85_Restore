@interface AXDataPointValue
+ (AXDataPointValue)valueWithCategory:(NSString *)category;
+ (AXDataPointValue)valueWithNumber:(double)number;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation AXDataPointValue

+ (AXDataPointValue)valueWithNumber:(double)number
{
  v4 = objc_alloc_init(AXDataPointValue);
  [(AXDataPointValue *)v4 setNumber:number];

  return v4;
}

+ (AXDataPointValue)valueWithCategory:(NSString *)category
{
  v3 = category;
  v4 = objc_alloc_init(AXDataPointValue);
  [(AXDataPointValue *)v4 setCategory:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(AXDataPointValue *)self number];
  [v4 setNumber:?];
  category = [(AXDataPointValue *)self category];
  v6 = [category copy];
  [v4 setCategory:v6];

  return v4;
}

- (id)description
{
  category = [(AXDataPointValue *)self category];
  if (category)
  {
    category2 = [(AXDataPointValue *)self category];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = MEMORY[0x1E696AD98];
    [(AXDataPointValue *)self number];
    v7 = [v6 numberWithDouble:?];
    category2 = [v5 stringWithFormat:@"%@", v7];
  }

  return category2;
}

@end