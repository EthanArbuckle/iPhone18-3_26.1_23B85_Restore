@interface BKSHIDEventSenderSpecificDescriptor
- (BKSHIDEventSenderSpecificDescriptor)initWithCoder:(id)a3;
- (BKSHIDEventSenderSpecificDescriptor)initWithDescriptor:(id)a3 senderID:(unint64_t)a4;
- (BOOL)describes:(id)a3;
- (BOOL)matchesHIDEvent:(__IOHIDEvent *)a3;
- (id)descriptorByAddingSenderIDToMatchCriteria:(unint64_t)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventSenderSpecificDescriptor

- (BOOL)matchesHIDEvent:(__IOHIDEvent *)a3
{
  v5 = [(BKSHIDEventSenderSpecificDescriptor *)self senderID];
  if (v5 != IOHIDEventGetSenderID())
  {
    return 0;
  }

  sourceDescriptor = self->_sourceDescriptor;

  return [(BKSHIDEventDescriptor *)sourceDescriptor matchesHIDEvent:a3];
}

- (BOOL)describes:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BKSHIDEventSenderSpecificDescriptor *)self senderID];
    if (v6 == [v5 senderID])
    {
      sourceDescriptor = self->_sourceDescriptor;
      v8 = [v5 sourceDescriptor];
      v9 = [(BKSHIDEventDescriptor *)sourceDescriptor describes:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BKSHIDEventSenderSpecificDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BKSHIDEventSenderSpecificDescriptor;
  v5 = [(BKSHIDEventDescriptor *)&v12 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_senderID"];
  v5->_senderID = [v6 unsignedLongLongValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sourceDescriptor"];
  sourceDescriptor = v5->_sourceDescriptor;
  v5->_sourceDescriptor = v7;

  v9 = v5->_sourceDescriptor;
  if (v9)
  {
    v5 = [(BKSHIDEventSenderSpecificDescriptor *)v5 initWithDescriptor:v9 senderID:v5->_senderID];
    v10 = v5;
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  senderID = self->_senderID;
  v7 = a3;
  v6 = [v4 numberWithUnsignedLongLong:senderID];
  [v7 encodeObject:v6 forKey:@"_senderID"];

  [v7 encodeObject:self->_sourceDescriptor forKey:@"_sourceDescriptor"];
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BKSHIDEventSenderSpecificDescriptor;
  [(BKSHIDEventDescriptor *)&v7 appendDescriptionToStream:v4];
  v5 = [v4 appendUInt64:self->_senderID withName:@"senderID" format:1];
  v6 = [v4 appendObject:self->_sourceDescriptor withName:@"sourceDescriptor"];
}

- (id)descriptorByAddingSenderIDToMatchCriteria:(unint64_t)a3
{
  v3 = [[BKSHIDEventSenderSpecificDescriptor alloc] initWithDescriptor:self->_sourceDescriptor senderID:a3];

  return v3;
}

- (BKSHIDEventSenderSpecificDescriptor)initWithDescriptor:(id)a3 senderID:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BKSHIDEventSenderSpecificDescriptor;
  v8 = [(BKSHIDEventDescriptor *)&v11 _initWithEventType:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, a3);
    v9->_senderID = a4;
  }

  return v9;
}

@end