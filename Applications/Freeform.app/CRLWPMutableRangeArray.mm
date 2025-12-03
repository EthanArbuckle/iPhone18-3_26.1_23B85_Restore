@interface CRLWPMutableRangeArray
- (_NSRange)replacedTextAtRange:(_NSRange)range delta:(int64_t)delta;
- (void)addRange:(_NSRange)range;
- (void)removeRange:(_NSRange)range;
- (void)removeRangesInRange:(_NSRange)range;
- (void)subtract:(id)subtract;
- (void)unionWith:(id)with;
@end

@implementation CRLWPMutableRangeArray

- (void)removeRangesInRange:(_NSRange)range
{
  if (range.length)
  {
    begin = self->super._rangeVector.__begin_;
    end = self->super._rangeVector.__end_;
    v6 = &begin[range.location];
    v7 = &v6[range.length];
    v8 = end - v7;
    if (end != v7)
    {
      memmove(&begin[range.location], v7, end - v7);
    }

    self->super._rangeVector.__end_ = (v6 + v8);
  }
}

- (void)addRange:(_NSRange)range
{
  rangeCopy = range;
  if (range.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = range.length;
    location = range.location;
    if (![(CRLWPRangeArray *)self rangeCount])
    {
      sub_1000DACAC(&self->super._rangeVector, &rangeCopy);
      return;
    }

    if (length)
    {
      v41 = rangeCopy;
      begin = self->super._rangeVector.__begin_;
      end = self->super._rangeVector.__end_;
      v9 = rangeCopy.length;
      v8 = rangeCopy.location;
      if (end == begin)
      {
        v22 = 0;
        v17 = self->super._rangeVector.__end_;
        v11 = v17;
      }

      else
      {
        v10 = end - begin;
        v11 = self->super._rangeVector.__begin_;
        do
        {
          v12 = v10 >> 1;
          v13 = &v11[v10 >> 1];
          v15 = v13->location;
          v14 = v13 + 1;
          v10 += ~(v10 >> 1);
          if (v15 < rangeCopy.location)
          {
            v11 = v14;
          }

          else
          {
            v10 = v12;
          }
        }

        while (v10);
        if (end == v11)
        {
          v22 = 0;
          v17 = self->super._rangeVector.__end_;
        }

        else
        {
          v16 = end - v11;
          v17 = v11;
          do
          {
            v18 = v16 >> 1;
            v19 = &v17[v16 >> 1];
            v21 = v19->location;
            v20 = v19 + 1;
            v16 += ~(v16 >> 1);
            if (v21 < rangeCopy.length + rangeCopy.location)
            {
              v17 = v20;
            }

            else
            {
              v16 = v18;
            }
          }

          while (v16);
          if (sub_1002BC848(rangeCopy, *v11, 1) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = 0;
          }

          else
          {
            v23 = NSUnionRange(rangeCopy, *v11);
            v8 = v23.location;
            v9 = v23.length;
            v41 = v23;
            v22 = 1;
          }
        }
      }

      if (v11 == begin)
      {
        v11 = begin;
      }

      else
      {
        v44.location = v8;
        v44.length = v9;
        if (sub_1002BC848(v44, v11[-1], 1) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v48 = v11[-1];
          --v11;
          v45.location = v8;
          v45.length = v9;
          v24 = NSUnionRange(v45, v48);
          v8 = v24.location;
          v9 = v24.length;
          v41 = v24;
          v22 = 1;
        }
      }

      v25 = v17 != begin && v17 == end;
      v26 = 0xFFFFFFFFFFFFFFFLL;
      if (!v25)
      {
        v26 = 0;
      }

      v27 = &v17[v26];
      if (&v17[v26] == end || (v46.location = v8, v46.length = v9, sub_1002BC848(v46, *v27, 1) == 0x7FFFFFFFFFFFFFFFLL))
      {
        if ((v22 & 1) == 0)
        {
LABEL_48:
          sub_1000DAED0(&self->super._rangeVector.__begin_, v11, &v41);
          if (![(CRLWPRangeArray *)self containsRange:location, length])
          {
            v35 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10138F6A8();
            }

            v36 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10138F6D0(v35, v36);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10138F77C();
            }

            v37 = off_1019EDA68;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v38 = +[CRLAssertionHandler packedBacktraceString];
              sub_101318C3C(v38, buf, v35, v37);
            }

            v39 = [NSString stringWithUTF8String:"[CRLWPMutableRangeArray addRange:]"];
            v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeArray.mm"];
            [CRLAssertionHandler handleFailureInFunction:v39 file:v40 lineNumber:438 isFatal:0 description:"addRange failure"];
          }

          return;
        }
      }

      else
      {
        v49 = *v27++;
        v47.location = v8;
        v47.length = v9;
        v41 = NSUnionRange(v47, v49);
      }

      if (v11 >= v27)
      {
        if (v27 < v11)
        {
          v32 = self->super._rangeVector.__end_;
          v33 = v32 - v11;
          if (v32 != v11)
          {
            memmove(v27, v11, v32 - v11);
          }

          self->super._rangeVector.__end_ = (v27 + v33);
          v11 = v27;
          goto LABEL_48;
        }

        if (v11 == end)
        {
          v11 = end;
          goto LABEL_48;
        }

        v31 = v11 + 1;
        v34 = self->super._rangeVector.__end_;
        v29 = v34 - &v11[1];
        if (v34 != &v11[1])
        {
          v30 = v11;
          goto LABEL_46;
        }
      }

      else
      {
        v28 = self->super._rangeVector.__end_;
        v29 = v28 - v27;
        if (v28 != v27)
        {
          v30 = v11;
          v31 = v27;
LABEL_46:
          memmove(v30, v31, v29);
        }
      }

      self->super._rangeVector.__end_ = (v11 + v29);
      goto LABEL_48;
    }
  }
}

