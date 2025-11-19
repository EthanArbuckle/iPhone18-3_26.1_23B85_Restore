@interface CRLWPEditorHelper
- (BOOL)editorKeyboardLanguageIsRTL;
- (BOOL)hasWhitespaceBoundedWordAtSelection:(id)a3;
- (BOOL)isACurrentEditor;
- (BOOL)p_adjustSelection:(id)a3 forWordWithCharIndex:(unint64_t)a4;
- (BOOL)p_canReplaceSelection;
- (BOOL)p_isCharIndex:(unint64_t)a3 withEolAffinity:(BOOL)a4 atBoundary:(int64_t)a5 inDirection:(int64_t)a6;
- (BOOL)p_isCharIndex:(unint64_t)a3 withinTextUnit:(int64_t)a4 inDirection:(int64_t)a5;
- (BOOL)p_isEdgeAtCharIndex:(unint64_t)a3 leadingEdge:(BOOL)a4 withinWordInDirection:(int64_t)a5;
- (BOOL)p_isLayoutLeftToRightAtCharIndex:(unint64_t)a3;
- (BOOL)p_setSelectionWithCharIndex:(unint64_t)a3 andAnchor:(unint64_t)a4;
- (BOOL)p_setVisualSelectionWithCharIndex:(unint64_t)a3 leadingEdge:(BOOL)a4 andAnchor:(unint64_t)a5 andAnchorLeadingEdge:(BOOL)a6;
- (BOOL)p_transposeRanges:(_NSRange)a3 withRange:(_NSRange)a4;
- (BOOL)p_withLineFragmentsForLogicalLineContainingCharIndex:(unint64_t)a3 eol:(BOOL)a4 performBlock:(id)a5;
- (BOOL)wantsToReceiveTextInput;
- (CGRect)p_viewRectForSelection:(id)a3;
- (CRLWPEditorHelper)initWithTextSource:(id)a3 icc:(id)a4 layout:(id)a5;
- (CRLWPParagraphEnumerator)paragraphEnumeratorAtCharIndex:(SEL)a3 styleProvider:(unint64_t)a4;
- (CRLWPTextSource)textSource;
- (_NSRange)adjustVisualSelection:(id)a3 withOtherSelection:(id)a4 outLeadingEdge:(BOOL *)a5 outCaretAffinity:(unint64_t *)a6;
- (_NSRange)availableSelectionRangeForCharIndex:(unint64_t)a3;
- (_NSRange)emacsMarkRange;
- (_NSRange)lastAutocorrectionRange;
- (_NSRange)p_expandParagraphRangeForEnumerator:(CRLWPParagraphEnumerator *)a3;
- (_NSRange)p_rangeForSelectionAtCharIndex:(unint64_t)a3 caretIndex:(unint64_t)a4 handleNextWordWhitespace:(BOOL)a5;
- (_NSRange)p_sanitizeMark;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)a3 caretIndex:(unint64_t)a4;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4;
- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)a3 backward:(BOOL)a4;
- (_NSRange)scanLeftForWordAtCharIndex:(unint64_t)a3;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)a3;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)a3 includingBreaks:(BOOL)a4;
- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4;
- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4 includeHyphenation:(BOOL)a5;
- (_TtC8Freeform11CRLWPEditor)editor;
- (_TtC8Freeform11CRLWPLayout)layout;
- (__CFStringTokenizer)createTokenizerForCharIndex:(unint64_t)a3 outTokenizerRange:(_NSRange *)a4;
- (const)p_lineFragmentForCharIndex:(unint64_t)a3 column:(id *)a4 eol:(BOOL)a5;
- (const)p_lineFragmentWithCaretInfo:(id *)a3 forSelection:(id)a4;
- (id)calculateVisualRunsFromSelection:(id)a3 updateControllerSelection:(BOOL)a4;
- (id)characterStyleForDeletedRange:(_NSRange)a3;
- (id)editorController;
- (id)editorKeyboardLanguage;
- (id)logicalToVisualSelection:(id)a3;
- (id)protectedSelectionBehaviorForCommand:(id)a3;
- (id)selection;
- (int64_t)p_layoutIndexForCharIndex:(unint64_t)a3 leadingEdge:(BOOL)a4;
- (int64_t)p_writingDirectionForCharAtIndex:(unint64_t)a3;
- (unint64_t)backwardSelectionAnchor;
- (unint64_t)caretCharIndexForLayoutOrderCharIndex:(unint64_t)a3 inDirection:(int64_t)a4;
- (unint64_t)charIndexForBeginningOfLineFromCharIndex:(unint64_t)a3;
- (unint64_t)charIndexForEndOfLineFromCharIndex:(unint64_t)a3;
- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)a3 inDirection:(int64_t)a4;
- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)a3 leadingEdge:(BOOL *)a4 inDirection:(int64_t)a5 skipAnchors:(BOOL)a6 useLeadingEdgeOfNextLine:(BOOL)a7;
- (unint64_t)charIndexMovingByWordFromCharIndex:(unint64_t)a3 leadingEdge:(BOOL *)a4 inDirection:(int64_t)a5;
- (unint64_t)forwardSelectionAnchor;
- (unint64_t)getVisualDeletionIndexForSelection:(id)a3 backward:(BOOL *)a4;
- (unint64_t)getVisualInsertionPointIndexForString:(id)a3 selection:(id)a4;
- (unint64_t)p_adjustedCharIndexForWordTestingFromCharIndex:(unint64_t)a3 leadingEdge:(BOOL)a4 forDirection:(int64_t)a5;
- (unint64_t)p_charIndexByMovingCharIndex:(unint64_t)a3 withEolAffinity:(BOOL *)a4 toBoundary:(int64_t)a5 inDirection:(int64_t)a6 preferPosition:(double *)a7 isLeadingEdge:(BOOL *)a8;
- (unint64_t)p_charIndexByMovingPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5 preferPosition:(double *)a6 outEolAffinity:(unint64_t *)a7;
- (unint64_t)p_indexToTransposableCharacterStartingAtIndex:(unint64_t)a3 filterStorage:(id)a4 searchTowardsStorageStart:(BOOL)a5;
- (unint64_t)p_lastVisibleCharIndexForCharIndex:(unint64_t)a3;
- (unint64_t)p_layoutOrderCharIndexForCaretCharIndex:(unint64_t)a3 inDirection:(int64_t)a4;
- (unint64_t)p_leftCharForInsertion:(id *)a3;
- (unint64_t)p_leftEdgeForSelection:(id)a3 withLeadingEdge:(BOOL *)a4;
- (unint64_t)p_lineIndexForMovingCharIndex:(unint64_t)a3 column:(id *)a4 up:(BOOL)a5 atStart:(BOOL)a6 eol:(BOOL *)a7;
- (unint64_t)p_moveFromCharIndex:(unint64_t *)a3 leadingEdge:(BOOL *)a4 tokenizerRef:(__CFStringTokenizer *)a5 tokenizerRange:(_NSRange *)a6 direction:(int64_t)a7 currentWordRange:(_NSRange)a8 newWordRange:(_NSRange *)a9 reasonToStop:(unint64_t)a10;
- (unint64_t)p_oppositeEdgeForSelection:(id)a3 withLeadingEdge:(BOOL *)a4;
- (unint64_t)p_rightEdgeForSelection:(id)a3 withLeadingEdge:(BOOL *)a4;
- (unint64_t)p_selectionEdgeToMutateWithDirection:(int64_t)a3 newAnchor:(unint64_t *)a4;
- (unint64_t)p_selectionEdgeToMutateWithLeadingEdge:(BOOL *)a3 Direction:(int64_t)a4 newAnchor:(unint64_t *)a5 anchorLeadingEdge:(BOOL *)a6;
- (void)capitalizeWord:(id)a3;
- (void)deleteBackwardByDecomposingPreviousCharacter:(id)a3;
- (void)deleteToBeginningOfLine:(id)a3;
- (void)deleteToBeginningOfParagraph:(id)a3;
- (void)deleteToEndOfLine:(id)a3;
- (void)deleteToEndOfParagraph:(id)a3;
- (void)deleteToMark:(id)a3;
- (void)deleteWordBackward:(id)a3;
- (void)deleteWordForward:(id)a3;
- (void)insertNewlineIgnoringFieldEditor:(id)a3;
- (void)insertParagraphSeparator:(id)a3;
- (void)lowercaseWord:(id)a3;
- (void)moveBackward:(id)a3;
- (void)moveBackwardAndModifySelection:(id)a3;
- (void)moveDown:(id)a3;
- (void)moveDownAndModifySelection:(id)a3;
- (void)moveForward:(id)a3;
- (void)moveForwardAndModifySelection:(id)a3;
- (void)moveParagraphBackward:(id)a3;
- (void)moveParagraphBackwardAndModifySelection:(id)a3;
- (void)moveParagraphForward:(id)a3;
- (void)moveParagraphForwardAndModifySelection:(id)a3;
- (void)moveToBeginningOfDocument:(id)a3;
- (void)moveToBeginningOfDocumentAndModifySelection:(id)a3;
- (void)moveToBeginningOfLine:(id)a3;
- (void)moveToBeginningOfLineAndModifySelection:(id)a3;
- (void)moveToBeginningOfParagraph:(id)a3;
- (void)moveToBeginningOfParagraphAndModifySelection:(id)a3;
- (void)moveToEndOfDocument:(id)a3;
- (void)moveToEndOfDocumentAndModifySelection:(id)a3;
- (void)moveToEndOfLine:(id)a3;
- (void)moveToEndOfLineAndModifySelection:(id)a3;
- (void)moveToEndOfParagraph:(id)a3;
- (void)moveToEndOfParagraphAndModifySelection:(id)a3;
- (void)moveUp:(id)a3;
- (void)moveUpAndModifySelection:(id)a3;
- (void)moveWordAndModifySelectionInStorageDirection:(int64_t)a3;
- (void)moveWordBackward:(id)a3;
- (void)moveWordForward:(id)a3;
- (void)moveWordInLayoutDirection:(int64_t)a3;
- (void)notifySelectionChangedWithFlags:(unint64_t)a3;
- (void)p_adjustSelection:(id)a3 withOtherSelection:(id)a4 textSelectionGranularity:(unint64_t)a5;
- (void)p_deleteSelectionBackward:(BOOL)a3 decomposeCharacter:(BOOL)a4 smart:(BOOL)a5 kill:(BOOL)a6;
- (void)p_extendToEndOfLineRight:(BOOL)a3;
- (void)p_moveAndModifySelectionRight:(BOOL)a3;
- (void)p_moveInLineLayoutDirectionLeft:(BOOL)a3;
- (void)p_moveToEndOfLineRight:(BOOL)a3;
- (void)p_moveWordAndModifySelectionInLayoutDirection:(int64_t)a3;
- (void)p_replaceRange:(_NSRange)a3 withText:(id)a4 dictationAndAutocorrectionKey:(id)a5 applyingDictationAlternative:(BOOL)a6 restoreSelection:(id)a7;
- (void)p_selection:(id)a3 toGlyphRange:(id *)a4;
- (void)p_setSelectionFromKeyboardWithRange:(_NSRange)a3 leadingEdge:(BOOL)a4 endOfLine:(BOOL)a5 allowEndOfLineChange:(BOOL)a6;
- (void)p_transformWordWithActionString:(id)a3 usingBlock:(id)a4;
- (void)p_withLayoutTargetForCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4 performBlock:(id)a5;
- (void)p_withLineIndexForCharIndex:(unint64_t)a3 eol:(BOOL)a4 performBlock:(id)a5;
- (void)replaceRange:(_NSRange)a3 withText:(id)a4;
- (void)selectLine:(id)a3;
- (void)selectParagraph:(id)a3;
- (void)selectToMark:(id)a3;
- (void)selectWordWithFlags:(unint64_t)a3;
- (void)setMark:(id)a3;
- (void)setSelectionOfType:(unint64_t)a3 withRange:(_NSRange)a4 endOfLine:(BOOL)a5 withFlags:(unint64_t)a6;
- (void)swapWithMark:(id)a3;
- (void)transpose:(id)a3;
- (void)transposeWords:(id)a3;
- (void)uppercaseWord:(id)a3;
- (void)withLineFragmentForCharIndex:(unint64_t)a3 eol:(BOOL)a4 performBlock:(id)a5;
- (void)yank:(id)a3;
- (void)yankAndSelect:(id)a3;
@end

@implementation CRLWPEditorHelper

- (id)editorKeyboardLanguage
{
  if (+[NSThread isMainThread])
  {
    v0 = +[UIApplication sharedApplication];
    v1 = [v0 textInputMode];
    v2 = [v1 primaryLanguage];

    if (([v2 isEqualToString:@"dictation"] & 1) == 0)
    {
      objc_storeStrong(&qword_101A349D0, v2);
    }
  }

  if (qword_101A349D0)
  {
    v3 = [qword_101A349D0 rangeOfString:@"-"];
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = qword_101A349D0;
  }

  else
  {
    v4 = [qword_101A349D0 substringToIndex:?];
  }

  v5 = v4;
  if (v4 && [v4 length] >= 4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101341F2C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101341F40();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101341FD0();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v7 = [NSString stringWithUTF8String:"NSString *CRLWPGetPrimaryInputLanguage()"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:2642 isFatal:0 description:"Unexpected input language code returned by the OS"];
  }

  v9 = [v5 isEqualToString:@"zh"];
  v10 = qword_101A349D0;
  if (!v9)
  {
    v10 = v5;
  }

  v11 = v10;
  if (!v11)
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 preferredLocalizations];
    v11 = [v13 firstObject];

    if (!v11)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101341FF8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101342020();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013420BC();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v15 = [NSString stringWithUTF8String:"NSString *CRLWPGetPrimaryInputLanguage()"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPUtilities.mm"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:2651 isFatal:0 description:"invalid nil value for '%{public}s'", "result"];

      v11 = 0;
    }
  }

  return v11;
}

- (CRLWPTextSource)textSource
{
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, self->_textSource);
  v5 = [v4 copyWithMarkedText];

  return v5;
}

- (CRLWPEditorHelper)initWithTextSource:(id)a3 icc:(id)a4 layout:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CRLWPEditorHelper;
  v12 = [(CRLWPEditorHelper *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_textSource, a3);
    objc_storeStrong(&v13->_interactiveCanvasController, a4);
    v13->_selectionAnchor = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v13->_layout, a5);
  }

  return v13;
}

- (id)editorController
{
  v2 = [(CRLWPEditorHelper *)self interactiveCanvasController];
  v3 = [v2 editorController];

  return v3;
}

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4
{
  v4 = a4;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0;
  v9 = [(CRLWPEditorHelper *)self textSource];
  v10 = [v9 range];
  v12 = v11;

  v13 = [(CRLWPEditorHelper *)self textSource];
  v14 = [v13 string];

  if (CFStringGetLength(v14) <= a3)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(v14, a3);
    LOBYTE(v16) = 0;
    if (CharacterAtIndex && v10 + v12 > a3)
    {
      v16 = sub_10027E3D4(CharacterAtIndex) ^ 1;
    }
  }

  if (v4 && v10 < a3)
  {
    v17 = CFStringGetCharacterAtIndex(v14, a3 - 1);
    v18 = sub_10027E3D4(v17);
    LOBYTE(v16) = v18 ^ 1 | v16;
    if (!v18)
    {
      --a3;
    }
  }

  if (v16)
  {
    if (v12)
    {
      v28.location = v10;
      v28.length = v12;
      v19 = CFStringTokenizerCreate(0, v14, v28, 4uLL, 0);
      if (v19)
      {
        v20 = v19;
        if (CFStringTokenizerGoToTokenAtIndex(v19, a3))
        {
          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v20);
          length = CurrentTokenRange.length;
          location = CurrentTokenRange.location;
        }

        else
        {
          length = 0;
          location = -1;
        }

        if (location != -1 && length != 0)
        {
          v7 = location;
          v8 = length;
        }

        CFRelease(v20);
      }
    }
  }

  v25 = v7;
  v26 = v8;
  result.length = v26;
  result.location = v25;
  return result;
}

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)a3 caretIndex:(unint64_t)a4
{
  v4 = [(CRLWPEditorHelper *)self p_rangeForSelectionAtCharIndex:a3 caretIndex:a4 handleNextWordWhitespace:1];
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)a3
{
  v3 = [(CRLWPEditorHelper *)self whiteSpaceRangeAtCharIndex:a3 includingBreaks:1];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)a3 includingBreaks:(BOOL)a4
{
  v7 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:?];
  v9 = v8;
  v10 = [(CRLWPEditorHelper *)self textSource];
  if ([v10 length] <= a3)
  {

    goto LABEL_28;
  }

  v11 = [(CRLWPEditorHelper *)self textSource];
  v12 = sub_10027E3D4([v11 characterAtIndex:a3]);

  if (!v12)
  {
LABEL_28:
    v26 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_29;
  }

  v13 = a3;
  if (v7 < a3)
  {
    v13 = a3;
    do
    {
      v14 = [(CRLWPEditorHelper *)self textSource];
      v15 = v13 - 1;
      v16 = [v14 characterAtIndex:v13 - 1];
      v17 = sub_10027E3D4(v16);
      if (!v17 || a4)
      {

        if (!v17)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v18 = sub_10027E2F0(v16);
        if (v16 == 8232)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          goto LABEL_15;
        }
      }

      --v13;
    }

    while (v15 > v7);
    v13 = v7;
  }

LABEL_15:
  v20 = v7 + v9;
  if (v7 + v9 > a3)
  {
    do
    {
      v21 = [(CRLWPEditorHelper *)self textSource];
      v22 = [v21 characterAtIndex:a3];
      v23 = sub_10027E3D4(v22);
      if (!v23 || a4)
      {

        if (!v23)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = sub_10027E2F0(v22);
        if (v22 == 8232)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          goto LABEL_26;
        }
      }

      ++a3;
    }

    while (v20 != a3);
    a3 = v20;
  }

LABEL_26:
  v26 = a3 - v13;
LABEL_29:
  v27 = v13;
  result.length = v26;
  result.location = v27;
  return result;
}

- (BOOL)hasWhitespaceBoundedWordAtSelection:(id)a3
{
  v4 = a3;
  v38 = 0;
  if ([v4 isVisual])
  {
    v5 = [v4 superRange];
    if (&v5[v6] > [(CRLWPTextSource *)self->_textSource length])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013648DC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013648F0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101364978();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v8 = [NSString stringWithUTF8String:"[CRLWPEditorHelper hasWhitespaceBoundedWordAtSelection:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:217 isFatal:0 description:"bad selection -- extends past end of storage"];
    }

    v10 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [v10 layoutIfNeeded];

    v11 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v4 withLeadingEdge:&v38];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101364A78();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101364AA0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101364B28();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v13 = [NSString stringWithUTF8String:"[CRLWPEditorHelper hasWhitespaceBoundedWordAtSelection:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:221 isFatal:0 description:"Couldn't find left edge char index"];

      goto LABEL_44;
    }

    v28 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:v11 inDirection:3];
    if ((sub_10027E3D4([(CRLWPTextSource *)self->_textSource characterAtIndex:v11]) & 1) != 0 || v28 == [(CRLWPTextSource *)self->_textSource length]|| sub_10027E3D4([(CRLWPTextSource *)self->_textSource characterAtIndex:v28]))
    {
      v29 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:v4 withLeadingEdge:&v38];
      if (v29 == 0x7FFFFFFFFFFFFFFFLL)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013649A0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013649C8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101364A50();
        }

        v30 = off_1019EDA68;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v31 = [NSString stringWithUTF8String:"[CRLWPEditorHelper hasWhitespaceBoundedWordAtSelection:]"];
        v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
        [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:242 isFatal:0 description:"Invalid index for right edge of selection"];

        goto LABEL_46;
      }

      v33 = [(CRLWPTextSource *)self->_textSource characterAtIndex:v29];
      if (sub_10027E2F0(v33))
      {
LABEL_46:
        v25 = 0;
        v26 = 1;
        goto LABEL_49;
      }

      sub_10027E3D4(v33);
      textSource = self->_textSource;
      v35 = [v4 range];
      v27 = [(CRLWPTextSource *)textSource isAllWhitespaceInRange:v35, v36];
LABEL_48:
      v25 = v27 ^ 1;
      v26 = v27 ^ 1;
      goto LABEL_49;
    }

LABEL_44:
    v25 = 0;
    v26 = 0;
    goto LABEL_49;
  }

  if (![v4 isValid])
  {
    goto LABEL_44;
  }

  if (![v4 isRange])
  {
    goto LABEL_44;
  }

  v15 = [v4 range];
  v17 = v16;
  v18 = +[NSCharacterSet crlwp_preSmartSet];
  v19 = [v18 characterIsMember:{-[CRLWPTextSource characterAtIndex:](self->_textSource, "characterAtIndex:", v15)}];

  if ((v19 & 1) == 0 && [(CRLWPTextSource *)self->_textSource wordAtCharIndex:v15 includePreviousWord:0]!= v15)
  {
    goto LABEL_44;
  }

  v20 = [(CRLWPTextSource *)self->_textSource characterAtIndex:&v15[v17 - 1]];
  if (sub_10027E2F0(v20))
  {
    goto LABEL_46;
  }

  v21 = +[NSCharacterSet crlwp_postSmartSet];
  v22 = [v21 characterIsMember:v20];

  if ((v22 & 1) != 0 || (v23 = [(CRLWPTextSource *)self->_textSource wordAtCharIndex:&v15[v17] includePreviousWord:1], v25 = 0, v26 = 1, v24) && &v23[v24] == &v15[v17])
  {
    v27 = [(CRLWPTextSource *)self->_textSource isAllWhitespaceInRange:v15, v17];
    goto LABEL_48;
  }

LABEL_49:

  return v25 & v26;
}

- (_NSRange)scanLeftForWordAtCharIndex:(unint64_t)a3
{
  v5 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:?];
  v7 = a3;
  if (v5 + v6 > a3)
  {
    v8 = [(CRLWPEditorHelper *)self textSource];
    v9 = sub_10027E3D4([v8 characterAtIndex:a3]);

    v7 = a3;
    if (v9)
    {
      v10 = [(CRLWPEditorHelper *)self whiteSpaceRangeAtCharIndex:a3];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = a3;
      }

      else
      {
        v7 = v10;
      }
    }
  }

  v11 = [(CRLWPEditorHelper *)self wordAtCharIndex:a3 includePreviousWord:1];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v7;
  }

  v12 = a3 - v11;
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4
{
  v4 = [(CRLWPEditorHelper *)self wordAtCharIndex:a3 includePreviousWord:a4 includeHyphenation:0];
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4 includeHyphenation:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(CRLWPEditorHelper *)self textSource];
  v10 = [v9 textRangeForParagraphAtCharIndex:a3];
  v12 = v11;

  v13 = [(CRLWPEditorHelper *)self textSource];
  v14 = [v13 string];
  v15 = [v14 crlwp_rangeOfWordAtCharacterIndex:a3 range:v10 includePreviousWord:v12 includeHyphenation:{v6, v5}];
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.length = v19;
  result.location = v18;
  return result;
}

- (_NSRange)p_rangeForSelectionAtCharIndex:(unint64_t)a3 caretIndex:(unint64_t)a4 handleNextWordWhitespace:(BOOL)a5
{
  v38 = a5;
  v7 = a4 - 1;
  if (a3 != a4 && v7 != a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101364B50();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101364B64();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101364BEC();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v9 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_rangeForSelectionAtCharIndex:caretIndex:handleNextWordWhitespace:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:381 isFatal:0 description:"Precondition: caretIndex is either equal to the given charIndex or one past"];
  }

  v37 = v7;
  v11 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:a4];
  v13 = v11;
  v14 = v12;
  if (v11 <= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = v11;
  }

  if (v12 - 1 < v15 - v11)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101364C14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101364C3C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101364CC4();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v17 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_rangeForSelectionAtCharIndex:caretIndex:handleNextWordWhitespace:]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:390 isFatal:0 description:"Character index should be inside allowable selection range."];
  }

  v19 = v13 + v14;
  if (v15 >= v13 + v14)
  {
    v21 = 0;
  }

  else
  {
    v20 = [(CRLWPEditorHelper *)self textSource];
    v21 = [v20 characterAtIndex:v15];
  }

  if (!sub_10027E41C(v21))
  {
    if (v38 && sub_10027E3D4(v21))
    {
      if (v15 != a4 || !v15 || v13 >= a3)
      {
        v37 = v15;
        if (v15 + 1 == a4)
        {
          if (v19 <= a4)
          {
            v24 = v15;
          }

          else
          {
            v24 = a4;
          }

          v37 = v24;
        }
      }

      v25 = [(CRLWPEditorHelper *)self textSource];
      v26 = [v25 characterAtIndex:v37];

      if ((sub_10027E3D4(v26) & 1) == 0)
      {
        v27 = sub_10027E41C(v26);
        v28 = v37;
        if (!v27)
        {
          goto LABEL_47;
        }
      }

      v23 = [(CRLWPEditorHelper *)self whiteSpaceRangeAtCharIndex:v15 includingBreaks:0];
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = v29;
        v28 = v15;
        if (v29)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }
    }

    v28 = v15;
LABEL_47:
    v30 = v28;
    v23 = [CRLWPEditorHelper wordAtCharIndex:"wordAtCharIndex:includePreviousWord:" includePreviousWord:?];
    v22 = v31;
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_50;
    }

    if (v30 < v19)
    {
      v32 = [(CRLWPEditorHelper *)self textSource];
      v33 = [v32 string];
      v23 = [v33 rangeOfComposedCharacterSequenceAtIndex:v30];
      v22 = v34;

      goto LABEL_50;
    }

    goto LABEL_30;
  }

  v22 = 0;
LABEL_30:
  v23 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_50:
  v35 = v23;
  v36 = v22;
  result.length = v36;
  result.location = v35;
  return result;
}

- (CRLWPParagraphEnumerator)paragraphEnumeratorAtCharIndex:(SEL)a3 styleProvider:(unint64_t)a4
{
  v13 = a5;
  v8 = [(CRLWPEditorHelper *)self textSource];
  v9 = [(CRLWPEditorHelper *)self textSource];
  v10 = [v9 paragraphIndexAtCharIndex:a4];
  v11 = [(CRLWPEditorHelper *)self textSource];
  sub_1002407EC(retstr, v8, v13, v10, [v11 paragraphCount] - 1, 1);

  return result;
}

- (id)selection
{
  v3 = objc_opt_class();
  v4 = [(CRLWPEditorHelper *)self editorController];
  v5 = [(CRLWPEditorHelper *)self editor];
  v6 = [v4 selectionForEditor:v5];
  v7 = sub_100014370(v3, v6);

  return v7;
}

- (void)setSelectionOfType:(unint64_t)a3 withRange:(_NSRange)a4 endOfLine:(BOOL)a5 withFlags:(unint64_t)a6
{
  v7 = a5;
  length = a4.length;
  location = a4.location;
  v51 = [(CRLWPEditorHelper *)self editor];
  [v51 textSelectionWillChange];

  v52 = [[CRLWPSelection alloc] initWithType:a3 range:location styleInsertionBehavior:length caretAffinity:0, v7];
  v12 = [(CRLWPEditorHelper *)self editorController];
  v13 = [v12 currentEditors];
  v14 = [v13 lastObject];
  v15 = [(CRLWPEditorHelper *)self editor];

  if (v14 == v15)
  {
    if ([(CRLWPSelection *)v52 isInsertionPoint])
    {
      v16 = [(CRLWPEditorHelper *)self interactiveCanvasController];
      v17 = [v16 editingDisabled];

      if (v17)
      {
        v18 = [(CRLWPEditorHelper *)self editor];
        [v18 endEditingAndSelectParent:self];
LABEL_23:

        goto LABEL_24;
      }
    }

    v19 = [(CRLWPEditorHelper *)self editorController];
    v20 = [(CRLWPEditorHelper *)self editor];
    v18 = [v19 selectionForEditor:v20];

    v21 = objc_opt_class();
    v22 = sub_100014370(v21, v18);
    v23 = [v22 range];
    if (v23 == location || &v23[v24] == (location + length))
    {
      v25 = 1;
    }

    else
    {
      v25 = 0;
      a6 |= 4uLL;
    }

    v26 = [(CRLWPEditorHelper *)self editorController];
    v27 = [v26 selectionPath];
    v28 = [v27 selectionPathReplacingMostSpecificLocationOfSelection:v18 withSelection:v52];

    v29 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [v29 setSelectionPath:v28 withSelectionFlags:a6];

    if (v22)
    {
      v30 = v25;
    }

    else
    {
      v30 = 0;
    }

    if (v30 != 1)
    {
LABEL_22:

      goto LABEL_23;
    }

    v31 = [(CRLWPEditorHelper *)self selection];
    v32 = [v22 superRange];
    v34 = v33;
    v35 = [v31 superRange];
    v37 = v35;
    if (v32 != v35 || v34 != v36)
    {
      if (v32 == v35)
      {
        v37 = &v32[v36];
        v38 = 1;
        goto LABEL_19;
      }

      if (&v32[v34] == &v35[v36])
      {
        v38 = 0;
LABEL_19:
        if (v37 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = [CRLWPSelection alloc];
          v40 = [v31 type];
          v41 = [v31 styleInsertionBehavior];
          v42 = [v31 smartFieldRange];
          LOBYTE(v50) = 1;
          v44 = [(CRLWPSelection *)v39 initWithType:v40 range:v37 styleInsertionBehavior:0 caretAffinity:v41 smartFieldRange:v38 leadingEdge:v42 leadingCharIndex:v43, v50, v37];
          v45 = [(CRLWPEditorHelper *)self editorController];
          v46 = [v45 selectionPath];
          v47 = [v46 selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:v44];

          v48 = [(CRLWPEditorHelper *)self interactiveCanvasController];
          [v48 scrollToSelectionPath:v47 scrollOptions:1];
        }
      }
    }

    goto LABEL_22;
  }

LABEL_24:
  v49 = [(CRLWPEditorHelper *)self editor];
  [v49 textSelectionDidChange];
}

