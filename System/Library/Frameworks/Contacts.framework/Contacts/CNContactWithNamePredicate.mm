@interface CNContactWithNamePredicate
+ (BOOL)doesPerson:(id)person matchName:(id)name;
+ (id)descriptionForOptions:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (CNContactWithNamePredicate)initWithCoder:(id)coder;
- (CNContactWithNamePredicate)initWithName:(id)name options:(unint64_t)options;
- (NSString)description;
- (id)contactsFromCLSDataStore:(id)store;
- (id)contactsFromRecentsLibrary:(id)library;
- (id)sgContactMatchesWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error;
- (int64_t)countOfContactsFromRecentsLibrary:(id)library;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactWithNamePredicate

- (id)contactsFromCLSDataStore:(id)store
{
  storeCopy = store;
  name = [(CNContactWithNamePredicate *)self name];
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v6 = [objc_alloc(MEMORY[0x1E695B4C0]) initWithOptions:1 behaviors:1 searchString:name];
    v7 = [CNClassKitServices objectsMatching:v6 fromStore:storeCopy];
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

+ (BOOL)doesPerson:(id)person matchName:(id)name
{
  personCopy = person;
  _cn_tokens = [name _cn_tokens];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CNContactWithNamePredicate_MAID__doesPerson_matchName___block_invoke;
  v10[3] = &unk_1E7412440;
  v11 = personCopy;
  v7 = personCopy;
  v8 = [_cn_tokens _cn_all:v10];

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

- (id)sgContactMatchesWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error
{
  serviceCopy = service;
  name = [(CNContactWithNamePredicate *)self name];
  v10 = [serviceCopy suggestContactMatchesWithMessagingPrefix:name limitTo:-1 error:error];

  return v10;
}

- (CNContactWithNamePredicate)initWithName:(id)name options:(unint64_t)options
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = CNContactWithNamePredicate;
  v7 = [(CNPredicate *)&v12 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_options = options;
    v10 = v7;
  }

  return v7;
}

- (CNContactWithNamePredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNContactWithNamePredicate;
  v5 = [(CNPredicate *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNContactWithNamePredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_name forKey:{@"_name", v5.receiver, v5.super_class}];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingName:]"];
  name = [(CNContactWithNamePredicate *)self name];
  v6 = [v3 appendName:@"name" object:name];

  v7 = [objc_opt_class() descriptionForOptions:{-[CNContactWithNamePredicate options](self, "options")}];
  v8 = [v3 appendName:@"options" object:v7];

  build = [v3 build];

  return build;
}

+ (id)descriptionForOptions:(unint64_t)options
{
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v5 = array;
  if ((optionsCopy & 2) != 0)
  {
    [array addObject:@"prefix"];
  }

  if (optionsCopy)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__CNContactWithNamePredicate_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v15[4] = self;
  v16 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __38__CNContactWithNamePredicate_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy}];

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

- (id)contactsFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  v5 = *MEMORY[0x1E6996570];
  name = [(CNContactWithNamePredicate *)self name];
  LOBYTE(v5) = (*(v5 + 16))(v5, name);

  if (v5)
  {
    v7 = ([(CNContactWithNamePredicate *)self options]>> 1) & 1;
    name2 = [(CNContactWithNamePredicate *)self name];
    v15 = 0;
    v9 = [libraryCopy contactsWithName:name2 prefixSearch:v7 error:&v15];
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

- (int64_t)countOfContactsFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  v5 = *MEMORY[0x1E6996570];
  name = [(CNContactWithNamePredicate *)self name];
  LODWORD(v5) = (*(v5 + 16))(v5, name);

  if (v5)
  {
    v7 = ([(CNContactWithNamePredicate *)self options]>> 1) & 1;
    name2 = [(CNContactWithNamePredicate *)self name];
    v9 = [libraryCopy countOfContactsWithName:name2 prefixSearch:v7 error:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end