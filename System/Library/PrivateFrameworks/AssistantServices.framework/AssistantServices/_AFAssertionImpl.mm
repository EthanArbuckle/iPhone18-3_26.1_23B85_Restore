@interface _AFAssertionImpl
- (NSString)description;
- (_AFAssertionImpl)initWithUUID:(id)d context:(id)context relinquishmentHandler:(id)handler;
@end

@implementation _AFAssertionImpl

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = _AFAssertionImpl;
  v4 = [(_AFAssertionImpl *)&v8 description];
  v5 = _AFAssertionCreateDescriptionOfProperties(self);
  v6 = [v3 initWithFormat:@"%@ {%@}", v4, v5];

  return v6;
}

- (_AFAssertionImpl)initWithUUID:(id)d context:(id)context relinquishmentHandler:(id)handler
{
  dCopy = d;
  contextCopy = context;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = _AFAssertionImpl;
  v11 = [(_AFAssertionImpl *)&v23 init];
  if (v11)
  {
    v12 = [dCopy copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v14 = [contextCopy copy];
    context = v11->_context;
    v11->_context = v14;

    v16 = [AFTwoArgumentSafetyBlock alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __63___AFAssertionImpl_initWithUUID_context_relinquishmentHandler___block_invoke;
    v21[3] = &unk_1E7342798;
    v22 = handlerCopy;
    v17 = [AFError errorWithCode:40];
    v18 = [(AFTwoArgumentSafetyBlock *)v16 initWithBlock:v21 defaultValue1:0 defaultValue2:v17];
    relinquishmentHandler = v11->_relinquishmentHandler;
    v11->_relinquishmentHandler = v18;
  }

  return v11;
}

@end