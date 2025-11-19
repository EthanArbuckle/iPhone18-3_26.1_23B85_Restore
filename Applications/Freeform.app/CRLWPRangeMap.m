@interface CRLWPRangeMap
- (CRLWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedIndexes:(const void *)a4 affinity:(int)a5;
- (CRLWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedIndexes:(const void *)a4 isBackwardAffinities:(const void *)a5;
- (CRLWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedPairIndexes:(const void *)a4;
- (_NSRange)mappedCharRange:(_NSRange)a3;
- (_NSRange)subRange;
- (_NSRange)unmappedCharRange:(_NSRange)a3;
- (id).cxx_construct;
- (unint64_t)mappedCharIndex:(unint64_t)a3;
- (unint64_t)p_extendLeftMappedIndex:(unint64_t)a3;
- (unint64_t)p_extendRightMappedIndex:(unint64_t)a3;
- (unint64_t)unmappedCharIndex:(unint64_t)a3;
- (vector<_CRLWPCharIndexAndAffinity,)mappedIndexes;
- (vector<_CRLWPCharIndexAndAffinity,)unmappedIndexes;
- (void)adjustByDelta:(int64_t)a3 startingAt:(unint64_t)a4;
- (void)setMappedIndexes:()vector<_CRLWPCharIndexAndAffinity;
- (void)setUnmappedIndexes:()vector<_CRLWPCharIndexAndAffinity;
@end

@implementation CRLWPRangeMap

- (CRLWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedPairIndexes:(const void *)a4
{
  length = a3.length;
  location = a3.location;
  v7 = [(CRLWPRangeMap *)self initWithSubRange:a3.location unmappedIndexes:a3.length affinity:a4, 0];
  v8 = v7;
  if (v7)
  {
    v7->_subRange.location = location;
    v7->_subRange.length = length;
    v9 = *(a4 + 1) - *a4;
    if ((v9 & 8) != 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013601F8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136020C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101360294();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v11 = [NSString stringWithUTF8String:"[CRLWPRangeMap initWithSubRange:unmappedPairIndexes:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeMap.mm"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:31 isFatal:0 description:"expected an even number of indexes"];
    }

    begin = v8->_unmappedIndexes.__begin_;
    end = v8->_unmappedIndexes.__end_;
    v15 = (end - begin) >> 4;
    if (v15 != v9 >> 3 || v9 >> 3 != (v8->_mappedIndexes.__end_ - v8->_mappedIndexes.__begin_) >> 4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013602BC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013602E4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136036C();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v17 = [NSString stringWithUTF8String:"[CRLWPRangeMap initWithSubRange:unmappedPairIndexes:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeMap.mm"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:32 isFatal:0 description:"index vector size is wrong"];

      begin = v8->_unmappedIndexes.__begin_;
      end = v8->_unmappedIndexes.__end_;
      v15 = (end - begin) >> 4;
    }

    if (end != begin)
    {
      v19 = 0;
      v20 = (v8->_mappedIndexes.__begin_ + 24);
      v21 = (begin + 24);
      do
      {
        *(v21 - 4) = 2;
        *v21 = 1;
        v21 += 8;
        *(v20 - 4) = 2;
        *v20 = 1;
        v20 += 8;
        v19 += 2;
      }

      while (v19 < v15);
    }
  }

  return v8;
}

- (CRLWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedIndexes:(const void *)a4 isBackwardAffinities:(const void *)a5
{
  length = a3.length;
  location = a3.location;
  v9 = [(CRLWPRangeMap *)self initWithSubRange:a3.location unmappedIndexes:a3.length affinity:a4, 0];
  v10 = v9;
  if (v9)
  {
    v9->_subRange.location = location;
    v9->_subRange.length = length;
    v12 = *a4;
    v11 = *(a4 + 1);
    v13 = (v11 - *a4) >> 3;
    if (v13 != (v9->_unmappedIndexes.__end_ - v9->_unmappedIndexes.__begin_) >> 4 || v13 != (v9->_mappedIndexes.__end_ - v9->_mappedIndexes.__begin_) >> 4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101360394();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013603A8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101360430();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v15 = [NSString stringWithUTF8String:"[CRLWPRangeMap initWithSubRange:unmappedIndexes:isBackwardAffinities:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeMap.mm"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:52 isFatal:0 description:"index vector size is wrong"];
    }

    if (v11 != v12)
    {
      v17 = 0;
      v18 = *a5;
      if (v13 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v13;
      }

      v20 = (v10->_unmappedIndexes.__begin_ + 8);
      v21 = (v10->_mappedIndexes.__begin_ + 8);
      do
      {
        if ((*(v18 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        *v20 = v22;
        v20 += 4;
        *v21 = v22;
        v21 += 4;
        ++v17;
      }

      while (v19 != v17);
    }
  }

  return v10;
}

- (CRLWPRangeMap)initWithSubRange:(_NSRange)a3 unmappedIndexes:(const void *)a4 affinity:(int)a5
{
  length = a3.length;
  location = a3.location;
  v32.receiver = self;
  v32.super_class = CRLWPRangeMap;
  v9 = [(CRLWPRangeMap *)&v32 init];
  v10 = v9;
  if (v9)
  {
    v9->_subRange.location = location;
    v9->_subRange.length = length;
    v12 = *a4;
    v11 = *(a4 + 1);
    v13 = (v11 - *a4) >> 3;
    sub_100393E1C(&v9->_unmappedIndexes.__begin_, v13);
    sub_100393E1C(&v10->_mappedIndexes.__begin_, v13);
    v30 = v13;
    if (v11 != v12)
    {
      v14 = 0;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      do
      {
        v15 = *(*a4 + 8 * v14);
        v16 = v10->_subRange.location;
        v17 = v10->_subRange.length;
        v18 = v15 - v16 < v17 && v15 >= v16;
        v19 = v17 + v16;
        if (!v18 && v15 != v19)
        {
          v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101360458();
          }

          v22 = off_1019EDA68;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v27 = NSStringFromRange(v10->_subRange);
            *buf = 67110658;
            *&buf[4] = v21;
            *v34 = 2082;
            *&v34[2] = "[CRLWPRangeMap initWithSubRange:unmappedIndexes:affinity:]";
            v35 = 2082;
            v36 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeMap.mm";
            v37 = 1024;
            v38 = 78;
            v39 = 2048;
            v40 = v15;
            v41 = 2048;
            v42 = v30;
            v43 = 2114;
            v44 = v27;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d index is out of bounds: %lu / %lu : %{public}@ ", buf, 0x40u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101360480();
          }

          v23 = off_1019EDA68;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v28 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *&buf[4] = v21;
            *v34 = 2114;
            *&v34[2] = v28;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v24 = [NSString stringWithUTF8String:"[CRLWPRangeMap initWithSubRange:unmappedIndexes:affinity:]"];
          v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeMap.mm"];
          v26 = NSStringFromRange(v10->_subRange);
          [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:78 isFatal:0 description:"index is out of bounds: %lu / %lu : %{public}@ ", v15, v30, v26];
        }

        *buf = v15;
        *v34 = a5;
        sub_100393F44(&v10->_unmappedIndexes, buf);
        *&v31 = v14 + v15 - v10->_subRange.location;
        *(&v31 + 1) = a5;
        sub_100393F44(&v10->_mappedIndexes, &v31);
        ++v14;
      }

      while (v13 != v14);
    }
  }

  return v10;
}

- (unint64_t)mappedCharIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013604A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013604BC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101360544();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLWPRangeMap mappedCharIndex:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeMap.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:98 isFatal:0 description:"shouldn't be trying to map NSNotFound"];
  }

  v8 = [(CRLWPRangeMap *)self subRange];
  [(CRLWPRangeMap *)self subRange];
  if (a3 - v8 > v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  begin = self->_unmappedIndexes.__begin_;
  end = self->_unmappedIndexes.__end_;
  if (end != begin)
  {
    v13 = (end - begin) >> 4;
    end = self->_unmappedIndexes.__begin_;
    do
    {
      v14 = v13 >> 1;
      v15 = (end + 16 * (v13 >> 1));
      v17 = *v15;
      v16 = (v15 + 2);
      v13 += ~(v13 >> 1);
      if (v17 > a3)
      {
        v13 = v14;
      }

      else
      {
        end = v16;
      }
    }

    while (v13);
  }

  return a3 - [(CRLWPRangeMap *)self subRange]+ ((end - begin) >> 4);
}

- (unint64_t)unmappedCharIndex:(unint64_t)a3
{
  v3 = a3;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136056C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101360580();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101360608();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLWPRangeMap unmappedCharIndex:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeMap.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:114 isFatal:0 description:"shouldn't be trying to map NSNotFound"];
  }

  begin = self->_mappedIndexes.__begin_;
  end = self->_mappedIndexes.__end_;
  if (end == begin)
  {
    v11 = self->_mappedIndexes.__end_;
  }

  else
  {
    v10 = (end - begin) >> 4;
    v11 = self->_mappedIndexes.__begin_;
    do
    {
      v12 = v10 >> 1;
      v13 = (v11 + 16 * (v10 >> 1));
      v15 = *v13;
      v14 = (v13 + 2);
      v10 += ~(v10 >> 1);
      if (v15 < v3)
      {
        v11 = v14;
      }

      else
      {
        v10 = v12;
      }
    }

    while (v10);
  }

  if (end == v11 || *v11 != v3)
  {
    return [(CRLWPRangeMap *)self subRange]+ v3 - ((v11 - begin) >> 4);
  }

  v16 = *(v11 + 2);
  if (v16 == 2)
  {
    ++v3;
  }

  else if (v16 == 1)
  {
    --v3;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101360630();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101360658();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013606E0();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v19 = [NSString stringWithUTF8String:"[CRLWPRangeMap unmappedCharIndex:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeMap.mm"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:131 isFatal:0 description:"bad affinity"];
  }

  return [(CRLWPRangeMap *)self unmappedCharIndex:v3];
}

- (unint64_t)p_extendLeftMappedIndex:(unint64_t)a3
{
  if (a3)
  {
    begin = self->_mappedIndexes.__begin_;
    end = self->_mappedIndexes.__end_;
    if (end != begin)
    {
      v5 = a3 - 1;
      v6 = (end - begin) >> 4;
      do
      {
        v7 = v6 >> 1;
        v8 = (begin + 16 * (v6 >> 1));
        v10 = *v8;
        v9 = (v8 + 2);
        v6 += ~(v6 >> 1);
        if (v10 < v5)
        {
          begin = v9;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
      if (begin != end && *begin == v5 && *(begin + 2) == 2)
      {
        --a3;
      }
    }
  }

  return a3;
}

- (unint64_t)p_extendRightMappedIndex:(unint64_t)a3
{
  begin = self->_mappedIndexes.__begin_;
  end = self->_mappedIndexes.__end_;
  if (end != begin)
  {
    v5 = a3 + 1;
    v6 = (end - begin) >> 4;
    do
    {
      v7 = v6 >> 1;
      v8 = (begin + 16 * (v6 >> 1));
      v10 = *v8;
      v9 = (v8 + 2);
      v6 += ~(v6 >> 1);
      if (v10 < v5)
      {
        begin = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    if (begin != end && *begin == v5 && *(begin + 2) == 1)
    {
      ++a3;
    }
  }

  return a3;
}

- (_NSRange)mappedCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v44.location = [(CRLWPRangeMap *)self subRange];
  v44.length = v6;
  v38.location = location;
  v38.length = length;
  if (NSIntersectionRange(v38, v44).length)
  {
    v7 = [(CRLWPRangeMap *)self subRange];
    if (location <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = location;
    }

    v9 = [(CRLWPRangeMap *)self p_extendLeftMappedIndex:[(CRLWPRangeMap *)self mappedCharIndex:v8]];
    v10 = [(CRLWPRangeMap *)self subRange];
    v12 = &v10[v11];
    if (&v10[v11] >= location + length)
    {
      v12 = (location + length);
    }

    v13 = [(CRLWPRangeMap *)self p_extendRightMappedIndex:[(CRLWPRangeMap *)self mappedCharIndex:v12 - 1]]- v9 + 1;
  }

  else if (location >= [(CRLWPRangeMap *)self subRange])
  {
    [(CRLWPRangeMap *)self subRange];
    v13 = 0;
    v9 = v14 + ((self->_mappedIndexes.__end_ - self->_mappedIndexes.__begin_) >> 4);
  }

  else
  {
    v9 = 0;
    v13 = 0;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101360708();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v41.location = location;
      v41.length = length;
      v25 = NSStringFromRange(v41);
      v42.location = v9;
      v42.length = v13;
      NSStringFromRange(v42);
      *buf = 67110402;
      v27 = v15;
      v28 = 2082;
      v29 = "[CRLWPRangeMap mappedCharRange:]";
      v30 = 2082;
      v31 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeMap.mm";
      v32 = 1024;
      v33 = 191;
      v34 = 2114;
      v35 = v25;
      v37 = v36 = 2114;
      v24 = v37;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad range mapping: %{public}@ -> %{public}@", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136071C();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v18 = [NSString stringWithUTF8String:"[CRLWPRangeMap mappedCharRange:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeMap.mm"];
    v39.location = location;
    v39.length = length;
    v20 = NSStringFromRange(v39);
    v40.location = v9;
    v40.length = v13;
    v21 = NSStringFromRange(v40);
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:191 isFatal:0 description:"Bad range mapping: %{public}@ -> %{public}@", v20, v21];
  }

  if (v13 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v22 = v9;
  }

  else
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v13 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v23 = v13;
  }

  else
  {
    v23 = 0;
  }

  result.length = v23;
  result.location = v22;
  return result;
}

- (_NSRange)unmappedCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(CRLWPRangeMap *)self unmappedCharIndex:?];
  v7 = v6;
  if (length)
  {
    v8 = [(CRLWPRangeMap *)self unmappedCharIndex:length + location - 1]+ 1;
  }

  else
  {
    v8 = v6;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = &v9[-v10];
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)adjustByDelta:(int64_t)a3 startingAt:(unint64_t)a4
{
  if ([(CRLWPRangeMap *)self subRange]>= a4)
  {
    self->_subRange.location += a3;
  }

  begin = self->_unmappedIndexes.__begin_;
  end = self->_unmappedIndexes.__end_;
  while (begin != end)
  {
    if (*begin >= a4)
    {
      *begin += a3;
    }

    begin = (begin + 16);
  }
}

- (_NSRange)subRange
{
  length = self->_subRange.length;
  location = self->_subRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (vector<_CRLWPCharIndexAndAffinity,)unmappedIndexes
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_100394DF4(retstr, self->_unmappedIndexes.__begin_, self->_unmappedIndexes.__end_, (self->_unmappedIndexes.__end_ - self->_unmappedIndexes.__begin_) >> 4);
}

- (void)setUnmappedIndexes:()vector<_CRLWPCharIndexAndAffinity
{
  p_unmappedIndexes = &self->_unmappedIndexes;
  if (p_unmappedIndexes != a3)
  {
    sub_100394EF4(p_unmappedIndexes, a3->__begin_, a3->__end_, (a3->__end_ - a3->__begin_) >> 4);
  }
}

- (vector<_CRLWPCharIndexAndAffinity,)mappedIndexes
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_100394DF4(retstr, self->_mappedIndexes.__begin_, self->_mappedIndexes.__end_, (self->_mappedIndexes.__end_ - self->_mappedIndexes.__begin_) >> 4);
}

- (void)setMappedIndexes:()vector<_CRLWPCharIndexAndAffinity
{
  p_mappedIndexes = &self->_mappedIndexes;
  if (p_mappedIndexes != a3)
  {
    sub_100394EF4(p_mappedIndexes, a3->__begin_, a3->__end_, (a3->__end_ - a3->__begin_) >> 4);
  }
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end