@interface CRLWPStorage
- (BOOL)canUserReplaceText;
- (BOOL)hasSmartFields;
- (BOOL)hasSmartFieldsInRange:(_NSRange)range;
- (BOOL)hasVisibleContent;
- (BOOL)isAllWhitespaceInRange:(_NSRange)range;
- (BOOL)isEmptyParagraphAtIndex:(int64_t)index;
- (BOOL)isEmptyParagraphAtSelection:(id)selection;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtParIndex:(int64_t)index;
- (CRLCanvasElementInfo)parentInfo;
- (Class)editorClass;
- (Class)repClass;
- (NSAttributedString)coreTextAttributedString;
- (NSDictionary)markedTextStyle;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage;
- (_NSRange)charRangeMappedToStorage:(_NSRange)storage;
- (_NSRange)charRangeRemappedFromStorage:(_NSRange)storage;
- (_NSRange)findRangeOfWordBackwardFromCharIndex:(int64_t)index expandingRangeToEndOfWord:(BOOL)word;
- (_NSRange)range;
- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)words;
- (_NSRange)rangeOfNearestWhitespaceBeforeCharIndex:(int64_t)index includingBreaks:(BOOL)breaks;
- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)index;
- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)index forLocale:(id)locale;
- (_NSRange)textRangeForParagraphAtCharIndex:(int64_t)index;
- (_NSRange)textRangeForParagraphAtIndex:(int64_t)index;
- (_NSRange)textRangeForParagraphsInCharRange:(_NSRange)range;
- (_NSRange)wordAtCharIndex:(int64_t)index includePreviousWord:(BOOL)word;
- (_NSRange)wordAtCharIndex:(int64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation;
- (_TtC8Freeform12CRLWPStorage)init;
- (_TtC8Freeform8CRLBoard)parentBoard;
- (id)characterStyleAtCharIndex:(int64_t)index;
- (id)characterStyleAtCharIndex:(int64_t)index before:(BOOL)before effectiveRange:(_NSRange *)range;
- (id)characterStyleAtCharIndex:(int64_t)index effectiveRange:(_NSRange *)range;
- (id)commandForReplaceAllWithProvider:(id)provider;
- (id)copyWithMarkedText;
- (id)hyperlinkFieldAtCharIndex:(int64_t)index effectiveRange:(_NSRange *)range;
- (id)listStyleAtCharIndex:(int64_t)index;
- (id)listStyleAtCharIndex:(int64_t)index effectiveRange:(_NSRange *)range;
- (id)listStyleAtParIndex:(int64_t)index;
- (id)listStyleAtParIndex:(int64_t)index effectiveRange:(_NSRange *)range;
- (id)numberedListLabelAtCharIndex:(int64_t)index;
- (id)numberedListLabelAtParIndex:(int64_t)index;
- (id)paragraphStyleAtCharIndex:(int64_t)index;
- (id)paragraphStyleAtCharIndex:(int64_t)index effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtParIndex:(int64_t)index;
- (id)paragraphStyleAtParIndex:(int64_t)index effectiveRange:(_NSRange *)range;
- (id)rangeForParagraphAt:(int64_t)at;
- (id)searchForString:(id)string options:(unint64_t)options searchCanvasDelegate:(id)delegate onHit:(id)hit;
- (id)smartFieldAtCharIndex:(int64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range;
- (id)smartFieldsWithAttributeKind:(unint64_t)kind intersectingRange:(_NSRange)range;
- (id)stringEquivalentFromRange:(_NSRange)range;
- (id)substringWithRange:(_NSRange)range;
- (int64_t)charIndexForParagraphAtIndex:(int64_t)index;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(id)locale hyphenChar:(unsigned int *)char;
- (int64_t)length;
- (int64_t)listNumberAtParIndex:(int64_t)index;
- (int64_t)listStartAtParIndex:(int64_t)index effectiveRange:(_NSRange *)range;
- (int64_t)nextCharacterIndex:(int64_t)index;
- (int64_t)paragraphCount;
- (int64_t)paragraphIndexAtCharIndex:(int64_t)index effectiveRange:(_NSRange *)range;
- (int64_t)paragraphLevelAtParIndex:(int64_t)index effectiveRange:(_NSRange *)range;
- (int64_t)previousCharacterIndex:(int64_t)index;
- (int64_t)writingDirectionForParagraphAtCharIndex:(int64_t)index;
- (uint64_t)characterCount;
- (unsigned)characterAtIndex:(int64_t)index;
- (void)continueSearch:(id)search;
- (void)enumerateSmartFieldsWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range usingBlock:(id)block;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
- (void)replaceCharactersIn:(_NSRange)in with:(id)with;
- (void)replaceCharactersIn:(_NSRange)in withStorage:(id)storage;
- (void)setAttributedMarkedText:(id)text;
- (void)setGeometry:(id)geometry;
- (void)setMarkedTextRange:(id)range;
- (void)setMarkedTextStyle:(id)style;
- (void)setParentInfo:(id)info;
- (void)setSelectedMarkedTextRange:(id)range;
- (void)setSelectedMarkedTextRangeFromOS:(id)s;
- (void)setStore:(id)store;
- (void)setUpForTesting;
@end

@implementation CRLWPStorage

- (uint64_t)characterCount
{
  selfCopy = self;
  v2 = sub_100A38A8C();

  return v2;
}

- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)index
{
  v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101856180);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v21 = v3;
    v22 = 2082;
    v23 = "[CRLWPStorage(SpellCheck) rangeOfNumericalSuffixPrecedingCharIndex:]";
    v24 = 2082;
    v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorage+SpellCheck.m";
    v26 = 1024;
    v27 = 14;
    v28 = 2114;
    v29 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018561A0);
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v21 = v3;
    v22 = 2114;
    v23 = v10;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v11 = [NSString stringWithUTF8String:"[CRLWPStorage(SpellCheck) rangeOfNumericalSuffixPrecedingCharIndex:]"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorage+SpellCheck.m"];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:14 isFatal:0 description:"Abstract method not overridden by %{public}@", v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v16, "[CRLWPStorage(SpellCheck) rangeOfNumericalSuffixPrecedingCharIndex:]"];
  v18 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v17 userInfo:0];
  v19 = v18;

  objc_exception_throw(v18);
}

- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)index forLocale:(id)locale
{
  localeCopy = locale;
  if ([localeCopy length] <= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101353C40();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101353C54();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101353CE8();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLWPStorage(SpellCheck) rangeOfNumericalSuffixPrecedingCharIndex:forLocale:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorage+SpellCheck.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:19 isFatal:0 description:"Locale string is too short."];
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 0;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101353D88();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101353DB0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101353E44();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLWPStorage(SpellCheck) rangeOfNumericalSuffixPrecedingCharIndex:forLocale:]"];
    index = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorage+SpellCheck.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:index lineNumber:23 isFatal:0 description:"Invalid charIndex."];
  }

  else
  {
    if (qword_101A34C68 != -1)
    {
      sub_101353D10();
    }

    v15 = &qword_101A34C18;
    if (([localeCopy hasPrefix:@"en"] & 1) == 0)
    {
      if ([localeCopy hasPrefix:@"fr"])
      {
        v15 = &qword_101A34C20;
      }

      else if ([localeCopy hasPrefix:@"it"] & 1) != 0 || (objc_msgSend(localeCopy, "hasPrefix:", @"gl"))
      {
        v15 = &qword_101A34C28;
      }

      else if ([localeCopy hasPrefix:@"pt"])
      {
        if ([localeCopy hasSuffix:@"BR"])
        {
          v15 = &qword_101A34C38;
        }

        else
        {
          v15 = &qword_101A34C30;
        }
      }

      else if ([localeCopy hasPrefix:@"es"])
      {
        v15 = &qword_101A34C40;
      }

      else if ([localeCopy hasPrefix:@"ca"])
      {
        v15 = &qword_101A34C48;
      }

      else if ([localeCopy hasPrefix:@"el"])
      {
        v15 = &qword_101A34C50;
      }

      else if ([localeCopy hasPrefix:@"nl"])
      {
        v15 = &qword_101A34C58;
      }

      else if ([localeCopy hasPrefix:@"uk"])
      {
        v15 = &qword_101A34C60;
      }
    }

    v13 = *v15;
    index = [[_TtC8Freeform12CRLWPStorage alloc] initFromStorage:self withRange:0, index];
    v16 = [index charIndexMappedFromStorage:index];
    v17 = sub_100280AB0(v16, 0, index);
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

    v20 = [index substringWithRange:{v19, v18 - v19}];
    v21 = +[NSCharacterSet decimalDigitCharacterSet];
    v22 = [v20 rangeOfCharacterFromSet:v21 options:4];

    if (v22 == 0x7FFFFFFFFFFFFFFFLL || (+[NSCharacterSet letterCharacterSet](NSCharacterSet, "letterCharacterSet"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v20 rangeOfCharacterFromSet:v23 options:0 range:{0, v22}], v23, v24 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = 0;
    }

    else
    {
      v25 = [v20 substringFromIndex:v22];
      v26 = [v13 containsObject:v25];
      v27 = 0;
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      if (v26)
      {
        v28 = [index charRangeMappedToStorage:{v16 - (objc_msgSend(v25, "length") + ~(objc_msgSend(v25, "characterAtIndex:", 1) == 46))}];
        v27 = v29;
      }

      v10 = 0x7FFFFFFFFFFFFFFFLL;
      if (v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v28;
        if (v22 && [v20 characterAtIndex:v22 - 1] == 49)
        {
          if (qword_101A34C78 != -1)
          {
            sub_101353D38();
          }

          v30 = &qword_101A34C70;
        }

        else
        {
          if (qword_101A34C88 != -1)
          {
            sub_101353D60();
          }

          v30 = &qword_101A34C80;
        }

        if ([*v30 containsObject:v25])
        {
          v27 = 0;
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      v11 = v27;
    }
  }

  v31 = v10;
  v32 = v11;
  result.length = v32;
  result.location = v31;
  return result;
}

- (void)setGeometry:(id)geometry
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_geometry);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_geometry) = geometry;
  geometryCopy = geometry;
}

