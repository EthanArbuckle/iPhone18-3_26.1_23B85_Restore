@interface CMData
+ (id)classes;
+ (id)withData:(id)a3;
- (CMData)initWithCoder:(id)a3;
- (CMData)initWithMessage:(id)a3 timestamp:(double)a4 isSent:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMData

- (CMData)initWithMessage:(id)a3 timestamp:(double)a4 isSent:(BOOL)a5
{
  v8 = a3;
  v18.receiver = self;
  v18.super_class = CMData;
  v9 = [(CMData *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_timestamp = a4;
    v9->_isSent = a5;
    v11 = [v8 fromPeerDisplayName];
    sourcePeerDisplayName = v10->_sourcePeerDisplayName;
    v10->_sourcePeerDisplayName = v11;

    v10->_type = [v8 cmDataType];
    v13 = [v8 cmData];
    data = v10->_data;
    v10->_data = v13;

    v15 = [v8 cmAdditionalData];
    additionalData = v10->_additionalData;
    v10->_additionalData = v15;
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

+ (id)withData:(id)a3
{
  v3 = a3;
  v4 = +[CMData classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:v3 classes:v4];

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

- (CMData)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CMData;
  v5 = [(CMData *)&v15 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectForKey:@"pd"];
    sourcePeerDisplayName = v5->_sourcePeerDisplayName;
    v5->_sourcePeerDisplayName = v7;

    [v4 decodeDoubleForKey:@"t"];
    v5->_timestamp = v9;
    v5->_type = [v4 decodeIntegerForKey:@"cmType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cmData"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cmAddData"];
    additionalData = v5->_additionalData;
    v5->_additionalData = v12;

    v5->_isSent = [v4 decodeBoolForKey:@"is"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [v5 encodeObject:self->_sourcePeerDisplayName forKey:@"pd"];
  [v5 encodeDouble:@"t" forKey:self->_timestamp];
  [v5 encodeInteger:self->_type forKey:@"cmType"];
  [v5 encodeObject:self->_data forKey:@"cmData"];
  [v5 encodeObject:self->_additionalData forKey:@"cmAddData"];
  [v5 encodeBool:self->_isSent forKey:@"is"];
  objc_autoreleasePoolPop(v4);
}

@end