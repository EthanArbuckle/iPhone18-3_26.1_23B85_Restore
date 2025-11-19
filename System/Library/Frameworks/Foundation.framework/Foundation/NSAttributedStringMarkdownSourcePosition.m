@interface NSAttributedStringMarkdownSourcePosition
+ ($915FBD377EA738B5CB203B2EF22C919A)calculateOffsetsForLine:(SEL)a3 column:(int64_t)a4 inString:(int64_t)a5 size:(const char *)a6 withExistingOffsets:(unint64_t)a7;
- ($915FBD377EA738B5CB203B2EF22C919A)endOffsets;
- ($915FBD377EA738B5CB203B2EF22C919A)startOffsets;
- (BOOL)isEqual:(id)a3;
- (NSAttributedStringMarkdownSourcePosition)initWithCoder:(id)a3;
- (NSAttributedStringMarkdownSourcePosition)initWithStart:(id *)a3 end:(id *)a4;
- (NSAttributedStringMarkdownSourcePosition)initWithStartLine:(NSInteger)startLine startColumn:(NSInteger)startColumn endLine:(NSInteger)endLine endColumn:(NSInteger)endColumn;
- (NSRange)rangeInString:(NSString *)string;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setOffsetsFromUTF8:(const char *)a3 size:(unint64_t)a4 usingCache:(id *)a5;
@end

@implementation NSAttributedStringMarkdownSourcePosition

- (NSAttributedStringMarkdownSourcePosition)initWithStartLine:(NSInteger)startLine startColumn:(NSInteger)startColumn endLine:(NSInteger)endLine endColumn:(NSInteger)endColumn
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = NSAttributedStringMarkdownSourcePosition;
  result = [(NSAttributedStringMarkdownSourcePosition *)&v13 init];
  if (result)
  {
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = vnegq_f64(v11);
    *&result->_startOffsets.utf8Offset = v12;
    *&result->_startOffsets.utf8NextCodePoint = v12;
    result->_startOffsets.line = startLine;
    result->_startOffsets.column = startColumn;
    *&result->_endOffsets.utf8Offset = v12;
    *&result->_endOffsets.utf8NextCodePoint = v12;
    result->_endOffsets.line = endLine;
    result->_endOffsets.column = endColumn;
  }

  return result;
}

- (NSAttributedStringMarkdownSourcePosition)initWithStart:(id *)a3 end:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSAttributedStringMarkdownSourcePosition;
  result = [(NSAttributedStringMarkdownSourcePosition *)&v11 init];
  if (result)
  {
    v7 = *&a3->var0;
    v8 = *&a3->var2;
    *&result->_startOffsets.line = *&a3->var4;
    *&result->_startOffsets.utf8NextCodePoint = v8;
    *&result->_startOffsets.utf8Offset = v7;
    v9 = *&a4->var0;
    v10 = *&a4->var2;
    *&result->_endOffsets.line = *&a4->var4;
    *&result->_endOffsets.utf8NextCodePoint = v10;
    *&result->_endOffsets.utf8Offset = v9;
  }

  return result;
}

- ($915FBD377EA738B5CB203B2EF22C919A)startOffsets
{
  v3 = *&self->var3;
  *&retstr->var0 = *&self->var1;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self->var5;
  return self;
}

- ($915FBD377EA738B5CB203B2EF22C919A)endOffsets
{
  v3 = *&self[1].var3;
  *&retstr->var0 = *&self[1].var1;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[1].var5;
  return self;
}

- (void)setOffsetsFromUTF8:(const char *)a3 size:(unint64_t)a4 usingCache:(id *)a5
{
  updateOffsetsForPosition(a3, a4, self->_startOffsets.line, self->_startOffsets.column, a5);
  v9 = *&a5->var0;
  v10 = *&a5->var2;
  *&self->_startOffsets.line = *&a5->var4;
  *&self->_startOffsets.utf8NextCodePoint = v10;
  *&self->_startOffsets.utf8Offset = v9;
  updateOffsetsForPosition(a3, a4, self->_endOffsets.line, self->_endOffsets.column, a5);
  v11 = *&a5->var0;
  v12 = *&a5->var2;
  *&self->_endOffsets.line = *&a5->var4;
  *&self->_endOffsets.utf8NextCodePoint = v12;
  *&self->_endOffsets.utf8Offset = v11;
}

