@interface _LSApplicationSensitiveDataProxy
- (_LSApplicationSensitiveDataProxy)initWithApplicationDSID:(unint64_t)a3 downloaderDSID:(unint64_t)a4 familyID:(unint64_t)a5 isRedacted:(BOOL)a6;
- (_LSApplicationSensitiveDataProxy)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)applicationDSID;
- (unint64_t)downloaderDSID;
- (unint64_t)familyID;
- (void)_checkNotRedacted;
- (void)encodeWithCoder:(id)a3;
- (void)redact;
@end

@implementation _LSApplicationSensitiveDataProxy

- (void)redact
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v4 = __42___LSApplicationSensitiveDataProxy_redact__block_invoke;
  v5 = &unk_1E6A195E0;
  v6 = self;
  v2 = v3;
  os_unfair_lock_lock(&mutationLock);
  v4(v2);
  os_unfair_lock_unlock(&mutationLock);
}

- (_LSApplicationSensitiveDataProxy)initWithApplicationDSID:(unint64_t)a3 downloaderDSID:(unint64_t)a4 familyID:(unint64_t)a5 isRedacted:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = _LSApplicationSensitiveDataProxy;
  result = [(_LSApplicationSensitiveDataProxy *)&v11 init];
  if (result)
  {
    result->_applicationDSID = a3;
    result->_downloaderDSID = a4;
    result->_familyID = a5;
    result->_redacted = a6;
  }

  return result;
}

- (_LSApplicationSensitiveDataProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"applicationDSID"];
  v6 = [v4 decodeInt64ForKey:@"downloaderDSID"];
  v7 = [v4 decodeInt64ForKey:@"familyID"];
  v8 = [v4 decodeBoolForKey:@"redacted"];

  return [(_LSApplicationSensitiveDataProxy *)self initWithApplicationDSID:v5 downloaderDSID:v6 familyID:v7 isRedacted:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__23;
  v15 = __Block_byref_object_dispose__23;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __49___LSApplicationSensitiveDataProxy_copyWithZone___block_invoke;
  v8 = &unk_1E6A195B8;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&mutationLock);
  v7(v3);
  os_unfair_lock_unlock(&mutationLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __52___LSApplicationSensitiveDataProxy_encodeWithCoder___block_invoke;
  v9 = &unk_1E6A18F50;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = v7;
  os_unfair_lock_lock(&mutationLock);
  v8(v6);
  os_unfair_lock_unlock(&mutationLock);
}

- (void)_checkNotRedacted
{
  if (self->_redacted)
  {
    __LS_DETECTED_ATTEMPT_TO_FETCH_DSIDS_FROM_REDACTED_RECORD__();
  }
}

- (unint64_t)applicationDSID
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __51___LSApplicationSensitiveDataProxy_applicationDSID__block_invoke;
  v7 = &unk_1E6A1A208;
  v8 = self;
  v9 = &v10;
  v2 = v5;
  os_unfair_lock_lock(&mutationLock);
  v6(v2);
  os_unfair_lock_unlock(&mutationLock);

  v3 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v3;
}

- (unint64_t)downloaderDSID
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __50___LSApplicationSensitiveDataProxy_downloaderDSID__block_invoke;
  v7 = &unk_1E6A1A208;
  v8 = self;
  v9 = &v10;
  v2 = v5;
  os_unfair_lock_lock(&mutationLock);
  v6(v2);
  os_unfair_lock_unlock(&mutationLock);

  v3 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v3;
}

- (unint64_t)familyID
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __44___LSApplicationSensitiveDataProxy_familyID__block_invoke;
  v7 = &unk_1E6A1A208;
  v8 = self;
  v9 = &v10;
  v2 = v5;
  os_unfair_lock_lock(&mutationLock);
  v6(v2);
  os_unfair_lock_unlock(&mutationLock);

  v3 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v3;
}

@end