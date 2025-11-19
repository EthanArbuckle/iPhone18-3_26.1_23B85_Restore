uint64_t sub_1C9809550(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C9AD58C0 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6575676F6C616964 && a2 == 0xEC0000006E696147;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65636E6569626D61 && a2 == 0xEC0000006E696147;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C9AD5900 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C9AD5920 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001C9AD5940 == a2;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6D61726150707364 && a2 == 0xED00007372657465)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9A93B18();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C98097A0(char a1)
{
  result = 0x6575676F6C616964;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x65636E6569626D61;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6D61726150707364;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C9809898(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C98098EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9809550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9809914@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9809798();
  *a1 = result;
  return result;
}

uint64_t sub_1C980993C(uint64_t a1)
{
  v2 = sub_1C9809C0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9809978(uint64_t a1)
{
  v2 = sub_1C9809C0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MovieRemix.FinalResult.encode(to:)()
{
  sub_1C9813AE4();
  v3 = v2;
  v4 = sub_1C97A2CEC(&qword_1EC3C8310);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEA4C();
  sub_1C98138A0(v3);
  sub_1C9809C0C();
  sub_1C9A93DD8();
  sub_1C9A93A58();
  if (!v0)
  {
    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97A2CEC(&qword_1EC3C8320);
    sub_1C9812064(&qword_1EC3C8328, sub_1C9809C60);
    sub_1C97BE02C();
    sub_1C9A93A18();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C9813AC0();
}

unint64_t sub_1C9809C0C()
{
  result = qword_1EC3C8318;
  if (!qword_1EC3C8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8318);
  }

  return result;
}

unint64_t sub_1C9809C60()
{
  result = qword_1EC3C8330;
  if (!qword_1EC3C8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8330);
  }

  return result;
}

void MovieRemix.FinalResult.hash(into:)()
{
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();

  sub_1C97C8AD4();
}

uint64_t MovieRemix.FinalResult.hashValue.getter()
{
  sub_1C97BE32C();
  MovieRemix.FinalResult.hash(into:)();
  return sub_1C9A93D18();
}

void MovieRemix.FinalResult.init(from:)()
{
  sub_1C9813AE4();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3C8338);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98138A0(v2);
  sub_1C9809C0C();
  sub_1C9A93DB8();
  if (!v0)
  {
    sub_1C98135D0();
    v6 = sub_1C9A93938();
    sub_1C98135D0();
    sub_1C9A938D8();
    v8 = v7;
    sub_1C98135D0();
    sub_1C9A938D8();
    v10 = v9;
    sub_1C98135D0();
    sub_1C9A938D8();
    v12 = v11;
    sub_1C98135D0();
    sub_1C9A938D8();
    v14 = v13;
    sub_1C98135D0();
    sub_1C9A938D8();
    v16 = v15;
    sub_1C97A2CEC(&qword_1EC3C8320);
    sub_1C9812064(&qword_1EC3C8340, sub_1C98120DC);
    sub_1C9A938F8();
    v17 = sub_1C97BE31C();
    v18(v17);
    *v4 = v6;
    *(v4 + 4) = v8;
    *(v4 + 8) = v10;
    *(v4 + 12) = v12;
    *(v4 + 16) = v14;
    *(v4 + 20) = v16;
    *(v4 + 24) = v19;
  }

  sub_1C97A592C(v2);
  sub_1C9813AC0();
}

uint64_t sub_1C980A050()
{
  sub_1C9A93CC8();
  MovieRemix.FinalResult.hash(into:)();
  return sub_1C9A93D18();
}

void sub_1C980A0E4()
{
  sub_1C97AEB94();
  v1 = v0;
  v29[6] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9A91558();
  sub_1C97AE9C8();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29[-1] - v9;
  if (v1 || (type metadata accessor for SoundAnalysisBundleMarker(), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v12 = [objc_opt_self() bundleForClass_], sub_1C9811FF4(v12), v13))
  {
    v28 = v2;
    sub_1C97A2CEC(&qword_1EC3C80C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;

    *(inited + 32) = sub_1C9A92348();
    v15 = sub_1C97E9314(inited);
    swift_setDeallocating();
    sub_1C985D6D4();
    v16 = objc_allocWithZone(type metadata accessor for SNDSPConfiguration());
    v17 = sub_1C98CDEB8(v15);
    type metadata accessor for SNDSPGraphLoader();
    v18 = sub_1C98CC23C(v17);
    if (v18)
    {
      v19 = v18;
      sub_1C9A695C8(v18);
      v20 = sub_1C9A92478();
      v21 = sub_1C9A6AEE4(v19, v20);

      sub_1C9A91468();
      sub_1C97BD318(0, &qword_1EC3C4A18);
      v22 = v28;
      (*(v4 + 16))(v8, v10, v28);
      v23 = sub_1C980A520(v8);
      if (v23)
      {
        v24 = v23;
        v29[0] = v23;
        if (sub_1C9A64AE4(v21, v29, 8, 3697, 0, 0))
        {
          sub_1C9A69B8C(v19);
          sub_1C9A69F34(v19);
        }

        else
        {
          type metadata accessor for SNError();
          sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9AD5AE0);
          swift_willThrow();
        }

        (*(v4 + 8))(v10, v28);
      }

      else
      {
        sub_1C9812B10();
        sub_1C97A7A80();
        sub_1C9813764(v26, 8);

        (*(v4 + 8))(v10, v22);
      }
    }

    else
    {
      sub_1C9812B10();
      sub_1C97A7A80();
      sub_1C9813764(v25, 7);
    }
  }

  else
  {
    sub_1C9812B10();
    sub_1C97A7A80();
    sub_1C9813764(v27, 6);
  }

  sub_1C97AEB5C();
}

id sub_1C980A520(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C9A91488();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_1C9A91558();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_1C980A5BC()
{
  sub_1C9813910();
  sub_1C9813A38();
  v1 = sub_1C97FB30C();
  v2 = sub_1C9A6AEE4(v1, v0);

  if ((sub_1C9813628(v3, v4, v5, v6, v7, v8, v9, v10, v13, SHIDWORD(v13)) & 1) == 0)
  {
    sub_1C97C269C();
    v11 = sub_1C97A7A80();
    sub_1C98021A4(v11, v12);
  }
}

void sub_1C980A674()
{
  sub_1C9813910();
  sub_1C9813A38();
  v1 = sub_1C97FB30C();
  v2 = sub_1C9A6AEE4(v1, v0);

  if ((sub_1C9813628(v3, v4, v5, v6, v7, v8, v9, v10, v13, SHIDWORD(v13)) & 1) == 0)
  {
    sub_1C97C269C();
    v11 = sub_1C97A7A80();
    sub_1C98021A4(v11, v12);
  }
}

void sub_1C980A72C(void *a1)
{
  v2 = sub_1C98134EC();
  v3 = sub_1C9A6AEE4(a1, v2);

  sub_1C9813904();
  if (!sub_1C9A65250(v4))
  {
    sub_1C97C269C();
    sub_1C97A7A80();
    sub_1C9813764(v5, 5);
  }
}

void sub_1C980A7D0()
{
  sub_1C9813910();
  sub_1C9A92478();
  v1 = sub_1C97FB30C();
  v2 = sub_1C9A6AEE4(v1, v0);

  if ((sub_1C9813628(v3, v4, v5, v6, v7, v8, v9, v10, v13, SHIDWORD(v13)) & 1) == 0)
  {
    sub_1C97C269C();
    v11 = sub_1C97A7A80();
    sub_1C98021A4(v11, v12);
  }
}

void sub_1C980A898()
{
  sub_1C9813910();
  v1 = sub_1C98134EC();
  v2 = sub_1C9813668();
  v4 = sub_1C9A6AEE4(v2, v3);

  sub_1C9813904();
  v6 = sub_1C9806488(v5);
  if (v0)
  {
  }

  else
  {
    v7 = v6;
    if (v6)
    {

      objc_opt_self();
      sub_1C97FB318();
      if (swift_dynamicCastObjCClass())
      {
        sub_1C97BD318(0, &qword_1EC3C54B0);
        v8 = v7;
        sub_1C9A92788();
      }

      sub_1C9812B10();
      sub_1C97A7A80();
      sub_1C9813764(v9, 9);
    }

    else
    {

      sub_1C9812B10();
      sub_1C97A7A80();
      sub_1C9813764(v10, 9);
    }
  }

  sub_1C9813734();
}

void sub_1C980AB20()
{
  sub_1C9813910();
  v1 = sub_1C98134EC();
  v2 = sub_1C9813668();
  v4 = sub_1C9A6AEE4(v2, v3);

  sub_1C9813904();
  v6 = sub_1C9806488(v5);
  if (v0)
  {
  }

  else
  {
    v7 = v6;
    if (v6)
    {

      objc_opt_self();
      sub_1C97FB318();
      if (swift_dynamicCastObjCClass())
      {
        sub_1C97BD318(0, &qword_1EC3C54B0);
        v8 = v7;
        sub_1C9A92788();
      }

      sub_1C9812B10();
      sub_1C97A7A80();
      sub_1C9813764(v9, 10);
    }

    else
    {

      sub_1C9812B10();
      sub_1C97A7A80();
      sub_1C9813764(v10, 10);
    }
  }

  sub_1C9813734();
}

void sub_1C980AD60(uint64_t a1, uint64_t a2, const char *a3, char a4)
{
  v7 = sub_1C98134EC();
  v8 = sub_1C98138D4();
  v10 = sub_1C9A6AEE4(v8, v9);

  sub_1C9813904();
  v12 = sub_1C9806488(v11);
  if (!v4)
  {
    v13 = v12;
    if (v12)
    {

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1C97BD318(0, &qword_1EC3C54B0);
        v14 = v13;
        sub_1C9A92788();
      }
    }

    else
    {
    }

    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v15 = sub_1C9A91B58();
    sub_1C97BFF6C(v15, qword_1EC3D3108);
    v16 = sub_1C9A91B38();
    sub_1C9A92FA8();
    v17 = sub_1C9813578();
    if (os_log_type_enabled(v17, v18))
    {
      sub_1C98136E4();
      v19 = swift_slowAlloc();
      sub_1C98139D4(v19);
      sub_1C981377C();
      _os_log_impl(v20, v21, v22, a3, 0, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    sub_1C9812B10();
    sub_1C97A7A80();
    *v23 = a4;
    swift_willThrow();
    v10 = v13;
  }

  sub_1C9813734();
}

void sub_1C980B064(void *a1, uint64_t a2, const char *a3, char a4)
{
  v8 = sub_1C98134EC();
  v9 = sub_1C9A6AEE4(a1, v8);

  sub_1C9813904();
  v11 = sub_1C9806488(v10);
  if (!v4)
  {
    v12 = v11;
    if (v11)
    {

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1C97BD318(0, &qword_1EC3C54B0);
        v13 = v12;
        sub_1C9A92788();
      }
    }

    else
    {
    }

    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v14 = sub_1C9A91B58();
    sub_1C97BFF6C(v14, qword_1EC3D3108);
    v15 = sub_1C9A91B38();
    sub_1C9A92FA8();
    v16 = sub_1C9813578();
    if (os_log_type_enabled(v16, v17))
    {
      sub_1C98136E4();
      v18 = swift_slowAlloc();
      *v18 = 0;
      sub_1C981377C();
      _os_log_impl(v19, v20, v21, a3, v18, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    sub_1C9812B10();
    sub_1C97A7A80();
    *v22 = a4;
    swift_willThrow();
    v9 = v12;
  }

  sub_1C9813734();
}

unint64_t sub_1C980B328()
{
  for (i = 0; ; i = v4 | i)
  {
    result = sub_1C980B40C();
    if ((v2 & 0x100) != 0)
    {

      return i;
    }

    if (__OFSUB__(3, result))
    {
      break;
    }

    if ((0xF000000000000003 - result) >> 61 != 7)
    {
      goto LABEL_17;
    }

    v3 = 8 * (3 - result);
    if (v3 - 33 >= 0xFFFFFFFFFFFFFFBFLL)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        if (v3 <= 0xFFFFFFFFFFFFFFE0)
        {
          v4 = 0;
        }

        else
        {
          v4 = v2 >> ((-8 * (3 - result)) & 0x18);
        }
      }

      else
      {
        v5 = v3 >= 0x20;
        v4 = v2 << v3;
        if (v5)
        {
          v4 = 0;
        }
      }
    }

    else
    {
      v4 = 0;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1C980B40C()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v4 = v0[2];
  if (v4 >> 14 == 4 * v3)
  {
    return 0;
  }

  v6 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = v0[2] & 0xC;
  v8 = 4 << v6;
  v9 = v0[2];
  if (v7 == 4 << v6)
  {
    v9 = sub_1C999C9E8(v0[2], *v0, v0[1]);
  }

  if (v9 >> 16 >= v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
LABEL_18:
    sub_1C9A925D8();
    goto LABEL_14;
  }

  if ((v2 & 0x2000000000000000) == 0 && (v1 & 0x1000000000000000) == 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
LABEL_14:
    if (v7 == v8)
    {
      v4 = sub_1C999C9E8(v4, v1, v2);
      if ((v2 & 0x1000000000000000) == 0)
      {
LABEL_16:
        v10 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_22;
      }
    }

    else if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_16;
    }

    if (v3 > v4 >> 16)
    {
      break;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C9A93658();
  }

  v10 = sub_1C9A925B8();
LABEL_22:
  v0[2] = v10;
  result = v0[3];
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v0[3] = result + 1;
  return result;
}

void sub_1C980B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C980B328();
  v7 = sub_1C980B68C(v6, a3);
  if ((v8 & 1) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(a4 + 16))
    {
      return;
    }

    __break(1u);
    return;
  }

  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v9 = sub_1C9A91B58();
  sub_1C97BFF6C(v9, qword_1EC3D3108);
  v10 = sub_1C9A91B38();
  sub_1C9A92FA8();
  v11 = sub_1C9813578();
  if (os_log_type_enabled(v11, v12))
  {
    sub_1C98136E4();
    v13 = swift_slowAlloc();
    *v13 = 0;
    sub_1C981377C();
    _os_log_impl(v14, v15, v16, v17, v13, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }
}

uint64_t sub_1C980B68C(int a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + 4 * i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C980B6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1C9A93B18() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1C980B758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C980B328();
  result = sub_1C980B68C(v4, a3);
  if (v6)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v7 = sub_1C9A91B58();
    sub_1C97BFF6C(v7, qword_1EC3D3108);
    v8 = sub_1C9A91B38();
    sub_1C9A92FA8();
    v9 = sub_1C9813578();
    if (os_log_type_enabled(v9, v10))
    {
      sub_1C98136E4();
      v11 = swift_slowAlloc();
      *v11 = 0;
      sub_1C981377C();
      _os_log_impl(v12, v13, v14, v15, v11, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    return 0;
  }

  return result;
}

float sub_1C980B828(float a1, float a2)
{
  v2 = 0.0;
  if (a1 > -80.0)
  {
    if (a1 >= a2)
    {
      v2 = a2 - a1;
    }

    else
    {
      v2 = ((0.0 / (a2 + 80.0)) * a1) + ((0.0 / (a2 + 80.0)) * 80.0);
    }
  }

  if (v2 <= 0.0)
  {
    return v2;
  }

  else
  {
    return 0.0;
  }
}

void sub_1C980B878(unint64_t a1, uint64_t *a2)
{
  v8 = *a2;
  sub_1C981374C(1718642785);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1C97E72E0();
  v8 = v10;
  if (v2 < 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  sub_1C98135F0();
  if (v9)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = 1714512484;
  *(v8 + 4 * v2 + 32) = 1114636288;
  sub_1C981374C(1714512484);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_35:
  sub_1C97E72E0();
  v8 = v11;
  if (v2 < 0)
  {
    goto LABEL_36;
  }

LABEL_6:
  sub_1C98135F0();
  if (v9)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v4 = 1194418788;
  *(v8 + 4 * v2 + 32) = 1122369536;
  sub_1C981374C(1194418788);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_38:
  sub_1C97E72E0();
  v8 = v12;
  if (v2 < 0)
  {
    goto LABEL_39;
  }

LABEL_9:
  sub_1C98135F0();
  if (v9)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v5 = 1362190948;
  *(v8 + 4 * v2 + 32) = 1077936128;
  sub_1C981374C(1362190948);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_41:
  sub_1C97E72E0();
  v8 = v13;
  if (v2 < 0)
  {
    goto LABEL_42;
  }

LABEL_12:
  sub_1C98135F0();
  if (v9)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v8 + 4 * v2 + 32) = 1058474557;
  sub_1C981374C(v3 + 0x10000);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_44:
  sub_1C97E72E0();
  v8 = v14;
  if (v2 < 0)
  {
    goto LABEL_45;
  }

LABEL_15:
  sub_1C98135F0();
  if (v9)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v8 + 4 * v2 + 32) = 1144750080;
  sub_1C981374C(v4 + 0x10000);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_47:
  sub_1C97E72E0();
  v8 = v15;
  if (v2 < 0)
  {
    goto LABEL_48;
  }

LABEL_18:
  sub_1C98135F0();
  if (v9)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v8 + 4 * v2 + 32) = -1072861020;
  sub_1C981374C(v5 + 0x10000);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_50:
  sub_1C97E72E0();
  v8 = v16;
  if (v2 < 0)
  {
    goto LABEL_51;
  }

LABEL_21:
  sub_1C98135F0();
  if (v9)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v8 + 4 * v2 + 32) = 1065353216;
  sub_1C981374C(v3 + 0x20000);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_53:
  sub_1C97E72E0();
  v8 = v17;
  if (v2 < 0)
  {
    goto LABEL_54;
  }

LABEL_24:
  sub_1C98135F0();
  if (v9)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(v8 + 4 * v2 + 32) = 1159479296;
  sub_1C981374C(v4 + 0x20000);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_56:
  sub_1C97E72E0();
  v8 = v18;
  if (v2 < 0)
  {
    goto LABEL_57;
  }

LABEL_27:
  sub_1C98135F0();
  if (v9)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v8 + 4 * v2 + 32) = 1069547520;
  a1 = sub_1C981374C(v5 + 0x20000);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_59:
  sub_1C97E72E0();
  v8 = v19;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if (a1 < *(v8 + 16))
  {
    *(v8 + 4 * a1 + 32) = 1058642330;
    *a2 = v8;
    return;
  }

LABEL_61:
  __break(1u);
}