- (void)removeRange:(_NSRange)range
{
  if (!range.length)
  {
    return;
  }

  begin = self->super._rangeVector.__begin_;
  end = self->super._rangeVector.__end_;
  p_rangeVector = &self->super._rangeVector;
  if (end == begin)
  {
    v14 = range.location + range.length;
    v9 = end;
    v20 = end;
    v15 = end;
  }

  else
  {
    v7 = end - begin;
    v8 = v7;
    v9 = begin;
    do
    {
      v10 = v8 >> 1;
      v11 = &v9[v8 >> 1];
      v13 = v11->n128_u64[0];
      v12 = v11 + 1;
      v8 += ~(v8 >> 1);
      if (v13 > range.location)
      {
        v8 = v10;
      }

      else
      {
        v9 = v12;
      }
    }

    while (v8);
    v14 = range.location + range.length;
    v15 = begin;
    do
    {
      v16 = v7 >> 1;
      v17 = &v15[v7 >> 1];
      location = v17->location;
      v18 = v17 + 1;
      v7 += ~(v7 >> 1);
      if (location < v14)
      {
        v15 = v18;
      }

      else
      {
        v7 = v16;
      }
    }

    while (v7);
    v20 = v9;
  }

  if (v9 != begin)
  {
    v21 = v20[-1].n128_u64[0];
    v22 = v20[-1].n128_u64[1];
    v23 = range.location - v21;
    if (range.location >= v21 && v23 < v22)
    {
      if (range.location == v21)
      {
        --v9;
      }

      else
      {
        v20[-1].n128_u64[1] = v23;
      }

      if (v14 >= v21 && v14 - v21 < v22)
      {
        v36 = v22 + v21;
        v37 = v14 >= v22 + v21;
        if (v14 <= v22 + v21)
        {
          v38 = v22 + v21;
        }

        else
        {
          v38 = v14;
        }

        if (!v37)
        {
          v36 = v14;
        }

        v39.n128_u64[0] = v36;
        v39.n128_u64[1] = v38 - v36;
        if (range.location == v21)
        {
          *v9 = v39;
        }

        else
        {
          sub_1000DAED0(p_rangeVector, v20, &v39);
        }

        return;
      }
    }

    begin = v9;
  }

  if (end != v15)
  {
    length = v15->length;
    if (v14 > v15->location && v14 - v15->location < length)
    {
      v28 = length + v15->location;
      if (v14 <= v28)
      {
        v29 = length + v15->location;
      }

      else
      {
        v29 = v14;
      }

      if (v14 < v28)
      {
        v28 = v14;
      }

      v15->location = v28;
      v15->length = v29 - v28;
    }
  }

  if (begin != v15)
  {
    v30 = v15[-1].location;
    v31 = v15[-1].length;
    if (v14 >= v30 && v14 - v30 < v31)
    {
      v33 = v31 + v30;
      if (v14 <= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = v14;
      }

      if (v14 < v33)
      {
        v33 = v14;
      }

      v15[-1].location = v33;
      v15[-1].length = v34 - v33;
      --v15;
    }

    if (begin != v15)
    {
      v35 = end - v15;
      if (end != v15)
      {
        memmove(begin, v15, end - v15);
      }

      self->super._rangeVector.__end_ = (begin + v35);
    }
  }
}

