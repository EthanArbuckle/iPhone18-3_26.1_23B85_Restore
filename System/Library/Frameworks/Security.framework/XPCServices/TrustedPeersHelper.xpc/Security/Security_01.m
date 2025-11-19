_BYTE *sub_100017EF0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100017F84(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100018044(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000180C0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_100017F84(_BYTE *a1, _BYTE *a2)
{
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_10001391C(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100018044(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_100216074();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_100216024();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1002161D4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000180C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_100216074();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_100216024();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100018144(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v42 = xmmword_10021D470;
  v10 = "Recoveryed Signing Key-%@";
  if (a1)
  {
    v10 = "Recovery Signing Private Key";
    v11 = 0xD00000000000001FLL;
  }

  else
  {
    v11 = 0xD00000000000001CLL;
  }

  v12 = sub_1001B43B8(v11, v10 | 0x8000000000000000);
  v13 = sub_1000139DC(v12 + 32, *(v12 + 2));
  v15 = v14;

  v43 = v13;
  v44 = v15;
  v16 = ccec_cp_384();
  if (!v16)
  {
    sub_100015220();
    swift_allocError();
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 3;
    swift_willThrow();
    goto LABEL_21;
  }

  v17 = v16;
  v45 = 0;
  v38 = objc_opt_self();
  v37 = [v38 ccec384Context];
  v18 = sub_100216074();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_100216044();
  v40 = a2;
  v41 = a3;
  v21 = sub_1001B43B8(a4, a5);
  if ((a5 & 0x1000000000000000) != 0)
  {
    v22 = sub_100216A44();
  }

  else if ((a5 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v22 = a4 & 0xFFFFFFFFFFFFLL;
  }

  sub_100012558(a2, a3);
  v23 = sub_1000139DC(v21 + 32, v22);
  v25 = v24;

  sub_100012558(v23, v25);
  sub_100012558(v23, v25);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {

    if (sub_100216034())
    {
      result = sub_100216064();
      if (__OFSUB__(0, result))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v27 = *(v18 + 48);
    v28 = *(v18 + 52);
    swift_allocObject();
    sub_100216014();
  }

  result = sub_100216034();
  if (result)
  {
    v29 = result;
    result = sub_100216064();
    v30 = -result;
    if (!__OFSUB__(0, result))
    {
      v31 = sub_100216054();
      if (v31 >= 56)
      {
        v32 = 56;
      }

      else
      {
        v32 = v31;
      }

      a5 = v29 + v30;
      sub_100012558(v23, v25);
      sub_1000161E0(&v40, v23, v25, &v43, &v45, a5, a5 + v32, a1 & 1, v17, v37, &v42);
      if (!v39)
      {

        sub_100002BF0(v23, v25);
        sub_100002BF0(v23, v25);
        sub_100002BF0(v23, v25);
        v34 = *(&v42 + 1);
        a5 = v42;
        v35 = v40;
        v36 = v41;
        sub_100012558(v42, *(&v42 + 1));
        sub_100002BF0(v35, v36);
        [v38 contextFree:v37];

        sub_100002BF0(a5, v34);
        sub_100002BF0(v43, v44);
        return a5;
      }

      sub_100002BF0(v23, v25);
      sub_100002BF0(v23, v25);
      sub_100002BF0(v23, v25);
      sub_100002BF0(v40, v41);
      [v38 contextFree:v37];

LABEL_21:
      sub_100002BF0(v42, *(&v42 + 1));
      sub_100002BF0(v43, v44);
      return a5;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  __break(1u);
  return result;
}

SecKeyRef sub_10001853C()
{
  sub_10001148C(&qword_100297D48, &qword_10021D758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D420;
  *(inited + 32) = kSecAttrKeyClass;
  *(inited + 40) = kSecAttrKeyClassPrivate;
  *(inited + 48) = kSecAttrKeyType;
  *(inited + 56) = kSecAttrKeyTypeEC;
  v1 = kSecAttrKeyClass;
  v2 = kSecAttrKeyClassPrivate;
  v3 = kSecAttrKeyType;
  v4 = kSecAttrKeyTypeEC;
  sub_100019468(inited, &qword_100297D58, &qword_10021D768, sub_100015974);
  swift_setDeallocating();
  sub_10001148C(&qword_100297D50, &qword_10021D760);
  swift_arrayDestroy();
  isa = sub_100216204().super.isa;
  type metadata accessor for CFString(0);
  sub_100019C24(&qword_1002978D0, type metadata accessor for CFString);
  v6 = sub_1002168C4().super.isa;

  v7 = SecKeyCreateWithData(isa, v6, 0);

  if (!v7)
  {
    sub_100015220();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 3;
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_100018728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_10029D690, &qword_10021D750);
    v3 = sub_100217144();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019C6C(v4, &v11, &unk_10029D970, &unk_10021D740);
      v5 = v11;
      result = sub_100015974(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000125AC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100018850()
{
  result = 0;
  type metadata accessor for CFString(0);
  sub_100019C24(&qword_1002978D0, type metadata accessor for CFString);
  isa = sub_1002168C4().super.isa;
  v1 = SecItemAdd(isa, &result);

  if (v1)
  {
    if (v1 != -25299)
    {
      goto LABEL_4;
    }

    sub_100015790(kSecClass, v6);
    sub_100012480(v6);
    v2 = sub_1002168C4().super.isa;
    v3 = sub_1002168C4().super.isa;

    v1 = SecItemUpdate(v2, v3);

    if (v1)
    {
LABEL_4:
      sub_100015220();
      swift_allocError();
      *v4 = v1;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      swift_willThrow();
    }
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_100018A14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 104) = v5;
  *(inited + 112) = kSecUseDataProtectionKeychain;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000100227BB0;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 200) = 0;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrApplicationLabel;
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10021D600;
  v7 = objc_allocWithZone(NSUUID);
  v8 = kSecClass;
  v9 = kSecClassKey;
  v10 = kSecAttrAccessible;
  v11 = kSecAttrAccessibleWhenUnlocked;
  v12 = kSecUseDataProtectionKeychain;
  v13 = kSecAttrAccessGroup;
  v14 = kSecAttrSynchronizable;
  v15 = kSecAttrApplicationLabel;
  v16 = [v7 init];
  v17 = [v16 UUIDString];

  v18 = sub_100216974();
  v20 = v19;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100019BD0();
  *(v6 + 32) = v18;
  *(v6 + 40) = v20;
  *(inited + 240) = sub_100216984();
  *(inited + 248) = v21;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecAttrLabel;
  *(inited + 280) = a3;
  *(inited + 288) = a4;
  *(inited + 304) = &type metadata for String;
  *(inited + 312) = kSecValueData;
  *(inited + 344) = &type metadata for Data;
  *(inited + 320) = a1;
  *(inited + 328) = a2;
  v22 = kSecAttrLabel;

  v23 = kSecValueData;
  sub_100012558(a1, a2);
  sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  v24 = sub_100018850();

  return v24 & 1;
}

uint64_t sub_100018D0C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v7;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 104) = v7;
  *(inited + 112) = kSecUseDataProtectionKeychain;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000100227BB0;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 200) = 0;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrLabel;
  *(inited + 240) = a3;
  *(inited + 248) = a4;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecAttrApplicationLabel;
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10021D600;
  v9 = objc_allocWithZone(NSUUID);
  v10 = kSecClass;
  v11 = kSecClassKey;
  v12 = kSecAttrAccessible;
  v13 = kSecAttrAccessibleWhenUnlocked;
  v14 = kSecUseDataProtectionKeychain;
  v15 = kSecAttrAccessGroup;
  v16 = kSecAttrSynchronizable;
  v17 = kSecAttrLabel;

  v18 = kSecAttrApplicationLabel;
  v19 = [v9 init];
  v20 = [v19 UUIDString];

  v21 = sub_100216974();
  v23 = v22;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100019BD0();
  *(v8 + 32) = v21;
  *(v8 + 40) = v23;
  *(inited + 280) = sub_100216984();
  *(inited + 288) = v24;
  *(inited + 304) = &type metadata for String;
  *(inited + 312) = kSecValueData;
  *(inited + 344) = &type metadata for Data;
  *(inited + 320) = a1;
  *(inited + 328) = a2;
  v25 = kSecValueData;
  sub_100012558(a1, a2);
  sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  v26 = sub_100018850();

  return v26 & 1;
}

unint64_t sub_10001900C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
    v3 = sub_100217144();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019C6C(v4, &v13, &qword_100297CF0, &qword_10021D6F8);
      v5 = v13;
      v6 = v14;
      result = sub_100015A28(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000125AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001913C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_100297D70, &unk_10021D780);
    v3 = sub_100217144();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100012558(v7, v8);
      result = sub_100015A28(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100019254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_100297CF8, &qword_10021D700);
    v3 = sub_100217144();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019C6C(v4, v13, &unk_1002983E0, &qword_10021D708);
      result = sub_100015AA0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000125AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100019468(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_10001148C(a2, a3);
    v7 = sub_100217144();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100019574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_10029D8F0, &qword_100226690);
    v3 = sub_100217144();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100015A28(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100019678(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100297D08, &qword_10021D710);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10001148C(&qword_100297D10, &qword_10021D718);
    v9 = sub_100217144();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_100019C6C(v11, v7, &qword_100297D08, &qword_10021D710);
      result = sub_100015B28(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_100216194();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100019860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_100297D88, &qword_10021D7A0);
    v3 = sub_100217144();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100015A28(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001999C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10001148C(a2, a3);
    v5 = sub_100217144();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100015A28(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100019A98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_100297D18, &qword_10021D720);
    v3 = sub_100217144();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019C6C(v4, &v16, &qword_100297D20, &qword_10021D728);
      v5 = v16;
      v6 = v17;
      result = sub_100015A28(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100019BD0()
{
  result = qword_100297D38;
  if (!qword_100297D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297D38);
  }

  return result;
}

uint64_t sub_100019C24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019C6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001148C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100019D04(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100019D20(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100019D34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100019D7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_100019DC0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_100019DEC()
{
  v0 = objc_allocWithZone(TPPolicyVersion);
  v1 = sub_100216964();
  v2 = [v0 initWithVersion:22 hash:v1];

  qword_1002B0318 = v2;
}

void sub_100019E60()
{
  v0 = objc_allocWithZone(TPPolicyVersion);
  v1 = sub_100216964();
  v2 = [v0 initWithVersion:5 hash:v1];

  qword_1002B0320 = v2;
}

uint64_t sub_100019ED4()
{
  sub_10001148C(&qword_100297D98, &unk_10021D9B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D860;
  v1 = objc_allocWithZone(TPPolicyVersion);
  v2 = sub_100216964();
  v3 = [v1 initWithVersion:1 hash:v2];

  *(v0 + 32) = v3;
  *(v0 + 40) = sub_10001A908;
  *(v0 + 48) = 0;
  *(v0 + 56) = sub_10001A924;
  *(v0 + 64) = 0;
  v4 = objc_allocWithZone(TPPolicyVersion);
  v5 = sub_100216964();
  v6 = [v4 initWithVersion:2 hash:v5];

  *(v0 + 72) = v6;
  *(v0 + 80) = sub_10001AFC8;
  *(v0 + 88) = 0;
  *(v0 + 96) = sub_10001AFE4;
  *(v0 + 104) = 0;
  v7 = objc_allocWithZone(TPPolicyVersion);
  v8 = sub_100216964();
  v9 = [v7 initWithVersion:3 hash:v8];

  *(v0 + 112) = v9;
  *(v0 + 120) = sub_10001B6E0;
  *(v0 + 128) = 0;
  *(v0 + 136) = sub_10001B6FC;
  *(v0 + 144) = 0;
  v10 = objc_allocWithZone(TPPolicyVersion);
  v11 = sub_100216964();
  v12 = [v10 initWithVersion:4 hash:v11];

  *(v0 + 152) = v12;
  *(v0 + 160) = sub_10001D9D8;
  *(v0 + 168) = 0;
  *(v0 + 176) = sub_10001D9F4;
  *(v0 + 184) = 0;
  v13 = objc_allocWithZone(TPPolicyVersion);
  v14 = sub_100216964();
  v15 = [v13 initWithVersion:5 hash:v14];

  *(v0 + 192) = v15;
  *(v0 + 200) = sub_10001FBE8;
  *(v0 + 208) = 0;
  *(v0 + 216) = sub_10001FC04;
  *(v0 + 224) = 0;
  v16 = objc_allocWithZone(TPPolicyVersion);
  v17 = sub_100216964();
  v18 = [v16 initWithVersion:6 hash:v17];

  *(v0 + 232) = v18;
  *(v0 + 240) = sub_100021F70;
  *(v0 + 248) = 0;
  *(v0 + 256) = sub_100021F8C;
  *(v0 + 264) = 0;
  v19 = objc_allocWithZone(TPPolicyVersion);
  v20 = sub_100216964();
  v21 = [v19 initWithVersion:7 hash:v20];

  *(v0 + 272) = v21;
  *(v0 + 280) = sub_1000242EC;
  *(v0 + 288) = 0;
  *(v0 + 296) = sub_100024308;
  *(v0 + 304) = 0;
  v22 = objc_allocWithZone(TPPolicyVersion);
  v23 = sub_100216964();
  v24 = [v22 initWithVersion:8 hash:v23];

  *(v0 + 312) = v24;
  *(v0 + 320) = sub_1000266DC;
  *(v0 + 328) = 0;
  *(v0 + 336) = sub_1000266F8;
  *(v0 + 344) = 0;
  v25 = objc_allocWithZone(TPPolicyVersion);
  v26 = sub_100216964();
  v27 = [v25 initWithVersion:9 hash:v26];

  *(v0 + 352) = v27;
  *(v0 + 360) = sub_100028D34;
  *(v0 + 368) = 0;
  *(v0 + 376) = sub_100028D50;
  *(v0 + 384) = 0;
  v28 = objc_allocWithZone(TPPolicyVersion);
  v29 = sub_100216964();
  v30 = [v28 initWithVersion:10 hash:v29];

  *(v0 + 392) = v30;
  *(v0 + 400) = sub_10002B41C;
  *(v0 + 408) = 0;
  *(v0 + 416) = sub_10002B438;
  *(v0 + 424) = 0;
  v31 = objc_allocWithZone(TPPolicyVersion);
  v32 = sub_100216964();
  v33 = [v31 initWithVersion:11 hash:v32];

  *(v0 + 432) = v33;
  *(v0 + 440) = sub_10002DB9C;
  *(v0 + 448) = 0;
  *(v0 + 456) = sub_10002DBB8;
  *(v0 + 464) = 0;
  v34 = objc_allocWithZone(TPPolicyVersion);
  v35 = sub_100216964();
  v36 = [v34 initWithVersion:12 hash:v35];

  *(v0 + 472) = v36;
  *(v0 + 480) = sub_100030414;
  *(v0 + 488) = 0;
  *(v0 + 496) = sub_100030430;
  *(v0 + 504) = 0;
  v37 = objc_allocWithZone(TPPolicyVersion);
  v38 = sub_100216964();
  v39 = [v37 initWithVersion:13 hash:v38];

  *(v0 + 512) = v39;
  *(v0 + 520) = sub_100032C8C;
  *(v0 + 528) = 0;
  *(v0 + 536) = sub_100032CA8;
  *(v0 + 544) = 0;
  v40 = objc_allocWithZone(TPPolicyVersion);
  v41 = sub_100216964();
  v42 = [v40 initWithVersion:15 hash:v41];

  *(v0 + 552) = v42;
  *(v0 + 560) = sub_1000355C8;
  *(v0 + 568) = 0;
  *(v0 + 576) = sub_1000355E4;
  *(v0 + 584) = 0;
  v43 = objc_allocWithZone(TPPolicyVersion);
  v44 = sub_100216964();
  v45 = [v43 initWithVersion:16 hash:v44];

  *(v0 + 592) = v45;
  *(v0 + 600) = sub_1000380C8;
  *(v0 + 608) = 0;
  *(v0 + 616) = sub_1000380E4;
  *(v0 + 624) = 0;
  v46 = objc_allocWithZone(TPPolicyVersion);
  v47 = sub_100216964();
  v48 = [v46 initWithVersion:17 hash:v47];

  *(v0 + 632) = v48;
  *(v0 + 640) = sub_10003AB10;
  *(v0 + 648) = 0;
  *(v0 + 656) = sub_10003AB2C;
  *(v0 + 664) = 0;
  v49 = objc_allocWithZone(TPPolicyVersion);
  v50 = sub_100216964();
  v51 = [v49 initWithVersion:18 hash:v50];

  *(v0 + 672) = v51;
  *(v0 + 680) = sub_10003D914;
  *(v0 + 688) = 0;
  *(v0 + 696) = sub_10003D930;
  *(v0 + 704) = 0;
  v52 = objc_allocWithZone(TPPolicyVersion);
  v53 = sub_100216964();
  v54 = [v52 initWithVersion:19 hash:v53];

  *(v0 + 712) = v54;
  *(v0 + 720) = sub_1000407DC;
  *(v0 + 728) = 0;
  *(v0 + 736) = sub_1000407F8;
  *(v0 + 744) = 0;
  v55 = objc_allocWithZone(TPPolicyVersion);
  v56 = sub_100216964();
  v57 = [v55 initWithVersion:20 hash:v56];

  *(v0 + 752) = v57;
  *(v0 + 760) = sub_10004370C;
  *(v0 + 768) = 0;
  *(v0 + 776) = sub_100043728;
  *(v0 + 784) = 0;
  v58 = objc_allocWithZone(TPPolicyVersion);
  v59 = sub_100216964();
  v60 = [v58 initWithVersion:21 hash:v59];

  *(v0 + 792) = v60;
  *(v0 + 800) = sub_10004663C;
  *(v0 + 808) = 0;
  *(v0 + 816) = sub_100046658;
  *(v0 + 824) = 0;
  v61 = objc_allocWithZone(TPPolicyVersion);
  v62 = sub_100216964();
  v63 = [v61 initWithVersion:22 hash:v62];

  *(v0 + 832) = v63;
  *(v0 + 840) = sub_100049654;
  *(v0 + 848) = 0;
  *(v0 + 856) = sub_100049670;
  *(v0 + 864) = 0;
  return v0;
}

id sub_10001A924()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D870;
  v1 = sub_100216964();
  v2 = sub_100216964();
  v3 = objc_opt_self();
  v4 = [v3 TPPBPolicyModelToCategoryWithPrefix:v1 category:v2];

  *(v0 + 32) = v4;
  v5 = sub_100216964();
  v6 = sub_100216964();
  v7 = [v3 TPPBPolicyModelToCategoryWithPrefix:v5 category:v6];

  *(v0 + 40) = v7;
  v8 = sub_100216964();
  v9 = sub_100216964();
  v10 = [v3 TPPBPolicyModelToCategoryWithPrefix:v8 category:v9];

  *(v0 + 48) = v10;
  v11 = sub_100216964();
  v12 = sub_100216964();
  v13 = [v3 TPPBPolicyModelToCategoryWithPrefix:v11 category:v12];

  *(v0 + 56) = v13;
  v14 = sub_100216964();
  v15 = sub_100216964();
  v16 = [v3 TPPBPolicyModelToCategoryWithPrefix:v14 category:v15];

  *(v0 + 64) = v16;
  v17 = sub_100216964();
  v18 = sub_100216964();
  v19 = [v3 TPPBPolicyModelToCategoryWithPrefix:v17 category:v18];

  *(v0 + 72) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10021D880;
  v21 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v23 = objc_opt_self();
  v24 = [v23 TPPBPolicyCategoriesByViewWithView:v21 categories:isa];

  *(v20 + 32) = v24;
  v25 = sub_100216964();
  v26 = sub_100216B14().super.isa;
  v27 = [v23 TPPBPolicyCategoriesByViewWithView:v25 categories:v26];

  *(v20 + 40) = v27;
  v28 = sub_100216964();
  v29 = sub_100216B14().super.isa;
  v30 = [v23 TPPBPolicyCategoriesByViewWithView:v28 categories:v29];

  *(v20 + 48) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10021D880;
  v32 = sub_100216964();
  v33 = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyIntroducersByCategoryWithCategory:v32 introducers:v33];

  *(v31 + 32) = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyIntroducersByCategoryWithCategory:v36 introducers:v37];

  *(v31 + 40) = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyIntroducersByCategoryWithCategory:v39 introducers:v40];

  *(v31 + 48) = v41;
  v53 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v42 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v43 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v44 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v45 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v46 = sub_100216B14().super.isa;
  v47 = sub_100216B14().super.isa;
  v48 = sub_100216B14().super.isa;
  v49 = sub_100216B14().super.isa;
  v50 = sub_100216B14().super.isa;
  v51 = [v53 initWithVersion:1 modelToCategory:v42 categoriesByView:v43 introducersByCategory:v44 redactions:v45 keyViewMapping:v46 userControllableViewList:v47 piggybackViews:v48 priorityViews:v49 inheritedExcludedViews:v50 hashAlgo:1];

  return v51;
}

id sub_10001AFE4()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D890;
  v1 = sub_100216964();
  v2 = sub_100216964();
  v3 = objc_opt_self();
  v4 = [v3 TPPBPolicyModelToCategoryWithPrefix:v1 category:v2];

  *(v0 + 32) = v4;
  v5 = sub_100216964();
  v6 = sub_100216964();
  v7 = [v3 TPPBPolicyModelToCategoryWithPrefix:v5 category:v6];

  *(v0 + 40) = v7;
  v8 = sub_100216964();
  v9 = sub_100216964();
  v10 = [v3 TPPBPolicyModelToCategoryWithPrefix:v8 category:v9];

  *(v0 + 48) = v10;
  v11 = sub_100216964();
  v12 = sub_100216964();
  v13 = [v3 TPPBPolicyModelToCategoryWithPrefix:v11 category:v12];

  *(v0 + 56) = v13;
  v14 = sub_100216964();
  v15 = sub_100216964();
  v16 = [v3 TPPBPolicyModelToCategoryWithPrefix:v14 category:v15];

  *(v0 + 64) = v16;
  v17 = sub_100216964();
  v18 = sub_100216964();
  v19 = [v3 TPPBPolicyModelToCategoryWithPrefix:v17 category:v18];

  *(v0 + 72) = v19;
  v20 = sub_100216964();
  v21 = sub_100216964();
  v22 = [v3 TPPBPolicyModelToCategoryWithPrefix:v20 category:v21];

  *(v0 + 80) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10021D880;
  v24 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v26 = objc_opt_self();
  v27 = [v26 TPPBPolicyCategoriesByViewWithView:v24 categories:isa];

  *(v23 + 32) = v27;
  v28 = sub_100216964();
  v29 = sub_100216B14().super.isa;
  v30 = [v26 TPPBPolicyCategoriesByViewWithView:v28 categories:v29];

  *(v23 + 40) = v30;
  v31 = sub_100216964();
  v32 = sub_100216B14().super.isa;
  v33 = [v26 TPPBPolicyCategoriesByViewWithView:v31 categories:v32];

  *(v23 + 48) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10021D880;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = objc_opt_self();
  v38 = [v37 TPPBPolicyIntroducersByCategoryWithCategory:v35 introducers:v36];

  *(v34 + 32) = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v37 TPPBPolicyIntroducersByCategoryWithCategory:v39 introducers:v40];

  *(v34 + 40) = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v37 TPPBPolicyIntroducersByCategoryWithCategory:v42 introducers:v43];

  *(v34 + 48) = v44;
  v56 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v45 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v46 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v47 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v48 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v49 = sub_100216B14().super.isa;
  v50 = sub_100216B14().super.isa;
  v51 = sub_100216B14().super.isa;
  v52 = sub_100216B14().super.isa;
  v53 = sub_100216B14().super.isa;
  v54 = [v56 initWithVersion:2 modelToCategory:v45 categoriesByView:v46 introducersByCategory:v47 redactions:v48 keyViewMapping:v49 userControllableViewList:v50 piggybackViews:v51 priorityViews:v52 inheritedExcludedViews:v53 hashAlgo:1];

  return v54;
}

id sub_10001B6FC()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D890;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v18 = v1;
  v1[8] = v17;
  v19 = sub_100216964();
  v20 = sub_100216964();
  v21 = [v4 TPPBPolicyModelToCategoryWithPrefix:v19 category:v20];

  v18[9] = v21;
  v22 = sub_100216964();
  v23 = sub_100216964();
  v24 = [v4 TPPBPolicyModelToCategoryWithPrefix:v22 category:v23];

  v18[10] = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10021D8A0;
  v26 = v25;
  v27 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v29 = objc_opt_self();
  v30 = [v29 TPPBPolicyCategoriesByViewWithView:v27 categories:isa];

  v26[4] = v30;
  v31 = sub_100216964();
  v32 = sub_100216B14().super.isa;
  v33 = [v29 TPPBPolicyCategoriesByViewWithView:v31 categories:v32];

  v26[5] = v33;
  v34 = sub_100216964();
  v35 = sub_100216B14().super.isa;
  v36 = [v29 TPPBPolicyCategoriesByViewWithView:v34 categories:v35];

  v26[6] = v36;
  v37 = sub_100216964();
  v38 = sub_100216B14().super.isa;
  v39 = [v29 TPPBPolicyCategoriesByViewWithView:v37 categories:v38];

  v26[7] = v39;
  v40 = sub_100216964();
  v41 = sub_100216B14().super.isa;
  v42 = [v29 TPPBPolicyCategoriesByViewWithView:v40 categories:v41];

  v26[8] = v42;
  v43 = sub_100216964();
  v44 = sub_100216B14().super.isa;
  v45 = [v29 TPPBPolicyCategoriesByViewWithView:v43 categories:v44];

  v26[9] = v45;
  v46 = sub_100216964();
  v47 = sub_100216B14().super.isa;
  v48 = [v29 TPPBPolicyCategoriesByViewWithView:v46 categories:v47];

  v26[10] = v48;
  v49 = sub_100216964();
  v50 = sub_100216B14().super.isa;
  v51 = [v29 TPPBPolicyCategoriesByViewWithView:v49 categories:v50];

  v26[11] = v51;
  v52 = sub_100216964();
  v53 = sub_100216B14().super.isa;
  v54 = [v29 TPPBPolicyCategoriesByViewWithView:v52 categories:v53];

  v26[12] = v54;
  v55 = sub_100216964();
  v56 = sub_100216B14().super.isa;
  v57 = [v29 TPPBPolicyCategoriesByViewWithView:v55 categories:v56];

  v26[13] = v57;
  v58 = sub_100216964();
  v59 = sub_100216B14().super.isa;
  v60 = [v29 TPPBPolicyCategoriesByViewWithView:v58 categories:v59];

  v26[14] = v60;
  v61 = sub_100216964();
  v62 = sub_100216B14().super.isa;
  v63 = [v29 TPPBPolicyCategoriesByViewWithView:v61 categories:v62];

  v26[15] = v63;
  v64 = sub_100216964();
  v65 = sub_100216B14().super.isa;
  v66 = [v29 TPPBPolicyCategoriesByViewWithView:v64 categories:v65];

  v26[16] = v66;
  v67 = sub_100216964();
  v68 = sub_100216B14().super.isa;
  v69 = [v29 TPPBPolicyCategoriesByViewWithView:v67 categories:v68];

  v26[17] = v69;
  v70 = sub_100216964();
  v71 = sub_100216B14().super.isa;
  v72 = [v29 TPPBPolicyCategoriesByViewWithView:v70 categories:v71];

  v26[18] = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_10021D8B0;
  v74 = v73;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = objc_opt_self();
  v78 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v75 introducers:v76];

  v74[4] = v78;
  v79 = sub_100216964();
  v80 = sub_100216B14().super.isa;
  v81 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v79 introducers:v80];

  v74[5] = v81;
  v82 = sub_100216964();
  v83 = sub_100216B14().super.isa;
  v84 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v82 introducers:v83];

  v74[6] = v84;
  v85 = sub_100216964();
  v86 = sub_100216B14().super.isa;
  v87 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v85 introducers:v86];

  v74[7] = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_10021D8C0;
  v89 = v88;
  v90 = objc_opt_self();
  v91 = sub_100216964();
  v92 = sub_100216964();
  v93 = [v90 fieldMatch:v91 fieldRegex:v92];

  v94 = sub_100216964();
  v95 = objc_opt_self();
  v96 = [v95 TPPBPolicyKeyViewMappingWithView:v94 matchingRule:v93];

  v89[4] = v96;
  v97 = sub_100216964();
  v98 = sub_100216964();
  v99 = [v90 fieldMatch:v97 fieldRegex:v98];

  v100 = sub_100216964();
  v101 = [v95 TPPBPolicyKeyViewMappingWithView:v100 matchingRule:v99];

  v89[5] = v101;
  v102 = sub_100216964();
  v103 = sub_100216964();
  v104 = [v90 fieldMatch:v102 fieldRegex:v103];

  v105 = sub_100216964();
  v106 = [v95 TPPBPolicyKeyViewMappingWithView:v105 matchingRule:v104];

  v89[6] = v106;
  v107 = sub_100216964();
  v108 = sub_100216964();
  v109 = [v90 fieldMatch:v107 fieldRegex:v108];

  v110 = sub_100216964();
  v111 = [v95 TPPBPolicyKeyViewMappingWithView:v110 matchingRule:v109];

  v89[7] = v111;
  v112 = sub_100216964();
  v113 = sub_100216964();
  v114 = [v90 fieldMatch:v112 fieldRegex:v113];

  v115 = sub_100216964();
  v116 = [v95 TPPBPolicyKeyViewMappingWithView:v115 matchingRule:v114];

  v89[8] = v116;
  v117 = sub_100216964();
  v118 = sub_100216964();
  v119 = [v90 fieldMatch:v117 fieldRegex:v118];

  v120 = sub_100216964();
  v121 = [v95 TPPBPolicyKeyViewMappingWithView:v120 matchingRule:v119];

  v89[9] = v121;
  v122 = sub_100216964();
  v123 = sub_100216964();
  v124 = [v90 fieldMatch:v122 fieldRegex:v123];

  v125 = sub_100216964();
  v126 = [v95 TPPBPolicyKeyViewMappingWithView:v125 matchingRule:v124];

  v89[10] = v126;
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_10021D880;
  v128 = sub_100216964();
  v129 = sub_100216964();
  v130 = [v90 fieldMatch:v128 fieldRegex:v129];

  *(v127 + 32) = v130;
  v131 = sub_100216964();
  v132 = sub_100216964();
  v133 = [v90 fieldMatch:v131 fieldRegex:v132];

  *(v127 + 40) = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v90 fieldMatch:v134 fieldRegex:v135];

  *(v127 + 48) = v136;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v137 = sub_100216B14().super.isa;

  v138 = [v90 orMatch:v137];

  v139 = sub_100216964();
  v140 = [v95 TPPBPolicyKeyViewMappingWithView:v139 matchingRule:v138];

  v89[11] = v140;
  v141 = sub_100216964();
  v142 = sub_100216964();
  v143 = [v90 fieldMatch:v141 fieldRegex:v142];

  v144 = sub_100216964();
  v145 = [v95 TPPBPolicyKeyViewMappingWithView:v144 matchingRule:v143];

  v89[12] = v145;
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_10021D8B0;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_10021D8D0;
  v148 = sub_100216964();
  v149 = sub_100216964();
  v150 = [v90 fieldMatch:v148 fieldRegex:v149];

  *(v147 + 32) = v150;
  v151 = sub_100216964();
  v152 = sub_100216964();
  v153 = [v90 fieldMatch:v151 fieldRegex:v152];

  *(v147 + 40) = v153;
  v154 = sub_100216B14().super.isa;

  v155 = [v90 andMatch:v154];

  *(v146 + 32) = v155;
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_10021D8D0;
  v157 = sub_100216964();
  v158 = sub_100216964();
  v159 = [v90 fieldMatch:v157 fieldRegex:v158];

  *(v156 + 32) = v159;
  v160 = sub_100216964();
  v161 = sub_100216964();
  v162 = [v90 fieldMatch:v160 fieldRegex:v161];

  *(v156 + 40) = v162;
  v163 = sub_100216B14().super.isa;

  v164 = [v90 andMatch:v163];

  *(v146 + 40) = v164;
  v165 = sub_100216964();
  v166 = sub_100216964();
  v167 = [v90 fieldMatch:v165 fieldRegex:v166];

  *(v146 + 48) = v167;
  v168 = sub_100216964();
  v169 = sub_100216964();
  v170 = [v90 fieldMatch:v168 fieldRegex:v169];

  *(v146 + 56) = v170;
  v171 = sub_100216B14().super.isa;

  v172 = [v90 orMatch:v171];

  v173 = sub_100216964();
  v174 = [v95 TPPBPolicyKeyViewMappingWithView:v173 matchingRule:v172];

  v89[13] = v174;
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_10021D8D0;
  v176 = sub_100216964();
  v177 = sub_100216964();
  v178 = [v90 fieldMatch:v176 fieldRegex:v177];

  *(v175 + 32) = v178;
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_10021D880;
  v180 = sub_100216964();
  v181 = sub_100216964();
  v182 = [v90 fieldMatch:v180 fieldRegex:v181];

  *(v179 + 32) = v182;
  v183 = sub_100216964();
  v184 = sub_100216964();
  v185 = [v90 fieldMatch:v183 fieldRegex:v184];

  *(v179 + 40) = v185;
  v186 = sub_100216964();
  v187 = sub_100216964();
  v188 = [v90 fieldMatch:v186 fieldRegex:v187];

  *(v179 + 48) = v188;
  v189 = sub_100216B14().super.isa;

  v190 = [v90 andMatch:v189];

  *(v175 + 40) = v190;
  v191 = sub_100216B14().super.isa;

  v192 = [v90 orMatch:v191];

  v193 = sub_100216964();
  v194 = [v95 TPPBPolicyKeyViewMappingWithView:v193 matchingRule:v192];

  v89[14] = v194;
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_10021D8E0;
  v196 = sub_100216964();
  v197 = sub_100216964();
  v198 = [v90 fieldMatch:v196 fieldRegex:v197];

  *(v195 + 32) = v198;
  v199 = sub_100216964();
  v200 = sub_100216964();
  v201 = [v90 fieldMatch:v199 fieldRegex:v200];

  *(v195 + 40) = v201;
  v202 = sub_100216964();
  v203 = sub_100216964();
  v204 = [v90 fieldMatch:v202 fieldRegex:v203];

  *(v195 + 48) = v204;
  v205 = sub_100216964();
  v206 = sub_100216964();
  v207 = [v90 fieldMatch:v205 fieldRegex:v206];

  *(v195 + 56) = v207;
  v208 = sub_100216964();
  v209 = sub_100216964();
  v210 = [v90 fieldMatch:v208 fieldRegex:v209];

  *(v195 + 64) = v210;
  v211 = sub_100216964();
  v212 = sub_100216964();
  v213 = [v90 fieldMatch:v211 fieldRegex:v212];

  *(v195 + 72) = v213;
  v214 = sub_100216964();
  v215 = sub_100216964();
  v216 = [v90 fieldMatch:v214 fieldRegex:v215];

  *(v195 + 80) = v216;
  v217 = sub_100216964();
  v218 = sub_100216964();
  v219 = [v90 fieldMatch:v217 fieldRegex:v218];

  *(v195 + 88) = v219;
  v220 = sub_100216964();
  v221 = sub_100216964();
  v222 = [v90 fieldMatch:v220 fieldRegex:v221];

  *(v195 + 96) = v222;
  v223 = sub_100216964();
  v224 = sub_100216964();
  v225 = [v90 fieldMatch:v223 fieldRegex:v224];

  *(v195 + 104) = v225;
  v226 = sub_100216964();
  v227 = sub_100216964();
  v228 = [v90 fieldMatch:v226 fieldRegex:v227];

  *(v195 + 112) = v228;
  v229 = sub_100216964();
  v230 = sub_100216964();
  v231 = [v90 fieldMatch:v229 fieldRegex:v230];

  *(v195 + 120) = v231;
  v232 = sub_100216B14().super.isa;

  v233 = [v90 orMatch:v232];

  v234 = sub_100216964();
  v235 = [v95 TPPBPolicyKeyViewMappingWithView:v234 matchingRule:v233];

  v89[15] = v235;
  v236 = sub_100216964();
  v237 = sub_100216964();
  v238 = [v90 fieldMatch:v236 fieldRegex:v237];

  v239 = sub_100216964();
  v240 = [v95 TPPBPolicyKeyViewMappingWithView:v239 matchingRule:v238];

  v89[16] = v240;
  v241 = sub_100216964();
  v242 = sub_100216964();
  v243 = [v90 fieldMatch:v241 fieldRegex:v242];

  v244 = sub_100216964();
  v245 = [v95 TPPBPolicyKeyViewMappingWithView:v244 matchingRule:v243];

  v89[17] = v245;
  v246 = swift_allocObject();
  *(v246 + 16) = xmmword_10021D880;
  v247 = sub_100216964();
  v248 = sub_100216964();
  v249 = [v90 fieldMatch:v247 fieldRegex:v248];

  *(v246 + 32) = v249;
  v250 = sub_100216964();
  v251 = sub_100216964();
  v252 = [v90 fieldMatch:v250 fieldRegex:v251];

  *(v246 + 40) = v252;
  v253 = sub_100216964();
  v254 = sub_100216964();
  v255 = [v90 fieldMatch:v253 fieldRegex:v254];

  *(v246 + 48) = v255;
  v256 = sub_100216B14().super.isa;

  v257 = [v90 orMatch:v256];

  v258 = sub_100216964();
  v259 = [v95 TPPBPolicyKeyViewMappingWithView:v258 matchingRule:v257];

  v89[18] = v259;
  v260 = sub_100216964();
  v261 = sub_100216964();
  v262 = [v90 fieldMatch:v260 fieldRegex:v261];

  v263 = sub_100216964();
  v264 = [v95 TPPBPolicyKeyViewMappingWithView:v263 matchingRule:v262];

  v89[19] = v264;
  v276 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v265 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v266 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v267 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v268 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v269 = sub_100216B14().super.isa;

  v270 = sub_100216B14().super.isa;
  v271 = sub_100216B14().super.isa;
  v272 = sub_100216B14().super.isa;
  v273 = sub_100216B14().super.isa;
  v274 = [v276 initWithVersion:3 modelToCategory:v265 categoriesByView:v266 introducersByCategory:v267 redactions:v268 keyViewMapping:v269 userControllableViewList:v270 piggybackViews:v271 priorityViews:v272 inheritedExcludedViews:v273 hashAlgo:1];

  return v274;
}

