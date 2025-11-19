uint64_t sub_1450()
{
  sub_3C10(0, &qword_C4D8, OS_os_log_ptr);
  result = sub_4028();
  qword_C558 = result;
  return result;
}

Swift::Int sub_14D8()
{
  v1 = *v0;
  sub_40D8();
  sub_40E8(v1);
  return sub_40F8();
}

Swift::Int sub_154C()
{
  v1 = *v0;
  sub_40D8();
  sub_40E8(v1);
  return sub_40F8();
}

uint64_t sub_15A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_163C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_16A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_34DC(&qword_C490, &qword_4658);
    v2 = sub_4068();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_3624(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_3A20(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_3A20(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_3A20(v31, v32);
    result = sub_4058(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_3A20(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_1970()
{
  isa = sub_3F88().super.isa;

  sub_3E98();
  v1 = sub_3FC8().super.isa;

  v6 = 0;
  v2 = [swift_getObjCClassFromMetadata() optionsFromJSONRepresentation:isa attachmentURLs:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_3E78();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_3F48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  sub_3F58();
  result = sub_3F28();
  if (!v4)
  {
    if (*(a3 + 16) && (v16 = sub_1F40(0xD000000000000016, 0x8000000000004960), (v17 & 1) != 0) && (sub_3624(*(a3 + 56) + 32 * v16, v37), sub_3C10(0, &qword_C4C8, NSNumber_ptr), (swift_dynamicCast() & 1) != 0) && (v18 = v36, v19 = [v36 BOOLValue], v18, v19))
    {
      (*(v8 + 16))(v12, v14, v7);
    }

    else
    {
      sub_3F38();
    }

    v20 = sub_3E58();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_3E48();
    sub_3B20(&qword_C4C0, &type metadata accessor for REMSuggestedAttributesTrainer.Result);
    v24 = sub_3E38();
    v26 = v25;
    v35 = a4;

    v27 = objc_opt_self();
    isa = sub_3EA8().super.isa;
    v37[0] = 0;
    v29 = [v27 JSONObjectWithData:isa options:0 error:v37];

    if (v29)
    {
      v30 = v37[0];
      sub_4048();
      swift_unknownObjectRelease();
      sub_34DC(&qword_C450, &qword_4638);
      sub_3ED8();
      sub_39CC(v24, v26);
      sub_36D4(v37);
      v32 = *(v8 + 8);
      v32(v12, v7);
      v32(v14, v7);
      v33 = *v35;
      *v35 = v36;
    }

    else
    {
      v31 = v37[0];
      sub_3E78();

      swift_willThrow();
      sub_39CC(v24, v26);
      v23 = *(v8 + 8);
      v23(v12, v7);
      return (v23)(v14, v7);
    }
  }

  return result;
}

id sub_1EE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDDistributedEvaluationPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1F40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_40D8();
  sub_3FB8();
  v6 = sub_40F8();

  return sub_1FB8(a1, a2, v6);
}

unint64_t sub_1FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_4088())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2070(void *a1)
{
  v2 = sub_3E98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a1;
  v7 = [a1 recipe];
  v8 = [v7 attachments];

  v9 = sub_3FD8();
  v10 = 0;
  v11 = *(v9 + 16);
  do
  {
    if (v11 == v10)
    {

      v24 = [v29 recipe];
      v25 = [v24 attachments];

      v19 = sub_3FD8();
      goto LABEL_10;
    }

    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    (*(v3 + 16))(v6, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10++, v2);
    v12 = sub_3E88();
    (*(v3 + 8))(v6, v2);
  }

  while ((v12 & 1) != 0);

  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = [objc_opt_self() defaultSessionConfiguration];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  aBlock[4] = sub_3BA8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_163C;
  aBlock[3] = &unk_8658;
  v17 = _Block_copy(aBlock);

  v6 = v13;

  v18 = v29;
  [v29 downloadAttachmentsWithConfiguration:v15 completion:v17];
  _Block_release(v17);

  sub_4008();
  swift_beginAccess();
  v9 = *(v14 + 16);
  if (v9)
  {
    swift_errorRetain();
    sub_3FE8();
    if (qword_C550 == -1)
    {
LABEL_7:
      v19 = qword_C558;
      sub_34DC(&qword_C448, &qword_4630);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_45F0;
      aBlock[7] = v9;
      swift_errorRetain();
      sub_34DC(&qword_C4D0, &qword_4678);
      v21 = sub_3FA8();
      v23 = v22;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_3680();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      sub_3F78();

      swift_willThrow();

      return v19;
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  v26 = [v18 recipe];
  v25 = [v26 attachments];

  v19 = sub_3FD8();

LABEL_10:

  return v19;
}

unint64_t sub_2500(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_34DC(&qword_C488, &qword_4650);
    v3 = sub_4068();
    v4 = a1 + 32;

    while (1)
    {
      sub_3A30(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1F40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3A20(&v15, (v3[7] + 32 * result));
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

id sub_2610(uint64_t a1)
{
  v4 = [objc_allocWithZone(REMStore) init];
  sub_3C10(0, &qword_C470, REMDistributedEvaluationCollectionOptions_ptr);
  sub_16A8(a1);

  v5 = sub_1970();
  if (v1)
  {
  }

  else
  {
    v6 = v5;
    v12 = 0;
    v2 = [v4 compressedDistributedEvaluationDataWithOptions:v5 error:&v12];
    v7 = v12;
    if (v2)
    {
      sub_3EB8();

      sub_34DC(&qword_C478, &qword_4640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_45F0;
      *(inited + 32) = 0x73736563637573;
      v9 = inited + 32;
      *(inited + 40) = 0xE700000000000000;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      v2 = sub_2500(inited);
      swift_setDeallocating();
      sub_3AA0(v9, &qword_C480, &qword_4648);
    }

    else
    {
      v11 = v7;
      sub_3E78();

      swift_willThrow();
    }
  }

  return v2;
}

void *sub_2804(void *a1)
{
  v29 = sub_3F18();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v29);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_34DC(&qword_C498, &qword_4660);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  if (a1[2])
  {
    v14 = sub_1F40(0xD000000000000012, 0x80000000000048C0);
    if (v15)
    {
      sub_3624(a1[7] + 32 * v14, &v31);
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  sub_3C10(0, &qword_C4A0, NSDictionary_ptr);
  sub_3EC8();
  sub_3AA0(&v31, &qword_C4A8, &qword_4668);
  if (!v1)
  {
    v26 = v3;
    v27 = v7;
    v16 = v33;
    sub_3B20(&qword_C4B0, &type metadata accessor for REMSuggestedAttributesTrainer.Parameters);
    v17 = v16;
    sub_3F68();
    v25 = v17;
    (v27[2])(v11, v13, v6);
    v18 = v28;
    sub_3F08();
    v19 = [objc_allocWithZone(REMStore) init];
    sub_3EF8();
    v20 = sub_3EE8();
    v21 = [objc_allocWithZone(REMSuggestedAttributesPerformer) initWithQueue:v20 store:v19];

    *&v31 = 0;
    v22 = sub_3EE8();
    __chkstk_darwin(v22);
    *(&v25 - 4) = v21;
    *(&v25 - 3) = v18;
    *(&v25 - 2) = a1;
    *(&v25 - 1) = &v31;
    sub_4018();

    v30 = v31;

    sub_34DC(&qword_C4B8, &qword_4670);
    sub_4038();
    v23 = (v26 + 8);

    (v27[1])(v13, v6);

    v7 = v33;
    (*v23)(v28, v29);
  }

  return v7;
}

void sub_2D2C(void *a1)
{
  v2 = [a1 recipe];
  v3 = [v2 recipeUserInfo];

  v4 = sub_3F98();
  if (!*(v4 + 16) || (v5 = sub_1F40(0x6E6F69746361, 0xE600000000000000), (v6 & 1) == 0) || (sub_3624(*(v4 + 56) + 32 * v5, &aBlock), (swift_dynamicCast() & 1) == 0))
  {
    sub_3FE8();
    if (qword_C550 != -1)
    {
      swift_once();
    }

    sub_34DC(&qword_C448, &qword_4630);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_45F0;
    *(v18 + 56) = sub_34DC(&qword_C450, &qword_4638);
    *(v18 + 64) = sub_3524();
    *(v18 + 32) = v4;
    sub_3F78();

    sub_35D0();
    swift_allocError();
    *v19 = 0;
    goto LABEL_19;
  }

  v7._rawValue = &off_8518;
  v8 = sub_4078(v7, v43);

  if (v8 > 1)
  {

    sub_3FE8();
    if (qword_C550 != -1)
    {
      swift_once();
    }

    sub_3F78();
    sub_35D0();
    swift_allocError();
    *v28 = 1;
LABEL_19:
    v20 = sub_3E68();

    [a1 completeWithError:v20 completionHandler:0];

    return;
  }

  sub_3FF8();
  if (qword_C550 != -1)
  {
    swift_once();
  }

  sub_34DC(&qword_C448, &qword_4630);
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = xmmword_45F0;
  v11 = v8;
  if (v8)
  {
    v12 = 0xD00000000000001ALL;
  }

  else
  {
    v12 = 0xD000000000000013;
  }

  if (v8)
  {
    v13 = "master-store.export";
  }

  else
  {
    v13 = &unk_4720;
  }

  v14 = v13 | 0x8000000000000000;
  *(v9 + 56) = &type metadata for String;
  v15 = sub_3680();
  v10[8] = v15;
  v10[4] = v12;
  v10[5] = v14;
  sub_3F78();

  if (*(v4 + 16) && (v16 = sub_1F40(0xD000000000000010, 0x8000000000004810), (v17 & 1) != 0))
  {
    sub_3624(*(v4 + 56) + 32 * v16, &aBlock);

    sub_3A20(&aBlock, &v43);
  }

  else
  {

    v44 = sub_34DC(&qword_C450, &qword_4638);
    v43._countAndFlagsBits = &_swiftEmptyDictionarySingleton;
  }

  sub_3624(&v43, &aBlock);
  sub_34DC(&qword_C450, &qword_4638);
  if (swift_dynamicCast())
  {
    v21 = v11;
    v22 = v42;
    sub_2070(a1);
    if (v11)
    {
      sub_2804(v22);
    }

    else
    {
      sub_2610(v22);
    }

    v31 = v29;
    v32 = v30;

    isa = sub_3F88().super.isa;

    v34 = sub_3EA8().super.isa;
    v35 = swift_allocObject();
    *(v35 + 16) = v21;
    v40 = sub_38A4;
    v41 = v35;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v38 = sub_15A0;
    v39 = &unk_85E0;
    v36 = _Block_copy(&aBlock);

    [a1 completeWithJSONResult:isa binaryResult:v34 completionHandler:v36];
    _Block_release(v36);

    sub_39CC(v31, v32);
  }

  else
  {
    sub_3FE8();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_45F0;
    sub_3624(&v43, &aBlock);
    v24 = sub_3FA8();
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v15;
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    sub_3F78();

    sub_35D0();
    swift_allocError();
    *v26 = 2;
    v27 = sub_3E68();

    [a1 completeWithError:v27 completionHandler:0];
  }

  sub_36D4(&v43._countAndFlagsBits);
}

uint64_t sub_34DC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_3524()
{
  result = qword_C458;
  if (!qword_C458)
  {
    sub_3588(&qword_C450, &qword_4638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C458);
  }

  return result;
}

uint64_t sub_3588(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_35D0()
{
  result = qword_C460;
  if (!qword_C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C460);
  }

  return result;
}

uint64_t sub_3624(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_3680()
{
  result = qword_C468;
  if (!qword_C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C468);
  }

  return result;
}

uint64_t sub_36D4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_3720()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3758()
{
  v1 = *(v0 + 16);
  sub_3FE8();
  if (qword_C550 != -1)
  {
    swift_once();
  }

  sub_34DC(&qword_C448, &qword_4630);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_45F0;
  swift_errorRetain();
  sub_34DC(&qword_C4D0, &qword_4678);
  v3 = sub_3FA8();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_3680();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_3F78();
}

uint64_t sub_387C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_38A4()
{
  v1 = *(v0 + 16);
  sub_3FF8();
  if (qword_C550 != -1)
  {
    swift_once();
  }

  sub_34DC(&qword_C448, &qword_4630);
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = xmmword_45F0;
  v4 = v1 == 0;
  if (v1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v4)
  {
    v6 = &unk_4720;
  }

  else
  {
    v6 = "master-store.export";
  }

  v7 = v6 | 0x8000000000000000;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_3680();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_3F78();
}

uint64_t sub_39CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_OWORD *sub_3A20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_34DC(&qword_C480, &qword_4648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3AA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_34DC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3B20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3B68()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_3BA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  v5 = *(v4 + 16);
  *(v4 + 16) = a1;
  swift_errorRetain();

  dispatch_group_leave(v3);
}

uint64_t sub_3C10(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDDistributedEvaluationPlugin.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDistributedEvaluationPlugin.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_3DD0()
{
  result = qword_C4E0;
  if (!qword_C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E0);
  }

  return result;
}