- (_NSRange)replacedTextAtRange:(_NSRange)range delta:(int64_t)delta
{
  length = range.length;
  location = range.location;
  rangeCount = [(CRLWPRangeArray *)self rangeCount];
  if (rangeCount)
  {
    v9 = rangeCount;
    v10 = 0;
    v11 = length - delta + location;
    v38 = -delta;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      begin = self->super._rangeVector.__begin_;
      v15 = &begin[v10];
      v17 = v15->location;
      v16 = v15->length;
      v18 = v16 + v15->location;
      if (v18 >= location)
      {
        if (location > v17)
        {
          ++v10;
          if (v11 >= v18)
          {
            v15->length = location - v17;
          }

          else
          {
            v15->length = v16 + delta;
          }

          goto LABEL_5;
        }

        if (v11 >= v18)
        {
          end = self->super._rangeVector.__end_;
          v22 = end - &v15[1];
          if (end != &v15[1])
          {
            v23 = v12;
            v24 = v13;
            memmove(v15, &v15[1], end - &v15[1]);
            v13 = v24;
            v12 = v23;
          }

          self->super._rangeVector.__end_ = (v15 + v22);
          --v9;
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = v10 + 1;
          }

          else
          {
            ++v13;
          }

          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = v10;
          }

          goto LABEL_5;
        }

        if (v11 <= v17)
        {
          if (delta < 0 && v17 < v38)
          {
            v35 = v13;
            v36 = v12;
            deltaCopy = delta;
            v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10138F7A4();
            }

            v26 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v40 = v25;
              v41 = 2082;
              v42 = "[CRLWPMutableRangeArray replacedTextAtRange:delta:]";
              v43 = 2082;
              v44 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeArray.mm";
              v45 = 1024;
              v46 = 536;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad location", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10138F7CC();
            }

            v27 = off_1019EDA68;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v31 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v40 = v25;
              v41 = 2114;
              v42 = v31;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v28 = [NSString stringWithUTF8String:"[CRLWPMutableRangeArray replacedTextAtRange:delta:]"];
            v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRangeArray.mm"];
            [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:536 isFatal:0 description:"bad location"];

            begin = self->super._rangeVector.__begin_;
            v12 = v36;
            delta = deltaCopy;
            v13 = v35;
          }

          v19 = v17 + delta;
        }

        else
        {
          v19 = v18 + delta;
          if (location <= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = location;
          }

          if (location < v19)
          {
            v19 = location;
          }

          v16 = v20 - v19;
        }

        v30 = &begin[v10];
        v30->location = v19;
        v30->length = v16;
      }

      ++v10;
LABEL_5:
      if (v10 >= v9)
      {
        goto LABEL_40;
      }
    }
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_40:
  if (v12 <= v13)
  {
    v32 = v13;
  }

  else
  {
    v32 = v12;
  }

  if (v12 >= v13)
  {
    v33 = v13;
  }

  else
  {
    v33 = v12;
  }

  v34 = v32 - v33;
  result.length = v34;
  result.location = v33;
  return result;
}

- (void)unionWith:(id)with
{
  withCopy = with;
  rangeCount = [withCopy rangeCount];
  if (rangeCount)
  {
    for (i = 0; i != rangeCount; ++i)
    {
      v6 = [withCopy rangeAtIndex:i];
      [(CRLWPMutableRangeArray *)self addRange:v6, v7];
    }
  }
}

- (void)subtract:(id)subtract
{
  subtractCopy = subtract;
  if ([(CRLWPRangeArray *)self rangeCount])
  {
    rangeCount = [subtractCopy rangeCount];
    if (rangeCount)
    {
      for (i = 0; i != rangeCount; ++i)
      {
        v6 = [subtractCopy rangeAtIndex:i];
        [(CRLWPMutableRangeArray *)self removeRange:v6, v7];
      }
    }
  }
}

@end