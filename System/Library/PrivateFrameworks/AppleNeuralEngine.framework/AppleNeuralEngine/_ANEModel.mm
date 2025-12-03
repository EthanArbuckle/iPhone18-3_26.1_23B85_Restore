@interface _ANEModel
+ (id)correctFileURLFormat:(id)format;
+ (id)modelAtURL:(id)l key:(id)key modelAttributes:(id)attributes;
+ (id)modelAtURL:(id)l key:(id)key mpsConstants:(id)constants;
+ (id)modelAtURLWithCacheURLIdentifier:(id)identifier key:(id)key cacheURLIdentifier:(id)lIdentifier;
+ (id)modelAtURLWithSourceURL:(id)l sourceURL:(id)rL key:(id)key cacheURLIdentifier:(id)identifier;
+ (id)modelAtURLWithSourceURL:(id)l sourceURL:(id)rL key:(id)key identifierSource:(int64_t)source cacheURLIdentifier:(id)identifier;
+ (id)modelAtURLWithSourceURL:(id)l sourceURL:(id)rL key:(id)key identifierSource:(int64_t)source cacheURLIdentifier:(id)identifier UUID:(id)d;
+ (id)modelWithCacheURLIdentifier:(id)identifier;
+ (id)modelWithCacheURLIdentifier:(id)identifier UUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToModel:(id)model;
- (_ANEModel)initWithCoder:(id)coder;
- (_ANEModel)initWithModelAtURL:(id)l key:(id)key identifierSource:(int64_t)source cacheURLIdentifier:(id)identifier modelAttributes:(id)attributes standardizeURL:(BOOL)rL;
- (_ANEModel)initWithModelAtURL:(id)l sourceURL:(id)rL UUID:(id)d key:(id)key identifierSource:(int64_t)source cacheURLIdentifier:(id)identifier modelAttributes:(id)attributes standardizeURL:(BOOL)self0 string_id:(unint64_t)self1 generateNewStringId:(BOOL)self2;
- (_ANEModel)initWithModelAtURL:(id)l sourceURL:(id)rL UUID:(id)d key:(id)key identifierSource:(int64_t)source cacheURLIdentifier:(id)identifier modelAttributes:(id)attributes standardizeURL:(BOOL)self0 string_id:(unint64_t)self1 generateNewStringId:(BOOL)self2 mpsConstants:(id)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)procedureInfoForProcedureIndex:(unsigned int)index;
- (id)shallowCopy;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)resetOnUnload;
- (void)setCacheURLIdentifier:(id)identifier;
- (void)updateModelAttributes:(id)attributes state:(unint64_t)state;
@end

@implementation _ANEModel

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  modelURL = [(_ANEModel *)self modelURL];
  v7 = [v3 stringWithFormat:@"%@: { modelURL=%@ : ", v5, modelURL];

  v8 = MEMORY[0x1E696AEC0];
  sourceURL = [(_ANEModel *)self sourceURL];
  v10 = [v8 stringWithFormat:@"sourceURL=%@ : ", sourceURL];
  v11 = [v7 stringByAppendingString:v10];

  v12 = MEMORY[0x1E696AEC0];
  uUID = [(_ANEModel *)self UUID];
  v14 = [v12 stringWithFormat:@"UUID=%@ : ", uUID];
  v15 = [v11 stringByAppendingString:v14];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(_ANEModel *)self key];
  v18 = [v16 stringWithFormat:@"key=%@ : ", v17];
  v19 = [v15 stringByAppendingString:v18];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifierSource=%u : ", -[_ANEModel identifierSource](self, "identifierSource")];
  v21 = [v19 stringByAppendingString:v20];

  v22 = MEMORY[0x1E696AEC0];
  getCacheURLIdentifier = [(_ANEModel *)self getCacheURLIdentifier];
  v24 = [v22 stringWithFormat:@"cacheURLIdentifier=%@ : ", getCacheURLIdentifier];
  v25 = [v21 stringByAppendingString:v24];

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"string_id=0x%08llx : ", -[_ANEModel string_id](self, "string_id")];
  v27 = [v25 stringByAppendingString:v26];

  v28 = MEMORY[0x1E696AEC0];
  program = [(_ANEModel *)self program];
  v30 = [v28 stringWithFormat:@"program=%@ : ", program];
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
  modelAttributes = [(_ANEModel *)self modelAttributes];
  v42 = [v40 stringWithFormat:@"attr=%@ : ", modelAttributes];
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

