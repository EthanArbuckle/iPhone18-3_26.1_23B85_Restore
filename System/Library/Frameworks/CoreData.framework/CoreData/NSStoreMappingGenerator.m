@interface NSStoreMappingGenerator
+ (NSStoreMappingGenerator)defaultMappingGenerator;
- (void)mappingsDictForConfigurationWithName:(void *)a3 inModel:;
@end

@implementation NSStoreMappingGenerator

+ (NSStoreMappingGenerator)defaultMappingGenerator
{
  objc_opt_self();
  result = _NSDefaultMappingGenerator;
  if (!_NSDefaultMappingGenerator)
  {
    result = objc_alloc_init(NSStoreMappingGenerator);
    _NSDefaultMappingGenerator = result;
  }

  return result;
}

- (void)mappingsDictForConfigurationWithName:(void *)a3 inModel:
{
  v62 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v34 = [MEMORY[0x1E695DF90] dictionary];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v38 = [MEMORY[0x1E695DF70] array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [a3 entitiesForConfiguration:a2];
    v37 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v37)
    {
      v36 = *v47;
      p_superclass = PFCloudKitStoreComparisonCache.superclass;
      do
      {
        v6 = 0;
        do
        {
          if (*v47 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v40 = v6;
          v7 = *(*(&v46 + 1) + 8 * v6);
          v39 = [[NSEntityStoreMapping alloc] initWithEntity:v7];
          v8 = [MEMORY[0x1E695DF90] dictionary];
          v41 = v7;
          v9 = [objc_msgSend(v7 "attributesByName")];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v54 objects:v61 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v55;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v55 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v54 + 1) + 8 * i);
                v15 = [objc_alloc((p_superclass + 429)) initWithProperty:v14];
                [v15 setExternalType:{objc_msgSend(v14, "attributeType")}];
                [v8 setObject:v15 forKey:{objc_msgSend(v14, "name")}];
              }

              v11 = [v9 countByEnumeratingWithState:&v54 objects:v61 count:16];
            }

            while (v11);
          }

          v16 = [objc_msgSend(v41 "relationshipsByName")];
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v51;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v51 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v50 + 1) + 8 * j);
                v22 = [(NSPropertyStoreMapping *)[NSRelationshipStoreMapping alloc] initWithProperty:v21];
                -[NSRelationshipStoreMapping setDestinationEntityExternalName:](v22, [objc_msgSend(objc_msgSend(v21 "destinationEntity")]);
                if ([v21 isToMany])
                {
                  v23 = [v21 entity];
                }

                else
                {
                  v23 = [v21 destinationEntity];
                }

                v24 = [objc_msgSend(objc_msgSend(v23 "name")];
                v25 = [MEMORY[0x1E695DEC8] arrayWithObject:{+[NSJoin joinWithSourceAttributeName:destinationAttributeName:](NSJoin, v24, v24)}];
                [(NSRelationshipStoreMapping *)v22 setJoins:v25];
                v26 = [objc_msgSend(v25 valueForKey:{@"sourceAttributeName", "mutableCopy"}];
                [v26 removeObject:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v21, "entity"), "name"), "stringByAppendingString:", @"_id", "lowercaseString")}];
                [(NSRelationshipStoreMapping *)v22 setForeignKeys:v26];

                if (v22)
                {
                  v22->_joinSemantic = 2;
                }

                [v8 setObject:v22 forKey:{objc_msgSend(v21, "name")}];
              }

              v18 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
            }

            while (v18);
          }

          [(NSEntityStoreMapping *)v39 setPropertyMappings:v8];
          -[NSEntityStoreMapping setPrimaryKeys:](v39, [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(objc_msgSend(objc_msgSend(v41, "name"), "stringByAppendingString:", @"_id", "lowercaseString")}]);
          [v38 addObject:v39];
          v6 = v40 + 1;
          p_superclass = (PFCloudKitStoreComparisonCache + 8);
        }

        while (v40 + 1 != v37);
        v37 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v37);
    }

    v27 = [v38 countByEnumeratingWithState:&v42 objects:v58 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      v30 = v34;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(v38);
          }

          [v34 setObject:*(*(&v42 + 1) + 8 * k) forKey:{objc_msgSend(objc_msgSend(*(*(&v42 + 1) + 8 * k), "entity"), "name")}];
        }

        v28 = [v38 countByEnumeratingWithState:&v42 objects:v58 count:16];
      }

      while (v28);
    }

    else
    {
      v30 = v34;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

@end