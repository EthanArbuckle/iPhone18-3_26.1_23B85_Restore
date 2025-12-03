@interface CNContactNameOrderImpl
+ (id)defaultNewContactOrder;
+ (id)defaultOrder;
+ (id)defaultSortOrder;
+ (id)familyNameFirstOrder;
+ (id)givenNameFirstOrder;
+ (id)orderForSortOrder:(int64_t)order;
- (id)nameProperties;
- (id)phoneticNameProperties;
- (id)sortingNameProperties;
- (int64_t)nameOrder;
@end

@implementation CNContactNameOrderImpl

+ (id)familyNameFirstOrder
{
  if (familyNameFirstOrder_cn_once_token_1 != -1)
  {
    +[CNContactNameOrderImpl familyNameFirstOrder];
  }

  v3 = familyNameFirstOrder_cn_once_object_1;

  return v3;
}

+ (id)givenNameFirstOrder
{
  if (givenNameFirstOrder_cn_once_token_0 != -1)
  {
    +[CNContactNameOrderImpl givenNameFirstOrder];
  }

  v3 = givenNameFirstOrder_cn_once_object_0;

  return v3;
}

uint64_t __45__CNContactNameOrderImpl_givenNameFirstOrder__block_invoke()
{
  givenNameFirstOrder_cn_once_object_0 = objc_alloc_init(CNGivenNameFirstNameOrder);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46__CNContactNameOrderImpl_familyNameFirstOrder__block_invoke()
{
  familyNameFirstOrder_cn_once_object_1 = objc_alloc_init(CNFamilyNameFirstNameOrder);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)defaultOrder
{
  v3 = +[CNContactsUserDefaults sharedDefaults];
  displayNameOrder = [v3 displayNameOrder];

  if (displayNameOrder == 2)
  {
    [self familyNameFirstOrder];
  }

  else
  {
    [self givenNameFirstOrder];
  }
  v5 = ;

  return v5;
}

+ (id)defaultSortOrder
{
  v3 = +[CNContactsUserDefaults sharedDefaults];
  sortOrder = [v3 sortOrder];

  if (sortOrder == 3)
  {
    [self familyNameFirstOrder];
  }

  else
  {
    [self givenNameFirstOrder];
  }
  v5 = ;

  return v5;
}

+ (id)defaultNewContactOrder
{
  v3 = +[CNContactsUserDefaults sharedDefaults];
  newContactDisplayNameOrder = [v3 newContactDisplayNameOrder];

  if (newContactDisplayNameOrder == 2)
  {
    [self familyNameFirstOrder];
  }

  else
  {
    [self givenNameFirstOrder];
  }
  v5 = ;

  return v5;
}

- (int64_t)nameOrder
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"abstract method" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)orderForSortOrder:(int64_t)order
{
  if (order == 2)
  {
    v3 = +[CNContactNameOrderImpl givenNameFirstOrder];
  }

  else
  {
    if (order == 3)
    {
      +[CNContactNameOrderImpl familyNameFirstOrder];
    }

    else
    {
      +[CNContactNameOrderImpl defaultSortOrder];
    }
    v3 = ;
  }

  return v3;
}

- (id)nameProperties
{
  v3.receiver = self;
  v3.super_class = CNContactNameOrderImpl;
  [(CNContactNameOrderImpl *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (id)phoneticNameProperties
{
  v3.receiver = self;
  v3.super_class = CNContactNameOrderImpl;
  [(CNContactNameOrderImpl *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (id)sortingNameProperties
{
  v3.receiver = self;
  v3.super_class = CNContactNameOrderImpl;
  [(CNContactNameOrderImpl *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

@end