void sub_1C980BBA8(unint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  sub_1C981374C(1718642788);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1C97E72E0();
  v7 = v9;
  if (v2 < 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  sub_1C98135F0();
  if (v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = 1194418785;
  *(v7 + 4 * v2 + 32) = 1101004800;
  sub_1C981374C(1194418788);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_35:
  sub_1C97E72E0();
  v7 = v10;
  if (v2 < 0)
  {
    goto LABEL_36;
  }

LABEL_6:
  sub_1C98135F0();
  if (v8)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1C9813740();
  sub_1C981374C(1194484324);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_38:
  sub_1C97E72E0();
  v7 = v11;
  if (v2 < 0)
  {
    goto LABEL_39;
  }

LABEL_9:
  sub_1C98135F0();
  if (v8)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v4 = 1194549857;
  sub_1C9813740();
  sub_1C981374C(1194549860);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_41:
  sub_1C97E72E0();
  v7 = v12;
  if (v2 < 0)
  {
    goto LABEL_42;
  }

LABEL_12:
  sub_1C98135F0();
  if (v8)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_1C9813740();
  sub_1C981374C(1718642785);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_44:
  sub_1C97E72E0();
  v7 = v13;
  if (v2 < 0)
  {
    goto LABEL_45;
  }

LABEL_15:
  sub_1C98135F0();
  if (v8)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v7 + 4 * v2 + 32) = 1101004800;
  sub_1C981374C(1194418785);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_47:
  sub_1C97E72E0();
  v7 = v14;
  if (v2 < 0)
  {
    goto LABEL_48;
  }

LABEL_18:
  sub_1C98135F0();
  if (v8)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_1C9813740();
  sub_1C981374C(v3 + 0x10000);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_50:
  sub_1C97E72E0();
  v7 = v15;
  if (v2 < 0)
  {
    goto LABEL_51;
  }

LABEL_21:
  sub_1C98135F0();
  if (v8)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_1C9813740();
  sub_1C981374C(1194549857);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_53:
  sub_1C97E72E0();
  v7 = v16;
  if (v2 < 0)
  {
    goto LABEL_54;
  }

LABEL_24:
  sub_1C98135F0();
  if (v8)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  sub_1C9813740();
  sub_1C981374C(v4 + 0x10000);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_56:
  sub_1C97E72E0();
  v7 = v17;
  if (v2 < 0)
  {
    goto LABEL_57;
  }

LABEL_27:
  sub_1C98135F0();
  if (v8)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_1C9813740();
  a1 = sub_1C981374C(1363506785);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_59:
  sub_1C97E72E0();
  v7 = v18;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if (a1 < *(v7 + 16))
  {
    *(v7 + 4 * a1 + 32) = 0;
    *a2 = v7;
    return;
  }

LABEL_61:
  __break(1u);
}

void sub_1C980BE84(void *a1@<X0>, uint8_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_1C980A5BC();
  if (!v4)
  {
    v10 = v9;
    sub_1C981365C();
    sub_1C980A674();
    v12 = v11;
    sub_1C981365C();
    sub_1C980A7D0();
    v14 = v13;
    v15 = sub_1C981365C();
    sub_1C980AD60(v15, 23779, v16, 9);
    v18 = v17;
    v19 = sub_1C981365C();
    sub_1C980B064(v19, 23780, v20, 10);
    v22 = v21;
    if (*(v18 + 16) != *(v21 + 16))
    {

      if (qword_1EC3C5520 != -1)
      {
        sub_1C98134D8();
        swift_once();
      }

      v30 = sub_1C9A91B58();
      sub_1C97BFF6C(v30, qword_1EC3D3108);
      v31 = sub_1C9A91B38();
      sub_1C9A92FA8();
      v32 = sub_1C9813578();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_1C980B594(1702256967, 0xE400000000000000, v21, v18);
    v24 = v23;
    sub_1C980B594(1702256979, 0xE400000000000000, v22, v18);
    v26 = v25;

    v27 = ((((v10 - v12) + (v24 + v26)) / 3.0) * 0.26) + -8.23;
    v28 = -6.0;
    if (v27 <= -6.0)
    {
      v40 = -9.0;
      if (v27 > -9.0)
      {
        if (v26 > -9.0)
        {
          v40 = v26;
        }

        if (v26 >= 0.0)
        {
          v28 = ((((v10 - v12) + (v24 + v26)) / 3.0) * 0.26) + -8.23;
        }

        else
        {
          v28 = v27 - v40;
        }

        goto LABEL_21;
      }

      if (v26 >= 0.0)
      {
        goto LABEL_24;
      }

      v29 = -9.0;
      if (v26 > -9.0)
      {
LABEL_20:
        v28 = v29 - v26;
LABEL_21:
        if (v28 > 0.0)
        {
          v28 = 0.0;
          goto LABEL_26;
        }

        if (v28 > -9.0)
        {
          goto LABEL_26;
        }

LABEL_24:
        v28 = -9.0;
        goto LABEL_26;
      }
    }

    else
    {
      if (v26 >= 0.0)
      {
LABEL_26:
        v41 = sub_1C981365C();
        sub_1C980A72C(v41);
        sub_1C980A72C(a1);
        sub_1C981365C();
        sub_1C980A898();
        v43 = v42;
        v97 = v42;
        sub_1C981365C();
        sub_1C980AB20();
        v96 = v44;
        if (*(v43 + 16) == *(v44 + 16))
        {
          sub_1C980B594(1363506785, 0xE400000000000000, v44, v43);
          v46 = v28 - v45;
          if ((v28 - v45) <= -3.0)
          {
            if (v46 <= -9.0)
            {
              if (a4 < 0.93)
              {
                sub_1C9813868();
                if (v49 ^ v50 | v48)
                {
                  goto LABEL_48;
                }

                v46 = -9.0;
                goto LABEL_45;
              }
            }

            else if (a4 < 0.93)
            {
              sub_1C9813868();
              if (v49 ^ v50 | v48)
              {
                goto LABEL_48;
              }

              goto LABEL_45;
            }
          }

          else if (a4 < 0.93)
          {
            sub_1C9813868();
            if (v49 ^ v50 | v48)
            {
              goto LABEL_48;
            }

            v46 = -3.0;
LABEL_45:
            if (a4 < v47)
            {
              v54 = sub_1C980B828(v10, -21.0);
              v55 = v46 + v54;
              sub_1C980B878(v96, &v97);
LABEL_52:
              v64 = v54 - (v55 - (-21.0 - v12));
              if ((v12 + v55) > -21.0)
              {
                v55 = -21.0 - v12;
                v54 = v64;
              }

              v59 = v96;
              v65 = sub_1C97A7890();
              v67 = sub_1C9806E44(v65, v66);
              swift_bridgeObjectRelease_n();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C9813970();
                v67 = v82;
              }

              sub_1C98139C0();
              if (!(!v48 & v68))
              {
                sub_1C9813588();
                v67 = v83;
              }

              sub_1C98136F0();
              if (v49 != v50)
              {
                sub_1C98135AC();
                v67 = v84;
              }

              sub_1C98138EC();
              *(v69 + 36) = v55;
              v70 = 1702256970;
              if (*(v67 + 24) >> 1 < 0x6576614AuLL)
              {
                sub_1C9813588();
                v67 = v85;
              }

              sub_1C98136C0();
              sub_1C981382C(v71);
              if (!(v49 ^ v50 | v48))
              {
                sub_1C98135AC();
                v67 = v86;
              }

              sub_1C9813698();
              if (!(v49 ^ v50 | v48))
              {
                sub_1C9813588();
                v67 = v87;
              }

              sub_1C98136C0();
              sub_1C9813810(v72);
              if (!(v49 ^ v50 | v48))
              {
                sub_1C98135AC();
                v67 = v88;
              }

LABEL_68:
              *(v67 + 16) = v59;
              v73 = v67 + 8 * v70;
              *(v73 + 32) = 1802529136;
              *(v73 + 36) = (a2 & 1);
              *a3 = 17104896;
              *(a3 + 4) = v54;
              *(a3 + 8) = v55;
              *(a3 + 12) = v10;
              *(a3 + 16) = v12;
              *(a3 + 20) = v14;
              *(a3 + 24) = v67;
              return;
            }

LABEL_48:
            sub_1C980BBA8(v96, &v97);
            if (v10 > v12)
            {
              v63 = v10;
            }

            else
            {
              v63 = v12;
            }

            v54 = sub_1C980B828(v63, -21.0);
            v55 = v54;
            goto LABEL_52;
          }

          v56 = sub_1C981365C();
          sub_1C980AD60(v56, 23784, v57, 12);
          v59 = v58;
          v60 = sub_1C981365C();
          sub_1C980B064(v60, 23785, v61, 13);
          v74 = v62;
          if (*(v59 + 16) == *(v62 + 16))
          {
            v67 = sub_1C9806E44(v62, v59);

            if (v10 > v12)
            {
              v75 = v10;
            }

            else
            {
              v75 = v12;
            }

            v54 = sub_1C980B828(v75, -21.0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C9813970();
              v67 = v89;
            }

            sub_1C98139C0();
            if (!(!v48 & v68))
            {
              sub_1C9813588();
              v67 = v90;
            }

            sub_1C98136F0();
            if (v49 != v50)
            {
              sub_1C98135AC();
              v67 = v91;
            }

            sub_1C98138EC();
            *(v76 + 36) = v54;
            v70 = v74 + 3;
            if (v74 + 3 > *(v67 + 24) >> 1)
            {
              sub_1C9813588();
              v67 = v92;
            }

            sub_1C98136C0();
            sub_1C981382C(v77);
            if (!(v49 ^ v50 | v48))
            {
              sub_1C98135AC();
              v67 = v93;
            }

            sub_1C9813698();
            if (!(v49 ^ v50 | v48))
            {
              sub_1C9813588();
              v67 = v94;
            }

            sub_1C98136C0();
            sub_1C9813810(v78);
            if (!(v49 ^ v50 | v48))
            {
              sub_1C98135AC();
              v67 = v95;
            }

            v55 = v54;
            goto LABEL_68;
          }

          if (qword_1EC3C5520 != -1)
          {
            sub_1C98134D8();
            swift_once();
          }

          v79 = sub_1C9A91B58();
          sub_1C97BFF6C(v79, qword_1EC3D3108);
          v31 = sub_1C9A91B38();
          sub_1C9A92FA8();
          v80 = sub_1C9813578();
          if (!os_log_type_enabled(v80, v81))
          {
LABEL_11:

            sub_1C9812B10();
            sub_1C97A7A80();
            sub_1C9813764(v39, 11);
            return;
          }
        }

        else
        {

          if (qword_1EC3C5520 != -1)
          {
            sub_1C98134D8();
            swift_once();
          }

          v51 = sub_1C9A91B58();
          sub_1C97BFF6C(v51, qword_1EC3D3108);
          v31 = sub_1C9A91B38();
          sub_1C9A92FA8();
          v52 = sub_1C9813578();
          if (!os_log_type_enabled(v52, v53))
          {
            goto LABEL_11;
          }
        }

LABEL_10:
        sub_1C98136E4();
        v34 = swift_slowAlloc();
        sub_1C98139D4(v34);
        sub_1C981377C();
        _os_log_impl(v35, v36, v37, v38, a2, 2u);
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
        goto LABEL_11;
      }

      if (v26 > -9.0)
      {
        v29 = -6.0;
        goto LABEL_20;
      }
    }

    v28 = 0.0;
    goto LABEL_26;
  }
}

uint64_t sub_1C980C6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C9812F64(a2, &v26, &qword_1EC3C8350);
  if (v28)
  {
    sub_1C979B054(&v26, v30);
    sub_1C979B054(v30, v33);
  }

  else
  {
    sub_1C97DA1E0(&v26, &qword_1EC3C8350);
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v6 = qword_1EC3D3178;
    v7 = qword_1EC3D3180;
    v9 = qword_1EC3D3188;
    v8 = qword_1EC3D3190;
    v10 = qword_1EC3D3198;
    v11 = byte_1EC3D31A0;
    v31 = &unk_1F492E308;
    v32 = &off_1F4931858;
    sub_1C98137F8();
    v12 = swift_allocObject();
    *v30 = v12;
    if (v11)
    {
      *&v26 = v6;
      v13 = v6;
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      return sub_1C97C26F0(v30);
    }

    *(v12 + 16) = v6;
    *(v12 + 24) = v7;
    *(v12 + 32) = v9 & 1;
    *(v12 + 40) = v8;
    *(v12 + 48) = v10;
    sub_1C979B054(v30, v33);
  }

  v15 = v34;
  v16 = v35;
  v17 = sub_1C97A5A8C(v33, v34);
  sub_1C980C8D4(a1, v17, v15, v16, v18, v19, v20, v21, v25, v26, *(&v26 + 1), v27, v28, v29, *v30, *&v30[8], *&v30[16], v31, v32, v33[0]);
  result = sub_1C97A592C(v33);
  if (!v3)
  {
    v22 = *&v30[20];
    v23 = v31;
    v24 = *&v30[4];
    *a3 = *v30;
    *(a3 + 4) = v24;
    *(a3 + 20) = v22;
    *(a3 + 24) = v23;
  }

  return result;
}

