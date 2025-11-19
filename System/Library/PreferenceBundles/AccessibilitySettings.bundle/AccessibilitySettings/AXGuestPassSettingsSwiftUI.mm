@interface AXGuestPassSettingsSwiftUI
- (AXGuestPassSettingsSwiftUI)initWithCoder:(id)a3;
- (AXGuestPassSettingsSwiftUI)initWithNibName:(id)a3 bundle:(id)a4;
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

- (AXGuestPassSettingsSwiftUI)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_19BFE4();
    v6 = a4;
    v7 = sub_19BFB4();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for GuestPassSettingsSwiftUI();
  v9 = [(AXGuestPassSettingsSwiftUI *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (AXGuestPassSettingsSwiftUI)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GuestPassSettingsSwiftUI();
  v4 = a3;
  v5 = [(AXGuestPassSettingsSwiftUI *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end