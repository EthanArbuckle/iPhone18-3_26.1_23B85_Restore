uint64_t SocketAddress.init(packedIPAddress:port:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  ByteBufferView.init(_:)(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, v15);
  v9 = v8 - v6;
  if (v8 < v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 == 16)
  {
    v16 = 0uLL;
    if ((a4 & 0x8000000000000000) != 0)
    {
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
    }

    if (a4 >> 16)
    {
      goto LABEL_15;
    }

    sub_1000DF30C(v15, &v16);
    v11 = v16;
    sub_100066CE4(v15);

    sub_1000183C4(&qword_1002AE9A0);
    sub_1000DFBD8();
    v12 = swift_allocObject();
    *(v12 + 16) = 7680;
    *(v12 + 18) = bswap32(a4) >> 16;
    *(v12 + 20) = 0;
    *(v12 + 24) = v11;
    *(v12 + 40) = 0;
    result = v12 | 0x4000000000000000;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0xE000000000000000;
  }

  else
  {
    if (v9 == 4)
    {
      v14 = 0x200uLL;
      if ((a4 & 0x8000000000000000) == 0)
      {
        if (!(a4 >> 16))
        {
          WORD1(v14) = bswap32(a4) >> 16;

          sub_1000DF30C(v15, &v14 + 4);
          v16 = v14;
          sub_100066CE4(v15);

          sub_1000183C4(&qword_1002AE9A8);
          sub_100047958();
          result = swift_allocObject();
          *(result + 16) = v16;
          *(result + 32) = 0;
          *(result + 40) = 0xE000000000000000;
          return result;
        }

        goto LABEL_14;
      }

      goto LABEL_12;
    }

    sub_1000DF700();
    sub_1000276A0();
    *v13 = a1;
    *(v13 + 8) = v6;
    *(v13 + 12) = v8;
    *(v13 + 16) = a3;
    *(v13 + 20) = WORD2(a3);
    *(v13 + 22) = BYTE6(a3);
    swift_willThrow();

    return sub_100066CE4(v15);
  }

  return result;
}

uint64_t sub_1000DF30C(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  v17 = *result;
  v18 = v2;
  v19 = *(result + 32);
  if (a2)
  {
    v3 = a2;
    v4 = __chkstk_darwin(result, a2);
    v5 = *(v4 + 16);
    v20 = *v4;
    v21 = v5;
    v22 = *(v4 + 32);
    result = sub_1000DDA20(sub_1000DFA7C);
    if (result)
    {
      v15[0] = v17;
      v15[1] = v18;
      v6 = v19;
      v16 = v19;
      v7 = *(&v18 + 1);
      v8 = v17;
      v9 = DWORD2(v17);
      v10 = HIDWORD(v17);
      v11 = WORD2(v18);
      v12 = BYTE6(v18);
      result = swift_beginAccess();
      while (1)
      {
        if (v6 == v7)
        {
          sub_100066CAC(v15, v14);
        }

        if (v7 >= v6)
        {
          break;
        }

        v13 = v7 - v9;
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_14;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_15;
        }

        if (v10 < v9)
        {
          goto LABEL_16;
        }

        if (v13 >= v10 - v9)
        {
          goto LABEL_17;
        }

        ++v7;
        *v3++ = *(*(v8 + 24) + (v12 | (v11 << 8)) + v9 + v13);
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

void SocketAddress.hash(into:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    if (a2 >> 62 == 1)
    {
      sub_1001F8088(2uLL);
      sub_1001F8098(*(v3 + 17));
      sub_1001F80A8(*(v3 + 18));
      sub_1001F80B8(*(v3 + 20));
      sub_1001F80B8(*(v3 + 40));
      v4 = *(v3 + 32);
      __dst[0] = *(v3 + 24);
      __dst[1] = v4;
    }

    else
    {
      sub_1001F8088(0);
      sub_1001F8098(*(v3 + 17));
      memcpy(__dst, (v3 + 18), sizeof(__dst));
      memcpy(__s1, __dst, sizeof(__s1));
      strnlen(__s1, 0x68uLL);
    }

    sub_1001F8078();
  }

  else
  {
    sub_1001F8088(1uLL);
    sub_1001F8098(*(a2 + 17));
    sub_1001F80A8(*(a2 + 18));
    sub_1001F80B8(*(a2 + 20));
  }
}

Swift::Int SocketAddress.hashValue.getter(unint64_t a1)
{
  sub_1001F8068();
  SocketAddress.hash(into:)(v3, a1);
  return sub_1001F80D8();
}

Swift::Int sub_1000DF614()
{
  v1 = *v0;
  sub_1001F8068();
  SocketAddress.hash(into:)(v3, v1);
  return sub_1001F80D8();
}

BOOL SocketAddress.isMulticast.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return 0;
    }

    return *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == 255;
  }

  else
  {
    return (*(a1 + 20) & 0xF0) == 224;
  }
}

uint64_t sub_1000DF694(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, void *a6)
{
  if (result)
  {
    result = a3(result, a2 - result);
    if (v6)
    {
      *a6 = v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000DF700()
{
  result = qword_1002B36F8;
  if (!qword_1002B36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B36F8);
  }

  return result;
}

unint64_t sub_1000DF758()
{
  result = qword_1002B3700;
  if (!qword_1002B3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3700);
  }

  return result;
}

unint64_t sub_1000DF7B0()
{
  result = qword_1002B3708;
  if (!qword_1002B3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3708);
  }

  return result;
}

uint64_t sub_1000DF804(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1000DF820(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DF860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000DF8A8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000DF8DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1000DF930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1000DFA28(void *__src, size_t __len, int a3, int a4, int a5, void *__dst)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(__dst, __src, __len);
    }
  }

  return __src;
}

void *sub_1000DFA48(void *a1, size_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = *(a3 + 32);
  return sub_1000DFA28(a1, a2, v8, a4, a5, a6);
}

void sub_1000DFBE4(uint64_t a1, const void *a2)
{

  sub_1000DDFB4(2, a2, 0x10uLL);
}

void sub_1000DFC00(uint64_t a1, const void *a2)
{

  sub_1000DDFB4(30, a2, 0x2EuLL);
}

uint64_t sub_1000DFC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_1000DD038(a1, a2, a3, v8, a5, v9, a7, a8);
}

uint64_t sub_1000DFC4C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100279C30;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void sub_1000DFC98(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = CGSVGAttributeMapCreate();
  sub_1000DFE18(&v10);
  if (v2 > 2)
  {
    v6 = sub_1000E082C();
    CGSVGAttributeMapSetAttribute();
    v7 = sub_1000E084C();
    CGSVGDocumentAddNamedStyle();

    v8 = CGSVGAttributeMapCreate();
    CGSVGColorCreateDisplayP3();
    v9 = sub_1000E082C();
    v4 = CGSVGAttributeCreateWithFloat();
    CGSVGAttributeMapSetAttribute();
    CGSVGAttributeMapSetAttribute();
    v5 = sub_1000E084C();
    CGSVGDocumentAddNamedStyle();

    v3 = v9;
  }

  else
  {
    v4 = sub_1000E082C();
    CGSVGAttributeMapSetAttribute();
    v5 = sub_1001F6B48();
    CGSVGDocumentAddNamedStyle();
  }
}

double sub_1000DFE18@<D0>(uint64_t a1@<X8>)
{
  CGSVGColorCreateDisplayP3();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000DFF80(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100279B38;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

id sub_1000DFFCC()
{
  sub_1000E07E8();
  result = sub_1000E0018();
  qword_1002B3710 = result;
  return result;
}

id sub_1000E0018()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1001F6B48();

  v2 = [v0 initWithPath:v1];

  return v2;
}

id sub_1000E008C()
{
  if (qword_1002AC448 != -1)
  {
    swift_once();
  }

  v0 = qword_1002B3710;
  v1 = objc_allocWithZone(CUICatalog);
  v2 = v0;
  result = sub_1000E05F0(0x737465737341, 0xE600000000000000, v0);
  qword_1002B3718 = result;
  return result;
}

id sub_1000E0138()
{
  if (qword_1002AC450 != -1)
  {
    swift_once();
  }

  v1 = qword_1002B3718;
  if (!qword_1002B3718)
  {
    return 0;
  }

  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = sub_1001F6B48();
  v5 = sub_1000E06D4(v4, 0, 0, *(v0 + 3), qword_10020BEA0[*(v0 + 32)], v0[2], v0[5], 0, 0xE000000000000000, v1);

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 referenceGlyph];
  result = v5;
  if (v6)
  {
    v8 = *(v0 + 48);
    v9 = v6;
    if (v8 != 9)
    {
      v10 = sub_1000E048C();
      if (v11 >> 60 != 15)
      {
        v12 = v10;
        v13 = v11;
        isa = sub_1001F63A8().super.isa;
        v15 = CGSVGDocumentCreateFromData();

        sub_10003A36C(v12, v13);
        if (v15)
        {

          v9 = v15;
        }
      }

      sub_1000DFC98(v9, v8);
    }

    v16 = v2 == 9.29650297e242 && v3 == 0xE90000000000006BLL;
    if (v16 || (sub_1001F7EA8() & 1) != 0)
    {
      if (v8 == 9)
      {
        v17 = sub_1000E048C();
        if (v18 >> 60 != 15)
        {
          v19 = v17;
          v20 = v18;
          v21 = sub_1001F63A8().super.isa;
          v22 = CGSVGDocumentCreateFromData();

          sub_10003A36C(v19, v20);
          if (v22)
          {

            v9 = v22;
          }
        }
      }

      sub_1000E0358();
    }

    v23 = sub_1000E048C();

    return v23;
  }

  __break(1u);
  return result;
}

void sub_1000E0358()
{
  sub_1000DFE18(&v7);
  v0 = CGSVGAttributeMapCreate();
  v1 = CGSVGAttributeCreateWithColor();
  v2 = sub_1001F6B48();
  v3 = CGSVGAttributeCreateWithString();

  v4 = sub_1001F6B48();
  v5 = CGSVGAttributeCreateWithString();

  CGSVGAttributeMapSetAttribute();
  CGSVGAttributeMapSetAttribute();
  CGSVGAttributeMapSetAttribute();
  v6 = sub_1001F6B48();
  CGSVGDocumentAddNamedStyle();
}

uint64_t sub_1000E048C()
{
  v0 = [objc_allocWithZone(NSMutableData) init];
  sub_1000183C4(&qword_1002B3720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FE9E0;
  v2 = kCGSVGPacked;
  *(inited + 32) = kCGSVGPacked;
  *(inited + 40) = kCFBooleanTrue;
  type metadata accessor for CFString(0);
  v3 = v0;
  v4 = v2;
  v5 = kCFBooleanTrue;
  sub_1000183C4(&qword_1002B3728);
  sub_1000E0790();
  sub_1001F69B8();
  isa = sub_1001F6988().super.isa;

  v7 = CGSVGDocumentWriteToData();

  if (v7)
  {
    v8 = v3;
    v9 = sub_1001F63C8();
  }

  else
  {

    return 0;
  }

  return v9;
}

id sub_1000E05F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_1001F6B48();

  v11 = 0;
  v7 = [v4 initWithName:v6 fromBundle:a3 error:&v11];

  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    sub_1001F61B8();

    swift_willThrow();
  }

  return v7;
}

id sub_1000E06D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, uint64_t a8, uint64_t a9, void *a10)
{
  v18 = sub_1001F6B48();

  v19 = [a10 namedVectorGlyphWithName:a1 scaleFactor:a2 deviceIdiom:a3 layoutDirection:a4 glyphSize:a5 glyphWeight:v18 glyphPointSize:a6 appearanceName:a7];

  return v19;
}

unint64_t sub_1000E0790()
{
  result = qword_1002AC8D0;
  if (!qword_1002AC8D0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC8D0);
  }

  return result;
}

unint64_t sub_1000E07E8()
{
  result = qword_1002B3730;
  if (!qword_1002B3730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002B3730);
  }

  return result;
}

uint64_t sub_1000E082C()
{

  return CGSVGAttributeCreateWithColor();
}

NSString sub_1000E084C()
{

  return sub_1001F6B48();
}

uint64_t sub_1000E087C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_39:
  v3 = sub_1001F7B48();
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = *v1;
  v5 = v1[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;

  for (i = 15; v7 != i >> 14; i = sub_1001F6C48())
  {
    if (sub_1001F6D98() == 95 && v9 == 0xE100000000000000)
    {

      break;
    }

    v11 = sub_1001F7EA8();

    if (v11)
    {
      break;
    }
  }

  v12 = sub_1001F6DB8();
  v20 = v13;
  v21 = v12;

  v14 = 0;
  v15 = 0;
  v22 = v3;
  v23 = a1 & 0xC000000000000001;
  v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  while (v3 != v15)
  {
    if (v23)
    {
      v16 = sub_1001F7808();
    }

    else
    {
      if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v16 = *(a1 + 8 * v15 + 32);
    }

    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v17 = v4 == *(v16 + 48) && v5 == *(v16 + 56);
    if (v17 || (sub_1001F7EA8() & 1) != 0)
    {

      return v16;
    }

    if (v14)
    {

      ++v15;
    }

    else
    {

      v18 = sub_1000E1BE0(v21, v20);

      if (v18)
      {
        v14 = v16;
      }

      else
      {

        v14 = 0;
      }

      ++v15;
    }

    v3 = v22;
  }

  if (!v14)
  {
    sub_1001C19A8(0, v23 == 0, a1);
    if (v23)
    {
      return sub_1001F7808();
    }

    else
    {
      v14 = *(a1 + 32);
    }
  }

  return v14;
}

