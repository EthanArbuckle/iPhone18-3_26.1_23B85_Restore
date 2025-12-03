@interface _SFFormAutoFillInputSession
- (id)_initWithFormInputSession:(id)session focusedElement:(id)element;
- (id)autoFillInputSessionByReplacingInputSessionUserObject:(id)object;
- (id)initForStreamlinedLoginWithControlMetadata:(id)metadata formMetadata:(id)formMetadata frameHandle:(id)handle;
- (void)_updateAutoFillInputSessionUserObject:(id)object;
- (void)updateWithAdditionalInputSession:(id)session;
@end

@implementation _SFFormAutoFillInputSession

- (id)initForStreamlinedLoginWithControlMetadata:(id)metadata formMetadata:(id)formMetadata frameHandle:(id)handle
{
  metadataCopy = metadata;
  formMetadataCopy = formMetadata;
  handleCopy = handle;
  v16.receiver = self;
  v16.super_class = _SFFormAutoFillInputSession;
  v12 = [(_SFFormAutoFillInputSession *)&v16 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    v12->_isForStreamlinedLogin = 1;
    objc_storeStrong(&v12->_focusedControlMetadata, metadata);
    objc_storeStrong(p_isa + 6, formMetadata);
    objc_storeStrong(p_isa + 5, handle);
    v14 = p_isa;
  }

  return p_isa;
}

- (id)_initWithFormInputSession:(id)session focusedElement:(id)element
{
  sessionCopy = session;
  elementCopy = element;
  v16.receiver = self;
  v16.super_class = _SFFormAutoFillInputSession;
  v9 = [(_SFFormAutoFillInputSession *)&v16 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_formInputSession, session);
    if (elementCopy)
    {
      focusedElementInfo = elementCopy;
    }

    else
    {
      focusedElementInfo = [p_isa[4] focusedElementInfo];
    }

    v12 = p_isa[2];
    p_isa[2] = focusedElementInfo;

    userObject = [p_isa[4] userObject];
    if (!userObject)
    {
      userObject = [p_isa[2] userObject];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [p_isa _updateAutoFillInputSessionUserObject:userObject];
    }

    v14 = p_isa;
  }

  return p_isa;
}

- (void)updateWithAdditionalInputSession:(id)session
{
  sessionCopy = session;
  formInputSession = [sessionCopy formInputSession];
  formInputSession = self->_formInputSession;
  self->_formInputSession = formInputSession;

  focusedElementInfo = [sessionCopy focusedElementInfo];

  focusedElementInfo = self->_focusedElementInfo;
  self->_focusedElementInfo = focusedElementInfo;
}

- (void)_updateAutoFillInputSessionUserObject:(id)object
{
  objc_storeStrong(&self->_autoFillInputSessionUserObject, object);
  objectCopy = object;
  v6 = [(NSDictionary *)self->_autoFillInputSessionUserObject objectForKeyedSubscript:@"frame"];
  v7 = [SFFormAutoFillFrameHandle frameHandleFromSerializedData:v6];
  frameHandle = self->_frameHandle;
  self->_frameHandle = v7;

  v9 = MEMORY[0x1E69C8F38];
  v10 = [(NSDictionary *)self->_autoFillInputSessionUserObject objectForKeyedSubscript:@"form"];
  v11 = [v9 formMetadataFromSerializedData:v10];
  formMetadata = self->_formMetadata;
  self->_formMetadata = v11;

  v13 = MEMORY[0x1E69C8F28];
  v16 = [(NSDictionary *)self->_autoFillInputSessionUserObject objectForKeyedSubscript:@"textField"];
  v14 = [v13 formControlMetadataFromSerializedData:v16];
  focusedControlMetadata = self->_focusedControlMetadata;
  self->_focusedControlMetadata = v14;
}

- (id)autoFillInputSessionByReplacingInputSessionUserObject:(id)object
{
  objectCopy = object;
  v5 = [_SFFormAutoFillInputSession alloc];
  formInputSession = [(_SFFormAutoFillInputSession *)self formInputSession];
  focusedElementInfo = [(_SFFormAutoFillInputSession *)self focusedElementInfo];
  v8 = [(_SFFormAutoFillInputSession *)v5 _initWithFormInputSession:formInputSession focusedElement:focusedElementInfo];

  [v8 _updateAutoFillInputSessionUserObject:objectCopy];

  return v8;
}

@end