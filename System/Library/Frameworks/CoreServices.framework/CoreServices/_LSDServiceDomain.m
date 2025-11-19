@interface _LSDServiceDomain
+ (_LSDServiceDomain)currentUserSessionDomain;
+ (id)defaultServiceDomain;
+ (id)systemSessionDomain;
- (double)connectionConfigurationStateForServiceClass:(uint64_t)a3@<X8>;
- (id).cxx_construct;
- (id)debugDescription;
- (uint64_t)initWithUID:(void *)a1;
- (uint64_t)resolvedDomainUID;
- (uint64_t)resolvedSessionKey;
- (void)resolvedDomainUID;
@end

@implementation _LSDServiceDomain

+ (id)defaultServiceDomain
{
  objc_opt_self();
  if (+[_LSDServiceDomain defaultServiceDomain]::once != -1)
  {
    +[_LSDServiceDomain defaultServiceDomain];
  }

  v0 = +[_LSDServiceDomain defaultServiceDomain]::target;

  return v0;
}

- (uint64_t)resolvedSessionKey
{
  if (result)
  {
    if (*(result + 16) == 3)
    {
      return 0x100000000;
    }

    else
    {
      return [(_LSDServiceDomain *)result resolvedDomainUID];
    }
  }

  return result;
}

- (uint64_t)resolvedDomainUID
{
  v8 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_16;
  }

  v1 = result;
  if (*(result + 12) == 1)
  {
    result = *(result + 8);
LABEL_16:
    v6 = *MEMORY[0x1E69E9840];
    return result;
  }

  v2 = *(result + 16);
  if (*(result + 16))
  {
    if (v2 == 3)
    {
      result = 0;
    }

    else
    {
      if (v2 != 1)
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        [v7 handleFailureInMethod:sel_resolvedDomainUID object:v1 file:@"LSDService.mm" lineNumber:157 description:{@"Resolving effective UID for domain had bogus type %d", *(v1 + 16)}];
      }

      if (xpc_user_sessions_enabled())
      {
        foreground_uid = xpc_user_sessions_get_foreground_uid();
      }

      else
      {
        foreground_uid = _CFGetEUID();
      }

      result = [__LSDefaultsGetSharedInstance() proxyUIDForUID:foreground_uid];
      *(v1 + 8) = result;
      *(v1 + 12) = 1;
    }

    goto LABEL_16;
  }

  SharedInstance = __LSDefaultsGetSharedInstance();
  v4 = *MEMORY[0x1E69E9840];

  return [SharedInstance proxyUIDForCurrentEffectiveUID];
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 12) = 0;
  return self;
}

- (uint64_t)initWithUID:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    v3 = [__LSDefaultsGetSharedInstance() proxyUIDForUID:a2];
    v7.receiver = a1;
    v7.super_class = _LSDServiceDomain;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    v5 = v4;
    if (v4)
    {
      v4[2] = v3;
      *(v4 + 12) = 1;
      *(v4 + 8) = 2;
    }
  }

  else
  {
    v5 = +[_LSDServiceDomain systemSessionDomain];
  }

  return v5;
}

+ (id)systemSessionDomain
{
  objc_opt_self();
  if (+[_LSDServiceDomain systemSessionDomain]::once != -1)
  {
    +[_LSDServiceDomain systemSessionDomain];
  }

  v0 = +[_LSDServiceDomain systemSessionDomain]::target;

  return v0;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p type %d resolvedDomainUID %d>", v4, self, self->_specifierType, -[_LSDServiceDomain resolvedDomainUID](self)];
}

- (double)connectionConfigurationStateForServiceClass:(uint64_t)a3@<X8>
{
  if (!a1)
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v6 = *(a1 + 16);
  v7 = [__LSDefaultsGetSharedInstance() proxyUIDForCurrentEffectiveUID];
  *a3 = 0;
  *(a3 + 8) = v7;
  *(a3 + 16) = configureUIDVanilla;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{(v6 << 32) | (objc_msgSend(a2, "connectionType") << 48) | v7}];
  *(a3 + 24) = v14;
  v8 = *(a1 + 16);
  if (v8 == 2)
  {
    if (![(_LSDServiceDomain *)a1 resolvedDomainUID])
    {
LABEL_7:
      *a3 = 4096;
      goto LABEL_8;
    }

    v8 = *(a1 + 16);
  }

  if (v8 == 3 || [a2 XPCConnectionIsAlwaysPrivileged])
  {
    goto LABEL_7;
  }

LABEL_8:
  v9 = *(a1 + 16);
  if (v9 == 1)
  {
    if (xpc_user_sessions_enabled())
    {
      v10 = configureUIDForUserSession;
      v11 = [(_LSDServiceDomain *)a1 resolvedDomainUID];
LABEL_18:
      v12 = v11;
      goto LABEL_19;
    }

    v9 = *(a1 + 16);
  }

  if (v9 == 2)
  {
    goto LABEL_17;
  }

  if (v9 == 3)
  {
    v10 = configureUIDNull;
    v11 = [(_LSDServiceDomain *)a1 resolvedDomainUID];
    goto LABEL_18;
  }

  if (([a2 XPCConnectionIsAlwaysPrivileged] & 1) == 0)
  {
LABEL_17:
    v10 = configureUIDVanilla;
    v11 = [(_LSDServiceDomain *)a1 resolvedDomainUID];
    goto LABEL_18;
  }

  v10 = configureUIDVanilla;
  v12 = 0;
LABEL_19:
  *(a3 + 8) = v12;
  *(a3 + 16) = v10;
  *(a3 + 24) = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{(objc_msgSend(a2, "connectionType") << 48) | (*(a1 + 16) << 32) | v12}];

  return result;
}

+ (_LSDServiceDomain)currentUserSessionDomain
{
  objc_opt_self();
  v0 = [_LSDServiceDomain alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = _LSDServiceDomain;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_resolvedDomainUID.__engaged_ = 0;
      v0->_resolvedDomainUID.var0.__val_ = 0;
      v0->_specifierType = 1;
    }
  }

  return v0;
}

- (void)resolvedDomainUID
{
  *buf = 136315650;
  *(buf + 4) = "[_LSDServiceDomain resolvedDomainUID]";
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  *(buf + 9) = 2080;
  *(buf + 20) = a1;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "%s: xpc_user_sessions_get_foreground_uid() failed with error %d - %s", buf, 0x1Cu);
}

@end