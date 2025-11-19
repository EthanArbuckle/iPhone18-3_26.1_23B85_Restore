id sub_15CEC()
{
  v1 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView];
  if (v1)
  {
    [*(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter) removeObserver:v0];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for WarlockMiniClockView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_15FA8()
{
  v1 = sub_815C(&qword_59158);
  v2 = __chkstk_darwin(v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v2);
  v7 = &v48 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView);
  if (v8)
  {
    v9 = *(result + 80);
    v10 = *(result + 96);
    v11 = result;
    v12 = v8;
    sub_156C4(&v7[v9], &v55);
    v13 = v57;
    v66[0] = v57;
    v66[1] = v58;
    v14 = v56;
    v64 = v55;
    v65 = v56;
    v15 = v59;
    v16 = v61;
    v17 = v62;
    v18 = v63;
    v19 = v60;
    *v7 = v55;
    *(v7 + 1) = v14;
    *(v7 + 2) = v13;
    *(v7 + 41) = *(v66 + 9);
    *(v7 + 8) = v15;
    *(v7 + 72) = v19;
    *(v7 + 22) = v16;
    v7[92] = v17;
    *&v7[v10] = v18;
    sub_16B9C(v7, v4, &qword_59158);
    v20 = *(v4 + 8);
    sub_16A8C(*(v4 + 9), *(v4 + 10), *(v4 + 22), v4[92]);
    v21 = *(v11 + 80);
    sub_16AAC(*&v4[*(v11 + 96)]);
    v22 = v20;
    sub_1B4F4(v22, v12);

    sub_16ABC(&v4[v21]);
    memmove(&v12[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout], v7, 0x39uLL);
    v23 = v12;
    sub_2A130();
    sub_16B9C(v7, v4, &qword_59158);

    v24 = *(v4 + 9);
    v49 = *(v4 + 10);
    v54 = *(v4 + 22);
    v53 = v11;
    v52 = *(v11 + 80);
    v25 = *&v4[*(v11 + 96)];
    LOBYTE(v11) = v4[92];
    sub_16AAC(v25);
    v26 = &v12[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle];
    v51 = v23;
    v28 = *v26;
    v27 = *(v26 + 1);
    v29 = *(v26 + 4);
    v50 = v24;
    v30 = v49;
    *v26 = v24;
    *(v26 + 1) = v30;
    v31 = v54;
    *(v26 + 4) = v54;
    LOBYTE(v23) = v26[20];
    v26[20] = v11;
    v32 = v24;
    v33 = v30;
    sub_16B18(v32, v30, v31, v11);
    sub_16A8C(v28, v27, v29, v23);
    sub_2A938(&v55);

    sub_16B38(&v55);
    v34 = *v26;
    v35 = *(v26 + 1);
    v36 = *(v26 + 4);
    v37 = v26[20];
    sub_16B18(v34, v35, v36, v37);
    sub_20CFC(v34, v35, v36 | (v37 << 32));

    sub_16A8C(v50, v33, v54, v11);
    sub_16ABC(&v4[v52]);
    sub_16B9C(v7, v4, &qword_59158);

    sub_16A8C(*(v4 + 9), *(v4 + 10), *(v4 + 22), v4[92]);
    v38 = *(v53 + 80);
    v39 = v53;
    sub_16AAC(*&v4[*(v53 + 96)]);
    v40 = &v4[v38];
    v41 = v51;
    sub_2A290(v40);
    sub_16B9C(v7, v4, &qword_59158);

    sub_16A8C(*(v4 + 9), *(v4 + 10), *(v4 + 22), v4[92]);
    v42 = *&v4[*(v39 + 96)];
    v43 = *(v39 + 80);
    v44 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_maskStyle;
    v45 = v41;
    v46 = *&v41[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_maskStyle];
    *&v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_maskStyle] = v42;
    sub_16B8C(v42);
    sub_16AAC(v46);
    v47 = *&v45[v44];

    sub_16B8C(v47);
    sub_21194(v47);

    sub_16AAC(v42);
    sub_16C04(v7, &qword_59158);
    return sub_16ABC(&v4[v43]);
  }

  return result;
}

void sub_16800()
{
  v1 = sub_815C(qword_59170);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  v7 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView];
  if (v7)
  {
    v8 = v7;
    v9 = [v0 overrideDate];
    if (v9)
    {
      v10 = v9;
      sub_36CA0();

      v11 = sub_36CB0();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {
      v11 = sub_36CB0();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    }

    v12 = *&v8[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter];
    sub_16B9C(v6, v4, qword_59170);
    sub_36CB0();
    v13 = *(v11 - 8);
    isa = 0;
    if ((*(v13 + 48))(v4, 1, v11) != 1)
    {
      isa = sub_36C90().super.isa;
      (*(v13 + 8))(v4, v11);
    }

    [v12 setOverrideDate:isa];

    sub_16C04(v6, qword_59170);
  }
}

uint64_t sub_16A8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return result;
}

unint64_t sub_16AAC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_16ABC(uint64_t a1)
{
  v2 = _s10descr51419V15BackgroundStyleOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16B18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return result;
}

unint64_t sub_16B8C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_16B9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_815C(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_16C04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_815C(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_16C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_815C(qword_59170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_16CF4()
{
  result = qword_59380;
  if (!qword_59380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_59380);
  }

  return result;
}

uint64_t sub_16D40(uint64_t a1, uint64_t a2)
{
  v4 = _s10descr51419V15BackgroundStyleOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_16E0C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_16E98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_17074(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t getEnumTagSinglePayload for TritiumState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TritiumState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_173DC(char a1, double a2)
{
  sub_37940(16);

  if (a1)
  {
    v4 = 1.0 - a2;
  }

  else
  {
    v4 = a2;
  }

  v5 = sub_37560();
  v7 = v6;

  v12._countAndFlagsBits = v5;
  v12._object = v7;
  sub_375D0(v12);

  v13._countAndFlagsBits = 2629725;
  v13._object = 0xE300000000000000;
  sub_375D0(v13);
  sub_815C(&qword_591F8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_41500;
  *(v8 + 56) = &type metadata for CGFloat;
  v9 = sub_17834();
  *(v8 + 64) = v9;
  *(v8 + 32) = a2;
  v14._countAndFlagsBits = sub_37540();
  sub_375D0(v14);

  v15._countAndFlagsBits = 0x209286E220;
  v15._object = 0xA500000000000000;
  sub_375D0(v15);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_41500;
  *(v10 + 56) = &type metadata for CGFloat;
  *(v10 + 64) = v9;
  *(v10 + 32) = v4;
  v16._countAndFlagsBits = sub_37540();
  sub_375D0(v16);

  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  sub_375D0(v17);
  return 91;
}

uint64_t sub_175B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6710895;
  }

  else
  {
    v3 = 28271;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6710895;
  }

  else
  {
    v5 = 28271;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_37AD0();
  }

  return v8 & 1;
}

Swift::Int sub_17648()
{
  sub_37B30();
  sub_375A0();

  return sub_37B80();
}

uint64_t sub_176B8()
{
  sub_375A0();
}

Swift::Int sub_17714()
{
  sub_37B30();
  sub_375A0();

  return sub_37B80();
}

uint64_t sub_17780@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_52030;
  v8._object = v3;
  v5 = sub_37A90(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_177E0(uint64_t *a1@<X8>)
{
  v2 = 28271;
  if (*v1)
  {
    v2 = 6710895;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1780C()
{
  if (*v0)
  {
    return 6710895;
  }

  else
  {
    return 28271;
  }
}

unint64_t sub_17834()
{
  result = qword_59200;
  if (!qword_59200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59200);
  }

  return result;
}

unint64_t sub_1789C()
{
  result = qword_59208;
  if (!qword_59208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59208);
  }

  return result;
}

uint64_t sub_17904(uint64_t a1, uint64_t a2)
{
  v4 = sub_37360();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_17984(uint64_t a1, uint64_t a2)
{
  v4 = sub_37360();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ProgressSpring()
{
  result = qword_59268;
  if (!qword_59268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_17A40()
{
  result = sub_37360();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_17ABC()
{
  type metadata accessor for ProgressSpring();
  sub_37350();
  return sub_37350();
}

void sub_17BB0(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 functionWithName:v6];

  *a3 = v7;
}

id sub_17C1C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1044549468;
  LODWORD(v2) = 1060991140;
  LODWORD(v3) = 1060991140;
  result = [v0 initWithControlPoints:0.0 :v2 :v1 :v3];
  qword_5CCC8 = result;
  return result;
}

id sub_17C70()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1062165545;
  LODWORD(v2) = 1038174126;
  LODWORD(v3) = 1062501089;
  result = [v0 initWithControlPoints:0.0 :v1 :v2 :v3];
  qword_5CCD0 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WarlockFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WarlockFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_17DB8()
{
  result = qword_592A8;
  if (!qword_592A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_592A8);
  }

  return result;
}

Swift::Int sub_17E14()
{
  sub_37B30();
  sub_37B40(0);
  return sub_37B80();
}

Swift::Int sub_17E80()
{
  sub_37B30();
  sub_37B40(0);
  return sub_37B80();
}

id sub_17F74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockMiniClockViewConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_1802C(uint64_t a1)
{
  sub_AC28(a1, v6);
  if (!v7)
  {
    sub_AC98(v6);
    return 0;
  }

  type metadata accessor for WarlockMiniClockViewConfiguration();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_typeface) != v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_typeface])
  {

    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_backgroundVisibility);
  v4 = *&v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_backgroundVisibility];

  return v3 == v4;
}

Swift::Int sub_18174()
{
  sub_37B90();
  sub_37B40(*(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_typeface));
  v1 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_backgroundVisibility);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  sub_37B60(*&v1);
  return sub_37B70();
}

void sub_181E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView);
  if (v1)
  {
    v2 = v1;
    sub_1A0B8(v27);
    v3 = *v28;
    *v26 = *v28;
    *&v26[16] = *&v28[16];
    v24 = v27[0];
    v25 = v27[1];
    v4 = v29;
    v5 = v30;
    v6 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
    *&v28[9] = *&v26[9];
    *v28 = v3;
    v31 &= 1u;
    v10 = v31;
    sub_16B9C(v27, v23, &qword_59378);
    sub_16A8C(v6, v7, v8, v9);
    v11 = v4;
    sub_1B4F4(v11, v2);

    v12 = &v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_fontTracking];
    *v12 = v5;
    v12[8] = v10;
    sub_2A938(v36);

    sub_16B38(v36);
    sub_20AFC(*v12, v12[8]);

    v13 = &v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout];
    v14 = v25;
    *v13 = v24;
    *(v13 + 1) = v14;
    *(v13 + 2) = *v26;
    *(v13 + 41) = *&v26[9];
    sub_2A130();
    sub_16B9C(v27, v23, &qword_59378);

    v15 = &v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle];
    v16 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle];
    v17 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle + 8];
    v18 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle + 16];
    *v15 = v6;
    *(v15 + 1) = v7;
    *(v15 + 4) = v8;
    LOBYTE(v12) = v15[20];
    v15[20] = v9;
    sub_16B18(v6, v7, v8, v9);
    sub_16A8C(v16, v17, v18, v12);
    v19 = *v15;
    v20 = *(v15 + 1);
    v21 = *(v15 + 4);
    v22 = v15[20];

    sub_16B18(v19, v20, v21, v22);
    sub_20CFC(v19, v20, v21 | (v22 << 32));

    sub_16A8C(v6, v7, v8, v9);
    sub_16C04(v27, &qword_59378);
  }
}

void sub_18448()
{
  v1 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView);
  if (v1)
  {
    v2 = v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearBackgroundTritiumState;
    v3 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearBackgroundTritiumState);
    v4 = *(v2 + 8);
    v5 = qword_58520;
    v6 = v1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_815C(&qword_587B0);
    v8 = sub_9F2C(v7, qword_5CC80);
    sub_185F0(v8, v3, v4);
    CLKInterpolateBetweenFloatsUnclipped();
    if (v9 == 0.0)
    {
      v10 = 0;
    }

    else
    {
      sub_37220();
      v10 = sub_37250();
    }

    v11 = sub_36DF0();
    __chkstk_darwin(v11);
    sub_36EE0();
    sub_16AAC(v10);
    sub_16AAC(v10);
  }
}

float sub_185F0(uint64_t a1, char a2, double a3)
{
  v5 = a1;
  if (a2)
  {
    v5 = a1 + *(sub_815C(&qword_587B0) + 52);
  }

  v13 = type metadata accessor for ProgressSpring();
  v14 = &off_52AC0;
  v6 = sub_1BE78(&v12);
  sub_1BEDC(v5, v6, type metadata accessor for ProgressSpring);
  sub_1BF44(&v12, v15);
  v7 = v16;
  v8 = v17;
  sub_AD00(v15, v16);
  v9 = (*(v8 + 8))(v7, v8, a3);
  sub_85EC(v15);
  v10 = 1.0 - v9;
  if ((a2 & 1) == 0)
  {
    return v9;
  }

  return v10;
}

id sub_186EC()
{
  v1 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader;
  v2 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18768@<X0>(uint64_t a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
  v4 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 48];
  v37 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 32];
  v38 = v4;
  v5 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 80];
  v39 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 64];
  v40 = v5;
  v41 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 96];
  v6 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 16];
  v35 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
  v36 = v6;
  v7 = *(&v37 + 1);
  if (*(&v37 + 1))
  {
    v8 = v41;
    v23 = v39;
    v24 = v40;
    v9 = v38;
    v10 = v37;
    v11 = v35;
    v12 = v36;
LABEL_5:
    v21 = v12;
    v22 = v9;
    v20 = v11;
    result = sub_16B9C(&v35, v26, &qword_59168);
    *a1 = v20;
    *(a1 + 16) = v21;
    *(a1 + 32) = v10;
    *(a1 + 40) = v7;
    *(a1 + 48) = v22;
    *(a1 + 64) = v23;
    *(a1 + 80) = v24;
    *(a1 + 96) = v8;
    return result;
  }

  result = [v1 device];
  if (result)
  {
    sub_C9E4(result, &v28);
    v14 = *(v3 + 5);
    v26[4] = *(v3 + 4);
    v26[5] = v14;
    v27 = *(v3 + 12);
    v15 = *(v3 + 1);
    v26[0] = *v3;
    v26[1] = v15;
    v16 = *(v3 + 3);
    v26[2] = *(v3 + 2);
    v26[3] = v16;
    v17 = v29;
    *v3 = v28;
    *(v3 + 1) = v17;
    *(v3 + 12) = v34;
    v18 = v33;
    *(v3 + 4) = v32;
    *(v3 + 5) = v18;
    v19 = v31;
    *(v3 + 2) = v30;
    *(v3 + 3) = v19;
    sub_D2A0(&v28, v25);
    sub_16C04(v26, &qword_59168);
    v23 = v32;
    v24 = v33;
    v9 = v31;
    v8 = v34;
    v7 = *(&v30 + 1);
    v10 = v30;
    v11 = v28;
    v12 = v29;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_188EC()
{
  v1 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView];
  *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView] = 0;

  v2 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView];
  *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] = 0;

  v3 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
  *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView] = 0;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for WarlockFaceView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for WarlockFaceView()
{
  result = qword_59360;
  if (!qword_59360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18BF8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for WarlockFaceView();
  objc_msgSendSuper2(&v6, "_unloadSnapshotContentViews");
  v1 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView;
  v2 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  [v0 setTimeView:0];
  v4 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView;
  [*&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] removeFromSuperview];
  v5 = *&v0[v4];
  *&v0[v4] = 0;

  sub_19724();
}

void sub_18CF0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for WarlockFaceView();
  objc_msgSendSuper2(&v4, "_applyShowsCanonicalContent");
  [v0 setHidden:1];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_1BE3C;
  v3[5] = v1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_2BBB4;
  v3[3] = &unk_52C28;
  v2 = _Block_copy(v3);

  [v0 _finalizeForSnapshotting:v2];
  _Block_release(v2);
}

void sub_18DF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setHidden:0];
  }
}

void sub_18E98(uint64_t a1, uint64_t a2)
{
  v5 = sub_815C(&qword_593A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView);
  if (v8)
  {
    v9 = sub_37750();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_37730();
    v10 = v8;

    v11 = sub_37720();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    v12[5] = 30;
    v12[6] = a1;
    v12[7] = a2;
    sub_1B004(0, 0, v7, &unk_42478, v12);
  }
}

void sub_19118()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for WarlockFaceView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame:?];
  }

  v3 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }
}

void sub_19218()
{
  v1 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView;
  if (*&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView])
  {
    return;
  }

  v2 = v0;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for WarlockPatchworkState();
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyArrayStorage;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  sub_815C(&qword_59398);
  v5 = sub_376E0();
  *(v5 + 16) = 4;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v4 + 56) = v5;
  *(v4 + 64) = 1;
  *(v4 + 72) = 0x3FF0000000000000;
  *(v4 + 80) = 0x3F80000000000000;
  *(v4 + 24) = sub_1BA3C;
  *(v4 + 32) = v3;
  *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_patchworkState] = v4;

  [v2 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_allocWithZone(type metadata accessor for WarlockBackgroundView());

  v16 = sub_356A0(v15, v7, v9, v11, v13);
  [v16 setUserInteractionEnabled:0];
  v17 = [v2 contentView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_8;
  }

  v18 = v17;
  [v17 addSubview:v16];

  v19 = [v2 contentView];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 sendSubviewToBack:v16];

  v21 = *&v2[v1];
  *&v2[v1] = v16;
}

