double sub_386EC(double a1, double a2, float a3)
{
  if (a3 == 1000.0)
  {
    v6 = a1;
  }

  else
  {
    v6 = 1.79769313e308;
  }

  sub_38D64(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_metrics, v16);
  v7 = *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_subtitleLabel);
  v8 = sub_8E374();
  v16[36] = v8;
  v9 = sub_38DC0();
  v16[33] = v7;
  v10 = *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_titleLabel);
  v16[41] = v8;
  v16[42] = v9;
  v16[37] = v9;
  v16[38] = v10;
  v11 = v7;
  v12 = v10;
  v13 = sub_38E18(v6, v3, v16);
  if (a3 == 1000.0)
  {
    v14 = a1;
  }

  else
  {
    v14 = v13;
  }

  sub_390A0(v16);
  return v14;
}

id sub_387F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicButtonView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *storeEnumTagSinglePayload for DynamicButtonView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x38970);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_389AC()
{
  result = qword_C4E50;
  if (!qword_C4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E50);
  }

  return result;
}

uint64_t sub_38A00()
{
  v0 = sub_8E324();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_8E314(), result = (*(v1 + 8))(v3, v0), v6 = 13.0, (v5 & 1) == 0))
  {
    v6 = 14.0;
  }

  *&xmmword_C4DA8 = v6;
  *(&xmmword_C4DA8 + 1) = 0x4030000000000000;
  qword_C4DB8 = *&v6;
  qword_C4DC0 = 0x4030000000000000;
  return result;
}

uint64_t sub_38B18()
{
  v0 = sub_8E324();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_8E314(), result = (*(v1 + 8))(v3, v0), v6 = 5.0, (v5 & 1) == 0))
  {
    v6 = 6.0;
  }

  *&xmmword_C4DC8 = v6;
  *(&xmmword_C4DC8 + 1) = 0x4030000000000000;
  qword_C4DD8 = *&v6;
  qword_C4DE0 = 0x4030000000000000;
  return result;
}

uint64_t sub_38C30()
{
  v0 = sub_8E324();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_8E314(), result = (*(v1 + 8))(v3, v0), v6 = 0.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_C4DE8 = *&v6;
  return result;
}

unint64_t sub_38DC0()
{
  result = qword_C4E58;
  if (!qword_C4E58)
  {
    sub_8E374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E58);
  }

  return result;
}

double sub_38E18(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8E844();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CD08((a3 + 264), *(a3 + 288));
  if (sub_8E6B4())
  {
    sub_CD08((a3 + 264), *(a3 + 288));
    if ((sub_8E6E4() & 1) == 0)
    {
      sub_8E1E4();
      sub_8E1E4();
      sub_8E1E4();
      sub_8E1E4();
    }
  }

  sub_8F884();
  sub_CD08((a3 + 264), *(a3 + 288));
  if ((sub_8E6B4() & 1) != 0 && (sub_CD08((a3 + 264), *(a3 + 288)), (sub_8E6E4() & 1) == 0))
  {
    v9 = 168;
    v10 = 144;
  }

  else
  {
    v9 = 128;
    v10 = 104;
  }

  sub_CD08((a3 + v10), *(a3 + v9));
  sub_8E6F4();
  sub_398E8();
  sub_8E7A4();
  (*(v6 + 8))(v8, v5);
  return a1;
}

uint64_t sub_390F4(uint64_t a1)
{
  v2 = sub_332C(&unk_C55C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3915C()
{
  result = qword_C4E60;
  if (!qword_C4E60)
  {
    sub_3D10(&unk_C3CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E60);
  }

  return result;
}

uint64_t sub_39214()
{

  return swift_once();
}

uint64_t sub_3923C()
{

  return swift_once();
}

uint64_t sub_39260()
{

  return swift_once();
}

uint64_t sub_39280()
{

  return swift_once();
}

uint64_t sub_392A0()
{

  return swift_once();
}

void sub_392DC(double a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v9 = (v5 + v6);
  v9[13].n128_u64[0] = v7;
  v9[13].n128_u64[1] = v8;
  v9[11].n128_f64[1] = a1;
  v9[15].n128_u64[1] = v7;
  v9[16].n128_u64[0] = v8;
  v9[14].n128_u64[0] = 0;
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
}

uint64_t sub_39324(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 344))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_39364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_39414(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_39454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_394E4(double a1, double a2)
{
  v4 = sub_8E8B4();
  __chkstk_darwin(v4 - 8);
  sub_8814();
  v5 = sub_8E844();
  sub_42F8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_8814();
  v11 = v10 - v9;
  v12 = sub_8E6A4();
  sub_42F8();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_8814();
  v18 = v17 - v16;
  sub_CD08(v2 + 33, v2[36]);
  if (sub_8E6B4())
  {
    sub_CD08(v2 + 33, v2[36]);
    if ((sub_8E6E4() & 1) == 0)
    {
      sub_8E1E4();
      sub_8E1E4();
      sub_8E1E4();
      sub_8E1E4();
    }
  }

  sub_8F874();
  sub_398E8();
  sub_8E7B4();
  (*(v7 + 8))(v11, v5);
  (*(v14 + 8))(v18, v12);
  sub_CD08(v2 + 38, v2[41]);
  sub_8E6D4();
  v20 = v19;
  sub_3A340();
  v21 = 0.0;
  v22 = 0.0;
  if (sub_8E6B4())
  {
    sub_3A340();
    if ((sub_8E6E4() & 1) == 0)
    {
      sub_3A340();
      sub_8E6D4();
      v22 = v23;
    }
  }

  sub_3A340();
  if (sub_8E6B4())
  {
    sub_3A340();
    if ((sub_8E6E4() & 1) == 0)
    {
      sub_CD08(v2 + 23, v2[26]);
      sub_8E6F4();
      v21 = v24;
    }
  }

  v32.origin.x = sub_3A36C();
  v25 = (CGRectGetHeight(v32) - v20 - v22 - v21) * 0.5 + a2;
  sub_CD08(v2 + 38, v2[41]);
  v26 = sub_8E6C4();
  *(v27 + 8) = v25;
  v26(v31, 0);
  sub_CD08(v2 + 33, v2[36]);
  v28 = sub_8E6C4();
  *(v29 + 8) = v21 + v20 + v25;
  v28(v31, 0);
  sub_8E8A4();
  sub_3A36C();
  return sub_8E694();
}

uint64_t sub_398E8()
{
  v32 = sub_8E804();
  sub_42F8();
  v36 = v0;
  __chkstk_darwin(v1);
  sub_8814();
  v30 = v3 - v2;
  v35 = sub_8E794();
  sub_42F8();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_8814();
  v9 = v8 - v7;
  v10 = sub_8E7F4();
  v33 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_8814();
  v34 = v12 - v11;
  sub_332C(&qword_C4E70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_92300;
  sub_8E7C4();
  sub_8E7D4();
  sub_8E7E4();
  v40[0] = v13;
  sub_39F94();
  sub_332C(&qword_C4E80);
  sub_39FEC();
  v31 = v10;
  sub_8F944();
  sub_332C(&qword_C4E90);
  sub_8E834();
  *(swift_allocObject() + 16) = xmmword_92310;
  v14 = v29[41];
  v15 = v29[42];
  v16 = sub_CD08(v29 + 38, v14);
  v41 = v14;
  v42 = *(v15 + 8);
  v17 = sub_4ED0(v40);
  (*(*(v14 - 8) + 16))(v17, v16, v14);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v28 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v27 = *(v5 + 104);
  v27(v9);
  v26 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v25 = *(v36 + 104);
  v25(v30);
  sub_8E824();
  v36 += 8;
  v24 = *v36;
  (*v36)(v30, v32);
  v18 = *(v5 + 8);
  v18(v9, v35);
  sub_3A050(&v37);
  sub_4F30(v40);
  v19 = v29[36];
  v20 = v29[37];
  v21 = sub_CD08(v29 + 33, v19);
  v41 = v19;
  v42 = *(v20 + 8);
  v22 = sub_4ED0(v40);
  (*(*(v19 - 8) + 16))(v22, v21, v19);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  (v27)(v9, v28, v35);
  (v25)(v30, v26, v32);
  sub_8E824();
  v24(v30, v32);
  v18(v9, v35);
  sub_3A050(&v37);
  sub_4F30(v40);
  sub_8E814();
  return (*(v33 + 8))(v34, v31);
}

double sub_39EE4(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_3A0B8(a2, a1, v2);
}

unint64_t sub_39F40()
{
  result = qword_C4E68;
  if (!qword_C4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E68);
  }

  return result;
}

unint64_t sub_39F94()
{
  result = qword_C4E78;
  if (!qword_C4E78)
  {
    sub_8E7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E78);
  }

  return result;
}

unint64_t sub_39FEC()
{
  result = qword_C4E88;
  if (!qword_C4E88)
  {
    sub_3D10(&qword_C4E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E88);
  }

  return result;
}

uint64_t sub_3A050(uint64_t a1)
{
  v2 = sub_332C(&qword_C4E98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_3A0B8(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8E844();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CD08((a3 + 264), *(a3 + 288));
  if (sub_8E6B4())
  {
    sub_CD08((a3 + 264), *(a3 + 288));
    if ((sub_8E6E4() & 1) == 0)
    {
      sub_8E1E4();
      sub_8E1E4();
      sub_8E1E4();
      sub_8E1E4();
    }
  }

  sub_8F884();
  sub_CD08((a3 + 264), *(a3 + 288));
  if ((sub_8E6B4() & 1) != 0 && (sub_CD08((a3 + 264), *(a3 + 288)), (sub_8E6E4() & 1) == 0))
  {
    v9 = 168;
    v10 = 144;
  }

  else
  {
    v9 = 128;
    v10 = 104;
  }

  sub_CD08((a3 + v10), *(a3 + v9));
  sub_8E6F4();
  sub_398E8();
  sub_8E7A4();
  (*(v6 + 8))(v8, v5);
  return a1;
}

uint64_t sub_3A340()
{
  v1 = *(v0 + 288);
  sub_CD08((v0 + 264), v1);
  return v1;
}

unint64_t DynamicViewControllerPresentationError.failureReason.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000011;
  }
}

Swift::Int DynamicViewControllerPresentationError.hashValue.getter(char a1)
{
  sub_8FC04();
  sub_8FC14(a1 & 1);
  return sub_8FC24();
}

Swift::Int sub_3A454()
{
  v1 = *v0;
  sub_8FC04();
  DynamicViewControllerPresentationError.hash(into:)(v3, v1);
  return sub_8FC24();
}

unint64_t sub_3A49C()
{
  result = qword_C4EA0;
  if (!qword_C4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4EA0);
  }

  return result;
}

unint64_t sub_3A4F4()
{
  result = qword_C4EA8;
  if (!qword_C4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4EA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicViewControllerPresentationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x3A628);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_3A660(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = &unk_C4000;
  *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin8EditMenu_editMenuInteraction] = 0;
  v8 = &unk_C4000;
  *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin8EditMenu_longPressGestureRecognizer] = 0;
  v9 = &unk_C4000;
  *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin8EditMenu_editMenu] = 0;
  swift_unknownObjectWeakInit();
  v10 = type metadata accessor for EditMenu();
  v40.receiver = v3;
  v40.super_class = v10;
  v11 = objc_msgSendSuper2(&v40, "init");
  swift_unknownObjectWeakAssign();
  v12 = *(a1 + 16);
  if (v12)
  {
    v39 = &_swiftEmptyArrayStorage;
    v13 = v11;
    sub_8FA34();
    v14 = a1 + 32;
    result = sub_CE5C(0, &qword_C4F58);
    v16 = 0;
    while (v16 < *(a1 + 16))
    {
      ++v16;
      sub_3AF7C(v14, v38);
      sub_3AF7C(v38, v36);
      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      v18 = v36[1];
      *(v17 + 24) = v36[0];
      *(v17 + 40) = v18;
      *(v17 + 56) = v36[2];
      *(v17 + 72) = v37;

      v35._rawValue = 0;
      sub_3B22C();
      sub_8F8C4();
      sub_3B02C(v38);
      sub_8FA14();
      sub_8FA44();
      sub_8FA54();
      result = sub_8FA24();
      v14 += 56;
      if (v12 == v16)
      {

        v19 = v39;
        v8 = &unk_C4000;
        v7 = &unk_C4000;
        v9 = &unk_C4000;
        v20 = v11;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = v11;

    v19 = &_swiftEmptyArrayStorage;
    v20 = v11;
LABEL_7:
    sub_CE5C(0, &qword_C4F60);
    sub_3B22C();
    v22.super.super.isa = sub_8F894(v43, v44, v42, v41, 0xFFFFFFFFFFFFFFFFLL, v19, v35).super.super.isa;
    v23 = v9[472];
    v24 = *&v20[v23];
    *&v20[v23] = v22;

    v25 = objc_allocWithZone(UIEditMenuInteraction);
    v26 = v20;
    v27 = [v25 initWithDelegate:v26];
    [a3 addInteraction:v27];
    v28 = v7[470];
    v29 = *&v26[v28];
    *&v26[v28] = v27;
    v30 = v27;

    v38[3] = v10;
    v38[0] = v26;
    v31 = objc_allocWithZone(UILongPressGestureRecognizer);
    v32 = sub_3B080(v38, "didLongPress:");
    [a3 addGestureRecognizer:v32];

    v33 = v8[471];
    v34 = *&v26[v33];
    *&v26[v33] = v32;

    return v26;
  }

  return result;
}

uint64_t sub_3A9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8E5D4();
  __chkstk_darwin(v5 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_8F264();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E5F4();
  sub_8F174();
  sub_8F394();
  v12 = *&v15[0];
  sub_8F394();
  (*(v9 + 16))(v7, v11, v8);
  v13 = sub_332C(&unk_C5850);
  sub_33E8(v7, 0, 1, v13);
  memset(v15, 0, sizeof(v15));
  v16 = -1;
  (*(*v12 + 216))(a3, v7, a2, v15);

  sub_3B1C4(v15);
  sub_CE00(v7);
  return (*(v9 + 8))(v11, v8);
}

id sub_3ABBC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin8EditMenu_editMenuInteraction])
    {
      [Strong removeInteraction:?];
    }

    v3 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin8EditMenu_longPressGestureRecognizer];
    if (v3)
    {
      v4 = v3;
      [v2 removeGestureRecognizer:v4];
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for EditMenu();
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_3AD00(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([a1 state] == &def_4BB18 + 1)
    {
      [a1 locationInView:v7];
      sub_CE5C(0, &unk_C4F70);
      v5 = sub_8F824();
      v6 = *(v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin8EditMenu_editMenuInteraction);
      [v6 presentEditMenuWithConfiguration:v5];
    }
  }
}

void *sub_3AEDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin8EditMenu_editMenu);
  v2 = v1;
  return v1;
}

uint64_t sub_3AFD8()
{

  sub_4F30(v0 + 24);

  return _swift_deallocObject(v0, 80, 7);
}

