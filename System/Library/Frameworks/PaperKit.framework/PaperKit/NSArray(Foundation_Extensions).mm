@interface NSArray(Foundation_Extensions)
- (void)muDeepMutableCopy;
@end

@implementation NSArray(Foundation_Extensions)

- (void)muDeepMutableCopy
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 138412290;
    v13 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          muDeepMutableCopy = [v9 muDeepMutableCopy];
        }

        else if ([v9 conformsToProtocol:&unk_1F4FA2F90])
        {
          muDeepMutableCopy = [v9 mutableCopy];
        }

        else if ([v9 conformsToProtocol:&unk_1F4FA2EC8])
        {
          muDeepMutableCopy = [v9 copy];
        }

        else
        {
          muDeepMutableCopy = v9;
        }

        v11 = muDeepMutableCopy;
        if (muDeepMutableCopy)
        {
          [v2 addObject:muDeepMutableCopy];
          goto LABEL_19;
        }

LABEL_17:
        v11 = +[PPKImageWriter log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v19 = v9;
          _os_log_impl(&dword_1D38C4000, v11, OS_LOG_TYPE_DEFAULT, "Unable to copy object for [NSMutableArray muDeepMutableCopy]: %@", buf, 0xCu);
        }

LABEL_19:
      }

      v6 = [selfCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  return v2;
}

@end