BOOL sub_1000E0B14(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1000E0BC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v37 = a1;
  v38 = a2;
  v35 = 45;
  v36 = 0xE100000000000000;
  v33 = 95;
  v34 = 0xE100000000000000;
  v26 = sub_10001C790();
  v27 = v26;
  v25[0] = &type metadata for String;
  v25[1] = v26;
  v3 = sub_1001F75F8();
  v5 = v4;
  if (qword_1002AC460 != -1)
  {
LABEL_27:
    swift_once();
  }

  v6 = 0;
  v30 = *(qword_1002E60C0 + 16);
  v31 = qword_1002E60C0;
  v7 = (qword_1002E60C0 + 64);
  while (v30 != v6)
  {
    if (v6 >= *(v31 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v9 = *(v7 - 4);
    v8 = *(v7 - 3);
    v11 = *(v7 - 2);
    v10 = *(v7 - 1);
    v12 = *v7;
    if (v9 == v3 && v8 == v5)
    {

      v9 = v3;
      v8 = v5;
      goto LABEL_24;
    }

    v14 = sub_1001F7EA8();
    if (v14)
    {

      goto LABEL_24;
    }

    v29 = v9;
    v32 = &v28;
    v37 = v3;
    v38 = v5;
    __chkstk_darwin(v14, v15);
    v26 = &v37;

    if (sub_1000E0B14(sub_100072CF0, v25, v12))
    {

      v9 = v29;
      goto LABEL_24;
    }

    v7 += 5;
    ++v6;
  }

  sub_1000E0F34(95, 0xE100000000000000, v3, v5);
  if ((v16 & 1) == 0)
  {
    v32 = sub_1001F6DB8();
    v29 = v19;
    v30 = v18;
    v3 = v20;

    v21 = 0;
    v22 = *(v31 + 16);
    v23 = (v31 + 64);
    while (v22 != v21)
    {
      if (v21 >= *(v31 + 16))
      {
        goto LABEL_26;
      }

      v9 = *(v23 - 4);
      v8 = *(v23 - 3);
      v11 = *(v23 - 2);
      v10 = *(v23 - 1);
      v5 = *v23;

      if (sub_1000E1BE0(v32, v30))
      {

        v12 = v5;
        goto LABEL_24;
      }

      ++v21;
      v23 += 5;
    }
  }

  v9 = 0;
  v8 = 0;
  v11 = 0;
  v10 = 0;
  v12 = 0;
LABEL_24:
  v24 = v28;
  *v28 = v9;
  v24[1] = v8;
  v24[2] = v11;
  v24[3] = v10;
  v24[4] = v12;
  return result;
}

unint64_t sub_1000E0F34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_1001F6C48())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_1001F6D98() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_1001F7EA8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1000E1020(uint64_t a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + 8 * i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000E1060@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000E1DC8();
  sub_1001F8168();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  sub_10001AE68(v17, v18);
  sub_1000E1DC8();
  v5 = sub_1001F7EC8();
  v8 = v5;
  v9 = v6;
  sub_1000E0BC4(v5, v6, &v19);
  v10 = v20;
  if (!v20)
  {
    v13 = sub_1001F7848();
    swift_allocError();
    v15 = v14;
    sub_1000183C4(&qword_1002B3738);
    *v15 = &type metadata for OctaneLocale;
    sub_10001AE68(v17, v18);
    sub_1001F7EB8();
    sub_1001F77B8(23);

    v23._countAndFlagsBits = v8;
    v23._object = v9;
    sub_1001F6CA8(v23);

    sub_1001F7838();
    (*(*(v13 - 8) + 104))(v15, enum case for DecodingError.valueNotFound(_:), v13);
    swift_willThrow();
    sub_100019CCC(v17);
    return sub_100019CCC(a1);
  }

  v11 = v21;
  v12 = v19;
  v16 = v22;

  sub_100019CCC(v17);
  result = sub_100019CCC(a1);
  *a2 = v12;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_1000E127C(void *a1)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001F8188();
  sub_10004BD98(v2, v3);
  sub_1001F7EE8();
  return sub_100019CCC(v2);
}

void sub_1000E131C()
{
  qword_1002E6098 = 0x53555F6E65;
  unk_1002E60A0 = 0xE500000000000000;
  strcpy(&qword_1002E60A8, "English (U.S.)");
  unk_1002E60B7 = -18;
  qword_1002E60B8 = &_swiftEmptyArrayStorage;
}

uint64_t sub_1000E136C()
{
  sub_1000183C4(&qword_1002B3740);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10020BEC0;
  if (qword_1002AC458 != -1)
  {
    swift_once();
  }

  v1 = unk_1002E60A0;
  v2 = qword_1002E60A8;
  v3 = unk_1002E60B0;
  v4 = qword_1002E60B8;
  *(v0 + 32) = qword_1002E6098;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = 29281;
  *(v0 + 80) = 0xE200000000000000;
  *(v0 + 88) = 0x636962617241;
  *(v0 + 96) = 0xE600000000000000;
  *(v0 + 104) = _swiftEmptyArrayStorage;
  *(v0 + 112) = 24931;
  *(v0 + 120) = 0xE200000000000000;
  *(v0 + 128) = 0x6E616C61746143;
  *(v0 + 136) = 0xE700000000000000;
  *(v0 + 144) = _swiftEmptyArrayStorage;
  *(v0 + 152) = 0x736E61485F687ALL;
  *(v0 + 160) = 0xE700000000000000;
  *(v0 + 168) = 0xD000000000000014;
  *(v0 + 176) = 0x80000001002275B0;
  *(v0 + 184) = &off_1002791D8;
  *(v0 + 192) = 0x746E61485F687ALL;
  *(v0 + 200) = 0xE700000000000000;
  *(v0 + 208) = 0xD000000000000015;
  *(v0 + 216) = 0x80000001002275D0;
  *(v0 + 224) = &off_100279208;
  *(v0 + 232) = 29288;
  *(v0 + 240) = 0xE200000000000000;
  *(v0 + 248) = 0x6E616974616F7243;
  *(v0 + 256) = 0xE800000000000000;
  *(v0 + 264) = _swiftEmptyArrayStorage;
  *(v0 + 272) = 29539;
  *(v0 + 280) = 0xE200000000000000;
  *(v0 + 288) = 0x6863657A43;
  *(v0 + 296) = 0xE500000000000000;
  *(v0 + 304) = _swiftEmptyArrayStorage;
  *(v0 + 312) = 24932;
  *(v0 + 320) = 0xE200000000000000;
  *(v0 + 328) = 0x6873696E6144;
  *(v0 + 336) = 0xE600000000000000;
  *(v0 + 344) = _swiftEmptyArrayStorage;
  *(v0 + 352) = 27758;
  *(v0 + 360) = 0xE200000000000000;
  *(v0 + 368) = 0x6863747544;
  *(v0 + 376) = 0xE500000000000000;
  *(v0 + 384) = _swiftEmptyArrayStorage;
  *(v0 + 392) = 0x55415F6E65;
  *(v0 + 400) = 0xE500000000000000;
  *(v0 + 408) = 0xD000000000000013;
  *(v0 + 416) = 0x80000001002275F0;
  *(v0 + 424) = _swiftEmptyArrayStorage;
  *(v0 + 432) = 0x41435F6E65;
  *(v0 + 440) = 0xE500000000000000;
  *(v0 + 448) = 0xD000000000000010;
  *(v0 + 456) = 0x8000000100227610;
  *(v0 + 464) = _swiftEmptyArrayStorage;
  *(v0 + 472) = 0x42475F6E65;
  *(v0 + 480) = 0xE500000000000000;
  strcpy((v0 + 488), "English (U.K.)");
  *(v0 + 503) = -18;
  *(v0 + 504) = _swiftEmptyArrayStorage;
  *(v0 + 512) = 26982;
  *(v0 + 520) = 0xE200000000000000;
  *(v0 + 528) = 0x6873696E6E6946;
  *(v0 + 536) = 0xE700000000000000;
  *(v0 + 544) = _swiftEmptyArrayStorage;
  *(v0 + 552) = 29286;
  *(v0 + 560) = 0xE200000000000000;
  *(v0 + 568) = 0x68636E657246;
  *(v0 + 576) = 0xE600000000000000;
  *(v0 + 584) = _swiftEmptyArrayStorage;
  *(v0 + 592) = 0x41435F7266;
  *(v0 + 600) = 0xE500000000000000;
  *(v0 + 608) = 0x282068636E657246;
  *(v0 + 616) = 0xEF296164616E6143;
  *(v0 + 624) = _swiftEmptyArrayStorage;
  *(v0 + 632) = 25956;
  *(v0 + 640) = 0xE200000000000000;
  *(v0 + 648) = 0x6E616D726547;
  *(v0 + 656) = 0xE600000000000000;
  *(v0 + 664) = _swiftEmptyArrayStorage;
  *(v0 + 672) = 27749;
  *(v0 + 680) = 0xE200000000000000;
  *(v0 + 688) = 0x6B65657247;
  *(v0 + 696) = 0xE500000000000000;
  *(v0 + 704) = _swiftEmptyArrayStorage;
  *(v0 + 712) = 25960;
  *(v0 + 720) = 0xE200000000000000;
  *(v0 + 728) = 0x776572626548;
  *(v0 + 736) = 0xE600000000000000;
  *(v0 + 744) = _swiftEmptyArrayStorage;
  *(v0 + 752) = 26984;
  *(v0 + 760) = 0xE200000000000000;
  *(v0 + 768) = 0x69646E6948;
  *(v0 + 776) = 0xE500000000000000;
  *(v0 + 784) = _swiftEmptyArrayStorage;
  *(v0 + 792) = 30056;
  *(v0 + 800) = 0xE200000000000000;
  *(v0 + 808) = 0x61697261676E7548;
  *(v0 + 816) = 0xE90000000000006ELL;
  *(v0 + 824) = _swiftEmptyArrayStorage;
  *(v0 + 832) = 25705;
  *(v0 + 840) = 0xE200000000000000;
  *(v0 + 848) = 0x6973656E6F646E49;
  *(v0 + 856) = 0xE900000000000061;
  *(v0 + 864) = _swiftEmptyArrayStorage;
  *(v0 + 872) = 29801;
  *(v0 + 880) = 0xE200000000000000;
  *(v0 + 888) = 0x6E61696C617449;
  *(v0 + 896) = 0xE700000000000000;
  *(v0 + 904) = _swiftEmptyArrayStorage;
  *(v0 + 912) = 24938;
  *(v0 + 920) = 0xE200000000000000;
  *(v0 + 928) = 0x6573656E6170614ALL;
  *(v0 + 936) = 0xE800000000000000;
  *(v0 + 944) = _swiftEmptyArrayStorage;
  *(v0 + 952) = 28523;
  *(v0 + 960) = 0xE200000000000000;
  *(v0 + 968) = 0x6E6165726F4BLL;
  *(v0 + 976) = 0xE600000000000000;
  *(v0 + 984) = _swiftEmptyArrayStorage;
  *(v0 + 992) = 29549;
  *(v0 + 1000) = 0xE200000000000000;
  *(v0 + 1008) = 0x79616C614DLL;
  *(v0 + 1016) = 0xE500000000000000;
  *(v0 + 1024) = _swiftEmptyArrayStorage;
  *(v0 + 1032) = 25198;
  *(v0 + 1040) = 0xE200000000000000;
  *(v0 + 1048) = 0x6169676577726F4ELL;
  *(v0 + 1056) = 0xE90000000000006ELL;
  *(v0 + 1064) = _swiftEmptyArrayStorage;
  *(v0 + 1072) = 27760;
  *(v0 + 1080) = 0xE200000000000000;
  *(v0 + 1088) = 0x6873696C6F50;
  *(v0 + 1096) = 0xE600000000000000;
  *(v0 + 1104) = _swiftEmptyArrayStorage;
  *(v0 + 1112) = 0x52425F7470;
  *(v0 + 1120) = 0xE500000000000000;
  *(v0 + 1128) = 0xD000000000000013;
  *(v0 + 1136) = 0x8000000100227630;
  *(v0 + 1144) = _swiftEmptyArrayStorage;
  *(v0 + 1152) = 0x54505F7470;
  *(v0 + 1160) = 0xE500000000000000;
  *(v0 + 1168) = 0xD000000000000015;
  *(v0 + 1176) = 0x8000000100227650;
  *(v0 + 1184) = _swiftEmptyArrayStorage;
  *(v0 + 1192) = 28530;
  *(v0 + 1200) = 0xE200000000000000;
  *(v0 + 1208) = 0x6E61696E616D6F52;
  *(v0 + 1216) = 0xE800000000000000;
  *(v0 + 1224) = _swiftEmptyArrayStorage;
  *(v0 + 1232) = 30066;
  *(v0 + 1240) = 0xE200000000000000;
  *(v0 + 1248) = 0x6E616973737552;
  *(v0 + 1256) = 0xE700000000000000;
  *(v0 + 1264) = _swiftEmptyArrayStorage;
  *(v0 + 1272) = 27507;
  *(v0 + 1280) = 0xE200000000000000;
  *(v0 + 1288) = 0x6B61766F6C53;
  *(v0 + 1296) = 0xE600000000000000;
  *(v0 + 1304) = _swiftEmptyArrayStorage;
  *(v0 + 1312) = 0x584D5F7365;
  *(v0 + 1320) = 0xE500000000000000;
  *(v0 + 1328) = 0xD000000000000010;
  *(v0 + 1336) = 0x8000000100227670;
  *(v0 + 1344) = _swiftEmptyArrayStorage;
  *(v0 + 1352) = 0x53455F7365;
  *(v0 + 1360) = 0xE500000000000000;
  *(v0 + 1368) = 0x206873696E617053;
  *(v0 + 1376) = 0xEF296E6961705328;
  *(v0 + 1384) = _swiftEmptyArrayStorage;
  *(v0 + 1392) = 30323;
  *(v0 + 1400) = 0xE200000000000000;
  *(v0 + 1408) = 0x68736964657753;
  *(v0 + 1416) = 0xE700000000000000;
  *(v0 + 1424) = _swiftEmptyArrayStorage;
  *(v0 + 1432) = 26740;
  *(v0 + 1440) = 0xE200000000000000;
  *(v0 + 1448) = 1767991380;
  *(v0 + 1456) = 0xE400000000000000;
  *(v0 + 1464) = _swiftEmptyArrayStorage;
  *(v0 + 1472) = 29300;
  *(v0 + 1480) = 0xE200000000000000;
  *(v0 + 1488) = 0x6873696B727554;
  *(v0 + 1496) = 0xE700000000000000;
  *(v0 + 1504) = _swiftEmptyArrayStorage;
  *(v0 + 1512) = 27509;
  *(v0 + 1520) = 0xE200000000000000;
  *(v0 + 1528) = 0x61696E6961726B55;
  *(v0 + 1536) = 0xE90000000000006ELL;
  *(v0 + 1544) = _swiftEmptyArrayStorage;
  *(v0 + 1552) = 26998;
  *(v0 + 1560) = 0xE200000000000000;
  *(v0 + 1568) = 0x656D616E74656956;
  *(v0 + 1576) = 0xEA00000000006573;
  *(v0 + 1584) = _swiftEmptyArrayStorage;
  qword_1002E60C0 = v0;
}

double sub_1000E1A58@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000E1060(a1, v6);
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

BOOL sub_1000E1AB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (*a1 == *a2 && v3 == v5)
  {
    return 1;
  }

  v7 = sub_1001F7EA8();
  if (v7)
  {
    return 1;
  }

  v17 = v4;
  v18 = v5;
  __chkstk_darwin(v7, v8);
  v16 = &v17;
  if (v10 = sub_1000E0B14(sub_100048E80, v15, v9))
  {
    return 1;
  }

  else
  {
    v17 = v2;
    v18 = v3;
    __chkstk_darwin(v10, v11);
    v16 = &v17;
    return sub_1000E0B14(sub_100072CF0, v15, v14);
  }
}

uint64_t sub_1000E1BE0(uint64_t a1, unint64_t a2)
{

  v4 = a1;
  while (1)
  {
    v5 = sub_1001F6CE8();
    if (!v6)
    {
      break;
    }

    v7 = v6;
    if ((v4 ^ a2) < 0x4000)
    {

      return 1;
    }

    v8 = v5;
    sub_1000E1DB0();
    v9 = sub_1001F7558();
    v11 = v10;
    sub_1000E1DB0();
    v4 = sub_1001F74F8();
    if (v8 == v9 && v7 == v11)
    {
    }

    else
    {
      v13 = sub_1001F7EA8();

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  if ((v4 ^ a2) < 0x4000)
  {
    return 1;
  }

  sub_1000E1DB0();
  sub_1001F7558();
  sub_1000E1DB0();
  sub_1001F74F8();
LABEL_15:

  return 0;
}

uint64_t sub_1000E1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1001F7EA8() & 1;
  }
}

uint64_t sub_1000E1DDC(int a1, uint64_t a2, char a3)
{
  sub_10019EB88();
  v7 = v6;
  if (!v3)
  {
    if (a3)
    {
      sub_10019EEBC();
    }

    if (a1 == 30)
    {
      v9 = 0;
      sub_10019EA44(v7, 41, 27, &v9, 4u);
    }
  }

  return v7;
}

uint64_t sub_1000E2024(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = result;
    sub_1000E239C();
    if (v2)
    {
      *(v1 + 16) = -1;
      swift_willThrow();
    }

    return v1;
  }

  return result;
}

void sub_1000E207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(a1 + 16) & 0x80000000) == 0)
  {
    v6 = a6 - a5;
    if (!a5)
    {
      v6 = 0;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v6))
    {
      sub_10019E990();
      return;
    }

    __break(1u);
  }

  sub_100077354();
  v7 = sub_1000276A0();
  sub_100077300(v7, v8);
}

uint64_t sub_1000E2150(uint64_t (*a1)(void))
{
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    return a1();
  }

  sub_100077354();
  v3 = sub_1000276A0();
  return sub_100077300(v3, v4);
}

void sub_1000E21B0()
{
  v1 = *(v0 + 16);
  if (v1 < 0)
  {
    sub_100077354();
    v2 = sub_1000276A0();
    sub_100077300(v2, v3);
  }

  else
  {
    *(v0 + 16) = -1;
    sub_10019DE1C(v1);
  }
}

unint64_t sub_1000E22DC(uint64_t (*a1)(void))
{
  if ((*(v1 + 16) & 0x80000000) != 0)
  {
    sub_100077354();
    v4 = sub_1000276A0();
    return sub_100077300(v4, v5);
  }

  else
  {
    result = a1();
    if (!v2)
    {
      return sub_1000E2678();
    }
  }

  return result;
}

void sub_1000E239C()
{
  v2 = *(v0 + 16);
  sub_10019DD84();
  if (v1)
  {
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88);
    if (swift_dynamicCast())
    {

      if (v6 == 22)
      {

        sub_1000B4A80();
        sub_1000276A0();
      }

      else
      {
        sub_10019DE1C(v2);
        sub_1000274C4();
        sub_1000276A0();
        *v3 = v4;
        *(v3 + 8) = v5;
        *(v3 + 16) = v6;
      }

      swift_willThrow();
    }
  }
}