- (unint64_t)p_moveFromCharIndex:(unint64_t *)a3 leadingEdge:(BOOL *)a4 tokenizerRef:(__CFStringTokenizer *)a5 tokenizerRange:(_NSRange *)a6 direction:(int64_t)a7 currentWordRange:(_NSRange)a8 newWordRange:(_NSRange *)a9 reasonToStop:(unint64_t)a10
{
  [(CRLWPEditorHelper *)self paragraphEnumeratorAtCharIndex:*a3];
  v44 = [(CRLWPEditorHelper *)self textSource];
  location = a8.location;
  if (a8.location == -1)
  {
    v42 = 0;
    v43 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = [v44 charRangeMappedFromStorage:{a8.location, a8.length}];
    v42 = v16;
    v43 = v15;
  }

  v40 = a9;
  v17 = *a3;
  while (1)
  {
    v18 = [(CRLWPEditorHelper *)self p_adjustedCharIndexForWordTestingFromCharIndex:v17 leadingEdge:*a4 forDirection:a7, v40];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_49;
    }

    v19 = *a5;
    if (!*a5)
    {
      goto LABEL_13;
    }

    if (v18 < a6->location || v18 - a6->location >= a6->length)
    {
      CFRelease(v19);
      *a5 = 0;
LABEL_13:
      v19 = [(CRLWPEditorHelper *)self createTokenizerForCharIndex:v18 outTokenizerRange:a6];
      *a5 = v19;
    }

    v21 = CFStringTokenizerGoToTokenAtIndex(v19, v18);
    if ((a10 & 2) != 0 && !v21)
    {
      v35 = 2;
      goto LABEL_50;
    }

    v22 = location;
    if (!v21)
    {
      goto LABEL_32;
    }

    v23 = location == 0x7FFFFFFFFFFFFFFFLL && a8.length == 0;
    v24 = v23;
    if ((a10 & 4) != 0 && !v24)
    {
      break;
    }

    if ((a10 & 8) != 0)
    {
      *v40 = CFStringTokenizerGetCurrentTokenRange(*a5);
      v35 = 8;
      goto LABEL_50;
    }

LABEL_32:
    v33 = *a4;
    v34 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:*a3 leadingEdge:a4 inDirection:a7 skipAnchors:0];
    v17 = v34;
    location = v22;
    if (v34 == *a3)
    {
      if (*a4 == v33 || v34 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v34 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_40:
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101364CEC();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101364D14();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101364D9C();
          }

          v36 = off_1019EDA68;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_10130E89C();
          }

          v37 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_moveFromCharIndex:leadingEdge:tokenizerRef:tokenizerRange:direction:currentWordRange:newWordRange:reasonToStop:]"];
          v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
          [CRLAssertionHandler handleFailureInFunction:v37 file:v38 lineNumber:603 isFatal:0 description:"Should not have received NSNotFound."];
        }

LABEL_49:
        v35 = 1;
        goto LABEL_50;
      }
    }

    else if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_40;
    }

    *a3 = v34;
  }

  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*a5);
  v26 = [v44 charRangeMappedFromStorage:{CurrentTokenRange.location, CurrentTokenRange.length}];
  v28 = v27;
  v48.location = v22;
  v48.length = a8.length;
  v41 = sub_1002BC8E0(v48, CurrentTokenRange);
  v30 = v29;
  v49.length = v42;
  v49.location = v43;
  v50.location = v26;
  v50.length = v28;
  v31 = sub_1002BC8E0(v49, v50);
  if (CurrentTokenRange.location == v22 && CurrentTokenRange.length == a8.length || v32 | v31 && (v30 || !v41))
  {
    goto LABEL_32;
  }

  *v40 = CurrentTokenRange;
  v35 = 4;
LABEL_50:

  sub_10024068C(&v47);
  return v35;
}

- (__CFStringTokenizer)createTokenizerForCharIndex:(unint64_t)a3 outTokenizerRange:(_NSRange *)a4
{
  v7 = [(CRLWPEditorHelper *)self textSource];
  v8 = [v7 textRangeForParagraphAtCharIndex:a3];
  v10 = v9;

  a4->location = v8;
  a4->length = v10;
  v11 = [(CRLWPEditorHelper *)self textSource];
  v12 = [v11 string];
  v13 = CFStringTokenizerCreate(0, v12, *a4, 0, 0);

  CFStringTokenizerGoToTokenAtIndex(v13, a3);
  return v13;
}

- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)a3 inDirection:(int64_t)a4
{
  v7 = [(CRLWPEditorHelper *)self textSource];

  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101364DC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101364DD8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101364E74();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v9 = [NSString stringWithUTF8String:"[CRLWPEditorHelper charIndexMovingByCharacterFromCharIndex:inDirection:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:633 isFatal:0 description:"invalid nil value for '%{public}s'", "self.textSource"];
  }

  v11 = [(CRLWPEditorHelper *)self textSource];
  v12 = v11 == 0;

  if (v12)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:a3 leadingEdge:0 inDirection:a4 skipAnchors:1];
  }
}

- (_NSRange)p_expandParagraphRangeForEnumerator:(CRLWPParagraphEnumerator *)a3
{
  location = sub_100240930(a3);
  length = v5;
  if (!sub_100240AD4(a3))
  {
    sub_1002407F0(a3);
    v18.location = sub_100240930(a3);
    v18.length = v7;
    v16.location = location;
    v16.length = length;
    v8 = NSUnionRange(v16, v18);
    location = v8.location;
    length = v8.length;
    sub_100240814(a3);
  }

  if (sub_100240844(a3))
  {
    v9 = location;
    v10 = length;
  }

  else
  {
    sub_100240814(a3);
    v12.location = sub_100240930(a3);
    v12.length = v11;
    v13.location = location;
    v13.length = length;

    v14 = NSUnionRange(v13, v12);
    v10 = v14.length;
    v9 = v14.location;
  }

  result.length = v10;
  result.location = v9;
  return result;
}

- (BOOL)p_isLayoutLeftToRightAtCharIndex:(unint64_t)a3
{
  v5 = [(CRLWPEditorHelper *)self interactiveCanvasController];
  [v5 layoutIfNeeded];

  v8 = 0;
  v6 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:a3 column:&v8 eol:0];
  return !v6 || sub_1002117DC(v6, a3) == 0;
}

- (id)calculateVisualRunsFromSelection:(id)a3 updateControllerSelection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([v6 validVisualRanges] & 1) != 0 || objc_msgSend(v6, "isInsertionPoint"))
  {
    v7 = v6;
    goto LABEL_4;
  }

  v98 = self;
  if ([v6 type] != 7)
  {
    v7 = v6;
    if (v4)
    {
      goto LABEL_193;
    }

    goto LABEL_4;
  }

  v101 = [v6 start];
  v9 = [(CRLWPEditorHelper *)self textSource];
  v10 = [v6 end];
  v11 = [(CRLWPEditorHelper *)self textSource];
  v12 = [v11 characterCount];
  if (v12 >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v9 previousCharacterIndex:v13];

  v99 = objc_opt_new();
  v122[0] = 0;
  v122[1] = v122;
  v122[2] = 0x3032000000;
  v122[3] = sub_1003C18DC;
  v122[4] = sub_1003C18EC;
  v123 = 0;
  v120[0] = 0;
  v120[1] = v120;
  v120[2] = 0x3032000000;
  v120[3] = sub_1003C18DC;
  v120[4] = sub_1003C18EC;
  v121 = 0;
  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v111[0] = _NSConcreteStackBlock;
  v111[1] = 3221225472;
  v111[2] = sub_1003C18F4;
  v111[3] = &unk_10185CF80;
  v111[4] = v122;
  v111[5] = &v116;
  v111[7] = &v112;
  v111[8] = v14;
  v111[6] = v120;
  [(CRLWPEditorHelper *)self withLineFragmentForCharIndex:v101 eol:0 performBlock:v111];
  v96 = v4;
  if (!v117[3] || ![v6 isRange] || !v113[3] && (v110[0] = _NSConcreteStackBlock, v110[1] = 3221225472, v110[2] = sub_1003C19EC, v110[3] = &unk_10185CFA8, v110[4] = v120, v110[5] = &v112, -[CRLWPEditorHelper withLineFragmentForCharIndex:eol:performBlock:](self, "withLineFragmentForCharIndex:eol:performBlock:", v14, 0, v110), !v113[3]))
  {
    v100 = v14;
    goto LABEL_187;
  }

  v15 = sub_100212D9C(v117[3], v101);
  v16 = sub_100212D9C(v113[3], v14);
  v17 = v117[3];
  v18 = v17[3];
  if ((~*(v17 + 6) & 0x801) != 0)
  {
    v22 = 0;
  }

  else
  {
    v19 = &xmmword_101464828;
    if (v18 >= 0)
    {
      v19 = v117[3];
    }

    v21 = *v19;
    v20 = *(v19 + 1);
    v22 = v21 + v20 <= [v6 end];
    v17 = v117[3];
  }

  sub_100213820(v17, &__p);
  if (__p == v109 && ((v18 & 1) == 0 || v22))
  {
    v23 = v117[3];
    if (*(v23 + 24) < 0)
    {
      v24 = &xmmword_101464828;
    }

    else
    {
      v24 = v117[3];
    }

    v25 = *(v24 + 1);
    *(&v105 + 1) = *v24;
    v106 = v25;
    v107 = (*(v23 + 24) & 0x1000) == 0;
    v104 = *(&v105 + 1);
    *&v105 = *(&v105 + 1);
    sub_10021398C(&__p, &v104);
  }

  v26 = v117[3];
  v97 = *(v26 + 3);
  v27 = v101;
  if (v26 == v113[3] && v15 > v16)
  {
    v28 = v101;
  }

  else
  {
    v28 = v14;
  }

  if (v26 == v113[3] && v15 > v16)
  {
    v27 = v14;
  }

  v100 = v28;
  v101 = v27;
  if (v18)
  {
    if (v97 < 0)
    {
      v26 = &xmmword_101464828;
    }

    v29 = *v26;
    if (v29 >= [v6 start])
    {
      [v99 addRange:{*v117[3], 1}];
      if (v109 != __p && !v22)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101364E9C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101364EC4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101364F4C();
        }

        v30 = off_1019EDA68;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v31 = [NSString stringWithUTF8String:"[CRLWPEditorHelper calculateVisualRunsFromSelection:updateControllerSelection:]"];
        v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
        [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:758 isFatal:0 description:"Expect no runs for a partitioned attachment line fragment"];
      }
    }
  }

  v33 = __p;
  if (v109 == __p)
  {
LABEL_129:
    v58 = v117[3];
    v59 = v113[3];
    v60 = *(v58 + 3);
    if (v58 == v59 && (v60 & 0x4000) != 0)
    {
      v61 = [v6 range];
      v63 = v62;
LABEL_183:
      [v99 addRange:{v61, v63}];
      goto LABEL_184;
    }

    if (v60 < 0)
    {
      v58 = &xmmword_101464828;
    }

    v64 = *v58 + *(v58 + 1);
    v65 = *v59;
    if (v64 <= v65)
    {
      v66 = v65;
    }

    else
    {
      v66 = v64;
    }

    if (v64 >= v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = v64;
    }

    [v99 addRange:{v67, v66 - v67}];
    sub_100213820(v113[3], &v104);
    if (__p)
    {
      *&v109 = __p;
      operator delete(__p);
    }

    v68 = v104;
    __p = v104;
    v109 = v105;
    v69 = v105;
    v70 = v113;
    v71 = v98;
    if (v104 == v105)
    {
      v72 = v113[3];
      v73 = *(v72 + 24);
      if ((v73 & 0x800) == 0)
      {
        goto LABEL_179;
      }

      if (v73 < 0)
      {
        v74 = &xmmword_101464828;
      }

      else
      {
        v74 = v113[3];
      }

      v75 = *(v74 + 1);
      *(&v105 + 1) = *v74;
      v106 = v75;
      v107 = (*(v72 + 24) & 0x1000) == 0;
      v104 = *(&v105 + 1);
      *&v105 = *(&v105 + 1);
      sub_10021398C(&__p, &v104);
      v70 = v113;
      v68 = __p;
      v69 = v109;
    }

    v76 = v70[3];
    v77 = v76[3];
    if (v69 == v68)
    {
LABEL_180:
      if ((v77 & 1) == 0)
      {
        v90 = objc_opt_new();

        v99 = v90;
        goto LABEL_184;
      }

      v61 = *v76;
      v63 = 1;
      goto LABEL_183;
    }

    v78 = 0;
    v79 = 0;
    v80 = 0;
    while (1)
    {
      v81 = &v68[40 * v78];
      v83 = *(v81 + 2);
      v82 = *(v81 + 3);
      if (v100 < v83 || v100 - v83 >= v82)
      {
        if ((v77 & 0x1000) == 0)
        {
          goto LABEL_171;
        }

        if (v79)
        {
          goto LABEL_177;
        }

LABEL_172:
        v79 = 0;
        v68 = __p;
        v78 = ++v80;
        if (0xCCCCCCCCCCCCCCCDLL * ((v109 - __p) >> 3) <= v80)
        {
          v70 = v113;
LABEL_179:
          v76 = v70[3];
          v77 = v76[3];
          goto LABEL_180;
        }
      }

      else
      {
        v85 = v81[32];
        if ((v77 & 0x1000) == 0)
        {
          if (v85)
          {
            v86 = [(CRLWPEditorHelper *)v71 textSource];
            v87 = [v86 nextCharacterIndex:v100];
            if (v83 >= v87)
            {
              v83 = v87;
            }

            v79 = 1;
            v71 = v98;
          }

          else
          {
            if (v100 >= &v83[v82])
            {
              v83 += v82;
            }

            else
            {
              v83 = v100;
            }

            v79 = 1;
          }

LABEL_171:
          [v99 addRange:v83];
          if (v79)
          {
            goto LABEL_184;
          }

          goto LABEL_172;
        }

        if (v85)
        {
          if (v100 >= &v83[v82])
          {
            v83 += v82;
          }

          else
          {
            v83 = v100;
          }
        }

        else
        {
          v88 = [(CRLWPEditorHelper *)v71 textSource];
          v89 = [v88 nextCharacterIndex:v100];
          if (v83 >= v89)
          {
            v83 = v89;
          }

          v71 = v98;
        }

LABEL_177:
        [v99 addRange:v83];
        v68 = __p;
        v79 = 1;
        v78 = ++v80;
        if (0xCCCCCCCCCCCCCCCDLL * ((v109 - __p) >> 3) <= v80)
        {
          goto LABEL_184;
        }
      }
    }
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  do
  {
    v38 = &v33[40 * v34];
    v39 = *(v38 + 2);
    v40 = *(v38 + 3);
    v42 = v101 >= v39 && &v101[-v39] < v40;
    if (!v42)
    {
      v46 = *(v38 + 2);
      v47 = *(v38 + 3);
      goto LABEL_83;
    }

    if ((v97 & 0x1000) == 0 || v117[3] == v113[3])
    {
      if (v38[32] == 1)
      {
LABEL_68:
        if (v101 <= &v40[v39])
        {
          v48 = &v40[v39];
        }

        else
        {
          v48 = v101;
        }

        if (v101 >= &v40[v39])
        {
          v46 = &v40[v39];
        }

        else
        {
          v46 = v101;
        }

        v47 = v48 - v46;
        goto LABEL_82;
      }

      v43 = [(CRLWPEditorHelper *)v98 textSource];
      v49 = [v43 nextCharacterIndex:v101];
      if (v39 <= v49)
      {
        v45 = v49;
      }

      else
      {
        v45 = v39;
      }

      if (v39 >= v49)
      {
        v46 = v49;
      }

      else
      {
        v46 = v39;
      }
    }

    else
    {
      if (v38[32] != 1)
      {
        goto LABEL_68;
      }

      v43 = [(CRLWPEditorHelper *)v98 textSource];
      v44 = [v43 nextCharacterIndex:v101];
      if (v39 <= v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = v39;
      }

      if (v39 >= v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = v39;
      }
    }

    v47 = v45 - v46;
LABEL_82:
    v35 = 1;
LABEL_83:
    if (v100 >= v39 && &v100[-v39] < v40)
    {
      if (*(__p + 40 * v34 + 32) == 1)
      {
        if (v42)
        {
          v51 = [(CRLWPEditorHelper *)v98 textSource];
          v52 = [v51 nextCharacterIndex:v100];
          if (v101 <= v52)
          {
            v53 = v52;
          }

          else
          {
            v53 = v101;
          }

          if (v101 >= v52)
          {
            v46 = v52;
          }

          else
          {
            v46 = v101;
          }
        }

        else
        {
          v51 = [(CRLWPEditorHelper *)v98 textSource];
          v55 = [v51 nextCharacterIndex:v100];
          if (v39 <= v55)
          {
            v53 = v55;
          }

          else
          {
            v53 = v39;
          }

          if (v39 >= v55)
          {
            v46 = v55;
          }

          else
          {
            v46 = v39;
          }
        }
      }

      else
      {
        if (!v42)
        {
          if (v100 <= &v40[v39])
          {
            v56 = &v40[v39];
          }

          else
          {
            v56 = v100;
          }

          if (v100 >= &v40[v39])
          {
            v46 = &v40[v39];
          }

          else
          {
            v46 = v100;
          }

          v47 = v56 - v46;
          goto LABEL_116;
        }

        v51 = [(CRLWPEditorHelper *)v98 textSource];
        v54 = [v51 nextCharacterIndex:v101];
        if (v100 <= v54)
        {
          v53 = v54;
        }

        else
        {
          v53 = v100;
        }

        if (v100 >= v54)
        {
          v46 = v54;
        }

        else
        {
          v46 = v100;
        }
      }

      v47 = v53 - v46;
LABEL_116:
      v36 = 1;
    }

    if ((v97 & 0x1000) != 0)
    {
      if (((v36 | v35) & 1) != 0 || v117[3] != v113[3])
      {
        [v99 addRange:{v46, v47}];
      }

      if (v35)
      {
        if ((v117[3] != v113[3]) | v36 & 1)
        {
          break;
        }

        goto LABEL_127;
      }
    }

    else if (v35)
    {
      [v99 addRange:{v46, v47}];
    }

    if (v36)
    {
      goto LABEL_184;
    }

LABEL_127:
    v34 = v37;
    v33 = __p;
  }

  while (0xCCCCCCCCCCCCCCCDLL * ((v109 - __p) >> 3) > v37++);
  if ((v36 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_184:
  if (__p)
  {
    *&v109 = __p;
    operator delete(__p);
  }

  self = v98;
LABEL_187:
  if ([v99 rangeCount])
  {
    v91 = [(CRLWPEditorHelper *)self textSource];
    v92 = [v91 isWritingDirectionRightToLeftForParagraphAtCharIndex:{objc_msgSend(v6, "start")}];
    v7 = [v6 copyWithVisualRanges:v99 headCharIndex:v101 tailCharIndex:v100 rightToLeft:v92 sameLine:v117[3] == v113[3]];
  }

  else if ([v6 isRange])
  {
    v7 = [v6 copyWithNewType:0];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v116, 8);
  _Block_object_dispose(v120, 8);

  _Block_object_dispose(v122, 8);
  self = v98;
  if (v96)
  {
LABEL_193:
    v93 = [(CRLWPEditorHelper *)self selection];
    v94 = [v93 isEqual:v7];

    if ((v94 & 1) == 0)
    {
      v95 = [(CRLWPEditorHelper *)v98 editorController];
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 3221225472;
      v102[2] = sub_1003C1AD8;
      v102[3] = &unk_10185D010;
      v102[4] = v98;
      v7 = v7;
      v103 = v7;
      [v95 performBlockAfterSettingSelection:v102];
    }
  }

LABEL_4:

  return v7;
}

- (void)p_selection:(id)a3 toGlyphRange:(id *)a4
{
  v6 = a3;
  a4->var6 = [v6 isInsertionPoint];
  v7 = [v6 rawRange];
  v8 = v7;
  if (a4->var6)
  {
    a4->var7 = 0;
    p_var7 = &a4->var7;
    v29 = 0;
    v30 = 0;
    v10 = v7;
  }

  else
  {
    v10 = [v6 end] - 1;
    a4->var7 = 0;
    p_var7 = &a4->var7;
    var6 = a4->var6;
    v29 = 0;
    v30 = 0;
    if (!var6)
    {
      goto LABEL_6;
    }
  }

  if ([v6 caretAffinity] == 1)
  {
    v12 = [v6 leadingEdge];
    goto LABEL_7;
  }

LABEL_6:
  v12 = 0;
LABEL_7:
  var0 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:v8 column:&v30 eol:v12];
  a4->var0 = var0;
  v14 = v12 ^ 1;
  if (var0)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    var0 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:v8 - 1 column:&v30 eol:1];
    a4->var0 = var0;
  }

  v15 = var0;
  if (!a4->var6)
  {
    v15 = -[CRLWPEditorHelper p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", v10, &v29, [v6 caretAffinity] == 1);
    var0 = a4->var0;
  }

  a4->var1 = v15;
  if (var0)
  {
    if (*(var0 + 1))
    {
      if (a4->var6)
      {
        v16 = *(var0 + 3);
        v17 = &xmmword_101464828;
        if (v16 >= 0)
        {
          v17 = var0;
        }

        if (v8 == *v17 + *(v17 + 1))
        {
          v18 = (v16 >> 12) & 1;
        }

        else
        {
          LODWORD(v18) = sub_1002117DC(var0, v8) == 1;
        }

        if (v18 == [v6 leadingEdge])
        {
          v22 = a4->var0;
          v23 = [(CRLWPEditorHelper *)self editor];
          v24 = [v23 storage];
          v8 = sub_1002147B0(v22, v8, 2, v24);
        }

        if (v8 == 0x7FFFFFFFFFFFFFFFLL || (-[CRLWPEditorHelper editor](self, "editor"), v25 = objc_claimAutoreleasedReturnValue(), [v25 storage], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "length"), v26, v25, v8 == v27))
        {
          v8 = sub_10021173C(a4->var0);
          *p_var7 = 1;
        }

        v28 = sub_100212D9C(a4->var0, v8);
        a4->var2 = v28;
        a4->var3 = v8;
        a4->var4 = v28;
        a4->var5 = v8;
      }

      else if (v15)
      {
        a4->var2 = sub_100212D9C(var0, v8);
        v20 = sub_100212D9C(a4->var1, v10);
        a4->var3 = v8;
        a4->var4 = v20;
        a4->var5 = v10;
        if (a4->var0 == a4->var1)
        {
          var2 = a4->var2;
          if (var2 >= v20 != (*(a4->var0 + 25) & 0x10) >> 4)
          {
            a4->var2 = v20;
            a4->var3 = v10;
            a4->var4 = var2;
            a4->var5 = v8;
          }
        }
      }
    }

    else
    {
      if ((*(var0 + 3) & 0x1000) != 0)
      {
        v19 = v8 - 1;
      }

      else
      {
        v19 = v8;
      }

      a4->var2 = 0;
      a4->var3 = v19;
      a4->var4 = 0;
      a4->var5 = v8 - 1;
    }
  }
}

- (unint64_t)p_leftCharForInsertion:(id *)a3
{
  var0 = a3->var0;
  v6 = [(CRLWPEditorHelper *)self editor];
  v7 = [v6 storage];

  var3 = a3->var3;
  if (*(var0 + 1))
  {
    var7 = a3->var7;
    v10 = a3->var3;
    if (!var7)
    {
      v10 = sub_1002147B0(var0, var3, 3, v7);
    }

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = *(var0 + 3);
      if ((v11 & 0x1000) != 0)
      {
        v13 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:var3 leadingEdge:0 inDirection:3 skipAnchors:1];
      }

      else
      {
        if (!var3)
        {
          v10 = 0;
          goto LABEL_15;
        }

        if (v11 < 0)
        {
          v12 = &xmmword_101464828;
        }

        else
        {
          v12 = var0;
        }

        v13 = [v7 previousCharacterIndex:*v12];
      }
    }

    else
    {
      if (v10 != [v7 characterCount])
      {
LABEL_15:
        var3 = v10;
        goto LABEL_16;
      }

      v13 = [v7 previousCharacterIndex:v10];
    }

    v10 = v13;
    goto LABEL_15;
  }

LABEL_16:

  return var3;
}

