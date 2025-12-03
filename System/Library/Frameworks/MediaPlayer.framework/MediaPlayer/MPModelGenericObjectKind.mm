@interface MPModelGenericObjectKind
+ (id)identityKind;
+ (id)kindWithRelationshipKinds:(id)kinds;
- (BOOL)isEqual:(id)equal;
- (MPModelGenericObjectKind)initWithCoder:(id)coder;
- (id)humanDescription;
- (id)msv_initWithJSONValue:(id)value;
- (id)msv_jsonValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelGenericObjectKind

- (id)humanDescription
{
  v3 = [(NSDictionary *)self->_relationshipKinds count];
  v4 = MEMORY[0x1E696AEC0];
  allValues = [(NSDictionary *)self->_relationshipKinds allValues];
  v6 = allValues;
  if (v3 == 1)
  {
    firstObject = [allValues firstObject];
    humanDescription = [firstObject humanDescription];
    [v4 stringWithFormat:@"generic %@", humanDescription];
  }

  else
  {
    firstObject = [allValues valueForKeyPath:@"humanDescription"];
    humanDescription = [firstObject componentsJoinedByString:@" or "];;
    [v4 stringWithFormat:@"any generic (%@)", humanDescription];
  }
  v9 = ;

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPModelGenericObjectKind;
  coderCopy = coder;
  [(MPModelKind *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_relationshipKinds forKey:{@"relationshipKinds", v5.receiver, v5.super_class}];
}

- (MPModelGenericObjectKind)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"relationshipKinds"];

  if (v9)
  {
    v10 = [MPModelGenericObjectKind kindWithRelationshipKinds:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)msv_jsonValue
{
  v8.receiver = self;
  v8.super_class = MPModelGenericObjectKind;
  msv_jsonValue = [(MPModelKind *)&v8 msv_jsonValue];
  v4 = [msv_jsonValue mutableCopy];

  msv_jsonValue2 = [(NSDictionary *)self->_relationshipKinds msv_jsonValue];
  [v4 setObject:msv_jsonValue2 forKeyedSubscript:@"relationshipKinds"];

  v6 = [v4 copy];

  return v6;
}

- (id)msv_initWithJSONValue:(id)value
{
  v3 = [value objectForKeyedSubscript:@"relationshipKinds"];
  v4 = [v3 msv_mapValues:&__block_literal_global_26854];

  v5 = [objc_opt_class() kindWithRelationshipKinds:v4];

  return v5;
}

id __50__MPModelGenericObjectKind_msv_initWithJSONValue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [MPModelKind alloc];
  v5 = [(MPModelKind *)v4 msv_initWithJSONValue:v3];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = MPModelGenericObjectKind;
  if ([(MPModelKind *)&v7 isEqual:equalCopy])
  {
    v5 = [(NSDictionary *)self->_relationshipKinds isEqual:equalCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = MPModelGenericObjectKind;
  v3 = [(MPModelKind *)&v5 hash];
  return [(NSDictionary *)self->_relationshipKinds hash]^ v3;
}

+ (id)kindWithRelationshipKinds:(id)kinds
{
  v25 = *MEMORY[0x1E69E9840];
  kindsCopy = kinds;
  v5 = [MEMORY[0x1E696AD60] stringWithString:@"GenericObject:k"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [kindsCopy allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [kindsCopy objectForKeyedSubscript:v12];
        [v5 appendFormat:@"%@-%p", v12, v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v14 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__MPModelGenericObjectKind_kindWithRelationshipKinds___block_invoke;
  v18[3] = &unk_1E767A288;
  v19 = kindsCopy;
  v15 = kindsCopy;
  v16 = [self kindWithModelClass:v14 cacheKey:v5 block:v18];

  return v16;
}

void __54__MPModelGenericObjectKind_kindWithRelationshipKinds___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  v5 = v3[2];
  v3[2] = v4;
}

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end