@interface CRLWPTypesetterTextSource
- (BOOL)adjustRangesByDelta:(int64_t)a3 startingAt:(unint64_t)a4;
- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)a3;
- (CRLWPTypesetterTextSource)initWithSource:(id)a3 subRange:(_NSRange)a4;
- (NSString)string;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)a3;
- (_NSRange)charRangeMappedToStorage:(_NSRange)a3;
- (_NSRange)charRangeRemappedFromStorage:(_NSRange)a3;
- (_NSRange)range;
- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)a3;
- (_NSRange)textRangeForParagraphAtCharIndex:(int64_t)a3;
- (_NSRange)textRangeForParagraphAtIndex:(int64_t)a3;
- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4;
- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4 includeHyphenation:(BOOL)a5;
- (id).cxx_construct;
- (id)characterStyleAtCharIndex:(unint64_t)a3 before:(BOOL)a4 effectiveRange:(_NSRange *)a5;
- (id)hyperlinkFieldAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)paragraphStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)smartFieldAtCharIndex:(unint64_t)a3 attributeKind:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (id)smartFieldsWithAttributeKind:(unint64_t)a3 intersectingRange:(_NSRange)a4;
- (int64_t)charIndexForParagraphAtIndex:(unint64_t)a3;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)a3 inRange:(_NSRange)a4 locale:(id)a5 hyphenChar:(unsigned int *)a6;
- (int64_t)paragraphIndexAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (unint64_t)charIndexMappedFromStorage:(unint64_t)a3;
- (unint64_t)charIndexMappedToStorage:(unint64_t)a3;
- (unint64_t)charIndexRemappedFromStorage:(unint64_t)a3;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (unsigned)composedCharacterAtCharIndex:(unint64_t)a3 isSurrogatePair:(BOOL *)a4;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
@end

@implementation CRLWPTypesetterTextSource

