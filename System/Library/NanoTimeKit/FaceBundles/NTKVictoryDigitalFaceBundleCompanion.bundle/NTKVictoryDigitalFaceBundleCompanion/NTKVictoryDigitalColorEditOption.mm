@interface NTKVictoryDigitalColorEditOption
+ (id)_orderedValuesForDevice:(id)device;
- (BOOL)optionExistsInDevice:(id)device;
@end

@implementation NTKVictoryDigitalColorEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_51CC;
  v5[3] = &unk_10510;
  v5[4] = self;
  v3 = sub_51CC(v5, device);

  return v3;
}

- (BOOL)optionExistsInDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:753405533])
  {
    v5 = 1;
  }

  else
  {
    v6 = _NTKNewToGraceEVictoryColors();
    v7 = [v6 containsIndex:{-[NTKVictoryDigitalColorEditOption victoryColor](self, "victoryColor")}];

    v5 = v7 ^ 1;
  }

  return v5;
}

@end