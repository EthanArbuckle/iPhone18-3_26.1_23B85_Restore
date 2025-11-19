uint64_t storeEnumTagSinglePayload for PositiveAffinitySource.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReviewInfo.Errors(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReviewInfo.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_12F2A0()
{
  result = qword_22D538;
  if (!qword_22D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D538);
  }

  return result;
}

unint64_t sub_12F2F8()
{
  result = qword_22D540;
  if (!qword_22D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D540);
  }

  return result;
}

unint64_t sub_12F350()
{
  result = qword_22D548;
  if (!qword_22D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D548);
  }

  return result;
}

unint64_t sub_12F3A8()
{
  result = qword_22D550;
  if (!qword_22D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D550);
  }

  return result;
}

unint64_t sub_12F400()
{
  result = qword_22D558;
  if (!qword_22D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D558);
  }

  return result;
}

unint64_t sub_12F458()
{
  result = qword_22D560;
  if (!qword_22D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D560);
  }

  return result;
}

unint64_t sub_12F4B0()
{
  result = qword_22D568;
  if (!qword_22D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D568);
  }

  return result;
}

unint64_t sub_12F508()
{
  result = qword_22D570;
  if (!qword_22D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D570);
  }

  return result;
}

unint64_t sub_12F560()
{
  result = qword_22D578;
  if (!qword_22D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D578);
  }

  return result;
}

unint64_t sub_12F5B8()
{
  result = qword_22D580;
  if (!qword_22D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D580);
  }

  return result;
}

unint64_t sub_12F610()
{
  result = qword_22D588;
  if (!qword_22D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D588);
  }

  return result;
}

unint64_t sub_12F668()
{
  result = qword_22D590;
  if (!qword_22D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D590);
  }

  return result;
}

unint64_t sub_12F6C0()
{
  result = qword_22D598;
  if (!qword_22D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D598);
  }

  return result;
}

unint64_t sub_12F718()
{
  result = qword_22D5A0;
  if (!qword_22D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5A0);
  }

  return result;
}

unint64_t sub_12F770()
{
  result = qword_22D5A8;
  if (!qword_22D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5A8);
  }

  return result;
}

unint64_t sub_12F7C8()
{
  result = qword_22D5B0;
  if (!qword_22D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5B0);
  }

  return result;
}

unint64_t sub_12F820()
{
  result = qword_22D5B8;
  if (!qword_22D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5B8);
  }

  return result;
}

unint64_t sub_12F878()
{
  result = qword_22D5C0;
  if (!qword_22D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5C0);
  }

  return result;
}

unint64_t sub_12F8D0()
{
  result = qword_22D5C8;
  if (!qword_22D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5C8);
  }

  return result;
}

unint64_t sub_12F928()
{
  result = qword_22D5D0;
  if (!qword_22D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5D0);
  }

  return result;
}

unint64_t sub_12F980()
{
  result = qword_22D5D8;
  if (!qword_22D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5D8);
  }

  return result;
}

unint64_t sub_12F9D8()
{
  result = qword_22D5E0;
  if (!qword_22D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5E0);
  }

  return result;
}

unint64_t sub_12FA30()
{
  result = qword_22D5E8;
  if (!qword_22D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5E8);
  }

  return result;
}

unint64_t sub_12FA88()
{
  result = qword_22D5F0;
  if (!qword_22D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5F0);
  }

  return result;
}

unint64_t sub_12FAE0()
{
  result = qword_22D5F8;
  if (!qword_22D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D5F8);
  }

  return result;
}

unint64_t sub_12FB38()
{
  result = qword_22D600;
  if (!qword_22D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D600);
  }

  return result;
}

unint64_t sub_12FB90()
{
  result = qword_22D608;
  if (!qword_22D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D608);
  }

  return result;
}

unint64_t sub_12FBE8()
{
  result = qword_22D610;
  if (!qword_22D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D610);
  }

  return result;
}

unint64_t sub_12FC40()
{
  result = qword_22D618;
  if (!qword_22D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D618);
  }

  return result;
}

unint64_t sub_12FC98()
{
  result = qword_22D620;
  if (!qword_22D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D620);
  }

  return result;
}

unint64_t sub_12FCF0()
{
  result = qword_22D628;
  if (!qword_22D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D628);
  }

  return result;
}

unint64_t sub_12FD48()
{
  result = qword_22D630;
  if (!qword_22D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D630);
  }

  return result;
}

unint64_t sub_12FDA0()
{
  result = qword_22D638;
  if (!qword_22D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D638);
  }

  return result;
}

unint64_t sub_12FDF8()
{
  result = qword_22D640;
  if (!qword_22D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D640);
  }

  return result;
}

unint64_t sub_12FE50()
{
  result = qword_22D648;
  if (!qword_22D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D648);
  }

  return result;
}

unint64_t sub_12FEA8()
{
  result = qword_22D650;
  if (!qword_22D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D650);
  }

  return result;
}

unint64_t sub_12FF00()
{
  result = qword_22D658;
  if (!qword_22D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D658);
  }

  return result;
}

unint64_t sub_12FF58()
{
  result = qword_22D660;
  if (!qword_22D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D660);
  }

  return result;
}

unint64_t sub_12FFB0()
{
  result = qword_22D668;
  if (!qword_22D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D668);
  }

  return result;
}

unint64_t sub_130008()
{
  result = qword_22D670;
  if (!qword_22D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D670);
  }

  return result;
}

unint64_t sub_130060()
{
  result = qword_22D678;
  if (!qword_22D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D678);
  }

  return result;
}

unint64_t sub_1300B8()
{
  result = qword_22D680;
  if (!qword_22D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D680);
  }

  return result;
}

unint64_t sub_130110()
{
  result = qword_22D688;
  if (!qword_22D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D688);
  }

  return result;
}

unint64_t sub_130168()
{
  result = qword_22D690;
  if (!qword_22D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D690);
  }

  return result;
}

unint64_t sub_1301C0()
{
  result = qword_22D698;
  if (!qword_22D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D698);
  }

  return result;
}

