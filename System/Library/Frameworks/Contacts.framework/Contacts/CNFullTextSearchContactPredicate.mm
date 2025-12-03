@interface CNFullTextSearchContactPredicate
- (BOOL)canSearchCoreRecentsLibrary:(id)library;
- (CNFullTextSearchContactPredicate)initWithCoder:(id)coder;
- (CNFullTextSearchContactPredicate)initWithSearchString:(id)string containerIdentifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers;
- (NSString)description;
- (id)contactsFromRecentsLibrary:(id)library;
- (id)handleMatchInfoForContact:(id)contact;
- (id)nameMatchInfoForContact:(id)contact;
- (id)sgContactMatchesWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNFullTextSearchContactPredicate

- (CNFullTextSearchContactPredicate)initWithSearchString:(id)string containerIdentifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers
{
  stringCopy = string;
  identifiersCopy = identifiers;
  groupIdentifiersCopy = groupIdentifiers;
  v20.receiver = self;
  v20.super_class = CNFullTextSearchContactPredicate;
  v11 = [(CNPredicate *)&v20 init];
  if (v11)
  {
    v12 = [stringCopy copy];
    searchString = v11->_searchString;
    v11->_searchString = v12;

    v14 = [identifiersCopy copy];
    containerIdentifiers = v11->_containerIdentifiers;
    v11->_containerIdentifiers = v14;

    v16 = [groupIdentifiersCopy copy];
    groupIdentifiers = v11->_groupIdentifiers;
    v11->_groupIdentifiers = v16;

    v18 = v11;
  }

  return v11;
}

- (CNFullTextSearchContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CNFullTextSearchContactPredicate;
  v5 = [(CNPredicate *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_searchString"];
    v7 = [v6 copy];
    searchString = v5->_searchString;
    v5->_searchString = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_containerIdentifiers"];
    v13 = [v12 copy];
    containerIdentifiers = v5->_containerIdentifiers;
    v5->_containerIdentifiers = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"_groupIdentifiers"];
    v19 = [v18 copy];
    groupIdentifiers = v5->_groupIdentifiers;
    v5->_groupIdentifiers = v19;

    v21 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNFullTextSearchContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_searchString forKey:{@"_searchString", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_containerIdentifiers forKey:@"_containerIdentifiers"];
  [coderCopy encodeObject:self->_groupIdentifiers forKey:@"_groupIdentifiers"];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingFullTextSearch:containerIdentifiers:groupIdentifiers:]"];
  searchString = [(CNFullTextSearchContactPredicate *)self searchString];
  v6 = [v3 appendName:@"searchString" object:searchString];

  containerIdentifiers = [(CNFullTextSearchContactPredicate *)self containerIdentifiers];
  v8 = [v3 appendName:@"containerIdentifiers" object:containerIdentifiers];

  groupIdentifiers = [(CNFullTextSearchContactPredicate *)self groupIdentifiers];
  v10 = [v3 appendName:@"groupIdentifiers" object:groupIdentifiers];

  build = [v3 build];

  return build;
}

- (BOOL)canSearchCoreRecentsLibrary:(id)library
{
  libraryCopy = library;
  v5 = *MEMORY[0x1E6996530];
  containerIdentifiers = [(CNFullTextSearchContactPredicate *)self containerIdentifiers];
  LOBYTE(v5) = (*(v5 + 16))(v5, containerIdentifiers);

  if (v5)
  {
    v7 = 1;
  }

  else
  {
    containerIdentifiers2 = [(CNFullTextSearchContactPredicate *)self containerIdentifiers];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__CNFullTextSearchContactPredicate_CoreRecents__canSearchCoreRecentsLibrary___block_invoke;
    v10[3] = &unk_1E7412440;
    v11 = libraryCopy;
    v7 = [containerIdentifiers2 _cn_all:v10];
  }

  return v7;
}

uint64_t __77__CNFullTextSearchContactPredicate_CoreRecents__canSearchCoreRecentsLibrary___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 domains];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)contactsFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  v5 = *MEMORY[0x1E6996570];
  searchString = [(CNFullTextSearchContactPredicate *)self searchString];
  LOBYTE(v5) = (*(v5 + 16))(v5, searchString);

  if (v5)
  {
    searchString2 = [(CNFullTextSearchContactPredicate *)self searchString];
    v8 = [libraryCopy contactsWithName:searchString2 prefixSearch:0 error:0];

    v9 = [MEMORY[0x1E695DFA8] set];
    array = [MEMORY[0x1E695DF70] array];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __76__CNFullTextSearchContactPredicate_CoreRecents__contactsFromRecentsLibrary___block_invoke;
    v30[3] = &unk_1E7413AB0;
    v11 = v9;
    v31 = v11;
    selfCopy = self;
    v12 = array;
    v33 = v12;
    [v8 _cn_each:v30];
    searchString3 = [(CNFullTextSearchContactPredicate *)self searchString];
    v14 = [libraryCopy contactsWithHandlesMatchingString:searchString3 error:0];

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __76__CNFullTextSearchContactPredicate_CoreRecents__contactsFromRecentsLibrary___block_invoke_2;
    v26 = &unk_1E7413AB0;
    v27 = v11;
    selfCopy2 = self;
    v29 = v12;
    v15 = v12;
    v16 = v11;
    [v14 _cn_each:&v23];
    v17 = [MEMORY[0x1E6996810] successWithValue:{v15, v23, v24, v25, v26}];
  }

  else
  {
    v18 = [libraryCopy allContactsWithError:0];
    v19 = v18;
    v20 = MEMORY[0x1E695E0F0];
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    v17 = [MEMORY[0x1E6996810] successWithValue:v21];
  }

  return v17;
}

