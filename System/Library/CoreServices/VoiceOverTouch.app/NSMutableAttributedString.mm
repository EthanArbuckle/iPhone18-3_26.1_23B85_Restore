@interface NSMutableAttributedString
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)appendFormat:(id)format;
- (void)appendString:(id)string;
@end

@implementation NSMutableAttributedString

- (unsigned)characterAtIndex:(unint64_t)index
{
  string = [(NSMutableAttributedString *)self string];
  LOWORD(index) = [string characterAtIndex:index];

  return index;
}

- (void)appendString:(id)string
{
  stringCopy = string;
  v5 = [[NSAttributedString alloc] initWithString:stringCopy];

  [(NSMutableAttributedString *)self appendAttributedString:v5];
}

- (void)appendFormat:(id)format
{
  formatCopy = format;
  v5 = [[NSString alloc] initWithFormat:formatCopy locale:0 arguments:&v6];

  [(NSMutableAttributedString *)self appendString:v5];
}

@end