@interface BKSTouchDeliveryUpdate
- (BKSTouchDeliveryUpdate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSTouchDeliveryUpdate

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"updateType"];
  [coderCopy encodeInteger:self->_touchIdentifier forKey:@"touchIdentifier"];
  [coderCopy encodeBool:self->_isDetached forKey:@"isDetached"];
  [coderCopy encodeInteger:self->_contextID forKey:@"contextID"];
  [coderCopy encodeInteger:self->_pid forKey:@"pid"];
}

- (BKSTouchDeliveryUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BKSTouchDeliveryUpdate;
  v5 = [(BKSTouchDeliveryUpdate *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"updateType"];
    v5->_touchIdentifier = [coderCopy decodeIntegerForKey:@"touchIdentifier"];
    v5->_isDetached = [coderCopy decodeBoolForKey:@"isDetached"];
    v5->_contextID = [coderCopy decodeIntegerForKey:@"contextID"];
    v5->_pid = [coderCopy decodeIntegerForKey:@"pid"];
  }

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__BKSTouchDeliveryUpdate_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:0 block:v6];
}

id __52__BKSTouchDeliveryUpdate_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromBKSTouchDeliveryUpdateType(*(*(a1 + 40) + 24));
  [v2 appendString:v3 withName:0];

  v4 = *(a1 + 40);
  v5 = *(v4 + 12);
  if (v5)
  {
    v6 = [*(a1 + 32) appendInteger:v5 withName:@"touchIdentifier"];
    v4 = *(a1 + 40);
  }

  if (*(v4 + 8) == 1)
  {
    v7 = [*(a1 + 32) appendBool:1 withName:@"detached"];
    v4 = *(a1 + 40);
  }

  result = [*(a1 + 32) appendInteger:*(v4 + 20) withName:@"pid"];
  v9 = *(*(a1 + 40) + 16);
  if (v9)
  {
    return [*(a1 + 32) appendInteger:v9 withName:@"contextID"];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v8 && self->_type == v8[3] && self->_touchIdentifier == *(v8 + 3) && self->_isDetached == *(v8 + 8) && self->_contextID == *(v8 + 4) && self->_pid == *(v8 + 5);
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[BKSTouchDeliveryUpdate allocWithZone:?]];
  *(result + 3) = self->_type;
  *(result + 3) = self->_touchIdentifier;
  *(result + 8) = self->_isDetached;
  *(result + 4) = self->_contextID;
  *(result + 5) = self->_pid;
  return result;
}

@end