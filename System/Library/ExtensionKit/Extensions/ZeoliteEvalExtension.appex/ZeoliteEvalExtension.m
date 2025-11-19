uint64_t sub_100001758(uint64_t a1)
{
  v2 = sub_100001B40(&qword_100048178, &unk_100039530);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_100038558();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038478();
  sub_100003A14(&qword_100048180, &type metadata accessor for Library.Streams.Zeolite.Ledger.Embedding);
  sub_100038488();
  sub_1000036B8(&v19, v20);
  v16 = *(a1 + 16);
  if (v16)
  {
    v11 = *(sub_100038138() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    v17 = (v7 + 8);
    v13 = v16;
    do
    {
      sub_100038548();
      sub_100038118();
      sub_1000384D8();
      sub_100037EF8();
      v14 = sub_100037F08();
      (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
      sub_100038508();

      sub_100038518();
      sub_100038128();
      sub_100038538();
      sub_1000380F8();
      sub_1000384F8();
      sub_1000380E8();
      sub_1000384B8();
      sub_1000036D0(v20, v20[3]);
      sub_100038568();
      (*v17)(v10, v6);
      v12 += v18;
      --v13;
    }

    while (v13);
  }

  sub_10000387C(v20);
  return v16;
}

uint64_t sub_100001B40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1000383F8();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100001C70, 0, 0);
}

uint64_t sub_100001C70()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[12] = v2;
  if (v2)
  {
    v3 = sub_100037DE8();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_100037DD8();
    v0[2] = v1;
    sub_100001B40(&qword_100048198, &qword_100039178);
    sub_100003978(&qword_1000481B0, &qword_1000481B8);
    v0[13] = sub_100037DC8();
    v0[14] = v6;

    sub_100038358();
    v0[15] = sub_100038348();
    v13 = *(&_s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTjTu + 1);
    v17 = &_s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTjTu + _s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTjTu;
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_100001FEC;
    v15 = v0[4];
    v16 = v0[5];
    v19 = v0[10];

    __asm { BR              X8 }
  }

  v8 = v0[10];
  v7 = v0[11];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11(0, 24);
}

uint64_t sub_100001FEC(char a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 128);
  v7 = *v2;

  v8 = *(v4 + 120);

  if (v1)
  {
    v9 = sub_1000021E0;
  }

  else
  {
    *(v5 + 136) = a1 & 1;
    v9 = sub_100002130;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100002130()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  sub_100003924(*(v0 + 104), *(v0 + 112));
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 8);
  if (v1)
  {
    v9 = 24;
  }

  else
  {
    v9 = 21;
  }

  return v8(v7, v9);
}

uint64_t sub_1000021E0()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];
  v4 = *(v0[7] + 32);
  v4(v1, v0[10], v3);
  v4(v2, v1, v3);
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = sub_100038598();
  sub_100003680(v9, qword_100048DC8);
  v10 = *(v8 + 16);
  v10(v5, v6, v7);
  v11 = sub_100038578();
  v12 = sub_1000387C8();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[13];
  v16 = v0[8];
  v15 = v0[9];
  v17 = v0[6];
  v18 = v0[7];
  if (v13)
  {
    v33 = v0[13];
    v34 = v0[14];
    v32 = v12;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    sub_100003A14(&qword_100048188, &type metadata accessor for MLHostClientError);
    swift_allocError();
    v31 = v15;
    v10(v21, v16, v17);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    v23 = *(v18 + 8);
    v23(v16, v17);
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&_mh_execute_header, v11, v32, "Failed to save embeddings to kvStore: %@", v19, 0xCu);
    sub_100003814(v20);

    sub_100003924(v33, v34);

    v23(v31, v17);
  }

  else
  {
    sub_100003924(v0[13], v0[14]);

    v24 = *(v18 + 8);
    v24(v16, v17);
    v24(v15, v17);
  }

  v26 = v0[10];
  v25 = v0[11];
  v28 = v0[8];
  v27 = v0[9];

  v29 = v0[1];

  return v29(0, 21);
}

unint64_t *sub_1000024D0(uint64_t a1, uint64_t a2, char a3, void (**a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v48 = a6;
  v49 = a7;
  v47 = a4;
  v52 = sub_100038558();
  v54 = *(v52 - 8);
  v11 = *(v54 + 64);
  __chkstk_darwin(v52);
  v51 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100038138();
  v53 = *(v50 - 8);
  v13 = *(v53 + 64);
  __chkstk_darwin(v50);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100001B40(&qword_100048178, &unk_100039530);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v44 - v21;
  sub_100003714(a1, v44 - v21);
  sub_100003714(a2, v20);
  v23 = sub_100037F08();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  isa = 0;
  if (v25(v22, 1, v23) != 1)
  {
    isa = sub_100037EC8().super.isa;
    (*(v24 + 8))(v22, v23);
  }

  if (v25(v20, 1, v23) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_100037EC8().super.isa;
    (*(v24 + 8))(v20, v23);
  }

  v28 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v27 maxEvents:0 lastN:0 reversed:a3 & 1];

  sub_100038478();
  sub_100003A14(&qword_100048180, &type metadata accessor for Library.Streams.Zeolite.Ledger.Embedding);
  v29 = v28;
  sub_100038498();

  sub_1000036B8(&v56, v57);
  v30 = swift_allocObject();
  *(v30 + 16) = &_swiftEmptyArrayStorage;
  sub_1000036D0(v57, v57[3]);
  v31 = swift_allocObject();
  v32 = v48;
  v31[2] = v47;
  v31[3] = a5;
  v31[4] = v32;
  v31[5] = v49;
  v31[6] = v30;

  sub_1000385D8();

  swift_beginAccess();
  v33 = *(v30 + 16);
  v34 = *(v33 + 16);
  if (v34)
  {
    v44[2] = v30;
    v45 = v29;
    v55 = &_swiftEmptyArrayStorage;

    sub_10001C554(0, v34, 0);
    v35 = v55;
    v49 = *(v54 + 16);
    v36 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v44[1] = v33;
    v37 = v33 + v36;
    v38 = *(v54 + 72);
    v54 += 16;
    v47 = (v54 - 8);
    v48 = v38;
    v46 = v53 + 32;
    do
    {
      v39 = v51;
      v40 = v52;
      v49(v51, v37, v52);
      sub_1000384C8();
      sub_100038528();
      sub_1000384E8();
      sub_1000384A8();
      sub_100038108();
      (*v47)(v39, v40);
      v55 = v35;
      v42 = v35[2];
      v41 = v35[3];
      if (v42 >= v41 >> 1)
      {
        sub_10001C554(v41 > 1, v42 + 1, 1);
        v35 = v55;
      }

      v35[2] = v42 + 1;
      (*(v53 + 32))(v35 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v42, v15, v50);
      v37 += v48;
      --v34;
    }

    while (v34);
  }

  else
  {

    v35 = &_swiftEmptyArrayStorage;
  }

  sub_10000387C(v57);
  return v35;
}

uint64_t sub_100002BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100038558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    result = sub_1000384E8();
    if (!v18)
    {
      return result;
    }

    if (result == a2 && v18 == a3)
    {
    }

    else
    {
      v19 = sub_100038A58();

      if ((v19 & 1) == 0)
      {
        return result;
      }
    }
  }

  if (a5)
  {
    result = sub_1000384A8();
    if (!v20)
    {
      return result;
    }

    if (result == a4 && v20 == a5)
    {
    }

    else
    {
      v21 = sub_100038A58();

      if ((v21 & 1) == 0)
      {
        return result;
      }
    }
  }

  (*(v13 + 16))(v16, a1, v12);
  swift_beginAccess();
  v22 = *(a6 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a6 + 16) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_100029250(0, v22[2] + 1, 1, v22);
    *(a6 + 16) = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_100029250(v24 > 1, v25 + 1, 1, v22);
  }

  v22[2] = v25 + 1;
  (*(v13 + 32))(v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v25, v16, v12);
  *(a6 + 16) = v22;
  return swift_endAccess();
}

uint64_t sub_100002E14(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1000383F8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100002ED4, 0, 0);
}

uint64_t sub_100002ED4()
{
  sub_100038358();
  v0[8] = sub_100038348();
  v1 = *(&_s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu + 1);
  v7 = &_s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu + _s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100002FBC;
  v3 = v0[7];
  v4 = v0[3];
  v5 = v0[4];

  return (v7)(0xD000000000000026, 0x800000010003B940, v4, v5, 0, 0, 0, v3);
}

uint64_t sub_100002FBC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 72);
  v7 = *v3;
  v5[10] = a1;
  v5[11] = a2;
  v5[12] = v2;

  v8 = v4[8];

  if (v2)
  {
    v9 = sub_100003480;
  }

  else
  {
    v9 = sub_1000030FC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000030FC()
{
  v26 = v0;
  if (v0[11] >> 60 == 15)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v1 = v0[4];
    v2 = sub_100038598();
    sub_100003680(v2, qword_100048DC8);

    v3 = sub_100038578();
    v4 = sub_1000387C8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[3];
      v5 = v0[4];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10001BFAC(v6, v5, &v25);
      _os_log_impl(&_mh_execute_header, v3, v4, "Got empty embedding data from KVStore with key %s, exiting early.", v7, 0xCu);
      sub_10000387C(v8);
    }

    v9 = 24;
LABEL_13:
    v21 = &_swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v10 = v0[12];
  v11 = v0[10];
  v12 = sub_100037DB8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_100037DA8();
  sub_100001B40(&qword_100048198, &qword_100039178);
  sub_100003978(&qword_1000481A0, &qword_1000481A8);
  sub_100037D98();
  sub_100003910(v0[10], v0[11]);

  if (v10)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v15 = sub_100038598();
    sub_100003680(v15, qword_100048DC8);
    swift_errorRetain();
    v16 = sub_100038578();
    v17 = sub_1000387C8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Got error reading from KVStore: %@", v18, 0xCu);
      sub_100003814(v19);
    }

    v9 = 20;
    goto LABEL_13;
  }

  v21 = v0[2];
  v9 = 24;
LABEL_14:
  v22 = v0[7];

  v23 = v0[1];

  return v23(v21, v9);
}

uint64_t sub_100003480()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_100003A14(&qword_100048188, &type metadata accessor for MLHostClientError);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v5 = sub_100038598();
  sub_100003680(v5, qword_100048DC8);
  swift_errorRetain();
  v6 = sub_100038578();
  v7 = sub_1000387C8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Got error reading from KVStore: %@", v8, 0xCu);
    sub_100003814(v9);
  }

  v11 = v0[7];

  v12 = v0[1];

  return v12(&_swiftEmptyArrayStorage, 20);
}

