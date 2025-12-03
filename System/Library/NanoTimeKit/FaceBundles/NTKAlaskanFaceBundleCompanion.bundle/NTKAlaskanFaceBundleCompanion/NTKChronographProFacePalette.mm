@interface NTKChronographProFacePalette
- (BOOL)_isCloudBlueColor;
- (BOOL)_isGrayColor;
- (BOOL)_isWhiteColor;
- (BOOL)_shouldUseEvergreenColorScheme;
- (NTKChronographProFacePalette)init;
- (id)_backgroundChronometerMode;
- (id)_dialTicksSecondary;
- (id)_ring;
- (id)_subdialClockTicksSecondary;
@end

@implementation NTKChronographProFacePalette

- (NTKChronographProFacePalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKChronographProFacePalette;
  return [(NTKChronographProFacePalette *)&v5 initWithFaceClass:v3];
}

- (id)_ring
{
  _shouldUseEvergreenColorScheme = [(NTKChronographProFacePalette *)self _shouldUseEvergreenColorScheme];
  primaryColor = [(NTKChronographProFacePalette *)self primaryColor];
  if ((_shouldUseEvergreenColorScheme & 1) == 0)
  {
    v5 = NTKColorByApplyingBlackOverlay();

    primaryColor = v5;
  }

  return primaryColor;
}

- (id)_dialTicksSecondary
{
  dialTicks = [(NTKChronographProFacePalette *)self dialTicks];
  v3 = [dialTicks colorWithAlphaComponent:0.4];

  return v3;
}

- (id)_subdialClockTicksSecondary
{
  subdialClockTicks = [(NTKChronographProFacePalette *)self subdialClockTicks];
  v3 = [subdialClockTicks colorWithAlphaComponent:0.3];

  return v3;
}

- (id)_backgroundChronometerMode
{
  if ([(NTKChronographProFacePalette *)self _shouldUseEvergreenColorScheme])
  {
    [(NTKChronographProFacePalette *)self ring];
  }

  else
  {
    [(NTKChronographProFacePalette *)self primaryColor];
  }
  v3 = ;
  v4 = NTKColorByApplyingBlackOverlay();

  return v4;
}

- (BOOL)_isWhiteColor
{
  pigmentEditOption = [(NTKChronographProFacePalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  if ([fullname isEqualToString:ntk_seasons_spring2015_white])
  {
    v4 = 1;
  }

  else
  {
    v4 = [fullname isEqualToString:ntk_evergreen_white];
  }

  return v4;
}

- (BOOL)_isGrayColor
{
  pigmentEditOption = [(NTKChronographProFacePalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v4 = [fullname isEqualToString:ntk_standard_gray];

  return v4;
}

- (BOOL)_isCloudBlueColor
{
  pigmentEditOption = [(NTKChronographProFacePalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v4 = [fullname isEqualToString:ntk_seasons_summer2021_cloudBlue];

  return v4;
}

- (BOOL)_shouldUseEvergreenColorScheme
{
  isEvergreenCollection = [(NTKChronographProFacePalette *)self isEvergreenCollection];
  pigmentEditOption = [(NTKChronographProFacePalette *)self pigmentEditOption];
  collectionName = [pigmentEditOption collectionName];
  if ([collectionName isEqual:ntk_seasons_fall2021])
  {
    pigmentEditOption2 = [(NTKChronographProFacePalette *)self pigmentEditOption];
    identifier = [pigmentEditOption2 identifier];
    if ([identifier isEqual:ntk_seasons_fall2021_purple1])
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      pigmentEditOption3 = [(NTKChronographProFacePalette *)self pigmentEditOption];
      identifier2 = [pigmentEditOption3 identifier];
      v8 = [identifier2 isEqual:ntk_seasons_fall2021_purple2] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return (isEvergreenCollection | v8) & 1;
}

@end