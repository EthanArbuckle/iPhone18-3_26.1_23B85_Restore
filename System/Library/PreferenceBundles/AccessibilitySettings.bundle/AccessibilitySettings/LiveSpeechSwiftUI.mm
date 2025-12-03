@interface LiveSpeechSwiftUI
- (LiveSpeechSwiftUI)initWithCoder:(id)coder;
- (LiveSpeechSwiftUI)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation LiveSpeechSwiftUI

- (id)makeController
{
  sub_19B334();
  sub_19B284();
  sub_1661E8();
  v2 = sub_19B344();

  return v2;
}

- (LiveSpeechSwiftUI)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for LiveSpeechSwiftUI();
  v9 = [(LiveSpeechSwiftUI *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (LiveSpeechSwiftUI)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LiveSpeechSwiftUI();
  coderCopy = coder;
  v5 = [(LiveSpeechSwiftUI *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end