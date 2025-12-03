@interface CRLWPEditorHelper
- (BOOL)editorKeyboardLanguageIsRTL;
- (BOOL)hasWhitespaceBoundedWordAtSelection:(id)selection;
- (BOOL)isACurrentEditor;
- (BOOL)p_adjustSelection:(id)selection forWordWithCharIndex:(unint64_t)index;
- (BOOL)p_canReplaceSelection;
- (BOOL)p_isCharIndex:(unint64_t)index withEolAffinity:(BOOL)affinity atBoundary:(int64_t)boundary inDirection:(int64_t)direction;
- (BOOL)p_isCharIndex:(unint64_t)index withinTextUnit:(int64_t)unit inDirection:(int64_t)direction;
- (BOOL)p_isEdgeAtCharIndex:(unint64_t)index leadingEdge:(BOOL)edge withinWordInDirection:(int64_t)direction;
- (BOOL)p_isLayoutLeftToRightAtCharIndex:(unint64_t)index;
- (BOOL)p_setSelectionWithCharIndex:(unint64_t)index andAnchor:(unint64_t)anchor;
- (BOOL)p_setVisualSelectionWithCharIndex:(unint64_t)index leadingEdge:(BOOL)edge andAnchor:(unint64_t)anchor andAnchorLeadingEdge:(BOOL)leadingEdge;
- (BOOL)p_transposeRanges:(_NSRange)ranges withRange:(_NSRange)range;
- (BOOL)p_withLineFragmentsForLogicalLineContainingCharIndex:(unint64_t)index eol:(BOOL)eol performBlock:(id)block;
- (BOOL)wantsToReceiveTextInput;
- (CGRect)p_viewRectForSelection:(id)selection;
- (CRLWPEditorHelper)initWithTextSource:(id)source icc:(id)icc layout:(id)layout;
- (CRLWPParagraphEnumerator)paragraphEnumeratorAtCharIndex:(SEL)index styleProvider:(unint64_t)provider;
- (CRLWPTextSource)textSource;
- (_NSRange)adjustVisualSelection:(id)selection withOtherSelection:(id)otherSelection outLeadingEdge:(BOOL *)edge outCaretAffinity:(unint64_t *)affinity;
- (_NSRange)availableSelectionRangeForCharIndex:(unint64_t)index;
- (_NSRange)emacsMarkRange;
- (_NSRange)lastAutocorrectionRange;
- (_NSRange)p_expandParagraphRangeForEnumerator:(CRLWPParagraphEnumerator *)enumerator;
- (_NSRange)p_rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex handleNextWordWhitespace:(BOOL)whitespace;
- (_NSRange)p_sanitizeMark;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)index backward:(BOOL)backward;
- (_NSRange)scanLeftForWordAtCharIndex:(unint64_t)index;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index includingBreaks:(BOOL)breaks;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation;
- (_TtC8Freeform11CRLWPEditor)editor;
- (_TtC8Freeform11CRLWPLayout)layout;
- (__CFStringTokenizer)createTokenizerForCharIndex:(unint64_t)index outTokenizerRange:(_NSRange *)range;
- (const)p_lineFragmentForCharIndex:(unint64_t)index column:(id *)column eol:(BOOL)eol;
- (const)p_lineFragmentWithCaretInfo:(id *)info forSelection:(id)selection;
- (id)calculateVisualRunsFromSelection:(id)selection updateControllerSelection:(BOOL)controllerSelection;
- (id)characterStyleForDeletedRange:(_NSRange)range;
- (id)editorController;
- (id)editorKeyboardLanguage;
- (id)logicalToVisualSelection:(id)selection;
- (id)protectedSelectionBehaviorForCommand:(id)command;
- (id)selection;
- (int64_t)p_layoutIndexForCharIndex:(unint64_t)index leadingEdge:(BOOL)edge;
- (int64_t)p_writingDirectionForCharAtIndex:(unint64_t)index;
- (unint64_t)backwardSelectionAnchor;
- (unint64_t)caretCharIndexForLayoutOrderCharIndex:(unint64_t)index inDirection:(int64_t)direction;
- (unint64_t)charIndexForBeginningOfLineFromCharIndex:(unint64_t)index;
- (unint64_t)charIndexForEndOfLineFromCharIndex:(unint64_t)index;
- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)index inDirection:(int64_t)direction;
- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)index leadingEdge:(BOOL *)edge inDirection:(int64_t)direction skipAnchors:(BOOL)anchors useLeadingEdgeOfNextLine:(BOOL)line;
- (unint64_t)charIndexMovingByWordFromCharIndex:(unint64_t)index leadingEdge:(BOOL *)edge inDirection:(int64_t)direction;
- (unint64_t)forwardSelectionAnchor;
- (unint64_t)getVisualDeletionIndexForSelection:(id)selection backward:(BOOL *)backward;
- (unint64_t)getVisualInsertionPointIndexForString:(id)string selection:(id)selection;
- (unint64_t)p_adjustedCharIndexForWordTestingFromCharIndex:(unint64_t)index leadingEdge:(BOOL)edge forDirection:(int64_t)direction;
- (unint64_t)p_charIndexByMovingCharIndex:(unint64_t)index withEolAffinity:(BOOL *)affinity toBoundary:(int64_t)boundary inDirection:(int64_t)direction preferPosition:(double *)position isLeadingEdge:(BOOL *)edge;
- (unint64_t)p_charIndexByMovingPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction preferPosition:(double *)preferPosition outEolAffinity:(unint64_t *)affinity;
- (unint64_t)p_indexToTransposableCharacterStartingAtIndex:(unint64_t)index filterStorage:(id)storage searchTowardsStorageStart:(BOOL)start;
- (unint64_t)p_lastVisibleCharIndexForCharIndex:(unint64_t)index;
- (unint64_t)p_layoutOrderCharIndexForCaretCharIndex:(unint64_t)index inDirection:(int64_t)direction;
- (unint64_t)p_leftCharForInsertion:(id *)insertion;
- (unint64_t)p_leftEdgeForSelection:(id)selection withLeadingEdge:(BOOL *)edge;
- (unint64_t)p_lineIndexForMovingCharIndex:(unint64_t)index column:(id *)column up:(BOOL)up atStart:(BOOL)start eol:(BOOL *)eol;
- (unint64_t)p_moveFromCharIndex:(unint64_t *)index leadingEdge:(BOOL *)edge tokenizerRef:(__CFStringTokenizer *)ref tokenizerRange:(_NSRange *)range direction:(int64_t)direction currentWordRange:(_NSRange)wordRange newWordRange:(_NSRange *)newWordRange reasonToStop:(unint64_t)self0;
- (unint64_t)p_oppositeEdgeForSelection:(id)selection withLeadingEdge:(BOOL *)edge;
- (unint64_t)p_rightEdgeForSelection:(id)selection withLeadingEdge:(BOOL *)edge;
- (unint64_t)p_selectionEdgeToMutateWithDirection:(int64_t)direction newAnchor:(unint64_t *)anchor;
- (unint64_t)p_selectionEdgeToMutateWithLeadingEdge:(BOOL *)edge Direction:(int64_t)direction newAnchor:(unint64_t *)anchor anchorLeadingEdge:(BOOL *)leadingEdge;
- (void)capitalizeWord:(id)word;
- (void)deleteBackwardByDecomposingPreviousCharacter:(id)character;
- (void)deleteToBeginningOfLine:(id)line;
- (void)deleteToBeginningOfParagraph:(id)paragraph;
- (void)deleteToEndOfLine:(id)line;
- (void)deleteToEndOfParagraph:(id)paragraph;
- (void)deleteToMark:(id)mark;
- (void)deleteWordBackward:(id)backward;
- (void)deleteWordForward:(id)forward;
- (void)insertNewlineIgnoringFieldEditor:(id)editor;
- (void)insertParagraphSeparator:(id)separator;
- (void)lowercaseWord:(id)word;
- (void)moveBackward:(id)backward;
- (void)moveBackwardAndModifySelection:(id)selection;
- (void)moveDown:(id)down;
- (void)moveDownAndModifySelection:(id)selection;
- (void)moveForward:(id)forward;
- (void)moveForwardAndModifySelection:(id)selection;
- (void)moveParagraphBackward:(id)backward;
- (void)moveParagraphBackwardAndModifySelection:(id)selection;
- (void)moveParagraphForward:(id)forward;
- (void)moveParagraphForwardAndModifySelection:(id)selection;
- (void)moveToBeginningOfDocument:(id)document;
- (void)moveToBeginningOfDocumentAndModifySelection:(id)selection;
- (void)moveToBeginningOfLine:(id)line;
- (void)moveToBeginningOfLineAndModifySelection:(id)selection;
- (void)moveToBeginningOfParagraph:(id)paragraph;
- (void)moveToBeginningOfParagraphAndModifySelection:(id)selection;
- (void)moveToEndOfDocument:(id)document;
- (void)moveToEndOfDocumentAndModifySelection:(id)selection;
- (void)moveToEndOfLine:(id)line;
- (void)moveToEndOfLineAndModifySelection:(id)selection;
- (void)moveToEndOfParagraph:(id)paragraph;
- (void)moveToEndOfParagraphAndModifySelection:(id)selection;
- (void)moveUp:(id)up;
- (void)moveUpAndModifySelection:(id)selection;
- (void)moveWordAndModifySelectionInStorageDirection:(int64_t)direction;
- (void)moveWordBackward:(id)backward;
- (void)moveWordForward:(id)forward;
- (void)moveWordInLayoutDirection:(int64_t)direction;
- (void)notifySelectionChangedWithFlags:(unint64_t)flags;
- (void)p_adjustSelection:(id)selection withOtherSelection:(id)otherSelection textSelectionGranularity:(unint64_t)granularity;
- (void)p_deleteSelectionBackward:(BOOL)backward decomposeCharacter:(BOOL)character smart:(BOOL)smart kill:(BOOL)kill;
- (void)p_extendToEndOfLineRight:(BOOL)right;
- (void)p_moveAndModifySelectionRight:(BOOL)right;
- (void)p_moveInLineLayoutDirectionLeft:(BOOL)left;
- (void)p_moveToEndOfLineRight:(BOOL)right;
- (void)p_moveWordAndModifySelectionInLayoutDirection:(int64_t)direction;
- (void)p_replaceRange:(_NSRange)range withText:(id)text dictationAndAutocorrectionKey:(id)key applyingDictationAlternative:(BOOL)alternative restoreSelection:(id)selection;
- (void)p_selection:(id)p_selection toGlyphRange:(id *)range;
- (void)p_setSelectionFromKeyboardWithRange:(_NSRange)range leadingEdge:(BOOL)edge endOfLine:(BOOL)line allowEndOfLineChange:(BOOL)change;
- (void)p_transformWordWithActionString:(id)string usingBlock:(id)block;
- (void)p_withLayoutTargetForCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity performBlock:(id)block;
- (void)p_withLineIndexForCharIndex:(unint64_t)index eol:(BOOL)eol performBlock:(id)block;
- (void)replaceRange:(_NSRange)range withText:(id)text;
- (void)selectLine:(id)line;
- (void)selectParagraph:(id)paragraph;
- (void)selectToMark:(id)mark;
- (void)selectWordWithFlags:(unint64_t)flags;
- (void)setMark:(id)mark;
- (void)setSelectionOfType:(unint64_t)type withRange:(_NSRange)range endOfLine:(BOOL)line withFlags:(unint64_t)flags;
- (void)swapWithMark:(id)mark;
- (void)transpose:(id)transpose;
- (void)transposeWords:(id)words;
- (void)uppercaseWord:(id)word;
- (void)withLineFragmentForCharIndex:(unint64_t)index eol:(BOOL)eol performBlock:(id)block;
- (void)yank:(id)yank;
- (void)yankAndSelect:(id)select;
@end

@implementation CRLWPEditorHelper

- (id)editorKeyboardLanguage
{
  if (+[NSThread isMainThread])
  {
    v0 = +[UIApplication sharedApplication];
    textInputMode = [v0 textInputMode];
    primaryLanguage = [textInputMode primaryLanguage];

    if (([primaryLanguage isEqualToString:@"dictation"] & 1) == 0)
    {
      objc_storeStrong(&qword_101A349D0, primaryLanguage);
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

  firstObject = v10;
  if (!firstObject)
  {
    v12 = +[NSBundle mainBundle];
    preferredLocalizations = [v12 preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];

    if (!firstObject)
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

      firstObject = 0;
    }
  }

  return firstObject;
}

- (CRLWPTextSource)textSource
{
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, self->_textSource);
  copyWithMarkedText = [v4 copyWithMarkedText];

  return copyWithMarkedText;
}

- (CRLWPEditorHelper)initWithTextSource:(id)source icc:(id)icc layout:(id)layout
{
  sourceCopy = source;
  iccCopy = icc;
  layoutCopy = layout;
  v15.receiver = self;
  v15.super_class = CRLWPEditorHelper;
  v12 = [(CRLWPEditorHelper *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_textSource, source);
    objc_storeStrong(&v13->_interactiveCanvasController, icc);
    v13->_selectionAnchor = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v13->_layout, layout);
  }

  return v13;
}

- (id)editorController
{
  interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];

  return editorController;
}

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  wordCopy = word;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0;
  textSource = [(CRLWPEditorHelper *)self textSource];
  range = [textSource range];
  v12 = v11;

  textSource2 = [(CRLWPEditorHelper *)self textSource];
  string = [textSource2 string];

  if (CFStringGetLength(string) <= index)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(string, index);
    LOBYTE(v16) = 0;
    if (CharacterAtIndex && range + v12 > index)
    {
      v16 = sub_10027E3D4(CharacterAtIndex) ^ 1;
    }
  }

  if (wordCopy && range < index)
  {
    v17 = CFStringGetCharacterAtIndex(string, index - 1);
    v18 = sub_10027E3D4(v17);
    LOBYTE(v16) = v18 ^ 1 | v16;
    if (!v18)
    {
      --index;
    }
  }

  if (v16)
  {
    if (v12)
    {
      v28.location = range;
      v28.length = v12;
      v19 = CFStringTokenizerCreate(0, string, v28, 4uLL, 0);
      if (v19)
      {
        v20 = v19;
        if (CFStringTokenizerGoToTokenAtIndex(v19, index))
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

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex
{
  v4 = [(CRLWPEditorHelper *)self p_rangeForSelectionAtCharIndex:index caretIndex:caretIndex handleNextWordWhitespace:1];
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index
{
  v3 = [(CRLWPEditorHelper *)self whiteSpaceRangeAtCharIndex:index includingBreaks:1];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index includingBreaks:(BOOL)breaks
{
  v7 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:?];
  v9 = v8;
  textSource = [(CRLWPEditorHelper *)self textSource];
  if ([textSource length] <= index)
  {

    goto LABEL_28;
  }

  textSource2 = [(CRLWPEditorHelper *)self textSource];
  v12 = sub_10027E3D4([textSource2 characterAtIndex:index]);

  if (!v12)
  {
LABEL_28:
    v26 = 0;
    indexCopy2 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_29;
  }

  indexCopy2 = index;
  if (v7 < index)
  {
    indexCopy2 = index;
    do
    {
      textSource3 = [(CRLWPEditorHelper *)self textSource];
      v15 = indexCopy2 - 1;
      v16 = [textSource3 characterAtIndex:indexCopy2 - 1];
      v17 = sub_10027E3D4(v16);
      if (!v17 || breaks)
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

      --indexCopy2;
    }

    while (v15 > v7);
    indexCopy2 = v7;
  }

LABEL_15:
  v20 = v7 + v9;
  if (v7 + v9 > index)
  {
    do
    {
      textSource4 = [(CRLWPEditorHelper *)self textSource];
      v22 = [textSource4 characterAtIndex:index];
      v23 = sub_10027E3D4(v22);
      if (!v23 || breaks)
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

      ++index;
    }

    while (v20 != index);
    index = v20;
  }

LABEL_26:
  v26 = index - indexCopy2;
LABEL_29:
  v27 = indexCopy2;
  result.length = v26;
  result.location = v27;
  return result;
}

- (BOOL)hasWhitespaceBoundedWordAtSelection:(id)selection
{
  selectionCopy = selection;
  v38 = 0;
  if ([selectionCopy isVisual])
  {
    superRange = [selectionCopy superRange];
    if (&superRange[v6] > [(CRLWPTextSource *)self->_textSource length])
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

    interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [interactiveCanvasController layoutIfNeeded];

    v11 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:selectionCopy withLeadingEdge:&v38];
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
      v29 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:selectionCopy withLeadingEdge:&v38];
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
      range = [selectionCopy range];
      v27 = [(CRLWPTextSource *)textSource isAllWhitespaceInRange:range, v36];
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

  if (![selectionCopy isValid])
  {
    goto LABEL_44;
  }

  if (![selectionCopy isRange])
  {
    goto LABEL_44;
  }

  range2 = [selectionCopy range];
  v17 = v16;
  v18 = +[NSCharacterSet crlwp_preSmartSet];
  v19 = [v18 characterIsMember:{-[CRLWPTextSource characterAtIndex:](self->_textSource, "characterAtIndex:", range2)}];

  if ((v19 & 1) == 0 && [(CRLWPTextSource *)self->_textSource wordAtCharIndex:range2 includePreviousWord:0]!= range2)
  {
    goto LABEL_44;
  }

  v20 = [(CRLWPTextSource *)self->_textSource characterAtIndex:&range2[v17 - 1]];
  if (sub_10027E2F0(v20))
  {
    goto LABEL_46;
  }

  v21 = +[NSCharacterSet crlwp_postSmartSet];
  v22 = [v21 characterIsMember:v20];

  if ((v22 & 1) != 0 || (v23 = [(CRLWPTextSource *)self->_textSource wordAtCharIndex:&range2[v17] includePreviousWord:1], v25 = 0, v26 = 1, v24) && &v23[v24] == &range2[v17])
  {
    v27 = [(CRLWPTextSource *)self->_textSource isAllWhitespaceInRange:range2, v17];
    goto LABEL_48;
  }

LABEL_49:

  return v25 & v26;
}

- (_NSRange)scanLeftForWordAtCharIndex:(unint64_t)index
{
  v5 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:?];
  indexCopy3 = index;
  if (v5 + v6 > index)
  {
    textSource = [(CRLWPEditorHelper *)self textSource];
    v9 = sub_10027E3D4([textSource characterAtIndex:index]);

    indexCopy3 = index;
    if (v9)
    {
      v10 = [(CRLWPEditorHelper *)self whiteSpaceRangeAtCharIndex:index];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        indexCopy3 = index;
      }

      else
      {
        indexCopy3 = v10;
      }
    }
  }

  v11 = [(CRLWPEditorHelper *)self wordAtCharIndex:index includePreviousWord:1];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = indexCopy3;
  }

  v12 = index - v11;
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  v4 = [(CRLWPEditorHelper *)self wordAtCharIndex:index includePreviousWord:word includeHyphenation:0];
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation
{
  hyphenationCopy = hyphenation;
  wordCopy = word;
  textSource = [(CRLWPEditorHelper *)self textSource];
  v10 = [textSource textRangeForParagraphAtCharIndex:index];
  v12 = v11;

  textSource2 = [(CRLWPEditorHelper *)self textSource];
  string = [textSource2 string];
  v15 = [string crlwp_rangeOfWordAtCharacterIndex:index range:v10 includePreviousWord:v12 includeHyphenation:{wordCopy, hyphenationCopy}];
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.length = v19;
  result.location = v18;
  return result;
}

- (_NSRange)p_rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex handleNextWordWhitespace:(BOOL)whitespace
{
  whitespaceCopy = whitespace;
  v7 = caretIndex - 1;
  if (index != caretIndex && v7 != index)
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
  v11 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:caretIndex];
  v13 = v11;
  v14 = v12;
  if (v11 <= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v11;
  }

  if (v12 - 1 < indexCopy - v11)
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
  if (indexCopy >= v13 + v14)
  {
    v21 = 0;
  }

  else
  {
    textSource = [(CRLWPEditorHelper *)self textSource];
    v21 = [textSource characterAtIndex:indexCopy];
  }

  if (!sub_10027E41C(v21))
  {
    if (whitespaceCopy && sub_10027E3D4(v21))
    {
      if (indexCopy != caretIndex || !indexCopy || v13 >= index)
      {
        v37 = indexCopy;
        if (indexCopy + 1 == caretIndex)
        {
          if (v19 <= caretIndex)
          {
            caretIndexCopy = indexCopy;
          }

          else
          {
            caretIndexCopy = caretIndex;
          }

          v37 = caretIndexCopy;
        }
      }

      textSource2 = [(CRLWPEditorHelper *)self textSource];
      v26 = [textSource2 characterAtIndex:v37];

      if ((sub_10027E3D4(v26) & 1) == 0)
      {
        v27 = sub_10027E41C(v26);
        v28 = v37;
        if (!v27)
        {
          goto LABEL_47;
        }
      }

      v23 = [(CRLWPEditorHelper *)self whiteSpaceRangeAtCharIndex:indexCopy includingBreaks:0];
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = v29;
        v28 = indexCopy;
        if (v29)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }
    }

    v28 = indexCopy;
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
      textSource3 = [(CRLWPEditorHelper *)self textSource];
      string = [textSource3 string];
      v23 = [string rangeOfComposedCharacterSequenceAtIndex:v30];
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

- (CRLWPParagraphEnumerator)paragraphEnumeratorAtCharIndex:(SEL)index styleProvider:(unint64_t)provider
{
  v13 = a5;
  textSource = [(CRLWPEditorHelper *)self textSource];
  textSource2 = [(CRLWPEditorHelper *)self textSource];
  v10 = [textSource2 paragraphIndexAtCharIndex:provider];
  textSource3 = [(CRLWPEditorHelper *)self textSource];
  sub_1002407EC(retstr, textSource, v13, v10, [textSource3 paragraphCount] - 1, 1);

  return result;
}

- (id)selection
{
  v3 = objc_opt_class();
  editorController = [(CRLWPEditorHelper *)self editorController];
  editor = [(CRLWPEditorHelper *)self editor];
  v6 = [editorController selectionForEditor:editor];
  v7 = sub_100014370(v3, v6);

  return v7;
}

- (void)setSelectionOfType:(unint64_t)type withRange:(_NSRange)range endOfLine:(BOOL)line withFlags:(unint64_t)flags
{
  lineCopy = line;
  length = range.length;
  location = range.location;
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  lineCopy = [[CRLWPSelection alloc] initWithType:type range:location styleInsertionBehavior:length caretAffinity:0, lineCopy];
  editorController = [(CRLWPEditorHelper *)self editorController];
  currentEditors = [editorController currentEditors];
  lastObject = [currentEditors lastObject];
  editor2 = [(CRLWPEditorHelper *)self editor];

  if (lastObject == editor2)
  {
    if ([(CRLWPSelection *)lineCopy isInsertionPoint])
    {
      interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
      editingDisabled = [interactiveCanvasController editingDisabled];

      if (editingDisabled)
      {
        editor3 = [(CRLWPEditorHelper *)self editor];
        [editor3 endEditingAndSelectParent:self];
LABEL_23:

        goto LABEL_24;
      }
    }

    editorController2 = [(CRLWPEditorHelper *)self editorController];
    editor4 = [(CRLWPEditorHelper *)self editor];
    editor3 = [editorController2 selectionForEditor:editor4];

    v21 = objc_opt_class();
    v22 = sub_100014370(v21, editor3);
    range = [v22 range];
    if (range == location || &range[v24] == (location + length))
    {
      v25 = 1;
    }

    else
    {
      v25 = 0;
      flags |= 4uLL;
    }

    editorController3 = [(CRLWPEditorHelper *)self editorController];
    selectionPath = [editorController3 selectionPath];
    v28 = [selectionPath selectionPathReplacingMostSpecificLocationOfSelection:editor3 withSelection:lineCopy];

    interactiveCanvasController2 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [interactiveCanvasController2 setSelectionPath:v28 withSelectionFlags:flags];

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

    selection = [(CRLWPEditorHelper *)self selection];
    superRange = [v22 superRange];
    v34 = v33;
    superRange2 = [selection superRange];
    v37 = superRange2;
    if (superRange != superRange2 || v34 != v36)
    {
      if (superRange == superRange2)
      {
        v37 = &superRange[v36];
        v38 = 1;
        goto LABEL_19;
      }

      if (&superRange[v34] == &superRange2[v36])
      {
        v38 = 0;
LABEL_19:
        if (v37 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = [CRLWPSelection alloc];
          type = [selection type];
          styleInsertionBehavior = [selection styleInsertionBehavior];
          smartFieldRange = [selection smartFieldRange];
          LOBYTE(v50) = 1;
          v44 = [(CRLWPSelection *)v39 initWithType:type range:v37 styleInsertionBehavior:0 caretAffinity:styleInsertionBehavior smartFieldRange:v38 leadingEdge:smartFieldRange leadingCharIndex:v43, v50, v37];
          editorController4 = [(CRLWPEditorHelper *)self editorController];
          selectionPath2 = [editorController4 selectionPath];
          v47 = [selectionPath2 selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:v44];

          interactiveCanvasController3 = [(CRLWPEditorHelper *)self interactiveCanvasController];
          [interactiveCanvasController3 scrollToSelectionPath:v47 scrollOptions:1];
        }
      }
    }

    goto LABEL_22;
  }

LABEL_24:
  editor5 = [(CRLWPEditorHelper *)self editor];
  [editor5 textSelectionDidChange];
}

- (unint64_t)p_moveFromCharIndex:(unint64_t *)index leadingEdge:(BOOL *)edge tokenizerRef:(__CFStringTokenizer *)ref tokenizerRange:(_NSRange *)range direction:(int64_t)direction currentWordRange:(_NSRange)wordRange newWordRange:(_NSRange *)newWordRange reasonToStop:(unint64_t)self0
{
  [(CRLWPEditorHelper *)self paragraphEnumeratorAtCharIndex:*index];
  textSource = [(CRLWPEditorHelper *)self textSource];
  location = wordRange.location;
  if (wordRange.location == -1)
  {
    v42 = 0;
    v43 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = [textSource charRangeMappedFromStorage:{wordRange.location, wordRange.length}];
    v42 = v16;
    v43 = v15;
  }

  newWordRangeCopy = newWordRange;
  v17 = *index;
  while (1)
  {
    newWordRangeCopy = [(CRLWPEditorHelper *)self p_adjustedCharIndexForWordTestingFromCharIndex:v17 leadingEdge:*edge forDirection:direction, newWordRangeCopy];
    if (newWordRangeCopy == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_49;
    }

    v19 = *ref;
    if (!*ref)
    {
      goto LABEL_13;
    }

    if (newWordRangeCopy < range->location || newWordRangeCopy - range->location >= range->length)
    {
      CFRelease(v19);
      *ref = 0;
LABEL_13:
      v19 = [(CRLWPEditorHelper *)self createTokenizerForCharIndex:newWordRangeCopy outTokenizerRange:range];
      *ref = v19;
    }

    v21 = CFStringTokenizerGoToTokenAtIndex(v19, newWordRangeCopy);
    if ((stop & 2) != 0 && !v21)
    {
      v35 = 2;
      goto LABEL_50;
    }

    v22 = location;
    if (!v21)
    {
      goto LABEL_32;
    }

    v23 = location == 0x7FFFFFFFFFFFFFFFLL && wordRange.length == 0;
    v24 = v23;
    if ((stop & 4) != 0 && !v24)
    {
      break;
    }

    if ((stop & 8) != 0)
    {
      *newWordRangeCopy = CFStringTokenizerGetCurrentTokenRange(*ref);
      v35 = 8;
      goto LABEL_50;
    }

LABEL_32:
    v33 = *edge;
    v34 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:*index leadingEdge:edge inDirection:direction skipAnchors:0];
    v17 = v34;
    location = v22;
    if (v34 == *index)
    {
      if (*edge == v33 || v34 == 0x7FFFFFFFFFFFFFFFLL)
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

    *index = v34;
  }

  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*ref);
  v26 = [textSource charRangeMappedFromStorage:{CurrentTokenRange.location, CurrentTokenRange.length}];
  v28 = v27;
  v48.location = v22;
  v48.length = wordRange.length;
  v41 = sub_1002BC8E0(v48, CurrentTokenRange);
  v30 = v29;
  v49.length = v42;
  v49.location = v43;
  v50.location = v26;
  v50.length = v28;
  v31 = sub_1002BC8E0(v49, v50);
  if (CurrentTokenRange.location == v22 && CurrentTokenRange.length == wordRange.length || v32 | v31 && (v30 || !v41))
  {
    goto LABEL_32;
  }

  *newWordRangeCopy = CurrentTokenRange;
  v35 = 4;
LABEL_50:

  sub_10024068C(&v47);
  return v35;
}

