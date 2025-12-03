@interface VCSessionMediaTypeSettings
+ (id)serializationClasses;
+ (id)settingsWithMediaType:(unsigned int)type;
- (NSSet)streamGroupIDs;
- (VCSessionMediaTypeSettings)initWithCoder:(id)coder;
- (VCSessionMediaTypeSettings)initWithMediaType:(unsigned int)type;
- (void)addStreamGroupID:(unsigned int)d;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VCSessionMediaTypeSettings

- (VCSessionMediaTypeSettings)initWithMediaType:(unsigned int)type
{
  v3 = *&type;
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCSessionMediaTypeSettings;
  v4 = [(VCObject *)&v7 init];
  if (v4)
  {
    -[VCObject setLogPrefix:](v4, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"mediaType=%@ ", VCSessionMediaType_Name(v3)]);
    v4->_mediaType = v3;
    v4->_mediaState = 0;
    v5 = objc_opt_new();
    v4->_streamGroupIDs = v5;
    if (!v5)
    {
      [VCSessionMediaTypeSettings initWithMediaType:v4];
      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionMediaTypeSettings;
  [(VCObject *)&v3 dealloc];
}

+ (id)settingsWithMediaType:(unsigned int)type
{
  v3 = [[VCSessionMediaTypeSettings alloc] initWithMediaType:*&type];

  return v3;
}

- (void)addStreamGroupID:(unsigned int)d
{
  v3 = *&d;
  [(VCObject *)self lock];
  -[NSMutableSet addObject:](self->_streamGroupIDs, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);

  [(VCObject *)self unlock];
}

- (NSSet)streamGroupIDs
{
  [(VCObject *)self lock];
  v3 = [MEMORY[0x1E695DFD8] setWithSet:self->_streamGroupIDs];
  [(VCObject *)self unlock];
  return v3;
}

+ (id)serializationClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:self->_mediaType forKey:@"type"];
  [coder encodeInt32:self->_mediaState forKey:@"state"];
  streamGroupIDs = self->_streamGroupIDs;

  [coder encodeObject:streamGroupIDs forKey:@"streamGroupIDs"];
}

- (VCSessionMediaTypeSettings)initWithCoder:(id)coder
{
  v4 = -[VCSessionMediaTypeSettings initWithMediaType:](self, "initWithMediaType:", [coder decodeInt32ForKey:@"type"]);
  if (v4)
  {
    v4->_mediaState = [coder decodeInt32ForKey:@"state"];
    -[NSMutableSet unionSet:](v4->_streamGroupIDs, "unionSet:", [coder decodeObjectForKey:@"streamGroupIDs"]);
  }

  return v4;
}

- (void)initWithMediaType:(void *)a1 .cold.1(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v10 = 136315650;
    v11 = v3;
    OUTLINED_FUNCTION_0_18();
    v5 = " [%s] %s:%d Failed to allocate the streamGroupID set";
    v6 = v4;
    v7 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, v5, &v10, v7);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v8;
      OUTLINED_FUNCTION_0_18();
      v12 = 2112;
      v13 = v2;
      v14 = 2048;
      v15 = a1;
      v5 = " [%s] %s:%d %@(%p) Failed to allocate the streamGroupID set";
      v6 = v9;
      v7 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
}

@end