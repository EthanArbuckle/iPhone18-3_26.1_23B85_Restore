@interface CRLWPStorage
- (BOOL)canUserReplaceText;
- (BOOL)hasSmartFields;
- (BOOL)hasSmartFieldsInRange:(_NSRange)a3;
- (BOOL)hasVisibleContent;
- (BOOL)isAllWhitespaceInRange:(_NSRange)a3;
- (BOOL)isEmptyParagraphAtIndex:(int64_t)a3;
- (BOOL)isEmptyParagraphAtSelection:(id)a3;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtParIndex:(int64_t)a3;
- (CRLCanvasElementInfo)parentInfo;
- (Class)editorClass;
- (Class)repClass;
- (NSAttributedString)coreTextAttributedString;
- (NSDictionary)markedTextStyle;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)a3;
- (_NSRange)charRangeMappedToStorage:(_NSRange)a3;
- (_NSRange)charRangeRemappedFromStorage:(_NSRange)a3;
- (_NSRange)findRangeOfWordBackwardFromCharIndex:(int64_t)a3 expandingRangeToEndOfWord:(BOOL)a4;
- (_NSRange)range;
- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)a3;
- (_NSRange)rangeOfNearestWhitespaceBeforeCharIndex:(int64_t)a3 includingBreaks:(BOOL)a4;
- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)a3;
- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)a3 forLocale:(id)a4;
- (_NSRange)textRangeForParagraphAtCharIndex:(int64_t)a3;
- (_NSRange)textRangeForParagraphAtIndex:(int64_t)a3;
- (_NSRange)textRangeForParagraphsInCharRange:(_NSRange)a3;
- (_NSRange)wordAtCharIndex:(int64_t)a3 includePreviousWord:(BOOL)a4;
- (_NSRange)wordAtCharIndex:(int64_t)a3 includePreviousWord:(BOOL)a4 includeHyphenation:(BOOL)a5;
- (_TtC8Freeform12CRLWPStorage)init;
- (_TtC8Freeform8CRLBoard)parentBoard;
- (id)characterStyleAtCharIndex:(int64_t)a3;
- (id)characterStyleAtCharIndex:(int64_t)a3 before:(BOOL)a4 effectiveRange:(_NSRange *)a5;
- (id)characterStyleAtCharIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)commandForReplaceAllWithProvider:(id)a3;
- (id)copyWithMarkedText;
- (id)hyperlinkFieldAtCharIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)listStyleAtCharIndex:(int64_t)a3;
- (id)listStyleAtCharIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)listStyleAtParIndex:(int64_t)a3;
- (id)listStyleAtParIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)numberedListLabelAtCharIndex:(int64_t)a3;
- (id)numberedListLabelAtParIndex:(int64_t)a3;
- (id)paragraphStyleAtCharIndex:(int64_t)a3;
- (id)paragraphStyleAtCharIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)paragraphStyleAtParIndex:(int64_t)a3;
- (id)paragraphStyleAtParIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)rangeForParagraphAt:(int64_t)a3;
- (id)searchForString:(id)a3 options:(unint64_t)a4 searchCanvasDelegate:(id)a5 onHit:(id)a6;
- (id)smartFieldAtCharIndex:(int64_t)a3 attributeKind:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (id)smartFieldsWithAttributeKind:(unint64_t)a3 intersectingRange:(_NSRange)a4;
- (id)stringEquivalentFromRange:(_NSRange)a3;
- (id)substringWithRange:(_NSRange)a3;
- (int64_t)charIndexForParagraphAtIndex:(int64_t)a3;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)a3 inRange:(_NSRange)a4 locale:(id)a5 hyphenChar:(unsigned int *)a6;
- (int64_t)length;
- (int64_t)listNumberAtParIndex:(int64_t)a3;
- (int64_t)listStartAtParIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (int64_t)nextCharacterIndex:(int64_t)a3;
- (int64_t)paragraphCount;
- (int64_t)paragraphIndexAtCharIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (int64_t)paragraphLevelAtParIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (int64_t)previousCharacterIndex:(int64_t)a3;
- (int64_t)writingDirectionForParagraphAtCharIndex:(int64_t)a3;
- (uint64_t)characterCount;
- (unsigned)characterAtIndex:(int64_t)a3;
- (void)continueSearch:(id)a3;
- (void)enumerateSmartFieldsWithAttributeKind:(unint64_t)a3 inRange:(_NSRange)a4 usingBlock:(id)a5;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
- (void)replaceCharactersIn:(_NSRange)a3 with:(id)a4;
- (void)replaceCharactersIn:(_NSRange)a3 withStorage:(id)a4;
- (void)setAttributedMarkedText:(id)a3;
- (void)setGeometry:(id)a3;
- (void)setMarkedTextRange:(id)a3;
- (void)setMarkedTextStyle:(id)a3;
- (void)setParentInfo:(id)a3;
- (void)setSelectedMarkedTextRange:(id)a3;
- (void)setSelectedMarkedTextRangeFromOS:(id)a3;
- (void)setStore:(id)a3;
- (void)setUpForTesting;
@end

