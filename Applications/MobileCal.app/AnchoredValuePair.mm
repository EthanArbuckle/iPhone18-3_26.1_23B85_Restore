@interface AnchoredValuePair
+ (AnchoredValuePair)pairWithValue:(double)a3 size:(double)a4 layoutShift:(BOOL)a5;
- (AnchoredValuePair)initWithValue:(double)a3 size:(double)a4 layoutShift:(BOOL)a5;
- (id)description;
@end

@implementation AnchoredValuePair

- (AnchoredValuePair)initWithValue:(double)a3 size:(double)a4 layoutShift:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = AnchoredValuePair;
  result = [(AnchoredValuePair *)&v9 init];
  if (result)
  {
    result->_value = a3;
    result->_size = a4;
    result->_layoutShift = a5;
  }

  return result;
}

+ (AnchoredValuePair)pairWithValue:(double)a3 size:(double)a4 layoutShift:(BOOL)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithValue:a5 size:a3 layoutShift:a4];

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