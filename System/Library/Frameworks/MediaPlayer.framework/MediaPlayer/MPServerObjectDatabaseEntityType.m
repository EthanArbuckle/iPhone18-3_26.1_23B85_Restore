@interface MPServerObjectDatabaseEntityType
+ (id)entityTypeWithServerEntityType:(id)a3 genericObjectRelationshipKey:(id)a4;
@end

@implementation MPServerObjectDatabaseEntityType

+ (id)entityTypeWithServerEntityType:(id)a3 genericObjectRelationshipKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MPServerObjectDatabaseEntityType);
  v8 = [v6 copy];

  serverEntityType = v7->_serverEntityType;
  v7->_serverEntityType = v8;

  v10 = [v5 copy];
  genericObjectRelationshipKey = v7->_genericObjectRelationshipKey;
  v7->_genericObjectRelationshipKey = v10;

  return v7;
}

@end