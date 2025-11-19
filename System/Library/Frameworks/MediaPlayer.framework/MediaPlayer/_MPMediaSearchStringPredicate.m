@interface _MPMediaSearchStringPredicate
+ (id)predicateWithSearchString:(id)a3 forProperties:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_MPMediaSearchStringPredicate)initWithCoder:(id)a3;
- (_MPMediaSearchStringPredicate)initWithProtobufferDecodableObject:(id)a3 library:(id)a4;
- (id)ML3PredicateForContainer;
- (id)ML3PredicateForTrack;
- (id)_ML3PredicateForEntityClass:(Class)a3;
- (id)protobufferEncodableObjectFromLibrary:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)_ML3PredicateForEntityClass:(Class)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [(_MPMediaSearchStringPredicate *)self properties];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v5;
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

        v12 = [(objc_class *)a3 spotlightPropertyForMPMediaEntityProperty:*(*(&v32 + 1) + 8 * i)];
        if (!v12)
        {
          v27 = self;
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
                v23 = [(objc_class *)a3 propertyForMPMediaEntityProperty:v22];
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
          v15 = [(_MPMediaSearchStringPredicate *)v27 searchString];
          v16 = [v25 predicateWithConcatenatedProperties:v6 searchString:v15];
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
  v15 = [(_MPMediaSearchStringPredicate *)self searchString];
  v16 = [v14 predicateWithProperties:v6 searchString:v15];
LABEL_23:

  return v16;
}

- (id)protobufferEncodableObjectFromLibrary:(id)a3
{
  v4 = objc_alloc_init(MPPSearchStringPredicate);
  [(MPPSearchStringPredicate *)v4 setSearchString:self->_searchString];
  v5 = [(NSSet *)self->_properties allObjects];
  v6 = [v5 mutableCopy];
  [(MPPSearchStringPredicate *)v4 setProperties:v6];

  v7 = objc_alloc_init(MPPMediaPredicate);
  [(MPPMediaPredicate *)v7 setType:5];
  [(MPPMediaPredicate *)v7 setSearchStringPredicate:v4];

  return v7;
}

- (_MPMediaSearchStringPredicate)initWithProtobufferDecodableObject:(id)a3 library:(id)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MPMediaQuery.m" lineNumber:1945 description:{@"Cannot decode object of type %@", objc_opt_class()}];
  }

  v19.receiver = self;
  v19.super_class = _MPMediaSearchStringPredicate;
  v7 = [(_MPMediaSearchStringPredicate *)&v19 init];
  if (v7)
  {
    v8 = [v6 searchStringPredicate];
    v9 = [v8 searchString];
    v10 = [v9 copy];
    searchString = v7->_searchString;
    v7->_searchString = v10;

    v12 = [v8 properties];

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x1E695DFD8]);
      v14 = [v8 properties];
      v15 = [v13 initWithArray:v14];
      properties = v7->_properties;
      v7->_properties = v15;
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && objc_msgSend(v4[1], "isEqual:", self->_searchString))
  {
    v5 = [v4[2] isEqual:self->_properties];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [v6 allowsKeyedCoding];
  searchString = self->_searchString;
  if (v4)
  {
    [v6 encodeObject:searchString forKey:@"MPSearchString"];
    [v6 encodeObject:self->_properties forKey:@"MPProperties"];
  }

  else
  {
    [v6 encodeObject:searchString];
    [v6 encodeObject:self->_properties];
  }
}

- (_MPMediaSearchStringPredicate)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _MPMediaSearchStringPredicate;
  v5 = [(_MPMediaSearchStringPredicate *)&v22 init];
  if (v5)
  {
    if ([v4 allowsKeyedCoding])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPSearchString"];
      [(_MPMediaSearchStringPredicate *)v5 setSearchString:v6];

      v7 = MEMORY[0x1E695DFD8];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"MPProperties"];

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
      v10 = v10;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
              objc_enumerationMutation(v10);
            }

            objc_opt_class();
            v14 &= objc_opt_isKindOfClass();
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
      v16 = [v4 decodeObject];
      [(_MPMediaSearchStringPredicate *)v5 setSearchString:v16];

      v10 = [v4 decodeObject];
    }

    [(_MPMediaSearchStringPredicate *)v5 setProperties:v10];
    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

+ (id)predicateWithSearchString:(id)a3 forProperties:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"MPMediaQuery.m" lineNumber:1883 description:&stru_1F149ECA8];
  }

  if (![v8 count])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"MPMediaQuery.m" lineNumber:1884 description:&stru_1F149ECA8];
  }

  v9 = objc_alloc_init(_MPMediaSearchStringPredicate);
  [(_MPMediaSearchStringPredicate *)v9 setSearchString:v7];
  [(_MPMediaSearchStringPredicate *)v9 setProperties:v8];

  return v9;
}

@end