@interface MPMediaCompoundPredicate
+ (id)predicateMatchingPredicates:(id)predicates;
- (BOOL)isEqual:(id)equal;
- (MPMediaCompoundPredicate)initWithCoder:(id)coder;
- (MPMediaCompoundPredicate)initWithPredicates:(id)predicates;
- (MPMediaCompoundPredicate)initWithProtobufferDecodableObject:(id)object library:(id)library;
- (id)_ML3PredicateForEntityTypeSelector:(SEL)selector;
- (id)protobufferEncodableObjectFromLibrary:(id)library;
- (unint64_t)hash;
@end

@implementation MPMediaCompoundPredicate

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = MPMediaCompoundPredicate;
  v3 = [(MPMediaCompoundPredicate *)&v5 hash];
  return [(NSArray *)self->_predicates hash]^ v3;
}

- (id)_ML3PredicateForEntityTypeSelector:(SEL)selector
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__MPMediaCompoundPredicate_ML3Additions___ML3PredicateForEntityTypeSelector___block_invoke;
  aBlock[3] = &unk_1E76779D8;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4[2](v4, selector);
    if ([v5 count])
    {
      v6 = 0x1E69B3428;
LABEL_7:
      v7 = [*v6 predicateMatchingPredicates:v5];
LABEL_9:

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4[2](v4, selector);
    if ([v5 count])
    {
      v6 = 0x1E69B3430;
      goto LABEL_7;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

id __77__MPMediaCompoundPredicate_ML3Additions___ML3PredicateForEntityTypeSelector___block_invoke(uint64_t a1, const char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = NSStringFromSelector(a2);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [*(a1 + 32) predicates];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) valueForKey:v5];
        if (v11)
        {
          v12 = [MEMORY[0x1E695DFB0] null];
          v13 = [v11 isEqual:v12];

          if ((v13 & 1) == 0)
          {
            [v4 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)protobufferEncodableObjectFromLibrary:(id)library
{
  v19 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = objc_alloc_init(MPPCompoundPredicate);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_predicates;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) protobufferEncodableObjectFromLibrary:{libraryCopy, v14}];
        [(MPPCompoundPredicate *)v5 addPredicates:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = objc_alloc_init(MPPMediaPredicate);
  [(MPPMediaPredicate *)v12 setType:2];
  [(MPPMediaPredicate *)v12 setCompoundPredicate:v5];

  return v12;
}

- (MPMediaCompoundPredicate)initWithProtobufferDecodableObject:(id)object library:(id)library
{
  v27 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaQuery.m" lineNumber:1660 description:{@"Cannot decode object of type %@", objc_opt_class()}];
  }

  v25.receiver = self;
  v25.super_class = MPMediaCompoundPredicate;
  v9 = [(MPMediaCompoundPredicate *)&v25 init];
  if (v9)
  {
    compoundPredicate = [objectCopy compoundPredicate];
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(compoundPredicate, "predicatesCount")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    predicates = [compoundPredicate predicates];
    v13 = [predicates countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(predicates);
          }

          v17 = MPPCreateMediaPredicateFromProtocolPredicateAndLibrary(*(*(&v21 + 1) + 8 * v16), libraryCopy);
          [(NSArray *)v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [predicates countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    predicates = v9->_predicates;
    v9->_predicates = v11;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = MPMediaCompoundPredicate;
  if ([(MPMediaCompoundPredicate *)&v7 isEqual:equalCopy])
  {
    v5 = [equalCopy[1] isEqual:self->_predicates];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MPMediaCompoundPredicate)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = MPMediaCompoundPredicate;
  v5 = [(MPMediaCompoundPredicate *)&v20 init];
  if (v5)
  {
    v6 = MSVPropertyListDataClasses();
    v7 = [v6 setByAddingObject:objc_opt_class()];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"MPPredicates"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      predicates = v8;
      v10 = [(NSArray *)predicates countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(predicates);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [(NSArray *)predicates countByEnumeratingWithState:&v16 objects:v21 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:

        v14 = [(NSArray *)predicates copy];
        predicates = v5->_predicates;
        v5->_predicates = v14;
      }
    }
  }

  return v5;
}

- (MPMediaCompoundPredicate)initWithPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v9.receiver = self;
  v9.super_class = MPMediaCompoundPredicate;
  v5 = [(MPMediaCompoundPredicate *)&v9 init];
  if (v5)
  {
    v6 = [predicatesCopy copy];
    predicates = v5->_predicates;
    v5->_predicates = v6;
  }

  return v5;
}

+ (id)predicateMatchingPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v4 = [objc_alloc(objc_opt_class()) initWithPredicates:predicatesCopy];

  return v4;
}

@end