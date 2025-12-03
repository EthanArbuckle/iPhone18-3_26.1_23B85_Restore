@interface _MTLProgramAddressTableMappedBinary
- (_MTLProgramAddressTableMappedBinary)initWithMappedAddress:(unint64_t)address mappedSize:(unint64_t)size binaryUniqueId:(unint64_t)id;
- (_MTLProgramAddressTableMappedBinary)initWithMappedAddress:(unint64_t)address mappedSize:(unint64_t)size binaryUniqueId:(unint64_t)id type:(id)type;
@end

@implementation _MTLProgramAddressTableMappedBinary

- (_MTLProgramAddressTableMappedBinary)initWithMappedAddress:(unint64_t)address mappedSize:(unint64_t)size binaryUniqueId:(unint64_t)id
{
  v9.receiver = self;
  v9.super_class = _MTLProgramAddressTableMappedBinary;
  result = [(_MTLProgramAddressTableMappedBinary *)&v9 init];
  if (result)
  {
    result->_mappedAddress = address;
    result->_mappedSize = size;
    result->_binaryUniqueId = id;
    result->_type = &stru_1EF478240;
  }

  return result;
}

- (_MTLProgramAddressTableMappedBinary)initWithMappedAddress:(unint64_t)address mappedSize:(unint64_t)size binaryUniqueId:(unint64_t)id type:(id)type
{
  v11.receiver = self;
  v11.super_class = _MTLProgramAddressTableMappedBinary;
  result = [(_MTLProgramAddressTableMappedBinary *)&v11 init];
  if (result)
  {
    result->_mappedAddress = address;
    result->_mappedSize = size;
    result->_binaryUniqueId = id;
    result->_type = type;
  }

  return result;
}

@end