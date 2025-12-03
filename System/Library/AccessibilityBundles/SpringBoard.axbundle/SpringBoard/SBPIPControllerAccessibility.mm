@interface SBPIPControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)background scenePersistenceIdentifier:(id)identifier;
- (id)_axPegasusController;
- (void)_axDidDismissPIP;
- (void)_destroyWindowAndRootViewControllerIfPossible;
- (void)setPictureInPictureWindowsHidden:(BOOL)hidden forReason:(id)reason;
@end

@implementation SBPIPControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PGPictureInPictureController"];
  [validationsCopy validateClass:@"PGPictureInPictureApplication"];
  [validationsCopy validateClass:@"PGPictureInPictureController" hasInstanceMethod:@"activePictureInPictureApplication" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PGPictureInPictureApplication" hasInstanceMethod:@"processIdentifier" withFullSignature:{"i", 0}];
  [validationsCopy validateClass:@"SBPIPPegasusAdapter" hasInstanceVariable:@"_pegasusController" withType:"PGPictureInPictureController"];
  [validationsCopy validateClass:@"SBPIPController" hasInstanceVariable:@"_adapter" withType:"<SBPIPControllerAdapter>"];
  [validationsCopy validateClass:@"SBPIPController" hasInstanceMethod:@"setPictureInPictureWindowsHidden:forReason:" withFullSignature:{"v", "B", "@", 0}];
  [validationsCopy validateClass:@"SBPIPController" hasInstanceMethod:@"shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:scenePersistenceIdentifier:" withFullSignature:{"B", "i", "@", 0}];
}

- (id)_axPegasusController
{
  v2 = [(SBPIPControllerAccessibility *)self safeValueForKey:@"_adapter"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 safeValueForKey:@"_pegasusController"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)background scenePersistenceIdentifier:(id)identifier
{
  v4 = *&background;
  identifierCopy = identifier;
  _axPegasusController = [(SBPIPControllerAccessibility *)self _axPegasusController];
  v8 = [_axPegasusController safeValueForKey:@"activePictureInPictureApplication"];
  [v8 safeIntForKey:@"processIdentifier"];

  AXSetPipPid();
  v10.receiver = self;
  v10.super_class = SBPIPControllerAccessibility;
  LOBYTE(v4) = [(SBPIPControllerAccessibility *)&v10 shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:v4 scenePersistenceIdentifier:identifierCopy];

  return v4;
}

- (void)_axDidDismissPIP
{
  AXSetPipPid();
  server = [MEMORY[0x29EDBDFA8] server];
  [server didPotentiallyDismissNonExclusiveSystemUI];
}

- (void)setPictureInPictureWindowsHidden:(BOOL)hidden forReason:(id)reason
{
  v8.receiver = self;
  v8.super_class = SBPIPControllerAccessibility;
  [(SBPIPControllerAccessibility *)&v8 setPictureInPictureWindowsHidden:hidden forReason:reason];
  if (hidden)
  {
    [(SBPIPControllerAccessibility *)self _axDidDismissPIP];
  }

  else
  {
    _axPegasusController = [(SBPIPControllerAccessibility *)self _axPegasusController];
    v7 = [_axPegasusController safeValueForKey:@"activePictureInPictureApplication"];
    [v7 safeIntForKey:@"processIdentifier"];

    AXSetPipPid();
  }
}

- (void)_destroyWindowAndRootViewControllerIfPossible
{
  v3.receiver = self;
  v3.super_class = SBPIPControllerAccessibility;
  [(SBPIPControllerAccessibility *)&v3 _destroyWindowAndRootViewControllerIfPossible];
  [(SBPIPControllerAccessibility *)self _axDidDismissPIP];
}

@end