+ ($915FBD377EA738B5CB203B2EF22C919A)calculateOffsetsForLine:(SEL)a3 column:(int64_t)a4 inString:(int64_t)a5 size:(const char *)a6 withExistingOffsets:(unint64_t)a7
{
  v8 = *&a8->var2;
  *&retstr->var0 = *&a8->var0;
  *&retstr->var2 = v8;
  *&retstr->var4 = *&a8->var4;
  return updateOffsetsForPosition(a6, a7, a4, a5, retstr);
}

- (NSRange)rangeInString:(NSString *)string
{
  v19 = *MEMORY[0x1E69E9840];
  utf16Offset = self->_startOffsets.utf16Offset;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (utf16Offset == 0x7FFFFFFFFFFFFFFFLL || (v6 = self->_endOffsets.utf16Offset, v6 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = [(NSString *)string UTF8String];
    v8 = strlen(v7);
    line = self->_startOffsets.line;
    column = self->_startOffsets.column;
    v16 = 0u;
    v17 = 0u;
    v18 = vdupq_n_s64(1uLL);
    updateOffsetsForPosition(v7, v8, line, column, &v16);
    v11 = v16.i64[1];
    updateOffsetsForPosition(v7, v8, self->_endOffsets.line, self->_endOffsets.column, &v16);
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      if (v16.i64[1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = *(&v17 + 1);
        if (v16.i64[0] + 1 != v17)
        {
          v13 = 0;
        }

        v12 = v16.i64[1] - v11 + v13;
        v5 = v11;
      }
    }
  }

  else
  {
    utf16CurrentCodePointLength = self->_endOffsets.utf16CurrentCodePointLength;
    if (self->_endOffsets.utf8Offset + 1 != self->_endOffsets.utf8NextCodePoint)
    {
      utf16CurrentCodePointLength = 0;
    }

    v12 = v6 - utf16Offset + utf16CurrentCodePointLength;
    v5 = self->_startOffsets.utf16Offset;
  }

  v15 = v5;
  result.length = v12;
  result.location = v15;
  return result;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSAttributedStringMarkdownSourcePosition;
  return [NSString stringWithFormat:@"%@{startLine=%lu, startColumn=%lu, endLine=%lu, endColumn=%lu}", [(NSAttributedStringMarkdownSourcePosition *)&v3 description], self->_startOffsets.line, self->_startOffsets.column, self->_endOffsets.line, self->_endOffsets.column];
}

- (void)encodeWithCoder:(id)a3
{
  if (![a3 allowsKeyedCoding])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ cannot be encoded by non-keyed archivers", objc_opt_class()), 0}];
    objc_exception_throw(v6);
  }

  [a3 encodeInteger:-[NSAttributedStringMarkdownSourcePosition startLine](self forKey:{"startLine"), @"NSStartLine"}];
  [a3 encodeInteger:-[NSAttributedStringMarkdownSourcePosition startColumn](self forKey:{"startColumn"), @"NSStartColumn"}];
  [a3 encodeInteger:-[NSAttributedStringMarkdownSourcePosition endLine](self forKey:{"endLine"), @"NSEndLine"}];
  [a3 encodeInteger:-[NSAttributedStringMarkdownSourcePosition endColumn](self forKey:{"endColumn"), @"NSEndColumn"}];
  [a3 encodeInteger:self->_startOffsets.utf8Offset forKey:@"NSStartUTF8Offset"];
  [a3 encodeInteger:self->_endOffsets.utf8Offset forKey:@"NSEndUTF8Offset"];
  [a3 encodeInteger:self->_startOffsets.utf16Offset forKey:@"NSStartUTF16Offset"];
  [a3 encodeInteger:self->_endOffsets.utf16Offset forKey:@"NSEndUTF16Offset"];
  [a3 encodeInteger:self->_startOffsets.utf8NextCodePoint forKey:@"NSStartUTF8NextCodePoint"];
  [a3 encodeInteger:self->_endOffsets.utf8NextCodePoint forKey:@"NSEndUTF8NextCodePoint"];
  [a3 encodeInteger:self->_startOffsets.utf16CurrentCodePointLength forKey:@"NSStartUTF16CurrentCodePointLength"];
  utf16CurrentCodePointLength = self->_endOffsets.utf16CurrentCodePointLength;

  [a3 encodeInteger:utf16CurrentCodePointLength forKey:@"NSEndUTF16CurrentCodePointLength"];
}

