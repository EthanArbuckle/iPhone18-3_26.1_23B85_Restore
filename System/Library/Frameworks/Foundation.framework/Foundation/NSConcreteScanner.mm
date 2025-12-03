@interface NSConcreteScanner
- (NSConcreteScanner)initWithString:(id)string;
- (id)_invertedSkipSet;
- (id)charactersToBeSkipped;
- (id)locale;
- (id)string;
- (void)dealloc;
- (void)setCharactersToBeSkipped:(id)skipped;
- (void)setLocale:(id)locale;
- (void)setScanLocation:(unint64_t)location;
@end

@implementation NSConcreteScanner

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConcreteScanner;
  [(NSConcreteScanner *)&v3 dealloc];
}

- (id)string
{
  v2 = self->scanString;

  return v2;
}

- (id)charactersToBeSkipped
{
  v2 = self->skipSet;

  return v2;
}

- (id)_invertedSkipSet
{
  result = self->invertedSkipSet;
  if (!result)
  {
    result = [(NSConcreteScanner *)self charactersToBeSkipped];
    if (result)
    {
      v4 = result;
      if (result == +[NSCharacterSet whitespaceAndNewlineCharacterSet])
      {
        if (_MergedGlobals_5_1 != -1)
        {
          dispatch_once(&_MergedGlobals_5_1, &__block_literal_global_104);
        }

        return qword_1ED43F178;
      }

      else
      {
        result = [objc_msgSend(v4 "invertedSet")];
        self->invertedSkipSet = result;
      }
    }
  }

  return result;
}

- (id)locale
{
  v2 = self->locale;

  return v2;
}

- (NSConcreteScanner)initWithString:(id)string
{
  stringCopy = string;
  v8 = *MEMORY[0x1E69E9840];
  if (!string)
  {
    NSLog(@"NSScanner: nil string argument", a2);
    stringCopy = &stru_1EEEFDF90;
  }

  v7.receiver = self;
  v7.super_class = NSConcreteScanner;
  v5 = [(NSScanner *)&v7 initWithString:stringCopy];
  v5->scanString = [(__CFString *)stringCopy copyWithZone:0];
  v5->skipSet = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5->scanLocation = 0;
  return v5;
}

- (void)setScanLocation:(unint64_t)location
{
  v6 = [(NSString *)self->scanString length];
  if (v6 < location)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Index %lu out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), location, v6), 0}];
    objc_exception_throw(v7);
  }

  self->scanLocation = location;
}

- (void)setCharactersToBeSkipped:(id)skipped
{
  v5 = self->skipSet;
  self->skipSet = [skipped copyWithZone:{-[NSConcreteScanner zone](self, "zone")}];

  self->invertedSkipSet = 0;
}

- (void)setLocale:(id)locale
{
  locale = self->locale;
  if (locale != locale)
  {

    self->locale = locale;
  }
}

@end