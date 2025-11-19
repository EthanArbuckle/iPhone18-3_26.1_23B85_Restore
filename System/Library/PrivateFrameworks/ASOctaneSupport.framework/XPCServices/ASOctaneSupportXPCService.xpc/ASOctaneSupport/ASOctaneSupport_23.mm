void static HTTPResponseHead.== infix(_:_:)()
{
  sub_100037C08();
  v3 = sub_1001C1AFC(v2);
  v5 = *(v1 + 32);
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  if (v5 >= 0x3C)
  {
    if (v8 < 0x3C || v3 != v7)
    {
      goto LABEL_19;
    }

    v12 = *(v1 + 24) == *(v0 + 24) && v5 == v8;
    if (!v12 && (sub_1001F7EA8() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v8 >= 0x3C || (v9 = HTTPResponseStatus.code.getter(v3, v4, v5), v9 != HTTPResponseStatus.code.getter(v7, v10, v8)))
  {
LABEL_19:
    sub_100037B00();
    return;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_19;
  }

  sub_1001C1C44();
  sub_100037B00();

  static HTTPHeaders.== infix(_:_:)(v14, v15, v16);
}

uint64_t HTTPResponseHead.status.getter(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100037A2C();
  sub_100171734(v2, v3, v1);
  return sub_100037A2C();
}

uint64_t static HTTPResponseStatus.== infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 < 0x3C)
  {
    if (a6 <= 0x3B)
    {
      v8 = HTTPResponseStatus.code.getter(a1, a2, a3);
      return v8 == HTTPResponseStatus.code.getter(a4, v9, a6);
    }

    return 0;
  }

  if (a6 < 0x3C || a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return sub_1001F7EA8();
}

void sub_1001B8BE0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    sub_100037C08();
    v4 = v3;
    HTTPHeaders.subscript.getter();
    v7 = *(v5 + 16);
    if (v7)
    {
      v50 = v4;
      v49[1] = v5;
      v8 = (v5 + 56);
      v52 = 2;
      while (1)
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        v55 = 0x65736F6C63;
        v56 = 0xE500000000000000;
        __chkstk_darwin(v5, v6);
        v49[-2] = &v55;
        if ((v9 & 0x1000000000000000) != 0)
        {
          sub_1001C1CD8();
          v18 = 3;
        }

        else if ((v9 & 0x2000000000000000) != 0)
        {
          v53 = v10;
          v54 = v9 & 0xFFFFFFFFFFFFFFLL;
          sub_1001C1CD8();
          sub_1001C1A9C();
          sub_1001C1A24();
          v18 = sub_1001C0568(v19, v20, v21, v22, v23, v24, v25);
        }

        else
        {
          v51 = v49;
          if ((v10 & 0x1000000000000000) == 0)
          {
            sub_1001F7858();
          }

          sub_1001C1CD8();
          sub_1001C1A9C();
          sub_10012F960();
          sub_1001C1A24();
          v18 = sub_1001C0568(v11, v12, v13, v14, v15, v16, v17);
        }

        if ((v18 & 0xFE) == 2)
        {
          sub_1001C1A24();
          v32 = sub_1001B9AC8(v26, v27, v28, v29, v30, v31);

          if (v32)
          {
            goto LABEL_17;
          }
        }

        else
        {

          if (v18)
          {
LABEL_17:

            v48 = 1;
            goto LABEL_18;
          }
        }

        v55 = 0x696C612D7065656BLL;
        v56 = 0xEA00000000006576;
        __chkstk_darwin(v33, v34);
        v49[-2] = &v55;

        sub_100168534();
        sub_1001C1A24();
        v41 = sub_1001C04A0(v35, v36, v37, v38, v39, v40);

        if ((v41 & 0xFE) == 2)
        {
          sub_1001C1A24();
          v41 = sub_1001B9AC8(v42, v43, v44, v45, v46, v47);
        }

        if ((v41 & 1) == 0)
        {
          goto LABEL_19;
        }

        v48 = v52 != 2;
LABEL_18:
        v52 = v48;
LABEL_19:
        v8 += 4;
        if (!--v7)
        {

          goto LABEL_23;
        }
      }
    }

LABEL_23:
    sub_100037B00();
  }
}

Swift::Void __swiftcall HTTPHeaders.remove(name:)(Swift::String name)
{
  sub_100037B94();
  v4 = sub_1001C1A08();
  v6 = sub_100030BD4(v4, v5, v3, v1);
  if (v6)
  {
    sub_1001C1C98();
  }

  __chkstk_darwin(v6, v7);
  if (*(*v2 + 16) < sub_10003653C(v2, sub_100034364))
  {
    __break(1u);
  }

  else
  {
    sub_100036918();
  }
}

Swift::Void __swiftcall HTTPHeaders.add(contentsOf:)(ASOctaneSupportXPCService::HTTPHeaders contentsOf)
{
  keepAliveState = contentsOf.keepAliveState;

  sub_1001BA73C(v2);
  if (keepAliveState == 2)
  {
    sub_1001C1C98();
  }
}

Swift::Void __swiftcall HTTPHeaders.add(name:value:)(Swift::String name, Swift::String value)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v5 = name._object;
  v6 = name._countAndFlagsBits;
  if (sub_10002E9FC(name._countAndFlagsBits, name._object))
  {
    __break(1u);
  }

  else
  {

    sub_100031FE4();
    v7 = *(*v2 + 16);
    sub_100032200();
    v8 = *v2;
    *(v8 + 16) = v7 + 1;
    v9 = (v8 + 32 * v7);
    v9[4] = v6;
    v9[5] = v5;
    v9[6] = countAndFlagsBits;
    v9[7] = object;
    *v2 = v8;
    v10 = sub_1001C1A08();
    if (sub_100030BD4(v10, v11, v6, v5))
    {
      sub_1001C1C98();
    }
  }
}

uint64_t sub_1001B906C(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result < *(v2 + 24) || *(v2 + 32) < result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1001B9090(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v5 < a3 || v4 > a3 || v4 > result || v5 < result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v9 <= 0 && v9 > a2)
    {
      return 0;
    }
  }

  else if ((v9 & 0x8000000000000000) == 0 && v9 < a2)
  {
    return 0;
  }

  v11 = __OFADD__(result, a2);
  result += a2;
  if (v11)
  {
    goto LABEL_29;
  }

  if (result < v4 || v5 < result)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1001B9108(uint64_t result, int64_t a2, uint64_t a3)
{
  if (result < a3)
  {
    if ((result - a3) >= 0x8000000000000001)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (a3 < result)
  {
    v3 = ~a3 + result;
    if (v3 >= (result ^ 0x8000000000000000))
    {
      v4 = result ^ 0x8000000000000000;
    }

    else
    {
      v4 = ~a3 + result;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if ((result ^ 0x8000000000000000) > v3)
    {
LABEL_10:
      v5 = a3 - result;
      if (a2 <= 0)
      {
        if (v5 >= 1)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      if (v5 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_26;
  }

  v5 = 0;
  if (a2 > 0)
  {
LABEL_16:
    if (v5 < a2)
    {
      return 0;
    }

LABEL_17:
    v5 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
LABEL_23:
      result += a2;
      return result;
    }

    __break(1u);
  }

LABEL_19:
  if (v5 > a2)
  {
    return 0;
  }

LABEL_21:
  if ((a2 & 0x8000000000000000) == 0)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) < a2)
  {
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001B9208(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    result = a2();
    v5 = result;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1001B9274(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return 3;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    sub_1001C1BB0();
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v6 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = sub_1001F7858();
  }

  result = a1(v6, v7);
  if (!v4)
  {
    return v9;
  }

  return result;
}

void HTTPHeaders.subscript.getter()
{
  sub_100037C08();
  HTTPHeaders.subscript.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    goto LABEL_34;
  }

  v4 = sub_1001F6BB8() == 0x6B6F6F632D746573 && v3 == 0xEA00000000006569;
  v52 = v1;
  if (v4)
  {

LABEL_30:
    v59[0] = _swiftEmptyArrayStorage;
    sub_10003408C(0, v2, 0);
    v37 = _swiftEmptyArrayStorage;
    v38 = v1 + 40;
    do
    {

      v39 = sub_1001F6DB8();
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v59[0] = v37;
      v47 = v37[2];
      v46 = v37[3];
      v48 = v37;
      if (v47 >= v46 >> 1)
      {
        v50 = sub_10005669C(v46);
        sub_10003408C(v50, v47 + 1, 1);
        v48 = v59[0];
      }

      v48[2] = v47 + 1;
      v49 = &v48[4 * v47];
      v49[4] = v39;
      v49[5] = v41;
      v49[6] = v43;
      v49[7] = v45;
      v38 += 16;
      --v2;
      v37 = v48;
    }

    while (v2);
    goto LABEL_34;
  }

  v5 = sub_1001F7EA8();

  if (v5)
  {
    goto LABEL_30;
  }

  v8 = 0;
  v9 = 0;
  v10 = *(v1 + 16);
  v53 = v1 + 32;
  v54 = v10;
  v11 = _swiftEmptyArrayStorage;
  while (v8 != v54)
  {
    if (v8 >= *(v1 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v58 = v11;
    v12 = (v53 + 16 * v8);
    v13 = *v12;
    v14 = v12[1];
    v59[0] = 44;
    v59[1] = 0xE100000000000000;
    __chkstk_darwin(v6, v7);
    v51[2] = v59;
    sub_1001C1CD8();
    v15 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100048E80, v51, v13, v14);
    v16 = v15[2];
    if (v16)
    {
      v56 = v14;
      v57 = v9;
      v55 = v8;
      v59[0] = _swiftEmptyArrayStorage;
      sub_10003408C(0, v16, 0);
      v17 = v59[0];
      v18 = v15 + 7;
      do
      {
        v19 = *(v18 - 3);
        v20 = *(v18 - 2);

        v21 = sub_1001BCDAC(v19, v20);
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v59[0] = v17;
        v29 = v17[2];
        v28 = v17[3];
        if (v29 >= v28 >> 1)
        {
          sub_10003408C((v28 > 1), v29 + 1, 1);
          v17 = v59[0];
        }

        v17[2] = v29 + 1;
        v30 = &v17[4 * v29];
        v30[4] = v21;
        v30[5] = v23;
        v30[6] = v25;
        v30[7] = v27;
        v18 += 4;
        --v16;
      }

      while (v16);

      v1 = v52;
      v8 = v55;
      v9 = v57;
    }

    else
    {

      v17 = _swiftEmptyArrayStorage;
    }

    v31 = v17[2];
    v11 = v58;
    v32 = v58[2];
    if (__OFADD__(v32, v31))
    {
      goto LABEL_36;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v32 + v31 > v11[3] >> 1)
    {
      sub_1000326B0();
      v11 = v33;
    }

    ++v8;
    if (v17[2])
    {
      if ((v11[3] >> 1) - v11[2] < v31)
      {
        goto LABEL_37;
      }

      swift_arrayInitWithCopy();

      if (v31)
      {
        v34 = v11[2];
        v35 = __OFADD__(v34, v31);
        v36 = v34 + v31;
        if (v35)
        {
          goto LABEL_38;
        }

        v11[2] = v36;
      }
    }

    else
    {

      if (v31)
      {
        __break(1u);
        break;
      }
    }
  }

LABEL_34:

  sub_100037B00();
}

{
  sub_1001C1C64();
  sub_1001C1ADC();
  v42 = v6;
  v41 = v7 & 0xFFFFFFFFFFFFLL;
  v37 = _swiftEmptyArrayStorage;
  v38 = v5;
  v39 = v4;
  v40 = v3;
LABEL_2:
  while (v2 != v3)
  {
    if (v2 >= v3)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_52;
    }

    v8 = (v4 + 32 * v2);
    v10 = *v8;
    v9 = v8[1];
    v11 = v8[3];
    v43 = v8[2];
    ++v2;
    if ((v9 & 0x1000000000000000) != 0)
    {
      goto LABEL_38;
    }

    if ((v9 & 0x2000000000000000) != 0)
    {
      if ((v0 & 0x1000000000000000) != 0)
      {
        goto LABEL_38;
      }

      v17 = HIBYTE(v9) & 0xF;
      if ((v0 & 0x2000000000000000) != 0)
      {
        if (v17 == v5)
        {
          v23 = v5;
          while (v23)
          {
            sub_1001C1A74();
            if (v24)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_37;
        }
      }

      else
      {
        v19 = v41;
        v18 = v42;
        if ((v1 & 0x1000000000000000) == 0)
        {
          sub_10012F960();
          v18 = sub_1001F7858();
          v5 = v38;
          v4 = v39;
          v3 = v40;
        }

        if (v17 == v19)
        {
          while (v17)
          {
            v18 = sub_1001C1B70(v18);
            --v17;
            if ((v20 & 0xDF) != 0)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_37;
        }
      }

LABEL_36:
      v25 = 0;
LABEL_43:
      if (v25)
      {
        goto LABEL_44;
      }
    }

    else if ((v10 & 0x1000000000000000) != 0)
    {
      v12 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v13 = v10 & 0xFFFFFFFFFFFFLL;
      if ((v0 & 0x1000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_38:
      v26 = sub_10012F960();
      v28 = sub_1001B97FC(v26, v27, v10, v9);
      v4 = v39;
      v3 = v40;
      v5 = v38;
      if (v28)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v29 = sub_1001F7858();
      v5 = v38;
      v4 = v39;
      v3 = v40;
      v12 = v29;
      v13 = v30;
      if ((v0 & 0x1000000000000000) != 0)
      {
        goto LABEL_38;
      }

LABEL_9:
      if ((v0 & 0x2000000000000000) != 0)
      {
        if (v13 == v5)
        {
          v21 = v5;
          while (v21)
          {
            ++v12;
            sub_1001C1AB4();
            if (v22)
            {
              goto LABEL_36;
            }
          }

LABEL_37:
          v25 = 1;
          goto LABEL_43;
        }

        goto LABEL_36;
      }

      v14 = v41;
      if ((v1 & 0x1000000000000000) == 0)
      {
        sub_10012F960();
        sub_1001F7858();
        v5 = v38;
        v4 = v39;
        v3 = v40;
      }

      if (v13 == v14)
      {
        if (v13 < 0)
        {
          goto LABEL_53;
        }

        v15 = 0;
        while (v13 != v15)
        {
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          sub_1001C1AC8();
          if (!v16)
          {
            goto LABEL_2;
          }
        }

LABEL_44:
        swift_bridgeObjectRetain_n();

        v31 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000BA4B0();
          sub_100032370();
          v31 = v35;
        }

        v33 = v31[2];
        v32 = v31[3];
        if (v33 >= v32 >> 1)
        {
          sub_10005669C(v32);
          sub_100032370();
          v31 = v36;
        }

        v31[2] = v33 + 1;
        v37 = v31;
        v34 = &v31[2 * v33];
        v34[4] = v43;
        v34[5] = v11;
        v4 = v39;
        v3 = v40;
        v5 = v38;
      }
    }
  }
}

uint64_t sub_1001B9768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return 2;
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      sub_1001C1BB0();
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v6 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v7 = a3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v6 = sub_1001F7858();
      }

      v8 = &v10;
    }

    sub_10008770C(v6, v7, a1, a2, v8);
  }

  return v10;
}

unint64_t sub_1001B97FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v6;
  v47 = 4 * v6;
  v7 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v35 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v36 = a4 & 0xFFFFFFFFFFFFFFLL;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v42 = v8;
  v43 = v9;
  v41 = 4 * v9;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  sub_1001C1ADC();
  v37 = v12;
  v38 = v13;
  v14 = 15;
  v15 = 15;
  while (1)
  {
    v16 = v15 >> 14;
    v17 = v15 >> 14 == v47;
    if (v15 >> 14 == v47)
    {
      v18 = 0;
      goto LABEL_28;
    }

    result = v15;
    if ((v15 & 0xC) == v42)
    {
      v21 = sub_1001C1B90();
      result = sub_1001EE2BC(v21, v22, v23);
    }

    v20 = result >> 16;
    if (result >> 16 >= v39)
    {
      goto LABEL_50;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_1001F6D38();
      v18 = result;
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v45 = a3;
      v46 = v36;
      v18 = *(&v45 + v20);
    }

    else
    {
      result = v35;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = sub_1001F7858();
      }

      v18 = *(result + v20);
    }

    if ((v15 & 0xC) == v42)
    {
      v24 = sub_1001C1B90();
      result = sub_1001EE2BC(v24, v25, v26);
      v15 = result;
      if ((a4 & 0x1000000000000000) == 0)
      {
LABEL_23:
        v15 = (v15 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_28;
      }
    }

    else if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

    if (v39 <= v15 >> 16)
    {
      goto LABEL_52;
    }

    sub_1001C1B90();
    v15 = sub_1001F6D08();
LABEL_28:
    if (v41 == v14 >> 14)
    {
      return v17;
    }

    result = v14;
    if ((v14 & 0xC) == v11)
    {
      v29 = sub_1001C1B80();
      result = sub_1001EE2BC(v29, v30, v31);
    }

    v27 = result >> 16;
    if (result >> 16 >= v43)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1001F6D38();
      v28 = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v45 = a1;
      v46 = v38;
      v28 = *(&v45 + v27);
    }

    else
    {
      result = v37;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_1001F7858();
      }

      v28 = *(result + v27);
    }

    if ((v14 & 0xC) == v11)
    {
      v32 = sub_1001C1B80();
      result = sub_1001EE2BC(v32, v33, v34);
      v14 = result;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_40:
        v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_45;
      }
    }

    else if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_40;
    }

    if (v43 <= v14 >> 16)
    {
      goto LABEL_51;
    }

    sub_1001C1B80();
    v14 = sub_1001F6D08();
