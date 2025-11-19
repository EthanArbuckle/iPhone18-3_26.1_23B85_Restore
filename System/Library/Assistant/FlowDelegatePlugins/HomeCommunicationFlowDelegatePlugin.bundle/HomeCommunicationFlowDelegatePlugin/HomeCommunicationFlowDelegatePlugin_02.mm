uint64_t sub_2CDF8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_8D35C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_8D28C();
  *v1 = result;
  return result;
}

uint64_t sub_2CE98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2CF10(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
  v3 = sub_8D04C();

  return v3;
}

uint64_t sub_2CF80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_8D35C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2C7AC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_ADE4(0, &qword_C0688, SAAceView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2D360(&qword_C1528, &qword_C1520, &unk_90CA0);
        for (i = 0; i != v7; ++i)
        {
          sub_2664(&qword_C1520, &unk_90CA0);
          v9 = sub_2D288(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2D104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_8D35C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2C7AC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2D360(&qword_C1518, &qword_C1510, &qword_90C98);
        for (i = 0; i != v7; ++i)
        {
          sub_2664(&qword_C1510, &qword_90C98);
          v9 = sub_2D2F0(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2D288(uint64_t a1, unint64_t a2, uint64_t a3))()
{
  sub_2D3D8(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = sub_8D27C();
  }

  *v3 = v7;
  return sub_2D3B8;
}

void (*sub_2D2F0(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  sub_2D3D8(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = sub_8D27C();
  }

  *v3 = v7;
  return sub_2D358;
}

uint64_t sub_2D360(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2D3D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2CDC4(a3);

  return sub_2CDD4(a2, v5, a3);
}

uint64_t sub_2D41C(uint64_t a1)
{

  return sub_2C90C(a1, v1, v2);
}

void sub_2D45C(SEL *a1)
{
  v32 = a1;
  v30 = sub_8C99C();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v30);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v29 = &v25 - v6;
  v7 = sub_2D6EC(v1);
  v31 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = sub_2D3B4(v8);
  v10 = 0;
  v27 = v2;
  v28 = (v2 + 32);
  while (1)
  {
    if (v9 == v10)
    {

      return;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_8D27C();
    }

    else
    {
      if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v14 = [v11 originator];
    if (v14 && (v15 = v14, v16 = [v14 *v32], v15, v16))
    {
      v17 = v26;
      sub_8D13C();

      v18 = *v28;
      (*v28)(v29, v17, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = *(v31 + 2);
        sub_763A8();
        v31 = v23;
      }

      v19 = *(v31 + 2);
      if (v19 >= *(v31 + 3) >> 1)
      {
        sub_763A8();
        v31 = v24;
      }

      v20 = v30;
      v21 = v31;
      *(v31 + 2) = v19 + 1;
      v18(&v21[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v19], v29, v20);
      v10 = v13;
    }

    else
    {

      ++v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2D6EC(void *a1)
{
  v1 = [a1 sentAnnouncements];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2D74C();
  v3 = sub_8D04C();

  return v3;
}

unint64_t sub_2D74C()
{
  result = qword_C1530;
  if (!qword_C1530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C1530);
  }

  return result;
}

unint64_t INSendAnnouncementRecipientUnsupportedReason.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x4E7465677261742ELL;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    default:
      sub_8D25C(16);

      strcpy(v3, "Unknown code: ");
      v4._countAndFlagsBits = INSendAnnouncementRecipientUnsupportedReason.description.getter(0x4E7465677261742ELL);
      sub_8CF7C(v4);

      result = v3[0];
      break;
  }

  return result;
}

uint64_t sub_2D8DC()
{
  v1 = [v0 disambiguationItems];
  v2 = sub_8D04C();

  v3 = *(v2 + 16);

  v4 = &selRef_alternatives;
  if (v3)
  {
    v4 = &selRef_disambiguationItems;
  }

  v5 = [v0 *v4];
  v6 = sub_8D04C();

  return v6;
}

uint64_t sub_2D988()
{
  v0 = sub_8B90C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_2D9E8();

  return v2;
}

uint64_t sub_2D9E8()
{
  v1 = v0;
  sub_8B01C();
  sub_10C68();
  v2 = sub_8D1FC();
  v4 = v3;

  v5 = sub_2E8F0(v0);
  if (!v5)
  {
LABEL_19:

    return sub_2E954(v1);
  }

  v6 = v5;
  v7 = sub_5A20C(v2, v4, v5);
  if (!v8)
  {
    v10 = sub_2DC20();
    if (v10 != 95)
    {
      LOBYTE(v11) = v10;
      if (qword_BF860 != -1)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v12 = sub_5A264(v11, qword_C1538);
        if (!v12)
        {
          break;
        }

        v11 = v12;
        v13 = *(v12 + 16);
        if (!v13)
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = 0;
        v15 = v13 - 1;
        while (v14 < v13)
        {
          v16 = sub_2E108(*(v11 + v14 + 32));
          if (*(v6 + 16))
          {
            v18 = sub_71C64(v16, v17);
            v20 = v19;

            if (v20)
            {
              v22 = (*(v6 + 56) + 16 * v18);
              v9 = *v22;
              v23 = v22[1];

              goto LABEL_4;
            }
          }

          else
          {
          }

          if (v15 == v14)
          {
            goto LABEL_18;
          }

          v13 = *(v11 + 16);
          ++v14;
        }

        __break(1u);
LABEL_22:
        swift_once();
      }
    }

    goto LABEL_19;
  }

  v9 = v7;

LABEL_4:

  return v9;
}

uint64_t sub_2DC20()
{
  v0 = sub_8D47C();

  v1 = 0;
  result = 2;
  switch(v0)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v1 = 1;
LABEL_3:
      result = v1;
      break;
    case 2:
      return result;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      result = 12;
      break;
    case 13:
      result = 13;
      break;
    case 14:
      result = 14;
      break;
    case 15:
      result = 15;
      break;
    case 16:
      result = 16;
      break;
    case 17:
      result = 17;
      break;
    case 18:
      result = 18;
      break;
    case 19:
      result = 19;
      break;
    case 20:
      result = 20;
      break;
    case 21:
      result = 21;
      break;
    case 22:
      result = 22;
      break;
    case 23:
      result = 23;
      break;
    case 24:
      result = 24;
      break;
    case 25:
      result = 25;
      break;
    case 26:
      result = 26;
      break;
    case 27:
      result = 27;
      break;
    case 28:
      result = 28;
      break;
    case 29:
      result = 29;
      break;
    case 30:
      result = 30;
      break;
    case 31:
      result = 31;
      break;
    case 32:
      result = 32;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    default:
      result = 95;
      break;
  }

  return result;
}

uint64_t sub_2E108(char a1)
{
  result = 29281;
  switch(a1)
  {
    case 1:
      v3 = 1398764129;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x4100000000;
    case 2:
      v13 = 1096774241;
      return v13 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 3:
      return 24931;
    case 4:
      v8 = 24931;
      goto LABEL_39;
    case 5:
      return 29539;
    case 6:
      v16 = 1130328931;
      return v16 & 0xFFFF0000FFFFFFFFLL | 0x5A00000000;
    case 7:
      return 24932;
    case 8:
      v14 = 1147101540;
      goto LABEL_103;
    case 9:
      return 25956;
    case 10:
      v13 = 1147102564;
      return v13 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 11:
      v12 = 1130325348;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x4800000000;
    case 12:
      v10 = 1096770916;
      return v10 & 0xFFFF0000FFFFFFFFLL | 0x5400000000;
    case 13:
      return 27749;
    case 14:
      v7 = 1197436005;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
    case 15:
      return 28261;
    case 16:
      v9 = 1432317541;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x5300000000;
    case 17:
      v11 = 1096773221;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x5500000000;
    case 18:
      v3 = 1130327653;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x4100000000;
    case 19:
      return 0x47535F6E65;
    case 20:
      v14 = 1432317541;
      goto LABEL_103;
    case 21:
      v16 = 1314877029;
      return v16 & 0xFFFF0000FFFFFFFFLL | 0x5A00000000;
    case 22:
      return 0x4E495F6E65;
    case 23:
      v3 = 1516203621;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x4100000000;
    case 24:
      v13 = 1230990949;
      return v13 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 25:
      v12 = 1348431461;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x4800000000;
    case 26:
      return 29541;
    case 27:
      v8 = 29541;
LABEL_39:
      v9 = v8 & 0xFFFFFFFF0000FFFFLL | 0x455F0000;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x5300000000;
    case 28:
      return 0x584D5F7365;
    case 29:
      return 0x53555F7365;
    case 30:
      v15 = 1130328933;
      return v15 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
    case 31:
      return 26982;
    case 32:
      return 0x49465F6966;
    case 33:
      return 29286;
    case 34:
      v7 = 1180660326;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
    case 35:
      return 0x45425F7266;
    case 36:
      return 0x48435F7266;
    case 37:
      return 0x41435F7266;
    case 38:
      return 25960;
    case 39:
      v15 = 1230988648;
      return v15 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
    case 40:
      return 26984;
    case 41:
      v4 = 1230989672;
      goto LABEL_58;
    case 42:
      return 29288;
    case 43:
      v7 = 1214214760;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
    case 44:
      return 29801;
    case 45:
      v10 = 1230992489;
      return v10 & 0xFFFF0000FFFFFFFFLL | 0x5400000000;
    case 46:
      return 0x48435F7469;
    case 47:
      return 30056;
    case 48:
      v11 = 1214215528;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x5500000000;
    case 49:
      return 25705;
    case 50:
      return 0x44495F6469;
    case 51:
      return 24938;
    case 52:
      return 0x504A5F616ALL;
    case 53:
      return 28523;
    case 54:
      v7 = 1264545643;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
    case 55:
      return 29549;
    case 56:
      return 0x594D5F736DLL;
    case 57:
      return 25198;
    case 58:
      v5 = 1314873966;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x4F00000000;
    case 59:
      return 28526;
    case 60:
      return 0x4F4E5F6F6ELL;
    case 61:
      return 27758;
    case 62:
      v15 = 1314876526;
      return v15 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
    case 63:
      v13 = 1113549934;
      return v13 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 64:
      return 27760;
    case 65:
      v15 = 1348430960;
      return v15 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
    case 66:
      return 29808;
    case 67:
      v10 = 1348433008;
      return v10 & 0xFFFF0000FFFFFFFFLL | 0x5400000000;
    case 68:
      v7 = 1113551984;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
    case 69:
      return 28530;
    case 70:
      v5 = 1381986162;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x4F00000000;
    case 71:
      return 30066;
    case 72:
      v11 = 1381987698;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x5500000000;
    case 73:
      return 27507;
    case 74:
      v14 = 1398762355;
      goto LABEL_103;
    case 75:
      return 30323;
    case 76:
      v13 = 1398765171;
      return v13 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 77:
      return 26740;
    case 78:
      v12 = 1415538804;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x4800000000;
    case 79:
      return 29300;
    case 80:
      v7 = 1415541364;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
    case 81:
      return 27509;
    case 82:
      v3 = 1432316789;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x4100000000;
    case 83:
      return 26998;
    case 84:
      v4 = 1449093494;
      goto LABEL_58;
    case 85:
      return 7697783;
    case 86:
      v6 = 1601533303;
      goto LABEL_80;
    case 87:
      return 6649209;
    case 88:
      v6 = 1600484729;
LABEL_80:
      result = v6 & 0xFFFF0000FFFFFFFFLL | 0x4E4300000000;
      break;
    case 89:
      result = 26746;
      break;
    case 90:
      result = 0x736E61485F687ALL;
      break;
    case 91:
      result = 0x746E61485F687ALL;
      break;
    case 92:
      v14 = 1214212218;
LABEL_103:
      result = v14 & 0xFFFF0000FFFFFFFFLL | 0x4B00000000;
      break;
    case 93:
      v4 = 1130326138;
LABEL_58:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x4E00000000;
      break;
    case 94:
      result = 0x57545F687ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2E838@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2DC20();
  *a2 = result;
  return result;
}

uint64_t sub_2E868@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2E108(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2E894()
{
  sub_2664(&qword_C15E0, &qword_90D58);
  sub_2E9B8();
  result = sub_8CE6C();
  qword_C1538 = result;
  return result;
}

uint64_t sub_2E8F0(void *a1)
{
  v1 = [a1 appNameMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_8CE4C();

  return v3;
}

uint64_t sub_2E954(void *a1)
{
  v1 = [a1 displayAppName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_8CEDC();

  return v3;
}

unint64_t sub_2E9B8()
{
  result = qword_C15E8;
  if (!qword_C15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C15E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriLocales(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xA2)
  {
    if (a2 + 94 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 94) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 95;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5F;
  v5 = v6 - 95;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriLocales(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 94 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 94) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xA2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xA1)
  {
    v6 = ((a2 - 162) >> 8) + 1;
    *result = a2 + 94;
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
        JUMPOUT(0x2EB60);
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
          *result = a2 + 94;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2EB9C()
{
  result = qword_C15F0;
  if (!qword_C15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C15F0);
  }

  return result;
}

void sub_2EBF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v98 = sub_8BDEC();
  v3 = sub_3488(v98);
  v96 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v95 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = &v93 - v9;
  v10 = sub_8BE3C();
  v11 = sub_3488(v10);
  v93 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_16854();
  v17 = v16 - v15;
  v18 = sub_2664(&qword_C1AF0, &unk_90ED0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v93 - v20;
  v22 = sub_8BE9C();
  v23 = sub_3488(v22);
  v94 = v24;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v23);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v93 - v30;
  v32 = sub_8BE0C();
  v33 = sub_3488(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_16854();
  v40 = (v39 - v38);
  (*(v35 + 16))(v39 - v38, a1, v32);
  v41 = *(v35 + 88);
  v42 = sub_2FC8C();
  v44 = v43(v42);
  if (v44 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v45 = *(v35 + 8);
    v46 = sub_2FC8C();
    v47(v46);
LABEL_5:
    sub_2FC98();
    return;
  }

  if (v44 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v48 = sub_2FC7C();
    v49(v48);
    v50 = *(v40 + *(sub_2664(&qword_C0E28, &qword_938D0) + 48));

    v51 = sub_8C71C();
    sub_6574(v51);
    (*(v52 + 8))(v40);
    goto LABEL_5;
  }

  if (v44 == enum case for Parse.directInvocation(_:))
  {
    v53 = sub_2FC7C();
    v54(v53);
    v55 = v96;
    v56 = v97;
    v57 = v98;
    (*(v96 + 32))(v97, v40, v98);
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v58 = sub_8CD0C();
    sub_33F4(v58, qword_C3DF8);
    v59 = v95;
    (*(v55 + 16))(v95, v56, v57);
    v60 = sub_8CCEC();
    v61 = sub_8D11C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v101 = v63;
      *v62 = 136315138;
      v64 = sub_8BDCC();
      v65 = v59;
      v67 = v66;
      v68 = *(v55 + 8);
      v68(v65, v57);
      v69 = sub_862D8(v64, v67, &v101);

      *(v62 + 4) = v69;
      _os_log_impl(&dword_0, v60, v61, "#NLTransformer building HomeCommunicationNLIntent for direct invocation %s", v62, 0xCu);
      sub_2714(v63);
      sub_E890();
      sub_E890();
    }

    else
    {

      v68 = *(v55 + 8);
      v68(v59, v57);
    }

    sub_2F974(v56, v99);
    v68(v56, v57);
  }

  else if (v44 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v70 = sub_2FC7C();
    v71(v70);
    v72 = *v40;
    sub_8C03C();
    if (sub_3364(v21, 1, v22) == 1)
    {
      sub_1D05C(v21, &qword_C1AF0, &unk_90ED0);
      if (qword_BF818 != -1)
      {
        sub_E754();
      }

      v73 = sub_8CD0C();
      sub_33F4(v73, qword_C3DF8);
      swift_unknownObjectRetain();
      v74 = sub_8CCEC();
      v75 = sub_8D12C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v100 = v72;
        v101 = v77;
        *v76 = 136315138;
        swift_unknownObjectRetain();
        sub_2664(&qword_C17D0, &qword_90EE0);
        v78 = sub_8CEEC();
        v80 = sub_862D8(v78, v79, &v101);

        *(v76 + 4) = v80;
        _os_log_impl(&dword_0, v74, v75, "#NLTransformer Couldn't transform UserDialogAct %s into UserParse to get the UDAs.", v76, 0xCu);
        sub_2714(v77);
        sub_E890();
        sub_E890();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_5;
    }

    v85 = v94;
    (*(v94 + 32))(v31, v21, v22);
    sub_2F458(v99);
    swift_unknownObjectRelease();
    (*(v85 + 8))(v31, v22);
  }

  else if (v44 == enum case for Parse.uso(_:))
  {
    v81 = sub_2FC7C();
    v82(v81);
    v83 = v93;
    (*(v93 + 32))(v17, v40, v10);
    sub_8BE2C();
    v84 = sub_2F458(v99);
    (*(v94 + 8))(v29, v22, v84);
    (*(v83 + 8))(v17, v10);
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v86 = sub_8CD0C();
    sub_33F4(v86, qword_C3DF8);
    v87 = sub_8CCEC();
    v88 = sub_8D12C();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_0, v87, v88, "NLTransformer got an unknown parse", v89, 2u);
      sub_E890();
    }

    sub_2FC98();
    v90 = *(v35 + 8);
    v91 = sub_2FC8C();
    v92(v91);
  }
}

double sub_2F458@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2664(&unk_C1760, &qword_90EC8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22[-v4];
  v6 = sub_8BF1C();
  v7 = sub_3488(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_16854();
  v14 = v13 - v12;
  v15 = sub_8BE8C();
  sub_75860(v15, v5);

  if (sub_3364(v5, 1, v6) == 1)
  {
    sub_1D05C(v5, &unk_C1760, &qword_90EC8);
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v16 = sub_8CD0C();
    sub_33F4(v16, qword_C3DF8);
    v17 = sub_8CCEC();
    v18 = sub_8D12C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#NLTransformer No user dialog act found in userParse.", v19, 2u);
      sub_E890();
    }

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    (*(v9 + 32))(v14, v5, v6);
    sub_2F6A0(v22);
    (*(v9 + 8))(v14, v6);
    result = *&v23;
    v21 = v24;
    *a1 = v23;
    *(a1 + 16) = v21;
    *(a1 + 32) = v25;
  }

  return result;
}

uint64_t sub_2F6A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  sub_2FB74(v1 + 32, v21, &unk_C1750, &unk_90EB8);
  if (v22[3] == 1)
  {
    sub_1D05C(v21, &unk_C1750, &unk_90EB8);
    memset(v23, 0, sizeof(v23));
    v24 = 0;
  }

  else
  {
    sub_2FB74(v22, v23, &qword_C0438, &qword_8EBD0);
    sub_1D05C(v21, &unk_C1750, &unk_90EB8);
  }

  v4 = *(v1 + 16);
  sub_300D0();
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v5 = sub_8CD0C();
  sub_33F4(v5, qword_C3DF8);
  sub_2FB74(v19, v21, &qword_C0438, &qword_8EBD0);
  v6 = sub_8CCEC();
  v7 = sub_8D11C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = sub_2FC8C();
    sub_2664(v10, v11);
    v12 = sub_8D1BC();
    v14 = v13;
    sub_1D05C(v21, &qword_C0438, &qword_8EBD0);
    v15 = sub_862D8(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v6, v7, "#NLv4Transformer found no cached result. Transformation generated HomeCommunicationNLIntent: %s", v8, 0xCu);
    sub_2714(v9);
    sub_E890();
    sub_E890();
  }

  else
  {

    sub_1D05C(v21, &qword_C0438, &qword_8EBD0);
  }

  sub_1D05C(v23, &qword_C0438, &qword_8EBD0);
  *a1 = 1;
  v16 = v19[1];
  *(a1 + 8) = v19[0];
  *(a1 + 24) = v16;
  *(a1 + 40) = v20;
  sub_2FBD4(a1, v21);
  swift_beginAccess();
  sub_2FC0C(v21, v2 + 32);
  return swift_endAccess();
}

uint64_t sub_2F974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 88);

  sub_EB68(a1, v2 + 96, a2);
}

void *sub_2F9D4()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_1D05C((v0 + 4), &unk_C1750, &unk_90EB8);
  v3 = v0[10];

  v4 = v0[11];

  sub_2714(v0 + 12);
  return v0;
}

uint64_t sub_2FA2C()
{
  sub_2F9D4();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_2FA84(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_2FA9C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2FAB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_2FB04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_2FB74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2664(a3, a4);
  sub_6574(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2FC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&unk_C1750, &unk_90EB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_2FC98()
{
  v1 = *(v0 - 104);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t sub_2FCAC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

void sub_2FCD4()
{
  sub_11614();
  v3 = v2;
  v5 = v4;
  v6 = sub_2664(&qword_C05E8, &unk_8ECD0);
  sub_65E4(v6);
  v8 = *(v7 + 64);
  sub_1D394();
  __chkstk_darwin(v9);
  v10 = sub_36C8C();
  v11 = sub_3488(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_1D164();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  sub_36C30();
  v20 = sub_8C68C();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_8C67C();
  v23 = sub_8C52C();

  if (!v23)
  {
    goto LABEL_4;
  }

  v24 = v3[3];
  v25 = v3[4];
  sub_622C(v3, v24);
  sub_47250(v23, v24, v25, v1);
  if (sub_3364(v1, 1, v10) == 1)
  {

    sub_1D05C(v1, &qword_C05E8, &unk_8ECD0);
LABEL_4:
    if (qword_BF818 != -1)
    {
      sub_650C();
      swift_once();
    }

    v26 = sub_8CD0C();
    sub_22B78(v26, qword_C3DF8);
    v27 = sub_8CCEC();
    v28 = sub_8D11C();
    if (sub_125A0(v28))
    {
      v29 = sub_E8E0();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "#NLv4Transformer announcement is not present", v29, 2u);
      sub_6538();
    }

    v30 = 1;
    goto LABEL_15;
  }

  v47 = *(v13 + 32);
  (v47)(v0, v1, v10);
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v31 = sub_8CD0C();
  sub_22B78(v31, qword_C3DF8);
  v32 = *(v13 + 16);
  sub_36ABC();
  v33();
  v34 = sub_8CCEC();
  v35 = sub_8D11C();
  if (os_log_type_enabled(v34, v35))
  {
    sub_6594();
    v36 = swift_slowAlloc();
    sub_36A54();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v36 = 136315138;
    sub_36A6C();
    sub_367AC(v37, v38);
    v39 = sub_8D43C();
    v46 = v5;
    v41 = v40;
    (*(v13 + 8))(v18, v10);
    v42 = sub_862D8(v39, v41, &v48);
    v5 = v46;

    *(v36 + 4) = v42;
    sub_36CCC(&dword_0, v43, v44, "#NLv4Transformer announcement is present: %s");
    sub_2714(v45);
    sub_6538();

    sub_6538();
  }

  else
  {

    (*(v13 + 8))(v18, v10);
  }

  sub_36ABC();
  v47();
  v30 = 0;
LABEL_15:
  sub_6270(v5, v30, 1, v10);
  sub_115FC();
}

void sub_300D0()
{
  sub_11614();
  v49 = v0;
  v51 = v1;
  v52 = v2;
  v54 = v3;
  v50 = type metadata accessor for TransformerInput(0);
  v4 = sub_6574(v50);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_16854();
  v9 = v8 - v7;
  v10 = sub_8BF1C();
  v11 = sub_3488(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_1D164();
  v18 = v16 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v43 - v21;
  __chkstk_darwin(v20);
  v24 = &v43 - v23;
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v25 = sub_8CD0C();
  sub_22B78(v25, qword_C3DF8);
  v53 = *(v13 + 16);
  v53(v24, v54, v10);
  v47 = v0;
  v26 = sub_8CCEC();
  v27 = sub_8D11C();
  v28 = sub_125A0(v27);
  v48 = v13;
  if (v28)
  {
    sub_6594();
    v29 = swift_slowAlloc();
    v46 = v18;
    v30 = v29;
    sub_36A54();
    v43 = swift_slowAlloc();
    *&v55[0] = v43;
    *v30 = 136315138;
    v53(v22, v24, v10);
    v31 = sub_69844(v22);
    v44 = v9;
    v45 = v22;
    v32 = v31;
    v34 = v33;
    v35 = sub_36BD4();
    v36(v35);
    v9 = v44;
    v37 = sub_862D8(v32, v34, v55);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_0, v26, v27, "#NLv4Transformer attempting to transform %s into HomeCommunicationNLIntent.", v30, 0xCu);
    sub_2714(v43);
    sub_6538();

    sub_6538();
  }

  else
  {

    v38 = sub_36BD4();
    v39(v38);
  }

  sub_2664(&qword_C0EA8, &unk_8FA00);
  v40 = sub_8C81C();
  v53(v9, v54, v10);
  sub_2FB74(v51, v9 + *(v50 + 20), &qword_C0438, &qword_8EBD0);
  v40(v55, v9);
  sub_365DC(v9);

  v41 = v55[1];
  v42 = v52;
  *v52 = v55[0];
  v42[1] = v41;
  *(v42 + 4) = v56;
  sub_115FC();
}

uint64_t sub_30580()
{
  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin15NLv4Transformer_transformer;
  v2 = sub_2664(&qword_C0EA8, &unk_8FA00);
  sub_6574(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin15NLv4Transformer_featureManager);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

void sub_30658()
{
  sub_306F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_306F4()
{
  if (!qword_C1820)
  {
    type metadata accessor for TransformerInput(255);
    sub_B9BC(&qword_C0438, &qword_8EBD0);
    v0 = sub_8C82C();
    if (!v1)
    {
      atomic_store(v0, &qword_C1820);
    }
  }
}

uint64_t sub_3079C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8BF1C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_3364(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_3086C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_8BF1C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_6270(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

void sub_30918()
{
  sub_8BF1C();
  if (v0 <= 0x3F)
  {
    sub_3099C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3099C()
{
  if (!qword_C1918)
  {
    sub_B9BC(&unk_C1920, &qword_90F28);
    v0 = sub_8D1CC();
    if (!v1)
    {
      atomic_store(v0, &qword_C1918);
    }
  }
}

uint64_t sub_30A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_2664(&qword_C05E8, &unk_8ECD0);
  v10 = sub_65E4(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_1D164();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  sub_36C30();
  v17 = sub_8BF1C();
  v18 = sub_3488(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_16854();
  v25 = v24 - v23;
  v26 = *(v20 + 16);
  v27 = sub_36BC8();
  v28(v27);
  v29 = sub_31C48(&v218);
  if (v219)
  {
    (*(v20 + 8))(v25, v17, v29);
    sub_E510(&v218, &v220);
    return sub_E510(&v220, a4);
  }

  v215 = a2;
  v216 = v25;
  v212 = v4;
  v213 = v15;
  sub_1D05C(&v218, &qword_C0438, &qword_8EBD0);
  if (qword_BF868 != -1)
  {
    swift_once();
  }

  v31 = sub_2664(&qword_C1958, &unk_90F30);
  sub_33F4(v31, qword_C3E98);
  v32 = sub_8C81C();
  v33 = v216;
  v32(&v220, v216);
  v34 = v217;
  if (v217)
  {

    return (*(v20 + 8))(v216, v17);
  }

  v209 = v20;
  v206 = a3;
  v207 = a1;
  v208 = a4;

  v35 = v220;
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v36 = sub_8CD0C();
  sub_33F4(v36, qword_C3DF8);

  v37 = sub_8CCEC();
  v38 = sub_8D11C();

  v210 = *(&v35 + 1);
  v214 = v35;
  v211 = v17;
  if (os_log_type_enabled(v37, v38))
  {
    sub_6594();
    v217 = 0;
    v39 = swift_slowAlloc();
    sub_36A54();
    v40 = swift_slowAlloc();
    *&v218 = v40;
    *v39 = 136315138;
    v220 = v35;

    v41 = sub_8CEEC();
    v43 = sub_862D8(v41, v42, &v218);

    *(v39 + 4) = v43;
    sub_36CEC(&dword_0, v44, v45, "#NLv4Transformer userDialogActParse %s into homeCommunicationNLIntent.");
    sub_2714(v40);
    sub_6538();

    v34 = v217;
    sub_6538();
  }

  sub_2FB74(v215, &v218, &qword_C0EB0, &qword_90F40);
  if (v219)
  {
    sub_E510(&v218, &v220);
    v46 = v214;

    v47 = sub_31D30();
    if (v47)
    {
      v48 = v47;
      v49 = v47;
      v50 = sub_8CCEC();
      v51 = sub_8D11C();

      if (os_log_type_enabled(v50, v51))
      {
        sub_6594();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        *(v52 + 4) = v49;
        *v53 = v48;
        v54 = v49;
        _os_log_impl(&dword_0, v50, v51, "#NLv4Transformer referenceResolution found a position reference %@", v52, 0xCu);
        sub_1D05C(v53, &qword_BFF40, &unk_90F70);
        sub_6538();

        sub_6538();
      }

      LOBYTE(v218) = 1;
      v223 = 1;
      v55 = v208;
      v208[3] = &type metadata for HomeCommunicationNLv4Intent;
      v55[4] = sub_366C4();
      sub_36AF8();
      v56 = swift_allocObject();
      *v55 = v56;
      *(v56 + 16) = 0;
      sub_36C6C(v56);
      *(v57 + 64) = 2031623;
      *(v57 + 72) = _swiftEmptyArrayStorage;
      *(v57 + 80) = _swiftEmptyArrayStorage;
      *(v57 + 88) = _swiftEmptyArrayStorage;
      *(v57 + 96) = _swiftEmptyArrayStorage;
      *(v57 + 104) = _swiftEmptyArrayStorage;
      *(v57 + 112) = _swiftEmptyArrayStorage;
      *(v57 + 120) = 0;
      *(v57 + 128) = 0;
      *(v57 + 136) = v218;
      *(v57 + 144) = 0;
      *(v57 + 152) = v223;
      *(v57 + 160) = 0;
      *(v57 + 168) = 0;
      *(v57 + 176) = _swiftEmptyArrayStorage;
      *(v57 + 184) = 0;
      *(v57 + 192) = 0;
      *(v57 + 200) = 3;
      *(v57 + 208) = v48;

      sub_2714(&v220);
      v58 = sub_36BE8();
      return v59(v58);
    }

    sub_2714(&v220);
  }

  else
  {
    v46 = v214;

    sub_1D05C(&v218, &qword_C0EB0, &qword_90F40);
  }

  v60 = sub_8CCEC();
  v61 = sub_8D11C();

  if (os_log_type_enabled(v60, v61))
  {
    sub_6594();
    v217 = v34;
    v62 = swift_slowAlloc();
    sub_36A54();
    v63 = swift_slowAlloc();
    *&v220 = v63;
    *v62 = 136315138;
    *&v218 = v46;
    sub_8C70C();

    v64 = sub_8CEEC();
    v66 = sub_862D8(v64, v65, &v220);

    *(v62 + 4) = v66;
    sub_36CEC(&dword_0, v67, v68, "#NLv4Transformer homeCommUsoTask %s into homeCommunicationNLIntent.");
    sub_2714(v63);
    sub_6538();

    v34 = v217;
    sub_6538();
  }

  if (qword_BF870 != -1)
  {
    swift_once();
  }

  v69 = sub_2664(&qword_C1960, &qword_90F48);
  sub_33F4(v69, qword_C3EB0);
  v70 = sub_8C81C();
  *&v220 = v214;
  v70(&v218, &v220);
  if (v34)
  {

    (*(v209 + 8))(v33, v211);
  }

  v224 = v218;
  if (qword_BF878 != -1)
  {
    swift_once();
  }

  v71 = sub_2664(&qword_C1968, &qword_90F50);
  sub_33F4(v71, qword_C3EC8);
  v72 = sub_8C81C();
  *&v218 = v214;
  v72(&v220, &v218);

  v74 = *(&v220 + 1);
  v73 = v220;
  sub_36638(v220);
  v75 = sub_8CCEC();
  v76 = sub_8D11C();
  v204 = v74;
  sub_36680(v73);
  v202 = v73;
  if (os_log_type_enabled(v75, v76))
  {
    sub_6594();
    v77 = swift_slowAlloc();
    sub_36A54();
    v78 = swift_slowAlloc();
    *&v220 = v78;
    *v77 = 136315138;
    if (v73 == 1)
    {
      v73 = 0;
    }

    else
    {
    }

    *&v218 = v73;
    sub_2664(&qword_C1980, &qword_90F68);
    v85 = sub_8CEEC();
    v87 = sub_862D8(v85, v86, &v220);

    *(v77 + 4) = v87;
    _os_log_impl(&dword_0, v75, v76, "#NLv4Transformer sendTask %s", v77, 0xCu);
    sub_2714(v78);
    sub_6538();

    sub_6538();

    v73 = v202;
  }

  else
  {
  }

  if (v224 > 1)
  {
    v89 = 0;
    v90 = 0;
    v197 = 0;
    v195 = 0;
    v91 = 1;
    v92 = 1;
  }

  else
  {
    if (v73 == 1)
    {
      v88 = 0;
    }

    else
    {

      v88 = v73;
    }

    v93 = sub_32054(v88);
    v92 = v94;
    v205 = v95;
    v91 = v96;

    v97 = sub_8CCEC();
    v98 = sub_8D11C();
    v203 = v93;
    if (os_log_type_enabled(v97, v98))
    {
      v201 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      *&v218 = v217;
      *v201 = 136315394;
      *&v220 = v93;
      BYTE8(v220) = v92 & 1;
      sub_2664(&qword_C10B0, &unk_8FD20);
      v99 = sub_8CEEC();
      v101 = v98;
      v102 = sub_862D8(v99, v100, &v218);

      v103 = v201;
      *(v201 + 4) = v102;
      *(v103 + 6) = 2080;
      v104 = v103;
      sub_36C80();
      *&v220 = v105;
      BYTE8(v220) = v91 & 1;
      v106 = sub_8CEEC();
      v108 = sub_862D8(v106, v107, &v218);
      v73 = v202;

      *(v104 + 14) = v108;
      _os_log_impl(&dword_0, v97, v101, "#NLv4Transformer startTimeMs=%s and endTimeMs=%s", v104, 0x16u);
      swift_arrayDestroy();
      sub_6538();

      sub_6538();
    }

    sub_2FB74(v215, &v218, &qword_C0EB0, &qword_90F40);
    if (v219)
    {
      HIDWORD(v200) = v91;
      sub_E510(&v218, &v220);
      sub_2FCD4();
      sub_2FB74(v212, v213, &qword_C05E8, &unk_8ECD0);
      v109 = sub_8CDCC();
      if (sub_3364(v213, 1, v109) == 1)
      {
        sub_36AD4();
        sub_1D05C(v110, v111, v112);
        sub_2714(&v220);
        v73 = v202;
        sub_1D05C(v213, &qword_C05E8, &unk_8ECD0);
        sub_36C44();
      }

      else
      {
        v197 = sub_8CDBC();
        v195 = v113;
        sub_1D05C(v212, &qword_C05E8, &unk_8ECD0);
        sub_2714(&v220);
        (*(*(v109 - 8) + 8))(v213, v109);
      }

      sub_36C80();
      v90 = v203;
      v91 = HIDWORD(v200);
    }

    else
    {
      sub_1D05C(&v218, &qword_C0EB0, &qword_90F40);
      sub_36C44();
      sub_36C80();
      v90 = v203;
    }
  }

  HIDWORD(v200) = v91;
  v217 = 0;
  v205 = v89;
  v203 = v90;
  HIDWORD(v193) = v92;
  if (v73 == 1)
  {
    v114 = 0;
  }

  else
  {
    v114 = v204;
  }

  sub_323F8(v114, v206, v79, v80, v81, v82, v83, v84, v190, v191, v192, v193, v195, v197, v199, v200, v201, v202, v203, v204);
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v122 = v121;

  if (v118)
  {
    sub_2664(&qword_C1978, &unk_90F58);
    v123 = swift_allocObject();
    v123[1] = xmmword_8E3F0;
    *(v123 + 4) = v116;
    *(v123 + 5) = v118;
    *(v123 + 6) = v120;
    *(v123 + 7) = v122;
    v212 = v123;
    v124 = 1;
LABEL_52:
    v215 = 0x80000000000953D0;
    v213 = 0x8000000000096FB0;
    v206 = 0x8000000000096FD0;
    v126 = (v212 + 56);
    v125 = _swiftEmptyArrayStorage;
    v201 = _swiftEmptyArrayStorage;
    v199 = _swiftEmptyArrayStorage;
    while (1)
    {
      v127 = *(v126 - 3);
      v128 = *(v126 - 2);
      v129 = *(v126 - 1);
      v130 = *v126;
      v131 = v129 == 0xD000000000000012 && v215 == v130;
      if (v131 || (sub_36A84(), (sub_8D45C() & 1) != 0) || (v129 == 0xD000000000000019 ? (v132 = v213 == v130) : (v132 = 0), v132 || (sub_8D45C() & 1) != 0 || (v129 == 0xD00000000000001ALL ? (v133 = v206 == v130) : (v133 = 0), v133 || (sub_8D45C() & 1) != 0)))
      {
        swift_bridgeObjectRetain_n();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = *(v125 + 2);
          v146 = sub_22AB0();
          v125 = sub_75D80(v146, v147, v148, v125);
        }

        v116 = *(v125 + 2);
        v134 = *(v125 + 3);
        v135 = (v116 + 1);
        if (v116 >= v134 >> 1)
        {
          v149 = sub_36AA8(v134);
          v136 = sub_75D80(v149, v150, v151, v125);
          v125 = v136;
        }

        else
        {
          v136 = v125;
        }

        goto LABEL_72;
      }

      v138 = v129 == 0xD000000000000012 && 0x80000000000953F0 == v130;
      if (v138 || (sub_36A84(), (sub_8D45C() & 1) != 0))
      {
        swift_bridgeObjectRetain_n();

        v135 = v201;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v152 = *(v135 + 2);
          v153 = sub_22AB0();
          v135 = sub_75D80(v153, v154, v155, v135);
        }

        sub_36BA8();
        if (v141)
        {
          v156 = sub_36AA8(v140);
          v136 = sub_75D80(v156, v157, v158, v159);
          v160 = &v226;
LABEL_96:
          *(v160 - 32) = v136;
          goto LABEL_72;
        }

        v142 = &v226;
      }

      else
      {
        if (v129 != 0xD000000000000012 || 0x8000000000095FB0 != v130)
        {
          sub_36A84();
          if ((sub_8D45C() & 1) == 0)
          {
            goto LABEL_73;
          }
        }

        swift_bridgeObjectRetain_n();

        v135 = v199;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v161 = *(v135 + 2);
          v162 = sub_22AB0();
          v135 = sub_75D80(v162, v163, v164, v135);
        }

        sub_36BA8();
        if (v141)
        {
          v165 = sub_36AA8(v144);
          v136 = sub_75D80(v165, v166, v167, v168);
          v160 = &v225;
          goto LABEL_96;
        }

        v142 = &v225;
      }

      *(v142 - 32) = v139;
      v136 = v139;
LABEL_72:
      *(v136 + 2) = v135;
      v137 = &v136[16 * v116];
      *(v137 + 4) = v127;
      *(v137 + 5) = v128;

LABEL_73:
      v126 += 4;
      if (!--v124)
      {
        goto LABEL_98;
      }
    }
  }

  v124 = _swiftEmptyArrayStorage[2];
  v212 = _swiftEmptyArrayStorage;
  v125 = _swiftEmptyArrayStorage;
  v201 = _swiftEmptyArrayStorage;
  v199 = _swiftEmptyArrayStorage;
  if (v124)
  {
    goto LABEL_52;
  }

LABEL_98:
  v169 = type metadata accessor for TransformerInput(0);
  sub_2FB74(v207 + *(v169 + 20), &v220, &qword_C0438, &qword_8EBD0);
  v170 = v221;
  if (!v221)
  {
    sub_1D05C(&v220, &qword_C0438, &qword_8EBD0);
    goto LABEL_102;
  }

  v171 = v222;
  sub_622C(&v220, v221);
  LOBYTE(v171) = (*(v171 + 64))(v170, v171);
  sub_2714(&v220);
  if ((v171 & 1) == 0)
  {
LABEL_102:
    v173 = v202;
    sub_33EB0();
    v172 = v174;
    goto LABEL_103;
  }

  v172 = 1;
  v173 = v202;
LABEL_103:
  if (v173 == 1)
  {
    v175 = 0;
  }

  else
  {

    v175 = v173;
  }

  v176 = sub_34A80(v175);

  if (v173 == 1)
  {
    v177 = 0;
  }

  else
  {

    v177 = v173;
  }

  v178 = sub_34DA4(v177);
  v180 = v179;

  LOBYTE(v220) = v194 & 1;
  LOBYTE(v218) = BYTE4(v200) & 1;
  v181 = v208;
  v208[3] = &type metadata for HomeCommunicationNLv4Intent;
  v181[4] = sub_366C4();
  sub_36AF8();
  v182 = swift_allocObject();
  *v181 = v182;
  *(v182 + 16) = v224;
  sub_36C6C(v182);
  *(v183 + 64) = 7;
  *(v183 + 65) = v176 & 1;
  *(v183 + 66) = 31;
  *(v183 + 67) = v172 & 1;
  *(v183 + 72) = _swiftEmptyArrayStorage;
  *(v183 + 80) = _swiftEmptyArrayStorage;
  *(v183 + 88) = _swiftEmptyArrayStorage;
  *(v183 + 96) = v125;
  v184 = v199;
  *(v183 + 104) = v201;
  *(v183 + 112) = v184;
  v185 = v203;
  *(v183 + 120) = 0;
  *(v183 + 128) = v185;
  *(v183 + 136) = v220;
  sub_36C80();
  *(v186 + 144) = v187;
  *(v186 + 152) = v218;
  *(v186 + 160) = v198;
  *(v186 + 168) = v196;
  *(v186 + 176) = v212;
  *(v186 + 184) = v178;
  *(v186 + 192) = v180;
  *(v186 + 200) = 3;
  *(v186 + 208) = 0;
  sub_36680(v173);

  v188 = sub_36BE8();
  return v189(v188);
}

double sub_31C48@<D0>(uint64_t a1@<X8>)
{
  if (sub_8BEBC())
  {
    *(a1 + 24) = &type metadata for HomeCommunicationNLv4Intent;
    *(a1 + 32) = sub_366C4();
    sub_36AF8();
    v2 = swift_allocObject();
    *a1 = v2;
    v3 = v2 + 16;
    v4 = 0;
    return sub_240A8(v4, v3);
  }

  if (sub_8BECC())
  {
    *(a1 + 24) = &type metadata for HomeCommunicationNLv4Intent;
    *(a1 + 32) = sub_366C4();
    sub_36AF8();
    v5 = swift_allocObject();
    *a1 = v5;
    v3 = v5 + 16;
    v4 = 1;
    return sub_240A8(v4, v3);
  }

  if (sub_8BEDC())
  {
    *(a1 + 24) = &type metadata for HomeCommunicationNLv4Intent;
    *(a1 + 32) = sub_366C4();
    sub_36AF8();
    v6 = swift_allocObject();
    *a1 = v6;
    v3 = v6 + 16;
    v4 = 2;
    return sub_240A8(v4, v3);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_31D30()
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);
  v1 = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#ReferenceResolution findPositionReference called", v3, 2u);
  }

  sub_8C51C();
  if (v16[3])
  {
    sub_8C56C();
    if (swift_dynamicCast())
    {

      sub_8C09C();

      if (v16[0])
      {

        sub_8C19C();

        sub_34F14();
        v5 = v4;

        if (v5)
        {
          v6 = v5;
          v7 = sub_8CCEC();
          v8 = sub_8D11C();

          if (os_log_type_enabled(v7, v8))
          {
            v9 = swift_slowAlloc();
            v10 = swift_slowAlloc();
            *v9 = 138412290;
            *(v9 + 4) = v6;
            *v10 = v5;
            v11 = v6;
            _os_log_impl(&dword_0, v7, v8, "#ReferenceResolution SRR selected homeName: %@ as the resolution result", v9, 0xCu);
            sub_1D05C(v10, &qword_BFF40, &unk_90F70);
          }

          return v5;
        }
      }
    }
  }

  else
  {
    sub_1D05C(v16, &qword_C05F0, &unk_8F020);
  }

  v12 = sub_8CCEC();
  v13 = sub_8D11C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "#ReferenceResolution returned nil", v14, 2u);
  }

  return 0;
}

uint64_t sub_32054(uint64_t a1)
{
  v2 = sub_2664(&qword_C1988, &qword_90F80);
  sub_65E4(v2);
  v4 = *(v3 + 64);
  sub_1D394();
  __chkstk_darwin(v5);
  v7 = &v41[-v6];
  v8 = sub_2664(&qword_C1990, &qword_90F88);
  sub_65E4(v8);
  v10 = *(v9 + 64);
  sub_1D394();
  __chkstk_darwin(v11);
  v13 = &v41[-v12];
  v14 = sub_8C2CC();
  v15 = sub_3488(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_16854();
  v22 = v21 - v20;
  if (!a1 || (v23 = sub_8C18C()) == 0)
  {
    if (qword_BF818 != -1)
    {
      sub_650C();
      swift_once();
    }

    v25 = sub_8CD0C();
    sub_22B78(v25, qword_C3DF8);
    v26 = sub_8CCEC();
    v27 = sub_8D11C();
    if (!sub_1D1B8(v27))
    {
      goto LABEL_14;
    }

LABEL_13:
    v31 = sub_E8E0();
    sub_1D274(v31);
    sub_36A24();
    _os_log_impl(v32, v33, v34, v35, v36, 2u);
    sub_6538();

LABEL_14:

    result = 0;
    v38 = 1;
LABEL_15:
    v41[8] = v38;
    v41[0] = v38;
    return result;
  }

  sub_758D8(v23, v7);

  v24 = sub_8C43C();
  if (sub_3364(v7, 1, v24) == 1)
  {
    sub_1D05C(v7, &qword_C1988, &qword_90F80);
    sub_6270(v13, 1, 1, v14);
    goto LABEL_10;
  }

  v28 = sub_8C42C();
  (*(*(v24 - 8) + 8))(v7, v24);
  sub_758F0(v28, v13);

  if (sub_3364(v13, 1, v14) == 1)
  {
LABEL_10:
    sub_1D05C(v13, &qword_C1990, &qword_90F88);
    if (qword_BF818 != -1)
    {
      sub_650C();
      swift_once();
    }

    v29 = sub_8CD0C();
    sub_22B78(v29, qword_C3DF8);
    v26 = sub_8CCEC();
    v30 = sub_8D12C();
    if (!sub_1D1B8(v30))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  (*(v17 + 32))(v22, v13, v14);
  result = sub_8C2BC();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v39 = result;
    v40 = sub_8C2AC();
    result = (*(v17 + 8))(v22, v14);
    if ((v40 & 0x80000000) == 0)
    {
      v38 = 0;
      result = v39;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_323F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_11614();
  a19 = v21;
  a20 = v22;
  v297 = v23;
  v24 = sub_2664(&qword_C19C8, &qword_90FB0);
  sub_65E4(v24);
  v26 = *(v25 + 64);
  sub_1D394();
  __chkstk_darwin(v27);
  sub_1D230(v272 - v28);
  v288 = sub_8B00C();
  v29 = sub_3488(v288);
  v285 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_1D164();
  sub_115DC();
  __chkstk_darwin(v33);
  sub_22B34();
  sub_1D230(v34);
  v324 = sub_8C48C();
  v35 = sub_3488(v324);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_16854();
  sub_1D230(v41 - v40);
  v325 = sub_2664(&qword_C0000, &qword_8E630);
  v42 = sub_6574(v325);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  sub_1D164();
  sub_115DC();
  __chkstk_darwin(v45);
  sub_36A60();
  sub_115DC();
  __chkstk_darwin(v46);
  sub_22B34();
  v328 = v47;
  v48 = sub_2664(&qword_C0008, &qword_8FCD0);
  v49 = sub_65E4(v48);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  sub_1D164();
  sub_115DC();
  __chkstk_darwin(v52);
  sub_36A60();
  sub_115DC();
  __chkstk_darwin(v53);
  sub_36A60();
  sub_115DC();
  __chkstk_darwin(v54);
  sub_36A60();
  sub_115DC();
  __chkstk_darwin(v55);
  sub_36C58();
  __chkstk_darwin(v56);
  sub_36A60();
  v310 = v57;
  sub_22ACC();
  __chkstk_darwin(v58);
  sub_36A60();
  sub_115DC();
  v60 = __chkstk_darwin(v59);
  v62 = v272 - v61;
  __chkstk_darwin(v60);
  sub_22B34();
  v318 = v63;
  v327 = sub_8C29C();
  v64 = sub_3488(v327);
  v66 = v65;
  v68 = *(v67 + 64);
  __chkstk_darwin(v64);
  sub_1D164();
  sub_115DC();
  __chkstk_darwin(v69);
  sub_36A60();
  sub_115DC();
  __chkstk_darwin(v70);
  sub_36A60();
  sub_115DC();
  __chkstk_darwin(v71);
  sub_36A60();
  sub_115DC();
  __chkstk_darwin(v72);
  sub_36A60();
  sub_115DC();
  __chkstk_darwin(v73);
  sub_36A60();
  v326 = v74;
  sub_22ACC();
  __chkstk_darwin(v75);
  sub_22B34();
  sub_1D230(v76);
  v77 = sub_2664(&qword_C19D0, &qword_90FB8);
  v78 = sub_65E4(v77);
  v80 = *(v79 + 64);
  __chkstk_darwin(v78);
  sub_1D164();
  sub_115DC();
  __chkstk_darwin(v81);
  v83 = v272 - v82;
  v84 = sub_4E03C(0);
  v85 = &unk_8E000;
  v309 = v62;
  v313 = v66;
  if ((v84 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_36AC8();
  if (v139)
  {
    goto LABEL_4;
  }

LABEL_118:
  sub_650C();
  swift_once();
LABEL_4:
  v86 = sub_8CD0C();
  sub_33F4(v86, qword_C3DF8);
  v87 = sub_8CCEC();
  v62 = sub_8D11C();
  if (sub_125A0(v62))
  {
    v88 = sub_E8E0();
    sub_1D274(v88);
    _os_log_impl(&dword_0, v87, v62, "#NLv4Transformer Checking UsoEntitySpans", v20, 2u);
    sub_6538();
  }

  if (v297)
  {
    sub_87174();
    v279 = v90;
    if (v91)
    {
      v92 = v89;

      v93 = sub_8CCEC();
      v94 = sub_8D11C();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v331[0] = swift_slowAlloc();
        *v95 = v85[125];

        v96 = sub_36BC8();
        v99 = sub_862D8(v96, v97, v98);

        *(v95 + 4) = v99;
        *(v95 + 12) = 2080;

        v100 = sub_862D8(v279, v92, v331);

        *(v95 + 14) = v100;
        sub_36A24();
        _os_log_impl(v101, v102, v103, v104, v105, 0x16u);
        swift_arrayDestroy();
        goto LABEL_10;
      }

      goto LABEL_34;
    }
  }

  v106 = sub_8CCEC();
  v107 = sub_8D11C();
  if (sub_125A0(v107))
  {
    v108 = sub_E8E0();
    sub_1D274(v108);
    _os_log_impl(&dword_0, v106, v107, "NLv4Transformer did not find HomeEntity using UsoEntitySpan. Checking UsoIdentifiers.", v20, 2u);
    sub_6538();
  }

  sub_36B2C();
  v66 = v313;
LABEL_15:
  if ((sub_16C80() & 1) == 0)
  {
    sub_36AC8();
    if (!v139)
    {
      sub_650C();
      swift_once();
    }

    v114 = sub_8CD0C();
    sub_22B78(v114, qword_C3DF8);
    v93 = sub_8CCEC();
    v115 = sub_8D11C();
    if (!sub_1D1B8(v115))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!v297)
  {
    goto LABEL_30;
  }

  sub_36BFC();
  v109 = sub_8C3EC();
  if (!v109)
  {
    goto LABEL_30;
  }

  v110 = v109;
  if (!*(v109 + 16))
  {

LABEL_30:
    sub_36AC8();
    if (!v139)
    {
      sub_650C();
      swift_once();
    }

    v116 = sub_8CD0C();
    sub_22B78(v116, qword_C3DF8);
    v93 = sub_8CCEC();
    v117 = sub_8D11C();
    if (!sub_1D1B8(v117))
    {
      goto LABEL_34;
    }

LABEL_33:
    v118 = sub_E8E0();
    sub_1D274(v118);
    sub_36A24();
    _os_log_impl(v119, v120, v121, v122, v123, 2u);
    sub_6538();

    goto LABEL_34;
  }

  v307 = v20;
  sub_75908(v109, v83);
  v111 = v327;
  if (sub_3364(v83, 1, v327) == 1)
  {

    sub_1D05C(v83, &qword_C19D0, &qword_90FB8);
    sub_36AC8();
    if (!v139)
    {
      sub_650C();
      swift_once();
    }

    v112 = sub_8CD0C();
    sub_22B78(v112, qword_C3DF8);
    v93 = sub_8CCEC();
    v113 = sub_8D11C();
    if (!sub_1D1B8(v113))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v272[1] = sub_8C27C();
  v272[2] = v124;
  v320 = *(v66 + 8);
  v321 = v66 + 8;
  v320(v83, v111);
  sub_668C(v110);

  v125 = sub_6D60();

  v127 = v111;
  v282 = v125[2];
  if (!v282)
  {
    goto LABEL_95;
  }

  v128 = 0;
  v281 = v125 + 4;
  v319 = v66 + 16;
  v312 = enum case for IdentifierNamespace.nsSemanticValue(_:);
  v317 = v37 + 13;
  v302 = v37 + 4;
  v311 = v37 + 1;
  v276 = (v66 + 32);
  v304 = enum case for IdentifierNamespace.nsHomeKitEntityType(_:);
  v295 = enum case for IdentifierNamespace.nsItemId(_:);
  *&v126 = v85[125];
  v278 = v126;
  v20 = &qword_8FCD0;
  v85 = v127;
  v280 = v125;
  do
  {
    if (v128 >= v125[2])
    {
      __break(1u);
      goto LABEL_118;
    }

    v293 = v128;
    v37 = v281[v128];
    isa = v37[2].isa;
    if (!isa)
    {

      goto LABEL_86;
    }

    v129 = v37 + ((*(v66 + 80) + 32) & ~*(v66 + 80));

    v130 = 0;
    v131 = v294;
    v303 = v129;
    v323 = v37;
    do
    {
      if (v130 >= v37[2].isa)
      {
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:

        v83 = v285;
        v255 = v284;
        v157 = v288;
        (*(v285 + 4))(v284, v127, v288);
        v256 = v277;
        if (qword_BF818 != -1)
        {
          sub_650C();
          swift_once();
        }

        v257 = sub_8CD0C();
        sub_22B78(v257, qword_C3DF8);
        v20 = v283;
        (*(v83 + 2))(v283, v255, v157);

        v258 = v273;

        v127 = v255;
        v37 = sub_8CCEC();
        v259 = sub_8D11C();

        if (os_log_type_enabled(v37, v259))
        {
          v260 = swift_slowAlloc();
          LODWORD(v327) = v259;
          v261 = v260;
          v328 = swift_slowAlloc();
          v331[0] = v328;
          *v261 = 136315906;
          *(v261 + 4) = sub_862D8(v274, v256, v331);
          v326 = v37;
          v262 = v83;
          *(v261 + 12) = 2080;
          *(v261 + 14) = sub_862D8(v279, v258, v331);
          *(v261 + 22) = 2080;
          v263 = v127;
          v264 = sub_862D8(v62, v130, v331);

          *(v261 + 24) = v264;
          *(v261 + 32) = 2080;
          sub_367AC(&qword_C19D8, &type metadata accessor for UUID);
          v265 = sub_8D43C();
          v267 = v266;
          v268 = *(v262 + 1);
          v268(v20, v157);
          v269 = sub_862D8(v265, v267, v331);

          *(v261 + 34) = v269;
          v270 = v326;
          _os_log_impl(&dword_0, v326, v327, "#NLv4Transformer selected home entity from identifiers - name : %s, type : %s, identifierString : %s, identifier : %s", v261, 0x2Au);
          swift_arrayDestroy();
          sub_6538();

          sub_6538();

          v268(v263, v157);
        }

        else
        {
LABEL_116:

          v271 = *(v83 + 1);
          v271(v20, v157);
          v271(v127, v157);
        }

        goto LABEL_35;
      }

      v314 = *(v313 + 72);
      v316 = *(v313 + 16);
      v316(v326, &v129[v314 * v130], v85);
      v132 = v318;
      sub_8C23C();
      v133 = v324;
      v315 = v317->isa;
      v315(v62, v312, v324);
      sub_22B0C();
      sub_6270(v134, v135, v136, v133);
      v127 = *(v325 + 48);
      v137 = v328;
      v83 = v20;
      sub_36B50(v132, v328);
      sub_36B50(v62, v137 + v127);
      sub_36A34(v137);
      if (v139)
      {
        sub_36B14(v62);
        sub_36B14(v132);
        sub_36A34(v328 + v127);
        if (!v139)
        {
          goto LABEL_50;
        }

        sub_1D05C(v328, &qword_C0008, v20);
        v37 = v323;
        v85 = v327;
LABEL_55:
        v127 = v291;
        v275 = *v276;
        v275(v291, v326, v85);
        v274 = sub_8C27C();
        v277 = v145;
        v146 = sub_36A98();
        v147(v146);
        v130 = 0;
        v62 = v129;
        v148 = v299;
        v149 = &qword_C0008;
LABEL_56:
        if (v130 >= v37[2].isa)
        {
          goto LABEL_110;
        }

        v316(v148, v62, v327);
        v150 = v310;
        sub_8C23C();
        v151 = v307;
        v83 = v20;
        v152 = v149;
        v153 = v324;
        v315(v307, v304, v324);
        sub_22B0C();
        sub_6270(v154, v155, v156, v153);
        v127 = *(v325 + 48);
        v157 = v308;
        sub_36B50(v150, v308);
        sub_36B50(v151, v157 + v127);
        sub_36A34(v157);
        if (v139)
        {
          sub_36B14(v151);
          sub_36B14(v150);
          sub_36A34(v157 + v127);
          v149 = v152;
          v20 = v83;
          if (v139)
          {
            sub_36ABC();
            sub_1D05C(v170, v171, v172);
            v173 = v303;
            v37 = v323;
LABEL_69:
            v127 = v289;
            v85 = v327;
            sub_36B38();
            v174();
            v279 = sub_8C27C();
            v273 = v175;
            v176 = sub_36A98();
            v177(v176);
            v178 = 0;
            v62 = v290;
LABEL_70:
            if (v178 >= v37[2].isa)
            {
              __break(1u);
              goto LABEL_116;
            }

            v316(v305, v173, v85);
            v179 = v300;
            sub_8C23C();
            v83 = v301;
            v180 = v324;
            v315(v301, v295, v324);
            sub_22B0C();
            sub_6270(v181, v182, v183, v180);
            v127 = *(v325 + 48);
            sub_2FB74(v179, v62, v149, v20);
            sub_2FB74(v83, &v62[v127], v149, v20);
            sub_369EC(v62);
            if (v139)
            {
              sub_36ABC();
              sub_1D05C(v184, v185, v186);
              sub_36ABC();
              sub_1D05C(v187, v188, v189);
              sub_369EC(&v62[v127]);
              v37 = v323;
              if (v139)
              {
                sub_36ABC();
                sub_1D05C(v206, v207, v208);
                v85 = v327;
LABEL_83:
                sub_36B38();
                v209();
                v62 = sub_8C27C();
                v130 = v210;
                v211 = sub_36A98();
                v212(v211);
                v127 = v287;
                sub_8AFCC();
                if (sub_3364(v127, 1, v288) != 1)
                {
                  goto LABEL_111;
                }

                sub_1D05C(v127, &qword_C19C8, &qword_90FB0);
LABEL_85:
                sub_36B2C();
                break;
              }
            }

            else
            {
              v190 = v296;
              sub_2FB74(v62, v296, v149, v20);
              sub_369EC(&v62[v127]);
              if (!v191)
              {
                sub_36B04();
                v201 = sub_36C1C();
                v202(v201);
                sub_36A0C();
                sub_367AC(&qword_C0010, v203);
                LODWORD(v303) = sub_36B68();
                v127 = v190;
                v157 = v20;
                v204 = v149;
                v205 = v311->isa;
                (v311->isa)(v83, v180);
                sub_1D05C(v301, v204, v157);
                sub_1D05C(v300, v204, v157);
                v205(v190, v180);
                v149 = v204;
                v20 = v157;
                sub_1D05C(v62, v149, v157);
                v85 = v327;
                v37 = v323;
                if (v303)
                {
                  goto LABEL_83;
                }

LABEL_81:
                v178 = (v178 + 1);
                v320(v305, v85);
                v173 += v314;
                if (isa == v178)
                {

                  goto LABEL_85;
                }

                goto LABEL_70;
              }

              sub_36ABC();
              sub_1D05C(v192, v193, v194);
              sub_36ABC();
              sub_1D05C(v195, v196, v197);
              v198 = v311->isa;
              v199 = sub_36BBC();
              v200(v199);
              v37 = v323;
            }

            sub_1D05C(v62, &qword_C0000, &qword_8E630);
            v85 = v327;
            goto LABEL_81;
          }
        }

        else
        {
          v158 = v152;
          v159 = v298;
          sub_36B50(v157, v298);
          sub_36A34(v157 + v127);
          v20 = v83;
          v161 = v153;
          if (!v160)
          {
            sub_36B04();
            v165 = sub_36C1C();
            v166(v165);
            sub_36A0C();
            sub_367AC(&qword_C0010, v167);
            v157 = sub_36B68();
            v127 = v311;
            v168 = v311->isa;
            (v311->isa)(v83, v161);
            sub_36B8C(&a16);
            sub_1D05C(v310, v158, v83);
            v169 = v159;
            v37 = v323;
            v168(v169, v161);
            sub_36B8C(&a17);
            v148 = v299;
            v149 = v158;
            v173 = v303;
            if (v157)
            {
              goto LABEL_69;
            }

LABEL_67:
            ++v130;
            v320(v148, v327);
            v62 += v314;
            if (isa == v130)
            {

              sub_36B2C();
              v85 = v327;
              break;
            }

            goto LABEL_56;
          }

          sub_36B8C(&a16);
          sub_1D05C(v310, v158, v83);
          v162 = v311->isa;
          v163 = sub_36BBC();
          v164(v163);
          v148 = v299;
          v149 = v158;
        }

        sub_1D05C(v157, &qword_C0000, &qword_8E630);
        v37 = v323;
        goto LABEL_67;
      }

      v138 = v328;
      sub_36B50(v328, v131);
      sub_36A34(v138 + v127);
      v140 = v133;
      if (v139)
      {
        sub_36B14(v62);
        sub_36B14(v318);
        (v311->isa)(v131, v133);
LABEL_50:
        sub_1D05C(v328, &qword_C0000, &qword_8E630);
        v37 = v323;
        v85 = v327;
        goto LABEL_52;
      }

      sub_36B04();
      v141 = v328;
      v142 = v306;
      v143(v306, v328 + v127, v140);
      sub_36A0C();
      sub_367AC(&qword_C0010, v144);
      v127 = sub_8CE9C();
      v62 = v311->isa;
      (v311->isa)(v142, v140);
      sub_36B14(v309);
      sub_36B14(v318);
      v129 = v303;
      (v62)(v131, v140);
      sub_36B2C();
      sub_36B14(v141);
      v37 = v323;
      v85 = v327;
      if (v127)
      {
        goto LABEL_55;
      }

LABEL_52:
      ++v130;
      v320(v326, v85);
    }

    while (isa != v130);
LABEL_86:
    sub_36AC8();
    if (!v139)
    {
      sub_650C();
      swift_once();
    }

    v213 = sub_8CD0C();
    sub_22B78(v213, qword_C3DF8);

    v214 = sub_8CCEC();
    v215 = sub_8D12C();

    v216 = os_log_type_enabled(v214, v215);
    v66 = v313;
    if (v216)
    {
      v217 = v37;
      v83 = v20;
      v62 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v37 = v218;
      v331[0] = v218;
      *v62 = v278;
      if (v217[2].isa)
      {
        v219 = *(v66 + 16);
        v220 = v217 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
        v221 = v218;
        v222 = v215;
        v223 = v85;
        v224 = v292;
        v219(v292, v220, v223);
        v225 = sub_8C24C();
        v226 = v225;
        v227 = HIDWORD(v225) & 1;
        v228 = v224;
        v85 = v223;
        v215 = v222;
        v37 = v221;
        v320(v228, v85);
      }

      else
      {
        v226 = 0;
        LOBYTE(v227) = 1;
      }

      v329 = v226;
      v330 = v227;
      sub_2664(&qword_C0020, &qword_90FC0);
      v229 = sub_8CEEC();
      v231 = sub_862D8(v229, v230, v331);

      *(v62 + 4) = v231;
      *(v62 + 6) = 2080;
      v232 = sub_8D05C();
      v234 = v233;

      v127 = sub_862D8(v232, v234, v331);

      *(v62 + 14) = v127;
      _os_log_impl(&dword_0, v214, v215, "#NLv4Transformer Dropped identifier group %s: %s due to missing value", v62, 0x16u);
      swift_arrayDestroy();
      sub_6538();

      sub_6538();

      sub_36B2C();
      v66 = v313;
      v20 = v83;
    }

    else
    {
    }

    v128 = v293 + 1;
    v125 = v280;
  }

  while (v293 + 1 != v282);
LABEL_95:

  sub_36BFC();
  v235 = sub_8C3EC();
  if (!v235)
  {
    goto LABEL_104;
  }

  v236 = v286;
  sub_75908(v235, v286);

  sub_369EC(v236);
  if (v139)
  {

    sub_1D05C(v236, &qword_C19D0, &qword_90FB8);
    goto LABEL_105;
  }

  sub_8C28C();
  v238 = v237;
  v239 = sub_36A98();
  v240(v239);
  if (!v238)
  {
LABEL_104:

LABEL_105:
    sub_36AC8();
    if (!v139)
    {
      sub_650C();
      swift_once();
    }

    v253 = sub_8CD0C();
    sub_22B78(v253, qword_C3DF8);
    v93 = sub_8CCEC();
    v254 = sub_8D11C();
    if (!sub_1D1B8(v254))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  sub_36AC8();
  if (!v139)
  {
    sub_650C();
    swift_once();
  }

  v241 = sub_8CD0C();
  sub_22B78(v241, qword_C3DF8);

  v93 = sub_8CCEC();
  v242 = sub_8D11C();

  if (os_log_type_enabled(v93, v242))
  {
    sub_6594();
    v243 = swift_slowAlloc();
    sub_36A54();
    v244 = swift_slowAlloc();
    v331[0] = v244;
    *v243 = 136315138;
    v245 = sub_36BC8();
    *(v243 + 4) = sub_862D8(v245, v246, v247);
    sub_36A24();
    _os_log_impl(v248, v249, v250, v251, v252, 0xCu);
    sub_2714(v244);
LABEL_10:
    sub_6538();

    sub_6538();
  }

LABEL_34:

LABEL_35:
  sub_36BC8();
  sub_115FC();
}

void sub_33EB0()
{
  sub_11614();
  v146 = v1;
  v3 = v2;
  v5 = v4;
  v145 = sub_8C55C();
  v6 = sub_3488(v145);
  v143 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_16854();
  v138 = v11 - v10;
  v139 = sub_2664(&qword_C1998, &qword_90F90);
  sub_6574(v139);
  v13 = *(v12 + 64);
  sub_1D394();
  __chkstk_darwin(v14);
  v144 = &v138 - v15;
  v16 = sub_2664(&qword_C19A0, &qword_90F98);
  v17 = sub_65E4(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_1D164();
  v142 = v20 - v21;
  sub_22ACC();
  __chkstk_darwin(v22);
  sub_36A60();
  v140 = v23;
  sub_22ACC();
  __chkstk_darwin(v24);
  sub_22B34();
  v141 = v25;
  v26 = sub_8C0BC();
  v27 = sub_3488(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_16854();
  v34 = v33 - v32;
  v35 = sub_2664(&qword_C19A8, &qword_90FA0);
  sub_6574(v35);
  v37 = *(v36 + 64);
  sub_1D394();
  __chkstk_darwin(v38);
  v40 = &v138 - v39;
  v41 = sub_2664(&qword_C19B0, &qword_90FA8);
  v42 = sub_65E4(v41);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  sub_1D164();
  v47 = v45 - v46;
  __chkstk_darwin(v48);
  sub_36C58();
  __chkstk_darwin(v49);
  v51 = &v138 - v50;
  v147 = v5;
  if (v5 == 1 || !v3)
  {
    sub_6270(&v138 - v50, 1, 1, v26);
  }

  else
  {
    sub_8C0AC();
  }

  (*(v29 + 104))(v0, enum case for UsoEntity_common_UserEntity.DefinedValues.common_UserEntity_Everywhere(_:), v26);
  sub_22B0C();
  sub_6270(v52, v53, v54, v26);
  v55 = *(v35 + 48);
  sub_2FB74(v51, v40, &qword_C19B0, &qword_90FA8);
  sub_2FB74(v0, &v40[v55], &qword_C19B0, &qword_90FA8);
  sub_369EC(v40);
  if (v62)
  {
    sub_36AD4();
    sub_1D05C(v56, v57, v58);
    sub_36AD4();
    sub_1D05C(v59, v60, v61);
    sub_369EC(&v40[v55]);
    if (v62)
    {
      sub_1D05C(v40, &qword_C19B0, &qword_90FA8);
      goto LABEL_31;
    }
  }

  else
  {
    sub_2FB74(v40, v47, &qword_C19B0, &qword_90FA8);
    sub_369EC(&v40[v55]);
    if (!v62)
    {
      (*(v29 + 32))(v34, &v40[v55], v26);
      sub_367AC(&qword_C19C0, &type metadata accessor for UsoEntity_common_UserEntity.DefinedValues);
      v73 = sub_8CE9C();
      v74 = *(v29 + 8);
      v74(v34, v26);
      sub_1D05C(v0, &qword_C19B0, &qword_90FA8);
      sub_1D05C(v51, &qword_C19B0, &qword_90FA8);
      v75 = sub_36BBC();
      (v74)(v75);
      sub_1D05C(v40, &qword_C19B0, &qword_90FA8);
      if (v73)
      {
LABEL_31:
        if (qword_BF818 != -1)
        {
          sub_650C();
          swift_once();
        }

        v76 = sub_8CD0C();
        sub_22B78(v76, qword_C3DF8);
        v77 = sub_8CCEC();
        v78 = sub_8D11C();
        if (sub_36AE0(v78))
        {
          v79 = sub_E8E0();
          sub_36C10(v79);
          v82 = "#NLv4Transformer has everywhere in utterance";
          goto LABEL_70;
        }

        goto LABEL_72;
      }

      goto LABEL_14;
    }

    sub_1D05C(v0, &qword_C19B0, &qword_90FA8);
    sub_1D05C(v51, &qword_C19B0, &qword_90FA8);
    v63 = *(v29 + 8);
    v64 = sub_36BBC();
    v65(v64);
  }

  sub_1D05C(v40, &qword_C19A8, &qword_90FA0);
LABEL_14:
  if (v147 < 2)
  {
    goto LABEL_49;
  }

  v66 = sub_8C57C();
  if (!v66)
  {
    goto LABEL_49;
  }

  v67 = v66;
  v68 = &_swiftEmptyArrayStorage;
  v149 = &_swiftEmptyArrayStorage;
  v69 = sub_2D3B4(v66);
  v70 = 0;
  while (1)
  {
    if (v69 == v70)
    {

      if (sub_2D3B4(v68))
      {
        sub_2D3BC(0, (v68 & 0xC000000000000001) == 0, v68);
        v84 = v144;
        v83 = v145;
        v86 = v142;
        v85 = v143;
        v88 = v140;
        v87 = v141;
        if ((v68 & 0xC000000000000001) != 0)
        {
          sub_8D27C();
        }

        else
        {
          v89 = *(v68 + 32);
        }

        v90 = v139;

        sub_8C54C();
      }

      else
      {

        v87 = v141;
        v83 = v145;
        sub_6270(v141, 1, 1, v145);
        v85 = v143;
        v84 = v144;
        v86 = v142;
        v90 = v139;
        v88 = v140;
      }

      (*(v85 + 104))(v88, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_All(_:), v83);
      sub_22B0C();
      sub_6270(v91, v92, v93, v83);
      v94 = *(v90 + 48);
      sub_2FB74(v87, v84, &qword_C19A0, &qword_90F98);
      sub_2FB74(v88, v84 + v94, &qword_C19A0, &qword_90F98);
      sub_369EC(v84);
      if (v62)
      {
        sub_36AD4();
        sub_1D05C(v95, v96, v97);
        sub_36AD4();
        sub_1D05C(v98, v99, v100);
        sub_369EC(v84 + v94);
        if (v62)
        {
          sub_1D05C(v84, &qword_C19A0, &qword_90F98);
LABEL_66:
          if (qword_BF818 != -1)
          {
            sub_650C();
            swift_once();
          }

          v135 = sub_8CD0C();
          sub_22B78(v135, qword_C3DF8);
          v77 = sub_8CCEC();
          v136 = sub_8D11C();
          if (!sub_36AE0(v136))
          {
            goto LABEL_72;
          }

          v137 = sub_E8E0();
          sub_36C10(v137);
          v82 = "#NLv4Transformer has everyone in utterance";
LABEL_70:
          sub_36CAC(&dword_0, v80, v81, v82);
LABEL_71:
          sub_6538();

          goto LABEL_72;
        }
      }

      else
      {
        sub_2FB74(v84, v86, &qword_C19A0, &qword_90F98);
        sub_369EC(v84 + v94);
        if (!v101)
        {
          v131 = v84 + v94;
          v132 = v138;
          (*(v85 + 32))(v138, v131, v83);
          sub_367AC(&qword_C19B8, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues);
          v133 = sub_8CE9C();
          v134 = *(v85 + 8);
          v134(v132, v83);
          sub_1D05C(v88, &qword_C19A0, &qword_90F98);
          sub_1D05C(v87, &qword_C19A0, &qword_90F98);
          v134(v86, v83);
          sub_1D05C(v84, &qword_C19A0, &qword_90F98);
          if (v133)
          {
            goto LABEL_66;
          }

LABEL_49:
          if (qword_BF818 != -1)
          {
            goto LABEL_75;
          }

          goto LABEL_50;
        }

        sub_36AD4();
        sub_1D05C(v102, v103, v104);
        sub_36AD4();
        sub_1D05C(v105, v106, v107);
        (*(v85 + 8))(v86, v83);
      }

      sub_1D05C(v84, &qword_C1998, &qword_90F90);
      goto LABEL_49;
    }

    if ((v67 & 0xC000000000000001) != 0)
    {
      sub_8D27C();
    }

    else
    {
      if (v70 >= *(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_74;
      }

      v71 = *(v67 + 8 * v70 + 32);
    }

    if (__OFADD__(v70, 1))
    {
      break;
    }

    sub_8C3BC();
    if (v148)
    {
      v72 = sub_8C3DC();

      if (!v72)
      {
        goto LABEL_28;
      }

      sub_8D02C();
      if (*(&dword_10 + (v149 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v149 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_8D06C();
      }

      sub_8D08C();
      v68 = v149;
      ++v70;
    }

    else
    {

LABEL_28:
      ++v70;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  sub_650C();
  swift_once();
LABEL_50:
  v108 = sub_8CD0C();
  sub_22B78(v108, qword_C3DF8);
  v109 = v146;

  v110 = sub_8CCEC();
  v111 = sub_8D11C();

  if (os_log_type_enabled(v110, v111))
  {
    sub_6594();
    v112 = swift_slowAlloc();
    sub_36A54();
    v113 = swift_slowAlloc();
    v149 = v113;
    *v112 = 136315138;
    v114 = sub_8D05C();
    v116 = sub_862D8(v114, v115, &v149);

    *(v112 + 4) = v116;
    _os_log_impl(&dword_0, v110, v111, "#NLv4Transformer checking if a node is room or house hint in %s", v112, 0xCu);
    sub_2714(v113);
    sub_6538();

    sub_6538();
  }

  v117 = *(v109 + 16);
  v118 = (v109 + 56);
  if (!v117)
  {
LABEL_60:
    v77 = sub_8CCEC();
    v125 = sub_8D11C();
    if (!sub_36AE0(v125))
    {
      goto LABEL_72;
    }

    v126 = sub_E8E0();
    sub_36C10(v126);
    sub_36CAC(&dword_0, v127, v128, "#NLv4Transformer doesn't have everywhere or everyone");
    goto LABEL_71;
  }

  while (1)
  {
    v120 = *(v118 - 3);
    v119 = *(v118 - 2);
    v121 = *(v118 - 1) == 0xD000000000000017 && 0x8000000000096FF0 == *v118;
    if (v121 || (v122 = *v118, (sub_8D45C() & 1) != 0))
    {

      v123._rawValue = &off_B86E0;
      v150._countAndFlagsBits = v120;
      v150._object = v119;
      v124 = sub_8D39C(v123, v150);

      if (v124 <= 1)
      {
        break;
      }
    }

    v118 += 4;
    if (!--v117)
    {
      goto LABEL_60;
    }
  }

  v77 = sub_8CCEC();
  v129 = sub_8D11C();
  if (sub_36AE0(v129))
  {
    v130 = sub_E8E0();
    sub_36C10(v130);
    goto LABEL_70;
  }

LABEL_72:

  sub_115FC();
}

uint64_t sub_34A80(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  result = sub_8C57C();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = sub_2D3B4(result);
  v3 = 0;
  v35 = &_swiftEmptyArrayStorage;
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_8D27C();
    }

    else
    {
      if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_32;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    sub_8C3BC();
    if (v36)
    {
      v5 = sub_8C4EC();
      v7 = v6;

      if (!v7)
      {
        goto LABEL_17;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v35 + 2);
        v12 = sub_22AB0();
        v35 = sub_75D80(v12, v13, v14, v15);
      }

      v9 = *(v35 + 2);
      v8 = *(v35 + 3);
      if (v9 >= v8 >> 1)
      {
        v35 = sub_75D80((v8 > 1), v9 + 1, 1, v35);
      }

      *(v35 + 2) = v9 + 1;
      v10 = &v35[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v7;
      ++v3;
    }

    else
    {

LABEL_17:
      ++v3;
    }
  }

  if (qword_BF818 == -1)
  {
    goto LABEL_20;
  }

LABEL_33:
  sub_650C();
  swift_once();
LABEL_20:
  v16 = sub_8CD0C();
  sub_22B78(v16, qword_C3DF8);

  v17 = sub_8CCEC();
  v18 = sub_8D11C();

  if (os_log_type_enabled(v17, v18))
  {
    sub_6594();
    v19 = swift_slowAlloc();
    sub_36A54();
    v20 = swift_slowAlloc();
    v36 = v20;
    *v19 = 136315138;
    v21 = sub_8D05C();
    v23 = sub_862D8(v21, v22, &v36);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_0, v17, v18, "#NLv4Transformer targetName name: %s", v19, 0xCu);
    sub_2714(v20);
    sub_6538();

    sub_6538();
  }

  if (*(v35 + 2))
  {
    v25 = *(v35 + 4);
    v24 = *(v35 + 5);
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v26 = sub_2FCAC(v25, v24);

  if (v26)
  {
    return 0;
  }

  v27 = sub_8CCEC();
  v28 = sub_8D11C();
  if (sub_1D1B8(v28))
  {
    v29 = sub_E8E0();
    sub_1D274(v29);
    sub_36A24();
    _os_log_impl(v30, v31, v32, v33, v34, 2u);
    sub_6538();
  }

  return 1;
}

uint64_t sub_34DA4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_8C58C();
  v3 = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = v1;
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v5 = sub_8CD0C();
  sub_22B78(v5, qword_C3DF8);

  v6 = sub_8CCEC();
  v7 = sub_8D11C();

  if (os_log_type_enabled(v6, v7))
  {
    sub_6594();
    v8 = swift_slowAlloc();
    sub_36A54();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;

    v10 = sub_862D8(v4, v3, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_0, v6, v7, "#NLv4Transformer speechData message : %s ", v8, 0xCu);
    sub_2714(v9);
    sub_6538();

    sub_6538();
  }

  return v4;
}

void sub_34F14()
{
  sub_11614();
  v2 = v1;
  v74 = v3;
  v4 = sub_2664(&qword_C05E8, &unk_8ECD0);
  sub_65E4(v4);
  v6 = *(v5 + 64);
  sub_1D394();
  __chkstk_darwin(v7);
  v8 = sub_36C8C();
  v9 = sub_3488(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_1D164();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v70 - v18;
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v73 = v16;
  v20 = sub_8CD0C();
  v21 = sub_33F4(v20, qword_C3DF8);
  v22 = sub_8CCEC();
  v23 = sub_8D11C();
  v24 = &unk_8E000;
  if (sub_125A0(v23))
  {
    sub_6594();
    v25 = swift_slowAlloc();
    sub_36A54();
    v26 = v19;
    v27 = v11;
    v28 = swift_slowAlloc();
    v76[0] = v28;
    *v25 = 136315138;
    *(v25 + 4) = sub_862D8(0xD000000000000023, 0x8000000000096E90, v76);
    _os_log_impl(&dword_0, v22, v23, "#NLv4Transformer #ReferenceResolution %s", v25, 0xCu);
    sub_2714(v28);
    v11 = v27;
    v19 = v26;
    v24 = &unk_8E000;
    sub_6538();

    sub_6538();
  }

  v29 = v2[3];
  v30 = v2[4];
  sub_622C(v2, v29);
  sub_47250(v74, v29, v30, v0);
  if (sub_3364(v0, 1, v8) == 1)
  {
    sub_1D05C(v0, &qword_C05E8, &unk_8ECD0);
    v31 = sub_8CCEC();
    v32 = sub_8D11C();
    if (sub_1D1B8(v32))
    {
      v33 = sub_E8E0();
      sub_1D274(v33);
      sub_36A24();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      sub_6538();
    }
  }

  else
  {
    (*(v11 + 32))(v19, v0, v8);
    v39 = v73;
    (*(v11 + 16))(v73, v19, v8);
    v40 = sub_8CCEC();
    v41 = sub_8D11C();
    v42 = os_log_type_enabled(v40, v41);
    v72 = v21;
    if (v42)
    {
      sub_6594();
      v43 = swift_slowAlloc();
      v71 = v19;
      v44 = v43;
      sub_36A54();
      v45 = swift_slowAlloc();
      v76[0] = v45;
      *v44 = v24[106];
      sub_36A6C();
      sub_367AC(v46, v47);
      v48 = sub_8D43C();
      v49 = v39;
      v51 = v50;
      v74 = *(v11 + 8);
      (v74)(v49, v8);
      v52 = sub_862D8(v48, v51, v76);

      *(v44 + 4) = v52;
      sub_36CCC(&dword_0, v53, v54, "#NLv4Transformer rrEntity : %s");
      sub_2714(v45);
      sub_6538();

      v19 = v71;
      sub_6538();
    }

    else
    {

      v74 = *(v11 + 8);
      (v74)(v39, v8);
    }

    sub_36598();
    v55 = sub_8CD9C();
    v56 = v55;
    v57 = sub_8CCEC();
    v58 = sub_8D11C();

    if (os_log_type_enabled(v57, v58))
    {
      sub_6594();
      v59 = swift_slowAlloc();
      v73 = v8;
      v60 = v24;
      v61 = v59;
      sub_36A54();
      v62 = v19;
      v63 = swift_slowAlloc();
      v75 = v55;
      v76[0] = v63;
      *v61 = v60[106];
      v64 = v56;
      sub_2664(&qword_C1950, &qword_92790);
      v65 = sub_8CEEC();
      v67 = sub_862D8(v65, v66, v76);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_0, v57, v58, "#NLv4Transformer homeFilter : %s", v61, 0xCu);
      sub_2714(v63);
      sub_6538();

      sub_6538();

      v68 = v62;
      v69 = v73;
    }

    else
    {

      v68 = v19;
      v69 = v8;
    }

    (v74)(v68, v69);
  }

  sub_115FC();
}

uint64_t sub_35484()
{
  v0 = sub_2664(&qword_C1958, &unk_90F30);
  sub_FCD8(v0, qword_C3E98);
  sub_33F4(v0, qword_C3E98);
  sub_8BF1C();
  return sub_8C80C();
}

uint64_t sub_3550C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_8BE7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_8BF9C();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_8BEAC())
  {
    sub_8BEEC();
    if ((sub_8BF5C() & 1) == 0)
    {
      v19 = sub_8C85C();
      sub_367AC(&qword_C0D18, &type metadata accessor for TransformationError);
      swift_allocError();
      v21 = v20;
      v22 = 0x8000000000096EF0;
      v23 = 0xD000000000000042;
LABEL_15:
      *v20 = v23;
      v20[1] = v22;
      (*(*(v19 - 8) + 104))(v21, enum case for TransformationError.cannotTransform(_:), v19);
      swift_willThrow();
      return (*(v40 + 8))(v11, v8);
    }

    v39 = v8;
    sub_8BF6C();
    v12 = sub_8BE6C();
    (*(v4 + 8))(v7, v3);
    v13 = sub_8C04C();
    if (v1)
    {

      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v14 = sub_8CD0C();
      sub_33F4(v14, qword_C3DF8);
      v15 = sub_8CCEC();
      v16 = sub_8D11C();
      v17 = os_log_type_enabled(v15, v16);
      v8 = v39;
      if (v17)
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_0, v15, v16, "#NLv4Transformer Could not convert user dialog act to task", v18, 2u);
      }

      v19 = sub_8C85C();
      sub_367AC(&qword_C0D18, &type metadata accessor for TransformationError);
      swift_allocError();
      v21 = v20;
      v22 = 0x8000000000096F40;
      v23 = 0xD00000000000003ALL;
      goto LABEL_15;
    }

    v31 = v13;
    if (!sub_2D3B4(v13))
    {

      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v33 = sub_8CD0C();
      sub_33F4(v33, qword_C3DF8);
      v34 = sub_8CCEC();
      v35 = sub_8D11C();
      v36 = os_log_type_enabled(v34, v35);
      v8 = v39;
      if (v36)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v34, v35, "#NLv4Transformer No tasks found in input", v37, 2u);
      }

      v19 = sub_8C85C();
      sub_367AC(&qword_C0D18, &type metadata accessor for TransformationError);
      swift_allocError();
      v21 = v20;
      v22 = 0x8000000000096F80;
      v23 = 0xD000000000000028;
      goto LABEL_15;
    }

    sub_2D3BC(0, (v31 & 0xC000000000000001) == 0, v31);
    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = sub_8D27C();
    }

    else
    {
      v32 = *(v31 + 32);
    }

    result = (*(v40 + 8))(v11, v39);
    *a1 = v32;
    a1[1] = v12;
  }

  else
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v24 = sub_8CD0C();
    sub_33F4(v24, qword_C3DF8);
    v25 = sub_8CCEC();
    v26 = sub_8D11C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "#NLv4Transformer does NOT have UserStatedTask", v27, 2u);
    }

    v28 = sub_8C85C();
    sub_367AC(&qword_C0D18, &type metadata accessor for TransformationError);
    swift_allocError();
    *v29 = 0xD00000000000002DLL;
    v29[1] = 0x8000000000096EC0;
    (*(*(v28 - 8) + 104))(v29, enum case for TransformationError.cannotTransform(_:), v28);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_35C04()
{
  v0 = sub_2664(&qword_C1960, &qword_90F48);
  sub_FCD8(v0, qword_C3EB0);
  sub_33F4(v0, qword_C3EB0);
  sub_8C70C();
  return sub_8C80C();
}

void sub_35C8C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  sub_8C51C();
  if (!v24)
  {
    sub_1D05C(v23, &qword_C05F0, &unk_8F020);
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v13 = sub_8CD0C();
    sub_33F4(v13, qword_C3DF8);
    v14 = sub_8CCEC();
    v15 = sub_8D12C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "#NLv4Transformer Invalid parse", v16, 2u);
    }

    v17 = 6;
    goto LABEL_11;
  }

  sub_367F4(v23, v25);
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v4 = sub_8CD0C();
  sub_33F4(v4, qword_C3DF8);
  sub_1412C(v25, v23);
  v5 = sub_8CCEC();
  v6 = sub_8D10C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    sub_1412C(v23, v22);
    v9 = sub_8CEEC();
    v11 = v10;
    sub_2714(v23);
    v12 = sub_862D8(v9, v11, &v26);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v5, v6, "#NLv4Transformer usoTask converted to type %s", v7, 0xCu);
    sub_2714(v8);
  }

  else
  {

    sub_2714(v23);
  }

  sub_1412C(v25, v23);
  sub_8C5DC();
  if (swift_dynamicCast() || (sub_8C5BC(), swift_dynamicCast()))
  {
    sub_2714(v25);

    sub_2714(v23);
    *a2 = 0;
    return;
  }

  sub_8C62C();
  if (!swift_dynamicCast())
  {
    sub_8C5CC();
    if (swift_dynamicCast())
    {
      sub_2714(v25);

      v18 = 2;
      goto LABEL_24;
    }

    sub_8C5FC();
    if (swift_dynamicCast())
    {
      sub_2714(v25);

      v18 = 3;
      goto LABEL_24;
    }

    sub_8C65C();
    if (swift_dynamicCast())
    {
      sub_2714(v25);

      v18 = 4;
      goto LABEL_24;
    }

    sub_8C6DC();
    if (!swift_dynamicCast())
    {
      sub_8C6EC();
      if (!swift_dynamicCast())
      {
        sub_8C5EC();
        if (!swift_dynamicCast())
        {
          sub_8C63C();
          if (!swift_dynamicCast())
          {
            v19 = sub_8CCEC();
            v20 = sub_8D12C();
            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              *v21 = 0;
              _os_log_impl(&dword_0, v19, v20, "#NLv4Transformer Invalid Announcement parse", v21, 2u);
            }

            sub_2714(v25);
            v18 = 6;
            goto LABEL_24;
          }
        }
      }
    }

    sub_2714(v25);

    sub_2714(v23);
    v17 = 5;
LABEL_11:
    *a2 = v17;
    return;
  }

  sub_2714(v25);

  v18 = 1;
LABEL_24:
  *a2 = v18;
  sub_2714(v23);
}

uint64_t sub_361D8()
{
  v0 = sub_2664(&qword_C1968, &qword_90F50);
  sub_FCD8(v0, qword_C3EC8);
  sub_33F4(v0, qword_C3EC8);
  sub_8C70C();
  sub_2664(&qword_C19E0, &qword_90FC8);
  return sub_8C80C();
}

uint64_t sub_36274@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_8C51C();
  if (!v16)
  {
    goto LABEL_28;
  }

  sub_2FB74(v15, v14, &qword_C05F0, &unk_8F020);
  sub_8C5DC();
  if (swift_dynamicCast())
  {

    sub_8C50C();
    v4 = v13;
    v5 = sub_8C4FC();
    goto LABEL_6;
  }

  sub_8C62C();
  if (!swift_dynamicCast())
  {
    sub_8C64C();
    if (swift_dynamicCast())
    {

      v9 = sub_8C08C();

      if (v9)
      {
        if (sub_2D3B4(v9))
        {
          sub_2D3BC(0, (v9 & 0xC000000000000001) == 0, v9);
          if ((v9 & 0xC000000000000001) != 0)
          {
            sub_8D27C();
          }

          else
          {
            v10 = *(v9 + 32);
          }

          sub_8C3BC();

          v8 = v13;
          goto LABEL_32;
        }
      }

      else
      {
      }

      v8 = 0;
LABEL_32:
      *a2 = 0;
      goto LABEL_21;
    }

    sub_8C5CC();
    if (swift_dynamicCast() || (sub_8C5FC(), swift_dynamicCast()))
    {

      *a2 = xmmword_8F8D0;
      goto LABEL_22;
    }

    sub_2714(v14);
LABEL_28:
    *a2 = xmmword_8F8D0;
    return sub_1D05C(v15, &qword_C05F0, &unk_8F020);
  }

  sub_8C61C();
  v4 = v13;
  v5 = sub_8C60C();
LABEL_6:
  v6 = v5;

  if (v6)
  {
    if (sub_2D3B4(v6))
    {
      sub_2D3BC(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        sub_8D27C();
      }

      else
      {
        v7 = *(v6 + 32);
      }

      sub_8C3BC();

      v8 = v12;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v8 = 0;
LABEL_20:
  *a2 = v4;
LABEL_21:
  a2[1] = v8;
LABEL_22:
  sub_2714(v14);
  return sub_1D05C(v15, &qword_C05F0, &unk_8F020);
}

unint64_t sub_36598()
{
  result = qword_C1068;
  if (!qword_C1068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C1068);
  }

  return result;
}

uint64_t sub_365DC(uint64_t a1)
{
  v2 = type metadata accessor for TransformerInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_36638(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_36680(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_366C4()
{
  result = qword_C1970;
  if (!qword_C1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1970);
  }

  return result;
}

uint64_t sub_36718()
{
  if (*(v0 + 48))
  {
    sub_2714((v0 + 24));
  }

  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  v7 = *(v0 + 120);

  v8 = *(v0 + 168);

  v9 = *(v0 + 176);

  v10 = *(v0 + 192);

  sub_36AF8();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_367AC(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_367F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_36804(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_36810(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_36864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_368C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_36904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_36950(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_3695C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_3699C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_36A98()
{
  result = v0;
  v4 = *(v1 - 176);
  v3 = *(v1 - 168);
  return result;
}

BOOL sub_36AE0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_36B14(uint64_t a1)
{

  return sub_1D05C(a1, v1, v2);
}

uint64_t sub_36B50(uint64_t a1, uint64_t a2)
{

  return sub_2FB74(a1, a2, v2, v3);
}

uint64_t sub_36B68()
{

  return sub_8CE9C();
}

uint64_t sub_36B8C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_1D05C(v4, v2, v1);
}

uint64_t sub_36BD4()
{
  result = v0;
  *(v2 - 208) = *(v1 + 8);
  return result;
}

uint64_t sub_36BE8()
{
  v1 = *(*(v0 - 240) + 8);
  result = *(v0 - 184);
  v3 = *(v0 - 224);
  return result;
}

double sub_36C6C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_36C8C()
{

  return sub_8CDCC();
}

void sub_36CAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

void sub_36CCC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void sub_36CEC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL sub_36D0C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8730;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  return v4 != 0;
}

BOOL sub_36D60@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_36D0C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_36DA8()
{
  v0 = *aSource_1;

  return v0;
}

uint64_t sub_36E04(uint64_t a1)
{
  v2 = sub_37E4C();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_36E40(uint64_t a1)
{
  v2 = sub_37E4C();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_36E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_37AF8();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_36EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_37E4C();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_36F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_37AF8();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

uint64_t sub_36FB8(char a1)
{
  if (a1)
  {
    v1._countAndFlagsBits = 0x6572756C696166;
  }

  else
  {
    v1._countAndFlagsBits = 0x73736563637573;
  }

  v1._object = 0xE700000000000000;
  sub_8CF7C(v1);

  return 46;
}

uint64_t sub_37028(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_37058(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_B8790;
  v7._object = a2;
  v4 = sub_8D39C(v3, v7);

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

uint64_t sub_370AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_24830();
}

uint64_t sub_370D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_37058(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_37100@<X0>(uint64_t *a1@<X8>)
{
  result = sub_37028(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_37140()
{
  v0 = qword_C19F8;

  return v0;
}

uint64_t sub_37178(uint64_t a1)
{
  v2 = sub_376EC();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_371B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_37740();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_37200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_376EC();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_3726C(uint64_t a1)
{
  v2 = sub_376EC();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_372A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_37740();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

uint64_t sub_372F4()
{
  v1 = v0;
  sub_8D25C(91);
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v8._object = 0x8000000000097010;
  sub_8CF7C(v8);
  v2 = *v0;
  sub_8CB1C();
  v9._countAndFlagsBits = 0x697269732ELL;
  v9._object = 0xE500000000000000;
  sub_8CF7C(v9);
  v10._countAndFlagsBits = 0x6D6F68202020200ALL;
  v10._object = 0xEA00000000003D65;
  sub_8CF7C(v10);
  v3 = v1[1];
  sub_8CB1C();
  sub_2664(&qword_C1A08, &unk_92B40);
  v11._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v11);

  v12._countAndFlagsBits = 0x6F6F72202020200ALL;
  v12._object = 0xEB000000003D736DLL;
  sub_8CF7C(v12);
  v4 = v1[2];
  sub_8CB1C();
  sub_2664(&qword_C1A10, &qword_910E0);
  v13._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v13);

  v14._countAndFlagsBits = 0x6E6F7A202020200ALL;
  v14._object = 0xEB000000003D7365;
  sub_8CF7C(v14);
  v5 = v1[3];
  sub_8CB1C();
  v15._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v15);

  v16._object = 0x8000000000097030;
  v16._countAndFlagsBits = 0xD000000000000010;
  sub_8CF7C(v16);
  v6 = v1[4];
  sub_8CB1C();
  v17._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v17);

  v18._countAndFlagsBits = 10506;
  v18._object = 0xE200000000000000;
  sub_8CF7C(v18);
  return 0;
}

__n128 sub_37518(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3752C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_3756C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_375C4()
{
  result = qword_C1A18;
  if (!qword_C1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A18);
  }

  return result;
}

unint64_t sub_37618(uint64_t a1)
{
  result = sub_37640();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_37640()
{
  result = qword_C1A38;
  if (!qword_C1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A38);
  }

  return result;
}

unint64_t sub_37698()
{
  result = qword_C1A40;
  if (!qword_C1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A40);
  }

  return result;
}

unint64_t sub_376EC()
{
  result = qword_C1A48;
  if (!qword_C1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A48);
  }

  return result;
}

unint64_t sub_37740()
{
  result = qword_C1A50;
  if (!qword_C1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A50);
  }

  return result;
}

_BYTE *sub_37794(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x37860);
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

_BYTE *sub_37894(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x37930);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_37968()
{
  result = qword_C1A58;
  if (!qword_C1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A58);
  }

  return result;
}

unint64_t sub_379C0()
{
  result = qword_C1A60;
  if (!qword_C1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A60);
  }

  return result;
}

unint64_t sub_37A18()
{
  result = qword_C1A68;
  if (!qword_C1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A68);
  }

  return result;
}

unint64_t sub_37AA0()
{
  result = qword_C1A80;
  if (!qword_C1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A80);
  }

  return result;
}

unint64_t sub_37AF8()
{
  result = qword_C1A88;
  if (!qword_C1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A88);
  }

  return result;
}

unint64_t sub_37B50()
{
  result = qword_C1A90;
  if (!qword_C1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A90);
  }

  return result;
}

unint64_t sub_37BA8()
{
  result = qword_C1A98;
  if (!qword_C1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A98);
  }

  return result;
}

unint64_t sub_37C0C()
{
  result = qword_C1AA0;
  if (!qword_C1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1AA0);
  }

  return result;
}

unint64_t sub_37C94()
{
  result = qword_C1AB8;
  if (!qword_C1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1AB8);
  }

  return result;
}

