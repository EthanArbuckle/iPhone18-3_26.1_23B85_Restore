@interface _MPMediaSearchStringPredicate
+ (id)predicateWithSearchString:(id)string forProperties:(id)properties;
- (BOOL)isEqual:(id)equal;
- (_MPMediaSearchStringPredicate)initWithCoder:(id)coder;
- (_MPMediaSearchStringPredicate)initWithProtobufferDecodableObject:(id)object library:(id)library;
- (id)ML3PredicateForContainer;
- (id)ML3PredicateForTrack;
- (id)_ML3PredicateForEntityClass:(Class)class;
- (id)protobufferEncodableObjectFromLibrary:(id)library;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MPMediaSearchStringPredicate

- (id)ML3PredicateForContainer
{
  v3 = objc_opt_class();

  return [(_MPMediaSearchStringPredicate *)self _ML3PredicateForEntityClass:v3];
}

- (id)ML3PredicateForTrack
{
  v3 = objc_opt_class();

  return [(_MPMediaSearchStringPredicate *)self _ML3PredicateForEntityClass:v3];
}

- (id)_ML3PredicateForEntityClass:(Class)class
{
  v40 = *MEMORY[0x1E69E9840];
  properties = [(_MPMediaSearchStringPredicate *)self properties];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(properties, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = properties;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(objc_class *)class spotlightPropertyForMPMediaEntityProperty:*(*(&v32 + 1) + 8 * i)];
        if (!v12)
        {
          selfCopy = self;
          [v6 removeAllObjects];

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v17 = v7;
          v18 = [v17 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v29;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v29 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v28 + 1) + 8 * j);
                v23 = [(objc_class *)class propertyForMPMediaEntityProperty:v22];
                if (v23)
                {
                  [v6 addObject:v23];
                }

                else
                {
                  v24 = os_log_create("com.apple.amp.mediaplayer", "Library");
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v37 = v22;
                    _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_ERROR, "Cannot filter search string by %@", buf, 0xCu);
                  }
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v28 objects:v38 count:16];
            }

            while (v19);
          }

          v25 = MEMORY[0x1E69B3518];
          searchString = [(_MPMediaSearchStringPredicate *)selfCopy searchString];
          v16 = [v25 predicateWithConcatenatedProperties:v6 searchString:searchString];
          goto LABEL_23;
        }

        v13 = v12;
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = MEMORY[0x1E69B3520];
  searchString = [(_MPMediaSearchStringPredicate *)self searchString];
  v16 = [v14 predicateWithProperties:v6 searchString:searchString];
LABEL_23:

  return v16;
}

- (id)protobufferEncodableObjectFromLibrary:(id)library
{
  v4 = objc_alloc_init(MPPSearchStringPredicate);
  [(MPPSearchStringPredicate *)v4 setSearchString:self->_searchString];
  allObjects = [(NSSet *)self->_properties allObjects];
  v6 = [allObjects mutableCopy];
  [(MPPSearchStringPredicate *)v4 setProperties:v6];

  v7 = objc_alloc_init(MPPMediaPredicate);
  [(MPPMediaPredicate *)v7 setType:5];
  [(MPPMediaPredicate *)v7 setSearchStringPredicate:v4];

  return v7;
}

- (_MPMediaSearchStringPredicate)initWithProtobufferDecodableObject:(id)object library:(id)library
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaQuery.m" lineNumber:1945 description:{@"Cannot decode object of type %@", objc_opt_class()}];
  }

  v19.receiver = self;
  v19.super_class = _MPMediaSearchStringPredicate;
  v7 = [(_MPMediaSearchStringPredicate *)&v19 init];
  if (v7)
  {
    searchStringPredicate = [objectCopy searchStringPredicate];
    searchString = [searchStringPredicate searchString];
    v10 = [searchString copy];
    searchString = v7->_searchString;
    v7->_searchString = v10;

    properties = [searchStringPredicate properties];

    if (properties)
    {
      v13 = objc_alloc(MEMORY[0x1E695DFD8]);
      properties2 = [searchStringPredicate properties];
      v15 = [v13 initWithArray:properties2];
      properties = v7->_properties;
      v7->_properties = v15;
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && objc_msgSend(equalCopy[1], "isEqual:", self->_searchString))
  {
    v5 = [equalCopy[2] isEqual:self->_properties];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  allowsKeyedCoding = [coderCopy allowsKeyedCoding];
  searchString = self->_searchString;
  if (allowsKeyedCoding)
  {
    [coderCopy encodeObject:searchString forKey:@"MPSearchString"];
    [coderCopy encodeObject:self->_properties forKey:@"MPProperties"];
  }

  else
  {
    [coderCopy encodeObject:searchString];
    [coderCopy encodeObject:self->_properties];
  }
}

- (_MPMediaSearchStringPredicate)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = _MPMediaSearchStringPredicate;
  v5 = [(_MPMediaSearchStringPredicate *)&v22 init];
  if (v5)
  {
    if ([coderCopy allowsKeyedCoding])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPSearchString"];
      [(_MPMediaSearchStringPredicate *)v5 setSearchString:v6];

      v7 = MEMORY[0x1E695DFD8];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      decodeObject2 = [coderCopy decodeObjectOfClasses:v9 forKey:@"MPProperties"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      decodeObject2 = decodeObject2;
      v11 = [decodeObject2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        v14 = 1;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(decodeObject2);
            }

            objc_opt_class();
            v14 &= objc_opt_isKindOfClass();
          }

          v12 = [decodeObject2 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v12);

        if ((v14 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    else
    {
      decodeObject = [coderCopy decodeObject];
      [(_MPMediaSearchStringPredicate *)v5 setSearchString:decodeObject];

      decodeObject2 = [coderCopy decodeObject];
    }

    [(_MPMediaSearchStringPredicate *)v5 setProperties:decodeObject2];
    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

+ (id)predicateWithSearchString:(id)string forProperties:(id)properties
{
  stringCopy = string;
  propertiesCopy = properties;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaQuery.m" lineNumber:1883 description:&stru_1F149ECA8];
  }

  if (![propertiesCopy count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPMediaQuery.m" lineNumber:1884 description:&stru_1F149ECA8];
  }

  v9 = objc_alloc_init(_MPMediaSearchStringPredicate);
  [(_MPMediaSearchStringPredicate *)v9 setSearchString:stringCopy];
  [(_MPMediaSearchStringPredicate *)v9 setProperties:propertiesCopy];

  return v9;
}

@end