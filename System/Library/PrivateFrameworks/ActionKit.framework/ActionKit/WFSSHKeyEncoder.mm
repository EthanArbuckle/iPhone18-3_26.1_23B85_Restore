@interface WFSSHKeyEncoder
- (NSData)encodedData;
- (WFSSHKeyEncoder)init;
- (unint64_t)encodedLength;
- (void)encodeDataWithPreceedingLength:(id)length;
- (void)encodeString:(id)string;
- (void)encodeStringWithPreceedingLength:(id)length;
@end

@implementation WFSSHKeyEncoder

- (void)encodeDataWithPreceedingLength:(id)length
{
  lengthCopy = length;
  -[WFSSHKeyEncoder encodeInteger:](self, "encodeInteger:", [lengthCopy length]);
  [(WFSSHKeyEncoder *)self encodeData:lengthCopy];
}

- (void)encodeStringWithPreceedingLength:(id)length
{
  lengthCopy = length;
  v5 = [lengthCopy lengthOfBytesUsingEncoding:4];
  [(WFSSHKeyEncoder *)self encodeInteger:v5];
  data = self->_data;
  v8 = [lengthCopy dataUsingEncoding:4];

  v7 = v8;
  -[NSMutableData appendBytes:length:](data, "appendBytes:length:", [v8 bytes], v5);
}

- (void)encodeString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy lengthOfBytesUsingEncoding:4];
  data = self->_data;
  v8 = [stringCopy dataUsingEncoding:4];

  v7 = v8;
  -[NSMutableData appendBytes:length:](data, "appendBytes:length:", [v8 bytes], v5);
}

- (NSData)encodedData
{
  data = [(WFSSHKeyEncoder *)self data];
  v3 = [data copy];

  return v3;
}

- (unint64_t)encodedLength
{
  data = [(WFSSHKeyEncoder *)self data];
  v3 = [data length];

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