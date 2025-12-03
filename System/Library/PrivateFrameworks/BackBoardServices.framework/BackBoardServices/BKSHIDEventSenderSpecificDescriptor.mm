@interface BKSHIDEventSenderSpecificDescriptor
- (BKSHIDEventSenderSpecificDescriptor)initWithCoder:(id)coder;
- (BKSHIDEventSenderSpecificDescriptor)initWithDescriptor:(id)descriptor senderID:(unint64_t)d;
- (BOOL)describes:(id)describes;
- (BOOL)matchesHIDEvent:(__IOHIDEvent *)event;
- (id)descriptorByAddingSenderIDToMatchCriteria:(unint64_t)criteria;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventSenderSpecificDescriptor

- (BOOL)matchesHIDEvent:(__IOHIDEvent *)event
{
  senderID = [(BKSHIDEventSenderSpecificDescriptor *)self senderID];
  if (senderID != IOHIDEventGetSenderID())
  {
    return 0;
  }

  sourceDescriptor = self->_sourceDescriptor;

  return [(BKSHIDEventDescriptor *)sourceDescriptor matchesHIDEvent:event];
}

- (BOOL)describes:(id)describes
{
  describesCopy = describes;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = describesCopy;
    senderID = [(BKSHIDEventSenderSpecificDescriptor *)self senderID];
    if (senderID == [v5 senderID])
    {
      sourceDescriptor = self->_sourceDescriptor;
      sourceDescriptor = [v5 sourceDescriptor];
      v9 = [(BKSHIDEventDescriptor *)sourceDescriptor describes:sourceDescriptor];
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

- (BKSHIDEventSenderSpecificDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BKSHIDEventSenderSpecificDescriptor;
  v5 = [(BKSHIDEventDescriptor *)&v12 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_senderID"];
  v5->_senderID = [v6 unsignedLongLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceDescriptor"];
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

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  senderID = self->_senderID;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:senderID];
  [coderCopy encodeObject:v6 forKey:@"_senderID"];

  [coderCopy encodeObject:self->_sourceDescriptor forKey:@"_sourceDescriptor"];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v7.receiver = self;
  v7.super_class = BKSHIDEventSenderSpecificDescriptor;
  [(BKSHIDEventDescriptor *)&v7 appendDescriptionToStream:streamCopy];
  v5 = [streamCopy appendUInt64:self->_senderID withName:@"senderID" format:1];
  v6 = [streamCopy appendObject:self->_sourceDescriptor withName:@"sourceDescriptor"];
}

- (id)descriptorByAddingSenderIDToMatchCriteria:(unint64_t)criteria
{
  v3 = [[BKSHIDEventSenderSpecificDescriptor alloc] initWithDescriptor:self->_sourceDescriptor senderID:criteria];

  return v3;
}

- (BKSHIDEventSenderSpecificDescriptor)initWithDescriptor:(id)descriptor senderID:(unint64_t)d
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = BKSHIDEventSenderSpecificDescriptor;
  v8 = [(BKSHIDEventDescriptor *)&v11 _initWithEventType:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, descriptor);
    v9->_senderID = d;
  }

  return v9;
}

@end