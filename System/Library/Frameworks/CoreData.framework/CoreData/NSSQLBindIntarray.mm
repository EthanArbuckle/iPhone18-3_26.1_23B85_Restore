@interface NSSQLBindIntarray
- (NSSQLBindIntarray)initWithValue:(id)value;
- (void)dealloc;
@end

@implementation NSSQLBindIntarray

- (void)dealloc
{
  self->_value = 0;

  self->_tableName = 0;
  v3.receiver = self;
  v3.super_class = NSSQLBindIntarray;
  [(NSSQLBindIntarray *)&v3 dealloc];
}

- (NSSQLBindIntarray)initWithValue:(id)value
{
  v6.receiver = self;
  v6.super_class = NSSQLBindIntarray;
  v4 = [(NSSQLBindIntarray *)&v6 init];
  if (v4)
  {
    v4->_value = value;
  }

  return v4;
}

@end