@implementation CRLWPStorage

- (uint64_t)characterCount
{
  v1 = a1;
  v2 = sub_100A38A8C();

  return v2;
}

- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)a3
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

- (_NSRange)rangeOfNumericalSuffixPrecedingCharIndex:(unint64_t)a3 forLocale:(id)a4
{
  v6 = a4;
  if ([v6 length] <= 1)
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
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
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
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Spelling/CRLWPStorage+SpellCheck.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:23 isFatal:0 description:"Invalid charIndex."];
  }

  else
  {
    if (qword_101A34C68 != -1)
    {
      sub_101353D10();
    }

    v15 = &qword_101A34C18;
    if (([v6 hasPrefix:@"en"] & 1) == 0)
    {
      if ([v6 hasPrefix:@"fr"])
      {
        v15 = &qword_101A34C20;
      }

      else if ([v6 hasPrefix:@"it"] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"gl"))
      {
        v15 = &qword_101A34C28;
      }

      else if ([v6 hasPrefix:@"pt"])
      {
        if ([v6 hasSuffix:@"BR"])
        {
          v15 = &qword_101A34C38;
        }

        else
        {
          v15 = &qword_101A34C30;
        }
      }

      else if ([v6 hasPrefix:@"es"])
      {
        v15 = &qword_101A34C40;
      }

      else if ([v6 hasPrefix:@"ca"])
      {
        v15 = &qword_101A34C48;
      }

      else if ([v6 hasPrefix:@"el"])
      {
        v15 = &qword_101A34C50;
      }

      else if ([v6 hasPrefix:@"nl"])
      {
        v15 = &qword_101A34C58;
      }

      else if ([v6 hasPrefix:@"uk"])
      {
        v15 = &qword_101A34C60;
      }
    }

    v13 = *v15;
    v14 = [[_TtC8Freeform12CRLWPStorage alloc] initFromStorage:self withRange:0, a3];
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
        v28 = [v14 charRangeMappedToStorage:{v16 - (objc_msgSend(v25, "length") + ~(objc_msgSend(v25, "characterAtIndex:", 1) == 46))}];
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

- (void)setGeometry:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_geometry);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_geometry) = a3;
  v3 = a3;
}

- (void)setAttributedMarkedText:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText) = a3;
  v3 = a3;
}

- (void)setMarkedTextRange:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange) = a3;
  v3 = a3;
}

- (void)setSelectedMarkedTextRange:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange) = a3;
  v3 = a3;
}

- (void)setSelectedMarkedTextRangeFromOS:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS) = a3;
  v3 = a3;
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

- (void)setMarkedTextStyle:(id)a3
{
  if (a3)
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
  v2 = self;
  sub_100A28D8C();
  v4 = v3;

  return v4;
}

- (CRLCanvasElementInfo)parentInfo
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setParentInfo:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100A29E08(a3);
}

- (void)setStore:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_store);
  *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage_store) = a3;
  v3 = a3;
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
      v7 = self;
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
  v2 = self;
  sub_100A2A488();
  v4 = v3;

  return v4 & 1;
}

- (NSAttributedString)coreTextAttributedString
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties);
  v3 = self;
  if ((v2 & 1) == 0)
  {
    sub_100A2A960();
  }

  v4 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString);
  v5 = v4;

  return v4;
}

- (int64_t)length
{
  v2 = self;
  v3 = sub_100A38A88();

  return v3;
}

- (void)replaceCharactersIn:(_NSRange)a3 withStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = self;
  sub_100A30E84(location, length, v7);
}

