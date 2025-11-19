@interface NTKChronoPalette
+ (id)interpolationFromPalette:(id)a3 toPalette:(id)a4 fraction:(double)a5;
+ (id)paletteForDevice:(id)a3 withFaceColorPalette:(id)a4;
- (id)_initForDevice:(id)a3 withFaceColorPalette:(id)a4;
- (id)initForDevice:(id)a3;
@end

@implementation NTKChronoPalette

+ (id)paletteForDevice:(id)a3 withFaceColorPalette:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) _initForDevice:v6 withFaceColorPalette:v5];

  return v7;
}

+ (id)interpolationFromPalette:(id)a3 toPalette:(id)a4 fraction:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(a1);
  v10[1] = v9[1];
  v11 = [v8 backgroundColor];
  v12 = [v9 backgroundColor];
  v13 = NTKInterpolateBetweenColors();
  v14 = v10[4];
  v10[4] = v13;

  v15 = [v8 foregroundColor];
  v16 = [v9 foregroundColor];
  v17 = NTKInterpolateBetweenColors();
  v18 = v10[5];
  v10[5] = v17;

  v19 = [v8 tickColor];
  v20 = [v9 tickColor];
  v21 = NTKInterpolateBetweenColors();
  v22 = v10[6];
  v10[6] = v21;

  v23 = [v8 alternativeTickColor];
  v24 = [v9 alternativeTickColor];
  v25 = NTKInterpolateBetweenColors();
  v26 = v10[7];
  v10[7] = v25;

  v27 = [v8 labelColor];
  v28 = [v9 labelColor];
  v29 = NTKInterpolateBetweenColors();
  v30 = v10[8];
  v10[8] = v29;

  v31 = [v8 chronoHandColor];
  v32 = [v9 chronoHandColor];
  v33 = NTKInterpolateBetweenColors();
  v34 = v10[9];
  v10[9] = v33;

  v35 = [v8 inlayColor];
  v36 = [v9 inlayColor];
  v37 = NTKInterpolateBetweenColors();
  v38 = v10[11];
  v10[11] = v37;

  v39 = [v8 dateComplicationColor];
  v40 = [v9 dateComplicationColor];
  v41 = NTKInterpolateBetweenColors();
  v42 = v10[10];
  v10[10] = v41;

  v43 = [v8 glyphColor];
  v44 = [v9 glyphColor];
  v45 = NTKInterpolateBetweenColors();
  v46 = v10[12];
  v10[12] = v45;

  v47 = [v8 glyphBackgroundColor];
  v48 = [v9 glyphBackgroundColor];
  v49 = NTKInterpolateBetweenColors();
  v50 = v10[13];
  v10[13] = v49;

  [v8 largeTickValue];
  [v9 largeTickValue];
  CLKInterpolateBetweenFloatsClipped();
  v10[16] = v51;
  [v8 smallTickValue];
  [v9 smallTickValue];
  CLKInterpolateBetweenFloatsClipped();
  v10[15] = v52;
  if (a5 >= 0.5)
  {
    v53 = v9;
  }

  else
  {
    v53 = v8;
  }

  *(v10 + 16) = [v53 showsShadows];

  return v10;
}

- (id)initForDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKChronoPalette;
  v6 = [(NTKChronoPalette *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (id)_initForDevice:(id)a3 withFaceColorPalette:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKChronoPalette *)self initForDevice:v6];
  if (v8)
  {
    v9 = [v7 configuration];
    v10 = [v9 colorOption];
    *(v8 + 1) = [NTKPaletteColorEditOption colorValueForColorName:v10];

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
          v86 = [v6 materialType];
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
              if (v86 != &dword_4 + 1)
              {
                v30 = v28;
                if (v86 != &dword_4 + 2)
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
              v32 = [v7 primaryColor];
              v33 = v29[5];
              v29[5] = v32;

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

                v66 = [v7 primaryColor];
                v67 = v29[6];
                v29[6] = v66;

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
                    v60 = [UIColor colorWithRed:0.219607843 green:0.380392157 blue:0.196078431 alpha:1.0];
                    v61 = 0.0431372549;
                    v62 = 0.141176471;
                    v63 = 0.0549019608;
                  }

                  else
                  {
                    v60 = [UIColor colorWithRed:0.42745098 green:0.42745098 blue:0.450980392 alpha:1.0];
                    v61 = 0.141176471;
                    v63 = 0.133333333;
                    v62 = 0.133333333;
                  }
                }

                else if (v11 == 1)
                {
                  v60 = [UIColor colorWithRed:0.2 green:0.345098039 blue:0.478431373 alpha:1.0];
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

                  v60 = [UIColor colorWithRed:0.458823529 green:0.298039216 blue:0.129411765 alpha:1.0];
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
                v57 = [v7 primaryColor];
                v58 = *(v8 + 12);
                *(v8 + 12) = v57;

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
                    v81 = [v7 primaryColor];
                    v82 = v29[11];
                    v29[11] = v81;

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
                    if ((v86 - 5) > 1)
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
                  v60 = [UIColor colorWithRed:0.466666667 green:0.521568627 blue:0.552941176 alpha:1.0];
                  v61 = 0.180392157;
                  v62 = 0.168627451;
                  v63 = 0.152941176;
LABEL_58:
                  v70 = *(v8 + 12);
                  *(v8 + 12) = v60;

                  v59 = [UIColor colorWithRed:v63 green:v62 blue:v61 alpha:1.0];
                  goto LABEL_59;
                }

LABEL_49:
                if (v11 == 5)
                {
                  v60 = [UIColor colorWithRed:0.537254902 green:0.549019608 blue:0.549019608 alpha:1.0];
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

                  v60 = [UIColor colorWithRed:0.650980392 green:0.611764706 blue:0.423529412 alpha:1.0];
                  v61 = 0.152941176;
                  v62 = 0.176470588;
                  v63 = 0.180392157;
                }

                goto LABEL_58;
              }

LABEL_54:
              v60 = [v7 primaryColor];
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