- (_ANEModel)initWithModelAtURL:(id)l sourceURL:(id)rL UUID:(id)d key:(id)key identifierSource:(int64_t)source cacheURLIdentifier:(id)identifier modelAttributes:(id)attributes standardizeURL:(BOOL)self0 string_id:(unint64_t)self1 generateNewStringId:(BOOL)self2 mpsConstants:(id)self3
{
  lCopy = l;
  rLCopy = rL;
  dCopy = d;
  keyCopy = key;
  identifierCopy = identifier;
  attributesCopy = attributes;
  constantsCopy = constants;
  if ([identifierCopy containsString:@".."])
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANEModel initWithModelAtURL:sourceURL:UUID:key:identifierSource:cacheURLIdentifier:modelAttributes:standardizeURL:string_id:generateNewStringId:mpsConstants:];
    }

LABEL_12:

    selfCopy = 0;
    goto LABEL_13;
  }

  if (source == 3 && !identifierCopy)
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANEModel initWithModelAtURL:a2 sourceURL:? UUID:? key:? identifierSource:? cacheURLIdentifier:? modelAttributes:? standardizeURL:? string_id:? generateNewStringId:? mpsConstants:?];
    }

    goto LABEL_12;
  }

  if (!rLCopy && source == 2)
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
    if (uRL)
    {
      uRLByStandardizingPath = [lCopy URLByStandardizingPath];
      modelURL = v28->_modelURL;
      v28->_modelURL = uRLByStandardizingPath;

      uRLByStandardizingPath2 = [rLCopy URLByStandardizingPath];
    }

    else
    {
      objc_storeStrong(&v27->_modelURL, l);
      uRLByStandardizingPath2 = rLCopy;
    }

    sourceURL = v28->_sourceURL;
    v28->_sourceURL = uRLByStandardizingPath2;

    v33 = [keyCopy copy];
    key = v28->_key;
    v28->_key = v33;

    v28->_identifierSource = source;
    v35 = [identifierCopy copy];
    cacheURLIdentifier = v28->_cacheURLIdentifier;
    v28->_cacheURLIdentifier = v35;

    objc_storeStrong(&v28->_modelAttributes, attributes);
    v28->_state = 1;
    objc_storeStrong(&v28->_UUID, d);
    objc_storeStrong(&v28->_mpsConstants, constants);
    if (id)
    {
      path = [lCopy path];
      [path UTF8String];
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
      v28->_string_id = string_id;
    }
  }

  self = v28;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (_ANEModel)initWithModelAtURL:(id)l sourceURL:(id)rL UUID:(id)d key:(id)key identifierSource:(int64_t)source cacheURLIdentifier:(id)identifier modelAttributes:(id)attributes standardizeURL:(BOOL)self0 string_id:(unint64_t)self1 generateNewStringId:(BOOL)self2
{
  LOBYTE(v14) = id;
  LOBYTE(v13) = uRL;
  return [(_ANEModel *)self initWithModelAtURL:l sourceURL:rL UUID:d key:key identifierSource:source cacheURLIdentifier:identifier modelAttributes:attributes standardizeURL:v13 string_id:string_id generateNewStringId:v14 mpsConstants:0];
}

- (_ANEModel)initWithModelAtURL:(id)l key:(id)key identifierSource:(int64_t)source cacheURLIdentifier:(id)identifier modelAttributes:(id)attributes standardizeURL:(BOOL)rL
{
  v14 = MEMORY[0x1E696AFB0];
  attributesCopy = attributes;
  identifierCopy = identifier;
  keyCopy = key;
  lCopy = l;
  uUID = [v14 UUID];
  LOBYTE(v23) = 1;
  LOBYTE(v22) = rL;
  v20 = [(_ANEModel *)self initWithModelAtURL:lCopy sourceURL:0 UUID:uUID key:keyCopy identifierSource:source cacheURLIdentifier:identifierCopy modelAttributes:attributesCopy standardizeURL:v22 string_id:0 generateNewStringId:v23];

  return v20;
}

