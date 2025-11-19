uint64_t sub_1000B6CA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000B6D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35[1] = a5;
  sub_1000B71D4(0, &qword_1001160F0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v35 - v11;
  v13 = type metadata accessor for StockPriceView();
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = (v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000B7088();
  v19 = v18;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000DAFA0();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  sub_10002B054(a1, a2, a3, a4);
  v24 = sub_1000DB000();
  sub_1000B7140(v12);
  KeyPath = swift_getKeyPath();
  *v17 = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v24;
  v26 = v14[8];
  *(v17 + v26) = swift_getKeyPath();
  sub_1000B71D4(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v27 = v17 + v14[9];
  *v27 = KeyPath;
  v27[8] = 0;
  v28 = v14[10];
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100002540();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  *(v17 + v28) = sub_1000D9DD0();
  v32 = swift_getKeyPath();
  sub_1000B7240(v17, v22);
  v33 = &v22[*(v19 + 36)];
  *v33 = v32;
  v33[1] = 0x3FB999999999999ALL;
  sub_1000B72A4();
  sub_1000DB230();
  return sub_1000B73CC(v22);
}

void sub_1000B7088()
{
  if (!qword_10011A0A8)
  {
    type metadata accessor for StockPriceView();
    sub_1000B70F0();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A0A8);
    }
  }
}

void sub_1000B70F0()
{
  if (!qword_100115918)
  {
    v0 = sub_1000DAEA0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115918);
    }
  }
}

uint64_t sub_1000B7140(uint64_t a1)
{
  sub_1000B71D4(0, &qword_1001160F0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000B71D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000B7240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockPriceView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B72A4()
{
  result = qword_10011A0B0;
  if (!qword_10011A0B0)
  {
    sub_1000B7088();
    sub_1000B7384(&qword_10011A0B8, type metadata accessor for StockPriceView);
    sub_1000B7384(&qword_100115938, sub_1000B70F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A0B0);
  }

  return result;
}

uint64_t sub_1000B7384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B73CC(uint64_t a1)
{
  sub_1000B7088();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B7428()
{
  sub_1000B7088();
  sub_1000B72A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B7480(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000B7494(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B74E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000B753C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000B7554(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1000B7584(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1000B75CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B761C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000B7678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000B76F8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v42 = sub_1000DA990();
  v6 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v41 - v9;
  sub_1000B7A38(a1, a2);
  sub_1000B7CBC();
  v11 = a3 + *(v10 + 36);
  *v11 = 0x3FF0000000000000;
  *(v11 + 8) = 0;
  sub_1000DB340();
  v12 = sub_1000DB350();

  sub_1000DA6D0();
  v13 = v44[11];
  v14 = v45;
  v15 = v46;
  v16 = v47;
  v17 = v48;
  v18 = v49;
  v19 = sub_1000DB600();
  v21 = v20;
  v22 = sub_1000DB600();
  v24 = v23;
  *&v50 = v13;
  *(&v50 + 1) = __PAIR64__(v15, v14);
  *&v51 = v16;
  *(&v51 + 1) = v17;
  *&v52 = v18;
  *(&v52 + 1) = v12;
  LOWORD(v53) = 256;
  *(&v53 + 1) = v19;
  *&v54 = v21;
  *(&v54 + 1) = v22;
  v55 = v23;
  sub_1000B7D84(0);
  v26 = a3 + *(v25 + 36);
  v27 = v53;
  *(v26 + 32) = v52;
  *(v26 + 48) = v27;
  *(v26 + 64) = v54;
  *(v26 + 80) = v55;
  v28 = v51;
  *v26 = v50;
  *(v26 + 16) = v28;
  v56 = v13;
  v57 = v14;
  v58 = v15;
  v59 = v16;
  v60 = v17;
  v61 = v18;
  v62 = v12;
  v63 = 256;
  v64 = v19;
  v65 = v21;
  v66 = v22;
  v67 = v24;
  sub_1000B8834(&v50, v44, sub_1000B7DB8);
  sub_1000B88F0(&v56, sub_1000B7DB8);
  v29 = *(v42 + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = sub_1000DACF0();
  v32 = v41;
  (*(*(v31 - 8) + 104))(&v41[v29], v30, v31);
  __asm { FMOV            V0.2D, #8.0 }

  *v32 = _Q0;
  sub_1000B8834(v32, v43, &type metadata accessor for RoundedRectangle);
  sub_1000B946C(0, &qword_10011A120, sub_1000B7D84, sub_1000B7F30);
  v39 = *(v38 + 36);
  sub_1000B9C58(&qword_10011A130, &type metadata accessor for RoundedRectangle);
  sub_1000DAEE0();
  return sub_1000B88F0(v32, &type metadata accessor for RoundedRectangle);
}

uint64_t sub_1000B7A38(void *a1, char a2)
{
  v4 = type metadata accessor for HeadlineThumbnailImageView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000B7FC4(0, &qword_10011A138, &type metadata accessor for _ConditionalContent.Storage);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  if (a1)
  {
    *v7 = swift_getKeyPath();
    sub_1000B8A50(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
    swift_storeEnumTagMultiPayload();
    v12 = v7 + *(v4 + 20);
    *v12 = a1;
    v12[8] = a2 & 1;
    sub_1000B8834(v7, v11, type metadata accessor for HeadlineThumbnailImageView);
    swift_storeEnumTagMultiPayload();
    sub_1000B889C();
    sub_1000B9C58(&qword_10011A148, type metadata accessor for HeadlineThumbnailImageView);
    v13 = a1;
    sub_1000DAD90();
    return sub_1000B88F0(v7, type metadata accessor for HeadlineThumbnailImageView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000B889C();
    sub_1000B9C58(&qword_10011A148, type metadata accessor for HeadlineThumbnailImageView);
    return sub_1000DAD90();
  }
}

void sub_1000B7CBC()
{
  if (!qword_10011A0E8)
  {
    sub_1000B7FC4(255, &qword_10011A0F0, &type metadata accessor for _ConditionalContent);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A0E8);
    }
  }
}

uint64_t type metadata accessor for HeadlineThumbnailImageView()
{
  result = qword_10011A1A8;
  if (!qword_10011A1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B7DB8()
{
  if (!qword_10011A100)
  {
    sub_1000B7E4C();
    sub_1000B9C58(&qword_10011A118, sub_1000B7E4C);
    v0 = sub_1000DA9B0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A100);
    }
  }
}

void sub_1000B7E4C()
{
  if (!qword_10011A108)
  {
    sub_1000B7EDC();
    v0 = sub_1000DA940();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A108);
    }
  }
}

unint64_t sub_1000B7EDC()
{
  result = qword_10011A110;
  if (!qword_10011A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A110);
  }

  return result;
}

void sub_1000B7F30()
{
  if (!qword_10011A128)
  {
    sub_1000DA990();
    sub_1000B9C58(&qword_10011A130, &type metadata accessor for RoundedRectangle);
    v0 = sub_1000DAEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A128);
    }
  }
}

void sub_1000B7FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HeadlineThumbnailImageView();
    v7 = a3(a1, &type metadata for HeadlineThumbnailAudioIndicatorView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1000B802C(uint64_t a1@<X8>)
{
  sub_1000B8A50(0, &qword_10011A250, &type metadata accessor for WidgetAccentedRenderingMode, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29[-v5];
  v7 = sub_1000DB3D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v1 + *(type metadata accessor for HeadlineThumbnailImageView() + 20);
  v13 = *v12;
  sub_1000DB3B0();
  (*(v8 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v7);
  sub_1000DB430();

  (*(v8 + 8))(v11, v7);
  sub_1000DB700();
  v14 = sub_1000DB710();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  sub_1000DB420();

  sub_1000B92FC(v6, &qword_10011A250, &type metadata accessor for WidgetAccentedRenderingMode);
  sub_1000B936C();
  *(a1 + *(v15 + 36)) = 256;
  v16 = sub_1000DB600();
  v18 = v17;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = *(v12 + 8);
  if (v25 == 1)
  {
    sub_1000DB600();
    sub_1000DA7A0();
    v19 = v30;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = v34;
    v24 = v35;
  }

  v26 = v25 ^ 1;
  v29[8] = v26;
  sub_1000B946C(0, &qword_10011A268, sub_1000B936C, sub_1000B94E0);
  v28 = a1 + *(v27 + 36);
  *v28 = v19;
  *(v28 + 8) = v20;
  *(v28 + 16) = v21;
  *(v28 + 24) = v22;
  *(v28 + 32) = v23;
  *(v28 + 40) = v24;
  *(v28 + 48) = v26;
  *(v28 + 56) = v16;
  *(v28 + 64) = v18;
}

double sub_1000B8338@<D0>(uint64_t a1@<X8>)
{
  sub_1000DB330();
  v2 = sub_1000DB350();

  sub_1000DB330();
  v3 = sub_1000DB350();

  sub_1000B9CBC();
  v5 = *(v4 + 36);
  sub_1000B9E3C();
  sub_1000DAEE0();
  *a1 = v2;
  *(a1 + 8) = xmmword_1000E5E70;
  *(a1 + 24) = 0x4000000000000000;
  *(a1 + 32) = v3;
  result = 10.0;
  *(a1 + 40) = xmmword_1000E5E80;
  *(a1 + 56) = 0x4000000000000000;
  return result;
}

uint64_t sub_1000B83EC()
{
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(&unk_100128FD8, v3);
  sub_100006C7C(v3, v3[3]);
  sub_10002F2F8();
  result = sub_1000D9F00();
  if (v2)
  {
    sub_100023738(&v1, &unk_10011A0C0);
    return sub_100006D0C(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000B84AC(uint64_t a1@<X8>)
{
  v30[0] = a1;
  sub_1000B8A50(0, &qword_10011A210, &type metadata accessor for Image.TemplateRenderingMode, &type metadata accessor for Optional);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v30 - v3;
  sub_1000B946C(0, &qword_10011A218, sub_1000B8F34, sub_1000B9074);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = v30 - v8;
  sub_1000DB3C0();
  v10 = enum case for Image.TemplateRenderingMode.template(_:);
  v11 = sub_1000DB400();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  v13 = sub_1000DB3E0();

  sub_1000B92FC(v4, &qword_10011A210, &type metadata accessor for Image.TemplateRenderingMode);
  v14 = sub_1000DB340();
  KeyPath = swift_getKeyPath();
  sub_1000DB600();
  sub_1000DA9A0();
  v16 = sub_1000DB600();
  v18 = v17;
  v19 = *(v6 + 44);
  if (qword_1001141D0 != -1)
  {
    swift_once();
  }

  v21 = qword_10011A0D8;
  v20 = unk_10011A0E0;
  sub_100006C7C(qword_10011A0C0, qword_10011A0D8);
  (*(*(v20 + 16) + 128))(v21);
  v30[1] = sub_1000DB300();
  sub_1000DB1F0();

  sub_1000B9074();
  v23 = &v9[v19 + *(v22 + 36)];
  *v23 = v16;
  v23[1] = v18;
  v24 = v34;
  *(v9 + 56) = v33;
  v25 = v31;
  *(v9 + 40) = v32;
  *(v9 + 24) = v25;
  v26 = v36;
  *(v9 + 120) = v37;
  v27 = v35;
  *(v9 + 104) = v26;
  *(v9 + 88) = v27;
  *v9 = v13;
  *(v9 + 1) = KeyPath;
  *(v9 + 2) = v14;
  *(v9 + 72) = v24;
  v28 = v30[0];
  sub_1000B9198(v9, v30[0]);
  sub_1000B922C();
  *(v28 + *(v29 + 36)) = 256;
}

uint64_t sub_1000B8834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B889C()
{
  result = qword_10011A140;
  if (!qword_10011A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A140);
  }

  return result;
}

uint64_t sub_1000B88F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B8964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000B8A50(0, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1000B8A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000B8AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000B8A50(0, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

void sub_1000B8BB0()
{
  sub_1000B8A50(319, &qword_1001157F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1000B8C68()
{
  result = qword_10011A1E0;
  if (!qword_10011A1E0)
  {
    sub_1000B946C(255, &qword_10011A120, sub_1000B7D84, sub_1000B7F30);
    sub_1000B8D48();
    sub_1000B9C58(&qword_10011A208, sub_1000B7F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A1E0);
  }

  return result;
}

unint64_t sub_1000B8D48()
{
  result = qword_10011A1E8;
  if (!qword_10011A1E8)
  {
    sub_1000B7D84(255);
    sub_1000B98C4(&qword_10011A1F0, sub_1000B7CBC, sub_1000B8E30);
    sub_1000B9C58(&qword_10011A200, sub_1000B7DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A1E8);
  }

  return result;
}

unint64_t sub_1000B8E30()
{
  result = qword_10011A1F8;
  if (!qword_10011A1F8)
  {
    sub_1000B7FC4(255, &qword_10011A0F0, &type metadata accessor for _ConditionalContent);
    sub_1000B889C();
    sub_1000B9C58(&qword_10011A148, type metadata accessor for HeadlineThumbnailImageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A1F8);
  }

  return result;
}

void sub_1000B8F34()
{
  if (!qword_10011A220)
  {
    sub_1000B8F94();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A220);
    }
  }
}

void sub_1000B8F94()
{
  if (!qword_10011A228)
  {
    sub_1000B8A50(255, &qword_1001158D8, sub_1000B9024, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A228);
    }
  }
}

void sub_1000B9024()
{
  if (!qword_1001158E0)
  {
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_1001158E0);
    }
  }
}

void sub_1000B9074()
{
  if (!qword_10011A230)
  {
    sub_1000B9110();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1000DAD70();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A230);
    }
  }
}

void sub_1000B9110()
{
  if (!qword_10011A238)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011A238);
    }
  }
}

uint64_t sub_1000B9198(uint64_t a1, uint64_t a2)
{
  sub_1000B946C(0, &qword_10011A218, sub_1000B8F34, sub_1000B9074);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000B922C()
{
  if (!qword_10011A240)
  {
    sub_1000B946C(255, &qword_10011A218, sub_1000B8F34, sub_1000B9074);
    sub_1000B9DD4(255, &qword_10011A248, sub_1000B7EDC, &type metadata for ContainerRelativeShape, &type metadata accessor for _ClipEffect);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A240);
    }
  }
}

uint64_t sub_1000B92FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000B8A50(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1000B936C()
{
  if (!qword_10011A258)
  {
    sub_1000B940C();
    sub_1000B9DD4(255, &qword_10011A248, sub_1000B7EDC, &type metadata for ContainerRelativeShape, &type metadata accessor for _ClipEffect);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A258);
    }
  }
}

void sub_1000B940C()
{
  if (!qword_10011A260)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011A260);
    }
  }
}

void sub_1000B946C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1000DA930();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000B94E0()
{
  if (!qword_10011A270)
  {
    sub_1000B9544();
    sub_1000B95B4();
    v0 = sub_1000DA9B0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A270);
    }
  }
}

void sub_1000B9544()
{
  if (!qword_10011A278)
  {
    sub_1000AA694(255, &qword_10011A280);
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A278);
    }
  }
}

unint64_t sub_1000B95B4()
{
  result = qword_10011A288;
  if (!qword_10011A288)
  {
    sub_1000B9544();
    sub_1000B962C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A288);
  }

  return result;
}

unint64_t sub_1000B962C()
{
  result = qword_10011A290;
  if (!qword_10011A290)
  {
    sub_1000AA694(255, &qword_10011A280);
    sub_1000B96C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A290);
  }

  return result;
}

unint64_t sub_1000B96C4()
{
  result = qword_10011A298;
  if (!qword_10011A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A298);
  }

  return result;
}

unint64_t sub_1000B972C()
{
  result = qword_10011A2A0;
  if (!qword_10011A2A0)
  {
    sub_1000B922C();
    sub_1000B97AC();
    sub_1000B9A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2A0);
  }

  return result;
}

unint64_t sub_1000B97AC()
{
  result = qword_10011A2A8;
  if (!qword_10011A2A8)
  {
    sub_1000B946C(255, &qword_10011A218, sub_1000B8F34, sub_1000B9074);
    sub_1000B98C4(&qword_10011A2B0, sub_1000B8F34, sub_1000B9944);
    sub_1000B9C58(&qword_10011A2C0, sub_1000B9074);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2A8);
  }

  return result;
}

uint64_t sub_1000B98C4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B9944()
{
  result = qword_10011A2B8;
  if (!qword_10011A2B8)
  {
    sub_1000B8F94();
    sub_1000B99C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2B8);
  }

  return result;
}

unint64_t sub_1000B99C4()
{
  result = qword_1001159D0;
  if (!qword_1001159D0)
  {
    sub_1000B8A50(255, &qword_1001158D8, sub_1000B9024, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001159D0);
  }

  return result;
}

unint64_t sub_1000B9A4C()
{
  result = qword_10011A2C8;
  if (!qword_10011A2C8)
  {
    sub_1000B9DD4(255, &qword_10011A248, sub_1000B7EDC, &type metadata for ContainerRelativeShape, &type metadata accessor for _ClipEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2C8);
  }

  return result;
}

unint64_t sub_1000B9AE0()
{
  result = qword_10011A2D0;
  if (!qword_10011A2D0)
  {
    sub_1000B946C(255, &qword_10011A268, sub_1000B936C, sub_1000B94E0);
    sub_1000B9BC0();
    sub_1000B9C58(&qword_10011A2E0, sub_1000B94E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2D0);
  }

  return result;
}

unint64_t sub_1000B9BC0()
{
  result = qword_10011A2D8;
  if (!qword_10011A2D8)
  {
    sub_1000B936C();
    swift_getOpaqueTypeConformance2();
    sub_1000B9A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A2D8);
  }

  return result;
}

uint64_t sub_1000B9C58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000B9CBC()
{
  if (!qword_10011A2E8)
  {
    sub_1000B9D5C();
    sub_1000B9DD4(255, &qword_10011A300, sub_1000B9E3C, &type metadata for Circle, &type metadata accessor for _ContainerRoundedRectangularShapeModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A2E8);
    }
  }
}

void sub_1000B9D5C()
{
  if (!qword_10011A2F0)
  {
    sub_1000AA694(255, &qword_10011A2F8);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A2F0);
    }
  }
}

void sub_1000B9DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1000B9E3C()
{
  result = qword_10011A308;
  if (!qword_10011A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A308);
  }

  return result;
}

unint64_t sub_1000B9E94()
{
  result = qword_10011A310;
  if (!qword_10011A310)
  {
    sub_1000B9CBC();
    sub_1000B98C4(&qword_10011A318, sub_1000B9D5C, sub_1000B9F4C);
    sub_1000B9FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A310);
  }

  return result;
}

unint64_t sub_1000B9F4C()
{
  result = qword_10011A320;
  if (!qword_10011A320)
  {
    sub_1000AA694(255, &qword_10011A2F8);
    sub_1000B889C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A320);
  }

  return result;
}

unint64_t sub_1000B9FE4()
{
  result = qword_10011A328;
  if (!qword_10011A328)
  {
    sub_1000B9DD4(255, &qword_10011A300, sub_1000B9E3C, &type metadata for Circle, &type metadata accessor for _ContainerRoundedRectangularShapeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A328);
  }

  return result;
}

uint64_t sub_1000BA0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000DB310();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  sub_100017740();

  v11 = sub_1000DB170();
  v13 = v12;
  v15 = v14;
  v24 = v16;
  KeyPath = swift_getKeyPath();
  v18 = v15 & 1;
  LOBYTE(v25) = v15 & 1;
  v27 = 0;
  sub_1000DB070();
  sub_1000DAFD0();
  v19 = sub_1000DB010();

  v20 = swift_getKeyPath();
  (*(v7 + 104))(v10, enum case for Color.RGBColorSpace.sRGB(_:), v6);
  sub_1000DB380();
  v21 = sub_1000DB350();

  v22 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v18;
  *(a3 + 24) = v24;
  *(a3 + 32) = 0;
  *(a3 + 40) = KeyPath;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = v20;
  *(a3 + 88) = v19;
  *(a3 + 96) = v22;
  *(a3 + 104) = v21;
  *(a3 + 112) = result;
  *(a3 + 120) = 1;
  *(a3 + 128) = 0;
  return result;
}

unint64_t sub_1000BA2CC()
{
  result = qword_10011A330;
  if (!qword_10011A330)
  {
    sub_1000BA36C();
    sub_1000BA46C();
    sub_1000A0F80(&qword_100115200, &qword_1001151B8, &qword_1001151C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A330);
  }

  return result;
}

void sub_1000BA36C()
{
  if (!qword_10011A338)
  {
    sub_1000BA3EC();
    sub_1000A0D48(255, &qword_1001151B8, &qword_1001151C0);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A338);
    }
  }
}

void sub_1000BA3EC()
{
  if (!qword_10011A340)
  {
    sub_1000A0C70();
    sub_1000A0D48(255, &qword_1001158D8, &qword_1001158E0);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A340);
    }
  }
}

unint64_t sub_1000BA46C()
{
  result = qword_10011A348;
  if (!qword_10011A348)
  {
    sub_1000BA3EC();
    sub_1000A0EE0();
    sub_1000A0F80(&qword_1001159D0, &qword_1001158D8, &qword_1001158E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A348);
  }

  return result;
}

uint64_t sub_1000BA50C()
{
  v1 = sub_1000D9C40();
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  sub_1000BAAF0(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = *(type metadata accessor for WidgetStock() + 20);
  v30 = v0;
  v27 = v15;
  sub_1000BBE2C(v0 + v15, v14, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v16 = sub_1000D9450();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v14, 1, v16) == 1)
  {
    sub_1000BBEF4(v14, &qword_100114B58, &type metadata accessor for WidgetQuote);
    v19 = 0;
    v28 = 1;
  }

  else
  {
    v20 = sub_1000D9440();
    v28 = v21;
    v22 = v14;
    v19 = v20;
    (*(v17 + 8))(v22, v16);
  }

  sub_1000D9B00();
  v23 = v29;
  (*(v29 + 32))(v5, v7, v1);
  v24 = (*(v23 + 88))(v5, v1);
  if (v24 != enum case for StockType.unknown(_:) && v24 != enum case for StockType.currency(_:) && v24 != enum case for StockType.cryptocurrency(_:) && v24 != enum case for StockType.equity(_:) && v24 != enum case for StockType.etf(_:) && v24 != enum case for StockType.futures(_:))
  {
    if (v24 == enum case for StockType.index(_:))
    {
      return v19;
    }

    if (v24 != enum case for StockType.mutualFund(_:))
    {
      (*(v23 + 8))(v5, v1);
    }
  }

  sub_1000BBE2C(v30 + v27, v12, &qword_100114B58, &type metadata accessor for WidgetQuote);
  if (v18(v12, 1, v16) == 1)
  {
    sub_1000BBEF4(v12, &qword_100114B58, &type metadata accessor for WidgetQuote);
  }

  else
  {
    sub_1000D93E0();
    (*(v17 + 8))(v12, v16);
  }

  return v19;
}

