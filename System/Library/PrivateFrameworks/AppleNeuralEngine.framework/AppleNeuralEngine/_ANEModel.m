@interface _ANEModel
+ (id)correctFileURLFormat:(id)a3;
+ (id)modelAtURL:(id)a3 key:(id)a4 modelAttributes:(id)a5;
+ (id)modelAtURL:(id)a3 key:(id)a4 mpsConstants:(id)a5;
+ (id)modelAtURLWithCacheURLIdentifier:(id)a3 key:(id)a4 cacheURLIdentifier:(id)a5;
+ (id)modelAtURLWithSourceURL:(id)a3 sourceURL:(id)a4 key:(id)a5 cacheURLIdentifier:(id)a6;
+ (id)modelAtURLWithSourceURL:(id)a3 sourceURL:(id)a4 key:(id)a5 identifierSource:(int64_t)a6 cacheURLIdentifier:(id)a7;
+ (id)modelAtURLWithSourceURL:(id)a3 sourceURL:(id)a4 key:(id)a5 identifierSource:(int64_t)a6 cacheURLIdentifier:(id)a7 UUID:(id)a8;
+ (id)modelWithCacheURLIdentifier:(id)a3;
+ (id)modelWithCacheURLIdentifier:(id)a3 UUID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToModel:(id)a3;
- (_ANEModel)initWithCoder:(id)a3;
- (_ANEModel)initWithModelAtURL:(id)a3 key:(id)a4 identifierSource:(int64_t)a5 cacheURLIdentifier:(id)a6 modelAttributes:(id)a7 standardizeURL:(BOOL)a8;
- (_ANEModel)initWithModelAtURL:(id)a3 sourceURL:(id)a4 UUID:(id)a5 key:(id)a6 identifierSource:(int64_t)a7 cacheURLIdentifier:(id)a8 modelAttributes:(id)a9 standardizeURL:(BOOL)a10 string_id:(unint64_t)a11 generateNewStringId:(BOOL)a12;
- (_ANEModel)initWithModelAtURL:(id)a3 sourceURL:(id)a4 UUID:(id)a5 key:(id)a6 identifierSource:(int64_t)a7 cacheURLIdentifier:(id)a8 modelAttributes:(id)a9 standardizeURL:(BOOL)a10 string_id:(unint64_t)a11 generateNewStringId:(BOOL)a12 mpsConstants:(id)a13;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)procedureInfoForProcedureIndex:(unsigned int)a3;
- (id)shallowCopy;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)resetOnUnload;
- (void)setCacheURLIdentifier:(id)a3;
- (void)updateModelAttributes:(id)a3 state:(unint64_t)a4;
@end

@implementation _ANEModel

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ANEModel *)self modelURL];
  v7 = [v3 stringWithFormat:@"%@: { modelURL=%@ : ", v5, v6];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(_ANEModel *)self sourceURL];
  v10 = [v8 stringWithFormat:@"sourceURL=%@ : ", v9];
  v11 = [v7 stringByAppendingString:v10];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(_ANEModel *)self UUID];
  v14 = [v12 stringWithFormat:@"UUID=%@ : ", v13];
  v15 = [v11 stringByAppendingString:v14];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(_ANEModel *)self key];
  v18 = [v16 stringWithFormat:@"key=%@ : ", v17];
  v19 = [v15 stringByAppendingString:v18];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifierSource=%u : ", -[_ANEModel identifierSource](self, "identifierSource")];
  v21 = [v19 stringByAppendingString:v20];

  v22 = MEMORY[0x1E696AEC0];
  v23 = [(_ANEModel *)self getCacheURLIdentifier];
  v24 = [v22 stringWithFormat:@"cacheURLIdentifier=%@ : ", v23];
  v25 = [v21 stringByAppendingString:v24];

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"string_id=0x%08llx : ", -[_ANEModel string_id](self, "string_id")];
  v27 = [v25 stringByAppendingString:v26];

  v28 = MEMORY[0x1E696AEC0];
  v29 = [(_ANEModel *)self program];
  v30 = [v28 stringWithFormat:@"program=%@ : ", v29];
  v31 = [v27 stringByAppendingString:v30];

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"state=%lu : ", -[_ANEModel state](self, "state")];
  v33 = [v31 stringByAppendingString:v32];

  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"programHandle=%llu : ", -[_ANEModel programHandle](self, "programHandle")];
  v35 = [v33 stringByAppendingString:v34];

  v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"intermediateBufferHandle=%llu : ", -[_ANEModel intermediateBufferHandle](self, "intermediateBufferHandle")];
  v37 = [v35 stringByAppendingString:v36];

  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queueDepth=%d : ", -[_ANEModel queueDepth](self, "queueDepth")];
  v39 = [v37 stringByAppendingString:v38];

  v40 = MEMORY[0x1E696AEC0];
  v41 = [(_ANEModel *)self modelAttributes];
  v42 = [v40 stringWithFormat:@"attr=%@ : ", v41];
  v43 = [v39 stringByAppendingString:v42];

  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"perfStatsMask=%u }", -[_ANEModel perfStatsMask](self, "perfStatsMask")];
  v45 = [v43 stringByAppendingString:v44];

  return v45;
}

