@interface VoiceOverSpeechSwiftUI
- (VoiceOverSpeechSwiftUI)initWithCoder:(id)a3;
- (VoiceOverSpeechSwiftUI)initWithNibName:(id)a3 bundle:(id)a4;
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

- (VoiceOverSpeechSwiftUI)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_23BD06394();
    v6 = a4;
    v7 = sub_23BD06384();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for VoiceOverSpeechSwiftUI();
  v9 = [(VoiceOverSpeechSwiftUI *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (VoiceOverSpeechSwiftUI)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VoiceOverSpeechSwiftUI();
  v4 = a3;
  v5 = [(VoiceOverSpeechSwiftUI *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end