id sub_19440@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_815C(qword_59170);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_36CB0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_16B9C(Strong + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_overrideDate, v7, qword_59170);
    v17 = *(v9 + 48);
    if (v17(v7, 1, v8) != 1)
    {
LABEL_9:

      return (*(v9 + 32))(a1, v7, v8);
    }

    v20 = a1;
    sub_16C04(v7, qword_59170);
    sub_16B9C(v16 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_specifierDate, v5, qword_59170);
    if (v17(v5, 1, v8) != 1)
    {
      v7 = v5;
      a1 = v20;
      goto LABEL_9;
    }

    sub_16C04(v5, qword_59170);
    result = [objc_opt_self() faceDate];
    a1 = v20;
    if (result)
    {
      v19 = result;
      sub_36CA0();

      v7 = v12;
      goto LABEL_9;
    }
  }

  else
  {
    result = [objc_opt_self() faceDate];
    if (result)
    {
      v16 = result;
      sub_36CA0();
      v7 = v14;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_19724()
{
  v1 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_isPaused);
    *(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_isPaused) = 1;
    if ((v3 & 1) == 0)
    {
      [*(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quadView) setPaused:1];
    }

    v4 = *(v0 + v1);
    if (v4)
    {
      [v4 removeFromSuperview];
      v4 = *(v0 + v1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v1) = 0;
}

void sub_197C0()
{
  v1 = v0;
  [v0 bounds];
  v6 = [objc_allocWithZone(UIView) initWithFrame:{v2, v3, v4, v5}];
  v7 = [v6 layer];
  v8 = [objc_opt_self() blackColor];
  v9 = [v8 CGColor];

  [v7 setBackgroundColor:v9];
  v10 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterVibrantColorMatrix];
  v20[0] = xmmword_42340;
  v20[1] = xmmword_42350;
  v20[2] = xmmword_42360;
  v21 = 1065118335;
  v23 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 1065353216;
  v11 = [objc_opt_self() valueWithCAColorMatrix:v20];
  [v10 setValue:v11 forKey:kCAFilterInputColorMatrix];

  sub_B2AC(0, &qword_58670);
  isa = sub_37840(1).super.super.isa;
  [v10 setValue:isa forKey:kCAFilterInputBackdropAware];

  v13 = [v6 layer];
  sub_815C(&qword_59388);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_41500;
  *(v14 + 56) = sub_B2AC(0, &qword_59390);
  *(v14 + 32) = v10;
  v15 = v10;
  v16 = sub_376A0().super.isa;

  [v13 setFilters:v16];

  v17 = [v1 contentView];
  if (v17)
  {
    v18 = v17;
    [v17 addSubview:v6];

    v19 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView];
    *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] = v6;
  }

  else
  {
    __break(1u);
  }
}

const __CFString *sub_19ACC()
{
  v1 = _s10descr51419V15BackgroundStyleOMa();
  __chkstk_darwin(v1);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  sub_1A0B8(v58);
  v57[0] = v59[0];
  v57[1] = v59[1];
  v55 = v58[0];
  v56 = v58[1];
  v4 = v60;
  v52 = v61;
  v5 = v63;
  v6 = v64;
  v7 = v65;
  v8 = v66;
  *(v59 + 9) = *(v57 + 9);
  v59[0] = v57[0];
  v51 = v62 & 1;
  v62 &= 1u;
  sub_16B9C(v58, v54, &qword_59378);
  sub_16A8C(v5, v6, v7, v8);
  sub_16B9C(v58, v54, &qword_59378);

  swift_storeEnumTagMultiPayload();
  v50 = type metadata accessor for DigitalTimeView();
  v9 = objc_allocWithZone(v50);
  v10 = &v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_fontTracking];
  *v10 = 0;
  v10[8] = 1;
  *&v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_tritiumProgress] = 0;
  v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_isFrozen] = 0;
  v11 = &v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 6) = 0;
  v13 = &v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout];
  *(v13 + 41) = *(v57 + 9);
  v14 = v57[0];
  v13[1] = v56;
  v13[2] = v14;
  *v13 = v55;
  v15 = &v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_font];
  v15[3] = sub_B2AC(0, &qword_59380);
  v15[4] = &off_52908;
  *v15 = v4;
  *v10 = v52;
  v10[8] = v51;
  v16 = &v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle];
  *v16 = v5;
  *(v16 + 1) = v6;
  *(v16 + 4) = v7;
  v16[20] = v8;
  v52 = v3;
  v17 = v3;
  v18 = v8;
  sub_1BEDC(v17, &v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backgroundStyle], _s10descr51419V15BackgroundStyleOMa);
  *&v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_maskStyle] = 0;
  v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeTransition] = 2;
  __asm { FMOV            V0.2D, #1.0 }

  *&v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_scaleEffectSize] = _Q0;
  v24 = &v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backdropGroupName];
  *v24 = 0x6B636F6C726177;
  v24[1] = 0xE700000000000000;
  *&v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_opacity] = 0x3FF0000000000000;
  v25 = objc_allocWithZone(CLKTimeFormatter);
  v26 = v4;
  sub_16B18(v5, v6, v7, v18);
  v27 = [v25 initWithForcedNumberSystem:0 clockTimer:0];
  if (!v27)
  {
    __break(1u);
    goto LABEL_11;
  }

  *&v9[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter] = v27;
  v53.receiver = v9;
  v53.super_class = v50;
  v28 = objc_msgSendSuper2(&v53, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v28 setClipsToBounds:1];
  sub_2A850(0, 0, 0x100u);
  v29 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter;
  [*&v28[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter] addObserver:v28];
  sub_2B084();
  sub_16A8C(v5, v6, v7, v18);

  sub_16ABC(v52);
  v30 = v49;
  [*&v28[v29] addObserver:v49];
  [v30 bounds];
  [v28 setFrame:?];
  [v28 setUserInteractionEnabled:0];

  if (!NTKInternalBuild())
  {
LABEL_8:
    v45 = [v30 contentView];
    if (v45)
    {
      v46 = v45;
      [v45 addSubview:v28];

      v47 = *&v30[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
      *&v30[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView] = v28;
      v48 = v28;

      [v30 setTimeView:v48];
      return sub_16C04(v58, &qword_59378);
    }

LABEL_11:
    __break(1u);
  }

  v54[0] = 0;
  result = sub_37500();
  if (NTKFacePreferencesDomain)
  {
    v32 = result;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(result, NTKFacePreferencesDomain, v54);

    if (v54[0] && AppBooleanValue)
    {
      if (*&v30[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_patchworkState])
      {

        [v30 bounds];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v42 = objc_allocWithZone(type metadata accessor for WarlockDebugView());

        v44 = sub_350B8(v43, v35, v37, v39, v41);

        [v28 addSubview:v44];
      }
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1A0B8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
  if (!v4)
  {
LABEL_14:
    sub_18768(v72);
    v22 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface;
    v23 = v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface];
    v24 = v73;
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v75;
    }

    v26 = type metadata accessor for WarlockTypefaceAttributes();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontSize] = v24;
    v28 = &v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight];
    *v28 = v25;
    v28[8] = v23;
    v29 = 1;
    v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne] = 1;
    v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo] = 1;
    v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates] = v23 ^ 1;
    v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures] = 0;
    v70.receiver = v27;
    v70.super_class = v26;
    v30 = objc_msgSendSuper2(&v70, "init");
    sub_9C68(v72);
    v31 = v30;
    v32 = sub_186EC();
    v33 = v32;
    if (v2[v22])
    {
      v34 = &selRef_solidFontWithAttributes_;
    }

    else
    {
      v34 = &selRef_stencilFontWithAttributes_;
    }

    v68 = [v32 *v34];

    v35 = &v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
    v67 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
    v36 = v2[v22];
    v37 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader];
    v38 = v37;
    v39 = &selRef_solidFontTypographicBoundsWithAttributes_;
    if (!v36)
    {
      v39 = &selRef_stencilFontTypographicBoundsWithAttributes_;
    }

    v40 = [v37 *v39];

    v41 = *&v40[OBJC_IVAR___NTKTimeFontTypographicBounds_width];
    v42 = v41 - CGRectGetMaxX(*&v40[OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds]);
    [v2 bounds];
    Width = CGRectGetWidth(v79);
    v44 = v35[1];
    v45 = v42 / Width;
    [v2 bounds];
    v46 = v44 / CGRectGetWidth(v80);
    v81.origin.x = 0.0;
    v81.origin.y = 0.0;
    v81.size.width = 1.0;
    v81.size.height = 1.0;
    v47 = CGRectGetWidth(v81);

    v48 = 0;
    v49 = 0;
    v50 = v45 + v47 - v46;
    v14 = v35[2];
    v51 = *(v35 + 3);
    v52 = 3;
    goto LABEL_28;
  }

  v5 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter;
  v6 = *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter];
  v7 = v4;
  if (![v6 isTopOfHour])
  {

    goto LABEL_14;
  }

  v8 = *&v4[v5];
  sub_F5F0();
  v10 = v9;

  sub_18768(v71);
  v11 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface;
  v12 = sub_B428(v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface], v10);
  v13 = sub_9C68(v71);
  v14 = nullsub_1(v13, v12);
  v15 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 16];
  v72[0] = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
  v72[1] = v15;
  v73 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 32];
  v74 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 48];
  v16 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 56];
  v17 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 64];
  v77 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 72];
  v78 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 88];
  v75 = v16;
  v76 = v17;
  LOBYTE(v8) = v2[v11];
  v18 = sub_B494(0, v72, v10, v8);
  if (v8)
  {
    v19 = *(v17 + 16);
    if (v19)
    {
      v20 = (v17 + 48);
      while (v10 < *(v20 - 2) || *(v20 - 1) < v10)
      {
        v20 += 3;
        if (!--v19)
        {
          goto LABEL_12;
        }
      }

      v53 = 0;
      v54 = *v20;
    }

    else
    {
LABEL_12:
      v54 = 0;
      v53 = 1;
    }
  }

  else
  {
    v53 = 0;
    v54 = v16;
  }

  v55 = type metadata accessor for WarlockTypefaceAttributes();
  v56 = objc_allocWithZone(v55);
  *&v56[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontSize] = v18;
  v57 = &v56[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight];
  *v57 = v54;
  v57[8] = v53;
  v56[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne] = 0;
  v56[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo] = 0;
  v56[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates] = 0;
  v56[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures] = 1;
  v69.receiver = v56;
  v69.super_class = v55;
  v31 = objc_msgSendSuper2(&v69, "init");
  v58 = sub_186EC();
  v59 = v58;
  if (v2[v11])
  {
    v60 = [v58 solidFontWithAttributes:v31];
  }

  else
  {
    v60 = [v58 stencilFontWithAttributes:v31];
  }

  v68 = v60;

  v67 = 0;
  v51 = 0;
  v29 = 0;
  v52 = 0;
  v50 = 1.0;
  v48 = 1;
  v49 = 1;
LABEL_28:
  if (v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface])
  {
    v61 = 0xD000000000000012;
  }

  else
  {
    v61 = 0xD000000000000014;
  }

  if (v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface])
  {
    v62 = ",&";
  }

  else
  {
    v62 = "watchFaceFlowSolid";
  }

  v63 = v62 | 0x8000000000000000;
  v64 = sub_37400();

  if (v64)
  {
    v65 = 1;
    v66 = 1056964608;
  }

  else
  {

    v61 = 0;
    v63 = 0;
    v66 = 0;
    v65 = 2;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v50;
  *(a1 + 24) = 0x3FF0000000000000;
  *(a1 + 32) = v52;
  *(a1 + 33) = v49;
  *(a1 + 40) = v14;
  *(a1 + 48) = v51;
  *(a1 + 56) = v29;
  *(a1 + 64) = v68;
  *(a1 + 72) = v67;
  *(a1 + 80) = v48;
  *(a1 + 88) = v61;
  *(a1 + 96) = v63;
  *(a1 + 104) = v66;
  *(a1 + 108) = v65;
}

void sub_1A648(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for WarlockFaceView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_1A6A0();
}

id sub_1A6A0()
{
  v1 = [v0 isFrozen];
  v2 = [v0 dataMode];
  result = [v0 editing];
  if (v2 == &dword_0 + 1)
  {
    v4 = v1 & (result ^ 1);
  }

  else
  {
    v4 = result ^ 1;
  }

  v5 = v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_isPaused];
  if (v5 == 2 || ((v4 ^ v5) & 1) != 0)
  {
    v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_isPaused] = v4;
    v6 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView];
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_isPaused);
      *(v6 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_isPaused) = v4;
      if (v4 != v7)
      {
        v8 = *(v6 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quadView);

        return [v8 setPaused:?];
      }
    }
  }

  return result;
}

id sub_1A858()
{
  v1 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchRefreshHandlerManager;
  v2 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchRefreshHandlerManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchRefreshHandlerManager);
  }

  else
  {
    v4 = [objc_allocWithZone(NTKSwatchRefreshHandlerManager) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A8CC(void *a1)
{
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView] = 0;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] = 0;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView] = 0;
  v3 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_overrideDate;
  v4 = sub_36CB0();
  v5 = *(*(v4 - 8) + 56);
  v5(&v1[v3], 1, 1, v4);
  v5(&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_specifierDate], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_patchworkState] = 0;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader] = 0;
  v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_isPaused] = 2;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_breathingFraction] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_rubberBandingFraction] = 0;
  v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface] = 0;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundVisibility] = 0x3FF0000000000000;
  v6 = &v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 12) = 0;
  v7 = &v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearBackgroundTritiumState];
  *v7 = 1;
  *(v7 + 1) = 0x3FF0000000000000;
  v8 = &v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearTimeTransformTritiumState];
  *v8 = 1;
  *(v8 + 1) = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_transitioningTypefaces] = 2;
  v9 = &v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingColorMatrix];
  *v9 = xmmword_42340;
  *(v9 + 1) = xmmword_42350;
  *(v9 + 2) = xmmword_42360;
  *(v9 + 12) = 1065118335;
  *(v9 + 60) = 0;
  *(v9 + 52) = 0;
  *(v9 + 17) = 0;
  *(v9 + 9) = 1065353216;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchRefreshHandlerManager] = 0;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchTimeFormatter] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for WarlockFaceView();
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

id sub_1AB20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView] = 0;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] = 0;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView] = 0;
  v8 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_overrideDate;
  v9 = sub_36CB0();
  v10 = *(*(v9 - 8) + 56);
  v10(&v4[v8], 1, 1, v9);
  v10(&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_specifierDate], 1, 1, v9);
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_patchworkState] = 0;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader] = 0;
  v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_isPaused] = 2;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_breathingFraction] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_rubberBandingFraction] = 0;
  v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface] = 0;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundVisibility] = 0x3FF0000000000000;
  v11 = &v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 12) = 0;
  v12 = &v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearBackgroundTritiumState];
  *v12 = 1;
  *(v12 + 1) = 0x3FF0000000000000;
  v13 = &v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearTimeTransformTritiumState];
  *v13 = 1;
  *(v13 + 1) = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_transitioningTypefaces] = 2;
  v14 = &v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingColorMatrix];
  *v14 = xmmword_42340;
  *(v14 + 1) = xmmword_42350;
  *(v14 + 2) = xmmword_42360;
  *(v14 + 12) = 1065118335;
  *(v14 + 60) = 0;
  *(v14 + 52) = 0;
  *(v14 + 17) = 0;
  *(v14 + 9) = 1065353216;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchRefreshHandlerManager] = 0;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchTimeFormatter] = 0;
  if (a4)
  {
    v15 = sub_37500();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v4;
  v18.super_class = type metadata accessor for WarlockFaceView();
  v16 = objc_msgSendSuper2(&v18, "initWithFaceStyle:forDevice:clientIdentifier:", a1, a2, v15);

  if (v16)
  {
  }

  return v16;
}

