@interface AEAnnotationThemeBlue
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AEAnnotationThemeBlue

- (id)noteFillColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_ECCAC;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3430B8 != -1)
      {
        dispatch_once(&qword_3430B8, v22);
      }

      v3 = &qword_3430C0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_ECD14;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_3430C8 != -1)
      {
        dispatch_once(&qword_3430C8, v21);
      }

      v3 = &qword_3430D0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_ECD7C;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_3430D8 != -1)
      {
        dispatch_once(&qword_3430D8, v20);
      }

      v3 = &qword_3430E0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_ECDE4;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_3430E8 != -1)
      {
        dispatch_once(&qword_3430E8, v19);
      }

      v3 = &qword_3430F0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_ECE4C;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_3430F8 != -1)
      {
        dispatch_once(&qword_3430F8, v18);
      }

      v3 = &qword_343100;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_ECEB4;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343108 != -1)
      {
        dispatch_once(&qword_343108, v17);
      }

      v3 = &qword_343110;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_ECF1C;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343118 != -1)
      {
        dispatch_once(&qword_343118, v16);
      }

      v3 = &qword_343120;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_ECF84;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343128 != -1)
      {
        dispatch_once(&qword_343128, v15);
      }

      v3 = &qword_343130;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_ECFEC;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343138 != -1)
      {
        dispatch_once(&qword_343138, v14);
      }

      v3 = &qword_343140;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_ED054;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343148 != -1)
      {
        dispatch_once(&qword_343148, v13);
      }

      v3 = &qword_343150;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_ED0BC;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_343158 != -1)
      {
        dispatch_once(&qword_343158, v12);
      }

      v3 = &qword_343160;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_ED124;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_343168 != -1)
      {
        dispatch_once(&qword_343168, v11);
      }

      v3 = &qword_343170;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_ED18C;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_343178 != -1)
      {
        dispatch_once(&qword_343178, v10);
      }

      v3 = &qword_343180;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_ED1F4;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_343188 != -1)
      {
        dispatch_once(&qword_343188, v9);
      }

      v3 = &qword_343190;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_ED25C;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_343198 != -1)
      {
        dispatch_once(&qword_343198, block);
      }

      v3 = &qword_3431A0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_ED2C4;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3431A8 != -1)
      {
        dispatch_once(&qword_3431A8, v7);
      }

      v3 = &qword_3431B0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_ED32C;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3431B8 != -1)
      {
        dispatch_once(&qword_3431B8, v6);
      }

      v3 = &qword_3431C0;
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
      v22[2] = sub_EDC90;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3431C8 != -1)
      {
        dispatch_once(&qword_3431C8, v22);
      }

      v3 = &qword_3431D0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_EDCF8;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_3431D8 != -1)
      {
        dispatch_once(&qword_3431D8, v21);
      }

      v3 = &qword_3431E0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_EDD60;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_3431E8 != -1)
      {
        dispatch_once(&qword_3431E8, v20);
      }

      v3 = &qword_3431F0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_EDDC8;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_3431F8 != -1)
      {
        dispatch_once(&qword_3431F8, v19);
      }

      v3 = &qword_343200;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_EDE30;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343208 != -1)
      {
        dispatch_once(&qword_343208, v18);
      }

      v3 = &qword_343210;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_EDE98;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343218 != -1)
      {
        dispatch_once(&qword_343218, v17);
      }

      v3 = &qword_343220;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_EDF00;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343228 != -1)
      {
        dispatch_once(&qword_343228, v16);
      }

      v3 = &qword_343230;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_EDF68;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343238 != -1)
      {
        dispatch_once(&qword_343238, v15);
      }

      v3 = &qword_343240;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_EDFD0;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343248 != -1)
      {
        dispatch_once(&qword_343248, v14);
      }

      v3 = &qword_343250;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_EE038;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343258 != -1)
      {
        dispatch_once(&qword_343258, v13);
      }

      v3 = &qword_343260;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_EE0A0;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_343268 != -1)
      {
        dispatch_once(&qword_343268, v12);
      }

      v3 = &qword_343270;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_EE108;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_343278 != -1)
      {
        dispatch_once(&qword_343278, v11);
      }

      v3 = &qword_343280;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_EE170;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_343288 != -1)
      {
        dispatch_once(&qword_343288, v10);
      }

      v3 = &qword_343290;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_EE1D8;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_343298 != -1)
      {
        dispatch_once(&qword_343298, v9);
      }

      v3 = &qword_3432A0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_EE240;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3432A8 != -1)
      {
        dispatch_once(&qword_3432A8, block);
      }

      v3 = &qword_3432B0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_EE2A8;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3432B8 != -1)
      {
        dispatch_once(&qword_3432B8, v7);
      }

      v3 = &qword_3432C0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_EE310;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3432C8 != -1)
      {
        dispatch_once(&qword_3432C8, v6);
      }

      v3 = &qword_3432D0;
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
      v22[2] = sub_EEC74;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3432D8 != -1)
      {
        dispatch_once(&qword_3432D8, v22);
      }

      v3 = &qword_3432E0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_EECDC;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_3432E8 != -1)
      {
        dispatch_once(&qword_3432E8, v21);
      }

      v3 = &qword_3432F0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_EED44;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_3432F8 != -1)
      {
        dispatch_once(&qword_3432F8, v20);
      }

      v3 = &qword_343300;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_EEDAC;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343308 != -1)
      {
        dispatch_once(&qword_343308, v19);
      }

      v3 = &qword_343310;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_EEE14;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343318 != -1)
      {
        dispatch_once(&qword_343318, v18);
      }

      v3 = &qword_343320;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_EEE7C;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343328 != -1)
      {
        dispatch_once(&qword_343328, v17);
      }

      v3 = &qword_343330;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_EEEE4;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343338 != -1)
      {
        dispatch_once(&qword_343338, v16);
      }

      v3 = &qword_343340;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_EEF4C;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343348 != -1)
      {
        dispatch_once(&qword_343348, v15);
      }

      v3 = &qword_343350;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_EEFB4;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343358 != -1)
      {
        dispatch_once(&qword_343358, v14);
      }

      v3 = &qword_343360;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_EF01C;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343368 != -1)
      {
        dispatch_once(&qword_343368, v13);
      }

      v3 = &qword_343370;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_EF084;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_343378 != -1)
      {
        dispatch_once(&qword_343378, v12);
      }

      v3 = &qword_343380;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_EF0EC;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_343388 != -1)
      {
        dispatch_once(&qword_343388, v11);
      }

      v3 = &qword_343390;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_EF154;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_343398 != -1)
      {
        dispatch_once(&qword_343398, v10);
      }

      v3 = &qword_3433A0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_EF1BC;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3433A8 != -1)
      {
        dispatch_once(&qword_3433A8, v9);
      }

      v3 = &qword_3433B0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_EF224;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3433B8 != -1)
      {
        dispatch_once(&qword_3433B8, block);
      }

      v3 = &qword_3433C0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_EF28C;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3433C8 != -1)
      {
        dispatch_once(&qword_3433C8, v7);
      }

      v3 = &qword_3433D0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_EF2F4;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3433D8 != -1)
      {
        dispatch_once(&qword_3433D8, v6);
      }

      v3 = &qword_3433E0;
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
      v22[2] = sub_EFC58;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3433E8 != -1)
      {
        dispatch_once(&qword_3433E8, v22);
      }

      v3 = &qword_3433F0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_EFCC0;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_3433F8 != -1)
      {
        dispatch_once(&qword_3433F8, v21);
      }

      v3 = &qword_343400;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_EFD28;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343408 != -1)
      {
        dispatch_once(&qword_343408, v20);
      }

      v3 = &qword_343410;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_EFD90;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343418 != -1)
      {
        dispatch_once(&qword_343418, v19);
      }

      v3 = &qword_343420;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_EFDF8;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343428 != -1)
      {
        dispatch_once(&qword_343428, v18);
      }

      v3 = &qword_343430;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_EFE60;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343438 != -1)
      {
        dispatch_once(&qword_343438, v17);
      }

      v3 = &qword_343440;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_EFEC8;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343448 != -1)
      {
        dispatch_once(&qword_343448, v16);
      }

      v3 = &qword_343450;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_EFF30;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343458 != -1)
      {
        dispatch_once(&qword_343458, v15);
      }

      v3 = &qword_343460;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_EFF98;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343468 != -1)
      {
        dispatch_once(&qword_343468, v14);
      }

      v3 = &qword_343470;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_F0000;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343478 != -1)
      {
        dispatch_once(&qword_343478, v13);
      }

      v3 = &qword_343480;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_F0068;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_343488 != -1)
      {
        dispatch_once(&qword_343488, v12);
      }

      v3 = &qword_343490;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_F00D0;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_343498 != -1)
      {
        dispatch_once(&qword_343498, v11);
      }

      v3 = &qword_3434A0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_F0138;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3434A8 != -1)
      {
        dispatch_once(&qword_3434A8, v10);
      }

      v3 = &qword_3434B0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F01A0;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3434B8 != -1)
      {
        dispatch_once(&qword_3434B8, v9);
      }

      v3 = &qword_3434C0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F0208;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3434C8 != -1)
      {
        dispatch_once(&qword_3434C8, block);
      }

      v3 = &qword_3434D0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F0270;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3434D8 != -1)
      {
        dispatch_once(&qword_3434D8, v7);
      }

      v3 = &qword_3434E0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_F02D8;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3434E8 != -1)
      {
        dispatch_once(&qword_3434E8, v6);
      }

      v3 = &qword_3434F0;
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
      v22[2] = sub_F0C3C;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_3434F8 != -1)
      {
        dispatch_once(&qword_3434F8, v22);
      }

      v3 = &qword_343500;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_F0CA4;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_343508 != -1)
      {
        dispatch_once(&qword_343508, v21);
      }

      v3 = &qword_343510;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_F0D0C;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343518 != -1)
      {
        dispatch_once(&qword_343518, v20);
      }

      v3 = &qword_343520;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_F0D74;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343528 != -1)
      {
        dispatch_once(&qword_343528, v19);
      }

      v3 = &qword_343530;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_F0DDC;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343538 != -1)
      {
        dispatch_once(&qword_343538, v18);
      }

      v3 = &qword_343540;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_F0E44;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343548 != -1)
      {
        dispatch_once(&qword_343548, v17);
      }

      v3 = &qword_343550;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F0EAC;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343558 != -1)
      {
        dispatch_once(&qword_343558, v16);
      }

      v3 = &qword_343560;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_F0F14;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343568 != -1)
      {
        dispatch_once(&qword_343568, v15);
      }

      v3 = &qword_343570;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_F0F7C;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343578 != -1)
      {
        dispatch_once(&qword_343578, v14);
      }

      v3 = &qword_343580;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_F0FE4;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343588 != -1)
      {
        dispatch_once(&qword_343588, v13);
      }

      v3 = &qword_343590;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_F104C;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_343598 != -1)
      {
        dispatch_once(&qword_343598, v12);
      }

      v3 = &qword_3435A0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_F10B4;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3435A8 != -1)
      {
        dispatch_once(&qword_3435A8, v11);
      }

      v3 = &qword_3435B0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_F111C;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3435B8 != -1)
      {
        dispatch_once(&qword_3435B8, v10);
      }

      v3 = &qword_3435C0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F1184;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3435C8 != -1)
      {
        dispatch_once(&qword_3435C8, v9);
      }

      v3 = &qword_3435D0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F11EC;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3435D8 != -1)
      {
        dispatch_once(&qword_3435D8, block);
      }

      v3 = &qword_3435E0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F1254;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3435E8 != -1)
      {
        dispatch_once(&qword_3435E8, v7);
      }

      v3 = &qword_3435F0;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_F12BC;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_3435F8 != -1)
      {
        dispatch_once(&qword_3435F8, v6);
      }

      v3 = &qword_343600;
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
      v22[2] = sub_F1C20;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_343608 != -1)
      {
        dispatch_once(&qword_343608, v22);
      }

      v3 = &qword_343610;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_F1C88;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_343618 != -1)
      {
        dispatch_once(&qword_343618, v21);
      }

      v3 = &qword_343620;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_F1CF0;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343628 != -1)
      {
        dispatch_once(&qword_343628, v20);
      }

      v3 = &qword_343630;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_F1D58;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343638 != -1)
      {
        dispatch_once(&qword_343638, v19);
      }

      v3 = &qword_343640;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_F1DC0;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343648 != -1)
      {
        dispatch_once(&qword_343648, v18);
      }

      v3 = &qword_343650;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_F1E28;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343658 != -1)
      {
        dispatch_once(&qword_343658, v17);
      }

      v3 = &qword_343660;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F1E90;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343668 != -1)
      {
        dispatch_once(&qword_343668, v16);
      }

      v3 = &qword_343670;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_F1EF8;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343678 != -1)
      {
        dispatch_once(&qword_343678, v15);
      }

      v3 = &qword_343680;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_F1F60;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343688 != -1)
      {
        dispatch_once(&qword_343688, v14);
      }

      v3 = &qword_343690;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_F1FC8;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343698 != -1)
      {
        dispatch_once(&qword_343698, v13);
      }

      v3 = &qword_3436A0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_F2030;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3436A8 != -1)
      {
        dispatch_once(&qword_3436A8, v12);
      }

      v3 = &qword_3436B0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_F2098;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3436B8 != -1)
      {
        dispatch_once(&qword_3436B8, v11);
      }

      v3 = &qword_3436C0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_F2100;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3436C8 != -1)
      {
        dispatch_once(&qword_3436C8, v10);
      }

      v3 = &qword_3436D0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F2168;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3436D8 != -1)
      {
        dispatch_once(&qword_3436D8, v9);
      }

      v3 = &qword_3436E0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F21D0;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3436E8 != -1)
      {
        dispatch_once(&qword_3436E8, block);
      }

      v3 = &qword_3436F0;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F2238;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_3436F8 != -1)
      {
        dispatch_once(&qword_3436F8, v7);
      }

      v3 = &qword_343700;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_F22A0;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_343708 != -1)
      {
        dispatch_once(&qword_343708, v6);
      }

      v3 = &qword_343710;
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
      v22[2] = sub_F2C04;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_343718 != -1)
      {
        dispatch_once(&qword_343718, v22);
      }

      v3 = &qword_343720;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_F2C6C;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_343728 != -1)
      {
        dispatch_once(&qword_343728, v21);
      }

      v3 = &qword_343730;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_F2CD4;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_343738 != -1)
      {
        dispatch_once(&qword_343738, v20);
      }

      v3 = &qword_343740;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_F2D3C;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_343748 != -1)
      {
        dispatch_once(&qword_343748, v19);
      }

      v3 = &qword_343750;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_F2DA4;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_343758 != -1)
      {
        dispatch_once(&qword_343758, v18);
      }

      v3 = &qword_343760;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_F2E0C;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_343768 != -1)
      {
        dispatch_once(&qword_343768, v17);
      }

      v3 = &qword_343770;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F2E74;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_343778 != -1)
      {
        dispatch_once(&qword_343778, v16);
      }

      v3 = &qword_343780;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_F2EDC;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343788 != -1)
      {
        dispatch_once(&qword_343788, v15);
      }

      v3 = &qword_343790;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_F2F44;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343798 != -1)
      {
        dispatch_once(&qword_343798, v14);
      }

      v3 = &qword_3437A0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_F2FAC;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_3437A8 != -1)
      {
        dispatch_once(&qword_3437A8, v13);
      }

      v3 = &qword_3437B0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_F3014;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3437B8 != -1)
      {
        dispatch_once(&qword_3437B8, v12);
      }

      v3 = &qword_3437C0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_F307C;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3437C8 != -1)
      {
        dispatch_once(&qword_3437C8, v11);
      }

      v3 = &qword_3437D0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_F30E4;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3437D8 != -1)
      {
        dispatch_once(&qword_3437D8, v10);
      }

      v3 = &qword_3437E0;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_F314C;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_3437E8 != -1)
      {
        dispatch_once(&qword_3437E8, v9);
      }

      v3 = &qword_3437F0;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F31B4;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_3437F8 != -1)
      {
        dispatch_once(&qword_3437F8, block);
      }

      v3 = &qword_343800;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F321C;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_343808 != -1)
      {
        dispatch_once(&qword_343808, v7);
      }

      v3 = &qword_343810;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_F3284;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_343818 != -1)
      {
        dispatch_once(&qword_343818, v6);
      }

      v3 = &qword_343820;
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
  block[2] = sub_F337C;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (qword_343828 != -1)
  {
    dispatch_once(&qword_343828, block);
  }

  return byte_343830;
}

@end