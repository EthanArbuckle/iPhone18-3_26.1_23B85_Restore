@interface ABNamePredicate
- (ABNamePredicate)init;
- (BOOL)isValid;
- (id)_matchClauseForColumns:(id)a3 requiringAllTerms:(BOOL)a4;
- (id)_personNameKeys;
- (id)_personNonNameKeys;
- (id)ab_metadataForMatchingRow:(CPSqliteStatement *)a3 columnOffset:(int)a4;
- (id)emphasizedExcerptStringForMatchString:(id)a3;
- (id)predicateFormat;
- (id)queryJoinsInCompound:(BOOL)a3 predicateIdentifier:(int)a4;
- (id)querySelectPropertiesForPredicateIdentifier:(int)a3;
- (id)queryWhereStringForPredicateIdentifier:(int)a3;
- (void)ab_bindJoinClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5;
- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5;
- (void)dealloc;
- (void)setAccountIdentifier:(id)a3;
- (void)setAddressBook:(void *)a3;
- (void)setGroup:(void *)a3;
- (void)setName:(id)a3;
- (void)setSource:(void *)a3;
- (void)tokenizations;
@end

@implementation ABNamePredicate

- (ABNamePredicate)init
{
  v5.receiver = self;
  v5.super_class = ABNamePredicate;
  v2 = [(ABPredicate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_matchPreferredName = 1;
    v2->_tokenizations = ABTokenListCreate();
    v3->_generateExceprts = 0;
  }

  return v3;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  tokenizationSortKeys = self->_tokenizationSortKeys;
  if (tokenizationSortKeys)
  {
    releaseTokenizationSortKeys(tokenizationSortKeys);
  }

  CFRelease(self->_tokenizations);

  v5.receiver = self;
  v5.super_class = ABNamePredicate;
  [(ABPredicate *)&v5 dealloc];
}

- (void)setAddressBook:(void *)a3
{
  addressBook = self->_addressBook;
  if (addressBook != a3)
  {
    if (addressBook)
    {
      CFRelease(addressBook);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_addressBook = a3;
  }
}

- (void)setName:(id)a3
{
  name = self->_name;
  if (name != a3)
  {

    self->_name = [a3 copy];
    tokenizations = self->_tokenizations;

    ABTokenListRemoveAllTokens(tokenizations);
  }
}

- (void)setGroup:(void *)a3
{
  if (a3)
  {
    a3 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
  }

  [(ABNamePredicate *)self setGroups:a3];
}

- (void)setSource:(void *)a3
{
  if (a3)
  {
    a3 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
  }

  [(ABNamePredicate *)self setSources:a3];
}

- (void)setAccountIdentifier:(id)a3
{
  if ([(ABNamePredicate *)self addressBook])
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    [(ABNamePredicate *)a2 setAccountIdentifier:?];
    if (!a3)
    {
      return;
    }
  }

  v6 = ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier([(ABNamePredicate *)self addressBook], a3);
  if (v6)
  {
    v7 = v6;
    [(ABNamePredicate *)self setSources:v6];
  }
}

- (void)tokenizations
{
  if ([(ABNamePredicate *)self name]&& !ABTokenListGetCount(self->_tokenizations))
  {
    tokenizations = self->_tokenizations;
    WordTokenizer = ABAddressBookGetWordTokenizer([(ABNamePredicate *)self addressBook]);
    ABTokenListPopulateFromString(tokenizations, WordTokenizer, 0, [(ABNamePredicate *)self name], 0, 1, 0);
  }

  return self->_tokenizations;
}

- (BOOL)isValid
{
  v2 = [(ABNamePredicate *)self tokenizations];
  if (v2)
  {
    LOBYTE(v2) = ABTokenListGetCount(v2) > 0;
  }

  return v2;
}

- (id)ab_metadataForMatchingRow:(CPSqliteStatement *)a3 columnOffset:(int)a4
{
  v20[3] = *MEMORY[0x1E69E9840];
  if (!ABCFTSIsEnabled())
  {
    return 0;
  }

  v7 = sqlite3_column_int(a3->var1, a4);
  v8 = *sqlite3_column_blob(a3->var1, a4 + 1);
  if ([(ABNamePredicate *)self generateExceprts])
  {
    v9 = sqlite3_column_text(a3->var1, a4 + 2);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    v11 = -[ABNamePredicate emphasizedExcerptStringForMatchString:](self, "emphasizedExcerptStringForMatchString:", [MEMORY[0x1E696AEC0] stringWithUTF8String:v10]);
    v19[0] = @"relevance";
    v20[0] = [MEMORY[0x1E696AD98] numberWithInt:v7];
    v20[1] = v8;
    v19[1] = @"matchedProperties";
    v19[2] = @"excerpt";
    v20[2] = v11;
    v12 = MEMORY[0x1E695DF20];
    v13 = v20;
    v14 = v19;
    v15 = 3;
  }

  else
  {
    v17[0] = @"relevance";
    v17[1] = @"matchedProperties";
    v18[0] = [MEMORY[0x1E696AD98] numberWithInt:v7];
    v18[1] = v8;
    v12 = MEMORY[0x1E695DF20];
    v13 = v18;
    v14 = v17;
    v15 = 2;
  }

  return [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
}

- (id)emphasizedExcerptStringForMatchString:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v6 = [a3 componentsSeparatedByString:@"\n"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__ABNamePredicate_emphasizedExcerptStringForMatchString___block_invoke;
  v8[3] = &unk_1E7CCCCE0;
  v8[4] = self;
  v8[5] = v5;
  [v6 enumerateObjectsUsingBlock:v8];
  return v5;
}

void __57__ABNamePredicate_emphasizedExcerptStringForMatchString___block_invoke(uint64_t a1, void *a2, char a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = [a2 isEqualToString:@"…"];
  v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:a2];
  if ((a3 & 1) != 0 && !v5)
  {
    v7 = [*(a1 + 32) tokenizations];
    Count = ABTokenListGetCount(v7);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        v11 = [a2 rangeOfString:ABTokenListGetTokenAtIndex(v7 options:{i), 393}];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = v11;
          v14 = v12;
          v16 = @"excerptEmphasized";
          v17[0] = [MEMORY[0x1E696AD98] numberWithBool:1];
          [v6 setAttributes:objc_msgSend(MEMORY[0x1E695DF20] range:{"dictionaryWithObjects:forKeys:count:", v17, &v16, 1), v13, v14}];
        }
      }
    }
  }

  [*(a1 + 40) appendAttributedString:v6];
}

