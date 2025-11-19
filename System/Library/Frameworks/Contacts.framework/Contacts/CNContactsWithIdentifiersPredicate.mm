@interface CNContactsWithIdentifiersPredicate
- (BOOL)isEqual:(id)a3;
- (CNContactsWithIdentifiersPredicate)initWithCoder:(id)a3;
- (CNContactsWithIdentifiersPredicate)initWithIdentifiers:(id)a3;
- (NSString)description;
- (id)contactsFromDonationStore:(id)a3;
- (id)contactsFromRecentsLibrary:(id)a3;
- (id)internalIdentifiersForStoreWithIdentifier:(id)a3;
- (id)suggestionsWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6;
- (int64_t)countOfContactsFromRecentsLibrary:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactsWithIdentifiersPredicate

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsWithIdentifiers:]"];
  v5 = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v6 = [v3 appendName:@"identifiers (count)" unsignedInteger:{objc_msgSend(v5, "count")}];

  v7 = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v8 = [v3 appendName:@"identifiers" object:v7];

  v9 = [v3 build];

  return v9;
}

- (id)suggestionsWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a5;
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
          v19 = [v8 contactFromRecordID:v18 error:a6];
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

  [CNContactSuggestionMatch fetchLinkedIdentifiersForContactSuggestionMatches:v24 fromSuggestionService:v8];

  return v24;
}

- (id)contactsFromDonationStore:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v6 = [v5 containsObject:@"2D0447ED-BB88-45F9-909B-EB36C6920675"];

  if (v6)
  {
    v7 = [v4 donatedMeCardEither];
    v8 = [v7 isLeft];
    v9 = MEMORY[0x1E69966C0];
    if (v8)
    {
      v10 = [v7 left];
      v14[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v12 = [v9 eitherWithLeft:v11];
    }

    else
    {
      v10 = [v7 right];
      v12 = [v9 eitherWithRight:v10];
    }
  }

  else
  {
    v12 = [MEMORY[0x1E69966C0] eitherWithLeft:MEMORY[0x1E695E0F0]];
  }

  return v12;
}

- (CNContactsWithIdentifiersPredicate)initWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier IN %@", v4];
  v11.receiver = self;
  v11.super_class = CNContactsWithIdentifiersPredicate;
  v6 = [(CNPredicate *)&v11 initWithPredicate:v5];
  if (v6)
  {
    v7 = [v4 copy];
    identifiers = v6->_identifiers;
    v6->_identifiers = v7;

    v9 = v6;
  }

  return v6;
}

- (CNContactsWithIdentifiersPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CNContactsWithIdentifiersPredicate;
  v5 = [(CNPredicate *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_identifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v9;

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNContactsWithIdentifiersPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifiers forKey:{@"_identifiers", v5.receiver, v5.super_class}];
}

- (id)internalIdentifiersForStoreWithIdentifier:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_identifiers)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
    }

    v7 = v6;
    v24 = [(NSMutableDictionary *)self->_internalIdentifiers objectForKeyedSubscript:v6];
    if (!v24)
    {
      v23 = v7;
      v24 = [MEMORY[0x1E695DFA8] set];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = [(CNContactsWithIdentifiersPredicate *)self identifiers];
      v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(v8);
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

          v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CNContactsWithIdentifiersPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
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

- (id)contactsFromRecentsLibrary:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6996530];
  v6 = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v7 = (*(v5 + 16))(v5, v6);

  if (v7)
  {
    v8 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v9 = +[CNCoreRecentsContactStore storeIdentifier];
    v10 = [(CNContactsWithIdentifiersPredicate *)self internalIdentifiersForStoreWithIdentifier:v9];

    v11 = [v10 allObjects];
    v12 = (*(v5 + 16))(v5, v11);

    if (v12)
    {
      v8 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E0F0]];
    }

    else
    {
      v13 = [v10 allObjects];
      v19 = 0;
      v14 = [v4 contactsWithInternalIdentifiers:v13 error:&v19];
      v15 = v19;

      v16 = MEMORY[0x1E6996810];
      v17 = (*(sContactsPairedWithNoMatchInfo + 2))(sContactsPairedWithNoMatchInfo, v14);
      v8 = [v16 resultWithValue:v17 orError:v15];
    }
  }

  return v8;
}

- (int64_t)countOfContactsFromRecentsLibrary:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6996530];
  v6 = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v7 = (*(v5 + 16))(v5, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = +[CNCoreRecentsContactStore storeIdentifier];
    v10 = [(CNContactsWithIdentifiersPredicate *)self internalIdentifiersForStoreWithIdentifier:v9];

    v11 = [v10 allObjects];
    v12 = (*(v5 + 16))(v5, v11);

    if (v12)
    {
      v8 = 0;
    }

    else
    {
      v13 = [v10 allObjects];
      v14 = [v4 contactsWithInternalIdentifiers:v13 error:0];

      v8 = [v14 count];
    }
  }

  return v8;
}

@end