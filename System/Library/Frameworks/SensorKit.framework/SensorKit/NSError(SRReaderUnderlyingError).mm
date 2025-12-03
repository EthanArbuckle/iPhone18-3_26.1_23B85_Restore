@interface NSError(SRReaderUnderlyingError)
+ (SRError)errorWithUnderlyingErrorFromExistingError:()SRReaderUnderlyingError;
@end

@implementation NSError(SRReaderUnderlyingError)

+ (SRError)errorWithUnderlyingErrorFromExistingError:()SRReaderUnderlyingError
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  domain = [(SRError *)a3 domain];
  if ([domain isEqualToString:SRErrorDomain])
  {
    code = [(SRError *)v3 code];
    if (code == 8196)
    {
      v6 = [SRError errorWithCode:8196];
    }

    else if (code == 8201)
    {
      v6 = [SRError errorWithCode:8201];
      v7 = qword_1EE02ABA8;
      if (os_log_type_enabled(qword_1EE02ABA8, OS_LOG_TYPE_FAULT))
      {
        v10 = 138543362;
        v11 = v3;
        _os_log_fault_impl(&dword_1C914D000, v7, OS_LOG_TYPE_FAULT, "Invalid authorization request. Requested services are already authorized: %{public}@", &v10, 0xCu);
      }
    }

    else
    {
      v6 = 0;
    }

    v3 = [SRError errorWithCode:4 underlyingError:v6];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

@end