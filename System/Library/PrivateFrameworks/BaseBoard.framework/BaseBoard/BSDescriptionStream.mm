@interface BSDescriptionStream
+ (id)descriptionForRootObject:(id)object;
+ (id)descriptionForRootObject:(id)object withStyle:(id)style;
- (BOOL)sortKeys;
- (BSDescriptionStream)init;
- (BSDescriptionStream)initWithDescriptionStyle:(id)style;
- (id)appendBool:(BOOL)bool withName:(id)name;
- (id)appendBool:(BOOL)bool withName:(id)name ifEqualTo:(BOOL)to;
- (id)appendCString:(const char *)string withName:(id)name;
- (id)appendClass:(Class)class withName:(id)name;
- (id)appendDouble:(double)double withName:(id)name decimalPrecision:(unint64_t)precision;
- (id)appendFlag:(int64_t)flag withName:(id)name;
- (id)appendFlag:(int64_t)flag withName:(id)name skipIfNotSet:(BOOL)set;
- (id)appendInt64:(int64_t)int64 withName:(id)name;
- (id)appendInt:(int)int withName:(id)name;
- (id)appendInteger:(int64_t)integer withName:(id)name;
- (id)appendObject:(id)object withName:(id)name skipIfNil:(BOOL)nil;
- (id)appendPoint:(CGPoint)point withName:(id)name;
- (id)appendPointer:(void *)pointer withName:(id)name;
- (id)appendQueue:(id)queue withName:(id)name;
- (id)appendRect:(CGRect)rect withName:(id)name;
- (id)appendSelector:(SEL)selector withName:(id)name;
- (id)appendSize:(CGSize)size withName:(id)name;
- (id)appendTimeInterval:(double)interval withName:(id)name decomposeUnits:(BOOL)units;
- (id)appendUInt64:(unint64_t)int64 withName:(id)name;
- (id)appendUInt64:(unint64_t)int64 withName:(id)name format:(int64_t)format;
- (id)appendUnsignedInt:(unsigned int)int withName:(id)name;
- (id)appendUnsignedInteger:(unint64_t)integer withName:(id)name;
- (id)appendUnsignedInteger:(unint64_t)integer withName:(id)name format:(int64_t)format;
- (id)appendVersionedPID:(int64_t)d withName:(id)name;
- (id)description;
- (void)_appendDictionary:(__CFString *)dictionary withName:(uint64_t)name itemBlock:;
- (void)_appendSectionWithTotalItemCount:(uint64_t)count truncatedItemCount:(__CFString *)itemCount openDelimiter:(__CFString *)delimiter closeDelimiter:(uint64_t)closeDelimiter block:;
- (void)_overlayStyle:(uint64_t)style block:;
- (void)_overrideCollectionLineBreaking:(char)breaking force:(uint64_t)force block:;
- (void)appendBodySectionWithName:(id)name openDelimiter:(id)delimiter closeDelimiter:(id)closeDelimiter block:(id)block;
- (void)appendCollection:(id)collection withName:(id)name itemBlock:(id)block;
- (void)appendCustomFormatForValue:(id)value withCustomFormatForName:(id)name;
- (void)appendCustomFormatWithName:(id)name block:(id)block;
- (void)appendCustomFormatWithNameFromObjectDescription:(id)description block:(id)block;
- (void)appendDictionary:(id)dictionary withName:(id)name itemBlock:(id)block;
- (void)appendFormat:(id)format;
- (void)appendIntegerMap:(id)map withName:(id)name keyFormat:(int64_t)format valueBlock:(id)block;
- (void)appendIntegerSet:(id)set withName:(id)name format:(int64_t)format;
- (void)appendProem:(id)proem block:(id)block;
- (void)appendRightArrow;
- (void)appendString:(id)string;
- (void)appendString:(id)string withName:(id)name skipIfEmpty:(BOOL)empty;
- (void)sameLine:(id)line;
- (void)setSortKeys:(BOOL)keys;
@end

@implementation BSDescriptionStream

- (id)description
{
  appendBufferCount = self->_appendBufferCount;
  if (appendBufferCount >= 1)
  {
    self->_appendBuffer[appendBufferCount] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
  }

  string = self->_string;

  return string;
}

- (BSDescriptionStream)init
{
  v8.receiver = self;
  v8.super_class = BSDescriptionStream;
  v2 = [(BSDescriptionStream *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    string = v2->_string;
    v2->_string = v3;

    v5 = _BSDefaultDescriptionStyle();
    style = v2->_style;
    v2->_style = v5;
  }

  return v2;
}

- (void)appendRightArrow
{
  appendBufferCount = self->_appendBufferCount;
  appendBuffer = self->_appendBuffer;
  if (appendBufferCount > 1019)
  {
    appendBuffer[appendBufferCount] = 0;
    CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
    CFStringAppendCString(self->_string, " -> ", 0x8000100u);
  }

  else
  {
    *&appendBuffer[appendBufferCount] = 540945696;
    self->_appendBufferCount += 4;
  }

  self->_emitPhase = 0;
}

- (BSDescriptionStream)initWithDescriptionStyle:(id)style
{
  v43 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = BSDescriptionStream;
  v5 = [(BSDescriptionStream *)&v30 init];
  if (v5)
  {
    styleCopy = style;
    if (!styleCopy)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v12 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"style", v14];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(a2);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138544642;
        v32 = v16;
        v33 = 2114;
        v34 = v18;
        v35 = 2048;
        v36 = v5;
        v37 = 2114;
        v38 = @"BSDescriptionStream.m";
        v39 = 1024;
        v40 = 97;
        v41 = 2114;
        v42 = v15;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v19 = v15;
      qword_1EAD33B00 = [v15 UTF8String];
      __break(0);
      JUMPOUT(0x18FF6A0A0);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = MEMORY[0x1E696AEC0];
      classForCoder = [styleCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v22 = NSStringFromClass(classForCoder);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v20 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"style", v22, v24];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(a2);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v32 = v26;
        v33 = 2114;
        v34 = v28;
        v35 = 2048;
        v36 = v5;
        v37 = 2114;
        v38 = @"BSDescriptionStream.m";
        v39 = 1024;
        v40 = 97;
        v41 = 2114;
        v42 = v25;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v29 = v25;
      qword_1EAD33B00 = [v25 UTF8String];
      __break(0);
      JUMPOUT(0x18FF6A1ECLL);
    }

    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    string = v5->_string;
    v5->_string = v7;

    v9 = [styleCopy copy];
    style = v5->_style;
    v5->_style = v9;

    v5->_truncationStartIndex = -1;
  }

  return v5;
}

+ (id)descriptionForRootObject:(id)object
{
  v4 = objc_alloc_init(BSDescriptionStream);
  v5 = [(BSDescriptionStream *)v4 appendObject:object withName:0];
  v6 = [v5 description];

  return v6;
}

+ (id)descriptionForRootObject:(id)object withStyle:(id)style
{
  v5 = [[BSDescriptionStream alloc] initWithDescriptionStyle:style];
  v6 = [(BSDescriptionStream *)v5 appendObject:object withName:0];
  v7 = [(BSDescriptionStream *)v5 description];

  return v7;
}

- (void)setSortKeys:(BOOL)keys
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__BSDescriptionStream_setSortKeys___block_invoke;
  v7[3] = &__block_descriptor_33_e35_v16__0__BSMutableDescriptionStyle_8l;
  keysCopy = keys;
  v4 = [BSDescriptionStyle build:v7];
  v5 = [(BSDescriptionStyle *)self->_style _styleByOverlayingStyle:v4];
  style = self->_style;
  self->_style = v5;
}

uint64_t __35__BSDescriptionStream_setSortKeys___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setKeyValuePairSorting:v2];
}

- (BOOL)sortKeys
{
  if (self)
  {
    LOBYTE(self) = self->_style->_keyValuePairSorting == 2;
  }

  return self;
}

- (void)_overlayStyle:(uint64_t)style block:
{
  if (self)
  {
    v6 = *(self + 8);
    if (v6 == a2)
    {
      v11 = *(style + 16);

      v11(style);
    }

    else
    {
      v7 = v6;
      v8 = [(BSDescriptionStyle *)*(self + 8) _styleByOverlayingStyle:a2];
      v9 = *(self + 8);
      *(self + 8) = v8;

      (*(style + 16))(style);
      v10 = *(self + 8);
      *(self + 8) = v7;
    }
  }
}

- (void)sameLine:(id)line
{
  v5 = +[BSDescriptionStyle collectionLineBreakNoneStyle];
  [(BSDescriptionStream *)self _overlayStyle:v5 block:line];
}

- (void)appendBodySectionWithName:(id)name openDelimiter:(id)delimiter closeDelimiter:(id)closeDelimiter block:(id)block
{
  if (!name)
  {
    goto LABEL_67;
  }

  v11 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase <= 2)
  {
    if (emitPhase != 1)
    {
      if (emitPhase != 2)
      {
        goto LABEL_32;
      }

      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      appendBuffer = self->_appendBuffer;
      if (appendBufferCount <= 1022)
      {
        appendBuffer[appendBufferCount] = 32;
        v16 = 1;
        goto LABEL_25;
      }

      appendBuffer[appendBufferCount] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      p_string = &self->_string;
      v20 = " ";
LABEL_30:
      *p_appendBufferCount = 0;
      CFStringAppendCString(*p_string, v20, 0x8000100u);
      goto LABEL_31;
    }

    p_appendBufferCount = &self->_appendBufferCount;
    v17 = self->_appendBufferCount;
    v18 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v17 <= 1021)
      {
        *&v18[v17] = 8251;
        v16 = 2;
        goto LABEL_25;
      }

      v18[v17] = 0;
      CFStringAppendCString(self->_string, v18, 0x8000100u);
      p_string = &self->_string;
      v20 = "; ";
      goto LABEL_30;
    }

    if (v17 > 1022)
    {
      v18[v17] = 0;
      CFStringAppendCString(self->_string, v18, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v18[v17] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 3)
  {
LABEL_17:
    v21 = self->_appendBufferCount;
    v22 = self->_appendBuffer;
    if (v21 > 1022)
    {
      v22[v21] = 0;
      CFStringAppendCString(self->_string, v22, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      v22[v21] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 4)
  {
LABEL_20:
    indentLevel = self->_indentLevel;
    if (indentLevel < 1)
    {
LABEL_31:
      self->_emitPhase = 0;
      goto LABEL_32;
    }

    if (indentLevel >= 8)
    {
      indentLevel = 8;
    }

    v24 = *(&sIndentSpaceStrings + indentLevel);
    v25 = strlen(v24);
    p_appendBufferCount = &self->_appendBufferCount;
    v26 = self->_appendBufferCount;
    if ((v26 + v25) > 1023)
    {
      if (v26 >= 1)
      {
        self->_appendBuffer[v26] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v24, 0x8000100u);
      goto LABEL_31;
    }

    v16 = v25;
    memcpy(&self->_appendBuffer[v26], v24, v25);
LABEL_25:
    *p_appendBufferCount += v16;
    goto LABEL_31;
  }

LABEL_32:
  nameTruncation = v11->_nameTruncation;
  maximumNameLengthBeforeTruncation = v11->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    maximumNameLengthBeforeTruncation = 0;
    v30 = 1096;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v30 = 1088;
  }

  *(&self->super.isa + v30) = maximumNameLengthBeforeTruncation;
  v31 = [name length];
  v32 = self->_appendBufferCount;
  if (v32 + 3 * v31 <= 1023)
  {
    usedBufLen = 0;
    v50.location = 0;
    v50.length = v31;
    CFStringGetBytes(name, v50, 0x8000100u, 0, 0, &self->_appendBuffer[v32], 1024 - v32, &usedBufLen);
    v33 = self->_appendBufferCount + usedBufLen;
LABEL_44:
    self->_appendBufferCount = v33;
    goto LABEL_46;
  }

  if (v32 >= 1)
  {
    self->_appendBuffer[v32] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
  }

  if (v31 <= 341)
  {
    usedBufLen = 0;
    v51.location = 0;
    v51.length = v31;
    CFStringGetBytes(name, v51, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v33 = usedBufLen;
    goto LABEL_44;
  }

  [(NSMutableString *)self->_string appendString:name];
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v34 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v34 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v35 = *(&self->_style->super.isa + *v34);
  if (v35 < 2)
  {
    v39 = self->_appendBufferCount;
    v40 = self->_appendBuffer;
    if (v39 <= 1021)
    {
      *&v40[v39] = 8250;
      v38 = 2;
      goto LABEL_58;
    }

    v40[v39] = 0;
    CFStringAppendCString(self->_string, v40, 0x8000100u);
    v43 = ": ";
  }

  else if (v35 == 2)
  {
    v41 = self->_appendBufferCount;
    v42 = &self->_appendBuffer[v41];
    if (v41 <= 1020)
    {
      v42[2] = 32;
      *v42 = 15648;
      v38 = 3;
      goto LABEL_58;
    }

    *v42 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v43 = " = ";
  }

  else
  {
    if (v35 != 3)
    {
      goto LABEL_63;
    }

    v36 = self->_appendBufferCount;
    v37 = self->_appendBuffer;
    if (v36 <= 1019)
    {
      *&v37[v36] = 540945696;
      v38 = 4;
LABEL_58:
      self->_appendBufferCount += v38;
      goto LABEL_63;
    }

    v37[v36] = 0;
    CFStringAppendCString(self->_string, v37, 0x8000100u);
    v43 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v43, 0x8000100u);
LABEL_63:
  v44 = 0;
  valueTruncation = v11->_valueTruncation;
  v46 = 1096;
  if (valueTruncation >= 2)
  {
    maximumValueLengthBeforeTruncation = v11->_maximumValueLengthBeforeTruncation;
    if (maximumValueLengthBeforeTruncation >= 1)
    {
      self->_lineTruncation = valueTruncation;
      self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
      v46 = 1088;
      v44 = maximumValueLengthBeforeTruncation;
    }
  }

  *(&self->super.isa + v46) = v44;

LABEL_67:
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __84__BSDescriptionStream_appendBodySectionWithName_openDelimiter_closeDelimiter_block___block_invoke;
  v48[3] = &unk_1E72CBBF0;
  v48[4] = self;
  v48[5] = delimiter;
  v48[6] = closeDelimiter;
  v48[7] = block;
  [(BSDescriptionStream *)self _overrideCollectionLineBreaking:0 force:v48 block:?];
  if (name)
  {
    self->_emitPhase = 1;
    BSDescribeTruncationCommit(self);
  }
}

void __84__BSDescriptionStream_appendBodySectionWithName_openDelimiter_closeDelimiter_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(BSDescriptionStream *)v2 _appendSectionWithTotalItemCount:-1 truncatedItemCount:*(a1 + 40) openDelimiter:*(a1 + 48) closeDelimiter:*(a1 + 56) block:?];
  }
}

- (void)_overrideCollectionLineBreaking:(char)breaking force:(uint64_t)force block:
{
  if (self)
  {
    if (*(self[1] + 24) < 2 || (breaking & 1) != 0)
    {
      if (a2 == 2)
      {
        +[BSDescriptionStyle collectionLineBreakNoneStyle];
      }

      else
      {
        +[BSDescriptionStyle collectionLineBreakEachItemStyle];
      }
      v6 = ;
      [self overlayStyle:? block:?];
    }

    else
    {
      v5 = *(force + 16);

      v5(force);
    }
  }
}

- (void)appendCollection:(id)collection withName:(id)name itemBlock:(id)block
{
  v9 = _NSIsNSSet();
  if (!name)
  {
    goto LABEL_67;
  }

  v10 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase <= 2)
  {
    if (emitPhase != 1)
    {
      if (emitPhase != 2)
      {
        goto LABEL_32;
      }

      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      appendBuffer = self->_appendBuffer;
      if (appendBufferCount <= 1022)
      {
        appendBuffer[appendBufferCount] = 32;
        v15 = 1;
        goto LABEL_25;
      }

      appendBuffer[appendBufferCount] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      p_string = &self->_string;
      v19 = " ";
LABEL_30:
      *p_appendBufferCount = 0;
      CFStringAppendCString(*p_string, v19, 0x8000100u);
      goto LABEL_31;
    }

    p_appendBufferCount = &self->_appendBufferCount;
    v16 = self->_appendBufferCount;
    v17 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v16 <= 1021)
      {
        *&v17[v16] = 8251;
        v15 = 2;
        goto LABEL_25;
      }

      v17[v16] = 0;
      CFStringAppendCString(self->_string, v17, 0x8000100u);
      p_string = &self->_string;
      v19 = "; ";
      goto LABEL_30;
    }

    if (v16 > 1022)
    {
      v17[v16] = 0;
      CFStringAppendCString(self->_string, v17, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v17[v16] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 3)
  {
LABEL_17:
    v20 = self->_appendBufferCount;
    v21 = self->_appendBuffer;
    if (v20 > 1022)
    {
      v21[v20] = 0;
      CFStringAppendCString(self->_string, v21, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      v21[v20] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 4)
  {
LABEL_20:
    indentLevel = self->_indentLevel;
    if (indentLevel < 1)
    {
LABEL_31:
      self->_emitPhase = 0;
      goto LABEL_32;
    }

    if (indentLevel >= 8)
    {
      indentLevel = 8;
    }

    v23 = *(&sIndentSpaceStrings + indentLevel);
    v24 = strlen(v23);
    p_appendBufferCount = &self->_appendBufferCount;
    v25 = self->_appendBufferCount;
    if ((v25 + v24) > 1023)
    {
      if (v25 >= 1)
      {
        self->_appendBuffer[v25] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v23, 0x8000100u);
      goto LABEL_31;
    }

    v15 = v24;
    memcpy(&self->_appendBuffer[v25], v23, v24);
LABEL_25:
    *p_appendBufferCount += v15;
    goto LABEL_31;
  }

LABEL_32:
  nameTruncation = v10->_nameTruncation;
  maximumNameLengthBeforeTruncation = v10->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    maximumNameLengthBeforeTruncation = 0;
    v29 = 1096;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v29 = 1088;
  }

  *(&self->super.isa + v29) = maximumNameLengthBeforeTruncation;
  v30 = [name length];
  v31 = self->_appendBufferCount;
  if (v31 + 3 * v30 <= 1023)
  {
    usedBufLen = 0;
    v58.location = 0;
    v58.length = v30;
    CFStringGetBytes(name, v58, 0x8000100u, 0, 0, &self->_appendBuffer[v31], 1024 - v31, &usedBufLen);
    v32 = self->_appendBufferCount + usedBufLen;
LABEL_44:
    self->_appendBufferCount = v32;
    goto LABEL_46;
  }

  if (v31 >= 1)
  {
    self->_appendBuffer[v31] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
  }

  if (v30 <= 341)
  {
    usedBufLen = 0;
    v59.location = 0;
    v59.length = v30;
    CFStringGetBytes(name, v59, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v32 = usedBufLen;
    goto LABEL_44;
  }

  [(NSMutableString *)self->_string appendString:name];
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v33 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v33 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v34 = *(&self->_style->super.isa + *v33);
  if (v34 < 2)
  {
    v38 = self->_appendBufferCount;
    v39 = self->_appendBuffer;
    if (v38 <= 1021)
    {
      *&v39[v38] = 8250;
      v37 = 2;
      goto LABEL_58;
    }

    v39[v38] = 0;
    CFStringAppendCString(self->_string, v39, 0x8000100u);
    v42 = ": ";
  }

  else if (v34 == 2)
  {
    v40 = self->_appendBufferCount;
    v41 = &self->_appendBuffer[v40];
    if (v40 <= 1020)
    {
      v41[2] = 32;
      *v41 = 15648;
      v37 = 3;
      goto LABEL_58;
    }

    *v41 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v42 = " = ";
  }

  else
  {
    if (v34 != 3)
    {
      goto LABEL_63;
    }

    v35 = self->_appendBufferCount;
    v36 = self->_appendBuffer;
    if (v35 <= 1019)
    {
      *&v36[v35] = 540945696;
      v37 = 4;
LABEL_58:
      self->_appendBufferCount += v37;
      goto LABEL_63;
    }

    v36[v35] = 0;
    CFStringAppendCString(self->_string, v36, 0x8000100u);
    v42 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v42, 0x8000100u);
LABEL_63:
  v43 = 0;
  valueTruncation = v10->_valueTruncation;
  v45 = 1096;
  if (valueTruncation >= 2)
  {
    maximumValueLengthBeforeTruncation = v10->_maximumValueLengthBeforeTruncation;
    if (maximumValueLengthBeforeTruncation >= 1)
    {
      self->_lineTruncation = valueTruncation;
      self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
      v45 = 1088;
      v43 = maximumValueLengthBeforeTruncation;
    }
  }

  *(&self->super.isa + v45) = v43;

LABEL_67:
  v47 = [collection count];
  style = self->_style;
  if (style->_collectionTruncationStyle == 2)
  {
    maximumItemCountForTruncation = style->_maximumItemCountForTruncation;
    v50 = maximumItemCountForTruncation < v47;
    if (maximumItemCountForTruncation < v47)
    {
      v51 = maximumItemCountForTruncation + 1;
    }

    else
    {
      v51 = v47;
    }
  }

  else
  {
    v50 = 0;
    v51 = v47;
  }

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __59__BSDescriptionStream_appendCollection_withName_itemBlock___block_invoke;
  v54[3] = &unk_1E72CBC18;
  if (v9)
  {
    v52 = CFSTR("(");
  }

  else
  {
    v52 = @"[";
  }

  v54[4] = collection;
  v54[5] = self;
  v55 = v9;
  v56 = v50;
  if (v9)
  {
    v53 = @"");
  }

  else
  {
    v53 = @"]";
  }

  v54[6] = block;
  v54[7] = v51;
  [(BSDescriptionStream *)self _appendSectionWithTotalItemCount:v47 truncatedItemCount:v51 openDelimiter:v52 closeDelimiter:v53 block:v54];
  if (name)
  {
    self->_emitPhase = 1;
    BSDescribeTruncationCommit(self);
  }
}

void __59__BSDescriptionStream_appendCollection_withName_itemBlock___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 && *(*(v4 + 8) + 88) == 2 && *(a1 + 64) == 1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v6)
    {
      v7 = *v28;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ((objc_opt_respondsToSelector() & 1) == 0)
          {

            v10 = *(a1 + 32);
            goto LABEL_15;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = [*(a1 + 32) allObjects];
    v10 = [v9 sortedArrayUsingSelector:sel_compare_];

    v3 = v9;
LABEL_15:
  }

  else
  {
    v10 = v2;
  }

  v26 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v12)
  {
    v13 = 0;
    v14 = *v24;
LABEL_18:
    v15 = 0;
    v16 = v13;
    v13 += v12;
    while (1)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v23 + 1) + 8 * v15);
      if (*(a1 + 65) == 1 && v16 >= *(a1 + 56) - 1)
      {
        break;
      }

      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __59__BSDescriptionStream_appendCollection_withName_itemBlock___block_invoke_2;
      v22[3] = &unk_1E72CB2B0;
      v22[4] = v17;
      v22[5] = v19;
      BSDescribeAppendItem(v18, v22);
      ++v16;
      if (v12 == ++v15)
      {
        v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          goto LABEL_18;
        }

        break;
      }
    }
  }

  if (*(a1 + 65) == 1)
  {
    v20 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__BSDescriptionStream_appendCollection_withName_itemBlock___block_invoke_3;
    v21[3] = &unk_1E72CADE8;
    v21[4] = v20;
    BSDescribeAppendItem(v20, v21);
  }
}

CFIndex __59__BSDescriptionStream_appendCollection_withName_itemBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [@"…" length];
  v3 = *(v1 + 1040);
  if (3 * v2 + v3 <= 1023)
  {
    usedBufLen = 0;
    v9.location = 0;
    v9.length = v2;
    result = CFStringGetBytes(@"…", v9, 0x8000100u, 0, 0, (v1 + v3 + 16), 1024 - v3, &usedBufLen);
    v5 = *(v1 + 1040) + usedBufLen;
LABEL_7:
    *(v1 + 1040) = v5;
    return result;
  }

  if (v3 >= 1)
  {
    *(v1 + 16 + v3) = 0;
    CFStringAppendCString(*(v1 + 1064), (v1 + 16), 0x8000100u);
    *(v1 + 1040) = 0;
  }

  if (v2 <= 341)
  {
    usedBufLen = 0;
    v10.location = 0;
    v10.length = v2;
    result = CFStringGetBytes(@"…", v10, 0x8000100u, 0, 0, (v1 + 16), 1024, &usedBufLen);
    v5 = usedBufLen;
    goto LABEL_7;
  }

  v6 = *(v1 + 1064);

  return [v6 appendString:@"…"];
}

