uint64_t sub_1006CD4AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1006CD508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1006CD5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1006CD67C(uint64_t a1)
{
  result = sub_1006CDB58(&qword_1009647F0, type metadata accessor for GenericProductReviewCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1006CD6D4(uint64_t a1, int a2)
{
  v21 = a2;
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10076664C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  sub_10076331C();
  sub_1007665CC();
  sub_1006CDB58(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v13 = sub_10077124C();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C21C();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    if (v17 > 1.0 || v21 == 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = v21 ^ 1;
    }
  }

  return v15 & 1;
}

BOOL sub_1006CD948()
{
  v0 = sub_10000A5D4(&unk_100946710);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v1 + 8))(v3, v0);
  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_10095CFB0);
  if (swift_dynamicCast())
  {
    sub_100012498(v7, v9);
    sub_10000CF78(v9, v9[3]);
    v4 = sub_10076163C();
    v5 = v4 != 0;
    if (v4)
    {
    }

    sub_10000CD74(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_10000CFBC(v7, &qword_10095CFB8);
    return 0;
  }

  return v5;
}

uint64_t sub_1006CDAE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009647F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006CDB58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s5StateVwet_1(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5StateVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1006CDD14()
{
  result = qword_100964800;
  if (!qword_100964800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100964800);
  }

  return result;
}

unint64_t sub_1006CDD6C()
{
  result = qword_100964808;
  if (!qword_100964808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100964808);
  }

  return result;
}

void sub_1006CDDC0(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    v5 = a1;
    [v4 removeAction:v3 forControlEvents:64];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    v8 = v6;
    [v7 addAction:v8 forControlEvents:64];
  }

LABEL_4:
}

uint64_t sub_1006CDE94(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &unk_1009453D0;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_10077158C();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_10077158C();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_10077158C();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1007714AC();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_1006D21A8();
      for (i = 0; i != v14; ++i)
      {
        sub_10000A5D4(v3);
        v18 = v3;
        v19 = sub_1000FBD70(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_100016F40(0, &qword_1009441F0);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_10077158C();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1006CE168()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_1009A3278);
  sub_10000A61C(v0, qword_1009A3278);
  return sub_10076D3AC();
}

uint64_t sub_1006CE1BC()
{
  sub_10000A5D4(&unk_100945BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100783C60;
  *(v0 + 32) = sub_10076E4CC();
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 48) = sub_10076E88C();
  *(v0 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  result = sub_10076E59C();
  *(v0 + 64) = result;
  *(v0 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  qword_100964810 = v0;
  return result;
}

double sub_1006CE24C()
{
  qword_100964858 = &type metadata for Double;
  unk_100964860 = &protocol witness table for Double;
  qword_100964880 = &type metadata for Double;
  unk_100964888 = &protocol witness table for Double;
  qword_100964868 = 0;
  qword_1009648A8 = &type metadata for Double;
  unk_1009648B0 = &protocol witness table for Double;
  qword_100964890 = 0;
  qword_1009648D0 = &type metadata for Double;
  unk_1009648D8 = &protocol witness table for Double;
  qword_1009648B8 = 0x4000000000000000;
  qword_1009648F8 = &type metadata for Double;
  unk_100964900 = &protocol witness table for Double;
  qword_1009648E0 = 0;
  qword_100964920 = &type metadata for Double;
  unk_100964928 = &protocol witness table for Double;
  qword_100964908 = 0x4026000000000000;
  qword_100964948 = &type metadata for Double;
  unk_100964950 = &protocol witness table for Double;
  qword_100964930 = 0x4026000000000000;
  qword_100964970 = &type metadata for Double;
  unk_100964978 = &protocol witness table for Double;
  qword_100964958 = 0x4026000000000000;
  qword_100964998 = &type metadata for Double;
  unk_1009649A0 = &protocol witness table for Double;
  qword_100964980 = 0x4026000000000000;
  qword_1009649C0 = &type metadata for Double;
  unk_1009649C8 = &protocol witness table for Double;
  qword_1009649A8 = 0x4042000000000000;
  qword_1009649E8 = &type metadata for Double;
  unk_1009649F0 = &protocol witness table for Double;
  qword_1009649D0 = 0x4044000000000000;
  qword_100964A10 = &type metadata for Double;
  unk_100964A18 = &protocol witness table for Double;
  qword_1009649F8 = 0x4032000000000000;
  result = 0.0;
  __asm { FMOV            V1.2D, #16.0 }

  xmmword_100964818 = xmmword_1007B3E00;
  unk_100964828 = _Q1;
  xmmword_100964838 = _Q1;
  return result;
}

double sub_1006CE2EC()
{
  qword_100964A60 = &type metadata for Double;
  unk_100964A68 = &protocol witness table for Double;
  qword_100964A88 = &type metadata for Double;
  unk_100964A90 = &protocol witness table for Double;
  qword_100964A70 = 0;
  qword_100964AB0 = &type metadata for Double;
  unk_100964AB8 = &protocol witness table for Double;
  qword_100964A98 = 0;
  qword_100964AD8 = &type metadata for Double;
  unk_100964AE0 = &protocol witness table for Double;
  qword_100964AC0 = 0x4018000000000000;
  qword_100964B00 = &type metadata for Double;
  unk_100964B08 = &protocol witness table for Double;
  qword_100964AE8 = 0;
  qword_100964B28 = &type metadata for Double;
  unk_100964B30 = &protocol witness table for Double;
  qword_100964B10 = 0x4026000000000000;
  qword_100964B50 = &type metadata for Double;
  unk_100964B58 = &protocol witness table for Double;
  qword_100964B38 = 0x4026000000000000;
  qword_100964B78 = &type metadata for Double;
  unk_100964B80 = &protocol witness table for Double;
  qword_100964B60 = 0x4026000000000000;
  qword_100964BA0 = &type metadata for Double;
  unk_100964BA8 = &protocol witness table for Double;
  qword_100964B88 = 0x4026000000000000;
  qword_100964BC8 = &type metadata for Double;
  unk_100964BD0 = &protocol witness table for Double;
  qword_100964BB0 = 0x4042000000000000;
  qword_100964BF0 = &type metadata for Double;
  unk_100964BF8 = &protocol witness table for Double;
  qword_100964BD8 = 0x4044000000000000;
  qword_100964C18 = &type metadata for Double;
  unk_100964C20 = &protocol witness table for Double;
  qword_100964C00 = 0x4032000000000000;
  __asm { FMOV            V1.2D, #16.0 }

  xmmword_100964A20 = xmmword_1007B3E00;
  *algn_100964A30 = _Q1;
  result = 16.0;
  xmmword_100964A40 = xmmword_1007B3E10;
  return result;
}

double sub_1006CE394()
{
  qword_100964C68 = &type metadata for Double;
  unk_100964C70 = &protocol witness table for Double;
  qword_100964C90 = &type metadata for Double;
  unk_100964C98 = &protocol witness table for Double;
  qword_100964C78 = 0;
  qword_100964CB8 = &type metadata for Double;
  unk_100964CC0 = &protocol witness table for Double;
  qword_100964CA0 = 0;
  qword_100964CE0 = &type metadata for Double;
  unk_100964CE8 = &protocol witness table for Double;
  qword_100964CC8 = 0x4010000000000000;
  qword_100964D08 = &type metadata for Double;
  unk_100964D10 = &protocol witness table for Double;
  qword_100964CF0 = 0;
  qword_100964D30 = &type metadata for Double;
  unk_100964D38 = &protocol witness table for Double;
  qword_100964D18 = 0x4030000000000000;
  qword_100964D58 = &type metadata for Double;
  unk_100964D60 = &protocol witness table for Double;
  qword_100964D40 = 0x4030000000000000;
  qword_100964D80 = &type metadata for Double;
  unk_100964D88 = &protocol witness table for Double;
  qword_100964D68 = 0x4030000000000000;
  qword_100964DA8 = &type metadata for Double;
  unk_100964DB0 = &protocol witness table for Double;
  qword_100964D90 = 0x4030000000000000;
  qword_100964DD0 = &type metadata for Double;
  unk_100964DD8 = &protocol witness table for Double;
  qword_100964DB8 = 0x4042000000000000;
  qword_100964DF8 = &type metadata for Double;
  unk_100964E00 = &protocol witness table for Double;
  qword_100964DE0 = 0x4044000000000000;
  qword_100964E20 = &type metadata for Double;
  unk_100964E28 = &protocol witness table for Double;
  qword_100964E08 = 0x4032000000000000;
  __asm { FMOV            V1.2D, #20.0 }

  xmmword_100964C28 = xmmword_1007B3E20;
  unk_100964C38 = _Q1;
  result = 20.0;
  xmmword_100964C48 = xmmword_1007B3E30;
  return result;
}

double sub_1006CE43C()
{
  qword_100964E70 = &type metadata for Double;
  unk_100964E78 = &protocol witness table for Double;
  qword_100964E98 = &type metadata for Double;
  unk_100964EA0 = &protocol witness table for Double;
  qword_100964E80 = 0;
  qword_100964EC0 = &type metadata for Double;
  unk_100964EC8 = &protocol witness table for Double;
  qword_100964EA8 = 0;
  qword_100964EE8 = &type metadata for Double;
  unk_100964EF0 = &protocol witness table for Double;
  qword_100964ED0 = 0x4018000000000000;
  qword_100964F10 = &type metadata for Double;
  unk_100964F18 = &protocol witness table for Double;
  qword_100964EF8 = 0;
  qword_100964F38 = &type metadata for Double;
  unk_100964F40 = &protocol witness table for Double;
  qword_100964F20 = 0x4026000000000000;
  qword_100964F60 = &type metadata for Double;
  unk_100964F68 = &protocol witness table for Double;
  qword_100964F48 = 0x4026000000000000;
  qword_100964F88 = &type metadata for Double;
  unk_100964F90 = &protocol witness table for Double;
  qword_100964F70 = 0x4026000000000000;
  qword_100964FB0 = &type metadata for Double;
  unk_100964FB8 = &protocol witness table for Double;
  qword_100964F98 = 0x4026000000000000;
  qword_100964FD8 = &type metadata for Double;
  unk_100964FE0 = &protocol witness table for Double;
  qword_100964FC0 = 0x4042000000000000;
  qword_100965000 = &type metadata for Double;
  unk_100965008 = &protocol witness table for Double;
  qword_100964FE8 = 0x4044000000000000;
  qword_100965028 = &type metadata for Double;
  unk_100965030 = &protocol witness table for Double;
  qword_100965010 = 0x4032000000000000;
  xmmword_100964E30 = xmmword_1007B3E20;
  unk_100964E40 = xmmword_1007B3E40;
  result = 20.0;
  xmmword_100964E50 = xmmword_1007B3E50;
  return result;
}

uint64_t sub_1006CE4E8()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_100965038);
  sub_10000A61C(v0, qword_100965038);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006CE64C(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v36 = a1;
  sub_1007639FC();
  if (qword_100940AF0 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0EE0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_10076D9AC();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_10076D9BC();
  v14 = v3[1];
  v14(v5, v2);
  sub_100763ABC();
  if (qword_100940AE8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v6, qword_1009A0EC8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v38);
  v34(v15, v5, v2);
  sub_10076D9BC();
  v14(v5, v2);
  sub_100763A3C();
  v32 = v14;
  if (qword_100940AD8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_1009A0E98);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v38);
  v34(v18, v5, v2);
  sub_10076D9BC();
  v32(v5, v2);
  sub_1007639DC();
  v19 = v11;
  if (qword_100940AE0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v6, qword_1009A0EB0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_10076D9BC();
  v24 = v32;
  v32(v5, v2);
  sub_100763ACC();
  sub_100763A1C();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v38);
  v23(v25, v5, v2);
  sub_10076D9BC();
  v24(v5, v2);
  return sub_100763A2C();
}

uint64_t sub_1006CEC34()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_100965050);
  sub_10000A61C(v0, qword_100965050);
  if (qword_100941518 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_100965038);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

void sub_1006CED98()
{
  v0 = sub_10077111C();
  sub_10000DB18(v0, qword_100965068);
  sub_10000A61C(v0, qword_100965068);
  sub_1006CEDE4();
}

void sub_1006CEDE4()
{
  v0 = sub_10000A5D4(&unk_10095E850);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  sub_1007710CC();
  v3 = sub_10076FF6C();
  v4 = [objc_opt_self() systemImageNamed:v3];

  sub_1007710BC();
  sub_100770FBC();
  sub_100770FFC();
  sub_100770FEC();
  v5 = [objc_opt_self() labelColor];
  sub_10077104C();
  v6 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightBold];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() configurationWithFont:v6 scale:1];
    sub_100770F4C();
    sub_10076E8AC();
    v9 = sub_10076E89C();
    (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
    sub_10077106C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006CEFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10075D9EC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  v7 = objc_opt_self();
  if (v6)
  {
    [v7 fontWithDescriptor:v6 size:0.0];

    v5 = v6;
  }

  else
  {
    [v7 fontWithDescriptor:v5 size:0.0];
  }

  sub_100016BD0();
  return sub_10075D9FC();
}

char *sub_1006CF118(int a1)
{
  v2 = v1;
  v80 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v3 - 8);
  v81 = v73 - v4;
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = v73 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent;
  *(v2 + v12) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent;
  *(v2 + v13) = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView;
  type metadata accessor for AppPromotionFormattedDateView();
  *(v2 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v78 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel;
  v84 = sub_10076D3DC();
  v15 = *(v84 - 8);
  v83 = *(v15 + 56);
  v16 = v15 + 56;
  v83(v11, 1, 1, v84);
  v77 = v16;
  v17 = enum case for DirectionalTextAlignment.none(_:);
  v18 = v6 + 104;
  v82 = *(v6 + 104);
  v74 = enum case for DirectionalTextAlignment.none(_:);
  v75 = v5;
  v82(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = sub_1007626BC();
  v76 = v19;
  v20 = objc_allocWithZone(v19);
  *(v2 + v78) = sub_1007626AC();
  v78 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel;
  v21 = v83;
  v83(v11, 1, 1, v84);
  v22 = v17;
  v23 = v82;
  v73[1] = v18;
  v82(v8, v22, v5);
  v24 = objc_allocWithZone(v19);
  v25 = sub_1007626AC();
  v73[0] = v2;
  *(v2 + v78) = v25;
  v26 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView;
  v27 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *(v2 + v26) = sub_1004760F8(1);
  v78 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel;
  v28 = v84;
  v21(v11, 1, 1, v84);
  v29 = v74;
  v30 = v75;
  v23(v8, v74, v75);
  v31 = v76;
  v32 = objc_allocWithZone(v76);
  v33 = sub_1007626AC();
  v34 = v73[0];
  *(v73[0] + v78) = v33;
  v35 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
  v36 = v28;
  v37 = ObjectType;
  v83(v11, 1, 1, v36);
  v82(v8, v29, v30);
  v38 = objc_allocWithZone(v31);
  v39 = v34;
  *&v34[v35] = sub_1007626AC();
  v40 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton;
  *&v39[v40] = [objc_allocWithZone(UIButton) init];
  v41 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView;
  type metadata accessor for SeparatorView();
  *&v39[v41] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v42 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *&v39[v42] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators] = 0;
  *&v39[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction] = 0;
  v43 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  v44 = enum case for MediaOverlayStyle.matchSystem(_:);
  v45 = sub_10076361C();
  (*(*(v45 - 8) + 104))(&v39[v43], v44, v45);
  v39[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_displayMode] = v80 & 1;
  v85.receiver = v39;
  v85.super_class = v37;
  v46 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v50 = v46;
  [v50 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v50 setClipsToBounds:1];
  v51 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent;
  v52 = *&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent];
  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 systemBackgroundColor];
  [v54 setBackgroundColor:v55];

  [v50 addSubview:*&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent]];
  [v50 addSubview:*&v50[v51]];
  v56 = *&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView];
  LOBYTE(v54) = v56[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  v56[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 1;
  v57 = v56;
  sub_1004B413C(v54);

  v58 = *&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  v59 = [v53 secondaryLabelColor];
  [v58 setTextColor:v59];

  v60 = *&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView];
  v61 = [v53 labelColor];
  v62 = [v61 colorWithAlphaComponent:0.5];

  v63 = *&v60[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor];
  *&v60[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor] = v62;
  v64 = v62;

  [*&v60[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView] setBackgroundColor:v64];
  v65 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton;
  v66 = qword_100941528;
  v67 = *&v50[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton];
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = sub_10077111C();
  v69 = sub_10000A61C(v68, qword_100965068);
  v70 = *(v68 - 8);
  v71 = v81;
  (*(v70 + 16))(v81, v69, v68);
  (*(v70 + 56))(v71, 0, 1, v68);
  sub_10077114C();

  if (qword_1009414F0 != -1)
  {
    swift_once();
  }

  sub_100770C6C();
  swift_unknownObjectRelease();
  [*&v50[v65] setNeedsUpdateConfiguration];
  sub_1006D0D60();
  sub_1006CFA1C();
  sub_1006D12B4();
  sub_1006D14A8();
  [v50 setNeedsLayout];

  return v50;
}

