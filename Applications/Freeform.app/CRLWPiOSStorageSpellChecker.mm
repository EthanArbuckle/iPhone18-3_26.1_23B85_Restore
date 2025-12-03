@interface CRLWPiOSStorageSpellChecker
+ (BOOL)canCheckSpelling;
+ (id)newSpellCheckerForStorage:(id)storage selectionPath:(id)path orSearchCanvasDelegate:(id)delegate;
+ (id)p_determineLanguage;
+ (id)p_language;
+ (void)initialize;
+ (void)p_inputLanguageDidChangeNotification:(id)notification;
- (BOOL)i_addSpellingAndGrammarMarksInRange:(_NSRange)range spellingResults:(id)results grammarResults:(id)grammarResults sync:(BOOL)sync;
- (CRLWPiOSStorageSpellChecker)initWithStorage:(id)storage selectionPath:(id)path orSearchCanvasDelegate:(id)delegate;
- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)index;
- (id)suggestionsForRange:(_NSRange)range;
- (void)dealloc;
@end

@implementation CRLWPiOSStorageSpellChecker

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"p_inputLanguageDidChangeNotification:" name:UITextInputCurrentInputModeDidChangeNotification object:0];

    v8 = +[UIApplication sharedApplication];
    textInputMode = [v8 textInputMode];
    primaryLanguage = [textInputMode primaryLanguage];
    v6 = [primaryLanguage copy];
    v7 = qword_101A34850;
    qword_101A34850 = v6;
  }
}

+ (id)newSpellCheckerForStorage:(id)storage selectionPath:(id)path orSearchCanvasDelegate:(id)delegate
{
  delegateCopy = delegate;
  pathCopy = path;
  storageCopy = storage;
  v10 = [[CRLWPiOSStorageSpellChecker alloc] initWithStorage:storageCopy selectionPath:pathCopy orSearchCanvasDelegate:delegateCopy];

  return v10;
}

- (id)suggestionsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(CRLWPStorageSpellChecker *)self p_textSourceWithoutDeletionsWithSubRange:?];
  v7 = [v6 charRangeMappedFromStorage:{location, length}];
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    textChecker = [(CRLWPiOSStorageSpellChecker *)self textChecker];
    string = [v6 string];
    v13 = +[CRLWPiOSStorageSpellChecker p_language];
    v14 = [textChecker guessesForWordRange:v9 inString:v10 language:{string, v13}];
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  return v14;
}

+ (BOOL)canCheckSpelling
{
  p_language = [self p_language];
  v3 = p_language != 0;

  return v3;
}

+ (void)p_inputLanguageDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  byte_101AD5C50 = 0;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013318F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101331908();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133199C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPiOSStorageSpellChecker p_inputLanguageDidChangeNotification:]");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPiOSStorageSpellChecker.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:74 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v8 = +[UIApplication sharedApplication];
  textInputMode = [v8 textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = qword_101A34850;
  objc_storeStrong(&qword_101A34850, primaryLanguage);
  objc_sync_exit(selfCopy);

  if (!v12 || ([primaryLanguage isEqualToString:v12] & 1) == 0)
  {
    v13.receiver = selfCopy;
    v13.super_class = &OBJC_METACLASS___CRLWPiOSStorageSpellChecker;
    objc_msgSendSuper2(&v13, "p_inputLanguageDidChangeNotification:", notificationCopy);
  }
}

