unint64_t sub_100066D5C()
{
  result = qword_1000A7010;
  if (!qword_1000A7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7010);
  }

  return result;
}

unint64_t sub_100066DB4()
{
  result = qword_1000A7018;
  if (!qword_1000A7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7018);
  }

  return result;
}

unint64_t sub_100066E3C()
{
  result = qword_1000A7030;
  if (!qword_1000A7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7030);
  }

  return result;
}

uint64_t sub_100066E90(uint64_t a1)
{
  *(a1 + 8) = sub_1000651A0(&qword_1000A6710, type metadata accessor for ICFolderArchiveModel);
  result = sub_1000651A0(&qword_1000A7070, type metadata accessor for ICFolderArchiveModel);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100066F18()
{
  result = qword_1000A7078;
  if (!qword_1000A7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7078);
  }

  return result;
}

unint64_t sub_100066F70()
{
  result = qword_1000A7080;
  if (!qword_1000A7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7080);
  }

  return result;
}

unint64_t sub_100066FC8()
{
  result = qword_1000A7088;
  if (!qword_1000A7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7088);
  }

  return result;
}

unint64_t sub_100067020()
{
  result = qword_1000A7090;
  if (!qword_1000A7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7090);
  }

  return result;
}

unint64_t sub_100067078()
{
  result = qword_1000A7098;
  if (!qword_1000A7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7098);
  }

  return result;
}

uint64_t sub_100067130(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006718C()
{
  result = qword_1000A70C0;
  if (!qword_1000A70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A70C0);
  }

  return result;
}

unint64_t sub_1000671E4()
{
  result = qword_1000A70C8;
  if (!qword_1000A70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A70C8);
  }

  return result;
}

unint64_t sub_100067238()
{
  result = qword_1000A70D8;
  if (!qword_1000A70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A70D8);
  }

  return result;
}

unint64_t sub_10006728C()
{
  result = qword_1000A70E0;
  if (!qword_1000A70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A70E0);
  }

  return result;
}

unint64_t sub_1000672E0()
{
  result = qword_1000A70F0;
  if (!qword_1000A70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A70F0);
  }

  return result;
}

uint64_t sub_100067334(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&unk_1000A6F28, &qword_10008EB50);
    sub_1000651A0(a2, _s8ActivityVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000673D0()
{
  result = qword_1000A7120;
  if (!qword_1000A7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7120);
  }

  return result;
}

unint64_t sub_100067424()
{
  result = qword_1000A7128;
  if (!qword_1000A7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7128);
  }

  return result;
}

unint64_t sub_100067478()
{
  result = qword_1000A7150;
  if (!qword_1000A7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7150);
  }

  return result;
}

unint64_t sub_1000674CC()
{
  result = qword_1000A7158;
  if (!qword_1000A7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7158);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICFolderArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICFolderArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100067674()
{
  result = qword_1000A7160;
  if (!qword_1000A7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7160);
  }

  return result;
}

unint64_t sub_1000676CC()
{
  result = qword_1000A7168;
  if (!qword_1000A7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7168);
  }

  return result;
}

unint64_t sub_100067724()
{
  result = qword_1000A7170;
  if (!qword_1000A7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7170);
  }

  return result;
}

uint64_t sub_100067784()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    sub_100085098();
  }

  v3 = sub_100085068();

  if ([v0 isURL])
  {
    goto LABEL_4;
  }

  if ([v0 hasFallbackPDF])
  {
    v5 = sub_100085068();
    v6 = [v3 stringByAppendingPathExtension:v5];

    if (!v6)
    {
LABEL_7:

      return 0x2E77656976657250;
    }
  }

  else
  {
    if (![v0 hasFallbackImage])
    {
      sub_100068978();
      v9 = sub_100085068();

      v10 = [v3 stringByAppendingPathExtension:v9];

      if (!v10)
      {
LABEL_4:

        return 0;
      }

      v8 = sub_100085098();

      return v8;
    }

    v7 = sub_100085068();
    v6 = [v3 stringByAppendingPathExtension:v7];

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v8 = sub_100085098();

  return v8;
}

uint64_t sub_10006799C()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100085098();

  return v3;
}

uint64_t sub_100067A04()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A7178);
  sub_10000B614(v0, qword_1000A7178);
  return sub_100084F98();
}

uint64_t sub_100067A50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000847C8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100067AC8()
{
  v1 = [*v0 hashtags];
  sub_100008250(0, &qword_1000A64E8, ICHashtag_ptr);
  sub_1000697DC(&qword_1000A64F0, &qword_1000A64E8, ICHashtag_ptr);
  v2 = sub_100085298();

  v3 = sub_10003F0B8(v2);

  v4 = sub_100079D24(v3);

  return v4;
}

uint64_t sub_100067BA8(uint64_t a1)
{
  v3 = *v1;
  [v3 persistPendingChanges];
  v4 = v3;
  sub_100011A6C(a1, &v7);
  sub_100040688(v4, a1, &v7);
  if (qword_1000A53F0 != -1)
  {
    swift_once();
  }

  sub_100040C50();
  v5 = sub_100084508();
  sub_100040A64(&v7);
  return v5;
}

uint64_t sub_100067C98()
{
  v1 = [v0 visibleNotesInFolder];
  sub_100008250(0, &qword_1000A56C0, ICNote_ptr);
  v2 = sub_100085208();

  if (v2 >> 62)
  {
LABEL_13:
    v3 = sub_100085718();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_100085648();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_11:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_11;
          }
        }

        v7 = v5;
        v8 = sub_100067E04();

        sub_100039460(v8);
        ++v4;
      }

      while (v6 != v3);
    }
  }

  v9 = sub_100079D24(_swiftEmptyArrayStorage);

  return v9;
}

void *sub_100067E04()
{
  v1 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v41 - v3;
  v5 = _s3TagVMa();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = [v0 account];
  if (!v12)
  {
    return &_swiftEmptySetSingleton;
  }

  v13 = v12;
  v14 = [v0 visibleInlineAttachments];
  sub_100008250(0, &qword_1000A56A8, ICInlineAttachment_ptr);
  sub_1000697DC(&qword_1000A7198, &qword_1000A56A8, ICInlineAttachment_ptr);
  v15 = sub_100085298();

  v16 = v13;
  sub_1000694B8(v15, v16);
  v18 = v17;

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_20:

    v23 = _swiftEmptyArrayStorage;
LABEL_21:
    v40 = sub_100079D24(v23);

    return v40;
  }

  v19 = sub_100085718();
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_4:
  v20 = v18;
  v47 = _swiftEmptyArrayStorage;
  result = sub_10003BCE0(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = v47;
    v24 = v20;
    v41 = v16;
    v42 = v20 & 0xC000000000000001;
    v43 = v19;
    v44 = v20;
    do
    {
      if (v42)
      {
        v25 = sub_100085648();
      }

      else
      {
        v25 = *(v24 + 8 * v22 + 32);
      }

      v26 = v25;
      v27 = sub_1000848B8();
      v28 = *(*(v27 - 8) + 56);
      v29 = 1;
      v28(v9, 1, 1, v27);
      v30 = [v26 creationDate];
      if (v30)
      {
        v31 = v30;
        sub_100084888();

        v29 = 0;
      }

      v28(v4, v29, 1, v27);
      sub_100040A94(v4, v9);
      v32 = [v26 displayText];
      if (v32)
      {
        v33 = v32;
        v34 = sub_100085098();
        v36 = v35;
      }

      else
      {

        v34 = 0;
        v36 = 0xE000000000000000;
      }

      v37 = &v9[*(v46 + 20)];
      *v37 = v34;
      v37[1] = v36;
      sub_10003DAC8(v9, v11);
      v47 = v23;
      v39 = v23[2];
      v38 = v23[3];
      if (v39 >= v38 >> 1)
      {
        sub_10003BCE0(v38 > 1, v39 + 1, 1);
        v23 = v47;
      }

      ++v22;
      v23[2] = v39 + 1;
      sub_10003DAC8(v11, v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v39);
      v24 = v44;
    }

    while (v43 != v22);

    v16 = v41;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_100068258(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_100085098();

  return v5;
}

uint64_t sub_1000682E8(uint64_t a1)
{
  v3 = type metadata accessor for ICFolderArchiveModel(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  [v7 persistPendingChanges];
  v8 = v7;
  sub_100011A6C(a1, v11);
  sub_100062820(v8, a1, v6);
  if (qword_1000A53F0 != -1)
  {
    swift_once();
  }

  sub_100069794(&qword_1000A7070, type metadata accessor for ICFolderArchiveModel);
  v9 = sub_100084508();
  sub_10006982C(v6, type metadata accessor for ICFolderArchiveModel);
  return v9;
}

uint64_t sub_10006845C(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1;
  v5 = sub_1000850C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ICNoteArchiveModel();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v3 persistPendingChanges];
  v14 = v3;
  sub_100011A6C(a1, v26);
  sub_10007C7F8(v14, a1, v13);
  if (*a1)
  {
    v15 = &v13[*(v10 + 100)];
    if (!v15[1])
    {
      goto LABEL_4;
    }

    v16 = *v15;
    v17 = v15[1];

    sub_1000850B8();
    v10 = sub_1000850A8();
    v19 = v18;

    (*(v6 + 8))(v9, v5);
    if (v19 >> 60 == 15)
    {
LABEL_4:
      if (qword_1000A5458 != -1)
      {
        swift_once();
      }

      v20 = sub_100084FB8();
      sub_10000B614(v20, qword_1000A7178);
      v21 = sub_100084FA8();
      v22 = sub_100085378();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "failed to encode markdown string", v23, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    if (qword_1000A53F0 != -1)
    {
      swift_once();
    }

    sub_100069794(&qword_1000A7190, type metadata accessor for ICNoteArchiveModel);
    v24 = sub_100084508();
    if (!v2)
    {
      v10 = v24;
    }
  }

  sub_10006982C(v13, type metadata accessor for ICNoteArchiveModel);
  return v10;
}

uint64_t sub_1000687A8()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100085098();

  return v3;
}

id sub_100068858()
{
  if ([v0 isTable])
  {
    v1 = [v0 identifier];
    if (v1)
    {
      v2 = v1;
      v3 = sub_100085098();
      v5 = v4;
    }

    else
    {
      v5 = 0xE500000000000000;
      v3 = 0x656C626154;
    }

    v10._countAndFlagsBits = v3;
    v10._object = v5;
    sub_100085158(v10);

    v11._countAndFlagsBits = 1987273518;
    v11._object = 0xE400000000000000;
    sub_100085158(v11);
    return 0;
  }

  else
  {
    result = [v0 media];
    if (result)
    {
      v7 = result;
      v8 = [result filename];

      v9 = sub_100085098();
      return v9;
    }
  }

  return result;
}

uint64_t sub_100068978()
{
  v1 = v0;
  v2 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  if ([v1 isTable])
  {
    return 7762787;
  }

  result = [v1 media];
  if (result)
  {
    v10 = result;
    v11 = [result mediaURL];

    if (v11)
    {
      sub_100084768();

      v12 = sub_1000847C8();
      (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    }

    else
    {
      v12 = sub_1000847C8();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    }

    sub_100009B9C(v6, v8);
    sub_1000847C8();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_100069450(v8);
      return 0;
    }

    else
    {
      v14 = sub_100084698();
      (*(v13 + 8))(v8, v12);
      return v14;
    }
  }

  return result;
}

uint64_t sub_100068BB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  if ([v2 isPasswordProtected] || (v8 = objc_msgSend(v2, "media")) == 0)
  {
    v12 = sub_1000847C8();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }

  else
  {
    v9 = v8;
    v10 = [v8 mediaURL];

    if (v10)
    {
      sub_100084768();

      v11 = sub_1000847C8();
      (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    }

    else
    {
      v15 = sub_1000847C8();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    return sub_100009B9C(v7, a1);
  }
}

id sub_100068D7C()
{
  if (![v0 isTable])
  {
    result = [v0 media];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result cryptoStrategy];

    if (!v5)
    {
      return 0;
    }

    v3 = [v5 decryptedData];
    swift_unknownObjectRelease();
    if (!v3)
    {
      return 0;
    }

LABEL_8:
    v6 = sub_100084808();

    return v6;
  }

  result = [v0 tableModel];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result csvData];

  if (v3)
  {
    goto LABEL_8;
  }

  return 0;
}

void *sub_100068E88()
{
  v1 = [v0 attachmentModel];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_100005740(&qword_1000A5A50, &qword_10008B570);
    v4 = *(sub_1000847C8() - 8);
    v5 = *(v4 + 72);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10008EA00;
    v8 = [v3 paperBundleDatabaseSubdirectoryURL];
    sub_100084768();

    v9 = [v3 paperBundleAssetsSubdirectoryURL];
    sub_100084768();

    v10 = sub_10007A410(v7);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  return v10;
}

id sub_100069028()
{
  if ([v0 attachmentType] != 14 && objc_msgSend(v0, "attachmentType") != 15)
  {
    return 0;
  }

  result = [v0 fallbackPDFData];
  if (result)
  {
    v2 = result;
    v3 = sub_100084808();

    return v3;
  }

  return result;
}

uint64_t sub_1000690BC(uint64_t a1)
{
  v3 = type metadata accessor for ICAttachmentArchiveModel();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v1 persistPendingChanges];
  v7 = [v1 media];
  if (v7)
  {
    v8 = v7;
    [v7 persistPendingChanges];
  }

  v9 = v1;
  sub_100011A6C(a1, v12);
  sub_10005946C(v9, a1, v6);
  if (qword_1000A53F0 != -1)
  {
    swift_once();
  }

  sub_100069794(&qword_1000A6B98, type metadata accessor for ICAttachmentArchiveModel);
  v10 = sub_100084508();
  sub_10006982C(v6, type metadata accessor for ICAttachmentArchiveModel);
  return v10;
}

uint64_t sub_100069264()
{
  v1 = *v0;
  v2 = [*v0 userTitle];
  if (!v2)
  {
    v2 = [v1 title];
    if (!v2)
    {
      return 0;
    }
  }

  v3 = v2;
  v4 = sub_100085098();

  return v4;
}

uint64_t sub_10006937C()
{
  v1 = [*v0 fallbackImageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100084808();

  return v3;
}

uint64_t sub_100069450(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000694B8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100085578();
    sub_100008250(0, &qword_1000A56A8, ICInlineAttachment_ptr);
    sub_1000697DC(&qword_1000A7198, &qword_1000A56A8, ICInlineAttachment_ptr);
    sub_1000852C8();
    v2 = v21;
    v3 = v22;
    v5 = v23;
    v4 = v24;
    v6 = v25;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

LABEL_8:
  v10 = v4;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1000855D8() || (sub_100008250(0, &qword_1000A56A8, ICInlineAttachment_ptr), swift_dynamicCast(), v14 = v20, v4 = v10, v6 = v11, !v20))
      {
LABEL_24:
        sub_100010FF4();
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v4 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_18:
    if (![v14 isHashtagAttachment] || (v15 = objc_msgSend(v14, "tokenContentIdentifier")) == 0)
    {

      goto LABEL_8;
    }

    v16 = v15;
    v17 = [objc_opt_self() hashtagWithStandardizedContent:v15 onlyVisible:1 account:a2];

    v10 = v4;
    v11 = v6;
    if (v17)
    {
      sub_1000851F8();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100085228();
      }

      sub_100085258();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v13 = *(v3 + 8 * v4);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100069794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000697DC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008250(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006982C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int ICMarkdownFlavor.hashValue.getter(unsigned __int8 a1)
{
  sub_100085A08();
  sub_100085A18(a1);
  return sub_100085A38();
}

unint64_t sub_100069918()
{
  result = qword_1000A71A0;
  if (!qword_1000A71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A71A0);
  }

  return result;
}

uint64_t sub_1000699CC()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  swift_weakInit();
  v8 = sub_10007A408;
  v9 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072320;
  ObjectType = &unk_1000A1568;
  v3 = _Block_copy(aBlock);

  v4 = [v1 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);

  ObjectType = swift_getObjectType();
  aBlock[0] = v4;
  swift_beginAccess();
  sub_100005820(aBlock, v0 + 128, &qword_1000A5AD0, &unk_10008B5E0);
  return swift_endAccess();
}

uint64_t sub_100069B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a3;
  v4 = v3;
  v7 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v20 - v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = sub_1000847C8();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 0;
  v16 = v3[2];
  v20[4] = v13;
  v20[5] = v4;
  v20[6] = a1;
  v20[7] = a2;
  v20[8] = &v21;
  sub_100084C08();
  sub_100075E6C(&qword_1000A72F0, 255, &type metadata accessor for ICModernObjectProvider);
  v17 = v20[1];
  sub_100084A58();
  if (v17)
  {
    goto LABEL_4;
  }

  v18 = v20[0];
  sub_100005888(v13, v10, &qword_1000A56E8, &qword_10008D350);
  result = (*(v15 + 48))(v10, 1, v14);
  if (result != 1)
  {
    (*(v15 + 32))(v18, v10, v14);
LABEL_4:
    sub_10006A064(v11, &v21, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100069D50(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v12 = sub_100084FB8();
  sub_10000B614(v12, qword_1000A5AA0);
  v13 = v6[2];
  v32 = a1;
  v13(v11, a1, v5);
  v14 = sub_100084FA8();
  v15 = sub_100085368();
  v16 = os_log_type_enabled(v14, v15);
  v33 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v2;
    v34 = v29;
    *v17 = 136315138;
    sub_100075E6C(&qword_1000A5AD8, 255, &type metadata accessor for URL);
    v18 = sub_100085908();
    v19 = v3;
    v21 = v20;
    v22 = v6[1];
    v22(v11, v5);
    v23 = sub_100038A4C(v18, v21, &v34);
    v3 = v19;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Removing archive… {url: %s}", v17, 0xCu);
    sub_100006304(v29);
  }

  else
  {

    v22 = v6[1];
    v22(v11, v5);
  }

  v24 = *(v3 + 88);
  v25 = *(v3 + 96);
  swift_getObjectType();
  v26 = v31;
  sub_100084748();
  sub_1000849B8();
  return (v22)(v26, v5);
}

void sub_10006A064(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v48 = a3;
  v50 = a2;
  v3 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  v9 = sub_1000847C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v47 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - v15;
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  v19 = swift_projectBox();
  swift_beginAccess();
  v20 = v10;
  sub_100005888(v19, v8, &qword_1000A56E8, &qword_10008D350);
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    sub_1000058F0(v8, &qword_1000A56E8, &qword_10008D350);
  }

  else
  {
    (*(v20 + 32))(v18, v8, v9);
    if ((*v50 & 1) == 0)
    {
      sub_100069D50(v18);
      v34 = v47;
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v35 = sub_100084FB8();
      sub_10000B614(v35, qword_1000A5AA0);
      (*(v20 + 16))(v34, v18, v9);
      v36 = sub_100084FA8();
      v37 = sub_100085368();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v51 = v39;
        *v38 = 136315138;
        sub_100075E6C(&qword_1000A5AD8, 255, &type metadata accessor for URL);
        v40 = sub_100085908();
        v41 = v20;
        v43 = v42;
        v44 = *(v41 + 8);
        v44(v34, v9);
        v45 = sub_100038A4C(v40, v43, &v51);

        *(v38 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v36, v37, "Failed to create archive — removing temporary files {url: %s}", v38, 0xCu);
        sub_100006304(v39);

        v44(v18, v9);
      }

      else
      {

        v46 = *(v20 + 8);
        v46(v34, v9);
        v46(v18, v9);
      }

      return;
    }

    (*(v20 + 8))(v18, v9);
  }

  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v22 = sub_100084FB8();
  sub_10000B614(v22, qword_1000A5AA0);

  v23 = sub_100084FA8();
  v24 = sub_100085368();
  if (!os_log_type_enabled(v23, v24))
  {

    goto LABEL_11;
  }

  v50 = v20;
  v25 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v52 = v48;
  *v25 = 136315138;
  swift_beginAccess();
  v26 = v19;
  v27 = v49;
  sub_100005888(v26, v49, &qword_1000A56E8, &qword_10008D350);
  v28 = v21(v27, 1, v9);

  if (v28 != 1)
  {
    v29 = v50;
    (*(v50 + 32))(v16, v27, v9);
    sub_100075E6C(&qword_1000A5AD8, 255, &type metadata accessor for URL);
    v30 = sub_100085908();
    v32 = v31;
    (*(v29 + 8))(v16, v9);
    v33 = sub_100038A4C(v30, v32, &v52);

    *(v25 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Created archive {url: %s}", v25, 0xCu);
    sub_100006304(v48);

LABEL_11:

    return;
  }

  __break(1u);
}

uint64_t sub_10006A6C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v86 = a4;
  v87 = a5;
  v94 = a1;
  v7 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v85 = *(v7 - 8);
  v8 = *(v85 + 64);
  __chkstk_darwin(v7);
  v10 = v77 - v9;
  v11 = sub_100084F28();
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = *(v89 + 64);
  __chkstk_darwin(v11);
  v88 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100084EF8();
  v15 = *(v14 - 8);
  v91 = v14;
  v92 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v77 - v20;
  v22 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = v77 - v28;
  v30 = __chkstk_darwin(v27);
  v96 = v77 - v31;
  __chkstk_darwin(v30);
  v33 = v77 - v32;
  v95 = a2;
  v34 = v97;
  result = sub_10006AF24(a3, v77 - v32);
  if (!v34)
  {
    v79 = v19;
    v80 = v29;
    v78 = v26;
    v81 = v21;
    v82 = a3;
    v93 = 0;
    v36 = sub_1000847C8();
    v37 = *(v36 - 8);
    (*(v37 + 56))(v33, 0, 1, v36);
    v38 = v33;
    v39 = v94;
    sub_100005820(v38, v94, &qword_1000A56E8, &qword_10008D350);
    v40 = v96;
    v41 = *(v95 + 88);
    v97 = *(v95 + 96);
    v42 = v36;
    sub_100005888(v39, v96, &qword_1000A56E8, &qword_10008D350);
    v83 = *(v37 + 48);
    v84 = v37 + 48;
    result = v83(v40, 1, v36);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      swift_getObjectType();
      v43 = v93;
      sub_1000849C8();
      v93 = v43;
      if (v43)
      {
        return (*(v37 + 8))(v40, v36);
      }

      v77[0] = *(v37 + 8);
      v77[1] = v37 + 8;
      (v77[0])(v40, v36);
      if (qword_1000A53E8 != -1)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v44 = v90;
        v45 = sub_10000B614(v90, qword_1000A5AB8);
        v46 = v88;
        v47 = v89;
        v48 = *(v89 + 16);
        v97 = v45;
        v48(v88);
        v49 = v80;
        sub_100005888(v39, v80, &qword_1000A56E8, &qword_10008D350);
        result = v83(v49, 1, v42);
        if (result == 1)
        {
          break;
        }

        sub_1000846F8(v50);
        sub_100084F18();
        v51 = v81;
        sub_100084ED8();
        (*(v47 + 8))(v46, v44);
        v90 = v42;
        (v77[0])(v49, v42);
        v52 = sub_100084F18();
        v53 = sub_100085408();
        if (sub_1000854D8())
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          v55 = sub_100084EE8();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, v53, v55, "Create Archive", "", v54, 2u);
        }

        (*(v92 + 16))(v79, v51, v91);
        v56 = sub_100084F68();
        v57 = *(v56 + 48);
        v58 = *(v56 + 52);
        swift_allocObject();
        v89 = sub_100084F58();
        v42 = *(v82 + 16);
        if (!v42)
        {
          v59 = 0;
LABEL_15:
          if (qword_1000A53E0 != -1)
          {
            swift_once();
          }

          v66 = sub_100084FB8();
          sub_10000B614(v66, qword_1000A5AA0);
          v67 = sub_100084FA8();
          v68 = sub_100085368();
          v69 = os_log_type_enabled(v67, v68);
          v71 = v86;
          v70 = v87;
          if (v69)
          {
            v72 = swift_slowAlloc();
            *v72 = 134217984;
            *(v72 + 4) = v59;
            _os_log_impl(&_mh_execute_header, v67, v68, "Exporting notes… {noteCount: %ld}", v72, 0xCu);
          }

          [v71 setTotalUnitCount:v59];
          v73 = v78;
          sub_100005888(v94, v78, &qword_1000A56E8, &qword_10008D350);
          result = v83(v73, 1, v90);
          v74 = v92;
          if (result != 1)
          {
            v75 = v93;
            sub_10006B3F0(v73, v82, v71);
            v76 = v91;
            (v77[0])(v73, v90);
            if (!v75)
            {
              sub_100085348();
              *v70 = 1;
            }

            sub_100013B1C(v89);

            return (*(v74 + 8))(v81, v76);
          }

          goto LABEL_28;
        }

        v59 = 0;
        v60 = v85 + 16;
        v97 = *(v85 + 16);
        v61 = v82 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
        v96 = *(v85 + 72);
        v62 = (v85 + 8);
        while (1)
        {
          v63 = v60;
          v97(v10, v61, v7);
          v64 = sub_100084A98();
          v39 = v7;
          (*v62)(v10, v7);
          v65 = __OFADD__(v59, v64);
          v59 += v64;
          if (v65)
          {
            break;
          }

          v61 += v96;
          --v42;
          v60 = v63;
          if (!v42)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_25:
        swift_once();
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006AF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v3 = sub_100084918();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000847C8();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v44 - v13;
  v15 = __chkstk_darwin(v12);
  v45 = &v44 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v44 - v21;
  __chkstk_darwin(v20);
  v24 = &v44 - v23;
  v25 = *(v2 + 24);
  v26 = *(v2 + 96);
  v27 = *(v2 + 88);
  swift_getObjectType();
  if (v25 == 1)
  {
    v28 = v54;
    result = sub_1000849F8();
    if (!v28)
    {
      v54 = 0;
      sub_100084718();
      v30 = *(v49 + 8);
      v31 = v19;
      v32 = v50;
      v30(v31, v50);
      sub_100084908();
      sub_1000848D8();
      (*(v46 + 8))(v6, v47);
      sub_100084718();

      v30(v22, v32);
      sub_10006C9DC(v48);
      v33 = sub_100085068();

      v34 = [v33 ic_sanitizedFilenameString];

      sub_100085098();
      sub_100084718();

      return (v30)(v24, v32);
    }
  }

  else
  {
    v35 = v54;
    result = sub_1000849F8();
    if (!v35)
    {
      sub_100084718();
      v36 = v50;
      v37 = *(v49 + 8);
      v37(v11, v50);
      sub_100084908();
      sub_1000848D8();
      (*(v46 + 8))(v6, v47);
      v38 = v45;
      sub_100084718();

      v37(v14, v36);
      sub_10006C9DC(v48);
      v39 = sub_100085068();
      v40 = [v39 ic_sanitizedFilenameString];

      v41 = sub_100085098();
      v43 = v42;

      v52 = v41;
      v53 = v43;
      v55._countAndFlagsBits = 46;
      v55._object = 0xE100000000000000;
      sub_100085158(v55);
      v56._countAndFlagsBits = 0x6372617365746F6ELL;
      v56._object = 0xEC00000065766968;
      sub_100085158(v56);

      sub_100084718();

      return (v37)(v38, v36);
    }
  }

  return result;
}