unint64_t sub_37CEC()
{
  result = qword_C1AC0;
  if (!qword_C1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1AC0);
  }

  return result;
}

unint64_t sub_37D44()
{
  result = qword_C1AC8;
  if (!qword_C1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1AC8);
  }

  return result;
}

unint64_t sub_37DA0()
{
  result = qword_C1AD0;
  if (!qword_C1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1AD0);
  }

  return result;
}

unint64_t sub_37DF8()
{
  result = qword_C1AD8;
  if (!qword_C1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1AD8);
  }

  return result;
}

unint64_t sub_37E4C()
{
  result = qword_C1AE0;
  if (!qword_C1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1AE0);
  }

  return result;
}

uint64_t *sub_37EAC()
{
  v1 = v0;
  v2 = sub_8BE3C();
  v3 = sub_3488(v2);
  v64 = v4;
  v65 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_C1AF0, &unk_90ED0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v63 - v11;
  v13 = sub_8BE9C();
  v14 = sub_3488(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v63 - v22;
  v24 = sub_8BE0C();
  v25 = sub_3488(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  v31 = (&v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = v27[2];
  v66 = v1;
  v32(v31, v1, v24);
  v33 = v27[11];
  v34 = sub_38AD8();
  v36 = v35(v34);
  if (v36 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v37 = v27[12];
    v38 = sub_38AD8();
    v39(v38);
    v40 = *v31;
    sub_8C03C();
    if (sub_3364(v12, 1, v13) == 1)
    {
      sub_92C0(v12, &qword_C1AF0, &unk_90ED0);
      if (qword_BF818 != -1)
      {
        sub_E754();
      }

      v41 = sub_8CD0C();
      sub_33F4(v41, qword_C3DF8);
      swift_unknownObjectRetain();
      v42 = sub_8CCEC();
      v43 = sub_8D12C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v67 = v40;
        v68 = v45;
        *v44 = 136315138;
        swift_unknownObjectRetain();
        sub_2664(&qword_C17D0, &qword_90EE0);
        v46 = sub_8CEEC();
        v48 = sub_862D8(v46, v47, &v68);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_0, v42, v43, "Couldn't transform UserDialogAct %s into UserParse to get the UDAs.", v44, 0xCu);
        sub_2714(v45);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return 0;
    }

    (*(v16 + 32))(v23, v12, v13);
    v54 = sub_3843C();
    swift_unknownObjectRelease();
    (*(v16 + 8))(v23, v13);
  }

  else
  {
    if (v36 != enum case for Parse.uso(_:))
    {
      if (qword_BF818 != -1)
      {
        sub_E754();
      }

      v55 = sub_8CD0C();
      sub_33F4(v55, qword_C3DF8);
      v56 = sub_8CCEC();
      v57 = sub_8D12C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_0, v56, v57, "Direct Invocation parse in Parse.usoTask", v58, 2u);
      }

      v59 = v27[1];
      v60 = sub_38AD8();
      v61(v60);
      return 0;
    }

    v49 = v27[12];
    v50 = sub_38AD8();
    v51(v50);
    v53 = v64;
    v52 = v65;
    (*(v64 + 32))(v8, v31, v65);
    sub_8BE2C();
    v54 = sub_3843C();
    (*(v16 + 8))(v21, v13);
    (*(v53 + 8))(v8, v52);
  }

  return v54;
}