unint64_t sub_13023C(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229760, &qword_1CCC50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2B0C(&qword_22D6A8, &qword_1CCC58);
    v8 = sub_1B52B4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_43050(v10, v6, &qword_229760, &qword_1CCC50);
      v13 = *v6;
      v12 = v6[1];
      result = sub_3A678(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_13045C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2B0C(a2, a3);
    v5 = sub_1B52B4();
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_43124(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
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

unint64_t sub_130530(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22D758, &qword_1CCCF8);
    v3 = sub_1B52B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_3AA80(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_13066C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2B0C(a2, a3);
    v7 = sub_1B52B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
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

unint64_t sub_130760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22D748, &unk_1CCCE0);
    v3 = sub_1B52B4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_3A678(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_130884(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2B0C(a2, a3);
    v7 = sub_1B52B4();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
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

void *sub_130980(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_2B0C(a2, a3);
  v5 = sub_1B52B4();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_43124(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_43124(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_130AC8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_2B0C(a2, a3);
    v9 = sub_1B52B4();
    v10 = (a1 + 32);

    for (i = v5 - 1; ; --i)
    {
      memcpy(__dst, v10, sizeof(__dst));
      v12 = __dst[71];
      memcpy(__src, v10, 0x231uLL);
      sub_43050(__dst, &v19, a4, a5);
      result = sub_3ABBC(__src);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = memcpy((v9[6] + 568 * result), __src, 0x231uLL);
      *(v9[7] + 8 * v15) = v12;
      v16 = v9[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_11;
      }

      v9[2] = v18;
      if (!i)
      {

        return v9;
      }

      v10 += 576;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_130C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22D6F0, &unk_1CCCA0);
    v3 = sub_1B52B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_3AF28(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_130D24(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2B0C(a2, a3);
    v7 = sub_1B52B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
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

unint64_t sub_130E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22D6E0, &unk_1CCC90);
    v3 = sub_1B52B4();
    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 16);
      v9 = *(i - 1);
      v10 = *i;
      result = sub_43124(v5);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v13 = v3[7] + 40 * result;
      *v13 = v6;
      *(v13 + 8) = v7;
      *(v13 + 16) = v8;
      *(v13 + 24) = v9;
      *(v13 + 32) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_130F48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2B0C(a2, a3);
    v5 = sub_1B52B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *(i - 1);
      v7 = *i;

      result = sub_3B15C(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_131038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22D740, &qword_1D15A0);
    v3 = sub_1B52B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_3A678(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_13113C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_2B0C(&qword_22D730, &unk_1CCCD0);
  v3 = sub_1B52B4();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = sub_43124(v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = v11;
  result = v8;
  v15 = (a1 + 136);
  while (1)
  {
    *(v3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v3[6] + 8 * v13) = v5;
    v16 = v3[7] + 48 * v13;
    *v16 = v4;
    *(v16 + 8) = v6;
    *(v16 + 16) = v7 & 1;
    *(v16 + 24) = result;
    *(v16 + 32) = v9;
    *(v16 + 40) = v10;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = v15 + 7;
    v5 = *(v15 - 6);
    v24 = *(v15 - 5);
    v6 = *(v15 - 4);
    v7 = *(v15 - 24);
    v21 = *(v15 - 2);
    v9 = *(v15 - 1);
    v22 = *v15;

    v13 = sub_43124(v5);
    v15 = v20;
    v10 = v22;
    v4 = v24;
    result = v21;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1312B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000001D7CF0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747369486B6F6F62 && a2 == 0xEB0000000079726FLL || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000000001D7D10 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000001D7D30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1314C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000000001D7D50 == a2;
  if (v3 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465776569766572 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684104562 && a2 == 0xE400000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x706D615364616572 && a2 == 0xEA0000000000656CLL || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xE900000000000064 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D7D70 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64656C706D6173 && a2 == 0xE700000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000001D73A0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000001D7D90 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_13180C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B694C7373656CLL && a2 == 0xEC00000073696854;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656B694C65726F6DLL && a2 == 0xEC00000073696854 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776569766572 && a2 == 0xE600000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746963696C706D69 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_131978()
{
  result = qword_22D720;
  if (!qword_22D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D720);
  }

  return result;
}

unint64_t sub_1319CC()
{
  result = qword_22D728;
  if (!qword_22D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D728);
  }

  return result;
}

unint64_t sub_131A20()
{
  result = qword_22D738;
  if (!qword_22D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D738);
  }

  return result;
}

unint64_t sub_131A88()
{
  result = qword_22D770;
  if (!qword_22D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D770);
  }

  return result;
}

uint64_t sub_131ADC()
{
  v2 = *sub_2698((v0 + 16), *(v0 + 40));
  v3 = sub_1B3F44();
  if (v1)
  {
    if (qword_228330 != -1)
    {
      swift_once();
    }

    sub_1B4D94();
    sub_1B4614();
    sub_87A10();
    sub_1B45C4();
  }

  else
  {
    v5 = v3;
    v6 = v4;
    v7 = sub_1B3BD4();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1B3BC4();
    sub_1B45D4();
    sub_131D08();
    sub_1B3BA4();

    return sub_41670(v5, v6);
  }
}

unint64_t sub_131C90()
{
  result = qword_22D818;
  if (!qword_22D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D818);
  }

  return result;
}

unint64_t sub_131D08()
{
  result = qword_22D820;
  if (!qword_22D820)
  {
    sub_1B45D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D820);
  }

  return result;
}

uint64_t sub_131D60(void *a1)
{
  v2[143] = v1;
  v4 = sub_2B0C(&qword_22C340, &qword_1C6DB8);
  v2[144] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[145] = swift_task_alloc();
  v2[146] = swift_task_alloc();
  memcpy(v2 + 2, a1, 0x1A8uLL);
  v2[147] = a1[53];
  memcpy(v2 + 56, a1 + 54, 0x2B0uLL);

  return _swift_task_switch(sub_131E38, 0, 0);
}

uint64_t sub_131E38()
{
  v1 = v0[147];
  v2 = v0[143];
  v3 = v2[10];
  v4 = v2[11];
  sub_2698(v2 + 7, v3);
  v0[55] = v1;
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[148] = v7;
  *v7 = v0;
  v7[1] = sub_131F7C;
  v8 = v0[147];

  return (v10)(v0 + 2, v8, v3, v4);
}

uint64_t sub_131F7C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1184);
  v7 = *v2;
  *(v3 + 1192) = a1;
  *(v3 + 1200) = v1;

  if (v1)
  {
    v5 = sub_1324D8;
  }

  else
  {
    v5 = sub_132094;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_132094()
{
  v58 = v0;
  v1 = v0[149];
  v2 = v0[143];
  v3 = v2[5];
  v4 = v2[6];
  sub_2698(v2 + 2, v3);
  v5 = *(v1 + 16);
  v6 = v0[149];
  if (v5)
  {
    v7 = sub_351DC(*(v1 + 16), 0);
    v8 = sub_3F4A0(&v57, v7 + 32, v5, v6);
    sub_417B8();
    if (v8 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_5:
  v9 = v0[150];
  v10 = (*(v4 + 8))(sub_132548, 0, v7, &type metadata for UInt64, &protocol witness table for UInt64, v3, v4);

  v11 = sub_132620(v10);

  v12 = *(v11 + 16);
  if (v12)
  {
    v53 = v0[144];
    v57 = _swiftEmptyArrayStorage;
    sub_379F8(0, v12, 0);
    v55 = v57;
    v13 = v11 + 64;
    v14 = -1 << *(v11 + 32);
    result = sub_1B4F84();
    v16 = result;
    v17 = 0;
    v56 = *(v11 + 36);
    v49 = v11 + 72;
    v50 = v12;
    v51 = v11 + 64;
    v52 = v11;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v11 + 32))
    {
      v20 = v16 >> 6;
      if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_30;
      }

      if (v56 != *(v11 + 36))
      {
        goto LABEL_31;
      }

      v54 = v17;
      v21 = v0[146];
      v22 = v0;
      v23 = *(v53 + 48);
      v24 = v22[145];
      v25 = *(v11 + 48);
      v26 = *(v11 + 56);
      v27 = *(v25 + 8 * v16);
      v28 = (type metadata accessor for AttributeAffinityResult() - 8);
      sub_42C00(v26 + *(*v28 + 72) * v16, v21 + v23);
      *v24 = v27;
      v29 = (v24 + *(v53 + 48));
      v30 = v21 + v23;
      v0 = v22;
      sub_FBAB0(v30, v29);
      v31 = v28[7];
      sub_2B0C(&qword_22C348, &unk_1C6DC0);
      sub_1B4394();
      v32 = v22[142];
      v33 = *v29;
      result = sub_FBB14(v24);
      v34 = v55;
      v57 = v55;
      v36 = v55[2];
      v35 = v55[3];
      if (v36 >= v35 >> 1)
      {
        result = sub_379F8((v35 > 1), v36 + 1, 1);
        v34 = v57;
      }

      v34[2] = v36 + 1;
      v37 = &v34[3 * v36];
      v37[4] = v27;
      v37[5] = v32;
      v37[6] = v33;
      v11 = v52;
      v18 = 1 << *(v52 + 32);
      if (v16 >= v18)
      {
        goto LABEL_32;
      }

      v13 = v51;
      v38 = *(v51 + 8 * v20);
      if ((v38 & (1 << v16)) == 0)
      {
        goto LABEL_33;
      }

      if (v56 != *(v52 + 36))
      {
        goto LABEL_34;
      }

      v55 = v34;
      v39 = v38 & (-2 << (v16 & 0x3F));
      if (v39)
      {
        v18 = __clz(__rbit64(v39)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v19 = v50;
      }

      else
      {
        v40 = v20 << 6;
        v19 = v50;
        v41 = (v49 + 8 * v20);
        v42 = v20 + 1;
        while (v42 < (v18 + 63) >> 6)
        {
          v44 = *v41++;
          v43 = v44;
          v40 += 64;
          ++v42;
          if (v44)
          {
            result = sub_42FF0(v16, v56, 0);
            v18 = __clz(__rbit64(v43)) + v40;
            goto LABEL_8;
          }
        }

        result = sub_42FF0(v16, v56, 0);
      }

LABEL_8:
      v17 = v54 + 1;
      v16 = v18;
      if (v54 + 1 == v19)
      {

        v45 = v55;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

    v45 = _swiftEmptyArrayStorage;
LABEL_26:
    v46 = v0[146];
    v47 = v0[145];

    v48 = v0[1];

    return v48(v45);
  }

  return result;
}

uint64_t sub_1324D8()
{
  v1 = v0[146];
  v2 = v0[145];

  v3 = v0[1];
  v4 = v0[150];

  return v3();
}

uint64_t sub_132548(uint64_t result)
{
  if (*(result + 144) >> 1 == 0xFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v1 = *(result + 24);
  }

  return result;
}

uint64_t sub_132588(void *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_131D60(a1);
}

uint64_t sub_132620(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_132780(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1329F4(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_132780(unint64_t *a1, uint64_t a2, void *a3)
{
  v33 = a2;
  v34 = a1;
  v37 = sub_2B0C(&qword_22C340, &qword_1C6DB8);
  v4 = *(*(v37 - 8) + 64);
  v5 = __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v32 - v8);
  v10 = type metadata accessor for AttributeAffinityResult();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  result = __chkstk_darwin(v10 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v15 = 0;
  v38 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_11:
    v26 = v23 | (v15 << 6);
    v27 = *(v38[6] + 8 * v26);
    sub_42C00(v38[7] + *(v36 + 72) * v26, v14);
    *v9 = v27;
    v28 = v37;
    sub_42C00(v14, v9 + *(v37 + 48));
    sub_FBB7C(v9, v7);
    v29 = *(v28 + 48);
    v30 = *&v7[v29];
    sub_EBB90(&v7[v29]);
    result = sub_EBB90(v14);
    if (v30 > 0.0)
    {
      *(v34 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
        return sub_55EE4(v34, v33, v35, v38);
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_55EE4(v34, v33, v35, v38);
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v21 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1329F4(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_132780(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_132A78(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 1256) = v3;
  *(v4 + 1248) = a2;
  *(v4 + 1240) = a1;
  *(v4 + 1288) = *(a2 + 480);
  *(v4 + 1289) = *a3;
  return _swift_task_switch(sub_132AB0, 0, 0);
}

uint64_t sub_132AB0()
{
  v1 = *(v0 + 1289);
  if (v1 == 4)
  {
    v1 = 0x1020100u >> (8 * *(v0 + 1288));
  }

  *(v0 + 1290) = v1;
  v2 = *(v0 + 1256);
  swift_beginAccess();
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = sub_3A8DC(v1), (v5 & 1) != 0))
  {
    sub_404C4(*(v3 + 56) + 40 * v4, v0 + 1176);
  }

  else
  {
    *(v0 + 1208) = 0;
    *(v0 + 1176) = 0u;
    *(v0 + 1192) = 0u;
  }

  swift_endAccess();
  if (*(v0 + 1200))
  {
    v6 = *(v0 + 1288);
    v7 = *(v0 + 1248);
    sub_43178((v0 + 1176), v0 + 1136);
    v8 = *(v0 + 1160);
    v9 = *(v0 + 1168);
    sub_2698((v0 + 1136), v8);
    memcpy((v0 + 16), v7, 0x1E0uLL);
    *(v0 + 496) = v6;
    memcpy((v0 + 497), (v7 + 481), 0x27FuLL);
    v10 = *(v9 + 8);
    v17 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 1264) = v12;
    *v12 = v0;
    v12[1] = sub_132D1C;
    v13 = *(v0 + 1240);

    return v17(v13, v0 + 16, v8, v9);
  }

  else
  {
    sub_133798(v0 + 1176);
    sub_133800();
    swift_allocError();
    *v15 = v1;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_132D1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1264);
  v7 = *v2;
  *(v3 + 1272) = a1;
  *(v3 + 1280) = v1;

  if (v1)
  {
    v5 = sub_133144;
  }

  else
  {
    v5 = sub_132E34;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_132E34()
{
  v32 = v0;
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1256);

  v3 = sub_1B4624();
  v4 = sub_1B4DB4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1289);
    v6 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v6 = 136315650;
    if (v5 == 4)
    {
      v7 = 0xE500000000000000;
      v8 = 0x3E6C696E3CLL;
    }

    else
    {
      v9 = 0x6F6A7369446C6C61;
      if (*(v0 + 1289) == 2)
      {
        v10 = 0xEB00000000746E69;
      }

      else
      {
        v9 = 0x7473657265746E69;
        v10 = 0xED00006465736142;
      }

      v11 = 0xE800000000000000;
      v12 = 0x746E696F4A6C6C61;
      if (!*(v0 + 1289))
      {
        v12 = 0x6F4A656C676E6973;
        v11 = 0xEB00000000746E69;
      }

      if (*(v0 + 1289) <= 1u)
      {
        v8 = v12;
      }

      else
      {
        v8 = v9;
      }

      if (*(v0 + 1289) <= 1u)
      {
        v7 = v11;
      }

      else
      {
        v7 = v10;
      }
    }

    v13 = *(v0 + 1290);
    v14 = sub_60FF4(v8, v7, &v31);

    *(v6 + 4) = v14;
    *(v6 + 12) = 2080;
    v15 = 0x6F6A7369446C6C61;
    if (v13 == 2)
    {
      v16 = 0xEB00000000746E69;
    }

    else
    {
      v15 = 0x7473657265746E69;
      v16 = 0xED00006465736142;
    }

    v17 = 0xE800000000000000;
    v18 = 0x746E696F4A6C6C61;
    if (!v13)
    {
      v18 = 0x6F4A656C676E6973;
      v17 = 0xEB00000000746E69;
    }

    if (v13 <= 1)
    {
      v19 = v18;
    }

    else
    {
      v19 = v15;
    }

    if (v13 <= 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = v16;
    }

    v21 = *(v0 + 1272);
    v22 = sub_60FF4(v19, v20, &v31);

    *(v6 + 14) = v22;
    *(v6 + 22) = 2080;

    sub_2A3A0(v23);
    sub_42B50();
    v24 = sub_1B4CB4();
    v26 = v25;

    v27 = sub_60FF4(v24, v26, &v31);

    *(v6 + 24) = v27;
    _os_log_impl(&dword_0, v3, v4, "maybeMediaTypeMethod=%s\nmediaTypeMethod=%s\nrecommendedMediaTypes=%s", v6, 0x20u);
    swift_arrayDestroy();
  }

  sub_2BF8((v0 + 1136));
  v28 = *(v0 + 8);
  v29 = *(v0 + 1272);

  return v28(v29);
}

uint64_t sub_133144()
{
  sub_2BF8(v0 + 142);
  v1 = v0[160];
  v2 = v0[1];

  return v2();
}

BooksPersonalization::MediaTypeMethod_optional __swiftcall MediaTypeMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_213708;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t sub_133208()
{
  result = qword_22D8D0;
  if (!qword_22D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D8D0);
  }

  return result;
}

unint64_t sub_13326C()
{
  result = qword_22D8D8;
  if (!qword_22D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D8D8);
  }

  return result;
}

unint64_t sub_1332C4()
{
  result = qword_22D8E0;
  if (!qword_22D8E0)
  {
    sub_1CC1C(&qword_22D8E8, &qword_1CCF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D8E0);
  }

  return result;
}

uint64_t sub_1333F8()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20BooksPersonalization41DelegatingMediaTypesRecommendationService_logger;
  v3 = sub_1B4644();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DelegatingMediaTypesRecommendationService()
{
  result = qword_22D920;
  if (!qword_22D920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1334F0()
{
  result = sub_1B4644();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_133590(uint64_t a1, const void *a2)
{
  v5 = *v2;
  memcpy((v3 + 16), a2, 0x460uLL);
  *(v3 + 1152) = 4;
  v6 = swift_task_alloc();
  *(v3 + 1136) = v6;
  *v6 = v3;
  v6[1] = sub_133644;

  return sub_132A78(a1, v3 + 16, (v3 + 1152));
}

uint64_t sub_133644(uint64_t a1)
{
  v4 = *(*v2 + 1136);
  v5 = *v2;
  *(v5 + 1144) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_133780, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_133798(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22D9B0, &qword_1CD080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_133800()
{
  result = qword_22D9B8;
  if (!qword_22D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D9B8);
  }

  return result;
}

unint64_t sub_133854()
{
  result = qword_22D9C0;
  if (!qword_22D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22D9C0);
  }

  return result;
}

uint64_t sub_1338B8()
{
  sub_768DC();
  result = sub_1B4E94();
  qword_260C38 = result;
  return result;
}

uint64_t sub_133920()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_260C40);
  sub_50E58(v0, qword_260C40);
  if (qword_2282E8 != -1)
  {
    swift_once();
  }

  v1 = qword_260C38;
  return sub_1B4654();
}

uint64_t sub_1339AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v1;
  v3[1] = sub_133A48;

  return sub_133E00(v1 + 80, a1);
}

uint64_t sub_133A48()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_133DE8;
  }

  else
  {
    v3 = sub_133B5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

void *sub_133B5C()
{
  if (*(v0 + 80))
  {
    result = *(v0 + 80);
  }

  else
  {
    result = _swiftEmptyArrayStorage;
  }

  v22 = result[2];
  if (!v22)
  {
LABEL_23:

    v20 = *(v0 + 8);

    return v20(_swiftEmptyDictionarySingleton);
  }

  v2 = 0;
  v3 = result + 9;
  v21 = result;
  while (1)
  {
    if (v2 >= result[2])
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v4 = *(v3 - 5);
    v5 = *(v3 - 5);
    if (v5 < 0)
    {
      goto LABEL_30;
    }

    v23 = *(v3 - 5);
    v6 = *(v3 - 24);
    v8 = *(v3 - 2);
    v7 = *(v3 - 1);
    v9 = *v3;

    swift_bridgeObjectRetain_n();
    v10 = sub_4025C(v8);

    if (v9)
    {
      *(v0 + 64) = v7;
      *(v0 + 72) = v9;

      v7 = sub_1B4954();
    }

    else
    {
      v11 = 0;
    }

    *(v0 + 16) = v23;
    *(v0 + 32) = v6;
    *(v0 + 40) = v10;
    *(v0 + 48) = v7;
    *(v0 + 56) = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_43124(v5);
    v15 = _swiftEmptyDictionarySingleton[2];
    v16 = (v13 & 1) == 0;
    result = (v15 + v16);
    if (__OFADD__(v15, v16))
    {
      goto LABEL_31;
    }

    v17 = v13;
    if (_swiftEmptyDictionarySingleton[3] < result)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v13)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_187AC0();
      if (v17)
      {
LABEL_20:
        sub_136268(v0 + 16, _swiftEmptyDictionarySingleton[7] + 48 * v14);
        goto LABEL_7;
      }
    }

LABEL_6:
    sub_15BC84(v14, v5, (v0 + 16), _swiftEmptyDictionarySingleton);
LABEL_7:
    ++v2;

    v3 += 6;
    result = v21;
    if (v22 == v2)
    {
      goto LABEL_23;
    }
  }

  sub_1829C4(result, isUniquelyReferenced_nonNull_native);
  v18 = sub_43124(v5);
  if ((v17 & 1) == (v19 & 1))
  {
    v14 = v18;
    if (v17)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  return sub_1B5784();
}

uint64_t sub_133E00(uint64_t a1, uint64_t a2)
{
  v3[291] = v2;
  v3[290] = a2;
  v3[289] = a1;
  v3[292] = *v2;
  return _swift_task_switch(sub_133E50, 0, 0);
}

uint64_t sub_133E50()
{
  v15 = v0;
  v1 = v0[290];
  v2 = *(v1 + *(type metadata accessor for PersonalizationMetadataRequest() + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_3503C(*(v2 + 16), 0);
    v5 = sub_3F09C(&v14, v4 + 4, v3, v2);

    sub_5EEEC();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[293] = v4;
  v6 = v0[291];
  v0[294] = v6[2];
  v0[295] = v6[3];
  v0[296] = v6[4];
  v0[297] = v6[5];
  sub_404C4((v6 + 9), (v0 + 282));
  v7 = v6[17];
  v8 = v6[18];
  sub_2698(v6 + 14, v7);
  v9 = *(v8 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[298] = v11;
  *v11 = v0;
  v11[1] = sub_13404C;

  return (v13)(v0 + 2, v7, v8);
}

uint64_t sub_13404C()
{
  v2 = *v1;
  v3 = *(*v1 + 2384);
  v7 = *v1;
  *(*v1 + 2392) = v0;

  if (v0)
  {
    v4 = *(v2 + 2344);

    v5 = sub_134478;
  }

  else
  {
    v5 = sub_134168;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_134168()
{
  v1 = *(v0 + 2344);
  v2 = *(v0 + 2336);
  memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
  v10 = *(v0 + 2368);
  v11 = *(v0 + 2352);
  v9 = *(v0 + 2320);
  sub_2B54(v0 + 1136);
  v3 = *(v0 + 1816);
  if (v3 <= 0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(v0 + 2296) = v3;
  v4 = swift_task_alloc();
  *(v0 + 2400) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v0 + 2296;
  *(v4 + 32) = v9;
  *(v4 + 48) = v11;
  *(v4 + 64) = v10;
  *(v4 + 80) = v0 + 2256;
  *(v4 + 88) = v2;
  v5 = sub_2B0C(&qword_228A50, &qword_1B6758);
  v6 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  *(v0 + 2408) = v7;
  *v7 = v0;
  v7[1] = sub_1342D8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2304, &type metadata for Transport.MetadataResponse, v5, 0, 0, &unk_1CD160, v4, &type metadata for Transport.MetadataResponse);
}

uint64_t sub_1342D8()
{
  v2 = *v1;
  v3 = *(*v1 + 2408);
  v8 = *v1;
  *(*v1 + 2416) = v0;

  if (v0)
  {
    v4 = sub_1344DC;
  }

  else
  {
    v5 = *(v2 + 2400);
    v6 = *(v2 + 2344);

    v4 = sub_134400;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_134400()
{
  v1 = v0[289];
  v2 = v0[288];

  *v1 = v2;
  sub_2BF8(v0 + 282);
  v3 = v0[1];

  return v3();
}

uint64_t sub_134478()
{
  v1 = v0[299];
  sub_2BF8(v0 + 282);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1344DC()
{
  v1 = v0[300];
  v2 = v0[293];

  v3 = v0[302];
  sub_2BF8(v0 + 282);
  v4 = v0[1];

  return v4();
}

uint64_t sub_134554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = v17;
  *(v8 + 216) = v18;
  *(v8 + 192) = v16;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 144) = a3;
  *(v8 + 152) = a4;
  *(v8 + 128) = a1;
  *(v8 + 136) = a2;
  v9 = *(type metadata accessor for PersonalizationMetadataRequest() - 8);
  *(v8 + 224) = v9;
  *(v8 + 232) = *(v9 + 64);
  *(v8 + 240) = swift_task_alloc();
  v10 = *(*(sub_2B0C(&qword_2296C0, &qword_1C3800) - 8) + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v11 = sub_2B0C(&qword_22DA80, &qword_1CD168);
  *(v8 + 264) = v11;
  v12 = *(v11 - 8);
  *(v8 + 272) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1346E4, 0, 0);
}

uint64_t sub_1346E4()
{
  v1 = **(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = v2[2];

    v4 = sub_1363C4(0, v3, v1, v1, v2);

    v5 = *(v4 + 16);
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_2B0C(&qword_229328, &qword_1BC3D8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BCA80;
    *(v4 + 32) = _swiftEmptyArrayStorage;
    *(v4 + 40) = &_swiftEmptyArrayStorage[4];
    *(v4 + 48) = xmmword_1C00C0;
    v5 = 1;
  }

  v40 = **(v0 + 136);
  v41 = *(v0 + 224);
  v39 = *(v0 + 232) + 7;
  v54 = sub_1B4C54();
  v6 = *(v54 - 8);
  v38 = *(v6 + 56);
  v37 = (v6 + 48);
  v36 = (v6 + 8);
  v7 = (v4 + 56);
  do
  {
    v53 = v5;
    v10 = *(v0 + 256);
    v11 = *(v0 + 240);
    v12 = *(v0 + 208);
    v49 = *(v0 + 216);
    v50 = *(v0 + 248);
    v48 = *(v0 + 200);
    v46 = v10;
    v47 = *(v0 + 192);
    v44 = *(v0 + 176);
    v45 = *(v0 + 184);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    v42 = *v7;
    v43 = *(v7 - 1);
    v52 = v7;
    v55 = *(v7 - 3);
    v38();
    sub_136650(v13, v11);
    sub_404C4(v12, v0 + 16);
    v15 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v16 = (v39 + v15) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v18 + 39) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v51 = (v20 + 16);
    *(v20 + 24) = 0;
    sub_136814(v11, v20 + v15);
    v21 = v20 + v16;
    *v21 = v55;
    *(v21 + 16) = v43;
    *(v21 + 24) = v42;
    *(v20 + v17) = v14;
    v22 = (v20 + v18);
    *v22 = v44;
    v22[1] = v45;
    v22[2] = v47;
    v22[3] = v48;
    sub_43178((v0 + 16), v20 + v19);
    *(v20 + ((v19 + 47) & 0xFFFFFFFFFFFFFFF8)) = v49;
    sub_79E9C(v46, v50);
    LODWORD(v11) = (*v37)(v50, 1, v54);
    swift_unknownObjectRetain_n();

    sub_41BF8(v44);
    sub_41BF8(v47);
    v23 = *(v0 + 248);
    if (v11 == 1)
    {
      sub_79E34(*(v0 + 248));
    }

    else
    {
      sub_1B4C44();
      (*v36)(v23, v54);
    }

    if (*v51)
    {
      v24 = *(v20 + 24);
      v25 = *v51;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_1B4BC4();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    if (v28 | v26)
    {
      v8 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v26;
      *(v0 + 80) = v28;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v0 + 256);
    *(v0 + 88) = 1;
    *(v0 + 96) = v8;
    *(v0 + 104) = v40;
    swift_task_create();

    swift_unknownObjectRelease();

    sub_79E34(v9);
    v7 = v52 + 4;
    v5 = v53 - 1;
  }

  while (v53 != 1);
LABEL_16:

  v29 = *(v0 + 280);
  v30 = **(v0 + 136);
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B4C74();
  *(v0 + 288) = _swiftEmptyArrayStorage;
  v31 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v32 = swift_task_alloc();
  *(v0 + 296) = v32;
  *v32 = v0;
  v32[1] = sub_134BC0;
  v33 = *(v0 + 280);
  v34 = *(v0 + 264);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 112, 0, 0, v34, v0 + 120);
}

uint64_t sub_134BC0()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 288);

    v5 = sub_134F04;
  }

  else
  {
    v5 = sub_134CD8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_134CD8(char *isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 112);
  v7 = *(v5 + 288);
  if (v6 != 1)
  {
    if (v6)
    {
      v14 = *(v5 + 112);
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }

    v15 = v14[2];
    v16 = *(v7 + 16);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      __break(1u);
    }

    else
    {
      v18 = *(v5 + 288);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v5 + 288);
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v19 + 3) >> 1)
      {
        if (v14[2])
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v23 = v16 + v15;
        }

        else
        {
          v23 = v16;
        }

        isUniquelyReferenced_nonNull_native = sub_34AB0(isUniquelyReferenced_nonNull_native, v23, 1, *(v5 + 288));
        v19 = isUniquelyReferenced_nonNull_native;
        if (v14[2])
        {
LABEL_12:
          if ((*(v19 + 3) >> 1) - *(v19 + 2) >= v15)
          {
            swift_arrayInitWithCopy();

            if (!v15)
            {
              goto LABEL_21;
            }

            v20 = *(v19 + 2);
            v21 = __OFADD__(v20, v15);
            v22 = v20 + v15;
            if (!v21)
            {
              *(v19 + 2) = v22;
              goto LABEL_21;
            }

LABEL_27:
            __break(1u);
            return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      if (!v15)
      {
LABEL_21:
        *(v5 + 288) = v19;
        v24 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
        v25 = swift_task_alloc();
        *(v5 + 296) = v25;
        *v25 = v5;
        v25[1] = sub_134BC0;
        v26 = *(v5 + 280);
        a4 = *(v5 + 264);
        a5 = v5 + 120;
        isUniquelyReferenced_nonNull_native = (v5 + 112);
        a2 = 0;
        a3 = 0;

        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v8 = *(v5 + 256);
  v10 = *(v5 + 240);
  v9 = *(v5 + 248);
  v11 = *(v5 + 128);
  (*(*(v5 + 272) + 8))(*(v5 + 280), *(v5 + 264));
  *v11 = v7;

  v12 = *(v5 + 8);

  return v12();
}

uint64_t sub_134F04()
{
  v1 = v0[32];
  v3 = v0[30];
  v2 = v0[31];
  (*(v0[34] + 8))(v0[35], v0[33]);
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_134FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 584) = v17;
  *(v8 + 576) = v16;
  *(v8 + 544) = v14;
  *(v8 + 560) = v15;
  *(v8 + 536) = a8;
  *(v8 + 528) = a7;
  *(v8 + 520) = a6;
  *(v8 + 504) = a4;
  *(v8 + 512) = a5;
  *(v8 + 496) = a1;
  v9 = sub_1B40F4();
  *(v8 + 592) = v9;
  v10 = *(v9 - 8);
  *(v8 + 600) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();

  return _swift_task_switch(sub_1350C8, 0, 0);
}

void sub_1350C8()
{
  v73 = v0;
  v1 = *(v0 + 536);
  if (v1)
  {
    v4 = *(v0 + 512);
    sub_1B5744();
    swift_unknownObjectRetain_n();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {
      swift_unknownObjectRelease();
      v1 = *(v0 + 536);
      v5 = _swiftEmptyArrayStorage;
    }

    v6 = *(v0 + 528);
    v7 = v5[2];

    v8 = (v1 >> 1) - v6;
    if (__OFSUB__(v1 >> 1, v6))
    {
      __break(1u);
    }

    else
    {
      v9 = *(v0 + 512);
      if (v7 == v8)
      {
        v10 = *(v0 + 512);
        v3 = swift_dynamicCastClass();
        if (!v3)
        {
          swift_unknownObjectRelease();
          v3 = _swiftEmptyArrayStorage;
        }

LABEL_9:
        v11 = *(v0 + 504);
        sub_7E9D8(v3, v72);

        v12 = *(v0 + 640);
        v71 = v72[0];
        *(v0 + 648) = v72[0];
        sub_1B40E4();
        if (qword_2282F0 != -1)
        {
          swift_once();
        }

        v13 = (v0 + 16);
        v14 = *(v0 + 640);
        v15 = *(v0 + 632);
        v16 = *(v0 + 600);
        v17 = *(v0 + 592);
        v18 = sub_1B4644();
        *(v0 + 656) = sub_50E58(v18, qword_260C40);
        v19 = *(v16 + 16);
        *(v0 + 664) = v19;
        *(v0 + 672) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v65 = v19;
        v19(v15, v14, v17);
        v20 = sub_1B4624();
        v21 = sub_1B4DB4();
        v22 = os_log_type_enabled(v20, v21);
        v23 = *(v0 + 632);
        v24 = *(v0 + 600);
        v25 = *(v0 + 592);
        if (v22)
        {
          v69 = v21;
          v26 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v72[0] = v67;
          *v26 = 136446210;
          sub_85D3C();
          v27 = sub_1B5594();
          v29 = v28;
          v30 = *(v24 + 8);
          v30(v23, v25);
          v31 = sub_60FF4(v27, v29, v72);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_0, v20, v69, "initiating personalization metadata request for batch %{public}s", v26, 0xCu);
          sub_2BF8(v67);
        }

        else
        {

          v30 = *(v24 + 8);
          v30(v23, v25);
        }

        v64 = v30;
        *(v0 + 680) = v30;
        v32 = *(v0 + 640);
        v33 = *(v0 + 544);
        v70 = sub_1B40D4();
        v35 = v34;

        v68 = v35;
        *(v0 + 688) = v35;
        v36 = *(v33 + 48);
        if (*(v33 + 64))
        {
          if (*(v33 + 48) > 1u)
          {
            if (*(v33 + 48) == 2)
            {
              v37 = 0x80000000001D7FD0;
              v36 = 0xD00000000000003FLL;
            }

            else
            {
              v36 = 0xD00000000000002ELL;
              v37 = 0x80000000001D7FA0;
            }
          }

          else if (*(v33 + 48))
          {
            v37 = 0x80000000001D8010;
            v36 = 0xD00000000000004CLL;
          }

          else
          {
            v37 = 0x80000000001D8060;
            v36 = 0xD00000000000003DLL;
          }
        }

        else
        {
          v37 = *(*(v0 + 544) + 56);
        }

        v63 = *(v0 + 640);
        v38 = *(v0 + 624);
        v39 = *(v0 + 592);
        v40 = *(v0 + 576);
        v41 = *(v0 + 568);
        v42 = *(v0 + 560);
        v43 = *(v0 + 552);
        sub_404C4(*(v0 + 584), v0 + 408);
        *(v0 + 168) = v36;
        *(v0 + 176) = v37;
        *(v0 + 184) = v43;
        *(v0 + 192) = v42;
        *(v0 + 200) = v41;
        *(v0 + 208) = v40;
        sub_404C4(v0 + 408, v0 + 216);
        v72[0] = v43;
        v72[1] = v42;
        v72[2] = v41;
        v72[3] = v40;
        sub_41BF8(v43);
        sub_41BF8(v41);
        sub_41BF8(v43);
        sub_41BF8(v41);
        ClientConverter.init(configuration:)(v72, v0 + 256);
        sub_2BF8((v0 + 408));
        v44 = *(v0 + 368);
        *(v0 + 112) = *(v0 + 352);
        *(v0 + 128) = v44;
        *(v0 + 144) = *(v0 + 384);
        *(v0 + 160) = *(v0 + 400);
        v45 = *(v0 + 304);
        *(v0 + 48) = *(v0 + 288);
        *(v0 + 64) = v45;
        v46 = *(v0 + 336);
        *(v0 + 80) = *(v0 + 320);
        *(v0 + 96) = v46;
        v47 = *(v0 + 272);
        *v13 = *(v0 + 256);
        *(v0 + 32) = v47;
        v65(v38, v63, v39);
        v48 = sub_1B4624();
        v49 = sub_1B4D84();
        v50 = os_log_type_enabled(v48, v49);
        v51 = *(v0 + 624);
        v52 = *(v0 + 600);
        v53 = *(v0 + 592);
        if (v50)
        {
          v54 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v72[0] = v66;
          *v54 = 136446210;
          sub_85D3C();
          v55 = sub_1B5594();
          v57 = v56;
          v64(v51, v53);
          v58 = sub_60FF4(v55, v57, v72);

          *(v54 + 4) = v58;
          _os_log_impl(&dword_0, v48, v49, "fetching personalization metadata for batch %{public}s", v54, 0xCu);
          sub_2BF8(v66);
        }

        else
        {

          v64(v51, v53);
        }

        v59 = swift_task_alloc();
        *(v0 + 696) = v59;
        v59[2] = v13;
        v59[3] = v70;
        v59[4] = v68;
        v59[5] = v71;
        v60 = swift_task_alloc();
        *(v0 + 704) = v60;
        *(v60 + 16) = v13;
        v61 = swift_task_alloc();
        *(v0 + 712) = v61;
        *(v61 + 16) = v13;
        v62 = swift_task_alloc();
        *(v0 + 720) = v62;
        *v62 = v0;
        v62[1] = sub_135848;
        v75 = sub_F8A9C;
        v76 = v61;

        JUMPOUT(0xF60D4);
      }
    }

    swift_unknownObjectRelease();
    v1 = *(v0 + 536);
  }

  sub_50F4C(*(v0 + 512), *(v0 + 520), *(v0 + 528), v1);
  v3 = v2;
  goto LABEL_9;
}

uint64_t sub_135848()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v4 = *v1;
  v2[91] = v0;

  v5 = v2[89];
  v6 = v2[88];
  v7 = v2[87];
  if (v0)
  {

    v8 = sub_135E58;
  }

  else
  {
    v9 = v2[86];
    v10 = v2[81];

    v8 = sub_1359EC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1359EC()
{
  v56 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 656);
  v3 = *(v0 + 472);
  v4 = *(v0 + 480);
  (*(v0 + 664))(*(v0 + 616), *(v0 + 640), *(v0 + 592));
  v5 = sub_1B4624();
  v6 = sub_1B4D84();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 680);
  v9 = *(v0 + 616);
  v10 = *(v0 + 600);
  v11 = *(v0 + 592);
  if (v7)
  {
    v51 = v3;
    v12 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v54 = v49;
    *v12 = 136446210;
    sub_85D3C();
    v13 = sub_1B5594();
    v52 = v4;
    v15 = v14;
    v8(v9, v11);
    v16 = sub_60FF4(v13, v15, &v54);
    v4 = v52;

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v5, v6, "fetched personalization metadata for batch %{public}s", v12, 0xCu);
    sub_2BF8(v49);

    v3 = v51;
  }

  else
  {

    v8(v9, v11);
  }

  v17 = *(v0 + 728);
  v18 = *(v0 + 496);
  v54 = v3;
  v55 = v4;
  sub_7EAB0(v18);
  if (v17)
  {
    sub_136B18(v3, v4);
    v19 = *(v0 + 672);
    v20 = *(v0 + 656);
    (*(v0 + 664))(*(v0 + 608), *(v0 + 640), *(v0 + 592));
    swift_errorRetain();
    v21 = sub_1B4624();
    v22 = sub_1B4D94();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 680);
    v25 = *(v0 + 640);
    v26 = *(v0 + 608);
    v27 = *(v0 + 600);
    v28 = *(v0 + 592);
    if (v23)
    {
      v29 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v29 = 136446466;
      sub_85D3C();
      v53 = v25;
      v30 = sub_1B5594();
      v50 = v22;
      v32 = v31;
      v24(v26, v28);
      v33 = sub_60FF4(v30, v32, &v54);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v35 = *(v0 + 448);
      v34 = *(v0 + 456);
      v36 = *(v0 + 464);
      v37 = sub_1B5794();
      v39 = sub_60FF4(v37, v38, &v54);

      *(v29 + 14) = v39;
      _os_log_impl(&dword_0, v21, v50, "error fetching personalization metadata for batch %{public}s %s", v29, 0x16u);
      swift_arrayDestroy();

      v24(v53, v28);
    }

    else
    {

      v24(v26, v28);
      v24(v25, v28);
    }

    v41 = *(v0 + 496);

    *v41 = 0;
    sub_136AC4(v0 + 16);
  }

  else
  {
    v40 = *(v0 + 600) + 8;
    (*(v0 + 680))(*(v0 + 640), *(v0 + 592));
    sub_136AC4(v0 + 16);
    sub_136B18(v3, v4);
  }

  v42 = *(v0 + 640);
  v43 = *(v0 + 632);
  v44 = *(v0 + 624);
  v45 = *(v0 + 616);
  v46 = *(v0 + 608);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_135E58()
{
  v40 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 648);

  v3 = *(v0 + 728);
  v4 = *(v0 + 672);
  v5 = *(v0 + 656);
  (*(v0 + 664))(*(v0 + 608), *(v0 + 640), *(v0 + 592));
  swift_errorRetain();
  v6 = sub_1B4624();
  v7 = sub_1B4D94();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 680);
    v38 = *(v0 + 640);
    v36 = v7;
    v9 = *(v0 + 608);
    v10 = *(v0 + 600);
    v11 = *(v0 + 592);
    v12 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v12 = 136446466;
    sub_85D3C();
    v37 = v11;
    v13 = sub_1B5594();
    v15 = v14;
    v8(v9, v11);
    v16 = sub_60FF4(v13, v15, &v39);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v18 = *(v0 + 448);
    v17 = *(v0 + 456);
    v19 = *(v0 + 464);
    v20 = sub_1B5794();
    v22 = sub_60FF4(v20, v21, &v39);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_0, v6, v36, "error fetching personalization metadata for batch %{public}s %s", v12, 0x16u);
    swift_arrayDestroy();

    v8(v38, v37);
  }

  else
  {
    v23 = *(v0 + 680);
    v24 = *(v0 + 640);
    v25 = *(v0 + 608);
    v26 = *(v0 + 600);
    v27 = *(v0 + 592);

    v23(v25, v27);
    v23(v24, v27);
  }

  v28 = *(v0 + 496);

  *v28 = 0;
  sub_136AC4(v0 + 16);
  v29 = *(v0 + 640);
  v30 = *(v0 + 632);
  v31 = *(v0 + 624);
  v32 = *(v0 + 616);
  v33 = *(v0 + 608);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_136138()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_41C08(*(v0 + 16));
  sub_41C08(v2);
  sub_136B2C(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_2BF8((v0 + 72));
  sub_2BF8((v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t sub_1361D0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_1339AC(a1);
}

uint64_t sub_1362C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 64);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_7A038;

  return sub_134554(a1, a2, v5, v6, v7, v8, v9, v10);
}

void *sub_1363C4(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = a1;
  v8 = 0;
  v9 = a1;
  while (1)
  {
    v10 = v9 <= a2;
    if (a3 > 0)
    {
      v10 = v9 >= a2;
    }

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v9, a3);
    v9 += a3;
    if (v11)
    {
      v9 = (v9 >> 63) ^ 0x8000000000000000;
    }

    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  sub_37A18(0, v8, 0);
  v32 = v6;
  if (v8)
  {
    result = a5;
    v30 = a5 + 4;
    v31 = a5[2];
    while (1)
    {
      v14 = v7 <= v6;
      if (a3 > 0)
      {
        v14 = v7 >= v6;
      }

      if (v14)
      {
        break;
      }

      if (__OFADD__(v7, a3))
      {
        v15 = ((v7 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v15 = v7 + a3;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_50;
      }

      if (v31 >= v7 + a4)
      {
        v16 = v7 + a4;
      }

      else
      {
        v16 = v31;
      }

      if (v16 < v7)
      {
        goto LABEL_51;
      }

      if (v7 < 0)
      {
        goto LABEL_52;
      }

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      v19 = result;

      if (v18 >= v17 >> 1)
      {
        sub_37A18((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v20 = &_swiftEmptyArrayStorage[4 * v18];
      v20[4] = v19;
      v20[5] = v30;
      v20[6] = v7;
      v20[7] = (2 * v16) | 1;
      v7 = v15;
      --v8;
      result = v19;
      v6 = v32;
      if (!v8)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
    v15 = v7;
    result = a5;
LABEL_29:
    v21 = v15 <= v6;
    if (a3 > 0)
    {
      v21 = v15 >= v6;
    }

    if (v21)
    {
      return _swiftEmptyArrayStorage;
    }

    v22 = result + 4;
    while (1)
    {
      v23 = __OFADD__(v15, a3) ? ((v15 + a3) >> 63) ^ 0x8000000000000000 : v15 + a3;
      if (__OFADD__(v15, a4))
      {
        break;
      }

      if (result[2] >= v15 + a4)
      {
        v24 = v15 + a4;
      }

      else
      {
        v24 = result[2];
      }

      if (v24 < v15)
      {
        goto LABEL_54;
      }

      if (v15 < 0)
      {
        goto LABEL_55;
      }

      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      v27 = result;

      if (v26 >= v25 >> 1)
      {
        sub_37A18((v25 > 1), v26 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v26 + 1;
      v28 = &_swiftEmptyArrayStorage[4 * v26];
      v28[4] = v27;
      v28[5] = v22;
      v28[6] = v15;
      v28[7] = (2 * v24) | 1;
      v29 = v23 <= v32;
      if (a3 > 0)
      {
        v29 = v23 >= v32;
      }

      v15 = v23;
      result = v27;
      if (v29)
      {
        return _swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_136650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizationMetadataRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1366B4()
{
  v1 = (type metadata accessor for PersonalizationMetadataRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  v9 = sub_1B40F4();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *(v8 + v1[7]);

  v11 = *(v0 + v4);
  swift_unknownObjectRelease();
  v12 = *(v0 + v5);

  v13 = (v0 + v6);
  if (*(v0 + v6))
  {
    v14 = v13[1];
  }

  if (v13[2])
  {
    v15 = v13[3];
  }

  v16 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  sub_2BF8((v0 + v16));

  return _swift_deallocObject(v0, v17 + 8, v2 | 7);
}

uint64_t sub_136814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizationMetadataRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_136878(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for PersonalizationMetadataRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v1 + 24);
  v22 = *(v1 + 16);
  v9 = (v1 + v6);
  v19 = v9[1];
  v20 = *v9;
  v10 = v9[2];
  v11 = v9[3];
  v12 = *(v1 + v7);
  v18 = *(v1 + v8);
  v13 = *(v1 + v8 + 16);
  v14 = *(v1 + v8 + 24);
  v15 = *(v1 + ((((v8 + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_226C;

  return sub_134FB0(a1, v22, v21, v1 + v5, v20, v19, v10, v11);
}

uint64_t sub_136A14(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7A038;

  return sub_F8664(a1, a2, v6);
}

uint64_t sub_136B18(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }

  return result;
}

uint64_t sub_136B2C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_136B48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_136B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t Series.Rationale.targetBook.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_42BA4(v7, &v6);
}

__n128 Series.Rationale.init(targetBook:seedBooksByMethodology:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  *(a3 + 64) = a2;
  return result;
}

unint64_t sub_136C44()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0x6F42746567726174;
  }

  *v0;
  return result;
}

uint64_t sub_136C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F42746567726174 && a2 == 0xEA00000000006B6FLL;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000001D80A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_136D74(uint64_t a1)
{
  v2 = sub_137038();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_136DB0(uint64_t a1)
{
  v2 = sub_137038();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Series.Rationale.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22DA88, &qword_1CD270);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = v1[1];
  v21 = *v1;
  v22 = v9;
  v10 = v1[3];
  v23 = v1[2];
  v24 = v10;
  v25 = *(v1 + 8);
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_42BA4(&v21, &v17);
  sub_137038();
  sub_1B5884();
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v16 = 0;
  sub_11B7AC();
  sub_1B5544();
  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v20;
  sub_43FF4(v15);
  if (!v2)
  {
    v14 = v25;
    v13[7] = 1;
    sub_2B0C(&qword_22DA98, &qword_1CD278);
    sub_13708C();
    sub_1B5544();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_137038()
{
  result = qword_22DA90;
  if (!qword_22DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DA90);
  }

  return result;
}

unint64_t sub_13708C()
{
  result = qword_22DAA0;
  if (!qword_22DAA0)
  {
    sub_1CC1C(&qword_22DA98, &qword_1CD278);
    sub_11BC74();
    sub_90C68(&qword_22AA50, sub_90C14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DAA0);
  }

  return result;
}

uint64_t Series.Rationale.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_2B0C(&qword_22DAA8, &qword_1CD288);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_137038();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v10 = v5;
  v11 = v18;
  v33 = 0;
  sub_11BE78();
  sub_1B5404();
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  sub_2B0C(&qword_22DA98, &qword_1CD278);
  v32 = 1;
  sub_1373D0();
  sub_1B5404();
  (*(v10 + 8))(v8, v4);
  v12 = v23;
  v13 = v28;
  v14 = v29;
  v19[0] = v28;
  v19[1] = v29;
  v15 = v31;
  v19[2] = v30;
  v19[3] = v31;
  v20 = v23;
  *(v11 + 32) = v30;
  *(v11 + 48) = v15;
  *(v11 + 64) = v12;
  *v11 = v13;
  *(v11 + 16) = v14;
  sub_13748C(v19, v21);
  sub_2BF8(a1);
  v21[0] = v28;
  v21[1] = v29;
  v21[2] = v30;
  v21[3] = v31;
  v22 = v12;
  return sub_1374C4(v21);
}

unint64_t sub_1373D0()
{
  result = qword_22DAB0;
  if (!qword_22DAB0)
  {
    sub_1CC1C(&qword_22DA98, &qword_1CD278);
    sub_11BFF8();
    sub_90C68(&qword_22AA68, sub_90CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DAB0);
  }

  return result;
}

uint64_t Series.rationale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_137570(v8, v7);
}

uint64_t sub_137570(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22DAB8, &qword_1CD290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1375E0()
{
  v1 = 0x707954616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6C616E6F69746172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965726F7473;
  }
}

uint64_t sub_137644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1391AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_13766C(uint64_t a1)
{
  v2 = sub_137940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1376A8(uint64_t a1)
{
  v2 = sub_137940();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Series.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22DAC0, &qword_1CD298);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  v9 = *v1;
  v26 = *(v1 + 8);
  v10 = *(v1 + 4);
  v23 = *(v1 + 3);
  v24 = v10;
  v25 = v1[10];
  v11 = *(v1 + 2);
  v21 = *(v1 + 1);
  v22 = v11;
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  sub_137940();
  sub_1B5884();
  LOBYTE(v16) = 0;
  sub_1B5574();
  if (!v2)
  {
    LOBYTE(v16) = v26;
    LOBYTE(v14[0]) = 1;
    sub_8E75C();
    sub_1B5544();
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    v27 = 2;
    sub_137570(&v21, v14);
    sub_137994();
    sub_1B54B4();
    v14[2] = v18;
    v14[3] = v19;
    v15 = v20;
    v14[1] = v17;
    v14[0] = v16;
    sub_1379E8(v14);
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_137940()
{
  result = qword_22DAC8;
  if (!qword_22DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DAC8);
  }

  return result;
}

unint64_t sub_137994()
{
  result = qword_22DAD0;
  if (!qword_22DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DAD0);
  }

  return result;
}

uint64_t sub_1379E8(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22DAB8, &qword_1CD290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Series.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22DAD8, &qword_1CD2A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_137940();
  sub_1B5864();
  if (!v2)
  {
    LOBYTE(v16[0]) = 0;
    v11 = sub_1B5434();
    v18 = 1;
    sub_8E8C4();
    sub_1B5404();
    v12 = v16[0];
    v18 = 2;
    sub_137C90();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    *&v19[7] = v16[0];
    *&v19[23] = v16[1];
    *&v19[39] = v16[2];
    *&v19[55] = v16[3];
    *&v19[71] = v17;
    v14 = *v19;
    *(a2 + 25) = *&v19[16];
    v15 = *&v19[48];
    *(a2 + 41) = *&v19[32];
    *(a2 + 57) = v15;
    *(a2 + 72) = *&v19[63];
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 9) = v14;
  }

  return sub_2BF8(a1);
}

unint64_t sub_137C90()
{
  result = qword_22DAE0;
  if (!qword_22DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DAE0);
  }

  return result;
}

uint64_t ScoredSeries.series.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_137D70(v9, v8);
}

uint64_t sub_137DB0()
{
  if (*v0)
  {
    result = 0x65726F6373;
  }

  else
  {
    result = 0x736569726573;
  }

  *v0;
  return result;
}

uint64_t sub_137DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736569726573 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_137EB8(uint64_t a1)
{
  v2 = sub_138160();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_137EF4(uint64_t a1)
{
  v2 = sub_138160();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScoredSeries.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22DAE8, &qword_1CD2A8);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = v1[3];
  v26 = v1[2];
  v27 = v8;
  v28 = v1[4];
  v29 = *(v1 + 10);
  v9 = v1[1];
  v24 = *v1;
  v25 = v9;
  v10 = *(v1 + 11);
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_137D70(&v24, &v18);
  sub_138160();
  sub_1B5884();
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v18 = v24;
  v19 = v25;
  v17 = 0;
  sub_1381B4();
  sub_1B5544();
  v15[2] = v20;
  v15[3] = v21;
  v15[4] = v22;
  v16 = v23;
  v15[0] = v18;
  v15[1] = v19;
  sub_138208(v15);
  if (!v2)
  {
    v14 = 1;
    sub_1B5514();
  }

  return (*(v13 + 8))(v7, v4);
}

unint64_t sub_138160()
{
  result = qword_22DAF0;
  if (!qword_22DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DAF0);
  }

  return result;
}

unint64_t sub_1381B4()
{
  result = qword_22DAF8;
  if (!qword_22DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DAF8);
  }

  return result;
}

uint64_t ScoredSeries.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v4 = sub_2B0C(&qword_22DB00, &qword_1CD2B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_138160();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v10 = v5;
  v11 = v21;
  v28 = 0;
  sub_1384E4();
  sub_1B5404();
  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v35 = v29;
  v36 = v30;
  v27 = 1;
  sub_1B53D4();
  v13 = v12;
  (*(v10 + 8))(v8, v4);
  *&v23 = v40;
  v15 = v35;
  v14 = v36;
  v22[0] = v35;
  v22[1] = v36;
  v16 = v38;
  v22[2] = v37;
  v22[3] = v38;
  v17 = v39;
  v22[4] = v39;
  *(&v23 + 1) = v13;
  v11[2] = v37;
  v11[3] = v16;
  *v11 = v15;
  v11[1] = v14;
  v18 = v23;
  v11[4] = v17;
  v11[5] = v18;
  sub_138538(v22, v24);
  sub_2BF8(a1);
  v24[2] = v37;
  v24[3] = v38;
  v24[4] = v39;
  v25 = v40;
  v24[0] = v35;
  v24[1] = v36;
  v26 = v13;
  return sub_C6088(v24);
}

unint64_t sub_1384E4()
{
  result = qword_22DB08;
  if (!qword_22DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB08);
  }

  return result;
}

uint64_t sub_1385BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65726564724F7369 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_13864C(uint64_t a1)
{
  v2 = sub_1387FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_138688(uint64_t a1)
{
  v2 = sub_1387FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Series.Metadata.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22DB10, &qword_1CD2B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1387FC();
  sub_1B5884();
  sub_1B5504();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1387FC()
{
  result = qword_22DB18;
  if (!qword_22DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB18);
  }

  return result;
}

Swift::Int Series.Metadata.hashValue.getter()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B5814(v1);
  return sub_1B5844();
}

uint64_t Series.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22DB20, &qword_1CD2C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1387FC();
  sub_1B5864();
  if (!v2)
  {
    v11 = sub_1B53C4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_138A34()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B5814(v1);
  return sub_1B5844();
}

unint64_t sub_138A7C()
{
  result = qword_22DB28;
  if (!qword_22DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB28);
  }

  return result;
}

uint64_t sub_138AD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_138AE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_138B44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_138BBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_138C04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_138C64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_138CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

unint64_t sub_138D90()
{
  result = qword_22DB30;
  if (!qword_22DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB30);
  }

  return result;
}

unint64_t sub_138DE8()
{
  result = qword_22DB38;
  if (!qword_22DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB38);
  }

  return result;
}

unint64_t sub_138E40()
{
  result = qword_22DB40;
  if (!qword_22DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB40);
  }

  return result;
}

unint64_t sub_138E98()
{
  result = qword_22DB48;
  if (!qword_22DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB48);
  }

  return result;
}

unint64_t sub_138EF0()
{
  result = qword_22DB50;
  if (!qword_22DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB50);
  }

  return result;
}

unint64_t sub_138F48()
{
  result = qword_22DB58;
  if (!qword_22DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB58);
  }

  return result;
}

unint64_t sub_138FA0()
{
  result = qword_22DB60;
  if (!qword_22DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB60);
  }

  return result;
}

unint64_t sub_138FF8()
{
  result = qword_22DB68;
  if (!qword_22DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB68);
  }

  return result;
}

unint64_t sub_139050()
{
  result = qword_22DB70;
  if (!qword_22DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB70);
  }

  return result;
}

unint64_t sub_1390A8()
{
  result = qword_22DB78;
  if (!qword_22DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB78);
  }

  return result;
}

unint64_t sub_139100()
{
  result = qword_22DB80;
  if (!qword_22DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB80);
  }

  return result;
}