void __76__CNFullTextSearchContactPredicate_CoreRecents__contactsFromRecentsLibrary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  v5 = [v3 identifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = [*(a1 + 40) nameMatchInfoForContact:v11];
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E69967A8] pairWithFirst:v11 second:v6];
    [v7 addObject:v8];

    v9 = *(a1 + 32);
    v10 = [v11 identifier];
    [v9 addObject:v10];
  }
}

void __76__CNFullTextSearchContactPredicate_CoreRecents__contactsFromRecentsLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  v5 = [v3 identifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = [*(a1 + 40) handleMatchInfoForContact:v11];
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E69967A8] pairWithFirst:v11 second:v6];
    [v7 addObject:v8];

    v9 = *(a1 + 32);
    v10 = [v11 identifier];
    [v9 addObject:v10];
  }
}

- (id)nameMatchInfoForContact:(id)contact
{
  v31[6] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = *MEMORY[0x1E6996570];
  searchString = [(CNFullTextSearchContactPredicate *)self searchString];
  LODWORD(v5) = (*(v5 + 16))(v5, searchString);

  if (v5)
  {
    v31[0] = @"givenName";
    v31[1] = @"middleName";
    v31[2] = @"familyName";
    v31[3] = @"namePrefix";
    v31[4] = @"nameSuffix";
    v31[5] = @"nickname";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:6];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v26 = 0u;
    v7 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          objc_opt_class();
          v12 = [contactCopy valueForKey:v11];
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          if (v14)
          {
            searchString2 = [(CNFullTextSearchContactPredicate *)self searchString];
            v16 = [v14 containsString:searchString2];

            if (v16)
            {
              v28 = v11;
              searchString3 = [(CNFullTextSearchContactPredicate *)self searchString];
              v27 = searchString3;
              v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
              v29 = v20;
              v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

              goto LABEL_17;
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_17:

    if ([v17 count])
    {
      v18 = objc_alloc_init(CNContactMatchInfo);
      [(CNContactMatchInfo *)v18 setMatchedNameProperty:1];
      [(CNContactMatchInfo *)v18 setMatchedProperties:v17];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)handleMatchInfoForContact:(id)contact
{
  v28[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = *MEMORY[0x1E6996570];
  searchString = [(CNFullTextSearchContactPredicate *)self searchString];
  LODWORD(v5) = (*(v5 + 16))(v5, searchString);

  if (v5)
  {
    searchString2 = [(CNFullTextSearchContactPredicate *)self searchString];
    lowercaseString = [searchString2 lowercaseString];

    phoneNumbers = [contactCopy phoneNumbers];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__CNFullTextSearchContactPredicate_CoreRecents__handleMatchInfoForContact___block_invoke;
    v22[3] = &unk_1E7413588;
    v22[4] = self;
    v10 = [phoneNumbers _cn_any:v22];

    if (v10)
    {
      v27 = @"phoneNumbers";
      searchString3 = [(CNFullTextSearchContactPredicate *)self searchString];
      v26 = searchString3;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      v28[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    }

    else
    {
      emailAddresses = [contactCopy emailAddresses];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __75__CNFullTextSearchContactPredicate_CoreRecents__handleMatchInfoForContact___block_invoke_2;
      v20[3] = &unk_1E7413588;
      v21 = lowercaseString;
      v16 = [emailAddresses _cn_any:v20];

      if (v16)
      {
        v24 = @"emailAddresses";
        searchString4 = [(CNFullTextSearchContactPredicate *)self searchString];
        v23 = searchString4;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
        v25 = v18;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      }

      else
      {
        v13 = 0;
      }

      searchString3 = v21;
    }

    if ([v13 count])
    {
      v14 = objc_alloc_init(CNContactMatchInfo);
      [(CNContactMatchInfo *)v14 setMatchedProperties:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __75__CNFullTextSearchContactPredicate_CoreRecents__handleMatchInfoForContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [v3 stringValue];
  v5 = [*(a1 + 32) searchString];
  v6 = [v4 containsString:v5];

  return v6;
}

uint64_t __75__CNFullTextSearchContactPredicate_CoreRecents__handleMatchInfoForContact___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [v3 containsString:*(a1 + 32)];

  return v4;
}

- (id)sgContactMatchesWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error
{
  serviceCopy = service;
  searchString = [(CNFullTextSearchContactPredicate *)self searchString];
  v10 = [serviceCopy suggestContactMatchesWithFullTextSearch:searchString limitTo:0x7FFFFFFFFFFFFFFFLL error:error];

  return v10;
}

@end