@interface BCSStringData
- (BCSStringData)initWithCoder:(id)coder;
- (BCSStringData)initWithString:(id)string;
@end

@implementation BCSStringData

- (BCSStringData)initWithString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = BCSStringData;
  v5 = [(BCSStringData *)&v10 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    extraPreviewText = v5->_extraPreviewText;
    v5->_extraPreviewText = v6;

    v8 = v5;
  }

  return v5;
}

- (BCSStringData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"extraPreviewText"];

  v6 = [(BCSStringData *)self initWithString:v5];
  return v6;
}

@end