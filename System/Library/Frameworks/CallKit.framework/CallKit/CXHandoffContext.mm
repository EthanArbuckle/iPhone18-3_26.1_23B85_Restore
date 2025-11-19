@interface CXHandoffContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHandoffContext:(id)a3;
- (CXHandoffContext)initWithCoder:(id)a3;
- (CXHandoffContext)initWithDictionaryRepresentation:(id)a3;
- (CXHandoffContext)initWithHandoffIdentifier:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXHandoffContext

- (CXHandoffContext)initWithHandoffIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CXHandoffContext;
  v6 = [(CXHandoffContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handoffIdentifier, a3);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXHandoffContext *)self handoffIdentifier];
  [v3 appendFormat:@" handoffIdentifier=%@", v4];

  [v3 appendFormat:@" isOutgoing=%d", -[CXHandoffContext isOutgoing](self, "isOutgoing")];
  v5 = [(CXHandoffContext *)self remoteHandle];
  [v3 appendFormat:@" remoteHandle=%@", v5];

  v6 = [(CXHandoffContext *)self context];
  [v3 appendFormat:@" context=%@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (CXHandoffContext)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_handoffIdentifier);
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [(CXHandoffContext *)self initWithHandoffIdentifier:v6];

  if (v7)
  {
    v8 = NSStringFromSelector(sel_isOutgoing);
    v9 = [v4 objectForKeyedSubscript:v8];
    v7->_outgoing = [v9 BOOLValue];

    v10 = [v4 objectForKeyedSubscript:@"remoteHandleType"];
    v11 = [v10 integerValue];

    v12 = [v4 objectForKeyedSubscript:@"remoteHandleValue"];
    v13 = [[CXHandle alloc] initWithType:v11 value:v12];
    remoteHandle = v7->_remoteHandle;
    v7->_remoteHandle = v13;

    v15 = NSStringFromSelector(sel_context);
    v16 = [v4 objectForKeyedSubscript:v15];
    context = v7->_context;
    v7->_context = v16;
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(CXHandoffContext *)self handoffIdentifier];
  v5 = NSStringFromSelector(sel_handoffIdentifier);
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CXHandoffContext isOutgoing](self, "isOutgoing")}];
  v7 = NSStringFromSelector(sel_isOutgoing);
  [v3 setObject:v6 forKeyedSubscript:v7];

  v8 = MEMORY[0x1E696AD98];
  v9 = [(CXHandoffContext *)self remoteHandle];
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "type")}];
  [v3 setObject:v10 forKeyedSubscript:@"remoteHandleType"];

  v11 = [(CXHandoffContext *)self remoteHandle];
  v12 = [v11 value];
  [v3 setObject:v12 forKeyedSubscript:@"remoteHandleValue"];

  v13 = [(CXHandoffContext *)self context];
  v14 = NSStringFromSelector(sel_context);
  [v3 setObject:v13 forKeyedSubscript:v14];

  v15 = [v3 copy];

  return v15;
}

- (CXHandoffContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_handoffIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  v8 = [(CXHandoffContext *)self initWithHandoffIdentifier:v7];

  if (v8)
  {
    v9 = NSStringFromSelector(sel_isOutgoing);
    v8->_outgoing = [v4 decodeBoolForKey:v9];

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_remoteHandle);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
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
    v22 = [v4 decodeObjectOfClasses:v20 forKey:v21];
    context = v8->_context;
    v8->_context = v22;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXHandoffContext *)self handoffIdentifier];
  v6 = NSStringFromSelector(sel_handoffIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXHandoffContext *)self isOutgoing];
  v8 = NSStringFromSelector(sel_isOutgoing);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(CXHandoffContext *)self remoteHandle];
  v10 = NSStringFromSelector(sel_remoteHandle);
  [v4 encodeObject:v9 forKey:v10];

  v12 = [(CXHandoffContext *)self context];
  v11 = NSStringFromSelector(sel_context);
  [v4 encodeObject:v12 forKey:v11];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXHandoffContext *)self isEqualToHandoffContext:v4];

  return v5;
}

- (BOOL)isEqualToHandoffContext:(id)a3
{
  v4 = a3;
  v5 = [(CXHandoffContext *)self handoffIdentifier];
  v6 = [v4 handoffIdentifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(CXHandoffContext *)self remoteHandle];
    v8 = [v4 remoteHandle];
    if (v7 | v8 && ![v7 isEqual:v8])
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      v9 = [(CXHandoffContext *)self context];
      v10 = [v4 context];
      if (v9 | v10 && ![v9 isEqual:v10])
      {
        LOBYTE(v12) = 0;
      }

      else
      {
        v11 = [(CXHandoffContext *)self isOutgoing];
        v12 = v11 ^ [v4 isOutgoing] ^ 1;
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
  v3 = [(CXHandoffContext *)self handoffIdentifier];
  v4 = [v3 hash];
  v5 = [(CXHandoffContext *)self remoteHandle];
  v6 = [v5 hash] ^ v4;
  v7 = [(CXHandoffContext *)self context];
  v8 = v6 ^ [v7 hash];
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