unint64_t sub_139158()
{
  result = qword_22DB88;
  if (!qword_22DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB88);
  }

  return result;
}

uint64_t sub_1391AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E6F69746172 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

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

uint64_t sub_139300()
{
  if (*v0)
  {
    return 0x746E756F63;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_13932C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_139400(uint64_t a1)
{
  v2 = sub_139604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13943C(uint64_t a1)
{
  v2 = sub_139604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionMembershipInfo.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22DB90, &qword_1CDB50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_139604();
  sub_1B5884();
  v14 = 0;
  sub_1B5534();
  if (!v2)
  {
    v13 = 1;
    sub_1B5534();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_139604()
{
  result = qword_22DB98;
  if (!qword_22DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DB98);
  }

  return result;
}

void CollectionMembershipInfo.hash(into:)()
{
  v1 = v0[1];
  sub_1B5804(*v0);
  sub_1B5804(v1);
}

Swift::Int CollectionMembershipInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_1B5804(v1);
  sub_1B5804(v2);
  return sub_1B5844();
}

uint64_t CollectionMembershipInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22DBA0, &qword_1CDB58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_139604();
  sub_1B5864();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1B53F4();
    v15 = 1;
    v12 = sub_1B53F4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_139890()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_1B5804(v1);
  sub_1B5804(v2);
  return sub_1B5844();
}

uint64_t StoreBook.Origin.hash(into:)()
{
  v1 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = sub_1B40C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StoreBook.Origin(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13B7D4(v0, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_E50D4(v16, v7);
    sub_1B5804(1uLL);
    sub_43050(v7, v5, &qword_229528, &qword_1BC5A0);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_1B5814(0);
    }

    else
    {
      (*(v9 + 32))(v12, v5, v8);
      sub_1B5814(1u);
      sub_13B9B8(&qword_229268, &type metadata accessor for Date);
      sub_1B4754();
      (*(v9 + 8))(v12, v8);
    }

    return sub_42F48(v7, &qword_229528, &qword_1BC5A0);
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    sub_1B5804(0);
    sub_13B9B8(&qword_229268, &type metadata accessor for Date);
    sub_1B4754();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t StoreBook.highWaterMarkReadingProgress.getter()
{
  v1 = (v0 + *(type metadata accessor for StoreBook(0) + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

__n128 StoreBook.finishedInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StoreBook(0) + 28));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

__n128 StoreBook.wantToReadInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StoreBook(0) + 40));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

__n128 StoreBook.samplesInfo.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StoreBook(0) + 44));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

int *StoreBook.init(storeID:purchaseDate:highWaterMarkReadingProgress:finishedInfo:wantToReadInfo:lastEngagedIntervalSinceReferenceDate:finishedIntervalSinceReferenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v15 = *a5;
  v16 = a5[1];
  v17 = *(a5 + 16);
  v18 = *a6;
  v19 = a6[1];
  v20 = *(a6 + 16);
  v21 = sub_1B40C4();
  (*(*(v21 - 8) + 32))(a7, a2, v21);
  v22 = type metadata accessor for StoreBook.Origin(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(a7, 0, 1, v22);
  result = type metadata accessor for StoreBook(0);
  *(a7 + result[5]) = a1;
  v24 = a7 + result[6];
  *v24 = a3;
  *(v24 + 8) = a4 & 1;
  v25 = a7 + result[7];
  *v25 = v15;
  *(v25 + 8) = v16;
  *(v25 + 16) = v17;
  v26 = a7 + result[10];
  *v26 = v18;
  *(v26 + 8) = v19;
  *(v26 + 16) = v20;
  v27 = a7 + result[11];
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  *(a7 + result[8]) = a8;
  *(a7 + result[9]) = a9;
  return result;
}

int *StoreBook.init(storeID:creationDate:highWaterMarkReadingProgress:finishedInfo:wantToReadInfo:lastEngagedIntervalSinceReferenceDate:finishedIntervalSinceReferenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v14 = *a5;
  v15 = a5[1];
  v16 = *(a5 + 16);
  v17 = *a6;
  v18 = a6[1];
  v19 = *(a6 + 16);
  sub_E50D4(a2, a7);
  v20 = type metadata accessor for StoreBook.Origin(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v20 - 8) + 56))(a7, 0, 1, v20);
  result = type metadata accessor for StoreBook(0);
  *(a7 + result[5]) = a1;
  v22 = a7 + result[6];
  *v22 = a3;
  *(v22 + 8) = a4 & 1;
  v23 = a7 + result[7];
  *v23 = v14;
  *(v23 + 8) = v15;
  *(v23 + 16) = v16;
  v24 = a7 + result[10];
  *v24 = v17;
  *(v24 + 8) = v18;
  *(v24 + 16) = v19;
  v25 = a7 + result[11];
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  *(a7 + result[8]) = a8;
  *(a7 + result[9]) = a9;
  return result;
}