id sub_10001D9F4()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D890;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021D8F0;
  v25 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v27 = objc_opt_self();
  v28 = [v27 TPPBPolicyCategoriesByViewWithView:v25 categories:isa];

  *(v24 + 32) = v28;
  v29 = sub_100216964();
  v30 = sub_100216B14().super.isa;
  v31 = [v27 TPPBPolicyCategoriesByViewWithView:v29 categories:v30];

  *(v24 + 40) = v31;
  v32 = sub_100216964();
  v33 = sub_100216B14().super.isa;
  v34 = [v27 TPPBPolicyCategoriesByViewWithView:v32 categories:v33];

  *(v24 + 48) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v27 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v24 + 56) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v27 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v24 + 64) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v27 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v24 + 72) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v27 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v24 + 80) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v27 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v24 + 88) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v27 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v24 + 96) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v27 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v24 + 104) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v27 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v24 + 112) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v27 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v24 + 120) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v27 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v24 + 128) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v27 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v24 + 136) = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_10021D8B0;
  v69 = v68;
  v70 = sub_100216964();
  v71 = sub_100216B14().super.isa;
  v72 = objc_opt_self();
  v73 = [v72 TPPBPolicyIntroducersByCategoryWithCategory:v70 introducers:v71];

  v69[4] = v73;
  v74 = sub_100216964();
  v75 = sub_100216B14().super.isa;
  v76 = [v72 TPPBPolicyIntroducersByCategoryWithCategory:v74 introducers:v75];

  v69[5] = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v72 TPPBPolicyIntroducersByCategoryWithCategory:v77 introducers:v78];

  v69[6] = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v72 TPPBPolicyIntroducersByCategoryWithCategory:v80 introducers:v81];

  v69[7] = v82;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_10021D8A0;
  v84 = v83;
  v85 = objc_opt_self();
  v86 = sub_100216964();
  v87 = sub_100216964();
  v88 = [v85 fieldMatch:v86 fieldRegex:v87];

  v89 = sub_100216964();
  v90 = objc_opt_self();
  v91 = [v90 TPPBPolicyKeyViewMappingWithView:v89 matchingRule:v88];

  v84[4] = v91;
  v92 = sub_100216964();
  v93 = sub_100216964();
  v94 = [v85 fieldMatch:v92 fieldRegex:v93];

  v95 = sub_100216964();
  v96 = [v90 TPPBPolicyKeyViewMappingWithView:v95 matchingRule:v94];

  v84[5] = v96;
  v97 = sub_100216964();
  v98 = sub_100216964();
  v99 = [v85 fieldMatch:v97 fieldRegex:v98];

  v100 = sub_100216964();
  v101 = [v90 TPPBPolicyKeyViewMappingWithView:v100 matchingRule:v99];

  v84[6] = v101;
  v102 = sub_100216964();
  v103 = sub_100216964();
  v104 = [v85 fieldMatch:v102 fieldRegex:v103];

  v105 = sub_100216964();
  v106 = [v90 TPPBPolicyKeyViewMappingWithView:v105 matchingRule:v104];

  v84[7] = v106;
  v107 = sub_100216964();
  v108 = sub_100216964();
  v109 = [v85 fieldMatch:v107 fieldRegex:v108];

  v110 = sub_100216964();
  v111 = [v90 TPPBPolicyKeyViewMappingWithView:v110 matchingRule:v109];

  v84[8] = v111;
  v112 = sub_100216964();
  v113 = sub_100216964();
  v114 = [v85 fieldMatch:v112 fieldRegex:v113];

  v115 = sub_100216964();
  v116 = [v90 TPPBPolicyKeyViewMappingWithView:v115 matchingRule:v114];

  v84[9] = v116;
  v117 = sub_100216964();
  v118 = sub_100216964();
  v119 = [v85 fieldMatch:v117 fieldRegex:v118];

  v120 = sub_100216964();
  v121 = [v90 TPPBPolicyKeyViewMappingWithView:v120 matchingRule:v119];

  v84[10] = v121;
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_10021D880;
  v123 = sub_100216964();
  v124 = sub_100216964();
  v125 = [v85 fieldMatch:v123 fieldRegex:v124];

  *(v122 + 32) = v125;
  v126 = sub_100216964();
  v127 = sub_100216964();
  v128 = [v85 fieldMatch:v126 fieldRegex:v127];

  *(v122 + 40) = v128;
  v129 = sub_100216964();
  v130 = sub_100216964();
  v131 = [v85 fieldMatch:v129 fieldRegex:v130];

  *(v122 + 48) = v131;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v132 = sub_100216B14().super.isa;

  v133 = [v85 orMatch:v132];

  v134 = sub_100216964();
  v135 = [v90 TPPBPolicyKeyViewMappingWithView:v134 matchingRule:v133];

  v84[11] = v135;
  v136 = sub_100216964();
  v137 = sub_100216964();
  v138 = [v85 fieldMatch:v136 fieldRegex:v137];

  v139 = sub_100216964();
  v140 = [v90 TPPBPolicyKeyViewMappingWithView:v139 matchingRule:v138];

  v84[12] = v140;
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_10021D8B0;
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_10021D8D0;
  v143 = sub_100216964();
  v144 = sub_100216964();
  v145 = [v85 fieldMatch:v143 fieldRegex:v144];

  *(v142 + 32) = v145;
  v146 = sub_100216964();
  v147 = sub_100216964();
  v148 = [v85 fieldMatch:v146 fieldRegex:v147];

  *(v142 + 40) = v148;
  v149 = sub_100216B14().super.isa;

  v150 = [v85 andMatch:v149];

  *(v141 + 32) = v150;
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_10021D8D0;
  v152 = sub_100216964();
  v153 = sub_100216964();
  v154 = [v85 fieldMatch:v152 fieldRegex:v153];

  *(v151 + 32) = v154;
  v155 = sub_100216964();
  v156 = sub_100216964();
  v157 = [v85 fieldMatch:v155 fieldRegex:v156];

  *(v151 + 40) = v157;
  v158 = sub_100216B14().super.isa;

  v159 = [v85 andMatch:v158];

  *(v141 + 40) = v159;
  v160 = sub_100216964();
  v161 = sub_100216964();
  v162 = [v85 fieldMatch:v160 fieldRegex:v161];

  *(v141 + 48) = v162;
  v163 = sub_100216964();
  v164 = sub_100216964();
  v165 = [v85 fieldMatch:v163 fieldRegex:v164];

  *(v141 + 56) = v165;
  v166 = sub_100216B14().super.isa;

  v167 = [v85 orMatch:v166];

  v168 = sub_100216964();
  v169 = [v90 TPPBPolicyKeyViewMappingWithView:v168 matchingRule:v167];

  v84[13] = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_10021D8D0;
  v171 = sub_100216964();
  v172 = sub_100216964();
  v173 = [v85 fieldMatch:v171 fieldRegex:v172];

  *(v170 + 32) = v173;
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_10021D880;
  v175 = sub_100216964();
  v176 = sub_100216964();
  v177 = [v85 fieldMatch:v175 fieldRegex:v176];

  *(v174 + 32) = v177;
  v178 = sub_100216964();
  v179 = sub_100216964();
  v180 = [v85 fieldMatch:v178 fieldRegex:v179];

  *(v174 + 40) = v180;
  v181 = sub_100216964();
  v182 = sub_100216964();
  v183 = [v85 fieldMatch:v181 fieldRegex:v182];

  *(v174 + 48) = v183;
  v184 = sub_100216B14().super.isa;

  v185 = [v85 andMatch:v184];

  *(v170 + 40) = v185;
  v186 = sub_100216B14().super.isa;

  v187 = [v85 orMatch:v186];

  v188 = sub_100216964();
  v189 = [v90 TPPBPolicyKeyViewMappingWithView:v188 matchingRule:v187];

  v84[14] = v189;
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_10021D8E0;
  v191 = sub_100216964();
  v192 = sub_100216964();
  v193 = [v85 fieldMatch:v191 fieldRegex:v192];

  *(v190 + 32) = v193;
  v194 = sub_100216964();
  v195 = sub_100216964();
  v196 = [v85 fieldMatch:v194 fieldRegex:v195];

  *(v190 + 40) = v196;
  v197 = sub_100216964();
  v198 = sub_100216964();
  v199 = [v85 fieldMatch:v197 fieldRegex:v198];

  *(v190 + 48) = v199;
  v200 = sub_100216964();
  v201 = sub_100216964();
  v202 = [v85 fieldMatch:v200 fieldRegex:v201];

  *(v190 + 56) = v202;
  v203 = sub_100216964();
  v204 = sub_100216964();
  v205 = [v85 fieldMatch:v203 fieldRegex:v204];

  *(v190 + 64) = v205;
  v206 = sub_100216964();
  v207 = sub_100216964();
  v208 = [v85 fieldMatch:v206 fieldRegex:v207];

  *(v190 + 72) = v208;
  v209 = sub_100216964();
  v210 = sub_100216964();
  v211 = [v85 fieldMatch:v209 fieldRegex:v210];

  *(v190 + 80) = v211;
  v212 = sub_100216964();
  v213 = sub_100216964();
  v214 = [v85 fieldMatch:v212 fieldRegex:v213];

  *(v190 + 88) = v214;
  v215 = sub_100216964();
  v216 = sub_100216964();
  v217 = [v85 fieldMatch:v215 fieldRegex:v216];

  *(v190 + 96) = v217;
  v218 = sub_100216964();
  v219 = sub_100216964();
  v220 = [v85 fieldMatch:v218 fieldRegex:v219];

  *(v190 + 104) = v220;
  v221 = sub_100216964();
  v222 = sub_100216964();
  v223 = [v85 fieldMatch:v221 fieldRegex:v222];

  *(v190 + 112) = v223;
  v224 = sub_100216964();
  v225 = sub_100216964();
  v226 = [v85 fieldMatch:v224 fieldRegex:v225];

  *(v190 + 120) = v226;
  v227 = sub_100216B14().super.isa;

  v228 = [v85 orMatch:v227];

  v229 = sub_100216964();
  v230 = [v90 TPPBPolicyKeyViewMappingWithView:v229 matchingRule:v228];

  v84[15] = v230;
  v231 = sub_100216964();
  v232 = sub_100216964();
  v233 = [v85 fieldMatch:v231 fieldRegex:v232];

  v234 = sub_100216964();
  v235 = [v90 TPPBPolicyKeyViewMappingWithView:v234 matchingRule:v233];

  v84[16] = v235;
  v236 = sub_100216964();
  v237 = sub_100216964();
  v238 = [v85 fieldMatch:v236 fieldRegex:v237];

  v239 = sub_100216964();
  v240 = [v90 TPPBPolicyKeyViewMappingWithView:v239 matchingRule:v238];

  v84[17] = v240;
  v241 = swift_allocObject();
  *(v241 + 16) = xmmword_10021D880;
  v242 = sub_100216964();
  v243 = sub_100216964();
  v244 = [v85 fieldMatch:v242 fieldRegex:v243];

  *(v241 + 32) = v244;
  v245 = sub_100216964();
  v246 = sub_100216964();
  v247 = [v85 fieldMatch:v245 fieldRegex:v246];

  *(v241 + 40) = v247;
  v248 = sub_100216964();
  v249 = sub_100216964();
  v250 = [v85 fieldMatch:v248 fieldRegex:v249];

  *(v241 + 48) = v250;
  v251 = sub_100216B14().super.isa;

  v252 = [v85 orMatch:v251];

  v253 = sub_100216964();
  v254 = [v90 TPPBPolicyKeyViewMappingWithView:v253 matchingRule:v252];

  v84[18] = v254;
  v266 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v255 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v256 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v257 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v258 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v259 = sub_100216B14().super.isa;

  v260 = sub_100216B14().super.isa;
  v261 = sub_100216B14().super.isa;
  v262 = sub_100216B14().super.isa;
  v263 = sub_100216B14().super.isa;
  v264 = [v266 initWithVersion:4 modelToCategory:v255 categoriesByView:v256 introducersByCategory:v257 redactions:v258 keyViewMapping:v259 userControllableViewList:v260 piggybackViews:v261 priorityViews:v262 inheritedExcludedViews:v263 hashAlgo:1];

  return v264;
}

id sub_10001FC04()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D900;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10021D8F0;
  v28 = v27;
  v29 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v31 = objc_opt_self();
  v32 = [v31 TPPBPolicyCategoriesByViewWithView:v29 categories:isa];

  v28[4] = v32;
  v33 = sub_100216964();
  v34 = sub_100216B14().super.isa;
  v35 = [v31 TPPBPolicyCategoriesByViewWithView:v33 categories:v34];

  v28[5] = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v31 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  v28[6] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v31 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  v28[7] = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v31 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  v28[8] = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v31 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  v28[9] = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v31 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  v28[10] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v31 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  v28[11] = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v31 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  v28[12] = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v31 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  v28[13] = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v31 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  v63 = v28;
  v28[14] = v62;
  v64 = sub_100216964();
  v65 = sub_100216B14().super.isa;
  v66 = [v31 TPPBPolicyCategoriesByViewWithView:v64 categories:v65];

  v63[15] = v66;
  v67 = sub_100216964();
  v68 = sub_100216B14().super.isa;
  v69 = [v31 TPPBPolicyCategoriesByViewWithView:v67 categories:v68];

  v63[16] = v69;
  v70 = sub_100216964();
  v71 = sub_100216B14().super.isa;
  v72 = [v31 TPPBPolicyCategoriesByViewWithView:v70 categories:v71];

  v63[17] = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_10021D8B0;
  v74 = v73;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = objc_opt_self();
  v78 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v75 introducers:v76];

  v74[4] = v78;
  v79 = sub_100216964();
  v80 = sub_100216B14().super.isa;
  v81 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v79 introducers:v80];

  v74[5] = v81;
  v82 = sub_100216964();
  v83 = sub_100216B14().super.isa;
  v84 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v82 introducers:v83];

  v74[6] = v84;
  v85 = sub_100216964();
  v86 = sub_100216B14().super.isa;
  v87 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v85 introducers:v86];

  v74[7] = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_10021D8C0;
  v89 = v88;
  v90 = objc_opt_self();
  v91 = sub_100216964();
  v92 = sub_100216964();
  v93 = [v90 fieldMatch:v91 fieldRegex:v92];

  v94 = sub_100216964();
  v95 = objc_opt_self();
  v96 = [v95 TPPBPolicyKeyViewMappingWithView:v94 matchingRule:v93];

  v89[4] = v96;
  v97 = sub_100216964();
  v98 = sub_100216964();
  v99 = [v90 fieldMatch:v97 fieldRegex:v98];

  v100 = sub_100216964();
  v101 = [v95 TPPBPolicyKeyViewMappingWithView:v100 matchingRule:v99];

  v89[5] = v101;
  v102 = sub_100216964();
  v103 = sub_100216964();
  v104 = [v90 fieldMatch:v102 fieldRegex:v103];

  v105 = sub_100216964();
  v106 = [v95 TPPBPolicyKeyViewMappingWithView:v105 matchingRule:v104];

  v89[6] = v106;
  v107 = sub_100216964();
  v108 = sub_100216964();
  v109 = [v90 fieldMatch:v107 fieldRegex:v108];

  v110 = sub_100216964();
  v111 = [v95 TPPBPolicyKeyViewMappingWithView:v110 matchingRule:v109];

  v89[7] = v111;
  v112 = sub_100216964();
  v113 = sub_100216964();
  v114 = [v90 fieldMatch:v112 fieldRegex:v113];

  v115 = sub_100216964();
  v116 = [v95 TPPBPolicyKeyViewMappingWithView:v115 matchingRule:v114];

  v89[8] = v116;
  v117 = sub_100216964();
  v118 = sub_100216964();
  v119 = [v90 fieldMatch:v117 fieldRegex:v118];

  v120 = sub_100216964();
  v121 = [v95 TPPBPolicyKeyViewMappingWithView:v120 matchingRule:v119];

  v89[9] = v121;
  v122 = sub_100216964();
  v123 = sub_100216964();
  v124 = [v90 fieldMatch:v122 fieldRegex:v123];

  v125 = sub_100216964();
  v126 = [v95 TPPBPolicyKeyViewMappingWithView:v125 matchingRule:v124];

  v89[10] = v126;
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_10021D880;
  v128 = sub_100216964();
  v129 = sub_100216964();
  v130 = [v90 fieldMatch:v128 fieldRegex:v129];

  *(v127 + 32) = v130;
  v131 = sub_100216964();
  v132 = sub_100216964();
  v133 = [v90 fieldMatch:v131 fieldRegex:v132];

  *(v127 + 40) = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v90 fieldMatch:v134 fieldRegex:v135];

  *(v127 + 48) = v136;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v137 = sub_100216B14().super.isa;

  v138 = [v90 orMatch:v137];

  v139 = sub_100216964();
  v280 = v95;
  v140 = [v95 TPPBPolicyKeyViewMappingWithView:v139 matchingRule:v138];

  v89[11] = v140;
  v141 = sub_100216964();
  v142 = sub_100216964();
  v143 = [v90 fieldMatch:v141 fieldRegex:v142];

  v144 = sub_100216964();
  v145 = [v95 TPPBPolicyKeyViewMappingWithView:v144 matchingRule:v143];

  v89[12] = v145;
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_10021D8B0;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_10021D8D0;
  v148 = sub_100216964();
  v149 = sub_100216964();
  v150 = [v90 fieldMatch:v148 fieldRegex:v149];

  *(v147 + 32) = v150;
  v151 = sub_100216964();
  v152 = sub_100216964();
  v153 = [v90 fieldMatch:v151 fieldRegex:v152];

  *(v147 + 40) = v153;
  v154 = sub_100216B14().super.isa;

  v155 = [v90 andMatch:v154];

  *(v146 + 32) = v155;
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_10021D8D0;
  v157 = sub_100216964();
  v158 = sub_100216964();
  v159 = [v90 fieldMatch:v157 fieldRegex:v158];

  *(v156 + 32) = v159;
  v160 = sub_100216964();
  v161 = sub_100216964();
  v162 = [v90 fieldMatch:v160 fieldRegex:v161];

  *(v156 + 40) = v162;
  v163 = sub_100216B14().super.isa;

  v164 = [v90 andMatch:v163];

  *(v146 + 40) = v164;
  v165 = sub_100216964();
  v166 = sub_100216964();
  v167 = [v90 fieldMatch:v165 fieldRegex:v166];

  *(v146 + 48) = v167;
  v168 = sub_100216964();
  v169 = sub_100216964();
  v170 = [v90 fieldMatch:v168 fieldRegex:v169];

  *(v146 + 56) = v170;
  v171 = sub_100216B14().super.isa;

  v172 = [v90 orMatch:v171];

  v173 = sub_100216964();
  v174 = [v280 TPPBPolicyKeyViewMappingWithView:v173 matchingRule:v172];

  v89[13] = v174;
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_10021D8D0;
  v176 = sub_100216964();
  v177 = sub_100216964();
  v178 = [v90 fieldMatch:v176 fieldRegex:v177];

  *(v175 + 32) = v178;
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_10021D880;
  v180 = sub_100216964();
  v181 = sub_100216964();
  v182 = [v90 fieldMatch:v180 fieldRegex:v181];

  *(v179 + 32) = v182;
  v183 = sub_100216964();
  v184 = sub_100216964();
  v185 = [v90 fieldMatch:v183 fieldRegex:v184];

  *(v179 + 40) = v185;
  v186 = sub_100216964();
  v187 = sub_100216964();
  v188 = [v90 fieldMatch:v186 fieldRegex:v187];

  *(v179 + 48) = v188;
  v189 = sub_100216B14().super.isa;

  v190 = [v90 andMatch:v189];

  *(v175 + 40) = v190;
  v191 = sub_100216B14().super.isa;

  v192 = [v90 orMatch:v191];

  v193 = sub_100216964();
  v194 = [v280 TPPBPolicyKeyViewMappingWithView:v193 matchingRule:v192];

  v89[14] = v194;
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_10021D8F0;
  v196 = sub_100216964();
  v197 = sub_100216964();
  v198 = [v90 fieldMatch:v196 fieldRegex:v197];

  *(v195 + 32) = v198;
  v199 = sub_100216964();
  v200 = sub_100216964();
  v201 = [v90 fieldMatch:v199 fieldRegex:v200];

  *(v195 + 40) = v201;
  v202 = sub_100216964();
  v203 = sub_100216964();
  v204 = [v90 fieldMatch:v202 fieldRegex:v203];

  *(v195 + 48) = v204;
  v205 = sub_100216964();
  v206 = sub_100216964();
  v207 = [v90 fieldMatch:v205 fieldRegex:v206];

  *(v195 + 56) = v207;
  v208 = sub_100216964();
  v209 = sub_100216964();
  v210 = [v90 fieldMatch:v208 fieldRegex:v209];

  *(v195 + 64) = v210;
  v211 = sub_100216964();
  v212 = sub_100216964();
  v213 = [v90 fieldMatch:v211 fieldRegex:v212];

  *(v195 + 72) = v213;
  v214 = sub_100216964();
  v215 = sub_100216964();
  v216 = [v90 fieldMatch:v214 fieldRegex:v215];

  *(v195 + 80) = v216;
  v217 = sub_100216964();
  v218 = sub_100216964();
  v219 = [v90 fieldMatch:v217 fieldRegex:v218];

  *(v195 + 88) = v219;
  v220 = sub_100216964();
  v221 = sub_100216964();
  v222 = [v90 fieldMatch:v220 fieldRegex:v221];

  *(v195 + 96) = v222;
  v223 = sub_100216964();
  v224 = sub_100216964();
  v225 = [v90 fieldMatch:v223 fieldRegex:v224];

  *(v195 + 104) = v225;
  v226 = sub_100216964();
  v227 = sub_100216964();
  v228 = [v90 fieldMatch:v226 fieldRegex:v227];

  *(v195 + 112) = v228;
  v229 = sub_100216964();
  v230 = sub_100216964();
  v231 = [v90 fieldMatch:v229 fieldRegex:v230];

  *(v195 + 120) = v231;
  v232 = sub_100216964();
  v233 = sub_100216964();
  v234 = [v90 fieldMatch:v232 fieldRegex:v233];

  *(v195 + 128) = v234;
  v235 = sub_100216964();
  v236 = sub_100216964();
  v237 = [v90 fieldMatch:v235 fieldRegex:v236];

  *(v195 + 136) = v237;
  v238 = sub_100216B14().super.isa;

  v239 = [v90 orMatch:v238];

  v240 = sub_100216964();
  v241 = [v280 TPPBPolicyKeyViewMappingWithView:v240 matchingRule:v239];

  v89[15] = v241;
  v242 = sub_100216964();
  v243 = sub_100216964();
  v244 = [v90 fieldMatch:v242 fieldRegex:v243];

  v245 = sub_100216964();
  v246 = [v280 TPPBPolicyKeyViewMappingWithView:v245 matchingRule:v244];

  v89[16] = v246;
  v247 = sub_100216964();
  v248 = sub_100216964();
  v249 = [v90 fieldMatch:v247 fieldRegex:v248];

  v250 = sub_100216964();
  v251 = [v280 TPPBPolicyKeyViewMappingWithView:v250 matchingRule:v249];

  v89[17] = v251;
  v252 = swift_allocObject();
  *(v252 + 16) = xmmword_10021D880;
  v253 = sub_100216964();
  v254 = sub_100216964();
  v255 = [v90 fieldMatch:v253 fieldRegex:v254];

  *(v252 + 32) = v255;
  v256 = sub_100216964();
  v257 = sub_100216964();
  v258 = [v90 fieldMatch:v256 fieldRegex:v257];

  *(v252 + 40) = v258;
  v259 = sub_100216964();
  v260 = sub_100216964();
  v261 = [v90 fieldMatch:v259 fieldRegex:v260];

  *(v252 + 48) = v261;
  v262 = sub_100216B14().super.isa;

  v263 = [v90 orMatch:v262];

  v264 = sub_100216964();
  v265 = [v280 TPPBPolicyKeyViewMappingWithView:v264 matchingRule:v263];

  v89[18] = v265;
  v266 = [v90 trueMatch];
  v267 = sub_100216964();
  v268 = [v280 TPPBPolicyKeyViewMappingWithView:v267 matchingRule:v266];

  v89[19] = v268;
  v281 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v269 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v270 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v271 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v272 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v273 = sub_100216B14().super.isa;

  v274 = sub_100216B14().super.isa;
  v275 = sub_100216B14().super.isa;
  v276 = sub_100216B14().super.isa;
  v277 = sub_100216B14().super.isa;
  v278 = [v281 initWithVersion:5 modelToCategory:v269 categoriesByView:v270 introducersByCategory:v271 redactions:v272 keyViewMapping:v273 userControllableViewList:v274 piggybackViews:v275 priorityViews:v276 inheritedExcludedViews:v277 hashAlgo:1];

  return v278;
}