uint64_t sub_1000E24B8(uint64_t result, uint64_t a2)
{
  if (result == 6 && a2 == 1)
  {
    result = *(v2 + 16);
    if ((result & 0x80000000) == 0)
    {
      sub_10019E704();
      if (v3)
      {
      }

      else
      {
        v5 = sub_1000E2678();

        if ((v5 & 0x8000000000000000) != 0)
        {
          return result;
        }
      }
    }
  }

  __chkstk_darwin(result, a2);
  return sub_10017A0E4(sub_1000E3138);
}

uint64_t sub_1000E2600(unint64_t a1)
{
  v2 = *(v1 + 16);
  if ((v2 & 0x80000000) != 0)
  {
    sub_100077354();
    v5 = sub_1000276A0();
    return sub_100077300(v5, v6);
  }

  else
  {

    sub_1000E2DDC(v2, a1);
  }
}

unint64_t sub_1000E2678()
{
  v4 = *(v0 + 1);
  if (v4 == 1)
  {
    sub_1000183C4(&qword_1002B36F0);
    v7 = swift_allocObject();
    sub_1000E31B8(v7);
    return v0 | 0x8000000000000000;
  }

  if (v4 == 30)
  {
    sub_1000E3180();
    *&v9 = v2;
    *(&v9 + 1) = v3;
    sub_1000DDFB4(30, &v9, 0x2EuLL);
    sub_1000E3198();
    sub_1000183C4(&qword_1002AE9A0);
    v5 = swift_allocObject();
    return sub_1000E3158(v5);
  }

  if (v4 != 2)
  {
    sub_1001F77B8(26);

    *&v9 = 0xD000000000000018;
    *(&v9 + 1) = 0x8000000100227720;
    v10._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v10);

    sub_1000E31A4();
    sub_1001F7AC8();
    __break(1u);
    goto LABEL_10;
  }

  v9 = *v0;
  v8 = v9;
  sub_1000E31D8(&v9);
  if (v1)
  {
LABEL_10:
    sub_1000DFB80();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_1000E3198();
  sub_1000183C4(&qword_1002AE9A8);
  result = swift_allocObject();
  *(result + 16) = v8;
  *(result + 32) = v0;
  *(result + 40) = v0;
  return result;
}

unint64_t sub_1000E28D0(__int128 *a1)
{
  v6 = *(a1 + 1);
  switch(v6)
  {
    case 1:
      sub_1000183C4(&qword_1002B36F0);
      v9 = swift_allocObject();
      sub_1000E31B8(v9);
      return v1 | 0x8000000000000000;
    case 30:
      sub_1000E3180();
      *&v11 = v3;
      *(&v11 + 1) = v4;
      sub_1000DDFB4(30, &v11, 0x2EuLL);
      sub_1000E3198();
      sub_1000183C4(&qword_1002AE9A0);
      v8 = swift_allocObject();
      return sub_1000E3158(v8);
    case 2:
      v11 = *a1;
      v10 = v11;
      sub_1000E31D8(&v11);
      if (v2)
      {
        sub_1000DFB80();
        result = swift_unexpectedError();
        __break(1u);
      }

      else
      {
        sub_1000E3198();
        sub_1000183C4(&qword_1002AE9A8);
        result = swift_allocObject();
        *(result + 16) = v10;
        *(result + 32) = a1;
        *(result + 40) = v1;
      }

      break;
    default:
      return 0xF000000000000007;
  }

  return result;
}

uint64_t sub_1000E2A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1, a2);
  (*(v9 + 16))(&v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (HIDWORD(v10))
  {
    goto LABEL_5;
  }

  sub_10019EA44(a1, a3, a4, &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  return (*(v9 + 8))(&v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
}

uint64_t sub_1000E2BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v7))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v21 = *(v6 + 64);
  v12 = *(v6 + 72);
  v13 = sub_1001F75A8();
  v15 = v14;
  sub_10007CEC8(0, v13, v14);
  if (!v13)
  {
    goto LABEL_9;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

  if (v15 - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v17 = sub_1001F74D8();
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = v17;
  sub_10019E798(a1, a2, a3, v17, &v21);
  if (!v5)
  {
    (*(v6 + 16))(a5, v18, a4);
  }

  return sub_1000E2D80(v18, v13);
}

uint64_t sub_1000E2D80(uint64_t a1, uint64_t a2)
{
  result = sub_1001F7498();
  if (a2)
  {
  }

  return result;
}

void sub_1000E2DDC(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      v3 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x14);
      v4 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      LODWORD(__dst[0]) = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      DWORD1(__dst[0]) = v3;
      *(&__dst[0] + 1) = v4;
      *&__dst[1] = v5;
      DWORD2(__dst[1]) = v6;
      v7 = __dst;
      v8 = 28;
    }

    else
    {
      memcpy(__dst, ((a2 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x6AuLL);
      memcpy(v9, __dst, sizeof(v9));
      v7 = v9;
      a1 = v2;
      v8 = 106;
    }
  }

  else
  {
    __dst[0] = *(a2 + 16);
    v7 = __dst;
    v8 = 16;
  }

  sub_10019E458(a1, v7, v8);
}

unint64_t sub_1000E2FC4()
{
  sub_1001F77B8(20);

  v1._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v1);

  v2._countAndFlagsBits = 32032;
  v2._object = 0xE200000000000000;
  sub_1001F6CA8(v2);
  return 0xD000000000000010;
}

unint64_t sub_1000E309C(uint64_t a1)
{
  result = sub_1000E30C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E30C4()
{
  result = qword_1002B3898;
  if (!qword_1002B3898)
  {
    type metadata accessor for BaseSocket();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3898);
  }

  return result;
}

uint64_t sub_1000E3158(uint64_t a1)
{
  *(a1 + 16) = v8;
  *(a1 + 17) = v9;
  *(a1 + 18) = v4;
  *(a1 + 20) = v5;
  *(a1 + 24) = v3;
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  result = a1 | 0x4000000000000000;
  *(a1 + 48) = v1;
  *(a1 + 56) = v2;
  return result;
}

void *sub_1000E31B8(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x6AuLL);
}

void sub_1000E31D8(uint64_t a1@<X8>)
{

  sub_1000DDFB4(2, (a1 | 4), 0x10uLL);
}

_BYTE *sub_1000E31F8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000E32C4);
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

