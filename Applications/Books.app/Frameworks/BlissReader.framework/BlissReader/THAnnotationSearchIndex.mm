@interface THAnnotationSearchIndex
- (id)p_createModelSearchResultForTerm:(id)a3 searchContext:(id)a4 occurrence:(id *)a5 occurrenceIndex:(unsigned int)a6 previousEntry:(id)a7;
- (void)addTermsForAnnotation:(id)a3;
@end

@implementation THAnnotationSearchIndex

- (void)addTermsForAnnotation:(id)a3
{
  v5 = [objc_msgSend(a3 "annotationNote")];
  v27.length = [(__CFString *)v5 length];
  v27.location = 0;
  v6 = CFStringTokenizerCreate(0, v5, v27, 2uLL, 0);
  if (v6)
  {
    v7 = v6;
    v8 = objc_alloc_init(NSMutableDictionary);
    if (CFStringTokenizerAdvanceToNextToken(v7))
    {
      tokenizer = v7;
      do
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v7);
        v9 = CFStringTokenizerCreate(0, v5, CurrentTokenRange, 0, 0);
        if (v9)
        {
          v10 = v9;
          while (CFStringTokenizerAdvanceToNextToken(v10))
          {
            v29 = CFStringTokenizerGetCurrentTokenRange(v10);
            v11 = [(__CFString *)CFStringCreateWithSubstring(0 lowercaseString:v5];
            v12 = [(TSLStemmer *)self->super.mStemmer stemWord:v11];
            v21 = 0;
            v22 = &v21;
            v23 = 0x3052000000;
            v24 = sub_1D112C;
            v25 = sub_1D113C;
            v26 = 0;
            mTerms = self->super.mTerms;
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_1D1148;
            v20[3] = &unk_45D458;
            v20[4] = v12;
            v20[5] = &v21;
            [(TSLSearchTree *)mTerms enumerateWordsForPrefix:v12 withBlock:v20];
            v14 = v22[5];
            if (!v14)
            {
              v14 = [(THSearchIndex *)self addTermWithStem:v12];
              v22[5] = v14;
            }

            v15 = [v14 inflections];
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v19[2] = sub_1D11A0;
            v19[3] = &unk_45C908;
            v19[4] = v11;
            v16 = [v15 tsu_firstObjectPassingTest:v19];
            if (!v16)
            {
              v16 = [v22[5] addInflection:v11];
            }

            v17 = [objc_msgSend(v8 objectForKey:{v11), "unsignedIntegerValue"}];
            [v8 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", v17 + 1), v11}];
            [v16 addOccurrence:objc_msgSend(a3 rank:"annotationUuid") paragraphIndex:100 pageNumber:v17 + 1 displayPageNumber:{objc_msgSend(a3, "annotationAbsolutePhysicalPageIndex"), 0}];
            _Block_object_dispose(&v21, 8);
          }

          CFRelease(v10);
        }

        v7 = tokenizer;
      }

      while (CFStringTokenizerAdvanceToNextToken(tokenizer));
    }

    CFRelease(v7);
  }
}

- (id)p_createModelSearchResultForTerm:(id)a3 searchContext:(id)a4 occurrence:(id *)a5 occurrenceIndex:(unsigned int)a6 previousEntry:(id)a7
{
  v8 = [[THModelSearchResult alloc] initWithTerm:a3 annotation:[(THAnnotationStorageController *)[(THAnnotationSearchIndex *)self annotationStorageController] annotationWithUuid:a5->var4] pageNumber:a5->var2 displayPageNumber:0 occurrenceIndex:a6 context:a4];
  if (a7)
  {
    -[THModelSearchResult setOccurenceCount:](v8, "setOccurenceCount:", [a7 occurenceCount] + 1);
  }

  return v8;
}

@end