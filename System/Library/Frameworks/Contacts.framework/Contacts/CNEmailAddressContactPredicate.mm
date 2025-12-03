@interface CNEmailAddressContactPredicate
- (BOOL)cn_hasHighSpecificity;
- (BOOL)isEqual:(id)equal;
- (CNEmailAddressContactPredicate)initWithCoder:(id)coder;
- (CNEmailAddressContactPredicate)initWithEmailAddress:(id)address groupIdentifiers:(id)identifiers returnMultipleResults:(BOOL)results;
- (NSString)description;
- (id)contactsFromCLSDataStore:(id)store;
- (id)contactsFromRecentsLibrary:(id)library;
- (id)sgContactMatchesWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error;
- (int64_t)countOfContactsFromRecentsLibrary:(id)library;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNEmailAddressContactPredicate

- (BOOL)cn_hasHighSpecificity
{
  emailAddresses = [(CNEmailAddressContactPredicate *)self emailAddresses];
  firstObject = [emailAddresses firstObject];
  v4 = [firstObject containsString:@"@"];

  return v4;
}

- (CNEmailAddressContactPredicate)initWithEmailAddress:(id)address groupIdentifiers:(id)identifiers returnMultipleResults:(BOOL)results
{
  v17[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  identifiersCopy = identifiers;
  v16.receiver = self;
  v16.super_class = CNEmailAddressContactPredicate;
  v10 = [(CNPredicate *)&v16 init];
  if (v10)
  {
    if (addressCopy)
    {
      v17[0] = addressCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&v10->_emailAddresses, v11);
    if (addressCopy)
    {
    }

    v12 = [identifiersCopy copy];
    groupIdentifiers = v10->_groupIdentifiers;
    v10->_groupIdentifiers = v12;

    v10->_returnsMultipleResults = results;
    v14 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingEmailAddresses:]"];
  emailAddresses = [(CNEmailAddressContactPredicate *)self emailAddresses];
  v6 = [v3 appendName:@"emailAddresses" object:emailAddresses];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__CNEmailAddressContactPredicate_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v16 = equalCopy;
  selfCopy = self;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __42__CNEmailAddressContactPredicate_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  selfCopy2 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy2}];

  return self;
}

BOOL __42__CNEmailAddressContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) emailAddresses];
  v3 = [v2 count];
  v4 = [*(a1 + 40) emailAddresses];
  v5 = v3 == [v4 count];

  return v5;
}

uint64_t __42__CNEmailAddressContactPredicate_isEqual___block_invoke_2(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v2 = [*(a1 + 32) emailAddresses];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CNEmailAddressContactPredicate_isEqual___block_invoke_3;
  v5[3] = &unk_1E7412E60;
  v6 = *(a1 + 40);
  v7 = &v8;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

void __42__CNEmailAddressContactPredicate_isEqual___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 emailAddresses];
  v10 = [v9 objectAtIndexedSubscript:a3];

  LOBYTE(a3) = [MEMORY[0x1E69966F0] isString:v8 localizedCaseInsensitiveEqualToOther:v10];
  if ((a3 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__CNEmailAddressContactPredicate_hash__block_invoke;
  v10[3] = &unk_1E7412250;
  v10[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__CNEmailAddressContactPredicate_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__CNEmailAddressContactPredicate_hash__block_invoke_3;
  v8[3] = &unk_1E7412250;
  v8[4] = self;
  v5 = _Block_copy(v8);
  v6 = [v3 hashWithBlocks:{v10, v4, v5, 0}];

  return v6;
}

uint64_t __38__CNEmailAddressContactPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) emailAddresses];
  v3 = [v1 arrayHash:v2];

  return v3;
}

uint64_t __38__CNEmailAddressContactPredicate_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) groupIdentifiers];
  v3 = [v1 arrayHash:v2];

  return v3;
}

uint64_t __38__CNEmailAddressContactPredicate_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) returnsMultipleResults];

  return [v1 BOOLHash:v2];
}