uint64_t type metadata accessor for WidgetStock()
{
  result = qword_10011A3A8;
  if (!qword_10011A3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BA978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D9B40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1000BAAF0(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1000BAAF0(0, &qword_100114B60, type metadata accessor for PreparedSparkline);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

void sub_1000BAAF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DBE80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000BAB58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000D9B40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_1000BAAF0(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1000BAAF0(0, &qword_100114B60, type metadata accessor for PreparedSparkline);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

void sub_1000BACDC()
{
  sub_1000D9B40();
  if (v0 <= 0x3F)
  {
    sub_1000BAAF0(319, &qword_100114B58, &type metadata accessor for WidgetQuote);
    if (v1 <= 0x3F)
    {
      sub_1000BAAF0(319, &qword_100114B60, type metadata accessor for PreparedSparkline);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000BADB0(void *a1)
{
  sub_1000BC070(0, &qword_10011A400, &type metadata accessor for KeyedEncodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v8 = &v14[-v7];
  v9 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000BBFB0();
  sub_1000DC480();
  v14[15] = 0;
  sub_1000D9B40();
  sub_1000BC0D4(&qword_10011A408, &type metadata accessor for Stock);
  sub_1000DC2F0();
  if (!v1)
  {
    v10 = type metadata accessor for WidgetStock();
    v11 = *(v10 + 20);
    v14[14] = 1;
    sub_1000D9450();
    sub_1000BC0D4(&qword_1001171D8, &type metadata accessor for WidgetQuote);
    sub_1000DC2A0();
    v12 = *(v10 + 24);
    v14[13] = 2;
    type metadata accessor for PreparedSparkline(0);
    sub_1000BC0D4(&qword_100119270, type metadata accessor for PreparedSparkline);
    sub_1000DC2A0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000BB038@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1000BAAF0(0, &qword_100114B60, type metadata accessor for PreparedSparkline);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v30 = &v29 - v5;
  sub_1000BAAF0(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_1000D9B40();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  __chkstk_darwin(v10);
  v34 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC070(0, &qword_10011A3E8, &type metadata accessor for KeyedDecodingContainer);
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = type metadata accessor for WidgetStock();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000BBFB0();
  v35 = v16;
  v22 = v36;
  sub_1000DC470();
  if (v22)
  {
    return sub_100006D0C(a1);
  }

  v36 = a1;
  v23 = v31;
  v39 = 0;
  sub_1000BC0D4(&qword_10011A3F8, &type metadata accessor for Stock);
  sub_1000DC220();
  v24 = *(v23 + 32);
  v25 = v20;
  v24(v20, v34, v10);
  sub_1000D9450();
  v38 = 1;
  sub_1000BC0D4(&qword_1001171B0, &type metadata accessor for WidgetQuote);
  sub_1000DC1D0();
  sub_1000BC004(v9, &v20[*(v17 + 20)], &qword_100114B58, &type metadata accessor for WidgetQuote);
  type metadata accessor for PreparedSparkline(0);
  v37 = 2;
  sub_1000BC0D4(&qword_100119218, type metadata accessor for PreparedSparkline);
  v26 = v30;
  sub_1000DC1D0();
  v27 = v36;
  (*(v32 + 8))(v35, v33);
  sub_1000BC004(v26, v25 + *(v17 + 24), &qword_100114B60, type metadata accessor for PreparedSparkline);
  sub_100065CB0(v25, v29);
  sub_100006D0C(v27);
  return sub_1000BBF50(v25, type metadata accessor for WidgetStock);
}

uint64_t sub_1000BB5CC()
{
  v1 = 0x65746F7571;
  if (*v0 != 1)
  {
    v1 = 0x6E696C6B72617073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B636F7473;
  }
}

uint64_t sub_1000BB624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BC234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BB64C(uint64_t a1)
{
  v2 = sub_1000BBFB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BB688(uint64_t a1)
{
  v2 = sub_1000BBFB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1000BB6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedSparkline(0);
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000BAAF0(0, &qword_100114B60, type metadata accessor for PreparedSparkline);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v53 = (&v49 - v10);
  sub_1000BBDC8(0, &qword_100118460, &qword_100114B60, type metadata accessor for PreparedSparkline);
  v54 = v11;
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v55 = &v49 - v13;
  v14 = sub_1000D9450();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BAAF0(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v49 - v21;
  v23 = a1;
  sub_1000BBDC8(0, &qword_100118450, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v25 = v24;
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v28 = &v49 - v27;
  if ((sub_1000D9AE0() & 1) == 0)
  {
    return 0;
  }

  v52 = v4;
  v49 = v7;
  v29 = type metadata accessor for WidgetStock();
  v30 = *(v29 + 20);
  v31 = *(v25 + 48);
  v50 = v29;
  v51 = v23;
  sub_1000BBE2C(v23 + v30, v28, &qword_100114B58, &type metadata accessor for WidgetQuote);
  sub_1000BBE2C(a2 + v30, &v28[v31], &qword_100114B58, &type metadata accessor for WidgetQuote);
  v32 = *(v15 + 48);
  if (v32(v28, 1, v14) != 1)
  {
    sub_1000BBE2C(v28, v22, &qword_100114B58, &type metadata accessor for WidgetQuote);
    if (v32(&v28[v31], 1, v14) != 1)
    {
      (*(v15 + 32))(v18, &v28[v31], v14);
      sub_1000BC0D4(&qword_100118468, &type metadata accessor for WidgetQuote);
      v37 = sub_1000DB8D0();
      v38 = *(v15 + 8);
      v38(v18, v14);
      v38(v22, v14);
      sub_1000BBEF4(v28, &qword_100114B58, &type metadata accessor for WidgetQuote);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    (*(v15 + 8))(v22, v14);
LABEL_7:
    v33 = &qword_100118450;
    v34 = &qword_100114B58;
    v35 = &type metadata accessor for WidgetQuote;
    v36 = v28;
LABEL_15:
    sub_1000BBE98(v36, v33, v34, v35);
    return 0;
  }

  if (v32(&v28[v31], 1, v14) != 1)
  {
    goto LABEL_7;
  }

  sub_1000BBEF4(v28, &qword_100114B58, &type metadata accessor for WidgetQuote);
LABEL_9:
  v39 = *(v50 + 24);
  v40 = v55;
  v41 = *(v54 + 48);
  sub_1000BBE2C(v51 + v39, v55, &qword_100114B60, type metadata accessor for PreparedSparkline);
  sub_1000BBE2C(a2 + v39, v40 + v41, &qword_100114B60, type metadata accessor for PreparedSparkline);
  v42 = *(v56 + 48);
  v43 = v52;
  if (v42(v40, 1, v52) == 1)
  {
    if (v42(v40 + v41, 1, v43) == 1)
    {
      sub_1000BBEF4(v40, &qword_100114B60, type metadata accessor for PreparedSparkline);
      return 1;
    }

    goto LABEL_14;
  }

  v44 = v53;
  sub_1000BBE2C(v40, v53, &qword_100114B60, type metadata accessor for PreparedSparkline);
  if (v42(v40 + v41, 1, v43) == 1)
  {
    sub_1000BBF50(v44, type metadata accessor for PreparedSparkline);
LABEL_14:
    v33 = &qword_100118460;
    v34 = &qword_100114B60;
    v35 = type metadata accessor for PreparedSparkline;
    v36 = v40;
    goto LABEL_15;
  }

  v46 = v40 + v41;
  v47 = v49;
  sub_100081884(v46, v49);
  v48 = sub_100073590(v44, v47);
  sub_1000BBF50(v47, type metadata accessor for PreparedSparkline);
  sub_1000BBF50(v44, type metadata accessor for PreparedSparkline);
  sub_1000BBEF4(v40, &qword_100114B60, type metadata accessor for PreparedSparkline);
  return (v48 & 1) != 0;
}

void sub_1000BBDC8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1000BAAF0(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1000BBE2C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1000BAAF0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000BBE98(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1000BBDC8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1000BBEF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1000BAAF0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000BBF50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000BBFB0()
{
  result = qword_10011A3F0;
  if (!qword_10011A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A3F0);
  }

  return result;
}

uint64_t sub_1000BC004(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1000BAAF0(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1000BC070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000BBFB0();
    v7 = a3(a1, &type metadata for WidgetStock.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000BC0D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000BC130()
{
  result = qword_10011A410;
  if (!qword_10011A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A410);
  }

  return result;
}

unint64_t sub_1000BC188()
{
  result = qword_10011A418;
  if (!qword_10011A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A418);
  }

  return result;
}

unint64_t sub_1000BC1E0()
{
  result = qword_10011A420;
  if (!qword_10011A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A420);
  }

  return result;
}

uint64_t sub_1000BC234(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B636F7473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F7571 && a2 == 0xE500000000000000 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696C6B72617073 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000BC34C()
{
  v1 = v0;
  *(v0 + 16) = 0;
  sub_10000299C();
  v2 = sub_1000DBE60();
  sub_1000029E8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000DDD30;
  v4 = sub_1000DBDF0();
  v5 = sub_1000DB950();
  v7 = v6;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100002AAC();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1000DBDD0();
  sub_1000DA320();

  v8 = [objc_opt_self() defaultCenter];
  v9 = sub_1000DBDF0();
  v14[4] = sub_1000BC504;
  v14[5] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000BC600;
  v14[3] = &unk_10010C658;
  v10 = _Block_copy(v14);
  v11 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v10];
  _Block_release(v10);

  v12 = *(v1 + 16);
  *(v1 + 16) = v11;
  swift_unknownObjectRelease();
  return v1;
}

void sub_1000BC504()
{
  sub_10000299C();
  v0 = sub_1000DBE60();
  sub_1000029E8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000DDD30;
  v2 = sub_1000DBDF0();
  v3 = sub_1000DB950();
  v5 = v4;

  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_100002AAC();
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  sub_1000DBDD0();
  sub_1000DA320();

  v6 = sub_1000DBE60();
  sub_1000DBDD0();
  sub_1000DA320();

  exit(0);
}

uint64_t sub_1000BC600(uint64_t a1)
{
  v2 = sub_1000D8E00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1000D8DF0();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000BC6F4()
{
  v1 = v0;
  sub_10000299C();
  v2 = sub_1000DBE60();
  sub_1000029E8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000DDD30;
  v4 = sub_1000DBDF0();
  v5 = sub_1000DB950();
  v7 = v6;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100002AAC();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1000DBDD0();
  sub_1000DA320();

  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1000BC7D0()
{
  sub_1000BC6F4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000BC828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1000BC890@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000DB310();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000DB330();
  v8 = enum case for Color.RGBColorSpace.sRGB(_:);
  v9 = *(v3 + 104);
  v9(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  v10 = sub_1000DB380();
  v9(v6, v8, v2);
  v11 = sub_1000DB380();
  sub_1000BCAD0();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000E08A0;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;

  sub_1000DB5B0();
  sub_1000DB680();
  sub_1000DB690();
  sub_1000DA840();
  v13 = v16[1];

  *a1 = v7;
  *(a1 + 8) = v13;
  result = *&v17;
  v15 = v18;
  *(a1 + 16) = v17;
  *(a1 + 32) = v15;
  *(a1 + 48) = 0x3FE0000000000000;
  return result;
}

double sub_1000BCA70@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000DB600();
  v4 = v3;
  sub_1000BC890(v9);
  result = v10;
  v7 = v9[1];
  v6 = v9[2];
  v8 = v9[0];
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = result;
  return result;
}

void sub_1000BCAD0()
{
  if (!qword_100117000)
  {
    v0 = sub_1000DC330();
    if (!v1)
    {
      atomic_store(v0, &qword_100117000);
    }
  }
}

void sub_1000BCB68()
{
  if (!qword_10011A568)
  {
    sub_1000BCBFC();
    sub_1000BCD14(qword_10011A588, sub_1000BCBFC);
    v0 = sub_1000DB550();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A568);
    }
  }
}

void sub_1000BCBFC()
{
  if (!qword_10011A570)
  {
    sub_1000BCC54();
    v0 = sub_1000DB650();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A570);
    }
  }
}

void sub_1000BCC54()
{
  if (!qword_10011A578)
  {
    sub_1000BCCBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011A578);
    }
  }
}

void sub_1000BCCBC()
{
  if (!qword_10011A580)
  {
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A580);
    }
  }
}

uint64_t sub_1000BCD14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000BCD64(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1000DBBB0();
  swift_getWitnessTable();
  result = sub_1000DA220();
  if (v3 <= 0x3F)
  {
    result = sub_1000BD068();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BCE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  sub_1000DBBB0();
  swift_getWitnessTable();
  v7 = sub_1000DA220();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 72));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000BCF58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  sub_1000DBBB0();
  swift_getWitnessTable();
  result = sub_1000DA220();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 72)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1000BD068()
{
  result = qword_10011A610;
  if (!qword_10011A610)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10011A610);
  }

  return result;
}

uint64_t sub_1000BD0B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BD0FC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1000DB660();
}

uint64_t sub_1000BD2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[0] = a6;
  v21[1] = a7;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(a1);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000DA740();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  (*(v13 + 16))(v16, v7, a3, v19);
  sub_1000DA750();
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = v21[0];
  v21[8] = a1;
  v21[9] = a2;
  swift_getWitnessTable();
  return sub_1000DA810();
}

uint64_t sub_1000BD474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DAD80();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return sub_1000DAD90();
}

uint64_t sub_1000BD56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000DAD80();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return sub_1000DAD90();
}

uint64_t sub_1000BD664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000DAE60();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  __chkstk_darwin(v6);
  v56 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BFFC8();
  v9 = *(a1 + 32);
  v54 = *(a1 + 16);
  v55 = v9;
  type metadata accessor for GridCell();
  v10 = sub_1000DBBB0();
  v11 = *(a1 + 24);
  sub_1000893D0();
  sub_1000DA930();
  sub_1000DAEB0();
  sub_1000DA930();
  v53 = v11;
  sub_1000DA930();
  sub_1000DADA0();
  sub_1000C0124(255);
  swift_getTupleTypeMetadata2();
  sub_1000DB650();
  swift_getWitnessTable();
  v12 = sub_1000DB540();
  WitnessTable = swift_getWitnessTable();
  v62 = v10;
  v63 = &type metadata for String;
  v64 = v12;
  v65 = WitnessTable;
  v66 = &protocol witness table for String;
  sub_1000DB5A0();
  sub_1000C05BC(&qword_10011A658, sub_1000BFFC8);
  v14 = sub_1000DA800();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  __chkstk_darwin(v14);
  v50 = v49 - v16;
  v17 = sub_1000C05BC(&qword_10011A660, sub_1000BFFC8);
  v61 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v59 = v17;
  v60 = v18;
  v19 = swift_getWitnessTable();
  v52 = v14;
  v62 = v14;
  v63 = v19;
  v49[1] = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  v22 = v21[8];
  __chkstk_darwin(OpaqueTypeMetadata2);
  v24 = v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v49 - v26;
  v28 = *(v3 + *(a1 + 60));
  v29 = *(v3 + *(a1 + 56));
  result = sub_1000DAD00();
  v31 = v3;
  v32 = *(v3 + *(a1 + 52));
  if (v32 < 0)
  {
    __break(1u);
  }

  else
  {
    v49[0] = a2;
    if (v32)
    {
      v33 = result;
      v34 = sub_1000DBB80();
      v35 = v34;
      *(v34 + 16) = v32;
      v36 = 32;
      do
      {
        v37 = v34 + v36;
        *v37 = v33;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
        v36 += 24;
        --v32;
      }

      while (v32);
    }

    else
    {
      v35 = _swiftEmptyArrayStorage;
    }

    v38 = *(a1 + 40);
    v39 = swift_allocObject();
    v40 = v53;
    v39[2] = v54;
    v39[3] = v40;
    v39[4] = v55;
    v39[5] = v38;
    v39[6] = v28;
    v39[7] = v29;
    v39[8] = v35;
    __chkstk_darwin(v39);
    v49[-6] = v41;
    v49[-5] = v42;
    v49[-4] = v43;
    v49[-3] = v38;
    v49[-2] = v31;
    v44 = v50;
    sub_1000BDC48(sub_1000C0290, &v49[-8], v50);

    v45 = v56;
    sub_1000DAE50();
    v46 = v52;
    sub_1000DB2A0();
    (*(v57 + 8))(v45, v58);
    (*(v51 + 8))(v44, v46);
    v47 = v21[2];
    v47(v27, v24, OpaqueTypeMetadata2);
    v48 = v21[1];
    v48(v24, OpaqueTypeMetadata2);
    v47(v49[0], v27, OpaqueTypeMetadata2);
    return (v48)(v27, OpaqueTypeMetadata2);
  }

  return result;
}

uint64_t sub_1000BDC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000C005C();
  v7 = v6;
  type metadata accessor for GridCell();
  sub_1000DBBB0();
  sub_1000893D0();
  sub_1000DA930();
  sub_1000DAEB0();
  sub_1000DA930();
  sub_1000DA930();
  sub_1000DADA0();
  sub_1000C0124(255);
  swift_getTupleTypeMetadata2();
  sub_1000DB650();
  swift_getWitnessTable();
  sub_1000DB540();
  swift_getWitnessTable();
  v8 = sub_1000DB5A0();
  v9 = sub_1000C05BC(&qword_10011A630, sub_1000C005C);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  return sub_1000BD2CC(a1, a2, v7, v8, v9, WitnessTable, a3);
}

uint64_t sub_1000BDE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v47 = a5;
  v49 = a6;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v10 = type metadata accessor for TickerGrid();
  v46 = *(v10 - 8);
  v48 = *(v46 + 64);
  __chkstk_darwin(v10);
  v45 = &KeyPath - v11;
  type metadata accessor for GridCell();
  v12 = sub_1000DBBB0();
  sub_1000893D0();
  sub_1000DA930();
  sub_1000DAEB0();
  sub_1000DA930();
  sub_1000DA930();
  sub_1000DADA0();
  sub_1000C0124(255);
  swift_getTupleTypeMetadata2();
  sub_1000DB650();
  swift_getWitnessTable();
  v13 = sub_1000DB540();
  v41 = v13;
  v44 = v12;
  WitnessTable = swift_getWitnessTable();
  v55 = v12;
  v56 = &type metadata for String;
  v57 = v13;
  v58 = WitnessTable;
  v59 = &protocol witness table for String;
  v14 = sub_1000DB5A0();
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  __chkstk_darwin(v14);
  v40 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v42 = &KeyPath - v18;
  v19 = a1;
  v20 = *(a1 + *(v10 + 52));
  v21 = *(a1 + *(v10 + 56));
  sub_1000DBBB0();
  swift_getWitnessTable();
  v22 = sub_1000DA220();
  v23 = swift_getWitnessTable();
  sub_1000BE34C(v20, v21, v22, v23, a4);
  v55 = v24;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v25 = a4;
  v26 = v47;
  v53 = v47;
  KeyPath = swift_getKeyPath();
  v28 = v45;
  v27 = v46;
  (*(v46 + 16))(v45, v19, v10);
  v29 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = a2;
  *(v30 + 3) = a3;
  *(v30 + 4) = v25;
  *(v30 + 5) = v26;
  (*(v27 + 32))(&v30[v29], v28, v10);
  v37 = swift_getWitnessTable();
  v31 = v40;
  sub_1000DB580();
  v54 = v37;
  swift_getWitnessTable();
  v32 = v39;
  v33 = *(v39 + 16);
  v34 = v42;
  v33(v42, v31, v14);
  v35 = *(v32 + 8);
  v35(v31, v14);
  v33(v49, v34, v14);
  return (v35)(v34, v14);
}

void sub_1000BE34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a1;
  v9 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1000DBE80();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v57 = &v45 - v13;
  v14 = type metadata accessor for SpacerOr();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v45 - v16;
  v54 = AssociatedTypeWitness;
  v55 = a5;
  v18 = type metadata accessor for GridCell();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v45 - v20;
  v22 = *(a3 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  v48 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_getAssociatedTypeWitness();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v47 = a4;
  v50 = *(swift_getAssociatedConformanceWitness() + 8);
  v51 = v26;
  v56 = swift_getAssociatedTypeWitness();
  v28 = *(*(v56 - 8) + 64);
  v30 = __chkstk_darwin(v56);
  v58 = &v45 - v31;
  if (v52 < 1 || (v59 = a2 - 1, a2 < 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v46 = v29;
  (*(v22 + 16))(v48, v53, a3, v30);
  v32 = v52 * a2;
  if ((v52 * a2) >> 64 == (v52 * a2) >> 63)
  {
    sub_1000DBD40();
    sub_1000DBA40();
    v60 = sub_1000DBB70();
    sub_1000DBBB0();
    sub_1000DBB50(v32);
    v33 = 0;
    v34 = v56;
    v49 = a2;
    while (!v59)
    {
      swift_getAssociatedConformanceWitness();
      v35 = v33 * a2;
LABEL_13:
      v42 = v57;
      sub_1000DBE90();
      sub_1000C0738(v42, v54, v17);
      v43 = v35 + v59;
      if (__OFADD__(v35, v59))
      {
        goto LABEL_19;
      }

      v40 = __OFSUB__(0, v43);
      v44 = -v43;
      if (v40)
      {
        goto LABEL_20;
      }

      ++v33;
      sub_1000BFF08(v17, a2 == 1, 1, v21, v44);
      sub_1000DBBA0();
      if (v33 == v52)
      {
        (*(v46 + 8))(v58, v34);
        return;
      }
    }

    v35 = v33 * a2;
    if ((v33 * a2) >> 64 != (v33 * a2) >> 63)
    {
      goto LABEL_21;
    }

    v53 = v33;
    swift_getAssociatedConformanceWitness();
    v36 = 0;
    v37 = v54;
    while (1)
    {
      v38 = v57;
      sub_1000DBE90();
      sub_1000C0738(v38, v37, v17);
      v39 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        break;
      }

      v40 = __OFSUB__(0, v39);
      v41 = -v39;
      if (v40)
      {
        goto LABEL_18;
      }

      sub_1000BFF08(v17, v36 == 0, 0, v21, v41);
      sub_1000DBBA0();
      if (v59 == ++v36)
      {
        a2 = v49;
        v34 = v56;
        v33 = v53;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1000BE89C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000D90C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a1 - 8) + 64);
  v17 = __chkstk_darwin(v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v2, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v19, v4);
    v21 = sub_1000D90A0();
    (*(v5 + 8))(v8, v4);
    return v21;
  }

  else
  {
    (*(v10 + 32))(v14, v19, v9);
    v23 = *(a1 + 24);
    sub_1000DBF60();
    (*(v10 + 8))(v14, v9);
    return v24;
  }
}

uint64_t sub_1000BEB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v23 = a2;
  v24 = a6;
  v25 = a7;
  sub_1000893D0();
  sub_1000DA930();
  sub_1000DAEB0();
  sub_1000DA930();
  sub_1000DA930();
  sub_1000DADA0();
  sub_1000C0124(255);
  swift_getTupleTypeMetadata2();
  sub_1000DB650();
  swift_getWitnessTable();
  v11 = sub_1000DB540();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v22 - v17;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = v24;
  v30 = a1;
  v31 = v23;
  sub_1000DAD00();
  sub_1000DB530();
  swift_getWitnessTable();
  v19 = v12[2];
  v19(v18, v15, v11);
  v20 = v12[1];
  v20(v15, v11);
  v19(v25, v18, v11);
  return (v20)(v18, v11);
}

uint64_t sub_1000BED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v169 = a6;
  v173 = a2;
  v175 = a1;
  v167 = a7;
  sub_1000C0158(0);
  v164 = v10;
  v163 = *(v10 - 8);
  v11 = *(v163 + 64);
  __chkstk_darwin(v10);
  v147 = (&v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100063768();
  v161 = v13;
  v145 = *(v13 - 8);
  v14 = *(v145 + 64);
  __chkstk_darwin(v13);
  v143 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C01F8(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v146 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v144 = &v141 - v20;
  sub_1000C0124(0);
  v162 = v21;
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v166 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v165 = &v141 - v25;
  v26 = sub_1000DA930();
  v148 = *(v26 - 8);
  v27 = *(v148 + 64);
  __chkstk_darwin(v26);
  v155 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v154 = &v141 - v30;
  v156 = *(a4 - 8);
  v31 = *(v156 + 64);
  __chkstk_darwin(v32);
  v149 = &v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v141 - v35;
  sub_1000893D0();
  v174 = a4;
  v37 = sub_1000DA930();
  v150 = *(v37 - 8);
  v38 = *(v150 + 64);
  __chkstk_darwin(v37);
  v40 = &v141 - v39;
  sub_1000DAEB0();
  v172 = v37;
  v41 = sub_1000DA930();
  v153 = *(v41 - 8);
  v42 = *(v153 + 64);
  __chkstk_darwin(v41);
  v152 = &v141 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v141 - v45;
  __chkstk_darwin(v47);
  v151 = &v141 - v48;
  WitnessTable = *(a3 - 1);
  v49 = *(WitnessTable + 64);
  __chkstk_darwin(v50);
  v52 = &v141 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v141 - v54;
  v177 = a3;
  v176 = a5;
  v56 = type metadata accessor for SpacerOr();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56);
  v60 = &v141 - v59;
  v170 = v41;
  v171 = v26;
  v160 = sub_1000DADA0();
  v159 = *(v160 - 8);
  v61 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = &v141 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v63);
  v157 = &v141 - v65;
  (*(v57 + 16))(v60, v175, v56, v64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = v148;
    v67 = v177;
    v68 = v174;
    v195 = v177;
    v196 = v174;
    v197 = v176;
    v198 = v169;
    v69 = v173 + *(type metadata accessor for TickerGrid() + 72);
    v71 = *v69;
    v70 = *(v69 + 8);
    sub_1000DBBB0();
    swift_getWitnessTable();
    sub_1000DA220();
    sub_1000DA1F0();
    v72 = v149;
    v71(v52);
    (*(WitnessTable + 8))(v52, v67);
    v73 = v155;
    v74 = v169;
    sub_1000DB2E0();
    (*(v156 + 8))(v72, v68);
    v194[6] = v74;
    v75 = v74;
    v194[7] = &protocol witness table for _OpacityEffect;
    v76 = v171;
    WitnessTable = swift_getWitnessTable();
    v77 = *(v66 + 16);
    v78 = v154;
    v77(v154, v73, v76);
    v79 = *(v66 + 8);
    v79(v73, v76);
    v77(v73, v78, v76);
    v80 = sub_1000C05BC(&qword_100116BE8, sub_1000893D0);
    v194[4] = v74;
    v194[5] = v80;
    v81 = swift_getWitnessTable();
    v82 = sub_1000C05BC(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier);
    v194[2] = v81;
    v194[3] = v82;
    v83 = v170;
    swift_getWitnessTable();
    v84 = v157;
    sub_1000BD56C(v73, v83, v76);
    v79(v73, v76);
    v79(v78, v76);
    v85 = sub_1000D90C0();
    (*(*(v85 - 8) + 8))(v60, v85);
    v86 = v75;
    v87 = v173;
    v88 = v174;
    v89 = v84;
  }

  else
  {
    v90 = *(WitnessTable + 32);
    v91 = v55;
    v92 = v55;
    v142 = v55;
    v93 = v177;
    v90(v92, v60, v177);
    v94 = v174;
    v195 = v93;
    v196 = v174;
    v197 = v176;
    v198 = v169;
    v95 = v169;
    v96 = v173 + *(type metadata accessor for TickerGrid() + 72);
    v97 = *(v96 + 8);
    (*v96)(v91);
    v98 = type metadata accessor for GridCell();
    v99 = v175;
    sub_10005BAB0(0, *(v175 + v98[9]), 0, *(v175 + v98[10]));
    (*(v156 + 8))(v36, v94);
    v100 = *(v99 + v98[11]);
    v101 = sub_1000C05BC(&qword_100116BE8, sub_1000893D0);
    v182 = v95;
    v102 = v95;
    v183 = v101;
    v103 = v172;
    v104 = swift_getWitnessTable();
    v105 = v46;
    sub_1000DB2C0();
    (*(v150 + 8))(v40, v103);
    v106 = sub_1000C05BC(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier);
    v180 = v104;
    v181 = v106;
    v107 = v170;
    v156 = swift_getWitnessTable();
    v108 = v153;
    v109 = *(v153 + 16);
    v110 = v151;
    v109(v151, v105, v107);
    v111 = *(v108 + 8);
    v111(v105, v107);
    v112 = v152;
    v109(v152, v110, v107);
    v178 = v102;
    v179 = &protocol witness table for _OpacityEffect;
    swift_getWitnessTable();
    v113 = v157;
    sub_1000BD474(v112, v107);
    v111(v112, v107);
    v111(v110, v107);
    (*(WitnessTable + 8))(v142, v177);
    v86 = v102;
    v87 = v173;
    v88 = v174;
    v89 = v113;
  }

  v114 = type metadata accessor for GridCell();
  v115 = v165;
  v116 = v161;
  if ((*(v175 + *(v114 + 40)) & 1) != 0 || (v195 = v177, v196 = v88, v197 = v176, v198 = v86, v117 = type metadata accessor for TickerGrid(), *(v87 + *(v117 + 68)) != 1))
  {
    v124 = 1;
  }

  else
  {
    if (*(v87 + *(v117 + 64)) == 1)
    {
      v118 = v143;
      v119 = v117;
      sub_1000DB560();
      LOBYTE(v119) = *(v87 + *(v119 + 52)) == 1;
      KeyPath = swift_getKeyPath();
      v121 = v118 + *(v116 + 36);
      *v121 = v119;
      *(v121 + 8) = KeyPath;
      *(v121 + 16) = 0;
      *(v121 + 24) = 0;
      *(v121 + 32) = 0;
      *(v121 + 40) = 0;
      v122 = v144;
      sub_1000C06D0(v118, v144, sub_100063768);
      v123 = 0;
    }

    else
    {
      v123 = 1;
      v122 = v144;
    }

    (*(v145 + 56))(v122, v123, 1, v116);
    v125 = v146;
    sub_1000C0604(v122, v146, sub_1000C01F8);
    v126 = v147;
    *v147 = 0;
    *(v126 + 8) = 0;
    sub_1000C018C();
    v128 = v127;
    sub_1000C0604(v125, v126 + *(v127 + 48), sub_1000C01F8);
    v129 = v126 + *(v128 + 64);
    *v129 = 0;
    *(v129 + 8) = 0;
    sub_1000C066C(v122, sub_1000C01F8);
    sub_1000C066C(v125, sub_1000C01F8);
    sub_1000C06D0(v126, v115, sub_1000C0158);
    v124 = 0;
  }

  (*(v163 + 56))(v115, v124, 1, v164);
  v130 = v159;
  v131 = v158;
  v132 = v160;
  (*(v159 + 16))(v158, v89, v160);
  v195 = v131;
  v133 = v166;
  sub_1000C0604(v115, v166, sub_1000C0124);
  v196 = v133;
  v194[0] = v132;
  v194[1] = v162;
  v134 = sub_1000C05BC(&qword_100116BE8, sub_1000893D0);
  v190 = v86;
  v191 = v134;
  v135 = swift_getWitnessTable();
  v136 = sub_1000C05BC(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier);
  v188 = v135;
  v189 = v136;
  v137 = swift_getWitnessTable();
  v186 = v86;
  v187 = &protocol witness table for _OpacityEffect;
  v138 = swift_getWitnessTable();
  v184 = v137;
  v185 = v138;
  v192 = swift_getWitnessTable();
  v193 = sub_1000C0514();
  sub_1000BD0FC(&v195, 2uLL, v194);
  sub_1000C066C(v115, sub_1000C0124);
  v139 = *(v130 + 8);
  v139(v89, v132);
  sub_1000C066C(v133, sub_1000C0124);
  return (v139)(v131, v132);
}

