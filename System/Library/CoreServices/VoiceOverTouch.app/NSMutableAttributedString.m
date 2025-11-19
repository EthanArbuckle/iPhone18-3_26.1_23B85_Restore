@interface NSMutableAttributedString
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)appendFormat:(id)a3;
- (void)appendString:(id)a3;
@end

@implementation NSMutableAttributedString

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v4 = [(NSMutableAttributedString *)self string];
  LOWORD(a3) = [v4 characterAtIndex:a3];

  return a3;
}

- (void)appendString:(id)a3
{
  v4 = a3;
  v5 = [[NSAttributedString alloc] initWithString:v4];

  [(NSMutableAttributedString *)self appendAttributedString:v5];
}

- (void)appendFormat:(id)a3
{
  v4 = a3;
  v5 = [[NSString alloc] initWithFormat:v4 locale:0 arguments:&v6];

  [(NSMutableAttributedString *)self appendString:v5];
}

@end