void sub_1AE00()
{
  sub_1AEF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AEF4()
{
  if (!qword_59370)
  {
    sub_36CB0();
    v0 = sub_37870();
    if (!v1)
    {
      atomic_store(v0, &qword_59370);
    }
  }
}

uint64_t sub_1AF4C(uint64_t a1, unint64_t a2)
{
  sub_16B8C(a2);
  sub_2A938(v4);

  sub_16B38(v4);
  sub_21194(a2);
}

uint64_t sub_1B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_815C(&qword_593A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_16B9C(a3, v25 - v10, &qword_593A0);
  v12 = sub_37750();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_16C04(v11, &qword_593A0);
  }

  else
  {
    sub_37740();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_37700();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_37570() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_16C04(a3, &qword_593A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_16C04(a3, &qword_593A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B304(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B3FC;

  return v6(a1);
}

uint64_t sub_1B3FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4F4(uint64_t a1, uint64_t a2)
{
  v7[3] = sub_B2AC(0, &qword_59380);
  v7[4] = &off_52908;
  v7[0] = a1;
  v4 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_font;
  swift_beginAccess();
  sub_1B638((a2 + v4), v7);
  swift_endAccess();
  sub_2A938(v8);

  sub_16B38(v8);
  sub_9B84(a2 + v4, v6);
  swift_getKeyPath();
  sub_1B878();
  sub_36CC0();

  sub_85EC(v7);

  return sub_85EC(v6);
}

uint64_t *sub_1B638(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t sub_1B878()
{
  result = qword_5A030;
  if (!qword_5A030)
  {
    _s10descr51419V5ModelCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A030);
  }

  return result;
}

uint64_t sub_1B8D0(uint64_t a1, uint64_t a2)
{
  v7[3] = _s10descr51419V18TransitioningFontsCMa();
  v7[4] = &off_52918;
  v7[0] = a1;
  v4 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_font;
  swift_beginAccess();
  sub_1B638((a2 + v4), v7);
  swift_endAccess();
  sub_2A938(v8);

  sub_16B38(v8);
  sub_9B84(a2 + v4, v6);
  swift_getKeyPath();
  sub_1B878();
  sub_36CC0();

  sub_85EC(v7);

  return sub_85EC(v6);
}

uint64_t sub_1BA04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1BA44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1BA84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1BACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BBA0;

  return sub_35B1C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BBA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BC94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1BCCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF78;

  return sub_1B304(a1, v4);
}

uint64_t sub_1BD84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BBA0;

  return sub_1B304(a1, v4);
}

uint64_t sub_1BE44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_1BE78(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF44(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BF7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = sub_371E0();
  sub_36DE0();
  v4 = v54;
  v3 = v4 >> 64;
  v37 = v4;
  v5 = v55;
  v34 = sub_37420();
  v39 = v6;
  v7 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_width);
  v8 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_ascent);
  v9 = v8 + *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_descent);
  sub_37420();
  sub_36E10();
  v38 = sub_371F0();
  sub_36DE0();
  v10 = v57;
  v32 = DWORD2(v57);
  v11 = sub_37420();
  v35 = v12;
  v36 = v11;
  v13 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds);
  v14 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds + 8);
  v15 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds + 16);
  v16 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds + 24);
  v113.origin.x = v13;
  v113.origin.y = v14;
  v113.size.width = v15;
  v113.size.height = v16;
  CGRectGetWidth(v113);
  v114.origin.x = v13;
  v114.origin.y = v14;
  v114.size.width = v15;
  v114.size.height = v16;
  CGRectGetHeight(v114);
  sub_37420();
  sub_36E10();
  v115.origin.x = v13;
  v115.origin.y = v14;
  v115.size.width = v15;
  v115.size.height = v16;
  v17 = v8 - CGRectGetMaxY(v115);
  sub_370C0();
  sub_37240();
  v18 = sub_37250();

  sub_36DE0();
  v19 = sub_37420();
  v31 = v20;
  v21 = v20;
  v22 = sub_37200();
  sub_37420();
  sub_36E10();
  *&v48[6] = v60;
  *&v48[22] = v61;
  *&v48[38] = v62;
  v23 = v7 * 0.5;
  v24 = v9 * 0.5;
  v63[0] = v54;
  v63[1] = v55;
  v25 = v56;
  *&v64 = v56;
  *(&v64 + 1) = v40;
  LOWORD(v65) = 256;
  *(&v65 + 1) = v34;
  *v66 = v39;
  *&v66[40] = v47;
  *&v66[24] = v46;
  *&v66[8] = v45;
  __src[2] = v64;
  __src[3] = v65;
  __src[0] = v54;
  __src[1] = v55;
  __src[4] = *v66;
  __src[5] = *&v66[16];
  __src[6] = *&v66[32];
  v67[0] = v57;
  v26 = HIDWORD(v57);
  v27 = v58;
  v67[1] = v58;
  v28 = *(&v58 + 1);
  v29 = v59;
  *&v68 = v59;
  *(&v68 + 1) = v38;
  LOWORD(v69) = 256;
  *(&v69 + 1) = v36;
  *v70 = v35;
  *&v70[24] = v43;
  *&v70[40] = v44;
  *&v70[8] = v42;
  *&v70[56] = v13;
  v71 = v17;
  *(&__src[7] + 8) = v57;
  *(&__src[11] + 8) = *v70;
  *(&__src[10] + 8) = v69;
  *(&__src[9] + 8) = v68;
  *(&__src[8] + 8) = v58;
  *&__src[7] = *(&v47 + 1);
  *(&__src[15] + 1) = v17;
  *(&__src[14] + 8) = *&v70[48];
  *(&__src[13] + 8) = *&v70[32];
  *(&__src[12] + 8) = *&v70[16];
  v72[2] = v51;
  v72[3] = v52;
  v72[4] = v53;
  v72[1] = v50;
  v72[0] = v49;
  *&v73 = v18;
  WORD4(v73) = 256;
  *&v74 = v19;
  *(&v74 + 1) = v21;
  __src[18] = v51;
  __src[19] = v52;
  __src[16] = v49;
  __src[17] = v50;
  __src[20] = v53;
  __src[21] = v73;
  *v75 = v22;
  *&v75[8] = 256;
  *&v75[10] = *v48;
  *&v75[26] = *&v48[16];
  *&v75[42] = *&v48[32];
  *&v75[56] = *(&v62 + 1);
  *&v76 = v23;
  *(&v76 + 1) = v24;
  __src[22] = v74;
  __src[23] = *v75;
  __src[26] = *&v75[48];
  __src[27] = v76;
  __src[24] = *&v75[16];
  __src[25] = *&v75[32];
  memcpy(a2, __src, 0x1C0uLL);
  v77 = v22;
  v78 = 256;
  v79 = *v48;
  v80 = *&v48[16];
  *v81 = *&v48[32];
  *&v81[14] = *&v48[46];
  v82 = v23;
  v83 = v24;
  sub_16B9C(v63, &v89, &qword_593A8);
  sub_16B9C(v67, &v89, &qword_593B0);
  sub_16B9C(v72, &v89, &qword_593B8);
  sub_16B9C(v75, &v89, &qword_593C0);
  sub_16C04(&v77, &qword_593C0);
  v84[2] = v51;
  v84[3] = v52;
  v84[4] = v53;
  v84[1] = v50;
  v84[0] = v49;
  v85 = v18;
  v86 = 256;
  v87 = v19;
  v88 = v31;
  sub_16C04(v84, &qword_593B8);
  v89 = v10;
  v90 = v32;
  v91 = v26;
  v92 = v27;
  v93 = v28;
  v94 = v29;
  v95 = v38;
  v96 = 256;
  v97 = v36;
  v98 = v35;
  v99 = v42;
  v100 = v43;
  v101 = v44;
  v102 = v13;
  v103 = v17;
  sub_16C04(&v89, &qword_593B0);
  v104[0] = __PAIR128__(v3, v37);
  v104[1] = v5;
  v105 = v25;
  v106 = v40;
  v107 = 256;
  v108 = v34;
  v109 = v39;
  v110 = v45;
  v111 = v46;
  v112 = v47;
  return sub_16C04(v104, &qword_593A8);
}

id sub_1C720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimeFontTypographicBounds();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1C78C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR___NTKTimeFontTypographicBounds_text];
  *v5 = a1;
  *(v5 + 1) = a2;
  sub_815C(&qword_58968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_414F0;
  *(inited + 32) = NSFontAttributeName;
  v7 = sub_16CF4();
  *(inited + 40) = a3;
  *(inited + 64) = v7;
  *(inited + 72) = NSTrackingAttributeName;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;

  v8 = NSFontAttributeName;
  v9 = a3;
  v10 = NSTrackingAttributeName;
  sub_34BFC(inited);
  swift_setDeallocating();
  sub_815C(&qword_58988);
  swift_arrayDestroy();
  v11 = objc_allocWithZone(NSAttributedString);
  v12 = sub_37500();

  type metadata accessor for Key(0);
  sub_B2F4();
  isa = sub_374C0().super.isa;

  v14 = [v11 initWithString:v12 attributes:isa];

  v15 = CTLineCreateWithAttributedString(v14);
  descent = 0.0;
  ascent = 0.0;
  leading = 0.0;
  TypographicBounds = CTLineGetTypographicBounds(v15, &ascent, &descent, &leading);
  ImageBounds = CTLineGetImageBounds(v15, 0);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  width = ImageBounds.size.width;
  height = ImageBounds.size.height;
  BoundsWithOptions = CTLineGetBoundsWithOptions(v15, 8uLL);
  v20 = BoundsWithOptions.origin.x;
  v21 = BoundsWithOptions.origin.y;
  v22 = BoundsWithOptions.size.width;
  v23 = BoundsWithOptions.size.height;

  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_width] = TypographicBounds;
  v24 = descent;
  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_ascent] = ascent;
  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_descent] = v24;
  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_leading] = leading;
  v25 = &v3[OBJC_IVAR___NTKTimeFontTypographicBounds_imageBounds];
  *v25 = x;
  v25[1] = y;
  v25[2] = width;
  v25[3] = height;
  v26 = &v3[OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds];
  *v26 = v20;
  v26[1] = v21;
  v26[2] = v22;
  v26[3] = v23;
  v29.receiver = v3;
  v29.super_class = type metadata accessor for TimeFontTypographicBounds();
  return objc_msgSendSuper2(&v29, "init");
}

uint64_t sub_1CA50(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1CA64(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1CA90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 109))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CAD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 108) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 109) = 1;
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

    *(result + 109) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CB48@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 sub_1CB54(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CB70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CBB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 2;
    }
  }

  return result;
}

uint64_t _s10descr51419V6LayoutV4RectOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

BOOL sub_1CC58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1D1B8(v5, v7);
}

uint64_t sub_1CCDC()
{
  v1._countAndFlagsBits = 0x7A696C616D726F6ELL;
  v1._object = 0xEB00000000286465;
  sub_375D0(v1);
  type metadata accessor for CGRect(0);
  sub_37A20();
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_375D0(v2);
  return 0;
}

uint64_t sub_1CD74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574756E696DLL;
  }

  else
  {
    v3 = 1920298856;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574756E696DLL;
  }

  else
  {
    v5 = 1920298856;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_37AD0();
  }

  return v8 & 1;
}

Swift::Int sub_1CE10()
{
  sub_37B30();
  sub_375A0();

  return sub_37B80();
}

uint64_t sub_1CE88()
{
  sub_375A0();
}

Swift::Int sub_1CEEC()
{
  sub_37B30();
  sub_375A0();

  return sub_37B80();
}

