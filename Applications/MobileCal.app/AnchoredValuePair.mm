@interface AnchoredValuePair
+ (AnchoredValuePair)pairWithValue:(double)value size:(double)size layoutShift:(BOOL)shift;
- (AnchoredValuePair)initWithValue:(double)value size:(double)size layoutShift:(BOOL)shift;
- (id)description;
@end

@implementation AnchoredValuePair

- (AnchoredValuePair)initWithValue:(double)value size:(double)size layoutShift:(BOOL)shift
{
  v9.receiver = self;
  v9.super_class = AnchoredValuePair;
  result = [(AnchoredValuePair *)&v9 init];
  if (result)
  {
    result->_value = value;
    result->_size = size;
    result->_layoutShift = shift;
  }

  return result;
}

+ (AnchoredValuePair)pairWithValue:(double)value size:(double)size layoutShift:(BOOL)shift
{
  v5 = [objc_alloc(objc_opt_class()) initWithValue:shift size:value layoutShift:size];

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [NSNumber numberWithDouble:self->_value];
  v5 = [NSNumber numberWithDouble:self->_size];
  v6 = [NSNumber numberWithBool:self->_layoutShift];
  v7 = [NSString stringWithFormat:@"<%@: %p\t Value: %@\t Size: %@\t LayoutShift: %@>", v3, self, v4, v5, v6];

  return v7;
}

@end