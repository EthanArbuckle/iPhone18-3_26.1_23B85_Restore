@interface NSSQLAttributeExtensionFactory
+ (uint64_t)createUnvalidatedTriggerForString:(void *)string onAttribute:;
+ (void)newExtensionsForAttribute:(uint64_t *)attribute error:;
@end

@implementation NSSQLAttributeExtensionFactory

+ (void)newExtensionsForAttribute:(uint64_t *)attribute error:
{
  v23[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [objc_msgSend(objc_msgSend(a2 "attributeDescription")];
  if (v7)
  {
    v8 = v7;
    if ([v7 length])
    {
      *v19 = 0;
      v9 = [NSSQLAttributeExtensionFactory createUnvalidatedTriggerForString:v8 onAttribute:a2];
      if ([v9 validate:v19])
      {
        v10 = v6;
        v11 = v9;
      }

      else
      {
        v11 = *v19;
        v10 = v5;
      }

      [v10 addObject:{v11, *v19}];
    }
  }

  v12 = [v6 copy];
  if ([v5 count])
  {

    if ([v5 count] == 1)
    {
      lastObject = [v5 lastObject];
      if (lastObject)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = *MEMORY[0x1E696A250];
      v22 = @"NSDetailedErrors";
      v23[0] = v5;
      lastObject = [MEMORY[0x1E696ABC0] errorWithDomain:v14 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, &v22, 1)}];
      if (lastObject)
      {
LABEL_10:
        if (attribute)
        {
          v12 = 0;
          *attribute = lastObject;
          goto LABEL_18;
        }

LABEL_17:
        v12 = 0;
        goto LABEL_18;
      }
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315394;
      *&v19[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeExtensionFactory.m";
      v20 = 1024;
      v21 = 48;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v19, 0x12u);
    }

    v16 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *v19 = 136315394;
      *&v19[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeExtensionFactory.m";
      v20 = 1024;
      v21 = 48;
      _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v19, 0x12u);
    }

    goto LABEL_17;
  }

LABEL_18:

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (uint64_t)createUnvalidatedTriggerForString:(void *)string onAttribute:
{
  objc_opt_self();
  entity = [string entity];
  v6 = [a2 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
  v7 = [objc_msgSend(v6 "lowercaseString")];
  v8 = off_1E6EC0BA0;
  if (!v7)
  {
    v8 = off_1E6EC0B70;
  }

  v9 = objc_alloc(*v8);
  name = [string name];

  return [v9 initWithObjectFromUserInfo:v6 onAttributeNamed:name onEntity:entity];
}

@end