@interface SpokenContentSpeechSwiftUI
- (SpokenContentSpeechSwiftUI)initWithCoder:(id)coder;
- (SpokenContentSpeechSwiftUI)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation SpokenContentSpeechSwiftUI

- (id)makeController
{
  sub_19B334();
  sub_15510C();
  v2 = sub_19B344();

  return v2;
}

- (SpokenContentSpeechSwiftUI)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for SpokenContentSpeechSwiftUI();
  v9 = [(SpokenContentSpeechSwiftUI *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (SpokenContentSpeechSwiftUI)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SpokenContentSpeechSwiftUI();
  coderCopy = coder;
  v5 = [(SpokenContentSpeechSwiftUI *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end