uint64_t sub_100003680(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000036B8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000036D0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003714(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B40(&qword_100048178, &unk_100039530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003784()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000037BC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100003814(uint64_t a1)
{
  v2 = sub_100001B40(&qword_100048190, &qword_10003B590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000387C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000038C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003910(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003924(a1, a2);
  }

  return a1;
}

uint64_t sub_100003924(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100003978(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(&qword_100048198, &qword_100039178);
    sub_100003A14(a2, &type metadata accessor for EmbeddingItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003A14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003A5C()
{
  v0 = sub_100038598();
  sub_10001FC60(v0, qword_100048DC8);
  sub_100003680(v0, qword_100048DC8);
  return sub_100038588();
}

unint64_t ZeoliteEvalExtensionError.rawValue.getter(char a1)
{
  result = 0x656C6C65636E6163;
  switch(a1)
  {
    case 1:
      result = 0x7075727265746E69;
      break;
    case 2:
    case 3:
      result = 0x6F4E656369766564;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
    case 21:
    case 22:
      result = 0xD000000000000016;
      break;
    case 8:
    case 18:
      result = 0xD000000000000012;
      break;
    case 9:
    case 13:
      result = 0xD000000000000010;
      break;
    case 10:
    case 12:
    case 14:
    case 19:
      result = 0x6F5464656C696166;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0xD000000000000017;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100003DB8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ZeoliteEvalExtensionError.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ZeoliteEvalExtensionError.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100038A58();
  }

  return v8 & 1;
}

uint64_t sub_100003E40(char a1, char a2)
{
  if (qword_100039648[a1] == qword_100039648[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_100038A58();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_100003EA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x49747865746E6F63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x64496769666E6F63;
    }

    else
    {
      v5 = 0x49747865746E6F63;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE600000000000000;
    v5 = 0x64496D657469;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x73656369646E69;
    }

    else
    {
      v5 = 0x7365756C6176;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x64496D657469;
  v9 = 0xE700000000000000;
  v10 = 0x73656369646E69;
  if (a2 != 3)
  {
    v10 = 0x7365756C6176;
    v9 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x64496769666E6F63;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_100038A58();
  }

  return v13 & 1;
}

uint64_t sub_10000401C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107116;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x737365636F7270;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x64616F6C7075;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107116;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x64616F6C7075;
    if (a2 != 3)
    {
      v6 = 0x64656873696E6966;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x737365636F7270;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_100038A58();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10000418C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x736973796C616E61;
  v6 = 0x636E657265666E69;
  v7 = 0xE900000000000065;
  if (a1 != 4)
  {
    v6 = 0x617A696E656B6F74;
    v7 = 0xEC0000006E6F6974;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6465626D65;
  if (a1 != 1)
  {
    v8 = 0x65726F6373;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x74636172747865;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x736973796C616E61)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE900000000000065;
      if (v9 != 0x636E657265666E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xEC0000006E6F6974;
      if (v9 != 0x617A696E656B6F74)
      {
LABEL_34:
        v12 = sub_100038A58();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE500000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x6465626D65)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x65726F6373)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x74636172747865)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

Swift::Int sub_100004378()
{
  v1 = *v0;
  sub_100038AF8();
  ZeoliteEvalExtensionError.rawValue.getter(v1);
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_1000043DC()
{
  ZeoliteEvalExtensionError.rawValue.getter(*v0);
  sub_100038678();
}

Swift::Int sub_100004430()
{
  v1 = *v0;
  sub_100038AF8();
  ZeoliteEvalExtensionError.rawValue.getter(v1);
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_100004490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s20ZeoliteEvalExtension0abC5ErrorO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_1000044C0@<X0>(unint64_t *a1@<X8>)
{
  result = ZeoliteEvalExtensionError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ZeoliteEvalExtensionStates.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7472617473;
  v2 = 0x737365636F7270;
  v3 = 0x64616F6C7075;
  if (a1 != 3)
  {
    v3 = 0x64656873696E6966;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1684107116;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000045A4()
{
  v1 = *v0;
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_100004678()
{
  *v0;
  *v0;
  *v0;
  sub_100038678();
}

Swift::Int sub_100004738()
{
  v1 = *v0;
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_100004808@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20ZeoliteEvalExtension0abC6StatesO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100004838(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xE700000000000000;
  v6 = 0x737365636F7270;
  v7 = 0xE600000000000000;
  v8 = 0x64616F6C7075;
  if (v2 != 3)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684107116;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000048D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(sub_100001B40(&qword_1000482E8, &qword_100039550) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_100001B40(&qword_100048210, qword_100039480);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100004A18, 0, 0);
}

uint64_t sub_100004A18()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_100038638();
  v3 = [v1 initWithSuiteName:v2];
  v0[11] = v3;

  if (v3)
  {
    v4 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
    v5 = swift_task_alloc();
    v0[12] = v5;
    v6 = type metadata accessor for ZeoliteEvalExtension();
    v7 = sub_10001FAA0(&qword_1000482C0, type metadata accessor for ZeoliteEvalExtension);
    v8 = sub_10001FAA0(&qword_100048288, type metadata accessor for ZeoliteEvalExtensionConfig);
    v9 = sub_10001FAA0(&unk_100048290, type metadata accessor for ZeoliteEvalExtensionConfig);
    *v5 = v0;
    v5[1] = sub_100004C50;
    v10 = v0[6];
    v12 = v0[3];
    v11 = v0[4];
    v13 = v0[2];

    return MLHostExtension.loadConfig<A>(context:)(v10, v13, v6, v11, v7, v8, v9);
  }

  else
  {
    v14 = objc_allocWithZone(sub_100038388());
    v15 = sub_100038378();
    v17 = v0[9];
    v16 = v0[10];
    v19 = v0[5];
    v18 = v0[6];

    v20 = v0[1];

    return v20(v15);
  }
}

uint64_t sub_100004C50()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_100004D4C, 0, 0);
}

id sub_100004D4C()
{
  v69 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(v0[10], v3, v1);
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v8 = v0[9];
    v7 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = sub_100038598();
    sub_100003680(v11, qword_100048DC8);
    (*(v9 + 16))(v8, v7, v10);
    v12 = sub_100038578();
    v13 = sub_1000387A8();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[7];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = v65;
      *v18 = 136315138;
      sub_10001F82C(&qword_100048328, &qword_100048210, qword_100039480);
      v19 = sub_100038A38();
      v21 = v20;
      v22 = *(v15 + 8);
      v22(v16, v17);
      v23 = sub_10001BFAC(v19, v21, &v66);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Configuration: %s", v18, 0xCu);
      sub_10000387C(v65);
    }

    else
    {

      v22 = *(v15 + 8);
      v22(v16, v17);
    }

    v24 = sub_100038578();
    v25 = sub_1000387A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      result = [objc_opt_self() sharedConnection];
      if (!result)
      {
        __break(1u);
        goto LABEL_30;
      }

      v28 = result;
      v29 = [result effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];

      *(v26 + 4) = v29 == 1;
      _os_log_impl(&_mh_execute_header, v24, v25, "D&U enabled: %{BOOL}d", v26, 8u);
    }

    v30 = v0[11];

    v31 = v30;
    v32 = sub_100038578();
    v33 = sub_1000387B8();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[11];
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 67109120;
      v37 = sub_100038638();
      v38 = [v35 BOOLForKey:v37];

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Opt-In enabled: %{BOOL}d", v36, 8u);
    }

    else
    {
    }

    v39 = v0[10];
    v40 = v0[7];
    v41 = v0[5];
    sub_1000383C8();
    LOBYTE(v39) = sub_10001EB18(v41);
    sub_10001EA9C(v41, type metadata accessor for ZeoliteEvalExtensionConfig);
    if ((v39 & 1) == 0)
    {
      v50 = sub_100038578();
      v51 = sub_1000387A8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Skip the execution based on the retrieved state.", v52, 2u);
      }

      v44 = v0[10];
      v45 = v0[11];
      v46 = v0[7];
      v53 = v0[8];

      v67 = &type metadata for ZeoliteEvalExtensionError;
      v68 = sub_10001E9E0();
      v54 = 4;
      goto LABEL_24;
    }

    result = [objc_opt_self() sharedConnection];
    if (result)
    {
      v42 = result;
      v43 = [result effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];

      if (v43 == 1)
      {
        v44 = v0[10];
        v45 = v0[11];
        v46 = v0[7];
        v47 = v0[8];
        v48 = objc_allocWithZone(sub_100038388());
        v49 = sub_100038378();
LABEL_25:
        v6 = v49;

        v22(v44, v46);
        goto LABEL_26;
      }

      v55 = sub_100038578();
      v56 = sub_1000387A8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Device is not DNU enabled. Skipping execution.", v57, 2u);
      }

      v44 = v0[10];
      v45 = v0[11];
      v46 = v0[7];
      v58 = v0[8];

      v67 = &type metadata for ZeoliteEvalExtensionError;
      v68 = sub_10001E9E0();
      v54 = 2;
LABEL_24:
      LOBYTE(v66) = v54;
      v59 = objc_allocWithZone(sub_100038388());
      v49 = sub_100038368();
      goto LABEL_25;
    }

LABEL_30:
    __break(1u);
    return result;
  }

  v4 = v0[11];
  sub_10001FD94(v3, &qword_1000482E8, &qword_100039550);
  v67 = &type metadata for ZeoliteEvalExtensionError;
  v68 = sub_10001E9E0();
  LOBYTE(v66) = 5;
  v5 = objc_allocWithZone(sub_100038388());
  v6 = sub_100038368();

LABEL_26:
  v61 = v0[9];
  v60 = v0[10];
  v63 = v0[5];
  v62 = v0[6];

  v64 = v0[1];

  return v64(v6);
}

uint64_t sub_100005420(uint64_t a1)
{
  v2[184] = v1;
  v2[183] = a1;
  v3 = type metadata accessor for ExecutionState(0);
  v2[185] = v3;
  v4 = *(v3 - 8);
  v2[186] = v4;
  v5 = *(v4 + 64) + 15;
  v2[187] = swift_task_alloc();
  v6 = sub_100038138();
  v2[188] = v6;
  v7 = *(v6 - 8);
  v2[189] = v7;
  v8 = *(v7 + 64) + 15;
  v2[190] = swift_task_alloc();
  v9 = sub_100037F08();
  v2[191] = v9;
  v10 = *(v9 - 8);
  v2[192] = v10;
  v11 = *(v10 + 64) + 15;
  v2[193] = swift_task_alloc();
  v2[194] = swift_task_alloc();
  v2[195] = swift_task_alloc();
  v12 = *(*(sub_100001B40(&qword_1000482C8, &qword_100039528) - 8) + 64) + 15;
  v2[196] = swift_task_alloc();
  v2[197] = swift_task_alloc();
  v13 = sub_100037E18();
  v2[198] = v13;
  v14 = *(v13 - 8);
  v2[199] = v14;
  v15 = *(v14 + 64) + 15;
  v2[200] = swift_task_alloc();
  v16 = sub_100038178();
  v2[201] = v16;
  v17 = *(v16 - 8);
  v2[202] = v17;
  v18 = *(v17 + 64) + 15;
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v19 = *(*(sub_100001B40(&qword_100048178, &unk_100039530) - 8) + 64) + 15;
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  v2[208] = swift_task_alloc();
  v2[209] = swift_task_alloc();
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  v2[212] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  v20 = *(*(sub_100001B40(&qword_1000482D0, &unk_100039900) - 8) + 64) + 15;
  v2[214] = swift_task_alloc();
  v21 = type metadata accessor for EmbedParameters(0);
  v2[215] = v21;
  v22 = *(v21 - 8);
  v2[216] = v22;
  v23 = *(v22 + 64) + 15;
  v2[217] = swift_task_alloc();
  v24 = sub_100038888();
  v2[218] = v24;
  v25 = *(v24 - 8);
  v2[219] = v25;
  v26 = *(v25 + 64) + 15;
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v27 = sub_100037E68();
  v2[222] = v27;
  v28 = *(v27 - 8);
  v2[223] = v28;
  v29 = *(v28 + 64) + 15;
  v2[224] = swift_task_alloc();
  v2[225] = swift_task_alloc();
  v2[226] = swift_task_alloc();
  v30 = *(*(sub_100001B40(&qword_1000482D8, &qword_100039540) - 8) + 64) + 15;
  v2[227] = swift_task_alloc();
  v31 = sub_100038468();
  v2[228] = v31;
  v32 = *(v31 - 8);
  v2[229] = v32;
  v33 = *(v32 + 64) + 15;
  v2[230] = swift_task_alloc();
  v34 = sub_100038428();
  v2[231] = v34;
  v35 = *(v34 - 8);
  v2[232] = v35;
  v36 = *(v35 + 64) + 15;
  v2[233] = swift_task_alloc();
  v37 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v2[234] = v37;
  v38 = *(*(v37 - 8) + 64) + 15;
  v2[235] = swift_task_alloc();
  v2[236] = swift_task_alloc();
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v2[243] = swift_task_alloc();
  v2[244] = swift_task_alloc();
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v39 = sub_100001B40(&qword_1000482E0, &qword_100039548);
  v2[248] = v39;
  v40 = *(*(v39 - 8) + 64) + 15;
  v2[249] = swift_task_alloc();
  v2[250] = swift_task_alloc();
  v41 = *(*(sub_100001B40(&qword_1000482E8, &qword_100039550) - 8) + 64) + 15;
  v2[251] = swift_task_alloc();
  v42 = sub_100001B40(&qword_100048210, qword_100039480);
  v2[252] = v42;
  v43 = *(v42 - 8);
  v2[253] = v43;
  v44 = *(v43 + 64) + 15;
  v2[254] = swift_task_alloc();
  v2[255] = swift_task_alloc();
  v2[256] = swift_task_alloc();
  v2[257] = swift_task_alloc();

  return _swift_task_switch(sub_100005B80, 0, 0);
}

uint64_t sub_100005B80()
{
  *(v0 + 2064) = **(v0 + 1472);
  *(v0 + 2589) = 0;
  sub_100038338();
  sub_10001FAA0(&qword_1000482F0, &type metadata accessor for LedgerClient);
  v2 = sub_100038738();
  *(v0 + 2072) = v2;
  *(v0 + 2080) = v1;

  return _swift_task_switch(sub_100005C48, v2, v1);
}

uint64_t sub_100005C48()
{
  v1 = v0[258];
  v2 = v0[183];
  v0[261] = sub_10001E834();
  sub_100038318();

  return _swift_task_switch(sub_100005CD0, 0, 0);
}

uint64_t sub_100005CD0()
{
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v1 = v0[183];
  v2 = sub_100038598();
  v0[262] = sub_100003680(v2, qword_100048DC8);
  v3 = v1;
  v4 = sub_100038578();
  v5 = sub_1000387A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[183];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_10001FD94(v8, &qword_100048190, &qword_10003B590);
  }

  v10 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v11 = swift_task_alloc();
  v0[263] = v11;
  v12 = type metadata accessor for ZeoliteEvalExtension();
  v0[264] = v12;
  v13 = sub_10001FAA0(&qword_1000482C0, type metadata accessor for ZeoliteEvalExtension);
  v14 = sub_10001FAA0(&qword_100048288, type metadata accessor for ZeoliteEvalExtensionConfig);
  v15 = sub_10001FAA0(&unk_100048290, type metadata accessor for ZeoliteEvalExtensionConfig);
  *v11 = v0;
  v11[1] = sub_100005F54;
  v16 = v0[251];
  v17 = v0[234];
  v18 = v0[184];
  v19 = v0[183];

  return MLHostExtension.loadConfig<A>(context:)(v16, v19, v12, v17, v13, v14, v15);
}

uint64_t sub_100005F54()
{
  v1 = *(*v0 + 2104);
  v3 = *v0;

  return _swift_task_switch(sub_100006050, 0, 0);
}

uint64_t sub_100006050()
{
  v373 = v0;
  v1 = *(v0 + 2024);
  v2 = *(v0 + 2016);
  v3 = *(v0 + 2008);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    v5 = *(v1 + 16);
    v6 = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(*(v0 + 2056), *(v0 + 1472) + *(*(v0 + 2112) + 20), v2);
    if (v4(v3, 1, v2) != 1)
    {
      sub_10001FD94(*(v0 + 2008), &qword_1000482E8, &qword_100039550);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 2056), v3, v2);
    v5 = *(v1 + 16);
    v6 = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  *(v0 + 2120) = v5;
  v7 = *(v0 + 2096);
  v8 = *(v0 + 2056);
  v9 = *(v0 + 2048);
  v10 = *(v0 + 2016);
  *(v0 + 2128) = v6;
  v5(v9, v8, v10);
  v11 = sub_100038578();
  v12 = sub_1000387A8();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 2048);
  v15 = *(v0 + 2024);
  v16 = *(v0 + 2016);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v371 = v18;
    *v17 = 136315138;
    sub_10001F82C(&qword_100048328, &qword_100048210, qword_100039480);
    v19 = sub_100038A38();
    v21 = v20;
    v22 = v16;
    v23 = *(v15 + 8);
    v23(v14, v22);
    v24 = sub_10001BFAC(v19, v21, &v371);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "Configuration: %s", v17, 0xCu);
    sub_10000387C(v18);
  }

  else
  {

    v25 = v16;
    v23 = *(v15 + 8);
    v23(v14, v25);
  }

  *(v0 + 2136) = v23;
  v26 = objc_allocWithZone(NSUserDefaults);
  v27 = sub_100038638();
  v28 = [v26 initWithSuiteName:v27];
  *(v0 + 2144) = v28;

  if (v28)
  {
    v29 = *(v0 + 2056);
    v30 = *(v0 + 2016);
    v31 = *(v0 + 1976);
    (*(*(v0 + 1488) + 56))(*(v0 + 2000), 1, 1, *(v0 + 1480));
    sub_1000383C8();
    v371 = 0x6769666E6F63;
    v372 = 0xE600000000000000;
    *(v0 + 1440) = *v31;
    v375._countAndFlagsBits = sub_100038A38();
    sub_100038698(v375);

    sub_10001EA9C(v31, type metadata accessor for ZeoliteEvalExtensionConfig);
    v32 = sub_100038638();

    v33 = [v28 dictionaryForKey:v32];

    if (v33)
    {
      v34 = *(v0 + 2000);
      v35 = *(v0 + 1992);
      v36 = sub_1000385F8();

      sub_100023468(v36, v35);
      sub_10001F7BC(v35, v34);
    }

    v37 = *(v0 + 2096);
    v38 = sub_100038578();
    v39 = sub_1000387B8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 2000);
      v41 = *(v0 + 1992);
      v42 = *(v0 + 1984);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v371 = v44;
      *v43 = 136315138;
      swift_beginAccess();
      sub_10001FA38(v40, v41, &qword_1000482E0, &qword_100039548);
      v45 = sub_1000387E8();
      v47 = v46;
      sub_10001FD94(v41, &qword_1000482E0, &qword_100039548);
      v48 = sub_10001BFAC(v45, v47, &v371);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "Execution state: %s", v43, 0xCu);
      sub_10000387C(v44);
    }

    v49 = *(v0 + 2056);
    v50 = *(v0 + 2016);
    v51 = *(v0 + 1856);
    v365 = *(v0 + 1848);
    v52 = *(v0 + 1840);
    v53 = *(v0 + 1832);
    v54 = *(v0 + 1824);
    v55 = *(v0 + 1816);
    v56 = *(v0 + 1464);
    v57 = sub_100038438();
    v59 = v58;
    v361 = v57;
    *(v0 + 2152) = v57;
    *(v0 + 2160) = v58;
    sub_1000383D8();
    sub_100038458();
    (*(v53 + 8))(v52, v54);
    if ((*(v51 + 48))(v55, 1, v365) == 1)
    {
      sub_10001FD94(*(v0 + 1816), &qword_1000482D8, &qword_100039540);
      *(v0 + 2216) = 0;
      *(v0 + 2208) = v59;
      *(v0 + 2200) = v361;
      v60 = *(v0 + 2056);
      v61 = *(v0 + 2016);
      v62 = *(v0 + 1968);
      v63 = *(v0 + 1768);
      sub_100038868();
      sub_1000383C8();
      v64 = *(v62 + 40);
      v65 = *(v62 + 56);
      v66 = *(v62 + 88);
      *(v0 + 416) = *(v62 + 72);
      *(v0 + 432) = v66;
      *(v0 + 384) = v64;
      *(v0 + 400) = v65;
      v67 = *(v62 + 104);
      v68 = *(v62 + 120);
      v69 = *(v62 + 152);
      *(v0 + 480) = *(v62 + 136);
      *(v0 + 496) = v69;
      *(v0 + 448) = v67;
      *(v0 + 464) = v68;
      v70 = *(v62 + 168);
      v71 = *(v62 + 184);
      v72 = *(v62 + 200);
      *(v0 + 560) = *(v62 + 216);
      *(v0 + 528) = v71;
      *(v0 + 544) = v72;
      *(v0 + 512) = v70;
      sub_10001FA38(v0 + 384, v0 + 568, &qword_100048300, &qword_100039558);
      sub_10001EA9C(v62, type metadata accessor for ZeoliteEvalExtensionConfig);
      v73 = *(v0 + 528);
      *(v0 + 328) = *(v0 + 512);
      *(v0 + 344) = v73;
      *(v0 + 360) = *(v0 + 544);
      *(v0 + 376) = *(v0 + 560);
      v74 = *(v0 + 464);
      *(v0 + 264) = *(v0 + 448);
      *(v0 + 280) = v74;
      v75 = *(v0 + 496);
      *(v0 + 296) = *(v0 + 480);
      *(v0 + 312) = v75;
      v76 = *(v0 + 400);
      *(v0 + 200) = *(v0 + 384);
      *(v0 + 216) = v76;
      v77 = *(v0 + 432);
      *(v0 + 232) = *(v0 + 416);
      *(v0 + 248) = v77;
      if (sub_10001E888(v0 + 200) == 1)
      {
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = xmmword_1000391C0;
        v82 = 0uLL;
        v83 = xmmword_1000391D0;
        v84 = 3;
        v85 = 1;
        v86 = 0uLL;
        v87 = 0uLL;
        v88 = 0uLL;
        v89 = 0uLL;
        v90 = 0uLL;
        v91 = 0uLL;
      }

      else
      {
        v84 = *(v0 + 384);
        v78 = *(v0 + 392);
        v89 = *(v0 + 400);
        v90 = *(v0 + 416);
        v81 = *(v0 + 432);
        v91 = *(v0 + 448);
        v79 = *(v0 + 464);
        v80 = *(v0 + 472);
        v82 = *(v0 + 480);
        v83 = *(v0 + 496);
        v86 = *(v0 + 512);
        v87 = *(v0 + 528);
        v88 = *(v0 + 544);
        v85 = *(v0 + 560);
      }

      *(v0 + 2591) = v84;
      v122 = *(v0 + 2056);
      v123 = *(v0 + 2016);
      v124 = *(v0 + 1960);
      v125 = *(v0 + 1872);
      v126 = *(v0 + 1728);
      v127 = *(v0 + 1720);
      v128 = *(v0 + 1712);
      *(v0 + 752) = v84;
      *(v0 + 760) = v78;
      *(v0 + 768) = v89;
      *(v0 + 784) = v90;
      *(v0 + 800) = v81;
      *(v0 + 816) = v91;
      *(v0 + 832) = v79;
      *(v0 + 840) = v80;
      *(v0 + 848) = v82;
      *(v0 + 864) = v83;
      *(v0 + 880) = v86;
      *(v0 + 896) = v87;
      *(v0 + 912) = v88;
      *(v0 + 928) = v85;
      v129 = *(v0 + 752);
      v130 = *(v0 + 768);
      v131 = *(v0 + 800);
      *(v0 + 48) = *(v0 + 784);
      *(v0 + 64) = v131;
      *(v0 + 16) = v129;
      *(v0 + 32) = v130;
      v132 = *(v0 + 816);
      v133 = *(v0 + 832);
      v134 = *(v0 + 864);
      *(v0 + 112) = *(v0 + 848);
      *(v0 + 128) = v134;
      *(v0 + 80) = v132;
      *(v0 + 96) = v133;
      v135 = *(v0 + 896);
      *(v0 + 144) = *(v0 + 880);
      *(v0 + 160) = v135;
      *(v0 + 176) = *(v0 + 912);
      *(v0 + 192) = *(v0 + 928);
      sub_1000383C8();
      sub_10001FA38(v124 + *(v125 + 40), v128, &qword_1000482D0, &unk_100039900);
      sub_10001EA9C(v124, type metadata accessor for ZeoliteEvalExtensionConfig);
      v136 = *(v126 + 48);
      v137 = v136(v128, 1, v127);
      v138 = *(v0 + 1736);
      if (v137 == 1)
      {
        v139 = *(v0 + 1720);
        v140 = *(v0 + 1712);
        *v138 = 0;
        v141 = v139[5];
        v142 = enum case for EmbedderName.MADTextEmbedder(_:);
        v143 = sub_100037FC8();
        (*(*(v143 - 8) + 104))(&v138[v141], v142, v143);
        v144 = &v138[v139[6]];
        *v144 = 0;
        v144[1] = 0;
        v145 = &v138[v139[7]];
        *v145 = 0;
        v145[1] = 0;
        if (v136(v140, 1, v139) != 1)
        {
          sub_10001FD94(*(v0 + 1712), &qword_1000482D0, &unk_100039900);
        }
      }

      else
      {
        sub_10001FD2C(*(v0 + 1712), v138, type metadata accessor for EmbedParameters);
      }

      v146 = (v0 + 936);
      v147 = *(v0 + 2056);
      v148 = *(v0 + 2016);
      v149 = *(v0 + 1952);
      v150 = *(v0 + 1872);
      sub_1000383C8();
      v151 = v149 + *(v150 + 44);
      v152 = *(v151 + 16);
      *(v0 + 1112) = *v151;
      *(v0 + 1128) = v152;
      v153 = *(v151 + 32);
      v154 = *(v151 + 48);
      v155 = *(v151 + 64);
      *(v0 + 1192) = *(v151 + 80);
      *(v0 + 1160) = v154;
      *(v0 + 1176) = v155;
      *(v0 + 1144) = v153;
      sub_10001FA38(v0 + 1112, v0 + 1200, &qword_100048308, &qword_100039560);
      sub_10001EA9C(v149, type metadata accessor for ZeoliteEvalExtensionConfig);
      v156 = *(v0 + 1136);
      if (v156 == 1)
      {
        v157 = 0;
        v158 = 0;
        v156 = 0;
        v159 = 0;
        v160 = 0;
        v161 = 0uLL;
        v162 = 3;
        v163 = 0uLL;
        v164 = 10;
      }

      else
      {
        v157 = *(v0 + 1112);
        v164 = *(v0 + 1120);
        v158 = *(v0 + 1128);
        v162 = *(v0 + 1144);
        v159 = *(v0 + 1152);
        v160 = *(v0 + 1160);
        v161 = *(v0 + 1168);
        v163 = *(v0 + 1184);
      }

      *(v0 + 2248) = v160;
      *(v0 + 2240) = v159;
      *(v0 + 2593) = v162;
      *(v0 + 2232) = v156;
      *(v0 + 2224) = v158;
      *(v0 + 2592) = v157;
      v165 = *(v0 + 2056);
      v166 = *(v0 + 2016);
      v167 = *(v0 + 1944);
      v168 = *(v0 + 1936);
      v169 = *(v0 + 1872);
      *(v0 + 936) = v157;
      *(v0 + 944) = v164;
      *(v0 + 952) = v158;
      *(v0 + 960) = v156;
      *(v0 + 968) = v162;
      *(v0 + 976) = v159;
      *(v0 + 984) = v160;
      *(v0 + 992) = v161;
      *(v0 + 1008) = v163;
      v170 = *(v0 + 984);
      *(v0 + 1056) = *(v0 + 968);
      *(v0 + 1072) = v170;
      v171 = *(v0 + 952);
      *(v0 + 1024) = *v146;
      *(v0 + 1040) = v171;
      *(v0 + 1088) = *(v0 + 1000);
      *(v0 + 1104) = *(v0 + 1016);
      sub_1000383C8();
      *(v0 + 2580) = *(v167 + *(v169 + 48));
      sub_10001EA9C(v167, type metadata accessor for ZeoliteEvalExtensionConfig);
      sub_1000383C8();
      v172 = (v168 + *(v169 + 52));
      v174 = *v172;
      v173 = v172[1];
      v175 = v172[2];
      v176 = v172[3];
      sub_10001E8AC(*v172, v173);
      sub_10001EA9C(v168, type metadata accessor for ZeoliteEvalExtensionConfig);
      if (!v173)
      {
        v173 = 0x800000010003B990;
        v176 = 0x800000010003B9C0;
        v175 = 0xD000000000000028;
        v174 = 0xD00000000000002FLL;
      }

      *(v0 + 2280) = v176;
      *(v0 + 2272) = v175;
      *(v0 + 2264) = v173;
      *(v0 + 2256) = v174;
      v177 = *(v0 + 2056);
      v178 = *(v0 + 2016);
      v179 = *(v0 + 1928);
      v180 = *(v0 + 1872);
      sub_1000383C8();
      v181 = v179 + *(v180 + 56);
      v182 = *v181;
      v183 = *(v181 + 8);
      v184 = *(v181 + 16);
      v185 = *(v181 + 24);
      v186 = *(v181 + 32);
      v187 = *(v181 + 40);
      sub_10001E8F0(*v181, v183);
      sub_10001EA9C(v179, type metadata accessor for ZeoliteEvalExtensionConfig);
      if (v183 == 1)
      {
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 1;
      }

      *(v0 + 2594) = v187 & 1;
      *(v0 + 2320) = v186;
      *(v0 + 2312) = v185;
      *(v0 + 2304) = v184;
      *(v0 + 2296) = v183;
      *(v0 + 2288) = v182;
      v188 = *(v0 + 2056);
      v189 = *(v0 + 2016);
      v190 = *(v0 + 1920);
      v191 = *(v0 + 1704);
      v192 = *(v0 + 1536);
      v193 = *(v0 + 1528);
      *(v0 + 2595) = **(v0 + 1736);
      v194 = *(v192 + 56);
      *(v0 + 2328) = v194;
      *(v0 + 2336) = (v192 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v194(v191, 1, 1, v193);
      sub_1000383C8();
      v195 = *(v190 + 32);

      sub_10001EA9C(v190, type metadata accessor for ZeoliteEvalExtensionConfig);
      v196 = *(v195 + 16);
      v197 = (v195 + 32);
      while (v196)
      {
        v199 = *v197;
        if (v199 <= 2 && v199 != 1 && v199 != 2)
        {

LABEL_64:

          *(v0 + 2582) = 1;
          v228 = *(v0 + 2080);
          v229 = *(v0 + 2072);
          v230 = sub_100009BFC;
          goto LABEL_111;
        }

        v198 = sub_100038A58();

        ++v197;
        --v196;
        if (v198)
        {
          goto LABEL_64;
        }
      }

      *(v0 + 2360) = 0;
      v200 = *(v0 + 2056);
      v201 = *(v0 + 2016);
      v202 = *(v0 + 1912);
      sub_1000383C8();
      v203 = *(v202 + 32);

      sub_10001EA9C(v202, type metadata accessor for ZeoliteEvalExtensionConfig);
      v204 = *(v203 + 16);
      v205 = (v203 + 32);
      while (v204)
      {
        v207 = *v205;
        if (v207 >= 4 && v207 != 5)
        {

LABEL_71:

          *(v0 + 2590) = 2;
          v228 = *(v0 + 2080);
          v229 = *(v0 + 2072);
          v230 = sub_10000B574;
          goto LABEL_111;
        }

        v206 = sub_100038A58();

        ++v205;
        --v204;
        if (v206)
        {
          goto LABEL_71;
        }
      }

      v208 = *(v0 + 2280);
      v209 = *(v0 + 2264);

      v210 = *(v0 + 2056);
      v211 = *(v0 + 2016);
      v212 = *(v0 + 1904);
      sub_1000383C8();
      v213 = *(v212 + 32);

      sub_10001EA9C(v212, type metadata accessor for ZeoliteEvalExtensionConfig);
      v214 = *(v213 + 16);
      v215 = (v213 + 32);
      while (v214)
      {
        v217 = *v215;
        if (v217 > 4)
        {

LABEL_75:

          *(v0 + 2583) = 2;
          v228 = *(v0 + 2080);
          v229 = *(v0 + 2072);
          v230 = sub_10000E8A4;
          goto LABEL_111;
        }

        v216 = sub_100038A58();

        ++v215;
        --v214;
        if (v216)
        {
          goto LABEL_75;
        }
      }

      v218 = *(v0 + 2312);
      v219 = *(v0 + 2296);

      v220 = *(v0 + 2056);
      v221 = *(v0 + 2016);
      v222 = *(v0 + 1896);
      sub_1000383C8();
      v223 = *(v222 + 32);

      sub_10001EA9C(v222, type metadata accessor for ZeoliteEvalExtensionConfig);
      v224 = *(v223 + 16);
      v225 = (v223 + 32);
      while (v224)
      {
        v227 = *v225;
        if (v227 <= 2 && *v225 && v227 != 2)
        {

LABEL_79:

          *(v0 + 2584) = 2;
          v228 = *(v0 + 2080);
          v229 = *(v0 + 2072);
          v230 = sub_1000102D4;
          goto LABEL_111;
        }

        v226 = sub_100038A58();

        ++v225;
        --v224;
        if (v226)
        {
          goto LABEL_79;
        }
      }

      v231 = *(v0 + 2360);

      sub_10001E938(v0 + 752);

      *(v0 + 2480) = 0;
      v232 = *(v0 + 2336);
      v233 = *(v0 + 2056);
      v234 = *(v0 + 2016);
      v235 = *(v0 + 1888);
      (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
      sub_1000383C8();
      v236 = *(v235 + 32);

      sub_10001EA9C(v235, type metadata accessor for ZeoliteEvalExtensionConfig);
      v237 = *(v236 + 16);
      v238 = (v236 + 32);
      while (v237)
      {
        v240 = *v238;
        if (v240 == 2)
        {

LABEL_81:
          v251 = *(v0 + 2592);

          if (v251 == 3)
          {
            v252 = 0;
          }

          else
          {
            v252 = v251;
          }

          if (v252 == 1)
          {
            goto LABEL_99;
          }

          v253 = sub_100038A58();

          if ((v253 & 1) == 0)
          {
            v254 = *(v0 + 2592);
            if (v254 == 3)
            {
              v254 = 0;
            }

            if (v254 <= 1)
            {
              v286 = sub_100038A58();

              if ((v286 & 1) == 0)
              {
                *(v0 + 2504) = 0;
                *(v0 + 2585) = 2;
                v228 = *(v0 + 2080);
                v229 = *(v0 + 2072);
                v230 = sub_10001416C;
                goto LABEL_111;
              }

              goto LABEL_100;
            }

LABEL_99:
          }

LABEL_100:
          v287 = *(v0 + 2000);
          v288 = *(v0 + 1488);
          v289 = *(v0 + 1480);
          sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
          swift_beginAccess();
          if ((*(v288 + 48))(v287, 1, v289))
          {
            v290 = *(v0 + 2336);
            (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
          }

          else
          {
            sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
          }

          v291 = *(v0 + 1672);
          v292 = *(v0 + 1656);
          v293 = *(v0 + 1536);
          v294 = *(v0 + 1528);
          sub_10001EA34(*(v0 + 1664), v291, &qword_100048178, &unk_100039530);
          sub_10001FA38(v291, v292, &qword_100048178, &unk_100039530);
          v295 = (*(v293 + 48))(v292, 1, v294);
          v296 = *(v0 + 2096);
          v297 = *(v0 + 1656);
          if (v295 == 1)
          {
            sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
            v298 = sub_100038578();
            v299 = sub_1000387A8();
            if (os_log_type_enabled(v298, v299))
            {
              v300 = swift_slowAlloc();
              *v300 = 0;
              _os_log_impl(&_mh_execute_header, v298, v299, "Query for all available embeddings.", v300, 2u);
            }
          }

          else
          {
            v301 = *(v0 + 1560);
            v302 = *(v0 + 1552);
            v303 = *(v0 + 1544);
            v304 = *(v0 + 1536);
            v305 = *(v0 + 1528);
            (*(v304 + 32))(v301, *(v0 + 1656), v305);
            v306 = *(v304 + 16);
            v306(v302, v301, v305);
            v306(v303, v302, v305);
            v307 = *(v304 + 8);
            v307(v302, v305);
            v308 = sub_100038578();
            v309 = sub_1000387A8();
            v310 = os_log_type_enabled(v308, v309);
            v311 = *(v0 + 1560);
            v312 = *(v0 + 1544);
            v313 = *(v0 + 1528);
            if (v310)
            {
              v360 = v307;
              v314 = swift_slowAlloc();
              v369 = v311;
              v315 = swift_slowAlloc();
              v371 = v315;
              *v314 = 136315138;
              v316 = sub_100037EA8();
              v318 = v317;
              v360(v312, v313);
              v319 = sub_10001BFAC(v316, v318, &v371);

              *(v314 + 4) = v319;
              _os_log_impl(&_mh_execute_header, v308, v309, "Last queried: %s", v314, 0xCu);
              sub_10000387C(v315);

              v360(v369, v313);
            }

            else
            {

              v307(v312, v313);
              v307(v311, v313);
            }
          }

          *(v0 + 2588) = 1;
          v228 = *(v0 + 2080);
          v229 = *(v0 + 2072);
          v230 = sub_100013090;
          goto LABEL_111;
        }

        v239 = sub_100038A58();

        ++v238;
        --v237;
        if (v239)
        {
          goto LABEL_81;
        }
      }

      v241 = *(v0 + 2208);

      sub_10001E98C(v146);

      *(v0 + 2528) = 0u;
      v242 = *(v0 + 2056);
      v243 = *(v0 + 2016);
      v244 = *(v0 + 1976);
      sub_1000383C8();
      v245 = *(v244 + 32);

      sub_10001EA9C(v244, type metadata accessor for ZeoliteEvalExtensionConfig);
      LOBYTE(v244) = sub_100015E04(3u, v245);

      if (v244)
      {
        *(v0 + 2587) = 2;
        v228 = *(v0 + 2080);
        v229 = *(v0 + 2072);
        v230 = sub_100014D64;
      }

      else
      {
        swift_bridgeObjectRelease_n();
        v246 = *(v0 + 1704);
        v247 = *(v0 + 1672);
        v248 = *(v0 + 1496);
        v249 = *(v0 + 1480);
        sub_100037EF8();
        sub_10001FA38(v247, v248 + *(v249 + 20), &qword_100048178, &unk_100039530);
        sub_10001FA38(v246, v248 + *(v249 + 24), &qword_100048178, &unk_100039530);
        if (sub_100023AF0())
        {
          v250.super.isa = sub_1000385E8().super.isa;
        }

        else
        {
          v250.super.isa = 0;
        }

        v255 = *(v0 + 2120);
        v363 = *(v0 + 2128);
        v367 = *(v0 + 2096);
        v256 = *(v0 + 2056);
        v257 = *(v0 + 2040);
        v357 = *(v0 + 2144);
        v359 = *(v0 + 2032);
        v258 = *(v0 + 2024);
        v259 = *(v0 + 2016);
        v260 = *(v0 + 1976);
        sub_1000383C8();
        v371 = 0x6769666E6F63;
        v372 = 0xE600000000000000;
        *(v0 + 1448) = *v260;
        v376._countAndFlagsBits = sub_100038A38();
        sub_100038698(v376);

        sub_10001EA9C(v260, type metadata accessor for ZeoliteEvalExtensionConfig);
        v261 = sub_100038638();

        [v357 setValue:v250.super.isa forKey:v261];

        swift_unknownObjectRelease();
        v255(v257, v256, v259);
        v255(v359, v257, v259);
        v262 = *(v258 + 8);
        *(v0 + 2544) = v262;
        *(v0 + 2552) = (v258 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v262(v257, v259);
        v263 = sub_100038578();
        v264 = sub_1000387A8();
        v265 = os_log_type_enabled(v263, v264);
        v266 = *(v0 + 2032);
        v267 = *(v0 + 2016);
        if (v265)
        {
          v268 = *(v0 + 1976);
          v269 = swift_slowAlloc();
          v368 = swift_slowAlloc();
          v370 = v368;
          *v269 = 136315138;
          v364 = v264;
          sub_1000383C8();
          v371 = 0x6769666E6F63;
          v372 = 0xE600000000000000;
          *(v0 + 1456) = *v268;
          v377._countAndFlagsBits = sub_100038A38();
          sub_100038698(v377);

          v270 = v371;
          v271 = v372;
          sub_10001EA9C(v268, type metadata accessor for ZeoliteEvalExtensionConfig);
          v262(v266, v267);
          v272 = sub_10001BFAC(v270, v271, &v370);

          *(v269 + 4) = v272;
          _os_log_impl(&_mh_execute_header, v263, v364, "Execution state saved for %s.", v269, 0xCu);
          sub_10000387C(v368);
        }

        else
        {

          v262(v266, v267);
        }

        v273 = *(v0 + 2096);
        v274 = *(v0 + 1768);
        v275 = *(v0 + 1760);
        v276 = *(v0 + 1752);
        v277 = *(v0 + 1744);
        sub_100038868();
        sub_100038878();
        v278 = *(v276 + 8);
        *(v0 + 2560) = v278;
        *(v0 + 2568) = (v276 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v278(v275, v277);
        v279 = sub_100038578();
        v280 = sub_1000387A8();
        if (os_log_type_enabled(v279, v280))
        {
          v281 = swift_slowAlloc();
          v282 = swift_slowAlloc();
          v371 = v282;
          *v281 = 136315138;
          v283 = sub_100038B78();
          v285 = sub_10001BFAC(v283, v284, &v371);

          *(v281 + 4) = v285;
          _os_log_impl(&_mh_execute_header, v279, v280, "Time elapsed: %s.", v281, 0xCu);
          sub_10000387C(v282);
        }

        *(v0 + 2586) = 4;
        v228 = *(v0 + 2080);
        v229 = *(v0 + 2072);
        v230 = sub_100015958;
      }

LABEL_111:

      return _swift_task_switch(v230, v229, v228);
    }

    else
    {
      (*(*(v0 + 1856) + 32))(*(v0 + 1864), *(v0 + 1816), *(v0 + 1848));
      sub_100038308();
      v113 = sub_100038418();
      v115 = v114;
      *(v0 + 2168) = v114;
      v116 = sub_100038408();
      v118 = v117;
      *(v0 + 2176) = v117;
      v119 = async function pointer to static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)[1];
      v120 = swift_task_alloc();
      *(v0 + 2184) = v120;
      *v120 = v0;
      v120[1] = sub_1000081A8;
      v121 = *(v0 + 1464);

      return static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(v121, v113, v115, v116, v118);
    }
  }

  else
  {
    v92 = *(v0 + 2096);
    v93 = sub_100038578();
    v94 = sub_1000387C8();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v371 = v96;
      *v95 = 136315138;
      *(v95 + 4) = sub_10001BFAC(0xD000000000000011, 0x800000010003B970, &v371);
      _os_log_impl(&_mh_execute_header, v93, v94, "Failed to fetch suite %s from user defaults.", v95, 0xCu);
      sub_10000387C(v96);
    }

    v97 = *(v0 + 2056);
    v98 = *(v0 + 2024);
    v99 = *(v0 + 2016);
    v100 = objc_allocWithZone(sub_100038388());
    v366 = sub_100038378();
    v23(v97, v99);
    v101 = *(v0 + 2056);
    v102 = *(v0 + 2048);
    v103 = *(v0 + 2040);
    v104 = *(v0 + 2032);
    v105 = *(v0 + 2008);
    v106 = *(v0 + 2000);
    v107 = *(v0 + 1992);
    v108 = *(v0 + 1976);
    v109 = *(v0 + 1968);
    v110 = *(v0 + 1960);
    v320 = *(v0 + 1952);
    v321 = *(v0 + 1944);
    v322 = *(v0 + 1936);
    v323 = *(v0 + 1928);
    v324 = *(v0 + 1920);
    v325 = *(v0 + 1912);
    v326 = *(v0 + 1904);
    v327 = *(v0 + 1896);
    v328 = *(v0 + 1888);
    v329 = *(v0 + 1880);
    v330 = *(v0 + 1864);
    v331 = *(v0 + 1840);
    v332 = *(v0 + 1816);
    v333 = *(v0 + 1808);
    v334 = *(v0 + 1800);
    v335 = *(v0 + 1792);
    v336 = *(v0 + 1768);
    v337 = *(v0 + 1760);
    v338 = *(v0 + 1736);
    v339 = *(v0 + 1712);
    v340 = *(v0 + 1704);
    v341 = *(v0 + 1696);
    v342 = *(v0 + 1688);
    v343 = *(v0 + 1680);
    v344 = *(v0 + 1672);
    v345 = *(v0 + 1664);
    v346 = *(v0 + 1656);
    v347 = *(v0 + 1648);
    v348 = *(v0 + 1640);
    v349 = *(v0 + 1632);
    v350 = *(v0 + 1624);
    v351 = *(v0 + 1600);
    v352 = *(v0 + 1576);
    v353 = *(v0 + 1568);
    v354 = *(v0 + 1560);
    v355 = *(v0 + 1552);
    v356 = *(v0 + 1544);
    v358 = *(v0 + 1520);
    v362 = *(v0 + 1496);

    v111 = *(v0 + 8);

    return v111(v366);
  }
}

uint64_t sub_1000081A8(uint64_t a1)
{
  v2 = *(*v1 + 2184);
  v3 = *(*v1 + 2176);
  v4 = *(*v1 + 2168);
  v6 = *v1;
  *(*v1 + 2192) = a1;

  return _swift_task_switch(sub_1000082E4, 0, 0);
}

uint64_t sub_1000082E4()
{
  v268 = v0;
  v1 = (v0 + 384);
  v2 = *(v0 + 2192);
  (*(*(v0 + 1856) + 8))(*(v0 + 1864), *(v0 + 1848));
  if (v2)
  {
    v3 = *(v0 + 2192);
    v4 = *(v0 + 2160);
    v5 = *(v0 + 2096);
    swift_retain_n();

    v6 = sub_100038578();
    v7 = sub_1000387A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 1808);
      v9 = *(v0 + 1784);
      v10 = *(v0 + 1776);
      buf = swift_slowAlloc();
      v261 = swift_slowAlloc();
      v266 = v261;
      *buf = 136315138;
      v258 = v7;
      sub_1000382F8();
      sub_10001FAA0(&qword_100048320, &type metadata accessor for URL);
      v11 = v10;
      v12 = sub_100038A38();
      v14 = v13;
      (*(v9 + 8))(v8, v11);
      v15 = sub_10001BFAC(v12, v14, &v266);

      *(buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v258, "autoAsset available: %s", buf, 0xCu);
      sub_10000387C(v261);
    }

    v16 = *(v0 + 1808);
    v17 = *(v0 + 1800);
    v18 = *(v0 + 1784);
    v19 = *(v0 + 1776);
    sub_1000382F8();
    sub_100037E08();
    v20 = *(v18 + 8);
    v20(v16, v19);
    v21 = sub_100037E38(1);
    v23 = v22;

    v20(v17, v19);
  }

  else
  {
    v3 = 0;
    v23 = *(v0 + 2160);
    v21 = *(v0 + 2152);
  }

  *(v0 + 2216) = v3;
  *(v0 + 2208) = v23;
  *(v0 + 2200) = v21;
  v24 = *(v0 + 2056);
  v25 = *(v0 + 2016);
  v26 = *(v0 + 1968);
  v27 = *(v0 + 1768);
  sub_100038868();
  sub_1000383C8();
  v28 = *(v26 + 40);
  v29 = *(v26 + 56);
  v30 = *(v26 + 88);
  *(v0 + 416) = *(v26 + 72);
  *(v0 + 432) = v30;
  *v1 = v28;
  *(v0 + 400) = v29;
  v31 = *(v26 + 104);
  v32 = *(v26 + 120);
  v33 = *(v26 + 152);
  *(v0 + 480) = *(v26 + 136);
  *(v0 + 496) = v33;
  *(v0 + 448) = v31;
  *(v0 + 464) = v32;
  v34 = *(v26 + 168);
  v35 = *(v26 + 184);
  v36 = *(v26 + 200);
  *(v0 + 560) = *(v26 + 216);
  *(v0 + 528) = v35;
  *(v0 + 544) = v36;
  *(v0 + 512) = v34;
  sub_10001FA38(v0 + 384, v0 + 568, &qword_100048300, &qword_100039558);
  sub_10001EA9C(v26, type metadata accessor for ZeoliteEvalExtensionConfig);
  v37 = *(v0 + 528);
  *(v0 + 328) = *(v0 + 512);
  *(v0 + 344) = v37;
  *(v0 + 360) = *(v0 + 544);
  *(v0 + 376) = *(v0 + 560);
  v38 = *(v0 + 464);
  *(v0 + 264) = *(v0 + 448);
  *(v0 + 280) = v38;
  v39 = *(v0 + 496);
  *(v0 + 296) = *(v0 + 480);
  *(v0 + 312) = v39;
  v40 = *(v0 + 400);
  *(v0 + 200) = *v1;
  *(v0 + 216) = v40;
  v41 = *(v0 + 432);
  *(v0 + 232) = *(v0 + 416);
  *(v0 + 248) = v41;
  if (sub_10001E888(v0 + 200) == 1)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = xmmword_1000391C0;
    v46 = 0uLL;
    v47 = xmmword_1000391D0;
    v48 = 3;
    v49 = 1;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
  }

  else
  {
    v48 = *(v0 + 384);
    v42 = *(v0 + 392);
    v53 = *(v0 + 400);
    v54 = *(v0 + 416);
    v45 = *(v0 + 432);
    v55 = *(v0 + 448);
    v43 = *(v0 + 464);
    v44 = *(v0 + 472);
    v46 = *(v0 + 480);
    v47 = *(v0 + 496);
    v50 = *(v0 + 512);
    v51 = *(v0 + 528);
    v52 = *(v0 + 544);
    v49 = *(v0 + 560);
  }

  *(v0 + 2591) = v48;
  v56 = *(v0 + 2056);
  v57 = *(v0 + 2016);
  v58 = *(v0 + 1960);
  v59 = *(v0 + 1872);
  v60 = *(v0 + 1728);
  v61 = *(v0 + 1720);
  v62 = *(v0 + 1712);
  *(v0 + 752) = v48;
  *(v0 + 760) = v42;
  *(v0 + 768) = v53;
  *(v0 + 784) = v54;
  *(v0 + 800) = v45;
  *(v0 + 816) = v55;
  *(v0 + 832) = v43;
  *(v0 + 840) = v44;
  *(v0 + 848) = v46;
  *(v0 + 864) = v47;
  *(v0 + 880) = v50;
  *(v0 + 896) = v51;
  *(v0 + 912) = v52;
  *(v0 + 928) = v49;
  v63 = *(v0 + 752);
  v64 = *(v0 + 768);
  v65 = *(v0 + 800);
  *(v0 + 48) = *(v0 + 784);
  *(v0 + 64) = v65;
  *(v0 + 16) = v63;
  *(v0 + 32) = v64;
  v66 = *(v0 + 816);
  v67 = *(v0 + 832);
  v68 = *(v0 + 864);
  *(v0 + 112) = *(v0 + 848);
  *(v0 + 128) = v68;
  *(v0 + 80) = v66;
  *(v0 + 96) = v67;
  v69 = *(v0 + 896);
  *(v0 + 144) = *(v0 + 880);
  *(v0 + 160) = v69;
  *(v0 + 176) = *(v0 + 912);
  *(v0 + 192) = *(v0 + 928);
  sub_1000383C8();
  sub_10001FA38(v58 + *(v59 + 40), v62, &qword_1000482D0, &unk_100039900);
  sub_10001EA9C(v58, type metadata accessor for ZeoliteEvalExtensionConfig);
  v70 = *(v60 + 48);
  v71 = v70(v62, 1, v61);
  v72 = *(v0 + 1736);
  if (v71 == 1)
  {
    v73 = *(v0 + 1720);
    v74 = *(v0 + 1712);
    *v72 = 0;
    v75 = v73[5];
    v76 = enum case for EmbedderName.MADTextEmbedder(_:);
    v77 = sub_100037FC8();
    (*(*(v77 - 8) + 104))(&v72[v75], v76, v77);
    v78 = &v72[v73[6]];
    *v78 = 0;
    v78[1] = 0;
    v79 = &v72[v73[7]];
    *v79 = 0;
    v79[1] = 0;
    if (v70(v74, 1, v73) != 1)
    {
      sub_10001FD94(*(v0 + 1712), &qword_1000482D0, &unk_100039900);
    }
  }

  else
  {
    sub_10001FD2C(*(v0 + 1712), v72, type metadata accessor for EmbedParameters);
  }

  v80 = *(v0 + 2056);
  v81 = *(v0 + 2016);
  v82 = *(v0 + 1952);
  v83 = *(v0 + 1872);
  sub_1000383C8();
  v84 = v82 + *(v83 + 44);
  v85 = *(v84 + 16);
  *(v0 + 1112) = *v84;
  *(v0 + 1128) = v85;
  v86 = *(v84 + 32);
  v87 = *(v84 + 48);
  v88 = *(v84 + 64);
  *(v0 + 1192) = *(v84 + 80);
  *(v0 + 1160) = v87;
  *(v0 + 1176) = v88;
  *(v0 + 1144) = v86;
  sub_10001FA38(v0 + 1112, v0 + 1200, &qword_100048308, &qword_100039560);
  sub_10001EA9C(v82, type metadata accessor for ZeoliteEvalExtensionConfig);
  v89 = *(v0 + 1136);
  if (v89 == 1)
  {
    v90 = 0;
    v91 = 0;
    v89 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0uLL;
    v95 = 3;
    v96 = 0uLL;
    v97 = 10;
  }

  else
  {
    v90 = *(v0 + 1112);
    v97 = *(v0 + 1120);
    v91 = *(v0 + 1128);
    v95 = *(v0 + 1144);
    v92 = *(v0 + 1152);
    v93 = *(v0 + 1160);
    v94 = *(v0 + 1168);
    v96 = *(v0 + 1184);
  }

  *(v0 + 2248) = v93;
  *(v0 + 2240) = v92;
  *(v0 + 2593) = v95;
  *(v0 + 2232) = v89;
  *(v0 + 2224) = v91;
  *(v0 + 2592) = v90;
  v98 = *(v0 + 2056);
  v99 = *(v0 + 2016);
  v100 = *(v0 + 1944);
  v101 = *(v0 + 1936);
  v102 = *(v0 + 1872);
  *(v0 + 936) = v90;
  *(v0 + 944) = v97;
  *(v0 + 952) = v91;
  *(v0 + 960) = v89;
  *(v0 + 968) = v95;
  *(v0 + 976) = v92;
  *(v0 + 984) = v93;
  *(v0 + 992) = v94;
  *(v0 + 1008) = v96;
  v103 = *(v0 + 984);
  *(v0 + 1056) = *(v0 + 968);
  *(v0 + 1072) = v103;
  v104 = *(v0 + 952);
  *(v0 + 1024) = *(v0 + 936);
  *(v0 + 1040) = v104;
  *(v0 + 1088) = *(v0 + 1000);
  *(v0 + 1104) = *(v0 + 1016);
  sub_1000383C8();
  *(v0 + 2580) = *(v100 + *(v102 + 48));
  sub_10001EA9C(v100, type metadata accessor for ZeoliteEvalExtensionConfig);
  sub_1000383C8();
  v105 = (v101 + *(v102 + 52));
  v107 = *v105;
  v106 = v105[1];
  v108 = v105[2];
  v109 = v105[3];
  sub_10001E8AC(*v105, v106);
  sub_10001EA9C(v101, type metadata accessor for ZeoliteEvalExtensionConfig);
  if (!v106)
  {
    v108 = 0xD000000000000028;
    v106 = 0x800000010003B990;
    v109 = 0x800000010003B9C0;
    v107 = 0xD00000000000002FLL;
  }

  *(v0 + 2280) = v109;
  *(v0 + 2272) = v108;
  *(v0 + 2264) = v106;
  *(v0 + 2256) = v107;
  v110 = *(v0 + 2056);
  v111 = *(v0 + 2016);
  v112 = *(v0 + 1928);
  v113 = *(v0 + 1872);
  sub_1000383C8();
  v114 = v112 + *(v113 + 56);
  v115 = *v114;
  v116 = *(v114 + 8);
  v117 = *(v114 + 16);
  v118 = *(v114 + 24);
  v119 = *(v114 + 32);
  v120 = *(v114 + 40);
  sub_10001E8F0(*v114, v116);
  sub_10001EA9C(v112, type metadata accessor for ZeoliteEvalExtensionConfig);
  if (v116 == 1)
  {
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 1;
  }

  *(v0 + 2594) = v120 & 1;
  *(v0 + 2320) = v119;
  *(v0 + 2312) = v118;
  *(v0 + 2304) = v117;
  *(v0 + 2296) = v116;
  *(v0 + 2288) = v115;
  v121 = *(v0 + 2056);
  v122 = *(v0 + 2016);
  v123 = *(v0 + 1920);
  v124 = *(v0 + 1704);
  v125 = *(v0 + 1536);
  v126 = *(v0 + 1528);
  *(v0 + 2595) = **(v0 + 1736);
  v127 = *(v125 + 56);
  *(v0 + 2328) = v127;
  *(v0 + 2336) = (v125 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v127(v124, 1, 1, v126);
  sub_1000383C8();
  v128 = *(v123 + 32);

  sub_10001EA9C(v123, type metadata accessor for ZeoliteEvalExtensionConfig);
  v129 = *(v128 + 16);
  v130 = (v128 + 32);
  while (v129)
  {
    v132 = *v130;
    if (v132 <= 2 && v132 != 1 && v132 != 2)
    {

LABEL_48:

      *(v0 + 2582) = 1;
      v161 = *(v0 + 2080);
      v162 = *(v0 + 2072);
      v163 = sub_100009BFC;
      goto LABEL_95;
    }

    v131 = sub_100038A58();

    ++v130;
    --v129;
    if (v131)
    {
      goto LABEL_48;
    }
  }

  *(v0 + 2360) = 0;
  v133 = *(v0 + 2056);
  v134 = *(v0 + 2016);
  v135 = *(v0 + 1912);
  sub_1000383C8();
  v136 = *(v135 + 32);

  sub_10001EA9C(v135, type metadata accessor for ZeoliteEvalExtensionConfig);
  v137 = *(v136 + 16);
  v138 = (v136 + 32);
  while (v137)
  {
    v140 = *v138;
    if (v140 >= 4 && v140 != 5)
    {

LABEL_55:

      *(v0 + 2590) = 2;
      v161 = *(v0 + 2080);
      v162 = *(v0 + 2072);
      v163 = sub_10000B574;
      goto LABEL_95;
    }

    v139 = sub_100038A58();

    ++v138;
    --v137;
    if (v139)
    {
      goto LABEL_55;
    }
  }

  v141 = *(v0 + 2280);
  v142 = *(v0 + 2264);

  v143 = *(v0 + 2056);
  v144 = *(v0 + 2016);
  v145 = *(v0 + 1904);
  sub_1000383C8();
  v146 = *(v145 + 32);

  sub_10001EA9C(v145, type metadata accessor for ZeoliteEvalExtensionConfig);
  v147 = *(v146 + 16);
  v148 = (v146 + 32);
  while (v147)
  {
    v150 = *v148;
    if (v150 > 4)
    {

LABEL_59:

      *(v0 + 2583) = 2;
      v161 = *(v0 + 2080);
      v162 = *(v0 + 2072);
      v163 = sub_10000E8A4;
      goto LABEL_95;
    }

    v149 = sub_100038A58();

    ++v148;
    --v147;
    if (v149)
    {
      goto LABEL_59;
    }
  }

  v151 = *(v0 + 2312);
  v152 = *(v0 + 2296);

  v153 = *(v0 + 2056);
  v154 = *(v0 + 2016);
  v155 = *(v0 + 1896);
  sub_1000383C8();
  v156 = *(v155 + 32);

  sub_10001EA9C(v155, type metadata accessor for ZeoliteEvalExtensionConfig);
  v157 = *(v156 + 16);
  v158 = (v156 + 32);
  while (v157)
  {
    v160 = *v158;
    if (v160 <= 2 && *v158 && v160 != 2)
    {

LABEL_63:

      *(v0 + 2584) = 2;
      v161 = *(v0 + 2080);
      v162 = *(v0 + 2072);
      v163 = sub_1000102D4;
      goto LABEL_95;
    }

    v159 = sub_100038A58();

    ++v158;
    --v157;
    if (v159)
    {
      goto LABEL_63;
    }
  }

  v164 = *(v0 + 2360);

  sub_10001E938(v0 + 752);

  *(v0 + 2480) = 0;
  v165 = *(v0 + 2336);
  v166 = *(v0 + 2056);
  v167 = *(v0 + 2016);
  v168 = *(v0 + 1888);
  (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
  sub_1000383C8();
  v169 = *(v168 + 32);

  sub_10001EA9C(v168, type metadata accessor for ZeoliteEvalExtensionConfig);
  v170 = *(v169 + 16);
  v171 = (v169 + 32);
  while (v170)
  {
    v173 = *v171;
    if (v173 == 2)
    {

LABEL_65:
      v184 = *(v0 + 2592);

      if (v184 == 3)
      {
        v185 = 0;
      }

      else
      {
        v185 = v184;
      }

      if (v185 == 1)
      {
        goto LABEL_83;
      }

      v186 = sub_100038A58();

      if ((v186 & 1) == 0)
      {
        v187 = *(v0 + 2592);
        if (v187 == 3)
        {
          v187 = 0;
        }

        if (v187 <= 1)
        {
          v219 = sub_100038A58();

          if ((v219 & 1) == 0)
          {
            *(v0 + 2504) = 0;
            *(v0 + 2585) = 2;
            v161 = *(v0 + 2080);
            v162 = *(v0 + 2072);
            v163 = sub_10001416C;
            goto LABEL_95;
          }

          goto LABEL_84;
        }

LABEL_83:
      }

LABEL_84:
      v220 = *(v0 + 2000);
      v221 = *(v0 + 1488);
      v222 = *(v0 + 1480);
      sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
      swift_beginAccess();
      if ((*(v221 + 48))(v220, 1, v222))
      {
        v223 = *(v0 + 2336);
        (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
      }

      else
      {
        sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
      }

      v224 = *(v0 + 1672);
      v225 = *(v0 + 1656);
      v226 = *(v0 + 1536);
      v227 = *(v0 + 1528);
      sub_10001EA34(*(v0 + 1664), v224, &qword_100048178, &unk_100039530);
      sub_10001FA38(v224, v225, &qword_100048178, &unk_100039530);
      v228 = (*(v226 + 48))(v225, 1, v227);
      v229 = *(v0 + 2096);
      v230 = *(v0 + 1656);
      if (v228 == 1)
      {
        sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
        v231 = sub_100038578();
        v232 = sub_1000387A8();
        if (os_log_type_enabled(v231, v232))
        {
          v233 = swift_slowAlloc();
          *v233 = 0;
          _os_log_impl(&_mh_execute_header, v231, v232, "Query for all available embeddings.", v233, 2u);
        }
      }

      else
      {
        v234 = *(v0 + 1560);
        v235 = *(v0 + 1552);
        v236 = *(v0 + 1544);
        v237 = *(v0 + 1536);
        v238 = *(v0 + 1528);
        (*(v237 + 32))(v234, *(v0 + 1656), v238);
        v239 = *(v237 + 16);
        v239(v235, v234, v238);
        v239(v236, v235, v238);
        v240 = *(v237 + 8);
        (v240)(v235, v238);
        v241 = sub_100038578();
        v242 = sub_1000387A8();
        v243 = os_log_type_enabled(v241, v242);
        v244 = *(v0 + 1560);
        v245 = *(v0 + 1544);
        v246 = *(v0 + 1528);
        if (v243)
        {
          bufb = v240;
          v247 = swift_slowAlloc();
          v264 = v244;
          v248 = swift_slowAlloc();
          v266 = v248;
          *v247 = 136315138;
          v249 = sub_100037EA8();
          v251 = v250;
          (bufb)(v245, v246);
          v252 = sub_10001BFAC(v249, v251, &v266);

          *(v247 + 4) = v252;
          _os_log_impl(&_mh_execute_header, v241, v242, "Last queried: %s", v247, 0xCu);
          sub_10000387C(v248);

          (bufb)(v264, v246);
        }

        else
        {

          (v240)(v245, v246);
          (v240)(v244, v246);
        }
      }

      *(v0 + 2588) = 1;
      v161 = *(v0 + 2080);
      v162 = *(v0 + 2072);
      v163 = sub_100013090;
      goto LABEL_95;
    }

    v172 = sub_100038A58();

    ++v171;
    --v170;
    if (v172)
    {
      goto LABEL_65;
    }
  }

  v174 = *(v0 + 2208);

  sub_10001E98C(v0 + 936);

  *(v0 + 2528) = 0u;
  v175 = *(v0 + 2056);
  v176 = *(v0 + 2016);
  v177 = *(v0 + 1976);
  sub_1000383C8();
  v178 = *(v177 + 32);

  sub_10001EA9C(v177, type metadata accessor for ZeoliteEvalExtensionConfig);
  LOBYTE(v177) = sub_100015E04(3u, v178);

  if (v177)
  {
    *(v0 + 2587) = 2;
    v161 = *(v0 + 2080);
    v162 = *(v0 + 2072);
    v163 = sub_100014D64;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v179 = *(v0 + 1704);
    v180 = *(v0 + 1672);
    v181 = *(v0 + 1496);
    v182 = *(v0 + 1480);
    sub_100037EF8();
    sub_10001FA38(v180, v181 + *(v182 + 20), &qword_100048178, &unk_100039530);
    sub_10001FA38(v179, v181 + *(v182 + 24), &qword_100048178, &unk_100039530);
    if (sub_100023AF0())
    {
      v183.super.isa = sub_1000385E8().super.isa;
    }

    else
    {
      v183.super.isa = 0;
    }

    v188 = *(v0 + 2120);
    v259 = *(v0 + 2128);
    v262 = *(v0 + 2096);
    v189 = *(v0 + 2056);
    v190 = *(v0 + 2040);
    v254 = *(v0 + 2144);
    bufa = *(v0 + 2032);
    v191 = *(v0 + 2024);
    v192 = *(v0 + 2016);
    v193 = *(v0 + 1976);
    sub_1000383C8();
    v266 = 0x6769666E6F63;
    v267 = 0xE600000000000000;
    *(v0 + 1448) = *v193;
    v270._countAndFlagsBits = sub_100038A38();
    sub_100038698(v270);

    sub_10001EA9C(v193, type metadata accessor for ZeoliteEvalExtensionConfig);
    v194 = sub_100038638();

    [v254 setValue:v183.super.isa forKey:v194];

    swift_unknownObjectRelease();
    v188(v190, v189, v192);
    v188(bufa, v190, v192);
    v195 = *(v191 + 8);
    *(v0 + 2544) = v195;
    *(v0 + 2552) = (v191 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v195(v190, v192);
    v196 = sub_100038578();
    v197 = sub_1000387A8();
    v198 = os_log_type_enabled(v196, v197);
    v199 = *(v0 + 2032);
    v200 = *(v0 + 2016);
    if (v198)
    {
      v201 = *(v0 + 1976);
      v202 = swift_slowAlloc();
      v263 = swift_slowAlloc();
      v265 = v263;
      *v202 = 136315138;
      v260 = v197;
      sub_1000383C8();
      v266 = 0x6769666E6F63;
      v267 = 0xE600000000000000;
      *(v0 + 1456) = *v201;
      v271._countAndFlagsBits = sub_100038A38();
      sub_100038698(v271);

      v203 = v266;
      v204 = v267;
      sub_10001EA9C(v201, type metadata accessor for ZeoliteEvalExtensionConfig);
      v195(v199, v200);
      v205 = sub_10001BFAC(v203, v204, &v265);

      *(v202 + 4) = v205;
      _os_log_impl(&_mh_execute_header, v196, v260, "Execution state saved for %s.", v202, 0xCu);
      sub_10000387C(v263);
    }

    else
    {

      v195(v199, v200);
    }

    v206 = *(v0 + 2096);
    v207 = *(v0 + 1768);
    v208 = *(v0 + 1760);
    v209 = *(v0 + 1752);
    v210 = *(v0 + 1744);
    sub_100038868();
    sub_100038878();
    v211 = *(v209 + 8);
    *(v0 + 2560) = v211;
    *(v0 + 2568) = (v209 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v211(v208, v210);
    v212 = sub_100038578();
    v213 = sub_1000387A8();
    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v266 = v215;
      *v214 = 136315138;
      v216 = sub_100038B78();
      v218 = sub_10001BFAC(v216, v217, &v266);

      *(v214 + 4) = v218;
      _os_log_impl(&_mh_execute_header, v212, v213, "Time elapsed: %s.", v214, 0xCu);
      sub_10000387C(v215);
    }

    *(v0 + 2586) = 4;
    v161 = *(v0 + 2080);
    v162 = *(v0 + 2072);
    v163 = sub_100015958;
  }

LABEL_95:

  return _swift_task_switch(v163, v162, v161);
}

uint64_t sub_100009BFC()
{
  v1 = v0[261];
  v2 = v0[258];
  v3 = v0[183];
  sub_100038318();

  return _swift_task_switch(sub_100009C78, 0, 0);
}

uint64_t sub_100009C78()
{
  v1 = *(v0 + 2056);
  v2 = *(v0 + 2016);
  v3 = *(v0 + 1976);
  sub_1000383C8();
  LOBYTE(v1) = *(v3 + 8);
  sub_10001EA9C(v3, type metadata accessor for ZeoliteEvalExtensionConfig);
  if ((v1 & 1) != 0 || (v4 = *(v0 + 2000), v5 = *(v0 + 1488), v6 = *(v0 + 1480), swift_beginAccess(), (*(v5 + 48))(v4, 1, v6)))
  {
    v7 = *(v0 + 2336);
    (*(v0 + 2328))(*(v0 + 1688), 1, 1, *(v0 + 1528));
  }

  else
  {
    sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 24), *(v0 + 1688), &qword_100048178, &unk_100039530);
  }

  sub_10001EA34(*(v0 + 1688), *(v0 + 1696), &qword_100048178, &unk_100039530);
  v8 = swift_task_alloc();
  *(v0 + 2344) = v8;
  *v8 = v0;
  v8[1] = sub_100009DF8;
  v9 = *(v0 + 1696);
  v10 = *(v0 + 1680);

  return sub_100015FF4(v10, v0 + 16, v9);
}

uint64_t sub_100009DF8(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2344);
  v6 = *v2;
  *(v3 + 2352) = a1;
  *(v3 + 2596) = a2;

  return _swift_task_switch(sub_100009EFC, 0, 0);
}

