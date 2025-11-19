@interface IIO
@end

@implementation IIO

uint64_t __IIO_OSAppleInternalBuild_block_invoke()
{
  result = os_variant_has_internal_content();
  IIO_OSAppleInternalBuild::is_internal = result;
  return result;
}

const char *__IIO_LoadHEIFSymbols_block_invoke_4()
{
  v8 = *MEMORY[0x1E69E9840];
  strcpy(__path, "/System/Library/Frameworks/VideoToolbox.framework/VideoToolbox");
  v0 = dlopen(__path, 257);
  if (v0)
  {
    v1 = v0;
    gFunc_VTAreVideoDecodersRunningInProcess = dlsym(v0, "VTAreVideoDecodersRunningInProcess");
    if (!gFunc_VTAreVideoDecodersRunningInProcess)
    {
      v2 = dlerror();
      printf("❌  failed to load 'VTAreVideoDecodersRunningInProcess' [%s]\n", v2);
    }

    gFunc_VTPixelTransferSessionCreate = dlsym(v1, "VTPixelTransferSessionCreate");
    if (!gFunc_VTPixelTransferSessionCreate)
    {
      v3 = dlerror();
      printf("❌  failed to load 'VTPixelTransferSessionCreate' [%s]\n", v3);
    }

    result = dlsym(v1, "VTPixelTransferSessionTransferImage");
    gFunc_VTPixelTransferSessionTransferImage = result;
    if (!result)
    {
      v5 = dlerror();
      return printf("❌  failed to load 'VTPixelTransferSessionTransferImage' [%s]\n", v5);
    }
  }

  else
  {
    v6 = dlerror();
    return LogError("IIOLoadVideoToolboxSymbols", 271, "❌  Failed to load %s  [%s]\n", __path, v6);
  }

  return result;
}

void __IIO_HardwareDecoderDefaultValue_block_invoke()
{
  v0 = getenv("IIO_use_hw_decoder");
  if (v0)
  {
    v1 = *v0 != 48 || v0[1];
  }

  else
  {
    v2 = CFPreferencesCopyValue(@"IIO_use_hw_decoder", @"com.apple.ImageIO", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (!v2)
    {
      return;
    }

    IIONumber::IIONumber(v3, v2);
    v1 = IIONumber::uint8Num(v3) != 0;
    IIONumber::~IIONumber(v3);
  }

  IIO_HardwareDecoderDefaultValue::hwDecoderDefaultValue = v1;
}

const char *__IIO_CreateIdentityToken_block_invoke()
{
  result = task_create_identity_token(*MEMORY[0x1E69E9A60], &IIO_CreateIdentityToken::clientTokenID);
  if (result)
  {
    return ImageIOLog("❌ ERROR: failed to create token. 'task_create_identity_token' returned %ld", result);
  }

  return result;
}

void __IIO_HardwareEncoderDefaultValue_block_invoke()
{
  v0 = getenv("IIO_use_hw_encoder");
  if (v0)
  {
    v1 = *v0 != 48 || v0[1];
  }

  else
  {
    v2 = CFPreferencesCopyValue(@"IIO_use_hw_encoder", @"com.apple.ImageIO", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (!v2)
    {
      return;
    }

    IIONumber::IIONumber(v3, v2);
    v1 = IIONumber::uint8Num(v3) != 0;
    IIONumber::~IIONumber(v3);
  }

  IIO_HardwareEncoderDefaultValue::hwEncoderDefaultValue = v1;
}

@end