uint64_t *sub_3843C()
{
  v0 = sub_2664(&unk_C1760, &qword_90EC8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v40 - v2;
  v4 = sub_8BF1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = sub_8BE8C();
  sub_75860(v17, v3);

  if (sub_3364(v3, 1, v4) == 1)
  {
    sub_92C0(v3, &unk_C1760, &qword_90EC8);
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v18 = sub_8CD0C();
    sub_33F4(v18, qword_C3DF8);
    v19 = sub_8CCEC();
    v20 = sub_8D12C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "No user dialog act found in userParse", v21, 2u);
    }

    return 0;
  }

  else
  {
    (*(v5 + 32))(v16, v3, v4);
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v22 = sub_8CD0C();
    v23 = sub_33F4(v22, qword_C3DF8);
    v25 = v5 + 16;
    v24 = *(v5 + 16);
    v24(v14, v16, v4);
    v44 = v23;
    v26 = sub_8CCEC();
    v27 = sub_8D11C();
    v28 = os_log_type_enabled(v26, v27);
    v45 = v24;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v43 = v5;
      v30 = v29;
      v41 = swift_slowAlloc();
      v49 = v41;
      *v30 = 136315138;
      v24(v11, v14, v4);
      v31 = sub_69844(v11);
      v42 = v16;
      v32 = v31;
      v46 = v25;
      v34 = v33;
      v47 = *(v43 + 8);
      v47(v14, v4);
      v16 = v42;
      v35 = sub_862D8(v32, v34, &v49);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_0, v26, v27, "Attempting to transform %s into UsoTask.", v30, 0xCu);
      sub_2714(v41);
    }

    else
    {

      v47 = *(v5 + 8);
      v47(v14, v4);
    }

    if (qword_BF868 != -1)
    {
      swift_once();
    }

    v36 = sub_2664(&qword_C1958, &unk_90F30);
    sub_33F4(v36, qword_C3E98);
    v37 = sub_8C81C();
    v37(&v49, v16);

    v47(v16, v4);
    v38 = v49;
  }

  return v38;
}

