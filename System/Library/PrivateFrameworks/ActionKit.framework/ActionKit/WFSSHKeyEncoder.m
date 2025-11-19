@interface WFSSHKeyEncoder
- (NSData)encodedData;
- (WFSSHKeyEncoder)init;
- (unint64_t)encodedLength;
- (void)encodeDataWithPreceedingLength:(id)a3;
- (void)encodeString:(id)a3;
- (void)encodeStringWithPreceedingLength:(id)a3;
@end

@implementation WFSSHKeyEncoder

- (void)encodeDataWithPreceedingLength:(id)a3
{
  v4 = a3;
  -[WFSSHKeyEncoder encodeInteger:](self, "encodeInteger:", [v4 length]);
  [(WFSSHKeyEncoder *)self encodeData:v4];
}

- (void)encodeStringWithPreceedingLength:(id)a3
{
  v4 = a3;
  v5 = [v4 lengthOfBytesUsingEncoding:4];
  [(WFSSHKeyEncoder *)self encodeInteger:v5];
  data = self->_data;
  v8 = [v4 dataUsingEncoding:4];

  v7 = v8;
  -[NSMutableData appendBytes:length:](data, "appendBytes:length:", [v8 bytes], v5);
}

- (void)encodeString:(id)a3
{
  v4 = a3;
  v5 = [v4 lengthOfBytesUsingEncoding:4];
  data = self->_data;
  v8 = [v4 dataUsingEncoding:4];

  v7 = v8;
  -[NSMutableData appendBytes:length:](data, "appendBytes:length:", [v8 bytes], v5);
}

- (NSData)encodedData
{
  v2 = [(WFSSHKeyEncoder *)self data];
  v3 = [v2 copy];

  return v3;
}

- (unint64_t)encodedLength
{
  v2 = [(WFSSHKeyEncoder *)self data];
  v3 = [v2 length];

  return v3;
}

- (WFSSHKeyEncoder)init
{
  v7.receiver = self;
  v7.super_class = WFSSHKeyEncoder;
  v2 = [(WFSSHKeyEncoder *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    data = v2->_data;
    v2->_data = v3;

    v5 = v2;
  }

  return v2;
}

@end