uint64_t sub_10006B3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v129 = a3;
  v6 = sub_1000847C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for ICArchiveModel();
  v11 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100005740(&qword_1000A72F8, &unk_10008F740);
  v13 = *(v148 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v148);
  v147 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v146 = &v119 - v17;
  v132 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v137 = *(v132 - 8);
  v18 = *(v137 + 64);
  v19 = __chkstk_darwin(v132);
  v20 = __chkstk_darwin(v19);
  v135 = &v119 - v21;
  v22 = __chkstk_darwin(v20);
  v145 = &v119 - v23;
  __chkstk_darwin(v22);
  v159 = (&v119 - v25);
  if (*(v3 + 104))
  {
    goto LABEL_93;
  }

  v150 = v13;
  v121 = v7;
  v122 = v6;
  v130 = a1;
  *(v3 + 104) = 1;
  v26 = *(v3 + 16);
  v27 = *(a2 + 16);
  v28 = _swiftEmptyArrayStorage;
  v131 = v3;
  v127 = a2;
  v123 = v24;
  v120 = v10;
  v128 = v27;
  if (!v27)
  {
    goto LABEL_10;
  }

  *&v151 = _swiftEmptyArrayStorage;

  v29 = v27;
  sub_10003BE0C(0, v27, 0);
  v28 = v151;
  v30 = a2 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
  v31 = *(v137 + 72);
  v32 = v149;
  do
  {
    sub_10007A218();
    if (v32)
    {
      v149 = v32;

LABEL_50:

LABEL_51:
      v75 = v131;
      goto LABEL_52;
    }

    *&v151 = v28;
    v34 = v28[2];
    v33 = v28[3];
    v6 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      sub_10003BE0C((v33 > 1), v34 + 1, 1);
      v28 = v151;
    }

    v28[2] = v6;
    v35 = &v28[4 * v34];
    v36 = v155;
    *(v35 + 2) = v154;
    *(v35 + 3) = v36;
    v30 += v31;
    --v29;
  }

  while (v29);
  v149 = 0;

LABEL_10:
  v37 = v28[2];
  v136 = v26;
  if (v37)
  {
    v38 = (v28 + 4);
    v39 = _swiftEmptyArrayStorage;
    v6 = &qword_1000A5AD0;
    while (1)
    {
      sub_100005888(v38, &v157, &qword_1000A5AD0, &unk_10008B5E0);
      v154 = v157;
      v155 = v158;
      if (*(&v158 + 1))
      {
        sub_100005740(&qword_1000A59C8, &qword_10008B770);
        if (swift_dynamicCast())
        {
          if (*(&v152 + 1))
          {
            sub_10001C024(&v151, &v154);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_10000EEA8(0, v39[2] + 1, 1, v39);
            }

            v41 = v39[2];
            v40 = v39[3];
            if (v41 >= v40 >> 1)
            {
              v39 = sub_10000EEA8((v40 > 1), v41 + 1, 1, v39);
            }

            v39[2] = v41 + 1;
            sub_10001C024(&v154, &v39[5 * v41 + 4]);
            v6 = &qword_1000A5AD0;
            goto LABEL_14;
          }
        }

        else
        {
          v153 = 0;
          v151 = 0u;
          v152 = 0u;
        }
      }

      else
      {
        sub_1000058F0(&v154, &qword_1000A5AD0, &unk_10008B5E0);
        v151 = 0u;
        v152 = 0u;
        v153 = 0;
      }

      sub_1000058F0(&v151, &qword_1000A5BA8, &qword_10008F750);
LABEL_14:
      v38 += 32;
      if (!--v37)
      {

        goto LABEL_26;
      }
    }
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_26:
  *&v151 = _swiftEmptyArrayStorage;
  v42 = v39[2];
  if (v42)
  {
    v6 = (v39 + 4);
    do
    {
      sub_10001C118(v6, &v154);
      v43 = *(&v155 + 1);
      v44 = v156;
      sub_10000626C(&v154, *(&v155 + 1));
      v45 = (*(v44 + 24))(v43, v44);
      sub_100006304(&v154);
      sub_100039460(v45);
      v6 += 40;
      --v42;
    }

    while (v42);
  }

  v126 = v151;
  v46 = _swiftEmptyArrayStorage;
  v47 = v132;
  v48 = v159;
  if (v128)
  {
    v143 = *(v137 + 16);
    v134 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v49 = v127 + v134;
    v50 = *(v137 + 72);
    v142 = enum case for ICObjectReferences.Types.folder<A>(_:);
    v141 = (v150 + 104);
    v140 = (v150 + 8);
    v133 = (v137 + 8);
    v144 = v137 + 16;
    v138 = (v137 + 32);
    v51 = v128;
    v139 = v50;
    do
    {
      v150 = v51;
      v159 = v46;
      v143(v48, v49, v47);
      v52 = v146;
      v53 = v47;
      sub_100084AB8();
      v54 = v147;
      v55 = v148;
      (*v141)(v147, v142, v148);
      sub_100008250(0, &qword_1000A56C8, NSManagedObjectID_ptr);
      sub_10007A230();
      v56 = sub_100084AC8();
      v57 = *v140;
      (*v140)(v54, v55);
      v57(v52, v55);
      if (v56)
      {
        v58 = *v138;
        (*v138)(v145, v48, v53);
        v46 = v159;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v154 = v46;
        if (isUniquelyReferenced_nonNull_native)
        {
          v47 = v53;
        }

        else
        {
          sub_10003BDCC(0, v46[2] + 1, 1);
          v47 = v132;
          v46 = v154;
        }

        v61 = v46[2];
        v60 = v46[3];
        if (v61 >= v60 >> 1)
        {
          sub_10003BDCC(v60 > 1, v61 + 1, 1);
          v47 = v132;
          v46 = v154;
        }

        v46[2] = v61 + 1;
        v62 = v46 + v134 + v61 * v139;
        v6 = v139;
        v58(v62, v145, v47);
      }

      else
      {
        (*v133)(v48, v53);
        v47 = v53;
        v46 = v159;
        v6 = v139;
      }

      v49 += v6;
      v51 = v150 - 1;
    }

    while (v150 != 1);
  }

  v63 = v46[2];
  if (!v63)
  {

    v66 = _swiftEmptyArrayStorage;
LABEL_53:
    v76 = v66[2];
    v75 = v131;
    if (!v76)
    {

      v78 = _swiftEmptyArrayStorage;
LABEL_69:
      v81 = v78[2];
      if (v81)
      {
        *&v151 = _swiftEmptyArrayStorage;
        sub_10003BCC0(0, v81, 0);
        v82 = v151;
        v83 = (v78 + 4);
        do
        {
          sub_10001C118(v83, &v154);
          v84 = *(&v155 + 1);
          v85 = v156;
          sub_10000626C(&v154, *(&v155 + 1));
          v86 = (*(v85 + 8))(v84, v85);
          v88 = v87;
          sub_100006304(&v154);
          *&v151 = v82;
          v90 = v82[2];
          v89 = v82[3];
          if (v90 >= v89 >> 1)
          {
            sub_10003BCC0((v89 > 1), v90 + 1, 1);
            v82 = v151;
          }

          v82[2] = v90 + 1;
          v91 = &v82[2 * v90];
          v91[4] = v86;
          v91[5] = v88;
          v83 += 40;
          --v81;
        }

        while (v81);

        v75 = v131;
      }

      else
      {

        v82 = _swiftEmptyArrayStorage;
      }

      if (*(v75 + 24) != 1)
      {
        v100 = *(v75 + 40);
        v101 = *(v75 + 48);
        v102 = *(v75 + 56);
        v103 = *(v75 + 64);
        v104 = *(v75 + 72);
        v159 = *(v75 + 32);
        sub_10001C220(v159, v100);
        v150 = sub_100079D24(v126);

        if (!v82[2])
        {

          v82 = 0;
        }

        v105 = v124;
        v106 = *(v124 + 24);
        v107 = v125;
        sub_1000848A8();
        v108 = sub_1000848B8();
        (*(*(v108 - 8) + 56))(v107 + v106, 0, 1, v108);
        *v107 = 0;
        *(v107 + 8) = 1;
        v109 = (v107 + v105[7]);
        *v109 = v159;
        v109[1] = v100;
        v109[2] = v101;
        v109[3] = v102;
        v6 = v107;
        v109[4] = v103;
        v109[5] = v104;
        *(v107 + v105[8]) = v150;
        *(v107 + v105[9]) = v82;
        if (qword_1000A53F0 != -1)
        {
          goto LABEL_94;
        }

        goto LABEL_86;
      }

      goto LABEL_78;
    }

    v77 = (v66 + 4);
    v78 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100005888(v77, &v157, &qword_1000A5AD0, &unk_10008B5E0);
      v154 = v157;
      v155 = v158;
      if (*(&v158 + 1))
      {
        sub_100005740(&qword_1000A59C8, &qword_10008B770);
        if (swift_dynamicCast())
        {
          if (*(&v152 + 1))
          {
            sub_10001C024(&v151, &v154);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = sub_10000EEA8(0, v78[2] + 1, 1, v78);
            }

            v80 = v78[2];
            v79 = v78[3];
            if (v80 >= v79 >> 1)
            {
              v78 = sub_10000EEA8((v79 > 1), v80 + 1, 1, v78);
            }

            v78[2] = v80 + 1;
            sub_10001C024(&v154, &v78[5 * v80 + 4]);
            v75 = v131;
            goto LABEL_57;
          }
        }

        else
        {
          v153 = 0;
          v151 = 0u;
          v152 = 0u;
        }
      }

      else
      {
        sub_1000058F0(&v154, &qword_1000A5AD0, &unk_10008B5E0);
        v151 = 0u;
        v152 = 0u;
        v153 = 0;
      }

      sub_1000058F0(&v151, &qword_1000A5BA8, &qword_10008F750);
LABEL_57:
      v77 += 32;
      if (!--v76)
      {

        goto LABEL_69;
      }
    }
  }

  *&v151 = _swiftEmptyArrayStorage;

  sub_10003BE0C(0, v63, 0);
  v64 = v132;
  v65 = 0;
  v66 = v151;
  v159 = (v46 + ((*(v137 + 80) + 32) & ~*(v137 + 80)));
  v150 = v137 + 16;
  v67 = (v137 + 8);
  while (v65 < v46[2])
  {
    v68 = v135;
    (*(v137 + 16))(v135, v159 + *(v137 + 72) * v65, v64);
    v69 = v149;
    sub_10007AB0C();
    v149 = v69;
    if (v69)
    {

      (*v67)(v68, v64);

      goto LABEL_50;
    }

    (*v67)(v68, v64);
    *&v151 = v66;
    v71 = v66[2];
    v70 = v66[3];
    v6 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      sub_10003BE0C((v70 > 1), v71 + 1, 1);
      v64 = v132;
      v66 = v151;
    }

    ++v65;
    v66[2] = v6;
    v72 = &v66[4 * v71];
    v73 = v155;
    *(v72 + 2) = v154;
    *(v72 + 3) = v73;
    if (v63 == v65)
    {

      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  swift_once();
LABEL_86:
  sub_100075E6C(&qword_1000A5BC8, 255, type metadata accessor for ICArchiveModel);
  v110 = v149;
  v111 = sub_100084508();
  v149 = v110;
  v75 = v131;
  if (v110)
  {
    result = sub_10007A7A0(v6, type metadata accessor for ICArchiveModel);
    goto LABEL_52;
  }

  v113 = v111;
  v114 = v112;
  v115 = *(v131 + 88);
  v116 = *(v131 + 96);
  swift_getObjectType();
  v117 = v120;
  sub_100084718();
  v118 = v149;
  sub_1000849A8();
  v149 = v118;
  if (v118)
  {
    sub_10000650C(v113, v114);
    (*(v121 + 8))(v117, v122);
    result = sub_10007A7A0(v125, type metadata accessor for ICArchiveModel);
    goto LABEL_51;
  }

  sub_10000650C(v113, v114);
  (*(v121 + 8))(v117, v122);
  result = sub_10007A7A0(v125, type metadata accessor for ICArchiveModel);
  v75 = v131;
LABEL_78:
  v92 = v128;
  if (v128)
  {
    v93 = *(v137 + 16);
    v94 = v127 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
    v95 = *(v137 + 72);
    v96 = (v137 + 8);
    v97 = v132;
    v98 = v123;
    while (1)
    {
      v93(v98, v94, v97);
      v99 = v149;
      sub_10006C4E8(v98, v130, v129);
      v149 = v99;
      if (v99)
      {
        break;
      }

      result = (*v96)(v98, v97);
      v94 += v95;
      if (!--v92)
      {
        goto LABEL_52;
      }
    }

    result = (*v96)(v98, v97);
  }

LABEL_52:
  *(v75 + 104) = 0;
  return result;
}

uint64_t sub_10006C4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v40 = a2;
  v4 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v37 = &v36 - v7;
  v8 = sub_100084EF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  if (qword_1000A53E8 != -1)
  {
    swift_once();
  }

  v16 = sub_100084F28();
  sub_10000B614(v16, qword_1000A5AB8);
  v39 = a1;
  sub_100084A78();
  v17 = v43;
  v18 = [v43 description];
  v42 = v15;
  if (v18)
  {
  }

  else
  {
    sub_100085098();
    sub_100085068();

    v15 = v42;
  }

  sub_100084F18();
  sub_100084ED8();
  v19 = sub_100084F18();
  v20 = sub_100085408();
  if (sub_1000854D8())
  {
    v21 = v9;
    v22 = v8;
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_100084EE8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v20, v24, "Export Object", "", v23, 2u);
    v8 = v22;
    v9 = v21;
    v15 = v42;
  }

  (*(v9 + 16))(v13, v15, v8);
  v25 = sub_100084F68();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_100084F58();
  v29 = v37;
  v30 = v39;
  (*(v5 + 16))(v37, v39, v4);
  v31 = (*(v5 + 88))(v29, v4);
  if (v31 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v5 + 8))(v29, v4);
    v32 = objc_autoreleasePoolPush();
    v33 = "Account to be exported does not exist anymore — skipping";
    v34 = sub_10006D33C;
LABEL_16:
    sub_10006EC38(v38, v30, v40, v41, v34, v33);
    objc_autoreleasePoolPop(v32);
    sub_100015C94(v28);

    return (*(v9 + 8))(v42, v8);
  }

  if (v31 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v5 + 8))(v29, v4);
    v32 = objc_autoreleasePoolPush();
    v33 = "Folder to be exported does not exist anymore — skipping";
    v34 = sub_10006D868;
    goto LABEL_16;
  }

  if (v31 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v5 + 8))(v29, v4);
    v32 = objc_autoreleasePoolPush();
    v33 = "Note to be exported does not exist anymore — skipping";
    v34 = sub_10006DD90;
    goto LABEL_16;
  }

  if (v31 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v5 + 8))(v29, v4);
    v32 = objc_autoreleasePoolPush();
    v33 = "Object to be exported does not exist anymore — skipping";
    v34 = sub_10006EEAC;
    goto LABEL_16;
  }

  result = sub_100085938();
  __break(1u);
  return result;
}

uint64_t sub_10006C9DC(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(sub_100005740(&qword_1000A59F0, &qword_10008B510) - 8);
    v3 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    sub_100084AE8();
    if (v4)
    {
      v5 = sub_100085068();

      v6 = [v5 ic_sanitizedFilenameString];

      v7 = sub_100085098();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        return v7;
      }
    }
  }

  v12 = [objc_opt_self() mainBundle];
  v13 = sub_100085068();
  v14 = [v12 localizedStringForKey:v13 value:0 table:0];

  v15 = sub_100085098();
  return v15;
}

