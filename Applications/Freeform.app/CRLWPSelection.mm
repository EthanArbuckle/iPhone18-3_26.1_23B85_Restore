@interface CRLWPSelection
+ (CRLWPSelection)selectionWithRange:(_NSRange)range;
+ (CRLWPSelection)selectionWithRange:(_NSRange)range type:(unint64_t)type leadingEdge:(BOOL)edge storage:(id)storage;
+ (id)selectionFromWPSelection:(id)selection;
- (BOOL)containsCharacterAtIndex:(unint64_t)index;
- (BOOL)containsCharacterAtIndex:(unint64_t)index withOptions:(unint64_t)options;
- (BOOL)intersectsRange:(_NSRange)range;
- (BOOL)isEquivalentForInsertionStyle:(id)style;
- (BOOL)p_isEqual:(id)equal;
- (CRLWPSelection)initWithRangeArray:(id)array;
- (CRLWPSelection)initWithType:(unint64_t)type range:(_NSRange)range styleInsertionBehavior:(int)behavior caretAffinity:(unint64_t)affinity smartFieldRange:(_NSRange)fieldRange leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index;
- (CRLWPSelection)initWithType:(unint64_t)type range:(_NSRange)range styleInsertionBehavior:(int)behavior caretAffinity:(unint64_t)affinity smartFieldRange:(_NSRange)fieldRange leadingEdge:(BOOL)edge storage:(id)storage;
- (_NSRange)range;
- (_NSRange)rawRange;
- (_NSRange)smartFieldRange;
- (_NSRange)superRange;
- (id)constrainToRange:(_NSRange)range;
- (id)copyWithNewRange:(_NSRange)range newCaretAffinity:(unint64_t)affinity;
- (id)copyWithNewStyleInsertionBehavior:(int)behavior newCaretAffinity:(unint64_t)affinity;
- (id)copyWithNewType:(unint64_t)type;
- (id)copyWithNewType:(unint64_t)type range:(_NSRange)range;
- (id)copyWithNewType:(unint64_t)type smartFieldRange:(_NSRange)range;
- (id)copyWithNewVisualRanges:(id)ranges;
- (id)copyWithNewVisualTypeRange:(_NSRange)range head:(unint64_t)head tail:(unint64_t)tail;
- (id)copyWithVisualRanges:(id)ranges headCharIndex:(unint64_t)index tailCharIndex:(unint64_t)charIndex rightToLeft:(BOOL)left sameLine:(BOOL)line;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)visualRangesArray;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)i_setVisualRanges:(id)ranges;
@end

@implementation CRLWPSelection

- (_NSRange)range
{
  if ([(CRLWPSelection *)self isVisual]&& [(CRLWPSelection *)self isInsertionPoint]&& !self->_leadingEdge)
  {
    length = 0;
    p_leadingCharIndex = &self->_leadingCharIndex;
  }

  else
  {
    p_leadingCharIndex = &self->_range;
    length = self->_range.length;
  }

  location = p_leadingCharIndex->location;
  result.length = length;
  result.location = location;
  return result;
}

- (CRLWPSelection)initWithType:(unint64_t)type range:(_NSRange)range styleInsertionBehavior:(int)behavior caretAffinity:(unint64_t)affinity smartFieldRange:(_NSRange)fieldRange leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  fieldRangeCopy = fieldRange;
  v31.receiver = self;
  v31.super_class = CRLWPSelection;
  v14 = [(CRLWPSelection *)&v31 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_34;
  }

  v14->_type = type;
  v14->_range.location = location;
  v14->_range.length = length;
  if (length)
  {
    edge = 1;
  }

  v14->_leadingEdge = edge;
  if (length)
  {
    index = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14->_leadingCharIndex = index;
  v14->_styleInsertionBehavior = behavior;
  v14->_caretAffinity = affinity;
  if (type == 6)
  {
    v18 = &fieldRangeCopy;
  }

  else
  {
    v18 = &xmmword_101464828;
    if (fieldRange.location != 0x7FFFFFFFFFFFFFFFLL || fieldRange.length)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138F8E0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138F908();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138F990();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v20 = [NSString stringWithUTF8String:"[CRLWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:leadingCharIndex:]"];
      v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSelection.mm"];
      [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:143 isFatal:0 description:"Non smartfield selection has smartField range"];

      v18 = &xmmword_101464828;
    }
  }

  v15->_smartFieldRange = *v18;
  v15->_validVisualRanges = 0;
  v15->_headCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  v15->_tailCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  v15->_tailCursorAffinity = 1;
  if (length)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  v15->_headCursorAffinity = v22;
  if (length >= 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138F9B8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138F9E0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138FA68();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v24 = [NSString stringWithUTF8String:"[CRLWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:leadingCharIndex:]"];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSelection.mm"];
    [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:157 isFatal:0 description:"illegal range length"];
  }

  if ((location & 0x8000000000000000) != 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138FA90();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138FAB8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138FB40();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v28 = [NSString stringWithUTF8String:"[CRLWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:leadingCharIndex:]"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSelection.mm"];
    [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:158 isFatal:0 description:"illegal range location"];

    goto LABEL_44;
  }

  if (length > 0x7FFFFFFFFFFFFFFELL)
  {
LABEL_44:
    v26 = 0;
    goto LABEL_45;
  }

LABEL_34:
  v26 = v15;
LABEL_45:

  return v26;
}

