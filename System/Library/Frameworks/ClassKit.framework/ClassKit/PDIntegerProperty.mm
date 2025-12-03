@interface PDIntegerProperty
- (PDIntegerProperty)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDIntegerProperty

- (PDIntegerProperty)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v8.receiver = self;
  v8.super_class = PDIntegerProperty;
  v5 = [(PDProperty *)&v8 initWithDatabaseRow:rowCopy];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"value");
    v5->_value = [v6 integerValue];
  }

  return v5;
}

- (void)bindTo:(id)to
{
  v6.receiver = self;
  v6.super_class = PDIntegerProperty;
  toCopy = to;
  [(PDProperty *)&v6 bindTo:toCopy];
  v5 = [NSNumber numberWithInteger:self->_value, v6.receiver, v6.super_class];
  sub_1000982FC(toCopy, v5, @"value");
}

@end