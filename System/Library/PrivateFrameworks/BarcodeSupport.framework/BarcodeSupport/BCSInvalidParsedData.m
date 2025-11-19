@interface BCSInvalidParsedData
- (BCSInvalidParsedData)initWithCoder:(id)a3;
- (BCSInvalidParsedData)initWithInvalidDataType:(int64_t)a3 invalidContents:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSInvalidParsedData

- (BCSInvalidParsedData)initWithInvalidDataType:(int64_t)a3 invalidContents:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = BCSInvalidParsedData;
  v7 = [(BCSInvalidParsedData *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_invalidDataType = a3;
    v9 = [v6 copy];
    invalidContents = v8->_invalidContents;
    v8->_invalidContents = v9;

    v11 = v8;
  }

  return v8;
}

- (BCSInvalidParsedData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"invalidDataType"];
  v6 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"invalidContents"];
  v7 = -[BCSInvalidParsedData initWithInvalidDataType:invalidContents:](self, "initWithInvalidDataType:invalidContents:", [v5 integerValue], v6);
  v8 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"invalidURLScheme"];

  if ([v8 length])
  {
    [(BCSInvalidParsedData *)v7 setInvalidURLScheme:v8];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  invalidDataType = self->_invalidDataType;
  v5 = a3;
  [v5 encodeInteger:invalidDataType forKey:@"invalidDataType"];
  [v5 encodeObject:self->_invalidContents forKey:@"invalidContents"];
  [v5 encodeObject:self->_invalidURLScheme forKey:@"invalidURLScheme"];
}

@end