int *sub_1000BFF08@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for SpacerOr();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  result = type metadata accessor for GridCell();
  *(a4 + result[9]) = a2;
  *(a4 + result[10]) = a3;
  *(a4 + result[11]) = a5;
  return result;
}

void sub_1000BFFC8()
{
  if (!qword_10011A618)
  {
    sub_1000C005C();
    sub_1000C05BC(&qword_10011A630, sub_1000C005C);
    v0 = sub_1000DA740();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A618);
    }
  }
}

void sub_1000C005C()
{
  if (!qword_10011A620)
  {
    sub_1000C00B8();
    v0 = type metadata accessor for EqualWidthColumnsLayout();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A620);
    }
  }
}

unint64_t sub_1000C00B8()
{
  result = qword_10011A628;
  if (!qword_10011A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A628);
  }

  return result;
}

void sub_1000C018C()
{
  if (!qword_10011A648)
  {
    sub_1000C01F8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10011A648);
    }
  }
}

void sub_1000C022C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000C02A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 32);
  v6 = *(v4 - 16);
  v7 = type metadata accessor for SpacerOr();
  result = sub_1000BE89C(v7);
  *a3 = result;
  a3[1] = v9;
  return result;
}

__n128 sub_1000C02EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1000C02F8()
{
  v7 = *(v0 + 16);
  v8 = *(v0 + 32);
  v1 = (type metadata accessor for TickerGrid() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  sub_1000DBBB0();
  swift_getWitnessTable();
  v4 = sub_1000DA220();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v3 + v1[20] + 8);

  return swift_deallocObject();
}

uint64_t sub_1000C0430@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for TickerGrid() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1000BEB10(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_1000C0514()
{
  result = qword_10011A668;
  if (!qword_10011A668)
  {
    sub_1000C0124(255);
    sub_1000C05BC(qword_10011A670, sub_1000C0158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A668);
  }

  return result;
}

uint64_t sub_1000C05BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C0604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C066C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C06D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C0738@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1000DBE80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v14);
  v17 = (*(v11 + 48))(v10, 1, a2);
  v18 = *(v7 + 8);
  if (v17 == 1)
  {
    v18(v10, v6);
    sub_1000D90B0();
    v18(a1, v6);
  }

  else
  {
    v18(a1, v6);
    v19 = *(v11 + 32);
    v19(v16, v10, a2);
    v19(a3, v16, a2);
  }

  type metadata accessor for SpacerOr();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000C0958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BE89C(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000C0980()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1000C09B8@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  v9();
  v12 = v4[2];
  v12(v11, v8, a1);
  v13 = v4[1];
  v13(v8, a1);
  v12(a2, v11, a1);
  return (v13)(v11, a1);
}

uint64_t sub_1000C0AF8@<X0>(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  return sub_1000C09B8(v1[3], a1);
}

