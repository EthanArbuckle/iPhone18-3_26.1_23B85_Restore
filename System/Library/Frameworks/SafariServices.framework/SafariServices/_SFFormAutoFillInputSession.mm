@interface _SFFormAutoFillInputSession
- (id)_initWithFormInputSession:(id)a3 focusedElement:(id)a4;
- (id)autoFillInputSessionByReplacingInputSessionUserObject:(id)a3;
- (id)initForStreamlinedLoginWithControlMetadata:(id)a3 formMetadata:(id)a4 frameHandle:(id)a5;
- (void)_updateAutoFillInputSessionUserObject:(id)a3;
- (void)updateWithAdditionalInputSession:(id)a3;
@end

@implementation _SFFormAutoFillInputSession

- (id)initForStreamlinedLoginWithControlMetadata:(id)a3 formMetadata:(id)a4 frameHandle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = _SFFormAutoFillInputSession;
  v12 = [(_SFFormAutoFillInputSession *)&v16 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    v12->_isForStreamlinedLogin = 1;
    objc_storeStrong(&v12->_focusedControlMetadata, a3);
    objc_storeStrong(p_isa + 6, a4);
    objc_storeStrong(p_isa + 5, a5);
    v14 = p_isa;
  }

  return p_isa;
}

- (id)_initWithFormInputSession:(id)a3 focusedElement:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _SFFormAutoFillInputSession;
  v9 = [(_SFFormAutoFillInputSession *)&v16 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_formInputSession, a3);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = [p_isa[4] focusedElementInfo];
    }

    v12 = p_isa[2];
    p_isa[2] = v11;

    v13 = [p_isa[4] userObject];
    if (!v13)
    {
      v13 = [p_isa[2] userObject];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [p_isa _updateAutoFillInputSessionUserObject:v13];
    }

    v14 = p_isa;
  }

  return p_isa;
}

- (void)updateWithAdditionalInputSession:(id)a3
{
  v4 = a3;
  v5 = [v4 formInputSession];
  formInputSession = self->_formInputSession;
  self->_formInputSession = v5;

  v7 = [v4 focusedElementInfo];

  focusedElementInfo = self->_focusedElementInfo;
  self->_focusedElementInfo = v7;
}

- (void)_updateAutoFillInputSessionUserObject:(id)a3
{
  objc_storeStrong(&self->_autoFillInputSessionUserObject, a3);
  v5 = a3;
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

- (id)autoFillInputSessionByReplacingInputSessionUserObject:(id)a3
{
  v4 = a3;
  v5 = [_SFFormAutoFillInputSession alloc];
  v6 = [(_SFFormAutoFillInputSession *)self formInputSession];
  v7 = [(_SFFormAutoFillInputSession *)self focusedElementInfo];
  v8 = [(_SFFormAutoFillInputSession *)v5 _initWithFormInputSession:v6 focusedElement:v7];

  [v8 _updateAutoFillInputSessionUserObject:v4];

  return v8;
}

@end