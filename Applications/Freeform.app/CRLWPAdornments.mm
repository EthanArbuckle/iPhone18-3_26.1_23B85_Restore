@interface CRLWPAdornments
- ($82EDB067EE6F192B39F18594CC8676AD)attachmentPositions;
- (CGPoint)flippedPositions;
- (CGPoint)positions;
- (CGPoint)textPosition;
- (CGRect)rects;
- (CRLWPAdornments)initWithType:(int)type color:(CGColor *)color font:(__CTFont *)font flippedFont:(__CTFont *)flippedFont;
- (id).cxx_construct;
- (unint64_t)charIndexes;
- (unsigned)flippedGlyphs;
- (unsigned)glyphs;
- (void)addAdornmentWithAttachmentPosition:(id)position;
- (void)addAdornmentWithCharIndex:(unint64_t)index point:(CGPoint)point glyph:(unsigned __int16)glyph rect:(CGRect)rect;
- (void)addAdornmentWithPoint:(CGPoint)point glyph:(unsigned __int16)glyph flipped:(BOOL)flipped;
- (void)incrementCharIndexes:(int64_t)indexes startingAt:(unint64_t)at;
- (void)removeAdornmentAt:(unint64_t)at;
- (void)setAscent:(double)ascent descent:(double)descent advance:(double)advance;
@end

@implementation CRLWPAdornments

- (CRLWPAdornments)initWithType:(int)type color:(CGColor *)color font:(__CTFont *)font flippedFont:(__CTFont *)flippedFont
{
  v13.receiver = self;
  v13.super_class = CRLWPAdornments;
  v10 = [(CRLWPAdornments *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    [(CRLWPAdornments *)v10 setColor:color];
    [(CRLWPAdornments *)v11 setFont:font];
    [(CRLWPAdornments *)v11 setFlippedFont:flippedFont];
    v11->_location = 1;
    v11->_verticalAdjustment = 0.0;
    v11->_descent = 0.0;
    v11->_advance = 0.0;
    v11->_ascent = 0.0;
    v11->_textPosition = CGPointZero;
    v11->_shouldRotate = 0;
  }

  return v11;
}

- (unint64_t)charIndexes
{
  if (self->_charIndexes.__end_ == self->_charIndexes.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_charIndexes.__begin_;
  }
}

- (unsigned)glyphs
{
  if (self->_glyphs.__end_ == self->_glyphs.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_glyphs.__begin_;
  }
}

- (CGPoint)positions
{
  if (self->_positions.__end_ == self->_positions.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_positions.__begin_;
  }
}

- (unsigned)flippedGlyphs
{
  if (self->_flippedGlyphs.__end_ == self->_flippedGlyphs.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_flippedGlyphs.__begin_;
  }
}

- (CGPoint)flippedPositions
{
  if (self->_flippedPositions.__end_ == self->_flippedPositions.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_flippedPositions.__begin_;
  }
}

- (CGRect)rects
{
  if (self->_rects.__end_ == self->_rects.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_rects.__begin_;
  }
}

- ($82EDB067EE6F192B39F18594CC8676AD)attachmentPositions
{
  if (self->_attachmentPositions.__end_ == self->_attachmentPositions.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_attachmentPositions.__begin_;
  }
}

- (void)setAscent:(double)ascent descent:(double)descent advance:(double)advance
{
  self->_ascent = ascent;
  self->_descent = descent;
  self->_advance = advance;
}

- (void)addAdornmentWithPoint:(CGPoint)point glyph:(unsigned __int16)glyph flipped:(BOOL)flipped
{
  flippedCopy = flipped;
  y = point.y;
  x = point.x;
  pointCopy = point;
  glyphs = glyph;
  if ((self->_type - 1) >= 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382D70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382D84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382E0C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"[CRLWPAdornments addAdornmentWithPoint:glyph:flipped:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPAdornments.mm"];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, v11, 118, 0, "bad adornments type (expected kAdornmentsTypeInvisibles or kAdornmentsTypeInvisiblesBreak");
  }

  if (flippedCopy)
  {
    CTFontGetAdvancesForGlyphs(self->_flippedFont, kCTFontOrientationDefault, &glyphs, &advances, 1);
    *&v12 = x - advances.width;
    *(&v12 + 1) = y;
    sub_1000DACAC(&self->_flippedPositions, &v12);
    sub_1004BE99C(&self->_flippedGlyphs.__begin_, &glyphs);
  }

  else
  {
    sub_1000DACAC(&self->_positions, &pointCopy);
    sub_1004BE99C(&self->_glyphs.__begin_, &glyphs);
  }
}

