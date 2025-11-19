uint64_t (*sub_1005C2624(double a1, double a2, double a3, double a4))()
{
  v8 = sub_1007604DC();
  v48 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_10094B450);
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  sub_10000A5D4(&qword_10095F420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007ADDC0;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v46 = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v54 = a1;
  v53 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v17 = *(v9 + 104);
  v51 = enum case for TimingCurve.linear(_:);
  v17(v11, enum case for TimingCurve.linear(_:), v8);
  v18 = UIContentSizeCategoryExtraSmall;
  v19 = UIContentSizeCategorySmall;
  sub_1007607FC();
  v47 = v12;
  sub_1007607EC();
  v21 = v49 + 8;
  v20 = *(v49 + 8);
  v20(v14, v12);
  *(inited + 56) = round(v54);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v54 = a1;
  v53 = a2;
  v22 = v16;
  v23 = v48;
  v50 = v9 + 104;
  v17(v11, v22, v48);
  v52 = v17;
  v24 = UIContentSizeCategoryMedium;
  sub_1007607FC();
  v25 = v47;
  sub_1007607EC();
  v20(v14, v25);
  *(inited + 72) = round(v54);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v54 = a2;
  v53 = a3;
  v17(v11, v51, v23);
  v26 = UIContentSizeCategoryLarge;
  v27 = UIContentSizeCategoryExtraLarge;
  sub_1007607FC();
  v28 = v47;
  sub_1007607EC();
  v49 = v21;
  v45 = v20;
  v20(v14, v28);
  *(inited + 104) = round(v54);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v54 = a2;
  v53 = a3;
  v29 = v51;
  v52(v11, v51, v23);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  sub_1007607FC();
  sub_1007607EC();
  v20(v14, v28);
  *(inited + 120) = round(v54);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  v54 = a3;
  v53 = a4;
  v52(v11, v29, v23);
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  sub_1007607FC();
  sub_1007607EC();
  v33 = v45;
  v45(v14, v28);
  *(inited + 152) = round(v54);
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  v54 = a3;
  v53 = a4;
  v34 = v48;
  v52(v11, v29, v48);
  v35 = UIContentSizeCategoryAccessibilityLarge;
  sub_1007607FC();
  sub_1007607EC();
  v36 = v33;
  v33(v14, v28);
  *(inited + 168) = round(v54);
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  v54 = a3;
  v53 = a4;
  v37 = v52;
  v52(v11, v29, v34);
  v38 = UIContentSizeCategoryAccessibilityExtraLarge;
  sub_1007607FC();
  sub_1007607EC();
  v36(v14, v28);
  *(inited + 184) = round(v54);
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v54 = a3;
  v53 = a4;
  v37(v11, v51, v34);
  v39 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  sub_1007607FC();
  sub_1007607EC();
  v36(v14, v28);
  *(inited + 200) = round(v54);
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v40 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v41 = sub_1000FC130(inited);
  swift_setDeallocating();
  sub_10000A5D4(&qword_10095F428);
  swift_arrayDestroy();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = a2;
  return sub_1005C5104;
}

uint64_t sub_1005C2E54()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1930);
  v1 = sub_10000A61C(v0, qword_1009A1930);
  v2 = sub_1005C2624(13.0, 15.0, 18.0, 18.0);
  *v1 = 0xD000000000000029;
  *(v1 + 8) = 0x80000001007F0090;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_1005C2FD8()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A19F0);
  v1 = sub_10000A61C(v0, qword_1009A19F0);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000001007F01E0;
  *(v1 + 16) = sub_1005C30A0;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1005C30A0()
{
  v0 = sub_10076FF9C();
  v2 = v1;
  if (v0 == sub_10076FF9C() && v2 == v3)
  {

    return 13.0;
  }

  else
  {
    v5 = sub_10077167C();

    result = 13.0;
    if ((v5 & 1) == 0)
    {
      v7 = sub_10076FF9C();
      v9 = v8;
      if (v7 == sub_10076FF9C() && v9 == v10)
      {

        return 15.0;
      }

      else
      {
        v12 = sub_10077167C();

        result = 15.0;
        if ((v12 & 1) == 0)
        {
          v13 = sub_10076FF9C();
          v15 = v14;
          if (v13 == sub_10076FF9C() && v15 == v16)
          {

            return 18.0;
          }

          else
          {
            v17 = sub_10077167C();

            result = 10.0;
            if (v17)
            {
              return 18.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1005C32D8()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1A98);
  v1 = sub_10000A61C(v0, qword_1009A1A98);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x80000001007F0100;
  *(v1 + 16) = sub_1005C33A0;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightMedium;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1005C33A0()
{
  v0 = sub_10076FF9C();
  v2 = v1;
  if (v0 == sub_10076FF9C() && v2 == v3)
  {

    return 16.0;
  }

  else
  {
    v5 = sub_10077167C();

    result = 16.0;
    if ((v5 & 1) == 0)
    {
      v7 = sub_10076FF9C();
      v9 = v8;
      if (v7 == sub_10076FF9C() && v9 == v10)
      {

        return 18.0;
      }

      else
      {
        v12 = sub_10077167C();

        result = 18.0;
        if ((v12 & 1) == 0)
        {
          v13 = sub_10076FF9C();
          v15 = v14;
          if (v13 == sub_10076FF9C() && v15 == v16)
          {

            return 20.0;
          }

          else
          {
            v17 = sub_10077167C();

            result = 14.0;
            if (v17)
            {
              return 20.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1005C3548()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1AB0);
  v1 = sub_10000A61C(v0, qword_1009A1AB0);
  *v1 = 0xD00000000000001ALL;
  *(v1 + 8) = 0x80000001007F0260;
  *(v1 + 16) = sub_1005C3610;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1005C3610()
{
  v0 = sub_10076FF9C();
  v2 = v1;
  if (v0 == sub_10076FF9C() && v2 == v3)
  {

    return 11.0;
  }

  else
  {
    v5 = sub_10077167C();

    result = 11.0;
    if ((v5 & 1) == 0)
    {
      v7 = sub_10076FF9C();
      v9 = v8;
      if (v7 == sub_10076FF9C() && v9 == v10)
      {

        return 13.0;
      }

      else
      {
        v12 = sub_10077167C();

        result = 13.0;
        if ((v12 & 1) == 0)
        {
          v13 = sub_10076FF9C();
          v15 = v14;
          if (v13 == sub_10076FF9C() && v15 == v16)
          {

            return 15.0;
          }

          else
          {
            v17 = sub_10077167C();

            result = 9.0;
            if (v17)
            {
              return 15.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1005C37B8()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1AC8);
  v1 = sub_10000A61C(v0, qword_1009A1AC8);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000001007F0310;
  *(v1 + 16) = sub_1005C077C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1005C3880()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1AE0);
  v1 = sub_10000A61C(v0, qword_1009A1AE0);
  strcpy(v1, "todayCardTitle");
  *(v1 + 15) = -18;
  *(v1 + 16) = sub_1005C3950;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1005C3950()
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if (Main == 1)
  {
    return 26.0;
  }

  return result;
}

uint64_t sub_1005C3978()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1AF8);
  v1 = sub_10000A61C(v0, qword_1009A1AF8);
  *v1 = 0xD000000000000013;
  *(v1 + 8) = 0x80000001007F0280;
  *(v1 + 16) = sub_1005C3A40;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1005C3A40()
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if ((Main - 1) <= 3)
  {
    return dbl_1007ADDF0[Main - 1];
  }

  return result;
}

uint64_t sub_1005C3A90()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1B28);
  v1 = sub_10000A61C(v0, qword_1009A1B28);
  *v1 = 0xD000000000000021;
  *(v1 + 8) = 0x80000001007F02E0;
  *(v1 + 16) = sub_1005C3B58;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1005C3B90(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4)
{
  v7 = sub_10076C5DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D3DC();
  sub_10000DB18(v11, a2);
  v12 = sub_10000A61C(v11, a2);
  (*(v8 + 104))(v10, *a3, v7);
  v13 = sub_10076C5CC();
  (*(v8 + 8))(v10, v7);
  *v12 = v13;
  *(v12 + 8) = a4;
  return (*(*(v11 - 8) + 104))(v12, enum case for FontUseCase.preferredFont(_:), v11);
}

uint64_t sub_1005C3DB8()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1C30);
  v1 = sub_10000A61C(v0, qword_1009A1C30);
  *v1 = 0xD000000000000012;
  *(v1 + 8) = 0x80000001007EFE60;
  *(v1 + 16) = sub_1005C3E80;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightHeavy;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1005C3F9C()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1D50);
  v1 = sub_10000A61C(v0, qword_1009A1D50);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000001007F0220;
  *(v1 + 16) = sub_1003557CC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1005C417C()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1E70);
  v1 = sub_10000A61C(v0, qword_1009A1E70);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000001007F0330;
  *(v1 + 16) = sub_1005BFB10;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1005C43F8()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A2008);
  v1 = sub_10000A61C(v0, qword_1009A2008);
  *v1 = 0x756F436C6C616D73;
  *(v1 + 8) = 0xEF6567646142746ELL;
  *(v1 + 16) = sub_1005C44C8;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1005C44D0()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A2020);
  v1 = sub_10000A61C(v0, qword_1009A2020);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000001007F0180;
  *(v1 + 16) = sub_1005C3B58;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

id sub_1005C4890(uint64_t a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v7 = sub_10076D3DC();
  sub_10000DB18(v7, a2);
  v8 = sub_10000A61C(v7, a2);
  v11 = *a3;
  v9 = *a4;
  *v8 = *a3;
  v8[1] = v9;
  (*(*(v7 - 8) + 104))();

  return v11;
}

uint64_t sub_1005C4948()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DDFC();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_10076C5BC();
  }

  else
  {
    return sub_10076C5CC();
  }
}

double sub_1005C4A30(uint64_t a1, uint64_t a2, double a3)
{
  v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
  [v5 scaledValueForValue:v6 compatibleWithTraitCollection:a3];
  v8 = v7;

  return v8;
}

double sub_1005C4AD0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_10076FF9C();
  v8 = v7;
  if (v6 == sub_10076FF9C() && v8 == v9)
  {
    goto LABEL_13;
  }

  v11 = sub_10077167C();

  if (v11)
  {
    return a3;
  }

  v12 = sub_10076FF9C();
  v14 = v13;
  if (v12 == sub_10076FF9C() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = sub_10077167C();

  if (v17)
  {
    return a3;
  }

  v18 = sub_10076FF9C();
  v20 = v19;
  if (v18 == sub_10076FF9C() && v20 == v21)
  {
    goto LABEL_13;
  }

  v23 = sub_10077167C();

  if (v23)
  {
    return a3;
  }

  v24 = sub_10076FF9C();
  v26 = v25;
  if (v24 == sub_10076FF9C() && v26 == v27)
  {
    goto LABEL_13;
  }

  v28 = sub_10077167C();

  if (v28)
  {
    return a3;
  }

  v29 = sub_10076FF9C();
  v31 = v30;
  if (v29 == sub_10076FF9C() && v31 == v32)
  {
    goto LABEL_13;
  }

  v33 = sub_10077167C();

  if (v33)
  {
    return a3;
  }

  v34 = sub_10076FF9C();
  v36 = v35;
  if (v34 == sub_10076FF9C() && v36 == v37)
  {
    goto LABEL_13;
  }

  v38 = sub_10077167C();

  if (v38)
  {
    return a3;
  }

  v39 = sub_10076FF9C();
  v41 = v40;
  if (v39 == sub_10076FF9C() && v41 == v42)
  {
LABEL_13:

    return a3;
  }

  v43 = sub_10077167C();

  if ((v43 & 1) == 0)
  {
    v44 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
    v45 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
    v48.is_nil = UIContentSizeCategoryAccessibilityExtraLarge;
    v48.value._rawValue = 0;
    isa = sub_1007706DC(v48, v49).super.isa;

    [v44 scaledValueForValue:isa compatibleWithTraitCollection:a3];
    a3 = v47;
  }

  return a3;
}

double sub_1005C4E64(double a1, double a2)
{
  v4 = sub_10076FF9C();
  v6 = v5;
  if (v4 == sub_10076FF9C() && v6 == v7)
  {
    goto LABEL_13;
  }

  v9 = sub_10077167C();

  if (v9)
  {
    return a1;
  }

  v10 = sub_10076FF9C();
  v12 = v11;
  if (v10 == sub_10076FF9C() && v12 == v13)
  {
    goto LABEL_13;
  }

  v15 = sub_10077167C();

  if (v15)
  {
    return a1;
  }

  v16 = sub_10076FF9C();
  v18 = v17;
  if (v16 == sub_10076FF9C() && v18 == v19)
  {
    goto LABEL_13;
  }

  v21 = sub_10077167C();

  if (v21)
  {
    return a1;
  }

  v22 = sub_10076FF9C();
  v24 = v23;
  if (v22 == sub_10076FF9C() && v24 == v25)
  {
    goto LABEL_13;
  }

  v26 = sub_10077167C();

  if (v26)
  {
    return a1;
  }

  v27 = sub_10076FF9C();
  v29 = v28;
  if (v27 == sub_10076FF9C() && v29 == v30)
  {
LABEL_13:

    return a1;
  }

  v31 = sub_10077167C();

  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return a1;
}

uint64_t sub_1005C50CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1005C5108()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v4 = sub_1006113DC();
    if (v5)
    {
      return *(*(v2 + 56) + 8 * v4);
    }
  }

  return v3;
}

uint64_t sub_1005C5158()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005C519C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005C51FC()
{
  v1 = sub_10076C5DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1005C5284()
{
  sub_10076C5DC();

  return sub_1005C4948();
}

UIContentSizeCategory sub_1005C52E4(uint64_t a1)
{
  v2 = sub_10076FF9C();
  v4 = v3;
  if (v2 == sub_10076FF9C() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = sub_10077167C();

  if ((v7 & 1) == 0)
  {
    v8 = sub_10076FF9C();
    v10 = v9;
    if (v8 == sub_10076FF9C() && v10 == v11)
    {
      goto LABEL_13;
    }

    v13 = sub_10077167C();

    if ((v13 & 1) == 0)
    {
      v14 = sub_10076FF9C();
      v16 = v15;
      if (v14 == sub_10076FF9C() && v16 == v17)
      {
LABEL_13:

        return a1;
      }

      v19 = sub_10077167C();

      if ((v19 & 1) == 0)
      {
        return UIContentSizeCategoryMedium;
      }
    }
  }

  return a1;
}

void sub_1005C5494()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView);
  sub_10075FD2C();
  sub_1005C65B8(&qword_100941820, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_100760BFC();

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView);
  if (v3)
  {
    v4 = v3;
    sub_100760BFC();
  }

  v5 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    if (swift_dynamicCastClass())
    {
      sub_1005C65B8(&unk_100942840, type metadata accessor for VideoView);
      v6 = v5;
      sub_100760BFC();
    }
  }
}

uint64_t sub_1005C5650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1005C57C4(*(a1 + 16), a5);
  v6 = [objc_opt_self() absoluteDimension:v5];
  v7 = sub_1007665BC();

  return v7;
}

uint64_t sub_1005C56DC(uint64_t a1)
{
  result = sub_1005C65B8(&qword_10095F430, type metadata accessor for PosterLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

void sub_1005C57C4(uint64_t a1, void *a2)
{
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076445C();
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  sub_10076D36C();
  (*(v5 + 8))(v7, v4);
  [a2 pageContainerSize];
  v9 = v8;
  [a2 pageMarginInsets];
  v11 = v9 - v10;
  [a2 pageMarginInsets];
  v13 = v11 - v12;
  PageTraitEnvironment.pageColumnWidth.getter();
  v15 = v14;
  PageTraitEnvironment.pageColumnMargin.getter();
  if (v13 < (v15 + v16) * a1)
  {
    PageTraitEnvironment.pageColumnWidth.getter();
  }
}

id sub_1005C5948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v102 = a3;
  v6 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v6 - 8);
  v101 = &v83 - v7;
  v99 = sub_100768FEC();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10000A5D4(&unk_100946750);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v83 - v9;
  v10 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v10 - 8);
  v94 = &v83 - v11;
  v12 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v12 - 8);
  v91 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = &v83 - v15;
  v16 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v16 - 8);
  v89 = &v83 - v17;
  v18 = sub_1007611EC();
  __chkstk_darwin(v18 - 8);
  v88 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v21 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v21 - 8);
  v23 = &v83 - v22;
  v24 = sub_10076121C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076481C();
  v92 = *(v28 - 8);
  v93 = v28;
  *&v29 = __chkstk_darwin(v28).n128_u64[0];
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [v4 contentView];
  if (sub_10076089C())
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  [v32 setOverrideUserInterfaceStyle:v33];

  v34 = sub_10076087C();
  if (v34)
  {
    v35 = v34;
    v87 = a1;
    *&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artwork] = 0;

    v36 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer];
    v86 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
    v37 = *(v36 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v84 = v31;
    v38 = v36;
    v39 = *(v37 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    *(v37 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = 0;
    sub_100453A30(v39);

    sub_1004526E4();
    v85 = v4;
    *&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_video] = v35;

    (*(v25 + 104))(v27, enum case for VideoFillMode.scaleAspectFill(_:), v24);
    sub_10076B84C();
    sub_10076BEFC();
    sub_10076D3AC();

    v40 = sub_10076D39C();
    (*(*(v40 - 8) + 56))(v23, 0, 1, v40);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    v41 = v84;
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    v42 = v103;
    sub_10076B7CC();
    v43 = v89;
    sub_10076B85C();
    v44 = sub_10075DB7C();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v45 = v90;
    sub_10076B81C();
    v46 = v91;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_1005C65B8(&qword_100942810, type metadata accessor for VideoView);
    v88 = v42;
    v47 = sub_100762EEC();
    sub_10000CFBC(v46, &unk_10094C030);
    sub_10000CFBC(v45, &unk_10094C030);
    sub_10000CFBC(v43, &unk_1009435D0);
    sub_10000CFBC(&v103, &qword_100943310);
    v48 = *(v38 + v86);
    if (v47)
    {
      v49 = v47;
      v50 = [v49 superview];
      if (v50)
      {
        v51 = v50;
        sub_100016F40(0, &qword_1009441F0);
        v52 = v48;
        v53 = sub_100770EEC();

        if (v53)
        {
          [v49 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v59 = *&v48[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v48[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v47;
    v60 = v47;
    sub_100453A30(v59);

    (*(v92 + 8))(v41, v93);
    v4 = v85;
  }

  else
  {
    v54 = sub_10076088C();
    if (v54)
    {
      *&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artwork] = v54;

      *&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_video] = 0;

      v55 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView];
      v56 = *(*&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      v57 = *(v56 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      *(v56 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = v55;
      v58 = v55;
      sub_100453A30(v57);

      sub_1004526E4();
    }

    else
    {
      v69 = *(*&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      v70 = *(v69 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      *(v69 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = 0;
      sub_100453A30(v70);

      sub_1004526E4();
      *&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artwork] = 0;

      *&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_video] = 0;
    }
  }

  v61 = sub_10076BB6C();
  v62 = &v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle];
  *v62 = v61;
  v62[1] = v63;

  sub_1004A1230();
  v64 = sub_10076086C();
  if (v64)
  {
    *&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork] = v64;

    [*&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView] setHidden:1];
  }

  else
  {
    v65 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView];
    if (v65)
    {
      [v65 setHidden:1];
    }

    v66 = v62[1];
    if (v66)
    {
      if ((v66 & 0x2000000000000000) != 0)
      {
        v67 = HIBYTE(v66) & 0xF;
      }

      else
      {
        v67 = *v62 & 0xFFFFFFFFFFFFLL;
      }

      v68 = v67 == 0;
    }

    else
    {
      v68 = 1;
    }

    [*&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView] setHidden:v68];
  }

  v71 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_offerButton];
  v72 = sub_10076BB3C();
  v73 = sub_10076BA2C();
  v74 = sub_10000A5D4(&qword_100945590);
  v75 = v94;
  (*(*(v74 - 8) + 56))(v94, 1, 1, v74);
  v76 = v95;
  v77 = v99;
  (*(v95 + 104))(v96, enum case for OfferButtonSubtitlePosition.below(_:), v99);
  (*(v76 + 56))(v101, 1, 1, v77);
  sub_1005C65B8(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  v78 = v97;
  sub_10076759C();
  sub_1001F12C8(v72, v73, 0, v75, v78, v102, 0, 0);

  (*(v98 + 8))(v78, v100);
  sub_10000CFBC(v75, &unk_100946760);
  [v71 setOverrideUserInterfaceStyle:1];
  v79 = sub_10076085C();
  v80 = &v4[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerText];
  *v80 = v79;
  v80[1] = v81;

  return sub_1004A13B4();
}

uint64_t sub_1005C65B8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1005C6600(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076BEDC();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076449C();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076BF6C();
  __chkstk_darwin(v8 - 8);
  v53 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v10 - 8);
  v12 = v44 - v11;
  v13 = sub_10076481C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076D39C();
  v45 = *(v17 - 8);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v2 contentView];
  [v21 bounds];

  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_video])
  {
    v22 = *(*(*&v2[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v22)
    {
      v44[3] = type metadata accessor for VideoView();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v44[0] = v20;
        v44[2] = a1;
        v24 = qword_1009A2558;
        v25 = v17;
        v26 = v23;
        swift_beginAccess();
        v27 = *(v14 + 16);
        v44[1] = v26;
        v28 = v26 + v24;
        v29 = v25;
        v27(v16, v28, v13);

        v30 = v22;
        sub_10076476C();
        (*(v14 + 8))(v16, v13);
        v31 = v45;
        if ((*(v45 + 48))(v12, 1, v25) != 1)
        {
          v43 = v44[0];
          (*(v31 + 32))(v44[0], v12, v29);
          sub_10076D30C();
          sub_10076B84C();
          sub_10076BFCC();

          sub_1005C65B8(&unk_100942840, type metadata accessor for VideoView);
          sub_100760B8C();

          (*(v31 + 8))(v43, v29);
          v32 = &selRef_initWithTabBarSystemItem_tag_;
          goto LABEL_10;
        }

        sub_10000CFBC(v12, &unk_1009467E0);
      }
    }
  }

  v32 = &selRef_initWithTabBarSystemItem_tag_;
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artwork])
  {

    sub_10076BFCC();
    v33 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView;
    v34 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView];
    sub_10076BF7C();
    sub_10075FCCC();
    [v34 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();

    v35 = *&v2[v33];
    sub_10075FD2C();
    sub_1005C65B8(&qword_100941820, &type metadata accessor for ArtworkView);
    v36 = v35;
    sub_100760B8C();
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork])
  {

    [v2 bounds];
    v37 = v46;
    sub_1004A1184();
    [v2 bounds];
    sub_10076447C();
    (*(v47 + 8))(v37, v48);
    v38 = sub_1004A2E04();
    v39 = v50;
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v51 + 8))(v39, v52);
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v38 v32[208]];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    v40 = [objc_opt_self() clearColor];
    sub_10075FB8C();
    sub_10075FD2C();
    sub_1005C65B8(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760B8C();
    v41 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView];
    if (v41)
    {
      v42 = v41;
      [v42 setHidden:0];
    }
  }
}

