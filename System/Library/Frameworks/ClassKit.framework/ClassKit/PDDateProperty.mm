@interface PDDateProperty
- (PDDateProperty)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDDateProperty

- (PDDateProperty)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PDDateProperty;
  v5 = [(PDProperty *)&v9 initWithDatabaseRow:v4];
  if (v5)
  {
    v6 = sub_10016D6F0(v4, @"value");
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  v5.receiver = self;
  v5.super_class = PDDateProperty;
  v4 = a3;
  [(PDProperty *)&v5 bindTo:v4];
  sub_1000982FC(v4, self->_value, @"value");
}

@end