uint64_t sub_1CF60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_520D8;
  v8._object = v3;
  v5 = sub_37A90(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1CFC0(uint64_t *a1@<X8>)
{
  v2 = 1920298856;
  if (*v1)
  {
    v2 = 0x6574756E696DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D030(char a1)
{
  if (a1 == 2)
  {
    return 0x656E696C6E69;
  }

  if (a1 == 3)
  {
    return 0x64656B63617473;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3._countAndFlagsBits = 0x6574756E696DLL;
  }

  else
  {
    v3._countAndFlagsBits = 1920298856;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  v3._object = v4;
  sub_375D0(v3);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_375D0(v5);
  return 0x287469676964;
}

BOOL sub_1D100(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4 && *&a2 == *&a5;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && *&a5 == 0.0)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a2 == *&a5 && *&a1 == *&a4;
}

BOOL sub_1D1B8(uint64_t a1, uint64_t a2)
{
  if (!CGRectEqualToRect(*a1, *a2))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    if ((v5 & 0xFE) == 2)
    {
      return 0;
    }

    if (v4)
    {
      v6 = 0x6574756E696DLL;
    }

    else
    {
      v6 = 1920298856;
    }

    if (v4)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v5)
    {
      v8 = 0x6574756E696DLL;
    }

    else
    {
      v8 = 1920298856;
    }

    if (v5)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    if (v6 == v8 && v7 == v9)
    {

      goto LABEL_25;
    }

    v10 = sub_37AD0();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  if (*(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a1 + 56);

  return sub_1D100(v11, v12, v16, v13, v14, v15);
}

__n128 _s10descr51419V6LayoutV11AdjustmentsOwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s10descr51419V6LayoutV11AdjustmentsOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s10descr51419V6LayoutV11AdjustmentsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D3A8(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D3C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t _s10descr51419V6LayoutV9AlignmentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10descr51419V6LayoutV9AlignmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10descr51419V6LayoutV11ArrangementOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t _s10descr51419V6LayoutV11ArrangementOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D690(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D6A4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1D6C8()
{
  result = qword_59428;
  if (!qword_59428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59428);
  }

  return result;
}

uint64_t sub_1D71C(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0x6574756E696DLL;
  }

  else
  {
    v4 = 1920298856;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (a2)
  {
    v6 = 0x6574756E696DLL;
  }

  else
  {
    v6 = 1920298856;
  }

  if (a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {

    return 1;
  }

  else
  {
    v8 = sub_37AD0();

    return v8 & 1;
  }
}

unint64_t sub_1D824()
{
  result = qword_59430;
  if (!qword_59430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59430);
  }

  return result;
}

uint64_t sub_1D878()
{
  if (qword_58580 != -1)
  {
    swift_once();
  }

  v0 = qword_5CDE0;
  type metadata accessor for WarlockRampColorState();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  qword_5CD28 = v1;
}

uint64_t sub_1D900()
{

  return _swift_deallocClassInstance(v0, 36, 7);
}

__n128 sub_1D970(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D99C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 127))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 126) = 0;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 127) = 1;
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

    *(result + 127) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DA78(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v27 = a3;
  v25 = sub_815C(&qword_59628);
  __chkstk_darwin(v25);
  v5 = &v22[-v4];
  v26 = sub_815C(&qword_59630);
  __chkstk_darwin(v26);
  v7 = &v22[-v6];
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[7];
  v10 = a2[8];
  sub_AD00(a2 + 4, v11);
  v12 = *(v10 + 8);

  v13 = v12(v11, v10);
  v14 = objc_allocWithZone(type metadata accessor for TimeFontTypographicBounds());
  v15 = sub_1C78C(v8, v9, v13);

  if (v23)
  {
    v16 = sub_37410();
    v18 = v17;
    sub_1BF7C(v15, v33);
    memcpy(v30, v33, sizeof(v30));
    memcpy(v31, v33, sizeof(v31));
    sub_16B9C(v30, v32, &qword_59688);
    sub_16C04(v31, &qword_59688);
    memcpy(v29, v30, sizeof(v29));
    v19 = sub_37420();
    v21 = v20;
    v32[0] = v16;
    v32[1] = v18;
    memcpy(&v32[2], v29, 0x1C0uLL);
    LOBYTE(v32[58]) = 0;
    v32[59] = v19;
    v32[60] = v21;
    sub_16B9C(v24, v7, &qword_59568);
    memcpy(&v7[*(v26 + 36)], v32, 0x1E8uLL);
    v33[0] = v16;
    v33[1] = v18;
    memcpy(&v33[2], v29, 0x1C0uLL);
    v34 = 0;
    v35 = v19;
    v36 = v21;
    sub_16B9C(v32, &v28, &qword_59680);
    sub_16C04(v33, &qword_59680);
    sub_16B9C(v7, v5, &qword_59630);
    swift_storeEnumTagMultiPayload();
    sub_815C(&qword_59568);
    sub_1FCFC();
    sub_1FDB4();
    sub_37020();

    sub_16C04(v7, &qword_59630);
  }

  else
  {
    sub_16B9C(v24, v5, &qword_59568);
    swift_storeEnumTagMultiPayload();
    sub_815C(&qword_59568);
    sub_1FCFC();
    sub_1FDB4();
    sub_37020();
  }
}

uint64_t sub_1DE20()
{
  v1 = sub_36FB0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_37800();
    v7 = sub_37070();
    sub_36D50();

    sub_36FA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1DF60@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v62 = sub_815C(&qword_59530);
  __chkstk_darwin(v62);
  v63 = &v53 - v2;
  v64 = sub_815C(&qword_59538);
  v55 = *(v64 - 8);
  __chkstk_darwin(v64);
  v54 = &v53 - v3;
  v4 = sub_815C(&qword_59540);
  __chkstk_darwin(v4 - 8);
  v58 = &v53 - v5;
  v59 = sub_815C(&qword_59548);
  __chkstk_darwin(v59);
  v57 = &v53 - v6;
  v7 = sub_815C(&qword_59550);
  __chkstk_darwin(v7 - 8);
  v61 = &v53 - v8;
  v60 = sub_815C(&qword_59558);
  __chkstk_darwin(v60);
  v67 = &v53 - v9;
  v65 = sub_815C(&qword_59560);
  __chkstk_darwin(v65);
  v69 = &v53 - v10;
  v66 = sub_815C(&qword_59568);
  __chkstk_darwin(v66);
  v68 = &v53 - v11;
  v12 = *(v1 + 40);
  *&v71 = *(v1 + 32);
  *(&v71 + 1) = v12;
  sub_1F520();

  v13 = sub_370F0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v56 = v1;
  v21 = *(v1 + 104);
  v20 = *(v1 + 112);
  v22 = *(v1 + 120) | (*(v1 + 124) << 32);
  v23 = *(v1 + 125);
  v24 = sub_1DE20();
  v25 = v58;
  v26 = v21;
  v27 = v57;
  sub_1E730(v26, v20, v22, v23, v24, v13, v15, v17 & 1, v58, v19);
  v28 = v56;

  sub_1F574(v13, v15, v17 & 1);

  sub_1F084((v28 + 48), v27);
  sub_16C04(v25, &qword_59540);
  if (*(v28 + 96))
  {
    sub_16B9C(v27, v63, &qword_59548);
    swift_storeEnumTagMultiPayload();
    v29 = sub_1F584();
    *&v71 = v59;
    *(&v71 + 1) = v29;
    swift_getOpaqueTypeConformance2();
    v30 = v61;
    sub_37020();
  }

  else
  {
    v31 = sub_1F584();
    v32 = v54;
    v33 = v59;
    sub_371A0();
    v34 = v55;
    v35 = v64;
    (*(v55 + 16))(v63, v32, v64);
    swift_storeEnumTagMultiPayload();
    *&v71 = v33;
    *(&v71 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    v30 = v61;
    sub_37020();
    (*(v34 + 8))(v32, v35);
  }

  sub_16C04(v27, &qword_59548);
  v36 = *(v28 + 97);
  KeyPath = swift_getKeyPath();
  v38 = v67;
  sub_1FC94(v30, v67, &qword_59550);
  v39 = v38 + *(v60 + 36);
  *v39 = KeyPath;
  if (v36)
  {
    if (v36 == 1)
    {
      *(v39 + 8) = 1;
      sub_37420();
    }

    else
    {
      *(v39 + 8) = 0;
      sub_37430();
    }
  }

  else
  {
    *(v39 + 8) = 2;
    sub_37440();
  }

  v40 = v66;
  sub_36EF0();
  v41 = v69;
  sub_1FC94(v38, v69, &qword_59558);
  v42 = (v41 + *(v65 + 36));
  v43 = v76;
  v42[4] = v75;
  v42[5] = v43;
  v42[6] = v77;
  v44 = v72;
  *v42 = v71;
  v42[1] = v44;
  v45 = v74;
  v42[2] = v73;
  v42[3] = v45;
  v46 = swift_getKeyPath();
  v47 = v68;
  v48 = &v68[*(v40 + 36)];
  v49 = *(sub_815C(&qword_59620) + 28);
  v50 = enum case for LayoutDirection.leftToRight(_:);
  v51 = sub_36EB0();
  (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
  *v48 = v46;
  sub_1FC94(v41, v47, &qword_59560);
  sub_1DA78(*(v28 + 126), (v28 + 16), v70);
  return sub_16C04(v47, &qword_59568);
}

uint64_t sub_1E730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v80 = a5;
  v81 = a1;
  v78 = a4;
  v13 = BYTE4(a3);
  v82 = a2;
  v83 = a9;
  v14 = sub_815C(&qword_595D8);
  v73 = *(v14 - 8);
  __chkstk_darwin(v14);
  v79 = v66 - v15;
  v16 = sub_815C(&qword_595D0);
  v74 = *(v16 - 8);
  __chkstk_darwin(v16);
  v71 = v66 - v17;
  v18 = sub_815C(&qword_595C8);
  v75 = *(v18 - 8);
  __chkstk_darwin(v18);
  v72 = v66 - v19;
  v20 = sub_815C(&qword_59698);
  v77 = *(v20 - 8);
  __chkstk_darwin(v20);
  v76 = v66 - v21;
  v22 = sub_815C(&qword_596A0);
  v23 = __chkstk_darwin(v22);
  v26 = v66 - v25;
  v27 = v13;
  if (v27 <= 0xFE)
  {
    v66[1] = a8;
    v66[2] = a7;
    v66[3] = v23;
    v67 = v14;
    v68 = v16;
    v69 = v18;
    v70 = v20;
    v66[0] = v24;
    if (v78 == 2)
    {
      v35 = v81;
      v34 = v82;
      v36 = v24;
      sub_16B18(v81, v82, v24, SBYTE4(v24));
      sub_36D10();
      *&v89 = sub_E880(v35, v34, v36 & 0xFFFFFFFFFFLL);
      v37 = sub_370E0();
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v80 = v42;

      v44 = v41 & 1;
      v79 = v37;
      v84 = v37;
      v85 = v39;
      v86 = v44;
      v87 = v43;
      v88 = 1;
      sub_2014C(v37, v39, v44);

      sub_37020();
      v45 = v89;
      v46 = v90;
      v47 = v91;
      *v26 = v89;
      *(v26 + 1) = v46;
      v26[32] = v47;
      swift_storeEnumTagMultiPayload();
      sub_2015C(v45, *(&v45 + 1), v46);
      sub_815C(&qword_595C0);
      sub_1F948();
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v89 = v67;
      *(&v89 + 1) = OpaqueTypeConformance2;
      v49 = swift_getOpaqueTypeConformance2();
      *&v89 = v68;
      *(&v89 + 1) = v49;
      v50 = swift_getOpaqueTypeConformance2();
      *&v89 = v69;
      *(&v89 + 1) = v50;
      swift_getOpaqueTypeConformance2();
      sub_37020();
      sub_20138(v81, v82, v66[0]);
      sub_20198(v45, *(&v45 + 1), v46);
      sub_1F574(v79, v39, v44);
    }

    else
    {
      v52 = v81;
      v51 = v82;
      v53 = v24;
      sub_16B18(v81, v82, v24, SBYTE4(v24));
      sub_37010();
      sub_370D0();
      if (v27 == 1)
      {
        sub_16B18(v52, v51, v53, 1);
      }

      v54 = v70;
      v55 = swift_getOpaqueTypeConformance2();
      v56 = v71;
      v57 = v67;
      v58 = v79;
      sub_37100();

      (*(v73 + 8))(v58, v57);
      *&v89 = v57;
      *(&v89 + 1) = v55;
      v59 = swift_getOpaqueTypeConformance2();
      v60 = v72;
      v61 = v68;
      sub_37120();
      (*(v74 + 8))(v56, v61);
      *&v89 = v61;
      *(&v89 + 1) = v59;
      v62 = swift_getOpaqueTypeConformance2();
      v63 = v76;
      v64 = v69;
      sub_37110();
      (*(v75 + 8))(v60, v64);
      v65 = v77;
      (*(v77 + 16))(v26, v63, v54);
      swift_storeEnumTagMultiPayload();
      sub_815C(&qword_595C0);
      sub_1F948();
      *&v89 = v64;
      *(&v89 + 1) = v62;
      swift_getOpaqueTypeConformance2();
      sub_37020();
      sub_20138(v52, v82, v66[0]);
      return (*(v65 + 8))(v63, v54);
    }
  }

  else
  {
    v84 = a6;
    v85 = a7;
    v86 = a8 & 1;
    v87 = a10;
    v88 = 0;
    sub_2014C(a6, a7, a8 & 1);

    sub_37020();
    v28 = v91;
    v29 = v90;
    *v26 = v89;
    *(v26 + 1) = v29;
    v26[32] = v28;
    swift_storeEnumTagMultiPayload();
    sub_815C(&qword_595C0);
    sub_1F948();
    v30 = swift_getOpaqueTypeConformance2();
    *&v89 = v14;
    *(&v89 + 1) = v30;
    v31 = swift_getOpaqueTypeConformance2();
    *&v89 = v16;
    *(&v89 + 1) = v31;
    v32 = swift_getOpaqueTypeConformance2();
    *&v89 = v18;
    *(&v89 + 1) = v32;
    swift_getOpaqueTypeConformance2();
    return sub_37020();
  }
}

uint64_t sub_1F084@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27[1] = a2;
  v5 = sub_815C(&qword_595F8);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = sub_815C(&qword_59690);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = sub_815C(&qword_59588);
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  sub_9B84(a1, v28);
  sub_815C(&qword_587A0);
  _s10descr51419V18TransitioningFontsCMa();
  if (swift_dynamicCast())
  {
    v14 = v27[2];
    sub_16B9C(v3, v13, &qword_59540);
    *&v13[*(sub_815C(&qword_595A8) + 36)] = v14;
    *&v13[*(sub_815C(&qword_59598) + 36)] = 257;
    KeyPath = swift_getKeyPath();
    v16 = &v13[*(v11 + 36)];
    *v16 = KeyPath;
    *(v16 + 1) = 0;
    v16[16] = 1;
    sub_16B9C(v13, v10, &qword_59588);
    swift_storeEnumTagMultiPayload();
    sub_1F610();
    sub_1F9C4();
    sub_37020();
    v17 = v13;
    v18 = &qword_59588;
  }

  else
  {
    v20 = a1[3];
    v19 = a1[4];
    sub_AD00(a1, v20);
    (*(v19 + 8))(v20, v19);
    v21 = sub_37090();
    v22 = swift_getKeyPath();
    sub_16B9C(v3, v7, &qword_59540);
    v23 = &v7[*(sub_815C(&qword_59618) + 36)];
    *v23 = v22;
    v23[1] = v21;
    *&v7[*(sub_815C(&qword_59608) + 36)] = 257;
    v24 = swift_getKeyPath();
    v25 = &v7[*(v5 + 36)];
    *v25 = v24;
    *(v25 + 1) = 0;
    v25[16] = 1;
    sub_16B9C(v7, v10, &qword_595F8);
    swift_storeEnumTagMultiPayload();
    sub_1F610();
    sub_1F9C4();
    sub_37020();
    v17 = v7;
    v18 = &qword_595F8;
  }

  return sub_16C04(v17, v18);
}

uint64_t sub_1F430(uint64_t a1)
{
  v2 = sub_36EB0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_36F30();
}

unint64_t sub_1F520()
{
  result = qword_59570;
  if (!qword_59570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59570);
  }

  return result;
}

uint64_t sub_1F574(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1F584()
{
  result = qword_59578;
  if (!qword_59578)
  {
    sub_D5DC(&qword_59548);
    sub_1F610();
    sub_1F9C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59578);
  }

  return result;
}

unint64_t sub_1F610()
{
  result = qword_59580;
  if (!qword_59580)
  {
    sub_D5DC(&qword_59588);
    sub_1F6C8();
    sub_12044(&qword_595E0, &qword_595E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59580);
  }

  return result;
}

unint64_t sub_1F6C8()
{
  result = qword_59590;
  if (!qword_59590)
  {
    sub_D5DC(&qword_59598);
    sub_1F754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59590);
  }

  return result;
}

unint64_t sub_1F754()
{
  result = qword_595A0;
  if (!qword_595A0)
  {
    sub_D5DC(&qword_595A8);
    sub_1F7E0();
    sub_11C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_595A0);
  }

  return result;
}

unint64_t sub_1F7E0()
{
  result = qword_595B0;
  if (!qword_595B0)
  {
    sub_D5DC(&qword_59540);
    sub_1F948();
    sub_D5DC(&qword_595C8);
    sub_D5DC(&qword_595D0);
    sub_D5DC(&qword_595D8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_595B0);
  }

  return result;
}

unint64_t sub_1F948()
{
  result = qword_595B8;
  if (!qword_595B8)
  {
    sub_D5DC(&qword_595C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_595B8);
  }

  return result;
}

unint64_t sub_1F9C4()
{
  result = qword_595F0;
  if (!qword_595F0)
  {
    sub_D5DC(&qword_595F8);
    sub_1FA7C();
    sub_12044(&qword_595E0, &qword_595E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_595F0);
  }

  return result;
}

unint64_t sub_1FA7C()
{
  result = qword_59600;
  if (!qword_59600)
  {
    sub_D5DC(&qword_59608);
    sub_1FB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59600);
  }

  return result;
}

unint64_t sub_1FB08()
{
  result = qword_59610;
  if (!qword_59610)
  {
    sub_D5DC(&qword_59618);
    sub_1F7E0();
    sub_12044(&qword_59018, &qword_59020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59610);
  }

  return result;
}

uint64_t sub_1FBC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_36F60();
  *a1 = result;
  return result;
}

uint64_t sub_1FC18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_36F40();
  *a1 = result;
  return result;
}

uint64_t sub_1FC94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_815C(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1FCFC()
{
  result = qword_59638;
  if (!qword_59638)
  {
    sub_D5DC(&qword_59630);
    sub_1FDB4();
    sub_12044(&qword_59678, &qword_59680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59638);
  }

  return result;
}

unint64_t sub_1FDB4()
{
  result = qword_59640;
  if (!qword_59640)
  {
    sub_D5DC(&qword_59568);
    sub_1FE6C();
    sub_12044(&qword_59670, &qword_59620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59640);
  }

  return result;
}

unint64_t sub_1FE6C()
{
  result = qword_59648;
  if (!qword_59648)
  {
    sub_D5DC(&qword_59560);
    sub_1FEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59648);
  }

  return result;
}

unint64_t sub_1FEF8()
{
  result = qword_59650;
  if (!qword_59650)
  {
    sub_D5DC(&qword_59558);
    sub_1FFB0();
    sub_12044(&qword_59660, &qword_59668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59650);
  }

  return result;
}

unint64_t sub_1FFB0()
{
  result = qword_59658;
  if (!qword_59658)
  {
    sub_D5DC(&qword_59550);
    sub_D5DC(&qword_59548);
    sub_1F584();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59658);
  }

  return result;
}

uint64_t sub_2007C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_36F60();
  *a1 = result;
  return result;
}

uint64_t sub_200D4@<X0>(uint64_t a1@<X8>)
{
  result = sub_36F80();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20138(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE4(a3) != 255)
  {
    return sub_16A8C(result, a2, a3, SBYTE4(a3));
  }

  return result;
}

uint64_t sub_2014C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2015C(uint64_t a1, uint64_t a2, char a3)
{
  sub_2014C(a1, a2, a3 & 1);
}

uint64_t sub_20198(uint64_t a1, uint64_t a2, char a3)
{
  sub_1F574(a1, a2, a3 & 1);
}

unint64_t sub_201D8()
{
  result = qword_596A8;
  if (!qword_596A8)
  {
    sub_D5DC(&qword_596B0);
    sub_1FCFC();
    sub_1FDB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_596A8);
  }

  return result;
}

id sub_20264()
{
  result = sub_20288();
  byte_596B8 = result & 1;
  return result;
}

id sub_20288()
{
  v0 = sub_36D80();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_36D70();
  if ((sub_37400() & 1) == 0)
  {
    v8 = sub_36D60();
    v9 = sub_377F0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Solarium disabled";
LABEL_9:
      _os_log_impl(&dword_0, v8, v9, v11, v10, 2u);
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v5 = result;
    v6 = [result isRunningNapiliGMOrLater];

    if (v6)
    {
      v7 = 1;
LABEL_11:
      (*(v1 + 8))(v3, v0);
      return v7;
    }

    v8 = sub_36D60();
    v9 = sub_377F0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Current device is not running required OS.";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_20524()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DigitalTimeViewFeatures();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s10descr51419V14TimeTransitionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s10descr51419V14TimeTransitionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_206E0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_206FC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_20724@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 48);
  result = *(v1 + 57);
  *(a1 + 41) = result;
  return result;
}

__n128 sub_207DC(uint64_t a1)
{
  v3 = v1[2];
  v7[0] = v1[1];
  v7[1] = v3;
  v8[0] = v1[3];
  *(v8 + 9) = *(v1 + 57);
  if (sub_2202C(v7, a1))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
    sub_36CC0();
  }

  else
  {
    v6 = *(a1 + 16);
    v1[1] = *a1;
    v1[2] = v6;
    v1[3] = *(a1 + 32);
    result = *(a1 + 41);
    *(v1 + 57) = result;
  }

  return result;
}

__n128 sub_20918(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v2;
  *(a1 + 48) = *(a2 + 32);
  result = *(a2 + 41);
  *(a1 + 57) = result;
  return result;
}

uint64_t sub_20934@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  swift_beginAccess();
  return sub_9B84(v1 + 80, a1);
}

uint64_t sub_209F4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1B638((a1 + 80), a2);
  return swift_endAccess();
}

uint64_t sub_20A58()
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  return *(v0 + 120);
}

uint64_t sub_20AFC(uint64_t result, char a2)
{
  if ((*(v2 + 128) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 120) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 120) = *&result;
    *(v2 + 128) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CC0();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_20C34()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v1 = *(v0 + 136);
  sub_16B18(v1, *(v3 + 144), *(v3 + 152), *(v3 + 156));
  return v1;
}

uint64_t sub_20CFC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = HIDWORD(a3);
  v9 = *(v3 + 136);
  v8 = *(v3 + 144);
  v10 = *(v3 + 152);
  if (!*(v3 + 156))
  {
    if (!BYTE4(a3))
    {

      v12 = sub_371D0();
      sub_16A8C(v9, v8, v10, 0);
      if (v12)
      {
        goto LABEL_17;
      }
    }

LABEL_20:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
    sub_36CC0();
    sub_16A8C(a1, a2, a3, v7);
  }

  if (*(v3 + 156) != 1)
  {
    if (BYTE4(a3) == 2 && !(a2 | a1) && !a3)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (BYTE4(a3) != 1)
  {
    goto LABEL_20;
  }

  v11 = v9 == a1 && v8 == a2;
  if (!v11 && (sub_37AD0() & 1) == 0 || *&v10 != *&a3)
  {
    goto LABEL_20;
  }

LABEL_17:
  v13 = *(v3 + 136);
  v14 = *(v3 + 144);
  v15 = *(v3 + 152);
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  v16 = *(v3 + 156);
  *(v3 + 156) = v7;

  return sub_16A8C(v13, v14, v15, v16);
}

uint64_t sub_20F34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = HIDWORD(a4);
  v6 = *(a1 + 136);
  v7 = *(a1 + 144);
  v8 = *(a1 + 152);
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
  *(a1 + 152) = a4;
  v9 = *(a1 + 156);
  *(a1 + 156) = v5;
  sub_16B18(a2, a3, a4, v5);
  return sub_16A8C(v6, v7, v8, v9);
}

uint64_t sub_20FAC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v3 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  return sub_16D40(v5 + v3, a1);
}

uint64_t sub_21074(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  sub_21E68(a2, a1 + v4);
  return swift_endAccess();
}

unint64_t sub_210E0()
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v1 = *(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle);
  sub_16B8C(v1);
  return v1;
}

unint64_t sub_21194(unint64_t a1)
{
  v3 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle;
  v4 = *(v1 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle);
  if (!v4)
  {
    if (!a1)
    {
      v5 = 0;
      goto LABEL_10;
    }

LABEL_13:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
    sub_36CC0();
    sub_16AAC(a1);
  }

  if (v4 != 1)
  {
    if (a1 >= 2)
    {

      v6 = sub_371D0();
      sub_16AAC(v4);
      if (v6)
      {
        v5 = *(v1 + v3);
        goto LABEL_10;
      }
    }

    goto LABEL_13;
  }

  if (a1 != 1)
  {
    goto LABEL_13;
  }

  v5 = 1;
LABEL_10:
  *(v1 + v3) = a1;

  return sub_16AAC(v5);
}