uint64_t sub_10006CB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v88 = a3;
  v71 = a6;
  v10 = sub_1000847C8();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v73 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v77 = &v70 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v70 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v70 - v20;
  __chkstk_darwin(v19);
  v24 = &v70 - v23;
  v84 = a5;
  v85 = a1;
  v78 = a4;
  v86 = a2;
  if (a5)
  {
    v72 = v22;
    v25 = sub_100085068();
    v26 = [v25 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084718();

    v27 = sub_100085068();
    v28 = [v27 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084738();

    v29 = v72;
    v30 = *(v72 + 8);
    v30(v21, v10);
    v31 = *(v83 + 88);
    v32 = *(v83 + 96);
    swift_getObjectType();
    v82 = v31;
    v83 = v32;
    v33 = v87;
    sub_1000849C8();
    v34 = v33;
    if (!v33)
    {
      return (*(v29 + 32))(v71, v24, v10);
    }

    v30(v24, v10);
  }

  else
  {
    v81 = v10;
    v29 = v22;
    v35 = sub_100085068();
    v36 = [v35 ic_sanitizedFilenameString];

    sub_100085098();
    sub_100084718();

    v37 = *(v83 + 88);
    v38 = *(v83 + 96);
    swift_getObjectType();
    v82 = v37;
    v83 = v38;
    v39 = v87;
    sub_1000849C8();
    v34 = v39;
    if (!v39)
    {
      return (*(v29 + 32))(v71, v18, v81);
    }

    v30 = *(v29 + 8);
    v10 = v81;
    v30(v18, v81);
  }

  v93 = v34;
  swift_errorRetain();
  v40 = sub_100005740(&qword_1000A5B98, &unk_10008B760);
  v79 = sub_100008250(0, &qword_1000A5BA0, NSError_ptr);
  v80 = v40;
  if (!swift_dynamicCast())
  {
  }

  v41 = v92;
  if ([v92 code] != 516)
  {
  }

  v87 = 0;
  v70 = v21;
  v81 = v10;

  v75 = v41;
  v76 = ICAttachmentNameMaxLength;
  v72 = v29;
  v74 = v29 + 8;
  for (i = 2; ; ++i)
  {
    v89 = i;
    v90 = 32;
    v91 = 0xE100000000000000;
    v94._countAndFlagsBits = sub_100085908();
    sub_100085158(v94);

    v43 = v90;
    v44 = v91;
    v45 = sub_100085068();
    v46 = [v45 ic_sanitizedFilenameString];

    v47 = sub_100085098();
    v49 = v48;

    v50 = sub_100085128();
    v52 = __OFSUB__(v76, v50);
    result = v76 - v50;
    if (v52)
    {
      break;
    }

    sub_100079EB8(result, v47, v49, v51);

    v54 = sub_1000850F8();
    v56 = v55;

    if (v84)
    {
      v90 = v54;
      v91 = v56;

      v95._countAndFlagsBits = v43;
      v95._object = v44;
      sub_100085158(v95);

      v57 = v70;
      sub_100084718();

      v58 = sub_100085068();
      v59 = [v58 ic_sanitizedFilenameString];

      sub_100085098();
      v60 = v77;
      sub_100084738();

      v61 = v81;
      v30(v57, v81);
      swift_getObjectType();
      v62 = v87;
      sub_1000849C8();
      v63 = v62;
      if (!v62)
      {

        (*(v72 + 32))(v71, v60, v61);
      }

      v30(v60, v61);
    }

    else
    {
      v90 = v54;
      v91 = v56;

      v96._countAndFlagsBits = v43;
      v96._object = v44;
      sub_100085158(v96);

      v64 = v73;
      sub_100084718();

      swift_getObjectType();
      v65 = v87;
      sub_1000849C8();
      v63 = v65;
      if (!v65)
      {
        v69 = v81;

        (*(v72 + 32))(v71, v64, v69);
      }

      v30(v64, v81);
    }

    v66 = v75;
    v90 = v63;
    swift_errorRetain();
    if (!swift_dynamicCast() || (v67 = v89, v68 = [v89 code], v67, v68 != 516))
    {
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v87 = 0;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_10006D33C(void *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v58 = a3;
  v56 = a2;
  v7 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = sub_1000847C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  sub_100085348();
  if (!v4)
  {
    v57 = a4;
    v50 = v16;
    v51 = v7;
    v52 = v12;
    v53 = v10;
    v59 = v18;
    v54 = 0;
    v19 = a1[3];
    v20 = a1[4];
    sub_10000626C(a1, v19);
    v21 = (*(v20 + 16))(v19, v20);
    v23 = a1;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v25 = [objc_opt_self() mainBundle];
      v26 = sub_100085068();
      v27 = [v25 localizedStringForKey:v26 value:0 table:0];

      v28 = sub_100085098();
      v24 = v29;

      v21 = v28;
    }

    v31 = v53;
    v30 = v54;
    v32 = v62;
    if (*(v62 + 24))
    {
      v33 = 0;
    }

    else
    {
      v33 = 0x746E756F636361;
    }

    if (*(v62 + 24))
    {
      v34 = 0;
    }

    else
    {
      v34 = 0xE700000000000000;
    }

    sub_10006CB5C(v21, v24, v58, v33, v34, v59);
    if (v30)
    {
    }

    else
    {

      if (*(v32 + 25) != 1)
      {
        v42 = *(v32 + 96);
        v54 = *(v32 + 88);
        v58 = v42;
        v43 = v50;
        sub_100084718();
        v44 = v23[3];
        v45 = v23[4];
        sub_10000626C(v23, v44);
        v46 = *(v32 + 40);
        v60[0] = *(v32 + 24);
        v60[1] = v46;
        v61[0] = *(v32 + 56);
        *(v61 + 13) = *(v32 + 69);
        v47 = (*(v45 + 96))(v60, v44, v45);
        v49 = v48;
        swift_getObjectType();
        sub_1000849A8();
        (*(v52 + 8))(v43, v11);
        sub_10000650C(v47, v49);
      }

      v54 = v11;
      v35 = *(v56 + 16);
      v36 = v51;
      if (v35)
      {
        v37 = v55 + 16;
        v58 = *(v55 + 16);
        v38 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
        v56 = *(v55 + 72);
        v39 = (v55 + 8);
        do
        {
          v40 = v37;
          v58(v31, v38, v36);
          v41 = objc_autoreleasePoolPush();
          sub_10006C4E8(v31, v59, v57);
          objc_autoreleasePoolPop(v41);
          (*v39)(v31, v36);
          v38 += v56;
          --v35;
          v37 = v40;
        }

        while (v35);
      }

      (*(v52 + 8))(v59, v54);
    }
  }
}

void sub_10006D868(void *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v58 = a3;
  v56 = a2;
  v7 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = sub_1000847C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  sub_100085348();
  if (!v4)
  {
    v57 = a4;
    v50 = v16;
    v51 = v7;
    v52 = v12;
    v53 = v10;
    v59 = v18;
    v54 = 0;
    v19 = a1[3];
    v20 = a1[4];
    sub_10000626C(a1, v19);
    v21 = (*(v20 + 16))(v19, v20);
    v23 = a1;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v25 = [objc_opt_self() mainBundle];
      v26 = sub_100085068();
      v27 = [v25 localizedStringForKey:v26 value:0 table:0];

      v28 = sub_100085098();
      v24 = v29;

      v21 = v28;
    }

    v31 = v53;
    v30 = v54;
    v32 = v62;
    if (*(v62 + 24))
    {
      v33 = 0;
    }

    else
    {
      v33 = 0x7265646C6F66;
    }

    if (*(v62 + 24))
    {
      v34 = 0;
    }

    else
    {
      v34 = 0xE600000000000000;
    }

    sub_10006CB5C(v21, v24, v58, v33, v34, v59);
    if (v30)
    {
    }

    else
    {

      if (*(v32 + 25) != 1)
      {
        v42 = *(v32 + 96);
        v54 = *(v32 + 88);
        v58 = v42;
        v43 = v50;
        sub_100084718();
        v44 = v23[3];
        v45 = v23[4];
        sub_10000626C(v23, v44);
        v46 = *(v32 + 40);
        v60[0] = *(v32 + 24);
        v60[1] = v46;
        v61[0] = *(v32 + 56);
        *(v61 + 13) = *(v32 + 69);
        v47 = (*(v45 + 96))(v60, v44, v45);
        v49 = v48;
        swift_getObjectType();
        sub_1000849A8();
        (*(v52 + 8))(v43, v11);
        sub_10000650C(v47, v49);
      }

      v54 = v11;
      v35 = *(v56 + 16);
      v36 = v51;
      if (v35)
      {
        v37 = v55 + 16;
        v58 = *(v55 + 16);
        v38 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
        v56 = *(v55 + 72);
        v39 = (v55 + 8);
        do
        {
          v40 = v37;
          v58(v31, v38, v36);
          v41 = objc_autoreleasePoolPush();
          sub_10006C4E8(v31, v59, v57);
          objc_autoreleasePoolPop(v41);
          (*v39)(v31, v36);
          v38 += v56;
          --v35;
          v37 = v40;
        }

        while (v35);
      }

      (*(v52 + 8))(v59, v54);
    }
  }
}

void sub_10006DD90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v136 = a3;
  v137 = a2;
  v139 = a1;
  v134 = type metadata accessor for NoteMetadata(0);
  v5 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v135 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1000847C8();
  v138 = *(v141 - 8);
  v7 = *(v138 + 64);
  v8 = __chkstk_darwin(v141);
  v133 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v124 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v124 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v124 - v17;
  __chkstk_darwin(v16);
  v20 = &v124 - v19;
  v21 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v124 - v27;
  v29 = v146;
  sub_100085348();
  if (v29)
  {
    return;
  }

  v124 = v15;
  v128 = v18;
  v132 = v20;
  v125 = v12;
  v126 = v22;
  v127 = v26;
  v146 = v21;
  v140 = 0;
  v31 = v142;
  v131 = *(v142 + 25);
  v32 = v141;
  v33 = v139;
  if (v131 == 1)
  {
    sub_10001C118(v139, v147);
    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    sub_100008250(0, &qword_1000A56C0, ICNote_ptr);
    v30 = swift_dynamicCast();
    if (v30)
    {
      v34 = v150;
      v35 = [v150 isPasswordProtectedAndLocked];

      if (v35)
      {
        return;
      }
    }
  }

  v129 = a4;
  __chkstk_darwin(v30);
  v36 = &v124;
  *(&v124 - 2) = sub_100084C08();
  *(&v124 - 1) = sub_100075E6C(&qword_1000A72F0, 255, &type metadata accessor for ICModernObjectProvider);
  swift_getKeyPath();
  v37 = v137;
  v38 = *(v137 + 16);
  v130 = v38;
  if (v38)
  {
    v147[0] = _swiftEmptyArrayStorage;
    sub_10003BDAC(0, v38, 0);
    v39 = v147[0];
    v40 = *(v126 + 16);
    v36 = (v37 + ((*(v126 + 80) + 32) & ~*(v126 + 80)));
    v143 = *(v126 + 72);
    v144 = v40;
    isa = (v126 + 16);
    v41 = (v126 + 8);
    do
    {
      v42 = v146;
      v144(v28, v36, v146);
      swift_getAtKeyPath();
      v43 = v150;
      (*v41)(v28, v42);
      v147[0] = v39;
      v45 = v39[2];
      v44 = v39[3];
      if (v45 >= v44 >> 1)
      {
        sub_10003BDAC((v44 > 1), v45 + 1, 1);
        v39 = v147[0];
      }

      v39[2] = v45 + 1;
      v39[v45 + 4] = v43;
      v36 = (v36 + v143);
      --v38;
    }

    while (v38);

    v32 = v141;
    v48 = v142;
    v49 = v138;
    v33 = v139;
    v50 = v39[2];
    if (v50)
    {
LABEL_11:
      v51 = 0;
      v52 = v39 + 4;
      while (1)
      {
        v53 = *v52++;
        v54 = __OFADD__(v51, v53);
        v51 += v53;
        if (v54)
        {
          break;
        }

        if (!--v50)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {

    v39 = _swiftEmptyArrayStorage;
    v49 = v138;
    v48 = v31;
    v50 = _swiftEmptyArrayStorage[2];
    if (v50)
    {
      goto LABEL_11;
    }
  }

  v51 = 0;
LABEL_17:

  if (__OFADD__(v51, 1))
  {
    __break(1u);
    goto LABEL_59;
  }

  v55.super.isa = sub_100085338(v51 + 1, 1).super.isa;
  if (v131 == 1)
  {
    if (*(v48 + 24))
    {
      v56 = v33[3];
      v57 = v33[4];
      sub_10000626C(v33, v56);
      v58 = (*(v57 + 8))(v56, v57);
      v59 = v124;
      v60 = v140;
      sub_10006CB5C(v58, v61, v136, 0, 0xE000000000000000, v124);
      v140 = v60;
      if (v60)
      {

LABEL_33:

        return;
      }

      isa = v55.super.isa;

      v75 = v132;
      (*(v49 + 32))(v132, v59, v32);
      v69 = 0xE400000000000000;
      v67 = 1702129518;
      goto LABEL_36;
    }

    v69 = 0xE400000000000000;
    v67 = 1702129518;
    v77 = v140;
    v78 = v136;
    v75 = v132;
    v76 = v128;
    goto LABEL_32;
  }

  v62 = v33[3];
  v63 = v33[4];
  sub_10000626C(v33, v62);
  (*(v63 + 16))(v62, v63);
  if (v64)
  {
    v65 = sub_100085068();

    v66 = [v65 ic_sanitizedFilenameString];

    v67 = sub_100085098();
    v69 = v68;

    v70 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v70 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (v70)
    {
      goto LABEL_28;
    }
  }

  v71 = [objc_opt_self() mainBundle];
  v72 = sub_100085068();
  v73 = [v71 localizedStringForKey:v72 value:0 table:0];

  v67 = sub_100085098();
  v69 = v74;

LABEL_28:
  v75 = v132;
  v76 = v128;
  if (*(v48 + 24))
  {
    isa = v55.super.isa;
    (*(v49 + 16))(v132, v136, v32);
LABEL_36:
    v147[0] = v67;
    v147[1] = v69;
    v151._countAndFlagsBits = 6581550;
    v151._object = 0xE300000000000000;
    sub_100085158(v151);
    goto LABEL_37;
  }

  v77 = v140;
  v78 = v136;
LABEL_32:
  sub_10006CB5C(v67, v69, v78, 1702129518, 0xE400000000000000, v76);
  v140 = v77;
  if (v77)
  {
    goto LABEL_33;
  }

  isa = v55.super.isa;

  (*(v49 + 32))(v75, v76, v32);
LABEL_37:
  v79 = v125;
  sub_100084718();

  v81 = *(v48 + 88);
  v80 = *(v48 + 96);
  v82 = v33[3];
  v83 = v33[4];
  sub_10000626C(v33, v82);
  v84 = *(v48 + 40);
  v148[0] = *(v48 + 24);
  v148[1] = v84;
  *v149 = *(v48 + 56);
  *&v149[13] = *(v48 + 69);
  v85 = v140;
  v86 = (*(v83 + 96))(v148, v82, v83);
  if (v85)
  {
    v88 = *(v138 + 8);
    v89 = v141;
    v88(v79, v141);

    v88(v75, v89);
    return;
  }

  v90 = v86;
  v91 = v87;
  ObjectType = swift_getObjectType();
  sub_1000849A8();
  v140 = 0;
  sub_10000650C(v90, v91);
  v93 = v141;
  if (v131 != 1)
  {
    v28 = v127;
    goto LABEL_44;
  }

  v144 = ObjectType;
  sub_10001C118(v33, v147);
  sub_100005740(&qword_1000A59C8, &qword_10008B770);
  sub_100008250(0, &qword_1000A56C0, ICNote_ptr);
  v94 = swift_dynamicCast();
  v28 = v127;
  if (!v94)
  {
    goto LABEL_44;
  }

  v33 = v150;
  v95 = v135;
  sub_1000082C8(v33, v135);
  sub_100075E6C(&qword_1000A5718, 255, type metadata accessor for NoteMetadata);
  v96 = v140;
  v46 = sub_100084E28();
  v36 = v96;
  if (v96)
  {

    sub_10007A7A0(v95, type metadata accessor for NoteMetadata);
    v97 = *(v138 + 8);
    v97(v125, v93);
    v97(v132, v93);
    return;
  }

LABEL_55:
  v119 = v46;
  v120 = v47;
  v121 = v133;
  sub_100084718();
  v143 = v120;
  sub_1000849A8();
  v140 = v36;
  if (v36)
  {

    sub_10000650C(v119, v143);
    v122 = *(v138 + 8);
    v123 = v141;
    v122(v121, v141);
    sub_10007A7A0(v135, type metadata accessor for NoteMetadata);
    v122(v125, v123);
    v122(v132, v123);
    return;
  }

  sub_10000650C(v119, v143);

  (*(v138 + 8))(v121, v141);
  sub_10007A7A0(v135, type metadata accessor for NoteMetadata);
LABEL_44:
  v98 = v148[0];
  v99 = isa;
  v100 = [(objc_class *)isa completedUnitCount];
  v101 = v146;
  v102 = v137;
  if (__OFADD__(v100, 1))
  {
LABEL_59:
    __break(1u);
    return;
  }

  [(objc_class *)v99 setCompletedUnitCount:v100 + 1];
  v103 = v99;
  if (v130)
  {
    v104 = v126 + 16;
    v105 = *(v126 + 16);
    v106 = v102 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
    v107 = *(v126 + 72);
    v108 = (v126 + 8);
    do
    {
      v110 = v104;
      v105(v28, v106, v101);
      v111 = objc_autoreleasePoolPush();
      v112 = v28;
      v113 = v111;
      if (v98)
      {
        v109 = v140;
        sub_100071044(v112, v132, v103);
        if (v109)
        {
LABEL_51:
          v114 = v146;
          objc_autoreleasePoolPop(v113);

          (*v108)(v127, v114);
          v115 = *(v138 + 8);
          v116 = v141;
          v115(v125, v141);
          v115(v132, v116);
          return;
        }
      }

      else
      {
        v109 = v140;
        sub_10006C4E8(v112, v132, v103);
        if (v109)
        {
          goto LABEL_51;
        }
      }

      v140 = v109;
      v101 = v146;
      objc_autoreleasePoolPop(v113);
      v28 = v127;
      (*v108)(v127, v101);
      v106 += v107;
      --v130;
      v104 = v110;
    }

    while (v130);
  }

  sub_100071924([v129 completedUnitCount]);

  v117 = *(v138 + 8);
  v118 = v141;
  v117(v125, v141);
  v117(v132, v118);
}

void sub_10006EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), const char *a6)
{
  v11 = *(a1 + 16);
  sub_100084C08();
  sub_100075E6C(&qword_1000A72F0, 255, &type metadata accessor for ICModernObjectProvider);
  sub_100084A68();
  if (!v6)
  {
    if (v17[3])
    {
      sub_100005740(&qword_1000A59C8, &qword_10008B770);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_10001C024(&v18, v21);
          sub_100005740(&qword_1000A59F0, &qword_10008B510);
          v12 = sub_100084AF8();
          a5(v21, v12, a3, a4);
          sub_100006304(v21);

          return;
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }
    }

    else
    {
      sub_1000058F0(v17, &qword_1000A5AD0, &unk_10008B5E0);
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    sub_1000058F0(&v18, &qword_1000A5BA8, &qword_10008F750);
    if (qword_1000A53E0 != -1)
    {
      swift_once();
    }

    v13 = sub_100084FB8();
    sub_10000B614(v13, qword_1000A5AA0);
    v14 = sub_100084FA8();
    v15 = sub_100085388();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, a6, v16, 2u);
    }
  }
}