uint64_t sub_100009EFC()
{
  v230 = v0;
  v1 = *(v0 + 2596);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1680);
  sub_10001FD94(v2, &qword_100048178, &unk_100039530);
  sub_10001EA34(v3, v2, &qword_100048178, &unk_100039530);
  v4 = *(v0 + 2352);
  if (v1 != 24)
  {
    v13 = *(v0 + 2312);
    v14 = *(v0 + 2296);
    v15 = *(v0 + 2280);
    v16 = *(v0 + 2264);
    v17 = *(v0 + 2208);
    v18 = *(v0 + 2096);
    sub_10001E938(v0 + 752);

    sub_10001E98C(v0 + 936);

    v19 = sub_100038578();
    v20 = sub_1000387C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to run extract step.", v21, 2u);
    }

    v22 = *(v0 + 2596);
    v23 = *(v0 + 2216);
    v24 = *(v0 + 2144);
    v204 = *(v0 + 2024);
    v206 = *(v0 + 2016);
    v208 = *(v0 + 2056);
    v213 = *(v0 + 2136);
    v217 = *(v0 + 2000);
    v25 = *(v0 + 1768);
    v26 = *(v0 + 1752);
    v27 = *(v0 + 1744);
    v210 = *(v0 + 1736);
    v28 = *(v0 + 1704);
    v29 = *(v0 + 1696);

    v228 = &type metadata for ZeoliteEvalExtensionError;
    v229 = sub_10001E9E0();
    LOBYTE(v226) = v22;
    v30 = objc_allocWithZone(sub_100038388());
    v221 = sub_100038368();

    sub_10001FD94(v29, &qword_100048178, &unk_100039530);
    sub_10001FD94(v28, &qword_100048178, &unk_100039530);
    (*(v26 + 8))(v25, v27);
    goto LABEL_13;
  }

  if (v4 && !*(v4 + 16))
  {
    v53 = *(v0 + 2312);
    v54 = *(v0 + 2296);
    v55 = *(v0 + 2280);
    v56 = *(v0 + 2264);
    v57 = *(v0 + 2208);
    v58 = *(v0 + 2096);
    sub_10001E938(v0 + 752);

    sub_10001E98C(v0 + 936);

    v59 = sub_100038578();
    v60 = sub_1000387A8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Extracted empty data.", v61, 2u);
    }

    v62 = *(v0 + 2216);
    v63 = *(v0 + 2144);
    v64 = *(v0 + 2024);
    v206 = *(v0 + 2016);
    v208 = *(v0 + 2056);
    v213 = *(v0 + 2136);
    v217 = *(v0 + 2000);
    v65 = *(v0 + 1768);
    v66 = *(v0 + 1752);
    v67 = *(v0 + 1744);
    v210 = *(v0 + 1736);
    v68 = *(v0 + 1704);
    v69 = *(v0 + 1696);

    v228 = &type metadata for ZeoliteEvalExtensionError;
    v229 = sub_10001E9E0();
    LOBYTE(v226) = 8;
    v70 = objc_allocWithZone(sub_100038388());
    v221 = sub_100038368();

    sub_10001FD94(v69, &qword_100048178, &unk_100039530);
    sub_10001FD94(v68, &qword_100048178, &unk_100039530);
    (*(v66 + 8))(v65, v67);
