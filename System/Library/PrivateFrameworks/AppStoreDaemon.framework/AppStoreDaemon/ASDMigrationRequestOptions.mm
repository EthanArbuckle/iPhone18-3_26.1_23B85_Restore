@interface ASDMigrationRequestOptions
- (ASDMigrationRequestOptions)initWithCoder:(id)a3;
- (ASDMigrationRequestOptions)initWithMigrationType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASDMigrationRequestOptions

- (ASDMigrationRequestOptions)initWithMigrationType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ASDMigrationRequestOptions;
  result = [(ASDMigrationRequestOptions *)&v5 init];
  if (result)
  {
    result->_migrationType = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[ASDMigrationRequestOptions allocWithZone:?]];
  *(result + 1) = self->_migrationType;
  return result;
}

- (ASDMigrationRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDMigrationRequestOptions;
  v5 = [(ASDRequestOptions *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_migrationType = [v4 decodeIntegerForKey:@"migrationType"];
  }

  return v5;
}

@end