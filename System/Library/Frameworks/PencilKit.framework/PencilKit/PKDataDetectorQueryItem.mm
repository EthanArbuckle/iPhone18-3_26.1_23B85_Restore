@interface PKDataDetectorQueryItem
- (BOOL)isEqual:(id)a3;
- (PKDataDetectorQueryItem)initWithCoreHandwritingDataDetectorQueryItem:(id)a3;
- (id)baselinePath;
@end

@implementation PKDataDetectorQueryItem

- (PKDataDetectorQueryItem)initWithCoreHandwritingDataDetectorQueryItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKDataDetectorQueryItem;
  v5 = [(PKDataDetectorQueryItem *)&v8 init];
  coreHandwritingDataDetectorQueryItem = v5->_coreHandwritingDataDetectorQueryItem;
  v5->_coreHandwritingDataDetectorQueryItem = v4;

  return v5;
}

- (id)baselinePath
{
  v2 = MEMORY[0x1E69DC728];
  v3 = [(CHDataDetectorQueryItem *)self->_coreHandwritingDataDetectorQueryItem estimatedBaseline];

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
      coreHandwritingDataDetectorQueryItem = self->_coreHandwritingDataDetectorQueryItem;
      v6 = [(PKDataDetectorQueryItem *)v4 coreHandwritingDataDetectorQueryItem];
      v7 = [(CHDataDetectorQueryItem *)coreHandwritingDataDetectorQueryItem isEqualToDataDetectorQueryItem:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end