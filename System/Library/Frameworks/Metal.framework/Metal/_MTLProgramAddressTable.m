@interface _MTLProgramAddressTable
- (_MTLProgramAddressTable)initWithEncoderMappings:(id)a3 perInvocationMappings:(id)a4 internalMappings:(id)a5;
- (void)dealloc;
@end

@implementation _MTLProgramAddressTable

- (_MTLProgramAddressTable)initWithEncoderMappings:(id)a3 perInvocationMappings:(id)a4 internalMappings:(id)a5
{
  v10.receiver = self;
  v10.super_class = _MTLProgramAddressTable;
  v8 = [(_MTLProgramAddressTable *)&v10 init];
  if (v8)
  {
    v8->_binaryMappingsEncoderInternal = [a3 copy];
    v8->_binaryMappingsPerInvocation = [a4 copy];
    v8->_encoderInternalBinaries = [a5 copy];
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