@interface ACXAppEventRecord
- (ACXAppEventRecord)initWithCoder:(id)a3;
- (ACXAppEventRecord)initWithDictionaryRepresentation:(id)a3;
- (ACXAppEventRecord)initWithRecordType:(unint64_t)a3 bundleID:(id)a4 sequenceNumber:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ACXAppEventRecord

- (ACXAppEventRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ACXAppEventRecord;
  v5 = [(ACXAppEventRecord *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventType"];
    v5->_eventType = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    if (!v7)
    {
      v12 = 0;
      goto LABEL_6;
    }

    bundleID = v5->_bundleID;
    v5->_bundleID = v7;
    v9 = v7;

    v10 = objc_opt_class();
    v11 = [v4 decodeObjectOfClass:v10 forKey:@"sequenceNumber"];
    v5->_sequenceNumber = [v11 unsignedIntegerValue];
  }

  v12 = v5;
LABEL_6:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  eventType = self->_eventType;
  v5 = a3;
  v6 = [NSNumber numberWithUnsignedInteger:eventType];
  [v5 encodeObject:v6 forKey:@"eventType"];

  [v5 encodeObject:self->_bundleID forKey:@"bundleID"];
  v7 = [NSNumber numberWithUnsignedInteger:self->_sequenceNumber];
  [v5 encodeObject:v7 forKey:@"sequenceNumber"];
}

- (ACXAppEventRecord)initWithRecordType:(unint64_t)a3 bundleID:(id)a4 sequenceNumber:(unint64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = ACXAppEventRecord;
  v10 = [(ACXAppEventRecord *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_eventType = a3;
    objc_storeStrong(&v10->_bundleID, a4);
    v11->_sequenceNumber = a5;
  }

  return v11;
}

- (ACXAppEventRecord)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"R"];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 objectForKeyedSubscript:@"B"];
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 objectForKeyedSubscript:@"S"];
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v7 && v10 && v13)
  {
    self = -[ACXAppEventRecord initWithRecordType:bundleID:sequenceNumber:](self, "initWithRecordType:bundleID:sequenceNumber:", [v7 unsignedIntegerValue], v10, objc_msgSend(v13, "unsignedIntegerValue"));
    v14 = self;
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v14 = 0;
  }

  return v14;
}

- (id)dictionaryRepresentation
{
  v8[0] = @"R";
  v3 = [NSNumber numberWithUnsignedInteger:[(ACXAppEventRecord *)self eventType]];
  v9[0] = v3;
  v8[1] = @"B";
  v4 = [(ACXAppEventRecord *)self bundleID];
  v9[1] = v4;
  v8[2] = @"S";
  v5 = [NSNumber numberWithUnsignedInteger:[(ACXAppEventRecord *)self sequenceNumber]];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(ACXAppEventRecord *)self eventType];
  v4 = [(ACXAppEventRecord *)self bundleID];
  v5 = [v4 hash];
  v6 = v3 ^ [(ACXAppEventRecord *)self sequenceNumber];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 eventType];
    if (v6 == -[ACXAppEventRecord eventType](self, "eventType") && ([v5 bundleID], v7 = objc_claimAutoreleasedReturnValue(), -[ACXAppEventRecord bundleID](self, "bundleID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
    {
      v10 = [v5 sequenceNumber];
      v11 = v10 == [(ACXAppEventRecord *)self sequenceNumber];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ACXAppEventRecord *)self eventType];
  v6 = [(ACXAppEventRecord *)self bundleID];
  v7 = [v4 initWithRecordType:v5 bundleID:v6 sequenceNumber:{-[ACXAppEventRecord sequenceNumber](self, "sequenceNumber")}];

  return v7;
}

@end