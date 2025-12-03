@interface SearchAddressBookOperationMatch
- (AutocompleteMatchInfo)autocompleteMatchInfo;
- (SearchAddressBookOperationMatch)init;
- (SearchAddressBookOperationMatch)initWithContact:(id)contact context:(id)context;
- (int64_t)compare:(id)compare;
@end

@implementation SearchAddressBookOperationMatch

- (AutocompleteMatchInfo)autocompleteMatchInfo
{
  if ([(SearchAddressBookOperationMatch *)self isGoodMatch])
  {
    if (self->_isNameMatch)
    {
      v3 = 1;
    }

    else if (self->_isOrganizationMatch)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    v4 = [AutocompleteMatchInfo matchInfoWithType:v3];
    [(SearchAddressBookOperationMatch *)self peopleSuggesterRank];
    [v4 setPeopleSuggesterRank:?];
    [(SearchAddressBookOperationMatch *)self fractionOfMatch];
    [v4 setFractionOfMatch:?];
    prefixLastTokenMatchCover = [(AutocompleteQueryStringMatch *)self->_stringMatch prefixLastTokenMatchCover];
    [v4 setPrefixLastTokenMatchCover:prefixLastTokenMatchCover];

    prefixMatchCover = [(AutocompleteQueryStringMatch *)self->_stringMatch prefixMatchCover];
    [v4 setPrefixMatchCover:prefixMatchCover];

    prefixMatchPosition = [(AutocompleteQueryStringMatch *)self->_stringMatch prefixMatchPosition];
    [v4 setPrefixMatchPosition:prefixMatchPosition];

    [v4 setPrefixMatchesWordBoundary:{-[AutocompleteQueryStringMatch prefixMatchesWordBoundary](self->_stringMatch, "prefixMatchesWordBoundary")}];
    firstPrefixToken = [(AutocompleteQueryStringMatch *)self->_stringMatch firstPrefixToken];
    [v4 setFirstPrefixToken:firstPrefixToken];

    secondPrefixToken = [(AutocompleteQueryStringMatch *)self->_stringMatch secondPrefixToken];
    [v4 setSecondPrefixToken:secondPrefixToken];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  [(SearchAddressBookOperationMatch *)self peopleSuggesterRank];
  v6 = v5;
  [compareCopy peopleSuggesterRank];
  if (v6 == v7)
  {
    [(SearchAddressBookOperationMatch *)self fractionOfMatch];
    v11 = [NSNumber numberWithDouble:?];
    [compareCopy fractionOfMatch];
    v12 = [NSNumber numberWithDouble:?];
    v10 = [v12 compare:v11];
  }

  else
  {
    v8 = -1;
    if (v6 >= v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    if (v7 != 0.0)
    {
      v8 = v9;
    }

    if (v6 == 0.0)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }
  }

  return v10;
}

- (SearchAddressBookOperationMatch)initWithContact:(id)contact context:(id)context
{
  contactCopy = contact;
  contextCopy = context;
  v57.receiver = self;
  v57.super_class = SearchAddressBookOperationMatch;
  v9 = [(SearchAddressBookOperationMatch *)&v57 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, contact);
    v10->_peopleSuggesterRank = 0.0;
    v10->_isCJK = [contextCopy isCJK];
    postalAddresses = [contactCopy postalAddresses];
    v10->_hasAddress = [postalAddresses count] != 0;

    if (v10->_hasAddress)
    {
      v12 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v49 = +[NSMutableArray array];
      v13 = +[NSMutableDictionary dictionary];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100D0D344;
      v55[3] = &unk_101651420;
      v51 = v12;
      v56 = v51;
      v14 = objc_retainBlock(v55);
      namePrefix = [contactCopy namePrefix];
      v16 = (v14[2])(v14, namePrefix);
      [v13 setObject:v16 forKeyedSubscript:@"namePrefix"];

      nickname = [contactCopy nickname];
      v18 = (v14[2])(v14, nickname);
      [v13 setObject:v18 forKeyedSubscript:@"nickname"];

      givenName = [contactCopy givenName];
      v20 = (v14[2])(v14, givenName);
      [v13 setObject:v20 forKeyedSubscript:@"givenName"];

      middleName = [contactCopy middleName];
      v22 = (v14[2])(v14, middleName);
      [v13 setObject:v22 forKeyedSubscript:@"middleName"];

      familyName = [contactCopy familyName];
      v24 = (v14[2])(v14, familyName);
      [v13 setObject:v24 forKeyedSubscript:@"familyName"];

      nameSuffix = [contactCopy nameSuffix];
      v26 = (v14[2])(v14, nameSuffix);
      [v13 setObject:v26 forKeyedSubscript:@"nameSuffix"];

      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100D0D4E8;
      v52[3] = &unk_10165D210;
      v50 = v13;
      v53 = v50;
      v27 = v49;
      v54 = v27;
      v28 = objc_retainBlock(v52);
      (v28[2])(v28, @"namePrefix");
      (v28[2])(v28, @"nickname");
      (v28[2])(v28, @"givenName");
      (v28[2])(v28, @"middleName");
      (v28[2])(v28, @"familyName");
      (v28[2])(v28, @"nameSuffix");
      v29 = [CNContactFormatter stringFromContact:contactCopy style:0];
      if ([v27 count])
      {
        query = [contextCopy query];
        v31 = [query matchesInStringTerms:v27 displayString:v29];
        stringMatch = v10->_stringMatch;
        v10->_stringMatch = v31;

        if (v10->_stringMatch)
        {
          v10->_isNameMatch = 1;
        }

        else
        {
          [v27 removeAllObjects];
          (v28[2])(v28, @"namePrefix");
          (v28[2])(v28, @"familyName");
          (v28[2])(v28, @"nickname");
          (v28[2])(v28, @"givenName");
          (v28[2])(v28, @"middleName");
          (v28[2])(v28, @"nameSuffix");
          query2 = [contextCopy query];
          v40 = [query2 matchesInStringTerms:v27 displayString:v29];
          v41 = v10->_stringMatch;
          v10->_stringMatch = v40;

          v42 = v10->_stringMatch;
          v10->_isNameMatch = v42 != 0;
          if (!v42 && v10->_isCJK)
          {
            v43 = [v27 componentsJoinedByString:&stru_1016631F0];
            [contextCopy query];
            v45 = v44 = v29;
            v46 = [v45 matchesInString:v43];
            v47 = v10->_stringMatch;
            v10->_stringMatch = v46;

            v29 = v44;
            v10->_isNameMatch = v10->_stringMatch != 0;
          }
        }
      }

      else
      {
        organizationName = [contactCopy organizationName];
        (v14[2])(v14, organizationName);
        v35 = v34 = v29;

        query3 = [contextCopy query];
        v37 = [query3 matchesInStringTerms:v35 displayString:v34];
        v38 = v10->_stringMatch;
        v10->_stringMatch = v37;

        v10->_isOrganizationMatch = v10->_stringMatch != 0;
        v29 = v34;
      }
    }
  }

  return v10;
}

- (SearchAddressBookOperationMatch)init
{
  [(SearchAddressBookOperationMatch *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end