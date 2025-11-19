@interface NSManagedObjectModelReference
- (BOOL)resolve:(id *)a3;
- (NSManagedObjectModelReference)initWithEntityVersionHashes:(NSDictionary *)versionHash inBundle:(NSBundle *)bundle versionChecksum:(NSString *)versionChecksum;
- (NSManagedObjectModelReference)initWithFileURL:(NSURL *)fileURL versionChecksum:(NSString *)versionChecksum;
- (NSManagedObjectModelReference)initWithModel:(NSManagedObjectModel *)model versionChecksum:(NSString *)versionChecksum;
- (NSManagedObjectModelReference)initWithName:(NSString *)modelName inBundle:(NSBundle *)bundle versionChecksum:(NSString *)versionChecksum;
- (void)dealloc;
@end

@implementation NSManagedObjectModelReference

- (NSManagedObjectModelReference)initWithFileURL:(NSURL *)fileURL versionChecksum:(NSString *)versionChecksum
{
  v8.receiver = self;
  v8.super_class = NSManagedObjectModelReference;
  v6 = [(NSManagedObjectModelReference *)&v8 init];
  if (v6)
  {
    v6->_fileURL = [(NSURL *)fileURL copy];
    v6->_versionChecksum = [(NSString *)versionChecksum copy];
  }

  return v6;
}

- (NSManagedObjectModelReference)initWithEntityVersionHashes:(NSDictionary *)versionHash inBundle:(NSBundle *)bundle versionChecksum:(NSString *)versionChecksum
{
  v11.receiver = self;
  v11.super_class = NSManagedObjectModelReference;
  v8 = [(NSManagedObjectModelReference *)&v11 init];
  if (v8)
  {
    v8->_entityVersionHashes = [(NSDictionary *)versionHash copy];
    if (bundle)
    {
      v9 = bundle;
    }

    else
    {
      v9 = [MEMORY[0x1E696AAE8] mainBundle];
    }

    v8->_bundle = v9;
    v8->_versionChecksum = [(NSString *)versionChecksum copy];
  }

  return v8;
}

- (NSManagedObjectModelReference)initWithName:(NSString *)modelName inBundle:(NSBundle *)bundle versionChecksum:(NSString *)versionChecksum
{
  v11.receiver = self;
  v11.super_class = NSManagedObjectModelReference;
  v8 = [(NSManagedObjectModelReference *)&v11 init];
  if (v8)
  {
    v8->_modelName = [(NSString *)modelName copy];
    if (bundle)
    {
      v9 = bundle;
    }

    else
    {
      v9 = [MEMORY[0x1E696AAE8] mainBundle];
    }

    v8->_bundle = v9;
    v8->_versionChecksum = [(NSString *)versionChecksum copy];
  }

  return v8;
}

- (NSManagedObjectModelReference)initWithModel:(NSManagedObjectModel *)model versionChecksum:(NSString *)versionChecksum
{
  v8.receiver = self;
  v8.super_class = NSManagedObjectModelReference;
  v6 = [(NSManagedObjectModelReference *)&v8 init];
  if (v6)
  {
    v6->_model = model;
    v6->_versionChecksum = [(NSString *)versionChecksum copy];
  }

  return v6;
}

- (void)dealloc
{
  self->_fileURL = 0;

  self->_versionChecksum = 0;
  self->_bundle = 0;

  self->_modelName = 0;
  self->_entityVersionHashes = 0;

  self->_model = 0;
  self->_resolvedModel = 0;
  v3.receiver = self;
  v3.super_class = NSManagedObjectModelReference;
  [(NSManagedObjectModelReference *)&v3 dealloc];
}

