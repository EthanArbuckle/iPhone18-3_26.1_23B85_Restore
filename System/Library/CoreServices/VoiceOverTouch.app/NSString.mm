@interface NSString
+ (NSString)stringWithUnichar:(unsigned __int16)unichar;
- (_NSRange)lineFromPosition:(int64_t)position inDirection:(int64_t)direction;
- (_NSRange)paragraphFromPosition:(int64_t)position inDirection:(int64_t)direction;
- (_NSRange)sentenceFromPosition:(int64_t)position inDirection:(int64_t)direction;
- (_NSRange)wordFromPosition:(int64_t)position inDirection:(int64_t)direction;
- (id)wordStringFromPosition:(int64_t)position inDirection:(int64_t)direction;
@end

@implementation NSString

+ (NSString)stringWithUnichar:(unsigned __int16)unichar
{
  unicharCopy = unichar;
  v3 = [objc_allocWithZone(NSString) initWithCharacters:&unicharCopy length:1];

  return v3;
}

- (_NSRange)sentenceFromPosition:(int64_t)position inDirection:(int64_t)direction
{
  if ((direction - 1) >= 2)
  {
    _AXAssert();
  }

  v7 = [(NSString *)self ax_sentenceFromPosition:position inDirection:direction != 1];
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)paragraphFromPosition:(int64_t)position inDirection:(int64_t)direction
{
  if ((direction - 1) >= 2)
  {
    _AXAssert();
  }

  v7 = [(NSString *)self ax_paragraphFromPosition:position inDirection:direction != 1];
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)lineFromPosition:(int64_t)position inDirection:(int64_t)direction
{
  if ((direction - 1) >= 2)
  {
    _AXAssert();
  }

  v7 = [(NSString *)self ax_lineFromPosition:position inDirection:direction != 1];
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)wordFromPosition:(int64_t)position inDirection:(int64_t)direction
{
  if ((direction - 1) >= 2)
  {
    _AXAssert();
  }

  v7 = [(NSString *)self ax_wordFromPosition:position inDirection:direction != 1];
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)wordStringFromPosition:(int64_t)position inDirection:(int64_t)direction
{
  if ((direction - 1) >= 2)
  {
    directionCopy = direction;
    _AXAssert();
  }

  directionCopy = [(NSString *)self ax_wordFromPosition:position inDirection:direction != 1, directionCopy];

  return [(NSString *)self substringWithRange:directionCopy, v7];
}

@end