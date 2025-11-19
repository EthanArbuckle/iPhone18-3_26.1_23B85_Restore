@interface FKPaymentTransactionCategoryAndSource
- (BOOL)isEqual:(id)a3;
- (FKPaymentTransactionCategoryAndSource)initWithCategory:(int64_t)a3 source:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKPaymentTransactionCategoryAndSource

- (FKPaymentTransactionCategoryAndSource)initWithCategory:(int64_t)a3 source:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = FKPaymentTransactionCategoryAndSource;
  result = [(FKPaymentTransactionCategoryAndSource *)&v7 init];
  if (result)
  {
    result->_category = a3;
    result->_source = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  *(result + 1) = self->_category;
  *(result + 2) = self->_source;
  return result;
}

- (unint64_t)hash
{
  v3 = FKIntegerHash(17, self->_category);
  source = self->_source;

  return FKIntegerHash(v3, source);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_category == v5->_category && self->_source == v5->_source;
  }

  return v6;
}

@end