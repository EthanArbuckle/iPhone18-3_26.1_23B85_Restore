@interface CNEmailAddressContactPredicate
- (BOOL)cn_hasHighSpecificity;
- (BOOL)isEqual:(id)a3;
- (CNEmailAddressContactPredicate)initWithCoder:(id)a3;
- (CNEmailAddressContactPredicate)initWithEmailAddress:(id)a3 groupIdentifiers:(id)a4 returnMultipleResults:(BOOL)a5;
- (NSString)description;
- (id)contactsFromCLSDataStore:(id)a3;
- (id)contactsFromRecentsLibrary:(id)a3;
- (id)sgContactMatchesWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6;
- (int64_t)countOfContactsFromRecentsLibrary:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNEmailAddressContactPredicate

- (BOOL)cn_hasHighSpecificity
{
  v2 = [(CNEmailAddressContactPredicate *)self emailAddresses];
  v3 = [v2 firstObject];
  v4 = [v3 containsString:@"@"];

  return v4;
}

- (CNEmailAddressContactPredicate)initWithEmailAddress:(id)a3 groupIdentifiers:(id)a4 returnMultipleResults:(BOOL)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = CNEmailAddressContactPredicate;
  v10 = [(CNPredicate *)&v16 init];
  if (v10)
  {
    if (v8)
    {
      v17[0] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&v10->_emailAddresses, v11);
    if (v8)
    {
    }

    v12 = [v9 copy];
    groupIdentifiers = v10->_groupIdentifiers;
    v10->_groupIdentifiers = v12;

    v10->_returnsMultipleResults = a5;
    v14 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingEmailAddresses:]"];
  v5 = [(CNEmailAddressContactPredicate *)self emailAddresses];
  v6 = [v3 appendName:@"emailAddresses" object:v5];

  v7 = [v3 build];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__CNEmailAddressContactPredicate_isEqual___block_invoke;
  v15[3] = &unk_1E7412228;
  v16 = v4;
  v17 = self;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __42__CNEmailAddressContactPredicate_isEqual___block_invoke_2;
  v12 = &unk_1E7412228;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

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

- (CNEmailAddressContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CNEmailAddressContactPredicate;
  v5 = [(CNPredicate *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_emailAddresses"];
    v10 = [v9 copy];
    emailAddresses = v5->_emailAddresses;
    v5->_emailAddresses = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_groupIdentifiers"];
    v16 = [v15 copy];
    groupIdentifiers = v5->_groupIdentifiers;
    v5->_groupIdentifiers = v16;

    v5->_returnsMultipleResults = [v4 decodeBoolForKey:@"_returnsMultipleResults"];
    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNEmailAddressContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_emailAddresses forKey:{@"_emailAddresses", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_groupIdentifiers forKey:@"_groupIdentifiers"];
  [v4 encodeBool:self->_returnsMultipleResults forKey:@"_returnsMultipleResults"];
}

- (id)contactsFromRecentsLibrary:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6996538];
  v6 = [(CNEmailAddressContactPredicate *)self emailAddresses];
  LOBYTE(v5) = (*(v5 + 16))(v5, v6);

  if (v5)
  {
    v7 = [(CNEmailAddressContactPredicate *)self returnsMultipleResults];
    v8 = [(CNEmailAddressContactPredicate *)self emailAddresses];
    v9 = v8;
    if (v7)
    {
      v19 = 0;
      v10 = [v4 contactsWithEmailAddresses:v8 error:&v19];
      v11 = v19;
    }

    else
    {
      v13 = [v8 firstObject];
      v18 = 0;
      v14 = [v4 singleContactWithEmailAddress:v13 error:&v18];
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

- (int64_t)countOfContactsFromRecentsLibrary:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6996538];
  v6 = [(CNEmailAddressContactPredicate *)self emailAddresses];
  LODWORD(v5) = (*(v5 + 16))(v5, v6);

  if (v5)
  {
    v7 = [(CNEmailAddressContactPredicate *)self emailAddresses];
    v8 = [v4 countOfContactsWithEmailAddresses:v7 error:0];

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

- (id)contactsFromCLSDataStore:(id)a3
{
  v4 = a3;
  v5 = [(CNEmailAddressContactPredicate *)self emailAddresses];
  v6 = [v5 firstObject];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v7 = [objc_alloc(MEMORY[0x1E695B4C0]) initWithOptions:1 behaviors:1 searchString:v6];
    v8 = [CNClassKitServices objectsMatching:v7 fromStore:v4];
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

- (id)sgContactMatchesWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(CNEmailAddressContactPredicate *)self emailAddresses];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v15 = [v8 contactMatchesByEmailAddress:*(*(&v17 + 1) + 8 * i) error:a6];
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

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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