- (void)_appendSectionWithTotalItemCount:(uint64_t)count truncatedItemCount:(__CFString *)itemCount openDelimiter:(__CFString *)delimiter closeDelimiter:(uint64_t)closeDelimiter block:
{
  if (self)
  {
    v12 = *(self + 1104);
    if (v12 == 1)
    {
      v12 = 0;
      *(self + 1104) = 0;
    }

    v13 = *(self + 1112);
    *(self + 1112) = count;
    if (!count || (v14 = *(*(self + 8) + 24), v14 != 3) && (*(self + 1057) & 1) == 0 && (count == 1 || v14 == 2))
    {
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __110__BSDescriptionStream__appendSectionWithTotalItemCount_truncatedItemCount_openDelimiter_closeDelimiter_block___block_invoke;
      v50[3] = &unk_1E72CBDD0;
      v51 = a2 != count;
      v50[7] = closeDelimiter;
      v50[8] = a2;
      v50[4] = self;
      v50[5] = itemCount;
      v50[6] = delimiter;
      [(BSDescriptionStream *)self _overrideCollectionLineBreaking:0 force:v50 block:?];
LABEL_87:
      *(self + 1112) = v13;
      return;
    }

    if (v12 != 4)
    {
      if (v12 != 3)
      {
        if (v12 != 2)
        {
          goto LABEL_30;
        }

        v15 = *(self + 1040);
        v16 = (self + 16);
        if (v15 <= 1022)
        {
          v16[v15] = 32;
          v17 = *(self + 1040) + 1;
LABEL_23:
          *(self + 1040) = v17;
          goto LABEL_29;
        }

        v16[v15] = 0;
        CFStringAppendCString(*(self + 1064), v16, 0x8000100u);
        *(self + 1040) = 0;
        v25 = *(self + 1064);
        v26 = " ";
        goto LABEL_28;
      }

      v18 = *(self + 1040);
      v19 = (self + 16);
      if (v18 > 1022)
      {
        v19[v18] = 0;
        CFStringAppendCString(*(self + 1064), v19, 0x8000100u);
        *(self + 1040) = 0;
        CFStringAppendCString(*(self + 1064), "\n", 0x8000100u);
      }

      else
      {
        v19[v18] = 10;
        ++*(self + 1040);
      }
    }

    v20 = *(self + 1072);
    if (v20 < 1)
    {
LABEL_29:
      *(self + 1104) = 0;
LABEL_30:
      if (a2 != count)
      {
        v27 = *(self + 1040);
        v28 = self + 16;
        if (v27 > 1022)
        {
          *(v28 + v27) = 0;
          CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
          *(self + 1040) = 0;
          CFStringAppendCString(*(self + 1064), "|", 0x8000100u);
          v29 = *(self + 1040);
        }

        else
        {
          *(v28 + v27) = 124;
          v29 = *(self + 1040) + 1;
          *(self + 1040) = v29;
        }

        if (v29 >= 1)
        {
          *(v28 + v29) = 0;
          CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
          *(self + 1040) = 0;
        }

        [*(self + 1064) appendFormat:@"%d", a2];
        v30 = *(self + 1040);
        if (v30 > 1021)
        {
          *(v28 + v30) = 0;
          CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
          *(self + 1040) = 0;
          CFStringAppendCString(*(self + 1064), "| ", 0x8000100u);
        }

        else
        {
          *(v28 + v30) = 8316;
          *(self + 1040) += 2;
        }
      }

      v31 = [(__CFString *)itemCount length];
      v32 = *(self + 1040);
      if (3 * v31 + v32 > 1023)
      {
        if (v32 >= 1)
        {
          *(self + 16 + v32) = 0;
          CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
          *(self + 1040) = 0;
        }

        if (v31 > 341)
        {
          [*(self + 1064) appendString:itemCount];
          v33 = *(self + 1040);
LABEL_47:
          v34 = self + 16;
          if (v33 > 1022)
          {
            *(v34 + v33) = 0;
            CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
            *(self + 1040) = 0;
            CFStringAppendCString(*(self + 1064), "\n", 0x8000100u);
          }

          else
          {
            *(v34 + v33) = 10;
            ++*(self + 1040);
          }

          *(self + 1104) = 4;
          ++*(self + 1072);
          (*(closeDelimiter + 16))(closeDelimiter);
          v35 = *(self + 1104);
          if (v35 == 3)
          {
            *(self + 1104) = 4;
            v36 = *(self + 1072) - 1;
            *(self + 1072) = v36;
          }

          else
          {
            v36 = *(self + 1072) - 1;
            *(self + 1072) = v36;
            switch(v35)
            {
              case 1:
                v45 = *(self + 1040);
                if (*(*(self + 8) + 24) != 3)
                {
                  if (v45 <= 1021)
                  {
                    *(v34 + v45) = 8251;
                    v41 = *(self + 1040) + 2;
                    goto LABEL_70;
                  }

                  *(v34 + v45) = 0;
                  CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
                  *(self + 1040) = 0;
                  v43 = *(self + 1064);
                  v44 = "; ";
                  goto LABEL_76;
                }

                if (v45 > 1022)
                {
                  *(v34 + v45) = 0;
                  CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
                  *(self + 1040) = 0;
                  CFStringAppendCString(*(self + 1064), ";", 0x8000100u);
                  v46 = *(self + 1040);
                }

                else
                {
                  *(v34 + v45) = 59;
                  v46 = *(self + 1040) + 1;
                  *(self + 1040) = v46;
                }

                if (v46 > 1022)
                {
                  *(v34 + v46) = 0;
                  CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
                  *(self + 1040) = 0;
                  CFStringAppendCString(*(self + 1064), "\n", 0x8000100u);
                }

                else
                {
                  *(v34 + v46) = 10;
                  ++*(self + 1040);
                }

                v36 = *(self + 1072);
                break;
              case 4:
                break;
              case 2:
                v42 = *(self + 1040);
                if (v42 <= 1022)
                {
                  *(v34 + v42) = 32;
                  v41 = *(self + 1040) + 1;
                  goto LABEL_70;
                }

                *(v34 + v42) = 0;
                CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
                *(self + 1040) = 0;
                v43 = *(self + 1064);
                v44 = " ";
LABEL_76:
                CFStringAppendCString(v43, v44, 0x8000100u);
                goto LABEL_77;
              default:
                goto LABEL_78;
            }
          }

          if (v36 < 1)
          {
LABEL_77:
            *(self + 1104) = 0;
LABEL_78:
            v47 = [(__CFString *)delimiter length];
            v48 = *(self + 1040);
            if (3 * v47 + v48 > 1023)
            {
              if (v48 >= 1)
              {
                *(v34 + v48) = 0;
                CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
                *(self + 1040) = 0;
              }

              if (v47 > 341)
              {
                [*(self + 1064) appendString:delimiter];
                goto LABEL_86;
              }

              usedBufLen = 0;
              v56.location = 0;
              v56.length = v47;
              CFStringGetBytes(delimiter, v56, 0x8000100u, 0, 0, (self + 16), 1024, &usedBufLen);
              v49 = usedBufLen;
            }

            else
            {
              usedBufLen = 0;
              v55.location = 0;
              v55.length = v47;
              CFStringGetBytes(delimiter, v55, 0x8000100u, 0, 0, (v34 + v48), 1024 - v48, &usedBufLen);
              v49 = *(self + 1040) + usedBufLen;
            }

            *(self + 1040) = v49;
LABEL_86:
            *(self + 1104) = 3;
            goto LABEL_87;
          }

          if (v36 >= 8)
          {
            v36 = 8;
          }

          v37 = *(&sIndentSpaceStrings + v36);
          v38 = strlen(v37);
          v39 = *(self + 1040);
          if ((v39 + v38) <= 1023)
          {
            v40 = v38;
            memcpy((v34 + v39), v37, v38);
            v41 = *(self + 1040) + v40;
LABEL_70:
            *(self + 1040) = v41;
            goto LABEL_77;
          }

          if (v39 >= 1)
          {
            *(v34 + v39) = 0;
            CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
            *(self + 1040) = 0;
          }

          v43 = *(self + 1064);
          v44 = v37;
          goto LABEL_76;
        }

        usedBufLen = 0;
        v54.location = 0;
        v54.length = v31;
        CFStringGetBytes(itemCount, v54, 0x8000100u, 0, 0, (self + 16), 1024, &usedBufLen);
        v33 = usedBufLen;
      }

      else
      {
        usedBufLen = 0;
        v53.location = 0;
        v53.length = v31;
        CFStringGetBytes(itemCount, v53, 0x8000100u, 0, 0, (self + v32 + 16), 1024 - v32, &usedBufLen);
        v33 = *(self + 1040) + usedBufLen;
      }

      *(self + 1040) = v33;
      goto LABEL_47;
    }

    if (v20 >= 8)
    {
      v20 = 8;
    }

    v21 = *(&sIndentSpaceStrings + v20);
    v22 = strlen(v21);
    v23 = *(self + 1040);
    if ((v23 + v22) <= 1023)
    {
      v24 = v22;
      memcpy((self + v23 + 16), v21, v22);
      v17 = *(self + 1040) + v24;
      goto LABEL_23;
    }

    if (v23 >= 1)
    {
      *(self + 16 + v23) = 0;
      CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
      *(self + 1040) = 0;
    }

    v25 = *(self + 1064);
    v26 = v21;
LABEL_28:
    CFStringAppendCString(v25, v26, 0x8000100u);
    goto LABEL_29;
  }
}

- (void)appendDictionary:(id)dictionary withName:(id)name itemBlock:(id)block
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__BSDescriptionStream_appendDictionary_withName_itemBlock___block_invoke;
  v5[3] = &unk_1E72CBC40;
  v5[4] = block;
  [(BSDescriptionStream *)self _appendDictionary:dictionary withName:name itemBlock:v5];
}

- (void)_appendDictionary:(__CFString *)dictionary withName:(uint64_t)name itemBlock:
{
  if (!self)
  {
    return;
  }

  if (dictionary)
  {
    v8 = *(self + 8);
    v9 = *(self + 1104);
    if (v9 > 2)
    {
      if (v9 != 3)
      {
        if (v9 != 4)
        {
LABEL_33:
          v24 = v8[6];
          v25 = v8[7];
          if (v24 < 2 || v25 < 1)
          {
            v25 = 0;
            v27 = 1096;
          }

          else
          {
            *(self + 1096) = v24;
            *(self + 1080) = *(self + 1040) + [*(self + 1064) length];
            v27 = 1088;
          }

          *(self + v27) = v25;
          v28 = [(__CFString *)dictionary length];
          v29 = *(self + 1040);
          if (v29 + 3 * v28 > 1023)
          {
            if (v29 >= 1)
            {
              *(self + 16 + v29) = 0;
              CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
              *(self + 1040) = 0;
            }

            if (v28 > 341)
            {
              [*(self + 1064) appendString:dictionary];
LABEL_47:
              BSDescribeTruncationCommit(self);
              if (*(self + 1048) <= 0)
              {
                v31 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
              }

              else
              {
                v31 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
              }

              v32 = *(*(self + 8) + *v31);
              if (v32 < 2)
              {
                v36 = *(self + 1040);
                v37 = (self + 16);
                if (v36 <= 1021)
                {
                  *&v37[v36] = 8250;
                  v35 = 2;
                  goto LABEL_59;
                }

                v37[v36] = 0;
                CFStringAppendCString(*(self + 1064), v37, 0x8000100u);
                v40 = ": ";
              }

              else if (v32 == 2)
              {
                v38 = *(self + 1040);
                v39 = self + 16 + v38;
                if (v38 <= 1020)
                {
                  *(v39 + 2) = 32;
                  *v39 = 15648;
                  v35 = 3;
                  goto LABEL_59;
                }

                *v39 = 0;
                CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
                v40 = " = ";
              }

              else
              {
                if (v32 != 3)
                {
                  goto LABEL_64;
                }

                v33 = *(self + 1040);
                v34 = (self + 16);
                if (v33 <= 1019)
                {
                  *&v34[v33] = 540945696;
                  v35 = 4;
LABEL_59:
                  *(self + 1040) += v35;
                  goto LABEL_64;
                }

                v34[v33] = 0;
                CFStringAppendCString(*(self + 1064), v34, 0x8000100u);
                v40 = " -> ";
              }

              *(self + 1040) = 0;
              CFStringAppendCString(*(self + 1064), v40, 0x8000100u);
LABEL_64:
              v41 = 0;
              v42 = v8[8];
              v43 = 1096;
              if (v42 >= 2)
              {
                v44 = v8[9];
                if (v44 >= 1)
                {
                  *(self + 1096) = v42;
                  *(self + 1080) = *(self + 1040) + [*(self + 1064) length];
                  v43 = 1088;
                  v41 = v44;
                }
              }

              *(self + v43) = v41;

              goto LABEL_68;
            }

            usedBufLen = 0;
            v54.location = 0;
            v54.length = v28;
            CFStringGetBytes(dictionary, v54, 0x8000100u, 0, 0, (self + 16), 1024, &usedBufLen);
            v30 = usedBufLen;
          }

          else
          {
            usedBufLen = 0;
            v53.location = 0;
            v53.length = v28;
            CFStringGetBytes(dictionary, v53, 0x8000100u, 0, 0, (self + v29 + 16), 1024 - v29, &usedBufLen);
            v30 = *(self + 1040) + usedBufLen;
          }

          *(self + 1040) = v30;
          goto LABEL_47;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (v9 != 2)
        {
          goto LABEL_33;
        }

        v10 = (self + 1040);
        v11 = *(self + 1040);
        v12 = (self + 16);
        if (v11 <= 1022)
        {
          v12[v11] = 32;
          v13 = 1;
          goto LABEL_26;
        }

        v12[v11] = 0;
        CFStringAppendCString(*(self + 1064), v12, 0x8000100u);
        v16 = (self + 1064);
        v17 = " ";
LABEL_31:
        *v10 = 0;
        CFStringAppendCString(*v16, v17, 0x8000100u);
        goto LABEL_32;
      }

      v10 = (self + 1040);
      v14 = *(self + 1040);
      v15 = (self + 16);
      if (*(*(self + 8) + 24) != 3)
      {
        if (v14 <= 1021)
        {
          *&v15[v14] = 8251;
          v13 = 2;
          goto LABEL_26;
        }

        v15[v14] = 0;
        CFStringAppendCString(*(self + 1064), v15, 0x8000100u);
        v16 = (self + 1064);
        v17 = "; ";
        goto LABEL_31;
      }

      if (v14 > 1022)
      {
        v15[v14] = 0;
        CFStringAppendCString(*(self + 1064), v15, 0x8000100u);
        *(self + 1040) = 0;
        CFStringAppendCString(*(self + 1064), ";", 0x8000100u);
      }

      else
      {
        v15[v14] = 59;
        ++*v10;
      }
    }

    v18 = *(self + 1040);
    v19 = (self + 16);
    if (v18 > 1022)
    {
      v19[v18] = 0;
      CFStringAppendCString(*(self + 1064), v19, 0x8000100u);
      *(self + 1040) = 0;
      CFStringAppendCString(*(self + 1064), "\n", 0x8000100u);
    }

    else
    {
      v19[v18] = 10;
      ++*(self + 1040);
    }

LABEL_21:
    v20 = *(self + 1072);
    if (v20 < 1)
    {
LABEL_32:
      *(self + 1104) = 0;
      goto LABEL_33;
    }

    if (v20 >= 8)
    {
      v20 = 8;
    }

    v21 = *(&sIndentSpaceStrings + v20);
    v22 = strlen(v21);
    v10 = (self + 1040);
    v23 = *(self + 1040);
    if ((v23 + v22) > 1023)
    {
      if (v23 >= 1)
      {
        *(self + 16 + v23) = 0;
        CFStringAppendCString(*(self + 1064), (self + 16), 0x8000100u);
        *v10 = 0;
      }

      CFStringAppendCString(*(self + 1064), v21, 0x8000100u);
      goto LABEL_32;
    }

    v13 = v22;
    memcpy((self + v23 + 16), v21, v22);
LABEL_26:
    *v10 += v13;
    goto LABEL_32;
  }

LABEL_68:
  v45 = [a2 count];
  v46 = *(self + 8);
  if (*(v46 + 80) == 2)
  {
    v47 = *(v46 + 96);
    v48 = v47 < v45;
    if (v47 < v45)
    {
      v49 = v47 + 1;
    }

    else
    {
      v49 = v45;
    }
  }

  else
  {
    v48 = 0;
    v49 = v45;
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __60__BSDescriptionStream__appendDictionary_withName_itemBlock___block_invoke;
  v50[3] = &unk_1E72CBC90;
  v50[4] = self;
  v50[5] = a2;
  v51 = v48;
  v50[6] = name;
  v50[7] = v49;
  [(BSDescriptionStream *)self _appendSectionWithTotalItemCount:v45 truncatedItemCount:v49 openDelimiter:@"{" closeDelimiter:@"}" block:v50];
  if (dictionary)
  {
    *(self + 1104) = 1;
    BSDescribeTruncationCommit(self);
  }
}

void __60__BSDescriptionStream__appendDictionary_withName_itemBlock___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && *(*(v2 + 8) + 88) == 2)
  {
    [*(a1 + 40) allKeys];
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v3 = v30 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v4)
    {
      v5 = *v31;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v31 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ((objc_opt_respondsToSelector() & 1) == 0)
          {

            v10 = v3;
            goto LABEL_15;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v10 = [v3 sortedArrayUsingSelector:sel_compare_];
LABEL_15:
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v12)
    {
      v19 = 0;
      v13 = *v27;
LABEL_17:
      v14 = 0;
      v15 = v19;
      v19 += v12;
      while (1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * v14);
        if (*(a1 + 64) == 1 && v15 >= *(a1 + 56) - 1)
        {
          break;
        }

        v17 = *(a1 + 32);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __60__BSDescriptionStream__appendDictionary_withName_itemBlock___block_invoke_2;
        v24[3] = &unk_1E72CBDA8;
        v24[4] = v16;
        v25 = *(a1 + 40);
        BSDescribeAppendItem(v17, v24);
        ++v15;
        if (v12 == ++v14)
        {
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }
  }

  else
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__BSDescriptionStream__appendDictionary_withName_itemBlock___block_invoke_3;
    v21[3] = &unk_1E72CBC68;
    v22 = *(a1 + 64);
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v21[6] = v23;
    v21[7] = v7;
    v21[4] = v2;
    v21[5] = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v21];
    _Block_object_dispose(v23, 8);
  }

  if (*(a1 + 64) == 1)
  {
    v18 = *(a1 + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__BSDescriptionStream__appendDictionary_withName_itemBlock___block_invoke_5;
    v20[3] = &unk_1E72CADE8;
    v20[4] = v18;
    BSDescribeAppendItem(v18, v20);
  }
}

void __60__BSDescriptionStream__appendDictionary_withName_itemBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) objectForKey:v1];
  (*(v2 + 16))(v2, v1);
}

void __60__BSDescriptionStream__appendDictionary_withName_itemBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 24);
  if (*(a1 + 64) == 1 && v5 >= *(a1 + 56) - 1)
  {
    *a4 = 1;
  }

  else
  {
    *(v4 + 24) = v5 + 1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__BSDescriptionStream__appendDictionary_withName_itemBlock___block_invoke_4;
    v8[3] = &unk_1E72CBDA8;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8[5] = a3;
    v8[6] = v7;
    v8[4] = a2;
    BSDescribeAppendItem(v6, v8);
  }
}

CFIndex __60__BSDescriptionStream__appendDictionary_withName_itemBlock___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [@"…" length];
  v3 = *(v1 + 1040);
  if (3 * v2 + v3 <= 1023)
  {
    usedBufLen = 0;
    v9.location = 0;
    v9.length = v2;
    result = CFStringGetBytes(@"…", v9, 0x8000100u, 0, 0, (v1 + v3 + 16), 1024 - v3, &usedBufLen);
    v5 = *(v1 + 1040) + usedBufLen;
LABEL_7:
    *(v1 + 1040) = v5;
    return result;
  }

  if (v3 >= 1)
  {
    *(v1 + 16 + v3) = 0;
    CFStringAppendCString(*(v1 + 1064), (v1 + 16), 0x8000100u);
    *(v1 + 1040) = 0;
  }

  if (v2 <= 341)
  {
    usedBufLen = 0;
    v10.location = 0;
    v10.length = v2;
    result = CFStringGetBytes(@"…", v10, 0x8000100u, 0, 0, (v1 + 16), 1024, &usedBufLen);
    v5 = usedBufLen;
    goto LABEL_7;
  }

  v6 = *(v1 + 1064);

  return [v6 appendString:@"…"];
}

- (void)appendIntegerSet:(id)set withName:(id)name format:(int64_t)format
{
  if (!name)
  {
    goto LABEL_67;
  }

  v9 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase <= 2)
  {
    if (emitPhase != 1)
    {
      if (emitPhase != 2)
      {
        goto LABEL_32;
      }

      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      appendBuffer = self->_appendBuffer;
      if (appendBufferCount <= 1022)
      {
        appendBuffer[appendBufferCount] = 32;
        v14 = 1;
        goto LABEL_25;
      }

      appendBuffer[appendBufferCount] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      p_string = &self->_string;
      v18 = " ";
LABEL_30:
      *p_appendBufferCount = 0;
      CFStringAppendCString(*p_string, v18, 0x8000100u);
      goto LABEL_31;
    }

    p_appendBufferCount = &self->_appendBufferCount;
    v15 = self->_appendBufferCount;
    v16 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v15 <= 1021)
      {
        *&v16[v15] = 8251;
        v14 = 2;
        goto LABEL_25;
      }

      v16[v15] = 0;
      CFStringAppendCString(self->_string, v16, 0x8000100u);
      p_string = &self->_string;
      v18 = "; ";
      goto LABEL_30;
    }

    if (v15 > 1022)
    {
      v16[v15] = 0;
      CFStringAppendCString(self->_string, v16, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v16[v15] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 3)
  {
LABEL_17:
    v19 = self->_appendBufferCount;
    v20 = self->_appendBuffer;
    if (v19 > 1022)
    {
      v20[v19] = 0;
      CFStringAppendCString(self->_string, v20, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      v20[v19] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 4)
  {
LABEL_20:
    indentLevel = self->_indentLevel;
    if (indentLevel < 1)
    {
LABEL_31:
      self->_emitPhase = 0;
      goto LABEL_32;
    }

    if (indentLevel >= 8)
    {
      indentLevel = 8;
    }

    v22 = *(&sIndentSpaceStrings + indentLevel);
    v23 = strlen(v22);
    p_appendBufferCount = &self->_appendBufferCount;
    v24 = self->_appendBufferCount;
    if ((v24 + v23) > 1023)
    {
      if (v24 >= 1)
      {
        self->_appendBuffer[v24] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v22, 0x8000100u);
      goto LABEL_31;
    }

    v14 = v23;
    memcpy(&self->_appendBuffer[v24], v22, v23);
LABEL_25:
    *p_appendBufferCount += v14;
    goto LABEL_31;
  }

LABEL_32:
  nameTruncation = v9->_nameTruncation;
  maximumNameLengthBeforeTruncation = v9->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    maximumNameLengthBeforeTruncation = 0;
    v28 = 1096;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v28 = 1088;
  }

  *(&self->super.isa + v28) = maximumNameLengthBeforeTruncation;
  v29 = [name length];
  v30 = self->_appendBufferCount;
  if (v30 + 3 * v29 <= 1023)
  {
    usedBufLen = 0;
    v49.location = 0;
    v49.length = v29;
    CFStringGetBytes(name, v49, 0x8000100u, 0, 0, &self->_appendBuffer[v30], 1024 - v30, &usedBufLen);
    v31 = self->_appendBufferCount + usedBufLen;
LABEL_44:
    self->_appendBufferCount = v31;
    goto LABEL_46;
  }

  if (v30 >= 1)
  {
    self->_appendBuffer[v30] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
  }

  if (v29 <= 341)
  {
    usedBufLen = 0;
    v50.location = 0;
    v50.length = v29;
    CFStringGetBytes(name, v50, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v31 = usedBufLen;
    goto LABEL_44;
  }

  [(NSMutableString *)self->_string appendString:name];
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v32 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v32 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v33 = *(&self->_style->super.isa + *v32);
  if (v33 < 2)
  {
    v37 = self->_appendBufferCount;
    v38 = self->_appendBuffer;
    if (v37 <= 1021)
    {
      *&v38[v37] = 8250;
      v36 = 2;
      goto LABEL_58;
    }

    v38[v37] = 0;
    CFStringAppendCString(self->_string, v38, 0x8000100u);
    v41 = ": ";
  }

  else if (v33 == 2)
  {
    v39 = self->_appendBufferCount;
    v40 = &self->_appendBuffer[v39];
    if (v39 <= 1020)
    {
      v40[2] = 32;
      *v40 = 15648;
      v36 = 3;
      goto LABEL_58;
    }

    *v40 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v41 = " = ";
  }

  else
  {
    if (v33 != 3)
    {
      goto LABEL_63;
    }

    v34 = self->_appendBufferCount;
    v35 = self->_appendBuffer;
    if (v34 <= 1019)
    {
      *&v35[v34] = 540945696;
      v36 = 4;
LABEL_58:
      self->_appendBufferCount += v36;
      goto LABEL_63;
    }

    v35[v34] = 0;
    CFStringAppendCString(self->_string, v35, 0x8000100u);
    v41 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v41, 0x8000100u);
LABEL_63:
  v42 = 0;
  valueTruncation = v9->_valueTruncation;
  v44 = 1096;
  if (valueTruncation >= 2)
  {
    maximumValueLengthBeforeTruncation = v9->_maximumValueLengthBeforeTruncation;
    if (maximumValueLengthBeforeTruncation >= 1)
    {
      self->_lineTruncation = valueTruncation;
      self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
      v44 = 1088;
      v42 = maximumValueLengthBeforeTruncation;
    }
  }

  *(&self->super.isa + v44) = v42;

LABEL_67:
  v46 = [set count];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __56__BSDescriptionStream_appendIntegerSet_withName_format___block_invoke;
  v47[3] = &unk_1E72CB8A8;
  v47[5] = set;
  v47[6] = format;
  v47[4] = self;
  if (self)
  {
    [(BSDescriptionStream *)self _appendSectionWithTotalItemCount:v46 truncatedItemCount:v46 openDelimiter:@"(") closeDelimiter:CFSTR(")" block:v47];
  }

  if (name)
  {
    self->_emitPhase = 1;
    BSDescribeTruncationCommit(self);
  }
}

void __56__BSDescriptionStream_appendIntegerSet_withName_format___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__BSDescriptionStream_appendIntegerSet_withName_format___block_invoke_2;
  v5[3] = &unk_1E72CBCE0;
  v2 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v5[5] = v2;
  v3 = MEMORY[0x193AE5AC0](v5);
  v4 = *(a1 + 32);
  if (v4 && *(*(v4 + 8) + 88) == 2)
  {
    [*(a1 + 40) enumerateSortedWithBlock:v3];
  }

  else
  {
    [*(a1 + 40) enumerateWithBlock:v3];
  }
}

void __56__BSDescriptionStream_appendIntegerSet_withName_format___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__BSDescriptionStream_appendIntegerSet_withName_format___block_invoke_3;
  v3[3] = &unk_1E72CBCB8;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v2;
  v6 = a2;
  BSDescribeAppendItem(v4, v3);
}

