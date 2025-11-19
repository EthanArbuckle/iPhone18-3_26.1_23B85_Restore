@interface SearchAddressBookOperationMatch
- (AutocompleteMatchInfo)autocompleteMatchInfo;
- (SearchAddressBookOperationMatch)init;
- (SearchAddressBookOperationMatch)initWithContact:(id)a3 context:(id)a4;
- (int64_t)compare:(id)a3;
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
    v5 = [(AutocompleteQueryStringMatch *)self->_stringMatch prefixLastTokenMatchCover];
    [v4 setPrefixLastTokenMatchCover:v5];

    v6 = [(AutocompleteQueryStringMatch *)self->_stringMatch prefixMatchCover];
    [v4 setPrefixMatchCover:v6];

    v7 = [(AutocompleteQueryStringMatch *)self->_stringMatch prefixMatchPosition];
    [v4 setPrefixMatchPosition:v7];

    [v4 setPrefixMatchesWordBoundary:{-[AutocompleteQueryStringMatch prefixMatchesWordBoundary](self->_stringMatch, "prefixMatchesWordBoundary")}];
    v8 = [(AutocompleteQueryStringMatch *)self->_stringMatch firstPrefixToken];
    [v4 setFirstPrefixToken:v8];

    v9 = [(AutocompleteQueryStringMatch *)self->_stringMatch secondPrefixToken];
    [v4 setSecondPrefixToken:v9];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  [(SearchAddressBookOperationMatch *)self peopleSuggesterRank];
  v6 = v5;
  [v4 peopleSuggesterRank];
  if (v6 == v7)
  {
    [(SearchAddressBookOperationMatch *)self fractionOfMatch];
    v11 = [NSNumber numberWithDouble:?];
    [v4 fractionOfMatch];
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

- (SearchAddressBookOperationMatch)initWithContact:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v57.receiver = self;
  v57.super_class = SearchAddressBookOperationMatch;
  v9 = [(SearchAddressBookOperationMatch *)&v57 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, a3);
    v10->_peopleSuggesterRank = 0.0;
    v10->_isCJK = [v8 isCJK];
    v11 = [v7 postalAddresses];
    v10->_hasAddress = [v11 count] != 0;

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
      v15 = [v7 namePrefix];
      v16 = (v14[2])(v14, v15);
      [v13 setObject:v16 forKeyedSubscript:@"namePrefix"];

      v17 = [v7 nickname];
      v18 = (v14[2])(v14, v17);
      [v13 setObject:v18 forKeyedSubscript:@"nickname"];

      v19 = [v7 givenName];
      v20 = (v14[2])(v14, v19);
      [v13 setObject:v20 forKeyedSubscript:@"givenName"];

      v21 = [v7 middleName];
      v22 = (v14[2])(v14, v21);
      [v13 setObject:v22 forKeyedSubscript:@"middleName"];

      v23 = [v7 familyName];
      v24 = (v14[2])(v14, v23);
      [v13 setObject:v24 forKeyedSubscript:@"familyName"];

      v25 = [v7 nameSuffix];
      v26 = (v14[2])(v14, v25);
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
      v29 = [CNContactFormatter stringFromContact:v7 style:0];
      if ([v27 count])
      {
        v30 = [v8 query];
        v31 = [v30 matchesInStringTerms:v27 displayString:v29];
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
          v39 = [v8 query];
          v40 = [v39 matchesInStringTerms:v27 displayString:v29];
          v41 = v10->_stringMatch;
          v10->_stringMatch = v40;

          v42 = v10->_stringMatch;
          v10->_isNameMatch = v42 != 0;
          if (!v42 && v10->_isCJK)
          {
            v43 = [v27 componentsJoinedByString:&stru_1016631F0];
            [v8 query];
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
        v33 = [v7 organizationName];
        (v14[2])(v14, v33);
        v35 = v34 = v29;

        v36 = [v8 query];
        v37 = [v36 matchesInStringTerms:v35 displayString:v34];
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