@interface AAStorableLoginContext
- (AAStorableLoginContext)initWithAppleID:(id)d altDSID:(id)iD;
- (void)setDSID:(id)d;
@end

@implementation AAStorableLoginContext

- (AAStorableLoginContext)initWithAppleID:(id)d altDSID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = AAStorableLoginContext;
  v8 = [(AAStorableLoginContext *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    appleID = v8->_appleID;
    v8->_appleID = v9;

    v11 = [iDCopy copy];
    altDSID = v8->_altDSID;
    v8->_altDSID = v11;
  }

  return v8;
}

- (void)setDSID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_DSID, d);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [dCopy stringValue];
      DSID = self->_DSID;
      self->_DSID = stringValue;
    }

    else
    {
      v8 = _AALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = dCopy;
        _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Attempted to set invalid DSID: %{mask}@", &v10, 0xCu);
      }

      DSID = self->_DSID;
      self->_DSID = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end