- (CRLWPTypesetterTextSource)initWithSource:(id)a3 subRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v108 = a3;
  v114.receiver = self;
  v114.super_class = CRLWPTypesetterTextSource;
  v7 = [(CRLWPTypesetterTextSource *)&v114 init];
  if (!v7)
  {
    goto LABEL_63;
  }

  if (!v108 || location > [v108 length] || (v8 = (location + length), location + length > objc_msgSend(v108, "length")))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134AEFC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134AF24();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134AFAC();
    }

    v93 = off_1019EDA68;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d The source storage and/or the specified sub range are invalid.", v94, v95, v96, v97, v98, v99, v100, "[CRLWPTypesetterTextSource initWithSource:subRange:]");
    v101 = [NSString stringWithUTF8String:"[CRLWPTypesetterTextSource initWithSource:subRange:]"];
    v102 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm"];
    [CRLAssertionHandler handleFailureInFunction:v101 file:v102 lineNumber:54 isFatal:1 description:"The source storage and/or the specified sub range are invalid."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v103, v104);
    goto LABEL_82;
  }

  objc_storeStrong(&v7->_source, a3);
  p_spaceCharIndexes = &v7->_spaceCharIndexes;
  p_end = &v7->_spaceCharIndexes.__end_;
  v9 = v7->_spaceCharIndexes.__begin_ == v7->_spaceCharIndexes.__end_ && length >= 2;
  if (v9)
  {
    theString = [(CRLWPTextSource *)v7->_source string];
    v10 = objc_opt_class();
    v11 = sub_100014370(v10, v7->_source);
    v12 = v11;
    if (!v11)
    {
      goto LABEL_58;
    }

    v13 = 0;
    v14 = location;
    v109 = v11;
    while (1)
    {
      v15 = [v12 writingDirectionForParagraphAtCharIndex:v14];
      v16 = [v12 textRangeForParagraphAtCharIndex:v14];
      v111 = &v16[v17];
      v18 = (v8 >= &v16[v17] ? &v16[v17] : v8);
      v19 = (v16 <= v14 ? v14 : v16);
      v110 = v15 == 1;
      if (v15 == 1)
      {
        break;
      }

      while (1)
      {
        if (v19 >= v18)
        {
          goto LABEL_56;
        }

        RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(theString, v19);
        if (!RangeOfComposedCharactersAtIndex.length)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10134AC74();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10134AC9C();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10134AD24();
          }

          v69 = off_1019EDA68;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_10130E89C();
          }

          sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d zero-length character", v70, v71, v72, v73, v74, v75, v76, "[CRLWPTypesetterTextSource initWithSource:subRange:]");
          v77 = [NSString stringWithUTF8String:"[CRLWPTypesetterTextSource initWithSource:subRange:]"];
          v78 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm"];
          [CRLAssertionHandler handleFailureInFunction:v77 file:v78 lineNumber:149 isFatal:1 description:"zero-length character"];

          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v79, v80);
          goto LABEL_82;
        }

        v115[0] = 0;
        v40 = sub_100281034([(CRLWPTypesetterTextSource *)v7 composedCharacterAtCharIndex:v19 isSurrogatePair:v115]);
        if (v40 == 3 && v13)
        {
          break;
        }

        if (v40 == 1)
        {
          goto LABEL_56;
        }

        v19 = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
      }

      end = v7->_bidiCharIndexes.__end_;
      cap = v7->_bidiCharIndexes.__cap_;
      if (end >= cap)
      {
        begin = v7->_bidiCharIndexes.__begin_;
        v45 = end - begin;
        v46 = end - begin;
        v47 = v46 + 1;
        if ((v46 + 1) >> 61)
        {
          sub_1000C1D48();
        }

        v48 = cap - begin;
        if (v48 >> 2 > v47)
        {
          v47 = v48 >> 2;
        }

        v9 = v48 >= 0x7FFFFFFFFFFFFFF8;
        v49 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v9)
        {
          v49 = v47;
        }

        if (v49)
        {
          sub_1000E7D14(&v7->_bidiCharIndexes, v49);
        }

        v50 = end - begin;
        v51 = (8 * v46);
        v52 = (8 * v46 - 8 * v50);
        *v51 = v19;
        v43 = v51 + 1;
        memcpy(v52, begin, v45);
        v53 = v7->_bidiCharIndexes.__begin_;
        v7->_bidiCharIndexes.__begin_ = v52;
        v7->_bidiCharIndexes.__end_ = v43;
        v7->_bidiCharIndexes.__cap_ = 0;
        if (v53)
        {
          operator delete(v53);
        }
      }

      else
      {
        *end = v19;
        v43 = end + 1;
      }

      v7->_bidiCharIndexes.__end_ = v43;
      v113 = 0;
      sub_1002C75A0(&v7->_bidiDirectionMarkIsRTLVector, &v113);
