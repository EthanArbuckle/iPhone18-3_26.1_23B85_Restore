@interface MPMediaContainmentPredicate
+ (id)predicateWithProperty:(id)property values:(id)values;
- (BOOL)isEqual:(id)equal;
- (MPMediaContainmentPredicate)initWithCoder:(id)coder;
- (id)ML3PredicateForContainer;
- (id)ML3PredicateForTrack;
- (id)_ML3PredicateForEntityClass:(Class)class;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (id)_ML3PredicateForEntityClass:(Class)class
{
  v5 = MEMORY[0x1E69B34B0];
  property = [(MPMediaContainmentPredicate *)self property];
  v7 = [(objc_class *)class propertyForMPMediaEntityProperty:property];
  values = [(MPMediaContainmentPredicate *)self values];
  v9 = [v5 predicateWithProperty:v7 values:values];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = MPMediaContainmentPredicate;
  if ([(MPMediaContainmentPredicate *)&v9 isEqual:equalCopy]&& ((property = self->_property, property == equalCopy[1]) || [(NSString *)property isEqualToString:?]))
  {
    values = self->_values;
    if (values == equalCopy[2])
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

- (void)encodeWithCoder:(id)coder
{
  property = self->_property;
  coderCopy = coder;
  [coderCopy encodeObject:property forKey:@"containmentProperty"];
  [coderCopy encodeObject:self->_values forKey:@"containmentValues"];
}

- (MPMediaContainmentPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MPMediaContainmentPredicate;
  v5 = [(MPMediaContainmentPredicate *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containmentProperty"];
    property = v5->_property;
    v5->_property = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"containmentValues"];
    values = v5->_values;
    v5->_values = v12;
  }

  return v5;
}

+ (id)predicateWithProperty:(id)property values:(id)values
{
  propertyCopy = property;
  valuesCopy = values;
  v8 = objc_alloc_init(self);
  if (v8)
  {
    v9 = [propertyCopy copy];
    v10 = v8[1];
    v8[1] = v9;

    v11 = [valuesCopy copy];
    v12 = v8[2];
    v8[2] = v11;
  }

  return v8;
}

@end