unint64_t sub_1005C6E88()
{
  result = qword_100950D38;
  if (!qword_100950D38)
  {
    type metadata accessor for InformationRibbonCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950D38);
  }

  return result;
}

double sub_1005C6EE0()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076469C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  sub_10076460C();
  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  v8 = sub_100765C9C();
  sub_10000A61C(v8, qword_1009A04D8);
  v9 = sub_10076461C();
  sub_100765BDC();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

double sub_1005C70E0()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  v4 = sub_100765C9C();
  sub_10000A61C(v4, qword_1009A04D8);
  v5 = sub_10076461C();
  sub_100765BDC();
  v7 = v6;

  return v7;
}

void sub_1005C7248(void *a1)
{
  sub_1005C7C50();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_1005C72F8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension23VideoCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1005C734C;
}

void sub_1005C734C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1005C7C50();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_1005C7C50();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1005C75E0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoCollectionViewCell();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_1005C7C50();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [v0 contentView];
    [v3 addSubview:v2];

    [v0 setNeedsLayout];
  }
}

id sub_1005C77B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoCollectionViewCell()
{
  result = qword_10095F4B0;
  if (!qword_10095F4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005C78B8()
{
  result = sub_10076481C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t (*sub_1005C7964(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1005C72F8(v2);
  return sub_10001D41C;
}

uint64_t sub_1005C79D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1005C7A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1005C7A94(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_10076483C();
  return sub_100019A4C;
}

uint64_t sub_1005C7C08(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1005C7C50()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1005C7C08(&qword_100942810, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_1004C6C74(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

BOOL sub_1005C7D20(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v2 = sub_10077002C();

  return (v2 & 1) == 0;
}

id sub_1005C7D6C()
{
  v1 = type metadata accessor for DividerView.Style(0);
  *&v2 = __chkstk_darwin(v1).n128_u64[0];
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_dividerView];
  if (v5)
  {
    v6 = qword_100940950;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_10000A61C(v1, qword_1009A0A20);
    sub_100206DD0(v8, v4);
    v9 = &v7[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
    swift_beginAccess();
    sub_100206E34(v4, v9);
    swift_endAccess();
    v10 = &v7[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
    v11 = *(v9 + 1);
    *v10 = *v9;
    *(v10 + 1) = v11;
    [v7 setNeedsLayout];
    [v7 setNeedsLayout];
    sub_100206E98(v4);
    v12 = [v0 contentView];
    [v12 addSubview:v7];
  }

  return [v0 setNeedsLayout];
}

id sub_1005C7F00()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_hasDivider] == 1)
  {
    v1 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v2 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_dividerView;
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_dividerView];
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *&v0[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v0[v2] = v1;
    v8 = v1;

    sub_1005C7D6C();
  }

  else
  {
    v5 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_dividerView;
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_dividerView];
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *&v0[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = 0;

    sub_1005C7D6C();
  }

  return [v0 setNeedsLayout];
}

UIFontTextStyle sub_1005C802C()
{
  v0 = sub_10076D1AC();
  sub_10000DB18(v0, qword_1009A2300);
  *sub_10000A61C(v0, qword_1009A2300) = UIFontTextStyleBody;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleBody;
}

uint64_t sub_1005C80EC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  *v6 = UIFontTextStyleBody;
  *(v6 + 2) = 0;
  v8 = enum case for FontUseCase.preferredFont(_:);
  v9 = sub_10076D3DC();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v14[3] = v3;
  v14[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v14);
  (*(v4 + 16))(v10, v6, v3);
  v11 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1005C82D4()
{
  v0 = sub_10076D9AC();
  sub_10000DB18(v0, qword_10095F560);
  sub_10000A61C(v0, qword_10095F560);
  if (qword_1009411C0 != -1)
  {
    swift_once();
  }

  v1 = sub_10076D1AC();
  v2 = sub_10000A61C(v1, qword_1009A2300);
  v5[3] = v1;
  v5[4] = &protocol witness table for FontSource;
  v3 = sub_10000DB7C(v5);
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  return sub_10076D9BC();
}

uint64_t sub_1005C83E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_1009411C0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v3, qword_1009A2300);
  (*(v4 + 16))(v6, v8, v3);
  return sub_10075FE5C();
}

char *sub_1005C853C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_button;
  sub_10076313C();
  if (qword_100940F70 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v10, qword_1009A1C48);
  (*(v11 + 16))(v13, v17, v10);
  *&v5[v16] = sub_10076312C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_dividerView] = 0;
  v18 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_action;
  v19 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v5[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_hasDivider] = 0;
  v20 = type metadata accessor for RoundedButtonCollectionViewCell();
  v27.receiver = v5;
  v27.super_class = v20;
  v21 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 contentView];
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v23 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_button;
  v24 = *&v21[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_button];
  [v24 addTarget:v21 action:"didTapButton:" forControlEvents:64];

  [*&v21[v23] _setWantsAccessibilityUnderline:0];
  v25 = [v21 contentView];

  [v25 addSubview:*&v21[v23]];
  return v21;
}

id sub_1005C8894()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoundedButtonCollectionViewCell();
  v55.receiver = v0;
  v55.super_class = v9;
  objc_msgSendSuper2(&v55, "layoutSubviews");
  v10 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_dividerView];
  if (v19)
  {
    v20 = OBJC_IVAR____TtC20ProductPageExtension11DividerView_style;
    swift_beginAccess();
    sub_100206DD0(v19 + v20, v8);
    v21 = qword_100940940;
    v22 = v19;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = floor(*&qword_1009A0A00);
    sub_10076D17C();
    v24 = sub_10076D9AC();
    sub_10076D40C();
    v26 = v25;
    v27 = *(v3 + 8);
    v27(v5, v2);
    v28 = v23 + v26;
    sub_100206E98(v8);
    if (qword_1009411C8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v24, qword_10095F518);
    sub_10076D17C();
    sub_10076D40C();
    v30 = v29;
    v27(v5, v2);
    [v22 setFrame:{0.0, v30, v16, v28}];
    v56.origin.x = 0.0;
    v56.origin.y = v30;
    v56.size.width = v16;
    v56.size.height = v28;
    MaxY = CGRectGetMaxY(v56);
    if (qword_1009411D0 != -1)
    {
      swift_once();
    }

    v32 = sub_10000A5D4(&unk_100945BD0);
    sub_10000A61C(v32, qword_10095F530);
    sub_10076D17C();
    sub_10075FE7C();
    v34 = v33;

    v27(v5, v2);
    v35 = MaxY + v34;
  }

  else
  {
    if (qword_1009411E0 != -1)
    {
      swift_once();
    }

    v36 = sub_10076D9AC();
    sub_10000A61C(v36, qword_10095F560);
    sub_10076D17C();
    sub_10076D40C();
    v35 = v37;
    v27 = *(v3 + 8);
    v27(v5, v2);
  }

  v38 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_button];
  v39 = [v38 imageForState:0];
  if (v39)
  {

    if (UIAccessibilityIsBoldTextEnabled())
    {
      if (qword_1009411B0 != -1)
      {
        swift_once();
      }

      v40 = qword_10095F4E8;
    }

    else
    {
      if (qword_1009411A8 != -1)
      {
        swift_once();
      }

      v40 = qword_10095F4D0;
    }

    v42 = sub_10076D9AC();
    sub_10000A61C(v42, v40);
    sub_10076D17C();
    sub_10076D40C();
    v44 = v43;
    v27(v5, v2);
    v41 = ceil(v44 * 0.5);
  }

  else
  {
    v41 = 0.0;
  }

  v45 = [v1 traitCollection];
  v46 = sub_10077070C();

  if (v46)
  {
    v47 = -v41;
  }

  else
  {
    v47 = v41;
  }

  [v38 setContentEdgeInsets:{0.0, v41 + 32.0, 0.0, v41 + v41 + 32.0}];
  [v38 setImageEdgeInsets:{0.0, -v47, 0.0, v47}];
  [v38 setTitleEdgeInsets:{0.0, v47, 0.0, -v47}];
  [v38 sizeThatFits:{v16, v18}];
  v49 = v48;
  if (qword_1009411B8 != -1)
  {
    swift_once();
  }

  v50 = sub_10076D9AC();
  sub_10000A61C(v50, qword_10095F500);
  sub_10076D17C();
  sub_10076D40C();
  v52 = v51;
  v27(v5, v2);
  v57.origin.x = v12;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v18;
  [v38 setFrame:{CGRectGetMidX(v57) - v49 * 0.5, v35, v49, v52}];
  return [v38 _setCornerRadius:v52 * 0.5];
}

uint64_t sub_1005C8FC0(void *a1)
{
  v3 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-v4];
  v6 = sub_10000A5D4(&qword_100955BD0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23[-v8];
  v10 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_action;
  swift_beginAccess();
  sub_1003A683C(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000CFBC(v5, &qword_100952650);
  }

  (*(v7 + 32))(v9, v5, v6);
  v12 = [a1 bounds];
  v23[8] = 1;
  v25 = 1;
  v28 = 15;
  v24[0] = a1;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  __asm { FMOV            V0.2D, #10.0 }

  v26 = _Q0;
  v27 = _Q0;
  __chkstk_darwin(v12);
  *&v23[-16] = v9;
  v22 = a1;
  sub_1006E3464(v24, sub_1005C9BC0);
  sub_1001F99BC(v24);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1005C9208()
{
  v0 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v0 - 8);
  v2 = v7 - v1;
  sub_10000A5D4(&qword_100955BD0);
  v3 = sub_100761FDC();
  v4 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {

    return sub_10000CFBC(v2, &unk_100943200);
  }

  else
  {
    sub_100761FEC();
    sub_100263BF0(v7[1], 1, v3, v2);

    return (*(v5 + 8))(v2, v4);
  }
}

id sub_1005C9420()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedButtonCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RoundedButtonCollectionViewCell()
{
  result = qword_10095F5C0;
  if (!qword_10095F5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005C952C()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_1001D92E0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1005C9618()
{
  v0 = sub_10000A5D4(&unk_100945BD0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v33 - v2;
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076109C())
  {
    v34 = v1;
    if (qword_1009411C8 != -1)
    {
      swift_once();
    }

    v8 = sub_10076D9AC();
    sub_10000A61C(v8, qword_10095F518);
    swift_getObjectType();
    sub_10076D17C();
    sub_10076D40C();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v7, v4);
    type metadata accessor for DividerView(0);
    if (qword_100940950 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for DividerView.Style(0);
    sub_10000A61C(v12, qword_1009A0A20);
    v13 = v10 + sub_1005AA920();
    if (qword_1009411D0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v0, qword_10095F530);
    sub_10076D17C();
    sub_10075FE7C();
    v15 = v14;
    v11(v7, v4);
    v16 = v13 + v15;
    if (qword_1009411B8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v8, qword_10095F500);
    sub_10076D17C();
    sub_10076D40C();
    v18 = v17;
    v11(v7, v4);
    v19 = v16 + v18;
    if (qword_1009411D8 != -1)
    {
      swift_once();
    }

    v20 = sub_10000A61C(v0, qword_10095F548);
    v21 = v34;
    (*(v34 + 16))(v3, v20, v0);
    sub_10076D17C();
    sub_10075FE7C();
    v23 = v22;
    v11(v7, v4);
    (*(v21 + 8))(v3, v0);
  }

  else
  {
    if (qword_1009411E0 != -1)
    {
      swift_once();
    }

    v24 = sub_10076D9AC();
    sub_10000A61C(v24, qword_10095F560);
    sub_10076D17C();
    sub_10076D40C();
    v26 = v25;
    v27 = *(v5 + 8);
    v27(v7, v4);
    if (qword_1009411B8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v24, qword_10095F500);
    sub_10076D17C();
    sub_10076D40C();
    v29 = v28;
    v27(v7, v4);
    v19 = v26 + v29;
    if (qword_1009411E8 != -1)
    {
      swift_once();
    }

    v30 = sub_10000A61C(v0, qword_10095F578);
    (*(v1 + 16))(v3, v30, v0);
    sub_10076D17C();
    sub_10075FE7C();
    v23 = v31;
    v27(v7, v4);
    (*(v1 + 8))(v3, v0);
  }

  return v19 + v23;
}

void sub_1005C9BDC()
{
  v1 = v0;
  v2 = sub_10076D3DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_itemLayoutContext;
  v7 = sub_10076341C();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_button;
  sub_10076313C();
  if (qword_100940F70 != -1)
  {
    swift_once();
  }

  v9 = sub_10000A61C(v2, qword_1009A1C48);
  (*(v3 + 16))(v5, v9, v2);
  *(v1 + v8) = sub_10076312C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_dividerView) = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_action;
  v11 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_hasDivider) = 0;
  sub_10077156C();
  __break(1u);
}

BOOL sub_1005C9DF4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

void sub_1005C9E74()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_state);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_state + 8) == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = [objc_allocWithZone(type metadata accessor for InstallProgressLayer()) init];
        sub_1005CA090(v2);
        v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progressLayer);
        if (!v3)
        {
          return;
        }

        v4 = v3;
        v5 = sub_10076FF6C();
        v6 = [v4 animationForKey:v5];

        if (v6)
        {

          v7 = sub_10076FF6C();
          [v4 removeAnimationForKey:v7];
        }

        v8 = sub_1000C97CC();
        v14 = sub_10076FF6C();
        [v4 addAnimation:v8 forKey:v14];
      }

      else
      {
        v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progressLayer);
        if (!v13)
        {
          return;
        }

        v14 = v13;
        sub_1000C8590();
      }

      v12 = v14;
    }

    else
    {
      v11 = OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progressLayer;
      v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progressLayer);
      if (v12)
      {
        [v12 removeFromSuperlayer];
        v12 = *(v0 + v11);
      }

      *(v0 + v11) = 0;
    }
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progressLayer);
    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_state);

    [v9 setProgress:v10];
  }
}

void sub_1005CA090(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progressLayer;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progressLayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 mainScreen];
    [v9 scale];
    v11 = v10;

    [v8 setContentsScale:v11];
    v12 = [v1 layer];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v8 setFrame:{v14, v16, v18, v20}];
    v21 = [v1 layer];
    [v21 addSublayer:v8];
  }
}

id sub_1005CA224(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_state];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progressLayer] = 0;
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progress] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for InstallProgressView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  return v13;
}

void sub_1005CA4D4(double a1)
{
  v3 = sub_10076F08C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F0CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F0EC();
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = &v1[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_state];
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_state];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_state + 8] == 1 && v20 > 1)
  {
    return;
  }

  if (a1 == 0.0)
  {
    v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progress];
    if (v22 == 1.0)
    {
      v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler];
      if (v23)
      {

        v23(v24);

        sub_1000167E0(v23);
      }

      return;
    }

    if (v22 > 0.0)
    {
      v25 = objc_opt_self();
      [v25 begin];
      v26 = swift_allocObject();
      *(v26 + 16) = v1;
      v49 = sub_1005CAE30;
      v50 = v26;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_10009AEDC;
      v48 = &unk_10089B818;
      v27 = _Block_copy(&aBlock);
      v28 = v1;

      [v25 setCompletionBlock:v27];
      _Block_release(v27);
      *v19 = 1;
      v19[8] = 1;
      sub_1005C9E74();
      [v25 commit];
      return;
    }
  }

  if (v20 == 1)
  {
    v29 = v1[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_state + 8];
  }

  else
  {
    v29 = 0;
  }

  if ((v29 & 1) == 0)
  {
    v43 = v8;
    v44 = v4;
    v30 = OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progress;
    *v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progress];
    v19[8] = 0;
    v31 = v15;
    v32 = v16;
    sub_1005C9E74();
    v33 = v31;
    v34 = v44;
    if (*&v1[v30] >= 1.0)
    {
      v35 = v33;
      v42 = v33;
      sub_100085204();
      v39 = v1;
      v41 = sub_10077068C();
      sub_10076F0DC();
      sub_10076F15C();
      v40 = *(v32 + 8);
      v40(v13, v35);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = sub_1005CADD8;
      v50 = v36;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_10009AEDC;
      v48 = &unk_10089B7C8;
      v37 = _Block_copy(&aBlock);

      sub_10076F0AC();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000717C8();
      sub_10000A5D4(&unk_10094E1C0);
      sub_1000852B8();
      sub_1007712CC();
      v38 = v41;
      sub_10077064C();
      _Block_release(v37);

      (*(v34 + 8))(v6, v3);
      (*(v43 + 8))(v10, v7);
      v40(v18, v42);
    }
  }
}

id sub_1005CAA38()
{
  v0 = objc_opt_self();
  [v0 begin];
  v1 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1005CAE68;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089B840;
  v3 = _Block_copy(aBlock);

  [v0 setCompletionBlock:v3];
  _Block_release(v3);
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = v4 + OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_state;
    *v6 = 2;
    *(v6 + 8) = 1;
    sub_1005C9E74();
  }

  return [v0 commit];
}

void sub_1005CABAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler);
    v2 = Strong;
    sub_10001CE50(v1);

    if (v1)
    {
      v1();
      sub_1000167E0(v1);
    }
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = v3 + OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_state;
    *v5 = 0;
    *(v5 + 8) = 1;
    sub_1005C9E74();
  }
}

