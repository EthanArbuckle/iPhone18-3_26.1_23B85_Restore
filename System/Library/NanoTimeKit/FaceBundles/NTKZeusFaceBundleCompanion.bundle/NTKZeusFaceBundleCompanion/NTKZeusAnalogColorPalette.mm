@interface NTKZeusAnalogColorPalette
- (BOOL)isNoir;
- (BOOL)wantsStatusBarIconShadow;
- (NSNumber)secondHandAlpha;
- (NTKZeusAnalogColorPalette)init;
- (id)_background;
- (id)_secondHand;
- (id)_splitBackground;
- (id)_typefaceSwatch;
- (id)copyWithZone:(_NSZone *)a3;
- (id)handInlayForDensity:(unint64_t)a3;
- (id)identifier;
- (id)swatch;
- (id)swatchImageForSize:(CGSize)a3;
- (id)swatchPrimaryColor;
- (id)tritium_dial;
- (id)tritium_handInlay;
- (id)typefaceSwatchImageForStyle:(unint64_t)a3;
- (unint64_t)bleed;
- (void)configurationDidChange:(id)a3;
- (void)setDensity:(unint64_t)a3;
@end

@implementation NTKZeusAnalogColorPalette

- (NTKZeusAnalogColorPalette)init
{
  v3 = +[NTKZeusAnalogFace pigmentFaceDomain];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v7.receiver = self;
  v7.super_class = NTKZeusAnalogColorPalette;
  v5 = [(NTKZeusAnalogColorPalette *)&v7 initWithDomainName:v3 inBundle:v4];

  return v5;
}

