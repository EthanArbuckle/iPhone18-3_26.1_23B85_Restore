@interface AXGuestPassSettingsSwiftUI
- (AXGuestPassSettingsSwiftUI)initWithCoder:(id)coder;
- (AXGuestPassSettingsSwiftUI)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation AXGuestPassSettingsSwiftUI

- (id)makeController
{
  sub_19B334();
  sub_19B2A4();
  sub_16570C();
  v2 = sub_19B344();

  return v2;
}

- (AXGuestPassSettingsSwiftUI)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_19BFE4();
    bundleCopy = bundle;
    v7 = sub_19BFB4();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for GuestPassSettingsSwiftUI();
  v9 = [(AXGuestPassSettingsSwiftUI *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (AXGuestPassSettingsSwiftUI)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GuestPassSettingsSwiftUI();
  coderCopy = coder;
  v5 = [(AXGuestPassSettingsSwiftUI *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end