- (void)dealloc
{
  self->_state = 5;
  string_id = self->_string_id;
  v5 = kdebug_trace_string();
  self->_string_id = v5;
  if (v5 == -1)
  {
    v6 = +[_ANELog common];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_ANEModel initWithModelAtURL:a2 sourceURL:? UUID:? key:? identifierSource:? cacheURLIdentifier:? modelAttributes:? standardizeURL:? string_id:? generateNewStringId:? mpsConstants:?];
    }
  }

  v7.receiver = self;
  v7.super_class = _ANEModel;
  [(_ANEModel *)&v7 dealloc];
}

- (void)resetOnUnload
{
  os_unfair_lock_lock(&self->_l);
  [(_ANEModel *)self setModelAttributes:MEMORY[0x1E695E0F8]];
  [(_ANEModel *)self setState:4];
  [(_ANEModel *)self setProgramHandle:0];
  [(_ANEModel *)self setIntermediateBufferHandle:0];
  [(_ANEModel *)self setQueueDepth:0];

  os_unfair_lock_unlock(&self->_l);
}

- (_ANEModel)initWithModelAtURL:(id)a3 sourceURL:(id)a4 UUID:(id)a5 key:(id)a6 identifierSource:(int64_t)a7 cacheURLIdentifier:(id)a8 modelAttributes:(id)a9 standardizeURL:(BOOL)a10 string_id:(unint64_t)a11 generateNewStringId:(BOOL)a12 mpsConstants:(id)a13
{
  v42 = a3;
  v20 = a4;
  v40 = a5;
  v41 = a6;
  v21 = a8;
  v22 = a9;
  v23 = a13;
  if ([v21 containsString:@".."])
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANEModel initWithModelAtURL:sourceURL:UUID:key:identifierSource:cacheURLIdentifier:modelAttributes:standardizeURL:string_id:generateNewStringId:mpsConstants:];
    }