- (void)setAttributedMarkedText:(id)text
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText) = text;
  textCopy = text;
}

- (void)setMarkedTextRange:(id)range
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange) = range;
  rangeCopy = range;
}

- (void)setSelectedMarkedTextRange:(id)range
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange) = range;
  rangeCopy = range;
}

- (void)setSelectedMarkedTextRangeFromOS:(id)s
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS) = s;
  sCopy = s;
}

- (NSDictionary)markedTextStyle
{
  if (*(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextStyle))
  {
    type metadata accessor for Key(0);
    sub_100A40278(&qword_1019F34A0, 255, type metadata accessor for Key);

    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setMarkedTextStyle:(id)style
{
  if (style)
  {
    type metadata accessor for Key(0);
    sub_100A40278(&qword_1019F34A0, 255, type metadata accessor for Key);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextStyle) = v4;
}

- (id)copyWithMarkedText
{
  selfCopy = self;
  sub_100A28D8C();
  v4 = v3;

  return v4;
}

- (CRLCanvasElementInfo)parentInfo
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setParentInfo:(id)info
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100A29E08(info);
}

- (void)setStore:(id)store
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_store);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_store) = store;
  storeCopy = store;
}

- (_TtC8Freeform8CRLBoard)parentBoard
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for CRLContainerItem(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *((swift_isaMask & *v5) + 0x380);
      selfCopy = self;
      v8 = v6();

      Strong = v8;
    }

    else
    {

      Strong = 0;
    }
  }

  return Strong;
}

- (Class)repClass
{
  result = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_repClass);
  if (result)
  {
    return swift_getObjCClassFromMetadata();
  }

  return result;
}

- (Class)editorClass
{
  result = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_editorClass);
  if (result)
  {
    return swift_getObjCClassFromMetadata();
  }

  return result;
}

