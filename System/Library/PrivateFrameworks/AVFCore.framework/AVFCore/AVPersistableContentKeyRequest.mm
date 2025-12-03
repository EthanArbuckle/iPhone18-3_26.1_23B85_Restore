@interface AVPersistableContentKeyRequest
- (NSData)persistableContentKeyFromKeyVendorResponse:(NSData *)keyVendorResponse options:(NSDictionary *)options error:(NSError *)outError;
@end

@implementation AVPersistableContentKeyRequest

- (NSData)persistableContentKeyFromKeyVendorResponse:(NSData *)keyVendorResponse options:(NSDictionary *)options error:(NSError *)outError
{
  v38[1] = *MEMORY[0x1E69E9840];
  v34 = 0;
  if (!keyVendorResponse)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = @"valid keyVendorResponse is required";
    goto LABEL_31;
  }

  if ([(AVContentKeyRequest *)self status:keyVendorResponse]>= AVContentKeyRequestStatusCancelled)
  {
    if (outError)
    {
      v37 = *MEMORY[0x1E695E618];
      v38[0] = @"content key request cancelled or already failed";
      v12 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1]);
      result = 0;
      *outError = v12;
      return result;
    }

    return 0;
  }

  if (![(AVContentKeyRequest *)self _requestID])
  {
    figCryptor = [(AVContentKeyRequest *)self figCryptor];
    if (figCryptor)
    {
      v21 = figCryptor;
      v22 = *MEMORY[0x1E695E4D0];
      v35 = *MEMORY[0x1E6962B30];
      v36 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v24 = *(CMBaseObjectGetVTable() + 16);
      if (*v24 >= 4uLL)
      {
        v25 = v24[12];
        if (v25)
        {
          v26 = v25(v21, keyVendorResponse, v23);
          if (v26)
          {
LABEL_18:
            v18 = v26;
LABEL_11:
            v19 = 0;
            goto LABEL_20;
          }

          v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v27)
          {
            v26 = v27(v21, *MEMORY[0x1E69610F0], *MEMORY[0x1E695E480], &v34);
            goto LABEL_18;
          }
        }
      }

      v19 = 0;
      v18 = -12782;
      goto LABEL_20;
    }

    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D930];
    v31 = @"persistable content key cannot be created at this time";
LABEL_31:
    v32 = [v29 exceptionWithName:v30 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v31, options, outError, v5, v6, v7, v33), 0}];
    objc_exception_throw(v32);
  }

  _copyContentKeyBoss = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  if (_copyContentKeyBoss)
  {
    v15 = _copyContentKeyBoss;
    _requestID = [(AVContentKeyRequest *)self _requestID];
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v17)
    {
      v18 = v17(v15, _requestID, keyVendorResponse, &v34);
    }

    else
    {
      v18 = -12782;
    }

    CFRelease(v15);
    goto LABEL_11;
  }

  v19 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, 0);
  v18 = 0;
LABEL_20:
  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v18)
  {
    v19 = AVLocalizedErrorWithUnderlyingOSStatus(v18, 0);
  }

  if (v19)
  {
    if (outError)
    {
      result = 0;
      *outError = v19;
      return result;
    }

    return 0;
  }

  return v34;
}

@end