id sub_100021F8C()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D900;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10021D8F0;
  v28 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v30 = objc_opt_self();
  v31 = [v30 TPPBPolicyCategoriesByViewWithView:v28 categories:isa];

  *(v27 + 32) = v31;
  v32 = sub_100216964();
  v33 = sub_100216B14().super.isa;
  v34 = [v30 TPPBPolicyCategoriesByViewWithView:v32 categories:v33];

  *(v27 + 40) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v30 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v27 + 48) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v30 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v27 + 56) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v30 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v27 + 64) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v30 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v27 + 72) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v30 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v27 + 80) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v30 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v27 + 88) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v30 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v27 + 96) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v30 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v27 + 104) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v30 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v27 + 112) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v30 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v27 + 120) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v30 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v27 + 128) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v30 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v27 + 136) = v70;
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_10021D8B0;
  v72 = v71;
  v73 = sub_100216964();
  v74 = sub_100216B14().super.isa;
  v75 = objc_opt_self();
  v76 = [v75 TPPBPolicyIntroducersByCategoryWithCategory:v73 introducers:v74];

  v72[4] = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v75 TPPBPolicyIntroducersByCategoryWithCategory:v77 introducers:v78];

  v72[5] = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v75 TPPBPolicyIntroducersByCategoryWithCategory:v80 introducers:v81];

  v72[6] = v82;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = [v75 TPPBPolicyIntroducersByCategoryWithCategory:v83 introducers:v84];

  v72[7] = v85;
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_10021D8C0;
  v87 = v86;
  v88 = objc_opt_self();
  v89 = sub_100216964();
  v90 = sub_100216964();
  v91 = [v88 fieldMatch:v89 fieldRegex:v90];

  v92 = sub_100216964();
  v93 = objc_opt_self();
  v94 = [v93 TPPBPolicyKeyViewMappingWithView:v92 matchingRule:v91];

  v87[4] = v94;
  v95 = sub_100216964();
  v96 = sub_100216964();
  v97 = [v88 fieldMatch:v95 fieldRegex:v96];

  v98 = sub_100216964();
  v99 = [v93 TPPBPolicyKeyViewMappingWithView:v98 matchingRule:v97];

  v87[5] = v99;
  v100 = sub_100216964();
  v101 = sub_100216964();
  v102 = [v88 fieldMatch:v100 fieldRegex:v101];

  v103 = sub_100216964();
  v104 = [v93 TPPBPolicyKeyViewMappingWithView:v103 matchingRule:v102];

  v87[6] = v104;
  v105 = sub_100216964();
  v106 = sub_100216964();
  v107 = [v88 fieldMatch:v105 fieldRegex:v106];

  v108 = sub_100216964();
  v109 = [v93 TPPBPolicyKeyViewMappingWithView:v108 matchingRule:v107];

  v87[7] = v109;
  v110 = sub_100216964();
  v111 = sub_100216964();
  v112 = [v88 fieldMatch:v110 fieldRegex:v111];

  v113 = sub_100216964();
  v114 = [v93 TPPBPolicyKeyViewMappingWithView:v113 matchingRule:v112];

  v87[8] = v114;
  v115 = sub_100216964();
  v116 = sub_100216964();
  v117 = [v88 fieldMatch:v115 fieldRegex:v116];

  v118 = sub_100216964();
  v119 = [v93 TPPBPolicyKeyViewMappingWithView:v118 matchingRule:v117];

  v87[9] = v119;
  v120 = sub_100216964();
  v121 = sub_100216964();
  v122 = [v88 fieldMatch:v120 fieldRegex:v121];

  v123 = sub_100216964();
  v124 = [v93 TPPBPolicyKeyViewMappingWithView:v123 matchingRule:v122];

  v87[10] = v124;
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_10021D880;
  v126 = sub_100216964();
  v127 = sub_100216964();
  v128 = [v88 fieldMatch:v126 fieldRegex:v127];

  *(v125 + 32) = v128;
  v129 = sub_100216964();
  v130 = sub_100216964();
  v131 = [v88 fieldMatch:v129 fieldRegex:v130];

  *(v125 + 40) = v131;
  v132 = sub_100216964();
  v133 = sub_100216964();
  v134 = [v88 fieldMatch:v132 fieldRegex:v133];

  *(v125 + 48) = v134;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v135 = sub_100216B14().super.isa;

  v136 = [v88 orMatch:v135];

  v137 = sub_100216964();
  v138 = [v93 TPPBPolicyKeyViewMappingWithView:v137 matchingRule:v136];

  v278 = v87;
  v87[11] = v138;
  v139 = sub_100216964();
  v140 = sub_100216964();
  v141 = [v88 fieldMatch:v139 fieldRegex:v140];

  v142 = sub_100216964();
  v143 = [v93 TPPBPolicyKeyViewMappingWithView:v142 matchingRule:v141];

  v87[12] = v143;
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_10021D8B0;
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_10021D8D0;
  v146 = sub_100216964();
  v147 = sub_100216964();
  v148 = [v88 fieldMatch:v146 fieldRegex:v147];

  *(v145 + 32) = v148;
  v149 = sub_100216964();
  v150 = sub_100216964();
  v151 = [v88 fieldMatch:v149 fieldRegex:v150];

  *(v145 + 40) = v151;
  v152 = sub_100216B14().super.isa;

  v153 = [v88 andMatch:v152];

  *(v144 + 32) = v153;
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_10021D8D0;
  v155 = sub_100216964();
  v156 = sub_100216964();
  v157 = [v88 fieldMatch:v155 fieldRegex:v156];

  *(v154 + 32) = v157;
  v158 = sub_100216964();
  v159 = sub_100216964();
  v160 = [v88 fieldMatch:v158 fieldRegex:v159];

  *(v154 + 40) = v160;
  v161 = sub_100216B14().super.isa;

  v162 = [v88 andMatch:v161];

  *(v144 + 40) = v162;
  v163 = sub_100216964();
  v164 = sub_100216964();
  v165 = [v88 fieldMatch:v163 fieldRegex:v164];

  *(v144 + 48) = v165;
  v166 = sub_100216964();
  v167 = sub_100216964();
  v168 = [v88 fieldMatch:v166 fieldRegex:v167];

  *(v144 + 56) = v168;
  v169 = sub_100216B14().super.isa;

  v170 = [v88 orMatch:v169];

  v171 = sub_100216964();
  v172 = [v93 TPPBPolicyKeyViewMappingWithView:v171 matchingRule:v170];

  v278[13] = v172;
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_10021D8D0;
  v174 = sub_100216964();
  v175 = sub_100216964();
  v176 = [v88 fieldMatch:v174 fieldRegex:v175];

  *(v173 + 32) = v176;
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_10021D880;
  v178 = sub_100216964();
  v179 = sub_100216964();
  v180 = [v88 fieldMatch:v178 fieldRegex:v179];

  *(v177 + 32) = v180;
  v181 = sub_100216964();
  v182 = sub_100216964();
  v183 = [v88 fieldMatch:v181 fieldRegex:v182];

  *(v177 + 40) = v183;
  v184 = sub_100216964();
  v185 = sub_100216964();
  v186 = [v88 fieldMatch:v184 fieldRegex:v185];

  *(v177 + 48) = v186;
  v187 = sub_100216B14().super.isa;

  v188 = [v88 andMatch:v187];

  *(v173 + 40) = v188;
  v189 = sub_100216B14().super.isa;

  v190 = [v88 orMatch:v189];

  v191 = sub_100216964();
  v192 = [v93 TPPBPolicyKeyViewMappingWithView:v191 matchingRule:v190];

  v278[14] = v192;
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_10021D8F0;
  v194 = sub_100216964();
  v195 = sub_100216964();
  v196 = [v88 fieldMatch:v194 fieldRegex:v195];

  *(v193 + 32) = v196;
  v197 = sub_100216964();
  v198 = sub_100216964();
  v199 = [v88 fieldMatch:v197 fieldRegex:v198];

  *(v193 + 40) = v199;
  v200 = sub_100216964();
  v201 = sub_100216964();
  v202 = [v88 fieldMatch:v200 fieldRegex:v201];

  *(v193 + 48) = v202;
  v203 = sub_100216964();
  v204 = sub_100216964();
  v205 = [v88 fieldMatch:v203 fieldRegex:v204];

  *(v193 + 56) = v205;
  v206 = sub_100216964();
  v207 = sub_100216964();
  v208 = [v88 fieldMatch:v206 fieldRegex:v207];

  *(v193 + 64) = v208;
  v209 = sub_100216964();
  v210 = sub_100216964();
  v211 = [v88 fieldMatch:v209 fieldRegex:v210];

  *(v193 + 72) = v211;
  v212 = sub_100216964();
  v213 = sub_100216964();
  v214 = [v88 fieldMatch:v212 fieldRegex:v213];

  *(v193 + 80) = v214;
  v215 = sub_100216964();
  v216 = sub_100216964();
  v217 = [v88 fieldMatch:v215 fieldRegex:v216];

  *(v193 + 88) = v217;
  v218 = sub_100216964();
  v219 = sub_100216964();
  v220 = [v88 fieldMatch:v218 fieldRegex:v219];

  *(v193 + 96) = v220;
  v221 = sub_100216964();
  v222 = sub_100216964();
  v223 = [v88 fieldMatch:v221 fieldRegex:v222];

  *(v193 + 104) = v223;
  v224 = sub_100216964();
  v225 = sub_100216964();
  v226 = [v88 fieldMatch:v224 fieldRegex:v225];

  *(v193 + 112) = v226;
  v227 = sub_100216964();
  v228 = sub_100216964();
  v229 = [v88 fieldMatch:v227 fieldRegex:v228];

  *(v193 + 120) = v229;
  v230 = sub_100216964();
  v231 = sub_100216964();
  v232 = [v88 fieldMatch:v230 fieldRegex:v231];

  *(v193 + 128) = v232;
  v233 = sub_100216964();
  v234 = sub_100216964();
  v235 = [v88 fieldMatch:v233 fieldRegex:v234];

  *(v193 + 136) = v235;
  v236 = sub_100216B14().super.isa;

  v237 = [v88 orMatch:v236];

  v238 = sub_100216964();
  v239 = [v93 TPPBPolicyKeyViewMappingWithView:v238 matchingRule:v237];

  v278[15] = v239;
  v240 = sub_100216964();
  v241 = sub_100216964();
  v242 = [v88 fieldMatch:v240 fieldRegex:v241];

  v243 = sub_100216964();
  v244 = [v93 TPPBPolicyKeyViewMappingWithView:v243 matchingRule:v242];

  v278[16] = v244;
  v245 = sub_100216964();
  v246 = sub_100216964();
  v247 = [v88 fieldMatch:v245 fieldRegex:v246];

  v248 = sub_100216964();
  v249 = [v93 TPPBPolicyKeyViewMappingWithView:v248 matchingRule:v247];

  v278[17] = v249;
  v250 = swift_allocObject();
  *(v250 + 16) = xmmword_10021D880;
  v251 = sub_100216964();
  v252 = sub_100216964();
  v253 = [v88 fieldMatch:v251 fieldRegex:v252];

  *(v250 + 32) = v253;
  v254 = sub_100216964();
  v255 = sub_100216964();
  v256 = [v88 fieldMatch:v254 fieldRegex:v255];

  *(v250 + 40) = v256;
  v257 = sub_100216964();
  v258 = sub_100216964();
  v259 = [v88 fieldMatch:v257 fieldRegex:v258];

  *(v250 + 48) = v259;
  v260 = sub_100216B14().super.isa;

  v261 = [v88 orMatch:v260];

  v262 = sub_100216964();
  v263 = [v93 TPPBPolicyKeyViewMappingWithView:v262 matchingRule:v261];

  v278[18] = v263;
  v264 = [v88 trueMatch];
  v265 = sub_100216964();
  v266 = [v93 TPPBPolicyKeyViewMappingWithView:v265 matchingRule:v264];

  v278[19] = v266;
  v279 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v267 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v268 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v269 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v270 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v271 = sub_100216B14().super.isa;

  v272 = sub_100216B14().super.isa;
  v273 = sub_100216B14().super.isa;
  v274 = sub_100216B14().super.isa;
  v275 = sub_100216B14().super.isa;
  v276 = [v279 initWithVersion:6 modelToCategory:v267 categoriesByView:v268 introducersByCategory:v269 redactions:v270 keyViewMapping:v271 userControllableViewList:v272 piggybackViews:v273 priorityViews:v274 inheritedExcludedViews:v275 hashAlgo:1];

  return v276;
}

id sub_100024308()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D900;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10021D8A0;
  v28 = v27;
  v29 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v31 = objc_opt_self();
  v32 = [v31 TPPBPolicyCategoriesByViewWithView:v29 categories:isa];

  v28[4] = v32;
  v33 = sub_100216964();
  v34 = sub_100216B14().super.isa;
  v35 = [v31 TPPBPolicyCategoriesByViewWithView:v33 categories:v34];

  v28[5] = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v31 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  v28[6] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v31 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  v28[7] = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v31 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  v28[8] = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v31 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  v28[9] = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v31 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  v28[10] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v31 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  v28[11] = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v31 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  v28[12] = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v31 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  v28[13] = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v31 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  v28[14] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v31 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  v66 = v28;
  v28[15] = v65;
  v67 = sub_100216964();
  v68 = sub_100216B14().super.isa;
  v69 = [v31 TPPBPolicyCategoriesByViewWithView:v67 categories:v68];

  v66[16] = v69;
  v70 = sub_100216964();
  v71 = sub_100216B14().super.isa;
  v72 = [v31 TPPBPolicyCategoriesByViewWithView:v70 categories:v71];

  v66[17] = v72;
  v73 = sub_100216964();
  v74 = sub_100216B14().super.isa;
  v75 = [v31 TPPBPolicyCategoriesByViewWithView:v73 categories:v74];

  v66[18] = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_10021D8B0;
  v77 = v76;
  v78 = sub_100216964();
  v79 = sub_100216B14().super.isa;
  v80 = objc_opt_self();
  v81 = [v80 TPPBPolicyIntroducersByCategoryWithCategory:v78 introducers:v79];

  v77[4] = v81;
  v82 = sub_100216964();
  v83 = sub_100216B14().super.isa;
  v84 = [v80 TPPBPolicyIntroducersByCategoryWithCategory:v82 introducers:v83];

  v77[5] = v84;
  v85 = sub_100216964();
  v86 = sub_100216B14().super.isa;
  v87 = [v80 TPPBPolicyIntroducersByCategoryWithCategory:v85 introducers:v86];

  v77[6] = v87;
  v88 = sub_100216964();
  v89 = sub_100216B14().super.isa;
  v90 = [v80 TPPBPolicyIntroducersByCategoryWithCategory:v88 introducers:v89];

  v77[7] = v90;
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_10021D8C0;
  v92 = v91;
  v93 = objc_opt_self();
  v94 = sub_100216964();
  v95 = sub_100216964();
  v96 = [v93 fieldMatch:v94 fieldRegex:v95];

  v97 = sub_100216964();
  v98 = objc_opt_self();
  v99 = [v98 TPPBPolicyKeyViewMappingWithView:v97 matchingRule:v96];

  v92[4] = v99;
  v100 = sub_100216964();
  v101 = sub_100216964();
  v102 = [v93 fieldMatch:v100 fieldRegex:v101];

  v103 = sub_100216964();
  v104 = [v98 TPPBPolicyKeyViewMappingWithView:v103 matchingRule:v102];

  v92[5] = v104;
  v105 = sub_100216964();
  v106 = sub_100216964();
  v107 = [v93 fieldMatch:v105 fieldRegex:v106];

  v108 = sub_100216964();
  v109 = [v98 TPPBPolicyKeyViewMappingWithView:v108 matchingRule:v107];

  v92[6] = v109;
  v110 = sub_100216964();
  v111 = sub_100216964();
  v112 = [v93 fieldMatch:v110 fieldRegex:v111];

  v113 = sub_100216964();
  v114 = [v98 TPPBPolicyKeyViewMappingWithView:v113 matchingRule:v112];

  v92[7] = v114;
  v115 = sub_100216964();
  v116 = sub_100216964();
  v117 = [v93 fieldMatch:v115 fieldRegex:v116];

  v118 = sub_100216964();
  v119 = [v98 TPPBPolicyKeyViewMappingWithView:v118 matchingRule:v117];

  v92[8] = v119;
  v120 = sub_100216964();
  v121 = sub_100216964();
  v122 = [v93 fieldMatch:v120 fieldRegex:v121];

  v123 = sub_100216964();
  v124 = [v98 TPPBPolicyKeyViewMappingWithView:v123 matchingRule:v122];

  v92[9] = v124;
  v125 = sub_100216964();
  v126 = sub_100216964();
  v127 = [v93 fieldMatch:v125 fieldRegex:v126];

  v128 = sub_100216964();
  v129 = [v98 TPPBPolicyKeyViewMappingWithView:v128 matchingRule:v127];

  v92[10] = v129;
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_10021D880;
  v131 = sub_100216964();
  v132 = sub_100216964();
  v133 = [v93 fieldMatch:v131 fieldRegex:v132];

  *(v130 + 32) = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v93 fieldMatch:v134 fieldRegex:v135];

  *(v130 + 40) = v136;
  v137 = sub_100216964();
  v138 = sub_100216964();
  v139 = [v93 fieldMatch:v137 fieldRegex:v138];

  *(v130 + 48) = v139;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v140 = sub_100216B14().super.isa;

  v141 = [v93 orMatch:v140];

  v142 = sub_100216964();
  v143 = [v98 TPPBPolicyKeyViewMappingWithView:v142 matchingRule:v141];

  v92[11] = v143;
  v144 = sub_100216964();
  v145 = sub_100216964();
  v146 = [v93 fieldMatch:v144 fieldRegex:v145];

  v147 = sub_100216964();
  v148 = [v98 TPPBPolicyKeyViewMappingWithView:v147 matchingRule:v146];

  v92[12] = v148;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_10021D8B0;
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_10021D8D0;
  v151 = sub_100216964();
  v152 = sub_100216964();
  v153 = [v93 fieldMatch:v151 fieldRegex:v152];

  *(v150 + 32) = v153;
  v154 = sub_100216964();
  v155 = sub_100216964();
  v156 = [v93 fieldMatch:v154 fieldRegex:v155];

  *(v150 + 40) = v156;
  v157 = sub_100216B14().super.isa;

  v158 = [v93 andMatch:v157];

  *(v149 + 32) = v158;
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_10021D8D0;
  v160 = sub_100216964();
  v161 = sub_100216964();
  v162 = [v93 fieldMatch:v160 fieldRegex:v161];

  *(v159 + 32) = v162;
  v163 = sub_100216964();
  v164 = sub_100216964();
  v165 = [v93 fieldMatch:v163 fieldRegex:v164];

  *(v159 + 40) = v165;
  v166 = sub_100216B14().super.isa;

  v167 = [v93 andMatch:v166];

  *(v149 + 40) = v167;
  v168 = sub_100216964();
  v169 = sub_100216964();
  v170 = [v93 fieldMatch:v168 fieldRegex:v169];

  *(v149 + 48) = v170;
  v171 = sub_100216964();
  v172 = sub_100216964();
  v173 = [v93 fieldMatch:v171 fieldRegex:v172];

  *(v149 + 56) = v173;
  v174 = sub_100216B14().super.isa;

  v175 = [v93 orMatch:v174];

  v176 = sub_100216964();
  v177 = [v98 TPPBPolicyKeyViewMappingWithView:v176 matchingRule:v175];

  v92[13] = v177;
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_10021D8D0;
  v179 = sub_100216964();
  v180 = sub_100216964();
  v181 = [v93 fieldMatch:v179 fieldRegex:v180];

  *(v178 + 32) = v181;
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_10021D880;
  v183 = sub_100216964();
  v184 = sub_100216964();
  v185 = [v93 fieldMatch:v183 fieldRegex:v184];

  *(v182 + 32) = v185;
  v186 = sub_100216964();
  v187 = sub_100216964();
  v188 = [v93 fieldMatch:v186 fieldRegex:v187];

  *(v182 + 40) = v188;
  v189 = sub_100216964();
  v190 = sub_100216964();
  v191 = [v93 fieldMatch:v189 fieldRegex:v190];

  *(v182 + 48) = v191;
  v192 = sub_100216B14().super.isa;

  v193 = [v93 andMatch:v192];

  *(v178 + 40) = v193;
  v194 = sub_100216B14().super.isa;

  v195 = [v93 orMatch:v194];

  v196 = sub_100216964();
  v197 = [v98 TPPBPolicyKeyViewMappingWithView:v196 matchingRule:v195];

  v92[14] = v197;
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_10021D8F0;
  v199 = sub_100216964();
  v200 = sub_100216964();
  v201 = [v93 fieldMatch:v199 fieldRegex:v200];

  *(v198 + 32) = v201;
  v202 = sub_100216964();
  v203 = sub_100216964();
  v204 = [v93 fieldMatch:v202 fieldRegex:v203];

  *(v198 + 40) = v204;
  v205 = sub_100216964();
  v206 = sub_100216964();
  v207 = [v93 fieldMatch:v205 fieldRegex:v206];

  *(v198 + 48) = v207;
  v208 = sub_100216964();
  v209 = sub_100216964();
  v210 = [v93 fieldMatch:v208 fieldRegex:v209];

  *(v198 + 56) = v210;
  v211 = sub_100216964();
  v212 = sub_100216964();
  v213 = [v93 fieldMatch:v211 fieldRegex:v212];

  *(v198 + 64) = v213;
  v214 = sub_100216964();
  v215 = sub_100216964();
  v216 = [v93 fieldMatch:v214 fieldRegex:v215];

  *(v198 + 72) = v216;
  v217 = sub_100216964();
  v218 = sub_100216964();
  v219 = [v93 fieldMatch:v217 fieldRegex:v218];

  *(v198 + 80) = v219;
  v220 = sub_100216964();
  v221 = sub_100216964();
  v222 = [v93 fieldMatch:v220 fieldRegex:v221];

  *(v198 + 88) = v222;
  v223 = sub_100216964();
  v224 = sub_100216964();
  v225 = [v93 fieldMatch:v223 fieldRegex:v224];

  *(v198 + 96) = v225;
  v226 = sub_100216964();
  v227 = sub_100216964();
  v228 = [v93 fieldMatch:v226 fieldRegex:v227];

  *(v198 + 104) = v228;
  v229 = sub_100216964();
  v230 = sub_100216964();
  v231 = [v93 fieldMatch:v229 fieldRegex:v230];

  *(v198 + 112) = v231;
  v232 = sub_100216964();
  v233 = sub_100216964();
  v234 = [v93 fieldMatch:v232 fieldRegex:v233];

  *(v198 + 120) = v234;
  v235 = sub_100216964();
  v236 = sub_100216964();
  v237 = [v93 fieldMatch:v235 fieldRegex:v236];

  *(v198 + 128) = v237;
  v238 = sub_100216964();
  v239 = sub_100216964();
  v240 = [v93 fieldMatch:v238 fieldRegex:v239];

  *(v198 + 136) = v240;
  v241 = sub_100216B14().super.isa;

  v242 = [v93 orMatch:v241];

  v243 = sub_100216964();
  v244 = [v98 TPPBPolicyKeyViewMappingWithView:v243 matchingRule:v242];

  v92[15] = v244;
  v245 = sub_100216964();
  v246 = sub_100216964();
  v247 = [v93 fieldMatch:v245 fieldRegex:v246];

  v248 = sub_100216964();
  v249 = [v98 TPPBPolicyKeyViewMappingWithView:v248 matchingRule:v247];

  v92[16] = v249;
  v250 = sub_100216964();
  v251 = sub_100216964();
  v252 = [v93 fieldMatch:v250 fieldRegex:v251];

  v253 = sub_100216964();
  v254 = [v98 TPPBPolicyKeyViewMappingWithView:v253 matchingRule:v252];

  v92[17] = v254;
  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_10021D880;
  v256 = sub_100216964();
  v257 = sub_100216964();
  v258 = [v93 fieldMatch:v256 fieldRegex:v257];

  *(v255 + 32) = v258;
  v259 = sub_100216964();
  v260 = sub_100216964();
  v261 = [v93 fieldMatch:v259 fieldRegex:v260];

  *(v255 + 40) = v261;
  v262 = sub_100216964();
  v263 = sub_100216964();
  v264 = [v93 fieldMatch:v262 fieldRegex:v263];

  *(v255 + 48) = v264;
  v265 = sub_100216B14().super.isa;

  v266 = [v93 orMatch:v265];

  v267 = sub_100216964();
  v268 = [v98 TPPBPolicyKeyViewMappingWithView:v267 matchingRule:v266];

  v92[18] = v268;
  v269 = [v93 trueMatch];
  v270 = sub_100216964();
  v271 = [v98 TPPBPolicyKeyViewMappingWithView:v270 matchingRule:v269];

  v92[19] = v271;
  v283 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v272 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v273 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v274 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v275 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v276 = sub_100216B14().super.isa;

  v277 = sub_100216B14().super.isa;
  v278 = sub_100216B14().super.isa;
  v279 = sub_100216B14().super.isa;
  v280 = sub_100216B14().super.isa;
  v281 = [v283 initWithVersion:7 modelToCategory:v272 categoriesByView:v273 introducersByCategory:v274 redactions:v275 keyViewMapping:v276 userControllableViewList:v277 piggybackViews:v278 priorityViews:v279 inheritedExcludedViews:v280 hashAlgo:1];

  return v281;
}

id sub_1000266F8()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D900;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10021D8A0;
  v28 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v30 = objc_opt_self();
  v31 = [v30 TPPBPolicyCategoriesByViewWithView:v28 categories:isa];

  *(v27 + 32) = v31;
  v32 = sub_100216964();
  v33 = sub_100216B14().super.isa;
  v34 = [v30 TPPBPolicyCategoriesByViewWithView:v32 categories:v33];

  *(v27 + 40) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v30 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v27 + 48) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v30 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v27 + 56) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v30 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v27 + 64) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v30 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v27 + 72) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v30 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v27 + 80) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v30 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v27 + 88) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v30 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v27 + 96) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v30 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v27 + 104) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v30 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v27 + 112) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v30 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v27 + 120) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v30 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v27 + 128) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v30 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v27 + 136) = v70;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v30 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v27 + 144) = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_10021D8B0;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = objc_opt_self();
  v78 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v75 introducers:v76];

  *(v74 + 32) = v78;
  v79 = sub_100216964();
  v80 = sub_100216B14().super.isa;
  v81 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v79 introducers:v80];

  *(v74 + 40) = v81;
  v82 = sub_100216964();
  v83 = sub_100216B14().super.isa;
  v84 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v82 introducers:v83];

  *(v74 + 48) = v84;
  v85 = sub_100216964();
  v86 = sub_100216B14().super.isa;
  v87 = [v77 TPPBPolicyIntroducersByCategoryWithCategory:v85 introducers:v86];

  *(v74 + 56) = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_10021D8C0;
  v89 = v88;
  v90 = objc_opt_self();
  v91 = sub_100216964();
  v92 = sub_100216964();
  v93 = [v90 fieldMatch:v91 fieldRegex:v92];

  v94 = sub_100216964();
  v95 = objc_opt_self();
  v96 = [v95 TPPBPolicyKeyViewMappingWithView:v94 matchingRule:v93];

  v89[4] = v96;
  v97 = sub_100216964();
  v98 = sub_100216964();
  v99 = [v90 fieldMatch:v97 fieldRegex:v98];

  v100 = sub_100216964();
  v101 = [v95 TPPBPolicyKeyViewMappingWithView:v100 matchingRule:v99];

  v89[5] = v101;
  v102 = sub_100216964();
  v103 = sub_100216964();
  v104 = [v90 fieldMatch:v102 fieldRegex:v103];

  v105 = sub_100216964();
  v106 = [v95 TPPBPolicyKeyViewMappingWithView:v105 matchingRule:v104];

  v89[6] = v106;
  v107 = sub_100216964();
  v108 = sub_100216964();
  v109 = [v90 fieldMatch:v107 fieldRegex:v108];

  v110 = sub_100216964();
  v111 = [v95 TPPBPolicyKeyViewMappingWithView:v110 matchingRule:v109];

  v89[7] = v111;
  v112 = sub_100216964();
  v113 = sub_100216964();
  v114 = [v90 fieldMatch:v112 fieldRegex:v113];

  v115 = sub_100216964();
  v116 = [v95 TPPBPolicyKeyViewMappingWithView:v115 matchingRule:v114];

  v89[8] = v116;
  v117 = sub_100216964();
  v118 = sub_100216964();
  v119 = [v90 fieldMatch:v117 fieldRegex:v118];

  v120 = sub_100216964();
  v121 = [v95 TPPBPolicyKeyViewMappingWithView:v120 matchingRule:v119];

  v89[9] = v121;
  v122 = sub_100216964();
  v123 = sub_100216964();
  v124 = [v90 fieldMatch:v122 fieldRegex:v123];

  v125 = sub_100216964();
  v126 = [v95 TPPBPolicyKeyViewMappingWithView:v125 matchingRule:v124];

  v89[10] = v126;
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_10021D880;
  v128 = sub_100216964();
  v129 = sub_100216964();
  v130 = [v90 fieldMatch:v128 fieldRegex:v129];

  *(v127 + 32) = v130;
  v131 = sub_100216964();
  v132 = sub_100216964();
  v133 = [v90 fieldMatch:v131 fieldRegex:v132];

  *(v127 + 40) = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v90 fieldMatch:v134 fieldRegex:v135];

  *(v127 + 48) = v136;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v137 = sub_100216B14().super.isa;

  v138 = [v90 orMatch:v137];

  v139 = sub_100216964();
  v140 = [v95 TPPBPolicyKeyViewMappingWithView:v139 matchingRule:v138];

  v89[11] = v140;
  v141 = sub_100216964();
  v142 = sub_100216964();
  v143 = [v90 fieldMatch:v141 fieldRegex:v142];

  v144 = sub_100216964();
  v145 = [v95 TPPBPolicyKeyViewMappingWithView:v144 matchingRule:v143];

  v89[12] = v145;
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_10021D8B0;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_10021D8D0;
  v148 = sub_100216964();
  v149 = sub_100216964();
  v150 = [v90 fieldMatch:v148 fieldRegex:v149];

  *(v147 + 32) = v150;
  v151 = sub_100216964();
  v152 = sub_100216964();
  v153 = [v90 fieldMatch:v151 fieldRegex:v152];

  *(v147 + 40) = v153;
  v154 = sub_100216B14().super.isa;

  v155 = [v90 andMatch:v154];

  *(v146 + 32) = v155;
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_10021D8D0;
  v157 = sub_100216964();
  v158 = sub_100216964();
  v159 = [v90 fieldMatch:v157 fieldRegex:v158];

  *(v156 + 32) = v159;
  v160 = sub_100216964();
  v161 = sub_100216964();
  v162 = [v90 fieldMatch:v160 fieldRegex:v161];

  *(v156 + 40) = v162;
  v163 = sub_100216B14().super.isa;

  v164 = [v90 andMatch:v163];

  *(v146 + 40) = v164;
  v165 = sub_100216964();
  v166 = sub_100216964();
  v167 = [v90 fieldMatch:v165 fieldRegex:v166];

  *(v146 + 48) = v167;
  v168 = sub_100216964();
  v169 = sub_100216964();
  v170 = [v90 fieldMatch:v168 fieldRegex:v169];

  *(v146 + 56) = v170;
  v171 = sub_100216B14().super.isa;

  v172 = [v90 orMatch:v171];

  v173 = sub_100216964();
  v174 = [v95 TPPBPolicyKeyViewMappingWithView:v173 matchingRule:v172];

  v89[13] = v174;
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_10021D8D0;
  v176 = sub_100216964();
  v177 = sub_100216964();
  v178 = [v90 fieldMatch:v176 fieldRegex:v177];

  *(v175 + 32) = v178;
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_10021D880;
  v180 = sub_100216964();
  v181 = sub_100216964();
  v182 = [v90 fieldMatch:v180 fieldRegex:v181];

  *(v179 + 32) = v182;
  v183 = sub_100216964();
  v184 = sub_100216964();
  v185 = [v90 fieldMatch:v183 fieldRegex:v184];

  *(v179 + 40) = v185;
  v186 = sub_100216964();
  v187 = sub_100216964();
  v188 = [v90 fieldMatch:v186 fieldRegex:v187];

  *(v179 + 48) = v188;
  v189 = sub_100216B14().super.isa;

  v190 = [v90 andMatch:v189];

  *(v175 + 40) = v190;
  v191 = sub_100216B14().super.isa;

  v192 = [v90 orMatch:v191];

  v193 = sub_100216964();
  v194 = v95;
  v195 = [v95 TPPBPolicyKeyViewMappingWithView:v193 matchingRule:v192];

  v89[14] = v195;
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_10021D8F0;
  v197 = sub_100216964();
  v198 = sub_100216964();
  v199 = [v90 fieldMatch:v197 fieldRegex:v198];

  *(v196 + 32) = v199;
  v200 = sub_100216964();
  v201 = sub_100216964();
  v202 = [v90 fieldMatch:v200 fieldRegex:v201];

  *(v196 + 40) = v202;
  v203 = sub_100216964();
  v204 = sub_100216964();
  v205 = [v90 fieldMatch:v203 fieldRegex:v204];

  *(v196 + 48) = v205;
  v206 = sub_100216964();
  v207 = sub_100216964();
  v208 = [v90 fieldMatch:v206 fieldRegex:v207];

  *(v196 + 56) = v208;
  v209 = sub_100216964();
  v210 = sub_100216964();
  v211 = [v90 fieldMatch:v209 fieldRegex:v210];

  *(v196 + 64) = v211;
  v212 = sub_100216964();
  v213 = sub_100216964();
  v214 = [v90 fieldMatch:v212 fieldRegex:v213];

  *(v196 + 72) = v214;
  v215 = sub_100216964();
  v216 = sub_100216964();
  v217 = [v90 fieldMatch:v215 fieldRegex:v216];

  *(v196 + 80) = v217;
  v218 = sub_100216964();
  v219 = sub_100216964();
  v220 = [v90 fieldMatch:v218 fieldRegex:v219];

  *(v196 + 88) = v220;
  v221 = sub_100216964();
  v222 = sub_100216964();
  v223 = [v90 fieldMatch:v221 fieldRegex:v222];

  *(v196 + 96) = v223;
  v224 = sub_100216964();
  v225 = sub_100216964();
  v226 = [v90 fieldMatch:v224 fieldRegex:v225];

  *(v196 + 104) = v226;
  v227 = sub_100216964();
  v228 = sub_100216964();
  v229 = [v90 fieldMatch:v227 fieldRegex:v228];

  *(v196 + 112) = v229;
  v230 = sub_100216964();
  v231 = sub_100216964();
  v232 = [v90 fieldMatch:v230 fieldRegex:v231];

  *(v196 + 120) = v232;
  v233 = sub_100216964();
  v234 = sub_100216964();
  v235 = [v90 fieldMatch:v233 fieldRegex:v234];

  *(v196 + 128) = v235;
  v236 = sub_100216964();
  v237 = sub_100216964();
  v238 = [v90 fieldMatch:v236 fieldRegex:v237];

  *(v196 + 136) = v238;
  v239 = sub_100216B14().super.isa;

  v240 = [v90 orMatch:v239];

  v241 = sub_100216964();
  v242 = [v194 TPPBPolicyKeyViewMappingWithView:v241 matchingRule:v240];

  v89[15] = v242;
  v243 = swift_allocObject();
  *(v243 + 16) = xmmword_10021D8D0;
  v244 = sub_100216964();
  v245 = sub_100216964();
  v246 = [v90 fieldMatch:v244 fieldRegex:v245];

  *(v243 + 32) = v246;
  v247 = sub_100216964();
  v248 = sub_100216964();
  v249 = [v90 fieldMatch:v247 fieldRegex:v248];

  *(v243 + 40) = v249;
  v250 = sub_100216B14().super.isa;

  v251 = [v90 orMatch:v250];

  v252 = sub_100216964();
  v253 = [v194 TPPBPolicyKeyViewMappingWithView:v252 matchingRule:v251];

  v89[16] = v253;
  v254 = swift_allocObject();
  *(v254 + 16) = xmmword_10021D8B0;
  v255 = sub_100216964();
  v256 = sub_100216964();
  v257 = [v90 fieldMatch:v255 fieldRegex:v256];

  *(v254 + 32) = v257;
  v258 = sub_100216964();
  v259 = sub_100216964();
  v260 = [v90 fieldMatch:v258 fieldRegex:v259];

  *(v254 + 40) = v260;
  v261 = sub_100216964();
  v262 = sub_100216964();
  v263 = [v90 fieldMatch:v261 fieldRegex:v262];

  *(v254 + 48) = v263;
  v264 = sub_100216964();
  v265 = sub_100216964();
  v266 = [v90 fieldMatch:v264 fieldRegex:v265];

  *(v254 + 56) = v266;
  v267 = sub_100216B14().super.isa;

  v268 = [v90 orMatch:v267];

  v269 = sub_100216964();
  v270 = [v194 TPPBPolicyKeyViewMappingWithView:v269 matchingRule:v268];

  v89[17] = v270;
  v271 = swift_allocObject();
  *(v271 + 16) = xmmword_10021D880;
  v272 = sub_100216964();
  v273 = sub_100216964();
  v274 = [v90 fieldMatch:v272 fieldRegex:v273];

  *(v271 + 32) = v274;
  v275 = sub_100216964();
  v276 = sub_100216964();
  v277 = [v90 fieldMatch:v275 fieldRegex:v276];

  *(v271 + 40) = v277;
  v278 = sub_100216964();
  v279 = sub_100216964();
  v280 = [v90 fieldMatch:v278 fieldRegex:v279];

  *(v271 + 48) = v280;
  v281 = sub_100216B14().super.isa;

  v282 = [v90 orMatch:v281];

  v283 = sub_100216964();
  v284 = [v194 TPPBPolicyKeyViewMappingWithView:v283 matchingRule:v282];

  v89[18] = v284;
  v285 = [v90 trueMatch];
  v286 = sub_100216964();
  v287 = [v194 TPPBPolicyKeyViewMappingWithView:v286 matchingRule:v285];

  v89[19] = v287;
  v299 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v288 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v289 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v290 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v291 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v292 = sub_100216B14().super.isa;

  v293 = sub_100216B14().super.isa;
  v294 = sub_100216B14().super.isa;
  v295 = sub_100216B14().super.isa;
  v296 = sub_100216B14().super.isa;
  v297 = [v299 initWithVersion:8 modelToCategory:v288 categoriesByView:v289 introducersByCategory:v290 redactions:v291 keyViewMapping:v292 userControllableViewList:v293 piggybackViews:v294 priorityViews:v295 inheritedExcludedViews:v296 hashAlgo:1];

  return v297;
}

