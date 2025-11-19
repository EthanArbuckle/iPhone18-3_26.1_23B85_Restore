char *sub_100084AA0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100084AEC(a1, a2);
  sub_100084C1C(&off_100108B00);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100084AEC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100084D08(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000DC010();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000DBA10();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100084D08(v10, 0);
        result = sub_1000DBF40();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100084C1C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100084D80(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100084D08(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100024A74(0, &qword_100118830);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100084D80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A74(0, &qword_100118830);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_100084E78(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_100084FD8()
{
  result = qword_100118820;
  if (!qword_100118820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118820);
  }

  return result;
}

void sub_1000850C8()
{
  v0 = *(*(sub_1000DA370() - 8) + 80);

  sub_100084388();
}

uint64_t sub_100085138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000851A8(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1000851A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100085230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA040();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000852B0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000DA040();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100085334()
{
  v0 = sub_1000DA040();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_100085390()
{
  result = qword_1001188D8;
  if (!qword_1001188D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001188D8);
  }

  return result;
}

unint64_t sub_100085410()
{
  result = qword_1001188E0;
  if (!qword_1001188E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001188E0);
  }

  return result;
}

uint64_t sub_100085474@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 56) = xmmword_1000DE450;
  v4 = objc_opt_self();
  *(a3 + 72) = [v4 blackColor];
  *(a3 + 80) = [v4 whiteColor];
  *(a3 + 88) = [objc_allocWithZone(UIColor) initWithRed:0.490196078 green:0.498039216 blue:0.498039216 alpha:1.0];
  *(a3 + 96) = [objc_allocWithZone(UIColor) initWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
  *(a3 + 104) = [objc_allocWithZone(UIColor) initWithRed:0.882352941 green:0.960784314 blue:0.905882353 alpha:1.0];
  *(a3 + 112) = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.490196078 blue:0.105882353 alpha:1.0];
  *(a3 + 120) = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.780392157 blue:0.349019608 alpha:1.0];
  *(a3 + 128) = [objc_allocWithZone(UIColor) initWithRed:0.247058824 green:0.941176471 blue:0.419607843 alpha:1.0];
  *(a3 + 136) = [objc_allocWithZone(UIColor) initWithRed:0.870588235 green:0.0274509804 blue:0.109803922 alpha:1.0];
  *(a3 + 144) = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  *(a3 + 152) = [objc_allocWithZone(UIColor) initWithRed:0.231372549 green:0.588235294 blue:0.97254902 alpha:1.0];
  *(a3 + 160) = [objc_allocWithZone(UIColor) initWithRed:0.501960784 green:0.501960784 blue:0.501960784 alpha:1.0];
  *(a3 + 168) = [objc_allocWithZone(UIColor) initWithRed:0.329411765 green:0.329411765 blue:0.329411765 alpha:1.0];
  *(a3 + 176) = [v4 secondaryLabelColor];
  *(a3 + 184) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:0.12];
  *(a3 + 192) = [objc_allocWithZone(UIColor) initWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
  *(a3 + 200) = [objc_allocWithZone(UIColor) initWithRed:0.352941176 green:0.784313725 blue:0.980392157 alpha:1.0];
  *(a3 + 208) = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.592156863 blue:1.0 alpha:1.0];
  *(a3 + 216) = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.294117647 blue:1.0 alpha:1.0];
  *(a3 + 224) = [objc_allocWithZone(UIColor) initWithRed:0.407843137 green:0.0 blue:1.0 alpha:1.0];
  *(a3 + 232) = 1;
  *(a3 + 240) = [objc_allocWithZone(UIColor) initWithWhite:0.670588235 alpha:1.0];
  v5 = [v4 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.25];

  *(a3 + 248) = v6;
  v7 = [v4 blackColor];
  v8 = [v7 colorWithAlphaComponent:0.25];

  *(a3 + 256) = v8;
  v9 = [v4 blackColor];
  v10 = [v9 colorWithAlphaComponent:0.6];

  *(a3 + 264) = v10;
  v11 = [v4 grayColor];
  v12 = [v11 colorWithAlphaComponent:0.3];

  *(a3 + 272) = v12;
  *(a3 + 280) = [objc_allocWithZone(UIColor) initWithRed:0.365 green:0.365 blue:0.365 alpha:1.0];
  *(a3 + 288) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 296) = [v4 whiteColor];
  sub_100068510();
  *(a3 + 304) = sub_1000DBE40();
  *(a3 + 312) = [v4 secondaryLabelColor];
  v13 = [v4 whiteColor];
  v14 = [v4 secondarySystemBackgroundColor];
  v15 = [v4 ts_dynamicColor:v13 withDarkStyleVariant:v14];

  *(a3 + 320) = v15;
  *(a3 + 328) = [v4 secondaryLabelColor];
  *(a3 + 336) = [v4 labelColor];
  *(a3 + 344) = [v4 systemBackgroundColor];
  *(a3 + 352) = [objc_allocWithZone(UIColor) initWithRed:0.933333333 green:0.933333333 blue:0.937254902 alpha:1.0];
  *(a3 + 360) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 368) = [v4 separatorColor];
  *(a3 + 376) = [v4 secondaryLabelColor];
  *(a3 + 384) = [v4 labelColor];
  result = sub_100023738(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_100085B7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_100085BC4(uint64_t result, int a2, int a3)
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100085C78()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = [v1 horizontalSizeClass];
    if (v2 >= 2)
    {
      if (v2 != 2)
      {
        result = sub_1000DC0D0();
        __break(1u);
        return result;
      }

      goto LABEL_9;
    }
  }

  if ((sub_1000DB5C0() & 1) == 0)
  {
LABEL_9:
    sub_100068510();
    return sub_1000DBE40();
  }

  v3 = [objc_opt_self() clearColor];

  return v3;
}

id sub_100085D9C()
{
  if (sub_1000DB5C0())
  {
    v0 = [objc_opt_self() clearColor];

    return v0;
  }

  else
  {
    sub_100068510();
    return sub_1000DBE40();
  }
}

id sub_100085E1C()
{
  sub_1000DB5C0();
  v0 = sub_1000DB5C0();
  v1 = objc_opt_self();
  v2 = &selRef_tertiarySystemFillColor;
  if ((v0 & 1) == 0)
  {
    v2 = &selRef_systemWhiteColor;
  }

  v3 = [v1 *v2];

  return v3;
}

id sub_100085E84()
{
  sub_1000DB5C0();
  v1 = *(v0 + 96);

  return v1;
}

id sub_100085EB0()
{
  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = 120;
  if (v1)
  {
    v2 = 112;
  }

  v3 = *(v0 + v2);

  return v3;
}

id sub_100085EEC()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = 128;
  }

  else
  {
    v2 = UIAccessibilityDarkerSystemColorsEnabled();
    v1 = 120;
    if (v2)
    {
      v1 = 112;
    }
  }

  v3 = *(v0 + v1);

  return v3;
}

id sub_100085F3C()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = UIAccessibilityDarkerSystemColorsEnabled();
    v2 = 120;
    if (v1)
    {
      v2 = 112;
    }
  }

  else
  {
    v2 = 192;
  }

  v3 = *(v0 + v2);

  return v3;
}

id sub_100085F88(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = sub_1000DB5C0();
  v7 = objc_opt_self();
  if (v6)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  v9 = [v7 *v8];

  return v9;
}

