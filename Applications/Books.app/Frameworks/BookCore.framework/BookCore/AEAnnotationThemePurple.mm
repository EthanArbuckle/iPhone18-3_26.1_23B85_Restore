@interface AEAnnotationThemePurple
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AEAnnotationThemePurple

- (id)noteFillColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_FAD34;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_343FB8 != -1)
      {
        dispatch_once(&qword_343FB8, v22);
      }

      v3 = &qword_343FC0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_FAD9C;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_343FC8 != -1)
      {
        dispatch_once(&qword_343FC8, v21);
      }

      v3 = &qword_343FD0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_FAE04;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343FD8 != -1)
      {
        dispatch_once(&qword_343FD8, v20);
      }

      v3 = &qword_343FE0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_FAE6C;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343FE8 != -1)
      {
        dispatch_once(&qword_343FE8, v19);
      }

      v3 = &qword_343FF0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_FAED4;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343FF8 != -1)
      {
        dispatch_once(&qword_343FF8, v18);
      }

      v3 = &qword_344000;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_FAF3C;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344008 != -1)
      {
        dispatch_once(&qword_344008, v17);
      }

      v3 = &qword_344010;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_FAFA4;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344018 != -1)
      {
        dispatch_once(&qword_344018, v16);
      }

      v3 = &qword_344020;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_FB00C;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344028 != -1)
      {
        dispatch_once(&qword_344028, v15);
      }

      v3 = &qword_344030;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_FB074;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344038 != -1)
      {
        dispatch_once(&qword_344038, v14);
      }

      v3 = &qword_344040;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_FB0DC;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_344048 != -1)
      {
        dispatch_once(&qword_344048, v13);
      }

      v3 = &qword_344050;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_FB144;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_344058 != -1)
      {
        dispatch_once(&qword_344058, v12);
      }

      v3 = &qword_344060;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_FB1AC;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_344068 != -1)
      {
        dispatch_once(&qword_344068, v11);
      }

      v3 = &qword_344070;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_FB214;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_344078 != -1)
      {
        dispatch_once(&qword_344078, v10);
      }

      v3 = &qword_344080;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_FB27C;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_344088 != -1)
      {
        dispatch_once(&qword_344088, v9);
      }

      v3 = &qword_344090;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_FB2E4;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_344098 != -1)
      {
        dispatch_once(&qword_344098, block);
      }

      v3 = &qword_3440A0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_FB34C;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3440A8 != -1)
      {
        dispatch_once(&qword_3440A8, v7);
      }

      v3 = &qword_3440B0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_FB3B4;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3440B8 != -1)
      {
        dispatch_once(&qword_3440B8, v6);
      }

      v3 = &qword_3440C0;
LABEL_54:
      v4 = *v3;
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (id)noteBorderColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_FBD18;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3440C8 != -1)
      {
        dispatch_once(&qword_3440C8, v22);
      }

      v3 = &qword_3440D0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_FBD80;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_3440D8 != -1)
      {
        dispatch_once(&qword_3440D8, v21);
      }

      v3 = &qword_3440E0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_FBDE8;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_3440E8 != -1)
      {
        dispatch_once(&qword_3440E8, v20);
      }

      v3 = &qword_3440F0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_FBE50;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_3440F8 != -1)
      {
        dispatch_once(&qword_3440F8, v19);
      }

      v3 = &qword_344100;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_FBEB8;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344108 != -1)
      {
        dispatch_once(&qword_344108, v18);
      }

      v3 = &qword_344110;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_FBF20;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344118 != -1)
      {
        dispatch_once(&qword_344118, v17);
      }

      v3 = &qword_344120;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_FBF88;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344128 != -1)
      {
        dispatch_once(&qword_344128, v16);
      }

      v3 = &qword_344130;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_FBFF0;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344138 != -1)
      {
        dispatch_once(&qword_344138, v15);
      }

      v3 = &qword_344140;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_FC058;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344148 != -1)
      {
        dispatch_once(&qword_344148, v14);
      }

      v3 = &qword_344150;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_FC0C0;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_344158 != -1)
      {
        dispatch_once(&qword_344158, v13);
      }

      v3 = &qword_344160;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_FC128;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_344168 != -1)
      {
        dispatch_once(&qword_344168, v12);
      }

      v3 = &qword_344170;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_FC190;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_344178 != -1)
      {
        dispatch_once(&qword_344178, v11);
      }

      v3 = &qword_344180;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_FC1F8;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_344188 != -1)
      {
        dispatch_once(&qword_344188, v10);
      }

      v3 = &qword_344190;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_FC260;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_344198 != -1)
      {
        dispatch_once(&qword_344198, v9);
      }

      v3 = &qword_3441A0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_FC2C8;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3441A8 != -1)
      {
        dispatch_once(&qword_3441A8, block);
      }

      v3 = &qword_3441B0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_FC330;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3441B8 != -1)
      {
        dispatch_once(&qword_3441B8, v7);
      }

      v3 = &qword_3441C0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_FC398;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3441C8 != -1)
      {
        dispatch_once(&qword_3441C8, v6);
      }

      v3 = &qword_3441D0;