- (_NSRange)adjustVisualSelection:(id)a3 withOtherSelection:(id)a4 outLeadingEdge:(BOOL *)a5 outCaretAffinity:(unint64_t *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = objc_opt_class();
  v13 = [(CRLWPEditorHelper *)self textSource];
  v53 = sub_100014370(v12, v13);

  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = 0;
  if (a5)
  {
    *a5 = 1;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v16 = [(CRLWPEditorHelper *)self calculateVisualRunsFromSelection:v10 updateControllerSelection:0];

  v17 = [(CRLWPEditorHelper *)self calculateVisualRunsFromSelection:v11 updateControllerSelection:0];

  [(CRLWPEditorHelper *)self p_selection:v16 toGlyphRange:&v61];
  [(CRLWPEditorHelper *)self p_selection:v17 toGlyphRange:&v54];
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(v61), vceqzq_s64(v54)))) & 1) == 0)
  {
    if (v63 == v56 && v65 == v58 && v66 == v60)
    {
      if (a5)
      {
        *a5 = [v16 leadingEdge];
      }

      if (a6)
      {
        *a6 = [v16 caretAffinity];
      }

      v14 = [v16 rawRange];
      v15 = v18;
      goto LABEL_142;
    }

    if ([v16 isInsertionPoint])
    {
      if (![v17 isInsertionPoint])
      {
        if (v61.i64[0] == v54.i64[0])
        {
          if (v62 >= v55)
          {
            v35 = [(CRLWPEditorHelper *)self p_leftCharForInsertion:&v61];
            v36 = &v56;
          }

          else
          {
            v35 = v63;
            v36 = &v58;
          }

          v40 = *v36;
          if (v35 >= v40)
          {
            v19 = v40;
          }

          else
          {
            v19 = v35;
          }

          if (v35 <= v40)
          {
            v32 = v40;
          }

          else
          {
            v32 = v35;
          }

          goto LABEL_128;
        }

        v32 = v63;
        v19 = v56;
        v33 = *(v61.i64[0] + 24);
        if (v63 < v56)
        {
          if ((v33 & 0x1000) != 0)
          {
            v32 = [(CRLWPEditorHelper *)self p_leftCharForInsertion:&v61];
          }

          v19 = v32;
          v32 = v58;
          goto LABEL_121;
        }

        if ((v33 & 0x1000) != 0)
        {
          goto LABEL_121;
        }

LABEL_52:
        v38 = [(CRLWPEditorHelper *)self p_leftCharForInsertion:&v61];
LABEL_120:
        v32 = v38;
        goto LABEL_121;
      }

      if (v61.i64[0] != v54.i64[0])
      {
        v19 = v63;
        if (v63 < v56)
        {
          if ((*(v61.i64[0] + 25) & 0x10) != 0)
          {
            v20 = [(CRLWPEditorHelper *)self p_leftCharForInsertion:&v61];
          }

          else
          {
            if (v66 != 1)
            {
              goto LABEL_91;
            }

            v20 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:v63 leadingEdge:0 inDirection:2 skipAnchors:1 useLeadingEdgeOfNextLine:1];
          }

          v19 = v20;
LABEL_91:
          if ((*(v54.i64[0] + 25) & 0x10) != 0)
          {
            v32 = v56;
            if (v60 != 1)
            {
              goto LABEL_121;
            }

            v38 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:v56 leadingEdge:0 inDirection:2 skipAnchors:1 useLeadingEdgeOfNextLine:1];
          }

          else
          {
            v38 = [(CRLWPEditorHelper *)self p_leftCharForInsertion:&v54];
          }

          goto LABEL_120;
        }

        if ((*(v54.i64[0] + 25) & 0x10) != 0)
        {
          v37 = [(CRLWPEditorHelper *)self p_leftCharForInsertion:&v54];
        }

        else
        {
          if (v60 != 1)
          {
            v19 = v56;
LABEL_116:
            if ((*(v61.i64[0] + 25) & 0x10) != 0)
            {
              v32 = v63;
              if (v63 && v66 == 1)
              {
                v38 = sub_10027F9E4(v63, v53);
                goto LABEL_120;
              }

LABEL_121:
              if (v19 > v32)
              {
                v48 = [v53 nextCharacterIndex:v19];
                if (v32 <= v48)
                {
                  v49 = v48;
                }

                else
                {
                  v49 = v32;
                }

                if (v32 >= v48)
                {
                  v14 = v48;
                }

                else
                {
                  v14 = v32;
                }

LABEL_141:
                v15 = v49 - v14;
                goto LABEL_142;
              }

LABEL_128:
              v50 = [v53 nextCharacterIndex:v32];
              if (v19 <= v50)
              {
                v49 = v50;
              }

              else
              {
                v49 = v19;
              }

              if (v19 >= v50)
              {
                v14 = v50;
              }

              else
              {
                v14 = v19;
              }

              goto LABEL_141;
            }

            goto LABEL_52;
          }

          v37 = [CRLWPEditorHelper charIndexMovingByCharacterFromCharIndex:"charIndexMovingByCharacterFromCharIndex:leadingEdge:inDirection:skipAnchors:useLeadingEdgeOfNextLine:" leadingEdge:? inDirection:? skipAnchors:? useLeadingEdgeOfNextLine:?];
        }

        v19 = v37;
        goto LABEL_116;
      }

      if (v62 <= v55)
      {
        v32 = v63;
        if (v66 != 1)
        {
          v39 = [(CRLWPEditorHelper *)self p_leftCharForInsertion:&v54];
LABEL_98:
          if (v32 >= v39)
          {
            v19 = v39;
          }

          else
          {
            v19 = v32;
          }

          if (v32 <= v39)
          {
            v32 = v39;
          }

          goto LABEL_128;
        }
      }

      else
      {
        v32 = [(CRLWPEditorHelper *)self p_leftCharForInsertion:&v61];
      }

      v39 = v56;
      goto LABEL_98;
    }

    v21 = [v16 visualRanges];
    if ([v21 containsCharacterAtIndex:v56])
    {
      v22 = [v16 visualRanges];
      v23 = [v22 containsCharacterAtIndex:v58];

      if (v23)
      {
        v24 = v56;
        v25 = [v16 superRange];
        if (v24 <= v25 + (v26 >> 1))
        {
          v30 = v56;
          v31 = [v53 nextCharacterIndex:v65];
LABEL_135:
          if (v30 <= v31)
          {
            v49 = v31;
          }

          else
          {
            v49 = v30;
          }

          if (v30 >= v31)
          {
            v14 = v31;
          }

          else
          {
            v14 = v30;
          }

          goto LABEL_141;
        }

        v27 = v54.i64[0];
        v28 = v61.i64[0];
        if (v54.i64[0] != v61.i64[0])
        {
          if (*(v61.i64[0] + 24) < 0)
          {
            v28 = &xmmword_101464828;
          }

          v29 = *v28;
          if (*(v54.i64[0] + 24) < 0)
          {
            v27 = &xmmword_101464828;
          }

          v30 = v63;
          if (v29 <= *v27)
          {
            v31 = [v53 nextCharacterIndex:{-[CRLWPEditorHelper p_leftCharForInsertion:](self, "p_leftCharForInsertion:", &v54)}];
          }

          else
          {
            v31 = [v53 nextCharacterIndex:v56];
          }

          goto LABEL_135;
        }

        v46 = *(v54.i64[0] + 24);
        v47 = v56;
        if ((v46 & 0x1000) != 0)
        {
          v47 = [v53 nextCharacterIndex:v56];
          v46 = *(v54.i64[0] + 24);
        }

        if ((v46 & 0x1000) == 0 && v60 == 1)
        {
          v47 = [v53 nextCharacterIndex:v56];
        }

        if (v63 <= v47)
        {
          v45 = v47;
        }

        else
        {
          v45 = v63;
        }

        if (v63 >= v47)
        {
          v14 = v47;
        }

        else
        {
          v14 = v63;
        }

LABEL_88:
        v15 = v45 - v14;
        goto LABEL_142;
      }
    }

    else
    {
    }

    if (v54.i64[0] == v61.i64[0])
    {
      if (((*(v54.i64[0] + 25) & 0x10) == 0) != v55 < v62)
      {
        goto LABEL_39;
      }
    }

    else if (v56 > v63)
    {
LABEL_39:
      v34 = v63;
      goto LABEL_64;
    }

    if (v59 == 1 && (*(v54.i64[0] + 25) & 0x10) != 0)
    {
      v34 = [(CRLWPEditorHelper *)self p_leftCharForInsertion:&v54];
    }

    else
    {
      v34 = v56;
    }

LABEL_64:
    if (v54.i64[1] == v61.i64[1])
    {
      if ((*(v54.i64[1] + 25) & 0x10) != 0)
      {
        if (v57 > v64)
        {
          goto LABEL_66;
        }
      }

      else if (v57 < v64)
      {
        goto LABEL_66;
      }
    }

    else if (v58 < v65)
    {
LABEL_66:
      v41 = v65;
      goto LABEL_76;
    }

    if (v59 == 1)
    {
      if ((*(v54.i64[0] + 25) & 0x10) != 0)
      {
        v41 = v56;
      }

      else
      {
        v41 = [(CRLWPEditorHelper *)self p_leftCharForInsertion:&v54];
      }
    }

    else
    {
      v41 = v58;
    }

LABEL_76:
    if (v34 <= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = v34;
    }

    v43 = [v53 nextCharacterIndex:v42];
    if (v34 >= v41)
    {
      v44 = v41;
    }

    else
    {
      v44 = v34;
    }

    if (v44 <= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44;
    }

    if (v44 >= v43)
    {
      v14 = v43;
    }

    else
    {
      v14 = v44;
    }

    goto LABEL_88;
  }

LABEL_142:

  v51 = v14;
  v52 = v15;
  result.length = v52;
  result.location = v51;
  return result;
}

- (void)p_adjustSelection:(id)a3 withOtherSelection:(id)a4 textSelectionGranularity:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 isValid] && objc_msgSend(v8, "isValid"))
  {
    [v7 superRange];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1003C2B98;
    v49[3] = &unk_10185D038;
    v7 = v7;
    v50 = v7;
    v9 = v8;
    v51 = v9;
    v46 = objc_retainBlock(v49);
    if ([v9 type] == 7 && !objc_msgSend(v7, "type"))
    {
      v10 = [(CRLWPEditorHelper *)self logicalToVisualSelection:v7];

      v11 = [(CRLWPEditorHelper *)self calculateVisualRunsFromSelection:v10 updateControllerSelection:0];

      v7 = v11;
    }

    if ([v9 type] == 7 && objc_msgSend(v7, "type") == 7)
    {
      v48 = 1;
      v47 = 0;
      v12 = [(CRLWPEditorHelper *)self adjustVisualSelection:v7 withOtherSelection:v9 outLeadingEdge:&v48 outCaretAffinity:&v47];
      v45 = v13;
      v14 = v12;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = (v46[2])();
        v45 = v16;
        v14 = v15;
      }

      v17 = [(CRLWPEditorHelper *)self selection];
      if ([v17 isValid])
      {
        v18 = [(CRLWPEditorHelper *)self selection];
        v19 = [v18 range];
        v21 = v20;

        if (v19 == v14 && v21 == v45)
        {
          v22 = 0;
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
      }

      v44 = objc_alloc([(CRLWPEditorHelper *)self wpSelectionClass]);
      v43 = v47;
      v31 = v48;
      v32 = objc_opt_class();
      v33 = [(CRLWPEditorHelper *)self textSource];
      v34 = sub_100014370(v32, v33);
      LOBYTE(v42) = v31;
      v22 = [v44 initWithType:7 range:v14 styleInsertionBehavior:v45 caretAffinity:0 smartFieldRange:v43 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:{0, v42, v34}];

      if (!v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v23 = (v46[2])();
      v25 = v24;
      v26 = [(CRLWPEditorHelper *)self selection];
      if ([v26 isValid])
      {
        v27 = [(CRLWPEditorHelper *)self selection];
        v28 = [v27 range];
        v30 = v29;

        if (v28 == v23 && v30 == v25)
        {
          v22 = 0;
          goto LABEL_25;
        }
      }

      else
      {
      }

      v22 = [objc_alloc(-[CRLWPEditorHelper wpSelectionClass](self "wpSelectionClass"))];
      if (!v22)
      {
        goto LABEL_25;
      }
    }

    selectionLastModifiedWithKeyboard = self->_selectionLastModifiedWithKeyboard;
    v36 = [(CRLWPEditorHelper *)self editorController];
    v37 = [(CRLWPEditorHelper *)self editor];
    [v36 setSelection:v22 forEditor:v37 withFlags:8];

    if (selectionLastModifiedWithKeyboard)
    {
      v38 = [(CRLWPEditorHelper *)self editorController];
      v39 = [v38 selectionPath];
      v40 = [v39 selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:v9];

      v41 = [(CRLWPEditorHelper *)self interactiveCanvasController];
      [v41 scrollToSelectionPath:v40 scrollOptions:1];
    }

    goto LABEL_25;
  }

LABEL_26:
}

- (unint64_t)p_adjustedCharIndexForWordTestingFromCharIndex:(unint64_t)a3 leadingEdge:(BOOL)a4 forDirection:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
  v26 = a4;
  if (a5 < 2)
  {
    if (!a4)
    {
      v13 = [(CRLWPEditorHelper *)self textSource];
      v7 = [v13 nextCharacterIndex:v7];
    }

    if (a5 != 1)
    {
      v21 = [(CRLWPEditorHelper *)self textSource];
      v7 = [v21 charIndexRemappedFromStorage:v7];

      return v7;
    }

    v14 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:v7 inDirection:1];
    if (v14 == v7)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v14;
    }

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101364F74();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101364F88();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101365010();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v16 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_adjustedCharIndexForWordTestingFromCharIndex:leadingEdge:forDirection:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1283 isFatal:0 description:"Should not have received NSNotFound."];

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if ((a5 - 2) > 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101365110();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101365124();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013651AC();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v19 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_adjustedCharIndexForWordTestingFromCharIndex:leadingEdge:forDirection:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1295 isFatal:0 description:"illegal direction"];
  }

  else
  {
    v9 = [(CRLWPEditorHelper *)self p_isLayoutLeftToRightAtCharIndex:a3];
    v10 = 2;
    if (v9 != v6)
    {
      v10 = 3;
    }

    if (v10 != a5)
    {
      v11 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:v7 leadingEdge:&v26 inDirection:a5 skipAnchors:0];
      if (v11 == v7)
      {
        if (v26 == v6)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v7;
        }

        if (v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return v12;
        }
      }

      else
      {
        v7 = v11;
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return v7;
        }
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101365038();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101365060();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013650E8();
      }

      v22 = off_1019EDA68;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v23 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_adjustedCharIndexForWordTestingFromCharIndex:leadingEdge:forDirection:]"];
      v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:1267 isFatal:0 description:"Should not have received NSNotFound."];

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

- (_NSRange)availableSelectionRangeForCharIndex:(unint64_t)a3
{
  v4 = objc_opt_class();
  v5 = [(CRLWPEditorHelper *)self textSource];
  v6 = sub_100014370(v4, v5);

  v7 = [v6 copyWithMarkedText];
  v8 = [_TtC8Freeform12CRLTextRange textRangeForAllOf:v7];
  v9 = [v8 nsRange];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (unint64_t)charIndexMovingByWordFromCharIndex:(unint64_t)a3 leadingEdge:(BOOL *)a4 inDirection:(int64_t)a5
{
  if (a4)
  {
    v9 = *a4;
  }

  else
  {
    v9 = 1;
  }

  v32 = v9;
  if (a5 > 3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013651D4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013651E8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101365270();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v24 = [NSString stringWithUTF8String:"[CRLWPEditorHelper charIndexMovingByWordFromCharIndex:leadingEdge:inDirection:]"];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:1400 isFatal:0 description:"Unsupported direction"];

    result = 0x7FFFFFFFFFFFFFFFLL;
LABEL_35:
    if (!a4)
    {
      return result;
    }

    goto LABEL_36;
  }

  v10 = [(CRLWPEditorHelper *)self textSource];
  v11 = [_TtC8Freeform12CRLTextRange textRangeForAllOf:v10];
  v12 = [v11 nsRange];
  v14 = v13;

  v31 = a3;
  v30 = xmmword_101464828;
  v15 = [(CRLWPEditorHelper *)self p_adjustedCharIndexForWordTestingFromCharIndex:a3 leadingEdge:v32 forDirection:a5];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  v29 = xmmword_101464828;
  cf = [(CRLWPEditorHelper *)self createTokenizerForCharIndex:v15 outTokenizerRange:&v29];
  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(cf);
  v18 = [(CRLWPEditorHelper *)self p_moveFromCharIndex:&v31 leadingEdge:&v32 tokenizerRef:&cf tokenizerRange:&v29 direction:a5 currentWordRange:CurrentTokenRange.location newWordRange:CurrentTokenRange.length reasonToStop:&v30, 7];
  if (CurrentTokenRange.location == 0x7FFFFFFFFFFFFFFFLL && !CurrentTokenRange.length || (v19 = v31, v31 == a3))
  {
    if (v18 == 4 || v18 == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v18 > 4 || ((1 << v18) & 0x16) == 0)
  {
LABEL_11:
    [(CRLWPEditorHelper *)self p_moveFromCharIndex:&v31 leadingEdge:&v32 tokenizerRef:&cf tokenizerRange:&v29 direction:a5 currentWordRange:0x7FFFFFFFFFFFFFFFLL newWordRange:0 reasonToStop:&v30, 8];
LABEL_12:
    v19 = v31;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v19 >= v12)
    {
      v26 = v12 + v14;
      a3 = v19;
      if (v19 <= v26)
      {
        goto LABEL_52;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101365298();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013652C0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101365348();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v21 = [NSString stringWithUTF8String:"[CRLWPEditorHelper charIndexMovingByWordFromCharIndex:leadingEdge:inDirection:]"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:1392 isFatal:0 description:"Result beyond selection range max."];
      a3 = v26;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101365370();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101365398();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101365420();
      }

      v20 = off_1019EDA68;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v21 = [NSString stringWithUTF8String:"[CRLWPEditorHelper charIndexMovingByWordFromCharIndex:leadingEdge:inDirection:]"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:1389 isFatal:0 description:"Result beyond selection range min."];
      a3 = v12;
    }
  }

LABEL_52:
  result = a3;
  if (!a4)
  {
    return result;
  }

LABEL_36:
  *a4 = v32;
  return result;
}

- (const)p_lineFragmentForCharIndex:(unint64_t)a3 column:(id *)a4 eol:(BOOL)a5
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  *a4 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003C3C58;
  v7[3] = &unk_10185D1E0;
  v7[4] = &v8;
  v7[5] = a4;
  [(CRLWPEditorHelper *)self withLineFragmentForCharIndex:a3 eol:a5 performBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)p_withLineFragmentsForLogicalLineContainingCharIndex:(unint64_t)a3 eol:(BOOL)a4 performBlock:(id)a5
{
  v5 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003C3DA4;
  v10[3] = &unk_10185D208;
  v11 = a5;
  v12 = &v13;
  v8 = v11;
  [(CRLWPEditorHelper *)self p_withLineIndexForCharIndex:a3 eol:v5 performBlock:v10];
  LOBYTE(v5) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v5;
}

- (unint64_t)p_lastVisibleCharIndexForCharIndex:(unint64_t)a3
{
  v3 = [(CRLWPEditorHelper *)self layout];
  v10 = sub_1003035DC(v3, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLWPLayoutTarget);

  if (v10)
  {
    v11 = [v10 columns];
    v12 = [CRLWPColumn rangeOfColumns:v11];
    v14 = v12 + v13;

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101365448();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136545C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013654F8();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v16 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_lastVisibleCharIndexForCharIndex:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1472 isFatal:0 description:"invalid nil value for '%{public}s'", "layout"];
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (unint64_t)p_lineIndexForMovingCharIndex:(unint64_t)a3 column:(id *)a4 up:(BOOL)a5 atStart:(BOOL)a6 eol:(BOOL *)a7
{
  v7 = a5;
  *a4 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  v29 = 0;
  v30 = &v29;
  v31 = 0x4012000000;
  v32 = sub_1003C4680;
  v33 = nullsub_48;
  v34 = &unk_1016A8115;
  v35 = xmmword_101464828;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0x8000000000000000;
  v10 = *a7;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1003C4690;
  v22[3] = &unk_10185D270;
  v22[8] = a3;
  v22[9] = a7;
  v22[4] = self;
  v22[5] = &v29;
  v23 = a5;
  v22[6] = &v25;
  v22[7] = &v36;
  v22[10] = a4;
  v24 = a6;
  [(CRLWPEditorHelper *)self p_withLayoutTargetForCharIndex:a3 eolAffinity:v10 performBlock:v22];
  v11 = v37[3];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v30[6];
    v13 = v30[7];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL || v13)
    {
      if (v7)
      {
        v14 = [(CRLWPEditorHelper *)self textSource];
        v15 = sub_10027EB4C(v12, v14);

        if ((v26[3] & 0x300) == 0x100)
        {
          v15 = v30[6];
        }
      }

      else
      {
        v16 = [(CRLWPEditorHelper *)self textSource];
        v15 = sub_10027F35C(v13 + v12, v16);
        v17 = [(CRLWPEditorHelper *)self textSource];
        v18 = [v17 length];
        if (v18 < v15)
        {
          v15 = v18;
        }
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1003C4C08;
      v20[3] = &unk_10185D298;
      v21 = v7;
      v20[4] = &v36;
      v20[5] = v15;
      v20[6] = a4;
      [(CRLWPEditorHelper *)self p_withLayoutTargetForCharIndex:v15 eolAffinity:v7 performBlock:v20];
      v11 = v37[3];
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v36, 8);
  return v11;
}

- (void)p_withLineIndexForCharIndex:(unint64_t)a3 eol:(BOOL)a4 performBlock:(id)a5
{
  v5 = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003C4E4C;
  v9[3] = &unk_10185D2C0;
  v12 = a4;
  v10 = a5;
  v11 = a3;
  v8 = v10;
  [(CRLWPEditorHelper *)self p_withLayoutTargetForCharIndex:a3 eolAffinity:v5 performBlock:v9];
}

- (_TtC8Freeform11CRLWPLayout)layout
{
  layout = self->_layout;
  if (layout)
  {
    v3 = layout;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    v7 = [(CRLWPEditorHelper *)self textSource];
    v8 = objc_opt_class();
    v14 = sub_1003038E0(v7, v8, 1, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLCanvasElementInfo);
    v15 = [v6 layoutForInfo:v14];
    v3 = sub_100014370(v5, v15);
  }

  return v3;
}

- (void)p_withLayoutTargetForCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4 performBlock:(id)a5
{
  v14 = a5;
  v6 = [(CRLWPEditorHelper *)self layout];
  v13 = sub_1003035DC(v6, 1, v7, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLWPLayoutTarget);

  v14[2](v14, v13);
}

- (void)withLineFragmentForCharIndex:(unint64_t)a3 eol:(BOOL)a4 performBlock:(id)a5
{
  v5 = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003C5278;
  v9[3] = &unk_10185D328;
  v10 = a5;
  v8 = v10;
  [(CRLWPEditorHelper *)self p_withLineIndexForCharIndex:a3 eol:v5 performBlock:v9];
}

- (unint64_t)caretCharIndexForLayoutOrderCharIndex:(unint64_t)a3 inDirection:(int64_t)a4
{
  v4 = a3;
  if (a4 >= 2)
  {
    if ((a4 - 2) > 1)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013655E4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013655F8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101365680();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v17 = [NSString stringWithUTF8String:"[CRLWPEditorHelper caretCharIndexForLayoutOrderCharIndex:inDirection:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:1707 isFatal:0 description:"Unsupported vertical character direction"];
    }

    else
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }

      v7 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:a3];
      v9 = v8;
      v10 = [(CRLWPEditorHelper *)self interactiveCanvasController];
      [v10 layoutIfNeeded];

      v19[0] = 0;
      v11 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:v4 column:v19 eol:0];
      if (v11)
      {
        v12 = [(CRLWPEditorHelper *)self editor];
        v13 = [v12 storage];
        v14 = sub_10021401C(v11, v4, v13);

        if (v14 <= v7 + v9 && v14 >= v7)
        {
          return v14;
        }
      }
    }
  }

  return v4;
}

- (unint64_t)p_layoutOrderCharIndexForCaretCharIndex:(unint64_t)a3 inDirection:(int64_t)a4
{
  v4 = a3;
  if (a4 >= 2)
  {
    if ((a4 - 2) > 1)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013656A8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013656BC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101365744();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v17 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_layoutOrderCharIndexForCaretCharIndex:inDirection:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:1748 isFatal:0 description:"Unsupported vertical character direction"];
    }

    else
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }

      v7 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:a3];
      v9 = v8;
      v10 = [(CRLWPEditorHelper *)self interactiveCanvasController];
      [v10 layoutIfNeeded];

      v19[0] = 0;
      v11 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:v4 column:v19 eol:0];
      if (v11)
      {
        v12 = [(CRLWPEditorHelper *)self editor];
        v13 = [v12 storage];
        v14 = sub_100213B1C(v11, v4, v13);

        if (v14 <= v7 + v9 && v14 >= v7)
        {
          return v14;
        }
      }
    }
  }

  return v4;
}

- (unint64_t)p_charIndexByMovingPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5 preferPosition:(double *)a6 outEolAffinity:(unint64_t *)a7
{
  v12 = a3;
  v13 = [v12 location];
  v25 = [v12 eolAffinity];
  v24 = 1;
  if (a4)
  {
    v14 = -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", [v12 location], &v25, a4, a5, a6, &v24);
  }

  else
  {
    v14 = -[CRLWPEditorHelper caretCharIndexForLayoutOrderCharIndex:inDirection:](self, "caretCharIndexForLayoutOrderCharIndex:inDirection:", -[CRLWPEditorHelper charIndexMovingByCharacterFromCharIndex:inDirection:](self, "charIndexMovingByCharacterFromCharIndex:inDirection:", -[CRLWPEditorHelper p_layoutOrderCharIndexForCaretCharIndex:inDirection:](self, "p_layoutOrderCharIndexForCaretCharIndex:inDirection:", [v12 location], a5), a5), a5);
  }

  v15 = v14;
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v25;
    if (a7)
    {
      *a7 = v25;
    }

    v17 = [CRLWPSelection alloc];
    v18 = v24;
    v19 = [(CRLWPEditorHelper *)self editor];
    v20 = [v19 storage];
    LOBYTE(v23) = v18;
    v21 = [(CRLWPSelection *)v17 initWithType:7 range:v15 styleInsertionBehavior:0 caretAffinity:0 smartFieldRange:v16 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:0, v23, v20];

    v13 = [(CRLWPSelection *)v21 leadingCharIndex];
  }

  return v13;
}

- (unint64_t)charIndexForBeginningOfLineFromCharIndex:(unint64_t)a3
{
  v6 = 0;
  v5 = 0;
  v4 = 1;
  return [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:a3 withEolAffinity:&v6 toBoundary:4 inDirection:1 preferPosition:&v5 isLeadingEdge:&v4];
}

- (unint64_t)charIndexForEndOfLineFromCharIndex:(unint64_t)a3
{
  v6 = 0;
  v5 = 0;
  v4 = 0;
  return [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:a3 withEolAffinity:&v6 toBoundary:4 inDirection:0 preferPosition:&v5 isLeadingEdge:&v4];
}

- (unint64_t)p_charIndexByMovingCharIndex:(unint64_t)a3 withEolAffinity:(BOOL *)a4 toBoundary:(int64_t)a5 inDirection:(int64_t)a6 preferPosition:(double *)a7 isLeadingEdge:(BOOL *)a8
{
  v112 = 0;
  v14 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:?];
  v16 = v15;
  v17 = [(CRLWPEditorHelper *)self textSource];
  v111 = sub_1003035DC(v17, 1, v18, v19, v20, v21, v22, v23, &OBJC_PROTOCOL___CRLWPTextSource);
  v24 = &v14[v16];

  if (&v14[v16] < a3)
  {
    goto LABEL_2;
  }

  if (a5 <= 2)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        if (a5 == 2)
        {
          if (a6 >= 2)
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10136576C();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_101365780();
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101365808();
            }

            v28 = off_1019EDA68;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              +[CRLAssertionHandler packedBacktraceString];
              objc_claimAutoreleasedReturnValue();
              sub_10130E89C();
            }

            v29 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:]"];
            v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
            [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:2066 isFatal:0 description:"sentence movement in layout direction is not supported"];
          }

          if (a8)
          {
            *a8 = 1;
          }

          v31 = [v111 textRangeForParagraphAtCharIndex:a3];
          v32 = v31;
          v34 = v33;
          location = 0x7FFFFFFFFFFFFFFFLL;
          length = 0;
          if (a6 == 1 && v31)
          {
            v37 = [v111 textRangeForParagraphAtCharIndex:v31 - 1];
          }

          else
          {
            if (a6 || (-[CRLWPEditorHelper textSource](self, "textSource"), v57 = objc_claimAutoreleasedReturnValue(), v58 = v32 + v34 < [v57 length], v57, !v58))
            {
LABEL_81:
              if (v32 != 0x7FFFFFFFFFFFFFFFLL || v34)
              {
                if (location != 0x7FFFFFFFFFFFFFFFLL || length)
                {
                  v126.location = v32;
                  v126.length = v34;
                  v127.location = location;
                  v127.length = length;
                  v63 = NSUnionRange(v126, v127);
                  location = v63.location;
                  length = v63.length;
                }

                else
                {
                  location = v32;
                  length = v34;
                }
              }

              v64 = [v111 string];
              v128.location = location;
              v128.length = length;
              v65 = CFStringTokenizerCreate(kCFAllocatorDefault, v64, v128, 1uLL, 0);

              v26 = 0x7FFFFFFFFFFFFFFFLL;
              if (CFStringTokenizerGoToTokenAtIndex(v65, a3))
              {
                CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v65);
                v67 = CurrentTokenRange.location;
                v68 = CurrentTokenRange.length;
                if ((a6 | 2) == 2 && CurrentTokenRange.location + CurrentTokenRange.length == a3)
                {
                  Token = CFStringTokenizerAdvanceToNextToken(v65);
                }

                else
                {
                  Token = 1;
                }
              }

              else
              {
                if ((a6 | 2) == 2)
                {
                  Token = CFStringTokenizerAdvanceToNextToken(v65);
                }

                else
                {
                  Token = 0;
                }

                v68 = 0;
                v67 = -1;
              }

              if ((a6 | 2) == 3)
              {
                if (Token)
                {
                  v74 = CFStringTokenizerGetCurrentTokenRange(v65);
                  v73 = v74.length;
                  v67 = v74.location;
                  if (a3 > LODWORD(v74.location))
                  {
                    goto LABEL_132;
                  }
                }

                v75 = a3;
                do
                {
                  v76 = v75--;
                }

                while (v76 > v14 && !CFStringTokenizerGoToTokenAtIndex(v65, v75));
                if (v75 <= v14)
                {
                  v25 = v14;
LABEL_139:
                  CFRelease(v65);
                  goto LABEL_4;
                }
              }

              else if (!Token)
              {
                if (v24 == a3)
                {
                  v26 = v24;
                }

                goto LABEL_133;
              }

              v77 = CFStringTokenizerGetCurrentTokenRange(v65);
              v73 = v77.length;
              v67 = v77.location;
LABEL_132:
              v68 = v73;
LABEL_133:
              if (v67 != -1)
              {
                v26 = v67;
              }

              v78 = 0;
              if (v67 != -1)
              {
                v78 = v68;
              }

              v112 = v78;
              v25 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_139;
            }

            v37 = [v111 textRangeForParagraphAtCharIndex:v34 + v32 + 1];
          }

          location = v37;
          length = v38;
          goto LABEL_81;
        }