void sub_10006EEAC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v336 = a3;
  v328 = a2;
  v334 = a1;
  v5 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v318 = &v308 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v322 = &v308 - v9;
  v329 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v325 = *(v329 - 8);
  v10 = *(v325 + 64);
  v11 = __chkstk_darwin(v329);
  v320 = &v308 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v330 = &v308 - v13;
  v321 = sub_1000850C8();
  v323 = *(v321 - 8);
  v14 = v323[8];
  __chkstk_darwin(v321);
  v319 = &v308 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000847C8();
  v17 = *(v16 - 8);
  v331 = v16;
  v332 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v315 = &v308 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v324 = (&v308 - v22);
  v23 = __chkstk_darwin(v21);
  v326 = &v308 - v24;
  v25 = __chkstk_darwin(v23);
  *&v316 = &v308 - v26;
  v27 = __chkstk_darwin(v25);
  v317 = &v308 - v28;
  v29 = __chkstk_darwin(v27);
  v327 = &v308 - v30;
  v31 = __chkstk_darwin(v29);
  v333 = &v308 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v308 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v308 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v308 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v308 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v308 - v46;
  v48 = __chkstk_darwin(v45);
  v50 = &v308 - v49;
  __chkstk_darwin(v48);
  v52 = &v308 - v51;
  v53 = v343;
  sub_100085348();
  if (v53)
  {
    return;
  }

  v313 = v44;
  v314 = v41;
  v309 = v35;
  v310 = v38;
  v311 = v47;
  v312 = v50;
  v343 = 0;
  v335 = a4;
  if (*(v337 + 24) == 1)
  {
    v54 = *(v337 + 25);
    v55 = v334;
    v56 = v52;
    if (v54 == 2)
    {
      sub_10001C118(v334, v340);
      sub_100005740(&qword_1000A59C8, &qword_10008B770);
      sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
      if (swift_dynamicCast())
      {
        v57 = v338;
        v58 = [v338 isTable];

        if (v58)
        {
          return;
        }
      }
    }

    sub_10001C118(v55, v340);
    v59 = sub_100005740(&qword_1000A59C8, &qword_10008B770);
    v60 = sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
    if (swift_dynamicCast())
    {
      v61 = v338;
      v62 = [v338 parentAttachment];

      if (v62)
      {

        return;
      }
    }

    v324 = v60;
    v70 = *(v55 + 24);
    v69 = *(v55 + 32);
    sub_10000626C(v55, v70);
    v327 = (*(v69 + 88))(v70, v69);
    v72 = v71;
    v73 = *(v55 + 24);
    v74 = *(v55 + 32);
    sub_10000626C(v55, v73);
    v75 = (*(v74 + 80))(v73, v74);
    LODWORD(v333) = v54;
    v326 = v59;
    if (v76 >> 60 != 15)
    {
      if (v72)
      {
        v77 = *(v337 + 88);
        v322 = *(v337 + 96);
        v78 = v75;
        v79 = v76;
        swift_getObjectType();

        sub_100084718();
        v327 = v72;

        v80 = v343;
        sub_1000849A8();
        if (v80)
        {
          v322 = v79;
          v343 = v78;
          (*(v332 + 8))(v56, v331);
          if (qword_1000A53E0 != -1)
          {
            goto LABEL_149;
          }

          while (1)
          {
            v81 = sub_100084FB8();
            sub_10000B614(v81, qword_1000A5AA0);
            swift_errorRetain();
            v82 = sub_100084FA8();
            v83 = sub_100085378();

            v84 = os_log_type_enabled(v82, v83);
            v72 = v327;
            if (v84)
            {
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              v340[0] = v86;
              *v85 = 136315138;
              swift_getErrorValue();
              v87 = sub_100085988();
              v89 = sub_100038A4C(v87, v88, v340);

              *(v85 + 4) = v89;
              v55 = v334;
              _os_log_impl(&_mh_execute_header, v82, v83, "Cannot export attachment fallback PDF file — skipping {error: %s}", v85, 0xCu);
              sub_100006304(v86);
              v72 = v327;

              sub_10001C19C(v343, v322);
            }

            else
            {
              sub_10001C19C(v343, v322);
            }

            v125 = 0;
            v123 = v335;
            v124 = v329;
LABEL_56:
            v118 = v330;
LABEL_57:
            if (v333 != 1)
            {
              goto LABEL_67;
            }

            sub_10001C118(v55, v340);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_67;
            }

            v185 = v338;
            if (([v338 isAudio] & 1) == 0)
            {

LABEL_67:

              goto LABEL_68;
            }

            v343 = v125;
            v186 = [v185 attachmentModel];
            objc_opt_self();
            v187 = swift_dynamicCastObjCClass();
            v188 = v185;
            if (v187)
            {
              break;
            }

LABEL_119:
            v125 = v343;
LABEL_68:
            v343 = v125;
            v204 = [v123 completedUnitCount];
            if (!__OFADD__(v204, 1))
            {
              [v123 setCompletedUnitCount:v204 + 1];
              v205 = *(v328 + 16);
              if (v205)
              {
                v206 = v325 + 16;
                v334 = *(v325 + 16);
                v207 = v328 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
                v333 = *(v325 + 72);
                v208 = (v325 + 8);
                while (1)
                {
                  v209 = v206;
                  (v334)(v118, v207, v124);
                  v210 = v124;
                  v211 = objc_autoreleasePoolPush();
                  v212 = v343;
                  sub_10006C4E8(v118, v336, v123);
                  v343 = v212;
                  if (v212)
                  {
                    break;
                  }

                  objc_autoreleasePoolPop(v211);
                  (*v208)(v118, v210);
                  v207 += v333;
                  --v205;
                  v123 = v335;
                  v124 = v210;
                  v206 = v209;
                  if (!v205)
                  {
                    return;
                  }
                }

                objc_autoreleasePoolPop(v211);
                (*v208)(v118, v210);
              }

              return;
            }

LABEL_148:
            __break(1u);
LABEL_149:
            swift_once();
          }

          v189 = v187;
          v326 = v188;
          v327 = v72;
          v333 = v186;
          v190 = *(v55 + 24);
          v191 = *(v55 + 32);
          sub_10000626C(v55, v190);
          v192 = (*(v191 + 8))(v190, v191);
          v340[0] = 0x7263736E6172745FLL;
          v340[1] = 0xEF7478742E747069;
          v338 = v192;
          v339 = v193;
          v338 = sub_100085198();
          v339 = v194;
          sub_100085148();
          v195 = v336;
          sub_100084718();

          v196 = [v189 audioDocument];
          if (!v196)
          {
            goto LABEL_154;
          }

          v197 = v196;
          v198 = [v196 transcriptAsPlainText];

          sub_100085098();
          v199 = v319;
          sub_1000850B8();
          v200 = sub_1000850A8();
          v165 = v201;
          v195 = v323 + 1;
          v324 = v323[1];
          v168 = v324(v199, v321);
          v323 = v195;
          if (v165 >> 60 == 15)
          {
LABEL_100:
            v239 = *(v334 + 24);
            v240 = *(v334 + 32);
            sub_10000626C(v334, v239);
            v241 = (*(v240 + 8))(v239, v240);
            strcpy(v340, "_summary.txt");
            BYTE5(v340[1]) = 0;
            HIWORD(v340[1]) = -5120;
            v338 = v241;
            v339 = v242;
            v338 = sub_100085198();
            v339 = v243;
            sub_100085148();
            v195 = v336;
            sub_100084718();

            v244 = [v189 audioDocument];
            if (!v244)
            {
              goto LABEL_155;
            }

            v245 = v244;

            v246 = [v245 recordingSummaryAsPlainText];

            sub_100085098();
            sub_1000850B8();
            v195 = v199;
            v247 = sub_1000850A8();
            v249 = v248;

            v324(v195, v321);
            v55 = v312;
            if (v249 >> 60 == 15)
            {

              v250 = v311;
LABEL_118:
              v262 = v331;
              v263 = *(v332 + 8);
              v263(v250, v331);
              v263(v55, v262);
              v123 = v335;
              goto LABEL_119;
            }

            v251 = v249 >> 62;
            v252 = v311;
            v253 = v333;
            if ((v249 >> 62) > 1)
            {
              if (v251 != 2)
              {
                goto LABEL_115;
              }

              v256 = *(v247 + 16);
              v255 = *(v247 + 24);
              v221 = __OFSUB__(v255, v256);
              v254 = v255 - v256;
              if (!v221)
              {
LABEL_112:
                if (v254 >= 1)
                {
                  v257 = *(v337 + 88);
                  v258 = *(v337 + 96);
                  swift_getObjectType();
                  v259 = v343;
                  sub_1000849A8();
                  v343 = v259;
                  if (v259)
                  {

                    sub_10001C19C(v247, v249);
                    v260 = v331;
                    v261 = *(v332 + 8);
                    v261(v252, v331);
                    v261(v55, v260);
                    return;
                  }

                  goto LABEL_117;
                }

LABEL_115:

LABEL_117:
                sub_10001C19C(v247, v249);
                v250 = v252;
                goto LABEL_118;
              }

              __break(1u);
            }

            else if (!v251)
            {
              v254 = BYTE6(v249);
              goto LABEL_112;
            }

            LODWORD(v254) = HIDWORD(v247) - v247;
            if (__OFSUB__(HIDWORD(v247), v247))
            {
              goto LABEL_153;
            }

            v254 = v254;
            goto LABEL_112;
          }

          v202 = v165 >> 62;
          if ((v165 >> 62) > 1)
          {
            if (v202 != 2)
            {
LABEL_99:
              sub_10001C19C(v200, v165);
              goto LABEL_100;
            }

            v220 = *(v200 + 16);
            v219 = *(v200 + 24);
            v221 = __OFSUB__(v219, v220);
            v203 = v219 - v220;
            if (v221)
            {
              __break(1u);
              goto LABEL_85;
            }
          }

          else if (v202)
          {
            LODWORD(v203) = HIDWORD(v200) - v200;
            if (__OFSUB__(HIDWORD(v200), v200))
            {
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
              goto LABEL_156;
            }

            v203 = v203;
          }

          else
          {
            v203 = BYTE6(v165);
          }

          if (v203 >= 1)
          {
            v235 = *(v337 + 88);
            v236 = *(v337 + 96);
            swift_getObjectType();
            v237 = v312;
            v238 = v343;
            sub_1000849A8();
            v343 = v238;
            if (v238)
            {
              (*(v332 + 8))(v237, v331);

              sub_10001C19C(v200, v165);

              return;
            }

            v124 = v329;
            v118 = v330;
            v199 = v319;
          }

          goto LABEL_99;
        }

        (*(v332 + 8))(v56, v331);
        v143 = v78;
        v144 = v79;
        goto LABEL_44;
      }

      sub_10001C19C(v75, v76);
    }

    v106 = *(v55 + 24);
    v107 = *(v55 + 32);
    sub_10000626C(v55, v106);
    v108 = (*(v107 + 72))(v106, v107);
    if (v109 >> 60 == 15)
    {
      if (v72)
      {
        v110 = *(v55 + 24);
        v111 = *(v55 + 32);
        sub_10000626C(v55, v110);
        v112 = *(v111 + 48);

        v113 = v322;
        v112(v110, v111);
        v115 = v331;
        v114 = v332;
        v116 = (*(v332 + 48))(v113, 1, v331);
        v117 = v337;
        v118 = v330;
        if (v116 == 1)
        {
          sub_1000058F0(v113, &qword_1000A56E8, &qword_10008D350);
          v119 = *(v55 + 24);
          v120 = *(v55 + 32);
          sub_10000626C(v55, v119);
          v121 = (*(v120 + 56))(v119, v120);
          if (v122 >> 60 == 15)
          {

            v123 = v335;
            v124 = v329;
            v125 = v343;
            goto LABEL_57;
          }

          v170 = v121;
          v171 = v122;
          v172 = v117;
          v173 = *(v117 + 88);
          v322 = *(v172 + 96);
          swift_getObjectType();
          v174 = v309;
          sub_100084718();

          v175 = v343;
          sub_1000849A8();
          v125 = v175;
          if (!v175)
          {
            (*(v332 + 8))(v174, v331);
            sub_10001C19C(v170, v171);
            v55 = v334;
            v123 = v335;
            v124 = v329;
            goto LABEL_57;
          }

          (*(v332 + 8))(v174, v331);
          sub_10001C19C(v170, v171);
          v55 = v334;
        }

        else
        {
          (*(v114 + 32))(v314, v113, v115);
          v145 = *(v117 + 96);
          v320 = *(v117 + 88);
          v322 = v145;
          swift_getObjectType();
          v146 = v310;
          sub_100084718();

          v147 = v343;
          sub_100084A18();
          v125 = v147;
          if (!v147)
          {
            v213 = *(v332 + 8);
            v213(v146, v115);
            v213(v314, v115);
            v123 = v335;
            v124 = v329;
            goto LABEL_57;
          }

          v148 = *(v332 + 8);
          v148(v146, v115);
          v148(v314, v115);
        }

        v343 = 0;
        if (qword_1000A53E0 != -1)
        {
          swift_once();
        }

        v176 = sub_100084FB8();
        sub_10000B614(v176, qword_1000A5AA0);
        swift_errorRetain();
        v177 = sub_100084FA8();
        v178 = sub_100085378();

        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          v180 = v72;
          v181 = swift_slowAlloc();
          v340[0] = v181;
          *v179 = 136315138;
          swift_getErrorValue();
          v182 = sub_100085988();
          v184 = sub_100038A4C(v182, v183, v340);

          *(v179 + 4) = v184;
          v55 = v334;
          _os_log_impl(&_mh_execute_header, v177, v178, "Cannot export attachment media file — skipping {error: %s}", v179, 0xCu);
          sub_100006304(v181);
          v72 = v180;
        }

        else
        {
        }
      }
    }

    else
    {
      if (v72)
      {
        v126 = *(v337 + 88);
        v322 = *(v337 + 96);
        v127 = v109;
        v128 = v108;
        swift_getObjectType();

        v129 = v313;
        sub_100084718();
        v327 = v72;
        v130 = v129;
        v131 = v128;
        v132 = v127;

        v133 = v343;
        sub_1000849A8();
        if (v133)
        {
          (*(v332 + 8))(v130, v331);
          if (qword_1000A53E0 != -1)
          {
            swift_once();
          }

          v134 = sub_100084FB8();
          sub_10000B614(v134, qword_1000A5AA0);
          swift_errorRetain();
          v135 = sub_100084FA8();
          v136 = sub_100085378();

          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v340[0] = v138;
            *v137 = 136315138;
            swift_getErrorValue();
            v343 = v135;
            v139 = sub_100085988();
            v141 = sub_100038A4C(v139, v140, v340);

            *(v137 + 4) = v141;
            v55 = v334;
            v142 = v343;
            _os_log_impl(&_mh_execute_header, v343, v136, "Cannot export attachment fallback image file — skipping {error: %s}", v137, 0xCu);
            sub_100006304(v138);

            sub_10001C19C(v131, v132);
          }

          else
          {
            sub_10001C19C(v131, v132);
          }

          v125 = 0;
          v123 = v335;
          v124 = v329;
          goto LABEL_47;
        }

        (*(v332 + 8))(v130, v331);
        v143 = v131;
        v144 = v127;
LABEL_44:
        sub_10001C19C(v143, v144);
        v123 = v335;
        v124 = v329;
        v125 = 0;
LABEL_47:
        v118 = v330;
        v72 = v327;
        goto LABEL_57;
      }

      sub_10001C19C(v108, v109);
    }

    v123 = v335;
    v124 = v329;
    v125 = v343;
    goto LABEL_56;
  }

  v63 = v334;
  v64 = *(v334 + 24);
  v65 = *(v334 + 32);
  sub_10000626C(v334, v64);
  v66 = (*(v65 + 16))(v64, v65);
  if (v67)
  {
    v68 = v67;
  }

  else
  {
    v90 = [objc_opt_self() mainBundle];
    v91 = sub_100085068();
    v92 = [v90 localizedStringForKey:v91 value:0 table:0];

    v93 = sub_100085098();
    v68 = v94;

    v66 = v93;
  }

  v95 = v337;
  v96 = v343;
  sub_10006CB5C(v66, v68, v336, 0x656D686361747461, 0xEA0000000000746ELL, v333);
  if (v96)
  {
  }

  else
  {
    v323 = v68;
    sub_100084718();
    v97 = *(v95 + 96);
    v336 = *(v95 + 88);
    v330 = v97;
    v98 = v63[3];
    v99 = v63[4];
    sub_10000626C(v63, v98);
    v100 = *(v95 + 40);
    v341[0] = *(v95 + 24);
    v341[1] = v100;
    v342[0] = *(v95 + 56);
    *(v342 + 13) = *(v95 + 69);
    v101 = 0;
    v102 = (*(v99 + 96))(v341, v98, v99);
    v104 = v103;
    ObjectType = swift_getObjectType();
    sub_1000849A8();
    v322 = ObjectType;
    sub_10000650C(v102, v104);
    v149 = sub_100008250(0, &qword_1000A5BC0, ICArchive_ptr);
    v150 = v334;
    v151 = *(v334 + 24);
    v152 = *(v334 + 32);
    v153 = sub_10000626C(v334, v151);
    sub_10001D038(v153, v149, v151, v152);
    if (!v154)
    {
      v165 = v326;
      goto LABEL_121;
    }

    v343 = 0;
    v155 = sub_100085068();

    v156 = [v155 ic_sanitizedFilenameString];

    sub_100085098();
    v157 = v150[3];
    v158 = v150[4];
    sub_10000626C(v150, v157);
    v159 = v318;
    v160 = v157;
    v161 = v332;
    (*(v158 + 48))(v160, v158);
    v162 = v159;
    v163 = v331;
    v164 = (*(v161 + 48))(v159, 1, v331);
    v165 = v326;
    if (v164 == 1)
    {
      sub_1000058F0(v162, &qword_1000A56E8, &qword_10008D350);
      v166 = v150[3];
      v167 = v150[4];
      sub_10000626C(v150, v166);
      v168 = (*(v167 + 56))(v166, v167);
      if (v169 >> 60 == 15)
      {

        v101 = v343;
        goto LABEL_121;
      }

LABEL_85:
      v222 = v168;
      v223 = v169;
      v224 = v315;
      sub_100084718();

      v225 = v343;
      sub_1000849A8();
      if (!v225)
      {
        (*(v332 + 8))(v224, v331);
        sub_10001C19C(v222, v223);
        v101 = 0;
        goto LABEL_121;
      }

      (*(v332 + 8))(v224, v331);
      sub_10001C19C(v222, v223);
    }

    else
    {
      v214 = v317;
      (*(v161 + 32))(v317, v162, v163);
      v215 = v316;
      sub_100084718();

      v216 = v343;
      sub_100084A18();
      v217 = v161;
      v101 = v216;
      if (!v216)
      {
        v234 = *(v217 + 8);
        v234(v215, v163);
        v234(v214, v163);
        goto LABEL_121;
      }

      v218 = *(v217 + 8);
      v218(v215, v163);
      v218(v214, v163);
    }

    v343 = 0;
    if (qword_1000A53E0 != -1)
    {
      goto LABEL_151;
    }

    while (1)
    {
      v226 = sub_100084FB8();
      sub_10000B614(v226, qword_1000A5AA0);
      swift_errorRetain();
      v227 = sub_100084FA8();
      v228 = sub_100085378();

      if (os_log_type_enabled(v227, v228))
      {
        v229 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        v340[0] = v230;
        *v229 = 136315138;
        swift_getErrorValue();
        v231 = sub_100085988();
        v233 = sub_100038A4C(v231, v232, v340);

        *(v229 + 4) = v233;
        _os_log_impl(&_mh_execute_header, v227, v228, "Cannot export attachment media file — skipping {error: %s}", v229, 0xCu);
        sub_100006304(v230);
      }

      else
      {
      }

      v101 = v343;
LABEL_121:
      v195 = objc_autoreleasePoolPush();
      v264 = v334;
      v265 = v337;
      sub_100071CC0(v334, v337);
      if (v101)
      {
        break;
      }

      objc_autoreleasePoolPop(v195);
      v266 = objc_autoreleasePoolPush();
      sub_100071FF0(v264, v265);
      v343 = 0;
      v267 = v264;

      objc_autoreleasePoolPop(v266);
      v268 = v264[3];
      v269 = v264[4];
      sub_10000626C(v267, v268);
      v270 = (*(v269 + 64))(v268, v269);
      v272 = 0;
      v274 = v270 + 56;
      v273 = *(v270 + 56);
      v334 = v270;
      v275 = 1 << *(v270 + 32);
      v276 = -1;
      if (v275 < 64)
      {
        v276 = ~(-1 << v275);
      }

      v277 = v276 & v273;
      v278 = (v275 + 63) >> 6;
      v279 = v331;
      v280 = v332;
      v318 = (v332 + 16);
      v323 = (v332 + 8);
      *&v271 = 136315138;
      v316 = v271;
      v281 = v335;
      v282 = v324;
      v321 = v270 + 56;
      v319 = v278;
      while (v277)
      {
        v55 = v272;
LABEL_132:
        v284 = __clz(__rbit64(v277));
        v277 &= v277 - 1;
        (*(v280 + 16))(v165, *(v334 + 48) + *(v280 + 72) * (v284 | (v55 << 6)), v279);
        sub_1000846E8();
        sub_100084718();
        v165 = v326;

        v285 = v343;
        sub_100084A18();
        v343 = v285;
        if (v285)
        {
          v286 = *v323;
          (*v323)(v282, v279);
          v286(v165, v279);
          if (qword_1000A53E0 != -1)
          {
            swift_once();
          }

          v287 = sub_100084FB8();
          sub_10000B614(v287, qword_1000A5AA0);
          swift_errorRetain();
          v288 = sub_100084FA8();
          v289 = sub_100085378();

          if (os_log_type_enabled(v288, v289))
          {
            v290 = swift_slowAlloc();
            v291 = swift_slowAlloc();
            v340[0] = v291;
            *v290 = v316;
            swift_getErrorValue();
            LODWORD(v317) = v289;
            v292 = sub_100085988();
            v294 = sub_100038A4C(v292, v293, v340);

            *(v290 + 4) = v294;
            v295 = v332;
            _os_log_impl(&_mh_execute_header, v288, v317, "Cannot export attachment asset file — skipping {error: %s}", v290, 0xCu);
            sub_100006304(v291);

            v165 = v326;

            v280 = v295;

            v343 = 0;
            v272 = v55;
            v281 = v335;
            v279 = v331;
            v282 = v324;
          }

          else
          {

            v343 = 0;
            v272 = v55;
            v281 = v335;
            v279 = v331;
            v280 = v332;
            v282 = v324;
            v165 = v326;
          }
        }

        else
        {
          v283 = *v323;
          (*v323)(v282, v279);
          v283(v165, v279);
          v272 = v55;
          v281 = v335;
        }

        v274 = v321;
        v278 = v319;
      }

      while (1)
      {
        v55 = v272 + 1;
        if (__OFADD__(v272, 1))
        {
          __break(1u);
          goto LABEL_148;
        }

        if (v55 >= v278)
        {
          break;
        }

        v277 = *(v274 + 8 * v55);
        ++v272;
        if (v277)
        {
          goto LABEL_132;
        }
      }

      v296 = [v281 completedUnitCount];
      if (!__OFADD__(v296, 1))
      {
        [v281 setCompletedUnitCount:v296 + 1];
        v297 = v329;
        v298 = *(v328 + 16);
        v299 = v320;
        if (v298)
        {
          v300 = v325 + 16;
          v336 = *(v325 + 16);
          v301 = v328 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
          v334 = *(v325 + 72);
          v302 = (v325 + 8);
          while (1)
          {
            v303 = v300;
            (v336)(v299, v301, v297);
            v304 = objc_autoreleasePoolPush();
            v305 = v343;
            sub_10006C4E8(v299, v333, v281);
            v343 = v305;
            if (v305)
            {
              break;
            }

            objc_autoreleasePoolPop(v304);
            (*v302)(v299, v297);
            v281 = v335;
            v301 += v334;
            --v298;
            v300 = v303;
            if (!v298)
            {
              goto LABEL_145;
            }
          }

          objc_autoreleasePoolPop(v304);
          (*v302)(v299, v297);
        }

LABEL_145:
        v306 = *v323;
        v307 = v331;
        (*v323)(v327, v331);
        v306(v333, v307);
        return;
      }

      __break(1u);
LABEL_151:
      swift_once();
    }

LABEL_156:
    objc_autoreleasePoolPop(v195);
    __break(1u);
  }
}

void sub_100071044(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v60 = a3;
  v71 = a1;
  v72 = sub_100084668();
  *&v67 = *(v72 - 8);
  v4 = *(v67 + 64);
  __chkstk_darwin(v72);
  v74 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v57 - v10;
  v11 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v57 - v14;
  v16 = sub_1000847C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v58 = &v57 - v23;
  v24 = __chkstk_darwin(v22);
  v59 = &v57 - v25;
  __chkstk_darwin(v24);
  v27 = &v57 - v26;
  v28 = *(v17 + 16);
  v68 = a2;
  v73 = v28;
  v28(&v57 - v26, a2, v16);
  (*(v12 + 16))(v15, v71, v11);
  if ((*(v12 + 88))(v15, v11) == enum case for ICObjectReferences.attachment<A>(_:))
  {
    v57 = v27;
    (*(v12 + 8))(v15, v11);
    v29 = [objc_opt_self() defaultManager];
    v30 = v70;
    v31 = sub_100085358();
    if (v30)
    {
      (*(v17 + 8))(v57, v16);
    }

    else
    {
      v32 = v31;

      v33 = v32;
      v66 = *(v32 + 16);
      v69 = v17;
      if (v66)
      {
        v34 = 0;
        v70 = NSURLIsDirectoryKey;
        v68 = v32 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v64 = (v67 + 8);
        v65 = (v17 + 8);
        v67 = xmmword_10008B5D0;
        while (v34 < *(v33 + 16))
        {
          v35 = v33;
          v36 = v16;
          v73(v21, v68 + *(v69 + 72) * v34, v16);
          sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
          inited = swift_initStackObject();
          *(inited + 16) = v67;
          v38 = v70;
          *(inited + 32) = v70;
          v39 = v38;
          sub_100079F54(inited);
          swift_setDeallocating();
          sub_10007A7A0(inited + 32, type metadata accessor for URLResourceKey);
          v40 = v74;
          sub_1000846C8();

          v41 = sub_100084638();
          (*v64)(v40, v72);
          if (v41 != 2 && (v41 & 1) != 0)
          {

            v42 = v69;
            v43 = v63;
            v16 = v36;
            (*(v69 + 32))(v63, v21, v36);
            v44 = 0;
            goto LABEL_13;
          }

          ++v34;
          v16 = v36;
          (*v65)(v21, v36);
          v33 = v35;
          if (v66 == v34)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_12:

        v44 = 1;
        v42 = v69;
        v43 = v63;
LABEL_13:
        (*(v42 + 56))(v43, v44, 1, v16);
        v45 = v61;
        sub_100005888(v43, v61, &qword_1000A56E8, &qword_10008D350);
        v46 = (*(v42 + 48))(v45, 1, v16);
        v47 = v62;
        v48 = v71;
        if (v46 == 1)
        {
          sub_1000058F0(v45, &qword_1000A56E8, &qword_10008D350);
          v75 = 0;
          v49 = v57;
          if (*(v47 + 24) & 1) != 0 && *(v47 + 25) == 2 && (v50 = objc_autoreleasePoolPush(), sub_100071A3C(v47, v48, &v75), objc_autoreleasePoolPop(v50), (v75))
          {
            sub_1000058F0(v43, &qword_1000A56E8, &qword_10008D350);
            (*(v42 + 8))(v49, v16);
          }

          else
          {
            if (*(v47 + 25) == 1)
            {
              v54 = 0x656D686361747461;
            }

            else
            {
              v54 = 0x656D686361747441;
            }

            v55 = v58;
            sub_10006CB5C(v54, 0xEB0000000073746ELL, v49, 0, 0, v58);

            sub_10006C4E8(v48, v55, v60);
            v56 = *(v42 + 8);
            v56(v55, v16);
            sub_1000058F0(v43, &qword_1000A56E8, &qword_10008D350);
            v56(v49, v16);
          }
        }

        else
        {
          v51 = v59;
          (*(v42 + 32))(v59, v45, v16);
          sub_10006C4E8(v48, v51, v60);
          v52 = v57;
          v53 = *(v42 + 8);
          v53(v51, v16);
          sub_1000058F0(v43, &qword_1000A56E8, &qword_10008D350);
          v53(v52, v16);
        }
      }
    }
  }

  else
  {
    (*(v17 + 8))(v27, v16);
    (*(v12 + 8))(v15, v11);
  }
}

void sub_100071924(char a1)
{
  v2 = v1;
  if ((*(v1 + 120) & 1) != 0 || (a1 & 0x1F) == 0)
  {
    v3 = *(v1 + 16);
    if (qword_1000A53E0 != -1)
    {
      swift_once();
    }

    v4 = sub_100084FB8();
    sub_10000B614(v4, qword_1000A5AA0);
    v5 = sub_100084FA8();
    v6 = sub_100085368();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Resetting context…", v7, 2u);
    }

    v8 = sub_100084BF8();
    [v8 reset];

    *(v2 + 120) = 0;
  }
}

void sub_100071A3C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 16);
  sub_100084C08();
  sub_100075E6C(&qword_1000A72F0, 255, &type metadata accessor for ICModernObjectProvider);
  sub_100084A68();
  if (!v3)
  {
    if (v11[3])
    {
      sub_100005740(&qword_1000A59C8, &qword_10008B770);
      if (swift_dynamicCast())
      {
        if (*(&v13 + 1))
        {
          sub_10001C024(&v12, v15);
          sub_10001C118(v15, &v12);
          sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
          if (swift_dynamicCast())
          {
            v6 = [v11[0] isTable];

            sub_100006304(v15);
            if (v6)
            {
              *a3 = 1;
            }
          }

          else
          {
            sub_100006304(v15);
          }

          return;
        }
      }

      else
      {
        v14 = 0;
        v12 = 0u;
        v13 = 0u;
      }
    }

    else
    {
      sub_1000058F0(v11, &qword_1000A5AD0, &unk_10008B5E0);
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    sub_1000058F0(&v12, &qword_1000A5BA8, &qword_10008F750);
    if (qword_1000A53E0 != -1)
    {
      swift_once();
    }

    v7 = sub_100084FB8();
    sub_10000B614(v7, qword_1000A5AA0);
    v8 = sub_100084FA8();
    v9 = sub_100085388();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Object to be exported does not exist anymore — skipping", v10, 2u);
    }
  }
}

