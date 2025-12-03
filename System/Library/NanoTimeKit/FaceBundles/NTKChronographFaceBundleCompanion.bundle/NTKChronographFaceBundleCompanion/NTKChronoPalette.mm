@interface NTKChronoPalette
+ (id)interpolationFromPalette:(id)palette toPalette:(id)toPalette fraction:(double)fraction;
+ (id)paletteForDevice:(id)device withFaceColorPalette:(id)palette;
- (id)_initForDevice:(id)device withFaceColorPalette:(id)palette;
- (id)initForDevice:(id)device;
@end

@implementation NTKChronoPalette

+ (id)paletteForDevice:(id)device withFaceColorPalette:(id)palette
{
  paletteCopy = palette;
  deviceCopy = device;
  v7 = [objc_alloc(objc_opt_class()) _initForDevice:deviceCopy withFaceColorPalette:paletteCopy];

  return v7;
}

+ (id)interpolationFromPalette:(id)palette toPalette:(id)toPalette fraction:(double)fraction
{
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  v10 = objc_alloc_init(self);
  v10[1] = toPaletteCopy[1];
  backgroundColor = [paletteCopy backgroundColor];
  backgroundColor2 = [toPaletteCopy backgroundColor];
  v13 = NTKInterpolateBetweenColors();
  v14 = v10[4];
  v10[4] = v13;

  foregroundColor = [paletteCopy foregroundColor];
  foregroundColor2 = [toPaletteCopy foregroundColor];
  v17 = NTKInterpolateBetweenColors();
  v18 = v10[5];
  v10[5] = v17;

  tickColor = [paletteCopy tickColor];
  tickColor2 = [toPaletteCopy tickColor];
  v21 = NTKInterpolateBetweenColors();
  v22 = v10[6];
  v10[6] = v21;

  alternativeTickColor = [paletteCopy alternativeTickColor];
  alternativeTickColor2 = [toPaletteCopy alternativeTickColor];
  v25 = NTKInterpolateBetweenColors();
  v26 = v10[7];
  v10[7] = v25;

  labelColor = [paletteCopy labelColor];
  labelColor2 = [toPaletteCopy labelColor];
  v29 = NTKInterpolateBetweenColors();
  v30 = v10[8];
  v10[8] = v29;

  chronoHandColor = [paletteCopy chronoHandColor];
  chronoHandColor2 = [toPaletteCopy chronoHandColor];
  v33 = NTKInterpolateBetweenColors();
  v34 = v10[9];
  v10[9] = v33;

  inlayColor = [paletteCopy inlayColor];
  inlayColor2 = [toPaletteCopy inlayColor];
  v37 = NTKInterpolateBetweenColors();
  v38 = v10[11];
  v10[11] = v37;

  dateComplicationColor = [paletteCopy dateComplicationColor];
  dateComplicationColor2 = [toPaletteCopy dateComplicationColor];
  v41 = NTKInterpolateBetweenColors();
  v42 = v10[10];
  v10[10] = v41;

  glyphColor = [paletteCopy glyphColor];
  glyphColor2 = [toPaletteCopy glyphColor];
  v45 = NTKInterpolateBetweenColors();
  v46 = v10[12];
  v10[12] = v45;

  glyphBackgroundColor = [paletteCopy glyphBackgroundColor];
  glyphBackgroundColor2 = [toPaletteCopy glyphBackgroundColor];
  v49 = NTKInterpolateBetweenColors();
  v50 = v10[13];
  v10[13] = v49;

  [paletteCopy largeTickValue];
  [toPaletteCopy largeTickValue];
  CLKInterpolateBetweenFloatsClipped();
  v10[16] = v51;
  [paletteCopy smallTickValue];
  [toPaletteCopy smallTickValue];
  CLKInterpolateBetweenFloatsClipped();
  v10[15] = v52;
  if (fraction >= 0.5)
  {
    v53 = toPaletteCopy;
  }

  else
  {
    v53 = paletteCopy;
  }

  *(v10 + 16) = [v53 showsShadows];

  return v10;
}

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NTKChronoPalette;
  v6 = [(NTKChronoPalette *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (id)_initForDevice:(id)device withFaceColorPalette:(id)palette
{
  deviceCopy = device;
  paletteCopy = palette;
  v8 = [(NTKChronoPalette *)self initForDevice:deviceCopy];
  if (v8)
  {
    configuration = [paletteCopy configuration];
    colorOption = [configuration colorOption];
    *(v8 + 1) = [NTKPaletteColorEditOption colorValueForColorName:colorOption];

    v11 = *(v8 + 1);
    v12 = [UIColor colorWithWhite:0.541176471 alpha:1.0];
    v13 = [UIColor colorWithWhite:0.149019608 alpha:1.0];
    v14 = *(v8 + 1);
    if (v14 > 3)
    {
      if (v14 <= 5)
      {
        if (v14 == 4)
        {
          v15 = 0.0980392157;
          v17 = 0.101960784;
          v19 = 1.0;
          v16 = 0.0980392157;
LABEL_19:
          v18 = [UIColor colorWithRed:v15 green:v16 blue:v17 alpha:v19];
LABEL_20:
          v20 = *(v8 + 4);
          *(v8 + 4) = v18;

          v21 = +[UIColor systemOrangeColor];
          v22 = *(v8 + 10);
          *(v8 + 10) = v21;

          v23 = +[UIColor systemOrangeColor];
          v25 = (v8 + 72);
          v24 = *(v8 + 9);
          *(v8 + 9) = v23;

          v88 = v12;
          objc_storeStrong(v8 + 12, v12);
          v87 = v13;
          objc_storeStrong(v8 + 13, v13);
          *(v8 + 120) = xmmword_14560;
          materialType = [deviceCopy materialType];
          v98 = 0;
          v99 = &v98;
          v100 = 0x2020000000;
          v101 = 0x3FF0000000000000;
          v95[0] = _NSConcreteStackBlock;
          v95[1] = 3221225472;
          v95[2] = sub_7574;
          v95[3] = &unk_1C778;
          v97 = &v98;
          v26 = v8;
          v96 = v26;
          v89 = objc_retainBlock(v95);
          v92[0] = _NSConcreteStackBlock;
          v92[1] = 3221225472;
          v92[2] = sub_76DC;
          v92[3] = &unk_1C778;
          v94 = &v98;
          v27 = v26;
          v93 = v27;
          v28 = objc_retainBlock(v92);
          v90[0] = _NSConcreteStackBlock;
          v90[1] = 3221225472;
          v90[2] = sub_7844;
          v90[3] = &unk_1C7A0;
          v29 = v27;
          v91 = v29;
          v30 = objc_retainBlock(v90);
          v31 = v30;
          if (v11 <= 6)
          {
            if ((v11 - 1) < 4)
            {
              v40 = +[UIColor whiteColor];
              v41 = v29[5];
              v29[5] = v40;

              v42 = +[UIColor whiteColor];
              v43 = v29[6];
              v29[6] = v42;

              v44 = v29[5];
              v45 = v29 + 8;
LABEL_35:
              objc_storeStrong(v45, v44);
              *(v29 + 16) = 1;
              goto LABEL_36;
            }

            if ((v11 - 5) >= 2)
            {
              if (v11)
              {
                goto LABEL_36;
              }

              v30 = v89;
              if (materialType != &dword_4 + 1)
              {
                v30 = v28;
                if (materialType != &dword_4 + 2)
                {
                  v30 = v31;
                }
              }

LABEL_33:
              (v30[2])();
              goto LABEL_60;
            }
          }

          else
          {
            if (v11 > 0x14)
            {
              goto LABEL_52;
            }

            if (((1 << v11) & 0x1BFE00) != 0)
            {
              primaryColor = [paletteCopy primaryColor];
              v33 = v29[5];
              v29[5] = primaryColor;

              objc_storeStrong(v29 + 6, v29[5]);
              *(v8 + 15) = 0x3FE0000000000000;
              v34 = +[UIColor whiteColor];
              v35 = v29[7];
              v29[7] = v34;

              v36 = +[UIColor whiteColor];
              v37 = v29[8];
              v29[8] = v36;

              *(v29 + 16) = 1;
              v38 = +[UIColor whiteColor];
              v39 = *v25;
              *v25 = v38;

              objc_storeStrong(v8 + 10, v29[5]);
              v99[3] = 0x4010000000000000;
              goto LABEL_36;
            }

            if (v11 != 8)
            {
              if (v11 == 18)
              {
                goto LABEL_33;
              }

LABEL_52:
              if (v11 == 7)
              {
                v64 = +[UIColor whiteColor];
                v65 = v29[5];
                v29[5] = v64;

                primaryColor2 = [paletteCopy primaryColor];
                v67 = v29[6];
                v29[6] = primaryColor2;

                v68 = +[UIColor whiteColor];
                v69 = v29[7];
                v29[7] = v68;

                objc_storeStrong(v29 + 8, v29[5]);
                *(v29 + 16) = 1;
                objc_storeStrong(v8 + 9, v29[6]);
                objc_storeStrong(v8 + 10, *v25);
                v99[3] = 0x4010000000000000;
                goto LABEL_54;
              }

LABEL_36:
              if (v11 <= 4)
              {
                if (v11 > 2)
                {
                  if (v11 == 3)
                  {
                    primaryColor5 = [UIColor colorWithRed:0.219607843 green:0.380392157 blue:0.196078431 alpha:1.0];
                    v61 = 0.0431372549;
                    v62 = 0.141176471;
                    v63 = 0.0549019608;
                  }

                  else
                  {
                    primaryColor5 = [UIColor colorWithRed:0.42745098 green:0.42745098 blue:0.450980392 alpha:1.0];
                    v61 = 0.141176471;
                    v63 = 0.133333333;
                    v62 = 0.133333333;
                  }
                }

                else if (v11 == 1)
                {
                  primaryColor5 = [UIColor colorWithRed:0.2 green:0.345098039 blue:0.478431373 alpha:1.0];
                  v63 = 0.0;
                  v61 = 0.239215686;
                  v62 = 0.125490196;
                }

                else
                {
                  if (v11 != 2)
                  {
                    goto LABEL_60;
                  }

                  primaryColor5 = [UIColor colorWithRed:0.458823529 green:0.298039216 blue:0.129411765 alpha:1.0];
                  v61 = 0.0352941176;
                  v62 = 0.101960784;
                  v63 = 0.168627451;
                }

                goto LABEL_58;
              }

              if (v11 > 0x14)
              {
                goto LABEL_49;
              }

              if (((1 << v11) & 0x1BFE00) != 0)
              {
                primaryColor3 = [paletteCopy primaryColor];
                v58 = *(v8 + 12);
                *(v8 + 12) = primaryColor3;

                v59 = NTKColorByPremultiplyingAlpha();
LABEL_59:
                v71 = *(v8 + 13);
                *(v8 + 13) = v59;

LABEL_60:
                v72 = NTKColorByBrightening();
                v73 = v29[6];
                v29[6] = v72;

                v74 = v29 + 7;
                if (!v29[7])
                {
                  objc_storeStrong(v29 + 7, v29[6]);
                }

                v75 = NTKColorByBrightening();
                v76 = *v74;
                *v74 = v75;

                if ((v11 - 9) < 9 || v11 == 20)
                {
                  v77 = +[UIColor blackColor];
                }

                else
                {
                  if (v11 == 7)
                  {
                    primaryColor4 = [paletteCopy primaryColor];
                    v82 = v29[11];
                    v29[11] = primaryColor4;

                    goto LABEL_76;
                  }

                  v77 = *(v8 + 4);
                }

                v78 = v29[11];
                v29[11] = v77;

                if (v11 > 7)
                {
                  if (v11 != 8)
                  {
                    if (v11 != 18)
                    {
LABEL_76:
                      v80 = *(v8 + 12);
                      goto LABEL_77;
                    }

                    v80 = *(v8 + 13);
LABEL_77:
                    v79 = v29 + 14;
LABEL_78:
                    v83 = v80;
                    v84 = *v79;
                    *v79 = v83;

                    _Block_object_dispose(&v98, 8);
                    goto LABEL_79;
                  }
                }

                else if ((v11 - 5) >= 2)
                {
                  if (!v11)
                  {
                    v79 = v29 + 14;
                    if ((materialType - 5) > 1)
                    {
                      v80 = *(v8 + 13);
                    }

                    else
                    {
                      v80 = *(v8 + 12);
                    }

                    goto LABEL_78;
                  }

                  goto LABEL_76;
                }

                v80 = *(v8 + 4);
                goto LABEL_77;
              }

              if (v11 != 7)
              {
                if (v11 == 8)
                {
                  primaryColor5 = [UIColor colorWithRed:0.466666667 green:0.521568627 blue:0.552941176 alpha:1.0];
                  v61 = 0.180392157;
                  v62 = 0.168627451;
                  v63 = 0.152941176;
LABEL_58:
                  v70 = *(v8 + 12);
                  *(v8 + 12) = primaryColor5;

                  v59 = [UIColor colorWithRed:v63 green:v62 blue:v61 alpha:1.0];
                  goto LABEL_59;
                }

LABEL_49:
                if (v11 == 5)
                {
                  primaryColor5 = [UIColor colorWithRed:0.537254902 green:0.549019608 blue:0.549019608 alpha:1.0];
                  v62 = 0.160784314;
                  v63 = 0.156862745;
                  v61 = 0.160784314;
                }

                else
                {
                  if (v11 != 6)
                  {
                    goto LABEL_60;
                  }

                  primaryColor5 = [UIColor colorWithRed:0.650980392 green:0.611764706 blue:0.423529412 alpha:1.0];
                  v61 = 0.152941176;
                  v62 = 0.176470588;
                  v63 = 0.180392157;
                }

                goto LABEL_58;
              }

LABEL_54:
              primaryColor5 = [paletteCopy primaryColor];
              v61 = 0.0745098039;
              v62 = 0.156862745;
              v63 = 0.349019608;
              goto LABEL_58;
            }
          }

          v46 = +[UIColor blackColor];
          v47 = v29[5];
          v29[5] = v46;

          v48 = +[UIColor whiteColor];
          v49 = v29[6];
          v29[6] = v48;

          objc_storeStrong(v29 + 8, v29[5]);
          __asm { FMOV            V1.2D, #1.0 }

          *(v8 + 120) = vsubq_f64(_Q1, *(v8 + 120));
          v55 = [UIColor colorWithRed:0.815686275 green:0.450980392 blue:0.0 alpha:1.0];
          v56 = *v25;
          *v25 = v55;

          v44 = *v25;
          v45 = (v8 + 80);
          goto LABEL_35;
        }

        v15 = 0.862745098;
        v16 = 0.874509804;
        v17 = 0.878431373;
LABEL_18:
        v19 = 1.0;
        goto LABEL_19;
      }

      if (v14 == 6)
      {
        v15 = 0.960784314;
        v16 = 0.945098039;
        v17 = 0.82745098;
        goto LABEL_18;
      }

      if (v14 == 8)
      {
        v15 = 0.815686275;
        v16 = 0.909803922;
        v17 = 0.960784314;
        goto LABEL_18;
      }
    }

    else
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v15 = 0.121568627;
          v16 = 0.062745098;
          v17 = 0.0;
        }

        else
        {
          v15 = 0.0392156863;
          v16 = 0.101960784;
          v17 = 0.031372549;
        }

        goto LABEL_18;
      }

      if (v14 == 1)
      {
        v15 = 0.0196078431;
        v16 = 0.0823529412;
        v17 = 0.141176471;
        goto LABEL_18;
      }
    }

    v18 = +[UIColor blackColor];
    goto LABEL_20;
  }

LABEL_79:

  return v8;
}

@end