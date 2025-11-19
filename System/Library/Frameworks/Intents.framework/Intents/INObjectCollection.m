@interface INObjectCollection
- (INObjectCollection)initWithCoder:(id)a3;
- (INObjectCollection)initWithItems:(NSArray *)items;
- (INObjectCollection)initWithSections:(NSArray *)sections;
- (NSArray)allItems;
- (id)_typedObjectCollectionWithCodableAttribute:(id)a3;
- (id)_untypedObjectCollectionWithItemClass:(Class)a3 codableAttribute:(id)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INObjectCollection

- (id)_untypedObjectCollectionWithItemClass:(Class)a3 codableAttribute:(id)a4 error:(id *)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = 0x1E695D000uLL;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [(INObjectCollection *)self sections];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v38 = self;
  v11 = [(INObjectCollection *)self sections];
  v39 = [v11 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v39)
  {
    v12 = *v50;
    v43 = v11;
    v44 = v10;
    v37 = *v50;
    do
    {
      v13 = 0;
      do
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v41 = v13;
        v14 = *(*(&v49 + 1) + 8 * v13);
        v15 = objc_alloc_init(*(v7 + 3952));
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v40 = v14;
        v16 = [v14 items];
        v17 = [v16 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v46;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v46 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v45 + 1) + 8 * i);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v29 = MEMORY[0x1E696ABC0];
                v53 = *MEMORY[0x1E696A578];
                v30 = MEMORY[0x1E696AEC0];
                v31 = objc_opt_class();
                v32 = NSStringFromClass(v31);
                v33 = [v30 stringWithFormat:@"Unexpected class %@", v32];
                v54 = v33;
                v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
                *a5 = [v29 errorWithDomain:@"_INObjectCollectionErrorDomain" code:1001 userInfo:v34];

                v28 = 0;
                v10 = v44;
                goto LABEL_20;
              }

              v22 = objc_alloc_init(INJSONEncoder);
              v23 = INObjectWithTypedObject(v21, v6);
              if (v23)
              {
                v24 = [(INJSONEncoder *)v22 encodeObject:v23 withCodableAttribute:v6];
                [v15 if_addObjectIfNonNil:v24];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v45 objects:v55 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v25 = [INObjectSection alloc];
        v26 = [v40 title];
        v27 = [(INObjectSection *)v25 initWithTitle:v26 items:v15];
        v10 = v44;
        [v44 addObject:v27];

        v13 = v41 + 1;
        v11 = v43;
        v7 = 0x1E695D000;
        v12 = v37;
      }

      while (v41 + 1 != v39);
      v39 = [v43 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v39);
  }

  v28 = [[INObjectCollection alloc] initWithSections:v10];
  [(INObjectCollection *)v28 setUsesIndexedCollation:[(INObjectCollection *)v38 usesIndexedCollation]];
LABEL_20:

  v35 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)_typedObjectCollectionWithCodableAttribute:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [(INObjectCollection *)self sections];
  v26 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

  v7 = objc_alloc_init(INJSONDecoder);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = self;
  obj = [(INObjectCollection *)self sections];
  v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v27)
  {
    v25 = *v33;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v11 = [v9 items];
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [(INJSONDecoder *)v7 decodeWithCodableAttribute:v4 from:*(*(&v28 + 1) + 8 * j)];
              [v10 if_addObjectIfNonNil:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v13);
        }

        v17 = [INObjectSection alloc];
        v18 = [v9 title];
        v19 = [(INObjectSection *)v17 initWithTitle:v18 items:v10];
        [v26 addObject:v19];
      }

      v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v27);
  }

  v20 = [[INObjectCollection alloc] initWithSections:v26];
  [(INObjectCollection *)v20 setUsesIndexedCollation:[(INObjectCollection *)v23 usesIndexedCollation]];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  sections = self->_sections;
  v5 = a3;
  [v5 encodeObject:sections forKey:@"sections"];
  [v5 encodeBool:self->_usesIndexedCollation forKey:@"usesIndexedCollation"];
}

- (INObjectCollection)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"sections"];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [(INObjectCollection *)self initWithSections:v9];
  v11 = [v5 decodeBoolForKey:@"usesIndexedCollation"];

  [(INObjectCollection *)v10 setUsesIndexedCollation:v11];
  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [INObjectCollection alloc];
  v5 = [(INObjectCollection *)self sections];
  v6 = [(INObjectCollection *)v4 initWithSections:v5];

  [(INObjectCollection *)v6 setUsesIndexedCollation:[(INObjectCollection *)self usesIndexedCollation]];
  return v6;
}

- (NSArray)allItems
{
  v2 = [(INObjectCollection *)self sections];
  v3 = [v2 if_flatMap:&__block_literal_global_100283];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (INObjectCollection)initWithItems:(NSArray *)items
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = items;
  v5 = [[INObjectSection alloc] initWithTitle:0 items:v4];

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [(INObjectCollection *)self initWithSections:v6];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (INObjectCollection)initWithSections:(NSArray *)sections
{
  v4 = sections;
  v18.receiver = self;
  v18.super_class = INObjectCollection;
  v5 = [(INObjectCollection *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E696AB50];
    v7 = [(NSArray *)v4 valueForKey:@"title"];
    v8 = [v6 setWithArray:v7];

    v9 = [MEMORY[0x1E696AB50] setWithSet:v8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __39__INObjectCollection_initWithSections___block_invoke;
    v15[3] = &unk_1E7285498;
    v16 = v8;
    v17 = v9;
    v10 = v9;
    v11 = v8;
    v12 = [(NSArray *)v4 if_map:v15];
    v13 = v5->_sections;
    v5->_sections = v12;
  }

  return v5;
}

INObjectSection *__39__INObjectCollection_initWithSections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];
  if (v4)
  {
    v5 = [*(a1 + 32) countForObject:v4];
    v6 = v5 - [*(a1 + 40) countForObject:v4];
    [*(a1 + 40) removeObject:v4];
    v7 = [INObjectSection alloc];
    v8 = [v4 stringByAppendingFormat:@"-%lu", v6];
    v9 = [v3 title];
    v10 = [v3 subtitle];
    v11 = [v3 image];
    v12 = [v3 items];
    v13 = [(INObjectSection *)v7 initWithIdentifier:v8 title:v9 subtitle:v10 image:v11 items:v12];
  }

  else
  {
    v13 = v3;
  }

  return v13;
}

@end