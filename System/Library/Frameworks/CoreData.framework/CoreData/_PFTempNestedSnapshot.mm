@interface _PFTempNestedSnapshot
- (_PFTempNestedSnapshot)initWithOwnedKKsD:(id)d andVersion:(unint64_t)version;
- (void)dealloc;
@end

@implementation _PFTempNestedSnapshot

- (_PFTempNestedSnapshot)initWithOwnedKKsD:(id)d andVersion:(unint64_t)version
{
  v7.receiver = self;
  v7.super_class = _PFTempNestedSnapshot;
  result = [(_PFTempNestedSnapshot *)&v7 init];
  if (result)
  {
    result->_snapshot = d;
    result->_version = version;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _PFTempNestedSnapshot;
  [(_PFTempNestedSnapshot *)&v3 dealloc];
}

@end