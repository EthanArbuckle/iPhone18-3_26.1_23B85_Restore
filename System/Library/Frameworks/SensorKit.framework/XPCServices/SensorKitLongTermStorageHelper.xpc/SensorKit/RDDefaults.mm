@interface RDDefaults
+ (void)initialize;
- (RDDefaults)init;
- (void)dealloc;
- (void)setAuthorizationVersions:(id)versions forBundleId:(id)id;
- (void)updateAuthorizationVersions:(id)versions forBundleId:(id)id;
@end

@implementation RDDefaults

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100016958 = os_log_create("com.apple.SensorKit", "RDDefaults");
  }
}

- (RDDefaults)init
{
  v3 = +[NSUserDefaults standardUserDefaults];

  return sub_100000FE4(self, v3);
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 24);
  }

  v3.receiver = self;
  v3.super_class = RDDefaults;
  [(RDDefaults *)&v3 dealloc];
}

- (void)setAuthorizationVersions:(id)versions forBundleId:(id)id
{
  v7 = [NSMutableDictionary alloc];
  if (self)
  {
    v8 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"AuthorizationVersions"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 initWithDictionary:v8];
  [v9 setObject:versions forKeyedSubscript:id];
  [(NSUserDefaults *)self->_defaults setObject:v9 forKey:@"AuthorizationVersions"];
}

- (void)updateAuthorizationVersions:(id)versions forBundleId:(id)id
{
  v7 = [NSMutableDictionary alloc];
  if (self)
  {
    v8 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"AuthorizationVersions"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 initWithDictionary:v8];
  v10 = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(v9, "objectForKeyedSubscript:", id)}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [versions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(versions);
        }

        [v10 setObject:objc_msgSend(versions forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v15 + 1) + 8 * v14)), *(*(&v15 + 1) + 8 * v14)}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [versions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [v9 setObject:v10 forKeyedSubscript:id];
  [(NSUserDefaults *)self->_defaults setObject:v9 forKey:@"AuthorizationVersions"];
}

@end