void sub_1006CFA1C()
{
  v1 = v0;
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v48 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView];
  v8 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v9(v7, &v1[v8], v2);
  v10 = v9;
  v49 = v9;
  v11 = sub_10076360C();
  v12 = *(v3 + 8);
  v12(v7, v2);
  [v48 setOverrideUserInterfaceStyle:v11];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent];
  v10(v7, &v1[v8], v2);
  v14 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 24))(v13 + v14, v7, v2);
  swift_endAccess();
  sub_100422A60();
  v12(v7, v2);
  v15 = v50;
  v49(v50, &v1[v8], v2);
  sub_1007635FC();
  v12(v15, v2);
  sub_10076FF9C();
  v16 = sub_10076FF6C();

  v17 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel] layer];
  [v17 setCompositingFilter:v16];

  v18 = v1;
  v19 = [v1 traitCollection];
  v48 = v16;
  if (v19)
  {
    v20 = v19;
    if (sub_1007706EC())
    {
      v21 = sub_10077071C();

      if (v21)
      {
        v22 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v23 = v16;
  v22 = v16;
LABEL_7:
  v50 = *&v18[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel];
  v24 = [v50 layer];
  v25 = v22;
  [v24 setCompositingFilter:v25];

  v49 = *&v18[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v26 = [v49 layer];
  [v26 setCompositingFilter:v25];

  if (v22)
  {
    v27 = sub_100016F40(0, &unk_10095B410);
    v28 = v25;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v28;
  v54 = v27;
  v29 = v25;
  sub_100475758(&v51);
  if (v22)
  {
    v30 = sub_100016F40(0, &unk_10095B410);
    v31 = v29;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v31;
  v54 = v30;
  v32 = v29;
  sub_100620A88(&v51);
  v33 = *&v18[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  v34 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
  v35 = [*(v33 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) isHidden];
  v36 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
  if (!v35)
  {
    v36 = v34;
  }

  v37 = [*(*(v33 + v36) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v37 setCompositingFilter:v32];

  v38 = [*(v33 + v34) isHidden];
  v39 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
  if (!v38)
  {
    v39 = v34;
  }

  v40 = [*(*(*(v33 + v39) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel) layer];
  [v40 setCompositingFilter:v32];

  v41 = [v18 traitCollection];
  if (!v41)
  {
    goto LABEL_22;
  }

  v42 = v41;
  if ((sub_1007706EC() & 1) == 0)
  {

    goto LABEL_22;
  }

  v43 = sub_10077071C();

  if ((v43 & 1) == 0)
  {
LABEL_22:
    v44 = &selRef_secondaryLabelColor;
    goto LABEL_23;
  }

  v44 = &selRef_labelColor;
LABEL_23:
  v45 = objc_opt_self();
  v46 = [v45 *v44];
  [v50 setTextColor:v46];

  v47 = [v45 *v44];
  [v49 setTextColor:v47];

  sub_1006D1708();
}

uint64_t sub_1006CFFDC@<X0>(double *a1@<X8>, double a2@<D1>)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = sub_1007706EC();

  v8 = [v3 traitCollection];
  v9 = sub_10077071C();

  if (v7)
  {
    if (v9)
    {
      if (qword_1009414F8 != -1)
      {
        swift_once();
      }

      v10 = &xmmword_100964818;
    }

    else
    {
      if (qword_100941500 != -1)
      {
        swift_once();
      }

      v10 = &xmmword_100964A20;
    }

    sub_1001C0E70(v10, __src);
    memcpy(a1, __src, 0x208uLL);
    *&__src[24] = &type metadata for Double;
    *&__src[32] = &protocol witness table for Double;
    *__src = 0x404E000000000000;
    sub_10000CD74((a1 + 10));
    sub_10003F19C(__src, (a1 + 10));
    if (qword_1009414E8 != -1)
    {
      swift_once();
    }

    v12 = sub_10076D39C();
    sub_10000A61C(v12, qword_1009A3278);
    result = sub_10076D36C();
    a2 = trunc(v14);
  }

  else
  {
    if (v9)
    {
      if (qword_100941508 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_100964C28;
    }

    else
    {
      if (qword_100941510 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_100964E30;
    }

    sub_1001C0E70(v11, __src);
    result = memcpy(a1, __src, 0x208uLL);
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1006D0228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  if ((sub_1007706EC() & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = sub_10077071C();

  if ((v8 & 1) == 0)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_displayMode];
LABEL_7:
  sub_1001C0E70(a1, a2);
  v22[6] = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent];
  type metadata accessor for AppPromotionScrollableContentContainerView();
  sub_10076D2DC();
  v22[5] = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076D2DC();
  v10 = sub_10076558C();
  *(a2 + 624) = v10;
  v11 = sub_1006D4DBC(&qword_100965120, &type metadata accessor for BoundsBasedPlaceable);
  *(a2 + 632) = v11;
  sub_10000DB7C((a2 + 600));
  sub_100770B6C();
  *(a2 + 664) = v10;
  *(a2 + 672) = v11;
  sub_10000DB7C((a2 + 640));
  sub_100770B6C();
  *(a2 + 704) = v10;
  *(a2 + 712) = v11;
  sub_10000DB7C((a2 + 680));
  sub_100770B6C();
  v12 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView];
  *(a2 + 744) = v10;
  *(a2 + 752) = v11;
  sub_10000DB7C((a2 + 720));
  sub_100770B6C();
  v22[3] = v10;
  v22[4] = v11;
  sub_10000DB7C(v22);
  sub_100770B6C();
  *(a2 + 784) = v10;
  *(a2 + 792) = v11;
  sub_10000DB7C((a2 + 760));
  sub_100770B6C();
  v13 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v21[3] = sub_1007626BC();
  v21[4] = &protocol witness table for UILabel;
  v21[0] = v13;
  v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView];
  *(a2 + 904) = type metadata accessor for SeparatorView();
  *(a2 + 912) = sub_1006D4DBC(&qword_100965128, type metadata accessor for SeparatorView);
  *(a2 + 880) = v14;
  v15 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  *(a2 + 944) = type metadata accessor for SubscriptionLockupView();
  *(a2 + 952) = sub_1006D4DBC(&qword_100965130, type metadata accessor for SubscriptionLockupView);
  *(a2 + 920) = v15;
  v16 = *(v12 + qword_1009588E8);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  LOBYTE(v16) = [v16 hasContent];
  *(a2 + 800) = 0u;
  *(a2 + 816) = 0u;
  *(a2 + 832) = 0u;
  *(a2 + 848) = 0u;
  *(a2 + 864) = 0u;
  sub_1001C0F9C(v22, a2 + 840);
  result = sub_1001C0F9C(v21, a2 + 800);
  *(a2 + 960) = v9;
  *(a2 + 961) = v16;
  return result;
}

uint64_t sub_1006D0644()
{
  v1 = v0;
  v45.receiver = v0;
  v45.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v45, "layoutSubviews");
  [v0 bounds];
  sub_1006CFFDC(v44, v2);
  sub_1006D0228(v44, v41);
  [v0 bounds];
  Width = v3;
  v6 = v5;
  v7 = [v0 traitCollection];
  if (sub_1007706EC())
  {
    v8 = sub_10077071C();

    if (v8)
    {
      v9 = *v41;
      sub_1001C3264(v7, v43, v39);
      sub_10000CF78(v39, v40);
      sub_10076E0FC();
      v11 = v9 + v10;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (sub_1007706EC())
  {
    sub_1001C1348(v7, v39, 0.0, 0.0, Width, v6);
  }

  else
  {
    sub_1001C1D50(v7, v39, 0.0, 0.0, Width, v6);
  }

  sub_10000CF78(v39, v40);
  sub_10076E0FC();
  Width = v12;
  v11 = v13;
LABEL_9:
  sub_10000CD74(v39);

  [v1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v1 traitCollection];
  if (sub_1007706EC())
  {
    v23 = sub_10077071C();

    if (v23)
    {
      sub_1001C2EF8(v22, v15, v17, v19, v21);
      goto LABEL_17;
    }
  }

  else
  {
  }

  v24 = sub_1007706EC();
  sub_10000CF78(v42, v42[3]);
  sub_10076E0EC();
  if (v24)
  {
    sub_1001C1348(v22, v39, v15, v17, v19, v21);
  }

  else
  {
    sub_1001C1D50(v22, v39, v15, v17, v19, v21);
    v46.origin.x = v15;
    v46.origin.y = v17;
    v46.size.width = v19;
    v46.size.height = v21;
    CGRectGetMinX(v46);
    v47.origin.x = v15;
    v47.origin.y = v17;
    v47.size.width = v19;
    v47.size.height = v21;
    CGRectGetMinY(v47);
    v48.origin.x = v15;
    v48.origin.y = v17;
    v48.size.width = v19;
    v48.size.height = v21;
    CGRectGetWidth(v48);
  }

  sub_10000CF78(v39, v40);
  sub_10076E0EC();
  sub_10000CD74(v39);
LABEL_17:

  v25 = [v1 traitCollection];
  if (v25)
  {
    v26 = v25;
    if (sub_1007706EC())
    {
      v27 = sub_10077071C();

      if (v27)
      {
        v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent];
        [v1 bounds];
        Width = CGRectGetWidth(v49);
        v11 = v44[0];
        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  [v1 bounds];
  Height = CGRectGetHeight(v50);
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent];
  if (vabdd_f64(Height, v11) <= 1.0)
  {
    [v1 bounds];
    Width = v30;
    v11 = v31;
  }

LABEL_24:
  [v28 setContentSize:{Width, v11}];
  sub_1006D0B64();
  v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators] = 0;
  [v28 contentSize];
  v33 = v32;
  [v28 bounds];
  v34 = 0;
  if (CGRectGetHeight(v51) >= v33)
  {
    v35 = [v1 traitCollection];
    if (v35)
    {
      v36 = v35;
      if (sub_1007706EC())
      {
        v37 = sub_10077071C();

        v34 = v37 ^ 1;
        goto LABEL_30;
      }
    }

    v34 = 1;
  }

LABEL_30:
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView] setHidden:v34 & 1];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView] setHidden:v34 & 1];
  sub_10050770C(v41);
  return sub_100507760(v44);
}

void sub_1006D0B64()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_10077071C();

  v4 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView;
  if ((v3 & 1) == 0)
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel;
  }

  v14 = *&v1[*v4];
  v5 = [v1 traitCollection];
  v6 = sub_1007706EC();

  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent];
  if (v6)
  {
    v8 = *(v7 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode);
    *(v7 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode) = v14;
    if ((v8 - 1) > 1)
    {
      if (v8)
      {
        sub_100016F40(0, &qword_1009441F0);
        v11 = v14;
        sub_100423854(v8);
        v12 = sub_100770EEC();
        sub_100423840(v8);
        if (v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = v14;
        sub_100423854(0);
      }
    }

    else
    {
      v9 = v14;
    }

    sub_1004228CC();
LABEL_14:
    sub_100422D68();
    sub_100423840(v8);

    goto LABEL_15;
  }

  v10 = *(v7 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode);
  *(v7 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode) = 2;
  if (v10 != 2)
  {
    sub_1004228CC();
  }

  sub_100422D68();
  sub_100423840(v10);
LABEL_15:
}

uint64_t sub_1006D0D60()
{
  v1 = v0;
  sub_10000A5D4(&unk_100942870);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100785D70;
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView);
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v44 = v2;
  v5 = v3;
  v6 = v4;
  v7 = [v1 traitCollection];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  if ((sub_1007706EC() & 1) == 0)
  {

    goto LABEL_10;
  }

  v9 = sub_10077071C();

  if ((v9 & 1) == 0)
  {
LABEL_10:
    v14 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel;
    v15 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView;
    v16 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel;
    goto LABEL_11;
  }

  v10 = [v1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  if (qword_10093F9B0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v12 = sub_10077087C();

    v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel);
    if (v12)
    {
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }
    }

    else
    {
      sub_10077019C();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }
    }

    sub_10077025C();
    v14 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
    v15 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel;
    v16 = &OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView;
LABEL_11:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B3E60;
    v18 = *(v1 + *v16);
    *(inited + 32) = v18;
    v19 = *(v1 + *v15);
    *(inited + 40) = v19;
    v20 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    *(inited + 48) = v20;
    v21 = *(v1 + *v14);
    *(inited + 56) = v21;
    v22 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView);
    *(inited + 64) = v22;
    v23 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView);
    *(inited + 72) = v23;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    sub_1000F9270(inited);
    v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent);
    v10 = v44;
    sub_10000A5D4(&qword_1009453C8);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_100783DD0;
    *(v30 + 32) = v44;

    v31 = sub_1006CDE94(v30);
    swift_setDeallocating();
    sub_10000CFBC(v30 + 32, &unk_1009453D0);
    if (v31 >> 62)
    {
      v32 = sub_10077158C();
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    if (v32 < 1)
    {
      __break(1u);
      goto LABEL_37;
    }

    v33 = 0;
    v10 = (v31 & 0xC000000000000001);
    do
    {
      if (v10)
      {
        v34 = sub_10077149C();
      }

      else
      {
        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      ++v33;
      [v11 addSubview:v34];
    }

    while (v32 != v33);
LABEL_23:

    v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent);
    v1 = _swiftEmptyArrayStorage;
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_100783DD0;
    *(v36 + 32) = _swiftEmptyArrayStorage;

    v37 = sub_1006CDE94(v36);
    swift_setDeallocating();
    sub_10000CFBC(v36 + 32, &unk_1009453D0);
    if (v37 >> 62)
    {
      v38 = sub_10077158C();
      if (!v38)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
        goto LABEL_32;
      }
    }

    if (v38 >= 1)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  for (i = 0; i != v38; ++i)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v40 = sub_10077149C();
    }

    else
    {
      v40 = *(v37 + 8 * i + 32);
    }

    v41 = v40;
    [v11 addSubview:v40];
  }

LABEL_32:

  if (_swiftEmptyArrayStorage >> 62)
  {
    v42 = sub_10077158C();
  }

  else
  {
    v42 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v11 setHidden:v42 == 0];
}

id sub_1006D12B4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  if (qword_100940610 != -1)
  {
    swift_once();
  }

  v3 = qword_10099FCF8;
  v4 = unk_10099FD00;
  v5 = qword_10099FD08;
  v6 = [v0 traitCollection];
  if (sub_10077071C())
  {
  }

  else
  {
    v7 = sub_1007706EC();

    if (v7)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  [v2 setFont:v5];
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel];
  if (qword_100940628 != -1)
  {
    swift_once();
  }

  v9 = qword_10099FD40;
  v10 = *algn_10099FD48;
  v11 = qword_10099FD50;
  v12 = [v1 traitCollection];
  if (sub_10077071C())
  {

    v13 = v11;
  }

  else
  {
    v14 = sub_1007706EC();

    if (v14)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }
  }

  [v8 setFont:v13];
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v16 = [v1 traitCollection];
  if (sub_10077071C())
  {
  }

  else
  {
    v17 = sub_1007706EC();

    if (v17)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }
  }

  [v15 setFont:v11];
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton];

  return [v18 setNeedsUpdateConfiguration];
}

uint64_t sub_1006D14A8()
{
  v1 = v0;
  v2 = sub_100763ADC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v20 - v8;
  v10 = [v0 traitCollection];
  v11 = sub_10077071C();

  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  if (v11)
  {
    if (qword_100941520 != -1)
    {
      swift_once();
    }

    v13 = qword_100965050;
  }

  else
  {
    if (qword_100941518 != -1)
    {
      swift_once();
    }

    v13 = qword_100965038;
  }

  v14 = sub_10000A61C(v2, v13);
  v15 = *(v3 + 16);
  v15(v9, v14, v2);
  v16 = *&v12[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  v15(v5, v9, v2);
  v17 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v16[v17], v5, v2);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v3 + 8);
  v18(v5, v2);
  [v12 setNeedsLayout];
  return (v18)(v9, v2);
}

void sub_1006D1708()
{
  v1 = v0;
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);
  v7 = sub_1007635FC();
  (*(v3 + 8))(v5, v2);
  if (v7 != 2)
  {
    goto LABEL_5;
  }

  v8 = [v1 traitCollection];
  if (v8)
  {
    v9 = v8;
    if (sub_1007706EC())
    {
      v10 = sub_10077071C();

      if (v10)
      {
LABEL_5:
        v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
        v12 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
        v13 = [*(v11 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) isHidden];
        v14 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
        if (!v13)
        {
          v14 = v12;
        }

        v15 = *(*(v11 + v14) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
        sub_100016F40(0, &qword_100942F10);
        v16 = v15;
        v17 = sub_100770E1C();
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  v19 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
  v20 = [*(v18 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) isHidden];
  v21 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
  if (!v20)
  {
    v21 = v19;
  }

  v22 = *(*(v18 + v21) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v23 = objc_opt_self();
  v16 = v22;
  v17 = [v23 whiteColor];
LABEL_12:
  v24 = v17;
  [v16 setTintColor:v17];
}

uint64_t sub_1006D1970()
{
  sub_10000A5D4(&unk_100952248);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel);
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel);
  *(v1 + 16) = xmmword_100783DE0;
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
  *(v1 + 80) = v8;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  return v1;
}

uint64_t sub_1006D1A58()
{
  sub_10000A5D4(&unk_100952248);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007844F0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView);
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return v1;
}

uint64_t sub_1006D1B24()
{
  sub_10000A5D4(&unk_100952248);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent);
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  *(v1 + 16) = xmmword_100784500;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = v4;
  v6 = v3;
  return v1;
}

void sub_1006D1BAC()
{
  sub_10075FD2C();
  sub_1006D4DBC(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
  v3 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_100760BFC();

  v4 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_100760BFC();

  v5 = *(*(v1 + v2) + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon);
  if (v5)
  {
    v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView];
    v7 = v5;
    v8 = v6;
    sub_100760BFC();

    v9 = *&v7[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView];
    sub_100760BFC();
  }
}