LABEL_54:
      v4 = *v3;
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (id)noteTextColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_FCCFC;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3441D8 != -1)
      {
        dispatch_once(&qword_3441D8, v22);
      }

      v3 = &qword_3441E0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_FCD64;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_3441E8 != -1)
      {
        dispatch_once(&qword_3441E8, v21);
      }

      v3 = &qword_3441F0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_FCDCC;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_3441F8 != -1)
      {
        dispatch_once(&qword_3441F8, v20);
      }

      v3 = &qword_344200;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_FCE34;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344208 != -1)
      {
        dispatch_once(&qword_344208, v19);
      }

      v3 = &qword_344210;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_FCE9C;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344218 != -1)
      {
        dispatch_once(&qword_344218, v18);
      }

      v3 = &qword_344220;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_FCF04;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344228 != -1)
      {
        dispatch_once(&qword_344228, v17);
      }

      v3 = &qword_344230;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_FCF6C;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344238 != -1)
      {
        dispatch_once(&qword_344238, v16);
      }

      v3 = &qword_344240;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_FCFD4;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344248 != -1)
      {
        dispatch_once(&qword_344248, v15);
      }

      v3 = &qword_344250;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_FD03C;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344258 != -1)
      {
        dispatch_once(&qword_344258, v14);
      }

      v3 = &qword_344260;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_FD0A4;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_344268 != -1)
      {
        dispatch_once(&qword_344268, v13);
      }

      v3 = &qword_344270;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_FD10C;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_344278 != -1)
      {
        dispatch_once(&qword_344278, v12);
      }

      v3 = &qword_344280;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_FD174;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_344288 != -1)
      {
        dispatch_once(&qword_344288, v11);
      }

      v3 = &qword_344290;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_FD1DC;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_344298 != -1)
      {
        dispatch_once(&qword_344298, v10);
      }

      v3 = &qword_3442A0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_FD244;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3442A8 != -1)
      {
        dispatch_once(&qword_3442A8, v9);
      }

      v3 = &qword_3442B0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_FD2AC;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3442B8 != -1)
      {
        dispatch_once(&qword_3442B8, block);
      }

      v3 = &qword_3442C0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_FD314;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3442C8 != -1)
      {
        dispatch_once(&qword_3442C8, v7);
      }

      v3 = &qword_3442D0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_FD37C;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3442D8 != -1)
      {
        dispatch_once(&qword_3442D8, v6);
      }

      v3 = &qword_3442E0;
