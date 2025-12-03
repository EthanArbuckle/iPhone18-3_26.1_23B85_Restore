@interface AEGridOverlayConfiguration
- (AEGridOverlayConfiguration)initWithShowCloudDecoration:(BOOL)decoration showVideoDecoration:(BOOL)videoDecoration showLoopDecoration:(BOOL)loopDecoration;
- (BOOL)isEqual:(id)equal;
@end

@implementation AEGridOverlayConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    showVideoDecoration = [v5 showVideoDecoration];
    if (showVideoDecoration == [(AEGridOverlayConfiguration *)self showVideoDecoration])
    {
      showCloudDecoration = [v5 showCloudDecoration];
      v7 = showCloudDecoration ^ [(AEGridOverlayConfiguration *)self showCloudDecoration]^ 1;
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

- (AEGridOverlayConfiguration)initWithShowCloudDecoration:(BOOL)decoration showVideoDecoration:(BOOL)videoDecoration showLoopDecoration:(BOOL)loopDecoration
{
  v9.receiver = self;
  v9.super_class = AEGridOverlayConfiguration;
  result = [(AEGridOverlayConfiguration *)&v9 init];
  if (result)
  {
    result->_showVideoDecoration = videoDecoration;
    result->_showCloudDecoration = decoration;
    result->_showLoopDecoration = loopDecoration;
  }

  return result;
}

@end