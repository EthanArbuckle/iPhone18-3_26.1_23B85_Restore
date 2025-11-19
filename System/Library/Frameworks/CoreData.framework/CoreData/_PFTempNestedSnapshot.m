@interface _PFTempNestedSnapshot
- (_PFTempNestedSnapshot)initWithOwnedKKsD:(id)a3 andVersion:(unint64_t)a4;
- (void)dealloc;
@end

@implementation _PFTempNestedSnapshot

- (_PFTempNestedSnapshot)initWithOwnedKKsD:(id)a3 andVersion:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = _PFTempNestedSnapshot;
  result = [(_PFTempNestedSnapshot *)&v7 init];
  if (result)
  {
    result->_snapshot = a3;
    result->_version = a4;
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