void sub_1000C0B08(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1000C0EB0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1000C0B80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(sub_1000D90C0() - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_1000C0CD8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(sub_1000D90C0() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1000C0EB0()
{
  if (!qword_10011A6F8[0])
  {
    v0 = sub_1000D90C0();
    if (!v1)
    {
      atomic_store(v0, qword_10011A6F8);
    }
  }
}

uint64_t sub_1000C0EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for SpacerOr();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C0F7C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(sub_1000D90C0() - 8) + 64);
  if (v6 <= v5)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v7 = ((v6 + 10) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a2 - 253;
  v9 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v8 < 0x100)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (v11 == 4)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else if (v11 == 2)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
LABEL_23:
      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  v14 = v12 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return (v9 | v14) + 255;
}

void sub_1000C1084(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(sub_1000D90C0() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = ((v8 + 10) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 >= 0xFF)
  {
    v10 = a3 - 253;
    if (((v8 + 10) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = a2 - 254;
    if (a2 > 0xFE)
    {
      goto LABEL_13;
    }

LABEL_22:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      }

      *(a1 + v9) = 0;
    }

    else if (v12)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      *(a1 + v8) = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  v12 = 0;
  v13 = a2 - 254;
  if (a2 <= 0xFE)
  {
    goto LABEL_22;
  }

LABEL_13:
  if (((v8 + 10) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((v8 + 10) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    bzero(a1, ((v8 + 10) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = a2 - 255;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(a1 + v9) = v14;
    }

    else
    {
      *(a1 + v9) = v14;
    }
  }

  else if (v12)
  {
    *(a1 + v9) = v14;
  }
}

uint64_t sub_1000C11CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1000BFFC8();
  type metadata accessor for GridCell();
  sub_1000DBBB0();
  sub_1000893D0();
  sub_1000DA930();
  sub_1000DAEB0();
  sub_1000DA930();
  sub_1000DA930();
  sub_1000DADA0();
  sub_1000C0124(255);
  swift_getTupleTypeMetadata2();
  sub_1000DB650();
  swift_getWitnessTable();
  sub_1000DB540();
  swift_getWitnessTable();
  sub_1000DB5A0();
  sub_1000C05BC(&qword_10011A658, sub_1000BFFC8);
  sub_1000DA800();
  sub_1000C05BC(&qword_10011A660, sub_1000BFFC8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000C1448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1000C2C5C(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000C153C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    sub_1000C2C5C(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for SmallDetailContentView()
{
  result = qword_10011A7D8;
  if (!qword_10011A7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C165C()
{
  sub_1000C300C(319, &unk_1001164D0, &type metadata for EdgeInsets, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000C300C(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000C300C(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000C2C5C(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000C17E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for SmallSparklineView(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v58 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v49 - v7;
  v8 = sub_1000DAE60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C2E2C();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C2F7C(0, &qword_10011A840, sub_1000C2D78);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  *v16 = sub_1000DAD00();
  *(v16 + 1) = 0;
  v16[16] = 1;
  sub_1000C3298(0, &qword_10011A878, sub_1000C2EC0);
  sub_1000C1D48(a1, &v16[*(v25 + 44)]);
  sub_1000DAE40();
  sub_1000C305C(&qword_10011A870, sub_1000C2E2C);
  sub_1000DB2A0();
  (*(v9 + 8))(v12, v8);
  sub_1000C31C0(v16, sub_1000C2E2C);
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 1;
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;
  v28 = &v24[*(v18 + 44)];
  v56 = v24;
  *v28 = KeyPath;
  v28[1] = sub_10002B050;
  v28[2] = v27;
  sub_1000DB600();
  sub_1000DA7A0();
  v54 = v63;
  v55 = v61;
  v52 = v66;
  v53 = v65;
  v69 = 1;
  v68 = v62;
  v67 = v64;
  v29 = type metadata accessor for SmallDetailContentView();
  v30 = v60;
  sub_100024964(a1 + *(v29 + 40), v60);
  v31 = a1[11];
  v32 = a1[12];
  v33 = a1[13];
  v50 = a1[14];
  v51 = v31;
  v49 = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 40) = 1;
  v35 = v21;
  v57 = v21;
  sub_1000C3140(v24, v21);
  LOBYTE(v24) = v69;
  LOBYTE(v21) = v68;
  LOBYTE(a1) = v67;
  v36 = v30;
  v37 = v58;
  sub_1000C3428(v36, v58, type metadata accessor for SmallSparklineView);
  v38 = v59;
  sub_1000C3140(v35, v59);
  sub_1000C2CC0();
  v40 = v39;
  v41 = v38 + *(v39 + 48);
  *v41 = 0;
  *(v41 + 8) = v24;
  v42 = v54;
  *(v41 + 16) = v55;
  *(v41 + 24) = v21;
  *(v41 + 32) = v42;
  *(v41 + 40) = a1;
  v43 = v52;
  *(v41 + 48) = v53;
  *(v41 + 56) = v43;
  sub_1000C3428(v37, v38 + *(v39 + 64), type metadata accessor for SmallSparklineView);
  v44 = v38 + *(v40 + 80);
  *v44 = 0;
  *(v44 + 8) = 0;
  v45 = (v38 + *(v40 + 96));
  v47 = v50;
  v46 = v51;
  *v45 = v51;
  v45[1] = v32;
  v45[2] = v33;
  v45[3] = v47;
  v45[4] = v49;
  v45[5] = sub_10002B5D4;
  v45[6] = v34;
  sub_10002B054(v46, v32, v33, v47);
  sub_10002B054(v46, v32, v33, v47);

  sub_1000C31C0(v60, type metadata accessor for SmallSparklineView);
  sub_1000C3220(v56);
  sub_10002B52C(v46, v32, v33, v47);

  sub_1000C31C0(v37, type metadata accessor for SmallSparklineView);
  return sub_1000C3220(v57);
}

uint64_t sub_1000C1D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_10006BAA0(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  sub_10006B808(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  *v18 = sub_1000DAC50();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_1000C3298(0, &qword_100117C00, sub_10006B8F8);
  sub_1000C2104(a1, &v18[*(v19 + 44)]);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 1;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  v22 = &v18[*(v12 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_10002B5D4;
  v22[2] = v21;
  sub_1000DB600();
  sub_1000DA7A0();
  v37 = v42;
  v38 = v40;
  v35 = v45;
  v36 = v44;
  v48 = 1;
  v47 = v41;
  v46 = v43;
  *v10 = sub_1000DAC50();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1000C3298(0, &qword_100117C08, sub_10006BB8C);
  sub_1000C2628(a1, &v10[*(v23 + 44)]);
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = &v10[*(v4 + 44)];
  *v26 = v24;
  v26[1] = sub_10002B5D4;
  v26[2] = v25;
  sub_1000C3428(v18, v15, sub_10006B808);
  v27 = v48;
  v28 = v47;
  LOBYTE(v12) = v46;
  sub_1000C3428(v10, v7, sub_10006BAA0);
  v29 = v39;
  sub_1000C3428(v15, v39, sub_10006B808);
  sub_1000C2EF4();
  v31 = v29 + *(v30 + 48);
  *v31 = 0;
  *(v31 + 8) = v27;
  v32 = v37;
  *(v31 + 16) = v38;
  *(v31 + 24) = v28;
  *(v31 + 32) = v32;
  *(v31 + 40) = v12;
  v33 = v35;
  *(v31 + 48) = v36;
  *(v31 + 56) = v33;
  sub_1000C3428(v7, v29 + *(v30 + 64), sub_10006BAA0);
  sub_1000C31C0(v10, sub_10006BAA0);
  sub_1000C31C0(v18, sub_10006B808);
  sub_1000C31C0(v7, sub_10006BAA0);
  return sub_1000C31C0(v15, sub_10006B808);
}

uint64_t sub_1000C2104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v45 = type metadata accessor for PriceChangeView();
  v3 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10006BA6C(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v42 - v10;
  v11 = type metadata accessor for SymbolTrendView();
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006B9C4(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v42 = &v42 - v19;
  v20 = *(a1 + 120);
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v24 = *(a1 + 56);
  v23 = *(a1 + 64);
  KeyPath = swift_getKeyPath();
  *v14 = v20;
  *(v14 + 1) = v21;
  *(v14 + 2) = v22;
  *(v14 + 3) = v24;
  *(v14 + 4) = v23;
  v26 = v11[6];
  *&v14[v26] = swift_getKeyPath();
  sub_1000C2C5C(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v27 = v11[7];
  *&v14[v27] = swift_getKeyPath();
  sub_1000C2C5C(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v28 = &v14[v11[8]];
  *v28 = KeyPath;
  v28[8] = 0;
  sub_1000C305C(&qword_100117C38, type metadata accessor for SymbolTrendView);

  v29 = v42;
  sub_1000DB2C0();
  sub_1000C31C0(v14, type metadata accessor for SymbolTrendView);
  v49 = *(a1 + 128);
  v30 = *(a1 + 152);
  v50 = *(a1 + 144);
  v48[0] = *(a1 + 160);
  *(v48 + 9) = *(a1 + 169);
  *v5 = swift_getKeyPath();
  sub_1000C2C5C(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v31 = v45;
  v32 = v5 + *(v45 + 20);
  *v32 = v49;
  *(v32 + 2) = v50;
  *(v32 + 3) = v30;
  *(v32 + 2) = v48[0];
  *(v32 + 41) = *(v48 + 9);
  *(v5 + *(v31 + 24)) = v20;
  sub_1000C305C(&qword_100117C28, type metadata accessor for PriceChangeView);

  v33 = v44;
  sub_1000DB2C0();
  sub_1000C31C0(v5, type metadata accessor for PriceChangeView);
  v34 = v29;
  v35 = v29;
  v36 = v43;
  sub_1000C3428(v35, v43, sub_10006B9C4);
  v37 = v46;
  sub_1000C3428(v33, v46, sub_10006BA6C);
  v38 = v47;
  sub_1000C3428(v36, v47, sub_10006B9C4);
  sub_10006B990(0);
  v40 = v38 + *(v39 + 48);
  *v40 = 0x4020000000000000;
  *(v40 + 8) = 0;
  sub_1000C3428(v37, v38 + *(v39 + 64), sub_10006BA6C);
  sub_1000C31C0(v33, sub_10006BA6C);
  sub_1000C31C0(v34, sub_10006B9C4);
  sub_1000C31C0(v37, sub_10006BA6C);
  return sub_1000C31C0(v36, sub_10006B9C4);
}

uint64_t sub_1000C2628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10006BD0C(0);
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006BCD8(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_10006BC78();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v33[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v33[-v21];
  v23 = *(a1 + 80);
  *v33 = *(a1 + 72);
  *&v33[8] = v23;
  sub_10006BEA0();
  sub_1000DB2C0();
  v34 = *(a1 + 128);
  v24 = *(a1 + 152);
  v35 = *(a1 + 144);
  *v33 = *(a1 + 160);
  *&v33[9] = *(a1 + 169);
  v25 = *(a1 + 120);
  *v8 = swift_getKeyPath();
  sub_1000C2C5C(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for PriceChangeView();
  v27 = v8 + *(v26 + 20);
  *v27 = v34;
  *(v27 + 2) = v35;
  *(v27 + 3) = v24;
  *(v27 + 2) = *v33;
  *(v27 + 41) = *&v33[9];
  *(v8 + *(v26 + 24)) = v25;
  KeyPath = swift_getKeyPath();
  v29 = (v8 + *(v5 + 36));
  *v29 = KeyPath;
  v29[1] = sub_1000C29B4;
  v29[2] = 0;
  sub_10006BFD4();

  sub_1000DB2C0();
  sub_1000C31C0(v8, sub_10006BD0C);
  sub_1000C3428(v22, v19, sub_10006BC78);
  sub_1000C3428(v15, v12, sub_10006BCD8);
  sub_1000C3428(v19, a2, sub_10006BC78);
  sub_10006BBC0(0);
  v31 = a2 + *(v30 + 48);
  *v31 = 0x4020000000000000;
  *(v31 + 8) = 0;
  sub_1000C3428(v12, a2 + *(v30 + 64), sub_10006BCD8);
  sub_1000C31C0(v15, sub_10006BCD8);
  sub_1000C31C0(v22, sub_10006BC78);
  sub_1000C31C0(v12, sub_10006BCD8);
  return sub_1000C31C0(v19, sub_10006BC78);
}

uint64_t sub_1000C29B4(uint64_t a1)
{
  v2 = sub_1000D9690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v17 - v9;
  (*(v3 + 32))(&v17 - v9, a1, v2, v8);
  (*(v3 + 16))(v6, v10, v2);
  v11 = (*(v3 + 88))(v6, v2);
  if (v11 == enum case for PriceChangeDisplay.currency(_:))
  {
    (*(v3 + 8))(v10, v2);
    v12 = enum case for PriceChangeDisplay.percentage(_:);
    return (*(v3 + 104))(a1, v12, v2);
  }

  v13 = enum case for PriceChangeDisplay.percentage(_:);
  if (v11 == enum case for PriceChangeDisplay.percentage(_:))
  {
    v14 = v10;
    v15 = enum case for PriceChangeDisplay.currency(_:);
    (*(v3 + 8))(v14, v2);
    v12 = v15;
    return (*(v3 + 104))(a1, v12, v2);
  }

  if (v11 == enum case for PriceChangeDisplay.marketCapitalization(_:))
  {
    (*(v3 + 8))(v10, v2);
    v12 = v13;
    return (*(v3 + 104))(a1, v12, v2);
  }

  result = sub_1000DC350();
  __break(1u);
  return result;
}

uint64_t sub_1000C2BB4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000DAD20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1000C3298(0, &qword_10011A828, sub_1000C2C28);
  return sub_1000C17E8(v1, a1 + *(v3 + 44));
}

void sub_1000C2C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000C2CC0()
{
  if (!qword_10011A838)
  {
    sub_1000C2F7C(255, &qword_10011A840, sub_1000C2D78);
    sub_100099470();
    type metadata accessor for SmallSparklineView(255);
    sub_1000C30A4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_10011A838);
    }
  }
}

void sub_1000C2D78()
{
  if (!qword_10011A848)
  {
    sub_1000C2E2C();
    sub_1000C305C(&qword_10011A870, sub_1000C2E2C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011A848);
    }
  }
}

void sub_1000C2E2C()
{
  if (!qword_10011A850)
  {
    sub_1000C2EC0(255);
    sub_1000C305C(&qword_10011A868, sub_1000C2EC0);
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A850);
    }
  }
}

void sub_1000C2EF4()
{
  if (!qword_10011A860)
  {
    sub_10006B808(255);
    sub_100099470();
    sub_10006BAA0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10011A860);
    }
  }
}

void sub_1000C2F7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000C300C(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000C300C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000C305C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000C30A4()
{
  if (!qword_100115788)
  {
    sub_1000C300C(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115788);
    }
  }
}

uint64_t sub_1000C3140(uint64_t a1, uint64_t a2)
{
  sub_1000C2F7C(0, &qword_10011A840, sub_1000C2D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C31C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C3220(uint64_t a1)
{
  sub_1000C2F7C(0, &qword_10011A840, sub_1000C2D78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000C3298(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DA800();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000C335C(uint64_t a1)
{
  v2 = sub_1000DB6F0();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1000DABC0();
}

uint64_t sub_1000C3428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000C34D8()
{
  if (!qword_10011A888)
  {
    sub_1000C2C28(255);
    sub_1000C305C(&qword_10011A890, sub_1000C2C28);
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A888);
    }
  }
}

uint64_t sub_1000C3578(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[41])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000C35CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1000C3648(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v18 = *(v2 + 8);
  v19 = *(v2 + 24);
  v20 = v2[40];
  v6 = sub_1000DAF40();
  if (v5 == 1)
  {
    sub_10004C554();
  }

  sub_1000DA690();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1000C3740();
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  sub_1000C37F0();
  v17 = a2 + *(v16 + 36);
  *v17 = v6;
  *(v17 + 8) = v8;
  *(v17 + 16) = v10;
  *(v17 + 24) = v12;
  *(v17 + 32) = v14;
  *(v17 + 40) = 0;
}

void sub_1000C3740()
{
  if (!qword_10011A898)
  {
    sub_1000C379C();
    v0 = sub_1000DADC0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A898);
    }
  }
}

unint64_t sub_1000C379C()
{
  result = qword_10011A8A0;
  if (!qword_10011A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A8A0);
  }

  return result;
}

void sub_1000C37F0()
{
  if (!qword_10011A8A8)
  {
    sub_1000C3740();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A8A8);
    }
  }
}

unint64_t sub_1000C3854()
{
  result = qword_10011A8B0;
  if (!qword_10011A8B0)
  {
    sub_1000C37F0();
    sub_1000C38D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A8B0);
  }

  return result;
}

unint64_t sub_1000C38D4()
{
  result = qword_10011A8B8;
  if (!qword_10011A8B8)
  {
    sub_1000C3740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A8B8);
  }

  return result;
}

uint64_t sub_1000C392C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C3944(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C3998(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1000C39F8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000C3A2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000C3A88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000C3B04@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a4;
  sub_1000C4714(0, &qword_10011A8F8, &type metadata accessor for _ConditionalContent.Storage);
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v73[-v10];
  sub_1000C4798(0, &qword_10011A900, &type metadata accessor for _ConditionalContent.Storage);
  v81 = v12;
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v73[-v14];
  sub_1000C4798(0, &qword_10011A8D8, &type metadata accessor for _ConditionalContent);
  v83 = v16;
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v82 = &v73[-v18];
  sub_1000C4564();
  v20 = v19;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = &v73[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v73[-v25];
  __chkstk_darwin(v27);
  v29 = &v73[-v28];
  if (a2)
  {
    v80 = v8;
    if (a2 == 1)
    {
      sub_1000DACD0();
      v30 = sub_1000DB160();
      v32 = v31;
      v34 = v33;
      LODWORD(aBlock) = sub_1000DADE0();
      v35 = sub_1000DB0E0();
      v77 = v36;
      v78 = v35;
      v38 = v37;
      v79 = v39;
      sub_100017794(v30, v32, v34 & 1);

      v40 = &v23[*(v20 + 36)];
      sub_1000C45C4(0);
      v42 = *(v41 + 28);
      v43 = enum case for Text.Case.uppercase(_:);
      v44 = sub_1000DB0F0();
      v45 = *(v44 - 8);
      (*(v45 + 104))(v40 + v42, v43, v44);
      (*(v45 + 56))(v40 + v42, 0, 1, v44);
      *v40 = swift_getKeyPath();
      v46 = v77;
      *v23 = v78;
      *(v23 + 1) = v46;
      v23[16] = v38 & 1;
      *(v23 + 3) = v79;
      sub_1000C4BC4(v23, v15, sub_1000C4564);
      swift_storeEnumTagMultiPayload();
      sub_1000C4890();
      v47 = v82;
      sub_1000DAD90();
      sub_1000C49F0(v47, v11);
      swift_storeEnumTagMultiPayload();
      sub_1000C47FC();
      sub_1000DAD90();
      sub_1000C4A70(v47);
      v48 = v23;
    }

    else
    {
      v78 = v15;
      aBlock = a1;
      v86 = a2;
      sub_100017740();

      v53 = sub_1000DB170();
      v55 = v54;
      v57 = v56;
      v79 = v58;
      v59 = a3;
      if (!a3)
      {
        v77 = objc_allocWithZone(UIColor);
        v89 = sub_1000C43EC;
        v90 = 0;
        aBlock = _NSConcreteStackBlock;
        v86 = 1107296256;
        v87 = sub_10000F09C;
        v88 = &unk_10010CA40;
        v60 = _Block_copy(&aBlock);
        [v77 initWithDynamicProvider:v60];
        _Block_release(v60);

        v59 = sub_1000DB300();
      }

      aBlock = v59;

      v61 = sub_1000DB0E0();
      v75 = v62;
      v76 = v61;
      v74 = v63;
      v77 = v64;
      sub_100017794(v53, v55, v57 & 1);

      v65 = &v26[*(v20 + 36)];
      sub_1000C45C4(0);
      v67 = *(v66 + 28);
      v68 = enum case for Text.Case.uppercase(_:);
      v69 = sub_1000DB0F0();
      v70 = *(v69 - 8);
      (*(v70 + 104))(v65 + v67, v68, v69);
      (*(v70 + 56))(v65 + v67, 0, 1, v69);
      *v65 = swift_getKeyPath();
      v71 = v75;
      *v26 = v76;
      *(v26 + 1) = v71;
      v26[16] = v74 & 1;
      *(v26 + 3) = v77;
      sub_1000C4B60(v26, v29);
      sub_1000C4BC4(v29, v78, sub_1000C4564);
      swift_storeEnumTagMultiPayload();
      sub_1000C4890();
      v72 = v82;
      sub_1000DAD90();
      sub_1000C49F0(v72, v11);
      swift_storeEnumTagMultiPayload();
      sub_1000C47FC();
      sub_1000DAD90();

      sub_1000C4A70(v72);
      v48 = v29;
    }

    return sub_1000C4AE8(v48, sub_1000C4564);
  }

  else
  {
    LODWORD(aBlock) = sub_1000DADE0();
    *v11 = sub_1000DB0E0();
    *(v11 + 1) = v49;
    v11[16] = v50 & 1;
    *(v11 + 3) = v51;
    swift_storeEnumTagMultiPayload();
    sub_1000C47FC();
    return sub_1000DAD90();
  }
}

void sub_1000C42CC(uint64_t a1@<X8>)
{
  sub_1000A52A8(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C3B04(*v1, *(v1 + 8), *(v1 + 16), a1);
  sub_1000DAFB0();
  v7 = sub_1000DAFA0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_1000DB000();
  sub_1000C4AE8(v6, sub_1000A52A8);
  KeyPath = swift_getKeyPath();
  sub_1000C4488();
  v11 = (a1 + *(v10 + 36));
  *v11 = KeyPath;
  v11[1] = v8;
}

id sub_1000C43EC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  if (v1 == 2)
  {
    v3 = 0.764705882;
    v4 = 0.737254902;
  }

  else
  {
    v3 = 0.235294118;
    v4 = 0.262745098;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:0.6];
}

void sub_1000C4488()
{
  if (!qword_10011A8C0)
  {
    sub_1000C44F0();
    sub_1000C462C(255);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A8C0);
    }
  }
}

void sub_1000C44F0()
{
  if (!qword_10011A8C8)
  {
    sub_1000C4714(255, &qword_10011A8D0, &type metadata accessor for _ConditionalContent);
    v0 = sub_1000DB3A0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A8C8);
    }
  }
}

void sub_1000C4564()
{
  if (!qword_10011A8E0)
  {
    sub_1000C45C4(255);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A8E0);
    }
  }
}

void sub_1000C4660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000C46C4()
{
  if (!qword_1001158F0)
  {
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_1001158F0);
    }
  }
}

void sub_1000C4714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    sub_1000C4798(255, &qword_10011A8D8, &type metadata accessor for _ConditionalContent);
    v7 = a3(a1, v6, &type metadata for Text);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1000C4798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1000C4564();
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000C47FC()
{
  result = qword_10011A908;
  if (!qword_10011A908)
  {
    sub_1000C4798(255, &qword_10011A8D8, &type metadata accessor for _ConditionalContent);
    sub_1000C4890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A908);
  }

  return result;
}

unint64_t sub_1000C4890()
{
  result = qword_10011A910;
  if (!qword_10011A910)
  {
    sub_1000C4564();
    sub_1000C4DE0(&qword_10011A918, sub_1000C45C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A910);
  }

  return result;
}

uint64_t sub_1000C4950(uint64_t a1)
{
  sub_1000C45F8(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000C4BC4(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1000C45F8);
  return sub_1000DAB80();
}

uint64_t sub_1000C49F0(uint64_t a1, uint64_t a2)
{
  sub_1000C4798(0, &qword_10011A8D8, &type metadata accessor for _ConditionalContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C4A70(uint64_t a1)
{
  sub_1000C4798(0, &qword_10011A8D8, &type metadata accessor for _ConditionalContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C4AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C4B48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C4B60(uint64_t a1, uint64_t a2)
{
  sub_1000C4564();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C4BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000C4C30()
{
  result = qword_10011A920;
  if (!qword_10011A920)
  {
    sub_1000C4488();
    sub_1000C4CCC();
    sub_1000C4DE0(&qword_1001159C8, sub_1000C462C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A920);
  }

  return result;
}

unint64_t sub_1000C4CCC()
{
  result = qword_10011A928;
  if (!qword_10011A928)
  {
    sub_1000C44F0();
    sub_1000C4D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A928);
  }

  return result;
}

unint64_t sub_1000C4D44()
{
  result = qword_10011A930;
  if (!qword_10011A930)
  {
    sub_1000C4714(255, &qword_10011A8D0, &type metadata accessor for _ConditionalContent);
    sub_1000C47FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A930);
  }

  return result;
}

uint64_t sub_1000C4DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C4E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1000C7CD0(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1000C7CD0(0, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1000C4FE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_1000C7CD0(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1000C7CD0(0, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 44);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t type metadata accessor for RowWithChartTicker()
{
  result = qword_10011A990;
  if (!qword_10011A990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C51B0()
{
  sub_1000C7198(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000C7198(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000C7198(319, &qword_100117C18, &type metadata for PriceChange, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000C7CD0(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000C7144(319, &qword_1001141F8, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for SettingProperty);
          if (v4 <= 0x3F)
          {
            sub_1000C7CD0(319, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000C53C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C68CC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  sub_1000C7008(0, &qword_10011AA28, type metadata accessor for RowSparklineView, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  sub_1000C6708();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v39 - v24;
  *v25 = sub_1000DAD10();
  *(v25 + 1) = 0x4000000000000000;
  v25[16] = 0;
  sub_1000C75C0(0, &qword_10011AB08, &qword_10011AA00, sub_1000C67BC);
  sub_1000C5764(a1, &v25[*(v26 + 44)]);
  v27 = type metadata accessor for RowWithChartTicker();
  sub_1000C7A20(a1 + *(v27 + 36), v18, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional, sub_1000C7CD0);
  v28 = sub_1000DAF10();
  sub_1000DA690();
  v29 = &v18[*(v12 + 44)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  *v10 = sub_1000DAD20();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  sub_1000C75C0(0, &qword_10011AB10, &qword_10011AA38, sub_1000C6980);
  sub_1000C5A88(a1, &v10[*(v34 + 44)]);
  sub_1000C763C(v25, v22);
  sub_1000C76A0(v18, v15);
  sub_1000C773C(v10, v7);
  sub_1000C763C(v22, a2);
  sub_1000C6640();
  v36 = v35;
  v37 = a2 + *(v35 + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_1000C76A0(v15, a2 + *(v35 + 64));
  sub_1000C773C(v7, a2 + *(v36 + 80));
  sub_1000C77A0(v10, sub_1000C68CC);
  sub_1000C7800(v18);
  sub_1000C7894(v25, sub_1000C6708);
  sub_1000C77A0(v7, sub_1000C68CC);
  sub_1000C7800(v15);
  return sub_1000C7894(v22, sub_1000C6708);
}

uint64_t sub_1000C5764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_1000C6A28(0, &qword_10011AA10, type metadata accessor for SymbolTrendView);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v33 = *(a1 + 16);
  v13 = v33;
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  KeyPath = swift_getKeyPath();
  *v10 = v11;
  *(v10 + 1) = v12;
  *(v10 + 2) = v13;
  *(v10 + 3) = v14;
  *(v10 + 4) = v15;
  v16 = type metadata accessor for SymbolTrendView();
  v17 = v16[6];
  *&v10[v17] = swift_getKeyPath();
  sub_1000C7CD0(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v18 = v16[7];
  *&v10[v18] = swift_getKeyPath();
  sub_1000C7CD0(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v19 = &v10[v16[8]];
  *v19 = KeyPath;
  v19[8] = 0;
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 1;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  v22 = &v10[*(v4 + 44)];
  *v22 = v20;
  v22[1] = sub_10002B5D4;
  v22[2] = v21;
  v23 = *(a1 + 40);
  v24 = *(a1 + 48);
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 40) = 1;
  sub_1000C7D34(v10, v7, &qword_10011AA10, type metadata accessor for SymbolTrendView);
  v27 = v34;
  sub_1000C7D34(v7, v34, &qword_10011AA10, type metadata accessor for SymbolTrendView);
  sub_1000C67BC();
  v29 = (v27 + *(v28 + 48));
  *v29 = v23;
  v29[1] = v24;
  v29[2] = v25;
  v29[3] = sub_10002B5D4;
  v29[4] = v26;

  swift_bridgeObjectRetain_n();

  sub_1000C7DA0(v10, &qword_10011AA10, type metadata accessor for SymbolTrendView);

  return sub_1000C7DA0(v7, &qword_10011AA10, type metadata accessor for SymbolTrendView);
}

uint64_t sub_1000C5A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = type metadata accessor for PriceChangeView;
  v77 = a2;
  sub_1000C6A28(0, &qword_10011AAE0, type metadata accessor for PriceChangeView);
  v4 = *(v3 - 8);
  v74 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v75 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v64 - v8);
  v10 = sub_1000DA890();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  __chkstk_darwin(v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C6B74();
  v70 = v14;
  v72 = *(v14 - 8);
  v15 = *(v72 + 64);
  __chkstk_darwin(v14);
  v66 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C6A28(0, &qword_10011AA48, sub_1000C6AB8);
  v18 = *(v17 - 8);
  v71 = v17 - 8;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v73 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v69 = &v64 - v22;
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v27 = *(a1 + *(type metadata accessor for RowWithChartTicker() + 40));
  sub_10002B054(v23, v24, v25, v26);
  sub_1000D9DA0();
  *&v80 = v23;
  *(&v80 + 1) = v24;
  *&v81 = v25;
  *(&v81 + 1) = v26;
  *&v103 = 0;
  *(&v102 + 1) = 0;
  BYTE8(v103) = 0;
  v104 = xmmword_1000DFDC0;
  *&v105 = 0xA300000000000000;
  *(&v105 + 1) = 9666786;
  *&v106 = 0xA300000000000000;
  *(&v106 + 1) = 9666786;
  *&v107 = 0xA300000000000000;
  sub_100036068();
  sub_1000C7490(&qword_100115F00, sub_100036068);
  sub_10003619C();
  v28 = sub_1000DB150();
  v30 = v29;
  LOBYTE(v25) = v31;
  v33 = v32;
  v65 = sub_1000DB610();
  v35 = v34;
  v78 = a1;
  sub_1000C78FC(sub_1000C78F4, v28, v30, v25 & 1, v33, &v102);
  v98 = v104;
  v99 = v105;
  v96 = v102;
  v97 = v103;
  v101[2] = v104;
  v101[3] = v105;
  v101[4] = v106;
  v101[1] = v103;
  v100 = v106;
  v101[0] = v102;
  sub_1000C7A20(&v96, &v80, &qword_10011AA88, sub_1000C6E78, &type metadata accessor for TupleView, sub_1000C7CD0);
  sub_1000C7A94(v101);
  v93 = v98;
  v94 = v99;
  v95 = v100;
  v91 = v96;
  v92 = v97;
  sub_100017794(v28, v30, v25 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v80) = 0;
  v37 = swift_getKeyPath();
  LOBYTE(v102) = 0;
  LODWORD(v33) = sub_1000DADD0();
  sub_1000DB080();
  v38 = sub_1000DAF80();

  v39 = swift_getKeyPath();
  *&v80 = v65;
  *(&v80 + 1) = v35;
  v82[1] = v93;
  v83 = v94;
  v84 = v95;
  v81 = v91;
  v82[0] = v92;
  *&v85 = 0;
  *(&v85 + 1) = KeyPath;
  *&v87 = 0;
  v86 = 0uLL;
  BYTE8(v87) = 0;
  *&v88 = v37;
  *(&v88 + 1) = 1;
  LOBYTE(v89) = 0;
  DWORD1(v89) = v33;
  *(&v89 + 1) = v39;
  v90 = v38;
  v41 = v67;
  v40 = v68;
  (*(v67 + 104))(v13, enum case for DynamicTypeSize.large(_:), v68);
  sub_1000C6BF8();
  v43 = v42;
  v44 = sub_1000C71E8();
  v45 = v66;
  sub_1000DB260();
  (*(v41 + 8))(v13, v40);
  v110 = v87;
  v111 = v88;
  v112 = v89;
  v113 = v90;
  v106 = v83;
  v107 = v84;
  v108 = v85;
  v109 = v86;
  v102 = v80;
  v103 = v81;
  v104 = v82[0];
  v105 = v82[1];
  sub_1000C7894(&v102, sub_1000C6BF8);
  *&v80 = v43;
  *(&v80 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v47 = v69;
  v46 = v70;
  sub_1000DB230();
  (*(v72 + 8))(v45, v46);
  v48 = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 1;
  *(v49 + 32) = 0;
  *(v49 + 40) = 0;
  v50 = (v47 + *(v71 + 44));
  *v50 = v48;
  v50[1] = sub_10002B050;
  v50[2] = v49;
  v51 = *(a1 + 104);
  v80 = *(a1 + 88);
  v81 = v51;
  v82[0] = *(a1 + 120);
  *(v82 + 9) = *(a1 + 129);
  LOBYTE(v48) = *a1;
  *v9 = swift_getKeyPath();
  sub_1000C7CD0(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v52 = type metadata accessor for PriceChangeView();
  v53 = (v9 + *(v52 + 20));
  v54 = v81;
  *v53 = v80;
  v53[1] = v54;
  v53[2] = v82[0];
  *(v53 + 41) = *(v82 + 9);
  *(v9 + *(v52 + 24)) = v48;
  v55 = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  *(v56 + 32) = 0;
  *(v56 + 40) = 1;
  v57 = v73;
  v58 = (v9 + *(v74 + 44));
  *v58 = v55;
  v58[1] = sub_10002B5D4;
  v58[2] = v56;
  sub_1000C7B50(v47, v57);
  v60 = v75;
  v59 = v76;
  sub_1000C7D34(v9, v75, &qword_10011AAE0, v76);
  v61 = v77;
  sub_1000C7B50(v57, v77);
  sub_1000C6980();
  sub_1000C7D34(v60, v61 + *(v62 + 48), &qword_10011AAE0, v59);
  sub_1000C7A20(&v80, &v79, &qword_100117C18, &type metadata for PriceChange, &type metadata accessor for Optional, sub_1000C7198);
  sub_1000C7DA0(v9, &qword_10011AAE0, v59);
  sub_1000C7BD0(v47);
  sub_1000C7DA0(v60, &qword_10011AAE0, v59);
  return sub_1000C7BD0(v57);
}

double sub_1000C629C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for RowWithChartTicker() + 40));
  sub_1000D9DA0();
  sub_1000DACD0();
  sub_1000DB160();
  sub_1000DAD90();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1000C63DC()
{
  v1 = sub_1000DAE60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C658C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_1000DAC80();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_1000C7528();
  sub_1000C53C0(v0, &v9[*(v10 + 44)]);
  sub_1000DAE40();
  sub_1000C7490(&qword_10011AB00, sub_1000C658C);
  sub_1000DB2A0();
  (*(v2 + 8))(v5, v1);
  return sub_1000C77A0(v9, sub_1000C658C);
}

void sub_1000C658C()
{
  if (!qword_10011A9E0)
  {
    sub_1000C7CD0(255, &qword_10011A9E8, sub_1000C6640, &type metadata accessor for TupleView);
    sub_1000C7074(&qword_10011AAF0, &qword_10011A9E8, sub_1000C6640);
    v0 = sub_1000DB4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A9E0);
    }
  }
}

void sub_1000C6640()
{
  if (!qword_10011A9F0)
  {
    sub_1000C6708();
    sub_1000C7008(255, &qword_10011AA28, type metadata accessor for RowSparklineView, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
    sub_1000C68CC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_10011A9F0);
    }
  }
}

void sub_1000C6708()
{
  if (!qword_10011A9F8)
  {
    sub_1000C7CD0(255, &qword_10011AA00, sub_1000C67BC, &type metadata accessor for TupleView);
    sub_1000C7074(&qword_10011AA20, &qword_10011AA00, sub_1000C67BC);
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A9F8);
    }
  }
}

void sub_1000C67BC()
{
  if (!qword_10011AA08)
  {
    sub_1000C6A28(255, &qword_10011AA10, type metadata accessor for SymbolTrendView);
    sub_1000C6848();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011AA08);
    }
  }
}

void sub_1000C6848()
{
  if (!qword_10011AA18)
  {
    sub_1000C7198(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AA18);
    }
  }
}

void sub_1000C68CC()
{
  if (!qword_10011AA30)
  {
    sub_1000C7CD0(255, &qword_10011AA38, sub_1000C6980, &type metadata accessor for TupleView);
    sub_1000C7074(&qword_10011AAE8, &qword_10011AA38, sub_1000C6980);
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AA30);
    }
  }
}

void sub_1000C6980()
{
  if (!qword_10011AA40)
  {
    sub_1000C6A28(255, &qword_10011AA48, sub_1000C6AB8);
    sub_1000C6A28(255, &qword_10011AAE0, type metadata accessor for PriceChangeView);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011AA40);
    }
  }
}

void sub_1000C6A28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000C7198(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000C6AB8()
{
  if (!qword_10011AA50)
  {
    sub_1000C6B74();
    sub_1000C6BF8();
    sub_1000C71E8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AA50);
    }
  }
}

void sub_1000C6B74()
{
  if (!qword_10011AA58)
  {
    sub_1000C6BF8();
    sub_1000C71E8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AA58);
    }
  }
}

void sub_1000C6BF8()
{
  if (!qword_10011AA60)
  {
    sub_1000C6C78();
    sub_1000C70D8(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AA60);
    }
  }
}

void sub_1000C6C78()
{
  if (!qword_10011AA68)
  {
    sub_1000C6D0C();
    sub_1000C7144(255, &qword_100115B90, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle, &type metadata accessor for _ForegroundStyleModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AA68);
    }
  }
}

void sub_1000C6D0C()
{
  if (!qword_10011AA70)
  {
    sub_1000C7008(255, &qword_10011AA78, sub_1000C6DC4, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for ModifiedContent);
    sub_1000C70D8(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AA70);
    }
  }
}

void sub_1000C6DC4()
{
  if (!qword_10011AA80)
  {
    sub_1000C7CD0(255, &qword_10011AA88, sub_1000C6E78, &type metadata accessor for TupleView);
    sub_1000C7074(&qword_10011AAB0, &qword_10011AA88, sub_1000C6E78);
    v0 = sub_1000DB550();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AA80);
    }
  }
}

void sub_1000C6E78()
{
  if (!qword_10011AA90)
  {
    sub_1000C6EE8();
    sub_1000C6F70();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011AA90);
    }
  }
}

void sub_1000C6EE8()
{
  if (!qword_10011AA98)
  {
    sub_1000C7144(255, &qword_10011AAA0, &type metadata for Text, &type metadata for Text, &type metadata accessor for _ConditionalContent);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AA98);
    }
  }
}

void sub_1000C6F70()
{
  if (!qword_10011AAA8)
  {
    sub_1000C7008(255, &qword_100116728, &type metadata accessor for LayoutPriorityTraitKey, &protocol witness table for LayoutPriorityTraitKey, &type metadata accessor for _TraitWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AAA8);
    }
  }
}

