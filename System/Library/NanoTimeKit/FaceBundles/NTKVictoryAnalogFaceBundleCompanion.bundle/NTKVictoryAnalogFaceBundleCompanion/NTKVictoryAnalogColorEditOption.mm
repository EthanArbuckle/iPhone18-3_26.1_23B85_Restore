@interface NTKVictoryAnalogColorEditOption
+ (id)_orderedValuesForDevice:(id)device;
- (BOOL)optionExistsInDevice:(id)device;
@end

@implementation NTKVictoryAnalogColorEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2160;
  v5[3] = &unk_C408;
  v5[4] = self;
  v3 = sub_2160(v5, device);

  return v3;
}

- (BOOL)optionExistsInDevice:(id)device
{
  deviceCopy = device;
  if ((![deviceCopy supportsPDRCapability:3503302961] || NTKGizmoOrCompanionAreRussian()) && -[NTKVictoryAnalogColorEditOption victoryColor](self, "victoryColor") == &dword_1C + 2)
  {
    v5 = 0;
  }

  else if ([deviceCopy supportsPDRCapability:753405533])
  {
    v5 = 1;
  }

  else
  {
    v6 = _NTKNewToGraceEVictoryColors();
    v7 = [v6 containsIndex:{-[NTKVictoryAnalogColorEditOption victoryColor](self, "victoryColor")}];

    v5 = v7 ^ 1;
  }

  return v5 & 1;
}

@end