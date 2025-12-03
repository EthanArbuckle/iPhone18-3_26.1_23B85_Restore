@interface AFMemoryInfo
+ (id)newWithBuilder:(id)builder;
- (AFMemoryInfo)initWithBuilder:(id)builder;
- (AFMemoryInfo)initWithCoder:(id)coder;
- (AFMemoryInfo)initWithVirtualMemorySizeInBytes:(unint64_t)bytes numberOfRegions:(int)regions pageSizeInBytes:(int)inBytes residentMemorySizeInBytes:(unint64_t)sizeInBytes peakResidentMemorySizeInBytes:(unint64_t)memorySizeInBytes physicalMemoryFootprintInBytes:(unint64_t)footprintInBytes;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFMemoryInfo

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  virtualMemorySizeInBytes = self->_virtualMemorySizeInBytes;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedLongLong:virtualMemorySizeInBytes];
  [coderCopy encodeObject:v7 forKey:@"AFMemoryInfo::virtualMemorySizeInBytes"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_numberOfRegions];
  [coderCopy encodeObject:v8 forKey:@"AFMemoryInfo::numberOfRegions"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_pageSizeInBytes];
  [coderCopy encodeObject:v9 forKey:@"AFMemoryInfo::pageSizeInBytes"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_residentMemorySizeInBytes];
  [coderCopy encodeObject:v10 forKey:@"AFMemoryInfo::residentMemorySizeInBytes"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_peakResidentMemorySizeInBytes];
  [coderCopy encodeObject:v11 forKey:@"AFMemoryInfo::peakResidentMemorySizeInBytes"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_physicalMemoryFootprintInBytes];
  [coderCopy encodeObject:v12 forKey:@"AFMemoryInfo::physicalMemoryFootprintInBytes"];
}

- (AFMemoryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMemoryInfo::virtualMemorySizeInBytes"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMemoryInfo::numberOfRegions"];
  intValue = [v7 intValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMemoryInfo::pageSizeInBytes"];
  intValue2 = [v9 intValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMemoryInfo::residentMemorySizeInBytes"];
  unsignedLongLongValue2 = [v11 unsignedLongLongValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMemoryInfo::peakResidentMemorySizeInBytes"];
  unsignedLongLongValue3 = [v13 unsignedLongLongValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMemoryInfo::physicalMemoryFootprintInBytes"];

  unsignedLongLongValue4 = [v15 unsignedLongLongValue];

  return [(AFMemoryInfo *)self initWithVirtualMemorySizeInBytes:unsignedLongLongValue numberOfRegions:intValue pageSizeInBytes:intValue2 residentMemorySizeInBytes:unsignedLongLongValue2 peakResidentMemorySizeInBytes:unsignedLongLongValue3 physicalMemoryFootprintInBytes:unsignedLongLongValue4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      virtualMemorySizeInBytes = self->_virtualMemorySizeInBytes;
      if (virtualMemorySizeInBytes == [(AFMemoryInfo *)v5 virtualMemorySizeInBytes]&& (numberOfRegions = self->_numberOfRegions, numberOfRegions == [(AFMemoryInfo *)v5 numberOfRegions]) && (pageSizeInBytes = self->_pageSizeInBytes, pageSizeInBytes == [(AFMemoryInfo *)v5 pageSizeInBytes]) && (residentMemorySizeInBytes = self->_residentMemorySizeInBytes, residentMemorySizeInBytes == [(AFMemoryInfo *)v5 residentMemorySizeInBytes]) && (peakResidentMemorySizeInBytes = self->_peakResidentMemorySizeInBytes, peakResidentMemorySizeInBytes == [(AFMemoryInfo *)v5 peakResidentMemorySizeInBytes]))
      {
        physicalMemoryFootprintInBytes = self->_physicalMemoryFootprintInBytes;
        v12 = physicalMemoryFootprintInBytes == [(AFMemoryInfo *)v5 physicalMemoryFootprintInBytes];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_virtualMemorySizeInBytes];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_numberOfRegions];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_pageSizeInBytes];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_residentMemorySizeInBytes];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_peakResidentMemorySizeInBytes];
  v12 = [v11 hash];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_physicalMemoryFootprintInBytes];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFMemoryInfo;
  v5 = [(AFMemoryInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {virtualMemorySizeInBytes = %llu, numberOfRegions = %d, pageSizeInBytes = %d, residentMemorySizeInBytes = %llu, peakResidentMemorySizeInBytes = %llu, physicalMemoryFootprintInBytes = %llu}", v5, self->_virtualMemorySizeInBytes, self->_numberOfRegions, self->_pageSizeInBytes, self->_residentMemorySizeInBytes, self->_peakResidentMemorySizeInBytes, self->_physicalMemoryFootprintInBytes];

  return v6;
}

- (AFMemoryInfo)initWithVirtualMemorySizeInBytes:(unint64_t)bytes numberOfRegions:(int)regions pageSizeInBytes:(int)inBytes residentMemorySizeInBytes:(unint64_t)sizeInBytes peakResidentMemorySizeInBytes:(unint64_t)memorySizeInBytes physicalMemoryFootprintInBytes:(unint64_t)footprintInBytes
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __168__AFMemoryInfo_initWithVirtualMemorySizeInBytes_numberOfRegions_pageSizeInBytes_residentMemorySizeInBytes_peakResidentMemorySizeInBytes_physicalMemoryFootprintInBytes___block_invoke;
  v9[3] = &__block_descriptor_72_e32_v16__0___AFMemoryInfoMutating__8l;
  regionsCopy = regions;
  inBytesCopy = inBytes;
  v9[4] = bytes;
  v9[5] = sizeInBytes;
  v9[6] = memorySizeInBytes;
  v9[7] = footprintInBytes;
  return [(AFMemoryInfo *)self initWithBuilder:v9];
}