- (__CFStringTokenizer)createTokenizerForCharIndex:(unint64_t)index outTokenizerRange:(_NSRange *)range
{
  textSource = [(CRLWPEditorHelper *)self textSource];
  v8 = [textSource textRangeForParagraphAtCharIndex:index];
  v10 = v9;

  range->location = v8;
  range->length = v10;
  textSource2 = [(CRLWPEditorHelper *)self textSource];
  string = [textSource2 string];
  v13 = CFStringTokenizerCreate(0, string, *range, 0, 0);

  CFStringTokenizerGoToTokenAtIndex(v13, index);
  return v13;
}

- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)index inDirection:(int64_t)direction
{
  textSource = [(CRLWPEditorHelper *)self textSource];

  if (!textSource)
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

  textSource2 = [(CRLWPEditorHelper *)self textSource];
  v12 = textSource2 == 0;

  if (v12)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:index leadingEdge:0 inDirection:direction skipAnchors:1];
  }
}

- (_NSRange)p_expandParagraphRangeForEnumerator:(CRLWPParagraphEnumerator *)enumerator
{
  location = sub_100240930(enumerator);
  length = v5;
  if (!sub_100240AD4(enumerator))
  {
    sub_1002407F0(enumerator);
    v18.location = sub_100240930(enumerator);
    v18.length = v7;
    v16.location = location;
    v16.length = length;
    v8 = NSUnionRange(v16, v18);
    location = v8.location;
    length = v8.length;
    sub_100240814(enumerator);
  }

  if (sub_100240844(enumerator))
  {
    v9 = location;
    v10 = length;
  }

  else
  {
    sub_100240814(enumerator);
    v12.location = sub_100240930(enumerator);
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

- (BOOL)p_isLayoutLeftToRightAtCharIndex:(unint64_t)index
{
  interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
  [interactiveCanvasController layoutIfNeeded];

  v8 = 0;
  v6 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:index column:&v8 eol:0];
  return !v6 || sub_1002117DC(v6, index) == 0;
}

- (id)calculateVisualRunsFromSelection:(id)selection updateControllerSelection:(BOOL)controllerSelection
{
  controllerSelectionCopy = controllerSelection;
  selectionCopy = selection;
  if (([selectionCopy validVisualRanges] & 1) != 0 || objc_msgSend(selectionCopy, "isInsertionPoint"))
  {
    v7 = selectionCopy;
    goto LABEL_4;
  }

  selfCopy = self;
  if ([selectionCopy type] != 7)
  {
    v7 = selectionCopy;
    if (controllerSelectionCopy)
    {
      goto LABEL_193;
    }

    goto LABEL_4;
  }

  start = [selectionCopy start];
  textSource = [(CRLWPEditorHelper *)self textSource];
  v10 = [selectionCopy end];
  textSource2 = [(CRLWPEditorHelper *)self textSource];
  characterCount = [textSource2 characterCount];
  if (characterCount >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = characterCount;
  }

  v14 = [textSource previousCharacterIndex:v13];

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
  [(CRLWPEditorHelper *)self withLineFragmentForCharIndex:start eol:0 performBlock:v111];
  v96 = controllerSelectionCopy;
  if (!v117[3] || ![selectionCopy isRange] || !v113[3] && (v110[0] = _NSConcreteStackBlock, v110[1] = 3221225472, v110[2] = sub_1003C19EC, v110[3] = &unk_10185CFA8, v110[4] = v120, v110[5] = &v112, -[CRLWPEditorHelper withLineFragmentForCharIndex:eol:performBlock:](self, "withLineFragmentForCharIndex:eol:performBlock:", v14, 0, v110), !v113[3]))
  {
    v100 = v14;
    goto LABEL_187;
  }

  v15 = sub_100212D9C(v117[3], start);
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
    v22 = v21 + v20 <= [selectionCopy end];
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
  v27 = start;
  if (v26 == v113[3] && v15 > v16)
  {
    v28 = start;
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
  start = v27;
  if (v18)
  {
    if (v97 < 0)
    {
      v26 = &xmmword_101464828;
    }

    v29 = *v26;
    if (v29 >= [selectionCopy start])
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
      range = [selectionCopy range];
      v63 = v62;
LABEL_183:
      [v99 addRange:{range, v63}];
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
    v71 = selfCopy;
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

      range = *v76;
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
            textSource3 = [(CRLWPEditorHelper *)v71 textSource];
            v87 = [textSource3 nextCharacterIndex:v100];
            if (v83 >= v87)
            {
              v83 = v87;
            }

            v79 = 1;
            v71 = selfCopy;
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
          textSource4 = [(CRLWPEditorHelper *)v71 textSource];
          v89 = [textSource4 nextCharacterIndex:v100];
          if (v83 >= v89)
          {
            v83 = v89;
          }

          v71 = selfCopy;
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
    v42 = start >= v39 && &start[-v39] < v40;
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
        if (start <= &v40[v39])
        {
          v48 = &v40[v39];
        }

        else
        {
          v48 = start;
        }

        if (start >= &v40[v39])
        {
          v46 = &v40[v39];
        }

        else
        {
          v46 = start;
        }

        v47 = v48 - v46;
        goto LABEL_82;
      }

      textSource5 = [(CRLWPEditorHelper *)selfCopy textSource];
      v49 = [textSource5 nextCharacterIndex:start];
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

      textSource5 = [(CRLWPEditorHelper *)selfCopy textSource];
      v44 = [textSource5 nextCharacterIndex:start];
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
          textSource6 = [(CRLWPEditorHelper *)selfCopy textSource];
          v52 = [textSource6 nextCharacterIndex:v100];
          if (start <= v52)
          {
            v53 = v52;
          }

          else
          {
            v53 = start;
          }

          if (start >= v52)
          {
            v46 = v52;
          }

          else
          {
            v46 = start;
          }
        }

        else
        {
          textSource6 = [(CRLWPEditorHelper *)selfCopy textSource];
          v55 = [textSource6 nextCharacterIndex:v100];
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

        textSource6 = [(CRLWPEditorHelper *)selfCopy textSource];
        v54 = [textSource6 nextCharacterIndex:start];
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

  self = selfCopy;
LABEL_187:
  if ([v99 rangeCount])
  {
    textSource7 = [(CRLWPEditorHelper *)self textSource];
    v92 = [textSource7 isWritingDirectionRightToLeftForParagraphAtCharIndex:{objc_msgSend(selectionCopy, "start")}];
    v7 = [selectionCopy copyWithVisualRanges:v99 headCharIndex:start tailCharIndex:v100 rightToLeft:v92 sameLine:v117[3] == v113[3]];
  }

  else if ([selectionCopy isRange])
  {
    v7 = [selectionCopy copyWithNewType:0];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v116, 8);
  _Block_object_dispose(v120, 8);

  _Block_object_dispose(v122, 8);
  self = selfCopy;
  if (v96)
  {
LABEL_193:
    selection = [(CRLWPEditorHelper *)self selection];
    v94 = [selection isEqual:v7];

    if ((v94 & 1) == 0)
    {
      editorController = [(CRLWPEditorHelper *)selfCopy editorController];
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 3221225472;
      v102[2] = sub_1003C1AD8;
      v102[3] = &unk_10185D010;
      v102[4] = selfCopy;
      v7 = v7;
      v103 = v7;
      [editorController performBlockAfterSettingSelection:v102];
    }
  }

LABEL_4:

  return v7;
}

- (void)p_selection:(id)p_selection toGlyphRange:(id *)range
{
  p_selectionCopy = p_selection;
  range->var6 = [p_selectionCopy isInsertionPoint];
  rawRange = [p_selectionCopy rawRange];
  v8 = rawRange;
  if (range->var6)
  {
    range->var7 = 0;
    p_var7 = &range->var7;
    v29 = 0;
    v30 = 0;
    v10 = rawRange;
  }

  else
  {
    v10 = [p_selectionCopy end] - 1;
    range->var7 = 0;
    p_var7 = &range->var7;
    var6 = range->var6;
    v29 = 0;
    v30 = 0;
    if (!var6)
    {
      goto LABEL_6;
    }
  }

  if ([p_selectionCopy caretAffinity] == 1)
  {
    leadingEdge = [p_selectionCopy leadingEdge];
    goto LABEL_7;
  }

LABEL_6:
  leadingEdge = 0;
LABEL_7:
  var0 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:v8 column:&v30 eol:leadingEdge];
  range->var0 = var0;
  v14 = leadingEdge ^ 1;
  if (var0)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    var0 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:v8 - 1 column:&v30 eol:1];
    range->var0 = var0;
  }

  v15 = var0;
  if (!range->var6)
  {
    v15 = -[CRLWPEditorHelper p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", v10, &v29, [p_selectionCopy caretAffinity] == 1);
    var0 = range->var0;
  }

  range->var1 = v15;
  if (var0)
  {
    if (*(var0 + 1))
    {
      if (range->var6)
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

        if (v18 == [p_selectionCopy leadingEdge])
        {
          v22 = range->var0;
          editor = [(CRLWPEditorHelper *)self editor];
          storage = [editor storage];
          v8 = sub_1002147B0(v22, v8, 2, storage);
        }

        if (v8 == 0x7FFFFFFFFFFFFFFFLL || (-[CRLWPEditorHelper editor](self, "editor"), v25 = objc_claimAutoreleasedReturnValue(), [v25 storage], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "length"), v26, v25, v8 == v27))
        {
          v8 = sub_10021173C(range->var0);
          *p_var7 = 1;
        }

        v28 = sub_100212D9C(range->var0, v8);
        range->var2 = v28;
        range->var3 = v8;
        range->var4 = v28;
        range->var5 = v8;
      }

      else if (v15)
      {
        range->var2 = sub_100212D9C(var0, v8);
        v20 = sub_100212D9C(range->var1, v10);
        range->var3 = v8;
        range->var4 = v20;
        range->var5 = v10;
        if (range->var0 == range->var1)
        {
          var2 = range->var2;
          if (var2 >= v20 != (*(range->var0 + 25) & 0x10) >> 4)
          {
            range->var2 = v20;
            range->var3 = v10;
            range->var4 = var2;
            range->var5 = v8;
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

      range->var2 = 0;
      range->var3 = v19;
      range->var4 = 0;
      range->var5 = v8 - 1;
    }
  }
}

- (unint64_t)p_leftCharForInsertion:(id *)insertion
{
  var0 = insertion->var0;
  editor = [(CRLWPEditorHelper *)self editor];
  storage = [editor storage];

  var3 = insertion->var3;
  if (*(var0 + 1))
  {
    var7 = insertion->var7;
    v10 = insertion->var3;
    if (!var7)
    {
      v10 = sub_1002147B0(var0, var3, 3, storage);
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

        v13 = [storage previousCharacterIndex:*v12];
      }
    }

    else
    {
      if (v10 != [storage characterCount])
      {
LABEL_15:
        var3 = v10;
        goto LABEL_16;
      }

      v13 = [storage previousCharacterIndex:v10];
    }

    v10 = v13;
    goto LABEL_15;
  }

LABEL_16:

  return var3;
}

- (_NSRange)adjustVisualSelection:(id)selection withOtherSelection:(id)otherSelection outLeadingEdge:(BOOL *)edge outCaretAffinity:(unint64_t *)affinity
{
  selectionCopy = selection;
  otherSelectionCopy = otherSelection;
  v12 = objc_opt_class();
  textSource = [(CRLWPEditorHelper *)self textSource];
  v53 = sub_100014370(v12, textSource);

  rawRange = 0x7FFFFFFFFFFFFFFFLL;
  v15 = 0;
  if (edge)
  {
    *edge = 1;
  }

  if (affinity)
  {
    *affinity = 0;
  }

  v16 = [(CRLWPEditorHelper *)self calculateVisualRunsFromSelection:selectionCopy updateControllerSelection:0];

  v17 = [(CRLWPEditorHelper *)self calculateVisualRunsFromSelection:otherSelectionCopy updateControllerSelection:0];

  [(CRLWPEditorHelper *)self p_selection:v16 toGlyphRange:&v61];
  [(CRLWPEditorHelper *)self p_selection:v17 toGlyphRange:&v54];
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(v61), vceqzq_s64(v54)))) & 1) == 0)
  {
    if (v63 == v56 && v65 == v58 && v66 == v60)
    {
      if (edge)
      {
        *edge = [v16 leadingEdge];
      }

      if (affinity)
      {
        *affinity = [v16 caretAffinity];
      }

      rawRange = [v16 rawRange];
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
                  rawRange = v48;
                }

                else
                {
                  rawRange = v32;
                }

LABEL_141:
                v15 = v49 - rawRange;
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
                rawRange = v50;
              }

              else
              {
                rawRange = v19;
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

    visualRanges = [v16 visualRanges];
    if ([visualRanges containsCharacterAtIndex:v56])
    {
      visualRanges2 = [v16 visualRanges];
      v23 = [visualRanges2 containsCharacterAtIndex:v58];

      if (v23)
      {
        v24 = v56;
        superRange = [v16 superRange];
        if (v24 <= superRange + (v26 >> 1))
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
            rawRange = v31;
          }

          else
          {
            rawRange = v30;
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
          rawRange = v47;
        }

        else
        {
          rawRange = v63;
        }

LABEL_88:
        v15 = v45 - rawRange;
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
      rawRange = v43;
    }

    else
    {
      rawRange = v44;
    }

    goto LABEL_88;
  }

LABEL_142:

  v51 = rawRange;
  v52 = v15;
  result.length = v52;
  result.location = v51;
  return result;
}

