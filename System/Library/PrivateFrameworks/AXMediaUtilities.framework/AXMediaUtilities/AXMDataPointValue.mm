@interface AXMDataPointValue
+ (id)emptyValue;
+ (id)valueWithCategory:(id)category;
+ (id)valueWithNumber:(double)number;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation AXMDataPointValue

+ (id)valueWithNumber:(double)number
{
  v4 = objc_alloc_init(AXMDataPointValue);
  [(AXMDataPointValue *)v4 setNumber:number];

  return v4;
}

+ (id)valueWithCategory:(id)category
{
  categoryCopy = category;
  v4 = objc_alloc_init(AXMDataPointValue);
  [(AXMDataPointValue *)v4 setCategory:categoryCopy];

  return v4;
}

+ (id)emptyValue
{
  v2 = objc_alloc_init(AXMDataPointValue);
  [(AXMDataPointValue *)v2 setIsEmptyValue:1];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(AXMDataPointValue *)self number];
  [v4 setNumber:?];
  category = [(AXMDataPointValue *)self category];
  v6 = [category copy];
  [v4 setCategory:v6];

  [v4 setIsEmptyValue:{-[AXMDataPointValue isEmptyValue](self, "isEmptyValue")}];
  return v4;
}

- (id)description
{
  category = [(AXMDataPointValue *)self category];
  if (category)
  {
    category2 = [(AXMDataPointValue *)self category];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = MEMORY[0x1E696AD98];
    [(AXMDataPointValue *)self number];
    v7 = [v6 numberWithDouble:?];
    category2 = [v5 stringWithFormat:@"%@ ", v7];
  }

  return category2;
}

@end