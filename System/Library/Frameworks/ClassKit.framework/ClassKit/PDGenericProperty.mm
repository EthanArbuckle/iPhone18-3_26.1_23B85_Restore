@interface PDGenericProperty
- (PDGenericProperty)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDGenericProperty

- (PDGenericProperty)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v9.receiver = self;
  v9.super_class = PDGenericProperty;
  v5 = [(PDProperty *)&v9 initWithDatabaseRow:rowCopy];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"value");
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  v10.receiver = self;
  v10.super_class = PDGenericProperty;
  [(PDProperty *)&v10 bindTo:toCopy];
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

  sub_1000982FC(toCopy, v6, @"value");
}

@end