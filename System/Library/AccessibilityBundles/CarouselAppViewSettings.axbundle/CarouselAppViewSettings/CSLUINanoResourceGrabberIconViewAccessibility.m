@interface CSLUINanoResourceGrabberIconViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CSLUINanoResourceGrabberIconViewAccessibility

- (id)accessibilityLabel
{
  v11.receiver = self;
  v11.super_class = CSLUINanoResourceGrabberIconViewAccessibility;
  v3 = [(CSLUINanoResourceGrabberIconViewAccessibility *)&v11 accessibilityLabel];

  if (v3)
  {
    v10.receiver = self;
    v10.super_class = CSLUINanoResourceGrabberIconViewAccessibility;
    v4 = [(CSLUINanoResourceGrabberIconViewAccessibility *)&v10 accessibilityLabel];
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
      v4 = 0;
      goto LABEL_8;
    }

    _AXAssert();
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Internal only, missing app name: %@", v5];
  }

  v4 = v8;
LABEL_8:

LABEL_9:

  return v4;
}

@end