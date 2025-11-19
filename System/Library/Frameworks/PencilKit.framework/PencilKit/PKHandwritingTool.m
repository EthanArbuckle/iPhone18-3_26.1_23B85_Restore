@interface PKHandwritingTool
- (BOOL)isEqual:(id)a3;
- (PKHandwritingTool)initWithLocaleIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation PKHandwritingTool

- (PKHandwritingTool)initWithLocaleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC888] clearColor];
  v6 = [PKInk inkWithType:@"com.apple.ink.handwriting" color:v5 weight:0.0 azimuth:0.0];
  v11.receiver = self;
  v11.super_class = PKHandwritingTool;
  v7 = [(PKTool *)&v11 _initWithInk:v6];

  if (v7)
  {
    v8 = [v4 copy];
    localeIdentifier = v7->_localeIdentifier;
    v7->_localeIdentifier = v8;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PKHandwritingTool;
    if ([(PKTool *)&v12 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(PKTool *)self ink];
      v7 = [(PKTool *)v5 ink];
      if ([v6 isEqual:v7])
      {
        v8 = [(PKHandwritingTool *)self localeIdentifier];
        v9 = [(PKHandwritingTool *)v5 localeIdentifier];
        v10 = [v8 isEqualToString:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(PKTool *)self ink];
  v4 = [v3 hash];
  v5 = [(PKHandwritingTool *)self localeIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end