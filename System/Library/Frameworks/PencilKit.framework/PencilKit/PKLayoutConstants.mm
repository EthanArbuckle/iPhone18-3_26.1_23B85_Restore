@interface PKLayoutConstants
+ (CGSize)inkThicknessButtonSize;
+ (CGSize)strokeWeightButtonSize;
+ (void)initialize;
@end

@implementation PKLayoutConstants

+ (CGSize)strokeWeightButtonSize
{
  v2 = *&qword_1ED6A5348;
  v3 = unk_1ED6A5350;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (void)initialize
{
  v2 = _UISolariumEnabled();
  v3 = 12.0;
  v4 = 22.0;
  if (v2)
  {
    v3 = 14.0;
  }

  else
  {
    v4 = 12.0;
  }

  v5 = 34.0;
  if (!v2)
  {
    v5 = 9.0;
  }

  _MergedGlobals_158 = *&v4;
  qword_1ED6A5320 = *&v3;
  v6 = 10.0;
  if (!v2)
  {
    v6 = 9.0;
  }

  qword_1ED6A5328 = *&v5;
  qword_1ED6A5330 = *&v6;
  if (v2)
  {
    v7 = 38.0;
  }

  else
  {
    v7 = 32.0;
  }

  qword_1ED6A5338 = *&v7;
  unk_1ED6A5340 = *&v7;
  qword_1ED6A5348 = *&v7;
  unk_1ED6A5350 = *&v7;
}

+ (CGSize)inkThicknessButtonSize
{
  v2 = *&qword_1ED6A5338;
  v3 = unk_1ED6A5340;
  result.height = v3;
  result.width = v2;
  return result;
}

@end