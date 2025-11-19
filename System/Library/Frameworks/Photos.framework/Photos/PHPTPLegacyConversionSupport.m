@interface PHPTPLegacyConversionSupport
- (PHPTPLegacyConversionSupport)init;
@end

@implementation PHPTPLegacyConversionSupport

- (PHPTPLegacyConversionSupport)init
{
  v8.receiver = self;
  v8.super_class = PHPTPLegacyConversionSupport;
  v2 = [(PHPTPLegacyConversionSupport *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mediaFormatConversionManager = v2->_mediaFormatConversionManager;
    v2->_mediaFormatConversionManager = v3;

    v5 = [MEMORY[0x1E69C0700] legacyCapabilities];
    peerMediaCapabilities = v2->_peerMediaCapabilities;
    v2->_peerMediaCapabilities = v5;
  }

  return v2;
}

@end