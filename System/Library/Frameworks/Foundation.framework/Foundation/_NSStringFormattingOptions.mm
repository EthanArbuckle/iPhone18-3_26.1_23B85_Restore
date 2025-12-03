@interface _NSStringFormattingOptions
- (BOOL)isEqual:(id)equal;
- (_NSStringFormattingOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _NSStringFormattingOptions

- (_NSStringFormattingOptions)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSStringFormattingOptions;
  result = [(_NSStringFormattingOptions *)&v3 init];
  if (result)
  {
    result->_pluralizationNumber = 0;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSStringFormattingOptions;
  [(_NSStringFormattingOptions *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_NSStringFormattingOptions);
  [(_NSStringFormattingOptions *)v4 setPluralizationNumber:[(_NSStringFormattingOptions *)self pluralizationNumber]];
  return v4;
}

- (unint64_t)hash
{
  pluralizationNumber = [(_NSStringFormattingOptions *)self pluralizationNumber];

  return [(NSNumber *)pluralizationNumber hash];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pluralizationNumber = [(_NSStringFormattingOptions *)self pluralizationNumber];
    if (pluralizationNumber == [equal pluralizationNumber])
    {
      LOBYTE(pluralizationNumber2) = 1;
    }

    else
    {
      pluralizationNumber2 = [equal pluralizationNumber];
      if (pluralizationNumber2)
      {
        pluralizationNumber3 = [(_NSStringFormattingOptions *)self pluralizationNumber];
        pluralizationNumber4 = [equal pluralizationNumber];

        LOBYTE(pluralizationNumber2) = [(NSNumber *)pluralizationNumber3 isEqualToNumber:pluralizationNumber4];
      }
    }
  }

  else
  {
    LOBYTE(pluralizationNumber2) = 0;
  }

  return pluralizationNumber2;
}

@end