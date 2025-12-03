@interface PKProofreadingQueryItem
- (BOOL)isEqual:(id)equal;
- (PKProofreadingQueryItem)initWithCoreHandwritingTextCheckingQueryItem:(id)item;
- (id)baselinePath;
@end

@implementation PKProofreadingQueryItem

- (PKProofreadingQueryItem)initWithCoreHandwritingTextCheckingQueryItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = PKProofreadingQueryItem;
  v5 = [(PKProofreadingQueryItem *)&v8 init];
  coreHandwritingTextCheckingQueryItem = v5->_coreHandwritingTextCheckingQueryItem;
  v5->_coreHandwritingTextCheckingQueryItem = itemCopy;

  return v5;
}

- (id)baselinePath
{
  v2 = MEMORY[0x1E69DC728];
  estimatedBaseline = [(CHTextCheckingQueryItem *)self->_coreHandwritingTextCheckingQueryItem estimatedBaseline];

  return [v2 bezierPathWithCGPath:estimatedBaseline];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      coreHandwritingTextCheckingQueryItem = self->_coreHandwritingTextCheckingQueryItem;
      coreHandwritingTextCheckingQueryItem = [(PKProofreadingQueryItem *)equalCopy coreHandwritingTextCheckingQueryItem];
      v7 = [(CHTextCheckingQueryItem *)coreHandwritingTextCheckingQueryItem isEqualToTextCheckingQueryItem:coreHandwritingTextCheckingQueryItem];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end