LABEL_12:

    v25 = 0;
    goto LABEL_13;
  }

  if (a7 == 3 && !v21)
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANEModel initWithModelAtURL:a2 sourceURL:? UUID:? key:? identifierSource:? cacheURLIdentifier:? modelAttributes:? standardizeURL:? string_id:? generateNewStringId:? mpsConstants:?];
    }

    goto LABEL_12;
  }

  if (!v20 && a7 == 2)
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANEModel initWithModelAtURL:a2 sourceURL:? UUID:? key:? identifierSource:? cacheURLIdentifier:? modelAttributes:? standardizeURL:? string_id:? generateNewStringId:? mpsConstants:?];
    }

    goto LABEL_12;
  }

  v43.receiver = self;
  v43.super_class = _ANEModel;
  v27 = [(_ANEModel *)&v43 init];
  v28 = v27;
  if (v27)
  {
    v27->_l._os_unfair_lock_opaque = 0;
    if (a10)
    {
      v29 = [v42 URLByStandardizingPath];
      modelURL = v28->_modelURL;
      v28->_modelURL = v29;

      v31 = [v20 URLByStandardizingPath];
    }

    else
    {
      objc_storeStrong(&v27->_modelURL, a3);
      v31 = v20;
    }

    sourceURL = v28->_sourceURL;
    v28->_sourceURL = v31;

    v33 = [v41 copy];
    key = v28->_key;
    v28->_key = v33;

    v28->_identifierSource = a7;
    v35 = [v21 copy];
    cacheURLIdentifier = v28->_cacheURLIdentifier;
    v28->_cacheURLIdentifier = v35;

    objc_storeStrong(&v28->_modelAttributes, a9);
    v28->_state = 1;
    objc_storeStrong(&v28->_UUID, a5);
    objc_storeStrong(&v28->_mpsConstants, a13);
    if (a12)
    {
      v37 = [v42 path];
      [v37 UTF8String];
      v28->_string_id = kdebug_trace_string();

      if (v28->_string_id == -1)
      {
        v38 = +[_ANELog common];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          [_ANEModel initWithModelAtURL:a2 sourceURL:? UUID:? key:? identifierSource:? cacheURLIdentifier:? modelAttributes:? standardizeURL:? string_id:? generateNewStringId:? mpsConstants:?];
        }
      }
    }

    else
    {
      v28->_string_id = a11;
    }
  }

  self = v28;
  v25 = self;
LABEL_13:

  return v25;
}

- (_ANEModel)initWithModelAtURL:(id)a3 sourceURL:(id)a4 UUID:(id)a5 key:(id)a6 identifierSource:(int64_t)a7 cacheURLIdentifier:(id)a8 modelAttributes:(id)a9 standardizeURL:(BOOL)a10 string_id:(unint64_t)a11 generateNewStringId:(BOOL)a12
{
  LOBYTE(v14) = a12;
  LOBYTE(v13) = a10;
  return [(_ANEModel *)self initWithModelAtURL:a3 sourceURL:a4 UUID:a5 key:a6 identifierSource:a7 cacheURLIdentifier:a8 modelAttributes:a9 standardizeURL:v13 string_id:a11 generateNewStringId:v14 mpsConstants:0];
}

- (_ANEModel)initWithModelAtURL:(id)a3 key:(id)a4 identifierSource:(int64_t)a5 cacheURLIdentifier:(id)a6 modelAttributes:(id)a7 standardizeURL:(BOOL)a8
{
  v14 = MEMORY[0x1E696AFB0];
  v15 = a7;
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [v14 UUID];
  LOBYTE(v23) = 1;
  LOBYTE(v22) = a8;
  v20 = [(_ANEModel *)self initWithModelAtURL:v18 sourceURL:0 UUID:v19 key:v17 identifierSource:a5 cacheURLIdentifier:v16 modelAttributes:v15 standardizeURL:v22 string_id:0 generateNewStringId:v23];

  return v20;
}

+ (id)modelAtURL:(id)a3 key:(id)a4 mpsConstants:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [MEMORY[0x1E696AFB0] UUID];
  LOBYTE(v16) = 1;
  LOBYTE(v15) = 1;
  v13 = [v11 initWithModelAtURL:v10 sourceURL:0 UUID:v12 key:v9 identifierSource:1 cacheURLIdentifier:0 modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v15 string_id:0 generateNewStringId:v16 mpsConstants:v8];

  return v13;
}

+ (id)modelAtURL:(id)a3 key:(id)a4 modelAttributes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [_ANEModel correctFileURLFormat:a3];
  v11 = [[a1 alloc] initWithModelAtURL:v10 key:v9 identifierSource:1 cacheURLIdentifier:0 modelAttributes:v8 standardizeURL:1];

  return v11;
}

+ (id)modelWithCacheURLIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithModelIdentifier:v4];

  return v5;
}