id sub_100028D50()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D900;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10021D8A0;
  v28 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v30 = objc_opt_self();
  v31 = [v30 TPPBPolicyCategoriesByViewWithView:v28 categories:isa];

  *(v27 + 32) = v31;
  v32 = sub_100216964();
  v33 = sub_100216B14().super.isa;
  v34 = [v30 TPPBPolicyCategoriesByViewWithView:v32 categories:v33];

  *(v27 + 40) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v30 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v27 + 48) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v30 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v27 + 56) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v30 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v27 + 64) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v30 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v27 + 72) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v30 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v27 + 80) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v30 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v27 + 88) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v30 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v27 + 96) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v30 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v27 + 104) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v30 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v27 + 112) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v30 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v27 + 120) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v30 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v27 + 128) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v30 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v27 + 136) = v70;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v30 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v27 + 144) = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_10021D8B0;
  v75 = v74;
  v76 = sub_100216964();
  v77 = sub_100216B14().super.isa;
  v78 = objc_opt_self();
  v79 = [v78 TPPBPolicyIntroducersByCategoryWithCategory:v76 introducers:v77];

  v75[4] = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v78 TPPBPolicyIntroducersByCategoryWithCategory:v80 introducers:v81];

  v75[5] = v82;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = [v78 TPPBPolicyIntroducersByCategoryWithCategory:v83 introducers:v84];

  v86 = v75;
  v75[6] = v85;
  v87 = sub_100216964();
  v88 = sub_100216B14().super.isa;
  v89 = [v78 TPPBPolicyIntroducersByCategoryWithCategory:v87 introducers:v88];

  v86[7] = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_10021D8C0;
  v91 = v90;
  v92 = objc_opt_self();
  v93 = sub_100216964();
  v94 = sub_100216964();
  v95 = [v92 fieldMatch:v93 fieldRegex:v94];

  v96 = sub_100216964();
  v97 = objc_opt_self();
  v98 = [v97 TPPBPolicyKeyViewMappingWithView:v96 matchingRule:v95];

  v91[4] = v98;
  v99 = sub_100216964();
  v100 = sub_100216964();
  v101 = [v92 fieldMatch:v99 fieldRegex:v100];

  v102 = sub_100216964();
  v103 = [v97 TPPBPolicyKeyViewMappingWithView:v102 matchingRule:v101];

  v91[5] = v103;
  v104 = sub_100216964();
  v105 = sub_100216964();
  v106 = [v92 fieldMatch:v104 fieldRegex:v105];

  v107 = sub_100216964();
  v108 = [v97 TPPBPolicyKeyViewMappingWithView:v107 matchingRule:v106];

  v91[6] = v108;
  v109 = sub_100216964();
  v110 = sub_100216964();
  v111 = [v92 fieldMatch:v109 fieldRegex:v110];

  v112 = sub_100216964();
  v113 = [v97 TPPBPolicyKeyViewMappingWithView:v112 matchingRule:v111];

  v91[7] = v113;
  v114 = sub_100216964();
  v115 = sub_100216964();
  v116 = [v92 fieldMatch:v114 fieldRegex:v115];

  v117 = sub_100216964();
  v118 = [v97 TPPBPolicyKeyViewMappingWithView:v117 matchingRule:v116];

  v91[8] = v118;
  v119 = sub_100216964();
  v120 = sub_100216964();
  v121 = [v92 fieldMatch:v119 fieldRegex:v120];

  v122 = sub_100216964();
  v123 = [v97 TPPBPolicyKeyViewMappingWithView:v122 matchingRule:v121];

  v91[9] = v123;
  v124 = sub_100216964();
  v125 = sub_100216964();
  v126 = [v92 fieldMatch:v124 fieldRegex:v125];

  v127 = sub_100216964();
  v128 = [v97 TPPBPolicyKeyViewMappingWithView:v127 matchingRule:v126];

  v91[10] = v128;
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_10021D880;
  v130 = sub_100216964();
  v131 = sub_100216964();
  v132 = [v92 fieldMatch:v130 fieldRegex:v131];

  *(v129 + 32) = v132;
  v133 = sub_100216964();
  v134 = sub_100216964();
  v135 = [v92 fieldMatch:v133 fieldRegex:v134];

  *(v129 + 40) = v135;
  v136 = sub_100216964();
  v137 = sub_100216964();
  v138 = [v92 fieldMatch:v136 fieldRegex:v137];

  *(v129 + 48) = v138;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v139 = sub_100216B14().super.isa;

  v140 = [v92 orMatch:v139];

  v141 = sub_100216964();
  v303 = v97;
  v142 = [v97 TPPBPolicyKeyViewMappingWithView:v141 matchingRule:v140];

  v304 = v91;
  v91[11] = v142;
  v143 = sub_100216964();
  v144 = sub_100216964();
  v145 = [v92 fieldMatch:v143 fieldRegex:v144];

  v146 = sub_100216964();
  v147 = [v97 TPPBPolicyKeyViewMappingWithView:v146 matchingRule:v145];

  v91[12] = v147;
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_10021D8B0;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_10021D8D0;
  v150 = sub_100216964();
  v151 = sub_100216964();
  v152 = [v92 fieldMatch:v150 fieldRegex:v151];

  *(v149 + 32) = v152;
  v153 = sub_100216964();
  v154 = sub_100216964();
  v155 = [v92 fieldMatch:v153 fieldRegex:v154];

  *(v149 + 40) = v155;
  v156 = sub_100216B14().super.isa;

  v157 = [v92 andMatch:v156];

  *(v148 + 32) = v157;
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_10021D8D0;
  v159 = sub_100216964();
  v160 = sub_100216964();
  v161 = [v92 fieldMatch:v159 fieldRegex:v160];

  *(v158 + 32) = v161;
  v162 = sub_100216964();
  v163 = sub_100216964();
  v164 = [v92 fieldMatch:v162 fieldRegex:v163];

  *(v158 + 40) = v164;
  v165 = sub_100216B14().super.isa;

  v166 = [v92 andMatch:v165];

  *(v148 + 40) = v166;
  v167 = sub_100216964();
  v168 = sub_100216964();
  v169 = [v92 fieldMatch:v167 fieldRegex:v168];

  *(v148 + 48) = v169;
  v170 = sub_100216964();
  v171 = sub_100216964();
  v172 = [v92 fieldMatch:v170 fieldRegex:v171];

  *(v148 + 56) = v172;
  v173 = sub_100216B14().super.isa;

  v174 = [v92 orMatch:v173];

  v175 = sub_100216964();
  v176 = [v303 TPPBPolicyKeyViewMappingWithView:v175 matchingRule:v174];

  v91[13] = v176;
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_10021D8D0;
  v178 = sub_100216964();
  v179 = sub_100216964();
  v180 = [v92 fieldMatch:v178 fieldRegex:v179];

  *(v177 + 32) = v180;
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_10021D880;
  v182 = sub_100216964();
  v183 = sub_100216964();
  v184 = [v92 fieldMatch:v182 fieldRegex:v183];

  *(v181 + 32) = v184;
  v185 = sub_100216964();
  v186 = sub_100216964();
  v187 = [v92 fieldMatch:v185 fieldRegex:v186];

  *(v181 + 40) = v187;
  v188 = sub_100216964();
  v189 = sub_100216964();
  v190 = [v92 fieldMatch:v188 fieldRegex:v189];

  *(v181 + 48) = v190;
  v191 = sub_100216B14().super.isa;

  v192 = [v92 andMatch:v191];

  *(v177 + 40) = v192;
  v193 = sub_100216B14().super.isa;

  v194 = [v92 orMatch:v193];

  v195 = sub_100216964();
  v196 = [v303 TPPBPolicyKeyViewMappingWithView:v195 matchingRule:v194];

  v91[14] = v196;
  v197 = swift_allocObject();
  *(v197 + 16) = xmmword_10021D8F0;
  v198 = sub_100216964();
  v199 = sub_100216964();
  v200 = [v92 fieldMatch:v198 fieldRegex:v199];

  *(v197 + 32) = v200;
  v201 = sub_100216964();
  v202 = sub_100216964();
  v203 = [v92 fieldMatch:v201 fieldRegex:v202];

  *(v197 + 40) = v203;
  v204 = sub_100216964();
  v205 = sub_100216964();
  v206 = [v92 fieldMatch:v204 fieldRegex:v205];

  *(v197 + 48) = v206;
  v207 = sub_100216964();
  v208 = sub_100216964();
  v209 = [v92 fieldMatch:v207 fieldRegex:v208];

  *(v197 + 56) = v209;
  v210 = sub_100216964();
  v211 = sub_100216964();
  v212 = [v92 fieldMatch:v210 fieldRegex:v211];

  *(v197 + 64) = v212;
  v213 = sub_100216964();
  v214 = sub_100216964();
  v215 = [v92 fieldMatch:v213 fieldRegex:v214];

  *(v197 + 72) = v215;
  v216 = sub_100216964();
  v217 = sub_100216964();
  v218 = [v92 fieldMatch:v216 fieldRegex:v217];

  *(v197 + 80) = v218;
  v219 = sub_100216964();
  v220 = sub_100216964();
  v221 = [v92 fieldMatch:v219 fieldRegex:v220];

  *(v197 + 88) = v221;
  v222 = sub_100216964();
  v223 = sub_100216964();
  v224 = [v92 fieldMatch:v222 fieldRegex:v223];

  *(v197 + 96) = v224;
  v225 = sub_100216964();
  v226 = sub_100216964();
  v227 = [v92 fieldMatch:v225 fieldRegex:v226];

  *(v197 + 104) = v227;
  v228 = sub_100216964();
  v229 = sub_100216964();
  v230 = [v92 fieldMatch:v228 fieldRegex:v229];

  *(v197 + 112) = v230;
  v231 = sub_100216964();
  v232 = sub_100216964();
  v233 = [v92 fieldMatch:v231 fieldRegex:v232];

  *(v197 + 120) = v233;
  v234 = sub_100216964();
  v235 = sub_100216964();
  v236 = [v92 fieldMatch:v234 fieldRegex:v235];

  *(v197 + 128) = v236;
  v237 = sub_100216964();
  v238 = sub_100216964();
  v239 = [v92 fieldMatch:v237 fieldRegex:v238];

  *(v197 + 136) = v239;
  v240 = sub_100216B14().super.isa;

  v241 = [v92 orMatch:v240];

  v242 = sub_100216964();
  v243 = [v303 TPPBPolicyKeyViewMappingWithView:v242 matchingRule:v241];

  v304[15] = v243;
  v244 = swift_allocObject();
  *(v244 + 16) = xmmword_10021D8D0;
  v245 = sub_100216964();
  v246 = sub_100216964();
  v247 = [v92 fieldMatch:v245 fieldRegex:v246];

  *(v244 + 32) = v247;
  v248 = sub_100216964();
  v249 = sub_100216964();
  v250 = [v92 fieldMatch:v248 fieldRegex:v249];

  *(v244 + 40) = v250;
  v251 = sub_100216B14().super.isa;

  v252 = [v92 orMatch:v251];

  v253 = sub_100216964();
  v254 = [v303 TPPBPolicyKeyViewMappingWithView:v253 matchingRule:v252];

  v304[16] = v254;
  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_10021D910;
  v256 = sub_100216964();
  v257 = sub_100216964();
  v258 = [v92 fieldMatch:v256 fieldRegex:v257];

  *(v255 + 32) = v258;
  v259 = sub_100216964();
  v260 = sub_100216964();
  v261 = [v92 fieldMatch:v259 fieldRegex:v260];

  *(v255 + 40) = v261;
  v262 = sub_100216964();
  v263 = sub_100216964();
  v264 = [v92 fieldMatch:v262 fieldRegex:v263];

  *(v255 + 48) = v264;
  v265 = sub_100216964();
  v266 = sub_100216964();
  v267 = [v92 fieldMatch:v265 fieldRegex:v266];

  *(v255 + 56) = v267;
  v268 = sub_100216964();
  v269 = sub_100216964();
  v270 = [v92 fieldMatch:v268 fieldRegex:v269];

  *(v255 + 64) = v270;
  v271 = sub_100216B14().super.isa;

  v272 = [v92 orMatch:v271];

  v273 = sub_100216964();
  v274 = [v303 TPPBPolicyKeyViewMappingWithView:v273 matchingRule:v272];

  v304[17] = v274;
  v275 = swift_allocObject();
  *(v275 + 16) = xmmword_10021D880;
  v276 = sub_100216964();
  v277 = sub_100216964();
  v278 = [v92 fieldMatch:v276 fieldRegex:v277];

  *(v275 + 32) = v278;
  v279 = sub_100216964();
  v280 = sub_100216964();
  v281 = [v92 fieldMatch:v279 fieldRegex:v280];

  *(v275 + 40) = v281;
  v282 = sub_100216964();
  v283 = sub_100216964();
  v284 = [v92 fieldMatch:v282 fieldRegex:v283];

  *(v275 + 48) = v284;
  v285 = sub_100216B14().super.isa;

  v286 = [v92 orMatch:v285];

  v287 = sub_100216964();
  v288 = [v303 TPPBPolicyKeyViewMappingWithView:v287 matchingRule:v286];

  v304[18] = v288;
  v289 = [v92 trueMatch];
  v290 = sub_100216964();
  v291 = [v303 TPPBPolicyKeyViewMappingWithView:v290 matchingRule:v289];

  v304[19] = v291;
  v305 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v292 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v293 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v294 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v295 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v296 = sub_100216B14().super.isa;

  v297 = sub_100216B14().super.isa;
  v298 = sub_100216B14().super.isa;
  v299 = sub_100216B14().super.isa;
  v300 = sub_100216B14().super.isa;
  v301 = [v305 initWithVersion:9 modelToCategory:v292 categoriesByView:v293 introducersByCategory:v294 redactions:v295 keyViewMapping:v296 userControllableViewList:v297 piggybackViews:v298 priorityViews:v299 inheritedExcludedViews:v300 hashAlgo:1];

  return v301;
}

id sub_10002B438()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D8A0;
  v31 = v30;
  v32 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyCategoriesByViewWithView:v32 categories:isa];

  v31[4] = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  v31[5] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  v31[6] = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v34 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  v31[7] = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v34 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  v31[8] = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v34 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  v31[9] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v34 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  v31[10] = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v34 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  v31[11] = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v34 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  v31[12] = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v34 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  v31[13] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v34 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  v31[14] = v65;
  v66 = sub_100216964();
  v67 = sub_100216B14().super.isa;
  v68 = [v34 TPPBPolicyCategoriesByViewWithView:v66 categories:v67];

  v31[15] = v68;
  v69 = sub_100216964();
  v70 = sub_100216B14().super.isa;
  v71 = [v34 TPPBPolicyCategoriesByViewWithView:v69 categories:v70];

  v31[16] = v71;
  v72 = sub_100216964();
  v73 = sub_100216B14().super.isa;
  v74 = [v34 TPPBPolicyCategoriesByViewWithView:v72 categories:v73];

  v31[17] = v74;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = [v34 TPPBPolicyCategoriesByViewWithView:v75 categories:v76];

  v31[18] = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_10021D910;
  v79 = v78;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = objc_opt_self();
  v83 = [v82 TPPBPolicyIntroducersByCategoryWithCategory:v80 introducers:v81];

  v79[4] = v83;
  v84 = sub_100216964();
  v85 = sub_100216B14().super.isa;
  v86 = [v82 TPPBPolicyIntroducersByCategoryWithCategory:v84 introducers:v85];

  v79[5] = v86;
  v87 = sub_100216964();
  v88 = sub_100216B14().super.isa;
  v89 = [v82 TPPBPolicyIntroducersByCategoryWithCategory:v87 introducers:v88];

  v79[6] = v89;
  v90 = sub_100216964();
  v91 = sub_100216B14().super.isa;
  v92 = [v82 TPPBPolicyIntroducersByCategoryWithCategory:v90 introducers:v91];

  v79[7] = v92;
  v93 = sub_100216964();
  v94 = sub_100216B14().super.isa;
  v95 = [v82 TPPBPolicyIntroducersByCategoryWithCategory:v93 introducers:v94];

  v79[8] = v95;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_10021D8C0;
  v97 = v96;
  v98 = objc_opt_self();
  v99 = sub_100216964();
  v100 = sub_100216964();
  v101 = [v98 fieldMatch:v99 fieldRegex:v100];

  v102 = sub_100216964();
  v103 = objc_opt_self();
  v104 = [v103 TPPBPolicyKeyViewMappingWithView:v102 matchingRule:v101];

  v97[4] = v104;
  v105 = sub_100216964();
  v106 = sub_100216964();
  v107 = [v98 fieldMatch:v105 fieldRegex:v106];

  v108 = sub_100216964();
  v109 = [v103 TPPBPolicyKeyViewMappingWithView:v108 matchingRule:v107];

  v97[5] = v109;
  v110 = sub_100216964();
  v111 = sub_100216964();
  v112 = [v98 fieldMatch:v110 fieldRegex:v111];

  v113 = sub_100216964();
  v114 = [v103 TPPBPolicyKeyViewMappingWithView:v113 matchingRule:v112];

  v97[6] = v114;
  v115 = sub_100216964();
  v116 = sub_100216964();
  v117 = [v98 fieldMatch:v115 fieldRegex:v116];

  v118 = sub_100216964();
  v119 = [v103 TPPBPolicyKeyViewMappingWithView:v118 matchingRule:v117];

  v97[7] = v119;
  v120 = sub_100216964();
  v121 = sub_100216964();
  v122 = [v98 fieldMatch:v120 fieldRegex:v121];

  v123 = sub_100216964();
  v124 = [v103 TPPBPolicyKeyViewMappingWithView:v123 matchingRule:v122];

  v97[8] = v124;
  v125 = sub_100216964();
  v126 = sub_100216964();
  v127 = [v98 fieldMatch:v125 fieldRegex:v126];

  v128 = sub_100216964();
  v129 = [v103 TPPBPolicyKeyViewMappingWithView:v128 matchingRule:v127];

  v97[9] = v129;
  v130 = sub_100216964();
  v131 = sub_100216964();
  v132 = [v98 fieldMatch:v130 fieldRegex:v131];

  v133 = sub_100216964();
  v134 = [v103 TPPBPolicyKeyViewMappingWithView:v133 matchingRule:v132];

  v97[10] = v134;
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_10021D880;
  v136 = sub_100216964();
  v137 = sub_100216964();
  v138 = [v98 fieldMatch:v136 fieldRegex:v137];

  *(v135 + 32) = v138;
  v139 = sub_100216964();
  v140 = sub_100216964();
  v141 = [v98 fieldMatch:v139 fieldRegex:v140];

  *(v135 + 40) = v141;
  v142 = sub_100216964();
  v143 = sub_100216964();
  v144 = [v98 fieldMatch:v142 fieldRegex:v143];

  *(v135 + 48) = v144;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v145 = sub_100216B14().super.isa;

  v146 = [v98 orMatch:v145];

  v147 = sub_100216964();
  v309 = v103;
  v148 = [v103 TPPBPolicyKeyViewMappingWithView:v147 matchingRule:v146];

  v310 = v97;
  v97[11] = v148;
  v149 = sub_100216964();
  v150 = sub_100216964();
  v151 = [v98 fieldMatch:v149 fieldRegex:v150];

  v152 = sub_100216964();
  v153 = [v103 TPPBPolicyKeyViewMappingWithView:v152 matchingRule:v151];

  v97[12] = v153;
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_10021D8B0;
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_10021D8D0;
  v156 = sub_100216964();
  v157 = sub_100216964();
  v158 = [v98 fieldMatch:v156 fieldRegex:v157];

  *(v155 + 32) = v158;
  v159 = sub_100216964();
  v160 = sub_100216964();
  v161 = [v98 fieldMatch:v159 fieldRegex:v160];

  *(v155 + 40) = v161;
  v162 = sub_100216B14().super.isa;

  v163 = [v98 andMatch:v162];

  *(v154 + 32) = v163;
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_10021D8D0;
  v165 = sub_100216964();
  v166 = sub_100216964();
  v167 = [v98 fieldMatch:v165 fieldRegex:v166];

  *(v164 + 32) = v167;
  v168 = sub_100216964();
  v169 = sub_100216964();
  v170 = [v98 fieldMatch:v168 fieldRegex:v169];

  *(v164 + 40) = v170;
  v171 = sub_100216B14().super.isa;

  v172 = [v98 andMatch:v171];

  *(v154 + 40) = v172;
  v173 = sub_100216964();
  v174 = sub_100216964();
  v175 = [v98 fieldMatch:v173 fieldRegex:v174];

  *(v154 + 48) = v175;
  v176 = sub_100216964();
  v177 = sub_100216964();
  v178 = [v98 fieldMatch:v176 fieldRegex:v177];

  *(v154 + 56) = v178;
  v179 = sub_100216B14().super.isa;

  v180 = [v98 orMatch:v179];

  v181 = sub_100216964();
  v182 = [v309 TPPBPolicyKeyViewMappingWithView:v181 matchingRule:v180];

  v310[13] = v182;
  v183 = swift_allocObject();
  *(v183 + 16) = xmmword_10021D8D0;
  v184 = sub_100216964();
  v185 = sub_100216964();
  v186 = [v98 fieldMatch:v184 fieldRegex:v185];

  *(v183 + 32) = v186;
  v187 = swift_allocObject();
  *(v187 + 16) = xmmword_10021D880;
  v188 = sub_100216964();
  v189 = sub_100216964();
  v190 = [v98 fieldMatch:v188 fieldRegex:v189];

  *(v187 + 32) = v190;
  v191 = sub_100216964();
  v192 = sub_100216964();
  v193 = [v98 fieldMatch:v191 fieldRegex:v192];

  *(v187 + 40) = v193;
  v194 = sub_100216964();
  v195 = sub_100216964();
  v196 = [v98 fieldMatch:v194 fieldRegex:v195];

  *(v187 + 48) = v196;
  v197 = sub_100216B14().super.isa;

  v198 = [v98 andMatch:v197];

  *(v183 + 40) = v198;
  v199 = sub_100216B14().super.isa;

  v200 = [v98 orMatch:v199];

  v201 = sub_100216964();
  v202 = [v309 TPPBPolicyKeyViewMappingWithView:v201 matchingRule:v200];

  v310[14] = v202;
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_10021D8F0;
  v204 = sub_100216964();
  v205 = sub_100216964();
  v206 = [v98 fieldMatch:v204 fieldRegex:v205];

  *(v203 + 32) = v206;
  v207 = sub_100216964();
  v208 = sub_100216964();
  v209 = [v98 fieldMatch:v207 fieldRegex:v208];

  *(v203 + 40) = v209;
  v210 = sub_100216964();
  v211 = sub_100216964();
  v212 = [v98 fieldMatch:v210 fieldRegex:v211];

  *(v203 + 48) = v212;
  v213 = sub_100216964();
  v214 = sub_100216964();
  v215 = [v98 fieldMatch:v213 fieldRegex:v214];

  *(v203 + 56) = v215;
  v216 = sub_100216964();
  v217 = sub_100216964();
  v218 = [v98 fieldMatch:v216 fieldRegex:v217];

  *(v203 + 64) = v218;
  v219 = sub_100216964();
  v220 = sub_100216964();
  v221 = [v98 fieldMatch:v219 fieldRegex:v220];

  *(v203 + 72) = v221;
  v222 = sub_100216964();
  v223 = sub_100216964();
  v224 = [v98 fieldMatch:v222 fieldRegex:v223];

  *(v203 + 80) = v224;
  v225 = sub_100216964();
  v226 = sub_100216964();
  v227 = [v98 fieldMatch:v225 fieldRegex:v226];

  *(v203 + 88) = v227;
  v228 = sub_100216964();
  v229 = sub_100216964();
  v230 = [v98 fieldMatch:v228 fieldRegex:v229];

  *(v203 + 96) = v230;
  v231 = sub_100216964();
  v232 = sub_100216964();
  v233 = [v98 fieldMatch:v231 fieldRegex:v232];

  *(v203 + 104) = v233;
  v234 = sub_100216964();
  v235 = sub_100216964();
  v236 = [v98 fieldMatch:v234 fieldRegex:v235];

  *(v203 + 112) = v236;
  v237 = sub_100216964();
  v238 = sub_100216964();
  v239 = [v98 fieldMatch:v237 fieldRegex:v238];

  *(v203 + 120) = v239;
  v240 = sub_100216964();
  v241 = sub_100216964();
  v242 = [v98 fieldMatch:v240 fieldRegex:v241];

  *(v203 + 128) = v242;
  v243 = sub_100216964();
  v244 = sub_100216964();
  v245 = [v98 fieldMatch:v243 fieldRegex:v244];

  *(v203 + 136) = v245;
  v246 = sub_100216B14().super.isa;

  v247 = [v98 orMatch:v246];

  v248 = sub_100216964();
  v249 = [v309 TPPBPolicyKeyViewMappingWithView:v248 matchingRule:v247];

  v310[15] = v249;
  v250 = swift_allocObject();
  *(v250 + 16) = xmmword_10021D8D0;
  v251 = sub_100216964();
  v252 = sub_100216964();
  v253 = [v98 fieldMatch:v251 fieldRegex:v252];

  *(v250 + 32) = v253;
  v254 = sub_100216964();
  v255 = sub_100216964();
  v256 = [v98 fieldMatch:v254 fieldRegex:v255];

  *(v250 + 40) = v256;
  v257 = sub_100216B14().super.isa;

  v258 = [v98 orMatch:v257];

  v259 = sub_100216964();
  v260 = [v309 TPPBPolicyKeyViewMappingWithView:v259 matchingRule:v258];

  v310[16] = v260;
  v261 = swift_allocObject();
  *(v261 + 16) = xmmword_10021D910;
  v262 = sub_100216964();
  v263 = sub_100216964();
  v264 = [v98 fieldMatch:v262 fieldRegex:v263];

  *(v261 + 32) = v264;
  v265 = sub_100216964();
  v266 = sub_100216964();
  v267 = [v98 fieldMatch:v265 fieldRegex:v266];

  *(v261 + 40) = v267;
  v268 = sub_100216964();
  v269 = sub_100216964();
  v270 = [v98 fieldMatch:v268 fieldRegex:v269];

  *(v261 + 48) = v270;
  v271 = sub_100216964();
  v272 = sub_100216964();
  v273 = [v98 fieldMatch:v271 fieldRegex:v272];

  *(v261 + 56) = v273;
  v274 = sub_100216964();
  v275 = sub_100216964();
  v276 = [v98 fieldMatch:v274 fieldRegex:v275];

  *(v261 + 64) = v276;
  v277 = sub_100216B14().super.isa;

  v278 = [v98 orMatch:v277];

  v279 = sub_100216964();
  v280 = [v309 TPPBPolicyKeyViewMappingWithView:v279 matchingRule:v278];

  v310[17] = v280;
  v281 = swift_allocObject();
  *(v281 + 16) = xmmword_10021D880;
  v282 = sub_100216964();
  v283 = sub_100216964();
  v284 = [v98 fieldMatch:v282 fieldRegex:v283];

  *(v281 + 32) = v284;
  v285 = sub_100216964();
  v286 = sub_100216964();
  v287 = [v98 fieldMatch:v285 fieldRegex:v286];

  *(v281 + 40) = v287;
  v288 = sub_100216964();
  v289 = sub_100216964();
  v290 = [v98 fieldMatch:v288 fieldRegex:v289];

  *(v281 + 48) = v290;
  v291 = sub_100216B14().super.isa;

  v292 = [v98 orMatch:v291];

  v293 = sub_100216964();
  v294 = [v309 TPPBPolicyKeyViewMappingWithView:v293 matchingRule:v292];

  v310[18] = v294;
  v295 = [v98 trueMatch];
  v296 = sub_100216964();
  v297 = [v309 TPPBPolicyKeyViewMappingWithView:v296 matchingRule:v295];

  v310[19] = v297;
  v311 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v298 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v299 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v300 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v301 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v302 = sub_100216B14().super.isa;

  v303 = sub_100216B14().super.isa;
  v304 = sub_100216B14().super.isa;
  v305 = sub_100216B14().super.isa;
  v306 = sub_100216B14().super.isa;
  v307 = [v311 initWithVersion:10 modelToCategory:v298 categoriesByView:v299 introducersByCategory:v300 redactions:v301 keyViewMapping:v302 userControllableViewList:v303 piggybackViews:v304 priorityViews:v305 inheritedExcludedViews:v306 hashAlgo:1];

  return v307;
}