id sub_1005CAC7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t storeEnumTagSinglePayload for InstallProgressView.ProgressState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1005CAD54(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005CAD70(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1005CADA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005CADE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005CADF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1005CAE30()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_state;
  *v1 = 0;
  *(v1 + 8) = 0;
  sub_1005C9E74();
}

uint64_t sub_1005CAE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v89 = a2;
  v7 = sub_10076BEDC();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v73 = &v72 - v10;
  v11 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v11 - 8);
  v85 = &v72 - v12;
  v13 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v13 - 8);
  v84 = &v72 - v14;
  v15 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v15 - 8);
  v83 = &v72 - v16;
  v17 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v17 - 8);
  v82 = &v72 - v18;
  v19 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v19 - 8);
  v21 = &v72 - v20;
  v22 = sub_10076A3AC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v80 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v25 - 8);
  v81 = &v72 - v26;
  v27 = sub_10076BF6C();
  __chkstk_darwin(v27 - 8);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760C4C();
  sub_10076F64C();
  v86 = a3;
  sub_10076FC1C();
  v30 = v90;
  sub_10076A7BC();
  v31 = [v3 traitCollection];
  sub_1005CC3A0(v89, v31);
  v32 = sub_10076BFCC();

  v33 = *&v3[OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView];
  v89 = a1;
  sub_10076A7BC();
  sub_10076BF7C();
  v76 = v29;
  sub_10075FCCC();
  [v33 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_1000325F0();
    sub_100770D5C();
  }

  sub_10075FB8C();

  [v33 setContentMode:2];
  v34 = sub_10075FD2C();
  v35 = sub_1005CC68C(&qword_100941820, &type metadata accessor for ArtworkView);
  v87 = v32;
  v88 = v30;
  v74 = v35;
  v75 = v34;
  sub_100760B8C();
  v36 = *&v4[OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView];
  [*&v36[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:0];
  v37 = sub_10076A7CC();
  v38 = *(v23 + 104);
  v38(v80, enum case for OfferButtonPresenterViewAlignment.right(_:), v22);
  v38(v21, enum case for OfferButtonPresenterViewAlignment.left(_:), v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  sub_1005CC68C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v39 = v81;
  sub_10076759C();
  v40 = sub_10000A5D4(&qword_100945590);
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  v41 = sub_10075F78C();
  v42 = v82;
  (*(*(v41 - 8) + 56))(v82, 1, 1, v41);
  v43 = sub_1007628DC();
  v44 = v83;
  (*(*(v43 - 8) + 56))(v83, 1, 1, v43);
  v45 = sub_10076C54C();
  v46 = v84;
  (*(*(v45 - 8) + 56))(v84, 1, 1, v45);
  v47 = sub_10000A5D4(&unk_100946750);
  v48 = v85;
  (*(*(v47 - 8) + 56))(v85, 1, 1, v47);
  sub_1004D0A60(v37, v36, v39, v86, 0, 0, v42, v44, v46, v48);
  v36[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 1;
  sub_1006582B8();
  [v36 setNeedsLayout];
  sub_1006582B8();

  sub_10000CFBC(v48, &qword_10094F730);
  sub_10000CFBC(v46, &unk_100949290);
  sub_10000CFBC(v44, &unk_1009492A0);
  sub_10000CFBC(v42, &unk_10094D210);
  sub_10000CFBC(v39, &unk_100946760);
  v49 = *&v36[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  if (v49)
  {
    v50 = objc_opt_self();
    v51 = v49;
    v52 = [v50 whiteColor];
    [v51 setTextColor:v52];
  }

  v53 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
  v54 = *&v36[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v54)
  {
    v55 = objc_opt_self();
    v56 = v54;
    v57 = [v55 whiteColor];
    [v56 setTextColor:v57];

    v58 = *&v36[v53];
    if (v58)
    {
      v59 = qword_100940A98;
      v60 = v58;
      if (v59 != -1)
      {
        swift_once();
      }

      v61 = sub_10076D3DC();
      v62 = sub_10000A61C(v61, qword_1009A0DD8);
      v63 = *(v61 - 8);
      v64 = v73;
      (*(v63 + 16))(v73, v62, v61);
      (*(v63 + 56))(v64, 0, 1, v61);
      sub_1007625DC();

      v65 = *&v36[v53];
      if (v65)
      {
        [v65 setAccessibilityIgnoresInvertColors:1];
      }
    }
  }

  sub_10076A7CC();
  v66 = sub_10076BB5C();

  if (v66)
  {
    swift_beginAccess();
    v67 = v77;
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v78 + 8))(v67, v79);
    sub_10076BFCC();
    v68 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v69 = *&v36[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
    sub_10076BF7C();
    sub_10075FCCC();
    [v69 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*&v36[v68] setContentMode:1];
    v70 = *&v36[v68];
    sub_100760B8C();
  }
}

char *sub_1005CBA2C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView;
  type metadata accessor for TodayCardLockupView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  sub_10075FD2C();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_pageTraits] = 0;
  v15 = [objc_opt_self() effectWithStyle:16];
  v16 = objc_allocWithZone(UIVisualEffectView);
  v49 = v15;
  v17 = [v16 initWithEffect:v15];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_backgroundEffectView] = v17;
  v50.receiver = v4;
  v50.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  v20 = *&v18[OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView];
  v21 = v18;
  [v20 setAccessibilityIgnoresInvertColors:1];
  [*&v18[v19] setContentMode:2];
  [v21 addSubview:*&v18[v19]];
  v22 = OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_backgroundEffectView;
  [*&v21[OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_backgroundEffectView] _setContinuousCornerRadius:20.0];
  [v21 addSubview:*&v21[v22]];
  v23 = OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView;
  [*(*&v21[OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v23] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v23] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v24 = *&v21[v23];
  v25 = objc_opt_self();
  v26 = v24;
  sub_1003EB7CC([v25 whiteColor]);

  v27 = qword_100940A68;
  v28 = *(*&v21[v23] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_10076D3DC();
  v30 = sub_10000A61C(v29, qword_1009A0D48);
  v31 = *(v29 - 8);
  (*(v31 + 16))(v12, v30, v29);
  (*(v31 + 56))(v12, 0, 1, v29);
  sub_1007625DC();

  v32 = *(*&v21[v23] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v33 = [v25 whiteColor];
  [v32 setTextColor:v33];

  v34 = *(*&v21[v23] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  sub_1000325F0();
  v35 = v34;
  v36 = sub_100770D1C();
  v37 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v38 = [v36 resolvedColorWithTraitCollection:v37];

  [v35 setTextColor:v38];
  v39 = *(*&v21[v23] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v40 = [v25 whiteColor];
  [v39 setTintColor:v40];

  v41 = *(*&v21[v23] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v42 = [v25 whiteColor];
  [v41 setTextColor:v42];

  v43 = *(*&v21[v23] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v44 = [v25 whiteColor];
  [v43 setTextColor:v44];

  v45 = *(*&v21[v23] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v46 = [v25 whiteColor];
  [v45 setTextColor:v46];

  [v21 addSubview:*&v21[v23]];
  return v21;
}

id sub_1005CC01C()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  [v0 bounds];
  sub_10075FC8C();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_backgroundEffectView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView];
  [v1 bounds];

  sub_100770A3C();
  return [v3 setFrame:?];
}

double sub_1005CC3A0(uint64_t a1, void *a2)
{
  v3 = sub_10076443C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v21[-v8 - 8];
  sub_10076C22C();
  v11 = v10;
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  sub_10015E5E0(&xmmword_1009A2D20, v26);
  if (qword_100941430 != -1)
  {
    swift_once();
  }

  sub_10015E5E0(&xmmword_1009A2E90, v25);
  if (sub_10077071C())
  {
    v12 = v25;
  }

  else
  {
    v12 = v26;
  }

  sub_10015E5E0(v12, v21);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v13 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v13 = qword_100944CA0;
  }

  v14 = sub_10000A61C(v3, v13);
  (*(v4 + 16))(v6, v14, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v24 & 1) == 0 && v22 == 0.0 && v23 == 0.0)
  {
    sub_1007643EC();
    v16 = v15;
    sub_1007643EC();
    v22 = v16;
    v23 = v17;
    v24 = 0;
  }

  v18 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v21, a2, v11);
  (*(v4 + 8))(v9, v3, v18);
  sub_10015E58C(v21);
  sub_10015E58C(v25);
  sub_10015E58C(v26);
  return v11;
}

uint64_t sub_1005CC68C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005CC6D4(uint64_t a1, uint64_t a2)
{
  sub_10000A570(a1, v9);
  sub_10000A5D4(&unk_100942830);
  sub_10076A7DC();
  result = swift_dynamicCast();
  if (result)
  {
    sub_10076A7BC();
    v5 = [v2 traitCollection];
    sub_1005CC3A0(a2, v5);
    sub_10076BFCC();

    sub_10075FD2C();
    sub_1005CC68C(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760B8C();
    sub_10076A7CC();
    v6 = sub_10076BB5C();

    if (v6)
    {
      if (qword_10093FF48 != -1)
      {
        swift_once();
      }

      v7 = sub_100763ADC();
      sub_10000A61C(v7, qword_10099E768);
      sub_1007639AC();
      sub_10076BFCC();
      v8 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      sub_100760B8C();
    }
  }

  return result;
}

void sub_1005CC918()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView;
  type metadata accessor for TodayCardLockupView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  sub_10075FD2C();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_pageTraits) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1005CC9D4(uint64_t a1, char a2)
{
  if (a2)
  {
    v11[3] = sub_10076649C();
    v11[4] = sub_1005CCC60();
    sub_10000DB7C(v11);

    sub_10076647C();
    sub_10000A570(v11, &v8);
    sub_10000CF78(&v8, v9);
    if (sub_1007618AC())
    {
      sub_100012498(&v8, v7);
      v2 = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = _swiftEmptyArrayStorage;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004BB754(0, _swiftEmptyArrayStorage[2] + 1, 1);
        v2 = v10;
      }

      v5 = v2[2];
      v4 = v2[3];
      if (v5 >= v4 >> 1)
      {
        sub_1004BB754((v4 > 1), v5 + 1, 1);
        v2 = v10;
      }

      v2[2] = v5 + 1;
      sub_100012498(v7, &v2[5 * v5 + 4]);
    }

    else
    {
      sub_10000CD74(&v8);
      v2 = _swiftEmptyArrayStorage;
    }

    sub_10000CD74(v11);
    return v2;
  }

  else
  {
    result = sub_10077156C();
    __break(1u);
  }

  return result;
}

Swift::Int OnboardingConfiguration.hashValue.getter(unsigned __int8 a1)
{
  sub_10077175C();
  sub_10077176C(a1);
  return sub_1007717AC();
}

unint64_t sub_1005CCBFC()
{
  result = qword_10095F668;
  if (!qword_10095F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095F668);
  }

  return result;
}

unint64_t sub_1005CCC60()
{
  result = qword_1009425D0;
  if (!qword_1009425D0)
  {
    sub_10076649C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009425D0);
  }

  return result;
}

void sub_1005CCCB8(void *a1)
{
  v2 = v1;
  v4 = [a1 traitCollection];
  sub_1005CCFFC();

  sub_100770A3C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a1 traitCollection];
  LOBYTE(v4) = sub_10077071C();

  if (v4)
  {
    sub_1005CD158(1, v31, v6, v8, v10, v12);
  }

  else
  {
    sub_1005CD9E8(1, v31, v6, v8, v10, v12);
  }

  v14 = 0;
  v23 = v31[4];
  v24 = v31[3];
  v15 = v31[0];
  v16 = *(v2 + 96);
  v17 = *(v16 + 16);
  v25 = v16 + 32;
  while (1)
  {
    v18 = 0uLL;
    v19 = v17;
    v20 = 0uLL;
    v21 = 0uLL;
    if (v14 == v17)
    {
      goto LABEL_10;
    }

    if (v14 >= v17)
    {
      break;
    }

    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_17;
    }

    *&v27 = v14;
    sub_10000A570(v25 + 40 * v14, &v27 + 8);
    v18 = v27;
    v20 = v28;
    v21 = v29;
LABEL_10:
    v30[0] = v18;
    v30[1] = v20;
    v30[2] = v21;
    if (!v21)
    {

      sub_100770A7C();
      sub_10076D1BC();
      return;
    }

    v26 = v18;
    sub_100012498((v30 + 8), &v27);
    sub_10000CF78(&v27, *(&v28 + 1));
    v22 = [a1 traitCollection];
    if (*(*&v15 + 16))
    {
      sub_10060FF40(v26);
    }

    sub_1007709CC();

    sub_10076D23C();
    sub_10000CF78(&v27, *(&v28 + 1));
    if (*(*&v15 + 16))
    {
      sub_10060FF40(v26);
    }

    sub_10076D25C();
    sub_10000CD74(&v27);
    v14 = v19;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

unint64_t sub_1005CCFFC()
{
  v1 = ASKDeviceTypeGetCurrent();
  v2 = sub_10076FF9C();
  v4 = v3;
  if (v2 == sub_10076FF9C() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_10077167C();

    if ((v7 & 1) == 0)
    {
      result = sub_10077071C();
      if ((result & 1) == 0)
      {
        if (*(*(v0 + 88) + 16))
        {
          return sub_10060FF40(*(*(v0 + 96) + 16));
        }
      }
    }
  }

  return result;
}

