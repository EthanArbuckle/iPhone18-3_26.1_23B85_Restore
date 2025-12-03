@interface AEGridConfiguration
+ (id)configurationForEnvironment:(id)environment;
@end

@implementation AEGridConfiguration

+ (id)configurationForEnvironment:(id)environment
{
  environmentCopy = environment;
  [environmentCopy compactExtensionHeight];
  v5 = v4;
  [environmentCopy headerHeight];
  v7 = v5 - v6;
  [environmentCopy targetBottomMargin];
  v9 = v7 - v8;
  [environmentCopy minimumTileHeight];
  v11 = v10;
  v12 = v10;
  v13 = v10 * 2.0 + 1.0 > v9;
  v14 = 2;
  do
  {
    v15 = v14;
    v16 = v13;
    v14 = 1;
    v13 = 0;
  }

  while (v16);
  v17 = v9 - (v15 - 1);
  if (v10 * v15 < v17)
  {
    [environmentCopy scale];
    v12 = floor(v17 * v18 / v15) / v18;
  }

  v19 = PXFloatGreaterThanFloat();
  if (v19)
  {
    v20 = v11 * 1.25;
  }

  else
  {
    v20 = v12;
  }

  v21 = objc_alloc_init(AEGridConfiguration);
  [(AEGridConfiguration *)v21 setRowCount:v15];
  [(AEGridConfiguration *)v21 setTileHeight:v20];
  [(AEGridConfiguration *)v21 setOversized:v19];

  return v21;
}

@end