@interface _PFModelUtilities
+ (void)addAttributes:(void *)a3 toPropertiesOfEntity:;
+ (void)addRelationships:(void *)a3 toPropertiesOfEntity:;
@end

@implementation _PFModelUtilities

+ (void)addAttributes:(void *)a3 toPropertiesOfEntity:
{
  v23 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v16 = [objc_msgSend(a3 "properties")];
  objc_opt_self();
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [a2 objectForKey:v9];
        objc_opt_self();
        v11 = objc_alloc_init(NSAttributeDescription);
        [(NSPropertyDescription *)v11 setName:v9];
        -[NSAttributeDescription setAttributeType:](v11, "setAttributeType:", [objc_msgSend(v10 objectAtIndex:{0), "unsignedIntegerValue"}]);
        if ([v10 count] >= 2)
        {
          -[NSPropertyDescription setOptional:](v11, "setOptional:", [objc_msgSend(v10 objectAtIndex:{1), "BOOLValue"}]);
          if ([v10 count] >= 3)
          {
            if ([(NSAttributeDescription *)v11 attributeType]== NSTransformableAttributeType)
            {
              v12 = [v10 objectAtIndex:2];
              if (v12 != [MEMORY[0x1E695DFB0] null])
              {
                -[NSAttributeDescription setAttributeValueClassName:](v11, "setAttributeValueClassName:", [v10 objectAtIndex:2]);
              }

              if ([v10 count] >= 4)
              {
                -[NSAttributeDescription setValueTransformerName:](v11, "setValueTransformerName:", [v10 objectAtIndex:3]);
              }
            }

            else
            {
              v13 = [(NSAttributeDescription *)v11 attributeType];
              v14 = [v10 objectAtIndex:2];
              if (v13 == 1000)
              {
                -[NSAttributeDescription setAllowsExternalBinaryDataStorage:](v11, "setAllowsExternalBinaryDataStorage:", [v14 BOOLValue]);
              }

              else
              {
                [(NSAttributeDescription *)v11 setDefaultValue:v14];
              }
            }
          }
        }

        [v17 addObject:v11];
      }

      v6 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [v16 addObjectsFromArray:v17];
  [a3 setProperties:v16];

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)addRelationships:(void *)a3 toPropertiesOfEntity:
{
  objc_opt_self();
  v5 = [objc_msgSend(a3 "properties")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59___PFModelUtilities_addRelationships_toPropertiesOfEntity___block_invoke;
  v6[3] = &unk_1E6EC28F8;
  v6[4] = v5;
  [a2 enumerateKeysAndObjectsUsingBlock:v6];
  [a3 setProperties:v5];
}

@end