LABEL_61:
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101365988();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10136599C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101365A24();
        }

        v52 = off_1019EDA68;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v53 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:]"];
        v54 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
        [CRLAssertionHandler handleFailureInFunction:v53 file:v54 lineNumber:2136 isFatal:0 description:"Unsupported granularity"];

        goto LABEL_2;
      }

      v45 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:a3 leadingEdge:a8 inDirection:a6];
    }

    else
    {
      v45 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:a3 leadingEdge:a8 inDirection:a6 skipAnchors:1];
    }

    v25 = v45;
    goto LABEL_3;
  }

  if (a5 == 3)
  {
    if (a8)
    {
      *a8 = 1;
    }

    v46 = [v111 textRangeForParagraphAtCharIndex:a3];
    v48 = v47;
    if (v47)
    {
      v49 = [(CRLWPEditorHelper *)self textSource];
      v50 = sub_10027E2F0([v49 characterAtIndex:&v46[v48 - 1]]);

      v51 = v48 - (v50 & 1);
    }

    else
    {
      v51 = 0;
    }

    if (a6 > 1)
    {
      if (a6 != 2)
      {
        if (a6 != 3)
        {
          goto LABEL_161;
        }

LABEL_96:
        if (v46 == a3 && v46 > v14)
        {
          v46 = [v111 textRangeForParagraphAtCharIndex:a3 - 1];
          v51 = v60 - 1;
        }

        goto LABEL_161;
      }
    }

    else if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_161;
      }

      goto LABEL_96;
    }

    if (&v46[v51] == a3 && &v46[v51] < v24)
    {
      v61 = [v111 textRangeForParagraphAtCharIndex:a3 + 1];
      v46 = v61;
      if (v62)
      {
        v51 = v62 - sub_10027E2F0([v111 characterAtIndex:&v61[v62 - 1]]);
      }

      else
      {
        v51 = 0;
      }
    }

LABEL_161:
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    if (v46 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a6 <= 1)
      {
        if (a6)
        {
          if (a6 != 1)
          {
            goto LABEL_170;
          }

          goto LABEL_168;
        }

LABEL_169:
        v25 = &v46[v51];
        goto LABEL_170;
      }

      if (a6 == 2)
      {
        goto LABEL_169;
      }

      if (a6 == 3)
      {
LABEL_168:
        v25 = v46;
      }
    }

LABEL_170:
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    v112 = 0;
    goto LABEL_4;
  }

  if (a5 != 4)
  {
    if (a5 != 5)
    {
      goto LABEL_61;
    }

    if (a8)
    {
      *a8 = 1;
    }

    v39 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:a3];
    v112 = v40;
    v26 = v39;
LABEL_38:
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_4;
  }

  if (a8)
  {
    *a8 = 1;
  }

  v55 = [(CRLWPEditorHelper *)self interactiveCanvasController];
  [v55 layoutIfNeeded];

  if (a6 < 4)
  {
    v122 = 0;
    v123 = &v122;
    v124 = 0x2020000000;
    v125 = 0x7FFFFFFFFFFFFFFFLL;
    v56 = *a4;
    v113[0] = _NSConcreteStackBlock;
    v113[1] = 3221225472;
    v113[2] = sub_1003C6C54;
    v113[3] = &unk_10185D410;
    v116 = a6;
    v117 = a8;
    v115 = &v122;
    v113[4] = self;
    v114 = v111;
    v118 = a4;
    v119 = v14;
    v120 = a3;
    v25 = &v14[v16];
    if ([(CRLWPEditorHelper *)self p_withLineFragmentsForLogicalLineContainingCharIndex:a3 eol:v56 performBlock:v113])
    {
      v25 = v123[3];
    }

    _Block_object_dispose(&v122, 8);
    goto LABEL_3;
  }

  if ((a6 - 4) >= 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013658C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013658D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101365960();
    }

    v70 = off_1019EDA68;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v71 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:]"];
    v72 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v71 file:v72 lineNumber:2008 isFatal:0 description:"Unsupported horizontal line direction"];

    goto LABEL_2;
  }

  v26 = 0x7FFFFFFFFFFFFFFFLL;
  if (a7)
  {
    v59 = *a7;
  }

  else
  {
    v59 = NAN;
  }

  v122 = 0;
  v79 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:a3 column:&v122 eol:*a4];
  if (!v79)
  {
    v25 = v24;
    if (a6 == 4)
    {
      v25 = [(CRLWPEditorHelper *)self p_lastVisibleCharIndexForCharIndex:a3];
      *a4 = 1;
    }

    goto LABEL_4;
  }

  v121 = 0;
  v80 = [(CRLWPEditorHelper *)self p_lineIndexForMovingCharIndex:a3 column:&v121 up:a6 == 4 atStart:v59 == 0.0 eol:a4];
  if (v80 > 0x7FFFFFFFFFFFFFFELL)
  {
LABEL_2:
    v25 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_3:
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_4;
  }

  [v121 frameBounds];
  v82 = v59 + v81;
  v83 = [v121 nearestLineFragmentWithSameVerticalPositionAs:v80 xPos:v82];
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v84 = v83;
  if (!v83)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10136589C();
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v95 = off_1019EDA60;
    if (!os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_38;
    }

LABEL_174:
    sub_101365858(v95);
    goto LABEL_2;
  }

  if (v83 == v79 || v121 == v122 && v79[6] == v83[6])
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101365830();
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v95 = off_1019EDA60;
    if (!os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_38;
    }

    goto LABEL_174;
  }

  v85 = *(v83 + 3);
  if (*a4)
  {
    v86 = v85 < 0;
    v87 = &xmmword_101464828;
    if (!v86)
    {
      v87 = v83;
    }

    v88 = *v87;
    v89 = *(v87 + 1);
    if (v89)
    {
      v90 = [v111 characterAtIndex:v89 + v88 - 1];
      v91 = v90;
      v92 = sub_10027E2F0(v90);
      if (v91 == 8232)
      {
        v93 = 1;
      }

      else
      {
        v93 = v92;
      }

      v94 = v89 - v93;
    }

    else
    {
      v94 = 0;
    }

    v25 = v94 + v88;
    goto LABEL_3;
  }

  if (a6 == 4)
  {
    v96 = &xmmword_101464828;
    if (v85 >= 0)
    {
      v96 = v83;
    }

    v25 = *v96 + *(v96 + 1);
  }

  else
  {
    v97 = &xmmword_101464828;
    if (v85 >= 0)
    {
      v97 = v83;
    }

    v25 = *v97;
  }

  if (v85)
  {
    if ((v85 & 0x200) != 0)
    {
      v86 = v85 < 0;
      v109 = &xmmword_101464828;
      if (!v86)
      {
        v109 = v83;
      }

      v25 = *v109;
    }

    else if ((v85 & 0x100) != 0)
    {
      v105 = &xmmword_101464828;
      if (v85 >= 0)
      {
        v105 = v83;
      }

      v108 = v105;
      v106 = *v105;
      v107 = *(v108 + 1);
      v25 = v106 + v107;
      if ((v85 & 0x800) != 0)
      {
        v25 = sub_10027EB4C(v106 + v107, v111);
      }
    }
  }

  else
  {
    v98 = sub_100213314(v83, 1, 0, 0, 0, v82);
    v99 = v98;
    v100 = &xmmword_101464828;
    if (*(v84 + 3) >= 0)
    {
      v100 = v84;
    }

    v101 = *(v100 + 1);
    if (v101)
    {
      v25 = v98;
      if (v98 == *v100 + v101)
      {
        if (v98 != v24)
        {
          goto LABEL_195;
        }

        v102 = [v111 characterAtIndex:v24 - 1];
        v103 = v102;
        v104 = sub_10027E2F0(v102) ^ 1;
        if (v103 == 8232)
        {
          LOBYTE(v104) = 0;
        }

        v25 = v24;
        v26 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v104 & 1) == 0)
        {
LABEL_195:
          v25 = v99 - 1;
        }
      }
    }

    else
    {
      v25 = v98;
    }
  }

LABEL_4:
  if (v26 != 0x7FFFFFFFFFFFFFFFLL || v112 != 0)
  {
    if (a6 > 1)
    {
      if (a6 != 2)
      {
        if (a6 != 3)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }
    }

    else if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_47;
      }

LABEL_41:
      if (v112 + v26 >= a3)
      {
        v25 = v26;
      }

      else
      {
        v25 = v112 + v26;
      }

      goto LABEL_47;
    }

    v41 = v112;
    if (v26 > a3)
    {
      v41 = 0;
    }

    v25 = v41 + v26;
  }

LABEL_47:
  if (v24 >= v25)
  {
    v42 = v25;
  }

  else
  {
    v42 = v24;
  }

  if (v42 <= v14)
  {
    v42 = v14;
  }

  if (v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v43 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v43 = v42;
  }

  return v43;
}

- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)a3 leadingEdge:(BOOL *)a4 inDirection:(int64_t)a5 skipAnchors:(BOOL)a6 useLeadingEdgeOfNextLine:(BOOL)a7
{
  v70 = a7;
  v72 = [(CRLWPEditorHelper *)self textSource];
  v11 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:a3];
  v13 = v12;
  [(CRLWPEditorHelper *)self paragraphEnumeratorAtCharIndex:a3];
  v14 = [(CRLWPEditorHelper *)self textSource];
  v15 = v14;
  v16 = &v11[v13];
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v71 = 1;
    }

    else
    {
      if (a5 != 3)
      {
LABEL_10:
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101365B24();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101365B4C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101365BD4();
        }

        v22 = off_1019EDA68;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v23 = [NSString stringWithUTF8String:"[CRLWPEditorHelper charIndexMovingByCharacterFromCharIndex:leadingEdge:inDirection:skipAnchors:useLeadingEdgeOfNextLine:]"];
        v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
        [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:2328 isFatal:0 description:"Unsupported vertical character direction"];

        a3 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_120;
      }

      v71 = 0;
    }

    v34 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [v34 layoutIfNeeded];

    v74[0] = 0;
    v35 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:a3 column:v74 eol:0];
    if (v35)
    {
      if (v71)
      {
        v36 = 2;
      }

      else
      {
        v36 = 3;
      }

      v37 = objc_opt_class();
      v38 = sub_100014370(v37, v72);
      v39 = sub_1002147B0(v35, a3, v36, v38);

LABEL_53:
      if (a4)
      {
        v47 = v35 == 0;
      }

      else
      {
        v47 = 1;
      }

      v48 = !v47;
      if (v39 == 0x7FFFFFFFFFFFFFFFLL || v39 < v11 || v39 > v16)
      {
        if (!v48)
        {
          goto LABEL_87;
        }

        v51 = *(v35 + 3) < 0 ? &xmmword_101464828 : v35;
        if (*v51 + *(v51 + 1) <= a3)
        {
          goto LABEL_87;
        }

        v52 = a3;
        v69 = *a4;
        if (v71 == (v69 == (sub_1002117DC(v35, a3) == 1)))
        {
          goto LABEL_87;
        }

        v53 = [(CRLWPEditorHelper *)self textSource];
        v68 = a3 < [v53 length];

        if (!v68)
        {
          goto LABEL_87;
        }

        v54 = [v72 characterAtIndex:a3];
        v55 = v54;
        v56 = sub_10027E2F0(v54);
        v57 = v55 == 8232 ? 1 : v56;
        if (v57)
        {
          goto LABEL_87;
        }

        *a4 = !v69;
LABEL_86:
        if (v52 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_119:
          a3 = v52;
          goto LABEL_120;
        }

LABEL_87:
        v59 = v71 ^ [v72 isWritingDirectionRightToLeftForParagraphAtCharIndex:a3];
        if (v35)
        {
          v60 = &xmmword_101464828;
          if (*(v35 + 3) >= 0)
          {
            v60 = v35;
          }

          v61 = *v60;
          v62 = *(v60 + 1);
          if (v59)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v62 = 0;
          v61 = a3;
          if (v59)
          {
LABEL_91:
            if (v62 + v61 < v16 || v35 && (*(v35 + 25) & 0x1000008) != 0)
            {
              if (v62)
              {
                v39 = (v62 + v61);
              }

              else
              {
                v39 = (v61 + 1);
              }
            }

            goto LABEL_102;
          }
        }

        if (v61 > v11)
        {
          v39 = [v72 previousCharacterIndex:?];
          if (a4)
          {
            *a4 = 1;
          }
        }

LABEL_102:
        if (v39 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_103:
          v52 = [v15 charIndexRemappedFromStorage:a3];
          goto LABEL_119;
        }

        v63 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:v39 column:v74 eol:0];
        v64 = v63;
        if (!v63)
        {
LABEL_116:
          if (v39 != 0x7FFFFFFFFFFFFFFFLL && v39 >= v11)
          {
            v52 = v39;
            if (v39 <= v16)
            {
              goto LABEL_119;
            }
          }

          goto LABEL_103;
        }

        if (v70)
        {
          v65 = v71 ^ 1;
          if (!v35)
          {
            v65 = 1;
          }

          if ((v65 & 1) == 0 && ((v63[25] ^ *(v35 + 25)) & 0x10) == 0)
          {
            goto LABEL_110;
          }
        }

        else if (v71)
        {
LABEL_110:
          v66 = sub_100211708(v63);
LABEL_113:
          v39 = v66;
          if (a4 && (*(v64 + 3) & 0x4800) == 0x4000)
          {
            *a4 = 1;
          }

          goto LABEL_116;
        }

        v66 = sub_10021173C(v63);
        goto LABEL_113;
      }

      if (v48)
      {
        v49 = *a4;
        v50 = sub_1002117DC(v35, v39);
        if (v50 == sub_1002117DC(v35, a3))
        {
          if (!*a4)
          {
            goto LABEL_79;
          }
        }

        else
        {
          *a4 = !v49;
          if (v49)
          {
LABEL_79:
            if (*(v35 + 3) < 0)
            {
              v58 = &xmmword_101464828;
            }

            else
            {
              v58 = v35;
            }

            if (v39 == (*v58 + *(v58 + 1)))
            {
              *a4 = 1;
              goto LABEL_97;
            }

            if (!sub_10027E2F0([v15 characterAtIndex:{objc_msgSend(v15, "charIndexMappedFromStorage:", v39)}]))
            {
              goto LABEL_97;
            }

            *a4 = 1;
            v52 = sub_10027F35C(v39, v15);
            goto LABEL_86;
          }
        }
      }

LABEL_97:
      v52 = v39;
      goto LABEL_119;
    }

    if (v71 == [v15 isWritingDirectionRightToLeftForParagraphAtCharIndex:a3])
    {
      if (!a3)
      {
        v39 = 0;
        goto LABEL_53;
      }

      v40 = sub_10027EB4C(a3, v15);
    }

    else
    {
      v39 = a3;
      if ([v15 length] == a3)
      {
        goto LABEL_53;
      }

      v40 = sub_10027F35C(a3, v15);
    }

    v39 = v40;
    goto LABEL_53;
  }

  if (a5)
  {
    if (a5 == 1)
    {
      v17 = [v14 charIndexMappedFromStorage:a3];
      if (v17 > [v15 charIndexMappedFromStorage:v11])
      {
        v18 = [v15 charIndexMappedToStorage:v17 - 1];
        v19 = [v72 string];
        if (v18 >= [v19 length])
        {
          v20 = [v72 string];
          v21 = [v20 length];
        }

        else
        {
          v20 = [v72 string];
          v21 = [v20 rangeOfComposedCharacterSequenceAtIndex:v18];
        }

        a3 = v21;
      }

      v41 = [v15 charIndexMappedToStorage:v17];
      if (v41 > v11)
      {
        v42 = [v15 charIndexRemappedFromStorage:v41 - 1];
        v43 = [v72 string];
        if (v42 >= [v43 length])
        {
          v44 = [v72 string];
          v45 = [v44 length];
        }

        else
        {
          v44 = [v72 string];
          v45 = [v44 rangeOfComposedCharacterSequenceAtIndex:v42];
        }

        v46 = v45;

        if (v46 < a3)
        {
          a3 = v46;
        }
      }

      goto LABEL_120;
    }

    goto LABEL_10;
  }

  v25 = [v14 charIndexMappedFromStorage:a3];
  if (v25 >= [v15 charIndexMappedFromStorage:v16])
  {
    a3 = [v15 charIndexRemappedFromStorage:v16];
  }

  else
  {
    v26 = [v15 charIndexMappedToStorage:v25];
    v27 = [v72 string];
    v28 = [v27 rangeOfComposedCharacterSequenceAtIndex:v26];
    v30 = v29;

    a3 = &v28[v30];
    if (&v28[v30] > v16)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101365A4C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101365A74();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101365AFC();
      }

      v31 = off_1019EDA68;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v32 = [NSString stringWithUTF8String:"[CRLWPEditorHelper charIndexMovingByCharacterFromCharIndex:leadingEdge:inDirection:skipAnchors:useLeadingEdgeOfNextLine:]"];
      v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:2219 isFatal:0 description:"composed character extends past storage boundary"];
    }
  }

LABEL_120:

  sub_10024068C(&v73);
  return a3;
}

- (void)moveForward:(id)a3
{
  v7 = [(CRLWPEditorHelper *)self selection];
  if ([v7 isValid])
  {
    if ((v4 = [v7 end], objc_msgSend(v7, "isInsertionPoint")) && (v5 = -[CRLWPEditorHelper charIndexMovingByCharacterFromCharIndex:inDirection:](self, "charIndexMovingByCharacterFromCharIndex:inDirection:", v4, 0), v5 != v4) || (v6 = objc_msgSend(v7, "isInsertionPoint"), v5 = v4, (v6 & 1) == 0))
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v5 endOfLine:0, 0];
    }
  }
}

- (unint64_t)p_rightEdgeForSelection:(id)a3 withLeadingEdge:(BOOL *)a4
{
  v6 = a3;
  v27 = 0;
  v7 = -[CRLWPEditorHelper p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [v6 start], &v27, objc_msgSend(v6, "caretAffinity") == 1);
  if (!v7)
  {
LABEL_15:
    v8 = [v6 insertionChar];
    goto LABEL_48;
  }

  if ([v6 isRange])
  {
    if ([v6 isVisual])
    {
      v8 = [v6 range];
      [v6 range];
      v10 = v9;
      if (*(v7 + 3) < 0)
      {
        v11 = &xmmword_101464828;
      }

      else
      {
        v11 = v7;
      }

      v13 = *v11;
      v12 = *(v11 + 1);
      v14 = [v6 range];
      v16 = v8 + v10 - 1;
      if (v13 <= v14 && v13 + v12 >= v14 + v15)
      {
        if ((*(v7 + 3) & 0x1000) == 0)
        {
          v8 = v16;
        }
      }

      else if ((*(v7 + 25) & 0x10) == 0)
      {
        v18 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:v16 column:&v27 eol:0];
        if (v18)
        {
          if ((v18[25] & 0x10) != 0)
          {
            v19 = sub_1002117DC(v18, v16) != 1;
          }

          else
          {
            v19 = sub_1002117DC(v18, v16) == 1;
          }

          v8 = v16;
          goto LABEL_47;
        }

        goto LABEL_15;
      }

      v25 = sub_1002117DC(v7, v8) == 1;
      goto LABEL_44;
    }

    if (![v6 isValid])
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_48;
    }

    v8 = [v6 end];
    v19 = 1;
LABEL_47:
    *a4 = v19;
    goto LABEL_48;
  }

  v8 = [v6 insertionChar];
  if ([v6 type] != 7)
  {
    v20 = *(v7 + 3) < 0 ? &xmmword_101464828 : v7;
    v21 = *(v20 + 1);
    if (v8 == *v20 + v21 && v21 && *a4 && v8)
    {
      goto LABEL_34;
    }
  }

  if ([v6 type] == 7 && v8 < *v7 && !*a4)
  {
    if ((*(v7 + 25) & 0x10) != 0)
    {
      v22 = sub_10021173C(v7);
    }

    else
    {
      v22 = sub_100211708(v7);
    }

    v8 = v22;
    v25 = sub_1002117DC(v7, v22) == ((*(v7 + 3) >> 12) & 1);
LABEL_44:
    v19 = v25;
    goto LABEL_47;
  }

  v23 = *(v7 + 3) < 0 ? &xmmword_101464828 : v7;
  if (v8 && v8 == *v23 + *(v23 + 1))
  {
LABEL_34:
    v24 = [(CRLWPEditorHelper *)self textSource];
    v8 = [v24 previousCharacterIndex:v8];

    v19 = 0;
    goto LABEL_47;
  }

LABEL_48:

  return v8;
}

- (unint64_t)p_leftEdgeForSelection:(id)a3 withLeadingEdge:(BOOL *)a4
{
  v6 = a3;
  v7 = [v6 caretAffinity];
  v38 = 0;
  v8 = -[CRLWPEditorHelper p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [v6 start], &v38, v7 == 1);
  if (!v8)
  {
    goto LABEL_28;
  }

  if ([v6 isVisual] && objc_msgSend(v6, "isRange"))
  {
    v9 = [v6 range];
    [v6 range];
    v11 = v10;
    if (*(v8 + 3) < 0)
    {
      v12 = &xmmword_101464828;
    }

    else
    {
      v12 = v8;
    }

    v14 = *v12;
    v13 = *(v12 + 1);
    v15 = [v6 range];
    v17 = &v9[v11 - 1];
    if (v14 <= v15 && v14 + v13 >= v15 + v16)
    {
      if ((*(v8 + 25) & 0x10) == 0)
      {
        v17 = v9;
      }

      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101365BFC();
        }

        v29 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v36 = *(v8 + 3);
          *buf = 67110402;
          v27 = (v36 & 0x1000) == 0;
          v37 = @"head";
          if (v27)
          {
            v37 = @"tail";
          }

          v40 = v28;
          v41 = 2082;
          v42 = "[CRLWPEditorHelper p_leftEdgeForSelection:withLeadingEdge:]";
          v43 = 2082;
          v44 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm";
          v45 = 1024;
          v46 = 2441;
          v47 = 2114;
          v48 = v37;
          v49 = 2112;
          v50 = v6;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to find %{public}@ char index for %@", buf, 0x36u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101365C24();
        }

        v30 = off_1019EDA68;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v31 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_leftEdgeForSelection:withLeadingEdge:]"];
        v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
        v33 = @"head";
        if ((*(v8 + 3) & 0x1000) == 0)
        {
          v33 = @"tail";
        }

        [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:2441 isFatal:0 description:"Failed to find %{public}@ char index for %@", v33, v6];
      }

      v34 = sub_1002117DC(v8, v17);
LABEL_61:
      v20 = v34 != 1;
      goto LABEL_62;
    }

    if ((*(v8 + 25) & 0x10) == 0)
    {
      v19 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:v9 column:&v38 eol:v7 == 1];
      if (v19)
      {
        if ((v19[25] & 0x10) != 0)
        {
          v20 = sub_1002117DC(v19, v9) == 1;
        }

        else
        {
          v20 = sub_1002117DC(v19, v9) != 1;
        }

        v17 = v9;
        goto LABEL_62;
      }

      goto LABEL_28;
    }

    v26 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:v17 column:&v38 eol:v7 == 1];
    if (v26)
    {
      if ((v26[25] & 0x10) == 0)
      {
        v27 = sub_1002117DC(v26, v17) == 1;
LABEL_40:
        v20 = v27;
        goto LABEL_62;
      }

      v34 = sub_1002117DC(v26, v17);
      goto LABEL_61;
    }

LABEL_28:
    v17 = [v6 insertionChar];
    goto LABEL_63;
  }

  v17 = [v6 insertionChar];
  if ([v6 type] != 7)
  {
    v21 = *(v8 + 3) < 0 ? &xmmword_101464828 : v8;
    v22 = *(v21 + 1);
    if (v17 == (*v21 + v22) && v22 && *a4 && v17)
    {
      goto LABEL_34;
    }
  }

  if ([v6 type] == 7 && v17 < *v8 && !*a4)
  {
    if ((*(v8 + 25) & 0x10) != 0)
    {
      v23 = sub_10021173C(v8);
    }

    else
    {
      v23 = sub_100211708(v8);
    }

    v17 = v23;
    v27 = sub_1002117DC(v8, v23) == ((*(v8 + 3) >> 12) & 1);
    goto LABEL_40;
  }

  v24 = *(v8 + 3) < 0 ? &xmmword_101464828 : v8;
  if (v17 && v17 == (*v24 + *(v24 + 1)))
  {
LABEL_34:
    v25 = [(CRLWPEditorHelper *)self textSource];
    v17 = [v25 previousCharacterIndex:v17];

    v20 = 0;
LABEL_62:
    *a4 = v20;
  }

LABEL_63:

  return v17;
}

- (void)p_moveInLineLayoutDirectionLeft:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLWPEditorHelper *)self selection];
  if ([v5 isValid])
  {
    [(CRLWPEditorHelper *)self setAnchorSelection:0];
    v22 = [v5 leadingEdge];
    if (v3)
    {
      v6 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v5 withLeadingEdge:&v22];
    }

    else
    {
      v6 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:v5 withLeadingEdge:&v22];
    }

    v7 = v6;
    if ((v22 & 1) == 0 && v6 != 0x7FFFFFFFFFFFFFFFLL && v6 > [v5 start])
    {
      v8 = [(CRLWPEditorHelper *)self textSource];
      v9 = [v8 characterAtIndex:v7];
      v10 = v9;
      v11 = sub_10027E2F0(v9);
      v12 = v10 == 8232 ? 1 : v11;

      if (v12)
      {
        [(CRLWPEditorHelper *)self paragraphEnumeratorAtCharIndex:v7];
        if (sub_100240844(v21))
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101365C4C();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101365C74();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101365CFC();
          }

          v13 = off_1019EDA68;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_10130E89C();
          }

          v14 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_moveInLineLayoutDirectionLeft:]"];
          v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
          [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:2505 isFatal:0 description:"Should not be on last paragraph yet."];
        }

        v16 = [(CRLWPEditorHelper *)self textSource];
        v7 = sub_10027F35C(v7, v16);

        v22 = 1;
        sub_10024068C(v21);
      }
    }

    v17 = v22;
    v18 = v7;
    if ([v5 isInsertionPoint])
    {
      if (v3)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v18 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:v7 leadingEdge:&v22 inDirection:v19 skipAnchors:1];
    }

    v20 = v22;
    if (v18 != v7 || v22 != v17)
    {
      goto LABEL_32;
    }

    if (([v5 isInsertionPoint] & 1) == 0)
    {
      v20 = v22;
LABEL_32:
      [(CRLWPEditorHelper *)self setSelectionFromKeyboardWithRange:v18 leadingEdge:0 endOfLine:v20 & 1, 0];
    }
  }
}

- (void)moveBackward:(id)a3
{
  v7 = [(CRLWPEditorHelper *)self selection];
  if ([v7 isValid])
  {
    if ((v4 = [v7 start], objc_msgSend(v7, "isInsertionPoint")) && (v5 = -[CRLWPEditorHelper charIndexMovingByCharacterFromCharIndex:inDirection:](self, "charIndexMovingByCharacterFromCharIndex:inDirection:", v4, 1), v5 != v4) || (v6 = objc_msgSend(v7, "isInsertionPoint"), v5 = v4, (v6 & 1) == 0))
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v5 endOfLine:0, 0];
    }
  }
}

- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)a3 backward:(BOOL)a4
{
  v4 = a4;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0;
  v9 = [(CRLWPEditorHelper *)self textSource];
  v10 = [v9 length];

  if (v10 >= a3)
  {
    v11 = [(CRLWPEditorHelper *)self textSource];
    v7 = [v11 wordAtCharIndex:a3 includePreviousWord:v4];
    v8 = v12;

    if (v7 == a3 && v4)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      v8 = 0;
    }
  }

  v13 = v7;
  v14 = v8;
  result.length = v14;
  result.location = v13;
  return result;
}

