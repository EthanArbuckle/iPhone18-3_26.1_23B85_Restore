@interface FKMapsTransactionInsight
- (BOOL)isEqual:(id)equal;
- (FKMapsTransactionInsight)initWithUpdatedAt:(id)at category:(int64_t)category merchant:(id)merchant brand:(id)brand;
- (FKMapsTransactionInsight)initWithUpdatedAt:(id)at categoryAndSource:(id)source merchant:(id)merchant brand:(id)brand;
- (FKMapsTransactionInsight)initWithUpdatedAt:(id)at fallbackCategory:(unint64_t)category merchant:(id)merchant brand:(id)brand;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKMapsTransactionInsight

- (FKMapsTransactionInsight)initWithUpdatedAt:(id)at categoryAndSource:(id)source merchant:(id)merchant brand:(id)brand
{
  atCopy = at;
  sourceCopy = source;
  merchantCopy = merchant;
  brandCopy = brand;
  v26.receiver = self;
  v26.super_class = FKMapsTransactionInsight;
  v14 = [(FKMapsTransactionInsight *)&v26 init];
  if (v14)
  {
    v15 = [atCopy copy];
    updatedAt = v14->_updatedAt;
    v14->_updatedAt = v15;

    category = [sourceCopy category];
    if ((category - 1) >= 7)
    {
      v18 = 0;
    }

    else
    {
      v18 = category;
    }

    v14->_fallbackCategory = v18;
    v14->_category = [sourceCopy category];
    v19 = [sourceCopy copy];
    categoryAndSource = v14->_categoryAndSource;
    v14->_categoryAndSource = v19;

    v21 = [merchantCopy copy];
    merchant = v14->_merchant;
    v14->_merchant = v21;

    v23 = [brandCopy copy];
    brand = v14->_brand;
    v14->_brand = v23;
  }

  return v14;
}

- (FKMapsTransactionInsight)initWithUpdatedAt:(id)at category:(int64_t)category merchant:(id)merchant brand:(id)brand
{
  brandCopy = brand;
  merchantCopy = merchant;
  atCopy = at;
  v13 = [[FKPaymentTransactionCategoryAndSource alloc] initWithCategory:category source:1];
  v14 = [(FKMapsTransactionInsight *)self initWithUpdatedAt:atCopy categoryAndSource:v13 merchant:merchantCopy brand:brandCopy];

  return v14;
}

- (FKMapsTransactionInsight)initWithUpdatedAt:(id)at fallbackCategory:(unint64_t)category merchant:(id)merchant brand:(id)brand
{
  atCopy = at;
  merchantCopy = merchant;
  brandCopy = brand;
  v24.receiver = self;
  v24.super_class = FKMapsTransactionInsight;
  v13 = [(FKMapsTransactionInsight *)&v24 init];
  if (v13)
  {
    v14 = [atCopy copy];
    updatedAt = v13->_updatedAt;
    v13->_updatedAt = v14;

    if (category - 1 >= 7)
    {
      categoryCopy = 0;
    }

    else
    {
      categoryCopy = category;
    }

    v13->_fallbackCategory = category;
    v13->_category = categoryCopy;
    v17 = [[FKPaymentTransactionCategoryAndSource alloc] initWithCategory:v13->_category source:1];
    categoryAndSource = v13->_categoryAndSource;
    v13->_categoryAndSource = v17;

    v19 = [merchantCopy copy];
    merchant = v13->_merchant;
    v13->_merchant = v19;

    v21 = [brandCopy copy];
    brand = v13->_brand;
    v13->_brand = v21;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSDate *)self->_updatedAt copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_fallbackCategory;
  v5[3] = self->_category;
  v8 = [(FKPaymentTransactionCategoryAndSource *)self->_categoryAndSource copy];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(FKMapsMerchant *)self->_merchant copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(FKMapsBrand *)self->_brand copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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