uint64_t sub_21320@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v3 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v4 = sub_36DC0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21418(uint64_t a1)
{
  v2 = v1;
  v4 = sub_36DC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_21F14(&qword_59A30, &type metadata accessor for ColorScheme);
  v14[0] = a1;
  LOBYTE(a1) = sub_374F0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
    sub_36CC0();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_216B8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v5 = sub_36DC0();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

double sub_21754()
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  return *(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity);
}

void sub_217FC(double a1)
{
  if (*(v1 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity) == a1)
  {
    *(v1 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
    sub_36CC0();
  }
}

uint64_t sub_2191C()
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  return *(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
}

double sub_219D4()
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  return *(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
}

void sub_21A80(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  if (*(v2 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize) == a1 && *(v2 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize + 8) == a2)
  {
    *v3 = a1;
    v3[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa);
    sub_36CC0();
  }
}

uint64_t sub_21BAC()
{
  sub_85EC(v0 + 80);
  sub_16A8C(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 156));
  sub_16ABC(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle);
  sub_16AAC(*(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle));
  v1 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  v2 = sub_36DC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model___observationRegistrar;
  v4 = sub_36CF0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t _s10descr51419V5ModelCMa()
{
  result = qword_59748;
  if (!qword_59748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D14()
{
  result = _s10descr51419V15BackgroundStyleOMa();
  if (v1 <= 0x3F)
  {
    result = sub_36DC0();
    if (v2 <= 0x3F)
    {
      result = sub_36CF0();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21E68(uint64_t a1, uint64_t a2)
{
  v4 = _s10descr51419V15BackgroundStyleOMa();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 sub_21ED4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize) = result;
  return result;
}

double sub_21EFC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity) = result;
  return result;
}

uint64_t sub_21F14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21F88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle);
  *(v2 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle) = v1;
  sub_16B8C(v1);
  return sub_16AAC(v3);
}

void sub_22010()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 120) = *(v0 + 24);
  *(v1 + 128) = v2;
}

BOOL sub_2202C(uint64_t a1, uint64_t a2)
{
  if (!CGRectEqualToRect(*a1, *a2))
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 3)
  {
    if (v5 == 3)
    {
      goto LABEL_25;
    }

    return 1;
  }

  if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if ((v5 & 0xFE) == 2)
  {
    return 1;
  }

  if (v4)
  {
    v6 = 0x6574756E696DLL;
  }

  else
  {
    v6 = 1920298856;
  }

  if (v4)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v5)
  {
    v8 = 0x6574756E696DLL;
  }

  else
  {
    v8 = 1920298856;
  }

  if (v5)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {

    goto LABEL_25;
  }

  v10 = sub_37AD0();

  if ((v10 & 1) == 0)
  {
    return 1;
  }

LABEL_25:
  if (*(a1 + 33) != *(a2 + 33))
  {
    return 1;
  }

  return !sub_1D100(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a2 + 40), *(a2 + 48), *(a2 + 56));
}

__n128 sub_22170()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v1 + 57) = *(v2 + 41);
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_22190()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22210(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_23138();
    sub_36CC0();
  }
}

uint64_t sub_22340()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_223C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_23138();
    sub_36CC0();
  }
}

uint64_t sub_224F0()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_22570@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_225EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_23138();
    sub_36CC0();
  }
}

uint64_t sub_2271C()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_2279C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_23138();
    sub_36CC0();
  }
}

uint64_t sub_228CC()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_2294C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80) == a1 && *(v2 + 88) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_23138();
    sub_36CC0();
  }
}

uint64_t sub_22A7C()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_22AFC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96) == a1 && *(v2 + 104) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_23138();
    sub_36CC0();
  }
}

id sub_22C2C(void *a1)
{
  v2 = v1;
  result = [a1 timeText];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  v6 = sub_37530();
  v8 = v7;

  sub_22210(v6, v8);
  result = [a1 timeSubstringToSeparatorText];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = result;
  v10 = sub_37530();
  v12 = v11;

  sub_223C0(v10, v12);
  result = [a1 timeSubstringToSeparatorTextWithZeroPadding:1];
  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = result;
  v14 = sub_37530();
  v16 = v15;

  sub_225EC(v14, v16);
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v17 = *(v2 + 32);
  v18 = *(v2 + 40);
  v32 = v17;
  v33 = v18;

  if (sub_375B0() >= 2)
  {
    do
    {
      if (!((v18 & 0x2000000000000000) != 0 ? HIBYTE(v18) & 0xF : v17 & 0xFFFFFFFFFFFFLL))
      {
        break;
      }

      if (sub_37640() == 48 && v20 == 0xE100000000000000)
      {
      }

      else
      {
        v21 = sub_37AD0();

        if ((v21 & 1) == 0)
        {
          break;
        }
      }

      if ((v18 & 0x2000000000000000) != 0)
      {
        if ((v18 & 0xF00000000000000) == 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      else if ((v17 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_23;
      }

      sub_37640();

      result = sub_375C0();
      if (v22)
      {
        goto LABEL_24;
      }

      sub_37580();
      v17 = v32;
      v18 = v33;
    }

    while (sub_375B0() > 1);
  }

  sub_2279C(v17, v18);
  result = [a1 timeSubstringFromSeparatorText];
  if (!result)
  {
    goto LABEL_28;
  }

  v23 = result;
  v24 = sub_37530();
  v26 = v25;

  sub_2294C(v24, v26);
  result = AXClockTimeVoiceOverSpokenStringForWatchFaces();
  if (result)
  {
    v27 = result;
    v28 = [result string];

    v29 = sub_37530();
    v31 = v30;

    sub_22AFC(v29, v31);
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22F6C()
{

  v1 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel12TimeProvider___observationRegistrar;
  v2 = sub_36CF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t _s10descr51419V12TimeProviderCMa()
{
  result = qword_59A68;
  if (!qword_59A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2308C()
{
  result = sub_36CF0();
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

unint64_t sub_23138()
{
  result = qword_59C78;
  if (!qword_59C78)
  {
    _s10descr51419V12TimeProviderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59C78);
  }

  return result;
}

uint64_t sub_23198()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

uint64_t sub_231E0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;
}

uint64_t sub_23228()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t sub_2326C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_225EC(v1, v2);
}

uint64_t sub_232AC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_232EC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_23334()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_23374(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_233BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2340C()
{
  if (qword_58580 != -1)
  {
    swift_once();
  }

  v0 = qword_5CDE0;
  swift_bridgeObjectRetain_n();
  result = sub_34794(v0);
  qword_5CD40 = v0;
  *algn_5CD48 = v0;
  qword_5CD50 = v0;
  unk_5CD58 = result;
  return result;
}

uint64_t sub_23484()
{
  if (qword_58588 != -1)
  {
    swift_once();
  }

  v0 = qword_5CDE8;
  if (*(qword_5CDE8 + 16))
  {

    v1 = sub_3392C(4u);
    if (v2)
    {
      v3 = (*(v0 + 56) + 32 * v1);
      v5 = *v3;
      v6 = v3[1];

      xmmword_5CD60 = v5;
      *&qword_5CD70 = v6;
      return result;
    }
  }

  if (qword_58568 != -1)
  {
    swift_once();
  }

  xmmword_5CD60 = xmmword_5CD40;
  qword_5CD70 = qword_5CD50;
  unk_5CD78 = unk_5CD58;
}

__n128 sub_235EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_23608(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23650(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_236C8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v3 + 48);
  result = *(v3 + 57);
  *(a2 + 41) = result;
  return result;
}

double sub_23780(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  *&result = sub_207DC(v3).n128_u64[0];
  return result;
}

uint64_t sub_237C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  swift_beginAccess();
  return sub_9B84(v3 + 80, a2);
}

uint64_t sub_23888(uint64_t a1)
{
  sub_9B84(a1, v2);
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CC0();

  return sub_85EC(v2);
}

uint64_t sub_23968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v5 = *(v3 + 128);
  *a2 = *(v3 + 120);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_23A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v4 = *(v3 + 136);
  v5 = *(v3 + 144);
  v6 = *(v3 + 152);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 156);
  *(a2 + 20) = v7;
  return sub_16B18(v4, v5, v6, v7);
}

uint64_t sub_23B08(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  sub_16B18(*a1, v2, v3, v4);
  return sub_20CFC(v1, v2, v3 | (v4 << 32));
}

uint64_t sub_23B68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v4 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  return sub_16D40(v3 + v4, a2);
}

uint64_t sub_23C30(uint64_t a1, uint64_t *a2)
{
  v4 = _s10descr51419V15BackgroundStyleOMa();
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_16D40(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CC0();

  return sub_16ABC(v6);
}

unint64_t sub_23D58@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v4 = *(v3 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle);
  *a2 = v4;
  return sub_16B8C(v4);
}

unint64_t sub_23E0C(unint64_t *a1)
{
  v1 = *a1;
  sub_16B8C(*a1);
  return sub_21194(v1);
}

uint64_t sub_23E40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v4 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v5 = sub_36DC0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_23F38(uint64_t a1)
{
  v2 = sub_36DC0();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_21418(v4);
}

double sub_24004@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  result = *(v3 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity);
  *a2 = result;
  return result;
}

uint64_t sub_240DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  *a2 = *(v3 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
  return result;
}

uint64_t sub_2418C()
{
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CC0();
}

__n128 sub_2425C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  result = *(v3 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  *a2 = result;
  return result;
}

uint64_t sub_24334@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa);
  sub_36CD0();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_243F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa);
  sub_36CD0();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_244BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa);
  sub_36CD0();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_24580@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa);
  sub_36CD0();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_24644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa);
  sub_36CD0();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_24708(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24750@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v37 = sub_37000();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_37060();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_815C(&qword_59C80);
  __chkstk_darwin(v7);
  v9 = (&v30 - v8);
  v10 = sub_815C(&qword_59C88);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v33 = sub_815C(&qword_59C90);
  v13 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = &v30 - v14;
  v32 = sub_815C(&qword_59C98);
  __chkstk_darwin(v32);
  v17 = &v30 - v16;
  *v9 = sub_37420();
  v9[1] = v18;
  v19 = sub_815C(&qword_59CA0);
  sub_24C78(v9 + *(v19 + 44));
  sub_27BF8();
  sub_37150();
  sub_16C04(v9, &qword_59C80);
  v20 = sub_36ED0();
  v21 = sub_37080();
  v22 = &v12[*(sub_815C(&qword_59CC0) + 36)];
  *v22 = v20;
  v22[8] = v21;
  v12[*(v10 + 36)] = sub_37080();
  sub_37050();
  v23 = sub_27CB0();
  sub_37190();
  (*(v4 + 8))(v6, v31);
  sub_16C04(v12, &qword_59C88);
  v40 = *(v2 + 24);
  sub_815C(&qword_59CD8);
  sub_37280();
  v24 = v38;
  swift_getKeyPath();
  *&v40 = v24;
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa);
  sub_36CD0();

  v25 = *(v24 + 96);
  v26 = *(v24 + 104);

  *&v40 = v25;
  *(&v40 + 1) = v26;
  v38 = v10;
  v39 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1F520();
  v27 = v33;
  sub_37180();

  (*(v13 + 8))(v15, v27);
  v28 = v34;
  sub_36FF0();
  sub_36EC0();
  (*(v35 + 8))(v28, v37);
  return sub_16C04(v17, &qword_59C98);
}

uint64_t sub_24C78@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_815C(&qword_59CE0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = sub_815C(&qword_59CE8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = sub_815C(&qword_59CF0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  sub_24F7C(&v23 - v17);
  sub_254A8(v12);
  sub_259DC(v6);
  sub_16B9C(v18, v16, &qword_59CF0);
  sub_16B9C(v12, v10, &qword_59CE8);
  v19 = v4;
  sub_16B9C(v6, v4, &qword_59CE0);
  v20 = v24;
  sub_16B9C(v16, v24, &qword_59CF0);
  v21 = sub_815C(&qword_59CF8);
  sub_16B9C(v10, v20 + *(v21 + 48), &qword_59CE8);
  sub_16B9C(v19, v20 + *(v21 + 64), &qword_59CE0);
  sub_16C04(v6, &qword_59CE0);
  sub_16C04(v12, &qword_59CE8);
  sub_16C04(v18, &qword_59CF0);
  sub_16C04(v19, &qword_59CE0);
  sub_16C04(v10, &qword_59CE8);
  return sub_16C04(v16, &qword_59CF0);
}

uint64_t sub_24F7C@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v21 = sub_815C(&qword_59E88);
  __chkstk_darwin(v21);
  v3 = v20 - v2;
  v4 = sub_37330();
  v20[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_815C(&qword_59E90);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  v10 = _s10descr51419V15BackgroundStyleOMa();
  __chkstk_darwin(v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v1;
  swift_getKeyPath();
  v26 = v13;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v14 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  sub_16D40(v13 + v14, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = v20[0];
      (*(v20[0] + 32))(v6, v12, v4);
      (*(v16 + 16))(v3, v6, v4);
      sub_16B9C(v3, v9, &qword_59E88);
      swift_storeEnumTagMultiPayload();
      sub_815C(&qword_59E98);
      sub_291E4(&qword_59EA0, &qword_59E98, &unk_43490, sub_29268);
      sub_29374();
      sub_37020();
      sub_16C04(v3, &qword_59E88);
      return (*(v16 + 8))(v6, v4);
    }

    else
    {
      v22 = 0;
      v23 = 0;
      sub_815C(&qword_59EB0);
      sub_29268();
      sub_37020();
      v19 = v25;
      *v9 = v24;
      v9[8] = v19;
      swift_storeEnumTagMultiPayload();
      sub_815C(&qword_59E98);
      sub_291E4(&qword_59EA0, &qword_59E98, &unk_43490, sub_29268);
      sub_29374();
      return sub_37020();
    }
  }

  else
  {
    v22 = *v12;
    v23 = 1;

    sub_815C(&qword_59EB0);
    sub_29268();
    sub_37020();
    v18 = v25;
    *v9 = v24;
    v9[8] = v18;
    swift_storeEnumTagMultiPayload();
    sub_815C(&qword_59E98);
    sub_291E4(&qword_59EA0, &qword_59E98, &unk_43490, sub_29268);
    sub_29374();
    sub_37020();
  }
}

uint64_t sub_254A8@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_815C(&qword_59D90);
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = v32 - v3;
  v40 = sub_815C(&qword_59E68) - 8;
  __chkstk_darwin(v40);
  v36 = v32 - v4;
  v5 = *v1;
  swift_getKeyPath();
  v35 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model___observationRegistrar;
  v43 = v5;
  v34 = sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v6 = *(v5 + 136);
  v7 = *(v5 + 144);
  v8 = *(v5 + 152);
  v9 = *(v5 + 156);
  v43 = v5;

  sub_16B18(v6, v7, v8, v9);
  v33 = v1;
  sub_26758(v1, v6, v7, v8 | (v9 << 32), &v44);
  v32[1] = v1[1];
  v32[0] = sub_815C(&qword_59DA0);
  sub_36D40();
  sub_280E0();
  sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy);
  v10 = v37;
  sub_37160();
  sub_16C04(&v43, &qword_59DA0);
  v11 = v33;
  v12 = v36;
  sub_2788C(*(v33 + 16));
  sub_16A8C(v6, v7, v8, v9);
  (*(v38 + 8))(v10, v39);
  swift_getKeyPath();
  v43 = v5;
  sub_36CD0();

  v13 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v14 = (v12 + *(sub_815C(&qword_59E70) + 36));
  v15 = *(sub_815C(&qword_59E78) + 28);
  v16 = sub_36DC0();
  (*(*(v16 - 8) + 16))(v14 + v15, v5 + v13, v16);
  *v14 = swift_getKeyPath();
  swift_getKeyPath();
  v42[0] = v5;
  sub_36CD0();

  v17 = *(v5 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity);
  *(v12 + *(sub_815C(&qword_59E80) + 36)) = v17;
  swift_getKeyPath();
  v42[0] = v5;
  sub_36CD0();

  v18 = v5 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize;
  v19 = *(v5 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  swift_getKeyPath();
  v42[0] = v5;
  sub_36CD0();

  v20 = *(v18 + 8);
  sub_37460();
  v21 = (v12 + *(v40 + 44));
  *v21 = v19;
  v21[1] = v20;
  v21[2] = v22;
  v21[3] = v23;
  v24 = 0xE000000000000000;
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  sub_37940(16);

  strcpy(v42, "ntk-timelabel-");
  HIBYTE(v42[1]) = -18;
  v25 = v11[6];
  if (v25)
  {
    v26 = v11[5];
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v24 = v11[6];
  }

  v45._countAndFlagsBits = v26;
  v45._object = v24;
  sub_375D0(v45);

  v27 = v42[0];
  v28 = v42[1];
  v29 = v41;
  sub_2916C(v12, v41);
  result = sub_815C(&qword_59CE8);
  v31 = v29 + *(result + 36);
  *v31 = 1;
  *(v31 + 8) = v27;
  *(v31 + 16) = v28;
  return result;
}

uint64_t sub_259DC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = sub_815C(&qword_59D00);
  __chkstk_darwin(v30);
  v3 = (&v26 - v2);
  v26 = sub_815C(&qword_59D08);
  __chkstk_darwin(v26);
  v5 = (&v26 - v4);
  v27 = sub_815C(&qword_59D10);
  __chkstk_darwin(v27);
  v7 = &v26 - v6;
  v8 = sub_815C(&qword_59D18);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v28 = sub_815C(&qword_59D20);
  __chkstk_darwin(v28);
  v12 = &v26 - v11;
  v13 = v1;
  v14 = *v1;
  swift_getKeyPath();
  v31 = v14;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v15 = *(v14 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle);
  if (v15)
  {
    if (v15 == 1)
    {
      *v5 = sub_37420();
      v5[1] = v16;
      v17 = sub_815C(&qword_59D88);
      sub_25F5C(v13, (v5 + *(v17 + 44)));
      v18 = *(v26 + 36);
      v19 = enum case for BlendMode.destinationOut(_:);
      v20 = sub_37450();
      (*(*(v20 - 8) + 104))(v5 + v18, v19, v20);
      sub_16B9C(v5, v10, &qword_59D08);
      swift_storeEnumTagMultiPayload();
      sub_27E58();
      sub_37020();
      sub_16B9C(v12, v7, &qword_59D20);
      swift_storeEnumTagMultiPayload();
      sub_291E4(&qword_59D30, &qword_59D20, &unk_43148, sub_27E58);
      sub_28028();
      sub_37020();
      sub_16C04(v12, &qword_59D20);
      v21 = v5;
      v22 = &qword_59D08;
    }

    else
    {

      *v3 = sub_37420();
      v3[1] = v23;
      v24 = sub_815C(&qword_59D28);
      sub_2631C(v15, v13, (v3 + *(v24 + 44)));
      sub_16B9C(v3, v7, &qword_59D00);
      swift_storeEnumTagMultiPayload();
      sub_291E4(&qword_59D30, &qword_59D20, &unk_43148, sub_27E58);
      sub_28028();
      sub_37020();
      sub_16AAC(v15);
      v21 = v3;
      v22 = &qword_59D00;
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_27E58();
    sub_37020();
    sub_16B9C(v12, v7, &qword_59D20);
    swift_storeEnumTagMultiPayload();
    sub_291E4(&qword_59D30, &qword_59D20, &unk_43148, sub_27E58);
    sub_28028();
    sub_37020();
    v21 = v12;
    v22 = &qword_59D20;
  }

  return sub_16C04(v21, v22);
}

uint64_t sub_25F5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = sub_815C(&qword_59D90);
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - v4;
  v28 = sub_815C(&qword_59D98) - 8;
  v6 = __chkstk_darwin(v28);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v23 = &v23 - v8;
  v26 = sub_37240();
  v9 = sub_37220();
  v30 = *a1;
  v10 = v30;

  sub_26758(a1, v9, 0, 0, &v31);
  sub_815C(&qword_59DA0);
  sub_36D40();
  sub_280E0();
  sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy);
  sub_37160();
  sub_16C04(&v30, &qword_59DA0);
  v11 = v23;
  sub_2788C(*(a1 + 16));

  (*(v24 + 8))(v5, v25);
  swift_getKeyPath();
  v30 = v10;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v12 = v10 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize;
  v13 = *(v10 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  swift_getKeyPath();
  v30 = v10;
  sub_36CD0();

  v14 = *(v12 + 8);
  sub_37460();
  v15 = v27;
  v16 = (v11 + *(v28 + 44));
  *v16 = v13;
  v16[1] = v14;
  v16[2] = v17;
  v16[3] = v18;
  sub_16B9C(v11, v15, &qword_59D98);
  v19 = v29;
  *v29 = v26;
  *(v19 + 4) = 256;
  v20 = v19;
  v21 = sub_815C(&qword_59E20);
  sub_16B9C(v15, v20 + *(v21 + 48), &qword_59D98);

  sub_16C04(v11, &qword_59D98);
  sub_16C04(v15, &qword_59D98);
}

