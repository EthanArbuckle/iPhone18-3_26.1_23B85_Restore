@interface VoiceOverSpeechSwiftUI
- (VoiceOverSpeechSwiftUI)initWithCoder:(id)coder;
- (VoiceOverSpeechSwiftUI)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation VoiceOverSpeechSwiftUI

- (id)makeController
{
  sub_23BD06214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3DE8, &qword_23BD09978);
  sub_23BD04540(&qword_27E1C3DF0, &qword_27E1C3DE8, &qword_23BD09978);
  v2 = sub_23BD06224();

  return v2;
}

- (VoiceOverSpeechSwiftUI)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for VoiceOverSpeechSwiftUI();
  v9 = [(VoiceOverSpeechSwiftUI *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (VoiceOverSpeechSwiftUI)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VoiceOverSpeechSwiftUI();
  coderCopy = coder;
  v5 = [(VoiceOverSpeechSwiftUI *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end