@interface MXCallStackFrame
- (MXCallStackFrame)initWithBinaryName:(id)name binaryUUID:(id)d address:(id)address binaryOffset:(id)offset sampleCount:(id)count withDepth:(unint64_t)depth subFrameArray:(id)array;
- (MXCallStackFrame)initWithCoder:(id)coder;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXCallStackFrame

- (MXCallStackFrame)initWithBinaryName:(id)name binaryUUID:(id)d address:(id)address binaryOffset:(id)offset sampleCount:(id)count withDepth:(unint64_t)depth subFrameArray:(id)array
{
  nameCopy = name;
  dCopy = d;
  addressCopy = address;
  offsetCopy = offset;
  countCopy = count;
  arrayCopy = array;
  v26.receiver = self;
  v26.super_class = MXCallStackFrame;
  v18 = [(MXCallStackFrame *)&v26 init];
  p_isa = &v18->super.isa;
  if (!v18)
  {
    goto LABEL_5;
  }

  if (depth <= 0x82)
  {
    objc_storeStrong(&v18->_binaryName, name);
    objc_storeStrong(p_isa + 3, d);
    objc_storeStrong(p_isa + 2, address);
    objc_storeStrong(p_isa + 4, offset);
    objc_storeStrong(p_isa + 5, count);
    objc_storeStrong(p_isa + 6, array);
LABEL_5:
    v20 = p_isa;
    goto LABEL_6;
  }

  v20 = 0;
LABEL_6:

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  binaryName = self->_binaryName;
  coderCopy = coder;
  [coderCopy encodeObject:binaryName forKey:@"binaryName"];
  [coderCopy encodeObject:self->_binaryUUID forKey:@"binaryUUID"];
  [coderCopy encodeObject:self->_address forKey:@"address"];
  [coderCopy encodeObject:self->_offsetInBinary forKey:@"offsetIntoBinaryTextSegment"];
  [coderCopy encodeObject:self->_sampleCount forKey:@"sampleCount"];
  [coderCopy encodeObject:self->_subFrames forKey:@"subFrames"];
}

- (MXCallStackFrame)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = MXCallStackFrame;
  v5 = [(MXCallStackFrame *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"binaryName"];
    binaryName = v5->_binaryName;
    v5->_binaryName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"binaryUUID"];
    binaryUUID = v5->_binaryUUID;
    v5->_binaryUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offsetIntoBinaryTextSegment"];
    offsetInBinary = v5->_offsetInBinary;
    v5->_offsetInBinary = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sampleCount"];
    sampleCount = v5->_sampleCount;
    v5->_sampleCount = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"subFrames"];
    subFrames = v5->_subFrames;
    v5->_subFrames = v19;
  }

  return v5;
}

- (id)toDictionary
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  sampleCount = self->_sampleCount;
  if (sampleCount)
  {
    [v3 setObject:sampleCount forKey:@"sampleCount"];
  }

  binaryName = self->_binaryName;
  if (binaryName)
  {
    [v4 setObject:binaryName forKey:@"binaryName"];
  }

  address = self->_address;
  if (address)
  {
    [v4 setObject:address forKey:@"address"];
  }

  binaryUUID = self->_binaryUUID;
  if (binaryUUID)
  {
    uUIDString = [(NSUUID *)binaryUUID UUIDString];
    [v4 setObject:uUIDString forKey:@"binaryUUID"];
  }

  offsetInBinary = self->_offsetInBinary;
  if (offsetInBinary)
  {
    [v4 setObject:offsetInBinary forKey:@"offsetIntoBinaryTextSegment"];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = self->_subFrames;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        toDictionary = [*(*(&v20 + 1) + 8 * i) toDictionary];
        [v11 addObject:toDictionary];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    [v4 setObject:v11 forKey:@"subFrames"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

@end