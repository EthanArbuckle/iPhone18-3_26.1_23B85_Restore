uint64_t sub_106BC4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_dismissAction);
  if (v2)
  {
    v3 = result;

    v2(v3);

    return sub_A6980(v2);
  }

  return result;
}

id sub_106CA4()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_artworkImageView]];
  v1 = sub_106F54();
  [v1 v2];
  v3 = sub_105C2C();
  [v0 addSubview:v3];

  v4 = sub_106F54();
  [v4 v5];
  v6 = sub_106F54();
  [v6 v7];
  v8 = sub_106F54();

  return [v8 v9];
}

id sub_106D8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductCardView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_106F34(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_106F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_CC68(va, v16);
}

uint64_t sub_106FBC(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_184B68;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_107010@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_106FBC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_107040@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_106FBC(a1, a2);
  if (v7 == 2)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v22 = &type metadata for ServiceProductOverlayLayout.FooterSpacing;
    v21[0] = swift_allocObject();
    memcpy((v21[0] + 16), v3, 0xB0uLL);
    sub_107970(v3, __dst);
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v21);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v24._countAndFlagsBits = a1;
    v24._object = a2;
    sub_13BBC4(v24);
    v25._object = 0x800000000014E6F0;
    v25._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v25);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for ServiceProductOverlayLayout.FooterSpacing;
    a3[4] = &off_18DD70;
    v15 = swift_allocObject();
    *a3 = v15;
    memcpy((v15 + 16), v3, 0xB0uLL);
    return sub_107970(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v22 = &type metadata for ServiceProductOverlayLayout.FooterSpacing;
    v21[0] = swift_allocObject();
    memcpy((v21[0] + 16), v3, 0xB0uLL);
    sub_107970(v3, __dst);
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v21);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for ServiceProductOverlayLayout.FooterSpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11 & 1;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      memcpy(__dst, (v3 + 88), 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v17 = swift_allocObject();
      *a3 = v17;
      v18 = (v17 + 16);
      v19 = (v3 + 88);
    }

    else
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v20 = swift_allocObject();
      *a3 = v20;
      v18 = (v20 + 16);
      v19 = v3;
    }

    memcpy(v18, v19, 0x58uLL);
    return sub_4AB8(__dst, v21);
  }
}

void *sub_1075A0@<X0>(void *a1@<X8>)
{
  sub_139F34();
  sub_139F34();
  return memcpy(a1, __src, 0xB0uLL);
}

uint64_t sub_107714@<X0>(uint64_t *a1@<X8>)
{
  sub_1075A0(__src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0xB0uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_1077F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_107714(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_107898()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_107908()
{
  sub_3C04(v0 + 16);
  sub_3C04(v0 + 56);
  sub_3C04(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1079A8()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

_BYTE *storeEnumTagSinglePayload for ServiceProductOverlayLayout.FooterSpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x107AC4);
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

unint64_t sub_107B00()
{
  result = qword_1A1380;
  if (!qword_1A1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1380);
  }

  return result;
}

uint64_t sub_107B60(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 >> 13) & 0xFFFFFFE0 | (*a1 >> 11);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_107BAC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 49) = 1;
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
      *a1 = (-a2 << 13) & 0x1FFFFFFC0000 | ((-a2 & 0x1FLL) << 11);
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 33) = 0u;
      return result;
    }

    *(a1 + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_107C28(int8x16_t *a1, char a2)
{
  v2 = a1[1].u8[0];
  v3 = a1[3].i8[0] & 1 | (a2 << 7);
  result = vandq_s8(*a1, xmmword_14BED0);
  *a1 = result;
  a1[1].i64[0] = v2;
  a1[3].i8[0] = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TextGradient.GradientOptions(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_107C78(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
        return (v3 + 1);
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 3;
  v3 = v4 - 3;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_107CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_107D78(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184BB8;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_107DC4(char a1)
{
  if (!a1)
  {
    return 0x656E696C6E69;
  }

  if (a1 == 1)
  {
    return 0x697461676976616ELL;
  }

  return 1701736302;
}

uint64_t sub_107E38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_107D78(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_107E68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_107DC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_107E94(uint64_t a1, uint64_t a2)
{
  v5 = sub_7530(0x6E656D6E67696C61, 0xE900000000000074, &unk_18DF80);
  if (v2)
  {
    sub_13B5A4();
    sub_5224();
    (*(v13 + 8))(a2);
    sub_13B584();
    sub_5224();
    return (*(v14 + 8))(a1);
  }

  else
  {
    v6 = v5;
    v7 = sub_73A8(0x6567646162, 0xE500000000000000, &unk_18DF80);
    sub_76B8(0x6E6F697469736F70, 0xE800000000000000, &unk_18DF80, v8, v9, v10, v11, v12);
    v16 = v15;
    sub_13B5A4();
    sub_5224();
    (*(v17 + 8))(a2);
    sub_13B584();
    sub_5224();
    (*(v18 + 8))(a1);
    return (v7 << 8) | (v16 << 16) | v6;
  }
}

uint64_t sub_10801C(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_184C20;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_108070(char a1)
{
  if (a1)
  {
    return 0x656372756F736572;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t sub_1080A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_107E94(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 2) = BYTE2(result);
  }

  return result;
}

uint64_t sub_108104@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10801C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_108134@<X0>(uint64_t *a1@<X8>)
{
  result = sub_108070(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_108160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  sub_76EC(1684957547, 0xE400000000000000, &unk_18DF08, a3, a4, a5, a6, a7);
  if (v8)
  {
    sub_13B584();
    sub_5224();
    (*(v24 + 8))(a1);
    sub_13B5A4();
    sub_5224();
    return (*(v25 + 8))(a2);
  }

  else
  {
    __chkstk_darwin(0x746E65746E6F63);
    v36 = a2;
    if (v16)
    {
      sub_6614();
      v37 = v39;
      v38 = v41;
      v17 = v43;
      v46 = v42;
      v18 = v44;
      sub_13B584();
      sub_5224();
      (*(v19 + 8))(a1);
      v20 = v40;
      v21 = v45 | 0x80;
      v22 = v39;
      v23 = v41;
    }

    else
    {
      sub_67CC(v12, 0xE700000000000000, &unk_18DF08, sub_108498, &v32, v13, v14, v15, v32, v33, v34, v35);
      v28 = v27;
      sub_13B584();
      sub_5224();
      (*(v29 + 8))(a1);
      v20 = 0;
      v23 = 0;
      v46 = 0;
      v17 = 0;
      v18 = 0;
      v21 = 0;
      v22 = v28 & 0xFFFFFF;
    }

    sub_13B5A4();
    sub_5224();
    result = (*(v30 + 8))(a2);
    *a8 = v22;
    *(a8 + 8) = v20;
    v31 = v46;
    *(a8 + 16) = v23;
    *(a8 + 24) = v31;
    *(a8 + 32) = v17;
    *(a8 + 40) = v18;
    *(a8 + 48) = v21;
  }

  return result;
}

double sub_1083F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  sub_108160(a1, a2, a3, a4, a5, a6, a7, v12);
  if (!v8)
  {
    v11 = v12[1];
    *a8 = v12[0];
    *(a8 + 16) = v11;
    result = *&v13;
    *(a8 + 32) = v13;
    *(a8 + 48) = v14;
  }

  return result;
}

double sub_108444@<D0>(uint64_t a1@<X8>)
{
  sub_8A98();
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

_BYTE *_s8BrandingO4KeysO4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10856CLL);
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

_BYTE *sub_1085A4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x108670);
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

unint64_t sub_1086A8()
{
  result = qword_1A1388;
  if (!qword_1A1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1388);
  }

  return result;
}

unint64_t sub_108700()
{
  result = qword_1A1390;
  if (!qword_1A1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1390);
  }

  return result;
}

uint64_t sub_108768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 28);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_108810(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 28);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s6ButtonVMa()
{
  result = qword_1A13F0;
  if (!qword_1A13F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1088E8()
{
  sub_AAC00(319, &unk_19EAC8);
  if (v0 <= 0x3F)
  {
    sub_67F30();
    if (v1 <= 0x3F)
    {
      sub_AAC00(319, &qword_19AE50);
      if (v2 <= 0x3F)
      {
        sub_54D0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1089BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v51 = a3;
  v4 = sub_4948(&qword_19A350);
  __chkstk_darwin(v4 - 8);
  sub_2162C();
  v48 = v5;
  __chkstk_darwin(v6);
  v50 = v46 - v7;
  v8 = sub_13B584();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  sub_2162C();
  v49 = v10;
  __chkstk_darwin(v11);
  v13 = v46 - v12;
  v14 = _s6ButtonVMa();
  sub_2B538();
  __chkstk_darwin(v15);
  v52 = (v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_139BD4();
  inited = swift_initStackObject();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_4;
  }

  v53 = v14;
  v18 = a1;
  v19 = v54;
  sub_139BC4();
  if (v19)
  {

    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_184DC(v55, &unk_19E320);
    v14 = v53;
LABEL_4:
    sub_13BAB4();
    sub_677B8();
    sub_9F18();
    *v20 = 0x6E6F69746361;
    v20[1] = 0xE600000000000000;
    v20[2] = v14;
    sub_2B538();
    (*(v21 + 104))();
    swift_willThrow();
    v22 = *(v9 + 8);
    v22(a1, v8);
    v22(v13, v8);
    sub_13B5A4();
    sub_5224();
    return (*(v23 + 8))(v60);
  }

  v46[0] = inited;
  v25 = *(v9 + 8);
  v47 = v8;
  v54 = v25;
  v46[1] = v9 + 8;
  v25(v13, v8);
  sub_9414(v55, &v57);
  v26 = v52;
  sub_9414(&v57, v52);
  sub_BB310();
  v26[8] = &type metadata for DynamicMarkdownText;
  v26[9] = &protocol witness table for DynamicMarkdownText;
  v26[5] = swift_allocObject();
  sub_139DF4();
  v27 = v60;
  v28 = v53;
  sub_BB310();
  v58 = &type metadata for DynamicMarkdownText;
  v59 = &protocol witness table for DynamicMarkdownText;
  *&v57 = swift_allocObject();
  sub_139DF4();
  sub_9414(&v57, (v26 + 10));
  v29 = v49;
  sub_13B594();
  v30 = v28;
  if ((sub_13B564() & 1) == 0)
  {
    v31 = v48;
    v32 = v27;
    sub_1090EC(v29, v27, v48);
    v52 = sub_13B7A4();
    if (sub_52E0(v31, 1, v52) != 1)
    {

      v40 = v18;
      v41 = v47;
      v42 = v54;
      v54(v40, v47);
      v42(v29, v41);
      v43 = v52;
      sub_2B538();
      v39 = v50;
      (*(v44 + 32))(v50, v31, v43);
      sub_53A8(v39, 0, 1, v43);
      goto LABEL_10;
    }

    sub_184DC(v31, &qword_19A350);
  }

  sub_13BAB4();
  sub_677B8();
  sub_9F18();
  *v33 = 0xD000000000000011;
  v33[1] = 0x800000000014E730;
  v33[2] = v30;
  sub_2B538();
  (*(v34 + 104))();
  swift_willThrow();

  v35 = v18;
  v36 = v47;
  v37 = v54;
  v54(v35, v47);
  v37(v29, v36);
  v32 = v60;

  v38 = sub_13B7A4();
  v39 = v50;
  sub_53A8(v50, 1, 1, v38);
LABEL_10:
  sub_92E4(v39, v26 + *(v30 + 28));
  sub_109328(v26, v51);
  sub_13B5A4();
  sub_5224();
  (*(v45 + 8))(v32);
  return sub_10938C(v26);
}

uint64_t sub_1090EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B734();
  v14 = sub_13B7A4();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t sub_1092B8()
{

  if (*(v0 + 112))
  {
    sub_3C04(v0 + 88);
  }

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_109328(uint64_t a1, uint64_t a2)
{
  v4 = _s6ButtonVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10938C(uint64_t a1)
{
  v2 = _s6ButtonVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1093FC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = (*(a1 + 16) >> 13) & 0xFFFFFFE0 | (*(a1 + 16) >> 11);
    if (v4 > 0x80000000)
    {
      return -v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_4948(&qword_19A500);
    sub_17250();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[10];
    }

    else
    {
      _s6ButtonVMa();
      sub_17250();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[13];
      }

      else
      {
        v10 = sub_13B5D4();
        v11 = a3[17];
      }
    }

    return sub_52E0(a1 + v11, a2, v10);
  }
}

uint64_t sub_109528(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (-a2 << 13) & 0x1FFFFFFC0000 | ((-a2 & 0x1FLL) << 11);
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 49) = 0u;
  }

  else
  {
    sub_4948(&qword_19A500);
    sub_17250();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[10];
    }

    else
    {
      _s6ButtonVMa();
      sub_17250();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[13];
      }

      else
      {
        v10 = sub_13B5D4();
        v11 = a4[17];
      }
    }

    return sub_53A8(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t type metadata accessor for ServiceProductPageDestination()
{
  result = qword_1A1488;
  if (!qword_1A1488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1096A0()
{
  sub_1098D8(319, &qword_19AE30, &type metadata accessor for Artwork);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_248F4(319, &qword_19AE40, &qword_19AE48);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_248F4(319, &qword_1A1498, &qword_1A14A0);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1098D8(319, &qword_1A14A8, _s6ButtonVMa);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          v9 = sub_109894();
          if (v10 > 0x3F)
          {
            return v9;
          }

          v9 = _s6ButtonVMa();
          if (v11 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_1098D8(319, &unk_1A14B8, &type metadata accessor for Video);
            v1 = v12;
            if (v13 <= 0x3F)
            {
              v1 = sub_13B5D4();
              if (v14 <= 0x3F)
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

  return v1;
}

unint64_t sub_109894()
{
  result = qword_1A14B0;
  if (!qword_1A14B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1A14B0);
  }

  return result;
}

void sub_1098D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_13BF44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10992C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_13B5A4();
  sub_9E94();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_9EC0();
  v11 = v10 - v9;
  v12 = sub_13B584();
  sub_9E94();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_9EC0();
  v18 = (v17 - v16);
  v41 = type metadata accessor for ServiceProductPageDestination();
  sub_9F94();
  __chkstk_darwin(v19);
  sub_9EC0();
  v22 = v21 - v20;
  (*(v14 + 16))(v18, a1, v12);
  (*(v7 + 16))(v11, a2, v5);
  sub_109F4C(v18, v11, v22);
  (*(v7 + 8))(a2, v5);
  if (v44)
  {
    return (*(v14 + 8))(a1, v12);
  }

  (*(v14 + 8))(a1, v12);
  v24 = v41[10];
  v43 = *v22;
  v38 = *(v22 + 10);
  v39 = *(v22 + 8);
  v40 = *(v22 + 24);
  v36 = *(v22 + 32);
  v37 = *(v22 + 16);
  v25 = *(v22 + 40);
  v35 = *(v22 + 48);
  v46 = *(v22 + 56);
  v45 = *(v22 + 64);
  sub_9D58(v22 + 72, a3 + 72, &qword_19E960);
  v34 = *(v22 + 112);
  v31 = *(v22 + 120);
  v26 = v41[10];
  v27 = _s6ButtonVMa();
  sub_53A8(a3 + v26, 1, 1, v27);
  sub_10BF80(v41[11]);
  v32 = *(v22 + v41[12]);
  sub_10BE0C(v22 + v41[13], a3 + v41[13], _s6ButtonVMa);
  sub_9D58(v22 + v24, a3 + v41[14], &qword_19A500);
  sub_10BF80(v41[15]);
  v28 = v41[17];
  v30 = *(v22 + v41[16]);
  sub_13B5D4();
  sub_9F94();
  (*(v29 + 16))(a3 + v28, v22 + v28);

  sub_10BE6C(v37, v40, v36, v25, v35, v46, v45);

  v33 = v32;
  result = sub_10BDB0(v22);
  *a3 = v43;
  *(a3 + 8) = v39;
  *(a3 + 10) = v38;
  *(a3 + 16) = v37;
  *(a3 + 24) = v40;
  *(a3 + 32) = v36;
  *(a3 + 40) = v25;
  *(a3 + 48) = v35;
  *(a3 + 56) = v46;
  *(a3 + 64) = v45;
  *(a3 + 112) = v34;
  *(a3 + 120) = v31;
  *(a3 + v41[12]) = v33;
  *(a3 + v41[16]) = v30;
  return result;
}

uint64_t sub_109D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_9EC0();
  v12 = v11 - v10;
  v13 = sub_13B584();
  sub_9E94();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_9EC0();
  v19 = (v18 - v17);
  (*(v15 + 16))(v18 - v17, a1, v13);
  (*(v8 + 16))(v12, a2, v6);
  sub_109F4C(v19, v12, a3);
  (*(v8 + 8))(a2, v6);
  return (*(v15 + 8))(a1, v13);
}

uint64_t sub_109ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_13B5D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_109F4C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v223 = a3;
  v237 = _s6ButtonVMa();
  sub_9F94();
  __chkstk_darwin(v5);
  sub_9EC0();
  sub_10BEA8(v7 - v6);
  v8 = sub_4948(&qword_19A498);
  v9 = sub_8AD98(v8);
  __chkstk_darwin(v9);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v10);
  sub_10BEA8(&v208 - v11);
  v236 = sub_13B5D4();
  sub_9E94();
  v235 = v12;
  __chkstk_darwin(v13);
  sub_9EC0();
  sub_10BEA8(v15 - v14);
  v16 = sub_4948(&qword_19B2B0);
  v17 = sub_8AD98(v16);
  __chkstk_darwin(v17);
  sub_10BEA8(&v208 - v18);
  v19 = sub_4948(&qword_1A1518);
  v20 = sub_8AD98(v19);
  __chkstk_darwin(v20);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v21);
  sub_10BEA8(&v208 - v22);
  v234 = sub_4948(&qword_19A500);
  sub_9F94();
  __chkstk_darwin(v23);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v24);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v25);
  sub_10BEA8(&v208 - v26);
  v27 = sub_4948(&qword_19B778);
  v28 = sub_8AD98(v27);
  __chkstk_darwin(v28);
  sub_10BEA8(&v208 - v29);
  v243 = sub_13B584();
  sub_9E94();
  v244 = v30;
  __chkstk_darwin(v31);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v32);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v33);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v34);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v35);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v36);
  v38 = &v208 - v37;
  __chkstk_darwin(v39);
  v41 = &v208 - v40;
  __chkstk_darwin(v42);
  v44 = &v208 - v43;
  __chkstk_darwin(v45);
  v46 = type metadata accessor for ServiceProductPageDestination();
  sub_9F94();
  __chkstk_darwin(v47);
  sub_9EC0();
  v50 = v49 - v48;
  sub_139DC4();
  inited = swift_initStackObject();
  v258 = a2;
  v246 = a2;
  v52 = v241;
  sub_67CC(0x6567646162, 0xE500000000000000, v46, sub_10BC18, v245, v53, v54, v55, v208, v209, WORD2(v209), BYTE6(v209));
  if (v52)
  {
    (*(v244 + 8))(a1, v243);
    sub_13B5A4();
    sub_9F94();
    return (*(v57 + 8))(v258);
  }

  LODWORD(v238) = v56;
  v217 = v44;
  v241 = v41;
  v218 = v38;
  v231 = inited;
  __chkstk_darwin(v56);
  sub_3AE1C();
  *(v59 - 16) = v258;
  v242 = a1;
  sub_9DD0(0x6B726F77747261, 0xE700000000000000, v46, sub_24498, v60, v61, v62, v63);
  v64 = v238;
  v216 = v65;
  *v50 = v65;
  *(v50 + 8) = v64;
  *(v50 + 10) = BYTE2(v64);
  v66 = 0xE400000000000000;
  sub_10BF48();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_677B8();
    v67 = sub_9F18();
    sub_47E64(v67, v68);
    *v69 = 2036625250;
    v69[1] = 0xE400000000000000;
    v69[2] = v46;
    sub_9EF8();
    (*(v70 + 104))();
    swift_willThrow();
    sub_10BE8C();
    v71 = sub_10BF60();
    MEMORY[0xE400000000000000](v71);

    sub_18BAC();
  }

  else
  {
    sub_10BF08();
    sub_10BE8C();
    v98 = sub_10BF60();
    MEMORY[0xE400000000000000](v98);
    v99 = sub_9414(&v247, &v248);
  }

  v72 = v249;
  *(v50 + 72) = v248;
  *(v50 + 88) = v72;
  *(v50 + 104) = v250;
  __chkstk_darwin(v99);
  sub_3AE1C();
  *(v73 - 16) = v258;
  sub_6934();
  v74 = v252;
  v75 = v253;
  v76 = v257;
  if (v257 > 1u || (v253 <= 0xFF ? (v77 = (v251 & 0xFFFFFFFFFFFCF800) == 0x1FFFFFFCF800) : (v77 = 0), !v77 || (v252 & 0xF000000000000007) != 0))
  {
    v101 = v255;
    v100 = v256;
    v102 = v254;
    v212 = v251;
    *(v50 + 16) = v251;
    *(v50 + 24) = v74;
    v215 = v74;
    v214 = v75;
    *(v50 + 32) = v75;
    *(v50 + 40) = v102;
    v209 = v102;
    v210 = v101;
    *(v50 + 48) = v101;
    *(v50 + 56) = v100;
    v211 = v100;
    v213 = v76;
    *(v50 + 64) = v76;
    sub_10BEC0();
  }

  else
  {
    sub_10BEC0();
    v215 = 0;
    v214 = 0;
    v209 = 0;
    v210 = 0;
    v211 = 0;
    v213 = 0;
    v212 = v64 & 0xFFFFFF;
    *(v50 + 16) = v212;
    *(v50 + 24) = 0u;
    *(v50 + 40) = 0u;
    *(v50 + 49) = 0u;
  }

  __chkstk_darwin(v78);
  sub_3AE1C();
  *(v79 - 16) = v80;
  sub_9DD0(0x777472416B726164, 0xEB000000006B726FLL, v46, sub_2B51C, v81, v82, v83, v84);
  v217 = v85;
  *(v50 + 112) = v85;
  IsRunningInternalBuild = deviceIsRunningInternalBuild();
  v241 = v46;
  v238 = 0xE400000000000000;
  if (!IsRunningInternalBuild || ([objc_opt_self() isRunningUnitTests] & 1) != 0)
  {
    v87 = 0;
    *(v50 + 120) = 0;
    goto LABEL_24;
  }

  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_21;
  }

  v88 = v226;
  sub_13B544();
  v89 = v88;
  v90 = sub_13BAA4();
  v91 = sub_9A0DC();
  sub_9A13C(v91, v92, v90);
  if (v77)
  {
    sub_928C(v89, &qword_19B778);
LABEL_21:
    sub_13BAB4();
    sub_677B8();
    v93 = sub_9F18();
    sub_47E64(v93, v94);
    *v95 = 0x666E496775626564;
    v95[1] = 0xE90000000000006FLL;
    v95[2] = v46;
    sub_9EF8();
    (*(v96 + 104))();
    swift_willThrow();
    sub_10BE7C();
    sub_10BEE8();
    v66 = *(v97 - 256);
    v66();

    v87 = 0;
    goto LABEL_23;
  }

  sub_4948(&unk_19B258);
  v87 = sub_13BA94();
  (*(*(v90 - 8) + 8))(v89, v90);
  sub_10BE7C();
  sub_10BEE8();
  v66 = *(v103 - 256);
  v66();
