@interface NSMutableCharacterSet
- (id)crlwp_initWithCharacters:(const unsigned __int16 *)a3 length:(unint64_t)a4;
@end

@implementation NSMutableCharacterSet

- (id)crlwp_initWithCharacters:(const unsigned __int16 *)a3 length:(unint64_t)a4
{
  v6 = [(NSMutableCharacterSet *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithCharacters:a3 length:a4];
    [(NSMutableCharacterSet *)v6 addCharactersInString:v7];
  }

  return v6;
}

@end