- (BOOL)hasVisibleContent
{
  selfCopy = self;
  sub_100A2A488();
  v4 = v3;

  return v4 & 1;
}

- (NSAttributedString)coreTextAttributedString
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties);
  selfCopy = self;
  if ((v2 & 1) == 0)
  {
    sub_100A2A960();
  }

  v4 = *(selfCopy + OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString);
  v5 = v4;

  return v4;
}

- (int64_t)length
{
  selfCopy = self;
  v3 = sub_100A38A88();

  return v3;
}

- (void)replaceCharactersIn:(_NSRange)in withStorage:(id)storage
{
  length = in.length;
  location = in.location;
  storageCopy = storage;
  selfCopy = self;
  sub_100A30E84(location, length, storageCopy);
}

- (void)replaceCharactersIn:(_NSRange)in with:(id)with
{
  length = in.length;
  location = in.location;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = __OFADD__(location, length);
  v10 = location + length;
  if (v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 < location)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = v7;
  v12 = v8;
  selfCopy = self;
  sub_100A2E55C(location, v10, v11, v12, 1);
}

- (_TtC8Freeform12CRLWPStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_NSRange)range
{
  selfCopy = self;
  sub_100A34E98();
  v4 = v3;

  v5 = 0;
  v6 = v4;
  result.length = v6;
  result.location = v5;
  return result;
}

- (BOOL)hasSmartFields
{
  selfCopy = self;
  range = [(CRLWPStorage *)selfCopy range];
  v5 = [(CRLWPStorage *)selfCopy hasSmartFieldsInRange:range, v4];

  return v5;
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(id)locale hyphenChar:(unsigned int *)char
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v7 + 8))(v9, v6);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (int64_t)writingDirectionForParagraphAtCharIndex:(int64_t)index
{
  selfCopy = self;
  sub_100A3539C(index);
  v6 = v5;

  return v6;
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtParIndex:(int64_t)index
{
  selfCopy = self;
  LOBYTE(index) = [(CRLWPStorage *)selfCopy isWritingDirectionRightToLeftForParagraphAtCharIndex:[(CRLWPStorage *)selfCopy textRangeForParagraphAtIndex:index]];

  return index;
}

- (_NSRange)textRangeForParagraphsInCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v6 = [(CRLWPStorage *)selfCopy paragraphIndexAtCharIndex:location];
  v7 = [(CRLWPStorage *)selfCopy textRangeForParagraphAtIndex:v6];
  v9 = v7;
  v10 = v8;
  if (length >= 2)
  {
    v11 = location + length;
    if (__OFADD__(location, length))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v11, 1))
    {
      v12 = [(CRLWPStorage *)selfCopy paragraphIndexAtCharIndex:v11 - 1];
      v13 = [(CRLWPStorage *)selfCopy textRangeForParagraphAtIndex:v12];
      if (v12 != v6)
      {
        v18.location = v13;
        v18.length = v14;
        v16.location = v9;
        v16.length = v10;
        v15 = NSUnionRange(v16, v18);
        v9 = v15.location;
        v10 = v15.length;
      }

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_6:

  v7 = v9;
  v8 = v10;
LABEL_9:
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)findRangeOfWordBackwardFromCharIndex:(int64_t)index expandingRangeToEndOfWord:(BOOL)word
{
  wordCopy = word;
  selfCopy = self;
  sub_100A35820(index, wordCopy);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)rangeOfNearestWhitespaceBeforeCharIndex:(int64_t)index includingBreaks:(BOOL)breaks
{
  breaksCopy = breaks;
  selfCopy = self;
  sub_100A35DB8(index, breaksCopy);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (BOOL)isEmptyParagraphAtSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  v6 = -[CRLWPStorage isEmptyParagraphAtIndex:](selfCopy, "isEmptyParagraphAtIndex:", -[CRLWPStorage paragraphIndexAtCharIndex:](selfCopy, "paragraphIndexAtCharIndex:", [selectionCopy leadingCharIndex]));

  return v6;
}

