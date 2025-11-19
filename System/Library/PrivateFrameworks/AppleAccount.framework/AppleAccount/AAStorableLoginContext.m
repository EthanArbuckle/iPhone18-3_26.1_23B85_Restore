@interface AAStorableLoginContext
- (AAStorableLoginContext)initWithAppleID:(id)a3 altDSID:(id)a4;
- (void)setDSID:(id)a3;
@end

@implementation AAStorableLoginContext

- (AAStorableLoginContext)initWithAppleID:(id)a3 altDSID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AAStorableLoginContext;
  v8 = [(AAStorableLoginContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    appleID = v8->_appleID;
    v8->_appleID = v9;

    v11 = [v7 copy];
    altDSID = v8->_altDSID;
    v8->_altDSID = v11;
  }

  return v8;
}

- (void)setDSID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_DSID, a3);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 stringValue];
      DSID = self->_DSID;
      self->_DSID = v6;
    }

    else
    {
      v8 = _AALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Attempted to set invalid DSID: %{mask}@", &v10, 0xCu);
      }

      DSID = self->_DSID;
      self->_DSID = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end