uint64_t __56__BSDescriptionStream_appendIntegerSet_withName_format___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 1040);
  if (v3 >= 1)
  {
    *(v2 + 16 + v3) = 0;
    CFStringAppendCString(*(v2 + 1064), (v2 + 16), 0x8000100u);
    *(v2 + 1040) = 0;
    v2 = a1[4];
  }

  if (a1[5] == 1)
  {
    v4 = @"%tX";
  }

  else
  {
    v4 = @"%td";
  }

  return [*(v2 + 1064) appendFormat:v4, a1[6]];
}

- (void)appendIntegerMap:(id)map withName:(id)name keyFormat:(int64_t)format valueBlock:(id)block
{
  if (!name)
  {
    goto LABEL_67;
  }

  v11 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase <= 2)
  {
    if (emitPhase != 1)
    {
      if (emitPhase != 2)
      {
        goto LABEL_32;
      }

      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      appendBuffer = self->_appendBuffer;
      if (appendBufferCount <= 1022)
      {
        appendBuffer[appendBufferCount] = 32;
        v16 = 1;
        goto LABEL_25;
      }

      appendBuffer[appendBufferCount] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      p_string = &self->_string;
      v20 = " ";
LABEL_30:
      *p_appendBufferCount = 0;
      CFStringAppendCString(*p_string, v20, 0x8000100u);
      goto LABEL_31;
    }

    p_appendBufferCount = &self->_appendBufferCount;
    v17 = self->_appendBufferCount;
    v18 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v17 <= 1021)
      {
        *&v18[v17] = 8251;
        v16 = 2;
        goto LABEL_25;
      }

      v18[v17] = 0;
      CFStringAppendCString(self->_string, v18, 0x8000100u);
      p_string = &self->_string;
      v20 = "; ";
      goto LABEL_30;
    }

    if (v17 > 1022)
    {
      v18[v17] = 0;
      CFStringAppendCString(self->_string, v18, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v18[v17] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 3)
  {
LABEL_17:
    v21 = self->_appendBufferCount;
    v22 = self->_appendBuffer;
    if (v21 > 1022)
    {
      v22[v21] = 0;
      CFStringAppendCString(self->_string, v22, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      v22[v21] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 4)
  {
LABEL_20:
    indentLevel = self->_indentLevel;
    if (indentLevel < 1)
    {
LABEL_31:
      self->_emitPhase = 0;
      goto LABEL_32;
    }

    if (indentLevel >= 8)
    {
      indentLevel = 8;
    }

    v24 = *(&sIndentSpaceStrings + indentLevel);
    v25 = strlen(v24);
    p_appendBufferCount = &self->_appendBufferCount;
    v26 = self->_appendBufferCount;
    if ((v26 + v25) > 1023)
    {
      if (v26 >= 1)
      {
        self->_appendBuffer[v26] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v24, 0x8000100u);
      goto LABEL_31;
    }

    v16 = v25;
    memcpy(&self->_appendBuffer[v26], v24, v25);
LABEL_25:
    *p_appendBufferCount += v16;
    goto LABEL_31;
  }

LABEL_32:
  nameTruncation = v11->_nameTruncation;
  maximumNameLengthBeforeTruncation = v11->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    maximumNameLengthBeforeTruncation = 0;
    v30 = 1096;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v30 = 1088;
  }

  *(&self->super.isa + v30) = maximumNameLengthBeforeTruncation;
  v31 = [name length];
  v32 = self->_appendBufferCount;
  if (v32 + 3 * v31 <= 1023)
  {
    usedBufLen = 0;
    v51.location = 0;
    v51.length = v31;
    CFStringGetBytes(name, v51, 0x8000100u, 0, 0, &self->_appendBuffer[v32], 1024 - v32, &usedBufLen);
    v33 = self->_appendBufferCount + usedBufLen;
LABEL_44:
    self->_appendBufferCount = v33;
    goto LABEL_46;
  }

  if (v32 >= 1)
  {
    self->_appendBuffer[v32] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
  }

  if (v31 <= 341)
  {
    usedBufLen = 0;
    v52.location = 0;
    v52.length = v31;
    CFStringGetBytes(name, v52, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v33 = usedBufLen;
    goto LABEL_44;
  }

  [(NSMutableString *)self->_string appendString:name];
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v34 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v34 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v35 = *(&self->_style->super.isa + *v34);
  if (v35 < 2)
  {
    v39 = self->_appendBufferCount;
    v40 = self->_appendBuffer;
    if (v39 <= 1021)
    {
      *&v40[v39] = 8250;
      v38 = 2;
      goto LABEL_58;
    }

    v40[v39] = 0;
    CFStringAppendCString(self->_string, v40, 0x8000100u);
    v43 = ": ";
  }

  else if (v35 == 2)
  {
    v41 = self->_appendBufferCount;
    v42 = &self->_appendBuffer[v41];
    if (v41 <= 1020)
    {
      v42[2] = 32;
      *v42 = 15648;
      v38 = 3;
      goto LABEL_58;
    }

    *v42 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v43 = " = ";
  }

  else
  {
    if (v35 != 3)
    {
      goto LABEL_63;
    }

    v36 = self->_appendBufferCount;
    v37 = self->_appendBuffer;
    if (v36 <= 1019)
    {
      *&v37[v36] = 540945696;
      v38 = 4;
LABEL_58:
      self->_appendBufferCount += v38;
      goto LABEL_63;
    }

    v37[v36] = 0;
    CFStringAppendCString(self->_string, v37, 0x8000100u);
    v43 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v43, 0x8000100u);
LABEL_63:
  v44 = 0;
  valueTruncation = v11->_valueTruncation;
  v46 = 1096;
  if (valueTruncation >= 2)
  {
    maximumValueLengthBeforeTruncation = v11->_maximumValueLengthBeforeTruncation;
    if (maximumValueLengthBeforeTruncation >= 1)
    {
      self->_lineTruncation = valueTruncation;
      self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
      v46 = 1088;
      v44 = maximumValueLengthBeforeTruncation;
    }
  }

  *(&self->super.isa + v46) = v44;

LABEL_67:
  v48 = [map count];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __70__BSDescriptionStream_appendIntegerMap_withName_keyFormat_valueBlock___block_invoke;
  v49[3] = &unk_1E72CBD80;
  v49[6] = block;
  v49[7] = format;
  v49[4] = self;
  v49[5] = map;
  if (self)
  {
    [(BSDescriptionStream *)self _appendSectionWithTotalItemCount:v48 truncatedItemCount:v48 openDelimiter:@"{" closeDelimiter:@"}" block:v49];
  }

  if (name)
  {
    self->_emitPhase = 1;
    BSDescribeTruncationCommit(self);
  }
}

void __70__BSDescriptionStream_appendIntegerMap_withName_keyFormat_valueBlock___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__BSDescriptionStream_appendIntegerMap_withName_keyFormat_valueBlock___block_invoke_2;
  v9[3] = &unk_1E72CBD30;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v9[5] = *(a1 + 48);
  v9[6] = v3;
  v9[4] = v2;
  v4 = MEMORY[0x193AE5AC0](v9);
  v5 = *(a1 + 32);
  if (v5 && *(*(v5 + 8) + 88) == 2)
  {
    v6 = [*(a1 + 40) allKeys];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__BSDescriptionStream_appendIntegerMap_withName_keyFormat_valueBlock___block_invoke_4;
    v7[3] = &unk_1E72CBD58;
    v7[4] = *(a1 + 40);
    v8 = v4;
    [v6 enumerateSortedWithBlock:v7];
  }

  else
  {
    [*(a1 + 40) enumerateWithBlock:v4];
  }
}

void __70__BSDescriptionStream_appendIntegerMap_withName_keyFormat_valueBlock___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__BSDescriptionStream_appendIntegerMap_withName_keyFormat_valueBlock___block_invoke_3;
  v5[3] = &unk_1E72CBD08;
  v3 = a1[4];
  v4 = a1[5];
  v5[7] = a1[6];
  v5[8] = a2;
  v5[5] = a3;
  v5[6] = v4;
  v5[4] = v3;
  BSDescribeAppendItem(v3, v5);
}

uint64_t __70__BSDescriptionStream_appendIntegerMap_withName_keyFormat_valueBlock___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 1040);
  if (v3 >= 1)
  {
    *(v2 + 16 + v3) = 0;
    CFStringAppendCString(*(v2 + 1064), (v2 + 16), 0x8000100u);
    *(v2 + 1040) = 0;
    v2 = a1[4];
  }

  if (a1[7] == 1)
  {
    v4 = @"%tX: ";
  }

  else
  {
    v4 = @"%td: ";
  }

  [*(v2 + 1064) appendFormat:v4, a1[8]];
  v5 = *(a1[6] + 16);

  return v5();
}

void __70__BSDescriptionStream_appendIntegerMap_withName_keyFormat_valueBlock___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  (*(*(a1 + 40) + 16))();
}

- (void)appendCustomFormatForValue:(id)value withCustomFormatForName:(id)name
{
  forceSuccinct = self->_forceSuccinct;
  self->_forceSuccinct = 1;
  emitPhase = self->_emitPhase;
  if (emitPhase <= 2)
  {
    if (emitPhase != 1)
    {
      if (emitPhase != 2)
      {
        goto LABEL_31;
      }

      appendBufferCount = self->_appendBufferCount;
      appendBuffer = self->_appendBuffer;
      if (appendBufferCount <= 1022)
      {
        appendBuffer[appendBufferCount] = 32;
        v11 = self->_appendBufferCount + 1;
LABEL_24:
        self->_appendBufferCount = v11;
        goto LABEL_30;
      }

      appendBuffer[appendBufferCount] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      string = self->_string;
      v15 = " ";
      goto LABEL_29;
    }

    v12 = self->_appendBufferCount;
    v13 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v12 <= 1021)
      {
        *&v13[v12] = 8251;
        v11 = self->_appendBufferCount + 2;
        goto LABEL_24;
      }

      v13[v12] = 0;
      CFStringAppendCString(self->_string, v13, 0x8000100u);
      self->_appendBufferCount = 0;
      string = self->_string;
      v15 = "; ";
LABEL_29:
      CFStringAppendCString(string, v15, 0x8000100u);
      goto LABEL_30;
    }

    if (v12 > 1022)
    {
      v13[v12] = 0;
      CFStringAppendCString(self->_string, v13, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v13[v12] = 59;
      ++self->_appendBufferCount;
    }

    goto LABEL_16;
  }

  if (emitPhase == 3)
  {
LABEL_16:
    v16 = self->_appendBufferCount;
    v17 = self->_appendBuffer;
    if (v16 > 1022)
    {
      v17[v16] = 0;
      CFStringAppendCString(self->_string, v17, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      v17[v16] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_19;
  }

  if (emitPhase == 4)
  {
LABEL_19:
    indentLevel = self->_indentLevel;
    if (indentLevel < 1)
    {
LABEL_30:
      self->_emitPhase = 0;
      goto LABEL_31;
    }

    if (indentLevel >= 8)
    {
      indentLevel = 8;
    }

    v19 = *(&sIndentSpaceStrings + indentLevel);
    v20 = strlen(v19);
    v21 = self->_appendBufferCount;
    if ((v21 + v20) <= 1023)
    {
      v22 = v20;
      memcpy(&self->_appendBuffer[v21], v19, v20);
      v11 = self->_appendBufferCount + v22;
      goto LABEL_24;
    }

    if (v21 >= 1)
    {
      self->_appendBuffer[v21] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    string = self->_string;
    v15 = v19;
    goto LABEL_29;
  }

LABEL_31:
  (*(name + 2))(name, self);
  if (self->_proemNestCount <= 0)
  {
    v23 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v23 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v24 = *(&self->_style->super.isa + *v23);
  if (v24 < 2)
  {
    v28 = self->_appendBufferCount;
    v29 = self->_appendBuffer;
    if (v28 <= 1021)
    {
      *&v29[v28] = 8250;
      v27 = self->_appendBufferCount + 2;
      goto LABEL_43;
    }

    v29[v28] = 0;
    CFStringAppendCString(self->_string, v29, 0x8000100u);
    self->_appendBufferCount = 0;
    v32 = self->_string;
    v33 = ": ";
  }

  else if (v24 == 2)
  {
    v30 = self->_appendBufferCount;
    v31 = &self->_appendBuffer[v30];
    if (v30 <= 1020)
    {
      v31[2] = 32;
      *v31 = 15648;
      v27 = self->_appendBufferCount + 3;
      goto LABEL_43;
    }

    *v31 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
    v32 = self->_string;
    v33 = " = ";
  }

  else
  {
    if (v24 != 3)
    {
      goto LABEL_48;
    }

    v25 = self->_appendBufferCount;
    v26 = self->_appendBuffer;
    if (v25 <= 1019)
    {
      *&v26[v25] = 540945696;
      v27 = self->_appendBufferCount + 4;
LABEL_43:
      self->_appendBufferCount = v27;
      goto LABEL_48;
    }

    v26[v25] = 0;
    CFStringAppendCString(self->_string, v26, 0x8000100u);
    self->_appendBufferCount = 0;
    v32 = self->_string;
    v33 = " -> ";
  }

  CFStringAppendCString(v32, v33, 0x8000100u);
LABEL_48:
  self->_forceSuccinct = forceSuccinct;
  (*(value + 2))(value, self);
  self->_emitPhase = 1;

  BSDescribeTruncationCommit(self);
}

- (void)appendCustomFormatWithNameFromObjectDescription:(id)description block:(id)block
{
  v7 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_31;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v20 = *(&sIndentSpaceStrings + indentLevel);
      v21 = strlen(v20);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v21) <= 1023)
      {
        v12 = v21;
        memcpy(&self->_appendBuffer[appendBufferCount], v20, v21);
        goto LABEL_25;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v20, 0x8000100u);
LABEL_31:
      self->_emitPhase = 0;
      if (!description)
      {
        goto LABEL_131;
      }

      goto LABEL_32;
    }

LABEL_17:
    v17 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v17 > 1022)
    {
      appendBuffer[v17] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v17] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v13 = self->_appendBufferCount;
    v14 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v13 <= 1021)
      {
        *&v14[v13] = 8251;
        v12 = 2;
        goto LABEL_25;
      }

      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      p_string = &self->_string;
      v16 = "; ";
      goto LABEL_30;
    }

    if (v13 > 1022)
    {
      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v14[v13] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v10 = self->_appendBufferCount;
    v11 = self->_appendBuffer;
    if (v10 <= 1022)
    {
      v11[v10] = 32;
      v12 = 1;
LABEL_25:
      *p_appendBufferCount += v12;
      goto LABEL_31;
    }

    v11[v10] = 0;
    CFStringAppendCString(self->_string, v11, 0x8000100u);
    p_string = &self->_string;
    v16 = " ";
LABEL_30:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v16, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!description)
  {
    goto LABEL_131;
  }

LABEL_32:
  forceSuccinct = self->_forceSuccinct;
  self->_forceSuccinct = 1;
  nameTruncation = v7->_nameTruncation;
  maximumNameLengthBeforeTruncation = v7->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  if (!_NSIsNSString())
  {
    if (_NSIsNSNumber())
    {
      descriptionCopy = description;
      v31 = *[descriptionCopy objCType];
      if (v31 <= 0x62)
      {
        if (v31 > 75)
        {
          switch(v31)
          {
            case 'L':
              v48 = self->_appendBufferCount;
              if (v48 >= 1)
              {
                self->_appendBuffer[v48] = 0;
                CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                self->_appendBufferCount = 0;
              }

              string = self->_string;
              unsignedLongValue = [descriptionCopy unsignedLongValue];
              v35 = @"%lu";
              goto LABEL_112;
            case 'Q':
              v50 = self->_appendBufferCount;
              if (v50 >= 1)
              {
                self->_appendBuffer[v50] = 0;
                CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                self->_appendBufferCount = 0;
              }

              string = self->_string;
              unsignedLongValue = [descriptionCopy unsignedLongLongValue];
              v35 = @"%llu";
              goto LABEL_112;
            case 'S':
              v42 = self->_appendBufferCount;
              if (v42 >= 1)
              {
                self->_appendBuffer[v42] = 0;
                CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                self->_appendBufferCount = 0;
              }

              string = self->_string;
              unsignedLongValue = [descriptionCopy unsignedShortValue];
              v35 = @"%hu";
              goto LABEL_112;
          }

          goto LABEL_138;
        }

        if (v31 != 66)
        {
          if (v31 == 67)
          {
            v49 = self->_appendBufferCount;
            if (v49 >= 1)
            {
              self->_appendBuffer[v49] = 0;
              CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
              self->_appendBufferCount = 0;
            }

            string = self->_string;
            unsignedLongValue = [descriptionCopy unsignedCharValue];
          }

          else
          {
            if (v31 != 73)
            {
              goto LABEL_138;
            }

            v36 = self->_appendBufferCount;
            if (v36 >= 1)
            {
              self->_appendBuffer[v36] = 0;
              CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
              self->_appendBufferCount = 0;
            }

            string = self->_string;
            unsignedLongValue = [descriptionCopy unsignedIntValue];
          }

          v35 = @"%u";
LABEL_112:
          [(NSMutableString *)string appendFormat:v35, unsignedLongValue];
          goto LABEL_113;
        }
      }

      else
      {
        if (v31 > 104)
        {
          if (v31 > 112)
          {
            if (v31 == 113)
            {
              v46 = self->_appendBufferCount;
              if (v46 >= 1)
              {
                self->_appendBuffer[v46] = 0;
                CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                self->_appendBufferCount = 0;
              }

              string = self->_string;
              unsignedLongValue = [descriptionCopy longLongValue];
              v35 = @"%lld";
              goto LABEL_112;
            }

            if (v31 == 115)
            {
              v43 = self->_appendBufferCount;
              if (v43 >= 1)
              {
                self->_appendBuffer[v43] = 0;
                CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                self->_appendBufferCount = 0;
              }

              string = self->_string;
              unsignedLongValue = [descriptionCopy shortValue];
              v35 = @"%hi";
              goto LABEL_112;
            }

            goto LABEL_138;
          }

          if (v31 != 105)
          {
            if (v31 == 108)
            {
              v32 = self->_appendBufferCount;
              if (v32 >= 1)
              {
                self->_appendBuffer[v32] = 0;
                CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                self->_appendBufferCount = 0;
              }

              string = self->_string;
              unsignedLongValue = [descriptionCopy longValue];
              v35 = @"%ld";
              goto LABEL_112;
            }

LABEL_138:
            v67 = self->_appendBufferCount;
            if (v67 >= 1)
            {
              self->_appendBuffer[v67] = 0;
              CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
              self->_appendBufferCount = 0;
            }

            -[NSMutableString appendFormat:](self->_string, "appendFormat:", @"<***unknown type:%s>", [descriptionCopy objCType]);
            goto LABEL_113;
          }

          v45 = self->_appendBufferCount;
          if (v45 >= 1)
          {
            self->_appendBuffer[v45] = 0;
            CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
            self->_appendBufferCount = 0;
          }

          string = self->_string;
          unsignedLongValue = [descriptionCopy intValue];
          goto LABEL_94;
        }

        if (v31 != 99)
        {
          if (v31 == 100)
          {
            v47 = self->_appendBufferCount;
            if (v47 >= 1)
            {
              self->_appendBuffer[v47] = 0;
              CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
              self->_appendBufferCount = 0;
            }

            v38 = self->_string;
            [descriptionCopy doubleValue];
            v41 = @"%0.16g";
          }

          else
          {
            if (v31 != 102)
            {
              goto LABEL_138;
            }

            v37 = self->_appendBufferCount;
            if (v37 >= 1)
            {
              self->_appendBuffer[v37] = 0;
              CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
              self->_appendBufferCount = 0;
            }

            v38 = self->_string;
            [descriptionCopy floatValue];
            v40 = v39;
            v41 = @"%0.7g";
          }

          [(NSMutableString *)v38 appendFormat:v41, *&v40];
LABEL_113:

          goto LABEL_114;
        }
      }

      v44 = self->_appendBufferCount;
      if (v44 >= 1)
      {
        self->_appendBuffer[v44] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        self->_appendBufferCount = 0;
      }

      string = self->_string;
      unsignedLongValue = [descriptionCopy charValue];
LABEL_94:
      v35 = @"%d";
      goto LABEL_112;
    }

    if (objc_opt_respondsToSelector())
    {
      [description appendDescriptionToStream:self];
      goto LABEL_114;
    }

    if (objc_opt_respondsToSelector())
    {
      [description appendDescriptionToFormatter:self];
      goto LABEL_114;
    }

    if (_NSIsNSDictionary())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v75 = 3221225472;
      v76 = __BSDescribeAppendObjectDescription_block_invoke;
      v77 = &unk_1E72CBE40;
      selfCopy3 = self;
      [(BSDescriptionStream *)self _appendDictionary:description withName:0 itemBlock:&usedBufLen];
      goto LABEL_114;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BSDescriptionStream *)self appendIntegerSet:description withName:0 format:0];
      goto LABEL_114;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v75 = 3221225472;
      v76 = __BSDescribeAppendObjectDescription_block_invoke_2;
      v77 = &unk_1E72CBE68;
      selfCopy3 = self;
      [(BSDescriptionStream *)self appendIntegerMap:description withName:0 keyFormat:0 valueBlock:&usedBufLen];
      goto LABEL_114;
    }

    if (objc_opt_respondsToSelector())
    {
      usedBufLen = MEMORY[0x1E69E9820];
      v75 = 3221225472;
      v76 = __BSDescribeAppendObjectDescription_block_invoke_3;
      v77 = &unk_1E72CBE68;
      selfCopy3 = self;
      [(BSDescriptionStream *)self appendCollection:description withName:0 itemBlock:&usedBufLen];
      goto LABEL_114;
    }

    if (self->_forceSuccinct || (style = self->_style, style->_verbosity == 2))
    {
      if (objc_opt_respondsToSelector())
      {
        succinctDescription = [description succinctDescription];
        goto LABEL_154;
      }

      style = self->_style;
    }

    if (style->_debugging == 2)
    {
      [description debugDescription];
    }

    else
    {
      [description description];
    }
    succinctDescription = ;
