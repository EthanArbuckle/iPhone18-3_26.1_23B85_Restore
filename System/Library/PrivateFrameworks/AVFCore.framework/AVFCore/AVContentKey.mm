@interface AVContentKey
+ (AVContentKey)contentKeyWithSpecifier:(id)specifier cryptor:(OpaqueFigCPECryptor *)cryptor contentKeyBoss:(OpaqueFigContentKeyBoss *)boss contentKeySpecifier:(OpaqueFigContentKeySpecifier *)keySpecifier;
- (AVContentKey)initWithSpecifier:(id)specifier cryptor:(OpaqueFigCPECryptor *)cryptor contentKeyBoss:(OpaqueFigContentKeyBoss *)boss contentKeySpecifier:(OpaqueFigContentKeySpecifier *)keySpecifier;
- (OpaqueFigCPECryptor)_cryptorForFormatDescription:(opaqueCMFormatDescription *)description error:(id *)error;
- (void)dealloc;
- (void)revoke;
@end

@implementation AVContentKey

- (AVContentKey)initWithSpecifier:(id)specifier cryptor:(OpaqueFigCPECryptor *)cryptor contentKeyBoss:(OpaqueFigContentKeyBoss *)boss contentKeySpecifier:(OpaqueFigContentKeySpecifier *)keySpecifier
{
  v15.receiver = self;
  v15.super_class = AVContentKey;
  v10 = [(AVContentKey *)&v15 init];
  if (v10)
  {
    v10->contentKeySpecifier = [specifier copy];
    if (cryptor)
    {
      v11 = CFRetain(cryptor);
    }

    else
    {
      v11 = 0;
    }

    v10->_cryptor = v11;
    if (keySpecifier)
    {
      v12 = CFRetain(keySpecifier);
    }

    else
    {
      v12 = 0;
    }

    v10->_contentKeySpecifier = v12;
    if (boss)
    {
      v13 = CFRetain(boss);
    }

    else
    {
      v13 = 0;
    }

    v10->_keyBoss = v13;
  }

  return v10;
}

- (void)dealloc
{
  cryptor = self->_cryptor;
  if (cryptor)
  {
    CFRelease(cryptor);
  }

  keyBoss = self->_keyBoss;
  if (keyBoss)
  {
    CFRelease(keyBoss);
  }

  contentKeySpecifier = self->_contentKeySpecifier;
  if (contentKeySpecifier)
  {
    CFRelease(contentKeySpecifier);
  }

  v6.receiver = self;
  v6.super_class = AVContentKey;
  [(AVContentKey *)&v6 dealloc];
}

+ (AVContentKey)contentKeyWithSpecifier:(id)specifier cryptor:(OpaqueFigCPECryptor *)cryptor contentKeyBoss:(OpaqueFigContentKeyBoss *)boss contentKeySpecifier:(OpaqueFigContentKeySpecifier *)keySpecifier
{
  v6 = [[AVContentKey alloc] initWithSpecifier:specifier cryptor:cryptor contentKeyBoss:boss contentKeySpecifier:keySpecifier];

  return v6;
}

- (void)revoke
{
  keyBoss = self->_keyBoss;
  contentKeySpecifier = self->_contentKeySpecifier;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v4)
  {

    v4(keyBoss, contentKeySpecifier);
  }
}

- (OpaqueFigCPECryptor)_cryptorForFormatDescription:(opaqueCMFormatDescription *)description error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  cryptor = [(AVContentKey *)self cryptor];
  if (cryptor)
  {
    v8 = cryptor;
    MediaSubType = CMFormatDescriptionGetMediaSubType(description);
    MediaType = CMFormatDescriptionGetMediaType(description);
    if ([(NSString *)[(AVContentKeySpecifier *)[(AVContentKey *)self contentKeySpecifier] keySystem] isEqual:@"FairPlayStreaming"])
    {
      if (MediaSubType == 1903587385)
      {
        goto LABEL_8;
      }

      if (clientCanDecryptContentKey_getBrowserEngineOnce != -1)
      {
        [AVContentKey(SwiftOverlay_Internal) _cryptorForFormatDescription:error:];
      }

      if (!clientCanDecryptContentKey_browserEngineAllowedToDecrypt && MediaType == 1936684398)
      {
LABEL_8:
        cryptor2 = [(AVContentKey *)self cryptor];
        v16 = *MEMORY[0x1E695E4C0];
        v12 = *(CMBaseObjectGetVTable() + 16);
        if (*v12 >= 6uLL)
        {
          v13 = v12[19];
          if (v13)
          {
            v13(cryptor2, *MEMORY[0x1E6961090], 1903587385, *MEMORY[0x1E695E480], &v16);
          }
        }

        if (FigCFEqual())
        {
LABEL_12:
          v14 = 0;
          if (!error)
          {
            return v8;
          }

          goto LABEL_18;
        }
      }

      else if (clientCanDecryptContentKey_browserEngineAllowedToDecrypt)
      {
        goto LABEL_12;
      }
    }

    v14 = AVLocalizedErrorWithUnderlyingOSStatus(-12161, 0);
  }

  else
  {
    v17 = *MEMORY[0x1E695E618];
    v18[0] = @"Content key is not valid";
    v14 = AVLocalizedError(@"AVFoundationErrorDomain", -11889, [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1]);
  }

  v8 = 0;
  if (error)
  {
LABEL_18:
    *error = v14;
  }

  return v8;
}

@end