LABEL_23:
  *(v50 + 120) = v87;
LABEL_24:
  v104 = 0xED00006E6F747475;
  sub_13B594();
  v105 = sub_13B564();
  v226 = v87;
  if ((v105 & 1) == 0)
  {
    v106 = v232;
    sub_8EC4();
    v107 = sub_9A0DC();
    sub_9A13C(v107, v108, v234);
    if (!v77)
    {
      sub_10BE7C();
      v117 = sub_10BF30();
      v118(v117);
      sub_10BF74();
      sub_10BCA0(v119, v120);
      sub_10BEB4();
      goto LABEL_29;
    }

    sub_928C(v106, &qword_1A1518);
  }

  sub_13BAB4();
  sub_677B8();
  v109 = sub_9F18();
  sub_47E64(v109, v110);
  strcpy(v111, "dismissButton");
  *(v111 + 7) = -4864;
  v104 = v241;
  *(v111 + 2) = v241;
  sub_9EF8();
  (*(v112 + 104))();
  swift_willThrow();
  sub_10BE7C();
  v113 = sub_10BF30();
  v114(v113);

  v106 = v239;
  v115 = sub_9A0DC();
  sub_53A8(v115, v116, 1, v237);
LABEL_29:
  v239 = *(v104 + 40);
  sub_10BCA0(v106, v50 + v239);
  v121 = v218;
  sub_10BF48();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_677B8();
    v122 = sub_9F18();
    sub_47E64(v122, v123);
    *v124 = 0x65746F6E746F6F66;
    v124[1] = 0xE800000000000000;
    v124[2] = v104;
    sub_9EF8();
    (*(v125 + 104))();
    swift_willThrow();
    sub_10BE7C();
    v238(v121, v66);

    sub_18BAC();
  }

  else
  {
    sub_10BF08();
    sub_10BE7C();
    sub_10BEE8();
    (*(v151 - 256))();
    sub_9414(&v247, &v248);
    sub_10BEB4();
  }

  v126 = v50 + *(v104 + 44);
  v127 = v249;
  *v126 = v248;
  *(v126 + 16) = v127;
  *(v126 + 32) = v250;
  v128 = v240;
  sub_10BF48();
  v129 = &enum case for JSONError.missingProperty(_:);
  if (sub_13B564())
  {
    goto LABEL_44;
  }

  v130 = v233;
  sub_13B514();
  v131 = sub_13B694();
  sub_9A13C(v130, 1, v131);
  if (v77)
  {
    sub_928C(v130, &qword_19B2B0);
    v128 = v240;
LABEL_44:
    v144 = sub_13BAB4();
    sub_677B8();
    v145 = swift_allocError();
    strcpy(v146, "marketingItem");
    *(v146 + 7) = -4864;
    *(v146 + 2) = v241;
    (*(*(v144 - 8) + 104))(v146, enum case for JSONError.missingProperty(_:), v144);
    swift_willThrow();

    sub_10BE8C();
    sub_10BF74();
    v147 = v238;
    (v238)();
    v147(v128, v145);
    v148 = 0;
    goto LABEL_45;
  }

  sub_4948(&qword_19E030);
  v132 = sub_13B684();
  (*(*(v131 - 8) + 8))(v130, v131);
  v128 = v240;
  if (!v132)
  {
    goto LABEL_44;
  }

  v233 = 0;
  sub_109894();
  sub_10BE8C();
  v134 = v133 + 8;
  sub_10BE98();
  v136 = *(v135 - 256);
  v136();
  sub_10B988();
  sub_10BEB4();
  *(v50 + *(&enum case for JSONError.missingProperty(_:) + 12)) = v137;
  v138 = v230;
  sub_10BF48();
  v139 = sub_13B564();
  v244 = v134;
  if (v139)
  {
LABEL_41:
    sub_13BAB4();
    sub_677B8();
    sub_9F18();
    *v141 = 0x7274654D65676170;
    v141[1] = 0xEB00000000736369;
    v141[2] = v129;
    sub_9EF8();
    (*(v142 + 104))();
    swift_willThrow();
    v160 = 0;
    (v136)(v230, v243);

    v143 = v229;
    v157 = v236;
    sub_53A8(v229, 1, 1, v236);
    v156 = v228;
    sub_13B5C4();
    sub_9A13C(v143, 1, v157);
    if (!v77)
    {
      sub_928C(v143, &qword_19A498);
    }

    v159 = v242;
    v158 = v227;
    goto LABEL_48;
  }

  v140 = v224;
  sub_10BA1C(v138, v258, v224);
  v129 = v236;
  sub_9A13C(v140, 1, v236);
  if (v77)
  {
    sub_928C(v140, &qword_19A498);
    sub_10BEB4();
    v136 = v238;
    goto LABEL_41;
  }

  sub_10BE98();
  (*(v152 - 256))();
  v153 = *(v235 + 32);
  v154 = v229;
  v153(v229, v140, v129);
  sub_53A8(v154, 0, 1, v129);
  v155 = v228;
  v153(v228, v154, v129);
  v156 = v155;
  v157 = v129;
  v158 = v227;
  v159 = v242;
  v160 = v233;
LABEL_48:
  v161 = 0x427972616D697270;
  sub_10BEB4();
  (*(v162 + 32))(v50 + v129[17], v156, v157);
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v163 = v225;
    sub_8D88();
    v164 = sub_9A0DC();
    sub_9A13C(v164, v165, v237);
    if (!v77)
    {
      v233 = v160;
      sub_10BE98();
      v171 = *(v170 - 256);
      v171();
      sub_10BF74();
      sub_10BD20(v172, v173);
      sub_10BEC0();
      sub_10BD20(v163, v50 + MEMORY[0x427972616D6972A4]);
      v174 = v220;
      sub_13B594();
      v175 = v174;
      v176 = sub_13B564();
      if ((v176 & 1) == 0)
      {
        v177 = v219;
        sub_8EC4();
        sub_9A13C(v177, 1, v234);
        if (!v77)
        {
          sub_10BE98();
          (*(v182 - 256))();
          sub_10BF74();
          sub_10BCA0(v183, v184);
          sub_10BEC0();
          v185 = v233;
          goto LABEL_58;
        }

        sub_928C(v177, &qword_1A1518);
        sub_10BEC0();
        v171 = v238;
      }

      sub_13BAB4();
      sub_677B8();
      sub_9F18();
      *v178 = 0x7261646E6F636573;
      v178[1] = 0xEF6E6F7474754279;
      v178[2] = 0x427972616D697270;
      sub_9EF8();
      (*(v179 + 104))();
      swift_willThrow();
      (v171)(v174, v243);

      v175 = v221;
      v180 = sub_9A0DC();
      sub_53A8(v180, v181, 1, v237);
      v185 = 0;
LABEL_58:
      sub_10BCA0(v175, v50 + MEMORY[0x427972616D6972A8]);
      v186 = v222;
      sub_10BF48();
      if ((sub_13B564() & 1) == 0)
      {
        v161 = v258;
        sub_139DB4();
        if (!v185)
        {
          v207 = sub_10BECC();
          MEMORY[0x7261646E6F636572](v207);
          v192 = sub_9414(&v247, &v248);
          v193 = v241;
          goto LABEL_62;
        }

        sub_10BEF8();
        sub_928C(&v247, &qword_19E960);
        sub_10BEC0();
      }

      sub_13BAB4();
      sub_677B8();
      v187 = sub_9F18();
      sub_47E64(v187, v188);
      *v189 = 0x656C746974;
      v189[1] = 0xE500000000000000;
      v189[2] = v161;
      sub_9EF8();
      (*(v190 + 104))();
      swift_willThrow();
      v191 = sub_10BECC();
      MEMORY[0x7261646E6F636572](v191);

      sub_18BAC();
      v193 = v161;
      v161 = v258;
LABEL_62:
      v194 = v50 + *(v193 + 60);
      v195 = v249;
      *v194 = v248;
      *(v194 + 16) = v195;
      *(v194 + 32) = v250;
      __chkstk_darwin(v192);
      sub_3AE1C();
      *(v196 - 16) = v161;
      v197 = v242;
      sub_9DD0(0x6F65646976, 0xE500000000000000, v198, sub_10BD84, v199, v200, v201, v202);
      v204 = v203;
      MEMORY[0x7261646E6F636572](v197, v186);
      v205 = v223;
      *(v50 + *(v241 + 16)) = v204;
      sub_10BE0C(v50, v205, type metadata accessor for ServiceProductPageDestination);
      sub_13B5A4();
      sub_9F94();
      (*(v206 + 8))(v161);
      return sub_10BDB0(v50);
    }

    sub_928C(v163, &qword_19A500);
    sub_10BEB4();
  }

  sub_13BAB4();
  sub_677B8();
  sub_9F18();
  strcpy(v166, "primaryButton");
  *(v166 + 7) = -4864;
  *(v166 + 2) = v129;
  sub_9EF8();
  (*(v167 + 104))();
  swift_willThrow();

  v168 = v243;
  v169 = v238;
  v238(v159, v243);
  v169(v158, v168);
  v148 = 1;
LABEL_45:
  sub_13B5A4();
  sub_9F94();
  (*(v149 + 8))(v258);

  sub_10BD10(v212, v215, v214, v209, v210, v211, v213);
  sub_928C(v50 + 72, &qword_19E960);

  sub_928C(v50 + v239, &qword_19A500);
  result = sub_928C(v126, &qword_19E960);
  if (v148)
  {
    v150 = v241;

    return (*(v235 + 8))(v50 + *(v150 + 17), v236);
  }

  return result;
}

uint64_t sub_10B854@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_4948(&qword_19B2B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_13B514();
  v5 = sub_13B694();
  if (sub_52E0(v4, 1, v5) == 1)
  {
    result = sub_928C(v4, &qword_19B2B0);
    v7 = 0;
  }

  else
  {
    v7 = sub_13B684();
    result = (*(*(v5 - 8) + 8))(v4, v5);
  }

  *a1 = v7;
  return result;
}

id sub_10B988()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_4948(&qword_19E030);
  isa = sub_13BAF4().super.isa;

  v2 = [v0 initWithDictionary:isa];

  return v2;
}

uint64_t sub_10BA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B5B4();
  v14 = sub_13B5D4();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t sub_10BBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_8C00(a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result);
  return result;
}

uint64_t sub_10BC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_8C00(a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result);
  return result;
}

double sub_10BC4C@<D0>(uint64_t a1@<X8>)
{
  sub_9054();
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_10BCA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19A500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10BD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 < 0)
  {
  }

  return result;
}

uint64_t sub_10BD20(uint64_t a1, uint64_t a2)
{
  v4 = _s6ButtonVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10BDB0(uint64_t a1)
{
  v2 = type metadata accessor for ServiceProductPageDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10BE0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10BE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 < 0)
  {
  }

  return result;
}

double sub_10BEF8()
{
  *(v0 - 224) = 0;
  result = 0.0;
  *(v0 - 256) = 0u;
  *(v0 - 240) = 0u;
  return result;
}

uint64_t sub_10BF08()
{

  return sub_139DB4();
}

uint64_t sub_10BF48()
{

  return sub_13B594();
}

uint64_t sub_10BF80@<X0>(uint64_t a1@<X8>)
{

  return sub_9D58(v2 + a1, v1 + a1, v3);
}

double sub_10BFA0@<D0>(id a1@<X1>, char a2@<W0>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = [a1 traitCollection];
    v15 = sub_13BDE4();

    v32 = &type metadata for Double;
    v33 = &protocol witness table for Double;
    *&v31 = 0x4069000000000000;
    v29 = &type metadata for Double;
    v30 = &protocol witness table for Double;
    v27 = &protocol witness table for Double;
    *&v28 = 0x4074A00000000000;
    v26 = &type metadata for Double;
    *&v25 = 0;
    if (qword_19A170 != -1)
    {
      sub_10C55C();
    }

    v5 = sub_13A2A4();
    v6 = sub_10C5AC(v5, qword_1B2BA0);
    v23 = v6;
    v24 = &protocol witness table for StaticDimension;
    sub_CC08(&v22);
    v20 = v5;
    v21 = &protocol witness table for FontSource;
    sub_CC08(&v19);
    sub_9EF8();
    v8 = *(v7 + 16);
    sub_10C57C();
    v8();
    sub_13A444();
    v9 = 90.0;
    if ((v15 & 1) == 0)
    {
      v9 = 24.0;
    }

    v20 = &type metadata for Double;
    v21 = &protocol witness table for Double;
    *&v19 = v9;
    *(a3 + 224) = v6;
    *(a3 + 232) = &protocol witness table for StaticDimension;
    sub_CC08((a3 + 200));
    v17 = v5;
    v18 = &protocol witness table for FontSource;
    sub_CC08(v16);
    sub_10C57C();
    v8();
    sub_13A444();
    *(a3 + 304) = &type metadata for Double;
    *(a3 + 312) = &protocol witness table for Double;
    *(a3 + 280) = 0x4014000000000000;
    *(a3 + 344) = v6;
    *(a3 + 352) = &protocol witness table for StaticDimension;
    sub_CC08((a3 + 320));
    v17 = v5;
    v18 = &protocol witness table for FontSource;
    sub_CC08(v16);
    sub_10C57C();
    v8();
    sub_10C5D8();
    sub_21520(&v31, a3);
    sub_21520(&v28, a3 + 40);
    sub_21520(&v25, a3 + 80);
    sub_21520(&v22, a3 + 120);
    sub_21520(&v19, a3 + 160);
    result = 0.0;
    *(a3 + 240) = xmmword_14B600;
    *(a3 + 256) = xmmword_14B600;
    *(a3 + 272) = 0;
  }

  else
  {
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0x4069000000000000;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4071800000000000;
    *(a3 + 104) = &type metadata for Double;
    *(a3 + 112) = &protocol witness table for Double;
    *(a3 + 80) = 0;
    if (qword_19A170 != -1)
    {
      sub_10C55C();
    }

    v11 = sub_13A2A4();
    v12 = sub_10C5AC(v11, qword_1B2BA0);
    *(a3 + 144) = v12;
    *(a3 + 152) = &protocol witness table for StaticDimension;
    sub_CC08((a3 + 120));
    v32 = v11;
    v33 = &protocol witness table for FontSource;
    sub_CC08(&v31);
    sub_9EF8();
    v14 = *(v13 + 16);
    sub_10C57C();
    v14();
    sub_13A444();
    *(a3 + 184) = &type metadata for Double;
    *(a3 + 192) = &protocol witness table for Double;
    *(a3 + 160) = 0x4038000000000000;
    *(a3 + 224) = v12;
    *(a3 + 232) = &protocol witness table for StaticDimension;
    sub_CC08((a3 + 200));
    v32 = v11;
    v33 = &protocol witness table for FontSource;
    sub_CC08(&v31);
    sub_10C57C();
    v14();
    sub_13A444();
    *(a3 + 304) = &type metadata for Double;
    *(a3 + 312) = &protocol witness table for Double;
    *(a3 + 280) = 0x4014000000000000;
    *(a3 + 344) = v12;
    *(a3 + 352) = &protocol witness table for StaticDimension;
    sub_CC08((a3 + 320));
    v32 = v11;
    v33 = &protocol witness table for FontSource;
    sub_CC08(&v31);
    sub_10C57C();
    v14();
    sub_13A444();
    result = 0.0;
    *(a3 + 240) = xmmword_14B600;
    *(a3 + 256) = xmmword_14B600;
    *(a3 + 272) = 1;
  }

  return result;
}

uint64_t sub_10C384@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    v4 = a3 + -400.0;
    sub_10C588(&type metadata for Double);
    if (qword_19A170 != -1)
    {
      sub_10C55C();
    }

    v5 = v4 * 0.5;
    v6 = sub_13A2A4();
    *(a2 + 208) = sub_10C5AC(v6, qword_1B2BA0);
    *(a2 + 216) = &protocol witness table for StaticDimension;
    sub_CC08((a2 + 184));
    v14 = v6;
    v15 = &protocol witness table for FontSource;
    sub_CC08(v13);
    sub_9EF8();
    sub_10C57C();
    v7();
    result = sub_10C5D8();
    v9 = xmmword_14C240;
    v10 = 27.0;
  }

  else
  {
    sub_10C588(&type metadata for Double);
    if (qword_19A170 != -1)
    {
      sub_10C55C();
    }

    v11 = sub_13A2A4();
    *(a2 + 208) = sub_10C5AC(v11, qword_1B2BA0);
    *(a2 + 216) = &protocol witness table for StaticDimension;
    sub_CC08((a2 + 184));
    v14 = v11;
    v15 = &protocol witness table for FontSource;
    sub_CC08(v13);
    sub_9EF8();
    sub_10C57C();
    v12();
    result = sub_13A444();
    v9 = xmmword_14C230;
    v5 = 24.0;
    v10 = 21.0;
  }

  *(a2 + 80) = v10;
  *(a2 + 88) = v9;
  *(a2 + 104) = v9;
  *(a2 + 112) = 0;
  *(a2 + 120) = v5;
  *(a2 + 128) = 0;
  *(a2 + 136) = v5;
  return result;
}

uint64_t sub_10C55C()
{

  return swift_once();
}

void sub_10C588(uint64_t a1@<X8>)
{
  v2[3] = a1;
  v2[4] = v1;
  *v2 = 0;
  v2[8] = a1;
  v2[9] = v1;
  v2[5] = 0x4069000000000000;
  v2[21] = a1;
  v2[22] = v1;
  v2[18] = 0x4024000000000000;
}

uint64_t sub_10C5AC(uint64_t a1, uint64_t a2)
{
  sub_4910(a1, a2);

  return sub_13A434();
}

uint64_t sub_10C5D8()
{

  return sub_13A444();
}

