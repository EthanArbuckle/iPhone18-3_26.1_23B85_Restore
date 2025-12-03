@interface ACXAppEventRecord
- (ACXAppEventRecord)initWithCoder:(id)coder;
- (ACXAppEventRecord)initWithDictionaryRepresentation:(id)representation;
- (ACXAppEventRecord)initWithRecordType:(unint64_t)type bundleID:(id)d sequenceNumber:(unint64_t)number;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACXAppEventRecord

- (ACXAppEventRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ACXAppEventRecord;
  v5 = [(ACXAppEventRecord *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventType"];
    v5->_eventType = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    if (!v7)
    {
      v12 = 0;
      goto LABEL_6;
    }

    bundleID = v5->_bundleID;
    v5->_bundleID = v7;
    v9 = v7;

    v10 = objc_opt_class();
    v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"sequenceNumber"];
    v5->_sequenceNumber = [v11 unsignedIntegerValue];
  }

  v12 = v5;
LABEL_6:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  eventType = self->_eventType;
  coderCopy = coder;
  v6 = [NSNumber numberWithUnsignedInteger:eventType];
  [coderCopy encodeObject:v6 forKey:@"eventType"];

  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  v7 = [NSNumber numberWithUnsignedInteger:self->_sequenceNumber];
  [coderCopy encodeObject:v7 forKey:@"sequenceNumber"];
}

- (ACXAppEventRecord)initWithRecordType:(unint64_t)type bundleID:(id)d sequenceNumber:(unint64_t)number
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = ACXAppEventRecord;
  v10 = [(ACXAppEventRecord *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_eventType = type;
    objc_storeStrong(&v10->_bundleID, d);
    v11->_sequenceNumber = number;
  }

  return v11;
}

- (ACXAppEventRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"R"];
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

  v8 = [representationCopy objectForKeyedSubscript:@"B"];
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

  v11 = [representationCopy objectForKeyedSubscript:@"S"];
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
    selfCopy = self;
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v8[0] = @"R";
  v3 = [NSNumber numberWithUnsignedInteger:[(ACXAppEventRecord *)self eventType]];
  v9[0] = v3;
  v8[1] = @"B";
  bundleID = [(ACXAppEventRecord *)self bundleID];
  v9[1] = bundleID;
  v8[2] = @"S";
  v5 = [NSNumber numberWithUnsignedInteger:[(ACXAppEventRecord *)self sequenceNumber]];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (unint64_t)hash
{
  eventType = [(ACXAppEventRecord *)self eventType];
  bundleID = [(ACXAppEventRecord *)self bundleID];
  v5 = [bundleID hash];
  v6 = eventType ^ [(ACXAppEventRecord *)self sequenceNumber];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    eventType = [v5 eventType];
    if (eventType == -[ACXAppEventRecord eventType](self, "eventType") && ([v5 bundleID], v7 = objc_claimAutoreleasedReturnValue(), -[ACXAppEventRecord bundleID](self, "bundleID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
    {
      sequenceNumber = [v5 sequenceNumber];
      v11 = sequenceNumber == [(ACXAppEventRecord *)self sequenceNumber];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  eventType = [(ACXAppEventRecord *)self eventType];
  bundleID = [(ACXAppEventRecord *)self bundleID];
  v7 = [v4 initWithRecordType:eventType bundleID:bundleID sequenceNumber:{-[ACXAppEventRecord sequenceNumber](self, "sequenceNumber")}];

  return v7;
}

@end