@interface AutocompleteQueryString
- (AutocompleteQueryString)init;
- (AutocompleteQueryString)initWithQuery:(id)a3 requiredMatchLength:(unint64_t)a4;
- (BOOL)matchesString:(id)a3;
- (id)matchesInString:(id)a3;
- (id)matchesInStringTerms:(id)a3 displayString:(id)a4;
@end

@implementation AutocompleteQueryString

- (id)matchesInStringTerms:(id)a3 displayString:(id)a4
{
  v6 = a3;
  v41 = a4;
  v39 = v6;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_1008237F4;
  v90 = sub_100823804;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = sub_1008237F4;
  v84 = sub_100823804;
  v85 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_1008237F4;
  v78 = sub_100823804;
  v79 = 0;
  v7 = [v6 mutableCopy];
  v8 = [v7 count];
  isCJK = self->_isCJK;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v40 = +[NSMutableArray array];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = self->_queryTerms;
  v10 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v92 count:16];
  if (v10)
  {
    v11 = *v63;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v62 + 1) + 8 * i);
        v58 = 0;
        v59 = &v58;
        v60 = 0x2020000000;
        v61 = 0;
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v57 = 0x7FFFFFFFFFFFFFFFLL;
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10082380C;
        v42[3] = &unk_10162B6B8;
        v53 = !isCJK;
        v42[4] = v13;
        v46 = &v58;
        v47 = &v70;
        v43 = v40;
        v48 = &v54;
        v49 = &v74;
        v50 = &v66;
        v44 = v41;
        v45 = v39;
        v51 = &v86;
        v52 = &v80;
        [v7 enumerateObjectsUsingBlock:v42];
        if (*(v59 + 24) != 1)
        {

          _Block_object_dispose(&v54, 8);
          _Block_object_dispose(&v58, 8);
          v18 = 0;
          goto LABEL_27;
        }

        [v7 removeObjectsInRange:{0, v55[3] + 1}];

        _Block_object_dispose(&v54, 8);
        _Block_object_dispose(&v58, 8);
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v92 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (v8)
  {
    v67[3] = v67[3] / v8;
  }

  v14 = [v40 lastObject];
  if ([(NSArray *)v14 length])
  {
    v15 = [v75[5] length];
    *&v16 = v15 / [(NSArray *)v14 length];
    v17 = [NSNumber numberWithFloat:v16];
  }

  else
  {
    v17 = 0;
  }

  v19 = [(NSString *)self->_unsanitazedQuery length];
  *&v20 = v19 / [v41 length];
  v37 = [NSNumber numberWithFloat:v20];
  obj = v14;
  v21 = [v41 uppercaseString];
  v22 = [(NSString *)self->_unsanitazedQuery uppercaseString];
  v23 = [v21 rangeOfString:v22];

  if (v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = 0;
  }

  else
  {
    v24 = [NSNumber numberWithUnsignedInteger:v23];
  }

  v25 = [v41 uppercaseString];
  v26 = [(NSString *)self->_query uppercaseString];
  v27 = [v25 rangeOfString:v26];
  v29 = v28;

  if (&v27[v29] <= [v41 length])
  {
    v31 = [v41 substringFromIndex:?];
    if ([v31 length])
    {
      v32 = sub_1008239E0();
      v33 = [v31 rangeOfCharacterFromSet:v32];

      v30 = v33 == 0;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  v34 = [AutocompleteQueryStringMatch alloc];
  LOBYTE(v36) = v30;
  v18 = [(AutocompleteQueryStringMatch *)v34 initWithQueryTerms:self->_queryTerms stringTerms:v39 matchingTerms:v40 totalMatchLength:v71[3] fractionOfMatch:v17 prefixLastTokenMatchCover:v37 prefixMatchCover:v67[3] prefixMatchPosition:v24 prefixMatchesWordBoundary:v36 firstPrefixToken:v87[5] secondPrefixToken:v81[5]];

LABEL_27:
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v86, 8);

  return v18;
}

- (id)matchesInString:(id)a3
{
  v4 = a3;
  if ([v4 length] && -[NSString length](self->_query, "length") && -[NSArray count](self->_queryTerms, "count"))
  {
    v5 = sub_1008239E0();
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    v7 = sub_1008239E0();
    v8 = [v6 componentsSeparatedByCharactersInSet:v7];

    v9 = [(AutocompleteQueryString *)self matchesInStringTerms:v8 displayString:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)matchesString:(id)a3
{
  v4 = [(AutocompleteQueryString *)self matchesInString:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 totalMatchLength] >= self->_requiredMatchLength;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AutocompleteQueryString)initWithQuery:(id)a3 requiredMatchLength:(unint64_t)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = AutocompleteQueryString;
  v8 = [(AutocompleteQueryString *)&v17 init];
  if (v8)
  {
    v9 = sub_1008239E0();
    v10 = [v7 stringByTrimmingCharactersInSet:v9];
    query = v8->_query;
    v8->_query = v10;

    objc_storeStrong(&v8->_unsanitazedQuery, a3);
    v8->_isCJK = [(NSString *)v8->_query _navigation_isCJK];
    v8->_requiredMatchLength = a4;
    v12 = v8->_query;
    v13 = sub_1008239E0();
    v14 = [(NSString *)v12 componentsSeparatedByCharactersInSet:v13];
    queryTerms = v8->_queryTerms;
    v8->_queryTerms = v14;
  }

  return v8;
}

- (AutocompleteQueryString)init
{
  [(AutocompleteQueryString *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end