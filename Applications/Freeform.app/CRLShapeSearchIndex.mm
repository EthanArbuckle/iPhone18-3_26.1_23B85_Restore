@interface CRLShapeSearchIndex
- (CRLShapeSearchIndex)initWithLocale:(id)locale;
- (_NSRange)p_rangeOfSearchTerm:(id)term inString:(id)string shouldPerformDiacriticInsensitiveSearch:(BOOL)search;
- (id)p_keywords;
- (id)p_permuteStrings:(id)strings;
- (id)p_predicateWithSearchTerm:(id)term shouldPerformDiacriticInsensitiveSearch:(BOOL)search;
- (id)p_resultsDictionaryForSearchTerm:(id)term withFilteredKeywords:(id)keywords shouldPerformDiacriticInsensitiveSearch:(BOOL)search;
- (id)p_resultsForKeyword:(id)keyword;
- (id)p_resultsForSearchTermBasedOnAnchoredSearch:(id)search shouldPerformDiacriticInsensitiveSearch:(BOOL)insensitiveSearch;
- (id)p_sortedFilteredKeywordsForSearchTerm:(id)term usingPredicate:(id)predicate;
- (id)resultsForSearchTerm:(id)term;
- (void)addSearchResultWithIdentifier:(id)identifier forKeyword:(id)keyword priority:(unint64_t)priority;
- (void)addSearchResults:(id)results;
- (void)p_removeSearchResultWithIdentifier:(id)identifier forTokenizedKeyword:(id)keyword;
- (void)p_tokenizeKeywordIfNeeded:(id)needed yieldingKeyword:(id)keyword;
- (void)removeSearchResultWithIdentifier:(id)identifier forKeyword:(id)keyword;
@end

@implementation CRLShapeSearchIndex

- (CRLShapeSearchIndex)initWithLocale:(id)locale
{
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = CRLShapeSearchIndex;
  v6 = [(CRLShapeSearchIndex *)&v12 init];
  if (v6)
  {
    v7 = +[NSDictionary dictionary];
    searchIndex = v6->_searchIndex;
    v6->_searchIndex = v7;

    objc_storeStrong(&v6->_locale, locale);
    v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    whitespaceCharacterSet = v6->_whitespaceCharacterSet;
    v6->_whitespaceCharacterSet = v9;
  }

  return v6;
}

- (id)resultsForSearchTerm:(id)term
{
  termCopy = term;
  if (termCopy)
  {
    v5 = termCopy;
    p_whitespaceCharacterSet = [(CRLShapeSearchIndex *)self p_whitespaceCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:p_whitespaceCharacterSet];

    crl_stringWithNormalizedHyphensAndQuotationMarks = [v7 crl_stringWithNormalizedHyphensAndQuotationMarks];

    p_locale = [(CRLShapeSearchIndex *)self p_locale];
    locale = [p_locale locale];
    v11 = [crl_stringWithNormalizedHyphensAndQuotationMarks stringByFoldingWithOptions:128 locale:locale];

    v12 = -[CRLShapeSearchIndex p_resultsForSearchTermBasedOnAnchoredSearch:shouldPerformDiacriticInsensitiveSearch:](self, "p_resultsForSearchTermBasedOnAnchoredSearch:shouldPerformDiacriticInsensitiveSearch:", crl_stringWithNormalizedHyphensAndQuotationMarks, [crl_stringWithNormalizedHyphensAndQuotationMarks isEqualToString:v11]);
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (void)addSearchResultWithIdentifier:(id)identifier forKeyword:(id)keyword priority:(unint64_t)priority
{
  identifierCopy = identifier;
  keywordCopy = keyword;
  v10 = keywordCopy;
  if (identifierCopy)
  {
    if (keywordCopy)
    {
      v23[0] = identifierCopy;
      v22[0] = @"CRLShapeSearchIndexIdentifierKey";
      v22[1] = @"CRLShapeSearchIndexKeywords";
      v21 = keywordCopy;
      v11 = [NSArray arrayWithObjects:&v21 count:1];
      v23[1] = v11;
      v22[2] = @"CRLShapeSearchIndexPriorities";
      v12 = [NSNumber numberWithUnsignedInteger:priority];
      v20 = v12;
      v13 = [NSArray arrayWithObjects:&v20 count:1];
      v23[2] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
      v24 = v14;
      v15 = [NSArray arrayWithObjects:&v24 count:1];
      [(CRLShapeSearchIndex *)self addSearchResults:v15];

LABEL_22:
      goto LABEL_23;
    }

LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132CB6C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132CB94();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132CC44();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v19);
    }

    v11 = [NSString stringWithUTF8String:"[CRLShapeSearchIndex addSearchResultWithIdentifier:forKeyword:priority:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchIndex.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:116 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "keyword != nil"];
    goto LABEL_22;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10132CA80();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10132CA94();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10132CB44();
  }

  v16 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v16);
  }

  v17 = [NSString stringWithUTF8String:"[CRLShapeSearchIndex addSearchResultWithIdentifier:forKeyword:priority:]"];
  v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchIndex.m"];
  [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:115 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "identifier != nil"];

  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_23:
}