uint64_t sub_2631C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v4 = sub_815C(&qword_59D90);
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v32 = sub_815C(&qword_59E58) - 8;
  v7 = __chkstk_darwin(v32);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v29 = &v29 - v9;

  v10 = sub_37240();
  v36 = *a2;
  v11 = v36;

  sub_26758(a2, v10, 0, 0, &v37);
  sub_815C(&qword_59DA0);
  sub_36D40();
  sub_280E0();
  sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy);
  sub_37160();
  sub_16C04(&v36, &qword_59DA0);
  v12 = v29;
  sub_2788C(*(a2 + 16));

  (*(v30 + 8))(v6, v31);
  swift_getKeyPath();
  v36 = v11;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v13 = v11 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize;
  v14 = *(v11 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  swift_getKeyPath();
  v36 = v11;
  sub_36CD0();

  v15 = *(v13 + 8);
  sub_37460();
  v17 = v16;
  v19 = v18;
  v20 = (v12 + *(sub_815C(&qword_59D98) + 36));
  *v20 = v14;
  v20[1] = v15;
  v20[2] = v17;
  v20[3] = v19;
  v21 = *(v32 + 44);
  v22 = enum case for BlendMode.destinationOut(_:);
  v23 = sub_37450();
  (*(*(v23 - 8) + 104))(v12 + v21, v22, v23);
  v24 = v34;
  sub_16B9C(v12, v34, &qword_59E58);
  v25 = v35;
  *v35 = v33;
  *(v25 + 4) = 256;
  v26 = v25;
  v27 = sub_815C(&qword_59E60);
  sub_16B9C(v24, v26 + *(v27 + 48), &qword_59E58);

  sub_16C04(v12, &qword_59E58);
  sub_16C04(v24, &qword_59E58);
}

uint64_t sub_26758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v55 = a4;
  if (*(v9 + 48) != 3)
  {
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_36CD0();

    if (*(v9 + 48) == 2)
    {
      v107[0] = *(a1 + 3);
      sub_815C(&qword_59CD8);
      sub_37280();
      swift_getKeyPath();
      *&v107[0] = v106[0];
      sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa);
      sub_36CD0();

      v26 = *(v106[0] + 24);
      v50 = *(v106[0] + 16);

      swift_getKeyPath();
      *&v107[0] = v9;
      sub_36CD0();

      swift_beginAccess();
      sub_9B84(v9 + 80, v65);
      swift_getKeyPath();
      *&v107[0] = v9;
      sub_36CD0();

      v27 = *(v9 + 120);
      v28 = *(v9 + 128);
      swift_getKeyPath();
      *&v107[0] = v9;
      sub_36CD0();

      v29 = *(v9 + 49);
      v61 = 0x656E696C6E69;
      v62 = 0xE600000000000000;
      v63 = v50;
      v64 = v26;
      v66 = v27;
      v67 = v28;
      v68 = v29;
      v69 = a2;
      v70 = a3;
      v72 = BYTE4(a4);
      v71 = a4;
      swift_getKeyPath();
      *&v107[0] = v9;
      sub_28864(a2, a3, a4);
      sub_36CD0();

      v30 = *(v9 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
      sub_36D40();
      sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy);
      v59 = sub_36DD0();
      v60 = v31 & 1;
      v73 = v30;
      v74 = 0;
      sub_28878(&v59, v107);
      v109 = 1;
      sub_815C(&qword_59DF8);
      sub_12044(&qword_59DF0, &qword_59DF8);
      sub_28360();
      sub_37020();
      v32 = &qword_59DE8;
      sub_16B9C(v106, v107, &qword_59DE8);
      v110 = 0;
      sub_815C(&qword_59DE8);
LABEL_18:
      sub_815C(&qword_59E10);
      sub_282A8();
      sub_283B4();
      sub_37020();
      sub_16C04(v106, v32);
      v25 = &v59;
      return sub_288D4(v25);
    }

    swift_getKeyPath();
    *&v107[0] = v9;
    sub_36CD0();

    if ((*(v9 + 48) & 0xFE) == 2)
    {
      goto LABEL_6;
    }

    if (*(v9 + 48))
    {
      v34 = sub_37AD0();

      if ((v34 & 1) == 0)
      {
LABEL_6:
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_36CD0();

        if ((*(v9 + 48) & 0xFE) == 2)
        {
LABEL_7:
          *(a5 + 224) = 0u;
          *(a5 + 240) = 0u;
          *(a5 + 192) = 0u;
          *(a5 + 208) = 0u;
          *(a5 + 160) = 0u;
          *(a5 + 176) = 0u;
          *(a5 + 128) = 0u;
          *(a5 + 144) = 0u;
          *(a5 + 96) = 0u;
          *(a5 + 112) = 0u;
          *(a5 + 64) = 0u;
          *(a5 + 80) = 0u;
          *(a5 + 32) = 0u;
          *(a5 + 48) = 0u;
          *a5 = 0u;
          *(a5 + 16) = 0u;
          *(a5 + 256) = -1;
          return result;
        }

        if (*(v9 + 48))
        {
        }

        else
        {
          v41 = sub_37AD0();

          if ((v41 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        v107[0] = *(a1 + 3);
        sub_815C(&qword_59CD8);
        sub_37280();
        swift_getKeyPath();
        *&v107[0] = v106[0];
        sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa);
        sub_36CD0();

        v42 = *(v106[0] + 88);
        v52 = *(v106[0] + 80);

        swift_getKeyPath();
        *&v107[0] = v9;
        sub_36CD0();

        swift_beginAccess();
        sub_9B84(v9 + 80, v65);
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_36CD0();

        v43 = *(v9 + 120);
        v44 = *(v9 + 128);
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_36CD0();

        v45 = *(v9 + 49);
        v61 = 0x6574756E696DLL;
        v62 = 0xE600000000000000;
        v63 = v52;
        v64 = v42;
        v66 = v43;
        v67 = v44;
        v68 = v45;
        v69 = a2;
        v70 = a3;
        v72 = BYTE4(a4);
        v71 = a4;
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_28864(a2, a3, a4);
        sub_36CD0();

        v46 = *(v9 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
        sub_36D40();
        sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy);
        v59 = sub_36DD0();
        v60 = v47 & 1;
        v73 = v46;
        v74 = 0;
        sub_28878(&v59, v107);
        v108 = 1;
        sub_28360();
        sub_37020();
        v32 = &qword_59E10;
        sub_16B9C(v106, v107, &qword_59E10);
        v110 = 1;
LABEL_17:
        sub_815C(&qword_59DE8);
        goto LABEL_18;
      }
    }

    else
    {
    }

    v107[0] = *(a1 + 3);
    sub_815C(&qword_59CD8);
    sub_37280();
    swift_getKeyPath();
    *&v107[0] = v106[0];
    sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa);
    sub_36CD0();

    v35 = *(v106[0] + 72);
    v51 = *(v106[0] + 64);

    swift_getKeyPath();
    *&v107[0] = v9;
    sub_36CD0();

    swift_beginAccess();
    sub_9B84(v9 + 80, v65);
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_36CD0();

    v36 = *(v9 + 120);
    v37 = *(v9 + 128);
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_36CD0();

    v38 = *(v9 + 49);
    v61 = 1920298856;
    v62 = 0xE400000000000000;
    v63 = v51;
    v64 = v35;
    v66 = v36;
    v67 = v37;
    v68 = v38;
    v69 = a2;
    v70 = a3;
    v72 = BYTE4(a4);
    v71 = a4;
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_28864(a2, a3, a4);
    sub_36CD0();

    v39 = *(v9 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
    sub_36D40();
    sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy);
    v59 = sub_36DD0();
    v60 = v40 & 1;
    v73 = v39;
    v74 = 0;
    sub_28878(&v59, v107);
    v108 = 0;
    sub_28360();
    sub_37020();
    v32 = &qword_59E10;
    sub_16B9C(v106, v107, &qword_59E10);
    v110 = 1;
    goto LABEL_17;
  }

  v111 = *(a1 + 3);
  v107[0] = *(a1 + 3);
  sub_815C(&qword_59CD8);
  sub_37280();
  v54 = a2;
  swift_getKeyPath();
  *&v107[0] = v106[0];
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa);
  sub_36CD0();

  v53 = a3;
  v11 = *(v106[0] + 32);
  v10 = *(v106[0] + 40);

  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  swift_beginAccess();
  sub_9B84(v9 + 80, v97);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  v12 = *(v9 + 120);
  v13 = a4;
  v14 = *(v9 + 128);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  v15 = *(v9 + 49);
  v93 = 1920298856;
  v94 = 0xE400000000000000;
  v95 = v11;
  v96 = v10;
  v97[5] = v12;
  v98 = v14;
  v99 = v15;
  v100 = a2;
  v101 = v53;
  v49 = HIDWORD(v13);
  v103 = BYTE4(v13);
  v102 = v13;
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_28864(a2, v53, v13);
  sub_36CD0();

  v48 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition;
  v16 = *(v9 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
  sub_36D40();
  sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy);
  v91 = sub_36DD0();
  v92 = v17 & 1;
  v104 = v16;
  v105 = 0;
  v107[0] = v111;
  sub_37280();
  v18 = v106[0];
  swift_getKeyPath();
  *&v107[0] = v18;
  sub_36CD0();

  v20 = *(v18 + 80);
  v19 = *(v18 + 88);

  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  sub_9B84(v9 + 80, v82);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  v21 = *(v9 + 120);
  LOBYTE(v10) = *(v9 + 128);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  v22 = *(v9 + 49);
  v78 = 0x6574756E696DLL;
  v79 = 0xE600000000000000;
  v80 = v20;
  v81 = v19;
  v82[5] = v21;
  v83 = v10;
  v84 = v22;
  v85 = v54;
  v86 = v53;
  v88 = v49;
  v87 = v55;
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_28864(v54, v53, v55);
  sub_36CD0();

  v23 = *(v9 + v48);
  v76 = sub_36DD0();
  v77 = v24 & 1;
  v89 = v23;
  v90 = 0;
  sub_28878(&v91, v58);
  sub_28878(&v76, v57);
  sub_28878(v58, &v59);
  sub_28878(v57, &v75);
  sub_288D4(v57);
  sub_288D4(v58);
  sub_16B9C(&v59, v107, &qword_59DF8);
  v109 = 0;
  sub_815C(&qword_59DF8);
  sub_12044(&qword_59DF0, &qword_59DF8);
  sub_28360();
  sub_37020();
  sub_16B9C(v106, v107, &qword_59DE8);
  v110 = 0;
  sub_815C(&qword_59DE8);
  sub_815C(&qword_59E10);
  sub_282A8();
  sub_283B4();
  sub_37020();
  sub_16C04(v106, &qword_59DE8);
  sub_16C04(&v59, &qword_59DF8);
  sub_288D4(&v76);
  v25 = &v91;
  return sub_288D4(v25);
}

uint64_t sub_2788C(char a1)
{
  v3 = sub_815C(&qword_59E28);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = sub_815C(&qword_59E30);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  if (a1)
  {
    v9 = sub_37230();
    sub_285A8(v9, v8);

    sub_16B9C(v8, v5, &qword_59E30);
    swift_storeEnumTagMultiPayload();
    sub_815C(&qword_59D90);
    sub_28464();
    v10 = sub_D5DC(&qword_59DA0);
    v11 = sub_36D40();
    v12 = sub_280E0();
    v13 = sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy);
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    swift_getOpaqueTypeConformance2();
    sub_37020();
    return sub_16C04(v8, &qword_59E30);
  }

  else
  {
    v15 = sub_815C(&qword_59D90);
    (*(*(v15 - 8) + 16))(v5, v1, v15);
    swift_storeEnumTagMultiPayload();
    sub_28464();
    v16 = sub_D5DC(&qword_59DA0);
    v17 = sub_36D40();
    v18 = sub_280E0();
    v19 = sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy);
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_37020();
  }
}

unint64_t sub_27BF8()
{
  result = qword_59CA8;
  if (!qword_59CA8)
  {
    sub_D5DC(&qword_59C80);
    sub_12044(&qword_59CB0, &qword_59CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59CA8);
  }

  return result;
}

unint64_t sub_27CB0()
{
  result = qword_59CC8;
  if (!qword_59CC8)
  {
    sub_D5DC(&qword_59C88);
    sub_27D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59CC8);
  }

  return result;
}

unint64_t sub_27D3C()
{
  result = qword_59CD0;
  if (!qword_59CD0)
  {
    sub_D5DC(&qword_59CC0);
    sub_D5DC(&qword_59C80);
    sub_27BF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59CD0);
  }

  return result;
}

unint64_t sub_27E24(unint64_t *a1)
{
  v1 = *a1;
  sub_16B8C(*a1);
  return sub_21194(v1);
}

unint64_t sub_27E58()
{
  result = qword_59D38;
  if (!qword_59D38)
  {
    sub_D5DC(&qword_59D08);
    sub_27EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59D38);
  }

  return result;
}

unint64_t sub_27EE4()
{
  result = qword_59D40;
  if (!qword_59D40)
  {
    sub_D5DC(&qword_59D48);
    sub_27F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59D40);
  }

  return result;
}

unint64_t sub_27F70()
{
  result = qword_59D50;
  if (!qword_59D50)
  {
    sub_D5DC(&qword_59D58);
    sub_12044(&qword_59D60, &qword_59D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59D50);
  }

  return result;
}

unint64_t sub_28028()
{
  result = qword_59D70;
  if (!qword_59D70)
  {
    sub_D5DC(&qword_59D00);
    sub_12044(&qword_59D78, &qword_59D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59D70);
  }

  return result;
}

unint64_t sub_280E0()
{
  result = qword_59DA8;
  if (!qword_59DA8)
  {
    sub_D5DC(&qword_59DA0);
    sub_12044(&qword_59DB0, &qword_59DB8);
    sub_28198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59DA8);
  }

  return result;
}

unint64_t sub_28198()
{
  result = qword_59DC0;
  if (!qword_59DC0)
  {
    sub_D5DC(&qword_59DC8);
    sub_2821C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59DC0);
  }

  return result;
}