void sub_1C980C8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v60 = v23;
  v59 = v24;
  v58 = v25;
  v27 = v26;
  v57 = v28;
  v29 = sub_1C9A91558();
  sub_1C97AE9C8();
  v31 = v30;
  v33 = *(v32 + 64);
  v35 = MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v36 = *(v31 + 16);
  v37 = sub_1C98138D4();
  v36(v37);
  v38 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v39 = sub_1C97FB318();
  v40 = sub_1C99CA018(v39);
  if (v20)
  {
    goto LABEL_6;
  }

  v53 = v36;
  v54 = &v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v27;
  v56 = v40;
  v41 = [v40 processingFormat];
  v42 = [v41 channelCount];
  [v41 sampleRate];
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v43 < 9.22337204e18)
  {
    v66 = v42;
    v67 = v43;
    sub_1C980CC84();
    v65[0] = v68;
    v65[1] = v69;
    v65[2] = v70;
    v65[3] = v71;
    v44 = v54;
    v53(v54, v55, v29);
    v45 = v31;
    v46 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v47 = swift_allocObject();
    (*(v45 + 32))(v47 + v46, v44, v29);
    *(v47 + ((v33 + v46 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
    v48 = v41;
    sub_1C980EF94(sub_1C9812A50, 0x400uLL, v65, &v61);

    v72 = *(&v68 + 1);
    sub_1C97DA1E0(&v72, &qword_1EC3C83F0);

    v49 = v63;
    v50 = v64;
    v51 = v62;
    v52 = v57;
    *v57 = v61;
    *(v52 + 1) = v51;
    v52[5] = v49;
    *(v52 + 3) = v50;
LABEL_6:
    sub_1C97AEB5C();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1C980CC84()
{
  sub_1C98139FC();
  v314 = v0;
  v315 = v1;
  v313 = v2;
  v312 = v3;
  v5 = v4;
  v280 = v6;
  sub_1C97A2CEC(&qword_1EC3C8418);
  sub_1C97AE9C8();
  v278 = v8;
  v279 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v277 = v10;
  sub_1C97A2CEC(&qword_1EC3C8420);
  sub_1C97AE9C8();
  v269 = v12;
  v270 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  v268 = v14;
  sub_1C97A2CEC(&qword_1EC3C7880);
  sub_1C97AE9C8();
  v272 = v16;
  v273 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  v271 = v18;
  sub_1C97A2CEC(&qword_1EC3C8428);
  sub_1C97AE9C8();
  v275 = v20;
  v276 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AC02C();
  v274 = v22;
  v263 = sub_1C97A2CEC(&qword_1EC3C8430);
  sub_1C97AE9C8();
  v261 = v23;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97AC02C();
  v257 = v25;
  v265 = sub_1C97A2CEC(&qword_1EC3C8438);
  sub_1C97AE9C8();
  v262 = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AC02C();
  v259 = v28;
  v266 = sub_1C97A2CEC(&qword_1EC3C8440);
  sub_1C97AE9C8();
  v264 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  v260 = v31;
  v258 = sub_1C97A2CEC(&qword_1EC3C8448);
  sub_1C97AE9C8();
  v256 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  v255 = v34;
  v253 = sub_1C97A2CEC(&qword_1EC3C8450);
  sub_1C97AE9C8();
  v251 = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  v249 = v37;
  v254 = sub_1C97A2CEC(&qword_1EC3C8458);
  sub_1C97AE9C8();
  v252 = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97AC02C();
  v250 = v40;
  sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97AE9C8();
  v284 = v42;
  v285 = v41;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C97AC02C();
  v283 = v44;
  v299 = sub_1C9A91C28();
  sub_1C97AE9C8();
  v282 = v45;
  MEMORY[0x1EEE9AC00](v46);
  v281 = &v243[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v288 = sub_1C97A2CEC(&qword_1EC3C8240);
  sub_1C97AE9C8();
  v286 = v48;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C97AC02C();
  v300 = v50;
  v287 = sub_1C97A2CEC(&qword_1EC3C8460);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AC02C();
  v289 = v52;
  v295 = sub_1C97A2CEC(&qword_1EC3C8468);
  sub_1C97AE9C8();
  v292 = v53;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C97AC02C();
  v301 = v55;
  v296 = sub_1C97A2CEC(&qword_1EC3C8470);
  sub_1C97AE9C8();
  v293 = v56;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C97AC02C();
  v290 = v58;
  v297 = sub_1C97A2CEC(&qword_1EC3C8478);
  sub_1C97AE9C8();
  v294 = v59;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C97AC02C();
  v291 = v61;
  sub_1C97A2CEC(&qword_1EC3C8480);
  sub_1C97AE9C8();
  v304 = v63;
  v305 = v62;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C97AC02C();
  v303 = v65;
  v66 = sub_1C9A91748();
  sub_1C97AE9C8();
  v68 = v67;
  v70 = MEMORY[0x1EEE9AC00](v69);
  v72 = &v243[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = MEMORY[0x1EEE9AC00](v70);
  v302 = &v243[-v74];
  v75 = MEMORY[0x1EEE9AC00](v73);
  v77 = &v243[-v76];
  v306 = v78;
  MEMORY[0x1EEE9AC00](v75);
  v80 = &v243[-v79];
  v81 = *(v5 + 8);
  v310 = *v5;
  v316 = v81;
  sub_1C9A91738();
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v82 = sub_1C9A91B58();
  v83 = sub_1C97BFF6C(v82, qword_1EC3D3108);
  v84 = *(v68 + 16);
  v309 = v68 + 16;
  v308 = v84;
  v84(v77, v80, v66);
  v298 = v83;
  v85 = sub_1C9A91B38();
  v86 = sub_1C9A92FC8();
  v87 = os_log_type_enabled(v85, v86);
  v267 = v72;
  if (v87)
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v311 = v68;
    v248 = v89;
    v318[0] = v89;
    *v88 = 136446466;
    sub_1C981353C();
    sub_1C9812FF8(v90, v91);
    sub_1C9A93A98();
    v307 = v80;
    v92 = v66;
    v247 = *(v311 + 8);
    (v247)(v77, v66);
    v93 = sub_1C98138D4();
    v96 = sub_1C9849140(v93, v94, v95);

    *(v88 + 4) = v96;
    *(v88 + 12) = 2080;
    v319[0] = v310;
    v97 = v316;
    v319[1] = v316;
    v98 = sub_1C9A924F8();
    v100 = sub_1C9849140(v98, v99, v318);

    *(v88 + 14) = v100;
    v66 = v92;
    v80 = v307;
    _os_log_impl(&dword_1C9788000, v85, v86, "Trying to run movie remix %{public}s; request: %s", v88, 0x16u);
    swift_arrayDestroy();
    v68 = v311;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v101 = v247;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    v101 = *(v68 + 8);
    (v101)(v77, v66);
    v97 = v316;
  }

  v102 = v314;
  v103 = (*(v315 + 8))(v313);
  if (v102)
  {
    goto LABEL_17;
  }

  if ((v103 & 1) == 0)
  {
    sub_1C9812B10();
    sub_1C97A7A80();
    *v136 = 0;
    swift_willThrow();
LABEL_17:
    v137 = sub_1C97A7890();
    v101(v137);
    goto LABEL_18;
  }

  sub_1C9A126A0();
  sub_1C980A0E4();
  v104 = 0;
  v106 = v105;
  v107 = sub_1C9A6BD8C(v105);
  if (!v107 || (v108 = v107, sub_1C9A6681C(v107, 0), v110 = v109, v108, (v111 = sub_1C9A6BD8C(v106)) == 0))
  {
    sub_1C9812B10();
    sub_1C97A7A80();
    sub_1C9813764(v138, 1);

    goto LABEL_17;
  }

  v112 = v111;
  v245 = v106;
  v313 = 0;
  v244 = sub_1C9A66CAC(v111, 0);

  sub_1C97A2CEC(&qword_1EC3C8488);
  swift_allocObject();
  v314 = sub_1C9A91E28();
  v312 = 60 * v97;
  if ((v97 * 60) >> 64 != (60 * v97) >> 63)
  {
    __break(1u);
    goto LABEL_36;
  }

  v246 = 2 * v97;
  v113 = v302;
  sub_1C98136D0();
  v114();
  v315 = *(v68 + 80);
  v115 = (v315 + 16) & ~v315;
  v116 = swift_allocObject();
  v311 = v68;
  v117 = *(v68 + 32);
  v68 += 32;
  sub_1C9813994();
  v117();
  sub_1C97AA878();
  v118 = swift_allocObject();
  v248 = v118;
  *(v118 + 16) = sub_1C9812BD0;
  *(v118 + 24) = v116;
  sub_1C97F07FC();
  v247 = swift_allocObject();
  *(v247 + 16) = 1;
  sub_1C98136D0();
  v119();
  v120 = swift_allocObject();
  sub_1C9813994();
  v117();
  sub_1C97AA878();
  v121 = swift_allocObject();
  *(v121 + 16) = sub_1C9812C8C;
  *(v121 + 24) = v120;
  sub_1C98137F8();
  v122 = swift_allocObject();
  v122[2] = sub_1C98134A8;
  v122[3] = 0;
  v122[4] = v246;
  v122[5] = sub_1C9812CC0;
  v122[6] = v121;
  sub_1C97F07FC();
  v123 = swift_allocObject();
  *(v123 + 16) = 0;
  v307 = v80;
  sub_1C98136D0();
  v124();
  v125 = swift_allocObject();
  v315 = v66;
  (v117)(v125 + v115, v113, v66);
  sub_1C97AA878();
  v126 = swift_allocObject();
  *(v126 + 16) = sub_1C9812DA4;
  *(v126 + 24) = v125;
  sub_1C98137F8();
  v127 = swift_allocObject();
  v127[2] = sub_1C98134A8;
  v127[3] = 0;
  v127[4] = v312;
  v127[5] = sub_1C9813448;
  v127[6] = v126;
  sub_1C97F07FC();
  v128 = swift_allocObject();
  *(v128 + 16) = 0;
  v104 = v314;
  v318[0] = v314;
  v318[1] = sub_1C9812C84;
  v318[2] = v247;
  v318[3] = sub_1C9812C7C;
  v318[4] = v248;
  v318[5] = sub_1C9812D08;
  v318[6] = v123;
  v318[7] = sub_1C9812CDC;
  v318[8] = v122;
  v318[9] = sub_1C9813490;
  v318[10] = v128;
  v318[11] = sub_1C9812CDC;
  v318[12] = v127;

  sub_1C97A2CEC(&qword_1EC3C8490);
  sub_1C97A2CEC(&unk_1EC3C9A20);
  sub_1C9813064(&qword_1EC3C8498, &qword_1EC3C8490);
  sub_1C9A92048();
  memcpy(v319, v318, sizeof(v319));
  sub_1C97DA1E0(v319, &qword_1EC3C8490);
  sub_1C9813554(&qword_1EC3C84A0, &qword_1EC3C8480);
  v129 = sub_1C9813A90();
  v130 = sub_1C98135E0();
  v131(v130);
  sub_1C980FB7C(v310, v316, v320);
  if ((*&v110 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v132 = v313;
  if (v110 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v110 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_21;
  }

  v320[4] = v320[0];
  v320[5] = v320[1];
  v320[6] = v320[2];
  v320[7] = v320[3];
  v133 = sub_1C97DD3BC(v244, v110);
  v104 = v132;
  if (v132)
  {

    sub_1C97DA1E0(v320, &qword_1EC3CE010);
    v134 = sub_1C98135E0();
    v135(v134);
    goto LABEL_18;
  }

  v316 = v129;
  v312 = v133;
  v313 = sub_1C98BF080();
  v318[0] = v313;
  v139 = v281;
  v140 = v282;
  (*(v282 + 104))(v281, *MEMORY[0x1E695BD20], v299);
  v141 = v283;
  v142 = v284;
  *v283 = sub_1C980FF78;
  v141[1] = 0;
  v143 = v285;
  (*(v142 + 104))(v141, *MEMORY[0x1E695BD48], v285);
  v144 = sub_1C9813668();
  v310 = sub_1C97A2CEC(v144);
  sub_1C9813608();
  sub_1C9813064(v145, v146);
  sub_1C9A92018();
  (*(v142 + 8))(v141, v143);
  (*(v140 + 8))(v139, v299);

  sub_1C97AA878();
  v147 = swift_allocObject();
  *(v147 + 16) = sub_1C98063A0;
  *(v147 + 24) = 0;
  sub_1C97A2CEC(&unk_1EC3C7430);
  sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240);
  v148 = v289;
  sub_1C9A91F68();

  v149 = sub_1C9813668();
  v150(v149);
  v151 = v245;
  v152 = sub_1C9A69970(v245);
  sub_1C97F07FC();
  v153 = swift_allocObject();
  *(v153 + 16) = v152;
  v154 = v287;
  v155 = v148 + *(v287 + 84);
  *v155 = 0;
  *(v155 + 8) = 0;
  *(v155 + 16) = 2;
  v156 = (v148 + *(v154 + 88));
  *v156 = sub_1C9812ECC;
  v156[1] = v153;
  sub_1C97F07FC();
  v157 = swift_allocObject();
  *(v157 + 16) = v151;
  sub_1C97AA878();
  v158 = swift_allocObject();
  *(v158 + 16) = sub_1C9812ED4;
  *(v158 + 24) = v157;
  sub_1C97AA878();
  v159 = swift_allocObject();
  *(v159 + 16) = sub_1C9812F00;
  *(v159 + 24) = 0;
  v160 = swift_allocObject();
  v160[2] = sub_1C98068D4;
  v160[3] = v158;
  v160[4] = sub_1C9812F18;
  v160[5] = v159;
  v160[6] = sub_1C99DD1EC;
  v160[7] = 0;
  v161 = v151;

  sub_1C990E81C(v301);

  sub_1C97DA1E0(v148, &qword_1EC3C8460);
  sub_1C97A2CEC(&unk_1EC3C6E20);
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_1C9A9DF30;
  *(v162 + 32) = v161;
  v318[0] = v162;
  v310 = v161;
  v163 = sub_1C9813668();
  sub_1C97A2CEC(v163);
  sub_1C9813554(&qword_1EC3C84B0, &qword_1EC3C8468);
  sub_1C9813064(&qword_1EC3C84B8, &qword_1EC3C84A8);
  v164 = v290;
  sub_1C9A92098();

  v165 = sub_1C9813668();
  v166(v165);
  sub_1C9813674(&qword_1EC3C84C0, &qword_1EC3C8470);
  v167 = v296;
  sub_1C9A91FA8();
  (*(v293 + 8))(v164, v167);
  sub_1C9813064(&qword_1EC3C84C8, &qword_1EC3C8478);
  v68 = sub_1C9813A90();
  v168 = sub_1C98135E0();
  v169(v168);
  if (qword_1EC3C5BA8 != -1)
  {
    goto LABEL_39;
  }

LABEL_21:
  v170 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  v171 = sub_1C99B590C();
  if (v104)
  {
  }

  else
  {
    v178 = v171;
    v179 = v172;

    if ((v179 & 1) == 0 && v178)
    {
      v180 = sub_1C9A91B38();
      v181 = sub_1C9A92FC8();
      if (os_log_type_enabled(v180, v181))
      {
        sub_1C98136E4();
        *swift_slowAlloc() = 0;
        sub_1C9813A18(&dword_1C9788000, v182, v183, "Movie Remix: Music Detection is disabled.");
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
      }

      v313 = 0;

      v318[0] = 0;
      v184 = v249;
      sub_1C9A91EA8();
      sub_1C97A2CEC(&unk_1EC3CA040);
      v185 = v253;
      sub_1C9A91E88();
      (*(v251 + 8))(v184, v185);
      sub_1C9813064(&qword_1EC3C8558, &qword_1EC3C8458);
      v201 = sub_1C9813A90();
      v186 = sub_1C98135E0();
      v187(v186);
      goto LABEL_31;
    }
  }

  v173 = sub_1C9A91B38();
  v174 = sub_1C9A92FC8();
  if (os_log_type_enabled(v173, v174))
  {
    sub_1C98136E4();
    *swift_slowAlloc() = 0;
    sub_1C9813A18(&dword_1C9788000, v175, v176, "Movie Remix: Music Detection is enabled.");
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  sub_1C9813A58();
  sub_1C9813A58();
  v177 = sub_1C9875720(v320);
  v313 = 0;
  v318[0] = v177;
  sub_1C97AA878();
  v188 = swift_allocObject();
  *(v188 + 16) = 0x636973756DLL;
  *(v188 + 24) = 0xE500000000000000;
  sub_1C97A2CEC(&qword_1EC3C84D0);
  sub_1C9813064(&qword_1EC3C84D8, &qword_1EC3C84D0);
  v189 = v255;
  sub_1C9A92048();

  sub_1C97DA1E0(v320, &qword_1EC3CE010);
  sub_1C9813554(&qword_1EC3C84E0, &qword_1EC3C8448);
  v190 = v257;
  v191 = v258;
  sub_1C9A92028();
  sub_1C9813064(&qword_1EC3C84E8, &qword_1EC3C8430);
  v192 = v259;
  v193 = v263;
  sub_1C9813650();
  sub_1C9A92088();
  (*(v261 + 8))(v190, v193);
  sub_1C9813674(&qword_1EC3C84F0, &qword_1EC3C8438);
  v194 = v265;
  sub_1C9A920C8();
  (*(v262 + 8))(v192, v194);
  sub_1C9813064(&qword_1EC3C84F8, &qword_1EC3C8440);
  v195 = sub_1C9A91F28();
  v196 = sub_1C97A7890();
  v197(v196);
  (*(v256 + 8))(v189, v191);
  v318[0] = v195;
  v198 = sub_1C98138D4();
  sub_1C97A2CEC(v198);
  sub_1C9813994();
  sub_1C9813064(v199, v200);
  v201 = sub_1C9A91F28();

LABEL_31:
  memset(v318, 0, 32);
  v302 = sub_1C97A2CEC(&qword_1EC3C8510);
  swift_allocObject();

  v306 = sub_1C9A91E78();
  LOBYTE(v318[0]) = 0;
  sub_1C97A2CEC(&qword_1EC3C8518);
  swift_allocObject();
  v305 = sub_1C9A91E78();
  type metadata accessor for SafeLock();
  sub_1C97F07FC();
  v202 = swift_allocObject();
  v203 = swift_slowAlloc();
  *v203 = 0;
  *(v202 + 16) = v203;
  v318[0] = v68;
  v317 = v201;
  v204 = sub_1C98138D4();
  sub_1C97A2CEC(v204);
  v303 = v68;
  sub_1C9813064(&qword_1EC3C8508, &qword_1EC3C8500);
  v205 = sub_1C9A91F28();
  v304 = v201;

  v317 = v205;
  v206 = sub_1C9813668();
  sub_1C97A2CEC(v206);
  sub_1C9813064(&qword_1EC3C8528, &qword_1EC3C8520);
  v207 = v268;
  sub_1C9A91F78();

  sub_1C97AA878();
  v208 = swift_allocObject();
  v209 = v305;
  *(v208 + 16) = v202;
  *(v208 + 24) = v209;
  v210 = v202;

  sub_1C97A2CEC(&qword_1EC3C8530);
  sub_1C9813064(&qword_1EC3C8538, &qword_1EC3C8420);
  v211 = v270;
  v212 = v271;
  sub_1C9A92048();

  (*(v269 + 8))(v207, v211);
  v318[0] = 0;
  v318[1] = 0xE000000000000000;
  sub_1C9A935B8();

  v318[0] = 0xD000000000000012;
  v318[1] = 0x80000001C9AD59F0;
  sub_1C981353C();
  v215 = sub_1C9812FF8(v213, v214);
  v216 = v307;
  v217 = v315;
  v299 = v215;
  v218 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v218);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  sub_1C993B498();

  (*(v272 + 8))(v212, v273);
  sub_1C9813064(&qword_1EC3C8540, &qword_1EC3C8428);
  v219 = v306;
  swift_retain_n();
  v301 = sub_1C9A91FB8();

  v220 = sub_1C98135E0();
  v221(v220);
  v318[0] = v219;
  sub_1C9813064(&qword_1EC3C8548, &qword_1EC3C8510);
  sub_1C9A91F38();
  sub_1C9813064(&qword_1EC3C8550, &qword_1EC3C8418);
  v302 = sub_1C9813A90();
  v222 = sub_1C98135E0();
  v223(v222);
  sub_1C97AA878();
  v224 = swift_allocObject();
  v225 = v210;
  *(v224 + 16) = v210;
  *(v224 + 24) = v209;
  v300 = v224;
  v226 = v267;
  v227 = v216;
  v228 = v217;
  v308(v267, v216, v217);
  v229 = v314;
  swift_retain_n();
  v309 = v225;

  v230 = sub_1C9A91B38();
  v231 = sub_1C9A92FC8();
  if (os_log_type_enabled(v230, v231))
  {
    v232 = swift_slowAlloc();
    v308 = swift_slowAlloc();
    v318[0] = v308;
    *v232 = 136446210;
    v233 = sub_1C9A93A98();
    v235 = v234;
    v236 = v226;
    v237 = *(v311 + 8);
    v237(v236, v228);
    v238 = sub_1C9849140(v233, v235, v318);

    *(v232 + 4) = v238;
    _os_log_impl(&dword_1C9788000, v230, v231, "Successfully run movie remix %{public}s", v232, 0xCu);
    sub_1C97A592C(v308);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v229 = v314;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();

    sub_1C97DA1E0(v320, &qword_1EC3CE010);

    v237(v307, v228);
  }

  else
  {

    sub_1C97DA1E0(v320, &qword_1EC3CE010);

    v239 = *(v311 + 8);
    v239(v226, v228);
    v239(v227, v228);
  }

  v240 = v280;
  v241 = v302;
  *v280 = v301;
  v240[1] = v241;
  v240[2] = sub_1C981304C;
  v240[3] = v229;
  v240[4] = sub_1C9813054;
  v240[5] = v229;
  v242 = v300;
  v240[6] = sub_1C981305C;
  v240[7] = v242;
LABEL_18:
  sub_1C98139E0();
}

uint64_t sub_1C980EF94@<X0>(uint64_t (*a1)(uint64_t)@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v35[3] = *MEMORY[0x1E69E9840];

  v10 = a1(v9);
  v32 = a4;
  if (v4)
  {

    sub_1C97A2CEC(&qword_1EC3C83F8);
    swift_allocObject();
    v11 = sub_1C99C9F44();
  }

  else
  {
    v11 = v10;
  }

  v12 = &off_1E8348000;
  while (1)
  {

    v13 = objc_autoreleasePoolPush();
    v14 = *(v11 + 16);
    if (!v14)
    {
      sub_1C97A2CEC(&unk_1EC3D2870);
      sub_1C9813064(&qword_1EC3C8400, &unk_1EC3D2870);
LABEL_19:
      v21 = swift_allocError();
      swift_willThrow();
      goto LABEL_21;
    }

    v15 = [*(v11 + 16) v12[97]];
    if (v15 >= [v14 length])
    {
      goto LABEL_13;
    }

    v16 = v12;
    v17 = [v14 processingFormat];
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_28:
      __break(1u);
    }

    if (HIDWORD(a2))
    {
      goto LABEL_28;
    }

    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v17 frameCapacity:a2];

    if (!v19)
    {
      sub_1C9812B64();
      goto LABEL_19;
    }

    v35[0] = 0;
    if (([v14 readIntoBuffer:v19 error:v35] & 1) == 0)
    {
      break;
    }

    v20 = v35[0];
    v12 = v16;
    if ([v19 frameLength])
    {
      goto LABEL_14;
    }

LABEL_13:
    v19 = 0;
LABEL_14:
    objc_autoreleasePoolPop(v13);

    if (!v19)
    {
      goto LABEL_22;
    }

    (*(a3 + 16))(v19);
  }

  v22 = v35[0];
  v21 = sub_1C9A913C8();

  swift_willThrow();
LABEL_21:
  objc_autoreleasePoolPop(v13);

LABEL_22:
  sub_1C99C9F50();

  v23 = swift_allocObject();
  *(v23 + 32) = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 48) = -1;
  v24 = *(a3 + 32);
  v34 = *(a3 + 8);
  v35[0] = v34;
  swift_retain_n();
  sub_1C9812F64(&v34, &v33, &qword_1EC3C83F0);
  sub_1C97A2CEC(&qword_1EC3C83F0);
  sub_1C9813064(&qword_1EC3C8408, &qword_1EC3C83F0);
  sub_1C9A91FB8();

  sub_1C97DA1E0(&v34, &qword_1EC3C83F0);
  v24(0);
  sub_1C9A91DD8();
  swift_beginAccess();
  v25 = *(v23 + 48);
  if (v25 == 255)
  {
    sub_1C9812B10();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
  }

  else
  {
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
    v29 = *(v23 + 32);
    v28 = *(v23 + 40);
    if (v25)
    {
      v33 = *(v23 + 16);
      sub_1C9812B00(v26, v27, v29, v28, 1);
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
    }

    else
    {

      *v32 = v26;
      v32[1] = v27;
      v32[2] = v29;
      v32[3] = v28;
    }
  }

  return result;
}

void sub_1C980F4A4(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    v7 = *(a2 + 40);
    *(a2 + 16) = v2;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v8 = *(a2 + 48);
    *(a2 + 48) = 1;
    v9 = v2;
    sub_1C9812BB8(v4, v5, v6, v7, v8);
  }
}

void sub_1C980F53C(__int128 *a1, uint64_t a2)
{
  v9 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  *(a2 + 16) = v9;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  LOBYTE(v4) = *(a2 + 48);
  *(a2 + 48) = 0;

  sub_1C9812BB8(v5, v6, v7, v8, v4);
}

id sub_1C980F5D8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C9A91748();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v11 = sub_1C9A91B58();
  sub_1C97BFF6C(v11, qword_1EC3D3108);
  (*(v7 + 16))(v9, a2, v6);
  v22 = v10;
  v12 = sub_1C9A91B38();
  v13 = sub_1C9A92FC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446466;
    sub_1C9812FF8(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
    v16 = sub_1C9A93A98();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_1C9849140(v16, v18, &v23);

    *(v14 + 4) = v19;
    *(v14 + 12) = 1026;
    LODWORD(v19) = [v22 frameLength];

    *(v14 + 14) = v19;
    _os_log_impl(&dword_1C9788000, v12, v13, "[PUB] movie remix %{public}s: received first buffer with frame count %{public}u", v14, 0x12u);
    sub_1C97A592C(v15);
    MEMORY[0x1CCA93280](v15, -1, -1);
    MEMORY[0x1CCA93280](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v20 = v22;
  *a3 = v22;

  return v20;
}

void sub_1C980F8B8()
{
  sub_1C97AEB94();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  v4 = sub_1C9A91748();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v10 = sub_1C9A91B58();
  sub_1C97BFF6C(v10, qword_1EC3D3108);
  sub_1C9813994();
  v11();
  v12 = sub_1C9A91B38();
  v13 = v3();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v14 = 136446466;
    sub_1C981353C();
    sub_1C9812FF8(v15, v16);
    sub_1C9A93A98();
    (*(v6 + 8))(v9, v4);
    v17 = sub_1C9813668();
    v20 = sub_1C9849140(v17, v18, v19);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2050;
    v21 = v25;
    *(v14 + 14) = v24;
    _os_log_impl(&dword_1C9788000, v12, v13, v21, v14, 0x16u);
    sub_1C97A592C(v23);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    (*(v6 + 8))(v9, v4);
  }

  sub_1C97AEB5C();
}

void sub_1C980FB08(void **a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1C9A095DC(*a1);
  if (!v2)
  {
    v8 = v4;
    v9 = v5;
    v10 = v6;
    if (v7)
    {
      if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
      {
        __break(1u);
        return;
      }

      v8 = sub_1C9A0A588(v5 * v6, v4, v5, v6);
    }

    *a2 = v8;
    a2[1] = v9;
    a2[2] = v10;
  }
}

uint64_t sub_1C980FB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3C8560);
  sub_1C9813064(&qword_1EC3C8568, &qword_1EC3C8560);
  v5 = sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3C8570);
  swift_allocObject();
  sub_1C98E3778(v5);
  sub_1C9813064(&qword_1EC3C8578, &qword_1EC3C8570);
  v6 = sub_1C9A91F28();

  sub_1C97A2CEC(&qword_1EC3C8580);
  v7 = swift_allocObject();
  v8 = objc_opt_self();

  *(v7 + 16) = [v8 mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&unk_1EC3CF150);
  swift_allocObject();
  v9 = sub_1C9A37FC8(v7);
  sub_1C97A2CEC(&qword_1EC3C8588);
  v10 = swift_allocObject();
  *(v10 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&unk_1EC3CF160);
  swift_allocObject();
  v11 = sub_1C9A37FC8(v10);
  sub_1C97A2CEC(&qword_1EC3C8590);
  v12 = swift_allocObject();
  *(v12 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&unk_1EC3CF170);
  swift_allocObject();
  v13 = sub_1C9A37FC8(v12);
  sub_1C97A2CEC(&qword_1EC3C8598);
  v14 = swift_allocObject();
  *(v14 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&unk_1EC3CF180);
  swift_allocObject();
  v15 = sub_1C9A37FC8(v14);
  sub_1C97A2CEC(&qword_1EC3C85A0);
  v16 = swift_allocObject();
  *(v16 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&qword_1EC3CF190);
  swift_allocObject();
  v17 = sub_1C9A37FC8(v16);

  *a3 = v6;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = v9;
  a3[4] = v11;
  a3[5] = v13;
  a3[6] = v15;
  a3[7] = v17;
  return result;
}

