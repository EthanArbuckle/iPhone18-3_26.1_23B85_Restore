@interface SpokenContentDetectLanguagesSwiftUI
- (SpokenContentDetectLanguagesSwiftUI)initWithCoder:(id)coder;
- (SpokenContentDetectLanguagesSwiftUI)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation SpokenContentDetectLanguagesSwiftUI

- (id)makeController
{
  sub_19B334();
  sub_17C62C();
  v2 = sub_19B344();

  return v2;
}

- (SpokenContentDetectLanguagesSwiftUI)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for SpokenContentDetectLanguagesSwiftUI();
  v9 = [(SpokenContentDetectLanguagesSwiftUI *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (SpokenContentDetectLanguagesSwiftUI)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SpokenContentDetectLanguagesSwiftUI();
  coderCopy = coder;
  v5 = [(SpokenContentDetectLanguagesSwiftUI *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end