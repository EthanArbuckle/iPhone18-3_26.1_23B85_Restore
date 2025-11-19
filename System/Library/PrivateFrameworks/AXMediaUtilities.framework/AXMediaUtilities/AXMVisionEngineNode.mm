@interface AXMVisionEngineNode
+ (BOOL)isSupported;
+ (NSString)title;
- (AXMVisionEngineNode)initWithCoder:(id)a3;
- (AXMVisionEngineNode)initWithIdentifier:(id)a3;
- (AXMVisionEngineNodeConnectionDelegate)delegate;
- (BOOL)areDiagnosticsEnabled;
- (id)axmDescription;
- (void)axmAppendRecursiveDescription:(id)a3 withIndentation:(int64_t)a4;
- (void)connect:(id)a3;
- (void)disconnect;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMVisionEngineNode

+ (BOOL)isSupported
{
  v2 = AXMediaLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    +[(AXMVisionEngineNode *)v2];
  }

  return 0;
}

+ (NSString)title
{
  v2 = AXMediaLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    +[(AXMVisionEngineNode *)v2];
  }

  return @"Unknown";
}

- (AXMVisionEngineNode)initWithIdentifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AXMVisionEngineNode;
  v5 = [(AXMVisionEngineNode *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("NodeQueue", v8);
    nodeQueue = v5->_nodeQueue;
    v5->_nodeQueue = v9;

    v5->_enabled = 1;
    [(AXMVisionEngineNode *)v5 nodeInitialize];
  }

  return v5;
}

- (AXMVisionEngineNode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMNodeCodingKeyIdentifier];
  v6 = [(AXMVisionEngineNode *)self initWithIdentifier:v5];
  if (v6)
  {
    v6->_enabled = [v4 decodeBoolForKey:AXMNodeCodingKeyEnabled];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(AXMVisionEngineNode *)self identifier];
  [v6 encodeObject:v4 forKey:AXMNodeCodingKeyIdentifier];

  v5 = [(AXMVisionEngineNode *)self isEnabled];
  [v6 encodeBool:v5 forKey:AXMNodeCodingKeyEnabled];
}

- (void)connect:(id)a3
{
  v4 = a3;
  if (![(AXMVisionEngineNode *)self isConnected])
  {
    [(AXMVisionEngineNode *)self setDelegate:v4];
    [(AXMVisionEngineNode *)self setConnected:1];
  }
}

- (void)disconnect
{
  [(AXMVisionEngineNode *)self setDelegate:0];

  [(AXMVisionEngineNode *)self setConnected:0];
}

- (BOOL)areDiagnosticsEnabled
{
  v2 = self;
  v3 = [(AXMVisionEngineNode *)self delegate];
  LOBYTE(v2) = [v3 diagnosticsEnabled:v2];

  return v2;
}

- (id)axmDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AXMVisionEngineNode *)self identifier];
  v7 = [objc_opt_class() title];
  if ([objc_opt_class() isSupported])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  if ([(AXMVisionEngineNode *)self requiresVisionFramework])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if ([(AXMVisionEngineNode *)self isEnabled])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  if ([(AXMVisionEngineNode *)self isConnected])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v12 = [v3 stringWithFormat:@"%@<%p>: ID:'%@' title:'%@' supported:%@ needsVisionKit:%@ enabled:%@ connected:%@", v5, self, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (void)axmAppendRecursiveDescription:(id)a3 withIndentation:(int64_t)a4
{
  v6 = MEMORY[0x1E696AD60];
  v7 = a3;
  v9 = [v6 axmIndentationString:a4];
  v8 = [(AXMVisionEngineNode *)self axmDescription];
  [v7 appendFormat:@"%@%@\n", v9, v8];
}

- (AXMVisionEngineNodeConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end