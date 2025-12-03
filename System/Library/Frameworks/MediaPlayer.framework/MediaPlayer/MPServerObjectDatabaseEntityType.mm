@interface MPServerObjectDatabaseEntityType
+ (id)entityTypeWithServerEntityType:(id)type genericObjectRelationshipKey:(id)key;
@end

@implementation MPServerObjectDatabaseEntityType

+ (id)entityTypeWithServerEntityType:(id)type genericObjectRelationshipKey:(id)key
{
  keyCopy = key;
  typeCopy = type;
  v7 = objc_alloc_init(MPServerObjectDatabaseEntityType);
  v8 = [typeCopy copy];

  serverEntityType = v7->_serverEntityType;
  v7->_serverEntityType = v8;

  v10 = [keyCopy copy];
  genericObjectRelationshipKey = v7->_genericObjectRelationshipKey;
  v7->_genericObjectRelationshipKey = v10;

  return v7;
}

@end