LABEL_54:
      v4 = *v3;
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (id)highlightColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_FDCE0;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3442E8 != -1)
      {
        dispatch_once(&qword_3442E8, v22);
      }

      v3 = &qword_3442F0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_FDD48;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_3442F8 != -1)
      {
        dispatch_once(&qword_3442F8, v21);
      }

      v3 = &qword_344300;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_FDDB0;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344308 != -1)
      {
        dispatch_once(&qword_344308, v20);
      }

      v3 = &qword_344310;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_FDE18;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344318 != -1)
      {
        dispatch_once(&qword_344318, v19);
      }

      v3 = &qword_344320;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_FDE80;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344328 != -1)
      {
        dispatch_once(&qword_344328, v18);
      }

      v3 = &qword_344330;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_FDEE8;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344338 != -1)
      {
        dispatch_once(&qword_344338, v17);
      }

      v3 = &qword_344340;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_FDF50;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344348 != -1)
      {
        dispatch_once(&qword_344348, v16);
      }

      v3 = &qword_344350;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_FDFB8;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344358 != -1)
      {
        dispatch_once(&qword_344358, v15);
      }

      v3 = &qword_344360;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_FE020;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344368 != -1)
      {
        dispatch_once(&qword_344368, v14);
      }

      v3 = &qword_344370;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_FE088;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_344378 != -1)
      {
        dispatch_once(&qword_344378, v13);
      }

      v3 = &qword_344380;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_FE0F0;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_344388 != -1)
      {
        dispatch_once(&qword_344388, v12);
      }

      v3 = &qword_344390;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_FE158;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_344398 != -1)
      {
        dispatch_once(&qword_344398, v11);
      }

      v3 = &qword_3443A0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_FE1C0;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3443A8 != -1)
      {
        dispatch_once(&qword_3443A8, v10);
      }

      v3 = &qword_3443B0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_FE228;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3443B8 != -1)
      {
        dispatch_once(&qword_3443B8, v9);
      }

      v3 = &qword_3443C0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_FE290;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3443C8 != -1)
      {
        dispatch_once(&qword_3443C8, block);
      }

      v3 = &qword_3443D0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_FE2F8;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3443D8 != -1)
      {
        dispatch_once(&qword_3443D8, v7);
      }

      v3 = &qword_3443E0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_FE360;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3443E8 != -1)
      {
        dispatch_once(&qword_3443E8, v6);
      }

      v3 = &qword_3443F0;
LABEL_54:
      v4 = *v3;
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (id)noteMarkerFillColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_FECC4;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3443F8 != -1)
      {
        dispatch_once(&qword_3443F8, v22);
      }

      v3 = &qword_344400;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_FED2C;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344408 != -1)
      {
        dispatch_once(&qword_344408, v21);
      }

      v3 = &qword_344410;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_FED94;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344418 != -1)
      {
        dispatch_once(&qword_344418, v20);
      }

      v3 = &qword_344420;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_FEDFC;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344428 != -1)
      {
        dispatch_once(&qword_344428, v19);
      }

      v3 = &qword_344430;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_FEE64;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344438 != -1)
      {
        dispatch_once(&qword_344438, v18);
      }

      v3 = &qword_344440;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_FEECC;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344448 != -1)
      {
        dispatch_once(&qword_344448, v17);
      }

      v3 = &qword_344450;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_FEF34;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344458 != -1)
      {
        dispatch_once(&qword_344458, v16);
      }

      v3 = &qword_344460;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_FEF9C;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344468 != -1)
      {
        dispatch_once(&qword_344468, v15);
      }

      v3 = &qword_344470;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_FF004;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344478 != -1)
      {
        dispatch_once(&qword_344478, v14);
      }

      v3 = &qword_344480;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_FF06C;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_344488 != -1)
      {
        dispatch_once(&qword_344488, v13);
      }

      v3 = &qword_344490;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_FF0D4;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_344498 != -1)
      {
        dispatch_once(&qword_344498, v12);
      }

      v3 = &qword_3444A0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_FF13C;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3444A8 != -1)
      {
        dispatch_once(&qword_3444A8, v11);
      }

      v3 = &qword_3444B0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_FF1A4;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3444B8 != -1)
      {
        dispatch_once(&qword_3444B8, v10);
      }

      v3 = &qword_3444C0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_FF20C;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3444C8 != -1)
      {
        dispatch_once(&qword_3444C8, v9);
      }

      v3 = &qword_3444D0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_FF274;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3444D8 != -1)
      {
        dispatch_once(&qword_3444D8, block);
      }

      v3 = &qword_3444E0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_FF2DC;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3444E8 != -1)
      {
        dispatch_once(&qword_3444E8, v7);
      }

      v3 = &qword_3444F0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_FF344;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3444F8 != -1)
      {
        dispatch_once(&qword_3444F8, v6);
      }

      v3 = &qword_344500;
