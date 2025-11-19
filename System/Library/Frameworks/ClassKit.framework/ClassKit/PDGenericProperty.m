@interface PDGenericProperty
- (PDGenericProperty)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDGenericProperty

- (PDGenericProperty)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PDGenericProperty;
  v5 = [(PDProperty *)&v9 initWithDatabaseRow:v4];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"value");
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PDGenericProperty;
  [(PDProperty *)&v10 bindTo:v4];
  value = self->_value;
  if (value)
  {
    v9 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:value requiringSecureCoding:1 error:&v9];
    v7 = v9;
    v8 = v7;
    if (v7)
    {
      [v7 cls_debug:CLSLogDatabase];
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1000982FC(v4, v6, @"value");
}

@end