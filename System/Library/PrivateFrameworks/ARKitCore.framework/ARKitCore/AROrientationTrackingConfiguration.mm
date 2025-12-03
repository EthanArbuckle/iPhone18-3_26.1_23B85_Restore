@interface AROrientationTrackingConfiguration
+ (BOOL)supportsFrameSemantics:(unint64_t)semantics;
+ (id)_querySupportedVideoFormats;
+ (id)supportedVideoFormats;
- (AROrientationTrackingConfiguration)init;
- (id)description;
@end

@implementation AROrientationTrackingConfiguration

- (AROrientationTrackingConfiguration)init
{
  v4.receiver = self;
  v4.super_class = AROrientationTrackingConfiguration;
  initPrivate = [(ARConfiguration *)&v4 initPrivate];
  if (initPrivate && ARShouldSupport1440pAndAutofocus())
  {
    [(ARConfiguration *)initPrivate setAutoFocusEnabled:1];
  }

  return initPrivate;
}

+ (id)supportedVideoFormats
{
  if (supportedVideoFormats_supportedFormats && ![supportedVideoFormats_supportedFormats count])
  {
    _querySupportedVideoFormats = [self _querySupportedVideoFormats];
    v4 = supportedVideoFormats_supportedFormats;
    supportedVideoFormats_supportedFormats = _querySupportedVideoFormats;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AROrientationTrackingConfiguration_supportedVideoFormats__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportedVideoFormats_onceToken_0 != -1)
  {
    dispatch_once(&supportedVideoFormats_onceToken_0, block);
  }

  v5 = supportedVideoFormats_supportedFormats;
  if (([objc_opt_class() shouldProvideX420VideoFormat] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_55];
    v7 = [v5 filteredArrayUsingPredicate:v6];

    v5 = v7;
  }

  if (([objc_opt_class() shouldProvideNonBinnedVideoFormats] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_3];
    v9 = [v5 filteredArrayUsingPredicate:v8];

    v5 = v9;
  }

  return v5;
}

void __59__AROrientationTrackingConfiguration_supportedVideoFormats__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormats];
  v2 = supportedVideoFormats_supportedFormats;
  supportedVideoFormats_supportedFormats = v1;
}

uint64_t __59__AROrientationTrackingConfiguration_supportedVideoFormats__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 deviceFormat];
  v3 = [v2 isVideoBinned];

  return v3;
}

+ (id)_querySupportedVideoFormats
{
  v2 = objc_opt_new();
  v3 = [ARVideoFormat supportedVideoFormatsForDevicePosition:1 deviceType:*MEMORY[0x1E6986950]];
  [v2 addObjectsFromArray:v3];

  if (ARLinkedOnOrAfterSydney())
  {
    v4 = +[ARVideoFormat supportedVideoFormatsForStillImageCapture];
    [v2 addObjectsFromArray:v4];

    v5 = +[ARVideoFormat supportedVideoFormatsForHiResOrX420];
    [v2 addObjectsFromArray:v5];
  }

  return v2;
}

+ (BOOL)supportsFrameSemantics:(unint64_t)semantics
{
  v4 = objc_opt_class();

  return [v4 supportsFrameSemantics:semantics];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  isAutoFocusEnabled = [(ARConfiguration *)self isAutoFocusEnabled];
  v8 = @"Disabled";
  if (isAutoFocusEnabled)
  {
    v8 = @"Enabled";
  }

  [v6 appendFormat:@" autoFocus=%@", v8];
  descriptionWithoutBrackets = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:descriptionWithoutBrackets];

  [v6 appendString:@">"];

  return v6;
}

@end