- (void)addAdornmentWithCharIndex:(unint64_t)index point:(CGPoint)point glyph:(unsigned __int16)glyph rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pointCopy = point;
  glyphCopy = glyph;
  if ((self->_type | 2) != 6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382E34();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382E48();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382ED0();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v13 = [NSString stringWithUTF8String:"[CRLWPAdornments addAdornmentWithCharIndex:point:glyph:rect:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPAdornments.mm"];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, v14, 137, 0, "bad adornments type (expected kAdornmentsTypeEmphasisMarks or kAdornmentTypeHiddenDeletions");
  }

  end = self->_charIndexes.__end_;
  cap = self->_charIndexes.__cap_;
  if (end >= cap)
  {
    begin = self->_charIndexes.__begin_;
    v19 = end - begin;
    v20 = end - begin;
    v21 = v20 + 1;
    if ((v20 + 1) >> 61)
    {
      sub_1000C1D48();
    }

    v22 = cap - begin;
    if (v22 >> 2 > v21)
    {
      v21 = v22 >> 2;
    }

    v23 = v22 >= 0x7FFFFFFFFFFFFFF8;
    v24 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v23)
    {
      v24 = v21;
    }

    if (v24)
    {
      sub_1000E7D14(&self->_charIndexes, v24);
    }

    v25 = end - begin;
    v26 = (8 * v20);
    v27 = (8 * v20 - 8 * v25);
    *v26 = index;
    v17 = v26 + 1;
    memcpy(v27, begin, v19);
    v28 = self->_charIndexes.__begin_;
    self->_charIndexes.__begin_ = v27;
    self->_charIndexes.__end_ = v17;
    self->_charIndexes.__cap_ = 0;
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *end = index;
    v17 = end + 1;
  }

  self->_charIndexes.__end_ = v17;
  sub_1000DACAC(&self->_positions, &pointCopy);
  sub_1004BE99C(&self->_glyphs.__begin_, &glyphCopy);
  v29 = self->_rects.__end_;
  v30 = self->_rects.__cap_;
  if (v29 >= v30)
  {
    v32 = self->_rects.__begin_;
    v33 = v29 - v32;
    v34 = v29 - v32;
    v35 = v34 + 1;
    if ((v34 + 1) >> 59)
    {
      sub_1000C1D48();
    }

    v36 = v30 - v32;
    if (v36 >> 4 > v35)
    {
      v35 = v36 >> 4;
    }

    if (v36 >= 0x7FFFFFFFFFFFFFE0)
    {
      v35 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      sub_100201940(&self->_rects, v35);
    }

    v37 = (32 * v34);
    *v37 = x;
    v37[1] = y;
    v37[2] = width;
    v37[3] = height;
    v31 = (32 * v34 + 32);
    memcpy(0, v32, v33);
    v38 = self->_rects.__begin_;
    self->_rects.__begin_ = 0;
    self->_rects.__end_ = v31;
    self->_rects.__cap_ = 0;
    if (v38)
    {
      operator delete(v38);
    }
  }

  else
  {
    v29->origin.x = x;
    v29->origin.y = y;
    v31 = v29 + 1;
    v29->size.width = width;
    v29->size.height = height;
  }

  self->_rects.__end_ = v31;
}

