@interface THSearchIndex
- (BOOL)p_isIndexedWord:(id)a3;
- (THSearchIndex)initWithContext:(id)a3;
- (id)addTermWithStem:(id)a3;
- (id)filterOutGlossaryKeysFromOccurrenceMap:(id)a3;
- (id)occurrenceMapForQuery:(id)a3;
- (id)p_cfiForString:(id)a3 paragraphRange:(id)a4;
- (id)p_createModelSearchResultForTerm:(id)a3 searchContext:(id)a4 occurrence:(id *)a5 occurrenceIndex:(unsigned int)a6 previousEntry:(id)a7;
- (id)p_firstIndexedWordInQuery:(id)a3 outWordRange:(_NSRange *)a4 outHasMultipleWords:(BOOL *)a5;
- (id)resultsForQuery:(id)a3 occurrenceMap:(id)a4 searchContextMap:(id)a5 suggestions:(BOOL)a6;
- (id)unambiguousCFIForString:(id)a3;
- (void)dealloc;
- (void)unload;
@end

@implementation THSearchIndex

- (THSearchIndex)initWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = THSearchIndex;
  v3 = [(THSearchIndex *)&v5 initWithContext:a3];
  if (v3)
  {
    v3->mTerms = objc_alloc_init(TSLSearchTree);
    v3->mReferences = objc_alloc_init(TSUNoCopyDictionary);
    v3->mStemmer = [[TSLStemmer alloc] initWithLocale:0];
    v6 = xmmword_34A740;
    v7 = 4;
    v3->mParagraphBreakCharacterSet = [NSCharacterSet characterSetWithCharactersInString:[NSString stringWithCharacters:&v6 length:9]];
  }

  return v3;
}

- (void)unload
{
  [(TSUNoCopyDictionary *)self->mReferences removeAllObjects];
  self->mTerms = objc_alloc_init(TSLSearchTree);

  self->mStemmer = [[TSLStemmer alloc] initWithLocale:0];
  self->mLoaded = 0;
  self->mAllCfisLoaded = 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THSearchIndex;
  [(THSearchIndex *)&v3 dealloc];
}

- (id)addTermWithStem:(id)a3
{
  [(THSearchIndex *)self willModify];
  v5 = [[THModelSearchIndexTerm alloc] initWithStem:a3];
  [(TSLSearchTree *)self->mTerms insertWord:a3 value:v5];
  v6 = v5;
  return v5;
}

- (id)p_createModelSearchResultForTerm:(id)a3 searchContext:(id)a4 occurrence:(id *)a5 occurrenceIndex:(unsigned int)a6 previousEntry:(id)a7
{
  v8 = [[THModelSearchResult alloc] initWithTerm:a3 rank:a5->var0 cfi:[(TSUNoCopyDictionary *)self->mReferences objectForKey:a5->var4] pageNumber:a5->var2 displayPageNumber:a5->var3 occurrenceIndex:a6 context:a4];
  if (a7)
  {
    -[THModelSearchResult setOccurenceCount:](v8, "setOccurenceCount:", [a7 occurenceCount] + 1);
  }

  return v8;
}

- (BOOL)p_isIndexedWord:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  mTerms = self->mTerms;
  v5 = [(TSLStemmer *)self->mStemmer stemWord:?];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_E972C;
  v7[3] = &unk_45D408;
  v7[4] = a3;
  v7[5] = &v8;
  [(TSLSearchTree *)mTerms enumerateWordsForPrefix:v5 withBlock:v7];
  LOBYTE(a3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return a3;
}

- (id)p_firstIndexedWordInQuery:(id)a3 outWordRange:(_NSRange *)a4 outHasMultipleWords:(BOOL *)a5
{
  v18.length = [a3 length];
  v18.location = 0;
  v9 = CFStringTokenizerCreate(0, a3, v18, 0, 0);
  if (v9)
  {
    v10 = v9;
    if (CFStringTokenizerAdvanceToNextToken(v9))
    {
      v11 = 0;
      length = 0;
      v13 = 0;
      location = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v10);
        v16 = CFStringCreateWithSubstring(0, a3, CurrentTokenRange);
        if (v11)
        {
          v13 = 1;
          if ([(THSearchIndex *)self p_isIndexedWord:v11])
          {
            break;
          }
        }

        v11 = v16;
        location = CurrentTokenRange.location;
        length = CurrentTokenRange.length;
      }

      while (CFStringTokenizerAdvanceToNextToken(v10));
    }

    else
    {
      length = 0;
      v11 = 0;
      v13 = 0;
      location = 0x7FFFFFFFFFFFFFFFLL;
    }

    CFRelease(v10);
    if (a5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
    length = 0;
    v11 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    if (a5)
    {
LABEL_12:
      *a5 = v13 & 1;
    }
  }

  if (a4)
  {
    a4->location = location;
    a4->length = length;
  }

  return v11;
}