unint64_t sub_2821C()
{
  result = qword_59DD0;
  if (!qword_59DD0)
  {
    sub_D5DC(&qword_59DD8);
    sub_282A8();
    sub_283B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59DD0);
  }

  return result;
}

unint64_t sub_282A8()
{
  result = qword_59DE0;
  if (!qword_59DE0)
  {
    sub_D5DC(&qword_59DE8);
    sub_12044(&qword_59DF0, &qword_59DF8);
    sub_28360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59DE0);
  }

  return result;
}

unint64_t sub_28360()
{
  result = qword_59E00;
  if (!qword_59E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59E00);
  }

  return result;
}

unint64_t sub_283B4()
{
  result = qword_59E08;
  if (!qword_59E08)
  {
    sub_D5DC(&qword_59E10);
    sub_28360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59E08);
  }

  return result;
}

unint64_t sub_28464()
{
  result = qword_59E38;
  if (!qword_59E38)
  {
    sub_D5DC(&qword_59E30);
    sub_D5DC(&qword_59DA0);
    sub_36D40();
    sub_280E0();
    sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy);
    swift_getOpaqueTypeConformance2();
    sub_12044(&qword_59E40, &qword_59E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59E38);
  }

  return result;
}

uint64_t sub_285A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_36DE0();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;

  v12 = sub_37420();
  v14 = v13;
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v37 = *v29;
  v38 = *&v29[16];
  v35 = v33[0];
  v36 = v31;
  *&v39 = v12;
  *(&v39 + 1) = v13;
  v15 = sub_815C(&qword_59D90);
  (*(*(v15 - 8) + 16))(a2, v3, v15);
  v16 = (a2 + *(sub_815C(&qword_59E30) + 36));
  v17 = *&v29[16];
  v16[2] = *v29;
  v16[3] = v17;
  v16[4] = v39;
  v18 = v36;
  *v16 = v35;
  v16[1] = v18;
  v40[2] = *v29;
  v40[3] = *&v29[16];
  v40[0] = v27;
  v40[1] = v28;
  v41 = v12;
  v42 = v14;
  sub_16B9C(v33, v20, &qword_59E50);
  sub_16B9C(&v35, v20, &qword_59E48);
  sub_16C04(v40, &qword_59E48);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_16C04(v20, &qword_59E50);
}

double sub_287B8(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  *&result = sub_207DC(v3).n128_u64[0];
  return result;
}

uint64_t sub_28864(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE4(a3) != 255)
  {
    return sub_16B18(result, a2, a3, SBYTE4(a3));
  }

  return result;
}

uint64_t sub_2897C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_289F4(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  slice.origin.x = v4;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
  sub_36CD0();

  v9 = *(*&v4 + 16) * a3 + a1;
  v10 = *(*&v4 + 24) * a4 + a2;
  v11 = *(*&v4 + 32) * a3;
  v12 = *(*&v4 + 40) * a4;
  swift_getKeyPath();
  sub_36CD0();

  if (*(*&v4 + 48) == 3)
  {
    v37.origin.x = v9;
    v37.origin.y = v10;
    v37.size.width = v11;
    v37.size.height = v12;
    memset(&slice, 0, sizeof(slice));
    v13 = CGRectGetHeight(v37) * 0.5;
    memset(&remainder, 0, sizeof(remainder));
    v38.origin.x = v9;
    v38.origin.y = v10;
    v38.size.width = v11;
    v38.size.height = v12;
    CGRectDivide(v38, &slice, &remainder, v13, CGRectMinYEdge);
    y = slice.origin.y;
    height = slice.size.height;
    width = slice.size.width;
    x = slice.origin.x;
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v39.origin.x = v9;
    v39.origin.y = v10;
    v39.size.width = v11;
    v39.size.height = v12;
    CGRectDivide(v39, &slice, &remainder, v13, CGRectMaxYEdge);
    v16 = slice.origin.x;
    v17 = slice.origin.y;
    v19 = slice.size.width;
    v18 = slice.size.height;
    swift_getKeyPath();
    slice.origin.x = v4;
    sub_36CD0();

    if (*(*&v4 + 72) >= 2u && *(*&v4 + 56) != 0)
    {
      swift_getKeyPath();
      slice.origin.x = v4;
      sub_36CD0();

      swift_beginAccess();
      sub_9B84(*&v4 + 80, &slice);
      v20 = slice.size.height;
      v21 = v35;
      sub_AD00(&slice, *&slice.size.height);
      v22 = (*(v21 + 8))(COERCE_CGFLOAT(*&v20), v21);
      sub_85EC(&slice);
      [v22 descender];
      UIRoundToScale();
      v23 = v16;
      v25 = v24;
      [v22 ascender];
      UIRoundToScale();
      v27 = v26;
      [v22 capHeight];
      UIRoundToScale();
      v29 = v28;

      y = y - (v27 - v29) + -4.0;
      v30 = v27 - v25;
      v16 = v23;
      height = v30 + 8.0;
      v17 = v17 + v18 - v27 + -4.0;
      v18 = v30 + 8.0;
    }

    sub_815C(&qword_59F48);
    result = swift_allocObject();
    *(result + 16) = xmmword_414F0;
    *(result + 32) = x;
    *(result + 40) = y;
    *(result + 48) = width;
    *(result + 56) = height;
    *(result + 64) = v16;
    *(result + 72) = v17;
    *(result + 80) = v19;
    *(result + 88) = v18;
  }

  else
  {
    sub_815C(&qword_59F48);
    result = swift_allocObject();
    *(result + 16) = xmmword_41500;
    *(result + 32) = v9;
    *(result + 40) = v10;
    *(result + 48) = v11;
    *(result + 56) = v12;
  }

  return result;
}

void sub_28DCC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = [objc_opt_self() currentDevice];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 screenBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (a2)
  {
    v16.origin.x = v9;
    v16.origin.y = v11;
    v16.size.width = v13;
    v16.size.height = v15;
    CGRectGetWidth(v16);
    if ((a4 & 1) == 0)
    {
      return;
    }

LABEL_6:
    v17.origin.x = v9;
    v17.origin.y = v11;
    v17.size.width = v13;
    v17.size.height = v15;
    CGRectGetHeight(v17);
    return;
  }

  if (a4)
  {
    goto LABEL_6;
  }
}

void (*sub_28F7C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_36D90();
  return sub_29004;
}

void sub_29004(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_29074(uint64_t a1)
{
  v2 = sub_36DC0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_36F10();
}

uint64_t sub_2916C(uint64_t a1, uint64_t a2)
{
  v4 = sub_815C(&qword_59E68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_291E4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_D5DC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29268()
{
  result = qword_59EA8;
  if (!qword_59EA8)
  {
    sub_D5DC(&qword_59EB0);
    sub_29320();
    sub_12044(&qword_59EC0, &qword_59EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59EA8);
  }

  return result;
}

unint64_t sub_29320()
{
  result = qword_59EB8;
  if (!qword_59EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59EB8);
  }

  return result;
}

unint64_t sub_29374()
{
  result = qword_59ED0;
  if (!qword_59ED0)
  {
    sub_D5DC(&qword_59E88);
    sub_29320();
    sub_12044(&qword_59ED8, &qword_59EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59ED0);
  }

  return result;
}

unint64_t sub_2945C()
{
  result = qword_59EE8;
  if (!qword_59EE8)
  {
    sub_D5DC(&qword_59C98);
    sub_D5DC(&qword_59C88);
    sub_27CB0();
    swift_getOpaqueTypeConformance2();
    sub_2A0E8(&qword_59EF0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59EE8);
  }

  return result;
}

unint64_t sub_29558()
{
  result = qword_59EF8;
  if (!qword_59EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59EF8);
  }

  return result;
}

unint64_t sub_295B0()
{
  result = qword_59F00;
  if (!qword_59F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59F00);
  }

  return result;
}

uint64_t sub_29604(uint64_t (**a1)(uint64_t, char *, uint64_t), CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7)
{
  v93 = a1;
  v12 = sub_815C(&qword_59F08);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v71 - v14);
  v97 = sub_36E40();
  v16 = *(v97 - 8);
  v17 = (__chkstk_darwin)(v97);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v80 = &v71 - v20;
  v21 = sub_815C(&qword_59F10);
  v22 = (__chkstk_darwin)(v21 - 8);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = (&v71 - v25);
  v81 = sub_36E80();
  v27 = *(v81 - 8);
  __chkstk_darwin(v81);
  v92 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_815C(&qword_59F18);
  __chkstk_darwin(v29 - 8);
  v90 = &v71 - v30;
  v91 = sub_815C(&qword_59F20);
  __chkstk_darwin(v91);
  v32 = &v71 - v31;
  v100.origin.x = a2;
  v100.origin.y = a3;
  v100.size.width = a4;
  v100.size.height = a5;
  result = CGRectIsEmpty(v100);
  if ((result & 1) == 0)
  {
    v86 = v16;
    v96 = v12;
    v79 = v19;
    v78 = v15;
    v83 = sub_289F4(a2, a3, a4, a5);
    swift_getKeyPath();
    v34 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model___observationRegistrar;
    v99 = a7;
    v35 = sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa);
    v94 = v34;
    v95 = v35;
    sub_36CD0();

    v36 = *(a7 + 72) == 1;
    v82.size.height = a5;
    v82.size.width = a4;
    v88 = v13;
    if (v36)
    {
      v38 = *(a7 + 56);
      v37 = *(a7 + 64);
      sub_815C(&qword_59F40);
      v39 = swift_allocObject();
      v39[1] = xmmword_414F0;
      *(v39 + 4) = v38;
      *(v39 + 5) = v37;
    }

    else
    {
      v39 = &_swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    v99 = a7;
    sub_36CD0();

    v40 = *(a7 + 56);
    if (*(a7 + 72))
    {
      v41 = 0.0;
    }

    else
    {
      v41 = *(a7 + 64);
    }

    if (*(a7 + 72))
    {
      v40 = 0.0;
    }

    v87 = v40;
    v42 = v90;
    v43 = v81;
    (*(v27 + 16))(v90, v93, v81);
    (*(v27 + 32))(v92, v42, v43);
    sub_2A0E8(&qword_59F28, &type metadata accessor for LayoutSubviews);
    sub_37670();
    v76 = *(v91 + 36);
    *(v32 + v76) = 0;
    v92 = *(sub_815C(&qword_59F30) + 36);
    v44 = sub_2A0E8(&qword_59F38, &type metadata accessor for LayoutSubviews);
    v90 = 0;
    v77 = (v86 + 16);
    v93 = (v86 + 32);
    v89 = (v88 + 7);
    v88 += 6;
    v73 = v83 + 32;
    v91 = v39;
    v72 = (v39 + 2);
    v85 = (v86 + 8);
    v82.origin.y = a3;
    v82.origin.x = a2;
    v45 = v96;
    v46 = v79;
    v86 = v44;
    v74 = v41;
    v75 = v26;
    while (1)
    {
      sub_377B0();
      if (*&v92[v32] == v99)
      {
        v47 = 1;
      }

      else
      {
        v48 = v24;
        v49 = sub_377D0();
        v50 = v80;
        v51 = v97;
        (*v77)(v80);
        v49(&v99, 0);
        sub_377C0();
        v52 = *(v45 + 48);
        v53 = v78;
        v54 = v90;
        *v78 = v90;
        result = (*v93)(v53 + v52, v50, v51);
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          __break(1u);
          return result;
        }

        v90 = v56;
        *(v32 + v76) = v56;
        v24 = v48;
        sub_1FC94(v53, v48, &qword_59F08);
        v47 = 0;
        v46 = v79;
        v26 = v75;
      }

      (*v89)(v24, v47, 1, v45);
      sub_1FC94(v24, v26, &qword_59F10);
      if ((*v88)(v26, 1, v45) == 1)
      {
        sub_16C04(v32, &qword_59F20);
      }

      v57 = *v26;
      (*v93)(v46, v26 + *(v45 + 48), v97);
      v58 = 0.0;
      if (v57 < 0)
      {
        v59 = 0.0;
        v60 = 0.0;
        v61 = 0.0;
      }

      else
      {
        v59 = 0.0;
        v60 = 0.0;
        v61 = 0.0;
        if (v57 < *(v83 + 16))
        {
          v62 = (v73 + 32 * v57);
          v58 = *v62;
          v59 = v62[1];
          v60 = v62[2];
          v61 = v62[3];
        }

        if ((v57 & 0x8000000000000000) == 0 && v57 < *(v91 + 16))
        {
          MidY = *&v72[8 * v57];
          goto LABEL_26;
        }
      }

      v102.origin.x = v58;
      v102.origin.y = v59;
      v102.size.width = v60;
      v102.size.height = v61;
      MidY = CGRectGetMidY(v102);
LABEL_26:
      swift_getKeyPath();
      v99 = a7;
      sub_36CD0();

      if (*(a7 + 49))
      {
        v64 = v58;
        v65 = v59;
        v66 = v60;
        v67 = v61;
        if (*(a7 + 49) == 1)
        {
          MidX = CGRectGetMidX(*&v64);
          sub_37460();
        }

        else
        {
          MidX = CGRectGetMinX(*&v64);
          sub_37470();
        }
      }

      else
      {
        v103.origin.x = v58;
        v103.origin.y = v59;
        v103.size.width = v60;
        v103.size.height = v61;
        MidX = CGRectGetMaxX(v103);
        sub_37480();
      }

      v45 = v96;
      v70 = COERCE_UNSIGNED_INT64(fabs(v41 + MidY)) > 0x7FEFFFFFFFFFFFFFLL;
      if (COERCE_UNSIGNED_INT64(fabs(v87 + MidX)) <= 0x7FEFFFFFFFFFFFFFLL && !v70)
      {
        v84 = v69;
        swift_getKeyPath();
        v99 = a7;
        sub_36CD0();

        if (*(a7 + 49) - 1 >= 2)
        {
          CGRectGetWidth(v82);
          v104.origin.x = v58;
          v104.origin.y = v59;
          v104.size.width = v60;
          v104.size.height = v61;
          CGRectGetMaxX(v104);
        }

        CGRectGetWidth(v82);
        v101.origin.x = v58;
        v101.origin.y = v59;
        v101.size.width = v60;
        v101.size.height = v61;
        CGRectGetHeight(v101);
        LOBYTE(v99) = 0;
        v98 = 0;
        sub_36E30();
        v45 = v96;
        v41 = v74;
      }

      (*v85)(v46, v97);
    }
  }

  return result;
}

uint64_t sub_2A0E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2A130()
{
  sub_2A938(v9);
  v1 = v9[0];

  sub_16B38(v9);
  *&v12[9] = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 41);
  v2 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 32);
  v11 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 16);
  *v12 = v2;
  v10 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout);
  *(v14 + 9) = *(v1 + 57);
  v3 = v1[2];
  v13[0] = v1[1];
  v13[1] = v3;
  v14[0] = v1[3];
  if (sub_2202C(v13, &v10))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1B878();
    sub_36CC0();
  }

  else
  {
    v6 = *&v12[9];
    v8 = v11;
    v7 = *v12;
    v1[1] = v10;
    v1[2] = v8;
    v1[3] = v7;
    *(v1 + 57) = v6;
  }
}

