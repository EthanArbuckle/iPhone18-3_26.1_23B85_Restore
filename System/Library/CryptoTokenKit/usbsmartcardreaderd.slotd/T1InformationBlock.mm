@interface T1InformationBlock
+ (id)informationBlockWithNad:(unsigned __int8)nad sequence:(char)sequence moreData:(BOOL)data informationField:(id)field redundancyCode:(char)code;
- (T1InformationBlock)initWithData:(id)data;
- (id)description;
@end

@implementation T1InformationBlock

- (T1InformationBlock)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = T1InformationBlock;
  return [(T1TPDUBlock *)&v4 initWithData:data needAck:1];
}

- (id)description
{
  v3 = +[NSMutableString string];
  v6.receiver = self;
  v6.super_class = T1InformationBlock;
  v4 = [(T1TPDUBlock *)&v6 description];
  [v3 appendFormat:@"{ %@", v4];

  [v3 appendFormat:@"moreData: %d }", -[T1InformationBlock moreData](self, "moreData")];

  return v3;
}

+ (id)informationBlockWithNad:(unsigned __int8)nad sequence:(char)sequence moreData:(BOOL)data informationField:(id)field redundancyCode:(char)code
{
  codeCopy = code;
  dataCopy = data;
  v9 = sequence != 0;
  nadCopy = nad;
  fieldCopy = field;
  v11 = +[NSMutableData data];
  [v11 appendBytes:&nadCopy length:1];
  v12 = v9 << 6;
  if (dataCopy)
  {
    v12 = ((v9 & 1) << 6) | 0x20;
  }

  v21 = v12;
  [v11 appendBytes:&v21 length:1];
  v20 = [fieldCopy length];
  [v11 appendBytes:&v20 length:1];
  if ([fieldCopy length])
  {
    [v11 appendData:fieldCopy];
  }

  if (codeCopy)
  {
    v18 = [RedundancyCheck crc16:v11];
    v13 = &v18;
    v14 = v11;
    v15 = 2;
  }

  else
  {
    v19 = [RedundancyCheck lrc:v11];
    v13 = &v19;
    v14 = v11;
    v15 = 1;
  }

  [v14 appendBytes:v13 length:v15];
  v16 = [[T1InformationBlock alloc] initWithData:v11];

  return v16;
}

@end