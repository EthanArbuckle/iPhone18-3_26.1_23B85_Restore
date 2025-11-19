@interface ARTechniqueSequentialGatherContext
- (ARTechniqueSequentialGatherContext)initWithCoder:(id)a3;
- (ARTechniqueSequentialGatherContext)initWithParentContext:(id)a3;
- (id)gatheredData;
- (void)addResultData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARTechniqueSequentialGatherContext

- (ARTechniqueSequentialGatherContext)initWithParentContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = ARTechniqueSequentialGatherContext;
  v3 = [(ARTechniqueGatherContext *)&v7 initWithParentContext:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    gatheredData = v3->_gatheredData;
    v3->_gatheredData = v4;
  }

  return v3;
}

- (id)gatheredData
{
  os_unfair_lock_lock(&self->super._stateLock);
  v3 = [(NSMutableArray *)self->_gatheredData copy];
  os_unfair_lock_unlock(&self->super._stateLock);

  return v3;
}

- (void)addResultData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._stateLock);
  [(NSMutableArray *)self->_gatheredData addObjectsFromArray:v4];
  os_unfair_lock_unlock(&self->super._stateLock);
}

- (ARTechniqueSequentialGatherContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARTechniqueSequentialGatherContext;
  v5 = [(ARTechniqueGatherContext *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"gatheredData"];
    gatheredData = v5->_gatheredData;
    v5->_gatheredData = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ARTechniqueSequentialGatherContext;
  [(ARTechniqueGatherContext *)&v24 encodeWithCoder:v4];
  v5 = self->_gatheredData;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = self;
    v8 = self->_gatheredData;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if ([v13 conformsToProtocol:&unk_1F426A800])
          {
            v14 = v6;
          }

          else
          {
            v14 = v7;
          }

          [v14 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v31 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      if (_ARLogDaemon_onceToken != -1)
      {
        [ARTechniqueSequentialGatherContext encodeWithCoder:];
      }

      v15 = _ARLogDaemon_logObj;
      if (os_log_type_enabled(_ARLogDaemon_logObj, OS_LOG_TYPE_DEBUG))
      {
        v16 = v15;
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543874;
        v26 = v18;
        v27 = 2048;
        v28 = v19;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: got insecure contexts to encode for daemon connection: %@", buf, 0x20u);
      }
    }

    v5 = v6;
  }

  [v4 encodeObject:v5 forKey:@"gatheredData"];
}

@end