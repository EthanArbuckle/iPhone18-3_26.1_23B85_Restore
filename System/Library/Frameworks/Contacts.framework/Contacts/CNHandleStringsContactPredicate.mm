@interface CNHandleStringsContactPredicate
- (BOOL)isEqual:(id)equal;
- (CNHandleStringsContactPredicate)initWithCoder:(id)coder;
- (CNHandleStringsContactPredicate)initWithHandleStrings:(id)strings containerIdentifiers:(id)identifiers;
- (NSString)description;
- (id)cn_resultTransformWithMatchInfos:(id)infos;
- (id)contactsFromRecentsLibrary:(id)library;
- (int64_t)countOfContactsFromRecentsLibrary:(id)library;
- (unint64_t)hash;
- (void)cn_triageWithLog:(id)log serialNumber:(unint64_t)number;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNHandleStringsContactPredicate

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  containerIdentifiers = [(CNHandleStringsContactPredicate *)self containerIdentifiers];

  if (containerIdentifiers)
  {
    v5 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingHandleStrings:inContainersWithIdentifiers:]"];
    handleStrings = [(CNHandleStringsContactPredicate *)self handleStrings];
    v7 = [v3 appendName:@"handleStrings" object:handleStrings];

    containerIdentifiers2 = [(CNHandleStringsContactPredicate *)self containerIdentifiers];
    v9 = @"containerIdentifiers";
  }

  else
  {
    v10 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingHandleStrings:]"];
    containerIdentifiers2 = [(CNHandleStringsContactPredicate *)self handleStrings];
    v9 = @"handleStrings";
  }

  v11 = [v3 appendName:v9 object:containerIdentifiers2];

  build = [v3 build];

  return build;
}

- (id)contactsFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  v5 = *MEMORY[0x1E6996530];
  handleStrings = [(CNHandleStringsContactPredicate *)self handleStrings];
  LODWORD(v5) = (*(v5 + 16))(v5, handleStrings);

  if (v5)
  {
    v7 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E0F0]];
  }

  else
  {
    handleStrings2 = [(CNHandleStringsContactPredicate *)self handleStrings];
    v14 = 0;
    v9 = [libraryCopy contactsWithHandles:handleStrings2 error:&v14];
    v10 = v14;

    v11 = MEMORY[0x1E6996810];
    v12 = (*(sContactsPairedWithNoMatchInfo + 2))(sContactsPairedWithNoMatchInfo, v9);
    v7 = [v11 resultWithValue:v12 orError:v10];
  }

  return v7;
}

- (int64_t)countOfContactsFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  v5 = *MEMORY[0x1E6996530];
  handleStrings = [(CNHandleStringsContactPredicate *)self handleStrings];
  LOBYTE(v5) = (*(v5 + 16))(v5, handleStrings);

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    handleStrings2 = [(CNHandleStringsContactPredicate *)self handleStrings];
    v7 = [libraryCopy countOfContactsWithHandles:handleStrings2 error:0];
  }

  return v7;
}

- (CNHandleStringsContactPredicate)initWithHandleStrings:(id)strings containerIdentifiers:(id)identifiers
{
  stringsCopy = strings;
  identifiersCopy = identifiers;
  v15.receiver = self;
  v15.super_class = CNHandleStringsContactPredicate;
  v8 = [(CNPredicate *)&v15 init];
  if (v8)
  {
    v9 = [stringsCopy copy];
    handleStrings = v8->_handleStrings;
    v8->_handleStrings = v9;

    v11 = [identifiersCopy copy];
    containerIdentifiers = v8->_containerIdentifiers;
    v8->_containerIdentifiers = v11;

    v13 = v8;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CNHandleStringsContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v8, 0}];

  return self;
}

uint64_t __43__CNHandleStringsContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) handleStrings];
  v4 = [*(a1 + 40) handleStrings];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CNHandleStringsContactPredicate_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __39__CNHandleStringsContactPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) handleStrings];
  v3 = [v1 arrayHash:v2];

  return v3;
}

- (CNHandleStringsContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CNHandleStringsContactPredicate;
  v5 = [(CNPredicate *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_handleStrings"];
    v10 = [v9 copy];
    handleStrings = v5->_handleStrings;
    v5->_handleStrings = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNHandleStringsContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_handleStrings forKey:{@"_handleStrings", v5.receiver, v5.super_class}];
}

- (id)cn_resultTransformWithMatchInfos:(id)infos
{
  infosCopy = infos;
  allValues = [infosCopy allValues];
  v6 = [allValues _cn_any:&__block_literal_global_57];

  handleStrings = [(CNHandleStringsContactPredicate *)self handleStrings];
  v8 = handleStrings;
  if (v6)
  {
    v9 = v15;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v10 = __68__CNHandleStringsContactPredicate_cn_resultTransformWithMatchInfos___block_invoke_2;
    v11 = infosCopy;
  }

  else
  {
    v9 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v10 = __68__CNHandleStringsContactPredicate_cn_resultTransformWithMatchInfos___block_invoke_3;
    v11 = handleStrings;
  }

  v9[2] = v10;
  v9[3] = &unk_1E7413C88;
  v9[4] = v11;
  v12 = _Block_copy(v9);

  return v12;
}

BOOL __68__CNHandleStringsContactPredicate_cn_resultTransformWithMatchInfos___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 matchedTerms];
  v3 = v2 != 0;

  return v3;
}

id __68__CNHandleStringsContactPredicate_cn_resultTransformWithMatchInfos___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v2;
  v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v6 = *(a1 + 32);
        v7 = [v5 identifier];
        v8 = [v6 objectForKeyedSubscript:v7];
        v9 = [v8 matchedTerms];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * j);
              v16 = [v3 objectForKey:v15];
              if (v16)
              {
                v17 = v16;
                [v16 addObject:v5];
              }

              else
              {
                v17 = [MEMORY[0x1E695DF70] arrayWithObject:v5];
                [v3 setObject:v17 forKey:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  return v3;
}

id __68__CNHandleStringsContactPredicate_cn_resultTransformWithMatchInfos___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CNContactHandleStringIndexer alloc] initWithTargetHandleStrings:*(a1 + 32)];
  [(CNContactHandleStringIndexer *)v4 indexContacts:v3];

  v5 = [(CNContactHandleStringIndexer *)v4 index];

  return v5;
}

- (void)cn_triageWithLog:(id)log serialNumber:(unint64_t)number
{
  v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x1E69966E8];
    logCopy = log;
    currentEnvironment = [v6 currentEnvironment];
    defaultCountryCode = [currentEnvironment defaultCountryCode];
    v10 = 134218242;
    numberCopy = number;
    v12 = 2114;
    v13 = defaultCountryCode;
    _os_log_impl(&dword_1954A0000, logCopy, OS_LOG_TYPE_INFO, "%04llx Default country code: %{public}@", &v10, 0x16u);
  }
}

@end