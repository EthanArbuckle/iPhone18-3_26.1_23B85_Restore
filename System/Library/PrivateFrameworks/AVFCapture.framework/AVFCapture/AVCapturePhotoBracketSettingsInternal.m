@interface AVCapturePhotoBracketSettingsInternal
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AVCapturePhotoBracketSettingsInternal

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    *(v4 + 8) = self->bracketedSettings;
    *(v4 + 16) = self->lensStabilizationEnabled;
  }

  return v4;
}

@end