- (id)logicalToVisualSelection:(id)a3
{
  v4 = a3;
  if ([v4 type] == 7 || objc_msgSend(v4, "type") == 1 || objc_msgSend(v4, "type") == 2)
  {
    v5 = v4;
    goto LABEL_5;
  }

  [v4 range];
  if (!v11)
  {
    v5 = [v4 copyWithNewType:7];
LABEL_5:
    v6 = v5;
    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  v12 = [(CRLWPEditorHelper *)self interactiveCanvasController];
  [v12 layoutIfNeeded];

  v46 = [v4 start];
  v76 = 0;
  v77 = &v76;
  v78 = 0x4012000000;
  v79 = sub_1003C4680;
  v80 = nullsub_48;
  v81 = &unk_1016A8115;
  v82 = xmmword_101464828;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1003C951C;
  v68[3] = &unk_10185D5F8;
  v68[5] = &v72;
  v68[6] = &v69;
  v68[4] = &v76;
  -[CRLWPEditorHelper withLineFragmentForCharIndex:eol:performBlock:](self, "withLineFragmentForCharIndex:eol:performBlock:", v46, [v4 caretAffinity] == 1, v68);
  if (v77[6] == 0x7FFFFFFFFFFFFFFFLL && !v77[7])
  {
    v6 = v4;
    goto LABEL_79;
  }

  v13 = [(CRLWPEditorHelper *)self textSource];
  location = [v13 previousCharacterIndex:{objc_msgSend(v4, "end")}];

  v61 = 0;
  v62 = &v61;
  v63 = 0x4012000000;
  v64 = sub_1003C4680;
  v65 = nullsub_48;
  v66 = &unk_1016A8115;
  v67 = xmmword_101464828;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  __p = 0;
  v55 = 0;
  v56 = 0;
  range2.length = _NSConcreteStackBlock;
  v48 = 3221225472;
  v49 = sub_1003C95C8;
  v50 = &unk_10185D5F8;
  v52 = &v57;
  p_p = &__p;
  v51 = &v61;
  -[CRLWPEditorHelper withLineFragmentForCharIndex:eol:performBlock:](self, "withLineFragmentForCharIndex:eol:performBlock:", location, [v4 isAtEndOfLine], &range2.length);
  if (v62[6] != 0x7FFFFFFFFFFFFFFFLL || v62[7])
  {
    range2.location = [v4 range];
    v16 = v15;
    if (v77[6] == v62[6] && v77[7] == v62[7])
    {
      v17 = v69;
      if (v70 != v69)
      {
        v18 = 0;
        v19 = 0;
        v20 = 1;
        do
        {
          v84.location = range2.location;
          v84.length = v16;
          v21 = NSIntersectionRange(*&v17[40 * v18 + 16], v84);
          v17 = v69;
          if ((v19 & 1) == 0 && v21.length)
          {
            if (v69[40 * v18 + 32] != 1)
            {
              v23 = [(CRLWPEditorHelper *)self textSource];
              v46 = [v23 previousCharacterIndex:v21.location + v21.length];

              v19 = 1;
              v17 = v69;
LABEL_35:
              if (v21.length)
              {
                if (v17[40 * v18 + 32] == 1)
                {
                  v22 = [(CRLWPEditorHelper *)self textSource];
                  location = [v22 previousCharacterIndex:v21.location + v21.length];

                  v17 = v69;
                }

                else
                {
                  location = v21.location;
                }
              }

              goto LABEL_40;
            }

            v19 = 1;
            v46 = v21.location;
          }

          if (v19)
          {
            goto LABEL_35;
          }

LABEL_40:
          v18 = v20;
          v24 = 0xCCCCCCCCCCCCCCCDLL * ((v70 - v17) >> 3) > v20++;
        }

        while (v24);
      }
    }

    else
    {
      v25 = v69;
      if (v70 != v69)
      {
        v26 = 0;
        v27 = *(v73 + 24);
        v28 = 1;
        do
        {
          v85.location = range2.location;
          v85.length = v16;
          v29 = NSIntersectionRange(*&v25[40 * v26 + 16], v85);
          if (v29.length)
          {
            if (!v27)
            {
              if (v69[40 * v26 + 32])
              {
                v46 = v29.location;
              }

              else
              {
                v31 = [(CRLWPEditorHelper *)self textSource];
                v46 = [v31 previousCharacterIndex:v29.location + v29.length];
              }

              break;
            }

            if (v69[40 * v26 + 32])
            {
              v30 = [(CRLWPEditorHelper *)self textSource];
              v46 = [v30 previousCharacterIndex:v29.location + v29.length];
            }

            else
            {
              v46 = v29.location;
            }
          }

          v26 = v28;
          v25 = v69;
          v24 = 0xCCCCCCCCCCCCCCCDLL * ((v70 - v69) >> 3) > v28++;
        }

        while (v24);
      }

      v32 = __p;
      if (v55 != __p)
      {
        v33 = 0;
        v34 = *(v58 + 24);
        v35 = 1;
        do
        {
          v86.location = range2.location;
          v86.length = v16;
          v36 = NSIntersectionRange(*&v32[40 * v33 + 16], v86);
          if (v36.length)
          {
            if (v34)
            {
              if (*(__p + 40 * v33 + 32))
              {
                location = v36.location;
              }

              else
              {
                v38 = [(CRLWPEditorHelper *)self textSource];
                location = [v38 previousCharacterIndex:v36.location + v36.length];
              }

              break;
            }

            if (*(__p + 40 * v33 + 32))
            {
              v37 = [(CRLWPEditorHelper *)self textSource];
              location = [v37 previousCharacterIndex:v36.location + v36.length];
            }

            else
            {
              location = v36.location;
            }
          }

          v33 = v35;
          v32 = __p;
          v24 = 0xCCCCCCCCCCCCCCCDLL * ((v55 - __p) >> 3) > v35++;
        }

        while (v24);
      }
    }

    v39 = [(CRLWPEditorHelper *)self textSource];
    if (v46 <= location)
    {
      v40 = [v39 nextCharacterIndex:location];
      v41 = v46;
    }

    else
    {
      v40 = [v39 nextCharacterIndex:v46];
      v41 = location;
    }

    if (v41 <= v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = v41;
    }

    if (v41 >= v40)
    {
      v43 = v40;
    }

    else
    {
      v43 = v41;
    }

    v44 = v42 - v43;

    v14 = [v4 copyWithNewVisualTypeRange:v43 head:v44 tail:{v46, location}];
    goto LABEL_76;
  }

  v14 = v4;
LABEL_76:
  v6 = v14;
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
LABEL_79:
  [v6 type];
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  if (!v6)
  {
LABEL_6:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101365D24();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101365D4C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101365DE8();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLWPEditorHelper logicalToVisualSelection:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:2685 isFatal:0 description:"invalid nil value for '%{public}s'", "result"];
  }

LABEL_15:

  return v6;
}

- (BOOL)p_adjustSelection:(id)a3 forWordWithCharIndex:(unint64_t)a4
{
  v6 = a3;
  v8 = [(CRLWPEditorHelper *)self rangeOfWordEnclosingCharIndex:a4 backward:0];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(CRLWPEditorHelper *)self textSource];
    v10 = [v9 length];

    v11 = [(CRLWPEditorHelper *)self wpSelectionClass];
    v12 = objc_opt_class();
    v13 = [(CRLWPEditorHelper *)self textSource];
    v14 = sub_100014370(v12, v13);
    v15 = [(objc_class *)v11 selectionWithRange:a4 type:0 leadingEdge:7 storage:v10 == a4, v14];
  }

  else
  {
    v13 = [(objc_class *)[(CRLWPEditorHelper *)self wpSelectionClass] selectionWithRange:v8, v7];
    v15 = [(CRLWPEditorHelper *)self logicalToVisualSelection:v13];
  }

  v16 = [v15 range];
  v18 = v17;
  v19 = [v6 range];
  if (v16 <= v19 && &v16[v18] >= &v19[v20])
  {
    v22 = [(CRLWPEditorHelper *)self editorController];
    v23 = [(CRLWPEditorHelper *)self editor];
    [v22 setSelection:v15 forEditor:v23 withFlags:8];

    v21 = 1;
  }

  else
  {
    [(CRLWPEditorHelper *)self p_adjustSelection:v6 withOtherSelection:v15 textSelectionGranularity:1];
    v21 = 0;
  }

  return v21;
}

- (void)p_moveAndModifySelectionRight:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLWPEditorHelper *)self editor];
  [v5 textSelectionWillChange];

  v6 = [(CRLWPEditorHelper *)self selection];
  if (![v6 isValid])
  {
    goto LABEL_39;
  }

  v41 = [(CRLWPEditorHelper *)self textSource];
  v7 = [(CRLWPEditorHelper *)self anchorSelection];

  if (!v7)
  {
    v45 = 0;
    if ([(CRLWPEditorHelper *)self selectionAnchor]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = [v6 leadingEdge];
      v44 = 0;
      if (!-[CRLWPEditorHelper p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [v6 start], &v44, objc_msgSend(v6, "caretAffinity") == 1))
      {
        -[CRLWPEditorHelper paragraphEnumeratorAtCharIndex:](self, "paragraphEnumeratorAtCharIndex:", [v6 start]);
        if (sub_100240ABC(&v42) == v3)
        {
          v9 = [v6 end];
        }

        else
        {
          v9 = [v6 start];
        }

        v10 = v9;
        sub_10024068C(&v42);
        goto LABEL_12;
      }

      if (v3)
      {
        v8 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v6 withLeadingEdge:&v45];
      }

      else
      {
        v8 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:v6 withLeadingEdge:&v45];
      }
    }

    else
    {
      v45 = [(CRLWPEditorHelper *)self selectionAnchorEdge];
      v8 = [(CRLWPEditorHelper *)self selectionAnchor];
    }

    v10 = v8;
LABEL_12:
    v11 = [(CRLWPEditorHelper *)self wpSelectionClass];
    v12 = v45;
    v13 = objc_opt_class();
    v14 = sub_100014370(v13, v41);
    v15 = [(objc_class *)v11 selectionWithRange:v10 type:0 leadingEdge:7 storage:v12, v14];
    [(CRLWPEditorHelper *)self setAnchorSelection:v15];
  }

  v45 = [v6 leadingEdge];
  v16 = [(CRLWPEditorHelper *)self p_oppositeEdgeForSelection:v6 withLeadingEdge:&v45];
  if (v3)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  v18 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:v16 leadingEdge:&v45 inDirection:v17 skipAnchors:1];
  v19 = [(CRLWPEditorHelper *)self textSource];
  v20 = [v19 smartFieldAtCharIndex:v18 attributeKind:6 effectiveRange:&v42];

  if (v20 || (-[CRLWPEditorHelper textSource](self, "textSource"), v21 = objc_claimAutoreleasedReturnValue(), [v21 smartFieldAtCharIndex:v18 attributeKind:21 effectiveRange:&v42], v20 = objc_claimAutoreleasedReturnValue(), v21, v20))
  {
    v22 = [v6 superRange];
    if (v22 <= v42)
    {
      v24 = &v42[v43];
      if (&v22[v23] >= &v42[v43] && (v18 > v42 || (v45 & 1) == 0 && v18 == v42) && v18 < v24)
      {
        if (v16 != v42)
        {
          v45 = 1;
          v40 = v20;
          v18 = v42;
          goto LABEL_27;
        }

        v45 = 0;
        v25 = [(CRLWPEditorHelper *)self textSource];
        v18 = sub_10027EB4C(v24, v25);
      }
    }

    v40 = v20;
  }

  else
  {
    v40 = 0;
  }

LABEL_27:
  v44 = 0;
  v26 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:v18 column:&v44 eol:0];
  if (v18 <= v16)
  {
    v27 = 0;
  }

  else
  {
    v27 = v45;
  }

  v28 = objc_alloc([(CRLWPEditorHelper *)self wpSelectionClass]);
  if (v26)
  {
    v29 = 7;
  }

  else
  {
    v29 = 0;
  }

  v30 = v45;
  v31 = objc_opt_class();
  v32 = sub_100014370(v31, v41);
  LOBYTE(v39) = v30;
  v33 = [v28 initWithType:v29 range:v18 styleInsertionBehavior:0 caretAffinity:0 smartFieldRange:v27 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:{0, v39, v32}];

  [(CRLWPEditorHelper *)self setSelectionLastModifiedWithKeyboard:1];
  v34 = [(CRLWPEditorHelper *)self anchorSelection];
  [(CRLWPEditorHelper *)self p_adjustSelection:v34 withOtherSelection:v33 textSelectionGranularity:0];

  v35 = [(CRLWPEditorHelper *)self anchorSelection];
  if (v35)
  {
    v28 = [(CRLWPEditorHelper *)self anchorSelection];
    v36 = [v28 insertionChar];
  }

  else
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(CRLWPEditorHelper *)self setSelectionAnchor:v36];
  if (v35)
  {
  }

  v37 = [(CRLWPEditorHelper *)self anchorSelection];
  -[CRLWPEditorHelper setSelectionAnchorEdge:](self, "setSelectionAnchorEdge:", [v37 leadingEdge]);

  v38 = [(CRLWPEditorHelper *)self editor];
  [v38 textSelectionDidChange];

LABEL_39:
}

- (void)moveBackwardAndModifySelection:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self selection];
  if ([v4 isValid])
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:[(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:1 newAnchor:&v6] inDirection:1];
    [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v5 andAnchor:v6];
  }
}

- (void)moveForwardAndModifySelection:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self selection];
  if ([v4 isValid])
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:[(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:0 newAnchor:&v6] inDirection:0];
    [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v5 andAnchor:v6];
  }
}

- (void)moveUp:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self selection];
  if ([v4 isValid])
  {
    [(CRLWPEditorHelper *)self preferredOffsetFromSelection:v4];
    v11 = v5;
    v6 = [v4 start];
    v10 = 1;
    v9 = [v4 isAtEndOfLine];
    v7 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v6 withEolAffinity:&v9 toBoundary:4 inDirection:4 preferPosition:&v11 isLeadingEdge:&v10];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if (v8 != [v4 start] || (objc_msgSend(v4, "isInsertionPoint") & 1) == 0)
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v8 endOfLine:0, v9];
    }
  }
}

- (void)moveDown:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self selection];
  if ([v4 isValid])
  {
    [(CRLWPEditorHelper *)self preferredOffsetFromSelection:v4];
    v23 = v5;
    v6 = [v4 end];
    if (v6)
    {
      if ([v4 isRange])
      {
        v7 = [v4 superRange];
        v9 = v8;
        v10 = [(CRLWPEditorHelper *)self textSource];
        v11 = sub_10027EB4C(v7 + v9, v10);

        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [(CRLWPEditorHelper *)self textSource];
          v13 = [(CRLWPEditorHelper *)self textSource];
          v14 = [v12 characterAtIndex:{objc_msgSend(v13, "charIndexMappedFromStorage:", v11)}];

          v15 = sub_10027E2F0(v14);
          if (v14 == 8232 ? 1 : v15)
          {
            v6 = v11;
          }
        }
      }
    }

    v17 = [(CRLWPEditorHelper *)self textSource];
    v18 = [v17 length];

    v22 = 1;
    v21 = [v4 isAtEndOfLine];
    v19 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v6 withEolAffinity:&v21 toBoundary:4 inDirection:5 preferPosition:&v23 isLeadingEdge:&v22];
    if (v18 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    if (v20 != [v4 end] || (objc_msgSend(v4, "isInsertionPoint") & 1) == 0)
    {
      -[CRLWPEditorHelper setSelectionWithRange:endOfLine:](self, "setSelectionWithRange:endOfLine:", v20, 0, [v4 isAtEndOfLine]);
    }
  }
}

- (void)moveUpAndModifySelection:(id)a3
{
  v6 = [(CRLWPEditorHelper *)self selection];
  if ([v6 isValid])
  {
    [(CRLWPEditorHelper *)self preferredOffsetFromSelection:v6];
    v18 = v7;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:4 newAnchor:&v17];
    v16 = 1;
    v15 = [v6 isAtEndOfLine];
    v9 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v8 withEolAffinity:&v15 toBoundary:4 inDirection:4 preferPosition:&v18 isLeadingEdge:&v16];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v11 = [(CRLWPEditorHelper *)self selection];
    v12 = [v11 validVisualRanges];
    if (v12 & 1) != 0 && ((-[CRLWPEditorHelper selection](self, "selection"), v3 = objc_claimAutoreleasedReturnValue(), [v3 visualRanges], v4 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v4, "containsCharacterAtIndex:", v10), v10 < v17) ? (v14 = v13) : (v14 = 0), (v14) || (-[CRLWPEditorHelper p_setVisualSelectionWithCharIndex:leadingEdge:andAnchor:andAnchorLeadingEdge:](self, "p_setVisualSelectionWithCharIndex:leadingEdge:andAnchor:andAnchorLeadingEdge:", v10, v16), v12))
    {
    }
  }
}

- (void)moveDownAndModifySelection:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self selection];
  if ([v4 isValid])
  {
    [(CRLWPEditorHelper *)self preferredOffsetFromSelection:v4];
    v14 = v5;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:5 newAnchor:&v13];
    v7 = [(CRLWPEditorHelper *)self textSource];
    v8 = [v7 length];

    v12 = 1;
    v11 = [v4 isAtEndOfLine];
    v9 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v6 withEolAffinity:&v11 toBoundary:4 inDirection:5 preferPosition:&v14 isLeadingEdge:&v12];
    if ((v8 - 1) >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8 - 1;
    }

    [(CRLWPEditorHelper *)self p_setVisualSelectionWithCharIndex:v10 leadingEdge:v12 andAnchor:v13 andAnchorLeadingEdge:1];
  }
}

- (BOOL)p_isEdgeAtCharIndex:(unint64_t)a3 leadingEdge:(BOOL)a4 withinWordInDirection:(int64_t)a5
{
  v6 = [(CRLWPEditorHelper *)self p_adjustedCharIndexForWordTestingFromCharIndex:a3 leadingEdge:a4 forDirection:a5];
  v7 = [(CRLWPEditorHelper *)self textSource];
  v8 = [v7 length];

  if (v6 > v8)
  {
    return 0;
  }

  v10 = [(CRLWPEditorHelper *)self textSource];
  v11 = [v10 wordAtCharIndex:v6 includePreviousWord:0];
  v13 = v12;

  return v6 >= v11 && v6 - v11 < v13;
}

- (void)moveWordInLayoutDirection:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101365E10();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101365E24();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101365EB0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLWPEditorHelper moveWordInLayoutDirection:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:2994 isFatal:0 description:"Unsupported direction: %lu", a3];
  }

  v8 = [(CRLWPEditorHelper *)self selection];
  if ([v8 isValid])
  {
    [(CRLWPEditorHelper *)self setAnchorSelection:0];
    v18 = [v8 leadingEdge];
    if (a3 == 2)
    {
      v9 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:v8 withLeadingEdge:&v18];
    }

    else
    {
      v9 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v8 withLeadingEdge:&v18];
    }

    v10 = v9;
    v11 = [(CRLWPEditorHelper *)self p_isEdgeAtCharIndex:v9 leadingEdge:v18 withinWordInDirection:a3];
    v12 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:v10 leadingEdge:&v18 inDirection:a3];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11;
    }

    if ((v13 & 1) == 0)
    {
      v14 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:v12 leadingEdge:&v18 inDirection:a3];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v14;
      }
    }

    if (v12 == 0x7FFFFFFFFFFFFFFFLL && v10 == 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = v12;
    }

    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v16 != v10 || (v17 = v18, v17 != [v8 leadingEdge]) || (objc_msgSend(v8, "isInsertionPoint") & 1) == 0)
      {
        [(CRLWPEditorHelper *)self setSelectionFromKeyboardWithRange:v16 leadingEdge:0 endOfLine:v18, 0];
      }
    }
  }
}

- (void)p_moveWordAndModifySelectionInLayoutDirection:(int64_t)a3
{
  v5 = [(CRLWPEditorHelper *)self editor];
  [v5 textSelectionWillChange];

  v6 = [(CRLWPEditorHelper *)self selection];
  if ([v6 isValid])
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = 1;
    v17 = 1;
    v7 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithLeadingEdge:&v17 Direction:a3 newAnchor:&v19 anchorLeadingEdge:&v18];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(CRLWPEditorHelper *)self p_isEdgeAtCharIndex:v7 leadingEdge:v17 withinWordInDirection:a3];
      v16 = 0;
      v15 = v17;
      v9 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v7 withEolAffinity:&v16 toBoundary:1 inDirection:a3 preferPosition:0 isLeadingEdge:&v15];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v8)
        {
          v10 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:v7 leadingEdge:v17];
          v11 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:v9 leadingEdge:v15];
          v12 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:[(CRLWPEditorHelper *)self selectionAnchor] leadingEdge:[(CRLWPEditorHelper *)self selectionAnchorEdge]];
          if ((v10 >= v12 || v12 >= v11) && (v11 >= v12 || v12 >= v10))
          {
            v13 = v15;
          }

          else
          {
            v9 = [(CRLWPEditorHelper *)self selectionAnchor];
            v13 = [(CRLWPEditorHelper *)self selectionAnchorEdge];
          }

          v17 = v13;
        }

        else
        {
          v16 = 0;
          v17 = v15;
          v9 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v9 withEolAffinity:&v16 toBoundary:1 inDirection:a3 preferPosition:0 isLeadingEdge:&v17];
          v13 = v17;
        }

        [(CRLWPEditorHelper *)self p_setVisualSelectionWithCharIndex:v9 leadingEdge:v13 & 1 andAnchor:v19 andAnchorLeadingEdge:v18];
      }
    }
  }

  v14 = [(CRLWPEditorHelper *)self editor];
  [v14 textSelectionDidChange];
}

- (BOOL)p_isCharIndex:(unint64_t)a3 withinTextUnit:(int64_t)a4 inDirection:(int64_t)a5
{
  if (a4 != 1)
  {
    [CRLAssertionHandler _atomicIncrementAssertCount:a3];
    if (qword_101AD5A10 != -1)
    {
      sub_101365ED8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101365EEC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101365F74();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_isCharIndex:withinTextUnit:inDirection:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:3117 isFatal:0 description:"unexpected granularity"];

    return 0;
  }

  if (a5 > 5)
  {
    return 0;
  }

  if (((1 << a5) & 0x1A) != 0)
  {
    v6 = [(CRLWPEditorHelper *)self p_adjustedCharIndexForWordTestingFromCharIndex:a3 leadingEdge:1 forDirection:?];
    v7 = [(CRLWPEditorHelper *)self textSource];
    v8 = [v7 length];

    if (v6 <= v8)
    {
      goto LABEL_17;
    }

    return 0;
  }

  v6 = [(CRLWPEditorHelper *)self p_adjustedCharIndexForWordTestingFromCharIndex:a3 leadingEdge:1 forDirection:?];
  v13 = [(CRLWPEditorHelper *)self textSource];
  v14 = [v13 length];

  if (v6 > v14)
  {
    return 0;
  }

LABEL_17:
  v15 = [(CRLWPEditorHelper *)self textSource];
  v16 = [v15 wordAtCharIndex:v6 includePreviousWord:0];
  v18 = v17;

  return v6 >= v16 && v6 - v16 < v18;
}

- (int64_t)p_writingDirectionForCharAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  v10 = 0;
  v4 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:a3 column:&v10 eol:0];
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101365F9C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101365FC4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101366060();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_writingDirectionForCharAtIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:3129 isFatal:0 description:"invalid nil value for '%{public}s'", "lineFragment"];

    return -1;
  }

  if (v4[3] < 0)
  {
    v5 = &xmmword_101464828;
  }

  else
  {
    v5 = v4;
  }

  return sub_1002117DC(v4, a3 - (*v5 + *(v5 + 1) == a3));
}

- (BOOL)p_isCharIndex:(unint64_t)a3 withEolAffinity:(BOOL)a4 atBoundary:(int64_t)a5 inDirection:(int64_t)a6
{
  v8 = a4;
  v11 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:?];
  v59 = v11;
  v13 = &v11[v12];
  if (a3)
  {
    v14 = a3 - (&v11[v12] == a3);
  }

  else
  {
    v14 = 0;
  }

  if (v14 >= v13)
  {
    goto LABEL_63;
  }

  v15 = v12;
  v58 = a6;
  if (a5 <= 1)
  {
    if (!a5)
    {
      v42 = [(CRLWPEditorHelper *)self textSource];
      v43 = [v42 string];
      v16 = [v43 rangeOfComposedCharacterSequenceAtIndex:v14];
      v15 = v44;

      goto LABEL_61;
    }

    v16 = v11;
    if (a5 == 1)
    {
      if (a6 > 1)
      {
        v49 = [(CRLWPEditorHelper *)self p_writingDirectionForCharAtIndex:v14];
        v50 = 2;
        if (v49 == 1)
        {
          v50 = 3;
        }

        v25 = v50 == a6;
      }

      else
      {
        v25 = a6 == 0;
      }

      v51 = v25;
      v16 = [(CRLWPEditorHelper *)self rangeOfWordEnclosingCharIndex:v14 backward:v51];
      v15 = v52;
      goto LABEL_61;
    }
  }

  else
  {
    if (a5 == 2)
    {
      v26 = [(CRLWPEditorHelper *)self textSource];
      location = [v26 textRangeForParagraphAtCharIndex:a3];
      length = v28;

      if (a3 && location == a3)
      {
        v30 = [(CRLWPEditorHelper *)self textSource];
        v66.location = [v30 textRangeForParagraphAtCharIndex:a3 - 1];
        v66.length = v31;
        v65.location = location;
        v65.length = length;
        v32 = NSUnionRange(v65, v66);
        location = v32.location;
        length = v32.length;
      }

      v33 = [(CRLWPEditorHelper *)self textSource];
      v34 = [v33 string];
      v67.location = location;
      v67.length = length;
      v35 = CFStringTokenizerCreate(kCFAllocatorDefault, v34, v67, 1uLL, 0);

      if (CFStringTokenizerGoToTokenAtIndex(v35, a3))
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v35);
        v16 = CurrentTokenRange.location;
        v15 = CurrentTokenRange.length;
      }

      else
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        v15 = 0;
      }

      CFRelease(v35);
      goto LABEL_61;
    }

    if (a5 == 3)
    {
      v37 = [(CRLWPEditorHelper *)self textSource];
      v16 = [v37 textRangeForParagraphAtCharIndex:a3];
      v39 = v38;

      if (v39)
      {
        v40 = [(CRLWPEditorHelper *)self textSource];
        v41 = sub_10027E2F0([v40 characterAtIndex:v39 + v16 - 1]);

        v15 = v39 - (v41 & 1);
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_61;
    }

    v16 = v11;
    if (a5 == 4)
    {
      v17 = [(CRLWPEditorHelper *)self layout];
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      [v17 columns];
      obj = v56 = v17;
      v18 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v18)
      {
        v19 = *v61;
LABEL_11:
        v20 = 0;
        while (1)
        {
          if (*v61 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v60 + 1) + 8 * v20);
          v22 = [v21 range];
          v24 = v14 < v22 || v14 - v22 >= v23;
          if (!v24 || v8 && v14 == &v22[v23])
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
            v15 = 0;
            v16 = 0x7FFFFFFFFFFFFFFFLL;
            if (v18)
            {
              goto LABEL_11;
            }

            goto LABEL_42;
          }
        }

        v45 = [v21 lineIndexForCharIndex:v14 eol:v8];
        if (v45 > 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_41;
        }

        v46 = [v21 lineFragmentAtIndex:v45];
        if (*(v46 + 3) < 0)
        {
          v47 = &xmmword_101464828;
        }

        else
        {
          v47 = v46;
        }

        v16 = *v47;
        v15 = *(v47 + 1);
      }

      else
      {
LABEL_41:
        v15 = 0;
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_42:
    }
  }

  if (a5 == 5)
  {
    if (v59 == a3 && v58 <= 4 && ((1 << v58) & 0x1A) != 0)
    {
      LOBYTE(v48) = 1;
    }

    else
    {
      LOBYTE(v48) = 0;
      if (v13 == a3 && v58 < 6)
      {
        LODWORD(v48) = 0x25u >> v58;
      }
    }

    return v48 & 1;
  }

LABEL_61:
  if (v16 != a3 && v16 + v15 != a3)
  {
    goto LABEL_63;
  }

  LOBYTE(v48) = 0;
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        return v48 & 1;
      }

      goto LABEL_72;
    }

LABEL_75:
    if (v58 == 1)
    {
      if (v13 != a3)
      {
LABEL_98:
        LOBYTE(v48) = v58 - 6 < 0xFFFFFFFFFFFFFFFELL;
        return v48 & 1;
      }
    }

    else if (v58 || v59 != a3)
    {
      goto LABEL_98;
    }

LABEL_63:
    LOBYTE(v48) = 0;
    return v48 & 1;
  }

  if (a5 == 2)
  {
    goto LABEL_75;
  }

  if (a5 != 3)
  {
    if (a5 != 4)
    {
      return v48 & 1;
    }

LABEL_72:
    if (v58 > 1)
    {
      v54 = [(CRLWPEditorHelper *)self p_writingDirectionForCharAtIndex:a3];
      v48 = 2;
      if (v54 == 1)
      {
        v48 = 3;
      }

      if (v16 == a3)
      {
        LOBYTE(v48) = (v58 & 0xFFFFFFFFFFFFFFFELL) == 2 && v48 != v58;
      }

      else
      {
        LOBYTE(v48) = v48 == v58;
      }
    }

    else
    {
      LOBYTE(v48) = v58 == 1;
      if (v16 != a3)
      {
        LOBYTE(v48) = v58 ^ 1;
      }
    }

    return v48 & 1;
  }

  if (v59 == a3 && v58 <= 5 && ((1 << v58) & 0x25) != 0 || v13 == a3 && v58 <= 4 && ((1 << v58) & 0x1A) != 0)
  {
    goto LABEL_63;
  }

  if ((v58 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    LOBYTE(v48) = v16 == a3;
    return v48 & 1;
  }

  LOBYTE(v48) = v16 + v15 == a3;
  if ((v58 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    goto LABEL_63;
  }

  return v48 & 1;
}

- (void)moveWordForward:(id)a3
{
  v7 = [(CRLWPEditorHelper *)self selection];
  if ([v7 isValid])
  {
    v4 = [v7 end];
    v5 = [(CRLWPEditorHelper *)self p_isCharIndex:v4 withinTextUnit:1 inDirection:0];
    v6 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:v4 leadingEdge:0 inDirection:0];
    if ((v5 & 1) == 0 && [(CRLWPEditorHelper *)self p_isCharIndex:v6 withEolAffinity:0 atBoundary:1 inDirection:1])
    {
      v6 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:v6 leadingEdge:0 inDirection:0];
    }

    if (v6 != 0x7FFFFFFFFFFFFFFFLL && (v6 != v4 || ([v7 isInsertionPoint] & 1) == 0))
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v6 endOfLine:0, 0];
    }
  }
}

