@interface PKHandwritingTool
- (BOOL)isEqual:(id)equal;
- (PKHandwritingTool)initWithLocaleIdentifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation PKHandwritingTool

- (PKHandwritingTool)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v6 = [PKInk inkWithType:@"com.apple.ink.handwriting" color:clearColor weight:0.0 azimuth:0.0];
  v11.receiver = self;
  v11.super_class = PKHandwritingTool;
  v7 = [(PKTool *)&v11 _initWithInk:v6];

  if (v7)
  {
    v8 = [identifierCopy copy];
    localeIdentifier = v7->_localeIdentifier;
    v7->_localeIdentifier = v8;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PKHandwritingTool;
    if ([(PKTool *)&v12 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      v6 = [(PKTool *)self ink];
      v7 = [(PKTool *)v5 ink];
      if ([v6 isEqual:v7])
      {
        localeIdentifier = [(PKHandwritingTool *)self localeIdentifier];
        localeIdentifier2 = [(PKHandwritingTool *)v5 localeIdentifier];
        v10 = [localeIdentifier isEqualToString:localeIdentifier2];
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
  localeIdentifier = [(PKHandwritingTool *)self localeIdentifier];
  v6 = [localeIdentifier hash];

  return v6 ^ v4;
}

@end