LABEL_154:
    v70 = succinctDescription;
    v71 = [(__CFString *)succinctDescription length];
    v72 = self->_appendBufferCount;
    if (v72 + 3 * v71 > 1023)
    {
      if (v72 >= 1)
      {
        self->_appendBuffer[v72] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        self->_appendBufferCount = 0;
      }

      if (v71 > 341)
      {
        [(NSMutableString *)self->_string appendString:v70];
        goto LABEL_162;
      }

      usedBufLen = 0;
      v82.location = 0;
      v82.length = v71;
      CFStringGetBytes(v70, v82, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
      v73 = usedBufLen;
    }

    else
    {
      usedBufLen = 0;
      v81.location = 0;
      v81.length = v71;
      CFStringGetBytes(v70, v81, 0x8000100u, 0, 0, &self->_appendBuffer[v72], 1024 - v72, &usedBufLen);
      v73 = self->_appendBufferCount + usedBufLen;
    }

    self->_appendBufferCount = v73;
LABEL_162:

    goto LABEL_114;
  }

  v27 = [description length];
  v28 = self->_appendBufferCount;
  if (v28 + 3 * v27 > 1023)
  {
    if (v28 >= 1)
    {
      self->_appendBuffer[v28] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v27 > 341)
    {
      [(NSMutableString *)self->_string appendString:description];
      goto LABEL_114;
    }

    usedBufLen = 0;
    v80.location = 0;
    v80.length = v27;
    CFStringGetBytes(description, v80, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v29 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v79.location = 0;
    v79.length = v27;
    CFStringGetBytes(description, v79, 0x8000100u, 0, 0, &self->_appendBuffer[v28], 1024 - v28, &usedBufLen);
    v29 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v29;
LABEL_114:
  BSDescribeTruncationCommit(self);
  self->_forceSuccinct = forceSuccinct;
  if (self->_proemNestCount <= 0)
  {
    v51 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v51 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v52 = *(&self->_style->super.isa + *v51);
  if (v52 < 2)
  {
    v53 = &self->_appendBufferCount;
    v57 = self->_appendBufferCount;
    v58 = self->_appendBuffer;
    if (v57 <= 1021)
    {
      *&v58[v57] = 8250;
      v56 = 2;
      goto LABEL_126;
    }

    v58[v57] = 0;
    CFStringAppendCString(self->_string, v58, 0x8000100u);
    v61 = &self->_string;
    v62 = ": ";
  }

  else if (v52 == 2)
  {
    v53 = &self->_appendBufferCount;
    v59 = self->_appendBufferCount;
    v60 = &self->_appendBuffer[v59];
    if (v59 <= 1020)
    {
      v60[2] = 32;
      *v60 = 15648;
      v56 = 3;
      goto LABEL_126;
    }

    *v60 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v61 = &self->_string;
    v62 = " = ";
  }

  else
  {
    if (v52 != 3)
    {
      goto LABEL_131;
    }

    v53 = &self->_appendBufferCount;
    v54 = self->_appendBufferCount;
    v55 = self->_appendBuffer;
    if (v54 <= 1019)
    {
      *&v55[v54] = 540945696;
      v56 = 4;
LABEL_126:
      *v53 += v56;
      goto LABEL_131;
    }

    v55[v54] = 0;
    CFStringAppendCString(self->_string, v55, 0x8000100u);
    v61 = &self->_string;
    v62 = " -> ";
  }

  *v53 = 0;
  CFStringAppendCString(*v61, v62, 0x8000100u);
LABEL_131:
  valueTruncation = v7->_valueTruncation;
  maximumValueLengthBeforeTruncation = v7->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v66 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v66 = 1088;
  }

  *(&self->super.isa + v66) = maximumValueLengthBeforeTruncation;

  (*(block + 2))(block, self);
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);
}

- (void)appendCustomFormatWithName:(id)name block:(id)block
{
  v7 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_31;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v20 = *(&sIndentSpaceStrings + indentLevel);
      v21 = strlen(v20);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v21) <= 1023)
      {
        v12 = v21;
        memcpy(&self->_appendBuffer[appendBufferCount], v20, v21);
        goto LABEL_25;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v20, 0x8000100u);
LABEL_31:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_63;
      }

      goto LABEL_32;
    }

LABEL_17:
    v17 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v17 > 1022)
    {
      appendBuffer[v17] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v17] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v13 = self->_appendBufferCount;
    v14 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v13 <= 1021)
      {
        *&v14[v13] = 8251;
        v12 = 2;
        goto LABEL_25;
      }

      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      p_string = &self->_string;
      v16 = "; ";
      goto LABEL_30;
    }

    if (v13 > 1022)
    {
      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v14[v13] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v10 = self->_appendBufferCount;
    v11 = self->_appendBuffer;
    if (v10 <= 1022)
    {
      v11[v10] = 32;
      v12 = 1;
LABEL_25:
      *p_appendBufferCount += v12;
      goto LABEL_31;
    }

    v11[v10] = 0;
    CFStringAppendCString(self->_string, v11, 0x8000100u);
    p_string = &self->_string;
    v16 = " ";
LABEL_30:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v16, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!name)
  {
    goto LABEL_63;
  }

LABEL_32:
  nameTruncation = v7->_nameTruncation;
  maximumNameLengthBeforeTruncation = v7->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v26 = [name length];
  v27 = self->_appendBufferCount;
  if (v27 + 3 * v26 > 1023)
  {
    if (v27 >= 1)
    {
      self->_appendBuffer[v27] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v26 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_46;
    }

    usedBufLen = 0;
    v45.location = 0;
    v45.length = v26;
    CFStringGetBytes(name, v45, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v28 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v44.location = 0;
    v44.length = v26;
    CFStringGetBytes(name, v44, 0x8000100u, 0, 0, &self->_appendBuffer[v27], 1024 - v27, &usedBufLen);
    v28 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v28;
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v30 = *(&self->_style->super.isa + *v29);
  if (v30 < 2)
  {
    v34 = self->_appendBufferCount;
    v35 = self->_appendBuffer;
    if (v34 <= 1021)
    {
      *&v35[v34] = 8250;
      v33 = 2;
      goto LABEL_58;
    }

    v35[v34] = 0;
    CFStringAppendCString(self->_string, v35, 0x8000100u);
    v38 = ": ";
  }

  else if (v30 == 2)
  {
    v36 = self->_appendBufferCount;
    v37 = &self->_appendBuffer[v36];
    if (v36 <= 1020)
    {
      v37[2] = 32;
      *v37 = 15648;
      v33 = 3;
      goto LABEL_58;
    }

    *v37 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v38 = " = ";
  }

  else
  {
    if (v30 != 3)
    {
      goto LABEL_63;
    }

    v31 = self->_appendBufferCount;
    v32 = self->_appendBuffer;
    if (v31 <= 1019)
    {
      *&v32[v31] = 540945696;
      v33 = 4;
LABEL_58:
      self->_appendBufferCount += v33;
      goto LABEL_63;
    }

    v32[v31] = 0;
    CFStringAppendCString(self->_string, v32, 0x8000100u);
    v38 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v38, 0x8000100u);
LABEL_63:
  valueTruncation = v7->_valueTruncation;
  maximumValueLengthBeforeTruncation = v7->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v42 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v42 = 1088;
  }

  *(&self->super.isa + v42) = maximumValueLengthBeforeTruncation;

  (*(block + 2))(block, self);
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);
}

- (void)appendProem:(id)proem block:(id)block
{
  ++self->_proemNestCount;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__BSDescriptionStream_appendProem_block___block_invoke;
  v5[3] = &unk_1E72CBDA8;
  v5[4] = self;
  v5[5] = proem;
  v5[6] = block;
  [(BSDescriptionStream *)self _overrideCollectionLineBreaking:1 force:v5 block:?];
  --self->_proemNestCount;
}

void __41__BSDescriptionStream_appendProem_block___block_invoke(int8x16_t *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__BSDescriptionStream_appendProem_block___block_invoke_2;
  v2[3] = &unk_1E72CBDA8;
  v1 = a1[2];
  v3 = vextq_s8(v1, v1, 8uLL);
  v4 = a1[3].i64[0];
  if (v1.i64[0])
  {
    [(BSDescriptionStream *)v1.i64[0] _appendSectionWithTotalItemCount:-1 truncatedItemCount:@"<" openDelimiter:@">" closeDelimiter:v2 block:?];
  }
}

uint64_t __41__BSDescriptionStream_appendProem_block___block_invoke_2(void *a1)
{
  if (!a1[4])
  {
    goto LABEL_73;
  }

  v2 = a1[5];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *(v2 + 8);
  v6 = *(v2 + 1104);
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v7 = (v2 + 1040);
        v8 = *(v2 + 1040);
        v9 = (v2 + 16);
        if (v8 <= 1022)
        {
          v9[v8] = 32;
          v10 = 1;
LABEL_26:
          *v7 += v10;
          goto LABEL_32;
        }

        v9[v8] = 0;
        CFStringAppendCString(*(v2 + 1064), v9, 0x8000100u);
        v13 = (v2 + 1064);
        v14 = " ";
LABEL_31:
        *v7 = 0;
        CFStringAppendCString(*v13, v14, 0x8000100u);
        goto LABEL_32;
      }

LABEL_9:
      if (!v4)
      {
        goto LABEL_64;
      }

      goto LABEL_33;
    }

    v7 = (v2 + 1040);
    v11 = *(v2 + 1040);
    v12 = (v2 + 16);
    if (*(*(v2 + 8) + 24) != 3)
    {
      if (v11 <= 1021)
      {
        *&v12[v11] = 8251;
        v10 = 2;
        goto LABEL_26;
      }

      v12[v11] = 0;
      CFStringAppendCString(*(v2 + 1064), v12, 0x8000100u);
      v13 = (v2 + 1064);
      v14 = "; ";
      goto LABEL_31;
    }

    if (v11 > 1022)
    {
      v12[v11] = 0;
      CFStringAppendCString(*(v2 + 1064), v12, 0x8000100u);
      *(v2 + 1040) = 0;
      CFStringAppendCString(*(v2 + 1064), ";", 0x8000100u);
    }

    else
    {
      v12[v11] = 59;
      ++*v7;
    }

    goto LABEL_18;
  }

  if (v6 == 3)
  {
LABEL_18:
    v15 = *(v2 + 1040);
    v16 = (v2 + 16);
    if (v15 > 1022)
    {
      v16[v15] = 0;
      CFStringAppendCString(*(v2 + 1064), v16, 0x8000100u);
      *(v2 + 1040) = 0;
      CFStringAppendCString(*(v2 + 1064), "\n", 0x8000100u);
    }

    else
    {
      v16[v15] = 10;
      ++*(v2 + 1040);
    }

    goto LABEL_21;
  }

  if (v6 != 4)
  {
    goto LABEL_9;
  }

LABEL_21:
  v17 = *(v2 + 1072);
  if (v17 < 1)
  {
    goto LABEL_32;
  }

  if (v17 >= 8)
  {
    v17 = 8;
  }

  v18 = *(&sIndentSpaceStrings + v17);
  v19 = strlen(v18);
  v7 = (v2 + 1040);
  v20 = *(v2 + 1040);
  if ((v20 + v19) <= 1023)
  {
    v10 = v19;
    memcpy((v2 + v20 + 16), v18, v19);
    goto LABEL_26;
  }

  if (v20 >= 1)
  {
    *(v2 + 16 + v20) = 0;
    CFStringAppendCString(*(v2 + 1064), (v2 + 16), 0x8000100u);
    *v7 = 0;
  }

  CFStringAppendCString(*(v2 + 1064), v18, 0x8000100u);
LABEL_32:
  *(v2 + 1104) = 0;
  if (!v4)
  {
    goto LABEL_64;
  }

LABEL_33:
  v21 = v5[6];
  v22 = v5[7];
  if (v21 < 2 || v22 < 1)
  {
    *(v2 + 1096) = 0;
  }

  else
  {
    *(v2 + 1096) = v21;
    *(v2 + 1080) = *(v2 + 1040) + [*(v2 + 1064) length];
    *(v2 + 1088) = v22;
  }

  v24 = [(__CFString *)v4 length];
  v25 = *(v2 + 1040);
  if (v25 + 3 * v24 > 1023)
  {
    if (v25 >= 1)
    {
      *(v2 + 16 + v25) = 0;
      CFStringAppendCString(*(v2 + 1064), (v2 + 16), 0x8000100u);
      *(v2 + 1040) = 0;
    }

    if (v24 > 341)
    {
      [*(v2 + 1064) appendString:v4];
      goto LABEL_47;
    }

    usedBufLen = 0;
    v48.location = 0;
    v48.length = v24;
    CFStringGetBytes(v4, v48, 0x8000100u, 0, 0, (v2 + 16), 1024, &usedBufLen);
    v26 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v47.location = 0;
    v47.length = v24;
    CFStringGetBytes(v4, v47, 0x8000100u, 0, 0, (v2 + v25 + 16), 1024 - v25, &usedBufLen);
    v26 = *(v2 + 1040) + usedBufLen;
  }

  *(v2 + 1040) = v26;
LABEL_47:
  BSDescribeTruncationCommit(v2);
  if (*(v2 + 1048) <= 0)
  {
    v27 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v27 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v28 = *(*(v2 + 8) + *v27);
  if (v28 < 2)
  {
    v32 = *(v2 + 1040);
    v33 = (v2 + 16);
    if (v32 <= 1021)
    {
      *&v33[v32] = 8250;
      v31 = 2;
      goto LABEL_59;
    }

    v33[v32] = 0;
    CFStringAppendCString(*(v2 + 1064), v33, 0x8000100u);
    v36 = ": ";
LABEL_63:
    *(v2 + 1040) = 0;
    CFStringAppendCString(*(v2 + 1064), v36, 0x8000100u);
    goto LABEL_64;
  }

  if (v28 == 2)
  {
    v34 = *(v2 + 1040);
    v35 = v2 + 16 + v34;
    if (v34 <= 1020)
    {
      *(v35 + 2) = 32;
      *v35 = 15648;
      v31 = 3;
      goto LABEL_59;
    }

    *v35 = 0;
    CFStringAppendCString(*(v2 + 1064), (v2 + 16), 0x8000100u);
    v36 = " = ";
    goto LABEL_63;
  }

  if (v28 == 3)
  {
    v29 = *(v2 + 1040);
    v30 = (v2 + 16);
    if (v29 <= 1019)
    {
      *&v30[v29] = 540945696;
      v31 = 4;
LABEL_59:
      *(v2 + 1040) += v31;
      goto LABEL_64;
    }

    v30[v29] = 0;
    CFStringAppendCString(*(v2 + 1064), v30, 0x8000100u);
    v36 = " -> ";
    goto LABEL_63;
  }

LABEL_64:
  v37 = v5[8];
  v38 = v5[9];
  if (v37 <= 1 || v38 < 1)
  {
    v38 = 0;
    v40 = 1096;
  }

  else
  {
    *(v2 + 1096) = v37;
    *(v2 + 1080) = *(v2 + 1040) + [*(v2 + 1064) length];
    v40 = 1088;
  }

  *(v2 + v40) = v38;

  v41 = a1[5];
  v42 = *(v41 + 1040);
  if (v42 >= 1)
  {
    *(v41 + 16 + v42) = 0;
    CFStringAppendCString(*(v41 + 1064), (v41 + 16), 0x8000100u);
    *(v41 + 1040) = 0;
    v41 = a1[5];
  }

  [*(v41 + 1064) appendFormat:@"%p", a1[4]];
  v43 = a1[5];
  *(v43 + 1104) = 1;
  BSDescribeTruncationCommit(v43);
LABEL_73:
  result = (*(a1[6] + 16))();
  v45 = a1[5];
  if (*(v45 + 1104) == 1)
  {
    *(v45 + 1104) = 0;
  }

  return result;
}

CFIndex __110__BSDescriptionStream__appendSectionWithTotalItemCount_truncatedItemCount_openDelimiter_closeDelimiter_block___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 64);
    v4 = *(v2 + 1040);
    v5 = v2 + 16;
    if (v4 > 1022)
    {
      *(v5 + v4) = 0;
      CFStringAppendCString(*(v2 + 1064), (v2 + 16), 0x8000100u);
      *(v2 + 1040) = 0;
      CFStringAppendCString(*(v2 + 1064), "|", 0x8000100u);
      v6 = *(v2 + 1040);
    }

    else
    {
      *(v5 + v4) = 124;
      v6 = *(v2 + 1040) + 1;
      *(v2 + 1040) = v6;
    }

    if (v6 >= 1)
    {
      *(v5 + v6) = 0;
      CFStringAppendCString(*(v2 + 1064), (v2 + 16), 0x8000100u);
      *(v2 + 1040) = 0;
    }

    [*(v2 + 1064) appendFormat:@"%d", v3];
    v7 = *(v2 + 1040);
    if (v7 > 1021)
    {
      *(v5 + v7) = 0;
      CFStringAppendCString(*(v2 + 1064), (v2 + 16), 0x8000100u);
      *(v2 + 1040) = 0;
      CFStringAppendCString(*(v2 + 1064), "| ", 0x8000100u);
    }

    else
    {
      *(v5 + v7) = 8316;
      *(v2 + 1040) += 2;
    }
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = [(__CFString *)v8 length];
  v11 = *(v9 + 1040);
  if (3 * v10 + v11 <= 1023)
  {
    usedBufLen = 0;
    v20.location = 0;
    v20.length = v10;
    CFStringGetBytes(v8, v20, 0x8000100u, 0, 0, (v9 + v11 + 16), 1024 - v11, &usedBufLen);
    v12 = *(v9 + 1040) + usedBufLen;
LABEL_16:
    *(v9 + 1040) = v12;
    goto LABEL_18;
  }

  if (v11 >= 1)
  {
    *(v9 + 16 + v11) = 0;
    CFStringAppendCString(*(v9 + 1064), (v9 + 16), 0x8000100u);
    *(v9 + 1040) = 0;
  }

  if (v10 <= 341)
  {
    usedBufLen = 0;
    v21.location = 0;
    v21.length = v10;
    CFStringGetBytes(v8, v21, 0x8000100u, 0, 0, (v9 + 16), 1024, &usedBufLen);
    v12 = usedBufLen;
    goto LABEL_16;
  }

  [*(v9 + 1064) appendString:v8];
LABEL_18:
  (*(*(a1 + 56) + 16))();
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = [(__CFString *)v14 length];
  v16 = *(v13 + 1040);
  if (3 * v15 + v16 > 1023)
  {
    if (v16 >= 1)
    {
      *(v13 + 16 + v16) = 0;
      CFStringAppendCString(*(v13 + 1064), (v13 + 16), 0x8000100u);
      *(v13 + 1040) = 0;
    }

    if (v15 > 341)
    {
      result = [*(v13 + 1064) appendString:v14];
      goto LABEL_26;
    }

    usedBufLen = 0;
    v23.location = 0;
    v23.length = v15;
    result = CFStringGetBytes(v14, v23, 0x8000100u, 0, 0, (v13 + 16), 1024, &usedBufLen);
    v18 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v22.location = 0;
    v22.length = v15;
    result = CFStringGetBytes(v14, v22, 0x8000100u, 0, 0, (v13 + v16 + 16), 1024 - v16, &usedBufLen);
    v18 = *(v13 + 1040) + usedBufLen;
  }

  *(v13 + 1040) = v18;
LABEL_26:
  *(*(a1 + 32) + 1104) = 2;
  return result;
}

