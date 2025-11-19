@interface BCSStringData
- (BCSStringData)initWithCoder:(id)a3;
- (BCSStringData)initWithString:(id)a3;
@end

@implementation BCSStringData

- (BCSStringData)initWithString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BCSStringData;
  v5 = [(BCSStringData *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    extraPreviewText = v5->_extraPreviewText;
    v5->_extraPreviewText = v6;

    v8 = v5;
  }

  return v5;
}

- (BCSStringData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"extraPreviewText"];

  v6 = [(BCSStringData *)self initWithString:v5];
  return v6;
}

@end