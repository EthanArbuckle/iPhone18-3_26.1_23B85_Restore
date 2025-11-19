@interface SFModelTaskSet
+ (id)modelInfoVersionWithAssetPath:(id)a3 taskHint:(int64_t)a4;
+ (id)modelInfoWithAssetPath:(id)a3 taskHint:(int64_t)a4;
+ (id)set;
+ (id)taskSetWithAssetPath:(id)a3;
- (BOOL)containsTask:(unint64_t)a3;
- (SFModelTaskSet)init;
- (SFModelTaskSet)initWithTasks:(id)a3;
@end

@implementation SFModelTaskSet

- (BOOL)containsTask:(unint64_t)a3
{
  tasks = self->_tasks;
  if (a3 > 0xA)
  {
    v4 = @"Invalid Task";
  }

  else
  {
    v4 = off_1E797BD60[a3];
  }

  v5 = v4;
  v6 = [(NSSet *)tasks containsObject:v5];

  return v6;
}

- (SFModelTaskSet)initWithTasks:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFModelTaskSet;
  v5 = [(SFModelTaskSet *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E695DFD8] set];
    }

    tasks = v5->_tasks;
    v5->_tasks = v6;
  }

  return v5;
}

- (SFModelTaskSet)init
{
  v6.receiver = self;
  v6.super_class = SFModelTaskSet;
  v2 = [(SFModelTaskSet *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] set];
    tasks = v2->_tasks;
    v2->_tasks = v3;
  }

  return v2;
}

+ (id)modelInfoVersionWithAssetPath:(id)a3 taskHint:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [SFModelTaskSet modelInfoWithAssetPath:v5 taskHint:a4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 version];
  }

  else
  {
    v9 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "+[SFModelTaskSet modelInfoVersionWithAssetPath:taskHint:]";
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_1AC5BC000, v9, OS_LOG_TYPE_ERROR, "%s Unable evaluate model at path: %@", &v12, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)modelInfoWithAssetPath:(id)a3 taskHint:(int64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [SFEntitledAssetManager jsonFilenameForAssetType:SFEntitledAssetTypeForTaskHint(a4)];
  v7 = [v5 stringByAppendingPathComponent:v6];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E699BA10]) initWithConfig:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315394;
        v16 = "+[SFModelTaskSet modelInfoWithAssetPath:taskHint:]";
        v17 = 2112;
        v18 = v7;
        _os_log_error_impl(&dword_1AC5BC000, v12, OS_LOG_TYPE_ERROR, "%s Unable to read file at path: %@", &v15, 0x16u);
      }
    }
  }

  else
  {
    v11 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "+[SFModelTaskSet modelInfoWithAssetPath:taskHint:]";
      _os_log_error_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_ERROR, "%s Path cannot be nil.", &v15, 0xCu);
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)taskSetWithAssetPath:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [SFModelTaskSet modelInfoWithAssetPath:v3 taskHint:1001];
  if (v4)
  {
    v5 = [SFModelTaskSet alloc];
    v6 = [v4 tasks];
    v7 = [(SFModelTaskSet *)v5 initWithTasks:v6];
  }

  else
  {
    v8 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[SFModelTaskSet taskSetWithAssetPath:]";
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_ERROR, "%s Unable evaluate model at path: %@", &v11, 0x16u);
    }

    v7 = +[SFModelTaskSet set];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)set
{
  v2 = objc_alloc_init(SFModelTaskSet);

  return v2;
}

@end