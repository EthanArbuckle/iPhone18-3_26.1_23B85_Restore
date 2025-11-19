@interface AXMDataPointValue
+ (id)emptyValue;
+ (id)valueWithCategory:(id)a3;
+ (id)valueWithNumber:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation AXMDataPointValue

+ (id)valueWithNumber:(double)a3
{
  v4 = objc_alloc_init(AXMDataPointValue);
  [(AXMDataPointValue *)v4 setNumber:a3];

  return v4;
}

+ (id)valueWithCategory:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AXMDataPointValue);
  [(AXMDataPointValue *)v4 setCategory:v3];

  return v4;
}

+ (id)emptyValue
{
  v2 = objc_alloc_init(AXMDataPointValue);
  [(AXMDataPointValue *)v2 setIsEmptyValue:1];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(AXMDataPointValue *)self number];
  [v4 setNumber:?];
  v5 = [(AXMDataPointValue *)self category];
  v6 = [v5 copy];
  [v4 setCategory:v6];

  [v4 setIsEmptyValue:{-[AXMDataPointValue isEmptyValue](self, "isEmptyValue")}];
  return v4;
}

- (id)description
{
  v3 = [(AXMDataPointValue *)self category];
  if (v3)
  {
    v4 = [(AXMDataPointValue *)self category];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = MEMORY[0x1E696AD98];
    [(AXMDataPointValue *)self number];
    v7 = [v6 numberWithDouble:?];
    v4 = [v5 stringWithFormat:@"%@ ", v7];
  }

  return v4;
}

@end