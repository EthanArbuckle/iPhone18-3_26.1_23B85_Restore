@interface PosterEditor
- (BOOL)editorShouldBeginFinalization:(id)a3;
- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5;
- (id)gradientHomeScreenColorPickerConfigurationForEditor:(id)a3;
- (id)initialColorsForEditor:(id)a3;
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)solidColorHomeScreenColorPickerConfigurationForEditor:(id)a3;
- (void)editor:(id)a3 depthEffectDisallowedDidChange:(BOOL)a4;
- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5;
- (void)editor:(id)a3 didUpdateColors:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidDelayFinalizationForBackgroundTask:(id)a3;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation PosterEditor

- (BOOL)editorShouldBeginFinalization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000B6D8();
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000B828();
}

- (id)looksForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000B9C4();

  sub_1000042B4(0, &unk_10004A600, PREditingLook_ptr);
  v6.super.isa = sub_10002F4A4().super.isa;

  return v6.super.isa;
}

- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_10000BFB0(v8, v9, a5);
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000C178();

  v6 = sub_10002F3D4();

  return v6;
}

- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_10000C300();

  return v10;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10000C700(v8, a4, v9);

  swift_unknownObjectRelease();
}

- (id)solidColorHomeScreenColorPickerConfigurationForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000C9DC();
  v7 = v6;

  return v7;
}

- (id)gradientHomeScreenColorPickerConfigurationForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000CA54();
  v7 = v6;

  return v7;
}

- (id)initialColorsForEditor:(id)a3
{
  sub_1000042B4(0, &qword_10004A620, UIColor_ptr);
  v3.super.isa = sub_10002F4A4().super.isa;

  return v3.super.isa;
}

- (void)editor:(id)a3 didUpdateColors:(id)a4
{
  sub_1000042B4(0, &qword_10004A620, UIColor_ptr);
  sub_10002F4C4();
}

- (void)editor:(id)a3 depthEffectDisallowedDidChange:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_10000CCA0();
}

- (void)editorDidDelayFinalizationForBackgroundTask:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000CE20();
}

@end