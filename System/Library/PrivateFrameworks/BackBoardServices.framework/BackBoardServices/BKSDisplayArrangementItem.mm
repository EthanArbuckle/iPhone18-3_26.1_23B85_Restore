@interface BKSDisplayArrangementItem
- (BKSDisplayArrangementItem)initWithCoder:(id)a3;
- (BKSDisplayArrangementItem)initWithDisplayUUID:(id)a3 relativeToDisplayUUID:(id)a4 alongEdge:(unsigned int)a5 atOffset:(double)a6;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSDisplayArrangementItem

- (BKSDisplayArrangementItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relativeDisplayUUID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"edge"];
  v8 = [v7 unsignedIntValue];

  [v4 decodeDoubleForKey:@"offset"];
  v10 = v9;

  v11 = [(BKSDisplayArrangementItem *)self initWithDisplayUUID:v5 relativeToDisplayUUID:v6 alongEdge:v8 atOffset:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  displayUUID = self->_displayUUID;
  v6 = a3;
  [v6 encodeObject:displayUUID forKey:@"displayUUID"];
  [v6 encodeObject:self->_relativeDisplayUUID forKey:@"relativeDisplayUUID"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_edge];
  [v6 encodeObject:v5 forKey:@"edge"];

  [v6 encodeDouble:@"offset" forKey:self->_offset];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  [v6 appendString:self->_displayUUID withName:@"displayUUID"];
  [v6 appendString:self->_relativeDisplayUUID withName:@"relativeDisplayUUID" skipIfEmpty:1];
  v4 = [v6 appendUnsignedInteger:self->_edge withName:@"edge"];
  v5 = [v6 appendFloat:@"offset" withName:self->_offset];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  displayUUID = self->_displayUUID;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __37__BKSDisplayArrangementItem_isEqual___block_invoke;
  v28[3] = &unk_1E6F470D8;
  v7 = v4;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendString:self->_displayUUID];
  v5 = [v3 appendString:self->_relativeDisplayUUID];
  v6 = [v3 appendUnsignedInteger:self->_edge];
  v7 = [v3 appendCGFloat:self->_offset];
  v8 = [v3 hash];

  return v8;
}

- (BKSDisplayArrangementItem)initWithDisplayUUID:(id)a3 relativeToDisplayUUID:(id)a4 alongEdge:(unsigned int)a5 atOffset:(double)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = BKSDisplayArrangementItem;
  v12 = [(BKSDisplayArrangementItem *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    displayUUID = v12->_displayUUID;
    v12->_displayUUID = v13;

    v15 = [v11 copy];
    relativeDisplayUUID = v12->_relativeDisplayUUID;
    v12->_relativeDisplayUUID = v15;

    v12->_edge = a5;
    v12->_offset = a6;
  }

  return v12;
}

@end