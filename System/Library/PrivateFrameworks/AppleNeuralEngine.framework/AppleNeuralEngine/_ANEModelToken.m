@interface _ANEModelToken
+ (id)codeSigningIDFor:(id *)a3 processIdentifier:(int)a4;
+ (id)teamIDFor:(id *)a3 processIdentifier:(int)a4;
- (_ANEModelToken)initWithCsIdentity:(id)a3 teamIdentity:(id)a4 modelIdentifier:(id)a5 processIdentifier:(int)a6;
- (id)description;
@end

@implementation _ANEModelToken

+ (id)codeSigningIDFor:(id *)a3 processIdentifier:(int)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v6 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v6;
  v7 = SecTaskCreateWithAuditToken(v5, &token);
  if (v7)
  {
    v8 = v7;
    error = 0;
    v9 = SecTaskCopySigningIdentifier(v7, &error);
    v10 = error;
    v11 = +[_ANELog daemon];
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[_ANEModelToken codeSigningIDFor:processIdentifier:];
      }

      CFRelease(error);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = NSStringFromSelector(a2);
        token.val[0] = 138412546;
        *&token.val[1] = v14;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v9;
        _os_log_impl(&dword_1AD246000, v12, OS_LOG_TYPE_INFO, "%@: SecTaskCopySigningIdentifier() returned csIdentity=%@", &token, 0x16u);
      }
    }

    CFRelease(v8);
  }

  else
  {
    v13 = +[_ANELog daemon];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[_ANEModelToken codeSigningIDFor:processIdentifier:];
    }

    v9 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)teamIDFor:(id *)a3 processIdentifier:(int)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v6 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v6;
  v7 = SecTaskCreateWithAuditToken(v5, &token);
  if (v7)
  {
    v8 = v7;
    v9 = SecTaskCopyTeamIdentifier();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &stru_1F224D6A0;
    }

    CFRelease(v8);
    v11 = +[_ANELog daemon];
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(a2);
      token.val[0] = 138412546;
      *&token.val[1] = v14;
      LOWORD(token.val[3]) = 2112;
      *(&token.val[3] + 2) = v10;
      _os_log_impl(&dword_1AD246000, v12, OS_LOG_TYPE_INFO, "%@: SecTaskCopyTeamIdentifier() returned teamIdentity=%@", &token, 0x16u);
    }
  }

  else
  {
    v13 = +[_ANELog daemon];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[_ANEModelToken codeSigningIDFor:processIdentifier:];
    }

    v10 = &stru_1F224D6A0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (_ANEModelToken)initWithCsIdentity:(id)a3 teamIdentity:(id)a4 modelIdentifier:(id)a5 processIdentifier:(int)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = _ANEModelToken;
  v14 = [(_ANEModelToken *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_csIdentity, a3);
    objc_storeStrong(&v15->_teamIdentity, a4);
    objc_storeStrong(&v15->_modelIdentifier, a5);
    v15->_processIdentifier = a6;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { csIdentity=%@ : teamIdentity=%@ }", v5, self->_csIdentity, self->_teamIdentity];

  return v6;
}

+ (void)codeSigningIDFor:processIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1AD246000, v2, v3, "%@: client(%d) : missing signingIdentifier", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)codeSigningIDFor:processIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1AD246000, v2, v3, "%@: client(%d) : SecTaskCreateWithAuditToken() failed", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)teamIDFor:processIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1AD246000, v2, v3, "%@: client(%d) : missing teamIdentity", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end