uint64_t sub_38AE4(char a1, char a2)
{
  v2 = 0xE700000000000000;
  v3 = 0x636972656E6567;
  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000010;
      v4 = "directInvocation";
      goto LABEL_5;
    case 2:
      v3 = 0xD000000000000010;
      v4 = "semaphoreTimeout";
LABEL_5:
      v2 = (v4 - 32) | 0x8000000000000000;
      break;
    case 3:
      break;
    default:
      v2 = 0x8000000000094FC0;
      v3 = 0xD00000000000001ELL;
      break;
  }

  if (a1)
  {
    v5 = 0x726F727265;
  }

  else
  {
    v5 = 0x6775626564;
  }

  sub_38CE4(v5, 0xE500000000000000, v3, v2);
}

uint64_t sub_38BE4(char a1)
{
  if (a1)
  {
    v1 = 0x726F727265;
  }

  else
  {
    v1 = 0x6775626564;
  }

  type metadata accessor for HomeCommunicationError(0);
  sub_8D31C();
  sub_15518();
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  sub_8CF7C(v3);
  v4._countAndFlagsBits = sub_15C5C();
  sub_8CF7C(v4);

  sub_38CE4(v1, 0xE500000000000000, 0, 0xE000000000000000);
}

void sub_38CE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (AFIsInternalInstall() && AFProcessIsAssistantService())
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v10 = sub_8CD0C();
    sub_33F4(v10, qword_C3DF8);

    v11 = sub_8CCEC();
    v12 = sub_8D11C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_1D358();
      v14 = sub_6630();
      v21 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_862D8(a3, a4, &v21);
      _os_log_impl(&dword_0, v11, v12, "#RadarUtils logging ABC from error=%s", v13, 0xCu);
      sub_2714(v14);
      sub_E890();
      sub_E890();
    }

    v15 = *(v5 + 16);
    sub_8C86C();
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v16 = sub_8CD0C();
    sub_33F4(v16, qword_C3DF8);

    oslog = sub_8CCEC();
    v17 = sub_8D11C();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = sub_1D358();
      v19 = sub_6630();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_862D8(a1, a2, &v21);
      _os_log_impl(&dword_0, oslog, v17, "#RadarUtils autoBugCapture: not an internal build. Skipping filing radar for %s", v18, 0xCu);
      sub_2714(v19);
      sub_E890();
      sub_E890();
    }
  }
}