id sub_3B080(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = sub_CD08(a1, a1[3]);
    v7 = *(v4 - 8);
    __chkstk_darwin(v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_8FB44();
    (*(v7 + 8))(v9, v4);
    sub_4F30(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_3B1C4(uint64_t a1)
{
  v2 = sub_332C(&qword_C3940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3B244@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v31 = a2;
  v4 = sub_8EFE4();
  sub_42F8();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  sub_8EFF4();
  v13 = sub_8EFC4();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v12, v4);
  if (!v15)
  {
    v21 = sub_8F504();
    sub_923C();
    swift_allocError();
    *v22 = 0x656C746974;
    v22[1] = 0xE500000000000000;
    v22[2] = &_s5ModelV4ItemVN;
    (*(*(v21 - 8) + 104))(v22, enum case for JSONError.missingProperty(_:), v21);
    swift_willThrow();
    sub_8F004();
    sub_887C();
    (*(v23 + 8))(v31);
    v20 = a1;
    return (v16)(v20, v4);
  }

  v27 = v13;
  sub_8E394();
  swift_initStackObject();
  sub_8EFF4();
  v17 = v31;
  v18 = v29;
  sub_8E384();
  if (v18)
  {

    sub_8F004();
    sub_887C();
    (*(v19 + 8))(v17);
    v16(a1, v4);
    v20 = v10;
    return (v16)(v20, v4);
  }

  sub_8F004();
  sub_887C();
  (*(v25 + 8))(v17);
  v16(a1, v4);
  v16(v10, v4);
  v26 = v28;
  result = sub_3A94(&v30, v28);
  *(v26 + 40) = v27;
  *(v26 + 48) = v15;
  return result;
}

char *sub_3B560(char *a1, uint64_t a2)
{
  v38 = a2;
  v40 = sub_8F004();
  sub_42F8();
  v39 = v3;
  __chkstk_darwin(v4);
  v35[0] = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_332C(&qword_C33A8);
  __chkstk_darwin(v6 - 8);
  v8 = v35 - v7;
  v9 = sub_8EFE4();
  sub_42F8();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_8F4F4();
  sub_42F8();
  v36 = v16;
  v18 = __chkstk_darwin(v17);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v35 - v21;
  v37 = a1;
  sub_8EFF4();
  sub_8EF94();
  v23 = *(v11 + 8);
  v23(v14, v9);
  if (sub_33C0(v8, 1, v15) == 1)
  {
    sub_3B98C(v8);
    v24 = sub_8F504();
    sub_923C();
    swift_allocError();
    *v25 = 0x736D657469;
    v25[1] = 0xE500000000000000;
    v25[2] = &_s5ModelVN;
    (*(*(v24 - 8) + 104))(v25, enum case for JSONError.missingProperty(_:), v24);
    swift_willThrow();
    (*(v39 + 8))(v38, v40);
    v23(v37, v9);
  }

  else
  {
    v27 = v36;
    v26 = v37;
    (*(v36 + 32))(v22, v8, v15);
    (*(v27 + 16))(v20, v22, v15);
    (*(v39 + 16))(v35[0], v38, v40);
    sub_3B9F4();
    v28 = v35[1];
    v29 = sub_8F704();
    if (!v28)
    {
      v20 = v29;
    }

    v30 = sub_3BB50();
    v31(v30);
    v23(v26, v9);
    v32 = sub_3BB3C();
    v33(v32);
  }

  return v20;
}

uint64_t sub_3B98C(uint64_t a1)
{
  v2 = sub_332C(&qword_C33A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3B9F4()
{
  result = qword_C4F80;
  if (!qword_C4F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4F80);
  }

  return result;
}

__n128 sub_3BA48(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_3BA64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3BAA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_3BB10@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_3B560(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_3BB64(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!deviceIsRunningInternalBuild())
  {
    return 0;
  }

  if (a2)
  {
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_8F9E4(16);

    strcpy(v34, "INTERNAL ONLY\n");
    HIBYTE(v34[1]) = -18;
    v35._countAndFlagsBits = a1;
    v35._object = a2;
    sub_8F654(v35);
  }

  else
  {
    (*(v7 + 16))(v9, v3, a3);
    if (sub_8FB34())
    {
      (*(v7 + 8))(v9, a3);
    }

    else
    {
      swift_allocError();
      (*(v7 + 32))(v11, v9, a3);
    }

    v12 = &_swiftEmptyArrayStorage;
    while (1)
    {
      swift_errorRetain();
      v13 = sub_8E084();

      v14 = [v13 localizedFailureReason];
      if (!v14)
      {
        v14 = [v13 description];
      }

      v15 = sub_8F5F4();
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_342D8(0, *(v12 + 2) + 1, 1, v12);
        v12 = v28;
      }

      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_342D8(v18 > 1, v19 + 1, 1, v12);
        v12 = v29;
      }

      *(v12 + 2) = v19 + 1;
      v20 = &v12[16 * v19];
      *(v20 + 4) = v15;
      *(v20 + 5) = v17;
      v21 = [v13 userInfo];
      v22 = sub_8F564();

      v23 = sub_8F5F4();
      if (!*(v22 + 16))
      {

        goto LABEL_21;
      }

      v25 = sub_406C0(v23, v24);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        break;
      }

      sub_20060(*(v22 + 56) + 32 * v25, v34);

      sub_332C(&unk_C3EF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_21:

LABEL_22:
    v34[0] = v12;
    sub_332C(&unk_C3CF8);
    sub_3915C();
    v30 = sub_8F5A4();
    v32 = v31;

    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_8F9E4(16);

    strcpy(v34, "INTERNAL ONLY\n");
    HIBYTE(v34[1]) = -18;
    v36._countAndFlagsBits = v30;
    v36._object = v32;
    sub_8F654(v36);
  }

  return v34[0];
}

uint64_t sub_3BF9C(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v4 + 16))(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  sub_332C(&qword_C4F88);
  if (swift_dynamicCast())
  {
    sub_3A94(v9, &v11);
    v5 = *(&v12 + 1);
    v6 = v13;
    sub_CD08(&v11, *(&v12 + 1));
    v7 = (*(v6 + 8))(v5, v6);
    sub_4F30(&v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_13E24(v9, &qword_C4F90);
    v11 = 0u;
    v12 = 0u;
    v7 = sub_3C138(0, 0, &v11, a1);
    sub_13E24(&v11, &unk_C3EB0);
  }

  return v7;
}

uint64_t sub_3C138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a1;
  v30 = a2;
  v5 = *(a4 - 8);
  __chkstk_darwin(a1);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v9, v8);
  if (sub_8FB34())
  {
    (*(v5 + 8))(v7, a4);
  }

  else
  {
    swift_allocError();
    (*(v5 + 32))(v10, v7, a4);
  }

  v11 = sub_8E084();

  v12 = [v11 code];
  v13 = [v11 description];
  v14 = sub_8F5F4();
  v16 = v15;

  v17 = [v11 domain];
  v18 = sub_8F5F4();
  v20 = v19;

  v21 = [v11 userInfo];
  v22 = sub_8F564();

  sub_3D230(v22);
  v24 = v23;

  v25 = sub_3C3B4(v12, 0, v29, v30, v14, v16, v18, v20, v24, v28);

  return v25;
}

uint64_t sub_3C3B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_332C(&qword_C3F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_935F0;
  sub_8F9B4();
  *(inited + 96) = sub_332C(&qword_C40E0);
  *(inited + 72) = a1;
  *(inited + 80) = a2 & 1;
  sub_8F9B4();
  v18 = sub_332C(&qword_C3AD8);
  *(inited + 168) = v18;
  *(inited + 144) = a3;
  *(inited + 152) = a4;

  sub_8F9B4();
  *(inited + 240) = v18;
  *(inited + 216) = a5;
  *(inited + 224) = a6;

  sub_8F9B4();
  *(inited + 312) = v18;
  *(inited + 288) = a7;
  *(inited + 296) = a8;

  sub_8F9B4();
  v19 = sub_332C(&unk_C3EB0);
  *(inited + 384) = v19;
  v20 = swift_allocObject();
  *(inited + 360) = v20;
  if (a9)
  {
    sub_3C6D0(a9, (v20 + 16));
  }

  else
  {
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
  }

  sub_8F9B4();
  *(inited + 456) = v19;
  v21 = swift_allocObject();
  *(inited + 432) = v21;
  sub_20154(a10, v21 + 16, &unk_C3EB0);
  return sub_8F574();
}

uint64_t sub_3C690()
{
  if (*(v0 + 40))
  {
    sub_4F30(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3C6D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = sub_332C(&qword_C7480);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = &unk_C4F98;
  while (v5)
  {
LABEL_8:
    v10 = __clz(__rbit64(v5)) | (v7 << 6);
    sub_E3B0(*(a1 + 48) + 40 * v10, v46);
    sub_20060(*(a1 + 56) + 32 * v10, &v47);
    sub_20154(v46, v43, v8);
    sub_20690(v44, v45);
    sub_17A94(v43);
    sub_20154(v46, v43, v8);
    sub_E3B0(v43, &v40);
    sub_8F9B4();
    sub_17A94(v43);
    *(&v39 + 1) = &type metadata for Any + 8;
    *&v38 = swift_allocObject();
    sub_20060(v45, v38 + 16);
    sub_3CC6C(&v38, &v40);
    sub_4F30(&v38);
    if (v41)
    {
      sub_20690(&v40, &v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_4067C(v42);
      v14 = _swiftEmptyDictionarySingleton[2];
      v15 = (v13 & 1) == 0;
      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        goto LABEL_25;
      }

      v8 = v12;
      v17 = v13;
      sub_332C(&unk_C50F0);
      if (sub_8FA74(isUniquelyReferenced_nonNull_native, v16))
      {
        v18 = sub_4067C(v42);
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_27;
        }

        v8 = v18;
      }

      if (v17)
      {
        v26 = (_swiftEmptyDictionarySingleton[7] + 32 * v8);
        sub_4F30(v26);
        sub_20690(&v38, v26);
        sub_17A94(v42);
        v27 = sub_3CECC();
        sub_13E24(v27, v28);
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v8 >> 6) + 8] |= 1 << v8;
        sub_E3B0(v42, _swiftEmptyDictionarySingleton[6] + 40 * v8);
        sub_20690(&v38, (_swiftEmptyDictionarySingleton[7] + 32 * v8));
        sub_17A94(v42);
        v29 = sub_3CECC();
        sub_13E24(v29, v30);
        v31 = _swiftEmptyDictionarySingleton[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_26;
        }

        _swiftEmptyDictionarySingleton[2] = v33;
      }
    }

    else
    {
      sub_13E24(&v40, &unk_C3EB0);
      v20 = sub_4067C(v42);
      if (v21)
      {
        v8 = v20;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v23 = _swiftEmptyDictionarySingleton[3];
        sub_332C(&unk_C50F0);
        sub_8FA74(v22, v23);
        sub_17A94(_swiftEmptyDictionarySingleton[6] + 40 * v8);
        sub_20690((_swiftEmptyDictionarySingleton[7] + 32 * v8), &v38);
        sub_8FA94();
        sub_17A94(v42);
        v24 = sub_3CECC();
        sub_13E24(v24, v25);
      }

      else
      {
        sub_17A94(v42);
        v34 = sub_3CECC();
        sub_13E24(v34, v35);
        v38 = 0u;
        v39 = 0u;
      }

      sub_13E24(&v38, &unk_C3EB0);
    }

    v5 &= v5 - 1;
    sub_4F30(v44);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      *a2 = _swiftEmptyDictionarySingleton;
      return result;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_8FB84();
  __break(1u);
  return result;
}

uint64_t sub_3CB48(uint64_t a1)
{
  sub_20060(a1, v4);
  if ((swift_dynamicCast() & 1) == 0 && !swift_dynamicCast() && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0)
  {
    sub_3CE88();
    if (swift_dynamicCast())
    {
    }

    else
    {
      if (!swift_dynamicCast())
      {
        v1 = 0;
        goto LABEL_10;
      }
    }
  }

  v1 = 1;
LABEL_10:
  sub_4F30(v4);
  return v1;
}

double sub_3CC6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_3CB48(a1) & 1) == 0)
  {
    sub_20060(a1, v13);
    sub_332C(&qword_C4F88);
    if (swift_dynamicCast())
    {
      sub_3A94(&v10, v14);
      v5 = v15;
      v6 = v16;
      sub_CD08(v14, v15);
      v7 = (*(v6 + 8))(v5, v6);
      *(a2 + 24) = sub_332C(&qword_C7480);
      *a2 = v7;
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      sub_13E24(&v10, &qword_C4F90);
      sub_20060(a1, v13);
      sub_332C(&qword_C4FA0);
      if (!swift_dynamicCast())
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        sub_13E24(&v10, &qword_C4FA8);
        result = 0.0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }

      sub_3A94(&v10, v14);
      v8 = v15;
      v9 = v16;
      sub_CD08(v14, v15);
      (*(v9 + 8))(v8, v9);
    }

    sub_4F30(v14);
    return result;
  }

  sub_20060(a1, a2);
  return result;
}

uint64_t sub_3CE50()
{
  sub_4F30(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_3CE88()
{
  result = qword_C3ED0;
  if (!qword_C3ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C3ED0);
  }

  return result;
}

uint64_t sub_3CEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_473C0();
  if (v3)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = sub_473C0();
  v12 = v11;
  v13 = sub_473C0();
  v15 = v14;
  sub_8F004();
  sub_887C();
  (*(v16 + 8))(a2);
  sub_8EFE4();
  sub_887C();
  result = (*(v17 + 8))(a1);
  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v12;
  a3[4] = v13;
  a3[5] = v15;
  return result;
}

double sub_3D080@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_3CEF0(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
    result = *&v8;
    a3[2] = v8;
  }

  return result;
}

__n128 sub_3D0C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_3D0D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3D12C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_3D1AC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_40970(a1, sub_40938, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_3D230(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_332C(&unk_C50E0);
    v2 = sub_8FAE4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_20060(*(a1 + 56) + 32 * v10, v34);
    *&v33 = v13;
    *(&v33 + 1) = v12;
    v31[2] = v33;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v31[0] = v33;

    swift_dynamicCast();
    sub_20690(v32, v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_20690(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_20690(v30, v31);
    v14 = sub_8F984(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      sub_41AE0();
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        if (*&v7[8 * v15] != -1)
        {
          sub_41ACC();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_41AF4();
LABEL_21:
    v5 &= v5 - 1;
    sub_41B08();
    *&v7[v19] |= v20;
    v22 = v2[6] + 40 * v21;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    sub_20690(v31, (v2[7] + 32 * v21));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_3D4C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_332C(&qword_C5098);
    v2 = sub_8FAE4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_20690(&v22, v24);
    sub_20690(v24, v25);
    sub_20690(v25, &v23);
    result = sub_406C0(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      sub_4F30(v17);
      result = sub_20690(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_20690(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_3D710@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_objectGraph))
  {
    v3 = sub_8F364();
    sub_8F174();

    sub_8F394();

    v4 = a1;
    v5 = 0;
    v6 = v3;
  }

  else
  {
    v6 = sub_8F364();
    v4 = a1;
    v5 = 1;
  }

  return sub_33E8(v4, v5, 1, v6);
}

id sub_3D7C4()
{
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController____lazy_storage___contentUnavailableView;
  v2 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController____lazy_storage___contentUnavailableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController____lazy_storage___contentUnavailableView);
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = v0;
  v5 = objc_allocWithZone(_UIContentUnavailableView);
  result = sub_40538(0.0, 0.0, 0.0, 0.0, 0, 0xE000000000000000, 0);
  if (result)
  {
    v7 = *(v0 + v1);
    *(v4 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_3D85C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, objc_class *a18, objc_super a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_41BCC();
  a30 = v32;
  a31 = v33;
  v34 = v31;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v31[OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_automaticRetry] = 1;
  v45 = OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_airplaneModeInquiry;
  *&v34[v45] = [objc_allocWithZone(AMSUIDAirplaneModeInquiry) init];
  v46 = OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_cellularDataInquiry;
  *&v34[v46] = [objc_allocWithZone(AMSUIDCellularDataInquiry) init];
  v47 = &v34[OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkInquiry];
  v48 = type metadata accessor for NWPathNetworkInquiry();
  v49 = sub_4D9B4();
  v47[3] = v48;
  v47[4] = &off_B9450;
  *v47 = v49;
  v50 = &v34[OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkObservation];
  *v50 = 0u;
  *(v50 + 1) = 0u;
  *(v50 + 4) = 0;
  *&v34[OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController____lazy_storage___contentUnavailableView] = 0;
  *&v34[OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_error] = v44;
  *&v34[OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_objectGraph] = v42;
  v51 = &v34[OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_retryAction];
  *v51 = v38;
  v51[1] = v36;
  v34[OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_isNavigationControllerEmbedded] = v40;
  swift_errorRetain();

  sub_13C90(v38);
  v52 = type metadata accessor for ErrorViewController();
  a19.receiver = v34;
  a19.super_class = v52;
  v53 = objc_msgSendSuper2(&a19, "initWithNibName:bundle:", 0, 0);
  v54 = qword_C2CE0;
  v55 = v53;
  if (v54 != -1)
  {
    sub_13E98();
  }

  v56 = sub_8E304();
  sub_4D6C(v56, qword_D0378);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92300;
  a18 = v52;
  a15 = v55;
  v57 = AMSLogKey();
  if (v57)
  {
    v58 = v57;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(&a15);
  sub_8E244();
  swift_getErrorValue();
  v59 = sub_8FBB4();
  a18 = &type metadata for String;
  a15 = v59;
  a16 = v60;
  sub_8E264();
  sub_6678(&a15, &unk_C3EB0);
  sub_8E2D4();

  sub_13CA0(v38);

  sub_41BE8();
}

void sub_3DB9C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_automaticRetry) = 1;
  v2 = OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_airplaneModeInquiry;
  *(v1 + v2) = [objc_allocWithZone(AMSUIDAirplaneModeInquiry) init];
  v3 = OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_cellularDataInquiry;
  *(v1 + v3) = [objc_allocWithZone(AMSUIDCellularDataInquiry) init];
  v4 = (v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkInquiry);
  v5 = type metadata accessor for NWPathNetworkInquiry();
  v6 = sub_4D9B4();
  v4[3] = v5;
  v4[4] = &off_B9450;
  *v4 = v6;
  v7 = v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkObservation;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController____lazy_storage___contentUnavailableView) = 0;
  sub_8FAA4();
  __break(1u);
}

id sub_3DCC4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkObservation;
  swift_beginAccess();
  if (*(v2 + 24))
  {
    sub_13D04(v2, v7);
    sub_CD08(v7, v7[3]);
    v3 = sub_41B38();
    v4(v3);
    sub_4F30(v7);
  }

  v5 = type metadata accessor for ErrorViewController();
  v8.receiver = v1;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, "dealloc");
}

id sub_3DE94()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_isNavigationControllerEmbedded) == 1)
    {
      v3 = [v2 navigationItem];

      return v3;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for ErrorViewController();
  v5 = objc_msgSendSuper2(&v6, "navigationItem");

  return v5;
}

void sub_3DF6C()
{
  sub_41B8C();
  v2 = v0;
  v3 = sub_8EE84();
  sub_42F8();
  v55 = v4;
  __chkstk_darwin(v5);
  sub_8814();
  v8 = v7 - v6;
  v9 = sub_332C(&qword_C40D0);
  sub_41B1C(v9);
  sub_41B68();
  __chkstk_darwin(v10);
  sub_41B28();
  v11 = sub_8E0F4();
  sub_42F8();
  v54 = v12;
  __chkstk_darwin(v13);
  sub_8814();
  v16 = v15 - v14;
  v17 = sub_332C(&qword_C50D0);
  sub_41B1C(v17);
  sub_41B68();
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  v21 = type metadata accessor for ErrorViewController();
  v60.receiver = v0;
  v60.super_class = v21;
  objc_msgSendSuper2(&v60, "loadView");
  v22 = [v0 view];
  v23 = [objc_opt_self() ams_defaultPlatformBackgroundColor];
  [v22 setBackgroundColor:v23];

  sub_3D710(v20);
  v24 = sub_8F364();
  if (sub_33C0(v20, 1, v24) != 1)
  {
    v53 = v3;
    v52 = sub_8F334();
    (*(*(v24 - 8) + 8))(v20, v24);
    v56[0] = *&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_error];
    swift_errorRetain();
    swift_errorRetain();
    sub_332C(&unk_C3EF0);
    swift_dynamicCast();
    sub_8F5F4();
    v29 = objc_allocWithZone(AMSMetricsLoggingEvent);
    v30 = sub_405D4();
    if (*&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_objectGraph])
    {
      sub_8F164();
      v31 = sub_33C0(v1, 1, v11);
      v32 = v53;
      if (v31 != 1)
      {
        v33 = v54;
        (*(v54 + 32))(v16, v1, v11);
        sub_8E0B4();
        v34 = sub_8F5C4();

        [v30 setUrl:v34];

        v35 = sub_8E0B4();
        v37 = sub_840B8(0xD000000000000013, 0x800000000009F5B0, v35, v36);

        if (v37[2])
        {

          v38 = sub_8F5C4();

          [v30 setEventServiceType:v38];
        }

        else
        {
        }

        v39 = sub_8E0B4();
        v41 = sub_840B8(0xD000000000000011, 0x800000000009F5D0, v39, v40);

        if (v41[2])
        {

          v42 = sub_8F5C4();

          [v30 setEventPlacement:v42];

          (*(v33 + 8))(v16, v11);
        }

        else
        {
          (*(v33 + 8))(v16, v11);
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_33E8(v1, 1, 1, v11);
      v32 = v53;
    }

    sub_6678(v1, &qword_C40D0);
LABEL_17:
    v43 = [objc_opt_self() internalInstanceUsingBag:v52];
    sub_41558();
    v44 = v55;
    (*(v55 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v32);
    v45 = sub_8F7F4();
    (*(v44 + 8))(v8, v32);
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    *(v46 + 24) = v30;
    v58 = sub_41800;
    v59 = v46;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 1107296256;
    sub_41AB8();
    v56[2] = v47;
    v57 = &unk_B8D00;
    v48 = _Block_copy(v56);
    v49 = v43;
    v50 = v30;

    sub_41810(v45, v48);
    swift_unknownObjectRelease();
    _Block_release(v48);

    goto LABEL_18;
  }

  sub_6678(v20, &qword_C50D0);
  if (qword_C2CE0 != -1)
  {
    sub_13E98();
  }

  v25 = sub_8E304();
  sub_4D6C(v25, qword_D0378);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v57 = v21;
  v56[0] = v2;
  v26 = v2;
  v27 = AMSLogKey();
  if (v27)
  {
    v28 = v27;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v56);
  sub_8E244();
  sub_8E2D4();

LABEL_18:
  sub_41B74();
}

void sub_3E7D4()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  sub_3E954();
  sub_3FE00();
}

void sub_3E858()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v11, "viewWillLayoutSubviews");
  v1 = sub_3D7C4();
  v2 = [v0 view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
}