- (void)moveWordBackward:(id)a3
{
  v8 = [(CRLWPEditorHelper *)self selection];
  if ([v8 isValid])
  {
    v4 = [v8 start];
    v5 = [(CRLWPEditorHelper *)self p_isCharIndex:v4 withinTextUnit:1 inDirection:1];
    v6 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:v4 leadingEdge:0 inDirection:1];
    if ((v5 & 1) == 0 && [(CRLWPEditorHelper *)self p_isCharIndex:v6 withEolAffinity:0 atBoundary:1 inDirection:0])
    {
      v6 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:v6 leadingEdge:0 inDirection:1];
    }

    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 == 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v6 = 0;
    }

    if (v6 != 0x7FFFFFFFFFFFFFFFLL && (v6 != v4 || ([v8 isInsertionPoint] & 1) == 0))
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v6 endOfLine:0, 0];
    }
  }
}

- (void)moveWordAndModifySelectionInStorageDirection:(int64_t)a3
{
  v5 = [(CRLWPEditorHelper *)self selection];
  if ([v5 isValid])
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:a3 newAnchor:&v11];
    v7 = [(CRLWPEditorHelper *)self p_isCharIndex:v6 withinTextUnit:1 inDirection:a3];
    v10 = 0;
    v8 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v6 withEolAffinity:&v10 toBoundary:1 inDirection:a3 preferPosition:0 isLeadingEdge:0];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((v7 & 1) == 0 && [(CRLWPEditorHelper *)self p_isCharIndex:v8 withEolAffinity:v10 atBoundary:1 inDirection:a3 == 0])
      {
        v10 = 0;
        v8 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v8 withEolAffinity:&v10 toBoundary:1 inDirection:a3 preferPosition:0 isLeadingEdge:0];
      }

      if (v6 != [(CRLWPEditorHelper *)self selectionAnchor])
      {
        v9 = [(CRLWPEditorHelper *)self selectionAnchor];
        if (v6 > v9 == v8 <= [(CRLWPEditorHelper *)self selectionAnchor])
        {
          v8 = [(CRLWPEditorHelper *)self selectionAnchor];
        }
      }

      [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v8 andAnchor:v11];
    }
  }
}

- (void)selectParagraph:(id)a3
{
  v19 = [(CRLWPEditorHelper *)self selection];
  if ([v19 isValid])
  {
    v4 = [v19 range];
    v6 = v5;
    v7 = [(CRLWPEditorHelper *)self textSource];
    v8 = [v7 textRangeForParagraphAtCharIndex:v4];
    v10 = v9;

    v11 = [(CRLWPEditorHelper *)self textSource];
    v12 = [v11 textRangeForParagraphAtCharIndex:&v4[v6]];
    v14 = v13;

    v15 = [v19 isRange];
    v16 = &v4[v6] == v12;
    v17.location = ((v15 & v16) != 0 ? &v4[v6] : v12);
    v17.length = (v15 & v16) != 0 ? 0 : v14;
    v21.location = v8;
    v21.length = v10;
    v18 = NSUnionRange(v21, v17);
    if (v18.location != v4 || v18.length != v6)
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v18.location endOfLine:v18.length, 0];
    }
  }
}

- (void)selectLine:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self selection];
  if ([v4 isValid])
  {
    if ([v4 isRange])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v4 isAtEndOfLine];
    }

    v23 = v5;
    v6 = -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", [v4 start], &v23, 4, 1, 0, 0);
    if ([v4 isRange])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v4 isAtEndOfLine];
    }

    v23 = v7;
    v8 = -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", [v4 start], &v23, 4, 0, 0, 0);
    if (v6 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v6 >= v8)
    {
      v6 = v8;
    }

    if ([v4 isRange])
    {
      v10 = 0;
    }

    else
    {
      v10 = [v4 isAtEndOfLine];
    }

    v23 = v10;
    v11 = -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", [v4 end], &v23, 4, 1, 0, 0);
    if ([v4 isRange] && (-[CRLWPEditorHelper textSource](self, "textSource"), v12 = objc_claimAutoreleasedReturnValue(), v13 = sub_10027E2F0(objc_msgSend(v12, "characterAtIndex:", objc_msgSend(v4, "end") - 1)), v12, v13))
    {
      v14 = [v4 end];
    }

    else
    {
      if ([v4 isRange])
      {
        v15 = 1;
      }

      else
      {
        v15 = [v4 isAtEndOfLine];
      }

      v23 = v15;
      v14 = -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", [v4 end], &v23, 4, 0, 0, 0);
      v16 = [(CRLWPEditorHelper *)self textSource];
      if (v14 >= [v16 length] - 1)
      {
      }

      else
      {
        v17 = [(CRLWPEditorHelper *)self textSource];
        v18 = sub_10027E2F0([v17 characterAtIndex:v14]);

        v14 += v18 & 1;
      }
    }

    if (v11 <= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = v11;
    }

    if (v11 >= v14)
    {
      v20.location = v14;
    }

    else
    {
      v20.location = v11;
    }

    v20.length = v19 - v20.location;
    v24.location = v6;
    v24.length = v9 - v6;
    v21 = NSUnionRange(v24, v20);
    if (v21.location != [v4 range] || v21.length != v22)
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v21.location endOfLine:v21.length, 0];
    }
  }
}

- (void)selectWordWithFlags:(unint64_t)a3
{
  v16 = [(CRLWPEditorHelper *)self selection];
  v5 = [(CRLWPEditorHelper *)self textSource];
  if ([v16 isValid] && objc_msgSend(v5, "length"))
  {
    v6 = [v16 start];
    if (v6 && (v6 == [v5 length] || sub_10027E2F0(objc_msgSend(v5, "characterAtIndex:", v6))))
    {
      v6 = [v5 previousCharacterIndex:v6];
    }

    location = [(CRLWPEditorHelper *)self rangeForSelectionAtCharIndex:v6 caretIndex:v6];
    length = v8;
    if ([v16 isRange] && (location != objc_msgSend(v16, "range") || length != v10))
    {
      if (location == 0x7FFFFFFFFFFFFFFFLL && length == 0)
      {
        length = 0;
      }

      else
      {
        v6 = location;
      }

      v11 = [v5 previousCharacterIndex:{objc_msgSend(v16, "end")}];
      v13.location = [(CRLWPEditorHelper *)self rangeForSelectionAtCharIndex:v11 caretIndex:v11];
      v13.length = v12;
      if (v13.location == 0x7FFFFFFFFFFFFFFFLL && !v12)
      {
        v13.location = [v16 end];
        v13.length = 0;
      }

      v18.location = v6;
      v18.length = length;
      v14 = NSUnionRange(v18, v13);
      location = v14.location;
      length = v14.length;
    }

    if (location != [v16 range] || length != v15)
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:location endOfLine:length withFlags:0, a3];
    }
  }
}

- (void)p_setSelectionFromKeyboardWithRange:(_NSRange)a3 leadingEdge:(BOOL)a4 endOfLine:(BOOL)a5 allowEndOfLineChange:(BOOL)a6
{
  v6 = a5;
  length = a3.length;
  location = a3.location;
  v11 = objc_alloc([(CRLWPEditorHelper *)self wpSelectionClass:a3.location]);
  v12 = objc_opt_class();
  v13 = [(CRLWPEditorHelper *)self textSource];
  v14 = sub_100014370(v12, v13);
  v43 = length;
  LOBYTE(v42) = a4;
  v44 = [v11 initWithType:7 range:location styleInsertionBehavior:length caretAffinity:0 smartFieldRange:v6 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:{0, v42, v14}];

  v15 = [(CRLWPEditorHelper *)self editorController];
  v16 = [v15 selectionPath];

  v17 = [v16 mostSpecificSelectionOfClass:objc_opt_class()];
  if (v17)
  {
    v18 = [v16 selectionPathReplacingMostSpecificLocationOfSelection:v17 withSelection:v44];
  }

  else
  {
    v19 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    v20 = [v19 selectionModelTranslator];
    v21 = [v44 range];
    v23 = v22;
    v24 = objc_opt_class();
    v25 = [(CRLWPEditorHelper *)self textSource];
    v26 = sub_100014370(v24, v25);
    v18 = [v20 selectionPathForRange:v21 onStorage:{v23, v26}];
  }

  v27 = [v17 range];
  v29 = v28;
  v30 = location;
  if ([v44 isRange])
  {
    v30 = location + v43;
    if (v27 != location)
    {
      if (v30 == &v27[v29])
      {
        v30 = location;
      }

      else
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  v31 = [(CRLWPEditorHelper *)self interactiveCanvasController];
  v32 = v31;
  if (v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 36;
  }

  else
  {
    v33 = 32;
  }

  [v31 setSelectionPath:v18 withSelectionFlags:v33];

  if (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v44 isInsertionPoint])
    {
      v34 = v44;
    }

    else
    {
      v34 = [objc_opt_class() selectionWithRange:{v30, 0}];
    }

    v35 = v34;
    if ([v44 isInsertionPoint])
    {
      v36 = [v44 caretAffinity];
    }

    else
    {
      v36 = 0;
    }

    if (([v44 isRange] & (v30 == location + v43)) != 0)
    {
      v36 = 1;
    }

    if ([v35 caretAffinity] != v36)
    {
      v37 = [v35 copyWithNewStyleInsertionBehavior:0 newCaretAffinity:v36];

      v35 = v37;
    }

    v38 = v16;
    v39 = [v16 selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:v35];
    v40 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [v40 scrollToSelectionPath:v39 scrollOptions:0];

    v41 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [v41 layoutIfNeeded];

    v16 = v38;
  }

  [(CRLWPEditorHelper *)self setSelectionLastModifiedWithKeyboard:1];
  if ([v44 isInsertionPoint])
  {
    self->_selectionAnchor = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(CRLWPEditorHelper *)self p_clearEditMenuFlags];
}

- (void)p_moveToEndOfLineRight:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLWPEditorHelper *)self selection];
  if ([v5 isValid])
  {
    v17 = [v5 leadingEdge];
    if (v3)
    {
      v6 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:v5 withLeadingEdge:&v17];
      v7 = 2;
    }

    else
    {
      v6 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v5 withLeadingEdge:&v17];
      v7 = 3;
    }

    v8 = v17;
    v9 = [(CRLWPEditorHelper *)self p_isCharIndex:v6 withEolAffinity:1 atBoundary:4 inDirection:v7];
    if ([v5 isRange] && v6 == objc_msgSend(v5, "end"))
    {
      v10 = [(CRLWPEditorHelper *)self textSource];
      v11 = sub_10027E2F0([v10 characterAtIndex:v6 - 1]);

      v12 = &v6[-(v11 & 1)];
    }

    else
    {
      v11 = 0;
      v12 = v6;
    }

    if ([v5 isInsertionPoint])
    {
      v13 = [v5 isAtEndOfLine];
    }

    else
    {
      v13 = v11 | v9;
    }

    v16 = v13 & 1;
    v14 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v12 withEolAffinity:&v16 toBoundary:4 inDirection:v7 preferPosition:0 isLeadingEdge:&v17];
    v15 = v17;
    if (v14 != v6 || v8 != v17)
    {
      goto LABEL_16;
    }

    if ([v5 isRange])
    {
      v15 = v17;
LABEL_16:
      [(CRLWPEditorHelper *)self p_setSelectionFromKeyboardWithRange:v14 leadingEdge:0 endOfLine:v15 & 1 allowEndOfLineChange:v16, 0];
    }
  }
}

- (void)p_extendToEndOfLineRight:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLWPEditorHelper *)self selection];
  if ([v5 isValid])
  {
    v15 = [v5 leadingEdge];
    if (v3)
    {
      v6 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:v5 withLeadingEdge:&v15];
    }

    else
    {
      v6 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v5 withLeadingEdge:&v15];
    }

    v7 = v6;
    if (![v5 isRange] || v7 != objc_msgSend(v5, "end") || (-[CRLWPEditorHelper textSource](self, "textSource"), v8 = objc_claimAutoreleasedReturnValue(), v9 = sub_10027E2F0(objc_msgSend(v8, "characterAtIndex:", v7 - 1)), v8, (v9 & 1) == 0))
    {
      if (v3)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }

      v11 = [(CRLWPEditorHelper *)self p_isCharIndex:v7 withEolAffinity:1 atBoundary:4 inDirection:v10];
      if ([v5 isInsertionPoint])
      {
        v11 = [v5 isAtEndOfLine];
      }

      v14 = v11;
      v7 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v7 withEolAffinity:&v14 toBoundary:4 inDirection:v10 preferPosition:0 isLeadingEdge:&v15];
    }

    v13 = [v5 leadingEdge];
    if (v3)
    {
      v12 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v5 withLeadingEdge:&v13];
    }

    else
    {
      v12 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:v5 withLeadingEdge:&v13];
    }

    [(CRLWPEditorHelper *)self p_setVisualSelectionWithCharIndex:v7 leadingEdge:v15 andAnchor:v12 andAnchorLeadingEdge:v13];
  }
}

- (void)moveToBeginningOfLine:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self selection];
  if ([v4 isValid])
  {
    v5 = [v4 start];
    v7 = [v4 isAtEndOfLine];
    v6 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v5 withEolAffinity:&v7 toBoundary:4 inDirection:1 preferPosition:0 isLeadingEdge:0];
    if (v6 != v5 || [v4 isRange])
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v6 endOfLine:0, 0];
    }
  }
}

- (void)moveToEndOfLine:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self selection];
  if ([v4 isValid])
  {
    v5 = [v4 end];
    v6 = v5;
    if ([v4 isRange])
    {
      v7 = [(CRLWPEditorHelper *)self textSource];
      v8 = sub_10027E2F0([v7 characterAtIndex:v5 - 1]);

      v6 = &v5[-(v8 & 1)];
    }

    v9 = [(CRLWPEditorHelper *)self p_isCharIndex:v6 withEolAffinity:1 atBoundary:4 inDirection:0];
    if ([v4 isInsertionPoint])
    {
      v9 = [v4 isAtEndOfLine];
    }

    v11 = v9;
    v10 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v6 withEolAffinity:&v11 toBoundary:4 inDirection:0 preferPosition:0 isLeadingEdge:0];
    if (v10 != v5 || [v4 isRange])
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v10 endOfLine:0, 1];
    }
  }
}

- (void)moveToBeginningOfLineAndModifySelection:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self editor];
  [v4 textSelectionWillChange];

  v5 = [(CRLWPEditorHelper *)self selection];
  if ([v5 isValid])
  {
    v6 = [v5 start];
    v8 = [v5 isAtEndOfLine];
    -[CRLWPEditorHelper p_setSelectionWithCharIndex:andAnchor:](self, "p_setSelectionWithCharIndex:andAnchor:", -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", v6, &v8, 4, 1, 0, 0), [v5 end]);
  }

  v7 = [(CRLWPEditorHelper *)self editor];
  [v7 textSelectionDidChange];
}

- (void)moveToEndOfLineAndModifySelection:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self editor];
  [v4 textSelectionWillChange];

  v5 = [(CRLWPEditorHelper *)self selection];
  if ([v5 isValid])
  {
    v6 = [v5 end];
    if ([v5 isInsertionPoint])
    {
      v7 = [v5 isAtEndOfLine];
    }

    else
    {
      v7 = 1;
    }

    v11 = v7;
    if (![v5 isRange] || v6 != objc_msgSend(v5, "end") || (-[CRLWPEditorHelper textSource](self, "textSource"), v8 = objc_claimAutoreleasedReturnValue(), v9 = sub_10027E2F0(objc_msgSend(v8, "characterAtIndex:", v6 - 1)), v8, (v9 & 1) == 0))
    {
      v6 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v6 withEolAffinity:&v11 toBoundary:4 inDirection:0 preferPosition:0 isLeadingEdge:0];
    }

    -[CRLWPEditorHelper p_setSelectionWithCharIndex:andAnchor:](self, "p_setSelectionWithCharIndex:andAnchor:", v6, [v5 start]);
  }

  v10 = [(CRLWPEditorHelper *)self editor];
  [v10 textSelectionDidChange];
}

- (void)moveToBeginningOfParagraph:(id)a3
{
  v8 = [(CRLWPEditorHelper *)self editor];
  [v8 textSelectionWillChange];

  v9 = [(CRLWPEditorHelper *)self selection];
  if ([v9 isValid])
  {
    v4 = [v9 start];
    v5 = [(CRLWPEditorHelper *)self textSource];
    v6 = [v5 textRangeForParagraphAtCharIndex:v4];

    if (v6 != v4 || [v9 isRange])
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v6 endOfLine:0, 0];
    }
  }

  v7 = [(CRLWPEditorHelper *)self editor];
  [v7 textSelectionDidChange];
}

- (void)moveToEndOfParagraph:(id)a3
{
  v16 = [(CRLWPEditorHelper *)self editor];
  [v16 textSelectionWillChange];

  v17 = [(CRLWPEditorHelper *)self selection];
  if ([v17 isValid])
  {
    v4 = [v17 end];
    v5 = v4;
    if ([v17 isRange])
    {
      v6 = [(CRLWPEditorHelper *)self textSource];
      v7 = sub_10027E2F0([v6 characterAtIndex:v4 - 1]);

      v5 = &v4[-(v7 & 1)];
    }

    v8 = [(CRLWPEditorHelper *)self textSource];
    v9 = [v8 textRangeForParagraphAtCharIndex:v5];
    v11 = v10;

    v12 = &v9[v11];
    if (v11)
    {
      v13 = [(CRLWPEditorHelper *)self textSource];
      v14 = sub_10027E2F0([v13 characterAtIndex:v12 - 1]);

      v12 -= v14 & 1;
    }

    if (v12 != v4 || [v17 isRange])
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v12 endOfLine:0, 0];
    }
  }

  v15 = [(CRLWPEditorHelper *)self editor];
  [v15 textSelectionDidChange];
}

- (void)moveToBeginningOfParagraphAndModifySelection:(id)a3
{
  v10 = [(CRLWPEditorHelper *)self editor];
  [v10 textSelectionWillChange];

  v11 = [(CRLWPEditorHelper *)self selection];
  if ([v11 isValid])
  {
    v4 = [v11 range];
    v6 = v5;
    v7 = [(CRLWPEditorHelper *)self textSource];
    v8 = [v7 textRangeForParagraphAtCharIndex:v4];

    [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v8 andAnchor:&v4[v6]];
  }

  v9 = [(CRLWPEditorHelper *)self editor];
  [v9 textSelectionDidChange];
}

- (void)moveToEndOfParagraphAndModifySelection:(id)a3
{
  v20 = [(CRLWPEditorHelper *)self editor];
  [v20 textSelectionWillChange];

  v21 = [(CRLWPEditorHelper *)self selection];
  if ([v21 isValid])
  {
    v4 = [v21 range];
    v6 = v5;
    v7 = &v4[v5];
    if ([v21 isRange])
    {
      v8 = [(CRLWPEditorHelper *)self textSource];
      v9 = sub_10027E2F0([v8 characterAtIndex:v7 - 1]);

      v7 -= v9 & 1;
    }

    v10 = [(CRLWPEditorHelper *)self textSource];
    v11 = [v10 textRangeForParagraphAtCharIndex:v7];
    v13 = v12;

    v14 = &v11[v13];
    if (v4 <= &v11[v13])
    {
      v15 = &v11[v13];
    }

    else
    {
      v15 = v4;
    }

    if (v4 >= &v11[v13])
    {
      v16 = &v11[v13];
    }

    else
    {
      v16 = v4;
    }

    if (v4 > v14 || v15 - v16 != v6)
    {
      if (v13)
      {
        v17 = [(CRLWPEditorHelper *)self textSource];
        v18 = sub_10027E2F0([v17 characterAtIndex:v14 - 1]);

        v14 = &v11[v13 - (v18 & 1)];
      }

      [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v14 andAnchor:v4];
    }
  }

  v19 = [(CRLWPEditorHelper *)self editor];
  [v19 textSelectionDidChange];
}

- (void)moveParagraphForward:(id)a3
{
  v4 = a3;
  [(CRLWPEditorHelper *)self moveForward:?];
  [(CRLWPEditorHelper *)self moveToEndOfParagraph:v4];
}

- (void)moveParagraphBackward:(id)a3
{
  v4 = a3;
  [(CRLWPEditorHelper *)self moveBackward:?];
  [(CRLWPEditorHelper *)self moveToBeginningOfParagraph:v4];
}

- (void)moveParagraphForwardAndModifySelection:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self editor];
  [v4 textSelectionWillChange];

  v5 = [(CRLWPEditorHelper *)self selection];
  if ([v5 isValid])
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:0 newAnchor:&v13];
    v7 = [(CRLWPEditorHelper *)self textSource];
    v8 = [v7 textRangeForParagraphAtCharIndex:v6];
    v10 = v9;

    v11 = v8 + v10;
    if (v6 < [(CRLWPEditorHelper *)self selectionAnchor]&& [(CRLWPEditorHelper *)self selectionAnchor]< v11)
    {
      v11 = v13;
    }

    [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v11 andAnchor:?];
  }

  v12 = [(CRLWPEditorHelper *)self editor];
  [v12 textSelectionDidChange];
}

- (void)moveParagraphBackwardAndModifySelection:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self editor];
  [v4 textSelectionWillChange];

  v5 = [(CRLWPEditorHelper *)self selection];
  if ([v5 isValid])
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:1 newAnchor:&v11];
    v7 = [(CRLWPEditorHelper *)self textSource];
    v8 = [v7 textRangeForParagraphAtCharIndex:v6];

    if (v6 && v6 == v8)
    {
      v9 = [(CRLWPEditorHelper *)self textSource];
      v8 = [v9 textRangeForParagraphAtCharIndex:v6 - 1];
    }

    if (v6 > [(CRLWPEditorHelper *)self selectionAnchor]&& [(CRLWPEditorHelper *)self selectionAnchor]> v8)
    {
      v8 = v11;
    }

    [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v8 andAnchor:?];
  }

  v10 = [(CRLWPEditorHelper *)self editor];
  [v10 textSelectionDidChange];
}

- (void)moveToBeginningOfDocument:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self selection];
  if ([v4 isValid] && (objc_msgSend(v4, "start") || objc_msgSend(v4, "isRange")))
  {
    [(CRLWPEditorHelper *)self setSelectionWithRange:0 endOfLine:0, 0];
  }
}

- (void)moveToEndOfDocument:(id)a3
{
  v6 = [(CRLWPEditorHelper *)self selection];
  if ([v6 isValid])
  {
    v4 = [(CRLWPEditorHelper *)self textSource];
    v5 = [v4 length];

    if (v5 - 1 != [v6 end] || objc_msgSend(v6, "isRange"))
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v5 - 1 endOfLine:0, 0];
    }
  }
}

- (void)moveToBeginningOfDocumentAndModifySelection:(id)a3
{
  v5 = [(CRLWPEditorHelper *)self editor];
  [v5 textSelectionWillChange];

  v6 = [(CRLWPEditorHelper *)self selection];
  if ([v6 isValid])
  {
    -[CRLWPEditorHelper p_setSelectionWithCharIndex:andAnchor:](self, "p_setSelectionWithCharIndex:andAnchor:", 0, [v6 end]);
  }

  v4 = [(CRLWPEditorHelper *)self editor];
  [v4 textSelectionDidChange];
}

- (void)moveToEndOfDocumentAndModifySelection:(id)a3
{
  v7 = [(CRLWPEditorHelper *)self editor];
  [v7 textSelectionWillChange];

  v8 = [(CRLWPEditorHelper *)self selection];
  if ([v8 isValid])
  {
    v4 = [(CRLWPEditorHelper *)self textSource];
    v5 = [v4 length];

    -[CRLWPEditorHelper p_setSelectionWithCharIndex:andAnchor:](self, "p_setSelectionWithCharIndex:andAnchor:", v5 - 1, [v8 start]);
  }

  v6 = [(CRLWPEditorHelper *)self editor];
  [v6 textSelectionDidChange];
}

- (CGRect)p_viewRectForSelection:(id)a3
{
  v4 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if ([v4 isValid])
  {
    v9 = -[objc_class selectionWithRange:](-[CRLWPEditorHelper wpSelectionClass](self, "wpSelectionClass"), "selectionWithRange:", [v4 start], 0);
    v10 = [(CRLWPEditorHelper *)self editorController];
    v11 = [v10 selectionPath];
    v12 = [(CRLWPEditorHelper *)self selection];
    v13 = [v11 selectionPathPoppingOffSelection:v12];

    v14 = [v13 selectionPathWithAppendedSelection:v9];
    v15 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    v16 = [v15 infoForSelectionPath:v14];

    v17 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    v18 = [v17 layoutForInfoNearestVisibleRect:v16 intersectingSelectionPath:v14];

    v19 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [v19 layoutIfNeeded];

    v20 = objc_opt_class();
    v21 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    v22 = [v21 repForLayout:v18];
    v23 = sub_100014370(v20, v22);

    if (v23)
    {
      if ([v4 isRange])
      {
        [v23 rectForSelection:v4 includeRuby:0 includePaginatedAttachments:0];
      }

      else
      {
        [v23 caretRectForSelection:v4];
      }

      v28 = v24;
      v29 = v25;
      v30 = v26;
      v31 = v27;
      memset(&v46[1], 0, sizeof(CGAffineTransform));
      if (v18)
      {
        [v18 transformInRoot];
      }

      v46[0] = v46[1];
      v47.origin.x = v28;
      v47.origin.y = v29;
      v47.size.width = v30;
      v47.size.height = v31;
      v48 = CGRectApplyAffineTransform(v47, v46);
      v32 = v48.origin.x;
      v33 = v48.origin.y;
      v34 = v48.size.width;
      v35 = v48.size.height;
      v36 = [(CRLWPEditorHelper *)self interactiveCanvasController];
      v37 = [v36 canvas];
      [v37 convertUnscaledToBoundsRect:{v32, v33, v34, v35}];
      x = v38;
      y = v39;
      width = v40;
      height = v41;
    }
  }

  v42 = x;
  v43 = y;
  v44 = width;
  v45 = height;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (BOOL)p_canReplaceSelection
{
  v3 = [(CRLWPEditorHelper *)self selection];
  if ([v3 isValid])
  {
    v4 = [(CRLWPEditorHelper *)self selection];
    v5 = [v4 type] != 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notifySelectionChangedWithFlags:(unint64_t)a3
{
  v5 = +[NSNotificationCenter defaultCenter];
  v11[0] = @"CRLWPEditorKey";
  v6 = [(CRLWPEditorHelper *)self editor];
  v12[0] = v6;
  v11[1] = @"CRLWPEditorSelectionFlagsKey";
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v12[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = [(CRLWPEditorHelper *)self editor];
  v10 = [v9 storage];
  [v5 postNotificationName:@"CRLTPEditorSelectionChanged" object:v10 userInfo:v8];
}

- (void)insertParagraphSeparator:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self editor];
  v3 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:@"\n"];
  [v4 insertText:v3];
}

- (void)insertNewlineIgnoringFieldEditor:(id)a3
{
  v4 = [(CRLWPEditorHelper *)self editor];
  v3 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:@"\n"];
  [v4 insertText:v3];
}

- (BOOL)editorKeyboardLanguageIsRTL
{
  v2 = [(CRLWPEditorHelper *)self editorKeyboardLanguage];
  v3 = [NSLocale characterDirectionForLanguage:v2]== 2;

  return v3;
}

- (const)p_lineFragmentWithCaretInfo:(id *)a3 forSelection:(id)a4
{
  v44 = a4;
  v6 = [(CRLWPEditorHelper *)self textSource];
  v45 = 0;
  v7 = -[CRLWPEditorHelper p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [v44 insertionChar], &v45, 0);
  v8 = v45;
  if (v7 && !v45)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101366088();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013660B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101366138();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_lineFragmentWithCaretInfo:forSelection:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:3990 isFatal:0 description:"Column should not be nil"];

    v8 = v45;
  }

  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_55;
    }