- (void)p_adjustSelection:(id)selection withOtherSelection:(id)otherSelection textSelectionGranularity:(unint64_t)granularity
{
  selectionCopy = selection;
  otherSelectionCopy = otherSelection;
  if ([selectionCopy isValid] && objc_msgSend(otherSelectionCopy, "isValid"))
  {
    [selectionCopy superRange];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1003C2B98;
    v49[3] = &unk_10185D038;
    selectionCopy = selectionCopy;
    v50 = selectionCopy;
    v9 = otherSelectionCopy;
    v51 = v9;
    v46 = objc_retainBlock(v49);
    if ([v9 type] == 7 && !objc_msgSend(selectionCopy, "type"))
    {
      v10 = [(CRLWPEditorHelper *)self logicalToVisualSelection:selectionCopy];

      v11 = [(CRLWPEditorHelper *)self calculateVisualRunsFromSelection:v10 updateControllerSelection:0];

      selectionCopy = v11;
    }

    if ([v9 type] == 7 && objc_msgSend(selectionCopy, "type") == 7)
    {
      v48 = 1;
      v47 = 0;
      v12 = [(CRLWPEditorHelper *)self adjustVisualSelection:selectionCopy withOtherSelection:v9 outLeadingEdge:&v48 outCaretAffinity:&v47];
      v45 = v13;
      v14 = v12;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = (v46[2])();
        v45 = v16;
        v14 = v15;
      }

      selection = [(CRLWPEditorHelper *)self selection];
      if ([selection isValid])
      {
        selection2 = [(CRLWPEditorHelper *)self selection];
        range = [selection2 range];
        v21 = v20;

        if (range == v14 && v21 == v45)
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
      textSource = [(CRLWPEditorHelper *)self textSource];
      v34 = sub_100014370(v32, textSource);
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
      selection3 = [(CRLWPEditorHelper *)self selection];
      if ([selection3 isValid])
      {
        selection4 = [(CRLWPEditorHelper *)self selection];
        range2 = [selection4 range];
        v30 = v29;

        if (range2 == v23 && v30 == v25)
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
    editorController = [(CRLWPEditorHelper *)self editorController];
    editor = [(CRLWPEditorHelper *)self editor];
    [editorController setSelection:v22 forEditor:editor withFlags:8];

    if (selectionLastModifiedWithKeyboard)
    {
      editorController2 = [(CRLWPEditorHelper *)self editorController];
      selectionPath = [editorController2 selectionPath];
      v40 = [selectionPath selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:v9];

      interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
      [interactiveCanvasController scrollToSelectionPath:v40 scrollOptions:1];
    }

    goto LABEL_25;
  }

LABEL_26:
}

- (unint64_t)p_adjustedCharIndexForWordTestingFromCharIndex:(unint64_t)index leadingEdge:(BOOL)edge forDirection:(int64_t)direction
{
  edgeCopy = edge;
  indexCopy = index;
  edgeCopy2 = edge;
  if (direction < 2)
  {
    if (!edge)
    {
      textSource = [(CRLWPEditorHelper *)self textSource];
      indexCopy = [textSource nextCharacterIndex:indexCopy];
    }

    if (direction != 1)
    {
      textSource2 = [(CRLWPEditorHelper *)self textSource];
      indexCopy = [textSource2 charIndexRemappedFromStorage:indexCopy];

      return indexCopy;
    }

    v14 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:indexCopy inDirection:1];
    if (v14 == indexCopy)
    {
      indexCopy = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      indexCopy = v14;
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

  else if ((direction - 2) > 1)
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
    v9 = [(CRLWPEditorHelper *)self p_isLayoutLeftToRightAtCharIndex:index];
    v10 = 2;
    if (v9 != edgeCopy)
    {
      v10 = 3;
    }

    if (v10 != direction)
    {
      v11 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:indexCopy leadingEdge:&edgeCopy2 inDirection:direction skipAnchors:0];
      if (v11 == indexCopy)
      {
        if (edgeCopy2 == edgeCopy)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = indexCopy;
        }

        if (indexCopy != 0x7FFFFFFFFFFFFFFFLL)
        {
          return v12;
        }
      }

      else
      {
        indexCopy = v11;
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return indexCopy;
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

  return indexCopy;
}

- (_NSRange)availableSelectionRangeForCharIndex:(unint64_t)index
{
  v4 = objc_opt_class();
  textSource = [(CRLWPEditorHelper *)self textSource];
  v6 = sub_100014370(v4, textSource);

  copyWithMarkedText = [v6 copyWithMarkedText];
  v8 = [_TtC8Freeform12CRLTextRange textRangeForAllOf:copyWithMarkedText];
  nsRange = [v8 nsRange];
  v11 = v10;

  v12 = nsRange;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (unint64_t)charIndexMovingByWordFromCharIndex:(unint64_t)index leadingEdge:(BOOL *)edge inDirection:(int64_t)direction
{
  if (edge)
  {
    v9 = *edge;
  }

  else
  {
    v9 = 1;
  }

  v32 = v9;
  if (direction > 3)
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
    if (!edge)
    {
      return result;
    }

    goto LABEL_36;
  }

  textSource = [(CRLWPEditorHelper *)self textSource];
  v11 = [_TtC8Freeform12CRLTextRange textRangeForAllOf:textSource];
  nsRange = [v11 nsRange];
  v14 = v13;

  indexCopy = index;
  v30 = xmmword_101464828;
  v15 = [(CRLWPEditorHelper *)self p_adjustedCharIndexForWordTestingFromCharIndex:index leadingEdge:v32 forDirection:direction];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  v29 = xmmword_101464828;
  cf = [(CRLWPEditorHelper *)self createTokenizerForCharIndex:v15 outTokenizerRange:&v29];
  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(cf);
  v18 = [(CRLWPEditorHelper *)self p_moveFromCharIndex:&indexCopy leadingEdge:&v32 tokenizerRef:&cf tokenizerRange:&v29 direction:direction currentWordRange:CurrentTokenRange.location newWordRange:CurrentTokenRange.length reasonToStop:&v30, 7];
  if (CurrentTokenRange.location == 0x7FFFFFFFFFFFFFFFLL && !CurrentTokenRange.length || (v19 = indexCopy, indexCopy == index))
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
    [(CRLWPEditorHelper *)self p_moveFromCharIndex:&indexCopy leadingEdge:&v32 tokenizerRef:&cf tokenizerRange:&v29 direction:direction currentWordRange:0x7FFFFFFFFFFFFFFFLL newWordRange:0 reasonToStop:&v30, 8];
LABEL_12:
    v19 = indexCopy;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v19 >= nsRange)
    {
      v26 = nsRange + v14;
      index = v19;
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
      index = v26;
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
      index = nsRange;
    }
  }

LABEL_52:
  result = index;
  if (!edge)
  {
    return result;
  }

LABEL_36:
  *edge = v32;
  return result;
}

- (const)p_lineFragmentForCharIndex:(unint64_t)index column:(id *)column eol:(BOOL)eol
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  *column = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003C3C58;
  v7[3] = &unk_10185D1E0;
  v7[4] = &v8;
  v7[5] = column;
  [(CRLWPEditorHelper *)self withLineFragmentForCharIndex:index eol:eol performBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)p_withLineFragmentsForLogicalLineContainingCharIndex:(unint64_t)index eol:(BOOL)eol performBlock:(id)block
{
  eolCopy = eol;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003C3DA4;
  v10[3] = &unk_10185D208;
  blockCopy = block;
  v12 = &v13;
  v8 = blockCopy;
  [(CRLWPEditorHelper *)self p_withLineIndexForCharIndex:index eol:eolCopy performBlock:v10];
  LOBYTE(eolCopy) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return eolCopy;
}

- (unint64_t)p_lastVisibleCharIndexForCharIndex:(unint64_t)index
{
  layout = [(CRLWPEditorHelper *)self layout];
  v10 = sub_1003035DC(layout, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLWPLayoutTarget);

  if (v10)
  {
    columns = [v10 columns];
    v12 = [CRLWPColumn rangeOfColumns:columns];
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

- (unint64_t)p_lineIndexForMovingCharIndex:(unint64_t)index column:(id *)column up:(BOOL)up atStart:(BOOL)start eol:(BOOL *)eol
{
  upCopy = up;
  *column = 0;
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
  v10 = *eol;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1003C4690;
  v22[3] = &unk_10185D270;
  v22[8] = index;
  v22[9] = eol;
  v22[4] = self;
  v22[5] = &v29;
  upCopy2 = up;
  v22[6] = &v25;
  v22[7] = &v36;
  v22[10] = column;
  startCopy = start;
  [(CRLWPEditorHelper *)self p_withLayoutTargetForCharIndex:index eolAffinity:v10 performBlock:v22];
  v11 = v37[3];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v30[6];
    v13 = v30[7];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL || v13)
    {
      if (upCopy)
      {
        textSource = [(CRLWPEditorHelper *)self textSource];
        v15 = sub_10027EB4C(v12, textSource);

        if ((v26[3] & 0x300) == 0x100)
        {
          v15 = v30[6];
        }
      }

      else
      {
        textSource2 = [(CRLWPEditorHelper *)self textSource];
        v15 = sub_10027F35C(v13 + v12, textSource2);
        textSource3 = [(CRLWPEditorHelper *)self textSource];
        v18 = [textSource3 length];
        if (v18 < v15)
        {
          v15 = v18;
        }
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1003C4C08;
      v20[3] = &unk_10185D298;
      v21 = upCopy;
      v20[4] = &v36;
      v20[5] = v15;
      v20[6] = column;
      [(CRLWPEditorHelper *)self p_withLayoutTargetForCharIndex:v15 eolAffinity:upCopy performBlock:v20];
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

- (void)p_withLineIndexForCharIndex:(unint64_t)index eol:(BOOL)eol performBlock:(id)block
{
  eolCopy = eol;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003C4E4C;
  v9[3] = &unk_10185D2C0;
  eolCopy2 = eol;
  blockCopy = block;
  indexCopy = index;
  v8 = blockCopy;
  [(CRLWPEditorHelper *)self p_withLayoutTargetForCharIndex:index eolAffinity:eolCopy performBlock:v9];
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
    interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
    textSource = [(CRLWPEditorHelper *)self textSource];
    v8 = objc_opt_class();
    v14 = sub_1003038E0(textSource, v8, 1, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLCanvasElementInfo);
    v15 = [interactiveCanvasController layoutForInfo:v14];
    v3 = sub_100014370(v5, v15);
  }

  return v3;
}

- (void)p_withLayoutTargetForCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity performBlock:(id)block
{
  blockCopy = block;
  layout = [(CRLWPEditorHelper *)self layout];
  v13 = sub_1003035DC(layout, 1, v7, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLWPLayoutTarget);

  blockCopy[2](blockCopy, v13);
}

- (void)withLineFragmentForCharIndex:(unint64_t)index eol:(BOOL)eol performBlock:(id)block
{
  eolCopy = eol;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003C5278;
  v9[3] = &unk_10185D328;
  blockCopy = block;
  v8 = blockCopy;
  [(CRLWPEditorHelper *)self p_withLineIndexForCharIndex:index eol:eolCopy performBlock:v9];
}

- (unint64_t)caretCharIndexForLayoutOrderCharIndex:(unint64_t)index inDirection:(int64_t)direction
{
  indexCopy = index;
  if (direction >= 2)
  {
    if ((direction - 2) > 1)
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
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }

      v7 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:index];
      v9 = v8;
      interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
      [interactiveCanvasController layoutIfNeeded];

      v19[0] = 0;
      v11 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:indexCopy column:v19 eol:0];
      if (v11)
      {
        editor = [(CRLWPEditorHelper *)self editor];
        storage = [editor storage];
        v14 = sub_10021401C(v11, indexCopy, storage);

        if (v14 <= v7 + v9 && v14 >= v7)
        {
          return v14;
        }
      }
    }
  }

  return indexCopy;
}

- (unint64_t)p_layoutOrderCharIndexForCaretCharIndex:(unint64_t)index inDirection:(int64_t)direction
{
  indexCopy = index;
  if (direction >= 2)
  {
    if ((direction - 2) > 1)
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
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }

      v7 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:index];
      v9 = v8;
      interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
      [interactiveCanvasController layoutIfNeeded];

      v19[0] = 0;
      v11 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:indexCopy column:v19 eol:0];
      if (v11)
      {
        editor = [(CRLWPEditorHelper *)self editor];
        storage = [editor storage];
        v14 = sub_100213B1C(v11, indexCopy, storage);

        if (v14 <= v7 + v9 && v14 >= v7)
        {
          return v14;
        }
      }
    }
  }

  return indexCopy;
}

- (unint64_t)p_charIndexByMovingPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction preferPosition:(double *)preferPosition outEolAffinity:(unint64_t *)affinity
{
  positionCopy = position;
  location = [positionCopy location];
  eolAffinity = [positionCopy eolAffinity];
  v24 = 1;
  if (boundary)
  {
    v14 = -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", [positionCopy location], &eolAffinity, boundary, direction, preferPosition, &v24);
  }

  else
  {
    v14 = -[CRLWPEditorHelper caretCharIndexForLayoutOrderCharIndex:inDirection:](self, "caretCharIndexForLayoutOrderCharIndex:inDirection:", -[CRLWPEditorHelper charIndexMovingByCharacterFromCharIndex:inDirection:](self, "charIndexMovingByCharacterFromCharIndex:inDirection:", -[CRLWPEditorHelper p_layoutOrderCharIndexForCaretCharIndex:inDirection:](self, "p_layoutOrderCharIndexForCaretCharIndex:inDirection:", [positionCopy location], direction), direction), direction);
  }

  v15 = v14;
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = eolAffinity;
    if (affinity)
    {
      *affinity = eolAffinity;
    }

    v17 = [CRLWPSelection alloc];
    v18 = v24;
    editor = [(CRLWPEditorHelper *)self editor];
    storage = [editor storage];
    LOBYTE(v23) = v18;
    v21 = [(CRLWPSelection *)v17 initWithType:7 range:v15 styleInsertionBehavior:0 caretAffinity:0 smartFieldRange:v16 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:0, v23, storage];

    location = [(CRLWPSelection *)v21 leadingCharIndex];
  }

  return location;
}

- (unint64_t)charIndexForBeginningOfLineFromCharIndex:(unint64_t)index
{
  v6 = 0;
  v5 = 0;
  v4 = 1;
  return [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:index withEolAffinity:&v6 toBoundary:4 inDirection:1 preferPosition:&v5 isLeadingEdge:&v4];
}

- (unint64_t)charIndexForEndOfLineFromCharIndex:(unint64_t)index
{
  v6 = 0;
  v5 = 0;
  v4 = 0;
  return [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:index withEolAffinity:&v6 toBoundary:4 inDirection:0 preferPosition:&v5 isLeadingEdge:&v4];
}

- (unint64_t)p_charIndexByMovingCharIndex:(unint64_t)index withEolAffinity:(BOOL *)affinity toBoundary:(int64_t)boundary inDirection:(int64_t)direction preferPosition:(double *)position isLeadingEdge:(BOOL *)edge
{
  v112 = 0;
  v14 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:?];
  v16 = v15;
  textSource = [(CRLWPEditorHelper *)self textSource];
  v111 = sub_1003035DC(textSource, 1, v18, v19, v20, v21, v22, v23, &OBJC_PROTOCOL___CRLWPTextSource);
  v24 = &v14[v16];

  if (&v14[v16] < index)
  {
    goto LABEL_2;
  }

  if (boundary <= 2)
  {
    if (boundary)
    {
      if (boundary != 1)
      {
        if (boundary == 2)
        {
          if (direction >= 2)
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

          if (edge)
          {
            *edge = 1;
          }

          v31 = [v111 textRangeForParagraphAtCharIndex:index];
          v32 = v31;
          v34 = v33;
          location = 0x7FFFFFFFFFFFFFFFLL;
          length = 0;
          if (direction == 1 && v31)
          {
            v37 = [v111 textRangeForParagraphAtCharIndex:v31 - 1];
          }

          else
          {
            if (direction || (-[CRLWPEditorHelper textSource](self, "textSource"), v57 = objc_claimAutoreleasedReturnValue(), v58 = v32 + v34 < [v57 length], v57, !v58))
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

              string = [v111 string];
              v128.location = location;
              v128.length = length;
              v65 = CFStringTokenizerCreate(kCFAllocatorDefault, string, v128, 1uLL, 0);

              v26 = 0x7FFFFFFFFFFFFFFFLL;
              if (CFStringTokenizerGoToTokenAtIndex(v65, index))
              {
                CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v65);
                v67 = CurrentTokenRange.location;
                v68 = CurrentTokenRange.length;
                if ((direction | 2) == 2 && CurrentTokenRange.location + CurrentTokenRange.length == index)
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
                if ((direction | 2) == 2)
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

              if ((direction | 2) == 3)
              {
                if (Token)
                {
                  v74 = CFStringTokenizerGetCurrentTokenRange(v65);
                  v73 = v74.length;
                  v67 = v74.location;
                  if (index > LODWORD(v74.location))
                  {
                    goto LABEL_132;
                  }
                }

                indexCopy = index;
                do
                {
                  v76 = indexCopy--;
                }

                while (v76 > v14 && !CFStringTokenizerGoToTokenAtIndex(v65, indexCopy));
                if (indexCopy <= v14)
                {
                  v25 = v14;
LABEL_139:
                  CFRelease(v65);
                  goto LABEL_4;
                }
              }

              else if (!Token)
              {
                if (v24 == index)
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

      v45 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:index leadingEdge:edge inDirection:direction];
    }

    else
    {
      v45 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:index leadingEdge:edge inDirection:direction skipAnchors:1];
    }

    v25 = v45;
    goto LABEL_3;
  }

  if (boundary == 3)
  {
    if (edge)
    {
      *edge = 1;
    }

    v46 = [v111 textRangeForParagraphAtCharIndex:index];
    v48 = v47;
    if (v47)
    {
      textSource2 = [(CRLWPEditorHelper *)self textSource];
      v50 = sub_10027E2F0([textSource2 characterAtIndex:&v46[v48 - 1]]);

      v51 = v48 - (v50 & 1);
    }

    else
    {
      v51 = 0;
    }

    if (direction > 1)
    {
      if (direction != 2)
      {
        if (direction != 3)
        {
          goto LABEL_161;
        }

LABEL_96:
        if (v46 == index && v46 > v14)
        {
          v46 = [v111 textRangeForParagraphAtCharIndex:index - 1];
          v51 = v60 - 1;
        }

        goto LABEL_161;
      }
    }

    else if (direction)
    {
      if (direction != 1)
      {
        goto LABEL_161;
      }

      goto LABEL_96;
    }

    if (&v46[v51] == index && &v46[v51] < v24)
    {
      v61 = [v111 textRangeForParagraphAtCharIndex:index + 1];
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
      if (direction <= 1)
      {
        if (direction)
        {
          if (direction != 1)
          {
            goto LABEL_170;
          }

          goto LABEL_168;
        }

LABEL_169:
        v25 = &v46[v51];
        goto LABEL_170;
      }

      if (direction == 2)
      {
        goto LABEL_169;
      }

      if (direction == 3)
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

  if (boundary != 4)
  {
    if (boundary != 5)
    {
      goto LABEL_61;
    }

    if (edge)
    {
      *edge = 1;
    }

    v39 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:index];
    v112 = v40;
    v26 = v39;
LABEL_38:
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_4;
  }

  if (edge)
  {
    *edge = 1;
  }

  interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
  [interactiveCanvasController layoutIfNeeded];

  if (direction < 4)
  {
    v122 = 0;
    v123 = &v122;
    v124 = 0x2020000000;
    v125 = 0x7FFFFFFFFFFFFFFFLL;
    v56 = *affinity;
    v113[0] = _NSConcreteStackBlock;
    v113[1] = 3221225472;
    v113[2] = sub_1003C6C54;
    v113[3] = &unk_10185D410;
    directionCopy = direction;
    edgeCopy = edge;
    v115 = &v122;
    v113[4] = self;
    v114 = v111;
    affinityCopy = affinity;
    v119 = v14;
    indexCopy2 = index;
    v25 = &v14[v16];
    if ([(CRLWPEditorHelper *)self p_withLineFragmentsForLogicalLineContainingCharIndex:index eol:v56 performBlock:v113])
    {
      v25 = v123[3];
    }

    _Block_object_dispose(&v122, 8);
    goto LABEL_3;
  }

  if ((direction - 4) >= 2)
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
  if (position)
  {
    v59 = *position;
  }

  else
  {
    v59 = NAN;
  }

  v122 = 0;
  v79 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:index column:&v122 eol:*affinity];
  if (!v79)
  {
    v25 = v24;
    if (direction == 4)
    {
      v25 = [(CRLWPEditorHelper *)self p_lastVisibleCharIndexForCharIndex:index];
      *affinity = 1;
    }

    goto LABEL_4;
  }

  v121 = 0;
  v80 = [(CRLWPEditorHelper *)self p_lineIndexForMovingCharIndex:index column:&v121 up:direction == 4 atStart:v59 == 0.0 eol:affinity];
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
  if (*affinity)
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

  if (direction == 4)
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
    if (direction > 1)
    {
      if (direction != 2)
      {
        if (direction != 3)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }
    }

    else if (direction)
    {
      if (direction != 1)
      {
        goto LABEL_47;
      }

LABEL_41:
      if (v112 + v26 >= index)
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
    if (v26 > index)
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

- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)index leadingEdge:(BOOL *)edge inDirection:(int64_t)direction skipAnchors:(BOOL)anchors useLeadingEdgeOfNextLine:(BOOL)line
{
  lineCopy = line;
  textSource = [(CRLWPEditorHelper *)self textSource];
  v11 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:index];
  v13 = v12;
  [(CRLWPEditorHelper *)self paragraphEnumeratorAtCharIndex:index];
  textSource2 = [(CRLWPEditorHelper *)self textSource];
  v15 = textSource2;
  v16 = &v11[v13];
  if (direction > 1)
  {
    if (direction == 2)
    {
      v71 = 1;
    }

    else
    {
      if (direction != 3)
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

        index = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_120;
      }

      v71 = 0;
    }

    interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [interactiveCanvasController layoutIfNeeded];

    v74[0] = 0;
    v35 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:index column:v74 eol:0];
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
      v38 = sub_100014370(v37, textSource);
      indexCopy3 = sub_1002147B0(v35, index, v36, v38);

LABEL_53:
      if (edge)
      {
        v47 = v35 == 0;
      }

      else
      {
        v47 = 1;
      }

      v48 = !v47;
      if (indexCopy3 == 0x7FFFFFFFFFFFFFFFLL || indexCopy3 < v11 || indexCopy3 > v16)
      {
        if (!v48)
        {
          goto LABEL_87;
        }

        v51 = *(v35 + 3) < 0 ? &xmmword_101464828 : v35;
        if (*v51 + *(v51 + 1) <= index)
        {
          goto LABEL_87;
        }

        indexCopy = index;
        v69 = *edge;
        if (v71 == (v69 == (sub_1002117DC(v35, index) == 1)))
        {
          goto LABEL_87;
        }

        textSource3 = [(CRLWPEditorHelper *)self textSource];
        v68 = index < [textSource3 length];

        if (!v68)
        {
          goto LABEL_87;
        }

        v54 = [textSource characterAtIndex:index];
        v55 = v54;
        v56 = sub_10027E2F0(v54);
        v57 = v55 == 8232 ? 1 : v56;
        if (v57)
        {
          goto LABEL_87;
        }

        *edge = !v69;
LABEL_86:
        if (indexCopy != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_119:
          index = indexCopy;
          goto LABEL_120;
        }

LABEL_87:
        v59 = v71 ^ [textSource isWritingDirectionRightToLeftForParagraphAtCharIndex:index];
        if (v35)
        {
          v60 = &xmmword_101464828;
          if (*(v35 + 3) >= 0)
          {
            v60 = v35;
          }

          indexCopy2 = *v60;
          v62 = *(v60 + 1);
          if (v59)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v62 = 0;
          indexCopy2 = index;
          if (v59)
          {
LABEL_91:
            if (v62 + indexCopy2 < v16 || v35 && (*(v35 + 25) & 0x1000008) != 0)
            {
              if (v62)
              {
                indexCopy3 = (v62 + indexCopy2);
              }

              else
              {
                indexCopy3 = (indexCopy2 + 1);
              }
            }

            goto LABEL_102;
          }
        }

        if (indexCopy2 > v11)
        {
          indexCopy3 = [textSource previousCharacterIndex:?];
          if (edge)
          {
            *edge = 1;
          }
        }

LABEL_102:
        if (indexCopy3 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_103:
          indexCopy = [v15 charIndexRemappedFromStorage:index];
          goto LABEL_119;
        }

        v63 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:indexCopy3 column:v74 eol:0];
        v64 = v63;
        if (!v63)
        {
LABEL_116:
          if (indexCopy3 != 0x7FFFFFFFFFFFFFFFLL && indexCopy3 >= v11)
          {
            indexCopy = indexCopy3;
            if (indexCopy3 <= v16)
            {
              goto LABEL_119;
            }
          }

          goto LABEL_103;
        }

        if (lineCopy)
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
          indexCopy3 = v66;
          if (edge && (*(v64 + 3) & 0x4800) == 0x4000)
          {
            *edge = 1;
          }

          goto LABEL_116;
        }

        v66 = sub_10021173C(v63);
        goto LABEL_113;
      }

      if (v48)
      {
        v49 = *edge;
        v50 = sub_1002117DC(v35, indexCopy3);
        if (v50 == sub_1002117DC(v35, index))
        {
          if (!*edge)
          {
            goto LABEL_79;
          }
        }

        else
        {
          *edge = !v49;
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

            if (indexCopy3 == (*v58 + *(v58 + 1)))
            {
              *edge = 1;
              goto LABEL_97;
            }

            if (!sub_10027E2F0([v15 characterAtIndex:{objc_msgSend(v15, "charIndexMappedFromStorage:", indexCopy3)}]))
            {
              goto LABEL_97;
            }

            *edge = 1;
            indexCopy = sub_10027F35C(indexCopy3, v15);
            goto LABEL_86;
          }
        }
      }

