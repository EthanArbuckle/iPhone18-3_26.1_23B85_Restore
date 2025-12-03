@interface HKMedicalCodingCollection
+ (HKMedicalCodingCollection)collectionWithCoding:(id)coding;
+ (HKMedicalCodingCollection)collectionWithCodings:(id)codings;
+ (id)stripCodingsMatchingSystem:(id)system fromCodings:(id)codings;
- (BOOL)isEqual:(id)equal;
- (HKMedicalCodingCollection)init;
- (HKMedicalCodingCollection)initWithCoder:(id)coder;
- (HKMedicalCodingCollection)initWithCodings:(id)codings;
- (NSDictionary)codingsBySystem;
- (id)codingsExcludingCodingSystem:(id)system;
- (id)codingsForCodingSystem:(id)system;
- (id)collectionByAddingCodings:(id)codings;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicalCodingCollection

+ (HKMedicalCodingCollection)collectionWithCodings:(id)codings
{
  codingsCopy = codings;
  if (!codingsCopy)
  {
    [(HKMedicalCodingCollection *)a2 collectionWithCodings:self];
  }

  v6 = [[self alloc] initWithCodings:codingsCopy];

  return v6;
}

+ (HKMedicalCodingCollection)collectionWithCoding:(id)coding
{
  v11[1] = *MEMORY[0x1E69E9840];
  codingCopy = coding;
  if (!codingCopy)
  {
    [(HKMedicalCodingCollection *)a2 collectionWithCoding:self];
  }

  v6 = [self alloc];
  v11[0] = codingCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v6 initWithCodings:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (HKMedicalCodingCollection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicalCodingCollection)initWithCodings:(id)codings
{
  codingsCopy = codings;
  if (!codingsCopy)
  {
    [(HKMedicalCodingCollection *)a2 initWithCodings:?];
  }

  v10.receiver = self;
  v10.super_class = HKMedicalCodingCollection;
  v6 = [(HKMedicalCodingCollection *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:codingsCopy];
    codingsOrderedSet = v6->_codingsOrderedSet;
    v6->_codingsOrderedSet = v7;
  }

  return v6;
}

- (id)collectionByAddingCodings:(id)codings
{
  v4 = MEMORY[0x1E695DF70];
  codingsCopy = codings;
  v6 = [v4 alloc];
  codings = [(HKMedicalCodingCollection *)self codings];
  v8 = [v6 initWithArray:codings];

  [v8 addObjectsFromArray:codingsCopy];
  v9 = [[HKMedicalCodingCollection alloc] initWithCodings:v8];

  return v9;
}

- (id)description
{
  codings = [(HKMedicalCodingCollection *)self codings];
  v4 = [codings hk_map:&__block_literal_global_21];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@:%p, codings = [%@]>", v8, self, v5, 0];

  return v9;
}

- (id)codingsForCodingSystem:(id)system
{
  systemCopy = system;
  v5 = MEMORY[0x1E695DFD8];
  codings = [(HKMedicalCodingCollection *)self codings];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__HKMedicalCodingCollection_codingsForCodingSystem___block_invoke;
  v11[3] = &unk_1E737AA60;
  v12 = systemCopy;
  v7 = systemCopy;
  v8 = [codings hk_filter:v11];
  v9 = [v5 setWithArray:v8];

  return v9;
}

uint64_t __52__HKMedicalCodingCollection_codingsForCodingSystem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 codingSystem];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)codingsExcludingCodingSystem:(id)system
{
  systemCopy = system;
  v5 = objc_opt_class();
  codings = [(HKMedicalCodingCollection *)self codings];
  v7 = [v5 stripCodingsMatchingSystem:systemCopy fromCodings:codings];

  return v7;
}

+ (id)stripCodingsMatchingSystem:(id)system fromCodings:(id)codings
{
  systemCopy = system;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__HKMedicalCodingCollection_stripCodingsMatchingSystem_fromCodings___block_invoke;
  v9[3] = &unk_1E737AA60;
  v10 = systemCopy;
  v6 = systemCopy;
  v7 = [codings hk_filter:v9];

  return v7;
}

uint64_t __68__HKMedicalCodingCollection_stripCodingsMatchingSystem_fromCodings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 codingSystem];
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v7 = 0;
  }

  else if (v5)
  {
    v6 = [v3 codingSystem];
    v7 = [v6 isEqual:*(a1 + 32)] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (NSDictionary)codingsBySystem
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = self->_codingsOrderedSet;
  v5 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        codingSystem = [v9 codingSystem];
        v11 = codingSystem;
        if (codingSystem)
        {
          v12 = codingSystem;
        }

        else
        {
          v12 = +[HKMedicalCodingSystem unknownSystem];
        }

        v13 = v12;

        v14 = [v3 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v3 setObject:v15 forKeyedSubscript:v13];
        }

        v16 = [v3 objectForKeyedSubscript:v13];
        [v16 addObject:v9];
      }

      v6 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  allKeys = [v3 allKeys];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __44__HKMedicalCodingCollection_codingsBySystem__block_invoke;
  v22[3] = &unk_1E737AA88;
  v23 = v3;
  v18 = v3;
  v19 = [allKeys hk_mapToDictionary:v22];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __44__HKMedicalCodingCollection_codingsBySystem__block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 objectForKeyedSubscript:v7];
  v8 = [v9 copy];
  (a3)[2](v6, v7, v8);
}

- (unint64_t)hash
{
  codings = [(HKMedicalCodingCollection *)self codings];
  v3 = [codings hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      codings = [(HKMedicalCodingCollection *)self codings];
      codings2 = [(HKMedicalCodingCollection *)v5 codings];
      if (codings == codings2)
      {
        v11 = 1;
      }

      else
      {
        codings3 = [(HKMedicalCodingCollection *)v5 codings];
        if (codings3)
        {
          codings4 = [(HKMedicalCodingCollection *)self codings];
          codings5 = [(HKMedicalCodingCollection *)v5 codings];
          v11 = [codings4 isEqual:codings5];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HKMedicalCodingCollection)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"Codings"];

  if (v8)
  {
    v14.receiver = self;
    v14.super_class = HKMedicalCodingCollection;
    v9 = [(HKMedicalCodingCollection *)&v14 init];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v8];
      codingsOrderedSet = v9->_codingsOrderedSet;
      v9->_codingsOrderedSet = v10;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codings = [(HKMedicalCodingCollection *)self codings];
  [coderCopy encodeObject:codings forKey:@"Codings"];
}

+ (void)collectionWithCodings:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalCodingCollection.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"codings"}];
}

+ (void)collectionWithCoding:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalCodingCollection.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"coding"}];
}

- (void)initWithCodings:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalCodingCollection.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"codings"}];
}

@end