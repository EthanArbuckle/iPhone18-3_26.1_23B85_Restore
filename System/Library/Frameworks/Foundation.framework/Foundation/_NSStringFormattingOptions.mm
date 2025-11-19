@interface _NSStringFormattingOptions
- (BOOL)isEqual:(id)a3;
- (_NSStringFormattingOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_NSStringFormattingOptions);
  [(_NSStringFormattingOptions *)v4 setPluralizationNumber:[(_NSStringFormattingOptions *)self pluralizationNumber]];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(_NSStringFormattingOptions *)self pluralizationNumber];

  return [(NSNumber *)v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_NSStringFormattingOptions *)self pluralizationNumber];
    if (v5 == [a3 pluralizationNumber])
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = [a3 pluralizationNumber];
      if (v6)
      {
        v7 = [(_NSStringFormattingOptions *)self pluralizationNumber];
        v8 = [a3 pluralizationNumber];

        LOBYTE(v6) = [(NSNumber *)v7 isEqualToNumber:v8];
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end