LABEL_13:
    v213(v208, v206);
    sub_10001EA9C(v210, type metadata accessor for EmbedParameters);
    sub_10001FD94(v217, &qword_1000482E0, &qword_100039548);
    v31 = *(v0 + 2056);
    v32 = *(v0 + 2048);
    v33 = *(v0 + 2040);
    v34 = *(v0 + 2032);
    v35 = *(v0 + 2008);
    v36 = *(v0 + 2000);
    v37 = *(v0 + 1992);
    v38 = *(v0 + 1976);
    v39 = *(v0 + 1968);
    v40 = *(v0 + 1960);
    v171 = *(v0 + 1952);
    v172 = *(v0 + 1944);
    v173 = *(v0 + 1936);
    v174 = *(v0 + 1928);
    v175 = *(v0 + 1920);
    v176 = *(v0 + 1912);
    v177 = *(v0 + 1904);
    v178 = *(v0 + 1896);
    v179 = *(v0 + 1888);
    v180 = *(v0 + 1880);
    v181 = *(v0 + 1864);
    v182 = *(v0 + 1840);
    v183 = *(v0 + 1816);
    v184 = *(v0 + 1808);
    v185 = *(v0 + 1800);
    v186 = *(v0 + 1792);
    v187 = *(v0 + 1768);
    v188 = *(v0 + 1760);
    v189 = *(v0 + 1736);
    v190 = *(v0 + 1712);
    v191 = *(v0 + 1704);
    v192 = *(v0 + 1696);
    v193 = *(v0 + 1688);
    v194 = *(v0 + 1680);
    v195 = *(v0 + 1672);
    v196 = *(v0 + 1664);
    v197 = *(v0 + 1656);
    v198 = *(v0 + 1648);
    v199 = *(v0 + 1640);
    v200 = *(v0 + 1632);
    v201 = *(v0 + 1624);
    v202 = *(v0 + 1600);
    v203 = *(v0 + 1576);
    v205 = *(v0 + 1568);
    v207 = *(v0 + 1560);
    v209 = *(v0 + 1552);
    v211 = *(v0 + 1544);
    v214 = *(v0 + 1520);
    v218 = *(v0 + 1496);

    v41 = *(v0 + 8);

    return v41(v221);
  }

  sub_10001FD94(*(v0 + 1696), &qword_100048178, &unk_100039530);
  *(v0 + 2360) = *(v0 + 2352);
  v5 = *(v0 + 2056);
  v6 = *(v0 + 2016);
  v7 = *(v0 + 1912);
  sub_1000383C8();
  v8 = *(v7 + 32);

  sub_10001EA9C(v7, type metadata accessor for ZeoliteEvalExtensionConfig);
  v9 = *(v8 + 16);
  v10 = (v8 + 32);
  while (v9)
  {
    v12 = *v10;
    if (v12 >= 4 && v12 != 5)
    {

LABEL_38:

      *(v0 + 2590) = 2;
      v91 = *(v0 + 2080);
      v92 = *(v0 + 2072);
      v93 = sub_10000B574;
      goto LABEL_78;
    }

    v11 = sub_100038A58();

    ++v10;
    --v9;
    if (v11)
    {
      goto LABEL_38;
    }
  }

  v43 = *(v0 + 2280);
  v44 = *(v0 + 2264);

  v45 = *(v0 + 2056);
  v46 = *(v0 + 2016);
  v47 = *(v0 + 1904);
  sub_1000383C8();
  v48 = *(v47 + 32);

  sub_10001EA9C(v47, type metadata accessor for ZeoliteEvalExtensionConfig);
  v49 = *(v48 + 16);
  v50 = (v48 + 32);
  while (v49)
  {
    v52 = *v50;
    if (v52 > 4)
    {

LABEL_42:

      *(v0 + 2583) = 2;
      v91 = *(v0 + 2080);
      v92 = *(v0 + 2072);
      v93 = sub_10000E8A4;
      goto LABEL_78;
    }

    v51 = sub_100038A58();

    ++v50;
    --v49;
    if (v51)
    {
      goto LABEL_42;
    }
  }

  v71 = *(v0 + 2312);
  v72 = *(v0 + 2296);

  v73 = *(v0 + 2056);
  v74 = *(v0 + 2016);
  v75 = *(v0 + 1896);
  sub_1000383C8();
  v76 = *(v75 + 32);

  sub_10001EA9C(v75, type metadata accessor for ZeoliteEvalExtensionConfig);
  v77 = *(v76 + 16);
  v78 = (v76 + 32);
  while (v77)
  {
    v80 = *v78;
    if (v80 <= 2 && *v78 && v80 != 2)
    {

LABEL_46:

      *(v0 + 2584) = 2;
      v91 = *(v0 + 2080);
      v92 = *(v0 + 2072);
      v93 = sub_1000102D4;
      goto LABEL_78;
    }

    v79 = sub_100038A58();

    ++v78;
    --v77;
    if (v79)
    {
      goto LABEL_46;
    }
  }

  v81 = *(v0 + 2360);

  sub_10001E938(v0 + 752);

  *(v0 + 2480) = 0;
  v82 = *(v0 + 2336);
  v83 = *(v0 + 2056);
  v84 = *(v0 + 2016);
  v85 = *(v0 + 1888);
  (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
  sub_1000383C8();
  v86 = *(v85 + 32);

  sub_10001EA9C(v85, type metadata accessor for ZeoliteEvalExtensionConfig);
  v87 = *(v86 + 16);
  v88 = (v86 + 32);
  while (v87)
  {
    v90 = *v88;
    if (v90 == 2)
    {

LABEL_48:
      v104 = *(v0 + 2592);

      if (v104 == 3)
      {
        v105 = 0;
      }

      else
      {
        v105 = v104;
      }

      if (v105 == 1)
      {
        goto LABEL_66;
      }

      v106 = sub_100038A58();

      if ((v106 & 1) == 0)
      {
        v107 = *(v0 + 2592);
        if (v107 == 3)
        {
          v107 = 0;
        }

        if (v107 <= 1)
        {
          v137 = sub_100038A58();

          if ((v137 & 1) == 0)
          {
            *(v0 + 2504) = 0;
            *(v0 + 2585) = 2;
            v91 = *(v0 + 2080);
            v92 = *(v0 + 2072);
            v93 = sub_10001416C;
            goto LABEL_78;
          }

          goto LABEL_67;
        }

LABEL_66:
      }

LABEL_67:
      v138 = *(v0 + 2000);
      v139 = *(v0 + 1488);
      v140 = *(v0 + 1480);
      sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
      swift_beginAccess();
      if ((*(v139 + 48))(v138, 1, v140))
      {
        v141 = *(v0 + 2336);
        (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
      }

      else
      {
        sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
      }

      v142 = *(v0 + 1672);
      v143 = *(v0 + 1656);
      v144 = *(v0 + 1536);
      v145 = *(v0 + 1528);
      sub_10001EA34(*(v0 + 1664), v142, &qword_100048178, &unk_100039530);
      sub_10001FA38(v142, v143, &qword_100048178, &unk_100039530);
      v146 = (*(v144 + 48))(v143, 1, v145);
      v147 = *(v0 + 2096);
      v148 = *(v0 + 1656);
      if (v146 == 1)
      {
        sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
        v149 = sub_100038578();
        v150 = sub_1000387A8();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          *v151 = 0;
          _os_log_impl(&_mh_execute_header, v149, v150, "Query for all available embeddings.", v151, 2u);
        }
      }

      else
      {
        v152 = *(v0 + 1560);
        v153 = *(v0 + 1552);
        v154 = *(v0 + 1544);
        v155 = *(v0 + 1536);
        v156 = *(v0 + 1528);
        (*(v155 + 32))(v152, *(v0 + 1656), v156);
        v157 = *(v155 + 16);
        v157(v153, v152, v156);
        v157(v154, v153, v156);
        v158 = *(v155 + 8);
        v158(v153, v156);
        v159 = sub_100038578();
        v160 = sub_1000387A8();
        v161 = os_log_type_enabled(v159, v160);
        v162 = *(v0 + 1560);
        v163 = *(v0 + 1544);
        v164 = *(v0 + 1528);
        if (v161)
        {
          v216 = v158;
          v165 = swift_slowAlloc();
          v224 = v162;
          v166 = swift_slowAlloc();
          v226 = v166;
          *v165 = 136315138;
          v167 = sub_100037EA8();
          v169 = v168;
          v216(v163, v164);
          v170 = sub_10001BFAC(v167, v169, &v226);

          *(v165 + 4) = v170;
          _os_log_impl(&_mh_execute_header, v159, v160, "Last queried: %s", v165, 0xCu);
          sub_10000387C(v166);

          v216(v224, v164);
        }

        else
        {

          v158(v163, v164);
          v158(v162, v164);
        }
      }

      *(v0 + 2588) = 1;
      v91 = *(v0 + 2080);
      v92 = *(v0 + 2072);
      v93 = sub_100013090;
      goto LABEL_78;
    }

    v89 = sub_100038A58();

    ++v88;
    --v87;
    if (v89)
    {
      goto LABEL_48;
    }
  }

  v94 = *(v0 + 2208);

  sub_10001E98C(v0 + 936);

  *(v0 + 2528) = 0u;
  v95 = *(v0 + 2056);
  v96 = *(v0 + 2016);
  v97 = *(v0 + 1976);
  sub_1000383C8();
  v98 = *(v97 + 32);

  sub_10001EA9C(v97, type metadata accessor for ZeoliteEvalExtensionConfig);
  LOBYTE(v97) = sub_100015E04(3u, v98);

  if (v97)
  {
    *(v0 + 2587) = 2;
    v91 = *(v0 + 2080);
    v92 = *(v0 + 2072);
    v93 = sub_100014D64;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v99 = *(v0 + 1704);
    v100 = *(v0 + 1672);
    v101 = *(v0 + 1496);
    v102 = *(v0 + 1480);
    sub_100037EF8();
    sub_10001FA38(v100, v101 + *(v102 + 20), &qword_100048178, &unk_100039530);
    sub_10001FA38(v99, v101 + *(v102 + 24), &qword_100048178, &unk_100039530);
    if (sub_100023AF0())
    {
      v103.super.isa = sub_1000385E8().super.isa;
    }

    else
    {
      v103.super.isa = 0;
    }

    v108 = *(v0 + 2120);
    v219 = *(v0 + 2128);
    v222 = *(v0 + 2096);
    v109 = *(v0 + 2056);
    v110 = *(v0 + 2040);
    v212 = *(v0 + 2144);
    v215 = *(v0 + 2032);
    v111 = *(v0 + 2024);
    v112 = *(v0 + 2016);
    v113 = *(v0 + 1976);
    sub_1000383C8();
    v226 = 0x6769666E6F63;
    v227 = 0xE600000000000000;
    *(v0 + 1448) = *v113;
    v232._countAndFlagsBits = sub_100038A38();
    sub_100038698(v232);

    sub_10001EA9C(v113, type metadata accessor for ZeoliteEvalExtensionConfig);
    v114 = sub_100038638();

    [v212 setValue:v103.super.isa forKey:v114];

    swift_unknownObjectRelease();
    v108(v110, v109, v112);
    v108(v215, v110, v112);
    v115 = *(v111 + 8);
    *(v0 + 2544) = v115;
    *(v0 + 2552) = (v111 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v115(v110, v112);
    v116 = sub_100038578();
    v117 = sub_1000387A8();
    v118 = os_log_type_enabled(v116, v117);
    v119 = *(v0 + 2032);
    v120 = *(v0 + 2016);
    if (v118)
    {
      v121 = *(v0 + 1976);
      v122 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v225 = v223;
      *v122 = 136315138;
      v220 = v117;
      sub_1000383C8();
      v226 = 0x6769666E6F63;
      v227 = 0xE600000000000000;
      *(v0 + 1456) = *v121;
      v233._countAndFlagsBits = sub_100038A38();
      sub_100038698(v233);

      sub_10001EA9C(v121, type metadata accessor for ZeoliteEvalExtensionConfig);
      v115(v119, v120);
      v123 = sub_10001BFAC(v226, v227, &v225);

      *(v122 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v116, v220, "Execution state saved for %s.", v122, 0xCu);
      sub_10000387C(v223);
    }

    else
    {

      v115(v119, v120);
    }

    v124 = *(v0 + 2096);
    v125 = *(v0 + 1768);
    v126 = *(v0 + 1760);
    v127 = *(v0 + 1752);
    v128 = *(v0 + 1744);
    sub_100038868();
    sub_100038878();
    v129 = *(v127 + 8);
    *(v0 + 2560) = v129;
    *(v0 + 2568) = (v127 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v129(v126, v128);
    v130 = sub_100038578();
    v131 = sub_1000387A8();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v226 = v133;
      *v132 = 136315138;
      v134 = sub_100038B78();
      v136 = sub_10001BFAC(v134, v135, &v226);

      *(v132 + 4) = v136;
      _os_log_impl(&_mh_execute_header, v130, v131, "Time elapsed: %s.", v132, 0xCu);
      sub_10000387C(v133);
    }

    *(v0 + 2586) = 4;
    v91 = *(v0 + 2080);
    v92 = *(v0 + 2072);
    v93 = sub_100015958;
  }

LABEL_78:

  return _swift_task_switch(v93, v92, v91);
}

uint64_t sub_10000B574()
{
  v1 = v0[261];
  v2 = v0[258];
  v3 = v0[183];
  sub_100038318();

  return _swift_task_switch(sub_10000B5F0, 0, 0);
}

uint64_t sub_10000B5F0()
{
  v144 = v0;
  v1 = *(v0 + 2360);
  v2 = *(v0 + 2264);
  v3 = *(v0 + 2256);
  v4 = sub_100038068();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = sub_100038058();
  *(v0 + 2368) = v7;
  if (!v1 || (v10 = *(v0 + 2360), v11 = *(v10 + 16), (*(v0 + 2376) = v11) == 0))
  {
    v26 = *(v0 + 2280);
    v27 = *(v0 + 2264);

    v28 = *(v0 + 2056);
    v29 = *(v0 + 2016);
    v30 = *(v0 + 1904);
    sub_1000383C8();
    v31 = *(v30 + 32);

    sub_10001EA9C(v30, type metadata accessor for ZeoliteEvalExtensionConfig);
    v32 = *(v31 + 16);
    v33 = (v31 + 32);
    while (v32)
    {
      v35 = *v33;
      if (v35 > 4)
      {

LABEL_28:

        *(v0 + 2583) = 2;
        v9 = *(v0 + 2080);
        v8 = *(v0 + 2072);
        v59 = sub_10000E8A4;
        goto LABEL_64;
      }

      v34 = sub_100038A58();

      ++v33;
      --v32;
      if (v34)
      {
        goto LABEL_28;
      }
    }

    v36 = *(v0 + 2312);
    v37 = *(v0 + 2296);

    v38 = *(v0 + 2056);
    v39 = *(v0 + 2016);
    v40 = *(v0 + 1896);
    sub_1000383C8();
    v41 = *(v40 + 32);

    sub_10001EA9C(v40, type metadata accessor for ZeoliteEvalExtensionConfig);
    v42 = *(v41 + 16);
    v43 = (v41 + 32);
    while (v42)
    {
      if (*v43 <= 2u && *v43 && *v43 != 2)
      {

LABEL_32:

        *(v0 + 2584) = 2;
        v9 = *(v0 + 2080);
        v8 = *(v0 + 2072);
        v59 = sub_1000102D4;
        goto LABEL_64;
      }

      v44 = sub_100038A58();

      ++v43;
      --v42;
      if (v44)
      {
        goto LABEL_32;
      }
    }

    v45 = *(v0 + 2360);

    sub_10001E938(v0 + 752);

    *(v0 + 2480) = 0;
    v46 = *(v0 + 2336);
    v47 = *(v0 + 2056);
    v48 = *(v0 + 2016);
    v49 = *(v0 + 1888);
    (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
    sub_1000383C8();
    v50 = *(v49 + 32);

    sub_10001EA9C(v49, type metadata accessor for ZeoliteEvalExtensionConfig);
    v51 = *(v50 + 16);
    v52 = (v50 + 32);
    while (v51)
    {
      if (*v52 == 2)
      {

LABEL_34:
        v65 = *(v0 + 2592);

        if (v65 == 3)
        {
          v66 = 0;
        }

        else
        {
          v66 = v65;
        }

        if (v66 == 1)
        {
          goto LABEL_52;
        }

        v67 = sub_100038A58();

        if ((v67 & 1) == 0)
        {
          v68 = *(v0 + 2592);
          if (v68 == 3)
          {
            v68 = 0;
          }

          if (v68 <= 1)
          {
            v98 = sub_100038A58();

            if ((v98 & 1) == 0)
            {
              *(v0 + 2504) = 0;
              *(v0 + 2585) = 2;
              v9 = *(v0 + 2080);
              v8 = *(v0 + 2072);
              v59 = sub_10001416C;
              goto LABEL_64;
            }

            goto LABEL_53;
          }

LABEL_52:
        }

LABEL_53:
        v99 = *(v0 + 2000);
        v100 = *(v0 + 1488);
        v101 = *(v0 + 1480);
        sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
        swift_beginAccess();
        if ((*(v100 + 48))(v99, 1, v101))
        {
          v102 = *(v0 + 2336);
          (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
        }

        else
        {
          sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
        }

        v103 = *(v0 + 1672);
        v104 = *(v0 + 1656);
        v105 = *(v0 + 1536);
        v106 = *(v0 + 1528);
        sub_10001EA34(*(v0 + 1664), v103, &qword_100048178, &unk_100039530);
        sub_10001FA38(v103, v104, &qword_100048178, &unk_100039530);
        v107 = (*(v105 + 48))(v104, 1, v106);
        v108 = *(v0 + 2096);
        v109 = *(v0 + 1656);
        if (v107 == 1)
        {
          sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
          v110 = sub_100038578();
          v111 = sub_1000387A8();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&_mh_execute_header, v110, v111, "Query for all available embeddings.", v112, 2u);
          }
        }

        else
        {
          v113 = *(v0 + 1560);
          v114 = *(v0 + 1552);
          v115 = *(v0 + 1544);
          v116 = *(v0 + 1536);
          v117 = *(v0 + 1528);
          (*(v116 + 32))(v113, *(v0 + 1656), v117);
          v118 = *(v116 + 16);
          v118(v114, v113, v117);
          v118(v115, v114, v117);
          v119 = *(v116 + 8);
          v119(v114, v117);
          v120 = sub_100038578();
          v121 = sub_1000387A8();
          v122 = os_log_type_enabled(v120, v121);
          v123 = *(v0 + 1560);
          v124 = *(v0 + 1544);
          v125 = *(v0 + 1528);
          if (v122)
          {
            v134 = v119;
            v126 = swift_slowAlloc();
            v140 = v123;
            v127 = swift_slowAlloc();
            v142 = v127;
            *v126 = 136315138;
            v128 = sub_100037EA8();
            v130 = v129;
            v134(v124, v125);
            v131 = sub_10001BFAC(v128, v130, &v142);

            *(v126 + 4) = v131;
            _os_log_impl(&_mh_execute_header, v120, v121, "Last queried: %s", v126, 0xCu);
            sub_10000387C(v127);

            v134(v140, v125);
          }

          else
          {

            v119(v124, v125);
            v119(v123, v125);
          }
        }

        *(v0 + 2588) = 1;
        v9 = *(v0 + 2080);
        v8 = *(v0 + 2072);
        v59 = sub_100013090;
        goto LABEL_64;
      }

      v53 = sub_100038A58();

      ++v52;
      --v51;
      if (v53)
      {
        goto LABEL_34;
      }
    }

    v54 = *(v0 + 2208);

    sub_10001E98C(v0 + 936);

    *(v0 + 2528) = 0u;
    v55 = *(v0 + 2056);
    v56 = *(v0 + 2016);
    v57 = *(v0 + 1976);
    sub_1000383C8();
    v58 = *(v57 + 32);

    sub_10001EA9C(v57, type metadata accessor for ZeoliteEvalExtensionConfig);
    LOBYTE(v57) = sub_100015E04(3u, v58);

    if (v57)
    {
      *(v0 + 2587) = 2;
      v9 = *(v0 + 2080);
      v8 = *(v0 + 2072);
      v59 = sub_100014D64;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v60 = *(v0 + 1704);
      v61 = *(v0 + 1672);
      v62 = *(v0 + 1496);
      v63 = *(v0 + 1480);
      sub_100037EF8();
      sub_10001FA38(v61, v62 + *(v63 + 20), &qword_100048178, &unk_100039530);
      sub_10001FA38(v60, v62 + *(v63 + 24), &qword_100048178, &unk_100039530);
      if (sub_100023AF0())
      {
        v64.super.isa = sub_1000385E8().super.isa;
      }

      else
      {
        v64.super.isa = 0;
      }

      v69 = *(v0 + 2120);
      v135 = *(v0 + 2128);
      v138 = *(v0 + 2096);
      v70 = *(v0 + 2056);
      v71 = *(v0 + 2040);
      v132 = *(v0 + 2144);
      v133 = *(v0 + 2032);
      v72 = *(v0 + 2024);
      v73 = *(v0 + 2016);
      v74 = *(v0 + 1976);
      sub_1000383C8();
      v142 = 0x6769666E6F63;
      v143 = 0xE600000000000000;
      *(v0 + 1448) = *v74;
      v146._countAndFlagsBits = sub_100038A38();
      sub_100038698(v146);

      sub_10001EA9C(v74, type metadata accessor for ZeoliteEvalExtensionConfig);
      v75 = sub_100038638();

      [v132 setValue:v64.super.isa forKey:v75];

      swift_unknownObjectRelease();
      v69(v71, v70, v73);
      v69(v133, v71, v73);
      v76 = *(v72 + 8);
      *(v0 + 2544) = v76;
      *(v0 + 2552) = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v76(v71, v73);
      v77 = sub_100038578();
      v78 = sub_1000387A8();
      v79 = os_log_type_enabled(v77, v78);
      v80 = *(v0 + 2032);
      v81 = *(v0 + 2016);
      if (v79)
      {
        v82 = *(v0 + 1976);
        v83 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v141 = v139;
        *v83 = 136315138;
        v136 = v78;
        sub_1000383C8();
        v142 = 0x6769666E6F63;
        v143 = 0xE600000000000000;
        *(v0 + 1456) = *v82;
        v147._countAndFlagsBits = sub_100038A38();
        sub_100038698(v147);

        sub_10001EA9C(v82, type metadata accessor for ZeoliteEvalExtensionConfig);
        v76(v80, v81);
        v84 = sub_10001BFAC(v142, v143, &v141);

        *(v83 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v77, v136, "Execution state saved for %s.", v83, 0xCu);
        sub_10000387C(v139);
      }

      else
      {

        v76(v80, v81);
      }

      v85 = *(v0 + 2096);
      v86 = *(v0 + 1768);
      v87 = *(v0 + 1760);
      v88 = *(v0 + 1752);
      v89 = *(v0 + 1744);
      sub_100038868();
      sub_100038878();
      v90 = *(v88 + 8);
      *(v0 + 2560) = v90;
      *(v0 + 2568) = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v90(v87, v89);
      v91 = sub_100038578();
      v92 = sub_1000387A8();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v142 = v94;
        *v93 = 136315138;
        v95 = sub_100038B78();
        v97 = sub_10001BFAC(v95, v96, &v142);

        *(v93 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v91, v92, "Time elapsed: %s.", v93, 0xCu);
        sub_10000387C(v94);
      }

      *(v0 + 2586) = 4;
      v9 = *(v0 + 2080);
      v8 = *(v0 + 2072);
      v59 = sub_100015958;
    }

LABEL_64:
    v7 = v59;

    return _swift_task_switch(v7, v8, v9);
  }

  v12 = *(v0 + 1616);
  v13 = *(v12 + 80);
  *(v0 + 2576) = v13;
  *(v0 + 2384) = 0;
  if (!*(v10 + 16))
  {
    __break(1u);
    return _swift_task_switch(v7, v8, v9);
  }

  v14 = *(v0 + 2280);
  v15 = *(v0 + 1632);
  v16 = *(v0 + 1608);
  v17 = *(v12 + 16);
  *(v0 + 2392) = v17;
  *(v0 + 2400) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v15, v10 + ((v13 + 32) & ~v13), v16);
  v18 = sub_100038148();
  v20 = v19;
  *(v0 + 2408) = v19;
  v21 = *(&async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:) + 1);
  v137 = (&async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:) + async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:));
  v22 = swift_task_alloc();
  *(v0 + 2416) = v22;
  *v22 = v0;
  v22[1] = sub_10000C59C;
  v23 = *(v0 + 2368);
  v24 = *(v0 + 2272);

  return v137(v24, v14, v18, v20);
}

uint64_t sub_10000C59C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2416);
  v7 = *v3;
  *(v5 + 2424) = a1;
  *(v5 + 2432) = a2;

  v8 = *(v4 + 2408);
  if (v2)
  {

    v9 = sub_10000D898;
  }

  else
  {

    v9 = sub_10000C6F0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000C6F0()
{
  v166 = v0;
  v1 = *(v0 + 2432);
  v2 = *(v0 + 2400);
  v3 = *(v0 + 2096);
  (*(v0 + 2392))(*(v0 + 1624), *(v0 + 1632), *(v0 + 1608));

  v4 = sub_100038578();
  v5 = sub_1000387A8();

  v6 = os_log_type_enabled(v4, v5);
  v162 = v0;
  v7 = *(v0 + 2432);
  if (v6)
  {
    v152 = *(v0 + 2424);
    v157 = *(v0 + 1632);
    v154 = v5;
    v8 = *(v0 + 1624);
    v9 = *(v0 + 1616);
    v10 = *(v0 + 1608);
    v11 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_100038148();
    v14 = v13;
    v15 = *(v9 + 8);
    v15(v8, v10);
    v16 = sub_10001BFAC(v12, v14, &v164);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = sub_10001BFAC(v152, v7, &v164);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v154, "Input text: %s \n Generated text: %s", v11, 0x16u);
    swift_arrayDestroy();

    v18 = (v15)(v157, v10);
  }

  else
  {
    v21 = *(v0 + 1632);
    v22 = *(v0 + 1624);
    v23 = *(v0 + 1616);
    v24 = *(v0 + 1608);

    v25 = *(v23 + 8);
    v25(v22, v24);
    v18 = (v25)(v21, v24);
  }

  v26 = *(v0 + 2384) + 1;
  if (v26 == *(v0 + 2376))
  {
    v27 = *(v0 + 2368);
    v28 = *(v0 + 2280);
    v29 = *(v0 + 2264);

    v30 = *(v0 + 2056);
    v31 = *(v0 + 2016);
    v32 = *(v0 + 1904);
    sub_1000383C8();
    v33 = *(v32 + 32);

    sub_10001EA9C(v32, type metadata accessor for ZeoliteEvalExtensionConfig);
    v34 = *(v33 + 16);
    v35 = (v33 + 32);
    while (v34)
    {
      v37 = *v35;
      if (v37 > 4)
      {

LABEL_30:

        *(v0 + 2583) = 2;
        v20 = *(v0 + 2080);
        v19 = *(v0 + 2072);
        v76 = sub_10000E8A4;
        goto LABEL_67;
      }

      v36 = sub_100038A58();

      ++v35;
      --v34;
      if (v36)
      {
        goto LABEL_30;
      }
    }

    v53 = *(v0 + 2312);
    v54 = *(v0 + 2296);

    v55 = *(v0 + 2056);
    v56 = *(v0 + 2016);
    v57 = *(v0 + 1896);
    sub_1000383C8();
    v58 = *(v57 + 32);

    sub_10001EA9C(v57, type metadata accessor for ZeoliteEvalExtensionConfig);
    v59 = *(v58 + 16);
    v60 = (v58 + 32);
    while (v59)
    {
      if (*v60 <= 2u && *v60 && *v60 != 2)
      {

LABEL_34:

        *(v0 + 2584) = 2;
        v20 = *(v0 + 2080);
        v19 = *(v0 + 2072);
        v76 = sub_1000102D4;
        goto LABEL_67;
      }

      v61 = sub_100038A58();

      ++v60;
      --v59;
      if (v61)
      {
        goto LABEL_34;
      }
    }

    v62 = *(v0 + 2360);

    sub_10001E938(v0 + 752);

    *(v0 + 2480) = 0;
    v63 = *(v0 + 2336);
    v64 = *(v0 + 2056);
    v65 = *(v0 + 2016);
    v66 = *(v0 + 1888);
    (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
    sub_1000383C8();
    v67 = *(v66 + 32);

    sub_10001EA9C(v66, type metadata accessor for ZeoliteEvalExtensionConfig);
    v68 = *(v67 + 16);
    v69 = (v67 + 32);
    while (v68)
    {
      if (*v69 == 2)
      {

LABEL_36:
        v82 = *(v0 + 2592);

        if (v82 == 3)
        {
          v83 = 0;
        }

        else
        {
          v83 = v82;
        }

        if (v83 == 1)
        {
          goto LABEL_54;
        }

        v84 = sub_100038A58();

        if ((v84 & 1) == 0)
        {
          v85 = *(v0 + 2592);
          if (v85 == 3)
          {
            v85 = 0;
          }

          if (v85 <= 1)
          {
            v117 = sub_100038A58();

            if ((v117 & 1) == 0)
            {
              *(v0 + 2504) = 0;
              *(v0 + 2585) = 2;
              v20 = *(v0 + 2080);
              v19 = *(v0 + 2072);
              v76 = sub_10001416C;
              goto LABEL_67;
            }

            goto LABEL_55;
          }

LABEL_54:
        }

LABEL_55:
        v118 = *(v0 + 2000);
        v119 = *(v0 + 1488);
        v120 = *(v0 + 1480);
        sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
        swift_beginAccess();
        if ((*(v119 + 48))(v118, 1, v120))
        {
          v121 = *(v0 + 2336);
          (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
        }

        else
        {
          sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
        }

        v122 = *(v0 + 1672);
        v123 = *(v0 + 1656);
        v124 = *(v0 + 1536);
        v125 = *(v0 + 1528);
        sub_10001EA34(*(v0 + 1664), v122, &qword_100048178, &unk_100039530);
        sub_10001FA38(v122, v123, &qword_100048178, &unk_100039530);
        v126 = (*(v124 + 48))(v123, 1, v125);
        v127 = *(v0 + 2096);
        if (v126 == 1)
        {
          sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
          v128 = sub_100038578();
          v129 = sub_1000387A8();
          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            *v130 = 0;
            _os_log_impl(&_mh_execute_header, v128, v129, "Query for all available embeddings.", v130, 2u);
          }
        }

        else
        {
          v131 = *(v0 + 1560);
          v132 = *(v0 + 1552);
          v133 = *(v0 + 1544);
          v134 = *(v0 + 1536);
          v135 = *(v0 + 1528);
          (*(v134 + 32))(v131, *(v0 + 1656), v135);
          v136 = *(v134 + 16);
          v136(v132, v131, v135);
          v136(v133, v132, v135);
          v137 = *(v134 + 8);
          v137(v132, v135);
          v138 = sub_100038578();
          v139 = sub_1000387A8();
          v140 = os_log_type_enabled(v138, v139);
          v141 = *(v0 + 1560);
          v142 = *(v0 + 1544);
          v143 = *(v0 + 1528);
          if (v140)
          {
            v144 = swift_slowAlloc();
            v161 = v141;
            v145 = swift_slowAlloc();
            v164 = v145;
            *v144 = 136315138;
            v146 = sub_100037EA8();
            v148 = v147;
            v137(v142, v143);
            v149 = sub_10001BFAC(v146, v148, &v164);

            *(v144 + 4) = v149;
            _os_log_impl(&_mh_execute_header, v138, v139, "Last queried: %s", v144, 0xCu);
            sub_10000387C(v145);

            v150 = v161;
          }

          else
          {

            v137(v142, v143);
            v150 = v141;
          }

          v137(v150, v143);
        }

        *(v162 + 2588) = 1;
        v20 = *(v162 + 2080);
        v19 = *(v162 + 2072);
        v76 = sub_100013090;
        goto LABEL_67;
      }

      v70 = sub_100038A58();

      ++v69;
      --v68;
      if (v70)
      {
        goto LABEL_36;
      }
    }

    v71 = *(v0 + 2208);

    sub_10001E98C(v0 + 936);

    *(v0 + 2528) = 0u;
    v72 = *(v0 + 2056);
    v73 = *(v0 + 2016);
    v74 = *(v0 + 1976);
    sub_1000383C8();
    v75 = *(v74 + 32);

    sub_10001EA9C(v74, type metadata accessor for ZeoliteEvalExtensionConfig);
    LOBYTE(v74) = sub_100015E04(3u, v75);

    if (v74)
    {
      *(v0 + 2587) = 2;
      v20 = *(v0 + 2080);
      v19 = *(v0 + 2072);
      v76 = sub_100014D64;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v77 = *(v0 + 1704);
      v78 = *(v0 + 1672);
      v79 = *(v0 + 1496);
      v80 = *(v0 + 1480);
      sub_100037EF8();
      sub_10001FA38(v78, v79 + *(v80 + 20), &qword_100048178, &unk_100039530);
      sub_10001FA38(v77, v79 + *(v80 + 24), &qword_100048178, &unk_100039530);
      if (sub_100023AF0())
      {
        v81.super.isa = sub_1000385E8().super.isa;
      }

      else
      {
        v81.super.isa = 0;
      }

      v86 = *(v0 + 2120);
      v155 = *(v0 + 2128);
      v159 = *(v0 + 2096);
      v87 = *(v0 + 2056);
      v88 = *(v0 + 2040);
      v151 = *(v0 + 2144);
      v153 = *(v0 + 2032);
      v89 = *(v0 + 2024);
      v90 = *(v0 + 2016);
      v91 = *(v0 + 1976);
      sub_1000383C8();
      v164 = 0x6769666E6F63;
      v165 = 0xE600000000000000;
      *(v0 + 1448) = *v91;
      v168._countAndFlagsBits = sub_100038A38();
      sub_100038698(v168);

      sub_10001EA9C(v91, type metadata accessor for ZeoliteEvalExtensionConfig);
      v92 = sub_100038638();

      [v151 setValue:v81.super.isa forKey:v92];

      swift_unknownObjectRelease();
      v86(v88, v87, v90);
      v86(v153, v88, v90);
      v93 = *(v89 + 8);
      *(v0 + 2544) = v93;
      *(v0 + 2552) = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v93(v88, v90);
      v94 = sub_100038578();
      v95 = sub_1000387A8();
      v96 = os_log_type_enabled(v94, v95);
      v97 = *(v0 + 2032);
      v98 = *(v0 + 2016);
      if (v96)
      {
        v99 = *(v0 + 1976);
        v100 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v163 = v160;
        *v100 = 136315138;
        v156 = v95;
        sub_1000383C8();
        v164 = 0x6769666E6F63;
        v165 = 0xE600000000000000;
        *(v0 + 1456) = *v99;
        v169._countAndFlagsBits = sub_100038A38();
        sub_100038698(v169);

        v101 = v164;
        v102 = v165;
        sub_10001EA9C(v99, type metadata accessor for ZeoliteEvalExtensionConfig);
        v93(v97, v98);
        v103 = sub_10001BFAC(v101, v102, &v163);

        *(v100 + 4) = v103;
        _os_log_impl(&_mh_execute_header, v94, v156, "Execution state saved for %s.", v100, 0xCu);
        sub_10000387C(v160);
      }

      else
      {

        v93(v97, v98);
      }

      v104 = *(v0 + 2096);
      v105 = *(v0 + 1768);
      v106 = *(v0 + 1760);
      v107 = *(v0 + 1752);
      v108 = *(v0 + 1744);
      sub_100038868();
      sub_100038878();
      v109 = *(v107 + 8);
      *(v0 + 2560) = v109;
      *(v0 + 2568) = (v107 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v109(v106, v108);
      v110 = sub_100038578();
      v111 = sub_1000387A8();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v164 = v113;
        *v112 = 136315138;
        v114 = sub_100038B78();
        v116 = sub_10001BFAC(v114, v115, &v164);

        *(v112 + 4) = v116;
        _os_log_impl(&_mh_execute_header, v110, v111, "Time elapsed: %s.", v112, 0xCu);
        sub_10000387C(v113);
      }

      *(v0 + 2586) = 4;
      v20 = *(v0 + 2080);
      v19 = *(v0 + 2072);
      v76 = sub_100015958;
    }

LABEL_67:
    v18 = v76;

    return _swift_task_switch(v18, v19, v20);
  }

  *(v0 + 2384) = v26;
  v38 = *(v0 + 2360);
  if (v26 >= *(v38 + 16))
  {
    __break(1u);
    return _swift_task_switch(v18, v19, v20);
  }

  v39 = *(v0 + 2280);
  v40 = *(v0 + 1632);
  v41 = *(v0 + 1616);
  v42 = *(v0 + 1608);
  v43 = *(v41 + 16);
  v41 += 16;
  v44 = v38 + ((*(v0 + 2576) + 32) & ~*(v0 + 2576)) + *(v41 + 56) * v26;
  *(v0 + 2392) = v43;
  *(v0 + 2400) = v41 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v40, v44, v42);
  v45 = sub_100038148();
  v47 = v46;
  *(v0 + 2408) = v46;
  v48 = *(&async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:) + 1);
  v158 = (&async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:) + async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:));
  v49 = swift_task_alloc();
  *(v0 + 2416) = v49;
  *v49 = v0;
  v49[1] = sub_10000C59C;
  v50 = *(v0 + 2368);
  v51 = *(v0 + 2272);

  return v158(v51, v39, v45, v47);
}