void *sub_1000E32F8@<X0>(unint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v200 = 1;
  v199 = 1;
  sub_1000E4DDC();
  if (v4[2])
  {
    v6 = v4[4];
    v5 = v4[5];
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_119;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    sub_1001ED558(v6, v5, 10);
    v6 = v108;
    v27 = v109;
    goto LABEL_73;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1001F7858();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          v6 = 0;
          if (v10)
          {
            while (1)
            {
              sub_100027240();
              if (!v13 & v12)
              {
                goto LABEL_71;
              }

              sub_1000E4DA0();
              if (!v13)
              {
                goto LABEL_71;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_71;
              }

              sub_10002727C();
              if (v13)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_71;
      }

      goto LABEL_124;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        v6 = 0;
        if (v10)
        {
          while (1)
          {
            v23 = *v10 - 48;
            if (v23 > 9)
            {
              goto LABEL_71;
            }

            v24 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              goto LABEL_71;
            }

            v6 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_71:
      v6 = 0;
      v16 = 1;
      goto LABEL_72;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        v6 = 0;
        if (v10)
        {
          while (1)
          {
            sub_100027240();
            if (!v13 & v12)
            {
              goto LABEL_71;
            }

            sub_1000E4DA0();
            if (!v13)
            {
              goto LABEL_71;
            }

            v6 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_71;
            }

            sub_10002727C();
            if (v13)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_62:
        v16 = 0;
LABEL_72:
        LOBYTE(__src[0]) = v16;
        v27 = v16;
LABEL_73:

        if (v27)
        {
          v28 = 0;
        }

        else
        {
          v28 = v6;
        }

        for (i = v28; ; i = 0)
        {
          v204 = v27 & 1;
          sub_1000E4DDC();
          v141 = sub_100088634(v29);
          v142 = v30;

          sub_1000E4DDC();
          sub_100088634(v31);
          sub_1000A40F4();

          if (v27)
          {
            v32 = v6;
          }

          else
          {
            v32 = 0;
          }

          if (v27)
          {
            v33 = v27;
          }

          else
          {
            v33 = 0xE000000000000000;
          }

          v140 = sub_1001EE474(v32, v33);
          v202 = v34 & 1;
          sub_1000E4DB4();
          v138 = sub_100088634(v35);
          v139 = v36;

          sub_1000E4DDC();
          v136 = sub_100088634(v37);
          v137 = v38;

          sub_1000E4DDC();
          v134 = sub_100088634(v39);
          v135 = v40;

          HTTPHeaders.subscript.getter();
          v132 = sub_100088634(v41);
          v133 = v42;

          HTTPHeaders.subscript.getter();
          v130 = sub_100088634(v43);
          v131 = v44;

          HTTPHeaders.subscript.getter();
          v46 = v45;
          v128 = sub_100088634(v45);
          v129 = v47;

          HTTPHeaders.subscript.getter();
          sub_100088634(v48);
          sub_1000A40F4();

          if (a1)
          {
            v150 = v46;
            v151 = a1;
            __src[0] = 32;
            __src[1] = 0xE100000000000000;
            sub_10001C790();
            v127 = sub_1000E4E24();
          }

          else
          {
            v127 = 0;
          }

          HTTPHeaders.subscript.getter();
          v125 = sub_100088634(v49);
          v126 = v50;

          sub_1000E4DDC();
          v52 = v51;
          v123 = sub_100088634(v51);
          v124 = v53;

          sub_1000E4DDC();
          sub_100088634(v54);
          sub_1000A40F4();

          if (a1)
          {
            v55 = v52;
          }

          else
          {
            v55 = 0;
          }

          if (a1)
          {
            v56 = a1;
          }

          else
          {
            v56 = 0xE000000000000000;
          }

          v122 = sub_1001EE474(v55, v56);
          v196 = v57 & 1;
          sub_1000E4DDC();
          v120 = sub_100088634(v58);
          v121 = v59;

          sub_1000E4DDC();
          v118 = sub_100088634(v60);
          v119 = v61;

          sub_1000E4DDC();
          v116 = sub_100088634(v62);
          v117 = v63;

          sub_1000E4DDC();
          v114 = sub_100088634(v64);
          v115 = v65;

          sub_1000E4DDC();
          v112 = sub_100088634(v66);
          v113 = v67;

          sub_1000E4DB4();
          v110 = sub_100088634(v68);
          v111 = v69;

          sub_1000E4DDC();
          v71 = sub_100088634(v70);
          v73 = v72;

          if (v73)
          {
            v74._rawValue = &off_100279CB0;
            v205._countAndFlagsBits = v71;
            v205._object = v73;
            sub_1001F7BD8(v74, v205);
            sub_100013EFC();

            v200 = v71 != 0;
          }

          sub_1000E4DB4();
          v76 = v75;
          v6 = sub_100088634(v75);
          v78 = v77;

          if (v78)
          {
            v79._rawValue = &off_100279CE8;
            v206._countAndFlagsBits = v6;
            v206._object = v78;
            sub_1001F7BD8(v79, v206);
            sub_100013EFC();

            v199 = v6 != 0;
          }

          v80 = _swiftEmptyArrayStorage;
          v147 = sub_1001F69B8();
          sub_1000E4DB4();
          sub_100088634(v81);
          sub_1000A40F4();

          if (v76)
          {
            v150 = v6;
            v151 = v76;
            __src[0] = 8251;
            __src[1] = 0xE200000000000000;
            sub_10001C790();
            v80 = sub_1000E4E24();
          }

          v144 = a2;
          a1 = v80[2];
          if (!a1)
          {
LABEL_113:

            v105._countAndFlagsBits = 0xD00000000000001FLL;
            v105._object = 0x8000000100227920;
            HTTPHeaders.first(name:)(v105);
            sub_1000A40F4();

            if (v76)
            {
              v106 = sub_1000E3FC8(v6, v76);
            }

            else
            {
              v106 = 0;
            }

            *(&__src[1] + 1) = *v203;
            *(&__src[5] + 1) = *v201;
            *(&__src[22] + 2) = v197;
            *(&__src[26] + 1) = *v195;
            HIDWORD(v151) = *&v203[3];
            *(&v151 + 1) = *v203;
            *v156 = *v201;
            v175 = v197;
            *&v181[3] = *&v195[3];
            *v181 = *v195;
            HIDWORD(__src[1]) = *&v203[3];
            HIDWORD(__src[5]) = *&v201[3];
            HIWORD(__src[22]) = v198;
            HIDWORD(__src[26]) = *&v195[3];
            __src[0] = i;
            v150 = i;
            LOBYTE(__src[1]) = v204;
            LOBYTE(v151) = v204;
            v152 = v141;
            __src[2] = v141;
            __src[3] = v142;
            v153 = v142;
            __src[4] = v140;
            v154 = v140;
            LOBYTE(__src[5]) = v202;
            v155 = v202;
            *&v156[3] = *&v201[3];
            v157 = v147;
            __src[6] = v147;
            __src[7] = v138;
            v158 = v138;
            v159 = v139;
            __src[8] = v139;
            __src[9] = v136;
            v160 = v136;
            v161 = v137;
            __src[10] = v137;
            __src[11] = v134;
            v162 = v134;
            v163 = v135;
            __src[12] = v135;
            __src[13] = v132;
            v164 = v132;
            v165 = v133;
            __src[14] = v133;
            __src[15] = v130;
            v166 = v130;
            v167 = v131;
            __src[16] = v131;
            __src[17] = v128;
            v168 = v128;
            v169 = v129;
            __src[18] = v129;
            __src[19] = v127;
            v170 = v127;
            v171 = v125;
            __src[20] = v125;
            __src[21] = v126;
            v172 = v126;
            LOBYTE(__src[22]) = v200;
            v173 = v200;
            BYTE1(__src[22]) = v199;
            v174 = v199;
            v176 = v198;
            v177 = v123;
            __src[23] = v123;
            __src[24] = v124;
            v178 = v124;
            __src[25] = v122;
            v179 = v122;
            LOBYTE(__src[26]) = v196;
            v180 = v196;
            v182 = v120;
            __src[27] = v120;
            __src[28] = v121;
            v183 = v121;
            v184 = v118;
            __src[29] = v118;
            __src[30] = v119;
            v185 = v119;
            v186 = v116;
            __src[31] = v116;
            __src[32] = v117;
            v187 = v117;
            v188 = v114;
            __src[33] = v114;
            __src[34] = v115;
            v189 = v115;
            v190 = v112;
            __src[35] = v112;
            __src[36] = v113;
            v191 = v113;
            v192 = v110;
            __src[37] = v110;
            __src[38] = v111;
            v193 = v111;
            LOBYTE(__src[39]) = v106 & 1;
            v194 = v106 & 1;
            sub_1000E4AC4(__src, v148);
            sub_1000B00B8(&v150);
            return memcpy(v144, __src, 0x139uLL);
          }

          a2 = v80 + 5;
          sub_10001C790();
          while (1)
          {
            v82 = *a2;
            v150 = *(a2 - 1);
            v151 = v82;
            __src[0] = 47;
            __src[1] = 0xE100000000000000;
            v83 = sub_1001F75B8();
            v6 = v83;
            v84 = v83[2];
            if (!v84)
            {

              goto LABEL_112;
            }

            v85 = v83[4];
            v76 = v83[5];
            v86 = &v83[2 * v84 + 4];
            v87 = *(v86 - 8);
            v146 = *(v86 - 16);

            v6 = v147;
            if (!v147)
            {

              v147 = 0;
              goto LABEL_112;
            }

            v145 = v87;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v150 = v147;
            v89 = sub_10011108C();
            v91 = *(v147 + 16);
            v92 = (v90 & 1) == 0;
            v93 = v91 + v92;
            if (__OFADD__(v91, v92))
            {
              break;
            }

            v94 = v89;
            v95 = v90;
            sub_1000183C4(&unk_1002BCC80);
            v6 = &v150;
            if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v93))
            {
              v6 = v150;
              v96 = sub_10011108C();
              if ((v95 & 1) != (v97 & 1))
              {
                goto LABEL_126;
              }

              v94 = v96;
            }

            v98 = v150;
            v147 = v150;
            if (v95)
            {
              v99 = (v150[7] + 16 * v94);
              v6 = v99[1];
              *v99 = v146;
              v99[1] = v145;
            }

            else
            {
              v150[(v94 >> 6) + 8] |= 1 << v94;
              v100 = (v98[6] + 16 * v94);
              *v100 = v85;
              v100[1] = v76;
              v101 = (v98[7] + 16 * v94);
              *v101 = v146;
              v101[1] = v145;
              v102 = v98[2];
              v103 = __OFADD__(v102, 1);
              v104 = v102 + 1;
              if (v103)
              {
                goto LABEL_118;
              }

              v98[2] = v104;
            }

LABEL_112:
            a2 += 2;
            if (!--a1)
            {
              goto LABEL_113;
            }
          }

          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:

          v27 = 1;
        }
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v150 = v6;
  v151 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        while (1)
        {
          sub_100027240();
          if (!v13 & v12)
          {
            break;
          }

          sub_1000E4DA0();
          if (!v13)
          {
            break;
          }

          v6 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          sub_10002727C();
          if (v13)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (v7 != 1)
      {
        sub_1000E4E10();
        while (1)
        {
          sub_100027240();
          if (!v13 & v12)
          {
            break;
          }

          sub_1000E4DA0();
          if (!v13)
          {
            break;
          }

          v6 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          sub_10002727C();
          if (v13)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_123;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      sub_1000E4E10();
      while (1)
      {
        sub_100027240();
        if (!v13 & v12)
        {
          break;
        }

        sub_1000E4DA0();
        if (!v13)
        {
          break;
        }

        v6 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        sub_10002727C();
        if (v13)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_125:
  __break(1u);
LABEL_126:
  result = sub_1001F7FC8();
  __break(1u);
  return result;
}

uint64_t sub_1000E3FB0(char a1)
{
  if (a1)
  {
    return 3157554;
  }

  else
  {
    return 3157553;
  }
}

uint64_t sub_1000E3FC8(uint64_t a1, unint64_t a2)
{
  v3 = a1 == 49 && a2 == 0xE100000000000000;
  if (v3 || (sub_1000E4DF4() & 1) != 0 || (a1 == 3157553 ? (v5 = a2 == 0xE300000000000000) : (v5 = 0), v5 || (sub_1000E4DF4() & 1) != 0))
  {

    return 0;
  }

  v7 = a1 == 50 && a2 == 0xE100000000000000;
  if (!v7 && (sub_1000E4DF4() & 1) == 0)
  {
    v8 = a1 == 3157554 && a2 == 0xE300000000000000;
    if (!v8 && (sub_1000E4DF4() & 1) == 0)
    {
      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v9 = sub_1001F6688();
      sub_100019C94(v9, qword_1002E6180);
      sub_100013EFC();

      v10 = sub_1001F6668();
      v11 = sub_1001F7278();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v15 = v13;
        *v12 = 136315138;
        v14 = sub_1000E4544(a1, a2, &v15);

        *(v12 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "Defaulting to legacy StoreKit mode because an invalid header version value was provided (%s)", v12, 0xCu);
        sub_100019CCC(v13);
      }

      else
      {
      }

      return 0;
    }
  }

  return 1;
}

BOOL sub_1000E41D0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_100279CB0;
  v6._object = a2;
  sub_1001F7BD8(v4, v6);
  sub_100013EFC();

  return v2 != 0;
}

BOOL sub_1000E4230(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_100279CE8;
  v6._object = a2;
  sub_1001F7BD8(v4, v6);
  sub_100013EFC();

  return v2 != 0;
}

BOOL sub_1000E4290@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E41D0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000E42C4@<X0>(void *a1@<X8>)
{
  result = sub_1000E4214();
  *a1 = 0xD000000000000023;
  a1[1] = v3;
  return result;
}

BOOL sub_1000E4300@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E4230(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000E4348(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v4._rawValue = &off_10027BA88;
  v7._object = a2;
  sub_1001F7BD8(v4, v7);
  sub_100013EFC();

  if (v2 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E43BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E4348(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000E43EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E3FB0(*v1);
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

unint64_t sub_1000E4420()
{
  result = qword_1002B38A0;
  if (!qword_1002B38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B38A0);
  }

  return result;
}

uint64_t sub_1000E4474(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000E44E8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000E4544(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000E4544(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000E4608(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10002F9B0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100019CCC(v11);
  return v7;
}

unint64_t sub_1000E4608(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000E4708(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1001F7858();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000E4708(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000E4754(a1, a2);
  sub_1000E486C(&off_100278DE8);
  return v3;
}

char *sub_1000E4754(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1001F6CF8())
  {
    result = sub_1000E4950(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1001F7798();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1001F7858();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000E486C(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1000E49C0(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

void *sub_1000E4950(uint64_t a1, uint64_t a2)
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

  sub_1000183C4(&qword_1002ADDD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000E49C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADDD0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_1000E4AB4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1000E4B04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 313))
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

uint64_t sub_1000E4B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

_BYTE *sub_1000E4C1C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1000E4CB8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000E4CF0()
{
  result = qword_1002B38A8;
  if (!qword_1002B38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B38A8);
  }

  return result;
}

unint64_t sub_1000E4D48()
{
  result = qword_1002B38B0;
  if (!qword_1002B38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B38B0);
  }

  return result;
}

void sub_1000E4DB4()
{

  HTTPHeaders.subscript.getter();
}

void sub_1000E4DDC()
{

  HTTPHeaders.subscript.getter();
}

uint64_t sub_1000E4DF4()
{

  return sub_1001F7EA8();
}

uint64_t sub_1000E4E24()
{

  return sub_1001F75B8();
}

void sub_1000E4E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F6748();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B17C();
  (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v8 = sub_1001F7358();
  (*(v5 + 8))(v7, v4);
  MultiThreadedEventLoopGroup.shutdownGracefully(queue:_:)(v8, a1, a2);
}

uint64_t sub_1000E4F70(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1000E4F8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E4FCC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000E5010(uint64_t result, unsigned int a2)
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

uint64_t sub_1000E5060()
{
  v2 = *(v0 + 24);

  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  sub_1001F6CA8(v3);
  v4._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v4);

  return v2;
}

uint64_t sub_1000E50DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sysconf(58);
  if (v8 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  type metadata accessor for MultiThreadedEventLoopGroup();
  *(v4 + 16) = sub_10013937C(v9, sub_10013B570, 0);
  *(v4 + 40) = 0;
  type metadata accessor for UnfairLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *(v10 + 16) = v11;
  *v11 = 0;
  *(v4 + 56) = 0;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = v10;
  return v4;
}

void sub_1000E51A0()
{
  v2 = v1;
  if ((*(v0 + 56) & 1) == 0)
  {
    v3 = v0;
    v4 = *(v0 + 48);
    os_unfair_lock_lock(*(v4 + 16));
    v5 = *(v0 + 16);
    type metadata accessor for ServerBootstrap();
    v6 = swift_allocObject();
    v7 = swift_retain_n();
    if (sub_1000E65E0(v7, v5, &protocol witness table for MultiThreadedEventLoopGroup, v6))
    {

      swift_beginAccess();
      sub_100150FAC(256);
      sub_100150D5C(0x40000FFFFuLL, 1);
      swift_endAccess();
      swift_beginAccess();
      sub_100150D5C(0x100000006uLL, 1);
      swift_endAccess();

      v8 = ServerBootstrap.childChannelInitializer(_:)(sub_1000E6778, v3);

      v10 = *(v3 + 24);
      v9 = *(v3 + 32);
      v11 = *(v3 + 40);

      sub_100151384(v8, v10, v9, v11);
      sub_1001D605C();
      if (v2)
      {

        v13 = sub_1000E5060();
        v15 = v14;
        sub_1000E5E7C();
        sub_10002E0D8();
        swift_allocError();
        *v16 = v13;
        *(v16 + 8) = v15;
        *(v16 + 16) = 0;
        swift_willThrow();
      }

      else
      {
        v17 = v12;

        ObjectType = swift_getObjectType();
        v19 = (*(v17 + 40))(ObjectType, v17);
        if ((~v19 & 0xF000000000000007) != 0)
        {
          v20 = v19;
          v23 = SocketAddress.port.getter(v19);
          v22 = v21;
          sub_10002D83C(v20);
          if ((v22 & 1) == 0)
          {
            *(v3 + 40) = v23;
            sub_1000E5038();
          }
        }

        *(v3 + 56) = 1;
        os_unfair_lock_unlock(*(v4 + 16));
        (*(v17 + 24))(ObjectType, v17);
        sub_1001D61E8();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000E54A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);
  ChannelPipeline.configureHTTPServerPipeline(position:withPipeliningAssistance:withServerUpgrade:withErrorHandling:)(1, 0x8000000000000000, 1, 0, 0, 0, 1);

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;

  swift_unknownObjectRetain();
  v8 = sub_10019FB84();

  return v8;
}

uint64_t sub_1000E5590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HTTPHandler();
  swift_allocObject();
  *(sub_10019FC80() + 136) = &off_100288C40;
  swift_unknownObjectWeakAssign();
  ObjectType = swift_getObjectType();
  v6 = (*(a4 + 32))(ObjectType, a4);

  sub_1000E5FCC(v7, 0, 0, 1, 0x8000000000000000, v6, sub_1001DBFC0, &unk_100288D00, &off_1002921F8, sub_1000E67D0);
}

void sub_1000E56A0()
{
  if (*(v0 + 56) == 1)
  {
    v2 = v0;
    sub_1000E5780();
    if (v1)
    {
      sub_1000E5E7C();
      sub_10002E0D8();
      swift_allocError();
      *v3 = v1;
      *(v3 + 8) = 0;
      *(v3 + 16) = 1;
      swift_willThrow();
      v4 = *(*(v0 + 48) + 16);

      os_unfair_lock_lock(v4);
      *(v2 + 56) = 0;
      os_unfair_lock_unlock(v4);
    }

    else
    {
      v5 = *(*(v0 + 48) + 16);

      os_unfair_lock_lock(v5);
      *(v0 + 56) = 0;
      os_unfair_lock_unlock(v5);
    }
  }
}

uint64_t sub_1000E5780()
{
  sub_1001F6738();
  __chkstk_darwin();
  if (static MultiThreadedEventLoopGroup.currentEventLoop.getter())
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    type metadata accessor for Lock();
    swift_allocObject();
    v0 = Lock.init()();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    aBlock[4] = debugOnly(_:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000172C0;
    aBlock[3] = &unk_100288C78;
    _Block_copy(aBlock);
    aBlock[7] = _swiftEmptyArrayStorage;
    sub_100028258();
    sub_1000183C4(&qword_1002AC880);
    sub_1000282B0();
    sub_1001F7708();
    sub_1001F6818();
    swift_allocObject();
    v2 = sub_1001F67F8();
    v3 = swift_allocObject();
    v3[2] = v0;
    v3[3] = v1;
    v3[4] = v2;

    sub_1000E4E44(sub_1000E5F68, v3);

    sub_1001F67E8();
    Lock.lock()();
    swift_beginAccess();
    if (*(v1 + 16))
    {
      swift_willThrow();
      swift_errorRetain();
    }

    Lock.unlock()();
  }

  return result;
}

uint64_t sub_1000E5A50(void *a1)
{
  if (qword_1002AC498 != -1)
  {
    swift_once();
  }

  sub_100145F48(a1, 0, 0, 0, 0);
}

uint64_t sub_1000E5CF8()
{

  return v0;
}

uint64_t sub_1000E5D28()
{
  sub_1000E5CF8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E5D80(void *a1)
{
  sub_10014524C(a1, &v4);
  swift_getObjectType();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  v2 = v1;
  sub_1000E5E28(&v4);
  return v2;
}

unint64_t sub_1000E5E7C()
{
  result = qword_1002B3A00;
  if (!qword_1002B3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3A00);
  }

  return result;
}

uint64_t sub_1000E5ED0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E5F08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E5F20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E5FCC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *(a6 + 56);
  ObjectType = swift_getObjectType();
  if ((*(v16 + 16))(ObjectType, v16))
  {
    v18 = sub_1000E615C(a1, a2, a3, a4, a5, a6);
    v20 = v19 & 1;
    LOBYTE(v35) = v19 & 1;
    EventLoop.makeCompletedFuture<A>(_:)(&v34, ObjectType, &type metadata for ()[8], v16, v21, v22, v23, v24, v29, v30, v31, a8, v18, v35, v36, v37, v38, v39, v40, v41);
    v26 = v25;
    sub_1000374AC(v18, v20);
  }

  else
  {
    v27 = swift_allocObject();
    v27[2] = a6;
    v27[3] = a1;
    v27[4] = a9;
    v27[5] = a2;
    v27[6] = a3;
    v27[7] = a4;
    v27[8] = a5;
    v33 = *(v16 + 32);

    sub_10006F254(a4, a5);
    v26 = v33(a10, v27, &type metadata for ()[8], ObjectType, v16);
  }

  return v26;
}

uint64_t sub_1000E615C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, unint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  result = sub_1000E6898("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 198);
  if (*(a6 + 40) == 1)
  {
    sub_10002D678();
    sub_10002E0D8();
    v12 = swift_allocError();
    sub_1000E68D0(v12, v13);
    return v6;
  }

  if (!(a5 >> 62))
  {
    sub_1000E6898("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 248);
    v19 = *(a6 + 16);
    if (v19)
    {
      v20 = *(v19 + 16);
      v21 = sub_1000E68C4();
      sub_10006F254(v21, v22);

      if (v20)
      {
        while (v20 != *(a6 + 24))
        {
          v6 = ChannelHandlerContext.handler.getter();
          swift_unknownObjectRelease();
          if (v6 == a4)
          {
            v29 = sub_1000E68C4();
            sub_10006F21C(v29, v30);
            sub_1000E6870("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift");
            if (*(a6 + 40))
            {
LABEL_32:
              sub_10002D678();
              sub_10002E0D8();
              v31 = swift_allocError();
              sub_1000E68D0(v31, v32);

              return v6;
            }

            if (!a3)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }

          v23 = *(v20 + 16);

          v20 = v23;
          if (!v23)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_25;
      }

LABEL_26:
      v24 = sub_1000E68C4();
      sub_10006F21C(v24, v25);
      goto LABEL_27;
    }

LABEL_21:

LABEL_27:
    sub_1000A25AC();
    sub_10002E0D8();
    v6 = swift_allocError();
    *v26 = 1;

    return v6;
  }

  if (a5 >> 62 == 1)
  {
    sub_1000E6898("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 248);
    v14 = *(a6 + 16);
    if (v14)
    {
      v15 = *(v14 + 16);
      v16 = sub_1000E68C4();
      sub_10006F254(v16, v17);

      if (v15)
      {
        while (v15 != *(a6 + 24))
        {
          v6 = ChannelHandlerContext.handler.getter();
          swift_unknownObjectRelease();
          if (v6 == a4)
          {
            v27 = sub_1000E68C4();
            sub_10006F21C(v27, v28);
            sub_1000E6870("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift");
            if (*(a6 + 40))
            {
              goto LABEL_32;
            }

            if (!a3)
            {
              goto LABEL_33;
            }

            goto LABEL_34;
          }

          v18 = *(v15 + 16);

          v15 = v18;
          if (!v18)
          {
            goto LABEL_26;
          }
        }

LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (a4 | a5 ^ 0x8000000000000000)
  {
    if (*(a6 + 24))
    {
      sub_1000E6870("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift");

      if (!a3)
      {
LABEL_35:
        sub_10009B8A4();
        sub_1000E68E8();
      }

LABEL_36:
      sub_1000E68F4();
      sub_1000E6924();
      v34 = sub_1000E6854();
      a3(v34);
      sub_1000E690C();

      sub_1000E68B4();
      sub_10009B6A4();
      goto LABEL_37;
    }
  }

  else
  {
    if (*(a6 + 16))
    {
      sub_1000E6870("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift");

      if (!a3)
      {
LABEL_33:
        sub_10009B8A4();
        sub_1000E68E8();
      }

LABEL_34:
      sub_1000E68F4();
      sub_1000E6924();
      v33 = sub_1000E6854();
      a3(v33);
      sub_1000E690C();

      sub_1000E68B4();
      sub_10009B59C();
LABEL_37:
      sub_10009B954();

      return 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E65E0(void *a1, id a2, _UNKNOWN **a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    swift_unknownObjectRetain();
    a3 = &protocol witness table for MultiThreadedEventLoopGroup;
    v7 = a1;
  }

  Class = object_getClass(v7);
  if (Class != _TtC25ASOctaneSupportXPCService27MultiThreadedEventLoopGroup && Class != _TtC25ASOctaneSupportXPCService19SelectableEventLoop || v7 == 0)
  {
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(a4 + 16) = a1;
    *(a4 + 24) = &protocol witness table for MultiThreadedEventLoopGroup;
    *(a4 + 32) = v7;
    *(a4 + 40) = a3;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    *(a4 + 80) = sub_1000336E8(0, 2, 0, _swiftEmptyArrayStorage);
    *(a4 + 88) = sub_1000336E8(0, 2, 0, _swiftEmptyArrayStorage);
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    swift_beginAccess();
    sub_100150D5C(0x100000006uLL, 1);
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a4;
}

uint64_t sub_1000E6780()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E67E8()
{

  swift_unknownObjectRelease();

  sub_10006F21C(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000E6870(uint64_t a1)
{

  return debugOnly(_:)(a1, 117, 2, 280, v2, v1);
}

uint64_t sub_1000E6898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return debugOnly(_:)(a1, a2, a3, a4, v5, v4);
}

uint64_t sub_1000E68F4()
{

  return type metadata accessor for ChannelHandlerContext();
}

uint64_t sub_1000E690C()
{
}

uint64_t sub_1000E6924()
{

  return swift_allocObject();
}

uint64_t sub_1000E693C(uint64_t a1)
{
  type metadata accessor for InAppCheckDownloadQueueCountResponse();
  swift_allocObject();
  v2 = sub_1000B7E90();
  *(v2 + 24) = 2;
  *(v2 + 48) = _swiftEmptyArrayStorage;

  *(v2 + 32) = a1;
  *(v2 + 40) = 0;

  return v2;
}

void *sub_1000E69DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 32);
    switch(*(a1 + 57))
    {
      case 1:
        sub_1000E7A6C();
        v3 = 0xE400000000000000;

        v5 = 0;
        v21 = 0;
        break;
      default:
        v6 = sub_1001F7EA8();

        if (v6)
        {
          sub_1000E7A6C();

          goto LABEL_7;
        }

        v21 = sub_100077944(v4, v3);
        v22 = v4;
        break;
    }
  }

  else
  {
    sub_1000E7A6C();
LABEL_7:
    v5 = 0;
    v21 = 0;
    v3 = 0xE400000000000000;
  }

  v37 = v5 & 1;
  v7 = *(a1 + 57);
  v8 = *&aNone_3[8 * v7];
  v9 = *&aFreetriapayasy_0[8 * v7 + 24];
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v20 = *(a1 + 48);
  v12 = *(a1 + 56);
  v36 = 0;
  if (*a1 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription10AdHocOffer)
  {
    v14 = *(a1 + 96);
    v13 = *(a1 + 104);

    v15 = 0x66664F636F686441;
    v16 = 0xEA00000000007265;
  }

  else
  {
    v17 = *a1;

    v14 = 0;
    v13 = 0;
    v15 = 0x66664F6F72746E49;
    if (v17 != _TtCC25ASOctaneSupportXPCService18OctaneSubscription17IntroductoryOffer)
    {
      v15 = 0;
    }

    v16 = 0xEA00000000007265;
    if (v17 != _TtCC25ASOctaneSupportXPCService18OctaneSubscription17IntroductoryOffer)
    {
      v16 = 0;
    }
  }

  v18 = v20;
  if (v12)
  {
    v18 = 1;
  }

  __src[0] = v14;
  __src[1] = v13;
  __src[2] = v15;
  __src[3] = v16;
  __src[4] = v21;
  LOBYTE(__src[5]) = v37;
  __src[6] = v22;
  __src[7] = v3;
  __src[8] = v8;
  __src[9] = v9;
  __src[10] = v11;
  __src[11] = v10;
  __src[12] = v18;
  LOBYTE(__src[13]) = v36;
  v26[0] = v14;
  v26[1] = v13;
  v26[2] = v15;
  v26[3] = v16;
  v26[4] = v21;
  v27 = v37;
  v28 = v22;
  v29 = v3;
  v30 = v8;
  v31 = v9;
  v32 = v11;
  v33 = v10;
  v34 = v18;
  v35 = v36;
  sub_1000E76E4(__src, v24);
  sub_1000E76B4(v26);
  return memcpy(a2, __src, 0x69uLL);
}

uint64_t sub_1000E6CA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BAD8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000E6CF4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x6563697270;
      break;
    case 3:
      result = 0x69642D6563697270;
      break;
    case 4:
      result = 0x6570795465646F6DLL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0x726550664F6D756ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000E6DDC(void *a1)
{
  v3 = sub_1000183C4(&qword_1002B3BB0);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  v9 = &v11[-v8];
  sub_10001AE68(a1, a1[3]);
  sub_1000E7660();
  sub_1001F8198();
  v11[15] = 0;
  sub_100024A50();
  sub_1001F7D18();
  if (!v1)
  {
    v11[14] = 1;
    sub_100024A50();
    sub_1001F7D18();
    v11[13] = 2;
    sub_100024A50();
    sub_1001F7D38();
    v11[12] = 3;
    sub_100024A50();
    sub_1001F7D18();
    v11[11] = 4;
    sub_100024A50();
    sub_1001F7D18();
    v11[10] = 5;
    sub_100024A50();
    sub_1001F7D18();
    v11[9] = 6;
    sub_100024A50();
    sub_1001F7D48();
  }

  return (*(v5 + 8))(v9, v3);
}

void *sub_1000E6FCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002B3BA0);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v36 - v10;
  v70 = 1;
  v68 = 1;
  v12 = a1[3];
  v71 = a1;
  sub_10001AE68(a1, v12);
  sub_1000E7660();
  sub_1001F8178();
  if (v2)
  {
    v49 = v2;
    sub_1000E7A04();
    sub_1000E7A7C();
    sub_100019CCC(v71);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = v7;
    v58 = v70;
    *v59 = *v69;
    *&v59[3] = *&v69[3];
    v60 = v12;
    v61 = a1;
    v62 = v2;
    v63 = v50;
    v64 = v47;
    v65 = v48;
    v66 = 0;
    v67 = v68;
    return sub_1000E76B4(&v53);
  }

  else
  {
    LOBYTE(v53) = 0;
    v45 = sub_1001F7C08();
    v46 = v14;
    sub_1000E7A3C(1);
    v15 = sub_1001F7C08();
    v44 = v16;
    sub_1000E7A3C(2);
    v43 = sub_1001F7C28();
    v70 = v17 & 1;
    sub_1000E7A3C(3);
    v18 = sub_1001F7C08();
    v42 = v19;
    sub_1000E7A3C(4);
    v20 = sub_1001F7C08();
    v50 = v21;
    sub_1000E7A3C(5);
    v22 = sub_1001F7C08();
    v48 = v23;
    v52 = 6;
    v24 = sub_1001F7C38();
    v49 = 0;
    v47 = v22;
    v26 = v25;
    v27 = *(v7 + 8);
    v36 = v24;
    v27(v11, v5);
    v26 &= 1u;
    v68 = v26;
    v28 = v45;
    *__src = v45;
    v29 = v46;
    *&__src[8] = v46;
    *&__src[16] = v15;
    v41 = a2;
    v40 = v15;
    v30 = v44;
    *&__src[24] = v44;
    v31 = v43;
    *&__src[32] = v43;
    v37 = v70;
    __src[40] = v70;
    *&__src[48] = v18;
    v39 = v18;
    v32 = v42;
    *&__src[56] = v42;
    *&__src[64] = v20;
    v38 = v20;
    v33 = v50;
    *&__src[72] = v50;
    *&__src[80] = v22;
    v34 = v48;
    v35 = v36;
    *&__src[88] = v48;
    *&__src[96] = v36;
    __src[104] = v26;
    sub_1000E76E4(__src, &v53);
    sub_100019CCC(v71);
    v53 = v28;
    v54 = v29;
    v55 = v40;
    v56 = v30;
    v57 = v31;
    v58 = v37;
    v60 = v39;
    v61 = v32;
    v62 = v38;
    v63 = v33;
    v64 = v47;
    v65 = v34;
    v66 = v35;
    v67 = v26;
    sub_1000E76B4(&v53);
    return memcpy(v41, __src, 0x69uLL);
  }
}

uint64_t sub_1000E74E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E6CA0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000E7514@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000E6CF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000E755C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000E6CEC();
  *a1 = result;
  return result;
}

uint64_t sub_1000E7584(uint64_t a1)
{
  v2 = sub_1000E7660();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E75C0(uint64_t a1)
{
  v2 = sub_1000E7660();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000E75FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000E6FCC(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x69uLL);
  }

  return result;
}

unint64_t sub_1000E7660()
{
  result = qword_1002B3BA8;
  if (!qword_1002B3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Discount.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1000E77E8);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000E7828(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 105))
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

uint64_t sub_1000E787C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1000E7900()
{
  result = qword_1002B3BB8;
  if (!qword_1002B3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BB8);
  }

  return result;
}

unint64_t sub_1000E7958()
{
  result = qword_1002B3BC0;
  if (!qword_1002B3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BC0);
  }

  return result;
}

unint64_t sub_1000E79B0()
{
  result = qword_1002B3BC8;
  if (!qword_1002B3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BC8);
  }

  return result;
}

void sub_1000E7A04()
{
  *(v0 - 352) = 0;
  *(v0 - 360) = 0;
  *(v0 - 336) = 0;
}

uint64_t sub_1000E7A98()
{
  sub_1000EC4D0();
  if (v0)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0x2E746E756F636361;
  }

  if (v0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xEF676E696C6C6962;
  }

  if (v1)
  {
    v5 = 0x2E746E756F636361;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (v1)
  {
    v6 = 0xEF676E696C6C6962;
  }

  else
  {
    v6 = v2;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E7B34(unsigned __int8 a1, char a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x62616D75736E6F43;
  v4 = a1;
  v5 = 0x62616D75736E6F43;
  v6 = 0xEA0000000000656CLL;
  switch(v4)
  {
    case 1:
      v5 = 0x75736E6F436E6F4ELL;
      v6 = 0xED0000656C62616DLL;
      break;
    case 2:
      v6 = 0x8000000100221B70;
      v5 = 0xD000000000000017;
      break;
    case 3:
      v5 = 0xD000000000000015;
      v6 = 0x8000000100221B90;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x75736E6F436E6F4ELL;
      v2 = 0xED0000656C62616DLL;
      break;
    case 2:
      v2 = 0x8000000100221B70;
      v3 = 0xD000000000000017;
      break;
    case 3:
      sub_1000EC478();
      v2 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC450();
  }

  return v9 & 1;
}

uint64_t sub_1000E7CB8(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000065636972;
  v3 = 0x5079616C70736964;
  v4 = a1;
  v5 = 0x5079616C70736964;
  v6 = 0xEC00000065636972;
  switch(v4)
  {
    case 1:
      v5 = 0x6853796C696D6166;
      v6 = 0xEF656C6261657261;
      break;
    case 2:
      v5 = 0x6C616E7265746E69;
      v6 = 0xEA00000000004449;
      break;
    case 3:
      v5 = 0x617A696C61636F6CLL;
      v7 = 0x736E6F6974;
      goto LABEL_8;
    case 4:
      v5 = sub_1000EC4B0() & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
      v6 = 0xE900000000000044;
      break;
    case 5:
      v5 = 0x636E657265666572;
      v7 = 0x656D614E65;
LABEL_8:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    case 7:
      v5 = sub_1000EC638(18);
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6853796C696D6166;
      v2 = 0xEF656C6261657261;
      break;
    case 2:
      v3 = 0x6C616E7265746E69;
      v2 = 0xEA00000000004449;
      break;
    case 3:
      v3 = 0x617A696C61636F6CLL;
      v9 = 0x736E6F6974;
      goto LABEL_17;
    case 4:
      sub_1000EC4C0();
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
      v2 = 0xE900000000000044;
      break;
    case 5:
      v3 = 0x636E657265666572;
      v9 = 0x656D614E65;
LABEL_17:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 6:
      v2 = 0xE400000000000000;
      v3 = 1701869940;
      break;
    case 7:
      sub_1000EC478();
      v2 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000EC450();
  }

  return v12 & 1;
}

uint64_t sub_1000E7F24(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1701869940;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v4 = sub_1000EC5F4() & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 3:
      v4 = sub_1000EC5A8();
      v3 = 0xED00000000000000;
      break;
    case 4:
      v4 = sub_1000EC6C4();
      break;
    case 5:
      v4 = sub_1000EC42C(27);
      break;
    case 6:
      v4 = sub_1000EC61C();
      v3 = 0xEC00000000000000;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1701869940;
      break;
    case 2:
      v5 = 0xE500000000000000;
      sub_1000EC570();
      v6 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 3:
      sub_1000EC570();
      sub_1000EC658();
      v5 = 0xED00000000000000;
      break;
    case 4:
      sub_1000EC670();
      break;
    case 5:
      sub_1000EC3D0();
      break;
    case 6:
      sub_1000EC600();
      v5 = 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410();
  }

  return v9 & 1;
}

uint64_t sub_1000E80D8(unsigned __int8 a1, char a2)
{
  v2 = 0x6449676F6C616964;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6449676F6C616964;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x736E6F6974706FLL;
      break;
    case 3:
      sub_1000EC57C();
      break;
    case 4:
      sub_1000C9BB8();
      v3 = v6 | 1;
      break;
    case 5:
      sub_1000C9BB8();
      v3 = v7 | 8;
      break;
    case 6:
      v5 = 0x54746E657645746DLL;
      v3 = 0xEB00000000656D69;
      break;
    default:
      break;
  }

  v8 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v8 = 0xE700000000000000;
      v2 = 0x736E6F6974706FLL;
      break;
    case 3:
      sub_1000EC648();
      break;
    case 4:
      sub_1000C9BB8();
      v8 = v9 | 1;
      break;
    case 5:
      sub_1000C9BB8();
      v8 = v10 | 8;
      break;
    case 6:
      v2 = 0x54746E657645746DLL;
      v8 = 0xEB00000000656D69;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000EC410();
  }

  return v12 & 1;
}

uint64_t sub_1000E8314()
{
  sub_1000EC6DC();
  switch(v2)
  {
    case 3:
      sub_1000EC75C();
      break;
    case 5:
      sub_1000EC4B0();
      sub_1000EC57C();
      break;
    case 6:
      sub_1000EC54C();
      break;
    case 7:
      sub_1000EC42C(22);
      break;
    default:
      break;
  }

  sub_1000EC6A0();
  switch(v5)
  {
    case 1:
      v4 = 7627113;
      break;
    case 2:
      v4 = 6583649;
      break;
    case 3:
      sub_1000EC70C();
      break;
    case 4:
      v4 = 6580578;
      break;
    case 5:
      sub_1000EC4C0();
      sub_1000EC648();
      break;
    case 6:
      sub_1000EC504();
      break;
    case 7:
      sub_1000EC3D0();
      break;
    case 8:
      v4 = 7370853;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410();
  }

  return v7 & 1;
}

uint64_t sub_1000E84DC(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006E6F697372;
  v3 = 0x65762D65726F7473;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000100223230;
    }

    else
    {
      v6 = 0x8000000100223250;
    }
  }

  else
  {
    v5 = 0x65762D65726F7473;
    v6 = 0xED00006E6F697372;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000015;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000100223230;
    }

    else
    {
      v2 = 0x8000000100223250;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC450();
  }

  return v8 & 1;
}

uint64_t sub_1000E85C4()
{
  sub_1000EC43C();
  switch(v2)
  {
    case 1:
      sub_1000EC6AC();
      break;
    case 2:
      sub_1000EC3F8();
      break;
    case 3:
      sub_1000EC3B4();
      break;
    case 4:
      sub_1000EC588();
      break;
    case 5:
      v0 = 0xE700000000000000;
      break;
    case 6:
      v0 = 0x8000000100222740;
      break;
    case 7:
      v0 = 0x8000000100222760;
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v6)
  {
    case 1:
      sub_1000EC688();
      break;
    case 2:
      sub_1000EC3E0();
      break;
    case 3:
      sub_1000EC398();
      break;
    case 4:
      sub_1000EC5C8();
      break;
    case 5:
      v1 = 0xE700000000000000;
      v4 = 0x65726F4D736168;
      break;
    case 6:
      v1 = (v5 - 32) | 0x8000000000000000;
      v4 = 0xD000000000000012;
      break;
    case 7:
      sub_1000EC3D0();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E8770(unsigned __int8 a1, char a2)
{
  v2 = 0xED0000746E65746ELL;
  v3 = 0x6F43646574736F68;
  v4 = a1;
  v5 = 0x6F43646574736F68;
  v6 = 0xED0000746E65746ELL;
  switch(v4)
  {
    case 1:
      v6 = 0xE400000000000000;
      v5 = 1684957547;
      break;
    case 2:
      v5 = 0x66664F636F486461;
      v6 = 0xEB00000000737265;
      break;
    case 3:
      v5 = sub_1000EC528();
      break;
    case 4:
      v5 = 0x6C61636F4C756369;
      v6 = 0xE900000000000065;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1684957547;
      break;
    case 2:
      sub_1000EC720();
      v2 = 0xEB00000000737265;
      break;
    case 3:
      sub_1000EC4E0();
      break;
    case 4:
      v3 = 0x6C61636F4C756369;
      v2 = 0xE900000000000065;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC450();
  }

  return v8 & 1;
}

uint64_t sub_1000E88F0()
{
  sub_1000EC43C();
  switch(v2)
  {
    case 1:
      sub_1000EC3F8();
      break;
    case 2:
      sub_1000EC3B4();
      break;
    case 3:
      sub_1000EC42C(18);
      break;
    case 4:
      sub_1000EC6AC();
      break;
    case 5:
      v0 = 0xE500000000000000;
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v5)
  {
    case 1:
      sub_1000EC3E0();
      break;
    case 2:
      sub_1000EC398();
      break;
    case 3:
      sub_1000EC3D0();
      break;
    case 4:
      sub_1000EC688();
      break;
    case 5:
      v1 = 0xE500000000000000;
      v4 = 0x74696D696CLL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410();
  }

  return v7 & 1;
}

uint64_t sub_1000E8A34(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E8AB8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2)
  {
    v4 = "subscriptionGroupIdentifiers";
  }

  else
  {
    v4 = "subscriptionGroupIdentifier";
  }

  if (a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (a2)
  {
    v6 = "subscriptionGroupIdentifier";
  }

  else
  {
    v6 = "subscriptionGroupIdentifiers";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E8B50(unsigned __int8 a1, char a2)
{
  v2 = 0x646E6F636573;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x646E6F636573;
  switch(v4)
  {
    case 1:
      v5 = 0x6574756E696DLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1920298856;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 7954788;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1801807223;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x68746E6F6DLL;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1918985593;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6574756E696DLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1920298856;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 7954788;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1801807223;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x68746E6F6DLL;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1918985593;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E8CFC()
{
  sub_1000EC4D0();
  if (v0)
  {
    v3 = 0x6449656C646E7562;
  }

  else
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v0)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0x6449656C646E7562;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E8D8C(unsigned __int8 a1, char a2)
{
  v2 = 0x73676E6970;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x73676E6970;
  switch(v4)
  {
    case 1:
      v5 = 0x6F44656C676E696ALL;
      v3 = 0xED00006570795463;
      break;
    case 2:
      v5 = sub_1000EC42C(25);
      break;
    case 3:
      v5 = 0x6341656C676E696ALL;
      v6 = 1852795252;
      goto LABEL_8;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1684632420;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x7473696C2D707061;
      break;
    case 6:
      v5 = 0x2D74706965636572;
      v6 = 1635017060;
LABEL_8:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6F44656C676E696ALL;
      v7 = 0xED00006570795463;
      break;
    case 2:
      sub_1000EC3D0();
      break;
    case 3:
      v2 = 0x6341656C676E696ALL;
      v8 = 1852795252;
      goto LABEL_16;
    case 4:
      v7 = 0xE400000000000000;
      v2 = 1684632420;
      break;
    case 5:
      v7 = 0xE800000000000000;
      v2 = 0x7473696C2D707061;
      break;
    case 6:
      v2 = 0x2D74706965636572;
      v8 = 1635017060;
LABEL_16:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410();
  }

  return v10 & 1;
}

uint64_t sub_1000E8FA0()
{
  sub_1000EC57C();
  v2 = 0x692D656C646E7562;
  v4 = v3;
  v5 = 0x692D656C646E7562;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v5 = 0x2D6E6F6973726576;
      v6 = 0xEA00000000006469;
      break;
    case 2:
      v5 = sub_1000EC638(18);
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1684632935;
      break;
    case 4:
      v5 = sub_1000EC748();
      v6 = 0xEB0000000063614DLL;
      break;
    case 5:
      v6 = 0xE300000000000000;
      v5 = 6580598;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0x2D6E6F6973726576;
      v0 = 0xEA00000000006469;
      break;
    case 2:
      sub_1000EC478();
      v0 = v7 | 0x8000000000000000;
      break;
    case 3:
      v0 = 0xE400000000000000;
      v2 = 1684632935;
      break;
    case 4:
      sub_1000EC734();
      v0 = 0xEB0000000063614DLL;
      break;
    case 5:
      v0 = 0xE300000000000000;
      v2 = 6580598;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC450();
  }

  return v9 & 1;
}

uint64_t sub_1000E9164()
{
  sub_1000EC6DC();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE400000000000000;
      break;
    case 3:
      sub_1000EC748();
      v0 = 0xEB0000000063614DLL;
      break;
    default:
      break;
  }

  sub_1000EC6A0();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1936881250;
      break;
    case 2:
      v1 = 0xE400000000000000;
      v4 = 1684632935;
      break;
    case 3:
      sub_1000EC734();
      v1 = 0xEB0000000063614DLL;
      break;
    case 4:
      v4 += 20;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410();
  }

  return v7 & 1;
}

uint64_t sub_1000E92A8()
{
  sub_1000EC4D0();
  if (v0)
  {
    v3 = 1634497893;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v0)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 1634497893;
  }

  if (v1)
  {
    v6 = v2;
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
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E9330(char a1, char a2)
{
  if (a1)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1001F7EA8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1000E9398()
{
  sub_1000EC4D0();
  if (v0)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 1634497893;
  }

  if (v0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (v1)
  {
    v5 = 1634497893;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = v2;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E9420()
{
  sub_1000EC6DC();
  switch(v2)
  {
    case 3:
      sub_1000EC75C();
      break;
    case 5:
      sub_1000EC4B0();
      sub_1000EC57C();
      break;
    case 6:
      sub_1000EC54C();
      break;
    case 7:
      v0 = 0xEF7265696669746ELL;
      break;
    default:
      break;
  }

  sub_1000EC6A0();
  switch(v5)
  {
    case 1:
      v4 = 7627113;
      break;
    case 2:
      v4 = 6583649;
      break;
    case 3:
      sub_1000EC70C();
      break;
    case 4:
      v4 = 6580578;
      break;
    case 5:
      sub_1000EC4C0();
      sub_1000EC648();
      break;
    case 6:
      sub_1000EC504();
      break;
    case 7:
      v4 = 0x656449726566666FLL;
      v1 = 0xEF7265696669746ELL;
      break;
    case 8:
      v4 = 7370853;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410();
  }

  return v7 & 1;
}

uint64_t sub_1000E95F8(unsigned __int8 a1, char a2)
{
  v2 = 0x636972656E6567;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x636972656E6567;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6573616863727570;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x726566666FLL;
      break;
    case 3:
      v5 = 0x7220646E75666572;
      v3 = 0xEE00747365757165;
      break;
    case 4:
      v5 = 0x6163696669726576;
      v3 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6573616863727570;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x726566666FLL;
      break;
    case 3:
      v2 = 0x7220646E75666572;
      v6 = 0xEE00747365757165;
      break;
    case 4:
      v2 = 0x6163696669726576;
      v6 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E97B0(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E9834(char a1, char a2)
{
  v2 = 1701667182;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x64656C62616E65;
    }

    else
    {
      v3 = 0x746E6572727563;
    }

    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1701667182;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x64656C62616E65;
    }

    else
    {
      v2 = 0x746E6572727563;
    }

    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410();
  }

  return v7 & 1;
}

uint64_t sub_1000E9920(unsigned __int8 a1, char a2)
{
  v2 = 0x656D614E707061;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = "subscriptionOffersKeyPair";
  v6 = 0x656D614E707061;
  v7 = "nonRenewingSubscriptions";
  switch(v4)
  {
    case 1:
      v3 = 0x8000000100222C00;
      v6 = 0xD000000000000018;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v6 = sub_1000EC4B0() & 0xFFFFFFFFFFFFLL | 0x7374000000000000;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v6 = 0x73676E6974746573;
      break;
    case 4:
      v3 = 0x8000000100222C30;
      v6 = 0xD000000000000019;
      break;
    case 5:
      v6 = 0xD000000000000012;
      v3 = 0x8000000100222C50;
      break;
    case 6:
      v6 = 0x63696C6F50707061;
      v3 = 0xEB00000000736569;
      break;
    case 7:
      v6 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  v8 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v8 = (v7 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000018;
      break;
    case 2:
      v8 = 0xE800000000000000;
      sub_1000EC4C0();
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x7374000000000000;
      break;
    case 3:
      v8 = 0xE800000000000000;
      v2 = 0x73676E6974746573;
      break;
    case 4:
      v8 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000019;
      break;
    case 5:
      sub_1000EC3D0();
      break;
    case 6:
      v2 = 0x63696C6F50707061;
      v8 = 0xEB00000000736569;
      break;
    case 7:
      v2 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000EC410();
  }

  return v11 & 1;
}

uint64_t sub_1000E9B60(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E9BE4(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000656C62;
  }

  else
  {
    v1 = 0xEB00000000797469;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E9C84(char a1)
{
  v2 = 0xE400000000000000;
  switch(a1)
  {
    case 2:
      v2 = 0xEA00000000006F47;
      break;
    case 3:
      v2 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v5)
  {
    case 1:
      v4 = 1701147238;
      break;
    case 2:
      v4 = 0x756F597341796170;
      v1 = 0xEA00000000006F47;
      break;
    case 3:
      v4 = 0x6F72467055796170;
      v1 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410();
  }

  return v7 & 1;
}

uint64_t sub_1000E9DDC(unsigned __int8 a1, char a2)
{
  v2 = 7824750;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x676E697473697865;
    }

    else
    {
      v4 = 0x64657269707865;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7824750;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x676E697473697865;
    }

    else
    {
      v2 = 0x64657269707865;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E9EC8(char a1)
{
  if (a1)
  {
    v1 = 0xEA0000000000656CLL;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000E9F5C()
{
  v0 = 0xEB00000000737265;
  sub_1000EC720();
  v4 = v3;
  v5 = "subscriptionGroupID";
  v6 = "recurringSubscriptionPeriod";
  v7 = v2;
  v8 = 0xEB00000000737265;
  v9 = "introductoryOffer";
  switch(v4)
  {
    case 1:
      v7 = 0x6566664F65646F63;
      v8 = 0xEA00000000007372;
      break;
    case 2:
      v7 = sub_1000EC528();
      break;
    case 3:
      v7 = 0x6D754E70756F7267;
      v8 = 0xEB00000000726562;
      break;
    case 4:
      v7 = 0xD000000000000011;
      v8 = 0x8000000100222040;
      break;
    case 5:
      v8 = 0x8000000100222060;
      v7 = 0xD00000000000001BLL;
      break;
    case 6:
      v8 = 0x8000000100222080;
      v7 = 0xD000000000000013;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0x6566664F65646F63;
      v0 = 0xEA00000000007372;
      break;
    case 2:
      sub_1000EC4E0();
      break;
    case 3:
      v2 = 0x6D754E70756F7267;
      v0 = 0xEB00000000726562;
      break;
    case 4:
      v2 = 0xD000000000000011;
      v0 = (v9 - 32) | 0x8000000000000000;
      break;
    case 5:
      v0 = (v6 - 32) | 0x8000000000000000;
      v2 = 0xD00000000000001BLL;
      break;
    case 6:
      v0 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000013;
      break;
    default:
      break;
  }

  if (v7 == v2 && v8 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000EC450();
  }

  return v11 & 1;
}

uint64_t sub_1000EA170(char a1)
{
  if (a1)
  {
    v1 = 0xED0000656D614E65;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EA20C(char a1)
{
  v2 = 0xE400000000000000;
  switch(a1)
  {
    case 1:
      sub_1000EC5F4();
      v2 = 0xEB00000000676E69;
      break;
    case 2:
      sub_1000EC5F4();
      v2 = 0xEE0064657474616DLL;
      break;
    case 3:
      v2 = 1701080899;
      goto LABEL_8;
    case 4:
      sub_1000EC42C(27);
      break;
    case 5:
      sub_1000EC61C();
LABEL_8:
      v2 = v2 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      v2 = 0xE900000000000073;
      break;
    case 7:
      v2 = 0xE700000000000000;
      break;
    case 8:
      sub_1000EC6C4();
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v5)
  {
    case 1:
      sub_1000EC570();
      v4 = v6 | 0x7274536500000000;
      v1 = 0xEB00000000676E69;
      break;
    case 2:
      sub_1000EC570();
      v4 = v7 | 0x726F466500000000;
      v1 = 0xEE0064657474616DLL;
      break;
    case 3:
      v4 = 0x79636E6572727563;
      v1 = 1701080899;
      goto LABEL_18;
    case 4:
      sub_1000EC3D0();
      break;
    case 5:
      sub_1000EC600();
LABEL_18:
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      v4 = 0x746E756F63736964;
      v1 = 0xE900000000000073;
      break;
    case 7:
      v1 = 0xE700000000000000;
      v4 = 0x6449726566666FLL;
      break;
    case 8:
      sub_1000EC670();
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410();
  }

  return v9 & 1;
}

uint64_t sub_1000EA474(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EA504(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000004C41;
  v3 = 0x4952545F45455246;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x595F53415F594150;
    }

    else
    {
      v5 = 0x465F50555F594150;
    }

    if (v4 == 1)
    {
      v6 = 0xED00004F475F554FLL;
    }

    else
    {
      v6 = 0xEC000000544E4F52;
    }
  }

  else
  {
    v5 = 0x4952545F45455246;
    v6 = 0xEA00000000004C41;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x595F53415F594150;
    }

    else
    {
      v3 = 0x465F50555F594150;
    }

    if (a2 == 1)
    {
      v2 = 0xED00004F475F554FLL;
    }

    else
    {
      v2 = 0xEC000000544E4F52;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC450();
  }

  return v8 & 1;
}

uint64_t sub_1000EA620(char a1)
{
  if (a1)
  {
    v1 = 0xED00004445524148;
  }

  else
  {
    v1 = 0xE900000000000044;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EA6F0(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EA774(unsigned __int8 a1, char a2)
{
  v2 = 0x656C61636F6CLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x52557963696C6F70;
    }

    else
    {
      v4 = 0x65547963696C6F70;
    }

    if (v3 == 1)
    {
      v5 = 0xE90000000000004CLL;
    }

    else
    {
      v5 = 0xEA00000000007478;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656C61636F6CLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x52557963696C6F70;
    }

    else
    {
      v2 = 0x65547963696C6F70;
    }

    if (a2 == 1)
    {
      v6 = 0xE90000000000004CLL;
    }

    else
    {
      v6 = 0xEA00000000007478;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EA870(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EA8F8(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000065;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EA99C()
{
  sub_1000EC6DC();
  switch(v2)
  {
    case 1:
      break;
    case 2:
      v0 = 0xE400000000000000;
      break;
    case 3:
      v0 = 0xED00006E6F697463;
      break;
    default:
      sub_1000EC42C(22);
      break;
  }

  sub_1000EC6A0();
  switch(v5)
  {
    case 1:
      break;
    case 2:
      v1 = 0xE400000000000000;
      v4 = 1869901639;
      break;
    case 3:
      v4 = 0x4165636976726553;
      v1 = 0xED00006E6F697463;
      break;
    default:
      sub_1000EC3D0();
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410();
  }

  return v7 & 1;
}

uint64_t sub_1000EAB00(unsigned __int8 a1, char a2)
{
  v2 = 0x737574617473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737574617473;
  switch(v4)
  {
    case 1:
      v6 = "ible";
      goto LABEL_4;
    case 2:
      v6 = "originalTransactionId";
LABEL_4:
      v3 = v6 | 0x8000000000000000;
      v5 = 0xD000000000000015;
      break;
    case 3:
      v3 = 0x80000001002224A0;
      v5 = 0xD000000000000011;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v8 = "ible";
      goto LABEL_9;
    case 2:
      v8 = "originalTransactionId";
LABEL_9:
      v7 = v8 | 0x8000000000000000;
      v2 = 0xD000000000000015;
      break;
    case 3:
      v7 = 0x80000001002224A0;
      v2 = 0xD000000000000011;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410();
  }

  return v10 & 1;
}

uint64_t sub_1000EAC44(char a1)
{
  if (a1)
  {
    v1 = "signedRenewalInfo";
  }

  else
  {
    v1 = "subscriptionGroupIdentifiers";
  }

  v2 = v1 | 0x8000000000000000;
  sub_1000EC46C();
  if (v8)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v3 == v4 && v2 == (v7 | 0x8000000000000000);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410();
  }

  return v9 & 1;
}

uint64_t sub_1000EACDC()
{
  sub_1000EC43C();
  switch(v2)
  {
    case 1:
      sub_1000EC3B4();
      break;
    case 2:
      sub_1000EC3F8();
      break;
    case 3:
      sub_1000EC588();
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v5)
  {
    case 1:
      sub_1000EC398();
      break;
    case 2:
      sub_1000EC3E0();
      break;
    case 3:
      sub_1000EC5C8();
      break;
    case 4:
      v4 = 1635017060;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410();
  }

  return v7 & 1;
}

uint64_t sub_1000EAE18()
{
  sub_1000EC43C();
  switch(v2)
  {
    case 1:
      sub_1000EC3B4();
      break;
    case 2:
      sub_1000EC3F8();
      break;
    case 3:
      sub_1000EC42C(18);
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v5)
  {
    case 1:
      sub_1000EC398();
      break;
    case 2:
      sub_1000EC3E0();
      break;
    case 3:
      sub_1000EC3D0();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410();
  }

  return v7 & 1;
}

uint64_t sub_1000EAF38(unsigned __int8 a1, char a2)
{
  v2 = 7959874;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6C65636E6143;
    }

    else
    {
      v4 = 27503;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7959874;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6C65636E6143;
    }

    else
    {
      v2 = 27503;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EB004(unsigned __int8 a1, char a2)
{
  v2 = 0x7975427070416E69;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x7975427070416E69;
  switch(v4)
  {
    case 1:
      v3 = 0x8000000100222830;
      v5 = 0xD000000000000014;
      break;
    case 2:
      v3 = 0x8000000100222850;
      v5 = 0xD000000000000018;
      break;
    case 3:
      v3 = 0x8000000100222870;
      v5 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0x8000000100222830;
      v2 = 0xD000000000000014;
      break;
    case 2:
      v6 = 0x8000000100222850;
      v2 = 0xD000000000000018;
      break;
    case 3:
      v6 = 0x8000000100222870;
      v2 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EB174(char a1)
{
  v2 = 0xE400000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE900000000000073;
      break;
    case 2:
      v2 = 0xE800000000000000;
      break;
    case 3:
      v2 = 0xE300000000000000;
      break;
    case 4:
      v2 = 0xE600000000000000;
      break;
    case 5:
      v2 = 0xE900000000000074;
      break;
    default:
      break;
  }

  sub_1000EC5E8();
  switch(v5)
  {
    case 1:
      v4 = 0x6D61726150797562;
      v1 = 0xE900000000000073;
      break;
    case 2:
      v1 = 0xE800000000000000;
      v4 = 0x656D614E6D657469;
      break;
    case 3:
      v1 = 0xE300000000000000;
      v4 = 7107189;
      break;
    case 4:
      v1 = 0xE600000000000000;
      v4 = 0x746567726174;
      break;
    case 5:
      v4 = 0x6567726174627573;
      v1 = 0xE900000000000074;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410();
  }

  return v7 & 1;
}

uint64_t sub_1000EB33C()
{
  sub_1000EC6DC();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      break;
    case 2:
      v0 = 0xEA00000000006461;
      break;
    case 3:
      v0 = 0xE700000000000000;
      break;
    default:
      break;
  }

  sub_1000EC6A0();
  switch(v5)
  {
    case 1:
      v1 = 0xE500000000000000;
      v4 = 0x77656E6552;
      break;
    case 2:
      v4 = 0x6F6C6E776F646552;
      v1 = 0xEA00000000006461;
      break;
    case 3:
      v1 = 0xE700000000000000;
      v4 = 0x65646172677055;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000EC410();
  }

  return v7 & 1;
}

uint64_t sub_1000EB4CC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 2036429415;
  }

  else
  {
    v3 = 0x6B63616C62;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 2036429415;
  }

  else
  {
    v5 = 0x6B63616C62;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EB554(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  sub_1000EC46C();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EB5DC()
{
  v0 = 0xE90000000000006ELL;
  sub_1000EC570();
  v3 = v2 | 0x69614D6500000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xE90000000000006ELL;
  switch(v5)
  {
    case 1:
      v6 = sub_1000EC638(20);
      break;
    case 2:
      v7 = 0xE800000000000000;
      v6 = sub_1000EC5F4() | 0x6275536500000000;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v6 = 0x746C7561666564;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_1000EC478();
      v0 = v8 | 0x8000000000000000;
      break;
    case 2:
      v0 = 0xE800000000000000;
      sub_1000EC570();
      v3 = v9 | 0x6275536500000000;
      break;
    case 3:
      v0 = 0xE700000000000000;
      v3 = 0x746C7561666564;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000EC450();
  }

  return v11 & 1;
}

uint64_t sub_1000EB72C(unsigned __int8 a1, char a2)
{
  v2 = 0x726564616568;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x65756C6176;
    }

    else
    {
      v4 = 0x7475626972747461;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xEE007473694C6465;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x726564616568;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x65756C6176;
    }

    else
    {
      v2 = 0x7475626972747461;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE007473694C6465;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC410();
  }

  return v8 & 1;
}

uint64_t sub_1000EB840(char a1, char a2)
{
  v2 = 0xEF736E7265747461;
  v3 = 0x702D6C72752D3276;
  if (a1)
  {
    sub_1000EC484();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x702D6C72752D3276;
    v10 = 0xEF736E7265747461;
  }

  if (a2)
  {
    sub_1000EC484();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v14;
    }

    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v16;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1000EC450();
  }

  return v18 & 1;
}

uint64_t sub_1000EB920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000EC410();
  }

  return v10 & 1;
}

uint64_t sub_1000EB9A4()
{
  sub_1000EC570();
  v2 = v1 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
  v3 = 0xE500000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v6 = sub_1000EC5A8();
      goto LABEL_5;
    case 2:
      v3 = 0xE400000000000000;
      v6 = 1702521203;
      break;
    case 3:
      v6 = 0x6C662D7465737361;
      v3 = 0x73726F7661;
LABEL_5:
      v3 = v3 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(v0)
  {
    case 1:
      sub_1000EC570();
      sub_1000EC658();
      goto LABEL_10;
    case 2:
      v7 = 0xE400000000000000;
      v2 = 1702521203;
      break;
    case 3:
      v2 = 0x6C662D7465737361;
      v7 = 0x73726F7661;
LABEL_10:
      v7 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000EC410();
  }

  return v9 & 1;
}

uint64_t sub_1000EBAE8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HTTPMethod.rawValue.getter(a1, a2);
  v8 = v7;
  if (v6 == HTTPMethod.rawValue.getter(a3, a4) && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000EC410();
  }

  return v11 & 1;
}

BOOL sub_1000EBB98(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

BOOL sub_1000EBBC4(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t NIOFileHandle.withUnsafeFileDescriptor<A>(_:)(uint64_t (*a1)(void))
{
  sub_100061FC4();
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    return a1(*(v1 + 20));
  }

  sub_1000C9874();
  sub_1000274C4();
  v4 = sub_1000276A0();
  return sub_100077300(v4, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NIOFileHandle.close()()
{
  sub_1000EC6E8();
  if (*(v1 + 16) == 1)
  {
    sub_100027384(*(v1 + 20));
    if (!v0)
    {
      *(v1 + 16) = 0;
    }
  }

  else
  {
    sub_1000C9874();
    sub_1000274C4();
    v2 = sub_1000276A0();
    sub_100077300(v2, v3);
  }
}

uint64_t NIOFileHandle.isOpen.getter()
{
  sub_100061FC4();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t NIOFileHandle.__allocating_init(descriptor:)(int a1)
{
  sub_1000856AC();
  result = swift_allocObject();
  *(result + 20) = a1;
  *(result + 16) = 1;
  return result;
}

uint64_t NIOFileHandle.init(descriptor:)(int a1)
{
  *(v1 + 20) = a1;
  *(v1 + 16) = 1;
  return v1;
}

uint64_t NIOFileHandle.duplicate()()
{
  sub_100061FC4();
  swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    result = sub_1000272D4(*(v0 + 20));
    if (!v1)
    {
      v3 = result;
      sub_1000856AC();
      result = swift_allocObject();
      *(result + 20) = v3;
      *(result + 16) = 1;
    }
  }

  else
  {
    sub_1000C9874();
    sub_1000274C4();
    v4 = sub_1000276A0();
    return sub_100077300(v4, v5);
  }

  return result;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NIOFileHandle.takeDescriptorOwnership()()
{
  sub_1000EC6E8();
  if (*(v0 + 16))
  {
    *(v0 + 16) = 0;
    return *(v0 + 20);
  }

  else
  {
    sub_1000C9874();
    sub_1000274C4();
    sub_1000276A0();
    *v2 = 0xD00000000000002CLL;
    *(v2 + 8) = v0;
    *(v2 + 16) = 9;
    return swift_willThrow();
  }
}

uint64_t sub_1000EBF2C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_1000EBFA8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EBB90(*a1, *v2);
  *a2 = result;
  return result;
}

void NIOFileHandle.__allocating_init(path:mode:flags:)(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 - 1) > 2u)
  {
    __break(1u);
  }

  else
  {
    sub_1001F6BD8();

    v4 = sub_10002740C();

    if (!v3)
    {
      sub_1000856AC();
      v5 = swift_allocObject();
      *(v5 + 20) = v4;
      *(v5 + 16) = 1;
    }
  }
}

unint64_t NIOFileHandle.description.getter()
{
  sub_1001F77B8(29);

  v1._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v1);

  v2._countAndFlagsBits = 32032;
  v2._object = 0xE200000000000000;
  sub_1001F6CA8(v2);
  return 0xD000000000000019;
}

unint64_t sub_1000EC188()
{
  result = qword_1002B3BD0;
  if (!qword_1002B3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BD0);
  }

  return result;
}

unint64_t sub_1000EC1E0()
{
  result = qword_1002B3BD8;
  if (!qword_1002B3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BD8);
  }

  return result;
}

unint64_t sub_1000EC238()
{
  result = qword_1002B3BE0;
  if (!qword_1002B3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BE0);
  }

  return result;
}

unint64_t sub_1000EC290()
{
  result = qword_1002B3BE8;
  if (!qword_1002B3BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3BE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NIOFileHandle.Flags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EC410()
{

  return sub_1001F7EA8();
}

uint64_t sub_1000EC450()
{

  return sub_1001F7EA8();
}

uint64_t sub_1000EC6E8()
{

  return swift_beginAccess();
}

uint64_t sub_1000EC770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F61C8();
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  sub_100023510();
  v11 = v10 - v9;
  v12 = sub_1000183C4(&qword_1002ACE98);
  __chkstk_darwin(v12 - 8, v13);
  v15 = v32 - v14;
  v16 = sub_1001F6288();
  sub_10001A278();
  v18 = v17;
  __chkstk_darwin(v19, v20);
  sub_100023510();
  v23 = (v22 - v21);
  v32[0] = a1;
  v32[1] = a2;
  sub_10001C790();
  v24 = sub_1001F7608();
  if (v25)
  {
    v26 = v24;
    sub_100018460(v15, 1, 1, v16);
    (*(v6 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
    sub_1001F6268();
    v27 = v32[3];
    v28 = sub_1000ED418(v23);
    if (!v27)
    {
      v26 = v28;
    }

    (*(v18 + 8))(v23, v16);
  }

  else
  {
    v26 = type metadata accessor for OctaneError();
    sub_1000EF944();
    sub_1000EF638(v29, 255, v30);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v26;
}

uint64_t sub_1000ECA08()
{
  *&v1 = sub_1000EF9EC();
  *(v0 + 104) = v1;
  *(v0 + 32) = _swiftEmptyArrayStorage;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  type metadata accessor for OctaneConfigurationSettings();
  swift_allocObject();
  v2 = sub_1000EF980();
  *(v0 + 48) = sub_1000815A0(v2, v3, v4, v5, v6, v7, v8, v9, 1, _swiftEmptyArrayStorage);
  *(v0 + 56) = _swiftEmptyArrayStorage;
  type metadata accessor for OctaneAppPolicies();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  v10[4] = _swiftEmptyArrayStorage;
  *(v0 + 120) = v10;
  *(v0 + 64) = _swiftEmptyArrayStorage;
  *(v0 + 128) = xmmword_100206E30;
  return v0;
}

uint64_t sub_1000ECAD4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BBA0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000ECB34(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0x73746375646F7270;
      break;
    case 3:
      result = 0x73676E6974746573;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x63696C6F50707061;
      break;
    case 7:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000ECC74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000ECAD4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000ECCA4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000ECB34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000ECCEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000ECB20();
  *a1 = result;
  return result;
}

uint64_t sub_1000ECD14@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOBSDSocket.Option.so_keepalive.getter();
  *a1 = result;
  return result;
}

_UNKNOWN **sub_1000ECD3C@<X0>(void *a1@<X8>)
{
  result = sub_1000ECB24();
  *a1 = result;
  return result;
}

uint64_t sub_1000ECD64(uint64_t a1)
{
  v2 = sub_1000EF060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000ECDA0(uint64_t a1)
{
  v2 = sub_1000EF060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ECDDC(void *a1)
{
  v2 = swift_allocObject();
  sub_1000ECE2C(a1);
  return v2;
}

uint64_t sub_1000ECE2C(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B3F38);
  sub_10001A278();
  __chkstk_darwin(v6, v7);
  v9 = &v44 - v8;
  *&v10 = sub_1000EF9EC();
  *(v1 + 104) = v10;
  v11 = sub_10001AE68(a1, a1[3]);
  sub_1000EF060();
  sub_1001F8178();
  if (v2)
  {
    sub_1000EF9DC();

    if (v9)
    {

      if (!v5)
      {
LABEL_5:
        if (v11)
        {
LABEL_6:

          v13 = sub_1000EF9CC();
          sub_1000EF440(v13, v14);

LABEL_10:
          type metadata accessor for OctaneConfiguration();
          swift_deallocPartialClassInstance();
          goto LABEL_11;
        }

LABEL_9:
        v15 = sub_1000EF9CC();
        sub_1000EF440(v15, v16);
        goto LABEL_10;
      }
    }

    else if (!v5)
    {
      goto LABEL_5;
    }

    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  LOBYTE(v44) = 0;
  sub_1000EF974();
  *(v3 + 16) = sub_1001F7C08();
  *(v3 + 24) = v12;

  sub_1000183C4(&qword_1002AC7F0);
  v55 = 1;
  sub_1000EF490(&qword_1002B3F40);
  sub_1000EF904();
  sub_1000EF974();
  sub_1001F7C48();
  sub_1000EF99C();
  if (v20)
  {
    v18 = v19;
  }

  *(v3 + 32) = v18;
  v55 = 2;
  sub_1000EF904();
  sub_1000EF974();
  sub_1001F7C48();
  sub_1000EF99C();
  if (v20)
  {
    v21 = _swiftEmptyArrayStorage;
  }

  *(v3 + 40) = v21;
  type metadata accessor for OctaneConfigurationSettings();
  v55 = 3;
  sub_1000EF92C();
  sub_1000EF638(v22, 255, v23);
  sub_1000EF904();
  sub_1000EF974();
  sub_1001F7C48();
  v24 = v44;
  if (!v44)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    swift_allocObject();
    v25 = sub_1000EF980();
    v24 = sub_1000815A0(v25, v26, v27, v28, v29, v30, v31, v32, 1, _swiftEmptyArrayStorage);
  }

  *(v3 + 48) = v24;
  v55 = 4;
  sub_1000EF510();
  sub_1000EF974();
  sub_1001F7C48();
  v33 = sub_1000EF9CC();
  v34 = v45;
  *(v3 + 72) = v44;
  *(v3 + 88) = v34;
  *(v3 + 104) = v46;
  sub_1000EF440(v33, v35);
  sub_1000183C4(&qword_1002B3F10);
  v55 = 5;
  sub_1000EF564(&qword_1002B3F60);
  sub_1000EF974();
  sub_1001F7C48();
  sub_1000EF99C();
  if (v20)
  {
    v36 = _swiftEmptyArrayStorage;
  }

  *(v3 + 56) = v36;
  type metadata accessor for OctaneAppPolicies();
  v55 = 6;
  sub_1000EF95C();
  sub_1000EF638(v37, 255, v38);
  sub_1000EF904();
  sub_1000EF974();
  sub_1001F7C48();
  v39 = v44;
  if (!v44)
  {
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0xE000000000000000;
    v39[4] = _swiftEmptyArrayStorage;
  }

  *(v3 + 120) = v39;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  v55 = 7;
  sub_1000EF5E4();
  sub_1000EF974();
  sub_1001F7C48();
  if (v45)
  {
    v40 = 4;
  }

  else
  {
    v40 = v44;
  }

  if (v45)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(&v44 + 1);
  }

  v42 = sub_1000263B8();
  v43(v42);
  *(v3 + 128) = v40;
  *(v3 + 136) = v41;
LABEL_11:
  sub_100019CCC(a1);
  return v3;
}

char *sub_1000ED418(NSObject *a1)
{
  v2 = sub_1001F61C8();
  sub_10001A278();
  v105 = v3;
  __chkstk_darwin(v4, v5);
  sub_100023510();
  v104 = v7 - v6;
  v8 = sub_1001F6288();
  sub_10001A278();
  v10 = v9;
  v13 = __chkstk_darwin(v11, v12);
  v15 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v13, v16);
  v19 = v94 - v18;
  v21 = __chkstk_darwin(v17, v20);
  v106 = v94 - v22;
  v24 = __chkstk_darwin(v21, v23);
  v26 = v94 - v25;
  __chkstk_darwin(v24, v27);
  v29 = v94 - v28;
  v30 = sub_1000EDDB0();
  if (v30 == 2)
  {
    type metadata accessor for OctaneError();
    sub_1000EF944();
    sub_1000EF638(v31, 255, v32);
    swift_allocError();
    (*(v10 + 16))(v33, a1, v8);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    LODWORD(v102) = v30;
    v101 = v2;
    v95 = v15;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v34 = sub_1001F6688();
    v35 = sub_100019C94(v34, qword_1002E6180);
    v36 = *(v10 + 16);
    v103 = a1;
    v99 = v36;
    v100 = v10 + 16;
    v36(v29, a1, v8);
    v94[1] = v35;
    v37 = sub_1001F6668();
    v38 = sub_1001F7288();
    v39 = os_log_type_enabled(v37, v38);
    v97 = v19;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v98 = v8;
      v41 = v40;
      v42 = swift_slowAlloc();
      v96 = v26;
      v94[0] = v42;
      v107 = v42;
      *v41 = 136315395;
      v43 = v102;
      if (v102)
      {
        v44 = 0x656C646E7562;
      }

      else
      {
        v44 = 1701603686;
      }

      if (v102)
      {
        v45 = 0xE600000000000000;
      }

      else
      {
        v45 = 0xE400000000000000;
      }

      v46 = sub_1000E4544(v44, v45, &v107);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2081;
      v47 = sub_1001F6248(0);
      v49 = v48;
      v50 = *(v10 + 8);
      v50(v29, v98);
      v51 = sub_1000E4544(v47, v49, &v107);

      *(v41 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v37, v38, "Reading StoreKit configuration %s at %{private}s", v41, 0x16u);
      swift_arrayDestroy();
      v52 = v96;
      sub_10003A72C();
      v8 = v98;
      sub_10003A72C();

      v53 = v50;
    }

    else
    {
      v52 = v26;

      v53 = *(v10 + 8);
      v53(v29, v8);
      v43 = v102;
    }

    v29 = v106;
    if (v43)
    {
      v107 = 0xD000000000000016;
      v108 = 0x8000000100225B30;
      v54 = v105;
      v55 = v10;
      v56 = v104;
      v57 = v101;
      (v105[13])(v104, enum case for URL.DirectoryHint.inferFromPath(_:), v101);
      sub_10001C790();
      sub_1001F6278();
      v58 = v56;
      v10 = v55;
      v54[1](v58, v57);
    }

    else
    {
      v99(v106, v103, v8);
    }

    v59 = v52;
    (*(v10 + 32))(v52, v29, v8);
    v60 = sub_1001F6248(0);
    v62 = v61;
    v63 = objc_allocWithZone(NSData);
    v64 = v109;
    v65 = sub_1000EF218(v60, v62, 0);
    if (v64)
    {
      v66 = sub_1000EF9BC();
      (v53)(v66);
    }

    else
    {
      v67 = v65;
      v68 = sub_1001F63C8();
      v70 = v69;

      sub_1001F5E88();
      swift_allocObject();
      sub_1001F5E78();
      type metadata accessor for OctaneConfiguration();
      sub_1000EF638(&qword_1002B3F80, v71, type metadata accessor for OctaneConfiguration);
      sub_1001F5E68();
      v109 = v68;

      v29 = v107;
      if (v102)
      {

        v72 = v103;
      }

      else
      {
        v73 = sub_1001F7EA8();

        v72 = v103;
        if ((v73 & 1) == 0)
        {
          v92 = sub_1000EF9BC();
          (v53)(v92);
          sub_10003A380(v109, v70);
          return v29;
        }
      }

      v102 = v10;
      v106 = v70;
      v107 = 0x737465737341;
      v108 = 0xE600000000000000;
      v75 = v104;
      v74 = v105;
      (v105[13])(v104, enum case for URL.DirectoryHint.isDirectory(_:), v101);
      sub_10001C790();
      v76 = v97;
      sub_1001F6278();
      v74[1](v75, v101);
      v77 = sub_100072764(v76);
      v105 = v53;
      v96 = v59;
      *(v29 + 8) = v77;

      v79 = v95;
      v99(v95, v72, v8);

      v80 = sub_1001F6668();
      v81 = sub_1001F7288();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = v8;
        v83 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v107 = v104;
        *v83 = 134218242;
        *(v83 + 4) = *(*(v29 + 8) + 16);

        *(v83 + 12) = 2080;
        v84 = sub_1001F6248(0);
        v103 = v80;
        v85 = v84;
        v87 = v86;
        v88 = v79;
        v89 = v105;
        (v105)(v88, v82);
        v90 = sub_1000E4544(v85, v87, &v107);

        *(v83 + 14) = v90;
        v91 = v103;
        _os_log_impl(&_mh_execute_header, v103, v81, "Found %ld asset(s)\nin the StoreKit configuration at %s", v83, 0x16u);
        sub_100019CCC(v104);
        sub_10003A72C();
        sub_10003A72C();
        sub_10003A380(v109, v106);

        (v89)(v97, v82);
        (v89)(v96, v82);
      }

      else
      {
        sub_10003A380(v109, v106);

        v93 = v105;
        (v105)(v79, v8);
        (v93)(v97, v8);
        (v93)(v96, v8);
      }
    }
  }

  return v29;
}

uint64_t sub_1000EDDB0()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_10001A2D8();

  if (v1)
  {
    return (v1 >> 8) & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000EDE14(uint64_t a1, uint64_t a2)
{
  result = sub_1000EDF4C(a1, a2);
  if (!result)
  {
    result = sub_1000EDE80(a1, a2);
    if (!result)
    {

      return sub_1000EE5B8(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1000EDE80(uint64_t a1, uint64_t a2)
{
  sub_10013B560(*(v2 + 32));
  result = sub_1000263DC();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if (v2)
    {
      result = sub_1000EFA40();
      v4 = result;
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      result = sub_100026418();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = *(v4 + 80) == a1 && *(v4 + 88) == a2;
    if (v10 || (sub_1000263FC() & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000EDF4C(uint64_t a1, uint64_t a2)
{
  sub_10013B560(*(v2 + 40));
  result = sub_1000263DC();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if (v2)
    {
      result = sub_1000EFA40();
      v4 = result;
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      result = sub_100026418();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = *(v4 + 80) == a1 && *(v4 + 88) == a2;
    if (v10 || (sub_1000263FC() & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000EE018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {

    v6 = sub_1001B8580(v5);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;

    v8 = sub_1000EF438;
  }

  else
  {
    v8 = static System.hasAsyncAwaitSupport.getter;
    v7 = 0;
    v6 = 0;
  }

  if (a2)
  {

    v10 = sub_1001B8580(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = v11;
    v13 = sub_1000EF430;
  }

  else
  {
    v13 = static System.hasAsyncAwaitSupport.getter;
    v12 = 0;
  }

  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = v7;
  v37 = v13;
  v14[4] = v13;
  v14[5] = v12;
  v32 = v14;
  if (v6)
  {
    v15 = *(v6 + 16);

    sub_100073F34(v15, 0);
  }

  else
  {
  }

  v16 = *(v3 + 40);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000EF334;
  *(v17 + 24) = v32;

  sub_1001BA3D0(v16, sub_1000EF3C8, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1000EF334;
  *(v18 + 24) = v32;

  sub_1001BA3D0(v19, sub_1000EF900, v18);
  v20 = *(v3 + 56);
  v36 = v20 & 0xFFFFFFFFFFFFFF8;
  v33 = v20 + 32;
  v34 = v20 & 0xC000000000000001;

  v21 = 0;
  v22 = 0;
  v35 = v20 >> 62;
  while (1)
  {
    if (v21)
    {
      for (i = 0; ; ++i)
      {
        v24 = v21 >> 62 ? sub_1001F7B48() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i == v24)
        {
          break;
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
          v25 = sub_1001F7808();
        }

        else
        {
          if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v25 = *(v21 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v8(v25) & 1) != 0 && (v37(v25))
        {
          sub_1001F7878();
          sub_1001F7908();
          sub_1001F7918();
          sub_1001F7898();
        }

        else
        {
        }
      }
    }

    v26 = v35 ? sub_1001F7B48() : *(v36 + 16);
    if (v22 == v26)
    {
      break;
    }

    if (v34)
    {
      v27 = sub_1001F7808();
    }

    else
    {
      if (v22 >= *(v36 + 16))
      {
        goto LABEL_44;
      }

      v27 = *(v33 + 8 * v22);
    }

    if (__OFADD__(v22++, 1))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v29 = *(v27 + 56);

    v21 = v29;
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {

    sub_1001F7F28();
    type metadata accessor for OctaneIAP();
    v30 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

LABEL_45:
  type metadata accessor for OctaneIAP();

  v30 = sub_1001F7AD8();

LABEL_40:

  sub_1001BA528(v30);

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000EE4E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);

  LOBYTE(a2) = sub_1000BFAC4(v3, v4, a2);

  return a2 & 1;
}

uint64_t sub_1000EE538(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OctaneSubscription();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = *(result + 192);
    v5 = *(result + 200);

    v6 = sub_1000BFAC4(v4, v5, a2);

    return v6;
  }

  return result;
}

uint64_t sub_1000EE5B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5 >> 62)
  {
LABEL_28:
    v6 = sub_1001F7B48();
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return 0;
    }
  }

  v7 = v5 & 0xC000000000000001;

  v8 = 0;
  while (2)
  {
    sub_1001C19A8(v8, v7 == 0, v5);
    if (v7)
    {
      result = sub_1000EFA40();
    }

    else
    {
    }

    if (__OFADD__(v8++, 1))
    {
      __break(1u);
      return result;
    }

    v11 = *(result + 56);
    v12 = sub_10013B560(v11);

    for (i = 0; v12 != i; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_1001F7808();
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v14 = *(v11 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v15 = *(v14 + 80) == a1 && *(v14 + 88) == a2;
      if (v15 || (sub_1001F7EA8() & 1) != 0)
      {

        return v14;
      }
    }

    v7 = v5 & 0xC000000000000001;
    if (v8 != v6)
    {
      continue;
    }

    break;
  }

  return 0;
}

uint64_t sub_1000EE77C(uint64_t a1, uint64_t a2)
{
  sub_10013B560(*(v2 + 56));
  result = sub_1000263DC();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if (v2)
    {
      result = sub_1000EFA40();
      v4 = result;
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      result = sub_100026418();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = *(v4 + 16) == a1 && *(v4 + 24) == a2;
    if (v10 || (sub_1000263FC() & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000EE848(void *a1)
{
  v3 = *(*(v1 + 120) + 32);
  v22 = v3 & 0xC000000000000001;
  v23 = sub_10013B560(v3);

  for (i = 0; ; i = v24 + 1)
  {
    if (v23 == i)
    {

      return 0;
    }

    v5 = v22;
    sub_1001C19A8(i, v22 == 0, v3);
    if (v5)
    {
      result = sub_1001F7808();
      v6 = result;
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = v6[2];
    v9 = v6[3];
    v11 = *a1;
    v10 = a1[1];
    v12 = v8 == *a1 && v9 == v10;
    if (v12 || (v24 = i, v13 = a1, v14 = v6[6], v15 = sub_1001F7EA8(), (v15 & 1) != 0) || (v25 = v11, v26 = v10, __chkstk_darwin(v15, v16), v21 = &v25, v17 = sub_1000E0B14(sub_100048E80, v20, v14)) || (a1 = v13, v25 = v8, v26 = v9, __chkstk_darwin(v17, v18), v21 = &v25, sub_1000E0B14(sub_100072CF0, v20, v19)))
    {

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EEA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for OctaneAsset();
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10, v11);
  sub_100023510();
  v14 = (v13 - v12);
  v15 = *(v3 + 64);
  v16 = *(v15 + 16);

  for (i = 0; ; ++i)
  {
    if (v16 == i)
    {

      v20 = 1;
      return sub_100018460(a3, v20, 1, v7);
    }

    if (i >= *(v15 + 16))
    {
      break;
    }

    sub_1000EF15C(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * i, v14);
    v19 = *v14 == a1 && v14[1] == a2;
    if (v19 || (sub_1001F7EA8() & 1) != 0)
    {

      sub_100059450(v14, a3);
      v20 = 0;
      return sub_100018460(a3, v20, 1, v7);
    }

    result = sub_1000594B4(v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EEB8C()
{

  sub_1000EF440(*(v0 + 72), *(v0 + 80));

  return v0;
}

uint64_t sub_1000EEBEC()
{
  sub_1000EEB8C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000EEC44(void *a1)
{
  v2 = v1;
  v4 = sub_1000183C4(&qword_1002B3EE0);
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  v10 = v18 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_1000EF060();
  sub_1001F8198();
  v11 = *(v2 + 16);
  LOBYTE(v18[0]) = 0;

  sub_100024A88();
  sub_1001F7D18();
  if (v11)
  {
    (*(v6 + 8))(v10, v4);
  }

  else
  {

    *&v18[0] = *(v2 + 32);
    v19 = 1;
    sub_1000183C4(&qword_1002AC7F0);
    sub_1000EF490(&qword_1002B3EF0);
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    *&v18[0] = *(v2 + 40);
    v19 = 2;
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    *&v18[0] = *(v2 + 48);
    v19 = 3;
    type metadata accessor for OctaneConfigurationSettings();
    sub_1000EF92C();
    sub_1000EF638(v13, 255, v14);
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    v15 = *(v2 + 88);
    v18[0] = *(v2 + 72);
    v18[1] = v15;
    v18[2] = *(v2 + 104);
    v19 = 4;
    sub_1000EF0B4();
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7D58();
    *&v18[0] = *(v2 + 56);
    v19 = 5;
    sub_1000183C4(&qword_1002B3F10);
    sub_1000EF564(&qword_1002B3F18);
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    *&v18[0] = *(v2 + 120);
    v19 = 6;
    type metadata accessor for OctaneAppPolicies();
    sub_1000EF95C();
    sub_1000EF638(v16, 255, v17);
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    v18[0] = *(v2 + 128);
    v19 = 7;
    sub_1000EF108();
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_1000EF010@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000ECDDC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000EF060()
{
  result = qword_1002B3EE8;
  if (!qword_1002B3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3EE8);
  }

  return result;
}

unint64_t sub_1000EF0B4()
{
  result = qword_1002B3F08;
  if (!qword_1002B3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F08);
  }

  return result;
}

unint64_t sub_1000EF108()
{
  result = qword_1002B3F30;
  if (!qword_1002B3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F30);
  }

  return result;
}

uint64_t sub_1000EF15C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OctaneAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EF1C0(char a1)
{
  if (a1)
  {
    return 0x656C646E7562;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_1000EF1EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EF1C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1000EF218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001F6B48();

  v10 = 0;
  v6 = [v3 initWithContentsOfFile:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1001F61B8();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000EF2F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000EF334(uint64_t a1)
{
  v3 = *(v1 + 32);
  if ((*(v1 + 16))())
  {
    return v3(a1) & 1;
  }

  else
  {
    return 0;
  }
}