LABEL_97:
      indexCopy = indexCopy3;
      goto LABEL_119;
    }

    if (v71 == [v15 isWritingDirectionRightToLeftForParagraphAtCharIndex:index])
    {
      if (!index)
      {
        indexCopy3 = 0;
        goto LABEL_53;
      }

      v40 = sub_10027EB4C(index, v15);
    }

    else
    {
      indexCopy3 = index;
      if ([v15 length] == index)
      {
        goto LABEL_53;
      }

      v40 = sub_10027F35C(index, v15);
    }

    indexCopy3 = v40;
    goto LABEL_53;
  }

  if (direction)
  {
    if (direction == 1)
    {
      v17 = [textSource2 charIndexMappedFromStorage:index];
      if (v17 > [v15 charIndexMappedFromStorage:v11])
      {
        v18 = [v15 charIndexMappedToStorage:v17 - 1];
        string = [textSource string];
        if (v18 >= [string length])
        {
          string2 = [textSource string];
          v21 = [string2 length];
        }

        else
        {
          string2 = [textSource string];
          v21 = [string2 rangeOfComposedCharacterSequenceAtIndex:v18];
        }

        index = v21;
      }

      v41 = [v15 charIndexMappedToStorage:v17];
      if (v41 > v11)
      {
        v42 = [v15 charIndexRemappedFromStorage:v41 - 1];
        string3 = [textSource string];
        if (v42 >= [string3 length])
        {
          string4 = [textSource string];
          v45 = [string4 length];
        }

        else
        {
          string4 = [textSource string];
          v45 = [string4 rangeOfComposedCharacterSequenceAtIndex:v42];
        }

        v46 = v45;

        if (v46 < index)
        {
          index = v46;
        }
      }

      goto LABEL_120;
    }

    goto LABEL_10;
  }

  v25 = [textSource2 charIndexMappedFromStorage:index];
  if (v25 >= [v15 charIndexMappedFromStorage:v16])
  {
    index = [v15 charIndexRemappedFromStorage:v16];
  }

  else
  {
    v26 = [v15 charIndexMappedToStorage:v25];
    string5 = [textSource string];
    v28 = [string5 rangeOfComposedCharacterSequenceAtIndex:v26];
    v30 = v29;

    index = &v28[v30];
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
  return index;
}

- (void)moveForward:(id)forward
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    if ((v4 = [selection end], objc_msgSend(selection, "isInsertionPoint")) && (v5 = -[CRLWPEditorHelper charIndexMovingByCharacterFromCharIndex:inDirection:](self, "charIndexMovingByCharacterFromCharIndex:inDirection:", v4, 0), v5 != v4) || (v6 = objc_msgSend(selection, "isInsertionPoint"), v5 = v4, (v6 & 1) == 0))
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v5 endOfLine:0, 0];
    }
  }
}

- (unint64_t)p_rightEdgeForSelection:(id)selection withLeadingEdge:(BOOL *)edge
{
  selectionCopy = selection;
  v27 = 0;
  v7 = -[CRLWPEditorHelper p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [selectionCopy start], &v27, objc_msgSend(selectionCopy, "caretAffinity") == 1);
  if (!v7)
  {
LABEL_15:
    insertionChar = [selectionCopy insertionChar];
    goto LABEL_48;
  }

  if ([selectionCopy isRange])
  {
    if ([selectionCopy isVisual])
    {
      insertionChar = [selectionCopy range];
      [selectionCopy range];
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
      range = [selectionCopy range];
      v16 = insertionChar + v10 - 1;
      if (v13 <= range && v13 + v12 >= range + v15)
      {
        if ((*(v7 + 3) & 0x1000) == 0)
        {
          insertionChar = v16;
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

          insertionChar = v16;
          goto LABEL_47;
        }

        goto LABEL_15;
      }

      v25 = sub_1002117DC(v7, insertionChar) == 1;
      goto LABEL_44;
    }

    if (![selectionCopy isValid])
    {
      insertionChar = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_48;
    }

    insertionChar = [selectionCopy end];
    v19 = 1;
LABEL_47:
    *edge = v19;
    goto LABEL_48;
  }

  insertionChar = [selectionCopy insertionChar];
  if ([selectionCopy type] != 7)
  {
    v20 = *(v7 + 3) < 0 ? &xmmword_101464828 : v7;
    v21 = *(v20 + 1);
    if (insertionChar == *v20 + v21 && v21 && *edge && insertionChar)
    {
      goto LABEL_34;
    }
  }

  if ([selectionCopy type] == 7 && insertionChar < *v7 && !*edge)
  {
    if ((*(v7 + 25) & 0x10) != 0)
    {
      v22 = sub_10021173C(v7);
    }

    else
    {
      v22 = sub_100211708(v7);
    }

    insertionChar = v22;
    v25 = sub_1002117DC(v7, v22) == ((*(v7 + 3) >> 12) & 1);
LABEL_44:
    v19 = v25;
    goto LABEL_47;
  }

  v23 = *(v7 + 3) < 0 ? &xmmword_101464828 : v7;
  if (insertionChar && insertionChar == *v23 + *(v23 + 1))
  {
LABEL_34:
    textSource = [(CRLWPEditorHelper *)self textSource];
    insertionChar = [textSource previousCharacterIndex:insertionChar];

    v19 = 0;
    goto LABEL_47;
  }

LABEL_48:

  return insertionChar;
}

- (unint64_t)p_leftEdgeForSelection:(id)selection withLeadingEdge:(BOOL *)edge
{
  selectionCopy = selection;
  caretAffinity = [selectionCopy caretAffinity];
  v38 = 0;
  v8 = -[CRLWPEditorHelper p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [selectionCopy start], &v38, caretAffinity == 1);
  if (!v8)
  {
    goto LABEL_28;
  }

  if ([selectionCopy isVisual] && objc_msgSend(selectionCopy, "isRange"))
  {
    range = [selectionCopy range];
    [selectionCopy range];
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
    range2 = [selectionCopy range];
    insertionChar = &range[v11 - 1];
    if (v14 <= range2 && v14 + v13 >= range2 + v16)
    {
      if ((*(v8 + 25) & 0x10) == 0)
      {
        insertionChar = range;
      }

      if (insertionChar == 0x7FFFFFFFFFFFFFFFLL)
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
          v50 = selectionCopy;
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

        [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:2441 isFatal:0 description:"Failed to find %{public}@ char index for %@", v33, selectionCopy];
      }

      v34 = sub_1002117DC(v8, insertionChar);
LABEL_61:
      v20 = v34 != 1;
      goto LABEL_62;
    }

    if ((*(v8 + 25) & 0x10) == 0)
    {
      v19 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:range column:&v38 eol:caretAffinity == 1];
      if (v19)
      {
        if ((v19[25] & 0x10) != 0)
        {
          v20 = sub_1002117DC(v19, range) == 1;
        }

        else
        {
          v20 = sub_1002117DC(v19, range) != 1;
        }

        insertionChar = range;
        goto LABEL_62;
      }

      goto LABEL_28;
    }

    v26 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:insertionChar column:&v38 eol:caretAffinity == 1];
    if (v26)
    {
      if ((v26[25] & 0x10) == 0)
      {
        v27 = sub_1002117DC(v26, insertionChar) == 1;
LABEL_40:
        v20 = v27;
        goto LABEL_62;
      }

      v34 = sub_1002117DC(v26, insertionChar);
      goto LABEL_61;
    }

LABEL_28:
    insertionChar = [selectionCopy insertionChar];
    goto LABEL_63;
  }

  insertionChar = [selectionCopy insertionChar];
  if ([selectionCopy type] != 7)
  {
    v21 = *(v8 + 3) < 0 ? &xmmword_101464828 : v8;
    v22 = *(v21 + 1);
    if (insertionChar == (*v21 + v22) && v22 && *edge && insertionChar)
    {
      goto LABEL_34;
    }
  }

  if ([selectionCopy type] == 7 && insertionChar < *v8 && !*edge)
  {
    if ((*(v8 + 25) & 0x10) != 0)
    {
      v23 = sub_10021173C(v8);
    }

    else
    {
      v23 = sub_100211708(v8);
    }

    insertionChar = v23;
    v27 = sub_1002117DC(v8, v23) == ((*(v8 + 3) >> 12) & 1);
    goto LABEL_40;
  }

  v24 = *(v8 + 3) < 0 ? &xmmword_101464828 : v8;
  if (insertionChar && insertionChar == (*v24 + *(v24 + 1)))
  {
LABEL_34:
    textSource = [(CRLWPEditorHelper *)self textSource];
    insertionChar = [textSource previousCharacterIndex:insertionChar];

    v20 = 0;
LABEL_62:
    *edge = v20;
  }

LABEL_63:

  return insertionChar;
}

- (void)p_moveInLineLayoutDirectionLeft:(BOOL)left
{
  leftCopy = left;
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    [(CRLWPEditorHelper *)self setAnchorSelection:0];
    leadingEdge = [selection leadingEdge];
    if (leftCopy)
    {
      v6 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:selection withLeadingEdge:&leadingEdge];
    }

    else
    {
      v6 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:selection withLeadingEdge:&leadingEdge];
    }

    v7 = v6;
    if ((leadingEdge & 1) == 0 && v6 != 0x7FFFFFFFFFFFFFFFLL && v6 > [selection start])
    {
      textSource = [(CRLWPEditorHelper *)self textSource];
      v9 = [textSource characterAtIndex:v7];
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

        textSource2 = [(CRLWPEditorHelper *)self textSource];
        v7 = sub_10027F35C(v7, textSource2);

        leadingEdge = 1;
        sub_10024068C(v21);
      }
    }

    v17 = leadingEdge;
    v18 = v7;
    if ([selection isInsertionPoint])
    {
      if (leftCopy)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v18 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:v7 leadingEdge:&leadingEdge inDirection:v19 skipAnchors:1];
    }

    v20 = leadingEdge;
    if (v18 != v7 || leadingEdge != v17)
    {
      goto LABEL_32;
    }

    if (([selection isInsertionPoint] & 1) == 0)
    {
      v20 = leadingEdge;
LABEL_32:
      [(CRLWPEditorHelper *)self setSelectionFromKeyboardWithRange:v18 leadingEdge:0 endOfLine:v20 & 1, 0];
    }
  }
}

- (void)moveBackward:(id)backward
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    if ((v4 = [selection start], objc_msgSend(selection, "isInsertionPoint")) && (v5 = -[CRLWPEditorHelper charIndexMovingByCharacterFromCharIndex:inDirection:](self, "charIndexMovingByCharacterFromCharIndex:inDirection:", v4, 1), v5 != v4) || (v6 = objc_msgSend(selection, "isInsertionPoint"), v5 = v4, (v6 & 1) == 0))
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v5 endOfLine:0, 0];
    }
  }
}

- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)index backward:(BOOL)backward
{
  backwardCopy = backward;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0;
  textSource = [(CRLWPEditorHelper *)self textSource];
  v10 = [textSource length];

  if (v10 >= index)
  {
    textSource2 = [(CRLWPEditorHelper *)self textSource];
    v7 = [textSource2 wordAtCharIndex:index includePreviousWord:backwardCopy];
    v8 = v12;

    if (v7 == index && backwardCopy)
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

- (id)logicalToVisualSelection:(id)selection
{
  selectionCopy = selection;
  if ([selectionCopy type] == 7 || objc_msgSend(selectionCopy, "type") == 1 || objc_msgSend(selectionCopy, "type") == 2)
  {
    v5 = selectionCopy;
    goto LABEL_5;
  }

  [selectionCopy range];
  if (!v11)
  {
    v5 = [selectionCopy copyWithNewType:7];
LABEL_5:
    v6 = v5;
    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
  [interactiveCanvasController layoutIfNeeded];

  start = [selectionCopy start];
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
  -[CRLWPEditorHelper withLineFragmentForCharIndex:eol:performBlock:](self, "withLineFragmentForCharIndex:eol:performBlock:", start, [selectionCopy caretAffinity] == 1, v68);
  if (v77[6] == 0x7FFFFFFFFFFFFFFFLL && !v77[7])
  {
    v6 = selectionCopy;
    goto LABEL_79;
  }

  textSource = [(CRLWPEditorHelper *)self textSource];
  location = [textSource previousCharacterIndex:{objc_msgSend(selectionCopy, "end")}];

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
  -[CRLWPEditorHelper withLineFragmentForCharIndex:eol:performBlock:](self, "withLineFragmentForCharIndex:eol:performBlock:", location, [selectionCopy isAtEndOfLine], &range2.length);
  if (v62[6] != 0x7FFFFFFFFFFFFFFFLL || v62[7])
  {
    range2.location = [selectionCopy range];
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
              textSource2 = [(CRLWPEditorHelper *)self textSource];
              start = [textSource2 previousCharacterIndex:v21.location + v21.length];

              v19 = 1;
              v17 = v69;
LABEL_35:
              if (v21.length)
              {
                if (v17[40 * v18 + 32] == 1)
                {
                  textSource3 = [(CRLWPEditorHelper *)self textSource];
                  location = [textSource3 previousCharacterIndex:v21.location + v21.length];

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
            start = v21.location;
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
                start = v29.location;
              }

              else
              {
                textSource4 = [(CRLWPEditorHelper *)self textSource];
                start = [textSource4 previousCharacterIndex:v29.location + v29.length];
              }

              break;
            }

            if (v69[40 * v26 + 32])
            {
              textSource5 = [(CRLWPEditorHelper *)self textSource];
              start = [textSource5 previousCharacterIndex:v29.location + v29.length];
            }

            else
            {
              start = v29.location;
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
                textSource6 = [(CRLWPEditorHelper *)self textSource];
                location = [textSource6 previousCharacterIndex:v36.location + v36.length];
              }

              break;
            }

            if (*(__p + 40 * v33 + 32))
            {
              textSource7 = [(CRLWPEditorHelper *)self textSource];
              location = [textSource7 previousCharacterIndex:v36.location + v36.length];
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

    textSource8 = [(CRLWPEditorHelper *)self textSource];
    if (start <= location)
    {
      v40 = [textSource8 nextCharacterIndex:location];
      v41 = start;
    }

    else
    {
      v40 = [textSource8 nextCharacterIndex:start];
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

    v14 = [selectionCopy copyWithNewVisualTypeRange:v43 head:v44 tail:{start, location}];
    goto LABEL_76;
  }

  v14 = selectionCopy;
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

- (BOOL)p_adjustSelection:(id)selection forWordWithCharIndex:(unint64_t)index
{
  selectionCopy = selection;
  v8 = [(CRLWPEditorHelper *)self rangeOfWordEnclosingCharIndex:index backward:0];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    textSource = [(CRLWPEditorHelper *)self textSource];
    v10 = [textSource length];

    wpSelectionClass = [(CRLWPEditorHelper *)self wpSelectionClass];
    v12 = objc_opt_class();
    textSource2 = [(CRLWPEditorHelper *)self textSource];
    v14 = sub_100014370(v12, textSource2);
    v15 = [(objc_class *)wpSelectionClass selectionWithRange:index type:0 leadingEdge:7 storage:v10 == index, v14];
  }

  else
  {
    textSource2 = [(objc_class *)[(CRLWPEditorHelper *)self wpSelectionClass] selectionWithRange:v8, v7];
    v15 = [(CRLWPEditorHelper *)self logicalToVisualSelection:textSource2];
  }

  range = [v15 range];
  v18 = v17;
  range2 = [selectionCopy range];
  if (range <= range2 && &range[v18] >= &range2[v20])
  {
    editorController = [(CRLWPEditorHelper *)self editorController];
    editor = [(CRLWPEditorHelper *)self editor];
    [editorController setSelection:v15 forEditor:editor withFlags:8];

    v21 = 1;
  }

  else
  {
    [(CRLWPEditorHelper *)self p_adjustSelection:selectionCopy withOtherSelection:v15 textSelectionGranularity:1];
    v21 = 0;
  }

  return v21;
}

- (void)p_moveAndModifySelectionRight:(BOOL)right
{
  rightCopy = right;
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if (![selection isValid])
  {
    goto LABEL_39;
  }

  textSource = [(CRLWPEditorHelper *)self textSource];
  anchorSelection = [(CRLWPEditorHelper *)self anchorSelection];

  if (!anchorSelection)
  {
    leadingEdge = 0;
    if ([(CRLWPEditorHelper *)self selectionAnchor]== 0x7FFFFFFFFFFFFFFFLL)
    {
      leadingEdge = [selection leadingEdge];
      v44 = 0;
      if (!-[CRLWPEditorHelper p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [selection start], &v44, objc_msgSend(selection, "caretAffinity") == 1))
      {
        -[CRLWPEditorHelper paragraphEnumeratorAtCharIndex:](self, "paragraphEnumeratorAtCharIndex:", [selection start]);
        if (sub_100240ABC(&v42) == rightCopy)
        {
          start = [selection end];
        }

        else
        {
          start = [selection start];
        }

        v10 = start;
        sub_10024068C(&v42);
        goto LABEL_12;
      }

      if (rightCopy)
      {
        selectionAnchor = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:selection withLeadingEdge:&leadingEdge];
      }

      else
      {
        selectionAnchor = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:selection withLeadingEdge:&leadingEdge];
      }
    }

    else
    {
      leadingEdge = [(CRLWPEditorHelper *)self selectionAnchorEdge];
      selectionAnchor = [(CRLWPEditorHelper *)self selectionAnchor];
    }

    v10 = selectionAnchor;
LABEL_12:
    wpSelectionClass = [(CRLWPEditorHelper *)self wpSelectionClass];
    v12 = leadingEdge;
    v13 = objc_opt_class();
    v14 = sub_100014370(v13, textSource);
    v15 = [(objc_class *)wpSelectionClass selectionWithRange:v10 type:0 leadingEdge:7 storage:v12, v14];
    [(CRLWPEditorHelper *)self setAnchorSelection:v15];
  }

  leadingEdge = [selection leadingEdge];
  v16 = [(CRLWPEditorHelper *)self p_oppositeEdgeForSelection:selection withLeadingEdge:&leadingEdge];
  if (rightCopy)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  v18 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:v16 leadingEdge:&leadingEdge inDirection:v17 skipAnchors:1];
  textSource2 = [(CRLWPEditorHelper *)self textSource];
  v20 = [textSource2 smartFieldAtCharIndex:v18 attributeKind:6 effectiveRange:&v42];

  if (v20 || (-[CRLWPEditorHelper textSource](self, "textSource"), v21 = objc_claimAutoreleasedReturnValue(), [v21 smartFieldAtCharIndex:v18 attributeKind:21 effectiveRange:&v42], v20 = objc_claimAutoreleasedReturnValue(), v21, v20))
  {
    superRange = [selection superRange];
    if (superRange <= v42)
    {
      v24 = &v42[v43];
      if (&superRange[v23] >= &v42[v43] && (v18 > v42 || (leadingEdge & 1) == 0 && v18 == v42) && v18 < v24)
      {
        if (v16 != v42)
        {
          leadingEdge = 1;
          v40 = v20;
          v18 = v42;
          goto LABEL_27;
        }

        leadingEdge = 0;
        textSource3 = [(CRLWPEditorHelper *)self textSource];
        v18 = sub_10027EB4C(v24, textSource3);
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
    v27 = leadingEdge;
  }

  anchorSelection4 = objc_alloc([(CRLWPEditorHelper *)self wpSelectionClass]);
  if (v26)
  {
    v29 = 7;
  }

  else
  {
    v29 = 0;
  }

  v30 = leadingEdge;
  v31 = objc_opt_class();
  v32 = sub_100014370(v31, textSource);
  LOBYTE(v39) = v30;
  v33 = [anchorSelection4 initWithType:v29 range:v18 styleInsertionBehavior:0 caretAffinity:0 smartFieldRange:v27 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:{0, v39, v32}];

  [(CRLWPEditorHelper *)self setSelectionLastModifiedWithKeyboard:1];
  anchorSelection2 = [(CRLWPEditorHelper *)self anchorSelection];
  [(CRLWPEditorHelper *)self p_adjustSelection:anchorSelection2 withOtherSelection:v33 textSelectionGranularity:0];

  anchorSelection3 = [(CRLWPEditorHelper *)self anchorSelection];
  if (anchorSelection3)
  {
    anchorSelection4 = [(CRLWPEditorHelper *)self anchorSelection];
    insertionChar = [anchorSelection4 insertionChar];
  }

  else
  {
    insertionChar = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(CRLWPEditorHelper *)self setSelectionAnchor:insertionChar];
  if (anchorSelection3)
  {
  }

  anchorSelection5 = [(CRLWPEditorHelper *)self anchorSelection];
  -[CRLWPEditorHelper setSelectionAnchorEdge:](self, "setSelectionAnchorEdge:", [anchorSelection5 leadingEdge]);

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];

LABEL_39:
}

- (void)moveBackwardAndModifySelection:(id)selection
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:[(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:1 newAnchor:&v6] inDirection:1];
    [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v5 andAnchor:v6];
  }
}

