@interface SoundAndNameRecognitionController
- (_TtC21AccessibilitySettings33SoundAndNameRecognitionController)initWithCoder:(id)coder;
- (_TtC21AccessibilitySettings33SoundAndNameRecognitionController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
@end

@implementation SoundAndNameRecognitionController

- (_TtC21AccessibilitySettings33SoundAndNameRecognitionController)initWithNibName:(id)name bundle:(id)bundle
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

  v12.receiver = self;
  v12.super_class = type metadata accessor for SoundAndNameRecognitionController();
  v9 = [(SoundAndNameRecognitionController *)&v12 initWithNibName:v7 bundle:bundle];

  v10 = v9;
  sub_152818();

  return v10;
}

- (_TtC21AccessibilitySettings33SoundAndNameRecognitionController)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for SoundAndNameRecognitionController();
  coderCopy = coder;
  v5 = [(SoundAndNameRecognitionController *)&v9 initWithCoder:coderCopy];
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
  selfCopy = self;
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