uint64_t sub_1005CD158@<X0>(char a1@<W0>, double *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v103 = sub_10077164C();
  v13 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000FC324(_swiftEmptyArrayStorage);
  v109.origin.x = a3;
  v109.origin.y = a4;
  v109.size.width = a5;
  v109.size.height = a6;
  Width = CGRectGetWidth(v109);
  v17 = 0;
  v18 = *v6;
  v19 = *(v6 + 8);
  v106 = *(v6 + 16);
  v104 = *(v6 + 40);
  v20 = *(v6 + 48);
  if (Width <= 0.0)
  {
    goto LABEL_12;
  }

  v17 = 0;
  v21 = 0.0;
  while (1)
  {
    if (v18 + v21 <= Width)
    {
      v22 = __OFADD__(v17++, 1);
      if (v22)
      {
        break;
      }
    }

    v21 = v18 + *(v6 + 24) + v21;
    if (v21 >= Width)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  if (v104 < 2 || v17 <= 0)
  {
LABEL_12:
    sub_10000A5D4(&qword_10095F670);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100783DD0;
    *(v23 + 32) = *(v6 + 96);

    v24 = 1;
  }

  else
  {
    sub_10000A5D4(&qword_10094CF50);
    v23 = sub_1007701FC();
    v24 = *(v23 + 16);
    if (!v24)
    {

      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
LABEL_65:
      *a2 = v15;
      a2[1] = v26;
      a2[2] = v27;
      a2[3] = v28;
      a2[4] = v29;
      return result;
    }
  }

  v30 = *(v23 + 32);
  v90 = v23 + 32;
  v31 = *(v30 + 16);
  if (v17 < v31)
  {
    v31 = v17;
  }

  v32 = v18 * v31;
  v96 = v31;
  v33 = v31 + -1.0;
  v105 = a6;
  v100 = a3;
  if (v33 >= 0.0)
  {
    v34 = v32 + v106 * v33;
    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v111.origin.x = a3;
    v111.origin.y = a4;
    v111.size.width = a5;
    v111.size.height = a6;
    v38 = CGRectGetWidth(v111);
    v101 = v34;
    v39 = (v38 - v34) * 0.5;
    v112.origin.x = a3;
    v35 = a4;
    v112.origin.y = a4;
    v36 = a5;
    v112.size.width = a5;
    v112.size.height = a6;
    MinX = CGRectGetMinX(v112) + v39;
    goto LABEL_20;
  }

  v34 = v106 * 0.0 + v32;
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_17:
  v101 = v34;
  v110.origin.x = a3;
  v35 = a4;
  v110.origin.y = a4;
  v36 = a5;
  v110.size.width = a5;
  v110.size.height = a6;
  MinX = CGRectGetMinX(v110);
LABEL_20:
  v97 = 0.0;
  if (a1)
  {
    v40 = MinX;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = v104;
  if (v104 >= v24)
  {
    v41 = v24;
  }

  v42 = v19 * v41 + v106 * (v24 - 1);
  v43 = 0.0;
  if (a1)
  {
    v44 = v100;
    v113.origin.x = v100;
    v113.origin.y = v35;
    v113.size.width = v36;
    v45 = v105;
    v113.size.height = v105;
    v99 = (CGRectGetHeight(v113) - v42) * 0.5;
    v114.origin.x = v44;
    v114.origin.y = v35;
    v114.size.width = v36;
    v114.size.height = v45;
    v43 = CGRectGetMinY(v114) + v99;
  }

  v87 = a2;
  v89 = *(v23 + 16);
  if (!v89)
  {
    v94 = 0.0;
    v93 = 0.0;
    v95 = 0.0;
LABEL_64:

    a2 = v87;
    v29 = v97;
    v26 = v95;
    v28 = v94;
    v27 = v93;
    goto LABEL_65;
  }

  v46 = 0;
  LODWORD(v100) = enum case for FloatingPointRoundingRule.down(_:);
  v47 = (v13 + 104);
  v48 = (v13 + 8);
  v49 = 0.0;
  v92 = v96;
  v95 = 0.0;
  v93 = 0.0;
  v94 = 0.0;
  v97 = 0.0;
  v88 = v23;
LABEL_30:
  if (*&v49 < *(v23 + 16))
  {
    v50 = *(v90 + 8 * *&v49);
    *&v91 = *&v49 + 1;
    v51 = *(*&v50 + 16);
    v98 = *&v50 + 32;
    v99 = v50;

    v52 = 0;
    v105 = v49;
    while (1)
    {
      v53 = 0uLL;
      v54 = v51;
      v55 = 0uLL;
      v56 = 0uLL;
      if (v52 != v51)
      {
        if (v52 >= *(*&v99 + 16))
        {
          goto LABEL_68;
        }

        v54 = v52 + 1;
        *&v107[0] = v52;
        sub_10000A570(v98 + 40 * v52, v107 + 8);
        v53 = v107[0];
        v55 = v107[1];
        v56 = v107[2];
      }

      v108[0] = v53;
      v108[1] = v55;
      v108[2] = v56;
      if (!v56)
      {

        v49 = v91;
        v23 = v88;
        if (*&v91 == v89)
        {
          goto LABEL_64;
        }

        goto LABEL_30;
      }

      v57 = v53;
      v58 = v102;
      v59 = v103;
      (*v47)(v102, LODWORD(v100), v103);
      sub_100770CAC();
      v61 = v60;
      v63 = v62;
      (*v48)(v58, v59);
      v115.origin.x = v61;
      v115.origin.y = v63;
      v115.size.width = v18;
      v115.size.height = v19;
      v120.origin.x = v40;
      v120.origin.y = v43;
      v120.size.width = v101;
      v120.size.height = v42;
      v64 = CGRectIntersectsRect(v115, v120);
      v65 = 0;
      if (*&v49 < v104 && v64)
      {
        if (v96 <= -9.22337204e18)
        {
          goto LABEL_69;
        }

        if (v96 >= 9.22337204e18)
        {
          goto LABEL_70;
        }

        if (v57 >= v92)
        {
          v65 = 0;
        }

        else
        {
          v116.origin.x = v61;
          v116.origin.y = v63;
          v116.size.width = v18;
          v116.size.height = v19;
          v66 = CGRectGetMinX(v116);
          v67 = v95;
          if (v66 < v95)
          {
            v67 = v66;
          }

          v95 = v67;
          v117.origin.x = v61;
          v117.origin.y = v63;
          v117.size.width = v18;
          v117.size.height = v19;
          MinY = CGRectGetMinY(v117);
          v69 = v93;
          if (MinY < v93)
          {
            v69 = MinY;
          }

          v93 = v69;
          v118.origin.x = v61;
          v118.origin.y = v63;
          v118.size.width = v18;
          v118.size.height = v19;
          MaxX = CGRectGetMaxX(v118);
          v71 = v94;
          if (v94 <= MaxX)
          {
            v71 = MaxX;
          }

          v94 = v71;
          v119.origin.x = v61;
          v119.origin.y = v63;
          v119.size.width = v18;
          v119.size.height = v19;
          MaxY = CGRectGetMaxY(v119);
          v73 = v97;
          if (v97 <= MaxY)
          {
            v73 = MaxY;
          }

          v97 = v73;
          v65 = 1;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v107[0] = v15;
      v75 = sub_10060FF40(v46);
      v77 = v15[2];
      v78 = (v76 & 1) == 0;
      v22 = __OFADD__(v77, v78);
      v79 = v77 + v78;
      if (v22)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v80 = v76;
      if (v15[3] < v79)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_56;
      }

      v83 = v75;
      sub_10024BB00();
      v75 = v83;
      v15 = *&v107[0];
      if (v80)
      {
LABEL_57:
        v82 = v15[7] + 40 * v75;
        *v82 = v61;
        *(v82 + 8) = v63;
        *(v82 + 16) = v18;
        *(v82 + 24) = v19;
        *(v82 + 32) = v65;
        goto LABEL_61;
      }

LABEL_59:
      v15[(v75 >> 6) + 8] |= 1 << v75;
      *(v15[6] + 8 * v75) = v46;
      v84 = v15[7] + 40 * v75;
      *v84 = v61;
      *(v84 + 8) = v63;
      *(v84 + 16) = v18;
      *(v84 + 24) = v19;
      *(v84 + 32) = v65;
      v85 = v15[2];
      v22 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v22)
      {
        goto LABEL_71;
      }

      v15[2] = v86;
LABEL_61:
      v49 = v105;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_67;
      }

      sub_10000CD74(v108 + 8);
      ++v46;
      v52 = v54;
    }

    sub_1002466BC(v79, isUniquelyReferenced_nonNull_native);
    v75 = sub_10060FF40(v46);
    if ((v80 & 1) != (v81 & 1))
    {
      goto LABEL_73;
    }

LABEL_56:
    v15 = *&v107[0];
    if (v80)
    {
      goto LABEL_57;
    }

    goto LABEL_59;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_1007716DC();
  __break(1u);
  return result;
}

void sub_1005CD9E8(char a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = sub_1000FC324(_swiftEmptyArrayStorage);
  v14 = ASKDeviceTypeGetCurrent();
  v15 = sub_10076FF9C();
  v17 = v16;
  if (v15 == sub_10076FF9C() && v17 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_10077167C();
  }

  v71.origin.x = a3;
  v71.origin.y = a4;
  v71.size.width = a5;
  v71.size.height = a6;
  Width = CGRectGetWidth(v71);
  v22 = *(v6 + 16);
  v23 = v22;
  if ((v20 & 1) == 0)
  {
    v23 = *(v6 + 24);
  }

  v24 = *v6;
  v25 = *(v6 + 8);
  v26 = 0;
  if (Width > 0.0)
  {
    v27 = v24 + v23;
    v28 = 0.0;
    while (1)
    {
      if (v24 + v28 <= Width)
      {
        v29 = __OFADD__(v26++, 1);
        if (v29)
        {
          break;
        }
      }

      v28 = v27 + v28;
      if (v28 >= Width)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

LABEL_16:
  v30 = *(v6 + 96);
  v31 = *(v30 + 16);
  if (v31 >= v26)
  {
    v32 = v26;
  }

  else
  {
    v32 = *(v30 + 16);
  }

  v33 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    goto LABEL_59;
  }

  if (v33 <= 0)
  {
    v68 = 0.0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    v68 = v22;
    goto LABEL_25;
  }

  v72.origin.x = a3;
  v72.origin.y = a4;
  v72.size.width = a5;
  v72.size.height = a6;
  v34 = CGRectGetWidth(v72);
  if (v20)
  {
    goto LABEL_24;
  }

  v68 = (v34 - v24 * v32) / v33;
LABEL_25:
  v73.origin.x = a3;
  v73.origin.y = a4;
  v73.size.width = a5;
  v73.size.height = a6;
  MinX = CGRectGetMinX(v73);
  v36 = 0.0;
  v37 = a5;
  v38 = 0.0;
  if (a1)
  {
    v39 = a3;
    v40 = a4;
    v41 = a6;
    v38 = floor(CGRectGetMidY(*(&v37 - 2)) + v25 * -0.5);
  }

  v42 = 0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  while (1)
  {
    v47 = 0uLL;
    v48 = v31;
    v49 = 0uLL;
    v50 = 0uLL;
    if (v42 != v31)
    {
      if (v42 >= v31)
      {
        goto LABEL_56;
      }

      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_57;
      }

      *&v69[0] = v42;
      sub_10000A570(v30 + 32 + 40 * v42, v69 + 8);
      v47 = v69[0];
      v49 = v69[1];
      v50 = v69[2];
    }

    v70[0] = v47;
    v70[1] = v49;
    v70[2] = v50;
    if (!v50)
    {
      *a2 = v13;
      *(a2 + 8) = v45;
      *(a2 + 16) = v44;
      *(a2 + 24) = v43;
      *(a2 + 32) = v36;
      return;
    }

    v51 = v47;
    if (v47 < v26)
    {
      v75.origin.x = MinX;
      v75.origin.y = v38;
      v75.size.width = v24;
      v75.size.height = v25;
      v52 = CGRectGetMinX(v75);
      if (v52 < v45)
      {
        v45 = v52;
      }

      v76.origin.x = MinX;
      v76.origin.y = v38;
      v76.size.width = v24;
      v76.size.height = v25;
      MinY = CGRectGetMinY(v76);
      if (MinY < v44)
      {
        v44 = MinY;
      }

      v77.origin.x = MinX;
      v77.origin.y = v38;
      v77.size.width = v24;
      v77.size.height = v25;
      MaxX = CGRectGetMaxX(v77);
      if (v43 <= MaxX)
      {
        v43 = MaxX;
      }

      v78.origin.x = MinX;
      v78.origin.y = v38;
      v78.size.width = v24;
      v78.size.height = v25;
      MaxY = CGRectGetMaxY(v78);
      if (v36 <= MaxY)
      {
        v36 = MaxY;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = v13;
    v57 = sub_10060FF40(v51);
    v59 = v13[2];
    v60 = (v58 & 1) == 0;
    v29 = __OFADD__(v59, v60);
    v61 = v59 + v60;
    if (v29)
    {
      break;
    }

    v62 = v58;
    if (v13[3] < v61)
    {
      sub_1002466BC(v61, isUniquelyReferenced_nonNull_native);
      v57 = sub_10060FF40(v51);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_60;
      }

LABEL_49:
      if (v62)
      {
        goto LABEL_28;
      }

      goto LABEL_50;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_49;
    }

    v67 = v57;
    sub_10024BB00();
    v57 = v67;
    v13 = *&v69[0];
    if (v62)
    {
LABEL_28:
      v46 = v13[7] + 40 * v57;
      *v46 = MinX;
      *(v46 + 8) = v38;
      *(v46 + 16) = v24;
      *(v46 + 24) = v25;
      *(v46 + 32) = v51 < v26;
      goto LABEL_29;
    }

LABEL_50:
    v13[(v57 >> 6) + 8] |= 1 << v57;
    *(v13[6] + 8 * v57) = v51;
    v64 = v13[7] + 40 * v57;
    *v64 = MinX;
    *(v64 + 8) = v38;
    *(v64 + 16) = v24;
    *(v64 + 24) = v25;
    *(v64 + 32) = v51 < v26;
    v65 = v13[2];
    v29 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v29)
    {
      goto LABEL_58;
    }

    v13[2] = v66;
LABEL_29:
    v74.origin.x = MinX;
    v74.origin.y = v38;
    v74.size.width = v24;
    v74.size.height = v25;
    MinX = v68 + CGRectGetMaxX(v74);
    sub_10000CD74(v70 + 8);
    v42 = v48;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_1007716DC();
  __break(1u);
}

void sub_1005CDE9C(void *a1)
{
  v3 = v1[5];
  v6[4] = v1[4];
  v7[0] = v3;
  *(v7 + 10) = *(v1 + 90);
  v4 = v1[1];
  v6[0] = *v1;
  v6[1] = v4;
  v5 = v1[3];
  v6[2] = v1[2];
  v6[3] = v5;
  swift_getObjectType();
  sub_1003A6550(a1, v6);
}

uint64_t sub_1005CDF10@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_1005CE04C(v9, &v8);
}

__n128 sub_1005CDF6C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1005CDF98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005CDFE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005CE084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005CE0CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005CE2A4()
{
  ObjectType = swift_getObjectType();
  v29 = ObjectType;
  v37 = sub_10076D1FC();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076B03C();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100768E2C();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_10000A5D4(&qword_10095F6A8);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_100762A2C();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "layoutSubviews", v14, v29);
  v17 = enum case for ChartOrCategoryBrickStyle.tile(_:);
  v18 = sub_100767ECC();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v11, v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  sub_100762A1C();
  *(&v44 + 1) = v12;
  v45 = &protocol witness table for PlaceholderBrick;
  v20 = sub_10000DB7C(&v43);
  (*(v13 + 16))(v20, v16, v12);
  v21 = [v0 traitCollection];
  sub_10000A570(&v43, v41);
  sub_100768DEC();
  sub_10000CD74(&v43);
  v22 = v31;
  (*(v4 + 16))(v30, v8, v31);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28CategoryBrickPlaceholderView_artworkPlaceholder];
  v24 = sub_10075FD2C();
  v40 = &protocol witness table for UIView;
  v39 = v24;
  v38 = v23;
  v47 = 0u;
  v48 = 0u;
  v49 = 1;
  v25 = v23;
  v26 = v32;
  sub_10076B02C();
  sub_10076422C();
  v27 = v33;
  sub_10076AFFC();
  (*(v36 + 8))(v27, v37);
  (*(v34 + 8))(v26, v35);
  (*(v4 + 8))(v8, v22);
  return (*(v13 + 8))(v16, v12);
}

char *sub_1005CE87C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_preferredArtworkSize];
  type metadata accessor for QuoteView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v12 = 0;
  *(v12 + 1) = 0;
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_quoteView] = v14;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_quoteView]];

  return v15;
}