void sub_3E954()
{
  v1 = [v0 navigationItem];
  [v1 ams_configureWithTransparentBackground];

  sub_3E9B0();

  sub_3EA24();
}

void sub_3E9B0()
{
  v1 = [v0 view];
  v2 = sub_3D7C4();
  [v1 addSubview:v2];
}

void sub_3EA24()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_airplaneModeInquiry) setDelegate:v0];
  v2 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkInquiry + 24);
  v3 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkInquiry + 32);
  sub_CD08((v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkInquiry), v2);
  v7[3] = sub_41558();
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_8F7D4();
  sub_13EC8();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = *(v3 + 40);

  v5(v8, v7, sub_41748, v4, v2, v3);

  sub_4F30(v7);
  v6 = OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkObservation;
  swift_beginAccess();
  sub_41750(v8, v1 + v6);
  swift_endAccess();
  sub_3F5F4();
}

void sub_3EB70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_3FD74();
  }
}

void sub_3EBC4()
{
  sub_41B8C();
  v1 = sub_332C(&qword_C50D0);
  sub_41B1C(v1);
  sub_41B68();
  __chkstk_darwin(v2);
  v4 = &v16 - v3;
  v26 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_error);
  swift_errorRetain();
  sub_332C(&unk_C3EF0);
  if (swift_dynamicCast())
  {
    v5 = v21;
    v7 = v22;
    v6 = v23;
    v8 = v25;
    v16 = v20;
    if (v25)
    {
      v18 = v24;

      v17 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    v7 = 0;
    v6 = 0;
    v5 = (&def_4BB18 + 1);
  }

  type metadata accessor for Localizations();
  sub_3D710(v4);
  v18 = sub_4D2D0(0xD000000000000015, 0x800000000009F4F0, v4);
  v8 = v9;
  sub_6678(v4, &qword_C50D0);

  v17 = 0;
LABEL_6:
  swift_getErrorValue();
  v10 = v19;
  if (v5 == &def_4BB18 + 1)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
  }

  v11 = sub_3BB64(v7, v6, v10);
  v13 = v12;

  if (v5 == &def_4BB18 + 1 || (, , !v5))
  {
    type metadata accessor for Localizations();
    sub_3D710(v4);
    v14 = sub_4D2D0(0xD000000000000014, 0x800000000009F510, v4);
    v5 = v15;
    sub_6678(v4, &qword_C50D0);
  }

  else
  {
    v14 = v16;
  }

  sub_3F1F0(v18, v8, v11, v13, v14, v5);

  sub_41B74();
}

void sub_3EE58()
{
  sub_41B8C();
  v1 = v0;
  v3 = v2;
  v4 = sub_332C(&qword_C50D0);
  sub_41B1C(v4);
  sub_41B68();
  __chkstk_darwin(v5);
  v7 = v33 - v6;
  v8 = sub_332C(&qword_C40D0);
  sub_41B1C(v8);
  sub_41B68();
  __chkstk_darwin(v9);
  v11 = v33 - v10;
  v12 = sub_8E0F4();
  sub_42F8();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v17);
  v19 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v33 - v20;
  sub_514F0(v3, v11);
  if (sub_33C0(v11, 1, v12) == 1)
  {
    sub_6678(v11, &qword_C40D0);
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v33[1] = v1;
    v25 = v3;
    v26 = *(v14 + 32);
    v26(v21, v11, v12);
    (*(v14 + 16))(v19, v21, v12);
    v27 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v28 = swift_allocObject();
    v26((v28 + v27), v19, v12);
    v3 = v25;
    type metadata accessor for Localizations();
    sub_3D710(v7);
    v22 = sub_4D2D0(0x53474E4954544553, 0xEF4E4F495443415FLL, v7);
    v23 = v29;
    sub_6678(v7, &qword_C50D0);
    (*(v14 + 8))(v21, v12);
    v24 = sub_416EC;
  }

  sub_3D710(v7);
  v30 = sub_516B4(v7, v3);
  v32 = v31;
  sub_6678(v7, &qword_C50D0);
  sub_3F1F0(v30, v32, 0, 0, v22, v23);

  sub_13CA0(v24);
  sub_41B74();
}

void sub_3F188()
{
  v0 = objc_opt_self();
  sub_8E0C4(v1);
  v3 = v2;
  [v0 openStandardURL:v2];
}

void sub_3F1F0(uint64_t a1, NSString a2, uint64_t a3, NSString a4, uint64_t a5, NSString a6)
{
  v12 = sub_3D7C4();
  v13 = sub_1FD3C(v12, &selRef_buttonTitle);
  if (v14)
  {
    if (!a6)
    {
LABEL_31:

      goto LABEL_32;
    }

    if (v13 == a5 && v14 == a6)
    {
    }

    else
    {
      v16 = sub_8FB54();

      if ((v16 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_32;
  }

  v17 = OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController____lazy_storage___contentUnavailableView;
  v18 = sub_1FD3C(*(v6 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController____lazy_storage___contentUnavailableView), &selRef_message);
  if (!v19)
  {
    if (!a4)
    {
      goto LABEL_23;
    }

LABEL_32:
    v26 = OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController____lazy_storage___contentUnavailableView;
    v27 = *(v6 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController____lazy_storage___contentUnavailableView);
    sub_13EC8();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_41668;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_41AB8();
    aBlock[2] = v29;
    aBlock[3] = &unk_B8C88;
    v30 = _Block_copy(aBlock);
    v31 = v27;

    [v31 setButtonAction:v30];
    _Block_release(v30);

    v32 = *(v6 + v26);
    if (a6)
    {
      a6 = sub_8F5C4();
    }

    [v32 setButtonTitle:a6];

    v33 = *(v6 + v26);
    if (a4)
    {
      a4 = sub_8F5C4();
    }

    [v33 setMessage:a4];

    v34 = *(v6 + v26);
    if (a2)
    {
      a2 = sub_8F5C4();
    }

    [v34 setTitle:a2];

    return;
  }

  if (!a4)
  {
    goto LABEL_31;
  }

  if (v18 == a3 && v19 == a4)
  {
  }

  else
  {
    v21 = sub_8FB54();

    if ((v21 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_23:
  v22 = sub_1FD3C(*(v6 + v17), &selRef_title);
  if (!v23)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  if (v22 != a1 || v23 != a2)
  {
    v25 = sub_8FB54();

    if (v25)
    {
      return;
    }

    goto LABEL_32;
  }
}

void sub_3F53C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_4007C();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_retryAction);
    sub_13C90(v4);

    if (v4)
    {
      v4();
      sub_13CA0(v4);
    }
  }
}

void sub_3F5F4()
{
  sub_41B8C();
  v2 = sub_8EE74();
  sub_42F8();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_8814();
  v8 = v7 - v6;
  v23 = sub_8EEA4();
  sub_42F8();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_8814();
  v14 = v13 - v12;
  v15 = sub_8EE84();
  sub_42F8();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_8814();
  sub_41B28();
  sub_41558();
  (*(v17 + 104))(v1, enum case for DispatchQoS.QoSClass.userInitiated(_:), v15);
  v19 = sub_8F7F4();
  (*(v17 + 8))(v1, v15);
  sub_13EC8();
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  v24[4] = sub_415D0;
  v24[5] = v20;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_3FD30;
  v24[3] = &unk_B8BE8;
  v21 = _Block_copy(v24);
  v22 = v0;
  sub_8EE94();
  sub_29A60();
  sub_332C(&unk_C50C0);
  sub_29AB8();
  sub_8F944();
  sub_8F7E4();
  _Block_release(v21);

  (*(v4 + 8))(v8, v2);
  (*(v10 + 8))(v14, v23);

  sub_41B74();
}

uint64_t sub_3F8DC(uint64_t a1)
{
  v2 = sub_8EE74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_8EEA4();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkInquiry);
  v10 = *(a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkInquiry + 24);
  v11 = *(a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkInquiry + 32);
  sub_CD08((a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkInquiry), v10);
  if ((*(v11 + 8))(v10, v11))
  {
    v12 = 4;
  }

  else if ([*(a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_airplaneModeInquiry) isEnabled])
  {
    v12 = 1;
  }

  else
  {
    v13 = *(a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_cellularDataInquiry);
    if ([v13 isSupported] && !objc_msgSend(v13, "isEnabledForDevice"))
    {
      v12 = 2;
    }

    else if ([v13 isSupported] && (v15 = v9[3], v14 = v9[4], sub_CD08(v9, v15), (*(v14 + 16))(v15, v14) == 3) && !objc_msgSend(v13, "isEnabledForBundle"))
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }
  }

  sub_41558();
  v16 = sub_8F7D4();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v17;
  aBlock[4] = sub_4165C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3FD30;
  aBlock[3] = &unk_B8C60;
  v19 = _Block_copy(aBlock);

  sub_8EE94();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_29A60();
  sub_332C(&unk_C50C0);
  sub_29AB8();
  sub_8F944();
  sub_8F7E4();
  _Block_release(v19);

  (*(v3 + 8))(v5, v2);
  return (*(v6 + 8))(v8, v22);
}

void sub_3FC94(char a1)
{
  if (a1 == 4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v2 = Strong;
    sub_3EBC4();
  }

  else
  {
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      return;
    }

    v2 = v3;
    sub_3EE58();
  }
}

uint64_t sub_3FD30(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_3FD74()
{
  sub_3F5F4();
  if (*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_automaticRetry) == 1)
  {
    sub_CD08((v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkInquiry), *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_networkInquiry + 24));
    v1 = sub_41B38();
    if (v2(v1))
    {
      v3 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_retryAction);
      if (v3)
      {
        v3();
      }
    }
  }
}

void sub_3FE00()
{
  v0 = sub_8E084();
  sub_332C(&qword_C50A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_92300;
  *(inited + 32) = 0x707954726F727265;
  *(inited + 40) = 0xE900000000000065;
  swift_getObjectType();
  sub_332C(&qword_C50B0);
  *(inited + 48) = sub_8F604();
  *(inited + 56) = v2;
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x800000000009F4B0;
  v3 = [v0 description];
  v4 = sub_8F5F4();
  v6 = v5;

  *(inited + 80) = v4;
  *(inited + 88) = v6;
  *(inited + 96) = 0x707954746E657665;
  *(inited + 104) = 0xE900000000000065;
  *(inited + 112) = 1701273968;
  *(inited + 120) = 0xE400000000000000;
  v7 = sub_8F574();
  v8 = sub_4137C(v0);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_41160(v10, v11, 0xD000000000000012, 0x800000000009F4D0, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_406C0(0xD000000000000012, 0x800000000009F4D0);
    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(v7 + 24);
      sub_332C(&qword_C50B8);
      sub_8FA74(v14, v15);

      sub_8FA94();
    }
  }

  sub_3D4C4(v7);

  sub_400F0();
}

uint64_t sub_4007C()
{
  v0 = sub_8F574();
  sub_3D4C4(v0);

  sub_400F0();
}

void sub_400F0()
{
  sub_41B8C();
  v2 = sub_8F024();
  sub_42F8();
  v22 = v3;
  __chkstk_darwin(v4);
  sub_8814();
  v7 = v6 - v5;
  v8 = sub_8F194();
  sub_42F8();
  v21 = v9;
  __chkstk_darwin(v10);
  sub_8814();
  sub_41B28();
  v11 = sub_8F264();
  sub_42F8();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_8814();
  v17 = v16 - v15;
  if (*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin19ErrorViewController_objectGraph))
  {
    sub_332C(&unk_C5088);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_92310;
    *(inited + 32) = 1701273968;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 0x726F727245;
    *(inited + 56) = 0xE500000000000000;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x6570795465676170;
    *(inited + 120) = &type metadata for String;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = 0x726F727245534D41;
    *(inited + 104) = 0xE800000000000000;

    v19 = sub_8F574();

    sub_3D1AC(v20, v19);
    sub_8F174();
    sub_8F394();
    sub_8F394();
    sub_8F014();
    sub_8F184();

    (*(v22 + 8))(v7, v2);
    (*(v21 + 8))(v1, v8);
    (*(v13 + 8))(v17, v11);
  }

  sub_41B74();
}

id sub_40538(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v13 = sub_8F5C4();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithFrame:v13 title:a7 style:{a1, a2, a3, a4}];

  return v14;
}

id sub_405D4()
{
  v1 = sub_8F5C4();

  v2 = sub_8F5C4();

  v3 = sub_8E084();
  v4 = [v0 initWithSubsystem:v1 category:v2 error:v3];

  return v4;
}

unint64_t sub_4067C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_8F984(*(v2 + 40));

  return sub_40738(a1, v4);
}

unint64_t sub_406C0(uint64_t a1, uint64_t a2)
{
  sub_8FC04();
  sub_8F644();
  v4 = sub_8FC24();

  return sub_407FC(a1, a2, v4);
}

unint64_t sub_40738(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_E3B0(*(v2 + 48) + 40 * i, v7);
    v5 = sub_8F994();
    sub_17A94(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_407FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_8FB54() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_408B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20060(a4, a1);

  return a2;
}

uint64_t sub_408F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_E3B0(a3, a1);

  return sub_20060(a4, a2);
}

