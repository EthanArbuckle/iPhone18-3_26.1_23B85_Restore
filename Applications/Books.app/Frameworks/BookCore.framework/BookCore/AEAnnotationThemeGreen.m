@interface AEAnnotationThemeGreen
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AEAnnotationThemeGreen

- (id)noteFillColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_E5C68;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_342938 != -1)
      {
        dispatch_once(&qword_342938, v22);
      }

      v3 = &qword_342940;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_E5CD0;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_342948 != -1)
      {
        dispatch_once(&qword_342948, v21);
      }

      v3 = &qword_342950;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_E5D38;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_342958 != -1)
      {
        dispatch_once(&qword_342958, v20);
      }

      v3 = &qword_342960;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_E5DA0;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_342968 != -1)
      {
        dispatch_once(&qword_342968, v19);
      }

      v3 = &qword_342970;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_E5E08;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_342978 != -1)
      {
        dispatch_once(&qword_342978, v18);
      }

      v3 = &qword_342980;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_E5E70;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_342988 != -1)
      {
        dispatch_once(&qword_342988, v17);
      }

      v3 = &qword_342990;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_E5ED8;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_342998 != -1)
      {
        dispatch_once(&qword_342998, v16);
      }

      v3 = &qword_3429A0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_E5F40;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_3429A8 != -1)
      {
        dispatch_once(&qword_3429A8, v15);
      }

      v3 = &qword_3429B0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_E5FA8;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_3429B8 != -1)
      {
        dispatch_once(&qword_3429B8, v14);
      }

      v3 = &qword_3429C0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_E6010;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_3429C8 != -1)
      {
        dispatch_once(&qword_3429C8, v13);
      }

      v3 = &qword_3429D0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_E6078;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3429D8 != -1)
      {
        dispatch_once(&qword_3429D8, v12);
      }

      v3 = &qword_3429E0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_E60E0;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3429E8 != -1)
      {
        dispatch_once(&qword_3429E8, v11);
      }

      v3 = &qword_3429F0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_E6148;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3429F8 != -1)
      {
        dispatch_once(&qword_3429F8, v10);
      }

      v3 = &qword_342A00;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_E61B0;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_342A08 != -1)
      {
        dispatch_once(&qword_342A08, v9);
      }

      v3 = &qword_342A10;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_E6218;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_342A18 != -1)
      {
        dispatch_once(&qword_342A18, block);
      }

      v3 = &qword_342A20;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_E6280;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_342A28 != -1)
      {
        dispatch_once(&qword_342A28, v7);
      }

      v3 = &qword_342A30;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_E62E8;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_342A38 != -1)
      {
        dispatch_once(&qword_342A38, v6);
      }

      v3 = &qword_342A40;
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
      v22[2] = sub_E6C4C;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_342A48 != -1)
      {
        dispatch_once(&qword_342A48, v22);
      }

      v3 = &qword_342A50;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_E6CB4;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_342A58 != -1)
      {
        dispatch_once(&qword_342A58, v21);
      }

      v3 = &qword_342A60;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_E6D1C;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_342A68 != -1)
      {
        dispatch_once(&qword_342A68, v20);
      }

      v3 = &qword_342A70;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_E6D84;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_342A78 != -1)
      {
        dispatch_once(&qword_342A78, v19);
      }

      v3 = &qword_342A80;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_E6DEC;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_342A88 != -1)
      {
        dispatch_once(&qword_342A88, v18);
      }

      v3 = &qword_342A90;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_E6E54;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_342A98 != -1)
      {
        dispatch_once(&qword_342A98, v17);
      }

      v3 = &qword_342AA0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_E6EBC;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_342AA8 != -1)
      {
        dispatch_once(&qword_342AA8, v16);
      }

      v3 = &qword_342AB0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_E6F24;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_342AB8 != -1)
      {
        dispatch_once(&qword_342AB8, v15);
      }

      v3 = &qword_342AC0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_E6F8C;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_342AC8 != -1)
      {
        dispatch_once(&qword_342AC8, v14);
      }

      v3 = &qword_342AD0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_E6FF4;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_342AD8 != -1)
      {
        dispatch_once(&qword_342AD8, v13);
      }

      v3 = &qword_342AE0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_E705C;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_342AE8 != -1)
      {
        dispatch_once(&qword_342AE8, v12);
      }

      v3 = &qword_342AF0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_E70C4;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_342AF8 != -1)
      {
        dispatch_once(&qword_342AF8, v11);
      }

      v3 = &qword_342B00;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_E712C;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_342B08 != -1)
      {
        dispatch_once(&qword_342B08, v10);
      }

      v3 = &qword_342B10;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_E7194;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_342B18 != -1)
      {
        dispatch_once(&qword_342B18, v9);
      }

      v3 = &qword_342B20;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_E71FC;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_342B28 != -1)
      {
        dispatch_once(&qword_342B28, block);
      }

      v3 = &qword_342B30;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_E7264;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_342B38 != -1)
      {
        dispatch_once(&qword_342B38, v7);
      }

      v3 = &qword_342B40;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_E72CC;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_342B48 != -1)
      {
        dispatch_once(&qword_342B48, v6);
      }

      v3 = &qword_342B50;
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
      v22[2] = sub_E7C30;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_342B58 != -1)
      {
        dispatch_once(&qword_342B58, v22);
      }

      v3 = &qword_342B60;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_E7C98;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_342B68 != -1)
      {
        dispatch_once(&qword_342B68, v21);
      }

      v3 = &qword_342B70;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_E7D00;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_342B78 != -1)
      {
        dispatch_once(&qword_342B78, v20);
      }

      v3 = &qword_342B80;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_E7D68;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_342B88 != -1)
      {
        dispatch_once(&qword_342B88, v19);
      }

      v3 = &qword_342B90;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_E7DD0;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_342B98 != -1)
      {
        dispatch_once(&qword_342B98, v18);
      }

      v3 = &qword_342BA0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_E7E38;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_342BA8 != -1)
      {
        dispatch_once(&qword_342BA8, v17);
      }

      v3 = &qword_342BB0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_E7EA0;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_342BB8 != -1)
      {
        dispatch_once(&qword_342BB8, v16);
      }

      v3 = &qword_342BC0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_E7F08;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_342BC8 != -1)
      {
        dispatch_once(&qword_342BC8, v15);
      }

      v3 = &qword_342BD0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_E7F70;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_342BD8 != -1)
      {
        dispatch_once(&qword_342BD8, v14);
      }

      v3 = &qword_342BE0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_E7FD8;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_342BE8 != -1)
      {
        dispatch_once(&qword_342BE8, v13);
      }

      v3 = &qword_342BF0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_E8040;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_342BF8 != -1)
      {
        dispatch_once(&qword_342BF8, v12);
      }

      v3 = &qword_342C00;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_E80A8;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_342C08 != -1)
      {
        dispatch_once(&qword_342C08, v11);
      }

      v3 = &qword_342C10;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_E8110;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_342C18 != -1)
      {
        dispatch_once(&qword_342C18, v10);
      }

      v3 = &qword_342C20;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_E8178;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_342C28 != -1)
      {
        dispatch_once(&qword_342C28, v9);
      }

      v3 = &qword_342C30;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_E81E0;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_342C38 != -1)
      {
        dispatch_once(&qword_342C38, block);
      }

      v3 = &qword_342C40;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_E8248;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_342C48 != -1)
      {
        dispatch_once(&qword_342C48, v7);
      }

      v3 = &qword_342C50;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_E82B0;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_342C58 != -1)
      {
        dispatch_once(&qword_342C58, v6);
      }

      v3 = &qword_342C60;
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
      v22[2] = sub_E8C14;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_342C68 != -1)
      {
        dispatch_once(&qword_342C68, v22);
      }

      v3 = &qword_342C70;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_E8C7C;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_342C78 != -1)
      {
        dispatch_once(&qword_342C78, v21);
      }

      v3 = &qword_342C80;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_E8CE4;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_342C88 != -1)
      {
        dispatch_once(&qword_342C88, v20);
      }

      v3 = &qword_342C90;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_E8D4C;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_342C98 != -1)
      {
        dispatch_once(&qword_342C98, v19);
      }

      v3 = &qword_342CA0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_E8DB4;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_342CA8 != -1)
      {
        dispatch_once(&qword_342CA8, v18);
      }

      v3 = &qword_342CB0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_E8E1C;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_342CB8 != -1)
      {
        dispatch_once(&qword_342CB8, v17);
      }

      v3 = &qword_342CC0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_E8E84;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_342CC8 != -1)
      {
        dispatch_once(&qword_342CC8, v16);
      }

      v3 = &qword_342CD0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_E8EEC;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_342CD8 != -1)
      {
        dispatch_once(&qword_342CD8, v15);
      }

      v3 = &qword_342CE0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_E8F54;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_342CE8 != -1)
      {
        dispatch_once(&qword_342CE8, v14);
      }

      v3 = &qword_342CF0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_E8FBC;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_342CF8 != -1)
      {
        dispatch_once(&qword_342CF8, v13);
      }

      v3 = &qword_342D00;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_E9024;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_342D08 != -1)
      {
        dispatch_once(&qword_342D08, v12);
      }

      v3 = &qword_342D10;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_E908C;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_342D18 != -1)
      {
        dispatch_once(&qword_342D18, v11);
      }

      v3 = &qword_342D20;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_E90F4;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_342D28 != -1)
      {
        dispatch_once(&qword_342D28, v10);
      }

      v3 = &qword_342D30;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_E915C;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_342D38 != -1)
      {
        dispatch_once(&qword_342D38, v9);
      }

      v3 = &qword_342D40;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_E91C4;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_342D48 != -1)
      {
        dispatch_once(&qword_342D48, block);
      }

      v3 = &qword_342D50;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_E922C;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_342D58 != -1)
      {
        dispatch_once(&qword_342D58, v7);
      }

      v3 = &qword_342D60;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_E9294;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_342D68 != -1)
      {
        dispatch_once(&qword_342D68, v6);
      }

      v3 = &qword_342D70;
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
      v22[2] = sub_E9BF8;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_342D78 != -1)
      {
        dispatch_once(&qword_342D78, v22);
      }

      v3 = &qword_342D80;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_E9C60;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_342D88 != -1)
      {
        dispatch_once(&qword_342D88, v21);
      }

      v3 = &qword_342D90;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_E9CC8;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_342D98 != -1)
      {
        dispatch_once(&qword_342D98, v20);
      }

      v3 = &qword_342DA0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_E9D30;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_342DA8 != -1)
      {
        dispatch_once(&qword_342DA8, v19);
      }

      v3 = &qword_342DB0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_E9D98;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_342DB8 != -1)
      {
        dispatch_once(&qword_342DB8, v18);
      }

      v3 = &qword_342DC0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_E9E00;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_342DC8 != -1)
      {
        dispatch_once(&qword_342DC8, v17);
      }

      v3 = &qword_342DD0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_E9E68;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_342DD8 != -1)
      {
        dispatch_once(&qword_342DD8, v16);
      }

      v3 = &qword_342DE0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_E9ED0;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_342DE8 != -1)
      {
        dispatch_once(&qword_342DE8, v15);
      }

      v3 = &qword_342DF0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_E9F38;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_342DF8 != -1)
      {
        dispatch_once(&qword_342DF8, v14);
      }

      v3 = &qword_342E00;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_E9FA0;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_342E08 != -1)
      {
        dispatch_once(&qword_342E08, v13);
      }

      v3 = &qword_342E10;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_EA008;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_342E18 != -1)
      {
        dispatch_once(&qword_342E18, v12);
      }

      v3 = &qword_342E20;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_EA070;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_342E28 != -1)
      {
        dispatch_once(&qword_342E28, v11);
      }

      v3 = &qword_342E30;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_EA0D8;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_342E38 != -1)
      {
        dispatch_once(&qword_342E38, v10);
      }

      v3 = &qword_342E40;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_EA140;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_342E48 != -1)
      {
        dispatch_once(&qword_342E48, v9);
      }

      v3 = &qword_342E50;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_EA1A8;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_342E58 != -1)
      {
        dispatch_once(&qword_342E58, block);
      }

      v3 = &qword_342E60;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_EA210;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_342E68 != -1)
      {
        dispatch_once(&qword_342E68, v7);
      }

      v3 = &qword_342E70;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_EA278;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_342E78 != -1)
      {
        dispatch_once(&qword_342E78, v6);
      }

      v3 = &qword_342E80;
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
      v22[2] = sub_EABDC;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_342E88 != -1)
      {
        dispatch_once(&qword_342E88, v22);
      }

      v3 = &qword_342E90;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_EAC44;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_342E98 != -1)
      {
        dispatch_once(&qword_342E98, v21);
      }

      v3 = &qword_342EA0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_EACAC;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_342EA8 != -1)
      {
        dispatch_once(&qword_342EA8, v20);
      }

      v3 = &qword_342EB0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_EAD14;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_342EB8 != -1)
      {
        dispatch_once(&qword_342EB8, v19);
      }

      v3 = &qword_342EC0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_EAD7C;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_342EC8 != -1)
      {
        dispatch_once(&qword_342EC8, v18);
      }

      v3 = &qword_342ED0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_EADE4;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_342ED8 != -1)
      {
        dispatch_once(&qword_342ED8, v17);
      }

      v3 = &qword_342EE0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_EAE4C;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_342EE8 != -1)
      {
        dispatch_once(&qword_342EE8, v16);
      }

      v3 = &qword_342EF0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_EAEB4;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_342EF8 != -1)
      {
        dispatch_once(&qword_342EF8, v15);
      }

      v3 = &qword_342F00;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_EAF1C;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_342F08 != -1)
      {
        dispatch_once(&qword_342F08, v14);
      }

      v3 = &qword_342F10;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_EAF84;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_342F18 != -1)
      {
        dispatch_once(&qword_342F18, v13);
      }

      v3 = &qword_342F20;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_EAFEC;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_342F28 != -1)
      {
        dispatch_once(&qword_342F28, v12);
      }

      v3 = &qword_342F30;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_EB054;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_342F38 != -1)
      {
        dispatch_once(&qword_342F38, v11);
      }

      v3 = &qword_342F40;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_EB0BC;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_342F48 != -1)
      {
        dispatch_once(&qword_342F48, v10);
      }

      v3 = &qword_342F50;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_EB124;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_342F58 != -1)
      {
        dispatch_once(&qword_342F58, v9);
      }

      v3 = &qword_342F60;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_EB18C;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_342F68 != -1)
      {
        dispatch_once(&qword_342F68, block);
      }

      v3 = &qword_342F70;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_EB1F4;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_342F78 != -1)
      {
        dispatch_once(&qword_342F78, v7);
      }

      v3 = &qword_342F80;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_EB25C;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_342F88 != -1)
      {
        dispatch_once(&qword_342F88, v6);
      }

      v3 = &qword_342F90;
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
      v22[2] = sub_EBBC0;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_342F98 != -1)
      {
        dispatch_once(&qword_342F98, v22);
      }

      v3 = &qword_342FA0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_EBC28;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_342FA8 != -1)
      {
        dispatch_once(&qword_342FA8, v21);
      }

      v3 = &qword_342FB0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_EBC90;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_342FB8 != -1)
      {
        dispatch_once(&qword_342FB8, v20);
      }

      v3 = &qword_342FC0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_EBCF8;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_342FC8 != -1)
      {
        dispatch_once(&qword_342FC8, v19);
      }

      v3 = &qword_342FD0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_EBD60;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_342FD8 != -1)
      {
        dispatch_once(&qword_342FD8, v18);
      }

      v3 = &qword_342FE0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_EBDC8;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_342FE8 != -1)
      {
        dispatch_once(&qword_342FE8, v17);
      }

      v3 = &qword_342FF0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_EBE30;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_342FF8 != -1)
      {
        dispatch_once(&qword_342FF8, v16);
      }

      v3 = &qword_343000;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_EBE98;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_343008 != -1)
      {
        dispatch_once(&qword_343008, v15);
      }

      v3 = &qword_343010;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_EBF00;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_343018 != -1)
      {
        dispatch_once(&qword_343018, v14);
      }

      v3 = &qword_343020;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_EBF68;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_343028 != -1)
      {
        dispatch_once(&qword_343028, v13);
      }

      v3 = &qword_343030;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_EBFD0;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_343038 != -1)
      {
        dispatch_once(&qword_343038, v12);
      }

      v3 = &qword_343040;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_EC038;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_343048 != -1)
      {
        dispatch_once(&qword_343048, v11);
      }

      v3 = &qword_343050;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_EC0A0;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_343058 != -1)
      {
        dispatch_once(&qword_343058, v10);
      }

      v3 = &qword_343060;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_EC108;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_343068 != -1)
      {
        dispatch_once(&qword_343068, v9);
      }

      v3 = &qword_343070;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_EC170;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_343078 != -1)
      {
        dispatch_once(&qword_343078, block);
      }

      v3 = &qword_343080;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_EC1D8;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_343088 != -1)
      {
        dispatch_once(&qword_343088, v7);
      }

      v3 = &qword_343090;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_EC240;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_343098 != -1)
      {
        dispatch_once(&qword_343098, v6);
      }

      v3 = &qword_3430A0;
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
  block[2] = sub_EC338;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (qword_3430A8 != -1)
  {
    dispatch_once(&qword_3430A8, block);
  }

  return byte_3430B0;
}

@end