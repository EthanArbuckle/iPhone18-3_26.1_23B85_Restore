@interface CRLWPStorageSpellChecker
+ (id)conditionalSpellCheckerForStorage:(id)a3;
+ (id)newSpellCheckerForStorage:(id)a3 selectionPath:(id)a4 orSearchCanvasDelegate:(id)a5;
+ (void)p_inputLanguageDidChangeNotification:(id)a3;
- (BOOL)hasValidResultsForRange:(_NSRange)a3;
- (BOOL)hasValidResultsForWordAtCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4;
- (BOOL)i_addSpellingAndGrammarMarksInRange:(_NSRange)a3 spellingResults:(id)a4 grammarResults:(id)a5 sync:(BOOL)a6;
- (BOOL)i_setResults:(id)a3 grammarResults:(id)a4 shouldSync:(BOOL)a5;
- (BOOL)shouldCheckAtCharIndex:(unint64_t)a3;
- (CRLWPRangeArray)ungrammaticRanges;
- (CRLWPStorageSpellChecker)initWithStorage:(id)a3 selectionPath:(id)a4 orSearchCanvasDelegate:(id)a5;
- (_NSRange)dirtyRange;
- (_NSRange)firstErrorInRange:(_NSRange)a3;
- (_NSRange)p_extendRangeToBeChecked:(_NSRange)a3 delta:(int64_t)a4;
- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)a3;
- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)a3;
- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)a3 forLocale:(id)a4;
- (id)p_textSourceWithoutDeletionsWithSubRange:(_NSRange)a3;
- (void)checkRange:(_NSRange)a3 synchronously:(BOOL)a4;
- (void)dealloc;
- (void)findErrorsInRange:(_NSRange)a3 onHit:(id)a4 stop:(BOOL *)a5;
- (void)i_addMisspelledWord:(id)a3 atIndex:(unint64_t)a4 ifValidForRange:(_NSRange)a5 toResults:(id)a6;
- (void)i_resetSpellCheckingForNotification:(id)a3;
@end

@implementation CRLWPStorageSpellChecker

+ (id)newSpellCheckerForStorage:(id)a3 selectionPath:(id)a4 orSearchCanvasDelegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_msgSend(a1 "concreteClass")];

  return v11;
}

+ (id)conditionalSpellCheckerForStorage:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "concreteClass")];

  return v5;
}

+ (void)p_inputLanguageDidChangeNotification:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CRLWPSpellCheckerLanguageDidChangeNotification" object:a1];
}

- (id)p_textSourceWithoutDeletionsWithSubRange:(_NSRange)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