- (id)querySelectPropertiesForPredicateIdentifier:(int)a3
{
  v3 = *&a3;
  v10[2] = *MEMORY[0x1E69E9840];
  if (!ABCFTSIsEnabled())
  {
    return 0;
  }

  if (self->_matchPersonOrCompanyNamesExclusively || self->_matchSmartDialerFormatsExclusively || ![(ABNamePredicate *)self generateExceprts])
  {
    v10[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"RankResults_%d.Rank", v3];
    v10[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"RankResults_%d.MatchedColumns", v3];
    v5 = MEMORY[0x1E695DEC8];
    v6 = v10;
    v7 = 2;
  }

  else
  {
    v9[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"RankResults_%d.Rank", v3];
    v9[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"RankResults_%d.MatchedColumns", v3];
    v9[2] = [MEMORY[0x1E696AEC0] stringWithFormat:@"RankResults_%d.MatchedSnippet", v3];
    v5 = MEMORY[0x1E695DEC8];
    v6 = v9;
    v7 = 3;
  }

  return [v5 arrayWithObjects:v6 count:v7];
}

- (id)_matchClauseForColumns:(id)a3 requiringAllTerms:(BOOL)a4
{
  v4 = a4;
  v7 = [MEMORY[0x1E696AD60] stringWithString:@" MATCH ' "];
  v8 = [(ABNamePredicate *)self tokenizations];
  if (ABTokenListGetCount(v8))
  {
    v9 = 0;
    if (v4)
    {
      v10 = @" AND ";
    }

    else
    {
      v10 = @" OR ";
    }

    do
    {
      if (v9)
      {
        [v7 appendFormat:v10];
      }

      objc_msgSend(v7, "appendFormat:", @"(");
      if ([a3 count])
      {
        v11 = 0;
        do
        {
          if (v11)
          {
            [v7 appendFormat:@" OR "];
          }

          [v7 appendFormat:@"%@:' || ? || '", objc_msgSend(a3, "objectAtIndex:", v11++)];
        }

        while (v11 < [a3 count]);
      }

      [v7 appendFormat:@""]);
      ++v9;
    }

    while (v9 < ABTokenListGetCount(v8));
  }

  [v7 appendFormat:@"'"];
  return v7;
}