uint64_t sub_40938@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_408B0((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_40970(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_413E4(a1, a2, a3, v47);
  v43 = v47[0];
  v44 = v47[1];
  v45 = v47[2];
  v46 = v48;
  *(&v36 + 1) = a1;

  *&v36 = a3;

  while (1)
  {
    sub_41420(v9, v10, v11, v12, v13, v14, v15, v16, v36, v37[0], v37[1], v38[0], v38[1], v39, v40, *(&v40 + 1), v41, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *&v47[0]);
    v17 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      sub_20688();
    }

    v18 = v39;
    sub_20690(&v40, v38);
    v19 = *a5;
    v21 = sub_406C0(v18, v17);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if (a4)
      {
        if (v20)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_332C(&qword_C3F60);
        sub_8FA84();
        if (v25)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_40BA0(v24, a4 & 1);
      v26 = sub_406C0(v18, v17);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_18;
      }

      v21 = v26;
      if (v25)
      {
LABEL_10:
        v28 = *a5;
        sub_20060(v38, v37);
        sub_4F30(v38);

        v29 = (v28[7] + 32 * v21);
        sub_4F30(v29);
        v9 = sub_20690(v37, v29);
        goto LABEL_14;
      }
    }

    v30 = *a5;
    *(*a5 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v31 = (v30[6] + 16 * v21);
    *v31 = v18;
    v31[1] = v17;
    v9 = sub_20690(v38, (v30[7] + 32 * v21));
    v32 = v30[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_17;
    }

    v30[2] = v34;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_8FB84();
  __break(1u);
  return result;
}

void sub_40BA0(uint64_t a1, char a2)
{
  v5 = v2;
  sub_41BA4();
  sub_332C(&qword_C5098);
  v35 = a2;
  v7 = sub_8FAD4();
  if (!v3[2])
  {
LABEL_32:

LABEL_33:
    *v5 = v7;
    return;
  }

  v8 = 0;
  sub_41B50();
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  if ((v11 & v9) == 0)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v4[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v2;
      goto LABEL_33;
    }

    sub_41BB8();
    v5 = v2;
    if (v33 != v34)
    {
      *v4 = -1 << v32;
    }

    else
    {
      sub_41C04(v32);
    }

    v3[2] = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (v3[6] + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v3[7] + 32 * v18);
    if (v35)
    {
      sub_20690(v22, v36);
    }

    else
    {
      sub_20060(v22, v36);
    }

    sub_8FC04();
    sub_8F644();
    v23 = sub_8FC24() & ~(-1 << *(v7 + 32));
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    sub_41AF4();
LABEL_24:
    sub_41B08();
    *(v14 + v28) |= v29;
    v31 = (*(v7 + 48) + 16 * v30);
    *v31 = v20;
    v31[1] = v21;
    sub_20690(v36, (*(v7 + 56) + 32 * v30));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  sub_41AE0();
  while (++v24 != v26 || (v25 & 1) == 0)
  {
    v27 = v24 == v26;
    if (v24 == v26)
    {
      v24 = 0;
    }

    v25 |= v27;
    if (*(v14 + 8 * v24) != -1)
    {
      sub_41ACC();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_40DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_41BCC();
  a28 = v32;
  a29 = v33;
  v34 = v29;
  v36 = v35;
  sub_41BA4();
  sub_332C(&unk_C50E0);
  v37 = sub_8FAD4();
  if (!v30[2])
  {

LABEL_33:
    *v34 = v37;
    sub_41BE8();
    return;
  }

  v66 = v29;
  v38 = 0;
  sub_41B50();
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & v39;
  v43 = (v40 + 63) >> 6;
  v44 = v37 + 64;
  if ((v41 & v39) == 0)
  {
LABEL_7:
    v46 = v38;
    while (1)
    {
      v38 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v38 >= v43)
      {
        break;
      }

      v47 = v31[v38];
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v42 = (v47 - 1) & v47;
        goto LABEL_12;
      }
    }

    if (v36)
    {
      sub_41BB8();
      if (v64 != v65)
      {
        *v31 = -1 << v63;
      }

      else
      {
        sub_41C04(v63);
      }

      v30[2] = 0;
    }

    v34 = v66;
    goto LABEL_33;
  }

  while (1)
  {
    v45 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
LABEL_12:
    v48 = v45 | (v38 << 6);
    v49 = v30[6] + 40 * v48;
    if (v36)
    {
      v50 = *v49;
      v51 = *(v49 + 16);
      a16 = *(v49 + 32);
      a14 = v50;
      a15 = v51;
      sub_20690((v30[7] + 32 * v48), &a11);
    }

    else
    {
      sub_E3B0(v49, &a14);
      sub_20060(v30[7] + 32 * v48, &a11);
    }

    v52 = sub_8F984(*(v37 + 40)) & ~(-1 << *(v37 + 32));
    if (((-1 << v52) & ~*(v44 + 8 * (v52 >> 6))) == 0)
    {
      break;
    }

    sub_41AF4();
LABEL_24:
    sub_41B08();
    *(v44 + v57) |= v58;
    v60 = *(v37 + 48) + 40 * v59;
    v61 = a14;
    v62 = a15;
    *(v60 + 32) = a16;
    *v60 = v61;
    *(v60 + 16) = v62;
    sub_20690(&a11, (*(v37 + 56) + 32 * v59));
    ++*(v37 + 16);
    if (!v42)
    {
      goto LABEL_7;
    }
  }

  sub_41AE0();
  while (++v53 != v55 || (v54 & 1) == 0)
  {
    v56 = v53 == v55;
    if (v53 == v55)
    {
      v53 = 0;
    }

    v54 |= v56;
    if (*(v44 + 8 * v53) != -1)
    {
      sub_41ACC();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

_OWORD *sub_41020(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_4067C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  sub_332C(&unk_C50F0);
  if (!sub_8FA74(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_4067C(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_8FB84();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = (v18[7] + 32 * v14);
    sub_4F30(v19);

    return sub_20690(a1, v19);
  }

  else
  {
    sub_E3B0(a2, v21);
    return sub_412B4(v14, v21, a1, v18);
  }
}

uint64_t sub_41160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_406C0(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_332C(&qword_C50B8);
  if (!sub_8FA74(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_406C0(a3, a4);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_13:
    result = sub_8FB84();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v6;
  if (v19)
  {
    v23 = (v22[7] + 16 * v18);
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {
    sub_41330(v18, a3, a4, a1, a2, v22);
  }
}

_OWORD *sub_412B4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_20690(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_41330(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_4137C(void *a1)
{
  v1 = [a1 localizedFailureReason];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_8F5F4();

  return v3;
}

uint64_t sub_413E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_41420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_41BCC();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v31 = *v26;
  v32 = v26[1];
  v33 = v26[2];
  v34 = v26[3];
  v35 = v26[4];
  if (v35)
  {
    v36 = v26[3];
LABEL_7:
    v37 = (v35 - 1) & v35;
    v38 = __clz(__rbit64(v35)) | (v36 << 6);
    v39 = (*(v31 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    sub_20060(*(v31 + 56) + 32 * v38, &a9);
    *&a12 = v41;
    *(&a12 + 1) = v40;
    sub_20690(&a9, &a13);

    v42 = *(&a12 + 1);
    v43 = a12;
LABEL_8:
    *v26 = v31;
    v26[1] = v32;
    v26[2] = v33;
    v26[3] = v34;
    v26[4] = v37;
    if (v42)
    {
      v44 = v26[5];
      *&a9 = v43;
      *(&a9 + 1) = v42;
      a10 = a13;
      a11 = a14;
      v44(&a9);
      sub_6678(&a9, &qword_C50A0);
    }

    else
    {
      v30[1] = 0u;
      v30[2] = 0u;
      *v30 = 0u;
    }

    sub_41BE8();
  }

  else
  {
    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= ((v33 + 64) >> 6))
      {
        v42 = 0;
        v43 = 0;
        v37 = 0;
        a13 = 0u;
        a14 = 0u;
        a12 = 0u;
        goto LABEL_8;
      }

      v35 = *(v32 + 8 * v36);
      ++v34;
      if (v35)
      {
        v34 = v36;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

unint64_t sub_41558()
{
  result = qword_C3F30;
  if (!qword_C3F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C3F30);
  }

  return result;
}

uint64_t sub_4159C()
{
  sub_13EC8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_415D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_415F0()
{
  swift_unknownObjectWeakDestroy();
  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_41624()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_41670()
{
  sub_8E0F4();
  sub_887C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_416EC()
{
  v0 = sub_8E0F4();
  sub_41B1C(v0);

  sub_3F188();
}

uint64_t sub_41750(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C50D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_417C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_41810(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  AMSLogKey();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_41A50;
  v9 = v8[3] = &unk_B8D30;
  v10 = v4;
  v5 = v9;
  v6 = v4;
  dispatch_async(v3, v8);

  v7 = v9;
}

_OWORD *sub_418D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_E3B0(*(v3 + 48) + 40 * v10, &v14);
    sub_20060(*(v3 + 56) + 32 * v10, v19);
    v20 = v14;
    v21 = v15;
    *&v22 = v16;
    result = sub_20690(v19, (&v22 + 8));
    v12 = *(&v21 + 1);
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v12)
    {
      v13 = v1[5];
      v14 = v20;
      *&v15 = v21;
      *(&v15 + 1) = v12;
      v16 = v22;
      v17 = v23;
      v18 = v24;
      v13(&v14);
      return sub_6678(&v14, &qword_C4F98);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v12 = 0;
        v9 = 0;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_41A50(uint64_t a1)
{
  v2 = AMSSetLogKey();
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_41C04@<X0>(uint64_t a1@<X8>)
{

  return sub_60FD0(0, (a1 + 63) >> 6, v1);
}

uint64_t ImpressionMetrics.hash(into:)()
{
  v0 = sub_8F1E4();
  sub_42F8();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8F1F4();
  sub_4200C();
  sub_41FC4(v6, v7);
  sub_8F594();
  return (*(v2 + 8))(v5, v0);
}

uint64_t static ImpressionMetrics.== infix(_:_:)()
{
  v0 = sub_8F1E4();
  sub_42F8();
  v2 = v1;
  v4 = __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  sub_8F1F4();
  sub_8F1F4();
  v9 = sub_8F1D4();
  v10 = *(v2 + 8);
  v10(v6, v0);
  v10(v8, v0);
  return v9 & 1;
}

Swift::Int ImpressionMetrics.hashValue.getter()
{
  v0 = sub_8F1E4();
  sub_42F8();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8FC04();
  sub_8F1F4();
  sub_4200C();
  sub_41FC4(v6, v7);
  sub_8F594();
  (*(v2 + 8))(v5, v0);
  return sub_8FC24();
}

Swift::Int sub_41F40()
{
  sub_8FC04();
  ImpressionMetrics.hash(into:)();
  return sub_8FC24();
}

uint64_t sub_41FC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t initializeBufferWithCopyOfBuffer for InsetModifier(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for InsetModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InsetModifier(uint64_t result, int a2, int a3)
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

uint64_t sub_42088(uint64_t a1)
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

uint64_t sub_420A4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_420D4(uint64_t a1, uint64_t a2)
{
  v6 = sub_473C0();
  if (!v2)
  {
    v8 = v6;
    v3 = v7;
    v9 = v6 == 0x6D6F74737563 && v7 == 0xE600000000000000;
    if (v9 || (sub_8FB54() & 1) != 0)
    {

      sub_47A14();
      v3 = v13;
    }

    else
    {
      v14 = v8 == 0x486E6F6974636573 && v3 == 0xED00007265646165;
      if (!v14 && (sub_8FB54() & 1) == 0)
      {
        if (v8 == 0x616E794477656976 && v3 == 0xEB0000000063696DLL)
        {
        }

        else
        {
          v16 = sub_8FB54();

          if ((v16 & 1) == 0)
          {
            [objc_allocWithZone(NSError) init];
            swift_willThrow();
            goto LABEL_8;
          }
        }

        v3 = 1;
        goto LABEL_8;
      }

      v3 = 0;
    }
  }

LABEL_8:
  sub_8F004();
  sub_887C();
  (*(v10 + 8))(a2);
  sub_8EFE4();
  sub_887C();
  (*(v11 + 8))(a1);
  return v3;
}

uint64_t sub_42330()
{
  v0 = sub_8E324();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  result = [v4 deviceIsiPad];
  if ((result & 1) == 0)
  {
    result = _UISolariumEnabled();
    if (result)
    {
      (*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0);
      v6 = sub_8E314();
      result = (*(v1 + 8))(v3, v0);
      if (v6)
      {
        result = [v4 deviceIsiPhone];
        if (result)
        {
          return [objc_opt_self() type];
        }
      }
    }
  }

  return result;
}

uint64_t sub_4250C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_420D4(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_42554(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_332C(&qword_C3598);
    v9 = a1 + *(a3 + 56);

    return sub_33C0(v9, a2, v8);
  }
}

void *sub_425FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C3598);
    v8 = v5 + *(a4 + 56);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for InstallButton()
{
  result = qword_C5168;
  if (!qword_C5168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_426D4()
{
  v0 = sub_CE5C(319, &qword_C3718);
  if (v1 <= 0x3F)
  {
    v0 = sub_16830();
    if (v2 <= 0x3F)
    {
      sub_11510(319, &qword_C3790, &qword_C3798);
      v0 = v3;
      if (v4 <= 0x3F)
      {
        sub_42878();
        v0 = v5;
        if (v6 <= 0x3F)
        {
          sub_114C0();
          v0 = v7;
          if (v8 <= 0x3F)
          {
            sub_11510(319, &qword_C2EC8, &unk_C2ED0);
            v0 = v9;
            if (v10 <= 0x3F)
            {
              sub_11510(319, &qword_C3418, &qword_C55D0);
              if (v12 > 0x3F)
              {
                return v11;
              }

              sub_E69C();
              if (v13 > 0x3F)
              {
                return v11;
              }

              else
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_42878()
{
  if (!qword_C3B60)
  {
    sub_CE5C(255, &qword_C3B68);
    v0 = sub_8F924();
    if (!v1)
    {
      atomic_store(v0, &qword_C3B60);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for InstallButton.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x429ACLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_429E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B6AD8;
  v6._object = a2;
  v4 = sub_8FB14(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_42A30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_429E4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_42A64()
{
  result = qword_C51C8;
  if (!qword_C51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C51C8);
  }

  return result;
}

void sub_42B74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a2;
  v125 = a3;
  v5 = sub_332C(&qword_C3598);
  __chkstk_darwin(v5 - 8);
  sub_42D0();
  v122 = v6;
  sub_43E04();
  __chkstk_darwin(v7);
  v123 = &v114 - v8;
  v136 = sub_8EFE4();
  v130 = *(v136 - 8);
  __chkstk_darwin(v136);
  sub_42D0();
  v124 = v9;
  sub_43E04();
  __chkstk_darwin(v10);
  sub_43E74();
  v129 = v11;
  sub_43E04();
  __chkstk_darwin(v12);
  sub_43E74();
  v128 = v13;
  sub_43E04();
  __chkstk_darwin(v14);
  sub_43E74();
  v127 = v15;
  sub_43E04();
  __chkstk_darwin(v16);
  sub_43E74();
  v126 = v17;
  sub_43E04();
  __chkstk_darwin(v18);
  v20 = &v114 - v19;
  v21 = type metadata accessor for InstallButton();
  sub_4248();
  __chkstk_darwin(v22);
  v24 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E394();
  inited = swift_initStackObject();
  sub_8E544();
  v26 = swift_initStackObject();
  sub_473C0();
  if (v3)
  {
    (*(v130 + 8))(a1, v136);
    sub_8F004();
    sub_4248();
    (*(v27 + 8))(v131);
    return;
  }

  v119 = v20;
  v121 = v26;
  v120 = inited;
  v28 = v130;
  v29 = v136;
  sub_CE5C(0, &qword_C3718);
  v30 = sub_10A14();
  *v24 = v30;
  sub_5D5C(0x656C797473, 0xE500000000000000, v21, v31, v32, v33, v34, v35);
  v117 = v30;
  v118 = v24;
  v24[8] = v36;
  v37 = v119;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_43DB8();
    sub_43CB4(v38, v39);
    sub_115E4();
    swift_allocError();
    *v40 = 0x656C746974;
    v40[1] = 0xE500000000000000;
    v40[2] = v21;
    sub_BBB0();
    (*(v41 + 104))();
    swift_willThrow();
    sub_43E44();

    v42 = *(v28 + 8);
    v42(a1, v29);
    v42(v37, v29);
    v43 = v131;
    v44 = v117;
    sub_8F004();
    sub_4248();
    (*(v45 + 8))(v43);

    return;
  }

  v116 = v21;
  v115 = a1;
  sub_8E534();
  v46 = 0xD000000000000011;
  v119 = *(v28 + 8);
  v119(v37, v136);
  sub_43E5C();
  v47 = v118;
  sub_3A94(&v133, (v118 + 16));
  v48 = sub_10A88(0xD000000000000011, 0x800000000009DD60, v116);
  *(v47 + 56) = v48;
  __chkstk_darwin(v48);
  *(&v114 - 2) = v131;
  sub_BAFC(0x726F6C6F63, 0xE500000000000000, v116, sub_17A8C, (&v114 - 4), v49, v50, v51);
  *(v47 + 64) = v52;
  sub_43E38();
  v53 = sub_473C0();
  v55 = v126;
  *(v47 + 72) = v53;
  *(v47 + 80) = v54;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_43DB8();
    sub_43CB4(v56, v57);
    v58 = sub_BC40();
    sub_43E80(v58, v59);
    *v60 = 0xD000000000000010;
    v60[1] = 0x800000000009F620;
    v60[2] = 0xD000000000000011;
    sub_BBB0();
    (*(v61 + 104))();
    v3 = v55;
    swift_willThrow();
    sub_43DF4();
    v62();

    sub_43DE4();
  }

  else
  {
    sub_43E10();
    sub_43DF4();
    v95();
    sub_43E5C();
  }

  v63 = v134;
  *(v47 + 88) = v133;
  *(v47 + 104) = v63;
  *(v47 + 120) = v135;
  sub_8EFF4();
  v64 = sub_8EFB4();
  v130 = v28 + 8;
  if (v64)
  {
    goto LABEL_12;
  }

  sub_43E10();
  v46 = v3;
  if (v3)
  {

    sub_17B74();
    sub_3410(v132, &qword_C2DE0);
    sub_43E38();
LABEL_12:
    sub_8F504();
    sub_43DB8();
    sub_43CB4(v65, v66);
    v67 = sub_BC40();
    sub_43E80(v67, v68);
    *v69 = 0xD000000000000011;
    v69[1] = 0x800000000009DDC0;
    v69[2] = v46;
    sub_BBB0();
    (*(v70 + 104))();
    swift_willThrow();
    sub_43DF4();
    v71();

    sub_43DE4();
    goto LABEL_13;
  }

  sub_43DF4();
  v96();
  sub_43E5C();
LABEL_13:
  v72 = v134;
  *(v47 + 128) = v133;
  *(v47 + 144) = v72;
  *(v47 + 160) = v135;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_43DB8();
    sub_43CB4(v73, v74);
    sub_115E4();
    swift_allocError();
    *v75 = 0x656C746974627573;
    v75[1] = 0xE800000000000000;
    sub_43E38();
    *(v76 + 16) = 0;
    sub_BBB0();
    (*(v77 + 104))();
    swift_willThrow();
    sub_43DD0();
    v78();

    sub_43DE4();
  }

  else
  {
    sub_8E534();
    sub_43DD0();
    v97();
    sub_43E5C();
    sub_43E38();
  }

  v79 = v134;
  *(v47 + 168) = v133;
  *(v47 + 184) = v79;
  *(v47 + 200) = v135;
  v80 = sub_473C0();
  v81 = v131;
  v82 = v129;
  *&v133 = v80;
  *(&v133 + 1) = v83;
  sub_8F9B4();
  sub_8EFF4();
  if ((sub_8EFB4() & 1) == 0)
  {
    v84 = v122;
    sub_43AE8(v82, v81, v122);
    v85 = sub_8F204();
    if (sub_33C0(v84, 1, v85) != 1)
    {
      sub_43DD0();
      v98();
      sub_BBB0();
      v94 = v123;
      (*(v99 + 32))(v123, v84, v85);
      sub_33E8(v94, 0, 1, v85);
      goto LABEL_22;
    }

    sub_3410(v84, &qword_C3598);
  }

  sub_8F504();
  sub_43DB8();
  sub_43CB4(v86, v87);
  v88 = sub_BC40();
  sub_43E80(v88, v89);
  *v90 = 0xD000000000000011;
  v90[1] = 0x800000000009DDE0;
  v90[2] = 0;
  sub_BBB0();
  (*(v91 + 104))();
  swift_willThrow();
  sub_43DD0();
  v92();

  v93 = sub_8F204();
  v94 = v123;
  sub_33E8(v123, 1, 1, v93);
LABEL_22:
  sub_11068(v94, v47);
  v100 = v124;
  v101 = v115;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_43DB8();
    sub_43CB4(v102, v103);
    v104 = sub_BC40();
    sub_43E80(v104, v105);
    *v106 = 0x6575676573;
    v106[1] = 0xE500000000000000;
    v106[2] = 0;
    sub_BBB0();
    (*(v107 + 104))();
    swift_willThrow();
    sub_43E44();

    v108 = v136;
    v109 = v119;
    v119(v101, v136);
    v109(v100, v108);

    sub_43DE4();
  }

  else
  {
    sub_8E384();
    sub_43E44();

    v112 = v136;
    v113 = v119;
    v119(v115, v136);
    v113(v100, v112);
    sub_43E5C();
  }

  v110 = v134;
  *v47 = v133;
  *(v47 + 16) = v110;
  *(v47 + 32) = v135;
  sub_43CF8(v47, v125);
  sub_8F004();
  sub_4248();
  (*(v111 + 8))(v81);
  sub_43D5C(v47);
}

uint64_t sub_43AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F1C4();
  v13 = sub_8F204();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t sub_43CB4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_115E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_43CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_43D5C(uint64_t a1)
{
  v2 = type metadata accessor for InstallButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_43DE4()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t sub_43E10()
{

  return sub_8E384();
}

uint64_t sub_43E44()
{
}

uint64_t sub_43E5C()
{

  return sub_3A94((v0 - 208), v0 - 160);
}

uint64_t sub_43E8C()
{
  swift_getKeyPath();
  sub_332C(&unk_C5220);
  sub_444F0();

  if (v45)
  {
    v1 = sub_3A94(&v43, v47);
    sub_44508(v1, v2, v3, v4, v5, v6, v7, v8, v39, v41, v43, *(&v43 + 1), v44, v45, v46, v47[0]);
    sub_378B8();
    sub_4F30(v47);
  }

  else
  {
    sub_13E24(&v43, &unk_C55C0);
    sub_3794C();
  }

  swift_getKeyPath();
  sub_444F0();

  sub_44508(v9, v10, v11, v12, v13, v14, v15, v16, v39, v41, v43, *(&v43 + 1), v44, v45, v46, v47[0]);
  sub_378C4();
  sub_4F30(v47);
  swift_getKeyPath();
  sub_444F0();

  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_style) = v47[0];
  sub_44774();
  swift_getKeyPath();
  sub_444F0();

  sub_4471C(v47[0]);
  swift_getKeyPath();
  sub_444D0();

  v17 = v43;
  swift_getKeyPath();
  sub_8F044();

  swift_getKeyPath();
  sub_8F044();

  sub_44A28(v17, v42, v47[0], v47[1]);

  swift_getKeyPath();
  sub_444D0();

  if (v45)
  {
    v18 = sub_3A94(&v43, v47);
    v26 = sub_44508(v18, v19, v20, v21, v22, v23, v24, v25, v40, v42, v43, *(&v43 + 1), v44, v45, v46, v47[0]);
    sub_44B7C(v26, v27);
    sub_4F30(v47);
  }

  else
  {
    sub_13E24(&v43, &qword_C2DE0);
  }

  swift_getKeyPath();
  sub_444D0();

  if (!v45)
  {
    return sub_13E24(&v43, &qword_C2DE0);
  }

  v28 = sub_3A94(&v43, v47);
  v36 = sub_44508(v28, v29, v30, v31, v32, v33, v34, v35, v40, v42, v43, *(&v43 + 1), v44, v45, v46, v47[0]);
  sub_44BA4(v36, v37);
  return sub_4F30(v47);
}

uint64_t sub_44160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for InstallButtonComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_441C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for InstallButtonComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_44230(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_44284()
{
  swift_getWitnessTable();

  return sub_8E3D4();
}

uint64_t sub_44300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_4437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_44488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_444D0()
{

  return sub_8F044();
}

uint64_t sub_444F0()
{

  return sub_8F044();
}

id sub_44514(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = sub_8F5C4();
  }

  else
  {
    v8 = 0;
  }

  v9 = [swift_getObjCClassFromMetadata() _requestWithID:a1 kind:a2 context:a3 clientID:v8];

  return v9;
}

void sub_445BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_44628()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_8F554().super.isa;

  v2 = [v0 initWithFields:isa];

  return v2;
}

void sub_446A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_color);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_style);
    v3 = v1;
    sub_46328(v3, v2);
  }
}

void sub_4471C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_color);
  *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_color) = a1;
  v3 = a1;

  sub_446A8();
}

void sub_44774()
{
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_style;
  sub_45490(*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_style));
  *(*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_dynamicButtonView) + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_style) = *(v0 + v1);
  sub_383B0();
}

id sub_447C4(double a1, double a2, double a3, double a4)
{
  v6 = v4;
  v11 = sub_8EB34();
  __chkstk_darwin(v11 - 8);
  sub_8814();
  v12 = sub_8EB64();
  sub_42F8();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_8814();
  sub_47394();
  v16 = &v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_defaultIdentifier];
  *v16 = 0xD00000000000001CLL;
  v16[1] = 0x800000000009E090;
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_additionalMetrics] = 0;
  v17 = &v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_postActionRunner];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_preActionRunner];
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_dynamicButtonView;
  *&v4[v19] = [objc_allocWithZone(type metadata accessor for DynamicButtonView()) init];
  sub_8EB24();
  sub_8EB74();
  sub_8EB54();
  (*(v14 + 8))(v5, v12);
  v20 = OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_lockupView;
  *&v6[v20] = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v6[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_color] = 0;
  v6[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_style] = 0;
  v23.receiver = v6;
  v23.super_class = type metadata accessor for InstallButtonComponent();
  v21 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  sub_45380();

  return v21;
}

void sub_44A28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  if (!a4)
  {
    a3 = *(v4 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_defaultIdentifier);
    v8 = *(v4 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_defaultIdentifier + 8);
  }

  *(v4 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_additionalMetrics) = a2;

  v9 = OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_lockupView;
  [*(v4 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_lockupView) setLockupSize:ASCLockupViewSizeMediumOfferButton];
  v10 = *(v4 + v9);
  sub_CE5C(0, &qword_C3948);
  v11 = ASCLockupKindApp;
  v12 = ASCLockupContextStandard;
  v13 = v10;
  v14 = sub_44514(a1, v11, v12, a3, v8);
  [v13 setRequest:v14];
}

uint64_t sub_44BCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_13EC8();
  v9 = swift_allocObject();
  swift_weakInit();
  sub_13D04(a1, v14);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_3A94(v14, v10 + 24);
  v11 = (v5 + *a4);
  v12 = *v11;
  *v11 = a5;
  v11[1] = v10;

  sub_13CA0(v12);
}

uint64_t sub_44C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_8E5D4();
  __chkstk_darwin(v4 - 8);
  sub_8814();
  v7 = v6 - v5;
  v8 = sub_8F264();
  sub_42F8();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_8814();
  sub_47394();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_8E5F4();
    sub_8F174();
    sub_8F394();
    v14 = *&v16[0];
    sub_8F394();
    (*(v10 + 16))(v7, v2, v8);
    v15 = sub_332C(&unk_C5850);
    sub_473A0(v15);
    memset(v16, 0, sizeof(v16));
    v17 = -1;
    (*(*v14 + 216))(a2, v7, v13, v16);

    sub_6678(v16, &qword_C3940);
    sub_CE00(v7);
    return (*(v10 + 8))(v2, v8);
  }

  return result;
}

uint64_t sub_44F34()
{
  v1 = [*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_dynamicButtonView) accessibilityLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_8F5F4();

  return v3;
}

id sub_4503C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallButtonComponent();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_450C8(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for InstallButtonComponent();
  objc_msgSendSuper2(&v4, "setHighlighted:", a1 & 1);
  return sub_88C40([v1 isHighlighted], 1);
}

id sub_45128()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallButtonComponent();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_3794C();
  return sub_37958();
}

void sub_451C4()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for InstallButtonComponent();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_dynamicButtonView];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  v11 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_lockupView];
  [v1 bounds];
  [v11 setFrame:?];
}

id sub_45380()
{
  v1 = [v0 contentView];
  v2 = [objc_opt_self() ams_clear];
  [v1 setBackgroundColor:v2];

  sub_45728();
  [*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_dynamicButtonView] setUserInteractionEnabled:1];
  v3 = [v0 contentView];
  [v3 addSubview:*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_lockupView]];

  [v0 setIsAccessibilityElement:1];
  v4 = UIAccessibilityTraitButton;

  return [v0 setAccessibilityTraits:v4];
}

void sub_45490(char a1)
{
  if (!a1)
  {
    sub_45604();
    v4 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_color];
    if (v4)
    {
      v12 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_color];
    }

    else
    {
      v7 = [v1 tintColor];
      if (!v7)
      {
        __break(1u);
        goto LABEL_19;
      }

      v4 = 0;
      v12 = v7;
    }

    v8 = v4;
    v2 = v12;
    v3 = 0;
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    v5 = [v1 contentView];
    [v5 addSubview:*&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_dynamicButtonView]];

    v6 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_color];
    if (v6)
    {
      v12 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_color];
