@interface ASDMigrationRequestOptions
- (ASDMigrationRequestOptions)initWithCoder:(id)coder;
- (ASDMigrationRequestOptions)initWithMigrationType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASDMigrationRequestOptions

- (ASDMigrationRequestOptions)initWithMigrationType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = ASDMigrationRequestOptions;
  result = [(ASDMigrationRequestOptions *)&v5 init];
  if (result)
  {
    result->_migrationType = type;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[ASDMigrationRequestOptions allocWithZone:?]];
  *(result + 1) = self->_migrationType;
  return result;
}

- (ASDMigrationRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ASDMigrationRequestOptions;
  v5 = [(ASDRequestOptions *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_migrationType = [coderCopy decodeIntegerForKey:@"migrationType"];
  }

  return v5;
}

@end