@interface SCATSpeechSwiftUI
- (SCATSpeechSwiftUI)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation SCATSpeechSwiftUI

- (id)makeController
{
  sub_19B334();
  type metadata accessor for SCATSpeechView(0);
  sub_16870C(&qword_2B8E30, type metadata accessor for SCATSpeechView);
  v2 = sub_19B344();

  return v2;
}

- (SCATSpeechSwiftUI)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_19BFE4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return SCATSpeechSwiftUI.init(nibName:bundle:)(v5, v7, bundle);
}

@end