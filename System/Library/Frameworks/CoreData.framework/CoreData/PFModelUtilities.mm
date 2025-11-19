@interface PFModelUtilities
@end

@implementation PFModelUtilities

void __59___PFModelUtilities_addRelationships_toPropertiesOfEntity___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_alloc_init(NSRelationshipDescription);
  [(NSPropertyDescription *)v7 setName:a2];
  -[NSRelationshipDescription setMaxCount:](v7, "setMaxCount:", [objc_msgSend(a3 objectAtIndex:{0), "unsignedIntegerValue"}]);
  -[NSRelationshipDescription setDestinationEntity:](v7, "setDestinationEntity:", [a3 objectAtIndex:1]);
  if ([a3 count] >= 3)
  {
    v6 = [a3 objectAtIndex:2];
    if (v6 != [MEMORY[0x1E695DFB0] null])
    {
      [(NSRelationshipDescription *)v7 setInverseRelationship:[(NSDictionary *)[(NSEntityDescription *)[(NSRelationshipDescription *)v7 destinationEntity] relationshipsByName] objectForKey:v6]];
      if ([(NSRelationshipDescription *)v7 inverseRelationship])
      {
        [[(NSRelationshipDescription *)v7 inverseRelationship] setInverseRelationship:v7];
      }
    }

    if ([a3 count] >= 4)
    {
      -[NSRelationshipDescription setDeleteRule:](v7, "setDeleteRule:", [objc_msgSend(a3 objectAtIndex:{3), "unsignedIntegerValue"}]);
      if ([a3 count] >= 5)
      {
        -[NSPropertyDescription setOptional:](v7, "setOptional:", [objc_msgSend(a3 objectAtIndex:{4), "BOOLValue"}]);
      }
    }
  }

  [*(a1 + 32) addObject:v7];
}

@end