uint64_t sub_1C980FF78@<X0>(uint64_t *a1@<X8>)
{
  sub_1C9812B10();
  result = swift_allocError();
  *a1 = result;
  *v3 = 5;
  return result;
}

id sub_1C980FFC0(void *a1)
{
  v2 = sub_1C9A92478();
  v3 = sub_1C9A6AEE4(a1, v2);

  return v3;
}

void sub_1C9810030(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  v7 = qword_1EC3C5520;
  v8 = *a1;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_1C9A91B58();
  sub_1C97BFF6C(v9, qword_1EC3D3108);
  v10 = sub_1C9A91B38();
  v11 = sub_1C9A92FC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = v6;
    _os_log_impl(&dword_1C9788000, v10, v11, "Movie remix, generating final result. Music detected? %{public}f", v12, 0xCu);
    MEMORY[0x1CCA93280](v12, -1, -1);
  }

  v13 = *(a2 + 16);
  os_unfair_lock_lock(v13);
  sub_1C9A91E68();
  os_unfair_lock_unlock(v13);
  sub_1C980BE84(v8, v16, &v16, v6);

  if (!v3)
  {
    v14 = v17;
    v15 = v18;
    *a3 = v16;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
  }
}

uint64_t sub_1C9810220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
}

void sub_1C981026C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1C9A91DF8();
  }

  else
  {
    sub_1C9A91DF8();
  }
}

void sub_1C98102C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  os_unfair_lock_lock(v2);
  sub_1C9A91E58();
  os_unfair_lock_unlock(v2);
}

uint64_t sub_1C9810318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1C9812F64(a2, &v18, &qword_1EC3C8350);
  if (v19)
  {
    sub_1C979B054(&v18, &v20);
    sub_1C979B054(&v20, v23);
  }

  else
  {
    sub_1C97DA1E0(&v18, &qword_1EC3C8350);
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C();
    }

    v7 = qword_1EC3D3178;
    v8 = qword_1EC3D3180;
    v9 = qword_1EC3D3190;
    v28 = qword_1EC3D3188;
    v10 = qword_1EC3D3198;
    v11 = byte_1EC3D31A0;
    v21 = &unk_1F492E308;
    v22 = &off_1F4931858;
    sub_1C98137F8();
    v12 = swift_allocObject();
    *&v20 = v12;
    if (v11)
    {
      *&v18 = v7;
      v13 = v7;
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      return sub_1C97C26F0(&v20);
    }

    *(v12 + 16) = v7;
    *(v12 + 24) = v8;
    *(v12 + 32) = v28 & 1;
    *(v12 + 40) = v9;
    *(v12 + 48) = v10;
    sub_1C979B054(&v20, v23);
  }

  sub_1C97A5A8C(v23, v23[3]);
  *&v20 = v5;
  *(&v20 + 1) = v6;
  sub_1C980CC84();
  result = sub_1C97A592C(v23);
  if (!v3)
  {
    v15 = v25;
    v16 = v26;
    *a3 = v24;
    a3[1] = v15;
    v17 = v27;
    a3[2] = v16;
    a3[3] = v17;
  }

  return result;
}

uint64_t run(_:)(uint64_t a1, _OWORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9810528, 0, 0);
}

uint64_t sub_1C9810528()
{
  v8 = v0;
  *(v0 + 16) = 0u;
  *v7 = *(v0 + 64);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_1C9810318(v7, v0 + 16, v6);
  v1 = *(v0 + 56);
  sub_1C97DA1E0(v0 + 16, &qword_1EC3C8350);
  v2 = v6[1];
  *v1 = v6[0];
  v1[1] = v2;
  v3 = v6[3];
  v1[2] = v6[2];
  v1[3] = v3;
  v4 = *(v0 + 8);

  return v4();
}

id sub_1C98106E8(int a1, float a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___SNMovieRemixDSPParameter_key] = a1;
  *&v2[OBJC_IVAR___SNMovieRemixDSPParameter_value] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t (*SNMovieRemixFinalResult.algorithmVersion.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1C9810828;
}

float (*SNMovieRemixFinalResult.dialogueGain.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 4);
  return sub_1C98108E0;
}

float sub_1C98108E0(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 4) = result;
  return result;
}

float (*SNMovieRemixFinalResult.ambienceGain.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 8);
  return sub_1C97B4B98;
}

float (*SNMovieRemixFinalResult.dialogueLoudness.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 12);
  return sub_1C97B4C54;
}

float (*SNMovieRemixFinalResult.ambienceLoudness.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 16);
  return sub_1C9810AEC;
}

float sub_1C9810AEC(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 16) = result;
  return result;
}

float (*SNMovieRemixFinalResult.recordingLoudness.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 20);
  return sub_1C9810BA8;
}

float sub_1C9810BA8(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 20) = result;
  return result;
}

uint64_t SNMovieRemixFinalResult.dspParameters.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNMovieRemixFinalResult_impl + 24);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];

    sub_1C9A93698();
    v4 = type metadata accessor for SNMovieRemixDSPParameter();
    v5 = (v1 + 36);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 2;
      v8 = objc_allocWithZone(v4);
      sub_1C98106E8(v6, v7);
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      --v2;
    }

    while (v2);

    return v9;
  }

  return result;
}

id sub_1C9810D60(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___SNMovieRemixRequest_impl];
  *v6 = a2;
  *(v6 + 1) = a1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C9810E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *(v4 + OBJC_IVAR___SNMovieRemixSession_impl + 8);
  sub_1C97AA878();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_1C97AA878();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_1C9813668();
  sub_1C97A2CEC(v11);
  sub_1C9813608();
  sub_1C9813064(v12, v13);
  v14 = sub_1C9A91FB8();

  v15 = type metadata accessor for AnyCancellableWrapper();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC13SoundAnalysis21AnyCancellableWrapper_wrapped] = v14;
  v18.receiver = v16;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, sel_init);
}

void sub_1C9810F88(int *a1, void (*a2)(void))
{
  v4 = *a1;
  v5 = a1[5];
  v6 = *(a1 + 3);
  v7 = type metadata accessor for SNMovieRemixFinalResult();
  v11 = *(a1 + 1);
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___SNMovieRemixFinalResult_impl];
  *v9 = v4;
  *(v9 + 4) = v11;
  *(v9 + 5) = v5;
  *(v9 + 3) = v6;
  v12.receiver = v8;
  v12.super_class = v7;

  v10 = objc_msgSendSuper2(&v12, sel_init);
  a2();
}

uint64_t sub_1C9811124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 + OBJC_IVAR___SNMovieRemixSession_impl + 16);
  v22[0] = *(v8 + OBJC_IVAR___SNMovieRemixSession_impl);
  v22[1] = v10;
  v11 = *(v8 + OBJC_IVAR___SNMovieRemixSession_impl + 48);
  v22[2] = *(v8 + OBJC_IVAR___SNMovieRemixSession_impl + 32);
  v22[3] = v11;
  v12 = v10;
  sub_1C9813A78(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v17, v18, v19, v20, v21, v22[0]);
  v12(a1);
  return sub_1C98130E0(v22);
}

uint64_t sub_1C98111F4(uint64_t a1)
{
  sub_1C9813858(OBJC_IVAR___SNMovieRemixSession_impl);
  v3 = *(v2 + 48);
  v23 = *(v2 + 32);
  v24 = v3;
  v4 = v3;
  sub_1C9813A78(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16, v17, v18, v19, v20, v21, v22[0]);
  v4(a1);
  return sub_1C98130E0(v22);
}

uint64_t sub_1C98112A8(void *a1)
{
  if (a1)
  {
    sub_1C9813858(OBJC_IVAR___SNMovieRemixSession_impl);
    v3 = *(v2 + 48);
    v33 = *(v2 + 32);
    v34 = v3;
    v5 = v4;
    sub_1C9813A78(v5, v6, v7, v8, v9, v10, v11, v12, v24, v25, v26, v27, v28, v29, v30, v31, v32[0]);
    (v33)(a1);
  }

  else
  {
    sub_1C9813858(OBJC_IVAR___SNMovieRemixSession_impl);
    v14 = *(v13 + 48);
    v33 = *(v13 + 32);
    v34 = v14;
    sub_1C9813A78(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31, v32[0]);
    (v33)(0);
  }

  return sub_1C98130E0(v32);
}

