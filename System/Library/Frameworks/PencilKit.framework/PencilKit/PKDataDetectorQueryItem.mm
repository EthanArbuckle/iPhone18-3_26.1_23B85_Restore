@interface PKDataDetectorQueryItem
- (BOOL)isEqual:(id)equal;
- (PKDataDetectorQueryItem)initWithCoreHandwritingDataDetectorQueryItem:(id)item;
- (id)baselinePath;
@end

@implementation PKDataDetectorQueryItem

- (PKDataDetectorQueryItem)initWithCoreHandwritingDataDetectorQueryItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = PKDataDetectorQueryItem;
  v5 = [(PKDataDetectorQueryItem *)&v8 init];
  coreHandwritingDataDetectorQueryItem = v5->_coreHandwritingDataDetectorQueryItem;
  v5->_coreHandwritingDataDetectorQueryItem = itemCopy;

  return v5;
}

- (id)baselinePath
{
  v2 = MEMORY[0x1E69DC728];
  estimatedBaseline = [(CHDataDetectorQueryItem *)self->_coreHandwritingDataDetectorQueryItem estimatedBaseline];

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
      coreHandwritingDataDetectorQueryItem = self->_coreHandwritingDataDetectorQueryItem;
      coreHandwritingDataDetectorQueryItem = [(PKDataDetectorQueryItem *)equalCopy coreHandwritingDataDetectorQueryItem];
      v7 = [(CHDataDetectorQueryItem *)coreHandwritingDataDetectorQueryItem isEqualToDataDetectorQueryItem:coreHandwritingDataDetectorQueryItem];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end