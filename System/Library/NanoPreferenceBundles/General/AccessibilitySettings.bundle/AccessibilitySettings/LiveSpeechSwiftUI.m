@interface LiveSpeechSwiftUI
- (LiveSpeechSwiftUI)initWithCoder:(id)a3;
- (LiveSpeechSwiftUI)initWithNibName:(id)a3 bundle:(id)a4;
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

- (LiveSpeechSwiftUI)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for LiveSpeechSwiftUI();
  v9 = [(LiveSpeechSwiftUI *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (LiveSpeechSwiftUI)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LiveSpeechSwiftUI();
  v4 = a3;
  v5 = [(LiveSpeechSwiftUI *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end