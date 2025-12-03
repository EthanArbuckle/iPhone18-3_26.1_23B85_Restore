@interface CMData
+ (id)classes;
+ (id)withData:(id)data;
- (CMData)initWithCoder:(id)coder;
- (CMData)initWithMessage:(id)message timestamp:(double)timestamp isSent:(BOOL)sent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMData

- (CMData)initWithMessage:(id)message timestamp:(double)timestamp isSent:(BOOL)sent
{
  messageCopy = message;
  v18.receiver = self;
  v18.super_class = CMData;
  v9 = [(CMData *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_timestamp = timestamp;
    v9->_isSent = sent;
    fromPeerDisplayName = [messageCopy fromPeerDisplayName];
    sourcePeerDisplayName = v10->_sourcePeerDisplayName;
    v10->_sourcePeerDisplayName = fromPeerDisplayName;

    v10->_type = [messageCopy cmDataType];
    cmData = [messageCopy cmData];
    data = v10->_data;
    v10->_data = cmData;

    cmAdditionalData = [messageCopy cmAdditionalData];
    additionalData = v10->_additionalData;
    v10->_additionalData = cmAdditionalData;
  }

  return v10;
}

+ (id)classes
{
  if (qword_27E3C8518 == -1)
  {
    v3 = qword_27E3C8510;
  }

  else
  {
    sub_24019CAD8();
    v3 = qword_27E3C8510;
  }

  return v3;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CMData classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:dataCopy classes:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (CMData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CMData;
  v5 = [(CMData *)&v15 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectForKey:@"pd"];
    sourcePeerDisplayName = v5->_sourcePeerDisplayName;
    v5->_sourcePeerDisplayName = v7;

    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v9;
    v5->_type = [coderCopy decodeIntegerForKey:@"cmType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cmData"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cmAddData"];
    additionalData = v5->_additionalData;
    v5->_additionalData = v12;

    v5->_isSent = [coderCopy decodeBoolForKey:@"is"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_sourcePeerDisplayName forKey:@"pd"];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  [coderCopy encodeInteger:self->_type forKey:@"cmType"];
  [coderCopy encodeObject:self->_data forKey:@"cmData"];
  [coderCopy encodeObject:self->_additionalData forKey:@"cmAddData"];
  [coderCopy encodeBool:self->_isSent forKey:@"is"];
  objc_autoreleasePoolPop(v4);
}

@end