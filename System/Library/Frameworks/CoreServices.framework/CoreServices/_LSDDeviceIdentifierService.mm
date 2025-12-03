@interface _LSDDeviceIdentifierService
+ (id)XPCInterface;
+ (id)vendorNameForDeviceIdentifiersWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data;
+ (void)clearIdentifiersForUninstallationWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data;
@end

@implementation _LSDDeviceIdentifierService

+ (id)XPCInterface
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43___LSDDeviceIdentifierService_XPCInterface__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (+[_LSDDeviceIdentifierService XPCInterface]::once != -1)
  {
    dispatch_once(&+[_LSDDeviceIdentifierService XPCInterface]::once, v4);
  }

  v2 = +[_LSDDeviceIdentifierService XPCInterface]::result;

  return v2;
}

+ (id)vendorNameForDeviceIdentifiersWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data
{
  v5 = 0;
  if (context && unit && data)
  {
    installFailureReason_high = HIDWORD(data->installFailureReason);
    [(_LSDatabase *)context->db store];
    v5 = _CSStringCopyCFString();
    if (v5)
    {
      goto LABEL_5;
    }

    exactIdentifier = data->base.exactIdentifier;
    [(_LSDatabase *)context->db store];
    v11 = _CSStringCopyCFString();
    if (!v11)
    {
      v5 = 0;
      goto LABEL_16;
    }

    v12 = v11;
    if ([v12 hasPrefix:@"com.apple."])
    {
      v13 = @"Apple Inc.";
    }

    else
    {
      v14 = [v12 componentsSeparatedByString:@"."];
      v15 = [v14 mutableCopy];

      if ([v15 count] >= 2)
      {
        [v15 removeLastObject];
        v16 = MEMORY[0x1E696AEC0];
        v17 = [v15 componentsJoinedByString:@"."];
        v13 = [v16 stringWithFormat:@"BundleID:%@", v17];
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BundleID:%@", v12];
      }
    }

    v5 = v13;
    if (v13)
    {
LABEL_5:
      if ((*(&data->_clas + 6) & 0x20) != 0)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Beta:%@", v5];

        v5 = v9;
      }
    }
  }

LABEL_16:

  return v5;
}

+ (void)clearIdentifiersForUninstallationWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data
{
  if (context && unit && data)
  {
    v11 = [self vendorNameForDeviceIdentifiersWithContext:? bundleUnit:? bundleData:?];
    exactIdentifier = data->base.exactIdentifier;
    [(_LSDatabase *)context->db store];
    v9 = _CSStringCopyCFString();
    v10 = [(_LSDService *)self XPCProxyWithErrorHandler:?];
    [v10 clearIdentifiersForUninstallationWithVendorName:v11 bundleIdentifier:v9];
  }
}

@end