- (id)queryJoinsInCompound:(BOOL)a3 predicateIdentifier:(int)a4
{
  v4 = *&a4;
  v17[1] = *MEMORY[0x1E69E9840];
  if (!ABCFTSIsEnabled())
  {
    return 0;
  }

  v6 = [MEMORY[0x1E696AD60] string];
  [v6 appendFormat:@"LEFT JOIN "];
  if ([(ABNamePredicate *)self matchPersonOrCompanyNamesExclusively])
  {
    v7 = [(ABNamePredicate *)self _personNameKeys];
    objc_msgSend(v6, "appendFormat:", @"(select ROWID as RankRow, ab_cf_tokenizer_namerank(matchinfo(ABPersonFullTextSearch), ?) as Rank, ab_cf_tokenizer_matched_properties(matchinfo(ABPersonFullTextSearch), ?) as MatchedColumns, 1 as HasFTSMatch from ABPersonFullTextSearch join ABPerson on ABPerson.rowid=ABPersonFullTextSearch.rowid WHERE ABPersonFullTextSearch.Organization MATCH ? and Kind=%@"), kABPersonKindOrganization;
    [v6 appendFormat:@" UNION "];
    [v6 appendFormat:@"select ROWID as RankRow, ab_cf_tokenizer_namerank(matchinfo(ABPersonFullTextSearch), ?) as Rank, ab_cf_tokenizer_matched_properties(matchinfo(ABPersonFullTextSearch), ?) as MatchedColumns, 1 as HasFTSMatch from ABPersonFullTextSearch join ABPerson on ABPerson.rowid=ABPersonFullTextSearch.rowid WHERE ABPersonFullTextSearch "];
    [v6 appendString:{-[ABNamePredicate _matchClauseForColumns:requiringAllTerms:](self, "_matchClauseForColumns:requiringAllTerms:", v7, 1)}];
    [v6 appendFormat:@" AND Kind=%@"], kABPersonKindPerson);
  }

  else if (self->_matchSmartDialerFormatsExclusively)
  {
    objc_msgSend(v6, "appendFormat:", @"(select ROWID as RankRow, ab_cf_tokenizer_namerank(matchinfo(ABPersonSmartDialerFullTextSearch), ?) as Rank, ab_cf_tokenizer_sd_matched_properties(matchinfo(ABPersonSmartDialerFullTextSearch), ?) as MatchedColumns, 1 as HasFTSMatch from ABPersonSmartDialerFullTextSearch join ABPerson on ABPerson.rowid=ABPersonSmartDialerFullTextSearch.rowid WHERE ABPersonSmartDialerFullTextSearch MATCH ?");
    [v6 appendFormat:@" UNION "];
    [v6 appendFormat:@"select ROWID as RankRow, ab_cf_tokenizer_namerank(matchinfo(ABPersonFullTextSearch), ?) as Rank, ab_cf_tokenizer_matched_properties(matchinfo(ABPersonFullTextSearch), ?) as MatchedColumns, 1 as HasFTSMatch from ABPersonFullTextSearch join ABPerson on ABPerson.rowid=ABPersonFullTextSearch.rowid WHERE ABPersonFullTextSearch.Phone MATCH ?"], v16);
  }

  else
  {
    v9 = [(ABNamePredicate *)self tokenizations];
    v10 = [(ABNamePredicate *)self generateExceprts];
    v11 = &stru_1F2FE2718;
    v12 = @"snippet(ABPersonFullTextSearch, '\n', '\n', '…', ab_cf_tokenizer_select_snippet_column(matchinfo(ABPersonFullTextSearch)), -5) as MatchedSnippet,";
    if (!v10)
    {
      v12 = &stru_1F2FE2718;
    }

    objc_msgSend(v6, "appendFormat:", @"(select fts.ROWID as RankRow, ab_cf_tokenizer_namerank(matchinfo(ABPersonFullTextSearch), ?) as Rank, ab_cf_tokenizer_matched_properties(matchinfo(ABPersonFullTextSearch), ?) as MatchedColumns, %@ 1 as HasFTSMatch from ABPersonFullTextSearch fts "), v12;
    if ([(NSArray *)[(ABNamePredicate *)self scopedContactIdentifiers] count])
    {
      v11 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"fts.rowid IN(");
      if ([(NSArray *)[(ABNamePredicate *)self scopedContactIdentifiers] count])
      {
        v13 = 0;
        do
        {
          if (v13)
          {
            v14 = @", ?";
          }

          else
          {
            v14 = @"?";
          }

          [(__CFString *)v11 appendString:v14];
          ++v13;
        }

        while (v13 < [(NSArray *)[(ABNamePredicate *)self scopedContactIdentifiers] count]);
      }

      [(__CFString *)v11 appendString:@" AND"]);
    }

    [v6 appendFormat:@"where %@ ABPersonFullTextSearch MATCH ' ' || ? || ' ", v11];
    if (!self->_matchWholeWords)
    {
      objc_msgSend(v6, "appendString:", @" OR (");
      if (ABTokenListGetCount(v9) >= 1)
      {
        v15 = 0;
        do
        {
          if (v15)
          {
            [v6 appendString:@" AND "];
          }

          [v6 appendString:@" ' || ? || ' "];
          ++v15;
        }

        while (v15 < ABTokenListGetCount(v9));
      }

      [v6 appendString:@""]);
    }

    [v6 appendString:@" '"];
    [v6 appendString:@""]);
  }

  [v6 appendFormat:@" AS RankResults_%d ON abp.ROWID=RankResults_%d.RankRow ", v4, v4];
  v17[0] = v6;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
}

