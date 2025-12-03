@interface CRLWPLineSpacing
+ (id)lineSpacing;
- (BOOL)isEqual:(id)equal;
- (CRLWPLineSpacing)initWithMode:(int64_t)mode amount:(double)amount baselineRule:(double)rule;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CRLWPLineSpacing

+ (id)lineSpacing
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (CRLWPLineSpacing)initWithMode:(int64_t)mode amount:(double)amount baselineRule:(double)rule
{
  v9.receiver = self;
  v9.super_class = CRLWPLineSpacing;
  result = [(CRLWPLineSpacing *)&v9 init];
  if (result)
  {
    result->_mode = mode;
    result->_amount = amount;
    result->_baselineRule = rule;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mode = self->_mode;
  amount = self->_amount;
  baselineRule = self->_baselineRule;

  return [v4 initWithMode:mode amount:amount baselineRule:baselineRule];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);
  if (v6 && self->_mode == *(v6 + 8) && ((amount = self->_amount, v8 = *(v6 + 16), amount == v8) || vabdd_f64(amount, v8) < fabs(v8 * 0.000000999999997)))
  {
    baselineRule = self->_baselineRule;
    v10 = *(v6 + 24);
    v11 = baselineRule == v10 || vabdd_f64(baselineRule, v10) < fabs(v10 * 0.000000999999997);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: mode=%lu amount=%f; baselineRule=%f>", v4, self->_mode, *&self->_amount, *&self->_baselineRule];;

  return v5;
}

@end