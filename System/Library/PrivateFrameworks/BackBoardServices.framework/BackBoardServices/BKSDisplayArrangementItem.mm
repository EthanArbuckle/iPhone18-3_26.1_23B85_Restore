@interface BKSDisplayArrangementItem
- (BKSDisplayArrangementItem)initWithCoder:(id)coder;
- (BKSDisplayArrangementItem)initWithDisplayUUID:(id)d relativeToDisplayUUID:(id)iD alongEdge:(unsigned int)edge atOffset:(double)offset;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSDisplayArrangementItem

- (BKSDisplayArrangementItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relativeDisplayUUID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"edge"];
  unsignedIntValue = [v7 unsignedIntValue];

  [coderCopy decodeDoubleForKey:@"offset"];
  v10 = v9;

  v11 = [(BKSDisplayArrangementItem *)self initWithDisplayUUID:v5 relativeToDisplayUUID:v6 alongEdge:unsignedIntValue atOffset:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  displayUUID = self->_displayUUID;
  coderCopy = coder;
  [coderCopy encodeObject:displayUUID forKey:@"displayUUID"];
  [coderCopy encodeObject:self->_relativeDisplayUUID forKey:@"relativeDisplayUUID"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_edge];
  [coderCopy encodeObject:v5 forKey:@"edge"];

  [coderCopy encodeDouble:@"offset" forKey:self->_offset];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  [formatterCopy appendString:self->_displayUUID withName:@"displayUUID"];
  [formatterCopy appendString:self->_relativeDisplayUUID withName:@"relativeDisplayUUID" skipIfEmpty:1];
  v4 = [formatterCopy appendUnsignedInteger:self->_edge withName:@"edge"];
  v5 = [formatterCopy appendFloat:@"offset" withName:self->_offset];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  displayUUID = self->_displayUUID;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __37__BKSDisplayArrangementItem_isEqual___block_invoke;
  v28[3] = &unk_1E6F470D8;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendString:displayUUID counterpart:v28];
  relativeDisplayUUID = self->_relativeDisplayUUID;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __37__BKSDisplayArrangementItem_isEqual___block_invoke_2;
  v26[3] = &unk_1E6F470D8;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendString:relativeDisplayUUID counterpart:v26];
  edge = self->_edge;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __37__BKSDisplayArrangementItem_isEqual___block_invoke_3;
  v24[3] = &unk_1E6F46710;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendUnsignedInteger:edge counterpart:v24];
  offset = self->_offset;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __37__BKSDisplayArrangementItem_isEqual___block_invoke_4;
  v22 = &unk_1E6F46738;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendCGFloat:&v19 counterpart:offset];
  LOBYTE(v13) = [v5 isEqual];

  return v13;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendString:self->_displayUUID];
  v5 = [builder appendString:self->_relativeDisplayUUID];
  v6 = [builder appendUnsignedInteger:self->_edge];
  v7 = [builder appendCGFloat:self->_offset];
  v8 = [builder hash];

  return v8;
}

- (BKSDisplayArrangementItem)initWithDisplayUUID:(id)d relativeToDisplayUUID:(id)iD alongEdge:(unsigned int)edge atOffset:(double)offset
{
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = BKSDisplayArrangementItem;
  v12 = [(BKSDisplayArrangementItem *)&v18 init];
  if (v12)
  {
    v13 = [dCopy copy];
    displayUUID = v12->_displayUUID;
    v12->_displayUUID = v13;

    v15 = [iDCopy copy];
    relativeDisplayUUID = v12->_relativeDisplayUUID;
    v12->_relativeDisplayUUID = v15;

    v12->_edge = edge;
    v12->_offset = offset;
  }

  return v12;
}

@end