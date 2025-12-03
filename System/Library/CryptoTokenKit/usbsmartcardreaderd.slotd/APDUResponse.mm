@interface APDUResponse
+ (id)responseWithData:(id)data;
+ (id)responseWithDataField:(id)field SW1:(unsigned __int8)w1 SW2:(unsigned __int8)w2;
- (APDUResponse)initWithData:(id)data;
- (NSData)dataField;
- (id)description;
- (unsigned)SW1;
- (unsigned)SW2;
@end

@implementation APDUResponse

- (APDUResponse)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = APDUResponse;
  v6 = [(APDUResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

+ (id)responseWithData:(id)data
{
  dataCopy = data;
  v4 = [[APDUResponse alloc] initWithData:dataCopy];

  return v4;
}

+ (id)responseWithDataField:(id)field SW1:(unsigned __int8)w1 SW2:(unsigned __int8)w2
{
  w1Copy = w1;
  w2Copy = w2;
  v5 = [NSMutableData dataWithData:field];
  [v5 appendBytes:&w1Copy length:1];
  [v5 appendBytes:&w2Copy length:1];
  v6 = [[APDUResponse alloc] initWithData:v5];

  return v6;
}

- (id)description
{
  v3 = [(APDUResponse *)self SW1];
  v4 = [(APDUResponse *)self SW2];
  dataField = [(APDUResponse *)self dataField];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"{ SW1: 0x%.2x SW2: 0x%.2x dataLen: %lu }", v3, v4, [dataField length]);

  return v6;
}

- (unsigned)SW1
{
  data = [(APDUResponse *)self data];
  bytes = [data bytes];
  data2 = [(APDUResponse *)self data];
  LOBYTE(bytes) = *([data2 length] + bytes - 2);

  return bytes;
}

- (unsigned)SW2
{
  data = [(APDUResponse *)self data];
  bytes = [data bytes];
  data2 = [(APDUResponse *)self data];
  LOBYTE(bytes) = *([data2 length] + bytes - 1);

  return bytes;
}

- (NSData)dataField
{
  data = [(APDUResponse *)self data];
  v4 = [data length];

  if (v4 < 3)
  {
    v7 = 0;
  }

  else
  {
    data2 = [(APDUResponse *)self data];
    data3 = [(APDUResponse *)self data];
    v7 = [data2 subdataWithRange:{0, objc_msgSend(data3, "length") - 2}];
  }

  return v7;
}

@end