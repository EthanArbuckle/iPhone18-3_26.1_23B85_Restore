@interface PKProofreadingQueryItem
- (BOOL)isEqual:(id)a3;
- (PKProofreadingQueryItem)initWithCoreHandwritingTextCheckingQueryItem:(id)a3;
- (id)baselinePath;
@end

@implementation PKProofreadingQueryItem

- (PKProofreadingQueryItem)initWithCoreHandwritingTextCheckingQueryItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKProofreadingQueryItem;
  v5 = [(PKProofreadingQueryItem *)&v8 init];
  coreHandwritingTextCheckingQueryItem = v5->_coreHandwritingTextCheckingQueryItem;
  v5->_coreHandwritingTextCheckingQueryItem = v4;

  return v5;
}

- (id)baselinePath
{
  v2 = MEMORY[0x1E69DC728];
  v3 = [(CHTextCheckingQueryItem *)self->_coreHandwritingTextCheckingQueryItem estimatedBaseline];

  return [v2 bezierPathWithCGPath:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      coreHandwritingTextCheckingQueryItem = self->_coreHandwritingTextCheckingQueryItem;
      v6 = [(PKProofreadingQueryItem *)v4 coreHandwritingTextCheckingQueryItem];
      v7 = [(CHTextCheckingQueryItem *)coreHandwritingTextCheckingQueryItem isEqualToTextCheckingQueryItem:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end