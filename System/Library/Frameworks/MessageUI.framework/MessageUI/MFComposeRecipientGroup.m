@interface MFComposeRecipientGroup
- (BOOL)isEqual:(id)a3;
- (BOOL)wasCompleteMatch;
- (MFComposeRecipientGroup)initWithChildren:(id)a3 displayString:(id)a4;
- (id)address;
- (id)children;
- (id)childrenWithCompleteMatches;
- (id)completelyMatchedAttributedStrings;
- (id)label;
- (id)placeholderName;
- (id)sortedChildren;
- (void)_populateSortedChildren;
- (void)children;
@end

@implementation MFComposeRecipientGroup

- (MFComposeRecipientGroup)initWithChildren:(id)a3 displayString:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MFComposeRecipientGroup;
  v9 = [(MFComposeRecipient *)&v13 initWithContact:0 address:0 kind:5];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_children, a3);
    objc_storeStrong(&v10->super._displayString, a4);
    v11 = v10;
  }

  return v10;
}

- (id)label
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"GROUP_RECIPIENT" value:&stru_1F3CF3758 table:@"Main"];

  return v3;
}

- (id)placeholderName
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"GROUP_RECIPIENT_PLACEHOLDER" value:&stru_1F3CF3758 table:@"Main"];

  return v3;
}

- (id)children
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)self->_children count])
  {
    autocompleteResult = self->super._autocompleteResult;
    if (autocompleteResult)
    {
      v21 = 0;
      v4 = [(CNAutocompleteResult *)autocompleteResult members:&v21];
      v16 = v21;
      if (v16)
      {
        v5 = MFLogGeneral();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = [v16 ef_publicDescription];
          [(MFComposeRecipientGroup *)v6 children];
        }
      }

      if (v4)
      {
        v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = v4;
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v9)
        {
          v10 = *v18;
          do
          {
            v11 = 0;
            do
            {
              if (*v18 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = [MFComposeRecipient composeRecipientWithAutocompleteResult:*(*(&v17 + 1) + 8 * v11)];
              if (v12)
              {
                [(NSArray *)v7 addObject:v12];
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
          }

          while (v9);
        }

        children = self->_children;
        self->_children = v7;
      }
    }
  }

  v14 = self->_children;

  return v14;
}

- (void)_populateSortedChildren
{
  if (!self->super._cachedSortedMembers)
  {
    v3 = [(MFComposeRecipient *)self originContext];
    v13 = [v3 searchTerm];

    v4 = [(MFComposeRecipientGroup *)self children];
    v14 = 0;
    v15 = 0;
    v5 = _sortedArrayByRelevancy(v13, v4, &v15, &v14);
    v6 = v15;
    v7 = v14;

    cachedSortedMembers = self->super._cachedSortedMembers;
    self->super._cachedSortedMembers = v5;
    v9 = v5;

    cachedMatchedStrings = self->super._cachedMatchedStrings;
    self->super._cachedMatchedStrings = v7;
    v11 = v7;

    cachedCompleteMatches = self->super._cachedCompleteMatches;
    self->super._cachedCompleteMatches = v6;
  }
}

- (id)sortedChildren
{
  cachedSortedMembers = self->super._cachedSortedMembers;
  if (!cachedSortedMembers)
  {
    [(MFComposeRecipientGroup *)self _populateSortedChildren];
    cachedSortedMembers = self->super._cachedSortedMembers;
  }

  return cachedSortedMembers;
}

- (id)address
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(MFComposeRecipientGroup *)self children];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(MFComposeRecipientGroup *)self children];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) address];
        if (v10)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = MFLocalizedAddressSeparator();
  v12 = [v5 componentsJoinedByString:v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 children];
    v6 = [(MFComposeRecipientGroup *)self children];
    v7 = [v5 isEqualToArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)wasCompleteMatch
{
  cachedCompleteMatches = self->super._cachedCompleteMatches;
  if (cachedCompleteMatches)
  {
    v4 = [(NSArray *)cachedCompleteMatches count];
  }

  else
  {
    v5 = [(MFComposeRecipient *)self originContext];
    v6 = [v5 searchTerm];
    v7 = [(MFComposeRecipientGroup *)self children];
    v9 = 0;
    v4 = _fastCountOfCompleteMatches(v6, v7, &v9);
  }

  return v4 != 0;
}

- (id)completelyMatchedAttributedStrings
{
  cachedMatchedStrings = self->super._cachedMatchedStrings;
  if (!cachedMatchedStrings)
  {
    [(MFComposeRecipientGroup *)self _populateSortedChildren];
    cachedMatchedStrings = self->super._cachedMatchedStrings;
  }

  return cachedMatchedStrings;
}

- (id)childrenWithCompleteMatches
{
  cachedCompleteMatches = self->super._cachedCompleteMatches;
  if (!cachedCompleteMatches)
  {
    [(MFComposeRecipientGroup *)self _populateSortedChildren];
    cachedCompleteMatches = self->super._cachedCompleteMatches;
  }

  return cachedCompleteMatches;
}

- (void)children
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Error fetching members for contact of type CNAutocompleteResultTypeGroup: %{public}@", buf, 0xCu);
}

@end