LABEL_16:
    v14 = v7[3];
    v15 = [v44 insertionChar];
    v16 = sub_1002117DC(v7, v15);
    v40 = v16 == 1;
    v42 = [v44 leadingEdge];
    v41 = v14;
    if ((v14 & 0x1000) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    v43 = v17;
    if (v15 < [v6 length])
    {
      v18 = sub_10027F9E8(v15, v6);
      v43 = sub_100281034(v18);
    }

    v19 = (v14 >> 12) & 1;
    if (([v44 isVisual] & 1) != 0 || v15 <= *v7 || (v16 == 1) == -[CRLWPEditorHelper editorKeyboardLanguageIsRTL](self, "editorKeyboardLanguageIsRTL"))
    {
      v39 = v16 == 1;
      if (v39 != v42)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v20 = [(CRLWPEditorHelper *)self textSource];
      v15 = [v20 previousCharacterIndex:{objc_msgSend(v44, "insertionChar")}];

      LOBYTE(v42) = 0;
      if (sub_1002117DC(v7, v15) == 1)
      {
        LOBYTE(v39) = 1;
        v40 = 1;
LABEL_27:
        v21 = v6;
        v22 = objc_opt_class();
        v23 = sub_100014370(v22, v6);
        v24 = sub_1002147B0(v7, v15, 3, v23);

        if (v7[3] < 0)
        {
          v25 = &xmmword_101464828;
        }

        else
        {
          v25 = v7;
        }

        if (v24 == *v25 + *(v25 + 1))
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = sub_1002117DC(v7, v26);
          v28 = sub_10027F9E8(v26, v21);
          LOBYTE(v19) = v27 == 1;
          v17 = sub_100281034(v28);
        }

        if (v15 == sub_10021173C(v7))
        {
          v29 = v39;
          v30 = v15;
          if ((*(v7 + 25) & 8) != 0)
          {
            v31 = v43;
            if ((v41 & 0x1000) == 0)
            {
              v40 = 0;
              v31 = 1;
              v30 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v31 = v43;
          }
        }

        else
        {
          v30 = v15;
          v31 = v43;
          v29 = v39;
        }

        v32 = v40;
LABEL_54:
        a3->var4 = v26;
        a3->var5 = v19;
        a3->var2 = v42;
        a3->var6 = v17;
        a3->var7 = v30;
        a3->var8 = v32;
        a3->var9 = v31;
        a3->var0 = v15;
        a3->var1 = v29;
        a3->var3 = v43;
        v6 = v21;
        goto LABEL_55;
      }

      LOBYTE(v39) = 0;
      v40 = 0;
    }

    v33 = objc_opt_class();
    v34 = sub_100014370(v33, v6);
    v30 = sub_1002147B0(v7, v15, 2, v34);

    v35 = &xmmword_101464828;
    if (v7[3] >= 0)
    {
      v35 = v7;
    }

    if (v30 == *v35 + *(v35 + 1))
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v32 = (v14 & 0x1000) != 0;
    v31 = v17;
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v36 = sub_1002117DC(v7, v30);
      v37 = sub_10027F9E8(v30, v6);
      v32 = v36 == 1;
      v31 = sub_100281034(v37);
    }

    v21 = v6;
    if (v15 == sub_100211708(v7))
    {
      v29 = v39;
      v26 = v15;
      if ((*(v7 + 25) & 8) != 0)
      {
        v17 = v43;
        if ((v41 & 0x1000) != 0)
        {
          v17 = 2;
          v40 = 1;
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v17 = v43;
      }
    }

    else
    {
      v26 = v15;
      v17 = v43;
      v29 = v39;
    }

    LOBYTE(v19) = v40;
    goto LABEL_54;
  }

  v12 = [v8 storage];
  v13 = v12 != v6;

  if (!v13 && v7 != 0)
  {
    goto LABEL_16;
  }

  v7 = 0;
LABEL_55:

  return v7;
}

- (unint64_t)getVisualDeletionIndexForSelection:(id)a3 backward:(BOOL *)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101366160();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101366174();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013661FC();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v9 = [NSString stringWithUTF8String:"[CRLWPEditorHelper getVisualDeletionIndexForSelection:backward:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:4096 isFatal:0 description:"backwards should never be NULL!"];

    v7 = 1;
  }

  v11 = [v6 range];
  if (([v6 isInsertionPoint] & 1) == 0)
  {
    [v6 range];
    if (v12 == 0 || v7)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101366224();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136624C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013662D4();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v14 = [NSString stringWithUTF8String:"[CRLWPEditorHelper getVisualDeletionIndexForSelection:backward:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:4099 isFatal:0 description:"invalid selection type"];
    }
  }

  v16 = [(CRLWPEditorHelper *)self p_lineFragmentWithCaretInfo:&v28 forSelection:v6];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_42;
  }

  if (!v16[1])
  {
    goto LABEL_42;
  }

  if (![v6 isVisual])
  {
    goto LABEL_42;
  }

  if (([v6 isInsertionPoint] & 1) == 0)
  {
    [v6 range];
    if (v18 == 0 || v7)
    {
      goto LABEL_42;
    }
  }

  v19 = *(v17 + 3);
  v20 = &xmmword_101464828;
  if (v19 >= 0)
  {
    v20 = v17;
  }

  v21 = *v20;
  v22 = *(v20 + 1) + (v19 << 52 >> 63);
  if (v30 != v33 && v31 != 3 && v34 != 3)
  {
    if (v30)
    {
      if ([(CRLWPEditorHelper *)self editorKeyboardLanguageIsRTL])
      {
        v23 = v29;
      }

      else
      {
        v23 = v32;
      }

      v7 = v23 == 0x7FFFFFFFFFFFFFFFLL;
      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 += v22;
      }

      else
      {
        v21 = v23;
      }

      goto LABEL_43;
    }

    v25 = [(CRLWPEditorHelper *)self textSource];
    if ([(CRLWPEditorHelper *)self editorKeyboardLanguageIsRTL])
    {
      v26 = v32;
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_57:
        v21 = [v25 nextCharacterIndex:v26];
        goto LABEL_58;
      }

      if ((v30 & 1) == 0)
      {
        v26 = v29;
        goto LABEL_57;
      }
    }

    else
    {
      v26 = v29;
      if (v29 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_57;
      }

      if (v33 == 1)
      {
        v26 = v32;
        goto LABEL_57;
      }
    }

LABEL_58:

    v7 = 1;
    goto LABEL_43;
  }

  if (v30 == v33 || ![v6 isVisual])
  {
LABEL_42:
    v21 = v11;
    goto LABEL_43;
  }

  if (v30 == 1)
  {
    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 += v22;
    }

    else
    {
      v21 = v29;
    }
  }

  else if (v32 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = [(CRLWPEditorHelper *)self textSource];
    v21 = [v27 nextCharacterIndex:v32];
  }

LABEL_43:
  if (a4)
  {
    *a4 = v7;
  }

  return v21;
}

- (id)characterStyleForDeletedRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(CRLWPEditorHelper *)self textSource];
  v6 = [v5 characterStyleAtCharIndex:location effectiveRange:v9];

  v7 = 0;
  if (v6 && v9[0] == location)
  {
    if (v9[1] + location <= location + length)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)p_deleteSelectionBackward:(BOOL)a3 decomposeCharacter:(BOOL)a4 smart:(BOOL)a5 kill:(BOOL)a6
{
  v52 = a3;
  v7 = [(CRLWPEditorHelper *)self editor:a3];
  [v7 unmarkText];

  v49 = [(CRLWPEditorHelper *)self selection];
  if ([v49 isValid])
  {
    v8 = [(CRLWPEditorHelper *)self textSource];
    if ([v8 length])
    {
      v9 = [(CRLWPEditorHelper *)self areCollabUserActionsCurrentlyPermitted];

      if (!v9)
      {
        return;
      }

      v10 = [(CRLWPEditorHelper *)self interactiveCanvasController];
      [v10 layoutIfNeeded];

      v11 = [(CRLWPEditorHelper *)self interactiveCanvasController];
      v12 = [v11 commandController];

      v50 = v12;
      if (!v12)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013662FC();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101366310();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101366398();
        }

        v13 = off_1019EDA68;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v14 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_deleteSelectionBackward:decomposeCharacter:smart:kill:]"];
        v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
        [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:4223 isFatal:0 description:"can't delete without a command controller"];
      }

      v16 = [(CRLWPEditorHelper *)self selection];
      v17 = [v16 superRange];
      v19 = v18;

      v20 = [(CRLWPEditorHelper *)self selection];
      v21 = [v20 range];
      v23 = v22;

      v24 = [(CRLWPEditorHelper *)self textSource];
      v25 = &v17[v19] > [v24 length];

      if (v25)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013663C0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013663E8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101366470();
        }

        v26 = off_1019EDA68;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v27 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_deleteSelectionBackward:decomposeCharacter:smart:kill:]"];
        v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
        [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:4230 isFatal:0 description:"Trying to delete past end of storage"];
      }

      v29 = [(CRLWPEditorHelper *)self textSource];
      v30 = &v21[v23] > [v29 length];

      if (v30)
      {
        goto LABEL_48;
      }

      if (v19)
      {
LABEL_47:
        v46 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:v21, v23];
        v47 = [(CRLWPEditorHelper *)self editor];
        v48 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:&stru_1018BCA28];
        [v47 replace:v46 with:v48];

LABEL_48:
        return;
      }

      v31 = [(CRLWPEditorHelper *)self styleProvider];
      [(CRLWPEditorHelper *)self paragraphEnumeratorAtCharIndex:v17 styleProvider:v31];

      v32 = sub_100240A60(v51);
      if (v52 && v32)
      {
        v33 = sub_100240978(v51);
        v34 = [NSString stringWithFormat:@"%C", 65532, v50];
        v35 = [v33 stringByReplacingOccurrencesOfString:v34 withString:&stru_1018BCA28];

        if (![v35 length] || (sub_10027E214(), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "stringByTrimmingCharactersInSet:", v36), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "length") == 0, v37, v36, v38))
        {
          [(CRLWPEditorHelper *)self p_deleteBackwardsOnEmptyListWithRange:v21 ignoreLevel:v23, 1];

          goto LABEL_46;
        }
      }

      v39 = [(CRLWPEditorHelper *)self selection];
      v21 = [(CRLWPEditorHelper *)self getVisualDeletionIndexForSelection:v39 backward:&v52];

      v40 = [(CRLWPEditorHelper *)self textSource];
      v41 = [v40 length];

      if (v52)
      {
        if (v21)
        {
          v42 = [(CRLWPEditorHelper *)self textSource];
          v43 = [v42 previousCharacterIndex:v21];

LABEL_39:
          if (v21 <= v43)
          {
            v45 = v43;
          }

          else
          {
            v45 = v21;
          }

          if (v21 >= v43)
          {
            v21 = v43;
          }

          v23 = v45 - v21;
        }
      }

      else if (v21 < v41 - 1)
      {
        v44 = [(CRLWPEditorHelper *)self textSource];
        v43 = [v44 nextCharacterIndex:v21];

        goto LABEL_39;
      }

LABEL_46:
      sub_10024068C(v51);
      goto LABEL_47;
    }
  }
}

- (BOOL)wantsToReceiveTextInput
{
  v2 = [(CRLWPEditorHelper *)self editor];
  v3 = [v2 wantsToReceiveTextInput];

  return v3;
}

- (void)deleteBackwardByDecomposingPreviousCharacter:(id)a3
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {

    [(CRLWPEditorHelper *)self p_deleteSelectionBackward:1 decomposeCharacter:1 smart:0 kill:0];
  }
}

- (void)deleteWordForward:(id)a3
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    v7 = [(CRLWPEditorHelper *)self selection];
    v4 = [v7 isValid];

    if (v4)
    {
      v8 = [(CRLWPEditorHelper *)self selection];
      v5 = [v8 isInsertionPoint];

      if (v5)
      {
        v6 = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveWordForwardAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:v6];

        [(CRLWPEditorHelper *)self p_deleteSelectionBackward:0 decomposeCharacter:0 smart:0 kill:0];
      }

      else
      {
        v9 = [(CRLWPEditorHelper *)self editor];
        [v9 deleteForward:0];
      }
    }
  }
}

- (void)deleteWordBackward:(id)a3
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    v7 = [(CRLWPEditorHelper *)self selection];
    v4 = [v7 isValid];

    if (v4)
    {
      v8 = [(CRLWPEditorHelper *)self selection];
      v5 = [v8 isInsertionPoint];

      if (v5)
      {
        v6 = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveWordBackwardAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:v6];

        [(CRLWPEditorHelper *)self p_deleteSelectionBackward:1 decomposeCharacter:0 smart:0 kill:0];
      }

      else
      {
        v9 = [(CRLWPEditorHelper *)self editor];
        [v9 deleteBackward:0];
      }
    }
  }
}

- (void)deleteToBeginningOfLine:(id)a3
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    v4 = [(CRLWPEditorHelper *)self selection];
    v5 = [v4 isValid];

    if (v5)
    {
      v6 = [(CRLWPEditorHelper *)self selection];
      v7 = [v6 isInsertionPoint];

      if (v7)
      {
        v8 = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveToBeginningOfLineAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:v8];
      }

      v9 = [(CRLWPEditorHelper *)self selection];
      v10 = [v9 isInsertionPoint];

      if ((v10 & 1) == 0)
      {

        [(CRLWPEditorHelper *)self p_deleteSelectionBackward:1 decomposeCharacter:0 smart:0 kill:1];
      }
    }
  }
}

- (void)deleteToEndOfLine:(id)a3
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    v4 = [(CRLWPEditorHelper *)self selection];
    v5 = [v4 isValid];

    if (v5)
    {
      v6 = [(CRLWPEditorHelper *)self selection];
      v7 = [v6 isInsertionPoint];

      if (v7)
      {
        v8 = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveToEndOfLineAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:v8];
      }

      v9 = [(CRLWPEditorHelper *)self selection];
      v10 = [v9 isInsertionPoint];

      if ((v10 & 1) == 0)
      {

        [(CRLWPEditorHelper *)self p_deleteSelectionBackward:0 decomposeCharacter:0 smart:0 kill:1];
      }
    }
  }
}

- (void)deleteToBeginningOfParagraph:(id)a3
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    v4 = [(CRLWPEditorHelper *)self selection];
    v5 = [v4 isValid];

    if (v5)
    {
      v6 = [(CRLWPEditorHelper *)self selection];
      v7 = [v6 isInsertionPoint];

      if (v7)
      {
        v8 = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveToBeginningOfParagraphAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:v8];
      }

      v9 = [(CRLWPEditorHelper *)self selection];
      v10 = [v9 isInsertionPoint];

      if ((v10 & 1) == 0)
      {

        [(CRLWPEditorHelper *)self p_deleteSelectionBackward:1 decomposeCharacter:0 smart:0 kill:1];
      }
    }
  }
}

- (void)deleteToEndOfParagraph:(id)a3
{
  if (![(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    return;
  }

  v4 = [(CRLWPEditorHelper *)self selection];
  v5 = [v4 isValid];

  if (!v5)
  {
    return;
  }

  v6 = [(CRLWPEditorHelper *)self selection];
  v7 = [v6 isInsertionPoint];

  if (v7)
  {
    v8 = [(CRLWPEditorHelper *)self continueKillRing];
    [(CRLWPEditorHelper *)self moveToEndOfParagraphAndModifySelection:self];
    [(CRLWPEditorHelper *)self setContinueKillRing:v8];
  }

  v9 = [(CRLWPEditorHelper *)self selection];
  if ([v9 isInsertionPoint])
  {
    v10 = [(CRLWPEditorHelper *)self selection];
    v11 = [v10 range];
    v12 = [(CRLWPEditorHelper *)self textSource];
    if (v11 < [v12 length])
    {
      v13 = [(CRLWPEditorHelper *)self textSource];
      v14 = [(CRLWPEditorHelper *)self selection];
      v15 = sub_10027E2F0([v13 characterAtIndex:{objc_msgSend(v14, "range")}]);

      if (v15)
      {
        v16 = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveForwardAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:v16];
      }

      goto LABEL_11;
    }
  }

LABEL_11:
  v17 = [(CRLWPEditorHelper *)self selection];
  v18 = [v17 isInsertionPoint];

  if ((v18 & 1) == 0)
  {

    [(CRLWPEditorHelper *)self p_deleteSelectionBackward:0 decomposeCharacter:0 smart:0 kill:1];
  }
}

- (void)yank:(id)a3
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    v12 = [(CRLWPEditorHelper *)self selection];
    v4 = [v12 isValid];

    if (v4)
    {
      v13 = sub_1004A2F18();
      v5 = [_TtC8Freeform12CRLTextRange alloc];
      v6 = [(CRLWPEditorHelper *)self selection];
      v7 = [v6 range];
      v9 = [(CRLTextRange *)v5 initWithRange:v7, v8];

      v10 = [(CRLWPEditorHelper *)self editor];
      v11 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:v13];
      [v10 replace:v9 with:v11];

      sub_1004A2F08();
    }
  }
}

- (void)yankAndSelect:(id)a3
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    v11 = [(CRLWPEditorHelper *)self selection];
    v4 = [v11 isValid];

    if (v4)
    {
      v12 = sub_1004A2F80();
      v5 = [(CRLWPEditorHelper *)self selection];
      v6 = [v5 range];
      v7 = [v12 length];

      v8 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:v6, v7];
      v9 = [(CRLWPEditorHelper *)self editor];
      v10 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:v12];
      [v9 replace:v8 with:v10];

      [(CRLWPEditorHelper *)self setSelectionWithRange:v6 endOfLine:v7, 0];
      sub_1004A2F08();
    }
  }
}

- (void)setMark:(id)a3
{
  v7 = [(CRLWPEditorHelper *)self selection];
  v4 = [v7 isValid];

  if (v4)
  {
    v8 = [(CRLWPEditorHelper *)self selection];
    v5 = [v8 range];
    [(CRLWPEditorHelper *)self setEmacsMarkRange:v5, v6];
  }
}

- (_NSRange)p_sanitizeMark
{
  v3 = [(CRLWPEditorHelper *)self emacsMarkRange];
  v5 = v4;
  v6 = [(CRLWPEditorHelper *)self textSource];
  v7 = [v6 length];

  v8 = [(CRLWPEditorHelper *)self textSource];
  v9 = [v8 length];
  if (v3 >= v7)
  {
    v3 = v7;
  }

  if (v5 >= v9 - v3)
  {
    v5 = v9 - v3;
  }

  [(CRLWPEditorHelper *)self emacsMarkRange];
  v10 = v3;
  v11 = v5;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)deleteToMark:(id)a3
{
  v10 = [(CRLWPEditorHelper *)self selection];
  if ([v10 isValid])
  {
    v4 = [(CRLWPEditorHelper *)self emacsMarkRange];

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(CRLWPEditorHelper *)self p_sanitizeMark];
      v7 = v6;
      v11 = [(CRLWPEditorHelper *)self selection];
      v14.location = [v11 range];
      v14.length = v8;
      v13.location = v5;
      v13.length = v7;
      v9 = NSUnionRange(v13, v14);

      if (v9.length)
      {
        [(CRLWPEditorHelper *)self setSelectionWithRange:v9.location endOfLine:v9.length, 0];

        [(CRLWPEditorHelper *)self p_deleteSelectionBackward:0 decomposeCharacter:0 smart:0 kill:1];
      }
    }
  }

  else
  {
  }
}

- (void)selectToMark:(id)a3
{
  v10 = [(CRLWPEditorHelper *)self selection];
  if ([v10 isValid])
  {
    v4 = [(CRLWPEditorHelper *)self emacsMarkRange];

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(CRLWPEditorHelper *)self p_sanitizeMark];
      v7 = v6;
      [(CRLWPEditorHelper *)self setEmacsMarkRange:v5, v6];
      v11 = [(CRLWPEditorHelper *)self selection];
      v14.location = [v11 range];
      v14.length = v8;
      v13.location = v5;
      v13.length = v7;
      v9 = NSUnionRange(v13, v14);

      [(CRLWPEditorHelper *)self setSelectionWithRange:v9.location endOfLine:v9.length, 0];
    }
  }

  else
  {
  }
}

- (void)swapWithMark:(id)a3
{
  v10 = [(CRLWPEditorHelper *)self selection];
  if ([v10 isValid])
  {
    v4 = [(CRLWPEditorHelper *)self emacsMarkRange];

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(CRLWPEditorHelper *)self p_sanitizeMark];
      v7 = v6;
      v11 = [(CRLWPEditorHelper *)self selection];
      v8 = [v11 range];
      [(CRLWPEditorHelper *)self setEmacsMarkRange:v8, v9];

      [(CRLWPEditorHelper *)self setSelectionWithRange:v5 endOfLine:v7, 0];
    }
  }

  else
  {
  }
}

- (void)transpose:(id)a3
{
  v26 = [(CRLWPEditorHelper *)self selection];
  if ([v26 isInsertionPoint])
  {
    v4 = [v26 range];
    v5 = [(CRLWPEditorHelper *)self textSource];
    v6 = [v5 length];
    if (v4 && v4 == v6)
    {
      v4 = [v5 previousCharacterIndex:v4];
    }

    if (v4)
    {
      if (v4 < [v5 length])
      {
        v7 = -[CRLWPEditorHelper p_indexToTransposableCharacterStartingAtIndex:filterStorage:searchTowardsStorageStart:](self, "p_indexToTransposableCharacterStartingAtIndex:filterStorage:searchTowardsStorageStart:", [v5 previousCharacterIndex:v4], v5, 1);
        v8 = [(CRLWPEditorHelper *)self p_indexToTransposableCharacterStartingAtIndex:v4 filterStorage:v5 searchTowardsStorageStart:0];
        if (v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = v8;
          if (v8 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = [v5 nextCharacterIndex:v8];
            if (v7 <= v10)
            {
              v11 = v10;
            }

            else
            {
              v11 = v7;
            }

            if (v7 >= v10)
            {
              v12 = v10;
            }

            else
            {
              v12 = v7;
            }

            v13 = objc_opt_class();
            v14 = [(CRLWPEditorHelper *)self textSource];
            v15 = sub_100014370(v13, v14);

            if (v15)
            {
              v16 = [v5 charRangeMappedToStorage:{v12, v11 - v12}];
              if ([(CRLWPEditorHelper *)self p_storageRangeCanBeTransposed:v16 storage:v17, v15])
              {
                if ([(CRLWPEditorHelper *)self p_filteredRangeCanBeTransposed:v12 inFilteredStorage:v11 - v12, v5])
                {
                  v18 = [v5 charRangeMappedToStorage:{v7, objc_msgSend(v5, "nextCharacterIndex:", v7) - v7}];
                  v20 = v19;
                  v21 = [v5 charRangeMappedToStorage:{v9, objc_msgSend(v5, "nextCharacterIndex:", v9) - v9}];
                  v23 = v22;
                  if ([(CRLWPEditorHelper *)self p_transposeRanges:v18 withRange:v20, v21, v22])
                  {
                    v24 = [(CRLWPEditorHelper *)self editor];
                    v25 = [CRLWPSelection selectionWithRange:&v21[v23], 0];
                    [v24 setSelection:v25];
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)transposeWords:(id)a3
{
  v29 = [(CRLWPEditorHelper *)self selection];
  if ([v29 isInsertionPoint])
  {
    v4 = [v29 range];
    v5 = [(CRLWPEditorHelper *)self textSource];
    v6 = v5;
    if (v4 && v4 < [v5 length] && ((sub_10027E4C4(objc_msgSend(v6, "characterAtIndex:", v4)) & 1) != 0 || sub_10027E4C4(objc_msgSend(v6, "characterAtIndex:", objc_msgSend(v6, "previousCharacterIndex:", v4)))))
    {
      if (sub_10027E3D4([v6 characterAtIndex:{objc_msgSend(v6, "previousCharacterIndex:", v4)}]) && (v4 = objc_msgSend(v6, "previousCharacterIndex:", v4)) == 0)
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        v9 = 0;
      }

      else
      {
        do
        {
          v7 = [v6 wordAtCharIndex:v4 includePreviousWord:1];
          v9 = v8;
          v10 = [v6 previousCharacterIndex:v4];
          v4 = v10;
        }

        while (v7 == 0x7FFFFFFFFFFFFFFFLL && v9 == 0 && v10 != 0);
      }

      if (v7 != 0x7FFFFFFFFFFFFFFFLL && v9)
      {
        v13 = [v6 nextCharacterIndex:v9 + v7];
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        v14 = 0;
        do
        {
          if (v13 >= [v6 length])
          {
            break;
          }

          v15 = [v6 wordAtCharIndex:v13 includePreviousWord:1];
          v14 = v16;
          v13 = [v6 nextCharacterIndex:v13];
        }

        while (v15 == 0x7FFFFFFFFFFFFFFFLL && v14 == 0);
        if (v15 != 0x7FFFFFFFFFFFFFFFLL && v14)
        {
          v18 = [v6 nextCharacterIndex:v14 + v15];
          if (v15 <= v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = v15;
          }

          if (v15 >= v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = v15;
          }

          v21 = objc_opt_class();
          v22 = [(CRLWPEditorHelper *)self textSource];
          v23 = sub_100014370(v21, v22);

          v24 = [v6 charRangeMappedToStorage:{v20, v19 - v20}];
          if ([(CRLWPEditorHelper *)self p_storageRangeCanBeTransposed:v24 storage:v25, v23]&& [(CRLWPEditorHelper *)self p_transposeRanges:v7 withRange:v9, v15, v14])
          {
            v26 = [(CRLWPEditorHelper *)self editor];
            v27 = [v26 textSelectionDelegate];
            v28 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:v14 + v15, 0];
            [v27 setSelectedTextRange:v28];
          }
        }
      }
    }
  }
}

- (BOOL)p_transposeRanges:(_NSRange)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a3.location >= a4.location)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101366498();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013664AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101366534();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_transposeRanges:withRange:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:4734 isFatal:0 description:"bad ranges"];
  }

  if (!a3.length || !length)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136655C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101366584();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136660C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_transposeRanges:withRange:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:4735 isFatal:0 description:"bad range lengths"];
  }

  v42.location = location;
  v42.length = length;
  v12 = NSIntersectionRange(a3, v42).length;
  if (v12)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101366634();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136665C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013666E4();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v14 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_transposeRanges:withRange:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:4737 isFatal:0 description:"overlapping transposition ranges"];
  }

  v16 = objc_opt_class();
  v17 = [(CRLWPEditorHelper *)self textSource];
  v18 = sub_100014370(v16, v17);

  if (!v12)
  {
    v38 = [[_TtC8Freeform12CRLWPStorage alloc] initFromStorage:v18 withRange:a3.location, a3.length];
    v19 = objc_opt_class();
    v20 = [(CRLWPEditorHelper *)self textSource];
    v39 = sub_100014370(v19, v20);

    v37 = [[_TtC8Freeform12CRLWPStorage alloc] initFromStorage:v39 withRange:location, length];
    v21 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    v22 = [v21 commandController];

    [v22 openGroup];
    v23 = [_TtC8Freeform23CRLWPReplaceTextCommand alloc];
    v24 = [(CRLWPEditorHelper *)self editor];
    v25 = [v24 enclosingShape];
    v26 = [v38 string];
    v27 = [(CRLWPReplaceTextCommand *)v23 initWithShapeItem:v25 range:location text:length, v26];

    [v22 enqueueCommand:v27];
    v28 = [_TtC8Freeform23CRLWPReplaceTextCommand alloc];
    v29 = [(CRLWPEditorHelper *)self editor];
    v30 = [v29 enclosingShape];
    v31 = [v37 string];
    v32 = [(CRLWPReplaceTextCommand *)v28 initWithShapeItem:v30 range:a3.location text:a3.length, v31];

    v33 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    v34 = [v33 canvasEditor];

    v35 = [[CRLCanvasCommandSelectionBehavior alloc] initWithCanvasEditor:v34 type:2];
    [v22 enqueueCommand:v32 withSelectionBehavior:v35];
    [v22 closeGroup];
  }

  return v12 == 0;
}

- (id)protectedSelectionBehaviorForCommand:(id)a3
{
  v4 = [CRLCommandSelectionBehavior alloc];
  v5 = [(CRLWPEditorHelper *)self interactiveCanvasController];
  v6 = [v5 editorController];
  v7 = [v6 selectionPath];
  v8 = [(CRLWPEditorHelper *)self interactiveCanvasController];
  v9 = [v8 editorController];
  v10 = [v9 selectionPath];
  v11 = [(CRLCommandSelectionBehavior *)v4 initWithForwardSelectionPath:v7 reverseSelectionPath:v10 selectionFlags:0];

  return v11;
}

