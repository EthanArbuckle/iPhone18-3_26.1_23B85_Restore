@interface SpokenContentDetectLanguagesSwiftUI
- (SpokenContentDetectLanguagesSwiftUI)initWithCoder:(id)a3;
- (SpokenContentDetectLanguagesSwiftUI)initWithNibName:(id)a3 bundle:(id)a4;
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

- (SpokenContentDetectLanguagesSwiftUI)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for SpokenContentDetectLanguagesSwiftUI();
  v9 = [(SpokenContentDetectLanguagesSwiftUI *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (SpokenContentDetectLanguagesSwiftUI)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SpokenContentDetectLanguagesSwiftUI();
  v4 = a3;
  v5 = [(SpokenContentDetectLanguagesSwiftUI *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end