@interface LiveSpeechSwiftUI
- (LiveSpeechSwiftUI)initWithCoder:(id)a3;
- (LiveSpeechSwiftUI)initWithNibName:(id)a3 bundle:(id)a4;
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

- (LiveSpeechSwiftUI)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_19BFE4();
    v6 = a4;
    v7 = sub_19BFB4();
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