+ (id)modelAtURL:(id)l key:(id)key mpsConstants:(id)constants
{
  constantsCopy = constants;
  keyCopy = key;
  lCopy = l;
  v11 = [self alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  LOBYTE(v16) = 1;
  LOBYTE(v15) = 1;
  v13 = [v11 initWithModelAtURL:lCopy sourceURL:0 UUID:uUID key:keyCopy identifierSource:1 cacheURLIdentifier:0 modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v15 string_id:0 generateNewStringId:v16 mpsConstants:constantsCopy];

  return v13;
}

+ (id)modelAtURL:(id)l key:(id)key modelAttributes:(id)attributes
{
  attributesCopy = attributes;
  keyCopy = key;
  v10 = [_ANEModel correctFileURLFormat:l];
  v11 = [[self alloc] initWithModelAtURL:v10 key:keyCopy identifierSource:1 cacheURLIdentifier:0 modelAttributes:attributesCopy standardizeURL:1];

  return v11;
}

+ (id)modelWithCacheURLIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithModelIdentifier:identifierCopy];

  return v5;
}

+ (id)modelWithCacheURLIdentifier:(id)identifier UUID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = [self alloc];
  LOBYTE(v12) = 1;
  LOBYTE(v11) = 0;
  v9 = [v8 initWithModelAtURL:0 sourceURL:0 UUID:dCopy key:0 identifierSource:3 cacheURLIdentifier:identifierCopy modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v11 string_id:0 generateNewStringId:v12];

  return v9;
}

+ (id)modelAtURLWithCacheURLIdentifier:(id)identifier key:(id)key cacheURLIdentifier:(id)lIdentifier
{
  lIdentifierCopy = lIdentifier;
  keyCopy = key;
  v10 = [_ANEModel correctFileURLFormat:identifier];
  v11 = [self alloc];
  v12 = [v11 initWithModelAtURL:v10 key:keyCopy identifierSource:3 cacheURLIdentifier:lIdentifierCopy modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:1];

  return v12;
}

- (void)setCacheURLIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (identifierCopy)
  {
    v7 = [identifierCopy containsString:@".."];
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

+ (id)modelAtURLWithSourceURL:(id)l sourceURL:(id)rL key:(id)key cacheURLIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyCopy = key;
  rLCopy = rL;
  v13 = [_ANEModel correctFileURLFormat:l];
  v14 = [self alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  LOBYTE(v19) = 1;
  LOBYTE(v18) = 1;
  v16 = [v14 initWithModelAtURL:v13 sourceURL:rLCopy UUID:uUID key:keyCopy identifierSource:1 cacheURLIdentifier:identifierCopy modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v18 string_id:0 generateNewStringId:v19];

  return v16;
}

+ (id)modelAtURLWithSourceURL:(id)l sourceURL:(id)rL key:(id)key identifierSource:(int64_t)source cacheURLIdentifier:(id)identifier
{
  v11 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  keyCopy = key;
  rLCopy = rL;
  lCopy = l;
  uUID = [v11 UUID];
  v17 = [_ANEModel modelAtURLWithSourceURL:lCopy sourceURL:rLCopy key:keyCopy identifierSource:source cacheURLIdentifier:identifierCopy UUID:uUID];

  return v17;
}

+ (id)modelAtURLWithSourceURL:(id)l sourceURL:(id)rL key:(id)key identifierSource:(int64_t)source cacheURLIdentifier:(id)identifier UUID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  keyCopy = key;
  rLCopy = rL;
  v18 = [_ANEModel correctFileURLFormat:l];
  v19 = [self alloc];
  LOBYTE(v23) = 1;
  LOBYTE(v22) = 1;
  v20 = [v19 initWithModelAtURL:v18 sourceURL:rLCopy UUID:dCopy key:keyCopy identifierSource:source cacheURLIdentifier:identifierCopy modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v22 string_id:0 generateNewStringId:v23 mpsConstants:0];

  return v20;
}