LABEL_14:
      v10 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_dynamicButtonView];
      v11 = v6;
      [v10 setTintColor:v12];
      goto LABEL_15;
    }

    v9 = [v1 tintColor];
    if (v9)
    {
      v6 = 0;
      v12 = v9;
      goto LABEL_14;
    }

LABEL_19:
    __break(1u);
    return;
  }

  sub_45604();
  v2 = [objc_opt_self() ams_clear];
  v12 = v2;
  v3 = 1;
LABEL_11:
  sub_46328(v2, v3);
LABEL_15:
}

void sub_45604()
{
  v1 = sub_332C(&qword_C52A0);
  __chkstk_darwin(v1 - 8);
  sub_8EA64();
  v2 = sub_8EA74();
  sub_473A0(v2);
  sub_8F8B4();
  v3 = sub_8EB64();
  v6[3] = v3;
  v6[4] = &protocol witness table for _Glass;
  v4 = sub_4ED0(v6);
  (*(*(v3 - 8) + 16))(v4, &v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_glassView], v3);
  sub_8F8A4();
  v5 = [v0 contentView];
  [v5 addSubview:*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_dynamicButtonView]];
}

void sub_45728()
{
  v1 = objc_opt_self();
  sub_13EC8();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v16[4] = sub_47274;
  v16[5] = v2;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_445BC;
  v16[3] = &unk_B9018;
  v3 = _Block_copy(v16);
  v4 = v0;

  [v1 createConnectionWithCompletionBlock:v3];
  _Block_release(v3);
  v5 = OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_lockupView;
  [*&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_lockupView] setAlpha:0.02];
  [*&v4[v5] setShowsPlaceholderContent:1];
  [*&v4[v5] setDelegate:v4];
  [*&v4[v5] setUserInteractionEnabled:1];
  v6 = *&v4[v5];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  v10 = [v7 clearColor];
  v11 = [v7 clearColor];
  v12 = [v7 systemBlueColor];
  v13 = [v7 systemFillColor];
  v14 = objc_allocWithZone(ASCOfferTheme);
  v15 = sub_4714C(v9, v10, v11, v12, v13);
  [v8 setOfferTheme:v15];
}

uint64_t sub_4595C(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v3 = sub_8E304();
    sub_4D6C(v3, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92300;
    v15 = type metadata accessor for InstallButtonComponent();
    v14[0] = a2;
    v4 = a2;
    v5 = AMSLogKey();
    if (v5)
    {
      v6 = v5;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v14);
    sub_8E244();
    swift_getErrorValue();
    v15 = v13;
    v11 = sub_4ED0(v14);
    (*(*(v13 - 8) + 16))(v11);
    sub_8E264();
    sub_6678(v14, &unk_C3EB0);
    sub_8E2D4();
  }

  else
  {
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v7 = sub_8E304();
    sub_4D6C(v7, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92310;
    v15 = type metadata accessor for InstallButtonComponent();
    v14[0] = a2;
    v8 = a2;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v14);
    sub_8E244();
    sub_8E2E4();
  }
}

void sub_45D44(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_47250;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_3FD30;
  v6[3] = &unk_B8FC8;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateWithDuration:5243136 delay:v4 options:0 animations:0.3 completion:0.0];
  _Block_release(v4);
}

uint64_t sub_45E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8EE74();
  sub_42F8();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_8814();
  sub_47394();
  v22 = sub_8EEA4();
  sub_42F8();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_8814();
  v15 = v14 - v13;
  sub_CE5C(0, &qword_C3F30);
  v16 = sub_8F7D4();
  sub_13EC8();
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3FD30;
  aBlock[3] = a3;
  v18 = _Block_copy(aBlock);
  v19 = v3;

  sub_8EE94();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_29A60();
  sub_332C(&unk_C50C0);
  sub_29AB8();
  sub_8F944();
  sub_8F7E4();
  _Block_release(v18);

  (*(v8 + 8))(v4, v6);
  return (*(v11 + 8))(v15, v22);
}

void sub_460C4(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_47220;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_3FD30;
  v6[3] = &unk_B8F28;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateWithDuration:v4 animations:0.1];
  _Block_release(v4);
}

id sub_461B4(uint64_t a1, double a2, double a3)
{
  [*(a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_dynamicButtonView) setAlpha:?];
  v5 = *(a1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_lockupView);

  return [v5 setAlpha:a3];
}

uint64_t sub_4621C()
{
  v2 = sub_8EB64();
  sub_42F8();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_8814();
  sub_47394();
  (*(v4 + 16))(v1, v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_glassView, v2);
  v7[3] = v2;
  v7[4] = &protocol witness table for _Glass;
  sub_4ED0(v7);
  sub_8EB44();
  (*(v4 + 8))(v1, v2);
  return sub_8F8A4();
}

id sub_46328(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  result = [*(v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_dynamicButtonView) setTintColor:a1];
  if (v3 <= 1)
  {

    return sub_4621C();
  }

  return result;
}