void sub_100071CC0(void *a1, uint64_t a2)
{
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_10000626C(a1, v10);
  v12 = (*(v11 + 72))(v10, v11);
  if (v13 >> 60 != 15)
  {
    v14 = *(a2 + 88);
    v26 = *(a2 + 96);
    v15 = v12;
    v16 = v13;
    swift_getObjectType();
    sub_100084718();
    sub_1000849A8();
    if (v2)
    {
      v26 = v16;
      (*(v6 + 8))(v9, v5);
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v17 = sub_100084FB8();
      sub_10000B614(v17, qword_1000A5AA0);
      swift_errorRetain();
      v18 = sub_100084FA8();
      v19 = sub_100085378();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315138;
        swift_getErrorValue();
        v22 = sub_100085988();
        v24 = sub_100038A4C(v22, v23, &v27);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Cannot export attachment preview image file — skipping {error: %s}", v20, 0xCu);
        sub_100006304(v21);

        sub_10001C19C(v15, v26);
      }

      else
      {
        sub_10001C19C(v15, v26);
      }
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      sub_10001C19C(v15, v16);
    }
  }
}

void sub_100071FF0(void *a1, uint64_t a2)
{
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_10000626C(a1, v10);
  v12 = (*(v11 + 80))(v10, v11);
  if (v13 >> 60 != 15)
  {
    v14 = *(a2 + 88);
    v26 = *(a2 + 96);
    v15 = v12;
    v16 = v13;
    swift_getObjectType();
    sub_100084718();
    sub_1000849A8();
    if (v2)
    {
      v26 = v16;
      (*(v6 + 8))(v9, v5);
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v17 = sub_100084FB8();
      sub_10000B614(v17, qword_1000A5AA0);
      swift_errorRetain();
      v18 = sub_100084FA8();
      v19 = sub_100085378();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315138;
        swift_getErrorValue();
        v22 = sub_100085988();
        v24 = sub_100038A4C(v22, v23, &v27);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Cannot export attachment fallback PDF file — skipping {error: %s}", v20, 0xCu);
        sub_100006304(v21);

        sub_10001C19C(v15, v26);
      }

      else
      {
        sub_10001C19C(v15, v26);
      }
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      sub_10001C19C(v15, v16);
    }
  }
}

uint64_t sub_100072320(uint64_t a1)
{
  v2 = sub_100084588();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_100084578();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100072414()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A71A8);
  sub_10000B614(v0, qword_1000A71A8);
  return sub_100084F88();
}

void *sub_100072468()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = [objc_allocWithZone(NSProgress) init];
  if (qword_1000A5468 != -1)
  {
    swift_once();
  }

  v1 = sub_100005740(&qword_1000A72C8, &qword_10008F718);
  sub_10000B614(v1, qword_1000A71C0);
  swift_beginAccess();
  sub_100084988();
  swift_endAccess();
  v2 = v0[3];
  v0[3] = v6;

  v3 = v0[3];
  if (v3)
  {
    v3 = [v3 managedObjectContext];
  }

  v4 = v0[2];
  v0[2] = v3;

  return v0;
}

uint64_t sub_100072574()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000725C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100075E6C(&qword_1000A7290, a2, type metadata accessor for AppMigrationHandler);

  return AppMigrationExtension.configuration.getter(a1, v3);
}

void *sub_10007263C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_100072468();
  *a1 = v2;
  return result;
}

uint64_t sub_100072698()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[4] = v2;
  if (v2 && (v3 = *(v1 + 24), (v0[5] = v3) != 0))
  {
    v4 = swift_allocObject();
    v0[6] = v4;
    *(v4 + 16) = v3;
    v5 = async function pointer to NSManagedObjectContext.perform<A>(_:)[1];
    v6 = v3;
    v2;
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_100072898;

    return NSManagedObjectContext.perform<A>(_:)(v0 + 2, sub_100076170, v4, &type metadata for Int);
  }

  else
  {
    if (qword_1000A5460 != -1)
    {
      swift_once();
    }

    v8 = sub_100084FB8();
    sub_10000B614(v8, qword_1000A71A8);
    v9 = sub_100084FA8();
    v10 = sub_100085368();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "no note context so no note count", v11, 2u);
    }

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_100072898()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 48);

    return _swift_task_switch(sub_1000729D4, 0, 0);
  }
}

uint64_t sub_1000729D4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_100072A3C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 visibleNotesCount];
  if (qword_1000A5460 != -1)
  {
    swift_once();
  }

  v4 = sub_100084FB8();
  sub_10000B614(v4, qword_1000A71A8);
  v5 = sub_100084FA8();
  v6 = sub_100085368();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "note count: %ld", v7, 0xCu);
  }

  *a2 = v3;
}

uint64_t sub_100072B48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000847C8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100072C08, 0, 0);
}

uint64_t sub_100072C08()
{
  if (qword_1000A5460 != -1)
  {
    swift_once();
  }

  v1 = sub_100084FB8();
  sub_10000B614(v1, qword_1000A71A8);
  v2 = sub_100084FA8();
  v3 = sub_100085368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "called to export", v4, 2u);
  }

  v5 = v0[3];

  v6 = *(v5 + 16);
  v0[7] = v6;
  if (v6)
  {
    v7 = swift_allocObject();
    v0[8] = v7;
    *(v7 + 16) = v6;
    v8 = async function pointer to NSManagedObjectContext.perform<A>(_:)[1];
    v6;
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_100072E24;
    v10 = v0[6];
    v11 = v0[4];

    return NSManagedObjectContext.perform<A>(_:)(v10, sub_10007A19C, v7, v11);
  }

  else
  {
    sub_10007A148();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v13 = v0[6];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100072E24()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100073158, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = async function pointer to ResourcesArchiver.appendItem(at:pathInArchive:)[1];
    v6 = swift_task_alloc();
    v3[11] = v6;
    *v6 = v3;
    v6[1] = sub_100072FAC;
    v7 = v3[2];
    v8 = v3[6];

    return ResourcesArchiver.appendItem(at:pathInArchive:)(v8, 0, 0);
  }
}

uint64_t sub_100072FAC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1000731C8;
  }

  else
  {
    v3 = sub_1000730C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000730C0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_100073950();

  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100073158()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000731C8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_100073950();

  (*(v4 + 8))(v1, v3);
  v5 = v0[12];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100073260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v62 = *(v64 - 8);
  v4 = *(v62 + 64);
  __chkstk_darwin(v64);
  v63 = &v52 - v5;
  v57 = sub_1000847C8();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v57);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  v12 = ICGroupContainerIdentifier();
  if (!v12)
  {
    sub_100085098();
    v12 = sub_100085068();
  }

  v56 = v6;
  v13 = [objc_opt_self() URLForGroupContainerWithIdentifier:v12];

  sub_100084768();
  v54 = v11;
  v55 = a2;
  sub_100084728();
  v14 = [objc_opt_self() allActiveAccountsInContext:a1];
  sub_100008250(0, &qword_1000A56D8, ICAccount_ptr);
  v15 = sub_100085208();

  v16 = sub_100084C08();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v61 = a1;
  v19 = sub_100084BE8();
  v20 = qword_1000A5428;

  if (v20 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v21 = *(&static ICArchiveCreator.default + 1);
    v60 = static ICArchiveCreator.default;
    v23 = qword_1000B17A0;
    v22 = unk_1000B17A8;
    v24 = xmmword_1000B17B0;
    v25 = objc_opt_self();

    v26 = [v25 defaultManager];
    sub_100005740(&qword_1000A5BD8, &qword_10008B7D8);
    v27 = swift_allocObject();
    *(v27 + 104) = 0;
    *(v27 + 112) = 32;
    *(v27 + 120) = 0;
    *(v27 + 128) = 0u;
    *(v27 + 144) = 0u;
    *(v27 + 16) = v19;
    *(v27 + 24) = 257;
    *(v27 + 26) = v66;
    *(v27 + 30) = v67;
    *(v27 + 32) = v60;
    *(v27 + 40) = v21;
    *(v27 + 48) = v23;
    *(v27 + 56) = v22;
    *(v27 + 64) = v24;
    *(v27 + 80) = 256;
    *(v27 + 84) = 0;
    *(v27 + 88) = v26;
    *(v27 + 96) = &protocol witness table for NSFileManager;

    v28 = v26;
    v58 = v27;
    sub_1000699CC();
    v52 = v19;

    v29 = v15;
    if (v15 >> 62)
    {
      break;
    }

    v15 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_6:
    v30 = 0;
    v59 = v29 & 0xFFFFFFFFFFFFFF8;
    v60 = v29 & 0xC000000000000001;
    v19 = v62 + 32;
    v31 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v60)
      {
        v32 = sub_100085648();
      }

      else
      {
        if (v30 >= *(v59 + 16))
        {
          goto LABEL_19;
        }

        v32 = *(v29 + 8 * v30 + 32);
      }

      v33 = v32;
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      __chkstk_darwin(v32);
      *(&v52 - 2) = v33;
      v35 = v65;
      sub_100085488();
      v65 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_10000F014(0, v31[2] + 1, 1, v31);
      }

      v37 = v31[2];
      v36 = v31[3];
      if (v37 >= v36 >> 1)
      {
        v31 = sub_10000F014(v36 > 1, v37 + 1, 1, v31);
      }

      v31[2] = v37 + 1;
      (*(v62 + 32))(v31 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v37, v63, v64);
      ++v30;
      if (v34 == v15)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v15 = sub_100085718();
  if (v15)
  {
    goto LABEL_6;
  }

LABEL_22:
  v31 = _swiftEmptyArrayStorage;
LABEL_23:

  v38 = [objc_allocWithZone(NSProgress) init];
  v39 = v53;
  v40 = v58;
  v41 = v65;
  sub_100069B38(v31, v38, v53);
  if (v41)
  {

    v43 = v56;
    v42 = v57;
    v44 = v55;

    v48 = *(v43 + 8);
    v48(v44, v42);
    return (v48)(v54, v42);
  }

  else
  {
    v45 = *(v40 + 88);
    v46 = *(v40 + 96);
    swift_getObjectType();
    sub_1000849B8();
    v47 = v56;
    sub_100084A18();
    sub_100069D50(v39);
    v50 = *(v47 + 8);
    v51 = v57;
    v50(v39, v57);
    v50(v54, v51);
  }
}

id sub_100073950()
{
  v0 = [objc_opt_self() defaultManager];
  sub_1000846F8(v1);
  v3 = v2;
  v8 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v8];

  v5 = v8;
  if (v4)
  {

    return v5;
  }

  else
  {
    v7 = v8;
    sub_100084688();

    swift_willThrow();
  }
}

uint64_t sub_100073A70()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000761DC;
  *(v4 + 24) = v3;
  v9[4] = sub_1000761F4;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000699A4;
  v9[3] = &unk_1000A1478;
  v5 = _Block_copy(v9);
  v6 = v1;

  [v6 performBlockAndWait:v5];

  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    v8 = *(v2 + 16);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100073C30(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100076234;
  *(v5 + 24) = a2;
  v8[4] = sub_10007623C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000744D0;
  v8[3] = &unk_1000A14C8;
  v6 = _Block_copy(v8);

  [v4 enumerateNotesInContext:a1 batchSize:1 visibleOnly:1 saveAfterBatch:0 usingBlock:v6];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_100073D90(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 textStorage];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 length];

    if (v7 + 0x4000000000000000 >= 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = 0;
LABEL_5:
  swift_beginAccess();
  v8 = *(a3 + 16);
  v9 = __OFADD__(v8, 2 * v7);
  v10 = v8 + 2 * v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v10;
    aBlock[4] = sub_100076264;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008D1C;
    aBlock[3] = &unk_1000A14F0;
    v11 = _Block_copy(aBlock);

    [a1 enumerateAttachmentsInOrderUsingBlock:v11];
    _Block_release(v11);
  }
}

void sub_100073EC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100084668();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v58 - v14;
  v16 = sub_1000847C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100067784();
  if (!v21)
  {
    return;
  }

  v22 = [a1 parentAttachment];
  if (!v22)
  {
    v23 = sub_100069028();
    if (v24 >> 60 == 15)
    {
      v25 = [a1 fallbackImageData];
      if (v25)
      {
        v26 = v25;
        v27 = sub_100084808();
        v29 = v28;

        v30 = v29;
        v31 = v29 >> 62;
        if ((v29 >> 62) <= 1)
        {
          if (v31)
          {
            sub_10000650C(v27, v29);
            if (__OFSUB__(HIDWORD(v27), v27))
            {
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            v32 = HIDWORD(v27) - v27;
          }

          else
          {
            sub_10000650C(v27, v29);
            v32 = BYTE6(v29);
          }

          goto LABEL_37;
        }

        if (v31 != 2)
        {
          sub_10000650C(v27, v29);
          v32 = 0;
          goto LABEL_37;
        }

        v16 = *(v27 + 16);
        v43 = *(v27 + 24);
        v23 = sub_10000650C(v27, v30);
        v32 = v43 - v16;
        if (!__OFSUB__(v43, v16))
        {
LABEL_37:
          swift_beginAccess();
          v48 = *(a5 + 16);
          v37 = __OFADD__(v48, v32);
          v40 = v48 + v32;
          if (!v37)
          {
            goto LABEL_38;
          }

          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_27;
      }

LABEL_18:
      sub_100068BB8(v15);
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        sub_1000058F0(v15, &qword_1000A56E8, &qword_10008D350);
        v38 = sub_100068D7C();
        if (v39 >> 60 == 15)
        {
          return;
        }

        v40 = v39 >> 62;
        if ((v39 >> 62) <= 1)
        {
          if (v40)
          {
            goto LABEL_48;
          }

          v41 = BYTE6(v39);
          sub_10001C19C(v38, v39);
          v42 = v41;
          goto LABEL_51;
        }

LABEL_44:
        if (v40 == 2)
        {
          v54 = *(v38 + 16);
          v53 = *(v38 + 24);
          v38 = sub_10001C19C(v38, v39);
          v37 = __OFSUB__(v53, v54);
          v42 = v53 - v54;
          if (!v37)
          {
            goto LABEL_51;
          }

          __break(1u);
LABEL_48:
          v55 = HIDWORD(v38);
          v56 = v38;
          sub_10001C19C(v38, v39);
          if (__OFSUB__(v55, v56))
          {
LABEL_57:
            __break(1u);
            return;
          }

          v42 = v55 - v56;
          goto LABEL_51;
        }

        sub_10001C19C(v38, v39);
        v42 = 0;
LABEL_51:
        swift_beginAccess();
        v57 = *(a5 + 16);
        v37 = __OFADD__(v57, v42);
        v40 = v57 + v42;
        if (!v37)
        {
          goto LABEL_38;
        }

        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_33:
      (*(v17 + 32))(v20, v15, v16);
      sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
      inited = swift_initStackObject();
      v58 = xmmword_10008B5D0;
      *(inited + 16) = xmmword_10008B5D0;
      *(inited + 32) = NSURLFileSizeKey;
      v47 = NSURLFileSizeKey;
      sub_100079F54(inited);
      swift_setDeallocating();
      sub_10007A7A0(inited + 32, type metadata accessor for URLResourceKey);
      sub_1000846C8();

      v49 = sub_100084658();
      v51 = v50;
      (*(v8 + 8))(v11, v7);
      (*(v17 + 8))(v20, v16);
      if (v51)
      {
        return;
      }

      v38 = swift_beginAccess();
      v52 = *(a5 + 16);
      v37 = __OFADD__(v52, v49);
      v40 = v52 + v49;
      if (!v37)
      {
LABEL_38:
        *(a5 + 16) = v40;
        return;
      }

      __break(1u);
      goto LABEL_44;
    }

    v33 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v15 = *(v23 + 16);
        v36 = *(v23 + 24);
        sub_10001C19C(v23, v24);
        v37 = __OFSUB__(v36, v15);
        v35 = v36 - v15;
        if (v37)
        {
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {
        sub_10001C19C(v23, v24);
        v35 = 0;
      }
    }

    else
    {
      if (v33)
      {
LABEL_27:
        v15 = HIDWORD(v23);
        v44 = v23;
        sub_10001C19C(v23, v24);
        if (__OFSUB__(v15, v44))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v35 = v15 - v44;
        goto LABEL_30;
      }

      v34 = BYTE6(v24);
      sub_10001C19C(v23, v24);
      v35 = v34;
    }

LABEL_30:
    swift_beginAccess();
    v45 = *(a5 + 16);
    v37 = __OFADD__(v45, v35);
    v40 = v45 + v35;
    if (!v37)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_33;
  }
}

void sub_1000744D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_10007452C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000745BC;

  return sub_100072678();
}

uint64_t sub_1000745BC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000746B8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to DataclassResourcesExporting.resourcesErrorCount.getter[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10007AB2C;

  return DataclassResourcesExporting.resourcesErrorCount.getter(a1, a2);
}

uint64_t sub_100074760(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007AB08;

  return sub_100072B48(a1);
}

uint64_t sub_1000747F8()
{
  v2 = *v0;
  v3 = sub_100073A70();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_100074864(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1000847C8();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100074974, 0, 0);
}

uint64_t sub_100074974()
{
  v102 = v0;
  if (qword_1000A5460 != -1)
  {
    swift_once();
  }

  v1 = sub_100084FB8();
  sub_10000B614(v1, qword_1000A71A8);
  v2 = sub_100084FA8();
  v3 = sub_100085368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "extension called to import", v4, 2u);
  }

  v5 = v0[4];
  v6 = v0[5];

  v13 = sub_1000752C8();
  v97 = v0[5];
  [*(v97 + 32) setTotalUnitCount:v13];
  v14 = sub_100084FA8();
  v15 = sub_100085368();
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "set the import count: %ld", v17, 0xCu);
  }

  v18 = ICGroupContainerIdentifier();
  if (!v18)
  {
    sub_100085098();
    v18 = sub_100085068();
  }

  v20 = v0[10];
  v19 = v0[11];
  v22 = v0[6];
  v21 = v0[7];
  v23 = [objc_opt_self() URLForGroupContainerWithIdentifier:v18];

  sub_100084768();
  v98 = *(v21 + 16);
  v98(v20, v19, v22);
  v24 = sub_100084FA8();
  v25 = sub_100085368();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[10];
  v29 = v0[6];
  v28 = v0[7];
  v96 = v13;
  if (v26)
  {
    v95 = v25;
    v30 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v101 = v94;
    *v30 = 136315138;
    sub_100075E6C(&qword_1000A5AD8, 255, &type metadata accessor for URL);
    v31 = sub_100085908();
    v33 = v32;
    v100 = *(v28 + 8);
    v100(v27, v29);
    v34 = sub_100038A4C(v31, v33, &v101);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v24, v95, "group container: %s", v30, 0xCu);
    sub_100006304(v94);
  }

  else
  {

    v100 = *(v28 + 8);
    v100(v27, v29);
  }

  v35 = v0[11];
  v37 = v0[8];
  v36 = v0[9];
  v38 = v0[6];
  sub_100084718();
  v98(v37, v36, v38);
  v39 = sub_100084FA8();
  v40 = sub_100085368();
  v41 = os_log_type_enabled(v39, v40);
  v43 = v0[7];
  v42 = v0[8];
  v44 = v0[6];
  if (v41)
  {
    v45 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v101 = v99;
    *v45 = 136315138;
    sub_100075E6C(&qword_1000A5AD8, 255, &type metadata accessor for URL);
    v46 = sub_100085908();
    v48 = v47;
    v100(v42, v44);
    v49 = sub_100038A4C(v46, v48, &v101);

    *(v45 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "destination: %s", v45, 0xCu);
    sub_100006304(v99);
  }

  else
  {

    v100(v42, v44);
  }

  v50 = v0[9];
  v51 = objc_opt_self();
  v52 = [v51 defaultManager];
  sub_100084798(1);
  v53 = sub_100085068();

  LODWORD(v50) = [v52 fileExistsAtPath:v53];

  if (v50)
  {
    v54 = sub_100084FA8();
    v55 = sub_100085368();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "removing existing import file", v56, 2u);
    }

    v57 = v0[9];

    v58 = [v51 defaultManager];
    sub_1000846F8(v59);
    v61 = v60;
    v0[3] = 0;
    v62 = [v58 removeItemAtURL:v60 error:v0 + 3];

    v63 = v0[3];
    if (!v62)
    {
      v89 = v0[11];
      v90 = v0[9];
      v91 = v0[6];
      v92 = v0[7];
      v93 = v63;
      sub_100084688();

      swift_willThrow();
      v100(v90, v91);
      v100(v89, v91);
      goto LABEL_6;
    }

    v64 = v63;
  }

  v65 = v0[9];
  v66 = v0[4];
  v67 = [v51 defaultManager];
  sub_1000846F8(v68);
  v70 = v69;
  sub_1000846F8(v71);
  v73 = v72;
  v0[2] = 0;
  LODWORD(v65) = [v67 copyItemAtURL:v70 toURL:v72 error:v0 + 2];

  v74 = v0[2];
  v75 = v0[11];
  if (v65)
  {
    v77 = v0[9];
    v76 = v0[10];
    v79 = v0[7];
    v78 = v0[8];
    v80 = v0[6];
    v81 = *(v97 + 32);
    v82 = v74;
    v83 = v81;
    [v83 setCompletedUnitCount:{objc_msgSend(v83, "totalUnitCount")}];

    v100(v77, v80);
    v100(v75, v80);

    v84 = v0[1];

    return v84(v96, v96);
  }

  v85 = v0[9];
  v86 = v0[6];
  v87 = v0[7];
  v88 = v74;
  sub_100084688();

  swift_willThrow();
  v100(v85, v86);
  v100(v75, v86);
LABEL_6:
  v8 = v0[10];
  v7 = v0[11];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11();
}

char *sub_1000752C8()
{
  v1 = sub_100084668();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000847C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_100085358();

  if (v0)
  {
    return v11;
  }

  v40 = v5;
  v44 = *(v12 + 16);
  if (!v44)
  {

    v11 = 0;
LABEL_21:
    if (qword_1000A5460 != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v13 = v2;
  v41 = 0;
  v11 = 0;
  v14 = 0;
  v43 = v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v42 = v7 + 16;
  v38 = NSURLIsDirectoryKey;
  v35 = (v13 + 8);
  v15 = (v7 + 8);
  v37 = xmmword_10008B5D0;
  v36 = v1;
  v16 = v12;
  v39 = v12;
  while (v14 < *(v16 + 16))
  {
    (*(v7 + 16))(v10, v43 + *(v7 + 72) * v14, v6);
    if (sub_100084698() == 25709 && v18 == 0xE200000000000000)
    {

LABEL_5:
      (*v15)(v10, v6);
      v17 = __OFADD__(v11++, 1);
      if (v17)
      {
        goto LABEL_30;
      }

      goto LABEL_6;
    }

    v19 = sub_100085948();

    if (v19)
    {
      goto LABEL_5;
    }

    sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
    inited = swift_initStackObject();
    *(inited + 16) = v37;
    v21 = v38;
    *(inited + 32) = v38;
    v22 = v21;
    sub_100079F54(inited);
    swift_setDeallocating();
    sub_10007A7A0(inited + 32, type metadata accessor for URLResourceKey);
    v24 = v40;
    v23 = v41;
    sub_1000846C8();
    v41 = v23;
    if (v23)
    {
      (*v15)(v10, v6);

LABEL_27:

      return v11;
    }

    v25 = sub_100084638();
    (*v35)(v24, v36);
    if (v25 == 2 || (v25 & 1) == 0)
    {
      (*v15)(v10, v6);
      v16 = v39;
    }

    else
    {
      v26 = v41;
      v27 = sub_1000752C8(v10);
      v41 = v26;
      if (v26)
      {
        (*v15)(v10, v6);
        goto LABEL_27;
      }

      v28 = v27;
      (*v15)(v10, v6);
      v17 = __OFADD__(v11, v28);
      v11 += v28;
      v16 = v39;
      if (v17)
      {
        goto LABEL_31;
      }
    }

LABEL_6:
    if (v44 == ++v14)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_22:
  v29 = sub_100084FB8();
  sub_10000B614(v29, qword_1000A71A8);
  v30 = sub_100084FA8();
  v31 = sub_100085368();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v30, v31, "import count: %ld", v32, 0xCu);
  }

  return v11;
}

uint64_t sub_1000757D4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007586C;

  return sub_100074864(a1);
}

