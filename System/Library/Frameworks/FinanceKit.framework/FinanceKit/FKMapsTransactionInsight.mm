@interface FKMapsTransactionInsight
- (BOOL)isEqual:(id)a3;
- (FKMapsTransactionInsight)initWithUpdatedAt:(id)a3 category:(int64_t)a4 merchant:(id)a5 brand:(id)a6;
- (FKMapsTransactionInsight)initWithUpdatedAt:(id)a3 categoryAndSource:(id)a4 merchant:(id)a5 brand:(id)a6;
- (FKMapsTransactionInsight)initWithUpdatedAt:(id)a3 fallbackCategory:(unint64_t)a4 merchant:(id)a5 brand:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKMapsTransactionInsight

- (FKMapsTransactionInsight)initWithUpdatedAt:(id)a3 categoryAndSource:(id)a4 merchant:(id)a5 brand:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = FKMapsTransactionInsight;
  v14 = [(FKMapsTransactionInsight *)&v26 init];
  if (v14)
  {
    v15 = [v10 copy];
    updatedAt = v14->_updatedAt;
    v14->_updatedAt = v15;

    v17 = [v11 category];
    if ((v17 - 1) >= 7)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    v14->_fallbackCategory = v18;
    v14->_category = [v11 category];
    v19 = [v11 copy];
    categoryAndSource = v14->_categoryAndSource;
    v14->_categoryAndSource = v19;

    v21 = [v12 copy];
    merchant = v14->_merchant;
    v14->_merchant = v21;

    v23 = [v13 copy];
    brand = v14->_brand;
    v14->_brand = v23;
  }

  return v14;
}

- (FKMapsTransactionInsight)initWithUpdatedAt:(id)a3 category:(int64_t)a4 merchant:(id)a5 brand:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[FKPaymentTransactionCategoryAndSource alloc] initWithCategory:a4 source:1];
  v14 = [(FKMapsTransactionInsight *)self initWithUpdatedAt:v12 categoryAndSource:v13 merchant:v11 brand:v10];

  return v14;
}

- (FKMapsTransactionInsight)initWithUpdatedAt:(id)a3 fallbackCategory:(unint64_t)a4 merchant:(id)a5 brand:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v24.receiver = self;
  v24.super_class = FKMapsTransactionInsight;
  v13 = [(FKMapsTransactionInsight *)&v24 init];
  if (v13)
  {
    v14 = [v10 copy];
    updatedAt = v13->_updatedAt;
    v13->_updatedAt = v14;

    if (a4 - 1 >= 7)
    {
      v16 = 0;
    }

    else
    {
      v16 = a4;
    }

    v13->_fallbackCategory = a4;
    v13->_category = v16;
    v17 = [[FKPaymentTransactionCategoryAndSource alloc] initWithCategory:v13->_category source:1];
    categoryAndSource = v13->_categoryAndSource;
    v13->_categoryAndSource = v17;

    v19 = [v11 copy];
    merchant = v13->_merchant;
    v13->_merchant = v19;

    v21 = [v12 copy];
    brand = v13->_brand;
    v13->_brand = v21;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSDate *)self->_updatedAt copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_fallbackCategory;
  v5[3] = self->_category;
  v8 = [(FKPaymentTransactionCategoryAndSource *)self->_categoryAndSource copy];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(FKMapsMerchant *)self->_merchant copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(FKMapsBrand *)self->_brand copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_updatedAt];
  [v3 safelyAddObject:self->_merchant];
  [v3 safelyAddObject:self->_brand];
  [v3 safelyAddObject:self->_categoryAndSource];
  v4 = FKCombinedHash(17, v3);
  v5 = FKIntegerHash(v4, self->_fallbackCategory);
  v6 = FKIntegerHash(v5, self->_category);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (FKEqualObjects(self->_updatedAt, v6[1]) && self->_fallbackCategory == v6[2] && self->_category == v6[3] && FKEqualObjects(self->_categoryAndSource, v6[4]) && FKEqualObjects(self->_merchant, v6[5]))
    {
      v7 = FKEqualObjects(self->_brand, v6[6]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end