- (void)replaceCharactersIn:(_NSRange)a3 with:(id)a4
{
  length = a3.length;
  location = a3.location;
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
  v13 = self;
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
  v2 = self;
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
  v2 = self;
  v3 = [(CRLWPStorage *)v2 range];
  v5 = [(CRLWPStorage *)v2 hasSmartFieldsInRange:v3, v4];

  return v5;
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)a3 inRange:(_NSRange)a4 locale:(id)a5 hyphenChar:(unsigned int *)a6
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v7 + 8))(v9, v6);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (int64_t)writingDirectionForParagraphAtCharIndex:(int64_t)a3
{
  v4 = self;
  sub_100A3539C(a3);
  v6 = v5;

  return v6;
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtParIndex:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = [(CRLWPStorage *)v4 isWritingDirectionRightToLeftForParagraphAtCharIndex:[(CRLWPStorage *)v4 textRangeForParagraphAtIndex:a3]];

  return a3;
}

- (_NSRange)textRangeForParagraphsInCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  v6 = [(CRLWPStorage *)v5 paragraphIndexAtCharIndex:location];
  v7 = [(CRLWPStorage *)v5 textRangeForParagraphAtIndex:v6];
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
      v12 = [(CRLWPStorage *)v5 paragraphIndexAtCharIndex:v11 - 1];
      v13 = [(CRLWPStorage *)v5 textRangeForParagraphAtIndex:v12];
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

- (_NSRange)findRangeOfWordBackwardFromCharIndex:(int64_t)a3 expandingRangeToEndOfWord:(BOOL)a4
{
  v4 = a4;
  v6 = self;
  sub_100A35820(a3, v4);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)rangeOfNearestWhitespaceBeforeCharIndex:(int64_t)a3 includingBreaks:(BOOL)a4
{
  v4 = a4;
  v6 = self;
  sub_100A35DB8(a3, v4);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (BOOL)isEmptyParagraphAtSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = -[CRLWPStorage isEmptyParagraphAtIndex:](v5, "isEmptyParagraphAtIndex:", -[CRLWPStorage paragraphIndexAtCharIndex:](v5, "paragraphIndexAtCharIndex:", [v4 leadingCharIndex]));

  return v6;
}

- (BOOL)isEmptyParagraphAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = [(CRLWPStorage *)v4 textRangeForParagraphAtIndex:a3];
  if (v6)
  {
    v7 = sub_10027E2F0([(CRLWPStorage *)v4 characterAtIndex:v5]);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)rangeForParagraphAt:(int64_t)a3
{
  v4 = self;
  v5 = [(CRLWPStorage *)v4 textRangeForParagraphAtIndex:a3];
  v7 = v6;
  v8 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v9 = sub_10078CDF0(v5, v7);

  return v9;
}

- (_NSRange)textRangeForParagraphAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_100A36400(a3);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (_NSRange)textRangeForParagraphAtCharIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_100A364C0(a3);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)smartFieldsWithAttributeKind:(unint64_t)a3 intersectingRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = self;
  sub_100A3659C(a3, location, length);

  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)smartFieldAtCharIndex:(int64_t)a3 attributeKind:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  v8 = self;
  sub_100A36D98(a3, a4, a5);
  v10 = v9;

  return v10;
}

- (void)enumerateSmartFieldsWithAttributeKind:(unint64_t)a3 inRange:(_NSRange)a4 usingBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = _Block_copy(a5);
  _Block_copy(v9);
  v10 = self;
  sub_100A479D4(a3, location, length, v10, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (id)hyperlinkFieldAtCharIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = self;
  v7 = sub_100A48148(a3, a4, &OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns);

  return v7;
}

- (int64_t)paragraphCount
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges);
  v3 = self;
  if ((v2 & 1) == 0)
  {
    sub_100A2C630();
  }

  v4 = *(*(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges) + 16);

  return v4;
}

- (id)paragraphStyleAtParIndex:(int64_t)a3
{
  v3 = [(CRLWPStorage *)self paragraphStyleAtParIndex:a3 effectiveRange:0];

  return v3;
}

- (id)paragraphStyleAtParIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = self;
  sub_100A372E0(a3, a4);
  v8 = v7;

  return v8;
}

- (int64_t)charIndexForParagraphAtIndex:(int64_t)a3
{
  v4 = xmmword_101464828;

  return v4;
}

- (int64_t)paragraphIndexAtCharIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = self;
  v7 = sub_100A37480(a3, a4);

  return v7;
}

- (id)paragraphStyleAtCharIndex:(int64_t)a3
{
  v3 = [(CRLWPStorage *)self paragraphStyleAtCharIndex:a3 effectiveRange:0];

  return v3;
}

- (id)paragraphStyleAtCharIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = self;
  sub_100A37620(a3, a4);
  v8 = v7;

  return v8;
}

- (id)characterStyleAtCharIndex:(int64_t)a3
{
  v3 = [(CRLWPStorage *)self characterStyleAtCharIndex:a3 effectiveRange:0];

  return v3;
}

