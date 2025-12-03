@interface NSArray(VSAdditions)
- (id)vs_componentsJoinedByAttributedString:()VSAdditions;
@end

@implementation NSArray(VSAdditions)

- (id)vs_componentsJoinedByAttributedString:()VSAdditions
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v6 = [self count];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v33;
    v28 = v6 - 1;
    v12 = *MEMORY[0x277CBE660];
    v13 = 0x277CCA000uLL;
    do
    {
      v14 = 0;
      v29 = v10;
      v30 = v9;
      v31 = v28 - v10;
      v15 = 0x277CBE000uLL;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(selfCopy);
        }

        v16 = *(*(&v32 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = v11;
            v18 = v12;
            v19 = v5;
            v20 = selfCopy;
            v21 = v4;
            v22 = *(v15 + 2776);
            v23 = objc_opt_class();
            NSStringFromClass(v23);
            v25 = v24 = v13;
            v26 = v22;
            v4 = v21;
            selfCopy = v20;
            v5 = v19;
            v12 = v18;
            v11 = v17;
            v9 = v30;
            [v26 raise:v12 format:{@"Unexpectedly, object was %@, instead of NSAttributedString.", v25}];

            v13 = v24;
            v15 = 0x277CBE000;
          }

          [v5 appendAttributedString:v16];
        }

        else
        {
          [*(v15 + 2776) raise:v12 format:{@"Array contains an object that is not at attributed string: %@", v16}];
        }

        if (v31 != v14)
        {
          [v5 appendAttributedString:v4];
        }

        ++v14;
      }

      while (v9 != v14);
      v10 = v29 + v9;
      v9 = [selfCopy countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  return v5;
}

@end