- (_NSRange)p_extendRangeToBeChecked:(_NSRange)a3 delta:(int64_t)a4
{
  length = a3.length;
  location = a3.location;
  if (a4 < 0 && !a3.length)
  {
    WeakRetained = objc_loadWeakRetained(&self->_storage);
    length = [WeakRetained length];

    if (length)
    {
      v8 = objc_loadWeakRetained(&self->_storage);
      sub_1002407EC(v23, v8, 0, 0, [v8 paragraphCount] - 1, 1);

      v9 = location == sub_100240930(v23);
      v10 = objc_loadWeakRetained(&self->_storage);
      v11 = v10;
      if (v9)
      {
        length = ([v10 nextCharacterIndex:location] - location);
      }

      else
      {
        v12 = [v10 previousCharacterIndex:location];

        v11 = objc_loadWeakRetained(&self->_storage);
        length = ([v11 nextCharacterIndex:location] - v12);
        location = v12;
      }

      sub_10024068C(v23);
    }
  }

  v13 = objc_loadWeakRetained(&self->_storage);
  v14 = [v13 rangeByExpandingToIncludePartialWords:{location, length}];
  v16 = v15;

  if (v14 == 0x7FFFFFFFFFFFFFFFLL && v16 == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013998D4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013998FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101399984();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v19 = [NSString stringWithUTF8String:"[CRLWPStorageSpellChecker p_extendRangeToBeChecked:delta:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:118 isFatal:0 description:"Bad extended range"];
  }

  v21 = v14;
  v22 = v16;
  result.length = v22;
  result.location = v21;
  return result;
}

- (CRLWPStorageSpellChecker)initWithStorage:(id)a3 selectionPath:(id)a4 orSearchCanvasDelegate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v21.receiver = self;
  v21.super_class = CRLWPStorageSpellChecker;
  v9 = [(CRLWPStorageSpellChecker *)&v21 init];
  if ([(CRLWPStorageSpellChecker *)v9 isMemberOfClass:objc_opt_class()])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013999AC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013999D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101399A5C();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v11 = [NSString stringWithUTF8String:"[CRLWPStorageSpellChecker initWithStorage:selectionPath:orSearchCanvasDelegate:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:127 isFatal:0 description:"illegal instantiation of abstract class CRLWPStorageSpellChecker"];
  }

  if (v9 && ((v13 = [(CRLWPStorageSpellChecker *)v9 isMemberOfClass:objc_opt_class()], !v7) ? (v14 = 1) : (v14 = v13), (v14 & 1) == 0))
  {
    objc_storeWeak(&v9->_storage, v7);
    objc_storeStrong(&v9->_searchCanvasDelegate, a5);
    v16 = objc_opt_new();
    checkedRanges = v9->_checkedRanges;
    v9->_checkedRanges = v16;

    v18 = objc_opt_new();
    dirtyRanges = v9->_dirtyRanges;
    v9->_dirtyRanges = v18;

    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  if (WeakRetained)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101399A84();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101399A98();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101399B48();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"[CRLWPStorageSpellChecker dealloc]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:143 isFatal:0 description:"expected nil value for '%{public}s'", "_storage"];
  }

  v7.receiver = self;
  v7.super_class = CRLWPStorageSpellChecker;
  [(CRLWPStorageSpellChecker *)&v7 dealloc];
}

