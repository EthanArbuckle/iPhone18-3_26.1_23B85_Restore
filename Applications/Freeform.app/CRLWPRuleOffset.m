@interface CRLWPRuleOffset
+ (id)ruleOffset;
+ (id)ruleOffsetWithDX:(double)a3 dY:(double)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)pointValue;
- (CGSize)sizeValue;
- (CRLWPRuleOffset)initWithDX:(double)a3 dY:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CRLWPRuleOffset

+ (id)ruleOffset
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)ruleOffsetWithDX:(double)a3 dY:(double)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithDX:a3 dY:a4];

  return v4;
}

- (CRLWPRuleOffset)initWithDX:(double)a3 dY:(double)a4
{
  v7.receiver = self;
  v7.super_class = CRLWPRuleOffset;
  result = [(CRLWPRuleOffset *)&v7 init];
  if (result)
  {
    result->_dX = a3;
    result->_dY = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  dX = self->_dX;
  dY = self->_dY;

  return [v4 initWithDX:dX dY:dY];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  v7 = v6;
  if (v6 && (dX = self->_dX, [v6 dX], dX == v9))
  {
    dY = self->_dY;
    [v7 dY];
    v12 = dY == v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGPoint)pointValue
{
  dX = self->_dX;
  dY = self->_dY;
  result.y = dY;
  result.x = dX;
  return result;
}

- (CGSize)sizeValue
{
  dX = self->_dX;
  dY = self->_dY;
  result.height = dY;
  result.width = dX;
  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: dY=%+g dY=%+g>", v4, *&self->_dX, *&self->_dY];;

  return v5;
}

@end