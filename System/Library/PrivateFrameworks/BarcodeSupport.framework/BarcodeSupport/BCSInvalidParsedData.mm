@interface BCSInvalidParsedData
- (BCSInvalidParsedData)initWithCoder:(id)coder;
- (BCSInvalidParsedData)initWithInvalidDataType:(int64_t)type invalidContents:(id)contents;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSInvalidParsedData

- (BCSInvalidParsedData)initWithInvalidDataType:(int64_t)type invalidContents:(id)contents
{
  contentsCopy = contents;
  v13.receiver = self;
  v13.super_class = BCSInvalidParsedData;
  v7 = [(BCSInvalidParsedData *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_invalidDataType = type;
    v9 = [contentsCopy copy];
    invalidContents = v8->_invalidContents;
    v8->_invalidContents = v9;

    v11 = v8;
  }

  return v8;
}

- (BCSInvalidParsedData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"invalidDataType"];
  v6 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"invalidContents"];
  v7 = -[BCSInvalidParsedData initWithInvalidDataType:invalidContents:](self, "initWithInvalidDataType:invalidContents:", [v5 integerValue], v6);
  v8 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"invalidURLScheme"];

  if ([v8 length])
  {
    [(BCSInvalidParsedData *)v7 setInvalidURLScheme:v8];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  invalidDataType = self->_invalidDataType;
  coderCopy = coder;
  [coderCopy encodeInteger:invalidDataType forKey:@"invalidDataType"];
  [coderCopy encodeObject:self->_invalidContents forKey:@"invalidContents"];
  [coderCopy encodeObject:self->_invalidURLScheme forKey:@"invalidURLScheme"];
}

@end