- (CRLWPRangeArray)ungrammaticRanges
{
  grammarResults = self->_grammarResults;
  if (grammarResults)
  {
    v3 = [(CRLWPCheckingResults *)grammarResults ranges];
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (void)checkRange:(_NSRange)a3 synchronously:(BOOL)a4
{
  if (a3.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = a3.length;
    location = a3.location;
    WeakRetained = objc_loadWeakRetained(&self->_storage);
    v8 = [WeakRetained length];
    v9 = location + length;

    if (location + length <= v8)
    {
      v13 = [(CRLWPSpellingResults *)self->_spellingResults copy];
      v16 = objc_opt_class();
      v17 = sub_100013F00(v16, self->_grammarResults);
      v14 = [v17 copy];

      if (length)
      {
        v18 = [(CRLWPStorageSpellChecker *)self p_extendRangeToBeChecked:location delta:length, 0];
        v20 = v19;
        v21 = [(CRLWPStorageSpellChecker *)self dirtyRange];
        v23 = v22;
        v24 = [(CRLWPDirtyRangeArray *)self->_dirtyRanges delta];
        if ([(CRLWPRangeArray *)self->_checkedRanges rangeCount])
        {
          if (v21 != 0x7FFFFFFFFFFFFFFFLL || v24)
          {
            v48 = [(CRLWPRangeArray *)self->_checkedRanges superRange];
            v46 = v27;
            v29 = [(CRLWPStorageSpellChecker *)self p_extendRangeToBeChecked:v21 delta:v23, v24];
            v30 = v28;
            if (v28)
            {
              v47 = [(CRLWPRangeArray *)self->_checkedRanges intersection:v29, v28];
            }

            else
            {
              v47 = [[CRLWPRangeArray alloc] initWithRange:v29, 0];
            }

            v31 = [(CRLWPRangeArray *)v47 superRange];
            if (v32)
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            if (v32)
            {
              v34 = v31;
            }

            else
            {
              v34 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v45 = objc_opt_new();
            v35 = &v29[v30] > v48;
            v26 = v45;
            if (v35 && v29 <= &v48[v46] && v33)
            {
              [(CRLWPMutableRangeArray *)self->_checkedRanges removeRange:v34, v33];
              [(CRLWPMutableRangeArray *)v45 addRange:v34, v33];
            }

            [(CRLWPMutableRangeArray *)v45 addRange:v18, v20];
            if (v48 != 0x7FFFFFFFFFFFFFFFLL || v46)
            {
              [(CRLWPMutableRangeArray *)v45 subtract:self->_checkedRanges];
            }

            v60[0] = _NSConcreteStackBlock;
            v60[1] = 3221225472;
            v60[2] = sub_1005A3A2C;
            v60[3] = &unk_101871868;
            v60[4] = self;
            v36 = objc_opt_new();
            v61 = v36;
            v25 = v47;
            [(CRLWPRangeArray *)v45 enumerateRanges:v60];
            [(CRLWPMutableRangeArray *)self->_checkedRanges subtract:v36];
            [v13 removeResultsForRanges:v36];
            [v14 removeResultsForRanges:v36];
            *buf = 0;
            *v63 = buf;
            *&v63[8] = 0x2020000000;
            v63[16] = 1;
            if ([v36 rangeCount])
            {
              v55[0] = _NSConcreteStackBlock;
              v55[1] = 3221225472;
              v55[2] = sub_1005A3A7C;
              v55[3] = &unk_101871890;
              v58 = buf;
              v55[4] = self;
              v56 = v13;
              v57 = v14;
              v59 = 1;
              [v36 enumerateRanges:v55];
            }

            else
            {
              [(CRLWPMutableDirtyRangeArray *)self->_dirtyRanges clear];
            }

            if (*(*v63 + 24) == 1)
            {
              [(CRLWPMutableRangeArray *)self->_checkedRanges unionWith:v36];
            }

            _Block_object_dispose(buf, 8);
          }

          else
          {
            v25 = [(CRLWPRangeArray *)[CRLWPMutableRangeArray alloc] initWithRange:v18, v20];
            [(CRLWPMutableRangeArray *)v25 subtract:self->_checkedRanges];
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_1005A3AC0;
            v53[3] = &unk_101871868;
            v53[4] = self;
            v26 = objc_alloc_init(CRLWPMutableRangeArray);
            v54 = v26;
            [(CRLWPRangeArray *)v25 enumerateRanges:v53];
            [v13 removeResultsForRanges:v26];
            [v14 removeResultsForRanges:v26];
            if ([(CRLWPRangeArray *)v26 rangeCount])
            {
              v49[0] = _NSConcreteStackBlock;
              v49[1] = 3221225472;
              v49[2] = sub_1005A3B10;
              v49[3] = &unk_1018718B8;
              v49[4] = self;
              v50 = v13;
              v51 = v14;
              v52 = 1;
              [(CRLWPRangeArray *)v26 enumerateRanges:v49];
            }

            else
            {
              [(CRLWPMutableDirtyRangeArray *)self->_dirtyRanges clear];
            }

            [(CRLWPMutableRangeArray *)self->_checkedRanges unionWith:v26];
          }
        }

        else if ([(CRLWPStorageSpellChecker *)self i_addSpellingAndGrammarMarksInRange:v18 spellingResults:v20 grammarResults:v13 sync:v14, 1])
        {
          [(CRLWPMutableRangeArray *)self->_checkedRanges concatenateRange:v18, v20];
        }
      }

      else
      {
        [(CRLWPMutableRangeArray *)self->_checkedRanges clear];
        [v13 clear];
        [v14 clear];
      }

      v37 = [(CRLWPRangeArray *)self->_checkedRanges superRange];
      v39 = v38;
      v40 = objc_loadWeakRetained(&self->_storage);
      LODWORD(v37) = &v37[v39] > [v40 length];

      if (v37)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101399B70();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101399B98();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101399C20();
        }

        v41 = off_1019EDA68;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v42 = [NSString stringWithUTF8String:"[CRLWPStorageSpellChecker checkRange:synchronously:]"];
        v43 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm"];
        [CRLAssertionHandler handleFailureInFunction:v42 file:v43 lineNumber:317 isFatal:0 description:"checked ranges exceed storage"];
      }

      [(CRLWPStorageSpellChecker *)self i_setResults:v13 grammarResults:v14 shouldSync:0];
    }

    else
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101399C48();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_loadWeakRetained(&self->_storage);
        *buf = 67110402;
        *&buf[4] = v10;
        *v63 = 2082;
        *&v63[2] = "[CRLWPStorageSpellChecker checkRange:synchronously:]";
        *&v63[10] = 2082;
        *&v63[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm";
        v64 = 1024;
        v65 = 189;
        v66 = 2048;
        v67 = v9;
        v68 = 2048;
        v69 = [v44 length];
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad text range past end of storage (%lu vs %lu)", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101399C5C();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v13 = [NSString stringWithUTF8String:"[CRLWPStorageSpellChecker checkRange:synchronously:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm"];
      v15 = objc_loadWeakRetained(&self->_storage);
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, v14, 189, 0, "Bad text range past end of storage (%lu vs %lu)", v9, [v15 length]);
    }
  }
}

- (BOOL)i_setResults:(id)a3 grammarResults:(id)a4 shouldSync:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1005A3CBC;
  v13[3] = &unk_101871920;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  v11 = objc_retainBlock(v13);
  LOBYTE(v7) = (v11[2])();

  return v7;
}

