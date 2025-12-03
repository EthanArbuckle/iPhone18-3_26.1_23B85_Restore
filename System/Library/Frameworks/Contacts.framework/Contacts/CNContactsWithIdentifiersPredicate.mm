@interface CNContactsWithIdentifiersPredicate
- (BOOL)isEqual:(id)equal;
- (CNContactsWithIdentifiersPredicate)initWithCoder:(id)coder;
- (CNContactsWithIdentifiersPredicate)initWithIdentifiers:(id)identifiers;
- (NSString)description;
- (id)contactsFromDonationStore:(id)store;
- (id)contactsFromRecentsLibrary:(id)library;
- (id)internalIdentifiersForStoreWithIdentifier:(id)identifier;
- (id)suggestionsWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error;
- (int64_t)countOfContactsFromRecentsLibrary:(id)library;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactsWithIdentifiersPredicate

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsWithIdentifiers:]"];
  identifiers = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v6 = [v3 appendName:@"identifiers (count)" unsignedInteger:{objc_msgSend(identifiers, "count")}];

  identifiers2 = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v8 = [v3 appendName:@"identifiers" object:identifiers2];

  build = [v3 build];

  return build;
}

- (id)suggestionsWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v9 = +[CNSuggestedContactStore storeIdentifier];
  v10 = [(CNContactsWithIdentifiersPredicate *)self internalIdentifiersForStoreWithIdentifier:v9];

  v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = SGRecordIDFromIdentifier();
        v18 = v17[2](v17, v16);

        if (v18)
        {
          v19 = [serviceCopy contactFromRecordID:v18 error:error];
          if (v19)
          {
            v20 = objc_alloc(MEMORY[0x1E69991F8]);
            v21 = [v20 initWithContact:v19 matchTokens:MEMORY[0x1E695E0F0] matchInfo:MEMORY[0x1E695E0F0]];
            v22 = [CNContactSuggestionMatch suggestionFromContactMatch:v21];
            [v24 addObject:v22];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  [CNContactSuggestionMatch fetchLinkedIdentifiersForContactSuggestionMatches:v24 fromSuggestionService:serviceCopy];

  return v24;
}

- (id)contactsFromDonationStore:(id)store
{
  v14[1] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  identifiers = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v6 = [identifiers containsObject:@"2D0447ED-BB88-45F9-909B-EB36C6920675"];

  if (v6)
  {
    donatedMeCardEither = [storeCopy donatedMeCardEither];
    isLeft = [donatedMeCardEither isLeft];
    v9 = MEMORY[0x1E69966C0];
    if (isLeft)
    {
      left = [donatedMeCardEither left];
      v14[0] = left;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v12 = [v9 eitherWithLeft:v11];
    }

    else
    {
      left = [donatedMeCardEither right];
      v12 = [v9 eitherWithRight:left];
    }
  }

  else
  {
    v12 = [MEMORY[0x1E69966C0] eitherWithLeft:MEMORY[0x1E695E0F0]];
  }

  return v12;
}

- (CNContactsWithIdentifiersPredicate)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  identifiersCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier IN %@", identifiersCopy];
  v11.receiver = self;
  v11.super_class = CNContactsWithIdentifiersPredicate;
  v6 = [(CNPredicate *)&v11 initWithPredicate:identifiersCopy];
  if (v6)
  {
    v7 = [identifiersCopy copy];
    identifiers = v6->_identifiers;
    v6->_identifiers = v7;

    v9 = v6;
  }

  return v6;
}

- (CNContactsWithIdentifiersPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CNContactsWithIdentifiersPredicate;
  v5 = [(CNPredicate *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_identifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v9;

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNContactsWithIdentifiersPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifiers forKey:{@"_identifiers", v5.receiver, v5.super_class}];
}

- (id)internalIdentifiersForStoreWithIdentifier:(id)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self->_identifiers)
  {
    if (identifierCopy)
    {
      null = identifierCopy;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v7 = null;
    v24 = [(NSMutableDictionary *)self->_internalIdentifiers objectForKeyedSubscript:null];
    if (!v24)
    {
      v23 = v7;
      v24 = [MEMORY[0x1E695DFA8] set];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      identifiers = [(CNContactsWithIdentifiersPredicate *)self identifiers];
      v9 = [identifiers countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(identifiers);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            v14 = [CNContactStore storeIdentifierFromContactIdentifier:v13];
            if (v5 | v14)
            {
              v15 = v14;
              v16 = [CNContactStore storeIdentifierFromContactIdentifier:v13];
              v17 = [v16 isEqual:v5];

              if (!v17)
              {
                continue;
              }
            }

            v18 = [CNContactStore internalIdentifierFromContactIdentifier:v13];
            [v24 addObject:v18];
          }

          v10 = [identifiers countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v10);
      }

      internalIdentifiers = self->_internalIdentifiers;
      if (!internalIdentifiers)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v21 = self->_internalIdentifiers;
        self->_internalIdentifiers = v20;

        internalIdentifiers = self->_internalIdentifiers;
      }

      v7 = v23;
      [(NSMutableDictionary *)internalIdentifiers setObject:v24 forKeyedSubscript:v23];
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CNContactsWithIdentifiersPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v8, 0}];

  return self;
}

uint64_t __46__CNContactsWithIdentifiersPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) identifiers];
  v4 = [*(a1 + 40) identifiers];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__CNContactsWithIdentifiersPredicate_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __42__CNContactsWithIdentifiersPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) identifiers];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (id)contactsFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  v5 = *MEMORY[0x1E6996530];
  identifiers = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v7 = (*(v5 + 16))(v5, identifiers);

  if (v7)
  {
    v8 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v9 = +[CNCoreRecentsContactStore storeIdentifier];
    v10 = [(CNContactsWithIdentifiersPredicate *)self internalIdentifiersForStoreWithIdentifier:v9];

    allObjects = [v10 allObjects];
    v12 = (*(v5 + 16))(v5, allObjects);

    if (v12)
    {
      v8 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E0F0]];
    }

    else
    {
      allObjects2 = [v10 allObjects];
      v19 = 0;
      v14 = [libraryCopy contactsWithInternalIdentifiers:allObjects2 error:&v19];
      v15 = v19;

      v16 = MEMORY[0x1E6996810];
      v17 = (*(sContactsPairedWithNoMatchInfo + 2))(sContactsPairedWithNoMatchInfo, v14);
      v8 = [v16 resultWithValue:v17 orError:v15];
    }
  }

  return v8;
}

- (int64_t)countOfContactsFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  v5 = *MEMORY[0x1E6996530];
  identifiers = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v7 = (*(v5 + 16))(v5, identifiers);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = +[CNCoreRecentsContactStore storeIdentifier];
    v10 = [(CNContactsWithIdentifiersPredicate *)self internalIdentifiersForStoreWithIdentifier:v9];

    allObjects = [v10 allObjects];
    v12 = (*(v5 + 16))(v5, allObjects);

    if (v12)
    {
      v8 = 0;
    }

    else
    {
      allObjects2 = [v10 allObjects];
      v14 = [libraryCopy contactsWithInternalIdentifiers:allObjects2 error:0];

      v8 = [v14 count];
    }
  }

  return v8;
}

@end