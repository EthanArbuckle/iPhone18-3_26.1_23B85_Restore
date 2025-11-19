@interface _MTLProgramAddressTableMappedBinary
- (_MTLProgramAddressTableMappedBinary)initWithMappedAddress:(unint64_t)a3 mappedSize:(unint64_t)a4 binaryUniqueId:(unint64_t)a5;
- (_MTLProgramAddressTableMappedBinary)initWithMappedAddress:(unint64_t)a3 mappedSize:(unint64_t)a4 binaryUniqueId:(unint64_t)a5 type:(id)a6;
@end

@implementation _MTLProgramAddressTableMappedBinary

- (_MTLProgramAddressTableMappedBinary)initWithMappedAddress:(unint64_t)a3 mappedSize:(unint64_t)a4 binaryUniqueId:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = _MTLProgramAddressTableMappedBinary;
  result = [(_MTLProgramAddressTableMappedBinary *)&v9 init];
  if (result)
  {
    result->_mappedAddress = a3;
    result->_mappedSize = a4;
    result->_binaryUniqueId = a5;
    result->_type = &stru_1EF478240;
  }

  return result;
}

- (_MTLProgramAddressTableMappedBinary)initWithMappedAddress:(unint64_t)a3 mappedSize:(unint64_t)a4 binaryUniqueId:(unint64_t)a5 type:(id)a6
{
  v11.receiver = self;
  v11.super_class = _MTLProgramAddressTableMappedBinary;
  result = [(_MTLProgramAddressTableMappedBinary *)&v11 init];
  if (result)
  {
    result->_mappedAddress = a3;
    result->_mappedSize = a4;
    result->_binaryUniqueId = a5;
    result->_type = a6;
  }

  return result;
}

@end