void sub_38F9C(uint64_t a1, unint64_t a2, uint64_t a3, NSObject *a4)
{
  v47 = a4;
  v7 = sub_2664(&qword_C1BB8, &unk_91670);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v41 - v9;
  v11 = sub_8CB9C();
  v12 = sub_3488(v11);
  v46 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_8CB7C();
  v19 = sub_3488(v18);
  v45 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AFIsInternalInstall() && AFProcessIsAssistantService())
  {
    v44 = a3;
    v25 = sub_8CBCC();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v43 = sub_8CBBC();
    sub_8CB6C();

    sub_8CB8C();
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v28 = sub_8CD0C();
    sub_33F4(v28, qword_C3DF8);

    v29 = sub_8CCEC();
    v30 = sub_8D11C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = sub_1D358();
      v32 = sub_6630();
      v42 = a1;
      v33 = v32;
      v48 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_862D8(v42, a2, &v48);
      _os_log_impl(&dword_0, v29, v30, "#RadarUtils Creating radar for %s", v31, 0xCu);
      sub_2714(v33);
      sub_E890();
      sub_E890();
    }

    v34 = v46;
    (*(v46 + 16))(v10, v17, v11);
    sub_6270(v10, 0, 1, v11);
    sub_8CBAC();

    sub_39608(v10);
    (*(v34 + 8))(v17, v11);
    (*(v45 + 8))(v24, v18);
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v35 = sub_8CD0C();
    sub_33F4(v35, qword_C3DF8);

    v47 = sub_8CCEC();
    v36 = sub_8D11C();

    if (os_log_type_enabled(v47, v36))
    {
      v37 = a1;
      v38 = sub_1D358();
      v39 = sub_6630();
      v48 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_862D8(v37, a2, &v48);
      _os_log_impl(&dword_0, v47, v36, "#RadarUtils tapToRadar: not an internal build. Skipping filing radar for %s", v38, 0xCu);
      sub_2714(v39);
      sub_E890();
      sub_E890();
    }

    else
    {
      v40 = v47;
    }
  }
}