- (id)_personNameKeys
{
  v13 = MEMORY[0x1E695DEC8];
  v2 = ABCPersonNameForProperty(kABPersonFirstNamePhoneticProperty);
  v3 = ABCPersonNameForProperty(kABPersonMiddleNamePhoneticProperty);
  v4 = ABCPersonNameForProperty(kABPersonLastNamePhoneticProperty);
  v5 = ABCPersonNameForProperty(kABPersonFirstNameProperty);
  v6 = ABCPersonNameForProperty(kABPersonMiddleNameProperty);
  v7 = ABCPersonNameForProperty(kABPersonLastNameProperty);
  v8 = ABCPersonNameForProperty(kABPersonPreviousFamilyNameProperty);
  v9 = ABCPersonNameForProperty(kABPersonNicknameProperty);
  v10 = ABCPersonNameForProperty(kABPersonDisplayNameProperty);
  v11 = ABCPersonNameForProperty(kABPersonSuffixProperty);
  return [v13 arrayWithObjects:{v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, ABCPersonNameForProperty(kABPersonPrefixProperty), 0}];
}

- (id)_personNonNameKeys
{
  v15 = MEMORY[0x1E695DEC8];
  v14 = ABCPersonNameForProperty(kABPersonOrganizationPhoneticProperty);
  v13 = ABCPersonNameForProperty(kABPersonOrganizationProperty);
  v2 = ABCPersonNameForProperty(kABPersonDepartmentProperty);
  v3 = ABCPersonNameForProperty(kABPersonNoteProperty);
  v4 = ABCPersonNameForProperty(kABPersonBirthdayProperty);
  v5 = ABCPersonNameForProperty(kABPersonJobTitleProperty);
  v6 = ABCPersonNameForProperty(kABPersonPhoneProperty);
  v7 = ABCPersonNameForProperty(kABPersonEmailProperty);
  v8 = ABCPersonNameForProperty(kABPersonAddressProperty);
  v9 = ABCPersonNameForProperty(kABPersonSocialProfileProperty);
  v10 = ABCPersonNameForProperty(kABPersonURLProperty);
  v11 = ABCPersonNameForProperty(kABPersonInstantMessageProperty);
  return [v15 arrayWithObjects:{v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, ABCPersonNameForProperty(kABPersonDateProperty), @"SupplementalCompositeNameTerms", 0}];
}