+ (id)correctFileURLFormat:(id)format
{
  v18 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  v5 = formatCopy;
  if (formatCopy)
  {
    scheme = [formatCopy scheme];

    if (scheme)
    {
      v7 = v5;
      if ([v5 isFileURL])
      {
        goto LABEL_14;
      }

      path = +[_ANELog common];
      if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
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
      path = [v5 path];
      v7 = [v11 fileURLWithPath:path];
    }
  }

  else
  {
    path = +[_ANELog common];
    if (os_log_type_enabled(path, OS_LOG_TYPE_DEBUG))
    {
      [_ANEModel correctFileURLFormat:path];
    }

    v7 = 0;
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)updateModelAttributes:(id)attributes state:(unint64_t)state
{
  attributesCopy = attributes;
  os_unfair_lock_lock(&self->_l);
  [(_ANEModel *)self setModelAttributes:attributesCopy];

  [(_ANEModel *)self setState:state];

  os_unfair_lock_unlock(&self->_l);
}

- (id)procedureInfoForProcedureIndex:(unsigned int)index
{
  os_unfair_lock_lock(&self->_l);
  modelAttributes = [(_ANEModel *)self modelAttributes];
  v6 = [modelAttributes copy];

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
  indexCopy = index;
  v17[4] = &v19;
  [v14 enumerateObjectsUsingBlock:v17];
  v15 = [v20[5] copy];
  _Block_object_dispose(&v19, 8);

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  modelURL = [(_ANEModel *)self modelURL];
  [coderCopy encodeObject:modelURL forKey:@"url"];

  sourceURL = [(_ANEModel *)self sourceURL];
  [coderCopy encodeObject:sourceURL forKey:@"sourceurl"];

  uUID = [(_ANEModel *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"uuid"];

  v8 = [(_ANEModel *)self key];
  [coderCopy encodeObject:v8 forKey:@"key"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[_ANEModel identifierSource](self, "identifierSource")}];
  [coderCopy encodeObject:v9 forKey:@"identifierSource"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_ANEModel string_id](self, "string_id")}];
  [coderCopy encodeObject:v10 forKey:@"string_id"];

  cacheURLIdentifier = [(_ANEModel *)self cacheURLIdentifier];
  [coderCopy encodeObject:cacheURLIdentifier forKey:@"identifier"];

  mpsConstants = [(_ANEModel *)self mpsConstants];
  [coderCopy encodeObject:mpsConstants forKey:@"mpsConstants"];

  v13 = +[_ANELog common];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ANEModel encodeWithCoder:];
  }
}

- (_ANEModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceurl"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifierSource"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string_id"];
  unsignedLongLongValue = [v7 unsignedLongLongValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"mpsConstants"];

  v16 = +[_ANELog common];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_ANEModel initWithCoder:];
  }

  LOBYTE(v20) = 0;
  LOBYTE(v19) = 0;
  v17 = [(_ANEModel *)self initWithModelAtURL:v24 sourceURL:v22 UUID:v21 key:v4 identifierSource:integerValue cacheURLIdentifier:v9 modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v19 string_id:unsignedLongLongValue generateNewStringId:v20 mpsConstants:v15];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = +[_ANELog common];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_ANEModel copyWithZone:a2];
  }

  cacheURLIdentifier = [(_ANEModel *)self cacheURLIdentifier];

  v7 = objc_opt_class();
  if (cacheURLIdentifier)
  {
    cacheURLIdentifier2 = [(_ANEModel *)self cacheURLIdentifier];
    v9 = [v7 modelWithCacheURLIdentifier:cacheURLIdentifier2];
  }

  else
  {
    cacheURLIdentifier2 = [(_ANEModel *)self modelURL];
    v10 = [(_ANEModel *)self key];
    modelAttributes = [(_ANEModel *)self modelAttributes];
    v9 = [v7 modelAtURL:cacheURLIdentifier2 key:v10 modelAttributes:modelAttributes];
  }

  return v9;
}

