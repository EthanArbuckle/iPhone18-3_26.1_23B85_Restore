@interface PHASEServiceSharedEntityDebugInfo
- (BOOL)isEqual:(id)a3;
- (PHASEServiceSharedEntityDebugInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setSessionSharedRoots:(id)a3;
@end

@implementation PHASEServiceSharedEntityDebugInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PHASEServiceSharedEntityDebugInfo *)self sharedListener];
  v6 = [v4 sharedListener];
  if ([v5 isEqual:v6])
  {
    v7 = [(PHASEServiceSharedEntityDebugInfo *)self sessionSharedRoots];
    v8 = [v4 sessionSharedRoots];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_sharedListener forKey:@"sharedListener"];
  [v4 encodeObject:self->_sessionSharedRoots forKey:@"sessionSharedRoots"];
}

- (PHASEServiceSharedEntityDebugInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PHASEServiceSharedEntityDebugInfo;
  v5 = [(PHASEServiceSharedEntityDebugInfo *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedListener"];
    sharedListener = v5->_sharedListener;
    v5->_sharedListener = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"sessionSharedRoots"];
    sessionSharedRoots = v5->_sessionSharedRoots;
    v5->_sessionSharedRoots = v13;
  }

  return v5;
}

- (id)description
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<PHASEServiceSharedEntityDebugInfo:%p sharedListener=%@, sessionSharedRoots:", self, self->_sharedListener];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_sessionSharedRoots;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_sessionSharedRoots objectForKey:v8];
        [v3 appendFormat:@"\r%@ : %@", v8, v9, v12];
      }

      v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)setSessionSharedRoots:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  sessionSharedRoots = self->_sessionSharedRoots;
  self->_sessionSharedRoots = v4;
}

@end