@interface NTKTroutFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)unsafeDailySnapshotKey;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKTroutFace

- (id)unsafeDailySnapshotKey
{
  v6.receiver = self;
  v6.super_class = NTKTroutFace;
  v2 = [(NTKTroutFace *)&v6 unsafeDailySnapshotKey];
  if ([v2 isEqualToString:NTKSensitiveSnapshotKey])
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 stringByAppendingString:@".trout"];
  }

  v4 = v3;

  return v4;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 supportsPDRCapability:3588072423] ^ 1;
  }

  return v4;
}

+ (id)complicationConfiguration
{
  if (qword_46AD8 != -1)
  {
    sub_220B0();
  }

  v3 = qword_46AD0;

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 10)
  {
    v4 = [(NTKTroutFace *)self device:10];
    v5 = [(NTKAlaskanColorEditOption *)NTKTroutColorEditOption optionWithColor:3000 forDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 10)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKTroutFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKTroutFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKTroutFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKTroutFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKTroutFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKTroutFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

@end