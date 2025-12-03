@interface PDStringProperty
- (PDStringProperty)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDStringProperty

- (PDStringProperty)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v9.receiver = self;
  v9.super_class = PDStringProperty;
  v5 = [(PDProperty *)&v9 initWithDatabaseRow:rowCopy];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"value");
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

- (void)bindTo:(id)to
{
  v5.receiver = self;
  v5.super_class = PDStringProperty;
  toCopy = to;
  [(PDProperty *)&v5 bindTo:toCopy];
  sub_1000982FC(toCopy, self->_value, @"value");
}

@end