@interface ATXLinkActionContainer
- (ATXLinkActionContainer)initWithBundleId:(id)a3 action:(id)a4;
- (ATXLinkActionContainer)initWithCoder:(id)a3;
- (ATXLinkActionContainer)initWithProto:(id)a3;
- (ATXLinkActionContainer)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXLinkActionContainer:(id)a3;
- (NSString)description;
- (id)_initWithBundleId:(id)a3 action:(id)a4 image:(id)a5;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)proto;
@end

@implementation ATXLinkActionContainer

- (ATXLinkActionContainer)initWithBundleId:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ATXLinkActionContainer;
  v8 = [(ATXLinkActionContainer *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleId = v8->_bundleId;
    v8->_bundleId = v9;

    v11 = [v7 copy];
    action = v8->_action;
    v8->_action = v11;
  }

  return v8;
}

- (id)_initWithBundleId:(id)a3 action:(id)a4 image:(id)a5
{
  v8 = a5;
  v9 = [(ATXLinkActionContainer *)self initWithBundleId:a3 action:a4];
  if (v9)
  {
    v10 = [v8 copy];
    image = v9->_image;
    v9->_image = v10;
  }

  return v9;
}

- (ATXLinkActionContainer)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = objc_autoreleasePoolPush();
      v7 = MEMORY[0x1E696ACD0];
      v8 = objc_opt_class();
      v9 = [v5 action];
      v17 = 0;
      v10 = [v7 unarchivedObjectOfClass:v8 fromData:v9 error:&v17];
      v11 = v17;

      objc_autoreleasePoolPop(v6);
      if (v11)
      {
        v12 = __atxlog_handle_default();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [ATXLinkActionContainer initWithProto:];
        }

        v13 = 0;
      }

      else
      {
        v14 = [v5 bundleId];
        v15 = [(ATXLinkActionContainer *)self initWithBundleId:v14 action:v10];

        self = v15;
        v13 = self;
      }
    }

    else
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXLinkActionContainer *)self initWithProto:v5];
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(ATXLinkActionContainer *)self bundleId];
  [v3 setBundleId:v4];

  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E696ACC8];
  v7 = [(ATXLinkActionContainer *)self action];
  v13 = 0;
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v13];
  v9 = v13;

  objc_autoreleasePoolPop(v5);
  [v3 setAction:v8];

  if (v9)
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXLinkActionContainer proto];
    }

    v11 = 0;
  }

  else
  {
    v11 = v3;
  }

  return v11;
}

- (id)encodeAsProto
{
  v2 = [(ATXLinkActionContainer *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXLinkActionContainer)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBLinkAction alloc] initWithData:v4];

    self = [(ATXLinkActionContainer *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXLinkActionContainer *)self bundleId];
  [v4 encodeObject:v5 forKey:@"codingKeyForBundleId"];

  v6 = [(ATXLinkActionContainer *)self action];
  [v4 encodeObject:v6 forKey:@"codingKeyForLinkAction"];

  v7 = [(ATXLinkActionContainer *)self image];
  [v4 encodeObject:v7 forKey:@"codingKeyForLinkImage"];
}

- (ATXLinkActionContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForBundleId" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.LinkActionContainer" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x1E69C5D78];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_default();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"codingKeyForLinkAction" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.LinkActionContainer" errorCode:-1 logHandle:v11];

    if (v12)
    {
      v13 = MEMORY[0x1E69C5D78];
      v14 = objc_opt_class();
      v15 = __atxlog_handle_default();
      v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"codingKeyForLinkImage" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.LinkActionContainer" errorCode:-1 logHandle:v15];

      self = [(ATXLinkActionContainer *)self _initWithBundleId:v8 action:v12 image:v16];
      v17 = self;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(ATXLinkActionContainer *)self bundleId];
  v4 = [v3 hash];

  v5 = [(ATXLinkActionContainer *)self image];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(ATXLinkActionContainer *)self action];
  v8 = [v7 hash] - v6 + 32 * v6;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXLinkActionContainer *)self isEqualToATXLinkActionContainer:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXLinkActionContainer:(id)a3
{
  v4 = a3;
  v5 = self->_bundleId;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_action;
  v10 = v9;
  if (v9 == v4[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(LNAction *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(ATXLinkActionContainer *)self bundleId];
  v5 = [(ATXLinkActionContainer *)self action];
  v6 = [v5 identifier];
  v7 = [v3 initWithFormat:@"ATXLinkActionContainer - bundleId: %@, actionId: %@", v4, v6];

  return v7;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBLinkAction proto", &v5, 0xCu);
}

- (void)initWithProto:.cold.2()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_4(&dword_1BF549000, v2, v3, "%@: Unable to decode data from serialized Link action message: %@", v4, v5, v6, v7, v8);
}

- (void)proto
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_4(&dword_1BF549000, v2, v3, "%@: Unable to serialize LNAction: %@", v4, v5, v6, v7, v8);
}

@end