uint64_t type metadata accessor for QuoteCollectionViewCell()
{
  result = qword_10095F6D8;
  if (!qword_10095F6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005CEC50()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005CED30()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_quoteView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView);
  sub_10075FB6C();

  v4 = *(v1 + v2);
  sub_10075FD2C();
  sub_1005CEE6C(&qword_100941820, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100760BFC();
}

uint64_t sub_1005CEE14(uint64_t a1)
{
  result = sub_1005CEE6C(&qword_10095F6E8, type metadata accessor for QuoteCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005CEE6C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1005CEEB4(unint64_t a1)
{
  v1 = a1;
  v39 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v37 = _swiftEmptyArrayStorage;
    v32 = v1 & 0xC000000000000001;
    v33 = v1 + 32;
    v30 = i;
    v31 = v1;
    while (1)
    {
      if (v4)
      {
        v5 = sub_10077149C();
      }

      else
      {
        if (v3 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        v5 = *(v33 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v8 = v6;
        sub_10077019C();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();

        v37 = v39;
        if (v3 == i)
        {
          return v37;
        }
      }

      else
      {
        v35 = v6;
        v9 = [v6 subviews];
        sub_100016F40(0, &qword_1009441F0);
        v10 = sub_1007701BC();

        v11 = sub_1005CEEB4(v10);

        v12 = v11 >> 62;
        if (v11 >> 62)
        {
          v13 = sub_10077158C();
        }

        else
        {
          v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = v37 >> 62;
        if (v37 >> 62)
        {
          v15 = sub_10077158C();
        }

        else
        {
          v15 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v36 = v13;
        v7 = __OFADD__(v15, v13);
        v16 = v15 + v13;
        if (v7)
        {
          goto LABEL_46;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v14)
          {
            v17 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v16 <= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

LABEL_26:
          sub_10077158C();
          goto LABEL_27;
        }

        if (v14)
        {
          goto LABEL_26;
        }

LABEL_27:
        v37 = sub_1007714AC();
        v17 = v37 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v12)
        {
          v20 = sub_10077158C();
          if (v20)
          {
LABEL_32:
            if (((v19 >> 1) - v18) < v36)
            {
              goto LABEL_48;
            }

            v21 = v17 + 8 * v18 + 32;
            if (v12)
            {
              if (v20 < 1)
              {
                goto LABEL_50;
              }

              sub_100071820(&unk_10095F730, &qword_10095F728);
              for (j = 0; j != v20; ++j)
              {
                sub_10000A5D4(&qword_10095F728);
                v24 = sub_1000FBD70(v38, j, v11);
                v26 = *v25;
                (v24)(v38, 0);
                *(v21 + 8 * j) = v26;
              }

              i = v30;
              v1 = v31;
              v22 = v36;
            }

            else
            {
              sub_100016F40(0, &qword_100956550);
              v22 = v36;
              swift_arrayInitWithCopy();
            }

            v4 = v32;
            if (v22 > 0)
            {
              v27 = *(v17 + 16);
              v7 = __OFADD__(v27, v22);
              v28 = v27 + v22;
              if (v7)
              {
                goto LABEL_49;
              }

              *(v17 + 16) = v28;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_32;
          }
        }

        v4 = v32;
        if (v36 > 0)
        {
          goto LABEL_47;
        }

LABEL_5:
        v39 = v37;
        if (v3 == i)
        {
          return v37;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1005CF434(void *a1)
{
  v113 = sub_10076F08C();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10076F0CC();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076F0EC();
  v108 = *(v116 - 8);
  __chkstk_darwin(v116);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v107 = &v94 - v10;
  v11 = [a1 viewForKey:{UITransitionContextFromViewKey, v9}];
  v12 = v11;
  if (v11)
  {
    [v11 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v21 = [a1 containerView];
    [v21 bounds];
    v14 = v22;
    v16 = v23;
    v18 = v24;
    v20 = v25;
  }

  *&v26 = COERCE_DOUBLE(swift_allocObject());
  v27 = &v1[OBJC_IVAR____TtC20ProductPageExtension21BouncyToRectAnimation_toRect];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension21BouncyToRectAnimation_toRect + 32])
  {
    v118.origin.x = v14;
    v118.origin.y = v16;
    v118.size.width = v18;
    v118.size.height = v20;
    v28 = CGRectGetWidth(v118) * 0.3;
    v119.origin.x = v14;
    v119.origin.y = v16;
    v119.size.width = v18;
    v119.size.height = v20;
    v29 = CGRectGetHeight(v119) * 0.3;
    v120.origin.x = v14;
    v120.origin.y = v16;
    v120.size.width = v18;
    v120.size.height = v20;
    v121 = CGRectInset(v120, v28, v29);
    x = v121.origin.x;
    y = v121.origin.y;
    width = v121.size.width;
    height = v121.size.height;
  }

  else
  {
    width = v27[2];
    height = v27[3];
    x = *v27;
    y = v27[1];
  }

  v106 = v1;
  v26[2] = x;
  v26[3] = y;
  v26[4] = width;
  v26[5] = height;
  v122.origin.x = v14;
  v122.origin.y = v16;
  v122.size.width = v18;
  v122.size.height = v20;
  v105 = CGRectGetWidth(v122);
  v123.origin.x = x;
  v123.origin.y = y;
  v123.size.width = width;
  v123.size.height = height;
  v99 = CGRectGetWidth(v123);
  v124.origin.x = v14;
  v124.origin.y = v16;
  v124.size.width = v18;
  v124.size.height = v20;
  v97 = CGRectGetHeight(v124);
  v125.origin.x = x;
  v125.origin.y = y;
  v125.size.width = width;
  v125.size.height = height;
  v96 = CGRectGetHeight(v125);
  v126.origin.x = v14;
  v126.origin.y = v16;
  v126.size.width = v18;
  v126.size.height = v20;
  MidX = CGRectGetMidX(v126);
  v127.origin.x = x;
  v127.origin.y = y;
  v127.size.width = width;
  v127.size.height = height;
  v34 = CGRectGetMidX(v127);
  v128.size.height = v20;
  v35 = v34;
  *&v104 = v14;
  v128.origin.x = v14;
  v103 = v16;
  v128.origin.y = v16;
  v102 = v18;
  v128.size.width = v18;
  v101 = v128.size.height;
  MidY = CGRectGetMidY(v128);
  v114 = x;
  v129.origin.x = x;
  v98 = y;
  v129.origin.y = y;
  v115 = width;
  v129.size.width = width;
  v100 = height;
  v129.size.height = height;
  v37 = CGRectGetMidY(v129);
  v38 = sqrt((v105 - v99) * (v105 - v99) + (v97 - v96) * (v97 - v96));
  v39 = sqrt((MidX - v35) * (MidX - v35) + (MidY - v37) * (MidY - v37));
  if (v38 > v39)
  {
    v39 = v38;
  }

  v99 = v39 / 0.7 / v39;
  v40 = [a1 viewForKey:UITransitionContextToViewKey];
  v41 = *&v40;
  if (*&v40 != 0.0)
  {
    v42 = v40;
    v43 = [a1 containerView];
    [v43 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    [v42 setFrame:{v45, v47, v49, v51}];
    v52 = v42;
    v53 = [a1 containerView];
    [v53 insertSubview:v52 below:v12];
  }

  v105 = v41;
  v54 = v114;
  v130.origin.x = v114;
  v55 = v98;
  v130.origin.y = v98;
  v130.size.width = v115;
  v56 = v100;
  v130.size.height = v100;
  MinY = CGRectGetMinY(v130);
  v58 = *&v104;
  *&v131.origin.x = v104;
  v59 = v103;
  v131.origin.y = v103;
  v60 = v102;
  v131.size.width = v102;
  v61 = v101;
  v131.size.height = v101;
  v62 = MinY - CGRectGetMinY(v131);
  v132.origin.x = v54;
  v132.origin.y = v55;
  v63 = v115;
  v132.size.width = v115;
  v132.size.height = v56;
  v64 = CGRectGetMidX(v132);
  v133.origin.x = v58;
  v133.origin.y = v59;
  v133.size.width = v60;
  v133.size.height = v61;
  v65 = CGRectGetMidX(v133);
  CATransform3DMakeTranslation(&aBlock, v64 - v65, v62, 0.0);
  v26[3] = v59;
  v134.origin.x = v58;
  v134.origin.y = v59;
  v134.size.width = v60;
  v134.size.height = v61;
  v66 = CGRectGetWidth(v134);
  v135.origin.x = v114;
  v135.origin.y = v59;
  v135.size.width = v63;
  v135.size.height = v56;
  v67 = CGRectGetWidth(v135);
  v115 = *&v26;
  v26[2] = v58 + (v66 - v67) * 0.5;
  v68 = sub_10076FF6C();
  v69 = [objc_opt_self() animationWithKeyPath:v68];

  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 valueWithCATransform3D:&aBlock];
  [v71 setToValue:v72];

  [v71 setDamping:16.0];
  [v71 setMass:1.0];
  [v71 setStiffness:150.0];
  [v71 setInitialVelocity:v99];
  v73 = v71;
  [v73 settlingDuration];
  [v73 setDuration:?];
  [v73 setFillMode:kCAFillModeForwards];
  [v73 setRemovedOnCompletion:0];

  if (v12)
  {
    v74 = [v12 layer];
    v75 = sub_10076FF6C();
    [v74 addAnimation:v73 forKey:v75];
  }

  [v73 settlingDuration];
  sub_100016F40(0, &qword_1009471F0);
  *&v104 = COERCE_DOUBLE(sub_10077068C());
  sub_10076F0DC();
  v76 = v107;
  sub_10076F15C();
  v114 = v108[1];
  (*&v114)(v7, v116);
  v77 = swift_allocObject();
  v78 = v106;
  *(v77 + 16) = a1;
  *(v77 + 24) = v78;
  *&aBlock.m21 = sub_10056D0A8;
  *&aBlock.m22 = v77;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_10009AEDC;
  *&aBlock.m14 = &unk_10089BB18;
  v79 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v108 = v78;

  sub_10076F0AC();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  v80 = v12;
  sub_100071820(&qword_100945170, &unk_10094E1C0);
  v81 = v110;
  v82 = v113;
  sub_1007712CC();
  v83 = v104;
  sub_10077064C();
  _Block_release(v79);

  (*(v112 + 8))(v81, v82);
  (*(v109 + 8))(v5, v111);
  (*&v114)(v76, v116);
  v84 = objc_opt_self();
  v85 = swift_allocObject();
  v86 = v108;
  *(v85 + 2) = v108;
  *(v85 + 3) = v80;
  v85[4] = v115;
  *&aBlock.m21 = sub_1005D0574;
  *&aBlock.m22 = v85;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_10009AEDC;
  *&aBlock.m14 = &unk_10089BB68;
  v87 = _Block_copy(&aBlock);
  v88 = v86;
  v89 = v80;

  v90 = swift_allocObject();
  *(v90 + 16) = v80;
  *&aBlock.m21 = sub_1005D05B8;
  *&aBlock.m22 = v90;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_1000513F0;
  *&aBlock.m14 = &unk_10089BBB8;
  v91 = _Block_copy(&aBlock);
  v92 = v89;

  [v84 animateWithDuration:131201 delay:v87 options:v91 animations:0.35 completion:0.0];

  _Block_release(v91);
  _Block_release(v87);
}

id sub_1005D00A8(uint64_t a1, void *a2, double *a3)
{
  v6 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 48);
    v11 = (v8 + 48);
    do
    {
      v12 = *v11;
      v11 += 24;
      if (v12 == 1)
      {
        v13 = *(v10 - 2);

        v13(1, 1);
      }

      v10 = v11;
      --v9;
    }

    while (v9);
  }

  if (a2)
  {
    swift_beginAccess();
    result = [a2 setFrame:{a3[2], a3[3], a3[4], a3[5]}];
    if (*(a1 + OBJC_IVAR____TtC20ProductPageExtension21BouncyToRectAnimation_toRect + 32) == 1)
    {
      return [a2 setAlpha:0.0];
    }
  }

  return result;
}

void sub_1005D01D0(int a1, id a2)
{
  if (a2)
  {
    v2 = [a2 subviews];
    sub_100016F40(0, &qword_1009441F0);
    v3 = sub_1007701BC();

    v4 = sub_1005CEEB4(v3);

    v5 = [objc_allocWithZone(CATransition) init];
    v6 = objc_opt_self();
    v15 = v5;
    v7 = [v6 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v15 setTimingFunction:v7];

    [v15 setType:kCATransitionFade];
    [v15 setDuration:0.2];

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
    {
      v9 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = sub_10077149C();
        }

        else
        {
          if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v4 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 layer];
        [v13 setMasksToBounds:1];

        v14 = [v11 layer];
        [v14 addAnimation:v15 forKey:kCATransitionFade];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  else
  {
    __break(1u);
  }
}

id sub_1005D046C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyToRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005D04D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005D0514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005D052C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005D0580()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v106 = a1;
  v102 = a2;
  v101 = sub_10076D1FC();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10076DDFC();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v66 - v15;
  v98 = sub_10076DE2C();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1007653CC();
  v109 = *(v105 - 8);
  v17 = v109;
  __chkstk_darwin(v105);
  v88 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1007653EC();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v85 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10076540C();
  v107 = *(v75 - 8);
  v20 = v107;
  __chkstk_darwin(v75);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v22;
  v90 = sub_10076543C();
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(v6 + 21, v6[24]);
  v123.origin.x = a3;
  v123.origin.y = a4;
  v123.size.width = a5;
  v123.size.height = a6;
  CGRectGetMinX(v123);
  v124.origin.x = a3;
  v124.origin.y = a4;
  v124.size.width = a5;
  v124.size.height = a6;
  CGRectGetMinY(v124);
  sub_100770A4C();
  sub_10076D23C();
  sub_10000A5D4(&qword_10094F2A8);
  v24 = *(sub_10076541C() - 8);
  v86 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v87 = v26;
  *(v26 + 16) = xmmword_100784500;
  v69 = v26 + v25;
  v103 = v7;
  v27 = v7[34];
  v28 = v7[35];
  v29 = sub_10000CF78(v7 + 31, v27);
  v121 = v27;
  v122 = *(v28 + 8);
  v30 = sub_10000DB7C(&v120);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v82 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v31 = *(v20 + 104);
  v83 = v20 + 104;
  v84 = v31;
  v31(v22);
  v81 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v32 = v108;
  v33 = *(v108 + 104);
  v79 = v108 + 104;
  v80 = v33;
  v34 = v85;
  v33(v85);
  v118 = &type metadata for Double;
  v119 = &protocol witness table for Double;
  v117 = 0;
  v78 = sub_10000A5D4(&unk_100959500);
  v77 = *(v17 + 72);
  v35 = v109;
  v36 = swift_allocObject();
  v76 = xmmword_100783DD0;
  *(v36 + 16) = xmmword_100783DD0;
  sub_10076539C();
  v114 = v36;
  v73 = sub_1005A5658(&qword_10094F2B0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v72 = sub_10000A5D4(&qword_100959510);
  v74 = sub_1004ACA24();
  v37 = v88;
  v38 = v105;
  sub_1007712CC();
  v39 = v103;
  v40 = v67;
  sub_1007653FC();
  v41 = *(v35 + 8);
  v109 = v35 + 8;
  v71 = v41;
  v41(v37, v38);
  v42 = *(v32 + 8);
  v108 = v32 + 8;
  v70 = v42;
  v43 = v34;
  v44 = v104;
  v42(v34, v104);
  v45 = *(v107 + 8);
  v107 += 8;
  v68 = v45;
  v46 = v75;
  v45(v40, v75);
  sub_1000F00E0(&v117);
  sub_10000CD74(&v120);
  v47 = v39;
  v48 = v39[29];
  v49 = v47[30];
  v50 = sub_10000CF78(v47 + 26, v48);
  v121 = v48;
  v122 = *(v49 + 8);
  v51 = sub_10000DB7C(&v120);
  (*(*(v48 - 8) + 16))(v51, v50, v48);
  v84(v40, v82, v46);
  v80(v43, v81, v44);
  v119 = &protocol witness table for Double;
  v118 = &type metadata for Double;
  v117 = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = v76;
  sub_10076539C();
  v114 = v52;
  v53 = v105;
  sub_1007712CC();
  v54 = v103;
  sub_1007653FC();
  v71(v37, v53);
  v70(v43, v44);
  v68(v40, v46);
  sub_1000F00E0(&v117);
  sub_10000CD74(&v120);
  v55 = v89;
  sub_1007653DC();
  v56 = v90;
  v121 = v90;
  v122 = sub_1005A5658(&unk_10094F2C0, &type metadata accessor for _VerticalFlowLayout);
  v57 = sub_10000DB7C(&v120);
  v58 = v91;
  (*(v91 + 16))(v57, v55, v56);
  sub_10000A570((v54 + 21), &v117);
  v59 = v54[5];
  v115 = &type metadata for CGFloat;
  v116 = &protocol witness table for CGFloat;
  v114 = v59;
  v60 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v61 = *(v93 + 104);
  v62 = v95;
  v61(v92, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v95);
  v113 = 0;
  v112 = 0u;
  v111 = 0u;
  v110[3] = sub_10076D67C();
  v110[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v110);
  sub_10076D66C();
  v61(v96, v60, v62);
  v63 = v94;
  sub_10076DE1C();
  v64 = v99;
  sub_10076DE0C();
  (*(v100 + 8))(v64, v101);
  sub_10076D1BC();
  (*(v97 + 8))(v63, v98);
  return (*(v58 + 8))(v55, v56);
}

void SmallGameCenterPlayerLayout.Metrics.avatarInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t SmallGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 48);

  return sub_10003F19C(a1, v1 + 48);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 88);

  return sub_10003F19C(a1, v1 + 88);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 128);

  return sub_10003F19C(a1, v1 + 128);
}

double SmallGameCenterPlayerLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1005D14C8(a1, v2, a2);
}

double sub_1005D14C8(uint64_t a1, void *a2, double a3)
{
  v73 = a1;
  v75 = sub_10077164C();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1007653CC();
  v79 = *(v77 - 8);
  v6 = v79;
  __chkstk_darwin(v77);
  v66 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1007653EC();
  v80 = *(v76 - 8);
  __chkstk_darwin(v76);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10076540C();
  v78 = *(v55 - 8);
  v9 = v78;
  __chkstk_darwin(v55);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  v70 = sub_10076543C();
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_10094F2A8);
  v13 = *(sub_10076541C() - 8);
  v67 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v68 = v15;
  *(v15 + 16) = xmmword_100784500;
  v48 = v15 + v14;
  v16 = a2[34];
  v17 = a2[35];
  v18 = sub_10000CF78(a2 + 31, v16);
  v86 = v16;
  v87 = *(v17 + 8);
  v19 = sub_10000DB7C(v85);
  (*(*(v16 - 8) + 16))(v19, v18, v16);
  v63 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v20 = *(v9 + 104);
  v64 = v9 + 104;
  v65 = v20;
  v20(v11);
  v62 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v21 = *(v80 + 104);
  v60 = v80 + 104;
  v61 = v21;
  v22 = v59;
  v23 = v76;
  v21(v59);
  v83 = &type metadata for Double;
  v84 = &protocol witness table for Double;
  v82 = 0;
  v58 = sub_10000A5D4(&unk_100959500);
  v57 = *(v6 + 72);
  v24 = v79;
  v51 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v25 = swift_allocObject();
  v56 = xmmword_100783DD0;
  *(v25 + 16) = xmmword_100783DD0;
  sub_10076539C();
  v81 = v25;
  v53 = sub_1005A5658(&qword_10094F2B0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v52 = sub_10000A5D4(&qword_100959510);
  v54 = sub_1004ACA24();
  v26 = v66;
  v27 = v77;
  sub_1007712CC();
  v28 = v47;
  v29 = v22;
  sub_1007653FC();
  v30 = *(v24 + 8);
  v79 = v24 + 8;
  v50 = v30;
  v31 = v26;
  v30(v26, v27);
  v32 = *(v80 + 8);
  v80 += 8;
  v49 = v32;
  v32(v29, v23);
  v46 = *(v78 + 8);
  v78 += 8;
  v33 = v28;
  v34 = v55;
  v46(v28, v55);
  sub_1000F00E0(&v82);
  sub_10000CD74(v85);
  v36 = a2[29];
  v35 = a2[30];
  v37 = sub_10000CF78(a2 + 26, v36);
  v86 = v36;
  v87 = *(v35 + 8);
  v38 = sub_10000DB7C(v85);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  v65(v33, v63, v34);
  v39 = v76;
  v61(v29, v62, v76);
  v84 = &protocol witness table for Double;
  v83 = &type metadata for Double;
  v82 = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = v56;
  sub_10076539C();
  v81 = v40;
  v41 = v77;
  sub_1007712CC();
  sub_1007653FC();
  v50(v31, v41);
  v49(v29, v39);
  v46(v33, v34);
  sub_1000F00E0(&v82);
  sub_10000CD74(v85);
  v42 = v69;
  sub_1007653DC();
  sub_1005A5658(&unk_10095E430, &type metadata accessor for _VerticalFlowLayout);
  v43 = v70;
  sub_10076D2AC();
  sub_10000CF78(a2 + 16, a2[19]);
  v44 = v72;
  sub_1000FF02C();
  sub_10076D40C();
  (*(v74 + 8))(v44, v75);
  (*(v71 + 8))(v42, v43);
  return a3;
}

uint64_t sub_1005D1E8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005D1ED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005D1F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005D1FB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005D20A8()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100764C6C();
  sub_10000DB18(v4, qword_1009A23F8);
  v24 = sub_10000A61C(v4, qword_1009A23F8);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D9AC();
  v6 = sub_10000A61C(v5, qword_1009A2350);
  v31[3] = v5;
  v31[4] = &protocol witness table for StaticDimension;
  v7 = sub_10000DB7C(v31);
  v21 = *(*(v5 - 8) + 16);
  v21(v7, v6, v5);
  *v3 = UIFontTextStyleBody;
  v8 = v1[13];
  v23 = enum case for FontSource.textStyle(_:);
  v22 = v8;
  v8(v3);
  v30[3] = v5;
  v30[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v30);
  v28 = v0;
  v29 = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(v27);
  v20 = v1[2];
  v20(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  sub_10076D9BC();
  v19 = v1[1];
  v19(v3, v0);
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v5, qword_1009A2380);
  v28 = v5;
  v29 = &protocol witness table for StaticDimension;
  v12 = sub_10000DB7C(v27);
  v21(v12, v11, v5);
  *v3 = v10;
  v13 = v23;
  v14 = v22;
  v22(v3, v23, v0);
  v26[3] = v5;
  v26[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v26);
  v25[3] = v0;
  v25[4] = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v25);
  v20(v15, v3, v0);
  v16 = v10;
  sub_10076D9BC();
  v19(v3, v0);
  *v3 = v16;
  v14(v3, v13, v0);
  v17 = v16;
  return sub_100764C4C();
}

uint64_t sub_1005D2464(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  *v6 = UIFontTextStyleBody;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v12[3] = v3;
  v12[4] = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v12);
  (*(v4 + 16))(v8, v6, v3);
  v9 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

id sub_1005D25DC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v58 = sub_10076C7EC();
  v9 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_10076C38C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v55 = a3;
  v17(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v18 = a1;
  v19 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v14, &v5[v19]);
  swift_endAccess();
  v56 = a2;
  sub_1003DC6B0(a2);
  v20 = [v5 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_10076C70C();
    if (!v22)
    {
      sub_1000325F0();
      v22 = sub_100770D8C();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = *&v5[qword_10099C9F0];
  sub_10076C82C();
  if (v25)
  {
    v26 = sub_10076FF6C();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  sub_10076C80C();
  v27 = sub_10076C7AC();
  v28 = v18;
  v29 = *(v9 + 8);
  v29(v11, v58);
  [v24 setTextColor:v27];

  v30 = UIAccessibilityTraitButton;
  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v31 = *&v5[qword_10099C9F8];
  v32 = v28;
  sub_10076C81C();
  if (v33)
  {
    v34 = sub_10076FF6C();
  }

  else
  {
    v34 = 0;
  }

  [v31 setText:v34];

  sub_10076C80C();
  v35 = sub_10076C79C();
  v29(v11, v58);
  v36 = v32;
  [v31 setTextColor:v35];

  [v31 setAccessibilityTraits:v30];
  v37 = [v5 backgroundView];
  v38 = v56;
  v39 = v55;
  if (v37)
  {
    v40 = v37;
    v41 = sub_10076C70C();
    if (!v41)
    {
      sub_1000325F0();
      v41 = sub_100770D8C();
    }

    v42 = v41;
    [v40 setBackgroundColor:v41];
  }

  v43 = [v5 contentView];
  v44 = [v5 traitCollection];
  if (v38 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v44 layoutDirection];
  sub_1007708DC();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  [v43 setLayoutMargins:{v46, v48, v50, v52}];
  sub_1005D3050(v36, v39, v38, v57);
  return [v5 setNeedsLayout];
}

uint64_t sub_1005D2AD4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v53 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_10076C7EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100766EBC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C77C();
  v15 = sub_100766E7C();
  result = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    result = sub_10076C83C();
    if (result)
    {
      v17 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_10076F63C();
      v52 = v58[0];
      if (v58[0])
      {
        v50 = a3;
        v51 = &v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind];
        v18 = v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind + 8];
        sub_100762DEC();
        if ((v18 & 1) != 0 || (v19 = sub_100762DDC(), v19 != sub_100762DDC()))
        {
          v47 = v7;
          v49 = v8;
          v45 = v17;
          v20 = sub_100762DEC();
          v21 = sub_1006BD024(v20);
          v23 = v22;
          v44 = &v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay];
          v24 = *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer];
          v43[1] = *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay];
          swift_unknownObjectRetain();
          sub_1005B9F80();
          v25 = swift_getObjectType();
          v26 = *(v23 + 16);
          swift_unknownObjectRetain();
          v48 = v21;
          v46 = v23;
          v27 = v26(v25, v23);
          v28 = OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView;
          v29 = *&v24[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView];
          *&v24[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView] = v27;
          v30 = v27;

          [v30 setAnchorPoint:{0.0, 1.0}];
          v31 = *&v24[v28];
          if (v31)
          {
            v58[0] = 0x3FF0000000000000;
            v58[1] = 0;
            v58[2] = 0;
            v59 = 0x3FF0000000000000;
            v60 = 0;
            v61 = 0;
            [v31 setTransform:v58];
          }

          [v24 addSubview:v30];
          [v30 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
          v57.receiver = v5;
          v57.super_class = ObjectType;
          objc_msgSendSuper2(&v57, "_continuousCornerRadius");
          [v30 _setContinuousCornerRadius:?];
          v32 = [v30 layer];
          if (v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] == 6)
          {
            v33 = [v5 traitCollection];
            v34 = sub_10077071C();

            if (v34)
            {
              v35 = 12;
            }

            else
            {
              v35 = 15;
            }
          }

          else
          {
            v35 = 12;
          }

          v17 = v45;
          [v32 setMaskedCorners:v35];
          v36 = v48;
          swift_unknownObjectRelease();

          [v5 setNeedsLayout];
          swift_unknownObjectRelease();
          v37 = sub_100762DEC();
          v38 = v51;
          *v51 = v37;
          *(v38 + 8) = 0;
          v39 = v44;
          v40 = v46;
          *v44 = v36;
          v39[1] = v40;
          swift_unknownObjectRelease();
          v8 = v49;
          v7 = v47;
        }

        swift_weakAssign();
        if (*&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay])
        {
          v41 = *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay + 8];
          ObjectType = swift_getObjectType();
          v59 = sub_100762DFC();
          v60 = sub_10003BD0C();
          v58[0] = v17;
          swift_unknownObjectRetain();

          sub_10076C80C();
          sub_100760C4C();
          sub_10076F64C();
          v42 = v55;
          sub_10076FC1C();
          (*(v41 + 112))(v58, v42, v53, v10, v50, v56, ObjectType, v41);
          swift_unknownObjectRelease();

          (*(v8 + 8))(v10, v7);
          sub_10000CD74(v58);
        }

        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t sub_1005D3050(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v55 = a3;
  v54 = a2;
  v6 = sub_10076C7EC();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100766EBC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C77C();
  v13 = sub_100766E7C();
  result = (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    result = sub_10076C83C();
    if (result)
    {
      v15 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_10076F63C();
      v16 = v59[0];
      if (v59[0])
      {
        v50 = &v5[qword_10099CA00];
        v17 = v5[qword_10099CA00 + 8];
        sub_100762DEC();
        v53 = v16;
        if ((v17 & 1) != 0 || (v18 = sub_100762DDC(), v18 != sub_100762DDC()))
        {
          v49 = v6;
          v19 = sub_100762DEC();
          v20 = sub_1006BD024(v19);
          v47 = v21;
          v48 = v20;
          v51 = &v5[qword_10099CA08];
          v52 = *&v5[qword_10099CA08];
          if (v52)
          {
            v22 = v51[1];
            ObjectType = swift_getObjectType();
            v24 = *(v22 + 16);
            swift_unknownObjectRetain();
            v25 = v24(ObjectType, v22);
            [v25 removeFromSuperview];

            v26 = swift_getObjectType();
            v27 = v24(v26, v22);
            [v27 _setContinuousCornerRadius:0.0];

            v28 = v24(v26, v22);
            v29 = [v28 layer];

            [v29 setMaskedCorners:15];
          }

          v30 = v48;
          v31 = swift_getObjectType();
          v32 = v47;
          v33 = *(v47 + 16);
          swift_unknownObjectRetain();
          v34 = v33(v31, v32);
          v35 = v34;
          v36 = 20.0;
          if (v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
          {
            v36 = 0.0;
          }

          [v34 _setContinuousCornerRadius:v36];
          v37 = [v35 layer];
          [v37 setMaskedCorners:12];

          v38 = [v5 contentView];
          [v38 addSubview:v35];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v39 = sub_100762DEC();
          v41 = v50;
          v40 = v51;
          *v50 = v39;
          *(v41 + 8) = 0;
          *v40 = v30;
          v40[1] = v32;
          swift_unknownObjectRelease();
          v6 = v49;
        }

        swift_weakAssign();
        if (*&v5[qword_10099CA08])
        {
          v42 = *&v5[qword_10099CA08 + 8];
          v43 = swift_getObjectType();
          v44 = v56;
          v52 = v43;
          v59[3] = sub_100762DFC();
          v59[4] = sub_10003BD0C();
          v59[0] = v15;
          swift_unknownObjectRetain();

          sub_10076C80C();
          sub_100760C4C();
          sub_10076F64C();
          v45 = v57;
          sub_10076FC1C();
          (*(v42 + 112))(v59, v45, v54, v8, v55, v58, v52, v42);
          swift_unknownObjectRelease();

          (*(v44 + 8))(v8, v6);
          sub_10000CD74(v59);
        }

        sub_1005D3F1C();
        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t sub_1005D3598(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v56 = a3;
  v55 = a2;
  v6 = sub_10076C7EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100766EBC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C77C();
  v14 = sub_100766E7C();
  result = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    result = sub_10076C83C();
    if (result)
    {
      v16 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_10076F63C();
      v17 = v59[0];
      if (v59[0])
      {
        v51 = &v5[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind];
        v18 = v5[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
        sub_100762DEC();
        v54 = v17;
        if ((v18 & 1) != 0 || (v19 = sub_100762DDC(), v19 != sub_100762DDC()))
        {
          v48 = v6;
          v50 = v7;
          v20 = sub_100762DEC();
          v21 = sub_1006BD024(v20);
          v52 = v22;
          v53 = v21;
          v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay];
          v24 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay];
          if (v24)
          {
            v25 = v23[1];
            ObjectType = swift_getObjectType();
            v27 = *(v25 + 16);
            swift_unknownObjectRetain();
            v28 = v27(ObjectType, v25);
            [v28 removeFromSuperview];
          }

          v47 = v24;
          v49 = v23;
          v29 = swift_getObjectType();
          v30 = v52;
          v31 = *(v52 + 16);
          swift_unknownObjectRetain();
          v32 = v31(v29, v30);
          v33 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
          v34 = OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView;
          v35 = *&v33[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView];
          *&v33[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView] = v32;
          v36 = v32;

          [v36 setAnchorPoint:{0.0, 1.0}];
          v37 = *&v33[v34];
          if (v37)
          {
            v59[0] = 0x3FF0000000000000;
            v59[1] = 0;
            v59[2] = 0;
            v60 = 0x3FF0000000000000;
            v61 = 0;
            v62 = 0;
            [v37 setTransform:v59];
          }

          [v33 addSubview:v36];
          [v36 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
          [v5 _continuousCornerRadius];
          [v36 _setContinuousCornerRadius:?];
          v38 = [v36 layer];
          [v38 setMaskedCorners:12];
          v39 = v53;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v40 = sub_100762DEC();
          v42 = v51;
          v41 = v52;
          *v51 = v40;
          *(v42 + 8) = 0;
          v43 = v49;
          *v49 = v39;
          v43[1] = v41;
          swift_unknownObjectRelease();
          v7 = v50;
          v6 = v48;
        }

        swift_weakAssign();
        if (*&v5[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay])
        {
          v44 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay + 8];
          v45 = v7;
          v53 = swift_getObjectType();
          v60 = sub_100762DFC();
          v61 = sub_10003BD0C();
          v59[0] = v16;
          swift_unknownObjectRetain();

          sub_10076C80C();
          sub_100760C4C();
          sub_10076F64C();
          v46 = v57;
          sub_10076FC1C();
          (*(v44 + 112))(v59, v46, v55, v9, v56, v58, v53, v44);
          swift_unknownObjectRelease();

          (*(v45 + 8))(v9, v6);
          sub_10000CD74(v59);
        }

        sub_1003DC268();
        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

void sub_1005D3AD0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BD64(v10, &v4[v12]);
    swift_endAccess();
    v13 = (*(a2 + 160))(ObjectType, a2);
    v4[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = v13;
    if (v13 == 4)
    {
      v14 = [v4 contentView];
      [v14 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v15 = (*(a2 + 136))(ObjectType, a2);
    sub_1003DC6B0(v15);
  }

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + qword_10099CA08);
    if (v18 && *&v4[qword_10099CA08])
    {
      v19 = *&v4[qword_10099CA08 + 8];
      v46 = *(v16 + qword_10099CA08 + 8);
      v20 = swift_getObjectType();
      v21 = *(v19 + 120);
      v22 = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21(v18, v46, a3 & 1, v20, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = a1;
      if (a3)
      {
LABEL_14:

        return;
      }
    }

    v24 = qword_10099C9F0;
    v25 = *&v4[qword_10099C9F0];
    v26 = [*&v17[qword_10099C9F0] text];
    [v25 setText:v26];

    v27 = [*&v17[v24] textColor];
    [v25 setTextColor:v27];

    v28 = qword_10099C9F8;
    v29 = *&v4[qword_10099C9F8];
    v30 = [*&v17[qword_10099C9F8] text];
    [v29 setText:v30];

    v31 = [*&v17[v28] textColor];
    [v29 setTextColor:v31];

    v32 = [v4 backgroundView];
    if (v32)
    {
      v33 = v32;
      v34 = [v17 backgroundView];
      v35 = [v34 backgroundColor];

      [v33 setBackgroundColor:v35];
    }

    v36 = [v4 contentView];
    v37 = [v17 contentView];
    [v37 layoutMargins];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    [v36 setLayoutMargins:{v39, v41, v43, v45}];
    [v4 setNeedsLayout];
    goto LABEL_14;
  }
}

void sub_1005D3F1C()
{
  sub_1003DC268();
  v1 = [v0 contentView];
  v2 = [*&v0[qword_10099C9F0] text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10076FF9C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v33 = v4;
  v34 = v6;
  v7 = [*&v0[qword_10099C9F8] text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_10076FF9C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v35 = v9;
  v36 = v11;
  if (*&v0[qword_10099CA08])
  {
    v12 = *&v0[qword_10099CA08 + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v15 = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    v16 = [v15 accessibilityLabel];

    if (v16)
    {
      v17 = sub_10076FF9C();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v37 = v17;
    v38 = v19;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
LABEL_14:
  if (v20 <= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 + 1;
  v24 = 16 * v20 + 40;
  while (1)
  {
    if (v20 == 3)
    {
      sub_10000A5D4(&unk_100943470);
      swift_arrayDestroy();
      sub_10000A5D4(&unk_10094BB60);
      sub_10003BCA8();
      sub_10076FEFC();

      v31 = sub_10076FF6C();

      [v1 setAccessibilityLabel:v31];

      return;
    }

    if (v23 == ++v20)
    {
      break;
    }

    v25 = v24 + 16;
    v26 = *&v32[v24];
    v24 += 16;
    if (v26)
    {
      v27 = *&v32[v25 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10049D954(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_10049D954((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[16 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *sub_1005D4230(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  *&v5[qword_1009A2428] = 0;
  *&v5[qword_1009A2430] = 0;
  v14 = qword_1009A2438;
  *&v5[v14] = [objc_allocWithZone(type metadata accessor for ArtworkGrid()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for PaletteBackgroundView();
  *&v5[qword_1009A2440] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v16 = qword_10099C9F8;
  v17 = *&v15[qword_10099C9F8];
  v18 = v15;
  [v17 setNumberOfLines:2];
  v19 = qword_100940F00;
  v20 = *&v15[v16];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A1AF8);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v13, v22, v21);
  (*(v23 + 56))(v13, 0, 1, v21);
  sub_1007625DC();

  v24 = qword_1009A2438;
  [*&v18[qword_1009A2438] setClipsToBounds:1];
  [*&v18[v24] _setContinuousCornerRadius:20.0];
  v25 = *&v18[v24];
  v26 = [v18 backgroundView];
  [v26 addSubview:v25];

  v27 = qword_1009A2440;
  [*&v18[qword_1009A2440] _setCornerRadius:1 continuous:3 maskedCorners:20.0];
  v28 = *&v18[v27];
  v29 = [v18 backgroundView];
  [v29 addSubview:v28];

  return v18;
}

id sub_1005D4568()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = [v0 backgroundView];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v22.receiver = *&v1[qword_1009A2438];
    receiver = v22.receiver;
    v22.super_class = type metadata accessor for ArtworkGrid();
    objc_msgSendSuper2(&v22, "setFrame:", v7, v9, v11, v13);
    sub_10070ED18();
    [receiver setNeedsLayout];
    [receiver layoutIfNeeded];
  }

  v15 = *&v1[qword_1009A2440];
  [v1 bounds];
  CGRectGetWidth(v23);
  [*&v1[qword_10099C9F8] frame];
  CGRectGetMaxY(v24);
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D9AC();
  sub_10000A61C(v16, qword_1009A2368);
  v17 = [v1 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007841E0;
  *(v18 + 32) = v17;
  v19 = v17;
  v20 = sub_10076DEEC();
  sub_10076D3EC();

  [v15 frame];
  [v15 setFrame:?];
  [v15 layoutIfNeeded];
  return [v2 setAnimationsEnabled:v3];
}

void sub_1005D4800(void *a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  sub_1005D3AD0(a1, a2, a3 & 1);
  v7 = swift_dynamicCastClass();
  if (v7 && (a3 & 1) == 0)
  {
    v8 = v7;
    v9 = qword_1009A2438;
    v10 = *(v7 + qword_1009A2438);
    v11 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages);
    v12 = *(v3 + qword_1009A2438);
    v12[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType] = *(v10 + OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType);
    v19 = a1;
    sub_10070ED18();
    [v12 setNeedsLayout];
    *&v12[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = v11;
    sub_10070EEE8();
    if (v11 < 0)
    {
LABEL_16:
      __break(1u);
      return;
    }

    if (v11)
    {
      v13 = 0;
      while (1)
      {
        v14 = *(v8 + v9);
        v15 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkImages;
        swift_beginAccess();
        v16 = *(v14 + v15);
        if (v13 >= *(v16 + 16))
        {
          break;
        }

        v17 = *(v16 + 8 * v13 + 32);
        if (v17)
        {
          v18 = v17;
          sub_10070E848(v18, v13);
        }

        if (v11 == ++v13)
        {

          return;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }
}

uint64_t sub_1005D4990(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100761D4C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005D25DC(a1, a2, a3, a4);
  sub_10076C7FC();
  sub_1007646CC();
  if (!swift_dynamicCastClass())
  {
  }

  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v14 = *(v5 + qword_1009A2438);
  v27[2] = *&v31[0];
  v28 = v14;
  sub_1007646AC();
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for ArtworkGridType.small(_:))
  {
    goto LABEL_3;
  }

  if (v15 == enum case for ArtworkGridType.large(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ArtworkGridType.extraLarge(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ArtworkGridType.mixed(_:))
    {
LABEL_28:
      v26 = *(v11 + 8);
      v11 += 8;
      v26(v13, v10);
LABEL_3:
      v16 = 0;
      goto LABEL_13;
    }

    v16 = 3;
  }

LABEL_13:
  v27[1] = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType;
  v18 = v28;
  v28[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType] = v16;
  sub_10070ED18();
  [v18 setNeedsLayout];
  v19 = sub_1007646BC();
  if (v19 >> 62)
  {
    goto LABEL_30;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:

  *&v28[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = v20;
  sub_10070EEE8();
  v21 = sub_1007646BC();
  v22 = v21;
  if (v21 >> 62)
  {
    v10 = sub_10077158C();
    if (v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_17:
      v13 = 0;
      v29 = v22 & 0xFFFFFFFFFFFFFF8;
      v30 = v22 & 0xC000000000000001;
      v27[0] = v10;
      do
      {
        if (v30)
        {
          sub_10077149C();
          v23 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          if (v13 >= *(v29 + 16))
          {
            __break(1u);
LABEL_30:
            v20 = sub_10077158C();
            goto LABEL_15;
          }

          v23 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_27;
          }
        }

        if (sub_10076BB9C())
        {
          v24 = v28;
          sub_10076BFCC();
          v32 = 0;
          memset(v31, 0, sizeof(v31));
          v11 = swift_allocObject();
          *(v11 + 16) = v24;
          *(v11 + 24) = v13;
          v25 = v24;
          sub_100760B7C();

          v10 = v27[0];

          sub_10002CBB4(v31);
        }

        else
        {
        }

        ++v13;
      }

      while (v23 != v10);
    }
  }
}

void sub_1005D4DF4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_10070E9C8();
}

void sub_1005D4E54()
{
  sub_1005D5088();
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v2 = *(v0 + qword_1009A2438);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 20.0;
  }

  [*(v0 + qword_1009A2438) _setContinuousCornerRadius:v3];
  [*(v0 + qword_1009A2440) _setCornerRadius:1 continuous:3 maskedCorners:v3];
  v4 = *(v0 + v1);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_isLazyLayoutEnabled);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_isLazyLayoutEnabled) = v4 ^ 1;
  if (v4 == v5)
  {
    sub_10070F8E4();
  }
}

void sub_1005D4F14()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + qword_1009A2440);
}

void sub_1005D4F74(uint64_t a1)
{
  swift_unknownObjectRelease();

  v2 = *(a1 + qword_1009A2440);
}

uint64_t type metadata accessor for GridTodayCardCollectionViewCell()
{
  result = qword_10095F768;
  if (!qword_10095F768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005D5088()
{
  sub_1003DFB08();
  v1 = (v0 + qword_10099CA08);
  if (*(v0 + qword_10099CA08))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded);
    v5 = *(v2 + 32);
    swift_unknownObjectRetain();
    v5(v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (*v1)
  {
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 20.0;
    }

    v7 = v1[1];
    v8 = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, v7);
    swift_unknownObjectRelease();
    [v10 _setContinuousCornerRadius:v6];
  }
}

uint64_t sub_1005D51F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1005D522C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = sub_10077158C();
    if (v14)
    {
      v15 = v14;
      v1 = sub_1004A01D4(v14, 0);
      sub_1000FAD64(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_10077158C();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = sub_10077149C();
          v10 = sub_10077149C();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1004BE250(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_1004BE250(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

unint64_t sub_1005D5440(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_10077158C();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1004A01D4(v19, 0);
      sub_1000FBBD0(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_10077158C();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = sub_10077149C();
          v11 = sub_10077149C();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1004BE250(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1004BE250(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_1005D5650(size_t a1)
{
  v2 = sub_1007630EC();
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v29 = v23 - v8;
  v9 = *(a1 + 16);
  if (v9 < 2)
  {
    return;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v6;
  v23[1] = v6 + 16;
  v26 = (v6 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_5;
    }

    v13 = *(a1 + 16);
    if (v10 >= v13)
    {
      break;
    }

    v14 = v4;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = a1 + v28;
    v16 = *(v6 + 72);
    v17 = a1;
    v18 = *(v6 + 16);
    v27 = v16 * v10;
    v18(v29, v15 + v16 * v10, v2, v7);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = v15 + v16 * v12;
    v4 = v14;
    (v18)(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1004BDB9C(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    (*v26)(a1 + v28 + v27, v4, v2);
    if (v12 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    v22(v21 + v19, v29, v2);
    v11 = v24;
    v6 = v25;
LABEL_5:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

id sub_1005D587C()
{
  v1 = sub_100767B7C();
  if (v1 == sub_100767B7C())
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility);
  }

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView) setHidden:v2];
  if (sub_100766B6C())
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton);
    v4 = 1;
  }

  else
  {
    v5 = sub_100767B7C();
    v6 = sub_100767B7C();
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton);
    if (v5 == v6)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1);
    }
  }

  return [v3 setHidden:v4];
}

char *sub_1005D5974(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView();
  *&v5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_animationVerticalOffset] = 0x4010000000000000;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_navigationBarMode] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButtonMode] = 0;
  v11 = &v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapGestureRecognizer;
  *&v5[v12] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility] = 0;
  v13 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton] = sub_1001E89B8(1);
  v32.receiver = v5;
  v32.super_class = type metadata accessor for ProductTitleView();
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor:v17];

  [v16 setHeightShouldBeIncreasedByTabBarHeight:1];
  v18 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapGestureRecognizer;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapGestureRecognizer] setEnabled:0];
  v19 = *&v16[v18];
  [v19 addTarget:v16 action:"didTapIcon:"];

  v20 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView] addGestureRecognizer:*&v16[v18]];
  [*&v16[v20] setHidden:1];
  v21 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton] setHidden:1];
  [v16 addSubview:*&v16[v20]];
  [v16 addSubview:*&v16[v21]];
  [*&v16[v21] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [*(*&v16[v21] + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView) setContentMode:1];
  [*&v16[v21] setShowsLargeContentViewer:1];
  v22 = *&v16[v21];
  v23 = objc_allocWithZone(UILargeContentViewerInteraction);
  v24 = v22;
  v25 = [v23 init];
  [v24 addInteraction:v25];

  v26 = [v16 traitCollection];
  LOBYTE(v24) = sub_1007706EC();

  if (v24)
  {
    v27 = 16.0;
  }

  else
  {
    v27 = 20.0;
  }

  [v16 layoutMargins];
  v29 = v28;
  [v16 layoutMargins];
  [v16 setLayoutMargins:{v29, v27}];
  sub_10000A5D4(&unk_100945BF0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100783DD0;
  *(v30 + 32) = sub_10076E59C();
  *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v16;
}

double sub_1005D5DB8(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_1007706EC();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, sub_1007709AC(), v7, (v18 & 1) == 0))
  {
    if (CGRectGetMinY(v17) <= 50.0)
    {
      y = v17.origin.y;
    }

    else
    {
      y = 0.0;
    }

    x = v17.origin.x;
    width = v17.size.width;
    height = v17.size.height;
    MidY = CGRectGetMidY(*(&y - 1));
  }

  else
  {
    [v2 bounds];
    MinY = CGRectGetMinY(v19);
    [v2 bounds];
    v9 = CGRectGetHeight(v20);
    [v2 floatingTabBarHeight];
    MidY = MinY + (v9 - v10) * 0.5;
  }

  return MidY + a1 * -0.5;
}

double sub_1005D5F00(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_1007706EC();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, sub_1007709AC(), v7, (v20 & 1) == 0))
  {
    if (CGRectGetMinY(v19) <= 50.0)
    {
      y = v19.origin.y;
    }

    else
    {
      y = 0.0;
    }

    x = v19.origin.x;
    width = v19.size.width;
    height = v19.size.height;
    MidY = CGRectGetMidY(*(&y - 1));
  }

  else
  {
    [v2 bounds];
    MinY = CGRectGetMinY(v21);
    [v2 bounds];
    v9 = CGRectGetHeight(v22);
    [v2 floatingTabBarHeight];
    v11 = MinY + (v9 - v10) * 0.5;
    [v2 floatingTabBarHeight];
    MidY = v12 + v11;
  }

  return MidY + a1 * -0.5;
}

uint64_t sub_1005D6058()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v6 - 8);
  v8 = v101 - v7;
  *&v9 = COERCE_DOUBLE(type metadata accessor for ProductTitleView());
  v115.receiver = v0;
  v115.super_class = v9;
  objc_msgSendSuper2(&v115, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton];
  sub_10076422C();
  v11 = &v10[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  v12 = v10[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16];
  v106 = v10;
  v101[0] = v5;
  v107 = v8;
  if (v12)
  {
    v13 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v10[v13], v114);
    sub_10000CF78(v114, v114[3]);
    sub_100767A2C();
    v15 = v14;
    v17 = v16;
    sub_10000CD74(v114);
    *v11 = v15;
    v11[1] = v17;
    *(v11 + 16) = 0;
  }

  else
  {
    v17 = v11[1];
  }

  sub_10076422C();
  CGRectGetMaxX(v116);
  sub_1005D5DB8(v17);
  sub_10076422C();
  sub_100770A4C();
  sub_1007708CC();
  v105 = v18;
  v104 = v19;
  v103 = v20;
  v102 = v21;
  sub_100770A7C();
  MaxX = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v1 traitCollection];
  v31 = sub_10077070C();

  v32 = [v1 contentOverlayRects];
  v101[1] = sub_1005D8590();
  v33 = sub_1007701BC();

  if ((v31 & 1) == 0)
  {
    v33 = sub_1005D5440(v33);
  }

  v108 = v3;
  v109 = v2;
  MidX = *&v9;
  if (v33 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v35 = 0;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v38 = sub_10077149C();
      }

      else
      {
        if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v38 = *(v33 + 8 * v35 + 32);
      }

      v39 = v38;
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v38 CGRectValue];
      x = v118.origin.x;
      y = v118.origin.y;
      width = v118.size.width;
      height = v118.size.height;
      v125.origin.x = MaxX;
      v125.origin.y = v25;
      v125.size.width = v27;
      v125.size.height = v29;
      if (!CGRectIntersectsRect(v118, v125))
      {

        goto LABEL_20;
      }

      v45 = [v1 traitCollection];
      v46 = sub_10077070C();

      v47 = x;
      v48 = y;
      v49 = width;
      v50 = height;
      if (v46)
      {
        MaxX = CGRectGetMaxX(*&v47);
      }

      else
      {
        MinX = CGRectGetMinX(*&v47);
        v117.origin.x = MaxX;
        v117.origin.y = v25;
        v117.size.width = v27;
        v117.size.height = v29;
        v37 = CGRectGetWidth(v117);

        MaxX = MinX - v37;
      }

      ++v35;
      if (v40 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_20:

  v119.origin.x = MaxX;
  v119.origin.y = v25;
  v119.size.width = v27;
  v119.size.height = v29;
  v51 = CGRectGetMinX(v119);
  sub_10076422C();
  v52 = CGRectGetMinX(v120);
  v53 = 0.0;
  v54 = v109;
  v55 = v108;
  if (v52 <= v51 && (v121.origin.x = MaxX, v121.origin.y = v25, v121.size.width = v27, v121.size.height = v29, v56 = CGRectGetMaxX(v121), sub_10076422C(), v56 <= CGRectGetMaxX(v122)))
  {
    sub_100770A3C();
    v105 = v58;
    v104 = v59;
    v103 = v60;
    v102 = v61;
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v105 = 0.0;
    v104 = 0.0;
    v103 = 0.0;
    v102 = 0.0;
  }

  v1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1] = v57;
  sub_1005D587C();
  v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView];
  v62 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
  swift_beginAccess();
  v63 = v107;
  sub_1003911F0(v33 + v62, v107);
  v64 = *(v55 + 48);
  v65 = v64(v63, 1, v54);
  sub_10023DEE4(v63);
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  if (v65 != 1)
  {
    sub_10076422C();
    v70 = v69;
    if (v64(v33 + v62, 1, v54))
    {
      v68 = 40.0;
    }

    else
    {
      v71 = v101[0];
      (*(v55 + 16))(v101[0], v33 + v62, v54);
      sub_10076D36C();
      v68 = v72;
      (*(v55 + 8))(v71, v54);
    }

    v73 = *(v33 + OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView);
    [v73 sizeThatFits:{1.79769313e308, 1.79769313e308, v101[0]}];
    v75 = v74;
    v77 = v76;
    v78 = [v73 isHidden];
    v79 = v75 + 50.0;
    if (v78)
    {
      v79 = 40.0;
    }

    if (v79 >= v70)
    {
      v67 = v70;
    }

    else
    {
      v67 = v79;
    }

    if (v68 <= v77)
    {
      v68 = v77;
    }

    sub_10076422C();
    MidX = CGRectGetMidX(v123);
    v66 = sub_1005D5F00(v68);
    v80 = [v1 contentOverlayRects];
    v81 = sub_1007701BC();

    v111 = v81;
    v82 = &v1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility];
    if ((v1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1] & 1) == 0)
    {
      sub_10000A5D4(&unk_100942870);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007841E0;
      *(inited + 32) = [objc_opt_self() valueWithCGRect:{MaxX, v25, v27, v29}];
      sub_1000F99F4(inited);
      v81 = v111;
    }

    v53 = MidX + v67 * -0.5;
    if (v81 >> 62)
    {
      v84 = sub_10077158C();
    }

    else
    {
      v84 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = 0;
    do
    {
      v86 = v85;
      if (v84 == v85)
      {
        break;
      }

      if ((v81 & 0xC000000000000001) != 0)
      {
        v87 = sub_10077149C();
      }

      else
      {
        if (v85 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v87 = *(v81 + 8 * v85 + 32);
      }

      v88 = v87;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_52;
      }

      [v87 CGRectValue];
      v126.origin.x = v53;
      v126.origin.y = v66;
      v126.size.width = v67;
      v126.size.height = v68;
      v89 = CGRectIntersectsRect(v124, v126);

      v85 = v86 + 1;
    }

    while (!v89);

    *v82 = v84 != v86;
    sub_1005D587C();
  }

  [v33 setFrame:{v53, v66, v67, v68, v101[0]}];
  v90 = type metadata accessor for OfferButton();
  v91 = v106;
  v113.receiver = v106;
  v113.super_class = v90;
  objc_msgSendSuper2(&v113, "frame");
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v112.receiver = v91;
  v112.super_class = v90;
  objc_msgSendSuper2(&v112, "setFrame:", v105, v104, v103, v102);
  return sub_1001E8144(v93, v95, v97, v99);
}

id sub_1005D69BC()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_10076D36C();
    (*(v3 + 8))(v5, v2);
  }

  v7 = *(v1 + OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView);
  [v7 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  return [v7 isHidden];
}

void sub_1005D6BC8(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_navigationBarMode] = a1;
  v12 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView];
  if ([v12 isHidden] && (v13 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton], objc_msgSend(*&v6[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton], "isHidden")) && (v14 = sub_100767B7C(), v14 == sub_100767B7C()))
  {
    v55.receiver = v13;
    v55.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v55, "frame");
    if (CGRectIsEmpty(v66) || ([v12 frame], CGRectIsEmpty(v67)))
    {
      [v6 setNeedsLayout];
    }
  }

  else
  {
    v53 = a5;
    v54 = a4;
    [v12 frame];
    Height = CGRectGetHeight(v68);
    v16 = sub_1005D5F00(Height);
    v17 = *&v6[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton];
    v18 = type metadata accessor for OfferButton();
    v65.receiver = v17;
    v65.super_class = v18;
    objc_msgSendSuper2(&v65, "frame");
    v19 = CGRectGetHeight(v69);
    v20 = sub_1005D5DB8(v19);
    if (a1 == 1)
    {
      v21 = v20 + 4.0;
    }

    else
    {
      v21 = v20;
    }

    if (a1 == 1)
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 + 4.0;
    }

    if (a1 == 1)
    {
      v23 = v16 + 4.0;
    }

    else
    {
      v23 = v16;
    }

    if (a1 == 1)
    {
      v24 = 0.0;
    }

    else
    {
      v16 = v16 + 4.0;
      v24 = 1.0;
    }

    if (a1 == 1)
    {
      v25 = 1.0;
    }

    else
    {
      v25 = 0.0;
    }

    v26 = swift_allocObject();
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = v23;
    v26[5] = v16;
    v26[6] = v21;
    v26[7] = v22;
    v27 = swift_allocObject();
    *(v27 + 16) = a1 != 1;
    if (a3)
    {
      v28 = a1 != 1;
      v29 = v6;
      [v12 setAlpha:v25];
      [v17 setAlpha:v25];
      v30 = v12;
      [v30 frame];
      [v30 setFrame:?];

      v64.receiver = v17;
      v64.super_class = v18;
      v31 = v17;
      objc_msgSendSuper2(&v64, "frame");
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v63.receiver = v31;
      v63.super_class = v18;
      objc_msgSendSuper2(&v63, "frame");
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v62.receiver = v31;
      v62.super_class = v18;
      objc_msgSendSuper2(&v62, "setFrame:", v33, v22, v35, v37);
      sub_1001E8144(v39, v41, v43, v45);

      sub_1005D7240(v6, v28);
      if (v54)
      {
        v54();
      }
    }

    else
    {
      sub_1005D7FB4(v6, v24, v23, v21);
      v46 = objc_opt_self();
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      v48[2] = sub_1005D846C;
      v48[3] = v26;
      v48[4] = v47;
      v60 = sub_1005D850C;
      v61 = v48;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_10009AEDC;
      v59 = &unk_10089BDD0;
      v49 = _Block_copy(&aBlock);

      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      v51[2] = sub_1005D848C;
      v51[3] = v27;
      v51[4] = v50;
      v51[5] = v54;
      v51[6] = v53;
      v60 = sub_1005D8580;
      v61 = v51;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1000513F0;
      v59 = &unk_10089BE20;
      v52 = _Block_copy(&aBlock);

      sub_10001CE50(v54);

      [v46 animateWithDuration:v49 animations:v52 completion:*&a2];

      _Block_release(v52);
      _Block_release(v49);
    }
  }
}

