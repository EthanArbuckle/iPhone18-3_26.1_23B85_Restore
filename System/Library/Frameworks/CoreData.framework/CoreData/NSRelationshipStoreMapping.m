@interface NSRelationshipStoreMapping
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v11.receiver = self;
  v11.super_class = NSRelationshipStoreMapping;
  v5 = [(NSPropertyStoreMapping *)&v11 isEqual:?];
  if (v5)
  {
    v6 = [(NSRelationshipStoreMapping *)self destinationEntityExternalName];
    if (v6 == [a3 destinationEntityExternalName] || (v5 = objc_msgSend(-[NSRelationshipStoreMapping destinationEntityExternalName](self, "destinationEntityExternalName"), "isEqual:", objc_msgSend(a3, "destinationEntityExternalName"))) != 0)
    {
      v7 = [(NSRelationshipStoreMapping *)self foreignKeys];
      if (v7 == [a3 foreignKeys] || (v5 = objc_msgSend(-[NSRelationshipStoreMapping foreignKeys](self, "foreignKeys"), "isEqual:", objc_msgSend(a3, "foreignKeys"))) != 0)
      {
        v8 = [(NSRelationshipStoreMapping *)self joins];
        if (v8 == [a3 joins] || (v5 = objc_msgSend(-[NSRelationshipStoreMapping joins](self, "joins"), "isEqual:", objc_msgSend(a3, "joins"))) != 0)
        {
          v9 = [(NSRelationshipStoreMapping *)self joinSemantic];
          LOBYTE(v5) = v9 == [a3 joinSemantic];
        }
      }
    }
  }

  return v5;
}

@end