- (void)moveForwardAndModifySelection:(id)selection
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [(CRLWPEditorHelper *)self charIndexMovingByCharacterFromCharIndex:[(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:0 newAnchor:&v6] inDirection:0];
    [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v5 andAnchor:v6];
  }
}

- (void)moveUp:(id)up
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    [(CRLWPEditorHelper *)self preferredOffsetFromSelection:selection];
    v11 = v5;
    start = [selection start];
    v10 = 1;
    isAtEndOfLine = [selection isAtEndOfLine];
    v7 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:start withEolAffinity:&isAtEndOfLine toBoundary:4 inDirection:4 preferPosition:&v11 isLeadingEdge:&v10];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if (v8 != [selection start] || (objc_msgSend(selection, "isInsertionPoint") & 1) == 0)
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v8 endOfLine:0, isAtEndOfLine];
    }
  }
}

- (void)moveDown:(id)down
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    [(CRLWPEditorHelper *)self preferredOffsetFromSelection:selection];
    v23 = v5;
    v6 = [selection end];
    if (v6)
    {
      if ([selection isRange])
      {
        superRange = [selection superRange];
        v9 = v8;
        textSource = [(CRLWPEditorHelper *)self textSource];
        v11 = sub_10027EB4C(superRange + v9, textSource);

        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          textSource2 = [(CRLWPEditorHelper *)self textSource];
          textSource3 = [(CRLWPEditorHelper *)self textSource];
          v14 = [textSource2 characterAtIndex:{objc_msgSend(textSource3, "charIndexMappedFromStorage:", v11)}];

          v15 = sub_10027E2F0(v14);
          if (v14 == 8232 ? 1 : v15)
          {
            v6 = v11;
          }
        }
      }
    }

    textSource4 = [(CRLWPEditorHelper *)self textSource];
    v18 = [textSource4 length];

    v22 = 1;
    isAtEndOfLine = [selection isAtEndOfLine];
    v19 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v6 withEolAffinity:&isAtEndOfLine toBoundary:4 inDirection:5 preferPosition:&v23 isLeadingEdge:&v22];
    if (v18 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    if (v20 != [selection end] || (objc_msgSend(selection, "isInsertionPoint") & 1) == 0)
    {
      -[CRLWPEditorHelper setSelectionWithRange:endOfLine:](self, "setSelectionWithRange:endOfLine:", v20, 0, [selection isAtEndOfLine]);
    }
  }
}

- (void)moveUpAndModifySelection:(id)selection
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    [(CRLWPEditorHelper *)self preferredOffsetFromSelection:selection];
    v18 = v7;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:4 newAnchor:&v17];
    v16 = 1;
    isAtEndOfLine = [selection isAtEndOfLine];
    v9 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v8 withEolAffinity:&isAtEndOfLine toBoundary:4 inDirection:4 preferPosition:&v18 isLeadingEdge:&v16];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    selection2 = [(CRLWPEditorHelper *)self selection];
    validVisualRanges = [selection2 validVisualRanges];
    if (validVisualRanges & 1) != 0 && ((-[CRLWPEditorHelper selection](self, "selection"), v3 = objc_claimAutoreleasedReturnValue(), [v3 visualRanges], v4 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v4, "containsCharacterAtIndex:", v10), v10 < v17) ? (v14 = v13) : (v14 = 0), (v14) || (-[CRLWPEditorHelper p_setVisualSelectionWithCharIndex:leadingEdge:andAnchor:andAnchorLeadingEdge:](self, "p_setVisualSelectionWithCharIndex:leadingEdge:andAnchor:andAnchorLeadingEdge:", v10, v16), validVisualRanges))
    {
    }
  }
}

- (void)moveDownAndModifySelection:(id)selection
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    [(CRLWPEditorHelper *)self preferredOffsetFromSelection:selection];
    v14 = v5;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:5 newAnchor:&v13];
    textSource = [(CRLWPEditorHelper *)self textSource];
    v8 = [textSource length];

    v12 = 1;
    isAtEndOfLine = [selection isAtEndOfLine];
    v9 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v6 withEolAffinity:&isAtEndOfLine toBoundary:4 inDirection:5 preferPosition:&v14 isLeadingEdge:&v12];
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

- (BOOL)p_isEdgeAtCharIndex:(unint64_t)index leadingEdge:(BOOL)edge withinWordInDirection:(int64_t)direction
{
  v6 = [(CRLWPEditorHelper *)self p_adjustedCharIndexForWordTestingFromCharIndex:index leadingEdge:edge forDirection:direction];
  textSource = [(CRLWPEditorHelper *)self textSource];
  v8 = [textSource length];

  if (v6 > v8)
  {
    return 0;
  }

  textSource2 = [(CRLWPEditorHelper *)self textSource];
  v11 = [textSource2 wordAtCharIndex:v6 includePreviousWord:0];
  v13 = v12;

  return v6 >= v11 && v6 - v11 < v13;
}

- (void)moveWordInLayoutDirection:(int64_t)direction
{
  if ((direction & 0xFFFFFFFFFFFFFFFELL) != 2)
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
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:2994 isFatal:0 description:"Unsupported direction: %lu", direction];
  }

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    [(CRLWPEditorHelper *)self setAnchorSelection:0];
    leadingEdge = [selection leadingEdge];
    if (direction == 2)
    {
      v9 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:selection withLeadingEdge:&leadingEdge];
    }

    else
    {
      v9 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:selection withLeadingEdge:&leadingEdge];
    }

    v10 = v9;
    v11 = [(CRLWPEditorHelper *)self p_isEdgeAtCharIndex:v9 leadingEdge:leadingEdge withinWordInDirection:direction];
    v12 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:v10 leadingEdge:&leadingEdge inDirection:direction];
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
      v14 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:v12 leadingEdge:&leadingEdge inDirection:direction];
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
      if (v16 != v10 || (v17 = leadingEdge, v17 != [selection leadingEdge]) || (objc_msgSend(selection, "isInsertionPoint") & 1) == 0)
      {
        [(CRLWPEditorHelper *)self setSelectionFromKeyboardWithRange:v16 leadingEdge:0 endOfLine:leadingEdge, 0];
      }
    }
  }
}

- (void)p_moveWordAndModifySelectionInLayoutDirection:(int64_t)direction
{
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = 1;
    v17 = 1;
    v7 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithLeadingEdge:&v17 Direction:direction newAnchor:&v19 anchorLeadingEdge:&v18];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(CRLWPEditorHelper *)self p_isEdgeAtCharIndex:v7 leadingEdge:v17 withinWordInDirection:direction];
      v16 = 0;
      v15 = v17;
      selectionAnchor = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v7 withEolAffinity:&v16 toBoundary:1 inDirection:direction preferPosition:0 isLeadingEdge:&v15];
      if (selectionAnchor != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v8)
        {
          v10 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:v7 leadingEdge:v17];
          v11 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:selectionAnchor leadingEdge:v15];
          v12 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:[(CRLWPEditorHelper *)self selectionAnchor] leadingEdge:[(CRLWPEditorHelper *)self selectionAnchorEdge]];
          if ((v10 >= v12 || v12 >= v11) && (v11 >= v12 || v12 >= v10))
          {
            selectionAnchorEdge = v15;
          }

          else
          {
            selectionAnchor = [(CRLWPEditorHelper *)self selectionAnchor];
            selectionAnchorEdge = [(CRLWPEditorHelper *)self selectionAnchorEdge];
          }

          v17 = selectionAnchorEdge;
        }

        else
        {
          v16 = 0;
          v17 = v15;
          selectionAnchor = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:selectionAnchor withEolAffinity:&v16 toBoundary:1 inDirection:direction preferPosition:0 isLeadingEdge:&v17];
          selectionAnchorEdge = v17;
        }

        [(CRLWPEditorHelper *)self p_setVisualSelectionWithCharIndex:selectionAnchor leadingEdge:selectionAnchorEdge & 1 andAnchor:v19 andAnchorLeadingEdge:v18];
      }
    }
  }

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];
}

- (BOOL)p_isCharIndex:(unint64_t)index withinTextUnit:(int64_t)unit inDirection:(int64_t)direction
{
  if (unit != 1)
  {
    [CRLAssertionHandler _atomicIncrementAssertCount:index];
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

  if (direction > 5)
  {
    return 0;
  }

  if (((1 << direction) & 0x1A) != 0)
  {
    v6 = [(CRLWPEditorHelper *)self p_adjustedCharIndexForWordTestingFromCharIndex:index leadingEdge:1 forDirection:?];
    textSource = [(CRLWPEditorHelper *)self textSource];
    v8 = [textSource length];

    if (v6 <= v8)
    {
      goto LABEL_17;
    }

    return 0;
  }

  v6 = [(CRLWPEditorHelper *)self p_adjustedCharIndexForWordTestingFromCharIndex:index leadingEdge:1 forDirection:?];
  textSource2 = [(CRLWPEditorHelper *)self textSource];
  v14 = [textSource2 length];

  if (v6 > v14)
  {
    return 0;
  }

LABEL_17:
  textSource3 = [(CRLWPEditorHelper *)self textSource];
  v16 = [textSource3 wordAtCharIndex:v6 includePreviousWord:0];
  v18 = v17;

  return v6 >= v16 && v6 - v16 < v18;
}

- (int64_t)p_writingDirectionForCharAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  v10 = 0;
  v4 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:index column:&v10 eol:0];
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

  return sub_1002117DC(v4, index - (*v5 + *(v5 + 1) == index));
}

- (BOOL)p_isCharIndex:(unint64_t)index withEolAffinity:(BOOL)affinity atBoundary:(int64_t)boundary inDirection:(int64_t)direction
{
  affinityCopy = affinity;
  v11 = [(CRLWPEditorHelper *)self availableSelectionRangeForCharIndex:?];
  v59 = v11;
  v13 = &v11[v12];
  if (index)
  {
    v14 = index - (&v11[v12] == index);
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
  directionCopy = direction;
  if (boundary <= 1)
  {
    if (!boundary)
    {
      textSource = [(CRLWPEditorHelper *)self textSource];
      string = [textSource string];
      v16 = [string rangeOfComposedCharacterSequenceAtIndex:v14];
      v15 = v44;

      goto LABEL_61;
    }

    v16 = v11;
    if (boundary == 1)
    {
      if (direction > 1)
      {
        v49 = [(CRLWPEditorHelper *)self p_writingDirectionForCharAtIndex:v14];
        v50 = 2;
        if (v49 == 1)
        {
          v50 = 3;
        }

        v25 = v50 == direction;
      }

      else
      {
        v25 = direction == 0;
      }

      v51 = v25;
      v16 = [(CRLWPEditorHelper *)self rangeOfWordEnclosingCharIndex:v14 backward:v51];
      v15 = v52;
      goto LABEL_61;
    }
  }

  else
  {
    if (boundary == 2)
    {
      textSource2 = [(CRLWPEditorHelper *)self textSource];
      location = [textSource2 textRangeForParagraphAtCharIndex:index];
      length = v28;

      if (index && location == index)
      {
        textSource3 = [(CRLWPEditorHelper *)self textSource];
        v66.location = [textSource3 textRangeForParagraphAtCharIndex:index - 1];
        v66.length = v31;
        v65.location = location;
        v65.length = length;
        v32 = NSUnionRange(v65, v66);
        location = v32.location;
        length = v32.length;
      }

      textSource4 = [(CRLWPEditorHelper *)self textSource];
      string2 = [textSource4 string];
      v67.location = location;
      v67.length = length;
      v35 = CFStringTokenizerCreate(kCFAllocatorDefault, string2, v67, 1uLL, 0);

      if (CFStringTokenizerGoToTokenAtIndex(v35, index))
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

    if (boundary == 3)
    {
      textSource5 = [(CRLWPEditorHelper *)self textSource];
      v16 = [textSource5 textRangeForParagraphAtCharIndex:index];
      v39 = v38;

      if (v39)
      {
        textSource6 = [(CRLWPEditorHelper *)self textSource];
        v41 = sub_10027E2F0([textSource6 characterAtIndex:v39 + v16 - 1]);

        v15 = v39 - (v41 & 1);
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_61;
    }

    v16 = v11;
    if (boundary == 4)
    {
      layout = [(CRLWPEditorHelper *)self layout];
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      [layout columns];
      obj = v56 = layout;
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
          range = [v21 range];
          v24 = v14 < range || v14 - range >= v23;
          if (!v24 || affinityCopy && v14 == &range[v23])
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

        v45 = [v21 lineIndexForCharIndex:v14 eol:affinityCopy];
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

  if (boundary == 5)
  {
    if (v59 == index && directionCopy <= 4 && ((1 << directionCopy) & 0x1A) != 0)
    {
      LOBYTE(v48) = 1;
    }

    else
    {
      LOBYTE(v48) = 0;
      if (v13 == index && directionCopy < 6)
      {
        LODWORD(v48) = 0x25u >> directionCopy;
      }
    }

    return v48 & 1;
  }

LABEL_61:
  if (v16 != index && v16 + v15 != index)
  {
    goto LABEL_63;
  }

  LOBYTE(v48) = 0;
  if (boundary <= 1)
  {
    if (boundary)
    {
      if (boundary != 1)
      {
        return v48 & 1;
      }

      goto LABEL_72;
    }

LABEL_75:
    if (directionCopy == 1)
    {
      if (v13 != index)
      {
LABEL_98:
        LOBYTE(v48) = directionCopy - 6 < 0xFFFFFFFFFFFFFFFELL;
        return v48 & 1;
      }
    }

    else if (directionCopy || v59 != index)
    {
      goto LABEL_98;
    }

LABEL_63:
    LOBYTE(v48) = 0;
    return v48 & 1;
  }

  if (boundary == 2)
  {
    goto LABEL_75;
  }

  if (boundary != 3)
  {
    if (boundary != 4)
    {
      return v48 & 1;
    }

LABEL_72:
    if (directionCopy > 1)
    {
      v54 = [(CRLWPEditorHelper *)self p_writingDirectionForCharAtIndex:index];
      v48 = 2;
      if (v54 == 1)
      {
        v48 = 3;
      }

      if (v16 == index)
      {
        LOBYTE(v48) = (directionCopy & 0xFFFFFFFFFFFFFFFELL) == 2 && v48 != directionCopy;
      }

      else
      {
        LOBYTE(v48) = v48 == directionCopy;
      }
    }

    else
    {
      LOBYTE(v48) = directionCopy == 1;
      if (v16 != index)
      {
        LOBYTE(v48) = directionCopy ^ 1;
      }
    }

    return v48 & 1;
  }

  if (v59 == index && directionCopy <= 5 && ((1 << directionCopy) & 0x25) != 0 || v13 == index && directionCopy <= 4 && ((1 << directionCopy) & 0x1A) != 0)
  {
    goto LABEL_63;
  }

  if ((directionCopy & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    LOBYTE(v48) = v16 == index;
    return v48 & 1;
  }

  LOBYTE(v48) = v16 + v15 == index;
  if ((directionCopy & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    goto LABEL_63;
  }

  return v48 & 1;
}

- (void)moveWordForward:(id)forward
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    v4 = [selection end];
    v5 = [(CRLWPEditorHelper *)self p_isCharIndex:v4 withinTextUnit:1 inDirection:0];
    v6 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:v4 leadingEdge:0 inDirection:0];
    if ((v5 & 1) == 0 && [(CRLWPEditorHelper *)self p_isCharIndex:v6 withEolAffinity:0 atBoundary:1 inDirection:1])
    {
      v6 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:v6 leadingEdge:0 inDirection:0];
    }

    if (v6 != 0x7FFFFFFFFFFFFFFFLL && (v6 != v4 || ([selection isInsertionPoint] & 1) == 0))
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v6 endOfLine:0, 0];
    }
  }
}

- (void)moveWordBackward:(id)backward
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    start = [selection start];
    v5 = [(CRLWPEditorHelper *)self p_isCharIndex:start withinTextUnit:1 inDirection:1];
    v6 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:start leadingEdge:0 inDirection:1];
    if ((v5 & 1) == 0 && [(CRLWPEditorHelper *)self p_isCharIndex:v6 withEolAffinity:0 atBoundary:1 inDirection:0])
    {
      v6 = [(CRLWPEditorHelper *)self charIndexMovingByWordFromCharIndex:v6 leadingEdge:0 inDirection:1];
    }

    if (start)
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

    if (v6 != 0x7FFFFFFFFFFFFFFFLL && (v6 != start || ([selection isInsertionPoint] & 1) == 0))
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v6 endOfLine:0, 0];
    }
  }
}

- (void)moveWordAndModifySelectionInStorageDirection:(int64_t)direction
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:direction newAnchor:&v11];
    v7 = [(CRLWPEditorHelper *)self p_isCharIndex:v6 withinTextUnit:1 inDirection:direction];
    v10 = 0;
    selectionAnchor2 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v6 withEolAffinity:&v10 toBoundary:1 inDirection:direction preferPosition:0 isLeadingEdge:0];
    if (selectionAnchor2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((v7 & 1) == 0 && [(CRLWPEditorHelper *)self p_isCharIndex:selectionAnchor2 withEolAffinity:v10 atBoundary:1 inDirection:direction == 0])
      {
        v10 = 0;
        selectionAnchor2 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:selectionAnchor2 withEolAffinity:&v10 toBoundary:1 inDirection:direction preferPosition:0 isLeadingEdge:0];
      }

      if (v6 != [(CRLWPEditorHelper *)self selectionAnchor])
      {
        selectionAnchor = [(CRLWPEditorHelper *)self selectionAnchor];
        if (v6 > selectionAnchor == selectionAnchor2 <= [(CRLWPEditorHelper *)self selectionAnchor])
        {
          selectionAnchor2 = [(CRLWPEditorHelper *)self selectionAnchor];
        }
      }

      [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:selectionAnchor2 andAnchor:v11];
    }
  }
}

- (void)selectParagraph:(id)paragraph
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    range = [selection range];
    v6 = v5;
    textSource = [(CRLWPEditorHelper *)self textSource];
    v8 = [textSource textRangeForParagraphAtCharIndex:range];
    v10 = v9;

    textSource2 = [(CRLWPEditorHelper *)self textSource];
    v12 = [textSource2 textRangeForParagraphAtCharIndex:&range[v6]];
    v14 = v13;

    isRange = [selection isRange];
    v16 = &range[v6] == v12;
    v17.location = ((isRange & v16) != 0 ? &range[v6] : v12);
    v17.length = (isRange & v16) != 0 ? 0 : v14;
    v21.location = v8;
    v21.length = v10;
    v18 = NSUnionRange(v21, v17);
    if (v18.location != range || v18.length != v6)
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v18.location endOfLine:v18.length, 0];
    }
  }
}

- (void)selectLine:(id)line
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    if ([selection isRange])
    {
      isAtEndOfLine = 0;
    }

    else
    {
      isAtEndOfLine = [selection isAtEndOfLine];
    }

    v23 = isAtEndOfLine;
    v6 = -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", [selection start], &v23, 4, 1, 0, 0);
    if ([selection isRange])
    {
      isAtEndOfLine2 = 1;
    }

    else
    {
      isAtEndOfLine2 = [selection isAtEndOfLine];
    }

    v23 = isAtEndOfLine2;
    v8 = -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", [selection start], &v23, 4, 0, 0, 0);
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

    if ([selection isRange])
    {
      isAtEndOfLine3 = 0;
    }

    else
    {
      isAtEndOfLine3 = [selection isAtEndOfLine];
    }

    v23 = isAtEndOfLine3;
    v11 = -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", [selection end], &v23, 4, 1, 0, 0);
    if ([selection isRange] && (-[CRLWPEditorHelper textSource](self, "textSource"), v12 = objc_claimAutoreleasedReturnValue(), v13 = sub_10027E2F0(objc_msgSend(v12, "characterAtIndex:", objc_msgSend(selection, "end") - 1)), v12, v13))
    {
      v14 = [selection end];
    }

    else
    {
      if ([selection isRange])
      {
        isAtEndOfLine4 = 1;
      }

      else
      {
        isAtEndOfLine4 = [selection isAtEndOfLine];
      }

      v23 = isAtEndOfLine4;
      v14 = -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", [selection end], &v23, 4, 0, 0, 0);
      textSource = [(CRLWPEditorHelper *)self textSource];
      if (v14 >= [textSource length] - 1)
      {
      }

      else
      {
        textSource2 = [(CRLWPEditorHelper *)self textSource];
        v18 = sub_10027E2F0([textSource2 characterAtIndex:v14]);

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
    if (v21.location != [selection range] || v21.length != v22)
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v21.location endOfLine:v21.length, 0];
    }
  }
}