- (CRLWPSelection)initWithType:(unint64_t)type range:(_NSRange)range styleInsertionBehavior:(int)behavior caretAffinity:(unint64_t)affinity smartFieldRange:(_NSRange)fieldRange leadingEdge:(BOOL)edge storage:(id)storage
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v14 = storageCopy;
  if (type == 7 && !storageCopy && !edge)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138FB68();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138FB7C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138FC04();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v16 = [NSString stringWithUTF8String:"[CRLWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:storage:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSelection.mm"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:169 isFatal:0 description:"Selection has a leading edge but no storage to get the leading char"];

    goto LABEL_17;
  }

  if (type != 7 || !storageCopy || edge)
  {
LABEL_17:
    v18 = location;
    goto LABEL_18;
  }

  v18 = [storageCopy nextCharacterIndex:location];
LABEL_18:
  LOBYTE(v21) = edge;
  v19 = [(CRLWPSelection *)self initWithType:type range:location styleInsertionBehavior:length caretAffinity:behavior smartFieldRange:affinity leadingEdge:0x7FFFFFFFFFFFFFFFLL leadingCharIndex:0, v21, v18];

  return v19;
}

- (CRLWPSelection)initWithRangeArray:(id)array
{
  arrayCopy = array;
  LOBYTE(v9) = 1;
  v6 = [CRLWPSelection initWithType:"initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:leadingCharIndex:" range:0 styleInsertionBehavior:0x7FFFFFFFFFFFFFFFLL caretAffinity:0 smartFieldRange:v9 leadingEdge:0x7FFFFFFFFFFFFFFFLL leadingCharIndex:?];
  if (v6)
  {
    if ([arrayCopy rangeCount])
    {
      v6->_range.location = [arrayCopy superRange];
      v6->_range.length = v7;
      if (v7)
      {
        objc_storeStrong(&v6->_visualRanges, array);
        v6->_validVisualRanges = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOBYTE(v6) = self->_leadingEdge;
  return [v4 initWithType:self->_type range:self->_range.location styleInsertionBehavior:self->_range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v6, self->_leadingCharIndex}];
}

+ (CRLWPSelection)selectionWithRange:(_NSRange)range
{
  v3 = [[self alloc] initWithRange:{range.location, range.length}];

  return v3;
}

+ (CRLWPSelection)selectionWithRange:(_NSRange)range type:(unint64_t)type leadingEdge:(BOOL)edge storage:(id)storage
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  LOBYTE(v14) = edge;
  v12 = [[self alloc] initWithType:type range:location styleInsertionBehavior:length caretAffinity:0 smartFieldRange:0 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:{0, v14, storageCopy}];

  return v12;
}

+ (id)selectionFromWPSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = selectionCopy;
    }

    else
    {
      v9 = [self alloc];
      type = [selectionCopy type];
      rawRange = [selectionCopy rawRange];
      v13 = v12;
      styleInsertionBehavior = [selectionCopy styleInsertionBehavior];
      caretAffinity = [selectionCopy caretAffinity];
      smartFieldRange = [selectionCopy smartFieldRange];
      v18 = v17;
      LOBYTE(v20) = [selectionCopy leadingEdge];
      v5 = [v9 initWithType:type range:rawRange styleInsertionBehavior:v13 caretAffinity:styleInsertionBehavior smartFieldRange:caretAffinity leadingEdge:smartFieldRange leadingCharIndex:{v18, v20, objc_msgSend(selectionCopy, "leadingCharIndex")}];
      v5[4] = selectionCopy[4];
      v5[5] = selectionCopy[5];
      *(v5 + 64) = *(selectionCopy + 64);
      objc_storeStrong(v5 + 12, selectionCopy[12]);
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138FC2C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138FC40();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138FCF0();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPSelection selectionFromWPSelection:]");
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSelection.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:227 isFatal:0 description:"invalid nil value for '%{public}s'", "wpSelection"];

    v5 = 0;
  }

  return v5;
}