int *StoreBook.init(storeID:finishedInfo:wantToReadInfo:samplesInfo:lastEngagedIntervalSinceReferenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 16);
  v15 = *a4;
  v16 = a4[1];
  v23 = *(a4 + 16);
  v17 = type metadata accessor for StoreBook.Origin(0);
  (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  result = type metadata accessor for StoreBook(0);
  *(a5 + result[5]) = a1;
  v19 = a5 + result[6];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a5 + result[7];
  *v20 = v9;
  *(v20 + 8) = v10;
  *(v20 + 16) = v11;
  v21 = a5 + result[10];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  v22 = a5 + result[11];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v23;
  *(a5 + result[8]) = a6;
  *(a5 + result[9]) = 0xBFF0000000000000;
  return result;
}

int *StoreBook.init(storeID:finishedInfo:wantToReadInfo:samplesInfo:finishedIntervalSinceReferenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 16);
  v15 = *a4;
  v16 = a4[1];
  v23 = *(a4 + 16);
  v17 = type metadata accessor for StoreBook.Origin(0);
  (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  result = type metadata accessor for StoreBook(0);
  *(a5 + result[5]) = a1;
  v19 = a5 + result[6];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a5 + result[7];
  *v20 = v9;
  *(v20 + 8) = v10;
  *(v20 + 16) = v11;
  v21 = a5 + result[10];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  v22 = a5 + result[11];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v23;
  *(a5 + result[8]) = 0xBFF0000000000000;
  *(a5 + result[9]) = a6;
  return result;
}

