@interface NTKSalmonColorEditOption
+ (id)_orderedValuesForDevice:(id)a3;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKSalmonColorEditOption

- (id)localizedName
{
  v2 = [(NTKSalmonColorEditOption *)self pigmentEditOption];
  v3 = [v2 localizedName];

  return v3;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_507C;
  v5[3] = &unk_38A28;
  v5[4] = a1;
  v3 = sub_507C(v5, a3);

  return v3;
}

- (id)pigmentEditOption
{
  v3 = [(NTKSalmonColorEditOption *)self color]- 3000;
  if (v3 > 8)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v4 = qword_35ED0[v3];
    v5 = [NTKCaliforniaColorEditOption colorNameForColor:qword_35E88[v3]];
    v6 = [NTKCaliforniaColorEditOption colorNameForColor:v4];
    v7 = NTKNameForDuotones();
    if (v7)
    {
      v8 = v7;
      v9 = [[NTKPigmentEditOption alloc] initWithOptionName:v7 collectionName:@"gmt-evergreen"];

      goto LABEL_6;
    }
  }

  v11.receiver = self;
  v11.super_class = NTKSalmonColorEditOption;
  v9 = [(NTKSalmonColorEditOption *)&v11 pigmentEditOption];
LABEL_6:

  return v9;
}

@end