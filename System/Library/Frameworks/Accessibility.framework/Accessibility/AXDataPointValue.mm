@interface AXDataPointValue
+ (AXDataPointValue)valueWithCategory:(NSString *)category;
+ (AXDataPointValue)valueWithNumber:(double)number;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(AXDataPointValue *)self number];
  [v4 setNumber:?];
  v5 = [(AXDataPointValue *)self category];
  v6 = [v5 copy];
  [v4 setCategory:v6];

  return v4;
}

- (id)description
{
  v3 = [(AXDataPointValue *)self category];
  if (v3)
  {
    v4 = [(AXDataPointValue *)self category];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = MEMORY[0x1E696AD98];
    [(AXDataPointValue *)self number];
    v7 = [v6 numberWithDouble:?];
    v4 = [v5 stringWithFormat:@"%@", v7];
  }

  return v4;
}

@end