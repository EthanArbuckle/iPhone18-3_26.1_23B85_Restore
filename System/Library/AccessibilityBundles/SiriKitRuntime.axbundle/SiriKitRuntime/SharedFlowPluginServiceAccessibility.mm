@interface SharedFlowPluginServiceAccessibility
- (void)loadFlowPluginWithBundleId:(id)id bundlePath:(id)path rcId:(id)rcId hypothesisId:(id)hypothesisId reply:(id)reply;
@end

@implementation SharedFlowPluginServiceAccessibility

- (void)loadFlowPluginWithBundleId:(id)id bundlePath:(id)path rcId:(id)rcId hypothesisId:(id)hypothesisId reply:(id)reply
{
  idCopy = id;
  pathCopy = path;
  rcIdCopy = rcId;
  hypothesisIdCopy = hypothesisId;
  replyCopy = reply;
  v17 = objc_opt_new();
  isClarityBoardEnabled = [v17 isClarityBoardEnabled];

  if (isClarityBoardEnabled)
  {
    mEMORY[0x29EDC0B48] = [MEMORY[0x29EDC0B48] sharedInstance];
    applicationBundleIdentifiers = [mEMORY[0x29EDC0B48] applicationBundleIdentifiers];

    if (!AXIsPluginAllowedInClarity())
    {
      replyCopy[2](replyCopy, 0);

      goto LABEL_5;
    }
  }

  v21.receiver = self;
  v21.super_class = SharedFlowPluginServiceAccessibility;
  [(SharedFlowPluginServiceAccessibility *)&v21 loadFlowPluginWithBundleId:idCopy bundlePath:pathCopy rcId:rcIdCopy hypothesisId:hypothesisIdCopy reply:replyCopy];
LABEL_5:
}

@end