+ (id)modelWithCacheURLIdentifier:(id)a3 UUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  LOBYTE(v12) = 1;
  LOBYTE(v11) = 0;
  v9 = [v8 initWithModelAtURL:0 sourceURL:0 UUID:v6 key:0 identifierSource:3 cacheURLIdentifier:v7 modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v11 string_id:0 generateNewStringId:v12];

  return v9;
}

+ (id)modelAtURLWithCacheURLIdentifier:(id)a3 key:(id)a4 cacheURLIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [_ANEModel correctFileURLFormat:a3];
  v11 = [a1 alloc];
  v12 = [v11 initWithModelAtURL:v10 key:v9 identifierSource:3 cacheURLIdentifier:v8 modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:1];

  return v12;
}

- (void)setCacheURLIdentifier:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 containsString:@".."];
    v8 = +[_ANELog common];
    cacheURLIdentifier = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_ANEModel initWithModelAtURL:sourceURL:UUID:key:identifierSource:cacheURLIdentifier:modelAttributes:standardizeURL:string_id:generateNewStringId:mpsConstants:];
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [_ANEModel setCacheURLIdentifier:];
      }

      if ([(NSString *)self->_cacheURLIdentifier isEqualToString:v6])
      {
        cacheURLIdentifier = +[_ANELog common];
        if (os_log_type_enabled(cacheURLIdentifier, OS_LOG_TYPE_DEBUG))
        {
          [_ANEModel setCacheURLIdentifier:a2];
        }
      }

      else
      {
        v10 = [v6 copy];
        cacheURLIdentifier = self->_cacheURLIdentifier;
        self->_cacheURLIdentifier = v10;
      }
    }
  }
}

+ (id)modelAtURLWithSourceURL:(id)a3 sourceURL:(id)a4 key:(id)a5 cacheURLIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [_ANEModel correctFileURLFormat:a3];
  v14 = [a1 alloc];
  v15 = [MEMORY[0x1E696AFB0] UUID];
  LOBYTE(v19) = 1;
  LOBYTE(v18) = 1;
  v16 = [v14 initWithModelAtURL:v13 sourceURL:v12 UUID:v15 key:v11 identifierSource:1 cacheURLIdentifier:v10 modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v18 string_id:0 generateNewStringId:v19];

  return v16;
}

+ (id)modelAtURLWithSourceURL:(id)a3 sourceURL:(id)a4 key:(id)a5 identifierSource:(int64_t)a6 cacheURLIdentifier:(id)a7
{
  v11 = MEMORY[0x1E696AFB0];
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v11 UUID];
  v17 = [_ANEModel modelAtURLWithSourceURL:v15 sourceURL:v14 key:v13 identifierSource:a6 cacheURLIdentifier:v12 UUID:v16];

  return v17;
}

+ (id)modelAtURLWithSourceURL:(id)a3 sourceURL:(id)a4 key:(id)a5 identifierSource:(int64_t)a6 cacheURLIdentifier:(id)a7 UUID:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = [_ANEModel correctFileURLFormat:a3];
  v19 = [a1 alloc];
  LOBYTE(v23) = 1;
  LOBYTE(v22) = 1;
  v20 = [v19 initWithModelAtURL:v18 sourceURL:v17 UUID:v14 key:v16 identifierSource:a6 cacheURLIdentifier:v15 modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v22 string_id:0 generateNewStringId:v23 mpsConstants:0];

  return v20;
}

+ (id)correctFileURLFormat:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 scheme];

    if (v6)
    {
      v7 = v5;
      if ([v5 isFileURL])
      {
        goto LABEL_14;
      }

      v8 = +[_ANELog common];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[_ANEModel correctFileURLFormat:];
      }

      v7 = v5;
    }

    else
    {
      v9 = +[_ANELog common];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        v14 = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_1AD246000, v9, OS_LOG_TYPE_INFO, "%@: modelURL=%@ doesn't have scheme", &v14, 0x16u);
      }

      v11 = MEMORY[0x1E695DFF8];
      v8 = [v5 path];
      v7 = [v11 fileURLWithPath:v8];
    }
  }

  else
  {
    v8 = +[_ANELog common];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_ANEModel correctFileURLFormat:v8];
    }

    v7 = 0;
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)updateModelAttributes:(id)a3 state:(unint64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_l);
  [(_ANEModel *)self setModelAttributes:v6];

  [(_ANEModel *)self setState:a4];

  os_unfair_lock_unlock(&self->_l);
}

