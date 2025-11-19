@interface SoundAndNameRecognitionController
- (_TtC21AccessibilitySettings33SoundAndNameRecognitionController)initWithCoder:(id)a3;
- (_TtC21AccessibilitySettings33SoundAndNameRecognitionController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
@end

@implementation SoundAndNameRecognitionController

- (_TtC21AccessibilitySettings33SoundAndNameRecognitionController)initWithNibName:(id)a3 bundle:(id)a4
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

  v12.receiver = self;
  v12.super_class = type metadata accessor for SoundAndNameRecognitionController();
  v9 = [(SoundAndNameRecognitionController *)&v12 initWithNibName:v7 bundle:a4];

  v10 = v9;
  sub_152818();

  return v10;
}

- (_TtC21AccessibilitySettings33SoundAndNameRecognitionController)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for SoundAndNameRecognitionController();
  v4 = a3;
  v5 = [(SoundAndNameRecognitionController *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_152818();
  }

  return v6;
}

- (id)specifiers
{
  v2 = self;
  v3 = sub_152AA4();

  if (v3)
  {
    v4.super.isa = sub_19C094().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

@end