- (BOOL)p_isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, equalCopy);
    v7 = v6;
    v10 = 0;
    if (v6)
    {
      v8 = self->_range.location == *(v6 + 16) && self->_range.length == *(v6 + 24);
      if (v8 && self->_type == *(v6 + 8) && self->_styleInsertionBehavior == *(v6 + 68) && self->_caretAffinity == *(v6 + 72))
      {
        v9 = self->_smartFieldRange.location == *(v6 + 80) && self->_smartFieldRange.length == *(v6 + 88);
        if (v9 && self->_leadingEdge == *(v6 + 48) && self->_leadingCharIndex == *(v6 + 56) && self->_validVisualRanges == *(v6 + 64) && (!self->_validVisualRanges || [(CRLWPRangeArray *)self->_visualRanges isEqualToRangeArray:*(v6 + 96)]))
        {
          v10 = 1;
        }
      }
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(CRLHasher);
  [(CRLHasher *)v3 addUnsignedInteger:self->_range.location];
  [(CRLHasher *)v3 addUnsignedInteger:self->_range.length];
  [(CRLHasher *)v3 addUnsignedInteger:self->_type];
  [(CRLHasher *)v3 addUnsignedInteger:self->_styleInsertionBehavior];
  [(CRLHasher *)v3 addUnsignedInteger:self->_caretAffinity];
  [(CRLHasher *)v3 addUnsignedInteger:self->_smartFieldRange.location];
  [(CRLHasher *)v3 addUnsignedInteger:self->_smartFieldRange.length];
  [(CRLHasher *)v3 addUnsignedInteger:self->_leadingCharIndex];
  [(CRLHasher *)v3 addUnsignedInteger:self->_validVisualRanges];
  [(CRLHasher *)v3 addBool:self->_leadingEdge];
  hashValue = [(CRLHasher *)v3 hashValue];

  return hashValue;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, compareCopy);
  if (v6 && -[CRLWPSelection isValid](self, "isValid") && [v6 isValid])
  {
    range = [(CRLWPSelection *)self range];
    if (range >= [v6 range])
    {
      range2 = [(CRLWPSelection *)self range];
      if (range2 > [v6 range])
      {
        v8 = 1;
        goto LABEL_7;
      }

      [(CRLWPSelection *)self range];
      v12 = v11;
      [v6 range];
      if (v12 >= v13)
      {
        [(CRLWPSelection *)self range];
        v15 = v14;
        [v6 range];
        v8 = v15 > v16;
        goto LABEL_7;
      }
    }

    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (BOOL)isEquivalentForInsertionStyle:(id)style
{
  styleCopy = style;
  if (styleCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      range = [(CRLWPSelection *)self range];
      v7 = v6;
      v9 = 0;
      if (range == [(CRLWPSelection *)styleCopy range]&& v7 == v8)
      {
        v9 = self->_type == styleCopy->_type;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithNewType:(unint64_t)type smartFieldRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8 = objc_alloc(objc_opt_class());
  LOBYTE(v10) = self->_leadingEdge;
  return [v8 initWithType:type range:self->_range.location styleInsertionBehavior:self->_range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:location leadingCharIndex:{length, v10, self->_leadingCharIndex}];
}

- (id)copyWithNewType:(unint64_t)type range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (type == 6)
  {
    p_smartFieldRange = &self->_smartFieldRange;
  }

  else
  {
    p_smartFieldRange = &xmmword_101464828;
  }

  v9 = p_smartFieldRange->location;
  v10 = p_smartFieldRange->length;
  v11 = objc_alloc(objc_opt_class());
  LOBYTE(v13) = self->_leadingEdge;
  return [v11 initWithType:type range:location styleInsertionBehavior:length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:v9 leadingCharIndex:{v10, v13, location}];
}

- (id)copyWithNewVisualTypeRange:(_NSRange)range head:(unint64_t)head tail:(unint64_t)tail
{
  length = range.length;
  location = range.location;
  v10 = objc_alloc(objc_opt_class());
  LOBYTE(v13) = self->_leadingEdge;
  v11 = [v10 initWithType:7 range:location styleInsertionBehavior:length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v13, self->_leadingCharIndex}];
  [v11 setHeadCharIndex:head tailCharIndex:tail];
  return v11;
}

- (id)copyWithNewType:(unint64_t)type
{
  if (type == 6)
  {
    p_smartFieldRange = &self->_smartFieldRange;
  }

  else
  {
    p_smartFieldRange = &xmmword_101464828;
  }

  location = p_smartFieldRange->location;
  length = p_smartFieldRange->length;
  v8 = objc_alloc(objc_opt_class());
  LOBYTE(v10) = self->_leadingEdge;
  return [v8 initWithType:type range:self->_range.location styleInsertionBehavior:self->_range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:location leadingCharIndex:{length, v10, self->_leadingCharIndex}];
}

- (id)copyWithNewRange:(_NSRange)range newCaretAffinity:(unint64_t)affinity
{
  length = range.length;
  location = range.location;
  LOBYTE(v11) = 1;
  v7 = [objc_alloc(objc_opt_class()) initWithType:self->_type range:location styleInsertionBehavior:range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:affinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v11, location}];
  v8 = v7;
  if (v7)
  {
    if (location == self->_range.location && length == self->_range.length)
    {
      if (self->_type == 7 && self->_validVisualRanges)
      {
        [v7 i_setVisualRanges:self->_visualRanges];
        [v8 setHeadCharIndex:self->_headCharIndex tailCharIndex:self->_tailCharIndex];
      }
    }

    else
    {
      v7[9] = 0;
    }
  }

  return v8;
}