LABEL_54:
      v4 = *v3;
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (id)noteMarkerBorderColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_FFCA8;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_344508 != -1)
      {
        dispatch_once(&qword_344508, v22);
      }

      v3 = &qword_344510;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_FFD10;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344518 != -1)
      {
        dispatch_once(&qword_344518, v21);
      }

      v3 = &qword_344520;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_FFD78;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344528 != -1)
      {
        dispatch_once(&qword_344528, v20);
      }

      v3 = &qword_344530;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_FFDE0;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344538 != -1)
      {
        dispatch_once(&qword_344538, v19);
      }

      v3 = &qword_344540;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_FFE48;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344548 != -1)
      {
        dispatch_once(&qword_344548, v18);
      }

      v3 = &qword_344550;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_FFEB0;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344558 != -1)
      {
        dispatch_once(&qword_344558, v17);
      }

      v3 = &qword_344560;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_FFF18;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344568 != -1)
      {
        dispatch_once(&qword_344568, v16);
      }

      v3 = &qword_344570;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_FFF80;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344578 != -1)
      {
        dispatch_once(&qword_344578, v15);
      }

      v3 = &qword_344580;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_FFFE8;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344588 != -1)
      {
        dispatch_once(&qword_344588, v14);
      }

      v3 = &qword_344590;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100050;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_344598 != -1)
      {
        dispatch_once(&qword_344598, v13);
      }

      v3 = &qword_3445A0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000B8;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3445A8 != -1)
      {
        dispatch_once(&qword_3445A8, v12);
      }

      v3 = &qword_3445B0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100120;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3445B8 != -1)
      {
        dispatch_once(&qword_3445B8, v11);
      }

      v3 = &qword_3445C0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100188;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3445C8 != -1)
      {
        dispatch_once(&qword_3445C8, v10);
      }

      v3 = &qword_3445D0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1001F0;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3445D8 != -1)
      {
        dispatch_once(&qword_3445D8, v9);
      }

      v3 = &qword_3445E0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100258;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3445E8 != -1)
      {
        dispatch_once(&qword_3445E8, block);
      }

      v3 = &qword_3445F0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002C0;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3445F8 != -1)
      {
        dispatch_once(&qword_3445F8, v7);
      }

      v3 = &qword_344600;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100328;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_344608 != -1)
      {
        dispatch_once(&qword_344608, v6);
      }

      v3 = &qword_344610;
LABEL_54:
      v4 = *v3;
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (id)notesSidebarBarColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100C8C;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_344618 != -1)
      {
        dispatch_once(&qword_344618, v22);
      }

      v3 = &qword_344620;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100CF4;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344628 != -1)
      {
        dispatch_once(&qword_344628, v21);
      }

      v3 = &qword_344630;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100D5C;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344638 != -1)
      {
        dispatch_once(&qword_344638, v20);
      }

      v3 = &qword_344640;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100DC4;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344648 != -1)
      {
        dispatch_once(&qword_344648, v19);
      }

      v3 = &qword_344650;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100E2C;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344658 != -1)
      {
        dispatch_once(&qword_344658, v18);
      }

      v3 = &qword_344660;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100E94;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344668 != -1)
      {
        dispatch_once(&qword_344668, v17);
      }

      v3 = &qword_344670;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100EFC;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344678 != -1)
      {
        dispatch_once(&qword_344678, v16);
      }

      v3 = &qword_344680;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100F64;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344688 != -1)
      {
        dispatch_once(&qword_344688, v15);
      }

      v3 = &qword_344690;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100FCC;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344698 != -1)
      {
        dispatch_once(&qword_344698, v14);
      }

      v3 = &qword_3446A0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_101034;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_3446A8 != -1)
      {
        dispatch_once(&qword_3446A8, v13);
      }

      v3 = &qword_3446B0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10109C;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3446B8 != -1)
      {
        dispatch_once(&qword_3446B8, v12);
      }

      v3 = &qword_3446C0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_101104;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3446C8 != -1)
      {
        dispatch_once(&qword_3446C8, v11);
      }

      v3 = &qword_3446D0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10116C;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3446D8 != -1)
      {
        dispatch_once(&qword_3446D8, v10);
      }

      v3 = &qword_3446E0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1011D4;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3446E8 != -1)
      {
        dispatch_once(&qword_3446E8, v9);
      }

      v3 = &qword_3446F0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10123C;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3446F8 != -1)
      {
        dispatch_once(&qword_3446F8, block);
      }

      v3 = &qword_344700;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1012A4;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_344708 != -1)
      {
        dispatch_once(&qword_344708, v7);
      }

      v3 = &qword_344710;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10130C;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_344718 != -1)
      {
        dispatch_once(&qword_344718, v6);
      }

      v3 = &qword_344720;
LABEL_54:
      v4 = *v3;
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (BOOL)isUnderline
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_101404;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (qword_344728 != -1)
  {
    dispatch_once(&qword_344728, block);
  }

  return byte_344730;
}

@end