void sub_1005D70D4(char *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView];
    v10 = a1;
    [v9 setAlpha:a3];
    v11 = *&v10[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton];
    [v11 setAlpha:a3];
    v12 = v9;
    [v12 frame];
    [v12 setFrame:?];

    v13 = type metadata accessor for OfferButton();
    v31.receiver = v11;
    v31.super_class = v13;
    v14 = v11;
    objc_msgSendSuper2(&v31, "frame");
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v30.receiver = v14;
    v30.super_class = v13;
    objc_msgSendSuper2(&v30, "frame");
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29.receiver = v14;
    v29.super_class = v13;
    objc_msgSendSuper2(&v29, "setFrame:", v16, a7, v18, v20);
    sub_1001E8144(v22, v24, v26, v28);
  }
}

void sub_1005D7240(char *a1, char a2)
{
  if (a1)
  {
    v3 = *&a1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView];
    v4 = a1;
    [v3 frame];
    IsEmpty = CGRectIsEmpty(v12);
    v6 = 1;
    if (!IsEmpty && (a2 & 1) == 0)
    {
      v6 = v4[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility];
    }

    [v3 setHidden:v6];
    v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton];
    v11.receiver = v7;
    v11.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v11, "frame");
    v8 = CGRectIsEmpty(v13);
    v9 = 1;
    if (!v8 && (a2 & 1) == 0)
    {
      if ((sub_100766B6C() & 1) != 0 || (v10 = sub_100767B7C(), v10 == sub_100767B7C()))
      {
        v9 = 1;
      }

      else
      {
        v9 = v4[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1];
      }
    }

    [v7 setHidden:v9];
  }
}

