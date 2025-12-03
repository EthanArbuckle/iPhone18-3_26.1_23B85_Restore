@interface CLPropertyValue
- (CLPropertyValue)initWithValue:(id)value dirty:(BOOL)dirty;
- (void)dealloc;
@end

@implementation CLPropertyValue

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLPropertyValue;
  [(CLPropertyValue *)&v3 dealloc];
}

- (CLPropertyValue)initWithValue:(id)value dirty:(BOOL)dirty
{
  v8.receiver = self;
  v8.super_class = CLPropertyValue;
  v6 = [(CLPropertyValue *)&v8 init];
  if (v6)
  {
    v6->_value = value;
    v6->_dirty = dirty;
  }

  return v6;
}

@end