@interface LiveSpeechSwiftUI
- (LiveSpeechSwiftUI)initWithCoder:(id)coder;
- (LiveSpeechSwiftUI)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation LiveSpeechSwiftUI

- (id)makeController
{
  sub_23BD06214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D20, &unk_23BD097B0);
  sub_23BCFEB50();
  v2 = sub_23BD06224();

  return v2;
}

- (LiveSpeechSwiftUI)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_23BD06394();
    bundleCopy = bundle;
    v7 = sub_23BD06384();
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