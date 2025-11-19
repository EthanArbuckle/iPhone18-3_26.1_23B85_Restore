@interface AEGridOverlayConfiguration
- (AEGridOverlayConfiguration)initWithShowCloudDecoration:(BOOL)a3 showVideoDecoration:(BOOL)a4 showLoopDecoration:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
@end

@implementation AEGridOverlayConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 showVideoDecoration];
    if (v6 == [(AEGridOverlayConfiguration *)self showVideoDecoration])
    {
      v8 = [v5 showCloudDecoration];
      v7 = v8 ^ [(AEGridOverlayConfiguration *)self showCloudDecoration]^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (AEGridOverlayConfiguration)initWithShowCloudDecoration:(BOOL)a3 showVideoDecoration:(BOOL)a4 showLoopDecoration:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = AEGridOverlayConfiguration;
  result = [(AEGridOverlayConfiguration *)&v9 init];
  if (result)
  {
    result->_showVideoDecoration = a4;
    result->_showCloudDecoration = a3;
    result->_showLoopDecoration = a5;
  }

  return result;
}

@end