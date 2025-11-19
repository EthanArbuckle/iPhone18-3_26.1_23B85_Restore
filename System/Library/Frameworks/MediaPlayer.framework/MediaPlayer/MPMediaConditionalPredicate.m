@interface MPMediaConditionalPredicate
+ (id)predicateWithConditionPredicate:(id)a3 thenPredicate:(id)a4 elsePredicate:(id)a5;
- (MPMediaConditionalPredicate)initWithCoder:(id)a3;
- (MPMediaConditionalPredicate)initWithConditionPredicate:(id)a3 thenPredicate:(id)a4 elsePredicate:(id)a5;
- (MPMediaConditionalPredicate)initWithProtobufferDecodableObject:(id)a3 library:(id)a4;
- (id)_ML3PredicateForEntityTypeSelector:(SEL)a3;
- (id)protobufferEncodableObjectFromLibrary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMediaConditionalPredicate

- (id)_ML3PredicateForEntityTypeSelector:(SEL)a3
{
  v5 = MEMORY[0x1E69B3498];
  v6 = [(MPMediaConditionalPredicate *)self conditionPredicate];
  v7 = __80__MPMediaConditionalPredicate_ML3Additions___ML3PredicateForEntityTypeSelector___block_invoke(a3, v6);
  v8 = [(MPMediaConditionalPredicate *)self thenPredicate];
  v9 = __80__MPMediaConditionalPredicate_ML3Additions___ML3PredicateForEntityTypeSelector___block_invoke(a3, v8);
  v10 = [(MPMediaConditionalPredicate *)self elsePredicate];
  v11 = __80__MPMediaConditionalPredicate_ML3Additions___ML3PredicateForEntityTypeSelector___block_invoke(a3, v10);
  v12 = [v5 predicateWithConditionPredicate:v7 thenPredicate:v9 elsePredicate:v11];

  return v12;
}

id __80__MPMediaConditionalPredicate_ML3Additions___ML3PredicateForEntityTypeSelector___block_invoke(const char *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = NSStringFromSelector(a1);
    v5 = [v3 valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)protobufferEncodableObjectFromLibrary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPPConditionalPredicate);
  v6 = [(MPMediaPredicate *)self->_conditionPredicate protobufferEncodableObjectFromLibrary:v4];
  [(MPPConditionalPredicate *)v5 setConditionalPredicate:v6];

  v7 = [(MPMediaPredicate *)self->_thenPredicate protobufferEncodableObjectFromLibrary:v4];
  [(MPPConditionalPredicate *)v5 setThenPredicate:v7];

  v8 = [(MPMediaPredicate *)self->_elsePredicate protobufferEncodableObjectFromLibrary:v4];

  [(MPPConditionalPredicate *)v5 setElsePredicate:v8];
  v9 = objc_alloc_init(MPPMediaPredicate);
  [(MPPMediaPredicate *)v9 setType:3];
  [(MPPMediaPredicate *)v9 setConditionalPredicate:v5];

  return v9;
}

- (MPMediaConditionalPredicate)initWithProtobufferDecodableObject:(id)a3 library:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MPMediaQuery.m" lineNumber:1557 description:{@"Cannot decode object of type %@", objc_opt_class()}];
  }

  v22.receiver = self;
  v22.super_class = MPMediaConditionalPredicate;
  v9 = [(MPMediaConditionalPredicate *)&v22 init];
  if (v9)
  {
    v10 = [v7 conditionalPredicate];
    if ([v10 hasConditionalPredicate])
    {
      v11 = [v10 conditionalPredicate];
      v12 = MPPCreateMediaPredicateFromProtocolPredicateAndLibrary(v11, v8);
      conditionPredicate = v9->_conditionPredicate;
      v9->_conditionPredicate = v12;
    }

    if ([v10 hasThenPredicate])
    {
      v14 = [v10 thenPredicate];
      v15 = MPPCreateMediaPredicateFromProtocolPredicateAndLibrary(v14, v8);
      thenPredicate = v9->_thenPredicate;
      v9->_thenPredicate = v15;
    }

    if ([v10 hasElsePredicate])
    {
      v17 = [v10 elsePredicate];
      v18 = MPPCreateMediaPredicateFromProtocolPredicateAndLibrary(v17, v8);
      elsePredicate = v9->_elsePredicate;
      v9->_elsePredicate = v18;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  conditionPredicate = self->_conditionPredicate;
  v5 = a3;
  [v5 encodeObject:conditionPredicate forKey:@"conditionPredicate"];
  [v5 encodeObject:self->_thenPredicate forKey:@"thenPredicate"];
  [v5 encodeObject:self->_elsePredicate forKey:@"elsePredicate"];
}

- (MPMediaConditionalPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPMediaConditionalPredicate;
  v5 = [(MPMediaConditionalPredicate *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conditionPredicate"];
    conditionPredicate = v5->_conditionPredicate;
    v5->_conditionPredicate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thenPredicate"];
    thenPredicate = v5->_thenPredicate;
    v5->_thenPredicate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"elsePredicate"];
    elsePredicate = v5->_elsePredicate;
    v5->_elsePredicate = v10;
  }

  return v5;
}

- (MPMediaConditionalPredicate)initWithConditionPredicate:(id)a3 thenPredicate:(id)a4 elsePredicate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MPMediaConditionalPredicate;
  v12 = [(MPMediaConditionalPredicate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conditionPredicate, a3);
    objc_storeStrong(&v13->_thenPredicate, a4);
    objc_storeStrong(&v13->_elsePredicate, a5);
  }

  return v13;
}

+ (id)predicateWithConditionPredicate:(id)a3 thenPredicate:(id)a4 elsePredicate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithConditionPredicate:v9 thenPredicate:v8 elsePredicate:v7];

  return v10;
}

@end