id sub_1C9811444(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + OBJC_IVAR___SNMovieRemixRequest_impl);
  result = sub_1C9810318(&v10, a2, v11);
  if (!v2)
  {
    v4 = type metadata accessor for SNMovieRemixSession();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR___SNMovieRemixSession_impl];
    v7 = v11[1];
    *v6 = v11[0];
    *(v6 + 1) = v7;
    v8 = v11[3];
    *(v6 + 2) = v11[2];
    *(v6 + 3) = v8;
    v9.receiver = v5;
    v9.super_class = v4;
    return objc_msgSendSuper2(&v9, sel_init);
  }

  return result;
}

uint64_t sub_1C98114D0(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  memset(v5, 0, sizeof(v5));
  sub_1C981153C(a1, v5, v3);
  _Block_release(v3);
  return sub_1C97DA1E0(v5, &unk_1EC3C5E60);
}

void sub_1C981153C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  sub_1C9812F64(a2, &v9, &unk_1EC3C5E60);
  if (v10)
  {
    sub_1C97A2D34(&v9, &v11);
    sub_1C97A2CEC(&qword_1EC3C83E8);
    swift_dynamicCast();
  }

  else
  {
    sub_1C97DA1E0(&v9, &unk_1EC3C5E60);
    memset(v12, 0, sizeof(v12));
    v13 = 0;
  }

  v6 = sub_1C9811444(a1, v12);
  sub_1C97DA1E0(v12, &qword_1EC3C8350);
  v7 = sub_1C97CB094();
  v8(v7);
  _Block_release(v5);
}

id sub_1C98117B0(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1 = sub_1C9811444(a1, v3);
  sub_1C97DA1E0(v3, &qword_1EC3C8350);
  return v1;
}

uint64_t sub_1C98118A8(uint64_t a1)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_1C980C6F0(a1, v14, &v10);
  if (v1)
  {
    sub_1C97DA1E0(v14, &qword_1EC3C8350);
  }

  else
  {
    v2 = v10;
    v3 = v12;
    v4 = v13;
    v5 = type metadata accessor for SNMovieRemixFinalResult();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___SNMovieRemixFinalResult_impl];
    *v7 = v2;
    *(v7 + 4) = v11;
    *(v7 + 5) = v3;
    *(v7 + 3) = v4;
    v9.receiver = v6;
    v9.super_class = v5;
    objc_msgSendSuper2(&v9, sel_init);
    sub_1C97DA1E0(v14, &qword_1EC3C8350);
  }

  return sub_1C9813734();
}

uint64_t sub_1C9811AD8(uint64_t a1, uint64_t a2)
{
  sub_1C9812F64(a2, &v15, &unk_1EC3C5E60);
  if (v16)
  {
    sub_1C97A2D34(&v15, &v17);
    sub_1C97A2CEC(&qword_1EC3C83E8);
    swift_dynamicCast();
  }

  else
  {
    sub_1C97DA1E0(&v15, &unk_1EC3C5E60);
    memset(v21, 0, sizeof(v21));
    v22 = 0;
  }

  v3 = sub_1C9813734();
  sub_1C980C6F0(v3, v4, v5);
  if (v2)
  {
    sub_1C97DA1E0(v21, &qword_1EC3C8350);
  }

  else
  {
    v6 = v17;
    v7 = v19;
    v8 = v20;
    v9 = type metadata accessor for SNMovieRemixFinalResult();
    v13 = v18;
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___SNMovieRemixFinalResult_impl];
    *v11 = v6;
    *(v11 + 4) = v13;
    *(v11 + 5) = v7;
    *(v11 + 3) = v8;
    v14.receiver = v10;
    v14.super_class = v9;
    objc_msgSendSuper2(&v14, sel_init);
    sub_1C97DA1E0(v21, &qword_1EC3C8350);
  }

  return sub_1C9813734();
}

id SNMovieRemix.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNMovieRemix.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _s13SoundAnalysis17_SNClassificationCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C9811ED8(void *a1, uint64_t *a2, void *(*a3)(void **__return_ptr, void **))
{
  v7 = a1;
  v4 = *a2;
  if (*a2 < 1)
  {
    v6 = a1;
    result = a1;
  }

  else
  {
    result = a3(&v6, &v7);
  }

  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 - 1;
    return v6;
  }

  return result;
}

void *sub_1C9811F4C(void *a1, void *a2, uint64_t (*a3)(void **), uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v15 = a1;
  v11 = a3(&v15);
  if (v6)
  {
    return a1;
  }

  v12 = __OFADD__(*a2, v11);
  result = (*a2 + v11);
  if (!v12)
  {
    *a2 = result;
    if (result >= a5)
    {
      a6();
      *a2 = 0;
    }

    v14 = a1;
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9811FF4(void *a1)
{
  v2 = [a1 resourcePath];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C9A924A8();

  return v3;
}

uint64_t sub_1C9812064(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C8320);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C98120DC()
{
  result = qword_1EC3C8348;
  if (!qword_1EC3C8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8348);
  }

  return result;
}

unint64_t sub_1C9812158()
{
  result = qword_1EC3C8360;
  if (!qword_1EC3C8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8360);
  }

  return result;
}

unint64_t sub_1C98121B0()
{
  result = qword_1EC3C8368;
  if (!qword_1EC3C8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8368);
  }

  return result;
}

unint64_t sub_1C9812208()
{
  result = qword_1EC3C8370;
  if (!qword_1EC3C8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8370);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MovieRemix(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MovieRemix.Request(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9812358(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C9812398(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MovieRemix.FinalResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MovieRemix.FinalResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1C981265C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1C981273C()
{
  result = qword_1EC3C8398;
  if (!qword_1EC3C8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8398);
  }

  return result;
}

unint64_t sub_1C9812794()
{
  result = qword_1EC3C83A0;
  if (!qword_1EC3C83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83A0);
  }

  return result;
}

unint64_t sub_1C98127EC()
{
  result = qword_1EC3C83A8;
  if (!qword_1EC3C83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83A8);
  }

  return result;
}

unint64_t sub_1C9812844()
{
  result = qword_1EC3C83B0;
  if (!qword_1EC3C83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83B0);
  }

  return result;
}

unint64_t sub_1C981289C()
{
  result = qword_1EC3C83B8;
  if (!qword_1EC3C83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83B8);
  }

  return result;
}

unint64_t sub_1C98128F4()
{
  result = qword_1EC3C83C0;
  if (!qword_1EC3C83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83C0);
  }

  return result;
}

unint64_t sub_1C981294C()
{
  result = qword_1EC3C83C8;
  if (!qword_1EC3C83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83C8);
  }

  return result;
}

unint64_t sub_1C98129A4()
{
  result = qword_1EC3C83D0;
  if (!qword_1EC3C83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83D0);
  }

  return result;
}

unint64_t sub_1C98129FC()
{
  result = qword_1EC3C83D8;
  if (!qword_1EC3C83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83D8);
  }

  return result;
}

void sub_1C9812AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

id sub_1C9812B00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_1C9812B10()
{
  result = qword_1EC3C8410;
  if (!qword_1EC3C8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8410);
  }

  return result;
}

unint64_t sub_1C9812B64()
{
  result = qword_1EC3D2880;
  if (!qword_1EC3D2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2880);
  }

  return result;
}

void sub_1C9812BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_1C9812AE0(a1, a2, a3, a4, a5 & 1);
  }
}

id sub_1C9812BD0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_1C9A91748() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C980F5D8(a1, v6, a2);
}

void *sub_1C9812C50@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *(*a3)(void **__return_ptr, void **)@<X2>, void *a4@<X8>)
{
  result = sub_1C9811ED8(*a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1C9812D24()
{
  sub_1C9A91748();
  sub_1C97DA940();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C9812E5C()
{

  sub_1C98137F8();

  return swift_deallocObject();
}

uint64_t sub_1C9812F64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1C97A2CEC(a3);
  sub_1C97DA940();
  v4 = sub_1C97CB094();
  v5(v4);
  return a2;
}

uint64_t sub_1C9812FF8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9813064(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(a2);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9813144(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C97DA940();
  v4 = sub_1C97CB094();
  v5(v4);
  return a2;
}

uint64_t sub_1C98131A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for MovieRemix.DomainError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MovieRemix.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
        break;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9813360()
{
  result = qword_1EC3C85A8[0];
  if (!qword_1EC3C85A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C85A8);
  }

  return result;
}

uint64_t sub_1C98133B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  switch(a4 >> 28)
  {
    case 1u:
    case 6u:
    case 7u:

      goto LABEL_4;
    case 2u:

      goto LABEL_4;
    case 3u:
    case 4u:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C98134EC()
{

  return sub_1C9A92478();
}

uint64_t sub_1C9813554(unint64_t *a1, uint64_t *a2)
{

  return sub_1C9813064(a1, a2);
}

void sub_1C9813588()
{

  sub_1C97E63C0();
}

void sub_1C98135AC()
{

  sub_1C97E63C0();
}

uint64_t sub_1C9813628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  a10 = 0;

  return sub_1C9A64EA4(v10, &a10, 100, 0, 0);
}

uint64_t sub_1C9813674(unint64_t *a1, uint64_t *a2)
{

  return sub_1C9813064(a1, a2);
}

void sub_1C9813698()
{
  *(v0 + 16) = v2;
  v4 = v0 + 8 * v1;
  *(v4 + 32) = 1095525491;
  *(v4 + 36) = v3;
}

void sub_1C98136F0()
{
  *(v0 + 16) = v1;
  v4 = v0 + 8 * v2;
  *(v4 + 32) = 1145861740;
  *(v4 + 36) = v3;
}

uint64_t sub_1C981374C(uint64_t a1)
{

  return sub_1C980B758(a1, 0xE400000000000000, v1);
}

uint64_t sub_1C9813764@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

void sub_1C9813928()
{

  sub_1C97B7F60();
}

void sub_1C981394C()
{

  sub_1C97B7F1C();
}

void sub_1C9813970()
{

  sub_1C97E63C0();
}

void sub_1C9813A18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1C9813A38()
{

  return sub_1C9A92478();
}

uint64_t sub_1C9813A58()
{

  return sub_1C9812F64(v2 - 224, v0 + 592, v1);
}

uint64_t sub_1C9813A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return sub_1C98130A8(&a17, &a9);
}

uint64_t sub_1C9813A90()
{

  return sub_1C9A91F28();
}

uint64_t sub_1C9813AA8()
{

  return _swift_stdlib_reportUnimplementedInitializer();
}

uint64_t sub_1C9813B08()
{
  sub_1C981E3F0();
  sub_1C99DC144();
  v5 = &type metadata for XPCPublisher;
  v6 = &off_1F4931EA8;
  v3 = v1;
  v4 = v0;

  sub_1C97A8AA4();

  return sub_1C97A592C(&v3);
}

uint64_t sub_1C9813BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C99DC144();
  v11[3] = &type metadata for OptionalProxy;
  v11[4] = &off_1F494B248;
  sub_1C97A7DFC();
  v9 = swift_allocObject();
  v11[0] = v9;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;

  sub_1C97A8F30(a2);
  sub_1C97A8AA4();

  return sub_1C97A592C(v11);
}

uint64_t sub_1C9813CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C99DC144();
  v9[3] = a2;
  v9[4] = a3;
  v6 = swift_allocObject();
  v9[0] = v6;
  v7 = v3[1];
  v6[1] = *v3;
  v6[2] = v7;
  v6[3] = v3[2];

  sub_1C97A8AA4();

  return sub_1C97A592C(v9);
}

uint64_t sub_1C9813DD8()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C9813EFC()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C9814020()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C9814150()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C9814274()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C98143A4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C98144D4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C9814604()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C9814734()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C9814858()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C981497C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C9814AA0()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v3)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C97A7DFC();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = v5;
    v10 = sub_1C981DF74();
    sub_1C97AA074(v10);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    sub_1C97A8E8C();
    v20 = sub_1C97A7A80();
    sub_1C981E1D0(v20, v21);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1C9814BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9814BD4, 0, 0);
}

uint64_t sub_1C9814BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C981E35C();
  sub_1C981E3E4();
  type metadata accessor for XPCDataEncoder();
  inited = swift_initStackObject();
  type metadata accessor for XPCProxyEncoder();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v16 = swift_initStackObject();
  sub_1C981E300(v16);
  v17 = swift_initStackObject();
  sub_1C981E3A8(v17);

  v18 = sub_1C97AA7D8();
  sub_1C981E1A4(v18, v19, v20, v21);

  v14[36] = sub_1C98CB550();
  v14[37] = v22;
  sub_1C981E320();
  v23 = swift_setDeallocating();
  sub_1C99DCB54(v23);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C981E02C();
  v36 = v24;
  swift_task_alloc();
  sub_1C97DA928();
  v14[38] = v25;
  *v25 = v26;
  sub_1C981E148(v25);
  sub_1C981E288();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, a11, a12, a13, a14);
}

uint64_t sub_1C9814D68()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 320) = v10;
    *v10 = v11;
    v12 = sub_1C981E274(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9814EC0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 328) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9814FB8()
{
  sub_1C97AA95C();
  sub_1C981E204();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9815018()
{
  sub_1C981E418();
  sub_1C97DA934();
  sub_1C981E184();
  sub_1C981E0D8();
  sub_1C97DA91C();
  sub_1C981E404();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C981507C()
{
  sub_1C981E418();
  sub_1C97DA934();
  sub_1C981E184();
  sub_1C981E0D8();
  sub_1C97DA91C();
  sub_1C981E404();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C98150E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9815104, 0, 0);
}

uint64_t sub_1C9815104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C981E35C();
  sub_1C981E3E4();
  type metadata accessor for XPCDataEncoder();
  inited = swift_initStackObject();
  type metadata accessor for XPCProxyEncoder();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v16 = swift_initStackObject();
  sub_1C981E300(v16);
  v17 = swift_initStackObject();
  sub_1C981E3A8(v17);

  v18 = sub_1C97AA7D8();
  sub_1C981E1A4(v18, v19, v20, v21);

  v14[36] = sub_1C98CB550();
  v14[37] = v22;
  sub_1C981E320();
  v23 = swift_setDeallocating();
  sub_1C99DCB54(v23);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C981E02C();
  v36 = v24;
  swift_task_alloc();
  sub_1C97DA928();
  v14[38] = v25;
  *v25 = v26;
  sub_1C981E148(v25);
  sub_1C981E288();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, a11, a12, a13, a14);
}

uint64_t sub_1C9815298()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADCD0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 320) = v10;
    *v10 = v11;
    v12 = sub_1C981E274(v10);

    return v13(v12);
  }
}

uint64_t sub_1C98153F0()
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1C97AA890();
  v11 = v10;
  sub_1C97DA70C();
  *v12 = v11;
  v13 = *v1;
  sub_1C97AA83C();
  *v14 = v13;
  v11[41] = v0;

  if (!v0)
  {
    v11[42] = v3;
    v11[43] = v5;
    v11[44] = v7;
    v11[45] = v9;
  }

  sub_1C97AA8AC();
  sub_1C981E2C8();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C981550C()
{
  sub_1C981E418();
  sub_1C97DA934();
  sub_1C981E184();
  sub_1C981E0D8();
  sub_1C981E404();

  return v5(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C981557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[44] = a5;
  v6[45] = a6;
  v6[42] = a3;
  v6[43] = a4;
  v6[40] = a1;
  v6[41] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C98155A4, 0, 0);
}

uint64_t sub_1C98155A4()
{
  sub_1C97AA95C();
  sub_1C981E2A4();
  sub_1C981786C(v2, v3, v4, v5);
  if (v0)
  {
    sub_1C981E0A0();

    return v6();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 368) = v8;
    *v8 = v9;
    v8[1] = sub_1C98156A8;
    v10 = sub_1C981E06C();

    return v11(v10);
  }
}

uint64_t sub_1C98156A8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 376) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98157A0()
{
  sub_1C97AA95C();
  *(v0 + 288) = *(v0 + 16);
  type metadata accessor for XPCDataDecoder();
  inited = swift_initStackObject();
  *(v0 + 384) = inited;
  *(inited + 16) = *(v0 + 288);
  v2 = *(v0 + 48);
  *(v0 + 160) = *(v0 + 32);
  *(v0 + 176) = v2;
  type metadata accessor for XPCProxyDecoder();
  v3 = swift_initStackObject();
  *(v0 + 392) = v3;
  v4 = *(v0 + 176);
  *(v3 + 16) = *(v0 + 160);
  *(v3 + 32) = v4;
  type metadata accessor for XPCDecoder();
  v5 = swift_initStackObject();
  *(v0 + 400) = v5;
  *(v5 + 16) = inited;
  *(v5 + 24) = v3;
  sub_1C981CD88(v0 + 288, v0 + 304, &unk_1EC3CAD30);
  sub_1C981CD88(v0 + 160, v0 + 256, &qword_1EC3C6930);
  v6 = swift_task_alloc();
  *(v0 + 408) = v6;
  *v6 = v0;
  sub_1C97DA950(v6);

  return sub_1C988FB68();
}