LABEL_56:
      if (v14 >= v18)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10134AD4C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10134AD74();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10134ADFC();
        }

        v81 = off_1019EDA68;
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Failed to advance curCharIndex", v82, v83, v84, v85, v86, v87, v88, "[CRLWPTypesetterTextSource initWithSource:subRange:]");
        v89 = [NSString stringWithUTF8String:"[CRLWPTypesetterTextSource initWithSource:subRange:]"];
        v90 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm"];
        [CRLAssertionHandler handleFailureInFunction:v89 file:v90 lineNumber:173 isFatal:1 description:"Failed to advance curCharIndex"];

        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v91, v92);
        goto LABEL_82;
      }

      v14 = v18;
      v13 = v110;
      v8 = (location + length);
      v12 = v109;
      if (v111 >= location + length)
      {
LABEL_58:

        goto LABEL_59;
      }
    }

    if (v19 >= v18)
    {
      goto LABEL_56;
    }

    v20 = 0;
    while (1)
    {
      v21 = CFStringGetRangeOfComposedCharactersAtIndex(theString, v19);
      if (!v21.length)
      {
        break;
      }

      v115[0] = 0;
      v22 = [(CRLWPTypesetterTextSource *)v7 composedCharacterAtCharIndex:v19 isSurrogatePair:v115];
      v23 = sub_100281034(v22);
      v24 = v23;
      if (v22 == 9 || v23 == 6 || !v20 && (v23 - 6) >= 0xFFFFFFFE)
      {
        v25 = v21.length + v19;
        v27 = v7->_bidiCharIndexes.__end_;
        v26 = v7->_bidiCharIndexes.__cap_;
        if (v27 >= v26)
        {
          v29 = v7->_bidiCharIndexes.__begin_;
          v30 = v27 - v29;
          v31 = v27 - v29;
          v32 = v31 + 1;
          if ((v31 + 1) >> 61)
          {
            sub_1000C1D48();
          }

          v33 = v26 - v29;
          if (v33 >> 2 > v32)
          {
            v32 = v33 >> 2;
          }

          v9 = v33 >= 0x7FFFFFFFFFFFFFF8;
          v34 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v9)
          {
            v34 = v32;
          }

          if (v34)
          {
            sub_1000E7D14(&v7->_bidiCharIndexes, v34);
          }

          v35 = v31;
          v36 = (8 * v31);
          v37 = &v36[-v35];
          *v36 = v25;
          v28 = v36 + 1;
          memcpy(v37, v29, v30);
          v38 = v7->_bidiCharIndexes.__begin_;
          v7->_bidiCharIndexes.__begin_ = v37;
          v7->_bidiCharIndexes.__end_ = v28;
          v7->_bidiCharIndexes.__cap_ = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v27 = v25;
          v28 = v27 + 1;
        }

        v7->_bidiCharIndexes.__end_ = v28;
        v113 = 1;
        sub_1002C75A0(&v7->_bidiDirectionMarkIsRTLVector, &v113);
      }

      v20 = v24 == 3;
      v19 = v21.location + v21.length;
      if (v21.location + v21.length >= v18)
      {
        goto LABEL_56;
      }
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134AE24();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134AE4C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134AED4();
    }

    v57 = off_1019EDA68;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d zero-length character", v58, v59, v60, v61, v62, v63, v64, "[CRLWPTypesetterTextSource initWithSource:subRange:]");
    v65 = [NSString stringWithUTF8String:"[CRLWPTypesetterTextSource initWithSource:subRange:]"];
    v66 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm"];
    [CRLAssertionHandler handleFailureInFunction:v65 file:v66 lineNumber:125 isFatal:1 description:"zero-length character"];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v67, v68);
LABEL_82:
    abort();
  }

LABEL_59:
  if (v7->_bidiCharIndexes.__begin_ == v7->_bidiCharIndexes.__end_)
  {
    v54 = [[CRLWPRangeMap alloc] initWithSubRange:location unmappedPairIndexes:length, p_spaceCharIndexes];
  }

  else
  {
    v54 = [[CRLWPRangeMap alloc] initWithSubRange:location unmappedIndexes:length isBackwardAffinities:&v7->_bidiCharIndexes, &v7->_bidiDirectionMarkIsRTLVector];
    p_end = &v7->_bidiCharIndexes.__end_;
    p_spaceCharIndexes = &v7->_bidiCharIndexes;
  }

  rangeMap = v7->_rangeMap;
  v7->_rangeMap = v54;

  v7->_length = length + *p_end - p_spaceCharIndexes->__begin_;
  v7->_storageChangeCount = [v108 changeCount];
LABEL_63:

  return v7;
}

- (unsigned)composedCharacterAtCharIndex:(unint64_t)a3 isSurrogatePair:(BOOL *)a4
{
  *a4 = 0;
  v7 = [(CRLWPTextSource *)self->_source length];
  v8 = 0;
  if (v7 > a3)
  {
    v9 = v7;
    v8 = [(CRLWPTextSource *)self->_source characterAtIndex:a3];
    v10 = a3 + 1;
    if (a3 + 1 < v9)
    {
      v11 = [(CRLWPTextSource *)self->_source characterAtIndex:a3];
      v12 = [(CRLWPTextSource *)self->_source characterAtIndex:v10];
      if ((v11 & 0xFC00) == 0xD800 && (v12 & 0xFC00) == 56320)
      {
        *a4 = 1;
        return v12 + (v11 << 10) - 56613888;
      }
    }
  }

  return v8;
}