- (void)selectWordWithFlags:(unint64_t)flags
{
  selection = [(CRLWPEditorHelper *)self selection];
  textSource = [(CRLWPEditorHelper *)self textSource];
  if ([selection isValid] && objc_msgSend(textSource, "length"))
  {
    start = [selection start];
    if (start && (start == [textSource length] || sub_10027E2F0(objc_msgSend(textSource, "characterAtIndex:", start))))
    {
      start = [textSource previousCharacterIndex:start];
    }

    location = [(CRLWPEditorHelper *)self rangeForSelectionAtCharIndex:start caretIndex:start];
    length = v8;
    if ([selection isRange] && (location != objc_msgSend(selection, "range") || length != v10))
    {
      if (location == 0x7FFFFFFFFFFFFFFFLL && length == 0)
      {
        length = 0;
      }

      else
      {
        start = location;
      }

      v11 = [textSource previousCharacterIndex:{objc_msgSend(selection, "end")}];
      v13.location = [(CRLWPEditorHelper *)self rangeForSelectionAtCharIndex:v11 caretIndex:v11];
      v13.length = v12;
      if (v13.location == 0x7FFFFFFFFFFFFFFFLL && !v12)
      {
        v13.location = [selection end];
        v13.length = 0;
      }

      v18.location = start;
      v18.length = length;
      v14 = NSUnionRange(v18, v13);
      location = v14.location;
      length = v14.length;
    }

    if (location != [selection range] || length != v15)
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:location endOfLine:length withFlags:0, flags];
    }
  }
}

- (void)p_setSelectionFromKeyboardWithRange:(_NSRange)range leadingEdge:(BOOL)edge endOfLine:(BOOL)line allowEndOfLineChange:(BOOL)change
{
  lineCopy = line;
  length = range.length;
  location = range.location;
  v11 = objc_alloc([(CRLWPEditorHelper *)self wpSelectionClass:range.location]);
  v12 = objc_opt_class();
  textSource = [(CRLWPEditorHelper *)self textSource];
  v14 = sub_100014370(v12, textSource);
  v43 = length;
  LOBYTE(v42) = edge;
  v44 = [v11 initWithType:7 range:location styleInsertionBehavior:length caretAffinity:0 smartFieldRange:lineCopy leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:{0, v42, v14}];

  editorController = [(CRLWPEditorHelper *)self editorController];
  selectionPath = [editorController selectionPath];

  v17 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];
  if (v17)
  {
    v18 = [selectionPath selectionPathReplacingMostSpecificLocationOfSelection:v17 withSelection:v44];
  }

  else
  {
    interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
    selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
    range = [v44 range];
    v23 = v22;
    v24 = objc_opt_class();
    textSource2 = [(CRLWPEditorHelper *)self textSource];
    v26 = sub_100014370(v24, textSource2);
    v18 = [selectionModelTranslator selectionPathForRange:range onStorage:{v23, v26}];
  }

  range2 = [v17 range];
  v29 = v28;
  v30 = location;
  if ([v44 isRange])
  {
    v30 = location + v43;
    if (range2 != location)
    {
      if (v30 == &range2[v29])
      {
        v30 = location;
      }

      else
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  interactiveCanvasController2 = [(CRLWPEditorHelper *)self interactiveCanvasController];
  v32 = interactiveCanvasController2;
  if (v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 36;
  }

  else
  {
    v33 = 32;
  }

  [interactiveCanvasController2 setSelectionPath:v18 withSelectionFlags:v33];

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
      caretAffinity = [v44 caretAffinity];
    }

    else
    {
      caretAffinity = 0;
    }

    if (([v44 isRange] & (v30 == location + v43)) != 0)
    {
      caretAffinity = 1;
    }

    if ([v35 caretAffinity] != caretAffinity)
    {
      v37 = [v35 copyWithNewStyleInsertionBehavior:0 newCaretAffinity:caretAffinity];

      v35 = v37;
    }

    v38 = selectionPath;
    v39 = [selectionPath selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:v35];
    interactiveCanvasController3 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [interactiveCanvasController3 scrollToSelectionPath:v39 scrollOptions:0];

    interactiveCanvasController4 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [interactiveCanvasController4 layoutIfNeeded];

    selectionPath = v38;
  }

  [(CRLWPEditorHelper *)self setSelectionLastModifiedWithKeyboard:1];
  if ([v44 isInsertionPoint])
  {
    self->_selectionAnchor = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(CRLWPEditorHelper *)self p_clearEditMenuFlags];
}

- (void)p_moveToEndOfLineRight:(BOOL)right
{
  rightCopy = right;
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    leadingEdge = [selection leadingEdge];
    if (rightCopy)
    {
      v6 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:selection withLeadingEdge:&leadingEdge];
      v7 = 2;
    }

    else
    {
      v6 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:selection withLeadingEdge:&leadingEdge];
      v7 = 3;
    }

    v8 = leadingEdge;
    v9 = [(CRLWPEditorHelper *)self p_isCharIndex:v6 withEolAffinity:1 atBoundary:4 inDirection:v7];
    if ([selection isRange] && v6 == objc_msgSend(selection, "end"))
    {
      textSource = [(CRLWPEditorHelper *)self textSource];
      v11 = sub_10027E2F0([textSource characterAtIndex:v6 - 1]);

      v12 = &v6[-(v11 & 1)];
    }

    else
    {
      v11 = 0;
      v12 = v6;
    }

    if ([selection isInsertionPoint])
    {
      isAtEndOfLine = [selection isAtEndOfLine];
    }

    else
    {
      isAtEndOfLine = v11 | v9;
    }

    v16 = isAtEndOfLine & 1;
    v14 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v12 withEolAffinity:&v16 toBoundary:4 inDirection:v7 preferPosition:0 isLeadingEdge:&leadingEdge];
    v15 = leadingEdge;
    if (v14 != v6 || v8 != leadingEdge)
    {
      goto LABEL_16;
    }

    if ([selection isRange])
    {
      v15 = leadingEdge;
LABEL_16:
      [(CRLWPEditorHelper *)self p_setSelectionFromKeyboardWithRange:v14 leadingEdge:0 endOfLine:v15 & 1 allowEndOfLineChange:v16, 0];
    }
  }
}

- (void)p_extendToEndOfLineRight:(BOOL)right
{
  rightCopy = right;
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    leadingEdge = [selection leadingEdge];
    if (rightCopy)
    {
      v6 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:selection withLeadingEdge:&leadingEdge];
    }

    else
    {
      v6 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:selection withLeadingEdge:&leadingEdge];
    }

    v7 = v6;
    if (![selection isRange] || v7 != objc_msgSend(selection, "end") || (-[CRLWPEditorHelper textSource](self, "textSource"), v8 = objc_claimAutoreleasedReturnValue(), v9 = sub_10027E2F0(objc_msgSend(v8, "characterAtIndex:", v7 - 1)), v8, (v9 & 1) == 0))
    {
      if (rightCopy)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }

      isAtEndOfLine = [(CRLWPEditorHelper *)self p_isCharIndex:v7 withEolAffinity:1 atBoundary:4 inDirection:v10];
      if ([selection isInsertionPoint])
      {
        isAtEndOfLine = [selection isAtEndOfLine];
      }

      v14 = isAtEndOfLine;
      v7 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v7 withEolAffinity:&v14 toBoundary:4 inDirection:v10 preferPosition:0 isLeadingEdge:&leadingEdge];
    }

    leadingEdge2 = [selection leadingEdge];
    if (rightCopy)
    {
      v12 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:selection withLeadingEdge:&leadingEdge2];
    }

    else
    {
      v12 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:selection withLeadingEdge:&leadingEdge2];
    }

    [(CRLWPEditorHelper *)self p_setVisualSelectionWithCharIndex:v7 leadingEdge:leadingEdge andAnchor:v12 andAnchorLeadingEdge:leadingEdge2];
  }
}

- (void)moveToBeginningOfLine:(id)line
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    start = [selection start];
    isAtEndOfLine = [selection isAtEndOfLine];
    v6 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:start withEolAffinity:&isAtEndOfLine toBoundary:4 inDirection:1 preferPosition:0 isLeadingEdge:0];
    if (v6 != start || [selection isRange])
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v6 endOfLine:0, 0];
    }
  }
}

- (void)moveToEndOfLine:(id)line
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    v5 = [selection end];
    v6 = v5;
    if ([selection isRange])
    {
      textSource = [(CRLWPEditorHelper *)self textSource];
      v8 = sub_10027E2F0([textSource characterAtIndex:v5 - 1]);

      v6 = &v5[-(v8 & 1)];
    }

    isAtEndOfLine = [(CRLWPEditorHelper *)self p_isCharIndex:v6 withEolAffinity:1 atBoundary:4 inDirection:0];
    if ([selection isInsertionPoint])
    {
      isAtEndOfLine = [selection isAtEndOfLine];
    }

    v11 = isAtEndOfLine;
    v10 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v6 withEolAffinity:&v11 toBoundary:4 inDirection:0 preferPosition:0 isLeadingEdge:0];
    if (v10 != v5 || [selection isRange])
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v10 endOfLine:0, 1];
    }
  }
}

- (void)moveToBeginningOfLineAndModifySelection:(id)selection
{
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    start = [selection start];
    isAtEndOfLine = [selection isAtEndOfLine];
    -[CRLWPEditorHelper p_setSelectionWithCharIndex:andAnchor:](self, "p_setSelectionWithCharIndex:andAnchor:", -[CRLWPEditorHelper p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:](self, "p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:", start, &isAtEndOfLine, 4, 1, 0, 0), [selection end]);
  }

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];
}

- (void)moveToEndOfLineAndModifySelection:(id)selection
{
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    v6 = [selection end];
    if ([selection isInsertionPoint])
    {
      isAtEndOfLine = [selection isAtEndOfLine];
    }

    else
    {
      isAtEndOfLine = 1;
    }

    v11 = isAtEndOfLine;
    if (![selection isRange] || v6 != objc_msgSend(selection, "end") || (-[CRLWPEditorHelper textSource](self, "textSource"), v8 = objc_claimAutoreleasedReturnValue(), v9 = sub_10027E2F0(objc_msgSend(v8, "characterAtIndex:", v6 - 1)), v8, (v9 & 1) == 0))
    {
      v6 = [(CRLWPEditorHelper *)self p_charIndexByMovingCharIndex:v6 withEolAffinity:&v11 toBoundary:4 inDirection:0 preferPosition:0 isLeadingEdge:0];
    }

    -[CRLWPEditorHelper p_setSelectionWithCharIndex:andAnchor:](self, "p_setSelectionWithCharIndex:andAnchor:", v6, [selection start]);
  }

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];
}

- (void)moveToBeginningOfParagraph:(id)paragraph
{
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    start = [selection start];
    textSource = [(CRLWPEditorHelper *)self textSource];
    v6 = [textSource textRangeForParagraphAtCharIndex:start];

    if (v6 != start || [selection isRange])
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v6 endOfLine:0, 0];
    }
  }

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];
}

- (void)moveToEndOfParagraph:(id)paragraph
{
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    v4 = [selection end];
    v5 = v4;
    if ([selection isRange])
    {
      textSource = [(CRLWPEditorHelper *)self textSource];
      v7 = sub_10027E2F0([textSource characterAtIndex:v4 - 1]);

      v5 = &v4[-(v7 & 1)];
    }

    textSource2 = [(CRLWPEditorHelper *)self textSource];
    v9 = [textSource2 textRangeForParagraphAtCharIndex:v5];
    v11 = v10;

    v12 = &v9[v11];
    if (v11)
    {
      textSource3 = [(CRLWPEditorHelper *)self textSource];
      v14 = sub_10027E2F0([textSource3 characterAtIndex:v12 - 1]);

      v12 -= v14 & 1;
    }

    if (v12 != v4 || [selection isRange])
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v12 endOfLine:0, 0];
    }
  }

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];
}

- (void)moveToBeginningOfParagraphAndModifySelection:(id)selection
{
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    range = [selection range];
    v6 = v5;
    textSource = [(CRLWPEditorHelper *)self textSource];
    v8 = [textSource textRangeForParagraphAtCharIndex:range];

    [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v8 andAnchor:&range[v6]];
  }

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];
}

- (void)moveToEndOfParagraphAndModifySelection:(id)selection
{
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    range = [selection range];
    v6 = v5;
    v7 = &range[v5];
    if ([selection isRange])
    {
      textSource = [(CRLWPEditorHelper *)self textSource];
      v9 = sub_10027E2F0([textSource characterAtIndex:v7 - 1]);

      v7 -= v9 & 1;
    }

    textSource2 = [(CRLWPEditorHelper *)self textSource];
    v11 = [textSource2 textRangeForParagraphAtCharIndex:v7];
    v13 = v12;

    v14 = &v11[v13];
    if (range <= &v11[v13])
    {
      v15 = &v11[v13];
    }

    else
    {
      v15 = range;
    }

    if (range >= &v11[v13])
    {
      v16 = &v11[v13];
    }

    else
    {
      v16 = range;
    }

    if (range > v14 || v15 - v16 != v6)
    {
      if (v13)
      {
        textSource3 = [(CRLWPEditorHelper *)self textSource];
        v18 = sub_10027E2F0([textSource3 characterAtIndex:v14 - 1]);

        v14 = &v11[v13 - (v18 & 1)];
      }

      [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v14 andAnchor:range];
    }
  }

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];
}

- (void)moveParagraphForward:(id)forward
{
  forwardCopy = forward;
  [(CRLWPEditorHelper *)self moveForward:?];
  [(CRLWPEditorHelper *)self moveToEndOfParagraph:forwardCopy];
}

- (void)moveParagraphBackward:(id)backward
{
  backwardCopy = backward;
  [(CRLWPEditorHelper *)self moveBackward:?];
  [(CRLWPEditorHelper *)self moveToBeginningOfParagraph:backwardCopy];
}

- (void)moveParagraphForwardAndModifySelection:(id)selection
{
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:0 newAnchor:&v13];
    textSource = [(CRLWPEditorHelper *)self textSource];
    v8 = [textSource textRangeForParagraphAtCharIndex:v6];
    v10 = v9;

    v11 = v8 + v10;
    if (v6 < [(CRLWPEditorHelper *)self selectionAnchor]&& [(CRLWPEditorHelper *)self selectionAnchor]< v11)
    {
      v11 = v13;
    }

    [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v11 andAnchor:?];
  }

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];
}

- (void)moveParagraphBackwardAndModifySelection:(id)selection
{
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(CRLWPEditorHelper *)self p_selectionEdgeToMutateWithDirection:1 newAnchor:&v11];
    textSource = [(CRLWPEditorHelper *)self textSource];
    v8 = [textSource textRangeForParagraphAtCharIndex:v6];

    if (v6 && v6 == v8)
    {
      textSource2 = [(CRLWPEditorHelper *)self textSource];
      v8 = [textSource2 textRangeForParagraphAtCharIndex:v6 - 1];
    }

    if (v6 > [(CRLWPEditorHelper *)self selectionAnchor]&& [(CRLWPEditorHelper *)self selectionAnchor]> v8)
    {
      v8 = v11;
    }

    [(CRLWPEditorHelper *)self p_setSelectionWithCharIndex:v8 andAnchor:?];
  }

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];
}

- (void)moveToBeginningOfDocument:(id)document
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid] && (objc_msgSend(selection, "start") || objc_msgSend(selection, "isRange")))
  {
    [(CRLWPEditorHelper *)self setSelectionWithRange:0 endOfLine:0, 0];
  }
}

- (void)moveToEndOfDocument:(id)document
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    textSource = [(CRLWPEditorHelper *)self textSource];
    v5 = [textSource length];

    if (v5 - 1 != [selection end] || objc_msgSend(selection, "isRange"))
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:v5 - 1 endOfLine:0, 0];
    }
  }
}

- (void)moveToBeginningOfDocumentAndModifySelection:(id)selection
{
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    -[CRLWPEditorHelper p_setSelectionWithCharIndex:andAnchor:](self, "p_setSelectionWithCharIndex:andAnchor:", 0, [selection end]);
  }

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];
}

- (void)moveToEndOfDocumentAndModifySelection:(id)selection
{
  editor = [(CRLWPEditorHelper *)self editor];
  [editor textSelectionWillChange];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    textSource = [(CRLWPEditorHelper *)self textSource];
    v5 = [textSource length];

    -[CRLWPEditorHelper p_setSelectionWithCharIndex:andAnchor:](self, "p_setSelectionWithCharIndex:andAnchor:", v5 - 1, [selection start]);
  }

  editor2 = [(CRLWPEditorHelper *)self editor];
  [editor2 textSelectionDidChange];
}

- (CGRect)p_viewRectForSelection:(id)selection
{
  selectionCopy = selection;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if ([selectionCopy isValid])
  {
    v9 = -[objc_class selectionWithRange:](-[CRLWPEditorHelper wpSelectionClass](self, "wpSelectionClass"), "selectionWithRange:", [selectionCopy start], 0);
    editorController = [(CRLWPEditorHelper *)self editorController];
    selectionPath = [editorController selectionPath];
    selection = [(CRLWPEditorHelper *)self selection];
    v13 = [selectionPath selectionPathPoppingOffSelection:selection];

    v14 = [v13 selectionPathWithAppendedSelection:v9];
    interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
    v16 = [interactiveCanvasController infoForSelectionPath:v14];

    interactiveCanvasController2 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    v18 = [interactiveCanvasController2 layoutForInfoNearestVisibleRect:v16 intersectingSelectionPath:v14];

    interactiveCanvasController3 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    [interactiveCanvasController3 layoutIfNeeded];

    v20 = objc_opt_class();
    interactiveCanvasController4 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    v22 = [interactiveCanvasController4 repForLayout:v18];
    v23 = sub_100014370(v20, v22);

    if (v23)
    {
      if ([selectionCopy isRange])
      {
        [v23 rectForSelection:selectionCopy includeRuby:0 includePaginatedAttachments:0];
      }

      else
      {
        [v23 caretRectForSelection:selectionCopy];
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
      interactiveCanvasController5 = [(CRLWPEditorHelper *)self interactiveCanvasController];
      canvas = [interactiveCanvasController5 canvas];
      [canvas convertUnscaledToBoundsRect:{v32, v33, v34, v35}];
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
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    selection2 = [(CRLWPEditorHelper *)self selection];
    v5 = [selection2 type] != 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notifySelectionChangedWithFlags:(unint64_t)flags
{
  v5 = +[NSNotificationCenter defaultCenter];
  v11[0] = @"CRLWPEditorKey";
  editor = [(CRLWPEditorHelper *)self editor];
  v12[0] = editor;
  v11[1] = @"CRLWPEditorSelectionFlagsKey";
  v7 = [NSNumber numberWithUnsignedLongLong:flags];
  v12[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  editor2 = [(CRLWPEditorHelper *)self editor];
  storage = [editor2 storage];
  [v5 postNotificationName:@"CRLTPEditorSelectionChanged" object:storage userInfo:v8];
}

- (void)insertParagraphSeparator:(id)separator
{
  editor = [(CRLWPEditorHelper *)self editor];
  v3 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:@"\n"];
  [editor insertText:v3];
}

- (void)insertNewlineIgnoringFieldEditor:(id)editor
{
  editor = [(CRLWPEditorHelper *)self editor];
  v3 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:@"\n"];
  [editor insertText:v3];
}

- (BOOL)editorKeyboardLanguageIsRTL
{
  editorKeyboardLanguage = [(CRLWPEditorHelper *)self editorKeyboardLanguage];
  v3 = [NSLocale characterDirectionForLanguage:editorKeyboardLanguage]== 2;

  return v3;
}

- (const)p_lineFragmentWithCaretInfo:(id *)info forSelection:(id)selection
{
  selectionCopy = selection;
  textSource = [(CRLWPEditorHelper *)self textSource];
  v45 = 0;
  v7 = -[CRLWPEditorHelper p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [selectionCopy insertionChar], &v45, 0);
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
    insertionChar = [selectionCopy insertionChar];
    v16 = sub_1002117DC(v7, insertionChar);
    v40 = v16 == 1;
    leadingEdge = [selectionCopy leadingEdge];
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
    if (insertionChar < [textSource length])
    {
      v18 = sub_10027F9E8(insertionChar, textSource);
      v43 = sub_100281034(v18);
    }

    v19 = (v14 >> 12) & 1;
    if (([selectionCopy isVisual] & 1) != 0 || insertionChar <= *v7 || (v16 == 1) == -[CRLWPEditorHelper editorKeyboardLanguageIsRTL](self, "editorKeyboardLanguageIsRTL"))
    {
      v39 = v16 == 1;
      if (v39 != leadingEdge)
      {
        goto LABEL_27;
      }
    }

    else
    {
      textSource2 = [(CRLWPEditorHelper *)self textSource];
      insertionChar = [textSource2 previousCharacterIndex:{objc_msgSend(selectionCopy, "insertionChar")}];

      LOBYTE(leadingEdge) = 0;
      if (sub_1002117DC(v7, insertionChar) == 1)
      {
        LOBYTE(v39) = 1;
        v40 = 1;
LABEL_27:
        v21 = textSource;
        v22 = objc_opt_class();
        v23 = sub_100014370(v22, textSource);
        v24 = sub_1002147B0(v7, insertionChar, 3, v23);

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

        if (insertionChar == sub_10021173C(v7))
        {
          v29 = v39;
          v30 = insertionChar;
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
          v30 = insertionChar;
          v31 = v43;
          v29 = v39;
        }

        v32 = v40;
LABEL_54:
        info->var4 = v26;
        info->var5 = v19;
        info->var2 = leadingEdge;
        info->var6 = v17;
        info->var7 = v30;
        info->var8 = v32;
        info->var9 = v31;
        info->var0 = insertionChar;
        info->var1 = v29;
        info->var3 = v43;
        textSource = v21;
        goto LABEL_55;
      }

      LOBYTE(v39) = 0;
      v40 = 0;
    }

    v33 = objc_opt_class();
    v34 = sub_100014370(v33, textSource);
    v30 = sub_1002147B0(v7, insertionChar, 2, v34);

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
      v37 = sub_10027F9E8(v30, textSource);
      v32 = v36 == 1;
      v31 = sub_100281034(v37);
    }

    v21 = textSource;
    if (insertionChar == sub_100211708(v7))
    {
      v29 = v39;
      v26 = insertionChar;
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
      v26 = insertionChar;
      v17 = v43;
      v29 = v39;
    }

    LOBYTE(v19) = v40;
    goto LABEL_54;
  }

  storage = [v8 storage];
  v13 = storage != textSource;

  if (!v13 && v7 != 0)
  {
    goto LABEL_16;
  }

  v7 = 0;
LABEL_55:

  return v7;
}

- (unint64_t)getVisualDeletionIndexForSelection:(id)selection backward:(BOOL *)backward
{
  selectionCopy = selection;
  if (backward)
  {
    v7 = *backward;
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

  range = [selectionCopy range];
  if (([selectionCopy isInsertionPoint] & 1) == 0)
  {
    [selectionCopy range];
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

  v16 = [(CRLWPEditorHelper *)self p_lineFragmentWithCaretInfo:&v28 forSelection:selectionCopy];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_42;
  }

  if (!v16[1])
  {
    goto LABEL_42;
  }

  if (![selectionCopy isVisual])
  {
    goto LABEL_42;
  }

  if (([selectionCopy isInsertionPoint] & 1) == 0)
  {
    [selectionCopy range];
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

    textSource = [(CRLWPEditorHelper *)self textSource];
    if ([(CRLWPEditorHelper *)self editorKeyboardLanguageIsRTL])
    {
      v26 = v32;
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_57:
        v21 = [textSource nextCharacterIndex:v26];
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

  if (v30 == v33 || ![selectionCopy isVisual])
  {
LABEL_42:
    v21 = range;
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
    textSource2 = [(CRLWPEditorHelper *)self textSource];
    v21 = [textSource2 nextCharacterIndex:v32];
  }

LABEL_43:
  if (backward)
  {
    *backward = v7;
  }

  return v21;
}

- (id)characterStyleForDeletedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textSource = [(CRLWPEditorHelper *)self textSource];
  v6 = [textSource characterStyleAtCharIndex:location effectiveRange:v9];

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

- (void)p_deleteSelectionBackward:(BOOL)backward decomposeCharacter:(BOOL)character smart:(BOOL)smart kill:(BOOL)kill
{
  backwardCopy = backward;
  v7 = [(CRLWPEditorHelper *)self editor:backward];
  [v7 unmarkText];

  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    textSource = [(CRLWPEditorHelper *)self textSource];
    if ([textSource length])
    {
      areCollabUserActionsCurrentlyPermitted = [(CRLWPEditorHelper *)self areCollabUserActionsCurrentlyPermitted];

      if (!areCollabUserActionsCurrentlyPermitted)
      {
        return;
      }

      interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
      [interactiveCanvasController layoutIfNeeded];

      interactiveCanvasController2 = [(CRLWPEditorHelper *)self interactiveCanvasController];
      commandController = [interactiveCanvasController2 commandController];

      v50 = commandController;
      if (!commandController)
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

      selection2 = [(CRLWPEditorHelper *)self selection];
      superRange = [selection2 superRange];
      v19 = v18;

      selection3 = [(CRLWPEditorHelper *)self selection];
      range = [selection3 range];
      v23 = v22;

      textSource2 = [(CRLWPEditorHelper *)self textSource];
      v25 = &superRange[v19] > [textSource2 length];

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

      textSource3 = [(CRLWPEditorHelper *)self textSource];
      v30 = &range[v23] > [textSource3 length];

      if (v30)
      {
        goto LABEL_48;
      }

      if (v19)
      {
LABEL_47:
        v46 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:range, v23];
        editor = [(CRLWPEditorHelper *)self editor];
        v48 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:&stru_1018BCA28];
        [editor replace:v46 with:v48];

LABEL_48:
        return;
      }

      styleProvider = [(CRLWPEditorHelper *)self styleProvider];
      [(CRLWPEditorHelper *)self paragraphEnumeratorAtCharIndex:superRange styleProvider:styleProvider];

      v32 = sub_100240A60(v51);
      if (backwardCopy && v32)
      {
        v33 = sub_100240978(v51);
        v34 = [NSString stringWithFormat:@"%C", 65532, v50];
        v35 = [v33 stringByReplacingOccurrencesOfString:v34 withString:&stru_1018BCA28];

        if (![v35 length] || (sub_10027E214(), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "stringByTrimmingCharactersInSet:", v36), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "length") == 0, v37, v36, v38))
        {
          [(CRLWPEditorHelper *)self p_deleteBackwardsOnEmptyListWithRange:range ignoreLevel:v23, 1];

          goto LABEL_46;
        }
      }

      selection4 = [(CRLWPEditorHelper *)self selection];
      range = [(CRLWPEditorHelper *)self getVisualDeletionIndexForSelection:selection4 backward:&backwardCopy];

      textSource4 = [(CRLWPEditorHelper *)self textSource];
      v41 = [textSource4 length];

      if (backwardCopy)
      {
        if (range)
        {
          textSource5 = [(CRLWPEditorHelper *)self textSource];
          v43 = [textSource5 previousCharacterIndex:range];

LABEL_39:
          if (range <= v43)
          {
            v45 = v43;
          }

          else
          {
            v45 = range;
          }

          if (range >= v43)
          {
            range = v43;
          }

          v23 = v45 - range;
        }
      }

      else if (range < v41 - 1)
      {
        textSource6 = [(CRLWPEditorHelper *)self textSource];
        v43 = [textSource6 nextCharacterIndex:range];

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
  editor = [(CRLWPEditorHelper *)self editor];
  wantsToReceiveTextInput = [editor wantsToReceiveTextInput];

  return wantsToReceiveTextInput;
}

- (void)deleteBackwardByDecomposingPreviousCharacter:(id)character
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {

    [(CRLWPEditorHelper *)self p_deleteSelectionBackward:1 decomposeCharacter:1 smart:0 kill:0];
  }
}

- (void)deleteWordForward:(id)forward
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    selection = [(CRLWPEditorHelper *)self selection];
    isValid = [selection isValid];

    if (isValid)
    {
      selection2 = [(CRLWPEditorHelper *)self selection];
      isInsertionPoint = [selection2 isInsertionPoint];

      if (isInsertionPoint)
      {
        continueKillRing = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveWordForwardAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:continueKillRing];

        [(CRLWPEditorHelper *)self p_deleteSelectionBackward:0 decomposeCharacter:0 smart:0 kill:0];
      }

      else
      {
        editor = [(CRLWPEditorHelper *)self editor];
        [editor deleteForward:0];
      }
    }
  }
}

