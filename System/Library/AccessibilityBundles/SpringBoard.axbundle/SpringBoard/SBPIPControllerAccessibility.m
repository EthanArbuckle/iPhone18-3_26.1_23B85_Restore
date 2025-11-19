@interface SBPIPControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)a3 scenePersistenceIdentifier:(id)a4;
- (id)_axPegasusController;
- (void)_axDidDismissPIP;
- (void)_destroyWindowAndRootViewControllerIfPossible;
- (void)setPictureInPictureWindowsHidden:(BOOL)a3 forReason:(id)a4;
@end

@implementation SBPIPControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PGPictureInPictureController"];
  [v3 validateClass:@"PGPictureInPictureApplication"];
  [v3 validateClass:@"PGPictureInPictureController" hasInstanceMethod:@"activePictureInPictureApplication" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PGPictureInPictureApplication" hasInstanceMethod:@"processIdentifier" withFullSignature:{"i", 0}];
  [v3 validateClass:@"SBPIPPegasusAdapter" hasInstanceVariable:@"_pegasusController" withType:"PGPictureInPictureController"];
  [v3 validateClass:@"SBPIPController" hasInstanceVariable:@"_adapter" withType:"<SBPIPControllerAdapter>"];
  [v3 validateClass:@"SBPIPController" hasInstanceMethod:@"setPictureInPictureWindowsHidden:forReason:" withFullSignature:{"v", "B", "@", 0}];
  [v3 validateClass:@"SBPIPController" hasInstanceMethod:@"shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:scenePersistenceIdentifier:" withFullSignature:{"B", "i", "@", 0}];
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

- (BOOL)shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)a3 scenePersistenceIdentifier:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(SBPIPControllerAccessibility *)self _axPegasusController];
  v8 = [v7 safeValueForKey:@"activePictureInPictureApplication"];
  [v8 safeIntForKey:@"processIdentifier"];

  AXSetPipPid();
  v10.receiver = self;
  v10.super_class = SBPIPControllerAccessibility;
  LOBYTE(v4) = [(SBPIPControllerAccessibility *)&v10 shouldStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:v4 scenePersistenceIdentifier:v6];

  return v4;
}

- (void)_axDidDismissPIP
{
  AXSetPipPid();
  v2 = [MEMORY[0x29EDBDFA8] server];
  [v2 didPotentiallyDismissNonExclusiveSystemUI];
}

- (void)setPictureInPictureWindowsHidden:(BOOL)a3 forReason:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBPIPControllerAccessibility;
  [(SBPIPControllerAccessibility *)&v8 setPictureInPictureWindowsHidden:a3 forReason:a4];
  if (a3)
  {
    [(SBPIPControllerAccessibility *)self _axDidDismissPIP];
  }

  else
  {
    v6 = [(SBPIPControllerAccessibility *)self _axPegasusController];
    v7 = [v6 safeValueForKey:@"activePictureInPictureApplication"];
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