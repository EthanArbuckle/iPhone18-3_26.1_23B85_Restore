@interface NSSmartQuoteOptions
+ (id)smartQuoteOptionsForLocale:(id)locale;
- (BOOL)isEqual:(id)equal;
- (NSSmartQuoteOptions)initWithCoder:(id)coder;
- (NSSmartQuoteOptions)initWithLeftSingleQuote:(id)quote rightSingleQuote:(id)singleQuote apostrophe:(id)apostrophe leftDoubleQuote:(id)doubleQuote rightDoubleQuote:(id)rightDoubleQuote;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSmartQuoteOptions

- (NSSmartQuoteOptions)initWithLeftSingleQuote:(id)quote rightSingleQuote:(id)singleQuote apostrophe:(id)apostrophe leftDoubleQuote:(id)doubleQuote rightDoubleQuote:(id)rightDoubleQuote
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = NSSmartQuoteOptions;
  v12 = [(NSSmartQuoteOptions *)&v14 init];
  if (v12)
  {
    v12->_leftSingleQuote = [quote copy];
    v12->_rightSingleQuote = [singleQuote copy];
    v12->_apostrophe = [apostrophe copy];
    v12->_leftDoubleQuote = [doubleQuote copy];
    v12->_rightDoubleQuote = [rightDoubleQuote copy];
  }

  return v12;
}

+ (id)smartQuoteOptionsForLocale:(id)locale
{
  v3 = [[NSSmartQuoteOptions alloc] initWithLeftSingleQuote:@"‘" rightSingleQuote:@"’" apostrophe:@"’" leftDoubleQuote:@"“" rightDoubleQuote:@"”"];

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSSmartQuoteOptions;
  [(NSSmartQuoteOptions *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqualToString:](self->_leftSingleQuote, "isEqualToString:", [equal leftSingleQuote]);
      if (v5)
      {
        v5 = -[NSString isEqualToString:](self->_rightSingleQuote, "isEqualToString:", [equal rightSingleQuote]);
        if (v5)
        {
          v5 = -[NSString isEqualToString:](self->_apostrophe, "isEqualToString:", [equal apostrophe]);
          if (v5)
          {
            v5 = -[NSString isEqualToString:](self->_leftDoubleQuote, "isEqualToString:", [equal leftDoubleQuote]);
            if (v5)
            {
              rightDoubleQuote = self->_rightDoubleQuote;
              rightDoubleQuote = [equal rightDoubleQuote];

              LOBYTE(v5) = [(NSString *)rightDoubleQuote isEqualToString:rightDoubleQuote];
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_leftSingleQuote hash];
  v4 = [(NSString *)self->_rightSingleQuote hash]^ v3;
  v5 = [(NSString *)self->_apostrophe hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_leftDoubleQuote hash];
  return v6 ^ [(NSString *)self->_rightDoubleQuote hash];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSSmartQuoteOptions;
  return [NSString stringWithFormat:@"%@{%@xy%@/x%@y/%@xy%@}", [(NSSmartQuoteOptions *)&v3 description], [(NSSmartQuoteOptions *)self leftSingleQuote], [(NSSmartQuoteOptions *)self rightSingleQuote], [(NSSmartQuoteOptions *)self apostrophe], [(NSSmartQuoteOptions *)self leftDoubleQuote], [(NSSmartQuoteOptions *)self rightDoubleQuote]];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ requires keyed coding", objc_opt_class()), 0}];
    objc_exception_throw(v6);
  }

  [coder encodeObject:-[NSSmartQuoteOptions leftSingleQuote](self forKey:{"leftSingleQuote"), @"NSLeftSingleQuote"}];
  [coder encodeObject:-[NSSmartQuoteOptions rightSingleQuote](self forKey:{"rightSingleQuote"), @"NSRightSingleQuote"}];
  [coder encodeObject:-[NSSmartQuoteOptions apostrophe](self forKey:{"apostrophe"), @"NSApostrophe"}];
  [coder encodeObject:-[NSSmartQuoteOptions leftDoubleQuote](self forKey:{"leftDoubleQuote"), @"NSLeftDoubleQuote"}];
  rightDoubleQuote = [(NSSmartQuoteOptions *)self rightDoubleQuote];

  [coder encodeObject:rightDoubleQuote forKey:@"NSRightDoubleQuote"];
}

- (NSSmartQuoteOptions)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ requires keyed coding", objc_opt_class()), 0}];
    objc_exception_throw(v12);
  }

  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSLeftSingleQuote"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v11 = @"Smart quote left single quote is not a string";
LABEL_15:
    [coder failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", v11)}];
    return 0;
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSRightSingleQuote"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v11 = @"Smart quote right single quote is not a string";
    goto LABEL_15;
  }

  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSApostrophe"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v11 = @"Smart quote apostrophe is not a string";
    goto LABEL_15;
  }

  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSLeftDoubleQuote"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v11 = @"Smart quote left double quote is not a string";
    goto LABEL_15;
  }

  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSRightDoubleQuote"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v11 = @"Smart quote right double quote is not a string";
    goto LABEL_15;
  }

  return [(NSSmartQuoteOptions *)self initWithLeftSingleQuote:v5 rightSingleQuote:v6 apostrophe:v7 leftDoubleQuote:v8 rightDoubleQuote:v9];
}

@end