- (BOOL)shouldCheckAtCharIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101399C84();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101399C98();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101399D20();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLWPStorageSpellChecker shouldCheckAtCharIndex:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:358 isFatal:0 description:"Bogus char index"];
  }

  if ([(CRLWPStorageSpellChecker *)self dirtyRange]== 0x7FFFFFFFFFFFFFFFLL && v8 == 0)
  {
    return 0;
  }

  v10 = [(CRLWPStorageSpellChecker *)self dirtyRange];
  return a3 >= v10 && a3 - v10 < v11;
}

- (BOOL)hasValidResultsForWordAtCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v8 = [WeakRetained wordAtCharIndex:a3 includePreviousWord:1];
  v10 = v9;

  if (v8 == 0x7FFFFFFFFFFFFFFFLL && v10 == 0)
  {
    v12 = 1;
    if (!a4)
    {
      return v12;
    }
  }

  else
  {
    v12 = [(CRLWPRangeArray *)self->_checkedRanges containsCharacterAtIndex:v8 inclusive:0];
    if (!a4)
    {
      return v12;
    }
  }

  if (v12)
  {
    a4->location = v8;
    a4->length = v10;
  }

  return v12;
}

- (BOOL)hasValidResultsForRange:(_NSRange)a3
{
  if (a3.length)
  {
    return [(CRLWPRangeArray *)self->_checkedRanges containsRange:a3.location];
  }

  else
  {
    return [(CRLWPRangeArray *)self->_checkedRanges containsCharacterAtIndex:a3.location inclusive:1];
  }
}

- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)a3
{
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v8 = [WeakRetained length];

  if (v8 >= a3)
  {
    v9 = objc_loadWeakRetained(&self->_storage);
    v10 = [v9 wordAtCharIndex:a3 includePreviousWord:1];
    v12 = v11;

    if ([(CRLWPRangeArray *)self->_checkedRanges intersectsRange:v10, v12])
    {
      v13 = [(CRLWPStorageSpellChecker *)self misspelledRanges];
      v14 = [v13 rangesIntersecting:{v10, v12}];

      if ([v14 rangeCount])
      {
        v6 = [v14 rangeAtIndex:0];
        v5 = v15;
        if (![(CRLWPRangeArray *)self->_checkedRanges containsRange:v10, v12])
        {
          v5 = v12;
          v6 = v10;
        }
      }
    }
  }

  v16 = v6;
  v17 = v5;
  result.length = v17;
  result.location = v16;
  return result;
}