uint64_t sub_1C98158D4()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 416) = v0;

  if (!v0)
  {
    *(v5 + 424) = v3;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C98159E0()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 320);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v3 + 16);
  v15 = *(v3 + 24);
  sub_1C97DA2E8(v5, v15);
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];

  sub_1C97A8F30(v6);

  v10 = swift_setDeallocating();
  sub_1C9890A5C(v10);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  *&v11 = v5;
  *(&v11 + 1) = v15;
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *v2 = v11;
  *(v2 + 16) = v12;
  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  sub_1C97DA91C();

  return v13();
}

uint64_t sub_1C9815AF0()
{
  sub_1C97AA884();
  v1 = swift_setDeallocating();
  sub_1C9890A5C(v1);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C9815B6C()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9815BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9815BF0, 0, 0);
}

uint64_t sub_1C9815BF0()
{
  sub_1C97AA95C();
  sub_1C981E384();
  sub_1C981E2A4();
  sub_1C9817E54(v2, v3, v4, v5, v6, v7);
  if (v0)
  {
    sub_1C981E0A0();

    return v8();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 152) = v10;
    *v10 = v11;
    v10[1] = sub_1C9815D08;
    v12 = sub_1C981E06C();

    return v13(v12);
  }
}

uint64_t sub_1C9815D08()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 168) = v10;
    *v10 = v11;
    v12 = sub_1C97DA800(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9815E60()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 176) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9815F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9815F7C, 0, 0);
}

uint64_t sub_1C9815F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C981E35C();
  sub_1C981E3E4();
  type metadata accessor for XPCDataEncoder();
  inited = swift_initStackObject();
  type metadata accessor for XPCProxyEncoder();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v16 = swift_initStackObject();
  sub_1C981E300(v16);
  v17 = swift_initStackObject();
  sub_1C981E3A8(v17);

  v18 = sub_1C97AA7D8();
  sub_1C981E1A4(v18, v19, v20, v21);

  v14[36] = sub_1C98CB550();
  v14[37] = v22;
  sub_1C981E320();
  v23 = swift_setDeallocating();
  sub_1C99DCB54(v23);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C981E02C();
  v36 = v24;
  swift_task_alloc();
  sub_1C97DA928();
  v14[38] = v25;
  *v25 = v26;
  sub_1C981E148(v25);
  sub_1C981E288();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, a11, a12, a13, a14);
}

uint64_t sub_1C9816110()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADF28);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 320) = v10;
    *v10 = v11;
    v12 = sub_1C981E274(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9816268()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 328) = v0;

  if (!v0)
  {
    *(v5 + 336) = v3;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9816374()
{
  sub_1C981E418();
  sub_1C97DA934();
  sub_1C981E184();
  sub_1C981E0D8();
  sub_1C981E404();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C98163E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9816408, 0, 0);
}

uint64_t sub_1C9816408()
{
  sub_1C97AA95C();
  sub_1C981E384();
  sub_1C981E2A4();
  sub_1C9817C6C(v2, v3, v4, v5);
  if (v0)
  {
    sub_1C981E0A0();

    return v6();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 152) = v8;
    *v8 = v9;
    v8[1] = sub_1C9815D08;
    v10 = sub_1C981E06C();

    return v11(v10);
  }
}

uint64_t sub_1C9816508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9816530, 0, 0);
}

uint64_t sub_1C9816530()
{
  sub_1C97AA95C();
  sub_1C981E384();
  sub_1C981E2A4();
  sub_1C9817A64(v2, v3, v4, v5);
  if (v0)
  {
    sub_1C981E0A0();

    return v6();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 152) = v8;
    *v8 = v9;
    v8[1] = sub_1C9816630;
    v10 = sub_1C981E06C();

    return v11(v10);
  }
}

uint64_t sub_1C9816630()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 168) = v10;
    *v10 = v11;
    v12 = sub_1C97DA800(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9816788()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 176) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9816880()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98168DC()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9816940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9816968, 0, 0);
}

uint64_t sub_1C9816968()
{
  sub_1C97AA95C();
  sub_1C981E384();
  sub_1C981E2A4();
  sub_1C9817E54(v2, v3, v4, v5, v6, v7);
  if (v0)
  {
    sub_1C981E0A0();

    return v8();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 152) = v10;
    *v10 = v11;
    v10[1] = sub_1C9815D08;
    v12 = sub_1C981E06C();

    return v13(v12);
  }
}

uint64_t sub_1C9816A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9816AA8, 0, 0);
}

uint64_t sub_1C9816AA8()
{
  sub_1C97AA95C();
  sub_1C981E384();
  sub_1C981E2A4();
  sub_1C9818070(v2, v3, v4, v5);
  if (v0)
  {
    sub_1C981E0A0();

    return v6();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 152) = v8;
    *v8 = v9;
    v8[1] = sub_1C9815D08;
    v10 = sub_1C981E06C();

    return v11(v10);
  }
}

uint64_t sub_1C9816BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9816BD0, 0, 0);
}

uint64_t sub_1C9816BD0()
{
  sub_1C97AA95C();
  sub_1C981E2A4();
  sub_1C9818200(v2, v3, v4, v5, v6);
  if (v0)
  {
    sub_1C981E0A0();

    return v7();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 160) = v9;
    *v9 = v10;
    v9[1] = sub_1C9816CD4;
    v11 = sub_1C981E06C();

    return v12(v11);
  }
}

uint64_t sub_1C9816CD4()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 176) = v10;
    *v10 = v11;
    v12 = sub_1C97DA800(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9816E2C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9816F24()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9816F80()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9816FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[16] = a3;
  v8[17] = a4;
  v8[14] = a1;
  v8[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9817010, 0, 0);
}

uint64_t sub_1C9817010()
{
  sub_1C97AA95C();
  sub_1C981E2A4();
  sub_1C98183F4(v2, v3, v4);
  if (v0)
  {
    sub_1C981E0A0();

    return v5();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 176) = v7;
    *v7 = v8;
    v7[1] = sub_1C9817118;
    v9 = sub_1C981E06C();

    return v10(v9);
  }
}

uint64_t sub_1C9817118()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 192) = v10;
    *v10 = v11;
    v12 = sub_1C97DA800(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9817270()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 200) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9817368()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98173C4()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9817428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9817454, 0, 0);
}

uint64_t sub_1C9817454()
{
  sub_1C97AA95C();
  sub_1C981E2A4();
  sub_1C9818588(v2, v3, v4, v5, v6, v7);
  if (v0)
  {
    sub_1C981E0A0();

    return v8();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 168) = v10;
    *v10 = v11;
    v10[1] = sub_1C981755C;
    v12 = sub_1C981E06C();

    return v13(v12);
  }
}

uint64_t sub_1C981755C()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 184) = v10;
    *v10 = v11;
    v12 = sub_1C97DA800(v10);

    return v13(v12);
  }
}

uint64_t sub_1C98176B4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 192) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98177AC()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9817808()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C981786C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for XPCDataEncoder();
  v9 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;
  type metadata accessor for XPCEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  *(inited + 24) = v10;

  sub_1C99DC144();
  v25[3] = type metadata accessor for RemoteRequest();
  v25[4] = &off_1F49353B0;
  v12 = sub_1C981CDF0(v25);
  sub_1C981CE50(a1, v12);

  sub_1C98CB0DC(v25);

  if (v4)
  {

    return sub_1C97A592C(v25);
  }

  else
  {
    sub_1C97A592C(v25);

    v14 = sub_1C97AA7D8();
    v16 = v15;
    v18 = v17;
    v26 = v19;

    v20 = sub_1C98CB550();
    v22 = v21;

    v23 = swift_setDeallocating();
    sub_1C99DCB54(v23);
    result = swift_deallocClassInstance();
    *a4 = v20;
    a4[1] = v22;
    a4[2] = v14;
    a4[3] = v16;
    v24 = v26;
    a4[4] = v18;
    a4[5] = v24;
  }

  return result;
}

uint64_t sub_1C9817A64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  type metadata accessor for XPCDataEncoder();
  sub_1C97AA878();
  v10 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1C97A7DFC();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  type metadata accessor for XPCEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  *(inited + 24) = v11;

  sub_1C99DC144();
  v13 = *a1;
  v14 = a1[1];

  sub_1C98CA9F8(v13, v14);
  if (v5)
  {
  }

  else
  {
    v31 = a4;

    v15 = a1[2];
    v16 = a1[3];
    v17 = a1[4];
    v18 = a1[5];

    sub_1C97A8BD4(v15, v16, v17, v18);

    v19 = sub_1C97AA7D8();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = sub_1C98CB550();
    v28 = v27;

    v29 = swift_setDeallocating();
    sub_1C99DCB54(v29);
    sub_1C97AA878();
    result = swift_deallocClassInstance();
    *v31 = v26;
    v31[1] = v28;
    v31[2] = v19;
    v31[3] = v21;
    v31[4] = v23;
    v31[5] = v25;
  }

  return result;
}

uint64_t sub_1C9817C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for XPCDataEncoder();
  v9 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;
  type metadata accessor for XPCEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  *(inited + 24) = v10;

  sub_1C99DC144();
  v24[3] = MEMORY[0x1E69E6810];
  v24[4] = &off_1F494A9F0;
  v24[0] = a1;

  sub_1C98CB0DC(v24);

  if (v4)
  {

    return sub_1C97A592C(v24);
  }

  else
  {
    sub_1C97A592C(v24);

    v13 = sub_1C97AA7D8();
    v15 = v14;
    v17 = v16;
    v25 = v18;

    v19 = sub_1C98CB550();
    v21 = v20;

    v22 = swift_setDeallocating();
    sub_1C99DCB54(v22);
    result = swift_deallocClassInstance();
    *a4 = v19;
    a4[1] = v21;
    a4[2] = v13;
    a4[3] = v15;
    v23 = v25;
    a4[4] = v17;
    a4[5] = v23;
  }

  return result;
}

uint64_t sub_1C9817E54@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for XPCDataEncoder();
  sub_1C97AA878();
  v11 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1C97A7DFC();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  type metadata accessor for XPCEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  *(inited + 24) = v12;

  sub_1C99DC144();
  v29[3] = a4;
  v29[4] = a5;
  v14 = swift_allocObject();
  v29[0] = v14;
  v15 = a1[1];
  v14[1] = *a1;
  v14[2] = v15;
  v14[3] = a1[2];

  sub_1C97A8AA4();

  if (v29[10])
  {

    return sub_1C97A592C(v29);
  }

  else
  {
    sub_1C97A592C(v29);

    v17 = sub_1C97AA7D8();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = sub_1C98CB550();
    v26 = v25;

    v27 = swift_setDeallocating();
    sub_1C99DCB54(v27);
    sub_1C97AA878();
    result = swift_deallocClassInstance();
    *a6 = v24;
    a6[1] = v26;
    a6[2] = v17;
    a6[3] = v19;
    a6[4] = v21;
    a6[5] = v23;
  }

  return result;
}

uint64_t sub_1C9818070@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for XPCDataEncoder();
  v9 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;
  type metadata accessor for XPCEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  *(inited + 24) = v10;

  sub_1C981C530(inited, a1);
  if (v4)
  {
  }

  v12 = sub_1C97AA7D8();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = sub_1C98CB550();
  v23 = v20;

  v21 = swift_setDeallocating();
  sub_1C99DCB54(v21);
  result = swift_deallocClassInstance();
  *a4 = v19;
  a4[1] = v23;
  a4[2] = v12;
  a4[3] = v14;
  a4[4] = v16;
  a4[5] = v18;
  return result;
}

uint64_t sub_1C9818200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for XPCDataEncoder();
  v11 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a4;
  type metadata accessor for XPCEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  *(inited + 24) = v12;

  sub_1C99DC144();
  v26[3] = MEMORY[0x1E69E6158];
  v26[4] = &off_1F494AB50;
  v26[0] = a1;
  v26[1] = a2;

  sub_1C98CB0DC(v26);

  if (v5)
  {

    return sub_1C97A592C(v26);
  }

  else
  {
    sub_1C97A592C(v26);

    v15 = sub_1C97AA7D8();
    v17 = v16;
    v19 = v18;
    v27 = v20;

    v21 = sub_1C98CB550();
    v23 = v22;

    v24 = swift_setDeallocating();
    sub_1C99DCB54(v24);
    result = swift_deallocClassInstance();
    *a5 = v21;
    a5[1] = v23;
    a5[2] = v15;
    a5[3] = v17;
    v25 = v27;
    a5[4] = v19;
    a5[5] = v25;
  }

  return result;
}

uint64_t sub_1C98183F4@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t *a3@<X8>)
{
  type metadata accessor for XPCDataEncoder();
  v7 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  type metadata accessor for XPCEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v7;
  *(inited + 24) = v8;

  sub_1C9A3070C();
  if (v3)
  {
  }

  v10 = sub_1C97AA7D8();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = sub_1C98CB550();
  v21 = v18;

  v19 = swift_setDeallocating();
  sub_1C99DCB54(v19);
  result = swift_deallocClassInstance();
  *a3 = v17;
  a3[1] = v21;
  a3[2] = v10;
  a3[3] = v12;
  a3[4] = v14;
  a3[5] = v16;
  return result;
}

uint64_t sub_1C9818588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for XPCDataEncoder();
  v13 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;
  v14[5] = a5;
  type metadata accessor for XPCEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v13;
  *(inited + 24) = v14;

  sub_1C9A30E34(inited, a1, a2, a3);
  if (v6)
  {
  }

  v16 = sub_1C97AA7D8();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = sub_1C98CB550();
  v27 = v24;

  v25 = swift_setDeallocating();
  sub_1C99DCB54(v25);
  result = swift_deallocClassInstance();
  *a6 = v23;
  a6[1] = v27;
  a6[2] = v16;
  a6[3] = v18;
  a6[4] = v20;
  a6[5] = v22;
  return result;
}

uint64_t sub_1C9818728()
{
  sub_1C97AA95C();
  sub_1C981E378(v0);
  sub_1C981DF88();
  v15 = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C981E3D8(v2);
  *v3 = v4;
  v12 = sub_1C981E114(v3, v5, v6, v7, v8, v9, v10, v11, v14, v15);

  return v12();
}

uint64_t sub_1C98187DC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98188D4()
{
  sub_1C97AA95C();
  sub_1C981E378(v0);
  sub_1C981DF88();
  v15 = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C981E3D8(v2);
  *v3 = v4;
  v12 = sub_1C981E114(v3, v5, v6, v7, v8, v9, v10, v11, v14, v15);

  return v12();
}

uint64_t sub_1C9818988()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9818AA8()
{
  sub_1C97AA884();
  v2 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 48) = v1[2];
  sub_1C981DF88();
  v14 = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v12 = sub_1C981E3C4(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_1C9818B68()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9818C60()
{
  sub_1C97AA884();
  v2 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 48) = v1[2];
  sub_1C981DF88();
  v14 = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v12 = sub_1C981E3C4(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_1C9818D20()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9818E3C(_OWORD *a1, int *a2)
{
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1C9818B68;

  return v6();
}

uint64_t sub_1C9818F38()
{
  sub_1C97AA95C();
  sub_1C981E378(v1);
  v0[3] = v2;
  v0[4] = v3;
  v16 = v4 + *v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v13 = sub_1C981E114(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);

  return v13();
}

uint64_t sub_1C9819020()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 48) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C981913C()
{
  sub_1C97AA95C();
  sub_1C981E378(v1);
  v0[3] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v17 = v5 + *v5;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v14 = sub_1C981E114(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17);

  return v14();
}

uint64_t sub_1C9819228()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9819344()
{
  sub_1C97AA95C();
  sub_1C981E378(v1);
  *(v0 + 24) = v2;
  v15 = v3 + *v3;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v12 = sub_1C981E114(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);

  return v12();
}

uint64_t sub_1C981942C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9819548()
{
  sub_1C981E3F0();
  sub_1C97A8010();
  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_1C97AA878();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1C9AA3A58;
  *(v3 + 24) = v2;
  v5[3] = sub_1C97A2CEC(&qword_1EC3C8638);
  v5[4] = sub_1C981DCE0();
  v5[0] = &unk_1C9AA3A68;
  v5[1] = v3;

  sub_1C97A8954();

  return sub_1C97A592C(v5);
}

uint64_t sub_1C9819638(_OWORD *a1, int *a2)
{
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1C981DF28;

  return v6(v2 + 16);
}

uint64_t sub_1C9819738()
{
  sub_1C97AA884();

  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C97DA950(v1);

  return sub_1C98198C0();
}

uint64_t sub_1C98197C8()
{
  sub_1C97AA95C();
  sub_1C981E1EC();
  sub_1C97AA890();
  v4 = *v3;
  sub_1C97AA83C();
  *v5 = v4;

  sub_1C981E1F8();
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_1C98198C0()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C981E3D8(v2);
  *v3 = v4;
  sub_1C97DA950(v3);

  return sub_1C987B80C();
}

uint64_t sub_1C9819948()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;
  *(v2 + 40) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9819A48()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C9819AF4;

  return sub_1C981BD90();
}

uint64_t sub_1C9819AF4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97DA70C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[7] = v0;

  if (!v0)
  {
    v7[8] = v3;
    v7[9] = v5;
  }

  sub_1C97AA8AC();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C9819C04()
{
  sub_1C97AA95C();
  sub_1C97AA878();
  v1 = swift_allocObject();
  v1[1] = vextq_s8(v0[4], v0[4], 8uLL);

  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_1C9AA3870;
  *(v2 + 24) = v1;
  sub_1C981E1F8();

  return v3(&unk_1C9AA3880);
}