id sub_10002DBB8()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D8C0;
  v31 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v33 = objc_opt_self();
  v34 = [v33 TPPBPolicyCategoriesByViewWithView:v31 categories:isa];

  *(v30 + 32) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v33 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v30 + 40) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v33 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v30 + 48) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v33 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v30 + 56) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v33 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v30 + 64) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v33 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v30 + 72) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v33 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v30 + 80) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v33 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v30 + 88) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v33 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v30 + 96) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v33 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v30 + 104) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v33 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v30 + 112) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v33 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v30 + 120) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v33 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v30 + 128) = v70;
  v71 = v30;
  v72 = sub_100216964();
  v73 = sub_100216B14().super.isa;
  v74 = [v33 TPPBPolicyCategoriesByViewWithView:v72 categories:v73];

  v71[17] = v74;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = [v33 TPPBPolicyCategoriesByViewWithView:v75 categories:v76];

  v71[18] = v77;
  v78 = sub_100216964();
  v79 = sub_100216B14().super.isa;
  v80 = [v33 TPPBPolicyCategoriesByViewWithView:v78 categories:v79];

  v71[19] = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_10021D910;
  v82 = v81;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = objc_opt_self();
  v86 = [v85 TPPBPolicyIntroducersByCategoryWithCategory:v83 introducers:v84];

  v82[4] = v86;
  v87 = sub_100216964();
  v88 = sub_100216B14().super.isa;
  v89 = [v85 TPPBPolicyIntroducersByCategoryWithCategory:v87 introducers:v88];

  v82[5] = v89;
  v90 = sub_100216964();
  v91 = sub_100216B14().super.isa;
  v92 = [v85 TPPBPolicyIntroducersByCategoryWithCategory:v90 introducers:v91];

  v82[6] = v92;
  v93 = sub_100216964();
  v94 = sub_100216B14().super.isa;
  v95 = [v85 TPPBPolicyIntroducersByCategoryWithCategory:v93 introducers:v94];

  v82[7] = v95;
  v96 = sub_100216964();
  v97 = sub_100216B14().super.isa;
  v98 = [v85 TPPBPolicyIntroducersByCategoryWithCategory:v96 introducers:v97];

  v82[8] = v98;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_10021D930;
  v100 = v99;
  v101 = objc_opt_self();
  v102 = sub_100216964();
  v103 = sub_100216964();
  v104 = [v101 fieldMatch:v102 fieldRegex:v103];

  v105 = sub_100216964();
  v106 = objc_opt_self();
  v107 = [v106 TPPBPolicyKeyViewMappingWithView:v105 matchingRule:v104];

  v100[4] = v107;
  v108 = sub_100216964();
  v109 = sub_100216964();
  v110 = [v101 fieldMatch:v108 fieldRegex:v109];

  v111 = sub_100216964();
  v112 = [v106 TPPBPolicyKeyViewMappingWithView:v111 matchingRule:v110];

  v100[5] = v112;
  v113 = sub_100216964();
  v114 = sub_100216964();
  v115 = [v101 fieldMatch:v113 fieldRegex:v114];

  v116 = sub_100216964();
  v117 = [v106 TPPBPolicyKeyViewMappingWithView:v116 matchingRule:v115];

  v100[6] = v117;
  v118 = sub_100216964();
  v119 = sub_100216964();
  v120 = [v101 fieldMatch:v118 fieldRegex:v119];

  v121 = sub_100216964();
  v122 = [v106 TPPBPolicyKeyViewMappingWithView:v121 matchingRule:v120];

  v100[7] = v122;
  v123 = sub_100216964();
  v124 = sub_100216964();
  v125 = [v101 fieldMatch:v123 fieldRegex:v124];

  v126 = sub_100216964();
  v127 = [v106 TPPBPolicyKeyViewMappingWithView:v126 matchingRule:v125];

  v100[8] = v127;
  v128 = sub_100216964();
  v129 = sub_100216964();
  v130 = [v101 fieldMatch:v128 fieldRegex:v129];

  v131 = sub_100216964();
  v132 = [v106 TPPBPolicyKeyViewMappingWithView:v131 matchingRule:v130];

  v100[9] = v132;
  v133 = sub_100216964();
  v134 = sub_100216964();
  v135 = [v101 fieldMatch:v133 fieldRegex:v134];

  v136 = sub_100216964();
  v137 = [v106 TPPBPolicyKeyViewMappingWithView:v136 matchingRule:v135];

  v100[10] = v137;
  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_10021D880;
  v139 = sub_100216964();
  v140 = sub_100216964();
  v141 = [v101 fieldMatch:v139 fieldRegex:v140];

  *(v138 + 32) = v141;
  v142 = sub_100216964();
  v143 = sub_100216964();
  v144 = [v101 fieldMatch:v142 fieldRegex:v143];

  *(v138 + 40) = v144;
  v145 = sub_100216964();
  v146 = sub_100216964();
  v147 = [v101 fieldMatch:v145 fieldRegex:v146];

  *(v138 + 48) = v147;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v148 = sub_100216B14().super.isa;

  v149 = [v101 orMatch:v148];

  v150 = sub_100216964();
  v151 = [v106 TPPBPolicyKeyViewMappingWithView:v150 matchingRule:v149];

  v100[11] = v151;
  v152 = sub_100216964();
  v153 = sub_100216964();
  v154 = [v101 fieldMatch:v152 fieldRegex:v153];

  v155 = sub_100216964();
  v156 = [v106 TPPBPolicyKeyViewMappingWithView:v155 matchingRule:v154];

  v100[12] = v156;
  v317 = v100;
  v157 = sub_100216964();
  v158 = sub_100216964();
  v159 = [v101 fieldMatch:v157 fieldRegex:v158];

  v160 = sub_100216964();
  v161 = [v106 TPPBPolicyKeyViewMappingWithView:v160 matchingRule:v159];

  v100[13] = v161;
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_10021D8B0;
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_10021D8D0;
  v164 = sub_100216964();
  v165 = sub_100216964();
  v166 = [v101 fieldMatch:v164 fieldRegex:v165];

  *(v163 + 32) = v166;
  v167 = sub_100216964();
  v168 = sub_100216964();
  v169 = [v101 fieldMatch:v167 fieldRegex:v168];

  *(v163 + 40) = v169;
  v170 = sub_100216B14().super.isa;

  v171 = [v101 andMatch:v170];

  *(v162 + 32) = v171;
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_10021D8D0;
  v173 = sub_100216964();
  v174 = sub_100216964();
  v175 = [v101 fieldMatch:v173 fieldRegex:v174];

  *(v172 + 32) = v175;
  v176 = sub_100216964();
  v177 = sub_100216964();
  v178 = [v101 fieldMatch:v176 fieldRegex:v177];

  *(v172 + 40) = v178;
  v179 = sub_100216B14().super.isa;

  v180 = [v101 andMatch:v179];

  *(v162 + 40) = v180;
  v181 = sub_100216964();
  v182 = sub_100216964();
  v183 = [v101 fieldMatch:v181 fieldRegex:v182];

  *(v162 + 48) = v183;
  v184 = sub_100216964();
  v185 = sub_100216964();
  v186 = [v101 fieldMatch:v184 fieldRegex:v185];

  *(v162 + 56) = v186;
  v187 = sub_100216B14().super.isa;

  v188 = [v101 orMatch:v187];

  v189 = sub_100216964();
  v190 = [v106 TPPBPolicyKeyViewMappingWithView:v189 matchingRule:v188];

  v317[14] = v190;
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_10021D8D0;
  v192 = sub_100216964();
  v193 = sub_100216964();
  v194 = [v101 fieldMatch:v192 fieldRegex:v193];

  *(v191 + 32) = v194;
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_10021D880;
  v196 = sub_100216964();
  v197 = sub_100216964();
  v198 = [v101 fieldMatch:v196 fieldRegex:v197];

  *(v195 + 32) = v198;
  v199 = sub_100216964();
  v200 = sub_100216964();
  v201 = [v101 fieldMatch:v199 fieldRegex:v200];

  *(v195 + 40) = v201;
  v202 = sub_100216964();
  v203 = sub_100216964();
  v204 = [v101 fieldMatch:v202 fieldRegex:v203];

  *(v195 + 48) = v204;
  v205 = sub_100216B14().super.isa;

  v206 = [v101 andMatch:v205];

  *(v191 + 40) = v206;
  v207 = sub_100216B14().super.isa;

  v208 = [v101 orMatch:v207];

  v209 = sub_100216964();
  v210 = [v106 TPPBPolicyKeyViewMappingWithView:v209 matchingRule:v208];

  v317[15] = v210;
  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_10021D8F0;
  v212 = sub_100216964();
  v213 = sub_100216964();
  v214 = [v101 fieldMatch:v212 fieldRegex:v213];

  *(v211 + 32) = v214;
  v215 = sub_100216964();
  v216 = sub_100216964();
  v217 = [v101 fieldMatch:v215 fieldRegex:v216];

  *(v211 + 40) = v217;
  v218 = sub_100216964();
  v219 = sub_100216964();
  v220 = [v101 fieldMatch:v218 fieldRegex:v219];

  *(v211 + 48) = v220;
  v221 = sub_100216964();
  v222 = sub_100216964();
  v223 = [v101 fieldMatch:v221 fieldRegex:v222];

  *(v211 + 56) = v223;
  v224 = sub_100216964();
  v225 = sub_100216964();
  v226 = [v101 fieldMatch:v224 fieldRegex:v225];

  *(v211 + 64) = v226;
  v227 = sub_100216964();
  v228 = sub_100216964();
  v229 = [v101 fieldMatch:v227 fieldRegex:v228];

  *(v211 + 72) = v229;
  v230 = sub_100216964();
  v231 = sub_100216964();
  v232 = [v101 fieldMatch:v230 fieldRegex:v231];

  *(v211 + 80) = v232;
  v233 = sub_100216964();
  v234 = sub_100216964();
  v235 = [v101 fieldMatch:v233 fieldRegex:v234];

  *(v211 + 88) = v235;
  v236 = sub_100216964();
  v237 = sub_100216964();
  v238 = [v101 fieldMatch:v236 fieldRegex:v237];

  *(v211 + 96) = v238;
  v239 = sub_100216964();
  v240 = sub_100216964();
  v241 = [v101 fieldMatch:v239 fieldRegex:v240];

  *(v211 + 104) = v241;
  v242 = sub_100216964();
  v243 = sub_100216964();
  v244 = [v101 fieldMatch:v242 fieldRegex:v243];

  *(v211 + 112) = v244;
  v245 = sub_100216964();
  v246 = sub_100216964();
  v247 = [v101 fieldMatch:v245 fieldRegex:v246];

  *(v211 + 120) = v247;
  v248 = sub_100216964();
  v249 = sub_100216964();
  v250 = [v101 fieldMatch:v248 fieldRegex:v249];

  *(v211 + 128) = v250;
  v251 = sub_100216964();
  v252 = sub_100216964();
  v253 = [v101 fieldMatch:v251 fieldRegex:v252];

  *(v211 + 136) = v253;
  v254 = sub_100216B14().super.isa;

  v255 = [v101 orMatch:v254];

  v256 = sub_100216964();
  v257 = [v106 TPPBPolicyKeyViewMappingWithView:v256 matchingRule:v255];

  v317[16] = v257;
  v258 = swift_allocObject();
  *(v258 + 16) = xmmword_10021D8D0;
  v259 = sub_100216964();
  v260 = sub_100216964();
  v261 = [v101 fieldMatch:v259 fieldRegex:v260];

  *(v258 + 32) = v261;
  v262 = sub_100216964();
  v263 = sub_100216964();
  v264 = [v101 fieldMatch:v262 fieldRegex:v263];

  *(v258 + 40) = v264;
  v265 = sub_100216B14().super.isa;

  v266 = [v101 orMatch:v265];

  v267 = sub_100216964();
  v268 = [v106 TPPBPolicyKeyViewMappingWithView:v267 matchingRule:v266];

  v317[17] = v268;
  v269 = swift_allocObject();
  *(v269 + 16) = xmmword_10021D910;
  v270 = sub_100216964();
  v271 = sub_100216964();
  v272 = [v101 fieldMatch:v270 fieldRegex:v271];

  *(v269 + 32) = v272;
  v273 = sub_100216964();
  v274 = sub_100216964();
  v275 = [v101 fieldMatch:v273 fieldRegex:v274];

  *(v269 + 40) = v275;
  v276 = sub_100216964();
  v277 = sub_100216964();
  v278 = [v101 fieldMatch:v276 fieldRegex:v277];

  *(v269 + 48) = v278;
  v279 = sub_100216964();
  v280 = sub_100216964();
  v281 = [v101 fieldMatch:v279 fieldRegex:v280];

  *(v269 + 56) = v281;
  v282 = sub_100216964();
  v283 = sub_100216964();
  v284 = [v101 fieldMatch:v282 fieldRegex:v283];

  *(v269 + 64) = v284;
  v285 = sub_100216B14().super.isa;

  v286 = [v101 orMatch:v285];

  v287 = sub_100216964();
  v288 = [v106 TPPBPolicyKeyViewMappingWithView:v287 matchingRule:v286];

  v317[18] = v288;
  v289 = swift_allocObject();
  *(v289 + 16) = xmmword_10021D880;
  v290 = sub_100216964();
  v291 = sub_100216964();
  v292 = [v101 fieldMatch:v290 fieldRegex:v291];

  *(v289 + 32) = v292;
  v293 = sub_100216964();
  v294 = sub_100216964();
  v295 = [v101 fieldMatch:v293 fieldRegex:v294];

  *(v289 + 40) = v295;
  v296 = sub_100216964();
  v297 = sub_100216964();
  v298 = [v101 fieldMatch:v296 fieldRegex:v297];

  *(v289 + 48) = v298;
  v299 = sub_100216B14().super.isa;

  v300 = [v101 orMatch:v299];

  v301 = sub_100216964();
  v302 = [v106 TPPBPolicyKeyViewMappingWithView:v301 matchingRule:v300];

  v317[19] = v302;
  v303 = [v101 trueMatch];
  v304 = sub_100216964();
  v305 = [v106 TPPBPolicyKeyViewMappingWithView:v304 matchingRule:v303];

  v317[20] = v305;
  v318 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v306 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v307 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v308 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v309 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v310 = sub_100216B14().super.isa;

  v311 = sub_100216B14().super.isa;
  v312 = sub_100216B14().super.isa;
  v313 = sub_100216B14().super.isa;
  v314 = sub_100216B14().super.isa;
  v315 = [v318 initWithVersion:11 modelToCategory:v306 categoriesByView:v307 introducersByCategory:v308 redactions:v309 keyViewMapping:v310 userControllableViewList:v311 piggybackViews:v312 priorityViews:v313 inheritedExcludedViews:v314 hashAlgo:1];

  return v315;
}

id sub_100030430()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D8C0;
  v31 = v30;
  v32 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyCategoriesByViewWithView:v32 categories:isa];

  v31[4] = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  v31[5] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  v31[6] = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v34 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  v31[7] = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v34 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  v31[8] = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v34 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  v31[9] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v34 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  v31[10] = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v34 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  v31[11] = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v34 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  v31[12] = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v34 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  v31[13] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v34 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  v66 = v31;
  v31[14] = v65;
  v67 = sub_100216964();
  v68 = sub_100216B14().super.isa;
  v69 = [v34 TPPBPolicyCategoriesByViewWithView:v67 categories:v68];

  v66[15] = v69;
  v70 = sub_100216964();
  v71 = sub_100216B14().super.isa;
  v72 = [v34 TPPBPolicyCategoriesByViewWithView:v70 categories:v71];

  v66[16] = v72;
  v73 = sub_100216964();
  v74 = sub_100216B14().super.isa;
  v75 = [v34 TPPBPolicyCategoriesByViewWithView:v73 categories:v74];

  v66[17] = v75;
  v76 = sub_100216964();
  v77 = sub_100216B14().super.isa;
  v78 = [v34 TPPBPolicyCategoriesByViewWithView:v76 categories:v77];

  v66[18] = v78;
  v79 = sub_100216964();
  v80 = sub_100216B14().super.isa;
  v81 = [v34 TPPBPolicyCategoriesByViewWithView:v79 categories:v80];

  v66[19] = v81;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_10021D910;
  v83 = v82;
  v84 = sub_100216964();
  v85 = sub_100216B14().super.isa;
  v86 = objc_opt_self();
  v87 = [v86 TPPBPolicyIntroducersByCategoryWithCategory:v84 introducers:v85];

  v83[4] = v87;
  v88 = sub_100216964();
  v89 = sub_100216B14().super.isa;
  v90 = [v86 TPPBPolicyIntroducersByCategoryWithCategory:v88 introducers:v89];

  v83[5] = v90;
  v91 = sub_100216964();
  v92 = sub_100216B14().super.isa;
  v93 = [v86 TPPBPolicyIntroducersByCategoryWithCategory:v91 introducers:v92];

  v83[6] = v93;
  v94 = sub_100216964();
  v95 = sub_100216B14().super.isa;
  v96 = [v86 TPPBPolicyIntroducersByCategoryWithCategory:v94 introducers:v95];

  v83[7] = v96;
  v97 = sub_100216964();
  v98 = sub_100216B14().super.isa;
  v99 = [v86 TPPBPolicyIntroducersByCategoryWithCategory:v97 introducers:v98];

  v83[8] = v99;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_10021D930;
  v101 = v100;
  v102 = objc_opt_self();
  v103 = sub_100216964();
  v104 = sub_100216964();
  v105 = [v102 fieldMatch:v103 fieldRegex:v104];

  v106 = sub_100216964();
  v107 = objc_opt_self();
  v108 = [v107 TPPBPolicyKeyViewMappingWithView:v106 matchingRule:v105];

  v101[4] = v108;
  v109 = sub_100216964();
  v110 = sub_100216964();
  v111 = [v102 fieldMatch:v109 fieldRegex:v110];

  v112 = sub_100216964();
  v113 = [v107 TPPBPolicyKeyViewMappingWithView:v112 matchingRule:v111];

  v101[5] = v113;
  v114 = sub_100216964();
  v115 = sub_100216964();
  v116 = [v102 fieldMatch:v114 fieldRegex:v115];

  v117 = sub_100216964();
  v118 = [v107 TPPBPolicyKeyViewMappingWithView:v117 matchingRule:v116];

  v101[6] = v118;
  v119 = sub_100216964();
  v120 = sub_100216964();
  v121 = [v102 fieldMatch:v119 fieldRegex:v120];

  v122 = sub_100216964();
  v123 = [v107 TPPBPolicyKeyViewMappingWithView:v122 matchingRule:v121];

  v101[7] = v123;
  v124 = sub_100216964();
  v125 = sub_100216964();
  v126 = [v102 fieldMatch:v124 fieldRegex:v125];

  v127 = sub_100216964();
  v128 = [v107 TPPBPolicyKeyViewMappingWithView:v127 matchingRule:v126];

  v101[8] = v128;
  v129 = sub_100216964();
  v130 = sub_100216964();
  v131 = [v102 fieldMatch:v129 fieldRegex:v130];

  v132 = sub_100216964();
  v133 = [v107 TPPBPolicyKeyViewMappingWithView:v132 matchingRule:v131];

  v101[9] = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v102 fieldMatch:v134 fieldRegex:v135];

  v137 = sub_100216964();
  v138 = [v107 TPPBPolicyKeyViewMappingWithView:v137 matchingRule:v136];

  v101[10] = v138;
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_10021D880;
  v140 = sub_100216964();
  v141 = sub_100216964();
  v142 = [v102 fieldMatch:v140 fieldRegex:v141];

  *(v139 + 32) = v142;
  v143 = sub_100216964();
  v144 = sub_100216964();
  v145 = [v102 fieldMatch:v143 fieldRegex:v144];

  *(v139 + 40) = v145;
  v146 = sub_100216964();
  v147 = sub_100216964();
  v148 = [v102 fieldMatch:v146 fieldRegex:v147];

  *(v139 + 48) = v148;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v149 = sub_100216B14().super.isa;

  v150 = [v102 orMatch:v149];

  v151 = sub_100216964();
  v152 = [v107 TPPBPolicyKeyViewMappingWithView:v151 matchingRule:v150];

  v101[11] = v152;
  v153 = sub_100216964();
  v154 = sub_100216964();
  v155 = [v102 fieldMatch:v153 fieldRegex:v154];

  v156 = sub_100216964();
  v157 = [v107 TPPBPolicyKeyViewMappingWithView:v156 matchingRule:v155];

  v101[12] = v157;
  v158 = sub_100216964();
  v159 = sub_100216964();
  v160 = [v102 fieldMatch:v158 fieldRegex:v159];

  v161 = sub_100216964();
  v162 = [v107 TPPBPolicyKeyViewMappingWithView:v161 matchingRule:v160];

  v101[13] = v162;
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_10021D8B0;
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_10021D8D0;
  v165 = sub_100216964();
  v166 = sub_100216964();
  v167 = [v102 fieldMatch:v165 fieldRegex:v166];

  *(v164 + 32) = v167;
  v168 = sub_100216964();
  v169 = sub_100216964();
  v170 = [v102 fieldMatch:v168 fieldRegex:v169];

  *(v164 + 40) = v170;
  v171 = sub_100216B14().super.isa;

  v172 = [v102 andMatch:v171];

  *(v163 + 32) = v172;
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_10021D8D0;
  v174 = sub_100216964();
  v175 = sub_100216964();
  v176 = [v102 fieldMatch:v174 fieldRegex:v175];

  *(v173 + 32) = v176;
  v177 = sub_100216964();
  v178 = sub_100216964();
  v179 = [v102 fieldMatch:v177 fieldRegex:v178];

  *(v173 + 40) = v179;
  v180 = sub_100216B14().super.isa;

  v181 = [v102 andMatch:v180];

  *(v163 + 40) = v181;
  v182 = sub_100216964();
  v183 = sub_100216964();
  v184 = [v102 fieldMatch:v182 fieldRegex:v183];

  *(v163 + 48) = v184;
  v185 = sub_100216964();
  v186 = sub_100216964();
  v187 = [v102 fieldMatch:v185 fieldRegex:v186];

  *(v163 + 56) = v187;
  v188 = sub_100216B14().super.isa;

  v189 = [v102 orMatch:v188];

  v190 = sub_100216964();
  v191 = [v107 TPPBPolicyKeyViewMappingWithView:v190 matchingRule:v189];

  v101[14] = v191;
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_10021D8D0;
  v193 = sub_100216964();
  v194 = sub_100216964();
  v195 = [v102 fieldMatch:v193 fieldRegex:v194];

  *(v192 + 32) = v195;
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_10021D880;
  v197 = sub_100216964();
  v198 = sub_100216964();
  v199 = [v102 fieldMatch:v197 fieldRegex:v198];

  *(v196 + 32) = v199;
  v200 = sub_100216964();
  v201 = sub_100216964();
  v202 = [v102 fieldMatch:v200 fieldRegex:v201];

  *(v196 + 40) = v202;
  v203 = sub_100216964();
  v204 = sub_100216964();
  v205 = [v102 fieldMatch:v203 fieldRegex:v204];

  *(v196 + 48) = v205;
  v206 = sub_100216B14().super.isa;

  v207 = [v102 andMatch:v206];

  *(v192 + 40) = v207;
  v208 = sub_100216B14().super.isa;

  v209 = [v102 orMatch:v208];

  v210 = sub_100216964();
  v211 = [v107 TPPBPolicyKeyViewMappingWithView:v210 matchingRule:v209];

  v101[15] = v211;
  v212 = swift_allocObject();
  *(v212 + 16) = xmmword_10021D8F0;
  v213 = sub_100216964();
  v214 = sub_100216964();
  v215 = [v102 fieldMatch:v213 fieldRegex:v214];

  *(v212 + 32) = v215;
  v216 = sub_100216964();
  v217 = sub_100216964();
  v218 = [v102 fieldMatch:v216 fieldRegex:v217];

  *(v212 + 40) = v218;
  v219 = sub_100216964();
  v220 = sub_100216964();
  v221 = [v102 fieldMatch:v219 fieldRegex:v220];

  *(v212 + 48) = v221;
  v222 = sub_100216964();
  v223 = sub_100216964();
  v224 = [v102 fieldMatch:v222 fieldRegex:v223];

  *(v212 + 56) = v224;
  v225 = sub_100216964();
  v226 = sub_100216964();
  v227 = [v102 fieldMatch:v225 fieldRegex:v226];

  *(v212 + 64) = v227;
  v228 = sub_100216964();
  v229 = sub_100216964();
  v230 = [v102 fieldMatch:v228 fieldRegex:v229];

  *(v212 + 72) = v230;
  v231 = sub_100216964();
  v232 = sub_100216964();
  v233 = [v102 fieldMatch:v231 fieldRegex:v232];

  *(v212 + 80) = v233;
  v234 = sub_100216964();
  v235 = sub_100216964();
  v236 = [v102 fieldMatch:v234 fieldRegex:v235];

  *(v212 + 88) = v236;
  v237 = sub_100216964();
  v238 = sub_100216964();
  v239 = [v102 fieldMatch:v237 fieldRegex:v238];

  *(v212 + 96) = v239;
  v240 = sub_100216964();
  v241 = sub_100216964();
  v242 = [v102 fieldMatch:v240 fieldRegex:v241];

  *(v212 + 104) = v242;
  v243 = sub_100216964();
  v244 = sub_100216964();
  v245 = [v102 fieldMatch:v243 fieldRegex:v244];

  *(v212 + 112) = v245;
  v246 = sub_100216964();
  v247 = sub_100216964();
  v248 = [v102 fieldMatch:v246 fieldRegex:v247];

  *(v212 + 120) = v248;
  v249 = sub_100216964();
  v250 = sub_100216964();
  v251 = [v102 fieldMatch:v249 fieldRegex:v250];

  *(v212 + 128) = v251;
  v252 = sub_100216964();
  v253 = sub_100216964();
  v254 = [v102 fieldMatch:v252 fieldRegex:v253];

  *(v212 + 136) = v254;
  v255 = sub_100216B14().super.isa;

  v256 = [v102 orMatch:v255];

  v257 = sub_100216964();
  v258 = [v107 TPPBPolicyKeyViewMappingWithView:v257 matchingRule:v256];

  v101[16] = v258;
  v259 = swift_allocObject();
  *(v259 + 16) = xmmword_10021D8D0;
  v260 = sub_100216964();
  v261 = sub_100216964();
  v262 = [v102 fieldMatch:v260 fieldRegex:v261];

  *(v259 + 32) = v262;
  v263 = sub_100216964();
  v264 = sub_100216964();
  v265 = [v102 fieldMatch:v263 fieldRegex:v264];

  *(v259 + 40) = v265;
  v266 = sub_100216B14().super.isa;

  v267 = [v102 orMatch:v266];

  v268 = sub_100216964();
  v269 = [v107 TPPBPolicyKeyViewMappingWithView:v268 matchingRule:v267];

  v101[17] = v269;
  v270 = swift_allocObject();
  *(v270 + 16) = xmmword_10021D910;
  v271 = sub_100216964();
  v272 = sub_100216964();
  v273 = [v102 fieldMatch:v271 fieldRegex:v272];

  *(v270 + 32) = v273;
  v274 = sub_100216964();
  v275 = sub_100216964();
  v276 = [v102 fieldMatch:v274 fieldRegex:v275];

  *(v270 + 40) = v276;
  v277 = sub_100216964();
  v278 = sub_100216964();
  v279 = [v102 fieldMatch:v277 fieldRegex:v278];

  *(v270 + 48) = v279;
  v280 = sub_100216964();
  v281 = sub_100216964();
  v282 = [v102 fieldMatch:v280 fieldRegex:v281];

  *(v270 + 56) = v282;
  v283 = sub_100216964();
  v284 = sub_100216964();
  v285 = [v102 fieldMatch:v283 fieldRegex:v284];

  *(v270 + 64) = v285;
  v286 = sub_100216B14().super.isa;

  v287 = [v102 orMatch:v286];

  v288 = sub_100216964();
  v289 = [v107 TPPBPolicyKeyViewMappingWithView:v288 matchingRule:v287];

  v101[18] = v289;
  v290 = swift_allocObject();
  *(v290 + 16) = xmmword_10021D880;
  v291 = sub_100216964();
  v292 = sub_100216964();
  v293 = [v102 fieldMatch:v291 fieldRegex:v292];

  *(v290 + 32) = v293;
  v294 = sub_100216964();
  v295 = sub_100216964();
  v296 = [v102 fieldMatch:v294 fieldRegex:v295];

  *(v290 + 40) = v296;
  v297 = sub_100216964();
  v298 = sub_100216964();
  v299 = [v102 fieldMatch:v297 fieldRegex:v298];

  *(v290 + 48) = v299;
  v300 = sub_100216B14().super.isa;

  v301 = [v102 orMatch:v300];

  v302 = sub_100216964();
  v303 = [v107 TPPBPolicyKeyViewMappingWithView:v302 matchingRule:v301];

  v101[19] = v303;
  v304 = [v102 trueMatch];
  v305 = sub_100216964();
  v306 = [v107 TPPBPolicyKeyViewMappingWithView:v305 matchingRule:v304];

  v101[20] = v306;
  v307 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v308 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v309 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v310 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v311 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v312 = sub_100216B14().super.isa;

  v313 = sub_100216B14().super.isa;
  v314 = sub_100216B14().super.isa;
  v315 = sub_100216B14().super.isa;
  v316 = sub_100216B14().super.isa;
  v317 = [v307 initWithVersion:12 modelToCategory:v308 categoriesByView:v309 introducersByCategory:v310 redactions:v311 keyViewMapping:v312 userControllableViewList:v313 piggybackViews:v314 priorityViews:v315 inheritedExcludedViews:v316 hashAlgo:1];

  return v317;
}