- (_NSRange)firstErrorInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = 0;
  v7 = [(CRLWPStorageSpellChecker *)self misspelledRanges];
  v8 = [v7 rangesIntersecting:{location, length}];

  if ([v8 rangeCount])
  {
    v12.location = [v8 rangeAtIndex:0];
    v14.location = location;
    v14.length = length;
    v9 = NSIntersectionRange(v12, v14);
    v6 = v9.length;
    if (v9.length)
    {
      v5 = v9.location;
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
      v6 = 0;
    }
  }

  v10 = v5;
  v11 = v6;
  result.length = v11;
  result.location = v10;
  return result;
}

- (BOOL)i_addSpellingAndGrammarMarksInRange:(_NSRange)a3 spellingResults:(id)a4 grammarResults:(id)a5 sync:(BOOL)a6
{
  v7 = a4;
  v8 = a5;
  v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101871980);
  }

  v10 = off_1019EDA68;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 67110146;
    v25 = v9;
    v26 = 2082;
    v27 = "[CRLWPStorageSpellChecker i_addSpellingAndGrammarMarksInRange:spellingResults:grammarResults:sync:]";
    v28 = 2082;
    v29 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm";
    v30 = 1024;
    v31 = 450;
    v32 = 2114;
    v33 = v12;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018719A0);
  }

  v13 = off_1019EDA68;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v25 = v9;
    v26 = 2114;
    v27 = v14;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v15 = [NSString stringWithUTF8String:"[CRLWPStorageSpellChecker i_addSpellingAndGrammarMarksInRange:spellingResults:grammarResults:sync:]"];
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm"];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:450 isFatal:0 description:"Abstract method not overridden by %{public}@", v18];

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v20, "[CRLWPStorageSpellChecker i_addSpellingAndGrammarMarksInRange:spellingResults:grammarResults:sync:]"];
  v22 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v21 userInfo:0];
  v23 = v22;

  objc_exception_throw(v22);
}

- (void)i_resetSpellCheckingForNotification:(id)a3
{
  [(CRLWPMutableRangeArray *)self->_checkedRanges clear];
  [(CRLWPCheckingResults *)self->_spellingResults clear];
  [(CRLWPCheckingResults *)self->_grammarResults clear];
  dirtyRanges = self->_dirtyRanges;

  [(CRLWPMutableDirtyRangeArray *)dirtyRanges clear];
}

- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)a3
{
  v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018719C0);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v19 = v3;
    v20 = 2082;
    v21 = "[CRLWPStorageSpellChecker rangeOfNumericalSuffixPrecedingCharIndex:]";
    v22 = 2082;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm";
    v24 = 1024;
    v25 = 462;
    v26 = 2114;
    v27 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018719E0);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v19 = v3;
    v20 = 2114;
    v21 = v8;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v9 = [NSString stringWithUTF8String:"[CRLWPStorageSpellChecker rangeOfNumericalSuffixPrecedingCharIndex:]"];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm"];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:462 isFatal:0 description:"Abstract method not overridden by %{public}@", v12];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v14, "[CRLWPStorageSpellChecker rangeOfNumericalSuffixPrecedingCharIndex:]"];
  v16 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)a3 forLocale:(id)a4
{
  v6 = a4;
  if ([v6 length] <= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101399D48();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101399D5C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101399DE4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLWPStorageSpellChecker rangeOfNumericalSuffixPrecedingCharIndex:forLocale:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:467 isFatal:0 description:"Locale string is too short."];
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 0;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101399E84();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101399EAC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101399F34();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v13 = [NSString stringWithUTF8String:"[CRLWPStorageSpellChecker rangeOfNumericalSuffixPrecedingCharIndex:forLocale:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:471 isFatal:0 description:"Invalid charIndex."];
  }

  else
  {
    if (qword_101A35578 != -1)
    {
      sub_101399E0C();
    }

    v15 = &qword_101A35528;
    if (([v6 hasPrefix:@"en"] & 1) == 0)
    {
      if ([v6 hasPrefix:@"fr"])
      {
        v15 = &qword_101A35530;
      }

      else if ([v6 hasPrefix:@"it"] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"gl"))
      {
        v15 = &qword_101A35538;
      }

      else if ([v6 hasPrefix:@"pt"])
      {
        if ([v6 hasSuffix:@"BR"])
        {
          v15 = &qword_101A35548;
        }

        else
        {
          v15 = &qword_101A35540;
        }
      }

      else if ([v6 hasPrefix:@"es"])
      {
        v15 = &qword_101A35550;
      }

      else if ([v6 hasPrefix:@"ca"])
      {
        v15 = &qword_101A35558;
      }

      else if ([v6 hasPrefix:@"el"])
      {
        v15 = &qword_101A35560;
      }

      else if ([v6 hasPrefix:@"nl"])
      {
        v15 = &qword_101A35568;
      }

      else if ([v6 hasPrefix:@"uk"])
      {
        v15 = &qword_101A35570;
      }
    }

    v13 = *v15;
    v14 = [(CRLWPStorageSpellChecker *)self p_textSourceWithoutDeletionsWithSubRange:0, a3];
    v16 = [v14 charIndexMappedFromStorage:a3];
    v17 = sub_100280AB0(v16, 0, v14);
    if (v17 <= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    if (v17 >= v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    v20 = [v14 substringWithRange:{v19, v18 - v19}];
    v21 = +[NSCharacterSet decimalDigitCharacterSet];
    v22 = [v20 rangeOfCharacterFromSet:v21 options:4];

    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = +[NSCharacterSet letterCharacterSet];
      v24 = [v20 rangeOfCharacterFromSet:v23 options:0 range:{0, v22}] == 0x7FFFFFFFFFFFFFFFLL;

      if (v24)
      {
        v25 = [v20 substringFromIndex:v22];
        if ([v13 containsObject:v25])
        {
          v26 = [v25 characterAtIndex:1];
          v27 = [v25 length];
          v28 = -2;
          if (v26 != 46)
          {
            v28 = -1;
          }

          v10 = [v14 charRangeMappedToStorage:v16 - &v27[v28]];
          v11 = v29;
        }

        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          if (v22 && [v20 characterAtIndex:v22 - 1] == 49)
          {
            if (qword_101A35588 != -1)
            {
              sub_101399E34();
            }

            v30 = [qword_101A35580 containsObject:v25];
          }

          else
          {
            if (qword_101A35598[0] != -1)
            {
              sub_101399E5C();
            }

            v30 = [qword_101A35590 containsObject:v25];
          }

          if (v30)
          {
            v10 = 0x7FFFFFFFFFFFFFFFLL;
            v11 = 0;
          }
        }
      }
    }
  }

  v31 = v10;
  v32 = v11;
  result.length = v32;
  result.location = v31;
  return result;
}

