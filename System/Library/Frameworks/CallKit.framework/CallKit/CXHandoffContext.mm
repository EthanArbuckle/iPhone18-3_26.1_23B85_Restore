@interface CXHandoffContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHandoffContext:(id)context;
- (CXHandoffContext)initWithCoder:(id)coder;
- (CXHandoffContext)initWithDictionaryRepresentation:(id)representation;
- (CXHandoffContext)initWithHandoffIdentifier:(id)identifier;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXHandoffContext

- (CXHandoffContext)initWithHandoffIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CXHandoffContext;
  v6 = [(CXHandoffContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handoffIdentifier, identifier);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  handoffIdentifier = [(CXHandoffContext *)self handoffIdentifier];
  [v3 appendFormat:@" handoffIdentifier=%@", handoffIdentifier];

  [v3 appendFormat:@" isOutgoing=%d", -[CXHandoffContext isOutgoing](self, "isOutgoing")];
  remoteHandle = [(CXHandoffContext *)self remoteHandle];
  [v3 appendFormat:@" remoteHandle=%@", remoteHandle];

  context = [(CXHandoffContext *)self context];
  [v3 appendFormat:@" context=%@", context];

  [v3 appendString:@">"];

  return v3;
}

- (CXHandoffContext)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = NSStringFromSelector(sel_handoffIdentifier);
  v6 = [representationCopy objectForKeyedSubscript:v5];
  v7 = [(CXHandoffContext *)self initWithHandoffIdentifier:v6];

  if (v7)
  {
    v8 = NSStringFromSelector(sel_isOutgoing);
    v9 = [representationCopy objectForKeyedSubscript:v8];
    v7->_outgoing = [v9 BOOLValue];

    v10 = [representationCopy objectForKeyedSubscript:@"remoteHandleType"];
    integerValue = [v10 integerValue];

    v12 = [representationCopy objectForKeyedSubscript:@"remoteHandleValue"];
    v13 = [[CXHandle alloc] initWithType:integerValue value:v12];
    remoteHandle = v7->_remoteHandle;
    v7->_remoteHandle = v13;

    v15 = NSStringFromSelector(sel_context);
    v16 = [representationCopy objectForKeyedSubscript:v15];
    context = v7->_context;
    v7->_context = v16;
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  handoffIdentifier = [(CXHandoffContext *)self handoffIdentifier];
  v5 = NSStringFromSelector(sel_handoffIdentifier);
  [dictionary setObject:handoffIdentifier forKeyedSubscript:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CXHandoffContext isOutgoing](self, "isOutgoing")}];
  v7 = NSStringFromSelector(sel_isOutgoing);
  [dictionary setObject:v6 forKeyedSubscript:v7];

  v8 = MEMORY[0x1E696AD98];
  remoteHandle = [(CXHandoffContext *)self remoteHandle];
  v10 = [v8 numberWithInteger:{objc_msgSend(remoteHandle, "type")}];
  [dictionary setObject:v10 forKeyedSubscript:@"remoteHandleType"];

  remoteHandle2 = [(CXHandoffContext *)self remoteHandle];
  value = [remoteHandle2 value];
  [dictionary setObject:value forKeyedSubscript:@"remoteHandleValue"];

  context = [(CXHandoffContext *)self context];
  v14 = NSStringFromSelector(sel_context);
  [dictionary setObject:context forKeyedSubscript:v14];

  v15 = [dictionary copy];

  return v15;
}

- (CXHandoffContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_handoffIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  v8 = [(CXHandoffContext *)self initWithHandoffIdentifier:v7];

  if (v8)
  {
    v9 = NSStringFromSelector(sel_isOutgoing);
    v8->_outgoing = [coderCopy decodeBoolForKey:v9];

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_remoteHandle);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    remoteHandle = v8->_remoteHandle;
    v8->_remoteHandle = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v14 setWithObjects:{v15, v16, v17, v18, v19, objc_opt_class(), 0}];
    v21 = NSStringFromSelector(sel_context);
    v22 = [coderCopy decodeObjectOfClasses:v20 forKey:v21];
    context = v8->_context;
    v8->_context = v22;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  handoffIdentifier = [(CXHandoffContext *)self handoffIdentifier];
  v6 = NSStringFromSelector(sel_handoffIdentifier);
  [coderCopy encodeObject:handoffIdentifier forKey:v6];

  isOutgoing = [(CXHandoffContext *)self isOutgoing];
  v8 = NSStringFromSelector(sel_isOutgoing);
  [coderCopy encodeBool:isOutgoing forKey:v8];

  remoteHandle = [(CXHandoffContext *)self remoteHandle];
  v10 = NSStringFromSelector(sel_remoteHandle);
  [coderCopy encodeObject:remoteHandle forKey:v10];

  context = [(CXHandoffContext *)self context];
  v11 = NSStringFromSelector(sel_context);
  [coderCopy encodeObject:context forKey:v11];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXHandoffContext *)self isEqualToHandoffContext:equalCopy];

  return v5;
}

- (BOOL)isEqualToHandoffContext:(id)context
{
  contextCopy = context;
  handoffIdentifier = [(CXHandoffContext *)self handoffIdentifier];
  handoffIdentifier2 = [contextCopy handoffIdentifier];
  if ([handoffIdentifier isEqualToString:handoffIdentifier2])
  {
    remoteHandle = [(CXHandoffContext *)self remoteHandle];
    remoteHandle2 = [contextCopy remoteHandle];
    if (remoteHandle | remoteHandle2 && ![remoteHandle isEqual:remoteHandle2])
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      context = [(CXHandoffContext *)self context];
      context2 = [contextCopy context];
      if (context | context2 && ![context isEqual:context2])
      {
        LOBYTE(v12) = 0;
      }

      else
      {
        isOutgoing = [(CXHandoffContext *)self isOutgoing];
        v12 = isOutgoing ^ [contextCopy isOutgoing] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  handoffIdentifier = [(CXHandoffContext *)self handoffIdentifier];
  v4 = [handoffIdentifier hash];
  remoteHandle = [(CXHandoffContext *)self remoteHandle];
  v6 = [remoteHandle hash] ^ v4;
  context = [(CXHandoffContext *)self context];
  v8 = v6 ^ [context hash];
  if ([(CXHandoffContext *)self isOutgoing])
  {
    v9 = 1231;
  }

  else
  {
    v9 = 1237;
  }

  return v8 ^ v9;
}

@end