uint64_t type metadata accessor for AppPromotionDetailPageContentView()
{
  result = qword_100965110;
  if (!qword_100965110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006D201C()
{
  result = sub_10076361C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_1006D20E0(id result)
{
  v2 = v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_displayMode];
  v1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_displayMode] = result & 1;
  if (v2 != (result & 1))
  {
    sub_1006D0D60();

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_1006D2144(char *a1)
{
  [*&a1[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton] setNeedsUpdateConfiguration];
  sub_1006D0D60();
  sub_1006CFA1C();
  sub_1006D12B4();
  sub_1006D14A8();

  return [a1 setNeedsLayout];
}

unint64_t sub_1006D21A8()
{
  result = qword_100948B80;
  if (!qword_100948B80)
  {
    sub_10000CE78(&unk_1009453D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948B80);
  }

  return result;
}

uint64_t sub_1006D220C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v146 = a2;
  v5 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v5 - 8);
  v132 = &v117 - v6;
  v131 = sub_100768FEC();
  v128 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10000A5D4(&unk_100946750);
  v141 = *(v144 - 8);
  __chkstk_darwin(v144);
  v130 = &v117 - v8;
  v9 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v9 - 8);
  v135 = &v117 - v10;
  v11 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v11 - 8);
  v137 = &v117 - v12;
  v13 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v13 - 8);
  v136 = &v117 - v14;
  v15 = sub_10000A5D4(&qword_10094FCE8);
  __chkstk_darwin(v15 - 8);
  v142 = &v117 - v16;
  v17 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v17 - 8);
  v127 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v145 = &v117 - v20;
  v21 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v21 - 8);
  v147 = &v117 - v22;
  v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  sub_100761E9C();
  v24 = sub_10076FF6C();

  [v23 setText:v24];

  v25 = sub_100761EAC();
  sub_1004B1D04(v25, v26);
  if (qword_100940620 != -1)
  {
    swift_once();
  }

  v27 = qword_10099FD28;
  v28 = unk_10099FD30;
  v29 = qword_10099FD38;
  v30 = [v2 traitCollection];
  if (sub_10077071C())
  {
  }

  else
  {
    v31 = sub_1007706EC();

    if (v31)
    {
      v29 = v27;
    }

    else
    {
      v29 = v28;
    }
  }

  v134 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel];
  v139 = v29;
  v143 = a1;
  sub_100761EBC();
  v32 = sub_10076C5AC();

  v33 = [objc_opt_self() secondaryLabelColor];
  v34 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v32];
  v35 = [v32 length];
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1000BD348;
  *(v37 + 24) = v36;
  v152 = sub_10000A6AC;
  v153 = v37;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v138 = &v150;
  v150 = sub_1002464A8;
  v151 = &unk_1008A0280;
  v38 = v3;
  v39 = _Block_copy(&aBlock);
  v40 = v34;
  v41 = v33;

  [v32 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v35 usingBlock:{0, v39}];

  _Block_release(v39);
  v42 = 1;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_33;
  }

  v140 = v38;
  v44 = [v38 traitCollection];
  v45 = objc_allocWithZone(NSMutableAttributedString);
  v46 = v139;
  v47 = v139;
  v48 = [v45 initWithAttributedString:v40];
  v49 = [v40 length];
  v50 = swift_allocObject();
  *(v50 + 16) = v46;
  *(v50 + 24) = v44;
  *(v50 + 32) = v48;
  *(v50 + 40) = 1;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1000275EC;
  *(v51 + 24) = v50;
  v152 = sub_1000ACB04;
  v153 = v51;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v150 = sub_100026610;
  v151 = &unk_1008A02F8;
  v42 = _Block_copy(&aBlock);
  v38 = v153;
  v52 = v47;
  isEscapingClosureAtFileLocation = v48;

  v53 = v44;

  [v40 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v42}];

  _Block_release(v42);
  v54 = swift_isEscapingClosureAtFileLocation();

  v55 = v140;
  if (v54)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_29;
  }

  v133 = v52;
  [v134 setAttributedText:isEscapingClosureAtFileLocation];

  v56 = *&v55[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel];
  sub_100761E3C();
  if (v57)
  {
    v58 = sub_10076FF6C();
  }

  else
  {
    v58 = 0;
  }

  [v56 setText:v58];

  v59 = *&v55[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton];
  sub_100761E6C();
  v60 = sub_10076FF6C();

  [v59 setTitle:v60 forState:0];

  v61 = *&v55[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  if (sub_100761E5C())
  {
    v62 = sub_10076C5AC();
  }

  else
  {
    v62 = 0;
  }

  [v61 setAttributedText:v62];

  v63 = sub_100761ECC();
  v65 = v64;
  v66 = sub_100761E2C();
  sub_100475DC4(v63, v65, v66);

  v67 = [v55 traitCollection];
  v68 = v147;
  v69 = v145;
  if (v67)
  {
    v70 = v67;
    if (sub_1007706EC())
    {
      v71 = sub_10077071C();

      if (v71)
      {
        v72 = enum case for OfferStyle.infer(_:);
        v73 = sub_10075F78C();
        v74 = *(v73 - 8);
        (*(v74 + 104))(v68, v72, v73);
        (*(v74 + 56))(v68, 0, 1, v73);
        v69 = v145;
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v75 = sub_10075F78C();
  (*(*(v75 - 8) + 56))(v68, 1, 1, v75);
LABEL_22:
  v76 = *&v55[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  v77 = sub_100761E4C();
  v78 = sub_10000A5D4(&qword_100945590);
  v79 = *(v78 - 8);
  v134 = *(v79 + 56);
  v126 = v79 + 56;
  (v134)(v69, 1, 1, v78);
  v80 = v142;
  sub_100761E8C();
  v81 = sub_10076361C();
  (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
  sub_10075E67C();
  v138 = v77;
  v82 = swift_dynamicCastClass();
  v83 = *&v76[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  v139 = v76;
  if (v82)
  {
    v84 = v82;
    v125 = v78;
    v120 = sub_1007628DC();
    v85 = *(v120 - 8);
    v122 = *(v85 + 56);
    v123 = v85 + 56;
    v86 = v136;
    v122(v136, 1, 1, v120);
    v121 = *(v141 + 56);
    v87 = v137;
    v121(v137, 1, 1, v144);
    v88 = v69;
    v89 = sub_10076C54C();
    v90 = *(v89 - 8);
    v118 = *(v90 + 56);
    v119 = v90 + 56;
    v91 = v135;
    v118(v135, 1, 1, v89);
    swift_retain_n();
    sub_1004D0A60(v84, v83, v88, v146, 1, 0, v147, v86, v91, v87);
    sub_10000CFBC(v91, &unk_100949290);
    v83[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v83 setNeedsLayout];
    sub_10000CFBC(v87, &qword_10094F730);
    sub_10000CFBC(v86, &unk_1009492A0);
    v92 = *&v139[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v124 = v84;
    v93 = sub_10075E66C();
    v94 = v146;
    v122(v86, 1, 1, v120);
    v121(v87, 1, 1, v144);
    v118(v91, 1, 1, v89);
    sub_1004D0A60(v93, v92, v145, v94, 0, 0, v147, v86, v91, v87);
    sub_10000CFBC(v91, &unk_100949290);
    v92[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v92 setNeedsLayout];

    sub_10000CFBC(v87, &qword_10094F730);
    sub_10000CFBC(v86, &unk_1009492A0);
    v95 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
    [*&v92[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v92[v95] setUserInteractionEnabled:0];
    [v92 setHidden:1];
    v96 = v138;
    v97 = sub_10076BB5C();
    if (v97)
    {
    }

    sub_100261178(v97 != 0);
    v98 = *&v92[v95];
    v99 = sub_10076BB3C();

    v100 = sub_10076BA2C();

    v101 = v127;
    (v134)(v127, 1, 1, v125);
    v102 = v128;
    v103 = v131;
    (*(v128 + 104))(v129, enum case for OfferButtonSubtitlePosition.below(_:), v131);
    (*(v102 + 56))(v132, 1, 1, v103);
    sub_1006D4DBC(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
    v104 = v130;
    sub_10076759C();
    sub_1001F12C8(v99, v100, 0, v101, v104, v94, 0, 0);

    (*(v141 + 8))(v104, v144);
    sub_10000CFBC(v101, &unk_100946760);
    v105 = v139;
    sub_100345140(v96, v139);

    v80 = v142;
    sub_10029E170(v105, v142);
    v69 = v145;
  }

  else
  {
    [v83 setHidden:1];
    v106 = *&v76[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v107 = sub_1007628DC();
    v108 = v136;
    (*(*(v107 - 8) + 56))(v136, 1, 1, v107);
    v109 = v137;
    (*(v141 + 56))(v137, 1, 1, v144);
    v110 = sub_10076C54C();
    v111 = v135;
    (*(*(v110 - 8) + 56))(v135, 1, 1, v110);
    sub_1004D0A60(v138, v106, v69, v146, 0, 0, v68, v108, v111, v109);
    sub_10000CFBC(v111, &unk_100949290);
    v106[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v106 setNeedsLayout];
    sub_10000CFBC(v109, &qword_10094F730);
    v112 = v108;
    v113 = v139;
    sub_10000CFBC(v112, &unk_1009492A0);
    sub_10029E170(v113, v80);
  }

  sub_10000CFBC(v80, &qword_10094FCE8);
  sub_10000CFBC(v69, &unk_100946760);
  sub_100760C4C();
  sub_10076F5AC();
  isEscapingClosureAtFileLocation = aBlock;
  if (!aBlock)
  {
    v42 = v133;
    v38 = v147;
    goto LABEL_31;
  }

  v42 = v133;
  v38 = v147;
  if (qword_10093FD10 != -1)
  {
    goto LABEL_34;
  }

LABEL_29:
  v114 = sub_100763ADC();
  sub_10000A61C(v114, qword_10099E208);
  sub_1007639AC();
  v115 = sub_100761E4C();
  sub_10029E930(v115, isEscapingClosureAtFileLocation);

LABEL_31:
  sub_1006D12B4();

  return sub_10000CFBC(v38, &unk_10094D210);
}

uint64_t sub_1006D3590()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006D35D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006D35FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v123 = a3;
  v134 = a2;
  v6 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v6 - 8);
  v129 = v114 - v7;
  v128 = sub_100768FEC();
  v125 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10000A5D4(&unk_100946750);
  v138 = *(v141 - 8);
  __chkstk_darwin(v141);
  v127 = v114 - v9;
  v10 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v10 - 8);
  v131 = v114 - v11;
  v12 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v12 - 8);
  v133 = v114 - v13;
  v14 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v14 - 8);
  v132 = v114 - v15;
  v16 = sub_10000A5D4(&qword_10094FCE8);
  __chkstk_darwin(v16 - 8);
  v139 = v114 - v17;
  v18 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v18 - 8);
  v124 = v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v114 - v21;
  v23 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v23 - 8);
  v25 = v114 - v24;
  v26 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel];
  sub_10076C4FC();
  v27 = sub_10076FF6C();

  [v26 setText:v27];

  v28 = sub_10076C4EC();
  sub_1004B1D04(v28, v29);
  if (qword_100940620 != -1)
  {
    swift_once();
  }

  v30 = qword_10099FD28;
  v31 = unk_10099FD30;
  v32 = qword_10099FD38;
  v33 = [v3 traitCollection];
  v34 = sub_10077071C();
  v142 = v25;
  v143 = v22;
  if (v34)
  {
  }

  else
  {
    v35 = sub_1007706EC();

    if (v35)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }
  }

  v130 = *&v4[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel];
  v136 = v32;
  v140 = a1;
  sub_10076C50C();
  v36 = sub_10076C5AC();

  v37 = [objc_opt_self() secondaryLabelColor];
  v38 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v36];
  v39 = [v36 length];
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v40 + 24) = v37;
  v41 = swift_allocObject();
  v41[2] = sub_1006D4E10;
  v41[3] = v40;
  v148 = sub_1006D4E14;
  v149 = v41;
  aBlock = _NSConcreteStackBlock;
  v145 = 1107296256;
  v135 = &v146;
  v146 = sub_1002464A8;
  v147 = &unk_1008A0370;
  v42 = v4;
  v43 = _Block_copy(&aBlock);
  v44 = v38;
  v45 = v37;

  [v36 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v39 usingBlock:{0, v43}];

  _Block_release(v43);
  v46 = 1;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_32;
  }

  v137 = v42;
  v48 = [v42 traitCollection];
  v49 = objc_allocWithZone(NSMutableAttributedString);
  v50 = v136;
  v51 = v136;
  v52 = [v49 initWithAttributedString:v44];
  v41 = [v44 length];
  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  *(v53 + 24) = v48;
  *(v53 + 32) = v52;
  *(v53 + 40) = 1;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100027A88;
  *(v54 + 24) = v53;
  v148 = sub_1003BE1CC;
  v149 = v54;
  aBlock = _NSConcreteStackBlock;
  v145 = 1107296256;
  v146 = sub_100026610;
  v147 = &unk_1008A03E8;
  v46 = _Block_copy(&aBlock);
  v55 = v51;
  isEscapingClosureAtFileLocation = v52;

  v56 = v48;

  [v44 enumerateAttributesInRange:0 options:v41 usingBlock:{0x100000, v46}];

  v135 = v55;
  _Block_release(v46);
  v57 = swift_isEscapingClosureAtFileLocation();

  v58 = v137;
  if (v57)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v130 setAttributedText:isEscapingClosureAtFileLocation];

  v59 = *&v58[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel];
  sub_10076C4AC();
  if (v60)
  {
    v61 = sub_10076FF6C();
  }

  else
  {
    v61 = 0;
  }

  v62 = v142;
  [v59 setText:v61];

  v63 = [v58 traitCollection];
  if (v63)
  {
    v64 = v63;
    if (sub_1007706EC())
    {
      v65 = sub_10077071C();

      if (v65)
      {
        v66 = enum case for OfferStyle.infer(_:);
        v67 = sub_10075F78C();
        v68 = *(v67 - 8);
        (*(v68 + 104))(v62, v66, v67);
        v69 = 1;
        (*(v68 + 56))(v62, 0, 1, v67);
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v70 = sub_10075F78C();
  (*(*(v70 - 8) + 56))(v62, 1, 1, v70);
  v69 = 0;
LABEL_19:
  v71 = *&v58[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView];
  v72 = sub_10076C4BC();
  v73 = sub_10000A5D4(&qword_100945590);
  v74 = *(v73 - 8);
  v75 = *(v74 + 56);
  v130 = (v74 + 56);
  v75(v143, 1, 1, v73);
  if (v69)
  {
    v76 = sub_10076361C();
    v77 = v139;
    (*(*(v76 - 8) + 56))(v139, 1, 1, v76);
  }

  else
  {
    v77 = v139;
    sub_10029F418(v123, v139);
  }

  sub_10075E67C();
  v78 = swift_dynamicCastClass();
  v79 = *&v71[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  v136 = v71;
  if (v78)
  {
    v122 = v75;
    v123 = v73;
    v80 = v78;
    v117 = sub_1007628DC();
    v81 = *(v117 - 8);
    v116 = *(v81 + 56);
    v118 = v81 + 56;
    v82 = v143;
    v83 = v132;
    v116(v132, 1, 1, v117);
    v115 = *(v138 + 56);
    v84 = v133;
    v115(v133, 1, 1, v141);
    v85 = sub_10076C54C();
    v86 = *(v85 - 8);
    v114[0] = *(v86 + 56);
    v114[1] = v86 + 56;
    v87 = v131;
    (v114[0])(v131, 1, 1, v85);
    swift_retain_n();
    v88 = v134;
    sub_1004D0A60(v80, v79, v82, v134, 1, 0, v142, v83, v87, v84);
    sub_10000CFBC(v87, &unk_100949290);
    v79[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    v119 = v72;
    sub_10026202C();
    v120 = v79;
    [v79 setNeedsLayout];
    sub_10000CFBC(v84, &qword_10094F730);
    sub_10000CFBC(v83, &unk_1009492A0);
    v89 = *&v136[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v121 = v80;
    v90 = sub_10075E66C();
    v116(v83, 1, 1, v117);
    v115(v84, 1, 1, v141);
    v91 = v88;
    (v114[0])(v87, 1, 1, v85);
    sub_1004D0A60(v90, v89, v82, v88, 0, 0, v142, v83, v87, v84);
    sub_10000CFBC(v87, &unk_100949290);
    v89[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v89 setNeedsLayout];

    sub_10000CFBC(v84, &qword_10094F730);
    sub_10000CFBC(v83, &unk_1009492A0);
    v92 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
    [*&v89[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v89[v92] setUserInteractionEnabled:0];
    [v89 setHidden:1];
    v93 = v119;
    v94 = sub_10076BB5C();
    if (v94)
    {
    }

    sub_100261178(v94 != 0);
    v95 = *&v89[v92];
    v96 = sub_10076BB3C();

    v97 = sub_10076BA2C();

    v98 = v124;
    v122(v124, 1, 1, v123);
    v99 = v125;
    v100 = v128;
    (*(v125 + 104))(v126, enum case for OfferButtonSubtitlePosition.below(_:), v128);
    (*(v99 + 56))(v129, 1, 1, v100);
    sub_1006D4DBC(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
    v101 = v127;
    sub_10076759C();
    sub_1001F12C8(v96, v97, 0, v98, v101, v91, 0, 0);

    (*(v138 + 8))(v101, v141);
    sub_10000CFBC(v98, &unk_100946760);
    v102 = v136;
    sub_100345140(v93, v136);

    v77 = v139;
    sub_10029E170(v102, v139);
    v41 = v142;
  }

  else
  {
    [v79 setHidden:1];
    v103 = *&v71[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v104 = sub_1007628DC();
    v41 = v62;
    v105 = v132;
    (*(*(v104 - 8) + 56))(v132, 1, 1, v104);
    v106 = v133;
    (*(v138 + 56))(v133, 1, 1, v141);
    v107 = sub_10076C54C();
    v108 = v131;
    (*(*(v107 - 8) + 56))(v131, 1, 1, v107);
    sub_1004D0A60(v72, v103, v143, v134, 0, 0, v62, v105, v108, v106);
    sub_10000CFBC(v108, &unk_100949290);
    v103[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v103 setNeedsLayout];
    sub_10000CFBC(v106, &qword_10094F730);
    v109 = v105;
    v110 = v136;
    sub_10000CFBC(v109, &unk_1009492A0);
    sub_10029E170(v110, v77);
  }

  sub_10000CFBC(v77, &qword_10094FCE8);
  sub_10000CFBC(v143, &unk_100946760);
  sub_100760C4C();
  sub_10076F5AC();
  isEscapingClosureAtFileLocation = aBlock;
  v46 = v135;
  if (aBlock)
  {
    if (qword_10093FD10 == -1)
    {
LABEL_29:
      v111 = sub_100763ADC();
      sub_10000A61C(v111, qword_10099E208);
      sub_1007639AC();
      v112 = sub_10076C4BC();
      sub_10029E930(v112, isEscapingClosureAtFileLocation);

      goto LABEL_30;
    }

LABEL_33:
    swift_once();
    goto LABEL_29;
  }

LABEL_30:
  sub_1006D12B4();

  return sub_10000CFBC(v41, &unk_10094D210);
}

void sub_1006D48B8()
{
  v1 = sub_10076771C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v5 - 8);
  v7 = v39 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent;
  v9 = v0;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_secondaryContent;
  *(v9 + v10) = [objc_allocWithZone(UIView) init];
  v11 = v9;
  v12 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_availabilityLabelView;
  type metadata accessor for AppPromotionFormattedDateView();
  *(v9 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v45 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_promotionKindLabel;
  v13 = sub_10076D3DC();
  v14 = *(v13 - 8);
  v46 = *(v14 + 56);
  v15 = v14 + 56;
  v44 = v13;
  v46(v7, 1, 1, v13);
  v43 = v15;
  v16 = enum case for DirectionalTextAlignment.none(_:);
  v40 = *(v2 + 104);
  v17 = v4;
  v41 = enum case for DirectionalTextAlignment.none(_:);
  v47 = v1;
  v40(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v18 = sub_1007626BC();
  v42 = v18;
  v19 = objc_allocWithZone(v18);
  *(v11 + v45) = sub_1007626AC();
  v45 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_titleLabel;
  v20 = v13;
  v21 = v46;
  v46(v7, 1, 1, v20);
  v22 = v16;
  v23 = v40;
  v39[1] = v2 + 104;
  v40(v17, v22, v1);
  v24 = objc_allocWithZone(v18);
  *(v11 + v45) = sub_1007626AC();
  v25 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_subtitleView;
  v26 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *(v11 + v25) = sub_1004760F8(1);
  v45 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_detailLabel;
  v27 = v44;
  v21(v7, 1, 1, v44);
  v28 = v41;
  v23(v17, v41, v47);
  v29 = v42;
  v30 = objc_allocWithZone(v42);
  *(v11 + v45) = sub_1007626AC();
  v31 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
  v46(v7, 1, 1, v27);
  v23(v17, v28, v47);
  v32 = objc_allocWithZone(v29);
  *(v11 + v31) = sub_1007626AC();
  v33 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton;
  *(v11 + v33) = [objc_allocWithZone(UIButton) init];
  v34 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView;
  type metadata accessor for SeparatorView();
  *(v11 + v34) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v35 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *(v11 + v35) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v11 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators) = 0;
  *(v11 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButtonAction) = 0;
  v36 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
  v37 = enum case for MediaOverlayStyle.matchSystem(_:);
  v38 = sub_10076361C();
  (*(*(v38 - 8) + 104))(v11 + v36, v37, v38);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1006D4DBC(unint64_t *a1, void (*a2)(uint64_t))
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

void PageTraitEnvironment.defaultPageMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007706CC();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

void PageTraitEnvironment.pageColumnWidth.getter()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007706CC();

  if (v3)
  {
    [v1 pageContainerSize];
    sub_1006D502C(v4, v5);
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  else
  {
    [v1 pageMarginInsets];
    [v1 pageContainerSize];
  }
}

uint64_t sub_1006D502C(double a1, double a2)
{
  if (a2 >= a1)
  {
    if (a1 != 744.0)
    {
      result = JUScreenClassGetPortraitWidth();
      if (v5 < a1)
      {
        return JUScreenClassGetPortraitWidth();
      }
    }
  }

  else if (a1 != 1133.0)
  {
    result = JUScreenClassGetLandscapeWidth();
    if (v4 < a1)
    {
      return JUScreenClassGetLandscapeWidth();
    }
  }

  return result;
}

double PageTraitEnvironment.pageContentSize.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  [v0 pageMarginInsets];
  return v2 - v3 - v4;
}

uint64_t sub_1006D5148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v100 = a5;
  v101 = a4;
  v112 = a3;
  v113 = a2;
  v108 = a7;
  v109 = a8;
  v106 = a1;
  v107 = a6;
  v97 = sub_10075F21C();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10076B66C();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1007658FC();
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10076EA6C();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100760F8C();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10000A5D4(&qword_100942908);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v88 = &v82 - v15;
  v16 = sub_10076B5BC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076C36C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v105 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v82 - v24;
  v26 = sub_10000A5D4(&qword_100942C40);
  __chkstk_darwin(v26);
  v99 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v82 - v29;
  sub_100016E2C(v113, &v82 - v29, &qword_1009499A0);
  v98 = v26;
  v31 = *(v26 + 48);
  v113 = v30;
  sub_100016E2C(v112, &v30[v31], &qword_1009499A0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();

  v112 = v21;
  v32 = *(v21 + 104);
  v33 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v115)
  {
    v33 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v34 = *v33;
  v110 = v25;
  v111 = v20;
  v32(v25, v34, v20);
  swift_getKeyPath();
  sub_10076F49C();

  v35 = v17;
  v36 = (*(v17 + 88))(v19, v16);
  if (v36 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if (v36 == enum case for Shelf.ContentType.productReview(_:))
    {
      swift_getKeyPath();
      sub_10076F49C();

      if (*(v114 + 16))
      {
        sub_10000A570(v114 + 32, &v115);

        sub_10000A5D4(&qword_1009575A0);
        sub_100760FAC();
        v49 = swift_dynamicCast();
        v45 = v110;
        if (v49)
        {
          v50 = v85;
          sub_100760F9C();
          v51 = v86;
          v52 = v87;
          v53 = (*(v86 + 88))(v50, v87);
          if (v53 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
          {
            (*(v51 + 8))(v50, v52);
            v48 = v111;
            v47 = v112;
            (*(v112 + 16))(v105, v45, v111);
            if (qword_100941288 != -1)
            {
              swift_once();
            }

            sub_10076C33C();
          }

          else
          {
            v48 = v111;
            v47 = v112;
            v76 = v105;
            if (v53 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
            {
              v78 = v82;
              sub_10076202C();
              (*(v47 + 16))(v76, v45, v48);
              sub_10052C890(v78, 0);
              sub_10076C33C();

              (*(v83 + 8))(v78, v84);
              (*(v47 + 8))(v45, v48);
              sub_10000CFBC(v113, &qword_100942C40);
              return (*(v51 + 8))(v50, v52);
            }

            (*(v51 + 8))(v50, v52);
            v77 = v82;
            sub_10076202C();
            (*(v47 + 16))(v76, v45, v48);
            sub_10052C890(v77, 1);
            sub_10076C33C();

            (*(v83 + 8))(v77, v84);
          }

          goto LABEL_36;
        }
      }

      else
      {

        v45 = v110;
      }

      v115 = v100;
      v69 = v113;
      v70 = v99;
      sub_100016E2C(v113, v99, &qword_100942C40);
      v71 = *(v98 + 48);
      sub_100061E6C();
      sub_1007620BC();
      (*(v112 + 8))(v45, v111);
      sub_10000CFBC(v69, &qword_100942C40);
      sub_10000CFBC(v70 + v71, &qword_1009499A0);
      v72 = v70;
      v73 = &qword_1009499A0;
      return sub_10000CFBC(v72, v73);
    }

    if (v36 != enum case for Shelf.ContentType.productBadge(_:))
    {
      v115 = v100;
      v65 = v113;
      v66 = v99;
      sub_100016E2C(v113, v99, &qword_100942C40);
      v67 = *(v98 + 48);
      sub_100061E6C();
      sub_1007620BC();
      (*(v112 + 8))(v110, v111);
      sub_10000CFBC(v65, &qword_100942C40);
      sub_10000CFBC(v66 + v67, &qword_1009499A0);
      sub_10000CFBC(v66, &qword_1009499A0);
      return (*(v35 + 8))(v19, v16);
    }

    v57 = v88;
    sub_10076C28C();
    v58 = v89;
    sub_10076C28C();
    v55 = v111;
    v54 = v112;
    v56 = v110;
    (*(v112 + 16))(v105, v110, v111);
    sub_1004C8060(v57, v58);
    sub_10076C33C();
    v59 = *(v90 + 8);
    v60 = v58;
    v61 = v91;
    v59(v60, v91);
    v59(v57, v61);
LABEL_22:
    (*(v54 + 8))(v56, v55);
LABEL_45:
    v73 = &qword_100942C40;
    v72 = v113;
    return sub_10000CFBC(v72, v73);
  }

  swift_getKeyPath();
  v37 = v102;
  sub_10076F49C();

  v38 = v103;
  v39 = v104;
  if ((*(v103 + 88))(v37, v104) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v38 + 8))(v37, v39);
    v55 = v111;
    v54 = v112;
    v56 = v110;
    (*(v112 + 16))(v105, v110, v111);
    if (qword_10093FCE8 != -1)
    {
      swift_once();
    }

    sub_10076C33C();
    goto LABEL_22;
  }

  (*(v38 + 96))(v37, v39);
  v40 = v94;
  v41 = v92;
  v42 = v93;
  (*(v94 + 32))(v92, v37, v93);
  sub_1007658EC();
  v43 = v95;
  sub_100760E3C();

  v44 = (*(v96 + 88))(v43, v97);
  v45 = v110;
  v46 = v105;
  if (v44 == enum case for AppPlatform.phone(_:))
  {
    goto LABEL_6;
  }

  if (v44 == enum case for AppPlatform.pad(_:))
  {
    v62 = sub_10076588C();
    v64 = v111;
    v63 = v112;
    (*(v112 + 16))(v46, v45, v111);
    if (v62)
    {
      if (qword_100940580 == -1)
      {
        goto LABEL_38;
      }
    }

    else if (qword_10093FCE8 == -1)
    {
LABEL_38:

      sub_10076C33C();
      (*(v40 + 8))(v41, v42);
      (*(v63 + 8))(v45, v64);
      goto LABEL_45;
    }

    swift_once();
    goto LABEL_38;
  }

  if (v44 == enum case for AppPlatform.messages(_:))
  {
LABEL_6:
    if (sub_10076588C())
    {
      v48 = v111;
      v47 = v112;
      (*(v112 + 16))(v46, v45, v111);
      if (qword_10093F598 != -1)
      {
        swift_once();
      }

      sub_10076C33C();
      (*(v40 + 8))(v41, v42);
LABEL_36:
      (*(v47 + 8))(v45, v48);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v44 == enum case for AppPlatform.watch(_:))
  {
    v75 = v111;
    v74 = v112;
    (*(v112 + 16))(v105, v110, v111);
    if (qword_10093F9F8 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  if (v44 == enum case for AppPlatform.tv(_:) || v44 == enum case for AppPlatform.mac(_:) || v44 == enum case for AppPlatform.vision(_:))
  {
LABEL_43:
    v75 = v111;
    v74 = v112;
    (*(v112 + 16))(v46, v45, v111);
    if (qword_10093FCE8 == -1)
    {
LABEL_44:

      sub_10076C33C();
      (*(v40 + 8))(v41, v42);
      (*(v74 + 8))(v45, v75);
      goto LABEL_45;
    }

LABEL_48:
    swift_once();
    goto LABEL_44;
  }

  v115 = v100;
  v79 = v113;
  v80 = v99;
  sub_100016E2C(v113, v99, &qword_100942C40);
  v81 = *(v98 + 48);
  sub_100061E6C();
  sub_1007620BC();
  (*(v40 + 8))(v41, v42);
  (*(v112 + 8))(v45, v111);
  sub_10000CFBC(v79, &qword_100942C40);
  sub_10000CFBC(v80 + v81, &qword_1009499A0);
  sub_10000CFBC(v80, &qword_1009499A0);
  return (*(v96 + 8))(v95, v97);
}

uint64_t sub_1006D6750@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v23 = a5;
  v24 = a2;
  v25 = a4;
  v26 = a6;
  v29 = a3;
  v27 = a7;
  v28 = a8;
  v9 = sub_10076B5BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_100942C40);
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v22 - v17;
  sub_100016E2C(a1, &v22 - v17, &qword_1009499A0);
  sub_100016E2C(v24, &v18[*(v13 + 48)], &qword_1009499A0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();

  v24 = v10;
  if ((*(v10 + 88))(v12, v9) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v30 = v25;
    v31 = v23;
    sub_100016E2C(v18, v15, &qword_100942C40);
    v19 = *(v13 + 48);
    sub_1006D6D60();
    sub_1007620BC();
    sub_10000CFBC(v18, &qword_100942C40);
    sub_10000CFBC(&v15[v19], &qword_1009499A0);
    return sub_10000CFBC(v15, &qword_1009499A0);
  }

  else
  {
    v30 = v25;
    sub_100016E2C(v18, v15, &qword_100942C40);
    v21 = *(v13 + 48);
    sub_100061E6C();
    sub_1007620AC();
    sub_10000CFBC(v18, &qword_100942C40);
    sub_10000CFBC(&v15[v21], &qword_1009499A0);
    sub_10000CFBC(v15, &qword_1009499A0);
    return (*(v24 + 8))(v12, v9);
  }
}

uint64_t sub_1006D6B2C()
{
  sub_1006D6D60();

  return sub_1007620BC();
}

uint64_t sub_1006D6C10()
{
  sub_1006D6D60();

  return sub_1007620AC();
}

uint64_t sub_1006D6CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006D6DC4();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

unint64_t sub_1006D6D60()
{
  result = qword_100965138;
  if (!qword_100965138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100965138);
  }

  return result;
}

unint64_t sub_1006D6DC4()
{
  result = qword_100965140;
  if (!qword_100965140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100965140);
  }

  return result;
}

void sub_1006D6E18()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_1009602D0);

    sub_10007E008();
    sub_1006D8F80(&qword_100952B10, sub_10007E008);
    sub_100760BFC();
  }

  sub_10007E008();
  sub_1006D8F80(&qword_100952B10, sub_10007E008);
  sub_100760BFC();
  sub_1006D1BAC();
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView);
  v6 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
  v7 = *(*(v5 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_1006D8F80(&qword_100941820, &type metadata accessor for ArtworkView);
  v8 = v7;
  sub_100760BFC();

  v9 = *(*(v5 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_100760BFC();

  v10 = *(*(v5 + v6) + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon);
  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView];
    v12 = v10;
    v13 = v11;
    sub_100760BFC();

    v14 = *&v12[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView];
    sub_100760BFC();
  }
}

uint64_t sub_1006D7100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v6 - 8);
  v94 = &v73 - v7;
  v93 = sub_100768FEC();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946750);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v73 - v11;
  v12 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v12 - 8);
  v96 = &v73 - v13;
  v14 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v14 - 8);
  v97 = &v73 - v15;
  v16 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v73 - v17;
  v19 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v19 - 8);
  v99 = &v73 - v20;
  v21 = sub_10000A5D4(&qword_10094FCE8);
  __chkstk_darwin(v21 - 8);
  v23 = &v73 - v22;
  v24 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v24 - 8);
  v89 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v98 = &v73 - v27;
  sub_1006D220C(a1, a2);
  v28 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_learnMoreView);
  if (sub_100761E5C())
  {
    v29 = sub_10076C5AC();
  }

  else
  {
    v29 = 0;
  }

  [*(v28 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v29];

  v30 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView);
  v31 = sub_100761E4C();
  v32 = sub_10000A5D4(&qword_100945590);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v35 = v98;
  v88 = v33 + 56;
  v34(v98, 1, 1, v32);
  v36 = sub_10076361C();
  (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  v37 = sub_10075F78C();
  (*(*(v37 - 8) + 56))(v99, 1, 1, v37);
  sub_10075E67C();
  v38 = swift_dynamicCastClass();
  v39 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView);
  if (v38)
  {
    v82 = v34;
    v83 = v32;
    v86 = v23;
    v40 = v38;
    v41 = v39;
    v42 = sub_1007628DC();
    v95 = a2;
    v76 = v42;
    v43 = *(v42 - 8);
    v78 = *(v43 + 56);
    v87 = v43 + 56;
    v78(v18, 1, 1, v42);
    v85 = v10;
    v79 = v31;
    v77 = *(v10 + 56);
    v44 = v97;
    v77(v97, 1, 1, v9);
    v45 = v30;
    v46 = sub_10076C54C();
    v47 = *(v46 - 8);
    v74 = *(v47 + 56);
    v75 = v47 + 56;
    v48 = v96;
    v74(v96, 1, 1, v46);
    swift_retain_n();
    v49 = v98;
    sub_1004D0A60(v40, v41, v98, v95, 1, 0, v99, v18, v48, v44);
    sub_10000CFBC(v48, &unk_100949290);
    v41[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    v80 = v41;
    [v41 setNeedsLayout];
    sub_10000CFBC(v44, &qword_10094F730);
    sub_10000CFBC(v18, &unk_1009492A0);
    v84 = v45;
    v50 = *&v45[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v81 = v40;
    v51 = v49;
    v52 = sub_10075E66C();
    v53 = v95;
    v78(v18, 1, 1, v76);
    v54 = v53;
    v87 = v9;
    (v77)(v44, 1, 1);
    v74(v48, 1, 1, v46);
    sub_1004D0A60(v52, v50, v51, v53, 0, 0, v99, v18, v48, v44);
    sub_10000CFBC(v48, &unk_100949290);
    v50[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v50 setNeedsLayout];

    sub_10000CFBC(v44, &qword_10094F730);
    sub_10000CFBC(v18, &unk_1009492A0);
    v55 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
    [*&v50[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v50[v55] setUserInteractionEnabled:0];
    [v50 setHidden:1];
    v56 = v79;
    v57 = sub_10076BB5C();
    if (v57)
    {
    }

    sub_100261178(v57 != 0);
    v58 = *&v50[v55];
    v59 = sub_10076BB3C();
    v60 = v56;

    v61 = sub_10076BA2C();

    v62 = v89;
    v82(v89, 1, 1, v83);
    v63 = v90;
    v64 = v93;
    (*(v90 + 104))(v91, enum case for OfferButtonSubtitlePosition.below(_:), v93);
    (*(v63 + 56))(v94, 1, 1, v64);
    sub_1006D8F80(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
    v65 = v92;
    sub_10076759C();
    sub_1001F12C8(v59, v61, 0, v62, v65, v54, 0, 0);

    (*(v85 + 8))(v65, v87);
    sub_10000CFBC(v62, &unk_100946760);
    v66 = v84;
    sub_100345140(v60, v84);

    v23 = v86;
    sub_10029E170(v66, v86);
    v35 = v98;
  }

  else
  {
    [*(v30 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) setHidden:1];
    v67 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView);
    v68 = sub_1007628DC();
    (*(*(v68 - 8) + 56))(v18, 1, 1, v68);
    v69 = v97;
    (*(v10 + 56))(v97, 1, 1, v9);
    v70 = sub_10076C54C();
    v71 = v96;
    (*(*(v70 - 8) + 56))(v96, 1, 1, v70);
    sub_1004D0A60(v31, v67, v35, a2, 0, 0, v99, v18, v71, v69);
    sub_10000CFBC(v71, &unk_100949290);
    v67[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v67 setNeedsLayout];
    sub_10000CFBC(v69, &qword_10094F730);
    sub_10000CFBC(v18, &unk_1009492A0);
    sub_10029E170(v30, v23);
  }

  sub_10000CFBC(v99, &unk_10094D210);
  sub_10000CFBC(v23, &qword_10094FCE8);
  return sub_10000CFBC(v35, &unk_100946760);
}

uint64_t sub_1006D7D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v146 = a3;
  v144 = a2;
  v4 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v4 - 8);
  v136 = v117 - v5;
  v135 = sub_100768FEC();
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100946750);
  v140 = *(v7 - 8);
  v141 = v7;
  __chkstk_darwin(v7);
  v134 = v117 - v8;
  v9 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v9 - 8);
  v137 = v117 - v10;
  v11 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v11 - 8);
  v139 = v117 - v12;
  v13 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v13 - 8);
  v138 = v117 - v14;
  v15 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v15 - 8);
  v17 = v117 - v16;
  v18 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v18 - 8);
  v20 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v117 - v22;
  v24 = sub_10000A5D4(&qword_10094FCE8);
  __chkstk_darwin(v24 - 8);
  v26 = v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v117 - v28;
  v30 = sub_10076361C();
  v31 = *(v30 - 1);
  __chkstk_darwin(v30);
  v143 = v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v117 - v34;
  sub_100767F7C();
  v36 = a1;
  if (swift_dynamicCastClass())
  {
    v142 = a1;

    v37 = sub_100767EFC();
    v39 = v145;
    v38 = v146;
    sub_1006D7100(v37, v146);

    v40 = *(v39 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView);
    v41 = sub_100767F5C();
    v42 = sub_100767F6C();
    sub_100647128(v41, v42, v38);

    v43 = *(v39 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView);
    v44 = [v40 backgroundColor];
    [v43 setBackgroundColor:v44];

    sub_100767F0C();
    v45 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v46 = v143;
    (*(v31 + 16))(v143, v39 + v45, v30);
    swift_beginAccess();
    (*(v31 + 24))(v39 + v45, v35, v30);
    swift_endAccess();
    sub_100503948();
    v47 = *(v31 + 8);
    v47(v46, v30);
    v47(v35, v30);
    *(v39 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_includeBorderInDarkMode) = sub_100767F3C() & 1;
    sub_100506394(0);
    sub_100767EFC();

    v48 = sub_100761E4C();
    v49 = v144;
  }

  else
  {
    v127 = v29;
    v50 = v35;
    v51 = v145;
    v129 = v30;
    v126 = v20;
    v128 = v26;
    v131 = v23;
    v130 = v17;
    sub_100764E1C();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v53 = result;
    v54 = *(v51 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView);
    v142 = v36;

    sub_100647A70(v53, v146);
    v55 = *(v51 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView);
    v56 = [v54 backgroundColor];
    [v55 setBackgroundColor:v56];

    sub_100764DAC();
    v57 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v58 = v31;
    v59 = *(v31 + 16);
    v60 = v143;
    v61 = v129;
    v59(v143, v51 + v57, v129);
    swift_beginAccess();
    (*(v58 + 24))(v51 + v57, v50, v61);
    swift_endAccess();
    sub_100503948();
    v62 = *(v58 + 8);
    v62(v60, v61);
    v62(v50, v61);
    *(v51 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_includeBorderInDarkMode) = sub_100764DDC() & 1;
    sub_100506394(0);
    v63 = *(v51 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_learnMoreView);
    if (sub_100764D8C())
    {
      v64 = sub_10076C5AC();
    }

    else
    {
      v64 = 0;
    }

    v65 = v127;
    [*(v63 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v64];

    v66 = *(v51 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView);
    v67 = sub_100764D7C();
    sub_100764DAC();
    v68 = *(v58 + 56);
    v68(v65, 0, 1, v61);
    sub_1006D35FC(v67, v146, v65);

    sub_10000CFBC(v65, &qword_10094FCE8);
    v69 = *(v66 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    sub_100764D9C();
    v70 = sub_10076FF6C();

    [v69 setTitle:v70 forState:0];

    v71 = *(v66 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
    if (sub_100764D8C())
    {
      v72 = sub_10076C5AC();
    }

    else
    {
      v72 = 0;
    }

    v73 = v140;
    [v71 setAttributedText:v72];

    v74 = sub_100764D7C();
    v75 = v128;
    v143 = v53;
    sub_100764DAC();
    v68(v75, 0, 1, v129);
    v76 = v146;
    sub_1006D35FC(v74, v146, v75);
    v77 = *(v51 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView);
    v145 = v74;
    v78 = sub_10076C4BC();
    v79 = sub_10000A5D4(&qword_100945590);
    v80 = *(v79 - 8);
    v81 = *(v80 + 56);
    v82 = v131;
    v127 = (v80 + 56);
    v81(v131, 1, 1, v79);
    v83 = sub_10075F78C();
    v84 = v130;
    (*(*(v83 - 8) + 56))(v130, 1, 1, v83);
    sub_10075E67C();
    v85 = swift_dynamicCastClass();
    v86 = *&v77[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
    if (v85)
    {
      v124 = v81;
      v125 = v79;
      v129 = v77;
      v87 = v85;
      v88 = v86;
      v120 = sub_1007628DC();
      v89 = *(v120 - 8);
      v119 = *(v89 + 56);
      v121 = v89 + 56;
      v90 = v138;
      v119(v138, 1, 1, v120);
      v118 = *(v73 + 56);
      v91 = v139;
      v118(v139, 1, 1, v141);
      v92 = sub_10076C54C();
      v93 = *(v92 - 8);
      v117[0] = *(v93 + 56);
      v117[1] = v93 + 56;
      v94 = v137;
      (v117[0])(v137, 1, 1, v92);
      swift_retain_n();
      sub_1004D0A60(v87, v88, v82, v146, 1, 0, v130, v90, v94, v91);
      sub_10000CFBC(v94, &unk_100949290);
      v88[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10026202C();
      v122 = v88;
      [v88 setNeedsLayout];
      sub_10000CFBC(v91, &qword_10094F730);
      sub_10000CFBC(v90, &unk_1009492A0);
      v95 = *&v129[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
      v123 = v87;
      v96 = sub_10075E66C();
      v119(v90, 1, 1, v120);
      v118(v91, 1, 1, v141);
      v97 = v92;
      v84 = v130;
      (v117[0])(v94, 1, 1, v97);
      sub_1004D0A60(v96, v95, v82, v146, 0, 0, v84, v90, v94, v91);
      sub_10000CFBC(v94, &unk_100949290);
      v95[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10026202C();
      [v95 setNeedsLayout];

      sub_10000CFBC(v91, &qword_10094F730);
      sub_10000CFBC(v90, &unk_1009492A0);
      v98 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
      [*&v95[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setAlpha:0.0];
      [*&v95[v98] setUserInteractionEnabled:0];
      [v95 setHidden:1];
      v99 = sub_10076BB5C();
      if (v99)
      {
      }

      sub_100261178(v99 != 0);
      v100 = *&v95[v98];
      v101 = sub_10076BB3C();

      v102 = sub_10076BA2C();

      v103 = v126;
      v124(v126, 1, 1, v125);
      v104 = v132;
      v105 = v135;
      (*(v132 + 104))(v133, enum case for OfferButtonSubtitlePosition.below(_:), v135);
      (*(v104 + 56))(v136, 1, 1, v105);
      sub_1006D8F80(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
      v106 = v134;
      sub_10076759C();
      sub_1001F12C8(v101, v102, 0, v103, v106, v146, 0, 0);

      (*(v140 + 8))(v106, v141);
      sub_10000CFBC(v103, &unk_100946760);
      v107 = v129;
      sub_100345140(v78, v129);

      v75 = v128;
      sub_10029E170(v107, v128);
      v108 = v144;
      v109 = v131;
    }

    else
    {
      [*&v77[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView] setHidden:1];
      v110 = *&v77[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
      v111 = sub_1007628DC();
      v112 = v138;
      (*(*(v111 - 8) + 56))(v138, 1, 1, v111);
      v113 = v139;
      (*(v73 + 56))(v139, 1, 1, v141);
      v114 = sub_10076C54C();
      v115 = v137;
      (*(*(v114 - 8) + 56))(v137, 1, 1, v114);
      sub_1004D0A60(v78, v110, v131, v76, 0, 0, v84, v112, v115, v113);
      v116 = v115;
      v109 = v131;
      sub_10000CFBC(v116, &unk_100949290);
      v110[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10026202C();
      [v110 setNeedsLayout];
      sub_10000CFBC(v113, &qword_10094F730);
      sub_10000CFBC(v112, &unk_1009492A0);
      sub_10029E170(v77, v75);
      v108 = v144;
    }

    sub_10000CFBC(v84, &unk_10094D210);
    sub_10000CFBC(v109, &unk_100946760);
    sub_10000CFBC(v75, &qword_10094FCE8);
    sub_100764D7C();

    v48 = sub_10076C4BC();
    v49 = v108;
  }

  sub_10029E930(v48, v49);
}

uint64_t sub_1006D8F80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006D8FCC()
{
  result = qword_100957FA0;
  if (!qword_100957FA0)
  {
    type metadata accessor for VideoView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957FA0);
  }

  return result;
}

void sub_1006D9024(uint64_t a1, char a2)
{
  v5 = *&v2[qword_1009602D0];
  v6 = [v5 layer];
  [v6 removeAllAnimations];

  if ((a2 & 1) != 0 && ([v5 alpha], v7 == 1.0))
  {
    [v5 setAlpha:0.0];
    [v5 setImage:a1];
    sub_10039B1D4();
    v8 = v2;
    v9 = sub_10077089C();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    v13[4] = sub_1006D9380;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10009AEDC;
    v13[3] = &unk_1008A04B8;
    v11 = _Block_copy(v13);
    v12 = v8;

    [v9 addAnimations:v11];
    _Block_release(v11);
    [v9 startAnimation];
  }

  else
  {

    [v5 setImage:a1];
  }
}

id sub_1006D91F0()
{
  v1 = [*(v0 + qword_1009602D0) image];

  return v1;
}

void sub_1006D9234(void *a1)
{
  [*(v1 + qword_1009602D0) setImage:a1];
}

void (*sub_1006D9288(void *a1))(id *a1)
{
  v3 = *(v1 + qword_1009602D0);
  a1[1] = v3;
  *a1 = [v3 image];
  return sub_1006D92F0;
}

void sub_1006D92F0(id *a1)
{
  v1 = *a1;
  [a1[1] setImage:?];
}

uint64_t sub_1006D9348()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006D93A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1006D93BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a2;
  v7 = sub_10076341C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView();
  if (sub_10077090C())
  {

    v11 = sub_1007708FC();
    v19[1] = v12;
    v19[2] = v11;
    v13 = swift_allocObject();
    v19[0] = a3;
    v14 = v13;
    swift_weakInit();
    (*(v8 + 16))(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v7);
    v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v20 = a1;
    v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    (*(v8 + 32))(v17 + v15, v10, v7);
    *(v17 + v16) = v19[0];
    *(a4 + 24) = sub_10000A5D4(&qword_100942C18);
    *(a4 + 32) = sub_100023880();
    sub_10000DB7C(a4);

    sub_10076A3BC();
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void *sub_1006D95F8(uint64_t a1)
{
  v1 = sub_10044B6E4(a1);
  sub_1000F92CC(v1);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1006D9640()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006D9678()
{
  v1 = sub_10076341C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1006D9750(void *a1)
{
  sub_1006D9F88();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&v1[qword_100965200];
    if (v4)
    {
      v5 = *&v1[qword_100965200];
    }

    else
    {
      v5 = [v1 contentView];
      v4 = 0;
    }

    v6 = v4;
    [v5 addSubview:v3];
    [v1 setNeedsLayout];
  }
}

uint64_t sub_1006D9824(void *a1)
{
  v3 = *&v1[qword_100965200];
  if (v3)
  {
    v4 = *&v1[qword_100965200];
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = v3;
    goto LABEL_7;
  }

  v4 = [v1 contentView];
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v3;
  v6 = [a1 superview];
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  sub_1000ACA5C();
  v8 = sub_100770EEC();

  v4 = v7;
LABEL_8:

  return v8 & 1;
}

void sub_1006D98E0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1006D9750(0);
}

void sub_1006D993C(double *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setFrame:{*a1, a1[1], a1[2], a1[3]}];
  }
}

void sub_1006D99B4(void *a1)
{
  v3 = *(v1 + qword_100965200);
  *(v1 + qword_100965200) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = a1;
  if (Strong)
  {
    [v4 addSubview:Strong];
  }
}

id sub_1006D9A44(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v11 = &a1[qword_1009A32A8];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a1[qword_100965200] = 0;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

void sub_1006D9AE8()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + qword_100965200);
}

void sub_1006D9B28(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = *(a1 + qword_100965200);
}

uint64_t type metadata accessor for FramedVideoCollectionViewCell()
{
  result = qword_100965230;
  if (!qword_100965230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1006D9C34(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1006D9C88;
}

void sub_1006D9C88(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1006D9750(v2);
  }

  else
  {
    sub_1006D9750(*a1);
  }
}

uint64_t sub_1006D9CF0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1006DA0F0(qword_1009653D0, type metadata accessor for FramedVideoCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1006D9D64(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006DA0F0(qword_1009653D0, type metadata accessor for FramedVideoCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

void (*sub_1006D9DF0(uint64_t *a1))(void *a1)
{
  swift_getObjectType();
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
  sub_1006DA0F0(qword_1009653D0, type metadata accessor for FramedVideoCollectionViewCell);
  *(v3 + 32) = sub_10076483C();
  return sub_100019FCC;
}

void sub_1006D9F88()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *&v0[qword_100965200];
  if (v2)
  {
    v9 = *&v0[qword_100965200];
    if (Strong)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = v2;
    goto LABEL_11;
  }

  v9 = [v0 contentView];
  if (!Strong)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1006DA0F0(&qword_100942810, type metadata accessor for VideoView);
  v3 = v2;
  v4 = [Strong superview];
  if (v4)
  {
    v5 = v4;
    sub_1000ACA5C();
    v6 = sub_100770EEC();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      return;
    }

    v9 = v7;
    [v7 removeFromSuperview];
  }

  else
  {
  }

LABEL_11:
}

uint64_t sub_1006DA0F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006DA138()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1006DA1D0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009A32B0;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1006DA228(uint64_t a1)
{
  v3 = qword_1009A32B0;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1006DA2E8()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "prepareForReuse");
  return (*(*((v3 & v2) + 0x58) + 88))(*((v3 & v2) + 0x50));
}

uint64_t sub_1006DA404@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100763F9C();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v3);
  sub_100763FAC();
  v6 = sub_100763FDC();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

char *sub_1006DA570(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *v4;
  v12 = swift_isaMask;
  v13 = qword_1009A32B0;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = qword_1009A32B8;
  *&v5[v15] = (*(*((v12 & v11) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v20 = v16;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v21 = [v20 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v22 = [v20 contentView];
  [v22 addSubview:*&v20[qword_1009A32B8]];

  return v20;
}

id sub_1006DA7AC()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[qword_1009A32B8];
  [v0 bounds];
  return [v1 setFrame:?];
}

void sub_1006DA818(void *a1)
{
  v1 = a1;
  sub_1006DA7AC();
}

uint64_t sub_1006DA860()
{
  type metadata accessor for ScrollablePillView();
  swift_dynamicCastClass();
  return sub_10076D9CC();
}

double sub_1006DA8C4(void *a1)
{
  v1 = a1;
  sub_1006DA860();
  v3 = v2;

  return v3;
}

void sub_1006DA918(void *a1)
{
  v1 = a1;
  sub_1006DA2E8();
}

id sub_1006DA960(void *a1)
{
  v1 = a1;
  v2 = sub_1006DA9A4();

  return v2;
}

void sub_1006DAB20(uint64_t a1)
{
  sub_10000DBE0(a1 + qword_1009A32B0);
  v2 = *(a1 + qword_1009A32B8);
}

void sub_1006DABAC()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = qword_1009A32B0;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = qword_1009A32B8;
  *(v1 + v6) = (*(*((v3 & v2) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1006DAD14()
{
  v0 = sub_1007617CC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007617FC();
  sub_1006DAEB0(&qword_100945C00, &type metadata accessor for HorizontalRule);
  result = sub_10076332C();
  if (v7)
  {
    sub_1007617EC();
    swift_getKeyPath();
    sub_10076338C();

    v5 = v7;
    sub_1007617AC();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1006DAEB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006DAEFC()
{
  if (([v0 isViewLoaded] & 1) == 0)
  {
    v5._countAndFlagsBits = 0x535F474E494D4F43;
    v5._object = 0xEB000000004E4F4FLL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    sub_1007622EC(v5, v6);
    v1 = objc_allocWithZone(_UIContentUnavailableView);
    v2 = sub_10076FF6C();

    v3 = [v1 initWithFrame:v2 title:0 style:{0.0, 0.0, 0.0, 0.0}];

    [v0 setView:v3];
  }
}

id sub_1006DB1CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComingSoonViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006DB224()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100764FDC();
  sub_10000DB18(v4, qword_1009A32C0);
  sub_10000A61C(v4, qword_1009A32C0);
  if (qword_100940DB8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1720);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v16[3] = sub_10076D9AC();
  v16[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v16);
  v14 = v0;
  v15 = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v13);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  v14 = &type metadata for Double;
  v15 = &protocol witness table for Double;
  v13[0] = 0;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9[4] = &type metadata for Double;
  v9[5] = &protocol witness table for Double;
  v9[1] = 0;
  return sub_100764FCC();
}

id sub_1006DB580()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009459C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_10000A5D4(&qword_1009459B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1000843B0(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CFBC(v4, &qword_1009459C0);
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_100761FEC();
    sub_100761FDC();
    v11 = sub_10076082C();
    v12 = sub_100107BF4(v11, sub_1000368B8);

    v13 = sub_10076081C();
    sub_10050C274(v13, 0, v12);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1006DB814()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20[0] = sub_10076D1FC();
  v3 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100764FDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100764FFC();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();

  if (qword_100941530 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_1009A32C0);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyLabel];
  v20[4] = type metadata accessor for DynamicTypeLinkedLabel();
  v20[5] = &protocol witness table for UIView;
  v20[1] = v17;
  v18 = v17;
  sub_100764FEC();
  sub_100764FBC();
  (*(v3 + 8))(v5, v20[0]);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for PrivacyFooterCollectionViewCell()
{
  result = qword_1009654B0;
  if (!qword_1009654B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1006DBC48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = sub_10076771C();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076F9AC();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076D3DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyText;
  v16 = sub_10000A5D4(&qword_1009459B8);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_100940DB8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v9, qword_1009A1720);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyLabel] = sub_10050BDFC(v12, 0, 0);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  sub_10076F95C();
  sub_10000CFBC(v36, &unk_1009434C0);
  sub_10000CFBC(v37, &unk_1009434C0);
  sub_100770B9C();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  sub_10076262C();

  v27 = *&v19[v22];
  sub_100016F40(0, &qword_100942F10);
  v28 = v27;
  v29 = sub_100770D1C();
  v30 = *&v28[qword_10095B640];
  *&v28[qword_10095B640] = v29;
  v31 = v29;
  if ((sub_100770EEC() & 1) == 0)
  {
    sub_10050C644();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}

uint64_t sub_1006DC140(uint64_t a1)
{
  v59 = a1;
  v58 = sub_10000A5D4(&qword_10095B618);
  v66.i64[0] = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = v47 - v1;
  v2 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v2 - 8);
  v68 = v47 - v3;
  v64 = sub_10076C2DC();
  v69 = *(v64 - 8);
  __chkstk_darwin(v64);
  v5 = (v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v6 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v47 - v10;
  __chkstk_darwin(v12);
  v57 = v47 - v13;
  __chkstk_darwin(v14);
  v16 = v47 - v15;
  sub_10000A5D4(&qword_100942910);
  v17 = *(sub_10076C20C() - 8);
  v67 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v54 = v19;
  *(v19 + 16) = xmmword_1007844F0;
  v20 = v19 + v18;
  v72 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v72 = 0x4020000000000000;
  v70 = 0x4030000000000000;
  sub_10076C27C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v62 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v65 = *(v69 + 104);
  v69 += 104;
  v26 = v64;
  v65(v5);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  v61 = v8;
  sub_10076C29C();
  sub_10076C1CC();
  v72 = 0x3FF0000000000000;
  sub_10076C29C();
  v72 = 0x4024000000000000;
  v70 = 0x4034000000000000;
  sub_10076C27C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  v56 = v5;
  *v5 = _Q0;
  v29 = v62;
  v30 = v65;
  (v65)(v5, v62, v26);
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  sub_10076C29C();
  v31 = v67;
  v63 = v20;
  v60 = v16;
  top = UIEdgeInsetsZero.top;
  v52 = left;
  v32 = v56;
  sub_10076C1CC();
  v50 = 2 * v31;
  v72 = 0x3FF0000000000000;
  sub_10076C29C();
  v72 = 0x4034000000000000;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  v55 = v11;
  sub_10076C29C();
  v48 = vdupq_n_s64(0x4041000000000000uLL);
  *v32 = v48;
  v33 = v64;
  v30(v32, v29, v64);
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  sub_10076C29C();
  v34 = v50;
  sub_10076C1CC();
  v74 = 0x4000000000000000;
  v47[1] = v34 + v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  v50 = sub_10050BAC4();
  v35 = v53;
  sub_10076757C();
  v36 = v58;
  sub_10076758C();
  v37 = *(v66.i64[0] + 8);
  v66.i64[0] += 8;
  v49 = v37;
  v37(v35, v36);
  v70 = v72;
  sub_10076C29C();
  v72 = 0x4034000000000000;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  v38 = v56;
  *v56 = v48;
  v39 = v62;
  (v65)(v38, v62, v33);
  sub_1007704BC();
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v74 = 0x4000000000000000;
  v48.i64[0] = 4 * v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  sub_10076757C();
  v40 = v58;
  sub_10076758C();
  v49(v35, v40);
  v70 = v72;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  v66 = vdupq_n_s64(0x404A000000000000uLL);
  *v38 = v66;
  v41 = v38;
  v42 = v38;
  v43 = v64;
  v44 = v65;
  (v65)(v41, v39, v64);
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  sub_10076C29C();
  v45 = v48.i64[0];
  sub_10076C1CC();
  v67 += v45;
  v72 = 0x4000000000000000;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  v72 = 0x4038000000000000;
  sub_10076C29C();
  *v42 = v66;
  (v44)(v42, v62, v43);
  LOBYTE(v72) = 0;
  sub_10076C29C();
  v72 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v54;
}

uint64_t sub_1006DCD48()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965D58, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100942468, &type metadata accessor for SearchLandingDiffablePagePresenter);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965D60);
  sub_100071820(&qword_100965D68, &qword_100965D60);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965D70, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965D78, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DD260()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965D28, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100965D30, &type metadata accessor for SearchFocusDiffablePagePresenter);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965D38);
  sub_100071820(&qword_100965D40, &qword_100965D38);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965D48, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965D50, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DD778()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965CE0, &type metadata accessor for ArcadeDiffablePagePresenter);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100965CE8, &type metadata accessor for ArcadeDiffablePagePresenter);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965CF0);
  sub_100071820(&qword_100965CF8, &qword_100965CF0);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965D00, &type metadata accessor for ArcadeDiffablePagePresenter);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965D08, &type metadata accessor for ArcadeDiffablePagePresenter);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DDC90()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965C80, &type metadata accessor for SearchResultsDiffablePagePresenter);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100965C88, &type metadata accessor for SearchResultsDiffablePagePresenter);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100947D28);
  sub_100071820(&qword_100947D30, &qword_100947D28);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965C90, &type metadata accessor for SearchResultsDiffablePagePresenter);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965C98, &type metadata accessor for SearchResultsDiffablePagePresenter);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DE1A8()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965C68, &type metadata accessor for TodayDiffablePagePresenter);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100951978, &type metadata accessor for TodayDiffablePagePresenter);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_10094B630);
  sub_100071820(&qword_10094B638, &qword_10094B630);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965C70, &type metadata accessor for TodayDiffablePagePresenter);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965C78, &type metadata accessor for TodayDiffablePagePresenter);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DE6C0()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965BF8, &type metadata accessor for GenericDiffablePagePresenter);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_10095F320, &type metadata accessor for GenericDiffablePagePresenter);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965C00);
  sub_100071820(&qword_100965C08, &qword_100965C00);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965C10, &type metadata accessor for GenericDiffablePagePresenter);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965C18, &type metadata accessor for GenericDiffablePagePresenter);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DEBD8()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965C48, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_10095AB58, &type metadata accessor for ReviewsDiffablePagePresenter);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965C50);
  sub_100071820(&qword_100965C58, &qword_100965C50);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_10095AB50, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965C60, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DF0F0()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  sub_1006EB020(&qword_100965B60, &type metadata accessor for ProductDiffablePagePresenter);
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006EB020(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006EB020(&qword_100965B48, &type metadata accessor for ProductDiffablePagePresenter);
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000A5D4(&qword_100965B68);
  sub_100071820(&qword_100965B70, &qword_100965B68);
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1006EB020(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1006EB020(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006EB020(&qword_100965B40, &type metadata accessor for ProductDiffablePagePresenter);
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006EB020(&qword_100965B78, &type metadata accessor for ProductDiffablePagePresenter);
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1006DF608(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100950600);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_10000A5D4(&qword_10094B618);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_100016E2C(a1, &v16[-1] - v7, &qword_10094B618);
  v9 = sub_10000A5D4(&qword_100950560);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CFBC(v8, &qword_10094B618);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    sub_100761B9C();
    (*(v10 + 8))(v8, v9);
    v11 = sub_10076B09C();
    (*(v3 + 8))(v5, v2);
    v12 = sub_10000A5D4(&qword_100950680);
    v13 = sub_100071820(&qword_100950688, &qword_100950680);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = sub_10076560C();
  if (v17)
  {
    return sub_10000CD74(v16);
  }

  return result;
}

uint64_t sub_1006DF89C()
{
  v1 = sub_10000A5D4(&qword_100950608);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000A5D4(&unk_100950610);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000A5D4(&qword_100965D10);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000A5D4(&unk_100950568);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000A5D4(&qword_100946598);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10099E360);
  sub_100765DDC();
  sub_10000A5D4(&unk_100950620);
  sub_100071820(&qword_1009465A0, &unk_100950620);
  sub_10076F45C();
  sub_10000A5D4(&qword_100965CF0);
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v10 + 8))(v12, v9);
  sub_100765DEC();
  sub_10000A5D4(&qword_100950578);
  v13 = sub_100071820(&qword_100950580, &qword_100950578);
  sub_10076F45C();
  v14 = v21;
  v20[1] = v13;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v29 + 8))(v14, v30);
  sub_10076847C();
  sub_10000A5D4(&qword_100965D18);
  sub_100071820(&qword_100965D20, &qword_100965D18);
  sub_10076F45C();
  v15 = v22;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v23 + 8))(v15, v24);
  sub_100765E4C();
  sub_10000A5D4(&qword_100950630);
  sub_100071820(&qword_100950638, &qword_100950630);
  sub_10076F45C();
  v16 = v25;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_1009503D0))
  {

    sub_10076F45C();
    v17 = v28;
    sub_10076F46C();

    sub_10000CD74(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000CFBC(v17, &qword_100950608);
}

uint64_t sub_1006DFF44()
{
  v1 = sub_10000A5D4(&qword_100950608);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000A5D4(&unk_100950610);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000A5D4(&qword_100965CB8);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000A5D4(&unk_100950568);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000A5D4(&qword_100946598);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10099E360);
  sub_100765DDC();
  sub_10000A5D4(&unk_100950620);
  sub_100071820(&qword_1009465A0, &unk_100950620);
  sub_10076F45C();
  sub_10000A5D4(&qword_100965CC0);
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v10 + 8))(v12, v9);
  sub_100765DEC();
  sub_10000A5D4(&qword_100950578);
  v13 = sub_100071820(&qword_100950580, &qword_100950578);
  sub_10076F45C();
  v14 = v21;
  v20[1] = v13;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v29 + 8))(v14, v30);
  sub_10076847C();
  sub_10000A5D4(&qword_100965CC8);
  sub_100071820(&qword_100965CD0, &qword_100965CC8);
  sub_10076F45C();
  v15 = v22;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v23 + 8))(v15, v24);
  sub_100765E4C();
  sub_10000A5D4(&qword_100950630);
  sub_100071820(&qword_100950638, &qword_100950630);
  sub_10076F45C();
  v16 = v25;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_1009503D0))
  {

    sub_10076F45C();
    v17 = v28;
    sub_10076F46C();

    sub_10000CD74(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000CFBC(v17, &qword_100950608);
}

uint64_t sub_1006E05EC()
{
  v1 = sub_10000A5D4(&qword_100950608);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000A5D4(&unk_100950610);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000A5D4(&qword_100965CA0);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000A5D4(&unk_100950568);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000A5D4(&qword_100946598);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10099E360);
  sub_100765DDC();
  sub_10000A5D4(&unk_100950620);
  sub_100071820(&qword_1009465A0, &unk_100950620);
  sub_10076F45C();
  sub_10000A5D4(&qword_100947D28);
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v10 + 8))(v12, v9);
  sub_100765DEC();
  sub_10000A5D4(&qword_100950578);
  v13 = sub_100071820(&qword_100950580, &qword_100950578);
  sub_10076F45C();
  v14 = v21;
  v20[1] = v13;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v29 + 8))(v14, v30);
  sub_10076847C();
  sub_10000A5D4(&qword_100965CA8);
  sub_100071820(&qword_100965CB0, &qword_100965CA8);
  sub_10076F45C();
  v15 = v22;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v23 + 8))(v15, v24);
  sub_100765E4C();
  sub_10000A5D4(&qword_100950630);
  sub_100071820(&qword_100950638, &qword_100950630);
  sub_10076F45C();
  v16 = v25;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_1009503D0))
  {

    sub_10076F45C();
    v17 = v28;
    sub_10076F46C();

    sub_10000CD74(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000CFBC(v17, &qword_100950608);
}

uint64_t sub_1006E0C94()
{
  v1 = sub_10000A5D4(&qword_100950608);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000A5D4(&unk_100950610);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000A5D4(&qword_100965C20);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000A5D4(&unk_100950568);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000A5D4(&qword_100946598);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10099E360);
  sub_100765DDC();
  sub_10000A5D4(&unk_100950620);
  sub_100071820(&qword_1009465A0, &unk_100950620);
  sub_10076F45C();
  sub_10000A5D4(&qword_100965C28);
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v10 + 8))(v12, v9);
  sub_100765DEC();
  sub_10000A5D4(&qword_100950578);
  v13 = sub_100071820(&qword_100950580, &qword_100950578);
  sub_10076F45C();
  v14 = v21;
  v20[1] = v13;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v29 + 8))(v14, v30);
  sub_10076847C();
  sub_10000A5D4(&qword_100965C30);
  sub_100071820(&qword_100965C38, &qword_100965C30);
  sub_10076F45C();
  v15 = v22;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v23 + 8))(v15, v24);
  sub_100765E4C();
  sub_10000A5D4(&qword_100950630);
  sub_100071820(&qword_100950638, &qword_100950630);
  sub_10076F45C();
  v16 = v25;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_1009503D0))
  {

    sub_10076F45C();
    v17 = v28;
    sub_10076F46C();

    sub_10000CD74(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000CFBC(v17, &qword_100950608);
}

uint64_t sub_1006E133C()
{
  v1 = sub_10000A5D4(&qword_100950608);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10000A5D4(&unk_100950610);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10000A5D4(&qword_100965BE0);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10000A5D4(&unk_100950568);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10000A5D4(&qword_100946598);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_10099E360);
  sub_100765DDC();
  sub_10000A5D4(&unk_100950620);
  sub_100071820(&qword_1009465A0, &unk_100950620);
  sub_10076F45C();
  sub_10000A5D4(&qword_100965B68);
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v10 + 8))(v12, v9);
  sub_100765DEC();
  sub_10000A5D4(&qword_100950578);
  v13 = sub_100071820(&qword_100950580, &qword_100950578);
  sub_10076F45C();
  v14 = v21;
  v20[1] = v13;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v29 + 8))(v14, v30);
  sub_10076847C();
  sub_10000A5D4(&qword_100965BE8);
  sub_100071820(&qword_100965BF0, &qword_100965BE8);
  sub_10076F45C();
  v15 = v22;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v23 + 8))(v15, v24);
  sub_100765E4C();
  sub_10000A5D4(&qword_100950630);
  sub_100071820(&qword_100950638, &qword_100950630);
  sub_10076F45C();
  v16 = v25;
  sub_10076F46C();

  sub_10000CD74(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_1009503D0))
  {

    sub_10076F45C();
    v17 = v28;
    sub_10076F46C();

    sub_10000CD74(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10000CFBC(v17, &qword_100950608);
}

void sub_1006E19E4(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v30 = a4;
  v31 = a3;
  v29 = a2;
  v5 = v4;
  v7 = sub_10000A5D4(&qword_100950600);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_10000A5D4(&qword_10094B618);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_10000A5D4(&qword_100950560);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  sub_1006DF608(v13);
  sub_10000CFBC(v13, &qword_10094B618);
  v16 = sub_100761BAC();
  v17 = qword_1009503C8;
  if (v16)
  {
    swift_beginAccess();
    v18 = *&v5[v17];
    if (!v18)
    {
      goto LABEL_7;
    }

    v19 = v18;
    sub_100761B9C();
    sub_10076998C();
  }

  else
  {
    swift_beginAccess();
    v20 = *&v5[v17];
    if (!v20)
    {
      goto LABEL_7;
    }

    v19 = v20;
    sub_100761B9C();
    sub_100761BBC();
    sub_1007699FC();
  }

  (*(v8 + 8))(v10, v7);
LABEL_7:
  v21 = v29;
  sub_10000A5D4(v29);
  sub_100071820(v30, v21);
  sub_10076B31C();
  v22 = [v5 collectionView];
  if (!v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = [v22 window];

  if (v24)
  {

    v25 = [v5 collectionView];
    if (!v25)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v26 = v25;
    sub_10076666C();
  }

  v27 = [v5 view];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  [v27 bounds];

  sub_10076A6CC();
  if (sub_100761B8C())
  {
    sub_100760C1C();
  }
}

void sub_1006E1DF4(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v6 - 8);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = sub_10076F13C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016E2C(a2, v97, &unk_1009434C0);
  if (v98)
  {
    sub_100016F40(0, &qword_1009441F0);
    if (swift_dynamicCast())
    {
      v18 = v66;
      [v18 bounds];
      LOBYTE(v91) = 1;
      *&v73 = v18;
      *(&v73 + 1) = v19;
      *&v74 = v20;
      *(&v74 + 1) = v21;
      *&v75 = v22;
      BYTE8(v75) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v76 = _Q0;
      v77 = _Q0;
      v78 = 15;
      sub_100016F40(0, &qword_1009471F0);
      *v17 = sub_10077068C();
      (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
      v28 = sub_10076F16C();
      (*(v15 + 8))(v17, v14);
      if (v28)
      {
        v81 = xmmword_10094FFF8;
        v82 = xmmword_100950008;
        v83 = xmmword_100950018;
        v79 = xmmword_10094FFD8;
        v80 = xmmword_10094FFE8;
        v87 = v75;
        v88 = v76;
        v89 = v77;
        v85 = v73;
        v86 = v74;
        v91 = xmmword_10094FFD8;
        v92 = xmmword_10094FFE8;
        v94 = xmmword_100950008;
        v95 = xmmword_100950018;
        v84 = qword_100950028;
        v90 = v78;
        v96 = qword_100950028;
        v93 = xmmword_10094FFF8;
        sub_100016E2C(&v79, &v67, &unk_1009505F0);
        xmmword_10094FFF8 = v87;
        xmmword_100950008 = v88;
        xmmword_100950018 = v89;
        qword_100950028 = v90;
        xmmword_10094FFD8 = v85;
        xmmword_10094FFE8 = v86;
        sub_10000CFBC(&v91, &unk_1009505F0);
        v29 = *&v65[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
        v30 = sub_10000A5D4(&unk_1009428E0);
        sub_1001F9960(&v73, &v67);
        sub_10076F5AC();
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(v13, 1, v30) == 1)
        {
          sub_10000CFBC(v13, &unk_100943200);
        }

        else
        {
          sub_100263BF0(v64, 1, v29, v13);
          (*(v31 + 8))(v13, v30);
        }

        v69 = xmmword_10094FFF8;
        v70 = xmmword_100950008;
        v71 = xmmword_100950018;
        v72 = qword_100950028;
        v67 = xmmword_10094FFD8;
        v68 = xmmword_10094FFE8;
        xmmword_10094FFD8 = v79;
        xmmword_10094FFE8 = v80;
        xmmword_10094FFF8 = v81;
        xmmword_100950008 = v82;
        xmmword_100950018 = v83;
        qword_100950028 = v84;
        sub_10000CFBC(&v67, &unk_1009505F0);
        sub_1001F99BC(&v73);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v62 = v4;
    v32 = v3;
  }

  else
  {
    v62 = v4;
    v32 = v3;
    sub_10000CFBC(v97, &unk_1009434C0);
  }

  v33 = [v65 collectionView];
  if (!v33)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = v33;
  v35 = [v33 indexPathsForSelectedItems];

  if (!v35)
  {
LABEL_20:
    v56 = *&v65[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
    v57 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v10, 1, v57) == 1)
    {
      sub_10000CFBC(v10, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v64, 1, v56, v10);

      (*(v58 + 8))(v10, v57);
    }

    return;
  }

  v36 = sub_1007701BC();

  if (!*(v36 + 16))
  {

    goto LABEL_20;
  }

  v37 = v63;
  v38 = *(v62 + 16);
  v39 = v36 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v60 = v32;
  v38(v63, v39, v32);

  v40 = [v65 collectionView];
  if (!v40)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v41 = v40;
  isa = sub_10075E02C().super.isa;
  v43 = [v41 cellForItemAtIndexPath:isa];

  if (!v43)
  {
    (*(v62 + 8))(v37, v60);
    goto LABEL_20;
  }

  v44 = v43;
  [v44 bounds];
  LOBYTE(v91) = 1;
  *&v73 = v43;
  *(&v73 + 1) = v45;
  *&v74 = v46;
  *(&v74 + 1) = v47;
  *&v75 = v48;
  BYTE8(v75) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v76 = _Q0;
  v77 = _Q0;
  v78 = 15;
  sub_100016F40(0, &qword_1009471F0);
  *v17 = sub_10077068C();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v50 = sub_10076F16C();
  (*(v15 + 8))(v17, v14);
  v51 = v62;
  if ((v50 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v81 = xmmword_10094FFF8;
  v82 = xmmword_100950008;
  v83 = xmmword_100950018;
  v79 = xmmword_10094FFD8;
  v80 = xmmword_10094FFE8;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v85 = v73;
  v86 = v74;
  v91 = xmmword_10094FFD8;
  v92 = xmmword_10094FFE8;
  v94 = xmmword_100950008;
  v95 = xmmword_100950018;
  v84 = qword_100950028;
  v90 = v78;
  v96 = qword_100950028;
  v93 = xmmword_10094FFF8;
  sub_100016E2C(&v79, &v67, &unk_1009505F0);
  xmmword_10094FFF8 = v87;
  xmmword_100950008 = v88;
  xmmword_100950018 = v89;
  qword_100950028 = v90;
  xmmword_10094FFD8 = v85;
  xmmword_10094FFE8 = v86;
  sub_10000CFBC(&v91, &unk_1009505F0);
  v52 = *&v65[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v53 = sub_10000A5D4(&unk_1009428E0);
  sub_1001F9960(&v73, &v67);
  v54 = v61;
  sub_10076F5AC();
  v55 = *(v53 - 8);
  if ((*(v55 + 48))(v54, 1, v53) == 1)
  {
    sub_10000CFBC(v54, &unk_100943200);
  }

  else
  {
    sub_100263BF0(v64, 1, v52, v54);
    (*(v55 + 8))(v54, v53);
  }

  v69 = xmmword_10094FFF8;
  v70 = xmmword_100950008;
  v71 = xmmword_100950018;
  v72 = qword_100950028;
  v67 = xmmword_10094FFD8;
  v68 = xmmword_10094FFE8;
  xmmword_10094FFD8 = v79;
  xmmword_10094FFE8 = v80;
  xmmword_10094FFF8 = v81;
  xmmword_100950008 = v82;
  xmmword_100950018 = v83;
  qword_100950028 = v84;
  sub_10000CFBC(&v67, &unk_1009505F0);
  sub_1001F99BC(&v73);

  (*(v51 + 8))(v63, v60);
}

void sub_1006E2840(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1007604DC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &aBlock[-1] - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v19 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarAppearanceProgress], v20 = Strong[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarAppearanceProgress + 8], Strong, v20 == 1))
  {
    if (a2 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a2)
  {
LABEL_4:
    sub_10076049C();
    sub_1007604BC();
    v22 = v21;
    v24 = v23;
    v25 = *(v12 + 8);
    v25(v17, v11);
    sub_10076049C();
    sub_1007604CC();
    v27 = v26;
    v29 = v28;
    v25(v14, v11);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a2;
    v31 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = a5;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = a6;
    v32 = _Block_copy(aBlock);

    v33 = [v31 initWithDuration:v32 controlPoint1:a3 controlPoint2:v22 animations:{v24, v27, v29}];
    _Block_release(v32);
    [v33 startAnimation];
  }
}

void sub_1006E2AD8(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarAppearanceProgress;
    *v4 = a1;
    *(v4 + 8) = 0;
    sub_1000739B4();
  }
}

void sub_1006E2B50()
{
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController])
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      if (v3)
      {

        *(sub_1006E48CC() + 88) = 1;

        v4 = [v0 transitionCoordinator];
        if (v4)
        {
          v5 = v4;
          v6 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_1006EAD7C;
          v17 = v6;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_1006F5994;
          v15 = &unk_1008A0980;
          v7 = _Block_copy(&aBlock);

          v8 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_1006EAD98;
          v17 = v8;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_1006F5994;
          v15 = &unk_1008A09A8;
          v9 = _Block_copy(&aBlock);

          [v5 animateAlongsideTransition:v7 completion:v9];
          _Block_release(v9);
          _Block_release(v7);
          swift_unknownObjectRelease();
        }

        else
        {

          v10 = [v0 collectionView];
          if (v10)
          {
            v11 = v10;
            sub_1004F3468(v10);
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_1006E2DD0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v4)
    {
      v5 = v4;
      sub_100016F40(0, &qword_1009453B0);
      v6 = v3;
      v7 = sub_100770EEC();

      if (v7)
      {
        if ([a1 isCancelled])
        {
          sub_1006E48CC();
          sub_1004F3B94();
        }
      }
    }
  }
}

void sub_1006E2ECC()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    if (*(v0 + qword_1009A32E8) == 1)
    {
      sub_1006E48CC();
      sub_1004F3B94();
    }

    else
    {
      v2 = [v0 transitionCoordinator];
      v3 = sub_1006E48CC();
      if (v2)
      {
        v11 = sub_100045400;
        v12 = v3;
        v7 = _NSConcreteStackBlock;
        v8 = 1107296256;
        v9 = sub_1006F5994;
        v10 = &unk_1008A0930;
        v4 = _Block_copy(&v7);

        v5 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = sub_1006EAD74;
        v12 = v5;
        v7 = _NSConcreteStackBlock;
        v8 = 1107296256;
        v9 = sub_1006F5994;
        v10 = &unk_1008A0958;
        v6 = _Block_copy(&v7);

        [v2 animateAlongsideTransition:v4 completion:v6];
        _Block_release(v6);
        _Block_release(v4);
        swift_unknownObjectRelease();
        return;
      }

      sub_1004F3B94();
    }
  }
}