uint64_t sub_1C9819CD8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9819D40()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9819D9C()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C981E3D8(v2);
  *v3 = v4;
  sub_1C97DA950(v3);

  return sub_1C9819738();
}

uint64_t sub_1C9819E28()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E1EC();
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v3;
  sub_1C97AA83C();
  *v8 = v7;

  if (!v1)
  {
    v9 = *(v5 + 16);
    *v9 = v2;
    v9[1] = v0;
  }

  sub_1C97DABB0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C9819F3C()
{
  sub_1C981E34C();
  v0 = swift_allocObject();
  sub_1C9819F8C();
  return v0;
}

uint64_t *sub_1C9819F8C()
{
  sub_1C981E34C();
  v4 = *v1;
  swift_defaultActor_initialize();
  (*(*(*(v4 + 80) - 8) + 32))(v1 + *(*v1 + 104), v3);
  v5 = (v1 + *(*v1 + 112));
  *v5 = v2;
  v5[1] = v0;
  return v1;
}

uint64_t sub_1C981A040(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1C981A088, v1, 0);
}

uint64_t sub_1C981A088()
{
  v1 = v0[3];
  v2 = (v0[4] + *(*v0[4] + 112));
  v3 = *v2;
  v4 = v2[1];
  type metadata accessor for CombineSubscriberFromXPCAdapter();
  swift_allocObject();

  v0[2] = sub_1C99B2A18(v1, v3, v4);
  sub_1C981DD64(&qword_1EC3C8648, 255, type metadata accessor for CombineSubscriberFromXPCAdapter);
  sub_1C9A91F08();

  sub_1C97DA91C();

  return v5();
}

uint64_t sub_1C981A200()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C981A298()
{
  sub_1C981A200();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1C981A2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  type metadata accessor for AsyncDispatchQueue();
  swift_allocObject();
  v4[6] = sub_1C9928384();
  return v4;
}

uint64_t sub_1C981A31C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C97AE9DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CombineSubscriberToXPCAdapterImpl();
  (*(v7 + 16))(v10, a1, a2);
  v11 = v3[4];
  v12 = v3[5];

  v13 = sub_1C99B12DC(v10, v11, v12);
  v15 = v3[2];
  v14 = v3[3];
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = &unk_1C9AA3808;
  v16[5] = v13;
  v16[6] = &unk_1C9AA3818;
  v16[7] = v13;
  v16[8] = &unk_1C9AA3828;
  v16[9] = v13;
  swift_retain_n();

  sub_1C9928254(&unk_1C9AA3838, v16);
}

uint64_t sub_1C981A4AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C97DA5D0;

  return sub_1C99B2304(a1);
}

uint64_t sub_1C981A544()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C99B2410();
}

uint64_t sub_1C981A5DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C97DA5D0;

  return sub_1C99B2868(a1);
}

uint64_t sub_1C981A674(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1C981A76C;

  return v7(a3);
}

uint64_t sub_1C981A76C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C981A880()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C981A8D8()
{

  return v0;
}

uint64_t sub_1C981A908()
{
  sub_1C981A8D8();
  sub_1C98137F8();

  return swift_deallocClassInstance();
}

void *sub_1C981A95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C9A91CB8();
  sub_1C97AE9DC();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  sub_1C98137F8();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a1;
  v16[6] = a2;

  sub_1C9A92048();

  swift_getWitnessTable();
  sub_1C981AB88();
  (*(v12 + 8))(v15, v10);
  return sub_1C981E25C();
}

double sub_1C981AAE0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, _OWORD *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C99DC400(a1, a2, AssociatedTypeWitness, a3, v12);
  if (!v4)
  {
    v11 = v12[1];
    *a4 = v12[0];
    a4[1] = v11;
    result = *&v13;
    a4[2] = v13;
  }

  return result;
}

void *sub_1C981AB88()
{
  sub_1C981E34C();
  sub_1C97AE9DC();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CombinePublisherToXPCAdapterImpl();
  (*(v3 + 16))(v6, v1, v0);

  sub_1C9819F3C();
  return sub_1C981E25C();
}

uint64_t sub_1C981AC7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C97DA5D0;

  return sub_1C981A040(a1);
}

uint64_t sub_1C981AD14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v27 = a6;
  v28 = a7;
  v24 = a3;
  v25 = a1;
  v10 = sub_1C97A2CEC(&unk_1EC3CAD50);
  MEMORY[0x1EEE9AC00](v10);
  v26 = sub_1C981C434();
  v11 = sub_1C9A93AC8();
  sub_1C97AE9DC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = type metadata accessor for CombinePublisherFromXPCAdapter();
  sub_1C98137F8();
  v18 = swift_allocObject();

  sub_1C981A2D0(v24, a4, v25, a2);
  v29 = v18;
  v20 = sub_1C981DD64(&qword_1EC3C8630, v19, type metadata accessor for CombinePublisherFromXPCAdapter);
  MEMORY[0x1CCA8FD00](v17, v20);

  sub_1C97AA878();
  v21 = swift_allocObject();
  v22 = v27;
  *(v21 + 16) = a5;
  *(v21 + 24) = v22;
  sub_1C9A92A78();

  sub_1C981E244();
  swift_getWitnessTable();
  sub_1C98AE2D4(v11, v28);
  return (*(v13 + 8))(v16, v11);
}

uint64_t sub_1C981AF54(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = a2[2];
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1C981DF28;

  return sub_1C988F6F4();
}

uint64_t sub_1C981B01C()
{
  sub_1C97AA95C();
  v0[7] = v1;
  v0[8] = v2;
  v0[6] = v3;
  sub_1C97AA4F0(&unk_1EC3CAD50);
  sub_1C981C434();
  sub_1C9A93AC8();
  sub_1C981E244();
  swift_getWitnessTable();
  v4 = type metadata accessor for AsyncSequencePublisher();
  v0[9] = v4;
  v0[10] = *(v4 - 8);
  v0[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  sub_1C97DA950(v5);

  return sub_1C988FB68();
}

uint64_t sub_1C981B15C()
{
  sub_1C97DA934();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  v5[13] = v3;
  v5[14] = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v15 = v12;
    v13 = swift_task_alloc();
    v5[15] = v13;
    *v13 = v7;
    sub_1C97DA950(v13);

    return v15();
  }
}

uint64_t sub_1C981B2D0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v0;
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C981B3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C981E35C();
  sub_1C981E3E4();
  v34 = v14[13];
  v15 = *(v34 + 24);
  if (v15[2])
  {
    v16 = v14[3];
    v17 = v14[4];
    v18 = v14[10];
    v19 = v14[11];
    v21 = v14[8];
    v20 = v14[9];
    v22 = v14[7];
    v33 = v14[6];
    v23 = v15[4];
    v24 = v15[5];

    sub_1C981AD14(v23, v24, v16, v17, v22, v21, v19);

    swift_getWitnessTable();
    sub_1C9A91F28();

    (*(v18 + 8))(v19, v20);

    sub_1C981E288();

    v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, v33, v34, a12, a13, a14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C981B4F8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C981B560()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C981B5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v6 = *(sub_1C99DC144() + 24);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);

  sub_1C97AA4F0(&unk_1EC3CA040);
  v9 = sub_1C9A91DA8();
  WitnessTable = swift_getWitnessTable();
  sub_1C981A95C(v7, v8, v9, WitnessTable, a5);
  v12 = v11;

  v14[3] = &type metadata for XPCPublisher;
  v14[4] = &off_1F4931E88;
  v14[0] = &unk_1C9AA3AB8;
  v14[1] = v12;
  sub_1C99DC184(v14);

  return sub_1C97A592C(v14);
}

uint64_t sub_1C981B700()
{
  sub_1C97AA95C();
  sub_1C981E1EC();

  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C97DA950(v1);

  return sub_1C981B01C();
}

uint64_t sub_1C981B7CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C981DF2C;

  return sub_1C981B700();
}

uint64_t sub_1C981B87C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C981B980()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E164(v1);

  return sub_1C981A4AC(v3);
}

uint64_t sub_1C981BA04()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C981E164(v1);

  return sub_1C981A544();
}

uint64_t sub_1C981BA88()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E164(v1);

  return sub_1C981A5DC(v3);
}

uint64_t sub_1C981BB0C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C981E178(v3);
  *v4 = v5;
  v4[1] = sub_1C97D9C3C;

  return sub_1C981A674(v1, v2, v0 + 32);
}

void sub_1C981BBBC()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E390();
  v7 = sub_1C981DFE8();
  *&v8 = v2;
  *(&v8 + 1) = v4;
  *(v3 + 136) = v7;
  *&v9 = v1;
  *(&v9 + 1) = v0;
  *(v7 + 16) = v9;
  *(v7 + 32) = v8;
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10);
  sub_1C981E080(&unk_1C9AA3A00);
  v11 = swift_task_alloc();
  v12 = sub_1C981E340(v11);
  *v12 = v13;
  sub_1C981E0C4(v12);
  sub_1C97DABB0();

  v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1C981BC9C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C981E0B0(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C981BDB0()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E390();
  v7 = sub_1C981DFE8();
  *&v8 = v2;
  *(&v8 + 1) = v4;
  *(v3 + 136) = v7;
  *&v9 = v1;
  *(&v9 + 1) = v0;
  *(v7 + 16) = v9;
  *(v7 + 32) = v8;
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10);
  sub_1C981E080(&unk_1C9AA3890);
  v11 = swift_task_alloc();
  v12 = sub_1C981E340(v11);
  *v12 = v13;
  sub_1C981E0C4(v12);
  sub_1C97DABB0();

  v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

void sub_1C981BEA4()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E390();
  v7 = sub_1C981DFE8();
  *&v8 = v2;
  *(&v8 + 1) = v4;
  *(v3 + 136) = v7;
  *&v9 = v1;
  *(&v9 + 1) = v0;
  *(v7 + 16) = v9;
  *(v7 + 32) = v8;
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10);
  sub_1C981E080(&unk_1C9AA3A30);
  v11 = swift_task_alloc();
  v12 = sub_1C981E340(v11);
  *v12 = v13;
  sub_1C981E0C4(v12);
  sub_1C97DABB0();

  v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

void sub_1C981BF98()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E390();
  v7 = sub_1C981DFE8();
  *&v8 = v2;
  *(&v8 + 1) = v4;
  *(v3 + 136) = v7;
  *&v9 = v1;
  *(&v9 + 1) = v0;
  *(v7 + 16) = v9;
  *(v7 + 32) = v8;
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10);
  sub_1C981E080(&unk_1C9AA39D8);
  v11 = swift_task_alloc();
  v12 = sub_1C981E340(v11);
  *v12 = v13;
  sub_1C981E0C4(v12);
  sub_1C97DABB0();

  v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1C981C078()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C981E0B0(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C981C16C()
{
  sub_1C97AA884();
  v1 = *(v0 + 96);
  result = sub_1C97AA074(*(v0 + 104));
  v3 = *(v1 + 24);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(*(v0 + 96) + 24) = v5;
    sub_1C981E1F8();

    return v6();
  }

  return result;
}

uint64_t sub_1C981C1EC()
{
  sub_1C97AA884();
  sub_1C97AA074(*(v0 + 104));
  sub_1C97DA91C();

  return v1();
}

void sub_1C981C260()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E390();
  v7 = sub_1C981DFE8();
  *&v8 = v2;
  *(&v8 + 1) = v4;
  *(v3 + 136) = v7;
  *&v9 = v1;
  *(&v9 + 1) = v0;
  *(v7 + 16) = v9;
  *(v7 + 32) = v8;
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10);
  sub_1C981E080(&unk_1C9AA39A8);
  v11 = swift_task_alloc();
  v12 = sub_1C981E340(v11);
  *v12 = v13;
  sub_1C981E0C4(v12);
  sub_1C97DABB0();

  v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

void sub_1C981C354()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E390();
  v7 = sub_1C981DFE8();
  *&v8 = v2;
  *(&v8 + 1) = v4;
  *(v3 + 136) = v7;
  *&v9 = v1;
  *(&v9 + 1) = v0;
  *(v7 + 16) = v9;
  *(v7 + 32) = v8;
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10);
  sub_1C981E080(&unk_1C9AA3978);
  v11 = swift_task_alloc();
  v12 = sub_1C981E340(v11);
  *v12 = v13;
  sub_1C981E0C4(v12);
  sub_1C97DABB0();

  v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

unint64_t sub_1C981C434()
{
  result = qword_1EC3CAD60;
  if (!qword_1EC3CAD60)
  {
    sub_1C97AA4F0(&unk_1EC3CAD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAD60);
  }

  return result;
}

uint64_t sub_1C981C498()
{
  sub_1C97AA95C();
  sub_1C981E1EC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C97AA948();

  return sub_1C981AF54(v3, v4);
}

uint64_t sub_1C981C530(uint64_t a1, void *a2)
{
  sub_1C99DC5A4();
  if (!a2)
  {
    v7 = MEMORY[0x1E69E6370];
    v8 = &off_1F494A970;
    LOBYTE(v6[0]) = 0;
    goto LABEL_5;
  }

  v7 = MEMORY[0x1E69E6370];
  v8 = &off_1F494A970;
  LOBYTE(v6[0]) = 1;
  sub_1C99DC674(v6);
  if (!v2)
  {
    sub_1C97A592C(v6);
    v7 = &type metadata for XPCError;
    v8 = &off_1F4938C30;
    v6[0] = a2;
    v4 = a2;
LABEL_5:
    sub_1C99DC674(v6);
  }

  return sub_1C97A592C(v6);
}

uint64_t sub_1C981C5FC(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = a2[2];
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1C981DF28;

  return sub_1C9A21A90();
}

uint64_t sub_1C981C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1C97DA5D0;

  return sub_1C9814BB0(a3, a4, a5, a6);
}

uint64_t sub_1C981C764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_1C981C81C;

  return sub_1C98150E0(a3, a4, a5, a6);
}

uint64_t sub_1C981C81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1C97AA890();
  v21 = v20;
  sub_1C97DA70C();
  *v22 = v21;
  v23 = *v11;
  sub_1C97AA83C();
  *v24 = v23;

  if (!v10)
  {
    v25 = *(v21 + 16);
    *v25 = v19;
    v25[1] = v17;
    v25[2] = v15;
    v25[3] = v13;
  }

  sub_1C981E2C8();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_1C981C924(_OWORD *a1, int *a2)
{
  v4 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = a1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981DF28;

  return sub_1C9818E3C((v2 + 16), a2);
}

uint64_t sub_1C981C9D8()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C981CA6C()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C981CB00(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v11;
  *(v6 + 48) = a2[2];
  v12 = swift_task_alloc();
  *(v6 + 64) = v12;
  *v12 = v6;
  v12[1] = sub_1C981DF28;

  return sub_1C9815BC8(v6 + 16, a3, a4, a5, a6);
}

uint64_t sub_1C981CBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981CC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981CCEC()
{
  sub_1C981E418();
  sub_1C97DA934();
  sub_1C981DFD4();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C97AA948();
  sub_1C981E404();

  return sub_1C981557C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C981CD88(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C97A2CEC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *sub_1C981CDF0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1C981CE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C981CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_1C981CF6C;

  return sub_1C9815F58(a3, a4, a5, a6);
}

uint64_t sub_1C981CF6C()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1C981D064(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1C97DA5D0;

  return sub_1C98163E0(v11, a3, a4, a5, a6);
}

uint64_t sub_1C981D128(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v11;
  *(v6 + 48) = a2[2];
  v12 = swift_task_alloc();
  *(v6 + 64) = v12;
  *v12 = v6;
  v12[1] = sub_1C981D1F4;

  return sub_1C9816508(v6 + 16, a3, a4, a5, a6);
}

uint64_t sub_1C981D1F4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C981D2D4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v11;
  *(v6 + 48) = a2[2];
  v12 = swift_task_alloc();
  *(v6 + 64) = v12;
  *v12 = v6;
  v12[1] = sub_1C981DF28;

  return sub_1C9816940(v6 + 16, a3, a4, a5, a6);
}

uint64_t sub_1C981D3A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1C97DA5D0;

  return sub_1C9816A80(v11, a3, a4, a5, a6);
}

uint64_t sub_1C981D464(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1C97DA5D0;

  return sub_1C9816BA8(v11, v12, a3, a4, a5, a6);
}

uint64_t sub_1C981D52C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1C97DA5D0;

  return sub_1C9816FE4(v11, v12, v13, v14, a3, a4, a5, a6);
}

uint64_t sub_1C981D608(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1C97D9C3C;

  return sub_1C9817428(v11, v12, v13, a3, a4, a5, a6);
}

uint64_t sub_1C981D6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981D770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981D800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981D890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981D9B0()
{

  return swift_deallocObject();
}

uint64_t sub_1C981D9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981DBA8()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C981DC3C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E1EC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C97AA948();
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1C981DCE0()
{
  result = qword_1EC3C8640;
  if (!qword_1EC3C8640)
  {
    sub_1C97AA4F0(&qword_1EC3C8638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8640);
  }

  return result;
}

uint64_t sub_1C981DD64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C981DDAC()
{

  sub_1C97A7DFC();

  return swift_deallocObject();
}

uint64_t sub_1C981DDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981DE9C()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E164(v1);

  return sub_1C981AC7C(v3);
}