- (id)copyWithNewStyleInsertionBehavior:(int)behavior newCaretAffinity:(unint64_t)affinity
{
  v5 = *&behavior;
  location = self->_range.location;
  length = self->_range.length;
  leadingEdge = self->_leadingEdge;
  if (!affinity && self->_caretAffinity == 1)
  {
    if ([(CRLWPSelection *)self isInsertionPoint])
    {
      location = self->_leadingCharIndex;
    }

    leadingEdge = 1;
  }

  LOBYTE(v11) = leadingEdge;
  return [objc_alloc(objc_opt_class()) initWithType:self->_type range:location styleInsertionBehavior:length caretAffinity:v5 smartFieldRange:affinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v11, self->_leadingCharIndex}];
}

- (id)constrainToRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v18.location = [(CRLWPSelection *)selfCopy range];
  v6 = v18.location;
  v7 = v18.length;
  v19.location = location;
  v19.length = length;
  v8 = sub_1002BC848(v18, v19, 1);
  if (v8 != v6 || v9 != v7)
  {
    v10 = v8 == 0x7FFFFFFFFFFFFFFFLL;
    v11 = v9 == 0;
    if (v6 + v7 <= location + length)
    {
      v12 = location;
    }

    else
    {
      v12 = location + length;
    }

    if (v10 && v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v8;
    }

    if (v10 && v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v9;
    }

    v15 = [(CRLWPSelection *)selfCopy copyWithNewRange:v13, v14];

    selfCopy = v15;
  }

  return selfCopy;
}

- (id)copyWithNewVisualRanges:(id)ranges
{
  rangesCopy = ranges;
  v5 = objc_alloc(objc_opt_class());
  superRange = [rangesCopy superRange];
  LOBYTE(v10) = self->_leadingEdge;
  v8 = [v5 initWithType:7 range:superRange styleInsertionBehavior:v7 caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v10, self->_leadingCharIndex}];
  [v8 i_setVisualRanges:rangesCopy];

  return v8;
}

- (id)copyWithVisualRanges:(id)ranges headCharIndex:(unint64_t)index tailCharIndex:(unint64_t)charIndex rightToLeft:(BOOL)left sameLine:(BOOL)line
{
  lineCopy = line;
  leftCopy = left;
  rangesCopy = ranges;
  if (self->_type != 7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138FD18();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138FD2C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138FDB4();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v13 = [NSString stringWithUTF8String:"[CRLWPSelection copyWithVisualRanges:headCharIndex:tailCharIndex:rightToLeft:sameLine:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSelection.mm"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:482 isFatal:0 description:"Selection type must be visual"];
  }

  v15 = objc_alloc(objc_opt_class());
  LOBYTE(v20) = self->_leadingEdge;
  v16 = [v15 initWithType:self->_type range:self->_range.location styleInsertionBehavior:self->_range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v20, self->_leadingCharIndex}];
  [v16 i_setVisualRanges:rangesCopy];
  if (lineCopy && leftCopy)
  {
    indexCopy = charIndex;
  }

  else
  {
    indexCopy = index;
  }

  if (lineCopy && leftCopy)
  {
    charIndexCopy2 = index;
  }

  else
  {
    charIndexCopy2 = charIndex;
  }

  [v16 setHeadCharIndex:indexCopy tailCharIndex:charIndexCopy2];

  return v16;
}

