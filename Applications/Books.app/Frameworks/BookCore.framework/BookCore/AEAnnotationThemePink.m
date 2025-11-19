@interface AEAnnotationThemePink
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AEAnnotationThemePink

- (id)noteFillColor
{
  switch([(AEAnnotationTheme *)self pageTheme])
  {
    case 0:
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_101D78;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_344738 != -1)
      {
        dispatch_once(&qword_344738, v22);
      }

      v3 = &qword_344740;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_101DE0;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344748 != -1)
      {
        dispatch_once(&qword_344748, v21);
      }

      v3 = &qword_344750;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_101E48;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344758 != -1)
      {
        dispatch_once(&qword_344758, v20);
      }

      v3 = &qword_344760;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_101EB0;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344768 != -1)
      {
        dispatch_once(&qword_344768, v19);
      }

      v3 = &qword_344770;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_101F18;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344778 != -1)
      {
        dispatch_once(&qword_344778, v18);
      }

      v3 = &qword_344780;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_101F80;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344788 != -1)
      {
        dispatch_once(&qword_344788, v17);
      }

      v3 = &qword_344790;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_101FE8;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344798 != -1)
      {
        dispatch_once(&qword_344798, v16);
      }

      v3 = &qword_3447A0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_102050;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_3447A8 != -1)
      {
        dispatch_once(&qword_3447A8, v15);
      }

      v3 = &qword_3447B0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1020B8;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_3447B8 != -1)
      {
        dispatch_once(&qword_3447B8, v14);
      }

      v3 = &qword_3447C0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_102120;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_3447C8 != -1)
      {
        dispatch_once(&qword_3447C8, v13);
      }

      v3 = &qword_3447D0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_102188;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3447D8 != -1)
      {
        dispatch_once(&qword_3447D8, v12);
      }

      v3 = &qword_3447E0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1021F0;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3447E8 != -1)
      {
        dispatch_once(&qword_3447E8, v11);
      }

      v3 = &qword_3447F0;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_102258;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_3447F8 != -1)
      {
        dispatch_once(&qword_3447F8, v10);
      }

      v3 = &qword_344800;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1022C0;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_344808 != -1)
      {
        dispatch_once(&qword_344808, v9);
      }

      v3 = &qword_344810;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_102328;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_344818 != -1)
      {
        dispatch_once(&qword_344818, block);
      }

      v3 = &qword_344820;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_102390;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_344828 != -1)
      {
        dispatch_once(&qword_344828, v7);
      }

      v3 = &qword_344830;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1023F8;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_344838 != -1)
      {
        dispatch_once(&qword_344838, v6);
      }

      v3 = &qword_344840;
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
      v22[2] = sub_102D5C;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_344848 != -1)
      {
        dispatch_once(&qword_344848, v22);
      }

      v3 = &qword_344850;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_102DC4;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344858 != -1)
      {
        dispatch_once(&qword_344858, v21);
      }

      v3 = &qword_344860;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_102E2C;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344868 != -1)
      {
        dispatch_once(&qword_344868, v20);
      }

      v3 = &qword_344870;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_102E94;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344878 != -1)
      {
        dispatch_once(&qword_344878, v19);
      }

      v3 = &qword_344880;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_102EFC;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344888 != -1)
      {
        dispatch_once(&qword_344888, v18);
      }

      v3 = &qword_344890;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_102F64;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344898 != -1)
      {
        dispatch_once(&qword_344898, v17);
      }

      v3 = &qword_3448A0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_102FCC;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_3448A8 != -1)
      {
        dispatch_once(&qword_3448A8, v16);
      }

      v3 = &qword_3448B0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_103034;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_3448B8 != -1)
      {
        dispatch_once(&qword_3448B8, v15);
      }

      v3 = &qword_3448C0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10309C;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_3448C8 != -1)
      {
        dispatch_once(&qword_3448C8, v14);
      }

      v3 = &qword_3448D0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_103104;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_3448D8 != -1)
      {
        dispatch_once(&qword_3448D8, v13);
      }

      v3 = &qword_3448E0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10316C;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3448E8 != -1)
      {
        dispatch_once(&qword_3448E8, v12);
      }

      v3 = &qword_3448F0;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1031D4;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_3448F8 != -1)
      {
        dispatch_once(&qword_3448F8, v11);
      }

      v3 = &qword_344900;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10323C;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_344908 != -1)
      {
        dispatch_once(&qword_344908, v10);
      }

      v3 = &qword_344910;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1032A4;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_344918 != -1)
      {
        dispatch_once(&qword_344918, v9);
      }

      v3 = &qword_344920;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10330C;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_344928 != -1)
      {
        dispatch_once(&qword_344928, block);
      }

      v3 = &qword_344930;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_103374;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_344938 != -1)
      {
        dispatch_once(&qword_344938, v7);
      }

      v3 = &qword_344940;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1033DC;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_344948 != -1)
      {
        dispatch_once(&qword_344948, v6);
      }

      v3 = &qword_344950;
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
      v22[2] = sub_103D40;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_344958 != -1)
      {
        dispatch_once(&qword_344958, v22);
      }

      v3 = &qword_344960;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_103DA8;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344968 != -1)
      {
        dispatch_once(&qword_344968, v21);
      }

      v3 = &qword_344970;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_103E10;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344978 != -1)
      {
        dispatch_once(&qword_344978, v20);
      }

      v3 = &qword_344980;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_103E78;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344988 != -1)
      {
        dispatch_once(&qword_344988, v19);
      }

      v3 = &qword_344990;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_103EE0;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344998 != -1)
      {
        dispatch_once(&qword_344998, v18);
      }

      v3 = &qword_3449A0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_103F48;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_3449A8 != -1)
      {
        dispatch_once(&qword_3449A8, v17);
      }

      v3 = &qword_3449B0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_103FB0;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_3449B8 != -1)
      {
        dispatch_once(&qword_3449B8, v16);
      }

      v3 = &qword_3449C0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_104018;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_3449C8 != -1)
      {
        dispatch_once(&qword_3449C8, v15);
      }

      v3 = &qword_3449D0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_104080;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_3449D8 != -1)
      {
        dispatch_once(&qword_3449D8, v14);
      }

      v3 = &qword_3449E0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1040E8;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_3449E8 != -1)
      {
        dispatch_once(&qword_3449E8, v13);
      }

      v3 = &qword_3449F0;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_104150;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_3449F8 != -1)
      {
        dispatch_once(&qword_3449F8, v12);
      }

      v3 = &qword_344A00;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1041B8;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_344A08 != -1)
      {
        dispatch_once(&qword_344A08, v11);
      }

      v3 = &qword_344A10;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_104220;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_344A18 != -1)
      {
        dispatch_once(&qword_344A18, v10);
      }

      v3 = &qword_344A20;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_104288;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_344A28 != -1)
      {
        dispatch_once(&qword_344A28, v9);
      }

      v3 = &qword_344A30;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1042F0;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_344A38 != -1)
      {
        dispatch_once(&qword_344A38, block);
      }

      v3 = &qword_344A40;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_104358;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_344A48 != -1)
      {
        dispatch_once(&qword_344A48, v7);
      }

      v3 = &qword_344A50;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1043C0;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_344A58 != -1)
      {
        dispatch_once(&qword_344A58, v6);
      }

      v3 = &qword_344A60;
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
      v22[2] = sub_104D24;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_344A68 != -1)
      {
        dispatch_once(&qword_344A68, v22);
      }

      v3 = &qword_344A70;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_104D8C;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344A78 != -1)
      {
        dispatch_once(&qword_344A78, v21);
      }

      v3 = &qword_344A80;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_104DF4;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344A88 != -1)
      {
        dispatch_once(&qword_344A88, v20);
      }

      v3 = &qword_344A90;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_104E5C;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344A98 != -1)
      {
        dispatch_once(&qword_344A98, v19);
      }

      v3 = &qword_344AA0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_104EC4;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344AA8 != -1)
      {
        dispatch_once(&qword_344AA8, v18);
      }

      v3 = &qword_344AB0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_104F2C;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344AB8 != -1)
      {
        dispatch_once(&qword_344AB8, v17);
      }

      v3 = &qword_344AC0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_104F94;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344AC8 != -1)
      {
        dispatch_once(&qword_344AC8, v16);
      }

      v3 = &qword_344AD0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_104FFC;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344AD8 != -1)
      {
        dispatch_once(&qword_344AD8, v15);
      }

      v3 = &qword_344AE0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_105064;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344AE8 != -1)
      {
        dispatch_once(&qword_344AE8, v14);
      }

      v3 = &qword_344AF0;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1050CC;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_344AF8 != -1)
      {
        dispatch_once(&qword_344AF8, v13);
      }

      v3 = &qword_344B00;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_105134;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_344B08 != -1)
      {
        dispatch_once(&qword_344B08, v12);
      }

      v3 = &qword_344B10;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10519C;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_344B18 != -1)
      {
        dispatch_once(&qword_344B18, v11);
      }

      v3 = &qword_344B20;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_105204;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_344B28 != -1)
      {
        dispatch_once(&qword_344B28, v10);
      }

      v3 = &qword_344B30;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10526C;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_344B38 != -1)
      {
        dispatch_once(&qword_344B38, v9);
      }

      v3 = &qword_344B40;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1052D4;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_344B48 != -1)
      {
        dispatch_once(&qword_344B48, block);
      }

      v3 = &qword_344B50;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10533C;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_344B58 != -1)
      {
        dispatch_once(&qword_344B58, v7);
      }

      v3 = &qword_344B60;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1053A4;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_344B68 != -1)
      {
        dispatch_once(&qword_344B68, v6);
      }

      v3 = &qword_344B70;
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
      v22[2] = sub_105D08;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_344B78 != -1)
      {
        dispatch_once(&qword_344B78, v22);
      }

      v3 = &qword_344B80;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_105D70;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344B88 != -1)
      {
        dispatch_once(&qword_344B88, v21);
      }

      v3 = &qword_344B90;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_105DD8;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344B98 != -1)
      {
        dispatch_once(&qword_344B98, v20);
      }

      v3 = &qword_344BA0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_105E40;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344BA8 != -1)
      {
        dispatch_once(&qword_344BA8, v19);
      }

      v3 = &qword_344BB0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_105EA8;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344BB8 != -1)
      {
        dispatch_once(&qword_344BB8, v18);
      }

      v3 = &qword_344BC0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_105F10;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344BC8 != -1)
      {
        dispatch_once(&qword_344BC8, v17);
      }

      v3 = &qword_344BD0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_105F78;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344BD8 != -1)
      {
        dispatch_once(&qword_344BD8, v16);
      }

      v3 = &qword_344BE0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_105FE0;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344BE8 != -1)
      {
        dispatch_once(&qword_344BE8, v15);
      }

      v3 = &qword_344BF0;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_106048;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344BF8 != -1)
      {
        dispatch_once(&qword_344BF8, v14);
      }

      v3 = &qword_344C00;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1060B0;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_344C08 != -1)
      {
        dispatch_once(&qword_344C08, v13);
      }

      v3 = &qword_344C10;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_106118;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_344C18 != -1)
      {
        dispatch_once(&qword_344C18, v12);
      }

      v3 = &qword_344C20;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_106180;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_344C28 != -1)
      {
        dispatch_once(&qword_344C28, v11);
      }

      v3 = &qword_344C30;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1061E8;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_344C38 != -1)
      {
        dispatch_once(&qword_344C38, v10);
      }

      v3 = &qword_344C40;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_106250;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_344C48 != -1)
      {
        dispatch_once(&qword_344C48, v9);
      }

      v3 = &qword_344C50;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1062B8;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_344C58 != -1)
      {
        dispatch_once(&qword_344C58, block);
      }

      v3 = &qword_344C60;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_106320;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_344C68 != -1)
      {
        dispatch_once(&qword_344C68, v7);
      }

      v3 = &qword_344C70;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_106388;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_344C78 != -1)
      {
        dispatch_once(&qword_344C78, v6);
      }

      v3 = &qword_344C80;
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
      v22[2] = sub_106CEC;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_344C88 != -1)
      {
        dispatch_once(&qword_344C88, v22);
      }

      v3 = &qword_344C90;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_106D54;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344C98 != -1)
      {
        dispatch_once(&qword_344C98, v21);
      }

      v3 = &qword_344CA0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_106DBC;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344CA8 != -1)
      {
        dispatch_once(&qword_344CA8, v20);
      }

      v3 = &qword_344CB0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_106E24;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344CB8 != -1)
      {
        dispatch_once(&qword_344CB8, v19);
      }

      v3 = &qword_344CC0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_106E8C;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344CC8 != -1)
      {
        dispatch_once(&qword_344CC8, v18);
      }

      v3 = &qword_344CD0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_106EF4;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344CD8 != -1)
      {
        dispatch_once(&qword_344CD8, v17);
      }

      v3 = &qword_344CE0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_106F5C;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344CE8 != -1)
      {
        dispatch_once(&qword_344CE8, v16);
      }

      v3 = &qword_344CF0;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_106FC4;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344CF8 != -1)
      {
        dispatch_once(&qword_344CF8, v15);
      }

      v3 = &qword_344D00;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10702C;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344D08 != -1)
      {
        dispatch_once(&qword_344D08, v14);
      }

      v3 = &qword_344D10;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_107094;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_344D18 != -1)
      {
        dispatch_once(&qword_344D18, v13);
      }

      v3 = &qword_344D20;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1070FC;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_344D28 != -1)
      {
        dispatch_once(&qword_344D28, v12);
      }

      v3 = &qword_344D30;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_107164;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_344D38 != -1)
      {
        dispatch_once(&qword_344D38, v11);
      }

      v3 = &qword_344D40;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1071CC;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_344D48 != -1)
      {
        dispatch_once(&qword_344D48, v10);
      }

      v3 = &qword_344D50;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_107234;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_344D58 != -1)
      {
        dispatch_once(&qword_344D58, v9);
      }

      v3 = &qword_344D60;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10729C;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_344D68 != -1)
      {
        dispatch_once(&qword_344D68, block);
      }

      v3 = &qword_344D70;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_107304;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_344D78 != -1)
      {
        dispatch_once(&qword_344D78, v7);
      }

      v3 = &qword_344D80;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10736C;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_344D88 != -1)
      {
        dispatch_once(&qword_344D88, v6);
      }

      v3 = &qword_344D90;
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
      v22[2] = sub_107CD0;
      v22[3] = &unk_2C7D18;
      v22[4] = self;
      v22[5] = 0;
      if (qword_344D98 != -1)
      {
        dispatch_once(&qword_344D98, v22);
      }

      v3 = &qword_344DA0;
      goto LABEL_54;
    case 1:
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_107D38;
      v21[3] = &unk_2C7D18;
      v21[4] = self;
      v21[5] = 1;
      if (qword_344DA8 != -1)
      {
        dispatch_once(&qword_344DA8, v21);
      }

      v3 = &qword_344DB0;
      goto LABEL_54;
    case 2:
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_107DA0;
      v20[3] = &unk_2C7D18;
      v20[4] = self;
      v20[5] = 2;
      if (qword_344DB8 != -1)
      {
        dispatch_once(&qword_344DB8, v20);
      }

      v3 = &qword_344DC0;
      goto LABEL_54;
    case 3:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_107E08;
      v19[3] = &unk_2C7D18;
      v19[4] = self;
      v19[5] = 3;
      if (qword_344DC8 != -1)
      {
        dispatch_once(&qword_344DC8, v19);
      }

      v3 = &qword_344DD0;
      goto LABEL_54;
    case 4:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_107E70;
      v18[3] = &unk_2C7D18;
      v18[4] = self;
      v18[5] = 4;
      if (qword_344DD8 != -1)
      {
        dispatch_once(&qword_344DD8, v18);
      }

      v3 = &qword_344DE0;
      goto LABEL_54;
    case 5:
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_107ED8;
      v17[3] = &unk_2C7D18;
      v17[4] = self;
      v17[5] = 5;
      if (qword_344DE8 != -1)
      {
        dispatch_once(&qword_344DE8, v17);
      }

      v3 = &qword_344DF0;
      goto LABEL_54;
    case 6:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_107F40;
      v16[3] = &unk_2C7D18;
      v16[4] = self;
      v16[5] = 6;
      if (qword_344DF8 != -1)
      {
        dispatch_once(&qword_344DF8, v16);
      }

      v3 = &qword_344E00;
      goto LABEL_54;
    case 7:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_107FA8;
      v15[3] = &unk_2C7D18;
      v15[4] = self;
      v15[5] = 7;
      if (qword_344E08 != -1)
      {
        dispatch_once(&qword_344E08, v15);
      }

      v3 = &qword_344E10;
      goto LABEL_54;
    case 8:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_108010;
      v14[3] = &unk_2C7D18;
      v14[4] = self;
      v14[5] = 8;
      if (qword_344E18 != -1)
      {
        dispatch_once(&qword_344E18, v14);
      }

      v3 = &qword_344E20;
      goto LABEL_54;
    case 9:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_108078;
      v13[3] = &unk_2C7D18;
      v13[4] = self;
      v13[5] = 9;
      if (qword_344E28 != -1)
      {
        dispatch_once(&qword_344E28, v13);
      }

      v3 = &qword_344E30;
      goto LABEL_54;
    case 0xALL:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1080E0;
      v12[3] = &unk_2C7D18;
      v12[4] = self;
      v12[5] = 10;
      if (qword_344E38 != -1)
      {
        dispatch_once(&qword_344E38, v12);
      }

      v3 = &qword_344E40;
      goto LABEL_54;
    case 0xBLL:
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_108148;
      v11[3] = &unk_2C7D18;
      v11[4] = self;
      v11[5] = 11;
      if (qword_344E48 != -1)
      {
        dispatch_once(&qword_344E48, v11);
      }

      v3 = &qword_344E50;
      goto LABEL_54;
    case 0xCLL:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1081B0;
      v10[3] = &unk_2C7D18;
      v10[4] = self;
      v10[5] = 12;
      if (qword_344E58 != -1)
      {
        dispatch_once(&qword_344E58, v10);
      }

      v3 = &qword_344E60;
      goto LABEL_54;
    case 0xDLL:
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_108218;
      v9[3] = &unk_2C7D18;
      v9[4] = self;
      v9[5] = 13;
      if (qword_344E68 != -1)
      {
        dispatch_once(&qword_344E68, v9);
      }

      v3 = &qword_344E70;
      goto LABEL_54;
    case 0xELL:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_108280;
      block[3] = &unk_2C7D18;
      block[4] = self;
      block[5] = 14;
      if (qword_344E78 != -1)
      {
        dispatch_once(&qword_344E78, block);
      }

      v3 = &qword_344E80;
      goto LABEL_54;
    case 0xFLL:
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1082E8;
      v7[3] = &unk_2C7D18;
      v7[4] = self;
      v7[5] = 15;
      if (qword_344E88 != -1)
      {
        dispatch_once(&qword_344E88, v7);
      }

      v3 = &qword_344E90;
      goto LABEL_54;
    case 0x10:
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_108350;
      v6[3] = &unk_2C7D18;
      v6[4] = self;
      v6[5] = 16;
      if (qword_344E98 != -1)
      {
        dispatch_once(&qword_344E98, v6);
      }

      v3 = &qword_344EA0;
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
  block[2] = sub_108448;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (qword_344EA8 != -1)
  {
    dispatch_once(&qword_344EA8, block);
  }

  return byte_344EB0;
}

@end