void sub_394B8(char a1, uint64_t (*a2)(void), const char *a3)
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v6 = sub_8CD0C();
  sub_33F4(v6, qword_C3DF8);
  oslog = sub_8CCEC();
  v7 = a2();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_0, oslog, v7, a3, v8, 8u);
    sub_E890();
  }
}

uint64_t sub_395AC()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_39608(uint64_t a1)
{
  v2 = sub_2664(&qword_C1BB8, &unk_91670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ReadActionType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x3973CLL);
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

unint64_t sub_39778()
{
  result = qword_C1BD0;
  if (!qword_C1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1BD0);
  }

  return result;
}

uint64_t sub_397CC(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_B8808;
  v7._object = a2;
  v4 = sub_8D39C(v3, v7);

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

uint64_t sub_39820(char a1)
{
  if (a1)
  {
    return 0x746165706572;
  }

  else
  {
    return 1684104562;
  }
}

uint64_t sub_39870@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_397CC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_398A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39820(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_398DC()
{
  v0 = *aReadactiontype_0;

  return v0;
}

uint64_t sub_39914(uint64_t a1)
{
  v2 = sub_39D58();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_39950(uint64_t a1)
{
  v2 = sub_39D58();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_3998C(uint64_t a1, uint64_t a2)
{
  v4 = sub_39B94();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_399D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_39D58();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_39A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_39B94();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

unint64_t sub_39A8C()
{
  result = qword_C1BD8;
  if (!qword_C1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1BD8);
  }

  return result;
}

unint64_t sub_39AE4()
{
  result = qword_C1BE0;
  if (!qword_C1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1BE0);
  }

  return result;
}

unint64_t sub_39B3C()
{
  result = qword_C1BE8;
  if (!qword_C1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1BE8);
  }

  return result;
}

unint64_t sub_39B94()
{
  result = qword_C1BF0;
  if (!qword_C1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1BF0);
  }

  return result;
}

unint64_t sub_39BEC()
{
  result = qword_C1BF8;
  if (!qword_C1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1BF8);
  }

  return result;
}

unint64_t sub_39C44()
{
  result = qword_C1C00;
  if (!qword_C1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1C00);
  }

  return result;
}

unint64_t sub_39C9C()
{
  result = qword_C1C08;
  if (!qword_C1C08)
  {
    sub_B9BC(&qword_C1C10, &qword_917D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1C08);
  }

  return result;
}

unint64_t sub_39D04()
{
  result = qword_C1C18;
  if (!qword_C1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1C18);
  }

  return result;
}

unint64_t sub_39D58()
{
  result = qword_C1C20;
  if (!qword_C1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1C20);
  }

  return result;
}

uint64_t type metadata accessor for ReadAnnouncementAceViewProvider()
{
  result = qword_C1C30;
  if (!qword_C1C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_39E4C(void *a1, uint64_t (*a2)(void *, void), uint64_t a3)
{
  v7 = [a1 announcementRecords];
  if (v7 && (v8 = v7, sub_2D74C(), v9 = sub_8D04C(), v8, v10 = sub_2D3B4(v9), , v10))
  {
    v11 = *(v3 + *(*v3 + qword_C3D60 + 16));
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a1;

    v13 = a1;
    sub_100C8(sub_3B640, v12);
  }

  else
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v15 = sub_8CD0C();
    sub_33F4(v15, qword_C3DF8);
    v16 = sub_8CCEC();
    v17 = sub_8D11C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "announcementRecords are nil or empty while making a CarPlay snippet to play announcements.", v18, 2u);
    }

    return a2(_swiftEmptyArrayStorage, 0);
  }
}

void sub_3A04C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void), uint64_t a5)
{
  v6 = v5;
  v45 = a3;
  v46 = a4;
  v10 = sub_2664(&qword_C1C80, &qword_918F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v42 = &v42 - v12;
  v13 = sub_8C7FC();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v21 = sub_8CD0C();
  sub_33F4(v21, qword_C3DF8);
  v22 = sub_8CCEC();
  v23 = sub_8D11C();
  if (sub_125A0(v23))
  {
    v24 = sub_E8E0();
    v44 = v13;
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "#ReadAnnouncementAceViewProvider makeAceViewsForInterstitials", v24, 2u);
    v13 = v44;
    sub_E890();
  }

  v43 = a1;

  v25 = swift_allocObject();
  v25[2] = v6;
  v25[3] = a1;
  v27 = v45;
  v26 = v46;
  v25[4] = a2;
  v25[5] = v27;
  v25[6] = v26;
  v25[7] = a5;
  swift_retain_n();
  swift_retain_n();
  v28 = a2;
  v29 = a5;
  v30 = v28;
  v31 = v27;
  v45 = v29;
  swift_retain_n();
  v32 = v30;
  v44 = v31;
  sub_8BE1C();
  sub_622C(v47, v48);
  sub_8B5EC();
  (*(v14 + 104))(v18, enum case for InputOrigin.clientGenerated(_:), v13);
  LOBYTE(v30) = sub_2507C();
  v33 = *(v14 + 8);
  v33(v18, v13);
  v33(v20, v13);
  sub_2714(v47);
  if (v30)
  {
    v34 = sub_8D0EC();
    v35 = v42;
    sub_6270(v42, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v6;
    v36[5] = sub_3B2B0;
    v36[6] = v25;

    sub_3A9AC(0, 0, v35, &unk_91908, v36);

    v37 = v44;
  }

  else
  {
    v38 = v32;
    v39 = v43;
    sub_8BE1C();
    sub_622C(v47, v48);
    v40 = sub_8B64C();
    sub_2714(v47);
    if (v40)
    {
      v37 = v44;
      sub_39E4C(v44, v46, v45);
    }

    else
    {
      sub_2664(&qword_C1C88, &qword_918F8);
      v41 = sub_8BB4C();
      v37 = v44;
      v41(v39, v38, v44, v46, v45);
    }
  }
}

uint64_t sub_3A4F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void *, void), uint64_t a6)
{
  sub_8BE1C();
  sub_622C(v14, v14[3]);
  v11 = sub_8B64C();
  sub_2714(v14);
  if (v11)
  {
    return sub_39E4C(a4, a5, a6);
  }

  sub_2664(&qword_C1C88, &qword_918F8);
  v13 = sub_8BB4C();
  return v13(a2, a3, a4, a5, a6);
}

uint64_t sub_3A5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  return _swift_task_switch(sub_3A60C, 0, 0);
}

uint64_t sub_3A60C()
{
  sub_6608();
  sub_8B5AC();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_3A6A4;

  return sub_44584(v0 + 16);
}

uint64_t sub_3A6A4()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  v4 = *(v2 + 72);
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;
  *(v3 + 80) = v0;

  sub_2714((v3 + 16));
  if (v0)
  {
    v7 = sub_3A8A8;
  }

  else
  {
    v7 = sub_3A7B0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_3A7B0()
{
  sub_152A0();
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#ReadAnnouncementAceViewProvider played notification sound", v4, 2u);
    sub_E890();
  }

  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  v5();
  sub_65A0();

  return v7();
}

uint64_t sub_3A8A8()
{
  sub_152A0();
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D12C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = sub_E8E0();
    *v6 = 0;
    _os_log_impl(&dword_0, v2, v3, "#ReadAnnouncementAceViewProvider failed to play notification sound", v6, 2u);
    sub_E890();
  }

  v7 = v0[7];
  v8 = v0[8];

  v7();
  sub_65A0();

  return v9();
}

uint64_t sub_3A9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2664(&qword_C1C80, &qword_918F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_3B3C8(a3, v26 - v11);
  v13 = sub_8D0EC();
  v14 = sub_3364(v12, 1, v13);

  if (v14 == 1)
  {
    sub_3B438(v12);
  }

  else
  {
    sub_8D0DC();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_8D0AC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_8CF1C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_3B438(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_3B438(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_3AC50(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, void), uint64_t a5)
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v8 = sub_8CD0C();
  sub_33F4(v8, qword_C3DF8);
  v9 = sub_8CCEC();
  v10 = sub_8D11C();
  if (sub_125A0(v10))
  {
    *sub_E8E0() = 0;
    sub_3B684(&dword_0, v11, v12, "#ReadAnnouncementAceViewProvider makeAceViewsForHandleIntentWithUser");
    sub_E890();
  }

  sub_8BE1C();
  sub_622C(v20, v20[3]);
  if ((sub_8B64C() & 1) != 0 && (v13 = sub_471A8(a3)) != 0)
  {
    v14 = sub_2D3B4(v13);

    sub_2714(v20);
    if (v14)
    {
      sub_75540();
      v16 = sub_75AD4(v15);
      v18 = v17;

      if (v18)
      {
        sub_759E4(v16, v18, a4, a5);
      }
    }
  }

  else
  {
    sub_2714(v20);
  }

  return a4(_swiftEmptyArrayStorage, 0);
}

uint64_t sub_3ADD8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, void))
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v6 = sub_8CD0C();
  sub_33F4(v6, qword_C3DF8);
  v7 = sub_8CCEC();
  v8 = sub_8D11C();
  if (sub_125A0(v8))
  {
    *sub_E8E0() = 0;
    sub_3B684(&dword_0, v9, v10, "#ReadAnnouncementAceViewProvider makeCommandsAfterAceViewsForHandleIntentWithUser");
    sub_E890();
  }

  sub_8BE1C();
  sub_622C(v20, v20[3]);
  if ((sub_8B64C() & 1) == 0 || (v11 = sub_471A8(a3)) == 0)
  {
    sub_2714(v20);
    return a4(_swiftEmptyArrayStorage, 0);
  }

  v12 = sub_2D3B4(v11);

  sub_2714(v20);
  if (!v12)
  {
    return a4(_swiftEmptyArrayStorage, 0);
  }

  if (qword_BF840 != -1)
  {
    swift_once();
  }

  v13 = sub_8B71C();
  v14 = sub_8CCEC();
  v15 = sub_8D11C();
  if (sub_125A0(v15))
  {
    v16 = sub_E8E0();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Sending stop announcement command in makeCommandsAfterAceViewsForHandleIntentWithUser().", v16, 2u);
    sub_E890();
  }

  sub_2664(&qword_C0690, &unk_8EBF0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_8E860;
  *(v17 + 32) = v13;
  v18 = v13;
  a4(v17, 0);
}

