@interface MPMediaContainmentPredicate
+ (id)predicateWithProperty:(id)a3 values:(id)a4;
- (BOOL)isEqual:(id)a3;
- (MPMediaContainmentPredicate)initWithCoder:(id)a3;
- (id)ML3PredicateForContainer;
- (id)ML3PredicateForTrack;
- (id)_ML3PredicateForEntityClass:(Class)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMediaContainmentPredicate

- (id)ML3PredicateForContainer
{
  v3 = objc_opt_class();

  return [(MPMediaContainmentPredicate *)self _ML3PredicateForEntityClass:v3];
}

- (id)ML3PredicateForTrack
{
  v3 = objc_opt_class();

  return [(MPMediaContainmentPredicate *)self _ML3PredicateForEntityClass:v3];
}

- (id)_ML3PredicateForEntityClass:(Class)a3
{
  v5 = MEMORY[0x1E69B34B0];
  v6 = [(MPMediaContainmentPredicate *)self property];
  v7 = [(objc_class *)a3 propertyForMPMediaEntityProperty:v6];
  v8 = [(MPMediaContainmentPredicate *)self values];
  v9 = [v5 predicateWithProperty:v7 values:v8];

  return v9;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = MPMediaContainmentPredicate;
  v3 = [(MPMediaContainmentPredicate *)&v6 hash];
  v4 = [(NSString *)self->_property hash]^ v3;
  return v4 ^ [(NSSet *)self->_values hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPMediaContainmentPredicate;
  if ([(MPMediaContainmentPredicate *)&v9 isEqual:v4]&& ((property = self->_property, property == v4[1]) || [(NSString *)property isEqualToString:?]))
  {
    values = self->_values;
    if (values == v4[2])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSSet *)values isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p property:'%@' values:%@>", v5, self, self->_property, self->_values];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  property = self->_property;
  v5 = a3;
  [v5 encodeObject:property forKey:@"containmentProperty"];
  [v5 encodeObject:self->_values forKey:@"containmentValues"];
}

- (MPMediaContainmentPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MPMediaContainmentPredicate;
  v5 = [(MPMediaContainmentPredicate *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containmentProperty"];
    property = v5->_property;
    v5->_property = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"containmentValues"];
    values = v5->_values;
    v5->_values = v12;
  }

  return v5;
}

+ (id)predicateWithProperty:(id)a3 values:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  if (v8)
  {
    v9 = [v6 copy];
    v10 = v8[1];
    v8[1] = v9;

    v11 = [v7 copy];
    v12 = v8[2];
    v8[2] = v11;
  }

  return v8;
}

@end