- (void)addSearchResults:(id)results
{
  resultsCopy = results;
  p_searchIndex = [(CRLShapeSearchIndex *)self p_searchIndex];
  v43 = [p_searchIndex mutableCopy];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = resultsCopy;
  v6 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v6)
  {
    v7 = v6;
    v42 = *v49;
    do
    {
      v8 = 0;
      do
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v48 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"CRLShapeSearchIndexIdentifierKey"];
        if (!v10)
        {
          v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132CC6C();
          }

          v12 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v53 = v11;
            v54 = 2082;
            v55 = "[CRLShapeSearchIndex addSearchResults:]";
            v56 = 2082;
            v57 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchIndex.m";
            v58 = 1024;
            v59 = 134;
            v60 = 2082;
            v61 = "identifier != nil";
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132CC94();
          }

          v13 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v35 = v13;
            v36 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v53 = v11;
            v54 = 2114;
            v55 = v36;
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v14 = [NSString stringWithUTF8String:"[CRLShapeSearchIndex addSearchResults:]"];
          v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchIndex.m"];
          [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:134 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "identifier != nil"];
        }

        v16 = objc_opt_class();
        v17 = [v9 objectForKeyedSubscript:@"CRLShapeSearchIndexKeywords"];
        v18 = sub_100013F00(v16, v17);

        if (!v18)
        {
          v19 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132CCBC();
          }

          v20 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v53 = v19;
            v54 = 2082;
            v55 = "[CRLShapeSearchIndex addSearchResults:]";
            v56 = 2082;
            v57 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchIndex.m";
            v58 = 1024;
            v59 = 136;
            v60 = 2082;
            v61 = "keywords != nil";
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132CCE4();
          }

          v21 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v37 = v21;
            v38 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v53 = v19;
            v54 = 2114;
            v55 = v38;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v22 = [NSString stringWithUTF8String:"[CRLShapeSearchIndex addSearchResults:]"];
          v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchIndex.m"];
          [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:136 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "keywords != nil"];
        }

        v24 = objc_opt_class();
        v25 = [v9 objectForKeyedSubscript:@"CRLShapeSearchIndexPriorities"];
        v26 = sub_100014370(v24, v25);

        if (v26)
        {
          v27 = [v26 count];
          if (v27 != [v18 count])
          {
            v28 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10132CD0C();
            }

            v29 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v53 = v28;
              v54 = 2082;
              v55 = "[CRLShapeSearchIndex addSearchResults:]";
              v56 = 2082;
              v57 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchIndex.m";
              v58 = 1024;
              v59 = 138;
              v60 = 2082;
              v61 = "priorities == nil || priorities.count == keywords.count";
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid parameter not satisfying: %{public}s", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10132CD34();
            }

            v30 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v39 = v30;
              v40 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v53 = v28;
              v54 = 2114;
              v55 = v40;
              _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v31 = [NSString stringWithUTF8String:"[CRLShapeSearchIndex addSearchResults:]"];
            v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeSearchIndex.m"];
            [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:138 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "priorities == nil || priorities.count == keywords.count"];
          }
        }

        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1001C45D8;
        v44[3] = &unk_101845C40;
        v44[4] = self;
        v45 = v43;
        v46 = v26;
        v47 = v10;
        v33 = v10;
        v34 = v26;
        [v18 enumerateObjectsUsingBlock:v44];

        v8 = v8 + 1;
      }

      while (v7 != v8);
      v7 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v7);
  }

  [(CRLShapeSearchIndex *)self setP_searchIndex:v43];
}