- (BOOL)resolve:(id *)a3
{
  v50 = *MEMORY[0x1E69E9840];
  if (self->_resolvedModel)
  {
    result = 1;
    goto LABEL_14;
  }

  v42 = 0;
  model = self->_model;
  if (model)
  {
    bundle = model;
LABEL_7:
    self->_resolvedModel = bundle;
    goto LABEL_8;
  }

  if (self->_fileURL)
  {
    bundle = [[NSManagedObjectModel alloc] initWithContentsOfURL:self->_fileURL];
    goto LABEL_7;
  }

  bundle = self->_bundle;
  if (!bundle)
  {
LABEL_8:
    [(NSManagedObjectModel *)bundle _setIsEditable:0];
    if (![(NSString *)[(NSManagedObjectModel *)self->_resolvedModel versionChecksum] isEqualToString:self->_versionChecksum])
    {
      v42 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134100 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"The version hash (and associated hashes) are incompatible with the current Core Data version.", @"reason", -[NSManagedObjectModel versionHash](self->_resolvedModel, "versionHash"), @"versionHash", self->_versionChecksum, @"checksum", 0)}];

      self->_resolvedModel = 0;
    }

    goto LABEL_10;
  }

  modelName = self->_modelName;
  if (!modelName)
  {
    if (!self->_entityVersionHashes)
    {
      bundle = 0;
      goto LABEL_8;
    }

    v46 = bundle;
    v20 = +[NSManagedObjectModel _modelPathsFromBundles:](NSManagedObjectModel, [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
LABEL_30:
      v24 = 0;
      while (1)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v33 + 1) + 8 * v24)];
        v26 = [NSManagedObjectModel versionsHashesForModelAtURL:v25 error:&v42];
        if (v42)
        {
          break;
        }

        if ([v26 isEqualToDictionary:self->_entityVersionHashes])
        {
          resolvedModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:v25];
          self->_resolvedModel = resolvedModel;
          goto LABEL_44;
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v22)
          {
            goto LABEL_30;
          }

          break;
        }
      }
    }

    resolvedModel = self->_resolvedModel;
LABEL_44:
    if (resolvedModel)
    {
      v13 = v42;
      goto LABEL_49;
    }

    v28 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A250];
    v43 = *MEMORY[0x1E696A578];
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A model with version hashes %@ could not be found in the bundle at %@.", self->_entityVersionHashes, -[NSBundle bundlePath](self->_bundle, "bundlePath")];
    v30 = MEMORY[0x1E695DF20];
    v31 = &v44;
    v32 = &v43;
    goto LABEL_47;
  }

  v11 = [(NSManagedObjectModel *)bundle URLForResource:modelName withExtension:@"momd"];
  v41 = 0;
  v12 = [NSManagedObjectModel checksumsForVersionedModelAtURL:v11 error:&v41];
  v13 = v41;
  if (!v41)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = [(NSDictionary *)v12 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          if ([-[NSDictionary objectForKey:](v12 objectForKey:{v18), "isEqualToString:", self->_versionChecksum}])
          {
            v19 = -[NSManagedObjectModel initWithContentsOfURL:]([NSManagedObjectModel alloc], "initWithContentsOfURL:", [objc_msgSend(v11 URLByAppendingPathComponent:{v18), "URLByAppendingPathExtension:", @"mom"}]);
            self->_resolvedModel = v19;
            goto LABEL_39;
          }
        }

        v15 = [(NSDictionary *)v12 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v19 = self->_resolvedModel;
LABEL_39:
    if (v19)
    {
      v13 = 0;
      goto LABEL_49;
    }

    v28 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A250];
    v47 = *MEMORY[0x1E696A578];
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A model with version checksum %@ could not be found in the bundle at %@.", self->_versionChecksum, -[NSBundle bundlePath](self->_bundle, "bundlePath")];
    v30 = MEMORY[0x1E695DF20];
    v31 = &v48;
    v32 = &v47;
LABEL_47:
    v13 = [v28 errorWithDomain:v29 code:134504 userInfo:{objc_msgSend(v30, "dictionaryWithObjects:forKeys:count:", v31, v32, 1)}];
  }

  v42 = v13;
LABEL_49:
  if (!v13)
  {
    bundle = self->_resolvedModel;
    goto LABEL_8;
  }

LABEL_10:
  v8 = v42;
  if (a3 && v42)
  {
    *a3 = v42;
    v8 = v42;
  }

  result = v8 == 0;
LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end