@interface FKPaymentTransactionCategoryAndSource
- (BOOL)isEqual:(id)equal;
- (FKPaymentTransactionCategoryAndSource)initWithCategory:(int64_t)category source:(int64_t)source;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKPaymentTransactionCategoryAndSource

- (FKPaymentTransactionCategoryAndSource)initWithCategory:(int64_t)category source:(int64_t)source
{
  v7.receiver = self;
  v7.super_class = FKPaymentTransactionCategoryAndSource;
  result = [(FKPaymentTransactionCategoryAndSource *)&v7 init];
  if (result)
  {
    result->_category = category;
    result->_source = source;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_category == v5->_category && self->_source == v5->_source;
  }

  return v6;
}

@end