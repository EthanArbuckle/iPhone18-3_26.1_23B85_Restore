@interface _MTLProgramAddressTable
- (_MTLProgramAddressTable)initWithEncoderMappings:(id)mappings perInvocationMappings:(id)invocationMappings internalMappings:(id)internalMappings;
- (void)dealloc;
@end

@implementation _MTLProgramAddressTable

- (_MTLProgramAddressTable)initWithEncoderMappings:(id)mappings perInvocationMappings:(id)invocationMappings internalMappings:(id)internalMappings
{
  v10.receiver = self;
  v10.super_class = _MTLProgramAddressTable;
  v8 = [(_MTLProgramAddressTable *)&v10 init];
  if (v8)
  {
    v8->_binaryMappingsEncoderInternal = [mappings copy];
    v8->_binaryMappingsPerInvocation = [invocationMappings copy];
    v8->_encoderInternalBinaries = [internalMappings copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLProgramAddressTable;
  [(_MTLProgramAddressTable *)&v3 dealloc];
}

@end