+ (id)p_determineLanguage
{
  v3 = +[UITextChecker availableLanguages];
  v4 = [v3 copy];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = qword_101A34850;
  objc_sync_exit(selfCopy);

  if (v6 && [v6 length])
  {
    v7 = [v6 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    if ([v4 containsObject:v7])
    {
      v7 = v7;
      firstObject = v7;
    }

    else if ([v7 length] < 2)
    {
      firstObject = 0;
    }

    else
    {
      v10 = [v7 substringWithRange:{0, 2}];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v4;
      firstObject = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (firstObject)
      {
        v12 = *v18;
        while (2)
        {
          for (i = 0; i != firstObject; i = i + 1)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            if ([v14 rangeOfString:{v10, v17}])
            {
              v16 = 0;
            }

            else
            {
              v16 = v15 == 2;
            }

            if (v16)
            {
              firstObject = v14;
              goto LABEL_24;
            }
          }

          firstObject = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (firstObject)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:
    }
  }

  else
  {
    firstObject = [v4 firstObject];
    v7 = v6;
  }

  return firstObject;
}

+ (id)p_language
{
  if ((byte_101AD5C50 & 1) == 0)
  {
    p_determineLanguage = [self p_determineLanguage];
    v3 = [p_determineLanguage copy];
    v4 = qword_101A34858;
    qword_101A34858 = v3;

    byte_101AD5C50 = 1;
  }

  v5 = qword_101A34858;

  return v5;
}

- (CRLWPiOSStorageSpellChecker)initWithStorage:(id)storage selectionPath:(id)path orSearchCanvasDelegate:(id)delegate
{
  storageCopy = storage;
  pathCopy = path;
  delegateCopy = delegate;
  if (!storageCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013319C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013319D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101331A88();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLWPiOSStorageSpellChecker initWithStorage:selectionPath:orSearchCanvasDelegate:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPiOSStorageSpellChecker.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:149 isFatal:0 description:"invalid nil value for '%{public}s'", "storage"];
  }

  v25.receiver = self;
  v25.super_class = CRLWPiOSStorageSpellChecker;
  v14 = [(CRLWPStorageSpellChecker *)&v25 initWithStorage:storageCopy selectionPath:pathCopy orSearchCanvasDelegate:delegateCopy];
  v15 = v14;
  v16 = 0;
  if (storageCopy && v14)
  {
    v17 = objc_alloc_init(UITextChecker);
    textChecker = v15->_textChecker;
    v15->_textChecker = v17;

    p_language = [objc_opt_class() p_language];
    language = v15->_language;
    v15->_language = p_language;

    v21 = objc_alloc_init(CRLWPSpellingResults);
    spellingResults = v15->super._spellingResults;
    v15->super._spellingResults = v21;

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v15 selector:"i_resetSpellCheckingForNotification:" name:@"CRLWPSpellCheckingLearnedWordsChangedNotification" object:0];

    v16 = v15;
  }

  return v16;
}

- (void)dealloc
{
  [(CRLWPStorageSpellChecker *)self cleanup];
  v3.receiver = self;
  v3.super_class = CRLWPiOSStorageSpellChecker;
  [(CRLWPStorageSpellChecker *)&v3 dealloc];
}

- (BOOL)i_addSpellingAndGrammarMarksInRange:(_NSRange)range spellingResults:(id)results grammarResults:(id)grammarResults sync:(BOOL)sync
{
  length = range.length;
  location = range.location;
  resultsCopy = results;
  if (location != 0x7FFFFFFFFFFFFFFFLL && length)
  {
    v10 = [(CRLWPStorageSpellChecker *)self p_textSourceWithoutDeletionsWithSubRange:location, length];
    string = [v10 string];
    v12 = [v10 charRangeMappedFromStorage:{location, length}];
    v14 = v13;
    v15 = &v12[v13];
    v39 = v13;
    if (&v12[v13] > [string length])
    {
      LODWORD(v37) = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101331AB0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101331AC4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101331B58();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v16);
      }

      v17 = [NSString stringWithUTF8String:"[CRLWPiOSStorageSpellChecker i_addSpellingAndGrammarMarksInRange:spellingResults:grammarResults:sync:]", v37];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPiOSStorageSpellChecker.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:177 isFatal:0 description:"attempt to spellcheck past end of string"];

      v14 = v39;
    }

    if (v15 <= [string length])
    {
      v19 = +[CRLWPiOSStorageSpellChecker p_language];
      [(CRLWPiOSStorageSpellChecker *)self textChecker];
      v20 = v38 = resultsCopy;
      v21 = v19;
      v22 = [v20 rangeOfMisspelledWordInString:string range:v12 startingAt:v14 wrap:v12 language:{0, v19}];
      v23 = v10;
      selfCopy = self;
      v25 = v22;
      v27 = v26;

      while (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = [v23 charRangeMappedToStorage:{v25, v27}];
        v30 = v29;
        [v23 substringWithRange:{v28, v29}];
        v31 = string;
        v33 = v32 = v12;
        [(CRLWPStorageSpellChecker *)selfCopy i_addMisspelledWord:v33 atIndex:0x7FFFFFFFFFFFFFFFLL ifValidForRange:v28 toResults:v30, v38];

        v12 = v32;
        string = v31;
        textChecker = [(CRLWPiOSStorageSpellChecker *)selfCopy textChecker];
        v25 = [textChecker rangeOfMisspelledWordInString:v31 range:v12 startingAt:v39 wrap:&v25[v27] language:{0, v21}];
        v27 = v35;
      }

      resultsCopy = v38;
      v10 = v23;
    }
  }

  return 1;
}

- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)index
{
  v5 = +[UIApplication sharedApplication];
  textInputMode = [v5 textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];

  v8 = [(CRLWPStorageSpellChecker *)self rangeOfNumericalSuffixPrecedingCharIndex:index forLocale:primaryLanguage];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

@end