@interface NSCoder(SCNExtensions)
- (uint64_t)scn_decodeArrayOfObjectsOfClass:()SCNExtensions containingNestedContainersForKey:;
- (uint64_t)scn_decodeArrayOfObjectsOfClass:()SCNExtensions forKey:;
- (uint64_t)scn_decodeArrayOfObjectsOfClasses:()SCNExtensions containingNestedContainersForKey:;
- (uint64_t)scn_decodeArrayOfObjectsOfClasses:()SCNExtensions forKey:;
- (uint64_t)scn_decodeDictionaryWithKeysOfClass:()SCNExtensions objectsOfClass:containingNestedContainersForKey:;
- (uint64_t)scn_decodeDictionaryWithKeysOfClass:()SCNExtensions objectsOfClass:forKey:;
- (uint64_t)scn_decodeDictionaryWithKeysOfClasses:()SCNExtensions objectsOfClasses:containingNestedContainersForKey:;
- (uint64_t)scn_decodeDictionaryWithKeysOfClasses:()SCNExtensions objectsOfClasses:forKey:;
- (uint64_t)scn_decodeObjectOfClass:()SCNExtensions forKey:;
- (uint64_t)scn_decodeObjectOfClasses:()SCNExtensions forKey:;
@end

@implementation NSCoder(SCNExtensions)

- (uint64_t)scn_decodeObjectOfClass:()SCNExtensions forKey:
{
  v1 = [self decodeObjectOfClass:? forKey:?];
  if (objc_opt_isKindOfClass())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)scn_decodeObjectOfClasses:()SCNExtensions forKey:
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [self decodeObjectOfClasses:? forKey:?];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v11;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v11 != v7)
    {
      objc_enumerationMutation(a3);
    }

    if (objc_opt_isKindOfClass())
    {
      return v4;
    }

    if (v6 == ++v8)
    {
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (uint64_t)scn_decodeArrayOfObjectsOfClass:()SCNExtensions forKey:
{
  if ([self requiresSecureCoding])
  {

    return [self decodeArrayOfObjectsOfClass:a3 forKey:a4];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), a3, 0}];

    return [self decodeObjectOfClasses:v8 forKey:a4];
  }
}

- (uint64_t)scn_decodeArrayOfObjectsOfClasses:()SCNExtensions forKey:
{
  if ([self requiresSecureCoding])
  {

    return [self decodeArrayOfObjectsOfClasses:a3 forKey:a4];
  }

  else
  {
    v8 = [a3 setByAddingObject:objc_opt_class()];

    return [self decodeObjectOfClasses:v8 forKey:a4];
  }
}

- (uint64_t)scn_decodeArrayOfObjectsOfClass:()SCNExtensions containingNestedContainersForKey:
{
  v10[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEB98];
  v10[0] = objc_opt_class();
  v10[1] = a3;
  v8 = [self decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v10, 2)), a4}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)scn_decodeArrayOfObjectsOfClasses:()SCNExtensions containingNestedContainersForKey:
{
  v4 = [self decodeObjectOfClasses:objc_msgSend(a3 forKey:{"setByAddingObject:", objc_opt_class()), a4}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)scn_decodeDictionaryWithKeysOfClass:()SCNExtensions objectsOfClass:forKey:
{
  if ([self requiresSecureCoding])
  {

    return [self decodeDictionaryWithKeysOfClass:a3 objectsOfClass:a4 forKey:a5];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), a3, a4, 0}];

    return [self decodeObjectOfClasses:v10 forKey:a5];
  }
}

- (uint64_t)scn_decodeDictionaryWithKeysOfClasses:()SCNExtensions objectsOfClasses:forKey:
{
  if ([self requiresSecureCoding])
  {

    return [self decodeDictionaryWithKeysOfClasses:a3 objectsOfClasses:a4 forKey:a5];
  }

  else
  {
    v10 = [objc_msgSend(a3 setByAddingObjectsFromSet:{a4), "setByAddingObject:", objc_opt_class()}];

    return [self decodeObjectOfClasses:v10 forKey:a5];
  }
}

- (uint64_t)scn_decodeDictionaryWithKeysOfClass:()SCNExtensions objectsOfClass:containingNestedContainersForKey:
{
  v12[3] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = a3;
  v12[2] = a4;
  v10 = [self decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v12, 3)), a5}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)scn_decodeDictionaryWithKeysOfClasses:()SCNExtensions objectsOfClasses:containingNestedContainersForKey:
{
  v5 = [self decodeObjectOfClasses:objc_msgSend(objc_msgSend(a3 forKey:{"setByAddingObjectsFromSet:", a4), "setByAddingObject:", objc_opt_class()), a5}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

@end