uint64_t sub_3B024()
{
  v0 = sub_75B0C();
  v1 = *(v0 + qword_C1C28);

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_3B07C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3B174;

  return v7(a1);
}

uint64_t sub_3B174()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_E6F8();
  *v4 = v3;

  sub_65A0();

  return v5();
}

uint64_t sub_3B258()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3B2C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3B308(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_3B674(v8);
  *v9 = v10;
  v9[1] = sub_E2A0;

  return sub_3A5EC(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_3B3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1C80, &qword_918F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3B438(uint64_t a1)
{
  v2 = sub_2664(&qword_C1C80, &qword_918F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3B4A0()
{
  sub_152A0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_3B674(v3);
  *v4 = v5;
  v6 = sub_3B654(v4);

  return v7(v6);
}

uint64_t sub_3B534()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B56C()
{
  sub_152A0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_3B674(v3);
  *v4 = v5;
  v6 = sub_3B654(v4);

  return v7(v6);
}

uint64_t sub_3B600()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3B640(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_A5A8(a1, *(v1 + 16));
}

uint64_t sub_3B654(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_3B684(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t type metadata accessor for ReadAnnouncementCATs()
{
  result = qword_C1C90;
  if (!qword_C1C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3B780(uint64_t a1)
{
  v2 = sub_2664(&qword_C1CE0, &unk_91EC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_2664(&qword_C1CE8, &unk_91960);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_8E3F0;
  strcpy((v6 + 32), "announcerName");
  *(v6 + 46) = -4864;
  sub_AE24(a1, v5, &qword_C1CE0, &unk_91EC0);
  v7 = sub_8C99C();
  if (sub_3364(v5, 1, v7) == 1)
  {
    sub_92C0(v5, &qword_C1CE0, &unk_91EC0);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    v8 = sub_E5DC((v6 + 48));
    (*(*(v7 - 8) + 32))(v8, v5, v7);
  }

  sub_8C91C();
}

uint64_t sub_3B95C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_3B9B0(a1, a2);
}

uint64_t sub_3B9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_8CA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_AE24(a1, &v14 - v11, &qword_BFF28, &unk_8EFD0);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_8C90C();
  (*(v5 + 8))(a2, v4);
  sub_92C0(a1, &qword_BFF28, &unk_8EFD0);
  return v12;
}

uint64_t type metadata accessor for ReadAnnouncementCATsSimple()
{
  result = qword_C1CF0;
  if (!qword_C1CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3BBD0()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_1524C;
  sub_3C574();
  v3 = sub_3C58C(48);

  return v4(v3);
}

uint64_t sub_3BC74()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_1524C;
  sub_3C574();
  v3 = sub_3C58C(29);

  return v4(v3);
}

uint64_t sub_3BD18()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_1524C;
  sub_3C574();
  v3 = sub_3C58C(38);

  return v4(v3);
}

uint64_t sub_3BDBC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_2664(&qword_C1CE0, &unk_91EC0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_3BE58, 0, 0);
}

uint64_t sub_3BE58()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_2664(&qword_C1CE8, &unk_91960);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_8E3F0;
  strcpy((v3 + 32), "announcerName");
  *(v3 + 46) = -4864;
  sub_AE24(v2, v1, &qword_C1CE0, &unk_91EC0);
  v4 = sub_8C99C();
  v5 = sub_3364(v1, 1, v4);
  v6 = v0[4];
  if (v5 == 1)
  {
    sub_92C0(v0[4], &qword_C1CE0, &unk_91EC0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v7 = sub_E5DC((v3 + 48));
    (*(*(v4 - 8) + 32))(v7, v6, v4);
  }

  v8 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_3C014;
  v9 = v0[3];
  sub_3C574();

  return v11(0xD000000000000025);
}

uint64_t sub_3C014()
{
  sub_152A0();
  v3 = v2;
  v4 = *(*v1 + 48);
  v5 = *v1;
  v5[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_3C16C, 0, 0);
  }

  else
  {
    v7 = v5[4];
    v6 = v5[5];

    v8 = v5[1];

    return v8(v3);
  }
}

uint64_t sub_3C16C()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_3C1D8()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_139E4;
  sub_3C574();
  v3 = sub_3C58C(43);

  return v4(v3);
}

uint64_t sub_3C27C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_3C2D0(a1, a2);
}

uint64_t sub_3C2D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_8CA2C();
  v6 = sub_13DCC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_AE24(a1, &v18 - v15, &qword_BFF28, &unk_8EFD0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_8C9AC();
  (*(v8 + 8))(a2, v2);
  sub_92C0(a1, &qword_BFF28, &unk_8EFD0);
  return v16;
}

uint64_t sub_3C44C(uint64_t a1, uint64_t a2)
{
  v5 = sub_8CA2C();
  v6 = sub_13DCC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_8C9BC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_3C554@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

BOOL sub_3C598()
{
  v0 = sub_8BE0C();
  sub_E6E8();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8BD9C();
  v8 = (*(v2 + 88))(v7, v0);
  v9 = enum case for Parse.directInvocation(_:);
  if (v8 == enum case for Parse.directInvocation(_:))
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v10 = sub_8CD0C();
    sub_33F4(v10, qword_C3DF8);
    v11 = sub_8CCEC();
    v12 = sub_8D11C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "#ReadAnnouncementFlow handling direct invocation.", v13, 2u);
    }
  }

  (*(v2 + 8))(v7, v0);
  return v8 == v9;
}

uint64_t sub_3C748()
{
  type metadata accessor for ReadAnnouncementFlow();
  sub_3D970(&qword_C0458, type metadata accessor for ReadAnnouncementFlow);
  return sub_8B34C();
}

uint64_t sub_3C7D8(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = *(*(sub_8B6BC() - 8) + 64);
  v2[36] = sub_E83C();
  v4 = *(*(sub_8CA2C() - 8) + 64);
  v2[37] = sub_E83C();
  v5 = sub_2664(&qword_C1E28, &qword_91A90);
  v2[38] = v5;
  v6 = *(v5 - 8);
  v2[39] = v6;
  v7 = *(v6 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v8 = sub_8BE0C();
  v2[42] = v8;
  v9 = *(v8 - 8);
  v2[43] = v9;
  v10 = *(v9 + 64);
  v2[44] = sub_E83C();

  return _swift_task_switch(sub_3C94C, 0, 0);
}

uint64_t sub_3C94C()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  *(v0 + 360) = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v4, v5, "#ReadAnnouncementFlow executeRCH with async producers");
  }

  v28 = *(v0 + 352);
  v6 = *(v0 + 280);

  sub_E528(v6 + 64, v0 + 16);
  sub_E528(v6 + 16, v0 + 56);
  sub_8B3FC();
  v7 = *(v0 + 40);
  v8 = sub_E58C(v0 + 16, v7);
  sub_E6E8();
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = sub_E83C();
  (*(v10 + 16))(v13, v8, v7);
  v14 = type metadata accessor for SharedGlobals();
  *(v0 + 368) = v14;
  *(v0 + 160) = v14;
  *(v0 + 168) = &off_BB508;
  v15 = sub_E5DC((v0 + 136));
  sub_E63C(v13, v15);
  type metadata accessor for ReadAnnouncementFlowStrategy();
  v16 = swift_allocObject();
  *(v0 + 376) = v16;
  v17 = *(v0 + 160);
  v18 = sub_E58C(v0 + 136, v17);
  sub_E6E8();
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = sub_E83C();
  (*(v20 + 16))(v23, v18, v17);
  v16[5] = v14;
  v16[6] = &off_BB508;
  v24 = sub_E5DC(v16 + 2);
  sub_E63C(v23, v24);
  sub_E510((v0 + 56), (v16 + 7));
  sub_E510((v0 + 96), (v16 + 12));
  sub_2714((v0 + 136));

  sub_2714((v0 + 16));

  sub_8BD9C();
  v25 = swift_task_alloc();
  *(v0 + 384) = v25;
  *v25 = v0;
  v25[1] = sub_3CC5C;
  v26 = *(v0 + 352);

  return sub_3DDCC(v26, 0);
}

uint64_t sub_3CC5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_E6F8();
  *v6 = v5;
  v7 = v4[48];
  *v6 = *v2;
  v5[49] = v1;

  v8 = v4[44];
  v9 = v4[43];
  v10 = v4[42];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_3D284;
  }

  else
  {
    v5[50] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_3CDDC;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_3CDDC()
{
  v1 = v0[46];
  v44 = v0[47];
  v45 = v0[50];
  v47 = v0[41];
  v42 = v0[39];
  v43 = v0[40];
  v40 = v0[38];
  v2 = v0[37];
  v39 = v0[36];
  v3 = v0[35];
  v46 = v0[34];
  sub_ADE4(0, &qword_C1E30, INReadAnnouncementIntent_ptr);
  sub_ADE4(0, &qword_C1E38, INReadAnnouncementIntentResponse_ptr);
  sub_8B31C();
  v41 = v3;
  v38 = *(v3 + 56);
  sub_E528(v3 + 64, (v0 + 22));
  type metadata accessor for ReadAnnouncementCATsSimple();

  sub_8CA1C();
  v37 = sub_8C9CC();
  type metadata accessor for HomeCommunicationDisplayTextCATsSimple();
  sub_8CA1C();
  v36 = sub_8C9CC();
  v4 = v0[25];
  v5 = sub_E58C((v0 + 22), v4);
  sub_E6E8();
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = sub_E83C();
  (*(v7 + 16))(v10, v5, v4);
  v0[30] = v1;
  v0[31] = &off_BB508;
  v11 = sub_E5DC(v0 + 27);
  sub_E63C(v10, v11);
  AnnouncementIntentHandledStrategy = type metadata accessor for ReadAnnouncementIntentHandledStrategy();
  v13 = *(AnnouncementIntentHandledStrategy + 48);
  v14 = *(AnnouncementIntentHandledStrategy + 52);
  v15 = swift_allocObject();
  v16 = v0[30];
  v17 = sub_E58C((v0 + 27), v16);
  sub_E6E8();
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = sub_E83C();
  (*(v19 + 16))(v22, v17, v16);
  v15[6] = v1;
  v15[7] = &off_BB508;
  v23 = sub_E5DC(v15 + 3);
  sub_E63C(v22, v23);
  sub_8B68C();
  sub_8BC3C();
  v15[2] = v38;
  v15[8] = v37;
  v15[9] = v36;
  sub_2714(v0 + 27);

  sub_2714(v0 + 22);

  v0[32] = v15;
  sub_3D970(&qword_C1E40, type metadata accessor for ReadAnnouncementIntentHandledStrategy);
  sub_8B27C();
  sub_8B2DC();
  sub_8B28C();
  sub_8B2EC();
  (*(v42 + 16))(v43, v47, v40);
  v24 = sub_2664(&qword_C1E48, &qword_91A98);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_8B32C();
  v27 = sub_622C((v41 + 64), *(v41 + 88));
  v28 = *sub_622C(v27 + 2, v27[5]);
  v0[33] = sub_77DD0();
  sub_2664(&qword_C1E50, &unk_91AA0);
  sub_3D90C();
  sub_8B33C();

  sub_8B7EC();

  (*(v42 + 8))(v47, v40);
  v29 = v0[44];
  v30 = v0[40];
  v31 = v0[41];
  v33 = v0[36];
  v32 = v0[37];

  v34 = v0[1];

  return v34();
}

uint64_t sub_3D284()
{
  v1 = v0[47];
  v2 = v0[45];

  v3 = sub_8CCEC();
  v4 = sub_8D12C();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v5, v6, "#ReadAnnouncementFlow Error thrown while creating RCH flow");
  }

  v7 = v0[49];
  v8 = v0[34];

  sub_8B7FC();

  v9 = v0[44];
  v10 = v0[40];
  v11 = v0[41];
  v13 = v0[36];
  v12 = v0[37];

  v14 = v0[1];

  return v14();
}

uint64_t *sub_3D394()
{
  sub_2714(v0 + 2);
  v1 = v0[7];

  sub_2714(v0 + 8);
  v2 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20ReadAnnouncementFlow_input;
  v3 = sub_8BDBC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_3D40C()
{
  sub_3D394();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ReadAnnouncementFlow()
{
  result = qword_C1D70;
  if (!qword_C1D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3D4B8()
{
  result = sub_8BDBC();
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

uint64_t sub_3D580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_3D630;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_3D630(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  sub_E6F8();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_3D748(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3D7E4;

  return sub_3C7D8(a1);
}

uint64_t sub_3D7E4()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_E6F8();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_3D8D0(uint64_t a1, uint64_t a2)
{
  AnnouncementFlow = type metadata accessor for ReadAnnouncementFlow();

  return Flow<>.exitValue.getter(AnnouncementFlow, a2);
}

unint64_t sub_3D90C()
{
  result = qword_C1E58;
  if (!qword_C1E58)
  {
    sub_B9BC(&qword_C1E50, &unk_91AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1E58);
  }

  return result;
}

uint64_t sub_3D970(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_3D9B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_3D9D8()
{
  v0 = sub_8BDEC();
  v1 = sub_3488(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8BE0C();
  v8 = sub_3488(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v15 = sub_8CD0C();
  v16 = sub_33F4(v15, qword_C3DF8);
  v17 = sub_8CCEC();
  v18 = sub_8D11C();
  if (sub_125A0(v18))
  {
    v19 = sub_E8E0();
    v36 = v16;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#ReadAnnouncementFlowStrategy.actionForInput() handling", v19, 2u);
    sub_E890();
  }

  sub_8BD9C();
  if ((*(v10 + 88))(v14, v7) == enum case for Parse.directInvocation(_:))
  {
    (*(v10 + 96))(v14, v7);
    v20 = v37;
    (*(v3 + 32))(v37, v14, v0);
    if (sub_8BDCC() == 0xD000000000000036 && 0x8000000000095CD0 == v21)
    {
    }

    else
    {
      v23 = sub_8D45C();

      if ((v23 & 1) == 0)
      {
        v24 = sub_8CCEC();
        v25 = sub_8D11C();
        if (sub_125A0(v25))
        {
          *sub_E8E0() = 0;
          sub_3E958(&dword_0, v26, v27, "#ReadAnnouncementFlowStrategy the action is not a read direct invocation. Ignoring to let layer above handle this.");
          sub_E890();
        }

        sub_8B76C();
        return (*(v3 + 8))(v20, v0);
      }
    }

    v32 = sub_8CCEC();
    v33 = sub_8D11C();
    if (sub_125A0(v33))
    {
      *sub_E8E0() = 0;
      sub_3E958(&dword_0, v34, v35, "#ReadAnnouncementFlowStrategy user tapped the play button. Handling direct invocation.");
      sub_E890();
    }

    sub_8B75C();
    return (*(v3 + 8))(v20, v0);
  }

  v28 = sub_8CCEC();
  v29 = sub_8D11C();
  if (sub_125A0(v29))
  {
    v30 = sub_E8E0();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "#ReadAnnouncementFlowStrategy the action is not a direct invocation. Ignoring to let layer above handle this.", v30, 2u);
    sub_E890();
  }

  sub_8B76C();
  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_3DDCC(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_3DDEC, 0, 0);
}

uint64_t sub_3DDEC()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_125A0(v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#ReadAnnouncementFlowStrategy makeIntentFromParse() called", v4, 2u);
    sub_E890();
  }

  v5 = v0[2];

  v6 = v0[2];
  if (v5)
  {
    v19 = v0[2];
  }

  else
  {
    v7 = objc_allocWithZone(INReadAnnouncementIntent);
    v19 = sub_45D60(1, 0, 0, 1);
  }

  v8 = v0[3];
  v18 = v8[16];
  sub_622C(v8 + 12, v8[15]);
  sub_8B59C();
  v10 = v8[10];
  v9 = v8[11];
  sub_622C(v8 + 7, v10);
  v11 = *(v9 + 16);
  v12 = v6;
  v13 = v11(v10, v9);
  v14 = sub_1D6AC(v13);
  v15 = [v14 _className];

  sub_8CEDC();

  sub_8B58C();
  sub_8B40C();

  v16 = v0[1];

  return v16(v19);
}

uint64_t sub_3E024(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_1DBE8((a2 + 56));
  return sub_8B57C();
}

uint64_t *sub_3E050()
{
  sub_2714(v0 + 2);
  sub_2714(v0 + 7);
  sub_2714(v0 + 12);
  return v0;
}

uint64_t sub_3E080()
{
  sub_3E050();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_3E0F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_3E188;

  return sub_3DDCC(v6, a2);
}

uint64_t sub_3E188(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  sub_E6F8();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_3E280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AnnouncementFlowStrategy = type metadata accessor for ReadAnnouncementFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, AnnouncementFlowStrategy, a3);
}

uint64_t sub_3E2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_3E954;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_3E390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  AnnouncementFlowStrategy = type metadata accessor for ReadAnnouncementFlowStrategy();
  *v11 = v5;
  v11[1] = sub_3E954;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, AnnouncementFlowStrategy, a5);
}

uint64_t sub_3E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  AnnouncementFlowStrategy = type metadata accessor for ReadAnnouncementFlowStrategy();
  *v11 = v5;
  v11[1] = sub_3E954;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, AnnouncementFlowStrategy, a5);
}

uint64_t sub_3E528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  AnnouncementFlowStrategy = type metadata accessor for ReadAnnouncementFlowStrategy();
  *v11 = v5;
  v11[1] = sub_3E954;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, AnnouncementFlowStrategy, a5);
}

uint64_t sub_3E5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  AnnouncementFlowStrategy = type metadata accessor for ReadAnnouncementFlowStrategy();
  *v13 = v6;
  v13[1] = sub_3D7E4;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, AnnouncementFlowStrategy, a6);
}

uint64_t sub_3E6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  AnnouncementFlowStrategy = type metadata accessor for ReadAnnouncementFlowStrategy();
  *v13 = v6;
  v13[1] = sub_3E954;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, AnnouncementFlowStrategy, a6);
}

uint64_t sub_3E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  AnnouncementFlowStrategy = type metadata accessor for ReadAnnouncementFlowStrategy();
  *v9 = v4;
  v9[1] = sub_3D630;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, AnnouncementFlowStrategy, a4);
}