id sub_100032CA8()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D930;
  v31 = v30;
  v32 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyCategoriesByViewWithView:v32 categories:isa];

  v31[4] = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  v31[5] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  v31[6] = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v34 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  v31[7] = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v34 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  v31[8] = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v34 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  v31[9] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v34 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  v31[10] = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v34 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  v31[11] = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v34 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  v31[12] = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v34 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  v31[13] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v34 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  v31[14] = v65;
  v66 = sub_100216964();
  v67 = sub_100216B14().super.isa;
  v68 = [v34 TPPBPolicyCategoriesByViewWithView:v66 categories:v67];

  v31[15] = v68;
  v69 = sub_100216964();
  v70 = sub_100216B14().super.isa;
  v71 = [v34 TPPBPolicyCategoriesByViewWithView:v69 categories:v70];

  v31[16] = v71;
  v72 = sub_100216964();
  v73 = sub_100216B14().super.isa;
  v74 = [v34 TPPBPolicyCategoriesByViewWithView:v72 categories:v73];

  v31[17] = v74;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = [v34 TPPBPolicyCategoriesByViewWithView:v75 categories:v76];

  v31[18] = v77;
  v78 = sub_100216964();
  v79 = sub_100216B14().super.isa;
  v80 = [v34 TPPBPolicyCategoriesByViewWithView:v78 categories:v79];

  v31[19] = v80;
  v81 = sub_100216964();
  v82 = sub_100216B14().super.isa;
  v83 = [v34 TPPBPolicyCategoriesByViewWithView:v81 categories:v82];

  v31[20] = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_10021D910;
  v85 = v84;
  v86 = sub_100216964();
  v87 = sub_100216B14().super.isa;
  v88 = objc_opt_self();
  v89 = [v88 TPPBPolicyIntroducersByCategoryWithCategory:v86 introducers:v87];

  v85[4] = v89;
  v90 = sub_100216964();
  v91 = sub_100216B14().super.isa;
  v92 = [v88 TPPBPolicyIntroducersByCategoryWithCategory:v90 introducers:v91];

  v85[5] = v92;
  v93 = sub_100216964();
  v94 = sub_100216B14().super.isa;
  v95 = [v88 TPPBPolicyIntroducersByCategoryWithCategory:v93 introducers:v94];

  v85[6] = v95;
  v96 = sub_100216964();
  v97 = sub_100216B14().super.isa;
  v98 = [v88 TPPBPolicyIntroducersByCategoryWithCategory:v96 introducers:v97];

  v85[7] = v98;
  v99 = sub_100216964();
  v100 = sub_100216B14().super.isa;
  v101 = [v88 TPPBPolicyIntroducersByCategoryWithCategory:v99 introducers:v100];

  v85[8] = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_10021D940;
  v103 = v102;
  v104 = objc_opt_self();
  v105 = sub_100216964();
  v106 = sub_100216964();
  v107 = [v104 fieldMatch:v105 fieldRegex:v106];

  v108 = sub_100216964();
  v109 = objc_opt_self();
  v110 = [v109 TPPBPolicyKeyViewMappingWithView:v108 matchingRule:v107];

  v103[4] = v110;
  v111 = sub_100216964();
  v112 = sub_100216964();
  v113 = [v104 fieldMatch:v111 fieldRegex:v112];

  v114 = sub_100216964();
  v115 = [v109 TPPBPolicyKeyViewMappingWithView:v114 matchingRule:v113];

  v103[5] = v115;
  v116 = sub_100216964();
  v117 = sub_100216964();
  v118 = [v104 fieldMatch:v116 fieldRegex:v117];

  v119 = sub_100216964();
  v120 = [v109 TPPBPolicyKeyViewMappingWithView:v119 matchingRule:v118];

  v103[6] = v120;
  v121 = sub_100216964();
  v122 = sub_100216964();
  v123 = [v104 fieldMatch:v121 fieldRegex:v122];

  v124 = sub_100216964();
  v125 = [v109 TPPBPolicyKeyViewMappingWithView:v124 matchingRule:v123];

  v103[7] = v125;
  v126 = sub_100216964();
  v127 = sub_100216964();
  v128 = [v104 fieldMatch:v126 fieldRegex:v127];

  v129 = sub_100216964();
  v130 = [v109 TPPBPolicyKeyViewMappingWithView:v129 matchingRule:v128];

  v103[8] = v130;
  v131 = sub_100216964();
  v132 = sub_100216964();
  v133 = [v104 fieldMatch:v131 fieldRegex:v132];

  v134 = sub_100216964();
  v135 = [v109 TPPBPolicyKeyViewMappingWithView:v134 matchingRule:v133];

  v103[9] = v135;
  v136 = sub_100216964();
  v137 = sub_100216964();
  v138 = [v104 fieldMatch:v136 fieldRegex:v137];

  v139 = sub_100216964();
  v140 = [v109 TPPBPolicyKeyViewMappingWithView:v139 matchingRule:v138];

  v103[10] = v140;
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_10021D880;
  v142 = sub_100216964();
  v143 = sub_100216964();
  v144 = [v104 fieldMatch:v142 fieldRegex:v143];

  *(v141 + 32) = v144;
  v145 = sub_100216964();
  v146 = sub_100216964();
  v147 = [v104 fieldMatch:v145 fieldRegex:v146];

  *(v141 + 40) = v147;
  v148 = sub_100216964();
  v149 = sub_100216964();
  v150 = [v104 fieldMatch:v148 fieldRegex:v149];

  *(v141 + 48) = v150;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v151 = sub_100216B14().super.isa;

  v152 = [v104 orMatch:v151];

  v153 = sub_100216964();
  v154 = [v109 TPPBPolicyKeyViewMappingWithView:v153 matchingRule:v152];

  v103[11] = v154;
  v155 = sub_100216964();
  v156 = sub_100216964();
  v157 = [v104 fieldMatch:v155 fieldRegex:v156];

  v158 = sub_100216964();
  v159 = [v109 TPPBPolicyKeyViewMappingWithView:v158 matchingRule:v157];

  v103[12] = v159;
  v160 = sub_100216964();
  v161 = sub_100216964();
  v162 = [v104 fieldMatch:v160 fieldRegex:v161];

  v163 = sub_100216964();
  v164 = [v109 TPPBPolicyKeyViewMappingWithView:v163 matchingRule:v162];

  v103[13] = v164;
  v326 = v103;
  v165 = sub_100216964();
  v166 = sub_100216964();
  v167 = [v104 fieldMatch:v165 fieldRegex:v166];

  v168 = sub_100216964();
  v169 = [v109 TPPBPolicyKeyViewMappingWithView:v168 matchingRule:v167];

  v103[14] = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_10021D8B0;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_10021D8D0;
  v172 = sub_100216964();
  v173 = sub_100216964();
  v174 = [v104 fieldMatch:v172 fieldRegex:v173];

  *(v171 + 32) = v174;
  v175 = sub_100216964();
  v176 = sub_100216964();
  v177 = [v104 fieldMatch:v175 fieldRegex:v176];

  *(v171 + 40) = v177;
  v178 = sub_100216B14().super.isa;

  v179 = [v104 andMatch:v178];

  *(v170 + 32) = v179;
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_10021D8D0;
  v181 = sub_100216964();
  v182 = sub_100216964();
  v183 = [v104 fieldMatch:v181 fieldRegex:v182];

  *(v180 + 32) = v183;
  v184 = sub_100216964();
  v185 = sub_100216964();
  v186 = [v104 fieldMatch:v184 fieldRegex:v185];

  *(v180 + 40) = v186;
  v187 = sub_100216B14().super.isa;

  v188 = [v104 andMatch:v187];

  *(v170 + 40) = v188;
  v189 = sub_100216964();
  v190 = sub_100216964();
  v191 = [v104 fieldMatch:v189 fieldRegex:v190];

  *(v170 + 48) = v191;
  v192 = sub_100216964();
  v193 = sub_100216964();
  v194 = [v104 fieldMatch:v192 fieldRegex:v193];

  *(v170 + 56) = v194;
  v195 = sub_100216B14().super.isa;

  v196 = [v104 orMatch:v195];

  v197 = sub_100216964();
  v198 = [v109 TPPBPolicyKeyViewMappingWithView:v197 matchingRule:v196];

  v326[15] = v198;
  v199 = swift_allocObject();
  *(v199 + 16) = xmmword_10021D8D0;
  v200 = sub_100216964();
  v201 = sub_100216964();
  v202 = [v104 fieldMatch:v200 fieldRegex:v201];

  *(v199 + 32) = v202;
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_10021D880;
  v204 = sub_100216964();
  v205 = sub_100216964();
  v206 = [v104 fieldMatch:v204 fieldRegex:v205];

  *(v203 + 32) = v206;
  v207 = sub_100216964();
  v208 = sub_100216964();
  v209 = [v104 fieldMatch:v207 fieldRegex:v208];

  *(v203 + 40) = v209;
  v210 = sub_100216964();
  v211 = sub_100216964();
  v212 = [v104 fieldMatch:v210 fieldRegex:v211];

  *(v203 + 48) = v212;
  v213 = sub_100216B14().super.isa;

  v214 = [v104 andMatch:v213];

  *(v199 + 40) = v214;
  v215 = sub_100216B14().super.isa;

  v216 = [v104 orMatch:v215];

  v217 = sub_100216964();
  v218 = [v109 TPPBPolicyKeyViewMappingWithView:v217 matchingRule:v216];

  v326[16] = v218;
  v219 = swift_allocObject();
  *(v219 + 16) = xmmword_10021D8F0;
  v220 = sub_100216964();
  v221 = sub_100216964();
  v222 = [v104 fieldMatch:v220 fieldRegex:v221];

  *(v219 + 32) = v222;
  v223 = sub_100216964();
  v224 = sub_100216964();
  v225 = [v104 fieldMatch:v223 fieldRegex:v224];

  *(v219 + 40) = v225;
  v226 = sub_100216964();
  v227 = sub_100216964();
  v228 = [v104 fieldMatch:v226 fieldRegex:v227];

  *(v219 + 48) = v228;
  v229 = sub_100216964();
  v230 = sub_100216964();
  v231 = [v104 fieldMatch:v229 fieldRegex:v230];

  *(v219 + 56) = v231;
  v232 = sub_100216964();
  v233 = sub_100216964();
  v234 = [v104 fieldMatch:v232 fieldRegex:v233];

  *(v219 + 64) = v234;
  v235 = sub_100216964();
  v236 = sub_100216964();
  v237 = [v104 fieldMatch:v235 fieldRegex:v236];

  *(v219 + 72) = v237;
  v238 = sub_100216964();
  v239 = sub_100216964();
  v240 = [v104 fieldMatch:v238 fieldRegex:v239];

  *(v219 + 80) = v240;
  v241 = sub_100216964();
  v242 = sub_100216964();
  v243 = [v104 fieldMatch:v241 fieldRegex:v242];

  *(v219 + 88) = v243;
  v244 = sub_100216964();
  v245 = sub_100216964();
  v246 = [v104 fieldMatch:v244 fieldRegex:v245];

  *(v219 + 96) = v246;
  v247 = sub_100216964();
  v248 = sub_100216964();
  v249 = [v104 fieldMatch:v247 fieldRegex:v248];

  *(v219 + 104) = v249;
  v250 = sub_100216964();
  v251 = sub_100216964();
  v252 = [v104 fieldMatch:v250 fieldRegex:v251];

  *(v219 + 112) = v252;
  v253 = sub_100216964();
  v254 = sub_100216964();
  v255 = [v104 fieldMatch:v253 fieldRegex:v254];

  *(v219 + 120) = v255;
  v256 = sub_100216964();
  v257 = sub_100216964();
  v258 = [v104 fieldMatch:v256 fieldRegex:v257];

  *(v219 + 128) = v258;
  v259 = sub_100216964();
  v260 = sub_100216964();
  v261 = [v104 fieldMatch:v259 fieldRegex:v260];

  *(v219 + 136) = v261;
  v262 = sub_100216B14().super.isa;

  v263 = [v104 orMatch:v262];

  v264 = sub_100216964();
  v265 = [v109 TPPBPolicyKeyViewMappingWithView:v264 matchingRule:v263];

  v326[17] = v265;
  v266 = swift_allocObject();
  *(v266 + 16) = xmmword_10021D8D0;
  v267 = sub_100216964();
  v268 = sub_100216964();
  v269 = [v104 fieldMatch:v267 fieldRegex:v268];

  *(v266 + 32) = v269;
  v270 = sub_100216964();
  v271 = sub_100216964();
  v272 = [v104 fieldMatch:v270 fieldRegex:v271];

  *(v266 + 40) = v272;
  v273 = sub_100216B14().super.isa;

  v274 = [v104 orMatch:v273];

  v275 = sub_100216964();
  v276 = [v109 TPPBPolicyKeyViewMappingWithView:v275 matchingRule:v274];

  v326[18] = v276;
  v277 = swift_allocObject();
  *(v277 + 16) = xmmword_10021D910;
  v278 = sub_100216964();
  v279 = sub_100216964();
  v280 = [v104 fieldMatch:v278 fieldRegex:v279];

  *(v277 + 32) = v280;
  v281 = sub_100216964();
  v282 = sub_100216964();
  v283 = [v104 fieldMatch:v281 fieldRegex:v282];

  *(v277 + 40) = v283;
  v284 = sub_100216964();
  v285 = sub_100216964();
  v286 = [v104 fieldMatch:v284 fieldRegex:v285];

  *(v277 + 48) = v286;
  v287 = sub_100216964();
  v288 = sub_100216964();
  v289 = [v104 fieldMatch:v287 fieldRegex:v288];

  *(v277 + 56) = v289;
  v290 = sub_100216964();
  v291 = sub_100216964();
  v292 = [v104 fieldMatch:v290 fieldRegex:v291];

  *(v277 + 64) = v292;
  v293 = sub_100216B14().super.isa;

  v294 = [v104 orMatch:v293];

  v295 = sub_100216964();
  v296 = [v109 TPPBPolicyKeyViewMappingWithView:v295 matchingRule:v294];

  v326[19] = v296;
  v297 = swift_allocObject();
  *(v297 + 16) = xmmword_10021D880;
  v298 = sub_100216964();
  v299 = sub_100216964();
  v300 = [v104 fieldMatch:v298 fieldRegex:v299];

  *(v297 + 32) = v300;
  v301 = sub_100216964();
  v302 = sub_100216964();
  v303 = [v104 fieldMatch:v301 fieldRegex:v302];

  *(v297 + 40) = v303;
  v304 = sub_100216964();
  v305 = sub_100216964();
  v306 = [v104 fieldMatch:v304 fieldRegex:v305];

  *(v297 + 48) = v306;
  v307 = sub_100216B14().super.isa;

  v308 = [v104 orMatch:v307];

  v309 = sub_100216964();
  v310 = [v109 TPPBPolicyKeyViewMappingWithView:v309 matchingRule:v308];

  v326[20] = v310;
  v311 = [v104 trueMatch];
  v312 = sub_100216964();
  v313 = [v109 TPPBPolicyKeyViewMappingWithView:v312 matchingRule:v311];

  v326[21] = v313;
  v314 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v315 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v316 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v317 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v318 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v319 = sub_100216B14().super.isa;

  v320 = sub_100216B14().super.isa;
  v321 = sub_100216B14().super.isa;
  v322 = sub_100216B14().super.isa;
  v323 = sub_100216B14().super.isa;
  v324 = [v314 initWithVersion:13 modelToCategory:v315 categoriesByView:v316 introducersByCategory:v317 redactions:v318 keyViewMapping:v319 userControllableViewList:v320 piggybackViews:v321 priorityViews:v322 inheritedExcludedViews:v323 hashAlgo:1];

  return v324;
}

id sub_1000355E4()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D930;
  v31 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v33 = objc_opt_self();
  v34 = [v33 TPPBPolicyCategoriesByViewWithView:v31 categories:isa];

  *(v30 + 32) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v33 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v30 + 40) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v33 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v30 + 48) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v33 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v30 + 56) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v33 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v30 + 64) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v33 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v30 + 72) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v33 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v30 + 80) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v33 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v30 + 88) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v33 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v30 + 96) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v33 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v30 + 104) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v33 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v30 + 112) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v33 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v30 + 120) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v33 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v30 + 128) = v70;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v33 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v30 + 136) = v73;
  v74 = sub_100216964();
  v75 = sub_100216B14().super.isa;
  v76 = [v33 TPPBPolicyCategoriesByViewWithView:v74 categories:v75];

  *(v30 + 144) = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v33 TPPBPolicyCategoriesByViewWithView:v77 categories:v78];

  *(v30 + 152) = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v33 TPPBPolicyCategoriesByViewWithView:v80 categories:v81];

  *(v30 + 160) = v82;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_10021D910;
  v84 = v83;
  v85 = sub_100216964();
  v86 = sub_100216B14().super.isa;
  v87 = objc_opt_self();
  v88 = [v87 TPPBPolicyIntroducersByCategoryWithCategory:v85 introducers:v86];

  v84[4] = v88;
  v89 = sub_100216964();
  v90 = sub_100216B14().super.isa;
  v91 = [v87 TPPBPolicyIntroducersByCategoryWithCategory:v89 introducers:v90];

  v84[5] = v91;
  v92 = sub_100216964();
  v93 = sub_100216B14().super.isa;
  v94 = [v87 TPPBPolicyIntroducersByCategoryWithCategory:v92 introducers:v93];

  v84[6] = v94;
  v95 = sub_100216964();
  v96 = sub_100216B14().super.isa;
  v97 = [v87 TPPBPolicyIntroducersByCategoryWithCategory:v95 introducers:v96];

  v84[7] = v97;
  v98 = sub_100216964();
  v99 = sub_100216B14().super.isa;
  v100 = [v87 TPPBPolicyIntroducersByCategoryWithCategory:v98 introducers:v99];

  v84[8] = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_10021D940;
  v102 = v101;
  v103 = objc_opt_self();
  v104 = sub_100216964();
  v105 = sub_100216964();
  v106 = [v103 fieldMatch:v104 fieldRegex:v105];

  v107 = sub_100216964();
  v108 = objc_opt_self();
  v109 = [v108 TPPBPolicyKeyViewMappingWithView:v107 matchingRule:v106];

  v102[4] = v109;
  v110 = sub_100216964();
  v111 = sub_100216964();
  v112 = [v103 fieldMatch:v110 fieldRegex:v111];

  v113 = sub_100216964();
  v114 = [v108 TPPBPolicyKeyViewMappingWithView:v113 matchingRule:v112];

  v102[5] = v114;
  v115 = sub_100216964();
  v116 = sub_100216964();
  v117 = [v103 fieldMatch:v115 fieldRegex:v116];

  v118 = sub_100216964();
  v119 = [v108 TPPBPolicyKeyViewMappingWithView:v118 matchingRule:v117];

  v102[6] = v119;
  v120 = sub_100216964();
  v121 = sub_100216964();
  v122 = [v103 fieldMatch:v120 fieldRegex:v121];

  v123 = sub_100216964();
  v124 = [v108 TPPBPolicyKeyViewMappingWithView:v123 matchingRule:v122];

  v102[7] = v124;
  v125 = sub_100216964();
  v126 = sub_100216964();
  v127 = [v103 fieldMatch:v125 fieldRegex:v126];

  v128 = sub_100216964();
  v129 = [v108 TPPBPolicyKeyViewMappingWithView:v128 matchingRule:v127];

  v102[8] = v129;
  v130 = sub_100216964();
  v131 = sub_100216964();
  v132 = [v103 fieldMatch:v130 fieldRegex:v131];

  v133 = sub_100216964();
  v134 = [v108 TPPBPolicyKeyViewMappingWithView:v133 matchingRule:v132];

  v102[9] = v134;
  v135 = sub_100216964();
  v136 = sub_100216964();
  v137 = [v103 fieldMatch:v135 fieldRegex:v136];

  v138 = sub_100216964();
  v139 = [v108 TPPBPolicyKeyViewMappingWithView:v138 matchingRule:v137];

  v102[10] = v139;
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_10021D880;
  v141 = sub_100216964();
  v142 = sub_100216964();
  v143 = [v103 fieldMatch:v141 fieldRegex:v142];

  *(v140 + 32) = v143;
  v144 = sub_100216964();
  v145 = sub_100216964();
  v146 = [v103 fieldMatch:v144 fieldRegex:v145];

  *(v140 + 40) = v146;
  v147 = sub_100216964();
  v148 = sub_100216964();
  v149 = [v103 fieldMatch:v147 fieldRegex:v148];

  *(v140 + 48) = v149;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v150 = sub_100216B14().super.isa;

  v151 = [v103 orMatch:v150];

  v152 = sub_100216964();
  v153 = [v108 TPPBPolicyKeyViewMappingWithView:v152 matchingRule:v151];

  v102[11] = v153;
  v154 = sub_100216964();
  v155 = sub_100216964();
  v156 = [v103 fieldMatch:v154 fieldRegex:v155];

  v157 = sub_100216964();
  v158 = [v108 TPPBPolicyKeyViewMappingWithView:v157 matchingRule:v156];

  v102[12] = v158;
  v159 = sub_100216964();
  v160 = sub_100216964();
  v161 = [v103 fieldMatch:v159 fieldRegex:v160];

  v162 = sub_100216964();
  v163 = [v108 TPPBPolicyKeyViewMappingWithView:v162 matchingRule:v161];

  v102[13] = v163;
  v164 = sub_100216964();
  v165 = sub_100216964();
  v166 = [v103 fieldMatch:v164 fieldRegex:v165];

  v167 = sub_100216964();
  v168 = [v108 TPPBPolicyKeyViewMappingWithView:v167 matchingRule:v166];

  v102[14] = v168;
  v169 = swift_allocObject();
  *(v169 + 16) = xmmword_10021D8B0;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_10021D8D0;
  v171 = sub_100216964();
  v172 = sub_100216964();
  v173 = [v103 fieldMatch:v171 fieldRegex:v172];

  *(v170 + 32) = v173;
  v174 = sub_100216964();
  v175 = sub_100216964();
  v176 = [v103 fieldMatch:v174 fieldRegex:v175];

  *(v170 + 40) = v176;
  v177 = sub_100216B14().super.isa;

  v178 = [v103 andMatch:v177];

  *(v169 + 32) = v178;
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_10021D8D0;
  v180 = sub_100216964();
  v181 = sub_100216964();
  v182 = [v103 fieldMatch:v180 fieldRegex:v181];

  *(v179 + 32) = v182;
  v183 = sub_100216964();
  v184 = sub_100216964();
  v185 = [v103 fieldMatch:v183 fieldRegex:v184];

  *(v179 + 40) = v185;
  v186 = sub_100216B14().super.isa;

  v187 = [v103 andMatch:v186];

  *(v169 + 40) = v187;
  v188 = sub_100216964();
  v189 = sub_100216964();
  v190 = [v103 fieldMatch:v188 fieldRegex:v189];

  *(v169 + 48) = v190;
  v191 = sub_100216964();
  v192 = sub_100216964();
  v193 = [v103 fieldMatch:v191 fieldRegex:v192];

  *(v169 + 56) = v193;
  v194 = sub_100216B14().super.isa;

  v195 = [v103 orMatch:v194];

  v196 = sub_100216964();
  v197 = [v108 TPPBPolicyKeyViewMappingWithView:v196 matchingRule:v195];

  v102[15] = v197;
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_10021D8D0;
  v199 = sub_100216964();
  v200 = sub_100216964();
  v201 = [v103 fieldMatch:v199 fieldRegex:v200];

  *(v198 + 32) = v201;
  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_10021D880;
  v203 = sub_100216964();
  v204 = sub_100216964();
  v205 = [v103 fieldMatch:v203 fieldRegex:v204];

  *(v202 + 32) = v205;
  v206 = sub_100216964();
  v207 = sub_100216964();
  v208 = [v103 fieldMatch:v206 fieldRegex:v207];

  *(v202 + 40) = v208;
  v209 = sub_100216964();
  v210 = sub_100216964();
  v211 = [v103 fieldMatch:v209 fieldRegex:v210];

  *(v202 + 48) = v211;
  v212 = sub_100216B14().super.isa;

  v213 = [v103 andMatch:v212];

  *(v198 + 40) = v213;
  v214 = sub_100216B14().super.isa;

  v215 = [v103 orMatch:v214];

  v216 = sub_100216964();
  v217 = [v108 TPPBPolicyKeyViewMappingWithView:v216 matchingRule:v215];

  v102[16] = v217;
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_10021D8F0;
  v219 = sub_100216964();
  v220 = sub_100216964();
  v221 = [v103 fieldMatch:v219 fieldRegex:v220];

  *(v218 + 32) = v221;
  v222 = sub_100216964();
  v223 = sub_100216964();
  v224 = [v103 fieldMatch:v222 fieldRegex:v223];

  *(v218 + 40) = v224;
  v225 = sub_100216964();
  v226 = sub_100216964();
  v227 = [v103 fieldMatch:v225 fieldRegex:v226];

  *(v218 + 48) = v227;
  v228 = sub_100216964();
  v229 = sub_100216964();
  v230 = [v103 fieldMatch:v228 fieldRegex:v229];

  *(v218 + 56) = v230;
  v231 = sub_100216964();
  v232 = sub_100216964();
  v233 = [v103 fieldMatch:v231 fieldRegex:v232];

  *(v218 + 64) = v233;
  v234 = sub_100216964();
  v235 = sub_100216964();
  v236 = [v103 fieldMatch:v234 fieldRegex:v235];

  *(v218 + 72) = v236;
  v237 = sub_100216964();
  v238 = sub_100216964();
  v239 = [v103 fieldMatch:v237 fieldRegex:v238];

  *(v218 + 80) = v239;
  v240 = sub_100216964();
  v241 = sub_100216964();
  v242 = [v103 fieldMatch:v240 fieldRegex:v241];

  *(v218 + 88) = v242;
  v243 = sub_100216964();
  v244 = sub_100216964();
  v245 = [v103 fieldMatch:v243 fieldRegex:v244];

  *(v218 + 96) = v245;
  v246 = sub_100216964();
  v247 = sub_100216964();
  v248 = [v103 fieldMatch:v246 fieldRegex:v247];

  *(v218 + 104) = v248;
  v249 = sub_100216964();
  v250 = sub_100216964();
  v251 = [v103 fieldMatch:v249 fieldRegex:v250];

  *(v218 + 112) = v251;
  v252 = sub_100216964();
  v253 = sub_100216964();
  v254 = [v103 fieldMatch:v252 fieldRegex:v253];

  *(v218 + 120) = v254;
  v255 = sub_100216964();
  v256 = sub_100216964();
  v257 = [v103 fieldMatch:v255 fieldRegex:v256];

  *(v218 + 128) = v257;
  v258 = sub_100216964();
  v259 = sub_100216964();
  v260 = [v103 fieldMatch:v258 fieldRegex:v259];

  *(v218 + 136) = v260;
  v261 = sub_100216B14().super.isa;

  v262 = [v103 orMatch:v261];

  v263 = sub_100216964();
  v264 = [v108 TPPBPolicyKeyViewMappingWithView:v263 matchingRule:v262];

  v102[17] = v264;
  v265 = swift_allocObject();
  *(v265 + 16) = xmmword_10021D8D0;
  v266 = sub_100216964();
  v267 = sub_100216964();
  v268 = [v103 fieldMatch:v266 fieldRegex:v267];

  *(v265 + 32) = v268;
  v269 = sub_100216964();
  v270 = sub_100216964();
  v271 = [v103 fieldMatch:v269 fieldRegex:v270];

  *(v265 + 40) = v271;
  v272 = sub_100216B14().super.isa;

  v273 = [v103 orMatch:v272];

  v274 = sub_100216964();
  v275 = [v108 TPPBPolicyKeyViewMappingWithView:v274 matchingRule:v273];

  v102[18] = v275;
  v276 = swift_allocObject();
  *(v276 + 16) = xmmword_10021D950;
  v277 = sub_100216964();
  v278 = sub_100216964();
  v279 = [v103 fieldMatch:v277 fieldRegex:v278];

  *(v276 + 32) = v279;
  v280 = sub_100216964();
  v281 = sub_100216964();
  v282 = [v103 fieldMatch:v280 fieldRegex:v281];

  *(v276 + 40) = v282;
  v283 = sub_100216964();
  v284 = sub_100216964();
  v285 = [v103 fieldMatch:v283 fieldRegex:v284];

  *(v276 + 48) = v285;
  v286 = sub_100216964();
  v287 = sub_100216964();
  v288 = [v103 fieldMatch:v286 fieldRegex:v287];

  *(v276 + 56) = v288;
  v289 = sub_100216964();
  v290 = sub_100216964();
  v291 = [v103 fieldMatch:v289 fieldRegex:v290];

  *(v276 + 64) = v291;
  v292 = sub_100216964();
  v293 = sub_100216964();
  v294 = [v103 fieldMatch:v292 fieldRegex:v293];

  *(v276 + 72) = v294;
  v295 = sub_100216964();
  v296 = sub_100216964();
  v297 = [v103 fieldMatch:v295 fieldRegex:v296];

  *(v276 + 80) = v297;
  v298 = sub_100216964();
  v299 = sub_100216964();
  v300 = [v103 fieldMatch:v298 fieldRegex:v299];

  *(v276 + 88) = v300;
  v301 = sub_100216964();
  v302 = sub_100216964();
  v303 = [v103 fieldMatch:v301 fieldRegex:v302];

  *(v276 + 96) = v303;
  v304 = sub_100216964();
  v305 = sub_100216964();
  v306 = [v103 fieldMatch:v304 fieldRegex:v305];

  *(v276 + 104) = v306;
  v307 = sub_100216B14().super.isa;

  v308 = [v103 orMatch:v307];

  v309 = sub_100216964();
  v310 = [v108 TPPBPolicyKeyViewMappingWithView:v309 matchingRule:v308];

  v102[19] = v310;
  v311 = swift_allocObject();
  *(v311 + 16) = xmmword_10021D880;
  v312 = sub_100216964();
  v313 = sub_100216964();
  v314 = [v103 fieldMatch:v312 fieldRegex:v313];

  *(v311 + 32) = v314;
  v315 = sub_100216964();
  v316 = sub_100216964();
  v317 = [v103 fieldMatch:v315 fieldRegex:v316];

  *(v311 + 40) = v317;
  v318 = sub_100216964();
  v319 = sub_100216964();
  v320 = [v103 fieldMatch:v318 fieldRegex:v319];

  *(v311 + 48) = v320;
  v321 = sub_100216B14().super.isa;

  v322 = [v103 orMatch:v321];

  v323 = sub_100216964();
  v324 = [v108 TPPBPolicyKeyViewMappingWithView:v323 matchingRule:v322];

  v102[20] = v324;
  v325 = [v103 trueMatch];
  v326 = sub_100216964();
  v327 = [v108 TPPBPolicyKeyViewMappingWithView:v326 matchingRule:v325];

  v102[21] = v327;
  v328 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v329 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v330 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v331 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v332 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v333 = sub_100216B14().super.isa;

  v334 = sub_100216B14().super.isa;
  v335 = sub_100216B14().super.isa;
  v336 = sub_100216B14().super.isa;
  v337 = sub_100216B14().super.isa;
  v338 = [v328 initWithVersion:15 modelToCategory:v329 categoriesByView:v330 introducersByCategory:v331 redactions:v332 keyViewMapping:v333 userControllableViewList:v334 piggybackViews:v335 priorityViews:v336 inheritedExcludedViews:v337 hashAlgo:1];

  return v338;
}

id sub_1000380E4()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D940;
  v31 = v30;
  v32 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyCategoriesByViewWithView:v32 categories:isa];

  v31[4] = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  v31[5] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  v31[6] = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v34 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  v31[7] = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v34 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  v31[8] = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v34 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  v31[9] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v34 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  v31[10] = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v34 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  v31[11] = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v34 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  v31[12] = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v34 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  v31[13] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v34 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  v31[14] = v65;
  v66 = sub_100216964();
  v67 = sub_100216B14().super.isa;
  v68 = [v34 TPPBPolicyCategoriesByViewWithView:v66 categories:v67];

  v31[15] = v68;
  v69 = sub_100216964();
  v70 = sub_100216B14().super.isa;
  v71 = [v34 TPPBPolicyCategoriesByViewWithView:v69 categories:v70];

  v31[16] = v71;
  v72 = sub_100216964();
  v73 = sub_100216B14().super.isa;
  v74 = [v34 TPPBPolicyCategoriesByViewWithView:v72 categories:v73];

  v31[17] = v74;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = [v34 TPPBPolicyCategoriesByViewWithView:v75 categories:v76];

  v31[18] = v77;
  v78 = sub_100216964();
  v79 = sub_100216B14().super.isa;
  v80 = [v34 TPPBPolicyCategoriesByViewWithView:v78 categories:v79];

  v31[19] = v80;
  v81 = sub_100216964();
  v82 = sub_100216B14().super.isa;
  v83 = [v34 TPPBPolicyCategoriesByViewWithView:v81 categories:v82];

  v31[20] = v83;
  v84 = sub_100216964();
  v85 = sub_100216B14().super.isa;
  v86 = [v34 TPPBPolicyCategoriesByViewWithView:v84 categories:v85];

  v31[21] = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_10021D910;
  v88 = v87;
  v89 = sub_100216964();
  v90 = sub_100216B14().super.isa;
  v91 = objc_opt_self();
  v92 = [v91 TPPBPolicyIntroducersByCategoryWithCategory:v89 introducers:v90];

  v88[4] = v92;
  v93 = sub_100216964();
  v94 = sub_100216B14().super.isa;
  v95 = [v91 TPPBPolicyIntroducersByCategoryWithCategory:v93 introducers:v94];

  v88[5] = v95;
  v96 = sub_100216964();
  v97 = sub_100216B14().super.isa;
  v98 = [v91 TPPBPolicyIntroducersByCategoryWithCategory:v96 introducers:v97];

  v88[6] = v98;
  v99 = sub_100216964();
  v100 = sub_100216B14().super.isa;
  v101 = [v91 TPPBPolicyIntroducersByCategoryWithCategory:v99 introducers:v100];

  v88[7] = v101;
  v102 = sub_100216964();
  v103 = sub_100216B14().super.isa;
  v104 = [v91 TPPBPolicyIntroducersByCategoryWithCategory:v102 introducers:v103];

  v88[8] = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_10021D960;
  v106 = v105;
  v107 = objc_opt_self();
  v108 = sub_100216964();
  v109 = sub_100216964();
  v110 = [v107 fieldMatch:v108 fieldRegex:v109];

  v111 = sub_100216964();
  v112 = objc_opt_self();
  v113 = [v112 TPPBPolicyKeyViewMappingWithView:v111 matchingRule:v110];

  v106[4] = v113;
  v114 = sub_100216964();
  v115 = sub_100216964();
  v116 = [v107 fieldMatch:v114 fieldRegex:v115];

  v117 = sub_100216964();
  v118 = [v112 TPPBPolicyKeyViewMappingWithView:v117 matchingRule:v116];

  v106[5] = v118;
  v119 = sub_100216964();
  v120 = sub_100216964();
  v121 = [v107 fieldMatch:v119 fieldRegex:v120];

  v122 = sub_100216964();
  v123 = [v112 TPPBPolicyKeyViewMappingWithView:v122 matchingRule:v121];

  v106[6] = v123;
  v124 = sub_100216964();
  v125 = sub_100216964();
  v126 = [v107 fieldMatch:v124 fieldRegex:v125];

  v127 = sub_100216964();
  v128 = [v112 TPPBPolicyKeyViewMappingWithView:v127 matchingRule:v126];

  v106[7] = v128;
  v129 = sub_100216964();
  v130 = sub_100216964();
  v131 = [v107 fieldMatch:v129 fieldRegex:v130];

  v132 = sub_100216964();
  v133 = [v112 TPPBPolicyKeyViewMappingWithView:v132 matchingRule:v131];

  v106[8] = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v107 fieldMatch:v134 fieldRegex:v135];

  v137 = sub_100216964();
  v138 = [v112 TPPBPolicyKeyViewMappingWithView:v137 matchingRule:v136];

  v106[9] = v138;
  v139 = sub_100216964();
  v140 = sub_100216964();
  v141 = [v107 fieldMatch:v139 fieldRegex:v140];

  v142 = sub_100216964();
  v143 = [v112 TPPBPolicyKeyViewMappingWithView:v142 matchingRule:v141];

  v106[10] = v143;
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_10021D880;
  v145 = sub_100216964();
  v146 = sub_100216964();
  v147 = [v107 fieldMatch:v145 fieldRegex:v146];

  *(v144 + 32) = v147;
  v148 = sub_100216964();
  v149 = sub_100216964();
  v150 = [v107 fieldMatch:v148 fieldRegex:v149];

  *(v144 + 40) = v150;
  v151 = sub_100216964();
  v152 = sub_100216964();
  v153 = [v107 fieldMatch:v151 fieldRegex:v152];

  *(v144 + 48) = v153;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v154 = sub_100216B14().super.isa;

  v155 = [v107 orMatch:v154];

  v156 = sub_100216964();
  v157 = [v112 TPPBPolicyKeyViewMappingWithView:v156 matchingRule:v155];

  v106[11] = v157;
  v158 = sub_100216964();
  v159 = sub_100216964();
  v160 = [v107 fieldMatch:v158 fieldRegex:v159];

  v161 = sub_100216964();
  v162 = [v112 TPPBPolicyKeyViewMappingWithView:v161 matchingRule:v160];

  v106[12] = v162;
  v163 = sub_100216964();
  v164 = sub_100216964();
  v165 = [v107 fieldMatch:v163 fieldRegex:v164];

  v166 = sub_100216964();
  v167 = [v112 TPPBPolicyKeyViewMappingWithView:v166 matchingRule:v165];

  v106[13] = v167;
  v168 = sub_100216964();
  v169 = sub_100216964();
  v170 = [v107 fieldMatch:v168 fieldRegex:v169];

  v171 = sub_100216964();
  v172 = [v112 TPPBPolicyKeyViewMappingWithView:v171 matchingRule:v170];

  v106[14] = v172;
  v334 = v106;
  v173 = sub_100216964();
  v174 = sub_100216964();
  v175 = [v107 fieldMatch:v173 fieldRegex:v174];

  v176 = sub_100216964();
  v177 = [v112 TPPBPolicyKeyViewMappingWithView:v176 matchingRule:v175];

  v106[15] = v177;
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_10021D8B0;
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_10021D8D0;
  v180 = sub_100216964();
  v181 = sub_100216964();
  v182 = [v107 fieldMatch:v180 fieldRegex:v181];

  *(v179 + 32) = v182;
  v183 = sub_100216964();
  v184 = sub_100216964();
  v185 = [v107 fieldMatch:v183 fieldRegex:v184];

  *(v179 + 40) = v185;
  v186 = sub_100216B14().super.isa;

  v187 = [v107 andMatch:v186];

  *(v178 + 32) = v187;
  v188 = swift_allocObject();
  *(v188 + 16) = xmmword_10021D8D0;
  v189 = sub_100216964();
  v190 = sub_100216964();
  v191 = [v107 fieldMatch:v189 fieldRegex:v190];

  *(v188 + 32) = v191;
  v192 = sub_100216964();
  v193 = sub_100216964();
  v194 = [v107 fieldMatch:v192 fieldRegex:v193];

  *(v188 + 40) = v194;
  v195 = sub_100216B14().super.isa;

  v196 = [v107 andMatch:v195];

  *(v178 + 40) = v196;
  v197 = sub_100216964();
  v198 = sub_100216964();
  v199 = [v107 fieldMatch:v197 fieldRegex:v198];

  *(v178 + 48) = v199;
  v200 = sub_100216964();
  v201 = sub_100216964();
  v202 = [v107 fieldMatch:v200 fieldRegex:v201];

  *(v178 + 56) = v202;
  v203 = sub_100216B14().super.isa;

  v204 = [v107 orMatch:v203];

  v205 = sub_100216964();
  v206 = [v112 TPPBPolicyKeyViewMappingWithView:v205 matchingRule:v204];

  v334[16] = v206;
  v207 = swift_allocObject();
  *(v207 + 16) = xmmword_10021D8D0;
  v208 = sub_100216964();
  v209 = sub_100216964();
  v210 = [v107 fieldMatch:v208 fieldRegex:v209];

  *(v207 + 32) = v210;
  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_10021D880;
  v212 = sub_100216964();
  v213 = sub_100216964();
  v214 = [v107 fieldMatch:v212 fieldRegex:v213];

  *(v211 + 32) = v214;
  v215 = sub_100216964();
  v216 = sub_100216964();
  v217 = [v107 fieldMatch:v215 fieldRegex:v216];

  *(v211 + 40) = v217;
  v218 = sub_100216964();
  v219 = sub_100216964();
  v220 = [v107 fieldMatch:v218 fieldRegex:v219];

  *(v211 + 48) = v220;
  v221 = sub_100216B14().super.isa;

  v222 = [v107 andMatch:v221];

  *(v207 + 40) = v222;
  v223 = sub_100216B14().super.isa;

  v224 = [v107 orMatch:v223];

  v225 = sub_100216964();
  v226 = [v112 TPPBPolicyKeyViewMappingWithView:v225 matchingRule:v224];

  v334[17] = v226;
  v227 = swift_allocObject();
  *(v227 + 16) = xmmword_10021D8F0;
  v228 = sub_100216964();
  v229 = sub_100216964();
  v230 = [v107 fieldMatch:v228 fieldRegex:v229];

  *(v227 + 32) = v230;
  v231 = sub_100216964();
  v232 = sub_100216964();
  v233 = [v107 fieldMatch:v231 fieldRegex:v232];

  *(v227 + 40) = v233;
  v234 = sub_100216964();
  v235 = sub_100216964();
  v236 = [v107 fieldMatch:v234 fieldRegex:v235];

  *(v227 + 48) = v236;
  v237 = sub_100216964();
  v238 = sub_100216964();
  v239 = [v107 fieldMatch:v237 fieldRegex:v238];

  *(v227 + 56) = v239;
  v240 = sub_100216964();
  v241 = sub_100216964();
  v242 = [v107 fieldMatch:v240 fieldRegex:v241];

  *(v227 + 64) = v242;
  v243 = sub_100216964();
  v244 = sub_100216964();
  v245 = [v107 fieldMatch:v243 fieldRegex:v244];

  *(v227 + 72) = v245;
  v246 = sub_100216964();
  v247 = sub_100216964();
  v248 = [v107 fieldMatch:v246 fieldRegex:v247];

  *(v227 + 80) = v248;
  v249 = sub_100216964();
  v250 = sub_100216964();
  v251 = [v107 fieldMatch:v249 fieldRegex:v250];

  *(v227 + 88) = v251;
  v252 = sub_100216964();
  v253 = sub_100216964();
  v254 = [v107 fieldMatch:v252 fieldRegex:v253];

  *(v227 + 96) = v254;
  v255 = sub_100216964();
  v256 = sub_100216964();
  v257 = [v107 fieldMatch:v255 fieldRegex:v256];

  *(v227 + 104) = v257;
  v258 = sub_100216964();
  v259 = sub_100216964();
  v260 = [v107 fieldMatch:v258 fieldRegex:v259];

  *(v227 + 112) = v260;
  v261 = sub_100216964();
  v262 = sub_100216964();
  v263 = [v107 fieldMatch:v261 fieldRegex:v262];

  *(v227 + 120) = v263;
  v264 = sub_100216964();
  v265 = sub_100216964();
  v266 = [v107 fieldMatch:v264 fieldRegex:v265];

  *(v227 + 128) = v266;
  v267 = sub_100216964();
  v268 = sub_100216964();
  v269 = [v107 fieldMatch:v267 fieldRegex:v268];

  *(v227 + 136) = v269;
  v270 = sub_100216B14().super.isa;

  v271 = [v107 orMatch:v270];

  v272 = sub_100216964();
  v273 = [v112 TPPBPolicyKeyViewMappingWithView:v272 matchingRule:v271];

  v334[18] = v273;
  v274 = swift_allocObject();
  *(v274 + 16) = xmmword_10021D8D0;
  v275 = sub_100216964();
  v276 = sub_100216964();
  v277 = [v107 fieldMatch:v275 fieldRegex:v276];

  *(v274 + 32) = v277;
  v278 = sub_100216964();
  v279 = sub_100216964();
  v280 = [v107 fieldMatch:v278 fieldRegex:v279];

  *(v274 + 40) = v280;
  v281 = sub_100216B14().super.isa;

  v282 = [v107 orMatch:v281];

  v283 = sub_100216964();
  v284 = [v112 TPPBPolicyKeyViewMappingWithView:v283 matchingRule:v282];

  v334[19] = v284;
  v285 = swift_allocObject();
  *(v285 + 16) = xmmword_10021D910;
  v286 = sub_100216964();
  v287 = sub_100216964();
  v288 = [v107 fieldMatch:v286 fieldRegex:v287];

  *(v285 + 32) = v288;
  v289 = sub_100216964();
  v290 = sub_100216964();
  v291 = [v107 fieldMatch:v289 fieldRegex:v290];

  *(v285 + 40) = v291;
  v292 = sub_100216964();
  v293 = sub_100216964();
  v294 = [v107 fieldMatch:v292 fieldRegex:v293];

  *(v285 + 48) = v294;
  v295 = sub_100216964();
  v296 = sub_100216964();
  v297 = [v107 fieldMatch:v295 fieldRegex:v296];

  *(v285 + 56) = v297;
  v298 = sub_100216964();
  v299 = sub_100216964();
  v300 = [v107 fieldMatch:v298 fieldRegex:v299];

  *(v285 + 64) = v300;
  v301 = sub_100216B14().super.isa;

  v302 = [v107 orMatch:v301];

  v303 = sub_100216964();
  v304 = [v112 TPPBPolicyKeyViewMappingWithView:v303 matchingRule:v302];

  v334[20] = v304;
  v305 = swift_allocObject();
  *(v305 + 16) = xmmword_10021D880;
  v306 = sub_100216964();
  v307 = sub_100216964();
  v308 = [v107 fieldMatch:v306 fieldRegex:v307];

  *(v305 + 32) = v308;
  v309 = sub_100216964();
  v310 = sub_100216964();
  v311 = [v107 fieldMatch:v309 fieldRegex:v310];

  *(v305 + 40) = v311;
  v312 = sub_100216964();
  v313 = sub_100216964();
  v314 = [v107 fieldMatch:v312 fieldRegex:v313];

  *(v305 + 48) = v314;
  v315 = sub_100216B14().super.isa;

  v316 = [v107 orMatch:v315];

  v317 = sub_100216964();
  v318 = [v112 TPPBPolicyKeyViewMappingWithView:v317 matchingRule:v316];

  v334[21] = v318;
  v319 = [v107 trueMatch];
  v320 = sub_100216964();
  v321 = [v112 TPPBPolicyKeyViewMappingWithView:v320 matchingRule:v319];

  v334[22] = v321;
  v322 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v323 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v324 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v325 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v326 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v327 = sub_100216B14().super.isa;

  v328 = sub_100216B14().super.isa;
  v329 = sub_100216B14().super.isa;
  v330 = sub_100216B14().super.isa;
  v331 = sub_100216B14().super.isa;
  v332 = [v322 initWithVersion:16 modelToCategory:v323 categoriesByView:v324 introducersByCategory:v325 redactions:v326 keyViewMapping:v327 userControllableViewList:v328 piggybackViews:v329 priorityViews:v330 inheritedExcludedViews:v331 hashAlgo:1];

  return v332;
}