void __168__AFMemoryInfo_initWithVirtualMemorySizeInBytes_numberOfRegions_pageSizeInBytes_residentMemorySizeInBytes_peakResidentMemorySizeInBytes_physicalMemoryFootprintInBytes___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setVirtualMemorySizeInBytes:v3];
  [v4 setNumberOfRegions:*(a1 + 64)];
  [v4 setPageSizeInBytes:*(a1 + 68)];
  [v4 setResidentMemorySizeInBytes:*(a1 + 40)];
  [v4 setPeakResidentMemorySizeInBytes:*(a1 + 48)];
  [v4 setPhysicalMemoryFootprintInBytes:*(a1 + 56)];
}

- (AFMemoryInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = AFMemoryInfo;
  v5 = [(AFMemoryInfo *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFMemoryInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFMemoryInfoMutation *)v7 isDirty])
    {
      v6->_virtualMemorySizeInBytes = [(_AFMemoryInfoMutation *)v7 getVirtualMemorySizeInBytes];
      v6->_numberOfRegions = [(_AFMemoryInfoMutation *)v7 getNumberOfRegions];
      v6->_pageSizeInBytes = [(_AFMemoryInfoMutation *)v7 getPageSizeInBytes];
      v6->_residentMemorySizeInBytes = [(_AFMemoryInfoMutation *)v7 getResidentMemorySizeInBytes];
      v6->_peakResidentMemorySizeInBytes = [(_AFMemoryInfoMutation *)v7 getPeakResidentMemorySizeInBytes];
      v6->_physicalMemoryFootprintInBytes = [(_AFMemoryInfoMutation *)v7 getPhysicalMemoryFootprintInBytes];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFMemoryInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFMemoryInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFMemoryInfo);
      v6->_virtualMemorySizeInBytes = [(_AFMemoryInfoMutation *)v5 getVirtualMemorySizeInBytes];
      v6->_numberOfRegions = [(_AFMemoryInfoMutation *)v5 getNumberOfRegions];
      v6->_pageSizeInBytes = [(_AFMemoryInfoMutation *)v5 getPageSizeInBytes];
      v6->_residentMemorySizeInBytes = [(_AFMemoryInfoMutation *)v5 getResidentMemorySizeInBytes];
      v6->_peakResidentMemorySizeInBytes = [(_AFMemoryInfoMutation *)v5 getPeakResidentMemorySizeInBytes];
      v6->_physicalMemoryFootprintInBytes = [(_AFMemoryInfoMutation *)v5 getPhysicalMemoryFootprintInBytes];
    }

    else
    {
      v6 = [(AFMemoryInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFMemoryInfo *)self copy];
  }

  return v6;
}

@end