- (id)queryWhereStringForPredicateIdentifier:(int)a3
{
  v3 = *&a3;
  v5 = objc_opt_new();
  tokenizationSortKeys = self->_tokenizationSortKeys;
  if (tokenizationSortKeys)
  {
    releaseTokenizationSortKeys(tokenizationSortKeys);
  }

  if ([(NSArray *)self->_groups count])
  {
    v7 = 1;
  }

  else
  {
    v7 = [(NSArray *)self->_sources count]!= 0;
  }

  v8 = ABAddressBookCopyWhereClauseForLinkedPeopleInGroupsAndSources(self->_matchPreferredName, v7, [(ABNamePredicate *)self groups], [(ABNamePredicate *)self sources], @"abp");
  if (v8)
  {
    [(__CFString *)v5 appendString:v8];
  }

  if ([(NSString *)self->_name length])
  {
    if (v8)
    {
      [(__CFString *)v5 appendString:@" AND "];
    }

    if (ABCFTSIsEnabled())
    {
      [(__CFString *)v5 appendFormat:@" RankResults_%d.HasFTSMatch = 1 ", v3];
    }

    else
    {
      WordTokenizer = ABAddressBookGetWordTokenizer([(ABNamePredicate *)self addressBook]);
      v10 = ABCCreateArrayOfTokenizationsBySeparatingWordsInCompositeName(WordTokenizer, self->_name, 1);
      if (v10)
      {
        v11 = v10;
        if (CFArrayGetCount(v10) >= 1)
        {
          SearchCollator = ABAddressBookGetSearchCollator(self->_addressBook);
          v14 = 0;
          -[__CFString appendFormat:](v5, "appendFormat:", @"abp.ROWID in (select abs.person_id from ABPersonSearchKey abs WHERE");
          appendTokenizations(self->_name, v11, SearchCollator, v5, &self->_tokenizationSortKeys, &v14, [(ABNamePredicate *)self matchWholeWords], [(ABNamePredicate *)self matchPersonOrCompanyNamesExclusively]);
          [(__CFString *)v5 appendFormat:@""]);
        }

        CFRelease(v11);
      }
    }
  }

  return v5;
}

