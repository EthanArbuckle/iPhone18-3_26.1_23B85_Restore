@interface NSMutableStringProxyForMutableAttributedString
- (NSMutableStringProxyForMutableAttributedString)initWithMutableAttributedString:(id)a3;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
@end

@implementation NSMutableStringProxyForMutableAttributedString

- (unint64_t)length
{
  v2 = [(NSAttributedString *)self->mutableAttributedString string];

  return [(NSString *)v2 length];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMutableStringProxyForMutableAttributedString;
  [(NSMutableStringProxyForMutableAttributedString *)&v3 dealloc];
}

- (NSMutableStringProxyForMutableAttributedString)initWithMutableAttributedString:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSMutableStringProxyForMutableAttributedString;
  v4 = [(NSString *)&v6 init];
  if (v4)
  {
    v4->mutableAttributedString = a3;
  }

  return v4;
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v4 = [(NSAttributedString *)self->mutableAttributedString string];

  return [(NSString *)v4 characterAtIndex:a3];
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(NSAttributedString *)self->mutableAttributedString string];

  [(NSString *)v7 getCharacters:a3 range:location, length];
}

@end