- (void)removeSearchResultWithIdentifier:(id)identifier forKeyword:(id)keyword
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C48D8;
  v6[3] = &unk_101845C68;
  selfCopy = self;
  identifierCopy = identifier;
  v5 = identifierCopy;
  [(CRLShapeSearchIndex *)selfCopy p_tokenizeKeywordIfNeeded:keyword yieldingKeyword:v6];
}

- (id)p_keywords
{
  p_searchIndex = [(CRLShapeSearchIndex *)self p_searchIndex];
  allKeys = [p_searchIndex allKeys];

  return allKeys;
}

- (id)p_resultsForKeyword:(id)keyword
{
  keywordCopy = keyword;
  p_searchIndex = [(CRLShapeSearchIndex *)self p_searchIndex];
  v6 = [p_searchIndex objectForKeyedSubscript:keywordCopy];

  v7 = [v6 copy];

  return v7;
}

- (void)p_tokenizeKeywordIfNeeded:(id)needed yieldingKeyword:(id)keyword
{
  neededCopy = needed;
  keywordCopy = keyword;
  if (qword_101A347E8 != -1)
  {
    sub_10132CD5C();
  }

  v8 = objc_alloc_init(NSMutableArray);
  v9 = [neededCopy length];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1001C4D8C;
  v47[3] = &unk_101845CB0;
  v10 = v8;
  v48 = v10;
  [neededCopy enumerateSubstringsInRange:0 options:v9 usingBlock:{3, v47}];
  v32 = v10;
  v11 = [(CRLShapeSearchIndex *)self p_permuteStrings:v10];
  v12 = [v11 mutableCopy];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  p_whitespaceCharacterSet = [(CRLShapeSearchIndex *)self p_whitespaceCharacterSet];
  v33 = neededCopy;
  v14 = [neededCopy componentsSeparatedByCharactersInSet:p_whitespaceCharacterSet];

  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v43 + 1) + 8 * i);
        if ([v19 length] >= 2)
        {
          [v12 addObject:v19];
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v20 = [v19 componentsSeparatedByCharactersInSet:qword_101A347F0];
          v21 = [v20 countByEnumeratingWithState:&v39 objects:v50 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v40;
            do
            {
              for (j = 0; j != v22; j = j + 1)
              {
                if (*v40 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v39 + 1) + 8 * j);
                if ([v25 length] >= 2)
                {
                  [v12 addObject:v25];
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v39 objects:v50 count:16];
            }

            while (v22);
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v16);
  }

  [v12 addObject:v33];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = v12;
  v27 = [v26 countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v36;
    do
    {
      for (k = 0; k != v28; k = k + 1)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(v26);
        }

        crl_stringWithNormalizedHyphensAndQuotationMarks = [*(*(&v35 + 1) + 8 * k) crl_stringWithNormalizedHyphensAndQuotationMarks];
        keywordCopy[2](keywordCopy, crl_stringWithNormalizedHyphensAndQuotationMarks);
      }

      v28 = [v26 countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v28);
  }
}

- (id)p_permuteStrings:(id)strings
{
  stringsCopy = strings;
  v4 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(stringsCopy, "count")}];
  if ([stringsCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [stringsCopy objectAtIndexedSubscript:v5];
      v7 = [v6 mutableCopy];

      v8 = ++v5;
      if (v5 < [stringsCopy count])
      {
        do
        {
          [v7 appendString:@" "];
          v9 = [stringsCopy objectAtIndexedSubscript:v8];
          [v7 appendString:v9];

          ++v8;
        }

        while (v8 < [stringsCopy count]);
      }

      [v4 addObject:v7];
    }

    while (v5 < [stringsCopy count]);
  }

  return v4;
}