- (void)appendString:(id)string
{
  v5 = [string length];
  appendBufferCount = self->_appendBufferCount;
  if (3 * v5 + appendBufferCount <= 1023)
  {
    usedBufLen = 0;
    v11.location = 0;
    v11.length = v5;
    CFStringGetBytes(string, v11, 0x8000100u, 0, 0, &self->_appendBuffer[appendBufferCount], 1024 - appendBufferCount, &usedBufLen);
    v7 = self->_appendBufferCount + usedBufLen;
LABEL_7:
    self->_appendBufferCount = v7;
    return;
  }

  if (appendBufferCount >= 1)
  {
    self->_appendBuffer[appendBufferCount] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
  }

  if (v5 <= 341)
  {
    usedBufLen = 0;
    v12.location = 0;
    v12.length = v5;
    CFStringGetBytes(string, v12, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v7 = usedBufLen;
    goto LABEL_7;
  }

  string = self->_string;

  [(NSMutableString *)string appendString:string];
}

- (void)appendFormat:(id)format
{
  appendBufferCount = self->_appendBufferCount;
  if (appendBufferCount >= 1)
  {
    self->_appendBuffer[appendBufferCount] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
  }

  CFStringAppendFormatAndArguments(self->_string, 0, format, &v6);
}

- (id)appendObject:(id)object withName:(id)name skipIfNil:(BOOL)nil
{
  if (object || !nil)
  {
    v8 = self->_style;
    emitPhase = self->_emitPhase;
    if (emitPhase > 2)
    {
      if (emitPhase != 3)
      {
        if (emitPhase != 4)
        {
          goto LABEL_10;
        }

LABEL_22:
        indentLevel = self->_indentLevel;
        if (indentLevel < 1)
        {
          goto LABEL_33;
        }

        if (indentLevel >= 8)
        {
          indentLevel = 8;
        }

        v21 = *(&sIndentSpaceStrings + indentLevel);
        v22 = strlen(v21);
        p_appendBufferCount = &self->_appendBufferCount;
        appendBufferCount = self->_appendBufferCount;
        if ((appendBufferCount + v22) <= 1023)
        {
          v13 = v22;
          memcpy(&self->_appendBuffer[appendBufferCount], v21, v22);
          goto LABEL_27;
        }

        if (appendBufferCount >= 1)
        {
          self->_appendBuffer[appendBufferCount] = 0;
          CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
          *p_appendBufferCount = 0;
        }

        CFStringAppendCString(self->_string, v21, 0x8000100u);
LABEL_33:
        self->_emitPhase = 0;
        if (!name)
        {
          goto LABEL_65;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (emitPhase != 1)
      {
        if (emitPhase == 2)
        {
          p_appendBufferCount = &self->_appendBufferCount;
          v11 = self->_appendBufferCount;
          appendBuffer = self->_appendBuffer;
          if (v11 <= 1022)
          {
            appendBuffer[v11] = 32;
            v13 = 1;
LABEL_27:
            *p_appendBufferCount += v13;
            goto LABEL_33;
          }

          appendBuffer[v11] = 0;
          CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
          p_string = &self->_string;
          v17 = " ";
LABEL_32:
          *p_appendBufferCount = 0;
          CFStringAppendCString(*p_string, v17, 0x8000100u);
          goto LABEL_33;
        }

LABEL_10:
        if (!name)
        {
          goto LABEL_65;
        }

LABEL_34:
        nameTruncation = v8->_nameTruncation;
        maximumNameLengthBeforeTruncation = v8->_maximumNameLengthBeforeTruncation;
        if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
        {
          self->_lineTruncation = 0;
        }

        else
        {
          self->_lineTruncation = nameTruncation;
          self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
          self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
        }

        v27 = [name length];
        v28 = self->_appendBufferCount;
        if (v28 + 3 * v27 > 1023)
        {
          if (v28 >= 1)
          {
            self->_appendBuffer[v28] = 0;
            CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
            self->_appendBufferCount = 0;
          }

          if (v27 > 341)
          {
            [(NSMutableString *)self->_string appendString:name];
            goto LABEL_48;
          }

          usedBufLen = 0;
          v86.location = 0;
          v86.length = v27;
          CFStringGetBytes(name, v86, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
          v29 = usedBufLen;
        }

        else
        {
          usedBufLen = 0;
          v85.location = 0;
          v85.length = v27;
          CFStringGetBytes(name, v85, 0x8000100u, 0, 0, &self->_appendBuffer[v28], 1024 - v28, &usedBufLen);
          v29 = self->_appendBufferCount + usedBufLen;
        }

        self->_appendBufferCount = v29;
LABEL_48:
        BSDescribeTruncationCommit(self);
        if (self->_proemNestCount <= 0)
        {
          v30 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
        }

        else
        {
          v30 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
        }

        v31 = *(&self->_style->super.isa + *v30);
        if (v31 < 2)
        {
          v35 = self->_appendBufferCount;
          v36 = self->_appendBuffer;
          if (v35 <= 1021)
          {
            *&v36[v35] = 8250;
            v34 = 2;
            goto LABEL_60;
          }

          v36[v35] = 0;
          CFStringAppendCString(self->_string, v36, 0x8000100u);
          v39 = ": ";
        }

        else if (v31 == 2)
        {
          v37 = self->_appendBufferCount;
          v38 = &self->_appendBuffer[v37];
          if (v37 <= 1020)
          {
            v38[2] = 32;
            *v38 = 15648;
            v34 = 3;
            goto LABEL_60;
          }

          *v38 = 0;
          CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
          v39 = " = ";
        }

        else
        {
          if (v31 != 3)
          {
            goto LABEL_65;
          }

          v32 = self->_appendBufferCount;
          v33 = self->_appendBuffer;
          if (v32 <= 1019)
          {
            *&v33[v32] = 540945696;
            v34 = 4;
LABEL_60:
            self->_appendBufferCount += v34;
            goto LABEL_65;
          }

          v33[v32] = 0;
          CFStringAppendCString(self->_string, v33, 0x8000100u);
          v39 = " -> ";
        }

        self->_appendBufferCount = 0;
        CFStringAppendCString(self->_string, v39, 0x8000100u);
LABEL_65:
        valueTruncation = v8->_valueTruncation;
        maximumValueLengthBeforeTruncation = v8->_maximumValueLengthBeforeTruncation;
        if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
        {
          maximumValueLengthBeforeTruncation = 0;
          v43 = 1096;
        }

        else
        {
          self->_lineTruncation = valueTruncation;
          self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
          v43 = 1088;
        }

        *(&self->super.isa + v43) = maximumValueLengthBeforeTruncation;

        if (!object)
        {
          v47 = self->_appendBufferCount;
          v48 = &self->_appendBuffer[v47];
          if (v47 > 1018)
          {
            *v48 = 0;
            CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
            self->_appendBufferCount = 0;
            CFStringAppendCString(self->_string, "<nil>", 0x8000100u);
LABEL_151:
            self->_emitPhase = 1;
            BSDescribeTruncationCommit(self);
            goto LABEL_152;
          }

          v48[4] = 62;
          *v48 = 1818848828;
          v46 = self->_appendBufferCount + 5;
LABEL_91:
          self->_appendBufferCount = v46;
          goto LABEL_151;
        }

        if (_NSIsNSString())
        {
          v44 = [object length];
          v45 = self->_appendBufferCount;
          if (3 * v44 + v45 > 1023)
          {
            if (v45 >= 1)
            {
              self->_appendBuffer[v45] = 0;
              CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
              self->_appendBufferCount = 0;
            }

            if (v44 > 341)
            {
              [(NSMutableString *)self->_string appendString:object];
              goto LABEL_151;
            }

            usedBufLen = 0;
            v88.location = 0;
            v88.length = v44;
            CFStringGetBytes(object, v88, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
            v46 = usedBufLen;
          }

          else
          {
            usedBufLen = 0;
            v87.location = 0;
            v87.length = v44;
            CFStringGetBytes(object, v87, 0x8000100u, 0, 0, &self->_appendBuffer[v45], 1024 - v45, &usedBufLen);
            v46 = self->_appendBufferCount + usedBufLen;
          }

          goto LABEL_91;
        }

        if (_NSIsNSNumber())
        {
          objectCopy = object;
          v50 = *[objectCopy objCType];
          if (v50 <= 0x62)
          {
            if (v50 > 75)
            {
              switch(v50)
              {
                case 'L':
                  v67 = self->_appendBufferCount;
                  if (v67 >= 1)
                  {
                    self->_appendBuffer[v67] = 0;
                    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                    self->_appendBufferCount = 0;
                  }

                  string = self->_string;
                  unsignedLongValue = [objectCopy unsignedLongValue];
                  v54 = @"%lu";
                  goto LABEL_149;
                case 'Q':
                  v69 = self->_appendBufferCount;
                  if (v69 >= 1)
                  {
                    self->_appendBuffer[v69] = 0;
                    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                    self->_appendBufferCount = 0;
                  }

                  string = self->_string;
                  unsignedLongValue = [objectCopy unsignedLongLongValue];
                  v54 = @"%llu";
                  goto LABEL_149;
                case 'S':
                  v61 = self->_appendBufferCount;
                  if (v61 >= 1)
                  {
                    self->_appendBuffer[v61] = 0;
                    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                    self->_appendBufferCount = 0;
                  }

                  string = self->_string;
                  unsignedLongValue = [objectCopy unsignedShortValue];
                  v54 = @"%hu";
                  goto LABEL_149;
              }

              goto LABEL_155;
            }

            if (v50 != 66)
            {
              if (v50 == 67)
              {
                v68 = self->_appendBufferCount;
                if (v68 >= 1)
                {
                  self->_appendBuffer[v68] = 0;
                  CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                  self->_appendBufferCount = 0;
                }

                string = self->_string;
                unsignedLongValue = [objectCopy unsignedCharValue];
              }

              else
              {
                if (v50 != 73)
                {
                  goto LABEL_155;
                }

                v55 = self->_appendBufferCount;
                if (v55 >= 1)
                {
                  self->_appendBuffer[v55] = 0;
                  CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                  self->_appendBufferCount = 0;
                }

                string = self->_string;
                unsignedLongValue = [objectCopy unsignedIntValue];
              }

              v54 = @"%u";
LABEL_149:
              [(NSMutableString *)string appendFormat:v54, unsignedLongValue];
              goto LABEL_150;
            }
          }

          else
          {
            if (v50 > 104)
            {
              if (v50 > 112)
              {
                if (v50 == 113)
                {
                  v65 = self->_appendBufferCount;
                  if (v65 >= 1)
                  {
                    self->_appendBuffer[v65] = 0;
                    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                    self->_appendBufferCount = 0;
                  }

                  string = self->_string;
                  unsignedLongValue = [objectCopy longLongValue];
                  v54 = @"%lld";
                  goto LABEL_149;
                }

                if (v50 == 115)
                {
                  v62 = self->_appendBufferCount;
                  if (v62 >= 1)
                  {
                    self->_appendBuffer[v62] = 0;
                    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                    self->_appendBufferCount = 0;
                  }

                  string = self->_string;
                  unsignedLongValue = [objectCopy shortValue];
                  v54 = @"%hi";
                  goto LABEL_149;
                }

                goto LABEL_155;
              }

              if (v50 != 105)
              {
                if (v50 == 108)
                {
                  v51 = self->_appendBufferCount;
                  if (v51 >= 1)
                  {
                    self->_appendBuffer[v51] = 0;
                    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                    self->_appendBufferCount = 0;
                  }

                  string = self->_string;
                  unsignedLongValue = [objectCopy longValue];
                  v54 = @"%ld";
                  goto LABEL_149;
                }

LABEL_155:
                v72 = self->_appendBufferCount;
                if (v72 >= 1)
                {
                  self->_appendBuffer[v72] = 0;
                  CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                  self->_appendBufferCount = 0;
                }

                -[NSMutableString appendFormat:](self->_string, "appendFormat:", @"<***unknown type:%s>", [objectCopy objCType]);
                goto LABEL_150;
              }

              v64 = self->_appendBufferCount;
              if (v64 >= 1)
              {
                self->_appendBuffer[v64] = 0;
                CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                self->_appendBufferCount = 0;
              }

              string = self->_string;
              unsignedLongValue = [objectCopy intValue];
              goto LABEL_131;
            }

            if (v50 != 99)
            {
              if (v50 == 100)
              {
                v66 = self->_appendBufferCount;
                if (v66 >= 1)
                {
                  self->_appendBuffer[v66] = 0;
                  CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                  self->_appendBufferCount = 0;
                }

                v57 = self->_string;
                [objectCopy doubleValue];
                v60 = @"%0.16g";
              }

              else
              {
                if (v50 != 102)
                {
                  goto LABEL_155;
                }

                v56 = self->_appendBufferCount;
                if (v56 >= 1)
                {
                  self->_appendBuffer[v56] = 0;
                  CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
                  self->_appendBufferCount = 0;
                }

                v57 = self->_string;
                [objectCopy floatValue];
                v59 = v58;
                v60 = @"%0.7g";
              }

              [(NSMutableString *)v57 appendFormat:v60, *&v59];
LABEL_150:

              goto LABEL_151;
            }
          }

          v63 = self->_appendBufferCount;
          if (v63 >= 1)
          {
            self->_appendBuffer[v63] = 0;
            CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
            self->_appendBufferCount = 0;
          }

          string = self->_string;
          unsignedLongValue = [objectCopy charValue];
LABEL_131:
          v54 = @"%d";
          goto LABEL_149;
        }

        if (objc_opt_respondsToSelector())
        {
          [object appendDescriptionToStream:self];
          goto LABEL_151;
        }

        if (objc_opt_respondsToSelector())
        {
          [object appendDescriptionToFormatter:self];
          goto LABEL_151;
        }

        if (_NSIsNSDictionary())
        {
          usedBufLen = MEMORY[0x1E69E9820];
          v80 = 3221225472;
          v81 = __BSDescribeAppendObjectDescription_block_invoke;
          v82 = &unk_1E72CBE40;
          selfCopy3 = self;
          [(BSDescriptionStream *)self _appendDictionary:object withName:0 itemBlock:&usedBufLen];
          goto LABEL_151;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(BSDescriptionStream *)self appendIntegerSet:object withName:0 format:0];
          goto LABEL_151;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          usedBufLen = MEMORY[0x1E69E9820];
          v80 = 3221225472;
          v81 = __BSDescribeAppendObjectDescription_block_invoke_2;
          v82 = &unk_1E72CBE68;
          selfCopy3 = self;
          [(BSDescriptionStream *)self appendIntegerMap:object withName:0 keyFormat:0 valueBlock:&usedBufLen];
          goto LABEL_151;
        }

        if (objc_opt_respondsToSelector())
        {
          usedBufLen = MEMORY[0x1E69E9820];
          v80 = 3221225472;
          v81 = __BSDescribeAppendObjectDescription_block_invoke_3;
          v82 = &unk_1E72CBE68;
          selfCopy3 = self;
          [(BSDescriptionStream *)self appendCollection:object withName:0 itemBlock:&usedBufLen];
          goto LABEL_151;
        }

        if (self->_forceSuccinct || (style = self->_style, style->_verbosity == 2))
        {
          if (objc_opt_respondsToSelector())
          {
            succinctDescription = [object succinctDescription];
            goto LABEL_171;
          }

          style = self->_style;
        }

        if (style->_debugging == 2)
        {
          [object debugDescription];
        }

        else
        {
          [object description];
        }
        succinctDescription = ;
LABEL_171:
        v75 = succinctDescription;
        v76 = [(__CFString *)succinctDescription length];
        v77 = self->_appendBufferCount;
        if (v77 + 3 * v76 > 1023)
        {
          if (v77 >= 1)
          {
            self->_appendBuffer[v77] = 0;
            CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
            self->_appendBufferCount = 0;
          }

          if (v76 > 341)
          {
            [(NSMutableString *)self->_string appendString:v75];
            goto LABEL_179;
          }

          usedBufLen = 0;
          v90.location = 0;
          v90.length = v76;
          CFStringGetBytes(v75, v90, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
          v78 = usedBufLen;
        }

        else
        {
          usedBufLen = 0;
          v89.location = 0;
          v89.length = v76;
          CFStringGetBytes(v75, v89, 0x8000100u, 0, 0, &self->_appendBuffer[v77], 1024 - v77, &usedBufLen);
          v78 = self->_appendBufferCount + usedBufLen;
        }

        self->_appendBufferCount = v78;
LABEL_179:

        goto LABEL_151;
      }

      p_appendBufferCount = &self->_appendBufferCount;
      v14 = self->_appendBufferCount;
      v15 = self->_appendBuffer;
      if (self->_style->_collectionLineBreak != 3)
      {
        if (v14 <= 1021)
        {
          *&v15[v14] = 8251;
          v13 = 2;
          goto LABEL_27;
        }

        v15[v14] = 0;
        CFStringAppendCString(self->_string, v15, 0x8000100u);
        p_string = &self->_string;
        v17 = "; ";
        goto LABEL_32;
      }

      if (v14 > 1022)
      {
        v15[v14] = 0;
        CFStringAppendCString(self->_string, v15, 0x8000100u);
        self->_appendBufferCount = 0;
        CFStringAppendCString(self->_string, ";", 0x8000100u);
      }

      else
      {
        v15[v14] = 59;
        ++*p_appendBufferCount;
      }
    }

    v18 = self->_appendBufferCount;
    v19 = self->_appendBuffer;
    if (v18 > 1022)
    {
      v19[v18] = 0;
      CFStringAppendCString(self->_string, v19, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      v19[v18] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_22;
  }

LABEL_152:
  selfCopy4 = self;

  return self;
}

- (void)appendString:(id)string withName:(id)name skipIfEmpty:(BOOL)empty
{
  if (string || !empty)
  {
    v8 = self->_style;
    emitPhase = self->_emitPhase;
    if (emitPhase > 2)
    {
      if (emitPhase != 3)
      {
        if (emitPhase != 4)
        {
          goto LABEL_10;
        }

LABEL_22:
        indentLevel = self->_indentLevel;
        if (indentLevel < 1)
        {
          goto LABEL_33;
        }

        if (indentLevel >= 8)
        {
          indentLevel = 8;
        }

        v21 = *(&sIndentSpaceStrings + indentLevel);
        v22 = strlen(v21);
        p_appendBufferCount = &self->_appendBufferCount;
        appendBufferCount = self->_appendBufferCount;
        if ((appendBufferCount + v22) <= 1023)
        {
          v13 = v22;
          memcpy(&self->_appendBuffer[appendBufferCount], v21, v22);
          goto LABEL_27;
        }

        if (appendBufferCount >= 1)
        {
          self->_appendBuffer[appendBufferCount] = 0;
          CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
          *p_appendBufferCount = 0;
        }

        CFStringAppendCString(self->_string, v21, 0x8000100u);
LABEL_33:
        self->_emitPhase = 0;
        if (!name)
        {
          goto LABEL_65;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (emitPhase != 1)
      {
        if (emitPhase == 2)
        {
          p_appendBufferCount = &self->_appendBufferCount;
          v11 = self->_appendBufferCount;
          appendBuffer = self->_appendBuffer;
          if (v11 <= 1022)
          {
            appendBuffer[v11] = 32;
            v13 = 1;
LABEL_27:
            *p_appendBufferCount += v13;
            goto LABEL_33;
          }

          appendBuffer[v11] = 0;
          CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
          p_string = &self->_string;
          v17 = " ";
LABEL_32:
          *p_appendBufferCount = 0;
          CFStringAppendCString(*p_string, v17, 0x8000100u);
          goto LABEL_33;
        }

LABEL_10:
        if (!name)
        {
          goto LABEL_65;
        }

LABEL_34:
        nameTruncation = v8->_nameTruncation;
        maximumNameLengthBeforeTruncation = v8->_maximumNameLengthBeforeTruncation;
        if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
        {
          self->_lineTruncation = 0;
        }

        else
        {
          self->_lineTruncation = nameTruncation;
          self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
          self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
        }

        v27 = [name length];
        v28 = self->_appendBufferCount;
        if (v28 + 3 * v27 > 1023)
        {
          if (v28 >= 1)
          {
            self->_appendBuffer[v28] = 0;
            CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
            self->_appendBufferCount = 0;
          }

          if (v27 > 341)
          {
            [(NSMutableString *)self->_string appendString:name];
            goto LABEL_48;
          }

          usedBufLen = 0;
          v51.location = 0;
          v51.length = v27;
          CFStringGetBytes(name, v51, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
          v29 = usedBufLen;
        }

        else
        {
          usedBufLen = 0;
          v50.location = 0;
          v50.length = v27;
          CFStringGetBytes(name, v50, 0x8000100u, 0, 0, &self->_appendBuffer[v28], 1024 - v28, &usedBufLen);
          v29 = self->_appendBufferCount + usedBufLen;
        }

        self->_appendBufferCount = v29;
LABEL_48:
        BSDescribeTruncationCommit(self);
        if (self->_proemNestCount <= 0)
        {
          v30 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
        }

        else
        {
          v30 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
        }

        v31 = *(&self->_style->super.isa + *v30);
        if (v31 < 2)
        {
          v35 = self->_appendBufferCount;
          v36 = self->_appendBuffer;
          if (v35 <= 1021)
          {
            *&v36[v35] = 8250;
            v34 = 2;
            goto LABEL_60;
          }

          v36[v35] = 0;
          CFStringAppendCString(self->_string, v36, 0x8000100u);
          v39 = ": ";
        }

        else if (v31 == 2)
        {
          v37 = self->_appendBufferCount;
          v38 = &self->_appendBuffer[v37];
          if (v37 <= 1020)
          {
            v38[2] = 32;
            *v38 = 15648;
            v34 = 3;
            goto LABEL_60;
          }

          *v38 = 0;
          CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
          v39 = " = ";
        }

        else
        {
          if (v31 != 3)
          {
            goto LABEL_65;
          }

          v32 = self->_appendBufferCount;
          v33 = self->_appendBuffer;
          if (v32 <= 1019)
          {
            *&v33[v32] = 540945696;
            v34 = 4;
LABEL_60:
            self->_appendBufferCount += v34;
            goto LABEL_65;
          }

          v33[v32] = 0;
          CFStringAppendCString(self->_string, v33, 0x8000100u);
          v39 = " -> ";
        }

        self->_appendBufferCount = 0;
        CFStringAppendCString(self->_string, v39, 0x8000100u);
LABEL_65:
        valueTruncation = v8->_valueTruncation;
        maximumValueLengthBeforeTruncation = v8->_maximumValueLengthBeforeTruncation;
        if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
        {
          maximumValueLengthBeforeTruncation = 0;
          v43 = 1096;
        }

        else
        {
          self->_lineTruncation = valueTruncation;
          self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
          v43 = 1088;
        }

        *(&self->super.isa + v43) = maximumValueLengthBeforeTruncation;

        if (string)
        {
          v44 = [string length];
          v45 = self->_appendBufferCount;
          if (3 * v44 + v45 > 1023)
          {
            if (v45 >= 1)
            {
              self->_appendBuffer[v45] = 0;
              CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
              self->_appendBufferCount = 0;
            }

            if (v44 > 341)
            {
              [(NSMutableString *)self->_string appendString:string];
              goto LABEL_83;
            }

            usedBufLen = 0;
            v53.location = 0;
            v53.length = v44;
            CFStringGetBytes(string, v53, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
            v46 = usedBufLen;
          }

          else
          {
            usedBufLen = 0;
            v52.location = 0;
            v52.length = v44;
            CFStringGetBytes(string, v52, 0x8000100u, 0, 0, &self->_appendBuffer[v45], 1024 - v45, &usedBufLen);
            v46 = self->_appendBufferCount + usedBufLen;
          }
        }

        else
        {
          v47 = self->_appendBufferCount;
          v48 = &self->_appendBuffer[v47];
          if (v47 > 1018)
          {
            *v48 = 0;
            CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
            self->_appendBufferCount = 0;
            CFStringAppendCString(self->_string, "<nil>", 0x8000100u);
            goto LABEL_83;
          }

          v48[4] = 62;
          *v48 = 1818848828;
          v46 = self->_appendBufferCount + 5;
        }

        self->_appendBufferCount = v46;
LABEL_83:
        self->_emitPhase = 1;
        BSDescribeTruncationCommit(self);
        return;
      }

      p_appendBufferCount = &self->_appendBufferCount;
      v14 = self->_appendBufferCount;
      v15 = self->_appendBuffer;
      if (self->_style->_collectionLineBreak != 3)
      {
        if (v14 <= 1021)
        {
          *&v15[v14] = 8251;
          v13 = 2;
          goto LABEL_27;
        }

        v15[v14] = 0;
        CFStringAppendCString(self->_string, v15, 0x8000100u);
        p_string = &self->_string;
        v17 = "; ";
        goto LABEL_32;
      }

      if (v14 > 1022)
      {
        v15[v14] = 0;
        CFStringAppendCString(self->_string, v15, 0x8000100u);
        self->_appendBufferCount = 0;
        CFStringAppendCString(self->_string, ";", 0x8000100u);
      }

      else
      {
        v15[v14] = 59;
        ++*p_appendBufferCount;
      }
    }

    v18 = self->_appendBufferCount;
    v19 = self->_appendBuffer;
    if (v18 > 1022)
    {
      v19[v18] = 0;
      CFStringAppendCString(self->_string, v19, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      v19[v18] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_22;
  }
}

- (id)appendBool:(BOOL)bool withName:(id)name
{
  boolCopy = bool;
  if (bool)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  v8 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_11;
      }

LABEL_23:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_34;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v21 = *(&sIndentSpaceStrings + indentLevel);
      v22 = strlen(v21);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v22) <= 1023)
      {
        v13 = v22;
        memcpy(&self->_appendBuffer[appendBufferCount], v21, v22);
        goto LABEL_28;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v21, 0x8000100u);
LABEL_34:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_66;
      }

      goto LABEL_35;
    }

LABEL_20:
    v18 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v18 > 1022)
    {
      appendBuffer[v18] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v18] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_23;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v14 = self->_appendBufferCount;
    v15 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v14 <= 1021)
      {
        *&v15[v14] = 8251;
        v13 = 2;
        goto LABEL_28;
      }

      v15[v14] = 0;
      CFStringAppendCString(self->_string, v15, 0x8000100u);
      p_string = &self->_string;
      v17 = "; ";
      goto LABEL_33;
    }

    if (v14 > 1022)
    {
      v15[v14] = 0;
      CFStringAppendCString(self->_string, v15, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v15[v14] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v11 = self->_appendBufferCount;
    v12 = self->_appendBuffer;
    if (v11 <= 1022)
    {
      v12[v11] = 32;
      v13 = 1;
LABEL_28:
      *p_appendBufferCount += v13;
      goto LABEL_34;
    }

    v12[v11] = 0;
    CFStringAppendCString(self->_string, v12, 0x8000100u);
    p_string = &self->_string;
    v17 = " ";
LABEL_33:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v17, 0x8000100u);
    goto LABEL_34;
  }

LABEL_11:
  if (!name)
  {
    goto LABEL_66;
  }

LABEL_35:
  nameTruncation = v8->_nameTruncation;
  maximumNameLengthBeforeTruncation = v8->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v27 = [name length];
  v28 = self->_appendBufferCount;
  if (v28 + 3 * v27 > 1023)
  {
    if (v28 >= 1)
    {
      self->_appendBuffer[v28] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v27 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_49;
    }

    usedBufLen = 0;
    v50.location = 0;
    v50.length = v27;
    CFStringGetBytes(name, v50, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v29 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v49.location = 0;
    v49.length = v27;
    CFStringGetBytes(name, v49, 0x8000100u, 0, 0, &self->_appendBuffer[v28], 1024 - v28, &usedBufLen);
    v29 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v29;
LABEL_49:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v30 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v30 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v31 = *(&self->_style->super.isa + *v30);
  if (v31 < 2)
  {
    v35 = self->_appendBufferCount;
    v36 = self->_appendBuffer;
    if (v35 <= 1021)
    {
      *&v36[v35] = 8250;
      v34 = 2;
      goto LABEL_61;
    }

    v36[v35] = 0;
    CFStringAppendCString(self->_string, v36, 0x8000100u);
    v39 = ": ";
  }

  else if (v31 == 2)
  {
    v37 = self->_appendBufferCount;
    v38 = &self->_appendBuffer[v37];
    if (v37 <= 1020)
    {
      v38[2] = 32;
      *v38 = 15648;
      v34 = 3;
      goto LABEL_61;
    }

    *v38 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v39 = " = ";
  }

  else
  {
    if (v31 != 3)
    {
      goto LABEL_66;
    }

    v32 = self->_appendBufferCount;
    v33 = self->_appendBuffer;
    if (v32 <= 1019)
    {
      *&v33[v32] = 540945696;
      v34 = 4;
LABEL_61:
      self->_appendBufferCount += v34;
      goto LABEL_66;
    }

    v33[v32] = 0;
    CFStringAppendCString(self->_string, v33, 0x8000100u);
    v39 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v39, 0x8000100u);
LABEL_66:
  valueTruncation = v8->_valueTruncation;
  maximumValueLengthBeforeTruncation = v8->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v43 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v43 = 1088;
  }

  *(&self->super.isa + v43) = maximumValueLengthBeforeTruncation;

  if (boolCopy)
  {
    v44 = 3;
  }

  else
  {
    v44 = 2;
  }

  v45 = self->_appendBufferCount;
  if ((v45 + v44) > 1023)
  {
    if (v45 >= 1)
    {
      self->_appendBuffer[v45] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    CFStringAppendCString(self->_string, v7, 0x8000100u);
  }

  else
  {
    memcpy(&self->_appendBuffer[v45], v7, v44);
    self->_appendBufferCount += v44;
  }

  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);

  return self;
}

- (id)appendBool:(BOOL)bool withName:(id)name ifEqualTo:(BOOL)to
{
  if (bool != to)
  {
    goto LABEL_82;
  }

  boolCopy = bool;
  if (bool)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  v9 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase <= 2)
  {
    if (emitPhase != 1)
    {
      if (emitPhase == 2)
      {
        p_appendBufferCount = &self->_appendBufferCount;
        appendBufferCount = self->_appendBufferCount;
        appendBuffer = self->_appendBuffer;
        if (appendBufferCount <= 1022)
        {
          appendBuffer[appendBufferCount] = 32;
          v14 = 1;
LABEL_29:
          *p_appendBufferCount += v14;
          goto LABEL_35;
        }

        appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
        p_string = &self->_string;
        v18 = " ";
LABEL_34:
        *p_appendBufferCount = 0;
        CFStringAppendCString(*p_string, v18, 0x8000100u);
        goto LABEL_35;
      }

LABEL_12:
      if (!name)
      {
        goto LABEL_67;
      }

      goto LABEL_36;
    }

    p_appendBufferCount = &self->_appendBufferCount;
    v15 = self->_appendBufferCount;
    v16 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v15 <= 1021)
      {
        *&v16[v15] = 8251;
        v14 = 2;
        goto LABEL_29;
      }

      v16[v15] = 0;
      CFStringAppendCString(self->_string, v16, 0x8000100u);
      p_string = &self->_string;
      v18 = "; ";
      goto LABEL_34;
    }

    if (v15 > 1022)
    {
      v16[v15] = 0;
      CFStringAppendCString(self->_string, v16, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v16[v15] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_21;
  }

  if (emitPhase == 3)
  {
LABEL_21:
    v19 = self->_appendBufferCount;
    v20 = self->_appendBuffer;
    if (v19 > 1022)
    {
      v20[v19] = 0;
      CFStringAppendCString(self->_string, v20, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      v20[v19] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_24;
  }

  if (emitPhase != 4)
  {
    goto LABEL_12;
  }

LABEL_24:
  indentLevel = self->_indentLevel;
  if (indentLevel < 1)
  {
    goto LABEL_35;
  }

  if (indentLevel >= 8)
  {
    indentLevel = 8;
  }

  v22 = *(&sIndentSpaceStrings + indentLevel);
  v23 = strlen(v22);
  p_appendBufferCount = &self->_appendBufferCount;
  v24 = self->_appendBufferCount;
  if ((v24 + v23) <= 1023)
  {
    v14 = v23;
    memcpy(&self->_appendBuffer[v24], v22, v23);
    goto LABEL_29;
  }

  if (v24 >= 1)
  {
    self->_appendBuffer[v24] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    *p_appendBufferCount = 0;
  }

  CFStringAppendCString(self->_string, v22, 0x8000100u);
LABEL_35:
  self->_emitPhase = 0;
  if (!name)
  {
    goto LABEL_67;
  }

LABEL_36:
  nameTruncation = v9->_nameTruncation;
  maximumNameLengthBeforeTruncation = v9->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v28 = [name length];
  v29 = self->_appendBufferCount;
  if (v29 + 3 * v28 > 1023)
  {
    if (v29 >= 1)
    {
      self->_appendBuffer[v29] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v28 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_50;
    }

    usedBufLen = 0;
    v52.location = 0;
    v52.length = v28;
    CFStringGetBytes(name, v52, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v30 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v51.location = 0;
    v51.length = v28;
    CFStringGetBytes(name, v51, 0x8000100u, 0, 0, &self->_appendBuffer[v29], 1024 - v29, &usedBufLen);
    v30 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v30;
LABEL_50:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v31 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v31 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v32 = *(&self->_style->super.isa + *v31);
  if (v32 < 2)
  {
    v36 = self->_appendBufferCount;
    v37 = self->_appendBuffer;
    if (v36 <= 1021)
    {
      *&v37[v36] = 8250;
      v35 = 2;
      goto LABEL_62;
    }

    v37[v36] = 0;
    CFStringAppendCString(self->_string, v37, 0x8000100u);
    v40 = ": ";
LABEL_66:
    self->_appendBufferCount = 0;
    CFStringAppendCString(self->_string, v40, 0x8000100u);
    goto LABEL_67;
  }

  if (v32 == 2)
  {
    v38 = self->_appendBufferCount;
    v39 = &self->_appendBuffer[v38];
    if (v38 <= 1020)
    {
      v39[2] = 32;
      *v39 = 15648;
      v35 = 3;
      goto LABEL_62;
    }

    *v39 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v40 = " = ";
    goto LABEL_66;
  }

  if (v32 == 3)
  {
    v33 = self->_appendBufferCount;
    v34 = self->_appendBuffer;
    if (v33 <= 1019)
    {
      *&v34[v33] = 540945696;
      v35 = 4;
LABEL_62:
      self->_appendBufferCount += v35;
      goto LABEL_67;
    }

    v34[v33] = 0;
    CFStringAppendCString(self->_string, v34, 0x8000100u);
    v40 = " -> ";
    goto LABEL_66;
  }

LABEL_67:
  valueTruncation = v9->_valueTruncation;
  maximumValueLengthBeforeTruncation = v9->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v44 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v44 = 1088;
  }

  *(&self->super.isa + v44) = maximumValueLengthBeforeTruncation;

  if (boolCopy)
  {
    v45 = 3;
  }

  else
  {
    v45 = 2;
  }

  v46 = self->_appendBufferCount;
  if ((v46 + v45) > 1023)
  {
    if (v46 >= 1)
    {
      self->_appendBuffer[v46] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    CFStringAppendCString(self->_string, v8, 0x8000100u);
  }

  else
  {
    memcpy(&self->_appendBuffer[v46], v8, v45);
    self->_appendBufferCount += v45;
  }

  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);
LABEL_82:
  selfCopy = self;

  return self;
}

- (id)appendFlag:(int64_t)flag withName:(id)name
{
  v6 = BSSettingFlagDescription(flag);
  v7 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_31;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v20 = *(&sIndentSpaceStrings + indentLevel);
      v21 = strlen(v20);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v21) <= 1023)
      {
        v12 = v21;
        memcpy(&self->_appendBuffer[appendBufferCount], v20, v21);
        goto LABEL_25;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v20, 0x8000100u);
LABEL_31:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_63;
      }

      goto LABEL_32;
    }

LABEL_17:
    v17 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v17 > 1022)
    {
      appendBuffer[v17] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v17] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v13 = self->_appendBufferCount;
    v14 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v13 <= 1021)
      {
        *&v14[v13] = 8251;
        v12 = 2;
        goto LABEL_25;
      }

      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      p_string = &self->_string;
      v16 = "; ";
      goto LABEL_30;
    }

    if (v13 > 1022)
    {
      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v14[v13] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v10 = self->_appendBufferCount;
    v11 = self->_appendBuffer;
    if (v10 <= 1022)
    {
      v11[v10] = 32;
      v12 = 1;
LABEL_25:
      *p_appendBufferCount += v12;
      goto LABEL_31;
    }

    v11[v10] = 0;
    CFStringAppendCString(self->_string, v11, 0x8000100u);
    p_string = &self->_string;
    v16 = " ";
LABEL_30:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v16, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!name)
  {
    goto LABEL_63;
  }

LABEL_32:
  nameTruncation = v7->_nameTruncation;
  maximumNameLengthBeforeTruncation = v7->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v26 = [name length];
  v27 = self->_appendBufferCount;
  if (v27 + 3 * v26 > 1023)
  {
    if (v27 >= 1)
    {
      self->_appendBuffer[v27] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v26 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_46;
    }

    usedBufLen = 0;
    v52.location = 0;
    v52.length = v26;
    CFStringGetBytes(name, v52, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v28 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v51.location = 0;
    v51.length = v26;
    CFStringGetBytes(name, v51, 0x8000100u, 0, 0, &self->_appendBuffer[v27], 1024 - v27, &usedBufLen);
    v28 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v28;
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v30 = *(&self->_style->super.isa + *v29);
  if (v30 < 2)
  {
    v34 = self->_appendBufferCount;
    v35 = self->_appendBuffer;
    if (v34 <= 1021)
    {
      *&v35[v34] = 8250;
      v33 = 2;
      goto LABEL_58;
    }

    v35[v34] = 0;
    CFStringAppendCString(self->_string, v35, 0x8000100u);
    v38 = ": ";
  }

  else if (v30 == 2)
  {
    v36 = self->_appendBufferCount;
    v37 = &self->_appendBuffer[v36];
    if (v36 <= 1020)
    {
      v37[2] = 32;
      *v37 = 15648;
      v33 = 3;
      goto LABEL_58;
    }

    *v37 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v38 = " = ";
  }

  else
  {
    if (v30 != 3)
    {
      goto LABEL_63;
    }

    v31 = self->_appendBufferCount;
    v32 = self->_appendBuffer;
    if (v31 <= 1019)
    {
      *&v32[v31] = 540945696;
      v33 = 4;
LABEL_58:
      self->_appendBufferCount += v33;
      goto LABEL_63;
    }

    v32[v31] = 0;
    CFStringAppendCString(self->_string, v32, 0x8000100u);
    v38 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v38, 0x8000100u);
LABEL_63:
  valueTruncation = v7->_valueTruncation;
  maximumValueLengthBeforeTruncation = v7->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v42 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v42 = 1088;
  }

  *(&self->super.isa + v42) = maximumValueLengthBeforeTruncation;

  if (v6)
  {
    v43 = [(__CFString *)v6 length];
    v44 = self->_appendBufferCount;
    if (v44 + 3 * v43 > 1023)
    {
      if (v44 >= 1)
      {
        self->_appendBuffer[v44] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        self->_appendBufferCount = 0;
      }

      if (v43 > 341)
      {
        [(NSMutableString *)self->_string appendString:v6];
        goto LABEL_81;
      }

      usedBufLen = 0;
      v54.location = 0;
      v54.length = v43;
      CFStringGetBytes(v6, v54, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
      v45 = usedBufLen;
    }

    else
    {
      usedBufLen = 0;
      v53.location = 0;
      v53.length = v43;
      CFStringGetBytes(v6, v53, 0x8000100u, 0, 0, &self->_appendBuffer[v44], 1024 - v44, &usedBufLen);
      v45 = self->_appendBufferCount + usedBufLen;
    }
  }

  else
  {
    v46 = self->_appendBufferCount;
    v47 = &self->_appendBuffer[v46];
    if (v46 > 1018)
    {
      *v47 = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "<nil>", 0x8000100u);
      goto LABEL_81;
    }

    v47[4] = 62;
    *v47 = 1818848828;
    v45 = self->_appendBufferCount + 5;
  }

  self->_appendBufferCount = v45;
LABEL_81:
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);
  selfCopy = self;

  return self;
}

- (id)appendFlag:(int64_t)flag withName:(id)name skipIfNotSet:(BOOL)set
{
  if (flag == 0x7FFFFFFFFFFFFFFFLL && set)
  {
    selfCopy = self;
    goto LABEL_85;
  }

  v8 = BSSettingFlagDescription(flag);
  v9 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_11;
      }

LABEL_23:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_34;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v22 = *(&sIndentSpaceStrings + indentLevel);
      v23 = strlen(v22);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v23) <= 1023)
      {
        v14 = v23;
        memcpy(&self->_appendBuffer[appendBufferCount], v22, v23);
        goto LABEL_28;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v22, 0x8000100u);
