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
  v3 = [(NTKChronographProFacePalette *)self _shouldUseEvergreenColorScheme];
  v4 = [(NTKChronographProFacePalette *)self primaryColor];
  if ((v3 & 1) == 0)
  {
    v5 = NTKColorByApplyingBlackOverlay();

    v4 = v5;
  }

  return v4;
}

- (id)_dialTicksSecondary
{
  v2 = [(NTKChronographProFacePalette *)self dialTicks];
  v3 = [v2 colorWithAlphaComponent:0.4];

  return v3;
}

- (id)_subdialClockTicksSecondary
{
  v2 = [(NTKChronographProFacePalette *)self subdialClockTicks];
  v3 = [v2 colorWithAlphaComponent:0.3];

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
  v2 = [(NTKChronographProFacePalette *)self pigmentEditOption];
  v3 = [v2 fullname];
  if ([v3 isEqualToString:ntk_seasons_spring2015_white])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:ntk_evergreen_white];
  }

  return v4;
}

- (BOOL)_isGrayColor
{
  v2 = [(NTKChronographProFacePalette *)self pigmentEditOption];
  v3 = [v2 fullname];
  v4 = [v3 isEqualToString:ntk_standard_gray];

  return v4;
}

- (BOOL)_isCloudBlueColor
{
  v2 = [(NTKChronographProFacePalette *)self pigmentEditOption];
  v3 = [v2 fullname];
  v4 = [v3 isEqualToString:ntk_seasons_summer2021_cloudBlue];

  return v4;
}

- (BOOL)_shouldUseEvergreenColorScheme
{
  v3 = [(NTKChronographProFacePalette *)self isEvergreenCollection];
  v4 = [(NTKChronographProFacePalette *)self pigmentEditOption];
  v5 = [v4 collectionName];
  if ([v5 isEqual:ntk_seasons_fall2021])
  {
    v6 = [(NTKChronographProFacePalette *)self pigmentEditOption];
    v7 = [v6 identifier];
    if ([v7 isEqual:ntk_seasons_fall2021_purple1])
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v9 = [(NTKChronographProFacePalette *)self pigmentEditOption];
      v10 = [v9 identifier];
      v8 = [v10 isEqual:ntk_seasons_fall2021_purple2] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return (v3 | v8) & 1;
}

@end