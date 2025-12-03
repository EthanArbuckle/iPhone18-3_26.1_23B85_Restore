@interface SKCaptureUnarchiverDelegate
+ (id)sharedInstance;
- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes;
@end

@implementation SKCaptureUnarchiverDelegate

+ (id)sharedInstance
{
  {
    +[SKCaptureUnarchiverDelegate sharedInstance]::instance = objc_alloc_init(SKCaptureUnarchiverDelegate);
  }

  v2 = +[SKCaptureUnarchiverDelegate sharedInstance]::instance;

  return v2;
}

- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  classesCopy = classes;
  v6 = [classesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(classesCopy);
        }

        v9 = NSClassFromString(*(*(&v11 + 1) + 8 * i));
        if (v9)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [classesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end