void sub_1006E30F4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 isCancelled])
    {
      v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v4)
      {
        v5 = v4;
        sub_100016F40(0, &qword_1009453B0);
        v6 = v3;
        v7 = sub_100770EEC();

        if ((v7 & 1) != 0 && !*&v6[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController])
        {
          v8 = v6;
          v9 = [v8 navigationController];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 navigationBar];

            if (v11)
            {

              sub_1006E48CC();
              v12 = [v8 collectionView];

              if (!v12)
              {
                __break(1u);
                return;
              }

              sub_1004F3468(v12);

              v8 = v12;
            }
          }
        }
      }
    }
  }
}

void sub_1006E3278()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1006E48CC();
    v2 = [v1 collectionView];
    if (v2)
    {
      v3 = v2;
      sub_1004F3468(v2);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1006E3310(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v5 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_1000733E0();
  if ((a1 & 1) == 0 && ((a1 & 2) == 0 || (sub_1000735EC() & 1) == 0))
  {
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle) = 0;
    goto LABEL_11;
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    return;
  }

  a1 = v6;
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
LABEL_17:

    goto LABEL_18;
  }

  v8 = *(v7 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle) = v8;
  if ((v8 & 1) == 0)
  {
LABEL_11:
    v9 = 2;
    goto LABEL_12;
  }

  v9 = 3;