- (BOOL)isEmptyParagraphAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = [(CRLWPStorage *)selfCopy textRangeForParagraphAtIndex:index];
  if (v6)
  {
    v7 = sub_10027E2F0([(CRLWPStorage *)selfCopy characterAtIndex:v5]);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)rangeForParagraphAt:(int64_t)at
{
  selfCopy = self;
  v5 = [(CRLWPStorage *)selfCopy textRangeForParagraphAtIndex:at];
  v7 = v6;
  v8 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v9 = sub_10078CDF0(v5, v7);

  return v9;
}

- (_NSRange)textRangeForParagraphAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_100A36400(index);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (_NSRange)textRangeForParagraphAtCharIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_100A364C0(index);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)smartFieldsWithAttributeKind:(unint64_t)kind intersectingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  sub_100A3659C(kind, location, length);

  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)smartFieldAtCharIndex:(int64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range
{
  selfCopy = self;
  sub_100A36D98(index, kind, range);
  v10 = v9;

  return v10;
}

- (void)enumerateSmartFieldsWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  v9 = _Block_copy(block);
  _Block_copy(v9);
  selfCopy = self;
  sub_100A479D4(kind, location, length, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (id)hyperlinkFieldAtCharIndex:(int64_t)index effectiveRange:(_NSRange *)range
{
  selfCopy = self;
  v7 = sub_100A48148(index, range, &OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns);

  return v7;
}

- (int64_t)paragraphCount
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges);
  selfCopy = self;
  if ((v2 & 1) == 0)
  {
    sub_100A2C630();
  }

  v4 = *(*(selfCopy + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges) + 16);

  return v4;
}

- (id)paragraphStyleAtParIndex:(int64_t)index
{
  v3 = [(CRLWPStorage *)self paragraphStyleAtParIndex:index effectiveRange:0];

  return v3;
}

- (id)paragraphStyleAtParIndex:(int64_t)index effectiveRange:(_NSRange *)range
{
  selfCopy = self;
  sub_100A372E0(index, range);
  v8 = v7;

  return v8;
}

- (int64_t)charIndexForParagraphAtIndex:(int64_t)index
{
  v4 = xmmword_101464828;

  return v4;
}

- (int64_t)paragraphIndexAtCharIndex:(int64_t)index effectiveRange:(_NSRange *)range
{
  selfCopy = self;
  v7 = sub_100A37480(index, range);

  return v7;
}

- (id)paragraphStyleAtCharIndex:(int64_t)index
{
  v3 = [(CRLWPStorage *)self paragraphStyleAtCharIndex:index effectiveRange:0];

  return v3;
}

- (id)paragraphStyleAtCharIndex:(int64_t)index effectiveRange:(_NSRange *)range
{
  selfCopy = self;
  sub_100A37620(index, range);
  v8 = v7;

  return v8;
}

- (id)characterStyleAtCharIndex:(int64_t)index
{
  v3 = [(CRLWPStorage *)self characterStyleAtCharIndex:index effectiveRange:0];

  return v3;
}

- (id)characterStyleAtCharIndex:(int64_t)index effectiveRange:(_NSRange *)range
{
  v4 = [(CRLWPStorage *)self characterStyleAtCharIndex:index before:1 effectiveRange:range];

  return v4;
}

- (id)characterStyleAtCharIndex:(int64_t)index before:(BOOL)before effectiveRange:(_NSRange *)range
{
  selfCopy = self;
  v8 = sub_100A48148(index, range, &OBJC_IVAR____TtC8Freeform12CRLWPStorage__characterStyleRuns);

  return v8;
}

- (id)numberedListLabelAtCharIndex:(int64_t)index
{
  selfCopy = self;
  v5 = [(CRLWPStorage *)selfCopy numberedListLabelAtParIndex:[(CRLWPStorage *)selfCopy paragraphIndexAtCharIndex:index]];

  return v5;
}

- (id)numberedListLabelAtParIndex:(int64_t)index
{
  selfCopy = self;
  sub_100A37908(index);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (int64_t)listNumberAtParIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_100A37AE0(index);

  return v5;
}

