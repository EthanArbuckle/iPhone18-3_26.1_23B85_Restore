@interface FKUserTransactionInsight
- (BOOL)isEqual:(id)a3;
- (FKUserTransactionInsight)initWithTransactionCategory:(int64_t)a3 updatedAt:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKUserTransactionInsight

- (FKUserTransactionInsight)initWithTransactionCategory:(int64_t)a3 updatedAt:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = FKUserTransactionInsight;
  v7 = [(FKUserTransactionInsight *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_transactionCategory = a3;
    v9 = [v6 copy];
    updatedAt = v8->_updatedAt;
    v8->_updatedAt = v9;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[1] = self->_transactionCategory;
  v6 = [(NSDate *)self->_updatedAt copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transactionCategory];
  [v3 safelyAddObject:v4];

  [v3 safelyAddObject:self->_updatedAt];
  v5 = FKCombinedHash(17, v3);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_transactionCategory == v5->_transactionCategory)
  {
    v6 = FKEqualObjects(self->_updatedAt, v5->_updatedAt);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end