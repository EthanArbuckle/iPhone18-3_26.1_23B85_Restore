@interface MPMediaConditionalPredicate
+ (id)predicateWithConditionPredicate:(id)predicate thenPredicate:(id)thenPredicate elsePredicate:(id)elsePredicate;
- (MPMediaConditionalPredicate)initWithCoder:(id)coder;
- (MPMediaConditionalPredicate)initWithConditionPredicate:(id)predicate thenPredicate:(id)thenPredicate elsePredicate:(id)elsePredicate;
- (MPMediaConditionalPredicate)initWithProtobufferDecodableObject:(id)object library:(id)library;
- (id)_ML3PredicateForEntityTypeSelector:(SEL)selector;
- (id)protobufferEncodableObjectFromLibrary:(id)library;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMediaConditionalPredicate

- (id)_ML3PredicateForEntityTypeSelector:(SEL)selector
{
  v5 = MEMORY[0x1E69B3498];
  conditionPredicate = [(MPMediaConditionalPredicate *)self conditionPredicate];
  v7 = __80__MPMediaConditionalPredicate_ML3Additions___ML3PredicateForEntityTypeSelector___block_invoke(selector, conditionPredicate);
  thenPredicate = [(MPMediaConditionalPredicate *)self thenPredicate];
  v9 = __80__MPMediaConditionalPredicate_ML3Additions___ML3PredicateForEntityTypeSelector___block_invoke(selector, thenPredicate);
  elsePredicate = [(MPMediaConditionalPredicate *)self elsePredicate];
  v11 = __80__MPMediaConditionalPredicate_ML3Additions___ML3PredicateForEntityTypeSelector___block_invoke(selector, elsePredicate);
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

- (id)protobufferEncodableObjectFromLibrary:(id)library
{
  libraryCopy = library;
  v5 = objc_alloc_init(MPPConditionalPredicate);
  v6 = [(MPMediaPredicate *)self->_conditionPredicate protobufferEncodableObjectFromLibrary:libraryCopy];
  [(MPPConditionalPredicate *)v5 setConditionalPredicate:v6];

  v7 = [(MPMediaPredicate *)self->_thenPredicate protobufferEncodableObjectFromLibrary:libraryCopy];
  [(MPPConditionalPredicate *)v5 setThenPredicate:v7];

  v8 = [(MPMediaPredicate *)self->_elsePredicate protobufferEncodableObjectFromLibrary:libraryCopy];

  [(MPPConditionalPredicate *)v5 setElsePredicate:v8];
  v9 = objc_alloc_init(MPPMediaPredicate);
  [(MPPMediaPredicate *)v9 setType:3];
  [(MPPMediaPredicate *)v9 setConditionalPredicate:v5];

  return v9;
}

- (MPMediaConditionalPredicate)initWithProtobufferDecodableObject:(id)object library:(id)library
{
  objectCopy = object;
  libraryCopy = library;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaQuery.m" lineNumber:1557 description:{@"Cannot decode object of type %@", objc_opt_class()}];
  }

  v22.receiver = self;
  v22.super_class = MPMediaConditionalPredicate;
  v9 = [(MPMediaConditionalPredicate *)&v22 init];
  if (v9)
  {
    conditionalPredicate = [objectCopy conditionalPredicate];
    if ([conditionalPredicate hasConditionalPredicate])
    {
      v10ConditionalPredicate = [conditionalPredicate conditionalPredicate];
      v12 = MPPCreateMediaPredicateFromProtocolPredicateAndLibrary(v10ConditionalPredicate, libraryCopy);
      conditionPredicate = v9->_conditionPredicate;
      v9->_conditionPredicate = v12;
    }

    if ([conditionalPredicate hasThenPredicate])
    {
      thenPredicate = [conditionalPredicate thenPredicate];
      v15 = MPPCreateMediaPredicateFromProtocolPredicateAndLibrary(thenPredicate, libraryCopy);
      thenPredicate = v9->_thenPredicate;
      v9->_thenPredicate = v15;
    }

    if ([conditionalPredicate hasElsePredicate])
    {
      elsePredicate = [conditionalPredicate elsePredicate];
      v18 = MPPCreateMediaPredicateFromProtocolPredicateAndLibrary(elsePredicate, libraryCopy);
      elsePredicate = v9->_elsePredicate;
      v9->_elsePredicate = v18;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  conditionPredicate = self->_conditionPredicate;
  coderCopy = coder;
  [coderCopy encodeObject:conditionPredicate forKey:@"conditionPredicate"];
  [coderCopy encodeObject:self->_thenPredicate forKey:@"thenPredicate"];
  [coderCopy encodeObject:self->_elsePredicate forKey:@"elsePredicate"];
}

- (MPMediaConditionalPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MPMediaConditionalPredicate;
  v5 = [(MPMediaConditionalPredicate *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conditionPredicate"];
    conditionPredicate = v5->_conditionPredicate;
    v5->_conditionPredicate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thenPredicate"];
    thenPredicate = v5->_thenPredicate;
    v5->_thenPredicate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"elsePredicate"];
    elsePredicate = v5->_elsePredicate;
    v5->_elsePredicate = v10;
  }

  return v5;
}

- (MPMediaConditionalPredicate)initWithConditionPredicate:(id)predicate thenPredicate:(id)thenPredicate elsePredicate:(id)elsePredicate
{
  predicateCopy = predicate;
  thenPredicateCopy = thenPredicate;
  elsePredicateCopy = elsePredicate;
  v15.receiver = self;
  v15.super_class = MPMediaConditionalPredicate;
  v12 = [(MPMediaConditionalPredicate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conditionPredicate, predicate);
    objc_storeStrong(&v13->_thenPredicate, thenPredicate);
    objc_storeStrong(&v13->_elsePredicate, elsePredicate);
  }

  return v13;
}

+ (id)predicateWithConditionPredicate:(id)predicate thenPredicate:(id)thenPredicate elsePredicate:(id)elsePredicate
{
  elsePredicateCopy = elsePredicate;
  thenPredicateCopy = thenPredicate;
  predicateCopy = predicate;
  v10 = [objc_alloc(objc_opt_class()) initWithConditionPredicate:predicateCopy thenPredicate:thenPredicateCopy elsePredicate:elsePredicateCopy];

  return v10;
}

@end