- (void)deleteWordBackward:(id)backward
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    selection = [(CRLWPEditorHelper *)self selection];
    isValid = [selection isValid];

    if (isValid)
    {
      selection2 = [(CRLWPEditorHelper *)self selection];
      isInsertionPoint = [selection2 isInsertionPoint];

      if (isInsertionPoint)
      {
        continueKillRing = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveWordBackwardAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:continueKillRing];

        [(CRLWPEditorHelper *)self p_deleteSelectionBackward:1 decomposeCharacter:0 smart:0 kill:0];
      }

      else
      {
        editor = [(CRLWPEditorHelper *)self editor];
        [editor deleteBackward:0];
      }
    }
  }
}

- (void)deleteToBeginningOfLine:(id)line
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    selection = [(CRLWPEditorHelper *)self selection];
    isValid = [selection isValid];

    if (isValid)
    {
      selection2 = [(CRLWPEditorHelper *)self selection];
      isInsertionPoint = [selection2 isInsertionPoint];

      if (isInsertionPoint)
      {
        continueKillRing = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveToBeginningOfLineAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:continueKillRing];
      }

      selection3 = [(CRLWPEditorHelper *)self selection];
      isInsertionPoint2 = [selection3 isInsertionPoint];

      if ((isInsertionPoint2 & 1) == 0)
      {

        [(CRLWPEditorHelper *)self p_deleteSelectionBackward:1 decomposeCharacter:0 smart:0 kill:1];
      }
    }
  }
}

- (void)deleteToEndOfLine:(id)line
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    selection = [(CRLWPEditorHelper *)self selection];
    isValid = [selection isValid];

    if (isValid)
    {
      selection2 = [(CRLWPEditorHelper *)self selection];
      isInsertionPoint = [selection2 isInsertionPoint];

      if (isInsertionPoint)
      {
        continueKillRing = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveToEndOfLineAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:continueKillRing];
      }

      selection3 = [(CRLWPEditorHelper *)self selection];
      isInsertionPoint2 = [selection3 isInsertionPoint];

      if ((isInsertionPoint2 & 1) == 0)
      {

        [(CRLWPEditorHelper *)self p_deleteSelectionBackward:0 decomposeCharacter:0 smart:0 kill:1];
      }
    }
  }
}

- (void)deleteToBeginningOfParagraph:(id)paragraph
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    selection = [(CRLWPEditorHelper *)self selection];
    isValid = [selection isValid];

    if (isValid)
    {
      selection2 = [(CRLWPEditorHelper *)self selection];
      isInsertionPoint = [selection2 isInsertionPoint];

      if (isInsertionPoint)
      {
        continueKillRing = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveToBeginningOfParagraphAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:continueKillRing];
      }

      selection3 = [(CRLWPEditorHelper *)self selection];
      isInsertionPoint2 = [selection3 isInsertionPoint];

      if ((isInsertionPoint2 & 1) == 0)
      {

        [(CRLWPEditorHelper *)self p_deleteSelectionBackward:1 decomposeCharacter:0 smart:0 kill:1];
      }
    }
  }
}

- (void)deleteToEndOfParagraph:(id)paragraph
{
  if (![(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    return;
  }

  selection = [(CRLWPEditorHelper *)self selection];
  isValid = [selection isValid];

  if (!isValid)
  {
    return;
  }

  selection2 = [(CRLWPEditorHelper *)self selection];
  isInsertionPoint = [selection2 isInsertionPoint];

  if (isInsertionPoint)
  {
    continueKillRing = [(CRLWPEditorHelper *)self continueKillRing];
    [(CRLWPEditorHelper *)self moveToEndOfParagraphAndModifySelection:self];
    [(CRLWPEditorHelper *)self setContinueKillRing:continueKillRing];
  }

  selection3 = [(CRLWPEditorHelper *)self selection];
  if ([selection3 isInsertionPoint])
  {
    selection4 = [(CRLWPEditorHelper *)self selection];
    range = [selection4 range];
    textSource = [(CRLWPEditorHelper *)self textSource];
    if (range < [textSource length])
    {
      textSource2 = [(CRLWPEditorHelper *)self textSource];
      selection5 = [(CRLWPEditorHelper *)self selection];
      v15 = sub_10027E2F0([textSource2 characterAtIndex:{objc_msgSend(selection5, "range")}]);

      if (v15)
      {
        continueKillRing2 = [(CRLWPEditorHelper *)self continueKillRing];
        [(CRLWPEditorHelper *)self moveForwardAndModifySelection:self];
        [(CRLWPEditorHelper *)self setContinueKillRing:continueKillRing2];
      }

      goto LABEL_11;
    }
  }

LABEL_11:
  selection6 = [(CRLWPEditorHelper *)self selection];
  isInsertionPoint2 = [selection6 isInsertionPoint];

  if ((isInsertionPoint2 & 1) == 0)
  {

    [(CRLWPEditorHelper *)self p_deleteSelectionBackward:0 decomposeCharacter:0 smart:0 kill:1];
  }
}

- (void)yank:(id)yank
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    selection = [(CRLWPEditorHelper *)self selection];
    isValid = [selection isValid];

    if (isValid)
    {
      v13 = sub_1004A2F18();
      v5 = [_TtC8Freeform12CRLTextRange alloc];
      selection2 = [(CRLWPEditorHelper *)self selection];
      range = [selection2 range];
      v9 = [(CRLTextRange *)v5 initWithRange:range, v8];

      editor = [(CRLWPEditorHelper *)self editor];
      v11 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:v13];
      [editor replace:v9 with:v11];

      sub_1004A2F08();
    }
  }
}

- (void)yankAndSelect:(id)select
{
  if ([(CRLWPEditorHelper *)self wantsToReceiveTextInput])
  {
    selection = [(CRLWPEditorHelper *)self selection];
    isValid = [selection isValid];

    if (isValid)
    {
      v12 = sub_1004A2F80();
      selection2 = [(CRLWPEditorHelper *)self selection];
      range = [selection2 range];
      v7 = [v12 length];

      v8 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:range, v7];
      editor = [(CRLWPEditorHelper *)self editor];
      v10 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:v12];
      [editor replace:v8 with:v10];

      [(CRLWPEditorHelper *)self setSelectionWithRange:range endOfLine:v7, 0];
      sub_1004A2F08();
    }
  }
}

- (void)setMark:(id)mark
{
  selection = [(CRLWPEditorHelper *)self selection];
  isValid = [selection isValid];

  if (isValid)
  {
    selection2 = [(CRLWPEditorHelper *)self selection];
    range = [selection2 range];
    [(CRLWPEditorHelper *)self setEmacsMarkRange:range, v6];
  }
}

- (_NSRange)p_sanitizeMark
{
  emacsMarkRange = [(CRLWPEditorHelper *)self emacsMarkRange];
  v5 = v4;
  textSource = [(CRLWPEditorHelper *)self textSource];
  v7 = [textSource length];

  textSource2 = [(CRLWPEditorHelper *)self textSource];
  v9 = [textSource2 length];
  if (emacsMarkRange >= v7)
  {
    emacsMarkRange = v7;
  }

  if (v5 >= v9 - emacsMarkRange)
  {
    v5 = v9 - emacsMarkRange;
  }

  [(CRLWPEditorHelper *)self emacsMarkRange];
  v10 = emacsMarkRange;
  v11 = v5;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)deleteToMark:(id)mark
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    emacsMarkRange = [(CRLWPEditorHelper *)self emacsMarkRange];

    if (emacsMarkRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      p_sanitizeMark = [(CRLWPEditorHelper *)self p_sanitizeMark];
      v7 = v6;
      selection2 = [(CRLWPEditorHelper *)self selection];
      v14.location = [selection2 range];
      v14.length = v8;
      v13.location = p_sanitizeMark;
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

- (void)selectToMark:(id)mark
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    emacsMarkRange = [(CRLWPEditorHelper *)self emacsMarkRange];

    if (emacsMarkRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      p_sanitizeMark = [(CRLWPEditorHelper *)self p_sanitizeMark];
      v7 = v6;
      [(CRLWPEditorHelper *)self setEmacsMarkRange:p_sanitizeMark, v6];
      selection2 = [(CRLWPEditorHelper *)self selection];
      v14.location = [selection2 range];
      v14.length = v8;
      v13.location = p_sanitizeMark;
      v13.length = v7;
      v9 = NSUnionRange(v13, v14);

      [(CRLWPEditorHelper *)self setSelectionWithRange:v9.location endOfLine:v9.length, 0];
    }
  }

  else
  {
  }
}

- (void)swapWithMark:(id)mark
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isValid])
  {
    emacsMarkRange = [(CRLWPEditorHelper *)self emacsMarkRange];

    if (emacsMarkRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      p_sanitizeMark = [(CRLWPEditorHelper *)self p_sanitizeMark];
      v7 = v6;
      selection2 = [(CRLWPEditorHelper *)self selection];
      range = [selection2 range];
      [(CRLWPEditorHelper *)self setEmacsMarkRange:range, v9];

      [(CRLWPEditorHelper *)self setSelectionWithRange:p_sanitizeMark endOfLine:v7, 0];
    }
  }

  else
  {
  }
}