- (id)characterStyleAtCharIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  v4 = [(CRLWPStorage *)self characterStyleAtCharIndex:a3 before:1 effectiveRange:a4];

  return v4;
}

- (id)characterStyleAtCharIndex:(int64_t)a3 before:(BOOL)a4 effectiveRange:(_NSRange *)a5
{
  v7 = self;
  v8 = sub_100A48148(a3, a5, &OBJC_IVAR____TtC8Freeform12CRLWPStorage__characterStyleRuns);

  return v8;
}

- (id)numberedListLabelAtCharIndex:(int64_t)a3
{
  v4 = self;
  v5 = [(CRLWPStorage *)v4 numberedListLabelAtParIndex:[(CRLWPStorage *)v4 paragraphIndexAtCharIndex:a3]];

  return v5;
}

- (id)numberedListLabelAtParIndex:(int64_t)a3
{
  v4 = self;
  sub_100A37908(a3);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (int64_t)listNumberAtParIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_100A37AE0(a3);

  return v5;
}

- (id)listStyleAtParIndex:(int64_t)a3
{
  v3 = [(CRLWPStorage *)self listStyleAtParIndex:a3 effectiveRange:0];

  return v3;
}

- (id)listStyleAtParIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = self;
  sub_100A37C40(a3, a4);
  v8 = v7;

  return v8;
}

- (id)listStyleAtCharIndex:(int64_t)a3
{
  v3 = [(CRLWPStorage *)self listStyleAtCharIndex:a3 effectiveRange:0];

  return v3;
}

- (id)listStyleAtCharIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = self;
  v7 = [(CRLWPStorage *)v6 listStyleAtParIndex:[(CRLWPStorage *)v6 paragraphIndexAtCharIndex:a3] effectiveRange:a4];

  return v7;
}

- (int64_t)paragraphLevelAtParIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = self;
  sub_100A37E24(a3, a4);
  v8 = v7;

  return v8;
}

- (int64_t)listStartAtParIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = self;
  v7 = sub_100A37F34(a3, a4);

  return v7;
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)charRangeRemappedFromStorage:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  result.length = length;
  result.location = location;
  return result;
}

- (unsigned)characterAtIndex:(int64_t)a3
{
  v4 = self;
  sub_100A38080(a3);
  LOWORD(a3) = v5;

  return a3;
}

- (id)substringWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  sub_100A38364(location, length);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (BOOL)hasSmartFieldsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  LOBYTE(length) = sub_100A38854(location, length);

  return length & 1;
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = self;
  sub_100A38CD8(a3, location, length);
}

- (id)stringEquivalentFromRange:(_NSRange)a3
{
  v3 = [(CRLWPStorage *)self substringWithRange:a3.location, a3.length];

  return v3;
}

- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  v6 = sub_100A39020(location, length);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (BOOL)isAllWhitespaceInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  sub_100A39C38(location, length);
  LOBYTE(length) = v6;

  return length & 1;
}

- (id)searchForString:(id)a3 options:(unint64_t)a4 searchCanvasDelegate:(id)a5 onHit:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = v10;
  if (a3)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v13;
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
  v15 = self;
  v16 = sub_100A39FF0(v12, a3, a4, a5, v11, v14);
  sub_1000C1014(v11);
  swift_unknownObjectRelease();

  return v16;
}

- (void)continueSearch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100A3A854(v4);
}

- (id)commandForReplaceAllWithProvider:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_100A3AF40(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (BOOL)canUserReplaceText
{
  v2 = self;
  v3 = sub_100A3C2BC();

  return v3 & 1;
}

- (int64_t)nextCharacterIndex:(int64_t)a3
{
  v4 = self;
  sub_100A3C3CC(a3);
  v6 = v5;

  return v6;
}

- (int64_t)previousCharacterIndex:(int64_t)a3
{
  v4 = self;
  sub_100A3CC44(a3);
  v6 = v5;

  return v6;
}

- (_NSRange)wordAtCharIndex:(int64_t)a3 includePreviousWord:(BOOL)a4
{
  v4 = [(CRLWPStorage *)self wordAtCharIndex:a3 includePreviousWord:a4 includeHyphenation:0];
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)wordAtCharIndex:(int64_t)a3 includePreviousWord:(BOOL)a4 includeHyphenation:(BOOL)a5
{
  v8 = self;
  sub_100A3D70C(a3, a4, a5);
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
  v2 = self;
  sub_100A3DA74();
}

@end