- (id)resultsForQuery:(id)a3 occurrenceMap:(id)a4 searchContextMap:(id)a5 suggestions:(BOOL)a6
{
  v75 = a6;
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v8 = [a3 lowercaseString];
  v70 = +[NSMutableSet set];
  v88 = 0;
  v87 = xmmword_34A730;
  if ([(THSearchIndex *)self p_firstIndexedWordInQuery:v8 outWordRange:&v87 outHasMultipleWords:&v88]&& v87 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v72 = self;
    v74 = objc_alloc_init(NSMutableDictionary);
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = [a4 allKeys];
    v68 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (!v68)
    {
      goto LABEL_87;
    }

    v65 = *v84;
    v73 = v8;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v84 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v69 = v9;
        v10 = *(*(&v83 + 1) + 8 * v9);
        v11 = [a5 objectForKey:v10];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v71 = [a4 objectForKey:v10];
        v77 = [v71 countByEnumeratingWithState:&v79 objects:v89 count:16];
        if (v77)
        {
          v76 = *v80;
          v78 = v11;
          do
          {
            v12 = 0;
            do
            {
              if (*v80 != v76)
              {
                objc_enumerationMutation(v71);
              }

              v13 = *(*(&v79 + 1) + 8 * v12);
              v14 = [objc_msgSend(v13 "first")];
              v15 = [v13 second];
              v16 = v15;
              v17 = v15[1];
              if (v88)
              {
                v18 = v15[1];
                v19 = v8;
                if (*v15 == 1)
                {
                  v20 = 1;
                  v19 = v8;
LABEL_22:
                  if (([v14 hasPrefix:v19] & 1) == 0)
                  {
                    goto LABEL_78;
                  }

                  v22 = 0;
                  v23 = 0;
                  v24 = 0;
                  goto LABEL_52;
                }
              }

              else
              {
                v21 = [v14 isEqualToString:v8];
                v20 = v21;
                if (v88)
                {
                  v19 = v8;
                }

                else
                {
                  v19 = v14;
                }

                if (*v16 == 1)
                {
                  goto LABEL_22;
                }

                if (!v21)
                {
                  v23 = 0;
                  v24 = 0;
                  v22 = 1;
                  goto LABEL_52;
                }

                v18 = v16[1];
              }

              if (!v18)
              {
                v23 = 0;
                v24 = 0;
                goto LABEL_51;
              }

              v25 = [(__CFString *)v11 rangeOfString:v14 options:1 range:0, [(__CFString *)v11 length]];
              v24 = 0x7FFFFFFFFFFFFFFFLL;
              if (v25 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v23 = 0;
                v27 = 0;
                goto LABEL_43;
              }

              v28 = v25;
              v29 = v26;
              v30 = 0;
              while (v28 < v87)
              {
                v23 = 0;
                v32 = -1;
                v24 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_38:
                v17 = (v32 + v17);
                if (++v30 >= v16[1])
                {
                  goto LABEL_42;
                }

                v28 = [(__CFString *)v78 rangeOfString:v14 options:1 range:&v28[v29], [(__CFString *)v78 length]- &v28[v29]];
                v29 = v35;
                v24 = 0x7FFFFFFFFFFFFFFFLL;
                if (v28 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v23 = 0;
                  goto LABEL_42;
                }
              }

              v31 = &v28[-v87];
              v33 = [v19 length] + v31;
              if (v33 <= [(__CFString *)v78 length])
              {
                v24 = -[__CFString rangeOfString:options:range:](v78, "rangeOfString:options:range:", v19, 1, &v28[-v87], [v19 length]);
                v23 = v34;
                if (v24 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v32 = -1;
                }

                else
                {
                  v32 = 0;
                }

                goto LABEL_38;
              }

              v23 = 0;
              v24 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_42:
              v27 = v75;
              v8 = v73;
LABEL_43:
              if (v24 != 0x7FFFFFFFFFFFFFFFLL || !v27)
              {
                if (v24 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_78;
                }

LABEL_51:
                v22 = 1;
                v20 = 1;
LABEL_52:
                if (v75)
                {
                  v40 = [v14 lowercaseString];
                  v41 = [v74 objectForKey:v40];
                  v42 = v41;
                  if (v41 && [v41 rank] <= *v16)
                  {
                    [v42 setOccurenceCount:{objc_msgSend(v42, "occurenceCount") + 1}];
                  }

                  else
                  {
                    v43 = [(THSearchIndex *)v72 p_createModelSearchResultForTerm:v40 searchContext:v78 occurrence:v16 occurrenceIndex:v17 previousEntry:v42];
                    [v74 setObject:v43 forKey:v40];
                  }

                  v46 = v22 & v20;
                  v8 = v73;
                  if (v46 == 1 && [v73 length] >= 3)
                  {
                    v47 = v24 + v23;
                    v48 = [(__CFString *)v78 length];
                    v49.length = (v24 + v23 <= v24 + 1 ? &v48[-v47] : &v48[-v24 - v23 + 1]);
                    v49.location = v47 - (v47 > v24 + 1);
                    v50 = CFStringTokenizerCreate(0, v78, v49, 0, 0);
                    if (v50)
                    {
                      v51 = v50;
                      if (CFStringTokenizerAdvanceToNextToken(v50))
                      {
                        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v51);
                        v53 = [(__CFString *)v78 substringWithRange:v24, CurrentTokenRange.length - v24 + CurrentTokenRange.location];
                        if ([v53 length])
                        {
                          v54 = [v53 lowercaseString];
                          v55 = [v74 objectForKey:v54];
                          v56 = v55;
                          if (v55 && [v55 rank] <= *v16)
                          {
                            if (([v40 isEqualToString:v54] & 1) == 0)
                            {
                              [v56 setOccurenceCount:{objc_msgSend(v56, "occurenceCount") + 1}];
                            }
                          }

                          else
                          {
                            v57 = [(THSearchIndex *)v72 p_createModelSearchResultForTerm:v54 searchContext:v78 occurrence:v16 occurrenceIndex:v17 previousEntry:v56];
                            [v74 setObject:v57 forKey:v54];
                          }

                          if (CurrentTokenRange.location > v47)
                          {
                            v58 = [v73 lowercaseString];
                            v59 = [v74 objectForKey:v58];
                            v60 = v59;
                            if (v59 && [v59 rank] <= *v16)
                            {
                              if (([v40 isEqualToString:v58] & 1) == 0)
                              {
                                [v60 setOccurenceCount:{objc_msgSend(v60, "occurenceCount") + 1}];
                              }
                            }

                            else
                            {
                              v61 = [(THSearchIndex *)v72 p_createModelSearchResultForTerm:v58 searchContext:v78 occurrence:v16 occurrenceIndex:v17 previousEntry:v60];
                              [v74 setObject:v61 forKey:v58];
                            }
                          }
                        }
                      }

                      CFRelease(v51);
                    }
                  }
                }

                else
                {
                  if (v22)
                  {
                    v44 = v19;
                  }

                  else
                  {
                    v44 = v14;
                  }

                  v45 = [(THSearchIndex *)v72 p_createModelSearchResultForTerm:v44 searchContext:v78 occurrence:v16 occurrenceIndex:v17 previousEntry:0];
                  [v70 addObject:v45];

                  v8 = v73;
                }

                goto LABEL_78;
              }

              if (!v75)
              {
                [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
              }

              v36 = [v14 lowercaseString];
              v37 = [v74 objectForKey:v36];
              v38 = v37;
              if (v37 && [v37 rank] <= *v16)
              {
                [v38 setOccurenceCount:{objc_msgSend(v38, "occurenceCount") + 1}];
              }

              else
              {
                v39 = [(THSearchIndex *)v72 p_createModelSearchResultForTerm:v36 searchContext:v78 occurrence:v16 occurrenceIndex:v17 previousEntry:v38];
                [v74 setObject:v39 forKey:v36];
              }

LABEL_78:
              v12 = v12 + 1;
              v11 = v78;
            }

            while (v12 != v77);
            v62 = [v71 countByEnumeratingWithState:&v79 objects:v89 count:16];
            v77 = v62;
          }

          while (v62);
        }

        v9 = v69 + 1;
      }

      while ((v69 + 1) != v68);
      v68 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
      if (!v68)
      {
LABEL_87:
        [v70 addObjectsFromArray:{objc_msgSend(v74, "allValues")}];

        return v70;
      }
    }
  }

  return v70;
}