char *sub_10C5F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_hasSubmittedImpressionMetrics) = 0;
  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_contentView) = 0;
  v7 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetchSubject;
  sub_4948(&qword_1A15B8);
  swift_allocObject();
  *(v2 + v7) = sub_13A644();
  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetchSubscription) = 0;
  v8 = (v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetcher);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButton;
  v10 = type metadata accessor for DynamicButton();
  v11 = [objc_allocWithZone(v10) init];
  v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 0;
  sub_8F358(0);
  *(v3 + v9) = v11;
  v12 = (v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButtonHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButton;
  v14 = [objc_allocWithZone(v10) init];
  v14[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 2;
  sub_8F358(2);
  *(v3 + v13) = v14;
  v15 = (v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButtonHandler);
  *v15 = 0;
  v15[1] = 0;
  sub_10FB7C(a1, v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_destination);
  *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_impressionsCalculator) = a2;
  v16 = objc_allocWithZone(UIScrollView);

  v17 = sub_110FF4();
  v19 = [v16 v18];
  *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_scrollView) = v19;
  v20 = objc_allocWithZone(type metadata accessor for ServiceProductTextDetailsView());
  v21 = sub_110FF4();
  v24 = [v22 v23];
  *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_detailsView) = v24;
  v25 = sub_AA804();
  v28 = objc_msgSendSuper2(v26, v27, v25, v3, ObjectType);
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 clearColor];
  [v30 setBackgroundColor:v31];

  v32 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_scrollView;
  [*&v30[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_scrollView] setContentInsetAdjustmentBehavior:2];
  [v30 addSubview:*&v30[v32]];
  [*&v30[v32] addSubview:*&v30[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_detailsView]];
  [*&v30[v32] addSubview:*&v30[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButton]];
  [*&v30[v32] addSubview:*&v30[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButton]];
  [v30 setAccessibilityViewIsModal:1];

  sub_10C900();

  sub_110FCC();
  sub_110F68(a1, v33);
  return v30;
}

uint64_t sub_10C900()
{
  v52 = sub_4948(&qword_1A15C0);
  __chkstk_darwin(v52);
  v48 = v38 - v1;
  v2 = sub_4948(&qword_1A15C8);
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  __chkstk_darwin(v2);
  v49 = v38 - v4;
  v5 = sub_4948(&qword_1A15D0);
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin(v5);
  v50 = v38 - v7;
  v8 = sub_4948(&qword_1A15D8);
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  __chkstk_darwin(v8);
  v51 = v38 - v10;
  v11 = sub_4948(&unk_19EBE0);
  __chkstk_darwin(v11 - 8);
  v13 = v38 - v12;
  v14 = sub_13BF24();
  v45 = *(v14 - 8);
  v46 = v14;
  __chkstk_darwin(v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_4948(&qword_1A15E0);
  v42 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v38 - v18;
  v44 = sub_4948(&qword_1A15E8);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v38[0] = v38 - v22;
  v59 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetchSubject);
  v23 = v59;

  v38[1] = sub_4948(&qword_1A15B8);
  sub_CBC0(&qword_1A15F0, &qword_1A15B8);
  sub_13A694();
  sub_13BF14();
  v43 = objc_opt_self();
  v24 = [v43 mainRunLoop];
  v59 = v24;
  v40 = sub_13BF04();
  sub_53A8(v13, 1, 1, v40);
  v38[3] = sub_CACC(0, &qword_19A5F8);
  sub_CBC0(&qword_1A15F8, &qword_1A15E0);
  v38[2] = sub_C944();
  v25 = v38[0];
  sub_13A684();
  sub_928C(v13, &unk_19EBE0);

  (*(v45 + 8))(v16, v46);
  (*(v42 + 8))(v19, v17);
  v59 = v23;
  sub_13A664();

  v26 = v41;
  v27 = v44;
  (*(v41 + 16))(v39, v25, v44);
  sub_CBC0(&qword_1A1600, &qword_1A15C0);
  sub_CBC0(&qword_1A1608, &qword_1A15E8);
  v28 = v49;
  sub_13A624();
  sub_CBC0(&qword_1A1610, &qword_1A15C8);
  sub_10FBE0(&qword_1A1618, type metadata accessor for CGSize);
  v29 = v50;
  v30 = v53;
  sub_13A6A4();
  (*(v54 + 8))(v28, v30);
  v31 = [v43 mainRunLoop];
  v59 = v31;
  sub_53A8(v13, 1, 1, v40);
  sub_CBC0(&qword_1A1620, &qword_1A15D0);
  v32 = v51;
  v33 = v55;
  sub_13A674();
  sub_928C(v13, &unk_19EBE0);

  (*(v56 + 8))(v29, v33);
  swift_allocObject();
  v34 = v47;
  swift_unknownObjectWeakInit();
  sub_CBC0(&qword_1A1628, &qword_1A15D8);
  v35 = v57;
  v36 = sub_13A6B4();

  (*(v58 + 8))(v32, v35);
  (*(v26 + 8))(v25, v27);
  *(v34 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetchSubscription) = v36;
}

void sub_10D1FC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_hasSubmittedImpressionMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_contentView) = 0;
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetchSubject;
  sub_4948(&qword_1A15B8);
  swift_allocObject();
  *(v0 + v2) = sub_13A644();
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetchSubscription) = 0;
  v3 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetcher);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButton;
  v5 = type metadata accessor for DynamicButton();
  v6 = [objc_allocWithZone(v5) init];
  v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 0;
  sub_8F358(0);
  *(v1 + v4) = v6;
  v7 = (v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButtonHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButton;
  v9 = [objc_allocWithZone(v5) init];
  v9[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 2;
  sub_8F358(2);
  *(v1 + v8) = v9;
  v10 = (v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButtonHandler);
  *v10 = 0;
  v10[1] = 0;
  sub_13C094();
  __break(1u);
}

id sub_10D384()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_contentView];
  if (v1)
  {
    v2 = v1;
    [v2 setAccessibilityElementsHidden:1];
    [*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_scrollView] addSubview:v2];
  }

  return [v0 setNeedsLayout];
}

void sub_10D404(void *a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_contentView;
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_contentView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_contentView;
    v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_contentView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_10D384();
}

id sub_10D488()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_13BDC4();

  if ((v3 & 1) == 0)
  {
    return &dword_0 + 1;
  }

  result = [v1 window];
  if (result)
  {
    v5 = result;
    [result frame];
    Width = CGRectGetWidth(v8);
    [v1 bounds];
    v7 = CGRectGetWidth(v9);

    return (v7 < Width);
  }

  return result;
}

uint64_t sub_10D544()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_13A314();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65.receiver = v1;
  v65.super_class = ObjectType;
  objc_msgSendSuper2(&v65, "layoutSubviews", v5);
  [v1 bounds];
  result = CGRectIsEmpty(v66);
  if ((result & 1) == 0)
  {
    v49 = v3;
    v47 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_scrollView];
    v9 = sub_AA804();
    [v10 v11];
    v12 = [v1 traitCollection];
    v13 = sub_13BDE4();

    v48 = v4;
    if (v13)
    {
      v14 = sub_10D488();
      sub_10BFA0(v1, v14 & 1, v50);
      v15 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_contentView];
      if (v15)
      {
        v16 = sub_CACC(0, &qword_19E9A8);
        v17 = &protocol witness table for UIView;
      }

      else
      {
        v17 = 0;
        v16 = 0;
      }

      v23 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_detailsView];
      v24 = type metadata accessor for ServiceProductTextDetailsView();
      v58 = &protocol witness table for UIView;
      v57 = v24;
      v56 = v23;
      v25 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButton];
      v60 = type metadata accessor for DynamicButton();
      v59 = v25;
      v26 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButton];
      v63 = v60;
      v64 = &protocol witness table for UIView;
      v61 = &protocol witness table for UIView;
      v62 = v26;
      memcpy(v51, v50, 0x168uLL);
      v51[45] = v15;
      v52 = 0;
      v53 = 0;
      v54 = v16;
      v55 = v17;
      v27 = v15;
      v28 = v23;
      v29 = v25;
      v30 = v26;
      sub_AA804();
      AXServiceSubscribePageLayout.placeChildren(relativeTo:in:)(v1);
      sub_110464(v51);
    }

    else
    {
      v18 = sub_10D488();
      [v1 bounds];
      sub_10C384(v18 & 1, v50, v19);
      v20 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_contentView];
      if (v20)
      {
        v21 = sub_CACC(0, &qword_19E9A8);
        v22 = &protocol witness table for UIView;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      v31 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_detailsView];
      v32 = type metadata accessor for ServiceProductTextDetailsView();
      v51[37] = &protocol witness table for UIView;
      v51[36] = v32;
      v51[33] = v31;
      v33 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButton];
      v51[41] = type metadata accessor for DynamicButton();
      v51[38] = v33;
      v34 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButton];
      v52 = v51[41];
      v53 = &protocol witness table for UIView;
      v51[42] = &protocol witness table for UIView;
      v51[43] = v34;
      memcpy(v51, v50, 0xE0uLL);
      v51[28] = v20;
      v51[29] = 0;
      v51[30] = 0;
      v51[31] = v21;
      v51[32] = v22;
      v35 = v20;
      v36 = v31;
      v37 = v33;
      v38 = v34;
      sub_AA804();
      ServiceSubscribePageLayout.placeChildren(relativeTo:in:)();
      sub_11026C(v51);
    }

    sub_13A2D4();
    [v47 setContentSize:?];
    v39 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_contentView];
    v40 = v48;
    if (v39)
    {
      sub_139CF4();
      v41 = swift_dynamicCastClass();
      if (v41)
      {
        v42 = v41;
        v43 = v39;
        [v1 bounds];
        sub_10FC60(v1, v1, v44, v45);
        sub_10D9C8(v42);
      }
    }

    v46 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_hasSubmittedImpressionMetrics;
    if (v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_hasSubmittedImpressionMetrics])
    {
      return (*(v40 + 8))(v7, v49);
    }

    else
    {
      sub_10DA54();
      result = (*(v40 + 8))(v7, v49);
      v1[v46] = (v1[v46] & 1) == 0;
    }
  }

  return result;
}

uint64_t sub_10D9C8(void *a1)
{
  result = (*(&stru_68.reserved2 + (swift_isaMask & *a1)))();
  if ((result & 1) == 0)
  {
    return sub_13A634();
  }

  return result;
}

uint64_t sub_10DA54()
{
  v1 = v0;
  v2 = sub_4948(&qword_19A500);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_4948(&qword_19A350);
  __chkstk_darwin(v5 - 8);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_13B7A4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v27 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_destination;
  v17 = type metadata accessor for ServiceProductPageDestination();
  v18 = *(v17 + 52);
  v19 = _s6ButtonVMa();
  sub_9D58(v16 + v18 + *(v19 + 28), v9, &qword_19A350);
  v20 = sub_52E0(v9, 1, v10);
  v26 = v1;
  if (v20 == 1)
  {
    sub_928C(v9, &qword_19A350);
    p_align = (&stru_193FE8 + 24);
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    [*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButton) frame];
    sub_13BA34();
    (*(v11 + 8))(v15, v10);
    p_align = &stru_193FE8.align;
  }

  sub_9D58(v16 + *(v17 + 56), v4, &qword_19A500);
  if (sub_52E0(v4, 1, v19) == 1)
  {
    sub_928C(v4, &qword_19A500);
    v22 = v28;
    sub_53A8(v28, 1, 1, v10);
    return sub_928C(v22, &qword_19A350);
  }

  v22 = v28;
  sub_9D58(&v4[*(v19 + 28)], v28, &qword_19A350);
  sub_110F68(v4, _s6ButtonVMa);
  if (sub_52E0(v22, 1, v10) == 1)
  {
    return sub_928C(v22, &qword_19A350);
  }

  v24 = v27;
  (*(v11 + 32))(v27, v22, v10);
  [*(v26 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButton) *(p_align + 440)];
  sub_13BA34();
  return (*(v11 + 8))(v24, v10);
}

id sub_10DE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  sub_10E768(a1, a2, a3, a4, a5, a6, a7);
  v17 = *(a1 + 32);
  v60[0] = *(a1 + 16);
  v60[1] = v17;
  v60[2] = *(a1 + 48);
  v61 = *(a1 + 64);
  v18 = type metadata accessor for ServiceProductPageDestination();
  sub_113EB8(v60, a1 + v18[15], a1 + 72, a1 + v18[11], a7);
  v19 = *(a1 + v18[16]);
  if (v19 || *a1)
  {
    [v8 bounds];
    sub_10FC60(v8, v8, v20, v21);
    if (v19)
    {
      v22 = *a1;
      if (*a1)
      {
        sub_139FF4();

        if ((sub_139FC4() & 1) == 0)
        {
          if (qword_19A018 != -1)
          {
            sub_CCD4();
          }

          v27 = sub_139A14();
          sub_4910(v27, qword_1B2B00);
          sub_4948(&unk_19E010);
          v28 = sub_1399C4();
          sub_CCF4(v28);
          sub_111018();
          v29 = swift_allocObject();
          sub_111024(v29, xmmword_13E660);
          v30 = AMSLogKey();
          if (v30)
          {
            v31 = v30;
            sub_13BB84();
          }

          sub_139994();

          sub_3C04(v58);
          sub_139974();
          v59 = sub_139F94();
          v58[0] = v22;

          sub_139984();
          sub_928C(v58, &unk_1A06F0);
          sub_1399F4();

          sub_11100C();
          sub_10EA68(v55, v56);

          goto LABEL_30;
        }
      }

      else
      {
      }

      if (qword_19A018 != -1)
      {
        sub_CCD4();
      }

      v23 = sub_139A14();
      sub_4910(v23, qword_1B2B00);
      sub_4948(&unk_19E010);
      v24 = sub_1399C4();
      sub_CCF4(v24);
      sub_111018();
      *(swift_allocObject() + 16) = xmmword_13E660;
      v59 = ObjectType;
      v58[0] = v8;
      v8;
      v25 = AMSLogKey();
      if (v25)
      {
        v26 = v25;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(v58);
      sub_139974();
      v59 = sub_139F74();
      v58[0] = v19;

      sub_139984();
      sub_928C(v58, &unk_1A06F0);
      sub_1399F4();

      sub_11100C();
      sub_10EBF4();
LABEL_30:

      return [v8 setNeedsLayout];
    }
  }

  else
  {
    v32 = [v8 safeAreaLayoutGuide];
    [v32 layoutFrame];
    v34 = v33;
    v36 = v35;

    sub_10FC60(v8, v8, v34, v36);
  }

  v37 = *a1;
  if (*a1)
  {
    v38 = qword_19A018;

    if (v38 != -1)
    {
      sub_CCD4();
    }

    v39 = sub_139A14();
    sub_4910(v39, qword_1B2B00);
    sub_4948(&unk_19E010);
    v40 = sub_1399C4();
    sub_CCF4(v40);
    sub_111018();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v59 = ObjectType;
    v58[0] = v8;
    v8;
    v41 = AMSLogKey();
    if (v41)
    {
      v42 = v41;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v58);
    sub_139974();
    v59 = sub_139F94();
    v58[0] = v37;

    sub_139984();
    sub_928C(v58, &unk_1A06F0);
    sub_1399F4();

    sub_11100C();
    sub_10EA68(v48, v49);
    goto LABEL_30;
  }

  if (qword_19A018 != -1)
  {
    sub_CCD4();
  }

  v43 = sub_139A14();
  sub_4910(v43, qword_1B2B00);
  sub_4948(&unk_19E010);
  v44 = sub_1399C4();
  sub_CCF4(v44);
  sub_111018();
  v45 = swift_allocObject();
  sub_111024(v45, xmmword_13E650);
  v46 = AMSLogKey();
  if (v46)
  {
    v47 = v46;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v58);
  sub_139974();
  sub_1399F4();

  v50 = [*(a1 + v18[12]) rawValues];
  sub_4948(&qword_19E030);
  v51 = sub_13BB04();

  sub_8500C(v51);

  v52 = sub_11100C();
  sub_10EFF0(v53, a6, v52, v54);

  return [v8 setNeedsLayout];
}

id sub_10E768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = a5;
  v37 = a4;
  v13 = sub_4948(&qword_19A500);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = (v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButtonHandler);
  v17 = *(v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButtonHandler);
  *v16 = a2;
  v16[1] = a3;
  sub_C9FC(v17);
  v18 = *(v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButton);
  v19 = type metadata accessor for ServiceProductPageDestination();
  v20 = *(v19 + 52);
  v38 = a1;
  v21 = a1 + v20;
  v23 = *(a1 + v20 + 104);
  v22 = *(a1 + v20 + 112);
  v24 = sub_162F0((v21 + 80), v23);

  sub_8F99C(v24, a7, v18, v23, v22);
  sub_9D58(v21 + 40, &v39, &qword_19E960);
  if (v40)
  {
    sub_9414(&v39, v41);
    sub_90588();
    sub_3C04(v41);
  }

  else
  {
    sub_928C(&v39, &qword_19E960);
  }

  [v18 addTarget:v8 action:"didTapPrimaryButton:" forControlEvents:64];
  sub_9D58(v38 + *(v19 + 56), v15, &qword_19A500);
  v25 = _s6ButtonVMa();
  if (sub_52E0(v15, 1, v25) == 1)
  {
    sub_928C(v15, &qword_19A500);
  }

  else
  {
    sub_4B14((v15 + 80), &v39);
    sub_110F68(v15, _s6ButtonVMa);
    sub_9414(&v39, v41);
    v26 = v37;
    if (v37)
    {
      v27 = (v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButtonHandler);
      v28 = *(v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButtonHandler);
      v29 = v36;
      *v27 = v37;
      v27[1] = v29;
      sub_C9EC(v26);

      sub_C9FC(v28);
      v30 = *(v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButton);
      v31 = v42;
      v32 = v43;
      v33 = sub_162F0(v41, v42);
      sub_8F99C(v33, a7, v30, v31, v32);
      [v30 addTarget:v8 action:"didTapSecondaryButton:" forControlEvents:64];
      sub_C9FC(v26);
      return sub_3C04(v41);
    }

    sub_3C04(v41);
  }

  return [*(v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButton) setHidden:1];
}

void sub_10EA68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(sub_139CF4());
  v7 = sub_139CE4();
  v13 = v7;
  sub_10D404(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = v9;
  *(v10 + 4) = a2;
  *(v10 + 5) = a1;
  v11 = (v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetcher);
  v12 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetcher);
  *v11 = sub_10FFA0;
  v11[1] = v10;

  sub_C9FC(v12);

  sub_10D9C8(v13);
}

void sub_10EBF4()
{
  v0 = sub_13B4A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_13B4E4();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4948(&unk_1A1630);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  sub_139FF4();

  sub_13A3D4();
  v10 = sub_13A3C4();
  sub_53A8(v9, 0, 1, v10);
  v11 = sub_139FE4();
  v12 = v11;
  sub_10D404(v11);
  if (sub_139FB4())
  {
    sub_CACC(0, &qword_19EBA0);
    v18 = sub_13BD84();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    aBlock[4] = sub_10FF14;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_E2448;
    aBlock[3] = &unk_18E140;
    v14 = _Block_copy(aBlock);
    v17 = v12;

    sub_13B4C4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10FBE0(&qword_19E060, &type metadata accessor for DispatchWorkItemFlags);
    sub_4948(&unk_19EBB0);
    sub_CBC0(&qword_19E070, &unk_19EBB0);
    sub_13BF64();
    v15 = v18;
    sub_13BD94();
    _Block_release(v14);

    (*(v1 + 8))(v3, v0);
    (*(v19 + 8))(v6, v4);
  }

  else
  {
  }
}

uint64_t sub_10EFF0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_4948(&unk_19E970);
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = v27 - v11;
  v13 = sub_13B994();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139DA4();
  sub_13B6B4();
  sub_13B9A4();
  v17 = v30;
  sub_13B9A4();
  v18 = (*(*v17 + 248))(a1, 0.0, 0.0, a3, a4);
  if (v18)
  {
    v19 = v18;
    sub_10F50C(v18, a2);
    v27[2] = v17[2];
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v27[1] = v5;
    v23 = v22;
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v21;
    v24[3] = v23;
    v24[4] = v20;
    sub_4948(&qword_19B350);
    sub_CBC0(&qword_19E980, &qword_19B350);
    sub_13B614();
    sub_13B624();

    sub_3C04(&v30);
    (*(v28 + 8))(v12, v29);
    v25 = v19;
    sub_10D404(v19);

    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_10F394(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      (*(&stru_68.reloff + (swift_isaMask & *Strong)))(a1, a2);
      if (a5)
      {
        v14 = *(&stru_108.size + (swift_isaMask & *v13));

        v14(a6, a5, v11);
      }

      else
      {
        (*&stru_108.segname[(swift_isaMask & *v13) + 16])(a6, v11);
      }
    }
  }

  return result;
}

