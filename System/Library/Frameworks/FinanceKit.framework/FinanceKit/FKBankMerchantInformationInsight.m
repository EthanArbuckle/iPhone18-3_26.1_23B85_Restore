@interface FKBankMerchantInformationInsight
- (BOOL)isEqual:(id)a3;
- (FKBankMerchantInformationInsight)initWithCategoryDescription:(id)a3 merchantAddress:(id)a4 merchantCategoryCode:(id)a5 merchantName:(id)a6 merchantNumber:(id)a7 standardIndustrialClassificationCode:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKBankMerchantInformationInsight

- (FKBankMerchantInformationInsight)initWithCategoryDescription:(id)a3 merchantAddress:(id)a4 merchantCategoryCode:(id)a5 merchantName:(id)a6 merchantNumber:(id)a7 standardIndustrialClassificationCode:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = FKBankMerchantInformationInsight;
  v20 = [(FKBankMerchantInformationInsight *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    categoryDescription = v20->_categoryDescription;
    v20->_categoryDescription = v21;

    v23 = [v15 copy];
    merchantAddress = v20->_merchantAddress;
    v20->_merchantAddress = v23;

    v25 = [v16 copy];
    merchantCategoryCode = v20->_merchantCategoryCode;
    v20->_merchantCategoryCode = v25;

    v27 = [v17 copy];
    merchantName = v20->_merchantName;
    v20->_merchantName = v27;

    v29 = [v18 copy];
    merchantNumber = v20->_merchantNumber;
    v20->_merchantNumber = v29;

    v31 = [v19 copy];
    standardIndustrialClassificationCode = v20->_standardIndustrialClassificationCode;
    v20->_standardIndustrialClassificationCode = v31;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_categoryDescription copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(CNPostalAddress *)self->_merchantAddress copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSNumber *)self->_merchantCategoryCode copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_merchantName copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_merchantNumber copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_standardIndustrialClassificationCode copyWithZone:a3];
  v17 = v5[6];
  v5[6] = v16;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_categoryDescription];
  [v3 safelyAddObject:self->_merchantAddress];
  [v3 safelyAddObject:self->_merchantCategoryCode];
  [v3 safelyAddObject:self->_merchantName];
  [v3 safelyAddObject:self->_merchantNumber];
  [v3 safelyAddObject:self->_standardIndustrialClassificationCode];
  v4 = FKCombinedHash(17, v3);

  return v4;
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
    if (FKEqualObjects(self->_categoryDescription, v6[1]) && FKEqualObjects(self->_merchantAddress, v6[2]) && FKEqualObjects(self->_merchantCategoryCode, v6[3]) && FKEqualObjects(self->_merchantName, v6[4]) && FKEqualObjects(self->_merchantNumber, v6[5]))
    {
      v7 = FKEqualObjects(self->_standardIndustrialClassificationCode, v6[6]);
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