- (void)addAdornmentWithAttachmentPosition:(id)position
{
  var1 = position.var1;
  var0 = position.var0;
  if (self->_type != 3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382EF8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382F0C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101382F94();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLWPAdornments addAdornmentWithAttachmentPosition:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPAdornments.mm"];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, v8, 149, 0, "bad adornments type (expected kAdornmentsTypeAttachments");
  }

  end = self->_attachmentPositions.__end_;
  cap = self->_attachmentPositions.__cap_;
  if (end >= cap)
  {
    begin = self->_attachmentPositions.__begin_;
    v13 = end - begin;
    v14 = (end - begin) >> 4;
    v15 = v14 + 1;
    if ((v14 + 1) >> 60)
    {
      sub_1000C1D48();
    }

    v16 = cap - begin;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFF0;
    v18 = 0xFFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      sub_1000DB4D8(&self->_attachmentPositions, v18);
    }

    v19 = (16 * v14);
    *v19 = var0;
    v19[1] = var1;
    v11 = (16 * v14 + 16);
    memcpy(0, begin, v13);
    v20 = self->_attachmentPositions.__begin_;
    self->_attachmentPositions.__begin_ = 0;
    self->_attachmentPositions.__end_ = v11;
    self->_attachmentPositions.__cap_ = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *end = var0;
    *(end + 1) = var1;
    v11 = (end + 16);
  }

  self->_attachmentPositions.__end_ = v11;
}

- (void)removeAdornmentAt:(unint64_t)at
{
  begin = self->_charIndexes.__begin_;
  end = self->_charIndexes.__end_;
  if (at < end - begin)
  {
    v7 = &begin[at];
    v8 = (end - (v7 + 1));
    if (end != v7 + 1)
    {
      memmove(&begin[at], v7 + 1, end - (v7 + 1));
    }

    self->_charIndexes.__end_ = &v8[v7];
  }

  v10 = self->_glyphs.__begin_;
  v9 = self->_glyphs.__end_;
  if (at < v9 - v10)
  {
    v11 = &v10[at];
    v12 = (v9 - (v11 + 1));
    if (v9 != v11 + 1)
    {
      memmove(&v10[at], v11 + 1, v9 - (v11 + 1));
    }

    self->_glyphs.__end_ = &v12[v11];
  }

  v14 = self->_rects.__begin_;
  v13 = self->_rects.__end_;
  if (at < v13 - v14)
  {
    v15 = &v14[at];
    v16 = (v13 - &v15[1]);
    if (v13 != &v15[1])
    {
      memmove(&v14[at], &v15[1], v13 - &v15[1]);
    }

    self->_rects.__end_ = &v16[v15];
  }

  v18 = self->_positions.__begin_;
  v17 = self->_positions.__end_;
  if (at < v17 - v18)
  {
    v19 = &v18[at];
    v20 = (v17 - &v19[1]);
    if (v17 != &v19[1])
    {
      memmove(v19, &v19[1], v17 - &v19[1]);
    }

    self->_positions.__end_ = &v20[v19];
  }
}

- (void)incrementCharIndexes:(int64_t)indexes startingAt:(unint64_t)at
{
  begin = self->_charIndexes.__begin_;
  end = self->_charIndexes.__end_;
  while (begin != end)
  {
    if (*begin >= at)
    {
      *begin += indexes;
    }

    ++begin;
  }

  v6 = self->_attachmentPositions.__begin_;
  v7 = self->_attachmentPositions.__end_;
  while (v6 != v7)
  {
    if (*v6 >= at)
    {
      *v6 += indexes;
    }

    v6 = (v6 + 16);
  }
}

- (CGPoint)textPosition
{
  x = self->_textPosition.x;
  y = self->_textPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 21) = 0;
  *(self + 152) = 0u;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end