void StoreBook.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for StoreBook.Origin(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B0C(&qword_22BB20, &qword_1C59E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  sub_43050(v1, &v26 - v9, &qword_22BB20, &qword_1C59E0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_13B858(v10, v6);
    sub_1B5814(1u);
    StoreBook.Origin.hash(into:)();
    sub_13B8BC(v6);
  }

  v11 = type metadata accessor for StoreBook(0);
  sub_1B5834(*(v1 + v11[5]));
  v12 = v1 + v11[6];
  if (*(v12 + 8) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v13 = *v12;
    sub_1B5814(1u);
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    sub_1B5834(v14);
  }

  v15 = v1 + v11[7];
  if (*(v15 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v17 = *v15;
    v16 = *(v15 + 8);
    sub_1B5814(1u);
    sub_1B5804(v17);
    sub_1B5804(v16);
  }

  v18 = *(v1 + v11[8]);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  sub_1B5834(*&v18);
  v19 = *(v1 + v11[9]);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  sub_1B5834(*&v19);
  v20 = v1 + v11[10];
  if (*(v20 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v22 = *v20;
    v21 = *(v20 + 8);
    sub_1B5814(1u);
    sub_1B5804(v22);
    sub_1B5804(v21);
  }

  v23 = v1 + v11[11];
  if (*(v23 + 16) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v25 = *v23;
    v24 = *(v23 + 8);
    sub_1B5814(1u);
    sub_1B5804(v25);
    sub_1B5804(v24);
  }
}

Swift::Int sub_13A614(void (*a1)(_BYTE *))
{
  sub_1B57F4();
  a1(v3);
  return sub_1B5844();
}

Swift::Int sub_13A674(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1B57F4();
  a3(v5);
  return sub_1B5844();
}

Swift::Int sub_13A6D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1B57F4();
  a4(v6);
  return sub_1B5844();
}

BOOL sub_13A7A0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_13A7D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_13A7FC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_13A8E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t StoreBookForDeduplication.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StoreBookForDeduplication.author.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void __swiftcall StoreBookForDeduplication.init(storeID:title:author:)(BooksPersonalization::StoreBookForDeduplication *__return_ptr retstr, Swift::UInt64 storeID, Swift::String title, Swift::String author)
{
  retstr->storeID = storeID;
  retstr->title = title;
  retstr->author = author;
}

uint64_t static StoreBookForDeduplication.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1B5604() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1B5604();
}

uint64_t StoreBookForDeduplication.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  sub_1B5834(*v0);
  sub_1B4884();

  return sub_1B4884();
}

Swift::Int StoreBookForDeduplication.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B57F4();
  sub_1B5834(v1);
  sub_1B4884();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_13AB24()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B57F4();
  sub_1B5834(v1);
  sub_1B4884();
  sub_1B4884();
  return sub_1B5844();
}

void __swiftcall NextInSeriesProcessorMetadata.init(storeID:seriesID:seriesSortKey:isOwned:)(BooksPersonalization::NextInSeriesProcessorMetadata *__return_ptr retstr, Swift::UInt64 storeID, Swift::UInt64_optional seriesID, Swift::Int64_optional seriesSortKey, Swift::Bool isOwned)
{
  retstr->storeID = storeID;
  retstr->seriesID.value = seriesID.value;
  retstr->seriesID.is_nil = seriesID.is_nil;
  *(&retstr->seriesSortKey.value + 7) = seriesSortKey.value;
  LOBYTE(retstr[1].storeID) = seriesSortKey.is_nil;
  BYTE1(retstr[1].storeID) = isOwned;
}

void NextInSeriesProcessorMetadata.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  sub_1B5834(*v0);
  if (v2 != 1)
  {
    sub_1B5814(1u);
    sub_1B5834(v1);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B5814(0);
    goto LABEL_6;
  }

  sub_1B5814(0);
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5834(v3);
LABEL_6:
  sub_1B5814(v5);
}

Swift::Int NextInSeriesProcessorMetadata.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_1B57F4();
  sub_1B5834(v2);
  if (v3 != 1)
  {
    sub_1B5814(1u);
    sub_1B5834(v1);
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B5814(0);
    goto LABEL_6;
  }

  sub_1B5814(0);
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5834(v4);
LABEL_6:
  sub_1B5814(v6);
  return sub_1B5844();
}

Swift::Int sub_13AD40()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_1B57F4();
  sub_1B5834(v2);
  if (v3 != 1)
  {
    sub_1B5814(1u);
    sub_1B5834(v1);
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B5814(0);
    goto LABEL_6;
  }

  sub_1B5814(0);
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5834(v4);
LABEL_6:
  sub_1B5814(v6);
  return sub_1B5844();
}

uint64_t _s20BooksPersonalization29NextInSeriesProcessorMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v4 = *(a2 + 32);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return *(a1 + 33) ^ *(a2 + 33) ^ 1u;
}

uint64_t _s20BooksPersonalization9StoreBookV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreBook.Origin(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B0C(&qword_22BB20, &qword_1C59E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_2B0C(&qword_22DD88, &qword_1CE230);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v41 - v16;
  v18 = *(v15 + 56);
  sub_43050(a1, &v41 - v16, &qword_22BB20, &qword_1C59E0);
  sub_43050(a2, &v17[v18], &qword_22BB20, &qword_1C59E0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_42F48(v17, &qword_22BB20, &qword_1C59E0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_43050(v17, v12, &qword_22BB20, &qword_1C59E0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_13B8BC(v12);
LABEL_6:
    sub_42F48(v17, &qword_22DD88, &qword_1CE230);
    return 0;
  }

  sub_13B858(&v17[v18], v8);
  v20 = _s20BooksPersonalization9StoreBookV6OriginO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_13B8BC(v8);
  sub_13B8BC(v12);
  sub_42F48(v17, &qword_22BB20, &qword_1C59E0);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v21 = type metadata accessor for StoreBook(0);
  if (*(a1 + v21[5]) != *(a2 + v21[5]))
  {
    return 0;
  }

  v22 = v21[6];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 8);
  if (v24)
  {
    if (!v26)
    {
      return v26;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = v21[7];
  v28 = (a1 + v27);
  v29 = (a2 + v27);
  v30 = *(a2 + v27 + 16);
  if (*(a1 + v27 + 16))
  {
    if (!*(a2 + v27 + 16))
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if ((v30 & 1) != 0 || *v28 != *v29 || v28[1] != v29[1])
    {
      return v26;
    }
  }

  if (*(a1 + v21[8]) != *(a2 + v21[8]) || *(a1 + v21[9]) != *(a2 + v21[9]))
  {
    return 0;
  }

  v31 = v21[10];
  v32 = (a1 + v31);
  v33 = (a2 + v31);
  v34 = *(a2 + v31 + 16);
  if (*(a1 + v31 + 16))
  {
    if (!*(a2 + v31 + 16))
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if ((v34 & 1) != 0 || *v32 != *v33 || v32[1] != v33[1])
    {
      return v26;
    }
  }

  v35 = v21[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 16);
  v38 = a2 + v35;
  v39 = *(v38 + 16);
  if (v37)
  {
    if ((*(v38 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(v38 + 16) & 1) != 0 || *v36 != *v38 || v36[1] != *(v38 + 8))
  {
    return 0;
  }

  return 1;
}

uint64_t _s20BooksPersonalization9StoreBookV6OriginO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v40 = &v39 - v5;
  v6 = sub_2B0C(&qword_22DD90, &qword_1CE238);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v41 = &v39 - v8;
  v9 = sub_1B40C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v39 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = type metadata accessor for StoreBook.Origin(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v39 - v21;
  v23 = sub_2B0C(&qword_22DD98, &unk_1CE240);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v39 - v26;
  v28 = *(v25 + 56);
  sub_13B7D4(a1, &v39 - v26);
  sub_13B7D4(v42, &v27[v28]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13B7D4(v27, v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = *(v6 + 48);
      v30 = v41;
      sub_E50D4(v20, v41);
      sub_E50D4(&v27[v28], v30 + v29);
      v31 = *(v10 + 48);
      if (v31(v30, 1, v9) == 1)
      {
        if (v31(v30 + v29, 1, v9) == 1)
        {
          sub_42F48(v30, &qword_229528, &qword_1BC5A0);
LABEL_18:
          sub_13B8BC(v27);
          v32 = 1;
          return v32 & 1;
        }
      }

      else
      {
        v34 = v40;
        sub_43050(v30, v40, &qword_229528, &qword_1BC5A0);
        if (v31(v30 + v29, 1, v9) != 1)
        {
          v36 = v39;
          (*(v10 + 32))(v39, v30 + v29, v9);
          sub_13B9B8(&qword_229270, &type metadata accessor for Date);
          v37 = sub_1B4784();
          v38 = *(v10 + 8);
          v38(v36, v9);
          v38(v34, v9);
          sub_42F48(v30, &qword_229528, &qword_1BC5A0);
          if (v37)
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }

        (*(v10 + 8))(v34, v9);
      }

      sub_42F48(v30, &qword_22DD90, &qword_1CE238);
LABEL_14:
      sub_13B8BC(v27);
      goto LABEL_15;
    }

    sub_42F48(v20, &qword_229528, &qword_1BC5A0);
LABEL_9:
    sub_42F48(v27, &qword_22DD98, &unk_1CE240);
LABEL_15:
    v32 = 0;
    return v32 & 1;
  }

  sub_13B7D4(v27, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 8))(v22, v9);
    goto LABEL_9;
  }

  (*(v10 + 32))(v15, &v27[v28], v9);
  v32 = sub_1B4074();
  v33 = *(v10 + 8);
  v33(v15, v9);
  v33(v22, v9);
  sub_13B8BC(v27);
  return v32 & 1;
}

uint64_t sub_13B7D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreBook.Origin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13B858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreBook.Origin(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13B8BC(uint64_t a1)
{
  v2 = type metadata accessor for StoreBook.Origin(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_13B91C()
{
  result = qword_22DBA8;
  if (!qword_22DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBA8);
  }

  return result;
}

uint64_t sub_13B9B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_13BA4C()
{
  result = qword_22DBC0;
  if (!qword_22DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBC0);
  }

  return result;
}

unint64_t sub_13BAA4()
{
  result = qword_22DBC8;
  if (!qword_22DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBC8);
  }

  return result;
}

unint64_t sub_13BAFC()
{
  result = qword_22DBD0;
  if (!qword_22DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBD0);
  }

  return result;
}

unint64_t sub_13BB54()
{
  result = qword_22DBD8;
  if (!qword_22DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBD8);
  }

  return result;
}

unint64_t sub_13BBAC()
{
  result = qword_22DBE0;
  if (!qword_22DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBE0);
  }

  return result;
}

unint64_t sub_13BC04()
{
  result = qword_22DBE8;
  if (!qword_22DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DBE8);
  }

  return result;
}

uint64_t sub_13BC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22BB20, &qword_1C59E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_13BD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22BB20, &qword_1C59E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_13BD84()
{
  sub_13BFE0(319, &qword_22DC58, type metadata accessor for StoreBook.Origin);
  if (v0 <= 0x3F)
  {
    sub_13BE74(319, &qword_22DC60);
    if (v1 <= 0x3F)
    {
      sub_13BE74(319, &unk_22DC68);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_13BE74(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B4EA4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_13BEC0()
{
  sub_13BF34();
  if (v0 <= 0x3F)
  {
    sub_13BF7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_13BF34()
{
  if (!qword_22DD30)
  {
    v0 = sub_1B40C4();
    if (!v1)
    {
      atomic_store(v0, &qword_22DD30);
    }
  }
}

void sub_13BF7C()
{
  if (!qword_22DD38)
  {
    sub_13BFE0(0, &qword_22DD40, &type metadata accessor for Date);
    if (!v1)
    {
      atomic_store(v0, &qword_22DD38);
    }
  }
}

void sub_13BFE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B4EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SaleOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SaleOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

__n128 sub_13C09C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_13C0B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_13C104(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t dispatch thunk of StoreBooksServiceType.fetchStoreBooks(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of StoreBooksServiceType.earliestStorePurchaseTimestamp()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of StoreBooksServiceType.fetchStoreBooksForDeduplication()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7E684;

  return v9(a1, a2);
}

uint64_t dispatch thunk of StoreBooksServiceType.fetchHiddenPurchaseIDs()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7E684;

  return v9(a1, a2);
}

uint64_t dispatch thunk of StoreBooksServiceType.fetchNextInSeriesProcessorMetadata(storeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_7E684;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of StoreBooksServiceType.fetchNextInSeriesProcessorMetadata(seriesIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_7E684;

  return v11(a1, a2, a3);
}

unint64_t sub_13C844()
{
  result = qword_22DD70;
  if (!qword_22DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DD70);
  }

  return result;
}

unint64_t sub_13C89C()
{
  result = qword_22DD78;
  if (!qword_22DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DD78);
  }

  return result;
}

unint64_t sub_13C8F4()
{
  result = qword_22DD80;
  if (!qword_22DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DD80);
  }

  return result;
}

BooksPersonalization::Methodology_optional __swiftcall Methodology.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2137B0;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

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

  *v3 = v7;
  return result;
}

unint64_t sub_13C9C0()
{
  result = qword_22DDA0;
  if (!qword_22DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DDA0);
  }

  return result;
}

uint64_t sub_13CA14@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_2137B0;
  v8._object = v3;
  v5 = sub_1B52E4(v4, v8);

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

unint64_t sub_13CB28()
{
  result = qword_22DDA8;
  if (!qword_22DDA8)
  {
    sub_1CC1C(&qword_22DDB0, &qword_1CE340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DDA8);
  }

  return result;
}

uint64_t sub_13CB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_13CC7C();

  return RawRepresentable<>.codingKey.getter(a1, a2, v4);
}

uint64_t sub_13CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_13CC7C();

  return RawRepresentable<>.init<A>(codingKey:)(a1, a4, a2, a5, v10, a3);
}