id sub_463DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallButtonComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InstallButtonComponent()
{
  result = qword_C5290;
  if (!qword_C5290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_46544()
{
  result = sub_8EB64();
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

id sub_46618(void *a1)
{
  v2 = [a1 container];
  swift_getObjectType();
  sub_48804();
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = v4 + v4;
  [objc_msgSend(a1 "container")];
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = objc_opt_self();
  v9 = [v8 absoluteDimension:{fmin(v7 - v5, 360.0)}];
  v10 = [v8 estimatedDimension:50.0];
  v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

  return v11;
}

uint64_t sub_46758()
{
  v1 = v0;
  v2 = sub_8F5F4();
  v4 = v3;
  if (v2 == sub_8F5F4() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_4734C();

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_45E44();
LABEL_9:
  v8 = sub_8F5F4();
  v10 = v9;
  if (v8 == sub_8F5F4() && v10 == v11)
  {
    goto LABEL_20;
  }

  v13 = sub_4734C();

  if (v13)
  {
    goto LABEL_21;
  }

  v14 = sub_8F5F4();
  v16 = v15;
  if (v14 == sub_8F5F4() && v16 == v17)
  {
LABEL_20:
  }

  else
  {
    v19 = sub_47370();

    if ((v19 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_21:
  sub_45D1C();
  v20 = sub_8F5F4();
  v22 = v21;
  if (v20 == sub_8F5F4() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_47370();

    if ((v25 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v26 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_preActionRunner];
  if (v26)
  {
    v27 = qword_C2CE0;

    if (v27 != -1)
    {
      sub_13E98();
    }

    v28 = sub_8E304();
    sub_4D6C(v28, qword_D0378);
    sub_332C(&unk_C3920);
    v29 = sub_8E2A4();
    sub_13EB8(v29);
    *(swift_allocObject() + 16) = xmmword_92310;
    v56 = type metadata accessor for InstallButtonComponent();
    v55[0] = v1;
    v30 = v1;
    v31 = AMSLogKey();
    if (v31)
    {
      v32 = v31;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v55);
    sub_8E244();
    sub_8E2E4();

    v26(v33);
    sub_13CA0(v26);
  }

LABEL_34:
  v34 = sub_8F5F4();
  v36 = v35;
  if (v34 != sub_8F5F4() || v36 != v37)
  {
    v39 = sub_8FB54();

    if (v39)
    {
      goto LABEL_46;
    }

    v40 = sub_8F5F4();
    v42 = v41;
    if (v40 != sub_8F5F4() || v42 != v43)
    {
      v45 = sub_8FB54();

      if ((v45 & 1) == 0)
      {
        return result;
      }

      goto LABEL_46;
    }
  }

LABEL_46:
  result = sub_45E44();
  v47 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_postActionRunner];
  if (v47)
  {
    v48 = qword_C2CE0;

    if (v48 != -1)
    {
      sub_13E98();
    }

    v49 = sub_8E304();
    sub_4D6C(v49, qword_D0378);
    sub_332C(&unk_C3920);
    v50 = sub_8E2A4();
    sub_13EB8(v50);
    *(swift_allocObject() + 16) = xmmword_92310;
    v56 = type metadata accessor for InstallButtonComponent();
    v55[0] = v1;
    v51 = v1;
    v52 = AMSLogKey();
    if (v52)
    {
      v53 = v52;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v55);
    sub_8E244();
    sub_8E2E4();

    v47(v54);
    return sub_13CA0(v47);
  }

  return result;
}

id sub_46DCC()
{
  v1 = sub_8E304();
  sub_42F8();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_8814();
  v7 = v6 - v5;
  if (qword_C2CE0 != -1)
  {
    sub_13E98();
  }

  v8 = sub_4D6C(v1, qword_D0378);
  (*(v3 + 16))(v7, v8, v1);
  sub_332C(&unk_C3920);
  v9 = sub_8E2A4();
  sub_13EB8(v9);
  *(swift_allocObject() + 16) = xmmword_92300;
  v18 = type metadata accessor for InstallButtonComponent();
  v17[0] = v0;
  v10 = v0;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v17);
  sub_8E244();
  v13 = OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_additionalMetrics;
  v14 = *&v10[OBJC_IVAR____TtC19CoreDynamicUIPlugin22InstallButtonComponent_additionalMetrics];
  if (v14)
  {
    v15 = sub_332C(&qword_C3798);
  }

  else
  {
    v15 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v14;
  v18 = v15;

  sub_8E264();
  sub_6678(v17, &unk_C3EB0);
  sub_8E2E4();

  (*(v3 + 8))(v7, v1);
  if (!*&v10[v13])
  {
    sub_8F574();
  }

  sub_CE5C(0, &unk_C3930);

  return sub_44628();
}

id sub_4714C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v11 = [v5 initWithTitleBackgroundColor:a1 titleTextColor:a2 subtitleTextColor:a3 iconTintColor:a4 progressColor:a5];

  return v11;
}

uint64_t sub_471CC()
{
  sub_13EC8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_47208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4727C()
{
  swift_weakDestroy();
  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_472D4()
{

  sub_4F30(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_4734C()
{

  return sub_8FB54();
}

uint64_t sub_47370()
{

  return sub_8FB54();
}

uint64_t sub_473A0(uint64_t a1)
{

  return sub_33E8(v1, 0, 1, a1);
}

uint64_t sub_473C0()
{
  sub_47DD4();
  sub_42F8();
  v1 = v0;
  __chkstk_darwin();
  sub_BB2C();
  if ((sub_8EFB4() & 1) != 0 || (v2 = sub_8EFC4(), !v3))
  {
    v4 = sub_8F504();
    sub_923C();
    v7 = sub_4264();
    sub_47DC0(v7, v8);
    sub_42A0();
    (*(v9 + 104))();
    swift_willThrow();
    v10 = *(v1 + 8);

    v11 = sub_BBBC();
    v10(v11);
  }

  else
  {
    v4 = v2;
    v5 = sub_BBBC();
    v6(v5);
  }

  return v4;
}

uint64_t sub_47508()
{
  sub_47DD4();
  sub_42F8();
  v1 = v0;
  __chkstk_darwin();
  sub_BB2C();
  if ((sub_8EFB4() & 1) != 0 || (v2 = sub_8EF84(), v2 == 2))
  {
    v3 = sub_8F504();
    sub_923C();
    v4 = sub_4264();
    sub_47DC0(v4, v5);
    sub_42A0();
    (*(v6 + 104))();
    swift_willThrow();
    v7 = *(v1 + 8);

    v8 = sub_BBBC();
    v7(v8);
  }

  else
  {
    v3 = v2;
    v9 = sub_BBBC();
    v10(v9);
  }

  return v3 & 1;
}

uint64_t sub_47648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_332C(&qword_C33A8);
  __chkstk_darwin(v7 - 8);
  v9 = v22 - v8;
  v10 = sub_8EFE4();
  sub_42F8();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8EFF4();
  if ((sub_8EFB4() & 1) == 0)
  {
    v22[1] = v3;
    v16 = a3;
    sub_8EF94();
    v17 = sub_8F4F4();
    if (sub_33C0(v9, 1, v17) != 1)
    {
      a2 = sub_8F4E4();
      (*(*(v17 - 8) + 8))(v9, v17);
      (*(v12 + 8))(v15, v10);
      return a2;
    }

    sub_13E24(v9, &qword_C33A8);
    a3 = v16;
  }

  v18 = sub_8F504();
  sub_923C();
  swift_allocError();
  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  (*(*(v18 - 8) + 104))(v19, enum case for JSONError.missingProperty(_:), v18);
  swift_willThrow();
  v20 = *(v12 + 8);

  v20(v15, v10);
  return a2;
}

uint64_t sub_478DC()
{
  sub_47DD4();
  sub_42F8();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_BB2C();
  if (sub_8EFB4() & 1) != 0 || (v3 = sub_8EF64(), (v4))
  {
    v5 = sub_8F504();
    sub_923C();
    v6 = sub_4264();
    sub_47DC0(v6, v7);
    sub_42A0();
    (*(v8 + 104))();
    swift_willThrow();
    v9 = *(v1 + 8);

    v10 = sub_BBBC();
    v9(v10);
  }

  else
  {
    v5 = v3;
    v11 = sub_BBBC();
    v12(v11);
  }

  return v5;
}

uint64_t sub_47A14()
{
  sub_47DD4();
  sub_42F8();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_BB2C();
  if (sub_8EFB4() & 1) != 0 || (sub_8EFA4(), (v3))
  {
    sub_8F504();
    sub_923C();
    v4 = sub_4264();
    sub_47DC0(v4, v5);
    sub_42A0();
    (*(v6 + 104))();
    swift_willThrow();
    v7 = *(v1 + 8);

    v8 = sub_BBBC();
    return v7(v8);
  }

  else
  {
    v10 = sub_BBBC();
    return v11(v10);
  }
}

uint64_t sub_47B4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8EFC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_47B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = sub_332C(&qword_C40D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_8EFE4();
  sub_42F8();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  sub_8EF74();
  v16 = sub_8E0F4();
  if (sub_33C0(v9, 1, v16) == 1)
  {
    sub_13E24(v9, &qword_C40D0);
LABEL_4:
    sub_8F504();
    sub_923C();
    sub_4264();
    *v17 = a1;
    v17[1] = a2;
    v17[2] = a3;
    sub_42A0();
    (*(v18 + 104))();
    swift_willThrow();
    v19 = *(v12 + 8);

    return v19(v15, v10);
  }

  (*(v12 + 8))(v15, v10);
  sub_42A0();
  return (*(v21 + 32))(v23, v9, v16);
}

void *sub_47DC0(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v4;
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

uint64_t sub_47DD4()
{

  return sub_8EFE4();
}

uint64_t sub_47DF8()
{
  sub_CE5C(0, &qword_C40E8);
  v1 = v0;
  sub_332C(&qword_C4F88);
  if (swift_dynamicCast())
  {
    sub_3A94(v6, &v8);
    v2 = *(&v9 + 1);
    v3 = v10;
    sub_CD08(&v8, *(&v9 + 1));
    v4 = (*(v3 + 8))(v2, v3);
    sub_4F30(&v8);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_13E24(v6, &qword_C4F90);
    v8 = 0u;
    v9 = 0u;
    v4 = sub_22C6C(0, 0, &v8);
    sub_13E24(&v8, &unk_C3EB0);
  }

  return v4;
}

uint64_t sub_47F24@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = sub_332C(&qword_C7480);
  sub_8F584();
  swift_getWitnessTable();
  return sub_8F694();
}

uint64_t sub_48008(uint64_t a1)
{
  sub_20060(a1, v4);
  if ((sub_48758() & 1) == 0 && (sub_48758() & 1) == 0 && (sub_48758() & 1) == 0 && (sub_48758() & 1) == 0)
  {
    sub_CE5C(0, &qword_C3ED0);
    if (sub_48758())
    {
    }

    else
    {
      if (!sub_48758())
      {
        v1 = 0;
        goto LABEL_10;
      }
    }
  }

  v1 = 1;
LABEL_10:
  sub_4F30(v4);
  return v1;
}

double sub_480DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_48008(a1) & 1) == 0)
  {
    sub_20060(a1, v13);
    sub_332C(&qword_C4F88);
    if (sub_48778())
    {
      sub_3A94(&v10, v14);
      v5 = v15;
      v6 = v16;
      sub_CD08(v14, v15);
      v7 = (*(v6 + 8))(v5, v6);
      *(a2 + 24) = sub_332C(&qword_C7480);
      *a2 = v7;
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      sub_13E24(&v10, &qword_C4F90);
      sub_20060(a1, v13);
      sub_332C(&qword_C4FA0);
      if (!sub_48778())
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        sub_13E24(&v10, &qword_C4FA8);
        result = 0.0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }

      sub_3A94(&v10, v14);
      v8 = v15;
      v9 = v16;
      sub_CD08(v14, v15);
      (*(v9 + 8))(v8, v9);
    }

    sub_4F30(v14);
    return result;
  }

  sub_20060(a1, a2);
  return result;
}

uint64_t sub_482A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a1;
  v24 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = __chkstk_darwin(TupleTypeMetadata2);
  v12 = &v23 - v11;
  v13 = *(a4 - 8);
  __chkstk_darwin(v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v15;
  v16 = *(v9 + 16);
  v16(v12, a2, TupleTypeMetadata2);
  (*(v13 + 32))(v15, &v12[*(TupleTypeMetadata2 + 48)], a4);
  v17 = *(*(a3 - 8) + 8);
  v17(v12, a3);
  v16(v12, v24, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  sub_8FB04();
  v17(v12, a3);
  sub_8F584();
  v28[3] = a4;
  v19 = sub_4ED0(v28);
  v20 = v25;
  (*(v13 + 16))(v19, v25, a4);
  sub_480DC(v28, v29);
  sub_4F30(v28);
  sub_21F34(v29, v30);
  v21 = *(v13 + 8);
  v21(v20, a4);
  return (v21)(&v12[v18], a4);
}

uint64_t sub_48554@<X0>(uint64_t *a1@<X8>)
{
  sub_8F724();
  swift_getWitnessTable();
  v2 = sub_8F684();
  result = sub_332C(&qword_C52A8);
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_4860C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_8F724();
  v8[3] = a2;
  v6 = sub_4ED0(v8);
  (*(*(a2 - 8) + 16))(v6, a1, a2);
  sub_480DC(v8, a3);
  return sub_4F30(v8);
}

uint64_t sub_486B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_47DF8();
  result = sub_332C(&qword_C7480);
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_48758()
{

  return swift_dynamicCast();
}

uint64_t sub_48778()
{

  return swift_dynamicCast();
}

void sub_48798()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    sub_42330();
  }
}

uint64_t sub_48804()
{
  [v0 contentSize];

  return sub_42330();
}

BOOL sub_48838()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (((v2 - 1) & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    return 0;
  }

  v4 = [v0 window];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;

  return v7 >= 400.0;
}

uint64_t sub_488FC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v70 = a3;
  v69 = sub_8E0F4();
  sub_42F8();
  v68 = v4;
  __chkstk_darwin(v5);
  sub_42BC();
  v76 = v6;
  v7 = sub_332C(&qword_C2DD0);
  __chkstk_darwin(v7 - 8);
  v80 = &v66 - v8;
  v9 = sub_8EFE4();
  sub_42F8();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v75 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v74 = &v66 - v16;
  __chkstk_darwin(v15);
  v18 = &v66 - v17;
  v83 = sub_8F0C4();
  sub_42F8();
  v81 = v19;
  __chkstk_darwin(v20);
  sub_42BC();
  v73 = v21;
  v22 = type metadata accessor for LinkAction();
  sub_4248();
  __chkstk_darwin(v23);
  sub_42BC();
  v82 = v24;
  sub_8E394();
  inited = swift_initStackObject();
  v26 = a1;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  v72 = inited;
  v78 = v9;
  v79 = v22;
  v77 = a1;
  v27 = v80;
  sub_491D0(v18, v88, v80);
  v28 = v83;
  if (sub_33C0(v27, 1, v83) == 1)
  {
    sub_3410(v27, &qword_C2DD0);
    v26 = v77;
    v9 = v78;
    v22 = v79;
LABEL_4:
    sub_8F504();
    sub_497F4();
    sub_497AC(v29, v30);
    sub_4264();
    strcpy(v31, "actionMetrics");
    *(v31 + 7) = -4864;
    *(v31 + 2) = v22;
    sub_42A0();
    (*(v32 + 104))();
    swift_willThrow();

    v33 = *(v11 + 8);
    v33(v26, v9);
    v33(v18, v9);
    v34 = 0;
    v35 = v82;
    goto LABEL_5;
  }

  v38 = *(v11 + 8);
  v39 = v78;
  v38(v18, v78);
  v40 = *(v81 + 32);
  v41 = v73;
  v40(v73, v27, v28);
  v42 = v79;
  v40(v82 + v79[5], v41, v28);
  v43 = v74;
  sub_8EFF4();
  v44 = sub_8EFB4();
  v67 = v38;
  v66 = v11 + 8;
  if (v44)
  {
    goto LABEL_11;
  }

  v45 = v71;
  sub_8E384();
  v42 = v45;
  if (v45)
  {

    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    sub_3410(&v84, &qword_C2DE0);
    v39 = v78;
    v42 = v79;
    v38 = v67;
LABEL_11:
    sub_8F504();
    sub_497F4();
    sub_497AC(v46, v47);
    sub_4264();
    strcpy(v48, "failureAction");
    *(v48 + 7) = -4864;
    *(v48 + 2) = v42;
    sub_42A0();
    (*(v49 + 104))(v50);
    swift_willThrow();
    v38(v43, v39);

    v51 = v42;
    sub_49850();
    goto LABEL_12;
  }

  v67(v43, v78);
  sub_3A94(&v84, v87);
  v51 = v79;
LABEL_12:
  v35 = v82;
  sub_4982C(*(v51 + 24));
  v52 = v75;
  v53 = v77;
  sub_8EFF4();
  v54 = sub_8EFB4();
  v55 = v76;
  if ((v54 & 1) == 0)
  {
    sub_8E384();
    if (!v42)
    {
      v64 = sub_4980C();
      v65(v64);
      sub_3A94(&v84, v87);
      v51 = v79;
      goto LABEL_16;
    }

    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    sub_3410(&v84, &qword_C2DE0);
    v51 = v79;
  }

  sub_8F504();
  sub_497F4();
  sub_497AC(v56, v57);
  v42 = sub_4264();
  strcpy(v58, "successAction");
  *(v58 + 7) = -4864;
  *(v58 + 2) = v51;
  sub_42A0();
  (*(v59 + 104))(v60);
  swift_willThrow();
  v61 = sub_4980C();
  v62(v61);

  sub_49850();
LABEL_16:
  sub_4982C(*(v51 + 28));
  sub_47B88(7107189, 0xE300000000000000, v51, v55);
  if (!v42)
  {
    v67(v53, v52);
    (*(v68 + 32))(v35, v55, v69);
    sub_493E8(v35, v70);
    sub_8F004();
    sub_4248();
    (*(v63 + 8))(v88);
    return sub_4944C(v35);
  }

  v67(v53, v52);

  v34 = 1;
  v22 = v79;
LABEL_5:
  sub_8F004();
  sub_4248();
  result = (*(v36 + 8))(v88);
  if (v34)
  {
    (*(v81 + 8))(v35 + v22[5], v83);
    sub_3410(v35 + v22[6], &qword_C2DE0);
    return sub_3410(v35 + v22[7], &qword_C2DE0);
  }

  return result;
}

uint64_t sub_491D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F0A4();
  v13 = sub_8F0C4();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t type metadata accessor for LinkAction()
{
  result = qword_C5308;
  if (!qword_C5308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_493E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4944C(uint64_t a1)
{
  v2 = type metadata accessor for LinkAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_494BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8E0F4();
  sub_49844();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_33C0(v9, a2, v8);
  }

  sub_8F0C4();
  sub_49844();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_495CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_8E0F4();
  sub_49844();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_8F0C4();
    sub_49844();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_33E8(v11, a2, a2, v10);
}

void sub_496B8()
{
  sub_8E0F4();
  if (v0 <= 0x3F)
  {
    sub_8F0C4();
    if (v1 <= 0x3F)
    {
      sub_3CAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_49754(uint64_t a1)
{
  result = sub_497AC(&qword_C4B58, type metadata accessor for LinkAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_497AC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_4982C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 144);
  v5 = *(v2 - 128);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 112);
  return result;
}

double sub_49850()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t sub_49864()
{
  v0 = objc_opt_self();
  sub_8E0C4(v1);
  v3 = v2;
  LODWORD(v0) = [v0 openStandardURL:v2];

  sub_332C(&qword_C3398);
  if (v0)
  {
    return sub_8F3E4();
  }

  sub_499A8();
  swift_allocError();
  return sub_8F3D4();
}

unint64_t sub_49938()
{
  result = qword_C4B58;
  if (!qword_C4B58)
  {
    type metadata accessor for LinkAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4B58);
  }

  return result;
}

unint64_t sub_499A8()
{
  result = qword_C5408;
  if (!qword_C5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5408);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkActionImplementation.PerformError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x49A98);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_49AD4()
{
  result = qword_C5410;
  if (!qword_C5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5410);
  }

  return result;
}

uint64_t type metadata accessor for ListItem()
{
  result = qword_C5478;
  if (!qword_C5478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_49BBC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B6B40;
  v6._object = a2;
  v4 = sub_8FB14(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_49C08(char a1)
{
  result = 1819043171;
  switch(a1)
  {
    case 1:
      result = 0x6C6C65436B6E696CLL;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x6C654365756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_49CC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_49BBC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_49CF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_49C08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_49D2C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v95 = a3;
  v4 = sub_8EFE4();
  v98 = *(v4 - 8);
  v99 = v4;
  v5 = __chkstk_darwin(v4);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v93 = &v88 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v88 - v10;
  __chkstk_darwin(v9);
  v13 = (&v88 - v12);
  v14 = sub_332C(&qword_C3598);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v88 - v18;
  v20 = type metadata accessor for ListItem();
  sub_4248();
  __chkstk_darwin(v21);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E394();
  inited = swift_initStackObject();
  sub_8E544();
  v24 = swift_initStackObject();
  sub_4B1A0();
  v25 = v97;
  v26 = sub_5FD0();
  if (v25)
  {
    v28 = v98;
    v27 = v99;

    (*(v28 + 8))(a1, v27);
    sub_8F004();
    sub_4248();
    return (*(v30 + 8))(v104);
  }

  v89 = v17;
  v91 = v13;
  v90 = v19;
  v92 = v11;
  v97 = v24;
  *v23 = v26;
  sub_4B1A0();
  v29 = sub_47508();
  v23[1] = v29 & 1;
  __chkstk_darwin(v29);
  *(&v88 - 2) = v104;
  sub_4B1A0();
  sub_BAFC(v32, v33, v34, v35, v36, v37, v38, v39);
  *(v23 + 1) = v40;
  sub_4B1A0();
  *&v101 = sub_473C0();
  *(&v101 + 1) = v41;
  sub_8F9B4();
  v42 = 0x800000000009DDE0;
  v43 = v91;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_6;
  }

  v88 = 0x800000000009DDE0;
  v44 = v89;
  sub_4A9F0(v43, v104, v89);
  v45 = sub_8F204();
  if (sub_33C0(v44, 1, v45) == 1)
  {
    sub_3410(v44, &qword_C3598);
    v42 = v88;
LABEL_6:
    sub_8F504();
    sub_4B154();
    sub_4ABC4(v46, v47);
    sub_4264();
    *v48 = 0xD000000000000011;
    v48[1] = v42;
    v48[2] = v20;
    sub_BBB0();
    (*(v49 + 104))();
    swift_willThrow();
    v50 = sub_4B16C();
    v51(v50);

    v52 = sub_8F204();
    v53 = v90;
    sub_33E8(v90, 1, 1, v52);
    v88 = 0;
    goto LABEL_8;
  }

  v88 = 0;
  v54 = sub_4B16C();
  v55(v54);
  sub_BBB0();
  v53 = v90;
  (*(v56 + 32))(v90, v44, v45);
  sub_33E8(v53, 0, 1, v45);
LABEL_8:
  sub_11068(v53, &v23[*(v20 + 40)]);
  sub_8EFF4();
  v57 = sub_8EFB4();
  v90 = v20;
  if ((v57 & 1) == 0)
  {
    v58 = v88;
    sub_8E534();
    if (!v58)
    {
      v83 = sub_4B188();
      v84(v83);
      sub_3A94(v100, &v101);
      goto LABEL_12;
    }

    sub_17B74();
    sub_3410(v100, &unk_C55C0);
    v20 = v90;
  }

  sub_8F504();
  sub_4B154();
  sub_4ABC4(v59, v60);
  sub_4264();
  strcpy(v61, "secondaryText");
  *(v61 + 7) = -4864;
  *(v61 + 2) = v20;
  sub_BBB0();
  (*(v62 + 104))();
  swift_willThrow();
  v63 = sub_4B188();
  v64(v63);

  sub_43DE4();
LABEL_12:
  v65 = v102;
  *(v23 + 1) = v101;
  *(v23 + 2) = v65;
  v92 = v23;
  *(v23 + 6) = v103;
  v66 = v93;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_4B154();
    sub_4ABC4(v67, v68);
    sub_4264();
    *v69 = 0x6575676573;
    v69[1] = 0xE500000000000000;
    v85 = v90;
    v69[2] = v90;
    sub_BBB0();
    (*(v70 + 104))();
    swift_willThrow();
    v91(v66, v99);

    sub_43DE4();
  }

  else
  {
    sub_8E384();
    v91(v66, v99);
    sub_3A94(v100, &v101);
    v85 = v90;
  }

  v71 = &v92[*(v85 + 44)];
  v72 = v102;
  *v71 = v101;
  *(v71 + 1) = v72;
  *(v71 + 4) = v103;
  v73 = v94;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    sub_8F504();
    sub_4B154();
    sub_4ABC4(v74, v75);
    swift_allocError();
    *v76 = 1954047348;
    v76[1] = 0xE400000000000000;
    v76[2] = v85;
    sub_BBB0();
    (*(v77 + 104))();
    swift_willThrow();

    v78 = v99;
    v79 = v91;
    v91(a1, v99);
    v79(v73, v78);

    sub_43DE4();
  }

  else
  {
    sub_8E534();

    v86 = v99;
    v87 = v91;
    v91(a1, v99);
    v87(v73, v86);
    sub_3A94(v100, &v101);
  }

  v80 = v102;
  v81 = v92;
  *(v92 + 56) = v101;
  *(v81 + 72) = v80;
  *(v81 + 88) = v103;
  sub_4AC0C(v81, v95);
  sub_8F004();
  sub_4248();
  (*(v82 + 8))(v104);
  return sub_4AC70(v81);
}

char *sub_4A860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  result = sub_3B560(v12, v9);
  *a3 = result;
  return result;
}

uint64_t sub_4A9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F1C4();
  v13 = sub_8F204();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t sub_4ABC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4AC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4AC70(uint64_t a1)
{
  v2 = type metadata accessor for ListItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListItem.ListItemConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ListItem.ListItemConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x4AE20);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_4AE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_332C(&qword_C3598);
    v9 = a1 + *(a3 + 40);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_4AF14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 120) = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C3598);
    v8 = v5 + *(a4 + 40);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

void sub_4AFA0()
{
  sub_4B0AC();
  if (v0 <= 0x3F)
  {
    sub_BA38(319, &qword_C3418, &qword_C55D0);
    if (v1 <= 0x3F)
    {
      sub_E69C();
      if (v2 <= 0x3F)
      {
        sub_BA38(319, &qword_C2EC8, &unk_C2ED0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_4B0AC()
{
  if (!qword_C5488)
  {
    v0 = sub_8F924();
    if (!v1)
    {
      atomic_store(v0, &qword_C5488);
    }
  }
}

unint64_t sub_4B100()
{
  result = qword_C54D0;
  if (!qword_C54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C54D0);
  }

  return result;
}

uint64_t sub_4B16C()
{
  result = v0;
  *(v1 - 280) = *(*(v1 - 224) + 8);
  return result;
}

id sub_4B1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4B808(a1, a3);

  return [v3 layoutIfNeeded];
}

uint64_t sub_4B1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ListItemComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_4B250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ListItemComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_4B2B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_4B30C()
{
  swift_getWitnessTable();

  return sub_8E3D4();
}

uint64_t sub_4B388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_4B404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_4B510(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_4B558(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin17ListItemComponent_editMenu] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ListItemComponent();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

void sub_4B5EC()
{
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17ListItemComponent_editMenu) = 0;
  sub_8FAA4();
  __break(1u);
}

uint64_t sub_4B66C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ListItemComponent();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v4[3] = sub_8EA24();
  v4[4] = &protocol witness table for UIListContentConfiguration;
  sub_4ED0(v4);
  sub_8F854();
  sub_8F814();
  if (sub_4C488(v0))
  {

    sub_4C4E8();
    isa = sub_8F6B4().super.isa;

    [v0 setGestureRecognizers:isa];
  }

  else
  {
    [v0 setGestureRecognizers:0];
  }

  v2 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin17ListItemComponent_editMenu];
  *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin17ListItemComponent_editMenu] = 0;

  sub_8F834();

  return sub_8F844();
}

void sub_4B808(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = a2;
  v5 = sub_332C(&qword_C55B0);
  __chkstk_darwin(v5 - 8);
  v57 = &v51 - v6;
  sub_4C52C();
  v58 = sub_8E924();
  sub_42F8();
  v56 = v7;
  __chkstk_darwin(v8);
  sub_42BC();
  v55 = v9;
  sub_4C52C();
  sub_8E8E4();
  sub_42F8();
  v53 = v11;
  v54 = v10;
  __chkstk_darwin(v10);
  sub_42BC();
  v52 = v12;
  sub_4C52C();
  sub_8E934();
  sub_42F8();
  v60 = v14;
  v61 = v13;
  __chkstk_darwin(v13);
  sub_42BC();
  v59 = v15;
  sub_4C52C();
  v16 = sub_8EA24();
  sub_42F8();
  v18 = v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v51 - v23;
  swift_getKeyPath();
  sub_332C(&qword_C55B8);
  sub_8F044();

  switch(LOBYTE(v67[0]))
  {
    case 2:
      sub_8E9D4();
      break;
    case 3:
      sub_8EA14();
      break;
    default:
      sub_8E9F4();
      break;
  }

  (*(v18 + 32))(v24, v22, v16);
  swift_getKeyPath();
  sub_4C538();

  v66 = v18;
  switch(LOBYTE(v67[0]))
  {
    case 0:
    case 2:
    case 3:
      v25 = sub_8FB54();

      if (v25)
      {
        goto LABEL_8;
      }

      v26 = 0;
      break;
    case 1:

LABEL_8:
      v26 = [objc_opt_self() linkColor];
      break;
    default:
      JUMPOUT(0);
  }

  swift_getKeyPath();
  sub_4C538();

  v27 = [v2 traitCollection];
  v63 = v26;
  sub_4BF6C(v67, v27, v26);

  sub_13E24(v67, &unk_C55C0);
  swift_getKeyPath();
  v28 = a1;
  sub_8F044();

  v29 = [v2 traitCollection];
  sub_4C0A4(v67, v29);

  sub_13E24(v67, &unk_C55C0);
  v30 = v16;
  v67[3] = v16;
  v67[4] = &protocol witness table for UIListContentConfiguration;
  v31 = sub_4ED0(v67);
  v32 = v66;
  v33 = *(v66 + 16);
  v64 = v24;
  v33(v31, v24, v16);
  sub_8F814();
  swift_getKeyPath();
  v65 = v28;
  sub_8F044();

  if (LOBYTE(v67[0]) == 1)
  {
    v35 = v52;
    v34 = v53;
    v36 = v54;
    (*(v53 + 104))(v52, enum case for UICellAccessory.DisplayedState.always(_:), v54);
    v37 = sub_8E8F4();
    sub_33E8(v57, 1, 1, v37);
    v38 = v55;
    sub_8E914();
    v39 = v59;
    sub_8E904();
    (*(v56 + 8))(v38, v58);
    (*(v34 + 8))(v35, v36);
    v40 = sub_8F834();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_343C4(0, *(v40 + 16) + 1, 1, v40);
      v40 = v49;
    }

    v42 = *(v40 + 16);
    v41 = *(v40 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_343C4(v41 > 1, v42 + 1, 1, v40);
      v40 = v50;
    }

    *(v40 + 16) = v42 + 1;
    (*(v60 + 32))(v40 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v42, v39, v61);
    sub_8F844();
  }

  swift_getKeyPath();
  sub_8F044();

  v43 = v67[0];
  if (v67[0])
  {
    v44 = objc_allocWithZone(type metadata accessor for EditMenu());
    v45 = v3;
    v46 = v62;

    v47 = sub_3A660(v43, v46, v45);

    (*(v32 + 8))(v64, v30);
    v48 = *&v45[OBJC_IVAR____TtC19CoreDynamicUIPlugin17ListItemComponent_editMenu];
    *&v45[OBJC_IVAR____TtC19CoreDynamicUIPlugin17ListItemComponent_editMenu] = v47;
  }

  else
  {
    (*(v32 + 8))(v64, v30);
  }
}

uint64_t sub_4BF6C(uint64_t a1, objc_class *a2, void *a3)
{
  sub_4C418(a1, __dst);
  if (!__dst[3])
  {
    sub_13E24(__dst, &unk_C55C0);
    goto LABEL_6;
  }

  sub_332C(&qword_C55D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    bzero(v7, 0x88uLL);
    return sub_13E24(v7, &qword_C44F8);
  }

  if (v7[16])
  {
    memcpy(__dst, v7, sizeof(__dst));

    sub_8EA04();
    v5 = sub_8E9C4();
    sub_4C24C(__dst, a2, a3);
    v5(v7, 0);
    return sub_2C218(__dst);
  }

  return sub_13E24(v7, &qword_C44F8);
}

uint64_t sub_4C0A4(uint64_t a1, objc_class *a2)
{
  sub_4C418(a1, __dst);
  if (!__dst[3])
  {
    sub_13E24(__dst, &unk_C55C0);
    goto LABEL_6;
  }

  sub_332C(&qword_C55D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    bzero(v5, 0x88uLL);
    return sub_13E24(v5, &qword_C44F8);
  }

  if (v5[16])
  {
    memcpy(__dst, v5, sizeof(__dst));

    sub_8E974();
    v3 = sub_8E9E4();
    sub_4C24C(__dst, a2, 0);
    v3(v5, 0);
    return sub_2C218(__dst);
  }

  return sub_13E24(v5, &qword_C44F8);
}

id sub_4C1DC(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ListItemComponent();
  return objc_msgSendSuper2(&v4, *a1);
}

unint64_t sub_4C24C(uint64_t a1, objc_class *a2, void *a3)
{
  v6 = sub_8E984();
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  if (sub_8F804())
  {
    if (*a1 == 5)
    {
      v12 = 4;
    }

    else
    {
      v12 = sub_8E574();
    }

    sub_4C38C(v12, v11);
  }

  else
  {
    if (*(a1 + 24) == 5)
    {
      v13 = 4;
    }

    else
    {
      v13 = sub_8E574();
    }

    sub_4C38C(v13, v9);
  }

  sub_8E9B4();
  v14 = *(a1 + 32);
  if (v14 || (v14 = a3) != 0)
  {
    v15 = v14;
    sub_8E9A4();
  }

  v16.super.isa = a2;
  result = sub_8E4E4(v16);
  if (result)
  {
    return sub_8E994();
  }

  return result;
}

uint64_t sub_4C38C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_8E984();
  v5 = *(*(v4 - 8) + 104);
  if (a1 > 4)
  {
    v6 = &enum case for UIListContentConfiguration.TextProperties.TextAlignment.natural(_:);
  }

  else
  {
    v6 = *(&off_B9268 + a1);
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_4C418(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&unk_C55C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4C488(void *a1)
{
  v1 = [a1 gestureRecognizers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_4C4E8();
  v3 = sub_8F6C4();

  return v3;
}

unint64_t sub_4C4E8()
{
  result = qword_C55D8;
  if (!qword_C55D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C55D8);
  }

  return result;
}

uint64_t sub_4C538()
{

  return sub_8F044();
}

id sub_4C558(char a1)
{
  v3 = OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_activityIndicator;
  v4 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v4 setActivityIndicatorViewStyle:100];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_loadingView;
  *&v1[v5] = [objc_allocWithZone(AMSUICommonView) init];
  v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_style] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for LoadingViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void sub_4C614()
{
  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_activityIndicator;
  v2 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v2 setActivityIndicatorViewStyle:100];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_loadingView;
  *(v0 + v3) = [objc_allocWithZone(AMSUICommonView) init];
  sub_8FAA4();
  __break(1u);
}

id sub_4C730()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v5 = [v2 navigationItem];

      return v5;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for LoadingViewController();
  v3 = objc_msgSendSuper2(&v6, "navigationItem");

  return v3;
}

void sub_4C7F4()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LoadingViewController();
  objc_msgSendSuper2(&v4, "loadView");
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_clear];
  [v1 setBackgroundColor:v2];

  v3 = [v0 view];
  [v3 setUserInteractionEnabled:0];
}