uint64_t sub_10007586C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_10007597C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DataclassResourcesImporting.importResources(at:request:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v10 = sub_100075E6C(&qword_1000A7318, v9, type metadata accessor for AppMigrationHandler);
  *v8 = v3;
  v8[1] = sub_100075A70;

  return DataclassResourcesImporting.importResources(at:request:)(a1, a2, a3, v10);
}

uint64_t sub_100075A70()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100075B70()
{
  v0 = sub_100005740(&qword_1000A72C8, &qword_10008F718);
  sub_10000B64C(v0, qword_1000A71C0);
  sub_10000B614(v0, qword_1000A71C0);
  sub_100008250(0, &qword_1000A72D0, ICNoteContext_ptr);
  return sub_100084978();
}

void *sub_100075C00@<X0>(void *a1@<X8>)
{
  result = sub_100075C28();
  *a1 = result;
  return result;
}

void *sub_100075C28()
{
  v0 = objc_opt_self();
  [v0 startSharedContextWithOptions:2097666];
  v1 = [v0 sharedContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 databaseOpenError];
    if (!v3)
    {
      return v2;
    }

    v4 = v3;
  }

  if (qword_1000A5460 != -1)
  {
    swift_once();
  }

  v5 = sub_100084FB8();
  sub_10000B614(v5, qword_1000A71A8);
  v6 = sub_100084FA8();
  v7 = sub_100085378();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Cannot create modern note context for App Migraton Extension — returning nil and exiting shortly", v8, 2u);
  }

  return 0;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppMigrationHandler();
  sub_100075E6C(&qword_1000A71D8, v3, type metadata accessor for AppMigrationHandler);
  sub_100084D28();
  return 0;
}