- (id)occurrenceMapForQuery:(id)a3
{
  v5 = +[NSMutableDictionary dictionary];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15 = 0;
  v6 = -[THSearchIndex p_firstIndexedWordInQuery:outWordRange:outHasMultipleWords:](self, "p_firstIndexedWordInQuery:outWordRange:outHasMultipleWords:", [a3 lowercaseString], 0, &v15);
  v7 = v6;
  if (v6)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_EA278;
    v14[3] = &unk_45D458;
    v14[4] = v5;
    v14[5] = &v16;
    for (i = v6; [i length] > 2 || i == v7; i = objc_msgSend(i, "substringToIndex:", objc_msgSend(i, "length") - 1))
    {
      v9 = [(TSLStemmer *)self->mStemmer stemWord:i];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 isEqualToString:i];
        mTerms = self->mTerms;
        if (v11)
        {
          [(TSLSearchTree *)mTerms enumerateWordsForPrefix:i withBlock:v14];
        }

        else
        {
          [(TSLSearchTree *)mTerms enumerateWordsForPrefix:v10 withBlock:v14];
        }

        if (*(v17 + 6))
        {
          break;
        }
      }
    }
  }

  _Block_object_dispose(&v16, 8);
  return v5;
}

- (id)filterOutGlossaryKeysFromOccurrenceMap:(id)a3
{
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a3 count]);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_EA434;
  v6[3] = &unk_45D480;
  v6[4] = v4;
  [a3 enumerateKeysAndObjectsUsingBlock:v6];
  return v4;
}