uint64_t sub_10000D898()
{
  v147 = v0;
  v1 = *(v0 + 2096);
  v2 = sub_100038578();
  v3 = sub_1000387C8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1632);
  v6 = *(v0 + 1616);
  v7 = *(v0 + 1608);
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to perform inference!", v8, 2u);
  }

  v9 = (*(v6 + 8))(v5, v7);
  v12 = *(v0 + 2384) + 1;
  if (v12 == *(v0 + 2376))
  {
    v13 = *(v0 + 2368);
    v14 = *(v0 + 2280);
    v15 = *(v0 + 2264);

    v16 = *(v0 + 2056);
    v17 = *(v0 + 2016);
    v18 = *(v0 + 1904);
    sub_1000383C8();
    v19 = *(v18 + 32);

    sub_10001EA9C(v18, type metadata accessor for ZeoliteEvalExtensionConfig);
    v20 = *(v19 + 16);
    v21 = (v19 + 32);
    while (v20)
    {
      v23 = *v21;
      if (v23 > 4)
      {

LABEL_29:

        *(v0 + 2583) = 2;
        v11 = *(v0 + 2080);
        v10 = *(v0 + 2072);
        v62 = sub_10000E8A4;
        goto LABEL_65;
      }

      v22 = sub_100038A58();

      ++v21;
      --v20;
      if (v22)
      {
        goto LABEL_29;
      }
    }

    v39 = *(v0 + 2312);
    v40 = *(v0 + 2296);

    v41 = *(v0 + 2056);
    v42 = *(v0 + 2016);
    v43 = *(v0 + 1896);
    sub_1000383C8();
    v44 = *(v43 + 32);

    sub_10001EA9C(v43, type metadata accessor for ZeoliteEvalExtensionConfig);
    v45 = *(v44 + 16);
    v46 = (v44 + 32);
    while (v45)
    {
      if (*v46 <= 2u && *v46 && *v46 != 2)
      {

LABEL_33:

        *(v0 + 2584) = 2;
        v11 = *(v0 + 2080);
        v10 = *(v0 + 2072);
        v62 = sub_1000102D4;
        goto LABEL_65;
      }

      v47 = sub_100038A58();

      ++v46;
      --v45;
      if (v47)
      {
        goto LABEL_33;
      }
    }

    v48 = *(v0 + 2360);

    sub_10001E938(v0 + 752);

    *(v0 + 2480) = 0;
    v49 = *(v0 + 2336);
    v50 = *(v0 + 2056);
    v51 = *(v0 + 2016);
    v52 = *(v0 + 1888);
    (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
    sub_1000383C8();
    v53 = *(v52 + 32);

    sub_10001EA9C(v52, type metadata accessor for ZeoliteEvalExtensionConfig);
    v54 = *(v53 + 16);
    v55 = (v53 + 32);
    while (v54)
    {
      if (*v55 == 2)
      {

LABEL_35:
        v68 = *(v0 + 2592);

        if (v68 == 3)
        {
          v69 = 0;
        }

        else
        {
          v69 = v68;
        }

        if (v69 == 1)
        {
          goto LABEL_53;
        }

        v70 = sub_100038A58();

        if ((v70 & 1) == 0)
        {
          v71 = *(v0 + 2592);
          if (v71 == 3)
          {
            v71 = 0;
          }

          if (v71 <= 1)
          {
            v101 = sub_100038A58();

            if ((v101 & 1) == 0)
            {
              *(v0 + 2504) = 0;
              *(v0 + 2585) = 2;
              v11 = *(v0 + 2080);
              v10 = *(v0 + 2072);
              v62 = sub_10001416C;
              goto LABEL_65;
            }

            goto LABEL_54;
          }

LABEL_53:
        }

LABEL_54:
        v102 = *(v0 + 2000);
        v103 = *(v0 + 1488);
        v104 = *(v0 + 1480);
        sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
        swift_beginAccess();
        if ((*(v103 + 48))(v102, 1, v104))
        {
          v105 = *(v0 + 2336);
          (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
        }

        else
        {
          sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
        }

        v106 = *(v0 + 1672);
        v107 = *(v0 + 1656);
        v108 = *(v0 + 1536);
        v109 = *(v0 + 1528);
        sub_10001EA34(*(v0 + 1664), v106, &qword_100048178, &unk_100039530);
        sub_10001FA38(v106, v107, &qword_100048178, &unk_100039530);
        v110 = (*(v108 + 48))(v107, 1, v109);
        v111 = *(v0 + 2096);
        v112 = *(v0 + 1656);
        if (v110 == 1)
        {
          sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
          v113 = sub_100038578();
          v114 = sub_1000387A8();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            *v115 = 0;
            _os_log_impl(&_mh_execute_header, v113, v114, "Query for all available embeddings.", v115, 2u);
          }
        }

        else
        {
          v116 = *(v0 + 1560);
          v117 = *(v0 + 1552);
          v118 = *(v0 + 1544);
          v119 = *(v0 + 1536);
          v120 = *(v0 + 1528);
          (*(v119 + 32))(v116, *(v0 + 1656), v120);
          v121 = *(v119 + 16);
          v121(v117, v116, v120);
          v121(v118, v117, v120);
          v122 = *(v119 + 8);
          v122(v117, v120);
          v123 = sub_100038578();
          v124 = sub_1000387A8();
          v125 = os_log_type_enabled(v123, v124);
          v126 = *(v0 + 1560);
          v127 = *(v0 + 1544);
          v128 = *(v0 + 1528);
          if (v125)
          {
            v137 = v122;
            v129 = swift_slowAlloc();
            v143 = v126;
            v130 = swift_slowAlloc();
            v145 = v130;
            *v129 = 136315138;
            v131 = sub_100037EA8();
            v133 = v132;
            v137(v127, v128);
            v134 = sub_10001BFAC(v131, v133, &v145);

            *(v129 + 4) = v134;
            _os_log_impl(&_mh_execute_header, v123, v124, "Last queried: %s", v129, 0xCu);
            sub_10000387C(v130);

            v137(v143, v128);
          }

          else
          {

            v122(v127, v128);
            v122(v126, v128);
          }
        }

        *(v0 + 2588) = 1;
        v11 = *(v0 + 2080);
        v10 = *(v0 + 2072);
        v62 = sub_100013090;
        goto LABEL_65;
      }

      v56 = sub_100038A58();

      ++v55;
      --v54;
      if (v56)
      {
        goto LABEL_35;
      }
    }

    v57 = *(v0 + 2208);

    sub_10001E98C(v0 + 936);

    *(v0 + 2528) = 0u;
    v58 = *(v0 + 2056);
    v59 = *(v0 + 2016);
    v60 = *(v0 + 1976);
    sub_1000383C8();
    v61 = *(v60 + 32);

    sub_10001EA9C(v60, type metadata accessor for ZeoliteEvalExtensionConfig);
    LOBYTE(v60) = sub_100015E04(3u, v61);

    if (v60)
    {
      *(v0 + 2587) = 2;
      v11 = *(v0 + 2080);
      v10 = *(v0 + 2072);
      v62 = sub_100014D64;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v63 = *(v0 + 1704);
      v64 = *(v0 + 1672);
      v65 = *(v0 + 1496);
      v66 = *(v0 + 1480);
      sub_100037EF8();
      sub_10001FA38(v64, v65 + *(v66 + 20), &qword_100048178, &unk_100039530);
      sub_10001FA38(v63, v65 + *(v66 + 24), &qword_100048178, &unk_100039530);
      if (sub_100023AF0())
      {
        v67.super.isa = sub_1000385E8().super.isa;
      }

      else
      {
        v67.super.isa = 0;
      }

      v72 = *(v0 + 2120);
      v138 = *(v0 + 2128);
      v141 = *(v0 + 2096);
      v73 = *(v0 + 2056);
      v74 = *(v0 + 2040);
      v135 = *(v0 + 2144);
      v136 = *(v0 + 2032);
      v75 = *(v0 + 2024);
      v76 = *(v0 + 2016);
      v77 = *(v0 + 1976);
      sub_1000383C8();
      v145 = 0x6769666E6F63;
      v146 = 0xE600000000000000;
      *(v0 + 1448) = *v77;
      v149._countAndFlagsBits = sub_100038A38();
      sub_100038698(v149);

      sub_10001EA9C(v77, type metadata accessor for ZeoliteEvalExtensionConfig);
      v78 = sub_100038638();

      [v135 setValue:v67.super.isa forKey:v78];

      swift_unknownObjectRelease();
      v72(v74, v73, v76);
      v72(v136, v74, v76);
      v79 = *(v75 + 8);
      *(v0 + 2544) = v79;
      *(v0 + 2552) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v79(v74, v76);
      v80 = sub_100038578();
      v81 = sub_1000387A8();
      v82 = os_log_type_enabled(v80, v81);
      v83 = *(v0 + 2032);
      v84 = *(v0 + 2016);
      if (v82)
      {
        v85 = *(v0 + 1976);
        v86 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v144 = v142;
        *v86 = 136315138;
        v139 = v81;
        sub_1000383C8();
        v145 = 0x6769666E6F63;
        v146 = 0xE600000000000000;
        *(v0 + 1456) = *v85;
        v150._countAndFlagsBits = sub_100038A38();
        sub_100038698(v150);

        sub_10001EA9C(v85, type metadata accessor for ZeoliteEvalExtensionConfig);
        v79(v83, v84);
        v87 = sub_10001BFAC(v145, v146, &v144);

        *(v86 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v80, v139, "Execution state saved for %s.", v86, 0xCu);
        sub_10000387C(v142);
      }

      else
      {

        v79(v83, v84);
      }

      v88 = *(v0 + 2096);
      v89 = *(v0 + 1768);
      v90 = *(v0 + 1760);
      v91 = *(v0 + 1752);
      v92 = *(v0 + 1744);
      sub_100038868();
      sub_100038878();
      v93 = *(v91 + 8);
      *(v0 + 2560) = v93;
      *(v0 + 2568) = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v93(v90, v92);
      v94 = sub_100038578();
      v95 = sub_1000387A8();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v145 = v97;
        *v96 = 136315138;
        v98 = sub_100038B78();
        v100 = sub_10001BFAC(v98, v99, &v145);

        *(v96 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v94, v95, "Time elapsed: %s.", v96, 0xCu);
        sub_10000387C(v97);
      }

      *(v0 + 2586) = 4;
      v11 = *(v0 + 2080);
      v10 = *(v0 + 2072);
      v62 = sub_100015958;
    }

LABEL_65:
    v9 = v62;

    return _swift_task_switch(v9, v10, v11);
  }

  *(v0 + 2384) = v12;
  v24 = *(v0 + 2360);
  if (v12 >= *(v24 + 16))
  {
    __break(1u);
    return _swift_task_switch(v9, v10, v11);
  }

  v25 = *(v0 + 2280);
  v26 = *(v0 + 1632);
  v27 = *(v0 + 1616);
  v28 = *(v0 + 1608);
  v29 = *(v27 + 16);
  v27 += 16;
  v30 = v24 + ((*(v0 + 2576) + 32) & ~*(v0 + 2576)) + *(v27 + 56) * v12;
  *(v0 + 2392) = v29;
  *(v0 + 2400) = v27 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v29(v26, v30, v28);
  v31 = sub_100038148();
  v33 = v32;
  *(v0 + 2408) = v32;
  v34 = *(&async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:) + 1);
  v140 = (&async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:) + async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:));
  v35 = swift_task_alloc();
  *(v0 + 2416) = v35;
  *v35 = v0;
  v35[1] = sub_10000C59C;
  v36 = *(v0 + 2368);
  v37 = *(v0 + 2272);

  return v140(v37, v25, v31, v33);
}

uint64_t sub_10000E8A4()
{
  v1 = v0[261];
  v2 = v0[258];
  v3 = v0[183];
  sub_100038318();

  return _swift_task_switch(sub_10000E920, 0, 0);
}

uint64_t sub_10000E920()
{
  v277 = v0;
  if (!*(v0 + 2208))
  {
    v20 = *(v0 + 2312);
    v21 = *(v0 + 2296);
    sub_10001E938(v0 + 752);

    sub_10001E98C(v0 + 936);
LABEL_7:
    v22 = *(v0 + 2360);
    v23 = *(v0 + 2096);

    v24 = sub_100038578();
    v25 = sub_1000387C8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Tokenizer model path is nil.", v26, 2u);
    }

    v27 = *(v0 + 2216);
    v28 = *(v0 + 2144);
    v29 = *(v0 + 2024);
    v30 = *(v0 + 2016);
    v258 = *(v0 + 2136);
    v263 = *(v0 + 2000);
    v31 = *(v0 + 1768);
    v32 = *(v0 + 1752);
    v33 = *(v0 + 1744);
    v250 = *(v0 + 2056);
    v253 = *(v0 + 1736);
    v34 = *(v0 + 1704);

    v275 = &type metadata for ZeoliteEvalExtensionError;
    v276 = sub_10001E9E0();
    LOBYTE(v273) = 5;
    v35 = objc_allocWithZone(sub_100038388());
    v268 = sub_100038368();

    sub_10001FD94(v34, &qword_100048178, &unk_100039530);
    (*(v32 + 8))(v31, v33);
    v258(v250, v30);
    sub_10001EA9C(v253, type metadata accessor for EmbedParameters);
    v36 = v263;
    goto LABEL_20;
  }

  v1 = *(v0 + 2296);
  if (!v1)
  {
    sub_10001E938(v0 + 752);

    sub_10001E98C(v0 + 936);

    goto LABEL_7;
  }

  v2 = *(v0 + 2288);
  v3 = *(v0 + 2200);
  v248 = *(v0 + 2312);
  v4 = *(v0 + 1808);
  v5 = *(v0 + 1784);
  v262 = *(v0 + 1792);
  v267 = *(v0 + 1776);
  v6 = *(v0 + 1600);
  v7 = *(v0 + 1592);
  v8 = *(v0 + 1584);

  sub_100037E28();
  *(v0 + 1408) = v2;
  *(v0 + 1416) = v1;
  v9 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v243 = *(v7 + 104);
  v243(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
  sub_10001E024();
  sub_100037E58();
  v10 = *(v7 + 8);
  v10(v6, v8);
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v4, v267);

  v257 = v12;
  if (v248)
  {
    v13 = *(v0 + 2312);
    v14 = *(v0 + 2200);
    v15 = v12;
    v16 = *(v0 + 1808);
    v249 = *(v0 + 1776);
    v17 = *(v0 + 1600);
    v18 = *(v0 + 1584);
    v235 = *(v0 + 2304);
    v238 = *(v0 + 1568);

    sub_100037E28();

    *(v0 + 1424) = v235;
    *(v0 + 1432) = v13;
    v243(v17, v9, v18);
    sub_100037E58();
    v11(v17, v18);
    v15(v16, v249);

    v19 = 0;
  }

  else
  {

    v19 = 1;
  }

  v37 = *(v0 + 2360);
  v38 = *(v0 + 2594);
  v39 = *(v0 + 2320);
  v40 = *(v0 + 1792);
  v41 = *(v0 + 1576);
  v42 = *(v0 + 1568);
  (*(*(v0 + 1784) + 56))(v42, v19, 1, *(v0 + 1776));
  sub_10001EA34(v42, v41, &qword_1000482C8, &qword_100039528);
  v43 = sub_10001682C(v37, v40, v41, v39, v38);
  v45 = v44;
  LODWORD(v37) = v44;

  if (v37 != 24)
  {
    v55 = *(v0 + 2360);
    v56 = *(v0 + 2096);
    sub_10001E938(v0 + 752);
    sub_10001E98C(v0 + 936);

    v57 = sub_100038578();
    v58 = sub_1000387C8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Failed to complete tokenization step.", v59, 2u);
    }

    v60 = *(v0 + 2216);
    v61 = *(v0 + 2144);
    v246 = *(v0 + 2056);
    v251 = *(v0 + 2136);
    v254 = *(v0 + 2000);
    v62 = *(v0 + 1792);
    v63 = *(v0 + 1776);
    v236 = *(v0 + 1768);
    v239 = *(v0 + 2024);
    v64 = *(v0 + 1752);
    v233 = *(v0 + 1744);
    v241 = *(v0 + 1736);
    v244 = *(v0 + 2016);
    v65 = *(v0 + 1704);
    v66 = *(v0 + 1576);

    v275 = &type metadata for ZeoliteEvalExtensionError;
    v276 = sub_10001E9E0();
    LOBYTE(v273) = v45;
    v67 = objc_allocWithZone(sub_100038388());
    v268 = sub_100038368();

    sub_10001FD94(v66, &qword_1000482C8, &qword_100039528);
    v257(v62, v63);
    sub_10001FD94(v65, &qword_100048178, &unk_100039530);
    (*(v64 + 8))(v236, v233);
    v251(v246, v244);
    sub_10001EA9C(v241, type metadata accessor for EmbedParameters);
    v36 = v254;
LABEL_20:
    sub_10001FD94(v36, &qword_1000482E0, &qword_100039548);
    v68 = *(v0 + 2056);
    v69 = *(v0 + 2048);
    v70 = *(v0 + 2040);
    v71 = *(v0 + 2032);
    v72 = *(v0 + 2008);
    v73 = *(v0 + 2000);
    v74 = *(v0 + 1992);
    v75 = *(v0 + 1976);
    v76 = *(v0 + 1968);
    v77 = *(v0 + 1960);
    v204 = *(v0 + 1952);
    v205 = *(v0 + 1944);
    v206 = *(v0 + 1936);
    v207 = *(v0 + 1928);
    v208 = *(v0 + 1920);
    v209 = *(v0 + 1912);
    v210 = *(v0 + 1904);
    v211 = *(v0 + 1896);
    v212 = *(v0 + 1888);
    v213 = *(v0 + 1880);
    v214 = *(v0 + 1864);
    v215 = *(v0 + 1840);
    v216 = *(v0 + 1816);
    v217 = *(v0 + 1808);
    v218 = *(v0 + 1800);
    v219 = *(v0 + 1792);
    v220 = *(v0 + 1768);
    v221 = *(v0 + 1760);
    v222 = *(v0 + 1736);
    v223 = *(v0 + 1712);
    v224 = *(v0 + 1704);
    v225 = *(v0 + 1696);
    v226 = *(v0 + 1688);
    v227 = *(v0 + 1680);
    v228 = *(v0 + 1672);
    v229 = *(v0 + 1664);
    v230 = *(v0 + 1656);
    v231 = *(v0 + 1648);
    v232 = *(v0 + 1640);
    v234 = *(v0 + 1632);
    v237 = *(v0 + 1624);
    v240 = *(v0 + 1600);
    v242 = *(v0 + 1576);
    v245 = *(v0 + 1568);
    v247 = *(v0 + 1560);
    v252 = *(v0 + 1552);
    v255 = *(v0 + 1544);
    v259 = *(v0 + 1520);
    v264 = *(v0 + 1496);

    v78 = *(v0 + 8);

    return v78(v268);
  }

  v46 = *(v0 + 2096);

  v47 = sub_100038578();
  v48 = sub_1000387A8();

  if (!os_log_type_enabled(v47, v48))
  {

    if (!v43)
    {
      goto LABEL_40;
    }

    goto LABEL_24;
  }

  v49 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  v273 = v50;
  *v49 = 136315138;
  if (!v43)
  {
    sub_1000219C0(_swiftEmptyArrayStorage);
  }

  v51 = sub_100038608();
  v53 = v52;

  v54 = sub_10001BFAC(v51, v53, &v273);

  *(v49 + 4) = v54;
  _os_log_impl(&_mh_execute_header, v47, v48, "Completed tokenization step: %s", v49, 0xCu);
  sub_10000387C(v50);

  if (v43)
  {
LABEL_24:
    v80 = *(v0 + 2056);
    v81 = *(v0 + 2016);
    v82 = *(v0 + 1976);
    v83 = *(v0 + 1464);
    sub_100001B40(&qword_100048318, &unk_100039580);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1000391E0;
    v85 = sub_100017C48(0x6B6F546C61746F74, 0xEF746E756F436E65, v43);
    if ((v85 & &_mh_execute_header) != 0)
    {
      v86 = -1082130432;
    }

    else
    {
      v86 = v85;
    }

    *(v84 + 32) = v86;
    v87 = sub_100017C48(0xD000000000000015, 0x800000010003B9F0, v43);
    if ((v87 & &_mh_execute_header) != 0)
    {
      v88 = -1082130432;
    }

    else
    {
      v88 = v87;
    }

    *(v84 + 36) = v88;
    v89 = sub_100017C48(0x656B6F5465726172, 0xEE006F697461526ELL, v43);
    if ((v89 & &_mh_execute_header) != 0)
    {
      v90 = -1082130432;
    }

    else
    {
      v90 = v89;
    }

    *(v84 + 40) = v90;
    v91 = sub_100017C48(0xD000000000000011, 0x800000010003BA10, v43);
    if ((v91 & &_mh_execute_header) != 0)
    {
      v92 = 0;
    }

    else
    {
      v92 = v91;
    }

    *(v84 + 44) = v92;
    v93 = sub_100017C48(0xD000000000000011, 0x800000010003BA30, v43);

    if ((v93 & &_mh_execute_header) != 0)
    {
      v94 = 0;
    }

    else
    {
      v94 = v93;
    }

    *(v84 + 48) = v94;
    v95 = sub_100017CA4(0, *(v84 + 16));
    v96 = sub_100038448();
    v98 = v97;
    sub_1000383C8();
    v99 = *v82;
    sub_10001EA9C(v82, type metadata accessor for ZeoliteEvalExtensionConfig);
    v100 = sub_100038638();
    v101 = swift_allocObject();
    v101[2] = v96;
    v101[3] = v98;
    v101[4] = v99;
    v101[5] = 0;
    v101[6] = v95;
    v101[7] = v84;
    *(v0 + 1320) = sub_10001FDFC;
    *(v0 + 1328) = v101;
    *(v0 + 1288) = _NSConcreteStackBlock;
    *(v0 + 1296) = 1107296256;
    *(v0 + 1304) = sub_100017D28;
    *(v0 + 1312) = &unk_100045908;
    v102 = _Block_copy((v0 + 1288));
    v103 = *(v0 + 1328);

    AnalyticsSendEventLazy();
    _Block_release(v102);
  }

