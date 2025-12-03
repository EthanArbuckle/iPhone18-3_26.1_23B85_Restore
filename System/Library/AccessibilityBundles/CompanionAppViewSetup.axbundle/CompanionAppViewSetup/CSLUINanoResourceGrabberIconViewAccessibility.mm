@interface CSLUINanoResourceGrabberIconViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CSLUINanoResourceGrabberIconViewAccessibility

- (id)accessibilityLabel
{
  v11.receiver = self;
  v11.super_class = CSLUINanoResourceGrabberIconViewAccessibility;
  accessibilityLabel = [(CSLUINanoResourceGrabberIconViewAccessibility *)&v11 accessibilityLabel];

  if (accessibilityLabel)
  {
    v10.receiver = self;
    v10.super_class = CSLUINanoResourceGrabberIconViewAccessibility;
    accessibilityLabel2 = [(CSLUINanoResourceGrabberIconViewAccessibility *)&v10 accessibilityLabel];
    goto LABEL_9;
  }

  v5 = [(CSLUINanoResourceGrabberIconViewAccessibility *)self safeValueForKey:@"_bundleID"];
  v6 = AXWatchAppNameForBundleId();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    if (!AXIsInternalInstall())
    {
      accessibilityLabel2 = 0;
      goto LABEL_8;
    }

    _AXAssert();
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Internal only, missing app name: %@", v5];
  }

  accessibilityLabel2 = v8;
LABEL_8:

LABEL_9:

  return accessibilityLabel2;
}

@end