uint64_t sub_10F50C(void *a1, uint64_t a2)
{
  v3 = v2;
  v25 = sub_13B7A4();
  v6 = *(v25 - 8);
  *&v7 = __chkstk_darwin(v25).n128_u64[0];
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 respondsToSelector:{"impressionItems", v7}];
  if (result)
  {
    v11 = [a1 impressionItems];
    sub_139E24();
    v12 = sub_13BC24();

    sub_13BA54();
    v13 = v12;
    result = sub_127E54(v12);
    if (result)
    {
      v14 = result;
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v23[1] = a2;
        v24 = a1;
        v15 = 0;
        v16 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_scrollView);
        v17 = v12 & 0xC000000000000001;
        v18 = (v6 + 8);
        v19 = v13;
        do
        {
          if (v17)
          {
            v20 = sub_13C004();
          }

          else
          {
            v20 = *(v13 + 8 * v15 + 32);
          }

          v21 = v20;
          ++v15;
          v22 = (*&stru_68.segname[(swift_isaMask & *v20) + 8])();
          sub_92E64();

          (*&stru_68.sectname[swift_isaMask & *v21])();
          [v24 convertRect:v16 toCoordinateSpace:?];
          sub_13BA34();

          (*v18)(v9, v25);
          v13 = v19;
        }

        while (v14 != v15);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_10F790()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v3 = v2;
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        sub_10F50C(v1, v3);
      }
    }
  }
}

void sub_10F868(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetcher];
    if (v5)
    {
      sub_C9EC(*&Strong[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_artworkFetcher]);

      v5(v1, v2);
      sub_C9FC(v5);
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for ServiceProductPageView()
{
  result = qword_1A15A8;
  if (!qword_1A15A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10FAA4()
{
  result = type metadata accessor for ServiceProductPageDestination();
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

uint64_t sub_10FB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceProductPageDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10FBE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10FC28()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_110FE4();

  return _swift_deallocObject(v0, v1, v2);
}

double sub_10FC60(void *a1, uint64_t a2, double a3, double a4)
{
  swift_getObjectType();
  v8 = [a1 traitCollection];
  v9 = sub_13BDE4();

  if (v9)
  {
    v10 = sub_10D488();
    sub_10BFA0(a1, v10 & 1, v34);
    v11 = *(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_contentView);
    if (v11)
    {
      v12 = sub_CACC(0, &qword_19E9A8);
      v13 = &protocol witness table for UIView;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v25 = *(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_detailsView);
    v26 = type metadata accessor for ServiceProductTextDetailsView();
    v42 = &protocol witness table for UIView;
    v41 = v26;
    v40 = v25;
    v27 = *(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButton);
    v44 = type metadata accessor for DynamicButton();
    v43 = v27;
    v28 = *(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButton);
    v47 = v44;
    v48 = &protocol witness table for UIView;
    v45 = &protocol witness table for UIView;
    v46 = v28;
    memcpy(__dst, v34, 0x168uLL);
    __dst[45] = v11;
    v36 = 0;
    v37 = 0;
    v38 = v12;
    v39 = v13;
    v29 = v11;
    v30 = v25;
    v31 = v27;
    v32 = v28;
    v24 = sub_1102C0(a1, __dst, a3, a4);
    sub_110464(__dst);
  }

  else
  {
    v14 = sub_10D488();
    sub_10C384(v14 & 1, __dst, a3);
    v15 = sub_13A534();
    v16 = sub_13A524();
    __dst[32] = &protocol witness table for LayoutViewPlaceholder;
    __dst[31] = v15;
    __dst[28] = v16;
    v17 = *(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_detailsView);
    v18 = type metadata accessor for ServiceProductTextDetailsView();
    __dst[37] = &protocol witness table for UIView;
    __dst[36] = v18;
    __dst[33] = v17;
    v19 = *(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_primaryButton);
    __dst[41] = type metadata accessor for DynamicButton();
    __dst[38] = v19;
    v20 = *(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_secondaryButton);
    v36 = __dst[41];
    v37 = &protocol witness table for UIView;
    __dst[42] = &protocol witness table for UIView;
    __dst[43] = v20;
    v21 = v17;
    v22 = v19;
    v23 = v20;
    v24 = sub_110030(a1, __dst, a3);
    sub_11026C(__dst);
  }

  return v24;
}

uint64_t sub_10FEE4()
{
  v1 = sub_110FE4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10FF38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10FF50()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10FFAC()
{
  swift_weakDestroy();
  v0 = sub_110FE4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10FFDC()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_110030(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_13C114();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v12 = *(a2 + 128);
  v21 = *(a2 + 112);
  v22 = v10;
  v19 = v12;
  v20 = v11;
  sub_4B14(a2 + 144, &v28);
  sub_4B14(a2 + 184, &v29);
  v27[0] = v22;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v19;
  sub_110B80(v27, v23);
  sub_4B14(a2 + 264, &v24);
  sub_4B14(a2 + 304, &v25);
  sub_4B14(a2 + 344, &v26);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  sub_162F0(a2, v13);
  sub_20038(v13, v14);
  sub_13A404();
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_110BDC(a3, a1, v23);
  v16 = *(a2 + 64);
  v17 = *(a2 + 72);
  sub_162F0((a2 + 40), v16);
  sub_20038(v16, v17);
  sub_13A404();
  v15(v9, v6);
  sub_110EC0(v23);
  sub_110F14(v27);
  return a3;
}

double sub_1102C0(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_13C114();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v13 = a2[4];
  sub_162F0(a2, v12);
  sub_20038(v12, v13);
  sub_13A404();
  v14 = *(v9 + 8);
  v14(v11, v8);
  sub_1104B8(a1, a2, a3, a4);
  v15 = a2[8];
  v16 = a2[9];
  sub_162F0(a2 + 5, v15);
  sub_20038(v15, v16);
  sub_13A404();
  v14(v11, v8);
  return a3;
}

double sub_1104B8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_13C114();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1106BC(a1, a2);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(a2 + 272);
  v20 = *(a2 + 240);
  v29 = *(a2 + 256);
  v30 = v20;
  sub_4B14(a2 + 280, &v39);
  sub_4B14(a2 + 320, &v40);
  *v35 = v12;
  v35[1] = v14;
  v35[2] = v16;
  v35[3] = v18;
  v37 = v29;
  v36 = v30;
  v38 = v19;
  sub_2F8F0(v35, v31);
  sub_4B14(a2 + 400, &v32);
  sub_4B14(a2 + 440, &v33);
  sub_4B14(a2 + 480, &v34);
  v21 = *(a2 + 104);
  v22 = *(a2 + 112);
  sub_162F0((a2 + 80), v21);
  sub_20038(v21, v22);
  sub_13A404();
  v24 = v23;
  (*(v9 + 8))(v11, v8);
  v25 = a4 - v24;
  sub_11089C(a3, a1, v31);
  v27 = v26;
  sub_2FC0C(v31);
  sub_2FC3C(v35);
  return v25 - v27;
}

double sub_1106BC(uint64_t a1, void *a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[23];
  v8 = a2[24];
  sub_162F0(a2 + 20, v7);
  sub_20038(v7, v8);
  sub_13A404();
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = a2[18];
  v11 = a2[19];
  sub_162F0(a2 + 15, v10);
  sub_20038(v10, v11);
  sub_13A404();
  v13 = v12;
  v9(v6, v3);
  v14 = a2[28];
  v15 = a2[29];
  sub_162F0(a2 + 25, v14);
  sub_20038(v14, v15);
  sub_13A404();
  v9(v6, v3);
  return v13;
}

double sub_11089C(double a1, uint64_t a2, void *a3)
{
  v5 = sub_13C114();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(a3 + 19, a3[22]);
  sub_13A394();
  v9 = a3[17];
  v10 = a3[18];
  sub_162F0(a3 + 14, v9);
  sub_20038(v9, v10);
  sub_13A404();
  v11 = *(v6 + 8);
  v11(v8, v5);
  sub_162F0(a3 + 24, a3[27]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 24, a3[27]);
    sub_13A394();
  }

  sub_162F0(a3 + 29, a3[32]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 29, a3[32]);
    sub_13A394();
  }

  sub_162F0(a3 + 24, a3[27]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 29, a3[32]);
    if ((sub_13A364() & 1) == 0)
    {
      v12 = a3[12];
      v13 = a3[13];
      sub_162F0(a3 + 9, v12);
      sub_20038(v12, v13);
      sub_13A404();
      v11(v8, v5);
    }
  }

  return a1;
}

double sub_110BDC(double a1, uint64_t a2, void *a3)
{
  v5 = sub_13C114();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(a3 + 18, a3[21]);
  sub_13A394();
  v9 = a3[16];
  v10 = a3[17];
  sub_162F0(a3 + 13, v9);
  sub_20038(v9, v10);
  sub_13A404();
  v11 = *(v6 + 8);
  v11(v8, v5);
  sub_162F0(a3 + 23, a3[26]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 23, a3[26]);
    sub_13A394();
  }

  sub_162F0(a3 + 28, a3[31]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 28, a3[31]);
    sub_13A394();
  }

  sub_162F0(a3 + 23, a3[26]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 28, a3[31]);
    if ((sub_13A364() & 1) == 0)
    {
      v12 = a3[11];
      v13 = a3[12];
      sub_162F0(a3 + 8, v12);
      sub_20038(v12, v13);
      sub_13A404();
      v11(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_110F68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_9F94();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_111024(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return v2;
}

id sub_111044(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_13BB54();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 withConfiguration:a4];

  return v7;
}

char *sub_1110C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_13B974();
  sub_9E94();
  v55 = v7;
  v56 = v6;
  __chkstk_darwin(v6);
  sub_9EC0();
  v54 = (v9 - v8);
  v68 = sub_13B994();
  sub_9E94();
  v65 = v10;
  __chkstk_darwin(v11);
  sub_9EC0();
  v61 = v13 - v12;
  v14 = sub_4948(&qword_19A498);
  sub_8AD98(v14);
  sub_171D0();
  __chkstk_darwin(v15);
  v63 = &v54 - v16;
  v17 = sub_13B834();
  v18 = sub_8AD98(v17);
  __chkstk_darwin(v18);
  sub_9EC0();
  v59 = v20 - v19;
  v21 = sub_13B6E4();
  sub_9E94();
  v67 = v22;
  __chkstk_darwin(v23);
  v58 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v54 - v26;
  v28 = type metadata accessor for ServiceProductPageDestination();
  v29 = sub_8AD98(v28);
  __chkstk_darwin(v29);
  sub_9EC0();
  v32 = v31 - v30;
  v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_didApply] = 0;
  *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_overlayViewController] = 0;
  sub_4948(&unk_1A16C0);
  sub_13B6B4();
  sub_13B9A4();
  v60 = v71;
  sub_13BA84();
  swift_unknownObjectRetain();
  v33 = sub_13BA64();
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_impressionsCalculator] = v33;
  sub_10FB7C(a1, v32);
  v34 = objc_allocWithZone(type metadata accessor for ServiceProductPageView());

  sub_A8FE8();
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageView] = sub_10C5F8(v32, v33);
  v66 = a1;
  sub_10FB7C(a1, &v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_destination]);
  v57 = OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_objectGraph;
  v35 = a2;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_objectGraph] = a2;
  sub_13B7E4();

  sub_13B9A4();
  v36 = v70;
  sub_13B9A4();
  v37 = *(v67 + 16);
  v62 = v27;
  v64 = v21;
  v37(v58, v27, v21);
  swift_unknownObjectRetain();

  sub_13B814();
  swift_unknownObjectRelease();
  v38 = sub_13B5D4();
  sub_53A8(v63, 1, 1, v38);
  sub_13B884();
  swift_allocObject();
  v60 = v36;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_metricsPresenter] = sub_13B844();
  v39 = v61;
  v63 = v35;
  sub_13B9A4();
  sub_139E44();
  v40 = v39;

  v41 = sub_139E34();

  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageRenderPresenter] = v41;
  if (v41)
  {
    v42 = v54;
    v43 = v55;
    *v54 = 1;
    v44 = v56;
    (*(v43 + 104))(v42, enum case for PageRenderMetricsPresenter.ActivityStart.fetchPrimaryData(_:), v56);
    sub_A8FC0();
    v46 = *(v45 + 152);

    v46(v42);

    (*(v43 + 8))(v42, v44);
  }

  v47 = type metadata accessor for ServiceProductPageViewController();
  v69.receiver = v3;
  v69.super_class = v47;
  v48 = objc_msgSendSuper2(&v69, "init");
  v49 = OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageView;
  v50 = *&v48[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageView];
  v51 = v48;
  [v50 setAlpha:0.0];
  [*(*&v48[v49] + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductPageView_scrollView) setDelegate:v51];
  swift_unknownObjectRelease();

  sub_113E1C();
  sub_113DA4(v66, v52);
  (*(v65 + 8))(v40, v68);
  (*(v67 + 8))(v62, v64);

  return v51;
}

void sub_1116E0()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_didApply) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_overlayViewController) = 0;
  sub_13C094();
  __break(1u);
}

id sub_11176C()
{
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_overlayViewController])
  {
    return [v0 unsetChildViewController:?];
  }

  return result;
}

void sub_111790()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    [v0 setChildViewController:v2];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      sub_12B7E0(0, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_11184C(void *a1)
{
  sub_11176C();
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_overlayViewController);
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_overlayViewController) = a1;
  v4 = a1;

  sub_111790();
}

id sub_1118F8()
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
  v6.super_class = type metadata accessor for ServiceProductPageViewController();
  v3 = objc_msgSendSuper2(&v6, "navigationItem");

  return v3;
}

void sub_1119C0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ServiceProductPageViewController();
  objc_msgSendSuper2(&v3, "loadView");
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_primaryBackground];
  [v1 setBackgroundColor:v2];
}

void sub_111AA4()
{
  v1 = v0;
  v2 = sub_13B964();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ServiceProductPageViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v9 = [v0 view];
  [v9 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageView]];

  sub_13B884();
  sub_13B904();
  if (*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v10 + 168))();
    v11 = &v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_destination];
    v12 = *(type metadata accessor for ServiceProductPageDestination() + 68);
    sub_13B5D4();
    sub_9F94();
    (*(v13 + 16))(v8, &v11[v12]);
    (*(v4 + 104))(v8, enum case for PageRenderMetricsPresenter.ActivityEnd.fetchPrimaryDataCompleted(_:), v2);
    sub_A8FC0();
    (*(v14 + 160))(v8);
    (*(v4 + 8))(v8, v2);
  }
}

uint64_t sub_111CDC()
{
  v4.receiver = v0;
  v4.super_class = sub_113E6C();
  objc_msgSendSuper2(&v4, "viewDidAppear:", v1 & 1);
  sub_13B854();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 184))();
  }

  return sub_13BA74();
}

uint64_t sub_111DC4()
{
  v4.receiver = v0;
  v4.super_class = sub_113E6C();
  objc_msgSendSuper2(&v4, "viewDidDisappear:", v1 & 1);
  sub_13B884();
  sub_13B924();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 192))();
  }

  return sub_13BA74();
}

void sub_111EBC()
{
  v3.receiver = v0;
  v3.super_class = sub_113E6C();
  objc_msgSendSuper2(&v3, "viewWillAppear:", v1 & 1);
  sub_13B884();
  sub_13B914();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 176))();
  }
}

uint64_t sub_111FA0(char a1)
{
  v2 = v1;
  v4 = sub_13B954();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ServiceProductPageViewController();
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  sub_13B944();
  sub_13B864();
  v11 = *(v6 + 8);
  result = v11(v10, v4);
  if (*&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageRenderPresenter])
  {
    sub_13B944();
    sub_A8FC0();
    (*(v13 + 200))(v10);
    return v11(v10, v4);
  }

  return result;
}

id sub_112140()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ServiceProductPageViewController();
  objc_msgSendSuper2(&v3, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageView];
  sub_112270();
  return [v1 setFrame:?];
}

void sub_1121E8()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ServiceProductPageViewController();
  objc_msgSendSuper2(&v1, "viewDidLayoutSubviews");
  sub_113600();
  sub_112A4C();
}

uint64_t sub_112270()
{
  v1 = [v0 view];
  [v1 safeAreaInsets];

  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    if ([v2 isNavigationBarHidden])
    {
    }

    else
    {
      v4 = [v3 navigationBar];
      [v4 frame];
    }
  }

  v5 = [v0 view];
  [v5 bounds];

  return sub_13BE34();
}

void sub_1123C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductPageViewController();
  objc_msgSendSuper2(&v2, "didReceiveMemoryWarning");
  sub_13B884();
  sub_13B934();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v1 + 208))();
  }
}

uint64_t sub_1124A4(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ServiceProductPageViewController();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!a1 || v4 != [a1 userInterfaceStyle])
  {
    sub_112CD8();
  }

  return sub_10D544();
}

uint64_t sub_1125C4()
{
  v2 = sub_4948(&qword_19A500);
  sub_8AD98(v2);
  sub_171D0();
  __chkstk_darwin(v3);
  sub_113E5C();
  v4 = v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_destination;
  v5 = type metadata accessor for ServiceProductPageDestination();
  sub_113944(v4 + *(v5 + 40), v0);
  v6 = _s6ButtonVMa();
  if (sub_52E0(v0, 1, v6) == 1)
  {
    return sub_928C(v0, &qword_19A500);
  }

  sub_4B14(v0, v8);
  sub_113E34();
  sub_9414(v8, v9);
  sub_113308(v9);

  return sub_3C04(v9);
}

uint64_t sub_1126D4()
{
  sub_113528();
  v1 = v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_destination;
  v2 = type metadata accessor for ServiceProductPageDestination();
  sub_113308(v1 + *(v2 + 52));
  sub_1D450();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[3] = sub_CACC(0, &qword_19EBA0);
  v4[4] = &protocol witness table for OS_dispatch_queue;
  v4[0] = sub_13BD84();
  sub_13B9F4();

  return sub_3C04(v4);
}

uint64_t sub_1127CC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_13BF54();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_928C(v9, &unk_1A06F0);
}

uint64_t sub_112858()
{
  v2 = sub_4948(&qword_19A500);
  sub_8AD98(v2);
  sub_171D0();
  __chkstk_darwin(v3);
  sub_113E5C();
  v4 = v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_destination;
  v5 = type metadata accessor for ServiceProductPageDestination();
  sub_113944(v4 + *(v5 + 56), v0);
  v6 = _s6ButtonVMa();
  if (sub_52E0(v0, 1, v6) == 1)
  {
    return sub_928C(v0, &qword_19A500);
  }

  sub_4B14(v0, &v10);
  sub_113E34();
  sub_9414(&v10, v13);
  sub_113528();
  sub_113308(v13);
  sub_1D450();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = sub_CACC(0, &qword_19EBA0);
  v9 = sub_13BD84();
  v11 = v8;
  v12 = &protocol witness table for OS_dispatch_queue;
  *&v10 = v9;
  sub_13B9F4();

  sub_3C04(v13);
  return sub_3C04(&v10);
}

void sub_1129E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1135A0();
  }
}

void sub_112A4C()
{
  v2 = sub_4948(&qword_19A498);
  sub_8AD98(v2);
  sub_171D0();
  __chkstk_darwin(v3);
  sub_113E5C();
  if ((*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_didApply) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_didApply) = 1;
    sub_112CD8();
    v4 = v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_destination;
    sub_1D450();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D450();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_impressionsCalculator);
    v8 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_objectGraph);

    sub_10DE7C(v4, sub_113D44, v5, sub_113D74, v6, v7, v8);

    sub_127F80(0, 0, 1.0, 0.1);
    sub_113600();
    v9 = *(type metadata accessor for ServiceProductPageDestination() + 68);
    v10 = sub_13B5D4();
    sub_9F94();
    (*(v11 + 16))(v0, v4 + v9, v10);
    sub_53A8(v0, 0, 1, v10);
    sub_13B874();
  }
}

uint64_t sub_112C48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_7D228(a1, v8);
    a3(v7);

    return sub_928C(v8, &unk_1A06F0);
  }

  return result;
}

