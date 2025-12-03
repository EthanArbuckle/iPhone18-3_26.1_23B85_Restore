@interface BSAction
- (BOOL)_expectsResponse;
- (BOOL)isEqual:(id)equal;
- (BSAction)initWithBSXPCCoder:(id)coder;
- (BSAction)initWithCoder:(id)coder;
- (BSAction)initWithInfo:(id)info responder:(id)responder;
- (BSAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (BSAction)initWithXPCDictionary:(id)dictionary;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix debug:;
- (id)_initWithInfo:(void *)info responder:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)invalidate;
- (void)sendResponse:(id)response;
- (void)sendResponse:(id)response withCompletion:(id)completion;
@end

@implementation BSAction

- (void)invalidate
{
  isImplicitOriginator = self->_isImplicitOriginator;
  responder = self->_responder;
  if (isImplicitOriginator)
  {
    [(_BSActionResponder *)responder originator_annulWithErrorCode:?];
  }

  else
  {
    [(_BSActionResponder *)responder action_invalidate];
  }
}

- (void)dealloc
{
  [(BSSettings *)self->_info setDescriptionProvider:0];
  [(_BSActionResponder *)self->_responder action_didDealloc];
  v3.receiver = self;
  v3.super_class = BSAction;
  [(BSAction *)&v3 dealloc];
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  action_shortIdentifier = [(_BSActionResponder *)self->_responder action_shortIdentifier];
  v5 = [v3 appendObject:action_shortIdentifier withName:@"id" skipIfNil:1];

  return v3;
}

- (id)succinctDescription
{
  action_fullIdentifier = [(_BSActionResponder *)self->_responder action_fullIdentifier];
  v4 = action_fullIdentifier;
  if (action_fullIdentifier)
  {
    build = action_fullIdentifier;
  }

  else
  {
    succinctDescriptionBuilder = [(BSAction *)self succinctDescriptionBuilder];
    build = [succinctDescriptionBuilder build];
  }

  return build;
}

- (unint64_t)hash
{
  responder = self->_responder;
  if (responder && responder->_isOriginatorNull)
  {
    v4 = +[BSHashBuilder builder];
    v5 = [v4 appendObject:self->_info];
    v6 = [v5 hash];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BSAction;
    return [(BSAction *)&v8 hash];
  }

  return v6;
}

- (BOOL)_expectsResponse
{
  responder = self->_responder;
  if (responder)
  {
    v3 = !responder->_isOriginatorNull;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (id)_initWithInfo:(void *)info responder:
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  infoCopy = info;
  v7 = infoCopy;
  if (self)
  {
    if (!infoCopy)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"responder"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(sel__initWithInfo_responder_);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v19 = v13;
        v20 = 2114;
        v21 = v15;
        v22 = 2048;
        selfCopy = self;
        v24 = 2114;
        v25 = @"BSAction.m";
        v26 = 1024;
        v27 = 189;
        v28 = 2114;
        v29 = v12;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v16 = v12;
      qword_1EAD33B00 = [v12 UTF8String];
      __break(0);
      JUMPOUT(0x18FF82A00);
    }

    v17.receiver = self;
    v17.super_class = BSAction;
    v8 = objc_msgSendSuper2(&v17, sel_init);
    if (v8)
    {
      v9 = [v5 copy];
      v10 = *(v8 + 3);
      *(v8 + 3) = v9;

      [*(v8 + 3) setDescriptionProvider:v8];
      *(v8 + 16) = 0;
      objc_storeStrong(v8 + 1, info);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BSAction)initWithInfo:(id)info responder:(id)responder
{
  infoCopy = info;
  responderCopy = responder;
  v8 = responderCopy;
  if (responderCopy)
  {
    os_unfair_lock_lock(responderCopy + 10);
    _lock_underlying = [(BSActionResponder *)v8 _lock_underlying];
    os_unfair_lock_unlock(v8 + 10);
  }

  else
  {
    _lock_underlying = +[_BSActionResponder originator_nullResponder];
  }

  v10 = [(BSAction *)self _initWithInfo:infoCopy responder:_lock_underlying];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 1);
    v13 = objc_opt_class();
    [(_BSActionResponder *)v12 originator_didInit:v13];
  }

  return v11;
}

