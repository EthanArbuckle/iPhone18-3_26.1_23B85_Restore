@interface MXCallStackFrame
- (MXCallStackFrame)initWithBinaryName:(id)a3 binaryUUID:(id)a4 address:(id)a5 binaryOffset:(id)a6 sampleCount:(id)a7 withDepth:(unint64_t)a8 subFrameArray:(id)a9;
- (MXCallStackFrame)initWithCoder:(id)a3;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXCallStackFrame

- (MXCallStackFrame)initWithBinaryName:(id)a3 binaryUUID:(id)a4 address:(id)a5 binaryOffset:(id)a6 sampleCount:(id)a7 withDepth:(unint64_t)a8 subFrameArray:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v16 = a7;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = MXCallStackFrame;
  v18 = [(MXCallStackFrame *)&v26 init];
  p_isa = &v18->super.isa;
  if (!v18)
  {
    goto LABEL_5;
  }

  if (a8 <= 0x82)
  {
    objc_storeStrong(&v18->_binaryName, a3);
    objc_storeStrong(p_isa + 3, a4);
    objc_storeStrong(p_isa + 2, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
    objc_storeStrong(p_isa + 6, a9);
LABEL_5:
    v20 = p_isa;
    goto LABEL_6;
  }

  v20 = 0;
LABEL_6:

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  binaryName = self->_binaryName;
  v5 = a3;
  [v5 encodeObject:binaryName forKey:@"binaryName"];
  [v5 encodeObject:self->_binaryUUID forKey:@"binaryUUID"];
  [v5 encodeObject:self->_address forKey:@"address"];
  [v5 encodeObject:self->_offsetInBinary forKey:@"offsetIntoBinaryTextSegment"];
  [v5 encodeObject:self->_sampleCount forKey:@"sampleCount"];
  [v5 encodeObject:self->_subFrames forKey:@"subFrames"];
}

- (MXCallStackFrame)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MXCallStackFrame;
  v5 = [(MXCallStackFrame *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"binaryName"];
    binaryName = v5->_binaryName;
    v5->_binaryName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"binaryUUID"];
    binaryUUID = v5->_binaryUUID;
    v5->_binaryUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offsetIntoBinaryTextSegment"];
    offsetInBinary = v5->_offsetInBinary;
    v5->_offsetInBinary = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sampleCount"];
    sampleCount = v5->_sampleCount;
    v5->_sampleCount = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"subFrames"];
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
    v9 = [(NSUUID *)binaryUUID UUIDString];
    [v4 setObject:v9 forKey:@"binaryUUID"];
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

        v17 = [*(*(&v20 + 1) + 8 * i) toDictionary];
        [v11 addObject:v17];
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