- (BOOL)adjustRangesByDelta:(int64_t)a3 startingAt:(unint64_t)a4
{
  v7 = [CRLWPTextSource adjustRangesByDelta:"adjustRangesByDelta:startingAt:" startingAt:?];
  if (a3)
  {
    storageChangeCount = self->_storageChangeCount;
    if (storageChangeCount != [(CRLWPTextSource *)self->_source changeCount])
    {
      self->_storageChangeCount = [(CRLWPTextSource *)self->_source changeCount];
      if ((v7 & 1) == 0)
      {
        [(CRLWPRangeMap *)self->_rangeMap adjustByDelta:a3 startingAt:a4];
      }

      return 1;
    }
  }

  return v7;
}

- (_NSRange)range
{
  v2 = [(CRLWPTextSource *)self->_source range];
  result.length = v3;
  result.location = v2;
  return result;
}

- (NSString)string
{
  v3 = [(CRLWPRangeMap *)self->_rangeMap unmappedCharRange:0, self->_length];
  length = v4;
  location = v3;
  v72 = self;
  v5 = [(CRLWPTextSource *)self->_source string];
  v6 = [v5 length];

  v7 = self;
  if (v7->_spaceCharIndexes.__end_ != v7->_spaceCharIndexes.__begin_)
  {
    v8 = +[NSMutableString string];
    begin = self->_spaceCharIndexes.__begin_;
    end = self->_spaceCharIndexes.__end_;
    if (begin == end)
    {
      v23 = location;
    }

    else
    {
      v11 = location;
      do
      {
        v12 = *begin;
        if (v11 > *begin)
        {
          v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10134AFD4();
          }

          v14 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v74 = v13;
            v75 = 2082;
            v76 = "[CRLWPTypesetterTextSource string]";
            v77 = 2082;
            v78 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm";
            v79 = 1024;
            v80 = 279;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected index ordering", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10134AFFC();
          }

          v15 = off_1019EDA68;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v27 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v74 = v13;
            v75 = 2114;
            v76 = v27;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v16 = [NSString stringWithUTF8String:"[CRLWPTypesetterTextSource string]"];
          v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm"];
          [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:279 isFatal:0 description:"unexpected index ordering"];
        }

        if (v12 > v6)
        {
          v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10134B024();
          }

          v19 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v74 = v18;
            v75 = 2082;
            v76 = "[CRLWPTypesetterTextSource string]";
            v77 = 2082;
            v78 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm";
            v79 = 1024;
            v80 = 281;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d request for characters past end of string (ruby)", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10134B04C();
          }

          v20 = off_1019EDA68;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v28 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v74 = v18;
            v75 = 2114;
            v76 = v28;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v21 = [NSString stringWithUTF8String:"[CRLWPTypesetterTextSource string]"];
          v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm"];
          [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:281 isFatal:0 description:"request for characters past end of string (ruby)"];
        }

        if (v12 >= v6)
        {
          v23 = v6;
        }

        else
        {
          v23 = v12;
        }

        if (v11 <= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = v11;
        }

        if (v11 >= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v11;
        }

        v26 = [(CRLWPTextSource *)v72->_source substringWithRange:v25, v24 - v25];
        [v8 appendString:v26];

        [v8 appendFormat:@"%C", 8209];
        ++begin;
        v11 = v23;
      }

      while (begin != end);
    }

    if (v8)
    {
LABEL_76:
      if (location + length > v6)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10134B114();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10134B13C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10134B1C4();
        }

        v51 = off_1019EDA68;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v52 = [NSString stringWithUTF8String:"[CRLWPTypesetterTextSource string]"];
        v53 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm"];
        [CRLAssertionHandler handleFailureInFunction:v52 file:v53 lineNumber:324 isFatal:0 description:"request for characters past end of string (extendedString)"];
      }

      if (location + length >= v6)
      {
        v54 = v6;
      }

      else
      {
        v54 = (location + length);
      }

      if (v23 <= v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = v23;
      }

      if (v23 >= v54)
      {
        v56 = v54;
      }

      else
      {
        v56 = v23;
      }

      v57 = [(CRLWPTextSource *)v72->_source substringWithRange:v56, v55 - v56];
      [v8 appendString:v57];

      v58 = v8;
      v8 = v58;
      goto LABEL_96;
    }

    goto LABEL_113;
  }

  if (self->_bidiCharIndexes.__end_ != self->_bidiCharIndexes.__begin_)
  {
    v71 = +[NSMutableString string];
    v29 = self->_bidiCharIndexes.__begin_;
    v70 = self->_bidiCharIndexes.__end_;
    if (v29 == v70)
    {
      v23 = location;
    }

    else
    {
      v30 = 0;
      v31 = self->_bidiDirectionMarkIsRTLVector.__begin_;
      v32 = location;
      do
      {
        v33 = *v29;
        v34 = *v31;
        if (v32 > *v29)
        {
          v35 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10134B074();
          }

          v36 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v74 = v35;
            v75 = 2082;
            v76 = "[CRLWPTypesetterTextSource string]";
            v77 = 2082;
            v78 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm";
            v79 = 1024;
            v80 = 298;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected index ordering", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10134B09C();
          }

          v37 = off_1019EDA68;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v49 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v74 = v35;
            v75 = 2114;
            v76 = v49;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v38 = [NSString stringWithUTF8String:"[CRLWPTypesetterTextSource string]"];
          v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm"];
          [CRLAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:298 isFatal:0 description:"unexpected index ordering"];
        }

        if (v33 > v6)
        {
          v40 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10134B0C4();
          }

          v41 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v74 = v40;
            v75 = 2082;
            v76 = "[CRLWPTypesetterTextSource string]";
            v77 = 2082;
            v78 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm";
            v79 = 1024;
            v80 = 300;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d request for characters past end of string (bidi)", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10134B0EC();
          }

          v42 = off_1019EDA68;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v50 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v74 = v40;
            v75 = 2114;
            v76 = v50;
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v43 = [NSString stringWithUTF8String:"[CRLWPTypesetterTextSource string]"];
          v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm"];
          [CRLAssertionHandler handleFailureInFunction:v43 file:v44 lineNumber:300 isFatal:0 description:"request for characters past end of string (bidi)"];
        }

        if (v33 >= v6)
        {
          v23 = v6;
        }

        else
        {
          v23 = v33;
        }

        if (v32 <= v23)
        {
          v45 = v23;
        }

        else
        {
          v45 = v32;
        }

        if (v32 >= v23)
        {
          v46 = v23;
        }

        else
        {
          v46 = v32;
        }

        v47 = [(CRLWPTextSource *)v72->_source substringWithRange:v46, v45 - v46];
        [v71 appendString:v47];

        v48 = 8206;
        if ((v34 & (1 << v30)) != 0)
        {
          v48 = 8207;
        }

        [v71 appendFormat:@"%C", v48];
        ++v29;
        v31 += v30 == 63;
        if (v30 == 63)
        {
          v30 = 0;
        }

        else
        {
          ++v30;
        }

        v32 = v23;
      }

      while (v29 != v70);
    }

    v8 = v71;
    if (v71)
    {
      goto LABEL_76;
    }

