@interface LAPSPasscodeTypeCollection
+ (id)_allWhere:(id)where;
+ (id)allPasscodeTypes;
+ (id)allPasscodeTypesWhereComplexityIsGreaterThanOrEqualTo:(int64_t)to;
@end

@implementation LAPSPasscodeTypeCollection

+ (id)allPasscodeTypes
{
  v13[5] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB70]);
  v3 = +[LAPSPasscodeType noneType];
  v4 = +[LAPSPasscodeType numericFourDigitsType];
  v13[1] = v4;
  v5 = +[LAPSPasscodeType numericSixDigitsType];
  v13[2] = v5;
  v6 = +[LAPSPasscodeType numericCustomDigitsType];
  v13[3] = v6;
  v7 = +[LAPSPasscodeType alphanumericType];
  v13[4] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global];
  v10 = [v2 initWithArray:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __46__LAPSPasscodeTypeCollection_allPasscodeTypes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "complexityRating")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 complexityRating];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

+ (id)allPasscodeTypesWhereComplexityIsGreaterThanOrEqualTo:(int64_t)to
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__LAPSPasscodeTypeCollection_allPasscodeTypesWhereComplexityIsGreaterThanOrEqualTo___block_invoke;
  v5[3] = &__block_descriptor_40_e26_B16__0__LAPSPasscodeType_8l;
  v5[4] = to;
  v3 = [self _allWhere:v5];

  return v3;
}

+ (id)_allWhere:(id)where
{
  whereCopy = where;
  v5 = objc_alloc(MEMORY[0x277CBEB70]);
  allPasscodeTypes = [self allPasscodeTypes];
  allPasscodeTypes2 = [self allPasscodeTypes];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__LAPSPasscodeTypeCollection__allWhere___block_invoke;
  v13[3] = &unk_278A65390;
  v14 = whereCopy;
  v8 = whereCopy;
  v9 = [allPasscodeTypes2 indexesOfObjectsPassingTest:v13];
  v10 = [allPasscodeTypes objectsAtIndexes:v9];
  v11 = [v5 initWithArray:v10];

  return v11;
}

@end