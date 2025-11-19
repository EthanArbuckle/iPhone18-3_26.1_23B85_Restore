@interface AEAnnotationThemeYellow
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AEAnnotationThemeYellow

- (id)noteFillColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_F3CF0;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_343838 != -1)
      {
        dispatch_once(&qword_343838, v22);
      }

      v3 = &qword_343840;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_F3D58;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_343848 != -1)
      {
        dispatch_once(&qword_343848, v21);
      }

      v3 = &qword_343850;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_F3DC0;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343858 != -1)
      {
        dispatch_once(&qword_343858, v20);
      }

      v3 = &qword_343860;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_F3E28;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343868 != -1)
      {
        dispatch_once(&qword_343868, v19);
      }

      v3 = &qword_343870;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_F3E90;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343878 != -1)
      {
        dispatch_once(&qword_343878, v18);
      }

      v3 = &qword_343880;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_F3EF8;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343888 != -1)
      {
        dispatch_once(&qword_343888, v17);
      }

      v3 = &qword_343890;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F3F60;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343898 != -1)
      {
        dispatch_once(&qword_343898, v16);
      }

      v3 = &qword_3438A0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_F3FC8;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_3438A8 != -1)
      {
        dispatch_once(&qword_3438A8, v15);
      }

      v3 = &qword_3438B0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_F4030;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_3438B8 != -1)
      {
        dispatch_once(&qword_3438B8, v14);
      }

      v3 = &qword_3438C0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_F4098;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_3438C8 != -1)
      {
        dispatch_once(&qword_3438C8, v13);
      }

      v3 = &qword_3438D0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_F4100;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3438D8 != -1)
      {
        dispatch_once(&qword_3438D8, v12);
      }

      v3 = &qword_3438E0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_F4168;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3438E8 != -1)
      {
        dispatch_once(&qword_3438E8, v11);
      }

      v3 = &qword_3438F0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_F41D0;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3438F8 != -1)
      {
        dispatch_once(&qword_3438F8, v10);
      }

      v3 = &qword_343900;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F4238;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_343908 != -1)
      {
        dispatch_once(&qword_343908, v9);
      }

      v3 = &qword_343910;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F42A0;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_343918 != -1)
      {
        dispatch_once(&qword_343918, block);
      }

      v3 = &qword_343920;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F4308;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_343928 != -1)
      {
        dispatch_once(&qword_343928, v7);
      }

      v3 = &qword_343930;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_F4370;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_343938 != -1)
      {
        dispatch_once(&qword_343938, v6);
      }

      v3 = &qword_343940;
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
      v22[2] = sub_F4CD4;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_343948 != -1)
      {
        dispatch_once(&qword_343948, v22);
      }

      v3 = &qword_343950;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_F4D3C;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_343958 != -1)
      {
        dispatch_once(&qword_343958, v21);
      }

      v3 = &qword_343960;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_F4DA4;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343968 != -1)
      {
        dispatch_once(&qword_343968, v20);
      }

      v3 = &qword_343970;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_F4E0C;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343978 != -1)
      {
        dispatch_once(&qword_343978, v19);
      }

      v3 = &qword_343980;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_F4E74;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343988 != -1)
      {
        dispatch_once(&qword_343988, v18);
      }

      v3 = &qword_343990;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_F4EDC;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343998 != -1)
      {
        dispatch_once(&qword_343998, v17);
      }

      v3 = &qword_3439A0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F4F44;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_3439A8 != -1)
      {
        dispatch_once(&qword_3439A8, v16);
      }

      v3 = &qword_3439B0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_F4FAC;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_3439B8 != -1)
      {
        dispatch_once(&qword_3439B8, v15);
      }

      v3 = &qword_3439C0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_F5014;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_3439C8 != -1)
      {
        dispatch_once(&qword_3439C8, v14);
      }

      v3 = &qword_3439D0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_F507C;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_3439D8 != -1)
      {
        dispatch_once(&qword_3439D8, v13);
      }

      v3 = &qword_3439E0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_F50E4;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3439E8 != -1)
      {
        dispatch_once(&qword_3439E8, v12);
      }

      v3 = &qword_3439F0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_F514C;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3439F8 != -1)
      {
        dispatch_once(&qword_3439F8, v11);
      }

      v3 = &qword_343A00;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_F51B4;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_343A08 != -1)
      {
        dispatch_once(&qword_343A08, v10);
      }

      v3 = &qword_343A10;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F521C;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_343A18 != -1)
      {
        dispatch_once(&qword_343A18, v9);
      }

      v3 = &qword_343A20;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F5284;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_343A28 != -1)
      {
        dispatch_once(&qword_343A28, block);
      }

      v3 = &qword_343A30;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F52EC;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_343A38 != -1)
      {
        dispatch_once(&qword_343A38, v7);
      }

      v3 = &qword_343A40;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_F5354;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_343A48 != -1)
      {
        dispatch_once(&qword_343A48, v6);
      }

      v3 = &qword_343A50;
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
      v22[2] = sub_F5CB8;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_343A58 != -1)
      {
        dispatch_once(&qword_343A58, v22);
      }

      v3 = &qword_343A60;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_F5D20;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_343A68 != -1)
      {
        dispatch_once(&qword_343A68, v21);
      }

      v3 = &qword_343A70;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_F5D88;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343A78 != -1)
      {
        dispatch_once(&qword_343A78, v20);
      }

      v3 = &qword_343A80;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_F5DF0;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343A88 != -1)
      {
        dispatch_once(&qword_343A88, v19);
      }

      v3 = &qword_343A90;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_F5E58;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343A98 != -1)
      {
        dispatch_once(&qword_343A98, v18);
      }

      v3 = &qword_343AA0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_F5EC0;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343AA8 != -1)
      {
        dispatch_once(&qword_343AA8, v17);
      }

      v3 = &qword_343AB0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F5F28;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343AB8 != -1)
      {
        dispatch_once(&qword_343AB8, v16);
      }

      v3 = &qword_343AC0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_F5F90;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343AC8 != -1)
      {
        dispatch_once(&qword_343AC8, v15);
      }

      v3 = &qword_343AD0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_F5FF8;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343AD8 != -1)
      {
        dispatch_once(&qword_343AD8, v14);
      }

      v3 = &qword_343AE0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_F6060;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343AE8 != -1)
      {
        dispatch_once(&qword_343AE8, v13);
      }

      v3 = &qword_343AF0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_F60C8;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_343AF8 != -1)
      {
        dispatch_once(&qword_343AF8, v12);
      }

      v3 = &qword_343B00;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_F6130;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_343B08 != -1)
      {
        dispatch_once(&qword_343B08, v11);
      }

      v3 = &qword_343B10;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_F6198;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_343B18 != -1)
      {
        dispatch_once(&qword_343B18, v10);
      }

      v3 = &qword_343B20;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F6200;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_343B28 != -1)
      {
        dispatch_once(&qword_343B28, v9);
      }

      v3 = &qword_343B30;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F6268;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_343B38 != -1)
      {
        dispatch_once(&qword_343B38, block);
      }

      v3 = &qword_343B40;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F62D0;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_343B48 != -1)
      {
        dispatch_once(&qword_343B48, v7);
      }

      v3 = &qword_343B50;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_F6338;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_343B58 != -1)
      {
        dispatch_once(&qword_343B58, v6);
      }

      v3 = &qword_343B60;
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
      v22[2] = sub_F6C9C;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_343B68 != -1)
      {
        dispatch_once(&qword_343B68, v22);
      }

      v3 = &qword_343B70;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_F6D04;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_343B78 != -1)
      {
        dispatch_once(&qword_343B78, v21);
      }

      v3 = &qword_343B80;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_F6D6C;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343B88 != -1)
      {
        dispatch_once(&qword_343B88, v20);
      }

      v3 = &qword_343B90;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_F6DD4;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343B98 != -1)
      {
        dispatch_once(&qword_343B98, v19);
      }

      v3 = &qword_343BA0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_F6E3C;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343BA8 != -1)
      {
        dispatch_once(&qword_343BA8, v18);
      }

      v3 = &qword_343BB0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_F6EA4;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343BB8 != -1)
      {
        dispatch_once(&qword_343BB8, v17);
      }

      v3 = &qword_343BC0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F6F0C;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343BC8 != -1)
      {
        dispatch_once(&qword_343BC8, v16);
      }

      v3 = &qword_343BD0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_F6F74;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343BD8 != -1)
      {
        dispatch_once(&qword_343BD8, v15);
      }

      v3 = &qword_343BE0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_F6FDC;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343BE8 != -1)
      {
        dispatch_once(&qword_343BE8, v14);
      }

      v3 = &qword_343BF0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_F7044;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343BF8 != -1)
      {
        dispatch_once(&qword_343BF8, v13);
      }

      v3 = &qword_343C00;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_F70AC;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_343C08 != -1)
      {
        dispatch_once(&qword_343C08, v12);
      }

      v3 = &qword_343C10;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_F7114;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_343C18 != -1)
      {
        dispatch_once(&qword_343C18, v11);
      }

      v3 = &qword_343C20;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_F717C;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_343C28 != -1)
      {
        dispatch_once(&qword_343C28, v10);
      }

      v3 = &qword_343C30;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F71E4;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_343C38 != -1)
      {
        dispatch_once(&qword_343C38, v9);
      }

      v3 = &qword_343C40;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F724C;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_343C48 != -1)
      {
        dispatch_once(&qword_343C48, block);
      }

      v3 = &qword_343C50;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F72B4;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_343C58 != -1)
      {
        dispatch_once(&qword_343C58, v7);
      }

      v3 = &qword_343C60;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_F731C;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_343C68 != -1)
      {
        dispatch_once(&qword_343C68, v6);
      }

      v3 = &qword_343C70;
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
      v22[2] = sub_F7C80;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_343C78 != -1)
      {
        dispatch_once(&qword_343C78, v22);
      }

      v3 = &qword_343C80;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_F7CE8;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_343C88 != -1)
      {
        dispatch_once(&qword_343C88, v21);
      }

      v3 = &qword_343C90;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_F7D50;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343C98 != -1)
      {
        dispatch_once(&qword_343C98, v20);
      }

      v3 = &qword_343CA0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_F7DB8;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343CA8 != -1)
      {
        dispatch_once(&qword_343CA8, v19);
      }

      v3 = &qword_343CB0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_F7E20;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343CB8 != -1)
      {
        dispatch_once(&qword_343CB8, v18);
      }

      v3 = &qword_343CC0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_F7E88;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343CC8 != -1)
      {
        dispatch_once(&qword_343CC8, v17);
      }

      v3 = &qword_343CD0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F7EF0;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343CD8 != -1)
      {
        dispatch_once(&qword_343CD8, v16);
      }

      v3 = &qword_343CE0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_F7F58;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343CE8 != -1)
      {
        dispatch_once(&qword_343CE8, v15);
      }

      v3 = &qword_343CF0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_F7FC0;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343CF8 != -1)
      {
        dispatch_once(&qword_343CF8, v14);
      }

      v3 = &qword_343D00;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_F8028;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343D08 != -1)
      {
        dispatch_once(&qword_343D08, v13);
      }

      v3 = &qword_343D10;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_F8090;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_343D18 != -1)
      {
        dispatch_once(&qword_343D18, v12);
      }

      v3 = &qword_343D20;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_F80F8;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_343D28 != -1)
      {
        dispatch_once(&qword_343D28, v11);
      }

      v3 = &qword_343D30;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_F8160;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_343D38 != -1)
      {
        dispatch_once(&qword_343D38, v10);
      }

      v3 = &qword_343D40;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F81C8;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_343D48 != -1)
      {
        dispatch_once(&qword_343D48, v9);
      }

      v3 = &qword_343D50;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F8230;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_343D58 != -1)
      {
        dispatch_once(&qword_343D58, block);
      }

      v3 = &qword_343D60;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F8298;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_343D68 != -1)
      {
        dispatch_once(&qword_343D68, v7);
      }

      v3 = &qword_343D70;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_F8300;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_343D78 != -1)
      {
        dispatch_once(&qword_343D78, v6);
      }

      v3 = &qword_343D80;
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
      v22[2] = sub_F8C64;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_343D88 != -1)
      {
        dispatch_once(&qword_343D88, v22);
      }

      v3 = &qword_343D90;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_F8CCC;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_343D98 != -1)
      {
        dispatch_once(&qword_343D98, v21);
      }

      v3 = &qword_343DA0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_F8D34;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343DA8 != -1)
      {
        dispatch_once(&qword_343DA8, v20);
      }

      v3 = &qword_343DB0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_F8D9C;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343DB8 != -1)
      {
        dispatch_once(&qword_343DB8, v19);
      }

      v3 = &qword_343DC0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_F8E04;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343DC8 != -1)
      {
        dispatch_once(&qword_343DC8, v18);
      }

      v3 = &qword_343DD0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_F8E6C;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343DD8 != -1)
      {
        dispatch_once(&qword_343DD8, v17);
      }

      v3 = &qword_343DE0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F8ED4;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343DE8 != -1)
      {
        dispatch_once(&qword_343DE8, v16);
      }

      v3 = &qword_343DF0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_F8F3C;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343DF8 != -1)
      {
        dispatch_once(&qword_343DF8, v15);
      }

      v3 = &qword_343E00;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_F8FA4;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343E08 != -1)
      {
        dispatch_once(&qword_343E08, v14);
      }

      v3 = &qword_343E10;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_F900C;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343E18 != -1)
      {
        dispatch_once(&qword_343E18, v13);
      }

      v3 = &qword_343E20;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_F9074;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_343E28 != -1)
      {
        dispatch_once(&qword_343E28, v12);
      }

      v3 = &qword_343E30;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_F90DC;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_343E38 != -1)
      {
        dispatch_once(&qword_343E38, v11);
      }

      v3 = &qword_343E40;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_F9144;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_343E48 != -1)
      {
        dispatch_once(&qword_343E48, v10);
      }

      v3 = &qword_343E50;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F91AC;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_343E58 != -1)
      {
        dispatch_once(&qword_343E58, v9);
      }

      v3 = &qword_343E60;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F9214;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_343E68 != -1)
      {
        dispatch_once(&qword_343E68, block);
      }

      v3 = &qword_343E70;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F927C;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_343E78 != -1)
      {
        dispatch_once(&qword_343E78, v7);
      }

      v3 = &qword_343E80;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_F92E4;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_343E88 != -1)
      {
        dispatch_once(&qword_343E88, v6);
      }

      v3 = &qword_343E90;
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
      v22[2] = sub_F9C48;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_343E98 != -1)
      {
        dispatch_once(&qword_343E98, v22);
      }

      v3 = &qword_343EA0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_F9CB0;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_343EA8 != -1)
      {
        dispatch_once(&qword_343EA8, v21);
      }

      v3 = &qword_343EB0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_F9D18;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343EB8 != -1)
      {
        dispatch_once(&qword_343EB8, v20);
      }

      v3 = &qword_343EC0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_F9D80;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343EC8 != -1)
      {
        dispatch_once(&qword_343EC8, v19);
      }

      v3 = &qword_343ED0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_F9DE8;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343ED8 != -1)
      {
        dispatch_once(&qword_343ED8, v18);
      }

      v3 = &qword_343EE0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_F9E50;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343EE8 != -1)
      {
        dispatch_once(&qword_343EE8, v17);
      }

      v3 = &qword_343EF0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F9EB8;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343EF8 != -1)
      {
        dispatch_once(&qword_343EF8, v16);
      }

      v3 = &qword_343F00;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_F9F20;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343F08 != -1)
      {
        dispatch_once(&qword_343F08, v15);
      }

      v3 = &qword_343F10;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_F9F88;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343F18 != -1)
      {
        dispatch_once(&qword_343F18, v14);
      }

      v3 = &qword_343F20;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_F9FF0;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343F28 != -1)
      {
        dispatch_once(&qword_343F28, v13);
      }

      v3 = &qword_343F30;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_FA058;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_343F38 != -1)
      {
        dispatch_once(&qword_343F38, v12);
      }

      v3 = &qword_343F40;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_FA0C0;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_343F48 != -1)
      {
        dispatch_once(&qword_343F48, v11);
      }

      v3 = &qword_343F50;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_FA128;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_343F58 != -1)
      {
        dispatch_once(&qword_343F58, v10);
      }

      v3 = &qword_343F60;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_FA190;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_343F68 != -1)
      {
        dispatch_once(&qword_343F68, v9);
      }

      v3 = &qword_343F70;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_FA1F8;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_343F78 != -1)
      {
        dispatch_once(&qword_343F78, block);
      }

      v3 = &qword_343F80;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_FA260;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_343F88 != -1)
      {
        dispatch_once(&qword_343F88, v7);
      }

      v3 = &qword_343F90;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_FA2C8;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_343F98 != -1)
      {
        dispatch_once(&qword_343F98, v6);
      }

      v3 = &qword_343FA0;
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
  block[2] = sub_FA3C0;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (qword_343FA8 != -1)
  {
    dispatch_once(&qword_343FA8, block);
  }

  return byte_343FB0;
}

@end