LABEL_113:
    v59 = 0;
    goto LABEL_114;
  }

  v60 = location;
  if (!location)
  {
    v61 = [(CRLWPTextSource *)self->_source string];
    v62 = [v61 length];

    v60 = 0;
    v7 = self;
    if (length == v62)
    {
      v8 = 0;
      v58 = [(CRLWPTextSource *)self->_source string];
LABEL_96:
      v59 = v58;
      goto LABEL_114;
    }
  }

  if (v60 + length > v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134B1EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134B200();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134B288();
    }

    v63 = off_1019EDA68;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v64 = [NSString stringWithUTF8String:"[CRLWPTypesetterTextSource string]"];
    v65 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTypesetterTextSource.mm"];
    [CRLAssertionHandler handleFailureInFunction:v64 file:v65 lineNumber:311 isFatal:0 description:"request for characters past end of string"];

    v82.length = length;
    v82.location = location;
    v83.location = 0;
    v83.length = v6;
    v66 = NSIntersectionRange(v82, v83);
    length = v66.length;
    location = v66.location;
    v7 = self;
  }

  v59 = [(CRLWPTextSource *)v7->_source substringWithRange:location, length];
  v8 = 0;
LABEL_114:

  return v59;
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  v6 = [(CRLWPRangeMap *)self->_rangeMap unmappedCharRange:a4.location, a4.length];
  v34 = v7;
  v35 = v6;
  begin = self->_spaceCharIndexes.__begin_;
  end = self->_spaceCharIndexes.__end_;
  if (end == begin)
  {
    v19 = self->_bidiCharIndexes.__begin_;
    v18 = self->_bidiCharIndexes.__end_;
    if (v18 == v19)
    {
      v11 = v6;
    }

    else
    {
      v20 = 0;
      v21 = self->_bidiDirectionMarkIsRTLVector.__begin_;
      v22 = v6;
      do
      {
        v23 = *v19++;
        v11 = v23;
        v24 = *v21 >> v20;
        v25 = v22 >= v23;
        if (v22 <= v23)
        {
          v26 = v11;
        }

        else
        {
          v26 = v22;
        }

        if (v25)
        {
          v27 = v11;
        }

        else
        {
          v27 = v22;
        }

        v28 = v26 - v27;
        [(CRLWPTextSource *)self->_source getCharacters:a3 range:v34, v35];
        if (v24)
        {
          v29 = 8207;
        }

        else
        {
          v29 = 8206;
        }

        v30 = &a3[v28];
        *v30 = v29;
        a3 = v30 + 1;
        v21 += v20 == 63;
        if (v20 == 63)
        {
          v20 = 0;
        }

        else
        {
          ++v20;
        }

        v22 = v11;
      }

      while (v19 != v18);
    }
  }

  else
  {
    v10 = v6;
    do
    {
      v12 = *begin++;
      v11 = v12;
      v13 = v10 >= v12;
      if (v10 <= v12)
      {
        v14 = v11;
      }

      else
      {
        v14 = v10;
      }

      if (v13)
      {
        v15 = v11;
      }

      else
      {
        v15 = v10;
      }

      v16 = v14 - v15;
      [(CRLWPTextSource *)self->_source getCharacters:a3 range:v34, v35];
      v17 = &a3[v16];
      *v17 = 8209;
      a3 = v17 + 1;
      v10 = v11;
    }

    while (begin != end);
  }

  source = self->_source;
  if (v11 <= &v35[v34])
  {
    v32 = &v35[v34];
  }

  else
  {
    v32 = v11;
  }

  if (v11 >= &v35[v34])
  {
    v33 = &v35[v34];
  }

  else
  {
    v33 = v11;
  }

  [(CRLWPTextSource *)source getCharacters:a3 range:v33, v32 - v33];
}

- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)a3
{
  source = self->_source;
  v4 = [(CRLWPRangeMap *)self->_rangeMap unmappedCharIndex:a3];

  return [(CRLWPTextSource *)source hasColumnBreakAtCharIndex:v4];
}

- (id)smartFieldAtCharIndex:(unint64_t)a3 attributeKind:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  v12 = xmmword_1014630E0;
  v8 = [(CRLWPTextSource *)self->_source smartFieldAtCharIndex:[(CRLWPRangeMap *)self->_rangeMap unmappedCharIndex:?] attributeKind:a4 effectiveRange:&v12];
  v12.location = [(CRLWPRangeMap *)self->_rangeMap mappedCharRange:v12];
  v12.length = v9;
  if (a3 < v12.location || a3 - v12.location >= v9)
  {

    v8 = 0;
    v12 = xmmword_1014630E0;
  }

  if (a5)
  {
    *a5 = v12;
  }

  return v8;
}

- (id)smartFieldsWithAttributeKind:(unint64_t)a3 intersectingRange:(_NSRange)a4
{
  source = self->_source;
  v7 = [(CRLWPRangeMap *)self->_rangeMap unmappedCharRange:a4.location, a4.length];

  return [(CRLWPTextSource *)source smartFieldsWithAttributeKind:a3 intersectingRange:v7, v6];
}

