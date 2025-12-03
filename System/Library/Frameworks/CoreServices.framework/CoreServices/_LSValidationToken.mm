@interface _LSValidationToken
- (_LSValidationToken)initWithCoder:(id)coder;
- (_LSValidationToken)initWithPayload:(id)payload;
- (id)setOwner:(id *)result;
- (uint64_t)isCorrectForPayload:(uint64_t)payload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSValidationToken

- (_LSValidationToken)initWithPayload:(id)payload
{
  v16 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v14.receiver = self;
  v14.super_class = _LSValidationToken;
  v5 = [(_LSValidationToken *)&v14 init];
  _LSAssertRunningInServer("[_LSValidationToken initWithPayload:]");
  if (v5)
  {
    v6 = [payloadCopy copy];
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

- (uint64_t)isCorrectForPayload:(uint64_t)payload
{
  v3 = a2;
  if (payload)
  {
    _LSAssertRunningInServer("[_LSValidationToken isCorrectForPayload:]");
    if (*(payload + 8))
    {
      if (*(payload + 16))
      {
        v4 = *(payload + 24);
        if (v4)
        {
          v5 = v4;
          v6 = _LSValidationTokenComputeHMAC(v3, *(payload + 16));
          if (v6 && (v7 = [v5 length], v7 == objc_msgSend(v6, "length")))
          {
            v8 = timingsafe_bcmp([v5 bytes], objc_msgSend(v6, "bytes"), v7);

            if (!v8)
            {
              payload = 1;
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
      WeakRetained = objc_loadWeakRetained((payload + 32));

      if (WeakRetained)
      {
        v10 = _LSDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(_LSValidationToken *)(payload + 32) isCorrectForPayload:v10];
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

    payload = 0;
  }

LABEL_20:

  return payload;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_payload forKey:@"payload"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  [coderCopy encodeObject:self->_HMAC forKey:@"HMAC"];
}

- (_LSValidationToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _LSValidationToken;
  v5 = [(_LSValidationToken *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    v7 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    v8 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"HMAC"];
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
      [coderCopy failWithError:v10];
    }

    else
    {
      v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4865, 0, "[_LSValidationToken initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSValidationToken.mm", 118);
      [coderCopy failWithError:v10];
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