uint64_t sub_2A290(uint64_t a1)
{
  v3 = _s10descr51419V15BackgroundStyleOMa();
  __chkstk_darwin(v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backgroundStyle;
  swift_beginAccess();
  sub_21E68(a1, v1 + v6);
  swift_endAccess();
  sub_2A938(v13);
  v7 = v13[0];

  sub_16B38(v13);
  sub_16D40(v1 + v6, v5);
  swift_getKeyPath();
  v10 = v7;
  v11 = v5;
  v12 = v7;
  sub_1B878();
  sub_36CC0();

  sub_16ABC(a1);

  return sub_16ABC(v5);
}

void sub_2A47C(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DigitalTimeView();
  objc_msgSendSuper2(&v7, "setHidden:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController];
  if (v3)
  {
    v4 = v3;
    [v1 isHidden];
    swift_getObjectType();
    v5 = sub_36FE0();
    sub_37030();
    v5(&v6, 0);
  }
}

uint64_t sub_2A850(char a1, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  v6 = (a3 >> 8) & 1;
  v7 = *(v3 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter);
  [v7 setShowSeconds:a1 & 1];
  [v7 setIncludeSeparatorInTimeSubstringFromSeparatorText:v4 & 1];
  [v7 setZeroPadTimeSubstringToSeparatorText:v6];
  [v7 setForcedNumberSystem:a2];
  sub_2A938(v9);
  sub_815C(&qword_59CD8);
  sub_37280();
  sub_16B38(v9);
  sub_22C2C(v7);
}

uint64_t sub_2A938@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView;
  v5 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView);
  v4 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 8);
  v6 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 16);
  v7 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 24);
  v8 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 32);
  v9 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 40);
  v10 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 48);
  if (v5)
  {
    v11 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView);
    v12 = v4;
    v13 = v6;
    v14 = v9;
    v15 = v10;
    v16 = v7;
    v17 = v8;
  }

  else
  {
    sub_2AA98(v1, &v24);
    v18 = v25;
    v19 = v26;
    v20 = v28;
    v22 = *v3;
    *v3 = v24;
    *(v3 + 16) = v18;
    *(v3 + 24) = v19;
    *(v3 + 32) = v27;
    *(v3 + 48) = v20;
    sub_2B840(&v24, v23);
    sub_2B89C(v22);
    v14 = *(&v27 + 1);
    v15 = v28;
    v16 = v26;
    v17 = v27;
    v13 = v25;
    v12 = *(&v24 + 1);
    v11 = v24;
  }

  result = sub_2B908(v5);
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_2AA98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v62 = sub_36DC0();
  v61 = *(v62 - 8);
  v3 = (__chkstk_darwin)();
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v48 - v5;
  v55 = _s10descr51419V15BackgroundStyleOMa();
  v7 = __chkstk_darwin(v55);
  v63 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 16);
  v68 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout);
  v69 = v11;
  *v70 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 32);
  *&v70[9] = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 41);
  v12 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_font;
  swift_beginAccess();
  sub_9B84(a1 + v12, v67);
  v52 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_fontTracking);
  v51 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_fontTracking + 8);
  v13 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle);
  v14 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle + 8);
  v60 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle + 16);
  v15 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backgroundStyle;
  v16 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle + 20);
  swift_beginAccess();
  v17 = v10;
  v56 = v10;
  sub_16D40(a1 + v15, v10);
  v48 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_maskStyle);
  v18 = v48;
  v19 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_opacity);
  v53 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeTransition);
  v20 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_scaleEffectSize);
  v21 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_scaleEffectSize + 8);
  v22 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backdropGroupName + 8);
  v59 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backdropGroupName);
  v57 = v22;
  v23 = v61;
  v24 = *(v61 + 104);
  v54 = v6;
  v25 = v62;
  v24(v6, enum case for ColorScheme.dark(_:), v62);
  sub_36D40();
  swift_allocObject();
  sub_16B18(v13, v14, v60, v16);
  sub_16B8C(v18);

  v26 = sub_36D30();
  v66 = 0;
  sub_9B84(v67, v65);
  sub_16D40(v17, v63);
  v27 = *(v23 + 16);
  v28 = v50;
  v27(v50, v6, v25);
  _s10descr51419V5ModelCMa();
  v29 = swift_allocObject();
  v30 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle;
  swift_storeEnumTagMultiPayload();
  v31 = v13;
  v32 = v13;
  v33 = v14;
  v34 = v14;
  v35 = v60;
  LOBYTE(v18) = v16;
  v49 = v16;
  sub_16B18(v32, v34, v60, v16);
  v36 = v48;
  sub_16B8C(v48);

  sub_36CE0();
  v37 = v69;
  *(v29 + 16) = v68;
  *(v29 + 32) = v37;
  *(v29 + 48) = *v70;
  *(v29 + 57) = *&v70[9];
  sub_1BF44(v65, v29 + 80);
  *(v29 + 120) = v52;
  *(v29 + 128) = v51;
  *(v29 + 136) = v31;
  *(v29 + 144) = v33;
  *(v29 + 152) = v35;
  *(v29 + 156) = v18;
  sub_16ABC(v29 + v30);
  sub_2B978(v63, v29 + v30);
  *(v29 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle) = v36;
  v38 = v61;
  v39 = v28;
  v40 = v62;
  (*(v61 + 32))(v29 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme, v39, v62);
  *(v29 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity) = v19;
  *(v29 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition) = v53;
  v41 = (v29 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  *v41 = v20;
  v41[1] = v21;
  _s10descr51419V12TimeProviderCMa();
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0xE000000000000000;
  v42[4] = 0;
  v42[5] = 0xE000000000000000;
  v42[6] = 0;
  v42[7] = 0xE000000000000000;
  v42[8] = 0;
  v42[9] = 0xE000000000000000;
  v42[10] = 0;
  v42[11] = 0xE000000000000000;
  v42[12] = 0;
  v42[13] = 0xE000000000000000;
  sub_36CE0();
  v64 = v42;
  sub_37270();
  v43 = v65[0];
  sub_36D20();

  sub_16AAC(v36);
  sub_16A8C(v31, v33, v35, v49);
  (*(v38 + 8))(v54, v40);
  sub_16ABC(v56);
  result = sub_85EC(v67);
  v45 = v66;
  v46 = v58;
  *v58 = v29;
  v46[1] = v26;
  *(v46 + 16) = v45;
  *(v46 + 3) = v43;
  v47 = v57;
  v46[5] = v59;
  v46[6] = v47;
  return result;
}

void sub_2B084()
{
  v1 = &v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController];
  if (!*&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController])
  {
    v2 = v0;
    sub_2A938(v21);
    sub_2B738();
    sub_37370();
    v3 = sub_37040();

    swift_getObjectType();
    sub_2B7F4();
    v4 = sub_2B78C(v3);
    v6 = v5;
    swift_getObjectType();
    v7 = [v4 view];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() clearColor];
      [v8 setBackgroundColor:v9];

      v10 = [v4 view];
      if (v10)
      {
        v11 = v10;
        [v2 bounds];
        [v11 setFrame:?];

        v12 = [v4 view];
        if (v12)
        {
          v13 = v12;
          [v12 setClipsToBounds:1];

          v14 = [v4 view];
          if (v14)
          {
            v15 = v14;
            [v14 setUserInteractionEnabled:0];

            [v2 isHidden];
            v16 = sub_36FE0();
            sub_37030();
            v16(v21, 0);
            v17 = [v4 view];
            if (v17)
            {
              v18 = v17;
              [v2 addSubview:v17];

              v19 = *v1;
              *v1 = v4;
              *(v1 + 1) = v6;
              v20 = v3;

              [v2 setUserInteractionEnabled:0];
              return;
            }

LABEL_13:
            __break(1u);
            return;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_2B328()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DigitalTimeView();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      [v3 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_2B434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DigitalTimeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DigitalTimeView()
{
  result = qword_5A008;
  if (!qword_5A008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B58C()
{
  result = _s10descr51419V15BackgroundStyleOMa();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_2B738()
{
  result = qword_5A020;
  if (!qword_5A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A020);
  }

  return result;
}

uint64_t sub_2B78C(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2B7F4()
{
  result = qword_5A028;
  if (!qword_5A028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_5A028);
  }

  return result;
}

uint64_t sub_2B89C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2B908(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2B978(uint64_t a1, uint64_t a2)
{
  v4 = _s10descr51419V15BackgroundStyleOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_815C(qword_59170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2BA54(uint64_t a1)
{
  v2 = sub_815C(qword_59170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2BAE0(double a1)
{
  *&a1 = a1;
  [*v1 _solveForInput:a1];
  return v2;
}

void *sub_2BB0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    sub_379C0();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_37780();
      sub_37990();
      sub_379D0();
      sub_379E0();
      sub_379A0();
      --v2;
    }

    while (v2);
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_2BBB4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_2BC7C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), void *a5)
{
  v107 = a5;
  v108 = a1;
  v9 = sub_37490();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_374B0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_36CB0();
  __chkstk_darwin(v17);
  if (((a2 - 13) & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    if (a3)
    {
      sub_B2AC(0, &qword_58670);
      sub_B2AC(0, &qword_5A038);
      sub_13794();
      v21.super.isa = sub_374C0().super.isa;
    }

    else
    {
      v21.super.isa = 0;
    }

    v57 = type metadata accessor for WarlockFaceView();
    v117.receiver = v5;
    v117.super_class = v57;
    v58 = objc_msgSendSuper2(&v117, "_swatchImageForEditOption:mode:withSelectedOptions:", v108, a2, v21.super.isa);

    return v58;
  }

  v96 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v20;
  v106 = a4;
  v99 = v14;
  v100 = v12;
  v101 = v13;
  v102 = v10;
  v103 = v9;
  v98 = v18;
  LODWORD(v104) = v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface];
  v116 = v104;
  LODWORD(v105) = *&v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundVisibility] == 0.0;
  v115 = v105;
  v22 = swift_allocObject();
  v23 = objc_opt_self();
  [v23 sizeForSwatchStyle:3];
  *(v22 + 16) = v24;
  *(v22 + 24) = v25;
  v26 = v5;
  if (v108)
  {
    type metadata accessor for WarlockBackgroundEditOption();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = v108;
      LODWORD(v105) = [v28 _value] == &dword_0 + 1;
      v115 = v105;
      [v23 sizeForSwatchStyle:{objc_msgSend(v28, "swatchStyle")}];
      v31 = v30;
      v33 = v32;

      *(v22 + 16) = v31;
      *(v22 + 24) = v33;
    }

    type metadata accessor for WarlockTypefaceEditOption();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      v36 = v108;
      LODWORD(v104) = [v35 _value] == &dword_0 + 1;
      v116 = v104;
      [v23 sizeForSwatchStyle:{objc_msgSend(v35, "swatchStyle")}];
      v38 = v37;
      v40 = v39;

      *(v22 + 16) = v38;
      *(v22 + 24) = v40;
    }
  }

  result = [v26 faceColorPalette];
  if (result)
  {
    v42 = result;
    v43 = v16;
    v108 = type metadata accessor for WarlockColorPalette();
    v44 = [swift_dynamicCastClassUnconditional() configuration];

    v45 = [v44 uniqueId];
    v46 = sub_37530();
    v48 = v47;

    v49 = sub_2C6CC(&v116, &v115, v46, v48);
    v51 = v50;

    v52 = v26;
    v53 = sub_1A858();
    v55 = v106;
    v54 = v107;
    if (v106)
    {
      v113 = v106;
      v114 = v107;
      aBlock = _NSConcreteStackBlock;
      v110 = 1107296256;
      v111 = sub_2BBB4;
      v112 = &unk_53340;
      v56 = _Block_copy(&aBlock);
    }

    else
    {
      v56 = 0;
    }

    v59 = sub_37500();
    [v53 setHandler:v56 forKey:v59];

    _Block_release(v56);
    v60 = objc_opt_self();
    v61 = sub_37500();
    v58 = [v60 cachedSwatchForKey:v61];

    if (v58)
    {

      return v58;
    }

    v62 = [v52 device];
    if (!v62)
    {

      return 0;
    }

    v63 = v62;
    v64 = [objc_allocWithZone(type metadata accessor for WarlockFaceView()) initWithFaceStyle:44 forDevice:v62 clientIdentifier:0];
    if (!v64)
    {

      return 0;
    }

    v65 = v64;
    v95 = v43;
    v66 = v65;
    v94 = v52;
    [v52 bounds];
    [v66 setFrame:?];

    [v66 _loadSnapshotContentViews];
    type metadata accessor for WarlockTypefaceEditOption();
    v67 = sub_A838(v104, v63);
    [v66 setOption:v67 forCustomEditMode:13 slot:0];

    type metadata accessor for WarlockBackgroundEditOption();
    v68 = v105;
    v105 = v63;
    v69 = sub_A838(v68, v63);
    [v66 setOption:v69 forCustomEditMode:17 slot:0];

    v104 = v66;
    v70 = *&v66[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView];
    v71 = v95;
    if (!v70)
    {
LABEL_23:
      v79 = NTKIdealizedDate();
      if (v79)
      {
        v80 = v96;
        v81 = v79;
        sub_36CA0();

        v82.super.isa = sub_36C90().super.isa;
        (*(v97 + 8))(v80, v98);
      }

      else
      {
        v82.super.isa = 0;
      }

      v83 = v104;
      [v104 setOverrideDate:v82.super.isa duration:0.0];

      [v83 layoutIfNeeded];
      [v83 setNeedsDisplay];
      sub_B2AC(0, &qword_5A040);
      v84 = sub_37820();
      v85 = swift_allocObject();
      v85[2] = v83;
      v85[3] = v22;
      v86 = v105;
      v85[4] = v105;
      v85[5] = v49;
      v85[6] = v51;
      v85[7] = v55;
      v85[8] = v54;
      v113 = sub_2CCA4;
      v114 = v85;
      aBlock = _NSConcreteStackBlock;
      v110 = 1107296256;
      v111 = sub_2BBB4;
      v112 = &unk_53318;
      v87 = _Block_copy(&aBlock);
      sub_2CCD4(v55);
      v88 = v83;

      v89 = v86;

      v90 = v71;
      sub_374A0();
      aBlock = &_swiftEmptyArrayStorage;
      sub_2CCE4();
      sub_815C(&qword_5A050);
      sub_2CD3C();
      v91 = v100;
      v92 = v103;
      sub_378F0();
      sub_37830();
      _Block_release(v87);

      (*(v102 + 8))(v91, v92);
      (*(v99 + 8))(v90, v101);

      return 0;
    }

    v72 = v70;
    result = [v94 faceColorPalette];
    if (result)
    {
      v73 = result;
      swift_dynamicCastClassUnconditional();
      v74 = sub_30574();
      v76 = v75;
      v108 = v77;
      v94 = v78;

      LOBYTE(aBlock) = 0;
      sub_359C0(v74, v76, 0);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v71 = v95;
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2C6CC(_BYTE *a1, _BYTE *a2, uint64_t a3, void *a4)
{
  sub_37940(16);

  if (*a1)
  {
    v8._countAndFlagsBits = 0x64696C6F73;
  }

  else
  {
    v8._countAndFlagsBits = 0x6C69636E657473;
  }

  if (*a1)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  v8._object = v9;
  sub_375D0(v8);

  v13._countAndFlagsBits = 761750061;
  v13._object = 0xE400000000000000;
  sub_375D0(v13);
  if (*a2)
  {
    v10._countAndFlagsBits = 6710895;
  }

  else
  {
    v10._countAndFlagsBits = 28271;
  }

  if (*a2)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v11 = 0xE200000000000000;
  }

  v10._object = v11;
  sub_375D0(v10);

  v14._countAndFlagsBits = 2974509;
  v14._object = 0xE300000000000000;
  sub_375D0(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  sub_375D0(v15);
  return 2975348;
}

void sub_2C7F8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = a6;
  v14[8] = a7;
  v18[4] = sub_2CE04;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_2BBB4;
  v18[3] = &unk_53390;
  v15 = _Block_copy(v18);
  v16 = a1;

  v17 = a3;

  sub_2CCD4(a6);

  [v16 _finalizeForSnapshotting:v15];
  _Block_release(v15);
}

void sub_2C928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = objc_opt_self();
  swift_beginAccess();
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = sub_37500();

  if (a6)
  {
    a6();
  }

  else
  {
    __break(1u);
  }
}

void *sub_2CB4C(uint64_t a1)
{
  if (a1 != 17 && a1 != 13)
  {
    return 0;
  }

  sub_379C0();
  sub_37780();
  sub_37990();
  sub_379D0();
  sub_379E0();
  sub_379A0();
  sub_37780();
  sub_37990();
  sub_379D0();
  sub_379E0();
  sub_379A0();
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_2CC4C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2CCBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2CCD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2CCE4()
{
  result = qword_5A048;
  if (!qword_5A048)
  {
    sub_37490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A048);
  }

  return result;
}

unint64_t sub_2CD3C()
{
  result = qword_5A058;
  if (!qword_5A058)
  {
    sub_D5DC(&qword_5A050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A058);
  }

  return result;
}

uint64_t sub_2CDA4()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_2CE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = sub_2D018(v7, a2, a3);
  v10 = v9;
  type metadata accessor for WarlockFaceBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = sub_37500();
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_37940(38);

  v17 = 0xD000000000000024;
  v18 = 0x800000000003B480;
  v19._countAndFlagsBits = v8;
  v19._object = v10;
  sub_375D0(v19);

  v13 = sub_37500();

  v14 = [ObjCClassFromMetadata localizedStringForKey:v12 comment:v13];

  v15 = sub_37530();
  (*(v5 + 8))(v7, a2);
  return v15;
}

unint64_t sub_2D018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v5 = sub_1BE78(v15);
  (*(*(a2 - 8) + 16))(v5, a1, a2);
  sub_AD00(v15, v16);
  swift_getDynamicType();
  (*(v17 + 40))();
  v6 = sub_37560();
  v8 = v7;

  v18._countAndFlagsBits = v6;
  v18._object = v8;
  sub_375D0(v18);

  v19._countAndFlagsBits = 95;
  v19._object = 0xE100000000000000;
  sub_375D0(v19);

  v9 = v16;
  v10 = v17;
  sub_AD00(v15, v16);
  (*(v10 + 32))(v9, v10);
  v11 = sub_37560();
  v13 = v12;

  v20._countAndFlagsBits = v11;
  v20._object = v13;
  sub_375D0(v20);

  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  sub_375D0(v21);

  sub_85EC(v15);
  return 0xD000000000000013;
}

__n128 sub_2D1EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_2D200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2D248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2D29C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_37B50(LODWORD(v1));
  v2 = v0[4];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_37B50(LODWORD(v2));
  v3 = v0[5];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_37B50(LODWORD(v3));
  v4 = v0[6];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_37B50(LODWORD(v4));
}

Swift::Int sub_2D31C()
{
  sub_37B30();
  sub_2D29C();
  return sub_37B80();
}

Swift::Int sub_2D360()
{
  sub_37B30();
  sub_2D29C();
  return sub_37B80();
}

unint64_t sub_2D3DC()
{
  result = qword_5A060;
  if (!qword_5A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A060);
  }

  return result;
}

id sub_2D430(uint64_t a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() _optionWithValue:a1 forDevice:a2];

  return v2;
}

id sub_2D498(uint64_t a1, void *a2)
{
  sub_AC28(a1, v17);
  v5 = v18;
  if (v18)
  {
    v6 = sub_AD00(v17, v18);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_37AC0();
    (*(v7 + 8))(v10, v5);
    sub_85EC(v17);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for WarlockBackgroundEditOption();
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, "initWithJSONObjectRepresentation:forDevice:", v11, a2);

  swift_unknownObjectRelease();
  v14 = v13;
  sub_AC98(a1);
  if (v14)
  {
  }

  return v14;
}

id sub_2D614(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a4;
    swift_unknownObjectRetain();
    sub_378E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v6 = a4;
  }

  return sub_2D498(v8, a4);
}

id sub_2D688(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for WarlockBackgroundEditOption();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_2D6D8(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for WarlockBackgroundEditOption();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}