LABEL_40:
  v104 = *(v0 + 1792);
  v105 = *(v0 + 1776);
  sub_10001FD94(*(v0 + 1576), &qword_1000482C8, &qword_100039528);
  v257(v104, v105);
  v106 = *(v0 + 2056);
  v107 = *(v0 + 2016);
  v108 = *(v0 + 1896);
  sub_1000383C8();
  v109 = *(v108 + 32);

  sub_10001EA9C(v108, type metadata accessor for ZeoliteEvalExtensionConfig);
  v110 = *(v109 + 16);
  v111 = (v109 + 32);
  while (v110)
  {
    if (*v111 <= 2u && *v111 && *v111 != 2)
    {

LABEL_58:

      *(v0 + 2584) = 2;
      v127 = *(v0 + 2080);
      v128 = *(v0 + 2072);
      v129 = sub_1000102D4;
      goto LABEL_90;
    }

    v112 = sub_100038A58();

    ++v111;
    --v110;
    if (v112)
    {
      goto LABEL_58;
    }
  }

  v113 = *(v0 + 2360);

  sub_10001E938(v0 + 752);

  *(v0 + 2480) = 0;
  v114 = *(v0 + 2336);
  v115 = *(v0 + 2056);
  v116 = *(v0 + 2016);
  v117 = *(v0 + 1888);
  (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
  sub_1000383C8();
  v118 = *(v117 + 32);

  sub_10001EA9C(v117, type metadata accessor for ZeoliteEvalExtensionConfig);
  v119 = *(v118 + 16);
  v120 = (v118 + 32);
  while (v119)
  {
    if (*v120 == 2)
    {

LABEL_60:
      v135 = *(v0 + 2592);

      if (v135 == 3)
      {
        v136 = 0;
      }

      else
      {
        v136 = v135;
      }

      if (v136 == 1)
      {
        goto LABEL_78;
      }

      v137 = sub_100038A58();

      if ((v137 & 1) == 0)
      {
        v138 = *(v0 + 2592);
        if (v138 == 3)
        {
          v138 = 0;
        }

        if (v138 <= 1)
        {
          v170 = sub_100038A58();

          if ((v170 & 1) == 0)
          {
            *(v0 + 2504) = 0;
            *(v0 + 2585) = 2;
            v127 = *(v0 + 2080);
            v128 = *(v0 + 2072);
            v129 = sub_10001416C;
            goto LABEL_90;
          }

          goto LABEL_79;
        }

LABEL_78:
      }

LABEL_79:
      v171 = *(v0 + 2000);
      v172 = *(v0 + 1488);
      v173 = *(v0 + 1480);
      sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
      swift_beginAccess();
      if ((*(v172 + 48))(v171, 1, v173))
      {
        v174 = *(v0 + 2336);
        (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
      }

      else
      {
        sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
      }

      v175 = *(v0 + 1672);
      v176 = *(v0 + 1656);
      v177 = *(v0 + 1536);
      v178 = *(v0 + 1528);
      sub_10001EA34(*(v0 + 1664), v175, &qword_100048178, &unk_100039530);
      sub_10001FA38(v175, v176, &qword_100048178, &unk_100039530);
      v179 = (*(v177 + 48))(v176, 1, v178);
      v180 = *(v0 + 2096);
      v181 = *(v0 + 1656);
      if (v179 == 1)
      {
        sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
        v182 = sub_100038578();
        v183 = sub_1000387A8();
        if (os_log_type_enabled(v182, v183))
        {
          v184 = swift_slowAlloc();
          *v184 = 0;
          _os_log_impl(&_mh_execute_header, v182, v183, "Query for all available embeddings.", v184, 2u);
        }
      }

      else
      {
        v185 = *(v0 + 1560);
        v186 = *(v0 + 1552);
        v187 = *(v0 + 1544);
        v188 = *(v0 + 1536);
        v189 = *(v0 + 1528);
        (*(v188 + 32))(v185, *(v0 + 1656), v189);
        v190 = *(v188 + 16);
        v190(v186, v185, v189);
        v190(v187, v186, v189);
        v191 = *(v188 + 8);
        v191(v186, v189);
        v192 = sub_100038578();
        v193 = sub_1000387A8();
        v194 = os_log_type_enabled(v192, v193);
        v195 = *(v0 + 1560);
        v196 = *(v0 + 1544);
        v197 = *(v0 + 1528);
        if (v194)
        {
          v261 = v191;
          v198 = swift_slowAlloc();
          v271 = v195;
          v199 = swift_slowAlloc();
          v273 = v199;
          *v198 = 136315138;
          v200 = sub_100037EA8();
          v202 = v201;
          v261(v196, v197);
          v203 = sub_10001BFAC(v200, v202, &v273);

          *(v198 + 4) = v203;
          _os_log_impl(&_mh_execute_header, v192, v193, "Last queried: %s", v198, 0xCu);
          sub_10000387C(v199);

          v261(v271, v197);
        }

        else
        {

          v191(v196, v197);
          v191(v195, v197);
        }
      }

      *(v0 + 2588) = 1;
      v127 = *(v0 + 2080);
      v128 = *(v0 + 2072);
      v129 = sub_100013090;
      goto LABEL_90;
    }

    v121 = sub_100038A58();

    ++v120;
    --v119;
    if (v121)
    {
      goto LABEL_60;
    }
  }

  v122 = *(v0 + 2208);

  sub_10001E98C(v0 + 936);

  *(v0 + 2528) = 0u;
  v123 = *(v0 + 2056);
  v124 = *(v0 + 2016);
  v125 = *(v0 + 1976);
  sub_1000383C8();
  v126 = *(v125 + 32);

  sub_10001EA9C(v125, type metadata accessor for ZeoliteEvalExtensionConfig);
  LOBYTE(v125) = sub_100015E04(3u, v126);

  if (v125)
  {
    *(v0 + 2587) = 2;
    v127 = *(v0 + 2080);
    v128 = *(v0 + 2072);
    v129 = sub_100014D64;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v130 = *(v0 + 1704);
    v131 = *(v0 + 1672);
    v132 = *(v0 + 1496);
    v133 = *(v0 + 1480);
    sub_100037EF8();
    sub_10001FA38(v131, v132 + *(v133 + 20), &qword_100048178, &unk_100039530);
    sub_10001FA38(v130, v132 + *(v133 + 24), &qword_100048178, &unk_100039530);
    if (sub_100023AF0())
    {
      v134.super.isa = sub_1000385E8().super.isa;
    }

    else
    {
      v134.super.isa = 0;
    }

    v139 = *(v0 + 2120);
    v265 = *(v0 + 2128);
    v269 = *(v0 + 2096);
    v140 = *(v0 + 2056);
    v141 = *(v0 + 2040);
    v256 = *(v0 + 2144);
    v260 = *(v0 + 2032);
    v142 = *(v0 + 2024);
    v143 = *(v0 + 2016);
    v144 = *(v0 + 1976);
    sub_1000383C8();
    v273 = 0x6769666E6F63;
    v274 = 0xE600000000000000;
    *(v0 + 1448) = *v144;
    v279._countAndFlagsBits = sub_100038A38();
    sub_100038698(v279);

    sub_10001EA9C(v144, type metadata accessor for ZeoliteEvalExtensionConfig);
    v145 = sub_100038638();

    [v256 setValue:v134.super.isa forKey:v145];

    swift_unknownObjectRelease();
    v139(v141, v140, v143);
    v139(v260, v141, v143);
    v146 = *(v142 + 8);
    *(v0 + 2544) = v146;
    *(v0 + 2552) = (v142 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v146(v141, v143);
    v147 = sub_100038578();
    v148 = sub_1000387A8();
    v149 = os_log_type_enabled(v147, v148);
    v150 = *(v0 + 2032);
    v151 = *(v0 + 2016);
    if (v149)
    {
      v152 = *(v0 + 1976);
      v153 = swift_slowAlloc();
      v270 = swift_slowAlloc();
      v272 = v270;
      *v153 = 136315138;
      v266 = v148;
      sub_1000383C8();
      v273 = 0x6769666E6F63;
      v274 = 0xE600000000000000;
      *(v0 + 1456) = *v152;
      v280._countAndFlagsBits = sub_100038A38();
      sub_100038698(v280);

      v154 = v273;
      v155 = v274;
      sub_10001EA9C(v152, type metadata accessor for ZeoliteEvalExtensionConfig);
      v146(v150, v151);
      v156 = sub_10001BFAC(v154, v155, &v272);

      *(v153 + 4) = v156;
      _os_log_impl(&_mh_execute_header, v147, v266, "Execution state saved for %s.", v153, 0xCu);
      sub_10000387C(v270);
    }

    else
    {

      v146(v150, v151);
    }

    v157 = *(v0 + 2096);
    v158 = *(v0 + 1768);
    v159 = *(v0 + 1760);
    v160 = *(v0 + 1752);
    v161 = *(v0 + 1744);
    sub_100038868();
    sub_100038878();
    v162 = *(v160 + 8);
    *(v0 + 2560) = v162;
    *(v0 + 2568) = (v160 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v162(v159, v161);
    v163 = sub_100038578();
    v164 = sub_1000387A8();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v273 = v166;
      *v165 = 136315138;
      v167 = sub_100038B78();
      v169 = sub_10001BFAC(v167, v168, &v273);

      *(v165 + 4) = v169;
      _os_log_impl(&_mh_execute_header, v163, v164, "Time elapsed: %s.", v165, 0xCu);
      sub_10000387C(v166);
    }

    *(v0 + 2586) = 4;
    v127 = *(v0 + 2080);
    v128 = *(v0 + 2072);
    v129 = sub_100015958;
  }

LABEL_90:

  return _swift_task_switch(v129, v128, v127);
}

uint64_t sub_1000102D4()
{
  v1 = v0[261];
  v2 = v0[258];
  v3 = v0[183];
  sub_100038318();

  return _swift_task_switch(sub_100010350, 0, 0);
}

uint64_t sub_100010350()
{
  v1 = *(v0 + 2591);
  sub_10001E938(v0 + 752);
  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = 0x726170736E617274;
    }

    else
    {
      v2 = 0x6C69616D65;
    }

    if (v1)
    {
      v3 = 0xEC00000079636E65;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    goto LABEL_10;
  }

  if (v1 == 2)
  {
    v3 = 0xE300000000000000;
    v2 = 7564659;
LABEL_10:
    *(v0 + 2440) = v3;
    v4 = swift_task_alloc();
    *(v0 + 2448) = v4;
    *v4 = v0;
    v4[1] = sub_1000108DC;
    v5 = *(v0 + 2360);
    v6 = *(v0 + 1736);

    return sub_100017DB4(v5, v6, v2, v3);
  }

  v8 = *(v0 + 2360);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2096);
  sub_10001E98C(v0 + 936);

  v11 = sub_100038578();
  v12 = sub_1000387C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to complete embed step.", v13, 2u);
  }

  v14 = *(v0 + 2216);
  v15 = *(v0 + 2144);
  v16 = *(v0 + 2024);
  v17 = *(v0 + 2016);
  v74 = *(v0 + 2000);
  v18 = *(v0 + 1768);
  v19 = *(v0 + 1752);
  v20 = *(v0 + 1744);
  v70 = *(v0 + 2056);
  v72 = *(v0 + 1736);
  v21 = *(v0 + 1704);

  sub_10001E9E0();
  v22 = objc_allocWithZone(sub_100038388());
  v76 = sub_100038368();

  sub_10001FD94(v21, &qword_100048178, &unk_100039530);
  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v70, v17);
  sub_10001EA9C(v72, type metadata accessor for EmbedParameters);
  sub_10001FD94(v74, &qword_1000482E0, &qword_100039548);
  v23 = *(v0 + 2056);
  v24 = *(v0 + 2048);
  v25 = *(v0 + 2040);
  v26 = *(v0 + 2032);
  v27 = *(v0 + 2008);
  v28 = *(v0 + 2000);
  v29 = *(v0 + 1992);
  v30 = *(v0 + 1976);
  v31 = *(v0 + 1968);
  v32 = *(v0 + 1960);
  v34 = *(v0 + 1952);
  v35 = *(v0 + 1944);
  v36 = *(v0 + 1936);
  v37 = *(v0 + 1928);
  v38 = *(v0 + 1920);
  v39 = *(v0 + 1912);
  v40 = *(v0 + 1904);
  v41 = *(v0 + 1896);
  v42 = *(v0 + 1888);
  v43 = *(v0 + 1880);
  v44 = *(v0 + 1864);
  v45 = *(v0 + 1840);
  v46 = *(v0 + 1816);
  v47 = *(v0 + 1808);
  v48 = *(v0 + 1800);
  v49 = *(v0 + 1792);
  v50 = *(v0 + 1768);
  v51 = *(v0 + 1760);
  v52 = *(v0 + 1736);
  v53 = *(v0 + 1712);
  v54 = *(v0 + 1704);
  v55 = *(v0 + 1696);
  v56 = *(v0 + 1688);
  v57 = *(v0 + 1680);
  v58 = *(v0 + 1672);
  v59 = *(v0 + 1664);
  v60 = *(v0 + 1656);
  v61 = *(v0 + 1648);
  v62 = *(v0 + 1640);
  v63 = *(v0 + 1632);
  v64 = *(v0 + 1624);
  v65 = *(v0 + 1600);
  v66 = *(v0 + 1576);
  v67 = *(v0 + 1568);
  v68 = *(v0 + 1560);
  v69 = *(v0 + 1552);
  v71 = *(v0 + 1544);
  v73 = *(v0 + 1520);
  v75 = *(v0 + 1496);

  v33 = *(v0 + 8);

  return v33(v76);
}

uint64_t sub_1000108DC(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2448);
  v5 = *(*v2 + 2440);
  v6 = *(*v2 + 2360);
  v8 = *v2;
  *(v3 + 2456) = a1;
  *(v3 + 2597) = a2;

  return _swift_task_switch(sub_100010A1C, 0, 0);
}

uint64_t sub_100010A1C()
{
  v228 = v0;
  v1 = *(v0 + 2456);
  if (*(v0 + 2597) != 24)
  {
    v21 = *(v0 + 2208);
    v22 = *(v0 + 2096);

    sub_10001E98C(v0 + 936);

    v23 = sub_100038578();
    v24 = sub_1000387C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to complete embed step.", v25, 2u);
    }

    v26 = *(v0 + 2597);
    v27 = *(v0 + 2216);
    v28 = *(v0 + 2144);
    v29 = *(v0 + 2024);
    v202 = *(v0 + 2016);
    v205 = *(v0 + 2056);
    v30 = *(v0 + 1768);
    v31 = *(v0 + 1752);
    v32 = *(v0 + 1744);
    v210 = *(v0 + 1736);
    v215 = *(v0 + 2000);
    v33 = *(v0 + 1704);

    v226 = &type metadata for ZeoliteEvalExtensionError;
    v227 = sub_10001E9E0();
    LOBYTE(v224) = v26;
    v34 = objc_allocWithZone(sub_100038388());
    v219 = sub_100038368();

    sub_10001FD94(v33, &qword_100048178, &unk_100039530);
    (*(v31 + 8))(v30, v32);
    (*(v29 + 8))(v205, v202);
    goto LABEL_25;
  }

  if (!v1)
  {
    v35 = *(v0 + 2208);
    v36 = *(v0 + 2096);
    sub_10001E98C(v0 + 936);

    v37 = sub_100038578();
    v38 = sub_1000387C8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to generate embeddings.", v39, 2u);
    }

    v40 = *(v0 + 2216);
    v41 = *(v0 + 2144);
    v42 = *(v0 + 2024);
    v43 = *(v0 + 2016);
    v215 = *(v0 + 2000);
    v44 = *(v0 + 1768);
    v45 = *(v0 + 1752);
    v46 = *(v0 + 1744);
    v206 = *(v0 + 2056);
    v210 = *(v0 + 1736);
    v47 = *(v0 + 1704);

    v226 = &type metadata for ZeoliteEvalExtensionError;
    v227 = sub_10001E9E0();
    v48 = 12;
    goto LABEL_24;
  }

  v2 = *(v0 + 2595);
  if (v2 == 3)
  {
    v2 = 0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(v0 + 1464);
      v4 = *(v0 + 2456);
      sub_100038448();
      v5 = sub_100001758(v4);
      v7 = v6;
      v8 = v6;

      if (v8 == 24)
      {
        if (v5 >= 1)
        {
          v9 = *(v0 + 2096);
          v10 = sub_100038578();
          v11 = sub_1000387A8();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 134217984;
            *(v12 + 4) = v5;
            _os_log_impl(&_mh_execute_header, v10, v11, "Sent %ld events.", v12, 0xCu);
          }
        }

        v1 = *(v0 + 2456);
        goto LABEL_13;
      }

      v77 = *(v0 + 2456);
      v78 = *(v0 + 2208);
      v79 = *(v0 + 2096);

      sub_10001E98C(v0 + 936);

      v80 = sub_100038578();
      v81 = sub_1000387C8();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "Failed to write embeddings events.", v82, 2u);
      }

      v83 = *(v0 + 2216);
      v84 = *(v0 + 2144);
      v85 = *(v0 + 2024);
      v204 = *(v0 + 2016);
      v208 = *(v0 + 2056);
      v86 = *(v0 + 1768);
      v87 = *(v0 + 1752);
      v88 = *(v0 + 1744);
      v210 = *(v0 + 1736);
      v215 = *(v0 + 2000);
      v89 = *(v0 + 1704);

      v226 = &type metadata for ZeoliteEvalExtensionError;
      v227 = sub_10001E9E0();
      LOBYTE(v224) = v7;
      v90 = objc_allocWithZone(sub_100038388());
      v219 = sub_100038368();

      sub_10001FD94(v89, &qword_100048178, &unk_100039530);
      (*(v87 + 8))(v86, v88);
      (*(v85 + 8))(v208, v204);
LABEL_25:
      sub_10001EA9C(v210, type metadata accessor for EmbedParameters);
      sub_10001FD94(v215, &qword_1000482E0, &qword_100039548);
      v50 = *(v0 + 2056);
      v51 = *(v0 + 2048);
      v52 = *(v0 + 2040);
      v53 = *(v0 + 2032);
      v54 = *(v0 + 2008);
      v55 = *(v0 + 2000);
      v56 = *(v0 + 1992);
      v57 = *(v0 + 1976);
      v58 = *(v0 + 1968);
      v59 = *(v0 + 1960);
      v167 = *(v0 + 1952);
      v168 = *(v0 + 1944);
      v169 = *(v0 + 1936);
      v170 = *(v0 + 1928);
      v171 = *(v0 + 1920);
      v172 = *(v0 + 1912);
      v173 = *(v0 + 1904);
      v174 = *(v0 + 1896);
      v175 = *(v0 + 1888);
      v176 = *(v0 + 1880);
      v177 = *(v0 + 1864);
      v178 = *(v0 + 1840);
      v179 = *(v0 + 1816);
      v180 = *(v0 + 1808);
      v181 = *(v0 + 1800);
      v182 = *(v0 + 1792);
      v183 = *(v0 + 1768);
      v184 = *(v0 + 1760);
      v185 = *(v0 + 1736);
      v186 = *(v0 + 1712);
      v187 = *(v0 + 1704);
      v188 = *(v0 + 1696);
      v189 = *(v0 + 1688);
      v190 = *(v0 + 1680);
      v191 = *(v0 + 1672);
      v192 = *(v0 + 1664);
      v193 = *(v0 + 1656);
      v194 = *(v0 + 1648);
      v195 = *(v0 + 1640);
      v196 = *(v0 + 1632);
      v197 = *(v0 + 1624);
      v198 = *(v0 + 1600);
      v199 = *(v0 + 1576);
      v200 = *(v0 + 1568);
      v201 = *(v0 + 1560);
      v203 = *(v0 + 1552);
      v207 = *(v0 + 1544);
      v211 = *(v0 + 1520);
      v216 = *(v0 + 1496);

      v60 = *(v0 + 8);

      return v60(v219);
    }

    v62 = (*(v0 + 1736) + *(*(v0 + 1720) + 28));
    v63 = v62[1];
    if (v63)
    {
      v64 = *v62;
      v65 = *(v0 + 2456);
      v66 = swift_task_alloc();
      *(v0 + 2464) = v66;
      *v66 = v0;
      v66[1] = sub_100011F04;

      return sub_100001B88(v65, v64, v63);
    }

    v91 = *(v0 + 2208);
    v92 = *(v0 + 2096);

    sub_10001E98C(v0 + 936);

    v93 = sub_100038578();
    v94 = sub_1000387C8();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Invalid kvStoreKey provided", v95, 2u);
    }

    v96 = *(v0 + 2216);
    v41 = *(v0 + 2144);
    v42 = *(v0 + 2024);
    v43 = *(v0 + 2016);
    v215 = *(v0 + 2000);
    v44 = *(v0 + 1768);
    v45 = *(v0 + 1752);
    v46 = *(v0 + 1744);
    v206 = *(v0 + 2056);
    v210 = *(v0 + 1736);
    v47 = *(v0 + 1704);

    v226 = &type metadata for ZeoliteEvalExtensionError;
    v227 = sub_10001E9E0();
    v48 = 21;
LABEL_24:
    LOBYTE(v224) = v48;
    v49 = objc_allocWithZone(sub_100038388());
    v219 = sub_100038368();

    sub_10001FD94(v47, &qword_100048178, &unk_100039530);
    (*(v45 + 8))(v44, v46);
    (*(v42 + 8))(v206, v43);
    goto LABEL_25;
  }

LABEL_13:
  v214 = v1;
  *(v0 + 2480) = v1;
  v13 = *(v0 + 2336);
  v14 = *(v0 + 2056);
  v15 = *(v0 + 2016);
  v16 = *(v0 + 1888);
  (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
  sub_1000383C8();
  v17 = *(v16 + 32);

  sub_10001EA9C(v16, type metadata accessor for ZeoliteEvalExtensionConfig);
  v18 = (v17 + 32);
  v19 = *(v17 + 16);
  while (v19)
  {
    if (*v18 == 2)
    {

LABEL_34:
      v75 = *(v0 + 2592);

      if (v75 == 3)
      {
        v76 = 0;
      }

      else
      {
        v76 = v75;
      }

      if (v76 == 1)
      {
LABEL_62:
      }

      else
      {
        v102 = sub_100038A58();

        if ((v102 & 1) == 0)
        {
          v103 = *(v0 + 2592);
          if (v103 == 3)
          {
            v103 = 0;
          }

          if (v103 > 1)
          {
            goto LABEL_62;
          }

          v133 = sub_100038A58();

          if ((v133 & 1) == 0)
          {
            *(v0 + 2504) = v214;
            *(v0 + 2585) = 2;
            v72 = *(v0 + 2080);
            v73 = *(v0 + 2072);
            v74 = sub_10001416C;
            goto LABEL_74;
          }
        }
      }

      v134 = *(v0 + 2000);
      v135 = *(v0 + 1488);
      v136 = *(v0 + 1480);
      sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
      swift_beginAccess();
      if ((*(v135 + 48))(v134, 1, v136))
      {
        v137 = *(v0 + 2336);
        (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
      }

      else
      {
        sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
      }

      v138 = *(v0 + 1672);
      v139 = *(v0 + 1656);
      v140 = *(v0 + 1536);
      v141 = *(v0 + 1528);
      sub_10001EA34(*(v0 + 1664), v138, &qword_100048178, &unk_100039530);
      sub_10001FA38(v138, v139, &qword_100048178, &unk_100039530);
      v142 = (*(v140 + 48))(v139, 1, v141);
      v143 = *(v0 + 2096);
      v144 = *(v0 + 1656);
      if (v142 == 1)
      {
        sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
        v145 = sub_100038578();
        v146 = sub_1000387A8();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          *v147 = 0;
          _os_log_impl(&_mh_execute_header, v145, v146, "Query for all available embeddings.", v147, 2u);
        }
      }

      else
      {
        v148 = *(v0 + 1560);
        v149 = *(v0 + 1552);
        v150 = *(v0 + 1544);
        v151 = *(v0 + 1536);
        v152 = *(v0 + 1528);
        (*(v151 + 32))(v148, *(v0 + 1656), v152);
        v153 = *(v151 + 16);
        v153(v149, v148, v152);
        v153(v150, v149, v152);
        v154 = *(v151 + 8);
        v154(v149, v152);
        v155 = sub_100038578();
        v156 = sub_1000387A8();
        v157 = os_log_type_enabled(v155, v156);
        v158 = *(v0 + 1560);
        v159 = *(v0 + 1544);
        v160 = *(v0 + 1528);
        if (v157)
        {
          v213 = v154;
          v161 = swift_slowAlloc();
          v222 = v158;
          v162 = swift_slowAlloc();
          v224 = v162;
          *v161 = 136315138;
          v163 = sub_100037EA8();
          v165 = v164;
          v213(v159, v160);
          v166 = sub_10001BFAC(v163, v165, &v224);

          *(v161 + 4) = v166;
          _os_log_impl(&_mh_execute_header, v155, v156, "Last queried: %s", v161, 0xCu);
          sub_10000387C(v162);

          v213(v222, v160);
        }

        else
        {

          v154(v159, v160);
          v154(v158, v160);
        }
      }

      *(v0 + 2588) = 1;
      v72 = *(v0 + 2080);
      v73 = *(v0 + 2072);
      v74 = sub_100013090;
      goto LABEL_74;
    }

    v20 = sub_100038A58();

    ++v18;
    --v19;
    if (v20)
    {
      goto LABEL_34;
    }
  }

  v67 = *(v0 + 2208);

  sub_10001E98C(v0 + 936);

  *(v0 + 2536) = v214;
  *(v0 + 2528) = 0;
  v68 = *(v0 + 2056);
  v69 = *(v0 + 2016);
  v70 = *(v0 + 1976);
  sub_1000383C8();
  v71 = *(v70 + 32);

  sub_10001EA9C(v70, type metadata accessor for ZeoliteEvalExtensionConfig);
  LOBYTE(v70) = sub_100015E04(3u, v71);

  if (v70)
  {
    *(v0 + 2587) = 2;
    v72 = *(v0 + 2080);
    v73 = *(v0 + 2072);
    v74 = sub_100014D64;
  }

  else
  {

    v97 = *(v0 + 1704);
    v98 = *(v0 + 1672);
    v99 = *(v0 + 1496);
    v100 = *(v0 + 1480);
    sub_100037EF8();
    sub_10001FA38(v98, v99 + *(v100 + 20), &qword_100048178, &unk_100039530);
    sub_10001FA38(v97, v99 + *(v100 + 24), &qword_100048178, &unk_100039530);
    if (sub_100023AF0())
    {
      v101.super.isa = sub_1000385E8().super.isa;
    }

    else
    {
      v101.super.isa = 0;
    }

    v104 = *(v0 + 2120);
    v217 = *(v0 + 2128);
    v220 = *(v0 + 2096);
    v105 = *(v0 + 2056);
    v106 = *(v0 + 2040);
    v209 = *(v0 + 2144);
    v212 = *(v0 + 2032);
    v107 = *(v0 + 2024);
    v108 = *(v0 + 2016);
    v109 = *(v0 + 1976);
    sub_1000383C8();
    v224 = 0x6769666E6F63;
    v225 = 0xE600000000000000;
    *(v0 + 1448) = *v109;
    v230._countAndFlagsBits = sub_100038A38();
    sub_100038698(v230);

    sub_10001EA9C(v109, type metadata accessor for ZeoliteEvalExtensionConfig);
    v110 = sub_100038638();

    [v209 setValue:v101.super.isa forKey:v110];

    swift_unknownObjectRelease();
    v104(v106, v105, v108);
    v104(v212, v106, v108);
    v111 = *(v107 + 8);
    *(v0 + 2544) = v111;
    *(v0 + 2552) = (v107 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v111(v106, v108);
    v112 = sub_100038578();
    v113 = sub_1000387A8();
    v114 = os_log_type_enabled(v112, v113);
    v115 = *(v0 + 2032);
    v116 = *(v0 + 2016);
    if (v114)
    {
      v117 = *(v0 + 1976);
      v118 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v223 = v221;
      *v118 = 136315138;
      v218 = v113;
      sub_1000383C8();
      v224 = 0x6769666E6F63;
      v225 = 0xE600000000000000;
      *(v0 + 1456) = *v117;
      v231._countAndFlagsBits = sub_100038A38();
      sub_100038698(v231);

      sub_10001EA9C(v117, type metadata accessor for ZeoliteEvalExtensionConfig);
      v111(v115, v116);
      v119 = sub_10001BFAC(v224, v225, &v223);

      *(v118 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v112, v218, "Execution state saved for %s.", v118, 0xCu);
      sub_10000387C(v221);
    }

    else
    {

      v111(v115, v116);
    }

    v120 = *(v0 + 2096);
    v121 = *(v0 + 1768);
    v122 = *(v0 + 1760);
    v123 = *(v0 + 1752);
    v124 = *(v0 + 1744);
    sub_100038868();
    sub_100038878();
    v125 = *(v123 + 8);
    *(v0 + 2560) = v125;
    *(v0 + 2568) = (v123 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v125(v122, v124);
    v126 = sub_100038578();
    v127 = sub_1000387A8();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v224 = v129;
      *v128 = 136315138;
      v130 = sub_100038B78();
      v132 = sub_10001BFAC(v130, v131, &v224);

      *(v128 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v126, v127, "Time elapsed: %s.", v128, 0xCu);
      sub_10000387C(v129);
    }

    *(v0 + 2586) = 4;
    v72 = *(v0 + 2080);
    v73 = *(v0 + 2072);
    v74 = sub_100015958;
  }

LABEL_74:

  return _swift_task_switch(v74, v73, v72);
}

uint64_t sub_100011F04(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2464);
  v6 = *v2;
  *(v3 + 2472) = a1;
  *(v3 + 2598) = a2;

  return _swift_task_switch(sub_100012008, 0, 0);
}

uint64_t sub_100012008()
{
  v179 = v0;
  v1 = *(v0 + 2598);
  if (v1 == 24)
  {
    v2 = *(v0 + 2472);
    if (v2 >= 1)
    {
      v3 = *(v0 + 2096);
      v4 = sub_100038578();
      v5 = sub_1000387A8();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 134217984;
        *(v6 + 4) = v2;
        _os_log_impl(&_mh_execute_header, v4, v5, "Sent %ld events.", v6, 0xCu);
      }
    }

    v165 = *(v0 + 2456);
    *(v0 + 2480) = v165;
    v7 = *(v0 + 2336);
    v8 = *(v0 + 2056);
    v9 = *(v0 + 2016);
    v10 = *(v0 + 1888);
    (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
    sub_1000383C8();
    v11 = *(v10 + 32);

    sub_10001EA9C(v10, type metadata accessor for ZeoliteEvalExtensionConfig);
    v12 = (v11 + 32);
    v13 = *(v11 + 16);
    while (v13)
    {
      if (*v12 == 2)
      {

LABEL_18:
        v49 = *(v0 + 2592);

        if (v49 == 3)
        {
          v50 = 0;
        }

        else
        {
          v50 = v49;
        }

        if (v50 == 1)
        {
LABEL_40:
        }

        else
        {
          v56 = sub_100038A58();

          if ((v56 & 1) == 0)
          {
            v57 = *(v0 + 2592);
            if (v57 == 3)
            {
              v57 = 0;
            }

            if (v57 > 1)
            {
              goto LABEL_40;
            }

            v87 = sub_100038A58();

            if ((v87 & 1) == 0)
            {
              *(v0 + 2504) = v165;
              *(v0 + 2585) = 2;
              v46 = *(v0 + 2080);
              v47 = *(v0 + 2072);
              v48 = sub_10001416C;
              goto LABEL_52;
            }
          }
        }

        v88 = *(v0 + 2000);
        v89 = *(v0 + 1488);
        v90 = *(v0 + 1480);
        sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
        swift_beginAccess();
        if ((*(v89 + 48))(v88, 1, v90))
        {
          v91 = *(v0 + 2336);
          (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
        }

        else
        {
          sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
        }

        v92 = *(v0 + 1672);
        v93 = *(v0 + 1656);
        v94 = *(v0 + 1536);
        v95 = *(v0 + 1528);
        sub_10001EA34(*(v0 + 1664), v92, &qword_100048178, &unk_100039530);
        sub_10001FA38(v92, v93, &qword_100048178, &unk_100039530);
        v96 = (*(v94 + 48))(v93, 1, v95);
        v97 = *(v0 + 2096);
        v98 = *(v0 + 1656);
        if (v96 == 1)
        {
          sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
          v99 = sub_100038578();
          v100 = sub_1000387A8();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&_mh_execute_header, v99, v100, "Query for all available embeddings.", v101, 2u);
          }
        }

        else
        {
          v102 = *(v0 + 1560);
          v103 = *(v0 + 1552);
          v104 = *(v0 + 1544);
          v105 = *(v0 + 1536);
          v106 = *(v0 + 1528);
          (*(v105 + 32))(v102, *(v0 + 1656), v106);
          v107 = *(v105 + 16);
          v107(v103, v102, v106);
          v107(v104, v103, v106);
          v108 = *(v105 + 8);
          v108(v103, v106);
          v109 = sub_100038578();
          v110 = sub_1000387A8();
          v111 = os_log_type_enabled(v109, v110);
          v112 = *(v0 + 1560);
          v113 = *(v0 + 1544);
          v114 = *(v0 + 1528);
          if (v111)
          {
            v164 = v108;
            v115 = swift_slowAlloc();
            v173 = v112;
            v116 = swift_slowAlloc();
            v175 = v116;
            *v115 = 136315138;
            v117 = sub_100037EA8();
            v119 = v118;
            v164(v113, v114);
            v120 = sub_10001BFAC(v117, v119, &v175);

            *(v115 + 4) = v120;
            _os_log_impl(&_mh_execute_header, v109, v110, "Last queried: %s", v115, 0xCu);
            sub_10000387C(v116);

            v164(v173, v114);
          }

          else
          {

            v108(v113, v114);
            v108(v112, v114);
          }
        }

        *(v0 + 2588) = 1;
        v46 = *(v0 + 2080);
        v47 = *(v0 + 2072);
        v48 = sub_100013090;
        goto LABEL_52;
      }

      v14 = sub_100038A58();

      ++v12;
      --v13;
      if (v14)
      {
        goto LABEL_18;
      }
    }

    v41 = *(v0 + 2208);

    sub_10001E98C(v0 + 936);

    *(v0 + 2536) = v165;
    *(v0 + 2528) = 0;
    v42 = *(v0 + 2056);
    v43 = *(v0 + 2016);
    v44 = *(v0 + 1976);
    sub_1000383C8();
    v45 = *(v44 + 32);

    sub_10001EA9C(v44, type metadata accessor for ZeoliteEvalExtensionConfig);
    LOBYTE(v44) = sub_100015E04(3u, v45);

    if (v44)
    {
      *(v0 + 2587) = 2;
      v46 = *(v0 + 2080);
      v47 = *(v0 + 2072);
      v48 = sub_100014D64;
    }

    else
    {

      v51 = *(v0 + 1704);
      v52 = *(v0 + 1672);
      v53 = *(v0 + 1496);
      v54 = *(v0 + 1480);
      sub_100037EF8();
      sub_10001FA38(v52, v53 + *(v54 + 20), &qword_100048178, &unk_100039530);
      sub_10001FA38(v51, v53 + *(v54 + 24), &qword_100048178, &unk_100039530);
      if (sub_100023AF0())
      {
        v55.super.isa = sub_1000385E8().super.isa;
      }

      else
      {
        v55.super.isa = 0;
      }

      v58 = *(v0 + 2120);
      v168 = *(v0 + 2128);
      v171 = *(v0 + 2096);
      v59 = *(v0 + 2056);
      v60 = *(v0 + 2040);
      v160 = *(v0 + 2144);
      v163 = *(v0 + 2032);
      v61 = *(v0 + 2024);
      v62 = *(v0 + 2016);
      v63 = *(v0 + 1976);
      sub_1000383C8();
      v175 = 0x6769666E6F63;
      v176 = 0xE600000000000000;
      *(v0 + 1448) = *v63;
      v181._countAndFlagsBits = sub_100038A38();
      sub_100038698(v181);

      sub_10001EA9C(v63, type metadata accessor for ZeoliteEvalExtensionConfig);
      v64 = sub_100038638();

      [v160 setValue:v55.super.isa forKey:v64];

      swift_unknownObjectRelease();
      v58(v60, v59, v62);
      v58(v163, v60, v62);
      v65 = *(v61 + 8);
      *(v0 + 2544) = v65;
      *(v0 + 2552) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v65(v60, v62);
      v66 = sub_100038578();
      v67 = sub_1000387A8();
      v68 = os_log_type_enabled(v66, v67);
      v69 = *(v0 + 2032);
      v70 = *(v0 + 2016);
      if (v68)
      {
        v71 = *(v0 + 1976);
        v72 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v174 = v172;
        *v72 = 136315138;
        v169 = v67;
        sub_1000383C8();
        v175 = 0x6769666E6F63;
        v176 = 0xE600000000000000;
        *(v0 + 1456) = *v71;
        v182._countAndFlagsBits = sub_100038A38();
        sub_100038698(v182);

        sub_10001EA9C(v71, type metadata accessor for ZeoliteEvalExtensionConfig);
        v65(v69, v70);
        v73 = sub_10001BFAC(v175, v176, &v174);

        *(v72 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v66, v169, "Execution state saved for %s.", v72, 0xCu);
        sub_10000387C(v172);
      }

      else
      {

        v65(v69, v70);
      }

      v74 = *(v0 + 2096);
      v75 = *(v0 + 1768);
      v76 = *(v0 + 1760);
      v77 = *(v0 + 1752);
      v78 = *(v0 + 1744);
      sub_100038868();
      sub_100038878();
      v79 = *(v77 + 8);
      *(v0 + 2560) = v79;
      *(v0 + 2568) = (v77 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v79(v76, v78);
      v80 = sub_100038578();
      v81 = sub_1000387A8();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v175 = v83;
        *v82 = 136315138;
        v84 = sub_100038B78();
        v86 = sub_10001BFAC(v84, v85, &v175);

        *(v82 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v80, v81, "Time elapsed: %s.", v82, 0xCu);
        sub_10000387C(v83);
      }

      *(v0 + 2586) = 4;
      v46 = *(v0 + 2080);
      v47 = *(v0 + 2072);
      v48 = sub_100015958;
    }

LABEL_52:

    return _swift_task_switch(v48, v47, v46);
  }

  else
  {
    v15 = *(v0 + 2456);
    v16 = *(v0 + 2208);
    v17 = *(v0 + 2096);

    sub_10001E98C(v0 + 936);

    v18 = sub_100038578();
    v19 = sub_1000387C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to write embeddings events.", v20, 2u);
    }

    v21 = *(v0 + 2216);
    v22 = *(v0 + 2144);
    v23 = *(v0 + 2024);
    v156 = *(v0 + 2016);
    v158 = *(v0 + 2056);
    v24 = *(v0 + 1768);
    v25 = *(v0 + 1752);
    v26 = *(v0 + 1744);
    v161 = *(v0 + 1736);
    v166 = *(v0 + 2000);
    v27 = *(v0 + 1704);

    v177 = &type metadata for ZeoliteEvalExtensionError;
    v178 = sub_10001E9E0();
    LOBYTE(v175) = v1;
    v28 = objc_allocWithZone(sub_100038388());
    v170 = sub_100038368();

    sub_10001FD94(v27, &qword_100048178, &unk_100039530);
    (*(v25 + 8))(v24, v26);
    (*(v23 + 8))(v158, v156);
    sub_10001EA9C(v161, type metadata accessor for EmbedParameters);
    sub_10001FD94(v166, &qword_1000482E0, &qword_100039548);
    v29 = *(v0 + 2056);
    v30 = *(v0 + 2048);
    v31 = *(v0 + 2040);
    v32 = *(v0 + 2032);
    v33 = *(v0 + 2008);
    v34 = *(v0 + 2000);
    v35 = *(v0 + 1992);
    v36 = *(v0 + 1976);
    v37 = *(v0 + 1968);
    v38 = *(v0 + 1960);
    v121 = *(v0 + 1952);
    v122 = *(v0 + 1944);
    v123 = *(v0 + 1936);
    v124 = *(v0 + 1928);
    v125 = *(v0 + 1920);
    v126 = *(v0 + 1912);
    v127 = *(v0 + 1904);
    v128 = *(v0 + 1896);
    v129 = *(v0 + 1888);
    v130 = *(v0 + 1880);
    v131 = *(v0 + 1864);
    v132 = *(v0 + 1840);
    v133 = *(v0 + 1816);
    v134 = *(v0 + 1808);
    v135 = *(v0 + 1800);
    v136 = *(v0 + 1792);
    v137 = *(v0 + 1768);
    v138 = *(v0 + 1760);
    v139 = *(v0 + 1736);
    v140 = *(v0 + 1712);
    v141 = *(v0 + 1704);
    v142 = *(v0 + 1696);
    v143 = *(v0 + 1688);
    v144 = *(v0 + 1680);
    v145 = *(v0 + 1672);
    v146 = *(v0 + 1664);
    v147 = *(v0 + 1656);
    v148 = *(v0 + 1648);
    v149 = *(v0 + 1640);
    v150 = *(v0 + 1632);
    v151 = *(v0 + 1624);
    v152 = *(v0 + 1600);
    v153 = *(v0 + 1576);
    v154 = *(v0 + 1568);
    v155 = *(v0 + 1560);
    v157 = *(v0 + 1552);
    v159 = *(v0 + 1544);
    v162 = *(v0 + 1520);
    v167 = *(v0 + 1496);

    v39 = *(v0 + 8);

    return v39(v170);
  }
}

