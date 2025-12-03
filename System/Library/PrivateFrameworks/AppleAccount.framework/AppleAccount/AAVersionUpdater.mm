@interface AAVersionUpdater
- (AAVersionUpdater)initWithStartingVersion:(unint64_t)version;
- (BOOL)needsUpdate;
- (id)_latestVersion;
- (void)_performVersionUpdate:(unint64_t)update;
- (void)performMigrations;
@end

@implementation AAVersionUpdater

- (AAVersionUpdater)initWithStartingVersion:(unint64_t)version
{
  v5.receiver = self;
  v5.super_class = AAVersionUpdater;
  result = [(AAVersionUpdater *)&v5 init];
  if (result)
  {
    result->_currentVersion = version;
  }

  return result;
}

- (void)performMigrations
{
  orderedVersions = [objc_opt_class() orderedVersions];
  orderedVersions2 = [objc_opt_class() orderedVersions];
  v4 = [orderedVersions2 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [orderedVersions objectAtIndexedSubscript:v5];
      unsignedIntValue = [v6 unsignedIntValue];

      if (self->_currentVersion < unsignedIntValue)
      {
        [(AAVersionUpdater *)self _performVersionUpdate:unsignedIntValue];
        self->_currentVersion = unsignedIntValue;
      }

      ++v5;
      orderedVersions3 = [objc_opt_class() orderedVersions];
      v9 = [orderedVersions3 count];
    }

    while (v9 > v5);
  }
}

- (void)_performVersionUpdate:(unint64_t)update
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentVersion = self->_currentVersion;
    *buf = 136315650;
    v17 = "[AAVersionUpdater _performVersionUpdate:]";
    v18 = 2048;
    v19 = currentVersion;
    v20 = 2048;
    updateCopy2 = update;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "%s Performing data migration from version %lu to : %lu", buf, 0x20u);
  }

  update = [MEMORY[0x1E696AEC0] stringWithFormat:@"performVersionUpdate%ldToVersion%ld", self->_currentVersion, update];
  v9 = NSSelectorFromString(update);

  v10 = [(AAVersionUpdater *)self methodSignatureForSelector:v9];
  if ([v10 methodReturnLength] != 1)
  {
    [(AAVersionUpdater *)a2 _performVersionUpdate:v10];
  }

  v11 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
  [v11 setSelector:v9];
  [v11 invokeWithTarget:self];
  v15 = 0;
  [v11 getReturnValue:&v15];
  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_currentVersion;
    *buf = 136315906;
    v17 = "[AAVersionUpdater _performVersionUpdate:]";
    v18 = 2048;
    v19 = v13;
    v20 = 2048;
    updateCopy2 = update;
    v22 = 2048;
    v23 = v15;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "%s Performed update of version %lu to %lu with success %lu", buf, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)needsUpdate
{
  currentVersion = self->_currentVersion;
  _latestVersion = [(AAVersionUpdater *)self _latestVersion];
  LOBYTE(currentVersion) = currentVersion < [_latestVersion unsignedIntValue];

  return currentVersion;
}

- (id)_latestVersion
{
  orderedVersions = [objc_opt_class() orderedVersions];
  lastObject = [orderedVersions lastObject];

  return lastObject;
}

- (void)_performVersionUpdate:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"AAVersionUpdater.m" lineNumber:47 description:{@"%@ method signature has invalid return length", a3}];
}

@end