- (id)listStyleAtParIndex:(int64_t)index
{
  v3 = [(CRLWPStorage *)self listStyleAtParIndex:index effectiveRange:0];

  return v3;
}

- (id)listStyleAtParIndex:(int64_t)index effectiveRange:(_NSRange *)range
{
  selfCopy = self;
  sub_100A37C40(index, range);
  v8 = v7;

  return v8;
}

- (id)listStyleAtCharIndex:(int64_t)index
{
  v3 = [(CRLWPStorage *)self listStyleAtCharIndex:index effectiveRange:0];

  return v3;
}

- (id)listStyleAtCharIndex:(int64_t)index effectiveRange:(_NSRange *)range
{
  selfCopy = self;
  v7 = [(CRLWPStorage *)selfCopy listStyleAtParIndex:[(CRLWPStorage *)selfCopy paragraphIndexAtCharIndex:index] effectiveRange:range];

  return v7;
}

- (int64_t)paragraphLevelAtParIndex:(int64_t)index effectiveRange:(_NSRange *)range
{
  selfCopy = self;
  sub_100A37E24(index, range);
  v8 = v7;

  return v8;
}

- (int64_t)listStartAtParIndex:(int64_t)index effectiveRange:(_NSRange *)range
{
  selfCopy = self;
  v7 = sub_100A37F34(index, range);

  return v7;
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)storage
{
  length = storage.length;
  location = storage.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage
{
  length = storage.length;
  location = storage.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)charRangeRemappedFromStorage:(_NSRange)storage
{
  length = storage.length;
  location = storage.location;
  result.length = length;
  result.location = location;
  return result;
}

- (unsigned)characterAtIndex:(int64_t)index
{
  selfCopy = self;
  sub_100A38080(index);
  LOWORD(index) = v5;

  return index;
}

- (id)substringWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  sub_100A38364(location, length);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (BOOL)hasSmartFieldsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  LOBYTE(length) = sub_100A38854(location, length);

  return length & 1;
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  sub_100A38CD8(characters, location, length);
}

- (id)stringEquivalentFromRange:(_NSRange)range
{
  v3 = [(CRLWPStorage *)self substringWithRange:range.location, range.length];

  return v3;
}

- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)words
{
  length = words.length;
  location = words.location;
  selfCopy = self;
  v6 = sub_100A39020(location, length);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (BOOL)isAllWhitespaceInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  sub_100A39C38(location, length);
  LOBYTE(length) = v6;

  return length & 1;
}

- (id)searchForString:(id)string options:(unint64_t)options searchCanvasDelegate:(id)delegate onHit:(id)hit
{
  v10 = _Block_copy(hit);
  v11 = v10;
  if (string)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    string = v13;
    if (v11)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      v11 = sub_1009C3294;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_100A39FF0(v12, string, options, delegate, v11, v14);
  sub_1000C1014(v11);
  swift_unknownObjectRelease();

  return v16;
}

- (void)continueSearch:(id)search
{
  searchCopy = search;
  selfCopy = self;
  sub_100A3A854(searchCopy);
}

- (id)commandForReplaceAllWithProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_100A3AF40(provider);
  swift_unknownObjectRelease();

  return v6;
}

- (BOOL)canUserReplaceText
{
  selfCopy = self;
  v3 = sub_100A3C2BC();

  return v3 & 1;
}

- (int64_t)nextCharacterIndex:(int64_t)index
{
  selfCopy = self;
  sub_100A3C3CC(index);
  v6 = v5;

  return v6;
}

- (int64_t)previousCharacterIndex:(int64_t)index
{
  selfCopy = self;
  sub_100A3CC44(index);
  v6 = v5;

  return v6;
}

- (_NSRange)wordAtCharIndex:(int64_t)index includePreviousWord:(BOOL)word
{
  v4 = [(CRLWPStorage *)self wordAtCharIndex:index includePreviousWord:word includeHyphenation:0];
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)wordAtCharIndex:(int64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation
{
  selfCopy = self;
  sub_100A3D70C(index, word, hyphenation);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

- (void)setUpForTesting
{
  selfCopy = self;
  sub_100A3DA74();
}

@end