void sub_112CD8()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = sub_4948(&qword_19A500);
  sub_8AD98(v9);
  sub_171D0();
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = sub_113E88();
  [v13 ams_configureWithTransparentBackground];

  v14 = sub_113E88();
  [v14 setLargeTitleDisplayMode:2];

  v15 = sub_113E88();
  [v15 setTitle:0];

  v16 = &v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_destination];
  v17 = type metadata accessor for ServiceProductPageDestination();
  sub_113944(&v16[*(v17 + 40)], v12);
  v18 = _s6ButtonVMa();
  LODWORD(v15) = sub_52E0(v12, 1, v18);
  sub_928C(v12, &qword_19A500);
  if (v15 != 1)
  {
    if (_UISolariumEnabled() && ((*(v4 + 104))(v8, enum case for FlagKeys.Solarium(_:), v2), v19 = sub_139A24(), (*(v4 + 8))(v8, v2), (v19 & 1) != 0))
    {
      v49 = type metadata accessor for ServiceProductPageViewController();
      v48[0] = v1;
      objc_allocWithZone(UIBarButtonItem);
      v20 = v1;
      v21 = sub_1139B4(24, v48, "dismissAction:");
      v22 = [v20 navigationController];
      if (v22 && (v23 = v22, v24 = [v22 navigationBar], v23, v25 = objc_msgSend(v24, "backItem"), v24, v25) && (v25, v26 = objc_msgSend(v20, "traitCollection"), v27 = objc_msgSend(v26, "userInterfaceIdiom"), v26, v27 != &dword_4 + 1))
      {
        v28 = [v20 navigationItem];
        sub_4948(&qword_1A0B00);
        v29 = sub_113EA0();
        *(v29 + 16) = xmmword_147310;
        *(v29 + 32) = v21;
        v30 = &selRef_setLeftBarButtonItems_;
      }

      else
      {
        v28 = [v20 navigationItem];
        sub_4948(&qword_1A0B00);
        v29 = sub_113EA0();
        *(v29 + 16) = xmmword_147310;
        *(v29 + 32) = v21;
        v30 = &selRef_setRightBarButtonItems_;
      }

      sub_113C84(v29, v28, v30);
    }

    else
    {
      sub_CACC(0, &unk_1A0710);
      if (qword_199E88 != -1)
      {
        swift_once();
      }

      v31 = qword_1B2960;
      v32 = qword_1B2960;
      v33 = sub_111044(0xD000000000000017, 0x8000000000150810, v31, 0);
      v34 = [v33 imageAsset];

      v47 = v16;
      if (v34)
      {
        v35 = v34;
        v36 = [v1 traitCollection];
        v37 = [v35 imageWithTraitCollection:v36];

        v38 = [v37 imageWithRenderingMode:1];
      }

      else
      {
        v38 = 0;
      }

      v28 = sub_113E88();
      sub_4948(&qword_1A0B00);
      v39 = sub_113EA0();
      *(v39 + 16) = xmmword_147310;
      v49 = type metadata accessor for ServiceProductPageViewController();
      v48[0] = v1;
      objc_allocWithZone(UIBarButtonItem);
      v40 = v38;
      v41 = v1;
      *(v39 + 32) = sub_113B04(v38, 0, v48, "dismissAction:");
      sub_113C84(v39, v28, &selRef_setRightBarButtonItems_);

      v16 = v47;
    }
  }

  if (deviceIsRunningInternalBuild())
  {
    if (([objc_opt_self() isRunningUnitTests] & 1) == 0)
    {
      if ([objc_opt_self() debugUIDynamicUIEnabled])
      {
        v42 = *(v16 + 15);
        if (v42)
        {
          if (*(v42 + 16))
          {

            v43 = sub_113E88();
            sub_4948(&qword_1A0B00);
            v44 = sub_113EA0();
            *(v44 + 16) = xmmword_147310;
            objc_allocWithZone(sub_139A84());
            v45 = v1;
            sub_A8FE8();
            *(v44 + 32) = sub_139A74();
            sub_113C84(v44, v43, &selRef_setLeftBarButtonItems_);
          }
        }
      }
    }
  }
}

uint64_t sub_113308(uint64_t a1)
{
  v3 = sub_139E74();
  v4 = sub_8AD98(v3);
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v8 = sub_13B834();
  sub_9E94();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_9EC0();
  v14 = v13 - v12;
  sub_139E84();
  v15 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductPageViewController_objectGraph);
  sub_13B6B4();
  sub_13B9A4();
  v16 = *&v20[0];
  sub_13B9A4();
  (*(v10 + 16))(v7, v14, v8);
  v17 = sub_4948(&unk_19B7E0);
  sub_53A8(v7, 0, 1, v17);
  memset(v20, 0, sizeof(v20));
  v21 = -1;
  v18 = (*(*v16 + 216))(a1, v7, v15, v20);

  sub_928C(v20, &unk_19E330);
  sub_113DA4(v7, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
  (*(v10 + 8))(v14, v8);
  return v18;
}

void sub_113528()
{
  v1 = [v0 view];
  [v1 setUserInteractionEnabled:0];

  v2 = objc_allocWithZone(type metadata accessor for LoadingViewController());
  v3 = sub_BBD88(2);

  sub_11184C(v3);
}

void sub_1135A0()
{
  v1 = [v0 view];
  [v1 setUserInteractionEnabled:1];

  sub_11184C(0);
}

id sub_1136F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ServiceProductPageViewController()
{
  result = qword_1A16A8;
  if (!qword_1A16A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11381C()
{
  result = type metadata accessor for ServiceProductPageDestination();
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

uint64_t sub_113944(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19A500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1139B4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    v8 = sub_162F0(a2, a2[3]);
    v9 = *(v6 - 8);
    __chkstk_darwin(v8);
    sub_9EC0();
    v12 = v11 - v10;
    (*(v9 + 16))(v11 - v10);
    v13 = sub_13C134();
    (*(v9 + 8))(v12, v6);
    sub_3C04(a2);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v3 initWithBarButtonSystemItem:a1 target:v13 action:a3];
  swift_unknownObjectRelease();
  return v14;
}

id sub_113B04(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = a3[3];
  if (v9)
  {
    v11 = sub_162F0(a3, a3[3]);
    v12 = *(v9 - 8);
    v13 = __chkstk_darwin(v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = sub_13C134();
    (*(v12 + 8))(v15, v9);
    sub_3C04(a3);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v5 initWithImage:a1 style:a2 target:v16 action:a4];

  swift_unknownObjectRelease();
  return v17;
}

void sub_113C84(uint64_t a1, void *a2, SEL *a3)
{
  sub_CACC(0, &qword_1A16D0);
  isa = sub_13BC14().super.isa;

  [a2 *a3];
}

uint64_t sub_113D10()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_113DA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_9F94();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_113E34()
{

  return sub_113DA4(v0, _s6ButtonVMa);
}

uint64_t sub_113E6C()
{

  return type metadata accessor for ServiceProductPageViewController();
}

id sub_113E88()
{
  v3 = *(v1 + 776);

  return [v0 v3];
}

uint64_t sub_113EA0()
{

  return swift_allocObject();
}

void sub_113EB8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v89 = a2;
  ObjectType = swift_getObjectType();
  v12 = *a1;
  v13 = *(a1 + 48);
  if ((v13 & 0x80000000) == 0)
  {
    if (BYTE2(v12))
    {
      v14 = sub_13C144();

      if ((v14 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v20 = sub_139E14();
    v21 = &v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_badgeAlignment];
    *v21 = v20;
    v21[8] = 0;
    v22 = [v6 traitCollection];
    sub_E67FC(SBYTE1(v12));

    goto LABEL_16;
  }

  v15 = ObjectType;
  v88 = a5;
  v16 = a1[4];
  v78 = *(a1 + 3);
  v80 = *(a1 + 5);
  v82 = *(a1 + 2);
  v84 = *(a1 + 1);
  HIDWORD(v74) = v13 & 0x7F;
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v17 = sub_139A14();
  v73 = sub_4910(v17, qword_1B2B00);
  sub_4948(&unk_19E010);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E660;
  v92 = v15;
  v90[0] = v6;
  v76 = v6;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v90);
  sub_139974();
  v92 = &type metadata for VisualAreaArtwork;
  v23 = swift_allocObject();
  v90[0] = v23;
  *(v23 + 16) = v12;
  *(v23 + 24) = v84;
  v25 = v78;
  v24 = v80;
  *(v23 + 32) = v82;
  *(v23 + 40) = v78;
  *(v23 + 48) = v16;
  *(v23 + 56) = v80;
  *(v23 + 64) = BYTE4(v74);

  sub_139984();
  sub_6BDB4(v90, &unk_1A06F0);
  sub_1399F4();

  if (v13)
  {
    [v76 bounds];
    Width = CGRectGetWidth(v98);
    if (Width <= 0.0)
    {
      Width = 256.0;
    }

    v16 = fmin(Width, 256.0);
    v24 = 0x40A7F00000000000;
    v25 = 0x404E000000000000;
  }

  v96 = &type metadata for VisualAreaImageView.SizeConstraints;
  v97 = &protocol witness table for VisualAreaImageView.SizeConstraints;
  *&v94 = v25;
  *(&v94 + 1) = v16;
  v95 = v24;
  v27 = *&v76[OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_visualAreaArtworkContainer];
  sub_E7358(&v94, &v91);
  v90[1] = v84;
  v93 = v82;
  LOBYTE(v90[0]) = 4;
  v28 = *(&stru_68.flags + (swift_isaMask & *v27));

  v37 = sub_116B24(v29, v30, v31, v32, v33, v34, v35, v36, v71, v73, v74, v76, v78, v80, v82, v84, a3, a4, v88, v89, v90[0]);
  v28(v37);
  sub_116A64(v90);
  sub_3C04(&v94);
  a3 = v85;
  a4 = v86;
LABEL_16:
  sub_B0F90(v89, &v94);
  if (v96)
  {
    sub_9414(&v94, v90);
    sub_114E30();
    sub_A69CC();
    v46 = sub_116B24(v38, v39, v40, v41, v42, v43, v44, v45, v71, v72, v74, v75, v77, v79, v81, v83, v85, v86, v87, v89, v90[0]);
    v47(v46);

    sub_3C04(v90);
  }

  else
  {
    sub_6BDB4(&v94, &qword_19E960);
    sub_114E30();
    sub_A69CC();
    (*(&stru_158.offset + (swift_isaMask & v48)))();
  }

  sub_B0F90(a3, &v94);
  if (v96)
  {
    sub_9414(&v94, v90);
    sub_114F74();
    sub_A69CC();
    v57 = sub_116B24(v49, v50, v51, v52, v53, v54, v55, v56, v71, v72, v74, v75, v77, v79, v81, v83, v85, v86, v87, v89, v90[0]);
    v58(v57);

    sub_3C04(v90);
  }

  else
  {
    sub_6BDB4(&v94, &qword_19E960);
    sub_114F74();
    sub_A69CC();
    (*(&stru_158.offset + (swift_isaMask & v59)))();
  }

  sub_B0F90(a4, &v94);
  if (v96)
  {
    sub_9414(&v94, v90);
    sub_1150B8();
    sub_A69CC();
    v68 = sub_116B24(v60, v61, v62, v63, v64, v65, v66, v67, v71, v72, v74, v75, v77, v79, v81, v83, v85, v86, v87, v89, v90[0]);
    v69(v68);

    sub_3C04(v90);
  }

  else
  {
    sub_6BDB4(&v94, &qword_19E960);
    sub_1150B8();
    sub_A69CC();
    (*(&stru_158.offset + (swift_isaMask & v70)))();
  }

  sub_1153D8();
}

uint64_t sub_1145E8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_13A2A4();
  sub_7E5D8(v7, a2);
  v8 = sub_4910(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_13A3E4();
  sub_4910(v9, a4);
  sub_2B538();
  (*(v10 + 16))(v8);
  sub_2B538();
  v12 = *(v11 + 104);

  return v12(v8);
}

uint64_t sub_1146EC()
{
  v0 = sub_13A2A4();
  sub_7E5D8(v0, qword_1B2BD0);
  v1 = sub_4910(v0, qword_1B2BD0);
  sub_E7E8();
  v2 = static UIApplication.window.getter();
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  if (CGRectGetWidth(v19) > 375.0)
  {

LABEL_4:
    v12 = UIFontTextStyleLargeTitle;
    goto LABEL_6;
  }

  v12 = UIFontTextStyleTitle1;

LABEL_6:
  *v1 = v12;
  *(v1 + 8) = UIFontWeightBold;
  v13 = enum case for FontUseCase.preferredFontDerivative(_:);
  v14 = sub_13A3E4();
  (*(*(v14 - 8) + 104))(v1, v13, v14);
  v15 = enum case for FontSource.useCase(_:);
  v16 = *(*(v0 - 8) + 104);

  return v16(v1, v15, v0);
}

id sub_1148AC(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_13A3E4();
  sub_7E5D8(v5, a2);
  v6 = sub_4910(v5, a2);
  v9 = *a3;
  *v6 = *a3;
  *(v6 + 8) = 0;
  sub_2B538();
  (*(v7 + 104))();

  return v9;
}

uint64_t sub_1149B0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_13A434();
  sub_7E5D8(v7, a2);
  sub_4910(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = sub_13A2A4();
  sub_4910(v8, a4);
  v11[3] = v8;
  v11[4] = &protocol witness table for FontSource;
  sub_CC08(v11);
  sub_2B538();
  (*(v9 + 16))();
  return sub_13A444();
}

uint64_t sub_114A9C()
{
  v0 = sub_13A434();
  sub_7E5D8(v0, qword_1A1708);
  sub_4910(v0, qword_1A1708);
  if (qword_19A180 != -1)
  {
    swift_once();
  }

  v1 = sub_13A2A4();
  v2 = sub_4910(v1, qword_1B2BD0);
  v5[3] = v1;
  v5[4] = &protocol witness table for FontSource;
  v3 = sub_CC08(v5);
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  return sub_13A444();
}

char *sub_114B94(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_badgeAlignment];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___bodyLabel] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___footnoteLabel] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___titleLabel] = 0;
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_visualAreaArtworkContainer;
  sub_139E04();
  v12 = sub_116AE0();
  v13 = objc_allocWithZone(v12);
  *&v4[v11] = sub_116AB8();
  v14 = type metadata accessor for ServiceBadgeView();
  v15 = objc_allocWithZone(v14);
  v16 = sub_A8FE8();
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_badgeWordmark] = sub_116788(1, v17, v18, v19, v16, v20, v21, v22, 16.0);
  v36.receiver = v4;
  v36.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  sub_116B30(v23, "setLayoutMargins:");
  sub_4948(&qword_19E998);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_13F4C0;
  v25 = OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_badgeWordmark;
  v26 = *&v23[OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_badgeWordmark];
  *(v24 + 56) = v14;
  *(v24 + 32) = v26;
  v27 = OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_visualAreaArtworkContainer;
  v28 = *&v23[OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_visualAreaArtworkContainer];
  *(v24 + 88) = v12;
  *(v24 + 64) = v28;
  v29 = v26;
  v30 = v28;
  v31 = sub_114E30();
  v32 = sub_139BB4();
  *(v24 + 120) = v32;
  *(v24 + 96) = v31;
  v33 = sub_114F74();
  *(v24 + 152) = v32;
  *(v24 + 128) = v33;
  v34 = sub_1150B8();
  *(v24 + 184) = v32;
  *(v24 + 160) = v34;
  sub_1166F0(v24, v23);
  [v23 setAccessibilityTraits:UIAccessibilityTraitStaticText];
  [v23 setAccessibilityContainerType:4];
  [v23 setIsAccessibilityElement:0];

  sub_1151FC();
  sub_1153D8();
  [v23 addSubview:*&v23[v25]];
  [v23 addSubview:*&v23[v27]];
  sub_116B08(OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___titleLabel);
  sub_116B08(OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___bodyLabel);
  sub_116B08(OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___footnoteLabel);

  return v23;
}

id sub_114E30()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    sub_139BB4();
    v5 = [objc_opt_self() ams_primaryText];
    if (qword_19A180 != -1)
    {
      swift_once();
    }

    v6 = sub_13A2A4();
    v7 = sub_4910(v6, qword_1B2BD0);
    v13[3] = v6;
    v13[4] = &protocol witness table for FontSource;
    v8 = sub_CC08(v13);
    (*(*(v6 - 8) + 16))(v8, v7, v6);
    v9 = sub_139BA4();
    v10 = *(v0 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_114F74()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___bodyLabel;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___bodyLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___bodyLabel);
  }

  else
  {
    v4 = v0;
    sub_139BB4();
    v5 = [objc_opt_self() ams_secondaryText];
    if (qword_19A170 != -1)
    {
      swift_once();
    }

    v6 = sub_13A2A4();
    v7 = sub_4910(v6, qword_1B2BA0);
    v13[3] = v6;
    v13[4] = &protocol witness table for FontSource;
    v8 = sub_CC08(v13);
    (*(*(v6 - 8) + 16))(v8, v7, v6);
    v9 = sub_139BA4();
    v10 = *(v0 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1150B8()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___footnoteLabel;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___footnoteLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___footnoteLabel);
  }

  else
  {
    v4 = v0;
    sub_139BB4();
    v5 = [objc_opt_self() ams_tertiaryText];
    if (qword_19A178 != -1)
    {
      swift_once();
    }

    v6 = sub_13A2A4();
    v7 = sub_4910(v6, qword_1B2BB8);
    v13[3] = v6;
    v13[4] = &protocol witness table for FontSource;
    v8 = sub_CC08(v13);
    (*(*(v6 - 8) + 16))(v8, v7, v6);
    v9 = sub_139BA4();
    v10 = *(v0 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_1151FC()
{
  v1 = sub_114F74();
  if (qword_19A170 != -1)
  {
    swift_once();
  }

  v2 = sub_13A2A4();
  sub_4910(v2, qword_1B2BA0);
  v3.super.isa = [v0 traitCollection];
  isa = v3.super.isa;
  sub_13A294(v3);

  sub_139B94();
  v5 = sub_1150B8();
  if (qword_19A178 != -1)
  {
    swift_once();
  }

  sub_4910(v2, qword_1B2BB8);
  v6.super.isa = [v0 traitCollection];
  v7 = v6.super.isa;
  sub_13A294(v6);

  sub_139B94();
  v10 = sub_114E30();
  if (qword_19A180 != -1)
  {
    swift_once();
  }

  sub_4910(v2, qword_1B2BD0);
  v8.super.isa = [v0 traitCollection];
  v9 = v8.super.isa;
  sub_13A294(v8);

  sub_139B94();
}

void sub_1153D8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_13BDE4();

  if (v3)
  {
    v4 = [v1 traitCollection];
    v5 = sub_13BDD4();

    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  if (v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_badgeAlignment + 8] & 1) != 0 || (v7 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_badgeAlignment], v8 = [v1 traitCollection], v9 = sub_13BDE4(), v8, (v9))
  {
    v10 = [v1 traitCollection];
    v11 = sub_13BDE4();

    v12 = ~v11 & 1;
  }

  else
  {
    v12 = v7;
  }

  sub_E6E8C(v12);
  v13 = sub_114F74();
  (*&stru_B8.sectname[swift_isaMask & *v13])(v6);

  v14 = sub_1150B8();
  (*&stru_B8.sectname[swift_isaMask & *v14])(v6);

  v15 = sub_114E30();
  (*&stru_B8.sectname[swift_isaMask & *v15])(v6);
}

void sub_11560C()
{
  v1 = v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_badgeAlignment;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___bodyLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___footnoteLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView____lazy_storage___titleLabel) = 0;
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_visualAreaArtworkContainer;
  sub_139E04();
  v3 = objc_allocWithZone(sub_116AE0());
  *(v0 + v2) = sub_116AB8();
  sub_13C094();
  __break(1u);
}

void sub_1156F8(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  sub_1151FC();
  v4 = [v1 traitCollection];
  v5 = sub_13BDE4();

  if (!a1 || ((sub_13BDE4() ^ v5) & 1) != 0 || (v6 = [v2 traitCollection], v7 = sub_13BDD4() & 1, v6, (sub_13BDD4() & 1) != v7))
  {
    sub_1153D8();
  }
}

double sub_115840()
{
  v0 = sub_13A514();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  sub_115AF0(v5 - v4);
  sub_13A464();
  v8 = v7;
  (*(v2 + 8))(v6, v0);
  return v8;
}

uint64_t sub_115974()
{
  ObjectType = swift_getObjectType();
  v2 = sub_13A314();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = sub_13A514();
  sub_9E94();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_9EC0();
  v15 = v14 - v13;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  sub_115AF0(v15);
  [v0 bounds];
  sub_13A474();
  (*(v4 + 8))(v8, v2);
  return (*(v11 + 8))(v15, v9);
}

