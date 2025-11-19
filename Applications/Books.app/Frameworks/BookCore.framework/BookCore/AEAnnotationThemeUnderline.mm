@interface AEAnnotationThemeUnderline
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AEAnnotationThemeUnderline

- (id)noteFillColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_108DBC;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_344EB8 != -1)
      {
        dispatch_once(&qword_344EB8, v22);
      }

      v3 = &qword_344EC0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_108E24;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344EC8 != -1)
      {
        dispatch_once(&qword_344EC8, v21);
      }

      v3 = &qword_344ED0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_108E8C;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344ED8 != -1)
      {
        dispatch_once(&qword_344ED8, v20);
      }

      v3 = &qword_344EE0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_108EF4;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344EE8 != -1)
      {
        dispatch_once(&qword_344EE8, v19);
      }

      v3 = &qword_344EF0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_108F5C;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344EF8 != -1)
      {
        dispatch_once(&qword_344EF8, v18);
      }

      v3 = &qword_344F00;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_108FC4;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344F08 != -1)
      {
        dispatch_once(&qword_344F08, v17);
      }

      v3 = &qword_344F10;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10902C;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344F18 != -1)
      {
        dispatch_once(&qword_344F18, v16);
      }

      v3 = &qword_344F20;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_109094;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344F28 != -1)
      {
        dispatch_once(&qword_344F28, v15);
      }

      v3 = &qword_344F30;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1090FC;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344F38 != -1)
      {
        dispatch_once(&qword_344F38, v14);
      }

      v3 = &qword_344F40;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_109164;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_344F48 != -1)
      {
        dispatch_once(&qword_344F48, v13);
      }

      v3 = &qword_344F50;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1091CC;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_344F58 != -1)
      {
        dispatch_once(&qword_344F58, v12);
      }

      v3 = &qword_344F60;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_109234;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_344F68 != -1)
      {
        dispatch_once(&qword_344F68, v11);
      }

      v3 = &qword_344F70;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10929C;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_344F78 != -1)
      {
        dispatch_once(&qword_344F78, v10);
      }

      v3 = &qword_344F80;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_109304;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_344F88 != -1)
      {
        dispatch_once(&qword_344F88, v9);
      }

      v3 = &qword_344F90;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10936C;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_344F98 != -1)
      {
        dispatch_once(&qword_344F98, block);
      }

      v3 = &qword_344FA0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1093D4;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_344FA8 != -1)
      {
        dispatch_once(&qword_344FA8, v7);
      }

      v3 = &qword_344FB0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10943C;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_344FB8 != -1)
      {
        dispatch_once(&qword_344FB8, v6);
      }

      v3 = &qword_344FC0;
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
      v22[2] = sub_109DA0;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_344FC8 != -1)
      {
        dispatch_once(&qword_344FC8, v22);
      }

      v3 = &qword_344FD0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_109E08;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344FD8 != -1)
      {
        dispatch_once(&qword_344FD8, v21);
      }

      v3 = &qword_344FE0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_109E70;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344FE8 != -1)
      {
        dispatch_once(&qword_344FE8, v20);
      }

      v3 = &qword_344FF0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_109ED8;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344FF8 != -1)
      {
        dispatch_once(&qword_344FF8, v19);
      }

      v3 = &qword_345000;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_109F40;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_345008 != -1)
      {
        dispatch_once(&qword_345008, v18);
      }

      v3 = &qword_345010;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_109FA8;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_345018 != -1)
      {
        dispatch_once(&qword_345018, v17);
      }

      v3 = &qword_345020;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10A010;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_345028 != -1)
      {
        dispatch_once(&qword_345028, v16);
      }

      v3 = &qword_345030;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10A078;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_345038 != -1)
      {
        dispatch_once(&qword_345038, v15);
      }

      v3 = &qword_345040;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10A0E0;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_345048 != -1)
      {
        dispatch_once(&qword_345048, v14);
      }

      v3 = &qword_345050;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10A148;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_345058 != -1)
      {
        dispatch_once(&qword_345058, v13);
      }

      v3 = &qword_345060;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10A1B0;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_345068 != -1)
      {
        dispatch_once(&qword_345068, v12);
      }

      v3 = &qword_345070;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10A218;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_345078 != -1)
      {
        dispatch_once(&qword_345078, v11);
      }

      v3 = &qword_345080;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10A280;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_345088 != -1)
      {
        dispatch_once(&qword_345088, v10);
      }

      v3 = &qword_345090;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10A2E8;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_345098 != -1)
      {
        dispatch_once(&qword_345098, v9);
      }

      v3 = &qword_3450A0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10A350;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3450A8 != -1)
      {
        dispatch_once(&qword_3450A8, block);
      }

      v3 = &qword_3450B0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10A3B8;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3450B8 != -1)
      {
        dispatch_once(&qword_3450B8, v7);
      }

      v3 = &qword_3450C0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10A420;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3450C8 != -1)
      {
        dispatch_once(&qword_3450C8, v6);
      }

      v3 = &qword_3450D0;
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
      v22[2] = sub_10AD84;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3450D8 != -1)
      {
        dispatch_once(&qword_3450D8, v22);
      }

      v3 = &qword_3450E0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10ADEC;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_3450E8 != -1)
      {
        dispatch_once(&qword_3450E8, v21);
      }

      v3 = &qword_3450F0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10AE54;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_3450F8 != -1)
      {
        dispatch_once(&qword_3450F8, v20);
      }

      v3 = &qword_345100;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10AEBC;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_345108 != -1)
      {
        dispatch_once(&qword_345108, v19);
      }

      v3 = &qword_345110;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10AF24;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_345118 != -1)
      {
        dispatch_once(&qword_345118, v18);
      }

      v3 = &qword_345120;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10AF8C;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_345128 != -1)
      {
        dispatch_once(&qword_345128, v17);
      }

      v3 = &qword_345130;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10AFF4;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_345138 != -1)
      {
        dispatch_once(&qword_345138, v16);
      }

      v3 = &qword_345140;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10B05C;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_345148 != -1)
      {
        dispatch_once(&qword_345148, v15);
      }

      v3 = &qword_345150;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10B0C4;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_345158 != -1)
      {
        dispatch_once(&qword_345158, v14);
      }

      v3 = &qword_345160;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10B12C;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_345168 != -1)
      {
        dispatch_once(&qword_345168, v13);
      }

      v3 = &qword_345170;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10B194;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_345178 != -1)
      {
        dispatch_once(&qword_345178, v12);
      }

      v3 = &qword_345180;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10B1FC;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_345188 != -1)
      {
        dispatch_once(&qword_345188, v11);
      }

      v3 = &qword_345190;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10B264;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_345198 != -1)
      {
        dispatch_once(&qword_345198, v10);
      }

      v3 = &qword_3451A0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10B2CC;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3451A8 != -1)
      {
        dispatch_once(&qword_3451A8, v9);
      }

      v3 = &qword_3451B0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10B334;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3451B8 != -1)
      {
        dispatch_once(&qword_3451B8, block);
      }

      v3 = &qword_3451C0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10B39C;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3451C8 != -1)
      {
        dispatch_once(&qword_3451C8, v7);
      }

      v3 = &qword_3451D0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10B404;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3451D8 != -1)
      {
        dispatch_once(&qword_3451D8, v6);
      }

      v3 = &qword_3451E0;
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
      v22[2] = sub_10BD68;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3451E8 != -1)
      {
        dispatch_once(&qword_3451E8, v22);
      }

      v3 = &qword_3451F0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10BDD0;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_3451F8 != -1)
      {
        dispatch_once(&qword_3451F8, v21);
      }

      v3 = &qword_345200;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10BE38;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_345208 != -1)
      {
        dispatch_once(&qword_345208, v20);
      }

      v3 = &qword_345210;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10BEA0;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_345218 != -1)
      {
        dispatch_once(&qword_345218, v19);
      }

      v3 = &qword_345220;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10BF08;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_345228 != -1)
      {
        dispatch_once(&qword_345228, v18);
      }

      v3 = &qword_345230;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10BF70;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_345238 != -1)
      {
        dispatch_once(&qword_345238, v17);
      }

      v3 = &qword_345240;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10BFD8;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_345248 != -1)
      {
        dispatch_once(&qword_345248, v16);
      }

      v3 = &qword_345250;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10C040;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_345258 != -1)
      {
        dispatch_once(&qword_345258, v15);
      }

      v3 = &qword_345260;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10C0A8;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_345268 != -1)
      {
        dispatch_once(&qword_345268, v14);
      }

      v3 = &qword_345270;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10C110;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_345278 != -1)
      {
        dispatch_once(&qword_345278, v13);
      }

      v3 = &qword_345280;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10C178;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_345288 != -1)
      {
        dispatch_once(&qword_345288, v12);
      }

      v3 = &qword_345290;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10C1E0;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_345298 != -1)
      {
        dispatch_once(&qword_345298, v11);
      }

      v3 = &qword_3452A0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10C248;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3452A8 != -1)
      {
        dispatch_once(&qword_3452A8, v10);
      }

      v3 = &qword_3452B0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10C2B0;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3452B8 != -1)
      {
        dispatch_once(&qword_3452B8, v9);
      }

      v3 = &qword_3452C0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10C318;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3452C8 != -1)
      {
        dispatch_once(&qword_3452C8, block);
      }

      v3 = &qword_3452D0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10C380;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3452D8 != -1)
      {
        dispatch_once(&qword_3452D8, v7);
      }

      v3 = &qword_3452E0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10C3E8;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3452E8 != -1)
      {
        dispatch_once(&qword_3452E8, v6);
      }

      v3 = &qword_3452F0;
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
      v22[2] = sub_10CD4C;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3452F8 != -1)
      {
        dispatch_once(&qword_3452F8, v22);
      }

      v3 = &qword_345300;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10CDB4;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_345308 != -1)
      {
        dispatch_once(&qword_345308, v21);
      }

      v3 = &qword_345310;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10CE1C;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_345318 != -1)
      {
        dispatch_once(&qword_345318, v20);
      }

      v3 = &qword_345320;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10CE84;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_345328 != -1)
      {
        dispatch_once(&qword_345328, v19);
      }

      v3 = &qword_345330;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10CEEC;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_345338 != -1)
      {
        dispatch_once(&qword_345338, v18);
      }

      v3 = &qword_345340;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10CF54;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_345348 != -1)
      {
        dispatch_once(&qword_345348, v17);
      }

      v3 = &qword_345350;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10CFBC;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_345358 != -1)
      {
        dispatch_once(&qword_345358, v16);
      }

      v3 = &qword_345360;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10D024;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_345368 != -1)
      {
        dispatch_once(&qword_345368, v15);
      }

      v3 = &qword_345370;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10D08C;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_345378 != -1)
      {
        dispatch_once(&qword_345378, v14);
      }

      v3 = &qword_345380;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10D0F4;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_345388 != -1)
      {
        dispatch_once(&qword_345388, v13);
      }

      v3 = &qword_345390;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10D15C;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_345398 != -1)
      {
        dispatch_once(&qword_345398, v12);
      }

      v3 = &qword_3453A0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10D1C4;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3453A8 != -1)
      {
        dispatch_once(&qword_3453A8, v11);
      }

      v3 = &qword_3453B0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10D22C;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3453B8 != -1)
      {
        dispatch_once(&qword_3453B8, v10);
      }

      v3 = &qword_3453C0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10D294;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3453C8 != -1)
      {
        dispatch_once(&qword_3453C8, v9);
      }

      v3 = &qword_3453D0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10D2FC;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3453D8 != -1)
      {
        dispatch_once(&qword_3453D8, block);
      }

      v3 = &qword_3453E0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10D364;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3453E8 != -1)
      {
        dispatch_once(&qword_3453E8, v7);
      }

      v3 = &qword_3453F0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10D3CC;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3453F8 != -1)
      {
        dispatch_once(&qword_3453F8, v6);
      }

      v3 = &qword_345400;
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
      v22[2] = sub_10DD30;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_345408 != -1)
      {
        dispatch_once(&qword_345408, v22);
      }

      v3 = &qword_345410;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10DD98;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_345418 != -1)
      {
        dispatch_once(&qword_345418, v21);
      }

      v3 = &qword_345420;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10DE00;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_345428 != -1)
      {
        dispatch_once(&qword_345428, v20);
      }

      v3 = &qword_345430;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10DE68;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_345438 != -1)
      {
        dispatch_once(&qword_345438, v19);
      }

      v3 = &qword_345440;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10DED0;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_345448 != -1)
      {
        dispatch_once(&qword_345448, v18);
      }

      v3 = &qword_345450;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10DF38;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_345458 != -1)
      {
        dispatch_once(&qword_345458, v17);
      }

      v3 = &qword_345460;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10DFA0;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_345468 != -1)
      {
        dispatch_once(&qword_345468, v16);
      }

      v3 = &qword_345470;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10E008;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_345478 != -1)
      {
        dispatch_once(&qword_345478, v15);
      }

      v3 = &qword_345480;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10E070;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_345488 != -1)
      {
        dispatch_once(&qword_345488, v14);
      }

      v3 = &qword_345490;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10E0D8;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_345498 != -1)
      {
        dispatch_once(&qword_345498, v13);
      }

      v3 = &qword_3454A0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10E140;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3454A8 != -1)
      {
        dispatch_once(&qword_3454A8, v12);
      }

      v3 = &qword_3454B0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10E1A8;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3454B8 != -1)
      {
        dispatch_once(&qword_3454B8, v11);
      }

      v3 = &qword_3454C0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10E210;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3454C8 != -1)
      {
        dispatch_once(&qword_3454C8, v10);
      }

      v3 = &qword_3454D0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10E278;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3454D8 != -1)
      {
        dispatch_once(&qword_3454D8, v9);
      }

      v3 = &qword_3454E0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10E2E0;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3454E8 != -1)
      {
        dispatch_once(&qword_3454E8, block);
      }

      v3 = &qword_3454F0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10E348;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3454F8 != -1)
      {
        dispatch_once(&qword_3454F8, v7);
      }

      v3 = &qword_345500;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10E3B0;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_345508 != -1)
      {
        dispatch_once(&qword_345508, v6);
      }

      v3 = &qword_345510;
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
      v22[2] = sub_10ED14;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_345518 != -1)
      {
        dispatch_once(&qword_345518, v22);
      }

      v3 = &qword_345520;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10ED7C;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_345528 != -1)
      {
        dispatch_once(&qword_345528, v21);
      }

      v3 = &qword_345530;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10EDE4;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_345538 != -1)
      {
        dispatch_once(&qword_345538, v20);
      }

      v3 = &qword_345540;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10EE4C;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_345548 != -1)
      {
        dispatch_once(&qword_345548, v19);
      }

      v3 = &qword_345550;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10EEB4;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_345558 != -1)
      {
        dispatch_once(&qword_345558, v18);
      }

      v3 = &qword_345560;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10EF1C;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_345568 != -1)
      {
        dispatch_once(&qword_345568, v17);
      }

      v3 = &qword_345570;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10EF84;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_345578 != -1)
      {
        dispatch_once(&qword_345578, v16);
      }

      v3 = &qword_345580;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10EFEC;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_345588 != -1)
      {
        dispatch_once(&qword_345588, v15);
      }

      v3 = &qword_345590;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10F054;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_345598 != -1)
      {
        dispatch_once(&qword_345598, v14);
      }

      v3 = &qword_3455A0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10F0BC;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_3455A8 != -1)
      {
        dispatch_once(&qword_3455A8, v13);
      }

      v3 = &qword_3455B0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10F124;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3455B8 != -1)
      {
        dispatch_once(&qword_3455B8, v12);
      }

      v3 = &qword_3455C0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10F18C;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3455C8 != -1)
      {
        dispatch_once(&qword_3455C8, v11);
      }

      v3 = &qword_3455D0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10F1F4;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3455D8 != -1)
      {
        dispatch_once(&qword_3455D8, v10);
      }

      v3 = &qword_3455E0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10F25C;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3455E8 != -1)
      {
        dispatch_once(&qword_3455E8, v9);
      }

      v3 = &qword_3455F0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10F2C4;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3455F8 != -1)
      {
        dispatch_once(&qword_3455F8, block);
      }

      v3 = &qword_345600;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10F32C;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_345608 != -1)
      {
        dispatch_once(&qword_345608, v7);
      }

      v3 = &qword_345610;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10F394;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_345618 != -1)
      {
        dispatch_once(&qword_345618, v6);
      }

      v3 = &qword_345620;
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
  block[2] = sub_10F48C;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (qword_345628 != -1)
  {
    dispatch_once(&qword_345628, block);
  }

  return byte_345630;
}

@end