- (void)ab_bindJoinClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5
{
  v83 = *MEMORY[0x1E69E9840];
  if (ABCFTSIsEnabled())
  {
    v6 = [(ABNamePredicate *)self tokenizations];
    v7 = [MEMORY[0x1E696AD60] string];
    Count = ABTokenListGetCount(v6);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFAutorelease(Mutable);
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        TokenAtIndex = ABTokenListGetTokenAtIndex(v6, i);
        v12 = [(ABNamePredicate *)self matchWholeWords];
        v13 = @"*";
        if (v12)
        {
          v13 = &stru_1F2FE2718;
        }

        [v7 appendFormat:@"##&%@%@ ", TokenAtIndex, v13];
        CFArrayAppendValue(Mutable, TokenAtIndex);
      }
    }

    v14 = Mutable;
    v76 = Count;
    if ([v7 length])
    {
      if (self->_matchPersonOrCompanyNamesExclusively)
      {
        var1 = a3->var1;
        v16 = *a4;
        v17 = CFRetain(Mutable);
        v18 = MEMORY[0x1E695D7C0];
        sqlite3_bind_blob(var1, v16, v17, 8, MEMORY[0x1E695D7C0]);
        LODWORD(var1) = *a4 + 1;
        *a4 = var1;
        v19 = a3->var1;
        v20 = CFRetain(Mutable);
        sqlite3_bind_blob(v19, var1, v20, 8, v18);
        LODWORD(var1) = *a4 + 1;
        *a4 = var1;
        v21 = a3->var1;
        v22 = _CPCreateUTF8StringFromCFString();
        sqlite3_bind_text(v21, var1, v22, -1, MEMORY[0x1E69E9B38]);
        ++*a4;
        v23 = [(ABNamePredicate *)self _personNameKeys];
        v24 = [v23 count];
        v25 = CFArrayCreateMutable(0, v24 * Count, MEMORY[0x1E695E9C0]);
        if ([v23 count])
        {
          v26 = 0;
          do
          {
            v84.length = CFArrayGetCount(v14);
            v84.location = 0;
            CFArrayAppendArray(v25, v14, v84);
            ++v26;
          }

          while (v26 < [v23 count]);
        }

        v27 = a3->var1;
        v28 = *a4;
        v29 = CFRetain(v25);
        v30 = MEMORY[0x1E695D7C0];
        sqlite3_bind_blob(v27, v28, v29, 8, MEMORY[0x1E695D7C0]);
        LODWORD(v27) = *a4 + 1;
        *a4 = v27;
        v31 = a3->var1;
        v32 = CFRetain(v25);
        v33 = v31;
        v34 = v23;
        sqlite3_bind_blob(v33, v27, v32, 8, v30);
        ++*a4;
        CFRelease(v25);
        if (Count)
        {
          for (j = 0; j != Count; ++j)
          {
            if ([v34 count])
            {
              v36 = 0;
              do
              {
                v37 = ABTokenListGetTokenAtIndex(v6, j);
                v38 = MEMORY[0x1E696AEC0];
                v39 = [(ABNamePredicate *)self matchWholeWords];
                v40 = @"*";
                if (v39)
                {
                  v40 = &stru_1F2FE2718;
                }

                [v38 stringWithFormat:@"##&%@%@ ", v37, v40];
                v41 = a3->var1;
                v42 = *a4;
                v43 = _CPCreateUTF8StringFromCFString();
                v44 = v41;
                v34 = v23;
                sqlite3_bind_text(v44, v42, v43, -1, MEMORY[0x1E69E9B38]);
                ++*a4;
                ++v36;
              }

              while (v36 < [v23 count]);
            }
          }
        }
      }

      else
      {
        matchSmartDialerFormatsExclusively = self->_matchSmartDialerFormatsExclusively;
        v46 = a3->var1;
        v47 = *a4;
        v48 = CFRetain(v14);
        v49 = MEMORY[0x1E695D7C0];
        sqlite3_bind_blob(v46, v47, v48, 8, MEMORY[0x1E695D7C0]);
        LODWORD(v46) = *a4 + 1;
        *a4 = v46;
        v50 = a3->var1;
        v51 = CFRetain(v14);
        sqlite3_bind_blob(v50, v46, v51, 8, v49);
        v52 = *a4 + 1;
        *a4 = v52;
        if (matchSmartDialerFormatsExclusively)
        {
          v53 = a3->var1;
          v54 = _CPCreateUTF8StringFromCFString();
          v55 = MEMORY[0x1E69E9B38];
          sqlite3_bind_text(v53, v52, v54, -1, MEMORY[0x1E69E9B38]);
          LODWORD(v53) = *a4 + 1;
          *a4 = v53;
          v56 = a3->var1;
          v57 = CFRetain(v14);
          v58 = MEMORY[0x1E695D7C0];
          sqlite3_bind_blob(v56, v53, v57, 8, MEMORY[0x1E695D7C0]);
          LODWORD(v53) = *a4 + 1;
          *a4 = v53;
          v59 = a3->var1;
          v60 = CFRetain(v14);
          sqlite3_bind_blob(v59, v53, v60, 8, v58);
          LODWORD(v53) = *a4 + 1;
          *a4 = v53;
          v61 = a3->var1;
          v62 = _CPCreateUTF8StringFromCFString();
          sqlite3_bind_text(v61, v53, v62, -1, v55);
          ++*a4;
        }

        else
        {
          if ([(NSArray *)[(ABNamePredicate *)self scopedContactIdentifiers] count])
          {
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v63 = [(ABNamePredicate *)self scopedContactIdentifiers];
            v64 = [(NSArray *)v63 countByEnumeratingWithState:&v78 objects:v82 count:16];
            if (v64)
            {
              v65 = v64;
              v66 = *v79;
              do
              {
                for (k = 0; k != v65; ++k)
                {
                  if (*v79 != v66)
                  {
                    objc_enumerationMutation(v63);
                  }

                  sqlite3_bind_int(a3->var1, *a4, [*(*(&v78 + 1) + 8 * k) intValue]);
                  ++*a4;
                }

                v65 = [(NSArray *)v63 countByEnumeratingWithState:&v78 objects:v82 count:16];
              }

              while (v65);
            }
          }

          v68 = a3->var1;
          v69 = *a4;
          v70 = _CPCreateUTF8StringFromCFString();
          sqlite3_bind_text(v68, v69, v70, -1, MEMORY[0x1E69E9B38]);
          ++*a4;
          if (Count && !self->_matchWholeWords)
          {
            v71 = 0;
            do
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"##&%@ ", ABTokenListGetTokenAtIndex(v6, v71)];
              v72 = a3->var1;
              v73 = *a4;
              v74 = _CPCreateUTF8StringFromCFString();
              sqlite3_bind_text(v72, v73, v74, -1, MEMORY[0x1E69E9B38]);
              ++*a4;
              ++v71;
            }

            while (v76 != v71);
          }
        }
      }
    }
  }
}