id sub_10003AB2C()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D970;
  v31 = v30;
  v32 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v34 = objc_opt_self();
  v35 = [v34 TPPBPolicyCategoriesByViewWithView:v32 categories:isa];

  v31[4] = v35;
  v36 = sub_100216964();
  v37 = sub_100216B14().super.isa;
  v38 = [v34 TPPBPolicyCategoriesByViewWithView:v36 categories:v37];

  v31[5] = v38;
  v39 = sub_100216964();
  v40 = sub_100216B14().super.isa;
  v41 = [v34 TPPBPolicyCategoriesByViewWithView:v39 categories:v40];

  v31[6] = v41;
  v42 = sub_100216964();
  v43 = sub_100216B14().super.isa;
  v44 = [v34 TPPBPolicyCategoriesByViewWithView:v42 categories:v43];

  v31[7] = v44;
  v45 = sub_100216964();
  v46 = sub_100216B14().super.isa;
  v47 = [v34 TPPBPolicyCategoriesByViewWithView:v45 categories:v46];

  v31[8] = v47;
  v48 = sub_100216964();
  v49 = sub_100216B14().super.isa;
  v50 = [v34 TPPBPolicyCategoriesByViewWithView:v48 categories:v49];

  v31[9] = v50;
  v51 = sub_100216964();
  v52 = sub_100216B14().super.isa;
  v53 = [v34 TPPBPolicyCategoriesByViewWithView:v51 categories:v52];

  v31[10] = v53;
  v54 = sub_100216964();
  v55 = sub_100216B14().super.isa;
  v56 = [v34 TPPBPolicyCategoriesByViewWithView:v54 categories:v55];

  v31[11] = v56;
  v57 = sub_100216964();
  v58 = sub_100216B14().super.isa;
  v59 = [v34 TPPBPolicyCategoriesByViewWithView:v57 categories:v58];

  v31[12] = v59;
  v60 = sub_100216964();
  v61 = sub_100216B14().super.isa;
  v62 = [v34 TPPBPolicyCategoriesByViewWithView:v60 categories:v61];

  v31[13] = v62;
  v63 = sub_100216964();
  v64 = sub_100216B14().super.isa;
  v65 = [v34 TPPBPolicyCategoriesByViewWithView:v63 categories:v64];

  v31[14] = v65;
  v66 = sub_100216964();
  v67 = sub_100216B14().super.isa;
  v68 = [v34 TPPBPolicyCategoriesByViewWithView:v66 categories:v67];

  v31[15] = v68;
  v69 = sub_100216964();
  v70 = sub_100216B14().super.isa;
  v71 = [v34 TPPBPolicyCategoriesByViewWithView:v69 categories:v70];

  v31[16] = v71;
  v72 = sub_100216964();
  v73 = sub_100216B14().super.isa;
  v74 = [v34 TPPBPolicyCategoriesByViewWithView:v72 categories:v73];

  v31[17] = v74;
  v75 = sub_100216964();
  v76 = sub_100216B14().super.isa;
  v77 = [v34 TPPBPolicyCategoriesByViewWithView:v75 categories:v76];

  v31[18] = v77;
  v78 = sub_100216964();
  v79 = sub_100216B14().super.isa;
  v80 = [v34 TPPBPolicyCategoriesByViewWithView:v78 categories:v79];

  v31[19] = v80;
  v81 = sub_100216964();
  v82 = sub_100216B14().super.isa;
  v83 = [v34 TPPBPolicyCategoriesByViewWithView:v81 categories:v82];

  v31[20] = v83;
  v84 = sub_100216964();
  v85 = sub_100216B14().super.isa;
  v86 = [v34 TPPBPolicyCategoriesByViewWithView:v84 categories:v85];

  v31[21] = v86;
  v87 = sub_100216964();
  v88 = sub_100216B14().super.isa;
  v89 = [v34 TPPBPolicyCategoriesByViewWithView:v87 categories:v88];

  v31[22] = v89;
  v90 = sub_100216964();
  v91 = sub_100216B14().super.isa;
  v92 = [v34 TPPBPolicyCategoriesByViewWithView:v90 categories:v91];

  v31[23] = v92;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_10021D910;
  v94 = v93;
  v95 = sub_100216964();
  v96 = sub_100216B14().super.isa;
  v97 = objc_opt_self();
  v98 = [v97 TPPBPolicyIntroducersByCategoryWithCategory:v95 introducers:v96];

  v94[4] = v98;
  v99 = sub_100216964();
  v100 = sub_100216B14().super.isa;
  v101 = [v97 TPPBPolicyIntroducersByCategoryWithCategory:v99 introducers:v100];

  v94[5] = v101;
  v102 = sub_100216964();
  v103 = sub_100216B14().super.isa;
  v104 = [v97 TPPBPolicyIntroducersByCategoryWithCategory:v102 introducers:v103];

  v94[6] = v104;
  v105 = sub_100216964();
  v106 = sub_100216B14().super.isa;
  v107 = [v97 TPPBPolicyIntroducersByCategoryWithCategory:v105 introducers:v106];

  v94[7] = v107;
  v108 = sub_100216964();
  v109 = sub_100216B14().super.isa;
  v110 = [v97 TPPBPolicyIntroducersByCategoryWithCategory:v108 introducers:v109];

  v94[8] = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_10021D980;
  v112 = v111;
  v113 = objc_opt_self();
  v114 = sub_100216964();
  v115 = sub_100216964();
  v116 = [v113 fieldMatch:v114 fieldRegex:v115];

  v117 = sub_100216964();
  v118 = objc_opt_self();
  v119 = [v118 TPPBPolicyKeyViewMappingWithView:v117 matchingRule:v116];

  v112[4] = v119;
  v120 = sub_100216964();
  v121 = sub_100216964();
  v122 = [v113 fieldMatch:v120 fieldRegex:v121];

  v123 = sub_100216964();
  v124 = [v118 TPPBPolicyKeyViewMappingWithView:v123 matchingRule:v122];

  v112[5] = v124;
  v125 = sub_100216964();
  v126 = sub_100216964();
  v127 = [v113 fieldMatch:v125 fieldRegex:v126];

  v128 = sub_100216964();
  v129 = [v118 TPPBPolicyKeyViewMappingWithView:v128 matchingRule:v127];

  v112[6] = v129;
  v130 = sub_100216964();
  v131 = sub_100216964();
  v132 = [v113 fieldMatch:v130 fieldRegex:v131];

  v133 = sub_100216964();
  v134 = [v118 TPPBPolicyKeyViewMappingWithView:v133 matchingRule:v132];

  v112[7] = v134;
  v135 = sub_100216964();
  v136 = sub_100216964();
  v137 = [v113 fieldMatch:v135 fieldRegex:v136];

  v138 = sub_100216964();
  v139 = [v118 TPPBPolicyKeyViewMappingWithView:v138 matchingRule:v137];

  v112[8] = v139;
  v140 = sub_100216964();
  v141 = sub_100216964();
  v142 = [v113 fieldMatch:v140 fieldRegex:v141];

  v143 = sub_100216964();
  v144 = [v118 TPPBPolicyKeyViewMappingWithView:v143 matchingRule:v142];

  v112[9] = v144;
  v145 = sub_100216964();
  v146 = sub_100216964();
  v147 = [v113 fieldMatch:v145 fieldRegex:v146];

  v148 = sub_100216964();
  v149 = [v118 TPPBPolicyKeyViewMappingWithView:v148 matchingRule:v147];

  v112[10] = v149;
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_10021D880;
  v151 = sub_100216964();
  v152 = sub_100216964();
  v153 = [v113 fieldMatch:v151 fieldRegex:v152];

  *(v150 + 32) = v153;
  v154 = sub_100216964();
  v155 = sub_100216964();
  v156 = [v113 fieldMatch:v154 fieldRegex:v155];

  *(v150 + 40) = v156;
  v157 = sub_100216964();
  v158 = sub_100216964();
  v159 = [v113 fieldMatch:v157 fieldRegex:v158];

  *(v150 + 48) = v159;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v160 = sub_100216B14().super.isa;

  v161 = [v113 orMatch:v160];

  v162 = sub_100216964();
  v163 = [v118 TPPBPolicyKeyViewMappingWithView:v162 matchingRule:v161];

  v112[11] = v163;
  v164 = sub_100216964();
  v165 = sub_100216964();
  v166 = [v113 fieldMatch:v164 fieldRegex:v165];

  v167 = sub_100216964();
  v168 = [v118 TPPBPolicyKeyViewMappingWithView:v167 matchingRule:v166];

  v112[12] = v168;
  v169 = sub_100216964();
  v170 = sub_100216964();
  v171 = [v113 fieldMatch:v169 fieldRegex:v170];

  v172 = sub_100216964();
  v173 = [v118 TPPBPolicyKeyViewMappingWithView:v172 matchingRule:v171];

  v112[13] = v173;
  v174 = sub_100216964();
  v175 = sub_100216964();
  v176 = [v113 fieldMatch:v174 fieldRegex:v175];

  v177 = sub_100216964();
  v178 = [v118 TPPBPolicyKeyViewMappingWithView:v177 matchingRule:v176];

  v112[14] = v178;
  v179 = sub_100216964();
  v180 = sub_100216964();
  v181 = [v113 fieldMatch:v179 fieldRegex:v180];

  v182 = sub_100216964();
  v183 = [v118 TPPBPolicyKeyViewMappingWithView:v182 matchingRule:v181];

  v112[15] = v183;
  v184 = sub_100216964();
  v185 = sub_100216964();
  v186 = [v113 fieldMatch:v184 fieldRegex:v185];

  v187 = sub_100216964();
  v188 = [v118 TPPBPolicyKeyViewMappingWithView:v187 matchingRule:v186];

  v112[16] = v188;
  v365 = v112;
  v189 = sub_100216964();
  v190 = sub_100216964();
  v191 = [v113 fieldMatch:v189 fieldRegex:v190];

  v192 = sub_100216964();
  v193 = [v118 TPPBPolicyKeyViewMappingWithView:v192 matchingRule:v191];

  v112[17] = v193;
  v194 = swift_allocObject();
  *(v194 + 16) = xmmword_10021D8B0;
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_10021D8D0;
  v196 = sub_100216964();
  v197 = sub_100216964();
  v198 = [v113 fieldMatch:v196 fieldRegex:v197];

  *(v195 + 32) = v198;
  v199 = sub_100216964();
  v200 = sub_100216964();
  v201 = [v113 fieldMatch:v199 fieldRegex:v200];

  *(v195 + 40) = v201;
  v202 = sub_100216B14().super.isa;

  v203 = [v113 andMatch:v202];

  *(v194 + 32) = v203;
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_10021D8D0;
  v205 = sub_100216964();
  v206 = sub_100216964();
  v207 = [v113 fieldMatch:v205 fieldRegex:v206];

  *(v204 + 32) = v207;
  v208 = sub_100216964();
  v209 = sub_100216964();
  v210 = [v113 fieldMatch:v208 fieldRegex:v209];

  *(v204 + 40) = v210;
  v211 = sub_100216B14().super.isa;

  v212 = [v113 andMatch:v211];

  *(v194 + 40) = v212;
  v213 = sub_100216964();
  v214 = sub_100216964();
  v215 = [v113 fieldMatch:v213 fieldRegex:v214];

  *(v194 + 48) = v215;
  v216 = sub_100216964();
  v217 = sub_100216964();
  v218 = [v113 fieldMatch:v216 fieldRegex:v217];

  *(v194 + 56) = v218;
  v219 = sub_100216B14().super.isa;

  v220 = [v113 orMatch:v219];

  v221 = sub_100216964();
  v222 = [v118 TPPBPolicyKeyViewMappingWithView:v221 matchingRule:v220];

  v365[18] = v222;
  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_10021D8D0;
  v224 = sub_100216964();
  v225 = sub_100216964();
  v226 = [v113 fieldMatch:v224 fieldRegex:v225];

  *(v223 + 32) = v226;
  v227 = swift_allocObject();
  *(v227 + 16) = xmmword_10021D880;
  v228 = sub_100216964();
  v229 = sub_100216964();
  v230 = [v113 fieldMatch:v228 fieldRegex:v229];

  *(v227 + 32) = v230;
  v231 = sub_100216964();
  v232 = sub_100216964();
  v233 = [v113 fieldMatch:v231 fieldRegex:v232];

  *(v227 + 40) = v233;
  v234 = sub_100216964();
  v235 = sub_100216964();
  v236 = [v113 fieldMatch:v234 fieldRegex:v235];

  *(v227 + 48) = v236;
  v237 = sub_100216B14().super.isa;

  v238 = [v113 andMatch:v237];

  *(v223 + 40) = v238;
  v239 = sub_100216B14().super.isa;

  v240 = [v113 orMatch:v239];

  v241 = sub_100216964();
  v242 = [v118 TPPBPolicyKeyViewMappingWithView:v241 matchingRule:v240];

  v365[19] = v242;
  v243 = swift_allocObject();
  *(v243 + 16) = xmmword_10021D8F0;
  v244 = sub_100216964();
  v245 = sub_100216964();
  v246 = [v113 fieldMatch:v244 fieldRegex:v245];

  *(v243 + 32) = v246;
  v247 = sub_100216964();
  v248 = sub_100216964();
  v249 = [v113 fieldMatch:v247 fieldRegex:v248];

  *(v243 + 40) = v249;
  v250 = sub_100216964();
  v251 = sub_100216964();
  v252 = [v113 fieldMatch:v250 fieldRegex:v251];

  *(v243 + 48) = v252;
  v253 = sub_100216964();
  v254 = sub_100216964();
  v255 = [v113 fieldMatch:v253 fieldRegex:v254];

  *(v243 + 56) = v255;
  v256 = sub_100216964();
  v257 = sub_100216964();
  v258 = [v113 fieldMatch:v256 fieldRegex:v257];

  *(v243 + 64) = v258;
  v259 = sub_100216964();
  v260 = sub_100216964();
  v261 = [v113 fieldMatch:v259 fieldRegex:v260];

  *(v243 + 72) = v261;
  v262 = sub_100216964();
  v263 = sub_100216964();
  v264 = [v113 fieldMatch:v262 fieldRegex:v263];

  *(v243 + 80) = v264;
  v265 = sub_100216964();
  v266 = sub_100216964();
  v267 = [v113 fieldMatch:v265 fieldRegex:v266];

  *(v243 + 88) = v267;
  v268 = sub_100216964();
  v269 = sub_100216964();
  v270 = [v113 fieldMatch:v268 fieldRegex:v269];

  *(v243 + 96) = v270;
  v271 = sub_100216964();
  v272 = sub_100216964();
  v273 = [v113 fieldMatch:v271 fieldRegex:v272];

  *(v243 + 104) = v273;
  v274 = sub_100216964();
  v275 = sub_100216964();
  v276 = [v113 fieldMatch:v274 fieldRegex:v275];

  *(v243 + 112) = v276;
  v277 = sub_100216964();
  v278 = sub_100216964();
  v279 = [v113 fieldMatch:v277 fieldRegex:v278];

  *(v243 + 120) = v279;
  v280 = sub_100216964();
  v281 = sub_100216964();
  v282 = [v113 fieldMatch:v280 fieldRegex:v281];

  *(v243 + 128) = v282;
  v283 = sub_100216964();
  v284 = sub_100216964();
  v285 = [v113 fieldMatch:v283 fieldRegex:v284];

  *(v243 + 136) = v285;
  v286 = sub_100216B14().super.isa;

  v287 = [v113 orMatch:v286];

  v288 = sub_100216964();
  v289 = [v118 TPPBPolicyKeyViewMappingWithView:v288 matchingRule:v287];

  v365[20] = v289;
  v290 = swift_allocObject();
  *(v290 + 16) = xmmword_10021D8D0;
  v291 = sub_100216964();
  v292 = sub_100216964();
  v293 = [v113 fieldMatch:v291 fieldRegex:v292];

  *(v290 + 32) = v293;
  v294 = sub_100216964();
  v295 = sub_100216964();
  v296 = [v113 fieldMatch:v294 fieldRegex:v295];

  *(v290 + 40) = v296;
  v297 = sub_100216B14().super.isa;

  v298 = [v113 orMatch:v297];

  v299 = sub_100216964();
  v300 = [v118 TPPBPolicyKeyViewMappingWithView:v299 matchingRule:v298];

  v365[21] = v300;
  v301 = swift_allocObject();
  *(v301 + 16) = xmmword_10021D950;
  v302 = sub_100216964();
  v303 = sub_100216964();
  v304 = [v113 fieldMatch:v302 fieldRegex:v303];

  *(v301 + 32) = v304;
  v305 = sub_100216964();
  v306 = sub_100216964();
  v307 = [v113 fieldMatch:v305 fieldRegex:v306];

  *(v301 + 40) = v307;
  v308 = sub_100216964();
  v309 = sub_100216964();
  v310 = [v113 fieldMatch:v308 fieldRegex:v309];

  *(v301 + 48) = v310;
  v311 = sub_100216964();
  v312 = sub_100216964();
  v313 = [v113 fieldMatch:v311 fieldRegex:v312];

  *(v301 + 56) = v313;
  v314 = sub_100216964();
  v315 = sub_100216964();
  v316 = [v113 fieldMatch:v314 fieldRegex:v315];

  *(v301 + 64) = v316;
  v317 = sub_100216964();
  v318 = sub_100216964();
  v319 = [v113 fieldMatch:v317 fieldRegex:v318];

  *(v301 + 72) = v319;
  v320 = sub_100216964();
  v321 = sub_100216964();
  v322 = [v113 fieldMatch:v320 fieldRegex:v321];

  *(v301 + 80) = v322;
  v323 = sub_100216964();
  v324 = sub_100216964();
  v325 = [v113 fieldMatch:v323 fieldRegex:v324];

  *(v301 + 88) = v325;
  v326 = sub_100216964();
  v327 = sub_100216964();
  v328 = [v113 fieldMatch:v326 fieldRegex:v327];

  *(v301 + 96) = v328;
  v329 = sub_100216964();
  v330 = sub_100216964();
  v331 = [v113 fieldMatch:v329 fieldRegex:v330];

  *(v301 + 104) = v331;
  v332 = sub_100216B14().super.isa;

  v333 = [v113 orMatch:v332];

  v334 = sub_100216964();
  v335 = [v118 TPPBPolicyKeyViewMappingWithView:v334 matchingRule:v333];

  v365[22] = v335;
  v336 = swift_allocObject();
  *(v336 + 16) = xmmword_10021D880;
  v337 = sub_100216964();
  v338 = sub_100216964();
  v339 = [v113 fieldMatch:v337 fieldRegex:v338];

  *(v336 + 32) = v339;
  v340 = sub_100216964();
  v341 = sub_100216964();
  v342 = [v113 fieldMatch:v340 fieldRegex:v341];

  *(v336 + 40) = v342;
  v343 = sub_100216964();
  v344 = sub_100216964();
  v345 = [v113 fieldMatch:v343 fieldRegex:v344];

  *(v336 + 48) = v345;
  v346 = sub_100216B14().super.isa;

  v347 = [v113 orMatch:v346];

  v348 = sub_100216964();
  v349 = [v118 TPPBPolicyKeyViewMappingWithView:v348 matchingRule:v347];

  v365[23] = v349;
  v350 = [v113 trueMatch];
  v351 = sub_100216964();
  v352 = [v118 TPPBPolicyKeyViewMappingWithView:v351 matchingRule:v350];

  v365[24] = v352;
  v353 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v354 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v355 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v356 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v357 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v358 = sub_100216B14().super.isa;

  v359 = sub_100216B14().super.isa;
  v360 = sub_100216B14().super.isa;
  v361 = sub_100216B14().super.isa;
  v362 = sub_100216B14().super.isa;
  v363 = [v353 initWithVersion:17 modelToCategory:v354 categoriesByView:v355 introducersByCategory:v356 redactions:v357 keyViewMapping:v358 userControllableViewList:v359 piggybackViews:v360 priorityViews:v361 inheritedExcludedViews:v362 hashAlgo:1];

  return v363;
}

