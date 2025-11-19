@interface CLPropertyValue
- (CLPropertyValue)initWithValue:(id)a3 dirty:(BOOL)a4;
- (void)dealloc;
@end

@implementation CLPropertyValue

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLPropertyValue;
  [(CLPropertyValue *)&v3 dealloc];
}

- (CLPropertyValue)initWithValue:(id)a3 dirty:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = CLPropertyValue;
  v6 = [(CLPropertyValue *)&v8 init];
  if (v6)
  {
    v6->_value = a3;
    v6->_dirty = a4;
  }

  return v6;
}

@end