@interface PDIntegerProperty
- (PDIntegerProperty)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDIntegerProperty

- (PDIntegerProperty)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PDIntegerProperty;
  v5 = [(PDProperty *)&v8 initWithDatabaseRow:v4];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"value");
    v5->_value = [v6 integerValue];
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  v6.receiver = self;
  v6.super_class = PDIntegerProperty;
  v4 = a3;
  [(PDProperty *)&v6 bindTo:v4];
  v5 = [NSNumber numberWithInteger:self->_value, v6.receiver, v6.super_class];
  sub_1000982FC(v4, v5, @"value");
}

@end