- (id)p_cfiForString:(id)a3 paragraphRange:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8 = objc_alloc_init(NSMutableSet);
  v9 = objc_alloc_init(NSMutableSet);
  v18.location = var0;
  v18.length = var1;
  v10 = CFStringTokenizerCreate(0, a3, v18, 0, 0);
  if (v10)
  {
    v11 = v10;
    while (CFStringTokenizerAdvanceToNextToken(v11))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v11);
      v12 = CFStringCreateWithSubstring(0, a3, CurrentTokenRange);
      v13 = [(TSLStemmer *)self->mStemmer newStemmedWord:v12];
      mTerms = self->mTerms;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_EA71C;
      v17[3] = &unk_45D4D0;
      v17[4] = v12;
      v17[5] = self;
      v17[6] = v9;
      [(TSLSearchTree *)mTerms enumerateWordsForPrefix:v13 withBlock:v17];

      if ([v9 count])
      {
        if ([v8 count])
        {
          [v8 intersectSet:v9];
          if (![v8 count])
          {
            break;
          }
        }

        else
        {
          [v8 unionSet:v9];
        }

        [v9 removeAllObjects];
      }
    }

    CFRelease(v11);
  }

  if ([v8 count] == &dword_0 + 1)
  {
    v15 = [v8 anyObject];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)unambiguousCFIForString:(id)a3
{
  v4 = [objc_msgSend(a3 "lowercaseString")];
  v11.length = [(__CFString *)v4 length];
  v11.location = 0;
  v5 = CFStringTokenizerCreate(0, v4, v11, 2uLL, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  while (CFStringTokenizerAdvanceToNextToken(v6))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v6);
    v8 = [(THSearchIndex *)self p_cfiForString:v4 paragraphRange:CurrentTokenRange.location, CurrentTokenRange.length];
    if (v8)
    {
      v9 = v8;
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_8:
  CFRelease(v6);
  return v9;
}

@end