void sub_1005D7364(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}

void sub_1005D73C8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a2();

  if (a5)
  {
    a5();
  }
}

id sub_1005D7450(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView];
  if (a2)
  {

    v7 = sub_10076FF6C();

    [v4 setText:v7];

    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = [v3 traitCollection];
      v10 = sub_1007706EC();

      goto LABEL_8;
    }
  }

  else
  {
    [*&v2[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView] setText:0];
  }

  v10 = 1;
LABEL_8:
  [v4 setHidden:v10 & 1];

  return [v3 setNeedsLayout];
}

char *sub_1005D7648(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconView;
  sub_10075FD2C();
  *&v4[v11] = sub_10075FB3C();
  v12 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView;
  sub_1007626BC();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconWidth] = 0x4044000000000000;
  v13 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
  v14 = sub_10076D39C();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v29.receiver = v5;
  v29.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v20 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView;
  v21 = *&v19[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 _gkPreferredFontForTextStyle:UIFontTextStyleBody symbolicTraits:2];
  [v23 setFont:v24];

  [*&v19[v20] setNumberOfLines:1];
  v25 = *&v19[v20];
  v26 = [v19 traitCollection];

  LOBYTE(v23) = sub_1007706EC();
  [v25 setHidden:v23 & 1];

  [v19 addSubview:*&v19[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconView]];
  [v19 addSubview:*&v19[v20]];
  sub_10000A5D4(&unk_100945BF0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100783DD0;
  *(v27 + 32) = sub_10076E59C();
  *(v27 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v19;
}

id sub_1005D79D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D39C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "layoutSubviews", v5);
  v8 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
  swift_beginAccess();
  if (!(*(v4 + 48))(&v1[v8], 1, v3))
  {
    (*(v4 + 16))(v7, &v1[v8], v3);
    sub_10076D36C();
    (*(v4 + 8))(v7, v3);
  }

  v9 = *&v1[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView];
  if ([v9 isHidden])
  {
    sub_10076422C();
    CGRectGetMidX(v21);
    sub_10076422C();
    CGRectGetMidY(v22);
    return sub_10075FC8C();
  }

  else
  {
    [v9 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v12 = v11;
    v14 = v13;
    sub_10076422C();
    CGRectGetMinX(v23);
    sub_10076422C();
    CGRectGetMidY(v24);
    sub_10075FC8C();
    sub_10075FC7C();
    v15 = CGRectGetMaxX(v25) + 10.0;
    sub_10076422C();
    MidY = CGRectGetMidY(v26);
    sub_10076422C();
    v17 = CGRectGetMaxX(v27) - v15;
    if (v17 >= v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = v17;
    }

    return [v9 setFrame:{v15, MidY - v14 * 0.5, v18, v14}];
  }
}

id sub_1005D7D38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductTitleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductTitleView.IconTitleView()
{
  result = qword_10095FBC0;
  if (!qword_10095FBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005D7E54()
{
  sub_1003B518C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1005D7F04(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_1007706EC();

  if (v3)
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 20.0;
  }

  [a1 layoutMargins];
  v6 = v5;
  [a1 layoutMargins];

  return [a1 setLayoutMargins:{v6, v4}];
}

uint64_t sub_1005D7FB4(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView);
  [v7 frame];
  if (CGRectIsEmpty(v31))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility);
  }

  [v7 setHidden:v8];
  v9 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton);
  v10 = type metadata accessor for OfferButton();
  v30.receiver = v9;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "frame");
  if (CGRectIsEmpty(v32) || (sub_100766B6C() & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1);
  }

  [v9 setHidden:v11];
  [v7 setAlpha:a2];
  [v9 setAlpha:a2];
  [v7 frame];
  [v7 setFrame:?];
  v29.receiver = v9;
  v29.super_class = v10;
  objc_msgSendSuper2(&v29, "frame");
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v28.receiver = v9;
  v28.super_class = v10;
  objc_msgSendSuper2(&v28, "frame");
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27.receiver = v9;
  v27.super_class = v10;
  objc_msgSendSuper2(&v27, "setFrame:", v13, a4, v15, v17);
  return sub_1001E8144(v19, v21, v23, v25);
}

void sub_1005D817C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_animationVerticalOffset) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_navigationBarMode) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButtonMode) = 0;
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_1005D826C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView];
  v3 = [v2 text];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = sub_10076FF9C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [a1 traitCollection];
    v10 = sub_1007706EC();
  }

  else
  {
LABEL_6:
    v10 = 1;
  }

  [v2 setHidden:v10 & 1];

  return [a1 setNeedsLayout];
}

void sub_1005D8358()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconView;
  sub_10075FD2C();
  *(v0 + v2) = sub_10075FB3C();
  v3 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView;
  sub_1007626BC();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconWidth) = 0x4044000000000000;
  v4 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
  v5 = sub_10076D39C();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1005D8494()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005D84CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005D8518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005D8530()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1005D8590()
{
  result = qword_100948C88;
  if (!qword_100948C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100948C88);
  }

  return result;
}

uint64_t sub_1005D85E4()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10095FBD0);
  sub_10000A61C(v4, qword_10095FBD0);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

void sub_1005D8738(void **a1, void **a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_10076FBBC();
  __chkstk_darwin(v6 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076583C();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076FD4C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941238 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v10, qword_10095FBD0);
  (*(v11 + 16))(v13, v14, v10);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100788B20;
  sub_10076F27C();
  v40 = sub_100016F40(0, &unk_10095FCA8);
  aBlock = a1;
  v15 = a1;
  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076F27C();
  if (a2)
  {
    v16 = sub_100016F40(0, &qword_10095FCC0);
    v17 = a2;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v38 = 0;
    v39 = 0;
  }

  aBlock = v17;
  v40 = v16;
  v18 = a2;
  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076FBCC();

  (*(v11 + 8))(v13, v10);
  if (a2)
  {
    v19 = v36;
    v20 = v18;
    sub_10076147C();
    sub_10076FB8C();
    sub_10076582C();
    v21 = sub_10076581C();
    (*(v32 + 8))(v9, v34);
    [v20 setAnonymousMetrics:v21 & 1];
    v22 = v20;
    v23 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v22 bag:sub_10076147C()];

    swift_unknownObjectRelease();
    v24 = [v23 canPresent];
    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v19;
    v26 = v35;
    v25[4] = v23;
    v25[5] = v26;
    v41 = sub_1005DB324;
    v42 = v25;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_1005F04D8;
    v40 = &unk_10089C000;
    v27 = _Block_copy(&aBlock);
    v28 = v22;
    v29 = v19;
    v30 = v23;

    [v24 addFinishBlock:v27];
    _Block_release(v27);
  }
}

