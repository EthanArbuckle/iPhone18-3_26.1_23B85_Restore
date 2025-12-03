@interface NSMutableStringProxyForMutableAttributedString
- (NSMutableStringProxyForMutableAttributedString)initWithMutableAttributedString:(id)string;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation NSMutableStringProxyForMutableAttributedString

- (unint64_t)length
{
  string = [(NSAttributedString *)self->mutableAttributedString string];

  return [(NSString *)string length];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMutableStringProxyForMutableAttributedString;
  [(NSMutableStringProxyForMutableAttributedString *)&v3 dealloc];
}

- (NSMutableStringProxyForMutableAttributedString)initWithMutableAttributedString:(id)string
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSMutableStringProxyForMutableAttributedString;
  v4 = [(NSString *)&v6 init];
  if (v4)
  {
    v4->mutableAttributedString = string;
  }

  return v4;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  string = [(NSAttributedString *)self->mutableAttributedString string];

  return [(NSString *)string characterAtIndex:index];
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  string = [(NSAttributedString *)self->mutableAttributedString string];

  [(NSString *)string getCharacters:characters range:location, length];
}

@end