void sub_4C908()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for LoadingViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  sub_4CA90();
}

void sub_4C988()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LoadingViewController();
  objc_msgSendSuper2(&v11, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_loadingView];
  v2 = [v0 view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
}

void sub_4CA90()
{
  v1 = [v0 navigationItem];
  [v1 ams_configureWithTransparentBackground];

  sub_4CCD8();

  sub_4CAEC();
}

void sub_4CAEC()
{
  v1 = v0;
  v2 = [v0 view];
  v3 = OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_activityIndicator;
  [v2 addSubview:*&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_activityIndicator]];

  v4 = *&v1[v3];
  sub_89014(0, 0, 1);

  [*&v1[v3] startAnimating];
  [*&v1[v3] setAlpha:0.0];
  v5 = dbl_956A8[v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_style]];
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_4D288;
  v10[5] = v7;
  sub_4D2B0();
  sub_4D298();
  v10[2] = v8;
  v10[3] = &unk_B9398;
  v9 = _Block_copy(v10);

  [v6 animateWithDuration:0 delay:v9 options:0 animations:0.5 completion:v5];
  _Block_release(v9);
}

void sub_4CC5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_activityIndicator);

    [v2 setAlpha:1.0];
  }
}

void sub_4CCD8()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 view];
  v3 = OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_loadingView;
  [v2 addSubview:*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_loadingView]];

  v4 = v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_style];
  if (v4 == 2)
  {
    v6 = &selRef_ams_dim;
    goto LABEL_9;
  }

  if (v4 == 1)
  {
    v6 = &selRef_ams_defaultPlatformBackgroundColor;
LABEL_9:
    v7 = *&v0[v3];
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 *v6];
    [v9 setBackgroundColor:v10];

    [*&v0[v3] setAlpha:0.0];
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = ObjectType;
    v16[4] = sub_4D268;
    v16[5] = v13;
    sub_4D2B0();
    sub_4D298();
    v16[2] = v14;
    v16[3] = &unk_B9370;
    v15 = _Block_copy(v16);

    [v11 animateWithDuration:0 delay:v15 options:0 animations:0.5 completion:0.0];
    _Block_release(v15);
    return;
  }

  if (!v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_style])
  {
    v5 = *&v0[v3];

    [v5 setAlpha:0.0];
  }
}

void sub_4CEDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_loadingView);
    v3 = 1.0;
    if (!v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin21LoadingViewController_style])
    {
      v3 = 0.0;
    }

    [v2 setAlpha:v3];
  }
}

id sub_4CFF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoadingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *storeEnumTagSinglePayload for LoadingViewController.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x4D168);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_4D1A4()
{
  result = qword_C5680;
  if (!qword_C5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5680);
  }

  return result;
}

uint64_t sub_4D1F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4D230()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4D270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4D2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_332C(&qword_C5730);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = sub_332C(&qword_C50D0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  sub_4D5AC(a3, v19 - v9);
  v11 = sub_8F364();
  if (sub_33C0(v10, 1, v11) == 1)
  {
    sub_29960(v10);
    v12 = 0;
  }

  else
  {
    if (qword_C2CD0 != -1)
    {
      swift_once();
    }

    sub_8F354();
    (*(*(v11 - 8) + 8))(v10, v11);
    sub_8F344();
    (*(v5 + 8))(v7, v4);
    v12 = v19[1];
  }

  v13 = sub_8F5C4();
  if (qword_C2CD8 != -1)
  {
    swift_once();
  }

  v14 = qword_C5690;
  if (v12)
  {
    v15 = sub_8F5C4();
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_opt_self() localizedStringForKey:v13 bundle:v14 table:0 languageCode:v15];

  v17 = sub_8F5F4();
  return v17;
}

uint64_t sub_4D5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C50D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NSString sub_4D61C()
{
  result = sub_8F5C4();
  qword_C5688 = result;
  return result;
}

