@interface NCManagerToken
+ (id)tokenWithValue:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation NCManagerToken

+ (id)tokenWithValue:(unint64_t)a3
{
  v4 = objc_alloc_init(a1);
  v4[1] = a3;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_value == v4->_value;
  }

  return v5;
}

@end