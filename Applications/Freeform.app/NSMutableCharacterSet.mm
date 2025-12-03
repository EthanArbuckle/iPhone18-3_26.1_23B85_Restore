@interface NSMutableCharacterSet
- (id)crlwp_initWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length;
@end

@implementation NSMutableCharacterSet

- (id)crlwp_initWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length
{
  v6 = [(NSMutableCharacterSet *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithCharacters:characters length:length];
    [(NSMutableCharacterSet *)v6 addCharactersInString:v7];
  }

  return v6;
}

@end