id sub_1005D8C5C(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = sub_10076F2EC();
  __chkstk_darwin(v8 - 8);
  if (a1)
  {
    if (qword_100941238 != -1)
    {
      swift_once();
    }

    v9 = sub_10076FD4C();
    sub_10000A61C(v9, qword_10095FBD0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v20._countAndFlagsBits = 0xD000000000000040;
    v20._object = 0x80000001007F0D20;
    sub_10076F2CC(v20);
    v18 = sub_100016F40(0, &qword_10095FCC0);
    v17[0] = a3;
    v10 = a3;
    sub_10076F29C();
    sub_1000258C0(v17);
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    sub_10076F2CC(v21);
    sub_10076F2FC();
    sub_10076FBCC();

    v11 = *(a4 + OBJC_IVAR____TtC20ProductPageExtension27JourneyDrivenOnboardingStep_engagementViewController);
    *(a4 + OBJC_IVAR____TtC20ProductPageExtension27JourneyDrivenOnboardingStep_engagementViewController) = a5;

    return a5;
  }

  else
  {
    if (qword_100941238 != -1)
    {
      swift_once();
    }

    v13 = sub_10076FD4C();
    sub_10000A61C(v13, qword_10095FBD0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v22._object = 0x80000001007F0BD0;
    v22._countAndFlagsBits = 0xD000000000000016;
    sub_10076F2CC(v22);
    v18 = sub_100016F40(0, &unk_10094E0B0);
    v17[0] = a5;
    v14 = a5;
    sub_10076F29C();
    sub_1000258C0(v17);
    v23._countAndFlagsBits = 0xD000000000000018;
    v23._object = 0x80000001007F0CD0;
    sub_10076F2CC(v23);
    v18 = sub_100016F40(0, &qword_10095FCC0);
    v17[0] = a3;
    v15 = a3;
    sub_10076F29C();
    sub_1000258C0(v17);
    v24._countAndFlagsBits = 0xD000000000000023;
    v24._object = 0x80000001007F0CF0;
    sub_10076F2CC(v24);
    sub_10076F2FC();
    sub_10076FBCC();
  }
}

void sub_1005D9084(void **a1, void **a2, void **a3, uint64_t a4, void **a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a7;
  v46 = a5;
  v47 = a6;
  v48 = a4;
  v45 = a2;
  v10 = sub_10076FBBC();
  __chkstk_darwin(v10 - 8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10076583C();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076FD4C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941238 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v13, qword_10095FBD0);
  (*(v14 + 16))(v16, v17, v13);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_10078B310;
  sub_10076F27C();
  v52 = sub_100016F40(0, &unk_10095FCA8);
  aBlock = a1;
  v18 = a1;
  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076F27C();
  v19 = v45;
  if (v45)
  {
    v20 = sub_100016F40(0, &qword_10095FCC0);
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v50 = 0;
    v51 = 0;
  }

  aBlock = v21;
  v52 = v20;
  v37 = v19;
  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076F27C();
  v52 = &type metadata for String;
  aBlock = a3;
  v38 = a3;
  v22 = v48;
  v50 = v48;

  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076F27C();
  v52 = &type metadata for String;
  aBlock = v46;
  v50 = v47;

  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076FBCC();

  (*(v14 + 8))(v16, v13);
  if (v19)
  {
    v23 = v44;
    v24 = v37;
    sub_10076147C();
    sub_10076FB8C();
    v25 = v39;
    sub_10076582C();
    v26 = sub_10076581C();
    (*(v40 + 8))(v25, v42);
    [v24 setAnonymousMetrics:v26 & 1];
    v27 = v24;
    v28 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v27 bag:sub_10076147C()];

    swift_unknownObjectRelease();
    v29 = [v28 canPresent];
    v30 = swift_allocObject();
    v31 = v38;
    v30[2] = v27;
    v30[3] = v31;
    v30[4] = v22;
    v30[5] = v23;
    v32 = v43;
    v30[6] = v28;
    v30[7] = v32;
    v53 = sub_1005DB2BC;
    v54 = v30;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1005F04D8;
    v52 = &unk_10089BF60;
    v33 = _Block_copy(&aBlock);
    v34 = v27;

    v35 = v23;
    v36 = v28;

    [v29 addFinishBlock:v33];
    _Block_release(v33);
  }
}

id sub_1005D9688(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_10076F2EC();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    if (qword_100941238 != -1)
    {
      swift_once();
    }

    v13 = sub_10076FD4C();
    sub_10000A61C(v13, qword_10095FBD0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v25._countAndFlagsBits = 0xD000000000000040;
    v25._object = 0x80000001007F0C40;
    sub_10076F2CC(v25);
    v23 = sub_100016F40(0, &qword_10095FCC0);
    v21 = a3;
    v14 = a3;
    sub_10076F29C();
    sub_1000258C0(&v21);
    v26._object = 0x80000001007F0C90;
    v26._countAndFlagsBits = 0xD000000000000010;
    sub_10076F2CC(v26);
    v23 = &type metadata for String;
    v21 = a4;
    v22 = a5;

    sub_10076F29C();
    sub_1000258C0(&v21);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    sub_10076F2CC(v27);
    sub_10076F2FC();
    sub_10076FBCC();

    v15 = *(a6 + OBJC_IVAR____TtC20ProductPageExtension27JourneyDrivenOnboardingStep_engagementViewController);
    *(a6 + OBJC_IVAR____TtC20ProductPageExtension27JourneyDrivenOnboardingStep_engagementViewController) = a7;

    return a7;
  }

  else
  {
    if (qword_100941238 != -1)
    {
      swift_once();
    }

    v17 = sub_10076FD4C();
    sub_10000A61C(v17, qword_10095FBD0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v28._countAndFlagsBits = 0xD000000000000016;
    v28._object = 0x80000001007F0BD0;
    sub_10076F2CC(v28);
    v23 = sub_100016F40(0, &unk_10094E0B0);
    v21 = a7;
    v18 = a7;
    sub_10076F29C();
    sub_1000258C0(&v21);
    v29._countAndFlagsBits = 0xD000000000000018;
    v29._object = 0x80000001007F0BF0;
    sub_10076F2CC(v29);
    v23 = sub_100016F40(0, &qword_10095FCC0);
    v21 = a3;
    v19 = a3;
    sub_10076F29C();
    sub_1000258C0(&v21);
    v30._countAndFlagsBits = 0x63616C70206E6920;
    v30._object = 0xEF203A746E656D65;
    sub_10076F2CC(v30);
    v23 = &type metadata for String;
    v21 = a4;
    v22 = a5;

    sub_10076F29C();
    sub_1000258C0(&v21);
    v31._countAndFlagsBits = 0xD000000000000025;
    v31._object = 0x80000001007F0C10;
    sub_10076F2CC(v31);
    sub_10076F2FC();
    sub_10076FBCC();
  }
}

uint64_t sub_1005D9C1C(void *a1, void *a2)
{
  v4 = sub_10076FD4C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941238 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v4, qword_10095FBD0);
  (*(v5 + 16))(v7, v8, v4);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100788B20;
  sub_10076F27C();
  v15 = sub_100016F40(0, &unk_10095FCA8);
  v14[0] = a1;
  v9 = a1;
  sub_10076F30C();
  sub_1000258C0(v14);
  sub_10076F27C();
  if (a2)
  {
    v10 = sub_100016F40(0, &qword_10095FCB8);
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v11;
  v15 = v10;
  v12 = a2;
  sub_10076F30C();
  sub_1000258C0(v14);
  sub_10076FBCC();

  return (*(v5 + 8))(v7, v4);
}

void sub_1005D9EF0(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4);
  _Block_release(v10);
}

uint64_t sub_1005D9F94(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  ObjectType = swift_getObjectType();
  v11 = sub_10076F08C();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076F0CC();
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0);
  v27 = sub_10077068C();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = ObjectType;
  v17[4] = v26;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = v18;
  aBlock[4] = sub_1005DA860;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089BE70;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  v21 = a1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005DA88C(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  v22 = v27;
  sub_10077069C();
  _Block_release(v19);

  (*(v29 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v28);
}

uint64_t sub_1005DA2A4(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a3;
  v9 = sub_10076FD4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941238 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v9, qword_10095FBD0);
  (*(v10 + 16))(v12, v13, v9);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_10078B310;
  sub_10076F27C();
  v26 = sub_100016F40(0, &unk_10095FCA8);
  v23 = a1;
  v14 = a1;
  sub_10076F30C();
  sub_1000258C0(&v23);
  sub_10076F27C();
  if (a2)
  {
    v15 = sub_100016F40(0, &qword_10095FCB8);
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v24 = 0;
    v25 = 0;
  }

  v23 = v16;
  v26 = v15;
  v17 = a2;
  sub_10076F30C();
  sub_1000258C0(&v23);
  sub_10076F27C();
  v26 = &type metadata for String;
  v23 = v20;
  v24 = a4;

  sub_10076F30C();
  sub_1000258C0(&v23);
  sub_10076F27C();
  v26 = &type metadata for String;
  v23 = v21;
  v24 = v22;

  sub_10076F30C();
  sub_1000258C0(&v23);
  sub_10076FBCC();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1005DA810()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1005DA874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005DA88C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005DA8D4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10076F08C();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076F0CC();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0);
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  v13[5] = ObjectType;
  aBlock[4] = sub_1005DB2D0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089BFB0;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = v2;
  v17 = a1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005DA88C(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_1005DABC0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a5;
  ObjectType = swift_getObjectType();
  v11 = sub_10076F08C();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076F0CC();
  v31 = *(v14 - 8);
  v32 = v14;
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0);
  v30 = sub_10077068C();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = v29;
  v17[4] = v28;
  v17[5] = a4;
  v17[6] = v18;
  v17[7] = a6;
  v19 = ObjectType;
  v17[8] = v6;
  v17[9] = v19;
  aBlock[4] = sub_1005DB258;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089BF10;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  v22 = v6;
  v23 = a1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005DA88C(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  v24 = v30;
  sub_10077069C();
  _Block_release(v20);

  (*(v33 + 8))(v13, v11);
  return (*(v31 + 8))(v16, v32);
}

uint64_t sub_1005DAED4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10076F08C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076F0CC();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0);
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = ObjectType;
  aBlock[4] = sub_1005DB1F4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089BEC0;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = a1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005DA88C(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_1005DB1B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005DB200()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1005DB26C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1005DB2DC()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_1005DB35C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a4;
  v39 = a2;
  v42 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v5 - 8);
  v37 = &ObjectType - v6;
  v41 = sub_10076B6EC();
  v7 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &ObjectType - v11;
  v13 = sub_10000A5D4(&unk_100946720);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &ObjectType - v18;
  v40 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v20 = *(v14 + 8);
  v20(v19, v13);
  if (v44 && (sub_10077000C(), v22 = v21, , v22))
  {
    v23 = *&v43[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel];
    v24 = sub_10076FF6C();

    [v23 setText:{v24, ObjectType}];

    [v23 setHidden:{0, ObjectType}];
  }

  else
  {
    [*&v43[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel] setHidden:{1, ObjectType}];
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v20(v16, v13);
  sub_10076B6DC();
  sub_1005DD408(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v25 = v41;
  v26 = sub_10077124C();
  v27 = *(v7 + 8);
  v27(v9, v25);
  v27(v12, v25);
  v28 = v43;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v42)
  {
    goto LABEL_11;
  }

  sub_10077000C();
  if (!v29)
  {
    goto LABEL_11;
  }

  if (!v38)
  {

LABEL_11:
    v34 = *&v28[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton];
    [v34 setMenu:0];
    [v34 setShowsMenuAsPrimaryAction:0];
    [v34 setHidden:1];
    return [v28 setNeedsLayout];
  }

  v30 = *&v28[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton];
  v31 = v38;
  v32 = v37;
  sub_1005DBF2C();

  v33 = sub_10077111C();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  sub_10077114C();
  [v30 setMenu:v31];
  [v30 setShowsMenuAsPrimaryAction:1];
  [v30 setHidden:0];

  return [v28 setNeedsLayout];
}

uint64_t sub_1005DB870()
{
  qword_10095FCE0 = sub_10076220C();
  qword_10095FCE8 = sub_1005DD408(&qword_10094DFA0, &type metadata accessor for SpacerDimension);
  sub_10000DB7C(qword_10095FCC8);
  return sub_1007621FC();
}

uint64_t sub_1005DB8EC()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_10095FCF0 = v5;
  return result;
}

char *sub_1005DB9E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  if (qword_100940C68 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A1330);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v21 = objc_allocWithZone(sub_1007626BC());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel] = sub_1007626AC();
  v22 = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton] = v22;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel;
  [*&v27[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel] setHidden:1];
  [v27 addSubview:*&v27[v28]];
  v29 = OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton;
  [*&v27[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton] setHidden:1];
  [v27 addSubview:*&v27[v29]];

  return v27;
}

id sub_1005DBD8C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&unk_10095B400);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v10 - v4;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "prepareForReuse", v3);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel];
  [v6 setText:0];
  [v6 setHidden:1];
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton];
  v8 = sub_10077111C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_10077114C();
  [v7 setMenu:0];
  [v7 setShowsMenuAsPrimaryAction:0];
  return [v7 setHidden:1];
}

void sub_1005DBF2C()
{
  v0 = sub_10075D9EC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000A5D4(&qword_100942698);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_10005312C();
  if (qword_100940C70 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  sub_10000A61C(v5, qword_1009A1348);
  v6 = sub_100770B2C();
  sub_1007710CC();
  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v4;
  *(inited + 40) = v6;

  v8 = NSFontAttributeName;
  v9 = v6;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000CFBC(inited + 32, &unk_100948B10);
  sub_10075DA0C();
  sub_10075D9AC();
  v10 = sub_10075D99C();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  sub_10077101C();
  v11 = [objc_opt_self() configurationWithFont:v9 scale:1];
  sub_100770F4C();
  if (qword_100941248 != -1)
  {
    swift_once();
  }

  v12 = qword_10095FCF0;
  sub_1007710BC();
  sub_100770FBC();
  sub_100770FFC();
  sub_100770FEC();
}

void sub_1005DC208(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for DirectionalTextAlignment.leading(_:))
  {
    v16 = [v2 traitCollection];
    v17 = sub_10077070C();

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (v15 != enum case for DirectionalTextAlignment.trailing(_:))
    {

      (*(v11 + 8))(v13, v10);
      return;
    }

    v19 = [v2 traitCollection];
    v20 = sub_10077070C();

    if (v20)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }
  }

  [v14 setAlignment:v18];
  sub_10077113C();
  v21 = sub_10077111C();
  if ((*(*(v21 - 8) + 48))(v9, 1, v21))
  {
LABEL_12:
    sub_10014D2A4(v9, v6);
    sub_10077114C();

    sub_10000CFBC(v9, &unk_10095B400);
    return;
  }

  v22 = sub_10077100C();
  v24 = v23;
  v25 = sub_10075D99C();
  if ((*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v22(v28, 0);
    goto LABEL_12;
  }

  v27[1] = v14;
  sub_10054D1B0();
  v26 = v14;
  sub_10075D9BC();
  v22(v28, 0);
  sub_10077114C();
}

id sub_1005DC59C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel];
  sub_10076422C();
  v8 = [v0 traitCollection];
  sub_100770E9C();
  v10 = v9;
  v12 = v11;

  sub_10076422C();
  v14 = v13;
  v16 = v15;
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton];
  sub_10076422C();
  v18 = [v0 traitCollection];
  sub_100770F2C();
  v20 = v19;

  sub_10076422C();
  CGRectGetMaxX(v28);
  sub_10076422C();
  CGRectGetMinY(v29);
  if (([v7 isHidden] & 1) != 0 || (objc_msgSend(v17, "isHidden") & 1) != 0 || (v26 = v10, v21 = v10 + 16.0 + v20, sub_10076422C(), Width = CGRectGetWidth(v30), v23 = v26, Width >= v21))
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.trailing(_:), v2);
    sub_1005DC208(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_1005DC208(v6);
    (*(v3 + 8))(v6, v2);
    sub_10076422C();
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v23;
    v31.size.height = v12;
    CGRectGetMaxY(v31);
  }

  sub_10076422C();
  sub_100770A4C();
  [v7 setFrame:?];
  sub_10076422C();
  sub_100770A4C();
  return [v17 setFrame:?];
}

id sub_1005DC9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v69 = a2;
  v4 = sub_10077164C();
  v85 = *(v4 - 8);
  v86 = v4;
  __chkstk_darwin(v4);
  v84 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076B6EC();
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v67 - v9;
  v73 = sub_10076DD3C();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v67 - v13;
  v76 = sub_10076DA7C();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100946720);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  v22 = sub_10076C38C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076464C();
  sub_10076C8BC();
  sub_10076C2FC();
  v27 = v26;
  (*(v23 + 8))(v25, v22);
  v88 = sub_10076461C();
  v79 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v28 = *(v16 + 8);
  v28(v21, v15);
  if (v90 && (sub_10077000C(), v30 = v29, , v30))
  {
    v31 = v70;
    sub_10076DD2C();
    v32 = v74;
    if (qword_100940C68 != -1)
    {
      swift_once();
    }

    v33 = sub_10076D3DC();
    sub_10000A61C(v33, qword_1009A1330);
    sub_10076DCFC();
    (*(v72 + 8))(v31, v73);
    sub_10076DA5C();
    sub_10076DA9C();
    sub_10076DA6C();
    v87 = v34;
    v89 = v35;
    v78 = v36;
    v77 = v37;
    (*(v75 + 8))(v32, v76);
  }

  else
  {
    v38 = JUMeasurementsZero[1];
    v87 = JUMeasurementsZero[0];
    v89 = v38;
    v39 = JUMeasurementsZero[3];
    v78 = JUMeasurementsZero[2];
    v77 = v39;
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v28(v18, v15);
  v40 = v80;
  sub_10076B6DC();
  sub_1005DD408(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v41 = v82;
  v42 = sub_10077124C();
  v43 = *(v81 + 8);
  v43(v40, v41);
  v43(v10, v41);
  v68 = v27;
  if ((v42 & 1) != 0 && v83 && (sub_10077000C(), v44))
  {
    v45 = v70;
    sub_10076DD2C();
    v46 = v88;
    if (qword_100940C70 != -1)
    {
      swift_once();
    }

    v47 = sub_10076D3DC();
    sub_10000A61C(v47, qword_1009A1348);
    sub_10076DCFC();
    (*(v72 + 8))(v45, v73);
    sub_10076DA5C();
    v48 = v74;
    sub_10076DA9C();
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    v50 = v49;
    if (qword_100941248 != -1)
    {
      swift_once();
    }

    [qword_10095FCF0 size];
    v52 = v50 * v51 + 4.0;
    sub_10076DA6C();
    v54 = v53;
    v56 = v55;
    (*(v75 + 8))(v48, v76);
    v57 = v54 + v52;
  }

  else
  {
    v56 = JUMeasurementsZero[1];
    v57 = JUMeasurementsZero[0];
    v46 = v88;
  }

  if ((JUMeasurementsEqual() & 1) != 0 || (JUMeasurementsEqual() & 1) != 0 || v68 >= v87 + 16.0 + v57)
  {
    if (v89 > v56)
    {
      v58 = v89;
    }

    else
    {
      v58 = v56;
    }
  }

  else
  {
    v58 = v89 + v56 + 8.0;
  }

  v59 = objc_opt_self();
  v60 = [v59 fractionalWidthDimension:1.0];
  if (qword_100941240 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10095FCC8, qword_10095FCE0);
  sub_10076462C();
  v61 = v84;
  sub_1000FF02C();
  sub_10076D40C();
  v63 = v62;
  swift_unknownObjectRelease();
  (*(v85 + 8))(v61, v86);
  v64 = [v59 absoluteDimension:v58 + v63];
  v65 = [objc_opt_self() sizeWithWidthDimension:v60 heightDimension:v64];

  return v65;
}

uint64_t sub_1005DD408(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1005DD49C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076382C();
  sub_1005DD6A0(&qword_10095FD30, &type metadata accessor for ProductCapability);
  sub_10076332C();
  if (!v13[1])
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  v4 = sub_1007637FC();
  v6 = v5;
  v7 = sub_10076381C();
  v8 = sub_10076380C();
  v9 = sub_100630CB4();
  swift_getObjectType();
  sub_1003E7634(v4, v6, v7, v8, v9);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_1005DD6A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1005DD734()
{
  v0 = sub_10076F2EC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10076FD4C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076C38C();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100761C1C();
  sub_1005DDE7C(&qword_10095FD38, &type metadata accessor for UnifiedMessage);
  sub_10076332C();
  v8 = v60[0];
  if (v60[0])
  {
    v56 = v2;
    sub_1007698FC();
    sub_10076F63C();
    v9 = v60[0];
    if (!v60[0])
    {

      return;
    }

    v55 = v1;
    sub_100761C0C();
    v10 = v9;
    v11 = sub_1007698EC();

    if (!v11)
    {

      return;
    }

    v54 = v10;
    sub_10000A5D4(&qword_100950538);
    sub_10076F63C();
    if (!v60[0])
    {

      return;
    }

    v53 = v60[0];
    v12 = v11;
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 superview];

      if (!v15)
      {
        v16 = [v12 view];
        if (!v16)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v17 = v16;
        [v16 setHidden:1];

        v18 = [v53 view];
        if (!v18)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v19 = v18;
        v20 = [v12 view];
        if (!v20)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v15 = v20;
        [v19 insertSubview:v20 atIndex:0];
      }

      v21 = [v12 view];
      if (v21)
      {
        v22 = v21;
        [v21 updateTraitsIfNeeded];

        swift_getKeyPath();
        sub_10076338C();

        sub_10076C2FC();
        v24 = v23;
        v26 = v25;
        (*(v58 + 8))(v6, v4);
        v27 = (*(v59 + 144))(v24, v26);
        v29 = v28;
        v30 = [v12 view];
        if (v30)
        {
          v31 = v30;
          v32 = v12;
          [v30 sizeThatFits:{v27, v29}];
          v34 = v33;
          v36 = v35;

          v37 = v57;
          sub_10076FD0C();
          sub_10000A5D4(&unk_100942A60);
          sub_10076F33C();
          *(swift_allocObject() + 16) = xmmword_100783DD0;
          sub_10076F2DC();
          v62._object = 0x80000001007F0E10;
          v62._countAndFlagsBits = 0xD00000000000002CLL;
          sub_10076F2CC(v62);
          v61 = v7;
          v60[0] = v8;

          sub_10076F29C();
          sub_1000258C0(v60);
          v63._countAndFlagsBits = 8250;
          v63._object = 0xE200000000000000;
          sub_10076F2CC(v63);
          type metadata accessor for CGSize(0);
          v61 = v38;
          v60[0] = v34;
          v60[1] = v36;
          sub_10076F29C();
          sub_1000258C0(v60);
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          sub_10076F2CC(v64);
          sub_10076F2FC();
          v39 = v55;
          sub_10076FBDC();

          (*(v56 + 8))(v37, v39);
          v40 = [v12 view];
          v41 = v54;
          if (v40)
          {
            v42 = v40;
            v43 = [v40 superview];

            v44 = v53;
            v45 = [v53 view];
            v46 = v45;
            if (v43)
            {
              if (v45)
              {
                sub_1000ACA5C();
                v47 = sub_100770EEC();

                if ((v47 & 1) == 0)
                {
LABEL_28:
                  v51 = [v32 view];

                  if (v51)
                  {
                    [v51 setHidden:0];

                    return;
                  }

                  goto LABEL_34;
                }

                goto LABEL_23;
              }

              v46 = v43;
            }

            else if (!v45)
            {
LABEL_23:
              v48 = [v32 view];
              if (!v48)
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v49 = v48;
              [v48 removeFromSuperview];

              v50 = [v32 view];
              if (!v50)
              {
LABEL_39:
                __break(1u);
                return;
              }

              v46 = v50;
              [v50 updateTraitsIfNeeded];
            }

            goto LABEL_28;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}