uint64_t sub_100075E6C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100076138()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007619C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000761F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10007621C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007623C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10007626C(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v54 = sub_100005740(&qword_1000A6D98, &qword_10008E500);
  v4 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v6 = &v49 - v5;
  v55 = _s3TagVMa();
  v7 = *(v55 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v55);
  v66 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v49 - v11;
  v12 = sub_1000848B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v65 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v49 - v21;
  v50 = v2;
  v67 = *v2;
  v23 = *(v67 + 40);
  sub_100085A08();
  v68 = a2;
  sub_100005888(a2, v22, &qword_1000A5490, &qword_10008CD80);
  v24 = *(v13 + 48);
  v64 = v13 + 48;
  if (v24(v22, 1, v12) == 1)
  {
    sub_100085A28(0);
  }

  else
  {
    (*(v13 + 32))(v16, v22, v12);
    sub_100085A28(1u);
    sub_100075E6C(&qword_1000A6D90, 255, &type metadata accessor for Date);
    sub_100085028();
    (*(v13 + 8))(v16, v12);
  }

  v25 = (v68 + *(v55 + 20));
  v26 = *v25;
  v58 = v25[1];
  v59 = v26;
  sub_100085118();
  v27 = sub_100085A38();
  v28 = -1 << *(v67 + 32);
  v29 = v27 & ~v28;
  v63 = v67 + 56;
  if ((*(v67 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
  {
    v62 = v24;
    v53 = v16;
    v60 = ~v28;
    v52 = (v13 + 32);
    v61 = *(v7 + 72);
    v56 = (v13 + 8);
    v30 = v54;
    v31 = v66;
    do
    {
      v32 = v61 * v29;
      sub_10007A738(*(v67 + 48) + v61 * v29, v31, _s3TagVMa);
      v33 = *(v30 + 48);
      sub_100005888(v31, v6, &qword_1000A5490, &qword_10008CD80);
      sub_100005888(v68, &v6[v33], &qword_1000A5490, &qword_10008CD80);
      v34 = v62;
      if (v62(v6, 1, v12) == 1)
      {
        v35 = v34(&v6[v33], 1, v12);
        v31 = v66;
        if (v35 != 1)
        {
          goto LABEL_7;
        }

        sub_1000058F0(v6, &qword_1000A5490, &qword_10008CD80);
      }

      else
      {
        v57 = v32;
        v36 = v30;
        v37 = v65;
        sub_100005888(v6, v65, &qword_1000A5490, &qword_10008CD80);
        if (v34(&v6[v33], 1, v12) == 1)
        {
          (*v56)(v37, v12);
          v31 = v66;
          v30 = v36;
LABEL_7:
          sub_1000058F0(v6, &qword_1000A6D98, &qword_10008E500);
          goto LABEL_8;
        }

        v38 = v53;
        (*v52)(v53, &v6[v33], v12);
        sub_100075E6C(&qword_1000A6DA0, 255, &type metadata accessor for Date);
        v39 = sub_100085058();
        v40 = *v56;
        (*v56)(v38, v12);
        v40(v65, v12);
        v30 = v54;
        sub_1000058F0(v6, &qword_1000A5490, &qword_10008CD80);
        v31 = v66;
        v32 = v57;
        if ((v39 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v41 = (v31 + *(v55 + 20));
      v42 = *v41 == v59 && v41[1] == v58;
      if (v42 || (sub_100085948() & 1) != 0)
      {
        sub_10007A7A0(v31, _s3TagVMa);
        sub_10007A7A0(v68, _s3TagVMa);
        sub_10007A738(*(v67 + 48) + v32, v51, _s3TagVMa);
        return 0;
      }

LABEL_8:
      sub_10007A7A0(v31, _s3TagVMa);
      v29 = (v29 + 1) & v60;
    }

    while (((*(v63 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
  }

  v44 = v50;
  v45 = *v50;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v68;
  v48 = v49;
  sub_10007A738(v68, v49, _s3TagVMa);
  v69 = *v44;
  sub_100077E38(v48, v29, isUniquelyReferenced_nonNull_native);
  *v44 = v69;
  sub_10007A800(v47, v51, _s3TagVMa);
  return 1;
}

uint64_t sub_1000769E4(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_1000847C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v45 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  v8 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v10 = &v41[-v9];
  v11 = type metadata accessor for MarkdownStyle(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v16 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v19 = &v41[-v18];
  __chkstk_darwin(v17);
  v46 = &v41[-v20];
  v47 = v2;
  v21 = *v2;
  v22 = *(*v2 + 40);
  sub_100085A08();
  v55 = a2;
  sub_10002656C();
  v23 = sub_100085A38();
  v24 = v21 + 56;
  v25 = -1 << *(v21 + 32);
  v26 = v23 & ~v25;
  if (((*(v21 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_27:
    v35 = v47;
    v36 = *v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v55;
    v39 = v46;
    sub_10007A738(v55, v46, type metadata accessor for MarkdownStyle);
    v56 = *v35;
    sub_100078580(v39, v26, isUniquelyReferenced_nonNull_native);
    *v35 = v56;
    sub_10007A800(v38, v48, type metadata accessor for MarkdownStyle);
    return 1;
  }

  v51 = v16;
  v52 = ~v25;
  v53 = *(v12 + 72);
  v27 = (v5 + 48);
  v49 = (v5 + 8);
  v50 = v21 + 56;
  v44 = (v5 + 32);
  while (1)
  {
    v28 = v53 * v26;
    sub_10007A738(*(v21 + 48) + v53 * v26, v19, type metadata accessor for MarkdownStyle);
    v29 = *(v54 + 48);
    sub_10007A738(v19, v10, type metadata accessor for MarkdownStyle);
    sub_10007A738(v55, &v10[v29], type metadata accessor for MarkdownStyle);
    v30 = *v27;
    v31 = (*v27)(v10, 6, v4);
    if (v31 > 2)
    {
      if (v31 > 4)
      {
        if (v31 == 5)
        {
          sub_10007A7A0(v19, type metadata accessor for MarkdownStyle);
          if (v30(&v10[v29], 6, v4) == 5)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_10007A7A0(v19, type metadata accessor for MarkdownStyle);
          if (v30(&v10[v29], 6, v4) == 6)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v31 == 3)
      {
        sub_10007A7A0(v19, type metadata accessor for MarkdownStyle);
        if (v30(&v10[v29], 6, v4) == 3)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_10007A7A0(v19, type metadata accessor for MarkdownStyle);
        if (v30(&v10[v29], 6, v4) == 4)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    if (v31)
    {
      if (v31 == 1)
      {
        sub_10007A7A0(v19, type metadata accessor for MarkdownStyle);
        if (v30(&v10[v29], 6, v4) == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_10007A7A0(v19, type metadata accessor for MarkdownStyle);
        if (v30(&v10[v29], 6, v4) == 2)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    v32 = v51;
    sub_10007A738(v10, v51, type metadata accessor for MarkdownStyle);
    if (!v30(&v10[v29], 6, v4))
    {
      break;
    }

    sub_10007A7A0(v19, type metadata accessor for MarkdownStyle);
    (*v49)(v32, v4);
    v24 = v50;
LABEL_22:
    sub_1000058F0(v10, &qword_1000A5C60, &qword_10008B870);
LABEL_23:
    v26 = (v26 + 1) & v52;
    if (((*(v24 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v33 = v45;
  (*v44)(v45, &v10[v29], v4);
  v42 = sub_100084758();
  v43 = v21;
  v34 = *v49;
  (*v49)(v33, v4);
  sub_10007A7A0(v19, type metadata accessor for MarkdownStyle);
  v34(v32, v4);
  v21 = v43;
  v24 = v50;
  if ((v42 & 1) == 0)
  {
    sub_10007A7A0(v10, type metadata accessor for MarkdownStyle);
    goto LABEL_23;
  }

LABEL_28:
  sub_10007A7A0(v10, type metadata accessor for MarkdownStyle);
  sub_10007A7A0(v55, type metadata accessor for MarkdownStyle);
  sub_10007A738(*(v21 + 48) + v28, v48, type metadata accessor for MarkdownStyle);
  return 0;
}

uint64_t sub_10007708C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100085A08();
  sub_100085118();
  v9 = sub_100085A38();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100085948() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100078C34(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000771DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000848B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v48 - v10;
  v12 = _s3TagVMa();
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = *(v57 + 64);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v17 = *(*v2 + 24);
  }

  sub_100005740(&qword_1000A7310, &qword_10008F798);
  result = sub_100085608();
  v19 = result;
  if (*(v16 + 16))
  {
    v56 = v4;
    v49 = v2;
    v20 = 0;
    v21 = (v16 + 56);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 56);
    v25 = (v22 + 63) >> 6;
    v54 = (v5 + 48);
    v55 = result;
    v50 = (v5 + 8);
    v51 = (v5 + 32);
    v26 = result + 56;
    v52 = v16;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v31 = *(v16 + 48);
      v59 = *(v57 + 72);
      sub_10007A800(v31 + v59 * (v28 | (v20 << 6)), v15, _s3TagVMa);
      v32 = v19[5];
      sub_100085A08();
      v33 = v15;
      sub_100005888(v15, v11, &qword_1000A5490, &qword_10008CD80);
      v34 = v56;
      if ((*v54)(v11, 1, v56) == 1)
      {
        sub_100085A28(0);
      }

      else
      {
        v35 = v53;
        (*v51)(v53, v11, v34);
        sub_100085A28(1u);
        sub_100075E6C(&qword_1000A6D90, 255, &type metadata accessor for Date);
        sub_100085028();
        v36 = v35;
        v16 = v52;
        (*v50)(v36, v34);
      }

      v15 = v33;
      v37 = (v33 + *(v58 + 20));
      v38 = *v37;
      v39 = v37[1];
      sub_100085118();
      result = sub_100085A38();
      v19 = v55;
      v40 = -1 << *(v55 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v26 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v26 + 8 * v42);
          if (v46 != -1)
          {
            v27 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v41) & ~*(v26 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      result = sub_10007A800(v33, v19[6] + v27 * v59, _s3TagVMa);
      ++v19[2];
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v20 >= v25)
      {
        break;
      }

      v30 = v21[v20];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    v47 = 1 << *(v16 + 32);
    if (v47 >= 64)
    {
      bzero(v21, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v47;
    }

    v2 = v49;
    *(v16 + 16) = 0;
  }

  *v2 = v19;
  return result;
}

uint64_t sub_1000776E0(uint64_t a1)
{
  v2 = v1;
  v52 = sub_1000847C8();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v52);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MarkdownStyle(0);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v15 = *(*v2 + 24);
  }

  sub_100005740(&qword_1000A5C78, &unk_10008B880);
  result = sub_100085608();
  v17 = result;
  if (*(v14 + 16))
  {
    v46 = v2;
    v47 = v7;
    v18 = 0;
    v19 = (v14 + 56);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 56);
    v23 = (v20 + 63) >> 6;
    v48 = v14;
    v49 = (v4 + 48);
    v44 = (v4 + 8);
    v45 = (v4 + 32);
    v24 = result + 56;
    while (v22)
    {
      v31 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_19:
      v34 = *(v14 + 48);
      v35 = *(v50 + 72);
      sub_10007A800(v34 + v35 * (v31 | (v18 << 6)), v13, type metadata accessor for MarkdownStyle);
      v36 = *(v17 + 40);
      sub_100085A08();
      v37 = v51;
      sub_10007A738(v13, v51, type metadata accessor for MarkdownStyle);
      v38 = (*v49)(v37, 6, v52);
      if (v38 <= 2)
      {
        if (v38)
        {
          if (v38 == 1)
          {
            sub_100085A18(0);
          }

          else
          {
            sub_100085A18(1uLL);
          }
        }

        else
        {
          v25 = v52;
          (*v45)(v47, v51, v52);
          sub_100085A18(6uLL);
          sub_100075E6C(&qword_1000A5C70, 255, &type metadata accessor for URL);
          v26 = v47;
          sub_100085028();
          (*v44)(v26, v25);
        }
      }

      else if (v38 > 4)
      {
        if (v38 == 5)
        {
          sub_100085A18(4uLL);
        }

        else
        {
          sub_100085A18(5uLL);
        }
      }

      else if (v38 == 3)
      {
        sub_100085A18(2uLL);
      }

      else
      {
        sub_100085A18(3uLL);
      }

      result = sub_100085A38();
      v27 = -1 << *(v17 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v24 + 8 * (v28 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v27) >> 6;
        while (++v29 != v40 || (v39 & 1) == 0)
        {
          v41 = v29 == v40;
          if (v29 == v40)
          {
            v29 = 0;
          }

          v39 |= v41;
          v42 = *(v24 + 8 * v29);
          if (v42 != -1)
          {
            v30 = __clz(__rbit64(~v42)) + (v29 << 6);
            goto LABEL_11;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v28) & ~*(v24 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v24 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      result = sub_10007A800(v13, *(v17 + 48) + v30 * v35, type metadata accessor for MarkdownStyle);
      ++*(v17 + 16);
      v14 = v48;
    }

    v32 = v18;
    while (1)
    {
      v18 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v18 >= v23)
      {
        break;
      }

      v33 = v19[v18];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v22 = (v33 - 1) & v33;
        goto LABEL_19;
      }
    }

    v43 = 1 << *(v14 + 32);
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    v2 = v46;
    *(v14 + 16) = 0;
  }

  *v2 = v17;
  return result;
}

uint64_t sub_100077BD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100005740(&qword_1000A7330, &unk_10008F7B0);
  result = sub_100085608();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_100085A08();
      sub_100085118();
      result = sub_100085A38();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100077E38(uint64_t a1, unint64_t a2, char a3)
{
  v62 = a1;
  v61 = sub_100005740(&qword_1000A6D98, &qword_10008E500);
  v6 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v8 = &v45 - v7;
  v52 = _s3TagVMa();
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v52);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000848B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v48 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v60 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v45 - v21;
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v46 = v3;
  v45 = v9;
  if (v24 > v23 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1000771DC(v23 + 1);
  }

  else
  {
    if (v24 > v23)
    {
      sub_100078DE0(_s3TagVMa, &qword_1000A7310, &qword_10008F798, _s3TagVMa);
      goto LABEL_27;
    }

    sub_100079144(v23 + 1);
  }

  v59 = *v3;
  v25 = *(v59 + 40);
  sub_100085A08();
  sub_100005888(v62, v22, &qword_1000A5490, &qword_10008CD80);
  v57 = *(v14 + 48);
  v58 = v14 + 48;
  if (v57(v22, 1, v13) == 1)
  {
    sub_100085A28(0);
  }

  else
  {
    v26 = v48;
    (*(v14 + 32))(v48, v22, v13);
    sub_100085A28(1u);
    sub_100075E6C(&qword_1000A6D90, 255, &type metadata accessor for Date);
    sub_100085028();
    (*(v14 + 8))(v26, v13);
  }

  v27 = (v62 + *(v52 + 20));
  v28 = *v27;
  v53 = v27[1];
  v54 = v28;
  sub_100085118();
  v29 = sub_100085A38();
  v30 = -1 << *(v59 + 32);
  a2 = v29 & ~v30;
  v56 = v59 + 56;
  if ((*(v59 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v55 = ~v30;
    v47 = (v14 + 32);
    v31 = *(v9 + 72);
    v51 = (v14 + 8);
    v50 = v12;
    v49 = v31;
    do
    {
      sub_10007A738(*(v59 + 48) + v31 * a2, v12, _s3TagVMa);
      v32 = *(v61 + 48);
      sub_100005888(v12, v8, &qword_1000A5490, &qword_10008CD80);
      sub_100005888(v62, &v8[v32], &qword_1000A5490, &qword_10008CD80);
      v33 = v57;
      if (v57(v8, 1, v13) == 1)
      {
        if (v33(&v8[v32], 1, v13) != 1)
        {
          goto LABEL_14;
        }

        sub_1000058F0(v8, &qword_1000A5490, &qword_10008CD80);
      }

      else
      {
        v34 = v60;
        sub_100005888(v8, v60, &qword_1000A5490, &qword_10008CD80);
        if (v33(&v8[v32], 1, v13) == 1)
        {
          (*v51)(v34, v13);
          v31 = v49;
          v12 = v50;
LABEL_14:
          sub_1000058F0(v8, &qword_1000A6D98, &qword_10008E500);
          goto LABEL_15;
        }

        v35 = v48;
        (*v47)(v48, &v8[v32], v13);
        sub_100075E6C(&qword_1000A6DA0, 255, &type metadata accessor for Date);
        v36 = sub_100085058();
        v37 = *v51;
        (*v51)(v35, v13);
        v37(v60, v13);
        sub_1000058F0(v8, &qword_1000A5490, &qword_10008CD80);
        v31 = v49;
        v12 = v50;
        if ((v36 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v38 = &v12[*(v52 + 20)];
      v39 = *v38 == v54 && *(v38 + 1) == v53;
      if (v39 || (sub_100085948() & 1) != 0)
      {
        sub_10007A7A0(v12, _s3TagVMa);
        sub_100085968();
        __break(1u);
        break;
      }

LABEL_15:
      sub_10007A7A0(v12, _s3TagVMa);
      a2 = (a2 + 1) & v55;
    }

    while (((*(v56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v40 = *v46;
  *(*v46 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10007A800(v62, *(v40 + 48) + *(v45 + 72) * a2, _s3TagVMa);
  v42 = *(v40 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v44;
  }

  return result;
}

uint64_t sub_100078580(uint64_t a1, unint64_t a2, char a3)
{
  v55 = a1;
  v6 = sub_1000847C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  v11 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v13 = &v42 - v12;
  v14 = type metadata accessor for MarkdownStyle(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v21 = &v42 - v20;
  v22 = *(*v3 + 16);
  v23 = *(*v3 + 24);
  v51 = v15;
  v52 = v3;
  if (v23 <= v22 || (a3 & 1) == 0)
  {
    v49 = v19;
    if (a3)
    {
      v43 = v18;
      sub_1000776E0(v22 + 1);
    }

    else
    {
      if (v23 > v22)
      {
        sub_100078DE0(type metadata accessor for MarkdownStyle, &qword_1000A5C78, &unk_10008B880, type metadata accessor for MarkdownStyle);
        goto LABEL_34;
      }

      v43 = v18;
      sub_100079620(v22 + 1);
    }

    v24 = *v3;
    v25 = *(*v3 + 40);
    sub_100085A08();
    sub_10002656C();
    v26 = sub_100085A38();
    v27 = -1 << *(v24 + 32);
    a2 = v26 & ~v27;
    v50 = v24 + 56;
    if ((*(v24 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v46 = v10;
      v53 = ~v27;
      v28 = *(v15 + 72);
      v29 = (v7 + 48);
      v48 = (v7 + 8);
      v44 = (v7 + 32);
      v45 = v28;
      v30 = v50;
      while (1)
      {
        sub_10007A738(*(v24 + 48) + v28 * a2, v21, type metadata accessor for MarkdownStyle);
        v31 = *(v54 + 48);
        sub_10007A738(v21, v13, type metadata accessor for MarkdownStyle);
        sub_10007A738(v55, &v13[v31], type metadata accessor for MarkdownStyle);
        v32 = *v29;
        v33 = (*v29)(v13, 6, v6);
        if (v33 > 2)
        {
          if (v33 > 4)
          {
            if (v33 == 5)
            {
              sub_10007A7A0(v21, type metadata accessor for MarkdownStyle);
              if (v32(&v13[v31], 6, v6) == 5)
              {
                goto LABEL_37;
              }
            }

            else
            {
              sub_10007A7A0(v21, type metadata accessor for MarkdownStyle);
              if (v32(&v13[v31], 6, v6) == 6)
              {
                goto LABEL_37;
              }
            }
          }

          else if (v33 == 3)
          {
            sub_10007A7A0(v21, type metadata accessor for MarkdownStyle);
            if (v32(&v13[v31], 6, v6) == 3)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_10007A7A0(v21, type metadata accessor for MarkdownStyle);
            if (v32(&v13[v31], 6, v6) == 4)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_29;
        }

        if (v33)
        {
          break;
        }

        v34 = v49;
        sub_10007A738(v13, v49, type metadata accessor for MarkdownStyle);
        if (v32(&v13[v31], 6, v6))
        {
          sub_10007A7A0(v21, type metadata accessor for MarkdownStyle);
          (*v48)(v34, v6);
          v30 = v50;
LABEL_29:
          sub_1000058F0(v13, &qword_1000A5C60, &qword_10008B870);
          goto LABEL_30;
        }

        v35 = v46;
        (*v44)(v46, &v13[v31], v6);
        v47 = sub_100084758();
        v36 = *v48;
        (*v48)(v35, v6);
        sub_10007A7A0(v21, type metadata accessor for MarkdownStyle);
        v36(v34, v6);
        v28 = v45;
        v30 = v50;
        if (v47)
        {
          goto LABEL_37;
        }

        sub_10007A7A0(v13, type metadata accessor for MarkdownStyle);
LABEL_30:
        a2 = (a2 + 1) & v53;
        if (((*(v30 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (v33 == 1)
      {
        sub_10007A7A0(v21, type metadata accessor for MarkdownStyle);
        if (v32(&v13[v31], 6, v6) == 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_10007A7A0(v21, type metadata accessor for MarkdownStyle);
        if (v32(&v13[v31], 6, v6) == 2)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_29;
    }
  }

LABEL_34:
  v37 = *v52;
  *(*v52 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10007A800(v55, *(v37 + 48) + *(v51 + 72) * a2, type metadata accessor for MarkdownStyle);
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
LABEL_37:
    sub_10007A7A0(v13, type metadata accessor for MarkdownStyle);
    result = sub_100085968();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v41;
  }

  return result;
}

Swift::Int sub_100078C34(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100077BD8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100078FE8();
      goto LABEL_16;
    }

    sub_100079AEC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100085A08();
  sub_100085118();
  result = sub_100085A38();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100085948();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100085968();
  __break(1u);
  return result;
}

void *sub_100078DE0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v30 - v12;
  sub_100005740(a2, a3);
  v14 = *v4;
  v15 = sub_1000855F8();
  v16 = v15;
  if (*(v14 + 16))
  {
    v31 = v8;
    result = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 56 + 8 * v18)
    {
      result = memmove(result, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v10 + 72) * (v26 | (v20 << 6));
        sub_10007A738(*(v14 + 48) + v29, v13, a4);
        result = sub_10007A800(v13, *(v16 + 48) + v29, a4);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v8 = v31;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v16;
  }

  return result;
}

void *sub_100078FE8()
{
  v1 = v0;
  sub_100005740(&qword_1000A7330, &unk_10008F7B0);
  v2 = *v0;
  v3 = sub_1000855F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100079144(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000848B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v47 - v10;
  v12 = _s3TagVMa();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  __chkstk_darwin(v12);
  v58 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v16 = *(*v2 + 24);
  }

  sub_100005740(&qword_1000A7310, &qword_10008F798);
  result = sub_100085608();
  v18 = result;
  if (*(v15 + 16))
  {
    v55 = v4;
    v48 = v2;
    v19 = 0;
    v20 = v15 + 56;
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 56);
    v24 = (v21 + 63) >> 6;
    v53 = (v5 + 48);
    v54 = v15;
    v49 = (v5 + 8);
    v50 = (v5 + 32);
    v25 = result + 56;
    v51 = v12;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = *(v15 + 48);
      v57 = *(v56 + 72);
      v31 = v58;
      sub_10007A738(v30 + v57 * (v27 | (v19 << 6)), v58, _s3TagVMa);
      v32 = *(v18 + 40);
      sub_100085A08();
      sub_100005888(v31, v11, &qword_1000A5490, &qword_10008CD80);
      v33 = v55;
      if ((*v53)(v11, 1, v55) == 1)
      {
        sub_100085A28(0);
      }

      else
      {
        v34 = v11;
        v35 = v52;
        (*v50)(v52, v34, v33);
        sub_100085A28(1u);
        sub_100075E6C(&qword_1000A6D90, 255, &type metadata accessor for Date);
        sub_100085028();
        v36 = v35;
        v11 = v34;
        v12 = v51;
        (*v49)(v36, v33);
      }

      v37 = (v58 + *(v12 + 20));
      v38 = *v37;
      v39 = v37[1];
      sub_100085118();
      result = sub_100085A38();
      v40 = -1 << *(v18 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      v15 = v54;
      if (((-1 << v41) & ~*(v25 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v25 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v25 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_10007A800(v58, *(v18 + 48) + v26 * v57, _s3TagVMa);
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v2 = v48;
        goto LABEL_31;
      }

      v29 = *(v20 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100079620(uint64_t a1)
{
  v2 = v1;
  v48 = sub_1000847C8();
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v48);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MarkdownStyle(0);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  sub_100005740(&qword_1000A5C78, &unk_10008B880);
  result = sub_100085608();
  v16 = result;
  if (*(v13 + 16))
  {
    v42 = v2;
    v17 = 0;
    v18 = v13 + 56;
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v44 = v13;
    v45 = (v4 + 48);
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v23 = result + 56;
    while (v21)
    {
      v29 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_20:
      v32 = *(v46 + 72);
      sub_10007A738(*(v13 + 48) + v32 * (v29 | (v17 << 6)), v12, type metadata accessor for MarkdownStyle);
      v33 = *(v16 + 40);
      sub_100085A08();
      v34 = v47;
      sub_10007A738(v12, v47, type metadata accessor for MarkdownStyle);
      v35 = (*v45)(v34, 6, v48);
      if (v35 <= 2)
      {
        if (v35)
        {
          if (v35 == 1)
          {
            sub_100085A18(0);
          }

          else
          {
            sub_100085A18(1uLL);
          }
        }

        else
        {
          v24 = v48;
          (*v41)(v43, v47, v48);
          sub_100085A18(6uLL);
          sub_100075E6C(&qword_1000A5C70, 255, &type metadata accessor for URL);
          sub_100085028();
          (*v40)(v43, v24);
        }
      }

      else if (v35 > 4)
      {
        if (v35 == 5)
        {
          sub_100085A18(4uLL);
        }

        else
        {
          sub_100085A18(5uLL);
        }
      }

      else if (v35 == 3)
      {
        sub_100085A18(2uLL);
      }

      else
      {
        sub_100085A18(3uLL);
      }

      result = sub_100085A38();
      v25 = -1 << *(v16 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v23 + 8 * (v26 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v25) >> 6;
        while (++v27 != v37 || (v36 & 1) == 0)
        {
          v38 = v27 == v37;
          if (v27 == v37)
          {
            v27 = 0;
          }

          v36 |= v38;
          v39 = *(v23 + 8 * v27);
          if (v39 != -1)
          {
            v28 = __clz(__rbit64(~v39)) + (v27 << 6);
            goto LABEL_12;
          }
        }

        goto LABEL_43;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v23 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_12:
      *(v23 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      result = sub_10007A800(v12, *(v16 + 48) + v28 * v32, type metadata accessor for MarkdownStyle);
      ++*(v16 + 16);
      v13 = v44;
    }

    v30 = v17;
    while (1)
    {
      v17 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v2 = v42;
        goto LABEL_41;
      }

      v31 = *(v18 + 8 * v17);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v21 = (v31 - 1) & v31;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {

LABEL_41:
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100079AEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100005740(&qword_1000A7330, &unk_10008F7B0);
  result = sub_100085608();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_100085A08();

      sub_100085118();
      result = sub_100085A38();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100079D24(uint64_t a1)
{
  v2 = _s3TagVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_100075E6C(&qword_1000A7308, 255, _s3TagVMa);
  result = sub_1000852A8();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_10007A738(v12, v7, _s3TagVMa);
      sub_10007626C(v9, v7);
      sub_10007A7A0(v9, _s3TagVMa);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_100079EB8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_100085138();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

void *sub_100079F54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005740(&qword_1000A72E0, &qword_10008F730);
    v3 = sub_100085618();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_100085098();
      sub_100085A08();
      v29 = v7;
      sub_100085118();
      v9 = sub_100085A38();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_100085098();
        v20 = v19;
        if (v18 == sub_100085098() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_100085948();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10007A148()
{
  result = qword_1000A72E8;
  if (!qword_1000A72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A72E8);
  }

  return result;
}

unint64_t sub_10007A230()
{
  result = qword_1000A7300;
  if (!qword_1000A7300)
  {
    sub_100008250(255, &qword_1000A56C8, NSManagedObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7300);
  }

  return result;
}

uint64_t sub_10007A298()
{
  v1 = *v0;
  sub_100075E6C(&qword_1000A72F0, 255, &type metadata accessor for ICModernObjectProvider);
  return sub_100084A68();
}

uint64_t sub_10007A340(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

__n128 sub_10007A3C4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10007A3D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10007A410(uint64_t a1)
{
  v2 = sub_1000847C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100005740(&qword_1000A7320, &qword_10008F7A8);
    v10 = sub_100085618();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_100075E6C(&qword_1000A5C70, 255, &type metadata accessor for URL);
      v18 = sub_100085018();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_100075E6C(&qword_1000A6460, 255, &type metadata accessor for URL);
          v25 = sub_100085058();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10007A738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007A7A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007A800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007A868(uint64_t a1)
{
  v2 = type metadata accessor for MarkdownStyle(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_100075E6C(&qword_1000A7328, 255, type metadata accessor for MarkdownStyle);
  result = sub_1000852A8();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_10007A738(v12, v7, type metadata accessor for MarkdownStyle);
      sub_1000769E4(v9, v7);
      sub_10007A7A0(v9, type metadata accessor for MarkdownStyle);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_10007A9FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000852A8();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10007708C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10007AAA8()
{
  result = qword_1000A7338;
  if (!qword_1000A7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7338);
  }

  return result;
}

Swift::Int sub_10007AB40()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

id sub_10007AC84(uint64_t a1, uint64_t (**a2)(void, void, void, void), void *a3)
{
  v176 = a3;
  v181 = a2;
  v183 = sub_100084918();
  v179 = *(v183 - 8);
  v4 = *(v179 + 64);
  __chkstk_darwin(v183);
  v178 = v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005740(&qword_1000A7368, &qword_10008F8B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v177 = v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v182 = v157 - v10;
  v11 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v169 = v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v174 = v157 - v16;
  v17 = __chkstk_darwin(v15);
  v168 = v157 - v18;
  v19 = __chkstk_darwin(v17);
  v172 = v157 - v20;
  v21 = __chkstk_darwin(v19);
  v167 = v157 - v22;
  v23 = __chkstk_darwin(v21);
  v173 = v157 - v24;
  v25 = __chkstk_darwin(v23);
  v166 = v157 - v26;
  v27 = __chkstk_darwin(v25);
  v171 = v157 - v28;
  v29 = __chkstk_darwin(v27);
  v175 = (v157 - v30);
  v31 = __chkstk_darwin(v29);
  v165 = v157 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = v157 - v34;
  __chkstk_darwin(v33);
  v164 = v157 - v36;
  v163 = sub_1000848B8();
  v180 = *(v163 - 8);
  v37 = *(v180 + 64);
  v38 = __chkstk_darwin(v163);
  v40 = v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v38);
  v43 = v157 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = v157 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = v157 - v48;
  __chkstk_darwin(v47);
  v51 = v157 - v50;
  ObjectType = swift_getObjectType();
  v53 = v3;
  v54 = v184;
  result = (v181)[4](*(v53 + 8), *(v53 + 16), v176, ObjectType);
  if (!v54)
  {
    v158 = v43;
    v159 = v46;
    v160 = v35;
    v162 = v40;
    v181 = result;
    v157[1] = 0;
    v184 = type metadata accessor for ICNoteArchiveModel();
    v56 = v164;
    sub_100005888(v3 + *(v184 + 40), v164, &qword_1000A5490, &qword_10008CD80);
    v57 = v180;
    v58 = *(v180 + 48);
    v59 = v163;
    v60 = v58(v56, 1, v163);
    v161 = v53;
    v170 = v58;
    if (v60 == 1)
    {
      sub_1000848A8();
      v61 = v58(v56, 1, v59);
      v62 = v181;
      v63 = v176;
      if (v61 != 1)
      {
        sub_1000058F0(v56, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      (*(v57 + 32))(v49, v56, v59);
      v62 = v181;
      v63 = v176;
    }

    v64 = v63[1];
    sub_100084858();
    v65 = v180;
    v66 = *(v180 + 8);
    v66(v49, v59);
    isa = sub_100084848().super.isa;
    v176 = v66;
    v66(v51, v59);
    v68 = v62;
    [v62 setCreationDate:isa];

    v69 = v161;
    v70 = v160;
    sub_100005888(v161 + *(v184 + 44), v160, &qword_1000A5490, &qword_10008CD80);
    v71 = v170;
    if (v170(v70, 1, v59) == 1)
    {
      v72 = v158;
      sub_1000848A8();
      if (v71(v70, 1, v59) != 1)
      {
        sub_1000058F0(v70, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      v72 = v158;
      (*(v65 + 32))(v158, v70, v59);
    }

    v73 = v159;
    sub_100084858();
    v74 = v176;
    (v176)(v72, v59);
    v75 = sub_100084848().super.isa;
    v74(v73, v59);
    v76 = v68;
    [v68 setModificationDate:v75];

    v77 = (v69 + *(v184 + 48));
    if (v77[1])
    {
      v78 = *v77;
      v79 = sub_100085068();
    }

    else
    {
      v79 = 0;
    }

    [v68 setTitle:v79];

    v80 = v184;
    [v68 setIsPinned:*(v69 + *(v184 + 52)) & 1];
    [v68 setIsSystemPaper:*(v69 + v80[14]) & 1];
    [v68 setPaperStyleType:word_100095804[*(v69 + v80[15])]];
    v81 = *(v69 + v80[16]);
    if (v81)
    {
      v82 = 2;
    }

    else
    {
      v82 = 1;
    }

    if (v81 == 2)
    {
      v83 = 0;
    }

    else
    {
      v83 = v82;
    }

    [v68 setPreferredBackgroundType:v83];
    v84 = *(v69 + v80[17]);
    v85 = v165;
    if (v84 > 1)
    {
      if (v84 == 2)
      {
        v86 = 2;
      }

      else
      {
        v86 = [v68 attachmentViewType];
      }
    }

    else
    {
      v86 = v84 != 0;
    }

    [v68 setAttachmentViewType:v86];
    v87 = (v69 + *(v184 + 72));
    if (v87[1])
    {
      v88 = *v87;
      v89 = sub_100085068();
    }

    else
    {
      v89 = 0;
    }

    [v68 setHostApplicationIdentifier:v89];

    v90 = v175;
    sub_100005888(v69 + *(v184 + 76), v175, &qword_1000A5490, &qword_10008CD80);
    v91 = 1;
    if (v71(v90, 1, v59) != 1)
    {
      v92 = v162;
      (*(v180 + 32))(v162, v90, v59);
      sub_100084858();
      (v176)(v92, v59);
      v91 = 0;
    }

    v175 = *(v180 + 56);
    (v175)(v85, v91, 1, v59);
    if (v71(v85, 1, v59) == 1)
    {
      v93 = 0;
    }

    else
    {
      v93 = sub_100084848().super.isa;
      (v176)(v85, v59);
    }

    [v76 setLastOpenedDate:v93];

    v94 = v166;
    sub_100005888(v69 + *(v184 + 80), v166, &qword_1000A5490, &qword_10008CD80);
    v95 = 1;
    if (v71(v94, 1, v59) != 1)
    {
      v96 = v162;
      (*(v180 + 32))(v162, v94, v59);
      sub_100084858();
      (v176)(v96, v59);
      v95 = 0;
    }

    v97 = v171;
    (v175)(v171, v95, 1, v59);
    if (v71(v97, 1, v59) == 1)
    {
      v98 = 0;
    }

    else
    {
      v98 = sub_100084848().super.isa;
      (v176)(v97, v59);
    }

    [v76 setLastActivitySummaryViewedDate:v98];

    v99 = v167;
    sub_100005888(v69 + *(v184 + 84), v167, &qword_1000A5490, &qword_10008CD80);
    if (v71(v99, 1, v59) != 1)
    {
      v100 = v162;
      (*(v180 + 32))(v162, v99, v59);
      sub_100084858();
      (v176)(v100, v59);
    }

    v101 = v173;
    (v175)();
    if (v71(v101, 1, v59) == 1)
    {
      v102 = 0;
    }

    else
    {
      v103 = v101;
      v102 = sub_100084848().super.isa;
      (v176)(v103, v59);
    }

    [v76 setLastActivityRecentUpdatesViewedDate:v102];

    v104 = v168;
    sub_100005888(v69 + *(v184 + 88), v168, &qword_1000A5490, &qword_10008CD80);
    v105 = 1;
    if (v170(v104, 1, v59) != 1)
    {
      v106 = v162;
      (*(v180 + 32))(v162, v104, v59);
      sub_100084858();
      (v176)(v106, v59);
      v105 = 0;
    }

    v107 = v172;
    (v175)(v172, v105, 1, v59);
    v108 = v170;
    if (v170(v107, 1, v59) == 1)
    {
      v109 = 0;
    }

    else
    {
      v109 = sub_100084848().super.isa;
      (v176)(v107, v59);
    }

    [v76 setRecentUpdatesGenerationDate:v109];

    v110 = v169;
    sub_100005888(v69 + *(v184 + 92), v169, &qword_1000A5490, &qword_10008CD80);
    v111 = 1;
    if (v108(v110, 1, v59) != 1)
    {
      v112 = v162;
      (*(v180 + 32))(v162, v110, v59);
      sub_100084858();
      (v176)(v112, v59);
      v111 = 0;
    }

    v113 = v174;
    (v175)(v174, v111, 1, v59);
    if (v108(v113, 1, v59) == 1)
    {
      v114 = 0;
    }

    else
    {
      v114 = sub_100084848().super.isa;
      (v176)(v113, v59);
    }

    v115 = v183;
    v116 = v177;
    v117 = v179;
    [v76 setLastAttributionsViewedDate:v114];

    v118 = *(v69 + *(v184 + 104));
    if (v118)
    {
      v119 = objc_allocWithZone(ICOutlineState);
      sub_100082430(&qword_1000A6418, &type metadata accessor for UUID);
      v120 = sub_100085288().super.isa;
      v121 = [v119 initWithCollapsedUUIDs:v120];

      v118 = [v121 data];
      if (v118)
      {
        v122 = sub_100084808();
        v124 = v123;

        v118 = sub_1000847F8().super.isa;
        sub_10000650C(v122, v124);
      }
    }

    [v76 setOutlineStateData:v118];

    v125 = *(v184 + 112);
    if (*(v69 + v125))
    {
      v126 = *(v69 + v125);
    }

    else
    {
      v126 = sub_10003E868(_swiftEmptyArrayStorage);
    }

    v176 = v126;
    v128 = (v126 + 64);
    v127 = *(v126 + 64);
    v174 = v128;
    v129 = 1 << *(v128 - 32);
    v130 = -1;
    if (v129 < 64)
    {
      v130 = ~(-1 << v129);
    }

    v131 = v130 & v127;
    v173 = ((v129 + 63) >> 6);
    v175 = (v117 + 16);
    v184 = v117 + 32;
    v180 = v117 + 8;

    v132 = 0;
    v133 = v178;
    if (v131)
    {
      while (1)
      {
        v134 = v132;
LABEL_69:
        v137 = __clz(__rbit64(v131));
        v131 &= v131 - 1;
        v138 = v137 | (v134 << 6);
        v139 = v176;
        v141 = v178;
        v140 = v179;
        (*(v179 + 16))(v178, v176[6] + *(v179 + 72) * v138, v115);
        v142 = (v139[7] + 16 * v138);
        v144 = *v142;
        v143 = v142[1];
        v145 = sub_100005740(&qword_1000A7370, &qword_10008F8B8);
        v146 = v115;
        v147 = &v177[*(v145 + 48)];
        v148 = *(v140 + 32);
        v133 = v141;
        v116 = v177;
        v148(v177, v133, v146);
        *v147 = v144;
        *(v147 + 1) = v143;
        (*(*(v145 - 8) + 56))(v116, 0, 1, v145);

        v136 = v134;
LABEL_70:
        v149 = v182;
        sub_100081938(v116, v182, &qword_1000A7368, &qword_10008F8B0);
        v150 = sub_100005740(&qword_1000A7370, &qword_10008F8B8);
        if ((*(*(v150 - 8) + 48))(v149, 1, v150) == 1)
        {
          break;
        }

        v151 = (v149 + *(v150 + 48));
        v152 = *v151;
        v153 = v151[1];
        v115 = v183;
        (*v184)(v133, v149, v183);
        v154 = sub_100085068();

        v155 = sub_1000848E8().super.isa;
        [v181 addUserID:v154 forReplicaID:v155];

        result = (*v180)(v133, v115);
        v132 = v136;
        if (!v131)
        {
          goto LABEL_62;
        }
      }

      return v181;
    }

    else
    {
LABEL_62:
      if (v173 <= v132 + 1)
      {
        v135 = (v132 + 1);
      }

      else
      {
        v135 = v173;
      }

      v136 = v135 - 1;
      while (1)
      {
        v134 = v132 + 1;
        if (__OFADD__(v132, 1))
        {
          break;
        }

        if (v134 >= v173)
        {
          v156 = sub_100005740(&qword_1000A7370, &qword_10008F8B8);
          (*(*(v156 - 8) + 56))(v116, 1, 1, v156);
          v131 = 0;
          goto LABEL_70;
        }

        v131 = *&v174[8 * v134];
        ++v132;
        if (v131)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
    }
  }

  return result;
}

id sub_10007BF04(id a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ICNoteArchiveModel();
  v9 = (v3 + *(v8 + 100));
  v10 = v9[1];
  if (!v10)
  {
    v12 = (v3 + *(v8 + 96));
    v13 = v12[5];
    v50 = v12[4];
    v51 = v13;
    v14 = *(v12 + 12);
    v52 = v14;
    v15 = v12[1];
    aBlock = *v12;
    v47 = v15;
    v16 = v12[3];
    v48 = v12[2];
    v49 = v16;
    if (!v51)
    {
      return 0;
    }

    v17 = v12[3];
    v55 = v12[2];
    v56 = v17;
    v18 = v12[5];
    v57 = v12[4];
    v19 = v12[1];
    v53 = *v12;
    v54 = v19;
    v58 = v51;
    v59 = v14;
    v44[4] = v57;
    v44[5] = v18;
    v45 = *(v12 + 12);
    v44[0] = v53;
    v44[1] = v19;
    v44[2] = v55;
    v44[3] = v17;
    sub_100060CC0(v44, v43);
    sub_10005FADC(a1);
    v20 = [a1 noteData];
    if (v20)
    {
      v21 = v20;
      isa = sub_1000847F8().super.isa;
      [v21 setData:isa];
    }

    a1 = [a1 noteData];
    sub_1000058F0(&aBlock, &qword_1000A7360, &qword_10008F8A8);
    return a1;
  }

  v11 = sub_10001FFC0(a2, a1, &off_10009E9E8, a3, *v9, v10, v9[2]);
  if (v4)
  {
    return a1;
  }

  v60 = v11;
  result = [a1 textStorage];
  if (result)
  {
    v24 = result;
    [result beginSkippingTimestampUpdates];
    v25 = [v24 mergeableString];
    v26 = v24;
    v27 = [v26 ic_range];
    v29 = v28;
    v30 = [objc_allocWithZone(NSAttributedString) init];
    [v25 replaceCharactersInRange:v27 withAttributedString:{v29, v30}];

    v31 = [v26 mergeableString];
    v32.super.isa = v60;
    sub_100085498(v32, 0);

    v33 = [v26 mergeableString];
    v42 = [v26 ic_range];
    v35 = v34;

    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_100081908;
    *(v37 + 24) = v36;
    *&v48 = sub_10007623C;
    *(&v48 + 1) = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v47 = sub_1000744D0;
    *(&v47 + 1) = &unk_1000A1670;
    v38 = _Block_copy(&aBlock);
    v39 = a1;

    [v33 enumerateEditsInRange:v42 usingBlock:{v35, v38}];

    _Block_release(v38);
    LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

    if ((v38 & 1) == 0)
    {
      [v26 endSkippingTimestampUpdates];
      v40 = [v39 noteData];
      if (v40)
      {
        v41 = v40;
        [v40 setNeedsToBeSaved:1];
      }

      a1 = [v39 noteData];

      return a1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C34C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A5498, &qword_10008AA30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v46 = v39 - v7;
  v8 = sub_100005740(&qword_1000A54A0, &qword_10008AA38);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v39 - v10;
  v12 = sub_100084C78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v43 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _s8ActivityVMa();
  v16 = *(v42 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v42);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + *(type metadata accessor for ICNoteArchiveModel() + 108));
  if (!v20)
  {
    return 0;
  }

  v39[1] = a1;
  v39[2] = v2;
  v53 = _swiftEmptyArrayStorage;
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v23 = *(v16 + 72);
    v44 = (v13 + 48);
    v45 = v23;
    v40 = (v13 + 8);
    v41 = (v13 + 32);
    v47 = v19;
    while (1)
    {
      sub_100082534(v22, v19, _s8ActivityVMa);
      IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v32 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v48[0] = IsAlexandriaDemoModeEnabled;
      v48[1] = v32;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      v52 = 2;
      sub_100002CD4(v48, v11);
      if ((*v44)(v11, 1, v12) == 1)
      {
        break;
      }

      v33 = v43;
      (*v41)(v43, v11, v12);
      sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
      v34 = v46;
      sub_1000034D0(v48, v46);
      v35 = sub_100085418();
      v36 = v34;
      v19 = v47;
      sub_1000058F0(v36, &qword_1000A5498, &qword_10008AA30);
      (*v40)(v33, v12);
      sub_10008259C(v19, _s8ActivityVMa);
      if (v35)
      {
        goto LABEL_5;
      }

LABEL_8:
      v22 += v45;
      if (!--v21)
      {
        goto LABEL_12;
      }
    }

    sub_1000058F0(v11, &qword_1000A54A0, &qword_10008AA38);
    sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
    v24 = &v19[*(v42 + 44)];
    v25 = v12;
    v27 = *v24;
    v26 = *(v24 + 1);
    v28 = v11;
    v29 = v46;
    sub_1000034D0(v48, v46);
    v12 = v25;
    v19 = v47;
    sub_100085428();
    v30 = v29;
    v11 = v28;
    sub_1000058F0(v30, &qword_1000A5498, &qword_10008AA30);
    sub_10008259C(v19, _s8ActivityVMa);
LABEL_5:
    sub_1000851F8();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v37 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100085228();
    }

    sub_100085258();
    goto LABEL_8;
  }

LABEL_12:
  sub_100085448();
  return sub_100085438();
}

void sub_10007C7F8(id a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v271 = a2;
  v5 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v274 = &v256 - v7;
  v8 = sub_100005740(&qword_1000A7358, &qword_10008F888);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v279 = &v256 - v10;
  v288 = sub_100005740(&qword_1000A5A28, &unk_10008F890);
  v267 = *(v288 - 8);
  v11 = *(v267 + 64);
  __chkstk_darwin(v288);
  v273 = &v256 - v12;
  v285 = sub_100084918();
  v260 = *(v285 - 8);
  v13 = *(v260 + 64);
  v14 = __chkstk_darwin(v285);
  v272 = &v256 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v286 = &v256 - v17;
  __chkstk_darwin(v16);
  v259 = &v256 - v18;
  v19 = _s8ActivityVMa();
  v287 = *(v19 - 8);
  v20 = *(v287 + 64);
  __chkstk_darwin(v19 - 8);
  v262 = &v256 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v281 = (&v256 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v24);
  v280 = (&v256 - v27);
  v28 = __chkstk_darwin(v26);
  v277 = &v256 - v29;
  v30 = __chkstk_darwin(v28);
  v269 = (&v256 - v31);
  v32 = __chkstk_darwin(v30);
  v283 = (&v256 - v33);
  v34 = __chkstk_darwin(v32);
  v36 = &v256 - v35;
  __chkstk_darwin(v34);
  v38 = &v256 - v37;
  *a3 = 3;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 514;
  v39 = type metadata accessor for ICNoteArchiveModel();
  v40 = v39[10];
  v41 = sub_1000848B8();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v44 = v42 + 56;
  v43(a3 + v40, 1, 1, v41);
  v284 = v39[11];
  v43(a3 + v284, 1, 1, v41);
  v45 = (a3 + v39[12]);
  *v45 = 0;
  v45[1] = 0;
  v263 = v45;
  v265 = v39[19];
  v43(a3 + v265, 1, 1, v41);
  v266 = v39[20];
  v43(a3 + v266, 1, 1, v41);
  v268 = v39[21];
  v43(a3 + v268, 1, 1, v41);
  v270 = v39[22];
  v43(v270 + a3, 1, 1, v41);
  v276 = v39[23];
  v43(&v276[a3], 1, 1, v41);
  v46 = a3 + v39[24];
  *(v46 + 96) = 0;
  *(v46 + 64) = 0u;
  *(v46 + 80) = 0u;
  *(v46 + 32) = 0u;
  *(v46 + 48) = 0u;
  *v46 = 0u;
  *(v46 + 16) = 0u;
  v256 = v46;
  v47 = (a3 + v39[25]);
  *v47 = 0;
  v47[1] = 0;
  v261 = v47;
  v47[2] = 0;
  v264 = v39[26];
  *(v264 + a3) = 0;
  v258 = v39[27];
  *(a3 + v258) = 0;
  v48 = v39[28];
  v275 = a3;
  v257 = v48;
  *(a3 + v48) = 0;
  v49 = [a1 identifier];
  v278 = a1;
  if (v49)
  {
    v50 = v49;
    v51 = sub_100085098();
    v53 = v52;

    a1 = v278;
  }

  else
  {
    v51 = 0;
    v53 = 0xE000000000000000;
  }

  v54 = v275;
  *(v275 + 1) = v51;
  *(v54 + 2) = v53;
  v55 = [a1 creationDate];
  if (v55)
  {
    v56 = v55;
    sub_100084888();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = 1;
  v43(v38, v57, 1, v41);
  sub_100040A94(v38, &v275[v40]);
  v59 = [a1 modificationDate];
  if (v59)
  {
    v60 = v59;
    sub_100084888();

    v58 = 0;
  }

  v43(v36, v58, 1, v41);
  v61 = v39[13];
  v62 = v39[14];
  v64 = v39[15];
  v63 = v39[16];
  v282 = v39[17];
  v65 = v275;
  sub_100040A94(v36, &v275[v284]);
  v66 = v278;
  v65[v61] = [v278 isPinned];
  v65[v62] = [v66 isSystemPaper];
  v67 = v66;
  v68 = [v66 paperStyleType];
  if (v68 < 0)
  {
    goto LABEL_150;
  }

  v64[v65] = sub_100081224(v68);
  v65[v63] = sub_100081328([v66 preferredBackgroundType]);
  v69 = sub_1000810EC([v66 attachmentViewType]);
  v65[v282] = v69;
  v70 = [v66 hostApplicationIdentifier];
  if (v70)
  {
    v71 = v70;
    v72 = sub_100085098();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0;
  }

  v61 = v279;
  v75 = v283;
  v64 = v275;
  v76 = &v275[v39[18]];
  *v76 = v72;
  v76[1] = v74;
  if (*(v271 + 58) & 1) != 0 || (*(v271 + 59))
  {
    v77 = [v67 lastOpenedDate];
    if (v77)
    {
      v78 = v77;
      sub_100084888();

      v79 = 0;
    }

    else
    {
      v79 = 1;
    }

    v80 = v281;
    v81 = v280;
    v43(v75, v79, 1, v41);
    sub_100040A94(v75, &v64[v265]);
    v82 = [v67 lastActivitySummaryViewedDate];
    if (v82)
    {
      v83 = v269;
      v84 = v82;
      sub_100084888();

      v85 = v83;
    }

    else
    {
      v85 = v269;
    }

    v86 = v85;
    (v43)();
    sub_100040A94(v86, &v64[v266]);
    v87 = [v67 lastActivityRecentUpdatesViewedDate];
    if (v87)
    {
      v88 = v277;
      v89 = v87;
      sub_100084888();

      v90 = v88;
    }

    else
    {
      v90 = v277;
    }

    v91 = 1;
    v92 = v90;
    (v43)();
    sub_100040A94(v92, &v64[v268]);
    v93 = [v67 recentUpdatesGenerationDate];
    if (v93)
    {
      v94 = v93;
      sub_100084888();

      v91 = 0;
    }

    v95 = 1;
    v43(v81, v91, 1, v41);
    sub_100040A94(v81, v270 + v64);
    v96 = [v67 lastAttributionsViewedDate];
    if (v96)
    {
      v97 = v96;
      sub_100084888();

      v95 = 0;
    }

    v98 = v276;
    v43(v80, v95, 1, v41);
    sub_100040A94(v80, &v98[v64]);
  }

  v43 = v271;
  if (*(v271 + 60))
  {
    v99 = v67;
    if ([v99 isPasswordProtectedAndLocked])
    {

      sub_100030518(v43);
      if (qword_1000A5470 != -1)
      {
        swift_once();
      }

      v100 = sub_100084FB8();
      sub_10000B614(v100, qword_1000A7340);
      v101 = v99;
      v102 = sub_100084FA8();
      v103 = sub_100085378();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&v291[0] = v105;
        *v104 = 136315138;
        v106 = [v101 identifier];
        if (v106)
        {
          v107 = v106;
          v108 = sub_100085098();
          v110 = v109;
        }

        else
        {
          v108 = 9732322;
          v110 = 0xA300000000000000;
        }

        v154 = sub_100038A4C(v108, v110, v291);

        *(v104 + 4) = v154;
        v155 = "Pages Handoff: Note is locked — skipping {identifier: %s}";
LABEL_147:
        _os_log_impl(&_mh_execute_header, v102, v103, v155, v104, 0xCu);
        sub_100006304(v105);

        return;
      }

      goto LABEL_48;
    }

    v118 = [v99 textStorage];
    if (v118)
    {
      v119 = v118;
      v120 = [v118 mergeableString];
      sub_100011A6C(v43, v291);
      v121 = v120;
      v122 = v99;
LABEL_53:
      v143 = sub_10002FF98(v121, v122, v43);
      v145 = v144;
      v147 = v146;

      v266 = 0;
      v148 = v261;
      *v261 = v143;
      v148[1] = v145;
      v148[2] = v147;
      goto LABEL_73;
    }

    v149 = v64;

    if (qword_1000A5470 != -1)
    {
      swift_once();
    }

    v150 = sub_100084FB8();
    sub_10000B614(v150, qword_1000A7340);
    v151 = v99;
    v152 = sub_100084FA8();
    v153 = sub_100085378();

    if (os_log_type_enabled(v152, v153))
    {
      goto LABEL_68;
    }

    goto LABEL_72;
  }

  if (*v271)
  {
    v111 = v67;
    if ([v111 isPasswordProtectedAndLocked])
    {

      sub_100030518(v43);
      if (qword_1000A5470 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_154;
    }

    v130 = [v111 textStorage];
    if (v130)
    {
      v131 = v130;
      v132 = [v130 mergeableString];
      sub_100011A6C(v43, v291);
      v133 = sub_1000308DC(v132, v111, v43);
      v134 = v64;
      v136 = v135;
      v138 = v137;
      sub_100030518(v43);

      v266 = 0;
      v139 = v261;
      *v261 = v133;
      v139[1] = v136;
      v64 = v134;
      v139[2] = v138;
LABEL_73:
      v166 = v264;
      goto LABEL_74;
    }

    v149 = v64;

    if (qword_1000A5470 != -1)
    {
      swift_once();
    }

    v156 = sub_100084FB8();
    sub_10000B614(v156, qword_1000A7340);
    v151 = v111;
    v152 = sub_100084FA8();
    v153 = sub_100085378();

    if (os_log_type_enabled(v152, v153))
    {
LABEL_68:
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v291[0] = v159;
      *v158 = 136315138;
      v160 = [v151 identifier];
      if (v160)
      {
        v161 = v160;
        v162 = sub_100085098();
        v164 = v163;

        v61 = v279;
      }

      else
      {
        v162 = 9732322;
        v164 = 0xA300000000000000;
      }

      v165 = sub_100038A4C(v162, v164, v291);

      *(v158 + 4) = v165;
      _os_log_impl(&_mh_execute_header, v152, v153, "Note doesn't have a text storage — skipping {identifier: %s}", v158, 0xCu);
      sub_100006304(v159);
    }

LABEL_72:

    v266 = 0;
    v64 = v149;
    goto LABEL_73;
  }

  if (![v67 isPasswordProtected])
  {
    v140 = [v67 textStorage];
    if (v140)
    {
      v119 = v140;
      v141 = [v140 mergeableString];
      v142 = v67;
      sub_100011A6C(v43, v291);
      v121 = v141;
      v122 = v142;
      goto LABEL_53;
    }

    v149 = v64;
    if (qword_1000A5470 != -1)
    {
      swift_once();
    }

    v157 = sub_100084FB8();
    sub_10000B614(v157, qword_1000A7340);
    v151 = v67;
    v152 = sub_100084FA8();
    v153 = sub_100085378();

    if (os_log_type_enabled(v152, v153))
    {
      goto LABEL_68;
    }

    goto LABEL_72;
  }

  v123 = [v67 noteData];
  if (v123)
  {
    v124 = v123;
    v125 = [v123 data];

    v126 = v256;
    if (v125)
    {
      v127 = sub_100084808();
      v129 = v128;
    }

    else
    {
      v127 = 0;
      v129 = 0xC000000000000000;
    }
  }

  else
  {
    v127 = 0;
    v129 = 0xC000000000000000;
    v126 = v256;
  }

  v241 = v67;
  sub_100060110(v241, v127, v129, v289);

  v242 = *(v126 + 80);
  v291[4] = *(v126 + 64);
  v291[5] = v242;
  v292 = *(v126 + 96);
  v243 = *(v126 + 16);
  v291[0] = *v126;
  v291[1] = v243;
  v244 = *(v126 + 48);
  v291[2] = *(v126 + 32);
  v291[3] = v244;
  sub_1000058F0(v291, &qword_1000A7360, &qword_10008F8A8);
  v245 = v289[5];
  *(v126 + 64) = v289[4];
  *(v126 + 80) = v245;
  *(v126 + 96) = v290;
  v246 = v289[1];
  *v126 = v289[0];
  *(v126 + 16) = v246;
  v247 = v289[3];
  *(v126 + 32) = v289[2];
  *(v126 + 48) = v247;
  v248 = [v241 title];
  if (v248)
  {
    v249 = v248;
    v250 = sub_100085098();
    v252 = v251;

    v253 = v252;
  }

  else
  {
    v250 = 0;
    v253 = 0;
  }

  v166 = v264;
  v254 = v263;
  *v263 = v250;
  v254[1] = v253;
  v266 = v253;
LABEL_74:
  v167 = [v67 outlineState];
  v168 = [v167 collapsedUUIDs];

  sub_100082430(&qword_1000A6418, &type metadata accessor for UUID);
  v169 = sub_100085298();

  *&v166[v64] = v169;
  if (*(v43 + 56))
  {
    v170 = v67;
    v44 = sub_100085438();

    if (v44 >> 62)
    {
      goto LABEL_151;
    }

    v171 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_77:
    v172 = v262;
    if (v171)
    {
      *&v291[0] = _swiftEmptyArrayStorage;
      v111 = v291;
      sub_10003BD68(0, v171 & ~(v171 >> 63), 0);
      if ((v171 & 0x8000000000000000) == 0)
      {
        v173 = 0;
        v174 = *&v291[0];
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v175 = sub_100085648();
          }

          else
          {
            v175 = *(v44 + 8 * v173 + 32);
          }

          sub_100001B78(v175, v172);
          *&v291[0] = v174;
          v177 = *(v174 + 16);
          v176 = *(v174 + 24);
          if (v177 >= v176 >> 1)
          {
            sub_10003BD68(v176 > 1, v177 + 1, 1);
            v174 = *&v291[0];
          }

          ++v173;
          *(v174 + 16) = v177 + 1;
          sub_100066400(v172, v174 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v177);
        }

        while (v171 != v173);

        v64 = v275;
        *&v275[v258] = v174;
        v43 = v271;
        if (*(v271 + 57))
        {
          goto LABEL_90;
        }

LABEL_94:
        sub_100030518(v43);
        if ((*(v43 + 59) & 1) == 0)
        {
LABEL_139:

          return;
        }

        goto LABEL_95;
      }

      __break(1u);
LABEL_154:
      swift_once();
LABEL_39:
      v112 = sub_100084FB8();
      sub_10000B614(v112, qword_1000A7340);
      v101 = v111;
      v102 = sub_100084FA8();
      v103 = sub_100085378();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&v291[0] = v105;
        *v104 = 136315138;
        v113 = [v101 identifier];
        if (v113)
        {
          v114 = v113;
          v115 = sub_100085098();
          v117 = v116;
        }

        else
        {
          v115 = 9732322;
          v117 = 0xA300000000000000;
        }

        v255 = sub_100038A4C(v115, v117, v291);

        *(v104 + 4) = v255;
        v155 = "Markdown export: Note is locked — skipping {identifier: %s}";
        goto LABEL_147;
      }

LABEL_48:

      return;
    }

    *&v64[v258] = _swiftEmptyArrayStorage;
    if ((*(v43 + 57) & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  else if ((*(v43 + 57) & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_90:
  v265 = 0;
  v178 = v260;
  v179 = v260;
  v180 = [v67 replicaIDToUserIDDictData];
  if (v180)
  {
    v181 = v180;
    v182 = sub_100084808();
    v184 = v183;

    v185 = v259;
    sub_100084908();
    if (v184 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_1000847F8().super.isa;
      sub_10001C19C(v182, v184);
    }
  }

  else
  {
    v185 = v259;
    sub_100084908();
    isa = 0;
  }

  v206 = objc_allocWithZone(ICMergeableDictionary);
  v207 = sub_1000848E8().super.isa;
  v208 = [v206 initWithData:isa replicaID:v207];

  v209 = *(v179 + 8);
  v64 = (v179 + 8);
  v210 = v285;
  v277 = v64;
  v276 = v209;
  (v209)(v185, v285);
  v264 = v208;
  v211 = [v208 allKeys];
  sub_100008250(0, &qword_1000A64F8, NSString_ptr);
  v212 = sub_100085208();

  if (v212 >> 62)
  {
    v213 = sub_100085718();
  }

  else
  {
    v213 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v274;
  if (v213)
  {
    v214 = 0;
    v287 = v212 & 0xC000000000000001;
    v284 = v212 & 0xFFFFFFFFFFFFFF8;
    v281 = (v178 + 48);
    v270 = (v178 + 32);
    v283 = (v267 + 56);
    v43 = _swiftEmptyArrayStorage;
    v269 = (v267 + 48);
    v268 = v212;
    v282 = v213;
    while (1)
    {
      if (v287)
      {
        v215 = sub_100085648();
      }

      else
      {
        if (v214 >= *(v284 + 16))
        {
          goto LABEL_149;
        }

        v215 = *(v212 + 8 * v214 + 32);
      }

      v64 = v215;
      v216 = v214 + 1;
      if (__OFADD__(v214, 1))
      {
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        v171 = sub_100085718();
        goto LABEL_77;
      }

      sub_100085098();
      sub_1000848C8();

      if ((*v281)(v44, 1, v210) == 1)
      {

        sub_1000058F0(v44, &qword_1000A5C20, &unk_10008B840);
        (*v283)(v61, 1, 1, v288);
        goto LABEL_113;
      }

      v280 = v43;
      v217 = *v270;
      (*v270)(v286, v44, v210);
      v218 = v210;
      v219 = sub_1000848E8().super.isa;
      v220 = [v67 userIDForReplicaID:v219];

      v221 = sub_100085098();
      v223 = v222;

      v224 = [objc_opt_self() CR_unknown];
      v225 = v272;
      sub_1000848F8();

      v226 = sub_1000848D8();
      v228 = v227;
      (v276)(v225, v218);
      if (v221 == v226 && v223 == v228)
      {
        break;
      }

      v229 = sub_100085948();

      if (v229)
      {
        goto LABEL_124;
      }

      v231 = &v279[*(v288 + 48)];
      v232 = v285;
      v217();
      v230 = 0;
      *v231 = v221;
      v231[1] = v223;
      v210 = v232;
LABEL_126:
      v212 = v268;
      v61 = v279;
      v233 = v288;
      (*v283)(v279, v230, 1, v288);
      v234 = (*v269)(v61, 1, v233);
      v67 = v278;
      v44 = v274;
      v43 = v280;
      if (v234 != 1)
      {
        sub_100081938(v61, v273, &qword_1000A5A28, &unk_10008F890);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_10000EFF0(0, *(v43 + 2) + 1, 1, v43);
        }

        v236 = *(v43 + 2);
        v235 = *(v43 + 3);
        if (v236 >= v235 >> 1)
        {
          v43 = sub_10000EFF0(v235 > 1, v236 + 1, 1, v43);
        }

        *(v43 + 2) = v236 + 1;
        sub_100081938(v273, v43 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v236, &qword_1000A5A28, &unk_10008F890);
        v210 = v285;
        goto LABEL_114;
      }

LABEL_113:
      sub_1000058F0(v61, &qword_1000A7358, &qword_10008F888);
LABEL_114:
      ++v214;
      if (v216 == v282)
      {
        goto LABEL_134;
      }
    }

LABEL_124:
    v210 = v285;
    (v276)(v286, v285);

    v230 = 1;
    goto LABEL_126;
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_134:

  v237 = v43;
  if (*(v43 + 2))
  {
    sub_100005740(&qword_1000A5C80, &qword_10008F8A0);
    v238 = sub_100085748();
  }

  else
  {
    v238 = &_swiftEmptyDictionarySingleton;
  }

  v64 = v275;
  v239 = v271;
  v240 = v265;
  *&v291[0] = v238;
  sub_100081428(v237, 1, v291);
  if (v240)
  {

    __break(1u);
    return;
  }

  sub_100030518(v239);
  *&v64[v257] = *&v291[0];
  if ((*(v239 + 59) & 1) == 0)
  {
    goto LABEL_139;
  }

LABEL_95:
  v187 = [v67 folder];
  if (v187 && (v188 = v187, v189 = [v187 identifier], v188, v189))
  {
    v190 = sub_100085098();
    v192 = v191;
  }

  else
  {
    v190 = 0;
    v192 = 0;
  }

  *(v64 + 3) = v190;
  *(v64 + 4) = v192;
  v193 = [v67 folder];
  if (v193)
  {
    v194 = v193;
    v195 = [v193 title];

    v196 = sub_100085098();
    v198 = v197;
  }

  else
  {
    v196 = 0;
    v198 = 0;
  }

  *(v64 + 5) = v196;
  *(v64 + 6) = v198;
  v199 = [v67 title];
  if (v199)
  {
    v200 = v199;
    v201 = sub_100085098();
    v203 = v202;
  }

  else
  {

    v201 = 0;
    v203 = 0;
  }

  v204 = v263;
  *v263 = v201;
  v204[1] = v203;
  v64[56] = [v67 markedForDeletion];
  v205 = [v67 isPasswordProtected];

  v64[57] = v205;
}