id sub_4D658()
{
  sub_162A4();
  result = sub_4D6AC();
  if (result)
  {
    qword_C5690 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_4D6AC()
{
  v0 = sub_8F5C4();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier:v0];

  return v1;
}

uint64_t sub_4D710()
{
  v0 = sub_8E304();
  sub_29B1C(v0, qword_D0378);
  sub_4D6C(v0, qword_D0378);
  return sub_8E2F4();
}

Swift::Int sub_4D78C()
{
  v1 = *v0;
  sub_8FC04();
  NetworkInterface.hash(into:)(v3, v1);
  return sub_8FC24();
}

unint64_t sub_4D7D4()
{
  result = qword_C5738;
  if (!qword_C5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5738);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkInterface(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkInterface(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x4D97CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

id sub_4D9B4()
{
  result = [objc_opt_self() sharedDefaultEvaluator];
  if (result)
  {
    v1 = result;
    v2 = swift_allocObject();
    sub_4DA64(v1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4DA1C(unint64_t a1)
{
  if (a1 < 5)
  {
    return (a1 + 1);
  }

  else
  {
    return 1;
  }
}

NSString sub_4DA2C()
{
  result = sub_8F5C4();
  qword_C5740 = result;
  return result;
}

uint64_t sub_4DA64(void *a1)
{
  v2 = v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v4 = a1;
  v5 = sub_8E0A4();

  v6 = *(v2 + 24);
  *(v2 + 24) = v5;

  return v2;
}

id sub_4DB3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

uint64_t sub_4DB78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_4DBD0();
  }

  return result;
}

void sub_4DBD0()
{
  v1 = v0;
  v2 = *v0;
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v3 = sub_8E304();
  sub_4D6C(v3, qword_D0378);
  sub_332C(&unk_C3920);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_935F0;
  v10 = v2;
  v9[0] = v1;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v9);
  sub_8E244();
  sub_8E244();
  v6 = sub_4DF6C();
  v10 = &type metadata for Bool;
  LOBYTE(v9[0]) = v6;
  sub_8E264();
  sub_4DA4(v9);
  sub_8E244();
  v7 = sub_4DFC4();
  v10 = &type metadata for NetworkInterface;
  LOBYTE(v9[0]) = v7;
  sub_8E264();
  sub_4DA4(v9);
  sub_8E2C4();

  v8 = [objc_opt_self() defaultCenter];
  if (qword_C2CE8 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_C5740 object:v1];
}

uint64_t sub_4DEC8()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    sub_8E074();
  }

  return v1;
}

uint64_t sub_4DF14()
{
  sub_4DEC8();

  return _swift_deallocClassInstance(v0, 32, 7);
}

BOOL sub_4DF6C()
{
  v1 = [*(v0 + 16) path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

uint64_t sub_4DFC4()
{
  v1 = [*(v0 + 16) path];
  v2 = [v1 interface];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 type];

  return sub_4DA1C(v3);
}

id sub_4E058(SEL *a1)
{
  v3 = [*(v1 + 16) path];
  v4 = [v3 *a1];

  return v4;
}

uint64_t sub_4E0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = *v5;
  if (qword_C2CE8 != -1)
  {
    swift_once();
  }

  v11 = qword_C5740;
  v16[3] = v10;
  v16[0] = v5;
  sub_13D04(a1, v15);
  v12 = type metadata accessor for CommonNetworkObservation();
  swift_allocObject();
  v13 = v11;

  result = sub_2F99C(v13, v16, v15, a2, a3);
  a4[3] = v12;
  a4[4] = &off_B8608;
  *a4 = result;
  return result;
}

uint64_t sub_4E2AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4E2EC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_4E30C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_4E34C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_4E3C8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_8EFE4();
  sub_4ED48();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = sub_4ED80();
  if (v3)
  {
    v18 = sub_4ED60();
    v19(v18);
    sub_8F004();
    sub_887C();
    return (*(v20 + 8))(a2);
  }

  v49 = v13;
  v50 = v9;
  v59 = a2;
  *(a3 + 144) = v16;
  *(a3 + 152) = v17;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_7;
  }

  sub_6878();
  if (!*(&v52 + 1))
  {
    sub_6678(&v51, &qword_C5860);
LABEL_7:
    v26 = sub_8F504();
    sub_923C();
    sub_4264();
    strcpy(v27, "primaryButton");
    *(v27 + 7) = -4864;
    *(v27 + 2) = &type metadata for OnboardingPageDestination;
    (*(*(v26 - 8) + 104))(v27, enum case for JSONError.missingProperty(_:), v26);
    swift_willThrow();
    v28 = *(v50 + 8);
    v29 = sub_4ED60();
    v28(v29);
    (v28)(v15, v4);
    sub_8F004();
    sub_887C();
    (*(v30 + 8))(v59);
  }

  v22 = *(v50 + 8);
  v22(v15, v4);
  v23 = v54;
  v58 = v54;
  v24 = v53;
  v25 = v52;
  v56 = v52;
  v57 = v53;
  v55 = v51;
  *(a3 + 16) = v51;
  *(a3 + 32) = v25;
  *(a3 + 48) = v24;
  *(a3 + 64) = v23;
  *a3 = sub_4ED80();
  *(a3 + 8) = v31;
  sub_4ED6C();
  v32 = sub_4ED80();
  v50 = v4;
  *(a3 + 128) = v32;
  *(a3 + 136) = v33;
  v34 = v49;
  sub_8EFF4();
  if ((sub_8EFB4() & 1) == 0)
  {
    sub_673C();
    if (*(&v56 + 1) != 1)
    {
      v22(v34, v50);
      v39 = v55;
      v40 = v56;
      v41 = v57;
      v38 = v58;
      goto LABEL_13;
    }

    sub_6678(&v55, &unk_C57F0);
  }

  v35 = sub_8F504();
  sub_923C();
  v36 = sub_4264();
  *v37 = 0x7261646E6F636573;
  v37[1] = 0xEF6E6F7474754279;
  v37[2] = &type metadata for OnboardingPageDestination;
  (*(*(v35 - 8) + 104))(v37, enum case for JSONError.missingProperty(_:), v35);
  v3 = v36;
  swift_willThrow();
  v22(v34, v50);

  v38 = 0;
  v39 = 0uLL;
  v40 = 0uLL;
  v41 = 0uLL;
LABEL_13:
  *(a3 + 72) = v39;
  *(a3 + 88) = v40;
  *(a3 + 104) = v41;
  *(a3 + 120) = v38;
  v42 = sub_4ED80();
  v44 = v59;
  if (v3)
  {

    v45 = 0;
    v46 = 0;
  }

  else
  {
    v45 = v42;
    v46 = v43;
  }

  v22(a1, v50);
  sub_8F004();
  sub_887C();
  result = (*(v47 + 8))(v44);
  *(a3 + 160) = v45;
  *(a3 + 168) = v46;
  return result;
}

uint64_t sub_4E988@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v25 = a3;
  sub_8EFE4();
  sub_4ED48();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E394();
  swift_initStackObject();
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  v24 = a1;
  sub_8E384();
  if (v3)
  {

    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_6678(v26, &qword_C2DE0);
    a1 = v24;
LABEL_4:
    v11 = sub_8F504();
    sub_923C();
    swift_allocError();
    *v12 = 0x6E6F69746361;
    v12[1] = 0xE600000000000000;
    v12[2] = &type metadata for OnboardingPageDestination.Button;
    (*(*(v11 - 8) + 104))(v12, enum case for JSONError.missingProperty(_:), v11);
    swift_willThrow();
    v13 = *(v7 + 8);
    v13(a1, v4);
    v14 = sub_4ED60();
    (v13)(v14);
    sub_8F004();
    sub_887C();
    return (*(v15 + 8))(v32);
  }

  v17 = *(v7 + 8);
  v18 = v4;
  v17(v10, v4);
  sub_3A94(v26, v28);
  sub_3A94(v28, v29);
  sub_4ED6C();
  v19 = v24;
  v20 = sub_473C0();
  v22 = v21;
  v17(v19, v18);
  v30 = v20;
  v31 = v22;
  sub_4ED00(v29, v25);
  sub_8F004();
  sub_887C();
  (*(v23 + 8))(v32);
  return sub_4ECD0(v29);
}

uint64_t sub_4ED80()
{

  return sub_473C0();
}

id sub_4ED98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_8F364();
  sub_42F8();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_8814();
  v12 = v11 - v10;
  sub_4D28();
  sub_8F164();
  *&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin28OnboardingPageViewController_account] = v17;
  sub_8F174();
  sub_8F394();
  v13 = sub_8F334();
  (*(v8 + 8))(v12, v6);
  *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin28OnboardingPageViewController_bag] = v13;
  *&v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin28OnboardingPageViewController_objectGraph] = a2;
  sub_34D2C(a1, &v3[OBJC_IVAR____TtC19CoreDynamicUIPlugin28OnboardingPageViewController_destination]);
  v16.receiver = v3;
  v16.super_class = type metadata accessor for OnboardingPageViewController();
  v14 = objc_msgSendSuper2(&v16, "init");
  sub_34D88(a1);
  return v14;
}

void sub_4EF70()
{
  v35.receiver = v0;
  v35.super_class = type metadata accessor for OnboardingPageViewController();
  objc_msgSendSuper2(&v35, "viewDidLoad");
  v1 = objc_opt_self();
  v2 = &v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin28OnboardingPageViewController_destination];
  v3 = sub_8F5C4();
  v4 = [v1 linkWithBundleIdentifier:v3];

  if (v4)
  {
    [v4 setModalPresentationStyle:0];
    v5 = *(v2 + 21);
    v6 = v4;
    if (v5)
    {
      v5 = sub_8F5C4();
    }

    [v4 setDisplayLanguage:v5];
  }

  v7 = *(v2 + 17);
  v24 = *(v2 + 16);
  v25 = v0;
  v8 = *(v2 + 18);
  v9 = *(v2 + 19);
  v10 = *(v2 + 7);
  v11 = *(v2 + 8);
  sub_4FDA0((v2 + 72), &aBlock);
  if (v31)
  {
    v13 = v33;
    v12 = v34;

    sub_4ECD0(&aBlock);
  }

  else
  {

    sub_13E24(&aBlock, &qword_C5860);
    v13 = 0;
    v12 = 0;
  }

  v14 = objc_allocWithZone(AMSUIOnboardingViewController);
  v23 = v4;
  v15 = sub_4FE10(0, v24, v7, v8, v9, v10, v11, v13, v12, v4);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_4FF64;
  v33 = v16;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_4F68C;
  v31 = &unk_B95E8;
  v17 = _Block_copy(&aBlock);

  [v15 setPrimaryButtonCallback:v17];
  _Block_release(v17);
  sub_4FDA0((v2 + 72), &aBlock);
  if (v31)
  {
    sub_13D04(&aBlock, v26);
    sub_4ECD0(&aBlock);
    sub_3A94(v26, v27);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_13D04(v27, v26);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    sub_3A94(v26, v19 + 24);
    v32 = sub_4FFC4;
    v33 = v19;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_4F68C;
    v31 = &unk_B9638;
    v20 = _Block_copy(&aBlock);

    [v15 setSecondaryButtonCallback:v20];
    _Block_release(v20);
    sub_4F30(v27);
  }

  else
  {
    sub_13E24(&aBlock, &qword_C5860);
  }

  v21 = v15;
  [v25 setChildViewController:v21];
  v22 = [v21 view];

  if (v22)
  {
    sub_892C0(0);
  }

  else
  {
    __break(1u);
  }
}

void sub_4F398()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v2 = sub_8E304();
    sub_4D6C(v2, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92310;
    v7[3] = type metadata accessor for OnboardingPageViewController();
    v7[0] = v1;
    v3 = v1;
    v4 = AMSLogKey();
    if (v4)
    {
      v5 = v4;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v7);
    sub_8E244();
    sub_8E2E4();

    sub_4FA30(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin28OnboardingPageViewController_destination + 16);
  }

  else
  {
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v6 = sub_8E304();
    sub_4D6C(v6, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92E10;
    sub_8E244();
    sub_8E2D4();
  }
}

void sub_4F68C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_4F6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v6 = sub_8E304();
    sub_4D6C(v6, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92310;
    v11[3] = type metadata accessor for OnboardingPageViewController();
    v11[0] = v5;
    v7 = v5;
    v8 = AMSLogKey();
    if (v8)
    {
      v9 = v8;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v11);
    sub_8E244();
    sub_8E2E4();

    sub_4FA30(a3);
  }

  else
  {
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v10 = sub_8E304();
    sub_4D6C(v10, qword_D0378);
    sub_332C(&unk_C3920);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92E10;
    sub_8E244();
    sub_8E2D4();
  }
}

uint64_t sub_4FA30(uint64_t a1)
{
  v3 = sub_8E5D4();
  __chkstk_darwin(v3 - 8);
  sub_8814();
  v6 = v5 - v4;
  v7 = sub_8F264();
  sub_42F8();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_8814();
  v13 = v12 - v11;
  sub_8E5F4();
  v14 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin28OnboardingPageViewController_objectGraph);
  sub_8F174();
  sub_8F394();
  v15 = *&v18[0];
  sub_8F394();
  (*(v9 + 16))(v6, v13, v7);
  v16 = sub_332C(&unk_C5850);
  sub_33E8(v6, 0, 1, v16);
  memset(v18, 0, sizeof(v18));
  v19 = -1;
  (*(*v15 + 216))(a1, v6, v14, v18);

  sub_13E24(v18, &qword_C3940);
  sub_CE00(v6);
  return (*(v9 + 8))(v13, v7);
}

id sub_4FCDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4FDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C5860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_4FE10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = sub_8F5C4();

  v12 = sub_8F5C4();

  v13 = sub_8F5C4();

  if (a9)
  {
    v14 = sub_8F5C4();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v17 initWithHeaderImage:a1 titleText:v11 descriptionText:v12 primaryButtonText:v13 secondaryButtonText:v14 privacyLinkController:a10];

  return v15;
}

uint64_t sub_4FF2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4FF6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4FF84()
{

  sub_4F30(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_4FFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_8F0C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_5006C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v76 = a3;
  v4 = sub_332C(&qword_C2DD0);
  __chkstk_darwin(v4 - 8);
  v77 = (&v66 - v5);
  v79 = sub_8EFE4();
  sub_42F8();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v75 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v66 - v12;
  __chkstk_darwin(v11);
  v15 = &v66 - v14;
  v16 = sub_8F0C4();
  sub_42F8();
  v74 = v17;
  __chkstk_darwin(v18);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PrivacySplashAction();
  sub_BBB0();
  __chkstk_darwin(v22);
  v24 = (&v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_8E394();
  inited = swift_initStackObject();
  sub_50CDC();
  v26 = v78;
  v27 = sub_473C0();
  if (v26)
  {
    (*(v7 + 8))(a1, v79);
    sub_8F004();
    sub_887C();
    return (*(v29 + 8))(v83);
  }

  v68 = v20;
  v69 = v13;
  v70 = inited;
  v78 = v7;
  *v24 = v27;
  v24[1] = v28;
  v72 = v28;
  sub_50CDC();
  v31 = a1;
  v24[2] = sub_473C0();
  v24[3] = v32;
  v71 = v32;
  v73 = v21;
  v33 = sub_473C0();
  v34 = v77;
  v77 = v35;
  v24[4] = v33;
  v24[5] = v35;
  sub_8EFF4();
  v36 = sub_8EFB4();
  v37 = v83;
  if (v36)
  {
    goto LABEL_6;
  }

  sub_6658();
  if (sub_33C0(v34, 1, v16) == 1)
  {
    sub_6678(v34, &qword_C2DD0);
LABEL_6:
    sub_8F504();
    sub_50C9C();
    sub_50C54(v38, v39);
    sub_BC40();
    strcpy(v40, "actionMetrics");
    *(v40 + 7) = -4864;
    *(v40 + 2) = v73;
    sub_BBB0();
    (*(v41 + 104))();
    swift_willThrow();
    v42 = v79;
    v43 = *(v78 + 8);
    v43(v31, v79);
    v43(v15, v42);
    sub_8F004();
    sub_887C();
    (*(v44 + 8))(v37);
  }

  v77 = *(v78 + 8);
  v78 += 8;
  v77(v15, v79);
  v45 = *(v74 + 4);
  v46 = v68;
  v45(v68, v34, v16);
  v47 = v73;
  v45(v24 + *(v73 + 28), v46, v16);
  v48 = v69;
  v74 = v31;
  sub_8EFF4();
  v49 = sub_8EFB4();
  v67 = v24;
  if (v49)
  {
    sub_8F504();
    sub_50C9C();
    sub_50C54(v51, v52);
    v53 = sub_BC40();
    strcpy(v54, "failureAction");
    *(v54 + 7) = -4864;
    *(v54 + 2) = v47;
    sub_BBB0();
    (*(v55 + 104))();
    v26 = v53;
    swift_willThrow();
    v50 = v79;
    v77(v48, v79);

    sub_50CF4();
  }

  else
  {
    v50 = v79;
    sub_50CB4();
    v77(v48, v50);
    sub_3A94(v80, v82);
    v47 = v73;
  }

  sub_14ADC(v67 + *(v47 + 32));
  v57 = v74;
  v56 = v75;
  sub_8EFF4();
  if ((sub_8EFB4() & 1) == 0)
  {
    sub_50CB4();
    if (!v26)
    {

      v65 = v77;
      v77(v57, v50);
      v65(v56, v50);
      sub_3A94(v80, v82);
      goto LABEL_14;
    }

    v81 = 0;
    memset(v80, 0, sizeof(v80));
    sub_6678(v80, &qword_C2DE0);
  }

  sub_8F504();
  sub_50C9C();
  sub_50C54(v58, v59);
  swift_allocError();
  strcpy(v60, "successAction");
  *(v60 + 7) = -4864;
  *(v60 + 2) = v73;
  sub_BBB0();
  (*(v61 + 104))();
  swift_willThrow();

  v62 = v77;
  v77(v57, v50);
  v62(v56, v50);
  v47 = v73;

  sub_50CF4();
LABEL_14:
  v63 = v67;
  sub_14ADC(v67 + *(v47 + 36));
  sub_50960(v63, v76);
  sub_8F004();
  sub_887C();
  (*(v64 + 8))(v83);
  return sub_509C4(v63);
}