- (int64_t)paragraphIndexAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v9 = xmmword_1014630E0;
  v6 = [(CRLWPTextSource *)self->_source paragraphIndexAtCharIndex:[(CRLWPRangeMap *)self->_rangeMap unmappedCharIndex:a3] effectiveRange:&v9];
  if (a4)
  {
    a4->location = [(CRLWPRangeMap *)self->_rangeMap mappedCharRange:v9];
    a4->length = v7;
  }

  return v6;
}

- (id)paragraphStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v9 = xmmword_1014630E0;
  v6 = [(CRLWPTextSource *)self->_source paragraphStyleAtCharIndex:[(CRLWPRangeMap *)self->_rangeMap unmappedCharIndex:a3] effectiveRange:&v9];
  if (a4)
  {
    a4->location = [(CRLWPRangeMap *)self->_rangeMap mappedCharRange:v9];
    a4->length = v7;
  }

  return v6;
}

- (id)characterStyleAtCharIndex:(unint64_t)a3 before:(BOOL)a4 effectiveRange:(_NSRange *)a5
{
  v6 = a4;
  v14 = xmmword_1014630E0;
  source = self->_source;
  v9 = [(CRLWPRangeMap *)self->_rangeMap unmappedCharIndex:a3];
  if (a5)
  {
    v10 = &v14;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CRLWPTextSource *)source characterStyleAtCharIndex:v9 before:v6 effectiveRange:v10];
  if (a5)
  {
    a5->location = [(CRLWPRangeMap *)self->_rangeMap mappedCharRange:v14];
    a5->length = v12;
  }

  return v11;
}

- (id)hyperlinkFieldAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v12 = xmmword_1014630E0;
  source = self->_source;
  v7 = [(CRLWPRangeMap *)self->_rangeMap unmappedCharIndex:a3];
  if (a4)
  {
    v8 = &v12;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(CRLWPTextSource *)source hyperlinkFieldAtCharIndex:v7 effectiveRange:v8];
  if (a4)
  {
    a4->location = [(CRLWPRangeMap *)self->_rangeMap mappedCharRange:v12];
    a4->length = v10;
  }

  return v9;
}

- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4
{
  v6 = [(CRLWPTextSource *)self->_source wordAtCharIndex:[(CRLWPRangeMap *)self->_rangeMap unmappedCharIndex:a3] includePreviousWord:a4];
  rangeMap = self->_rangeMap;

  v8 = [(CRLWPRangeMap *)rangeMap mappedCharRange:v6, v5];
  result.length = v9;
  result.location = v8;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4 includeHyphenation:(BOOL)a5
{
  v7 = [(CRLWPTextSource *)self->_source wordAtCharIndex:[(CRLWPRangeMap *)self->_rangeMap unmappedCharIndex:a3] includePreviousWord:a4 includeHyphenation:a5];
  rangeMap = self->_rangeMap;

  v9 = [(CRLWPRangeMap *)rangeMap mappedCharRange:v7, v6];
  result.length = v10;
  result.location = v9;
  return result;
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  source = self->_source;
  v4 = [(CRLWPRangeMap *)self->_rangeMap unmappedCharIndex:a3];

  return [(CRLWPTextSource *)source characterAtIndex:v4];
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)a3 inRange:(_NSRange)a4 locale:(id)a5 hyphenChar:(unsigned int *)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a5;
  v12 = [(CRLWPRangeMap *)self->_rangeMap unmappedCharIndex:a3];
  v13 = [(CRLWPRangeMap *)self->_rangeMap unmappedCharRange:location, length];
  v15 = v14;
  v16 = [(CRLWPTextSource *)self->_source string];
  v20.location = v13;
  v20.length = v15;
  HyphenationLocationBeforeIndex = CFStringGetHyphenationLocationBeforeIndex(v16, v12, v20, 0, v11, a6);

  if (HyphenationLocationBeforeIndex == -1)
  {
    v18 = -1;
  }

  else
  {
    while (a3 > HyphenationLocationBeforeIndex)
    {
      if ([(CRLWPTypesetterTextSource *)self characterAtIndex:--a3]== 173)
      {
        HyphenationLocationBeforeIndex = a3 + 1;
        break;
      }
    }

    v18 = [(CRLWPRangeMap *)self->_rangeMap mappedCharIndex:HyphenationLocationBeforeIndex];
  }

  return v18;
}

- (unint64_t)charIndexMappedToStorage:(unint64_t)a3
{
  source = self->_source;
  v4 = [(CRLWPRangeMap *)self->_rangeMap unmappedCharIndex:a3];

  return [(CRLWPTextSource *)source charIndexMappedToStorage:v4];
}

- (unint64_t)charIndexMappedFromStorage:(unint64_t)a3
{
  rangeMap = self->_rangeMap;
  v4 = [(CRLWPTextSource *)self->_source charIndexMappedFromStorage:a3];

  return [(CRLWPRangeMap *)rangeMap mappedCharIndex:v4];
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)a3
{
  source = self->_source;
  v5 = [(CRLWPRangeMap *)self->_rangeMap unmappedCharRange:a3.location, a3.length];

  v6 = [(CRLWPTextSource *)source charRangeMappedToStorage:v5, v4];
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)a3
{
  rangeMap = self->_rangeMap;
  v5 = [(CRLWPTextSource *)self->_source charRangeMappedFromStorage:a3.location, a3.length];

  v6 = [(CRLWPRangeMap *)rangeMap mappedCharRange:v5, v4];
  result.length = v7;
  result.location = v6;
  return result;
}

- (unint64_t)charIndexRemappedFromStorage:(unint64_t)a3
{
  v4 = [(CRLWPTypesetterTextSource *)self charIndexMappedFromStorage:a3];

  return [(CRLWPTypesetterTextSource *)self charIndexMappedToStorage:v4];
}

- (_NSRange)charRangeRemappedFromStorage:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(CRLWPTypesetterTextSource *)self charIndexRemappedFromStorage:?];
  v7 = [(CRLWPTypesetterTextSource *)self charIndexRemappedFromStorage:location + length]- v6;
  v8 = v6;
  result.length = v7;
  result.location = v8;
  return result;
}

- (int64_t)charIndexForParagraphAtIndex:(unint64_t)a3
{
  v5 = xmmword_101464828;
  v3 = [(CRLWPTypesetterTextSource *)self paragraphStyleAtParIndex:a3 effectiveRange:&v5];
  return v5;
}

- (_NSRange)textRangeForParagraphAtIndex:(int64_t)a3
{
  v3 = [(CRLWPTextSource *)self->_source textRangeForParagraphAtIndex:a3];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)textRangeForParagraphAtCharIndex:(int64_t)a3
{
  source = self->_source;
  v4 = [(CRLWPTypesetterTextSource *)self paragraphIndexAtCharIndex:a3];

  v5 = [(CRLWPTextSource *)source textRangeForParagraphAtIndex:v4];
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)a3
{
  v3 = [(CRLWPTextSource *)self->_source rangeByExpandingToIncludePartialWords:a3.location, a3.length];
  result.length = v4;
  result.location = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end