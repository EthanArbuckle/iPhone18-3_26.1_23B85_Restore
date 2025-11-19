@interface _LSValidationToken
- (_LSValidationToken)initWithCoder:(id)a3;
- (_LSValidationToken)initWithPayload:(id)a3;
- (id)setOwner:(id *)result;
- (uint64_t)isCorrectForPayload:(uint64_t)a1;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSValidationToken

- (_LSValidationToken)initWithPayload:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _LSValidationToken;
  v5 = [(_LSValidationToken *)&v14 init];
  _LSAssertRunningInServer("[_LSValidationToken initWithPayload:]");
  if (v5)
  {
    v6 = [v4 copy];
    payload = v5->_payload;
    v5->_payload = v6;

    SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, bytes);
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:bytes length:32];
    nonce = v5->_nonce;
    v5->_nonce = v8;

    v10 = _LSValidationTokenComputeHMAC(v5->_payload, v5->_nonce);
    HMAC = v5->_HMAC;
    v5->_HMAC = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)isCorrectForPayload:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    _LSAssertRunningInServer("[_LSValidationToken isCorrectForPayload:]");
    if (*(a1 + 8))
    {
      if (*(a1 + 16))
      {
        v4 = *(a1 + 24);
        if (v4)
        {
          v5 = v4;
          v6 = _LSValidationTokenComputeHMAC(v3, *(a1 + 16));
          if (v6 && (v7 = [v5 length], v7 == objc_msgSend(v6, "length")))
          {
            v8 = timingsafe_bcmp([v5 bytes], objc_msgSend(v6, "bytes"), v7);

            if (!v8)
            {
              a1 = 1;
              goto LABEL_20;
            }
          }

          else
          {
          }
        }
      }
    }

    if ([__LSDefaultsGetSharedInstance() isAppleInternal])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));

      if (WeakRetained)
      {
        v10 = _LSDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(_LSValidationToken *)(a1 + 32) isCorrectForPayload:v10];
        }
      }

      else
      {
        v10 = _LSDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [_LSValidationToken isCorrectForPayload:v10];
        }
      }
    }

    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_LSValidationToken isCorrectForPayload:v11];
    }

    a1 = 0;
  }

LABEL_20:

  return a1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_payload forKey:@"payload"];
  [v4 encodeObject:self->_nonce forKey:@"nonce"];
  [v4 encodeObject:self->_HMAC forKey:@"HMAC"];
}

- (_LSValidationToken)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _LSValidationToken;
  v5 = [(_LSValidationToken *)&v12 init];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    v7 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    v8 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"HMAC"];
    v9 = v8;
    if (v6 && v7 && v8)
    {
      objc_storeStrong(&v5->_payload, v6);
      objc_storeStrong(&v5->_nonce, v7);
      objc_storeStrong(&v5->_HMAC, v9);
      if (![__LSDefaultsGetSharedInstance() isServer] || (-[_LSValidationToken isCorrectForPayload:](v5, v5->_payload) & 1) != 0)
      {
        goto LABEL_10;
      }

      v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[_LSValidationToken initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSValidationToken.mm", 114);
      [v4 failWithError:v10];
    }

    else
    {
      v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4865, 0, "[_LSValidationToken initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSValidationToken.mm", 118);
      [v4 failWithError:v10];
    }

    v5 = 0;
LABEL_10:
  }

  return v5;
}

- (id)setOwner:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 4, a2);
  }

  return result;
}

- (void)isCorrectForPayload:(id *)a1 .cold.1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1);
  v5 = 138543362;
  v6 = WeakRetained;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Token validation failed against object %{public}@.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end