id sub_10003D930()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D920;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10021D970;
  v31 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v33 = objc_opt_self();
  v34 = [v33 TPPBPolicyCategoriesByViewWithView:v31 categories:isa];

  *(v30 + 32) = v34;
  v35 = sub_100216964();
  v36 = sub_100216B14().super.isa;
  v37 = [v33 TPPBPolicyCategoriesByViewWithView:v35 categories:v36];

  *(v30 + 40) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v33 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v30 + 48) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v33 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v30 + 56) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v33 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v30 + 64) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v33 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v30 + 72) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v33 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v30 + 80) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v33 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v30 + 88) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v33 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v30 + 96) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v33 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v30 + 104) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v33 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v30 + 112) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v33 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v30 + 120) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v33 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v30 + 128) = v70;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v33 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v30 + 136) = v73;
  v74 = sub_100216964();
  v75 = sub_100216B14().super.isa;
  v76 = [v33 TPPBPolicyCategoriesByViewWithView:v74 categories:v75];

  *(v30 + 144) = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v33 TPPBPolicyCategoriesByViewWithView:v77 categories:v78];

  *(v30 + 152) = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v33 TPPBPolicyCategoriesByViewWithView:v80 categories:v81];

  *(v30 + 160) = v82;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = [v33 TPPBPolicyCategoriesByViewWithView:v83 categories:v84];

  *(v30 + 168) = v85;
  v86 = sub_100216964();
  v87 = sub_100216B14().super.isa;
  v88 = [v33 TPPBPolicyCategoriesByViewWithView:v86 categories:v87];

  *(v30 + 176) = v88;
  v89 = sub_100216964();
  v90 = sub_100216B14().super.isa;
  v91 = [v33 TPPBPolicyCategoriesByViewWithView:v89 categories:v90];

  *(v30 + 184) = v91;
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_10021D910;
  v93 = v92;
  v94 = sub_100216964();
  v95 = sub_100216B14().super.isa;
  v96 = objc_opt_self();
  v97 = [v96 TPPBPolicyIntroducersByCategoryWithCategory:v94 introducers:v95];

  v93[4] = v97;
  v98 = sub_100216964();
  v99 = sub_100216B14().super.isa;
  v100 = [v96 TPPBPolicyIntroducersByCategoryWithCategory:v98 introducers:v99];

  v93[5] = v100;
  v101 = sub_100216964();
  v102 = sub_100216B14().super.isa;
  v103 = [v96 TPPBPolicyIntroducersByCategoryWithCategory:v101 introducers:v102];

  v93[6] = v103;
  v104 = sub_100216964();
  v105 = sub_100216B14().super.isa;
  v106 = [v96 TPPBPolicyIntroducersByCategoryWithCategory:v104 introducers:v105];

  v93[7] = v106;
  v107 = sub_100216964();
  v108 = sub_100216B14().super.isa;
  v109 = [v96 TPPBPolicyIntroducersByCategoryWithCategory:v107 introducers:v108];

  v93[8] = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_10021D980;
  v111 = v110;
  v112 = objc_opt_self();
  v113 = sub_100216964();
  v114 = sub_100216964();
  v115 = [v112 fieldMatch:v113 fieldRegex:v114];

  v116 = sub_100216964();
  v117 = objc_opt_self();
  v118 = [v117 TPPBPolicyKeyViewMappingWithView:v116 matchingRule:v115];

  v111[4] = v118;
  v119 = sub_100216964();
  v120 = sub_100216964();
  v121 = [v112 fieldMatch:v119 fieldRegex:v120];

  v122 = sub_100216964();
  v123 = [v117 TPPBPolicyKeyViewMappingWithView:v122 matchingRule:v121];

  v111[5] = v123;
  v124 = sub_100216964();
  v125 = sub_100216964();
  v126 = [v112 fieldMatch:v124 fieldRegex:v125];

  v127 = sub_100216964();
  v128 = [v117 TPPBPolicyKeyViewMappingWithView:v127 matchingRule:v126];

  v111[6] = v128;
  v129 = sub_100216964();
  v130 = sub_100216964();
  v131 = [v112 fieldMatch:v129 fieldRegex:v130];

  v132 = sub_100216964();
  v133 = [v117 TPPBPolicyKeyViewMappingWithView:v132 matchingRule:v131];

  v111[7] = v133;
  v134 = sub_100216964();
  v135 = sub_100216964();
  v136 = [v112 fieldMatch:v134 fieldRegex:v135];

  v137 = sub_100216964();
  v138 = [v117 TPPBPolicyKeyViewMappingWithView:v137 matchingRule:v136];

  v111[8] = v138;
  v139 = sub_100216964();
  v140 = sub_100216964();
  v141 = [v112 fieldMatch:v139 fieldRegex:v140];

  v142 = sub_100216964();
  v143 = [v117 TPPBPolicyKeyViewMappingWithView:v142 matchingRule:v141];

  v111[9] = v143;
  v144 = sub_100216964();
  v145 = sub_100216964();
  v146 = [v112 fieldMatch:v144 fieldRegex:v145];

  v147 = sub_100216964();
  v148 = [v117 TPPBPolicyKeyViewMappingWithView:v147 matchingRule:v146];

  v111[10] = v148;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_10021D880;
  v150 = sub_100216964();
  v151 = sub_100216964();
  v152 = [v112 fieldMatch:v150 fieldRegex:v151];

  *(v149 + 32) = v152;
  v153 = sub_100216964();
  v154 = sub_100216964();
  v155 = [v112 fieldMatch:v153 fieldRegex:v154];

  *(v149 + 40) = v155;
  v156 = sub_100216964();
  v157 = sub_100216964();
  v158 = [v112 fieldMatch:v156 fieldRegex:v157];

  *(v149 + 48) = v158;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v159 = sub_100216B14().super.isa;

  v160 = [v112 orMatch:v159];

  v161 = sub_100216964();
  v162 = [v117 TPPBPolicyKeyViewMappingWithView:v161 matchingRule:v160];

  v111[11] = v162;
  v163 = sub_100216964();
  v164 = sub_100216964();
  v165 = [v112 fieldMatch:v163 fieldRegex:v164];

  v166 = sub_100216964();
  v167 = [v117 TPPBPolicyKeyViewMappingWithView:v166 matchingRule:v165];

  v111[12] = v167;
  v168 = sub_100216964();
  v169 = sub_100216964();
  v170 = [v112 fieldMatch:v168 fieldRegex:v169];

  v171 = sub_100216964();
  v172 = [v117 TPPBPolicyKeyViewMappingWithView:v171 matchingRule:v170];

  v111[13] = v172;
  v173 = sub_100216964();
  v174 = sub_100216964();
  v175 = [v112 fieldMatch:v173 fieldRegex:v174];

  v176 = sub_100216964();
  v177 = [v117 TPPBPolicyKeyViewMappingWithView:v176 matchingRule:v175];

  v111[14] = v177;
  v178 = sub_100216964();
  v179 = sub_100216964();
  v180 = [v112 fieldMatch:v178 fieldRegex:v179];

  v181 = sub_100216964();
  v182 = [v117 TPPBPolicyKeyViewMappingWithView:v181 matchingRule:v180];

  v111[15] = v182;
  v183 = sub_100216964();
  v184 = sub_100216964();
  v185 = [v112 fieldMatch:v183 fieldRegex:v184];

  v186 = sub_100216964();
  v187 = [v117 TPPBPolicyKeyViewMappingWithView:v186 matchingRule:v185];

  v111[16] = v187;
  v188 = sub_100216964();
  v189 = sub_100216964();
  v190 = [v112 fieldMatch:v188 fieldRegex:v189];

  v191 = sub_100216964();
  v192 = [v117 TPPBPolicyKeyViewMappingWithView:v191 matchingRule:v190];

  v111[17] = v192;
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_10021D8B0;
  v194 = swift_allocObject();
  *(v194 + 16) = xmmword_10021D8D0;
  v195 = sub_100216964();
  v196 = sub_100216964();
  v197 = [v112 fieldMatch:v195 fieldRegex:v196];

  *(v194 + 32) = v197;
  v198 = sub_100216964();
  v199 = sub_100216964();
  v200 = [v112 fieldMatch:v198 fieldRegex:v199];

  *(v194 + 40) = v200;
  v201 = sub_100216B14().super.isa;

  v202 = [v112 andMatch:v201];

  *(v193 + 32) = v202;
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_10021D8D0;
  v204 = sub_100216964();
  v205 = sub_100216964();
  v206 = [v112 fieldMatch:v204 fieldRegex:v205];

  *(v203 + 32) = v206;
  v207 = sub_100216964();
  v208 = sub_100216964();
  v209 = [v112 fieldMatch:v207 fieldRegex:v208];

  *(v203 + 40) = v209;
  v210 = sub_100216B14().super.isa;

  v211 = [v112 andMatch:v210];

  *(v193 + 40) = v211;
  v212 = sub_100216964();
  v213 = sub_100216964();
  v214 = [v112 fieldMatch:v212 fieldRegex:v213];

  *(v193 + 48) = v214;
  v215 = sub_100216964();
  v216 = sub_100216964();
  v217 = [v112 fieldMatch:v215 fieldRegex:v216];

  *(v193 + 56) = v217;
  v218 = sub_100216B14().super.isa;

  v219 = [v112 orMatch:v218];

  v220 = sub_100216964();
  v221 = [v117 TPPBPolicyKeyViewMappingWithView:v220 matchingRule:v219];

  v111[18] = v221;
  v222 = swift_allocObject();
  *(v222 + 16) = xmmword_10021D8D0;
  v223 = sub_100216964();
  v224 = sub_100216964();
  v225 = [v112 fieldMatch:v223 fieldRegex:v224];

  *(v222 + 32) = v225;
  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_10021D880;
  v227 = sub_100216964();
  v228 = sub_100216964();
  v229 = [v112 fieldMatch:v227 fieldRegex:v228];

  *(v226 + 32) = v229;
  v230 = sub_100216964();
  v231 = sub_100216964();
  v232 = [v112 fieldMatch:v230 fieldRegex:v231];

  *(v226 + 40) = v232;
  v233 = sub_100216964();
  v234 = sub_100216964();
  v235 = [v112 fieldMatch:v233 fieldRegex:v234];

  *(v226 + 48) = v235;
  v236 = sub_100216B14().super.isa;

  v237 = [v112 andMatch:v236];

  *(v222 + 40) = v237;
  v238 = sub_100216B14().super.isa;

  v239 = [v112 orMatch:v238];

  v240 = sub_100216964();
  v241 = [v117 TPPBPolicyKeyViewMappingWithView:v240 matchingRule:v239];

  v111[19] = v241;
  v242 = swift_allocObject();
  *(v242 + 16) = xmmword_10021D8F0;
  v243 = sub_100216964();
  v244 = sub_100216964();
  v245 = [v112 fieldMatch:v243 fieldRegex:v244];

  *(v242 + 32) = v245;
  v246 = sub_100216964();
  v247 = sub_100216964();
  v248 = [v112 fieldMatch:v246 fieldRegex:v247];

  *(v242 + 40) = v248;
  v249 = sub_100216964();
  v250 = sub_100216964();
  v251 = [v112 fieldMatch:v249 fieldRegex:v250];

  *(v242 + 48) = v251;
  v252 = sub_100216964();
  v253 = sub_100216964();
  v254 = [v112 fieldMatch:v252 fieldRegex:v253];

  *(v242 + 56) = v254;
  v255 = sub_100216964();
  v256 = sub_100216964();
  v257 = [v112 fieldMatch:v255 fieldRegex:v256];

  *(v242 + 64) = v257;
  v258 = sub_100216964();
  v259 = sub_100216964();
  v260 = [v112 fieldMatch:v258 fieldRegex:v259];

  *(v242 + 72) = v260;
  v261 = sub_100216964();
  v262 = sub_100216964();
  v263 = [v112 fieldMatch:v261 fieldRegex:v262];

  *(v242 + 80) = v263;
  v264 = sub_100216964();
  v265 = sub_100216964();
  v266 = [v112 fieldMatch:v264 fieldRegex:v265];

  *(v242 + 88) = v266;
  v267 = sub_100216964();
  v268 = sub_100216964();
  v269 = [v112 fieldMatch:v267 fieldRegex:v268];

  *(v242 + 96) = v269;
  v270 = sub_100216964();
  v271 = sub_100216964();
  v272 = [v112 fieldMatch:v270 fieldRegex:v271];

  *(v242 + 104) = v272;
  v273 = sub_100216964();
  v274 = sub_100216964();
  v275 = [v112 fieldMatch:v273 fieldRegex:v274];

  *(v242 + 112) = v275;
  v276 = sub_100216964();
  v277 = sub_100216964();
  v278 = [v112 fieldMatch:v276 fieldRegex:v277];

  *(v242 + 120) = v278;
  v279 = sub_100216964();
  v280 = sub_100216964();
  v281 = [v112 fieldMatch:v279 fieldRegex:v280];

  *(v242 + 128) = v281;
  v282 = sub_100216964();
  v283 = sub_100216964();
  v284 = [v112 fieldMatch:v282 fieldRegex:v283];

  *(v242 + 136) = v284;
  v285 = sub_100216B14().super.isa;

  v286 = [v112 orMatch:v285];

  v287 = sub_100216964();
  v288 = [v117 TPPBPolicyKeyViewMappingWithView:v287 matchingRule:v286];

  v111[20] = v288;
  v289 = swift_allocObject();
  *(v289 + 16) = xmmword_10021D8D0;
  v290 = sub_100216964();
  v291 = sub_100216964();
  v292 = [v112 fieldMatch:v290 fieldRegex:v291];

  *(v289 + 32) = v292;
  v293 = sub_100216964();
  v294 = sub_100216964();
  v295 = [v112 fieldMatch:v293 fieldRegex:v294];

  *(v289 + 40) = v295;
  v296 = sub_100216B14().super.isa;

  v297 = [v112 orMatch:v296];

  v298 = sub_100216964();
  v299 = [v117 TPPBPolicyKeyViewMappingWithView:v298 matchingRule:v297];

  v111[21] = v299;
  v300 = swift_allocObject();
  *(v300 + 16) = xmmword_10021D8E0;
  v301 = sub_100216964();
  v302 = sub_100216964();
  v303 = [v112 fieldMatch:v301 fieldRegex:v302];

  *(v300 + 32) = v303;
  v304 = sub_100216964();
  v305 = sub_100216964();
  v306 = [v112 fieldMatch:v304 fieldRegex:v305];

  *(v300 + 40) = v306;
  v307 = sub_100216964();
  v308 = sub_100216964();
  v309 = [v112 fieldMatch:v307 fieldRegex:v308];

  *(v300 + 48) = v309;
  v310 = sub_100216964();
  v311 = sub_100216964();
  v312 = [v112 fieldMatch:v310 fieldRegex:v311];

  *(v300 + 56) = v312;
  v313 = sub_100216964();
  v314 = sub_100216964();
  v315 = [v112 fieldMatch:v313 fieldRegex:v314];

  *(v300 + 64) = v315;
  v316 = sub_100216964();
  v317 = sub_100216964();
  v318 = [v112 fieldMatch:v316 fieldRegex:v317];

  *(v300 + 72) = v318;
  v319 = sub_100216964();
  v320 = sub_100216964();
  v321 = [v112 fieldMatch:v319 fieldRegex:v320];

  *(v300 + 80) = v321;
  v322 = sub_100216964();
  v323 = sub_100216964();
  v324 = [v112 fieldMatch:v322 fieldRegex:v323];

  *(v300 + 88) = v324;
  v325 = sub_100216964();
  v326 = sub_100216964();
  v327 = [v112 fieldMatch:v325 fieldRegex:v326];

  *(v300 + 96) = v327;
  v328 = sub_100216964();
  v329 = sub_100216964();
  v330 = [v112 fieldMatch:v328 fieldRegex:v329];

  *(v300 + 104) = v330;
  v331 = sub_100216964();
  v332 = sub_100216964();
  v333 = [v112 fieldMatch:v331 fieldRegex:v332];

  *(v300 + 112) = v333;
  v334 = sub_100216964();
  v335 = sub_100216964();
  v336 = [v112 fieldMatch:v334 fieldRegex:v335];

  *(v300 + 120) = v336;
  v337 = sub_100216B14().super.isa;

  v338 = [v112 orMatch:v337];

  v339 = sub_100216964();
  v340 = [v117 TPPBPolicyKeyViewMappingWithView:v339 matchingRule:v338];

  v111[22] = v340;
  v341 = swift_allocObject();
  *(v341 + 16) = xmmword_10021D880;
  v342 = sub_100216964();
  v343 = sub_100216964();
  v344 = [v112 fieldMatch:v342 fieldRegex:v343];

  *(v341 + 32) = v344;
  v345 = sub_100216964();
  v346 = sub_100216964();
  v347 = [v112 fieldMatch:v345 fieldRegex:v346];

  *(v341 + 40) = v347;
  v348 = sub_100216964();
  v349 = sub_100216964();
  v350 = [v112 fieldMatch:v348 fieldRegex:v349];

  *(v341 + 48) = v350;
  v351 = sub_100216B14().super.isa;

  v352 = [v112 orMatch:v351];

  v353 = sub_100216964();
  v354 = [v117 TPPBPolicyKeyViewMappingWithView:v353 matchingRule:v352];

  v111[23] = v354;
  v355 = [v112 trueMatch];
  v356 = sub_100216964();
  v357 = [v117 TPPBPolicyKeyViewMappingWithView:v356 matchingRule:v355];

  v111[24] = v357;
  v358 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v359 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v360 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v361 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v362 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v363 = sub_100216B14().super.isa;

  v364 = sub_100216B14().super.isa;
  v365 = sub_100216B14().super.isa;
  v366 = sub_100216B14().super.isa;
  v367 = sub_100216B14().super.isa;
  v368 = [v358 initWithVersion:18 modelToCategory:v359 categoriesByView:v360 introducersByCategory:v361 redactions:v362 keyViewMapping:v363 userControllableViewList:v364 piggybackViews:v365 priorityViews:v366 inheritedExcludedViews:v367 hashAlgo:1];

  return v368;
}

id sub_1000407F8()
{
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10021D950;
  v1 = v0;
  v2 = sub_100216964();
  v3 = sub_100216964();
  v4 = objc_opt_self();
  v5 = [v4 TPPBPolicyModelToCategoryWithPrefix:v2 category:v3];

  v1[4] = v5;
  v6 = sub_100216964();
  v7 = sub_100216964();
  v8 = [v4 TPPBPolicyModelToCategoryWithPrefix:v6 category:v7];

  v1[5] = v8;
  v9 = sub_100216964();
  v10 = sub_100216964();
  v11 = [v4 TPPBPolicyModelToCategoryWithPrefix:v9 category:v10];

  v1[6] = v11;
  v12 = sub_100216964();
  v13 = sub_100216964();
  v14 = [v4 TPPBPolicyModelToCategoryWithPrefix:v12 category:v13];

  v1[7] = v14;
  v15 = sub_100216964();
  v16 = sub_100216964();
  v17 = [v4 TPPBPolicyModelToCategoryWithPrefix:v15 category:v16];

  v1[8] = v17;
  v18 = sub_100216964();
  v19 = sub_100216964();
  v20 = [v4 TPPBPolicyModelToCategoryWithPrefix:v18 category:v19];

  v1[9] = v20;
  v21 = sub_100216964();
  v22 = sub_100216964();
  v23 = [v4 TPPBPolicyModelToCategoryWithPrefix:v21 category:v22];

  v1[10] = v23;
  v24 = sub_100216964();
  v25 = sub_100216964();
  v26 = [v4 TPPBPolicyModelToCategoryWithPrefix:v24 category:v25];

  v1[11] = v26;
  v27 = sub_100216964();
  v28 = sub_100216964();
  v29 = [v4 TPPBPolicyModelToCategoryWithPrefix:v27 category:v28];

  v1[12] = v29;
  v30 = sub_100216964();
  v31 = sub_100216964();
  v32 = [v4 TPPBPolicyModelToCategoryWithPrefix:v30 category:v31];

  v1[13] = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10021D970;
  v34 = sub_100216964();
  isa = sub_100216B14().super.isa;
  v36 = objc_opt_self();
  v37 = [v36 TPPBPolicyCategoriesByViewWithView:v34 categories:isa];

  *(v33 + 32) = v37;
  v38 = sub_100216964();
  v39 = sub_100216B14().super.isa;
  v40 = [v36 TPPBPolicyCategoriesByViewWithView:v38 categories:v39];

  *(v33 + 40) = v40;
  v41 = sub_100216964();
  v42 = sub_100216B14().super.isa;
  v43 = [v36 TPPBPolicyCategoriesByViewWithView:v41 categories:v42];

  *(v33 + 48) = v43;
  v44 = sub_100216964();
  v45 = sub_100216B14().super.isa;
  v46 = [v36 TPPBPolicyCategoriesByViewWithView:v44 categories:v45];

  *(v33 + 56) = v46;
  v47 = sub_100216964();
  v48 = sub_100216B14().super.isa;
  v49 = [v36 TPPBPolicyCategoriesByViewWithView:v47 categories:v48];

  *(v33 + 64) = v49;
  v50 = sub_100216964();
  v51 = sub_100216B14().super.isa;
  v52 = [v36 TPPBPolicyCategoriesByViewWithView:v50 categories:v51];

  *(v33 + 72) = v52;
  v53 = sub_100216964();
  v54 = sub_100216B14().super.isa;
  v55 = [v36 TPPBPolicyCategoriesByViewWithView:v53 categories:v54];

  *(v33 + 80) = v55;
  v56 = sub_100216964();
  v57 = sub_100216B14().super.isa;
  v58 = [v36 TPPBPolicyCategoriesByViewWithView:v56 categories:v57];

  *(v33 + 88) = v58;
  v59 = sub_100216964();
  v60 = sub_100216B14().super.isa;
  v61 = [v36 TPPBPolicyCategoriesByViewWithView:v59 categories:v60];

  *(v33 + 96) = v61;
  v62 = sub_100216964();
  v63 = sub_100216B14().super.isa;
  v64 = [v36 TPPBPolicyCategoriesByViewWithView:v62 categories:v63];

  *(v33 + 104) = v64;
  v65 = sub_100216964();
  v66 = sub_100216B14().super.isa;
  v67 = [v36 TPPBPolicyCategoriesByViewWithView:v65 categories:v66];

  *(v33 + 112) = v67;
  v68 = sub_100216964();
  v69 = sub_100216B14().super.isa;
  v70 = [v36 TPPBPolicyCategoriesByViewWithView:v68 categories:v69];

  *(v33 + 120) = v70;
  v71 = sub_100216964();
  v72 = sub_100216B14().super.isa;
  v73 = [v36 TPPBPolicyCategoriesByViewWithView:v71 categories:v72];

  *(v33 + 128) = v73;
  v74 = sub_100216964();
  v75 = sub_100216B14().super.isa;
  v76 = [v36 TPPBPolicyCategoriesByViewWithView:v74 categories:v75];

  *(v33 + 136) = v76;
  v77 = sub_100216964();
  v78 = sub_100216B14().super.isa;
  v79 = [v36 TPPBPolicyCategoriesByViewWithView:v77 categories:v78];

  *(v33 + 144) = v79;
  v80 = sub_100216964();
  v81 = sub_100216B14().super.isa;
  v82 = [v36 TPPBPolicyCategoriesByViewWithView:v80 categories:v81];

  *(v33 + 152) = v82;
  v83 = sub_100216964();
  v84 = sub_100216B14().super.isa;
  v85 = [v36 TPPBPolicyCategoriesByViewWithView:v83 categories:v84];

  *(v33 + 160) = v85;
  v86 = sub_100216964();
  v87 = sub_100216B14().super.isa;
  v88 = [v36 TPPBPolicyCategoriesByViewWithView:v86 categories:v87];

  *(v33 + 168) = v88;
  v89 = sub_100216964();
  v90 = sub_100216B14().super.isa;
  v91 = [v36 TPPBPolicyCategoriesByViewWithView:v89 categories:v90];

  *(v33 + 176) = v91;
  v92 = sub_100216964();
  v93 = sub_100216B14().super.isa;
  v94 = [v36 TPPBPolicyCategoriesByViewWithView:v92 categories:v93];

  *(v33 + 184) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_10021D910;
  v96 = v95;
  v97 = sub_100216964();
  v98 = sub_100216B14().super.isa;
  v99 = objc_opt_self();
  v100 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v97 introducers:v98];

  v96[4] = v100;
  v101 = sub_100216964();
  v102 = sub_100216B14().super.isa;
  v103 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v101 introducers:v102];

  v96[5] = v103;
  v104 = sub_100216964();
  v105 = sub_100216B14().super.isa;
  v106 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v104 introducers:v105];

  v96[6] = v106;
  v107 = sub_100216964();
  v108 = sub_100216B14().super.isa;
  v109 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v107 introducers:v108];

  v96[7] = v109;
  v110 = sub_100216964();
  v111 = sub_100216B14().super.isa;
  v112 = [v99 TPPBPolicyIntroducersByCategoryWithCategory:v110 introducers:v111];

  v96[8] = v112;
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_10021D980;
  v114 = v113;
  v115 = objc_opt_self();
  v116 = sub_100216964();
  v117 = sub_100216964();
  v118 = [v115 fieldMatch:v116 fieldRegex:v117];

  v119 = sub_100216964();
  v120 = objc_opt_self();
  v121 = [v120 TPPBPolicyKeyViewMappingWithView:v119 matchingRule:v118];

  v114[4] = v121;
  v122 = sub_100216964();
  v123 = sub_100216964();
  v124 = [v115 fieldMatch:v122 fieldRegex:v123];

  v125 = sub_100216964();
  v126 = [v120 TPPBPolicyKeyViewMappingWithView:v125 matchingRule:v124];

  v114[5] = v126;
  v127 = sub_100216964();
  v128 = sub_100216964();
  v129 = [v115 fieldMatch:v127 fieldRegex:v128];

  v130 = sub_100216964();
  v131 = [v120 TPPBPolicyKeyViewMappingWithView:v130 matchingRule:v129];

  v114[6] = v131;
  v132 = sub_100216964();
  v133 = sub_100216964();
  v134 = [v115 fieldMatch:v132 fieldRegex:v133];

  v135 = sub_100216964();
  v136 = [v120 TPPBPolicyKeyViewMappingWithView:v135 matchingRule:v134];

  v114[7] = v136;
  v137 = sub_100216964();
  v138 = sub_100216964();
  v139 = [v115 fieldMatch:v137 fieldRegex:v138];

  v140 = sub_100216964();
  v141 = [v120 TPPBPolicyKeyViewMappingWithView:v140 matchingRule:v139];

  v114[8] = v141;
  v142 = sub_100216964();
  v143 = sub_100216964();
  v144 = [v115 fieldMatch:v142 fieldRegex:v143];

  v145 = sub_100216964();
  v146 = [v120 TPPBPolicyKeyViewMappingWithView:v145 matchingRule:v144];

  v114[9] = v146;
  v147 = sub_100216964();
  v148 = sub_100216964();
  v149 = [v115 fieldMatch:v147 fieldRegex:v148];

  v150 = sub_100216964();
  v151 = [v120 TPPBPolicyKeyViewMappingWithView:v150 matchingRule:v149];

  v114[10] = v151;
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_10021D880;
  v153 = sub_100216964();
  v154 = sub_100216964();
  v155 = [v115 fieldMatch:v153 fieldRegex:v154];

  *(v152 + 32) = v155;
  v156 = sub_100216964();
  v157 = sub_100216964();
  v158 = [v115 fieldMatch:v156 fieldRegex:v157];

  *(v152 + 40) = v158;
  v159 = sub_100216964();
  v160 = sub_100216964();
  v161 = [v115 fieldMatch:v159 fieldRegex:v160];

  *(v152 + 48) = v161;
  sub_10000200C(0, &qword_100297DA8, TPPBDictionaryMatchingRule_ptr);
  v162 = sub_100216B14().super.isa;

  v163 = [v115 orMatch:v162];

  v164 = sub_100216964();
  v165 = [v120 TPPBPolicyKeyViewMappingWithView:v164 matchingRule:v163];

  v114[11] = v165;
  v166 = sub_100216964();
  v167 = sub_100216964();
  v168 = [v115 fieldMatch:v166 fieldRegex:v167];

  v169 = sub_100216964();
  v170 = [v120 TPPBPolicyKeyViewMappingWithView:v169 matchingRule:v168];

  v114[12] = v170;
  v171 = sub_100216964();
  v172 = sub_100216964();
  v173 = [v115 fieldMatch:v171 fieldRegex:v172];

  v174 = sub_100216964();
  v175 = [v120 TPPBPolicyKeyViewMappingWithView:v174 matchingRule:v173];

  v114[13] = v175;
  v176 = sub_100216964();
  v177 = sub_100216964();
  v178 = [v115 fieldMatch:v176 fieldRegex:v177];

  v179 = sub_100216964();
  v180 = [v120 TPPBPolicyKeyViewMappingWithView:v179 matchingRule:v178];

  v114[14] = v180;
  v181 = sub_100216964();
  v182 = sub_100216964();
  v183 = [v115 fieldMatch:v181 fieldRegex:v182];

  v184 = sub_100216964();
  v185 = [v120 TPPBPolicyKeyViewMappingWithView:v184 matchingRule:v183];

  v114[15] = v185;
  v186 = sub_100216964();
  v187 = sub_100216964();
  v188 = [v115 fieldMatch:v186 fieldRegex:v187];

  v189 = sub_100216964();
  v190 = [v120 TPPBPolicyKeyViewMappingWithView:v189 matchingRule:v188];

  v114[16] = v190;
  v191 = sub_100216964();
  v192 = sub_100216964();
  v193 = [v115 fieldMatch:v191 fieldRegex:v192];

  v194 = sub_100216964();
  v195 = [v120 TPPBPolicyKeyViewMappingWithView:v194 matchingRule:v193];

  v114[17] = v195;
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_10021D8B0;
  v197 = swift_allocObject();
  *(v197 + 16) = xmmword_10021D8D0;
  v198 = sub_100216964();
  v199 = sub_100216964();
  v200 = [v115 fieldMatch:v198 fieldRegex:v199];

  *(v197 + 32) = v200;
  v201 = sub_100216964();
  v202 = sub_100216964();
  v203 = [v115 fieldMatch:v201 fieldRegex:v202];

  *(v197 + 40) = v203;
  v204 = sub_100216B14().super.isa;

  v205 = [v115 andMatch:v204];

  *(v196 + 32) = v205;
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_10021D8D0;
  v207 = sub_100216964();
  v208 = sub_100216964();
  v209 = [v115 fieldMatch:v207 fieldRegex:v208];

  *(v206 + 32) = v209;
  v210 = sub_100216964();
  v211 = sub_100216964();
  v212 = [v115 fieldMatch:v210 fieldRegex:v211];

  *(v206 + 40) = v212;
  v213 = sub_100216B14().super.isa;

  v214 = [v115 andMatch:v213];

  *(v196 + 40) = v214;
  v215 = sub_100216964();
  v216 = sub_100216964();
  v217 = [v115 fieldMatch:v215 fieldRegex:v216];

  *(v196 + 48) = v217;
  v218 = sub_100216964();
  v219 = sub_100216964();
  v220 = [v115 fieldMatch:v218 fieldRegex:v219];

  *(v196 + 56) = v220;
  v221 = sub_100216B14().super.isa;

  v222 = [v115 orMatch:v221];

  v223 = sub_100216964();
  v224 = [v120 TPPBPolicyKeyViewMappingWithView:v223 matchingRule:v222];

  v114[18] = v224;
  v225 = swift_allocObject();
  *(v225 + 16) = xmmword_10021D8D0;
  v226 = sub_100216964();
  v227 = sub_100216964();
  v228 = [v115 fieldMatch:v226 fieldRegex:v227];

  *(v225 + 32) = v228;
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_10021D880;
  v230 = sub_100216964();
  v231 = sub_100216964();
  v232 = [v115 fieldMatch:v230 fieldRegex:v231];

  *(v229 + 32) = v232;
  v233 = sub_100216964();
  v234 = sub_100216964();
  v235 = [v115 fieldMatch:v233 fieldRegex:v234];

  *(v229 + 40) = v235;
  v236 = sub_100216964();
  v237 = sub_100216964();
  v238 = [v115 fieldMatch:v236 fieldRegex:v237];

  *(v229 + 48) = v238;
  v239 = sub_100216B14().super.isa;

  v240 = [v115 andMatch:v239];

  *(v225 + 40) = v240;
  v241 = sub_100216B14().super.isa;

  v242 = [v115 orMatch:v241];

  v243 = sub_100216964();
  v244 = [v120 TPPBPolicyKeyViewMappingWithView:v243 matchingRule:v242];

  v114[19] = v244;
  v245 = swift_allocObject();
  *(v245 + 16) = xmmword_10021D8F0;
  v246 = sub_100216964();
  v247 = sub_100216964();
  v248 = [v115 fieldMatch:v246 fieldRegex:v247];

  *(v245 + 32) = v248;
  v249 = sub_100216964();
  v250 = sub_100216964();
  v251 = [v115 fieldMatch:v249 fieldRegex:v250];

  *(v245 + 40) = v251;
  v252 = sub_100216964();
  v253 = sub_100216964();
  v254 = [v115 fieldMatch:v252 fieldRegex:v253];

  *(v245 + 48) = v254;
  v255 = sub_100216964();
  v256 = sub_100216964();
  v257 = [v115 fieldMatch:v255 fieldRegex:v256];

  *(v245 + 56) = v257;
  v258 = sub_100216964();
  v259 = sub_100216964();
  v260 = [v115 fieldMatch:v258 fieldRegex:v259];

  *(v245 + 64) = v260;
  v261 = sub_100216964();
  v262 = sub_100216964();
  v263 = [v115 fieldMatch:v261 fieldRegex:v262];

  *(v245 + 72) = v263;
  v264 = sub_100216964();
  v265 = sub_100216964();
  v266 = [v115 fieldMatch:v264 fieldRegex:v265];

  *(v245 + 80) = v266;
  v267 = sub_100216964();
  v268 = sub_100216964();
  v269 = [v115 fieldMatch:v267 fieldRegex:v268];

  *(v245 + 88) = v269;
  v270 = sub_100216964();
  v271 = sub_100216964();
  v272 = [v115 fieldMatch:v270 fieldRegex:v271];

  *(v245 + 96) = v272;
  v273 = sub_100216964();
  v274 = sub_100216964();
  v275 = [v115 fieldMatch:v273 fieldRegex:v274];

  *(v245 + 104) = v275;
  v276 = sub_100216964();
  v277 = sub_100216964();
  v278 = [v115 fieldMatch:v276 fieldRegex:v277];

  *(v245 + 112) = v278;
  v279 = sub_100216964();
  v280 = sub_100216964();
  v281 = [v115 fieldMatch:v279 fieldRegex:v280];

  *(v245 + 120) = v281;
  v282 = sub_100216964();
  v283 = sub_100216964();
  v284 = [v115 fieldMatch:v282 fieldRegex:v283];

  *(v245 + 128) = v284;
  v285 = sub_100216964();
  v286 = sub_100216964();
  v287 = [v115 fieldMatch:v285 fieldRegex:v286];

  *(v245 + 136) = v287;
  v288 = sub_100216B14().super.isa;

  v289 = [v115 orMatch:v288];

  v290 = sub_100216964();
  v291 = [v120 TPPBPolicyKeyViewMappingWithView:v290 matchingRule:v289];

  v114[20] = v291;
  v292 = swift_allocObject();
  *(v292 + 16) = xmmword_10021D8D0;
  v293 = sub_100216964();
  v294 = sub_100216964();
  v295 = [v115 fieldMatch:v293 fieldRegex:v294];

  *(v292 + 32) = v295;
  v296 = sub_100216964();
  v297 = sub_100216964();
  v298 = [v115 fieldMatch:v296 fieldRegex:v297];

  *(v292 + 40) = v298;
  v299 = sub_100216B14().super.isa;

  v300 = [v115 orMatch:v299];

  v301 = sub_100216964();
  v302 = [v120 TPPBPolicyKeyViewMappingWithView:v301 matchingRule:v300];

  v114[21] = v302;
  v303 = swift_allocObject();
  *(v303 + 16) = xmmword_10021D8E0;
  v304 = sub_100216964();
  v305 = sub_100216964();
  v306 = [v115 fieldMatch:v304 fieldRegex:v305];

  *(v303 + 32) = v306;
  v307 = sub_100216964();
  v308 = sub_100216964();
  v309 = [v115 fieldMatch:v307 fieldRegex:v308];

  *(v303 + 40) = v309;
  v310 = sub_100216964();
  v311 = sub_100216964();
  v312 = [v115 fieldMatch:v310 fieldRegex:v311];

  *(v303 + 48) = v312;
  v313 = sub_100216964();
  v314 = sub_100216964();
  v315 = [v115 fieldMatch:v313 fieldRegex:v314];

  *(v303 + 56) = v315;
  v316 = sub_100216964();
  v317 = sub_100216964();
  v318 = [v115 fieldMatch:v316 fieldRegex:v317];

  *(v303 + 64) = v318;
  v319 = sub_100216964();
  v320 = sub_100216964();
  v321 = [v115 fieldMatch:v319 fieldRegex:v320];

  *(v303 + 72) = v321;
  v322 = sub_100216964();
  v323 = sub_100216964();
  v324 = [v115 fieldMatch:v322 fieldRegex:v323];

  *(v303 + 80) = v324;
  v325 = sub_100216964();
  v326 = sub_100216964();
  v327 = [v115 fieldMatch:v325 fieldRegex:v326];

  *(v303 + 88) = v327;
  v328 = sub_100216964();
  v329 = sub_100216964();
  v330 = [v115 fieldMatch:v328 fieldRegex:v329];

  *(v303 + 96) = v330;
  v331 = sub_100216964();
  v332 = sub_100216964();
  v333 = [v115 fieldMatch:v331 fieldRegex:v332];

  *(v303 + 104) = v333;
  v334 = sub_100216964();
  v335 = sub_100216964();
  v336 = [v115 fieldMatch:v334 fieldRegex:v335];

  *(v303 + 112) = v336;
  v337 = sub_100216964();
  v338 = sub_100216964();
  v339 = [v115 fieldMatch:v337 fieldRegex:v338];

  *(v303 + 120) = v339;
  v340 = sub_100216B14().super.isa;

  v341 = [v115 orMatch:v340];

  v342 = sub_100216964();
  v343 = [v120 TPPBPolicyKeyViewMappingWithView:v342 matchingRule:v341];

  v114[22] = v343;
  v344 = swift_allocObject();
  *(v344 + 16) = xmmword_10021D880;
  v345 = sub_100216964();
  v346 = sub_100216964();
  v347 = [v115 fieldMatch:v345 fieldRegex:v346];

  *(v344 + 32) = v347;
  v348 = sub_100216964();
  v349 = sub_100216964();
  v350 = [v115 fieldMatch:v348 fieldRegex:v349];

  *(v344 + 40) = v350;
  v351 = sub_100216964();
  v352 = sub_100216964();
  v353 = [v115 fieldMatch:v351 fieldRegex:v352];

  *(v344 + 48) = v353;
  v354 = sub_100216B14().super.isa;

  v355 = [v115 orMatch:v354];

  v356 = sub_100216964();
  v357 = [v120 TPPBPolicyKeyViewMappingWithView:v356 matchingRule:v355];

  v114[23] = v357;
  v358 = [v115 trueMatch];
  v359 = sub_100216964();
  v360 = [v120 TPPBPolicyKeyViewMappingWithView:v359 matchingRule:v358];

  v114[24] = v360;
  v361 = objc_allocWithZone(TPPolicyDocument);
  sub_10000200C(0, &qword_100297DB0, TPPBPolicyModelToCategory_ptr);
  v362 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DB8, TPPBPolicyCategoriesByView_ptr);
  v363 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC0, TPPBPolicyIntroducersByCategory_ptr);
  v364 = sub_100216B14().super.isa;

  sub_10000200C(0, &qword_100297DC8, TPPBPolicyRedaction_ptr);
  v365 = sub_100216B14().super.isa;
  sub_10000200C(0, &qword_100297DD0, TPPBPolicyKeyViewMapping_ptr);
  v366 = sub_100216B14().super.isa;

  v367 = sub_100216B14().super.isa;
  v368 = sub_100216B14().super.isa;
  v369 = sub_100216B14().super.isa;
  v370 = sub_100216B14().super.isa;
  v371 = [v361 initWithVersion:19 modelToCategory:v362 categoriesByView:v363 introducersByCategory:v364 redactions:v365 keyViewMapping:v366 userControllableViewList:v367 piggybackViews:v368 priorityViews:v369 inheritedExcludedViews:v370 hashAlgo:1];

  return v371;
}