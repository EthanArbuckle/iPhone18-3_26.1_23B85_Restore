@interface PDDoubleProperty
- (PDDoubleProperty)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDDoubleProperty

- (PDDoubleProperty)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v9.receiver = self;
  v9.super_class = PDDoubleProperty;
  v5 = [(PDProperty *)&v9 initWithDatabaseRow:rowCopy];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"value");
    [v6 doubleValue];
    v5->_value = v7;
  }

  return v5;
}

- (void)bindTo:(id)to
{
  v6.receiver = self;
  v6.super_class = PDDoubleProperty;
  toCopy = to;
  [(PDProperty *)&v6 bindTo:toCopy];
  v5 = [NSNumber numberWithDouble:self->_value, v6.receiver, v6.super_class];
  sub_1000982FC(toCopy, v5, @"value");
}

@end