uint64_t sub_100086048(void *a1)
{
  v3 = v1;
  sub_100087514(0, &qword_1001189B8, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v20[-v9];
  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100087400();
  sub_1000DC480();
  v20[15] = 0;
  sub_1000D9690();
  sub_100087578(&qword_1001171E0, &type metadata accessor for PriceChangeDisplay);
  sub_1000DC2F0();
  if (!v2)
  {
    v12 = _s11FormatStyleVMa_0();
    v13 = *(v3 + v12[5]);
    v20[14] = 1;
    sub_1000DC2C0();
    v14 = *(v3 + v12[6]);
    v20[13] = 2;
    sub_1000DC2C0();
    v15 = *(v3 + v12[7]);
    v20[12] = 3;
    sub_1000DC2C0();
    v16 = (v3 + v12[8]);
    v17 = *v16;
    v18 = v16[1];
    v20[11] = 4;
    sub_1000DC2B0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10008629C()
{
  sub_1000D9690();
  sub_100087578(&qword_1001189C0, &type metadata accessor for PriceChangeDisplay);
  sub_1000DB880();
  v1 = _s11FormatStyleVMa_0();
  sub_1000DC440(*(v0 + v1[5]));
  sub_1000DC440(*(v0 + v1[6]));
  sub_1000DC440(*(v0 + v1[7]));
  v2 = (v0 + v1[8]);
  v3 = *v2;
  v4 = v2[1];

  return sub_1000DB9F0();
}

Swift::Int sub_10008636C()
{
  sub_1000DC420();
  sub_1000D9690();
  sub_100087578(&qword_1001189C0, &type metadata accessor for PriceChangeDisplay);
  sub_1000DB880();
  v1 = _s11FormatStyleVMa_0();
  sub_1000DC440(*(v0 + v1[5]));
  sub_1000DC440(*(v0 + v1[6]));
  sub_1000DC440(*(v0 + v1[7]));
  v2 = (v0 + v1[8]);
  v3 = *v2;
  v4 = v2[1];
  sub_1000DB9F0();
  return sub_1000DC460();
}

uint64_t sub_100086450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1000D9690();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100087514(0, &qword_1001189A8, &type metadata accessor for KeyedDecodingContainer);
  v31 = v7;
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = _s11FormatStyleVMa_0();
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100087400();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v16 = v28;
  v36 = 0;
  sub_100087578(&qword_1001171B8, &type metadata accessor for PriceChangeDisplay);
  sub_1000DC220();
  (*(v16 + 32))(v14, v30, v4);
  v35 = 1;
  v14[v11[5]] = sub_1000DC1F0() & 1;
  v34 = 2;
  v17 = sub_1000DC1F0();
  v18 = v29;
  v14[v11[6]] = v17 & 1;
  v33 = 3;
  v14[v11[7]] = sub_1000DC1F0() & 1;
  v32 = 4;
  v19 = sub_1000DC1E0();
  v20 = v11;
  v22 = v21;
  v23 = v18;
  v24 = &v14[v20[8]];
  (*(v23 + 8))(v10, v31);
  *v24 = v19;
  v24[1] = v22;
  sub_100087454(v14, v27);
  sub_100006D0C(a1);
  return sub_1000874B8(v14);
}

unint64_t sub_100086850()
{
  v1 = *v0;
  v2 = 0x79616C70736964;
  v3 = 0xD000000000000010;
  v4 = 0x6B61657053726F66;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6665725065646968;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100086904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100087818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100086938(uint64_t a1)
{
  v2 = sub_100087400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086974(uint64_t a1)
{
  v2 = sub_100087400();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000869B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100086C3C(*a1, *(a1 + 8), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::Int sub_100086A2C(uint64_t a1, int *a2)
{
  sub_1000DC420();
  sub_1000D9690();
  sub_100087578(&qword_1001189C0, &type metadata accessor for PriceChangeDisplay);
  sub_1000DB880();
  sub_1000DC440(*(v2 + a2[5]));
  sub_1000DC440(*(v2 + a2[6]));
  sub_1000DC440(*(v2 + a2[7]));
  v4 = (v2 + a2[8]);
  v5 = *v4;
  v6 = v4[1];
  sub_1000DB9F0();
  return sub_1000DC460();
}

uint64_t sub_100086B08(uint64_t a1, uint64_t a2)
{
  sub_1000D9690();
  sub_100087578(&qword_1001189C8, &type metadata accessor for PriceChangeDisplay);
  sub_1000DBAD0();
  sub_1000DBAD0();
  if (v13 == v12 && (v4 = _s11FormatStyleVMa_0(), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v7 = v4[8];
    v8 = *(a1 + v7);
    v9 = *(a1 + v7 + 8);
    v10 = (a2 + v7);
    if (v8 == *v10 && v9 == v10[1])
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1000DC360();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100086C3C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v44 = *&a3;
  v45 = a5;
  v43 = *&a1;
  v10 = sub_1000D91C0();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000D9690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v6;
  (*(v15 + 16))(v19, v6, v14, v17);
  v21 = (*(v15 + 88))(v19, v14);
  if (v21 == enum case for PriceChangeDisplay.currency(_:))
  {
    if ((a4 & 1) == 0 && (a2 & 1) == 0)
    {
      v22 = v44;
      v23 = v43 == 0.0 || v43 >= 5.0;
      v24 = _s11FormatStyleVMa_0();
      if (*(v20 + v24[7]) == 1)
      {
        v25 = sub_100087B64(v23, v22);
        if (!v26)
        {
LABEL_9:
          v27 = (v20 + v24[8]);
          v28 = *v27;
          v29 = v27[1];

          goto LABEL_27;
        }
      }

      else
      {
        v25 = sub_100087A54(v23, v22);
        if (!v26)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v21 == enum case for PriceChangeDisplay.percentage(_:))
  {
    if ((a2 & 1) == 0 && (a4 & 1) == 0)
    {
      v30 = v43;
      v31 = v44;
      v32 = _s11FormatStyleVMa_0();
      v24 = v32;
      if (*(v6 + *(v32 + 28)) == 1)
      {
        v25 = sub_1000D6520(v30, v31);
        if (!v26)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v25 = sub_1000D63C0(*(v6 + *(v32 + 20)), v30, v31);
        if (!v26)
        {
          goto LABEL_9;
        }
      }

LABEL_26:
      v28 = v25;
      v29 = v26;
LABEL_27:
      _s11FormatStyleVMa_0();
      if (*(v20 + v24[6]) == 1)
      {
        v50 = v28;
        v51 = v29;
        v48 = 32;
        v49 = 0xE100000000000000;
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_100017740();
        v28 = sub_1000DBEA0();
      }

      return v28;
    }

LABEL_23:
    v39 = (v6 + *(_s11FormatStyleVMa_0() + 32));
    v28 = *v39;
    v40 = v39[1];

    return v28;
  }

  if (v21 == enum case for PriceChangeDisplay.marketCapitalization(_:))
  {
    if ((a6 & 1) == 0)
    {
      if (qword_1001140C0 != -1)
      {
        swift_once();
      }

      v33 = _s11FormatStyleVMa_0();
      if (v45 >= 1)
      {
        v24 = v33;
        v34 = *(v6 + *(v33 + 28));
        v35 = *(qword_100128E70 + 16);
        sub_1000D9170();
        isa = sub_1000D9130().super.isa;
        (*(v42 + 8))(v13, v10);
        v37 = [v35 formattedCount:v45 withLocale:isa longform:v34 compactDisplay:0];

        if (v37)
        {
          v28 = sub_1000DB950();
          v29 = v38;

          goto LABEL_27;
        }
      }
    }

    goto LABEL_23;
  }

  result = sub_1000DC350();
  __break(1u);
  return result;
}

uint64_t _s11FormatStyleVMa_0()
{
  result = qword_100118940;
  if (!qword_100118940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000870C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D9690();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008719C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000D9690();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100087258()
{
  result = sub_1000D9690();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100087400()
{
  result = qword_1001189B0;
  if (!qword_1001189B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189B0);
  }

  return result;
}

uint64_t sub_100087454(uint64_t a1, uint64_t a2)
{
  v4 = _s11FormatStyleVMa_0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000874B8(uint64_t a1)
{
  v2 = _s11FormatStyleVMa_0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100087514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100087400();
    v7 = a3(a1, &_s11FormatStyleV10CodingKeysON_0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100087578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s11FormatStyleV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11FormatStyleV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100087714()
{
  result = qword_1001189D0;
  if (!qword_1001189D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189D0);
  }

  return result;
}

unint64_t sub_10008776C()
{
  result = qword_1001189D8;
  if (!qword_1001189D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189D8);
  }

  return result;
}

unint64_t sub_1000877C4()
{
  result = qword_1001189E0;
  if (!qword_1001189E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189E0);
  }

  return result;
}

uint64_t sub_100087818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C70736964 && a2 == 0xE700000000000000;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6665725065646968 && a2 == 0xEA00000000007869 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000E90F0 == a2 || (sub_1000DC360() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B61657053726F66 && a2 == 0xEB00000000676E69 || (sub_1000DC360() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000074786554)
  {

    return 4;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000879E0()
{
  v0 = type metadata accessor for PriceFormatter();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1000D9140();
  qword_100128F30 = v3;
  return result;
}

uint64_t sub_100087A54(char a1, double a2)
{
  if (qword_100114140 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v3 = sub_10002999C(a1, 3, 0, a2);
  [v3 setNumberStyle:1];
  v4 = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  v5 = [v3 stringFromNumber:v4];

  if (v5)
  {
    v6 = sub_1000DB950();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_100087B64(char a1, double a2)
{
  if (qword_100114140 != -1)
  {
    v24 = a1;
    swift_once();
    a1 = v24;
  }

  v3 = fabs(a2);
  v4 = sub_10002999C(a1, 3, 1, v3);
  [v4 setNumberStyle:1];
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:v3];
  v6 = [v4 stringFromNumber:v5];

  if (v6)
  {
    v7 = sub_1000DB950();
    v9 = v8;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = objc_opt_self();
    v12 = [v11 bundleForClass:ObjCClassFromMetadata];
    v27._countAndFlagsBits = 0xD000000000000013;
    v25._countAndFlagsBits = 0x80000001000E9160;
    v27._object = 0x80000001000E9140;
    v28.value._countAndFlagsBits = 0;
    v28.value._object = 0;
    v13.super.isa = v12;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    sub_1000D8E50(v27, v28, v13, v30, v25);

    v14 = [v11 bundleForClass:ObjCClassFromMetadata];
    if (a2 >= 0.0)
    {
      v26._countAndFlagsBits = 0x80000001000E91D0;
      v15._countAndFlagsBits = 28789;
      v15._object = 0xE200000000000000;
    }

    else
    {
      v26._countAndFlagsBits = 0x80000001000E9190;
      v15._countAndFlagsBits = 1853321060;
      v15._object = 0xE400000000000000;
    }

    v29.value._countAndFlagsBits = 0;
    v29.value._object = 0;
    v17.super.isa = v14;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v18 = sub_1000D8E50(v15, v29, v17, v31, v26);
    v20 = v19;

    sub_1000029E8();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000DE440;
    *(v21 + 56) = &type metadata for Double;
    *(v21 + 64) = &protocol witness table for Double;
    *(v21 + 32) = v3;
    *(v21 + 96) = &type metadata for String;
    v22 = sub_100002AAC();
    *(v21 + 72) = v18;
    *(v21 + 80) = v20;
    *(v21 + 136) = &type metadata for String;
    *(v21 + 144) = v22;
    *(v21 + 104) = v22;
    *(v21 + 112) = v7;
    *(v21 + 120) = v9;
    v16 = sub_1000DB920();
  }

  else
  {

    return 0;
  }

  return v16;
}

uint64_t sub_100087E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1000638B4(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
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
      sub_100023694(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_100087FBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1000638B4(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
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
      sub_100023694(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t type metadata accessor for MediumDetailWithNewsContentView()
{
  result = qword_100118AD8;
  if (!qword_100118AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100088178@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  sub_1000637C8(0, &qword_1001177E0, type metadata accessor for HeadlinesList);
  v80 = v3;
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v83 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v81 = &v67[-v7];
  sub_100063768();
  v79 = v8;
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v82 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v86 = &v67[-v12];
  sub_1000637C8(0, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  v77 = v13;
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v85 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v67[-v17];
  LODWORD(v76) = *(a1 + 80);
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[3];
  v74 = a1[2];
  v75 = v19;
  v22 = a1[5];
  v73 = a1[4];
  v23 = a1[6];
  v24 = a1[7];
  v71 = v20;
  v72 = v23;
  v25 = a1[8];
  v26 = a1[9];
  v27 = *(a1 + 13);
  v99[0] = *(a1 + 11);
  v99[1] = v27;
  v100[0] = *(a1 + 15);
  *(v100 + 9) = *(a1 + 129);
  v28 = *(a1 + 13);
  v101 = *(a1 + 11);
  v102 = v28;
  v103[0] = *(a1 + 15);
  *(v103 + 9) = *(a1 + 129);
  v78 = type metadata accessor for MediumDetailWithNewsContentView();
  v29 = *(v78 + 36);
  v30 = type metadata accessor for RowWithChartTicker();
  sub_100024964(a1 + v29, &v18[*(v30 + 36)]);
  v31 = v102;
  *(v18 + 88) = v101;
  *v18 = v76;
  v32 = v74;
  v33 = v71;
  v34 = v72;
  *(v18 + 1) = v75;
  *(v18 + 2) = v33;
  *(v18 + 3) = v32;
  *(v18 + 4) = v21;
  *(v18 + 5) = v73;
  *(v18 + 6) = v22;
  *(v18 + 7) = v34;
  *(v18 + 8) = v24;
  *(v18 + 9) = v25;
  *(v18 + 10) = v26;
  *(v18 + 104) = v31;
  *(v18 + 120) = v103[0];
  *(v18 + 129) = *(v103 + 9);
  v76 = v30;
  v35 = *(v30 + 40);

  sub_10002B054(v34, v24, v25, v26);
  sub_10002B068(v99, &v87);
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100063858(0, &qword_1001141F8, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for SettingProperty);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();

  *&v18[v35] = sub_1000D9DD0();
  v39 = *(v76 + 44);
  *&v18[v39] = swift_getKeyPath();
  sub_1000638B4(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 1;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  v42 = &v18[*(v77 + 36)];
  *v42 = KeyPath;
  v42[1] = sub_10002B050;
  v42[2] = v41;
  sub_1000DB600();
  sub_1000DA7A0();
  v76 = v95;
  v77 = v93;
  v74 = v98;
  v75 = v97;
  v106 = 1;
  v105 = v94;
  v104 = v96;
  v43 = v86;
  sub_1000DB560();
  v44 = swift_getKeyPath();
  v45 = &v43[*(v79 + 36)];
  *v45 = 1;
  *(v45 + 1) = v44;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 4) = 0;
  v45[40] = 0;
  sub_1000DB600();
  sub_1000DA7A0();
  v79 = v87;
  v72 = v91;
  v73 = v89;
  v71 = v92;
  v109 = 1;
  v108 = v88;
  v107 = v90;
  v46 = *(v78 + 40);
  sub_100023694(0);
  v48 = v81;
  (*(*(v47 - 8) + 16))(v81, a1 + v46, v47);
  v49 = sub_1000DA1E0();
  v50 = type metadata accessor for HeadlinesList();
  *(v48 + *(v50 + 20)) = v49;
  *(v48 + *(v50 + 24)) = 0x4028000000000000;
  v51 = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 40) = 1;
  v53 = (v48 + *(v80 + 36));
  *v53 = v51;
  v53[1] = sub_10002B5D4;
  v53[2] = v52;
  v54 = v85;
  sub_100063934(v18, v85, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  v55 = v106;
  v68 = v105;
  v69 = v104;
  v56 = v82;
  sub_1000639A0(v43, v82);
  v70 = v109;
  LODWORD(v78) = v108;
  LODWORD(v80) = v107;
  v57 = v83;
  sub_100063934(v48, v83, &qword_1001177E0, type metadata accessor for HeadlinesList);
  v58 = v54;
  v59 = v84;
  sub_100063934(v58, v84, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  sub_10006361C();
  v61 = v60;
  v62 = v59 + *(v60 + 48);
  *v62 = 0;
  *(v62 + 8) = v55;
  *(v62 + 16) = v77;
  *(v62 + 24) = v68;
  *(v62 + 32) = v76;
  *(v62 + 40) = v69;
  v63 = v74;
  *(v62 + 48) = v75;
  *(v62 + 56) = v63;
  sub_1000639A0(v56, v59 + *(v60 + 64));
  v64 = v59 + *(v61 + 80);
  *v64 = 0;
  *(v64 + 8) = v70;
  *(v64 + 16) = v79;
  *(v64 + 24) = v78;
  *(v64 + 32) = v73;
  *(v64 + 40) = v80;
  v65 = v71;
  *(v64 + 48) = v72;
  *(v64 + 56) = v65;
  sub_100063934(v57, v59 + *(v61 + 96), &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A60(v48, &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A04(v86);
  sub_100063A60(v18, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  sub_100063A60(v57, &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A04(v56);
  return sub_100063A60(v85, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
}

uint64_t sub_10008891C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000DAD00();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_100063584();
  return sub_100088178(v1, a1 + *(v3 + 44));
}

uint64_t sub_1000889A0(uint64_t a1, uint64_t a2)
{
  sub_100023694(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100088A20(uint64_t a1, uint64_t a2)
{
  sub_100023694(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for HeadlinesList()
{
  result = qword_100118B80;
  if (!qword_100118B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100088ADC()
{
  sub_100023694(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100088B7C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for HeadlinesList();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for HeadlineView(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089370();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089754(a1, v13, type metadata accessor for HeadlineViewModel);
  v19 = *(v10 + 28);
  *&v13[v19] = swift_getKeyPath();
  sub_1000897C0(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  sub_1000DB5E0();
  sub_1000DA9A0();
  sub_10008997C(v13, v18, type metadata accessor for HeadlineView);
  v20 = &v18[*(v15 + 44)];
  v21 = v29[5];
  *(v20 + 4) = v29[4];
  *(v20 + 5) = v21;
  *(v20 + 6) = v29[6];
  v22 = v29[1];
  *v20 = v29[0];
  *(v20 + 1) = v22;
  v23 = v29[3];
  *(v20 + 2) = v29[2];
  *(v20 + 3) = v23;
  KeyPath = swift_getKeyPath();
  sub_100089754(a2, v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlinesList);
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = swift_allocObject();
  sub_10008997C(v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for HeadlinesList);
  sub_10008997C(v18, a3, sub_100089370);
  sub_100089308();
  v28 = (a3 + *(v27 + 36));
  *v28 = KeyPath;
  v28[1] = sub_1000898F8;
  v28[2] = v26;
}

void sub_100088E9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1 - 8;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  sub_100023694(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + *(v5 + 28));
  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v2 + *(a1 + 24));
    *a2 = 1;
    a2[1] = 0;
    a2[2] = v14;
    a2[3] = v15;
    sub_100089114();
    v17 = *(v16 + 44);
    (*(v10 + 16))(v13, v2, v9);
    sub_100089754(v2, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlinesList);
    v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v19 = swift_allocObject();
    sub_10008997C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for HeadlinesList);
    sub_100089308();
    sub_100089420();
    sub_1000895F4();
    sub_100089528(&qword_100118C18, type metadata accessor for HeadlineViewModel);
    sub_1000DB590();
  }
}

void sub_100089114()
{
  if (!qword_100118BC0)
  {
    sub_1000891C0();
    sub_100089270();
    sub_100089528(&qword_100118C00, sub_1000891C0);
    v0 = sub_1000DA800();
    if (!v1)
    {
      atomic_store(v0, &qword_100118BC0);
    }
  }
}

void sub_1000891C0()
{
  if (!qword_100118BC8)
  {
    sub_10008921C();
    v0 = sub_1000DA740();
    if (!v1)
    {
      atomic_store(v0, &qword_100118BC8);
    }
  }
}

unint64_t sub_10008921C()
{
  result = qword_100118BD0;
  if (!qword_100118BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118BD0);
  }

  return result;
}

void sub_100089270()
{
  if (!qword_100118BD8)
  {
    sub_100023694(255);
    sub_100089308();
    sub_100089420();
    v0 = sub_1000DB5A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100118BD8);
    }
  }
}

void sub_100089308()
{
  if (!qword_100118BE0)
  {
    sub_100089370();
    sub_1000893D0();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100118BE0);
    }
  }
}

void sub_100089370()
{
  if (!qword_100118BE8)
  {
    type metadata accessor for HeadlineView(255);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100118BE8);
    }
  }
}

void sub_1000893D0()
{
  if (!qword_100115740)
  {
    v0 = sub_1000DAEC0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115740);
    }
  }
}

unint64_t sub_100089420()
{
  result = qword_100118BF0;
  if (!qword_100118BF0)
  {
    sub_100023694(255);
    sub_1000894B4(&qword_100118BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118BF0);
  }

  return result;
}

uint64_t sub_1000894B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000897C0(255, &qword_1001152C8, type metadata accessor for HeadlineViewModel, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100089528(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100089574(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeadlinesList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100088B7C(a1, v6, a2);
}

unint64_t sub_1000895F4()
{
  result = qword_100118C08;
  if (!qword_100118C08)
  {
    sub_100089308();
    sub_1000896A4();
    sub_100089528(&qword_100116BE8, sub_1000893D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C08);
  }

  return result;
}

unint64_t sub_1000896A4()
{
  result = qword_100118C10;
  if (!qword_100118C10)
  {
    sub_100089370();
    sub_100089528(&qword_1001165F8, type metadata accessor for HeadlineView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C10);
  }

  return result;
}

uint64_t sub_100089754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000897C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10008982C()
{
  v1 = *(type metadata accessor for HeadlinesList() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_100023694(0);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_1000898F8(double *a1)
{
  v3 = type metadata accessor for HeadlinesList();
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *a1;
  v8 = *(result + 32);
  v9 = *(v6 + v8);
  if (v9 < *a1)
  {
    v7 = *(v6 + v8);
  }

  *a1 = v7;
  v10 = a1[2];
  if (v9 < v10)
  {
    v10 = v9;
  }

  a1[2] = v10;
  return result;
}

uint64_t sub_10008997C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000899E8()
{
  result = qword_100118C20;
  if (!qword_100118C20)
  {
    sub_100089114();
    sub_100089528(&qword_100118C28, sub_1000891C0);
    sub_100089A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C20);
  }

  return result;
}

unint64_t sub_100089A98()
{
  result = qword_100118C30;
  if (!qword_100118C30)
  {
    sub_100089270();
    sub_1000895F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C30);
  }

  return result;
}

uint64_t sub_100089B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  sub_10008A14C(0, &qword_100118C48, &type metadata accessor for KeyedEncodingContainer);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10008A0F8();
  sub_1000DC480();
  v17 = 0;
  sub_1000DC280();
  if (!v5)
  {
    v16 = 1;
    sub_1000DC270();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100089CA4()
{
  if (*v0)
  {
    result = 0x79636E6572727563;
  }

  else
  {
    result = 0x746E756F6D61;
  }

  *v0;
  return result;
}

uint64_t sub_100089CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v6 || (sub_1000DC360() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43)
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

uint64_t sub_100089DC0(uint64_t a1)
{
  v2 = sub_10008A0F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089DFC(uint64_t a1)
{
  v2 = sub_10008A0F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100089E38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (v7 && (v5 == *(a2 + 16) && v6 == v7 || (sub_1000DC360() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100089ECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100089F30(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_100089F30(uint64_t *a1)
{
  sub_10008A14C(0, &qword_100118C38, &type metadata accessor for KeyedDecodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v8 = &v11 - v7;
  v9 = a1[3];
  sub_100006C7C(a1, v9);
  sub_10008A0F8();
  sub_1000DC470();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1000DC1B0();
    v12 = 1;
    sub_1000DC1A0();
    (*(v5 + 8))(v8, v4);
  }

  sub_100006D0C(a1);
  return v9;
}

unint64_t sub_10008A0F8()
{
  result = qword_100118C40;
  if (!qword_100118C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C40);
  }

  return result;
}

void sub_10008A14C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_10008A0F8();
    v7 = a3(a1, &type metadata for StockPrice.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10008A1C4()
{
  result = qword_100118C50;
  if (!qword_100118C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C50);
  }

  return result;
}

unint64_t sub_10008A21C()
{
  result = qword_100118C58;
  if (!qword_100118C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C58);
  }

  return result;
}

unint64_t sub_10008A274()
{
  result = qword_100118C60[0];
  if (!qword_100118C60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100118C60);
  }

  return result;
}

uint64_t sub_10008A2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000DA370();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_10008A33C()
{
  result = sub_1000DA370();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10008A3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008A43C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008A518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  v8 = *(type metadata accessor for OverviewTimelineProvider.Configuration() + 44);
  v9 = sub_1000D9870();
  v10 = *(*(v9 - 8) + 32);

  return v10(a6 + v8, a5, v9);
}

uint64_t sub_10008A5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v92 = a4;
  v87 = a5;
  v8 = sub_1000D9870();
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  __chkstk_darwin(v8);
  v86 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000D97E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v80 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v88 = &v75 - v16;
  sub_100094D54(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v84 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v75 - v21;
  v23 = *(a3 - 8);
  v24 = *(v23 + 64);
  v26 = __chkstk_darwin(v25);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  (*(v23 + 16))(v28, a1, a3, v26);
  v30 = a2;
  v31 = sub_1000DA350();
  v79 = sub_1000DBDD0();
  v32 = os_log_type_enabled(v31, v79);
  v90 = v12;
  v91 = v11;
  v89 = v23;
  if (v32)
  {
    v76 = v31;
    v83 = a2;
    v78 = v29;
    v33 = v11;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v93 = v35;
    *v34 = 136315138;
    v77 = a3;
    sub_1000D99D0();
    if ((*(v12 + 48))(v22, 1, v33) == 1)
    {
      sub_10009544C(v22, sub_100094D54);
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    else
    {
      v37 = sub_1000D97D0();
      v36 = v41;
      (*(v12 + 8))(v22, v33);
    }

    v40 = v84;
    v38 = v77;
    v85 = *(v89 + 8);
    v85(v28, v77);
    v42 = sub_1000848C8(v37, v36, &v93);

    *(v34 + 4) = v42;
    v43 = v76;
    _os_log_impl(&_mh_execute_header, v76, v79, "Resolving intent: %s", v34, 0xCu);
    sub_100006D0C(v35);

    v39 = v78;
    v30 = v83;
    v11 = v91;
  }

  else
  {

    v85 = *(v23 + 8);
    v85(v28, a3);
    v38 = a3;
    v39 = v29;
    v40 = v84;
  }

  v44 = v92;
  sub_1000D99D0();
  v45 = v90;
  if ((*(v90 + 48))(v40, 1, v11) == 1)
  {
    sub_10009544C(v40, sub_100094D54);
    v46 = sub_1000DA350();
    v47 = sub_1000DBDB0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v30;
      v49 = v39;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v95[0] = v51;
      *v50 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v52 = sub_1000848C8(v93, v94, v95);

      *(v50 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Malformed widget configuration, falling back to default entity, id=%s", v50, 0xCu);
      sub_100006D0C(v51);

      v39 = v49;
      v30 = v48;
      v45 = v90;
    }

    else
    {
    }

    v60 = v80;
    sub_1000D97C0();
    v61 = sub_1000D97D0();
    v63 = v62;
    (*(v45 + 8))(v60, v91);
    v64 = v86;
    (*(v81 + 104))(v86, enum case for NewsDisplayConfiguration.afterHours(_:), v82);
    sub_10008A518(v61, v63, 0, 0, v64, v87);
    v65 = sub_1000DA370();
    (*(*(v65 - 8) + 8))(v30, v65);
    return (v85)(v39, v38);
  }

  else
  {
    (*(v45 + 32))(v88, v40, v11);
    v53 = sub_1000DA350();
    v54 = sub_1000DBDD0();
    if (os_log_type_enabled(v53, v54))
    {
      v83 = v30;
      v55 = v39;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v95[0] = v57;
      *v56 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      v58 = v44;
      sub_1000DC4C0();
      v59 = sub_1000848C8(v93, v94, v95);

      *(v56 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v53, v54, "Successfully loaded widget entity, id=%s", v56, 0xCu);
      sub_100006D0C(v57);

      v39 = v55;
      v30 = v83;
      v45 = v90;
    }

    else
    {
      v58 = v44;
    }

    v67 = sub_1000D97D0();
    v69 = v68;
    v70 = v38;
    v71 = sub_10008AEC8(v39, v30, v38, v58, &dispatch thunk of WatchlistWidgetConfigurationIntentType.showWatchlistNameValue.getter, "Missing showWatchlistName on intent, id=%s");
    v72 = sub_10008AEC8(v39, v30, v38, v58, &dispatch thunk of WatchlistWidgetConfigurationIntentType.showMoreDataValue.getter, "Missing showMoreDetails on intent, id=%s");
    v73 = v86;
    sub_10008B034(v86);
    sub_10008A518(v67, v69, v71 & 1, v72 & 1, v73, v87);
    v74 = sub_1000DA370();
    (*(*(v74 - 8) + 8))(v30, v74);
    v85(v39, v70);
    return (*(v45 + 8))(v88, v91);
  }
}

uint64_t sub_10008AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), const char *a6)
{
  v7 = a5(a3, a4);
  if (v7 == 2)
  {
    v8 = sub_1000DA350();
    v9 = sub_1000DBDB0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v12 = sub_1000848C8(v14, v15, &v16);

      *(v10 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, a6, v10, 0xCu);
      sub_100006D0C(v11);
    }

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10008B034@<X0>(uint64_t a1@<X8>)
{
  sub_100024BB0(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D99C0();
  v6 = sub_1000D9870();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  sub_10009544C(v5, sub_100024BB0);
  v8 = sub_1000DA350();
  v9 = sub_1000DBDB0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v12 = sub_1000848C8(v14[1], v14[2], &v15);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Missing newsDisplayConfiguration on intent, id=%s", v10, 0xCu);
    sub_100006D0C(v11);
  }

  return (*(v7 + 104))(a1, enum case for NewsDisplayConfiguration.afterHours(_:), v6);
}

uint64_t sub_10008B2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000DB720();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000DA350();
  v8 = sub_1000DBDD0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "OverviewTimelineProvider::placeholder(in:)", v9, 2u);
  }

  sub_1000DB7B0();
  sub_1000323F4(0);
  v11 = v10[12];
  v12 = v10[16];
  v13 = v10[20];
  v14 = v10[24];
  sub_1000D9050();
  sub_10003F734(v6, 0, (a1 + v11));
  (*(v3 + 8))(v6, v2);
  *(a1 + v12) = 0;
  *(a1 + v13) = 1;
  *(a1 + v14) = 0;
  type metadata accessor for OverviewTimelineEntry();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10008B440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100023750(0);
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v8 = sub_1000D8AF0();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = sub_1000D9090();
  v5[11] = v11;
  v12 = *(v11 - 8);
  v5[12] = v12;
  v13 = *(v12 + 64) + 15;
  v5[13] = swift_task_alloc();
  sub_100094D54(0);
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10008B5BC, 0, 0);
}

uint64_t sub_10008B5BC()
{
  v52 = v0;
  v1 = v0[6];
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OverviewTimelineProvider::snapshot(for:in:)", v4, 2u);
  }

  v5 = v0[14];
  v6 = v0[5];
  v7 = v0[3];

  v50 = 0x73696C6863746177;
  v51 = 0xEA00000000002D74;
  v8 = *(v6 + 16);
  v0[15] = v8;
  v9 = *(v6 + 24);
  v0[16] = v9;
  v48 = v9;
  v49 = v8;
  sub_1000D99D0();
  v10 = sub_1000D97E0();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v5, 1, v10);
  v13 = v0[14];
  if (v12 == 1)
  {
    sub_10009544C(v0[14], sub_100094D54);
    v14 = 0xE300000000000000;
    v15._countAndFlagsBits = 7104878;
  }

  else
  {
    v16 = sub_1000D97D0();
    v14 = v17;
    (*(v11 + 8))(v13, v10);
    v15._countAndFlagsBits = v16;
  }

  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[9];
  v21 = v0[10];
  v23 = v0[7];
  v22 = v0[8];
  v24 = v0[3];
  v15._object = v14;
  sub_1000DBA00(v15);

  v54._countAndFlagsBits = 45;
  v54._object = 0xE100000000000000;
  sub_1000DBA00(v54);
  v25 = *(*(v48 + 8) + 8);
  sub_1000D8950();
  sub_1000D8AE0();
  (*(v20 + 8))(v21, v22);
  v26 = *(v18 + 48);
  if (v26(v23, 1, v19) == 1)
  {
    v27 = v0[11];
    v28 = v0[7];
    v29 = v0[13];
    sub_1000D9050();
    if (v26(v28, 1, v27) != 1)
    {
      sub_10009544C(v0[7], sub_100023750);
    }
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[7], v0[11]);
  }

  v30 = v0[12];
  v31 = v0[13];
  v32 = v0[11];
  v33 = v0[6];
  sub_10009533C(&qword_100115308, &type metadata accessor for Date);
  v55._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v55);

  (*(v30 + 8))(v31, v32);
  v34 = v50;
  v35 = v51;
  v0[17] = v50;
  v0[18] = v35;

  v36 = sub_1000DA350();
  v37 = sub_1000DBDD0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v50 = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_1000848C8(v34, v35, &v50);
    _os_log_impl(&_mh_execute_header, v36, v37, "Will fetch widget snapshot, id=%{public}s", v38, 0xCu);
    sub_100006D0C(v39);
  }

  v40 = v0[6];
  v41 = swift_task_alloc();
  v0[19] = v41;
  v42 = *(v0 + 3);
  *(v41 + 16) = v49;
  *(v41 + 24) = v48;
  *(v41 + 32) = v34;
  *(v41 + 40) = v35;
  *(v41 + 48) = v40;
  *(v41 + 56) = vextq_s8(v42, v42, 8uLL);
  v43 = async function pointer to withOSActivity<A>(_:operation:)[1];
  v44 = swift_task_alloc();
  v0[20] = v44;
  v45 = type metadata accessor for OverviewTimelineEntry();
  *v44 = v0;
  v44[1] = sub_10008BA90;
  v46 = v0[2];

  return withOSActivity<A>(_:operation:)(v46, "Watchlist Widget Snapshot", 25, 2, &unk_1000E3CF8, v41, v45);
}

uint64_t sub_10008BA90()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 152);

    return _swift_task_switch(sub_10008BBCC, 0, 0);
  }
}

uint64_t sub_10008BBCC()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];
  v6 = v0[7];
  sub_10008BC78(v0[6], v0[17], v0[18]);

  v7 = v0[1];

  return v7();
}

void sub_10008BC78(uint64_t a1, uint64_t a2, unint64_t a3)
{

  oslog = sub_1000DA350();
  v5 = sub_1000DBDD0();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1000848C8(a2, a3, &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, "Did fetch widget snapshot, id=%{public}s", v6, 0xCu);
    sub_100006D0C(v7);
  }
}

uint64_t sub_10008BD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return _swift_task_switch(sub_10008BDB8, 0, 0);
}

uint64_t sub_10008BDB8()
{
  if (qword_1001140B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 80);
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  type metadata accessor for OverviewTimelineEntry();
  *v6 = v0;
  v6[1] = sub_10008BF2C;
  v7 = *(v0 + 32);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v7, v0 + 16, &unk_1000E3D08, v3, 0, 0, 0xD00000000000002BLL, 0x80000001000E9230);
}

uint64_t sub_10008BF2C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 48);

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_10008C070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v8 = sub_1000DA370();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();
  v11 = *(a5 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v13 = type metadata accessor for OverviewTimelineProvider.Configuration();
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v16 = sub_1000DB720();
  v6[21] = v16;
  v17 = *(v16 - 8);
  v6[22] = v17;
  v18 = *(v17 + 64) + 15;
  v6[23] = swift_task_alloc();
  v19 = sub_1000DB7D0();
  v6[24] = v19;
  v20 = *(v19 - 8);
  v6[25] = v20;
  v21 = *(v20 + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_10008C2E0, 0, 0);
}

uint64_t sub_10008C2E0()
{
  v97 = v0;
  v1 = v0[5];
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v96 = v5;
    *v4 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v6 = sub_1000848C8(v0[2], v0[3], &v96);

    *(v4 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting snapshot fetch, id=%s", v4, 0xCu);
    sub_100006D0C(v5);
  }

  v7 = v0[26];
  v8 = v0[24];
  v9 = v0[6];
  v10 = *(v0[25] + 16);
  v10(v0[27], v9, v8);
  v10(v7, v9, v8);
  v11 = sub_1000DA350();
  v12 = sub_1000DBDD0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[26];
  v15 = v0[27];
  v17 = v0[24];
  v16 = v0[25];
  if (v13)
  {
    v18 = v0[22];
    v19 = v0[23];
    v20 = v0[21];
    v89 = v0[26];
    v21 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v96 = v94;
    *v21 = 136315394;
    v90 = v12;
    sub_1000DB7B0();
    sub_10009533C(&qword_100115310, &type metadata accessor for WidgetFamily);
    v22 = sub_1000DC320();
    log = v11;
    v24 = v23;
    (*(v18 + 8))(v19, v20);
    v25 = *(v16 + 8);
    v25(v15, v17);
    v26 = sub_1000848C8(v22, v24, &v96);

    *(v21 + 4) = v26;
    *(v21 + 12) = 1024;
    LODWORD(v26) = sub_1000DB7C0() & 1;
    v25(v89, v17);
    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, log, v90, "Snapshot context. family: %s, isPreview: %{BOOL}d", v21, 0x12u);
    sub_100006D0C(v94);
  }

  else
  {
    v27 = *(v16 + 8);
    v27(v0[26], v0[24]);

    v27(v15, v17);
  }

  v28 = v0[20];
  v29 = v0[16];
  v91 = v0[15];
  v95 = v0[19];
  v30 = v0[14];
  v31 = v0[11];
  v32 = v0[12];
  v34 = v0[9];
  v33 = v0[10];
  v35 = v0[8];
  v36 = v0[5];
  (*(v0[13] + 16))(v30, v0[7], v35);
  (*(v31 + 16))(v32, v36, v33);
  sub_10008A5AC(v30, v32, v35, v34, v28);
  v37 = *(v29 + 16);
  v37(v95, v28, v91);
  v38 = sub_1000DA350();
  v39 = sub_1000DBDD0();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[19];
  v42 = v0[15];
  v43 = v0[16];
  if (v40)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v96 = v45;
    *v44 = 136446210;
    v46 = v41 + *(v42 + 44);
    v47 = sub_1000D9860();
    v92 = v37;
    v49 = v48;
    v50 = v41;
    v51 = *(v43 + 8);
    v51(v50, v42);
    v52 = sub_1000848C8(v47, v49, &v96);
    v37 = v92;

    *(v44 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v38, v39, "Resolved configuration. newsDisplayConfiguration: %{public}s", v44, 0xCu);
    sub_100006D0C(v45);
  }

  else
  {

    v53 = v41;
    v51 = *(v43 + 8);
    v51(v53, v42);
  }

  v0[28] = v51;
  v54 = v0[5];
  v37(v0[18], v0[20], v0[15]);
  v55 = sub_1000DA350();
  v56 = sub_1000DBDD0();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v0[18];
  v60 = v0[15];
  v59 = v0[16];
  v93 = v51;
  if (v57)
  {
    v61 = swift_slowAlloc();
    v62 = v51;
    v63 = v61;
    *v61 = 67109120;
    v64 = v37;
    v65 = *(v58 + 16);
    v62(v58, v60);
    *(v63 + 1) = v65;
    v37 = v64;
    _os_log_impl(&_mh_execute_header, v55, v56, "Resolved configuration. showWatchlistName: %{BOOL}d", v63, 8u);
  }

  else
  {
    v51(v58, v60);
  }

  v66 = v0[20];
  v67 = v0[17];
  v68 = v0[15];
  v69 = v0[5];

  v37(v67, v66, v68);
  v70 = sub_1000DA350();
  v71 = sub_1000DBDD0();
  v72 = os_log_type_enabled(v70, v71);
  v74 = v0[16];
  v73 = v0[17];
  v75 = v0[15];
  if (v72)
  {
    v76 = swift_slowAlloc();
    *v76 = 67109120;
    v77 = *(v73 + 17);
    v78 = v74 + 8;
    v93(v73, v75);
    *(v76 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v70, v71, "Resolved configuration. showMoreDetails: %{BOOL}d", v76, 8u);
  }

  else
  {
    v78 = v74 + 8;
    v93(v0[17], v0[15]);
  }

  v0[29] = v78;
  v80 = v0[8];
  v79 = v0[9];

  v81 = swift_task_alloc();
  v0[30] = v81;
  v82 = type metadata accessor for OverviewTimelineProvider();
  *v81 = v0;
  v81[1] = sub_10008CA4C;
  v83 = v0[20];
  v85 = v0[5];
  v84 = v0[6];
  v86 = v0[4];

  return sub_10008CC38(v86, v83, v84, v82);
}

uint64_t sub_10008CA4C()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return _swift_task_switch(sub_10008CB48, 0, 0);
}

uint64_t sub_10008CB48()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 184);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  (*(v0 + 224))(*(v0 + 160), *(v0 + 120));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10008CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[63] = a4;
  v5[64] = v4;
  v5[61] = a2;
  v5[62] = a3;
  v5[60] = a1;
  v6 = sub_1000D9480();
  v5[65] = v6;
  v7 = *(v6 - 8);
  v5[66] = v7;
  v8 = *(v7 + 64) + 15;
  v5[67] = swift_task_alloc();
  sub_100059E4C();
  v5[68] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[69] = swift_task_alloc();
  sub_100023704(0);
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[70] = swift_task_alloc();
  sub_100094F44(0);
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v15 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  v5[74] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v5[75] = swift_task_alloc();
  v17 = type metadata accessor for HeadlineViewModel(0);
  v5[76] = v17;
  v18 = *(v17 - 8);
  v5[77] = v18;
  v19 = *(v18 + 64) + 15;
  v5[78] = swift_task_alloc();
  sub_100023694(0);
  v5[79] = v20;
  v21 = *(v20 - 8);
  v5[80] = v21;
  v22 = *(v21 + 64) + 15;
  v5[81] = swift_task_alloc();
  v23 = type metadata accessor for WidgetStock();
  v5[82] = v23;
  v24 = *(v23 - 8);
  v5[83] = v24;
  v25 = *(v24 + 64) + 15;
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v26 = sub_1000D9B40();
  v5[86] = v26;
  v27 = *(v26 - 8);
  v5[87] = v27;
  v28 = *(v27 + 64) + 15;
  v5[88] = swift_task_alloc();
  sub_100023660(0);
  v30 = *(*(v29 - 8) + 64) + 15;
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  sub_100094F78(0);
  v32 = *(*(v31 - 8) + 64) + 15;
  v5[93] = swift_task_alloc();
  sub_100025008(0);
  v5[94] = v33;
  v34 = *(v33 - 8);
  v5[95] = v34;
  v35 = *(v34 + 64) + 15;
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v36 = type metadata accessor for WidgetWatchlist(0);
  v5[98] = v36;
  v37 = *(v36 - 8);
  v5[99] = v37;
  v38 = *(v37 + 64) + 15;
  v5[100] = swift_task_alloc();
  sub_100094FAC(0);
  v40 = *(*(v39 - 8) + 64) + 15;
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v41 = sub_1000DB720();
  v5[103] = v41;
  v42 = *(v41 - 8);
  v5[104] = v42;
  v43 = *(v42 + 64) + 15;
  v5[105] = swift_task_alloc();
  v5[106] = swift_task_alloc();
  v5[107] = swift_task_alloc();

  return _swift_task_switch(sub_10008D138, 0, 0);
}

uint64_t sub_10008D138()
{
  v0[108] = sub_100002A50(0, &qword_1001168A8);
  v0[109] = sub_1000DBC20();
  v0[110] = sub_1000DBC10();
  v2 = sub_1000DBBE0();

  return _swift_task_switch(sub_10008D1EC, v2, v1);
}

uint64_t sub_10008D1EC()
{
  v1 = v0[110];
  v2 = v0[108];
  v4 = v0[63];
  v3 = v0[64];

  sub_100093994(v2, (v0 + 7));

  return _swift_task_switch(sub_10008D278, 0, 0);
}

uint64_t sub_10008D278()
{
  v1 = v0[109];
  v0[111] = sub_100002A50(0, &qword_100115348);
  v0[112] = sub_1000DBC10();
  v3 = sub_1000DBBE0();

  return _swift_task_switch(sub_10008D320, v3, v2);
}

uint64_t sub_10008D320()
{
  v1 = v0[112];
  v2 = v0[111];
  v4 = v0[63];
  v3 = v0[64];

  sub_100093994(v2, (v0 + 2));

  return _swift_task_switch(sub_10008D3AC, 0, 0);
}

uint64_t sub_10008D3AC()
{
  v29 = v0;
  v1 = *(v0 + 856);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  v6 = *(v0 + 488);
  sub_1000DB7B0();
  v7 = v6;
  v25 = v6;
  LOBYTE(v6) = *(v6 + 16);
  *(v0 + 1072) = v6;
  v8 = *(v7 + 17);
  *(v0 + 1073) = v8;
  *(v0 + 904) = *(v4 + 16);
  *(v0 + 912) = *(v4 + 24);
  v27 = sub_10009407C(v1, v6, v8, 0);
  *(v0 + 920) = v27;
  v9 = *(v2 + 8);
  *(v0 + 928) = v9;
  *(v0 + 936) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  sub_1000DB7B0();
  v10 = sub_10009407C(v1, v6, v8, 1u);
  *(v0 + 944) = v10;
  v9(v1, v3);
  if (*(v25 + 8))
  {
    v11 = **(v0 + 488);
    v12 = *(v25 + 8);
  }

  else
  {
    v11 = sub_1000D9C50();
    v12 = v13;
  }

  *(v0 + 960) = v12;
  *(v0 + 952) = v11;
  v14 = *(v0 + 512);

  v15 = sub_1000DA350();
  v16 = sub_1000DBDD0();

  v17 = v27;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v18 = 136315906;
    v26 = v11;
    *(v18 + 4) = sub_1000848C8(v11, v12, &v28);
    *(v18 + 12) = 2048;
    *(v18 + 14) = v27;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v10;
    *(v18 + 32) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v19 = sub_1000848C8(*(v0 + 424), *(v0 + 432), &v28);

    *(v18 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetching watchlist, watchlist=%s, countWithoutNews=%ld, countWithNews=%ld, id=%s", v18, 0x2Au);
    swift_arrayDestroy();

    v11 = v26;
  }

  else
  {
  }

  v20 = sub_100006C7C((v0 + 56), *(v0 + 80));
  if (v10 > v27)
  {
    v17 = v10;
  }

  v21 = *v20;
  v22 = swift_task_alloc();
  *(v0 + 968) = v22;
  *v22 = v0;
  v22[1] = sub_10008D6F4;
  v23 = *(v0 + 816);

  return sub_100003218(v23, v11, v12, v17);
}

uint64_t sub_10008D6F4()
{
  v2 = *v1;
  v3 = *(*v1 + 968);
  v7 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v4 = *(v2 + 960);

    v5 = sub_10008F5F0;
  }

  else
  {
    v5 = sub_10008D810;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10008D810()
{
  v297 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  sub_100094CEC(*(v0 + 816), v1, sub_100094FAC);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = *(v0 + 960);
  v6 = *(v0 + 808);
  if (v4 == 1)
  {
    v7 = *(v0 + 512);
    sub_10009544C(v6, sub_100094FAC);

    v8 = sub_1000DA350();
    LOBYTE(v9) = sub_1000DBDB0();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 960);
    if (!v10)
    {

      goto LABEL_15;
    }

    v12 = *(v0 + 952);
    v13 = swift_slowAlloc();
    v296[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_1000848C8(v12, v11, v296);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2080;
    if (qword_1001140B8 == -1)
    {
LABEL_4:
      sub_1000DC4C0();
      v15 = sub_1000848C8(*(v0 + 312), *(v0 + 320), v296);

      *(v13 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find watchlist, watchlist=%s, id=%s", v13, 0x16u);
      swift_arrayDestroy();

LABEL_15:
      v291 = *(v0 + 816);
      v37 = *(v0 + 480);
      sub_1000328C0();
      v39 = (v37 + *(v38 + 48));
      v284 = (v37 + *(v38 + 64));
      sub_1000D9050();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v41 = objc_opt_self();
      v42 = [v41 bundleForClass:ObjCClassFromMetadata];
      v244._countAndFlagsBits = 0x80000001000E9280;
      v299._object = 0x80000001000E9260;
      v299._countAndFlagsBits = 0xD000000000000011;
      v305.value._countAndFlagsBits = 0;
      v305.value._object = 0;
      v43.super.isa = v42;
      v308._countAndFlagsBits = 0;
      v308._object = 0xE000000000000000;
      v44 = sub_1000D8E50(v299, v305, v43, v308, v244);
      v46 = v45;

      *v39 = v44;
      v39[1] = v46;
      v47 = [v41 bundleForClass:ObjCClassFromMetadata];
      v245._countAndFlagsBits = 0x80000001000E92F0;
      v300._countAndFlagsBits = 0xD00000000000001DLL;
      v300._object = 0x80000001000E92D0;
      v306.value._countAndFlagsBits = 0;
      v306.value._object = 0;
      v48.super.isa = v47;
      v309._countAndFlagsBits = 0;
      v309._object = 0xE000000000000000;
      v49 = sub_1000D8E50(v300, v306, v48, v309, v245);
      v51 = v50;

      sub_10009544C(v291, sub_100094FAC);
      *v284 = v49;
      v284[1] = v51;
      type metadata accessor for OverviewTimelineEntry();
LABEL_30:
      swift_storeEnumTagMultiPayload();
LABEL_31:
      v95 = *(v0 + 856);
      v96 = *(v0 + 848);
      v97 = *(v0 + 840);
      v98 = *(v0 + 816);
      v99 = *(v0 + 808);
      v100 = *(v0 + 800);
      v101 = *(v0 + 776);
      v102 = *(v0 + 768);
      v103 = *(v0 + 744);
      v246 = *(v0 + 736);
      v248 = *(v0 + 728);
      v250 = *(v0 + 720);
      v252 = *(v0 + 712);
      v254 = *(v0 + 704);
      v256 = *(v0 + 680);
      v258 = *(v0 + 672);
      v260 = *(v0 + 648);
      v262 = *(v0 + 624);
      v265 = *(v0 + 600);
      v268 = *(v0 + 584);
      v271 = *(v0 + 576);
      v275 = *(v0 + 568);
      v280 = *(v0 + 560);
      v287 = *(v0 + 552);
      v293 = *(v0 + 536);
      sub_100006D0C((v0 + 16));
      sub_100006D0C((v0 + 56));

      v104 = *(v0 + 8);

      return v104();
    }

LABEL_125:
    swift_once();
    goto LABEL_4;
  }

  v16 = *(v0 + 512);
  sub_100094FE0(v6, *(v0 + 800), type metadata accessor for WidgetWatchlist);

  v17 = sub_1000DA350();
  v18 = sub_1000DBDD0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 960);
    v20 = *(v0 + 952);
    v21 = swift_slowAlloc();
    v296[0] = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_1000848C8(v20, v19, v296);
    *(v21 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v22 = sub_1000848C8(*(v0 + 408), *(v0 + 416), v296);

    *(v21 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "Did fetch watchlist, watchlist=%s, id=%s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v23 = *(v0 + 760);
  v24 = *(v0 + 752);
  v25 = *(v0 + 744);
  v26 = *(*(v0 + 800) + 16);
  *(v0 + 984) = v26;
  *(v0 + 448) = v26;
  sub_1000250D8(0);
  sub_10009533C(&qword_100115388, sub_1000250D8);

  sub_1000DA240();
  if ((*(v23 + 48))(v25, 1, v24) == 1)
  {
    v27 = *(v0 + 960);
    v28 = *(v0 + 512);
    sub_10009544C(*(v0 + 744), sub_100094F78);

    v29 = sub_1000DA350();
    v30 = sub_1000DBDD0();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 960);
    if (v31)
    {
      v33 = *(v0 + 952);
      v34 = swift_slowAlloc();
      v296[0] = swift_slowAlloc();
      *v34 = 136315394;
      v35 = sub_1000848C8(v33, v32, v296);

      *(v34 + 4) = v35;
      *(v34 + 12) = 2080;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v36 = sub_1000848C8(*(v0 + 296), *(v0 + 304), v296);

      *(v34 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "No symbols in watchlist, watchlist=%s, id=%s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v83 = *(v0 + 816);
    v84 = *(v0 + 800);
    v85 = *(v0 + 480);
    sub_1000328C0();
    v87 = (v85 + *(v86 + 48));
    v88 = (v85 + *(v86 + 64));
    sub_1000D9050();
    type metadata accessor for Localized();
    v89 = swift_getObjCClassFromMetadata();
    v90 = [objc_opt_self() bundleForClass:v89];
    v244._countAndFlagsBits = 0x80000001000E9340;
    v301._countAndFlagsBits = 0x6F626D7953206F4ELL;
    v301._object = 0xEA0000000000736CLL;
    v307.value._countAndFlagsBits = 0;
    v307.value._object = 0;
    v91.super.isa = v90;
    v310._countAndFlagsBits = 0;
    v310._object = 0xE000000000000000;
    v92 = sub_1000D8E50(v301, v307, v91, v310, v244);
    v94 = v93;

    sub_10009544C(v83, sub_100094FAC);
    sub_10009544C(v84, type metadata accessor for WidgetWatchlist);
    *v87 = v92;
    v87[1] = v94;
    type metadata accessor for OverviewTimelineEntry();
    *v88 = 0;
    v88[1] = 0;
    goto LABEL_30;
  }

  v52 = *(v0 + 944);
  v285 = *(v0 + 912);
  v53 = *(v0 + 776);
  v54 = *(v0 + 768);
  v55 = *(v0 + 760);
  v56 = *(v0 + 752);
  v57 = *(v0 + 736);
  v58 = *(v0 + 640);
  v59 = *(v0 + 632);
  v60 = *(v0 + 488);
  v274 = *(v0 + 496);
  v278 = *(v0 + 904);
  (*(v55 + 32))(v53, *(v0 + 744), v56);
  v62 = *(v55 + 16);
  v61 = v55 + 16;
  *(v0 + 992) = v62;
  *(v0 + 1000) = v61 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v62(v54, v53, v56);
  v63 = sub_100018398(v52);
  v65 = v64;
  v9 = v66;
  v68 = v67;
  *(v0 + 1008) = v63;
  *(v0 + 1016) = v64;
  *(v0 + 1024) = v66;
  *(v0 + 1032) = v67;
  v70 = *(v58 + 56);
  v69 = v58 + 56;
  v70(v57, 1, 1, v59);
  *(v0 + 128) = v63;
  *(v0 + 136) = v65;
  v292 = v65;
  *(v0 + 144) = v9;
  *(v0 + 152) = v68;
  sub_1000952B8(0);
  v8 = v71;
  v72 = sub_10009533C(&qword_100118D30, sub_1000952B8);
  if (!sub_100095048(v60, v274, v0 + 128, v278, v8, v285, v72))
  {
    v106 = *(v0 + 976);
    v107 = *(v0 + 712);
    v108 = *(v0 + 640);
    v8 = *(v0 + 632);
    sub_100094CEC(*(v0 + 736), v107, sub_100023660);
    v109 = *(v108 + 48);
    LODWORD(v8) = v109(v107, 1, v8);
    sub_10009544C(v107, sub_100023660);
    if (v8 == 1)
    {
      v110 = *(v0 + 1000);
      v111 = *(v0 + 920);
      (*(v0 + 992))(*(v0 + 768), *(v0 + 776), *(v0 + 752));
      v115 = sub_100018398(v111);
      if ((v114 & 1) == 0)
      {
LABEL_36:
        sub_100024138(v115, v112, v113, v114);
        v117 = v116;
        goto LABEL_53;
      }

      v60 = v114;
      v141 = v113;
      v142 = v112;
      sub_1000DC380();
      swift_unknownObjectRetain_n();
      v143 = swift_dynamicCastClass();
      if (!v143)
      {
        swift_unknownObjectRelease();
        v143 = _swiftEmptyArrayStorage;
      }

      v144 = v143[2];

      if (!__OFSUB__(v60 >> 1, v141))
      {
        if (v144 == (v60 >> 1) - v141)
        {
          v117 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v117)
          {
LABEL_54:
            v145 = *(v0 + 776);
            v146 = *(v0 + 752);
            *(v0 + 440) = v117;
            goto LABEL_63;
          }

          v117 = _swiftEmptyArrayStorage;
LABEL_53:
          swift_unknownObjectRelease();
          goto LABEL_54;
        }

        goto LABEL_131;
      }

      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      swift_unknownObjectRelease();
      v114 = v60;
      v113 = v141;
      v112 = v142;
      goto LABEL_36;
    }

    v115 = *(v0 + 1032);
    v137 = *(v0 + 1008);
    if (v115)
    {
      sub_1000DC380();
      swift_unknownObjectRetain_n();
      v147 = swift_dynamicCastClass();
      if (!v147)
      {
        swift_unknownObjectRelease();
        v115 = *(v0 + 1032);
        v147 = _swiftEmptyArrayStorage;
      }

      v142 = *(v0 + 1024);
      v141 = v147[2];

      v148 = (v115 >> 1) - v142;
      if (__OFSUB__(v115 >> 1, v142))
      {
        goto LABEL_130;
      }

      v149 = *(v0 + 1008);
      if (v141 == v148)
      {
        v150 = *(v0 + 1008);
        v140 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v140)
        {
LABEL_62:
          v152 = *(v0 + 776);
          v153 = *(v0 + 752);
          *(v0 + 456) = v140;
LABEL_63:
          sub_1000DA1C0();
          v154 = *(v0 + 512);
          v9 = sub_1000DA350();
          LOBYTE(v61) = sub_1000DBDD0();
          if (!os_log_type_enabled(v9, v61))
          {
            goto LABEL_68;
          }

          v155 = *(v0 + 736);
          v156 = *(v0 + 632);
          v69 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v296[0] = v60;
          *v69 = 134218498;
          swift_beginAccess();
          v157 = v109(v155, 1, v156);
          v158 = 0;
          if (!v157)
          {
            v159 = *(v0 + 648);
            v160 = *(v0 + 640);
            v161 = *(v0 + 632);
            (*(v160 + 16))(v159, *(v0 + 736), v161);
            v158 = sub_1000DA1E0();
            (*(v160 + 8))(v159, v161);
          }

          v162 = *(v0 + 776);
          v163 = *(v0 + 752);
          *(v69 + 4) = v158;
          *(v69 + 12) = 2048;
          swift_beginAccess();
          *(v69 + 14) = sub_1000DA1E0();
          *(v69 + 22) = 2080;
          if (qword_1001140B8 == -1)
          {
LABEL_67:
            sub_1000DC4C0();
            v164 = sub_1000848C8(*(v0 + 344), *(v0 + 352), v296);

            *(v69 + 24) = v164;
            _os_log_impl(&_mh_execute_header, v9, v61, "Fetched %ld headlines for %ld stocks, id=%s", v69, 0x20u);
            sub_100006D0C(v60);

LABEL_68:

            if (*(v0 + 1072) == 1)
            {
              v165 = *(v0 + 800);
              v167 = *v165;
              v166 = v165[1];
            }

            else
            {
              v167 = 0;
              v166 = 0;
            }

            v168 = *(v0 + 840);
            v169 = *(v0 + 832);
            v170 = *(v0 + 824);
            v171 = *(v0 + 496);
            sub_1000DB7B0();
            v172 = (*(v169 + 88))(v168, v170);
            if (v172 == enum case for WidgetFamily.systemSmall(_:))
            {
              v173 = *(v0 + 960);
              v174 = *(v0 + 1073);

              v281 = 3;
              if (v8 == 1)
              {
                v175 = v174;
              }

              else
              {
                v175 = 3;
              }
            }

            else
            {
              if (v172 == enum case for WidgetFamily.systemMedium(_:))
              {
                v219 = *(v0 + 960);
                v220 = *(v0 + 1073);
                v221 = *(v0 + 1072);

                v222 = v220 == 0;
                v223 = 1;
                if (v220)
                {
                  v175 = 1;
                }

                else
                {
                  v175 = 2;
                }

                if (!v222)
                {
                  v223 = 2;
                }

                v224 = 2;
                if (((v8 == 1) & v221) == 0)
                {
                  v224 = 3;
                }

                v281 = v224;
                if (v8 == 1)
                {
                  v288 = v223;
                  v272 = v167;
                  v276 = v166;
                  goto LABEL_77;
                }

                v288 = 2;
                v175 = 3;
LABEL_76:

                v272 = 0;
                v276 = 0;
LABEL_77:
                v269 = *(v0 + 1073);
                v176 = *(v0 + 800);
                v177 = *(v0 + 784);
                v178 = *(v0 + 776);
                v179 = *(v0 + 752);
                v180 = *(v0 + 736);
                v9 = *(v0 + 600);
                v181 = *(v0 + 592);
                v263 = v175;
                v266 = *(v0 + 512);
                swift_beginAccess();
                *(swift_task_alloc() + 16) = v175;
                v182 = v181[5];
                type metadata accessor for TickerCellViewModel(0);
                sub_1000DA1D0();

                v183 = *(v177 + 24);
                v184 = v181[7];
                v185 = sub_1000D9690();
                (*(*(v185 - 8) + 16))(v9 + v184, v176 + v183, v185);
                swift_beginAccess();
                sub_100094CEC(v180, v9 + v181[11], sub_100023660);
                *v9 = v272;
                *(v9 + 8) = v276;
                *(v9 + v181[6]) = v263;
                *(v9 + v181[8]) = v281;
                *(v9 + v181[9]) = v288;
                *(v9 + v181[10]) = v269;
                v186 = sub_1000DA350();
                LOBYTE(v9) = sub_1000DBDD0();
                if (os_log_type_enabled(v186, v9))
                {
                  v187 = swift_slowAlloc();
                  v188 = swift_slowAlloc();
                  v296[0] = v188;
                  *v187 = 136315138;
                  if (qword_1001140B8 != -1)
                  {
                    swift_once();
                  }

                  sub_1000DC4C0();
                  v189 = sub_1000848C8(*(v0 + 280), *(v0 + 288), v296);

                  *(v187 + 4) = v189;
                  _os_log_impl(&_mh_execute_header, v186, v9, "Successfully created timeline entry, id=%s", v187, 0xCu);
                  sub_100006D0C(v188);
                }

                v190 = *(v0 + 984);
                v191 = *(v0 + 600);
                v192 = *(v0 + 480);
                sub_1000323F4(0);
                v247 = v193;
                v8 = v193[12];
                sub_1000D9050();
                sub_100094CEC(v191, v192 + v8, type metadata accessor for WatchlistOverviewContentViewModel);
                v289 = *(v190 + 16);
                if (!v289)
                {
LABEL_95:
                  v283 = 0;
LABEL_117:
                  v227 = *(v0 + 1008);
                  v228 = *(v0 + 816);
                  v229 = *(v0 + 800);
                  v230 = *(v0 + 760);
                  v290 = *(v0 + 752);
                  v295 = *(v0 + 776);
                  v231 = *(v0 + 736);
                  v232 = *(v0 + 600);
                  v233 = *(v0 + 480);
                  swift_unknownObjectRelease();
                  v234 = v247[16];
                  v235 = v247[20];
                  v236 = v247[24];
                  sub_10009544C(v232, type metadata accessor for WatchlistOverviewContentViewModel);
                  sub_10009544C(v228, sub_100094FAC);
                  sub_10009544C(v229, type metadata accessor for WidgetWatchlist);
                  *(v233 + v234) = v283;
                  *(v233 + v235) = 0;
                  *(v233 + v236) = 0;
                  type metadata accessor for OverviewTimelineEntry();
                  swift_storeEnumTagMultiPayload();
                  sub_10009544C(v231, sub_100023660);
                  (*(v230 + 8))(v295, v290);
                  goto LABEL_31;
                }

                v13 = 0;
                v282 = *(v0 + 672);
                v273 = *(v0 + 544);
                v277 = *(v0 + 664);
                v194 = *(v0 + 528);
                v270 = *(*(v0 + 656) + 20);
                v267 = *(v0 + 984) + ((*(v277 + 80) + 32) & ~*(v277 + 80));
                v264 = (v194 + 56);
                v261 = enum case for ExchangeStatus.open(_:);
                v259 = (v194 + 104);
                v294 = (v194 + 48);
                v249 = (v194 + 32);
                v251 = v190;
                v257 = (v194 + 8);
                while (1)
                {
                  if (v13 >= *(v190 + 16))
                  {
                    goto LABEL_124;
                  }

                  v197 = *(v0 + 560);
                  sub_100094CEC(v267 + *(v277 + 72) * v13, *(v0 + 672), type metadata accessor for WidgetStock);
                  sub_100094CEC(v282 + v270, v197, sub_100023704);
                  v198 = sub_1000D9450();
                  v199 = *(v198 - 8);
                  if ((*(v199 + 48))(v197, 1, v198) == 1)
                  {
                    sub_10009544C(*(v0 + 560), sub_100023704);
                    v200 = 1;
                  }

                  else
                  {
                    v201 = *(v0 + 584);
                    v202 = *(v0 + 560);
                    sub_1000D93F0();
                    (*(v199 + 8))(v202, v198);
                    v200 = 0;
                  }

                  v203 = *(v0 + 584);
                  v204 = *(v0 + 576);
                  v205 = *(v0 + 552);
                  v206 = *(v0 + 520);
                  v207 = *v264;
                  (*v264)(v203, v200, 1, v206);
                  (*v259)(v204, v261, v206);
                  v207(v204, 0, 1, v206);
                  v208 = *(v273 + 48);
                  sub_100094CEC(v203, v205, sub_100094F44);
                  sub_100094CEC(v204, v205 + v208, sub_100094F44);
                  v8 = *v294;
                  if ((*v294)(v205, 1, v206) == 1)
                  {
                    break;
                  }

                  v209 = *(v0 + 520);
                  sub_100094CEC(*(v0 + 552), *(v0 + 568), sub_100094F44);
                  v210 = (v8)(v205 + v208, 1, v209);
                  v211 = *(v0 + 672);
                  v212 = *(v0 + 584);
                  v9 = *(v0 + 576);
                  v213 = *(v0 + 568);
                  if (v210 == 1)
                  {
                    v214 = *(v0 + 520);
                    v8 = sub_100094F44;
                    sub_10009544C(*(v0 + 576), sub_100094F44);
                    sub_10009544C(v212, sub_100094F44);
                    sub_10009544C(v211, type metadata accessor for WidgetStock);
                    (*v257)(v213, v214);
LABEL_84:
                    sub_10009544C(*(v0 + 552), sub_100059E4C);
                    goto LABEL_85;
                  }

                  v255 = *(v0 + 552);
                  v215 = *(v0 + 536);
                  v216 = *(v0 + 520);
                  (*v249)(v215, v205 + v208, v216);
                  sub_10009533C(&qword_100117188, &type metadata accessor for ExchangeStatus);
                  v253 = sub_1000DB8D0();
                  v217 = *v257;
                  (*v257)(v215, v216);
                  v8 = sub_100094F44;
                  sub_10009544C(v9, sub_100094F44);
                  sub_10009544C(v212, sub_100094F44);
                  sub_10009544C(v211, type metadata accessor for WidgetStock);
                  v218 = v216;
                  v190 = v251;
                  v217(v213, v218);
                  sub_10009544C(v255, sub_100094F44);
                  if (v253)
                  {
                    goto LABEL_116;
                  }

LABEL_85:
                  if (v289 == ++v13)
                  {
                    goto LABEL_95;
                  }
                }

                v9 = *(v0 + 672);
                v195 = *(v0 + 584);
                v196 = *(v0 + 520);
                sub_10009544C(*(v0 + 576), sub_100094F44);
                sub_10009544C(v195, sub_100094F44);
                sub_10009544C(v9, type metadata accessor for WidgetStock);
                if ((v8)(v205 + v208, 1, v196) == 1)
                {
                  sub_10009544C(*(v0 + 552), sub_100094F44);
LABEL_116:
                  v283 = 1;
                  goto LABEL_117;
                }

                goto LABEL_84;
              }

              if (v172 == enum case for WidgetFamily.systemLarge(_:))
              {
                v225 = *(v0 + 960);

                v272 = v167;
                v276 = v166;
                if (v8 == 1)
                {
                  if (*(v0 + 1073))
                  {
                    v226 = 2;
                  }

                  else
                  {
                    v226 = 1;
                  }

                  v288 = v226;
                  if (*(v0 + 1073))
                  {
                    v175 = 1;
                  }

                  else
                  {
                    v175 = 2;
                  }

                  v281 = 6;
                }

                else
                {
                  v175 = 3;
                  v288 = 2;
                  v281 = 3;
                }

                goto LABEL_77;
              }

              if (v172 != enum case for WidgetFamily.accessoryRectangular(_:))
              {
                v238 = *(v0 + 936);
                v239 = *(v0 + 928);
                v240 = *(v0 + 856);
                v241 = *(v0 + 824);
                v242 = *(v0 + 496);
                v296[0] = 0;
                v296[1] = 0xE000000000000000;
                sub_1000DBF50(52);
                v302._countAndFlagsBits = 0xD000000000000030;
                v302._object = 0x80000001000E9390;
                sub_1000DBA00(v302);
                sub_1000DB7B0();
                sub_10009533C(&qword_100115310, &type metadata accessor for WidgetFamily);
                v303._countAndFlagsBits = sub_1000DC320();
                sub_1000DBA00(v303);

                v239(v240, v241);
                v304._countAndFlagsBits = 11815;
                v304._object = 0xE200000000000000;
                sub_1000DBA00(v304);
                return sub_1000DC0D0();
              }

              v237 = *(v0 + 960);

              v281 = *(v0 + 920);
              v175 = 3;
            }

            v288 = 1;
            goto LABEL_76;
          }

LABEL_128:
          swift_once();
          goto LABEL_67;
        }

        v140 = _swiftEmptyArrayStorage;
LABEL_61:
        v151 = *(v0 + 1008);
        swift_unknownObjectRelease();
        goto LABEL_62;
      }

      v243 = *(v0 + 1008);
      swift_unknownObjectRelease();
      v115 = *(v0 + 1032);
      v137 = *(v0 + 1008);
    }

    else
    {
      v138 = *(v0 + 1008);
      swift_unknownObjectRetain();
    }

    sub_100024138(v137, *(v0 + 1016), *(v0 + 1024), v115);
    v140 = v139;
    goto LABEL_61;
  }

  v286 = v68 >> 1;
  v73 = (v68 >> 1) - v9;
  if (__OFSUB__(v68 >> 1, v9))
  {
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v8 = _swiftEmptyArrayStorage;
  if (v73)
  {
    v296[0] = _swiftEmptyArrayStorage;
    sub_10007BD0C(0, v73 & ~(v73 >> 63), 0);
    if ((v73 & 0x8000000000000000) == 0)
    {
      v74 = *(v0 + 696);
      v279 = *(v0 + 664);
      v8 = v296[0];
      v13 = v74 + 16;
      if (v9 <= v286)
      {
        v75 = v68 >> 1;
      }

      else
      {
        v75 = v9;
      }

      while (v75 != v9)
      {
        v76 = *(v0 + 704);
        v77 = *(v0 + 688);
        v78 = *(v0 + 680);
        sub_100094CEC(v292 + *(v279 + 72) * v9, v78, type metadata accessor for WidgetStock);
        (*v13)(v76, v78, v77);
        sub_10009544C(v78, type metadata accessor for WidgetStock);
        v296[0] = v8;
        v80 = *(v8 + 16);
        v79 = *(v8 + 24);
        if (v80 >= v79 >> 1)
        {
          sub_10007BD0C(v79 > 1, v80 + 1, 1);
          v8 = v296[0];
        }

        v81 = *(v0 + 704);
        v82 = *(v0 + 688);
        *(v8 + 16) = v80 + 1;
        (*(v74 + 32))(v8 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v80, v81, v82);
        if (v286 == ++v9)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    goto LABEL_127;
  }

LABEL_37:
  *(v0 + 1040) = v8;
  v118 = *(v0 + 512);

  v119 = sub_1000DA350();
  v120 = sub_1000DBDD0();

  if (os_log_type_enabled(v119, v120))
  {
    v121 = *(v0 + 688);
    v122 = swift_slowAlloc();
    v296[0] = swift_slowAlloc();
    *v122 = 136315394;
    v123 = sub_1000DBB40();
    v125 = sub_1000848C8(v123, v124, v296);

    *(v122 + 4) = v125;
    *(v122 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v126 = sub_1000848C8(*(v0 + 392), *(v0 + 400), v296);

    *(v122 + 14) = v126;
    _os_log_impl(&_mh_execute_header, v119, v120, "Fetching headlines for stocks, stocks=%s, id=%s", v122, 0x16u);
    swift_arrayDestroy();
  }

  v127 = *(v0 + 936);
  v128 = *(v0 + 928);
  v129 = *(v0 + 912);
  v130 = *(v0 + 904);
  v131 = *(v0 + 856);
  v132 = *(v0 + 824);
  v133 = *(v0 + 496);
  sub_1000DB7B0();
  v134 = sub_100094318(v131);
  v128(v131, v132);
  v135 = *sub_100006C7C((v0 + 16), *(v0 + 40));
  v136 = swift_task_alloc();
  *(v0 + 1048) = v136;
  *v136 = v0;
  v136[1] = sub_10008F9CC;

  return sub_100009810(v8, v134);
}

uint64_t sub_10008F5F0()
{
  v55 = v0;
  v1 = *(v0 + 976);
  v2 = *(v0 + 512);
  swift_errorRetain();
  v3 = sub_1000DA350();
  v4 = sub_1000DBDB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 976);
    v6 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v6 = 136315394;
    swift_getErrorValue();
    v8 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 200);
    v10 = sub_1000DC3B0();
    v12 = sub_1000848C8(v10, v11, &v54);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v13 = sub_1000848C8(*(v0 + 328), *(v0 + 336), &v54);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to create timeline entry, error=%s, id=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v0 + 976);
  v50 = *(v0 + 928);
  v52 = *(v0 + 936);
  v15 = *(v0 + 1073);
  v16 = *(v0 + 856);
  v17 = *(v0 + 824);
  v18 = *(v0 + 496);
  v19 = *(v0 + 480);
  sub_1000DB7B0();
  sub_1000323F4(0);
  v21 = v20[12];
  v22 = v20[16];
  v23 = v20[20];
  v24 = v20[24];
  sub_1000D9050();
  sub_10003F734(v16, v15, (v19 + v21));

  v50(v16, v17);
  *(v19 + v22) = 0;
  *(v19 + v23) = 1;
  *(v19 + v24) = 1;
  type metadata accessor for OverviewTimelineEntry();
  swift_storeEnumTagMultiPayload();
  v25 = *(v0 + 856);
  v26 = *(v0 + 848);
  v27 = *(v0 + 840);
  v28 = *(v0 + 816);
  v29 = *(v0 + 808);
  v30 = *(v0 + 800);
  v31 = *(v0 + 776);
  v32 = *(v0 + 768);
  v33 = *(v0 + 744);
  v36 = *(v0 + 736);
  v37 = *(v0 + 728);
  v38 = *(v0 + 720);
  v39 = *(v0 + 712);
  v40 = *(v0 + 704);
  v41 = *(v0 + 680);
  v42 = *(v0 + 672);
  v43 = *(v0 + 648);
  v44 = *(v0 + 624);
  v45 = *(v0 + 600);
  v46 = *(v0 + 584);
  v47 = *(v0 + 576);
  v48 = *(v0 + 568);
  v49 = *(v0 + 560);
  v51 = *(v0 + 552);
  v53 = *(v0 + 536);
  sub_100006D0C((v0 + 16));
  sub_100006D0C((v0 + 56));

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_10008F9CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1048);
  v6 = *v2;
  v4[132] = v1;

  v7 = v4[130];

  if (v1)
  {
    v8 = sub_100090F58;
  }

  else
  {
    v4[133] = a1;
    v8 = sub_10008FB10;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10008FB10()
{
  v199 = v0;
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  *(v0 + 472) = *(v0 + 1064);
  sub_1000236D0(0);
  sub_10009533C(&qword_1001152D0, sub_1000236D0);
  sub_1000DA240();
  sub_100095384(v3, v2);
  v194 = *(v0 + 1056);
  v4 = *(v0 + 936);
  v5 = *(v0 + 928);
  v6 = *(v0 + 848);
  v7 = *(v0 + 832);
  v8 = *(v0 + 824);
  v9 = *(v0 + 496);
  sub_1000DB7B0();
  LODWORD(v9) = (*(v7 + 88))(v6, v8);
  LODWORD(v7) = enum case for WidgetFamily.systemLarge(_:);
  (v5)(v6, v8);
  LODWORD(v190) = v7;
  if (v9 == v7)
  {
    v10 = *(v0 + 736);
    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    v1 = v11 + 48;
    v13 = *(v11 + 48);
    if (!v13(v10, 1, v12))
    {
      v185 = v13;
      v14 = *(v0 + 648);
      v15 = *(v0 + 624);
      v16 = *(v0 + 616);
      v178 = *(v11 + 16);
      v178(v14, v10, v12);
      sub_10009533C(&qword_100118D38, sub_100023694);
      sub_1000DBA40();
      v17 = *(v0 + 360);
      v18 = *(v17 + 16);
      do
      {
        v19 = *(v0 + 368);
        if (v19 == v18)
        {

          goto LABEL_13;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_98;
        }

        if (v19 >= *(v17 + 16))
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v5 = *(v0 + 624);
        v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        sub_100094CEC(v17 + v20 + *(v16 + 72) * v19, v5, type metadata accessor for HeadlineViewModel);
        *(v0 + 368) = v19 + 1;
        v21 = *(v15 + 104);
        v14 = *(v15 + 112);
        sub_100024A30(v21);
        sub_10009544C(v5, type metadata accessor for HeadlineViewModel);
      }

      while (v21 == 1);
      v22 = *(v0 + 736);
      v23 = *(v0 + 632);
      sub_100010190(v21);

      if (v185(v22, 1, v23))
      {
        v24 = 0;
        v25 = _swiftEmptyArrayStorage;
        v26 = _swiftEmptyArrayStorage + v20;
        v27 = 1;
      }

      else
      {
        v178(*(v0 + 648), *(v0 + 736), *(v0 + 632));
        v25 = sub_1000183CC(3);
      }

      v28 = *(v0 + 736);
      v29 = *(v0 + 720);
      v30 = *(v0 + 608);
      *(v0 + 96) = v25;
      *(v0 + 104) = v26;
      *(v0 + 112) = v24;
      *(v0 + 120) = v27;
      sub_100095308(0);
      sub_10009533C(qword_100118D48, sub_100095308);
      sub_1000DA230();
      sub_100095384(v29, v28);
    }
  }

LABEL_13:
  v31 = *(v0 + 712);
  v32 = *(v0 + 640);
  v19 = *(v0 + 632);
  sub_100094CEC(*(v0 + 736), v31, sub_100023660);
  v33 = *(v32 + 48);
  LODWORD(v19) = v33(v31, 1, v19);
  sub_10009544C(v31, sub_100023660);
  if (v19 == 1)
  {
    v34 = *(v0 + 1000);
    v35 = *(v0 + 920);
    (*(v0 + 992))(*(v0 + 768), *(v0 + 776), *(v0 + 752));
    v39 = sub_100018398(v35);
    if ((v38 & 1) == 0)
    {
LABEL_15:
      sub_100024138(v39, v36, v37, v38);
      v41 = v40;
      goto LABEL_25;
    }

    v1 = v38;
    v46 = v37;
    v47 = v36;
    sub_1000DC380();
    swift_unknownObjectRetain_n();
    v48 = swift_dynamicCastClass();
    if (!v48)
    {
      swift_unknownObjectRelease();
      v48 = _swiftEmptyArrayStorage;
    }

    v49 = v48[2];

    if (!__OFSUB__(v1 >> 1, v46))
    {
      if (v49 == (v1 >> 1) - v46)
      {
        v41 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v41)
        {
LABEL_26:
          v50 = *(v0 + 776);
          v51 = *(v0 + 752);
          *(v0 + 440) = v41;
          goto LABEL_35;
        }

        v41 = _swiftEmptyArrayStorage;
LABEL_25:
        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      goto LABEL_103;
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    swift_unknownObjectRelease();
    v38 = v1;
    v37 = v46;
    v36 = v47;
    goto LABEL_15;
  }

  v39 = *(v0 + 1032);
  v42 = *(v0 + 1008);
  if ((v39 & 1) == 0)
  {
    v43 = *(v0 + 1008);
    swift_unknownObjectRetain();
LABEL_18:
    sub_100024138(v42, *(v0 + 1016), *(v0 + 1024), v39);
    v45 = v44;
LABEL_33:
    v56 = *(v0 + 1008);
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  sub_1000DC380();
  swift_unknownObjectRetain_n();
  v52 = swift_dynamicCastClass();
  if (!v52)
  {
    swift_unknownObjectRelease();
    v39 = *(v0 + 1032);
    v52 = _swiftEmptyArrayStorage;
  }

  v47 = *(v0 + 1024);
  v46 = v52[2];

  v53 = (v39 >> 1) - v47;
  if (__OFSUB__(v39 >> 1, v47))
  {
    goto LABEL_102;
  }

  v54 = *(v0 + 1008);
  if (v46 != v53)
  {
    v152 = *(v0 + 1008);
    swift_unknownObjectRelease();
    v39 = *(v0 + 1032);
    v42 = *(v0 + 1008);
    goto LABEL_18;
  }

  v55 = *(v0 + 1008);
  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v45)
  {
    v45 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

LABEL_34:
  v57 = *(v0 + 776);
  v58 = *(v0 + 752);
  *(v0 + 456) = v45;
LABEL_35:
  sub_1000DA1C0();
  v59 = *(v0 + 512);
  v14 = sub_1000DA350();
  LOBYTE(v5) = sub_1000DBDD0();
  if (os_log_type_enabled(v14, v5))
  {
    v60 = *(v0 + 736);
    v61 = *(v0 + 632);
    v15 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v198[0] = v1;
    *v15 = 134218498;
    swift_beginAccess();
    v62 = v33(v60, 1, v61);
    v63 = 0;
    if (!v62)
    {
      v64 = *(v0 + 648);
      v65 = *(v0 + 640);
      v66 = *(v0 + 632);
      (*(v65 + 16))(v64, *(v0 + 736), v66);
      v63 = sub_1000DA1E0();
      (*(v65 + 8))(v64, v66);
    }

    v67 = *(v0 + 776);
    v68 = *(v0 + 752);
    *(v15 + 4) = v63;
    *(v15 + 12) = 2048;
    swift_beginAccess();
    *(v15 + 14) = sub_1000DA1E0();
    *(v15 + 22) = 2080;
    if (qword_1001140B8 != -1)
    {
LABEL_100:
      swift_once();
    }

    sub_1000DC4C0();
    v69 = sub_1000848C8(*(v0 + 344), *(v0 + 352), v198);

    *(v15 + 24) = v69;
    _os_log_impl(&_mh_execute_header, v14, v5, "Fetched %ld headlines for %ld stocks, id=%s", v15, 0x20u);
    sub_100006D0C(v1);
  }

  if (*(v0 + 1072) == 1)
  {
    v70 = *(v0 + 800);
    v72 = *v70;
    v71 = v70[1];
  }

  else
  {
    v72 = 0;
    v71 = 0;
  }

  v73 = *(v0 + 840);
  v74 = *(v0 + 832);
  v75 = *(v0 + 824);
  v76 = *(v0 + 496);
  sub_1000DB7B0();
  v77 = (*(v74 + 88))(v73, v75);
  if (v77 == enum case for WidgetFamily.systemSmall(_:))
  {
    v78 = *(v0 + 960);
    v79 = *(v0 + 1073);

    v186 = 3;
    if (v19 == 1)
    {
      v80 = v79;
    }

    else
    {
      v80 = 3;
    }

LABEL_47:
    v191 = 1;
    goto LABEL_48;
  }

  if (v77 != enum case for WidgetFamily.systemMedium(_:))
  {
    if (v77 == v190)
    {
      v123 = *(v0 + 960);

      v179 = v72;
      v182 = v71;
      if (v19 == 1)
      {
        if (*(v0 + 1073))
        {
          v124 = 2;
        }

        else
        {
          v124 = 1;
        }

        v191 = v124;
        if (*(v0 + 1073))
        {
          v80 = 1;
        }

        else
        {
          v80 = 2;
        }

        v186 = 6;
      }

      else
      {
        v80 = 3;
        v191 = 2;
        v186 = 3;
      }

      goto LABEL_49;
    }

    if (v77 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      v147 = *(v0 + 936);
      v148 = *(v0 + 928);
      v149 = *(v0 + 856);
      v150 = *(v0 + 824);
      v151 = *(v0 + 496);
      v198[0] = 0;
      v198[1] = 0xE000000000000000;
      sub_1000DBF50(52);
      v201._object = 0x80000001000E9390;
      v201._countAndFlagsBits = 0xD000000000000030;
      sub_1000DBA00(v201);
      sub_1000DB7B0();
      sub_10009533C(&qword_100115310, &type metadata accessor for WidgetFamily);
      v202._countAndFlagsBits = sub_1000DC320();
      sub_1000DBA00(v202);

      v148(v149, v150);
      v203._countAndFlagsBits = 11815;
      v203._object = 0xE200000000000000;
      sub_1000DBA00(v203);
      return sub_1000DC0D0();
    }

    v146 = *(v0 + 960);

    v186 = *(v0 + 920);
    v80 = 3;
    goto LABEL_47;
  }

  v117 = *(v0 + 960);
  v118 = *(v0 + 1073);
  v119 = *(v0 + 1072);

  v120 = v118 == 0;
  v121 = 1;
  if (v118)
  {
    v80 = 1;
  }

  else
  {
    v80 = 2;
  }

  if (!v120)
  {
    v121 = 2;
  }

  v122 = 2;
  if (((v19 == 1) & v119) == 0)
  {
    v122 = 3;
  }

  v186 = v122;
  if (v19 == 1)
  {
    v191 = v121;
    v179 = v72;
    v182 = v71;
    goto LABEL_49;
  }

  v191 = 2;
  v80 = 3;
LABEL_48:

  v179 = 0;
  v182 = 0;
LABEL_49:
  v175 = *(v0 + 1073);
  v81 = *(v0 + 800);
  v82 = *(v0 + 784);
  v83 = *(v0 + 776);
  v15 = *(v0 + 752);
  v5 = *(v0 + 736);
  v84 = *(v0 + 600);
  v85 = *(v0 + 592);
  v169 = v80;
  v172 = *(v0 + 512);
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v1 + 16) = v80;
  v86 = v85[5];
  type metadata accessor for TickerCellViewModel(0);
  sub_1000DA1D0();

  v87 = *(v82 + 24);
  v88 = v85[7];
  v89 = sub_1000D9690();
  (*(*(v89 - 8) + 16))(&v84[v88], v81 + v87, v89);
  swift_beginAccess();
  sub_100094CEC(v5, &v84[v85[11]], sub_100023660);
  *v84 = v179;
  *(v84 + 1) = v182;
  v84[v85[6]] = v169;
  *&v84[v85[8]] = v186;
  *&v84[v85[9]] = v191;
  v84[v85[10]] = v175;
  v90 = sub_1000DA350();
  v14 = sub_1000DBDD0();
  if (os_log_type_enabled(v90, v14))
  {
    v91 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v198[0] = v5;
    *v91 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v15 = sub_1000848C8(*(v0 + 280), *(v0 + 288), v198);

    *(v91 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v90, v14, "Successfully created timeline entry, id=%s", v91, 0xCu);
    sub_100006D0C(v5);
  }

  v92 = *(v0 + 984);
  v93 = *(v0 + 600);
  v94 = *(v0 + 480);
  sub_1000323F4(0);
  v153 = v95;
  v19 = v95[12];
  sub_1000D9050();
  sub_100094CEC(v93, v19 + v94, type metadata accessor for WatchlistOverviewContentViewModel);
  v190 = *(v92 + 16);
  if (v190)
  {
    v96 = 0;
    v187 = *(v0 + 672);
    v180 = *(v0 + 544);
    v183 = *(v0 + 664);
    v97 = *(v0 + 528);
    v176 = *(*(v0 + 656) + 20);
    v173 = *(v0 + 984) + ((*(v183 + 80) + 32) & ~*(v183 + 80));
    v170 = (v97 + 56);
    v167 = enum case for ExchangeStatus.open(_:);
    v165 = (v97 + 104);
    v195 = (v97 + 48);
    v155 = (v97 + 32);
    v157 = v92;
    v163 = (v97 + 8);
    while (1)
    {
      if (v96 >= *(v92 + 16))
      {
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v98 = *(v0 + 560);
      sub_100094CEC(v173 + *(v183 + 72) * v96, *(v0 + 672), type metadata accessor for WidgetStock);
      sub_100094CEC(v187 + v176, v98, sub_100023704);
      v99 = sub_1000D9450();
      v100 = *(v99 - 8);
      if ((*(v100 + 48))(v98, 1, v99) == 1)
      {
        sub_10009544C(*(v0 + 560), sub_100023704);
        v101 = 1;
      }

      else
      {
        v102 = *(v0 + 584);
        v103 = *(v0 + 560);
        sub_1000D93F0();
        (*(v100 + 8))(v103, v99);
        v101 = 0;
      }

      v104 = *(v0 + 584);
      v105 = *(v0 + 576);
      v106 = *(v0 + 552);
      v107 = *(v0 + 520);
      v108 = *v170;
      (*v170)(v104, v101, 1, v107);
      (*v165)(v105, v167, v107);
      v108(v105, 0, 1, v107);
      v109 = *(v180 + 48);
      sub_100094CEC(v104, v106, sub_100094F44);
      sub_100094CEC(v105, v106 + v109, sub_100094F44);
      v19 = *v195;
      if ((*v195)(v106, 1, v107) == 1)
      {
        break;
      }

      v110 = *(v0 + 520);
      sub_100094CEC(*(v0 + 552), *(v0 + 568), sub_100094F44);
      v111 = (v19)(v106 + v109, 1, v110);
      v15 = *(v0 + 672);
      v1 = *(v0 + 584);
      v14 = *(v0 + 576);
      v5 = *(v0 + 568);
      if (v111 == 1)
      {
        v112 = *(v0 + 520);
        v19 = sub_100094F44;
        sub_10009544C(*(v0 + 576), sub_100094F44);
        sub_10009544C(v1, sub_100094F44);
        sub_10009544C(v15, type metadata accessor for WidgetStock);
        (*v163)(v5, v112);
LABEL_56:
        sub_10009544C(*(v0 + 552), sub_100059E4C);
        goto LABEL_57;
      }

      v161 = *(v0 + 552);
      v113 = *(v0 + 536);
      v114 = *(v0 + 520);
      (*v155)(v113, v106 + v109, v114);
      sub_10009533C(&qword_100117188, &type metadata accessor for ExchangeStatus);
      v159 = sub_1000DB8D0();
      v115 = *v163;
      (*v163)(v113, v114);
      v19 = sub_100094F44;
      sub_10009544C(v14, sub_100094F44);
      sub_10009544C(v1, sub_100094F44);
      sub_10009544C(v15, type metadata accessor for WidgetStock);
      v116 = v114;
      v92 = v157;
      v115(v5, v116);
      sub_10009544C(v161, sub_100094F44);
      if (v159)
      {
        goto LABEL_88;
      }

LABEL_57:
      if (v190 == ++v96)
      {
        goto LABEL_67;
      }
    }

    v14 = *(v0 + 672);
    v5 = *(v0 + 584);
    v15 = *(v0 + 520);
    v1 = sub_100094F44;
    sub_10009544C(*(v0 + 576), sub_100094F44);
    sub_10009544C(v5, sub_100094F44);
    sub_10009544C(v14, type metadata accessor for WidgetStock);
    if ((v19)(v106 + v109, 1, v15) == 1)
    {
      sub_10009544C(*(v0 + 552), sub_100094F44);
LABEL_88:
      v188 = 1;
      goto LABEL_89;
    }

    goto LABEL_56;
  }

LABEL_67:
  v188 = 0;
LABEL_89:
  v125 = *(v0 + 1008);
  v126 = *(v0 + 816);
  v127 = *(v0 + 800);
  v128 = *(v0 + 760);
  v192 = *(v0 + 752);
  v196 = *(v0 + 776);
  v129 = *(v0 + 736);
  v130 = *(v0 + 600);
  v131 = *(v0 + 480);
  swift_unknownObjectRelease();
  v132 = v153[16];
  v133 = v153[20];
  v134 = v153[24];
  sub_10009544C(v130, type metadata accessor for WatchlistOverviewContentViewModel);
  sub_10009544C(v126, sub_100094FAC);
  sub_10009544C(v127, type metadata accessor for WidgetWatchlist);
  *(v131 + v132) = v188;
  *(v131 + v133) = 0;
  *(v131 + v134) = 0;
  type metadata accessor for OverviewTimelineEntry();
  swift_storeEnumTagMultiPayload();
  sub_10009544C(v129, sub_100023660);
  (*(v128 + 8))(v196, v192);
  v135 = *(v0 + 856);
  v136 = *(v0 + 848);
  v137 = *(v0 + 840);
  v138 = *(v0 + 816);
  v139 = *(v0 + 808);
  v140 = *(v0 + 800);
  v141 = *(v0 + 776);
  v142 = *(v0 + 768);
  v143 = *(v0 + 744);
  v154 = *(v0 + 736);
  v156 = *(v0 + 728);
  v158 = *(v0 + 720);
  v160 = *(v0 + 712);
  v162 = *(v0 + 704);
  v164 = *(v0 + 680);
  v166 = *(v0 + 672);
  v168 = *(v0 + 648);
  v171 = *(v0 + 624);
  v174 = *(v0 + 600);
  v177 = *(v0 + 584);
  v181 = *(v0 + 576);
  v184 = *(v0 + 568);
  v189 = *(v0 + 560);
  v193 = *(v0 + 552);
  v197 = *(v0 + 536);
  sub_100006D0C((v0 + 16));
  sub_100006D0C((v0 + 56));

  v144 = *(v0 + 8);

  return v144();
}

uint64_t sub_100090F58()
{
  v210 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 512);
  swift_errorRetain();
  v3 = sub_1000DA350();
  LOBYTE(v4) = sub_1000DBDD0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1056);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v209[0] = v9;
    *v7 = 138412546;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
LABEL_105:
      swift_once();
    }

    v11 = *(v0 + 1056);
    sub_1000DC4C0();
    v12 = sub_1000848C8(*(v0 + 376), *(v0 + 384), v209);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching headlines failed with error=%@, id=%s", v7, 0x16u);
    sub_10009544C(v8, sub_1000249FC);

    sub_100006D0C(v9);
  }

  else
  {
  }

  v13 = *(v0 + 936);
  v14 = *(v0 + 928);
  v15 = *(v0 + 848);
  v16 = *(v0 + 832);
  v17 = *(v0 + 824);
  v18 = *(v0 + 496);
  sub_1000DB7B0();
  LODWORD(v18) = (*(v16 + 88))(v15, v17);
  v8 = enum case for WidgetFamily.systemLarge(_:);
  v14(v15, v17);
  v204 = v8;
  if (v18 == v8)
  {
    v19 = *(v0 + 736);
    v4 = *(v0 + 640);
    v20 = *(v0 + 632);
    v21 = *(v4 + 48);
    if (!v21(v19, 1, v20))
    {
      v199 = v21;
      v7 = *(v0 + 648);
      v9 = *(v0 + 624);
      v22 = *(v0 + 616);
      v23 = *(v4 + 16);
      LOBYTE(v4) = v4 + 16;
      v191 = v23;
      v23(v7, v19, v20);
      sub_10009533C(&qword_100118D38, sub_100023694);
      sub_1000DBA40();
      v24 = *(v0 + 360);
      v8 = *(v24 + 16);
      do
      {
        v3 = *(v0 + 368);
        if (v3 == v8)
        {

          goto LABEL_17;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_103;
        }

        if (v3 >= *(v24 + 16))
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v4 = *(v0 + 624);
        v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        sub_100094CEC(v24 + v25 + *(v22 + 72) * v3, v4, type metadata accessor for HeadlineViewModel);
        *(v0 + 368) = v3 + 1;
        v26 = v9[13];
        v7 = *(v9 + 112);
        sub_100024A30(v26);
        sub_10009544C(v4, type metadata accessor for HeadlineViewModel);
      }

      while (v26 == 1);
      v27 = *(v0 + 736);
      v28 = *(v0 + 632);
      sub_100010190(v26);

      if (v199(v27, 1, v28))
      {
        v29 = 0;
        v30 = _swiftEmptyArrayStorage;
        v31 = _swiftEmptyArrayStorage + v25;
        v32 = 1;
      }

      else
      {
        v191(*(v0 + 648), *(v0 + 736), *(v0 + 632));
        v30 = sub_1000183CC(3);
      }

      v33 = *(v0 + 736);
      v34 = *(v0 + 720);
      v35 = *(v0 + 608);
      *(v0 + 96) = v30;
      *(v0 + 104) = v31;
      *(v0 + 112) = v29;
      *(v0 + 120) = v32;
      sub_100095308(0);
      sub_10009533C(qword_100118D48, sub_100095308);
      sub_1000DA230();
      sub_100095384(v34, v33);
    }
  }

LABEL_17:
  v36 = *(v0 + 712);
  v37 = *(v0 + 640);
  v38 = *(v0 + 632);
  sub_100094CEC(*(v0 + 736), v36, sub_100023660);
  v39 = *(v37 + 48);
  v40 = v39(v36, 1, v38);
  sub_10009544C(v36, sub_100023660);
  if (v40 == 1)
  {
    v41 = *(v0 + 1000);
    v42 = *(v0 + 920);
    (*(v0 + 992))(*(v0 + 768), *(v0 + 776), *(v0 + 752));
    v46 = sub_100018398(v42);
    if ((v45 & 1) == 0)
    {
LABEL_19:
      sub_100024138(v46, v43, v44, v45);
      v48 = v47;
      goto LABEL_29;
    }

    v8 = v45;
    v53 = v44;
    v54 = v43;
    sub_1000DC380();
    swift_unknownObjectRetain_n();
    v55 = swift_dynamicCastClass();
    if (!v55)
    {
      swift_unknownObjectRelease();
      v55 = _swiftEmptyArrayStorage;
    }

    v56 = v55[2];

    if (!__OFSUB__(v8 >> 1, v53))
    {
      if (v56 == (v8 >> 1) - v53)
      {
        v48 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v48)
        {
LABEL_30:
          v57 = *(v0 + 776);
          v58 = *(v0 + 752);
          *(v0 + 440) = v48;
          goto LABEL_39;
        }

        v48 = _swiftEmptyArrayStorage;
LABEL_29:
        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_unknownObjectRelease();
    v45 = v8;
    v44 = v53;
    v43 = v54;
    goto LABEL_19;
  }

  v46 = *(v0 + 1032);
  v49 = *(v0 + 1008);
  if ((v46 & 1) == 0)
  {
    v50 = *(v0 + 1008);
    swift_unknownObjectRetain();
LABEL_22:
    sub_100024138(v49, *(v0 + 1016), *(v0 + 1024), v46);
    v52 = v51;
LABEL_37:
    v63 = *(v0 + 1008);
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  sub_1000DC380();
  swift_unknownObjectRetain_n();
  v59 = swift_dynamicCastClass();
  if (!v59)
  {
    swift_unknownObjectRelease();
    v46 = *(v0 + 1032);
    v59 = _swiftEmptyArrayStorage;
  }

  v54 = *(v0 + 1024);
  v53 = v59[2];

  v60 = (v46 >> 1) - v54;
  if (__OFSUB__(v46 >> 1, v54))
  {
    goto LABEL_107;
  }

  v61 = *(v0 + 1008);
  if (v53 != v60)
  {
    v163 = *(v0 + 1008);
    swift_unknownObjectRelease();
    v46 = *(v0 + 1032);
    v49 = *(v0 + 1008);
    goto LABEL_22;
  }

  v62 = *(v0 + 1008);
  v52 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v52)
  {
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

LABEL_38:
  v64 = *(v0 + 776);
  v65 = *(v0 + 752);
  *(v0 + 456) = v52;
LABEL_39:
  sub_1000DA1C0();
  v66 = *(v0 + 512);
  v67 = sub_1000DA350();
  v68 = sub_1000DBDD0();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = *(v0 + 736);
    v70 = *(v0 + 632);
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v209[0] = v72;
    *v71 = 134218498;
    swift_beginAccess();
    v73 = v39(v69, 1, v70);
    v74 = 0;
    if (!v73)
    {
      v75 = *(v0 + 648);
      v76 = *(v0 + 640);
      v77 = *(v0 + 632);
      (*(v76 + 16))(v75, *(v0 + 736), v77);
      v74 = sub_1000DA1E0();
      (*(v76 + 8))(v75, v77);
    }

    v78 = *(v0 + 776);
    v79 = *(v0 + 752);
    *(v71 + 4) = v74;
    *(v71 + 12) = 2048;
    swift_beginAccess();
    *(v71 + 14) = sub_1000DA1E0();
    *(v71 + 22) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v80 = sub_1000848C8(*(v0 + 344), *(v0 + 352), v209);

    *(v71 + 24) = v80;
    _os_log_impl(&_mh_execute_header, v67, v68, "Fetched %ld headlines for %ld stocks, id=%s", v71, 0x20u);
    sub_100006D0C(v72);
  }

  if (*(v0 + 1072) == 1)
  {
    v81 = *(v0 + 800);
    v83 = *v81;
    v82 = v81[1];
  }

  else
  {
    v83 = 0;
    v82 = 0;
  }

  v84 = *(v0 + 840);
  v85 = *(v0 + 832);
  v86 = *(v0 + 824);
  v87 = *(v0 + 496);
  sub_1000DB7B0();
  v88 = (*(v85 + 88))(v84, v86);
  if (v88 == enum case for WidgetFamily.systemSmall(_:))
  {
    v89 = *(v0 + 960);
    v90 = *(v0 + 1073);

    v200 = 3;
    if (v40 == 1)
    {
      v91 = v90;
    }

    else
    {
      v91 = 3;
    }

LABEL_52:
    v205 = 1;
    goto LABEL_53;
  }

  if (v88 != enum case for WidgetFamily.systemMedium(_:))
  {
    if (v88 == v204)
    {
      v134 = *(v0 + 960);

      v192 = v83;
      v195 = v82;
      if (v40 == 1)
      {
        if (*(v0 + 1073))
        {
          v135 = 2;
        }

        else
        {
          v135 = 1;
        }

        if (*(v0 + 1073))
        {
          v91 = 1;
        }

        else
        {
          v91 = 2;
        }

        v200 = 6;
        v205 = v135;
      }

      else
      {
        v91 = 3;
        v205 = 2;
        v200 = 3;
      }

      goto LABEL_54;
    }

    if (v88 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      v158 = *(v0 + 936);
      v159 = *(v0 + 928);
      v160 = *(v0 + 856);
      v161 = *(v0 + 824);
      v162 = *(v0 + 496);
      v209[0] = 0;
      v209[1] = 0xE000000000000000;
      sub_1000DBF50(52);
      v212._object = 0x80000001000E9390;
      v212._countAndFlagsBits = 0xD000000000000030;
      sub_1000DBA00(v212);
      sub_1000DB7B0();
      sub_10009533C(&qword_100115310, &type metadata accessor for WidgetFamily);
      v213._countAndFlagsBits = sub_1000DC320();
      sub_1000DBA00(v213);

      v159(v160, v161);
      v214._countAndFlagsBits = 11815;
      v214._object = 0xE200000000000000;
      sub_1000DBA00(v214);
      return sub_1000DC0D0();
    }

    v157 = *(v0 + 960);

    v200 = *(v0 + 920);
    v91 = 3;
    goto LABEL_52;
  }

  v128 = *(v0 + 960);
  v129 = *(v0 + 1073);
  v130 = *(v0 + 1072);

  v131 = 1;
  if (v129)
  {
    v132 = 1;
  }

  else
  {
    v132 = 2;
  }

  if (v129)
  {
    v131 = 2;
  }

  v133 = 2;
  if (((v40 == 1) & v130) == 0)
  {
    v133 = 3;
  }

  v200 = v133;
  if (v40 == 1)
  {
    v205 = v131;
    v192 = v83;
    v195 = v82;
    v91 = v132;
    goto LABEL_54;
  }

  v205 = 2;
  v91 = 3;
LABEL_53:

  v192 = 0;
  v195 = 0;
LABEL_54:
  v188 = *(v0 + 1073);
  v92 = *(v0 + 800);
  v93 = *(v0 + 784);
  v94 = *(v0 + 776);
  v95 = *(v0 + 752);
  v9 = *(v0 + 736);
  v96 = *(v0 + 600);
  v4 = *(v0 + 592);
  v182 = v91;
  v185 = *(v0 + 512);
  swift_beginAccess();
  v8 = swift_task_alloc();
  *(v8 + 16) = v91;
  v97 = *(v4 + 20);
  type metadata accessor for TickerCellViewModel(0);
  sub_1000DA1D0();

  v98 = *(v93 + 24);
  v99 = *(v4 + 28);
  v100 = sub_1000D9690();
  (*(*(v100 - 8) + 16))(&v96[v99], v92 + v98, v100);
  swift_beginAccess();
  sub_100094CEC(v9, &v96[*(v4 + 44)], sub_100023660);
  *v96 = v192;
  *(v96 + 1) = v195;
  v96[*(v4 + 24)] = v182;
  *&v96[*(v4 + 32)] = v200;
  *&v96[*(v4 + 36)] = v205;
  v96[*(v4 + 40)] = v188;
  v101 = sub_1000DA350();
  LOBYTE(v4) = sub_1000DBDD0();
  if (os_log_type_enabled(v101, v4))
  {
    v102 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v209[0] = v9;
    *v102 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v8 = sub_1000848C8(*(v0 + 280), *(v0 + 288), v209);

    *(v102 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v101, v4, "Successfully created timeline entry, id=%s", v102, 0xCu);
    sub_100006D0C(v9);
  }

  v103 = *(v0 + 984);
  v104 = *(v0 + 600);
  v105 = *(v0 + 480);
  sub_1000323F4(0);
  v164 = v106;
  v3 = v106[12];
  sub_1000D9050();
  sub_100094CEC(v104, v105 + v3, type metadata accessor for WatchlistOverviewContentViewModel);
  v201 = *(v103 + 16);
  if (v201)
  {
    v7 = 0;
    v196 = *(v0 + 672);
    v189 = *(v0 + 544);
    v193 = *(v0 + 664);
    v107 = *(v0 + 528);
    v186 = *(*(v0 + 656) + 20);
    v183 = *(v0 + 984) + ((*(v193 + 80) + 32) & ~*(v193 + 80));
    v180 = (v107 + 56);
    v178 = enum case for ExchangeStatus.open(_:);
    v176 = (v107 + 104);
    v206 = (v107 + 48);
    v166 = (v107 + 32);
    v168 = v103;
    v174 = (v107 + 8);
    while (1)
    {
      if (v7 >= *(v103 + 16))
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v108 = *(v0 + 560);
      sub_100094CEC(v183 + *(v193 + 72) * v7, *(v0 + 672), type metadata accessor for WidgetStock);
      sub_100094CEC(v196 + v186, v108, sub_100023704);
      v109 = sub_1000D9450();
      v110 = *(v109 - 8);
      if ((*(v110 + 48))(v108, 1, v109) == 1)
      {
        sub_10009544C(*(v0 + 560), sub_100023704);
        v111 = 1;
      }

      else
      {
        v112 = *(v0 + 584);
        v113 = *(v0 + 560);
        sub_1000D93F0();
        (*(v110 + 8))(v113, v109);
        v111 = 0;
      }

      v114 = *(v0 + 584);
      v115 = *(v0 + 576);
      v116 = *(v0 + 552);
      v117 = *(v0 + 520);
      v118 = *v180;
      (*v180)(v114, v111, 1, v117);
      (*v176)(v115, v178, v117);
      v118(v115, 0, 1, v117);
      v119 = *(v189 + 48);
      sub_100094CEC(v114, v116, sub_100094F44);
      sub_100094CEC(v115, v116 + v119, sub_100094F44);
      v3 = *v206;
      if ((*v206)(v116, 1, v117) == 1)
      {
        break;
      }

      v120 = *(v0 + 520);
      sub_100094CEC(*(v0 + 552), *(v0 + 568), sub_100094F44);
      v121 = (v3)(v116 + v119, 1, v120);
      v8 = *(v0 + 672);
      v122 = *(v0 + 584);
      v4 = *(v0 + 576);
      v9 = *(v0 + 568);
      if (v121 == 1)
      {
        v123 = *(v0 + 520);
        v3 = sub_100094F44;
        sub_10009544C(*(v0 + 576), sub_100094F44);
        sub_10009544C(v122, sub_100094F44);
        sub_10009544C(v8, type metadata accessor for WidgetStock);
        (*v174)(v9, v123);
LABEL_61:
        sub_10009544C(*(v0 + 552), sub_100059E4C);
        goto LABEL_62;
      }

      v172 = *(v0 + 552);
      v124 = *(v0 + 536);
      v125 = *(v0 + 520);
      (*v166)(v124, v116 + v119, v125);
      sub_10009533C(&qword_100117188, &type metadata accessor for ExchangeStatus);
      v170 = sub_1000DB8D0();
      v126 = *v174;
      (*v174)(v124, v125);
      v3 = sub_100094F44;
      sub_10009544C(v4, sub_100094F44);
      sub_10009544C(v122, sub_100094F44);
      sub_10009544C(v8, type metadata accessor for WidgetStock);
      v127 = v125;
      v103 = v168;
      v126(v9, v127);
      sub_10009544C(v172, sub_100094F44);
      if (v170)
      {
        goto LABEL_93;
      }

LABEL_62:
      if (v201 == ++v7)
      {
        goto LABEL_72;
      }
    }

    v4 = *(v0 + 672);
    v9 = *(v0 + 584);
    v8 = *(v0 + 520);
    sub_10009544C(*(v0 + 576), sub_100094F44);
    sub_10009544C(v9, sub_100094F44);
    sub_10009544C(v4, type metadata accessor for WidgetStock);
    if ((v3)(v116 + v119, 1, v8) == 1)
    {
      sub_10009544C(*(v0 + 552), sub_100094F44);
LABEL_93:
      v197 = 1;
      goto LABEL_94;
    }

    goto LABEL_61;
  }

LABEL_72:
  v197 = 0;
LABEL_94:
  v136 = *(v0 + 1008);
  v137 = *(v0 + 816);
  v138 = *(v0 + 800);
  v139 = *(v0 + 760);
  v202 = *(v0 + 752);
  v207 = *(v0 + 776);
  v140 = *(v0 + 736);
  v141 = *(v0 + 600);
  v142 = *(v0 + 480);
  swift_unknownObjectRelease();
  v143 = v164[16];
  v144 = v164[20];
  v145 = v164[24];
  sub_10009544C(v141, type metadata accessor for WatchlistOverviewContentViewModel);
  sub_10009544C(v137, sub_100094FAC);
  sub_10009544C(v138, type metadata accessor for WidgetWatchlist);
  *(v142 + v143) = v197;
  *(v142 + v144) = 0;
  *(v142 + v145) = 0;
  type metadata accessor for OverviewTimelineEntry();
  swift_storeEnumTagMultiPayload();
  sub_10009544C(v140, sub_100023660);
  (*(v139 + 8))(v207, v202);
  v146 = *(v0 + 856);
  v147 = *(v0 + 848);
  v148 = *(v0 + 840);
  v149 = *(v0 + 816);
  v150 = *(v0 + 808);
  v151 = *(v0 + 800);
  v152 = *(v0 + 776);
  v153 = *(v0 + 768);
  v154 = *(v0 + 744);
  v165 = *(v0 + 736);
  v167 = *(v0 + 728);
  v169 = *(v0 + 720);
  v171 = *(v0 + 712);
  v173 = *(v0 + 704);
  v175 = *(v0 + 680);
  v177 = *(v0 + 672);
  v179 = *(v0 + 648);
  v181 = *(v0 + 624);
  v184 = *(v0 + 600);
  v187 = *(v0 + 584);
  v190 = *(v0 + 576);
  v194 = *(v0 + 568);
  v198 = *(v0 + 560);
  v203 = *(v0 + 552);
  v208 = *(v0 + 536);
  sub_100006D0C((v0 + 16));
  sub_100006D0C((v0 + 56));

  v155 = *(v0 + 8);

  return v155();
}

uint64_t sub_1000924B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = *(*(type metadata accessor for OverviewTimelineEntry() - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  v13 = swift_task_alloc();
  v8[5] = v13;
  v14 = type metadata accessor for OverviewTimelineProvider();
  *v13 = v8;
  v13[1] = sub_1000925C8;

  return sub_10008B440(v12, a5, a6, v14);
}

uint64_t sub_1000925C8()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_1000926C4, 0, 0);
}

uint64_t sub_1000926C4()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(v1);
  sub_10009544C(v1, type metadata accessor for OverviewTimelineEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100092754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_1000D95E0();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  v5[17] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v11 = sub_1000D9450();
  v5[19] = v11;
  v12 = *(v11 - 8);
  v5[20] = v12;
  v13 = *(v12 + 64) + 15;
  v5[21] = swift_task_alloc();
  sub_100023660(0);
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v16 = sub_1000D9090();
  v5[23] = v16;
  v17 = *(v16 - 8);
  v5[24] = v17;
  v18 = *(v17 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v19 = sub_1000DB760();
  v5[28] = v19;
  v20 = *(v19 - 8);
  v5[29] = v20;
  v21 = *(v20 + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  sub_100023704(0);
  v23 = *(v22 - 8);
  v5[32] = v23;
  v24 = *(v23 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_100094BE8(0);
  v26 = *(*(v25 - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  sub_100094C1C(0);
  v5[36] = v27;
  v28 = *(v27 - 8);
  v5[37] = v28;
  v29 = *(v28 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v30 = type metadata accessor for OverviewTimelineEntry();
  v5[40] = v30;
  v31 = *(v30 - 8);
  v5[41] = v31;
  v32 = *(v31 + 64) + 15;
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();

  return _swift_task_switch(sub_100092B1C, 0, 0);
}

uint64_t sub_100092B1C()
{
  v1 = v0[13];
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OverviewTimelineProvider::timeline(for:in:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_100092C30;
  v6 = v0[44];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];

  return sub_10008B440(v6, v9, v10, v7);
}

uint64_t sub_100092C30()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return _swift_task_switch(sub_100092D2C, 0, 0);
}

uint64_t sub_100092D2C()
{
  *(v0 + 368) = sub_100002A50(0, &unk_1001168C0);
  sub_1000DBC20();
  *(v0 + 376) = sub_1000DBC10();
  v2 = sub_1000DBBE0();

  return _swift_task_switch(sub_100092DDC, v2, v1);
}

uint64_t sub_100092DDC()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[12];
  v3 = v0[13];

  sub_100093994(v2, (v0 + 2));

  return _swift_task_switch(sub_100092E64, 0, 0);
}

uint64_t sub_100092E64()
{
  v1 = v0[40];
  sub_100094CEC(v0[44], v0[43], type metadata accessor for OverviewTimelineEntry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[43];
  v4 = v0[23];
  v5 = v0[24];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1000323F4(0);
    v7 = *(v3 + *(v6 + 96));
    sub_10009544C(v3 + *(v6 + 48), type metadata accessor for WatchlistOverviewContentViewModel);
    v8 = *(v5 + 8);
    v8(v3, v4);
    if (v7)
    {
      v9 = v0[44];
      v10 = v0[41];
      v12 = v0[25];
      v11 = v0[26];
      v108 = v0[30];
      v111 = v0[23];
      v13 = v0[16];
      v105 = v0[15];
      v114 = v0[14];
      v118 = v0[9];
      v122 = v0[40];
      sub_1000953E8(0, &qword_100118D00, type metadata accessor for OverviewTimelineEntry, &type metadata accessor for _ContiguousArrayStorage);
      v14 = *(v10 + 72);
      v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1000DDD30;
      sub_100094CEC(v9, v16 + v15, type metadata accessor for OverviewTimelineEntry);
      v17 = sub_100006C7C(v0 + 2, v0[5]);
      sub_1000D9050();
      v18 = v8;
      v19 = *(*v17 + 48);
      sub_100006C7C((*v17 + 16), *(*v17 + 40));
      sub_1000D98B0();
      v20 = sub_1000D9540();
      sub_1000D95C0();
      sub_1000D9030();
      static TimelineReloadPolicy.after(_:jitteredUpTo:)(v20);
      v18(v12, v111);
      (*(v105 + 8))(v13, v114);
      v18(v11, v111);
      sub_10009533C(&qword_100118CE8, type metadata accessor for OverviewTimelineEntry);
LABEL_7:
      sub_1000DB810();
LABEL_28:
      v91 = v0[43];
      v92 = v0[42];
      v94 = v0[38];
      v93 = v0[39];
      v96 = v0[34];
      v95 = v0[35];
      v97 = v0[33];
      v98 = v0[31];
      v102 = v0[30];
      v104 = v0[27];
      v107 = v0[26];
      v110 = v0[25];
      v113 = v0[22];
      v117 = v0[21];
      v121 = v0[18];
      v125 = v0[16];
      sub_10009544C(v0[44], type metadata accessor for OverviewTimelineEntry);
      sub_100006D0C(v0 + 2);

      v99 = v0[1];

      return v99();
    }
  }

  else
  {
    sub_1000328C0();
    v22 = v21;
    v23 = *(v3 + *(v21 + 48) + 8);

    v24 = *(v3 + *(v22 + 64) + 8);

    v8 = *(v5 + 8);
    v8(v3, v4);
  }

  v25 = v0[44];
  v26 = v0[36];
  v27 = v0[37];
  v28 = v0[35];
  sub_1000622C0(v28);
  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    v29 = v0[44];
    v30 = v0[40];
    v31 = v0[41];
    v32 = v0[30];
    v33 = v0[9];
    sub_10009544C(v0[35], sub_100094BE8);
    sub_1000953E8(0, &qword_100118D00, type metadata accessor for OverviewTimelineEntry, &type metadata accessor for _ContiguousArrayStorage);
    v34 = *(v31 + 72);
    v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1000DDD30;
    sub_100094CEC(v29, v36 + v35, type metadata accessor for OverviewTimelineEntry);
    sub_1000DB750();
    sub_10009533C(&qword_100118CE8, type metadata accessor for OverviewTimelineEntry);
    goto LABEL_7;
  }

  v37 = v0[38];
  v38 = v0[39];
  v39 = v0[36];
  v40 = v0[37];
  (*(v40 + 32))(v38, v0[35], v39);
  (*(v40 + 16))(v37, v38, v39);
  sub_10009533C(&qword_100118D08, sub_100094C1C);
  result = sub_1000DBA40();
  v42 = v0[7];
  v43 = v0[8];
  v123 = *(v42 + 16);
  v112 = v8;
  if (v43 == v123)
  {
    v44 = _swiftEmptyArrayStorage;
LABEL_10:
    v45 = v0[44];
    v46 = v0[42];
    v47 = v0[40];
    v48 = v0[27];

    v49 = sub_100006C7C(v0 + 2, v0[5]);
    sub_1000D9050();
    sub_100094CEC(v45, v46, type metadata accessor for OverviewTimelineEntry);
    v50 = swift_getEnumCaseMultiPayload();
    v51 = v0[42];
    v52 = v0[22];
    if (v50 == 1)
    {
      v54 = v0[17];
      v53 = v0[18];
      sub_1000323F4(0);
      sub_100094FE0(v51 + *(v55 + 48), v53, type metadata accessor for WatchlistOverviewContentViewModel);
      sub_100094CEC(v53 + *(v54 + 44), v52, sub_100023660);
      sub_10009544C(v53, type metadata accessor for WatchlistOverviewContentViewModel);
    }

    else
    {
      sub_1000328C0();
      v67 = v66;
      v68 = *(v51 + *(v66 + 48) + 8);

      v69 = *(v51 + *(v67 + 64) + 8);

      sub_100023694(0);
      (*(*(v70 - 8) + 56))(v52, 1, 1, v70);
    }

    v71 = v0[22];
    v72 = v0[24] + 8;
    v112(v0[42], v0[23]);
    sub_100023694(0);
    v74 = v73;
    v75 = *(v73 - 8);
    v76 = (*(v75 + 48))(v71, 1, v73);
    v77 = v0[22];
    if (v76 == 1)
    {
      sub_10009544C(v0[22], sub_100023660);
      v78 = 0;
    }

    else
    {
      v79 = v0[22];
      v78 = sub_1000DA1E0();
      (*(v75 + 8))(v77, v74);
    }

    v80 = v49;
    v81 = v0[41];
    v124 = v0[39];
    v116 = v0[37];
    v120 = v0[36];
    v82 = v0[31];
    v100 = v0[30];
    v83 = v0[29];
    v101 = v0[28];
    v103 = v0[44];
    v84 = v0[27];
    v86 = v0[23];
    v85 = v0[24];
    v106 = v0[9];
    v109 = v0[40];
    v87 = *v80;
    sub_1000C884C(v84, v44, v78, v82);

    v112(v84, v86);
    sub_1000953E8(0, &qword_100118D00, type metadata accessor for OverviewTimelineEntry, &type metadata accessor for _ContiguousArrayStorage);
    v88 = *(v81 + 72);
    v89 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1000DDD30;
    sub_100094CEC(v103, v90 + v89, type metadata accessor for OverviewTimelineEntry);
    (*(v83 + 16))(v100, v82, v101);
    sub_10009533C(&qword_100118CE8, type metadata accessor for OverviewTimelineEntry);
    sub_1000DB810();
    (*(v83 + 8))(v82, v101);
    (*(v116 + 8))(v124, v120);
    goto LABEL_28;
  }

  if ((v43 & 0x8000000000000000) == 0)
  {
    v56 = v0[20];
    v119 = v0[32];
    v115 = v42 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    v57 = (v56 + 32);
    v44 = _swiftEmptyArrayStorage;
    while (v43 < *(v42 + 16))
    {
      v59 = v0[33];
      v58 = v0[34];
      v60 = v0[19];
      sub_100094CEC(v115 + *(v119 + 72) * v43, v58, sub_100023704);
      sub_100094FE0(v58, v59, sub_100023704);
      if ((*(v56 + 48))(v59, 1, v60) == 1)
      {
        result = sub_10009544C(v0[33], sub_100023704);
      }

      else
      {
        v61 = *v57;
        (*v57)(v0[21], v0[33], v0[19]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_10007B860(0, *(v44 + 2) + 1, 1, v44);
        }

        v63 = *(v44 + 2);
        v62 = *(v44 + 3);
        if (v63 >= v62 >> 1)
        {
          v44 = sub_10007B860(v62 > 1, v63 + 1, 1, v44);
        }

        v64 = v0[21];
        v65 = v0[19];
        *(v44 + 2) = v63 + 1;
        result = v61(&v44[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v63], v64, v65);
      }

      if (v123 == ++v43)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100093994@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_1000DBE80();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11[-1] - v6;
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(&unk_100128FD8, v11);
  sub_100006C7C(v11, v11[3]);
  sub_1000D9F00();
  v8 = *(a1 - 8);
  result = (*(v8 + 48))(v7, 1, a1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(a2, v7, a1);
    return sub_100006D0C(v11);
  }

  return result;
}

uint64_t sub_100093B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v54 = a4;
  v55 = a8;
  v43 = a6;
  v53 = a3;
  v49 = a1;
  v50 = a2;
  v58 = sub_1000DB7D0();
  v51 = *(v58 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v58);
  v52 = v11;
  v57 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a5 + 16);
  v46 = *(v48 - 8);
  v12 = *(v46 + 64);
  __chkstk_darwin(v13);
  v47 = v14;
  v56 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  sub_1000953E8(0, &qword_1001152A8, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v43 - v21;
  v23 = sub_1000DA350();
  v24 = sub_1000DBDD0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, v43, v25, 2u);
  }

  v26 = sub_1000DBC40();
  v27 = *(*(v26 - 8) + 56);
  v45 = v22;
  v27(v22, 1, 1, v26);
  v28 = v16;
  v29 = *(v16 + 16);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v15;
  v29(v44, v8, v15);
  v31 = v46;
  v32 = v48;
  (*(v46 + 16))(v56, v49, v48);
  v33 = v51;
  (*(v51 + 16))(v57, v50, v58);
  v34 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v35 = (v17 + v34 + *(v31 + 80)) & ~*(v31 + 80);
  v36 = (v47 + *(v33 + 80) + v35) & ~*(v33 + 80);
  v37 = (v52 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  v39 = *(v30 + 24);
  *(v38 + 4) = v32;
  *(v38 + 5) = v39;
  (*(v28 + 32))(&v38[v34], v44, v30);
  (*(v31 + 32))(&v38[v35], v56, v32);
  (*(v33 + 32))(&v38[v36], v57, v58);
  v40 = &v38[v37];
  v41 = v54;
  *v40 = v53;
  *(v40 + 1) = v41;

  sub_100021EF4(0, 0, v45, v55, v38);
}

uint64_t sub_100093F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  sub_100094B54();
  v8[4] = v11;
  v12 = *(v11 - 8);
  v8[5] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v8[6] = v14;
  v15 = swift_task_alloc();
  v8[7] = v15;
  v16 = type metadata accessor for OverviewTimelineProvider();
  *v15 = v8;
  v15[1] = sub_10002272C;

  return sub_100092754(v14, a5, a6, v16);
}

uint64_t sub_10009407C(uint64_t a1, char a2, int a3, unsigned __int8 a4)
{
  v26 = a3;
  v7 = sub_1000DB720();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v12);
  v15 = &v25[-v14];
  v16 = v8[2];
  v16(&v25[-v14], a1, v7, v13);
  v17 = v8[11];
  v18 = v17(v15, v7);
  v19 = enum case for WidgetFamily.systemSmall(_:);
  if (v18 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v18 == enum case for WidgetFamily.systemMedium(_:))
    {
      if (a4 & 1 | ((a2 & 1) == 0))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      goto LABEL_11;
    }

    if (v18 == enum case for WidgetFamily.systemLarge(_:))
    {
      if (a4)
      {
        v20 = 3;
      }

      else
      {
        v20 = 6;
      }

      goto LABEL_11;
    }

    if (v18 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      goto LABEL_24;
    }
  }

  v20 = 3;
LABEL_11:
  (v16)(v11, a1, v7);
  v21 = v17(v11, v7);
  if (v21 == v19)
  {
    goto LABEL_21;
  }

  if (v21 == enum case for WidgetFamily.systemMedium(_:) || v21 == enum case for WidgetFamily.systemLarge(_:))
  {
    v23 = 1;
    if ((v26 | a4))
    {
      v23 = 2;
    }

    return v23 * v20;
  }

  if (v21 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
LABEL_21:
    v23 = 1;
    return v23 * v20;
  }

LABEL_24:
  result = sub_1000DC0D0();
  __break(1u);
  return result;
}

uint64_t sub_100094318(uint64_t a1)
{
  v2 = sub_1000DB720();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == enum case for WidgetFamily.systemSmall(_:) || v8 == enum case for WidgetFamily.systemMedium(_:))
  {
    return 1;
  }

  if (v8 == enum case for WidgetFamily.systemLarge(_:))
  {
    return 4;
  }

  if (v8 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    return 0;
  }

  result = sub_1000DC0D0();
  __break(1u);
  return result;
}

double sub_1000944A8@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WidgetStock();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100094CEC(a1, v9, type metadata accessor for WidgetStock);
  return sub_10007D6E0(v9, a2, a3);
}

uint64_t sub_100094560(uint64_t a1)
{
  v2 = sub_1000D9480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023704(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetStock();
  sub_100094CEC(a1 + *(v11 + 20), v10, sub_100023704);
  v12 = sub_1000D9450();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_10009544C(v10, sub_100023704);
    v14 = 0;
  }

  else
  {
    sub_1000D93F0();
    (*(v13 + 8))(v10, v12);
    v14 = sub_1000D9460();
    (*(v3 + 8))(v6, v2);
  }

  return v14 & 1;
}

uint64_t sub_100094758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001079C;

  return sub_10008B440(a1, a2, a3, a4);
}

uint64_t sub_100094818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001079C;

  return sub_100092754(a1, a2, a3, a4);
}

uint64_t sub_100094954(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v18 = v1[5];
  v5 = *(type metadata accessor for OverviewTimelineProvider() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v8 = *(*(v4 - 8) + 64);
  v9 = *(sub_1000DB7D0() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = (v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10000ECF4;

  return sub_100093F3C(a1, v11, v12, v1 + v6, v1 + v7, v1 + v10, v14, v15);
}

void sub_100094B54()
{
  if (!qword_100118CF0)
  {
    type metadata accessor for OverviewTimelineEntry();
    sub_10009533C(&qword_100118CE8, type metadata accessor for OverviewTimelineEntry);
    v0 = sub_1000DB820();
    if (!v1)
    {
      atomic_store(v0, &qword_100118CF0);
    }
  }
}

void sub_100094C58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10009533C(a4, a5);
    v8 = sub_1000DA220();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100094CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100094D88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001079C;

  return sub_10008BD8C(a1, v6, v7, v8, v9, v10, v4, v5);
}

uint64_t sub_100094E64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000ECF4;

  return sub_10008C070(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_100094FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_100095048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24[0] = a7;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000D9870();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OverviewTimelineProvider.Configuration();
  (*(v15 + 16))(v18, a1 + *(v19 + 44), v14);
  v20 = (*(v15 + 88))(v18, v14);
  if (v20 == enum case for NewsDisplayConfiguration.afterHours(_:))
  {
    (*(v10 + 16))(v13, a3, a5);
    v21 = *(v24[0] + 8);
    v22 = *(sub_1000DBA90() + 16);

    if (v22)
    {
      return vcvts_n_f32_s64(sub_1000DBCE0(), 1uLL) <= v22;
    }
  }

  else
  {
    if (v20 == enum case for NewsDisplayConfiguration.always(_:))
    {
      return 1;
    }

    if (v20 != enum case for NewsDisplayConfiguration.never(_:))
    {
      (*(v15 + 8))(v18, v14);
    }
  }

  return 0;
}

uint64_t sub_10009533C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100095384(uint64_t a1, uint64_t a2)
{
  sub_100023660(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000953E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10009544C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000954AC()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(type metadata accessor for OverviewTimelineProvider() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v2 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_1000DB7D0();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  v13 = sub_1000DA370();
  (*(*(v13 - 8) + 8))(&v0[v4], v13);
  (*(v5 + 8))(&v0[v6], v2);
  (*(v9 + 8))(&v0[v10], v8);
  v14 = *&v0[v11 + 8];

  return swift_deallocObject();
}

uint64_t sub_1000956A4(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v18 = v1[5];
  v5 = *(type metadata accessor for OverviewTimelineProvider() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v8 = *(*(v4 - 8) + 64);
  v9 = *(sub_1000DB7D0() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = (v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10001079C;

  return sub_1000924B8(a1, v11, v12, v1 + v6, v1 + v7, v1 + v10, v14, v15);
}

void sub_1000958AC()
{
  sub_10006207C();
  if (v0 <= 0x3F)
  {
    sub_1000D9870();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100095954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000D9870();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100095A20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000D9870();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_100095AC8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x646C656979;
    v6 = 1635018082;
    if (a1 != 10)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    v8 = 0x6F77547974666966;
    if (a1 != 7)
    {
      v8 = 0x5665676172657661;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1852141679;
    v2 = 0x656D756C6F76;
    if (a1 != 3)
    {
      v2 = 0xD000000000000014;
    }

    v3 = 1751607656;
    if (a1 != 1)
    {
      v3 = 7827308;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100095C40@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = sub_100095AC8(*a1);
  v8 = v7;
  v9 = sub_10009695C(v5);
  v11 = v10;
  result = sub_100095CD8(v5, a2);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v11;
  a3[4] = result;
  a3[5] = v13;
  return result;
}

uint64_t sub_100095CD8(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  sub_100023704(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000D91C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 != 9)
      {
        if (a1 == 10)
        {
          sub_1000D93A0();
          if (v20)
          {
            return 0;
          }
        }

        else
        {
          sub_1000D9370();
          if (v40)
          {
            return 0;
          }
        }

LABEL_38:
        v41 = *(v2 + 32);
        v29.super.super.isa = sub_1000DBC60().super.super.isa;
        v30 = [v41 stringForObjectValue:v29.super.super.isa];
        goto LABEL_39;
      }

      sub_1000D9350();
      if (v27)
      {
        return 0;
      }

      v28 = *(v2 + 40);
      v29.super.super.isa = sub_1000DBC60().super.super.isa;
      v30 = [v28 stringForObjectValue:v29.super.super.isa];
LABEL_39:
      v42 = v30;

      if (v42)
      {
        v43 = sub_1000DB950();

        return v43;
      }

      return 0;
    }

    if (a1 == 6)
    {
      v16 = sub_1000D9360();
      if ((v22 & 1) == 0)
      {
        goto LABEL_30;
      }

      return 0;
    }

    if (a1 == 7)
    {
      v16 = sub_1000D9330();
      if ((v18 & 1) == 0)
      {
        goto LABEL_30;
      }

      return 0;
    }

    v23 = v13;
    v24 = sub_1000D9340();
    result = 0;
    if ((v37 & 1) == 0 && v24 >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (a1 <= 2u)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v16 = sub_1000D9300();
          if ((v17 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v16 = sub_1000D92F0();
          if ((v31 & 1) == 0)
          {
LABEL_30:
            v32 = *&v16;
            v33 = sub_10002999C(0, 5, 1, *&v16);
            [v33 setNumberStyle:1];
            v34 = [objc_allocWithZone(NSNumber) initWithDouble:v32];
            v35 = [v33 stringFromNumber:v34];

            if (v35)
            {
              v36 = sub_1000DB950();

              return v36;
            }
          }
        }
      }

      else
      {
        v16 = sub_1000D9320();
        if ((v21 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      return 0;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        sub_1000D9390();
        if (v19)
        {
          return 0;
        }

        goto LABEL_38;
      }

      v23 = v13;
      sub_100096C88(a2, v9);
      v38 = sub_1000D9450();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v9, 1, v38) == 1)
      {
        sub_100096CEC(v9);
        return 0;
      }

      v44 = COERCE_DOUBLE(sub_1000D9410());
      v46 = v45;
      result = (*(v39 + 8))(v9, v38);
      if ((v46 & 1) != 0 || fabs(v44) >= 9.22337204e18)
      {
        return 0;
      }

      if ((~*&v44 & 0x7FF0000000000000) != 0)
      {
        if (v44 > -9.22337204e18)
        {
          v24 = v44;
          if (v44 < 1)
          {
            return 0;
          }

          goto LABEL_48;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v23 = v13;
    v24 = sub_1000D93B0();
    result = 0;
    if ((v26 & 1) == 0 && v24 >= 1)
    {
LABEL_48:
      v47 = *(*(v3 + 24) + 16);
      sub_1000D9170();
      v29.super.super.isa = sub_1000D9130().super.isa;
      (*(v11 + 8))(v15, v23);
      v30 = [v47 formattedCount:v24 withLocale:v29.super.super.isa longform:0 compactDisplay:0];
      goto LABEL_39;
    }
  }

  return result;
}

uint64_t sub_100096420@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  v37 = result + 32;
LABEL_2:
  v7 = (v4 + 48 * v5);
  while (1)
  {
    if (v6 == v5)
    {
      v17 = _swiftEmptyArrayStorage[2];
      v18 = a2 - v17;
      if (__OFSUB__(a2, v17))
      {
        goto LABEL_43;
      }

      if (v18 >= 1)
      {

        if (v18 == a2)
        {
          *a3 = v4;
        }

        if (v6)
        {
          v35 = v18;
          v19 = 0;
          v33 = v4 + 120;
          while (v19 < v6)
          {
            v20 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_42;
            }

            v21 = (v37 + 48 * v19);
            v22 = v21[5];
            if (!v22)
            {
              if (v35 <= 0)
              {
                v30 = (v33 + 48 * v19);
                while (v6 != v20)
                {
                  if (v20 >= v6)
                  {
                    goto LABEL_41;
                  }

                  v19 = v20 + 1;
                  if (__OFADD__(v20, 1))
                  {
                    goto LABEL_42;
                  }

                  v31 = *v30;
                  v30 += 6;
                  v22 = v31;
                  ++v20;
                  if (v31)
                  {
                    v35 = 0;
                    v21 = v30 - 11;
                    goto LABEL_26;
                  }
                }

                goto LABEL_38;
              }

              v22 = 0;
              --v35;
            }

            ++v19;
LABEL_26:
            v23 = v21[3];
            v38 = v21[4];
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v21;

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_10007BCEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v28 = _swiftEmptyArrayStorage[2];
            v27 = _swiftEmptyArrayStorage[3];
            if (v28 >= v27 >> 1)
            {
              result = sub_10007BCEC((v27 > 1), v28 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v28 + 1;
            v29 = &_swiftEmptyArrayStorage[6 * v28];
            v29[4] = v26;
            v29[5] = v24;
            v29[6] = v25;
            v29[7] = v23;
            v29[8] = v38;
            v29[9] = v22;
            if (v19 == v6)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_41;
        }
      }

LABEL_38:
      *a3 = _swiftEmptyArrayStorage;
      return result;
    }

    if (v5 >= v6)
    {
      break;
    }

    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_40;
    }

    v9 = v7[9];
    ++v5;
    v7 += 6;
    if (v9)
    {
      v10 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *v7;
      v13 = v7[1];
      v32 = v7[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      v34 = v12;
      if ((result & 1) == 0)
      {
        result = sub_10007BCEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_10007BCEC((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[6 * v15];
      v16[4] = v10;
      v16[5] = v11;
      v16[6] = v34;
      v16[7] = v13;
      v16[8] = v32;
      v16[9] = v9;
      v5 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_100096730()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_1000967A4()
{
  v1 = v0;
  v2 = type metadata accessor for PriceFormatter();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1000D9140();
  v1[2] = v5;
  type metadata accessor for UnitNumberFormatter();
  v6 = swift_allocObject();
  *(v6 + 16) = [objc_allocWithZone(SCICUNumberFormatter) init];
  v1[3] = v6;
  v7 = [objc_allocWithZone(NSNumberFormatter) init];
  [v7 setNumberStyle:1];
  [v7 setMinimumFractionDigits:2];
  [v7 setMaximumFractionDigits:2];
  v1[4] = v7;
  v8 = [objc_allocWithZone(NSNumberFormatter) init];
  [v8 setNumberStyle:3];
  sub_100096910();
  isa = sub_1000DBE50(1.0).super.super.isa;
  [v8 setMultiplier:isa];

  [v8 setMinimumFractionDigits:2];
  [v8 setMaximumFractionDigits:2];
  v1[5] = v8;
  return v1;
}

unint64_t sub_100096910()
{
  result = qword_100118E88;
  if (!qword_100118E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100118E88);
  }

  return result;
}

uint64_t sub_10009695C(unsigned __int8 a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  if (a1 <= 5u)
  {
    if (a1 > 2u)
    {
      if (a1 == 3)
      {
        v10._countAndFlagsBits = 0x80000001000E9660;
        v4._countAndFlagsBits = 7106390;
      }

      else
      {
        if (a1 != 4)
        {
          v10._countAndFlagsBits = 0x80000001000E95C0;
          v4._countAndFlagsBits = 0x70614320746B4DLL;
          v4._object = 0xE700000000000000;
          goto LABEL_27;
        }

        v10._countAndFlagsBits = 0x80000001000E9610;
        v4._countAndFlagsBits = 4534096;
      }
    }

    else
    {
      if (!a1)
      {
        v10._countAndFlagsBits = 0x80000001000E9720;
        v4._countAndFlagsBits = 1852141647;
        v4._object = 0xE400000000000000;
        goto LABEL_27;
      }

      if (a1 == 1)
      {
        v10._countAndFlagsBits = 0x80000001000E96E0;
        v4._countAndFlagsBits = 1751607624;
        v4._object = 0xE400000000000000;
LABEL_27:
        v5.value._countAndFlagsBits = 0;
        v5.value._object = 0;
        v6.super.isa = v3;
        v7._countAndFlagsBits = 0;
        v7._object = 0xE000000000000000;
        goto LABEL_28;
      }

      v10._countAndFlagsBits = 0x80000001000E96A0;
      v4._countAndFlagsBits = 7827276;
    }

    goto LABEL_26;
  }

  if (a1 > 8u)
  {
    if (a1 != 9)
    {
      if (a1 == 10)
      {
        v10._countAndFlagsBits = 0x80000001000E9490;
        v4._countAndFlagsBits = 1635018050;
        v4._object = 0xE400000000000000;
        goto LABEL_27;
      }

      v10._countAndFlagsBits = 0x80000001000E9450;
      v4._countAndFlagsBits = 5460037;
LABEL_26:
      v4._object = 0xE300000000000000;
      goto LABEL_27;
    }

    v10._countAndFlagsBits = 0x80000001000E94C0;
    v4._countAndFlagsBits = 0x646C656959;
  }

  else
  {
    if (a1 == 6)
    {
      v10._countAndFlagsBits = 0x80000001000E9580;
      v4._countAndFlagsBits = 0x4820573235;
      v4._object = 0xE500000000000000;
      goto LABEL_27;
    }

    if (a1 != 7)
    {
      v10._countAndFlagsBits = 0x80000001000E9500;
      v4._countAndFlagsBits = 0x6C6F5620677641;
      v4._object = 0xE700000000000000;
      goto LABEL_23;
    }

    v10._countAndFlagsBits = 0x80000001000E9540;
    v4._countAndFlagsBits = 0x4C20573235;
  }

  v4._object = 0xE500000000000000;
LABEL_23:
  v5.value._countAndFlagsBits = 0;
  v5.value._object = 0;
  v6.super.isa = v3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
LABEL_28:
  v8 = sub_1000D8E50(v4, v5, v6, v7, v10);

  return v8;
}

uint64_t sub_100096C88(uint64_t a1, uint64_t a2)
{
  sub_100023704(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100096CEC(uint64_t a1)
{
  sub_100023704(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100096D48(void *a1)
{
  v2 = sub_1000D8F30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100033ED8(0, &qword_100118FD0, FCContextConfiguration_ptr);
  result = sub_1000D9EF0();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  v10 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100033DC0(0, &qword_100118FD8, &protocolRef_FCCoreConfigurationManager);
  result = sub_1000D9EF0();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = result;
  result = FCURLForContainerizedUserAccountCachesDirectory();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  sub_1000D8F00();

  v13 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100033ED8(0, &unk_100118F60, FCNetworkBehaviorMonitor_ptr);
  result = sub_1000D9EF0();
  if (result)
  {
    v14 = result;
    v15 = objc_allocWithZone(FCContentContext);
    sub_1000D8EE0(v16);
    v18 = v17;
    v19 = [v15 initWithConfiguration:v9 configurationManager:v11 contentHostDirectory:v17 networkBehaviorMonitor:v14 desiredHeadlineFieldOptions:0x109FC387FLL feedUsage:10 appActivityMonitor:0 backgroundTaskable:0 pptContext:0];

    swift_unknownObjectRelease();
    (*(v3 + 8))(v6, v2);
    return v19;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100096F90(id *a1)
{
  v1 = *a1;
  [*a1 enableFlushingWithFlushingThreshold:1];
  v2 = [v1 assetManager];
  [v2 enableFlushingWithFlushingThreshold:1];
}

id sub_100097008()
{
  v0 = sub_1000D8F30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FCURLForTodayDropbox();
  if (result)
  {
    v6 = result;
    sub_1000D8F00();

    v7 = objc_allocWithZone(FCFileCoordinatedTodayDropbox);
    sub_1000D8EE0(v8);
    v10 = v9;
    v11 = [v7 initWithFileURL:v9];

    (*(v1 + 8))(v4, v0);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100097124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000DA370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v45[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116950);
  result = sub_1000D9F00();
  if (v48)
  {
    sub_100023738(&v47, v49);
    sub_100006C7C(v49, v49[3]);
    if ((sub_1000D9800() & 1) == 0)
    {
      v40 = sub_1000D9930();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      swift_allocObject();
      v37 = sub_1000D9920();
      v38 = &unk_100118FA0;
      v39 = &type metadata accessor for EmptyNewsUserProfileProvider;
LABEL_8:
      v43 = sub_1000981D8(v38, v39);
      *a2 = v37;
      a2[1] = v43;
      return sub_100006D0C(v49);
    }

    v11 = a1[4];
    sub_100006C7C(a1, a1[3]);
    sub_1000481C8(0, &qword_100118F40);
    result = sub_1000D9F00();
    v12 = v48;
    if (v48)
    {
      v13 = sub_10006457C(&v47, v48);
      v14 = *(*(v12 - 8) + 64);
      v15 = __chkstk_darwin(v13);
      v17 = (&v45[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v20 = type metadata accessor for TodayPrivateDataProvider();
      v46[3] = v20;
      v46[4] = &off_100109F38;
      v46[0] = v19;
      type metadata accessor for WidgetNewsUserProfileProvider();
      v21 = swift_allocObject();
      v22 = sub_10006457C(v46, v20);
      v23 = *(*(v20 - 8) + 64);
      v24 = __chkstk_darwin(v22);
      v26 = (&v45[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v27 + 16))(v26, v24);
      v28 = *v26;
      v45[3] = v20;
      v45[4] = &off_100109F38;
      v45[0] = v28;
      sub_100006E20(v45, v21 + 16);
      sub_100098084();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = sub_1000DA0B0();
      sub_100006D0C(v45);
      *(v21 + 56) = v32;
      sub_100006D0C(v46);
      sub_100006D0C(&v47);
      if (qword_100114090 != -1)
      {
        swift_once();
      }

      v33 = sub_100015294(v4, qword_100128DD8);
      (*(v5 + 16))(v8, v33, v4);
      sub_100098144();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      v37 = swift_allocObject();
      *(v37 + 16) = v21;
      (*(v5 + 32))(v37 + qword_100128F28, v8, v4);
      v38 = &unk_100118FC8;
      v39 = sub_100098144;
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000975B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000DA370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100033ED8(0, &unk_100118F30, FCFileCoordinatedTodayDropbox_ptr);
  result = sub_1000D9EF0();
  if (result)
  {
    v11 = result;
    sub_1000DA340();
    v12 = type metadata accessor for TodayPrivateDataProvider();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    swift_defaultActor_initialize();
    v16 = OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_cache;
    sub_100097FB4();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    *(v15 + v16) = sub_1000DA0B0();
    *(v15 + OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_maxAge) = 0x4024000000000000;
    *(v15 + 112) = v11;
    result = (*(v5 + 32))(v15 + OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_logger, v8, v4);
    a2[3] = v12;
    a2[4] = &off_100109F38;
    *a2 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100097750@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ManagedConfigurationService;
  result = sub_100097F60();
  *(a1 + 32) = result;
  return result;
}

id sub_100097784()
{
  v0 = objc_allocWithZone(type metadata accessor for NoopAppActivityMonitor());

  return [v0 init];
}

id sub_1000977C4()
{
  sub_1000480A8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000E04C0;
  *(v0 + 32) = [objc_allocWithZone(FCPrivateDataSyncConditionFalse) init];
  v1 = objc_allocWithZone(FCPrivateDataSyncAvailability);
  sub_100033DC0(0, &qword_100118F70, &protocolRef_FCPrivateDataSyncCondition);
  isa = sub_1000DBB00().super.isa;

  v3 = [v1 initWithConditions:isa];

  return v3;
}

uint64_t sub_10009788C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for UserIdentitySource.cache(_:);
  v3 = sub_1000D96E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_100097900()
{
  v0 = objc_allocWithZone(FCNetworkBehaviorMonitor);

  return [v0 initForLoggingOnly];
}

uint64_t sub_100097960()
{
  v0 = sub_1000DA0F0();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9F40();
  sub_100033DC0(0, &qword_100116908, &protocolRef_FCContentContext);
  sub_1000DA060();

  sub_1000D9E90();

  v5 = enum case for Scope.singleton(_:);
  v6 = v1[13];
  v6(v4, enum case for Scope.singleton(_:), v0);
  sub_1000D9EA0();

  v12 = v1[1];
  v12(v4, v0);
  v11[1] = v1 + 1;
  sub_1000D9F40();
  sub_100033ED8(0, &unk_100118F30, FCFileCoordinatedTodayDropbox_ptr);
  sub_1000DA060();

  sub_1000D9F40();
  sub_1000481C8(0, &qword_100116970);
  sub_1000DA070();

  sub_1000D9F40();
  sub_1000481C8(0, &qword_100118F40);
  sub_1000DA070();

  v7 = v5;
  v13 = v5;
  v6(v4, v5, v0);
  v8 = v6;
  sub_1000D9EA0();

  v9 = v12;
  v12(v4, v0);
  sub_1000D9F40();
  sub_1000481C8(0, &qword_100118F48);
  sub_1000DA070();

  sub_1000D9F40();
  sub_100033DC0(0, &qword_100118F50, &protocolRef_FCAppActivityMonitor);
  sub_1000DA060();

  sub_1000D9F40();
  sub_1000DB9C0();
  sub_1000DA070();

  v8(v4, v7, v0);
  sub_1000D9EA0();

  v9(v4, v0);
  sub_1000D9F40();
  sub_100033ED8(0, &qword_100118F58, FCPrivateDataSyncAvailability_ptr);
  sub_1000DA060();

  sub_1000D9F40();
  sub_1000D8F30();
  sub_1000D99E0();
  sub_1000DA070();

  sub_1000D9F40();
  sub_1000D96E0();
  sub_1000DA070();

  sub_1000D9F40();
  sub_100033ED8(0, &unk_100118F60, FCNetworkBehaviorMonitor_ptr);
  sub_1000DA060();

  v8(v4, v13, v0);
  sub_1000D9EA0();

  return (v9)(v4, v0);
}

unint64_t sub_100097F60()
{
  result = qword_100118F78;
  if (!qword_100118F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F78);
  }

  return result;
}

void sub_100097FB4()
{
  if (!qword_100118F80)
  {
    sub_100033DC0(255, &qword_100115D40, &protocolRef_FCTodayPrivateData);
    sub_100098030();
    v0 = sub_1000DA0C0();
    if (!v1)
    {
      atomic_store(v0, &qword_100118F80);
    }
  }
}

unint64_t sub_100098030()
{
  result = qword_100118F90;
  if (!qword_100118F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F90);
  }

  return result;
}

void sub_100098084()
{
  if (!qword_100118FA8)
  {
    sub_1000D9510();
    sub_1000980F0();
    v0 = sub_1000DA0C0();
    if (!v1)
    {
      atomic_store(v0, &qword_100118FA8);
    }
  }
}

unint64_t sub_1000980F0()
{
  result = qword_100118FB0;
  if (!qword_100118FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118FB0);
  }

  return result;
}

void sub_100098144()
{
  if (!qword_100118FB8)
  {
    type metadata accessor for WidgetNewsUserProfileProvider();
    sub_1000981D8(&qword_100118FC0, type metadata accessor for WidgetNewsUserProfileProvider);
    v0 = type metadata accessor for LoggingNewsUserProfileProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_100118FB8);
    }
  }
}

uint64_t sub_1000981D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100098220()
{
  sub_100098268();

  return sub_1000DAC20();
}

unint64_t sub_100098268()
{
  result = qword_100118FF8;
  if (!qword_100118FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118FF8);
  }

  return result;
}

uint64_t sub_1000982CC()
{
  v0 = sub_1000D9690();
  sub_1000152CC(v0, qword_100118FE0);
  v1 = sub_100015294(v0, qword_100118FE0);
  v2 = enum case for PriceChangeDisplay.currency(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100098354@<X0>(uint64_t a1@<X8>)
{
  if (qword_100114148 != -1)
  {
    swift_once();
  }

  v2 = sub_1000D9690();
  v3 = sub_100015294(v2, qword_100118FE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000983FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100098460();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_100098460()
{
  result = qword_100119000;
  if (!qword_100119000)
  {
    sub_1000D9690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119000);
  }

  return result;
}

id sub_100098500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoopAppActivityMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009856C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_100099668(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HeadlineViewModel(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000986D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_100099668(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HeadlineViewModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SmallDetailWithNewsContentView()
{
  result = qword_100119090;
  if (!qword_100119090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100098874()
{
  sub_100063718(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100063718(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100099668(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for HeadlineViewModel(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000989CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v83 = sub_100099558;
  sub_1000994C8(0, &qword_100119110, sub_100099558);
  v4 = *(v3 - 8);
  v80 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v81 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = &v67 - v8;
  v9 = type metadata accessor for SmallSparklineView(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v79 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v77 = &v67 - v13;
  v14 = sub_1000DAE60();
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  __chkstk_darwin(v14);
  v72 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for LineTicker;
  sub_1000994C8(0, &qword_100119100, type metadata accessor for LineTicker);
  v18 = v17;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v67 - v20;
  sub_1000995F8(0, &qword_1001190F0, sub_100099304, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
  v23 = *(v22 - 8);
  v71 = v22 - 8;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22 - 8);
  v85 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v84 = &v67 - v27;
  v68 = *(a1 + 64);
  v29 = a1[1];
  v70 = *a1;
  v28 = v70;
  v31 = a1[3];
  v69 = a1[2];
  v30 = v69;
  v32 = a1[4];
  v33 = a1[5];
  v34 = a1[6];
  v35 = a1[7];
  *v21 = v68;
  *(v21 + 1) = v28;
  *(v21 + 2) = v29;
  *(v21 + 3) = v30;
  *(v21 + 4) = v31;
  *(v21 + 5) = v32;
  *(v21 + 6) = v33;
  *(v21 + 7) = v34;
  *(v21 + 8) = v35;
  v67 = v35;
  v36 = *(type metadata accessor for LineTicker() + 28);
  *&v21[v36] = swift_getKeyPath();
  sub_100099668(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  v74 = v37;
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 1;
  *(v39 + 32) = 0;
  *(v39 + 40) = 0;
  v40 = &v21[*(v18 + 36)];
  *v40 = KeyPath;
  v40[1] = sub_10002B050;
  v40[2] = v39;

  sub_10002B054(v32, v33, v34, v35);
  v41 = v72;
  sub_1000DAE40();
  sub_1000993A4();
  v42 = v84;
  sub_1000DB2A0();
  (*(v75 + 8))(v41, v76);
  sub_100099868(v21, &qword_100119100, v73);
  v43 = v42 + *(v71 + 44);
  *v43 = v68;
  *(v43 + 1) = *v92;
  *(v43 + 4) = *&v92[3];
  *(v43 + 8) = v70;
  *(v43 + 16) = v29;
  *(v43 + 24) = v69;
  *(v43 + 32) = v31;
  *(v43 + 40) = v32;
  *(v43 + 48) = v33;
  v44 = v67;
  *(v43 + 56) = v34;
  *(v43 + 64) = v44;

  sub_10002B054(v32, v33, v34, v44);
  sub_1000DB600();
  sub_1000DA7A0();
  v75 = v88;
  v76 = v86;
  v73 = v90;
  v72 = v91;
  v95 = 1;
  v94 = v87;
  v93 = v89;
  v45 = type metadata accessor for SmallDetailWithNewsContentView();
  v46 = v77;
  sub_100024964(a1 + *(v45 + 28), v77);
  v47 = v78;
  sub_100099780(a1 + *(v45 + 32), v78, type metadata accessor for HeadlineViewModel);
  v48 = *(v47 + 112);
  sub_100010190(*(v47 + 104));
  *(v47 + 104) = 1;
  *(v47 + 112) = 0;
  v49 = *(type metadata accessor for HeadlineView(0) + 20);
  *(v47 + v49) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100099558();
  *(v47 + *(v50 + 36)) = 0x3FF0000000000000;
  v51 = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 40) = 1;
  v53 = (v47 + *(v80 + 44));
  *v53 = v51;
  v53[1] = sub_10002B5D4;
  v53[2] = v52;
  v54 = v85;
  sub_1000996E4(v42, v85);
  LOBYTE(v34) = v95;
  LOBYTE(v29) = v94;
  LOBYTE(v41) = v93;
  v55 = v46;
  v56 = v79;
  sub_100099780(v46, v79, type metadata accessor for SmallSparklineView);
  v57 = v81;
  sub_1000997E8(v47, v81);
  v58 = v82;
  sub_1000996E4(v54, v82);
  sub_100099214();
  v60 = v59;
  v61 = v58 + *(v59 + 48);
  *v61 = 0;
  *(v61 + 8) = v34;
  v62 = v75;
  *(v61 + 16) = v76;
  *(v61 + 24) = v29;
  *(v61 + 32) = v62;
  *(v61 + 40) = v41;
  v63 = v72;
  *(v61 + 48) = v73;
  *(v61 + 56) = v63;
  sub_100099780(v56, v58 + *(v59 + 64), type metadata accessor for SmallSparklineView);
  v64 = v58 + *(v60 + 80);
  *v64 = 0x4020000000000000;
  *(v64 + 8) = 0;
  sub_1000997E8(v57, v58 + *(v60 + 96));
  v65 = v83;
  sub_100099868(v47, &qword_100119110, v83);
  sub_1000998C4(v55);
  sub_100099920(v84);
  sub_100099868(v57, &qword_100119110, v65);
  sub_1000998C4(v56);
  return sub_100099920(v85);
}

uint64_t sub_100099134@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000DAD00();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_10009917C();
  return sub_1000989CC(v1, a1 + *(v3 + 44));
}

void sub_10009917C()
{
  if (!qword_1001190D8)
  {
    sub_100099668(255, &qword_1001190E0, sub_100099214, &type metadata accessor for TupleView);
    v0 = sub_1000DA800();
    if (!v1)
    {
      atomic_store(v0, &qword_1001190D8);
    }
  }
}

void sub_100099214()
{
  if (!qword_1001190E8)
  {
    sub_1000995F8(255, &qword_1001190F0, sub_100099304, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
    sub_100099470();
    type metadata accessor for SmallSparklineView(255);
    sub_1000994C8(255, &qword_100119110, sub_100099558);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1001190E8);
    }
  }
}

void sub_100099304()
{
  if (!qword_1001190F8)
  {
    sub_1000994C8(255, &qword_100119100, type metadata accessor for LineTicker);
    sub_1000993A4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1001190F8);
    }
  }
}

unint64_t sub_1000993A4()
{
  result = qword_100119108;
  if (!qword_100119108)
  {
    sub_1000994C8(255, &qword_100119100, type metadata accessor for LineTicker);
    sub_1000999FC(&qword_100118640, type metadata accessor for LineTicker);
    sub_10004C8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119108);
  }

  return result;
}

void sub_100099470()
{
  if (!qword_100116558)
  {
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100116558);
    }
  }
}

void sub_1000994C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100063718(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100099558()
{
  if (!qword_100119118)
  {
    type metadata accessor for HeadlineView(255);
    sub_1000995F8(255, &qword_100116728, &type metadata accessor for LayoutPriorityTraitKey, &protocol witness table for LayoutPriorityTraitKey, &type metadata accessor for _TraitWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100119118);
    }
  }
}

void sub_1000995F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_100099668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000996E4(uint64_t a1, uint64_t a2)
{
  sub_1000995F8(0, &qword_1001190F0, sub_100099304, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000997E8(uint64_t a1, uint64_t a2)
{
  sub_1000994C8(0, &qword_100119110, sub_100099558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099868(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1000994C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000998C4(uint64_t a1)
{
  v2 = type metadata accessor for SmallSparklineView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100099920(uint64_t a1)
{
  sub_1000995F8(0, &qword_1001190F0, sub_100099304, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000999FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100099A44()
{
  if (!qword_100119128)
  {
    sub_100099668(255, &qword_1001190E0, sub_100099214, &type metadata accessor for TupleView);
    sub_100099AD8();
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_100119128);
    }
  }
}

unint64_t sub_100099AD8()
{
  result = qword_100119130;
  if (!qword_100119130)
  {
    sub_100099668(255, &qword_1001190E0, sub_100099214, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119130);
  }

  return result;
}

unint64_t sub_100099B68()
{
  result = qword_100119138;
  if (!qword_100119138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119138);
  }

  return result;
}

uint64_t sub_100099BE0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_100071F74(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_100023660(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  sub_10007D024(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

void sub_100099D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100099DC4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_100071F74(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_100023660(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  sub_10007D024(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

void sub_100099F50()
{
  sub_10009A0C0(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10009A0C0(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100071F74(319);
      if (v2 <= 0x3F)
      {
        sub_10009A0C0(319, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_100023660(319);
          if (v4 <= 0x3F)
          {
            sub_10007D024(319);
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

void sub_10009A0C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10009A110(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x614E6C6F626D7973;
    v6 = 0x6563697270;
    if (a1 != 2)
    {
      v6 = 0x6168436563697270;
    }

    if (a1)
    {
      v5 = 0x4E796E61706D6F63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74654465746F7571;
    v2 = 0x656E696C64616568;
    if (a1 != 7)
    {
      v2 = 0x52556C6F626D7973;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6E696C6B72617073;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10009A24C(void *a1)
{
  v3 = v1;
  sub_10009B534(0, &qword_100119250, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10009B2AC();
  sub_1000DC480();
  v12 = *(v3 + 2);
  v13 = *(v3 + 3);
  v25 = *v3;
  *&v26 = v12;
  *(&v26 + 1) = v13;
  LOBYTE(v29) = 0;
  sub_10009B598();
  sub_1000DC2F0();
  if (!v2)
  {
    v14 = *(v3 + 4);
    v15 = *(v3 + 5);
    LOBYTE(v25) = 1;
    sub_1000DC2B0();
    v16 = v3[4];
    v29 = v3[3];
    v30 = v16;
    v28 = 2;
    sub_10009B5EC();
    sub_1000DC2A0();
    v17 = v3[6];
    v25 = v3[5];
    v26 = v17;
    *v27 = v3[7];
    *&v27[9] = *(v3 + 121);
    v24 = 3;
    sub_10009B640();
    sub_1000DC2F0();
    LOBYTE(v25) = *(v3 + 137);
    v24 = 4;
    sub_100073A0C();
    sub_1000DC2A0();
    v18 = type metadata accessor for DetailContentViewModel(0);
    v19 = v18[9];
    LOBYTE(v25) = 5;
    type metadata accessor for PreparedSparkline(0);
    sub_10009ED58(&qword_100119270, type metadata accessor for PreparedSparkline);
    sub_1000DC2A0();
    *&v25 = *(v3 + v18[10]);
    v24 = 6;
    sub_10009A0C0(0, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
    sub_10009B694(&qword_100119278, sub_10009B724);
    sub_1000DC2F0();
    v20 = v18[11];
    LOBYTE(v25) = 7;
    sub_100023694(0);
    sub_10009B7C0(&qword_100119288, sub_100023694, sub_10009B778);
    sub_1000DC2A0();
    v21 = v18[12];
    LOBYTE(v25) = 8;
    sub_1000D8F30();
    sub_10009ED58(&qword_1001192A0, &type metadata accessor for URL);
    sub_1000DC2A0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10009A6CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  sub_10007D024(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v41 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023660(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071F74(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009B534(0, &qword_1001191F0, &type metadata accessor for KeyedDecodingContainer);
  v44 = v14;
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  __chkstk_darwin(v14);
  v17 = v39 - v16;
  v18 = type metadata accessor for DetailContentViewModel(0);
  v19 = *(*(v18 - 1) + 64);
  __chkstk_darwin(v18);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10009B2AC();
  v45 = v17;
  v23 = v46;
  sub_1000DC470();
  if (v23)
  {
    return sub_100006D0C(a1);
  }

  v46 = v13;
  v40 = v9;
  v25 = v42;
  v24 = v43;
  v26 = v21;
  LOBYTE(v47) = 0;
  sub_10009B300();
  v27 = v44;
  sub_1000DC220();
  v28 = v49;
  *v26 = v48;
  *(v26 + 16) = v28;
  LOBYTE(v48) = 1;
  v29 = sub_1000DC1E0();
  v39[1] = 0;
  *(v26 + 32) = v29;
  *(v26 + 40) = v30;
  LOBYTE(v47) = 2;
  sub_10009B354();
  sub_1000DC1D0();
  v31 = a1;
  v32 = v49;
  *(v26 + 48) = v48;
  *(v26 + 64) = v32;
  v52 = 3;
  sub_10009B3A8();
  sub_1000DC220();
  v33 = v25;
  v34 = v49;
  *(v26 + 80) = v48;
  *(v26 + 96) = v34;
  *(v26 + 112) = v50[0];
  *(v26 + 121) = *(v50 + 9);
  v51 = 4;
  sub_100073888();
  sub_1000DC1D0();
  *(v26 + 137) = v47;
  type metadata accessor for PreparedSparkline(0);
  LOBYTE(v47) = 5;
  sub_10009ED58(&qword_100119218, type metadata accessor for PreparedSparkline);
  v36 = v46;
  sub_1000DC1D0();
  sub_10009B4CC(v36, v26 + v18[9], sub_100071F74);
  sub_10009A0C0(0, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
  v51 = 6;
  sub_10009B694(&qword_100119220, sub_10009B3FC);
  sub_1000DC220();
  *(v26 + v18[10]) = v47;
  sub_100023694(0);
  LOBYTE(v47) = 7;
  sub_10009B7C0(&qword_100119230, sub_100023694, sub_10009B450);
  v37 = v40;
  sub_1000DC1D0();
  sub_10009B4CC(v37, v26 + v18[11], sub_100023660);
  sub_1000D8F30();
  LOBYTE(v47) = 8;
  sub_10009ED58(&qword_100119248, &type metadata accessor for URL);
  v38 = v41;
  sub_1000DC1D0();
  (*(v33 + 8))(v45, v27);
  sub_10009B4CC(v38, v26 + v18[12], sub_10007D024);
  sub_10009EDA4(v26, v24, type metadata accessor for DetailContentViewModel);
  sub_100006D0C(v31);
  return sub_10009EE0C(v26, type metadata accessor for DetailContentViewModel);
}

uint64_t sub_10009AFB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000DAC10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099D4C(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for DetailContentView(0);
  sub_10002F35C(v1 + *(v12 + 24), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000DB720();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1000DBDC0();
    v16 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10009B1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009EE6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009B204(uint64_t a1)
{
  v2 = sub_10009B2AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009B240(uint64_t a1)
{
  v2 = sub_10009B2AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10009B2AC()
{
  result = qword_1001191F8;
  if (!qword_1001191F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001191F8);
  }

  return result;
}

unint64_t sub_10009B300()
{
  result = qword_100119200;
  if (!qword_100119200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119200);
  }

  return result;
}

unint64_t sub_10009B354()
{
  result = qword_100119208;
  if (!qword_100119208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119208);
  }

  return result;
}

unint64_t sub_10009B3A8()
{
  result = qword_100119210;
  if (!qword_100119210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119210);
  }

  return result;
}

unint64_t sub_10009B3FC()
{
  result = qword_100119228;
  if (!qword_100119228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119228);
  }

  return result;
}

uint64_t sub_10009B4CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10009B534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_10009B2AC();
    v7 = a3(a1, &type metadata for DetailContentViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10009B598()
{
  result = qword_100119258;
  if (!qword_100119258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119258);
  }

  return result;
}

unint64_t sub_10009B5EC()
{
  result = qword_100119260;
  if (!qword_100119260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119260);
  }

  return result;
}

unint64_t sub_10009B640()
{
  result = qword_100119268;
  if (!qword_100119268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119268);
  }

  return result;
}

uint64_t sub_10009B694(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10009A0C0(255, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009B724()
{
  result = qword_100119280;
  if (!qword_100119280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119280);
  }

  return result;
}

uint64_t sub_10009B7C0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t getEnumTagSinglePayload for DetailContentViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailContentViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10009B9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetailContentViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_100099D4C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10009BB34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DetailContentViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    sub_100099D4C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

void sub_10009BCAC()
{
  type metadata accessor for DetailContentViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_10002F2F8();
    if (v1 <= 0x3F)
    {
      sub_100099D4C(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10009BD7C()
{
  result = qword_100119340;
  if (!qword_100119340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119340);
  }

  return result;
}

unint64_t sub_10009BDD4()
{
  result = qword_100119348;
  if (!qword_100119348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119348);
  }

  return result;
}

unint64_t sub_10009BE2C()
{
  result = qword_100119350;
  if (!qword_100119350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119350);
  }

  return result;
}

uint64_t sub_10009BE9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_1000DAE80();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000DA890();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v41);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E23C(0);
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10009E96C();
  v16 = v15;
  v42 = *(v15 - 8);
  v17 = *(v42 + 64);
  __chkstk_darwin(v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009EAD0();
  v21 = *(v20 - 8);
  v43 = v20;
  v44 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v40 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = sub_1000DB5F0();
  v14[1] = v24;
  sub_10009EB8C();
  sub_10009C354(v2, v14 + *(v25 + 44));
  KeyPath = swift_getKeyPath();
  v27 = (v14 + *(v11 + 36));
  sub_100031EB0(0);
  v29 = *(v28 + 28);
  v30 = enum case for ColorScheme.dark(_:);
  v31 = sub_1000DA6B0();
  (*(*(v31 - 8) + 104))(v27 + v29, v30, v31);
  *v27 = KeyPath;
  v32 = v41;
  (*(v6 + 104))(v9, enum case for DynamicTypeSize.large(_:), v41);
  v33 = sub_10009E9F0();
  sub_1000DB260();
  (*(v6 + 8))(v9, v32);
  sub_10009EE0C(v14, sub_10009E23C);
  LODWORD(v14) = *(type metadata accessor for DetailContentViewModel(0) + 48);
  v49 = v11;
  v50 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v40;
  sub_1000DB200();
  (*(v42 + 8))(v19, v16);
  v36 = v45;
  sub_1000DAE70();
  sub_1000DB600();
  v49 = v16;
  v50 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100032330();
  v37 = v43;
  sub_1000DB290();
  (*(v47 + 8))(v36, v48);
  return (*(v44 + 8))(v35, v37);
}