- (BOOL)isACurrentEditor
{
  v3 = [(CRLWPEditorHelper *)self editorController];
  v4 = [v3 currentEditors];
  v5 = [(CRLWPEditorHelper *)self editor];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (void)p_replaceRange:(_NSRange)a3 withText:(id)a4 dictationAndAutocorrectionKey:(id)a5 applyingDictationAlternative:(BOOL)a6 restoreSelection:(id)a7
{
  length = a3.length;
  location = a3.location;
  v12 = a4;
  v46 = a5;
  v47 = a7;
  v48 = v12;
  if (!v12)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136670C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101366720();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013667BC();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v14 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_replaceRange:withText:dictationAndAutocorrectionKey:applyingDictationAlternative:restoreSelection:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:4870 isFatal:0 description:"invalid nil value for '%{public}s'", "aStr"];
  }

  v16 = [(CRLWPEditorHelper *)self editor];
  v17 = [v16 storage];
  v18 = location + length > [v17 length];

  if (v18)
  {
    v19 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013667E4();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v62.location = location;
      v62.length = length;
      v45 = NSStringFromRange(v62);
      v44 = [(CRLWPEditorHelper *)self editor];
      v43 = [v44 storage];
      *buf = 67110402;
      v50 = v19;
      v51 = 2082;
      v52 = "[CRLWPEditorHelper p_replaceRange:withText:dictationAndAutocorrectionKey:applyingDictationAlternative:restoreSelection:]";
      v53 = 2082;
      v54 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm";
      v55 = 1024;
      v56 = 4872;
      v57 = 2114;
      v58 = v45;
      v59 = 2048;
      v60 = [v43 length];
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad replacement range %{public}@ is past end of storage: %lu", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136680C();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v22 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_replaceRange:withText:dictationAndAutocorrectionKey:applyingDictationAlternative:restoreSelection:]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    v61.location = location;
    v61.length = length;
    v24 = NSStringFromRange(v61);
    v25 = [(CRLWPEditorHelper *)self editor];
    v26 = [v25 storage];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v22, v23, 4872, 0, "Bad replacement range %{public}@ is past end of storage: %lu", v24, [v26 length]);
  }

  v27 = [(CRLWPEditorHelper *)self editor];
  v28 = [v27 storage];
  v29 = location + length > [v28 length];

  if (!v29)
  {
    v30 = [objc_alloc(-[CRLWPEditorHelper wpSelectionClass](self "wpSelectionClass"))];
    v31 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    v32 = [v31 commandController];

    if (!v32)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101366834();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136685C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013668E4();
      }

      v33 = off_1019EDA68;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v34 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_replaceRange:withText:dictationAndAutocorrectionKey:applyingDictationAlternative:restoreSelection:]"];
      v35 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v34 file:v35 lineNumber:4895 isFatal:0 description:"can't delete without a command controller"];
    }

    v36 = [(CRLWPEditorHelper *)self editor];
    v37 = [_TtC8Freeform12CRLTextRange alloc];
    v38 = [v30 superRange];
    v40 = [(CRLTextRange *)v37 initWithRange:v38, v39];
    v41 = [v36 commandForReplacingTextInRange:v40 withText:v48];

    v42 = [(CRLWPEditorHelper *)self protectedSelectionBehaviorForCommand:v41];
    [v32 enqueueCommand:v41 withSelectionBehavior:v42];
  }
}

- (void)replaceRange:(_NSRange)a3 withText:(id)a4
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v7 = [(CRLWPEditorHelper *)self editor];
  v8 = [v7 wantsToReceiveTextInput];

  if (v8)
  {
    [(CRLWPEditorHelper *)self p_replaceRange:location withText:length dictationAndAutocorrectionKey:v9 applyingDictationAlternative:0 restoreSelection:0, 0];
  }
}

- (void)p_transformWordWithActionString:(id)a3 usingBlock:(id)a4
{
  v38 = a3;
  v6 = a4;
  [(CRLWPEditorHelper *)self selectWord:self];
  v7 = [(CRLWPEditorHelper *)self selection];
  v39 = self;
  LODWORD(self) = [v7 isRange];

  if (self)
  {
    v8 = [(CRLWPEditorHelper *)v39 selection];
    v9 = [v8 range];
    v40 = v10;
    v41 = v9;

    v11 = [(CRLWPEditorHelper *)v39 selection];
    -[CRLWPEditorHelper paragraphEnumeratorAtCharIndex:](v39, "paragraphEnumeratorAtCharIndex:", [v11 range]);

    while (!sub_100240844(v47))
    {
      sub_100240814(v47);
    }

    v12 = [(CRLWPEditorHelper *)v39 interactiveCanvasController];
    v37 = [v12 commandController];

    v36 = objc_opt_new();
    v13 = [(CRLWPEditorHelper *)v39 textSource];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1003D2740;
    v45[3] = &unk_10185D9E0;
    v42 = v36;
    v46 = v42;
    [v13 enumerateSmartFieldsWithAttributeKind:6 inRange:v41 usingBlock:{v40, v45}];

    v14 = [(CRLWPEditorHelper *)v39 editor];
    v15 = [v14 storage];

    v43 = objc_alloc_init(NSMutableArray);
    v44 = objc_opt_new();
    while (1)
    {
      v48.location = sub_100240930(v47);
      v49.length = v40;
      v49.location = v41;
      v16 = NSIntersectionRange(v48, v49);
      v17 = [(CRLWPRangeArray *)[CRLWPMutableRangeArray alloc] initWithRange:v16.location, v16.length];
      if ([v42 intersectsRange:{v16.location, v16.length}])
      {
        [(CRLWPMutableRangeArray *)v17 subtract:v42];
      }

      v18 = [(CRLWPRangeArray *)v17 rangeCount];
      if ((v18 - 1) >= 0)
      {
        do
        {
          v19 = [(CRLWPRangeArray *)v17 rangeAtIndex:--v18];
          if (v20)
          {
            v21 = [v15 charRangeMappedFromStorage:{v19, v20}];
            v23 = v22;
            v24 = v22 - 1;
            v25 = [v15 characterAtIndex:&v21[v22 - 1]];
            if (v23)
            {
              if ((sub_10027E2F0(v25) & 1) == 0 || (v23 = v24) != 0)
              {
                v26 = [v15 substringWithRange:{v21, v23}];
                v27 = v6[2](v6, v26);
                [v27 length];
                [v26 length];
                v28 = v27;

                v29 = [v15 charRangeMappedToStorage:{v21, v23}];
                v31 = v30;
                if ([v28 length])
                {
                  [v43 addObject:v28];
                  [v44 concatenateRange:{v29, v31}];
                }
              }
            }
          }
        }

        while (v18 > 0);
      }

      if (sub_100240AD4(v47))
      {
        break;
      }

      sub_1002407F0(v47);
    }

    if ([v44 rangeCount])
    {
      [v37 openGroup];
      [v37 setCurrentGroupActionString:v38];
      for (i = 0; i < [v44 rangeCount]; ++i)
      {
        v33 = [v43 objectAtIndexedSubscript:i];
        v34 = [v44 rangeAtIndex:i];
        [(CRLWPEditorHelper *)v39 replaceRange:v34 withText:v35, v33];
      }

      [v37 closeGroup];
    }

    sub_10024068C(v47);
  }
}

- (void)uppercaseWord:(id)a3
{
  v5 = +[NSBundle mainBundle];
  v4 = [v5 localizedStringForKey:@"Make Upper Case" value:0 table:@"UndoStrings"];
  [(CRLWPEditorHelper *)self p_transformWordWithActionString:v4 usingBlock:&stru_10185DA20];
}

- (void)lowercaseWord:(id)a3
{
  v5 = +[NSBundle mainBundle];
  v4 = [v5 localizedStringForKey:@"Make Lower Case" value:0 table:@"UndoStrings"];
  [(CRLWPEditorHelper *)self p_transformWordWithActionString:v4 usingBlock:&stru_10185DA40];
}

- (void)capitalizeWord:(id)a3
{
  v5 = +[NSBundle mainBundle];
  v4 = [v5 localizedStringForKey:@"Capitalize" value:0 table:@"UndoStrings"];
  [(CRLWPEditorHelper *)self p_transformWordWithActionString:v4 usingBlock:&stru_10185DA60];
}

- (unint64_t)getVisualInsertionPointIndexForString:(id)a3 selection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLWPEditorHelper *)self interactiveCanvasController];
  [v8 layoutIfNeeded];

  if (![v7 isInsertionPoint] || (objc_msgSend(v7, "isVisual") & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136690C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101366920();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013669A8();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"[CRLWPEditorHelper getVisualInsertionPointIndexForString:selection:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:5122 isFatal:0 description:"invalid selection type"];
  }

  v12 = [v7 range];
  v13 = [(CRLWPEditorHelper *)self p_lineFragmentWithCaretInfo:v60 forSelection:v7];
  if (!v13)
  {
    goto LABEL_100;
  }

  if (![v7 isInsertionPoint])
  {
    goto LABEL_100;
  }

  if (![v7 isVisual])
  {
    goto LABEL_100;
  }

  v14 = v13[3];
  if ((v14 & 0x4000) != 0)
  {
    goto LABEL_100;
  }

  if (v14 < 0)
  {
    v15 = &xmmword_101464828;
  }

  else
  {
    v15 = v13;
  }

  v55 = *(v15 + 1);
  if ([v6 length])
  {
    v56 = sub_100281034([v6 crlwp_utf32CharacterAtIndex:0]);
  }

  else
  {
    v56 = 6;
  }

  v59 = xmmword_101464828;
  v16 = v61;
  if (v61 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [(CRLWPEditorHelper *)self editor];
    v18 = [v17 storage];
    v19 = v16 < [v18 length];

    if (v19)
    {
      v20 = [(CRLWPEditorHelper *)self editor];
      v21 = [v20 storage];
      v22 = [v21 smartFieldAtCharIndex:v61 attributeKind:6 effectiveRange:&v59];

      if (v22)
      {
        if ((*(v13 + 25) & 0x10) != 0)
        {
LABEL_26:
          v12 = v59;

          goto LABEL_100;
        }

LABEL_30:
        v26 = *(&v59 + 1);
        v25 = v59;

        v12 = (v26 + v25);
        goto LABEL_100;
      }
    }
  }

  if (v64 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [(CRLWPEditorHelper *)self editor];
    v24 = [v23 storage];
    v22 = [v24 smartFieldAtCharIndex:v64 attributeKind:6 effectiveRange:&v59];

    if (v22)
    {
      if ((*(v13 + 25) & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  if (v63 == v66)
  {
    goto LABEL_100;
  }

  v27 = v55 + (v14 << 52 >> 63);
  if (v56 == v63)
  {
    v12 = v61;
    if (v61 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = v27 & (v14 << 51 >> 63);
LABEL_40:
      v12 = (v28 + v54);
      goto LABEL_100;
    }

    if ((v62 & 1) == 0)
    {
      v29 = [(CRLWPEditorHelper *)self editor];
      v30 = [v29 storage];
      v12 = [v30 nextCharacterIndex:v61];
    }

    goto LABEL_100;
  }

  if (v56 != v66)
  {
    if ((v56 - 1) >= 3)
    {
      if (sub_100282C0C())
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      v56 = v31;
    }

    sub_100213820(v13, &__p);
    if (v61 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = 0;
    }

    else
    {
      if (v58 == __p)
      {
        goto LABEL_69;
      }

      v35 = 0;
      v36 = 0xCCCCCCCCCCCCCCCDLL * ((v58 - __p) >> 3);
      v37 = v36 - 1;
      if (v36 <= 1)
      {
        v36 = 1;
      }

      v38 = __p + 24;
      while (1)
      {
        v39 = *(v38 - 1);
        v41 = v61 >= v39;
        v40 = &v61[-v39];
        v41 = !v41 || v40 >= *v38;
        if (!v41)
        {
          break;
        }

        v38 += 5;
        if (v36 == ++v35)
        {
          v35 = v36;
          break;
        }
      }

      v32 = v35 + 1;
      if (v35 == 0x7FFFFFFFFFFFFFFELL || v35 >= v37)
      {
        goto LABEL_69;
      }
    }

    v42 = (__p + 40 * v32);
    if (*(v42 + 33) == 1 && v56 == 2)
    {
      if (v64 == v42[2])
      {
        v46 = [(CRLWPEditorHelper *)self editor];
        v47 = [v46 storage];
        v12 = [v47 nextCharacterIndex:*(__p + 5 * v32 + 1)];

        goto LABEL_98;
      }

      goto LABEL_84;
    }

LABEL_69:
    if (v56 != 2 && (v56 != 3 || (v62 & 1) == 0 && v65 != 1 || !sub_100282C0C()))
    {
      if (v62)
      {
        if ((v65 & 1) == 0)
        {
          if ((v14 & 0x1000) != 0)
          {
            v44 = 0;
          }

          else
          {
            v44 = v55 + (v14 << 52 >> 63);
          }

          v45 = (v44 + v54);
          if (v64 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = v45;
          }

          else
          {
            v12 = v64;
          }
        }

        goto LABEL_98;
      }

      if (v61 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v48 = v27 & (v14 << 51 >> 63);
LABEL_95:
        v12 = (v48 + v54);
        goto LABEL_98;
      }

      v49 = [(CRLWPEditorHelper *)self editor];
      v50 = [v49 storage];
      v12 = [v50 nextCharacterIndex:v61];

      goto LABEL_98;
    }

LABEL_84:
    if (v62 == 1)
    {
      if (v61 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = ((v27 & (v14 << 51 >> 63)) + v54);
      }

      else
      {
        v12 = v61;
      }
    }

    else
    {
      if (v65 != 1)
      {
        goto LABEL_98;
      }

      if (v64 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((v14 & 0x1000) != 0)
        {
          v48 = 0;
        }

        else
        {
          v48 = v55 + (v14 << 52 >> 63);
        }

        goto LABEL_95;
      }

      v51 = [(CRLWPEditorHelper *)self editor];
      v52 = [v51 storage];
      v12 = [v52 nextCharacterIndex:v64];
    }

LABEL_98:
    if (__p)
    {
      v58 = __p;
      operator delete(__p);
    }

    goto LABEL_100;
  }

  v12 = v64;
  if (v64 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((v14 & 0x1000) != 0)
    {
      v28 = 0;
    }

    else
    {
      v28 = v55 + (v14 << 52 >> 63);
    }

    goto LABEL_40;
  }

  if (v65 == 1)
  {
    v33 = [(CRLWPEditorHelper *)self editor];
    v34 = [v33 storage];
    v12 = [v34 nextCharacterIndex:v64];
  }

LABEL_100:

  return v12;
}

- (BOOL)p_setVisualSelectionWithCharIndex:(unint64_t)a3 leadingEdge:(BOOL)a4 andAnchor:(unint64_t)a5 andAnchorLeadingEdge:(BOOL)a6
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = a6;
    v10 = a4;
    v30 = 1;
    v13 = objc_opt_class();
    v14 = [(CRLWPEditorHelper *)self textSource];
    v15 = sub_100014370(v13, v14);
    v16 = [CRLWPSelection selectionWithRange:a5 type:0 leadingEdge:7 storage:v8, v15];

    v17 = objc_opt_class();
    v18 = [(CRLWPEditorHelper *)self textSource];
    v19 = sub_100014370(v17, v18);
    v20 = [CRLWPSelection selectionWithRange:a3 type:0 leadingEdge:7 storage:v10, v19];

    v21 = [(CRLWPEditorHelper *)self adjustVisualSelection:v16 withOtherSelection:v20 outLeadingEdge:&v30 outCaretAffinity:0];
    v23 = v21;
    v24 = v22;
    if (v21 == 0x7FFFFFFFFFFFFFFFLL && !v22)
    {
      if (a3 <= a5)
      {
        v25 = a5;
      }

      else
      {
        v25 = a3;
      }

      if (a3 >= a5)
      {
        v23 = a5;
      }

      else
      {
        v23 = a3;
      }

      v24 = v25 - v23;
    }

    v26 = [(CRLWPEditorHelper *)self selection];
    v7 = v23 != [v26 range] || v24 != v27;

    if (v7)
    {
      [(CRLWPEditorHelper *)self setVisualSelectionWithRange:v23 endOfLine:v24, 0];
    }

    [(CRLWPEditorHelper *)self setSelectionAnchor:a5];
    [(CRLWPEditorHelper *)self setSelectionAnchorEdge:v8];
  }

  return v7;
}

- (BOOL)p_setSelectionWithCharIndex:(unint64_t)a3 andAnchor:(unint64_t)a4
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    if (a3 <= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a3;
    }

    if (a3 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = a3;
    }

    v10 = [(CRLWPEditorHelper *)self selection];
    v12 = v8 - v9;
    v5 = v9 != [v10 range] || v12 != v11;

    if (v5)
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v9 endOfLine:v12, 0];
    }

    [(CRLWPEditorHelper *)self setSelectionAnchor:a4];
    [(CRLWPEditorHelper *)self setSelectionAnchorEdge:1];
  }

  return v5;
}

- (unint64_t)p_oppositeEdgeForSelection:(id)a3 withLeadingEdge:(BOOL *)a4
{
  v6 = a3;
  v46 = [v6 leadingEdge];
  v7 = [(CRLWPEditorHelper *)self anchorSelection];
  v8 = [v7 leadingEdge];

  v45 = v8;
  v9 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v6 withLeadingEdge:&v46];
  v10 = [(CRLWPEditorHelper *)self anchorSelection];
  v11 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v10 withLeadingEdge:&v45];

  v38 = 0;
  v39 = &v38;
  v40 = 0x4012000000;
  v41 = sub_1003C4680;
  v42 = nullsub_48;
  v43 = &unk_1016A8115;
  v44 = xmmword_101464828;
  v31 = 0;
  v32 = &v31;
  v33 = 0x4012000000;
  v34 = sub_1003C4680;
  v35 = nullsub_48;
  v36 = &unk_1016A8115;
  v37 = xmmword_101464828;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0x7FF8000000000000;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0x7FF8000000000000;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1003D3A2C;
  v21[3] = &unk_10185DAC8;
  v21[4] = &v38;
  v21[5] = &v27;
  v21[6] = v9;
  v22 = v46;
  [(CRLWPEditorHelper *)self withLineFragmentForCharIndex:v9 eol:0 performBlock:v21];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1003D3AA0;
  v19[3] = &unk_10185DAC8;
  v19[4] = &v31;
  v19[5] = &v23;
  v19[6] = v11;
  v20 = v45;
  [(CRLWPEditorHelper *)self withLineFragmentForCharIndex:v11 eol:0 performBlock:v19];
  v13 = v39[6];
  v12 = v39[7];
  if (__PAIR128__(v12, v13) == *(v32 + 3) && (v13 != 0x7FFFFFFFFFFFFFFFLL || v12))
  {
    if (v28[3] == v24[3])
    {
      v17 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:v6 withLeadingEdge:a4];
LABEL_12:
      v9 = v17;
      goto LABEL_13;
    }
  }

  else if (v13 == 0x7FFFFFFFFFFFFFFFLL && !v12)
  {
    *a4 = 1;
    v14 = [(CRLWPEditorHelper *)self anchorSelection];
    v15 = [v14 start];
    v16 = [v6 start];

    if (v15 == v16)
    {
      v17 = [v6 end];
    }

    else
    {
      v17 = [v6 start];
    }

    goto LABEL_12;
  }

  *a4 = v46;
LABEL_13:
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v38, 8);

  return v9;
}

- (unint64_t)forwardSelectionAnchor
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:0 newAnchor:&v3];
  return v3;
}

- (unint64_t)backwardSelectionAnchor
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:1 newAnchor:&v3];
  return v3;
}

- (unint64_t)p_selectionEdgeToMutateWithDirection:(int64_t)a3 newAnchor:(unint64_t *)a4
{
  v6 = [(CRLWPEditorHelper *)self selection];
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013669D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013669E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101366A80();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_selectionEdgeToMutateWithDirection:newAnchor:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:5379 isFatal:0 description:"invalid nil value for '%{public}s'", "selection"];
  }

  v10 = [v6 superRange];
  v12 = v11;
  v47 = [v6 leadingEdge];
  v46 = [v6 leadingEdge];
  v13 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:v6 withLeadingEdge:&v47];
  v14 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v6 withLeadingEdge:&v46];
  if ([(CRLWPEditorHelper *)self selectionAnchor]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if ([(CRLWPEditorHelper *)self selectionAnchorEdge])
  {
    v15 = [(CRLWPEditorHelper *)self selectionAnchor];
  }

  else
  {
    v19 = [(CRLWPEditorHelper *)self textSource];
    v15 = [v19 nextCharacterIndex:{-[CRLWPEditorHelper selectionAnchor](self, "selectionAnchor")}];
  }

  if (a3 > 5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101366AA8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101366AD0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101366B5C();
    }

    v26 = off_1019EDA68;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v27 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_selectionEdgeToMutateWithDirection:newAnchor:]"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:5415 isFatal:0 description:"illegal text direction: %ld", a3];

    goto LABEL_12;
  }

  if (((1 << a3) & 0x33) != 0)
  {
    if (v15 == v10)
    {
      goto LABEL_35;
    }

    if (v15 == &v10[v12])
    {
      goto LABEL_40;
    }

    goto LABEL_12;
  }

  v20 = v46;
  if (v46 == 1)
  {
    if (v15 == v14)
    {
      v21 = &v47;
      goto LABEL_58;
    }

LABEL_52:
    if (v47 == 1)
    {
      if (v15 == v13)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v29 = [(CRLWPEditorHelper *)self textSource];
      v30 = v15 == [v29 nextCharacterIndex:v13];

      if (v30)
      {
        goto LABEL_56;
      }
    }

LABEL_12:
    if (a3 <= 2)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          if (a3 != 2)
          {
            goto LABEL_22;
          }

          goto LABEL_42;
        }

LABEL_40:
        *a4 = &v10[v12];
        v13 = v10;
        goto LABEL_66;
      }

LABEL_35:
      v13 = &v10[v12];
      *a4 = v10;
      goto LABEL_66;
    }

    if (a3 != 3)
    {
      if (a3 == 4)
      {
        goto LABEL_40;
      }

      if (a3 != 5)
      {
LABEL_22:
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101366B84();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101366BAC();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101366C38();
        }

        v16 = off_1019EDA68;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v17 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_selectionEdgeToMutateWithDirection:newAnchor:]"];
        v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
        [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:5450 isFatal:0 description:"illegal text direction: %ld", a3];

        v13 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_66;
      }

      goto LABEL_35;
    }

LABEL_56:
    v21 = &v46;
    v24 = &v47;
    v25 = v13;
    goto LABEL_57;
  }

  v22 = [(CRLWPEditorHelper *)self textSource];
  v23 = v15 == [v22 nextCharacterIndex:v14];

  if (!v23)
  {
    goto LABEL_52;
  }

LABEL_42:
  v21 = &v47;
  v24 = &v46;
  v25 = v14;
  v14 = v13;
LABEL_57:
  v13 = v14;
  v20 = *v24;
  v14 = v25;
LABEL_58:
  v31 = a4;
  v32 = *v21;
  *a4 = v14;
  if (v32)
  {
    if (v20)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v33 = [(CRLWPEditorHelper *)self textSource];
  v34 = [v33 range];
  v36 = v13 < v34 + v35;

  if (v36)
  {
    v37 = [(CRLWPEditorHelper *)self textSource];
    v13 = [v37 nextCharacterIndex:v13];
  }

  v31 = a4;
  if (!v20)
  {
LABEL_64:
    v38 = *v31;
    v39 = [(CRLWPEditorHelper *)self textSource];
    v40 = [v39 range];
    v42 = v38 < v40 + v41;

    if (v42)
    {
      v43 = [(CRLWPEditorHelper *)self textSource];
      *a4 = [v43 nextCharacterIndex:*a4];
    }
  }

LABEL_66:

  return v13;
}

- (unint64_t)p_selectionEdgeToMutateWithLeadingEdge:(BOOL *)a3 Direction:(int64_t)a4 newAnchor:(unint64_t *)a5 anchorLeadingEdge:(BOOL *)a6
{
  v11 = [(CRLWPEditorHelper *)self selection];
  v12 = v11;
  if (!v11)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101366FC8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101366FDC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101367078();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v19 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_selectionEdgeToMutateWithLeadingEdge:Direction:newAnchor:anchorLeadingEdge:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:5469 isFatal:0 description:"invalid nil value for '%{public}s'", "selection"];

    goto LABEL_16;
  }

  v13 = [v11 range];
  v38 = v14;
  v15 = v13;
  v40 = [v12 leadingEdge];
  v39 = [v12 leadingEdge];
  v16 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:v12 withLeadingEdge:&v40];
  v37 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v12 withLeadingEdge:&v39];
  if ([(CRLWPEditorHelper *)self selectionAnchor]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4 > 5)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101366E10();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101366E38();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101366EC4();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v28 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_selectionEdgeToMutateWithLeadingEdge:Direction:newAnchor:anchorLeadingEdge:]"];
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:5506 isFatal:0 description:"illegal text direction: %ld", a4];
LABEL_53:

      goto LABEL_54;
    }

    if (((1 << a4) & 0x33) != 0)
    {
      if ([(CRLWPEditorHelper *)self selectionAnchorEdge])
      {
        v17 = [(CRLWPEditorHelper *)self selectionAnchor];
      }

      else
      {
        v26 = [(CRLWPEditorHelper *)self textSource];
        v17 = [v26 nextCharacterIndex:{-[CRLWPEditorHelper selectionAnchor](self, "selectionAnchor")}];
      }

      if (v17 == v15)
      {
        *a3 = 1;
LABEL_62:
        v16 = v15 + v38;
        *a5 = v15;
        goto LABEL_76;
      }

      if (v17 == (v15 + v38))
      {
        *a3 = 1;
        goto LABEL_63;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101366D38();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101366D60();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101366DE8();
      }

      v30 = off_1019EDA68;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v28 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_selectionEdgeToMutateWithLeadingEdge:Direction:newAnchor:anchorLeadingEdge:]"];
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:5487 isFatal:0 description:"Invalid selection anchor"];
      goto LABEL_53;
    }

    v21 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:[(CRLWPEditorHelper *)self selectionAnchor] leadingEdge:[(CRLWPEditorHelper *)self selectionAnchorEdge]];
    if (v21 != [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:v37 leadingEdge:v39])
    {
      v22 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:[(CRLWPEditorHelper *)self selectionAnchor] leadingEdge:[(CRLWPEditorHelper *)self selectionAnchorEdge]];
      if (v22 != [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:v16 leadingEdge:v40])
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101366C60();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101366C88();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101366D10();
        }

        v23 = off_1019EDA68;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v36 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_selectionEdgeToMutateWithLeadingEdge:Direction:newAnchor:anchorLeadingEdge:]"];
        v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
        [CRLAssertionHandler handleFailureInFunction:v36 file:v24 lineNumber:5497 isFatal:0 description:"Invalid selection anchor"];
      }
    }

    v25 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:[(CRLWPEditorHelper *)self selectionAnchor] leadingEdge:[(CRLWPEditorHelper *)self selectionAnchorEdge]];
    if (v25 == [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:v37 leadingEdge:v39])
    {
      *a3 = 1;
LABEL_58:
      *a3 = v40;
      *a5 = v37;
      *a6 = v39;
      goto LABEL_76;
    }

    v34 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:[(CRLWPEditorHelper *)self selectionAnchor] leadingEdge:[(CRLWPEditorHelper *)self selectionAnchorEdge]];
    if (v34 == [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:v16 leadingEdge:v40])
    {
      *a3 = 1;
      goto LABEL_75;
    }
  }

LABEL_54:
  *a3 = 1;
  if (a4 <= 2)
  {
    switch(a4)
    {
      case 0:
        goto LABEL_62;
      case 1:
LABEL_63:
        *a5 = v15 + v38;
        v16 = v15;
        goto LABEL_76;
      case 2:
        goto LABEL_58;
    }

    goto LABEL_64;
  }

  switch(a4)
  {
    case 3:
LABEL_75:
      *a3 = v39;
      *a5 = v16;
      *a6 = v40;
      v16 = v37;
      goto LABEL_76;
    case 4:
      goto LABEL_63;
    case 5:
      goto LABEL_62;
  }

LABEL_64:
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101366EEC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101366F14();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101366FA0();
  }

  v31 = off_1019EDA68;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v32 = [NSString stringWithUTF8String:"[CRLWPEditorHelper p_selectionEdgeToMutateWithLeadingEdge:Direction:newAnchor:anchorLeadingEdge:]"];
  v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
  [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:5540 isFatal:0 description:"illegal text direction: %ld", a4];

LABEL_16:
  v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_76:

  return v16;
}

- (int64_t)p_layoutIndexForCharIndex:(unint64_t)a3 leadingEdge:(BOOL)a4
{
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11[3] = v4;
    v11[4] = v5;
    v7 = a4;
    v8 = a3;
    v11[0] = 0;
    v9 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:a3 column:v11 eol:0];
    if (v9)
    {
      return sub_100212E40(v9, v8, v7);
    }

    return v8;
  }

  return v6;
}

- (unint64_t)p_indexToTransposableCharacterStartingAtIndex:(unint64_t)a3 filterStorage:(id)a4 searchTowardsStorageStart:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  while ([v7 characterAtIndex:a3] == 65532)
  {
    if (a3 || !v5)
    {
      v8 = v5 ? [v7 previousCharacterIndex:a3] : objc_msgSend(v7, "nextCharacterIndex:", a3);
      a3 = v8;
      if (v8 < [v7 length])
      {
        continue;
      }
    }

    a3 = 0x7FFFFFFFFFFFFFFFLL;
    break;
  }

  return a3;
}

- (_TtC8Freeform11CRLWPEditor)editor
{
  WeakRetained = objc_loadWeakRetained(&self->_editor);

  return WeakRetained;
}

- (_NSRange)emacsMarkRange
{
  length = self->_emacsMarkRange.length;
  location = self->_emacsMarkRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)lastAutocorrectionRange
{
  length = self->_lastAutocorrectionRange.length;
  location = self->_lastAutocorrectionRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end