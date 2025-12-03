@interface NSRelationshipStoreMapping
- (BOOL)isEqual:(id)equal;
- (uint64_t)setDestinationEntityExternalName:(uint64_t)result;
- (uint64_t)setForeignKeys:(uint64_t)result;
- (uint64_t)setJoins:(uint64_t)result;
- (void)dealloc;
@end

@implementation NSRelationshipStoreMapping

- (void)dealloc
{
  [(NSRelationshipStoreMapping *)self setDestinationEntityExternalName:?];
  [(NSRelationshipStoreMapping *)self setForeignKeys:?];
  [(NSRelationshipStoreMapping *)self setJoins:?];
  v3.receiver = self;
  v3.super_class = NSRelationshipStoreMapping;
  [(NSPropertyStoreMapping *)&v3 dealloc];
}

- (uint64_t)setDestinationEntityExternalName:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4 != a2)
    {

      result = [a2 copy];
      *(v3 + 24) = result;
    }
  }

  return result;
}

- (uint64_t)setForeignKeys:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 32);
    if (v4 != a2)
    {

      result = [a2 copy];
      *(v3 + 32) = result;
    }
  }

  return result;
}

- (uint64_t)setJoins:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 40);
    if (v4 != a2)
    {

      result = [a2 copy];
      *(v3 + 40) = result;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v11.receiver = self;
  v11.super_class = NSRelationshipStoreMapping;
  v5 = [(NSPropertyStoreMapping *)&v11 isEqual:?];
  if (v5)
  {
    destinationEntityExternalName = [(NSRelationshipStoreMapping *)self destinationEntityExternalName];
    if (destinationEntityExternalName == [equal destinationEntityExternalName] || (v5 = objc_msgSend(-[NSRelationshipStoreMapping destinationEntityExternalName](self, "destinationEntityExternalName"), "isEqual:", objc_msgSend(equal, "destinationEntityExternalName"))) != 0)
    {
      foreignKeys = [(NSRelationshipStoreMapping *)self foreignKeys];
      if (foreignKeys == [equal foreignKeys] || (v5 = objc_msgSend(-[NSRelationshipStoreMapping foreignKeys](self, "foreignKeys"), "isEqual:", objc_msgSend(equal, "foreignKeys"))) != 0)
      {
        joins = [(NSRelationshipStoreMapping *)self joins];
        if (joins == [equal joins] || (v5 = objc_msgSend(-[NSRelationshipStoreMapping joins](self, "joins"), "isEqual:", objc_msgSend(equal, "joins"))) != 0)
        {
          joinSemantic = [(NSRelationshipStoreMapping *)self joinSemantic];
          LOBYTE(v5) = joinSemantic == [equal joinSemantic];
        }
      }
    }
  }

  return v5;
}

@end