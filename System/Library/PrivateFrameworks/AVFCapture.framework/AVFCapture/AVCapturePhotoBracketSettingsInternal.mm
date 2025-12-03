@interface AVCapturePhotoBracketSettingsInternal
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AVCapturePhotoBracketSettingsInternal

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    *(v4 + 8) = self->bracketedSettings;
    *(v4 + 16) = self->lensStabilizationEnabled;
  }

  return v4;
}

@end