- (BOOL)isEqualToModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    goto LABEL_30;
  }

  cacheURLIdentifier = [(_ANEModel *)self cacheURLIdentifier];
  if (cacheURLIdentifier)
  {
    v6 = 0;
  }

  else
  {
    cacheURLIdentifier2 = [modelCopy cacheURLIdentifier];
    v6 = cacheURLIdentifier2 == 0;
  }

  modelURL = [(_ANEModel *)self modelURL];
  if (modelURL)
  {
    v9 = 0;
  }

  else
  {
    modelURL2 = [modelCopy modelURL];
    v9 = modelURL2 == 0;
  }

  sourceURL = [(_ANEModel *)self sourceURL];
  if (sourceURL)
  {
    v12 = 0;
  }

  else
  {
    sourceURL2 = [modelCopy sourceURL];
    v12 = sourceURL2 == 0;
  }

  v14 = [(_ANEModel *)self key];
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v16 = [modelCopy key];
    v15 = v16 == 0;
  }

  identifierSource = [(_ANEModel *)self identifierSource];
  identifierSource2 = [modelCopy identifierSource];
  modelURL3 = [(_ANEModel *)self modelURL];
  if (modelURL3)
  {
    v20 = modelURL3;
    modelURL4 = [modelCopy modelURL];

    if (modelURL4)
    {
      modelURL5 = [(_ANEModel *)self modelURL];
      modelURL6 = [modelCopy modelURL];
      v9 = [modelURL5 isEqual:modelURL6];
    }
  }

  sourceURL3 = [(_ANEModel *)self sourceURL];
  if (sourceURL3)
  {
    v25 = sourceURL3;
    sourceURL4 = [modelCopy sourceURL];

    if (sourceURL4)
    {
      sourceURL5 = [(_ANEModel *)self sourceURL];
      sourceURL6 = [modelCopy sourceURL];
      v12 = [sourceURL5 isEqual:sourceURL6];
    }
  }

  cacheURLIdentifier3 = [(_ANEModel *)self cacheURLIdentifier];
  if (cacheURLIdentifier3)
  {
    v30 = cacheURLIdentifier3;
    cacheURLIdentifier4 = [modelCopy cacheURLIdentifier];

    if (cacheURLIdentifier4)
    {
      cacheURLIdentifier5 = [(_ANEModel *)self cacheURLIdentifier];
      cacheURLIdentifier6 = [modelCopy cacheURLIdentifier];
      v6 = [cacheURLIdentifier5 isEqualToString:cacheURLIdentifier6];
    }
  }

  v34 = [(_ANEModel *)self key];
  if (v34)
  {
    v35 = v34;
    v36 = [modelCopy key];

    if (v36)
    {
      v37 = [(_ANEModel *)self key];
      v38 = [modelCopy key];
      v15 = [v37 isEqualToString:v38];
    }
  }

  if ((v9 & v12 & v6) == 1)
  {
    if (identifierSource == identifierSource2)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ANEModel *)self isEqualToModel:v5];
  }

  return v6;
}

- (id)shallowCopy
{
  v3 = objc_alloc(objc_opt_class());
  modelURL = [(_ANEModel *)self modelURL];
  sourceURL = [(_ANEModel *)self sourceURL];
  uUID = [(_ANEModel *)self UUID];
  v7 = [(_ANEModel *)self key];
  identifierSource = [(_ANEModel *)self identifierSource];
  cacheURLIdentifier = [(_ANEModel *)self cacheURLIdentifier];
  string_id = [(_ANEModel *)self string_id];
  LOBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  v11 = [v3 initWithModelAtURL:modelURL sourceURL:sourceURL UUID:uUID key:v7 identifierSource:identifierSource cacheURLIdentifier:cacheURLIdentifier modelAttributes:MEMORY[0x1E695E0F8] standardizeURL:v13 string_id:string_id generateNewStringId:v14];

  return v11;
}

- (unint64_t)hash
{
  modelURL = [(_ANEModel *)self modelURL];
  v4 = [modelURL hash];
  sourceURL = [(_ANEModel *)self sourceURL];
  v6 = [sourceURL hash] ^ v4;
  v7 = [(_ANEModel *)self key];
  v8 = [v7 hash];
  cacheURLIdentifier = [(_ANEModel *)self cacheURLIdentifier];
  v10 = v8 ^ [cacheURLIdentifier hash];

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