- (_NSRange)superRange
{
  if (self->_type == 7 && [(CRLWPSelection *)self isRange]&& [(CRLWPRangeArray *)self->_visualRanges rangeCount])
  {
    visualRanges = self->_visualRanges;

    superRange = [(CRLWPRangeArray *)visualRanges superRange];
  }

  else
  {

    superRange = [(CRLWPSelection *)self range];
  }

  result.length = v5;
  result.location = superRange;
  return result;
}

- (void)i_setVisualRanges:(id)ranges
{
  rangesCopy = ranges;
  v4 = [rangesCopy copy];
  visualRanges = self->_visualRanges;
  self->_visualRanges = v4;

  [(CRLWPRangeArray *)self->_visualRanges enumerateRanges:&stru_10186DA38];
  self->_validVisualRanges = 1;
}

- (id)visualRangesArray
{
  if (self->_type == 7 && !self->_validVisualRanges && [(CRLWPSelection *)self isRange])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138FEA0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138FEB4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138FF3C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v4 = [NSString stringWithUTF8String:"[CRLWPSelection visualRangesArray]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPSelection.mm"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:544 isFatal:0 description:"Visual ranges have not been calculated"];
  }

  rangeCount = [(CRLWPRangeArray *)self->_visualRanges rangeCount];
  if (rangeCount < 2)
  {
    superRange = [(CRLWPSelection *)self superRange];
    v10 = [NSValue valueWithRange:superRange, v12];
    v9 = [NSMutableArray arrayWithObject:v10];
  }

  else
  {
    v7 = [NSMutableArray arrayWithCapacity:rangeCount];
    visualRanges = self->_visualRanges;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10053F090;
    v14[3] = &unk_10186DAE0;
    v9 = v7;
    v15 = v9;
    [(CRLWPRangeArray *)visualRanges enumerateRanges:v14];
    v10 = v15;
  }

  return v9;
}

- (BOOL)containsCharacterAtIndex:(unint64_t)index
{
  location = self->_range.location;
  v5 = index >= location;
  v4 = index - location;
  v5 = !v5 || v4 >= self->_range.length;
  return !v5;
}

- (BOOL)containsCharacterAtIndex:(unint64_t)index withOptions:(unint64_t)options
{
  [(CRLWPSelection *)self visualRangesArray];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v6 = v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        rangeValue = [*(*(&v14 + 1) + 8 * i) rangeValue];
        if (sub_100282B48(index, 0, rangeValue, v11, options))
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)intersectsRange:(_NSRange)range
{
  p_range = &self->_range;
  v4.length = self->_range.length;
  if (v4.length)
  {
    v4.location = p_range->location;
    return NSIntersectionRange(v4, range).length != 0;
  }

  else
  {
    location = p_range->location;
    v8 = location >= range.location && location - range.location < range.length;
    v9 = location == range.location;
    if (range.length)
    {
      return v8;
    }

    else
    {
      return v9;
    }
  }
}

- (id)description
{
  v4 = objc_opt_class();
  v5 = sub_10053C730(self->_type);
  type = self->_type;
  v7 = NSStringFromRange(self->_range);
  validVisualRanges = self->_validVisualRanges;
  if (validVisualRanges)
  {
    visualRangesArray = [(CRLWPSelection *)self visualRangesArray];
    v9 = [visualRangesArray description];
  }

  else
  {
    v9 = @"not set";
  }

  isAtEndOfLine = [(CRLWPSelection *)self isAtEndOfLine];
  insertionEdge = [(CRLWPSelection *)self insertionEdge];
  v12 = @".start";
  if (isAtEndOfLine)
  {
    v12 = @".end";
  }

  v13 = @".trailing";
  if (!insertionEdge)
  {
    v13 = @".leading";
  }

  if (self->_leadingEdge)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [NSString stringWithFormat:@"(%@*) %p: type: %@(%lu), %@, visual ranges: %@, caretAffinity: %@, insertionEdge: %@, leadingEdge: %@", v4, self, v5, type, v7, v9, v12, v13, v14];
  if (validVisualRanges)
  {
  }

  return v15;
}

- (_NSRange)rawRange
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)smartFieldRange
{
  p_smartFieldRange = &self->_smartFieldRange;
  location = self->_smartFieldRange.location;
  length = p_smartFieldRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end