@interface NSString
+ (NSString)stringWithUnichar:(unsigned __int16)a3;
- (_NSRange)lineFromPosition:(int64_t)a3 inDirection:(int64_t)a4;
- (_NSRange)paragraphFromPosition:(int64_t)a3 inDirection:(int64_t)a4;
- (_NSRange)sentenceFromPosition:(int64_t)a3 inDirection:(int64_t)a4;
- (_NSRange)wordFromPosition:(int64_t)a3 inDirection:(int64_t)a4;
- (id)wordStringFromPosition:(int64_t)a3 inDirection:(int64_t)a4;
@end

@implementation NSString

+ (NSString)stringWithUnichar:(unsigned __int16)a3
{
  v5 = a3;
  v3 = [objc_allocWithZone(NSString) initWithCharacters:&v5 length:1];

  return v3;
}

- (_NSRange)sentenceFromPosition:(int64_t)a3 inDirection:(int64_t)a4
{
  if ((a4 - 1) >= 2)
  {
    _AXAssert();
  }

  v7 = [(NSString *)self ax_sentenceFromPosition:a3 inDirection:a4 != 1];
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)paragraphFromPosition:(int64_t)a3 inDirection:(int64_t)a4
{
  if ((a4 - 1) >= 2)
  {
    _AXAssert();
  }

  v7 = [(NSString *)self ax_paragraphFromPosition:a3 inDirection:a4 != 1];
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)lineFromPosition:(int64_t)a3 inDirection:(int64_t)a4
{
  if ((a4 - 1) >= 2)
  {
    _AXAssert();
  }

  v7 = [(NSString *)self ax_lineFromPosition:a3 inDirection:a4 != 1];
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)wordFromPosition:(int64_t)a3 inDirection:(int64_t)a4
{
  if ((a4 - 1) >= 2)
  {
    _AXAssert();
  }

  v7 = [(NSString *)self ax_wordFromPosition:a3 inDirection:a4 != 1];
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)wordStringFromPosition:(int64_t)a3 inDirection:(int64_t)a4
{
  if ((a4 - 1) >= 2)
  {
    v10 = a4;
    _AXAssert();
  }

  v8 = [(NSString *)self ax_wordFromPosition:a3 inDirection:a4 != 1, v10];

  return [(NSString *)self substringWithRange:v8, v7];
}

@end