- (CNEmailAddressContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CNEmailAddressContactPredicate;
  v5 = [(CNPredicate *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_emailAddresses"];
    v10 = [v9 copy];
    emailAddresses = v5->_emailAddresses;
    v5->_emailAddresses = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_groupIdentifiers"];
    v16 = [v15 copy];
    groupIdentifiers = v5->_groupIdentifiers;
    v5->_groupIdentifiers = v16;

    v5->_returnsMultipleResults = [coderCopy decodeBoolForKey:@"_returnsMultipleResults"];
    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNEmailAddressContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_emailAddresses forKey:{@"_emailAddresses", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_groupIdentifiers forKey:@"_groupIdentifiers"];
  [coderCopy encodeBool:self->_returnsMultipleResults forKey:@"_returnsMultipleResults"];
}

- (id)contactsFromRecentsLibrary:(id)library
{
  v20[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = *MEMORY[0x1E6996538];
  emailAddresses = [(CNEmailAddressContactPredicate *)self emailAddresses];
  LOBYTE(v5) = (*(v5 + 16))(v5, emailAddresses);

  if (v5)
  {
    returnsMultipleResults = [(CNEmailAddressContactPredicate *)self returnsMultipleResults];
    emailAddresses2 = [(CNEmailAddressContactPredicate *)self emailAddresses];
    v9 = emailAddresses2;
    if (returnsMultipleResults)
    {
      v19 = 0;
      v10 = [libraryCopy contactsWithEmailAddresses:emailAddresses2 error:&v19];
      v11 = v19;
    }

    else
    {
      firstObject = [emailAddresses2 firstObject];
      v18 = 0;
      v14 = [libraryCopy singleContactWithEmailAddress:firstObject error:&v18];
      v11 = v18;

      v20[0] = v14;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v9 = v14;
    }

    v15 = MEMORY[0x1E6996810];
    v16 = (*(sContactsPairedWithNoMatchInfo + 2))(sContactsPairedWithNoMatchInfo, v10);
    v12 = [v15 resultWithValue:v16 orError:v11];
  }

  else
  {
    v12 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E0F0]];
  }

  return v12;
}

- (int64_t)countOfContactsFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  v5 = *MEMORY[0x1E6996538];
  emailAddresses = [(CNEmailAddressContactPredicate *)self emailAddresses];
  LODWORD(v5) = (*(v5 + 16))(v5, emailAddresses);

  if (v5)
  {
    emailAddresses2 = [(CNEmailAddressContactPredicate *)self emailAddresses];
    v8 = [libraryCopy countOfContactsWithEmailAddresses:emailAddresses2 error:0];

    if ([(CNEmailAddressContactPredicate *)self returnsMultipleResults])
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)contactsFromCLSDataStore:(id)store
{
  storeCopy = store;
  emailAddresses = [(CNEmailAddressContactPredicate *)self emailAddresses];
  firstObject = [emailAddresses firstObject];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v7 = [objc_alloc(MEMORY[0x1E695B4C0]) initWithOptions:1 behaviors:1 searchString:firstObject];
    v8 = [CNClassKitServices objectsMatching:v7 fromStore:storeCopy];
    v9 = [v8 map:&__block_literal_global_52];
  }

  else
  {
    v9 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E0F0]];
  }

  return v9;
}

id __65__CNEmailAddressContactPredicate_MAID__contactsFromCLSDataStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _cn_filter:CLSObjectIsPerson];
  v3 = [v2 _cn_map:CLSPersonToCNContactTransform];

  return v3;
}

- (id)sgContactMatchesWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  emailAddresses = [(CNEmailAddressContactPredicate *)self emailAddresses];
  v10 = [emailAddresses countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v15 = [serviceCopy contactMatchesByEmailAddress:*(*(&v17 + 1) + 8 * i) error:error];
        if (v15)
        {
          if (v12)
          {
            [v12 addObjectsFromArray:v15];
          }

          else
          {
            v12 = [MEMORY[0x1E695DF70] arrayWithArray:v15];
          }
        }
      }

      v11 = [emailAddresses countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end