uint64_t sub_115AF0@<X0>(uint64_t a1@<X8>)
{
  v60 = sub_13A4C4();
  v68 = *(v60 - 8);
  __chkstk_darwin(v60);
  v51 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_13A4F4();
  v67 = *(v64 - 8);
  __chkstk_darwin(v64);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_13A454();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_13A4B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19AFE8);
  v53 = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  v75[0] = v12;
  sub_20068();
  sub_4948(&qword_19AFF0);
  sub_1D268();
  v63 = v11;
  v54 = v8;
  sub_13BF64();
  v65 = a1;
  sub_13A4D4();
  v55 = v5;
  v13 = *(v5 + 104);
  v61 = v7;
  v56 = v4;
  v13(v7, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v4);
  v14 = *(v66 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_badgeWordmark);
  v76 = type metadata accessor for ServiceBadgeView();
  v77 = &protocol witness table for UIView;
  v75[0] = v14;
  v73 = &type metadata for CGFloat;
  v74 = &protocol witness table for CGFloat;
  v71 = 0;
  v72[0] = 0;
  v69 = 0u;
  v70 = 0u;
  v62 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v15 = v68;
  v16 = v68 + 104;
  v17 = *(v68 + 104);
  v18 = v51;
  v19 = v60;
  v17(v51);
  v20 = v14;
  v21 = v50;
  sub_13A4E4();
  v22 = *(v15 + 8);
  v68 = v15 + 8;
  v23 = v18;
  v24 = v19;
  v22(v18, v19);
  sub_6BDB4(&v69, &qword_19AFF8);
  sub_3C04(v72);
  sub_3C04(v75);
  sub_13A504();
  v25 = v67 + 8;
  v26 = *(v67 + 8);
  v27 = v64;
  v26(v21, v64);
  v28 = *(v66 + OBJC_IVAR____TtC20StoreDynamicUIPlugin29ServiceProductTextDetailsView_visualAreaArtworkContainer);
  v76 = sub_139F54();
  v77 = &protocol witness table for UIView;
  v75[0] = v28;
  v74 = &protocol witness table for CGFloat;
  v73 = &type metadata for CGFloat;
  v71 = 0;
  v72[0] = 0;
  v69 = 0u;
  v70 = 0u;
  v59 = v17;
  v52 = v16;
  (v17)(v23, v62, v24);
  v29 = v28;
  sub_13A4E4();
  v58 = v22;
  v22(v23, v24);
  sub_6BDB4(&v69, &qword_19AFF8);
  sub_3C04(v72);
  sub_3C04(v75);
  sub_13A504();
  v67 = v25;
  v57 = v26;
  v26(v21, v27);
  v30 = sub_114E30();
  v31 = sub_139BB4();
  v76 = v31;
  v77 = &protocol witness table for UIView;
  v75[0] = v30;
  if (qword_19A1A8 != -1)
  {
    swift_once();
  }

  v32 = sub_13A434();
  v33 = sub_4910(v32, qword_1A1708);
  v73 = v32;
  v74 = &protocol witness table for StaticDimension;
  v34 = sub_CC08(v72);
  v35 = *(*(v32 - 8) + 16);
  v35(v34, v33, v32);
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v36 = v23;
  v37 = v60;
  (v59)(v23, v62, v60);
  sub_13A4E4();
  v58(v23, v37);
  sub_6BDB4(&v69, &qword_19AFF8);
  sub_3C04(v72);
  sub_3C04(v75);
  sub_13A504();
  v57(v21, v64);
  v38 = sub_114F74();
  v76 = v31;
  v77 = &protocol witness table for UIView;
  v75[0] = v38;
  if (qword_19A198 != -1)
  {
    swift_once();
  }

  v39 = sub_4910(v32, qword_1A16D8);
  v73 = v32;
  v74 = &protocol witness table for StaticDimension;
  v40 = sub_CC08(v72);
  v35(v40, v39, v32);
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v41 = v60;
  (v59)(v23, v62, v60);
  sub_13A4E4();
  v58(v23, v41);
  sub_6BDB4(&v69, &qword_19AFF8);
  sub_3C04(v72);
  sub_3C04(v75);
  sub_13A504();
  v57(v21, v64);
  v42 = sub_1150B8();
  v76 = v31;
  v77 = &protocol witness table for UIView;
  v75[0] = v42;
  if (qword_19A1A0 != -1)
  {
    swift_once();
  }

  v43 = sub_4910(v32, qword_1A16F0);
  v73 = v32;
  v74 = &protocol witness table for StaticDimension;
  v44 = sub_CC08(v72);
  v35(v44, v43, v32);
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v45 = v60;
  (v59)(v23, v62, v60);
  v46 = v61;
  v47 = v63;
  sub_13A4E4();
  v58(v36, v45);
  sub_6BDB4(&v69, &qword_19AFF8);
  sub_3C04(v72);
  sub_3C04(v75);
  sub_13A504();
  v57(v21, v64);
  (*(v55 + 8))(v46, v56);
  return (*(v53 + 8))(v47, v54);
}

void sub_1166F0(uint64_t a1, void *a2)
{
  isa = sub_13BC14().super.isa;

  [a2 setAccessibilityElements:isa];
}

char *sub_116788(char a1, _BYTE *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  ObjectType = swift_getObjectType();
  v28[3] = a3;
  v28[4] = a4;
  *v28 = a9;
  v19 = OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_imageView;
  v20 = objc_allocWithZone(UIImageView);
  v21 = sub_A8FE8();
  *&a2[v19] = [v22 v23];
  sub_E7358(v28, &a2[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_referenceLineHeight]);
  a2[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_alignment] = a1;
  v27.receiver = a2;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", a5, a6, a7, a8);
  sub_116B30(v24, "setLayoutMargins:");
  v25 = [objc_opt_self() ams_primaryText];
  [v24 setTintColor:v25];

  [v24 addSubview:*&v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServiceBadgeView_imageView]];
  sub_3C04(v28);
  return v24;
}

double sub_116910()
{
  v0 = sub_13A514();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115AF0(v3);
  sub_13A464();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_116A2C()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_116AB8()
{

  return sub_139F44();
}

uint64_t sub_116AE0()
{

  return sub_139F54();
}

id sub_116B08@<X0>(uint64_t a1@<X8>)
{
  v4 = *&v2[a1];
  v5 = *(v1 + 3576);

  return [v2 v5];
}

id sub_116B30(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_116B50(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_184C70;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_116BA4(char a1)
{
  if (a1)
  {
    return 0x656E696C64616568;
  }

  else
  {
    return 0x53736E6F74747562;
  }
}

uint64_t sub_116C14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_116B50(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_116C44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_116BA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_116C80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_116B50(a1, a2);
  if (v7 == 2)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v18 = &type metadata for ServiceProductWelcomeLayout.BodySpacing;
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v3, 0xB0uLL);
    sub_1175A4(v3, __dst);
    sub_139984();
    sub_49C8(v17);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    sub_13BBC4(v20);
    v21._object = 0x800000000014E6F0;
    v21._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v21);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for ServiceProductWelcomeLayout.BodySpacing;
    a3[4] = &off_18E3F8;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0xB0uLL);
    return sub_1175A4(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v18 = &type metadata for ServiceProductWelcomeLayout.BodySpacing;
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v3, 0xB0uLL);
    sub_1175A4(v3, __dst);
    sub_139984();
    sub_49C8(v17);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for ServiceProductWelcomeLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11 & 1;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v13 = swift_allocObject();
      *a3 = v13;
      v14 = (v13 + 16);
      v15 = v3;
    }

    else
    {
      memcpy(__dst, (v3 + 88), 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = (v3 + 88);
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v17);
  }
}

void *sub_117160@<X0>(void *a1@<X8>)
{
  sub_139F34();
  sub_139F34();
  return memcpy(a1, __src, 0xB0uLL);
}

uint64_t sub_11734C@<X0>(uint64_t *a1@<X8>)
{
  sub_117160(__src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0xB0uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_117424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_11734C(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_1174CC()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_11753C()
{
  sub_3C04(v0 + 16);
  sub_3C04(v0 + 56);
  sub_3C04(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1175DC()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

_BYTE *storeEnumTagSinglePayload for ServiceProductWelcomeLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1176F8);
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

unint64_t sub_117734()
{
  result = qword_1A1778;
  if (!qword_1A1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1778);
  }

  return result;
}

id sub_117788(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9)
{
  v17 = 8.0;
  if (a2)
  {
    *&a1 = 8.0;
  }

  v32[3] = &type metadata for CGFloat;
  v32[4] = &protocol witness table for CGFloat;
  v32[0] = a1;
  sub_4F14C(a3, v31);
  v18 = 48.0;
  if (!(a4 | a5))
  {
    v18 = 24.0;
  }

  if (a6)
  {
    v19 = v18;
  }

  else
  {
    v19 = *&a4;
  }

  if (a6)
  {
    v20 = v18;
  }

  else
  {
    v20 = *&a5;
  }

  if ((a8 & 1) == 0)
  {
    v17 = *&a7;
  }

  sub_4F1A8(a9, v30);
  v21 = sub_4D884(v32, &type metadata for CGFloat);
  v22 = __chkstk_darwin(v21);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  v29 = v17;
  v26 = sub_118DC0(v24, v31, &v29, v30, 0, v19, v20, v9, &type metadata for CGFloat, &type metadata for CGFloat, &protocol witness table for CGFloat, &protocol witness table for CGFloat);
  sub_4F204(a9);
  sub_4F258(a3);
  sub_3C04(v32);
  return v26;
}

void sub_117964()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns) = 1;
  v1 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState) = 0;
  sub_13C094();
  __break(1u);
}

uint64_t sub_117A18()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns);
  v2 = v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics;
  result = sub_11A2DC();
  *(v2 + 176) = v1;
  *(v2 + 184) = 0;
  return result;
}

BOOL sub_117A90()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews);
  if (v1 >> 62)
  {
    v2 = sub_13C0C4();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  return v2 != 0;
}

uint64_t sub_117ADC()
{
  v1 = sub_13A314();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServicesGridView();
  v17.receiver = v0;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  sub_117E3C();
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics;
  swift_beginAccess();
  sub_A93A4(v0 + v6, &v16);

  v8 = sub_4C6E0(v7);

  v15 = v8;
  [v0 bounds];
  sub_119248(1, v0, &v15, v9, v10, v11, v12);
  sub_13A2E4();
  (*(v2 + 8))(v4, v1);
  return sub_11A0C4(&v15);
}

double sub_117CC4(uint64_t a1, double a2, CGFloat a3)
{
  v7 = OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics;
  swift_beginAccess();
  sub_A93A4(v3 + v7, &v15);

  v9 = sub_4C6E0(v8);

  v14 = v9;
  ObjectType = swift_getObjectType();
  sub_A958C(0, a1, &v14, ObjectType, 0.0, 0.0, a2, a3);
  v12 = v11;
  sub_11A0C4(&v14);
  return v12;
}

void sub_117E3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState);
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews);
  if (v2 >> 62)
  {
    v3 = sub_13C0C4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView);

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_13C004();
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      [*&v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel] setHidden:v1];
      [*&v7[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel] setHidden:v1];
      v8 = *v4;
      if (*v4)
      {

        v8(v7, v1);
        sub_C9FC(v8);
      }
    }
  }
}

uint64_t sub_117FB4()
{
  sub_118894();
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews) = &_swiftEmptyArrayStorage;
}

void sub_117FF4()
{
  if (*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState) == 1)
  {
    *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns);
    v2 = v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics;
    sub_11A2DC();
    *(v2 + 176) = v1;
    *(v2 + 184) = 0;
    *(v2 + 40) = 1;
    sub_117E3C();
  }
}

void sub_118068(uint64_t a1, char a2, char a3)
{
  if ((*(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState) & 1) == 0)
  {
    *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState) = 1;
    v7 = v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics;
    swift_beginAccess();
    *(v7 + 176) = a1;
    *(v7 + 184) = a2 & 1;
    *(v7 + 40) = a3 & 1;
    sub_117E3C();
  }
}

void sub_1180F8(uint64_t a1, uint64_t a2)
{
  sub_118894();
  v5 = *(a1 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_13C044();
    v7 = (a1 + 32);
    do
    {
      sub_118204(v7, v2, a2, &v8);
      sub_13C024();
      sub_13C054();
      sub_13C064();
      sub_13C034();
      v7 += 5;
      --v5;
    }

    while (v5);
    v6 = v9;
  }

  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews) = v6;

  sub_117E3C();

  sub_1187A4();
}

void sub_118204(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  type metadata accessor for ServiceDetailView();
  v7 = a1[3];
  v8 = a1[4];
  sub_162F0(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v11 = a1[3];
  v10 = a1[4];
  sub_162F0(a1, v11);
  v12 = (*(v10 + 24))(v11, v10);
  v14 = sub_E8BA8(0, 0, 1, 0, 1, v9, v12, v13);
  sub_E91B8(*(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize), *(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize + 8));
  v15 = a1[3];
  v16 = a1[4];
  sub_162F0(a1, v15);
  (*(v16 + 16))(v15, v16);
  sub_E9714();

  v17 = a1[3];
  v18 = a1[4];
  sub_162F0(a1, v17);
  (*(v18 + 40))(&v51, v17, v18);
  if (v52)
  {
    sub_9414(&v51, v53);
    sub_E9AB8(v53);
    sub_3C04(v53);
  }

  else
  {
    sub_CC68(&v51, &unk_19E320);
  }

  v19 = a1[3];
  v20 = a1[4];
  sub_162F0(a1, v19);
  (*(v20 + 48))(&v51, v19, v20);
  if (v52)
  {
    sub_9414(&v51, v53);
    (*(&stru_158.size + (swift_isaMask & **&v14[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel])))(v53, a3);
    sub_3C04(v53);
  }

  else
  {
    sub_CC68(&v51, &qword_19E960);
  }

  v21 = *&v14[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel];
  v22 = a1[3];
  v23 = a1[4];
  sub_162F0(a1, v22);
  (*(v23 + 32))(v53, v22, v23);
  (*(&stru_158.size + (swift_isaMask & *v21)))(v53, a3);
  sub_3C04(v53);
  sub_4948(&qword_1A17E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13E650;
  v25 = a1[3];
  v26 = a1[4];
  sub_162F0(a1, v25);
  v27 = *(v26 + 48);
  v28 = v14;
  v27(v53, v25, v26);
  v29 = v54;
  if (v54)
  {
    v30 = v55;
    sub_162F0(v53, v54);
    *(inited + 32) = (*(v30 + 72))(v29, v30);
    *(inited + 40) = v31;
    sub_3C04(v53);
  }

  else
  {
    sub_CC68(v53, &qword_19E960);
    *(inited + 32) = 0;
    *(inited + 40) = 0;
  }

  v32 = a1[3];
  v33 = a1[4];
  sub_162F0(a1, v32);
  (*(v33 + 32))(v53, v32, v33);
  v34 = v54;
  v35 = v55;
  sub_162F0(v53, v54);
  *(inited + 48) = (*(v35 + 72))(v34, v35);
  *(inited + 56) = v36;
  sub_3C04(v53);
  v37 = 0;
  v38 = &_swiftEmptyArrayStorage;
LABEL_11:
  v39 = (inited + 40 + 16 * v37);
  while (++v37 != 3)
  {
    v40 = v39 + 2;
    v41 = *v39;
    v39 += 2;
    if (v41)
    {
      v42 = *(v40 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_58C88();
        v38 = v45;
      }

      v43 = v38[2];
      if (v43 >= v38[3] >> 1)
      {
        sub_58C88();
        v38 = v46;
      }

      v38[2] = v43 + 1;
      v44 = &v38[2 * v43];
      *(v44 + 4) = v42;
      *(v44 + 5) = v41;
      goto LABEL_11;
    }
  }

  swift_setDeallocating();
  sub_118D0C(&qword_1A17F0);
  v53[0] = v38;
  sub_4948(&qword_19E550);
  sub_91D8C();
  v47 = sub_13BB34();
  v49 = v48;

  sub_118D5C(v47, v49, v28);

  *a4 = v28;
}

void sub_1187A4()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews];
  if (v1 >> 62)
  {
    v2 = sub_11A2C0();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_13C004();
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      [v0 addSubview:v4];
    }
  }
}

void sub_118894()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews);
  if (v1 >> 62)
  {
    v2 = sub_11A2C0();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_13C004();
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      [v4 removeFromSuperview];
    }
  }
}

void sub_118970()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews);
  if (v1 >> 62)
  {
    v2 = sub_11A2C0();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize);

    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_13C004();
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      v6 = v5;
      sub_E91B8(*v3, v3[1]);
    }
  }
}

id sub_118AD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServicesGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *storeEnumTagSinglePayload for ServicesGridView.ServiceViewState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x118C68);
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

unint64_t sub_118CA4()
{
  result = qword_1A17E0;
  if (!qword_1A17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A17E0);
  }

  return result;
}

uint64_t sub_118D0C(uint64_t *a1)
{
  sub_4948(a1);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v1, 32, 7);
}

void sub_118D5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_13BB54();

  [a3 setAccessibilityLabel:v4];
}

id sub_118DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a5;
  v38 = a4;
  v36 = a2;
  v17 = *(a10 - 8);
  v35 = a11;
  __chkstk_darwin(a1);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  v24 = *(v23 - 8);
  __chkstk_darwin(v25);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v31 = &v35 - v30;
  (*(v24 + 32))(&v35 - v30, v29);
  (*(v17 + 32))(v22, a3, a10);
  v32 = objc_allocWithZone(type metadata accessor for ServicesGridView());
  (*(v24 + 16))(v27, v31, a9);
  (*(v17 + 16))(v19, v22, a10);
  v33 = sub_119054(v27, v36, v19, v38, v37 & 1, v32, a9, a10, a6, a7, v35, a12);
  (*(v17 + 8))(v22, a10);
  (*(v24 + 8))(v31, a9);
  return v33;
}

id sub_119054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, _BYTE *a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  v31[3] = a7;
  v31[4] = a11;
  v22 = sub_CC08(v31);
  (*(*(a7 - 8) + 32))(v22, a1, a7);
  v30[3] = a8;
  v30[4] = a12;
  v23 = sub_CC08(v30);
  (*(*(a8 - 8) + 32))(v23, a3, a8);
  *&a6[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns] = 1;
  v24 = &a6[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView];
  *v24 = 0;
  v24[1] = 0;
  *&a6[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews] = &_swiftEmptyArrayStorage;
  a6[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState] = 0;
  sub_4B14(v30, &a6[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_rowSpacing]);
  v25 = &a6[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize];
  *v25 = a9;
  v25[1] = a10;
  v26 = &a6[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics];
  sub_4B14(v31, &a6[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics]);
  sub_4F14C(a2, (v26 + 48));
  sub_4F1A8(a4, (v26 + 88));
  sub_4B14(v30, (v26 + 128));
  v26[40] = 1;
  v26[168] = a5 & 1;
  *(v26 + 22) = 1;
  v26[184] = 0;
  v29.receiver = a6;
  v29.super_class = type metadata accessor for ServicesGridView();
  v27 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_4F204(a4);
  sub_4F258(a2);
  sub_3C04(v30);
  sub_3C04(v31);
  return v27;
}

