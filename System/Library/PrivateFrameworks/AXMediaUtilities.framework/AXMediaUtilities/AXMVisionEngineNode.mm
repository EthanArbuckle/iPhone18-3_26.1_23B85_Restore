@interface AXMVisionEngineNode
+ (BOOL)isSupported;
+ (NSString)title;
- (AXMVisionEngineNode)initWithCoder:(id)coder;
- (AXMVisionEngineNode)initWithIdentifier:(id)identifier;
- (AXMVisionEngineNodeConnectionDelegate)delegate;
- (BOOL)areDiagnosticsEnabled;
- (id)axmDescription;
- (void)axmAppendRecursiveDescription:(id)description withIndentation:(int64_t)indentation;
- (void)connect:(id)connect;
- (void)disconnect;
- (void)encodeWithCoder:(id)coder;
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

- (AXMVisionEngineNode)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = AXMVisionEngineNode;
  v5 = [(AXMVisionEngineNode *)&v12 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
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

- (AXMVisionEngineNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMNodeCodingKeyIdentifier];
  v6 = [(AXMVisionEngineNode *)self initWithIdentifier:v5];
  if (v6)
  {
    v6->_enabled = [coderCopy decodeBoolForKey:AXMNodeCodingKeyEnabled];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(AXMVisionEngineNode *)self identifier];
  [coderCopy encodeObject:identifier forKey:AXMNodeCodingKeyIdentifier];

  isEnabled = [(AXMVisionEngineNode *)self isEnabled];
  [coderCopy encodeBool:isEnabled forKey:AXMNodeCodingKeyEnabled];
}

- (void)connect:(id)connect
{
  connectCopy = connect;
  if (![(AXMVisionEngineNode *)self isConnected])
  {
    [(AXMVisionEngineNode *)self setDelegate:connectCopy];
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
  selfCopy = self;
  delegate = [(AXMVisionEngineNode *)self delegate];
  LOBYTE(selfCopy) = [delegate diagnosticsEnabled:selfCopy];

  return selfCopy;
}

- (id)axmDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(AXMVisionEngineNode *)self identifier];
  title = [objc_opt_class() title];
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

  v12 = [v3 stringWithFormat:@"%@<%p>: ID:'%@' title:'%@' supported:%@ needsVisionKit:%@ enabled:%@ connected:%@", v5, self, identifier, title, v8, v9, v10, v11];

  return v12;
}

- (void)axmAppendRecursiveDescription:(id)description withIndentation:(int64_t)indentation
{
  v6 = MEMORY[0x1E696AD60];
  descriptionCopy = description;
  v9 = [v6 axmIndentationString:indentation];
  axmDescription = [(AXMVisionEngineNode *)self axmDescription];
  [descriptionCopy appendFormat:@"%@%@\n", v9, axmDescription];
}

- (AXMVisionEngineNodeConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end