uint64_t sub_100013090()
{
  v1 = v0[261];
  v2 = v0[258];
  v3 = v0[183];
  sub_100038318();

  return _swift_task_switch(sub_10001310C, 0, 0);
}

uint64_t sub_10001310C()
{
  v1 = *(v0 + 2592);
  if (v1 == 3)
  {
    v1 = 0;
  }

  v2 = *(v0 + 2480);
  if (!v1)
  {
    goto LABEL_23;
  }

  if (v1 == 1)
  {
    v3 = *(v0 + 2336);
    v4 = *(v0 + 2328);
    v5 = *(v0 + 2593);
    v6 = *(v0 + 1672);
    v7 = *(v0 + 1648);
    v8 = *(v0 + 1640);
    v9 = *(v0 + 1528);
    v10 = *(v0 + 2480);

    sub_10001FA38(v6, v7, &qword_100048178, &unk_100039530);
    v4(v8, 1, 1, v9);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v12 = 0xE300000000000000;
        v11 = 7564659;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }
    }

    else
    {
      if (v5)
      {
        v11 = 0x726170736E617274;
      }

      else
      {
        v11 = 0x6C69616D65;
      }

      if (v5)
      {
        v12 = 0xEC00000079636E65;
      }

      else
      {
        v12 = 0xE500000000000000;
      }
    }

    v33 = *(v0 + 1648);
    v34 = *(v0 + 1640);
    v2 = sub_1000024D0(v33, v34, 0, *(v0 + 2224), *(v0 + 2232), v11, v12);
    v36 = v35;

    sub_10001FD94(v34, &qword_100048178, &unk_100039530);
    sub_10001FD94(v33, &qword_100048178, &unk_100039530);
    if (v36 == 24)
    {
LABEL_23:
      if (v2)
      {
        v37 = v2[2];
      }

      else
      {
        v37 = 0;
      }

      v38 = *(v0 + 2096);
      v39 = sub_100038578();
      v40 = sub_1000387A8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        *(v41 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v39, v40, "Queried %ld events.", v41, 0xCu);
      }

      v42 = *(v0 + 2336);
      v43 = *(v0 + 2328);
      v44 = *(v0 + 1680);
      v45 = *(v0 + 1672);
      v46 = *(v0 + 1528);

      sub_100037EF8();
      sub_10001FD94(v45, &qword_100048178, &unk_100039530);
      v43(v44, 0, 1, v46);
      sub_10001EA34(v44, v45, &qword_100048178, &unk_100039530);
      *(v0 + 2504) = v2;
      *(v0 + 2585) = 2;
      v47 = *(v0 + 2080);
      v48 = *(v0 + 2072);

      return _swift_task_switch(sub_10001416C, v48, v47);
    }

    v49 = *(v0 + 2208);
    v50 = *(v0 + 2096);

    sub_10001E98C(v0 + 936);

    v51 = sub_100038578();
    v52 = sub_1000387C8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Failed to query events.", v53, 2u);
    }

    v54 = *(v0 + 2216);
    v55 = *(v0 + 2144);
    v56 = *(v0 + 2024);
    v110 = *(v0 + 2016);
    v113 = *(v0 + 2056);
    v107 = *(v0 + 1768);
    v57 = *(v0 + 1752);
    v58 = *(v0 + 1744);
    v115 = *(v0 + 1736);
    v117 = *(v0 + 2000);
    v59 = *(v0 + 1704);
    v60 = *(v0 + 1672);

    sub_10001E9E0();
    v61 = objc_allocWithZone(sub_100038388());
    v119 = sub_100038368();

    sub_10001FD94(v60, &qword_100048178, &unk_100039530);
    sub_10001FD94(v59, &qword_100048178, &unk_100039530);
    (*(v57 + 8))(v107, v58);
    (*(v56 + 8))(v113, v110);
    goto LABEL_34;
  }

  v13 = *(v0 + 2248);
  v14 = *(v0 + 2480);

  if (!v13)
  {
    v19 = *(v0 + 2208);
    v20 = *(v0 + 2096);

    sub_10001E98C(v0 + 936);
    v21 = sub_100038578();
    v22 = sub_1000387C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Invalid kvStoreKey provided", v23, 2u);
    }

    v24 = *(v0 + 2216);
    v25 = *(v0 + 2144);
    v26 = *(v0 + 2024);
    v109 = *(v0 + 2016);
    v112 = *(v0 + 2056);
    v27 = *(v0 + 1768);
    v28 = *(v0 + 1752);
    v29 = *(v0 + 1744);
    v115 = *(v0 + 1736);
    v117 = *(v0 + 2000);
    v30 = *(v0 + 1704);
    v31 = *(v0 + 1672);

    sub_10001E9E0();
    v32 = objc_allocWithZone(sub_100038388());
    v119 = sub_100038368();

    sub_10001FD94(v31, &qword_100048178, &unk_100039530);
    sub_10001FD94(v30, &qword_100048178, &unk_100039530);
    (*(v28 + 8))(v27, v29);
    (*(v26 + 8))(v112, v109);
LABEL_34:
    sub_10001EA9C(v115, type metadata accessor for EmbedParameters);
    sub_10001FD94(v117, &qword_1000482E0, &qword_100039548);
    v62 = *(v0 + 2056);
    v63 = *(v0 + 2048);
    v64 = *(v0 + 2040);
    v65 = *(v0 + 2032);
    v66 = *(v0 + 2008);
    v67 = *(v0 + 2000);
    v68 = *(v0 + 1992);
    v69 = *(v0 + 1976);
    v70 = *(v0 + 1968);
    v71 = *(v0 + 1960);
    v73 = *(v0 + 1952);
    v74 = *(v0 + 1944);
    v75 = *(v0 + 1936);
    v76 = *(v0 + 1928);
    v77 = *(v0 + 1920);
    v78 = *(v0 + 1912);
    v79 = *(v0 + 1904);
    v80 = *(v0 + 1896);
    v81 = *(v0 + 1888);
    v82 = *(v0 + 1880);
    v83 = *(v0 + 1864);
    v84 = *(v0 + 1840);
    v85 = *(v0 + 1816);
    v86 = *(v0 + 1808);
    v87 = *(v0 + 1800);
    v88 = *(v0 + 1792);
    v89 = *(v0 + 1768);
    v90 = *(v0 + 1760);
    v91 = *(v0 + 1736);
    v92 = *(v0 + 1712);
    v93 = *(v0 + 1704);
    v94 = *(v0 + 1696);
    v95 = *(v0 + 1688);
    v96 = *(v0 + 1680);
    v97 = *(v0 + 1672);
    v98 = *(v0 + 1664);
    v99 = *(v0 + 1656);
    v100 = *(v0 + 1648);
    v101 = *(v0 + 1640);
    v102 = *(v0 + 1632);
    v103 = *(v0 + 1624);
    v104 = *(v0 + 1600);
    v105 = *(v0 + 1576);
    v106 = *(v0 + 1568);
    v108 = *(v0 + 1560);
    v111 = *(v0 + 1552);
    v114 = *(v0 + 1544);
    v116 = *(v0 + 1520);
    v118 = *(v0 + 1496);

    v72 = *(v0 + 8);

    return v72(v119);
  }

  v15 = *(v0 + 2248);

  v16 = swift_task_alloc();
  *(v0 + 2488) = v16;
  *v16 = v0;
  v16[1] = sub_100013A44;
  v17 = *(v0 + 2240);

  return sub_100002E14(v17, v15);
}

uint64_t sub_100013A44(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2488);
  v5 = *(*v2 + 2248);
  v7 = *v2;
  *(v3 + 2496) = a1;
  *(v3 + 2599) = a2;

  return _swift_task_switch(sub_100013B68, 0, 0);
}

uint64_t sub_100013B68()
{
  v1 = *(v0 + 2496);
  if (*(v0 + 2599) == 24)
  {
    if (v1)
    {
      v2 = *(v1 + 16);
    }

    else
    {
      v2 = 0;
    }

    v29 = *(v0 + 2096);
    v30 = sub_100038578();
    v31 = sub_1000387A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v30, v31, "Queried %ld events.", v32, 0xCu);
    }

    v33 = *(v0 + 2336);
    v34 = *(v0 + 2328);
    v35 = *(v0 + 1680);
    v36 = *(v0 + 1672);
    v37 = *(v0 + 1528);

    sub_100037EF8();
    sub_10001FD94(v36, &qword_100048178, &unk_100039530);
    v34(v35, 0, 1, v37);
    sub_10001EA34(v35, v36, &qword_100048178, &unk_100039530);
    *(v0 + 2504) = v1;
    *(v0 + 2585) = 2;
    v38 = *(v0 + 2080);
    v39 = *(v0 + 2072);

    return _swift_task_switch(sub_10001416C, v39, v38);
  }

  else
  {
    v3 = *(v0 + 2208);
    v4 = *(v0 + 2096);
    v5 = *(v0 + 2496);

    sub_10001E98C(v0 + 936);

    v6 = sub_100038578();
    v7 = sub_1000387C8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to query events.", v8, 2u);
    }

    v9 = *(v0 + 2216);
    v10 = *(v0 + 2144);
    v11 = *(v0 + 2024);
    v76 = *(v0 + 2016);
    v78 = *(v0 + 2056);
    v74 = *(v0 + 1768);
    v12 = *(v0 + 1752);
    v13 = *(v0 + 1744);
    v80 = *(v0 + 1736);
    v82 = *(v0 + 2000);
    v14 = *(v0 + 1704);
    v15 = *(v0 + 1672);

    sub_10001E9E0();
    v16 = objc_allocWithZone(sub_100038388());
    v84 = sub_100038368();

    sub_10001FD94(v15, &qword_100048178, &unk_100039530);
    sub_10001FD94(v14, &qword_100048178, &unk_100039530);
    (*(v12 + 8))(v74, v13);
    (*(v11 + 8))(v78, v76);
    sub_10001EA9C(v80, type metadata accessor for EmbedParameters);
    sub_10001FD94(v82, &qword_1000482E0, &qword_100039548);
    v17 = *(v0 + 2056);
    v18 = *(v0 + 2048);
    v19 = *(v0 + 2040);
    v20 = *(v0 + 2032);
    v21 = *(v0 + 2008);
    v22 = *(v0 + 2000);
    v23 = *(v0 + 1992);
    v24 = *(v0 + 1976);
    v25 = *(v0 + 1968);
    v26 = *(v0 + 1960);
    v40 = *(v0 + 1952);
    v41 = *(v0 + 1944);
    v42 = *(v0 + 1936);
    v43 = *(v0 + 1928);
    v44 = *(v0 + 1920);
    v45 = *(v0 + 1912);
    v46 = *(v0 + 1904);
    v47 = *(v0 + 1896);
    v48 = *(v0 + 1888);
    v49 = *(v0 + 1880);
    v50 = *(v0 + 1864);
    v51 = *(v0 + 1840);
    v52 = *(v0 + 1816);
    v53 = *(v0 + 1808);
    v54 = *(v0 + 1800);
    v55 = *(v0 + 1792);
    v56 = *(v0 + 1768);
    v57 = *(v0 + 1760);
    v58 = *(v0 + 1736);
    v59 = *(v0 + 1712);
    v60 = *(v0 + 1704);
    v61 = *(v0 + 1696);
    v62 = *(v0 + 1688);
    v63 = *(v0 + 1680);
    v64 = *(v0 + 1672);
    v65 = *(v0 + 1664);
    v66 = *(v0 + 1656);
    v67 = *(v0 + 1648);
    v68 = *(v0 + 1640);
    v69 = *(v0 + 1632);
    v70 = *(v0 + 1624);
    v71 = *(v0 + 1600);
    v72 = *(v0 + 1576);
    v73 = *(v0 + 1568);
    v75 = *(v0 + 1560);
    v77 = *(v0 + 1552);
    v79 = *(v0 + 1544);
    v81 = *(v0 + 1520);
    v83 = *(v0 + 1496);

    v27 = *(v0 + 8);

    return v27(v84);
  }
}

uint64_t sub_10001416C()
{
  v1 = v0[261];
  v2 = v0[258];
  v3 = v0[183];
  sub_100038318();
  v4 = swift_task_alloc();
  v0[314] = v4;
  *v4 = v0;
  v4[1] = sub_100014228;
  v5 = v0[313];
  v6 = v0[276];
  v7 = v0[275];

  return sub_100018DC0(v5, (v0 + 128), v7, v6);
}

uint64_t sub_100014228(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2512);
  v5 = *(*v2 + 2208);
  v7 = *v2;
  *(v3 + 2520) = a1;
  *(v3 + 2600) = a2;

  sub_10001E98C(v3 + 936);

  return _swift_task_switch(sub_100014354, 0, 0);
}

uint64_t sub_100014354()
{
  v125 = v0;
  v1 = *(v0 + 2520);
  if (*(v0 + 2600) == 24)
  {
    *(v0 + 2536) = *(v0 + 2504);
    *(v0 + 2528) = v1;
    v2 = *(v0 + 2056);
    v3 = *(v0 + 2016);
    v4 = *(v0 + 1976);
    sub_1000383C8();
    v5 = *(v4 + 32);

    sub_10001EA9C(v4, type metadata accessor for ZeoliteEvalExtensionConfig);
    LOBYTE(v4) = sub_100015E04(3u, v5);

    if (v4)
    {
      *(v0 + 2587) = 2;
      v6 = *(v0 + 2080);
      v7 = *(v0 + 2072);
      v8 = sub_100014D64;
    }

    else
    {

      v35 = *(v0 + 1704);
      v36 = *(v0 + 1672);
      v37 = *(v0 + 1496);
      v38 = *(v0 + 1480);
      sub_100037EF8();
      sub_10001FA38(v36, v37 + *(v38 + 20), &qword_100048178, &unk_100039530);
      sub_10001FA38(v35, v37 + *(v38 + 24), &qword_100048178, &unk_100039530);
      if (sub_100023AF0())
      {
        v39.super.isa = sub_1000385E8().super.isa;
      }

      else
      {
        v39.super.isa = 0;
      }

      v40 = *(v0 + 2120);
      v115 = *(v0 + 2128);
      v118 = *(v0 + 2096);
      v41 = *(v0 + 2056);
      v42 = *(v0 + 2040);
      v109 = *(v0 + 2144);
      v112 = *(v0 + 2032);
      v43 = *(v0 + 2024);
      v44 = *(v0 + 2016);
      v45 = *(v0 + 1976);
      sub_1000383C8();
      v121 = 0x6769666E6F63;
      v122 = 0xE600000000000000;
      *(v0 + 1448) = *v45;
      v127._countAndFlagsBits = sub_100038A38();
      sub_100038698(v127);

      sub_10001EA9C(v45, type metadata accessor for ZeoliteEvalExtensionConfig);
      v46 = sub_100038638();

      [v109 setValue:v39.super.isa forKey:v46];

      swift_unknownObjectRelease();
      v40(v42, v41, v44);
      v40(v112, v42, v44);
      v47 = *(v43 + 8);
      *(v0 + 2544) = v47;
      *(v0 + 2552) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v47(v42, v44);
      v48 = sub_100038578();
      v49 = sub_1000387A8();
      v50 = os_log_type_enabled(v48, v49);
      v51 = *(v0 + 2032);
      v52 = *(v0 + 2016);
      if (v50)
      {
        v53 = *(v0 + 1976);
        v119 = v49;
        v54 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v120 = v116;
        *v54 = 136315138;
        sub_1000383C8();
        v121 = 0x6769666E6F63;
        v122 = 0xE600000000000000;
        *(v0 + 1456) = *v53;
        v128._countAndFlagsBits = sub_100038A38();
        sub_100038698(v128);

        sub_10001EA9C(v53, type metadata accessor for ZeoliteEvalExtensionConfig);
        v47(v51, v52);
        v55 = sub_10001BFAC(v121, v122, &v120);

        *(v54 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v48, v119, "Execution state saved for %s.", v54, 0xCu);
        sub_10000387C(v116);
      }

      else
      {

        v47(v51, v52);
      }

      v56 = *(v0 + 2096);
      v57 = *(v0 + 1768);
      v58 = *(v0 + 1760);
      v59 = *(v0 + 1752);
      v60 = *(v0 + 1744);
      sub_100038868();
      sub_100038878();
      v61 = *(v59 + 8);
      *(v0 + 2560) = v61;
      *(v0 + 2568) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61(v58, v60);
      v62 = sub_100038578();
      v63 = sub_1000387A8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v121 = v65;
        *v64 = 136315138;
        v66 = sub_100038B78();
        v68 = sub_10001BFAC(v66, v67, &v121);

        *(v64 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v62, v63, "Time elapsed: %s.", v64, 0xCu);
        sub_10000387C(v65);
      }

      *(v0 + 2586) = 4;
      v6 = *(v0 + 2080);
      v7 = *(v0 + 2072);
      v8 = sub_100015958;
    }

    return _swift_task_switch(v8, v7, v6);
  }

  else
  {
    v9 = *(v0 + 2096);
    v10 = *(v0 + 2504);

    v11 = sub_100038578();
    v12 = sub_1000387C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to complete score step.", v13, 2u);
    }

    v14 = *(v0 + 2600);
    v15 = *(v0 + 2216);
    v16 = *(v0 + 2144);
    v17 = *(v0 + 2024);
    v105 = *(v0 + 2016);
    v107 = *(v0 + 2056);
    v103 = *(v0 + 1768);
    v18 = *(v0 + 1752);
    v19 = *(v0 + 1744);
    v110 = *(v0 + 1736);
    v113 = *(v0 + 2000);
    v20 = *(v0 + 1704);
    v21 = *(v0 + 1672);

    v123 = &type metadata for ZeoliteEvalExtensionError;
    v124 = sub_10001E9E0();
    LOBYTE(v121) = v14;
    v22 = objc_allocWithZone(sub_100038388());
    v117 = sub_100038368();

    sub_10001FD94(v21, &qword_100048178, &unk_100039530);
    sub_10001FD94(v20, &qword_100048178, &unk_100039530);
    (*(v18 + 8))(v103, v19);
    (*(v17 + 8))(v107, v105);
    sub_10001EA9C(v110, type metadata accessor for EmbedParameters);
    sub_10001FD94(v113, &qword_1000482E0, &qword_100039548);
    v23 = *(v0 + 2056);
    v24 = *(v0 + 2048);
    v25 = *(v0 + 2040);
    v26 = *(v0 + 2032);
    v27 = *(v0 + 2008);
    v28 = *(v0 + 2000);
    v29 = *(v0 + 1992);
    v30 = *(v0 + 1976);
    v31 = *(v0 + 1968);
    v32 = *(v0 + 1960);
    v69 = *(v0 + 1952);
    v70 = *(v0 + 1944);
    v71 = *(v0 + 1936);
    v72 = *(v0 + 1928);
    v73 = *(v0 + 1920);
    v74 = *(v0 + 1912);
    v75 = *(v0 + 1904);
    v76 = *(v0 + 1896);
    v77 = *(v0 + 1888);
    v78 = *(v0 + 1880);
    v79 = *(v0 + 1864);
    v80 = *(v0 + 1840);
    v81 = *(v0 + 1816);
    v82 = *(v0 + 1808);
    v83 = *(v0 + 1800);
    v84 = *(v0 + 1792);
    v85 = *(v0 + 1768);
    v86 = *(v0 + 1760);
    v87 = *(v0 + 1736);
    v88 = *(v0 + 1712);
    v89 = *(v0 + 1704);
    v90 = *(v0 + 1696);
    v91 = *(v0 + 1688);
    v92 = *(v0 + 1680);
    v93 = *(v0 + 1672);
    v94 = *(v0 + 1664);
    v95 = *(v0 + 1656);
    v96 = *(v0 + 1648);
    v97 = *(v0 + 1640);
    v98 = *(v0 + 1632);
    v99 = *(v0 + 1624);
    v100 = *(v0 + 1600);
    v101 = *(v0 + 1576);
    v102 = *(v0 + 1568);
    v104 = *(v0 + 1560);
    v106 = *(v0 + 1552);
    v108 = *(v0 + 1544);
    v111 = *(v0 + 1520);
    v114 = *(v0 + 1496);

    v33 = *(v0 + 8);

    return v33(v117);
  }
}

uint64_t sub_100014D64()
{
  v1 = v0[261];
  v2 = v0[258];
  v3 = v0[183];
  sub_100038318();

  return _swift_task_switch(sub_100014DE0, 0, 0);
}

uint64_t sub_100014DE0()
{
  v150 = v0;
  v1 = *(v0 + 2536);
  v2 = *(v0 + 2056);
  v3 = *(v0 + 2016);
  v4 = *(v0 + 1880);
  v5 = *(v0 + 1464);
  v6 = sub_100038448();
  v8 = v7;
  sub_1000383C8();
  v9 = *v4;
  sub_10001EA9C(v4, type metadata accessor for ZeoliteEvalExtensionConfig);
  if (v1)
  {
    v10 = *(v0 + 2536);
    v11 = *(v10 + 16);
    if (v11)
    {
      v125 = v9;
      v129 = v6;
      v133 = v8;
      v12 = *(v0 + 1512);
      v146 = &_swiftEmptyArrayStorage;
      sub_10001BE20(v11);
      v14 = *(v12 + 16);
      v13 = v12 + 16;
      v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v138 = *(v13 + 56);
      v143 = v14;
      do
      {
        v16 = *(v0 + 1520);
        v17 = *(v0 + 1504);
        v143(v16, v15, v17);
        v18 = sub_100038118();
        (*(v13 - 8))(v16, v17);
        v19 = v146;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001C5DC(0, *(v146 + 16) + 1, 1);
          v19 = v146;
        }

        v21 = v19[2];
        v20 = v19[3];
        if (v21 >= v20 >> 1)
        {
          sub_10001C5DC((v20 > 1), v21 + 1, 1);
          v19 = v146;
        }

        v19[2] = v21 + 1;
        v19[v21 + 4] = v18;
        v15 += v138;
        --v11;
      }

      while (v11);

      v6 = v129;
      v8 = v133;
      v9 = v125;
    }

    else
    {
      v22 = *(v0 + 2536);

      v19 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v19 = 0;
  }

  v23 = *(v0 + 2528);
  v24 = *(v0 + 2580);
  v25 = (v24 >> 8) & 1;
  if (*(v0 + 2580) == 2)
  {
    v25 = 1;
  }

  v26 = (*(v0 + 2580) == 2) | v24;
  if (v25)
  {
    v27 = 256;
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_10001A9A4(v27 & 0xFFFFFFFE | v26 & 1, v6, v8, v9, *(v0 + 2528), v19);

  if (v28 == 24)
  {
    v29 = *(v0 + 1704);
    v30 = *(v0 + 1672);
    v31 = *(v0 + 1496);
    v32 = *(v0 + 1480);
    sub_100037EF8();
    sub_10001FA38(v30, v31 + *(v32 + 20), &qword_100048178, &unk_100039530);
    sub_10001FA38(v29, v31 + *(v32 + 24), &qword_100048178, &unk_100039530);
    if (sub_100023AF0())
    {
      v33.super.isa = sub_1000385E8().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    v59 = *(v0 + 2120);
    v136 = *(v0 + 2128);
    v141 = *(v0 + 2096);
    v60 = *(v0 + 2056);
    v61 = *(v0 + 2040);
    v128 = *(v0 + 2144);
    v132 = *(v0 + 2032);
    v62 = *(v0 + 2024);
    v63 = *(v0 + 2016);
    v64 = *(v0 + 1976);
    sub_1000383C8();
    v146 = 0x6769666E6F63;
    v147 = 0xE600000000000000;
    *(v0 + 1448) = *v64;
    v152._countAndFlagsBits = sub_100038A38();
    sub_100038698(v152);

    sub_10001EA9C(v64, type metadata accessor for ZeoliteEvalExtensionConfig);
    v65 = sub_100038638();

    [v128 setValue:v33.super.isa forKey:v65];

    swift_unknownObjectRelease();
    v59(v61, v60, v63);
    v59(v132, v61, v63);
    v66 = *(v62 + 8);
    *(v0 + 2544) = v66;
    *(v0 + 2552) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66(v61, v63);
    v67 = sub_100038578();
    v68 = sub_1000387A8();
    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v0 + 2032);
    v71 = *(v0 + 2016);
    if (v69)
    {
      v72 = *(v0 + 1976);
      v73 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v145 = v142;
      *v73 = 136315138;
      v137 = v68;
      sub_1000383C8();
      v146 = 0x6769666E6F63;
      v147 = 0xE600000000000000;
      *(v0 + 1456) = *v72;
      v153._countAndFlagsBits = sub_100038A38();
      sub_100038698(v153);

      sub_10001EA9C(v72, type metadata accessor for ZeoliteEvalExtensionConfig);
      v66(v70, v71);
      v74 = sub_10001BFAC(v146, v147, &v145);

      *(v73 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v67, v137, "Execution state saved for %s.", v73, 0xCu);
      sub_10000387C(v142);
    }

    else
    {

      v66(v70, v71);
    }

    v75 = *(v0 + 2096);
    v76 = *(v0 + 1768);
    v77 = *(v0 + 1760);
    v78 = *(v0 + 1752);
    v79 = *(v0 + 1744);
    sub_100038868();
    sub_100038878();
    v80 = *(v78 + 8);
    *(v0 + 2560) = v80;
    *(v0 + 2568) = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v80(v77, v79);
    v81 = sub_100038578();
    v82 = sub_1000387A8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v146 = v84;
      *v83 = 136315138;
      v85 = sub_100038B78();
      v87 = sub_10001BFAC(v85, v86, &v146);

      *(v83 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v81, v82, "Time elapsed: %s.", v83, 0xCu);
      sub_10000387C(v84);
    }

    *(v0 + 2586) = 4;
    v88 = *(v0 + 2080);
    v89 = *(v0 + 2072);

    return _swift_task_switch(sub_100015958, v89, v88);
  }

  else
  {
    v34 = *(v0 + 2096);
    v35 = sub_100038578();
    v36 = sub_1000387C8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to run analysis step.", v37, 2u);
    }

    v38 = *(v0 + 2216);
    v39 = *(v0 + 2144);
    v40 = *(v0 + 2024);
    v126 = *(v0 + 2016);
    v130 = *(v0 + 2056);
    v41 = *(v0 + 1768);
    v42 = *(v0 + 1752);
    v43 = *(v0 + 1744);
    v134 = *(v0 + 1736);
    v139 = *(v0 + 2000);
    v44 = *(v0 + 1704);
    v45 = *(v0 + 1672);

    v148 = &type metadata for ZeoliteEvalExtensionError;
    v149 = sub_10001E9E0();
    LOBYTE(v146) = 23;
    v46 = objc_allocWithZone(sub_100038388());
    v144 = sub_100038368();

    sub_10001FD94(v45, &qword_100048178, &unk_100039530);
    sub_10001FD94(v44, &qword_100048178, &unk_100039530);
    (*(v42 + 8))(v41, v43);
    (*(v40 + 8))(v130, v126);
    sub_10001EA9C(v134, type metadata accessor for EmbedParameters);
    sub_10001FD94(v139, &qword_1000482E0, &qword_100039548);
    v47 = *(v0 + 2056);
    v48 = *(v0 + 2048);
    v49 = *(v0 + 2040);
    v50 = *(v0 + 2032);
    v51 = *(v0 + 2008);
    v52 = *(v0 + 2000);
    v53 = *(v0 + 1992);
    v54 = *(v0 + 1976);
    v55 = *(v0 + 1968);
    v56 = *(v0 + 1960);
    v90 = *(v0 + 1952);
    v91 = *(v0 + 1944);
    v92 = *(v0 + 1936);
    v93 = *(v0 + 1928);
    v94 = *(v0 + 1920);
    v95 = *(v0 + 1912);
    v96 = *(v0 + 1904);
    v97 = *(v0 + 1896);
    v98 = *(v0 + 1888);
    v99 = *(v0 + 1880);
    v100 = *(v0 + 1864);
    v101 = *(v0 + 1840);
    v102 = *(v0 + 1816);
    v103 = *(v0 + 1808);
    v104 = *(v0 + 1800);
    v105 = *(v0 + 1792);
    v106 = *(v0 + 1768);
    v107 = *(v0 + 1760);
    v108 = *(v0 + 1736);
    v109 = *(v0 + 1712);
    v110 = *(v0 + 1704);
    v111 = *(v0 + 1696);
    v112 = *(v0 + 1688);
    v113 = *(v0 + 1680);
    v114 = *(v0 + 1672);
    v115 = *(v0 + 1664);
    v116 = *(v0 + 1656);
    v117 = *(v0 + 1648);
    v118 = *(v0 + 1640);
    v119 = *(v0 + 1632);
    v120 = *(v0 + 1624);
    v121 = *(v0 + 1600);
    v122 = *(v0 + 1576);
    v123 = *(v0 + 1568);
    v124 = *(v0 + 1560);
    v127 = *(v0 + 1552);
    v131 = *(v0 + 1544);
    v135 = *(v0 + 1520);
    v140 = *(v0 + 1496);

    v57 = *(v0 + 8);

    return v57(v144);
  }
}