void sub_1000C7008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1000C7074(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1000C7CD0(255, a2, a3, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000C70D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1000C7198(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000C7144(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000C7198(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1000C71E8()
{
  result = qword_10011AAB8;
  if (!qword_10011AAB8)
  {
    sub_1000C6BF8();
    sub_1000C7288();
    sub_1000C74D8(&qword_1001159C8, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AAB8);
  }

  return result;
}

unint64_t sub_1000C7288()
{
  result = qword_10011AAC0;
  if (!qword_10011AAC0)
  {
    sub_1000C6C78();
    sub_1000C7308();
    sub_100035EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AAC0);
  }

  return result;
}

unint64_t sub_1000C7308()
{
  result = qword_10011AAC8;
  if (!qword_10011AAC8)
  {
    sub_1000C6D0C();
    sub_1000C73A8();
    sub_1000C74D8(&qword_100115200, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AAC8);
  }

  return result;
}

unint64_t sub_1000C73A8()
{
  result = qword_10011AAD0;
  if (!qword_10011AAD0)
  {
    sub_1000C7008(255, &qword_10011AA78, sub_1000C6DC4, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for ModifiedContent);
    sub_1000C7490(&qword_10011AAD8, sub_1000C6DC4);
    sub_10002E25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AAD0);
  }

  return result;
}

uint64_t sub_1000C7490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C74D8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000C70D8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000C7528()
{
  if (!qword_10011AAF8)
  {
    sub_1000C7CD0(255, &qword_10011A9E8, sub_1000C6640, &type metadata accessor for TupleView);
    v0 = sub_1000DA800();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AAF8);
    }
  }
}

void sub_1000C75C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1000C7CD0(255, a3, a4, &type metadata accessor for TupleView);
    v5 = sub_1000DA800();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000C763C(uint64_t a1, uint64_t a2)
{
  sub_1000C6708();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C76A0(uint64_t a1, uint64_t a2)
{
  sub_1000C7008(0, &qword_10011AA28, type metadata accessor for RowSparklineView, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C773C(uint64_t a1, uint64_t a2)
{
  sub_1000C68CC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C77A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C7800(uint64_t a1)
{
  sub_1000C7008(0, &qword_10011AA28, type metadata accessor for RowSparklineView, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C7894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C78FC@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  a1(v17);
  v11 = v17[0];
  v12 = v17[1];
  v13 = v17[2];
  v14 = v17[3];
  v15 = v18;
  LOBYTE(v17[0]) = v18;
  *a6 = v11;
  *(a6 + 8) = v12;
  *(a6 + 16) = v13;
  *(a6 + 24) = v14;
  *(a6 + 32) = v15;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4 & 1;
  *(a6 + 64) = a5;
  *(a6 + 72) = 0xBFF0000000000000;
  sub_1000178C0(a2, a3, a4 & 1);

  sub_1000C7C48(v11, v12, v13);
  sub_1000178C0(a2, a3, a4 & 1);

  sub_100017794(a2, a3, a4 & 1);

  return sub_1000C7C84(v11, v12, v13);
}

uint64_t sub_1000C7A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1000C7A94(uint64_t a1)
{
  sub_1000C7CD0(0, &qword_10011AA88, sub_1000C6E78, &type metadata accessor for TupleView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C7B50(uint64_t a1, uint64_t a2)
{
  sub_1000C6A28(0, &qword_10011AA48, sub_1000C6AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C7BD0(uint64_t a1)
{
  sub_1000C6A28(0, &qword_10011AA48, sub_1000C6AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C7C48(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000178C0(a1, a2, a3 & 1);
}

uint64_t sub_1000C7C84(uint64_t a1, uint64_t a2, char a3)
{
  sub_100017794(a1, a2, a3 & 1);
}

void sub_1000C7CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000C7D34(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1000C6A28(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000C7DA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1000C6A28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000C7DFC()
{
  sub_1000C658C();
  sub_1000C7490(&qword_10011AB00, sub_1000C658C);
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_1000C7E90(uint64_t a1)
{
  v2 = sub_1000D9480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v28 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v27 = &v21 - v7;
  v8 = sub_1000D9450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = *(a1 + 16);
  v25 = a1;
  v26 = v14;
  v24 = v9 + 16;
  v23 = enum case for ExchangeStatus.open(_:);
  v15 = (v3 + 8);
  v21 = (v9 + 8);
  v22 = (v3 + 104);
  do
  {
    v18 = v13;
    if (v26 == v13)
    {
      break;
    }

    v19 = v8;
    (*(v9 + 16))(v12, v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, v8);
    sub_1000D93F0();
    (*v22)(v28, v23, v2);
    sub_1000C9734(&qword_10011ABC8, &type metadata accessor for ExchangeStatus);
    sub_1000DBAD0();
    sub_1000DBAD0();
    if (v31 == v29 && v32 == v30)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_1000DC360();
    }

    v17 = *v15;
    (*v15)(v28, v2);
    v17(v27, v2);
    v8 = v19;
    (*v21)(v12, v19);

    v13 = v18 + 1;
  }

  while ((v16 & 1) == 0);
  return v26 != v18;
}

uint64_t sub_1000C81AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_1000C95BC(0, &qword_1001152F0, &type metadata accessor for Date, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = sub_1000D9090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v40 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000D9450();
  v14 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    v20 = *(v15 + 16);
    v19 = v15 + 16;
    v21 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v37 = *(v19 + 56);
    v38 = v20;
    v22 = (v11 + 48);
    v32 = v11;
    v35 = (v11 + 32);
    v36 = (v19 - 8);
    v23 = &_swiftEmptyArrayStorage;
    v33 = v10;
    v34 = v7;
    do
    {
      v24 = v39;
      v25 = v19;
      v38(v17, v21, v39);
      sub_1000D9400();
      sub_1000C977C(v7, v9);
      (*v36)(v17, v24);
      if ((*v22)(v9, 1, v10) == 1)
      {
        sub_1000C96A8(v9);
      }

      else
      {
        v26 = *v35;
        (*v35)(v40, v9, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_10007B6D0(0, v23[2] + 1, 1, v23);
        }

        v28 = v23[2];
        v27 = v23[3];
        if (v28 >= v27 >> 1)
        {
          v23 = sub_10007B6D0(v27 > 1, v28 + 1, 1, v23);
        }

        v23[2] = v28 + 1;
        v29 = v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28;
        v10 = v33;
        v26(v29, v40, v33);
        v7 = v34;
      }

      v21 += v37;
      --v18;
      v19 = v25;
    }

    while (v18);
  }

  else
  {
    v23 = &_swiftEmptyArrayStorage;
  }

  sub_1000C8534(v23, v31);
}

uint64_t sub_1000C8534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000D9090();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_1000C9734(&qword_100116E58, &type metadata accessor for Date);
        v21 = sub_1000DB8A0();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1000C87E4()
{
  sub_10000299C();
  result = sub_1000DBE70();
  qword_100129050 = result;
  return result;
}

uint64_t sub_1000C884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v93 = a4;
  sub_1000C95BC(0, &qword_1001152F0, &type metadata accessor for Date, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v80 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v77 - v11;
  __chkstk_darwin(v12);
  v84 = &v77 - v13;
  v14 = sub_1000D9090();
  v92 = *(v14 - 8);
  v15 = *(v92 + 64);
  __chkstk_darwin(v14);
  v79 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v78 = &v77 - v18;
  __chkstk_darwin(v19);
  v82 = &v77 - v20;
  __chkstk_darwin(v21);
  v81 = &v77 - v22;
  __chkstk_darwin(v23);
  v90 = &v77 - v24;
  v91 = sub_1000D95E0();
  v89 = *(v91 - 8);
  v25 = *(v89 + 64);
  __chkstk_darwin(v91);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v4[6];
  sub_100006C7C(v4 + 2, v4[5]);
  sub_1000D98B0();
  v88 = v27;
  v87 = sub_1000D9540();
  if (qword_1001141D8 != -1)
  {
    swift_once();
  }

  v29 = qword_100129050;
  sub_1000C95BC(0, &qword_1001145E0, sub_100029DAC, &type metadata accessor for _ContiguousArrayStorage);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000E08A0;
  sub_1000C9734(&qword_100115308, &type metadata accessor for Date);
  v31 = v29;
  v86 = v14;
  v32 = sub_1000DC320();
  v34 = v33;
  *(v30 + 56) = &type metadata for String;
  v35 = sub_100002AAC();
  *(v30 + 64) = v35;
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  sub_1000C95BC(0, &qword_10011ABB8, &type metadata accessor for WidgetQuote, &type metadata accessor for Array);
  *(v30 + 96) = v36;
  *(v30 + 104) = sub_1000C9620();
  *(v30 + 72) = a2;

  sub_1000DBDD0();
  sub_1000DA320();

  if (sub_1000C7E90(a2))
  {
    v37 = v88;
    sub_1000D95C0();
    v38 = qword_100129050;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1000DDD30;
    v94 = 0;
    v95 = 0xE000000000000000;
    v40 = v38;
    sub_1000DBC70();
    v41 = v94;
    v42 = v95;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v35;
    *(v39 + 32) = v41;
    *(v39 + 40) = v42;
    sub_1000DBDD0();
    sub_1000DA320();

    v43 = v90;
    sub_1000D9030();
    v44 = v86;
    v45 = v92;
    goto LABEL_21;
  }

  v77 = a1;
  v45 = v92;
  if (v85 == 1)
  {
    v37 = v88;
    sub_1000D95A0();
    v46 = qword_100129050;
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1000DDD30;
    v94 = 0;
    v95 = 0xE000000000000000;
    v48 = v46;
    sub_1000DBC70();
    v49 = v94;
    v50 = v95;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = v35;
    *(v47 + 32) = v49;
    *(v47 + 40) = v50;
    sub_1000DBDD0();
    sub_1000DA320();

    v51 = v84;
    sub_1000C81AC(a2, v84);
    v44 = v86;
    if ((*(v45 + 48))(v51, 1, v86) == 1)
    {
      sub_1000C96A8(v51);
      v43 = v90;
LABEL_14:
      sub_1000D9030();
      goto LABEL_21;
    }

    v58 = *(v45 + 32);
    v59 = v81;
    v58(v81, v51, v44);
    v60 = v82;
  }

  else
  {
    v44 = v86;
    if (v85 < 2)
    {
      v61 = v80;
      sub_1000C81AC(a2, v80);
      if ((*(v45 + 48))(v61, 1, v44) != 1)
      {
        v43 = v90;
        (*(v45 + 32))(v90, v61, v44);
        v71 = qword_100129050;
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1000DDD30;
        v73 = v71;
        v74 = sub_1000DC320();
        *(v72 + 56) = &type metadata for String;
        *(v72 + 64) = v35;
        *(v72 + 32) = v74;
        *(v72 + 40) = v75;
        sub_1000DBDD0();
        sub_1000DA320();

        v37 = v88;
        goto LABEL_21;
      }

      sub_1000C96A8(v61);
      v37 = v88;
      sub_1000D95C0();
      v62 = qword_100129050;
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1000DDD30;
      v94 = 0;
      v95 = 0xE000000000000000;
      v64 = v62;
      sub_1000DBC70();
      v65 = v94;
      v66 = v95;
      *(v63 + 56) = &type metadata for String;
      *(v63 + 64) = v35;
      *(v63 + 32) = v65;
      *(v63 + 40) = v66;
      sub_1000DBDD0();
      sub_1000DA320();

      v43 = v90;
      goto LABEL_14;
    }

    v37 = v88;
    sub_1000D9570();
    v52 = qword_100129050;
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1000DDD30;
    v94 = 0;
    v95 = 0xE000000000000000;
    v54 = v52;
    sub_1000DBC70();
    v55 = v94;
    v56 = v95;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = v35;
    *(v53 + 32) = v55;
    *(v53 + 40) = v56;
    sub_1000DBDD0();
    sub_1000DA320();

    v57 = v83;
    sub_1000C81AC(a2, v83);
    if ((*(v45 + 48))(v57, 1, v44) == 1)
    {
      sub_1000C96A8(v57);
      v43 = v90;
      goto LABEL_14;
    }

    v58 = *(v45 + 32);
    v59 = v78;
    v58(v78, v57, v44);
    v60 = v79;
  }

  sub_1000D9030();
  sub_1000C9734(&qword_100116E58, &type metadata accessor for Date);
  v67 = sub_1000DB8A0();
  v68 = *(v45 + 8);
  v43 = v90;
  if (v67)
  {
    v68(v60, v44);
    v69 = v43;
    v70 = v59;
  }

  else
  {
    v68(v59, v44);
    v69 = v43;
    v70 = v60;
  }

  v58(v69, v70, v44);
LABEL_21:
  static TimelineReloadPolicy.after(_:jitteredUpTo:)(v87);
  (*(v45 + 8))(v43, v44);
  return (*(v89 + 8))(v37, v91);
}

void static TimelineReloadPolicy.after(_:jitteredUpTo:)(double a1)
{
  v2 = sub_1000D9090();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C94F4(v7, 0.0, a1);
  sub_1000D9030();
  sub_1000DB730();
  (*(v3 + 8))(v6, v2);
  sub_1000C95BC(0, &qword_1001145E0, sub_100029DAC, &type metadata accessor for _ContiguousArrayStorage);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000DE440;
  sub_1000C9734(&qword_100115308, &type metadata accessor for Date);
  v9 = sub_1000DC320();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100002AAC();
  *(v8 + 64) = v12;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for Double;
  *(v8 + 104) = &protocol witness table for Double;
  *(v8 + 72) = a1;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1000DB760();
  sub_1000DC0C0();
  v13 = v16;
  v14 = v17;
  *(v8 + 136) = &type metadata for String;
  *(v8 + 144) = v12;
  *(v8 + 112) = v13;
  *(v8 + 120) = v14;
  sub_10000299C();
  v15 = sub_1000DBE60();
  sub_1000DBDD0();
  sub_1000DA320();
}

uint64_t sub_1000C94F4(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_1000C94F4(v6, a2, a3);
  }

  return result;
}

void sub_1000C95BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1000C9620()
{
  result = qword_10011ABC0;
  if (!qword_10011ABC0)
  {
    sub_1000C95BC(255, &qword_10011ABB8, &type metadata accessor for WidgetQuote, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ABC0);
  }

  return result;
}

uint64_t sub_1000C96A8(uint64_t a1)
{
  sub_1000C95BC(0, &qword_1001152F0, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C9734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C977C(uint64_t a1, uint64_t a2)
{
  sub_1000C95BC(0, &qword_1001152F0, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C981C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000C9864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000C98C4(char a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = "ring for 'Yahoo news'";
  if (a1)
  {
    v4 = " defined in CodingKeys.";
    v5._countAndFlagsBits = 0x654E206F6F686159;
  }

  else
  {
    v5._countAndFlagsBits = 0x654E20656C707041;
  }

  v9._countAndFlagsBits = v4 | 0x8000000000000000;
  v5._object = 0xEA00000000007377;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v6.super.isa = v3;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v7 = sub_1000D8E50(v5, v10, v6, v11, v9);

  return v7;
}

uint64_t sub_1000C99B4(void *a1, int a2)
{
  v24 = a2;
  sub_1000CDD38(0, &qword_10011AC88, sub_1000CDB48, &type metadata for HeadlineAttribution.NewsSourceAttribution.YahooCodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  sub_1000CDD38(0, &qword_10011AC90, sub_1000CDB9C, &type metadata for HeadlineAttribution.NewsSourceAttribution.AppleNewsCodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v20 = *(v7 - 8);
  v21 = v7;
  v8 = *(v20 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  sub_1000CDD38(0, &qword_10011AC98, sub_1000CDBF0, &type metadata for HeadlineAttribution.NewsSourceAttribution.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v16 = &v19 - v15;
  v17 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000CDBF0();
  sub_1000DC480();
  if (v24)
  {
    v26 = 1;
    sub_1000CDB48();
    sub_1000DC250();
    (*(v22 + 8))(v6, v23);
  }

  else
  {
    v25 = 0;
    sub_1000CDB9C();
    sub_1000DC250();
    (*(v20 + 8))(v10, v21);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1000C9CC8(void *a1)
{
  v2 = v1;
  v26 = *v2;
  v25[2] = *(v2 + 24);
  sub_1000CDD38(0, &qword_10011ACA0, sub_1000CDC90, &type metadata for HeadlineAttribution.PublisherAttribution.NameCodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v5 = v4;
  v25[0] = *(v4 - 8);
  v6 = *(v25[0] + 64);
  __chkstk_darwin(v4);
  v8 = v25 - v7;
  sub_1000CDD38(0, &qword_10011ACA8, sub_1000CDCE4, &type metadata for HeadlineAttribution.PublisherAttribution.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v10 = v9;
  v27 = *(v9 - 8);
  v11 = *(v27 + 64);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  v14 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000CDCE4();
  sub_1000DC480();
  if (*(v2 + 32))
  {
    v15 = *(v2 + 8);
    sub_1000CDC90();
    sub_1000DC250();
    sub_1000DC2B0();
    (*(v25[0] + 8))(v8, v5);
  }

  else
  {
    v16 = sub_1000DC000();
    swift_allocError();
    v18 = v17;
    sub_1000CDDA0();
    v20 = *(v19 + 48);
    v18[3] = &type metadata for HeadlineAttribution.PublisherAttribution;
    v21 = swift_allocObject();
    *v18 = v21;
    v22 = *(v2 + 16);
    *(v21 + 16) = *v2;
    *(v21 + 32) = v22;
    *(v21 + 48) = *(v2 + 32);
    v23 = v26;

    sub_1000DC260();
    sub_1000DBFE0();
    (*(*(v16 - 8) + 104))(v18, enum case for EncodingError.invalidValue(_:), v16);
    swift_willThrow();
  }

  return (*(v27 + 8))(v13, v10);
}

uint64_t sub_1000CA020(void *a1)
{
  v3 = v1;
  sub_1000CDD38(0, &qword_10011ABF0, sub_1000CD764, &type metadata for HeadlineAttribution.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = v14 - v9;
  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000CD764();
  sub_1000DC480();
  LOBYTE(v14[0]) = *v3;
  v16 = 0;
  sub_1000CD860();
  sub_1000DC2A0();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v14[0] = *(v3 + 8);
    v14[1] = v12;
    v15 = *(v3 + 40);
    v16 = 1;
    sub_1000CD8B4();
    sub_1000DC2F0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000CA200@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1000CA230(uint64_t a1)
{
  v2 = sub_1000CDB9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA26C(uint64_t a1)
{
  v2 = sub_1000CDB9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CA2A8()
{
  if (*v0)
  {
    result = 0x6F6F686179;
  }

  else
  {
    result = 0x77654E656C707061;
  }

  *v0;
  return result;
}

uint64_t sub_1000CA2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x77654E656C707061 && a2 == 0xE900000000000073;
  if (v6 || (sub_1000DC360() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6F686179 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000DC360();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000CA3C4(uint64_t a1)
{
  v2 = sub_1000CDBF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA400(uint64_t a1)
{
  v2 = sub_1000CDBF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CA43C(uint64_t a1)
{
  v2 = sub_1000CDB48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA478(uint64_t a1)
{
  v2 = sub_1000CDB48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CA4B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CCC40(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

Swift::Int sub_1000CA500()
{
  sub_1000DC420();
  sub_1000DB9F0();
  return sub_1000DC460();
}

Swift::Int sub_1000CA55C()
{
  sub_1000DC420();
  sub_1000DB9F0();
  return sub_1000DC460();
}

uint64_t sub_1000CA5A4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100108EA0;
  v7._object = v3;
  v5 = sub_1000DC170(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000CA61C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_100108ED8;
  v8._object = a2;
  v6 = sub_1000DC170(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_1000CA674(uint64_t a1)
{
  v2 = sub_1000CDCE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA6B0(uint64_t a1)
{
  v2 = sub_1000CDCE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CA6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000DC360();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000CA778(uint64_t a1)
{
  v2 = sub_1000CDC90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA7B4(uint64_t a1)
{
  v2 = sub_1000CDC90();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000CA7F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000CD140(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000CA850()
{
  if (*v0)
  {
    result = 0x656873696C627570;
  }

  else
  {
    result = 0x72756F537377656ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1000CA894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72756F537377656ELL && a2 == 0xEA00000000006563;
  if (v6 || (sub_1000DC360() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000DC360();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000CA980(uint64_t a1)
{
  v2 = sub_1000CD764();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA9BC(uint64_t a1)
{
  v2 = sub_1000CD764();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000CA9F8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000CD534(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1000CAA54@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  sub_1000CEFA4();
  v192 = v3;
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v174 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A52A8(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v166 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CF02C();
  v172 = *(v9 - 8);
  v173 = v9;
  v10 = *(v172 + 64);
  __chkstk_darwin(v9);
  v171 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v183 = &v155 - v13;
  sub_1000CEBC8(0, &qword_10011AE98, sub_1000CEC4C, sub_1000CEFA4, &type metadata accessor for _ConditionalContent.Storage);
  v189 = v14;
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v191 = &v155 - v16;
  sub_1000CEC4C(0);
  v190 = v17;
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v170 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000DB3D0();
  v164 = *(v20 - 8);
  v165 = v20;
  v21 = *(v164 + 64);
  __chkstk_darwin(v20);
  v163 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CF17C(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v162 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CEEE8();
  v168 = *(v26 - 8);
  v169 = v26;
  v27 = *(v168 + 64);
  __chkstk_darwin(v26);
  v167 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v180 = &v155 - v30;
  v31 = sub_1000DB570();
  v159 = *(v31 - 8);
  v160 = v31;
  v32 = *(v159 + 64);
  __chkstk_darwin(v31);
  v158 = &v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CED60(0, &qword_10011AE48, sub_1000CEDC4);
  v176 = *(v34 - 8);
  v177 = v34;
  v35 = *(v176 + 64);
  __chkstk_darwin(v34);
  v161 = &v155 - v36;
  sub_1000CECE4();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v195 = &v155 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v184 = &v155 - v41;
  __chkstk_darwin(v42);
  v194 = &v155 - v43;
  sub_1000CEB80(0);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v188 = &v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v187 = &v155 - v48;
  v49 = sub_1000DB720();
  v50 = *(v49 - 8);
  v51 = v50[8];
  __chkstk_darwin(v49);
  v53 = &v155 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v56 = &v155 - v55;
  sub_1000CE7F4();
  v175 = v57;
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  __chkstk_darwin(v57);
  v61 = &v155 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE75C(0);
  v63 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62 - 8);
  v186 = &v155 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v68 = &v155 - v66;
  v69 = *a1;
  v196 = a1;
  v178 = v53;
  v179 = v56;
  v185 = &v155 - v66;
  v181 = v50;
  v182 = v49;
  v157 = v69;
  if (v69 == 2)
  {
    (*(v58 + 56))(&v155 - v66, 1, 1, v175, v67);
    v70 = *(a1 + 1);
    v71 = *(a1 + 2);
    if (a1[40])
    {
      (*(v176 + 56))(v195, 1, 1, v177);

      v156 = enum case for WidgetFamily.systemSmall(_:);
LABEL_6:
      *&v203 = v70;
      *(&v203 + 1) = v71;
      sub_100017740();
      v86 = sub_1000DB170();
      v88 = v87;
      v90 = v89;
      sub_1000DAFB0();
      v91 = sub_1000DAFA0();
      v92 = v166;
      (*(*(v91 - 8) + 56))(v166, 1, 1, v91);
      sub_1000DB000();
      sub_1000CF200(v92, sub_1000A52A8);
      v194 = sub_1000DB100();
      v94 = v93;
      v96 = v95;
      v98 = v97;

      sub_100017794(v86, v88, v90 & 1);

      KeyPath = swift_getKeyPath();
      sub_1000DB600();
      sub_1000DA7A0();
      *&v200[39] = v213;
      *&v200[23] = v212;
      *&v200[7] = v211;
      *(&v199[2] + 1) = *v200;
      v202 = v96 & 1;
      v201 = 0;
      *&v198 = v194;
      *(&v198 + 1) = v94;
      LOBYTE(v199[0]) = v96 & 1;
      *(&v199[0] + 1) = v98;
      *&v199[1] = KeyPath;
      *(&v199[1] + 1) = 1;
      LOBYTE(v199[2]) = 0;
      *(&v199[3] + 1) = *&v200[16];
      *(&v199[4] + 1) = *&v200[32];
      *&v199[5] = *(&v213 + 1);
      v100 = &v196[*(type metadata accessor for HeadlineAttributionView() + 20)];
      v101 = v179;
      sub_10004C4D4(v179);
      v103 = v181;
      v102 = v182;
      v104 = v178;
      (v181[13])(v178, v156, v182);
      sub_1000CF1B8(&qword_100116638, &type metadata accessor for WidgetFamily);
      sub_1000DBAD0();
      sub_1000DBAD0();
      v105 = v103[1];
      v105(v104, v102);
      v105(v101, v102);
      sub_1000CF0E8(0);
      sub_1000CF764(&qword_10011AE90, sub_1000CF0E8, sub_1000177AC);
      v106 = v183;
      sub_1000DB1F0();
      v206[0] = v199[2];
      v206[1] = v199[3];
      v206[2] = v199[4];
      v207 = *&v199[5];
      v203 = v198;
      v204 = v199[0];
      v205 = v199[1];
      sub_1000CF200(&v203, sub_1000CF0E8);
      v107 = v184;
      sub_1000CF374(v195, v184, sub_1000CECE4);
      v108 = v171;
      v109 = v172;
      v110 = *(v172 + 16);
      v111 = v173;
      v110(v171, v106, v173);
      v112 = v174;
      sub_1000CF374(v107, v174, sub_1000CECE4);
      sub_1000CE6E0(0, &qword_10011AE78, sub_1000CECE4, sub_1000CF02C);
      v110((v112 + *(v113 + 48)), v108, v111);
      v114 = *(v109 + 8);
      v114(v108, v111);
      sub_1000CF260(v107, sub_1000CECE4);
      sub_1000CF374(v112, v191, sub_1000CEFA4);
      swift_storeEnumTagMultiPayload();
      sub_1000CF1B8(&qword_10011AEA0, sub_1000CEC4C);
      sub_1000CF1B8(&qword_10011AEA8, sub_1000CEFA4);
      v115 = v187;
      sub_1000DAD90();
      sub_1000CF260(v112, sub_1000CEFA4);
      v114(v183, v111);
      v116 = v195;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1000CC22C(v69 & 1, &v198);
    v72 = &a1[*(type metadata accessor for HeadlineAttributionView() + 20)];
    sub_10004C4D4(v56);
    v73 = v50[13];
    v156 = enum case for WidgetFamily.systemSmall(_:);
    v73(v53);
    sub_1000CF1B8(&qword_100116638, &type metadata accessor for WidgetFamily);
    sub_1000DBAD0();
    sub_1000DBAD0();
    v74 = v50[1];
    v74(v53, v49);
    v74(v56, v49);
    sub_1000CE878();
    sub_1000CE994();
    v75 = v196;
    sub_1000DB1F0();
    v204 = v199[0];
    v205 = v199[1];
    v206[0] = v199[2];
    *(v206 + 9) = *(&v199[2] + 9);
    v203 = v198;
    sub_1000CF200(&v203, sub_1000CE878);
    v76 = v175;
    (*(v58 + 32))(v68, v61, v175);
    (*(v58 + 56))(v68, 0, 1, v76);
    v70 = *(v75 + 1);
    v71 = *(v75 + 2);
    if (v75[40])
    {
      v77 = *(v75 + 2);

      v78 = v158;
      sub_1000DB560();
      *&v203 = swift_getKeyPath();
      BYTE8(v203) = 0;
      sub_1000CF1B8(&qword_10011AE58, &type metadata accessor for Divider);
      sub_1000CEE94();
      v80 = v160;
      v79 = v161;
      sub_1000DB240();

      (*(v159 + 8))(v78, v80);
      sub_1000DB600();
      sub_1000DA7A0();
      v81 = v177;
      v82 = &v79[*(v177 + 36)];
      v83 = v209;
      *v82 = v208;
      *(v82 + 1) = v83;
      *(v82 + 2) = v210;
      v84 = v79;
      v85 = v195;
      sub_1000CF2EC(v84, v195);
      (*(v176 + 56))(v85, 0, 1, v81);
      goto LABEL_6;
    }
  }

  v117 = v70;
  v118 = v181;
  v119 = v194;
  if (v157 == 2)
  {
    (*(v176 + 56))(v194, 1, 1, v177);
  }

  else
  {
    v120 = v158;
    sub_1000DB560();
    v121 = swift_getKeyPath();
    v195 = v117;
    *&v203 = v121;
    BYTE8(v203) = 0;
    sub_1000CF1B8(&qword_10011AE58, &type metadata accessor for Divider);
    sub_1000CEE94();
    v123 = v160;
    v122 = v161;
    sub_1000DB240();

    (*(v159 + 8))(v120, v123);
    sub_1000DB600();
    sub_1000DA7A0();
    v124 = v177;
    v125 = (v122 + *(v177 + 36));
    v126 = v209;
    *v125 = v208;
    v125[1] = v126;
    v125[2] = v210;
    sub_1000CF2EC(v122, v119);
    v127 = v124;
    v117 = v195;
    (*(v176 + 56))(v119, 0, 1, v127);
  }

  v195 = v117;
  sub_1000DB3B0();
  v128 = enum case for Image.TemplateRenderingMode.template(_:);
  v129 = sub_1000DB400();
  v130 = *(v129 - 8);
  v131 = v162;
  (*(v130 + 104))(v162, v128, v129);
  (*(v130 + 56))(v131, 0, 1, v129);
  sub_1000DB3E0();

  sub_1000CF200(v131, sub_1000CF17C);
  v133 = v163;
  v132 = v164;
  v134 = v165;
  (*(v164 + 104))(v163, enum case for Image.ResizingMode.stretch(_:), v165);
  v135 = sub_1000DB430();

  (*(v132 + 8))(v133, v134);
  sub_1000DB600();
  sub_1000DA7A0();
  *&v197[38] = v213;
  *&v197[22] = v212;
  *&v197[6] = v211;
  *(v199 + 2) = *v197;
  v202 = 1;
  v198 = v135;
  LOWORD(v199[0]) = 1;
  *(&v199[1] + 2) = *&v197[16];
  *(&v199[2] + 2) = *&v197[32];
  *&v199[3] = *(&v213 + 1);
  v136 = &v196[*(type metadata accessor for HeadlineAttributionView() + 20)];
  v137 = v179;
  sub_10004C4D4(v179);
  v138 = v178;
  v139 = v182;
  (v118[13])(v178, enum case for WidgetFamily.systemSmall(_:), v182);
  sub_1000CF1B8(&qword_100116638, &type metadata accessor for WidgetFamily);
  sub_1000DBAD0();
  sub_1000DBAD0();
  v140 = v118[1];
  v140(v138, v139);
  v140(v137, v139);
  sub_1000CE914(0);
  sub_1000CF764(&qword_10011AE18, sub_1000CE914, sub_1000CEB08);
  v141 = v180;
  sub_1000DB1F0();
  v204 = v199[0];
  v205 = v199[1];
  v206[0] = v199[2];
  *&v206[1] = *&v199[3];
  v203 = v198;
  sub_1000CF200(&v203, sub_1000CE914);
  v142 = v184;
  sub_1000CF374(v194, v184, sub_1000CECE4);
  v144 = v167;
  v143 = v168;
  v145 = *(v168 + 16);
  v146 = v169;
  v145(v167, v141, v169);
  v147 = v170;
  sub_1000CF374(v142, v170, sub_1000CECE4);
  sub_1000CE6E0(0, &qword_10011AE38, sub_1000CECE4, sub_1000CEEE8);
  v145((v147 + *(v148 + 48)), v144, v146);
  v196 = *(v143 + 8);
  (v196)(v144, v146);
  sub_1000CF260(v142, sub_1000CECE4);
  sub_1000CF374(v147, v191, sub_1000CEC4C);
  swift_storeEnumTagMultiPayload();
  sub_1000CF1B8(&qword_10011AEA0, sub_1000CEC4C);
  sub_1000CF1B8(&qword_10011AEA8, sub_1000CEFA4);
  v115 = v187;
  sub_1000DAD90();

  sub_1000CF260(v147, sub_1000CEC4C);
  (v196)(v180, v146);
  v116 = v194;
LABEL_11:
  sub_1000CF260(v116, sub_1000CECE4);
  v149 = v193;
  v151 = v185;
  v150 = v186;
  sub_1000CF374(v185, v186, sub_1000CE75C);
  v152 = v188;
  sub_1000CF374(v115, v188, sub_1000CEB80);
  sub_1000CF374(v150, v149, sub_1000CE75C);
  sub_1000CE6E0(0, &qword_10011ADD0, sub_1000CE75C, sub_1000CEB80);
  sub_1000CF374(v152, v149 + *(v153 + 48), sub_1000CEB80);
  sub_1000CF260(v115, sub_1000CEB80);
  sub_1000CF260(v151, sub_1000CE75C);
  sub_1000CF260(v152, sub_1000CEB80);
  return sub_1000CF260(v150, sub_1000CE75C);
}

__n128 sub_1000CC22C@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1000CF17C(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000DB3D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_1000DB440();
    (*(v9 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v8);
    sub_1000DB430();

    (*(v9 + 8))(v12, v8);
    v13 = enum case for Image.TemplateRenderingMode.template(_:);
    v14 = sub_1000DB400();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v7, v13, v14);
    (*(v15 + 56))(v7, 0, 1, v14);
    v16 = sub_1000DB3E0();

    sub_1000CF200(v7, sub_1000CF17C);
    v36 = 1;
    v32 = 1;
    v25 = v16;
    v26 = 0;
    v27 = 1;
    v28 = v33;
    v29 = v34;
    *v30 = *v35;
    *&v30[14] = *&v35[14];
    v31 = 1;
  }

  else
  {
    sub_1000DB3F0();
    (*(v9 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v8);
    sub_1000DB430();

    (*(v9 + 8))(v12, v8);
    v17 = enum case for Image.TemplateRenderingMode.template(_:);
    v18 = sub_1000DB400();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v7, v17, v18);
    (*(v19 + 56))(v7, 0, 1, v18);
    v20 = sub_1000DB3E0();

    sub_1000CF200(v7, sub_1000CF17C);
    sub_1000DB600();
    sub_1000DA7A0();
    *&v24[38] = *v35;
    *&v24[22] = v34;
    *&v24[6] = v33;
    v28 = *v24;
    LOBYTE(v37) = 1;
    v36 = 0;
    v25 = v20;
    v26 = 0;
    v27 = 1;
    v29 = *&v24[16];
    *v30 = *&v24[32];
    *&v30[14] = *&v35[8];
    v31 = 0;
  }

  sub_1000CE914(0);
  sub_1000CE93C();
  sub_1000CF764(&qword_10011AE18, sub_1000CE914, sub_1000CEB08);
  sub_1000CEB08();
  sub_1000DAD90();
  v21 = v40[0];
  *(a2 + 32) = v39;
  *(a2 + 48) = v21;
  *(a2 + 57) = *(v40 + 9);
  result = v38;
  *a2 = v37;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1000CC6E8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000DAC80();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  sub_1000CE63C();
  return sub_1000CAA54(v1, a1 + *(v3 + 44));
}

double sub_1000CC730@<D0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_1000DAC10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000DB320();
  KeyPath = swift_getKeyPath();
  sub_1000DAE10();
  v13 = sub_1000DAF00();
  if (v13 != sub_1000DAF00())
  {
    if (a2)
    {
      v18 = a1;
      goto LABEL_7;
    }

LABEL_6:

    sub_1000DBDC0();
    v14 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_10002F3F0(a1, 0);
    (*(v7 + 8))(v10, v6);
    goto LABEL_7;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v18 = a1;
LABEL_7:
  sub_1000DB600();
  sub_1000DA7A0();
  *a3 = KeyPath;
  *(a3 + 8) = v11;
  *(a3 + 16) = 0x3FE8000000000000;
  v15 = v20;
  *(a3 + 24) = v19;
  *(a3 + 40) = v15;
  result = *&v21;
  *(a3 + 56) = v21;
  return result;
}

double sub_1000CC9D0@<D0>(uint64_t a1@<X8>)
{
  sub_1000DB620();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000CCA14@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ShapeRole.separator(_:);
  v3 = sub_1000DB630();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void (*sub_1000CCAA4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1000DA670();
  return sub_100027D30;
}

uint64_t sub_1000CCB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CF9EC();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000CCB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CF9EC();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000CCBF4(uint64_t a1)
{
  v2 = sub_1000CF9EC();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_1000CCC40(uint64_t *a1)
{
  sub_1000CDD38(0, &qword_10011AC28, sub_1000CDB48, &type metadata for HeadlineAttribution.NewsSourceAttribution.YahooCodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v31 = v2;
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v33 = &v29 - v4;
  sub_1000CDD38(0, &qword_10011AC38, sub_1000CDB9C, &type metadata for HeadlineAttribution.NewsSourceAttribution.AppleNewsCodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v6 = v5;
  v32 = *(v5 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  sub_1000CDD38(0, &qword_10011AC48, sub_1000CDBF0, &type metadata for HeadlineAttribution.NewsSourceAttribution.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v11 = v10;
  v35 = *(v10 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000CDBF0();
  v16 = v36;
  sub_1000DC470();
  if (v16)
  {
    goto LABEL_6;
  }

  v17 = v32;
  v18 = v33;
  v30 = v6;
  v19 = v34;
  v36 = a1;
  v20 = v14;
  v21 = sub_1000DC230();
  if (*(v21 + 16) != 1)
  {
    v14 = sub_1000DBFD0();
    swift_allocError();
    v24 = v23;
    sub_1000CE6E0(0, &qword_10011AC58, sub_1000CDC44, &type metadata accessor for DecodingError.Context);
    v26 = *(v25 + 48);
    *v24 = &type metadata for HeadlineAttribution.NewsSourceAttribution;
    sub_1000DC190();
    sub_1000DBFC0();
    (*(*(v14 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v14);
    swift_willThrow();
    (*(v35 + 8))(v20, v11);
    swift_unknownObjectRelease();
    a1 = v36;
LABEL_6:
    sub_100006D0C(a1);
    return v14;
  }

  v14 = *(v21 + 32);
  if (v14)
  {
    LODWORD(v32) = *(v21 + 32);
    v38 = 1;
    sub_1000CDB48();
    sub_1000DC180();
    v22 = v35;
    (*(v19 + 8))(v18, v31);
    (*(v22 + 8))(v20, v11);
    swift_unknownObjectRelease();
    v14 = v32;
  }

  else
  {
    v37 = 0;
    sub_1000CDB9C();
    sub_1000DC180();
    v28 = v35;
    (*(v17 + 8))(v9, v30);
    (*(v28 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  sub_100006D0C(v36);
  return v14;
}

uint64_t sub_1000CD140@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  sub_1000CDD38(0, &qword_10011AC68, sub_1000CDC90, &type metadata for HeadlineAttribution.PublisherAttribution.NameCodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v4 = v3;
  v32 = *(v3 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  sub_1000CDD38(0, &qword_10011AC78, sub_1000CDCE4, &type metadata for HeadlineAttribution.PublisherAttribution.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v9 = v8;
  v33 = *(v8 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000CDCE4();
  v14 = v34;
  sub_1000DC470();
  if (!v14)
  {
    v15 = v32;
    v34 = a1;
    if (*(sub_1000DC230() + 16) == 1)
    {
      sub_1000CDC90();
      v16 = v9;
      sub_1000DC180();
      v22 = sub_1000DC1E0();
      v23 = v33;
      v24 = v22;
      v25 = v7;
      v27 = v26;
      (*(v15 + 8))(v25, v4);
      (*(v23 + 8))(v12, v16);
      swift_unknownObjectRelease();
      result = sub_100006D0C(v34);
      v29 = v31;
      *v31 = v24;
      v29[1] = v27;
      v29[2] = 0;
      v29[3] = 0;
      *(v29 + 32) = 1;
      return result;
    }

    v17 = sub_1000DBFD0();
    swift_allocError();
    v19 = v18;
    sub_1000CE6E0(0, &qword_10011AC58, sub_1000CDC44, &type metadata accessor for DecodingError.Context);
    v21 = *(v20 + 48);
    *v19 = &type metadata for HeadlineAttribution.PublisherAttribution;
    sub_1000DC190();
    sub_1000DBFC0();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v33 + 8))(v12, v9);
    swift_unknownObjectRelease();
    a1 = v34;
  }

  return sub_100006D0C(a1);
}

uint64_t sub_1000CD534@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1000CDD38(0, &qword_10011ABD0, sub_1000CD764, &type metadata for HeadlineAttribution.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000CD764();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v11 = v6;
  v12 = v19;
  v23 = 0;
  sub_1000CD7B8();
  sub_1000DC1D0();
  v13 = v20;
  v23 = 1;
  sub_1000CD80C();
  sub_1000DC220();
  (*(v11 + 8))(v9, v5);
  v14 = v22;
  v17 = v21;
  v18 = v20;
  result = sub_100006D0C(a1);
  *v12 = v13;
  v16 = v18;
  *(v12 + 24) = v17;
  *(v12 + 8) = v16;
  *(v12 + 40) = v14;
  return result;
}

unint64_t sub_1000CD764()
{
  result = qword_10011ABD8;
  if (!qword_10011ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ABD8);
  }

  return result;
}

unint64_t sub_1000CD7B8()
{
  result = qword_10011ABE0;
  if (!qword_10011ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ABE0);
  }

  return result;
}

unint64_t sub_1000CD80C()
{
  result = qword_10011ABE8;
  if (!qword_10011ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ABE8);
  }

  return result;
}

unint64_t sub_1000CD860()
{
  result = qword_10011ABF8;
  if (!qword_10011ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ABF8);
  }

  return result;
}

unint64_t sub_1000CD8B4()
{
  result = qword_10011AC00;
  if (!qword_10011AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC00);
  }

  return result;
}

__n128 sub_1000CD918(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000CD92C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000CD974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000CD9EC()
{
  result = qword_10011AC08;
  if (!qword_10011AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC08);
  }

  return result;
}

unint64_t sub_1000CDA44()
{
  result = qword_10011AC10;
  if (!qword_10011AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC10);
  }

  return result;
}

unint64_t sub_1000CDA9C()
{
  result = qword_10011AC18;
  if (!qword_10011AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC18);
  }

  return result;
}

unint64_t sub_1000CDAF4()
{
  result = qword_10011AC20;
  if (!qword_10011AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC20);
  }

  return result;
}

unint64_t sub_1000CDB48()
{
  result = qword_10011AC30;
  if (!qword_10011AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC30);
  }

  return result;
}

unint64_t sub_1000CDB9C()
{
  result = qword_10011AC40;
  if (!qword_10011AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC40);
  }

  return result;
}

unint64_t sub_1000CDBF0()
{
  result = qword_10011AC50;
  if (!qword_10011AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC50);
  }

  return result;
}

unint64_t sub_1000CDC44()
{
  result = qword_10011AC60;
  if (!qword_10011AC60)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_10011AC60);
  }

  return result;
}

unint64_t sub_1000CDC90()
{
  result = qword_10011AC70;
  if (!qword_10011AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC70);
  }

  return result;
}

unint64_t sub_1000CDCE4()
{
  result = qword_10011AC80;
  if (!qword_10011AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC80);
  }

  return result;
}

void sub_1000CDD38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1000CDDA0()
{
  if (!qword_10011ACB0)
  {
    sub_1000DBFF0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011ACB0);
    }
  }
}

uint64_t sub_1000CDE0C()
{
  sub_1000101A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

unint64_t sub_1000CDEA8()
{
  result = qword_10011ACB8;
  if (!qword_10011ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACB8);
  }

  return result;
}

unint64_t sub_1000CDF00()
{
  result = qword_10011ACC0;
  if (!qword_10011ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACC0);
  }

  return result;
}

unint64_t sub_1000CDF58()
{
  result = qword_10011ACC8;
  if (!qword_10011ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACC8);
  }

  return result;
}

unint64_t sub_1000CDFB0()
{
  result = qword_10011ACD0;
  if (!qword_10011ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACD0);
  }

  return result;
}

unint64_t sub_1000CE008()
{
  result = qword_10011ACD8;
  if (!qword_10011ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACD8);
  }

  return result;
}

unint64_t sub_1000CE060()
{
  result = qword_10011ACE0;
  if (!qword_10011ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACE0);
  }

  return result;
}

unint64_t sub_1000CE0B8()
{
  result = qword_10011ACE8;
  if (!qword_10011ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACE8);
  }

  return result;
}

unint64_t sub_1000CE110()
{
  result = qword_10011ACF0;
  if (!qword_10011ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACF0);
  }

  return result;
}

unint64_t sub_1000CE168()
{
  result = qword_10011ACF8;
  if (!qword_10011ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACF8);
  }

  return result;
}

unint64_t sub_1000CE1C0()
{
  result = qword_10011AD00;
  if (!qword_10011AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AD00);
  }

  return result;
}

unint64_t sub_1000CE218()
{
  result = qword_10011AD08;
  if (!qword_10011AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AD08);
  }

  return result;
}

unint64_t sub_1000CE270()
{
  result = qword_10011AD10;
  if (!qword_10011AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AD10);
  }

  return result;
}

unint64_t sub_1000CE2C8()
{
  result = qword_10011AD18;
  if (!qword_10011AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AD18);
  }

  return result;
}

uint64_t sub_1000CE330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000CE790(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000CE41C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
  }

  else
  {
    sub_1000CE790(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for HeadlineAttributionView()
{
  result = qword_10011AD78;
  if (!qword_10011AD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CE538()
{
  sub_1000CE790(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000CF714(319, &unk_10011AD88, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000CE63C()
{
  if (!qword_10011ADC0)
  {
    sub_1000CE6A4(255);
    v0 = sub_1000DA800();
    if (!v1)
    {
      atomic_store(v0, &qword_10011ADC0);
    }
  }
}

void sub_1000CE6E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1000CE790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000CE7F4()
{
  if (!qword_10011ADE0)
  {
    sub_1000CE878();
    sub_1000CE994();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011ADE0);
    }
  }
}

void sub_1000CE878()
{
  if (!qword_10011ADE8)
  {
    sub_1000CEBC8(255, &qword_10011ADF0, sub_1000CE914, sub_1000CE93C, &type metadata accessor for _ConditionalContent);
    v0 = sub_1000DB3A0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011ADE8);
    }
  }
}

void sub_1000CE93C()
{
  if (!qword_10011AE00)
  {
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AE00);
    }
  }
}

unint64_t sub_1000CE994()
{
  result = qword_10011AE08;
  if (!qword_10011AE08)
  {
    sub_1000CE878();
    sub_1000CEA0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AE08);
  }

  return result;
}

unint64_t sub_1000CEA0C()
{
  result = qword_10011AE10;
  if (!qword_10011AE10)
  {
    sub_1000CEBC8(255, &qword_10011ADF0, sub_1000CE914, sub_1000CE93C, &type metadata accessor for _ConditionalContent);
    sub_1000CF764(&qword_10011AE18, sub_1000CE914, sub_1000CEB08);
    sub_1000CEB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AE10);
  }

  return result;
}

unint64_t sub_1000CEB08()
{
  result = qword_10011AE20;
  if (!qword_10011AE20)
  {
    sub_1000CE93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AE20);
  }

  return result;
}

void sub_1000CEBC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1000CEC88(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1000CE6E0(255, a3, a4, a5);
    v6 = sub_1000DB650();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000CECE4()
{
  if (!qword_10011AE40)
  {
    sub_1000CED60(255, &qword_10011AE48, sub_1000CEDC4);
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AE40);
    }
  }
}

void sub_1000CED60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000CEDC4()
{
  if (!qword_10011AE50)
  {
    sub_1000DB570();
    sub_1000CF1B8(&qword_10011AE58, &type metadata accessor for Divider);
    sub_1000CEE94();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AE50);
    }
  }
}

unint64_t sub_1000CEE94()
{
  result = qword_10011AE60;
  if (!qword_10011AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AE60);
  }

  return result;
}

void sub_1000CEEE8()
{
  if (!qword_10011AE68)
  {
    sub_1000CE914(255);
    sub_1000CF764(&qword_10011AE18, sub_1000CE914, sub_1000CEB08);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AE68);
    }
  }
}

void sub_1000CEFA4()
{
  if (!qword_10011AE70)
  {
    sub_1000CE6E0(255, &qword_10011AE78, sub_1000CECE4, sub_1000CF02C);
    v0 = sub_1000DB650();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AE70);
    }
  }
}

void sub_1000CF02C()
{
  if (!qword_10011AE80)
  {
    sub_1000CF0E8(255);
    sub_1000CF764(&qword_10011AE90, sub_1000CF0E8, sub_1000177AC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AE80);
    }
  }
}

void sub_1000CF110(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1000CF714(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000CF1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CF200(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CF260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CF2C0@<X0>(void *a1@<X8>)
{
  result = sub_1000DAAC0();
  *a1 = v3;
  return result;
}

uint64_t sub_1000CF2EC(uint64_t a1, uint64_t a2)
{
  sub_1000CED60(0, &qword_10011AE48, sub_1000CEDC4);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CF374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CF3E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000CF430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1000CF4CC()
{
  if (!qword_10011AEB8)
  {
    sub_1000CE6A4(255);
    sub_1000CF1B8(&qword_10011AEC0, sub_1000CE6A4);
    v0 = sub_1000DB4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AEB8);
    }
  }
}

unint64_t sub_1000CF598()
{
  result = qword_10011AEC8;
  if (!qword_10011AEC8)
  {
    sub_1000CED60(255, &qword_10011AED0, sub_1000CF674);
    sub_1000CF764(&qword_10011AEE8, sub_1000CF674, sub_1000CF7E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AEC8);
  }

  return result;
}

void sub_1000CF69C()
{
  if (!qword_10011AEE0)
  {
    sub_1000CF110(255, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AEE0);
    }
  }
}

void sub_1000CF714(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000CF764(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000CF7E4()
{
  result = qword_10011AEF0;
  if (!qword_10011AEF0)
  {
    sub_1000CF69C();
    sub_1000CF884();
    sub_1000CF8D8(&qword_1001159D0, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AEF0);
  }

  return result;
}

unint64_t sub_1000CF884()
{
  result = qword_10011AEF8;
  if (!qword_10011AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AEF8);
  }

  return result;
}

uint64_t sub_1000CF8D8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000CF110(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000CF970()
{
  if (!qword_10011AF08)
  {
    sub_1000CF9EC();
    v0 = sub_1000DA6A0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AF08);
    }
  }
}

unint64_t sub_1000CF9EC()
{
  result = qword_10011AF10;
  if (!qword_10011AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AF10);
  }

  return result;
}

unint64_t sub_1000CFA44()
{
  result = qword_10011AF18;
  if (!qword_10011AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AF18);
  }

  return result;
}

uint64_t sub_1000CFAC4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000CFC7C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_1000CFC7C(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for DetailTimelineEntry();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1000CFC7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000CFCF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000CFC7C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1000CFC7C(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for DetailTimelineEntry();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for DetailComplicationContentView()
{
  result = qword_10011AF78;
  if (!qword_10011AF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CFEF4()
{
  sub_1000CFC7C(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000CFC7C(319, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DetailTimelineEntry();
      if (v2 <= 0x3F)
      {
        sub_10002F2F8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000D0024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000D488C(0, &qword_1001197B8, &type metadata accessor for _ConditionalContent.Storage);
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v47 - v7;
  sub_1000A5980(0, &qword_1001197C0, &type metadata accessor for _ConditionalContent.Storage);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v47 - v11;
  sub_1000A4B80(0);
  v47[2] = v13;
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002D6E4();
  v18 = v17;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = (v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1 + *(type metadata accessor for DetailComplicationContentView() + 24);
  v23 = type metadata accessor for DetailTimelineEntry();
  v24 = *(v22 + *(v23 + 20) + 137);
  if (v24 == 2)
  {
    if (*(v22 + *(v23 + 32)) == 1)
    {
      sub_1000DB050();
      sub_1000DAFD0();
      sub_1000DB010();

      v25 = sub_1000DB100();
      v27 = v26;
      v29 = v28;
      v31 = v30;

      *&v48 = v25;
      *(&v48 + 1) = v27;
      *&v49 = v29 & 1;
      *(&v49 + 1) = v31;
      v50 = 0;
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v50 = 1;
    }

    sub_1000DAD90();
    v38 = v52;
    v39 = v53;
    *v8 = v51;
    *(v8 + 1) = v38;
    v8[32] = v39;
    swift_storeEnumTagMultiPayload();
    sub_1000D525C(0, &qword_100119730, &type metadata for Text, &type metadata for EmptyView, &type metadata accessor for _ConditionalContent);
    sub_1000A59E4();
    sub_1000A5B0C();
    return sub_1000DAD90();
  }

  else
  {
    v47[0] = v5;
    v47[1] = a2;
    if (v24)
    {
      v32 = sub_1000DB3C0();
      v33 = (v21 + *(v18 + 36));
      sub_1000A4C0C(0);
      v35 = *(v34 + 28);
      v36 = enum case for Image.Scale.small(_:);
      v37 = sub_1000DB410();
      (*(*(v37 - 8) + 104))(v33 + v35, v36, v37);
      *v33 = swift_getKeyPath();
      *v21 = v32;
    }

    else
    {
      v41 = sub_1000DB3C0();
      v42 = (v21 + *(v18 + 36));
      sub_1000A4C0C(0);
      v44 = *(v43 + 28);
      v45 = enum case for Image.Scale.small(_:);
      v46 = sub_1000DB410();
      (*(*(v46 - 8) + 104))(v42 + v44, v45, v46);
      *v42 = swift_getKeyPath();
      *v21 = v41;
    }

    sub_1000D6014(v21, v12, sub_10002D6E4);
    swift_storeEnumTagMultiPayload();
    sub_1000A5A5C();
    sub_1000DAD90();
    sub_1000D6014(v16, v8, sub_1000A4B80);
    swift_storeEnumTagMultiPayload();
    sub_1000D525C(0, &qword_100119730, &type metadata for Text, &type metadata for EmptyView, &type metadata accessor for _ConditionalContent);
    sub_1000A59E4();
    sub_1000A5B0C();
    sub_1000DAD90();
    sub_1000D607C(v16, sub_1000A4B80);
    return sub_1000D607C(v21, sub_10002D6E4);
  }
}

uint64_t sub_1000D05A4@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  sub_1000D4D68(0, &qword_10011AFB8, sub_1000D4360, &type metadata for EmptyView, &type metadata accessor for _ConditionalContent.Storage);
  v58 = v2;
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v50 - v4;
  sub_1000D4B70(0);
  v60 = v6;
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4360(0);
  v57 = v9;
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4BAC();
  v55 = v12;
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D6180(0, &qword_10011B100, sub_1000D5360, sub_1000D4B70, &type metadata accessor for _ConditionalContent.Storage);
  v16 = v15;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v50 - v18;
  sub_1000D6180(0, &qword_10011B178, sub_1000D53A8, sub_1000D4BAC, &type metadata accessor for _ConditionalContent.Storage);
  v53 = v20;
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v50 - v22;
  sub_1000D5360(0);
  v25 = v24;
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v54 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D53A8();
  v52 = v28;
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000DB720();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v50 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C4D4(v36);
  v37 = (*(v33 + 88))(v36, v32);
  if (v37 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v38 = type metadata accessor for DetailComplicationContentView();
    v39 = v56;
    sub_1000D1B30(v1 + *(v38 + 24), v56);
    sub_1000D5D54(v39, v5, sub_1000D4360);
    swift_storeEnumTagMultiPayload();
    sub_1000D58C0();
    v40 = v59;
    sub_1000DAD90();
    sub_1000D5D54(v40, v19, sub_1000D4B70);
    swift_storeEnumTagMultiPayload();
    sub_1000D59D0();
    sub_1000D5CD4();
    sub_1000DAD90();
    sub_1000D5EFC(v40, sub_1000D4B70);
    v41 = sub_1000D4360;
LABEL_5:
    v45 = v41;
    v46 = v39;
    return sub_1000D5EFC(v46, v45);
  }

  v42 = v59;
  v50 = v16;
  v56 = v25;
  if (v37 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v43 = type metadata accessor for DetailComplicationContentView();
    v39 = v51;
    sub_1000D14CC(v1 + *(v43 + 24), v51);
    sub_1000D5D54(v39, v23, sub_1000D4BAC);
    swift_storeEnumTagMultiPayload();
    sub_1000D5AA4();
    sub_1000D5BBC();
    v44 = v54;
    sub_1000DAD90();
    sub_1000D5D54(v44, v19, sub_1000D5360);
    swift_storeEnumTagMultiPayload();
    sub_1000D59D0();
    sub_1000D5CD4();
    sub_1000DAD90();
    sub_1000D5EFC(v44, sub_1000D5360);
    v41 = sub_1000D4BAC;
    goto LABEL_5;
  }

  if (v37 != enum case for WidgetFamily.accessoryInline(_:))
  {
    swift_storeEnumTagMultiPayload();
    sub_1000D58C0();
    sub_1000DAD90();
    sub_1000D5D54(v42, v19, sub_1000D4B70);
    swift_storeEnumTagMultiPayload();
    sub_1000D59D0();
    sub_1000D5CD4();
    sub_1000DAD90();
    sub_1000D5EFC(v42, sub_1000D4B70);
    return (*(v33 + 8))(v36, v32);
  }

  v48 = type metadata accessor for DetailComplicationContentView();
  sub_1000D0DAC(v1 + *(v48 + 24), v31);
  sub_1000D5D54(v31, v23, sub_1000D53A8);
  swift_storeEnumTagMultiPayload();
  sub_1000D5AA4();
  sub_1000D5BBC();
  v49 = v54;
  sub_1000DAD90();
  sub_1000D5D54(v49, v19, sub_1000D5360);
  swift_storeEnumTagMultiPayload();
  sub_1000D59D0();
  sub_1000D5CD4();
  sub_1000DAD90();
  sub_1000D5EFC(v49, sub_1000D5360);
  v45 = sub_1000D53A8;
  v46 = v31;
  return sub_1000D5EFC(v46, v45);
}

uint64_t sub_1000D0DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a2;
  v68 = _s11FormatStyleVMa_0();
  v5 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v63 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000DAE60();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  __chkstk_darwin(v7);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000DA980();
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D556C(0);
  v56 = v14;
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D5524(0);
  v19 = v18;
  v58 = *(v18 - 8);
  v20 = *(v58 + 64);
  __chkstk_darwin(v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D5454(0, &qword_10011B118, sub_1000D5524, sub_1000D556C, sub_1000D5760);
  v59 = *(v23 - 8);
  v60 = v23;
  v24 = *(v59 + 64);
  __chkstk_darwin(v23);
  v26 = &v56 - v25;
  sub_1000D53A8();
  v64 = v27;
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v61 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DetailContentViewModel(0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DetailTimelineEntry();
  sub_1000D6014(a1 + *(v34 + 20), v33, type metadata accessor for DetailContentViewModel);
  v67 = v3;
  v70 = v33;
  sub_1000D2468(a1, v3, v33);
  if (*(a1 + *(v34 + 32)) == 1)
  {
    sub_1000DA970();
  }

  else
  {
    v73 = _swiftEmptyArrayStorage;
    sub_1000D5E48(&qword_100115C40, &type metadata accessor for RedactionReasons);
    sub_1000326FC(0);
    sub_1000D5E48(&qword_100115C50, sub_1000326FC);
    sub_1000DBEE0();
  }

  v35 = sub_1000D5760();
  v36 = v56;
  sub_1000DB2F0();
  (*(v57 + 8))(v13, v10);
  sub_1000D607C(v17, sub_1000D556C);
  v37 = v62;
  sub_1000DAE30();
  v73 = v36;
  v74 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000DB2A0();
  (*(v65 + 8))(v37, v66);
  (*(v58 + 8))(v22, v19);
  v39 = *(v70 + 3);
  v73 = *(v70 + 2);
  v74 = v39;
  v71 = v19;
  v72 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100017740();
  v41 = v60;
  v40 = v61;
  sub_1000DB280();
  (*(v59 + 8))(v26, v41);
  v42 = type metadata accessor for DetailComplicationContentView();
  v43 = v67 + *(v42 + 24) + *(v34 + 20);
  v44 = *(v43 + 80);
  v45 = *(v43 + 88);
  v46 = *(v43 + 112);
  LOBYTE(v37) = *(v43 + 120);
  v47 = *(v43 + 128);
  LOBYTE(v41) = *(v43 + 136);
  v48 = v67 + *(v42 + 20);
  v49 = v63;
  sub_10004CF98(v63);
  v50 = v68;
  *(v49 + *(v68 + 20)) = 0;
  *(v49 + v50[6]) = 0;
  *(v49 + v50[7]) = 1;
  v51 = (v49 + v50[8]);
  *v51 = 0;
  v51[1] = 0xE000000000000000;
  v52 = sub_100086C3C(v44, v45, v46, v37, v47, v41);
  v54 = v53;
  sub_1000D607C(v49, _s11FormatStyleVMa_0);
  v73 = v52;
  v74 = v54;
  sub_1000DA920();

  sub_1000D5EFC(v40, sub_1000D53A8);
  return sub_1000D607C(v70, type metadata accessor for DetailContentViewModel);
}

uint64_t sub_1000D14CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1000DAE60();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v45 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000DA980();
  v41 = *(v49 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v49);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4D2C(0);
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4C58(0);
  v15 = v14;
  v42 = *(v14 - 8);
  v16 = *(v42 + 64);
  __chkstk_darwin(v14);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D5454(0, &qword_10011B070, sub_1000D4C58, sub_1000D4D2C, sub_1000D52B0);
  v43 = *(v19 - 8);
  v44 = v19;
  v20 = *(v43 + 64);
  __chkstk_darwin(v19);
  v22 = v40 - v21;
  sub_1000D4BAC();
  v40[1] = v23;
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DetailContentViewModel(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = (v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for DetailTimelineEntry();
  sub_1000D6014(a1 + *(v31 + 20), v30, type metadata accessor for DetailContentViewModel);
  *v13 = sub_1000DAD10();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_1000D5E90(0, &qword_10011B1B8, sub_1000D4E68);
  sub_1000D2D08(a1, v50, v30, &v13[*(v32 + 44)]);
  *&v13[*(v10 + 36)] = xmmword_1000E7760;
  if (*(a1 + *(v31 + 32)) == 1)
  {
    sub_1000DA970();
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
    sub_1000D5E48(&qword_100115C40, &type metadata accessor for RedactionReasons);
    sub_1000326FC(0);
    sub_1000D5E48(&qword_100115C50, sub_1000326FC);
    sub_1000DBEE0();
  }

  v33 = sub_1000D52B0();
  sub_1000DB2F0();
  (*(v41 + 8))(v8, v49);
  sub_1000D607C(v13, sub_1000D4D2C);
  v34 = v45;
  sub_1000DAE30();
  v53 = v10;
  v54 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000DB2A0();
  (*(v46 + 8))(v34, v47);
  (*(v42 + 8))(v18, v15);
  v36 = v30[3];
  v53 = v30[2];
  v54 = v36;
  v51 = v15;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100017740();
  v37 = v44;
  sub_1000DB280();
  (*(v43 + 8))(v22, v37);
  v53 = sub_1000D1FBC();
  v54 = v38;
  sub_1000DA920();

  sub_1000D5EFC(v26, sub_1000D4BAC);
  return sub_1000D607C(v30, type metadata accessor for DetailContentViewModel);
}

uint64_t sub_1000D1B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v5 = _s11FormatStyleVMa_0();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000DAE60();
  v10 = *(v49 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v49);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D445C();
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D43A8();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = *(v47 + 64);
  __chkstk_darwin(v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4360(0);
  v50 = v23;
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v45 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DetailTimelineEntry();
  v26 = (a1 + *(v46 + 20));
  *v18 = sub_1000DB600();
  v18[1] = v27;
  sub_1000D5E90(0, &qword_10011B1D8, sub_1000D44F0);
  sub_1000D36EC(v3, a1, v26, v18 + *(v28 + 44));
  sub_1000DAE30();
  v29 = sub_1000D5E48(&qword_10011B058, sub_1000D445C);
  sub_1000DB2A0();
  (*(v10 + 8))(v13, v49);
  sub_1000D5EFC(v18, sub_1000D445C);
  v30 = v26[3];
  v54 = v26[2];
  v55 = v30;
  v52 = v15;
  v53 = v29;
  swift_getOpaqueTypeConformance2();
  v49 = sub_100017740();
  v31 = v45;
  v32 = v48;
  sub_1000DB280();
  (*(v47 + 8))(v22, v32);
  v33 = type metadata accessor for DetailComplicationContentView();
  v34 = v44 + *(v33 + 24) + *(v46 + 20);
  v35 = *(v34 + 80);
  LOBYTE(v32) = *(v34 + 88);
  v36 = *(v34 + 112);
  LOBYTE(v15) = *(v34 + 120);
  v37 = *(v34 + 128);
  LOBYTE(v26) = *(v34 + 136);
  v38 = v44 + *(v33 + 20);
  sub_10004CF98(v9);
  v9[v6[7]] = 0;
  v9[v6[8]] = 0;
  v9[v6[9]] = 1;
  v39 = &v9[v6[10]];
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  v40 = sub_100086C3C(v35, v32, v36, v15, v37, v26);
  v42 = v41;
  sub_1000D607C(v9, _s11FormatStyleVMa_0);
  v54 = v40;
  v55 = v42;
  sub_1000DA920();

  return sub_1000D5EFC(v31, sub_1000D4360);
}

id sub_1000D1FBC()
{
  v1 = sub_1000D91C0();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v42[2] = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DB900();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v42[1] = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s11FormatStyleVMa_0();
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D5FC4(0, &qword_100115350, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000E08A0;
  v13 = type metadata accessor for DetailComplicationContentView();
  v14 = v0 + *(v13 + 24);
  v15 = v14 + *(type metadata accessor for DetailTimelineEntry() + 20);
  v16 = *(v15 + 80);
  v17 = *(v15 + 88);
  v18 = *(v15 + 112);
  v44 = *(v15 + 120);
  v43 = *(v15 + 128);
  LOBYTE(v14) = *(v15 + 136);
  v19 = v0 + *(v13 + 20);
  sub_10004CF98(v11);
  v11[v8[7]] = 0;
  v11[v8[8]] = 0;
  v11[v8[9]] = 1;
  v20 = v8[10];
  v21 = v12;
  v22 = &v11[v20];
  *v22 = 0;
  *(v22 + 1) = 0xE000000000000000;
  v23 = sub_100086C3C(v16, v17, v18, v44, v43, v14);
  v25 = v24;
  sub_1000D607C(v11, _s11FormatStyleVMa_0);
  *(v12 + 32) = v23;
  *(v12 + 40) = v25;
  if (*(v15 + 72) == 1)
  {
    sub_1000DB8F0();
    sub_1000D9170();
    v27 = sub_1000DB9B0();
LABEL_16:
    *(v21 + 48) = v27;
    *(v21 + 56) = v26;
    v45 = v21;
    sub_1000D5FC4(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v41 = sub_1000DB890();

    return v41;
  }

  v27 = 9666786;
  if (*(v15 + 56))
  {
LABEL_15:
    v26 = 0xA300000000000000;
    goto LABEL_16;
  }

  v28 = *(v15 + 48);
  v29 = v28;
  if (v28 <= 1000000.0)
  {
LABEL_10:
    if (qword_1001140F8 != -1)
    {
      swift_once();
    }

    v36 = sub_10002999C(0, 3, 1, v29);
    [v36 setNumberStyle:1];
    v37 = [objc_allocWithZone(NSNumber) initWithDouble:v29];
    v38 = [v36 stringFromNumber:v37];

    if (v38)
    {
      v27 = sub_1000DB950();
      v40 = v39;

      v26 = v40;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  type metadata accessor for UnitNumberFormatter();
  inited = swift_initStackObject();
  result = [objc_allocWithZone(SCICUNumberFormatter) init];
  *(inited + 16) = result;
  if ((~*&v28 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v28 < 9.22337204e18)
  {
    v32 = result;
    v33 = sub_100045A4C(v28, 0, 0);
    v35 = v34;

    if (v35)
    {
      v26 = v35;
      v27 = v33;
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000D2468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000D5594();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D5DDC(0, &qword_10011B1A8, sub_1000D5594, &type metadata for Text, &type metadata accessor for _ConditionalContent.Storage);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v19[-v12];
  if (*(a1 + *(type metadata accessor for DetailTimelineEntry() + 32)) == 1)
  {
    sub_1000DACD0();
    *v13 = sub_1000DB160();
    *(v13 + 1) = v14;
    v13[16] = v15 & 1;
    *(v13 + 3) = v16;
    swift_storeEnumTagMultiPayload();
    sub_1000D5E48(&qword_10011B170, sub_1000D5594);
    return sub_1000DAD90();
  }

  else
  {
    *v9 = sub_1000DAC80();
    *(v9 + 1) = 0;
    v9[16] = 1;
    sub_1000D5E90(0, &qword_10011B1B0, sub_1000D5628);
    sub_1000D2754(a2, a3, &v9[*(v18 + 44)]);
    sub_1000D6014(v9, v13, sub_1000D5594);
    swift_storeEnumTagMultiPayload();
    sub_1000D5E48(&qword_10011B170, sub_1000D5594);
    sub_1000DAD90();
    return sub_1000D607C(v9, sub_1000D5594);
  }
}

uint64_t sub_1000D2754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = _s11FormatStyleVMa_0();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000D9690();
  v55 = *(v52 - 8);
  v10 = *(v55 + 64);
  __chkstk_darwin(v52);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000DACC0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1000A4A60();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v56 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v53 = &v49 - v19;
  sub_1000D0024(a1, &v49 - v19);
  sub_1000DACB0();
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  sub_1000DACA0(v77);
  sub_1000DAC90(*a2);
  v78._countAndFlagsBits = 32;
  v78._object = 0xE100000000000000;
  sub_1000DACA0(v78);
  v20 = *(a2 + 80);
  v51 = *(a2 + 88);
  v21 = *(a2 + 112);
  v50 = *(a2 + 120);
  v22 = *(a2 + 128);
  LOBYTE(a2) = *(a2 + 136);
  v23 = a1 + *(type metadata accessor for DetailComplicationContentView() + 20);
  sub_10004CF98(v12);
  v24 = v52;
  (*(v55 + 16))(v9, v12, v52);
  v9[v6[7]] = 0;
  v9[v6[8]] = 0;
  v9[v6[9]] = 0;
  v25 = &v9[v6[10]];
  *v25 = 9666786;
  *(v25 + 1) = 0xA300000000000000;
  v26 = sub_100086C3C(v20, v51, v21, v50, v22, a2);
  v28 = v27;
  sub_1000D607C(v9, _s11FormatStyleVMa_0);
  (*(v55 + 8))(v12, v24);
  v79._countAndFlagsBits = v26;
  v79._object = v28;
  sub_1000DAC90(v79);

  v80._countAndFlagsBits = 0;
  v80._object = 0xE000000000000000;
  sub_1000DACA0(v80);
  sub_1000DACE0();
  v29 = sub_1000DB160();
  v31 = v30;
  LOBYTE(v26) = v32;
  v34 = v33;
  KeyPath = swift_getKeyPath();
  v55 = swift_getKeyPath();
  LOBYTE(v65[0]) = v26 & 1;
  LOBYTE(v59) = 0;
  v36 = sub_1000DAF70();
  v37 = swift_getKeyPath();
  v38 = v53;
  v39 = v56;
  sub_1000D6014(v53, v56, sub_1000A4A60);
  v40 = v39;
  v41 = v54;
  sub_1000D6014(v40, v54, sub_1000A4A60);
  sub_1000D5664(0, &qword_10011B148, sub_1000A4A60, sub_1000D56E0);
  v43 = v41 + *(v42 + 48);
  *&v59 = v29;
  *(&v59 + 1) = v31;
  LOBYTE(v60) = v26 & 1;
  *(&v60 + 1) = *v58;
  DWORD1(v60) = *&v58[3];
  *(&v60 + 1) = v34;
  *&v61 = KeyPath;
  v44 = KeyPath;
  *(&v61 + 1) = 1;
  LOBYTE(v62) = 0;
  *(&v62 + 1) = *v57;
  DWORD1(v62) = *&v57[3];
  v45 = v55;
  *(&v62 + 1) = v55;
  *&v63 = 0x3FE6000000000000;
  *(&v63 + 1) = v37;
  v64 = v36;
  *(v43 + 80) = v36;
  v46 = v62;
  *(v43 + 32) = v61;
  *(v43 + 48) = v46;
  *(v43 + 64) = v63;
  v47 = v60;
  *v43 = v59;
  *(v43 + 16) = v47;
  sub_1000D6014(&v59, v65, sub_1000D56E0);
  sub_1000D607C(v38, sub_1000A4A60);
  v65[0] = v29;
  v65[1] = v31;
  v66 = v26 & 1;
  *v67 = *v58;
  *&v67[3] = *&v58[3];
  v68 = v34;
  v69 = v44;
  v70 = 1;
  v71 = 0;
  *v72 = *v57;
  *&v72[3] = *&v57[3];
  v73 = v45;
  v74 = 0x3FE6000000000000;
  v75 = v37;
  v76 = v36;
  sub_1000D607C(v65, sub_1000D56E0);
  return sub_1000D607C(v56, sub_1000A4A60);
}

uint64_t sub_1000D2D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  sub_1000D4F38();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v43 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  sub_1000D3044(a1, a2, a3);
  KeyPath = swift_getKeyPath();
  sub_1000D4FB8();
  v16 = &v13[*(v15 + 36)];
  *v16 = KeyPath;
  *(v16 + 1) = 1;
  v16[16] = 0;
  v17 = sub_1000DB090();
  v18 = swift_getKeyPath();
  v19 = &v13[*(v8 + 44)];
  *v19 = v18;
  v19[1] = v17;
  v20 = a3[7];
  v21 = a3[8];
  v22 = a3[9];
  v55 = a3[6];
  v56 = v20;
  v57 = v21;
  v58 = v22;
  LOBYTE(v45) = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = xmmword_1000DFDC0;
  v50 = 0xA300000000000000;
  v51 = 9666786;
  v52 = 0xA300000000000000;
  v53 = 9666786;
  v54 = 0xA300000000000000;
  sub_10002B054(v55, v20, v21, v22);
  sub_100036068();
  sub_1000D5E48(&qword_100115F00, sub_100036068);
  sub_10003619C();
  v23 = sub_1000DB150();
  v25 = v24;
  LOBYTE(v17) = v26;
  sub_1000DAF90();
  v27 = sub_1000DB100();
  v29 = v28;
  v31 = v30;

  sub_100017794(v23, v25, v17 & 1);

  v45 = sub_1000DADD0();
  v32 = sub_1000DB0E0();
  v34 = v33;
  LOBYTE(a1) = v35;
  v37 = v36;
  sub_100017794(v27, v29, v31 & 1);

  v38 = v43;
  sub_1000D6014(v13, v43, sub_1000D4F38);
  v39 = v44;
  sub_1000D6014(v38, v44, sub_1000D4F38);
  sub_1000D4E9C();
  v41 = v39 + *(v40 + 48);
  *v41 = v32;
  *(v41 + 8) = v34;
  *(v41 + 16) = a1 & 1;
  *(v41 + 24) = v37;
  *(v41 + 32) = xmmword_1000E7770;
  sub_1000178C0(v32, v34, a1 & 1);

  sub_1000D607C(v13, sub_1000D4F38);
  sub_100017794(v32, v34, a1 & 1);

  return sub_1000D607C(v38, sub_1000D4F38);
}

uint64_t sub_1000D3044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000D50D4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D5DDC(0, &qword_10011B1C0, sub_1000D50D4, &type metadata for Text, &type metadata accessor for _ConditionalContent.Storage);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v19[-v12];
  if (*(a1 + *(type metadata accessor for DetailTimelineEntry() + 32)) == 1)
  {
    sub_1000DACD0();
    *v13 = sub_1000DB160();
    *(v13 + 1) = v14;
    v13[16] = v15 & 1;
    *(v13 + 3) = v16;
    swift_storeEnumTagMultiPayload();
    sub_1000D5E48(&qword_10011B1D0, sub_1000D50D4);
    return sub_1000DAD90();
  }

  else
  {
    *v9 = sub_1000DAC80();
    *(v9 + 1) = 0x4000000000000000;
    v9[16] = 0;
    sub_1000D5E90(0, &qword_10011B1C8, sub_1000D5168);
    sub_1000D3338(a2, a3, &v9[*(v18 + 44)]);
    sub_1000D6014(v9, v13, sub_1000D50D4);
    swift_storeEnumTagMultiPayload();
    sub_1000D5E48(&qword_10011B1D0, sub_1000D50D4);
    sub_1000DAD90();
    return sub_1000D607C(v9, sub_1000D50D4);
  }
}

uint64_t sub_1000D3338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = _s11FormatStyleVMa_0();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A4A60();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  v45 = &v44 - v14;
  sub_1000D0024(a1, &v44 - v14);
  v16 = *a2;
  v51 = *(a2 + 8);
  v52 = v16;

  sub_1000DB600();
  sub_1000DA7A0();
  v17 = *(a2 + 96);
  v67[0] = *(a2 + 80);
  v67[1] = v17;
  v19 = *(a2 + 80);
  v18 = *(a2 + 96);
  v68[0] = *(a2 + 112);
  *(v68 + 9) = *(a2 + 121);
  v49 = v60;
  v50 = v58;
  v47 = v63;
  v48 = v62;
  v66 = 1;
  v65 = v59;
  v64 = v61;
  v55 = v19;
  v56 = v18;
  v57[0] = *(a2 + 112);
  *(v57 + 9) = *(a2 + 121);
  v20 = *(type metadata accessor for DetailComplicationContentView() + 20);
  sub_10002B068(v67, &v54);
  sub_10004CF98(v8);
  v8[v5[5]] = 0;
  v8[v5[6]] = 0;
  v8[v5[7]] = 0;
  v21 = &v8[v5[8]];
  *v21 = 9666786;
  *(v21 + 1) = 0xA300000000000000;
  sub_1000D5E48(&qword_1001195A0, _s11FormatStyleVMa_0);
  sub_1000A0A9C();
  v22 = sub_1000DB150();
  v24 = v23;
  LOBYTE(v20) = v25;
  v27 = v26;
  v46 = v12;
  sub_1000D6014(v15, v12, sub_1000A4A60);
  LOBYTE(v55) = 0;
  LOBYTE(v15) = v66;
  v28 = v65;
  v29 = v64;
  v30 = v12;
  v31 = v53;
  sub_1000D6014(v30, v53, sub_1000A4A60);
  sub_1000D519C();
  v33 = v31;
  v34 = v31 + v32[12];
  v35 = v51;
  v36 = v52;
  *v34 = v52;
  *(v34 + 8) = v35;
  *(v34 + 16) = 0;
  *(v34 + 24) = _swiftEmptyArrayStorage;
  v37 = v33 + v32[16];
  *v37 = 0;
  *(v37 + 8) = v15;
  v38 = v49;
  *(v37 + 16) = v50;
  *(v37 + 24) = v28;
  *(v37 + 32) = v38;
  *(v37 + 40) = v29;
  v39 = v47;
  *(v37 + 48) = v48;
  *(v37 + 56) = v39;
  v40 = v33 + v32[20];
  *v40 = v22;
  *(v40 + 8) = v24;
  LOBYTE(v20) = v20 & 1;
  *(v40 + 16) = v20;
  *(v40 + 24) = v27;
  v41 = v33 + v32[24];
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = v35;
  sub_1000178C0(v36, v35, 0);

  sub_1000178C0(v22, v24, v20);

  sub_1000D607C(v45, sub_1000A4A60);
  sub_100017794(v22, v24, v20);

  sub_100017794(v36, v42, v55);

  return sub_1000D607C(v46, sub_1000A4A60);
}

uint64_t sub_1000D36EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v36 = a4;
  sub_1000D46BC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4588();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = sub_1000DB6C0();
  v18 = *(v17 - 8);
  v19 = v18[8];
  __chkstk_darwin(v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v33 - v23;
  sub_1000DB6B0();
  *v8 = sub_1000DAD00();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_1000D5E90(0, &qword_10011B1E0, sub_1000D4750);
  sub_1000D3A6C(a1, v34, v35, &v8[*(v25 + 44)]);
  sub_1000D5E48(&qword_10011B048, sub_1000D46BC);
  sub_1000DB230();
  sub_1000D5EFC(v8, sub_1000D46BC);
  KeyPath = swift_getKeyPath();
  v27 = &v16[*(v10 + 44)];
  *v27 = KeyPath;
  *(v27 + 1) = 1;
  v27[16] = 0;
  v28 = v18[2];
  v28(v21, v24, v17);
  sub_1000D5D54(v16, v13, sub_1000D4588);
  v29 = v36;
  v28(v36, v21, v17);
  sub_1000D5664(0, &qword_10011AFE0, &type metadata accessor for AccessoryWidgetBackground, sub_1000D4588);
  sub_1000D5D54(v13, &v29[*(v30 + 48)], sub_1000D4588);
  sub_1000D5EFC(v16, sub_1000D4588);
  v31 = v18[1];
  v31(v24, v17);
  sub_1000D5EFC(v13, sub_1000D4588);
  return (v31)(v21, v17);
}

uint64_t sub_1000D3A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a4;
  v7 = _s11FormatStyleVMa_0();
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4CA0(0, &qword_10011B018, sub_1000D4928, sub_1000D49E0);
  v108 = *(v11 - 8);
  v109 = v11;
  v12 = *(v108 + 64);
  __chkstk_darwin(v11);
  v113 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v114 = &v103 - v15;
  sub_1000A4A60();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4850(0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v112 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v103 - v25;
  __chkstk_darwin(v27);
  v29 = &v103 - v28;
  v110 = a1;
  sub_1000D0024(a1, v19);
  if (*(a2 + *(type metadata accessor for DetailTimelineEntry() + 32)))
  {
    v30 = 0.0;
  }

  else
  {
    v30 = -2.0;
  }

  sub_1000D5F5C(v19, v26, sub_1000A4A60);
  v31 = &v26[*(v21 + 44)];
  *v31 = 0;
  *(v31 + 1) = v30;
  v111 = v29;
  sub_1000D5F5C(v26, v29, sub_1000D4850);
  v32 = *a3;
  v33 = a3[1];

  sub_1000DAF70();
  sub_1000DAF80();

  v34 = sub_1000DB100();
  v103 = v35;
  v104 = v34;
  v37 = v36;
  v39 = v38;

  sub_1000D5FC4(0, &qword_10011B1E8, &type metadata for Edge.Set, &type metadata accessor for _ContiguousArrayStorage);
  v106 = v40;
  v41 = swift_allocObject();
  v105 = xmmword_1000E08A0;
  *(v41 + 16) = xmmword_1000E08A0;
  v42 = sub_1000DAF20();
  *(v41 + 32) = v42;
  v43 = sub_1000DAF40();
  *(v41 + 33) = v43;
  v44 = sub_1000DAF30();
  sub_1000DAF30();
  if (sub_1000DAF30() != v42)
  {
    v44 = sub_1000DAF30();
  }

  sub_1000DAF30();
  if (sub_1000DAF30() != v43)
  {
    v44 = sub_1000DAF30();
  }

  sub_1000DA690();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v135 = v37 & 1;
  v134 = 0;
  KeyPath = swift_getKeyPath();
  *&v126 = v104;
  *(&v126 + 1) = v103;
  LOBYTE(v127) = v37 & 1;
  *(&v127 + 1) = v39;
  LOBYTE(v128[0]) = v44;
  *(&v128[0] + 1) = v46;
  *&v128[1] = v48;
  *(&v128[1] + 1) = v50;
  *&v129 = v52;
  BYTE8(v129) = 0;
  *&v130 = KeyPath;
  *(&v130 + 1) = 0x3FD999999999999ALL;
  sub_1000D4928();
  sub_1000D49E0();
  sub_1000DB1F0();
  v131[2] = v128[0];
  v131[3] = v128[1];
  v131[4] = v129;
  v131[5] = v130;
  v131[0] = v126;
  v131[1] = v127;
  sub_1000D607C(v131, sub_1000D4928);
  v54 = *(a3 + 6);
  v132[0] = *(a3 + 5);
  v132[1] = v54;
  v56 = *(a3 + 5);
  v55 = *(a3 + 6);
  v133[0] = *(a3 + 7);
  *(v133 + 9) = *(a3 + 121);
  v126 = v56;
  v127 = v55;
  v128[0] = *(a3 + 7);
  *(v128 + 9) = *(a3 + 121);
  v57 = *(type metadata accessor for DetailComplicationContentView() + 20);
  sub_10002B068(v132, &v115);
  sub_10004CF98(v10);
  v10[v7[5]] = 1;
  v10[v7[6]] = 1;
  v10[v7[7]] = 0;
  v58 = &v10[v7[8]];
  *v58 = 9666786;
  *(v58 + 1) = 0xA300000000000000;
  sub_1000D5E48(&qword_1001195A0, _s11FormatStyleVMa_0);
  sub_1000A0A9C();
  v59 = sub_1000DB150();
  v61 = v60;
  v63 = v62;
  sub_1000DB050();
  sub_1000DAFD0();
  sub_1000DB010();

  v64 = sub_1000DB100();
  v103 = v65;
  v104 = v64;
  v67 = v66;
  v110 = v68;

  sub_100017794(v59, v61, v63 & 1);

  v69 = swift_allocObject();
  *(v69 + 16) = v105;
  v70 = sub_1000DAF20();
  *(v69 + 32) = v70;
  v71 = sub_1000DAF40();
  *(v69 + 33) = v71;
  v72 = sub_1000DAF30();
  sub_1000DAF30();
  if (sub_1000DAF30() != v70)
  {
    v72 = sub_1000DAF30();
  }

  sub_1000DAF30();
  if (sub_1000DAF30() == v71)
  {
    LODWORD(v106) = v72;
  }

  else
  {
    LODWORD(v106) = sub_1000DAF30();
  }

  sub_1000DA690();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v67 & 1;
  v124 = v67 & 1;
  LODWORD(v105) = v67 & 1;
  v121 = 0;
  v82 = swift_getKeyPath();
  v83 = v112;
  sub_1000D6014(v111, v112, sub_1000D4850);
  v85 = v108;
  v84 = v109;
  v86 = *(v108 + 16);
  v87 = v113;
  v86(v113, v114, v109);
  v88 = v83;
  v89 = v107;
  sub_1000D6014(v88, v107, sub_1000D4850);
  sub_1000D4784();
  v91 = v90;
  v86((v89 + *(v90 + 48)), v87, v84);
  v92 = (v89 + *(v91 + 64));
  v93 = v103;
  v94 = v104;
  *&v115 = v104;
  *(&v115 + 1) = v103;
  LOBYTE(v116) = v81;
  *(&v116 + 1) = *v123;
  DWORD1(v116) = *&v123[3];
  v95 = v110;
  *(&v116 + 1) = v110;
  v96 = v106;
  LOBYTE(v117) = v106;
  *(&v117 + 1) = *v122;
  DWORD1(v117) = *&v122[3];
  *(&v117 + 1) = v74;
  *&v118 = v76;
  *(&v118 + 1) = v78;
  *&v119 = v80;
  BYTE8(v119) = 0;
  HIDWORD(v119) = *&v125[3];
  *(&v119 + 9) = *v125;
  *&v120 = v82;
  *(&v120 + 1) = 0x3FD3333333333333;
  v97 = v116;
  *v92 = v115;
  v92[1] = v97;
  v98 = v117;
  v99 = v118;
  v100 = v120;
  v92[4] = v119;
  v92[5] = v100;
  v92[2] = v98;
  v92[3] = v99;
  sub_1000D6014(&v115, &v126, sub_1000D4928);
  v101 = *(v85 + 8);
  v101(v114, v84);
  sub_1000D607C(v111, sub_1000D4850);
  *&v126 = v94;
  *(&v126 + 1) = v93;
  LOBYTE(v127) = v105;
  *(&v127 + 1) = *v123;
  DWORD1(v127) = *&v123[3];
  *(&v127 + 1) = v95;
  LOBYTE(v128[0]) = v96;
  *(v128 + 1) = *v122;
  DWORD1(v128[0]) = *&v122[3];
  *(&v128[0] + 1) = v74;
  *&v128[1] = v76;
  *(&v128[1] + 1) = v78;
  *&v129 = v80;
  BYTE8(v129) = 0;
  *(&v129 + 9) = *v125;
  HIDWORD(v129) = *&v125[3];
  *&v130 = v82;
  *(&v130 + 1) = 0x3FD3333333333333;
  sub_1000D607C(&v126, sub_1000D4928);
  v101(v113, v84);
  return sub_1000D607C(v112, sub_1000D4850);
}

void sub_1000D43A8()
{
  if (!qword_10011AFC8)
  {
    sub_1000D445C();
    sub_1000D5E48(&qword_10011B058, sub_1000D445C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AFC8);
    }
  }
}

void sub_1000D445C()
{
  if (!qword_10011AFD0)
  {
    sub_1000D44F0(255);
    sub_1000D5E48(&qword_10011B050, sub_1000D44F0);
    v0 = sub_1000DB550();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AFD0);
    }
  }
}

void sub_1000D452C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1000D5664(255, a3, a4, a5);
    v6 = sub_1000DB650();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000D4588()
{
  if (!qword_10011AFE8)
  {
    sub_1000D4608();
    sub_1000D4B04(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AFE8);
    }
  }
}

void sub_1000D4608()
{
  if (!qword_10011AFF0)
  {
    sub_1000D46BC();
    sub_1000D5E48(&qword_10011B048, sub_1000D46BC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AFF0);
    }
  }
}

void sub_1000D46BC()
{
  if (!qword_10011AFF8)
  {
    sub_1000D4750(255);
    sub_1000D5E48(&qword_10011B040, sub_1000D4750);
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AFF8);
    }
  }
}

void sub_1000D4784()
{
  if (!qword_10011B008)
  {
    sub_1000D4850(255);
    sub_1000D4CA0(255, &qword_10011B018, sub_1000D4928, sub_1000D49E0);
    sub_1000D4928();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10011B008);
    }
  }
}

void sub_1000D488C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1000A4B80(255);
    v7 = v6;
    sub_1000D525C(255, &qword_100119730, &type metadata for Text, &type metadata for EmptyView, &type metadata accessor for _ConditionalContent);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000D4928()
{
  if (!qword_10011B020)
  {
    sub_1000D525C(255, &qword_10011B028, &type metadata for Text, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
    sub_1000D5FC4(255, &qword_100115918, &type metadata for CGFloat, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B020);
    }
  }
}

unint64_t sub_1000D49E0()
{
  result = qword_10011B030;
  if (!qword_10011B030)
  {
    sub_1000D4928();
    sub_1000D4A60();
    sub_1000A50EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B030);
  }

  return result;
}

unint64_t sub_1000D4A60()
{
  result = qword_10011B038;
  if (!qword_10011B038)
  {
    sub_1000D525C(255, &qword_10011B028, &type metadata for Text, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B038);
  }

  return result;
}

void sub_1000D4B04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1000D5FC4(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000D4BAC()
{
  if (!qword_10011B068)
  {
    sub_1000D5454(255, &qword_10011B070, sub_1000D4C58, sub_1000D4D2C, sub_1000D52B0);
    sub_1000DAEB0();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B068);
    }
  }
}

void sub_1000D4CA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1000D4D68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1000D4DD4()
{
  if (!qword_10011B088)
  {
    sub_1000D4E68(255);
    sub_1000D5E48(&qword_10011B0E8, sub_1000D4E68);
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B088);
    }
  }
}

void sub_1000D4E9C()
{
  if (!qword_10011B098)
  {
    sub_1000D4F38();
    sub_1000D525C(255, &qword_10011B0E0, &type metadata for Text, &type metadata for _OffsetEffect, &type metadata accessor for ModifiedContent);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011B098);
    }
  }
}

void sub_1000D4F38()
{
  if (!qword_10011B0A0)
  {
    sub_1000D4FB8();
    sub_1000D4B04(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B0A0);
    }
  }
}

void sub_1000D4FB8()
{
  if (!qword_10011B0A8)
  {
    sub_1000D505C(255, &qword_10011B0B0, &qword_10011B0B8, sub_1000D50D4);
    sub_1000D4B04(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B0A8);
    }
  }
}

void sub_1000D505C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1000D5DDC(255, a3, a4, &type metadata for Text, &type metadata accessor for _ConditionalContent);
    v5 = sub_1000DB3A0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000D50D4()
{
  if (!qword_10011B0C0)
  {
    sub_1000D5168(255);
    sub_1000D5E48(&qword_10011B0D8, sub_1000D5168);
    v0 = sub_1000DB4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B0C0);
    }
  }
}

void sub_1000D519C()
{
  if (!qword_10011B0D0)
  {
    sub_1000A4A60();
    sub_1000D525C(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_10011B0D0);
    }
  }
}

void sub_1000D525C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1000D52B0()
{
  result = qword_10011B0F0;
  if (!qword_10011B0F0)
  {
    sub_1000D4D2C(255);
    sub_1000D5E48(&qword_10011B0F8, sub_1000D4DD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B0F0);
  }

  return result;
}

void sub_1000D53A8()
{
  if (!qword_10011B110)
  {
    sub_1000D5454(255, &qword_10011B118, sub_1000D5524, sub_1000D556C, sub_1000D5760);
    sub_1000DAEB0();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B110);
    }
  }
}

void sub_1000D5454(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1000D5594()
{
  if (!qword_10011B138)
  {
    sub_1000D5628(255);
    sub_1000D5E48(&qword_10011B158, sub_1000D5628);
    v0 = sub_1000DB4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B138);
    }
  }
}

void sub_1000D5664(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1000D56E0()
{
  if (!qword_10011B150)
  {
    sub_10002D86C();
    sub_1000D4B04(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B150);
    }
  }
}

unint64_t sub_1000D5760()
{
  result = qword_10011B160;
  if (!qword_10011B160)
  {
    sub_1000D556C(255);
    sub_1000D57D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B160);
  }

  return result;
}

unint64_t sub_1000D57D8()
{
  result = qword_10011B168;
  if (!qword_10011B168)
  {
    sub_1000D5DDC(255, &qword_10011B130, sub_1000D5594, &type metadata for Text, &type metadata accessor for _ConditionalContent);
    sub_1000D5E48(&qword_10011B170, sub_1000D5594);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B168);
  }

  return result;
}

unint64_t sub_1000D58C0()
{
  result = qword_10011B180;
  if (!qword_10011B180)
  {
    sub_1000D4360(255);
    sub_1000D445C();
    sub_1000D5E48(&qword_10011B058, sub_1000D445C);
    swift_getOpaqueTypeConformance2();
    sub_1000D5E48(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B180);
  }

  return result;
}

uint64_t sub_1000D5A18(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000D5AA4()
{
  result = qword_10011B190;
  if (!qword_10011B190)
  {
    sub_1000D53A8();
    sub_1000D5524(255);
    sub_1000D556C(255);
    sub_1000D5760();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000D5E48(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B190);
  }

  return result;
}

unint64_t sub_1000D5BBC()
{
  result = qword_10011B198;
  if (!qword_10011B198)
  {
    sub_1000D4BAC();
    sub_1000D4C58(255);
    sub_1000D4D2C(255);
    sub_1000D52B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000D5E48(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B198);
  }

  return result;
}

unint64_t sub_1000D5CD4()
{
  result = qword_10011B1A0;
  if (!qword_10011B1A0)
  {
    sub_1000D4B70(255);
    sub_1000D58C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B1A0);
  }

  return result;
}

uint64_t sub_1000D5D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000D5DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1000D5E48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000D5E90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DA800();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000D5EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000D5F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000D5FC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000D6014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D607C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000D6180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

id sub_1000D6204()
{
  result = sub_1000D6288();
  qword_100129058 = result;
  return result;
}

id sub_1000D6230()
{
  result = sub_1000D6288();
  qword_100129060 = result;
  return result;
}

id sub_1000D625C()
{
  result = sub_1000D6288();
  qword_100129068 = result;
  return result;
}

id sub_1000D6288()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setNumberStyle:3];
  sub_100096910();
  isa = sub_1000DBE50(100.0).super.super.isa;
  [v0 setMultiplier:isa];

  [v0 setMinimumFractionDigits:2];
  [v0 setMaximumFractionDigits:2];
  v2 = sub_1000DB910();
  [v0 setPositivePrefix:v2];

  v3 = sub_1000DB910();
  [v0 setNegativePrefix:v3];

  return v0;
}

uint64_t sub_1000D63C0(char a1, double a2, double a3)
{
  v3 = a2 - a3;
  v4 = a3 / v3;
  if (v3 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  if (a1)
  {
    if (qword_1001141E8 != -1)
    {
      swift_once();
    }

    v6 = qword_100129060;
    v7 = [objc_allocWithZone(NSNumber) initWithDouble:v5];
    v8 = [v6 stringFromNumber:v7];
  }

  else
  {
    if (qword_1001141E0 != -1)
    {
      swift_once();
    }

    v9 = qword_100129058;
    v7 = [objc_allocWithZone(NSNumber) initWithDouble:v5];
    v8 = [v9 stringFromNumber:v7];
  }

  v10 = v8;

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1000DB950();

  return v11;
}

uint64_t sub_1000D6520(double a1, double a2)
{
  v3 = a1 - a2;
  v4 = a2 / v3;
  if (v3 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  if (a2 >= 0.0)
  {
    v25._countAndFlagsBits = 0x80000001000E91D0;
    v8._countAndFlagsBits = 28789;
    v8._object = 0xE200000000000000;
  }

  else
  {
    v25._countAndFlagsBits = 0x80000001000E9190;
    v8._countAndFlagsBits = 1853321060;
    v8._object = 0xE400000000000000;
  }

  v28.value._countAndFlagsBits = 0;
  v28.value._object = 0;
  v9.super.isa = v7;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v10 = sub_1000D8E50(v8, v28, v9, v30, v25);
  v12 = v11;

  if (qword_1001141F0 != -1)
  {
    swift_once();
  }

  v13 = qword_100129068;
  v14 = [objc_allocWithZone(NSNumber) initWithDouble:v5];
  v15 = [v13 stringFromNumber:v14];

  if (v15)
  {
    v16 = sub_1000DB950();
    v18 = v17;

    v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v26._countAndFlagsBits = 0x80000001000EA870;
    v27._countAndFlagsBits = 0x4025204025;
    v27._object = 0xE500000000000000;
    v29.value._countAndFlagsBits = 0;
    v29.value._object = 0;
    v20.super.isa = v19;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_1000D8E50(v27, v29, v20, v31, v26);

    sub_1000029E8();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000E08A0;
    *(v21 + 56) = &type metadata for String;
    v22 = sub_100002AAC();
    *(v21 + 32) = v10;
    *(v21 + 40) = v12;
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v22;
    *(v21 + 64) = v22;
    *(v21 + 72) = v16;
    *(v21 + 80) = v18;
    v23 = sub_1000DB920();
  }

  else
  {

    return 0;
  }

  return v23;
}

uint64_t sub_1000D67E0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000D68D4;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000D68D4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1000D69EC, 0, 0);
}

uint64_t sub_1000D69EC()
{
  v1 = [*(v0 + 16) filePath];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(UIImage) initWithContentsOfFile:v1];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000D6A94(uint64_t a1, void *a2)
{
  sub_1000D6C54();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1000D6D40;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6DA0;
  aBlock[3] = &unk_10010D030;
  v10 = _Block_copy(aBlock);

  v11 = [a2 downloadIfNeededWithCompletion:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void sub_1000D6C54()
{
  if (!qword_10011B298)
  {
    v0 = sub_1000DBC00();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B298);
    }
  }
}

uint64_t sub_1000D6CB8()
{
  sub_1000D6C54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D6D40()
{
  sub_1000D6C54();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return sub_1000DBBF0();
}

uint64_t sub_1000D6DA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000D6DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D6E68(uint64_t a1)
{
  v2 = sub_1000D9690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2, v8);
  (v11)(v6, v10, v2);
  sub_100098268();
  sub_1000DAC30();
  return (*(v3 + 8))(v10, v2);
}

uint64_t sub_1000D6FAC@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for DetailTimelineProvider(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D7618();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D7798();
  v45 = v11;
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D784C();
  v46 = v15;
  v44 = *(v15 - 8);
  v16 = *(v44 + 64);
  __chkstk_darwin(v15);
  v43 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9970();
  if (qword_1001140A8 != -1)
  {
    swift_once();
  }

  v18 = sub_1000DA370();
  v19 = sub_100015294(v18, qword_100128E20);
  (*(*(v18 - 8) + 16))(v4, v19, v18);
  type metadata accessor for DetailChartWidgetView();
  sub_1000D7750(&qword_10011B2A8, type metadata accessor for DetailChartWidgetView);
  sub_1000D7750(&qword_100116AF0, type metadata accessor for DetailTimelineProvider);
  sub_1000DB770();
  sub_1000DACD0();
  v20 = sub_1000DB160();
  v22 = v21;
  v24 = v23;
  v25 = sub_1000D7750(&qword_10011B2B8, sub_1000D7618);
  sub_1000DAD50();
  sub_100017794(v20, v22, v24 & 1);

  (*(v7 + 8))(v10, v6);
  sub_1000DACD0();
  v26 = sub_1000DB160();
  v28 = v27;
  v30 = v29;
  v48 = v6;
  v49 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v43;
  v33 = v45;
  sub_1000DAD30();
  sub_100017794(v26, v28, v30 & 1);

  (*(v42 + 8))(v14, v33);
  sub_1000D7E6C(0, &qword_100115AB8, &type metadata accessor for WidgetFamily, &type metadata accessor for _ContiguousArrayStorage);
  v34 = sub_1000DB720();
  v35 = *(v34 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000DDD30;
  (*(v35 + 104))(v38 + v37, enum case for WidgetFamily.accessoryRectangular(_:), v34);
  v48 = v33;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v46;
  sub_1000DAD40();

  return (*(v44 + 8))(v32, v39);
}

void sub_1000D7618()
{
  if (!qword_10011B2A0)
  {
    sub_1000D9970();
    type metadata accessor for DetailChartWidgetView();
    sub_1000D7750(&qword_1001152A0, &type metadata accessor for SymbolWidgetConfigurationIntent);
    sub_1000D7750(&qword_10011B2A8, type metadata accessor for DetailChartWidgetView);
    v0 = sub_1000DB780();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B2A0);
    }
  }
}

uint64_t type metadata accessor for DetailChartWidgetView()
{
  result = qword_10011B320;
  if (!qword_10011B320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D7750(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000D7798()
{
  if (!qword_10011B2B0)
  {
    sub_1000D7618();
    sub_1000D7750(&qword_10011B2B8, sub_1000D7618);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011B2B0);
    }
  }
}

void sub_1000D784C()
{
  if (!qword_10011B2C0)
  {
    sub_1000D7798();
    sub_1000D7618();
    sub_1000D7750(&qword_10011B2B8, sub_1000D7618);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011B2C0);
    }
  }
}

uint64_t sub_1000D7954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailTimelineEntry();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D79D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailTimelineEntry();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000D7A44()
{
  result = type metadata accessor for DetailTimelineEntry();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D7AB0()
{
  sub_1000D784C();
  sub_1000D7798();
  sub_1000D7618();
  sub_1000D7750(&qword_10011B2B8, sub_1000D7618);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000D7BBC()
{
  v1 = v0;
  sub_1000D7D90();
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DetailChartComplicationContentView();
  sub_10003D940(v1, v6 + *(v7 + 20));
  *v6 = swift_getKeyPath();
  sub_1000D7E6C(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for DetailTimelineEntry();
  v9 = *(v8 + 28);
  KeyPath = swift_getKeyPath();
  v11 = (v6 + *(v3 + 36));
  sub_1000D7E6C(0, &qword_100115BC0, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for _EnvironmentKeyWritingModifier);
  v13 = *(v12 + 28);
  v14 = sub_1000D9690();
  (*(*(v14 - 8) + 16))(v11 + v13, v1 + v9, v14);
  *v11 = KeyPath;
  v15 = v1 + *(v8 + 20);
  LODWORD(KeyPath) = *(type metadata accessor for DetailContentViewModel(0) + 48);
  sub_1000D7ED0();
  sub_1000DB200();
  return sub_1000D8008(v6);
}

void sub_1000D7D90()
{
  if (!qword_10011B358)
  {
    type metadata accessor for DetailChartComplicationContentView();
    sub_1000D7E6C(255, &qword_100115BC0, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B358);
    }
  }
}

void sub_1000D7E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1000D7ED0()
{
  result = qword_10011B360;
  if (!qword_10011B360)
  {
    sub_1000D7D90();
    sub_1000D7750(&qword_10011B368, type metadata accessor for DetailChartComplicationContentView);
    sub_1000D7F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B360);
  }

  return result;
}

unint64_t sub_1000D7F80()
{
  result = qword_100115C18;
  if (!qword_100115C18)
  {
    sub_1000D7E6C(255, &qword_100115BC0, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115C18);
  }

  return result;
}

uint64_t sub_1000D8008(uint64_t a1)
{
  sub_1000D7D90();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D8064()
{
  sub_1000D7D90();
  sub_1000D7ED0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000D80CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  sub_1000D8710(0, &qword_10011B380, &type metadata accessor for KeyedEncodingContainer);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000D86BC();
  sub_1000DC480();
  v17 = 0;
  sub_1000DC2B0();
  if (!v5)
  {
    v16 = 1;
    sub_1000DC2B0();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000D824C()
{
  if (*v0)
  {
    result = 0x74726F6873;
  }

  else
  {
    result = 0x746361706D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1000D8284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746361706D6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1000DC360() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74726F6873 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000DC360();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D835C(uint64_t a1)
{
  v2 = sub_1000D86BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D8398(uint64_t a1)
{
  v2 = sub_1000D86BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D83D4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1000DC360(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1000DC360();
    }
  }

  return result;
}

uint64_t sub_1000D8478@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000D84C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000D84C8(uint64_t *a1)
{
  sub_1000D8710(0, &qword_10011B370, &type metadata accessor for KeyedDecodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000D86BC();
  sub_1000DC470();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1000DC1E0();
    v12 = 1;
    sub_1000DC1E0();
    (*(v5 + 8))(v8, v4);
  }

  sub_100006D0C(a1);
  return v9;
}

unint64_t sub_1000D86BC()
{
  result = qword_10011B378;
  if (!qword_10011B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B378);
  }

  return result;
}

void sub_1000D8710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000D86BC();
    v7 = a3(a1, &type metadata for SymbolName.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000D8788()
{
  result = qword_10011B388;
  if (!qword_10011B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B388);
  }

  return result;
}

unint64_t sub_1000D87E0()
{
  result = qword_10011B390;
  if (!qword_10011B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B390);
  }

  return result;
}

unint64_t sub_1000D8838()
{
  result = qword_10011B398;
  if (!qword_10011B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B398);
  }

  return result;
}