LABEL_34:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_66;
      }

      goto LABEL_35;
    }

LABEL_20:
    v19 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v19 > 1022)
    {
      appendBuffer[v19] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v19] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_23;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v15 = self->_appendBufferCount;
    v16 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v15 <= 1021)
      {
        *&v16[v15] = 8251;
        v14 = 2;
        goto LABEL_28;
      }

      v16[v15] = 0;
      CFStringAppendCString(self->_string, v16, 0x8000100u);
      p_string = &self->_string;
      v18 = "; ";
      goto LABEL_33;
    }

    if (v15 > 1022)
    {
      v16[v15] = 0;
      CFStringAppendCString(self->_string, v16, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v16[v15] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v12 = self->_appendBufferCount;
    v13 = self->_appendBuffer;
    if (v12 <= 1022)
    {
      v13[v12] = 32;
      v14 = 1;
LABEL_28:
      *p_appendBufferCount += v14;
      goto LABEL_34;
    }

    v13[v12] = 0;
    CFStringAppendCString(self->_string, v13, 0x8000100u);
    p_string = &self->_string;
    v18 = " ";
LABEL_33:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v18, 0x8000100u);
    goto LABEL_34;
  }

LABEL_11:
  if (!name)
  {
    goto LABEL_66;
  }

LABEL_35:
  nameTruncation = v9->_nameTruncation;
  maximumNameLengthBeforeTruncation = v9->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v28 = [name length];
  v29 = self->_appendBufferCount;
  if (v29 + 3 * v28 > 1023)
  {
    if (v29 >= 1)
    {
      self->_appendBuffer[v29] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v28 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_49;
    }

    usedBufLen = 0;
    v55.location = 0;
    v55.length = v28;
    CFStringGetBytes(name, v55, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v30 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v54.location = 0;
    v54.length = v28;
    CFStringGetBytes(name, v54, 0x8000100u, 0, 0, &self->_appendBuffer[v29], 1024 - v29, &usedBufLen);
    v30 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v30;
LABEL_49:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v31 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v31 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v32 = *(&self->_style->super.isa + *v31);
  if (v32 < 2)
  {
    v36 = self->_appendBufferCount;
    v37 = self->_appendBuffer;
    if (v36 <= 1021)
    {
      *&v37[v36] = 8250;
      v35 = 2;
      goto LABEL_61;
    }

    v37[v36] = 0;
    CFStringAppendCString(self->_string, v37, 0x8000100u);
    v40 = ": ";
  }

  else if (v32 == 2)
  {
    v38 = self->_appendBufferCount;
    v39 = &self->_appendBuffer[v38];
    if (v38 <= 1020)
    {
      v39[2] = 32;
      *v39 = 15648;
      v35 = 3;
      goto LABEL_61;
    }

    *v39 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v40 = " = ";
  }

  else
  {
    if (v32 != 3)
    {
      goto LABEL_66;
    }

    v33 = self->_appendBufferCount;
    v34 = self->_appendBuffer;
    if (v33 <= 1019)
    {
      *&v34[v33] = 540945696;
      v35 = 4;
LABEL_61:
      self->_appendBufferCount += v35;
      goto LABEL_66;
    }

    v34[v33] = 0;
    CFStringAppendCString(self->_string, v34, 0x8000100u);
    v40 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v40, 0x8000100u);
LABEL_66:
  valueTruncation = v9->_valueTruncation;
  maximumValueLengthBeforeTruncation = v9->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v44 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v44 = 1088;
  }

  *(&self->super.isa + v44) = maximumValueLengthBeforeTruncation;

  if (v8)
  {
    v45 = [(__CFString *)v8 length];
    v46 = self->_appendBufferCount;
    if (v46 + 3 * v45 > 1023)
    {
      if (v46 >= 1)
      {
        self->_appendBuffer[v46] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        self->_appendBufferCount = 0;
      }

      if (v45 > 341)
      {
        [(NSMutableString *)self->_string appendString:v8];
        goto LABEL_84;
      }

      usedBufLen = 0;
      v57.location = 0;
      v57.length = v45;
      CFStringGetBytes(v8, v57, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
      v47 = usedBufLen;
    }

    else
    {
      usedBufLen = 0;
      v56.location = 0;
      v56.length = v45;
      CFStringGetBytes(v8, v56, 0x8000100u, 0, 0, &self->_appendBuffer[v46], 1024 - v46, &usedBufLen);
      v47 = self->_appendBufferCount + usedBufLen;
    }
  }

  else
  {
    v48 = self->_appendBufferCount;
    v49 = &self->_appendBuffer[v48];
    if (v48 > 1018)
    {
      *v49 = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "<nil>", 0x8000100u);
      goto LABEL_84;
    }

    v49[4] = 62;
    *v49 = 1818848828;
    v47 = self->_appendBufferCount + 5;
  }

  self->_appendBufferCount = v47;
LABEL_84:
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);
  selfCopy2 = self;

LABEL_85:

  return self;
}

- (id)appendInteger:(int64_t)integer withName:(id)name
{
  v8 = BSDescribeAppendFieldFormat(self, name, @"%td", name, v4, v5, v6, v7, integer);

  return v8;
}

- (id)appendUnsignedInteger:(unint64_t)integer withName:(id)name
{
  v8 = BSDescribeAppendFieldFormat(self, name, @"%tu", name, v4, v5, v6, v7, integer);

  return v8;
}

- (id)appendUnsignedInteger:(unint64_t)integer withName:(id)name format:(int64_t)format
{
  v8 = @"%tu";
  if (format == 1)
  {
    v8 = @"0x%tX";
  }

  v9 = BSDescribeAppendFieldFormat(self, name, v8, name, format, v5, v6, v7, integer);

  return v9;
}

- (id)appendInt:(int)int withName:(id)name
{
  v8 = BSDescribeAppendFieldFormat(self, name, @"%d", name, v4, v5, v6, v7, int);

  return v8;
}

- (id)appendUnsignedInt:(unsigned int)int withName:(id)name
{
  v8 = BSDescribeAppendFieldFormat(self, name, @"%u", name, v4, v5, v6, v7, int);

  return v8;
}

- (id)appendInt64:(int64_t)int64 withName:(id)name
{
  v8 = BSDescribeAppendFieldFormat(self, name, @"%lld", name, v4, v5, v6, v7, int64);

  return v8;
}

- (id)appendUInt64:(unint64_t)int64 withName:(id)name
{
  v8 = BSDescribeAppendFieldFormat(self, name, @"%llu", name, v4, v5, v6, v7, int64);

  return v8;
}

- (id)appendUInt64:(unint64_t)int64 withName:(id)name format:(int64_t)format
{
  v8 = @"%llu";
  if (format == 1)
  {
    v8 = @"0x%llX";
  }

  v9 = BSDescribeAppendFieldFormat(self, name, v8, name, format, v5, v6, v7, int64);

  return v9;
}

- (id)appendDouble:(double)double withName:(id)name decimalPrecision:(unint64_t)precision
{
  if (precision == 0x7FFFFFFFFFFFFFFFLL)
  {
    BSDescribeAppendFieldFormat(self, name, @"%f", 0x7FFFFFFFFFFFFFFFLL, v5, v6, v7, v8, SLOBYTE(double));
  }

  else
  {
    precisionCopy = -1;
    if (precision < 0x7FFFFFFF)
    {
      precisionCopy = precision;
    }

    BSDescribeAppendFieldFormat(self, name, @"%.*f", precision, v5, v6, v7, v8, precisionCopy);
  }
  v10 = ;

  return v10;
}

