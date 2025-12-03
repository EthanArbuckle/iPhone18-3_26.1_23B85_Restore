@interface NCManagerToken
+ (id)tokenWithValue:(unint64_t)value;
- (BOOL)isEqual:(id)equal;
@end

@implementation NCManagerToken

+ (id)tokenWithValue:(unint64_t)value
{
  v4 = objc_alloc_init(self);
  v4[1] = value;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_value == equalCopy->_value;
  }

  return v5;
}

@end