uint64_t sub_3E90C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReadAnnouncementFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_3E958(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_3E994()
{
  sub_8D25C(104);
  v1._countAndFlagsBits = 0xD000000000000025;
  v1._object = 0x80000000000973C0;
  sub_8CF7C(v1);
  sub_8CB1C();
  sub_3EC6C();
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000000000973F0;
  sub_8CF7C(v2);
  sub_8CB1C();
  sub_2664(&qword_C1A08, &unk_92B40);
  v3._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v3);

  v4._object = 0x8000000000097420;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  sub_8CF7C(v4);
  sub_8CB1C();
  sub_3EC6C();
  v5._countAndFlagsBits = 10506;
  v5._object = 0xE200000000000000;
  sub_8CF7C(v5);
  return 0;
}

uint64_t sub_3EAFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_3E994();
}

uint64_t sub_3EB08(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_3EB48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3EB9C()
{
  result = qword_C1F38;
  if (!qword_C1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1F38);
  }

  return result;
}

unint64_t sub_3EBF0(uint64_t a1)
{
  result = sub_3EC18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3EC18()
{
  result = qword_C1F58;
  if (!qword_C1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1F58);
  }

  return result;
}

uint64_t sub_3EC6C()
{

  return sub_8D31C();
}

uint64_t sub_3EC8C()
{
  sub_6608();
  v1[121] = v0;
  v1[115] = v2;
  v1[109] = v3;
  v4 = sub_2664(&qword_C1CE0, &unk_91EC0);
  sub_65E4(v4);
  v6 = *(v5 + 64);
  v1[127] = sub_E83C();
  v7 = sub_8BCBC();
  v1[128] = v7;
  sub_115AC(v7);
  v1[129] = v8;
  v10 = *(v9 + 64);
  v1[130] = sub_E83C();
  v11 = sub_44348();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_3ED64()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#ReadAnnouncementIntentHandledStrategy makeIntentHandledResponse", v4, 2u);
    sub_44388();
  }

  v5 = *(v0 + 920);

  sub_2664(&qword_C2070, &unk_91E90);
  v6 = sub_8BB6C();
  v7 = sub_441EC(v6);
  if (v7)
  {
    v8 = sub_2D3B4(v7);

    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  *(v0 + 1128) = v9;
  v10 = sub_8CCEC();
  v11 = sub_8D11C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    v12[1] = v9;
    sub_443EC();
    _os_log_impl(v13, v14, v15, v16, v17, 8u);
    sub_E890();
  }

  v18 = *(v0 + 968);

  v19 = swift_allocObject();
  *(v0 + 1048) = v19;
  *(v19 + 16) = v9;
  *(v19 + 24) = v18;

  sub_ADE4(0, &qword_C2088, DialogExecutionResult_ptr);
  sub_444B4();
  swift_asyncLet_begin();
  v20 = sub_8CCEC();
  v21 = sub_8D11C();
  if (os_log_type_enabled(v20, v21))
  {
    *sub_E8E0() = 0;
    sub_443EC();
    _os_log_impl(v22, v23, v24, v25, v26, 2u);
    sub_E890();
  }

  v27 = *(v0 + 1040);
  v28 = *(v0 + 1032);
  v29 = *(v0 + 1024);
  v30 = *(v0 + 968);

  (*(v28 + 16))(v27, v30 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37ReadAnnouncementIntentHandledStrategy_completionOutputManifest, v29);
  sub_8BE1C();
  v31 = *(v0 + 728);
  sub_622C((v0 + 696), *(v0 + 720));
  v32 = sub_8B64C();
  sub_2714((v0 + 696));
  if (v32)
  {
    v33 = *(v0 + 920);
    v34 = sub_8BB6C();
    v35 = sub_441EC(v34);
    if (v35)
    {
      v36 = sub_2D3B4(v35);

      if (v36)
      {
        if (qword_BF840 != -1)
        {
          swift_once();
        }

        v37 = sub_8B71C();
        v38 = sub_8CCEC();
        v39 = sub_8D11C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = sub_E8E0();
          *v40 = 0;
          _os_log_impl(&dword_0, v38, v39, "#ReadAnnouncementIntentHandledStrategySending stop announcement command in makeCommandsAfterAceViewsForHandleIntentWithUser().", v40, 2u);
          sub_E890();
        }

        v41 = *(v0 + 1040);

        sub_2664(&qword_C0690, &unk_8EBF0);
        v42 = sub_44464();
        *(v42 + 16) = xmmword_8E860;
        *(v42 + 32) = v37;
        sub_8BC9C();
      }
    }

    v43 = sub_8CCEC();
    v44 = sub_8D11C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = sub_E8E0();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "#ReadAnnouncementIntentHandledStrategy making intent handled output for Carplay", v45, 2u);
      sub_44388();
    }

    v46 = *(v0 + 920);

    v47 = sub_8BB6C();
    sub_75540();
    v49 = v48;

    sub_75AD4(v49);
    sub_44448();
    if (v47)
    {
      v50 = *(v0 + 1016);
      sub_8CF2C();
    }

    v60 = *(v0 + 1016);
    v61 = sub_8C99C();
    sub_443C0(v61);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v62 = sub_44464();
    *(v0 + 1056) = v62;
    *(v62 + 16) = xmmword_8E860;
    v59 = sub_4431C();
  }

  else
  {
    v51 = sub_8CCEC();
    v52 = sub_8D11C();
    if (sub_443A4(v52))
    {
      v53 = sub_E8E0();
      sub_1D274(v53);
      sub_3D9B8(&dword_0, v54, v55, "#ReadAnnouncementIntentHandledStrategy making intent handled output");
      sub_1D214();
    }

    v56 = sub_8B8FC();
    *(v0 + 1088) = v56;
    sub_E824(v56);
    v57 = sub_8B8EC();
    *(v0 + 1096) = v57;
    *(v0 + 824) = v57;
    sub_2664(&qword_C0690, &unk_8EBF0);
    v58 = sub_44464();
    *(v0 + 1104) = v58;
    *(v58 + 16) = xmmword_8E860;
    v59 = sub_4431C();
  }

  return _swift_asyncLet_get_throwing(v59);
}

uint64_t sub_3F2D8()
{
  *(v1 + 1064) = v0;
  if (v0)
  {
    return sub_44310(sub_3F84C);
  }

  else
  {
    return sub_44310(sub_3F304);
  }
}

uint64_t sub_3F304()
{
  sub_6608();
  sub_444C8(*(v0 + 1056));
  v2 = v1;
  swift_task_alloc();
  sub_44358();
  *(v0 + 1072) = v3;
  *v3 = v4;
  v3[1] = sub_3F3B0;
  v5 = *(v0 + 1056);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 968);
  v8 = *(v0 + 872);

  return sub_41C30();
}

uint64_t sub_3F3B0()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v3 = v2;
  v5 = *(v4 + 1072);
  v6 = *(v4 + 1056);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v9 + 1080) = v0;

  if (v0)
  {
    v10 = sub_3F978;
  }

  else
  {
    v10 = sub_3F4CC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_3F4CC()
{
  sub_152A0();
  v3 = sub_4451C();
  sub_1151C(v3, &qword_C1CE0, &unk_91EC0);
  (*(v2 + 8))(v1, v0);
  v4 = sub_4431C();

  return _swift_asyncLet_finish(v4);
}

uint64_t sub_3F570()
{
  *(v1 + 1112) = v0;
  if (v0)
  {
    return sub_44310(sub_3FA8C);
  }

  else
  {
    return sub_44310(sub_3F59C);
  }
}

uint64_t sub_3F59C()
{
  sub_6608();
  sub_444C8(v0[138]);
  v1 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v3 = v2;
  swift_task_alloc();
  sub_44358();
  v0[140] = v4;
  *v4 = v5;
  v4[1] = sub_3F654;
  v6 = v0[138];
  v7 = v0[136];
  v8 = v0[130];
  v9 = v0[109];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v6, v8, v7, &protocol witness table for ResponseFactory);
}

uint64_t sub_3F654()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 1120);
  v3 = *(v1 + 1104);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  v6 = sub_44348();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_3F754()
{
  sub_6608();
  v1 = *(v0 + 1096);
  v2 = sub_44530();
  v3(v2);

  v4 = sub_4431C();

  return _swift_asyncLet_finish(v4);
}

uint64_t sub_3F7DC()
{
  sub_6608();
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[127];

  sub_44364();

  return v4();
}

uint64_t sub_3F84C()
{
  sub_152A0();
  v1 = v0[132];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  sub_1151C(v0[127], &qword_C1CE0, &unk_91EC0);
  v5 = *(v3 + 8);
  v6 = sub_44510();
  v7(v6);
  *(v1 + 16) = 0;

  v8 = sub_4431C();

  return _swift_asyncLet_finish(v8);
}

uint64_t sub_3F908()
{
  sub_152A0();
  v1 = *(v0 + 1064);
  sub_4447C();

  sub_65A0();

  return v2();
}

uint64_t sub_3F978()
{
  sub_152A0();
  v3 = sub_4451C();
  sub_1151C(v3, &qword_C1CE0, &unk_91EC0);
  (*(v2 + 8))(v1, v0);
  v4 = sub_4431C();

  return _swift_asyncLet_finish(v4);
}

uint64_t sub_3FA1C()
{
  sub_152A0();
  v1 = *(v0 + 1080);
  sub_4447C();

  sub_65A0();

  return v2();
}

uint64_t sub_3FA8C()
{
  sub_6608();
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = sub_44530();
  v4(v3);
  *(v1 + 16) = 0;

  v5 = sub_4431C();

  return _swift_asyncLet_finish(v5);
}

uint64_t sub_3FB24()
{
  sub_152A0();
  v1 = *(v0 + 1112);
  sub_4447C();

  sub_65A0();

  return v2();
}

uint64_t sub_3FB94(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  return _swift_task_switch(sub_3FBB8, 0, 0);
}

uint64_t sub_3FBB8()
{
  sub_6608();
  v1 = *(*(v0 + 72) + 64);
  if (*(v0 + 96) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    sub_443E0(v2);

    return sub_3BD18();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    sub_443E0(v4);

    return sub_3C1D8();
  }
}

uint64_t sub_3FCB0()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v3 = v2;
  sub_444E8(v4);
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {
    sub_65A0();

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_3FDC4, 0, 0);
  }
}

uint64_t sub_3FDD0()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v3 = v2;
  sub_444D4(v4);
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {
    sub_65A0();

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_3FEE4, 0, 0);
  }
}

uint64_t sub_3FEF0()
{
  sub_6608();
  v1[121] = v0;
  v1[115] = v2;
  v1[109] = v3;
  v4 = sub_2664(&qword_C1CE0, &unk_91EC0);
  sub_65E4(v4);
  v6 = *(v5 + 64);
  v1[127] = sub_E83C();
  v7 = sub_2664(&qword_C2070, &unk_91E90);
  v1[128] = v7;
  sub_115AC(v7);
  v1[129] = v8;
  v1[130] = *(v9 + 64);
  v1[131] = sub_E83C();
  v10 = sub_44348();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_3FFDC()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[121];
  (*(v3 + 16))(v1, v0[115], v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[132] = v7;
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v1, v4);

  sub_ADE4(0, &qword_C2088, DialogExecutionResult_ptr);
  sub_444B4();
  swift_asyncLet_begin();
  v8 = swift_task_alloc();
  v0[133] = v8;
  *v8 = v0;
  v8[1] = sub_40138;
  v9 = v0[121];

  return sub_40EC0();
}

uint64_t sub_40138()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 1064);
  v3 = *v0;
  sub_E6F8();
  *v4 = v3;

  v5 = sub_44348();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_4021C()
{
  sub_152A0();
  sub_8BE1C();
  v1 = *(v0 + 728);
  sub_622C((v0 + 696), *(v0 + 720));
  sub_44510();
  v2 = sub_8B64C();
  sub_2714((v0 + 696));
  if (v2)
  {
    v3 = *(v0 + 1024);
    v4 = *(v0 + 920);
    v5 = sub_8BB6C();
    v6 = sub_441EC(v5);
    if (v6)
    {
      v7 = sub_2D3B4(v6);

      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    *(v0 + 1144) = v8;
    v19 = *(v0 + 1024);
    v20 = *(v0 + 920);
    v21 = sub_8BB6C();
    sub_75540();
    v23 = v22;

    sub_75AD4(v23);
    sub_44448();
    if (v21)
    {
      v24 = *(v0 + 1016);
      sub_8CF2C();
    }

    v25 = *(v0 + 1016);
    v26 = sub_8C99C();
    sub_443C0(v26);
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v27 = sub_8CD0C();
    sub_22B78(v27, qword_C3DF8);
    v28 = sub_8CCEC();
    v29 = sub_8D11C();
    if (sub_443A4(v29))
    {
      v30 = sub_E8E0();
      sub_1D274(v30);
      sub_3D9B8(&dword_0, v31, v32, "#ReadAnnouncementIntentHandledStrategy makePreHandleIntentOutput Interstitial for CarPlay");
      sub_1D214();
    }

    sub_2664(&qword_C0690, &unk_8EBF0);
    v33 = sub_44464();
    *(v0 + 1072) = v33;
    *(v33 + 16) = xmmword_8E860;
    v18 = sub_4431C();
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v9 = sub_8CD0C();
    sub_22B78(v9, qword_C3DF8);
    v10 = sub_8CCEC();
    v11 = sub_8D11C();
    if (sub_443A4(v11))
    {
      v12 = sub_E8E0();
      sub_1D274(v12);
      sub_3D9B8(&dword_0, v13, v14, "#ReadAnnouncementIntentHandledStrategy makePreHandleIntentOutput Interstitial");
      sub_1D214();
    }

    v15 = sub_8B8FC();
    *(v0 + 1104) = v15;
    sub_E824(v15);
    v16 = sub_8B8EC();
    *(v0 + 1112) = v16;
    *(v0 + 824) = v16;
    sub_2664(&qword_C0690, &unk_8EBF0);
    v17 = sub_44464();
    *(v0 + 1120) = v17;
    *(v17 + 16) = xmmword_8E860;
    v18 = sub_4431C();
  }

  return _swift_asyncLet_get_throwing(v18);
}

uint64_t sub_404B0()
{
  *(v1 + 1080) = v0;
  if (v0)
  {
    return sub_44310(sub_40A04);
  }

  else
  {
    return sub_44310(sub_404DC);
  }
}

uint64_t sub_404DC()
{
  sub_6608();
  sub_444C8(*(v0 + 1072));
  v2 = v1;
  swift_task_alloc();
  sub_44358();
  *(v0 + 1088) = v3;
  *v3 = v4;
  v3[1] = sub_40588;
  v5 = *(v0 + 1072);
  v6 = *(v0 + 1144);
  v7 = *(v0 + 968);
  v8 = *(v0 + 872);

  return sub_41C30();
}

uint64_t sub_40588()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v3 = v2;
  v5 = *(v4 + 1088);
  v6 = *(v4 + 1072);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v9 + 1096) = v0;

  if (v0)
  {
    v10 = sub_40B08;
  }

  else
  {
    v10 = sub_406A4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_406A4()
{
  sub_6608();
  sub_1151C(*(v0 + 1016), &qword_C1CE0, &unk_91EC0);
  v1 = sub_4431C();

  return _swift_asyncLet_finish(v1);
}

uint64_t sub_40728()
{
  *(v1 + 1128) = v0;
  if (v0)
  {
    return sub_44310(sub_40BFC);
  }

  else
  {
    return sub_44310(sub_40754);
  }
}

uint64_t sub_40754()
{
  sub_152A0();
  v1 = v0[121];
  sub_444C8(v0[140]);
  v2 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37ReadAnnouncementIntentHandledStrategy_completionOutputManifest;
  v3 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v5 = v4;
  swift_task_alloc();
  sub_44358();
  v0[142] = v6;
  *v6 = v7;
  v6[1] = sub_40820;
  v8 = v0[140];
  v9 = v0[138];
  v10 = v0[109];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v10, v8, v1 + v2, v9, &protocol witness table for ResponseFactory);
}

uint64_t sub_40820()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 1136);
  v3 = *(v1 + 1120);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  v6 = sub_44348();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_40920()
{
  sub_6608();
  v1 = *(v0 + 1112);

  v2 = sub_4431C();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_40994()
{
  sub_6608();
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[127];

  sub_44364();

  return v4();
}

uint64_t sub_40A04()
{
  sub_6608();
  v1 = *(v0 + 1072);
  sub_1151C(*(v0 + 1016), &qword_C1CE0, &unk_91EC0);
  *(v1 + 16) = 0;

  v2 = sub_4431C();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_40A98()
{
  sub_152A0();
  v1 = *(v0 + 1080);
  sub_44498();

  sub_65A0();

  return v2();
}

uint64_t sub_40B08()
{
  sub_6608();
  sub_1151C(*(v0 + 1016), &qword_C1CE0, &unk_91EC0);
  v1 = sub_4431C();

  return _swift_asyncLet_finish(v1);
}

uint64_t sub_40B8C()
{
  sub_152A0();
  v1 = *(v0 + 1096);
  sub_44498();

  sub_65A0();

  return v2();
}

uint64_t sub_40BFC()
{
  sub_6608();
  v1 = *(v0 + 1112);
  *(*(v0 + 1120) + 16) = 0;

  v2 = sub_4431C();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_40C80()
{
  sub_152A0();
  v1 = *(v0 + 1128);
  sub_44498();

  sub_65A0();

  return v2();
}

uint64_t sub_40CF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_40D90;

  return sub_41514();
}

uint64_t sub_40D90()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;

  if (v0)
  {
    sub_4441C();

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = sub_44374();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_40EC0()
{
  sub_6608();
  v1[17] = v0;
  v2 = sub_8C7FC();
  v1[18] = v2;
  sub_115AC(v2);
  v1[19] = v3;
  v5 = *(v4 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v6 = sub_44348();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_40F78()
{
  v33 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  sub_8BE1C();
  v5 = v0[6];
  sub_622C(v0 + 2, v0[5]);
  sub_444FC();
  sub_8B5EC();
  (*(v4 + 104))(v2, enum case for InputOrigin.clientGenerated(_:), v3);
  sub_44510();
  v6 = sub_2507C();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  sub_2714(v0 + 2);
  if ((v6 & 1) == 0)
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v13 = v0[17];
    v14 = sub_8CD0C();
    sub_22B78(v14, qword_C3DF8);

    v15 = sub_8CCEC();
    v16 = sub_8D11C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[21];
      v30 = v0[18];
      v18 = sub_1D358();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v18 = 136315138;
      sub_8BE1C();
      v19 = v0[11];
      sub_622C(v0 + 7, v0[10]);
      sub_8B5EC();
      v20 = sub_8C7EC();
      v22 = v21;
      v7(v17, v30);
      sub_2714(v0 + 7);
      v23 = sub_862D8(v20, v22, &v32);

      *(v18 + 4) = v23;
      sub_44544(&dword_0, v24, v25, "#ReadAnnouncementIntentHandledStrategy not playing notification sound because inputOrigin is %s");
      sub_2714(v31);
      sub_E890();
      sub_44388();
    }

    v27 = v0[20];
    v26 = v0[21];

    sub_65A0();
    sub_6614();

    __asm { BRAA            X1, X16 }
  }

  sub_8B5AC();
  swift_task_alloc();
  sub_44358();
  v0[22] = v8;
  *v8 = v9;
  v8[1] = sub_41238;
  sub_6614();

  return sub_44584(v10);
}

uint64_t sub_41238()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  sub_65D8();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v3 + 184) = v0;

  sub_2714((v3 + 96));
  if (v0)
  {
    v9 = sub_41414;
  }

  else
  {
    v9 = sub_41340;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_41340()
{
  sub_152A0();
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_22B78(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_443A4(v3))
  {
    v4 = sub_E8E0();
    sub_1D274(v4);
    sub_3D9B8(&dword_0, v5, v6, "#ReadAnnouncementIntentHandledStrategy played notification sound");
    sub_1D214();
  }

  v8 = *(v0 + 160);
  v7 = *(v0 + 168);

  sub_65A0();

  return v9();
}