unint64_t sub_13CC7C()
{
  result = qword_22DDB8;
  if (!qword_22DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DDB8);
  }

  return result;
}

uint64_t InternalGenreRecommendationResponse.configuration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x460uLL);
  memcpy(a1, (v1 + 8), 0x460uLL);
  return sub_84BC0(__dst, v4);
}

uint64_t sub_13CD2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1128))
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

uint64_t sub_13CD74(uint64_t result, int a2, int a3)
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
    *(result + 1096) = 0u;
    *(result + 1112) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
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
      *(result + 1128) = 1;
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

    *(result + 1128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of InternalGenreRecommendationServiceType.fetchRecommendedGenres(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BooksYouMightLikeServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_13D160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_13D1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_13D208@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (__chkstk_darwin)();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t ClientConverter.init(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B3B84();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  __chkstk_darwin(v4);
  v64 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1B3C34();
  v8 = *(v7 - 8);
  v69 = v7;
  v70 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1B3C14();
  v13 = *(v12 - 8);
  v14 = v13;
  v15 = *(v13 + 64);
  v16 = __chkstk_darwin(v12);
  v67 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  v20 = *a1;
  v21 = a1[1];
  v23 = a1[2];
  v22 = a1[3];
  *a2 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23;
  *(a2 + 24) = v22;
  *&v80 = v20;
  *(&v80 + 1) = v21;
  *&v81 = v23;
  *(&v81 + 1) = v22;
  sub_41BF8(v20);
  sub_41BF8(v23);
  CommonConverter.init(configuration:)(&v80, v84);
  v24 = v86;
  *(a2 + 64) = v85;
  *(a2 + 80) = v24;
  v25 = v88;
  *(a2 + 96) = v87;
  *(a2 + 112) = v25;
  v26 = v84[1];
  *(a2 + 32) = v84[0];
  *(a2 + 48) = v26;
  v68 = sub_1B3C84();
  v80 = v85;
  v81 = v86;
  v82 = v87;
  v83 = v88;
  v63 = sub_2B0C(&qword_22DDC0, &qword_1CE6B0);
  v27 = *(v13 + 72);
  v58 = *(v13 + 80);
  v61 = v27;
  v62 = ((v58 + 32) & ~v58) + 2 * v27;
  v60 = (v58 + 32) & ~v58;
  v28 = swift_allocObject();
  v59 = xmmword_1BFC80;
  *(v28 + 16) = xmmword_1BFC80;
  sub_41CDC(&v80, &v76);
  sub_1B3BE4();
  sub_1B3BF4();
  *&v76 = v28;
  v57 = sub_143274(&qword_22DDC8, &type metadata accessor for JSONEncoder.OutputFormatting);
  v56 = sub_2B0C(&qword_22DDD0, &qword_1CE6B8);
  v55 = sub_13DAD4();
  sub_1B4F74();
  v29 = sub_1B3C64();
  v54 = *(v14 + 16);
  v54(v67, v19, v12);

  sub_1B3C24();
  v30 = swift_allocObject();
  v31 = v81;
  v30[1] = v80;
  v30[2] = v31;
  v32 = v83;
  v30[3] = v82;
  v30[4] = v32;
  *v11 = sub_41EC8;
  v11[1] = v30;
  v52 = enum case for JSONEncoder.DateEncodingStrategy.custom(_:);
  v33 = *(v70 + 104);
  v70 += 104;
  v53 = v33;
  v33(v11);
  sub_1B3C44();

  v34 = *(v14 + 8);
  v51 = v14 + 8;
  v34(v19, v12);
  *(a2 + 128) = v29;
  v35 = *(a2 + 80);
  v76 = *(a2 + 64);
  v77 = v35;
  v36 = *(a2 + 112);
  v78 = *(a2 + 96);
  v79 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = v59;
  sub_41CDC(&v76, &v72);
  sub_1B3BE4();
  sub_1B3C04();
  *&v72 = v37;
  sub_1B4F74();
  v38 = sub_1B3C64();
  v54(v67, v19, v12);

  sub_1B3C24();
  v39 = swift_allocObject();
  v40 = v77;
  v39[1] = v76;
  v39[2] = v40;
  v41 = v79;
  v39[3] = v78;
  v39[4] = v41;
  *v11 = sub_143F54;
  v11[1] = v39;
  v53(v11, v52, v69);
  sub_1B3C44();

  v34(v19, v12);
  *(a2 + 144) = v38;
  sub_1B3BD4();
  v42 = *(a2 + 80);
  v72 = *(a2 + 64);
  v73 = v42;
  v43 = *(a2 + 112);
  v74 = *(a2 + 96);
  v75 = v43;
  sub_41CDC(&v72, &v71);
  v44 = sub_1B3BB4();
  v45 = swift_allocObject();
  v46 = v73;
  v45[1] = v72;
  v45[2] = v46;
  v47 = v75;
  v45[3] = v74;
  v45[4] = v47;
  v49 = v64;
  v48 = v65;
  *v64 = sub_41E48;
  v49[1] = v45;
  (*(v48 + 104))(v49, enum case for JSONDecoder.DateDecodingStrategy.custom(_:), v66);

  sub_1B3B94();

  *(a2 + 136) = v44;
  return result;
}

unint64_t sub_13DAD4()
{
  result = qword_22DDD8;
  if (!qword_22DDD8)
  {
    sub_1CC1C(&qword_22DDD0, &qword_1CE6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DDD8);
  }

  return result;
}

uint64_t static APIClientHelpers.makeServerComponents(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2B0C(&qword_22C200, &unk_1CE6C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  sub_1B3D54();
  v10 = sub_1B3D64();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v9, v10);
  }

  sub_42F48(v9, &qword_22C200, &unk_1CE6C0);
  type metadata accessor for ClientErrorPayload();
  sub_143274(&qword_22C208, type metadata accessor for ClientErrorPayload);
  swift_allocError();
  *v12 = a1;
  v12[1] = a2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t type metadata accessor for ClientErrorPayload()
{
  result = qword_22DEF0;
  if (!qword_22DEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static APIClientHelpers.createRequest(components:method:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_1B3F34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3D34();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_42F48(v11, &qword_22C1F8, &qword_1CFD60);
    type metadata accessor for ClientErrorPayload();
    sub_143274(&qword_22C208, type metadata accessor for ClientErrorPayload);
    swift_allocError();
    v18 = v17;
    v19 = sub_1B3D64();
    (*(*(v19 - 8) + 16))(v18, a1, v19);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v21 = *(v13 + 32);
    v21(v16, v11, v12);
    v21(a4, v16, v12);
    v22 = type metadata accessor for ClientCurrency.Request();
    v23 = &a4[v22[7]];
    v27 = xmmword_1C6AD0;
    *v23 = xmmword_1C6AD0;
    v24 = &a4[v22[5]];
    *v24 = a2;
    *(v24 + 1) = a3;
    *&a4[v22[6]] = _swiftEmptyArrayStorage;
    v26 = *v23;
    v25 = *(v23 + 1);

    result = sub_85D94(v26, v25);
    *v23 = v27;
  }

  return result;
}

uint64_t static APIClientHelpers.validateContentTypeIfPresent(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);

  sub_41AEC(a1, a2, &v6);
}

uint64_t static APIClientHelpers.perform<A>(operation:for:makeRequest:makeCall:makeOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v13;
  *(v8 + 144) = v12;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a3;
  *(v8 + 104) = a4;
  *(v8 + 88) = a1;
  v9 = *(*(type metadata accessor for ClientCurrency.Request() - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_13E170, 0, 0);
}

uint64_t sub_13E170()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  (*(v0 + 104))();
  v3 = *(v0 + 96);
  v4 = *(v0 + 168);
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  v10 = *(v0 + 120);
  v6 = swift_task_alloc();
  v7 = *(v0 + 152);
  *(v5 + 16) = v10;
  *(v5 + 32) = v4;
  *(v0 + 184) = v6;
  *(v6 + 16) = v7;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  v8 = swift_task_alloc();
  *(v0 + 192) = v8;
  *v8 = v0;
  v8[1] = sub_13E434;

  return sub_140A44(v0 + 56, &unk_1CE6E0, v5, sub_143060, v6);
}

uint64_t sub_13E434()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_13E86C;
  }

  else
  {
    v6 = *(v2 + 176);
    v5 = *(v2 + 184);

    v4 = sub_13E558;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_13E558()
{
  v1 = *(v0 + 160);
  v14 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  *(v0 + 208) = v5;
  *(v0 + 216) = v7;
  *(v0 + 224) = v6;
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  v9 = *(v0 + 136);
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;
  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  v10[2] = v2;
  v10[3] = v1;
  v10[4] = v3;
  v10[5] = v14;
  v10[6] = v4;
  v10[7] = v5;
  v10[8] = v7;
  v10[9] = v6;
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_13E6A4;
  v12 = *(v0 + 88);

  return static APIClientHelpers.wrappingErrors<A>(work:mapError:)(v12, &unk_1CE6F8, v8, sub_143158, v10);
}

uint64_t sub_13E6A4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v8 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_13E900;
  }

  else
  {
    v6 = *(v2 + 232);
    v5 = *(v2 + 240);

    v4 = sub_13E7C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_13E7C8()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[21];

  sub_41670(v1, v2);
  sub_14336C(v4, type metadata accessor for ClientCurrency.Request);

  v5 = v0[1];

  return v5();
}

uint64_t sub_13E86C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  sub_14336C(v3, type metadata accessor for ClientCurrency.Request);
  v4 = v0[25];
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_13E900()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[21];

  sub_41670(v4, v3);

  sub_14336C(v6, type metadata accessor for ClientCurrency.Request);
  v7 = v0[32];
  v8 = v0[21];

  v9 = v0[1];

  return v9();
}

uint64_t GeneralClientError.operationId.getter()
{
  v0 = sub_143198();

  return v0;
}

uint64_t GeneralClientError.input.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t GeneralClientError.input.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 40);

  return v8(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t (*GeneralClientError.input.modify(uint64_t a1, uint64_t a2))()
{
  result = AuthorRecommendationSource.id.getter;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t (*GeneralClientError.request.modify(uint64_t a1, uint64_t a2))()
{
  result = AuthorRecommendationSource.id.getter;
  v4 = v2 + *(a2 + 40);
  return result;
}

void GeneralClientError.response.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_143210(v4, v5, v6, v7);
}

__n128 GeneralClientError.response.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 44);
  sub_FA268(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  return result;
}

uint64_t (*GeneralClientError.response.modify(uint64_t a1, uint64_t a2))()
{
  result = AuthorRecommendationSource.id.getter;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t GeneralClientError.underlyingError.getter(uint64_t a1)
{
  v1 = sub_14318C(a1);
  swift_errorRetain();
  return v1;
}

uint64_t GeneralClientError.underlyingError.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*GeneralClientError.underlyingError.modify(uint64_t a1, uint64_t a2))()
{
  result = AuthorRecommendationSource.id.getter;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t GeneralClientError.init(operationId:input:request:response:underlyingError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v13 = type metadata accessor for GeneralClientError();
  v14 = v13[10];
  v15 = type metadata accessor for ClientCurrency.Request();
  v24 = a5[1];
  v25 = *a5;
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[v13[11]];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *a7 = a1;
  *(a7 + 1) = a2;
  v17 = v13[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  (*(v19 + 16))(&a7[v17], a3, AssociatedTypeWitness);
  sub_FA1F8(a4, &a7[v14]);
  sub_FA268(*v16, *(v16 + 1), *(v16 + 2), *(v16 + 3));
  *v16 = v25;
  *(v16 + 1) = v24;
  v29 = a6;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v27, v30);
    v20 = v31;
    v21 = v32;
    sub_2698(v30, v31);
    v22 = (*(v21 + 48))(v20, v21);

    sub_42F48(a4, &qword_22C1B0, &qword_1C6CE0);
    (*(v19 + 8))(a3, AssociatedTypeWitness);
    *&a7[v13[12]] = v22;
    return sub_2BF8(v30);
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_42F48(a4, &qword_22C1B0, &qword_1C6CE0);
    (*(v19 + 8))(a3, AssociatedTypeWitness);
    result = sub_42F48(v27, &qword_22C1C8, &qword_1CE710);
    *&a7[v13[12]] = a6;
  }

  return result;
}

uint64_t GeneralClientError.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = 0x3E6C696E3CLL;
  v5 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v26 - v7;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v15 = &v26 - v14;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1B5084(90);
  v29 = v26;
  v30 = v27;
  v31._countAndFlagsBits = 0xD00000000000001CLL;
  v31._object = 0x80000000001D80C0;
  sub_1B48D4(v31);
  sub_1B48D4(*v1);
  v32._countAndFlagsBits = 0x3A7475706E69202CLL;
  v32._object = 0xE900000000000020;
  sub_1B48D4(v32);
  (*(v12 + 16))(v15, v1 + *(a1 + 36), AssociatedTypeWitness);
  v33._countAndFlagsBits = sub_1B4834();
  sub_1B48D4(v33);

  v34._countAndFlagsBits = 0x736575716572202CLL;
  v34._object = 0xEB00000000203A74;
  sub_1B48D4(v34);
  sub_43050(v1 + *(a1 + 40), v8, &qword_22C1B0, &qword_1C6CE0);
  v16 = type metadata accessor for ClientCurrency.Request();
  if ((*(*(v16 - 8) + 48))(v8, 1, v16) == 1)
  {
    sub_42F48(v8, &qword_22C1B0, &qword_1C6CE0);
    v17 = 0xE500000000000000;
    v18._countAndFlagsBits = 0x3E6C696E3CLL;
  }

  else
  {
    v19 = ClientCurrency.Request.description.getter();
    v17 = v20;
    sub_14336C(v8, type metadata accessor for ClientCurrency.Request);
    v18._countAndFlagsBits = v19;
  }

  v18._object = v17;
  sub_1B48D4(v18);

  v35._countAndFlagsBits = 0x6E6F70736572202CLL;
  v35._object = 0xEC000000203A6573;
  sub_1B48D4(v35);
  v21 = v2 + *(a1 + 44);
  v22 = *(v21 + 1);
  if (v22)
  {
    v26 = *v21;
    v27 = v22;
    v28 = *(v21 + 1);
    v4 = ClientCurrency.Response.description.getter();
    v24 = v23;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  v36._countAndFlagsBits = v4;
  v36._object = v24;
  sub_1B48D4(v36);

  v37._object = 0x80000000001D80E0;
  v37._countAndFlagsBits = 0xD000000000000014;
  sub_1B48D4(v37);
  v38._countAndFlagsBits = sub_13F6C8(a1);
  sub_1B48D4(v38);

  return v29;
}

uint64_t ClientCurrency.Request.description.getter()
{
  v1 = sub_1B4824();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1B5084(51);
  v19._countAndFlagsBits = 0x203A4C5255;
  v3 = 0xE500000000000000;
  v19._object = 0xE500000000000000;
  sub_1B48D4(v19);
  v20._countAndFlagsBits = sub_1B3E94();
  sub_1B48D4(v20);

  v21._countAndFlagsBits = 0x646F6874656D202CLL;
  v21._object = 0xEA0000000000203ALL;
  sub_1B48D4(v21);
  v4 = type metadata accessor for ClientCurrency.Request();
  sub_1B48D4(*(v0 + v4[5]));
  v22._countAndFlagsBits = 0x726564616568202CLL;
  v22._object = 0xEB00000000203A73;
  sub_1B48D4(v22);
  v16[0] = *(v0 + v4[6]);
  v23._countAndFlagsBits = CommonCurrency.Headers.description.getter();
  sub_1B48D4(v23);

  v24._object = 0x80000000001D8100;
  v24._countAndFlagsBits = 0xD000000000000011;
  sub_1B48D4(v24);
  v5 = v0 + v4[7];
  v6 = *(v5 + 8);
  if (v6 >> 60 == 15)
  {
    v7._countAndFlagsBits = 0x3E6C696E3CLL;
  }

  else
  {
    v8 = *v5;
    sub_4161C(*v5, *(v5 + 8));
    sub_2FC40(256, v8, v6, v16);
    v10 = v16[0];
    v9 = v16[1];
    sub_1B4804();
    v11 = sub_1B47E4();
    if (v12 || (sub_1B4814(), v11 = sub_1B47E4(), v12))
    {
      v3 = v12;
      v13 = v11;
    }

    else
    {
      v13 = sub_1B3F54();
      v3 = v15;
    }

    sub_41670(v10, v9);
    v7._countAndFlagsBits = v13;
  }

  v7._object = v3;
  sub_1B48D4(v7);

  return v17;
}