- (BSAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  infoCopy = info;
  queueCopy = queue;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v13 = queueCopy;
    if (!queueCopy)
    {
      LODWORD(v14) = qos_class_self();
      if (v14 <= 0x15)
      {
        v14 = 21;
      }

      else
      {
        v14 = v14;
      }

      v13 = dispatch_get_global_queue(v14, 0);
    }

    v15 = [_BSActionResponder originator_responderOnQueue:v13 forHandler:handlerCopy];
    if (!queueCopy)
    {
    }

    if (v15)
    {
      os_unfair_lock_lock((v15 + 96));
      *(v15 + 102) = 1;
      os_unfair_lock_unlock((v15 + 96));
    }

    if (timeout > 0.0 && fabs(timeout) >= 2.22044605e-16)
    {
      v16 = dispatch_time(0, (timeout * 1000000000.0));
      [(_BSActionResponder *)v15 originator_setTimeout:v16];
    }
  }

  else
  {
    v15 = +[_BSActionResponder originator_nullResponder];
  }

  v17 = [(BSAction *)self _initWithInfo:infoCopy responder:v15];
  v18 = v17;
  if (v17)
  {
    *(v17 + 16) = 1;
    v19 = *(v17 + 1);
    v20 = objc_opt_class();
    [(_BSActionResponder *)v19 originator_didInit:v20];
  }

  return v18;
}

- (BSAction)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v6 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"r"];
  v7 = [_BSActionResponder action_decodeFromXPCObject:v6];

  v8 = [(BSAction *)self _initWithInfo:v5 responder:v7];
  return v8;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_info forKey:@"i"];
  v4 = [(_BSActionResponder *)self->_responder action_encode:?];
  [coderCopy encodeObject:v4 forKey:@"r"];
}

- (BSAction)initWithXPCDictionary:(id)dictionary
{
  v4 = [BSXPCCoder coderWithMessage:dictionary];
  v5 = [(BSAction *)self initWithBSXPCCoder:v4];

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v4 = [BSXPCCoder coderWithMessage:dictionary];
  [(BSAction *)self encodeWithBSXPCCoder:?];
}

- (BSAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 raise:*MEMORY[0x1E695D940] format:{@"An %@ can only be decoded with an instance of NSXPCCoder; attempting to decode with %@", v7, v9}];
  }

  v10 = coderCopy;
  v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v12 = [v10 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"r"];
  v13 = [_BSActionResponder action_decodeFromXPCObject:v12];

  v14 = [(BSAction *)self _initWithInfo:v11 responder:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = coderCopy;
    v5 = v4;
    info = self->_info;
    if (info)
    {
      [v4 encodeObject:info forKey:@"i"];
    }

    v7 = [(_BSActionResponder *)self->_responder action_encode:?];
    if (v7)
    {
      [v5 encodeXPCObject:v7 forKey:@"r"];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = objc_opt_class();
    v5 = NSStringFromClass(v9);
    v10 = objc_opt_class();
    v7 = NSStringFromClass(v10);
    [v8 raise:*MEMORY[0x1E695D940] format:{@"An %@ can only be encoded with an instance of NSXPCCoder; attempting to encode with %@", v5, v7}];
  }
}

- (void)sendResponse:(id)response
{
  responseCopy = response;
  responder = self->_responder;
  v6 = responseCopy;
  v8 = responseCopy;
  if (!responseCopy)
  {
    v6 = [BSActionResponse responseForErrorCode:?];
  }

  [(_BSActionResponder *)responder action:v6 sendResponse:?];
  v7 = v8;
  if (!v8)
  {

    v7 = 0;
  }
}

- (void)sendResponse:(id)response withCompletion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  responder = self->_responder;
  v8 = responseCopy;
  if (!responseCopy)
  {
    v8 = [BSActionResponse responseForErrorCode:?];
  }

  v9 = [(_BSActionResponder *)responder action:v8 sendResponse:?];
  if (!responseCopy)
  {

    if (!completionCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (completionCopy)
  {
LABEL_7:
    completionCopy[2](completionCopy, v9);
  }

LABEL_8:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    goto LABEL_11;
  }

  responder = self->_responder;
  if (!responder)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = 0;
  if (equalCopy && responder->_isOriginatorNull)
  {
    v8 = objc_opt_class();
    if (v8 != objc_opt_class())
    {
      goto LABEL_6;
    }

    info = self->_info;
    v10 = v5->_info;
    if (info != v10)
    {
      v7 = 0;
      if (info && v10)
      {
        v7 = [(BSSettings *)info isEqual:?];
      }

      goto LABEL_12;
    }

LABEL_11:
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSAction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v3 = [(BSAction *)self _descriptionBuilderWithMultilinePrefix:prefix debug:0];

  return v3;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix debug:
{
  v5 = a2;
  if (self)
  {
    succinctDescriptionBuilder = [self succinctDescriptionBuilder];
    [succinctDescriptionBuilder setActiveMultilinePrefix:v5];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    v7 = [succinctDescriptionBuilder appendObject:self[3] withName:@"info"];
    v8 = [succinctDescriptionBuilder appendObject:self[1] withName:@"responder"];
  }

  else
  {
    succinctDescriptionBuilder = 0;
  }

  return succinctDescriptionBuilder;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSAction *)self _descriptionBuilderWithMultilinePrefix:prefix debug:1];
  build = [v3 build];

  return build;
}

@end