- (id)procedureInfoForProcedureIndex:(unsigned int)a3
{
  os_unfair_lock_lock(&self->_l);
  v5 = [(_ANEModel *)self modelAttributes];
  v6 = [v5 copy];

  os_unfair_lock_unlock(&self->_l);
  v7 = [v6 objectForKeyedSubscript:kANEFModelDescriptionKey[0]];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 objectForKeyedSubscript:kANEFModelProceduresArrayKey[0]];
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44___ANEModel_procedureInfoForProcedureIndex___block_invoke;
  v17[3] = &unk_1E79BA1A0;
  v18 = a3;
  v17[4] = &v19;
  [v14 enumerateObjectsUsingBlock:v17];
  v15 = [v20[5] copy];
  _Block_object_dispose(&v19, 8);

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_ANEModel *)self modelURL];
  [v4 encodeObject:v5 forKey:@"url"];

  v6 = [(_ANEModel *)self sourceURL];
  [v4 encodeObject:v6 forKey:@"sourceurl"];

  v7 = [(_ANEModel *)self UUID];
  [v4 encodeObject:v7 forKey:@"uuid"];

  v8 = [(_ANEModel *)self key];
  [v4 encodeObject:v8 forKey:@"key"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[_ANEModel identifierSource](self, "identifierSource")}];
  [v4 encodeObject:v9 forKey:@"identifierSource"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_ANEModel string_id](self, "string_id")}];
  [v4 encodeObject:v10 forKey:@"string_id"];

  v11 = [(_ANEModel *)self cacheURLIdentifier];
  [v4 encodeObject:v11 forKey:@"identifier"];

  v12 = [(_ANEModel *)self mpsConstants];
  [v4 encodeObject:v12 forKey:@"mpsConstants"];

  v13 = +[_ANELog common];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ANEModel encodeWithCoder:];
  }
}

- (_ANEModel)initWithCoder:(id)a3
{
  v3 = a3;
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceurl"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifierSource"];
  v6 = [v5 integerValue];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"string_id"];
  v8 = [v7 unsignedLongLongValue];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"mpsConstants"];

  v16 = +[_ANELog common];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_ANEModel initWithCoder:];
  }

  LOBYTE(v20) = 0;
  LOBYTE(v19) = 0;
  v17 = [(_ANEModel *)self initWithModelAtURL:v24 sourceURL:v22 UUID:v21 key:v4 identifierSource:v6 cacheURLIdentifier:v9 modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v19 string_id:v8 generateNewStringId:v20 mpsConstants:v15];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = +[_ANELog common];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_ANEModel copyWithZone:a2];
  }

  v6 = [(_ANEModel *)self cacheURLIdentifier];

  v7 = objc_opt_class();
  if (v6)
  {
    v8 = [(_ANEModel *)self cacheURLIdentifier];
    v9 = [v7 modelWithCacheURLIdentifier:v8];
  }

  else
  {
    v8 = [(_ANEModel *)self modelURL];
    v10 = [(_ANEModel *)self key];
    v11 = [(_ANEModel *)self modelAttributes];
    v9 = [v7 modelAtURL:v8 key:v10 modelAttributes:v11];
  }

  return v9;
}