- (void)p_removeSearchResultWithIdentifier:(id)identifier forTokenizedKeyword:(id)keyword
{
  identifierCopy = identifier;
  keywordCopy = keyword;
  p_searchIndex = [(CRLShapeSearchIndex *)self p_searchIndex];
  v9 = [p_searchIndex mutableCopy];

  v10 = [(CRLShapeSearchIndex *)self p_resultsForKeyword:keywordCopy];
  v11 = [v10 mutableCopy];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1001C505C;
  v16 = &unk_101845CD8;
  v12 = identifierCopy;
  v17 = v12;
  v18 = &v19;
  [v11 enumerateObjectsUsingBlock:&v13];
  if (v20[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v11 removeObjectAtIndex:{v13, v14, v15, v16}];
  }

  if ([v11 count])
  {
    [v9 setObject:v11 forKeyedSubscript:keywordCopy];
  }

  else
  {
    [v9 removeObjectForKey:keywordCopy];
  }

  [(CRLShapeSearchIndex *)self setP_searchIndex:v9];

  _Block_object_dispose(&v19, 8);
}

- (id)p_resultsForSearchTermBasedOnAnchoredSearch:(id)search shouldPerformDiacriticInsensitiveSearch:(BOOL)insensitiveSearch
{
  insensitiveSearchCopy = insensitiveSearch;
  searchCopy = search;
  v7 = [(CRLShapeSearchIndex *)self p_predicateWithSearchTerm:searchCopy shouldPerformDiacriticInsensitiveSearch:insensitiveSearchCopy];
  v8 = [(CRLShapeSearchIndex *)self p_sortedFilteredKeywordsForSearchTerm:searchCopy usingPredicate:v7];
  v9 = [(CRLShapeSearchIndex *)self p_resultsDictionaryForSearchTerm:searchCopy withFilteredKeywords:v8 shouldPerformDiacriticInsensitiveSearch:insensitiveSearchCopy];
  v10 = objc_alloc_init(NSMutableArray);
  allKeys = [v9 allKeys];
  v12 = [allKeys sortedArrayUsingSelector:"compare:"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [v9 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * i), v20}];
        [v10 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v10;
}

- (_NSRange)p_rangeOfSearchTerm:(id)term inString:(id)string shouldPerformDiacriticInsensitiveSearch:(BOOL)search
{
  if (search)
  {
    v5 = [string localizedStandardRangeOfString:term];
  }

  else
  {
    v5 = [string rangeOfString:term options:9];
  }

  result.length = v6;
  result.location = v5;
  return result;
}

- (id)p_predicateWithSearchTerm:(id)term shouldPerformDiacriticInsensitiveSearch:(BOOL)search
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C5378;
  v8[3] = &unk_101845D00;
  v8[4] = self;
  termCopy = term;
  searchCopy = search;
  v5 = termCopy;
  v6 = [NSPredicate predicateWithBlock:v8];

  return v6;
}

- (id)p_sortedFilteredKeywordsForSearchTerm:(id)term usingPredicate:(id)predicate
{
  predicateCopy = predicate;
  p_keywords = [(CRLShapeSearchIndex *)self p_keywords];
  v7 = [p_keywords filteredArrayUsingPredicate:predicateCopy];

  v8 = [v7 sortedArrayUsingComparator:&stru_101845D40];

  return v8;
}

- (id)p_resultsDictionaryForSearchTerm:(id)term withFilteredKeywords:(id)keywords shouldPerformDiacriticInsensitiveSearch:(BOOL)search
{
  termCopy = term;
  keywordsCopy = keywords;
  v10 = +[NSMutableDictionary dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = keywordsCopy;
  v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [(CRLShapeSearchIndex *)self p_resultsForKeyword:*(*(&v23 + 1) + 8 * i)];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1001C5614;
        v18[3] = &unk_101845D68;
        v19 = v10;
        selfCopy = self;
        v21 = termCopy;
        searchCopy = search;
        [v15 enumerateObjectsUsingBlock:v18];
      }

      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  return v10;
}

@end