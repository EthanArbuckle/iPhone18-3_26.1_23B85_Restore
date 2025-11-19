@interface MPMutablePropertySet
- (MPMutablePropertySet)initWithProperties:(id)a3 relationships:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addRelationship:(id)a3 properties:(id)a4;
@end

@implementation MPMutablePropertySet

- (void)addRelationship:(id)a3 properties:(id)a4
{
  v6 = self->super._relationships;
  v7 = a3;
  v8 = [a4 copy];
  [(NSDictionary *)v6 setObject:v8 forKeyedSubscript:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPPropertySet alloc];
  v5 = [(NSSet *)self->super._properties allObjects];
  v6 = [(MPPropertySet *)v4 initWithProperties:v5 relationships:self->super._relationships];

  return v6;
}

- (MPMutablePropertySet)initWithProperties:(id)a3 relationships:(id)a4
{
  v11.receiver = self;
  v11.super_class = MPMutablePropertySet;
  v4 = [(MPPropertySet *)&v11 initWithProperties:a3 relationships:a4];
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