- (BOOL)isEqualToModel:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_30;
  }

  v5 = [(_ANEModel *)self cacheURLIdentifier];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 cacheURLIdentifier];
    v6 = v7 == 0;
  }

  v8 = [(_ANEModel *)self modelURL];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v4 modelURL];
    v9 = v10 == 0;
  }

  v11 = [(_ANEModel *)self sourceURL];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v4 sourceURL];
    v12 = v13 == 0;
  }

  v14 = [(_ANEModel *)self key];
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v16 = [v4 key];
    v15 = v16 == 0;
  }

  v17 = [(_ANEModel *)self identifierSource];
  v18 = [v4 identifierSource];
  v19 = [(_ANEModel *)self modelURL];
  if (v19)
  {
    v20 = v19;
    v21 = [v4 modelURL];

    if (v21)
    {
      v22 = [(_ANEModel *)self modelURL];
      v23 = [v4 modelURL];
      v9 = [v22 isEqual:v23];
    }
  }

  v24 = [(_ANEModel *)self sourceURL];
  if (v24)
  {
    v25 = v24;
    v26 = [v4 sourceURL];

    if (v26)
    {
      v27 = [(_ANEModel *)self sourceURL];
      v28 = [v4 sourceURL];
      v12 = [v27 isEqual:v28];
    }
  }

  v29 = [(_ANEModel *)self cacheURLIdentifier];
  if (v29)
  {
    v30 = v29;
    v31 = [v4 cacheURLIdentifier];

    if (v31)
    {
      v32 = [(_ANEModel *)self cacheURLIdentifier];
      v33 = [v4 cacheURLIdentifier];
      v6 = [v32 isEqualToString:v33];
    }
  }

  v34 = [(_ANEModel *)self key];
  if (v34)
  {
    v35 = v34;
    v36 = [v4 key];

    if (v36)
    {
      v37 = [(_ANEModel *)self key];
      v38 = [v4 key];
      v15 = [v37 isEqualToString:v38];
    }
  }

  if ((v9 & v12 & v6) == 1)
  {
    if (v17 == v18)
    {
      v39 = v15;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
LABEL_30:
    v39 = 0;
  }

  return v39;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ANEModel *)self isEqualToModel:v5];
  }

  return v6;
}

- (id)shallowCopy
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(_ANEModel *)self modelURL];
  v5 = [(_ANEModel *)self sourceURL];
  v6 = [(_ANEModel *)self UUID];
  v7 = [(_ANEModel *)self key];
  v8 = [(_ANEModel *)self identifierSource];
  v9 = [(_ANEModel *)self cacheURLIdentifier];
  v10 = [(_ANEModel *)self string_id];
  LOBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  v11 = [v3 initWithModelAtURL:v4 sourceURL:v5 UUID:v6 key:v7 identifierSource:v8 cacheURLIdentifier:v9 modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v13 string_id:v10 generateNewStringId:v14];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(_ANEModel *)self modelURL];
  v4 = [v3 hash];
  v5 = [(_ANEModel *)self sourceURL];
  v6 = [v5 hash] ^ v4;
  v7 = [(_ANEModel *)self key];
  v8 = [v7 hash];
  v9 = [(_ANEModel *)self cacheURLIdentifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (void)initWithModelAtURL:(const char *)a1 sourceURL:UUID:key:identifierSource:cacheURLIdentifier:modelAttributes:standardizeURL:string_id:generateNewStringId:mpsConstants:.cold.1(const char *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = *__error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithModelAtURL:(const char *)a1 sourceURL:UUID:key:identifierSource:cacheURLIdentifier:modelAttributes:standardizeURL:string_id:generateNewStringId:mpsConstants:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithModelAtURL:(const char *)a1 sourceURL:UUID:key:identifierSource:cacheURLIdentifier:modelAttributes:standardizeURL:string_id:generateNewStringId:mpsConstants:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithModelAtURL:sourceURL:UUID:key:identifierSource:cacheURLIdentifier:modelAttributes:standardizeURL:string_id:generateNewStringId:mpsConstants:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setCacheURLIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setCacheURLIdentifier:(const char *)a1 .cold.2(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)correctFileURLFormat:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(v1);
  v9 = [v0 scheme];
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)correctFileURLFormat:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "+[_ANEModel correctFileURLFormat:]";
  _os_log_debug_impl(&dword_1AD246000, log, OS_LOG_TYPE_DEBUG, "%s modelURL is nil", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v9 = *MEMORY[0x1E69E9840];
  v8 = NSStringFromSelector(v1);
  [v0 identifierSource];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)copyWithZone:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end