- (id)identifier
{
  cachedIdentifier = self->_cachedIdentifier;
  if (!cachedIdentifier)
  {
    v8.receiver = self;
    v8.super_class = NTKZeusAnalogColorPalette;
    v4 = [(NTKZeusAnalogColorPalette *)&v8 identifier];
    v5 = [NSString stringWithFormat:@"%@-%lu", v4, self->_density];
    v6 = self->_cachedIdentifier;
    self->_cachedIdentifier = v5;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (void)configurationDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKZeusAnalogColorPalette;
  [(NTKZeusAnalogColorPalette *)&v5 configurationDidChange:a3];
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
}

- (void)setDensity:(unint64_t)a3
{
  self->_density = a3;
  self->_cachedIdentifier = 0;
  _objc_release_x1();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKZeusAnalogColorPalette;
  v4 = [(NTKZeusAnalogColorPalette *)&v6 copyWithZone:a3];
  [v4 setDensity:{-[NTKZeusAnalogColorPalette density](self, "density")}];
  return v4;
}

- (id)_background
{
  if ([(NTKZeusAnalogColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKZeusAnalogColorPalette *)self paletteAtIndex:1];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_splitBackground
{
  if ([(NTKZeusAnalogColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKZeusAnalogColorPalette *)self paletteAtIndex:0];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = [(NTKZeusAnalogColorPalette *)self background];
  }

  return v4;
}

- (id)_secondHand
{
  if ([(NTKZeusAnalogColorPalette *)self isCompositePalette])
  {
    +[UIColor clearColor];
  }

  else
  {
    [(NTKZeusAnalogColorPalette *)self primaryColor];
  }
  v3 = ;

  return v3;
}

- (id)_typefaceSwatch
{
  v3 = [(NTKZeusAnalogColorPalette *)self dial];
  v4 = +[UIColor blackColor];
  CLKContrastRatioForColors();
  v6 = v5;

  if (v6 >= 4.5)
  {
    [(NTKZeusAnalogColorPalette *)self dial];
  }

  else
  {
    [(NTKZeusAnalogColorPalette *)self primaryColor];
  }
  v7 = ;

  return v7;
}

- (id)handInlayForDensity:(unint64_t)a3
{
  v5 = [(NTKZeusAnalogColorPalette *)self pigmentEditOption];
  v6 = [v5 identifier];
  if ([v6 isEqual:ntk_zeus_orangeDial])
  {
    goto LABEL_7;
  }

  v7 = [(NTKZeusAnalogColorPalette *)self pigmentEditOption];
  v8 = [v7 identifier];
  v9 = [v8 isEqual:ntk_zeus_rougeHands];
  if (a3 == 3 || (v9 & 1) != 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = [(NTKZeusAnalogColorPalette *)self bleed];

  if (!v10)
  {
    v11 = [(NTKZeusAnalogColorPalette *)self secondHand];
    goto LABEL_9;
  }

LABEL_8:
  v11 = [(NTKZeusAnalogColorPalette *)self valueForKey:@"handInlay"];
LABEL_9:

  return v11;
}

- (NSNumber)secondHandAlpha
{
  if ((([(NTKZeusAnalogColorPalette *)self isCompositePalette]& 1) != 0 || [(NTKZeusAnalogColorPalette *)self bleed]== &dword_0 + 2) && ![(NTKZeusAnalogColorPalette *)self isNoir])
  {
    return &off_479B8;
  }

  else
  {
    return &off_479D0;
  }
}

- (unint64_t)bleed
{
  optionsByBleed = self->_optionsByBleed;
  if (!optionsByBleed)
  {
    v32[0] = &off_479E8;
    v31[0] = ntk_zeus_encre;
    v31[1] = ntk_zeus_etain;
    v4 = ntk_zeus_noir;
    v31[2] = ntk_zeus_brique;
    v31[3] = ntk_zeus_noir;
    v21 = [NSArray arrayWithObjects:v31 count:4];
    v33[0] = v21;
    v32[1] = &off_47A00;
    v5 = ntk_zeus_blanc;
    v20 = [NTKPigmentEditOption duotoneNameWithName:ntk_zeus_blanc otherName:v4];
    v30[0] = v20;
    v6 = ntk_zeus_craie;
    v19 = [NTKPigmentEditOption duotoneNameWithName:ntk_zeus_craie otherName:ntk_zeus_indigo];
    v30[1] = v19;
    v18 = [NTKPigmentEditOption duotoneNameWithName:ntk_zeus_roseExtreme otherName:ntk_zeus_bordeaux];
    v30[2] = v18;
    v17 = [NTKPigmentEditOption duotoneNameWithName:ntk_zeus_capucine otherName:ntk_zeus_roseAzalee];
    v30[3] = v17;
    v7 = [NSArray arrayWithObjects:v30 count:4];
    v33[1] = v7;
    v32[2] = &off_47A18;
    v29[0] = v5;
    v29[1] = ntk_zeus_fall2024_beton;
    v8 = [NSArray arrayWithObjects:v29 count:2];
    v33[2] = v8;
    v32[3] = &off_47A30;
    v9 = [NTKPigmentEditOption duotoneNameWithName:v6 otherName:ntk_zeus_sakura];
    v28 = v9;
    v10 = [NSArray arrayWithObjects:&v28 count:1];
    v33[3] = v10;
    v32[4] = &off_47A48;
    v11 = [NTKPigmentEditOption duotoneNameWithName:v6 otherName:ntk_zeus_bleu];
    v27 = v11;
    v12 = [NSArray arrayWithObjects:&v27 count:1];
    v33[4] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:5];
    v14 = self->_optionsByBleed;
    self->_optionsByBleed = v13;

    optionsByBleed = self->_optionsByBleed;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_2E3D0;
  v22[3] = &unk_453F0;
  v22[4] = self;
  v22[5] = &v23;
  [(NSDictionary *)optionsByBleed enumerateKeysAndObjectsUsingBlock:v22];
  v15 = v24[3];
  _Block_object_dispose(&v23, 8);
  return v15;
}

- (BOOL)wantsStatusBarIconShadow
{
  v3 = [(NTKZeusAnalogColorPalette *)self bleed];
  if (v3)
  {
    LOBYTE(v3) = ![(NTKZeusAnalogColorPalette *)self isNoir];
  }

  return v3;
}

- (id)typefaceSwatchImageForStyle:(unint64_t)a3
{
  if (a3 > 1)
  {
    v5 = @"Numbers4";
    if (a3 != 3)
    {
      v5 = 0;
    }

    if (a3 == 2)
    {
      v4 = @"Numbers3";
    }

    else
    {
      v4 = v5;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if ([(NTKZeusAnalogColorPalette *)self bleed]== &dword_0 + 2 || [(NTKZeusAnalogColorPalette *)self bleed]== &dword_0 + 3)
      {
        v4 = @"Numbers2Outline";
      }

      else
      {
        v4 = @"Numbers2Outline";
        if ([(NTKZeusAnalogColorPalette *)self bleed]!= &dword_4 && [(NTKZeusAnalogColorPalette *)self bleed]!= &dword_4 + 1)
        {
          v4 = @"Numbers2";
        }
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = @"Numbers1";
  }

  v6 = [NSString stringWithFormat:@"Swatch-ZeusAnalog-%@", v4];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [UIImage imageNamed:v6 inBundle:v7 compatibleWithTraitCollection:0];
  v9 = [(NTKZeusAnalogColorPalette *)self typefaceSwatch];
  v10 = [v8 _flatImageWithColor:v9];

  return v10;
}

- (id)tritium_handInlay
{
  if ([(NTKZeusAnalogColorPalette *)self bleed]&& [(NTKZeusAnalogColorPalette *)self bleed]!= &dword_0 + 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NTKZeusAnalogColorPalette *)self primaryColor];
  }

  return v3;
}

- (id)tritium_dial
{
  v3 = [(NTKZeusAnalogColorPalette *)self dial];
  v4 = [(NTKZeusAnalogColorPalette *)self tritiumPalette];
  v5 = [v4 background];
  CLKContrastRatioForColors();
  v7 = v6;

  if (v7 >= 4.5)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NTKZeusAnalogColorPalette *)self primaryColor];
  }

  return v8;
}

- (id)swatch
{
  if ([(NTKZeusAnalogColorPalette *)self isGradientStyle])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NTKZeusAnalogColorPalette;
    v3 = [(NTKZeusAnalogColorPalette *)&v5 swatch];
  }

  return v3;
}

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(NTKZeusAnalogColorPalette *)self isGradientStyle])
  {
    v6 = [(NTKZeusAnalogColorPalette *)self configuration];
    v7 = [v6 uniqueId];
    v23.width = width;
    v23.height = height;
    v8 = NSStringFromCGSize(v23);
    v9 = [NSString stringWithFormat:@"%@-%@", v7, v8];

    v10 = [(NTKZeusAnalogColorPalette *)self swatchImageCache];
    v11 = [v10 objectForKey:v9];

    if (!v11)
    {
      v12 = [(NTKZeusAnalogColorPalette *)self splitBackground];
      v13 = [(NTKZeusAnalogColorPalette *)self background];
      v20 = 0.0;
      v21 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      [v13 getHue:&v21 saturation:&v20 brightness:&v19 alpha:&v18];
      v14 = [UIColor colorWithHue:v21 saturation:v20 brightness:v19 * 0.8 alpha:v18];
      v11 = NTKSwatchTwoColorGradientImage();

      v15 = [(NTKZeusAnalogColorPalette *)self swatchImageCache];
      [v15 setObject:v11 forKey:v9];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NTKZeusAnalogColorPalette;
    v11 = [(NTKZeusAnalogColorPalette *)&v17 swatchImageForSize:width, height];
  }

  return v11;
}

- (id)swatchPrimaryColor
{
  if ([(NTKZeusAnalogColorPalette *)self isGradientStyle])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NTKZeusAnalogColorPalette;
    v3 = [(NTKZeusAnalogColorPalette *)&v5 swatchPrimaryColor];
  }

  return v3;
}

- (BOOL)isNoir
{
  v2 = [(NTKZeusAnalogColorPalette *)self pigmentEditOption];
  v3 = [v2 identifier];
  v4 = [v3 isEqual:ntk_zeus_noir];

  return v4;
}

@end