- (void)findErrorsInRange:(_NSRange)a3 onHit:(id)a4 stop:(BOOL *)a5
{
  length = a3.length;
  location = a3.location;
  v48 = a4;
  [(CRLWPStorageSpellChecker *)self checkRange:location synchronously:length, 1];
  v51 = [(CRLWPStorageSpellChecker *)self misspelledRanges];
  v50 = [(CRLWPStorageSpellChecker *)self ungrammaticRanges];
  v8 = [v51 indexForRange:{location, length}];
  v9 = [v50 indexForRange:{location, length}];
  if (!*a5)
  {
    v11 = v9;
    v47 = location + length;
    *&v10 = 67109378;
    v45 = v10;
    do
    {
      if ((v8 >= [v51 rangeCount] || objc_msgSend(v51, "rangeAtIndex:", v8) >= v47) && (v11 >= objc_msgSend(v50, "rangeCount") || objc_msgSend(v50, "rangeAtIndex:", v11) >= v47))
      {
        break;
      }

      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v12 = 0;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 0;
      if (v8 < [v51 rangeCount])
      {
        v14 = [v51 rangeAtIndex:v8];
        v15 = v16;
      }

      if (v11 < [v50 rangeCount])
      {
        v13 = [v50 rangeAtIndex:v11];
        v12 = v17;
      }

      if (v14 <= v13)
      {
        v28 = [(CRLWPStorageSpellChecker *)self spellingErrors];
        v49 = [v28 objectAtIndexedSubscript:v8];

        v25 = 0;
        v21 = v8 + 1;
      }

      else
      {
        v18 = objc_opt_class();
        v19 = [(CRLWPStorageSpellChecker *)self grammarResults];
        v20 = [v19 objectAtIndexedSubscript:v11];
        v21 = v8;
        v22 = sub_100013F00(v18, v20);

        v23 = objc_opt_class();
        v24 = [v22 first];
        v25 = sub_100013F00(v23, v24);

        v26 = objc_opt_class();
        v27 = [v22 second];
        v49 = sub_100013F00(v26, v27);

        ++v11;
        v14 = v13;
        v15 = v12;
      }

      v29 = objc_opt_class();
      v30 = [(CRLWPStorageSpellChecker *)self searchCanvasDelegate];
      if (v30)
      {
        v31 = [(CRLWPStorageSpellChecker *)self searchCanvasDelegate];
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          v33 = [(CRLWPStorageSpellChecker *)self searchCanvasDelegate];
          WeakRetained = objc_loadWeakRetained(&self->_storage);
          v29 = [v33 wpSelectionClassForStorage:WeakRetained];
        }
      }

      v35 = [(CRLWPStorageSpellChecker *)self searchCanvasDelegate];
      v36 = v35 == 0;

      if (v36)
      {
        v41 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101399F5C();
        }

        v42 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          v53 = v41;
          v54 = 2082;
          v55 = "[CRLWPStorageSpellChecker findErrorsInRange:onHit:stop:]";
          v56 = 2082;
          v57 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm";
          v58 = 1024;
          v59 = 711;
          _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No selection path will be provided to this search reference!", buf, 0x22u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101399F84();
        }

        v43 = off_1019EDA68;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = +[CRLAssertionHandler packedBacktraceString];
          *buf = v45;
          v53 = v41;
          v54 = 2114;
          v55 = v44;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v37 = [NSString stringWithUTF8String:"[CRLWPStorageSpellChecker findErrorsInRange:onHit:stop:]"];
        v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorageSpellChecker.mm"];
        [CRLAssertionHandler handleFailureInFunction:v37 file:v38 lineNumber:711 isFatal:0 description:"No selection path will be provided to this search reference!"];
        v40 = 0;
      }

      else
      {
        v37 = objc_loadWeakRetained(&self->_storage);
        v38 = [v29 selectionWithRange:{v14, v15}];
        v39 = [(CRLWPStorageSpellChecker *)self searchCanvasDelegate];
        v40 = [CRLWPSearchReference searchReferenceWithStorage:v37 selection:v38 searchCanvasDelegate:v39];
      }

      v48[2](v48, v40);
      v8 = v21;
    }

    while (!*a5);
  }
}

- (_NSRange)dirtyRange
{
  v2 = [(CRLWPDirtyRangeArray *)self->_dirtyRanges superRange];
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)i_addMisspelledWord:(id)a3 atIndex:(unint64_t)a4 ifValidForRange:(_NSRange)a5 toResults:(id)a6
{
  length = a5.length;
  location = a5.location;
  v13 = a3;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v12 = [WeakRetained smartFieldAtCharIndex:location attributeKind:6 effectiveRange:0];

  if (!v12 && location <= 0x7FFFFFFFFFFFFFFELL)
  {
    [v10 addResult:v13 forRange:{location, length}];
  }
}

@end