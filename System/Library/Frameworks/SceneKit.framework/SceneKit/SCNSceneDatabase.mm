@interface SCNSceneDatabase
+ (id)lookUpKeyForObjectNamed:(id)named class:(Class)class;
+ (id)sceneDatabase;
- (SCNSceneDatabase)init;
- (SCNSceneDatabase)initWithCoder:(id)coder;
- (void)addInstance:(id)instance withName:(id)name class:(Class)class;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNSceneDatabase

+ (id)sceneDatabase
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (SCNSceneDatabase)init
{
  v4.receiver = self;
  v4.super_class = SCNSceneDatabase;
  v2 = [(SCNSceneDatabase *)&v4 init];
  if (v2)
  {
    v2->_db = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNSceneDatabase;
  [(SCNSceneDatabase *)&v3 dealloc];
}

+ (id)lookUpKeyForObjectNamed:(id)named class:(Class)class
{
  v5 = [NSStringFromClass(class) stringByAppendingString:@"."];

  return [(NSString *)v5 stringByAppendingString:named];
}

- (void)addInstance:(id)instance withName:(id)name class:(Class)class
{
  v7 = [objc_opt_class() lookUpKeyForObjectNamed:name class:class];
  db = self->_db;

  [(NSMutableDictionary *)db setValue:instance forKey:v7];
}

- (SCNSceneDatabase)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNSceneDatabase;
  v4 = [(SCNSceneDatabase *)&v7 init];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [coder lookUpKey])
    {
      [coder setLookUpFoundInstance:{objc_msgSend(coder, "decodeObjectOfClasses:forKey:", SCNUserInfoClasses(), objc_msgSend(coder, "lookUpKey"))}];
    }

    else
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SCNSceneDatabase initWithCoder:v5];
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  db = self->_db;
  v6 = [(NSMutableDictionary *)db countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(db);
        }

        [coder encodeObject:-[NSMutableDictionary valueForKey:](self->_db forKey:{"valueForKey:", *(*(&v10 + 1) + 8 * i)), *(*(&v10 + 1) + 8 * i)}];
      }

      v7 = [(NSMutableDictionary *)db countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end