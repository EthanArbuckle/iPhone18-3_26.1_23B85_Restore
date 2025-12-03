@interface AXReaderSettingsSwiftUI
- (AXReaderSettingsSwiftUI)initWithCoder:(id)coder;
- (AXReaderSettingsSwiftUI)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation AXReaderSettingsSwiftUI

- (id)makeController
{
  sub_19B334();
  sub_19B2C4();
  sub_1812C4();
  v2 = sub_19B344();

  return v2;
}

- (AXReaderSettingsSwiftUI)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for AXReaderSettingsSwiftUI();
  v9 = [(AXReaderSettingsSwiftUI *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (AXReaderSettingsSwiftUI)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AXReaderSettingsSwiftUI();
  coderCopy = coder;
  v5 = [(AXReaderSettingsSwiftUI *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end