- (void)ab_bindWhereClauseComponentOfStatement:(CPSqliteStatement *)a3 withBindingOffset:(int *)a4 predicateIdentifier:(int)a5
{
  if ([(NSArray *)self->_groups count:a3])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSArray *)self->_sources count]!= 0;
  }

  ABAddressBookBindWhereClauseForLinkedPeopleInGroupsAndSources(v8, [(ABNamePredicate *)self groups], [(ABNamePredicate *)self sources], a3->var1, a4);
  if ((ABCFTSIsEnabled() & 1) == 0)
  {
    tokenizationSortKeys = self->_tokenizationSortKeys;

    bindTokenizations(a3, tokenizationSortKeys, a4);
  }
}

- (id)predicateFormat
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ABNamePredicate *)self name];
  v5 = @"YES";
  if ([(ABNamePredicate *)self matchWholeWords])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(ABNamePredicate *)self matchPersonOrCompanyNamesExclusively])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(ABNamePredicate *)self matchSmartDialerFormatsExclusively])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (![(ABNamePredicate *)self matchPreferredName])
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"ABNamePredicate %p - Name matching <%@> - Match whole words <%@> - Match name only <%@> - Match smart dialer format only <%@> - Match preferred name <%@> - Sources <%@> - Groups <%@>", self, v4, v6, v7, v8, v5, -[ABNamePredicate sources](self, "sources"), -[ABNamePredicate groups](self, "groups")];
}

- (uint64_t)setAccountIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"ABNamePredicate.m" lineNumber:111 description:{@"Should have address book before attempting to use [ABNamePredicate setAccountIdentifier:].  Or preferably, use [ABNamePredicate setSources:]."}];
}

@end