- (NSAttributedStringMarkdownSourcePosition)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (![a3 allowsKeyedCoding])
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ cannot be decoded by non-keyed archivers", objc_opt_class()), 0}];
    objc_exception_throw(v21);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [&unk_1EEF59C60 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(&unk_1EEF59C60);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if (![a3 containsValueForKey:v10])
        {
          [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"%@: missing key %@", _NSMethodExceptionProem(self, a2), v10)}];
          return 0;
        }
      }

      v7 = [&unk_1EEF59C60 countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [a3 decodeIntegerForKey:@"NSStartLine"];
  if ([a3 error])
  {
    return 0;
  }

  v12 = [a3 decodeIntegerForKey:@"NSStartColumn"];
  if ([a3 error])
  {
    return 0;
  }

  v13 = [a3 decodeIntegerForKey:@"NSEndLine"];
  if ([a3 error])
  {
    return 0;
  }

  v14 = [a3 decodeIntegerForKey:@"NSEndColumn"];
  if ([a3 error])
  {
    return 0;
  }

  v15 = [a3 decodeIntegerForKey:@"NSStartUTF8Offset"];
  if ([a3 error])
  {
    return 0;
  }

  v16 = [a3 decodeIntegerForKey:@"NSEndUTF8Offset"];
  if ([a3 error])
  {
    return 0;
  }

  v17 = [a3 decodeIntegerForKey:@"NSStartUTF16Offset"];
  if ([a3 error])
  {
    return 0;
  }

  v18 = [a3 decodeIntegerForKey:@"NSEndUTF16Offset"];
  if ([a3 error])
  {
    return 0;
  }

  v19 = [a3 decodeIntegerForKey:@"NSStartUTF8NextCodePoint"];
  if ([a3 error])
  {
    return 0;
  }

  v24 = [a3 decodeIntegerForKey:@"NSEndUTF8NextCodePoint"];
  if ([a3 error])
  {
    return 0;
  }

  v23 = [a3 decodeIntegerForKey:@"NSStartUTF16CurrentCodePointLength"];
  if ([a3 error])
  {
    return 0;
  }

  v22 = [a3 decodeIntegerForKey:@"NSEndUTF16CurrentCodePointLength"];
  if ([a3 error])
  {
    return 0;
  }

  result = [[NSAttributedStringMarkdownSourcePosition alloc] initWithStartLine:v11 startColumn:v12 endLine:v13 endColumn:v14];
  result->_startOffsets.utf8Offset = v15;
  result->_startOffsets.utf16Offset = v17;
  result->_endOffsets.utf8Offset = v16;
  result->_endOffsets.utf16Offset = v18;
  result->_startOffsets.utf8NextCodePoint = v19;
  result->_startOffsets.utf16CurrentCodePointLength = v23;
  result->_endOffsets.utf8NextCodePoint = v24;
  result->_endOffsets.utf16CurrentCodePointLength = v22;
  return result;
}

- (unint64_t)hash
{
  v3 = [(NSAttributedStringMarkdownSourcePosition *)self startLine];
  v4 = [(NSAttributedStringMarkdownSourcePosition *)self startColumn];
  v5 = [(NSAttributedStringMarkdownSourcePosition *)self endLine];
  v6 = [(NSAttributedStringMarkdownSourcePosition *)self endColumn];
  v7 = veorq_s8(*&self->_startOffsets.utf8NextCodePoint, *&self->_endOffsets.utf8NextCodePoint);
  return *&veor_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) ^ self->_startOffsets.utf8Offset ^ self->_endOffsets.utf8Offset ^ self->_startOffsets.utf16Offset ^ self->_endOffsets.utf16Offset ^ v6 ^ v5 ^ v3 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 startLine];
  if (v5 != [(NSAttributedStringMarkdownSourcePosition *)self startLine])
  {
    return 0;
  }

  v6 = [a3 endLine];
  if (v6 != [(NSAttributedStringMarkdownSourcePosition *)self endLine])
  {
    return 0;
  }

  v7 = [a3 startColumn];
  if (v7 != [(NSAttributedStringMarkdownSourcePosition *)self startColumn])
  {
    return 0;
  }

  v8 = [a3 endColumn];
  return v8 == [(NSAttributedStringMarkdownSourcePosition *)self endColumn];
}

@end