- (void)transpose:(id)transpose
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isInsertionPoint])
  {
    range = [selection range];
    textSource = [(CRLWPEditorHelper *)self textSource];
    v6 = [textSource length];
    if (range && range == v6)
    {
      range = [textSource previousCharacterIndex:range];
    }

    if (range)
    {
      if (range < [textSource length])
      {
        v7 = -[CRLWPEditorHelper p_indexToTransposableCharacterStartingAtIndex:filterStorage:searchTowardsStorageStart:](self, "p_indexToTransposableCharacterStartingAtIndex:filterStorage:searchTowardsStorageStart:", [textSource previousCharacterIndex:range], textSource, 1);
        v8 = [(CRLWPEditorHelper *)self p_indexToTransposableCharacterStartingAtIndex:range filterStorage:textSource searchTowardsStorageStart:0];
        if (v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = v8;
          if (v8 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = [textSource nextCharacterIndex:v8];
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
            textSource2 = [(CRLWPEditorHelper *)self textSource];
            v15 = sub_100014370(v13, textSource2);

            if (v15)
            {
              v16 = [textSource charRangeMappedToStorage:{v12, v11 - v12}];
              if ([(CRLWPEditorHelper *)self p_storageRangeCanBeTransposed:v16 storage:v17, v15])
              {
                if ([(CRLWPEditorHelper *)self p_filteredRangeCanBeTransposed:v12 inFilteredStorage:v11 - v12, textSource])
                {
                  v18 = [textSource charRangeMappedToStorage:{v7, objc_msgSend(textSource, "nextCharacterIndex:", v7) - v7}];
                  v20 = v19;
                  v21 = [textSource charRangeMappedToStorage:{v9, objc_msgSend(textSource, "nextCharacterIndex:", v9) - v9}];
                  v23 = v22;
                  if ([(CRLWPEditorHelper *)self p_transposeRanges:v18 withRange:v20, v21, v22])
                  {
                    editor = [(CRLWPEditorHelper *)self editor];
                    v25 = [CRLWPSelection selectionWithRange:&v21[v23], 0];
                    [editor setSelection:v25];
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

- (void)transposeWords:(id)words
{
  selection = [(CRLWPEditorHelper *)self selection];
  if ([selection isInsertionPoint])
  {
    range = [selection range];
    textSource = [(CRLWPEditorHelper *)self textSource];
    v6 = textSource;
    if (range && range < [textSource length] && ((sub_10027E4C4(objc_msgSend(v6, "characterAtIndex:", range)) & 1) != 0 || sub_10027E4C4(objc_msgSend(v6, "characterAtIndex:", objc_msgSend(v6, "previousCharacterIndex:", range)))))
    {
      if (sub_10027E3D4([v6 characterAtIndex:{objc_msgSend(v6, "previousCharacterIndex:", range)}]) && (range = objc_msgSend(v6, "previousCharacterIndex:", range)) == 0)
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        v9 = 0;
      }

      else
      {
        do
        {
          v7 = [v6 wordAtCharIndex:range includePreviousWord:1];
          v9 = v8;
          v10 = [v6 previousCharacterIndex:range];
          range = v10;
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
          textSource2 = [(CRLWPEditorHelper *)self textSource];
          v23 = sub_100014370(v21, textSource2);

          v24 = [v6 charRangeMappedToStorage:{v20, v19 - v20}];
          if ([(CRLWPEditorHelper *)self p_storageRangeCanBeTransposed:v24 storage:v25, v23]&& [(CRLWPEditorHelper *)self p_transposeRanges:v7 withRange:v9, v15, v14])
          {
            editor = [(CRLWPEditorHelper *)self editor];
            textSelectionDelegate = [editor textSelectionDelegate];
            v28 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:v14 + v15, 0];
            [textSelectionDelegate setSelectedTextRange:v28];
          }
        }
      }
    }
  }
}

- (BOOL)p_transposeRanges:(_NSRange)ranges withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (ranges.location >= range.location)
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

  if (!ranges.length || !length)
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
  v12 = NSIntersectionRange(ranges, v42).length;
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
  textSource = [(CRLWPEditorHelper *)self textSource];
  v18 = sub_100014370(v16, textSource);

  if (!v12)
  {
    v38 = [[_TtC8Freeform12CRLWPStorage alloc] initFromStorage:v18 withRange:ranges.location, ranges.length];
    v19 = objc_opt_class();
    textSource2 = [(CRLWPEditorHelper *)self textSource];
    v39 = sub_100014370(v19, textSource2);

    v37 = [[_TtC8Freeform12CRLWPStorage alloc] initFromStorage:v39 withRange:location, length];
    interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
    commandController = [interactiveCanvasController commandController];

    [commandController openGroup];
    v23 = [_TtC8Freeform23CRLWPReplaceTextCommand alloc];
    editor = [(CRLWPEditorHelper *)self editor];
    enclosingShape = [editor enclosingShape];
    string = [v38 string];
    v27 = [(CRLWPReplaceTextCommand *)v23 initWithShapeItem:enclosingShape range:location text:length, string];

    [commandController enqueueCommand:v27];
    v28 = [_TtC8Freeform23CRLWPReplaceTextCommand alloc];
    editor2 = [(CRLWPEditorHelper *)self editor];
    enclosingShape2 = [editor2 enclosingShape];
    string2 = [v37 string];
    v32 = [(CRLWPReplaceTextCommand *)v28 initWithShapeItem:enclosingShape2 range:ranges.location text:ranges.length, string2];

    interactiveCanvasController2 = [(CRLWPEditorHelper *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController2 canvasEditor];

    v35 = [[CRLCanvasCommandSelectionBehavior alloc] initWithCanvasEditor:canvasEditor type:2];
    [commandController enqueueCommand:v32 withSelectionBehavior:v35];
    [commandController closeGroup];
  }

  return v12 == 0;
}

- (id)protectedSelectionBehaviorForCommand:(id)command
{
  v4 = [CRLCommandSelectionBehavior alloc];
  interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  interactiveCanvasController2 = [(CRLWPEditorHelper *)self interactiveCanvasController];
  editorController2 = [interactiveCanvasController2 editorController];
  selectionPath2 = [editorController2 selectionPath];
  v11 = [(CRLCommandSelectionBehavior *)v4 initWithForwardSelectionPath:selectionPath reverseSelectionPath:selectionPath2 selectionFlags:0];

  return v11;
}

- (BOOL)isACurrentEditor
{
  editorController = [(CRLWPEditorHelper *)self editorController];
  currentEditors = [editorController currentEditors];
  editor = [(CRLWPEditorHelper *)self editor];
  v6 = [currentEditors containsObject:editor];

  return v6;
}

- (void)p_replaceRange:(_NSRange)range withText:(id)text dictationAndAutocorrectionKey:(id)key applyingDictationAlternative:(BOOL)alternative restoreSelection:(id)selection
{
  length = range.length;
  location = range.location;
  textCopy = text;
  keyCopy = key;
  selectionCopy = selection;
  v48 = textCopy;
  if (!textCopy)
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

  editor = [(CRLWPEditorHelper *)self editor];
  storage = [editor storage];
  v18 = location + length > [storage length];

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
      editor2 = [(CRLWPEditorHelper *)self editor];
      storage2 = [editor2 storage];
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
      v60 = [storage2 length];
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
    editor3 = [(CRLWPEditorHelper *)self editor];
    storage3 = [editor3 storage];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v22, v23, 4872, 0, "Bad replacement range %{public}@ is past end of storage: %lu", v24, [storage3 length]);
  }

  editor4 = [(CRLWPEditorHelper *)self editor];
  storage4 = [editor4 storage];
  v29 = location + length > [storage4 length];

  if (!v29)
  {
    v30 = [objc_alloc(-[CRLWPEditorHelper wpSelectionClass](self "wpSelectionClass"))];
    interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
    commandController = [interactiveCanvasController commandController];

    if (!commandController)
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

    editor5 = [(CRLWPEditorHelper *)self editor];
    v37 = [_TtC8Freeform12CRLTextRange alloc];
    superRange = [v30 superRange];
    v40 = [(CRLTextRange *)v37 initWithRange:superRange, v39];
    v41 = [editor5 commandForReplacingTextInRange:v40 withText:v48];

    v42 = [(CRLWPEditorHelper *)self protectedSelectionBehaviorForCommand:v41];
    [commandController enqueueCommand:v41 withSelectionBehavior:v42];
  }
}

- (void)replaceRange:(_NSRange)range withText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
  editor = [(CRLWPEditorHelper *)self editor];
  wantsToReceiveTextInput = [editor wantsToReceiveTextInput];

  if (wantsToReceiveTextInput)
  {
    [(CRLWPEditorHelper *)self p_replaceRange:location withText:length dictationAndAutocorrectionKey:textCopy applyingDictationAlternative:0 restoreSelection:0, 0];
  }
}

- (void)p_transformWordWithActionString:(id)string usingBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  [(CRLWPEditorHelper *)self selectWord:self];
  selection = [(CRLWPEditorHelper *)self selection];
  selfCopy = self;
  LODWORD(self) = [selection isRange];

  if (self)
  {
    selection2 = [(CRLWPEditorHelper *)selfCopy selection];
    range = [selection2 range];
    v40 = v10;
    v41 = range;

    selection3 = [(CRLWPEditorHelper *)selfCopy selection];
    -[CRLWPEditorHelper paragraphEnumeratorAtCharIndex:](selfCopy, "paragraphEnumeratorAtCharIndex:", [selection3 range]);

    while (!sub_100240844(v47))
    {
      sub_100240814(v47);
    }

    interactiveCanvasController = [(CRLWPEditorHelper *)selfCopy interactiveCanvasController];
    commandController = [interactiveCanvasController commandController];

    v36 = objc_opt_new();
    textSource = [(CRLWPEditorHelper *)selfCopy textSource];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1003D2740;
    v45[3] = &unk_10185D9E0;
    v42 = v36;
    v46 = v42;
    [textSource enumerateSmartFieldsWithAttributeKind:6 inRange:v41 usingBlock:{v40, v45}];

    editor = [(CRLWPEditorHelper *)selfCopy editor];
    storage = [editor storage];

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

      rangeCount = [(CRLWPRangeArray *)v17 rangeCount];
      if ((rangeCount - 1) >= 0)
      {
        do
        {
          v19 = [(CRLWPRangeArray *)v17 rangeAtIndex:--rangeCount];
          if (v20)
          {
            v21 = [storage charRangeMappedFromStorage:{v19, v20}];
            v23 = v22;
            v24 = v22 - 1;
            v25 = [storage characterAtIndex:&v21[v22 - 1]];
            if (v23)
            {
              if ((sub_10027E2F0(v25) & 1) == 0 || (v23 = v24) != 0)
              {
                v26 = [storage substringWithRange:{v21, v23}];
                v27 = blockCopy[2](blockCopy, v26);
                [v27 length];
                [v26 length];
                v28 = v27;

                v29 = [storage charRangeMappedToStorage:{v21, v23}];
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

        while (rangeCount > 0);
      }

      if (sub_100240AD4(v47))
      {
        break;
      }

      sub_1002407F0(v47);
    }

    if ([v44 rangeCount])
    {
      [commandController openGroup];
      [commandController setCurrentGroupActionString:stringCopy];
      for (i = 0; i < [v44 rangeCount]; ++i)
      {
        v33 = [v43 objectAtIndexedSubscript:i];
        v34 = [v44 rangeAtIndex:i];
        [(CRLWPEditorHelper *)selfCopy replaceRange:v34 withText:v35, v33];
      }

      [commandController closeGroup];
    }

    sub_10024068C(v47);
  }
}

- (void)uppercaseWord:(id)word
{
  v5 = +[NSBundle mainBundle];
  v4 = [v5 localizedStringForKey:@"Make Upper Case" value:0 table:@"UndoStrings"];
  [(CRLWPEditorHelper *)self p_transformWordWithActionString:v4 usingBlock:&stru_10185DA20];
}

- (void)lowercaseWord:(id)word
{
  v5 = +[NSBundle mainBundle];
  v4 = [v5 localizedStringForKey:@"Make Lower Case" value:0 table:@"UndoStrings"];
  [(CRLWPEditorHelper *)self p_transformWordWithActionString:v4 usingBlock:&stru_10185DA40];
}

- (void)capitalizeWord:(id)word
{
  v5 = +[NSBundle mainBundle];
  v4 = [v5 localizedStringForKey:@"Capitalize" value:0 table:@"UndoStrings"];
  [(CRLWPEditorHelper *)self p_transformWordWithActionString:v4 usingBlock:&stru_10185DA60];
}

- (unint64_t)getVisualInsertionPointIndexForString:(id)string selection:(id)selection
{
  stringCopy = string;
  selectionCopy = selection;
  interactiveCanvasController = [(CRLWPEditorHelper *)self interactiveCanvasController];
  [interactiveCanvasController layoutIfNeeded];

  if (![selectionCopy isInsertionPoint] || (objc_msgSend(selectionCopy, "isVisual") & 1) == 0)
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

  range = [selectionCopy range];
  v13 = [(CRLWPEditorHelper *)self p_lineFragmentWithCaretInfo:v60 forSelection:selectionCopy];
  if (!v13)
  {
    goto LABEL_100;
  }

  if (![selectionCopy isInsertionPoint])
  {
    goto LABEL_100;
  }

  if (![selectionCopy isVisual])
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
  if ([stringCopy length])
  {
    v56 = sub_100281034([stringCopy crlwp_utf32CharacterAtIndex:0]);
  }

  else
  {
    v56 = 6;
  }

  v59 = xmmword_101464828;
  v16 = v61;
  if (v61 != 0x7FFFFFFFFFFFFFFFLL)
  {
    editor = [(CRLWPEditorHelper *)self editor];
    storage = [editor storage];
    v19 = v16 < [storage length];

    if (v19)
    {
      editor2 = [(CRLWPEditorHelper *)self editor];
      storage2 = [editor2 storage];
      v22 = [storage2 smartFieldAtCharIndex:v61 attributeKind:6 effectiveRange:&v59];

      if (v22)
      {
        if ((*(v13 + 25) & 0x10) != 0)
        {
LABEL_26:
          range = v59;

          goto LABEL_100;
        }

LABEL_30:
        v26 = *(&v59 + 1);
        v25 = v59;

        range = (v26 + v25);
        goto LABEL_100;
      }
    }
  }

  if (v64 != 0x7FFFFFFFFFFFFFFFLL)
  {
    editor3 = [(CRLWPEditorHelper *)self editor];
    storage3 = [editor3 storage];
    v22 = [storage3 smartFieldAtCharIndex:v64 attributeKind:6 effectiveRange:&v59];

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
    range = v61;
    if (v61 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = v27 & (v14 << 51 >> 63);
LABEL_40:
      range = (v28 + v54);
      goto LABEL_100;
    }

    if ((v62 & 1) == 0)
    {
      editor4 = [(CRLWPEditorHelper *)self editor];
      storage4 = [editor4 storage];
      range = [storage4 nextCharacterIndex:v61];
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
        editor5 = [(CRLWPEditorHelper *)self editor];
        storage5 = [editor5 storage];
        range = [storage5 nextCharacterIndex:*(__p + 5 * v32 + 1)];

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
            range = v45;
          }

          else
          {
            range = v64;
          }
        }

        goto LABEL_98;
      }

      if (v61 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v48 = v27 & (v14 << 51 >> 63);
LABEL_95:
        range = (v48 + v54);
        goto LABEL_98;
      }

      editor6 = [(CRLWPEditorHelper *)self editor];
      storage6 = [editor6 storage];
      range = [storage6 nextCharacterIndex:v61];

      goto LABEL_98;
    }

LABEL_84:
    if (v62 == 1)
    {
      if (v61 == 0x7FFFFFFFFFFFFFFFLL)
      {
        range = ((v27 & (v14 << 51 >> 63)) + v54);
      }

      else
      {
        range = v61;
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

      editor7 = [(CRLWPEditorHelper *)self editor];
      storage7 = [editor7 storage];
      range = [storage7 nextCharacterIndex:v64];
    }

LABEL_98:
    if (__p)
    {
      v58 = __p;
      operator delete(__p);
    }

    goto LABEL_100;
  }

  range = v64;
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
    editor8 = [(CRLWPEditorHelper *)self editor];
    storage8 = [editor8 storage];
    range = [storage8 nextCharacterIndex:v64];
  }

LABEL_100:

  return range;
}

- (BOOL)p_setVisualSelectionWithCharIndex:(unint64_t)index leadingEdge:(BOOL)edge andAnchor:(unint64_t)anchor andAnchorLeadingEdge:(BOOL)leadingEdge
{
  if (index == 0x7FFFFFFFFFFFFFFFLL || anchor == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    leadingEdgeCopy = leadingEdge;
    edgeCopy = edge;
    v30 = 1;
    v13 = objc_opt_class();
    textSource = [(CRLWPEditorHelper *)self textSource];
    v15 = sub_100014370(v13, textSource);
    v16 = [CRLWPSelection selectionWithRange:anchor type:0 leadingEdge:7 storage:leadingEdgeCopy, v15];

    v17 = objc_opt_class();
    textSource2 = [(CRLWPEditorHelper *)self textSource];
    v19 = sub_100014370(v17, textSource2);
    v20 = [CRLWPSelection selectionWithRange:index type:0 leadingEdge:7 storage:edgeCopy, v19];

    v21 = [(CRLWPEditorHelper *)self adjustVisualSelection:v16 withOtherSelection:v20 outLeadingEdge:&v30 outCaretAffinity:0];
    indexCopy2 = v21;
    v24 = v22;
    if (v21 == 0x7FFFFFFFFFFFFFFFLL && !v22)
    {
      if (index <= anchor)
      {
        indexCopy = anchor;
      }

      else
      {
        indexCopy = index;
      }

      if (index >= anchor)
      {
        indexCopy2 = anchor;
      }

      else
      {
        indexCopy2 = index;
      }

      v24 = indexCopy - indexCopy2;
    }

    selection = [(CRLWPEditorHelper *)self selection];
    v7 = indexCopy2 != [selection range] || v24 != v27;

    if (v7)
    {
      [(CRLWPEditorHelper *)self setVisualSelectionWithRange:indexCopy2 endOfLine:v24, 0];
    }

    [(CRLWPEditorHelper *)self setSelectionAnchor:anchor];
    [(CRLWPEditorHelper *)self setSelectionAnchorEdge:leadingEdgeCopy];
  }

  return v7;
}

- (BOOL)p_setSelectionWithCharIndex:(unint64_t)index andAnchor:(unint64_t)anchor
{
  if (index == 0x7FFFFFFFFFFFFFFFLL || anchor == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    if (index <= anchor)
    {
      indexCopy = anchor;
    }

    else
    {
      indexCopy = index;
    }

    if (index >= anchor)
    {
      indexCopy2 = anchor;
    }

    else
    {
      indexCopy2 = index;
    }

    selection = [(CRLWPEditorHelper *)self selection];
    v12 = indexCopy - indexCopy2;
    v5 = indexCopy2 != [selection range] || v12 != v11;

    if (v5)
    {
      [(CRLWPEditorHelper *)self setSelectionWithRange:indexCopy2 endOfLine:v12, 0];
    }

    [(CRLWPEditorHelper *)self setSelectionAnchor:anchor];
    [(CRLWPEditorHelper *)self setSelectionAnchorEdge:1];
  }

  return v5;
}

- (unint64_t)p_oppositeEdgeForSelection:(id)selection withLeadingEdge:(BOOL *)edge
{
  selectionCopy = selection;
  leadingEdge = [selectionCopy leadingEdge];
  anchorSelection = [(CRLWPEditorHelper *)self anchorSelection];
  leadingEdge2 = [anchorSelection leadingEdge];

  v45 = leadingEdge2;
  v9 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:selectionCopy withLeadingEdge:&leadingEdge];
  anchorSelection2 = [(CRLWPEditorHelper *)self anchorSelection];
  v11 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:anchorSelection2 withLeadingEdge:&v45];

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
  v22 = leadingEdge;
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
      start3 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:selectionCopy withLeadingEdge:edge];
LABEL_12:
      v9 = start3;
      goto LABEL_13;
    }
  }

  else if (v13 == 0x7FFFFFFFFFFFFFFFLL && !v12)
  {
    *edge = 1;
    anchorSelection3 = [(CRLWPEditorHelper *)self anchorSelection];
    start = [anchorSelection3 start];
    start2 = [selectionCopy start];

    if (start == start2)
    {
      start3 = [selectionCopy end];
    }

    else
    {
      start3 = [selectionCopy start];
    }

    goto LABEL_12;
  }

  *edge = leadingEdge;
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

- (unint64_t)p_selectionEdgeToMutateWithDirection:(int64_t)direction newAnchor:(unint64_t *)anchor
{
  selection = [(CRLWPEditorHelper *)self selection];
  if (!selection)
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

  superRange = [selection superRange];
  v12 = v11;
  leadingEdge = [selection leadingEdge];
  leadingEdge2 = [selection leadingEdge];
  v13 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:selection withLeadingEdge:&leadingEdge];
  v14 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:selection withLeadingEdge:&leadingEdge2];
  if ([(CRLWPEditorHelper *)self selectionAnchor]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if ([(CRLWPEditorHelper *)self selectionAnchorEdge])
  {
    selectionAnchor = [(CRLWPEditorHelper *)self selectionAnchor];
  }

  else
  {
    textSource = [(CRLWPEditorHelper *)self textSource];
    selectionAnchor = [textSource nextCharacterIndex:{-[CRLWPEditorHelper selectionAnchor](self, "selectionAnchor")}];
  }

  if (direction > 5)
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
    [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:5415 isFatal:0 description:"illegal text direction: %ld", direction];

    goto LABEL_12;
  }

  if (((1 << direction) & 0x33) != 0)
  {
    if (selectionAnchor == superRange)
    {
      goto LABEL_35;
    }

    if (selectionAnchor == &superRange[v12])
    {
      goto LABEL_40;
    }

    goto LABEL_12;
  }

  v20 = leadingEdge2;
  if (leadingEdge2 == 1)
  {
    if (selectionAnchor == v14)
    {
      v21 = &leadingEdge;
      goto LABEL_58;
    }

LABEL_52:
    if (leadingEdge == 1)
    {
      if (selectionAnchor == v13)
      {
        goto LABEL_56;
      }
    }

    else
    {
      textSource2 = [(CRLWPEditorHelper *)self textSource];
      v30 = selectionAnchor == [textSource2 nextCharacterIndex:v13];

      if (v30)
      {
        goto LABEL_56;
      }
    }

LABEL_12:
    if (direction <= 2)
    {
      if (direction)
      {
        if (direction != 1)
        {
          if (direction != 2)
          {
            goto LABEL_22;
          }

          goto LABEL_42;
        }

LABEL_40:
        *anchor = &superRange[v12];
        v13 = superRange;
        goto LABEL_66;
      }

LABEL_35:
      v13 = &superRange[v12];
      *anchor = superRange;
      goto LABEL_66;
    }

    if (direction != 3)
    {
      if (direction == 4)
      {
        goto LABEL_40;
      }

      if (direction != 5)
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
        [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:5450 isFatal:0 description:"illegal text direction: %ld", direction];

        v13 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_66;
      }

      goto LABEL_35;
    }

LABEL_56:
    v21 = &leadingEdge2;
    v24 = &leadingEdge;
    v25 = v13;
    goto LABEL_57;
  }

  textSource3 = [(CRLWPEditorHelper *)self textSource];
  v23 = selectionAnchor == [textSource3 nextCharacterIndex:v14];

  if (!v23)
  {
    goto LABEL_52;
  }

LABEL_42:
  v21 = &leadingEdge;
  v24 = &leadingEdge2;
  v25 = v14;
  v14 = v13;
LABEL_57:
  v13 = v14;
  v20 = *v24;
  v14 = v25;
LABEL_58:
  anchorCopy2 = anchor;
  v32 = *v21;
  *anchor = v14;
  if (v32)
  {
    if (v20)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  textSource4 = [(CRLWPEditorHelper *)self textSource];
  range = [textSource4 range];
  v36 = v13 < range + v35;

  if (v36)
  {
    textSource5 = [(CRLWPEditorHelper *)self textSource];
    v13 = [textSource5 nextCharacterIndex:v13];
  }

  anchorCopy2 = anchor;
  if (!v20)
  {
LABEL_64:
    v38 = *anchorCopy2;
    textSource6 = [(CRLWPEditorHelper *)self textSource];
    range2 = [textSource6 range];
    v42 = v38 < range2 + v41;

    if (v42)
    {
      textSource7 = [(CRLWPEditorHelper *)self textSource];
      *anchor = [textSource7 nextCharacterIndex:*anchor];
    }
  }

LABEL_66:

  return v13;
}

- (unint64_t)p_selectionEdgeToMutateWithLeadingEdge:(BOOL *)edge Direction:(int64_t)direction newAnchor:(unint64_t *)anchor anchorLeadingEdge:(BOOL *)leadingEdge
{
  selection = [(CRLWPEditorHelper *)self selection];
  v12 = selection;
  if (!selection)
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

  range = [selection range];
  v38 = v14;
  v15 = range;
  leadingEdge = [v12 leadingEdge];
  leadingEdge2 = [v12 leadingEdge];
  v16 = [(CRLWPEditorHelper *)self p_rightEdgeForSelection:v12 withLeadingEdge:&leadingEdge];
  v37 = [(CRLWPEditorHelper *)self p_leftEdgeForSelection:v12 withLeadingEdge:&leadingEdge2];
  if ([(CRLWPEditorHelper *)self selectionAnchor]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    if (direction > 5)
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
      [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:5506 isFatal:0 description:"illegal text direction: %ld", direction];
LABEL_53:

      goto LABEL_54;
    }

    if (((1 << direction) & 0x33) != 0)
    {
      if ([(CRLWPEditorHelper *)self selectionAnchorEdge])
      {
        selectionAnchor = [(CRLWPEditorHelper *)self selectionAnchor];
      }

      else
      {
        textSource = [(CRLWPEditorHelper *)self textSource];
        selectionAnchor = [textSource nextCharacterIndex:{-[CRLWPEditorHelper selectionAnchor](self, "selectionAnchor")}];
      }

      if (selectionAnchor == v15)
      {
        *edge = 1;
LABEL_62:
        v16 = v15 + v38;
        *anchor = v15;
        goto LABEL_76;
      }

      if (selectionAnchor == (v15 + v38))
      {
        *edge = 1;
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
    if (v21 != [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:v37 leadingEdge:leadingEdge2])
    {
      v22 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:[(CRLWPEditorHelper *)self selectionAnchor] leadingEdge:[(CRLWPEditorHelper *)self selectionAnchorEdge]];
      if (v22 != [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:v16 leadingEdge:leadingEdge])
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
    if (v25 == [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:v37 leadingEdge:leadingEdge2])
    {
      *edge = 1;
LABEL_58:
      *edge = leadingEdge;
      *anchor = v37;
      *leadingEdge = leadingEdge2;
      goto LABEL_76;
    }

    v34 = [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:[(CRLWPEditorHelper *)self selectionAnchor] leadingEdge:[(CRLWPEditorHelper *)self selectionAnchorEdge]];
    if (v34 == [(CRLWPEditorHelper *)self p_layoutIndexForCharIndex:v16 leadingEdge:leadingEdge])
    {
      *edge = 1;
      goto LABEL_75;
    }
  }

LABEL_54:
  *edge = 1;
  if (direction <= 2)
  {
    switch(direction)
    {
      case 0:
        goto LABEL_62;
      case 1:
LABEL_63:
        *anchor = v15 + v38;
        v16 = v15;
        goto LABEL_76;
      case 2:
        goto LABEL_58;
    }

    goto LABEL_64;
  }

  switch(direction)
  {
    case 3:
LABEL_75:
      *edge = leadingEdge2;
      *anchor = v16;
      *leadingEdge = leadingEdge;
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
  [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:5540 isFatal:0 description:"illegal text direction: %ld", direction];

LABEL_16:
  v16 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_76:

  return v16;
}

- (int64_t)p_layoutIndexForCharIndex:(unint64_t)index leadingEdge:(BOOL)edge
{
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11[3] = v4;
    v11[4] = v5;
    edgeCopy = edge;
    indexCopy = index;
    v11[0] = 0;
    v9 = [(CRLWPEditorHelper *)self p_lineFragmentForCharIndex:index column:v11 eol:0];
    if (v9)
    {
      return sub_100212E40(v9, indexCopy, edgeCopy);
    }

    return indexCopy;
  }

  return v6;
}

- (unint64_t)p_indexToTransposableCharacterStartingAtIndex:(unint64_t)index filterStorage:(id)storage searchTowardsStorageStart:(BOOL)start
{
  startCopy = start;
  storageCopy = storage;
  while ([storageCopy characterAtIndex:index] == 65532)
  {
    if (index || !startCopy)
    {
      v8 = startCopy ? [storageCopy previousCharacterIndex:index] : objc_msgSend(storageCopy, "nextCharacterIndex:", index);
      index = v8;
      if (v8 < [storageCopy length])
      {
        continue;
      }
    }

    index = 0x7FFFFFFFFFFFFFFFLL;
    break;
  }

  return index;
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