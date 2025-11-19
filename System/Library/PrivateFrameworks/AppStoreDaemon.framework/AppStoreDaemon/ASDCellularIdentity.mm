@interface ASDCellularIdentity
+ (ASDCellularIdentity)nullIdentity;
+ (id)identityForSubscription:(id)a3 usingClient:(id)a4 error:(id *)a5;
- (id)copyWithRoaming:(BOOL)a3;
- (id)description;
- (id)initWithSIMIdentity:(char)a3 roaming:;
- (id)initWithSIMIdentity:(char)a3 roaming:(void *)a4 defaultsKey:;
@end

@implementation ASDCellularIdentity

+ (id)identityForSubscription:(id)a3 usingClient:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (!v7)
  {
    goto LABEL_11;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v20 = 0;
  v11 = [v8 copySIMIdentity:v7 error:&v20];
  v10 = v20;
  if (!v11)
  {
    goto LABEL_11;
  }

  if ([v11 length])
  {
    v19 = v10;
    v12 = [v9 getDataStatus:v7 error:&v19];
    v13 = v19;

    v14 = v12 ? [v12 inHomeCountry] ^ 1 : 0;
    v15 = [[ASDCellularIdentity alloc] initWithSIMIdentity:v11 roaming:v14];

    v10 = v13;
  }

  else
  {
    v15 = [a1 nullIdentity];
  }

  if (!v15)
  {
LABEL_11:
    v16 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v10;
      _os_log_error_impl(&dword_1B8220000, v16, OS_LOG_TYPE_ERROR, "[Cellular] Returning 'null' identity after error occurred: %{public}@", buf, 0xCu);
    }

    v15 = [a1 nullIdentity];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)initWithSIMIdentity:(char)a3 roaming:
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a2;
    v6 = [v5 dataUsingEncoding:4];
    objc_opt_self();
    CC_MD5([v6 bytes], objc_msgSend(v6, "length"), md);
    v7 = [MEMORY[0x1E696AD60] stringWithCapacity:32];
    for (i = 0; i != 16; ++i)
    {
      [v7 appendFormat:@"%02x", md[i]];
    }

    v9 = [v7 copy];

    v10 = [(ASDCellularIdentity *)a1 initWithSIMIdentity:v5 roaming:a3 defaultsKey:v9];
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)initWithSIMIdentity:(char)a3 roaming:(void *)a4 defaultsKey:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = ASDCellularIdentity;
    a1 = objc_msgSendSuper2(&v14, sel_init);
    if (a1)
    {
      v9 = [v7 copy];
      v10 = *(a1 + 3);
      *(a1 + 3) = v9;

      *(a1 + 8) = a3;
      v11 = [v8 copy];
      v12 = *(a1 + 2);
      *(a1 + 2) = v11;
    }
  }

  return a1;
}

+ (ASDCellularIdentity)nullIdentity
{
  v2 = [(ASDCellularIdentity *)[a1 alloc] initWithSIMIdentity:0 roaming:?];

  return v2;
}

- (id)copyWithRoaming:(BOOL)a3
{
  v5 = [ASDCellularIdentity alloc];
  defaultsKey = self->_defaultsKey;
  simIdentity = self->_simIdentity;

  return [(ASDCellularIdentity *)v5 initWithSIMIdentity:a3 roaming:defaultsKey defaultsKey:?];
}

- (id)description
{
  if (os_variant_has_internal_content())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<ASDCellularIdentity %p; sim = %@; key = %@ }", self, self->_simIdentity, self->_defaultsKey];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<ASDCellularIdentity %p; sim = <private>; key = %@ }", self, self->_defaultsKey, v5];
  }
  v3 = ;

  return v3;
}

@end