void sub_119248(int a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v131 = a5;
  v132 = a7;
  v130 = a4;
  v135 = a1;
  v10 = sub_13C114();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 32);
  v15 = *(a3 + 40);
  sub_162F0((a3 + 8), v14);
  sub_20038(v14, v15);
  sub_13A404();
  v17 = v16;
  v18 = *(v11 + 8);
  v18(v13, v10);
  v19 = *(a3 + 160);
  v20 = *(a3 + 168);
  sub_162F0((a3 + 136), v19);
  sub_20038(v19, v20);
  sub_13A404();
  v116 = v21;
  v18(v13, v10);
  v128 = a2;
  v119 = sub_11A118(a3);
  if (*(a3 + 192))
  {
    v22 = -1;
    v23 = a6;
LABEL_8:
    v28 = _swiftEmptyArrayStorage;
    v151 = _swiftEmptyArrayStorage;
    v30 = v130;
    v29 = v131;
    v152.origin.x = v130;
    v152.origin.y = v131;
    v152.size.width = a6;
    v31 = v132;
    v152.size.height = v132;
    MinX = CGRectGetMinX(v152);
    v153.origin.x = v30;
    v153.origin.y = v29;
    v153.size.width = a6;
    v153.size.height = v31;
    MinY = CGRectGetMinY(v153);
    v34 = *a3;
    v118 = a3 + 56;
    v120 = *(v34 + 16);
    swift_beginAccess();
    v35 = 0;
    v121 = v34;
    v115 = v34 + 32;
    v36 = 0.0;
    v133 = a6;
    v129 = v22;
    while (1)
    {
      v37 = 0uLL;
      v38 = v120;
      v39 = 0uLL;
      v40 = 0uLL;
      if (v35 != v120)
      {
        if (v35 >= *(v121 + 16))
        {
LABEL_132:
          __break(1u);
          return;
        }

        v38 = v35 + 1;
        *&v144 = v35;
        sub_4B14(v115 + 40 * v35, &v144 + 8);
        v37 = v144;
        v39 = v145;
        v40 = v146;
      }

      v150[0] = v37;
      v150[1] = v39;
      v150[2] = v40;
      if (!v40)
      {
        v157.origin.x = v130;
        v157.origin.y = v131;
        v157.size.height = v132;
        v157.size.width = v133;
        CGRectGetMinY(v157);

        return;
      }

      v134 = v37;
      sub_9414((v150 + 8), v149);
      sub_162F0(v149, v149[3]);
      sub_13A394();
      v42 = v41;
      v44 = v43;
      v126 = *(v121 + 16) - 1;
      v45 = v134;
      sub_4F14C(v118, &v144);
      v46 = *(&v145 + 1);
      sub_4F258(&v144);
      v124 = v38;
      v125 = v45;
      if (v46)
      {
        break;
      }

      v117 = v42;
      if (MinX + v42 > v133)
      {
        v127 = *(a3 + 176);
        v64 = v28[2];
        v123 = v36;
        if (v64)
        {
          v65 = (v28 + 4);
          v66 = 0.0;
          v67 = v64;
          do
          {
            sub_AA5F4(v65, &v144);
            v142 = v147;
            v139 = v144;
            v140 = v145;
            v141 = v146;
            if (v66 <= v147)
            {
              v66 = v142;
            }

            sub_3C04(&v139);
            v65 += 56;
            --v67;
          }

          while (v67);
        }

        else
        {
          v66 = 0.0;
        }

        v68 = 0;
        v122 = MinX;
        v114 = v44;
        while (1)
        {
          if (v68 == v64)
          {
            v69 = 0uLL;
            v70 = 0.0;
            v71 = 0.0;
            v68 = v64;
            v72 = 0uLL;
            v73 = 0uLL;
          }

          else
          {
            if (v68 >= v28[2])
            {
              goto LABEL_129;
            }

            *&v139 = v68;
            sub_AA5F4(&v28[7 * v68 + 4], &v139 + 8);
            v69 = v139;
            v72 = v140;
            v73 = v141;
            ++v68;
            v71 = v142;
            v70 = v143;
          }

          v144 = v69;
          v145 = v72;
          v146 = v73;
          v147 = v71;
          v148 = v70;
          if (!v73)
          {
            break;
          }

          v134 = v69;
          sub_9414((&v144 + 8), v138);
          sub_9414(v138, &v139);
          *(&v141 + 1) = v71;
          v142 = v70;
          if (v135)
          {
            if ((v127 & 1) == 0)
            {
              sub_AA5F4(&v139, v136);
              sub_3C04(v136);
            }

            sub_162F0(&v139, *(&v140 + 1));
            sub_13BE44();
            sub_13A354();
            v22 = v129;
          }

          if (v134 == v28[2] - 1)
          {
            v74 = 0.0;
          }

          else
          {
            v74 = v17;
          }

          v75 = v23;
          if ((*(a3 + 48) & 1) == 0)
          {
            sub_AA5F4(&v139, v136);
            v75 = v137;
            sub_3C04(v136);
          }

          MinX = MinX + v74 + v75;
          sub_CC68(&v139, &qword_19C5A0);
        }

        v36 = v123;
        v76 = v116 + v66;
        if (v123 <= MinX - v122)
        {
          v36 = MinX - v122;
        }

        v154.origin.x = v130;
        v154.origin.y = v131;
        v154.size.height = v132;
        v154.size.width = v133;
        MinX = CGRectGetMinX(v154);
        MinY = MinY + v76;
        v151 = _swiftEmptyArrayStorage;

        v28 = _swiftEmptyArrayStorage;
        v38 = v124;
        v44 = v114;
      }

      sub_4B14(v149, &v144);
      *(&v146 + 1) = v117;
      v147 = v44;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_58AFC();
        v28 = v112;
      }

      v77 = v28[2];
      v78 = v77 + 1;
      if (v77 >= v28[3] >> 1)
      {
        sub_58AFC();
        v28 = v113;
      }

      v28[2] = v78;
      v79 = &v28[7 * v77 + 4];
      v80 = v144;
      v81 = v145;
      v82 = v146;
      *(v79 + 48) = v147;
      *(v79 + 16) = v81;
      *(v79 + 32) = v82;
      *v79 = v80;
      v151 = v28;
      swift_endAccess();
      if (v78 != v22)
      {
        goto LABEL_93;
      }

      v123 = v36;
      v83 = *(a3 + 176);
      v54 = 0.0;
      v84 = (v28 + 4);
      do
      {
        sub_AA5F4(v84, &v144);
        v142 = v147;
        v139 = v144;
        v140 = v145;
        v141 = v146;
        if (v54 <= v147)
        {
          v54 = v142;
        }

        sub_3C04(&v139);
        v84 += 56;
        --v78;
      }

      while (v78);
      v85 = 0;
      v122 = MinX;
      while (1)
      {
        if (v85 == v22)
        {
          v86 = 0uLL;
          v87 = 0.0;
          v88 = 0.0;
          v85 = v22;
          v89 = 0uLL;
          v90 = 0uLL;
        }

        else
        {
          if ((v85 & 0x8000000000000000) != 0)
          {
            goto LABEL_130;
          }

          if (v85 >= v28[2])
          {
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          *&v139 = v85;
          sub_AA5F4(&v28[7 * v85 + 4], &v139 + 8);
          v86 = v139;
          v89 = v140;
          v90 = v141;
          ++v85;
          v88 = v142;
          v87 = v143;
        }

        v144 = v86;
        v145 = v89;
        v146 = v90;
        v147 = v88;
        v148 = v87;
        if (!v90)
        {
          break;
        }

        v134 = v86;
        sub_9414((&v144 + 8), v138);
        sub_9414(v138, &v139);
        *(&v141 + 1) = v88;
        v142 = v87;
        if (v135)
        {
          if ((v83 & 1) == 0)
          {
            sub_AA5F4(&v139, v136);
            sub_3C04(v136);
          }

          sub_162F0(&v139, *(&v140 + 1));
          sub_13BE44();
          sub_13A354();
          v22 = v129;
        }

        if (v134 == v28[2] - 1)
        {
          v91 = 0.0;
        }

        else
        {
          v91 = v17;
        }

        v92 = v23;
        if ((*(a3 + 48) & 1) == 0)
        {
          sub_AA5F4(&v139, v136);
          v92 = v137;
          sub_3C04(v136);
        }

        MinX = MinX + v91 + v92;
        sub_CC68(&v139, &qword_19C5A0);
      }

LABEL_94:
      v36 = v123;
      if (v123 <= MinX - v122)
      {
        v36 = MinX - v122;
      }

      v94 = v125;
      v93 = v126;
      v95 = v116;
      if (v126 == v125)
      {
        v95 = 0.0;
      }

      v96 = v54 + v95;
      v155.origin.x = v130;
      v155.origin.y = v131;
      v155.size.height = v132;
      v155.size.width = v133;
      MinX = CGRectGetMinX(v155);
      MinY = MinY + v96;
      v151 = _swiftEmptyArrayStorage;

      v28 = _swiftEmptyArrayStorage;
      v38 = v124;
LABEL_99:
      if (v93 == v94)
      {
        v97 = v28[2];
        if (v97)
        {
          v123 = v36;
          v98 = *(a3 + 176);
          v99 = 0.0;
          v100 = (v28 + 4);
          v101 = v97;
          do
          {
            sub_AA5F4(v100, &v144);
            v142 = v147;
            v139 = v144;
            v140 = v145;
            v141 = v146;
            if (v99 <= v147)
            {
              v99 = v142;
            }

            sub_3C04(&v139);
            v100 += 56;
            --v101;
          }

          while (v101);
          v102 = 0;
          v122 = MinX;
          v22 = v129;
          while (1)
          {
            if (v102 == v97)
            {
              v103 = 0uLL;
              v104 = 0.0;
              v105 = 0.0;
              v102 = v97;
              v106 = 0uLL;
              v107 = 0uLL;
            }

            else
            {
              if (v102 >= v28[2])
              {
                goto LABEL_128;
              }

              *&v139 = v102;
              sub_AA5F4(&v28[7 * v102 + 4], &v139 + 8);
              v103 = v139;
              v106 = v140;
              v107 = v141;
              ++v102;
              v104 = v142;
              v105 = v143;
            }

            v144 = v103;
            v145 = v106;
            v146 = v107;
            v147 = v104;
            v148 = v105;
            if (!v107)
            {
              break;
            }

            v134 = v103;
            sub_9414((&v144 + 8), v138);
            sub_9414(v138, &v139);
            *(&v141 + 1) = v104;
            v142 = v105;
            if (v135)
            {
              if ((v98 & 1) == 0)
              {
                sub_AA5F4(&v139, v136);
                sub_3C04(v136);
              }

              sub_162F0(&v139, *(&v140 + 1));
              sub_13BE44();
              sub_13A354();
              v22 = v129;
            }

            if (v134 == v28[2] - 1)
            {
              v108 = 0.0;
            }

            else
            {
              v108 = v17;
            }

            v109 = v23;
            if ((*(a3 + 48) & 1) == 0)
            {
              sub_AA5F4(&v139, v136);
              v109 = v137;
              sub_3C04(v136);
            }

            MinX = MinX + v108 + v109;
            sub_CC68(&v139, &qword_19C5A0);
          }

          v36 = v123;
          if (v123 <= MinX - v122)
          {
            v36 = MinX - v122;
          }

          v156.origin.x = v130;
          v156.origin.y = v131;
          v156.size.height = v132;
          v156.size.width = v133;
          MinX = CGRectGetMinX(v156);
          MinY = MinY + v99 + 0.0;
          v151 = _swiftEmptyArrayStorage;

          v28 = _swiftEmptyArrayStorage;
          v38 = v124;
        }
      }

      sub_3C04(v149);
      v35 = v38;
    }

    sub_4B14(v149, &v144);
    *(&v146 + 1) = v42;
    v147 = v44;
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_58AFC();
      v28 = v110;
    }

    v47 = v28[2];
    v48 = v47 + 1;
    if (v47 >= v28[3] >> 1)
    {
      sub_58AFC();
      v28 = v111;
    }

    v28[2] = v48;
    v49 = &v28[7 * v47 + 4];
    v50 = v144;
    v51 = v145;
    v52 = v146;
    *(v49 + 48) = v147;
    *(v49 + 16) = v51;
    *(v49 + 32) = v52;
    *v49 = v50;
    v151 = v28;
    swift_endAccess();
    if (v48 == v22)
    {
      v123 = v36;
      v53 = *(a3 + 176);
      v54 = 0.0;
      v55 = (v28 + 4);
      do
      {
        sub_AA5F4(v55, &v144);
        v142 = v147;
        v139 = v144;
        v140 = v145;
        v141 = v146;
        if (v54 <= v147)
        {
          v54 = v142;
        }

        sub_3C04(&v139);
        v55 += 56;
        --v48;
      }

      while (v48);
      v56 = 0;
      v122 = MinX;
      while (1)
      {
        if (v56 == v22)
        {
          v57 = 0uLL;
          v58 = 0.0;
          v59 = 0.0;
          v56 = v22;
          v60 = 0uLL;
          v61 = 0uLL;
        }

        else
        {
          if ((v56 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (v56 >= v28[2])
          {
            goto LABEL_127;
          }

          *&v139 = v56;
          sub_AA5F4(&v28[7 * v56 + 4], &v139 + 8);
          v57 = v139;
          v60 = v140;
          v61 = v141;
          ++v56;
          v59 = v142;
          v58 = v143;
        }

        v144 = v57;
        v145 = v60;
        v146 = v61;
        v147 = v59;
        v148 = v58;
        if (!v61)
        {
          goto LABEL_94;
        }

        v134 = v57;
        sub_9414((&v144 + 8), v138);
        sub_9414(v138, &v139);
        *(&v141 + 1) = v59;
        v142 = v58;
        if (v135)
        {
          if ((v53 & 1) == 0)
          {
            sub_AA5F4(&v139, v136);
            sub_3C04(v136);
          }

          sub_162F0(&v139, *(&v140 + 1));
          sub_13BE44();
          sub_13A354();
          v22 = v129;
        }

        if (v134 == v28[2] - 1)
        {
          v62 = 0.0;
        }

        else
        {
          v62 = v17;
        }

        v63 = v23;
        if ((*(a3 + 48) & 1) == 0)
        {
          sub_AA5F4(&v139, v136);
          v63 = v137;
          sub_3C04(v136);
        }

        MinX = MinX + v62 + v63;
        sub_CC68(&v139, &qword_19C5A0);
      }
    }

LABEL_93:
    v94 = v125;
    v93 = v126;
    goto LABEL_99;
  }

  if (*(a3 + 184))
  {
    v24 = *(a3 + 184);
    GridLayout.Metrics.maxColumnWidth.getter(&v139);
    if (*(&v140 + 1))
    {
      sub_9414(&v139, &v144);
      v25 = *(&v145 + 1);
      v26 = v146;
      sub_162F0(&v144, *(&v145 + 1));
      sub_20038(v25, v26);
      sub_13A404();
      v23 = v27;
      v18(v13, v10);
      sub_3C04(&v144);
      v22 = v24;
    }

    else
    {
      sub_CC68(&v139, &qword_19AFF8);
      v22 = v24;
      v23 = round((a6 - v17 * (v24 - 1)) / v24);
    }

    goto LABEL_8;
  }
}

double sub_11A118(uint64_t a1)
{
  v2 = sub_13C114();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4F1A8(a1 + 96, &v14);
  if (!v15)
  {
    return 1.79769313e308;
  }

  sub_9414(&v14, v11);
  v6 = v12;
  v7 = v13;
  sub_162F0(v11, v12);
  sub_20038(v6, v7);
  sub_13A404();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  sub_3C04(v11);
  return v9;
}

uint64_t sub_11A2C0()
{

  return sub_13C0C4();
}

uint64_t sub_11A2DC()
{

  return swift_beginAccess();
}

uint64_t ServiceSubscribePageLayout.init(metrics:contentView:detailsView:primaryButton:secondaryButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(a6, __src, 0xE0uLL);
  v11 = *(a2 + 16);
  *(a6 + 224) = *a2;
  *(a6 + 240) = v11;
  *(a6 + 256) = *(a2 + 32);
  sub_9414(a3, a6 + 264);
  sub_9414(a4, a6 + 304);

  return sub_9414(a5, a6 + 344);
}

void ServiceSubscribePageLayout.placeChildren(relativeTo:in:)()
{
  sub_AD97C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_13A314();
  sub_9E94();
  v48 = v13;
  v49 = v12;
  __chkstk_darwin(v12);
  sub_9EC0();
  v47 = v15 - v14;
  v16 = sub_13C114();
  sub_9E94();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_9EC0();
  v22 = v21 - v20;
  sub_2DAFC(v0 + 224, &v54);
  v23 = *(&v55 + 1);
  v46 = v9;
  if (*(&v55 + 1))
  {
    sub_9414(&v54, v50);
    swift_getObjectType();
    v24 = sub_11100C();
    sub_11ADEC(v3, v0, v24);
    v26 = v25;
    v27 = *(v0 + 24);
    v28 = *(v1 + 32);
    sub_162F0(v1, *(v1 + 24));
    sub_20038(v27, v28);
    sub_13A404();
    v30 = v29;
    (*(v18 + 8))(v22, v16);
    v60.origin.x = sub_3001C();
    MinX = CGRectGetMinX(v60);
    v61.origin.x = sub_3001C();
    Width = CGRectGetWidth(v61);
    sub_162F0(v50, v50[3]);
    sub_3001C();
    v33 = MinX;
    v34 = v30;
    v35 = Width;
    v41 = v26;
    sub_13BE44();
    sub_13A354();
    sub_3C04(v50);
  }

  else
  {
    sub_11A794(&v54);
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v41 = 0.0;
  }

  v44 = *(v1 + 112);
  v45 = *(v1 + 80);
  v42 = *(v1 + 128);
  v43 = *(v1 + 96);
  sub_4B14(v1 + 144, &v58);
  sub_4B14(v1 + 184, &v59);
  v54 = v45;
  v55 = v43;
  v56 = v44;
  v57 = v42;
  sub_110B80(&v54, v50);
  sub_4B14(v1 + 264, &v51);
  sub_4B14(v1 + 304, &v52);
  sub_4B14(v1 + 344, &v53);
  swift_getObjectType();
  v36 = sub_11100C();
  sub_11B030(v36, v3, v37);
  v39 = v38;
  if (v23 && (v62.origin.x = v33, v62.origin.y = v34, v62.size.width = v35, v62.size.height = v41, v40 = v39 + CGRectGetMaxY(v62), v63.origin.x = v11, v63.origin.y = v46, v63.size.width = v7, v63.size.height = v5, CGRectGetMaxY(v63) < v40))
  {
    v64.origin.x = v33;
    v64.origin.y = v34;
    v64.size.height = v41;
    v64.size.width = v35;
    CGRectGetMaxY(v64);
  }

  else
  {
    v65.origin.x = sub_3001C();
    CGRectGetMaxY(v65);
  }

  v66.origin.x = sub_3001C();
  CGRectGetMinX(v66);
  v67.origin.x = sub_3001C();
  CGRectGetWidth(v67);
  sub_11A9E0();
  sub_13A304();
  sub_13A2D4();
  v68.origin.x = sub_3001C();
  CGRectGetHeight(v68);
  v69.origin.x = sub_3001C();
  CGRectGetMinX(v69);
  v70.origin.x = sub_3001C();
  CGRectGetMinY(v70);
  v71.origin.x = sub_3001C();
  CGRectGetWidth(v71);
  sub_13A2B4();
  (*(v48 + 8))(v47, v49);
  sub_110EC0(v50);
  sub_110F14(&v54);
  sub_AD9A4();
}

uint64_t sub_11A794(uint64_t a1)
{
  v2 = sub_4948(&unk_1A0730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double ServiceSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_11100C();

  return sub_11ADEC(a1, v1, v3);
}

void ServiceSubscribePageLayout.Metrics.primaryButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
}

uint64_t ServiceSubscribePageLayout.Metrics.buttonsSpacing.setter(__int128 *a1)
{
  sub_3C04(v1 + 144);

  return sub_9414(a1, v1 + 144);
}

uint64_t ServiceSubscribePageLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 184);

  return sub_9414(a1, v1 + 184);
}

void sub_11A9E0()
{
  sub_AD97C();
  v1 = v0;
  v2 = sub_13C114();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v23 = *v0;
  v25 = *(v0 + 16);
  v9 = *(v0 + 88);
  v10 = *(v1 + 96);
  sub_162F0((v1 + 64), v9);
  sub_20038(v9, v10);
  sub_13A404();
  (*(v4 + 8))(v8, v2);
  v26.origin.x = sub_11B5CC();
  CGRectGetWidth(v26);
  v27.origin.x = sub_11B5CC();
  CGRectGetHeight(v27);
  sub_162F0((v1 + 144), *(v1 + 168));
  sub_13A394();
  v12 = v11;
  v14 = v13;
  v28.origin.x = sub_11B5CC();
  v15 = CGRectGetMidX(v28) + v12 * -0.5;
  v29.origin.x = sub_11B5CC();
  v16 = v23 + CGRectGetMinY(v29);
  sub_9B584((v1 + 144));
  sub_11B5CC();
  sub_13BE44();
  sub_3AEA4();
  sub_13A354();
  v30.origin.x = v15;
  v30.origin.y = v16;
  v30.size.width = v12;
  v24 = v14;
  v30.size.height = v14;
  CGRectGetMaxY(v30);
  sub_9B584((v1 + 184));
  sub_3AEA4();
  if (sub_13A364())
  {
    sub_162F0((v1 + 184), *(v1 + 208));
    sub_A8FE8();
    sub_3AEA4();
    sub_13A354();
  }

  else
  {
    sub_162F0((v1 + 184), *(v1 + 208));
    sub_11100C();
    sub_13A394();
    v22 = v17;
    v31.origin.x = sub_11B5CC();
    v21 = CGRectGetWidth(v31) - *(v1 + 40) - *(v1 + 56);
    v32.origin.x = sub_11B5CC();
    v18 = CGRectGetMidX(v32) + v21 * -0.5;
    v33.origin.x = v15;
    v33.origin.y = v16;
    v33.size.width = v12;
    v33.size.height = v24;
    v19 = v25 + CGRectGetMaxY(v33);
    sub_9B584((v1 + 184));
    sub_11B5CC();
    sub_13BE44();
    sub_3AEA4();
    sub_13A354();
    v34.origin.x = v18;
    v34.origin.y = v19;
    v34.size.width = v21;
    v34.size.height = v22;
    CGRectGetMaxY(v34);
  }

  sub_9B584((v1 + 224));
  sub_3AEA4();
  v20 = sub_13A364();
  sub_9B584((v1 + 224));
  if (v20)
  {
    sub_A8FE8();
  }

  else
  {
    sub_11100C();
    sub_13A394();
    sub_11B5E0();
    CGRectGetMidX(v35);
    sub_9B584((v1 + 224));
    sub_11B5E0();
    sub_13BE44();
  }

  sub_3AEA4();
  sub_13A354();
  sub_11B5E0();
  sub_13A2B4();
  sub_AD9A4();
}

