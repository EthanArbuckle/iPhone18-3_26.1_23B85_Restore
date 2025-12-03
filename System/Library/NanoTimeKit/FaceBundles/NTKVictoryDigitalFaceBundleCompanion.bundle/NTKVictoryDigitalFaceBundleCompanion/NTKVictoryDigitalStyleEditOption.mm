@interface NTKVictoryDigitalStyleEditOption
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKVictoryDigitalStyleEditOption

- (id)localizedName
{
  style = [(NTKVictoryDigitalStyleEditOption *)self style];
  if (style - 3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_104F8[style - 3];
  }

  return [NTKVictoryDigitalFaceBundle localizedStringForKey:v3 comment:@"style"];
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_16EA0 != -1)
  {
    sub_8498();
  }

  v3 = qword_16E98;

  return v3;
}

@end