LABEL_45:
    if (v16 == v47 || ((v28 ^ v18) & 0xDF) != 0)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

unint64_t sub_1001B9AC8(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  v23 = 4 << v9;
  v27 = v10;
  v25 = 4 * v10;
  v29 = a1;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a2 & 0xFFFFFFFFFFFFFFLL;

  v13 = 15;
  while (1)
  {
    v14 = a3 ^ a4;
    if ((a3 ^ a4) >= 0x4000)
    {
      result = sub_1001F7538();
      v15 = result;
      if ((a3 & 0xC) == v23)
      {
        result = sub_1001EE2BC(a3, a5, a6);
        a3 = result;
      }

      if ((a6 & 0x1000000000000000) != 0)
      {
        if (v20 <= a3 >> 16)
        {
          goto LABEL_42;
        }

        a3 = sub_1001F6D08();
      }

      else
      {
        a3 = (a3 & 0xFFFFFFFFFFFF0000) + 65540;
      }

      if (v25 == v13 >> 14)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v25 == v13 >> 14)
      {
        v19 = 1;
        goto LABEL_38;
      }

      v15 = 0;
    }

    result = v13;
    if ((v13 & 0xC) == v12)
    {
      result = sub_1001EE2BC(v13, v29, a2);
    }

    v17 = result >> 16;
    if (result >> 16 >= v27)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1001F6D38();
      v18 = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = v29;
      v28[1] = v22;
      v18 = *(v28 + v17);
    }

    else
    {
      result = v21;
      if ((v29 & 0x1000000000000000) == 0)
      {
        result = sub_1001F7858();
      }

      v18 = *(result + v17);
    }

    if ((v13 & 0xC) == v12)
    {
      result = sub_1001EE2BC(v13, v29, a2);
      v13 = result;
      if ((a2 & 0x1000000000000000) != 0)
      {
LABEL_30:
        if (v27 <= v13 >> 16)
        {
          goto LABEL_41;
        }

        v13 = sub_1001F6D08();
        goto LABEL_32;
      }
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_30;
    }

    v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_32:
    if (v14 < 0x4000 || ((v18 ^ v15) & 0xDF) != 0)
    {
LABEL_37:
      v19 = 0;
LABEL_38:

      return v19;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

Swift::String_optional __swiftcall HTTPHeaders.first(name:)(Swift::String name)
{
  if (*(v1 + 16))
  {
    sub_1001C1C64();
    sub_1001C1ADC();
    v39 = v8;
    v37 = v5;
    v38 = v9 & 0xFFFFFFFFFFFFLL;
    v35 = v7;
    v36 = v6;
    while (1)
    {
LABEL_3:
      if (v4 == v5)
      {
        break;
      }

      v10 = (v6 + 32 * v4);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[3];
      ++v4;
      v40 = v10[2];
      if ((v12 & 0x1000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if ((v12 & 0x2000000000000000) != 0)
      {
        if ((v2 & 0x1000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v20 = HIBYTE(v12) & 0xF;
        if ((v2 & 0x2000000000000000) != 0)
        {
          if (v20 == v7)
          {
            v26 = v7;
            while (v26)
            {
              sub_1001C1A74();
              if (v27)
              {
                goto LABEL_35;
              }
            }

            goto LABEL_36;
          }
        }

        else
        {
          v22 = v38;
          v21 = v39;
          if ((v3 & 0x1000000000000000) == 0)
          {
            sub_10012F960();
            v21 = sub_1001F7858();
            v7 = v35;
            v6 = v36;
            v5 = v37;
          }

          if (v20 == v22)
          {
            while (v20)
            {
              v21 = sub_1001C1B70(v21);
              --v20;
              if ((v23 & 0xDF) != 0)
              {
                goto LABEL_35;
              }
            }

            goto LABEL_36;
          }
        }

LABEL_35:
        v28 = 0;
LABEL_42:
        if (v28)
        {
          goto LABEL_45;
        }
      }

      else if ((v11 & 0x1000000000000000) != 0)
      {
        v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v15 = v11 & 0xFFFFFFFFFFFFLL;
        if ((v2 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_37:
        v29 = sub_10012F960();
        v31 = sub_1001B97FC(v29, v30, v11, v12);
        v6 = v36;
        v5 = v37;
        v7 = v35;
        if (v31)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v32 = sub_1001F7858();
        v7 = v35;
        v6 = v36;
        v5 = v37;
        v14 = v32;
        v15 = v33;
        if ((v2 & 0x1000000000000000) != 0)
        {
          goto LABEL_37;
        }

LABEL_8:
        if ((v2 & 0x2000000000000000) != 0)
        {
          if (v15 == v7)
          {
            v24 = v7;
            while (v24)
            {
              ++v14;
              sub_1001C1AB4();
              if (v25)
              {
                goto LABEL_35;
              }
            }

LABEL_36:
            v28 = 1;
            goto LABEL_42;
          }

          goto LABEL_35;
        }

        v17 = v38;
        v16 = v39;
        if ((v3 & 0x1000000000000000) == 0)
        {
          sub_10012F960();
          v16 = sub_1001F7858();
          v7 = v35;
          v6 = v36;
          v5 = v37;
        }

        if (v15 == v17)
        {
          if ((v15 & 0x8000000000000000) == 0)
          {
            v18 = 0;
            while (v15 != v18)
            {
              if (__OFADD__(v18, 1))
              {
                __break(1u);
                goto LABEL_48;
              }

              sub_1001C1AC8();
              if (!v19)
              {
                goto LABEL_3;
              }
            }

LABEL_45:

            v16 = v40;
            goto LABEL_46;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }
      }
    }
  }

  v16 = 0;
  v13 = 0;
LABEL_46:
  v17 = v13;
LABEL_49:
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

void sub_1001BA250(uint64_t a1)
{
  v4 = sub_1001C19C8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100073CB4(v4, 1);
  sub_1001C1B64();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001C19F4();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1001C1A8C(v3 + 40 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1001C1B58();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1001BA328(uint64_t a1)
{
  v4 = sub_1001C19C8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100073CE8(v4, 1);
  sub_1001C1B64();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001C19F4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000183C4(&qword_1002ADC68);
  sub_1001C1CB8();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1001C1B58();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1001BA3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10001A07C(*v3);
  sub_100073F34(v8, 1);
  v9 = *v3;
  v10 = *v3 & 0xFFFFFFFFFFFFFF8;
  v11 = *(v10 + 0x10);
  v12 = (*(v10 + 0x18) >> 1) - v11;
  v13 = sub_10006DA24(v21, (v10 + 8 * v11 + 32), v12, a1, a2, a3);
  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v13)
    {
      v14 = *(v10 + 16);
      v15 = __OFADD__(v14, v13);
      v16 = v14 + v13;
      if (v15)
      {
        __break(1u);
LABEL_17:
        *(a2 + 16) = a3;
        goto LABEL_6;
      }

      *(v10 + 16) = v16;
    }

    if (v13 != v12)
    {
      goto LABEL_6;
    }
  }

  a3 = *(v10 + 16);
  v18 = sub_1001C1820();
  if (v18)
  {
    while (1)
    {
      if (a3 + 1 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = v18;
        sub_1001F6F58();
        v18 = v20;
      }

      v9 = *v4;
      a2 = *v4 & 0xFFFFFFFFFFFFFF8;
      v19 = *(a2 + 0x18) >> 1;
      while (a3 < v19)
      {
        *(a2 + 32 + 8 * a3++) = v18;
        v18 = sub_1001C1820();
        if (!v18)
        {
          goto LABEL_17;
        }
      }

      *(a2 + 16) = a3;
    }
  }

LABEL_6:

  *v4 = v9;
  return result;
}

uint64_t sub_1001BA568(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1001BA670(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  result = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = a2(result, 1);
  v7 = *v2;
  if (!*(a1 + 16))
  {

    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v8 = *(v7 + 16);
  if ((*(v7 + 24) >> 1) - v8 < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1001C1A8C(v7 + 40 * v8);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_8:
    *v2 = v7;
    return result;
  }

  v9 = *(v7 + 16);
  v10 = __OFADD__(v9, v4);
  v11 = v9 + v4;
  if (!v10)
  {
    *(v7 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1001BA73C(uint64_t a1)
{
  v4 = sub_1001C19C8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100073CD0(v4, 1);
  sub_1001C1B64();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001C19F4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000183C4(&qword_1002ADD98);
  sub_1001C1CB8();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1001C1B58();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1001BA7E0(uint64_t a1)
{
  v4 = sub_1001C19C8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100073D18(v4, 1);
  sub_1001C1B64();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001C19F4();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1001C1A8C(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1001C1B58();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1001BA874(uint64_t a1)
{
  v4 = sub_1001C19C8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100073E04(v4, 1);
  sub_1001C1B64();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001C19F4();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = sub_1001C1A8C(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1001C1B58();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1001BA900()
{
  sub_100037B94();
  if ((v3 & 0x1000000000000000) != 0)
  {
    sub_100037B7C();
    v4 = sub_1001F6CF8();
  }

  else if ((v0 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v0) & 0xF;
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = *(*v1 + 16);
  result = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_100073E04(result, 1);
  v7 = *v1;
  result = sub_1001F77C8();
  if ((v8 & 1) == 0)
  {
    v9 = result;

    if (v9 >= v4)
    {
      if (v9 < 1)
      {
LABEL_11:
        *v1 = v7;
        return result;
      }

      v10 = *(v7 + 16);
      v11 = __OFADD__(v10, v9);
      v12 = v10 + v9;
      if (!v11)
      {
        *(v7 + 16) = v12;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001BA9D4(uint64_t a1)
{
  v4 = sub_1001C19C8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100073C84(v4, 1);
  sub_1001C1B64();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001C19F4();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1001C1A8C(v3 + 8 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1001C1B58();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t HTTPRequestHead.method.getter()
{
  v0 = sub_100037A2C();
  sub_10005E2E0(v0, v1);
  return sub_100037A2C();
}

ASOctaneSupportXPCService::HTTPVersion __swiftcall HTTPVersion.init(major:minor:)(Swift::Int major, Swift::Int minor)
{
  if (major >= 0x10000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((minor | major) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (minor >= 0x10000)
  {
LABEL_7:
    __break(1u);
    return major;
  }

  LODWORD(major) = minor | (major << 16);
  return major;
}

Swift::Bool __swiftcall HTTPHeaders.contains(name:)(Swift::String name)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v5 = 0;
  sub_1001C1ADC();
  v35 = v8;
  v33 = v6;
  v34 = v9 & 0xFFFFFFFFFFFFLL;
  v32 = v7;
  while (1)
  {
    v10 = (v6 + 32 * v5);
    v11 = *v10;
    v12 = v10[1];
    if ((v12 & 0x1000000000000000) != 0)
    {
LABEL_36:
      v28 = sub_10012F960();
      if (sub_1001B97FC(v28, v29, v11, v12))
      {
        return 1;
      }

      v7 = v32;
      v6 = v33;
      goto LABEL_42;
    }

    if ((v12 & 0x2000000000000000) == 0)
    {
      break;
    }

    if ((object & 0x1000000000000000) != 0)
    {
      goto LABEL_36;
    }

    v19 = HIBYTE(v12) & 0xF;
    if ((object & 0x2000000000000000) != 0)
    {
      if (v19 != v7)
      {
        goto LABEL_34;
      }

      v25 = v7;
      while (v25)
      {
        sub_1001C1A74();
        if (v26)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v21 = v34;
      v20 = v35;
      if ((countAndFlagsBits & 0x1000000000000000) == 0)
      {
        sub_10012F960();
        v20 = sub_1001F7858();
        v7 = v32;
        v6 = v33;
      }

      if (v19 != v21)
      {
LABEL_34:
        v27 = 0;
        goto LABEL_41;
      }

      while (v19)
      {
        v20 = sub_1001C1B70(v20);
        --v19;
        if ((v22 & 0xDF) != 0)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_35:
    v27 = 1;
LABEL_41:
    if (v27)
    {
      return 1;
    }

LABEL_42:
    if (++v5 == v2)
    {
      return 0;
    }
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v14 = v11 & 0xFFFFFFFFFFFFLL;
    if ((object & 0x1000000000000000) != 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v30 = sub_1001F7858();
    v7 = v32;
    v6 = v33;
    v13 = v30;
    v14 = v31;
    if ((object & 0x1000000000000000) != 0)
    {
      goto LABEL_36;
    }
  }

  if ((object & 0x2000000000000000) != 0)
  {
    if (v14 != v7)
    {
      goto LABEL_34;
    }

    v23 = v7;
    while (v23)
    {
      ++v13;
      sub_1001C1AB4();
      if (v24)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_35;
  }

  v16 = v34;
  result = v35;
  if ((countAndFlagsBits & 0x1000000000000000) == 0)
  {
    sub_10012F960();
    result = sub_1001F7858();
    v7 = v32;
    v6 = v33;
  }

  if (v14 != v16)
  {
    goto LABEL_42;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    while (v14 != v17)
    {
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      sub_1001C1AC8();
      if (!v18)
      {
        goto LABEL_42;
      }
    }

    return 1;
  }

LABEL_46:
  __break(1u);
  return result;
}

unint64_t HTTPResponseStatus.mayHaveResponseBody.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0x3C)
  {
    LOBYTE(v3) = (HTTPResponseStatus.code.getter(a1, a2, a3) - 200) < 0xFFFFFFFFFFFFFF9CLL;
  }

  else
  {
    v3 = 0xFFFFFFFFFFFFF78uLL >> a3;
  }

  return v3 & 1;
}

uint64_t HTTPResponseStatus.code.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 <= 0x3B)
  {
    return qword_100218C70[a3];
  }

  return result;
}

uint64_t HTTPResponseStatus.reasonPhrase.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3)
  {
    case 1uLL:
    case 0xEuLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x1AuLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x24uLL:
    case 0x26uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2BuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x34uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x3BuLL:
      sub_1001C19E0();
      break;
    case 6uLL:
    case 0x1CuLL:
    case 0x25uLL:
    case 0x2DuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x36uLL:
      goto LABEL_4;
    case 0xBuLL:
    case 0xDuLL:
    case 0x17uLL:
    case 0x2CuLL:
      sub_1001C1C58();
LABEL_4:
      sub_1000C9454();
      break;
    case 0x11uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x32uLL:
    case 0x3AuLL:
      sub_1001C1BC8();
      break;
    default:
      break;
  }

  sub_100171734(a1, a2, a3);
  return sub_10012F960();
}

uint64_t sub_1001BB78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t sub_1001BB7A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v5;
  sub_10005E2E0(v1, v2);

  return v6;
}

uint64_t sub_1001BB83C()
{
  sub_10005E2F4(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_1001BB864()
{
  sub_1001BB83C();

  return swift_deallocClassInstance();
}

uint64_t HTTPRequestHead.headers.setter(uint64_t a1, char a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t HTTPRequestHead.method.setter()
{
  sub_100037B94();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001BB7A8();
    sub_1001C1CF0();
    sub_1001C1C8C();
  }

  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v0;

  return sub_10005E2F4(v5, v6);
}

uint64_t HTTPRequestHead.method.modify(uint64_t *a1)
{
  a1[2] = v1;
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  sub_10005E2E0(v3, v4);
  return sub_100168534();
}

uint64_t sub_1001BB9B0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = sub_100037B7C();
    sub_10005E2E0(v5, v6);
    sub_100037B7C();
    HTTPRequestHead.method.setter();
    v7 = sub_100037B7C();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001BB7A8();
      sub_1001C1CF0();
      sub_1001C1C8C();
    }

    v7 = *(v10 + 16);
    v8 = *(v10 + 24);
    *(v10 + 16) = v3;
    *(v10 + 24) = v2;
  }

  return sub_10005E2F4(v7, v8);
}

uint64_t HTTPRequestHead.uri.setter()
{
  sub_100037B94();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001BB7A8();
    sub_1001C1CF0();
    sub_1001C1C8C();
  }

  *(v4 + 32) = v2;
  *(v4 + 40) = v0;
}

uint64_t HTTPRequestHead.uri.modify(void *a1)
{
  a1[2] = v1;
  v3 = *(*v1 + 40);
  *a1 = *(*v1 + 32);
  a1[1] = v3;

  return sub_10012F960();
}

uint64_t sub_1001BBAF0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    sub_100037B7C();
    HTTPRequestHead.uri.setter();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001BB7A8();
      sub_1001C1CF0();
      sub_1001C1C8C();
    }

    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
  }
}

uint64_t HTTPRequestHead.version.setter(int a1)
{
  v2 = v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((result & 1) == 0)
  {
    v6 = sub_1001BB7A8();

    *v2 = v6;
    v5 = v6;
  }

  *(v5 + 48) = a1;
  return result;
}

uint64_t (*HTTPRequestHead.version.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(*v1 + 48);
  return sub_1001BBC04;
}

uint64_t sub_1001BBC04(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 10);
  v3 = *(a1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((result & 1) == 0)
  {
    v6 = sub_1001BB7A8();

    *v1 = v6;
    v5 = v6;
  }

  *(v5 + 48) = v3;
  *(v5 + 50) = v2;
  return result;
}

uint64_t HTTPRequestHead.init(version:method:uri:headers:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for HTTPRequestHead._Storage();
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = a1;
  return result;
}

uint64_t HTTPRequestHead.init(version:method:uri:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for HTTPRequestHead._Storage();
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = a1;
  return result;
}

uint64_t static HTTPHeaders.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) != *(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1001BC980(a1);
  v4 = v3[2];
  if (v4)
  {
    sub_1000375CC(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v3 + 5;
    do
    {
      v7 = sub_1001F6BB8();
      v9 = v8;
      v40 = v5;
      v11 = v5[2];
      v10 = v5[3];
      if (v11 >= v10 >> 1)
      {
        v13 = sub_10005669C(v10);
        sub_1000375CC(v13, v11 + 1, 1);
        v5 = v40;
      }

      v5[2] = v11 + 1;
      v12 = &v5[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v14 = sub_1001B8580(v5);
  v15 = sub_1001BC980(a3);
  v16 = v15[2];
  if (v16)
  {
    sub_1000375CC(0, v16, 0);
    v17 = _swiftEmptyArrayStorage;
    v18 = v15 + 5;
    do
    {
      v19 = sub_1001F6BB8();
      v21 = v20;
      v40 = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        v25 = sub_10005669C(v22);
        sub_1000375CC(v25, v23 + 1, 1);
        v17 = v40;
      }

      v17[2] = v23 + 1;
      v24 = &v17[2 * v23];
      v24[4] = v19;
      v24[5] = v21;
      v18 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v26 = sub_1001B8580(v17);
  v27 = sub_1001BD584(v14, v26);

  if ((v27 & 1) == 0)
  {

    return 0;
  }

  v28 = 0;
  v29 = 1 << *(v14 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v14 + 56);
  v32 = (v29 + 63) >> 6;
  while (v31)
  {
LABEL_25:

    HTTPHeaders.subscript.getter();
    v40 = v34;

    sub_1001BFA6C(&v40);

    v35 = v40;
    HTTPHeaders.subscript.getter();
    v37 = v36;

    v40 = v37;

    sub_1001BFA6C(&v40);
    v31 &= v31 - 1;

    LOBYTE(v37) = sub_1001BDBB8(v35, v40);

    if ((v37 & 1) == 0)
    {

      return 0;
    }
  }

  while (1)
  {
    v33 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v33 >= v32)
    {

      return 1;
    }

    v31 = *(v14 + 56 + 8 * v33);
    ++v28;
    if (v31)
    {
      v28 = v33;
      goto LABEL_25;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void static HTTPPart.__derived_enum_equals(_:_:)()
{
  sub_100037C08();
  v1 = v0;
  v64 = v2;
  v65 = v3;
  sub_10002DFFC();
  v58 = v4;
  __chkstk_darwin(v5, v6);
  sub_100023510();
  v56 = (v8 - v7);
  sub_10002DFFC();
  v61 = v9;
  __chkstk_darwin(v10, v11);
  sub_100023510();
  v59 = v12;
  v60 = (v14 - v13);
  v66 = v15;
  v67 = v12;
  v55[1] = v16;
  v68 = v16;
  v69 = v17;
  v57 = v17;
  v18 = type metadata accessor for HTTPPart();
  sub_10002DFFC();
  v20 = v19;
  __chkstk_darwin(v21, v22);
  v24 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v28 = v55 - v27;
  __chkstk_darwin(v29, v30);
  v32 = v55 - v31;
  swift_getTupleTypeMetadata2();
  sub_10002DFFC();
  v63 = v33;
  v36 = __chkstk_darwin(v34, v35);
  v39 = (v55 + *(v38 + 48) - v37);
  v62 = v20;
  v40 = *(v20 + 16);
  v40(v55 - v37, v64, v18, v36);
  (v40)(v39, v65, v18);
  sub_100037B7C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_100103E6C();
      (v40)();
      v48 = *v24;
      v49 = v24[8];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v50 = *v39;
        if (v48)
        {
          if (v50)
          {

            static HTTPHeaders.== infix(_:_:)(v51, v49, v50);
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            goto LABEL_16;
          }
        }

        else if (!v50)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_16;
    }

    sub_100103E6C();
    (v40)();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = v58;
      v42 = v59;
      v44 = v56;
      (*(v58 + 32))(v56, v39, v59);
      sub_1001F6B28();
      v45 = *(v43 + 8);
      v45(v44, v42);
      v45(v28, v42);
    }

    else
    {
      (*(v58 + 8))(v28, v59);
    }
  }

  else
  {
    v46 = v60;
    v47 = v61;
    sub_100103E6C();
    (v40)();
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v47 + 8))(v32, v1);
    }

    else
    {
      (*(v47 + 32))(v46, v39, v1);
      sub_1001F6B28();
      v52 = *(v47 + 8);
      v52(v46, v1);
      v52(v32, v1);
    }
  }

LABEL_16:
  v53 = sub_100037B7C();
  v54(v53);
  sub_100037B00();
}

uint64_t sub_1001BC5A0()
{
  sub_100171748(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t HTTPResponseHead.status.setter()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v0;
  v9 = *(*v0 + 16);
  v10 = *(*v0 + 24);
  v11 = *(*v0 + 32);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v8 + 40);
    type metadata accessor for HTTPResponseHead._Storage();
    v13 = sub_100021728();
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    v14 = sub_1001C1AEC();
    sub_100171734(v14, v15, v16);

    *v0 = v13;
    v8 = v13;
  }

  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  *(v8 + 32) = v2;
  sub_1001C1AEC();
  sub_100037B00();

  return sub_100171748(v17, v18, v19);
}

uint64_t HTTPResponseHead.status.modify(uint64_t *a1)
{
  a1[3] = v1;
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 32);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  sub_100171734(v3, v4, v5);
  return sub_100168534();
}

uint64_t sub_1001BC6D4()
{
  sub_100037C08();
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (v5)
  {
    sub_100103E6C();
    sub_100171734(v6, v7, v8);
    sub_100103E6C();
    HTTPResponseHead.status.setter();
    sub_100103E6C();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v4;
    v11 = *(*v4 + 16);
    v12 = *(*v4 + 24);
    v13 = *(*v4 + 32);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v10 + 40);
      type metadata accessor for HTTPResponseHead._Storage();
      v15 = sub_100021728();
      *(v15 + 16) = v11;
      *(v15 + 24) = v12;
      *(v15 + 32) = v13;
      *(v15 + 40) = v14;
      v16 = sub_1001C1AEC();
      sub_100171734(v16, v17, v18);

      *v4 = v15;
      v10 = v15;
    }

    *(v10 + 16) = v2;
    *(v10 + 24) = v1;
    *(v10 + 32) = v3;
    sub_1001C1AEC();
  }

  sub_100037B00();

  return sub_100171748(v19, v20, v21);
}

uint64_t HTTPResponseHead.version.setter(int a1)
{
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((result & 1) == 0)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    type metadata accessor for HTTPResponseHead._Storage();
    v9 = sub_100021728();
    *(v9 + 16) = v5;
    *(v9 + 24) = v6;
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
    sub_100171734(v5, v6, v7);

    *v1 = v9;
    v4 = v9;
  }

  *(v4 + 40) = a1;
  return result;
}

void (*HTTPResponseHead.version.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(*v1 + 40);
  return sub_1001BC860;
}

void sub_1001BC860()
{
  sub_100037C08();
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
    type metadata accessor for HTTPResponseHead._Storage();
    v10 = sub_100021728();
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    sub_100171734(v6, v7, v8);

    *v1 = v10;
    v5 = v10;
  }

  *(v5 + 40) = v3;
  *(v5 + 42) = v2;
  sub_100037B00();
}

uint64_t HTTPHeaders.description.getter()
{
  sub_1000183C4(&qword_1002ADD98);

  return sub_1001F6F48();
}

void *sub_1001BC980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000375CC(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v6 >= v7 >> 1)
      {
        sub_1000375CC(v7 > 1, v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v6];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void HTTPHeaders.add<A>(contentsOf:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_10002DFFC();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  sub_100023510();
  v12 = v11 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  v36 = v14;
  __chkstk_darwin(v15, v16);
  v18 = &v35 - v17;
  v19 = *(*v0 + 16);
  v20 = sub_1001F6DD8();
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (!v21)
  {
    sub_1001B9208(v22, sub_1000375BC);
    (*(v7 + 16))(v12, v5, v3);
    sub_1001F6DC8();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1001F7578();
      v23 = v39;
      if (!v39)
      {
        (*(v36 + 8))(v18, AssociatedTypeWitness);
        sub_100037B00();
        return;
      }

      v24 = v18;
      v25 = AssociatedTypeWitness;
      v26 = v38;
      v27 = v40;
      v28 = v41;
      if (sub_10002E9FC(v38, v39))
      {
        break;
      }

      sub_100031FE4();
      v29 = *(*v1 + 16);
      sub_100032200();
      v30 = *v1;
      *(v30 + 16) = v29 + 1;
      v31 = (v30 + 32 * v29);
      v31[4] = v26;
      v31[5] = v23;
      v31[6] = v27;
      v31[7] = v28;
      *v1 = v30;
      v32 = sub_1001C1A08();
      v34 = sub_100030BD4(v32, v33, v26, v23);

      AssociatedTypeWitness = v25;
      v18 = v24;
      if (v34)
      {
        v1[8] = 2;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001BCCE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x1000000000000000) == 0)
  {
    if ((a6 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v10 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v11 = sub_1001F6CF8();
    goto LABEL_9;
  }

  sub_10012F960();
  v10 = sub_1001F6CF8();
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_9:
  if (v10 != v11)
  {
    return 0;
  }

  return sub_100030BD4(a1, a2, a5, a6);
}

uint64_t sub_1001BCDAC(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 ^ a1;

  if (v4 < 0x4000)
  {
    return v3;
  }

  while (1)
  {

    v5 = sub_1001F7558();
    v7 = v6;

    v8 = v5 == 32 && v7 == 0xE100000000000000;
    if (v8 || (sub_1001F7EA8() & 1) != 0 || (v5 == 9 ? (v9 = v7 == 0xE100000000000000) : (v9 = 0), v9 || (sub_1001F7EA8() & 1) != 0 || (v5 == 13 ? (v10 = v7 == 0xE100000000000000) : (v10 = 0), v10 || (sub_1001F7EA8() & 1) != 0 || (v5 == 10 ? (v11 = v7 == 0xE100000000000000) : (v11 = 0), v11 || (sub_1001F7EA8() & 1) != 0 || (v5 == 2573 ? (v12 = v7 == 0xE200000000000000) : (v12 = 0), v12)))))
    {
    }

    else
    {
      v13 = sub_1001F7EA8();

      if ((v13 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v14 = sub_1001F7518();
    if (v15)
    {
      v14 = v2;
    }

    if (v2 >> 14 < v14 >> 14)
    {
      break;
    }

    v3 = sub_1001F7568();
    v2 = v16;

    if ((v3 ^ v2) < 0x4000)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_36:
  if ((v2 ^ v3) < 0x4000)
  {
    return v3;
  }

  while (1)
  {
    sub_1001F7508();
    v18 = sub_1001F7558();
    v20 = v19;
    v21 = v18 == 32 && v19 == 0xE100000000000000;
    if (v21 || (v22 = v18, (sub_1001F7EA8() & 1) != 0) || (v22 == 9 ? (v23 = v20 == 0xE100000000000000) : (v23 = 0), v23 || (sub_1001F7EA8() & 1) != 0 || (v22 == 13 ? (v24 = v20 == 0xE100000000000000) : (v24 = 0), v24 || (sub_1001F7EA8() & 1) != 0 || (v22 == 10 ? (v25 = v20 == 0xE100000000000000) : (v25 = 0), v25 || (sub_1001F7EA8() & 1) != 0 || (v22 == 2573 ? (v26 = v20 == 0xE200000000000000) : (v26 = 0), v26)))))
    {
    }

    else
    {
      v27 = sub_1001F7EA8();

      if ((v27 & 1) == 0)
      {
        return v3;
      }
    }

    result = sub_1001F7548();
    if (__OFSUB__(result, 1))
    {
      break;
    }

    result = sub_1001F7518();
    if (v28)
    {
      v29 = v2;
    }

    else
    {
      v29 = result;
    }

    if (v29 >> 14 < v3 >> 14)
    {
      goto LABEL_72;
    }

    v3 = sub_1001F7568();
    v2 = v30;

    if (!((v3 ^ v2) >> 14))
    {
      return v3;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

void sub_1001BD17C(uint64_t a1@<X8>)
{
  HTTPHeaders.init(dictionaryLiteral:)();
  *a1 = v2;
  *(a1 + 8) = 2;
}

Swift::Void __swiftcall HTTPHeaders.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    v3 = sub_1000375BC(isUniquelyReferenced_nonNull_native, v5, 0, v3);
  }

  *v1 = v3;
}

ASOctaneSupportXPCService::HTTPHeaders::Index __swiftcall HTTPHeaders.index(before:)(ASOctaneSupportXPCService::HTTPHeaders::Index before)
{
  v1 = __OFSUB__(before.base, 1);
  result.base = before.base - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t HTTPHeaders.subscript.getter(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {

    return sub_100037A2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BD290(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) >= a2)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  result += a2;
  return result;
}

ASOctaneSupportXPCService::HTTPHeaders::Index sub_1001BD2C4(uint64_t a1)
{
  v2 = sub_10006762C(a1);
  result.base = HTTPHeaders.index(before:)(v2).base;
  v1->base = result.base;
  return result;
}

ASOctaneSupportXPCService::HTTPHeaders::Index sub_1001BD2EC(uint64_t a1)
{
  v2 = sub_1001C1BD4(a1);
  result.base = HTTPHeaders.index(before:)(v2).base;
  v1->base = result.base;
  return result;
}

uint64_t sub_1001BD314(uint64_t a1)
{
  v2 = sub_10006762C(a1);
  result = sub_1001BD290(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1001BD35C@<X0>(uint64_t *a1@<X8>)
{
  result = Heap.endIndex.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1001BD388(unint64_t *a1, unint64_t *a2)
{
  *a1 = HTTPHeaders.subscript.getter(*a2, *v2);
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_100168534();
}

uint64_t sub_1001BD3D4()
{
}

uint64_t sub_1001BD414@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10006B940(*a1, a1[1], *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1001BD454@<X0>(uint64_t a1@<X8>)
{
  result = sub_10006BAA8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001BD4A4(uint64_t a1)
{
  v2 = sub_10006762C(a1);
  result = sub_1001B9108(v2, v4, *v3);
  *v1 = result;
  *(v1 + 8) = v6 & 1;
  return result;
}

Swift::Int sub_1001BD52C(uint64_t a1)
{
  v2 = sub_1001C1BD4(a1);
  result = Heap.index(after:)(v2);
  *v1 = result;
  return result;
}

void sub_1001BD554(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t sub_1001BD584(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_1001F8068();

      sub_1001F6C28();
      v15 = sub_1001F80D8();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_1001F7EA8();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BD72C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 72);
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);
      v6 = *(v4 + 16);
      v8 = *(v3 - 5);
      v7 = *(v3 - 4);
      v9 = *(v3 - 2);
      v10 = *(v3 - 1);
      if (*(v4 + 32))
      {
        if ((*v3 & 1) == 0)
        {
          return 0;
        }

        v46 = *(v3 - 3);
        v11 = *(v3 - 4);
        sub_1000AF2F0(*(v3 - 5), v7, v46, *(v3 - 2), v10, 1);
        v12 = sub_1001C1B3C();
        sub_1000AF2F0(v12, v13, v14, v15, v16, v17);
        v48 = sub_1001BD92C(v5, v8);
        sub_1000AF2B0(v8, v11, v46, v9, v10, 1);
        v18 = sub_1001C1B3C();
        sub_1000AF2B0(v18, v19, v20, v21, v22, v23);
        if ((v48 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        v45 = *(v4 + 24);
        v47 = *v4;
        v49 = *(v4 - 8);
        v24 = *(v4 + 8) == *(v3 - 3) && v6 == v9;
        v25 = v24 && v5 >> 16 == v8 >> 16;
        v26 = v25 && *v4 >> 16 == v7 >> 16;
        if (!v26 && (sub_1001F7E18() & 1) == 0)
        {
          return 0;
        }

        v27 = v6;
        v44 = v6;
        sub_1001C1CA4();
        v29 = v28;
        sub_1000AF2F0(v30, v31, v32, v33, v34, v35);
        sub_1000AF2F0(v49, v47, v29, v27, v45, 0);
        v43 = sub_1001BD92C(v45, v10);
        sub_1001C1CA4();
        sub_1000AF2B0(v36, v37, v38, v39, v40, v41);
        sub_1000AF2B0(v49, v47, v29, v44, v45, 0);
        if ((v43 & 1) == 0)
        {
          return 0;
        }
      }

      v4 += 48;
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1001BD92C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 72);
    v4 = (a1 + 40);
    while (2)
    {
      v5 = v4;
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = v4[1];
      v9 = v4[2];
      v10 = v4[3];
      v4 += 6;
      v11 = *(v5 + 32);
      v12 = *(v3 - 5);
      v13 = *(v3 - 4);
      v15 = *(v3 - 3);
      v14 = *(v3 - 2);
      v16 = *(v3 - 1);
      v17 = *v3;
      v18 = v6 >> 16;
      v19 = v7 >> 16;
      v20 = v12 >> 16;
      v21 = v13 >> 16;
      switch(v11)
      {
        case 1:
          if (v17 != 1)
          {
            return 0;
          }

          goto LABEL_26;
        case 2:
          if (v17 != 2)
          {
            return 0;
          }

          sub_1001C1C30();
          v55 = v16;
          v56 = v7;
          v23 = v22;
          v57 = v24;
          v53 = v15;
          v26 = v25;
          sub_1000AF240(v27, v28, v29, v30, v31, 2u);
          v32 = v7;
          v33 = v26;
          sub_1000AF240(v6, v32, v26, v9, v23, 2u);
          LOBYTE(v26) = sub_1001BD72C(v6, v12);
          sub_1000AEDD8(v12, v13, v53, v14, v55, 2u);
          sub_1000AEDD8(v6, v56, v33, v9, v23, 2u);
          v4 = v57;
          if ((v26 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_37;
        case 3:
          if (v17 != 3)
          {
            return 0;
          }

          v54 = v10;
          v58 = v4;
          v34 = v8 == v15 && v9 == v14;
          v35 = v34 && v18 == v20;
          if (!v35 || v19 != v21)
          {
            sub_1001C1BE0();
            if ((sub_1001F7E18() & 1) == 0)
            {
              return 0;
            }
          }

          v52 = v14;
          sub_1001C1C30();
          v38 = v37;
          sub_1000AF240(v39, v40, v41, v42, v43, 3u);
          sub_1000AF240(v6, v7, v38, v9, v54, 3u);
          v51 = sub_1001BD92C(v54, v16);
          sub_1000AEDD8(v12, v13, v15, v52, v16, 3u);
          sub_1000AEDD8(v6, v7, v38, v9, v54, 3u);
          v4 = v58;
          if ((v51 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_37;
        default:
          if (*v3)
          {
            return 0;
          }

LABEL_26:
          if (v8 != v15 || v9 != v14 || v18 != v20 || v19 != v21)
          {
            sub_1001C1BE0();
            v48 = v47;
            v49 = sub_1001F7E18();
            v4 = v48;
            if ((v49 & 1) == 0)
            {
              return 0;
            }
          }

LABEL_37:
          v3 += 48;
          if (!--v2)
          {
            return 1;
          }

          continue;
      }
    }
  }

  return 1;
}

uint64_t sub_1001BDBB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1001F7EA8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t HTTPVersion.major.setter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 16))
  {
    *(v1 + 2) = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *(*HTTPVersion.major.modify(void *a1))(unint64_t *result, char a2)
{
  *a1 = *(v1 + 2);
  a1[1] = v1;
  return sub_1001BDCB4;
}

unint64_t *sub_1001BDCB4(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!(v2 >> 16))
    {
LABEL_7:
      *(result[1] + 2) = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!(v2 >> 16))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t HTTPVersion.minor.setter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 16))
  {
    *v1 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *(*HTTPVersion.minor.modify(void *a1))(unint64_t *result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001BDD34;
}

unint64_t *sub_1001BDD34(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!(v2 >> 16))
    {
LABEL_7:
      *result[1] = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!(v2 >> 16))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t HTTPParserError.debugDescription.getter(char a1)
{
  result = 0x2064696C61766E69;
  switch(a1)
  {
    case 1:
      sub_1001C1C1C();
      result = v7 | 2;
      break;
    case 2:
      sub_1001C1C1C();
      result = v4 + 14;
      break;
    case 3:
      sub_1001C1C1C();
      result = v5 + 25;
      break;
    case 4:
      result = 0xD000000000000037;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      sub_1001C1C1C();
      result = v11 + 4;
      break;
    case 7:
      sub_1001C1C1C();
      result = v6 - 1;
      break;
    case 8:
    case 9:
    case 10:
    case 11:
      return result;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      sub_1001C1C1C();
      result = v10 - 4;
      break;
    case 14:
    case 21:
      sub_1001C1C1C();
      result = v9 | 1;
      break;
    case 15:
    case 23:
      sub_1001C1C1C();
      result = v15 + 7;
      break;
    case 16:
      sub_1001C1C1C();
      result = v3 + 22;
      break;
    case 17:
    case 22:
      sub_1001C1C1C();
      result = v13 + 12;
      break;
    case 19:
      sub_1001C1C1C();
      result = v14 | 3;
      break;
    case 20:
      sub_1001C1C1C();
      result = v8 + 28;
      break;
    default:
      sub_1001C1C1C();
      result = v12 + 18;
      break;
  }

  return result;
}

Swift::Int sub_1001BE0FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t HTTPResponseStatus.init(statusCode:reasonPhrase:)(uint64_t result)
{
  if (!(!v2 & v1))
  {
    switch(result)
    {
      case 400:
      case 401:
      case 402:
      case 403:
      case 404:
      case 405:
      case 406:
      case 407:
      case 408:
      case 409:
      case 410:
      case 411:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 421:
      case 422:
      case 423:
      case 424:
      case 426:
      case 428:
      case 429:
      case 431:
      case 451:
        goto LABEL_6;
      case 419:
      case 420:
      case 425:
      case 427:
      case 430:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
        goto LABEL_11;
      default:
        JUMPOUT(0);
    }
  }

  switch(result)
  {
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 305:
    case 307:
    case 308:
      goto LABEL_6;
    case 306:
      goto LABEL_11;
    default:
      if (result == 226)
      {

        return _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
      }

      else if (result == 101 || result == 102 || result == 100)
      {
LABEL_6:

        return _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
      }

      else
      {
LABEL_11:
        if (result < 0)
        {
          __break(1u);

          return _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
        }
      }

      return result;
  }
}

uint64_t HTTPRequestHead.description.getter()
{
  sub_100037B94();
  sub_1001F77B8(67);
  v4._object = 0x800000010022D9E0;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1001F6CA8(v4);
  sub_1001F7A28();
  v5._countAndFlagsBits = 0x22203A697275202CLL;
  v5._object = 0xE800000000000000;
  sub_1001F6CA8(v5);
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  v6._countAndFlagsBits = v1;
  v6._object = v2;
  sub_1001F6CA8(v6);

  v7._countAndFlagsBits = 0x6973726576202C22;
  v7._object = 0xEC000000203A6E6FLL;
  sub_1001F6CA8(v7);
  v8._countAndFlagsBits = HTTPVersion.description.getter();
  sub_1001F6CA8(v8);

  v9._countAndFlagsBits = sub_1001C1B1C();
  sub_1001F6CA8(v9);
  sub_1000183C4(&qword_1002ADD98);
  v10._countAndFlagsBits = sub_1001F6F48();
  sub_1001F6CA8(v10);

  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  sub_1001F6CA8(v11);
  return 0;
}

uint64_t HTTPResponseHead.description.getter()
{
  sub_100037B94();
  sub_1001F77B8(57);
  v1._object = 0x800000010022DA00;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1001F6CA8(v1);
  v2._countAndFlagsBits = HTTPVersion.description.getter();
  sub_1001F6CA8(v2);

  v3._countAndFlagsBits = 0x737574617473202CLL;
  v3._object = 0xEA0000000000203ALL;
  sub_1001F6CA8(v3);
  sub_1001F7A28();
  v4._countAndFlagsBits = sub_1001C1B1C();
  sub_1001F6CA8(v4);
  sub_1000183C4(&qword_1002ADD98);
  v5._countAndFlagsBits = sub_1001F6F48();
  sub_1001F6CA8(v5);

  v6._countAndFlagsBits = 32032;
  v6._object = 0xE200000000000000;
  sub_1001F6CA8(v6);
  return 0;
}

uint64_t HTTPVersion.description.getter()
{
  v1._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v1);

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1001F6CA8(v2);
  v3._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v3);

  return 0x2F50545448;
}

uint64_t HTTPMethod.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 5522759 && a2 == 0xE300000000000000;
  if (v3
    || (sub_1001C1A58() & 1) != 0
    || (a1 == 5526864 ? (v6 = a2 == 0xE300000000000000) : (v6 = 0),
        v6
     || (sub_1001C1A58() & 1) != 0
     || (a1 == 4997953 ? (v7 = a2 == 0xE300000000000000) : (v7 = 0),
         v7
      || (sub_1001C1A58() & 1) != 0
      || (a1 == 1145128264 ? (v8 = a2 == 0xE400000000000000) : (v8 = 0),
          v8
       || (sub_1001C1A58() & 1) != 0
       || (a1 == 1414745936 ? (v9 = a2 == 0xE400000000000000) : (v9 = 0),
           v9
        || (sub_1001C1A58() & 1) != 0
        || (a1 == 1498435395 ? (v10 = a2 == 0xE400000000000000) : (v10 = 0),
            v10 || (sub_1001C1A58() & 1) != 0 || (a1 == 1262702412 ? (v11 = a2 == 0xE400000000000000) : (v11 = 0), v11 || (sub_1001C1A58() & 1) != 0 || (a1 == 1163284301 ? (v12 = a2 == 0xE400000000000000) : (v12 = 0), v12 || (sub_1001C1A58() & 1) != 0 || (a1 == 1145981250 ? (v13 = a2 == 0xE400000000000000) : (v13 = 0), v13 || (sub_1001C1A58() & 1) != 0 || (a1 == 1263421772 ? (v14 = a2 == 0xE400000000000000) : (v14 = 0), v14 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x4843544150 ? (v15 = a2 == 0xE500000000000000) : (v15 = 0), v15 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x4543415254 ? (v16 = a2 == 0xE500000000000000) : (v16 = 0), v16 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x4C4F434B4DLL ? (v17 = a2 == 0xE500000000000000) : (v17 = 0), v17 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x454752454DLL ? (v18 = a2 == 0xE500000000000000) : (v18 = 0), v18 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x4547525550 ? (v19 = a2 == 0xE500000000000000) : (v19 = 0), v19 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x594649544F4ELL ? (v20 = a2 == 0xE600000000000000) : (v20 = 0), v20 || (sub_1001C1A38() & 1) != 0 || (a1 == 0x484352414553 ? (v21 = a2 == 0xE600000000000000) : (v21 = 0), v21 || (sub_1001C1A38() & 1) != 0 || (a1 == 0x4B434F4C4E55 ? (v22 = a2 == 0xE600000000000000) : (v22 = 0), v22 || (sub_1001C1A38() & 1) != 0 || (a1 == 0x444E49424552 ? (v23 = a2 == 0xE600000000000000) : (v23 = 0), v23 || (sub_1001C1A38() & 1) != 0 || (a1 == 0x444E49424E55 ? (v24 = a2 == 0xE600000000000000) : (v24 = 0), v24 || (sub_1001C1A38() & 1) != 0 || (a1 == 0x54524F504552 ? (v25 = a2 == 0xE600000000000000) : (v25 = 0), v25 || (sub_1001C1A38() & 1) != 0 || (a1 == 0x4554454C4544 ? (v26 = a2 == 0xE600000000000000) : (v26 = 0), v26 || (sub_1001C1A38() & 1) != 0 || (a1 == 0x4B4E494C4E55 ? (v27 = a2 == 0xE600000000000000) : (v27 = 0), v27 || (sub_1001C1A38() & 1) != 0 || (a1 == 0x5443454E4E4F43 ? (v28 = a2 == 0xE700000000000000) : (v28 = 0), v28 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x4843524145534DLL ? (v29 = a2 == 0xE700000000000000) : (v29 = 0), v29 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x534E4F4954504FLL ? (v30 = a2 == 0xE700000000000000) : (v30 = 0), v30 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x444E4946504F5250 ? (v31 = a2 == 0xE800000000000000) : (v31 = 0), v31 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x54554F4B43454843 ? (v32 = a2 == 0xE800000000000000) : (v32 = 0), v32 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x43544150504F5250 ? (v33 = a2 == 0xE900000000000048) : (v33 = 0), v33 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x4249524353425553 ? (v34 = a2 == 0xE900000000000045) : (v34 = 0), v34 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x444E454C41434B4DLL ? (v35 = a2 == 0xEA00000000005241) : (v35 = 0), v35 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x4956495443414B4DLL ? (v36 = a2 == 0xEA00000000005954) : (v36 = 0), v36 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x5243534255534E55 ? (v37 = a2 == 0xEB00000000454249) : (v37 = 0), v37 || (sub_1001C1A58() & 1) != 0 || (a1 == 0x454352554F53 ? (v38 = a2 == 0xE600000000000000) : (v38 = 0), v38 || (sub_1001C1A38() & 1) != 0))))))))))))))))))))))))))))))))))
  {
  }

  return sub_100037A2C();
}

uint64_t sub_1001BF3E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = HTTPMethod.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001BF418@<X0>(uint64_t *a1@<X8>)
{
  result = HTTPMethod.rawValue.getter(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unsigned __int8 *sub_1001BF444()
{
  v0._countAndFlagsBits = 0x2D746E65746E6F63;
  v0._object = 0xEE006874676E656CLL;
  v2 = HTTPHeaders.first(name:)(v0);
  result = v2.value._countAndFlagsBits;
  if (!v2.value._object)
  {
    return 0;
  }

  v3 = (v2.value._object >> 56) & 0xF;
  v4 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v2.value._object & 0x2000000000000000) != 0)
  {
    v5 = (v2.value._object >> 56) & 0xF;
  }

  else
  {
    v5 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((v2.value._object & 0x1000000000000000) == 0)
  {
    if ((v2.value._object & 0x2000000000000000) != 0)
    {
      if (LOBYTE(v2.value._countAndFlagsBits) == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            sub_1001C1C78();
            while (1)
            {
              sub_100027240();
              if (!v9 & v8)
              {
                break;
              }

              sub_1000E4DA0();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              sub_10002727C();
              if (v9)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_81:
        __break(1u);
        return result;
      }

      if (LOBYTE(v2.value._countAndFlagsBits) != 45)
      {
        if (v3)
        {
          while (1)
          {
            sub_100027240();
            if (!v9 & v8)
            {
              break;
            }

            sub_1000E4DA0();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            sub_10002727C();
            if (v9)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          sub_1001C1C78();
          while (1)
          {
            sub_100027240();
            if (!v9 & v8)
            {
              break;
            }

            sub_1000E4DA0();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            sub_10002727C();
            if (v9)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v2.value._countAndFlagsBits & 0x1000000000000000) != 0)
      {
        result = ((v2.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1001F7858();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                sub_100027240();
                if (!v9 & v8)
                {
                  goto LABEL_69;
                }

                sub_1000E4DA0();
                if (!v9)
                {
                  goto LABEL_69;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_69;
                }

                sub_10002727C();
                if (v9)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }

        goto LABEL_80;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_69;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_69;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_69;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_69:
        v7 = 0;
        v12 = 1;
        goto LABEL_70;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              sub_100027240();
              if (!v9 & v8)
              {
                goto LABEL_69;
              }

              sub_1000E4DA0();
              if (!v9)
              {
                goto LABEL_69;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_69;
              }

              sub_10002727C();
              if (v9)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_60:
          v12 = 0;
LABEL_70:
          v23 = v12;
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  sub_1001ED558(v2.value._countAndFlagsBits, v2.value._object, 10);
  v7 = v24;
  v23 = v25;
LABEL_71:

  if (v23)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void *sub_1001BF6D8(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    sub_1001F6DB8();
    sub_1001C1BF8();
    sub_1000326B0();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1000326B0();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = _swiftEmptyArrayStorage;
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      sub_1001C1BA0();
      v17 = sub_1001F6D98();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      sub_1001C1BA0();
      v16 = sub_1001F6C48();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_1001F6DB8();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000BA4B0();
      sub_1000326B0();
      v41 = v27;
    }

    v12 = v41[2];
    v11 = v12 + 1;
    if (v12 >= v41[3] >> 1)
    {
      sub_1000326B0();
      v41 = v28;
    }

    v41[2] = v11;
    v26 = &v41[4 * v12];
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    sub_1001C1BA0();
    v16 = sub_1001F6C48();
    if ((v22 & 1) == 0 && v41[2] == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_1001F6DB8();
        sub_1001C1BF8();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_1000BA4B0();
      sub_1000326B0();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001BFA24(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1001BFA48(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_1001BFA6C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100111F0C();
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1001BFAD8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001BFAD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001F7E08(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = sub_1001F6F88();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1001BFC94(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001BFBCC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001BFBCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1001F7EA8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1001BFC94(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1001F7EA8();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1001F7EA8()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1001F7EA8() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100032508();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_100032508();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1001C02C8((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1001C019C(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_1001C019C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1001A70B4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1001C02C8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1001C02C8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_100033C80(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1001F7EA8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_100033C80(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1001F7EA8() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_1001C046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1001B9768(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1001C04A0(void *(*a1)(void *__return_ptr, void, void), uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a6 & 0x1000000000000000) != 0)
  {
    return 3;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a6) & 0xF;
    v14[0] = a5;
    v14[1] = a6 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a5 & 0x1000000000000000) != 0)
  {
    v11 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a5 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1001F7858();
  }

  return sub_1001C0568(v11, v12, a3, a4, a5, a6, a1);
}

void *sub_1001C0568(void *result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, void *(*a7)(void *__return_ptr, void, void))
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    v18 = a7;
    result = sub_1001EE2BC(a3, a5, a6);
    a7 = v18;
    v16 = result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    v27 = a7;
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_34;
    }

    result = sub_1001F6D28();
    v17 = result;
    a7 = v27;
  }

  else
  {
    v17 = (v16 >> 16);
  }

  if (v15 == v14)
  {
    v20 = v11;
    v21 = a7;
    result = sub_1001EE2BC(v20, a5, a6);
    a7 = v21;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v22 = a7;
    result = sub_1001EE2BC(a4, a5, a6);
    a7 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = ((a4 >> 16) - (v11 >> 16));
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(a6) & 0xF;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_32;
  }

  if (v23 < a4 >> 16)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  v24 = a7;
  result = sub_1001F6D28();
  a7 = v24;
LABEL_22:
  if (__OFADD__(v17, result))
  {
    __break(1u);
    goto LABEL_31;
  }

  v25 = result;
  if ((result + v17) < v17)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v12)
  {
    v26 = v12 + v17;
  }

  else
  {
    v26 = 0;
  }

  result = a7(&v28, v26, v25);
  if (!v7)
  {
    return v28;
  }

  return result;
}

unint64_t sub_1001C07B4()
{
  result = qword_1002BB840;
  if (!qword_1002BB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB840);
  }

  return result;
}

unint64_t sub_1001C080C()
{
  result = qword_1002BB848;
  if (!qword_1002BB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB848);
  }

  return result;
}

unint64_t sub_1001C08A8()
{
  result = qword_1002BB860;
  if (!qword_1002BB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB860);
  }

  return result;
}

unint64_t sub_1001C0944(uint64_t a1)
{
  result = sub_1001C1BD4(a1);
  if (!result)
  {
    v4 = v3;
    sub_100019BC4(&qword_1002BB870);
    v4();
    result = sub_1000DBF28();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001C09AC()
{
  result = qword_1002BB878;
  if (!qword_1002BB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB878);
  }

  return result;
}

unint64_t sub_1001C0A48(uint64_t a1)
{
  result = sub_1001C1BD4(a1);
  if (!result)
  {
    v4 = v3;
    sub_100019BC4(&qword_1002BB858);
    v4();
    result = sub_1000DBF28();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001C0AF8()
{
  result = qword_1002BB890;
  if (!qword_1002BB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB890);
  }

  return result;
}

unint64_t sub_1001C0B50()
{
  result = qword_1002BB898;
  if (!qword_1002BB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB898);
  }

  return result;
}

unint64_t sub_1001C0C70(uint64_t a1)
{
  result = sub_1001C1BD4(a1);
  if (!result)
  {
    sub_100019BC4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001C0CB8()
{
  result = qword_1002BB8C0;
  if (!qword_1002BB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BB8C0);
  }

  return result;
}

void sub_1001C0D20()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1001C1108();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001C0DB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = 9;
  if (v3 > 9)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_24;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1001C0F00(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (v5 <= 9)
  {
    v5 = 9;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_39:
        __break(1u);
        JUMPOUT(0x1001C10E0);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_27;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void sub_1001C1108()
{
  if (!qword_1002BB9F8)
  {
    v0 = sub_1001F74B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002BB9F8);
    }
  }
}

uint64_t sub_1001C1158(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001C1198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C11E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001C1224(uint64_t result, int a2, int a3)
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

uint64_t sub_1001C127C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001C1294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFDD && *(a1 + 16))
  {
    return (*a1 + 2147483614);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 33;
  if (v4 >= 0x23)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C12EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFDE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483614;
    if (a3 >= 0x7FFFFFDE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFDE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 33;
    }
  }

  return result;
}

void *sub_1001C133C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for HTTPParserError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HTTPParserError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
        JUMPOUT(0x1001C14F4);
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001C1528(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001C1540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFC3 && *(a1 + 24))
  {
    return (*a1 + 2147483588);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 59;
  if (v4 >= 0x3D)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001C1598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFC4)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483588;
    if (a3 >= 0x7FFFFFC4)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFC4)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 59;
    }
  }

  return result;
}

void *sub_1001C15EC(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

_BYTE *sub_1001C161C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001C16E8);
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

unint64_t sub_1001C1720()
{
  result = qword_1002BBAA8;
  if (!qword_1002BBAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBAA8);
  }

  return result;
}

unint64_t sub_1001C1774()
{
  result = qword_1002BBAB0;
  if (!qword_1002BBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBAB0);
  }

  return result;
}

unint64_t sub_1001C17C8()
{
  result = qword_1002BBAB8;
  if (!qword_1002BBAB8)
  {
    sub_1001F6608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBAB8);
  }

  return result;
}

uint64_t sub_1001C1820()
{
  v1 = v0;
  v2 = *v0;
  result = sub_10013B560(*v0);
  v4 = result;
  while (1)
  {
    v5 = v1[1];
    if (v5 == v4)
    {
      return 0;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = sub_1001F7808();
      v6 = result;
      goto LABEL_7;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v6 = *(v2 + 32 + 8 * v5);

LABEL_7:
    if (__OFADD__(v5, 1))
    {
      goto LABEL_14;
    }

    v1[1] = v5 + 1;
    v7 = v6;
    if ((v1[2])(&v7))
    {
      return v6;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1001C1900()
{
  result = qword_1002BBAC0;
  if (!qword_1002BBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBAC0);
  }

  return result;
}

uint64_t sub_1001C1A38()
{

  return sub_1001F7EA8();
}

uint64_t sub_1001C1A58()
{

  return sub_1001F7EA8();
}

uint64_t sub_1001C1BF8()
{
}

uint64_t sub_1001C1CB8()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1001C1CD8()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1001C1CF0()
{
}

uint64_t getEnumTagSinglePayload for RefundRequestResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RefundRequestResponse(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001C1E6CLL);
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

uint64_t sub_1001C1F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C2738();
  v5 = sub_1001C278C();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_1001C1FAC(void *a1, char a2)
{
  sub_1000183C4(&qword_1002BBAC8);
  sub_1001C27E0();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  v10 = &v12[-v9];
  sub_10001AE68(a1, a1[3]);
  sub_1001C2304();
  sub_1001F8198();
  v12[15] = a2;
  sub_1001C2358();
  sub_1001F7D58();
  return (*(v6 + 8))(v10, v2);
}

void *sub_1001C20E4(void *a1)
{
  sub_1000183C4(&qword_1002BBAE0);
  sub_1001C27E0();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  v9 = &v12[-v8];
  v10 = sub_10001AE68(a1, a1[3]);
  sub_1001C2304();
  sub_1001F8178();
  if (v1)
  {
    sub_100019CCC(a1);
  }

  else
  {
    sub_1001C23AC();
    sub_1001F7C48();
    (*(v5 + 8))(v9, v2);
    v10 = v12[15];
    sub_100019CCC(a1);
  }

  return v10;
}

uint64_t sub_1001C2244(uint64_t a1)
{
  v2 = sub_1001C2304();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C2280(uint64_t a1)
{
  v2 = sub_1001C2304();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001C22BC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C20E4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1001C2304()
{
  result = qword_1002BBAD0;
  if (!qword_1002BBAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBAD0);
  }

  return result;
}

unint64_t sub_1001C2358()
{
  result = qword_1002BBAD8;
  if (!qword_1002BBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBAD8);
  }

  return result;
}

unint64_t sub_1001C23AC()
{
  result = qword_1002BBAE8;
  if (!qword_1002BBAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBAE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RefundRequestResponse.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1001C249CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RefundRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001C25A0);
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

unint64_t sub_1001C25DC()
{
  result = qword_1002BBAF0;
  if (!qword_1002BBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBAF0);
  }

  return result;
}

unint64_t sub_1001C2634()
{
  result = qword_1002BBAF8;
  if (!qword_1002BBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBAF8);
  }

  return result;
}

unint64_t sub_1001C268C()
{
  result = qword_1002BBB00;
  if (!qword_1002BBB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB00);
  }

  return result;
}

unint64_t sub_1001C26E4()
{
  result = qword_1002BBB08;
  if (!qword_1002BBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB08);
  }

  return result;
}

unint64_t sub_1001C2738()
{
  result = qword_1002BBB10;
  if (!qword_1002BBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB10);
  }

  return result;
}

unint64_t sub_1001C278C()
{
  result = qword_1002BBB18;
  if (!qword_1002BBB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB18);
  }

  return result;
}

void sub_1001C27F8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a2))
    {
      sub_100030918();
      return;
    }

    __break(1u);
  }
}

void sub_1001C2854(uint64_t a1@<X8>, unint64_t a2@<X1>, uint64_t a3@<X2>)
{
  if (a2 == a3)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 56) = -256;
    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    sub_100030980(a1);
    return;
  }

  __break(1u);
}

void sub_1001C28A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a2))
    {
      sub_1000309F0();
      return;
    }

    __break(1u);
  }
}

uint64_t HTTPDecoder.__allocating_init(leftOverBytesStrategy:)(char a1)
{
  v2 = swift_allocObject();
  HTTPDecoder.init(leftOverBytesStrategy:)(a1);
  return v2;
}

void sub_1001C2938()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v3 - v2;
  if (v3 < v2)
  {
    v4 += *(v1 + 16);
  }

  if (v4 >= 1)
  {
    sub_1001C28A0(v1, v2, v3);
    if (v5)
    {
      sub_100031C30();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001C29D0(uint64_t result)
{
  if (result)
  {
    result = *(result + 24);
    if (result)
    {
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C29E8(char a1)
{
  *(v1 + 96) = 0u;
  *(v1 + 73) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 184) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  *(v1 + 192) = 1;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 216) = vdupq_n_s64(0xCAFBABEuLL);
  *(v1 + 232) = 0;
  *(v1 + 236) = 1;
  *(v1 + 240) = 0;
  v3 = sub_100106280(1);
  v4 = sub_1001CAE60(0, 0, 0, v3);
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  v5 = a1 & 1;
  *(v1 + 256) = v4;
  *(v1 + 248) = v5;
  sub_100050548();
  sub_100006058((v1 + 96));
  swift_endAccess();
  v6 = *(v1 + 88);
  v7 = *(v1 + 72);
  v11 = *(v1 + 56);
  v12 = v7;
  v13 = v6;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 88) = 1;
  if (v6)
  {
    __break(1u);
  }

  sub_100006014(&v11, v5);
  v8 = v12;
  *(v1 + 56) = v11;
  v9 = v13;
  *(v1 + 72) = v8;
  *(v1 + 88) = v9;
  *(v1 + 144) = sub_1001C2BCC;
  *(v1 + 120) = sub_1001C2BF8;
  *(v1 + 128) = sub_1001C2C24;
  *(v1 + 112) = sub_1001C2C8C;
  *(v1 + 104) = sub_1001C2D04;
  *(v1 + 168) = sub_1001C58D8;
  *(v1 + 160) = sub_1001C58D4;
  *(v1 + 96) = sub_1001C2D98;
  *(v1 + 136) = sub_1001C2EE8;
  *(v1 + 152) = sub_1001C2F34;
  return v1;
}

uint64_t sub_1001C2C50(uint64_t a1)
{
  type metadata accessor for BetterHTTPParser();
  sub_1001C29D0(a1);

  return 0;
}

uint64_t sub_1001C2C90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for BetterHTTPParser();
  sub_1001C29D0(a1);
  if (a2)
  {
    v8 = a3 + a2;
  }

  else
  {
    v8 = 0;
  }

  a4(a2, v8);

  return 0;
}

uint64_t sub_1001C2D48(uint64_t a1)
{
  type metadata accessor for BetterHTTPParser();
  result = sub_1001C29D0(a1);
  if (*(result + 176))
  {
    __break(1u);
  }

  else
  {
    *(result + 176) = 1;

    return 0;
  }

  return result;
}

uint64_t sub_1001C2D9C(uint64_t a1)
{
  type metadata accessor for BetterHTTPParser();
  result = sub_1001C29D0(a1);
  if (a1)
  {
    v3 = result;
    v4 = *(a1 + 16);
    v5 = *(a1 + 18);
    v7 = *(a1 + 4);
    v8 = *(a1 + 8);
    v9 = *(a1 + 20);
    v10 = *(a1 + 24);
    v17 = *a1;
    v6 = v17;
    v18 = v7;
    v19 = v8;
    v20 = v4;
    v21 = v5;
    v22 = v9;
    v23 = v10;
    v16 = sub_1001C58B4(&v17);
    v17 = v6;
    v18 = v7;
    v19 = v8;
    v20 = v4;
    v21 = v5;
    v22 = v9;
    v23 = v10;
    v11 = sub_1001C58BC(&v17);
    v17 = v6;
    v18 = v7;
    v19 = v8;
    v20 = v4;
    v21 = v5;
    v22 = v9;
    v23 = v10;
    v12 = sub_1001C58C8(&v17);
    v13 = !sub_100005A10(a1);
    v14 = sub_1001C377C(v4, v5, v16, v11 != 0, v12, v13);
    if ((v14 & 0x100000000) != 0)
    {
      v15 = v14 != 0;
    }

    else
    {
      *(v3 + 232) = v14;
      *(v3 + 236) = 0;

      return 0xFFFFFFFFLL;
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C2EEC(uint64_t a1)
{
  type metadata accessor for BetterHTTPParser();
  sub_1001C29D0(a1);
  sub_1001C36D4();

  return 0;
}

uint64_t sub_1001C2F38(uint64_t result, uint64_t a2, char a3)
{
  if (result)
  {
    v4 = *(v3 + 216);
    if (v4)
    {
      *(v3 + 184) = result - v4;
      *(v3 + 192) = 0;
      *(v3 + 176) = a3;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C2F60(uint64_t result)
{
  v1 = *(result + 200);
  *(result + 200) = 0;
  if (*(result + 192))
  {
    goto LABEL_21;
  }

  v2 = result;
  v3 = *(result + 184);
  v4 = v3 + v1;
  if (__OFADD__(v3, v1))
  {
    __break(1u);
    goto LABEL_18;
  }

  *(result + 184) = 0;
  *(result + 192) = 1;
  if (v3 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(result + 216);
  if (v5)
  {
    v6 = *(result + 224) - v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < v4)
  {
    goto LABEL_19;
  }

  if (v4 < v3)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = swift_beginAccess();
  v7 = *(v2 + 40);
  if (!v7)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if (v5)
  {
    v8 = v5 + v3;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = v5 + v4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v2 + 48);
  sub_10004BD98(v2 + 16, *(v2 + 40));
  (*(v10 + 16))(v8, v9, v7, v10);
  return swift_endAccess();
}

uint64_t sub_1001C3078(uint64_t result)
{
  v1 = *(result + 200);
  *(result + 200) = 0;
  if (*(result + 192))
  {
    goto LABEL_21;
  }

  v2 = result;
  v3 = *(result + 184);
  v4 = v3 + v1;
  if (__OFADD__(v3, v1))
  {
    __break(1u);
    goto LABEL_18;
  }

  *(result + 184) = 0;
  *(result + 192) = 1;
  if (v3 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(result + 216);
  if (v5)
  {
    v6 = *(result + 224) - v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < v4)
  {
    goto LABEL_19;
  }

  if (v4 < v3)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = swift_beginAccess();
  v7 = *(v2 + 40);
  if (!v7)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if (v5)
  {
    v8 = v5 + v3;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = v5 + v4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v2 + 48);
  sub_10004BD98(v2 + 16, *(v2 + 40));
  (*(v10 + 32))(v8, v9, v7, v10);
  return swift_endAccess();
}

void sub_1001C3190(uint64_t a1)
{
  sub_1001C5970(a1);
  if (v4)
  {
    goto LABEL_15;
  }

  sub_1001C5980();
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1001C5960();
  if (v2 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v1[27];
  if (v6)
  {
    v7 = v1[28] - v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < v3)
  {
    goto LABEL_13;
  }

  if (v3 < v2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1001C58FC();
  if (v1[5])
  {
    sub_1001C5950();
    sub_1001C59D8();
    v8 = sub_1001C58E4();
    v9(v8);
    swift_endAccess();
    return;
  }

LABEL_16:
  __break(1u);
}

void sub_1001C325C(uint64_t a1)
{
  sub_1001C5970(a1);
  if (v4)
  {
    goto LABEL_15;
  }

  sub_1001C5980();
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1001C5960();
  if (v2 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v1[27];
  if (v6)
  {
    v7 = v1[28] - v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < v3)
  {
    goto LABEL_13;
  }

  if (v3 < v2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1001C58FC();
  if (v1[5])
  {
    sub_1001C5950();
    sub_1001C59D8();
    v8 = sub_1001C58E4();
    v9(v8);
    swift_endAccess();
    return;
  }

LABEL_16:
  __break(1u);
}

void sub_1001C3328(uint64_t a1)
{
  sub_1001C5970(a1);
  if (v4)
  {
    goto LABEL_15;
  }

  sub_1001C5980();
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1001C5960();
  if (v2 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v1[27];
  if (v6)
  {
    v7 = v1[28] - v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < v3)
  {
    goto LABEL_13;
  }

  if (v3 < v2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1001C58FC();
  if (v1[5])
  {
    sub_1001C5950();
    sub_1001C59D8();
    v8 = sub_1001C58E4();
    v9(v8);
    swift_endAccess();
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1001C33F4(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 40);
  if (v6)
  {
    v7 = *(v2 + 48);
    sub_10004BD98(v2 + 16, *(v2 + 40));
    (*(v7 + 8))(a1, a2, v6, v7);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C3490(uint64_t result, uint64_t a2)
{
  v3 = 5;
  v5 = result;
  switch(*(v2 + 176))
  {
    case 1:
      goto LABEL_4;
    case 2:
      sub_1001C325C(v2);
      goto LABEL_4;
    case 3:
    case 5:
      goto LABEL_7;
    case 4:
      sub_1001C3190(v2);
LABEL_4:
      v3 = 3;
      goto LABEL_6;
    case 6:
      sub_1001C3328(v2);
      v3 = 5;
      goto LABEL_6;
    case 7:
LABEL_6:
      result = sub_1001C2F38(v5, a2, v3);
LABEL_7:
      v6 = a2 - v5;
      if (!v5)
      {
        v6 = 0;
      }

      v7 = *(v2 + 200);
      v8 = __OFADD__(v7, v6);
      v9 = v7 + v6;
      if (v8)
      {
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x1001C353CLL);
      }

      *(v2 + 200) = v9;
      return result;
    default:
      goto LABEL_12;
  }
}

uint64_t sub_1001C355C(uint64_t result, uint64_t a2)
{
  v4 = result;
  switch(*(v2 + 176))
  {
    case 3:
      sub_1001C2F60(v2);
      v5 = 4;
      goto LABEL_4;
    case 4:
    case 6:
      goto LABEL_5;
    case 5:
      sub_1001C3078(v2);
      v5 = 6;
LABEL_4:
      result = sub_1001C2F38(v4, a2, v5);
LABEL_5:
      v6 = a2 - v4;
      if (!v4)
      {
        v6 = 0;
      }

      v7 = *(v2 + 200);
      v8 = __OFADD__(v7, v6);
      v9 = v7 + v6;
      if (v8)
      {
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x1001C35F8);
      }

      *(v2 + 200) = v9;
      return result;
    default:
      goto LABEL_10;
  }
}

uint64_t sub_1001C3618(uint64_t result, uint64_t a2)
{
  v4 = result;
  switch(*(v2 + 176))
  {
    case 1:
      result = sub_1001C2F38(result, a2, 2);
      goto LABEL_3;
    case 2:
LABEL_3:
      v5 = a2 - v4;
      if (!v4)
      {
        v5 = 0;
      }

      v6 = *(v2 + 200);
      v7 = __OFADD__(v6, v5);
      v8 = v6 + v5;
      if (v7)
      {
        __break(1u);
LABEL_8:
        __break(1u);
        JUMPOUT(0x1001C369CLL);
      }

      *(v2 + 200) = v8;
      return result;
    default:
      goto LABEL_8;
  }
}

void sub_1001C36BC()
{
  if (*(v0 + 176))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 176) = 1;
  }
}

uint64_t sub_1001C36D4()
{
  v1 = *(v0 + 176);
  if (v1 != 6)
  {
    if (v1 == 7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  sub_1001C3328(v0);
LABEL_5:
  *(v0 + 176) = 0;
  result = swift_beginAccess();
  v3 = *(v0 + 40);
  if (v3)
  {
    v4 = *(v0 + 48);
    sub_10004BD98(v0 + 16, *(v0 + 40));
    (*(v4 + 64))(v3, v4);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001C377C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  switch(*(v6 + 176))
  {
    case 1:
      if (*(v6 + 248) == 1)
      {
        goto LABEL_6;
      }

      __break(1u);
LABEL_4:
      sub_1001C325C(v6);
LABEL_6:
      *(v6 + 176) = 7;
      if (*(v6 + 248) != 1)
      {
        v34 = a1;
        v16 = a4;
        v27 = 0;
        goto LABEL_30;
      }

      swift_beginAccess();
      sub_1001C2938();
      v15 = v14;
      swift_endAccess();
      if (!v15)
      {
        sub_1001C57F8();
        *(v6 + 240) = swift_allocError();

        v29 = 0;
        v30 = 32;
        return v30 | ((v29 & 1) << 32);
      }

      v34 = a1;
      v16 = a4;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      sub_10005E2E0(v18, v17);

      if (HTTPMethod.rawValue.getter(v18, v17) == 1145128264 && v19 == 0xE400000000000000)
      {

        goto LABEL_28;
      }

      v21 = sub_1001F7EA8();

      if (v21)
      {
LABEL_28:
        sub_10005E2F4(v18, v17);
LABEL_29:
        v27 = 1;
        goto LABEL_30;
      }

      v22 = HTTPMethod.rawValue.getter(v18, v17);
      v24 = v23;
      sub_10005E2F4(v18, v17);
      if (v22 == 0x5443454E4E4F43 && v24 == 0xE700000000000000)
      {

        goto LABEL_29;
      }

      v26 = sub_1001F7EA8();

      v27 = 1;
      if ((v26 & 1) == 0 && (a3 - 100) >= 0x64)
      {
        v27 = a3 == 204 || a3 == 304;
      }

LABEL_30:
      swift_beginAccess();
      v31 = *(v7 + 40);
      if (!v31)
      {
LABEL_36:
        __break(1u);
        JUMPOUT(0x1001C3A68);
      }

      v32 = *(v7 + 48);
      sub_10004BD98(v7 + 16, *(v7 + 40));
      v29 = (*(v32 + 56))(v34, a2, v16 & 1, a5, a3, a6, v31, v32);
      swift_endAccess();
      v30 = 14;
      if (v29)
      {
        v30 = v27;
      }

      return v30 | ((v29 & 1) << 32);
    case 2:
      goto LABEL_4;
    case 4:
      sub_1001C3190(v6);
      goto LABEL_6;
    default:
      __break(1u);
      goto LABEL_36;
  }
}

uint64_t sub_1001C3A88()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 56) = v1;
    *(v0 + 72) = v2;
    *(v0 + 80) = v0;
    *(v0 + 88) = 0;
  }

  return result;
}

uint64_t sub_1001C3AC4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 72);
  result = *(v0 + 80);
  v5 = *(v0 + 88);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 1;
  if (v5)
  {
    __break(1u);
  }

  else if (result)
  {

    *(v0 + 56) = v1;
    *(v0 + 64) = v2;
    *(v0 + 72) = v4;
    *(v0 + 80) = 233684719;
    *(v0 + 88) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C3B30(uint64_t a1, uint64_t a2, char a3)
{
  v18 = 0;
  v4 = *(v3 + 88);
  v5 = *(v3 + 72);
  v19 = *(v3 + 56);
  v20 = v5;
  v21 = v4;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 88) = 1;
  if (v4)
  {
LABEL_21:
    __break(1u);
  }

  sub_1001C3CC0(&v19, a1, a2, a3 & 1, v3, &v18, &v17);
  v6 = v21;
  v7 = v20;
  *(v3 + 56) = v19;
  *(v3 + 72) = v7;
  *(v3 + 88) = v6;
  if (!v18)
  {
    if (*(v3 + 192))
    {
      v12 = *(v3 + 208);
      result = v12 + v17;
      if (!__OFADD__(v12, v17))
      {
        *(v3 + 208) = 0;
        return result;
      }

      __break(1u);
    }

    else
    {
      result = *(v3 + 184);
      v13 = v17 - result;
      if (!__OFSUB__(v17, result))
      {
        v14 = *(v3 + 208);
        v15 = __OFADD__(v14, v13);
        v16 = v14 + v13;
        if (!v15)
        {
          *(v3 + 208) = v16;
          *(v3 + 184) = 0;
          *(v3 + 192) = 0;
          return result;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v3 + 236))
  {
    v8 = v18;
  }

  else
  {
    v8 = *(v3 + 232);
  }

  if (v8 == 32 && *(v3 + 240))
  {
    swift_errorRetain();
    return swift_willThrow();
  }

  result = sub_1001C3E1C(v8);
  if (result != 24)
  {
    v10 = result;
    sub_100036A04();
    swift_allocError();
    *v11 = v10;
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C3CC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, _DWORD *a6@<X5>, uint64_t *a7@<X8>)
{
  v9 = result;
  if (a4)
  {
    swift_beginAccess();
    memcpy(__dst, a5 + 12, sizeof(__dst));
    v11 = sub_100002B2C(v9, __dst, 0, 0);
LABEL_6:
    v15 = *(v9 + 8);
    v16 = *(v9 + 16);
    v17 = *(v9 + 20);
    v18 = *(v9 + 24);
    __dst[0] = *v9;
    __dst[1] = v15;
    __dst[2] = __PAIR64__(v17, v16);
    __dst[3] = v18;
    result = sub_1001C57E8(__dst);
    *a6 = result;
    *a7 = v11;
    return result;
  }

  a5[27] = a2;
  a5[28] = a3;
  if (a2)
  {
    v13 = a5[26];
    v14 = a3 - a2 - v13;
    if (__OFSUB__(a3 - a2, v13))
    {
      __break(1u);
    }

    swift_beginAccess();
    memcpy(__dst, a5 + 12, sizeof(__dst));
    v11 = sub_1001C57F4(v9, __dst, (a2 + v13), v14);
    *(a5 + 27) = vdupq_n_s64(0xDAFBABEuLL);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C3E1C(int a1)
{
  if ((a1 - 11) > 0x16)
  {
    return 24;
  }

  else
  {
    return byte_10021968E[a1 - 11];
  }
}

uint64_t sub_1001C3E40()
{
  sub_1001C584C(v0 + 16);

  return v0;
}

uint64_t sub_1001C3E70()
{
  sub_1001C3E40();

  return swift_deallocClassInstance();
}

uint64_t HTTPDecoder<>.write(data:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (!HIBYTE(a3))
  {
    v3 = a3;
    v5 = result;
    sub_100050548();

    sub_10002F02C(v5, a2, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t HTTPDecoder.init(leftOverBytesStrategy:)(char a1)
{
  v2 = v1;
  v1[2] = _swiftEmptyArrayStorage;
  v4 = *v1;
  *(v1 + 3) = 0u;
  *(v1 + 5) = 0u;
  v1[7] = 0;
  *(v1 + 64) = 2;
  v1[12] = 0;
  *(v1 + 114) = 0;
  v1[9] = 0;
  v1[10] = 0;
  *(v1 + 87) = 0;
  sub_100050548();
  sub_1001B91D8(16);
  swift_endAccess();
  v5 = *(v4 + 80);
  v6 = sub_1000183C4(&qword_1002ADD40);
  if (v5 == v6)
  {
    v8 = 0;
    goto LABEL_5;
  }

  result = sub_1000183C4(&qword_1002ADD48);
  if (v5 == result)
  {
    v8 = 1;
LABEL_5:
    *(v2 + 113) = v8;
    type metadata accessor for BetterHTTPParser();
    swift_allocObject();
    v2[13] = sub_1001C29E8(v5 != v6);
    *(v2 + 112) = a1;
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C40A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = *(v2 + 94);
  v7 = *(v2 + 92);
  v8 = *(v2 + 80);
  swift_beginAccess();
  if (HIDWORD(v8) < v8)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!a1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = a1 - v8 - (*(v5 + 24) + (v6 | (v7 << 8)));
  v10 = *(v2 + 80);
  v11 = __CFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    goto LABEL_19;
  }

  if (*(v2 + 84) < v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v2 + 80) = v12;
  v13 = *(v2 + 96);
  if (*(v2 + 113))
  {
    if (!v13)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    sub_10012F21C();
    v14 = *(v2 + 72);
    if (!v14)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    sub_1001C591C();
    if (!sub_1001C59B4())
    {
LABEL_29:
      swift_endAccess();
      __break(1u);
      goto LABEL_30;
    }

    if (!__CFADD__(v8, a1))
    {
      sub_1001C5990(v8 + a1);
      v15 = &qword_1002ADD48;
LABEL_17:
      v22 = sub_1000183C4(v15);
      v17[0] = v14;
      v17[1] = v7;
      v20 = BYTE6(a2);
      v19 = WORD2(a2);
      v18 = a2;
      v21 = 1;
      v23 = 2;
      ChannelHandlerContext.fireChannelRead(_:)();

      return sub_100034310(v17);
    }

    goto LABEL_21;
  }

  if (!v13)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_10012F21C();
  v14 = *(v2 + 72);
  if (!v14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1001C591C();
  if (sub_1001C59B4())
  {
    if (!__CFADD__(v8, a1))
    {
      sub_1001C5990(v8 + a1);
      v15 = &qword_1002ADD40;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_30:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1001C4284()
{
  if (v0[5])
  {

    sub_1001F6C08();
    sub_1001C58FC();
    sub_100031FE4();
    v1 = *(v0[2] + 16);
    sub_100032200();
    sub_1001C59F4(v1 + 1);
    v0[2] = v2;
    swift_endAccess();
    v0[4] = 0;
    v0[5] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C4354()
{
  *(v0 + 32) = sub_1001F6C08();
  *(v0 + 40) = v1;
}

uint64_t sub_1001C4398()
{
  swift_beginAccess();
  if (!v0[3])
  {
    v0[3] = _swiftEmptyArrayStorage;
  }

  result = sub_10012F21C();
  if (v0[5])
  {

    sub_1001F6C08();
    sub_100031FE4();
    v2 = *(v0[3] + 16);
    sub_100032200();
    sub_1001C59F4(v2 + 1);
    v0[3] = v3;
    swift_endAccess();
    v0[4] = 0;
    v0[5] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C4498()
{
  *(v0 + 48) = sub_1001F6C08();
  *(v0 + 56) = v1;
}

uint64_t sub_1001C44DC(uint64_t result, unint64_t a2, char a3, unsigned int a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = v6;
  v8 = result;
  if (result != 1)
  {
    *(v6 + 114) = 1;
    if (*(v6 + 96))
    {
      sub_100036A04();
      swift_allocError();
      *v19 = 5;

      ChannelHandlerContext.fireErrorCaught(_:)();

      return v8 == 1;
    }

    goto LABEL_22;
  }

  v11 = a2;
  if (*(v7 + 113))
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!(a2 >> 16))
      {
        v12 = HTTPResponseStatus.init(statusCode:reasonPhrase:)(a5);
        v14 = v13;
        v16 = v15;
        sub_1001C5A08();
        v17 = *(v7 + 16);
        type metadata accessor for HTTPResponseHead._Storage();
        v18 = swift_allocObject();
        *(v18 + 16) = v12;
        *(v18 + 24) = v14;
        *(v18 + 32) = v16;
        *(v18 + 40) = v11;
        *(v18 + 42) = 1;
        v31 = sub_1000183C4(&qword_1002ADD48);
        v27 = v18;
        v28 = v17;
        v29 = a6;
        v30 = 0;
        v32 = 2;
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (a2 >> 16)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_1001C4780(a4);
  v21 = *(v7 + 56);
  if (v21)
  {
    v22 = result;
    v23 = v20;
    v24 = *(v7 + 48);
    sub_1001C5A08();
    v25 = *(v7 + 16);
    type metadata accessor for HTTPRequestHead._Storage();
    swift_allocObject();
    v26 = sub_1001BB78C(v22, v23, v24, v21, v11 | 0x10000u);
    v31 = sub_1000183C4(&qword_1002ADD40);
    v27 = v26;
    v28 = v25;
    v29 = a6;
    v30 = 0;
    v32 = 2;

LABEL_12:

    *(v7 + 48) = 0;
    *(v7 + 56) = 0;

    sub_10012F21C();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_100036918();
    }

    else
    {
      *(v7 + 16) = sub_100017B80();
    }

    result = swift_endAccess();
    if (*(v7 + 96))
    {

      ChannelHandlerContext.fireChannelRead(_:)();

      sub_100034310(&v27);
      *(v7 + 64) = a3 & 1;
      return v8 == 1;
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1001C4780(unsigned int a1)
{
  if (a1 < 0x22)
  {
    return qword_1002196A8[a1];
  }

  sub_1001F77B8(25);
  v2._object = 0x800000010022DCB0;
  v2._countAndFlagsBits = 0xD000000000000017;
  sub_1001F6CA8(v2);
  type metadata accessor for http_method(0);
  sub_1001F7A28();
  result = sub_1001F7AC8();
  __break(1u);
  return result;
}

uint64_t sub_1001C4860()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 24);
  *(v0 + 24) = 0;
  v4 = *(v0 + 113);
  v5 = *(v0 + 96);
  if (v4)
  {
    if (!v5)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v6 = 2 * (v3 != 0);
    v7 = &qword_1002ADD48;
LABEL_6:
    v9[0] = v3;
    v9[1] = v6;
    v9[2] = 0x200000000000000;
    v9[3] = sub_1000183C4(v7);
    v10 = 2;

    ChannelHandlerContext.fireChannelRead(_:)();

    result = sub_100034310(v9);
    v8 = *(v1 + 64);
    if (v8 != 2)
    {
      *(v1 + 114) = v8 & 1;
      *(v1 + 64) = 2;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v5)
  {
    v6 = 2 * (v3 != 0);
    v7 = &qword_1002ADD40;
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t HTTPDecoder.decoderAdded(context:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[13];
  v5[3] = v2;
  v5[4] = &off_100293FD0;
  v5[0] = v1;
  sub_10012F21C();

  sub_1001C49E4(v5, v3 + 16);
  swift_endAccess();
  return sub_1001C3A88();
}

uint64_t sub_1001C49E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002BBB20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HTTPDecoder.decoderRemoved(context:)()
{
  v1 = *(v0 + 104);
  sub_1001C3AC4();
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_100050548();
  sub_1001C49E4(v3, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_1001C4AAC(uint64_t a1)
{
  *(v1 + 96) = a1;

  sub_1001C3B30(0, 0, 1);
  return sub_1001C4B18(v1);
}

uint64_t sub_1001C4B28(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 10);
  v9 = *(a2 + 22);
  swift_beginAccess();
  *(v2 + 72) = v4;
  *(v2 + 80) = v6 | (v5 << 32);
  *(v2 + 94) = v9;
  *(v2 + 92) = v8;
  *(v2 + 88) = v7;

  *(v2 + 96) = a1;

  result = swift_beginAccess();
  if (v5 < v6)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(v4 + 24) + (v9 | (v8 << 8)) + v6;

  result = sub_1001C4CAC(v11, v11 + (v5 - v6), &v15);
  if (v13)
  {
    return sub_1001C4C54(v2);
  }

  v12 = v6 + v15;
  if (__CFADD__(v6, v15))
  {
    goto LABEL_8;
  }

  if (v5 >= v12)
  {
    *(a2 + 2) = v12;
    return sub_1001C4C54(v2);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1001C4C54(void *a1)
{
  swift_beginAccess();
  a1[9] = 0;
  a1[10] = 0;
  *(a1 + 87) = 0;

  a1[12] = 0;
}

uint64_t sub_1001C4CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1001C3B30(a1, a2, 0);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t HTTPDecoder.decode(context:buffer:)(uint64_t a1, uint64_t *a2)
{
  if ((*(v2 + 114) & 1) == 0)
  {
    sub_1001C4B28(a1, a2);
  }

  return 1;
}

uint64_t HTTPDecoder.decodeLast(context:buffer:seenEOF:)(uint64_t result, uint64_t a2, char a3)
{
  v7 = result;
  if ((*(v3 + 114) & 1) == 0)
  {
    v9 = *(a2 + 8);
    v8 = *(a2 + 12);
    if (v8 < v9)
    {
      goto LABEL_16;
    }

    if (v8 != v9)
    {
      result = HTTPDecoder.decode(context:buffer:)(result, a2);
      if (v4)
      {
        return 1;
      }
    }

    if (a3)
    {
      result = sub_1001C4AAC(v7);
      if (v4)
      {
        return 1;
      }
    }
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  if (v11 >= v10)
  {
    if (v11 != v10 && (a3 & 1) == 0)
    {
      if (*(v3 + 112))
      {
        if (*(v3 + 112) == 1)
        {
          v12 = v10 | (v11 << 32);
          v13 = *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48);
          v14 = *a2 | 0x8000000000000000;
          sub_10006A6F0();
          swift_allocError();
          *v15 = v14;
          *(v15 + 8) = v12;
          *(v15 + 16) = v13;
          *(v15 + 30) = 0;
          *(v15 + 28) = 0;
          *(v15 + 24) = 0;

          ChannelHandlerContext.fireErrorCaught(_:)();
        }
      }

      else
      {
        v16 = *(a2 + 16);
        v17 = *(a2 + 20);
        v18 = v10 | (v11 << 32);
        v19 = *(a2 + 22);
        v20[0] = *a2;
        v20[1] = v18;
        v23 = v19;
        v22 = v17;
        v21 = v16;
        v24 = 0;

        ChannelHandlerContext.fireChannelRead(_:)();
        sub_100034310(v20);
      }
    }

    return 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t HTTPDecoder.deinit()
{

  return v0;
}

uint64_t HTTPDecoder.__deallocating_deinit()
{
  HTTPDecoder.deinit();

  return swift_deallocClassInstance();
}

Swift::Int sub_1001C50B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

unint64_t sub_1001C5118()
{
  result = qword_1002BBB28;
  if (!qword_1002BBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB28);
  }

  return result;
}

unint64_t sub_1001C516C(uint64_t a1)
{
  result = sub_1001C5194();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001C5194()
{
  result = qword_1002BBB50;
  if (!qword_1002BBB50)
  {
    sub_100019BC4(&qword_1002B02F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB50);
  }

  return result;
}

unint64_t sub_1001C51FC()
{
  result = qword_1002BBB90;
  if (!qword_1002BBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB90);
  }

  return result;
}

unint64_t sub_1001C5254()
{
  result = qword_1002BBB98;
  if (!qword_1002BBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBB98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HTTPDecoderKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001C5378);
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

_BYTE *storeEnumTagSinglePayload for RemoveAfterUpgradeStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001C5520);
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

_BYTE *storeEnumTagSinglePayload for HTTPDecodingState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001C562CLL);
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

_BYTE *storeEnumTagSinglePayload for NIOHTTPDecoderError.BaseError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1001C5700);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001C573C()
{
  result = qword_1002BBEA0;
  if (!qword_1002BBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBEA0);
  }

  return result;
}

unint64_t sub_1001C5794()
{
  result = qword_1002BBEA8;
  if (!qword_1002BBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBEA8);
  }

  return result;
}

unint64_t sub_1001C57F8()
{
  result = qword_1002BBEB0;
  if (!qword_1002BBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBEB0);
  }

  return result;
}

uint64_t sub_1001C584C(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002BBB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001C58FC()
{

  return swift_beginAccess();
}

uint64_t sub_1001C591C()
{
}

uint64_t sub_1001C5990@<X0>(int a1@<W8>)
{
  *(v1 + 80) = a1;

  return swift_endAccess();
}

uint64_t sub_1001C59B4()
{

  return ByteBuffer.getSlice(at:length:)(v4, v1, v2, v0, v3);
}