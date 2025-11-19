@interface CNContactWithNamePredicate
+ (BOOL)doesPerson:(id)a3 matchName:(id)a4;
+ (id)descriptionForOptions:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CNContactWithNamePredicate)initWithCoder:(id)a3;
- (CNContactWithNamePredicate)initWithName:(id)a3 options:(unint64_t)a4;
- (NSString)description;
- (id)contactsFromCLSDataStore:(id)a3;
- (id)contactsFromRecentsLibrary:(id)a3;
- (id)sgContactMatchesWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6;
- (int64_t)countOfContactsFromRecentsLibrary:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactWithNamePredicate

- (id)contactsFromCLSDataStore:(id)a3
{
  v4 = a3;
  v5 = [(CNContactWithNamePredicate *)self name];
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v6 = [objc_alloc(MEMORY[0x1E695B4C0]) initWithOptions:1 behaviors:1 searchString:v5];
    v7 = [CNClassKitServices objectsMatching:v6 fromStore:v4];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__CNContactWithNamePredicate_MAID__contactsFromCLSDataStore___block_invoke;
    v10[3] = &unk_1E7413600;
    v10[4] = self;
    v8 = [v7 map:v10];
  }

  else
  {
    v8 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E0F0]];
  }

  return v8;
}

id __61__CNContactWithNamePredicate_MAID__contactsFromCLSDataStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _cn_filter:CLSObjectIsPerson];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CNContactWithNamePredicate_MAID__contactsFromCLSDataStore___block_invoke_2;
  v7[3] = &unk_1E74135D8;
  v7[4] = *(a1 + 32);
  v4 = [v3 _cn_filter:v7];

  v5 = [v4 _cn_map:CLSPersonToCNContactTransform];

  return v5;
}

uint64_t __61__CNContactWithNamePredicate_MAID__contactsFromCLSDataStore___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) name];
  v6 = [v4 doesPerson:v3 matchName:v5];

  return v6;
}

+ (BOOL)doesPerson:(id)a3 matchName:(id)a4
{
  v5 = a3;
  v6 = [a4 _cn_tokens];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CNContactWithNamePredicate_MAID__doesPerson_matchName___block_invoke;
  v10[3] = &unk_1E7412440;
  v11 = v5;
  v7 = v5;
  v8 = [v6 _cn_all:v10];

  return v8;
}

uint64_t __57__CNContactWithNamePredicate_MAID__doesPerson_matchName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) givenName];
  if ([v4 _cn_hasPrefix:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) middleName];
    if ([v6 _cn_hasPrefix:v3])
    {
      v5 = 1;
    }

    else
    {
      v7 = [*(a1 + 32) familyName];
      v5 = [v7 _cn_hasPrefix:v3];
    }
  }

  return v5;
}

- (id)sgContactMatchesWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6
{
  v8 = a5;
  v9 = [(CNContactWithNamePredicate *)self name];
  v10 = [v8 suggestContactMatchesWithMessagingPrefix:v9 limitTo:-1 error:a6];

  return v10;
}

- (CNContactWithNamePredicate)initWithName:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CNContactWithNamePredicate;
  v7 = [(CNPredicate *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_options = a4;
    v10 = v7;
  }

  return v7;
}

- (CNContactWithNamePredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNContactWithNamePredicate;
  v5 = [(CNPredicate *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNContactWithNamePredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_name forKey:{@"_name", v5.receiver, v5.super_class}];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingName:]"];
  v5 = [(CNContactWithNamePredicate *)self name];
  v6 = [v3 appendName:@"name" object:v5];

  v7 = [objc_opt_class() descriptionForOptions:{-[CNContactWithNamePredicate options](self, "options")}];
  v8 = [v3 appendName:@"options" object:v7];

  v9 = [v3 build];

  return v9;
}

+ (id)descriptionForOptions:(unint64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if ((v3 & 2) != 0)
  {
    [v4 addObject:@"prefix"];
  }

  if (v3)
  {
    [v5 addObject:@"cd-insensitive"];
  }

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v6 = @"none";
  }

  else
  {
    v6 = [v5 componentsJoinedByString:{@", "}];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__CNContactWithNamePredicate_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __38__CNContactWithNamePredicate_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __38__CNContactWithNamePredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) name];
  v4 = [*(a1 + 40) name];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __38__CNContactWithNamePredicate_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) options];
  v4 = [*(a1 + 40) options];

  return [v2 isInteger:v3 equalToOther:v4];
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CNContactWithNamePredicate_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__CNContactWithNamePredicate_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __34__CNContactWithNamePredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) name];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __34__CNContactWithNamePredicate_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) options];

  return [v1 unsignedIntegerHash:v2];
}

- (id)contactsFromRecentsLibrary:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6996570];
  v6 = [(CNContactWithNamePredicate *)self name];
  LOBYTE(v5) = (*(v5 + 16))(v5, v6);

  if (v5)
  {
    v7 = ([(CNContactWithNamePredicate *)self options]>> 1) & 1;
    v8 = [(CNContactWithNamePredicate *)self name];
    v15 = 0;
    v9 = [v4 contactsWithName:v8 prefixSearch:v7 error:&v15];
    v10 = v15;

    v11 = MEMORY[0x1E6996810];
    v12 = (*(sContactsPairedWithNoMatchInfo + 2))(sContactsPairedWithNoMatchInfo, v9);
    v13 = [v11 resultWithValue:v12 orError:v10];
  }

  else
  {
    v13 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E0F0]];
  }

  return v13;
}

- (int64_t)countOfContactsFromRecentsLibrary:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6996570];
  v6 = [(CNContactWithNamePredicate *)self name];
  LODWORD(v5) = (*(v5 + 16))(v5, v6);

  if (v5)
  {
    v7 = ([(CNContactWithNamePredicate *)self options]>> 1) & 1;
    v8 = [(CNContactWithNamePredicate *)self name];
    v9 = [v4 countOfContactsWithName:v8 prefixSearch:v7 error:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end