uint64_t ClientCurrency.Response.description.getter()
{
  v1 = sub_1B4824();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  sub_1B5084(33);

  v15 = 0x203A737574617473;
  v16 = 0xE800000000000000;
  v17._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v17);

  v18._countAndFlagsBits = 0x726564616568202CLL;
  v18._object = 0xEB00000000203A73;
  sub_1B48D4(v18);
  v14[0] = v4;
  v19._countAndFlagsBits = CommonCurrency.Headers.description.getter();
  sub_1B48D4(v19);

  v20._countAndFlagsBits = 0x203A79646F62202CLL;
  v20._object = 0xE800000000000000;
  sub_1B48D4(v20);
  sub_4161C(v5, v6);
  sub_2FC40(256, v5, v6, v14);
  v8 = v14[0];
  v7 = v14[1];
  sub_1B4804();
  v9 = sub_1B47E4();
  if (!v10)
  {
    sub_1B4814();
    v9 = sub_1B47E4();
    if (!v10)
    {
      v9 = sub_1B3F54();
    }
  }

  v11 = v9;
  v12 = v10;
  sub_41670(v8, v7);
  v21._countAndFlagsBits = v11;
  v21._object = v12;
  sub_1B48D4(v21);

  return v15;
}

uint64_t sub_13F6C8(uint64_t a1)
{
  v3 = sub_1B5134();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  __chkstk_darwin(v3);
  v69 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B0C(&qword_22DF28, &qword_1CEB88);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v68 - v8;
  v10 = sub_1B5144();
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  v12 = *(v11 + 8);
  v13 = __chkstk_darwin(v10);
  v15 = (&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v74 = &v68 - v16;
  v17 = sub_1B5104();
  v76 = *(v17 - 8);
  v77 = v17;
  v18 = *(v76 + 64);
  __chkstk_darwin(v17);
  v75 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2B0C(&qword_22DF30, &qword_1CEB90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v68 - v22;
  v24 = sub_1B5114();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = (&v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v31 = &v68 - v30;
  v72 = a1;
  v73 = v1;
  v32 = *(v1 + *(a1 + 48));
  *&v80 = v32;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  v33 = swift_dynamicCast();
  v34 = *(v25 + 56);
  if (v33)
  {
    v34(v23, 0, 1, v24);
    (*(v25 + 32))(v31, v23, v24);
    (*(v25 + 16))(v29, v31, v24);
    v35 = (*(v25 + 88))(v29, v24);
    v36 = v25;
    if (v35 == enum case for DecodingError.typeMismatch(_:))
    {
      (*(v25 + 96))(v29, v24);
      v37 = *v29;
      v38 = sub_2B0C(&qword_22ADB8, &qword_1C2520);
      v39 = v75;
      v40 = v76;
      v41 = v77;
      (*(v76 + 32))(v75, v29 + *(v38 + 48), v77);
      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;
      sub_1B5084(23);

      strcpy(&v80, "typeMismatch ");
      HIWORD(v80) = -4864;
      v85._countAndFlagsBits = sub_1B58B4();
      sub_1B48D4(v85);

      v42._countAndFlagsBits = 0x206E69202D20;
      v42._object = 0xE600000000000000;
    }

    else
    {
      if (v35 != enum case for DecodingError.valueNotFound(_:))
      {
        if (v35 == enum case for DecodingError.keyNotFound(_:))
        {
          (*(v25 + 96))(v29, v24);
          v61 = *(sub_2B0C(&qword_22DF38, &qword_1CEB98) + 48);
          sub_264B8(v29, &v80);
          v62 = v75;
          v63 = v76;
          v64 = *(v76 + 32);
          v79 = v31;
          v65 = v77;
          v64(v75, v29 + v61, v77);
          v83 = 0;
          v84 = 0xE000000000000000;
          sub_1B5084(19);
          v93._countAndFlagsBits = 0x6F46746F4E79656BLL;
          v93._object = 0xEC00000020646E75;
          sub_1B48D4(v93);
          v66 = v82;
          sub_2698(&v80, v81);
          v67 = *(v66 + 16);
          sub_1B55E4();
          v94._countAndFlagsBits = 2108704;
          v94._object = 0xE300000000000000;
          sub_1B48D4(v94);
          v95._countAndFlagsBits = sub_1B50F4();
          sub_1B48D4(v95);

          v57 = v83;
          v58 = v84;
          v31 = v79;
          (*(v63 + 8))(v62, v65);
          sub_2BF8(&v80);
          goto LABEL_11;
        }

        if (v35 != enum case for DecodingError.dataCorrupted(_:))
        {
          strcpy(&v80, "unknown: ");
          WORD5(v80) = 0;
          HIDWORD(v80) = -385875968;
          swift_getWitnessTable();
          v96._countAndFlagsBits = sub_1B5794();
          sub_1B48D4(v96);

          v58 = *(&v80 + 1);
          v57 = v80;
          (*(v25 + 8))(v29, v24);
          goto LABEL_11;
        }

        (*(v25 + 96))(v29, v24);
        v39 = v75;
        v40 = v76;
        v41 = v77;
        (*(v76 + 32))(v75, v29, v77);
        *&v80 = 0;
        *(&v80 + 1) = 0xE000000000000000;
        sub_1B5084(18);

        *&v80 = 0xD000000000000010;
        *(&v80 + 1) = 0x80000000001D8230;
LABEL_10:
        v89._countAndFlagsBits = sub_1B50F4();
        sub_1B48D4(v89);

        v58 = *(&v80 + 1);
        v57 = v80;
        (*(v40 + 8))(v39, v41);
LABEL_11:
        *&v80 = 0;
        *(&v80 + 1) = 0xE000000000000000;
        sub_1B5084(22);

        *&v80 = 0xD000000000000014;
        *(&v80 + 1) = 0x80000000001D8210;
        v90._countAndFlagsBits = v57;
        v90._object = v58;
        sub_1B48D4(v90);

        v59 = v80;
        (*(v36 + 8))(v31, v24);
        return v59;
      }

      (*(v25 + 96))(v29, v24);
      v55 = *v29;
      v56 = sub_2B0C(&qword_22ADB8, &qword_1C2520);
      v39 = v75;
      v40 = v76;
      v41 = v77;
      (*(v76 + 32))(v75, v29 + *(v56 + 48), v77);
      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;
      sub_1B5084(21);

      strcpy(&v80, "valueNotFound ");
      HIBYTE(v80) = -18;
      v88._countAndFlagsBits = sub_1B58B4();
      sub_1B48D4(v88);

      v42._countAndFlagsBits = 2108704;
      v42._object = 0xE300000000000000;
    }

    sub_1B48D4(v42);
    goto LABEL_10;
  }

  v34(v23, 1, 1, v24);
  sub_42F48(v23, &qword_22DF30, &qword_1CEB90);
  *&v80 = v32;
  swift_errorRetain();
  v43 = v78;
  v44 = swift_dynamicCast();
  v45 = v79;
  v46 = *(v79 + 7);
  if (v44)
  {
    v46(v9, 0, 1, v43);
    v47 = v74;
    (*(v45 + 4))(v74, v9, v43);
    (*(v45 + 2))(v15, v47, v43);
    if ((*(v45 + 11))(v15, v43) == enum case for EncodingError.invalidValue(_:))
    {
      (*(v45 + 12))(v15, v43);
      v48 = *(sub_2B0C(&qword_229070, &qword_1BB450) + 48);
      sub_430B8(v15, &v80);
      v49 = v70;
      v50 = v15 + v48;
      v51 = v69;
      v52 = v71;
      (*(v70 + 32))(v69, v50, v71);
      v83 = 0;
      v84 = 0xE000000000000000;
      sub_1B5084(20);
      v86._countAndFlagsBits = 0x5664696C61766E69;
      v86._object = 0xED00002065756C61;
      sub_1B48D4(v86);
      sub_1B51F4();
      v87._countAndFlagsBits = 2108704;
      v87._object = 0xE300000000000000;
      sub_1B48D4(v87);
      sub_1B51F4();
      v54 = v83;
      v53 = v84;
      (*(v49 + 8))(v51, v52);
      sub_2BF8(&v80);
    }

    else
    {
      strcpy(&v80, "unknown: ");
      WORD5(v80) = 0;
      HIDWORD(v80) = -385875968;
      swift_getWitnessTable();
      v91._countAndFlagsBits = sub_1B5794();
      sub_1B48D4(v91);

      v53 = *(&v80 + 1);
      v54 = v80;
      (*(v45 + 1))(v15, v43);
    }

    *&v80 = 0;
    *(&v80 + 1) = 0xE000000000000000;
    sub_1B5084(22);

    *&v80 = 0xD000000000000014;
    *(&v80 + 1) = 0x80000000001D81F0;
    v92._countAndFlagsBits = v54;
    v92._object = v53;
    sub_1B48D4(v92);

    v59 = v80;
    (*(v45 + 1))(v47, v43);
  }

  else
  {
    v46(v9, 1, 1, v43);
    sub_42F48(v9, &qword_22DF28, &qword_1CEB88);
    swift_getErrorValue();
    return sub_1B5794();
  }

  return v59;
}

uint64_t sub_1402D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ClientError.errorDescription.getter(a1, WitnessTable);
}

unint64_t ClientErrorPayload.description.getter()
{
  v1 = v0;
  v2 = sub_1B3D64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ClientErrorPayload();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_143EB0(v1, v10, type metadata accessor for ClientErrorPayload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v14 = *v10;
      v15 = v10[1];
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1B5084(27);

      v16 = "Unexpected content-type: ";
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v20 = *v10;
        v21 = v10[1];
        v23 = 0;
        v24 = 0xE000000000000000;
        sub_1B5084(46);

        v23 = 0xD00000000000001FLL;
        v24 = 0x80000000001D8120;
        v28._countAndFlagsBits = v20;
        v28._object = v21;
        sub_1B48D4(v28);

        v29._countAndFlagsBits = 0x73206D6F72662027;
        v29._object = 0xED0000676E697274;
        sub_1B48D4(v29);
        return v23;
      }

      v14 = *v10;
      v15 = v10[1];
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1B5084(27);

      v16 = "Required header missing: ";
    }

    v17 = (v16 - 32) | 0x8000000000000000;
    v18 = 0xD000000000000019;
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v14 = *v10;
    v15 = v10[1];
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1B5084(22);

    v17 = 0x80000000001D81D0;
    v18 = 0xD000000000000014;
LABEL_11:
    v23 = v18;
    v24 = v17;
    v26._countAndFlagsBits = v14;
    v26._object = v15;
    sub_1B48D4(v26);

    return v23;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1B5084(26);

    v23 = 0xD000000000000018;
    v24 = 0x80000000001D81B0;
    sub_143274(qword_22DDE0, &type metadata accessor for URLComponents);
    v25._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v25);

    v12 = v23;
    (*(v3 + 8))(v6, v2);
    return v12;
  }

  v19 = *v10;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1B5084(42);

  v23 = 0xD000000000000028;
  v24 = 0x80000000001D8180;
  swift_getErrorValue();
  v27._countAndFlagsBits = sub_1B5794();
  sub_1B48D4(v27);

  return v23;
}

uint64_t sub_140710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v29 = a4;
  v30 = a1;
  v31 = a3;
  v32 = a7;
  v10 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v27 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v18 = &v27 - v17;
  v19 = *a2;
  v20 = a2[1];
  v21 = a2[2];
  v22 = a2[3];
  v23 = (*(a6 + 24))(a5, a6);
  v27 = v24;
  v28 = v23;
  (*(v15 + 16))(v18, v29, AssociatedTypeWitness);
  sub_43050(v30, v13, &qword_22C1B0, &qword_1C6CE0);
  *&v33 = v19;
  *(&v33 + 1) = v20;
  v34 = v21;
  v35 = v22;
  sub_143210(v19, v20, v21, v22);
  v25 = v31;
  swift_errorRetain();
  return GeneralClientError.init(operationId:input:request:response:underlyingError:)(v28, v27, v18, v13, &v33, v25, v32);
}

uint64_t sub_1408EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v18 - v12;
  v14 = type metadata accessor for ClientCurrency.Request();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = type metadata accessor for GeneralClientError();
  memset(v18, 0, sizeof(v18));
  a5[3] = v15;
  a5[4] = swift_getWitnessTable();
  v16 = sub_40528(a5);
  sub_140710(v13, v18, a1, a2, a3, a4, v16);
  return sub_42F48(v13, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_140A44(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_140B40;

  return v10(a1);
}

uint64_t sub_140B40()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_140C74, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_140C74()
{
  v1 = *(v0 + 64);
  (*(v0 + 56))(*(v0 + 80));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = sub_2698((v0 + 16), v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v2);
  v8 = *(*(v3 + 8) + 8);
  if (sub_1B55C4())
  {
    (*(v5 + 8))(v7, v2);
  }

  else
  {
    swift_allocError();
    (*(v5 + 32))(v9, v7, v2);
  }

  v10 = *(v0 + 80);
  swift_willThrow();

  sub_2BF8((v0 + 16));
  v11 = *(v0 + 8);

  return v11();
}

uint64_t static APIClientHelpers.wrappingErrors<A>(work:mapError:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_140F08;

  return v10(a1);
}

uint64_t sub_140F08()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_143F50, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_14103C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_226C;

  return v10(a1, a4);
}

uint64_t sub_141144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v20 - v14;
  sub_143EB0(a3, v20 - v14, type metadata accessor for ClientCurrency.Request);
  v16 = type metadata accessor for ClientCurrency.Request();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v17 = type metadata accessor for GeneralClientError();
  memset(v20, 0, sizeof(v20));
  a6[3] = v17;
  a6[4] = swift_getWitnessTable();
  v18 = sub_40528(a6);
  sub_140710(v15, v20, a1, a2, a4, a5, v18);
  return sub_42F48(v15, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_1412C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_1412F8, 0, 0);
}

uint64_t sub_1412F8()
{
  v9 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v7[0] = *(v0 + 40);
  v7[1] = v1;
  v8 = *(v0 + 56);
  v2(v7);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_141390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v26 = a2;
  v18 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v25 - v20;
  sub_143EB0(a3, &v25 - v20, type metadata accessor for ClientCurrency.Request);
  v22 = type metadata accessor for ClientCurrency.Request();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  a9[3] = type metadata accessor for GeneralClientError();
  a9[4] = swift_getWitnessTable();
  v23 = sub_40528(a9);

  sub_4161C(a6, a7);
  sub_140710(v21, &v27, a1, v26, a8, a10, v23);
  sub_FA268(v27, v28, v29, v30);
  return sub_42F48(v21, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t URLComponents.addQueryItem<A>(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a2;
  v6 = sub_1B4EA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v23 - v10;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a3, v6);
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {
    return (*(v7 + 8))(v11, v6);
  }

  (*(v12 + 32))(v15, v11, a4);
  v17 = sub_1B3D14();
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  sub_2B0C(&qword_2294A0, &qword_1BC538);
  v19 = *(sub_1B3D04() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BCA80;
  sub_1B5594();
  sub_1B3CF4();

  v23[1] = v18;
  sub_606B4(v22);
  sub_1B3D24();
  return (*(v12 + 8))(v15, a4);
}

uint64_t URLComponents.addQueryItem<A>(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v24 = a5;
  v22 = a1;
  v21 = sub_1B4EA4();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v21);
  v11 = &v19 - v10;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin(v9);
  v25 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    if (sub_1B4B74())
    {
      v19 = v13;
      v15 = 0;
      v20 = (v12 + 16);
      v16 = (v7 + 8);
      while (1)
      {
        v17 = sub_1B4B44();
        sub_1B4B04();
        if (v17)
        {
          (*(v12 + 16))(v25, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v15, a4);
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          result = sub_1B50A4();
          if (v19 != 8)
          {
            __break(1u);
            return result;
          }

          v26 = result;
          (*v20)(v25, &v26, a4);
          swift_unknownObjectRelease();
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_11:
            __break(1u);
          }
        }

        (*(v12 + 32))(v11, v25, a4);
        (*(v12 + 56))(v11, 0, 1, a4);
        URLComponents.addQueryItem<A>(name:value:)(v22, v23, v11, a4);
        (*v16)(v11, v21);
        ++v15;
        if (v18 == sub_1B4B74())
        {
        }
      }
    }
  }

  return result;
}

