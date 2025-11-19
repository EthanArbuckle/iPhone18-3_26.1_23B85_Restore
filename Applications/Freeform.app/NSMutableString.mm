@interface NSMutableString
- (void)crl_appendSeparator:(id)a3 format:(id)a4;
- (void)crl_indentBy:(unint64_t)a3;
- (void)crl_insertCharacter:(unsigned __int16)a3 atIndex:(unint64_t)a4;
@end

@implementation NSMutableString

- (void)crl_indentBy:(unint64_t)a3
{
  v5 = [@"          " mutableCopy];
  v7 = v5;
  while ([v5 length] < a3)
  {
    [v7 appendString:v7];
    v5 = v7;
  }

  [v7 deleteCharactersInRange:{a3, objc_msgSend(v7, "length") - a3}];
  [(NSMutableString *)self insertString:v7 atIndex:0];
  v6 = [NSString stringWithFormat:@"\n%@", v7];
  [(NSMutableString *)self replaceOccurrencesOfString:@"\n" withString:v6 options:0 range:0, [(NSMutableString *)self length]];
}

- (void)crl_insertCharacter:(unsigned __int16)a3 atIndex:(unint64_t)a4
{
  v6 = [[NSString alloc] initWithFormat:@"%C", a3];
  [(NSMutableString *)self insertString:v6 atIndex:a4];
}

- (void)crl_appendSeparator:(id)a3 format:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSMutableString *)self length])
  {
    [(NSMutableString *)self appendString:v6];
  }

  v8 = [NSString crl_stringWithFormat:v7 arguments:&v9];
  [(NSMutableString *)self appendString:v8];
}

@end