uint64_t sub_100015958()
{
  v1 = v0[261];
  v2 = v0[258];
  v3 = v0[183];
  sub_100038318();

  return _swift_task_switch(sub_1000159D4, 0, 0);
}

uint64_t sub_1000159D4()
{
  v60 = v0[321];
  v62 = v0[318];
  v1 = v0[277];
  v2 = v0[268];
  v54 = v0[257];
  v56 = v0[320];
  v3 = v0[252];
  v64 = v0[319];
  v66 = v0[250];
  v4 = v0[221];
  v5 = v0[218];
  v58 = v0[217];
  v6 = v0[213];
  v7 = v0[209];
  v8 = v0[187];
  v9 = objc_allocWithZone(sub_100038388());
  v68 = sub_100038378();

  sub_10001EA9C(v8, type metadata accessor for ExecutionState);
  sub_10001FD94(v7, &qword_100048178, &unk_100039530);
  sub_10001FD94(v6, &qword_100048178, &unk_100039530);
  v56(v4, v5);
  v62(v54, v3);
  sub_10001EA9C(v58, type metadata accessor for EmbedParameters);
  sub_10001FD94(v66, &qword_1000482E0, &qword_100039548);
  v10 = v0[257];
  v11 = v0[256];
  v12 = v0[255];
  v13 = v0[254];
  v14 = v0[251];
  v15 = v0[250];
  v16 = v0[249];
  v17 = v0[247];
  v18 = v0[246];
  v19 = v0[245];
  v22 = v0[244];
  v23 = v0[243];
  v24 = v0[242];
  v25 = v0[241];
  v26 = v0[240];
  v27 = v0[239];
  v28 = v0[238];
  v29 = v0[237];
  v30 = v0[236];
  v31 = v0[235];
  v32 = v0[233];
  v33 = v0[230];
  v34 = v0[227];
  v35 = v0[226];
  v36 = v0[225];
  v37 = v0[224];
  v38 = v0[221];
  v39 = v0[220];
  v40 = v0[217];
  v41 = v0[214];
  v42 = v0[213];
  v43 = v0[212];
  v44 = v0[211];
  v45 = v0[210];
  v46 = v0[209];
  v47 = v0[208];
  v48 = v0[207];
  v49 = v0[206];
  v50 = v0[205];
  v51 = v0[204];
  v52 = v0[203];
  v53 = v0[200];
  v55 = v0[197];
  v57 = v0[196];
  v59 = v0[195];
  v61 = v0[194];
  v63 = v0[193];
  v65 = v0[190];
  v67 = v0[187];

  v20 = v0[1];

  return v20(v68);
}

BOOL sub_100015E04(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = 0xE500000000000000;
  v5 = a1;
  do
  {
    v7 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v9 = *v3;
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v12 = 0xE800000000000000;
        v11 = 0x736973796C616E61;
      }

      else
      {
        if (v9 == 4)
        {
          v11 = 0x636E657265666E69;
        }

        else
        {
          v11 = 0x617A696E656B6F74;
        }

        if (v9 == 4)
        {
          v12 = 0xE900000000000065;
        }

        else
        {
          v12 = 0xEC0000006E6F6974;
        }
      }
    }

    else
    {
      if (v9 == 1)
      {
        v10 = 0x6465626D65;
      }

      else
      {
        v10 = 0x65726F6373;
      }

      if (*v3)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0x74636172747865;
      }

      if (*v3)
      {
        v12 = 0xE500000000000000;
      }

      else
      {
        v12 = 0xE700000000000000;
      }
    }

    v13 = 0x636E657265666E69;
    if (v5 != 4)
    {
      v13 = 0x617A696E656B6F74;
    }

    v14 = 0xEC0000006E6F6974;
    if (v5 == 4)
    {
      v14 = 0xE900000000000065;
    }

    if (v5 == 3)
    {
      v13 = 0x736973796C616E61;
      v14 = 0xE800000000000000;
    }

    if (v5 == 1)
    {
      v15 = 0x6465626D65;
    }

    else
    {
      v15 = 0x65726F6373;
    }

    if (!v5)
    {
      v15 = 0x74636172747865;
      v4 = 0xE700000000000000;
    }

    if (v5 <= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (v5 <= 2)
    {
      v17 = v4;
    }

    else
    {
      v17 = v14;
    }

    if (v11 == v16 && v12 == v17)
    {

      return v7 != 0;
    }

    v6 = sub_100038A58();

    v4 = 0xE500000000000000;
    ++v3;
  }

  while ((v6 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_100015FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[53] = a2;
  v3[54] = a3;
  v3[52] = a1;
  return _swift_task_switch(sub_100016018, 0, 0);
}

uint64_t sub_100016018()
{
  v61 = v0;
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v1 = sub_100038598();
  sub_100003680(v1, qword_100048DC8);
  v2 = sub_100038578();
  v3 = sub_1000387A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running extract step.", v4, 2u);
  }

  v5 = *(v0 + 424);

  v6 = *(v0 + 424);
  if (*v5 > 1u)
  {
    if (*v5 != 2)
    {
      sub_10001FAE8(*(v0 + 424), v0 + 16);
      v19 = sub_100038578();
      v20 = sub_1000387C8();
      sub_10001E938(v6);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v57 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_10001BFAC(7104878, 0xE300000000000000, &v57);
        _os_log_impl(&_mh_execute_header, v19, v20, "Invalid source type %s.", v21, 0xCu);
        sub_10000387C(v22);
      }

      v23 = *(v0 + 416);
      v24 = sub_100037F08();
      (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
      v18 = 15;
      goto LABEL_22;
    }

    v14 = *(v6 + 176);
    if (v14 == 1)
    {
      v10 = sub_100038578();
      v11 = sub_1000387C8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Missing sms extract parameters.";
        goto LABEL_17;
      }

LABEL_18:
      v16 = *(v0 + 416);

      v17 = sub_100037F08();
      (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
      v18 = 5;
LABEL_22:
      v25 = *(v0 + 8);

      return v25(0, v18);
    }

    v31 = *(v0 + 432);
    v33 = *(v6 + 160);
    v32 = *(v6 + 168);
    v34 = *(v6 + 152);
    v35 = type metadata accessor for SmsExtractor(0);
    *(v0 + 400) = v35;
    *(v0 + 408) = &off_100046928;
    v36 = sub_10001FB44((v0 + 376));
    sub_10001FA38(v31, v36 + *(v35 + 20), &qword_100048178, &unk_100039530);
    *v36 = v34;
    *(v36 + 8) = v33 & 1;
    *(v36 + 9) = BYTE1(v33);
    v36[2] = v32;
    v36[3] = v14;
    goto LABEL_28;
  }

  if (*v5)
  {
    v15 = *(v6 + 112);
    if (v15 == 1)
    {
      v10 = sub_100038578();
      v11 = sub_1000387C8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Missing transparency extract parameters.";
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v37 = *(v0 + 432);
    v38 = *(v6 + 144);
    v51 = *(v6 + 136);
    v40 = *(v6 + 120);
    v39 = *(v6 + 128);
    v41 = *(v6 + 96);
    v42 = *(v6 + 104);
    v43 = type metadata accessor for TransparencyExtractor(0);
    *(v0 + 400) = v43;
    *(v0 + 408) = &off_100046918;
    v44 = sub_10001FB44((v0 + 376));
    sub_10001FA38(v37, v44 + *(v43 + 20), &qword_100048178, &unk_100039530);
    *v44 = v41;
    v44[1] = v42;
    v44[2] = v15;
    v44[3] = v40;
    v44[4] = v39;
    v44[5] = v51;
    v44[6] = v38;

LABEL_28:

    goto LABEL_29;
  }

  v7 = *(v6 + 24);
  v57 = *(v6 + 8);
  v58 = v7;
  v59 = *(v6 + 40);
  v8 = *(v6 + 56);
  v60[0] = *(v6 + 64);
  v9 = v60[0];
  *(v60 + 9) = *(v6 + 73);
  v53 = v57;
  v54 = v7;
  *&v56[9] = *(v60 + 9);
  v55 = v59;
  *v56 = v9;
  if (v8 == 2)
  {
    v10 = sub_100038578();
    v11 = sub_1000387C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Missing email extract parameters.";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v27 = *(v0 + 432);
  v28 = type metadata accessor for EmailExtractor(0);
  *(v0 + 400) = v28;
  *(v0 + 408) = &off_100046908;
  v29 = sub_10001FB44((v0 + 376));
  sub_10001FA38(v27, v29 + *(v28 + 20), &qword_100048178, &unk_100039530);
  *v29 = v53;
  *(v29 + 1) = v54;
  *(v29 + 2) = v55;
  v29[6] = v8;
  *(v29 + 7) = *v56;
  *(v29 + 65) = *&v56[9];
  v30 = v58;
  *(v0 + 200) = v57;
  *(v0 + 216) = v30;
  *(v0 + 232) = v59;
  *(v0 + 248) = v8;
  *(v0 + 256) = v60[0];
  *(v0 + 265) = *(v60 + 9);
  sub_10001FBA8(v0 + 200, v0 + 288);
LABEL_29:
  v45 = *(v0 + 400);
  v46 = *(v0 + 408);
  sub_1000036D0((v0 + 376), v45);
  v47 = *(v46 + 8);
  v52 = (v47 + *v47);
  v48 = v47[1];
  v49 = swift_task_alloc();
  *(v0 + 440) = v49;
  *v49 = v0;
  v49[1] = sub_1000166C0;
  v50 = *(v0 + 416);

  return v52(v50, v45, v46);
}

uint64_t sub_1000166C0(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v6 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 281) = a2;

  return _swift_task_switch(sub_1000167C4, 0, 0);
}

uint64_t sub_1000167C4()
{
  sub_10000387C((v0 + 376));
  v1 = *(v0 + 448);
  v2 = *(v0 + 8);
  v3 = *(v0 + 281);

  return v2(v1, v3);
}

uint64_t sub_10001682C(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v178) = a5;
  v175 = *&a4;
  v177 = a1;
  v7 = sub_100037E68();
  v182 = *(v7 - 8);
  v8 = *(v182 + 64);
  __chkstk_darwin(v7);
  v10 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_100038178();
  v179 = *(v169 - 8);
  v11 = *(v179 + 64);
  __chkstk_darwin(v169);
  v170 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_100038888();
  v164 = *(v163 - 8);
  v13 = *(v164 + 64);
  v14 = __chkstk_darwin(v163);
  v162 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v165 = &v160 - v16;
  v17 = sub_100001B40(&qword_100048398, &qword_1000395E8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v181 = &v160 - v19;
  v20 = sub_100038048();
  isUniquelyReferenced_nonNull_native = *(v20 - 8);
  v22 = *(isUniquelyReferenced_nonNull_native + 64);
  __chkstk_darwin(v20);
  v180 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100001B40(&qword_1000483A0, &qword_1000395F0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v160 - v26;
  v167 = sub_1000380B8();
  v166 = *(v167 - 8);
  v28 = *(v166 + 64);
  __chkstk_darwin(v167);
  v176 = &v160 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100048160 != -1)
  {
LABEL_141:
    swift_once();
  }

  v30 = sub_100038598();
  v168 = sub_100003680(v30, qword_100048DC8);
  v31 = sub_100038578();
  v32 = sub_1000387A8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v174 = a2;
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Running tokenization step.", v33, 2u);
    a2 = v174;
  }

  if (!v177)
  {
    v37 = sub_100038578();
    v45 = sub_1000387C8();
    if (!os_log_type_enabled(v37, v45))
    {
LABEL_11:

      return 0;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v37, v45, "Extracted items must not be nil.", v46, 2u);
LABEL_10:

    goto LABEL_11;
  }

  sub_100037E38(0);
  sub_1000380A8();
  v34 = v166;
  v35 = v167;
  if ((*(v166 + 48))(v27, 1, v167) == 1)
  {
    sub_10001FD94(v27, &qword_1000483A0, &qword_1000395F0);
    v36 = v182;
    (*(v182 + 16))(v10, a2, v7);
    v37 = sub_100038578();
    v38 = sub_1000387C8();
    if (!os_log_type_enabled(v37, v38))
    {

      (*(v36 + 8))(v10, v7);
      return 0;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v183[0] = v40;
    *v39 = 136315138;
    sub_10001FAA0(&qword_100048320, &type metadata accessor for URL);
    v41 = sub_100038A38();
    v43 = v42;
    (*(v36 + 8))(v10, v7);
    v44 = sub_10001BFAC(v41, v43, v183);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "Failed to create tokenizer with path: %s.", v39, 0xCu);
    sub_10000387C(v40);

    goto LABEL_10;
  }

  (*(v34 + 32))(v176, v27, v35);
  v47 = v181;
  sub_10001B56C(a3, v181);
  if ((*(isUniquelyReferenced_nonNull_native + 48))(v47, 1, v20) == 1)
  {
    sub_10001FD94(v47, &qword_100048398, &qword_1000395E8);
    v182 = 0;
    v161 = 0;
    v10 = v170;
    goto LABEL_32;
  }

  a2 = v180;
  (*(isUniquelyReferenced_nonNull_native + 32))(v180, v47, v20);
  v49 = *(sub_100038038() + 16);

  v10 = v170;
  v173 = isUniquelyReferenced_nonNull_native;
  if (v178)
  {
    v50 = vcvtd_n_f64_u64(v49, 2uLL);
    if (v50 == INFINITY)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (v50 <= -9.22337204e18)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    if (v50 < 9.22337204e18)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v50 = v175 * v49;
  if (COERCE__INT64(fabs(v50)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v50 > -9.22337204e18)
  {
    if (v50 >= 9.22337204e18)
    {
      goto LABEL_149;
    }

LABEL_24:
    v7 = v50;
    v51 = sub_100038578();
    v52 = sub_1000387A8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134218240;
      *(v53 + 4) = v49;
      *(v53 + 12) = 2048;
      *(v53 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v51, v52, "Loaded %ld vocabulary scores, using top %ld scores as rare tokens.", v53, 0x16u);
    }

    v54 = sub_100038038();
    v55 = v54;
    v56 = *(v54 + 16);
    if (v56)
    {
      v57 = sub_10001BF1C(*(v54 + 16), 0);
      v182 = sub_10001DC70(v183, (v57 + 4), v56, v55);
      isUniquelyReferenced_nonNull_native = v183[3];

      sub_10001F9E8();
      if (v182 != v56)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v10 = v170;
      a2 = v180;
    }

    else
    {
      v57 = _swiftEmptyArrayStorage;
    }

    v183[0] = v57;
    sub_10001CA20(v183);

    if (v7 < 0)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v59 = v183[0];
    v183[0][2];
    __chkstk_darwin(v58);
    *(&v160 - 2) = v176;
    v61 = sub_10001F5D4(sub_10001F9F0, (&v160 - 4), (v59 + 4), 0, v60);
    v161 = 0;
    swift_unknownObjectRelease();
    v182 = sub_10001F748(v61);

    (*(v173 + 8))(a2, v20);
LABEL_32:
    v62 = sub_1000218E4(_swiftEmptyArrayStorage);
    sub_100038868();
    v27 = v169;
    v175 = *(v177 + 16);
    if (v175 == 0.0)
    {

      v180 = 0;
      v92 = 0.0;
      v93 = 0.0;
    }

    else
    {
      v178 = 0;
      v180 = 0;
      v181 = 0;
      v63 = 0;
      v64 = *(v179 + 16);
      v173 = v177 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
      v174 = v64;
      v7 = v182 + 56;
      v171 = (v179 + 8);
      v179 += 16;
      v172 = *(v179 + 56);
      v64(v10, v173, v169);
      while (1)
      {
        v65 = sub_100038148();
        v67 = v66;

        v68 = HIBYTE(v67) & 0xF;
        if ((v67 & 0x2000000000000000) == 0)
        {
          v68 = v65 & 0xFFFFFFFFFFFFLL;
        }

        if (v68)
        {
          v177 = v63;
          sub_100038148();
          a3 = v69;
          v70 = sub_100038088();

          v20 = *(v70 + 16);
          if (v20)
          {
            v27 = 0;
            v10 = v70 + 32;
            while (1)
            {
              if (v27 >= *(v70 + 16))
              {
                __break(1u);
LABEL_131:
                __break(1u);
LABEL_132:
                __break(1u);
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
                goto LABEL_140;
              }

              a3 = *(v10 + 8 * v27);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v183[0] = v62;
              v71 = sub_1000208DC(a3);
              v73 = v62[2];
              v74 = (v72 & 1) == 0;
              v75 = __OFADD__(v73, v74);
              v76 = v73 + v74;
              if (v75)
              {
                goto LABEL_131;
              }

              a2 = v72;
              if (v62[3] >= v76)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v83 = v71;
                  sub_10002162C();
                  v71 = v83;
                  v62 = v183[0];
                  if (a2)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_50;
                }
              }

              else
              {
                sub_100020CE8(v76, isUniquelyReferenced_nonNull_native);
                v71 = sub_1000208DC(a3);
                if ((a2 & 1) != (v77 & 1))
                {
                  goto LABEL_150;
                }
              }

              v62 = v183[0];
              if (a2)
              {
                goto LABEL_52;
              }

LABEL_50:
              v62[(v71 >> 6) + 8] |= 1 << v71;
              *(v62[6] + 8 * v71) = a3;
              *(v62[7] + 8 * v71) = 0;
              v78 = v62[2];
              v75 = __OFADD__(v78, 1);
              v79 = v78 + 1;
              if (v75)
              {
                goto LABEL_134;
              }

              v62[2] = v79;
LABEL_52:
              v80 = v62[7];
              v81 = *(v80 + 8 * v71);
              v75 = __OFADD__(v81, 1);
              v82 = v81 + 1;
              if (v75)
              {
                goto LABEL_132;
              }

              ++v27;
              *(v80 + 8 * v71) = v82;
              if (v20 == v27)
              {
                v84 = *(v70 + 16);
                v10 = v170;
                goto LABEL_58;
              }
            }
          }

          v84 = 0;
LABEL_58:
          v75 = __OFADD__(v180, v84);
          v180 += v84;
          if (v75)
          {
            goto LABEL_139;
          }

          sub_100038148();
          a3 = sub_100038688();

          if (__OFADD__(v178, a3))
          {
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          v178 += a3;
          v85 = v182;
          if (v182 && v20)
          {
            v27 = 0;
            a3 = v70 + 32;
            v10 = *(v182 + 16);
            a2 = *(v70 + 16);
            while (v27 != a2)
            {
              if (v10)
              {
                v86 = *(a3 + 8 * v27);
                v87 = *(v85 + 40);
                v88 = sub_100038AE8();
                v85 = v182;
                v89 = -1 << *(v182 + 32);
                v90 = v88 & ~v89;
                if ((*(v7 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
                {
                  v91 = ~v89;
                  while (*(*(v182 + 48) + 8 * v90) != v86)
                  {
                    v90 = (v90 + 1) & v91;
                    if (((*(v7 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
                    {
                      goto LABEL_64;
                    }
                  }

                  v75 = __OFADD__(v181++, 1);
                  if (v75)
                  {
                    goto LABEL_138;
                  }
                }
              }

LABEL_64:
              if (++v27 == v20)
              {

                v27 = v169;
                v10 = v170;
                goto LABEL_35;
              }
            }

            goto LABEL_133;
          }

          v27 = v169;
LABEL_35:
          v63 = v177;
        }

        ++v63;
        (*v171)(v10, v27);
        if (v63 == *&v175)
        {
          break;
        }

        v174(v10, v173 + v172 * v63, v27);
      }

      v92 = v178;
      v93 = v181;
    }

    v94 = v162;
    sub_100038868();
    sub_100038878();
    v95 = *(v164 + 8);
    v164 += 8;
    v182 = v95;
    v95(v94, v163);
    v96 = sub_100038578();
    v97 = sub_1000387A8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v183[0] = v99;
      *v98 = 136315138;
      v100 = sub_100038B78();
      v102 = sub_10001BFAC(v100, v101, v183);

      *(v98 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v96, v97, "Tokenization completed in %s", v98, 0xCu);
      sub_10000387C(v99);
    }

    sub_100001B40(&qword_1000483A8, &qword_1000395F8);
    v103 = sub_1000388B8();
    v104 = v103;
    v27 = 0;
    v10 = 1;
    v105 = 1 << *(v62 + 32);
    v106 = -1;
    if (v105 < 64)
    {
      v106 = ~(-1 << v105);
    }

    isUniquelyReferenced_nonNull_native = v106 & v62[8];
    a2 = (v105 + 63) >> 6;
    v107 = v180;
    a3 = v103 + 64;
    if (!isUniquelyReferenced_nonNull_native)
    {
LABEL_81:
      v109 = v27;
      while (1)
      {
        v27 = v109 + 1;
        if (__OFADD__(v109, 1))
        {
          goto LABEL_135;
        }

        if (v27 >= a2)
        {
          v27 = 0xD000000000000011;
          v114 = v107 / v92;
          v115 = v93 / v107;
          v116 = sub_1000219C0(_swiftEmptyArrayStorage);
          v117 = v180;
          v118 = swift_isUniquelyReferenced_nonNull_native();
          v183[0] = v116;
          sub_1000211F0(0x6B6F546C61746F74, 0xEF746E756F436E65, v118, v117);
          v119 = v183[0];
          v10 = " of the following text: ";
          v120 = swift_isUniquelyReferenced_nonNull_native();
          v183[0] = v119;
          sub_1000211F0(0xD000000000000015, 0x800000010003B9F0, v120, v114);
          v121 = v183[0];
          v122 = swift_isUniquelyReferenced_nonNull_native();
          v183[0] = v121;
          sub_1000211F0(0x656B6F5465726172, 0xEE006F697461526ELL, v122, v115);
          v123 = v183[0];
          v124 = 1 << *(v104 + 32);
          v125 = -1;
          if (v124 < 64)
          {
            v125 = ~(-1 << v124);
          }

          v126 = v125 & *(v104 + 64);
          if (v126)
          {
            v127 = 0;
            v128 = __clz(__rbit64(v126));
            v129 = (v126 - 1) & v126;
            v130 = (v124 + 63) >> 6;
LABEL_97:
            v134 = *(v104 + 56);
            v135 = *(v134 + 8 * v128);
            v136 = v135;
            if (!v129)
            {
              goto LABEL_99;
            }

            do
            {
              v137 = v127;
LABEL_103:
              v138 = __clz(__rbit64(v129));
              v129 &= v129 - 1;
              if (*(v134 + ((v137 << 9) | (8 * v138))) < v136)
              {
                v135 = *(v134 + ((v137 << 9) | (8 * v138)));
                v136 = v135;
              }
            }

            while (v129);
LABEL_99:
            while (1)
            {
              v137 = v127 + 1;
              if (__OFADD__(v127, 1))
              {
                goto LABEL_136;
              }

              if (v137 >= v130)
              {
                v139 = v135;
                goto LABEL_108;
              }

              v129 = *(a3 + 8 * v137);
              ++v127;
              if (v129)
              {
                v127 = v137;
                goto LABEL_103;
              }
            }
          }

          v131 = 0;
          v132 = 0;
          v130 = (v124 + 63) >> 6;
          while (v130 - 1 != v132)
          {
            v127 = v132 + 1;
            v133 = *(v104 + 72 + 8 * v132);
            v131 -= 64;
            ++v132;
            if (v133)
            {
              v129 = (v133 - 1) & v133;
              v128 = __clz(__rbit64(v133)) - v131;
              goto LABEL_97;
            }
          }

          v139 = 0.0;
LABEL_108:
          v27 = "tokenCompressionRatio";
          v140 = swift_isUniquelyReferenced_nonNull_native();
          v183[0] = v123;
          sub_1000211F0(0xD000000000000011, 0x800000010003BA10, v140, v139);
          v141 = v183[0];
          v142 = 1 << *(v104 + 32);
          v143 = -1;
          if (v142 < 64)
          {
            v143 = ~(-1 << v142);
          }

          v144 = v143 & *(v104 + 64);
          if (v144)
          {
            v145 = 0;
            v146 = __clz(__rbit64(v144));
            v147 = (v144 - 1) & v144;
            v148 = (v142 + 63) >> 6;
LABEL_116:
            v152 = *(v104 + 56);
            v153 = *(v152 + 8 * v146);
            v154 = v153;
            if (!v147)
            {
              goto LABEL_118;
            }

            do
            {
              v155 = v145;
LABEL_122:
              v156 = __clz(__rbit64(v147));
              v147 &= v147 - 1;
              if (v154 < *(v152 + ((v155 << 9) | (8 * v156))))
              {
                v153 = *(v152 + ((v155 << 9) | (8 * v156)));
                v154 = v153;
              }
            }

            while (v147);
LABEL_118:
            while (1)
            {
              v155 = v145 + 1;
              if (__OFADD__(v145, 1))
              {
                goto LABEL_137;
              }

              if (v155 >= v148)
              {

                v157 = v153;
                goto LABEL_127;
              }

              v147 = *(a3 + 8 * v155);
              ++v145;
              if (v147)
              {
                v145 = v155;
                goto LABEL_122;
              }
            }
          }

          v149 = 0;
          v150 = 0;
          v148 = (v142 + 63) >> 6;
          while (v148 - 1 != v150)
          {
            v145 = v150 + 1;
            v151 = *(v104 + 8 * v150 + 72);
            v149 -= 64;
            ++v150;
            if (v151)
            {
              v147 = (v151 - 1) & v151;
              v146 = __clz(__rbit64(v151)) - v149;
              goto LABEL_116;
            }
          }

          v157 = 0.0;
LABEL_127:
          v158 = swift_isUniquelyReferenced_nonNull_native();
          v183[0] = v141;
          sub_1000211F0(0xD000000000000011, 0x800000010003BA30, v158, v157);
          (v182)(v165, v163);

          v159 = v183[0];
          (*(v166 + 8))(v176, v167);
          return v159;
        }

        v110 = v62[v27 + 8];
        ++v109;
        if (v110)
        {
          v108 = __clz(__rbit64(v110));
          isUniquelyReferenced_nonNull_native = (v110 - 1) & v110;
          goto LABEL_86;
        }
      }
    }

    while (1)
    {
      v108 = __clz(__rbit64(isUniquelyReferenced_nonNull_native));
      isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
LABEL_86:
      v20 = v108 | (v27 << 6);
      v7 = *(v62[6] + 8 * v20);
      v111 = log(*(v62[7] + 8 * v20) / v107);
      *(a3 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v104 + 48) + 8 * v20) = v7;
      *(*(v104 + 56) + 8 * v20) = v111;
      v112 = *(v104 + 16);
      v75 = __OFADD__(v112, 1);
      v113 = v112 + 1;
      if (v75)
      {
        break;
      }

      *(v104 + 16) = v113;
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_143;
  }

LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  sub_100038A98();
  __break(1u);

  __break(1u);
  return result;
}