uint64_t ClientConverter.common.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v10 = v1[4];
  v11 = v2;
  v4 = v1[7];
  v12 = v1[6];
  v3 = v12;
  v13 = v4;
  v6 = v1[3];
  v9[0] = v1[2];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_1432BC(v9, &v8);
}

__n128 ClientConverter.common.setter(uint64_t a1)
{
  v3 = v1[5];
  v10[2] = v1[4];
  v10[3] = v3;
  v4 = v1[7];
  v10[4] = v1[6];
  v10[5] = v4;
  v5 = v1[3];
  v10[0] = v1[2];
  v10[1] = v5;
  sub_143318(v10);
  v6 = *(a1 + 48);
  v1[4] = *(a1 + 32);
  v1[5] = v6;
  v7 = *(a1 + 80);
  v1[6] = *(a1 + 64);
  v1[7] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v9;
  return result;
}

uint64_t ClientConverter.encoder.setter(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t ClientConverter.decoder.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t ClientConverter.headerEncoder.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t ClientConverter.addQueryItem(name:value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[2] = a2;
  v33[3] = a4;
  v33[1] = a1;
  v6 = type metadata accessor for DateConfiguration.EncoderInput();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v33 - v12;
  v14 = sub_1B40C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4[9];
  v39 = v4[8];
  v40 = v19;
  v20 = v4[11];
  v35 = v4[10];
  v36 = v20;
  v21 = v4[13];
  v34 = v4[12];
  v37 = v4[15];
  v38 = v21;
  sub_43050(a3, v13, &qword_229528, &qword_1BC5A0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_42F48(v13, &qword_229528, &qword_1BC5A0);
  }

  (*(v15 + 32))(v18, v13, v14);
  (*(v15 + 16))(v9, v18, v14);
  sub_41BF8(v39);
  v23 = v35;
  sub_41BF8(v35);

  v24 = v41;
  v25 = v34(v9);
  if (v24)
  {
    sub_14336C(v9, type metadata accessor for DateConfiguration.EncoderInput);
    (*(v15 + 8))(v18, v14);
    sub_41C08(v39);
    sub_41C08(v23);
  }

  else
  {
    v41 = v26;
    v34 = v25;
    sub_14336C(v9, type metadata accessor for DateConfiguration.EncoderInput);
    sub_41C08(v39);
    sub_41C08(v23);

    v27 = sub_1B3D14();
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = _swiftEmptyArrayStorage;
    }

    sub_2B0C(&qword_2294A0, &qword_1BC538);
    v29 = *(sub_1B3D04() - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BCA80;
    sub_1B3CF4();
    v42 = v28;
    sub_606B4(v32);
    sub_1B3D24();

    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t ClientConverter.getComplexHeaderRequired<A>(_:in:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v27 = a6;
  v12 = sub_1B4EA4();
  v24 = *(v12 - 8);
  v13 = *(v24 + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = *(a3 + 8);
  v25[0] = *a3;
  v25[1] = v16;
  v26 = *(a3 + 16);
  result = ClientConverter.getComplexHeaderOptional<A>(_:in:as:)(a1, a2, v25, a4, a5, &v23 - v14);
  if (!v6)
  {
    v18 = v24;
    v19 = a2;
    v20 = v27;
    v21 = *(a4 - 8);
    if ((*(v21 + 48))(v15, 1, a4) == 1)
    {
      (*(v18 + 8))(v15, v12);
      sub_41710();
      swift_allocError();
      *v22 = a1;
      *(v22 + 8) = v19;
      *(v22 + 16) = 2;
      swift_willThrow();
    }

    else
    {
      return (*(v21 + 32))(v20, v15, a4);
    }
  }

  return result;
}

uint64_t ClientConverter.getComplexHeaderOptional<A>(_:in:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v27[2] = a5;
  v12 = sub_1B4824();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 8);
  v27[1] = *(v6 + 136);
  v27[5] = v17;

  v18._countAndFlagsBits = a1;
  v18._object = a2;
  object = CommonCurrency.Headers.firstValue(name:)(v18).value._object;

  if (!object)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  v27[0] = a4;
  sub_1B4804();
  v20 = sub_1B47D4();
  v22 = v21;

  (*(v13 + 8))(v16, v12);
  if (v22 >> 60 == 15)
  {
    sub_41710();
    swift_allocError();
    *v23 = a1;
    *(v23 + 8) = a2;
    *(v23 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v25 = v27[0];
    v26 = v27[3];
    sub_1B3BA4();
    result = sub_85D94(v20, v22);
    if (!v26)
    {
      return (*(*(v25 - 8) + 56))(a6, 0, 1, v25);
    }
  }

  return result;
}

uint64_t ClientConverter.getPrimitiveHeaderOptional<A>(_:in:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a3 + 8);

  CommonCurrency.Headers.getPrimitiveOptional<A>(_:as:)(a1, a2, a4, a5, a6);
}

uint64_t ClientConverter.getPrimitiveHeaderRequired<A>(_:in:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a7;
  v14 = sub_1B4EA4();
  v26 = *(v14 - 8);
  v15 = *(v26 + 64);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v18 = *(a3 + 8);
  v27[0] = *a3;
  v27[1] = v18;
  v28 = *(a3 + 16);
  result = ClientConverter.getPrimitiveHeaderOptional<A>(_:in:as:)(a1, a2, v27, a4, a5, a6);
  if (!v7)
  {
    v20 = v26;
    v21 = a2;
    v22 = v29;
    v23 = *(a5 - 8);
    if ((*(v23 + 48))(v17, 1, a5) == 1)
    {
      (*(v20 + 8))(v17, v14);
      sub_41710();
      swift_allocError();
      *v24 = a1;
      *(v24 + 8) = v21;
      *(v24 + 16) = 2;
      swift_willThrow();
    }

    else
    {
      return (*(v23 + 32))(v22, v17, a5);
    }
  }

  return result;
}

uint64_t ClientConverter.getPrimitiveHeaderOptional(_:in:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v6 = v5;
  v9 = v4[8];
  v10 = v4[9];
  v11 = v4[10];
  v12 = v4[11];
  v13 = v4[13];
  v21 = v4[14];
  v22.value._countAndFlagsBits = *(a3 + 8);
  v14 = v4[15];

  v15._countAndFlagsBits = a1;
  v15._object = a2;
  v16 = CommonCurrency.Headers.firstValue(name:)(v15);

  if (v16.value._object)
  {
    v22 = v16;
    sub_41BF8(v9);
    sub_41BF8(v11);

    v21(&v22);

    sub_41C08(v9);
    sub_41C08(v11);

    if (v6)
    {
      return result;
    }

    v18 = v23;
    v19 = 0;
  }

  else
  {
    v18 = v23;
    v19 = 1;
  }

  v20 = sub_1B40C4();
  return (*(*(v20 - 8) + 56))(v18, v19, 1, v20);
}

uint64_t ClientConverter.addComplexHeader<A>(name:value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 112);
  v16[6] = *(v6 + 96);
  v16[7] = v7;
  v16[8] = *(v6 + 128);
  v17 = *(v6 + 144);
  v8 = *(v6 + 48);
  v16[2] = *(v6 + 32);
  v16[3] = v8;
  v9 = *(v6 + 80);
  v16[4] = *(v6 + 64);
  v16[5] = v9;
  v10 = *(v6 + 16);
  v16[0] = *v6;
  v16[1] = v10;
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = v16;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a4;
  sub_1B4EA4();
  v11 = sub_2B0C(&qword_229560, &unk_1BFC70);
  return sub_13D208(sub_1433CC, v13, v11, &type metadata for () + 8, &v14, &v15);
}

uint64_t sub_142A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v12 = sub_1B4824();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = *(a2 + 144);
  result = sub_1B3C54();
  if (v8)
  {
    goto LABEL_2;
  }

  v17 = result;
  v18 = v16;
  v32 = a3;
  sub_1B4804();
  v19 = sub_1B47E4();
  if (!v20)
  {
    sub_41710();
    v30 = swift_allocError();
    *v31 = a3;
    *(v31 + 8) = a4;
    *(v31 + 16) = 4;
    swift_willThrow();

    result = sub_41670(v17, v18);
    v8 = v30;
LABEL_2:
    *a8 = v8;
    return result;
  }

  v21 = v19;
  v22 = v20;
  v23 = *(type metadata accessor for ClientCurrency.Request() + 24);
  v24 = *(a5 + v23);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_3324C(0, *(v24 + 2) + 1, 1, v24);
    *(a5 + v23) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    *(a5 + v23) = sub_3324C((v26 > 1), v27 + 1, 1, v24);
  }

  result = sub_41670(v17, v18);
  v28 = *(a5 + v23);
  *(v28 + 16) = v27 + 1;
  v29 = (v28 + 32 * v27);
  v29[4] = v32;
  v29[5] = a4;
  v29[6] = v21;
  v29[7] = v22;
  return result;
}

uint64_t ClientConverter.addPrimitiveHeader(name:value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a2;
  v36 = a1;
  v6 = type metadata accessor for DateConfiguration.EncoderInput();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v36 - v12;
  v14 = sub_1B40C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4[9];
  v44 = v4[8];
  v45 = v19;
  v20 = v4[11];
  v40 = v4[10];
  v41 = v20;
  v21 = v4[13];
  v39 = v4[12];
  v42 = v4[15];
  v43 = v21;
  sub_43050(a3, v13, &qword_229528, &qword_1BC5A0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_42F48(v13, &qword_229528, &qword_1BC5A0);
  }

  (*(v15 + 32))(v18, v13, v14);
  (*(v15 + 16))(v9, v18, v14);
  sub_41BF8(v44);
  v23 = v40;
  sub_41BF8(v40);

  v24 = v46;
  v25 = v39(v9);
  if (v24)
  {
    sub_14336C(v9, type metadata accessor for DateConfiguration.EncoderInput);
    (*(v15 + 8))(v18, v14);
    sub_41C08(v44);
    sub_41C08(v23);
  }

  else
  {
    v39 = v26;
    v46 = v25;
    sub_14336C(v9, type metadata accessor for DateConfiguration.EncoderInput);
    sub_41C08(v44);
    sub_41C08(v23);

    v27 = *(type metadata accessor for ClientCurrency.Request() + 24);
    v28 = v37;
    v29 = *(v37 + v27);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + v27) = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_3324C(0, *(v29 + 2) + 1, 1, v29);
      *(v28 + v27) = v29;
    }

    v32 = *(v29 + 2);
    v31 = *(v29 + 3);
    if (v32 >= v31 >> 1)
    {
      v29 = sub_3324C((v31 > 1), v32 + 1, 1, v29);
      *(v28 + v27) = v29;
    }

    result = (*(v15 + 8))(v18, v14);
    *(v29 + 2) = v32 + 1;
    v33 = &v29[32 * v32];
    v34 = v38;
    *(v33 + 4) = v36;
    *(v33 + 5) = v34;
    v35 = v39;
    *(v33 + 6) = v46;
    *(v33 + 7) = v35;
    *(v28 + v27) = v29;
  }

  return result;
}

uint64_t sub_14306C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_226C;

  return sub_1412C8(a1, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_143198()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_1431A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_143210(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_4161C(a3, a4);
  }
}

uint64_t sub_143274(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14336C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1433F4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_143510(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_143C10();
    if (v4 <= 0x3F)
    {
      sub_143C68();
      if (v5 <= 0x3F)
      {
        sub_143CB8();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1435E8(int *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(sub_1B3F34() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = v14 - 1;
  if (v10 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v10;
  }

  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v11 + 80);
  v20 = *(v11 + 64);
  if (v16 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v19 & 0xF8 | 7;
  v23 = v20 + 7;
  if (v21 >= a2)
  {
    goto LABEL_33;
  }

  v24 = ((((v18 + v22 + ((v17 + 16) & ~v17)) & ~v22) + (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = v24 & 0xFFFFFFF8;
  if ((v24 & 0xFFFFFFF8) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = a2 - v21 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v29 = *(a1 + v24);
      if (!v29)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v29 = *(a1 + v24);
      if (!v29)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v31 = v29 - 1;
    if (v25)
    {
      v31 = 0;
      v32 = *a1;
    }

    else
    {
      v32 = 0;
    }

    return v21 + (v32 | v31) + 1;
  }

  if (v28)
  {
    v29 = *(a1 + v24);
    if (v29)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if ((v16 & 0x80000000) != 0)
  {
    v34 = (a1 + v17 + 16) & ~v17;
    if (v10 == v21)
    {
      v35 = *(v9 + 48);

      return v35(v34, v10, AssociatedTypeWitness);
    }

    else
    {
      v36 = (v34 + v18 + v22) & ~v22;
      if (v13 < 0x7FFFFFFF)
      {
        v38 = *(((v23 + v36) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v38 >= 0xFFFFFFFF)
        {
          LODWORD(v38) = -1;
        }

        v37 = v38 + 1;
      }

      else
      {
        v37 = (*(v12 + 48))(v36);
      }

      if (v37 >= 2)
      {
        return v37 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v33 = *(a1 + 1);
    if (v33 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    return (v33 + 1);
  }
}

void sub_1438B4(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v37 = v10;
  v11 = *(v10 + 84);
  v12 = sub_1B3F34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = v17 - 1;
  if (v11 > v17 - 1)
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v13 + 80) & 0xF8 | 7;
  v21 = *(*(v12 - 8) + 64) + 7;
  v22 = (((((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v23 = ((((v16 + v20 + ((v15 + 16) & ~v15)) & ~v20) + v22 + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v19 >= a3)
  {
    v26 = 0;
    v27 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((v16 + v20 + ((v15 + 16) & ~v15)) & ~v20) + v22 + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v24 = a3 - v19 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = a2 - v19;
    if (a2 <= v19)
    {
LABEL_22:
      if (v26 > 1)
      {
        if (v26 != 2)
        {
          *(a1 + v23) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v23) = 0;
      }

      else if (v26)
      {
        *(a1 + v23) = 0;
        if (!a2)
        {
          return;
        }

LABEL_38:
        if ((v18 & 0x80000000) != 0)
        {
          v30 = (a1 + v15 + 16) & ~v15;
          if (v11 == v19)
          {
            v31 = *(v37 + 56);

            v31(v30, a2, v11, AssociatedTypeWitness);
          }

          else
          {
            v32 = ((v30 + v16 + v20) & ~v20);
            v33 = a2 - v17;
            if (a2 >= v17)
            {
              if ((((((v21 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
              {
                bzero(((v30 + v16 + v20) & ~v20), v22);
                *v32 = v33;
              }
            }

            else
            {
              v34 = (a2 + 1);
              if (v14 < 0x7FFFFFFF)
              {
                v36 = ((v32 + v21) & 0xFFFFFFFFFFFFFFF8);
                if ((v34 & 0x80000000) != 0)
                {
                  *v36 = (a2 - 0x7FFFFFFF);
                  v36[1] = 0;
                }

                else
                {
                  v36[1] = a2;
                }
              }

              else
              {
                v35 = *(v13 + 56);

                v35(v32, v34);
              }
            }
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }
  }

  if (((((v16 + v20 + ((v15 + 16) & ~v15)) & ~v20) + v22 + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1;
  }

  if (((((v16 + v20 + ((v15 + 16) & ~v15)) & ~v20) + v22 + 39) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v29 = ~v19 + a2;
    bzero(a1, ((((v16 + v20 + ((v15 + 16) & ~v15)) & ~v20) + v22 + 39) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v29;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      *(a1 + v23) = v28;
    }

    else
    {
      *(a1 + v23) = v28;
    }
  }

  else if (v26)
  {
    *(a1 + v23) = v28;
  }
}

void sub_143C10()
{
  if (!qword_22DE68)
  {
    type metadata accessor for ClientCurrency.Request();
    v0 = sub_1B4EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_22DE68);
    }
  }
}

void sub_143C68()
{
  if (!qword_22DE70)
  {
    v0 = sub_1B4EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_22DE70);
    }
  }
}

unint64_t sub_143CB8()
{
  result = qword_22DE78;
  if (!qword_22DE78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_22DE78);
  }

  return result;
}

unint64_t sub_143D1C()
{
  result = sub_1B3D64();
  if (v1 <= 0x3F)
  {
    result = sub_143CB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_143DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_143DF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_143E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}