uint64_t sub_1C981DFE8()
{
  v0[13] = v1[4];
  v0[14] = v1[5];
  v0[15] = v1[6];
  v0[16] = v1[7];

  return swift_initStackObject();
}

void sub_1C981E02C()
{
  v1[2] = v6;
  v1[3] = v0;
  v1[4] = v5;
  v1[5] = v4;
  v1[6] = v3;
  v1[7] = v2;
}

uint64_t sub_1C981E0B0(uint64_t result, uint64_t a2)
{
  v2[8] = v4;
  v2[9] = result;
  v2[10] = a2;
  v2[11] = v3;
  return result;
}

uint64_t sub_1C981E0D8()
{
  sub_1C97AA780(v0, v1);

  return sub_1C97AA074(v2);
}

uint64_t sub_1C981E184()
{

  return sub_1C97D9AA4(v0 + 64);
}

uint64_t sub_1C981E1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a1;
  v4[33] = a2;
  v4[34] = a3;
  v4[35] = a4;
}

uint64_t sub_1C981E1D0(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_1C981E204()
{
  v1 = v0[32];
  sub_1C97AA780(v0[36], v0[37]);

  return sub_1C97AA074(v1);
}

uint64_t sub_1C981E2E0()
{

  return sub_1C97AA074(v0);
}

uint64_t sub_1C981E300(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;

  return type metadata accessor for XPCEncoder();
}

uint64_t sub_1C981E320()
{
}

uint64_t sub_1C981E390()
{

  return type metadata accessor for XPCProxyDecoder();
}

uint64_t sub_1C981E3A8(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

void sub_1C981E444()
{
  sub_1C97BE460();
  v1 = sub_1C9A93008();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEAD8();
  v2 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C97AEAD8();
  sub_1C97F097C();
  v3 = sub_1C9A93018();
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  v10 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___SNFileSystem_inflightTasks] = MEMORY[0x1E69E7CC0];
  sub_1C97BD318(0, &qword_1EC3C56B0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8098], v3);
  sub_1C9A92148();
  v12 = v10;
  sub_1C981FD1C(&qword_1EC3C56C0, MEMORY[0x1E69E8030]);
  sub_1C97A2CEC(&unk_1EC3CDC60);
  sub_1C97F0490(&qword_1EC3C56E0, &unk_1EC3CDC60);
  sub_1C9A93428();
  *&v0[OBJC_IVAR___SNFileSystem_queue] = sub_1C9A93048();
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SNFileSystem();
  objc_msgSendSuper2(&v11, sel_init);
  sub_1C97BE478();
}

void *sub_1C981E6B8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = (a3 + 32);
  v5 = *(a3 + 16) + 1;
  while (--v5)
  {
    v6 = *v4;
    v4 += 4;
    if (v6 == a1)
    {
      v7 = v6;

      return v3;
    }
  }

  return 0;
}

void *sub_1C981E740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v15 = (*(a2 + 8))(a3, a4, a5, a6, a7, ObjectType, a2);
  v17 = v16;
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = v17;
  v18[4] = a4;
  v18[5] = a5;

  v19 = a1;
  return a1;
}

void sub_1C981E82C()
{
  sub_1C97BE460();
  v1 = v0;
  v39 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v42 = v9;
  v11 = v10;
  v13 = v12;
  v14 = sub_1C9A92128();
  sub_1C97AE9C8();
  v41 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AEAD8();
  v19 = v18 - v17;
  v40 = sub_1C9A92158();
  sub_1C97AE9C8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AEAD8();
  v25 = v24 - v23;
  v27 = sub_1C981E6B8(v13, v26, v1);
  if (v27)
  {
    sub_1C981FC88(v27);
    v28 = swift_allocObject();
    *(v28 + 16) = v8;
    *(v28 + 24) = v6;
    v43[4] = sub_1C981FCC8;
    v43[5] = v28;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 1107296256;
    sub_1C981FD94();
    v43[2] = v29;
    v43[3] = &unk_1F4932458;
    v30 = _Block_copy(v43);

    sub_1C9A92148();
    sub_1C981FD7C();
    sub_1C981FD1C(v31, v32);
    sub_1C97A2CEC(&unk_1EC3C8660);
    sub_1C97F0490(&qword_1EC3C7AE0, &unk_1EC3C8660);
    sub_1C9A93428();
    MEMORY[0x1CCA90CE0](0, v25, v19, v30);
    _Block_release(v30);
    (*(v41 + 8))(v19, v14);
    (*(v21 + 8))(v25, v40);
  }

  else
  {
    v33 = sub_1C981E740(v13, v11, v42, v8, v6, v4, v39);
    v35 = v34;
    v37 = v36;
    sub_1C97A2CEC(&unk_1EC3C6C40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = v33;
    *(inited + 40) = v35;
    *(inited + 48) = sub_1C981FCD0;
    *(inited + 56) = v37;
    v43[0] = v1;

    sub_1C98D02E4(inited);
  }

  sub_1C97BE478();
}

void sub_1C981EB5C(void (*a1)(void))
{
  type metadata accessor for SNError();
  v2 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD000000000000018, 0x80000001C9AD5BF0);
  a1();
}

void sub_1C981EC00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(a3 + 16);
  v6 = a3 + 24;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v6 + 32 * v4);
  while (v5 != v4)
  {
    if (v4 >= v5)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_14;
    }

    v10 = v8[1];
    v8 += 4;
    ++v4;
    if (v10 != a1)
    {
      v15 = *(v8 - 1);
      v11 = *v8;
      v12 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97B802C();
      }

      v13 = *(v7 + 16);
      if (v13 >= *(v7 + 24) >> 1)
      {
        sub_1C97B802C();
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 32 * v13;
      *(v14 + 32) = v12;
      *(v14 + 40) = v15;
      *(v14 + 56) = v11;
      v4 = v9;
      goto LABEL_2;
    }
  }
}

void sub_1C981ED30()
{
  sub_1C97BE460();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1C9A92128();
  sub_1C97AE9C8();
  v28 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  sub_1C97F097C();
  v27 = sub_1C9A92158();
  sub_1C97AE9C8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AEAD8();
  v20 = v19 - v18;
  v21 = swift_allocObject();
  v21[2] = v11;
  v21[3] = v0;
  v21[4] = v9;
  v21[5] = v7;
  v21[6] = v5;
  v21[7] = v3;
  sub_1C97F07D8(v21);
  v29[1] = 1107296256;
  sub_1C981FD94();
  v29[2] = v22;
  v29[3] = &unk_1F4932340;
  v23 = _Block_copy(v29);
  swift_unknownObjectRetain();
  v24 = v0;

  sub_1C9A92148();
  sub_1C981FD7C();
  sub_1C981FD1C(v25, v26);
  sub_1C97A2CEC(&unk_1EC3C8660);
  sub_1C97F0490(&qword_1EC3C7AE0, &unk_1EC3C8660);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v20, v1, v23);
  _Block_release(v23);
  (*(v28 + 8))(v1, v12);
  (*(v16 + 8))(v20, v27);

  sub_1C97BE478();
}

uint64_t sub_1C981EFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a3;
  v38 = a4;
  v8 = sub_1C9A92128();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C9A92158();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = &unk_1F49679A0;
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (v15 && (v16 = v15, swift_getObjectType(), sub_1C97BD318(0, &qword_1EC3C54A0), (v17 = sub_1C981FB70(v16)) != 0))
  {
    v19 = v17;
    v20 = v18;
    v21 = swift_allocObject();
    v22 = a2;
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v19;
    v23[4] = v20;
    v24 = swift_allocObject();
    *(v24 + 16) = v36;
    *(v24 + 24) = a6;
    type metadata accessor for SNFileSystem();
    v25 = OBJC_IVAR___SNFileSystem_inflightTasks;
    swift_unknownObjectRetain_n();

    sub_1C981E82C();
    v27 = v26;

    swift_unknownObjectRelease();

    *(v22 + v25) = v27;
  }

  else
  {
    type metadata accessor for SNError();
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1C9A935B8();

    aBlock = 0xD000000000000018;
    v42 = 0x80000001C9AD5BD0;
    swift_getObjectType();
    v29 = sub_1C9A93E18();
    v36 = v12;
    MEMORY[0x1CCA90230](v29);

    v30 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, aBlock, v42);

    v35[1] = *(a2 + OBJC_IVAR___SNFileSystem_queue);
    v31 = swift_allocObject();
    v32 = v38;
    v31[2] = v37;
    v31[3] = v32;
    v31[4] = v30;
    v45 = sub_1C981FBF0;
    v46 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1C98E5C5C;
    v44 = &unk_1F4932390;
    v33 = _Block_copy(&aBlock);

    v34 = v30;
    sub_1C9A92148();
    v40 = MEMORY[0x1E69E7CC0];
    sub_1C981FD1C(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60]);
    sub_1C97A2CEC(&unk_1EC3C8660);
    sub_1C97F0490(&qword_1EC3C7AE0, &unk_1EC3C8660);
    sub_1C9A93428();
    MEMORY[0x1CCA90CE0](0, v14, v11, v33);
    _Block_release(v33);

    (*(v9 + 8))(v11, v8);
    (*(v39 + 8))(v14, v36);
  }
}

uint64_t sub_1C981F4C4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    type metadata accessor for SNFileSystem();
    v6 = OBJC_IVAR___SNFileSystem_inflightTasks;
    v7 = *&v5[OBJC_IVAR___SNFileSystem_inflightTasks];

    sub_1C981EC00(a3, v8, v7);
    v10 = v9;

    *&v5[v6] = v10;
  }

  return result;
}

uint64_t sub_1C981F560(uint64_t a1, void (*a2)())
{
  sub_1C97BD360(a1, v4);
  sub_1C97A2CEC(&unk_1EC3C8670);
  swift_dynamicCast();
  a2();
  return swift_unknownObjectRelease();
}

void sub_1C981F6E0()
{
  sub_1C97BE460();
  v3 = v2;
  v4 = sub_1C9A92128();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  sub_1C97F097C();
  v20 = sub_1C9A92158();
  sub_1C97AE9C8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  v13 = v12 - v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v0;
  sub_1C97F07D8(v14);
  v21[1] = 1107296256;
  sub_1C981FD94();
  v21[2] = v15;
  v21[3] = &unk_1F49322F0;
  v16 = _Block_copy(v21);
  swift_unknownObjectRetain();
  v17 = v0;
  sub_1C9A92148();
  sub_1C981FD7C();
  sub_1C981FD1C(v18, v19);
  sub_1C97A2CEC(&unk_1EC3C8660);
  sub_1C97F0490(&qword_1EC3C7AE0, &unk_1EC3C8660);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v13, v1, v16);
  _Block_release(v16);
  (*(v6 + 8))(v1, v4);
  (*(v9 + 8))(v13, v20);

  sub_1C97BE478();
}

uint64_t sub_1C981F930(uint64_t a1, uint64_t a2)
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v4 = result;
    swift_getObjectType();
    sub_1C97BD318(0, &qword_1EC3C54A0);
    result = sub_1C981FB70(v4);
    if (result)
    {
      v5 = result;
      type metadata accessor for SNFileSystem();
      v6 = OBJC_IVAR___SNFileSystem_inflightTasks;
      v7 = *(a2 + OBJC_IVAR___SNFileSystem_inflightTasks);
      swift_unknownObjectRetain();

      sub_1C981EC00(v5, v8, v7);
      v10 = v9;

      swift_unknownObjectRelease();
      *(a2 + v6) = v10;
    }
  }

  return result;
}

id SNFileSystem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNFileSystem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C981FB58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C981FB70(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C981FC20(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

void *sub_1C981FC88(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C981FCD0(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(v1 + 16))();
  return v3(a1);
}

uint64_t sub_1C981FD1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C981FDA8()
{
  swift_beginAccess();
  nullsub_1(v0 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}

void sub_1C981FE1C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = a1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C97B7D80();
    v4 = v34;
    v6 = sub_1C9887A94(v5);
    v8 = v7;
    v10 = v9;
    v27 = v5 + 64;
    v26 = v5;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      if (((*(v27 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_23;
      }

      if (*(v5 + 36) != v8)
      {
        goto LABEL_24;
      }

      v11 = *(*(v5 + 56) + 8 * v6);
      v12 = *(*(v5 + 48) + 8 * v6);
      v35 = v11;

      if ([v12 nonretainedObjectValue])
      {
        sub_1C9A93318();
        swift_unknownObjectRelease();
        sub_1C97A2D34(v30, &v31);
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      sub_1C97A2C7C(&v31, v30);
      sub_1C97A2CEC(&unk_1EC3C5E60);
      sub_1C97A2CEC(&qword_1EC3CB9D0);
      if (!swift_dynamicCast())
      {
        sub_1C98066EC();
        swift_allocError();
        swift_willThrow();
        sub_1C97A59D0(&v31);

        return;
      }

      sub_1C97A59D0(&v31);
      type metadata accessor for SNDetectSoundRequest();
      if (!swift_dynamicCastClass())
      {
        sub_1C98066EC();
        swift_allocError();
        swift_willThrow();

        swift_unknownObjectRelease();
LABEL_20:

        return;
      }

      swift_unknownObjectRetain();
      v13 = sub_1C97E956C(v35);
      sub_1C99A7954(v13);
      if (v29)
      {

        swift_unknownObjectRelease_n();

        goto LABEL_20;
      }

      v28 = v3;
      v14 = v8;
      v15 = v4;
      v29 = 0;
      v16 = sub_1C99A7A68(v13);

      sub_1C97A2CEC(&qword_1EC3C69E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C9AA3B60;
      *(inited + 32) = 0x656449646E756F73;
      *(inited + 40) = 0xEF7265696669746ELL;
      v18 = sub_1C97F57F4();
      type metadata accessor for SNSoundIdentifier(0);
      *(inited + 48) = v18;
      *(inited + 72) = v19;
      *(inited + 80) = 0x73746C75736572;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 120) = sub_1C97A2CEC(&unk_1EC3C8690);
      *(inited + 96) = v16;
      v20 = sub_1C9A92348();
      *(&v32 + 1) = sub_1C97A2CEC(&qword_1EC3C6330);
      swift_unknownObjectRelease_n();
      *&v31 = v20;
      sub_1C97A2D34(&v31, v33);

      v4 = v15;
      v34 = v15;
      v21 = *(v15 + 16);
      if (v21 >= *(v15 + 24) >> 1)
      {
        sub_1C97B7D80();
        v4 = v34;
      }

      *(v4 + 16) = v21 + 1;
      sub_1C97A2D34(v33, (v4 + 32 * v21 + 32));
      v5 = v26;
      v22 = sub_1C9887A8C(v6, v14, v10 & 1, v26);
      v6 = v22;
      v8 = v23;
      v10 = v24;
      v3 = v28 - 1;
      if (v28 == 1)
      {
        sub_1C97FDD94(v22, v23, v24 & 1);
        v2 = a2;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_21:
    v2[3] = sub_1C97A2CEC(&unk_1EC3C8690);
    *v2 = v4;
  }
}

void sub_1C98202E4(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v14 = a1 + 40;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v5 = *(v4 - 1);
    v6 = *v4;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = v5;
    v8(&v16, ObjectType, v6);
    if (sub_1C9A93138())
    {
      v10 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97B7E68(0, *(v15 + 16) + 1, 1);
        v10 = v15;
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C97B7E68(v11 > 1, v12 + 1, 1);
        v10 = v15;
      }

      *(v10 + 16) = v12 + 1;
      v15 = v10;
      v13 = v10 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v6;
      ++v1;
      v3 = v14;
      goto LABEL_2;
    }

    ++v1;
    v4 += 2;
  }
}

double sub_1C9820450(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v2 = [a1 formatWithError_];
  if (v2)
  {
    v3 = v2;
    v4 = v8[0];
    [v3 sampleRate];
    v1 = v5;
  }

  else
  {
    v6 = v8[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v1;
}

void sub_1C9820524(void *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3[0] = 0;
  if (![a1 getTimeBoundsWithStartTime:v3 endTime:&v2])
  {
    goto LABEL_5;
  }

  if (__OFSUB__(v2, v3[0]))
  {
    __break(1u);
LABEL_5:
    type metadata accessor for SNError();
    v1 = sub_1C9820900(0x80000001C9AD4AA0, 0xD000000000000025, "-nnet-appl.plist");
    swift_willThrow();
    sub_1C9820900(0x80000001C9AD4AA0, 0xD000000000000020, "le rate is not integral: ");
    swift_willThrow();
  }
}

void sub_1C982061C(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C9820524(a1);
  if (!v2)
  {
    v5 = sub_1C9820450(a1);
    if (floor(v5) == v5)
    {
      if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v5 > -2147483650.0)
      {
        if (v5 < 2147483650.0)
        {
          v6 = sub_1C9A93168();
          v8 = v7;
          v10 = v9;
          v11 = HIDWORD(v7);
          v12 = sub_1C9A93168();
          *a2 = v6;
          *(a2 + 8) = v8;
          *(a2 + 12) = v11;
          *(a2 + 16) = v10;
          *(a2 + 24) = v12;
          *(a2 + 32) = v13;
          *(a2 + 36) = v14;
          *(a2 + 40) = v15;
          return;
        }

        goto LABEL_11;
      }

      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    type metadata accessor for SNError();
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000029, 0x80000001C9AD5C60);
    sub_1C9A92AF8();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0, 0xE000000000000000);

    swift_willThrow();
  }
}