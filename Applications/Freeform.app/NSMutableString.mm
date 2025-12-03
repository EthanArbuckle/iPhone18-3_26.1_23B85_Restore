@interface NSMutableString
- (void)crl_appendSeparator:(id)separator format:(id)format;
- (void)crl_indentBy:(unint64_t)by;
- (void)crl_insertCharacter:(unsigned __int16)character atIndex:(unint64_t)index;
@end

@implementation NSMutableString

- (void)crl_indentBy:(unint64_t)by
{
  v5 = [@"          " mutableCopy];
  v7 = v5;
  while ([v5 length] < by)
  {
    [v7 appendString:v7];
    v5 = v7;
  }

  [v7 deleteCharactersInRange:{by, objc_msgSend(v7, "length") - by}];
  [(NSMutableString *)self insertString:v7 atIndex:0];
  v6 = [NSString stringWithFormat:@"\n%@", v7];
  [(NSMutableString *)self replaceOccurrencesOfString:@"\n" withString:v6 options:0 range:0, [(NSMutableString *)self length]];
}

- (void)crl_insertCharacter:(unsigned __int16)character atIndex:(unint64_t)index
{
  character = [[NSString alloc] initWithFormat:@"%C", character];
  [(NSMutableString *)self insertString:character atIndex:index];
}

- (void)crl_appendSeparator:(id)separator format:(id)format
{
  separatorCopy = separator;
  formatCopy = format;
  if ([(NSMutableString *)self length])
  {
    [(NSMutableString *)self appendString:separatorCopy];
  }

  v8 = [NSString crl_stringWithFormat:formatCopy arguments:&v9];
  [(NSMutableString *)self appendString:v8];
}

@end