LABEL_12:
  v10 = [v1 navigationItem];
  [v10 setLargeTitleDisplayMode:v9];
}

uint64_t sub_1006E3464(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v4;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v5 = *(a1 + 16);
  v15 = *a1;
  v16 = v5;
  v6 = sub_10076F13C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016F40(0, &qword_1009471F0);
  *v9 = sub_10077068C();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_10076F16C();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v23 = xmmword_10094FFF8;
    v24 = xmmword_100950008;
    v25 = xmmword_100950018;
    v26 = qword_100950028;
    v21 = xmmword_10094FFD8;
    v22 = xmmword_10094FFE8;
    v27[3] = xmmword_100950008;
    v27[4] = xmmword_100950018;
    v27[1] = xmmword_10094FFE8;
    v27[2] = xmmword_10094FFF8;
    v28 = qword_100950028;
    v27[0] = xmmword_10094FFD8;
    sub_100016E2C(&v21, v13, &unk_1009505F0);
    xmmword_10094FFF8 = v17;
    xmmword_100950008 = v18;
    xmmword_100950018 = v19;
    qword_100950028 = v20;
    xmmword_10094FFD8 = v15;
    xmmword_10094FFE8 = v16;
    sub_10000CFBC(v27, &unk_1009505F0);
    v12 = sub_1001F9960(a1, v13);
    a2(v12);
    v13[2] = xmmword_10094FFF8;
    v13[3] = xmmword_100950008;
    v13[4] = xmmword_100950018;
    v14 = qword_100950028;
    v13[0] = xmmword_10094FFD8;
    v13[1] = xmmword_10094FFE8;
    xmmword_10094FFD8 = v21;
    xmmword_10094FFE8 = v22;
    xmmword_10094FFF8 = v23;
    xmmword_100950008 = v24;
    xmmword_100950018 = v25;
    qword_100950028 = v26;
    return sub_10000CFBC(v13, &unk_1009505F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1006E36DC(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E376C(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E37FC(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E388C(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E391C(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EAEE8;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E39AC(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E3A3C(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E3ACC(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E3B5C(void *a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EB130;
}

uint64_t (*sub_1006E3BEC(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EB124;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006EAC94;
}

void (*sub_1006E3CB0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAFE4;
}

void (*sub_1006E3D14(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAF74;
}

void (*sub_1006E3D78(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAF04;
}

void (*sub_1006E3DDC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAE74;
}

void (*sub_1006E3E40(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EACF8;
}

uint64_t (*sub_1006E3EA4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EB158;
}

uint64_t (*sub_1006E3F08(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EB158;
}

uint64_t (*sub_1006E3F6C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAEE4;
}

uint64_t (*sub_1006E3FD0(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EB158;
}

uint64_t (*sub_1006E4034(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EB158;
}

id sub_1006E4098(int a1, id a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  result = [a2 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    sub_10000A5D4(a3);
    sub_100071820(a5, a3);
    return sub_10076A6CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_1006E4160(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAFB0;
}

id (*sub_1006E41C4(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAF40;
}

id (*sub_1006E4228(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAEB0;
}

id (*sub_1006E428C(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAE40;
}

id (*sub_1006E42F0(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EACC4;
}

uint64_t sub_1006E4354(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  sub_100016E2C(a2, &v9, &unk_1009434C0);
  sub_100016E2C(&v8, &v6, &unk_1009505A0);
  v4 = v6;
  sub_100016E2C(v7, v5, &unk_1009434C0);

  sub_1006E1DF4(v2, v5);

  sub_10000CFBC(&v8, &unk_1009505A0);
  sub_10000CFBC(&v4, &unk_1009505A0);
  return sub_10000CFBC(v7, &unk_1009434C0);
}

char *sub_1006E4468(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_1009654C0) = 0x4024000000000000;
  *(v2 + qword_1009654C8) = 0;
  *(v2 + qword_1009654D0) = 0;
  *(v2 + qword_1009A32E8) = 0;
  *(v2 + qword_1009A32F0) = 0;
  *(v2 + qword_1009A32F8) = 0;
  v6 = qword_1009A3300;
  type metadata accessor for ProductTitleView();
  *(v3 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v3 + qword_1009A3308) = 0;
  *(v3 + qword_1009654D8) = 0;
  *(v3 + qword_1009A3310) = 0;
  *(v3 + qword_1009A3318) = 0;
  *(v3 + qword_1009654E8) = 0;
  v7 = qword_1009654F8;
  type metadata accessor for ProductPageExtensionBannerScrollObserver();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + v7) = v8;
  *(v3 + qword_100965500) = 0;
  *(v3 + qword_100965508) = &_swiftEmptySetSingleton;
  sub_10076148C();
  sub_10076F5CC();
  *(v3 + qword_1009654E0) = sub_10076122C() & 1;
  sub_10076A14C();
  sub_10076F5CC();
  *(v3 + qword_1009654F0) = v19;

  v9 = sub_100481468(a1, a2);
  v10 = qword_10099E390;
  v11 = *&v9[qword_10099E390];
  v12 = v9;
  v13 = v11;
  sub_1006E47E8();
  sub_1006EB020(&qword_100965B00, type metadata accessor for ProductTopLockupCollectionElementsObserver);
  sub_10076668C();

  v14 = *&v9[v10];

  sub_10076668C();

  v15 = *&v9[v10];

  v16 = qword_1009654F8;
  sub_1006EB020(&qword_100965B08, type metadata accessor for ProductPageExtensionBannerScrollObserver);

  sub_10076668C();

  v17 = *&v12[v16];
  sub_10000A5D4(&qword_100965B10);

  sub_10076F5AC();

  *(v17 + 40) = v20;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1006E47E8()
{
  v1 = qword_100965500;
  if (*&v0[qword_100965500])
  {
    v2 = *&v0[qword_100965500];
  }

  else
  {
    type metadata accessor for ProductTopLockupCollectionElementsObserver();
    swift_allocObject();

    v3 = v0;
    v2 = sub_10038FCAC();

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1006E48CC()
{
  v1 = qword_1009654D0;
  if (*(v0 + qword_1009654D0))
  {
    v2 = *(v0 + qword_1009654D0);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_1008A0618;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    *(v2 + 72) = sub_1006EAA98;
    *(v2 + 80) = v3;

    sub_1000167E0(v4);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1006E49E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076F9AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076048C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "viewDidLoad", v9);
  (*(v8 + 104))(v11, enum case for SystemImage.squareAndArrowUp(_:), v7);
  v12 = sub_10076046C();
  (*(v8 + 8))(v11, v7);
  v13 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v12 style:0 target:v1 action:"share:"];

  [v13 setHidden:1];
  v14 = v13;
  v43._object = 0x80000001007F5D50;
  v43._countAndFlagsBits = 0xD00000000000002ALL;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_1007622EC(v43, v45);
  v15 = sub_10076FF6C();

  [v14 setTitle:v15];

  v16 = v14;
  v44._countAndFlagsBits = 0xD00000000000002BLL;
  v44._object = 0x80000001007F5D80;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_1007622EC(v44, v46);
  v17 = sub_10076FF6C();

  [v16 setAccessibilityLabel:v17];

  v18 = qword_1009654D8;
  v19 = *&v1[qword_1009654D8];
  *&v1[qword_1009654D8] = v16;
  v20 = v16;

  v21 = *&v1[v18];
  if (v21)
  {
    v40 = 0u;
    v41 = 0u;
    memset(v39, 0, sizeof(v39));
    v22 = v21;
    sub_10076F95C();
    sub_10000CFBC(v39, &unk_1009434C0);
    sub_10000CFBC(&v40, &unk_1009434C0);
    sub_100016F40(0, &qword_100958FF0);
    sub_10077099C();

    (*(v4 + 8))(v6, v3);
  }

  v23 = [v1 navigationItem];
  v24 = [v23 rightBarButtonItems];

  if (v24)
  {
    sub_100016F40(0, &qword_100958FF0);
    v25 = sub_1007701BC();
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  *&v39[0] = v25;
  if (v25 >> 62 && sub_10077158C() < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v26 = v20;
  sub_10061BDB0(0, 0, v26);

  v27 = [v1 navigationItem];
  sub_100016F40(0, &qword_100958FF0);
  isa = sub_1007701AC().super.isa;
  [v27 setRightBarButtonItems:isa];

  sub_1006E48CC();
  sub_1006EB020(&qword_100943788, type metadata accessor for UberedPageScrollObserver);
  sub_10076668C();

  v29 = [v1 navigationItem];
  [v29 setTitleView:*&v1[qword_1009A3300]];

  v30 = [v1 collectionView];
  if (!v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v31 = v30;
  v40 = 0u;
  v41 = 0u;
  sub_10076F96C();
  sub_10000CFBC(&v40, &unk_1009434C0);
  sub_100770B9C();

  (*(v4 + 8))(v6, v3);
  v32 = [v1 view];
  if (!v32)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v33 = v32;
  sub_10000A5D4(&unk_100945BF0);
  v34 = swift_allocObject();
  v38 = xmmword_100783DD0;
  *(v34 + 16) = xmmword_100783DD0;
  *(v34 + 32) = sub_10076E88C();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_1009441F0);
  sub_100770C6C();
  swift_unknownObjectRelease();

  v35 = [v1 view];
  if (v35)
  {
    v36 = v35;

    v37 = swift_allocObject();
    *(v37 + 16) = v38;
    *(v37 + 32) = sub_10076E59C();
    *(v37 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100770C6C();
    swift_unknownObjectRelease();

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1006E5154()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionViewLayout];
    [v2 invalidateLayout];

    v3 = [v1 collectionView];
    if (v3)
    {
      v4 = v3;
      [v3 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1006E5200()
{
  v0 = sub_10076950C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    v6 = [v5 traitCollection];
    v7 = sub_1007706EC();

    v8 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
    if ((v7 & 1) == 0)
    {
      v8 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
    }

    (*(v1 + 104))(v3, *v8, v0);
    sub_1007694FC();

    (*(v1 + 8))(v3, v0);
    v9 = [v5 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1006E53B8(void *a1)
{
  v1 = a1;
  sub_1006E49E0();
}

uint64_t sub_1006E5400(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076A13C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076880C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1, v11);
  sub_1006E2B50();
  if (*(v2 + qword_1009654E0) == 1)
  {
    v14 = qword_1009654E8;
    if ((*(v2 + qword_1009654E8) & 1) == 0)
    {
      sub_100767E8C();
      sub_10076F64C();
      sub_10076FC1C();
      v15 = v17[1];
      *v13 = 1;
      (*(v10 + 104))(v13, enum case for EntitlementRefeshCondition.ifCacheIsExpired(_:), v9);
      sub_100767E7C();

      (*(v10 + 8))(v13, v9);
      *(v2 + v14) = 1;
    }
  }

  (*(v6 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v5);
  sub_10076A0FC();
  return (*(v6 + 8))(v8, v5);
}

void sub_1006E567C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1006E5400(a3);
}

uint64_t sub_1006E56F8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_1009428E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_10076A13C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v11);
  v2[qword_1009A32F0] = 1;
  v14 = qword_1009A32F8;
  if ((v2[qword_1009A32F8] & 1) == 0)
  {
    v15 = sub_1007694CC();
    if (v15)
    {
      v16 = v15;
      v2[v14] = 1;
      v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
      sub_10076F64C();
      sub_10076FC1C();
      sub_100263BF0(v16, 1, v17, v8);

      (*(v6 + 8))(v8, v5);
    }
  }

  (*(v10 + 104))(v13, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.didAppear(_:), v9);
  sub_10076A0FC();
  return (*(v10 + 8))(v13, v9);
}

void sub_1006E5960(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1006E56F8(a3);
}

void sub_1006E59B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a3);
  sub_1006E2ECC();
}

void sub_1006E5A2C(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076A13C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10076A0FC();
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1006E5B60(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076A13C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  v10 = *(v6 + 104);
  v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willDisappear(_:), v5);
  sub_10076A0FC();
  v11 = *(v6 + 8);
  v11(v9, v5);
  if ([v2 isMovingFromParentViewController])
  {
    v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v5);
    sub_10076A0FC();
    v11(v9, v5);
  }

  return sub_1006E5CEC();
}

uint64_t sub_1006E5CEC()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  result = sub_10076958C();
  if (result)
  {
    v5 = result;
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
    v7 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {

      return sub_10000CFBC(v3, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v5, 1, v6, v3);

      return (*(v8 + 8))(v3, v7);
    }
  }

  return result;
}

void sub_1006E5E70(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1006E5B60(a3);
}

void sub_1006E5EC4(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_1006EB154;
    v17 = v7;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006F5994;
    v15 = &unk_1008A08B8;
    v8 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v16 = sub_1006EAD6C;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006F5994;
    v15 = &unk_1008A0908;
    v10 = _Block_copy(&v12);
    v11 = v3;

    [a1 animateAlongsideTransition:0 completion:v10];
    _Block_release(v10);
  }
}

void sub_1006E6090(uint64_t a1, void *a2)
{
  v3 = sub_10076950C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007694EC();
  v7 = [a2 traitCollection];
  v8 = sub_1007706EC();

  v9 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
  if ((v8 & 1) == 0)
  {
    v9 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
  }

  (*(v4 + 104))(v6, *v9, v3);
  sub_1007694FC();
  (*(v4 + 8))(v6, v3);
  v10 = [a2 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1006E6214(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1006E5EC4(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1006E62BC(void *a1)
{
  v1 = a1;
  sub_1006E6294();
}

uint64_t sub_1006E632C(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_10076A13C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075F2AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v6 + v15, v22, &unk_10094E1F0);
  if (v23)
  {
    sub_10000A570(v22, v21);
    sub_10000CFBC(v22, &unk_10094E1F0);
    v18 = a2;
    v19 = v7;
    sub_10000CF78(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_10075F2BC();
    (*(v12 + 8))(v14, v11);
    v16 = sub_10000CD74(v21);
  }

  else
  {
    v16 = sub_10000CFBC(v22, &unk_10094E1F0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_10076A0FC();
  return (*(v8 + 8))(v10, v7);
}

void sub_1006E65D0(void *a1)
{
  v1 = a1;
  sub_1006E6304();
}

uint64_t sub_1006E6618@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_1006EB020(&qword_1009505E8, type metadata accessor for BaseShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1006E66CC()
{
  v17[2] = swift_getObjectType();
  v1 = sub_10000A5D4(&qword_100965BA0);
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v21 = v17 - v2;
  v3 = sub_10000A5D4(&qword_100965BA8);
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = v17 - v4;
  v5 = sub_10000A5D4(&qword_100946598);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_1006E133C();
  v9 = *(v0 + qword_10099E360);
  v17[0] = v0;
  v17[1] = v9;
  sub_100765DDC();
  v10 = sub_100016F40(0, &qword_1009471F0);
  v11 = sub_10077068C();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v11;
  sub_10000A5D4(&unk_100950620);
  sub_100071820(&qword_1009465A0, &unk_100950620);
  sub_10076F46C();

  (*(v6 + 8))(v8, v5);
  sub_10000CD74(v24);
  sub_10076956C();
  v12 = sub_10077068C();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v12;
  sub_10000A5D4(&qword_100965BB0);
  sub_100071820(&qword_100965BB8, &qword_100965BB0);
  v13 = v18;
  sub_10076F46C();

  (*(v19 + 8))(v13, v20);
  sub_10000CD74(v24);
  sub_1007695AC();
  v14 = sub_10077068C();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v14;
  sub_10000A5D4(&qword_100965BC0);
  sub_100071820(&qword_100965BC8, &qword_100965BC0);
  v15 = v21;
  sub_10076F46C();

  (*(v22 + 8))(v15, v23);
  return sub_10000CD74(v24);
}

uint64_t sub_1006E6B30(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100950548);
  __chkstk_darwin(v2 - 8);
  v73 = v70 - v3;
  v4 = sub_10000A5D4(&unk_100946710);
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v72 = v70 - v5;
  v6 = sub_10075E11C();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_100965BD8);
  __chkstk_darwin(v8 - 8);
  v81 = v70 - v9;
  v10 = sub_10076983C();
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  __chkstk_darwin(v10);
  v76 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v13 - 8);
  v87 = v70 - v14;
  v84 = sub_10076B5BC();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v71 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = v70 - v17;
  __chkstk_darwin(v18);
  v85 = v70 - v19;
  v20 = sub_10000A5D4(&qword_100944C40);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v70 - v22;
  v24 = sub_10000A5D4(&qword_100950600);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v70 - v26;
  v28 = sub_10000A5D4(&qword_100950560);
  v29 = a1;
  sub_100761B9C();
  sub_10076B06C();
  v30 = *(v25 + 8);
  v30(v27, v24);
  v31 = sub_10076E5EC();
  (*(v21 + 8))(v23, v20);
  if (v31 < 1)
  {
    goto LABEL_10;
  }

  v70[2] = v28;
  sub_100761B9C();
  v32 = v87;
  sub_10076B08C();
  v30(v27, v24);
  v33 = sub_10000A5D4(&unk_100946720);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v35 = &qword_1009499A0;
    v36 = v32;
LABEL_9:
    sub_10000CFBC(v36, v35);
    goto LABEL_10;
  }

  v70[1] = v29;
  swift_getKeyPath();
  v37 = v80;
  sub_10076F49C();

  (*(v34 + 8))(v32, v33);
  v39 = v85;
  v38 = v86;
  v40 = v84;
  (*(v86 + 32))(v85, v37, v84);
  v41 = qword_1009503C8;
  v42 = v88;
  swift_beginAccess();
  v43 = *(v42 + v41);
  if (!v43)
  {
    (*(v38 + 8))(v39, v40);
    swift_endAccess();
    v47 = v81;
    (*(v83 + 56))(v81, 1, 1, v82);
    goto LABEL_8;
  }

  swift_endAccess();
  v44 = v43;
  v45 = v77;
  sub_10075E08C();
  v46 = v81;
  sub_10076E74C();

  v47 = v46;
  v87 = *(v78 + 8);
  (v87)(v45, v79);
  v49 = v82;
  v48 = v83;
  if ((*(v83 + 48))(v46, 1, v82) == 1)
  {
    (*(v86 + 8))(v85, v40);
LABEL_8:
    v35 = &qword_100965BD8;
    v36 = v47;
    goto LABEL_9;
  }

  v51 = v76;
  (*(v48 + 32))(v76, v46, v49);
  sub_100761B9C();
  v52 = v30;
  v53 = v73;
  sub_10076B07C();
  v54 = v27;
  v55 = v53;
  v52(v54, v24);
  v56 = v74;
  v57 = v53;
  v58 = v75;
  if ((*(v74 + 48))(v57, 1, v75) == 1)
  {
    (*(v48 + 8))(v51, v49);
    (*(v86 + 8))(v85, v84);
    v35 = &qword_100950548;
    v36 = v55;
    goto LABEL_9;
  }

  v59 = v72;
  (*(v56 + 32))(v72, v55, v58);
  v61 = v85;
  v60 = v86;
  v62 = v71;
  v63 = v84;
  (*(v86 + 16))(v71, v85, v84);
  if ((*(v60 + 88))(v62, v63) != enum case for Shelf.ContentType.productTopLockup(_:))
  {
    (*(v56 + 8))(v59, v58);
    (*(v83 + 8))(v76, v49);
    v69 = *(v60 + 8);
    v69(v61, v63);
    *(v88 + qword_100965508) = &_swiftEmptySetSingleton;

    return (v69)(v62, v63);
  }

  sub_10076F4AC();
  sub_10000A5D4(&qword_1009575A0);
  sub_100762BEC();
  v64 = swift_dynamicCast();
  v65 = v76;
  if (v64)
  {
    if (sub_100762B8C())
    {

      sub_10000A5D4(&qword_100944C48);
      v66 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_100783DD0;
      sub_10075E08C();
      v68 = sub_100179EC0(v67);
      swift_setDeallocating();
      (v87)(v67 + v66, v79);
      swift_deallocClassInstance();

      (*(v56 + 8))(v59, v58);
      (*(v83 + 8))(v65, v49);
      (*(v86 + 8))(v85, v84);
      *(v88 + qword_100965508) = v68;
    }
  }

  (*(v56 + 8))(v59, v58);
  (*(v83 + 8))(v65, v49);
  (*(v86 + 8))(v85, v84);
LABEL_10:
  *(v88 + qword_100965508) = &_swiftEmptySetSingleton;
}

uint64_t (*sub_1006E7654(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAC6C;
}

void sub_1006E76B8(uint64_t a1)
{
  v64 = sub_10075E11C();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  v8 = sub_1007681BC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for ProductPageScrollPosition.topOfPage(_:))
  {
    (*(v9 + 96))(v12, v8);
    v14 = *v12;
    v15 = *(*v12 + 16);
    if (!v15)
    {
LABEL_7:
      v20 = [v65 collectionView];
      if (v20)
      {
        v21 = v20;

        [v21 setContentOffset:1 animated:{0.0, 0.0}];

        return;
      }

      goto LABEL_31;
    }

    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      v17 = [v65 collectionView];
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = v17;
      ++v16;
      sub_10075E08C();
      isa = sub_10075E02C().super.isa;
      (*(v2 + 8))(v7, v64);
      [v18 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:1];

      if (v15 == v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v13 != enum case for ProductPageScrollPosition.topOfIndexPath(_:))
  {
    (*(v9 + 8))(v12, v8);
    return;
  }

  (*(v9 + 96))(v12, v8);
  v22 = sub_10000A5D4(&qword_100965BD0);
  v23 = v12[*(v22 + 48)];
  v24 = *&v12[*(v22 + 64)];
  (*(v2 + 32))(v4, v12, v64);
  v25 = [v65 collectionView];
  if (!v25)
  {
    goto LABEL_32;
  }

  v26 = v25;
  v27 = sub_10075E02C().super.isa;
  v28 = [v26 layoutAttributesForItemAtIndexPath:v27];

  if (!v28)
  {
    goto LABEL_23;
  }

  [v28 frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  if (v23)
  {
LABEL_15:
    v63 = v4;
    v41 = *(v24 + 16);
    if (!v41)
    {
LABEL_20:
      v46 = [v65 navigationController];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 navigationBar];

        [v48 frame];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;

        v67.origin.x = v50;
        v67.origin.y = v52;
        v67.size.width = v54;
        v67.size.height = v56;
        MaxY = CGRectGetMaxY(v67);
      }

      else
      {
        MaxY = 0.0;
      }

      v58 = v63;
      v68.origin.x = v30;
      v68.origin.y = v32;
      v68.size.width = v34;
      v68.size.height = v36;
      MinY = CGRectGetMinY(v68);
      v60 = [v65 collectionView];
      if (v60)
      {
        v61 = v60;

        [v61 setContentOffset:1 animated:{0.0, MinY - MaxY}];

        (*(v2 + 8))(v58, v64);
        return;
      }

      goto LABEL_33;
    }

    v42 = 0;
    while (v42 < *(v24 + 16))
    {
      v43 = [v65 collectionView];
      if (!v43)
      {
        goto LABEL_30;
      }

      v44 = v43;
      ++v42;
      sub_10075E08C();
      v45 = sub_10075E02C().super.isa;
      (*(v2 + 8))(v7, v64);
      [v44 scrollToItemAtIndexPath:v45 atScrollPosition:0 animated:1];

      if (v41 == v42)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_28;
  }

  v37 = [v65 collectionView];
  if (v37)
  {
    v38 = v37;
    [v37 contentOffset];
    v40 = v39;

    v66.origin.x = v30;
    v66.origin.y = v32;
    v66.size.width = v34;
    v66.size.height = v36;
    if (CGRectGetMinY(v66) < v40)
    {
      goto LABEL_15;
    }

LABEL_23:
    (*(v2 + 8))(v4, v64);

    return;
  }

LABEL_34:
  __break(1u);
}

void (*sub_1006E7CDC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006EAC48;
}

uint64_t (*sub_1006E7D40(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006EAC08;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000B8C1C;
}

unint64_t sub_1006E7DD0@<X0>(uint64_t *a1@<X8>)
{
  sub_100760F1C();
  swift_allocObject();
  v2 = sub_100760F0C();
  swift_allocObject();
  v3 = sub_100760F0C();
  a1[3] = &type metadata for ProductPageGridProvider;
  result = sub_1006EABB4();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1006E7E50@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1006EB020(&qword_100965B38, type metadata accessor for ProductDiffablePageViewController);
  v2 = sub_10076A6BC();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_10076A6AC();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_10000CD08(v18, v17);
  sub_10000CD64(v17, v16);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_10049CD38((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000CD08(v19, v17);
  sub_10000CD64(v17, v16);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_10049CD38((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_10076A6DC();
  v10 = type metadata accessor for ProductPageLayoutSectionProvider();
  swift_allocObject();
  sub_10000A570(v17, v16);
  sub_10000A570(v16, v15);

  v11 = sub_1007697CC();
  sub_10000CD74(v16);
  result = sub_10000CD74(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

unint64_t sub_1006E8164@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ProductPageShelfLayoutSpacingProvider;
  result = sub_1006EAB60();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1006E8198()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for ProductPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1006EB020(&qword_100965B48, &type metadata accessor for ProductDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1006EB020(&qword_100965B88, type metadata accessor for ProductPageShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_1006E8298()
{
  swift_getObjectType();
  sub_1006EB020(&qword_100965B38, type metadata accessor for ProductDiffablePageViewController);
  sub_10076A6DC();
  type metadata accessor for ProductPageItemSupplementaryViewProvider();
  v0 = swift_allocObject();
  sub_10000A570(v3, v0 + 16);
  type metadata accessor for ProductPageSeparatorItemSupplementaryProvider();
  v1 = swift_allocObject();
  sub_100012498(v3, v1 + 16);
  *(v0 + 56) = v1;
  sub_1006EB020(&qword_100965B80, type metadata accessor for ProductPageItemSupplementaryViewProvider);
  return v0;
}

id sub_1006E8394()
{
  v1 = v0;
  swift_getObjectType();
  sub_1006DF0F0();
  sub_10076A43C();
  if (swift_dynamicCastClass())
  {
    v2 = sub_10076A40C();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_10076A42C();
  }

  sub_10000A5D4(&qword_100942480);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007844F0;

  sub_1006E48CC();
  type metadata accessor for UberedCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  swift_weakAssign();

  v5 = sub_1006EB020(&qword_100944C58, type metadata accessor for UberedCollectionElementsObserver);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *&v0[qword_1009654F8];
  v7 = sub_1006EB020(&qword_100965B20, type metadata accessor for ProductPageExtensionBannerScrollObserver);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8 = sub_1006E47E8();
  v9 = sub_1006EB020(&qword_100965B28, type metadata accessor for ProductTopLockupCollectionElementsObserver);
  *(v3 + 64) = v8;
  *(v3 + 72) = v9;
  v10 = *&v1[qword_10099E370];
  type metadata accessor for ProductMediaCollectionElementsObserver();
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = v10;
  v12 = sub_1006EB020(&qword_100965B30, type metadata accessor for ProductMediaCollectionElementsObserver);
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  sub_1006EB020(&qword_100965B38, type metadata accessor for ProductDiffablePageViewController);
  swift_retain_n();

  sub_10076A6DC();
  sub_1006EB020(&qword_100965B40, &type metadata accessor for ProductDiffablePagePresenter);
  sub_1006EB020(&qword_100965B48, &type metadata accessor for ProductDiffablePagePresenter);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v13 + qword_10094FA90) = 0;
  swift_unknownObjectWeakAssign();
  sub_10000A570(v25, v13 + qword_10094FA88);

  v14 = sub_10076AEEC();
  sub_10000CD74(v25);
  *(v3 + 96) = v14;
  *(v3 + 104) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 24) = &off_1008A05E8;
  swift_unknownObjectWeakAssign();
  v16 = sub_1006EB020(&qword_100946580, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver);
  *(v3 + 112) = v15;
  *(v3 + 120) = v16;
  v17._rawValue = v3;
  sub_10076A3FC(v17);

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100783C60;
  sub_10000A5D4(&qword_100965B50);
  swift_allocObject();
  swift_retain_n();
  v19 = sub_10076A80C();
  v20 = sub_100071820(&qword_100965B58, &qword_100965B50);
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v21 = swift_allocObject();
  *(v21 + 16) = 3;
  v22 = sub_1006EB020(&qword_100942498, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;
  sub_10076A6DC();
  sub_10076848C();

  result = [v1 collectionView];
  if (result)
  {
    sub_10076AF7C();
    swift_allocObject();
    *(v18 + 64) = sub_10076AF6C();
    *(v18 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    v24._rawValue = v18;
    sub_10076A3FC(v24);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1006E8A04()
{
  sub_10076AEFC();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  sub_10076A96C();
  return swift_dynamicCastClass() != 0;
}

uint64_t sub_1006E8A5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_1009428E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_10000A5D4(&qword_100965B18);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  sub_100737DA8(a1);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v9 + 96))(v11, v8);
  sub_1006E8D00(*v11);
  if (*(v1 + qword_1009A32F0) == 1)
  {
    v12 = qword_1009A32F8;
    if ((*(v1 + qword_1009A32F8) & 1) == 0)
    {
      v13 = sub_1007694CC();
      if (v13)
      {
        v14 = v13;
        *(v2 + v12) = 1;
        v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
        sub_10076F64C();
        sub_10076FC1C();
        sub_100263BF0(v14, 1, v15, v7);

        (*(v5 + 8))(v7, v4);
      }
    }
  }

  sub_1006E90AC();
}

void sub_1006E8D00(uint64_t a1)
{
  v17 = a1;
  v2 = sub_10076F08C();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076F0CC();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075FEFC();
  v18 = v1;
  sub_1006E3310(v8);
  sub_100016F40(0, &qword_1009471F0);
  v9 = sub_10077068C();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1006EAAF0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008A06D8;
  v11 = _Block_copy(aBlock);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1006EB020(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100071820(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v11);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
  v12 = v18;
  sub_1006E9730();
  v13 = *(v12 + qword_1009654D8);
  if (v13)
  {
    v14 = v13;
    v15 = sub_10076626C();
    if (v15)
    {
    }

    [v14 setHidden:v15 == 0];
  }

  if (sub_10076628C() && (v16 = sub_10076B25C(), , v16))
  {

    sub_1006E9860();
  }

  else
  {
    sub_1006E9C68();
  }
}

id sub_1006E90AC()
{
  v32 = sub_10075D59C();
  __chkstk_darwin(v32);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_10076B96C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007619EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10076952C();
  if (result)
  {
    v31 = v0;
    sub_100762D9C();
    if (swift_dynamicCastClass())
    {
      sub_100762D5C();
      sub_1007619FC();

      if ((*(v10 + 88))(v12, v9) != enum case for ShareSheetData.Metadata.product(_:))
      {

        return (*(v10 + 8))(v12, v9);
      }

      (*(v10 + 96))(v12, v9);
      sub_1007683EC();
      v14 = sub_10076B92C();
      v16 = v15;
      (*(v6 + 8))(v8, v5);
      if (!sub_10076838C() || (v17 = sub_10076742C(), v19 = v18, , !v19))
      {
        v21 = v16;
        goto LABEL_19;
      }

      v20 = v17 == 0x656C646E7562 && v19 == 0xE600000000000000;
      v21 = v16;
      if (v20)
      {
      }

      else
      {
        v22 = sub_10077167C();

        if ((v22 & 1) == 0)
        {
LABEL_19:

          sub_100762D5C();
          sub_1007619DC();

          v24 = sub_10075DB7C();
          (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
          v25 = sub_1007683DC();
          sub_10044DF20(v14, v21, v4, v25, v26, &v36);
          v39 = v37;
          v40[0] = v36;
          v35 = _swiftEmptyArrayStorage;
          sub_1000B8A4C(v40, v34);
          sub_1000B8A4C(&v39, v34);
          sub_1006EB020(&qword_100947160, &type metadata accessor for AppEntityVisualState);

          sub_10000A5D4(&qword_100947168);
          sub_100071820(&qword_100947170, &qword_100947168);
          sub_1007712CC();
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = v38;
          v27 = objc_allocWithZone(sub_10076D00C());
          sub_10044CF28();
          v28 = sub_10076CFFC();
          result = [v31 view];
          if (result)
          {
            v29 = result;

            sub_100770B8C();

            sub_1000B8AFC(v40);
            sub_1000B8AFC(&v39);
          }

          else
          {
            __break(1u);
          }

          return result;
        }
      }

      *&v36 = v14;
      *(&v36 + 1) = v16;
      *&v34[0] = 0x2D656C646E7562;
      *(&v34[0] + 1) = 0xE700000000000000;
      *&v34[0] = sub_10077014C();
      *(&v34[0] + 1) = v23;
      sub_1007700BC();

      v21 = *(&v34[0] + 1);
      v14 = *&v34[0];
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_1006E96C8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1006E47E8();

    sub_10038F7C4();
  }

  return result;
}

void sub_1006E9730()
{
  if (*(v0 + qword_1009654C8) != 1)
  {
LABEL_7:
    v5 = [v0 collectionView];
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  v1 = [v0 view];
  if (!v1)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v2 = v1;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    goto LABEL_13;
  }

  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [v0 collectionView];
  if (!v5)
  {
    return;
  }

LABEL_8:
  v6 = v5;
  [v5 frame];
  [v6 setFrame:?];
}

void sub_1006E9860()
{
  v1 = v0;
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1009A3310;
  v8 = *&v1[qword_1009A3310];
  if (v8)
  {
    v9 = *&v1[qword_1009A3310];
  }

  else
  {
    (*(v3 + 104))(v6, enum case for SystemImage.speakerSlashFill(_:), v2, v4);
    v10 = sub_10076046C();
    (*(v3 + 8))(v6, v2);
    v11 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v10 style:0 target:0 action:0];

    v9 = v11;
    v29._object = 0x80000001007D5CA0;
    v29._countAndFlagsBits = 0xD00000000000002BLL;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_1007622EC(v29, v31);
    v12 = sub_10076FF6C();

    [v9 setTitle:v12];

    v30._countAndFlagsBits = 0xD00000000000002CLL;
    v30._object = 0x80000001007D5CD0;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    sub_1007622EC(v30, v32);
    v13 = sub_10076FF6C();

    [v9 setAccessibilityLabel:v13];

    [v9 setHidden:1];
    v14 = *&v1[v7];
    *&v1[v7] = v9;

    v8 = 0;
  }

  v15 = v8;
  v16 = [v1 navigationItem];
  v17 = [v16 rightBarButtonItems];

  if (v17 && (sub_100016F40(0, &qword_100958FF0), v18 = sub_1007701BC(), v17, v28 = v9, __chkstk_darwin(v19), *(&v27 - 2) = &v28, v20 = sub_1001A5D04(sub_1006EAAF8, (&v27 - 4), v18), , (v20 & 1) == 0))
  {
    v21 = [v1 navigationItem];
    v22 = [v21 rightBarButtonItems];

    if (v22)
    {
      v23 = sub_1007701BC();
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
    }

    v28 = v23;
    v24 = v9;
    sub_10077019C();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    v25 = [v1 navigationItem];
    isa = sub_1007701AC().super.isa;

    [v25 setRightBarButtonItems:isa];
  }

  else
  {
  }
}

void sub_1006E9C68()
{
  v1 = *&v0[qword_1009A3310];
  if (v1)
  {
    v13 = v1;
    v2 = [v0 navigationItem];
    v3 = [v2 rightBarButtonItems];

    if (v3 && (sub_100016F40(0, &qword_100958FF0), v4 = sub_1007701BC(), v3, v5 = sub_1000C3BD8(v13, v4), v7 = v6, , (v7 & 1) == 0))
    {
      v8 = [v0 navigationItem];
      v9 = [v8 rightBarButtonItems];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1007701BC();

        if (v11)
        {
          v12.super.isa = sub_1007701AC().super.isa;
        }

        else
        {
          v12.super.isa = 0;
        }

        [v8 setRightBarButtonItems:v12.super.isa];
      }

      else
      {
        [v8 setRightBarButtonItems:0];
      }
    }
  }
}

void sub_1006E9E34()
{
  if (*(*&v0[qword_100965508] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1006E9ED4(uint64_t result)
{
  *(v1 + qword_10099E380) = result;
  if (result)
  {
    *(v1 + qword_1009A32E8) = 1;
  }

  return result;
}

void sub_1006E9EFC()
{
  *(v0 + qword_1009654C8) = 1;
  *(sub_1006E47E8() + 72) = 1;

  sub_1006E9730();
}

void sub_1006E9F44()
{
  *(v0 + qword_1009654C8) = 0;
  *(sub_1006E47E8() + 72) = 0;

  sub_1006E9730();
}

uint64_t sub_1006E9F80(uint64_t a1)
{
  v2 = sub_10075DB7C();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100964140);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_10005C684(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_10005C6E8(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000A5D4(&unk_100964150);
  sub_100050DA4(&v9[*(v19 + 48)], v18);
  sub_100765E7C();
  v20 = *(v4 + 48);
  sub_100016E2C(v15, v6, &unk_1009435D0);
  sub_100016E2C(v18, &v6[v20], &unk_1009435D0);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100016E2C(v6, v12, &unk_1009435D0);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_1006EB020(&qword_100944C38, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_10076FF1C();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000CFBC(v15, &unk_1009435D0);
      sub_10000CFBC(v18, &unk_1009435D0);
      v27(v12, v2);
      sub_10000CFBC(v6, &unk_1009435D0);
      return v23 & 1;
    }

    sub_10000CFBC(v15, &unk_1009435D0);
    sub_10000CFBC(v18, &unk_1009435D0);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000CFBC(v15, &unk_1009435D0);
  sub_10000CFBC(v18, &unk_1009435D0);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000CFBC(v6, &unk_100964140);
    goto LABEL_9;
  }

  sub_10000CFBC(v6, &unk_1009435D0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1006EA43C(void *a1)
{
  v2 = sub_10076F13C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v34[0]) = 0;
  *&v16[0] = a1;
  *(v16 + 8) = 0u;
  *(&v16[1] + 8) = 0u;
  BYTE8(v16[2]) = 0;
  __asm { FMOV            V0.2D, #10.0 }

  v17 = _Q0;
  v18 = _Q0;
  v19 = 15;
  sub_100016F40(0, &qword_1009471F0);
  v11 = a1;
  *v5 = sub_10077068C();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(a1) = sub_10076F16C();
  result = (*(v3 + 8))(v5, v2);
  if (a1)
  {
    v23 = xmmword_100950008;
    v24 = xmmword_100950018;
    v20 = xmmword_10094FFD8;
    v21 = xmmword_10094FFE8;
    v22 = xmmword_10094FFF8;
    v28 = v16[2];
    v29 = v17;
    v30 = v18;
    v26 = v16[0];
    v27 = v16[1];
    v32[0] = xmmword_10094FFD8;
    v32[1] = xmmword_10094FFE8;
    v32[3] = xmmword_100950008;
    v32[4] = xmmword_100950018;
    v25 = qword_100950028;
    v31 = v19;
    v33 = qword_100950028;
    v32[2] = xmmword_10094FFF8;
    sub_100016E2C(&v20, v34, &unk_1009505F0);
    xmmword_10094FFF8 = v28;
    xmmword_100950008 = v29;
    xmmword_100950018 = v30;
    qword_100950028 = v31;
    xmmword_10094FFD8 = v26;
    xmmword_10094FFE8 = v27;
    sub_10000CFBC(v32, &unk_1009505F0);
    v15[3] = sub_100016F40(0, &qword_100958FF0);
    v15[0] = v11;
    v13 = v11;
    sub_1001F9960(v16, v34);
    sub_10076953C();
    sub_10000CFBC(v15, &unk_1009434C0);
    v34[2] = xmmword_10094FFF8;
    v34[3] = xmmword_100950008;
    v34[4] = xmmword_100950018;
    v34[0] = xmmword_10094FFD8;
    v34[1] = xmmword_10094FFE8;
    xmmword_10094FFD8 = v20;
    xmmword_10094FFE8 = v21;
    xmmword_10094FFF8 = v22;
    xmmword_100950008 = v23;
    v35 = qword_100950028;
    xmmword_100950018 = v24;
    qword_100950028 = v25;
    sub_10000CFBC(v34, &unk_1009505F0);
    return sub_1001F99BC(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006EA730(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1006EA43C(v4);
}

uint64_t sub_1006EA798()
{
}

uint64_t sub_1006EA858(uint64_t a1)
{
}

uint64_t type metadata accessor for ProductDiffablePageViewController()
{
  result = qword_100965538;
  if (!qword_100965538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006EAA60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006EAAD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1006EAB60()
{
  result = qword_100965B90;
  if (!qword_100965B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100965B90);
  }

  return result;
}

unint64_t sub_1006EABB4()
{
  result = qword_100965B98;
  if (!qword_100965B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100965B98);
  }

  return result;
}

uint64_t sub_1006EAD34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006EADB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006EAE08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006EB020(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006EB15C(void *a1, void *a2, char a3)
{
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 snapshotViewAfterScreenUpdates:0];

    if (v8)
    {
      v9 = [a1 tabBar];
      [v9 frame];
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      x = v44.origin.x;
      v37 = v44.origin.x;
      v14 = CGRectGetHeight(v44);
      v15 = 0.0;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectOffset(v45, 0.0, v14);
      v35 = v46.origin.y;
      v36 = v46.origin.x;
      v33 = v46.size.height;
      v34 = v46.size.width;
      v16 = a3 & 1;
      if (a3)
      {
        v17 = y;
      }

      else
      {
        x = v46.origin.x;
        v17 = v46.origin.y;
      }

      if (a3)
      {
        v18 = width;
      }

      else
      {
        v18 = v46.size.width;
      }

      if (a3)
      {
        v19 = height;
      }

      else
      {
        v19 = v46.size.height;
      }

      if (a3)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (a3)
      {
        v15 = 1.0;
      }

      v21 = [objc_allocWithZone(UIView) initWithFrame:{x, v17, v18, v19}];
      [v21 setClipsToBounds:1];
      [v21 addSubview:v8];
      [v8 setAlpha:v15];
      [v21 bounds];
      MaxY = CGRectGetMaxY(v47);
      [v8 bounds];
      v23 = MaxY - CGRectGetHeight(v48);
      [v8 frame];
      [v8 setFrame:{0.0, v23}];
      [v9 setHidden:1];

      v24 = [a2 containerView];
      [v24 addSubview:v21];

      v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v20 curve:0 animations:0.233333333];
      v26 = swift_allocObject();
      *(v26 + 16) = v21;
      *(v26 + 24) = v16;
      *(v26 + 32) = v36;
      *(v26 + 40) = v35;
      *(v26 + 48) = v34;
      *(v26 + 56) = v33;
      *(v26 + 64) = v37;
      *(v26 + 72) = y;
      *(v26 + 80) = width;
      *(v26 + 88) = height;
      *(v26 + 96) = v8;
      v42 = sub_1006EB5A0;
      v43 = v26;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10009AEDC;
      v41 = &unk_1008A0EA8;
      v27 = _Block_copy(&aBlock);
      v28 = v21;
      v29 = v8;

      [v25 addAnimations:v27];
      _Block_release(v27);
      v30 = swift_allocObject();
      *(v30 + 16) = v9;
      *(v30 + 24) = v16;
      v42 = sub_1006EB69C;
      v43 = v30;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10017722C;
      v41 = &unk_1008A0EF8;
      v31 = _Block_copy(&aBlock);
      v32 = v9;

      [v25 addCompletion:v31];
      _Block_release(v31);
      [v25 startAnimation];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006EB560()
{

  return _swift_deallocObject(v0, 104, 7);
}

id sub_1006EB5A0()
{
  v1 = *(v0 + 96);
  if (*(v0 + 24))
  {
    v2 = (v0 + 32);
  }

  else
  {
    v2 = (v0 + 64);
  }

  v3 = *v2;
  if (*(v0 + 24))
  {
    v4 = (v0 + 40);
  }

  else
  {
    v4 = (v0 + 72);
  }

  v5 = *v4;
  if (*(v0 + 24))
  {
    v6 = (v0 + 48);
  }

  else
  {
    v6 = (v0 + 80);
  }

  v7 = *v6;
  if (*(v0 + 24))
  {
    v8 = (v0 + 56);
  }

  else
  {
    v8 = (v0 + 88);
  }

  if (*(v0 + 24))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  [*(v0 + 16) setFrame:{v3, v5, v7, *v8}];

  return [v1 setAlpha:v9];
}

uint64_t sub_1006EB64C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006EB664()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t InAppMessagesMetricsEventRecorder.withDecorator(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1000167E0(v3);
}

uint64_t InAppMessagesMetricsEventRecorder.record(_:on:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_allocWithZone(AMSMetricsEvent);
    sub_10001CE50(v1);

    v3 = sub_10076FF6C();

    v4 = [v2 initWithTopic:v3];

    v5 = *(v0 + 32);
    if (v5)
    {

      v6 = v5(v4);
      sub_1000167E0(v5);
    }

    else
    {
      v6 = v4;
    }

    sub_10076F8CC();
    isa = sub_10076FE3C().super.isa;

    [v6 addPropertiesWithDictionary:isa];

    v10 = [v6 underlyingDictionary];
    v11 = sub_10076FE4C();

    v12 = sub_1006EBA70(v11);

    if (v12)
    {
      v13 = objc_allocWithZone(IAMFigaroEvent);
      v14 = sub_10076FE3C().super.isa;

      v15 = [v13 initWithFigaroEventProperties:v14];

      v1(v15);
    }

    else
    {
    }

    return sub_1000167E0(v1);
  }

  else
  {
    if (qword_10093FF70 != -1)
    {
      swift_once();
    }

    v7 = sub_10076FD4C();
    sub_10000A61C(v7, qword_10099E8C0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();
  }
}

unint64_t sub_1006EBA70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000A5D4(&qword_100948BC8);
    v2 = sub_1007715DC();
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_10008C3EC(*(a1 + 48) + 40 * v12, v27);
        sub_10000CD08(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_10008C3EC(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_10000CD08(v25 + 8, v20);
        sub_1006EBE28(v24);
        v21 = v18;
        sub_10000CD64(v20, v22);
        v13 = v21;
        sub_10000CD64(v22, v23);
        sub_10000CD64(v23, &v21);
        result = sub_100561E0C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_10000CD74(v10);
          result = sub_10000CD64(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_10000CD64(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1006EBE28(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}