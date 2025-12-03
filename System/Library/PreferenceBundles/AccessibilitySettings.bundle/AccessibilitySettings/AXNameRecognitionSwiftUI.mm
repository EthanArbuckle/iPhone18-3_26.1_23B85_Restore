@interface AXNameRecognitionSwiftUI
- (AXNameRecognitionSwiftUI)initWithCoder:(id)coder;
- (AXNameRecognitionSwiftUI)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation AXNameRecognitionSwiftUI

- (id)makeController
{
  sub_19B334();
  sub_19B0C4();
  sub_153894(&qword_2B81E0, &type metadata accessor for NameRecognitionSettingsView);
  v2 = sub_19B344();

  return v2;
}

- (AXNameRecognitionSwiftUI)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for NameRecognitionSettingsSwiftUI();
  v9 = [(AXNameRecognitionSwiftUI *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (AXNameRecognitionSwiftUI)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NameRecognitionSettingsSwiftUI();
  coderCopy = coder;
  v5 = [(AXNameRecognitionSwiftUI *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end