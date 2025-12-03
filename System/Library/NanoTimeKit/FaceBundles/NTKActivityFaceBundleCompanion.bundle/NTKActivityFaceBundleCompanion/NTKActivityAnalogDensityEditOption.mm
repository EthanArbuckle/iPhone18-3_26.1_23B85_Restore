@interface NTKActivityAnalogDensityEditOption
- (id)localizedName;
@end

@implementation NTKActivityAnalogDensityEditOption

- (id)localizedName
{
  density = [(NTKActivityAnalogDensityEditOption *)self density];
  if (density == &dword_0 + 3)
  {
    v3 = @"EDIT_OPTION_LABEL_ANALOG_DENSITY_SUBDIALS";
    v4 = @"Subdials";
    goto LABEL_5;
  }

  if (density == &dword_0 + 1)
  {
    v3 = @"EDIT_OPTION_LABEL_ANALOG_DENSITY_RINGS";
    v4 = @"Rings";
LABEL_5:
    v5 = [NTKActivityAnalogFaceBundle localizedStringForKey:v3 comment:v4];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end