- (id)appendTimeInterval:(double)interval withName:(id)name decomposeUnits:(BOOL)units
{
  if (fabs(interval) == INFINITY)
  {
    v21 = self->_style;
    emitPhase = self->_emitPhase;
    if (emitPhase > 2)
    {
      if (emitPhase != 3)
      {
        if (emitPhase != 4)
        {
          goto LABEL_21;
        }

LABEL_41:
        indentLevel = self->_indentLevel;
        if (indentLevel < 1)
        {
          goto LABEL_52;
        }

        if (indentLevel >= 8)
        {
          indentLevel = 8;
        }

        v38 = *(&sIndentSpaceStrings + indentLevel);
        v39 = strlen(v38);
        p_appendBufferCount = &self->_appendBufferCount;
        appendBufferCount = self->_appendBufferCount;
        if ((appendBufferCount + v39) <= 1023)
        {
          v26 = v39;
          memcpy(&self->_appendBuffer[appendBufferCount], v38, v39);
          goto LABEL_46;
        }

        if (appendBufferCount >= 1)
        {
          self->_appendBuffer[appendBufferCount] = 0;
          CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
          *p_appendBufferCount = 0;
        }

        CFStringAppendCString(self->_string, v38, 0x8000100u);
LABEL_52:
        self->_emitPhase = 0;
        if (!name)
        {
          goto LABEL_84;
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (emitPhase != 1)
      {
        if (emitPhase == 2)
        {
          p_appendBufferCount = &self->_appendBufferCount;
          v24 = self->_appendBufferCount;
          appendBuffer = self->_appendBuffer;
          if (v24 <= 1022)
          {
            appendBuffer[v24] = 32;
            v26 = 1;
LABEL_46:
            *p_appendBufferCount += v26;
            goto LABEL_52;
          }

          appendBuffer[v24] = 0;
          CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
          p_string = &self->_string;
          v32 = " ";
LABEL_51:
          *p_appendBufferCount = 0;
          CFStringAppendCString(*p_string, v32, 0x8000100u);
          goto LABEL_52;
        }

LABEL_21:
        if (!name)
        {
          goto LABEL_84;
        }

LABEL_53:
        nameTruncation = v21->_nameTruncation;
        maximumNameLengthBeforeTruncation = v21->_maximumNameLengthBeforeTruncation;
        if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
        {
          self->_lineTruncation = 0;
        }

        else
        {
          self->_lineTruncation = nameTruncation;
          self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
          self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
        }

        v44 = [name length];
        v45 = self->_appendBufferCount;
        if (v45 + 3 * v44 > 1023)
        {
          if (v45 >= 1)
          {
            self->_appendBuffer[v45] = 0;
            CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
            self->_appendBufferCount = 0;
          }

          if (v44 > 341)
          {
            [(NSMutableString *)self->_string appendString:name];
            goto LABEL_67;
          }

          usedBufLen = 0;
          v101.location = 0;
          v101.length = v44;
          CFStringGetBytes(name, v101, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
          v46 = usedBufLen;
        }

        else
        {
          usedBufLen = 0;
          v100.location = 0;
          v100.length = v44;
          CFStringGetBytes(name, v100, 0x8000100u, 0, 0, &self->_appendBuffer[v45], 1024 - v45, &usedBufLen);
          v46 = self->_appendBufferCount + usedBufLen;
        }

        self->_appendBufferCount = v46;
LABEL_67:
        BSDescribeTruncationCommit(self);
        if (self->_proemNestCount <= 0)
        {
          v47 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
        }

        else
        {
          v47 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
        }

        v48 = *(&self->_style->super.isa + *v47);
        if (v48 < 2)
        {
          v52 = self->_appendBufferCount;
          v53 = self->_appendBuffer;
          if (v52 <= 1021)
          {
            *&v53[v52] = 8250;
            v51 = 2;
            goto LABEL_79;
          }

          v53[v52] = 0;
          CFStringAppendCString(self->_string, v53, 0x8000100u);
          v56 = ": ";
        }

        else if (v48 == 2)
        {
          v54 = self->_appendBufferCount;
          v55 = &self->_appendBuffer[v54];
          if (v54 <= 1020)
          {
            v55[2] = 32;
            *v55 = 15648;
            v51 = 3;
            goto LABEL_79;
          }

          *v55 = 0;
          CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
          v56 = " = ";
        }

        else
        {
          if (v48 != 3)
          {
            goto LABEL_84;
          }

          v49 = self->_appendBufferCount;
          v50 = self->_appendBuffer;
          if (v49 <= 1019)
          {
            *&v50[v49] = 540945696;
            v51 = 4;
LABEL_79:
            self->_appendBufferCount += v51;
            goto LABEL_84;
          }

          v50[v49] = 0;
          CFStringAppendCString(self->_string, v50, 0x8000100u);
          v56 = " -> ";
        }

        self->_appendBufferCount = 0;
        CFStringAppendCString(self->_string, v56, 0x8000100u);
LABEL_84:
        valueTruncation = v21->_valueTruncation;
        maximumValueLengthBeforeTruncation = v21->_maximumValueLengthBeforeTruncation;
        if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
        {
          maximumValueLengthBeforeTruncation = 0;
          v60 = 1096;
        }

        else
        {
          self->_lineTruncation = valueTruncation;
          self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
          v60 = 1088;
        }

        *(&self->super.isa + v60) = maximumValueLengthBeforeTruncation;

        v61 = [@"(inf)" length];
        v62 = self->_appendBufferCount;
        if (3 * v61 + v62 > 1023)
        {
          if (v62 >= 1)
          {
            self->_appendBuffer[v62] = 0;
            CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
            self->_appendBufferCount = 0;
          }

          if (v61 > 341)
          {
            [(NSMutableString *)self->_string appendString:@"(inf)"];
            goto LABEL_98;
          }

          usedBufLen = 0;
          v103.location = 0;
          v103.length = v61;
          CFStringGetBytes(@"(inf)", v103, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
          v63 = usedBufLen;
        }

        else
        {
          usedBufLen = 0;
          v102.location = 0;
          v102.length = v61;
          CFStringGetBytes(@"(inf)", v102, 0x8000100u, 0, 0, &self->_appendBuffer[v62], 1024 - v62, &usedBufLen);
          v63 = self->_appendBufferCount + usedBufLen;
        }

        self->_appendBufferCount = v63;
LABEL_98:
        self->_emitPhase = 1;
        BSDescribeTruncationCommit(self);
        goto LABEL_164;
      }

      p_appendBufferCount = &self->_appendBufferCount;
      v29 = self->_appendBufferCount;
      v30 = self->_appendBuffer;
      if (self->_style->_collectionLineBreak != 3)
      {
        if (v29 <= 1021)
        {
          *&v30[v29] = 8251;
          v26 = 2;
          goto LABEL_46;
        }

        v30[v29] = 0;
        CFStringAppendCString(self->_string, v30, 0x8000100u);
        p_string = &self->_string;
        v32 = "; ";
        goto LABEL_51;
      }

      if (v29 > 1022)
      {
        v30[v29] = 0;
        CFStringAppendCString(self->_string, v30, 0x8000100u);
        self->_appendBufferCount = 0;
        CFStringAppendCString(self->_string, ";", 0x8000100u);
      }

      else
      {
        v30[v29] = 59;
        ++*p_appendBufferCount;
      }
    }

    v35 = self->_appendBufferCount;
    v36 = self->_appendBuffer;
    if (v35 > 1022)
    {
      v36[v35] = 0;
      CFStringAppendCString(self->_string, v36, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      v36[v35] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_41;
  }

  v11 = (interval - interval) * 1000.0;
  if (!units)
  {
    if (fabs(v11) >= 2.22044605e-16)
    {
      appended = BSDescribeAppendFieldFormat(self, name, @"%.2fs", units, v5, v6, v7, v8, SLOBYTE(interval));
    }

    else
    {
      appended = BSDescribeAppendFieldFormat(self, name, @"%.1fs", units, v5, v6, v7, v8, SLOBYTE(interval));
    }

    v28 = appended;
    goto LABEL_164;
  }

  if (qword_1ED44FF98 != -1)
  {
    dispatch_once(&qword_1ED44FF98, &__block_literal_global_30);
  }

  v12 = [_MergedGlobals_28 stringFromTimeInterval:?];
  v13 = v12;
  if (fabs(v11) >= 2.22044605e-16)
  {
    v14 = [(__CFString *)v12 stringByAppendingFormat:@" %.0fms", *&v11];

    v13 = v14;
  }

  v15 = self->_style;
  v16 = self->_emitPhase;
  if (v16 <= 2)
  {
    if (v16 != 1)
    {
      if (v16 != 2)
      {
        goto LABEL_118;
      }

      v17 = &self->_appendBufferCount;
      v18 = self->_appendBufferCount;
      v19 = self->_appendBuffer;
      if (v18 <= 1022)
      {
        v19[v18] = 32;
        v20 = 1;
        goto LABEL_111;
      }

      v19[v18] = 0;
      CFStringAppendCString(self->_string, v19, 0x8000100u);
      v64 = &self->_string;
      v65 = " ";
LABEL_116:
      *v17 = 0;
      CFStringAppendCString(*v64, v65, 0x8000100u);
      goto LABEL_117;
    }

    v17 = &self->_appendBufferCount;
    v33 = self->_appendBufferCount;
    v34 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v33 <= 1021)
      {
        *&v34[v33] = 8251;
        v20 = 2;
        goto LABEL_111;
      }

      v34[v33] = 0;
      CFStringAppendCString(self->_string, v34, 0x8000100u);
      v64 = &self->_string;
      v65 = "; ";
      goto LABEL_116;
    }

    if (v33 > 1022)
    {
      v34[v33] = 0;
      CFStringAppendCString(self->_string, v34, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v34[v33] = 59;
      ++*v17;
    }

    goto LABEL_103;
  }

  if (v16 == 3)
  {
LABEL_103:
    v66 = self->_appendBufferCount;
    v67 = self->_appendBuffer;
    if (v66 > 1022)
    {
      v67[v66] = 0;
      CFStringAppendCString(self->_string, v67, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      v67[v66] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_106;
  }

  if (v16 == 4)
  {
LABEL_106:
    v68 = self->_indentLevel;
    if (v68 < 1)
    {
LABEL_117:
      self->_emitPhase = 0;
      goto LABEL_118;
    }

    if (v68 >= 8)
    {
      v68 = 8;
    }

    v69 = *(&sIndentSpaceStrings + v68);
    v70 = strlen(v69);
    v17 = &self->_appendBufferCount;
    v71 = self->_appendBufferCount;
    if ((v71 + v70) > 1023)
    {
      if (v71 >= 1)
      {
        self->_appendBuffer[v71] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *v17 = 0;
      }

      CFStringAppendCString(self->_string, v69, 0x8000100u);
      goto LABEL_117;
    }

    v20 = v70;
    memcpy(&self->_appendBuffer[v71], v69, v70);
LABEL_111:
    *v17 += v20;
    goto LABEL_117;
  }

LABEL_118:
  if (!name)
  {
    goto LABEL_148;
  }

  v72 = v15->_nameTruncation;
  if (v72 < 2 || (v73 = v15->_maximumNameLengthBeforeTruncation, v73 < 1))
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = v72;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = v73;
  }

  v74 = [name length];
  v75 = self->_appendBufferCount;
  if (v75 + 3 * v74 > 1023)
  {
    if (v75 >= 1)
    {
      self->_appendBuffer[v75] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v74 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_131;
    }

    usedBufLen = 0;
    v105.location = 0;
    v105.length = v74;
    CFStringGetBytes(name, v105, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v76 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v104.location = 0;
    v104.length = v74;
    CFStringGetBytes(name, v104, 0x8000100u, 0, 0, &self->_appendBuffer[v75], 1024 - v75, &usedBufLen);
    v76 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v76;
LABEL_131:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v77 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v77 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v78 = *(&self->_style->super.isa + *v77);
  if (v78 < 2)
  {
    v82 = self->_appendBufferCount;
    v83 = self->_appendBuffer;
    if (v82 <= 1021)
    {
      *&v83[v82] = 8250;
      v81 = 2;
      goto LABEL_143;
    }

    v83[v82] = 0;
    CFStringAppendCString(self->_string, v83, 0x8000100u);
    v86 = ": ";
LABEL_147:
    self->_appendBufferCount = 0;
    CFStringAppendCString(self->_string, v86, 0x8000100u);
    goto LABEL_148;
  }

  if (v78 == 2)
  {
    v84 = self->_appendBufferCount;
    v85 = &self->_appendBuffer[v84];
    if (v84 <= 1020)
    {
      v85[2] = 32;
      *v85 = 15648;
      v81 = 3;
      goto LABEL_143;
    }

    *v85 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v86 = " = ";
    goto LABEL_147;
  }

  if (v78 == 3)
  {
    v79 = self->_appendBufferCount;
    v80 = self->_appendBuffer;
    if (v79 <= 1019)
    {
      *&v80[v79] = 540945696;
      v81 = 4;
LABEL_143:
      self->_appendBufferCount += v81;
      goto LABEL_148;
    }

    v80[v79] = 0;
    CFStringAppendCString(self->_string, v80, 0x8000100u);
    v86 = " -> ";
    goto LABEL_147;
  }

LABEL_148:
  v87 = 0;
  v88 = v15->_valueTruncation;
  v89 = 1096;
  if (v88 >= 2)
  {
    v90 = v15->_maximumValueLengthBeforeTruncation;
    if (v90 >= 1)
    {
      self->_lineTruncation = v88;
      self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
      v89 = 1088;
      v87 = v90;
    }
  }

  *(&self->super.isa + v89) = v87;

  if (v13)
  {
    v91 = [(__CFString *)v13 length];
    v92 = self->_appendBufferCount;
    if (v92 + 3 * v91 > 1023)
    {
      if (v92 >= 1)
      {
        self->_appendBuffer[v92] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        self->_appendBufferCount = 0;
      }

      if (v91 > 341)
      {
        [(NSMutableString *)self->_string appendString:v13];
        goto LABEL_163;
      }

      usedBufLen = 0;
      v107.location = 0;
      v107.length = v91;
      CFStringGetBytes(v13, v107, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
      v93 = usedBufLen;
    }

    else
    {
      usedBufLen = 0;
      v106.location = 0;
      v106.length = v91;
      CFStringGetBytes(v13, v106, 0x8000100u, 0, 0, &self->_appendBuffer[v92], 1024 - v92, &usedBufLen);
      v93 = self->_appendBufferCount + usedBufLen;
    }
  }

  else
  {
    v94 = self->_appendBufferCount;
    v95 = &self->_appendBuffer[v94];
    if (v94 > 1018)
    {
      *v95 = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "<nil>", 0x8000100u);
      goto LABEL_163;
    }

    v95[4] = 62;
    *v95 = 1818848828;
    v93 = self->_appendBufferCount + 5;
  }

  self->_appendBufferCount = v93;
LABEL_163:
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);

LABEL_164:
  selfCopy = self;

  return self;
}

uint64_t __66__BSDescriptionStream_appendTimeInterval_withName_decomposeUnits___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = _MergedGlobals_28;
  _MergedGlobals_28 = v0;

  v2 = _MergedGlobals_28;

  return [v2 setUnitsStyle:1];
}

- (id)appendPointer:(void *)pointer withName:(id)name
{
  v8 = BSDescribeAppendFieldFormat(self, name, @"%p", name, v4, v5, v6, v7, pointer);

  return v8;
}

- (id)appendPoint:(CGPoint)point withName:(id)name
{
  y = point.y;
  x = point.x;
  v8 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_31;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v21 = *(&sIndentSpaceStrings + indentLevel);
      v22 = strlen(v21);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v22) <= 1023)
      {
        v13 = v22;
        memcpy(&self->_appendBuffer[appendBufferCount], v21, v22);
        goto LABEL_25;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v21, 0x8000100u);
LABEL_31:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_63;
      }

      goto LABEL_32;
    }

LABEL_17:
    v18 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v18 > 1022)
    {
      appendBuffer[v18] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v18] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v14 = self->_appendBufferCount;
    v15 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v14 <= 1021)
      {
        *&v15[v14] = 8251;
        v13 = 2;
        goto LABEL_25;
      }

      v15[v14] = 0;
      CFStringAppendCString(self->_string, v15, 0x8000100u);
      p_string = &self->_string;
      v17 = "; ";
      goto LABEL_30;
    }

    if (v14 > 1022)
    {
      v15[v14] = 0;
      CFStringAppendCString(self->_string, v15, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v15[v14] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v11 = self->_appendBufferCount;
    v12 = self->_appendBuffer;
    if (v11 <= 1022)
    {
      v12[v11] = 32;
      v13 = 1;
LABEL_25:
      *p_appendBufferCount += v13;
      goto LABEL_31;
    }

    v12[v11] = 0;
    CFStringAppendCString(self->_string, v12, 0x8000100u);
    p_string = &self->_string;
    v17 = " ";
LABEL_30:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v17, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!name)
  {
    goto LABEL_63;
  }

LABEL_32:
  nameTruncation = v8->_nameTruncation;
  maximumNameLengthBeforeTruncation = v8->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v27 = [name length];
  v28 = self->_appendBufferCount;
  if (v28 + 3 * v27 > 1023)
  {
    if (v28 >= 1)
    {
      self->_appendBuffer[v28] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v27 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_46;
    }

    usedBufLen = 0;
    v48.location = 0;
    v48.length = v27;
    CFStringGetBytes(name, v48, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v29 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v47.location = 0;
    v47.length = v27;
    CFStringGetBytes(name, v47, 0x8000100u, 0, 0, &self->_appendBuffer[v28], 1024 - v28, &usedBufLen);
    v29 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v29;
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v30 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v30 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v31 = *(&self->_style->super.isa + *v30);
  if (v31 < 2)
  {
    v35 = self->_appendBufferCount;
    v36 = self->_appendBuffer;
    if (v35 <= 1021)
    {
      *&v36[v35] = 8250;
      v34 = 2;
      goto LABEL_58;
    }

    v36[v35] = 0;
    CFStringAppendCString(self->_string, v36, 0x8000100u);
    v39 = ": ";
  }

  else if (v31 == 2)
  {
    v37 = self->_appendBufferCount;
    v38 = &self->_appendBuffer[v37];
    if (v37 <= 1020)
    {
      v38[2] = 32;
      *v38 = 15648;
      v34 = 3;
      goto LABEL_58;
    }

    *v38 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v39 = " = ";
  }

  else
  {
    if (v31 != 3)
    {
      goto LABEL_63;
    }

    v32 = self->_appendBufferCount;
    v33 = self->_appendBuffer;
    if (v32 <= 1019)
    {
      *&v33[v32] = 540945696;
      v34 = 4;
LABEL_58:
      self->_appendBufferCount += v34;
      goto LABEL_63;
    }

    v33[v32] = 0;
    CFStringAppendCString(self->_string, v33, 0x8000100u);
    v39 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v39, 0x8000100u);
LABEL_63:
  valueTruncation = v8->_valueTruncation;
  maximumValueLengthBeforeTruncation = v8->_maximumValueLengthBeforeTruncation;
  if (valueTruncation <= 1 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v43 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v43 = 1088;
  }

  *(&self->super.isa + v43) = maximumValueLengthBeforeTruncation;

  v44 = self->_appendBufferCount;
  if (v44 >= 1)
  {
    self->_appendBuffer[v44] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
  }

  [(NSMutableString *)self->_string appendFormat:@"{%.*g, %.*g}", 17, *&x, 17, *&y];
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);
  return self;
}

- (id)appendSize:(CGSize)size withName:(id)name
{
  height = size.height;
  width = size.width;
  v8 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_31;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v21 = *(&sIndentSpaceStrings + indentLevel);
      v22 = strlen(v21);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v22) <= 1023)
      {
        v13 = v22;
        memcpy(&self->_appendBuffer[appendBufferCount], v21, v22);
        goto LABEL_25;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v21, 0x8000100u);
LABEL_31:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_63;
      }

      goto LABEL_32;
    }

LABEL_17:
    v18 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v18 > 1022)
    {
      appendBuffer[v18] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v18] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v14 = self->_appendBufferCount;
    v15 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v14 <= 1021)
      {
        *&v15[v14] = 8251;
        v13 = 2;
        goto LABEL_25;
      }

      v15[v14] = 0;
      CFStringAppendCString(self->_string, v15, 0x8000100u);
      p_string = &self->_string;
      v17 = "; ";
      goto LABEL_30;
    }

    if (v14 > 1022)
    {
      v15[v14] = 0;
      CFStringAppendCString(self->_string, v15, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v15[v14] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v11 = self->_appendBufferCount;
    v12 = self->_appendBuffer;
    if (v11 <= 1022)
    {
      v12[v11] = 32;
      v13 = 1;
LABEL_25:
      *p_appendBufferCount += v13;
      goto LABEL_31;
    }

    v12[v11] = 0;
    CFStringAppendCString(self->_string, v12, 0x8000100u);
    p_string = &self->_string;
    v17 = " ";
LABEL_30:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v17, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!name)
  {
    goto LABEL_63;
  }

LABEL_32:
  nameTruncation = v8->_nameTruncation;
  maximumNameLengthBeforeTruncation = v8->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v27 = [name length];
  v28 = self->_appendBufferCount;
  if (v28 + 3 * v27 > 1023)
  {
    if (v28 >= 1)
    {
      self->_appendBuffer[v28] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v27 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_46;
    }

    usedBufLen = 0;
    v48.location = 0;
    v48.length = v27;
    CFStringGetBytes(name, v48, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v29 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v47.location = 0;
    v47.length = v27;
    CFStringGetBytes(name, v47, 0x8000100u, 0, 0, &self->_appendBuffer[v28], 1024 - v28, &usedBufLen);
    v29 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v29;
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v30 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v30 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v31 = *(&self->_style->super.isa + *v30);
  if (v31 < 2)
  {
    v35 = self->_appendBufferCount;
    v36 = self->_appendBuffer;
    if (v35 <= 1021)
    {
      *&v36[v35] = 8250;
      v34 = 2;
      goto LABEL_58;
    }

    v36[v35] = 0;
    CFStringAppendCString(self->_string, v36, 0x8000100u);
    v39 = ": ";
  }

  else if (v31 == 2)
  {
    v37 = self->_appendBufferCount;
    v38 = &self->_appendBuffer[v37];
    if (v37 <= 1020)
    {
      v38[2] = 32;
      *v38 = 15648;
      v34 = 3;
      goto LABEL_58;
    }

    *v38 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v39 = " = ";
  }

  else
  {
    if (v31 != 3)
    {
      goto LABEL_63;
    }

    v32 = self->_appendBufferCount;
    v33 = self->_appendBuffer;
    if (v32 <= 1019)
    {
      *&v33[v32] = 540945696;
      v34 = 4;
LABEL_58:
      self->_appendBufferCount += v34;
      goto LABEL_63;
    }

    v33[v32] = 0;
    CFStringAppendCString(self->_string, v33, 0x8000100u);
    v39 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v39, 0x8000100u);
LABEL_63:
  valueTruncation = v8->_valueTruncation;
  maximumValueLengthBeforeTruncation = v8->_maximumValueLengthBeforeTruncation;
  if (valueTruncation <= 1 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v43 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v43 = 1088;
  }

  *(&self->super.isa + v43) = maximumValueLengthBeforeTruncation;

  v44 = self->_appendBufferCount;
  if (v44 >= 1)
  {
    self->_appendBuffer[v44] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
  }

  [(NSMutableString *)self->_string appendFormat:@"{%.*g, %.*g}", 17, *&width, 17, *&height];
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);
  return self;
}

- (id)appendRect:(CGRect)rect withName:(id)name
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_31;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v23 = *(&sIndentSpaceStrings + indentLevel);
      v24 = strlen(v23);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v24) <= 1023)
      {
        v15 = v24;
        memcpy(&self->_appendBuffer[appendBufferCount], v23, v24);
        goto LABEL_25;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v23, 0x8000100u);
LABEL_31:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_63;
      }

      goto LABEL_32;
    }

LABEL_17:
    v20 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v20 > 1022)
    {
      appendBuffer[v20] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v20] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v16 = self->_appendBufferCount;
    v17 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v16 <= 1021)
      {
        *&v17[v16] = 8251;
        v15 = 2;
        goto LABEL_25;
      }

      v17[v16] = 0;
      CFStringAppendCString(self->_string, v17, 0x8000100u);
      p_string = &self->_string;
      v19 = "; ";
      goto LABEL_30;
    }

    if (v16 > 1022)
    {
      v17[v16] = 0;
      CFStringAppendCString(self->_string, v17, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v17[v16] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v13 = self->_appendBufferCount;
    v14 = self->_appendBuffer;
    if (v13 <= 1022)
    {
      v14[v13] = 32;
      v15 = 1;
LABEL_25:
      *p_appendBufferCount += v15;
      goto LABEL_31;
    }

    v14[v13] = 0;
    CFStringAppendCString(self->_string, v14, 0x8000100u);
    p_string = &self->_string;
    v19 = " ";
LABEL_30:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v19, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!name)
  {
    goto LABEL_63;
  }

LABEL_32:
  nameTruncation = v10->_nameTruncation;
  maximumNameLengthBeforeTruncation = v10->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v29 = [name length];
  v30 = self->_appendBufferCount;
  if (v30 + 3 * v29 > 1023)
  {
    if (v30 >= 1)
    {
      self->_appendBuffer[v30] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v29 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_46;
    }

    usedBufLen = 0;
    v55.location = 0;
    v55.length = v29;
    CFStringGetBytes(name, v55, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v31 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v54.location = 0;
    v54.length = v29;
    CFStringGetBytes(name, v54, 0x8000100u, 0, 0, &self->_appendBuffer[v30], 1024 - v30, &usedBufLen);
    v31 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v31;
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v32 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v32 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v33 = *(&self->_style->super.isa + *v32);
  if (v33 < 2)
  {
    v37 = self->_appendBufferCount;
    v38 = self->_appendBuffer;
    if (v37 <= 1021)
    {
      *&v38[v37] = 8250;
      v36 = 2;
      goto LABEL_58;
    }

    v38[v37] = 0;
    CFStringAppendCString(self->_string, v38, 0x8000100u);
    v41 = ": ";
  }

  else if (v33 == 2)
  {
    v39 = self->_appendBufferCount;
    v40 = &self->_appendBuffer[v39];
    if (v39 <= 1020)
    {
      v40[2] = 32;
      *v40 = 15648;
      v36 = 3;
      goto LABEL_58;
    }

    *v40 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v41 = " = ";
  }

  else
  {
    if (v33 != 3)
    {
      goto LABEL_63;
    }

    v34 = self->_appendBufferCount;
    v35 = self->_appendBuffer;
    if (v34 <= 1019)
    {
      *&v35[v34] = 540945696;
      v36 = 4;
LABEL_58:
      self->_appendBufferCount += v36;
      goto LABEL_63;
    }

    v35[v34] = 0;
    CFStringAppendCString(self->_string, v35, 0x8000100u);
    v41 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v41, 0x8000100u);
LABEL_63:
  valueTruncation = v10->_valueTruncation;
  maximumValueLengthBeforeTruncation = v10->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v45 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v45 = 1088;
  }

  *(&self->super.isa + v45) = maximumValueLengthBeforeTruncation;

  v46 = self->_appendBufferCount;
  v47 = self->_appendBuffer;
  if (v46 > 1022)
  {
    v47[v46] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
    CFStringAppendCString(self->_string, "{", 0x8000100u);
    v48 = self->_appendBufferCount;
  }

  else
  {
    v47[v46] = 123;
    v48 = self->_appendBufferCount + 1;
    self->_appendBufferCount = v48;
  }

  if (v48 >= 1)
  {
    v47[v48] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
  }

  [(NSMutableString *)self->_string appendFormat:@"{%.*g, %.*g}", 17, *&x, 17, *&y];
  v49 = self->_appendBufferCount;
  if (v49 > 1021)
  {
    v47[v49] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
    CFStringAppendCString(self->_string, ", ", 0x8000100u);
    v50 = self->_appendBufferCount;
  }

  else
  {
    *&v47[v49] = 8236;
    v50 = self->_appendBufferCount + 2;
    self->_appendBufferCount = v50;
  }

  if (v50 >= 1)
  {
    v47[v50] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
  }

  [(NSMutableString *)self->_string appendFormat:@"{%.*g, %.*g}", 17, *&width, 17, *&height];
  v51 = self->_appendBufferCount;
  if (v51 > 1022)
  {
    v47[v51] = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
    CFStringAppendCString(self->_string, "}", 0x8000100u);
  }

  else
  {
    v47[v51] = 125;
    ++self->_appendBufferCount;
  }

  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);
  return self;
}

- (id)appendSelector:(SEL)selector withName:(id)name
{
  v6 = NSStringFromSelector(selector);
  v7 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_31;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v20 = *(&sIndentSpaceStrings + indentLevel);
      v21 = strlen(v20);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v21) <= 1023)
      {
        v12 = v21;
        memcpy(&self->_appendBuffer[appendBufferCount], v20, v21);
        goto LABEL_25;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v20, 0x8000100u);
LABEL_31:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_63;
      }

      goto LABEL_32;
    }

LABEL_17:
    v17 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v17 > 1022)
    {
      appendBuffer[v17] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v17] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v13 = self->_appendBufferCount;
    v14 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v13 <= 1021)
      {
        *&v14[v13] = 8251;
        v12 = 2;
        goto LABEL_25;
      }

      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      p_string = &self->_string;
      v16 = "; ";
      goto LABEL_30;
    }

    if (v13 > 1022)
    {
      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v14[v13] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v10 = self->_appendBufferCount;
    v11 = self->_appendBuffer;
    if (v10 <= 1022)
    {
      v11[v10] = 32;
      v12 = 1;
LABEL_25:
      *p_appendBufferCount += v12;
      goto LABEL_31;
    }

    v11[v10] = 0;
    CFStringAppendCString(self->_string, v11, 0x8000100u);
    p_string = &self->_string;
    v16 = " ";
LABEL_30:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v16, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!name)
  {
    goto LABEL_63;
  }

