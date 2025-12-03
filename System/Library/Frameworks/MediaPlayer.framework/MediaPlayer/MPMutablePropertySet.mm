@interface MPMutablePropertySet
- (MPMutablePropertySet)initWithProperties:(id)properties relationships:(id)relationships;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addRelationship:(id)relationship properties:(id)properties;
@end

@implementation MPMutablePropertySet

- (void)addRelationship:(id)relationship properties:(id)properties
{
  v6 = self->super._relationships;
  relationshipCopy = relationship;
  v8 = [properties copy];
  [(NSDictionary *)v6 setObject:v8 forKeyedSubscript:relationshipCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MPPropertySet alloc];
  allObjects = [(NSSet *)self->super._properties allObjects];
  v6 = [(MPPropertySet *)v4 initWithProperties:allObjects relationships:self->super._relationships];

  return v6;
}

- (MPMutablePropertySet)initWithProperties:(id)properties relationships:(id)relationships
{
  v11.receiver = self;
  v11.super_class = MPMutablePropertySet;
  v4 = [(MPPropertySet *)&v11 initWithProperties:properties relationships:relationships];
  v5 = v4;
  if (v4)
  {
    v6 = [(NSSet *)v4->super._properties mutableCopy];
    properties = v5->super._properties;
    v5->super._properties = v6;

    v8 = [(NSDictionary *)v5->super._relationships mutableCopy];
    relationships = v5->super._relationships;
    v5->super._relationships = v8;
  }

  return v5;
}

@end