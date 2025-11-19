@interface CRLWPFontMetricsCache
+ (id)sharedCache;
- (BOOL)p_findEntryForFont:(__CTFont *)a3 outHeightInfo:(CRLWPFontHeightInfo *)a4 outWidths:(unint64_t *)a5 outCollision:(BOOL *)a6;
- (CRLWPFontHeightInfo)p_fontHeightInfoForFont:(SEL)a3 outWidths:(__CTFont *)a4;
- (CRLWPFontMetricsCache)init;
- (id).cxx_construct;
- (unint64_t)supportedFractionalWidthsForFont:(__CTFont *)a3;
- (void)dealloc;
@end

@implementation CRLWPFontMetricsCache

+ (id)sharedCache
{
  if (qword_101A34AB8 != -1)
  {
    sub_10134E248();
  }

  v3 = qword_101A34AC0;

  return v3;
}

- (CRLWPFontMetricsCache)init
{
  v5.receiver = self;
  v5.super_class = CRLWPFontMetricsCache;
  v2 = [(CRLWPFontMetricsCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_maxCacheSize = 32;
    pthread_rwlock_init(&v2->_lock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_lock);
  begin_node = self->_fontHashToInfoMap.__tree_.__begin_node_;
  if (begin_node != &self->_fontHashToInfoMap.__tree_.__end_node_)
  {
    do
    {
      CFRelease(begin_node[18].__left_);
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v5 = left;
          left = left->super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v5 = begin_node[2].__left_;
          v6 = v5->super.isa == begin_node;
          begin_node = v5;
        }

        while (!v6);
      }

      begin_node = v5;
    }

    while (v5 != &self->_fontHashToInfoMap.__tree_.__end_node_);
  }

  v7.receiver = self;
  v7.super_class = CRLWPFontMetricsCache;
  [(CRLWPFontMetricsCache *)&v7 dealloc];
}

- (CRLWPFontHeightInfo)p_fontHeightInfoForFont:(SEL)a3 outWidths:(__CTFont *)a4
{
  *retstr = *byte_101463CD0;
  if (!a4)
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134E25C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134E270(v9);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134E328();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = +[CRLAssertionHandler packedBacktraceString];
      sub_101314064(v11, v28, v9);
    }

    v12 = [NSString stringWithUTF8String:"[CRLWPFontMetricsCache p_fontHeightInfoForFont:outWidths:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFontMetricsCache.mm"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:54 isFatal:0 description:"invalid nil value for '%{public}s'", "font"];
  }

  pthread_rwlock_rdlock(&self->_lock);
  v26 = 0;
  v14 = [(CRLWPFontMetricsCache *)self p_findEntryForFont:a4 outHeightInfo:retstr outWidths:a5 outCollision:&v26];
  result = pthread_rwlock_unlock(&self->_lock);
  if ((v14 & 1) == 0)
  {
    Size = sub_1002821A8(a4);
    retstr->ascent = CTFontGetAscent(a4);
    retstr->descent = CTFontGetDescent(a4);
    retstr->capHeight = CTFontGetCapHeight(a4);
    retstr->xHeight = CTFontGetXHeight(a4);
    retstr->underlinePosition = CTFontGetUnderlinePosition(a4);
    retstr->underlineThickness = CTFontGetUnderlineThickness(a4);
    Leading = CTFontGetLeading(a4);
    ascent = retstr->ascent;
    descent = retstr->descent;
    if (ascent == 0.0 && descent == 0.0 && Leading == 0.0)
    {
      v20 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134E350();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134E378();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134E400();
      }

      v21 = off_1019EDA68;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = +[CRLAssertionHandler packedBacktraceString];
        sub_101314064(v22, v27, v20);
      }

      v23 = [NSString stringWithUTF8String:"[CRLWPFontMetricsCache p_fontHeightInfoForFont:outWidths:]"];
      v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFontMetricsCache.mm"];
      [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:78 isFatal:0 description:"Bad metrics for font %{public}@", a4];

      Size = CTFontGetSize(a4);
      descent = Size * 0.5;
      retstr->descent = Size * 0.5;
      retstr->ascent = Size * 0.5;
      ascent = Size * 0.5;
    }

    if (retstr->capHeight <= 0.0)
    {
      retstr->capHeight = ascent;
    }

    retstr->leadingAbove = Size - ascent - descent - Leading;
    retstr->leadingBelow = Leading;
    v25 = [(__CTFont *)a4 description];
    [(CRLWPFontMetricsCache *)self validateFontHeightInfo:retstr description:v25];

    if ((v26 & 1) == 0)
    {
      pthread_rwlock_wrlock(&self->_lock);
      if (![(CRLWPFontMetricsCache *)self p_findEntryForFont:a4 outHeightInfo:retstr outWidths:a5 outCollision:&v26]&& (v26 & 1) == 0)
      {
        [(CRLWPFontMetricsCache *)self p_addEntryForFont:a4 heightInfo:retstr widths:*a5];
      }

      return pthread_rwlock_unlock(&self->_lock);
    }
  }

  return result;
}

- (unint64_t)supportedFractionalWidthsForFont:(__CTFont *)a3
{
  v4 = 0;
  [(CRLWPFontMetricsCache *)self p_fontHeightInfoForFont:a3 outWidths:&v4];
  return v4;
}

- (BOOL)p_findEntryForFont:(__CTFont *)a3 outHeightInfo:(CRLWPFontHeightInfo *)a4 outWidths:(unint64_t *)a5 outCollision:(BOOL *)a6
{
  v11 = CFHash(a3);
  left = self->_fontHashToInfoMap.__tree_.__end_node_.__left_;
  p_end_node = &self->_fontHashToInfoMap.__tree_.__end_node_;
  v12 = left;
  if (!left)
  {
    goto LABEL_9;
  }

  v15 = p_end_node;
  do
  {
    v16 = *(v12 + 4);
    v17 = v16 >= v11;
    v18 = v16 < v11;
    if (v17)
    {
      v15 = v12;
    }

    v12 = *(v12 + v18);
  }

  while (v12);
  if (v15 != p_end_node && v11 >= v15[4].__left_)
  {
    *a6 = 0;
    v20 = v15[18].__left_;
    if (v20 == a3 || (v19 = CFEqual(v20, a3)) != 0)
    {
      v21 = *&v15[7].__left_;
      *&a4->spaceBefore = *&v15[5].__left_;
      *&a4->ascent = v21;
      v22 = *&v15[9].__left_;
      v23 = *&v15[11].__left_;
      v24 = *&v15[15].__left_;
      *&a4->verticalHeight = *&v15[13].__left_;
      *&a4->underlinePosition = v24;
      *&a4->descent = v22;
      *&a4->leadingBelow = v23;
      *a5 = v15[17].__left_;
      LOBYTE(v19) = 1;
    }

    else
    {
      *a6 = 1;
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v19) = 0;
    *a6 = 0;
  }

  return v19;
}

- (id).cxx_construct
{
  *(self + 1) = self + 8;
  *(self + 2) = self + 8;
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end