LABEL_32:
  nameTruncation = v7->_nameTruncation;
  maximumNameLengthBeforeTruncation = v7->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v26 = [name length];
  v27 = self->_appendBufferCount;
  if (v27 + 3 * v26 > 1023)
  {
    if (v27 >= 1)
    {
      self->_appendBuffer[v27] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v26 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_46;
    }

    usedBufLen = 0;
    v52.location = 0;
    v52.length = v26;
    CFStringGetBytes(name, v52, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v28 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v51.location = 0;
    v51.length = v26;
    CFStringGetBytes(name, v51, 0x8000100u, 0, 0, &self->_appendBuffer[v27], 1024 - v27, &usedBufLen);
    v28 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v28;
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v30 = *(&self->_style->super.isa + *v29);
  if (v30 < 2)
  {
    v34 = self->_appendBufferCount;
    v35 = self->_appendBuffer;
    if (v34 <= 1021)
    {
      *&v35[v34] = 8250;
      v33 = 2;
      goto LABEL_58;
    }

    v35[v34] = 0;
    CFStringAppendCString(self->_string, v35, 0x8000100u);
    v38 = ": ";
  }

  else if (v30 == 2)
  {
    v36 = self->_appendBufferCount;
    v37 = &self->_appendBuffer[v36];
    if (v36 <= 1020)
    {
      v37[2] = 32;
      *v37 = 15648;
      v33 = 3;
      goto LABEL_58;
    }

    *v37 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v38 = " = ";
  }

  else
  {
    if (v30 != 3)
    {
      goto LABEL_63;
    }

    v31 = self->_appendBufferCount;
    v32 = self->_appendBuffer;
    if (v31 <= 1019)
    {
      *&v32[v31] = 540945696;
      v33 = 4;
LABEL_58:
      self->_appendBufferCount += v33;
      goto LABEL_63;
    }

    v32[v31] = 0;
    CFStringAppendCString(self->_string, v32, 0x8000100u);
    v38 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v38, 0x8000100u);
LABEL_63:
  valueTruncation = v7->_valueTruncation;
  maximumValueLengthBeforeTruncation = v7->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v42 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v42 = 1088;
  }

  *(&self->super.isa + v42) = maximumValueLengthBeforeTruncation;

  if (v6)
  {
    v43 = [(__CFString *)v6 length];
    v44 = self->_appendBufferCount;
    if (v44 + 3 * v43 > 1023)
    {
      if (v44 >= 1)
      {
        self->_appendBuffer[v44] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        self->_appendBufferCount = 0;
      }

      if (v43 > 341)
      {
        [(NSMutableString *)self->_string appendString:v6];
        goto LABEL_81;
      }

      usedBufLen = 0;
      v54.location = 0;
      v54.length = v43;
      CFStringGetBytes(v6, v54, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
      v45 = usedBufLen;
    }

    else
    {
      usedBufLen = 0;
      v53.location = 0;
      v53.length = v43;
      CFStringGetBytes(v6, v53, 0x8000100u, 0, 0, &self->_appendBuffer[v44], 1024 - v44, &usedBufLen);
      v45 = self->_appendBufferCount + usedBufLen;
    }
  }

  else
  {
    v46 = self->_appendBufferCount;
    v47 = &self->_appendBuffer[v46];
    if (v46 > 1018)
    {
      *v47 = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "<nil>", 0x8000100u);
      goto LABEL_81;
    }

    v47[4] = 62;
    *v47 = 1818848828;
    v45 = self->_appendBufferCount + 5;
  }

  self->_appendBufferCount = v45;
LABEL_81:
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);
  selfCopy = self;

  return self;
}

- (id)appendCString:(const char *)string withName:(id)name
{
  v7 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_31;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v20 = *(&sIndentSpaceStrings + indentLevel);
      v21 = strlen(v20);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v21) <= 1023)
      {
        v12 = v21;
        memcpy(&self->_appendBuffer[appendBufferCount], v20, v21);
        goto LABEL_25;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v20, 0x8000100u);
LABEL_31:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_63;
      }

      goto LABEL_32;
    }

LABEL_17:
    v17 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v17 > 1022)
    {
      appendBuffer[v17] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v17] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v13 = self->_appendBufferCount;
    v14 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v13 <= 1021)
      {
        *&v14[v13] = 8251;
        v12 = 2;
        goto LABEL_25;
      }

      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      p_string = &self->_string;
      v16 = "; ";
      goto LABEL_30;
    }

    if (v13 > 1022)
    {
      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v14[v13] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v10 = self->_appendBufferCount;
    v11 = self->_appendBuffer;
    if (v10 <= 1022)
    {
      v11[v10] = 32;
      v12 = 1;
LABEL_25:
      *p_appendBufferCount += v12;
      goto LABEL_31;
    }

    v11[v10] = 0;
    CFStringAppendCString(self->_string, v11, 0x8000100u);
    p_string = &self->_string;
    v16 = " ";
LABEL_30:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v16, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!name)
  {
    goto LABEL_63;
  }

LABEL_32:
  nameTruncation = v7->_nameTruncation;
  maximumNameLengthBeforeTruncation = v7->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v26 = [name length];
  v27 = self->_appendBufferCount;
  if (v27 + 3 * v26 > 1023)
  {
    if (v27 >= 1)
    {
      self->_appendBuffer[v27] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v26 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_46;
    }

    usedBufLen = 0;
    v55.location = 0;
    v55.length = v26;
    CFStringGetBytes(name, v55, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v28 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v54.location = 0;
    v54.length = v26;
    CFStringGetBytes(name, v54, 0x8000100u, 0, 0, &self->_appendBuffer[v27], 1024 - v27, &usedBufLen);
    v28 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v28;
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v30 = *(&self->_style->super.isa + *v29);
  if (v30 < 2)
  {
    v34 = self->_appendBufferCount;
    v35 = self->_appendBuffer;
    if (v34 <= 1021)
    {
      *&v35[v34] = 8250;
      v33 = 2;
      goto LABEL_58;
    }

    v35[v34] = 0;
    CFStringAppendCString(self->_string, v35, 0x8000100u);
    v38 = ": ";
  }

  else if (v30 == 2)
  {
    v36 = self->_appendBufferCount;
    v37 = &self->_appendBuffer[v36];
    if (v36 <= 1020)
    {
      v37[2] = 32;
      *v37 = 15648;
      v33 = 3;
      goto LABEL_58;
    }

    *v37 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v38 = " = ";
  }

  else
  {
    if (v30 != 3)
    {
      goto LABEL_63;
    }

    v31 = self->_appendBufferCount;
    v32 = self->_appendBuffer;
    if (v31 <= 1019)
    {
      *&v32[v31] = 540945696;
      v33 = 4;
LABEL_58:
      self->_appendBufferCount += v33;
      goto LABEL_63;
    }

    v32[v31] = 0;
    CFStringAppendCString(self->_string, v32, 0x8000100u);
    v38 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v38, 0x8000100u);
LABEL_63:
  valueTruncation = v7->_valueTruncation;
  maximumValueLengthBeforeTruncation = v7->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v42 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v42 = 1088;
  }

  *(&self->super.isa + v42) = maximumValueLengthBeforeTruncation;

  if (string)
  {
    v43 = strlen(string);
    v44 = self->_appendBufferCount;
    if ((v44 + v43) <= 1023)
    {
      v45 = v43;
      memcpy(&self->_appendBuffer[v44], string, v43);
      v46 = self->_appendBufferCount + v45;
LABEL_74:
      self->_appendBufferCount = v46;
      goto LABEL_80;
    }

    if (v44 >= 1)
    {
      self->_appendBuffer[v44] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    string = self->_string;
    stringCopy = string;
  }

  else
  {
    v47 = self->_appendBufferCount;
    v48 = &self->_appendBuffer[v47];
    if (v47 <= 1018)
    {
      v48[4] = 62;
      *v48 = 1818848828;
      v46 = self->_appendBufferCount + 5;
      goto LABEL_74;
    }

    *v48 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
    string = self->_string;
    stringCopy = "<nil>";
  }

  CFStringAppendCString(string, stringCopy, 0x8000100u);
LABEL_80:
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);

  return self;
}

- (id)appendQueue:(id)queue withName:(id)name
{
  label = dispatch_queue_get_label(queue);
  v7 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_31;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v20 = *(&sIndentSpaceStrings + indentLevel);
      v21 = strlen(v20);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v21) <= 1023)
      {
        v12 = v21;
        memcpy(&self->_appendBuffer[appendBufferCount], v20, v21);
        goto LABEL_25;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v20, 0x8000100u);
LABEL_31:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_63;
      }

      goto LABEL_32;
    }

LABEL_17:
    v17 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v17 > 1022)
    {
      appendBuffer[v17] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v17] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v13 = self->_appendBufferCount;
    v14 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v13 <= 1021)
      {
        *&v14[v13] = 8251;
        v12 = 2;
        goto LABEL_25;
      }

      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      p_string = &self->_string;
      v16 = "; ";
      goto LABEL_30;
    }

    if (v13 > 1022)
    {
      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v14[v13] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v10 = self->_appendBufferCount;
    v11 = self->_appendBuffer;
    if (v10 <= 1022)
    {
      v11[v10] = 32;
      v12 = 1;
LABEL_25:
      *p_appendBufferCount += v12;
      goto LABEL_31;
    }

    v11[v10] = 0;
    CFStringAppendCString(self->_string, v11, 0x8000100u);
    p_string = &self->_string;
    v16 = " ";
LABEL_30:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v16, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!name)
  {
    goto LABEL_63;
  }

LABEL_32:
  nameTruncation = v7->_nameTruncation;
  maximumNameLengthBeforeTruncation = v7->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v26 = [name length];
  v27 = self->_appendBufferCount;
  if (v27 + 3 * v26 > 1023)
  {
    if (v27 >= 1)
    {
      self->_appendBuffer[v27] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v26 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_46;
    }

    usedBufLen = 0;
    v55.location = 0;
    v55.length = v26;
    CFStringGetBytes(name, v55, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v28 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v54.location = 0;
    v54.length = v26;
    CFStringGetBytes(name, v54, 0x8000100u, 0, 0, &self->_appendBuffer[v27], 1024 - v27, &usedBufLen);
    v28 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v28;
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v30 = *(&self->_style->super.isa + *v29);
  if (v30 < 2)
  {
    v34 = self->_appendBufferCount;
    v35 = self->_appendBuffer;
    if (v34 <= 1021)
    {
      *&v35[v34] = 8250;
      v33 = 2;
      goto LABEL_58;
    }

    v35[v34] = 0;
    CFStringAppendCString(self->_string, v35, 0x8000100u);
    v38 = ": ";
  }

  else if (v30 == 2)
  {
    v36 = self->_appendBufferCount;
    v37 = &self->_appendBuffer[v36];
    if (v36 <= 1020)
    {
      v37[2] = 32;
      *v37 = 15648;
      v33 = 3;
      goto LABEL_58;
    }

    *v37 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v38 = " = ";
  }

  else
  {
    if (v30 != 3)
    {
      goto LABEL_63;
    }

    v31 = self->_appendBufferCount;
    v32 = self->_appendBuffer;
    if (v31 <= 1019)
    {
      *&v32[v31] = 540945696;
      v33 = 4;
LABEL_58:
      self->_appendBufferCount += v33;
      goto LABEL_63;
    }

    v32[v31] = 0;
    CFStringAppendCString(self->_string, v32, 0x8000100u);
    v38 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v38, 0x8000100u);
LABEL_63:
  valueTruncation = v7->_valueTruncation;
  maximumValueLengthBeforeTruncation = v7->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v42 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v42 = 1088;
  }

  *(&self->super.isa + v42) = maximumValueLengthBeforeTruncation;

  if (label)
  {
    v43 = strlen(label);
    v44 = self->_appendBufferCount;
    if ((v44 + v43) <= 1023)
    {
      v45 = v43;
      memcpy(&self->_appendBuffer[v44], label, v43);
      v46 = self->_appendBufferCount + v45;
LABEL_74:
      self->_appendBufferCount = v46;
      goto LABEL_80;
    }

    if (v44 >= 1)
    {
      self->_appendBuffer[v44] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    string = self->_string;
    v50 = label;
  }

  else
  {
    v47 = self->_appendBufferCount;
    v48 = &self->_appendBuffer[v47];
    if (v47 <= 1018)
    {
      v48[4] = 62;
      *v48 = 1818848828;
      v46 = self->_appendBufferCount + 5;
      goto LABEL_74;
    }

    *v48 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    self->_appendBufferCount = 0;
    string = self->_string;
    v50 = "<nil>";
  }

  CFStringAppendCString(string, v50, 0x8000100u);
LABEL_80:
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);

  return self;
}

- (id)appendClass:(Class)class withName:(id)name
{
  v6 = NSStringFromClass(class);
  v7 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_31;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v20 = *(&sIndentSpaceStrings + indentLevel);
      v21 = strlen(v20);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v21) <= 1023)
      {
        v12 = v21;
        memcpy(&self->_appendBuffer[appendBufferCount], v20, v21);
        goto LABEL_25;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v20, 0x8000100u);
LABEL_31:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_63;
      }

      goto LABEL_32;
    }

LABEL_17:
    v17 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v17 > 1022)
    {
      appendBuffer[v17] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v17] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v13 = self->_appendBufferCount;
    v14 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v13 <= 1021)
      {
        *&v14[v13] = 8251;
        v12 = 2;
        goto LABEL_25;
      }

      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      p_string = &self->_string;
      v16 = "; ";
      goto LABEL_30;
    }

    if (v13 > 1022)
    {
      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v14[v13] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v10 = self->_appendBufferCount;
    v11 = self->_appendBuffer;
    if (v10 <= 1022)
    {
      v11[v10] = 32;
      v12 = 1;
LABEL_25:
      *p_appendBufferCount += v12;
      goto LABEL_31;
    }

    v11[v10] = 0;
    CFStringAppendCString(self->_string, v11, 0x8000100u);
    p_string = &self->_string;
    v16 = " ";
LABEL_30:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v16, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!name)
  {
    goto LABEL_63;
  }

LABEL_32:
  nameTruncation = v7->_nameTruncation;
  maximumNameLengthBeforeTruncation = v7->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v26 = [name length];
  v27 = self->_appendBufferCount;
  if (v27 + 3 * v26 > 1023)
  {
    if (v27 >= 1)
    {
      self->_appendBuffer[v27] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v26 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_46;
    }

    usedBufLen = 0;
    v52.location = 0;
    v52.length = v26;
    CFStringGetBytes(name, v52, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v28 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v51.location = 0;
    v51.length = v26;
    CFStringGetBytes(name, v51, 0x8000100u, 0, 0, &self->_appendBuffer[v27], 1024 - v27, &usedBufLen);
    v28 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v28;
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v30 = *(&self->_style->super.isa + *v29);
  if (v30 < 2)
  {
    v34 = self->_appendBufferCount;
    v35 = self->_appendBuffer;
    if (v34 <= 1021)
    {
      *&v35[v34] = 8250;
      v33 = 2;
      goto LABEL_58;
    }

    v35[v34] = 0;
    CFStringAppendCString(self->_string, v35, 0x8000100u);
    v38 = ": ";
  }

  else if (v30 == 2)
  {
    v36 = self->_appendBufferCount;
    v37 = &self->_appendBuffer[v36];
    if (v36 <= 1020)
    {
      v37[2] = 32;
      *v37 = 15648;
      v33 = 3;
      goto LABEL_58;
    }

    *v37 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v38 = " = ";
  }

  else
  {
    if (v30 != 3)
    {
      goto LABEL_63;
    }

    v31 = self->_appendBufferCount;
    v32 = self->_appendBuffer;
    if (v31 <= 1019)
    {
      *&v32[v31] = 540945696;
      v33 = 4;
LABEL_58:
      self->_appendBufferCount += v33;
      goto LABEL_63;
    }

    v32[v31] = 0;
    CFStringAppendCString(self->_string, v32, 0x8000100u);
    v38 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v38, 0x8000100u);
LABEL_63:
  valueTruncation = v7->_valueTruncation;
  maximumValueLengthBeforeTruncation = v7->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v42 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v42 = 1088;
  }

  *(&self->super.isa + v42) = maximumValueLengthBeforeTruncation;

  if (v6)
  {
    v43 = [(__CFString *)v6 length];
    v44 = self->_appendBufferCount;
    if (v44 + 3 * v43 > 1023)
    {
      if (v44 >= 1)
      {
        self->_appendBuffer[v44] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        self->_appendBufferCount = 0;
      }

      if (v43 > 341)
      {
        [(NSMutableString *)self->_string appendString:v6];
        goto LABEL_81;
      }

      usedBufLen = 0;
      v54.location = 0;
      v54.length = v43;
      CFStringGetBytes(v6, v54, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
      v45 = usedBufLen;
    }

    else
    {
      usedBufLen = 0;
      v53.location = 0;
      v53.length = v43;
      CFStringGetBytes(v6, v53, 0x8000100u, 0, 0, &self->_appendBuffer[v44], 1024 - v44, &usedBufLen);
      v45 = self->_appendBufferCount + usedBufLen;
    }
  }

  else
  {
    v46 = self->_appendBufferCount;
    v47 = &self->_appendBuffer[v46];
    if (v46 > 1018)
    {
      *v47 = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "<nil>", 0x8000100u);
      goto LABEL_81;
    }

    v47[4] = 62;
    *v47 = 1818848828;
    v45 = self->_appendBufferCount + 5;
  }

  self->_appendBufferCount = v45;
LABEL_81:
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);
  selfCopy = self;

  return self;
}

- (id)appendVersionedPID:(int64_t)d withName:(id)name
{
  v7 = self->_style;
  emitPhase = self->_emitPhase;
  if (emitPhase > 2)
  {
    if (emitPhase != 3)
    {
      if (emitPhase != 4)
      {
        goto LABEL_8;
      }

LABEL_20:
      indentLevel = self->_indentLevel;
      if (indentLevel < 1)
      {
        goto LABEL_31;
      }

      if (indentLevel >= 8)
      {
        indentLevel = 8;
      }

      v20 = *(&sIndentSpaceStrings + indentLevel);
      v21 = strlen(v20);
      p_appendBufferCount = &self->_appendBufferCount;
      appendBufferCount = self->_appendBufferCount;
      if ((appendBufferCount + v21) <= 1023)
      {
        v12 = v21;
        memcpy(&self->_appendBuffer[appendBufferCount], v20, v21);
        goto LABEL_25;
      }

      if (appendBufferCount >= 1)
      {
        self->_appendBuffer[appendBufferCount] = 0;
        CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
        *p_appendBufferCount = 0;
      }

      CFStringAppendCString(self->_string, v20, 0x8000100u);
LABEL_31:
      self->_emitPhase = 0;
      if (!name)
      {
        goto LABEL_63;
      }

      goto LABEL_32;
    }

LABEL_17:
    v17 = self->_appendBufferCount;
    appendBuffer = self->_appendBuffer;
    if (v17 > 1022)
    {
      appendBuffer[v17] = 0;
      CFStringAppendCString(self->_string, appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, "\n", 0x8000100u);
    }

    else
    {
      appendBuffer[v17] = 10;
      ++self->_appendBufferCount;
    }

    goto LABEL_20;
  }

  if (emitPhase == 1)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v13 = self->_appendBufferCount;
    v14 = self->_appendBuffer;
    if (self->_style->_collectionLineBreak != 3)
    {
      if (v13 <= 1021)
      {
        *&v14[v13] = 8251;
        v12 = 2;
        goto LABEL_25;
      }

      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      p_string = &self->_string;
      v16 = "; ";
      goto LABEL_30;
    }

    if (v13 > 1022)
    {
      v14[v13] = 0;
      CFStringAppendCString(self->_string, v14, 0x8000100u);
      self->_appendBufferCount = 0;
      CFStringAppendCString(self->_string, ";", 0x8000100u);
    }

    else
    {
      v14[v13] = 59;
      ++*p_appendBufferCount;
    }

    goto LABEL_17;
  }

  if (emitPhase == 2)
  {
    p_appendBufferCount = &self->_appendBufferCount;
    v10 = self->_appendBufferCount;
    v11 = self->_appendBuffer;
    if (v10 <= 1022)
    {
      v11[v10] = 32;
      v12 = 1;
LABEL_25:
      *p_appendBufferCount += v12;
      goto LABEL_31;
    }

    v11[v10] = 0;
    CFStringAppendCString(self->_string, v11, 0x8000100u);
    p_string = &self->_string;
    v16 = " ";
LABEL_30:
    *p_appendBufferCount = 0;
    CFStringAppendCString(*p_string, v16, 0x8000100u);
    goto LABEL_31;
  }

LABEL_8:
  if (!name)
  {
    goto LABEL_63;
  }

LABEL_32:
  nameTruncation = v7->_nameTruncation;
  maximumNameLengthBeforeTruncation = v7->_maximumNameLengthBeforeTruncation;
  if (nameTruncation < 2 || maximumNameLengthBeforeTruncation < 1)
  {
    self->_lineTruncation = 0;
  }

  else
  {
    self->_lineTruncation = nameTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    self->_maximumLengthBeforeTruncation = maximumNameLengthBeforeTruncation;
  }

  v26 = [name length];
  v27 = self->_appendBufferCount;
  if (v27 + 3 * v26 > 1023)
  {
    if (v27 >= 1)
    {
      self->_appendBuffer[v27] = 0;
      CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
      self->_appendBufferCount = 0;
    }

    if (v26 > 341)
    {
      [(NSMutableString *)self->_string appendString:name];
      goto LABEL_46;
    }

    usedBufLen = 0;
    v46.location = 0;
    v46.length = v26;
    CFStringGetBytes(name, v46, 0x8000100u, 0, 0, self->_appendBuffer, 1024, &usedBufLen);
    v28 = usedBufLen;
  }

  else
  {
    usedBufLen = 0;
    v45.location = 0;
    v45.length = v26;
    CFStringGetBytes(name, v45, 0x8000100u, 0, 0, &self->_appendBuffer[v27], 1024 - v27, &usedBufLen);
    v28 = self->_appendBufferCount + usedBufLen;
  }

  self->_appendBufferCount = v28;
LABEL_46:
  BSDescribeTruncationCommit(self);
  if (self->_proemNestCount <= 0)
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__bodyItemSeparator;
  }

  else
  {
    v29 = &OBJC_IVAR___BSDescriptionStyle__proemItemSeparator;
  }

  v30 = *(&self->_style->super.isa + *v29);
  if (v30 < 2)
  {
    v34 = self->_appendBufferCount;
    v35 = self->_appendBuffer;
    if (v34 <= 1021)
    {
      *&v35[v34] = 8250;
      v33 = 2;
      goto LABEL_58;
    }

    v35[v34] = 0;
    CFStringAppendCString(self->_string, v35, 0x8000100u);
    v38 = ": ";
  }

  else if (v30 == 2)
  {
    v36 = self->_appendBufferCount;
    v37 = &self->_appendBuffer[v36];
    if (v36 <= 1020)
    {
      v37[2] = 32;
      *v37 = 15648;
      v33 = 3;
      goto LABEL_58;
    }

    *v37 = 0;
    CFStringAppendCString(self->_string, self->_appendBuffer, 0x8000100u);
    v38 = " = ";
  }

  else
  {
    if (v30 != 3)
    {
      goto LABEL_63;
    }

    v31 = self->_appendBufferCount;
    v32 = self->_appendBuffer;
    if (v31 <= 1019)
    {
      *&v32[v31] = 540945696;
      v33 = 4;
LABEL_58:
      self->_appendBufferCount += v33;
      goto LABEL_63;
    }

    v32[v31] = 0;
    CFStringAppendCString(self->_string, v32, 0x8000100u);
    v38 = " -> ";
  }

  self->_appendBufferCount = 0;
  CFStringAppendCString(self->_string, v38, 0x8000100u);
LABEL_63:
  valueTruncation = v7->_valueTruncation;
  maximumValueLengthBeforeTruncation = v7->_maximumValueLengthBeforeTruncation;
  if (valueTruncation < 2 || maximumValueLengthBeforeTruncation < 1)
  {
    maximumValueLengthBeforeTruncation = 0;
    v42 = 1096;
  }

  else
  {
    self->_lineTruncation = valueTruncation;
    self->_truncationStartIndex = self->_appendBufferCount + [(NSMutableString *)self->_string length];
    v42 = 1088;
  }

  *(&self->super.isa + v42) = maximumValueLengthBeforeTruncation;

  BSAppendVersionedPIDToStringAppendTarget(d, self);
  self->_emitPhase = 1;
  BSDescribeTruncationCommit(self);
  return self;
}

@end