double sub_11AD94(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_11100C();

  return sub_11B030(v3, a1, v1);
}

double sub_11ADEC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_13C114();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v12 = *(a2 + 128);
  v21 = *(a2 + 112);
  v22 = v10;
  v19 = v12;
  v20 = v11;
  sub_4B14(a2 + 144, &v28);
  sub_4B14(a2 + 184, &v29);
  v27[0] = v22;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v19;
  sub_110B80(v27, v23);
  sub_4B14(a2 + 264, &v24);
  sub_4B14(a2 + 304, &v25);
  sub_4B14(a2 + 344, &v26);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  sub_162F0(a2, v13);
  sub_20038(v13, v14);
  sub_13A404();
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_11B030(a3, a1, v23);
  v16 = *(a2 + 64);
  v17 = *(a2 + 72);
  sub_162F0((a2 + 40), v16);
  sub_20038(v16, v17);
  sub_13A404();
  v15(v9, v6);
  sub_110EC0(v23);
  sub_110F14(v27);
  return a3;
}

double sub_11B030(double a1, uint64_t a2, void *a3)
{
  v5 = sub_13C114();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(a3 + 18, a3[21]);
  sub_13A394();
  v9 = a3[16];
  v10 = a3[17];
  sub_162F0(a3 + 13, v9);
  sub_20038(v9, v10);
  sub_13A404();
  v11 = *(v6 + 8);
  v11(v8, v5);
  sub_162F0(a3 + 23, a3[26]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 23, a3[26]);
    sub_13A394();
  }

  sub_162F0(a3 + 28, a3[31]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 28, a3[31]);
    sub_13A394();
  }

  sub_162F0(a3 + 23, a3[26]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 28, a3[31]);
    if ((sub_13A364() & 1) == 0)
    {
      v12 = a3[11];
      v13 = a3[12];
      sub_162F0(a3 + 8, v12);
      sub_20038(v12, v13);
      sub_13A404();
      v11(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_11B354(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
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

uint64_t sub_11B394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_11B44C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_11B48C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_11B51C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_11B55C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceSymbol(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ServiceSymbol(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x11B744);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

Swift::Int sub_11B844()
{
  sub_11DC98();
  v0(v3, v1);
  return sub_13C234();
}

Swift::Int sub_11B9BC()
{
  sub_13C214();
  sub_13BBA4();
  return sub_13C234();
}

Swift::Int sub_11BA54()
{
  sub_11DC98();
  v0(v1);
  sub_11DC34();

  return sub_13C234();
}

uint64_t sub_11BAC8()
{
  sub_13BBA4();
}

uint64_t sub_11BB30(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_11DC6C();
  }

  sub_13BBA4();
}

uint64_t sub_11BBA8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_11DC80();
  }

  else
  {
    sub_11DB50();
  }

  sub_13BBA4();
}

uint64_t sub_11BC30()
{
  sub_13BBA4();
}

uint64_t sub_11BC90()
{
  sub_13BBA4();
}

uint64_t sub_11BD04()
{
  sub_13BBA4();
}

uint64_t sub_11BD6C()
{
  sub_13BBA4();
}

uint64_t sub_11BDEC(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_11DC80();
  }

  else
  {
    sub_73DC4();
    sub_11DB80();
  }

  sub_13BBA4();
}

uint64_t sub_11BE78()
{
  sub_11DB2C();
  switch(v0)
  {
    case 3:
      sub_73DC4();
      sub_11DC8C();
      break;
    default:
      break;
  }

  sub_13BBA4();
}

uint64_t sub_11BF50()
{
  sub_11DC18();
  switch(v0)
  {
    case 1:
      sub_11DB2C();
      break;
    case 2:
      sub_11DB6C();
      break;
    case 3:
      sub_11DC8C();
      goto LABEL_5;
    case 4:
    case 5:
LABEL_5:
      sub_73DC4();
      break;
    case 6:
      sub_11DB50();
      break;
    default:
      break;
  }

  sub_13BBA4();
}

uint64_t sub_11C01C()
{
  sub_13BBA4();
}

uint64_t sub_11C094()
{
  sub_13BBA4();
}

uint64_t sub_11C110()
{
  sub_73DC4();
  if (!v0)
  {
    sub_11DB80();
  }

  sub_13BBA4();
}

uint64_t sub_11C190(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_11DC18();
      break;
    case 4:
      sub_11DB6C();
      break;
    case 5:
      sub_73DC4();
      sub_11DC8C();
      break;
    default:
      break;
  }

  sub_13BBA4();
}

uint64_t sub_11C28C()
{
  sub_11DB2C();
  switch(v0)
  {
    case 1:
      sub_11DB6C();
      break;
    case 2:
      sub_11DC8C();
      goto LABEL_4;
    case 3:
LABEL_4:
      sub_73DC4();
      break;
    default:
      break;
  }

  sub_13BBA4();
}

uint64_t sub_11C32C()
{
  sub_13BBA4();
}

uint64_t sub_11C3C8()
{
  sub_13BBA4();
}

uint64_t sub_11C438()
{
  sub_13BBA4();
}

uint64_t sub_11C4A8()
{
  sub_13BBA4();
}

uint64_t sub_11C50C()
{
  sub_13BBA4();
}

uint64_t sub_11C57C(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_11DB94();
  }

  else
  {
    sub_11DB2C();
  }

  sub_13BBA4();
}

uint64_t sub_11C5F0()
{
  sub_13BBA4();
}

uint64_t sub_11C720()
{
  sub_13BBA4();
}

uint64_t sub_11C79C()
{
  sub_13BBA4();
}

uint64_t sub_11C80C()
{
  sub_13BBA4();
}

uint64_t sub_11C874(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_11DB6C();
      break;
    default:
      break;
  }

  sub_13BBA4();
}

uint64_t sub_11C934()
{
  sub_13BBA4();
}

uint64_t sub_11C9EC(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_11DC58();
  }

  sub_13BBA4();
}

uint64_t sub_11CA60(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_11DBFC();
  }

  sub_13BBA4();
}

Swift::Int sub_11CAE4()
{
  sub_11DBCC();
  if (!v0)
  {
    sub_11DC58();
  }

  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11CB88()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11CBF4()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11CCA4()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11CD18()
{
  sub_11DBCC();
  sub_13BBA4();

  return sub_13C234();
}

Swift::Int sub_11CD88()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11CDFC()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11CE90(uint64_t a1, unsigned __int8 a2)
{
  sub_13C214();
  sub_13C224(a2);
  return sub_13C234();
}

Swift::Int sub_11CEEC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_13C214();
  a3(v6, a2);
  return sub_13C234();
}

Swift::Int sub_11CF50()
{
  sub_11DBCC();
  if (v0)
  {
    sub_11DB94();
  }

  else
  {
    sub_11DB2C();
  }

  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11CFB0()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D02C(uint64_t a1, char a2)
{
  sub_73DC4();
  sub_13C214();
  if (!a2)
  {
    sub_11DB80();
  }

  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D0B8()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D164(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_13C214();
  a3(a2);
  sub_11DC34();

  return sub_13C234();
}

Swift::Int sub_11D1B8()
{
  sub_11DBCC();
  if (v0)
  {
    sub_11DC80();
  }

  else
  {
    sub_73DC4();
    sub_11DB80();
  }

  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D248()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D2CC()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D350()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D3D0()
{
  sub_13C214();
  sub_13BBA4();
  return sub_13C234();
}

Swift::Int sub_11D41C()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D484()
{
  sub_11DBCC();
  if (v0)
  {
    sub_11DC80();
  }

  else
  {
    sub_11DB50();
  }

  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D510()
{
  sub_11DBCC();
  if (!v0)
  {
    sub_11DC6C();
  }

  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D58C()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D5F8()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D65C()
{
  sub_11DBCC();
  if (!v0)
  {
    sub_11DBFC();
  }

  sub_11DBE4();

  return sub_13C234();
}

Swift::Int sub_11D6E0()
{
  sub_11DBCC();
  sub_11DBE4();

  return sub_13C234();
}

unint64_t sub_11D760(char a1)
{
  result = 0x6C2D656461637261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6C2D64756F6C6369;
      break;
    case 3:
      result = 0x6F6C2D636973756DLL;
      break;
    case 4:
      result = 0x756C702D7377656ELL;
      break;
    case 5:
      result = 0x6F676F6C2D656E6FLL;
      break;
    case 6:
      result = 0x6F676F6C2D7674;
      break;
    case 7:
      result = 0x2D73756C702D7674;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_11D884(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184CC0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_11D8D0(char a1)
{
  result = 0x656461637261;
  switch(a1)
  {
    case 1:
      result = 0x507373656E746966;
      break;
    case 2:
      result = 0x64756F6C4369;
      break;
    case 3:
      result = 0x636973756DLL;
      break;
    case 4:
      result = 0x73756C507377656ELL;
      break;
    case 5:
      result = 6647407;
      break;
    case 6:
      result = 30324;
      break;
    case 7:
      result = 0x73756C507674;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_11DA24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_11D884(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_11DA54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_11D8D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_11DA84()
{
  result = qword_1A17F8;
  if (!qword_1A17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A17F8);
  }

  return result;
}

uint64_t sub_11DBCC()
{

  return sub_13C214();
}

uint64_t sub_11DBE4()
{

  return sub_13BBA4();
}

uint64_t sub_11DC34()
{

  return sub_13BBA4();
}

uint64_t sub_11DC98()
{

  return sub_13C214();
}

void sub_11DCB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B3D4();
  v8 = v7;
  v9 = objc_opt_self();

  v10 = [v9 sharedApplication];
  v11 = [v10 preferredContentSizeCategory];

  LOBYTE(v10) = sub_13BE04();

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
}

uint64_t sub_11DD90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_11DDE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_11DE6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3 && (v4 = *(v1 + 24)) != 0)
  {
    *a1 = *v1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
    *(a1 + 40) = 0x4024000000000000;
    *(a1 + 48) = 0;
    v5 = sub_4948(&qword_1A1800);

    sub_11DF6C(v3, v4, v1);

    v6 = a1;
    v7 = 0;
    v8 = v5;
  }

  else
  {
    v8 = sub_4948(&qword_1A1800);
    v6 = a1;
    v7 = 1;
  }

  return sub_53A8(v6, v7, 1, v8);
}

uint64_t sub_11DF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v12 = 0;
  v13 = v6;
  swift_getKeyPath();
  v7 = *(a3 + 24);
  v14 = *(a3 + 32);
  v15 = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a3 + 16);
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a3 + 32);

  sub_62468(&v15, v11, &qword_1A1808);
  sub_62468(&v14, v11, &qword_1A1810);
  sub_4948(&qword_19AC80);
  sub_4948(&qword_19AC88);
  sub_16618();
  sub_166F8();
  return sub_13B314();
}

unint64_t *sub_11E0C0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(a2 + 16))
  {
    v5 = *(a2 + 152 * v4 + 40);
    sub_139C94();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = v5;

    sub_139B44();
    sub_13B3C4();
    sub_13A834();
    result = memcpy(a3, __src, 0x58uLL);
    a3[44] = 257;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_11E200()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_11E260()
{
  result = qword_1A1818;
  if (!qword_1A1818)
  {
    sub_558C(&qword_1A1820);
    sub_11E2E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1818);
  }

  return result;
}

unint64_t sub_11E2E4()
{
  result = qword_1A1828;
  if (!qword_1A1828)
  {
    sub_558C(&qword_1A1800);
    sub_11E370();
    sub_11E3D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1828);
  }

  return result;
}

unint64_t sub_11E370()
{
  result = qword_1A1830;
  if (!qword_1A1830)
  {
    sub_558C(&qword_1A1838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1830);
  }

  return result;
}

unint64_t sub_11E3D4()
{
  result = qword_1A1840;
  if (!qword_1A1840)
  {
    sub_558C(&qword_19AC78);
    sub_166F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1840);
  }

  return result;
}

uint64_t SingleComponentLayout.placeChildren(relativeTo:in:)(uint64_t a1)
{
  swift_getObjectType();
  sub_4F04C(1, a1, v1);

  return sub_13A2E4();
}

unint64_t sub_11E5BC()
{
  result = qword_1A1848;
  if (!qword_1A1848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A1848);
  }

  return result;
}

id sub_11E630()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreDynamicUIPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_11E688()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreDynamicUIPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_11E6E0()
{
  if (qword_19A020 != -1)
  {
    swift_once();
  }

  result = sub_BCCA4(v0);
  qword_1B2C18 = _swiftEmptyArrayStorage;
  return result;
}

void *sub_11E798()
{
  result = sub_11E7B8();
  qword_1B2C20 = result;
  return result;
}

void *sub_11E7B8()
{
  if (qword_19A028 != -1)
  {
    swift_once();
  }

  sub_BCCD0(v0);
  if (qword_19A1D0 != -1)
  {
    swift_once();
  }

  sub_BCCD0(v1);
  return _swiftEmptyArrayStorage;
}

void sub_11E8AC()
{
  if (qword_19A030 != -1)
  {
    swift_once();
  }

  sub_BCD8C(v0);
  qword_1B2C28 = _swiftEmptyArrayStorage;
}

uint64_t sub_11E964()
{
  if (qword_19A038 != -1)
  {
    swift_once();
  }

  result = sub_BCE48(v0);
  qword_1B2C30 = _swiftEmptyArrayStorage;
  return result;
}

id sub_11EA1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionsDynamicUIPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_11EA74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionsDynamicUIPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_11EAE0()
{
  if (qword_19A1D0 != -1)
  {
    swift_once();
  }
}

uint64_t type metadata accessor for TextGradient()
{
  result = qword_1A1900;
  if (!qword_1A1900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11EBE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184DA0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_11EC34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_11EBE8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_11EC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a1;
  v98 = a3;
  v4 = sub_4948(&qword_19A420);
  __chkstk_darwin(v4 - 8);
  v100 = &v93 - v5;
  v99 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v6);
  v101 = &v93 - v7;
  v8 = sub_13B584();
  v107 = *(v8 - 8);
  __chkstk_darwin(v8);
  sub_18B60();
  __chkstk_darwin(v9);
  sub_18B60();
  __chkstk_darwin(v10);
  sub_18B60();
  __chkstk_darwin(v11);
  v13 = &v93 - v12;
  __chkstk_darwin(v14);
  v15 = type metadata accessor for TextGradient();
  sub_9F94();
  __chkstk_darwin(v16);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v20 = swift_initStackObject();
  v109 = a2;
  v105 = v15;
  v21 = v106;
  sub_64A8(0x746E656964617267, 0xEF736E6F6974704FLL, v15, sub_11FA68, v108, v22, v23, v24, v93, v94, SWORD2(v94));
  if (v21)
  {

    (*(v107 + 8))(v113, v8);
    sub_13B5A4();
    sub_5224();
    return (*(v36 + 8))(a2);
  }

  v96 = v13;
  v104 = v8;
  *v18 = v25;
  v18[1] = BYTE1(v25) & 1;
  v18[2] = BYTE2(v25) & 1;
  sub_13B594();
  v26 = sub_13B564();
  v97 = a2;
  if (v26)
  {
    sub_13BAB4();
    sub_120058();
    sub_11FA9C(v27, v28);
    swift_allocError();
    *v29 = 0x656E696C64616568;
    v29[1] = 0xE800000000000000;
    v29[2] = v105;
    sub_2B538();
    (*(v30 + 104))();
    swift_willThrow();
    v31 = sub_120090();
    v32(v31);

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    v52 = sub_120090();
    v53(v52);
    sub_249B4();
  }

  v33 = v111;
  *(v18 + 8) = v110;
  *(v18 + 24) = v33;
  *(v18 + 5) = v112;
  v34 = sub_BB310();
  v35 = v96;
  *&v110 = v34;
  *(&v110 + 1) = v38;
  sub_13BFB4();
  sub_13B594();
  v39 = sub_13B564();
  v40 = v104;
  v95 = v20;
  v94 = inited;
  if ((v39 & 1) == 0)
  {
    v41 = v100;
    sub_7738();
    if (sub_52E0(v41, 1, v99) != 1)
    {
      sub_1200AC();
      v54(v35, v40);
      v55 = v41;
      v51 = v101;
      sub_92E4(v55, v101);
      v47 = v105;
      goto LABEL_11;
    }

    sub_184DC(v41, &qword_19A420);
  }

  sub_13BAB4();
  sub_120058();
  sub_11FA9C(v42, v43);
  v44 = sub_9F18();
  sub_102814(v44, v45);
  *v46 = 0xD000000000000011;
  v46[1] = 0x800000000014E730;
  v47 = v105;
  v46[2] = v105;
  sub_2B538();
  (*(v48 + 104))();
  swift_willThrow();
  sub_1200AC();
  v49(v35, v40);

  v50 = sub_13B7A4();
  v51 = v101;
  sub_53A8(v101, 1, 1, v50);
LABEL_11:
  sub_92E4(v51, &v18[*(v47 + 36)]);
  v56 = v102;
  v57 = v113;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_120058();
    sub_11FA9C(v58, v59);
    v60 = sub_9F18();
    sub_102814(v60, v61);
    *v62 = 0x6575676573;
    v62[1] = 0xE500000000000000;
    v62[2] = v47;
    sub_2B538();
    (*(v63 + 104))();
    swift_willThrow();
    sub_1200AC();
    v64(v56, v40);

    sub_18B90();
  }

  else
  {
    sub_1200B8();
    sub_139BC4();
    sub_1200AC();
    v87(v56, v40);
    sub_249B4();
  }

  v65 = &v18[*(v47 + 40)];
  v66 = v111;
  *v65 = v110;
  *(v65 + 1) = v66;
  *(v65 + 4) = v112;
  sub_13B594();
  v67 = sub_13B564();
  v68 = v103;
  if (v67)
  {
    sub_13BAB4();
    sub_120058();
    sub_11FA9C(v69, v70);
    v71 = sub_9F18();
    sub_102814(v71, v72);
    *v73 = 0x656C746974627573;
    v73[1] = 0xE800000000000000;
    v73[2] = v47;
    sub_2B538();
    (*(v74 + 104))();
    swift_willThrow();
    v75 = sub_120070();
    v76(v75);

    sub_18B90();
  }

  else
  {
    sub_1200B8();
    sub_139DB4();
    v88 = sub_120070();
    v89(v88);
    sub_249B4();
  }

  v77 = v111;
  *(v18 + 3) = v110;
  *(v18 + 4) = v77;
  *(v18 + 10) = v112;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_120058();
    sub_11FA9C(v79, v80);
    v81 = sub_9F18();
    sub_102814(v81, v82);
    *v83 = 0x656C746974;
    v83[1] = 0xE500000000000000;
    v83[2] = v47;
    sub_2B538();
    (*(v84 + 104))();
    swift_willThrow();
    v85 = v106;
    v106(v57, 0xE800000000000000);
    v85(v68, 0xE800000000000000);
    sub_13B5A4();
    sub_5224();
    (*(v86 + 8))(v97);
    sub_184DC((v18 + 8), &qword_19E960);
    sub_184DC((v18 + 48), &qword_19E960);
    sub_9238((v18 + 128));
    sub_184DC(&v18[*(v47 + 36)], &qword_19A350);
    return sub_184DC(&v18[*(v47 + 40)], &unk_19E320);
  }

  else
  {
    v78 = v97;
    sub_139DB4();
    v90 = v106;
    v91 = v104;
    v106(v57, v104);
    v90(v68, v91);
    sub_249B4();
    sub_9414(&v110, (v18 + 88));
    sub_11FAE4(v18, v98);
    sub_13B5A4();
    sub_5224();
    (*(v92 + 8))(v78);
    return sub_11FB48(v18);
  }
}

uint64_t sub_11F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_7374(0x6E61726165707061, 0xEA00000000006563, &type metadata for TextGradient.GradientOptions, a4, a5, a6, a7, a8);
  if (v8)
  {
    sub_13B5A4();
    sub_5224();
    (*(v14 + 8))(a2);
    sub_13B584();
    sub_5224();
    return (*(v15 + 8))(a1);
  }

  else
  {
    v12 = v11;
    v13 = sub_BB458();
    v17 = sub_BB458();
    sub_13B5A4();
    sub_5224();
    (*(v18 + 8))(a2);
    sub_13B584();
    sub_5224();
    (*(v19 + 8))(a1);
    if (v17)
    {
      v20 = 0x10000;
    }

    else
    {
      v20 = 0;
    }

    if (v13)
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }

    return v21 & 0xFFFFFF00 | v12 | v20;
  }
}

uint64_t sub_11FA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  result = sub_11F884(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
    a9[1] = BYTE1(result) & 1;
    a9[2] = BYTE2(result) & 1;
  }

  return result;
}