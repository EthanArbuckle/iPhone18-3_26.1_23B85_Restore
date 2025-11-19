uint64_t _s5Books25PersonalizationEventDonorC5value_19matchesFilterValues05debugC4NameSbyp_SayypGSSSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v40 = sub_10079ACE4();
  __chkstk_darwin(v40);
  v11 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = a2 + 32;
    v14 = (v8 + 8);
    v15 = 0x6E776F6E6B6E753CLL;
    if (a4)
    {
      v15 = a3;
    }

    v37 = v15;
    v16 = 0xE90000000000003ELL;
    if (a4)
    {
      v16 = a4;
    }

    v36 = v16;
    *&v10 = 136315138;
    v35 = v10;
    v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = a1;
    do
    {
      sub_100007484(v13, v44);
      sub_100007484(a1, v43);
      if (swift_dynamicCast())
      {
        v18 = v41;
        v17 = v42;
        sub_100007484(v44, v43);
        if (swift_dynamicCast())
        {
          if (v41 == v18 && v42 == v17)
          {

            sub_1000074E0(v44);
            return 1;
          }

          v19 = sub_1007A3AB4();

          sub_1000074E0(v44);
          if (v19)
          {
            return 1;
          }

          goto LABEL_9;
        }
      }

      sub_100007484(a1, v43);
      if (swift_dynamicCast() & 1) != 0 && (v20 = v41, sub_100007484(v44, v43), (swift_dynamicCast()))
      {
        sub_1000074E0(v44);
        if (v20 == v41)
        {
          return 1;
        }
      }

      else
      {
        sub_100007484(v44, v43);
        sub_1001F1160(&qword_100AD6710);
        if (!swift_dynamicCast())
        {
          sub_10079AC84();

          v26 = sub_10079ACC4();
          v27 = sub_1007A29B4();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v43[0] = v29;
            *v28 = v35;

            v30 = v14;
            v31 = a4;
            v32 = sub_1000070F4(v37, v36, v43);

            *(v28 + 4) = v32;
            a4 = v31;
            v14 = v30;
            _os_log_impl(&_mh_execute_header, v26, v27, "Filter values for case in event %s not string and not supported expression", v28, 0xCu);
            sub_1000074E0(v29);
            a1 = v39;
            v33 = v40;
            v11 = v38;

            (*v14)(v11, v33);
          }

          else
          {

            (*v14)(v11, v40);
          }

          goto LABEL_8;
        }

        v21 = v41;
        if (!*(v41 + 16) || (v22 = sub_10000E53C(0x6973736572707865, 0xEA00000000006E6FLL), (v23 & 1) == 0) || (sub_100007484(*(v21 + 56) + 32 * v22, v43), !swift_dynamicCast()))
        {

LABEL_8:
          sub_1000074E0(v44);
          goto LABEL_9;
        }

        _s5Books25PersonalizationEventDonorC10expression_7matchesSbSDySSypG_yptF_0(v41, a1);
        v25 = v24;

        sub_1000074E0(v44);
        if (v25)
        {
          return 1;
        }
      }

LABEL_9:
      v13 += 32;
      --v12;
    }

    while (v12);
  }

  return 0;
}

uint64_t sub_100492D38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100492D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE59C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100492E14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_100492E5C(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_100493070(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v2 = sub_10000E53C(0x446E6F6974636573, 0xEB00000000617461);
  if ((v3 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100007484(*(a1 + 56) + 32 * v2, &v20);
  sub_1001F1160(&qword_100AD6710);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = v23;
  if (!*(v23 + 16) || (v5 = sub_10000E53C(0x496E6F6974636573, 0xE900000000000044), (v6 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_100007484(*(v4 + 56) + 32 * v5, v22);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v7 = 0;
    v8 = 0;
    v24 = 0;
    goto LABEL_14;
  }

  if (v24)
  {
    v7 = v23;
    v8 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v8 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_14:
  v23 = v7;
  v24 = v8;

  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v9 = sub_10000E53C(0x617461446B6E696CLL, 0xE800000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_100007484(*(a1 + 56) + 32 * v9, &v20);
  sub_1001F1160(&qword_100AD6710);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (!*(v19 + 16) || (v11 = sub_10000E53C(0xD000000000000011, 0x80000001008D73A0), (v12 & 1) == 0))
  {

LABEL_26:
    v14 = 0;
    v16 = 0;
    goto LABEL_27;
  }

  sub_100007484(*(v19 + 56) + 32 * v11, v22);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v13 = v21;
  if (!v21)
  {
    goto LABEL_26;
  }

  v14 = v20;
  v15 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v15 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = v13;
LABEL_27:
  v20 = v14;
  v21 = v16;

  v17 = v23;

  return v17;
}

uint64_t sub_100493340(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_10048EFA0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100493434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002812C;

  return sub_10048EB04(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100493510()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE59F0);
  sub_100008B98(v0, qword_100AE59F0);
  return sub_10079ACD4();
}

Swift::Int sub_100493590()
{
  sub_1007A3C04();
  sub_1007A2084();
  return sub_1007A3C44();
}

uint64_t sub_1004935F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004949B0();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

void *sub_100493640@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100493658(uint64_t a1)
{
  v2 = sub_1004949B0();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_100493694(uint64_t a1)
{
  v2 = sub_1004949B0();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1004936EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004949B0();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

id ViewBookUpdatesOperation.__allocating_init(adamID:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___BKViewBookUpdatesOperation_parameters];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[OBJC_IVAR___BKViewBookUpdatesOperation_error] = 0;
  v11 = &v9[OBJC_IVAR___BKViewBookUpdatesOperation_adamID];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v9[OBJC_IVAR___BKViewBookUpdatesOperation_version];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, "init");
}

id ViewBookUpdatesOperation.init(adamID:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___BKViewBookUpdatesOperation_parameters];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v4[OBJC_IVAR___BKViewBookUpdatesOperation_error] = 0;
  v6 = &v4[OBJC_IVAR___BKViewBookUpdatesOperation_adamID];
  *v6 = a1;
  *(v6 + 1) = a2;
  v7 = &v4[OBJC_IVAR___BKViewBookUpdatesOperation_version];
  *v7 = a3;
  *(v7 + 1) = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for ViewBookUpdatesOperation();
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t ViewBookUpdatesOperation.parameters.getter()
{
  v1 = (v0 + OBJC_IVAR___BKViewBookUpdatesOperation_parameters);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ViewBookUpdatesOperation.parameters.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BKViewBookUpdatesOperation_parameters);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ViewBookUpdatesOperation.error.getter()
{
  v1 = OBJC_IVAR___BKViewBookUpdatesOperation_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_errorRetain();
  return v2;
}

uint64_t ViewBookUpdatesOperation.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BKViewBookUpdatesOperation_error;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall ViewBookUpdatesOperation.main()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultBag];
  v4 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v3];

  [v4 setDialogOptions:1];
  [v4 setRequestEncoding:2];
  [v4 setCompressRequestBody:1];
  sub_100494430();
  v5 = [v2 defaultBag];
  v6 = [v5 viewBookUpdateParams];

  *&v42[0] = 0;
  v7 = [v6 valueWithError:v42];

  if (!v7)
  {
    v19 = *&v42[0];

    v20 = sub_1007967D4();

    swift_willThrow();
LABEL_10:

    v23 = OBJC_IVAR___BKViewBookUpdatesOperation_error;
    swift_beginAccess();
    *&v1[v23] = v20;
LABEL_11:

    return;
  }

  v8 = *&v42[0];
  isa = sub_1007A2024().super.isa;

  v10 = [v4 requestWithMethod:4 URL:v7 parameters:isa];

  *&v42[0] = 0;
  v11 = [v10 resultWithError:v42];

  v12 = *&v42[0];
  if (!v11)
  {
    v21 = *&v42[0];
    v20 = sub_1007967D4();

    swift_willThrow();
LABEL_9:

    goto LABEL_10;
  }

  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultSession];
  v16 = [v15 dataTaskPromiseWithRequest:v11];

  *&v42[0] = 0;
  v17 = [v16 resultWithError:v42];

  if (!v17)
  {
    v22 = *&v42[0];
    v20 = sub_1007967D4();

    swift_willThrow();
    goto LABEL_9;
  }

  v18 = *&v42[0];

  if ([v17 object])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v42[0] = v43;
  v42[1] = v44;
  if (!*(&v44 + 1))
  {
    sub_1000230BC(v42);
    goto LABEL_26;
  }

  sub_1001F1160(&unk_100AEF1B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    sub_100494694();
    v31 = swift_allocError();
    *v32 = 0;

    v33 = OBJC_IVAR___BKViewBookUpdatesOperation_error;
    swift_beginAccess();
    *&v1[v33] = v31;
    goto LABEL_11;
  }

  sub_1007A36B4();
  if (!*(v40 + 16))
  {
    goto LABEL_27;
  }

  v24 = sub_10000E2A4(v42);
  if ((v25 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_100007484(*(v40 + 56) + 32 * v24, &v43);
  sub_10002899C(v42);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v41 = *&v1[OBJC_IVAR___BKViewBookUpdatesOperation_adamID];

  sub_1007A36B4();
  if (!MEMORY[0x73657461647085])
  {
    goto LABEL_27;
  }

  v26 = sub_10000E2A4(v42);
  if ((v27 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_100007484(MEMORY[0x736574616470AD] + 32 * v26, &v43);
  sub_10002899C(v42);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1007A36B4();
  if (!*(v41 + 16) || (v28 = sub_10000E2A4(v42), (v29 & 1) == 0))
  {
LABEL_27:

    sub_10002899C(v42);
    goto LABEL_28;
  }

  sub_100007484(*(v41 + 56) + 32 * v28, &v43);
  sub_10002899C(v42);

  if (swift_dynamicCast())
  {

    v30 = &v1[OBJC_IVAR___BKViewBookUpdatesOperation_parameters];
    swift_beginAccess();
    *v30 = 0x6D61726150797562;
    *(v30 + 1) = 0xE900000000000073;

    return;
  }

LABEL_28:
  if (qword_100AD1718 != -1)
  {
    swift_once();
  }

  v34 = sub_10079ACE4();
  sub_100008B98(v34, qword_100AE59F0);
  v35 = v1;
  v36 = sub_10079ACC4();
  v37 = sub_1007A29D4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v42[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_1000070F4(*&v35[OBJC_IVAR___BKViewBookUpdatesOperation_adamID], *&v35[OBJC_IVAR___BKViewBookUpdatesOperation_adamID + 8], v42);
    _os_log_impl(&_mh_execute_header, v36, v37, "Updates payload for %s is missing or malformed from response", v38, 0xCu);
    sub_1000074E0(v39);
  }
}

unint64_t sub_100494430()
{
  sub_1001F1160(&qword_100ADA238);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10080B690;
  sub_1001F1160(qword_100AEA1F0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x64692D6D616461;
  *(inited + 16) = xmmword_10080EFF0;
  *(inited + 40) = 0xE700000000000000;
  v3 = *(v0 + OBJC_IVAR___BKViewBookUpdatesOperation_adamID + 8);
  *(inited + 48) = *(v0 + OBJC_IVAR___BKViewBookUpdatesOperation_adamID);
  *(inited + 56) = v3;
  *(inited + 64) = 0xD00000000000001CLL;
  *(inited + 72) = 0x80000001008CE270;
  v4 = *(v0 + OBJC_IVAR___BKViewBookUpdatesOperation_version);
  v5 = *(v0 + OBJC_IVAR___BKViewBookUpdatesOperation_version + 8);
  *(inited + 80) = v4;
  *(inited + 88) = v5;

  v6 = sub_1001ED994(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100AE0920);
  swift_arrayDestroy();
  *(v1 + 32) = v6;
  sub_1001F1160(&unk_100AE0AC0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10080EFF0;
  sub_1007A36B4();
  *(v7 + 96) = sub_1001F1160(&qword_100AEF320);
  *(v7 + 72) = v1;
  sub_1007A36B4();
  v8 = [objc_opt_self() deviceGUID];
  v9 = sub_1007A2254();
  v11 = v10;

  *(v7 + 168) = &type metadata for String;
  *(v7 + 144) = v9;
  *(v7 + 152) = v11;
  v12 = sub_100013740(v7);
  swift_setDeallocating();
  sub_1001F1160(&unk_100AD1E50);
  swift_arrayDestroy();
  return v12;
}

unint64_t sub_100494694()
{
  result = qword_100AE5A28;
  if (!qword_100AE5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A28);
  }

  return result;
}

id ViewBookUpdatesOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewBookUpdatesOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100494854()
{
  result = qword_100AE5A58;
  if (!qword_100AE5A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A58);
  }

  return result;
}

unint64_t sub_1004948AC()
{
  result = qword_100AE5A60;
  if (!qword_100AE5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A60);
  }

  return result;
}

unint64_t sub_100494904()
{
  result = qword_100AE5A68;
  if (!qword_100AE5A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A68);
  }

  return result;
}

unint64_t sub_10049495C()
{
  result = qword_100AE5A70;
  if (!qword_100AE5A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A70);
  }

  return result;
}

unint64_t sub_1004949B0()
{
  result = qword_100AE5A78;
  if (!qword_100AE5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A78);
  }

  return result;
}

void sub_100494A04()
{
  v1 = [v0 sortedDocuments];
  if (v1)
  {
    v2 = v1;
    sub_10000A7C4(0, &qword_100AE5A80);
    v3 = sub_1007A25E4();

    if (v3 >> 62)
    {
      if (sub_1007A38D4())
      {
        goto LABEL_4;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = sub_1007A3784();
        goto LABEL_7;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v3 + 32);
LABEL_7:
        v5 = v4;

        [v5 fixedLayoutSize];

        return;
      }

      __break(1u);
      goto LABEL_12;
    }

    return;
  }

LABEL_12:
  __break(1u);
}

void *sub_100494B14()
{
  v1 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  v2 = [v0 physicalPageMap];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1007A25E4();

    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      do
      {
        sub_100007484(v7, v12);
        sub_1001F1160(&unk_100AE0B70);
        if (swift_dynamicCast())
        {
          if (*(v11 + 16))
          {
            sub_10000E53C(1717924456, 0xE400000000000000);
            if (v8)
            {
              if (*(v11 + 16))
              {

                sub_10000E53C(1701667182, 0xE400000000000000);
                if (v9)
                {

                  sub_1007A0734();
                  swift_allocObject();
                  sub_1007A0724();
                  sub_1007A25C4();
                  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1007A2614();
                  }

                  sub_1007A2644();
                  v1 = v13;
                  goto LABEL_5;
                }
              }
            }
          }
        }

LABEL_5:
        v7 += 32;
        --v6;
      }

      while (v6);
    }
  }

  return v1;
}

uint64_t AEBookInfo.bookEntity.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v146 = a1;
  v3 = sub_1007969B4();
  v4 = __chkstk_darwin(v3 - 8);
  v147 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 chapters];
  v153 = v1;
  if (v6 && (v7 = v6, v8 = sub_1007A2834(), v7, sub_100495E58(v8), v10 = v9, , v10))
  {
    *&v156 = sub_100496A84(v10);
    sub_100496B34(&v156);

    v11 = v156;
    *&v156 = _swiftEmptyArrayStorage;
    if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
    {
      goto LABEL_23;
    }

    for (i = *(v11 + 16); i; i = sub_1007A38D4())
    {
      v2 = 0;
      v154 = v11 & 0xC000000000000001;
      v152 = i;
      while (1)
      {
        if (v154)
        {
          v13 = sub_1007A3784();
        }

        else
        {
          if (v2 >= *(v11 + 16))
          {
            goto LABEL_22;
          }

          v13 = *(v11 + 8 * v2 + 32);
        }

        v14 = v13;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        v15 = [v13 href];
        if (!v15)
        {
          goto LABEL_125;
        }

        v16 = v15;
        sub_1007A2254();

        v17 = [v14 name];
        if (!v17)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        v18 = v17;
        v155 = (v2 + 1);
        sub_1007A2254();

        v19 = [v14 indentationLevel];
        if (!v19)
        {
          goto LABEL_124;
        }

        v20 = v19;
        [v19 integerValue];

        v21 = [v14 absoluteOrder];
        if (!v21)
        {
          goto LABEL_123;
        }

        v22 = v21;
        [v21 integerValue];

        sub_10079FDD4();
        swift_allocObject();
        sub_10079FDA4();

        sub_1007A25C4();
        if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        sub_1007A2644();
        ++v2;
        if (v155 == v152)
        {
          v144 = v156;
          v2 = v153;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v144 = _swiftEmptyArrayStorage;
LABEL_25:
  }

  else
  {
    v144 = 0;
  }

  v23 = [v2 storeFrontId];
  v141 = v23;
  if (v23)
  {
    v24 = v23;
    v25 = sub_1007A3C94();
  }

  else
  {
    v25 = 0;
  }

  v26 = [v2 assetID];
  if (!v26)
  {
    goto LABEL_131;
  }

  v27 = v26;
  v28 = sub_1007A2254();
  v142 = v29;
  v143 = v28;

  v30 = [v2 bookBundlePath];
  if (!v30)
  {
    goto LABEL_131;
  }

  v31 = v30;
  v140 = sub_1007A2254();
  v139 = v32;

  v33 = [v2 storeId];
  if (v33)
  {
    v34 = v33;
    v138 = sub_1007A2254();
    v137 = v35;
  }

  else
  {
    v138 = 0;
    v137 = 0xE000000000000000;
  }

  v36 = [v2 bookTitle];
  if (v36)
  {
    v37 = v36;
    v136 = sub_1007A2254();
    v135 = v38;
  }

  else
  {
    v136 = 0;
    v135 = 0xE000000000000000;
  }

  v39 = [v2 bookAuthor];
  if (v39)
  {
    v40 = v39;
    v134 = sub_1007A2254();
    v133 = v41;
  }

  else
  {
    v134 = 0;
    v133 = 0xE000000000000000;
  }

  v42 = [v2 tocPageHref];
  v145 = v25;
  if (v42)
  {
    v43 = v42;
    v132 = sub_1007A2254();
    v131 = v44;
  }

  else
  {
    v132 = 0;
    v131 = 0xE000000000000000;
  }

  v45 = [v2 linearDocuments];
  if (!v45)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v46 = v45;
  v47 = sub_10000A7C4(0, &qword_100AE5A80);
  v48 = sub_1007A25E4();

  if (v48 >> 62)
  {
    goto LABEL_63;
  }

  v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v49)
  {
    while (1)
    {
      v159 = _swiftEmptyArrayStorage;
      sub_1003BD6E8(0, v49 & ~(v49 >> 63), 0);
      if (v49 < 0)
      {
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
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v50 = 0;
      v51 = v159;
      v154 = v48 & 0xC000000000000001;
      v148 = v47;
      v149 = v48 & 0xFFFFFFFFFFFFFF8;
      v150 = 0x80000001008D7560;
      v151 = v49;
      v152 = v48;
      while (v154)
      {
        v52 = sub_1007A3784();
LABEL_53:
        v155 = v51;
        v53 = v52;
        v54 = [v53 href];
        if (!v54)
        {
          goto LABEL_117;
        }

        v55 = v54;
        sub_1007A2254();

        v56 = [v53 documentOrdinal];
        if (!v56)
        {
          goto LABEL_115;
        }

        v57 = v56;
        [v56 integerValue];

        [v53 linearDocumentIndex];
        v58 = [v53 nonlinearElement];
        if (!v58)
        {
          goto LABEL_116;
        }

        v59 = v58;
        [v58 BOOLValue];

        v60 = [v53 manifestId];
        if (!v60)
        {
          goto LABEL_118;
        }

        v61 = v60;
        sub_1007A2254();

        v62 = sub_1007A0064();
        swift_allocObject();
        v63 = sub_1007A0054();

        v157 = v62;
        v158 = &protocol witness table for DocumentEntity;

        *&v156 = v63;
        v51 = v155;
        v159 = v155;
        v47 = v155[2];
        v64 = v155[3];
        if (v47 >= v64 >> 1)
        {
          sub_1003BD6E8((v64 > 1), v47 + 1, 1);
          v51 = v159;
        }

        ++v50;
        v51[2] = v47 + 1;
        sub_1000077C0(&v156, &v51[5 * v47 + 4]);
        v48 = v152;
        v2 = v153;
        if (v151 == v50)
        {
          v155 = v51;

          goto LABEL_65;
        }
      }

      if ((v50 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v49 = sub_1007A38D4();
      if (!v49)
      {
        goto LABEL_64;
      }
    }

    if (v50 >= *(v149 + 16))
    {
      goto LABEL_62;
    }

    v52 = *(v48 + 8 * v50 + 32);
    goto LABEL_53;
  }

LABEL_64:

  v155 = _swiftEmptyArrayStorage;
LABEL_65:
  v65 = [v2 allDocuments];
  if (!v65)
  {
    goto LABEL_128;
  }

  v66 = v65;
  v67 = sub_1007A25E4();

  if (v67 >> 62)
  {
    goto LABEL_85;
  }

  for (j = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1007A38D4())
  {
    v159 = _swiftEmptyArrayStorage;
    sub_1003BD6E8(0, j & ~(j >> 63), 0);
    if (j < 0)
    {
      goto LABEL_114;
    }

    v69 = 0;
    v70 = v159;
    v151 = v67;
    v152 = (v67 & 0xC000000000000001);
    v148 = v67 & 0xFFFFFFFFFFFFFF8;
    v149 = 0x80000001008D7560;
    v150 = j;
    while (1)
    {
      if (v152)
      {
        v71 = sub_1007A3784();
        goto LABEL_75;
      }

      if ((v69 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v69 >= *(v148 + 16))
      {
        goto LABEL_84;
      }

      v71 = *(v67 + 8 * v69 + 32);
LABEL_75:
      v72 = v71;
      v73 = [v72 href];
      if (!v73)
      {
        goto LABEL_121;
      }

      v74 = v73;
      sub_1007A2254();
      v2 = v75;

      v76 = [v72 documentOrdinal];
      if (!v76)
      {
        goto LABEL_119;
      }

      v77 = v76;
      [v76 integerValue];

      [v72 linearDocumentIndex];
      v78 = [v72 nonlinearElement];
      if (!v78)
      {
        goto LABEL_120;
      }

      v79 = v78;
      v154 = v69;
      [v78 BOOLValue];

      v80 = [v72 manifestId];
      if (!v80)
      {
        goto LABEL_122;
      }

      v81 = v80;
      sub_1007A2254();

      v82 = sub_1007A0064();
      swift_allocObject();
      v83 = sub_1007A0054();

      v157 = v82;
      v158 = &protocol witness table for DocumentEntity;

      *&v156 = v83;
      v159 = v70;
      v85 = v70[2];
      v84 = v70[3];
      if (v85 >= v84 >> 1)
      {
        sub_1003BD6E8((v84 > 1), v85 + 1, 1);
        v70 = v159;
      }

      v69 = v154 + 1;
      v70[2] = v85 + 1;
      sub_1000077C0(&v156, &v70[5 * v85 + 4]);
      v67 = v151;
      if (v150 == v69)
      {

        v2 = v153;
        goto LABEL_87;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    ;
  }

LABEL_87:
  v86 = [v2 firstDocumentLocation];
  if (!v86)
  {
    goto LABEL_129;
  }

  v87 = v86;
  v88 = [v86 ordinal];

  [v2 isFixedLayout];
  v89 = [v2 baseURL];
  if (!v89)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    sub_1007A38A4();
    __break(1u);

    __break(1u);
    return result;
  }

  v90 = v89;
  sub_100796974();

  v91 = [v2 spineIndexInPackage];
  if (v91)
  {
    v92 = v91;
    v152 = [v91 unsignedIntegerValue];
  }

  else
  {
    v152 = 0;
  }

  LODWORD(v149) = [v2 bkPageProgressionDirection];
  v130 = [v2 scrollModeOrientation];
  if ([v2 isFixedLayout])
  {
    sub_100494A04();
    v150 = v94;
    v151 = v93;
  }

  else
  {
    v150 = 0;
    v151 = 0;
  }

  LODWORD(v148) = [v2 obeyPageBreaks];
  v129 = [v2 shouldAllowRemoteInspection];
  v128 = [v2 respectImageSizeClassIsPrefix];
  v127 = [v2 shouldDisableOptimizeSpeed];
  v95 = [v2 respectImageSizeClass];
  if (v95)
  {
    v96 = v95;
    v126 = sub_1007A2254();
    v125 = v97;
  }

  else
  {
    v126 = 0;
    v125 = 0;
  }

  v98 = [v2 bookLanguage];
  if (v98)
  {
    v99 = v98;
    v124 = sub_1007A2254();
    v123 = v100;
  }

  else
  {
    v124 = 0;
    v123 = 0xE000000000000000;
  }

  v101 = [v2 sampleContent];
  if (v101)
  {
    v102 = v101;
    v122 = [v101 BOOLValue];
  }

  else
  {
    v122 = 0;
  }

  v121 = [v2 isProtected];
  v120 = [v2 suppressTOC];
  v119 = sub_100494B14();
  v103 = [v2 isPreorder];
  if (v103)
  {
    v104 = v103;
    v118 = [v103 BOOLValue];
  }

  else
  {
    v118 = 0;
  }

  v154 = v88;
  v117 = [v2 hasBuiltInFonts];
  v105 = [v2 versionNumberHumanReadable];
  if (v105)
  {
    v106 = v105;
    v116 = sub_1007A2254();
    v115 = v107;
  }

  else
  {
    v116 = 0;
    v115 = 0;
  }

  v108 = [v2 databaseKey];
  if (v108)
  {
    v109 = v108;
    sub_1007A2254();
  }

  v110 = sub_10079F884();
  swift_allocObject();
  v111 = sub_10079F874();
  v112 = [v153 cacheItem];
  result = sub_10079F864();
  v114 = v146;
  v146[3] = v110;
  v114[4] = &protocol witness table for BookEntity;
  *v114 = v111;
  return result;
}

void sub_100495E58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AE5AF0);
    v2 = sub_1007A36F4();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = sub_10000A7C4(0, &qword_100AECD40);
  v30[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_100028940(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28.isa = sub_1007A3684().isa;
      sub_10002899C(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_1006884A4(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 7);

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_100028940(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14.isa = sub_1007A3684().isa;
      sub_10002899C(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = sub_1007A3174(v2[5]);
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*&v10[8 * (v19 >> 6)]) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *&v10[8 * v20];
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*&v10[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(v2[6] + 8 * v12) = v16;
      ++v2[2];
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

id BKDocument.documentEntity.getter()
{
  result = [v0 href];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  sub_1007A2254();

  result = [v0 documentOrdinal];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  [result integerValue];

  [v0 linearDocumentIndex];
  result = [v0 nonlinearElement];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  [result BOOLValue];

  result = [v0 manifestId];
  if (result)
  {
    v5 = result;
    sub_1007A2254();

    sub_1007A0064();
    swift_allocObject();
    return sub_1007A0054();
  }

LABEL_9:
  __break(1u);
  return result;
}

void *BookProviderService.bookInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___REBookProviderService_bookInfo);
  v2 = v1;
  return v1;
}

void *BookProviderService.bookInfoMOC.getter()
{
  v1 = *(v0 + OBJC_IVAR___REBookProviderService_bookInfoMOC);
  v2 = v1;
  return v1;
}

uint64_t sub_100496364(uint64_t a1, uint64_t *a2)
{
  sub_100009864(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_1000074E0(v3 + v4);
  sub_1000077C0(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t BookProviderService.bookEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  return sub_100009864(v1 + v3, a1);
}

id BookProviderService.__allocating_init(bookEntity:bookInfo:storeController:epubParser:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = sub_10022569C(a3, v9);
  v12 = sub_100497B90(a1, a2, v11, a4, v4, v9, v10);

  sub_1000074E0(a3);
  return v12;
}

id BookProviderService.init(bookEntity:bookInfo:storeController:epubParser:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = sub_10022569C(a3, v9);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1004979F4(a1, a2, v14, a4, v4, v9, v10);

  sub_1000074E0(a3);
  return v16;
}

uint64_t BookProviderService.areCitationsAllowed.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v0 + v2, v8);
  sub_10000E3E8(v8, v9);
  v3 = sub_10079EC84();
  sub_1000074E0(v8);
  if ((v3 & 1) == 0)
  {
    sub_100009864(v1 + v2, v8);
    sub_10000E3E8(v8, v9);
    v5 = sub_10079ECE4();
    sub_1000074E0(v8);
    if ((v5 & 1) == 0)
    {
      v4 = 1;
      return v4 & 1;
    }

    sub_100009864(v1 + v2, v8);
    sub_10000E3E8(v8, v9);
    sub_10079EBE4();
    if ((v6 & 1) == 0)
    {
      sub_1000074E0(v8);
      sub_10000E3E8((v1 + OBJC_IVAR___REBookProviderService_storeController), *(v1 + OBJC_IVAR___REBookProviderService_storeController + 24));
      v4 = sub_1007A0434();
      return v4 & 1;
    }

    sub_1000074E0(v8);
  }

  v4 = 0;
  return v4 & 1;
}

Swift::Void __swiftcall BookProviderService.setPreordered(_:)(Swift::Bool a1)
{
  v2 = v1 + OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_10022569C(v2, *(v2 + 24));
  sub_10079EBC4();
  swift_endAccess();
}

Swift::OpaquePointer_optional __swiftcall BookProviderService.cachedTocCfiIdMap()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___REBookProviderService_bookInfo);
  if (v2)
  {
    v3 = [v2 databaseKey];
    if (v3)
    {
      v4 = v3;
      sub_1007A2254();

LABEL_5:
      sub_10000E3E8((v1 + OBJC_IVAR___REBookProviderService_epubParser), *(v1 + OBJC_IVAR___REBookProviderService_epubParser + 24));
      v8 = sub_10079FA94();

      goto LABEL_9;
    }
  }

  v5 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v1 + v5, v14);
  sub_10000E3E8(v14, v14[3]);
  sub_10079EBF4();
  v7 = v6;
  sub_1000074E0(v14);
  if (v7)
  {
    goto LABEL_5;
  }

  v10 = sub_10079ACC4();
  v11 = sub_1007A29B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Could not retrive TOC CFI Id map from parser, missing database key from book", v12, 2u);
  }

  v8 = 0;
LABEL_9:
  v13 = v8;
  result.value._rawValue = v13;
  result.is_nil = v9;
  return result;
}

id BookProviderService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookProviderService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100496A84(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1007A3624();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1005D889C(v2, 0);

    v1 = sub_1005D700C(&v5, (v3 + 32), v2, v1);
    sub_10004DC54();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_100496B34(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100786DBC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100496BB0(v6);
  return sub_1007A37E4();
}

void sub_100496BB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1007A3A64(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000A7C4(0, &qword_100AECD40);
        v6 = sub_1007A2634();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100496E28(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100496CC4(0, v2, 1, a1);
  }
}

void sub_100496CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = &selRef_networkReachabilityChangedWithNotification_;
    v26 = *a4;
LABEL_5:
    v24 = v5;
    v25 = a3;
    v8 = *(v4 + 8 * a3);
    v23 = v6;
    while (1)
    {
      v9 = *v5;
      v10 = v8;
      v11 = v9;
      v12 = [v10 v7[331]];
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = [v11 v7[331]];
      if (!v14)
      {

        v10 = v11;
        goto LABEL_12;
      }

      v15 = v14;
      v16 = v7;
      v17 = [v13 integerValue];
      v18 = [v15 integerValue];

      v19 = v17 < v18;
      v7 = v16;
      v4 = v26;
      if (!v19)
      {
        goto LABEL_4;
      }

LABEL_13:
      if (!v4)
      {
        __break(1u);
        return;
      }

      v20 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v20;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
LABEL_4:
        a3 = v25 + 1;
        v5 = v24 + 8;
        v6 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    v13 = v11;
LABEL_12:

    goto LABEL_13;
  }
}

void sub_100496E28(void ***a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_114:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_153;
    }

    v4 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_147;
    }

    v108 = v4;
LABEL_117:
    v4 = *(v108 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v109 = *&v108[16 * v4];
        v110 = v108;
        v111 = *&v108[16 * v4 + 24];
        sub_100497618(*a3 + v109, *a3 + *&v108[16 * v4 + 16], *a3 + v111, v6);
        if (v126)
        {
          goto LABEL_125;
        }

        if (v111 < v109)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_100784A7C(v110);
        }

        if (v4 - 2 >= *(v110 + 2))
        {
          goto LABEL_141;
        }

        v112 = &v110[16 * v4];
        *v112 = v109;
        *(v112 + 1) = v111;
        sub_1007849F0(v4 - 1);
        v108 = v110;
        v4 = *(v110 + 2);
        if (v4 <= 1)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_151;
    }

LABEL_125:

    return;
  }

  v6 = a3;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v9 = &selRef_networkReachabilityChangedWithNotification_;
LABEL_4:
  v10 = v7++;
  if (v7 >= v5)
  {
    goto LABEL_39;
  }

  v114 = v8;
  v116 = v10;
  v11 = v7;
  v12 = *v6;
  v13 = *(*v6 + v10);
  v14 = *(*v6 + v11);
  v15 = v13;
  v16 = [v14 v9[331]];
  if (v16)
  {
    v17 = v16;
    v18 = v5;
    v19 = [v15 v9[331]];
    if (v19)
    {
      v20 = v19;
      v21 = [v17 integerValue];
      v22 = [v20 integerValue];

      v23 = v21 < v22;
      v6 = a3;
      v24 = v23;
    }

    else
    {

      v24 = 1;
    }

    v124 = v24;
    v9 = &selRef_networkReachabilityChangedWithNotification_;
    v5 = v18;
  }

  else
  {

    v124 = 1;
  }

  v10 = v116;
  v4 = v116 + 2;
  if (v116 + 2 >= v5)
  {
    v8 = v114;
    v7 = v116 + 2;
    if (v124)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  v25 = &v12[8 * v116 + 16];
  v122 = v5;
  while (1)
  {
    v30 = *(v25 - 1);
    v31 = *v25;
    v32 = v30;
    v33 = [v31 v9[331]];
    if (v33)
    {
      break;
    }

    v34 = v32;
LABEL_24:

    if (!v124)
    {
      v8 = v114;
      v10 = v116;
      v7 = v4;
      goto LABEL_39;
    }

LABEL_19:
    ++v25;
    if (v5 == ++v4)
    {
      v7 = v5;
      v8 = v114;
      goto LABEL_30;
    }
  }

  v34 = v33;
  v35 = [v32 v9[331]];
  if (!v35)
  {

    v31 = v32;
    v9 = &selRef_networkReachabilityChangedWithNotification_;
    v5 = v122;
    goto LABEL_24;
  }

  v26 = v35;
  v27 = [v34 integerValue];
  v28 = [v26 integerValue];

  v23 = v27 < v28;
  v6 = a3;
  v29 = !v23;
  v9 = &selRef_networkReachabilityChangedWithNotification_;
  v5 = v122;
  if ((v124 ^ v29))
  {
    goto LABEL_19;
  }

  v8 = v114;
  v7 = v4;
LABEL_30:
  v10 = v116;
  if (v124)
  {
LABEL_31:
    if (v7 >= v10)
    {
      if (v10 < v7)
      {
        v36 = 8 * v7 - 8;
        v37 = 8 * v10;
        v38 = v7;
        v39 = v10;
        do
        {
          if (v39 != --v38)
          {
            v41 = *v6;
            if (!*v6)
            {
              goto LABEL_150;
            }

            v40 = *&v41[v37];
            *&v41[v37] = *&v41[v36];
            *&v41[v36] = v40;
          }

          ++v39;
          v36 -= 8;
          v37 += 8;
        }

        while (v39 < v38);
      }

      goto LABEL_39;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    v108 = sub_100784A7C(v4);
    goto LABEL_117;
  }

LABEL_39:
  v42 = v6[1];
  if (v7 >= v42)
  {
    goto LABEL_62;
  }

  if (__OFSUB__(v7, v10))
  {
    goto LABEL_143;
  }

  if (v7 - v10 >= a4)
  {
    goto LABEL_62;
  }

  v43 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_144;
  }

  if (v43 >= v42)
  {
    v43 = v6[1];
  }

  if (v43 < v10)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v7 == v43)
  {
    goto LABEL_62;
  }

  v115 = v8;
  v117 = v10;
  v44 = *v6;
  v4 = *v6 + 8 * v7 - 8;
  v45 = v10 - v7;
  v120 = v43;
LABEL_49:
  v123 = v4;
  v125 = v7;
  v46 = v45;
  v47 = v44[v7];
  v121 = v46;
  v48 = v46;
  while (1)
  {
    v49 = *v4;
    v50 = v47;
    v51 = v49;
    v52 = [v50 v9[331]];
    if (!v52)
    {
      v53 = v51;
LABEL_56:

      goto LABEL_57;
    }

    v53 = v52;
    v54 = [v51 v9[331]];
    if (!v54)
    {

      v50 = v51;
      v9 = &selRef_networkReachabilityChangedWithNotification_;
      goto LABEL_56;
    }

    v55 = v54;
    v56 = [v53 integerValue];
    v57 = [v55 integerValue];

    v23 = v56 < v57;
    v9 = &selRef_networkReachabilityChangedWithNotification_;
    if (!v23)
    {
      goto LABEL_48;
    }

LABEL_57:
    if (!v44)
    {
      break;
    }

    v58 = *v4;
    v47 = *(v4 + 8);
    *v4 = v47;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v48++, 1))
    {
LABEL_48:
      v7 = v125 + 1;
      v4 = v123 + 8;
      v45 = v121 - 1;
      if (v125 + 1 == v120)
      {
        v7 = v120;
        v6 = a3;
        v8 = v115;
        v10 = v117;
LABEL_62:
        if (v7 < v10)
        {
          goto LABEL_142;
        }

        v60 = v8;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v8 = v60;
        }

        else
        {
          v8 = sub_10066B274(0, *(v60 + 2) + 1, 1, v60);
        }

        v4 = *(v8 + 2);
        v61 = *(v8 + 3);
        v62 = v4 + 1;
        if (v4 >= v61 >> 1)
        {
          v8 = sub_10066B274((v61 > 1), v4 + 1, 1, v8);
        }

        *(v8 + 2) = v62;
        v63 = &v8[16 * v4];
        *(v63 + 4) = v10;
        *(v63 + 5) = v7;
        v64 = *a1;
        if (!*a1)
        {
          goto LABEL_152;
        }

        if (!v4)
        {
LABEL_3:
          v5 = v6[1];
          if (v7 >= v5)
          {
            goto LABEL_114;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v65 = v62 - 1;
          if (v62 >= 4)
          {
            break;
          }

          if (v62 == 3)
          {
            v66 = *(v8 + 4);
            v67 = *(v8 + 5);
            v76 = __OFSUB__(v67, v66);
            v68 = v67 - v66;
            v69 = v76;
LABEL_82:
            if (v69)
            {
              goto LABEL_131;
            }

            v82 = &v8[16 * v62];
            v84 = *v82;
            v83 = *(v82 + 1);
            v85 = __OFSUB__(v83, v84);
            v86 = v83 - v84;
            v87 = v85;
            if (v85)
            {
              goto LABEL_134;
            }

            v88 = &v8[16 * v65 + 32];
            v90 = *v88;
            v89 = *(v88 + 1);
            v76 = __OFSUB__(v89, v90);
            v91 = v89 - v90;
            if (v76)
            {
              goto LABEL_137;
            }

            if (__OFADD__(v86, v91))
            {
              goto LABEL_138;
            }

            if (v86 + v91 >= v68)
            {
              if (v68 < v91)
              {
                v65 = v62 - 2;
              }

              goto LABEL_103;
            }

            goto LABEL_96;
          }

          v92 = &v8[16 * v62];
          v94 = *v92;
          v93 = *(v92 + 1);
          v76 = __OFSUB__(v93, v94);
          v86 = v93 - v94;
          v87 = v76;
LABEL_96:
          if (v87)
          {
            goto LABEL_133;
          }

          v95 = &v8[16 * v65];
          v97 = *(v95 + 4);
          v96 = *(v95 + 5);
          v76 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v76)
          {
            goto LABEL_136;
          }

          if (v98 < v86)
          {
            goto LABEL_3;
          }

LABEL_103:
          v4 = v65 - 1;
          if (v65 - 1 >= v62)
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
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

          if (!*v6)
          {
            goto LABEL_149;
          }

          v103 = v7;
          v104 = v8;
          v105 = *&v8[16 * v4 + 32];
          v106 = *&v8[16 * v65 + 40];
          sub_100497618(*v6 + v105, *v6 + *&v8[16 * v65 + 32], *v6 + v106, v64);
          if (v126)
          {
            goto LABEL_125;
          }

          if (v106 < v105)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_100784A7C(v104);
          }

          if (v4 >= *(v104 + 2))
          {
            goto LABEL_128;
          }

          v107 = &v104[16 * v4];
          *(v107 + 4) = v105;
          *(v107 + 5) = v106;
          sub_1007849F0(v65);
          v8 = v104;
          v62 = *(v104 + 2);
          v7 = v103;
          if (v62 <= 1)
          {
            goto LABEL_3;
          }
        }

        v70 = &v8[16 * v62 + 32];
        v71 = *(v70 - 64);
        v72 = *(v70 - 56);
        v76 = __OFSUB__(v72, v71);
        v73 = v72 - v71;
        if (v76)
        {
          goto LABEL_129;
        }

        v75 = *(v70 - 48);
        v74 = *(v70 - 40);
        v76 = __OFSUB__(v74, v75);
        v68 = v74 - v75;
        v69 = v76;
        if (v76)
        {
          goto LABEL_130;
        }

        v77 = &v8[16 * v62];
        v79 = *v77;
        v78 = *(v77 + 1);
        v76 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v76)
        {
          goto LABEL_132;
        }

        v76 = __OFADD__(v68, v80);
        v81 = v68 + v80;
        if (v76)
        {
          goto LABEL_135;
        }

        if (v81 >= v73)
        {
          v99 = &v8[16 * v65 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v76 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v76)
          {
            goto LABEL_139;
          }

          if (v68 < v102)
          {
            v65 = v62 - 2;
          }

          goto LABEL_103;
        }

        goto LABEL_82;
      }

      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_100497618(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a3;
  v5 = a2 - __src;
  v6 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v6 = a2 - __src;
  }

  v7 = v6 >> 3;
  v8 = a3 - a2;
  v9 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v9 = a3 - a2;
  }

  v10 = v9 >> 3;
  if (v7 >= v9 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v10] <= a4)
    {
      v32 = a2;
      memmove(a4, a2, 8 * v10);
      a2 = v32;
    }

    v13 = &v14[v10];
    if (v8 < 8)
    {
      v31 = a2;
      goto LABEL_49;
    }

    v31 = a2;
    if (a2 > __src)
    {
      v54 = v14;
      while (2)
      {
        v33 = v31 - 1;
        --v4;
        v34 = v13;
        v35 = &selRef_networkReachabilityChangedWithNotification_;
        v50 = v31 - 1;
        while (1)
        {
          v36 = *(v34 - 1);
          v34 -= 8;
          v37 = *v33;
          v38 = v36;
          v39 = v37;
          v40 = [v38 v35[331]];
          if (!v40)
          {
            break;
          }

          v41 = v40;
          v42 = [v39 v35[331]];
          if (!v42)
          {

            v38 = v39;
            goto LABEL_40;
          }

          v43 = v42;
          v52 = [v41 integerValue];
          v44 = v4;
          v45 = v13;
          v46 = v31;
          v47 = [v43 integerValue];

          v33 = v50;
          v28 = v52 < v47;
          v31 = v46;
          v13 = v45;
          v4 = v44;
          v35 = &selRef_networkReachabilityChangedWithNotification_;
          if (v28)
          {
            goto LABEL_41;
          }

          if (v44 + 1 != v13)
          {
            *v44 = *v34;
          }

          v4 = v44 - 1;
          v13 = v34;
          if (v34 <= v54)
          {
            v13 = v34;
            v14 = v54;
            goto LABEL_49;
          }
        }

        v41 = v39;
LABEL_40:

        v33 = v50;
LABEL_41:
        if (v4 + 1 != v31)
        {
          *v4 = *v33;
        }

        v14 = v54;
        if (v13 <= v54 || (v31 = v33, v33 <= __src))
        {
          v31 = v33;
          break;
        }

        continue;
      }
    }
  }

  else
  {
    v11 = a2;
    if (a4 != __src || &__src[v7] <= a4)
    {
      v12 = a4;
      memmove(a4, __src, 8 * v7);
      a4 = v12;
    }

    v13 = &a4[v7];
    v14 = a4;
    if (v5 < 8)
    {
      v31 = __src;
      goto LABEL_49;
    }

    v15 = __src;
    if (v11 < v4)
    {
      v16 = v11;
      while (1)
      {
        v17 = *v14;
        v18 = *v16;
        v19 = v17;
        v20 = [v18 absoluteOrder];
        if (!v20)
        {
          break;
        }

        v21 = v20;
        v53 = v14;
        v22 = [v19 absoluteOrder];
        if (!v22)
        {

          v18 = v19;
LABEL_19:

LABEL_20:
          v29 = v16;
          if (v15 == v16++)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v15 = *v29;
          goto LABEL_22;
        }

        v23 = v22;
        v51 = [v21 integerValue];
        v24 = v13;
        v25 = v15;
        v26 = v16;
        v27 = [v23 integerValue];

        v28 = v51 < v27;
        v16 = v26;
        v15 = v25;
        v13 = v24;
        v14 = v53;
        if (v28)
        {
          goto LABEL_20;
        }

        v29 = v53;
        v14 = v53 + 1;
        if (v15 != v53)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v15;
        if (v14 >= v13 || v16 >= v4)
        {
          goto LABEL_24;
        }
      }

      v21 = v19;
      goto LABEL_19;
    }

LABEL_24:
    v31 = v15;
  }

LABEL_49:
  if (v31 != v14 || v31 >= (v14 + ((v13 - v14 + (v13 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v31, v14, 8 * ((v13 - v14) / 8));
  }

  return 1;
}

id sub_1004979F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a6;
  v20[4] = a7;
  v13 = sub_1002256EC(v20);
  (*(*(a6 - 8) + 32))(v13, a3, a6);
  v14 = type metadata accessor for BookProviderService();
  v19 = v14;
  sub_1001F1160(&qword_100AEBCE0);
  sub_1007A22E4();
  sub_10079ACD4();
  sub_100009864(a1, &a5[OBJC_IVAR___REBookProviderService_bookEntity]);
  *&a5[OBJC_IVAR___REBookProviderService_bookInfo] = a2;
  sub_100009864(v20, &a5[OBJC_IVAR___REBookProviderService_storeController]);
  sub_100009864(a4, &a5[OBJC_IVAR___REBookProviderService_epubParser]);
  if (a2)
  {
    v15 = [a2 managedObjectContext];
  }

  else
  {
    v15 = 0;
  }

  *&a5[OBJC_IVAR___REBookProviderService_bookInfoMOC] = v15;
  v18.receiver = a5;
  v18.super_class = v14;
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_1000074E0(a4);
  sub_1000074E0(a1);
  sub_1000074E0(v20);
  return v16;
}

id sub_100497B90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  __chkstk_darwin(a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for BookProviderService());
  (*(v13 + 16))(v15, a3, a6);
  return sub_1004979F4(a1, a2, v15, a4, v16, a6, a7);
}

uint64_t type metadata accessor for BookProviderService()
{
  result = qword_100AE5AE0;
  if (!qword_100AE5AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100497CF4()
{
  result = sub_10079ACE4();
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

uint64_t type metadata accessor for ViewSupplementalContentActionItem()
{
  result = qword_100AE5B50;
  if (!qword_100AE5B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100497E14@<X0>(uint64_t a1@<X8>)
{
  sub_10000E3E8(v1, v1[3]);
  v3 = sub_100797704();
  if (*(v3 + 16))
  {
    sub_100009864(v3 + 32, v5);

    sub_1001F1160(&qword_100AD4B48);
    sub_1001F1160(&qword_100AE5B98);
    if (swift_dynamicCast())
    {
      if (*(&v7 + 1))
      {
        return sub_1000077C0(&v6, a1);
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  sub_100007840(&v6, &unk_100AE5BA0);
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

uint64_t sub_100497F64@<X0>(uint64_t a1@<X8>)
{
  sub_100009864(v1 + 40, v6);
  sub_1001F1160(&qword_100AD5ED0);
  sub_1001F1160(&qword_100AD5ED8);
  if (swift_dynamicCast())
  {
    return sub_1000077C0(v4, a1);
  }

  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_100007840(v4, qword_100AD5EE0);
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

uint64_t sub_10049805C()
{
  v1 = v0;
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  sub_10000E3E8(v0, v0[3]);
  sub_1007977A4();
  if (v19)
  {
    sub_1001FF70C(&v18);
LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  sub_1000077C0(&v18, v23);
  sub_100497E14(v21);
  sub_10000E3E8(v21, v22);
  sub_1002C5BF4(&v18);
  v9 = v18;
  v10 = BYTE8(v18);

  sub_1000074E0(v21);
  if (v10 & 1) != 0 || v9 < 1 || (sub_10000E3E8(v0, v0[3]), sub_100797784(), (*(v3 + 104))(v5, enum case for ContextActionSource.productPage(_:), v2), sub_100498DFC(), v11 = sub_1007A2124(), v12 = *(v3 + 8), v12(v5, v2), v12(v8, v2), (v11) || (sub_10000E3E8(v23, v24), v13 = sub_100797694(), v13 == 2) || (v13 & 1) == 0 || (sub_10000E3E8(v23, v24), sub_1007976A4(), !v14) || (, sub_10000E3E8(v23, v24), sub_1007976B4(), (sub_1007972D4() & 1) == 0))
  {
    sub_1000074E0(v23);
    goto LABEL_13;
  }

  sub_10000E3E8(v1, v1[3]);
  if (sub_100797794())
  {
    v15 = 1;
  }

  else
  {
    sub_100497E14(v21);
    sub_10000E3E8(v21, v22);
    sub_1002C5BF4(&v18);
    v15 = v20;

    sub_1000074E0(v21);
  }

  sub_1000074E0(v23);
  return v15 & 1;
}

uint64_t sub_100498384()
{
  v1[28] = v0;
  v2 = sub_10079ACE4();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v3 = sub_100797D54();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();
  sub_1007A26F4();
  v1[36] = sub_1007A26E4();
  v5 = sub_1007A2694();

  return _swift_task_switch(sub_1004984E0, v5, v4);
}

uint64_t sub_1004984E0()
{
  v39 = v0;
  v1 = *(v0 + 224);

  sub_10000E3E8(v1, v1[3]);
  sub_1007977A4();
  if (*(v0 + 56) == 1)
  {
    sub_1001FF70C(v0 + 16);
LABEL_5:
    sub_10079AC44();
    v4 = sub_10079ACC4();
    v5 = sub_1007A29B4();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 232);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Trying to view a pdf when no supplemental pdf count in unavailable", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_20;
  }

  sub_1000077C0((v0 + 16), v0 + 64);
  sub_100497E14(v0 + 104);
  sub_10000E3E8((v0 + 104), *(v0 + 128));
  sub_1002C5BF4(&v33);
  v2 = v33;
  v3 = v34;

  sub_1000074E0(v0 + 104);
  if (v3 == 1)
  {
    sub_1000074E0(v0 + 64);
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 264);
    sub_100798004();
    v14 = sub_100797FF4();
    sub_10000E3E8((v0 + 64), *(v0 + 88));
    sub_100797674();
    (*(v12 + 104))(v11, enum case for ViewSource.actionMenu(_:), v13);
    LOBYTE(v33) = 0;
    sub_100797FD4();

    (*(v12 + 8))(v11, v13);
    sub_100497E14(v0 + 144);
    sub_10000E3E8((v0 + 144), *(v0 + 168));
    sub_1002C5BF4(&v33);
    v16 = v35;
    v15 = v36;

    if (v15)
    {
      sub_1000074E0(v0 + 144);
      sub_100497E14(v0 + 184);
      sub_10000E3E8((v0 + 184), *(v0 + 208));
      sub_1002C5BF4(&v33);
      v17 = v37;
      v18 = v38;

      sub_100498990(v16, v15, v17, v18);

      v19 = v0 + 184;
    }

    else
    {
      v19 = v0 + 144;
    }

    sub_1000074E0(v19);
  }

  else if (v2 < 2)
  {
    sub_10079AC44();
    v24 = sub_10079ACC4();
    v25 = sub_1007A29B4();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 256);
    v28 = *(v0 + 232);
    v29 = *(v0 + 240);
    if (v26)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Trying to view a pdf when no supplemental pdf should be available", v30, 2u);
    }

    (*(v29 + 8))(v27, v28);
  }

  else
  {
    v20 = objc_opt_self();
    sub_10000E3E8((v0 + 64), *(v0 + 88));
    sub_100797674();
    v21 = sub_1007A2214();

    v22 = [v20 supplementalContentPDFPickerWithPlaylistID:v21 fromActionMenu:1];

    if (v22)
    {
      v23 = *(v0 + 224);
      [v22 setModalPresentationStyle:2];
      sub_10000E3E8((v23 + 40), *(v23 + 64));
      sub_100796EC4();
    }
  }

  sub_1000074E0(v0 + 64);
LABEL_20:

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100498990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = _swiftEmptyDictionarySingleton;
  sub_100497F64(&v29);
  sub_10000E3E8(&v29, ObjectType);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [objc_opt_self() sceneControllerForViewController:Strong], v7, v8))
  {
    sub_1000074E0(&v29);
    v9 = [v8 newShowAssetTransaction];
    v10 = sub_1007A2254();
    v11 = a3;
    v13 = v12;
    ObjectType = swift_getObjectType();
    *&v29 = v9;
    sub_1000076D4(&v29, v28);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002F4B78(v28, v10, v13, isUniquelyReferenced_nonNull_native);
    a3 = v11;

    swift_unknownObjectRelease();
    v31 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_1000074E0(&v29);
    v9 = 0;
  }

  v15 = sub_1007A2254();
  v17 = v15;
  v18 = v16;
  if (a4)
  {
    ObjectType = &type metadata for String;
    *&v29 = a3;
    *(&v29 + 1) = a4;
    sub_1000076D4(&v29, v28);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002F4B78(v28, v17, v18, v19);

    v20 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_1002EEBD0(v15, v16, &v29);

    sub_100007840(&v29, &unk_100AD5B40);
    v20 = v31;
  }

  sub_100497F64(&v29);
  sub_10000E3E8(&v29, ObjectType);
  sub_10058096C(v20);

  v21 = sub_1004C32C4();
  if (v21)
  {
    v22 = v21;
    v23 = objc_allocWithZone(BKAssetID);
    v24 = sub_1007A2214();
    v25 = [v23 initWithAssetID:v24];

    isa = sub_1007A2024().super.isa;

    [v22 showAssetWithTransaction:v9 assetIdentifier:v25 location:0 options:isa completion:0];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_1000074E0(&v29);
}

uint64_t sub_100498CB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100498384();
}

uint64_t sub_100498D40@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1000077C0(a1, a6);
  sub_1000077C0(a2, a6 + 40);
  *(a6 + 80) = a3;
  sub_1000077C0(a4, a6 + 88);
  v11 = *(a5 + 32);
  v12 = enum case for ContextActionType.viewIncludedPDF(_:);
  v13 = sub_100797144();
  v14 = *(*(v13 - 8) + 104);

  return v14(a6 + v11, v12, v13);
}

unint64_t sub_100498DFC()
{
  result = qword_100AD7780;
  if (!qword_100AD7780)
  {
    sub_1007971A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7780);
  }

  return result;
}

uint64_t sub_100498E54()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE5BB0);
  sub_100008B98(v0, qword_100AE5BB0);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A33F4();
}

id sub_100498F20(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR___BKAudiobookController_supportsReportConcernInJS] = 0;
  v5[OBJC_IVAR___BKAudiobookController_canChangePlayerVolume] = 0;
  v5[OBJC_IVAR___BKAudiobookController_canStopPlayer] = 1;
  *&v5[OBJC_IVAR___BKAudiobookController_player] = a1;
  *&v5[OBJC_IVAR___BKAudiobookController_sleepTimer] = a2;
  *&v5[OBJC_IVAR___BKAudiobookController_bag] = a3;
  *&v5[OBJC_IVAR___BKAudiobookController_bridge] = a4;
  v18.receiver = v5;
  v18.super_class = ObjectType;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = objc_msgSendSuper2(&v18, "init");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v15;

  sub_1007A3304();

  return v16;
}

void sub_10049912C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1007A2214();
    v5 = [a1 objectForKeyedSubscript:v4];

    if (v5)
    {
      v6 = [v5 toBool];

      v3[OBJC_IVAR___BKAudiobookController_supportsReportConcernInJS] = v6;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1004991F8()
{
  v1 = [*(v0 + OBJC_IVAR___BKAudiobookController_bag) reportConcerns];
  *&v10 = 0;
  v2 = [v1 jsa_valueWithError:&v10];

  v3 = v10;
  if (!v2)
  {
    v6 = v10;
    sub_1007967D4();

    swift_willThrow();

    v10 = 0u;
    v11 = 0u;
LABEL_9:
    sub_1000230BC(&v10);
    return 0;
  }

  *&v10 = 0x64656C62616E65;
  *(&v10 + 1) = 0xE700000000000000;
  v4 = v3;
  v5 = [v2 __swift_objectForKeyedSubscript:sub_1007A3B04()];
  swift_unknownObjectRelease();

  if (v5)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_9;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v8;
  }

  return result;
}

id sub_1004993A0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_10000AE20(a2, v29);
  v6 = v30;
  if (v30)
  {
    v7 = sub_10000E3E8(v29, v30);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1007A3AA4();
    (*(v8 + 8))(v11, v6);
    sub_1000074E0(v29);
  }

  else
  {
    v12 = 0;
  }

  v28.receiver = v2;
  v28.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v28, "canPerformAction:withSender:", a1, v12);
  swift_unknownObjectRelease();
  if (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94())
  {
    if (v13)
    {
      v14 = *&v2[OBJC_IVAR___BKAudiobookController_player];
      if ([v14 currentAudiobook])
      {
LABEL_23:
        swift_unknownObjectRelease();
        v15 = [v14 state] != 4;
        return (v15 & 1);
      }
    }

LABEL_51:
    v15 = 0;
    return (v15 & 1);
  }

  if (sub_100796E94())
  {
    if (v13)
    {
      v14 = *&v2[OBJC_IVAR___BKAudiobookController_player];
      if ([v14 currentAudiobook])
      {
        goto LABEL_23;
      }
    }

    goto LABEL_51;
  }

  if ((sub_100796E94() & 1) == 0)
  {
    if (sub_100796E94())
    {
      if (v13)
      {
        v21 = *&v2[OBJC_IVAR___BKAudiobookController_player];
        if ([v21 currentAudiobook])
        {
          swift_unknownObjectRelease();
          if ([v21 state] != 4)
          {
            v15 = [v21 currentChapterIndex] != 0;
            return (v15 & 1);
          }
        }
      }
    }

    else if ((sub_100796E94() & 1) == 0 && (sub_100796E94() & 1) == 0)
    {
      v22 = sub_100796E94();
      if ((v22 & v13 & 1) == 0)
      {
        v15 = (v22 ^ 1) & v13;
        return (v15 & 1);
      }

      v23 = [*&v2[OBJC_IVAR___BKAudiobookController_player] currentAudiobook];
      if (v23)
      {
        v24 = [v23 isSG];
        swift_unknownObjectRelease();
        if (v24)
        {
          if ((sub_1004991F8() & 1) != 0 && v2[OBJC_IVAR___BKAudiobookController_supportsReportConcernInJS] == 1)
          {
            v15 = [objc_opt_self() isOffline] ^ 1;
            return (v15 & 1);
          }
        }
      }
    }

    goto LABEL_51;
  }

  v16 = *&v2[OBJC_IVAR___BKAudiobookController_player];
  v17 = [v16 currentAudiobook];
  if (v17)
  {
    v18 = [v17 chapters];
    swift_unknownObjectRelease();
    sub_1001F1160(&qword_100AED9C0);
    v19 = sub_1007A25E4();

    if (v19 >> 62)
    {
      v20 = sub_1007A38D4();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (!v13)
    {
      goto LABEL_51;
    }

    v20 = 0;
  }

  if (![v16 currentAudiobook])
  {
    goto LABEL_51;
  }

  swift_unknownObjectRelease();
  if ([v16 state] == 4)
  {
    goto LABEL_51;
  }

  result = [v16 currentChapterIndex];
  v26 = v20 - 1;
  if (!__OFSUB__(v20, 1))
  {
    v15 = v26 > 0 && result < v26;
    return (v15 & 1);
  }

  __break(1u);
  return result;
}

void sub_1004999E4(void *a1)
{
  v2 = v1;
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v32 - v17;
  v34 = a1;
  [a1 action];
  if (sub_100796E94())
  {
    v33 = v4;
    v32 = *(v2 + OBJC_IVAR___BKAudiobookController_player);
    [v32 isPlaying];
    sub_1007A2154();
    sub_100796C94();
    (*(v12 + 16))(v14, v18, v11);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v21 = v33;
    (*(v5 + 16))(v7, v10, v33);
    sub_1007A22D4();
    (*(v5 + 8))(v10, v21);
    (*(v12 + 8))(v18, v11);
    v22 = sub_1007A2214();

    v23 = v34;
    [v34 setTitle:v22];

    [v32 isPlaying];
    v24 = sub_1007A2214();
    v25 = [objc_opt_self() systemImageNamed:v24];

    [v23 setImage:v25];
    return;
  }

  if (sub_100796E94())
  {
    v19 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed] == 0;
    goto LABEL_20;
  }

  if (sub_100796E94())
  {
    v19 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed] == 1;
    goto LABEL_20;
  }

  if (sub_100796E94())
  {
    v26 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed];
LABEL_10:
    v19 = v26 == 2;
    goto LABEL_20;
  }

  if (sub_100796E94())
  {
    v27 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed];
LABEL_13:
    v19 = v27 == 3;
    goto LABEL_20;
  }

  if (sub_100796E94())
  {
    v28 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed];
LABEL_16:
    v19 = v28 == 4;
    goto LABEL_20;
  }

  if (sub_100796E94())
  {
    v29 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed];
LABEL_19:
    v19 = v29 == 5;
    goto LABEL_20;
  }

  if (sub_100796E94())
  {
    v26 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption];
    goto LABEL_10;
  }

  if (sub_100796E94())
  {
    v27 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption];
    goto LABEL_13;
  }

  if (sub_100796E94())
  {
    v28 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption];
    goto LABEL_16;
  }

  if (sub_100796E94())
  {
    v29 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption];
    goto LABEL_19;
  }

  if (sub_100796E94())
  {
    v19 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption] == 6;
    goto LABEL_20;
  }

  if (sub_100796E94())
  {
    v19 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption] == 7;
LABEL_20:
    v30 = v19;
    goto LABEL_23;
  }

  if (sub_100796E94())
  {
    v30 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) expiresAtChapterEnd];
  }

  else
  {
    if ((sub_100796E94() & 1) == 0)
    {
      return;
    }

    v30 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) isActive] ^ 1;
  }

LABEL_23:
  v31 = v34;

  [v31 setState:v30];
}

id sub_10049A1F8()
{
  v1 = v0;
  if (qword_100AD1720 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AE5BB0);
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping playback from AudiobookController", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR___BKAudiobookController_player);
  [v6 stop];

  return [v6 setCurrentAudiobook:0];
}

uint64_t sub_10049A348(char *a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v9 = a1;
  }

  v10 = [*&a1[OBJC_IVAR___BKAudiobookController_player] skipController];
  [v10 *a4];
  [v10 singleSkip:a5 interval:?];

  return sub_1000230BC(&v12);
}

void sub_10049A41C(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = a1;
  }

  [*&a1[OBJC_IVAR___BKAudiobookController_player] *a4];
  sub_1000230BC(&v8);
}

void sub_10049A76C(char *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, uint64_t a6)
{
  if (a3)
  {
    v10 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = a1;
  }

  [*&a1[*a4] *a5];
  sub_1000230BC(&v12);
}

void sub_10049A804()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v27 - v4;
  v6 = [*&v0[OBJC_IVAR___BKAudiobookController_player] currentAudiobook];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 assetID];
    v9 = sub_1007A2254();
    v11 = v10;

    v12 = [v7 supplementalContents];
    sub_10000A7C4(0, &qword_100AE5C30);
    v13 = sub_1007A25E4();

    if (v13 >> 62)
    {
      sub_1007A38D4();
    }

    isa = sub_1007A2884().super.super.isa;
    v14 = [objc_opt_self() delegate];
    v15 = [v14 primaryAnalyticsController];

    v16 = sub_100797CF4();
    if (v16)
    {
      v17 = sub_1007A2744();
      (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
      sub_1007A26F4();
      v18 = isa;
      v19 = v16;
      v20 = v1;
      v21 = sub_1007A26E4();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = &protocol witness table for MainActor;
      v22[4] = v9;
      v22[5] = v11;
      v22[6] = v18;
      v22[7] = v19;
      v22[8] = v20;
      sub_1003457A0(0, 0, v5, &unk_100829058, v22);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100AD1720 != -1)
    {
      swift_once();
    }

    v23 = sub_10079ACE4();
    sub_100008B98(v23, qword_100AE5BB0);
    isa = sub_10079ACC4();
    v24 = sub_1007A29B4();
    if (os_log_type_enabled(isa, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, isa, v24, "Current audiobook is nil", v25, 2u);
    }
  }

  v26 = isa;
}

uint64_t sub_10049AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[10] = sub_1007A26F4();
  v7[11] = sub_1007A26E4();
  objc_allocWithZone(sub_1001F1160(&qword_100AD4B38));

  v12 = a6;
  v13 = a7;
  v14 = swift_task_alloc();
  v7[12] = v14;
  *v14 = v7;
  v14[1] = sub_10049ACA8;

  return sub_1005DE8A4(a4, a5, a6, v13);
}

uint64_t sub_10049ACA8(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  *(*v1 + 104) = a1;

  v5 = sub_1007A2694();

  return _swift_task_switch(sub_10049AE24, v5, v4);
}

uint64_t sub_10049AE24()
{
  v1 = v0[13];

  v2 = [objc_opt_self() delegate];
  v3 = [v2 sceneManager];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v0[6] = sub_10049B294;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100201C54;
  v0[5] = &unk_100A1E4B8;
  v5 = _Block_copy(v0 + 2);
  v6 = v1;

  [v3 requestPrimaryScene:v5];
  _Block_release(v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10049AFA4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_1000230BC(v9);
}

void sub_10049B0F0(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [a1 bk_window];
  v6 = [v4 jsa_topMostViewControllerForWindow:v5];

  [a2 setModalPresentationStyle:2];
  [v6 presentViewController:a2 animated:1 completion:0];
}

uint64_t sub_10049B1B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002812C;

  return sub_10049AB9C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t ScrubberStatePublisher.statusBarStateProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ScrubberStatePublisher.statusBarStateProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10049B3E4;
}

void sub_10049B3E4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ScrubberStatePublisher.scrubberState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t ScrubberStatePublisher.scrubberState.setter(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100337314(a1, a2);
  sub_10079B9B4();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_100342F4C(a1, a2);
  }

  v5 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 24))(ObjectType, v5);
  v9 = v8;
  swift_unknownObjectRelease();
  if (!v7)
  {
    return sub_100342F4C(a1, a2);
  }

  v10 = swift_getObjectType();
  (*(v9 + 8))(v10, v9);
  sub_100342F4C(a1, a2);
  return swift_unknownObjectRelease();
}

void (*ScrubberStatePublisher.scrubberState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *(v4 + 48) = *v4;
  *(v4 + 56) = *(v4 + 8);
  return sub_10049B70C;
}

void sub_10049B70C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  if (a2)
  {
    *v3 = v4;
    *(v3 + 8) = v5;
    sub_100337314(v4, v5);

    sub_100337314(v4, v5);
    sub_10079B9B4();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong() && (v6 = *(*(v3 + 8) + 32), v7 = swift_getObjectType(), v8 = (*(v6 + 24))(v7, v6), v10 = v9, swift_unknownObjectRelease(), v8))
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(ObjectType, v10);
      sub_100342F4C(v4, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100342F4C(v4, v5);
    }

    v18 = *(v3 + 6);
    v19 = *(v3 + 56);
  }

  else
  {
    *v3 = v4;
    *(v3 + 8) = v5;

    sub_100337314(v4, v5);
    sub_10079B9B4();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(*(v3 + 8) + 32);
      v13 = swift_getObjectType();
      v14 = (*(v12 + 24))(v13, v12);
      v16 = v15;
      swift_unknownObjectRelease();
      if (v14)
      {
        v17 = swift_getObjectType();
        (*(v16 + 8))(v17, v16);
        sub_100342F4C(v4, v5);
        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    v18 = v4;
    v19 = v5;
  }

  sub_100342F4C(v18, v19);
LABEL_12:

  free(v3);
}

uint64_t ScrubberStatePublisher.$scrubberState.getter()
{
  swift_beginAccess();
  sub_1001F1160(&qword_100AE5C40);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t ScrubberStatePublisher.$scrubberState.setter(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE5C48);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_1001F1160(&qword_100AE5C40);
  sub_10079B984();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ScrubberStatePublisher.$scrubberState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1001F1160(&qword_100AE5C48);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5Books22ScrubberStatePublisher__scrubberState;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1001F1160(&qword_100AE5C40);
  sub_10079B974();
  swift_endAccess();
  return sub_1002E7304;
}

uint64_t ScrubberStatePublisher.__allocating_init(bookContentViewProxy:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  sub_10079B964();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t ScrubberStatePublisher.init(bookContentViewProxy:)(uint64_t a1)
{
  v3 = sub_1001F1160(&qword_100AE5C40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC5Books22ScrubberStatePublisher__scrubberState;
  v9 = 0;
  v10 = 2;
  sub_10079B964();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + 16) = a1;
  return v1;
}

UIView __swiftcall ScrubberStatePublisher.makeSnapshotView()()
{
  v0 = sub_1007A0C44();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 snapshotViewAfterScreenUpdates:0];

    if (v2)
    {
      return v2;
    }
  }

  v4 = objc_allocWithZone(UIView);

  return [v4 init];
}

uint64_t ScrubberStatePublisher.deinit()
{

  sub_10002B130(v0 + 24);
  v1 = OBJC_IVAR____TtC5Books22ScrubberStatePublisher__scrubberState;
  v2 = sub_1001F1160(&qword_100AE5C40);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScrubberStatePublisher.__deallocating_deinit()
{

  sub_10002B130(v0 + 24);
  v1 = OBJC_IVAR____TtC5Books22ScrubberStatePublisher__scrubberState;
  v2 = sub_1001F1160(&qword_100AE5C40);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10049BFB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScrubberStatePublisher();
  result = sub_10079B8B4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for ScrubberStatePublisher()
{
  result = qword_100AE5C78;
  if (!qword_100AE5C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10049C044()
{
  sub_10049C0EC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10049C0EC()
{
  if (!qword_100AE5C88)
  {
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE5C88);
    }
  }
}

void sub_10049C274()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for BuyButtonUIViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for BuyButtonUIView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      [*(v3 + OBJC_IVAR____TtC5Books15BuyButtonUIView_button) addTarget:v0 action:"_buyButtonPressed:" forControlEvents:64];

      sub_10049C430(v5);

      v6 = OBJC_IVAR____TtC5Books15BuyButtonUIView_radialProgress;
      v7 = *(v4 + OBJC_IVAR____TtC5Books15BuyButtonUIView_radialProgress);
      v8 = objc_opt_self();
      v9 = v7;
      v10 = [v8 clearColor];
      [v9 setTrackColor:v10];

      [*(v4 + v6) setInscribeProgress:0];
      [*(v4 + v6) setProgressThickness:2.0];
      v11 = *(v4 + v6);
      v12 = [v8 labelColor];
      [v11 setProgressColor:v12];

      [*(v4 + v6) setTrackThickness:2.0];
    }
  }
}

uint64_t sub_10049C430(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE5DC0);
  v3 = *(v2 - 8);
  v105 = v2;
  v106 = v3;
  __chkstk_darwin(v2);
  v103 = &v69 - v4;
  v5 = sub_1001F1160(&qword_100AE5DC8);
  v6 = *(v5 - 8);
  v107 = v5;
  v108 = v6;
  __chkstk_darwin(v5);
  v104 = &v69 - v7;
  v99 = sub_1001F1160(&qword_100AD81B0);
  v100 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v69 - v8;
  v101 = sub_1001F1160(&qword_100AE1558);
  v102 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v69 - v9;
  v93 = sub_1001F1160(&qword_100AD8228);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v69 - v10;
  v95 = sub_1001F1160(&qword_100AD8230);
  v96 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v69 - v11;
  v82 = sub_1001F1160(&unk_100AE1530);
  v84 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = &v69 - v12;
  v88 = sub_1001F1160(&qword_100AD8200);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v78 = &v69 - v13;
  v72 = sub_1001F1160(&qword_100AE5DD0);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v69 - v14;
  v74 = sub_1001F1160(&qword_100AE5DD8);
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v69 - v15;
  v16 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v69 - v17;
  v19 = sub_1001F1160(&qword_100AE5DE0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v69 - v21;
  v110 = sub_1001F1160(&qword_100AE5DE8);
  v115 = *(v110 - 8);
  __chkstk_darwin(v110);
  v24 = &v69 - v23;
  v118 = a1;
  swift_beginAccess();
  v90 = sub_1001F1160(&qword_100AE3D00);
  sub_10079B974();
  swift_endAccess();
  v117 = sub_10000A7C4(0, &qword_100AD1E10);
  v25 = sub_1007A2D74();
  v120 = v25;
  v116 = sub_1007A2D24();
  v26 = *(v116 - 8);
  v27 = *(v26 + 56);
  v119 = v26 + 56;
  v27(v18, 1, 1, v116);
  v113 = v27;
  v114 = &protocol conformance descriptor for Published<A>.Publisher;
  v87 = sub_100005920(&qword_100AE5DF0, &qword_100AE5DE0);
  v28 = sub_100017E1C();
  v80 = v19;
  v111 = v28;
  v79 = v22;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0);

  v29 = *(v20 + 8);
  v85 = v20 + 8;
  v86 = v29;
  v29(v22, v19);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v112 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  v83 = sub_100005920(&qword_100AE5DF8, &qword_100AE5DE8);
  v30 = v110;
  v76 = v24;
  sub_10079BB04();

  v31 = *(v115 + 8);
  v115 += 8;
  v81 = v31;
  v31(v24, v30);
  v32 = OBJC_IVAR____TtC5Books25BuyButtonUIViewController_cancellables;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AE3D08);
  v33 = v70;
  sub_10079B974();
  swift_endAccess();
  v34 = sub_1007A2D74();
  v120 = v34;
  v27(v18, 1, 1, v116);
  sub_100005920(&qword_100AE5E00, &qword_100AE5DD0);
  v35 = v71;
  v36 = v72;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0);

  (*(v73 + 8))(v33, v36);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&qword_100AE5E08, &qword_100AE5DD8);
  v37 = v74;
  sub_10079BB04();

  (*(v75 + 8))(v35, v37);
  v109 = v32;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD50E0);
  v38 = v77;
  sub_10079B974();
  swift_endAccess();
  v39 = sub_1007A2D74();
  v120 = v39;
  v40 = v116;
  v113(v18, 1, 1, v116);
  sub_100005920(&qword_100AD82D0, &unk_100AE1530);
  v41 = v78;
  v42 = v82;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0);

  (*(v84 + 8))(v38, v42);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&qword_100AD82D8, &qword_100AD8200);
  v43 = v88;
  sub_10079BB04();

  (*(v89 + 8))(v41, v43);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD5110);
  v44 = v91;
  sub_10079B974();
  swift_endAccess();
  v45 = sub_1007A2D74();
  v120 = v45;
  v46 = v40;
  v47 = v113;
  v113(v18, 1, 1, v46);
  sub_100005920(&unk_100ADF110, &qword_100AD8228);
  v48 = v92;
  v49 = v93;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0);

  (*(v94 + 8))(v44, v49);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&unk_100AD82A0, &qword_100AD8230);
  v50 = v95;
  sub_10079BB04();

  (*(v96 + 8))(v48, v50);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v51 = v79;
  sub_10079B974();
  swift_endAccess();
  v52 = sub_1007A2D74();
  v120 = v52;
  v53 = v116;
  v47(v18, 1, 1, v116);
  v54 = v47;
  v55 = v76;
  v56 = v80;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0);

  v86(v51, v56);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v57 = v110;
  sub_10079BB04();

  v81(v55, v57);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100ADF120);
  v58 = v97;
  sub_10079B974();
  swift_endAccess();
  v59 = sub_1007A2D74();
  v120 = v59;
  v54(v18, 1, 1, v53);
  sub_100005920(&unk_100AD8320, &qword_100AD81B0);
  v60 = v98;
  v61 = v99;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0);

  (*(v100 + 8))(v58, v61);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&qword_100AE1568, &qword_100AE1558);
  v62 = v101;
  sub_10079BB04();

  (*(v102 + 8))(v60, v62);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AE5E10);
  v63 = v103;
  sub_10079B974();
  swift_endAccess();
  v64 = sub_1007A2D74();
  v120 = v64;
  v113(v18, 1, 1, v116);
  sub_100005920(&qword_100AE5E18, &qword_100AE5DC0);
  v65 = v104;
  v66 = v105;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0);

  (*(v106 + 8))(v63, v66);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&qword_100AE5E20, &qword_100AE5DC8);
  v67 = v107;
  sub_10079BB04();

  (*(v108 + 8))(v65, v67);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

id sub_10049D95C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuyButtonUIViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10049DA20(double *a1)
{
  v1 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong view];

  if (v5)
  {
    type metadata accessor for BuyButtonUIView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      *&v4 = v1;
      [*(v3 + OBJC_IVAR____TtC5Books15BuyButtonUIView_radialProgress) setProgress:v4];
    }
  }
}

void sub_10049DAE0(unsigned __int8 *a1)
{
  v1 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = [Strong view];

  if (v7)
  {
    type metadata accessor for BuyButtonUIView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_unknownObjectUnownedLoadStrong();
      if (v1)
      {
        v6 = [v4 isUserInteractionEnabled];
      }

      else
      {
        v6 = 0;
      }

      v5[OBJC_IVAR____TtC5Books25BuyButtonUIViewController_buttonEnabled] = v6;

      [*&v4[OBJC_IVAR____TtC5Books15BuyButtonUIView_button] setUserInteractionEnabled:v1];
    }
  }
}

void sub_10049DBE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong view];

  if (v3)
  {
    type metadata accessor for BuyButtonUIView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      if (v1)
      {
        v6 = objc_opt_self();
        v7 = sub_1007A2214();
        v14 = [v6 __systemImageNamedSwift:v7];

        v8 = v14;
      }

      else
      {
        v8 = 0;
      }

      v15 = v8;
      [*(v5 + OBJC_IVAR____TtC5Books15BuyButtonUIView_button) setImage:? forState:?];
      v10 = swift_unknownObjectUnownedLoadStrong();
      v11 = [v10 parentViewController];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 view];

        if (!v13)
        {
          __break(1u);
          return;
        }

        [v13 setNeedsLayout];
      }

      v9 = v15;
    }

    else
    {
      v9 = v3;
    }
  }
}

void sub_10049DD80()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong view];

  if (v3)
  {
    type metadata accessor for BuyButtonUIView();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *(v1 + OBJC_IVAR____TtC5Books15BuyButtonUIView_button);

      sub_10000A7C4(0, &qword_100AEEF60);

      v3 = sub_1007A3144();
      [v2 setTitleColor:? forState:?];
    }
  }
}

void sub_10049DE90()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = [Strong view];

  if (v15)
  {
    type metadata accessor for BuyButtonUIView();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = v1;
      sub_1001F1160(&qword_100AE5E28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080B690;
      *(inited + 32) = NSFontAttributeName;
      v4 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      v5 = NSFontAttributeName;
      *(inited + 40) = sub_10069D3B8(UIFontTextStyleCallout, v4);
      v6 = sub_1001EEC00(inited);
      swift_setDeallocating();
      sub_100007840(inited + 32, &qword_100AE5E30);

      sub_10058190C(v6);

      v7 = objc_allocWithZone(NSAttributedString);
      v8 = sub_1007A2214();

      type metadata accessor for Key(0);
      sub_100282B6C();
      isa = sub_1007A2024().super.isa;

      v10 = [v7 initWithString:v8 attributes:isa];

      [*(v2 + OBJC_IVAR____TtC5Books15BuyButtonUIView_button) setAttributedTitle:v10 forState:0];
      v11 = swift_unknownObjectUnownedLoadStrong();
      v12 = [v11 parentViewController];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 view];

        if (!v14)
        {
          __break(1u);
          return;
        }

        [v14 setNeedsLayout];
      }
    }

    else
    {
    }
  }
}

void sub_10049E14C(unsigned __int8 *a1)
{
  v1 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong view];

  if (v14)
  {
    type metadata accessor for BuyButtonUIView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      if (v1)
      {
        v4 = 0.0;
      }

      else
      {
        v4 = 1.0;
      }

      v5 = v3;
      [*(v3 + OBJC_IVAR____TtC5Books15BuyButtonUIView_button) setAlpha:v4];
      v6 = OBJC_IVAR____TtC5Books15BuyButtonUIView_radialProgress;
      v7 = v1 != 2;
      if (v1 == 2)
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.0;
      }

      [*(v5 + OBJC_IVAR____TtC5Books15BuyButtonUIView_radialProgress) setAlpha:v8];
      [*(v5 + v6) setIsAccessibilityElement:v1 != 2];
      v9 = *(v5 + OBJC_IVAR____TtC5Books15BuyButtonUIView_spinner);
      v10 = v9;
      if (v1 == 1)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      if (v1 == 1)
      {
        v12 = &selRef_startAnimating;
      }

      else
      {
        v12 = &selRef_stopAnimating;
      }

      [v9 setAlpha:v11];
      [v10 setIsAccessibilityElement:v7];
      [v10 *v12];

      v13 = v10;
    }

    else
    {
      v13 = v14;
    }
  }
}

uint64_t sub_10049E2D8()
{
  sub_10049E410(v0 + OBJC_IVAR____TtC5Books25BuyButtonUIViewController_eventHandler, v3);
  if (!v4)
  {
    return sub_100007840(v3, &qword_100AE5DB8);
  }

  sub_100009864(v3, v2);
  sub_100007840(v3, &qword_100AE5DB8);
  sub_10000E3E8(v2, v2[3]);
  swift_unknownObjectRetain();
  sub_1005354F4();
  swift_unknownObjectRelease();
  return sub_1000074E0(v2);
}

uint64_t sub_10049E410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE5DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049E4E8()
{
  v89 = sub_100796CF4();
  v0 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v87 = &v71 - v3;
  v86 = sub_1007A21D4();
  v4 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v71 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = *&v101[0];
  v9 = *(*&v101[0] + 16);
  if (v9)
  {
    v10 = 0;
    v83 = (v4 + 16);
    v82 = (v0 + 16);
    v81 = (v0 + 8);
    v80 = (v4 + 8);
    v11 = *&v101[0] + 32;
    v91 = v9 - 1;
    v79 = xmmword_100811390;
    v12 = _swiftEmptyArrayStorage;
    v93 = *&v101[0];
    v92 = *&v101[0] + 32;
    do
    {
      v13 = *(result + 16);
      v14 = v11 + 72 * v10;
      v15 = v10;
      while (1)
      {
        if (v15 >= v13)
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v16 = *(v14 + 16);
        v17 = *(v14 + 32);
        v18 = *(v14 + 48);
        *&v102[15] = *(v14 + 63);
        v19 = *v14;
        v101[2] = v17;
        *v102 = v18;
        v101[0] = v19;
        v101[1] = v16;
        if (v102[18] >> 6 == 1)
        {
          v94 = v12;
          sub_1001F1160(&unk_100AD8160);
          v78 = swift_allocObject();
          *(v78 + 16) = v79;
          v90 = sub_10000A7C4(0, &qword_100AECAB0);

          v42 = v84;
          sub_1007A2154();
          v43 = v87;
          sub_100796C94();
          v44 = v86;
          (*v83)(v85, v42, v86);
          type metadata accessor for BundleFinder();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v46 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
          v47 = v89;
          (*v82)(v88, v43, v89);
          v48 = v78;
          sub_1007A22D4();
          (*v81)(v43, v47);
          (*v80)(v42, v44);
          swift_bridgeObjectRelease_n();
          v97 = 0u;
          v98 = 0u;
          v48[4] = sub_1007A3414();
          sub_10049F8FC(v101);
          goto LABEL_41;
        }

        if (!(v102[18] >> 6))
        {
          break;
        }

        ++v15;
        v14 += 72;
        if (v9 == v15)
        {
          goto LABEL_48;
        }
      }

      v94 = v12;
      v20 = *(&v101[0] + 1);
      v21 = *(*(&v101[0] + 1) + 16);

      v22 = 0;
      v23 = _swiftEmptyArrayStorage;
LABEL_10:
      v24 = v20 + 72 * v22;
      while (v21 != v22)
      {
        if (v22 >= *(v20 + 16))
        {
          goto LABEL_50;
        }

        ++v22;
        v25 = (v24 + 72);
        v26 = *(v24 + 96) | (*(v24 + 98) << 16);
        v24 += 72;
        if ((v26 & 0xC00000) == 0x800000)
        {
          v27 = *(v25 - 5);
          v28 = *(v25 - 4);
          v29 = *(v25 - 3);
          v30 = *(v25 - 2);
          v31 = *(v25 - 1);
          v32 = *v25;
          v34 = v25[1];
          v33 = v25[2];
          v90 = v27;
          *&v97 = v27;
          *(&v97 + 1) = v28;
          v78 = v28;
          v77 = v29;
          *&v98 = v29;
          *(&v98 + 1) = v30;
          v76 = v30;
          v75 = v31;
          *&v99 = v31;
          *(&v99 + 1) = v32;
          v74 = v32;
          v73 = v34;
          *v100 = v34;
          *&v100[8] = v33;
          v72 = v33;
          v100[18] = BYTE2(v26) & 0x3F;
          *&v100[16] = v26;
          sub_10049F950(&v97, v96);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10066BE14(0, *(v23 + 2) + 1, 1, v23);
            v23 = result;
          }

          v36 = *(v23 + 2);
          v35 = *(v23 + 3);
          if (v36 >= v35 >> 1)
          {
            result = sub_10066BE14((v35 > 1), v36 + 1, 1, v23);
            v23 = result;
          }

          *(v23 + 2) = v36 + 1;
          v37 = &v23[72 * v36];
          v38 = v78;
          *(v37 + 4) = v90;
          *(v37 + 5) = v38;
          v39 = v76;
          *(v37 + 6) = v77;
          *(v37 + 7) = v39;
          v40 = v74;
          *(v37 + 8) = v75;
          *(v37 + 9) = v40;
          v41 = v72;
          *(v37 + 10) = v73;
          *(v37 + 11) = v41;
          v37[98] = (v26 & 0x3FFFFFu) >> 16;
          *(v37 + 48) = v26;
          goto LABEL_10;
        }
      }

      v49 = *(v23 + 2);
      if (v49)
      {
        v50 = 0;
        v51 = v23 + 32;
        v78 = v49 - 1;
        v52 = _swiftEmptyArrayStorage;
LABEL_22:
        v90 = v52;
        v53 = &v51[9 * v50];
        v54 = v50;
        while (v54 < *(v23 + 2))
        {
          v97 = *v53;
          v56 = *(v53 + 1);
          v57 = *(v53 + 2);
          v58 = *(v53 + 3);
          *&v100[15] = *(v53 + 63);
          v99 = v57;
          *v100 = v58;
          v98 = v56;
          result = v97;
          if (v97 != __PAIR128__(0xED00006E6F697463, 0x656C6C6F4377656ELL))
          {
            v55 = v51;
            result = sub_1007A3AB4();
            v51 = v55;
            if ((result & 1) == 0)
            {
              sub_10049F950(&v97, v96);
              v52 = v90;
              result = swift_isUniquelyReferenced_nonNull_native();
              v95 = v52;
              if ((result & 1) == 0)
              {
                result = sub_1003BD728(0, v52[2] + 1, 1);
                v52 = v95;
              }

              v60 = v52[2];
              v59 = v52[3];
              if (v60 >= v59 >> 1)
              {
                result = sub_1003BD728((v59 > 1), v60 + 1, 1);
                v52 = v95;
              }

              v50 = v54 + 1;
              v52[2] = v60 + 1;
              v61 = &v52[9 * v60];
              *(v61 + 2) = v97;
              v62 = v98;
              v63 = v99;
              v64 = *v100;
              *(v61 + 95) = *&v100[15];
              *(v61 + 4) = v63;
              *(v61 + 5) = v64;
              *(v61 + 3) = v62;
              v51 = v55;
              if (v78 != v54)
              {
                goto LABEL_22;
              }

              goto LABEL_36;
            }
          }

          ++v54;
          v53 += 9;
          if (v49 == v54)
          {
            v52 = v90;
            goto LABEL_36;
          }
        }

LABEL_51:
        __break(1u);
        return result;
      }

      v52 = _swiftEmptyArrayStorage;
LABEL_36:

      v65 = v52[2];
      if (v65)
      {
        v96[0] = _swiftEmptyArrayStorage;
        sub_1007A37F4();
        sub_10000A7C4(0, &qword_100AECAB0);
        v90 = v52;
        v66 = v52 + 7;
        do
        {
          v68 = *(v66 - 3);
          v67 = *(v66 - 2);
          *(&v98 + 1) = &type metadata for String;
          *&v97 = v68;
          *(&v97 + 1) = v67;

          sub_1007A3414();
          sub_1007A37D4();
          sub_1007A3804();
          sub_1007A3814();
          sub_1007A37E4();
          v66 += 9;
          --v65;
        }

        while (v65);

        sub_10049F8FC(v101);
        v48 = v96[0];
      }

      else
      {

        sub_10049F8FC(v101);
        v48 = _swiftEmptyArrayStorage;
      }

LABEL_41:
      v12 = v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_10066BDF0(0, v12[2] + 1, 1, v12);
      }

      v70 = v12[2];
      v69 = v12[3];
      if (v70 >= v69 >> 1)
      {
        v12 = sub_10066BDF0((v69 > 1), v70 + 1, 1, v12);
      }

      v10 = v15 + 1;
      v12[2] = v70 + 1;
      v12[v70 + 4] = v48;
      result = v93;
      v11 = v92;
    }

    while (v91 != v15);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

LABEL_48:

  return v12;
}

void *sub_10049EF10(uint64_t a1, uint64_t a2)
{
  v3 = sub_10049E4E8();
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1007A37F4();
    sub_10000A7C4(0, &qword_100AECAB0);
    v5 = a2 + 56;
    do
    {

      v13._rawValue = 0;
      sub_1007A3414();
      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      v5 += 32;
      --v4;
    }

    while (v4);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10066BDF0(0, v3[2] + 1, 1, v3);
  }

  v7 = v3[2];
  v6 = v3[3];
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    v3 = sub_10066BDF0((v6 > 1), v7 + 1, 1, v3);
  }

  v3[2] = v8;
  v3[v7 + 4] = _swiftEmptyArrayStorage;
  sub_1007A37F4();
  sub_10000A7C4(0, &qword_100AD8170);
  v9 = 32;
  do
  {

    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v16.value._countAndFlagsBits = 0;
    v16.value._object = 0;
    v14.value.super.isa = 0;
    v14.is_nil = 0;
    v10.value = 1;
    sub_1007A30C4(v15, v16, v14, v10, 0xFFFFFFFFFFFFFFFFLL, v12, v13);
    sub_1007A37D4();
    sub_1007A3804();
    sub_1007A3814();
    sub_1007A37E4();
    v9 += 8;
    --v8;
  }

  while (v8);

  return _swiftEmptyArrayStorage;
}

void sub_10049F170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000A7C4(0, &qword_100AD8170);
  sub_1001F1160(&unk_100AD8160);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10081F7C0;
  sub_10000A7C4(0, &qword_100ADA970);
  *(v5 + 32) = sub_1007A2964();
  sub_10000A7C4(0, &qword_100AECAB0);
  *(v5 + 40) = sub_1007A3414();
  *(v5 + 48) = sub_1007A3414();
  *(v5 + 56) = sub_1007A2964();
  *(v5 + 64) = sub_1007A3414();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100811370;
  *(v6 + 32) = sub_1007A3414();
  *(v6 + 40) = sub_1007A3414();
  *(v6 + 48) = sub_1007A3414();
  v34._countAndFlagsBits = 0xD000000000000023;
  v34._object = 0x80000001008D79F0;
  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v28.value.super.isa = 0;
  v28.is_nil = 0;
  v7.value = 0;
  *(v5 + 72) = sub_1007A30C4(v34, v40, v28, v7, 0xFFFFFFFFFFFFFFFFLL, v6, 0);
  *(v5 + 80) = sub_1007A3414();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100811390;
  v19 = sub_10049EF10(a2, a3);
  v35._countAndFlagsBits = 0xD000000000000019;
  v35._object = 0x80000001008D7A60;
  v41.value._countAndFlagsBits = 0;
  v41.value._object = 0;
  v29.value.super.isa = 0;
  v29.is_nil = 0;
  v9.value = 0;
  *(v8 + 32) = sub_1007A30C4(v35, v41, v29, v9, 0xFFFFFFFFFFFFFFFFLL, v19, 0);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v42.value._countAndFlagsBits = 0;
  v42.value._object = 0;
  v30.value.super.isa = 0;
  v30.is_nil = 0;
  v10.value = 1;
  *(v5 + 88) = sub_1007A30C4(v36, v42, v30, v10, 0xFFFFFFFFFFFFFFFFLL, v8, v20);
  v11 = *(a4 + 16);
  if (v11)
  {
    sub_1007A37F4();
    v12 = (a4 + 40);
    do
    {
      v13 = *v12;
      v12 += 2;
      if (v13)
      {
        swift_bridgeObjectRetain_n();
        v21.super.super.isa = 0;
        sub_1007A3414();
      }

      else
      {
        sub_10000A7C4(0, &qword_100AD8390);
        v21.super.super.isa = 1;
        sub_1007A31D4();
      }

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      --v11;
    }

    while (v11);
    v14 = a1;
  }

  else
  {
    v14 = a1;
  }

  v37._object = 0x80000001008D7AA0;
  v37._countAndFlagsBits = 0xD000000000000012;
  v43.value._countAndFlagsBits = 0;
  v43.value._object = 0;
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  v15.value = 0;
  *(v5 + 96) = sub_1007A30C4(v37, v43, v31, v15, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v21.super.super.isa);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100811390;
  *(v16 + 32) = sub_1007A3414();
  v38._countAndFlagsBits = 5525584;
  v38._object = 0xE300000000000000;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  v17.value = 0;
  *(v5 + 104) = sub_1007A30C4(v38, v44, v32, v17, 0xFFFFFFFFFFFFFFFFLL, v16, 0);
  v39._countAndFlagsBits = 0x6C616E7265746E49;
  v39._object = 0xE800000000000000;
  v45.value._countAndFlagsBits = 0;
  v45.value._object = 0;
  v33.value.super.isa = 0;
  v33.is_nil = 0;
  v18.value = 0;
  isa = sub_1007A30C4(v39, v45, v33, v18, 0xFFFFFFFFFFFFFFFFLL, v5, v22).super.super.isa;
  [v14 insertSiblingMenu:isa afterMenuForIdentifier:UIMenuHelp];
}

void sub_10049F9E4(double a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = [*(v3 + 16) allObjects];
  sub_1001F1160(&qword_100AE1B70);
  v5 = sub_1007A25E4();

  os_unfair_lock_unlock((v3 + 24));
  if (v5 >> 62)
  {
    v6 = sub_1007A38D4();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_1007A3784();
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v8 audiobookBuyButtonProgressDidChangeTo:a1];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

void sub_10049FB1C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = [*(v3 + 16) allObjects];
  sub_1001F1160(&qword_100AE1B70);
  v5 = sub_1007A25E4();

  os_unfair_lock_unlock((v3 + 24));
  if (v5 >> 62)
  {
    v6 = sub_1007A38D4();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_1007A3784();
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v8 audiobookCoverWillChangeTo:a1];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

void sub_10049FC6C(char a1, SEL *a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  v6 = [*(v5 + 16) allObjects];
  sub_1001F1160(&qword_100AE1B70);
  v7 = sub_1007A25E4();

  os_unfair_lock_unlock((v5 + 24));
  if (v7 >> 62)
  {
    v8 = sub_1007A38D4();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_1007A3784();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v10 *a2];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

void sub_10049FDA4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  os_unfair_lock_lock((v4 + 24));
  v5 = [*(v4 + 16) allObjects];
  sub_1001F1160(&qword_100AE1B70);
  v6 = sub_1007A25E4();

  os_unfair_lock_unlock((v4 + 24));
  if (v6 >> 62)
  {
    v7 = sub_1007A38D4();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_1007A3784();
        if (!a2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        if (!a2)
        {
LABEL_11:
          v9 = 0;
          goto LABEL_6;
        }
      }

      v9 = sub_1007A2214();
LABEL_6:
      ++v8;
      [v10 audiobookStoreIDDidChangeTo:v9];
      swift_unknownObjectRelease();

      if (v7 == v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

uint64_t _s5Books26UserCollectionReorderEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v17 = *(a1 + i + 64);
      v6 = *(a1 + i + 72);
      v7 = *(a2 + i + 48);
      v8 = *(a2 + i + 56);
      v20 = *(a2 + i + 64);
      v9 = *(a2 + i + 72);
      v10 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v10 && (sub_1007A3AB4() & 1) == 0)
      {
        return 0;
      }

      v11 = v4 == v7 && v5 == v8;
      if (!v11 && (sub_1007A3AB4() & 1) == 0)
      {
        return 0;
      }

      if (v6 == 253)
      {
        if (v9 != 253)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v6 == 254)
      {
        break;
      }

      if (v6 == 255)
      {
        if (v9 != 255)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v9 > 0xFC)
      {
        return 0;
      }

      if (v6)
      {
        if ((v9 & 1) == 0)
        {
          return 0;
        }

        v12 = v20;
        sub_1004A30D0(v20, v9);

        v13 = v17;
        sub_1004A30D0(v17, v6);
        v14 = sub_1004A03D0(v17, v20);
      }

      else
      {
        if (v9)
        {
          return 0;
        }

        v12 = v20;
        sub_1004A30D0(v20, v9);

        v13 = v17;
        sub_1004A30D0(v17, v6);
        v14 = sub_1004A0190(v17, v20);
      }

      v16 = v14;

      sub_1004A3B7C(v12, v9);

      sub_1004A3B7C(v13, v6);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      if (!--v2)
      {
        return 1;
      }
    }

    if (v9 != 254)
    {
      return 0;
    }

LABEL_6:
    sub_1004A30D0(v20, v6);
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1004A0190(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_10079E794();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_1007A3784();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_1007A3784();
LABEL_26:
        v17 = v16;
        v18 = sub_1007A3184();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1007A3184();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1007A38D4();
  }

  result = sub_1007A38D4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1004A03D0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_10000A7C4(0, &unk_100AE8D70);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_1007A3784();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_1007A3784();
LABEL_26:
        v17 = v16;
        v18 = sub_1007A3184();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1007A3184();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1007A38D4();
  }

  result = sub_1007A38D4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_1004A0620(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
      goto LABEL_149;
    }

    v6 = v4 + 24 * v3;
    v7 = *v6;
    v8 = *(v6 + 16);
    v9 = v5 + 24 * v3;
    v10 = *v9;
    v81 = *(v9 + 8);
    v82 = *(v6 + 8);
    v11 = *(v9 + 16);
    if (v8 <= 2)
    {
      if (*(v6 + 16))
      {
        if (v8 == 1)
        {
          if (v11 != 1)
          {
            return;
          }

          sub_10000A7C4(0, &qword_100ADAF70);
          sub_1004A38E8(v10, v81, 1u);
          sub_1004A38E8(v7, v82, 1u);
          v12 = sub_1007A3184();
          sub_1004A392C(v10, v81, 1u);
          v13 = v7;
          v14 = v82;
          v15 = 1;
        }

        else
        {
          if (v11 != 2)
          {
            return;
          }

          sub_10000A7C4(0, &qword_100ADAF70);
          sub_1004A38E8(v10, v81, 2u);
          sub_1004A38E8(v7, v82, 2u);
          v12 = sub_1007A3184();
          sub_1004A392C(v10, v81, 2u);
          v13 = v7;
          v14 = v82;
          v15 = 2;
        }

        sub_1004A392C(v13, v14, v15);
        if ((v12 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v11)
        {
          return;
        }

        v41 = v7 == v10 && v82 == v81;
        if (!v41 && (sub_1007A3AB4() & 1) == 0)
        {
          return;
        }
      }

      goto LABEL_6;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {
      if (v11 != 4)
      {
        return;
      }

      v16 = *(v7 + 16);
      if (v16 != *(v10 + 16))
      {
        return;
      }

      if (v16)
      {
        v17 = v7 == v10;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        goto LABEL_6;
      }

      v18 = v10 + 32;
      sub_1004A38E8(v10, v81, 4u);
      sub_1004A38E8(v7, v82, 4u);
      v19 = v7 + 32;
      v20 = 0;
      v77 = v5;
      v79 = v4;
      v73 = v16;
      while (v20 < *(v7 + 16))
      {
        v75 = v19;
        sub_1003DEBC4(v19, &v97);
        if (v20 >= *(v10 + 16))
        {
          goto LABEL_152;
        }

        sub_1003DEBC4(v18, &v83);
        if (v97 != v83 || v98 != v84 || v99 != v85 || v100 != v86 || v101 != v87 || v102 != v88)
        {
          goto LABEL_145;
        }

        if (v103)
        {
          if (v103 != v89)
          {
            goto LABEL_145;
          }
        }

        else if (v89)
        {
          goto LABEL_145;
        }

        if (v104)
        {
          if (!v90 || (sub_100796E94() & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else if (v90)
        {
          goto LABEL_145;
        }

        if (v106)
        {
          if (!v92 || (v105 != v91 || v106 != v92) && (sub_1007A3AB4() & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else if (v92)
        {
          goto LABEL_145;
        }

        v21 = v107;
        v22 = v93;
        if (v107)
        {
          if (!v93)
          {
            goto LABEL_145;
          }

          sub_10000A7C4(0, &unk_100AE1400);
          v23 = v22;
          v24 = v21;
          v25 = sub_1007A3184();

          if ((v25 & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else if (v93)
        {
          goto LABEL_145;
        }

        v26 = v108;
        v27 = v94;
        if (v108)
        {
          if (!v94)
          {
            goto LABEL_145;
          }

          sub_10000A7C4(0, &qword_100ADDB48);
          v28 = v27;
          v29 = v26;
          v30 = sub_1007A3184();

          if ((v30 & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else if (v94)
        {
          goto LABEL_145;
        }

        v31 = v109;
        v32 = v95;
        if (v109)
        {
          if (!v95)
          {
            goto LABEL_145;
          }

          sub_10000A7C4(0, &qword_100AD8170);
          v33 = v32;
          v34 = v31;
          v35 = sub_1007A3184();

          if ((v35 & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else if (v95)
        {
          goto LABEL_145;
        }

        v36 = v110;
        v37 = v96;
        v38 = v96 == 0;
        if (v110)
        {
          if (!v96)
          {
            goto LABEL_145;
          }

          sub_10000A7C4(0, &qword_100AE13F8);
          v39 = v37;
          v40 = v36;
          v38 = sub_1007A3184();
        }

        sub_1003DEBFC(&v83);
        sub_1003DEBFC(&v97);
        v5 = v77;
        v4 = v79;
        if ((v38 & 1) == 0)
        {
          goto LABEL_146;
        }

        ++v20;
        v19 = v75 + 120;
        v18 += 120;
        if (v73 == v20)
        {
          goto LABEL_125;
        }
      }

LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v7 | v82)
    {
      if (v7 ^ 1 | v82)
      {
        if (v11 != 5)
        {
          return;
        }

        v69 = v10 == 2;
      }

      else
      {
        if (v11 != 5)
        {
          return;
        }

        v69 = v10 == 1;
      }

      if (!v69 || v81 != 0)
      {
        return;
      }
    }

    else if (v11 != 5 || (v81 | v10) != 0)
    {
      return;
    }

LABEL_6:
    if (++v3 == v2)
    {
      return;
    }
  }

  if (v11 != 3)
  {
    return;
  }

  v42 = *(v7 + 16);
  if (v42 != *(v10 + 16))
  {
    return;
  }

  if (v42)
  {
    v43 = v7 == v10;
  }

  else
  {
    v43 = 1;
  }

  if (v43)
  {
    goto LABEL_6;
  }

  v44 = (v10 + 32);
  sub_1004A38E8(v10, v81, 3u);
  sub_1004A38E8(v7, v82, 3u);
  v45 = v7 + 32;
  v46 = 0;
  v78 = v5;
  v80 = v4;
  v72 = v42;
  while (v46 < *(v7 + 16))
  {
    v47 = v44;
    v48 = v46;
    v76 = v45;
    sub_1003DEBC4(v45, &v97);
    v74 = v48;
    if (v48 >= *(v10 + 16))
    {
      goto LABEL_151;
    }

    sub_1003DEBC4(v47, &v83);
    if (v97 != v83 || v98 != v84 || v99 != v85 || v100 != v86 || v101 != v87 || v102 != v88)
    {
LABEL_145:
      sub_1003DEBFC(&v83);
      sub_1003DEBFC(&v97);
LABEL_146:
      sub_1004A392C(v10, v81, v8);
      sub_1004A392C(v7, v82, v8);
      return;
    }

    if (v103)
    {
      if (v103 != v89)
      {
        goto LABEL_145;
      }
    }

    else if (v89)
    {
      goto LABEL_145;
    }

    if (v104)
    {
      if (!v90 || (sub_100796E94() & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (v90)
    {
      goto LABEL_145;
    }

    if (v106)
    {
      if (!v92 || (v105 != v91 || v106 != v92) && (sub_1007A3AB4() & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (v92)
    {
      goto LABEL_145;
    }

    v49 = v107;
    v50 = v93;
    if (v107)
    {
      if (!v93)
      {
        goto LABEL_145;
      }

      sub_10000A7C4(0, &unk_100AE1400);
      v51 = v50;
      v52 = v49;
      v53 = sub_1007A3184();

      if ((v53 & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (v93)
    {
      goto LABEL_145;
    }

    v54 = v108;
    v55 = v94;
    if (v108)
    {
      if (!v94)
      {
        goto LABEL_145;
      }

      sub_10000A7C4(0, &qword_100ADDB48);
      v56 = v55;
      v57 = v54;
      v58 = sub_1007A3184();

      if ((v58 & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (v94)
    {
      goto LABEL_145;
    }

    v59 = v109;
    v60 = v95;
    if (v109)
    {
      if (!v95)
      {
        goto LABEL_145;
      }

      sub_10000A7C4(0, &qword_100AD8170);
      v61 = v60;
      v62 = v59;
      v63 = sub_1007A3184();

      if ((v63 & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (v95)
    {
      goto LABEL_145;
    }

    v64 = v110;
    v65 = v96;
    v66 = v96 == 0;
    if (v110)
    {
      if (!v96)
      {
        goto LABEL_145;
      }

      sub_10000A7C4(0, &qword_100AE13F8);
      v67 = v65;
      v68 = v64;
      v66 = sub_1007A3184();
    }

    sub_1003DEBFC(&v83);
    sub_1003DEBFC(&v97);
    v5 = v78;
    v4 = v80;
    if ((v66 & 1) == 0)
    {
      goto LABEL_146;
    }

    v46 = v48 + 1;
    v45 = v76 + 120;
    v44 = (v47 + 120);
    if (v72 == v74 + 1)
    {
LABEL_125:
      sub_1004A392C(v10, v81, v8);
      sub_1004A392C(v7, v82, v8);
      goto LABEL_6;
    }
  }

LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

BOOL sub_1004A0F04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_1003DEBC4(v3, v8);
        sub_1003DEBC4(v4, v7);
        v5 = sub_1003DE754(v8, v7);
        sub_1003DEBFC(v7);
        sub_1003DEBFC(v8);
        if (!v5)
        {
          break;
        }

        v3 += 120;
        v4 += 120;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_1004A0FCC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1070(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1007A38D4();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = sub_10079B884();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_1007A38D4();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_1007A3784();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          sub_1007A3784();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_1004A3B34(&qword_100AD3710, &type metadata accessor for AnyCancellable);
      v15 = sub_1007A2124();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1284(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1007A3AB4() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1007A3AB4() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1004A139C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    sub_1004A3B34(v32, v33);
    v26 = sub_1007A2124();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t static SidebarItemEvent.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a6 != a3)
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  v9 = sub_1007A3AB4();
  result = 0;
  if ((v9 & 1) != 0 && a6 == a3)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

void SidebarItemEvent.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14(a4);
  sub_1007A3C24(HIBYTE(a4) & 1);
}

Swift::Int SidebarItemEvent.hashValue.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14(a3);
  sub_1007A3C24(HIBYTE(a3) & 1);
  return sub_1007A3C44();
}

Swift::Int sub_1004A1704()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14(v1);
  sub_1007A3C24(v2);
  return sub_1007A3C44();
}

void sub_1004A1780()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14(v1);
  sub_1007A3C24(v2);
}

Swift::Int sub_1004A17CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14(v1);
  sub_1007A3C24(v2);
  return sub_1007A3C44();
}

uint64_t sub_1004A1844(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_1007A3AB4();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

Swift::Int BuyButtonViewState.hashValue.getter(unsigned __int8 a1)
{
  sub_1007A3C04();
  sub_1007A3C14(a1);
  return sub_1007A3C44();
}

void SearchBarEvent.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a3)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_1007A3C14(a4);
}

Swift::Int SearchBarEvent.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1007A3C04();
  if (a2)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_1007A3C14(a3);
  return sub_1007A3C44();
}

Swift::Int sub_1004A1A40()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1007A3C04();
  if (v1)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_1007A3C14(v2);
  return sub_1007A3C44();
}

void sub_1004A1AC0()
{
  v1 = *(v0 + 16);
  if (*(v0 + 8))
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_1007A3C14(v1);
}

Swift::Int sub_1004A1B28()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1007A3C04();
  if (v1)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_1007A3C14(v2);
  return sub_1007A3C44();
}

uint64_t UserCollectionEvent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnnotationProviderService.AnnotationUpgradeEntity.uniqueID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserCollectionEvent.reason.getter()
{
  v1 = *(v0 + 32);
  sub_1004A30D0(v1, *(v0 + 40));
  return v1;
}

uint64_t static UserCollectionEvent.Reason.DragItemType.__derived_enum_equals(_:_:)(unint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return sub_1004A03D0(a1, a3);
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  return sub_1004A0190(a1, a3);
}

Swift::Int UserCollectionEvent.Reason.DragItemType.hashValue.getter(unint64_t a1, char a2)
{
  sub_1007A3C04();
  sub_1007A3C14(a2 & 1);
  sub_1004A2E84(v5, a1);
  return sub_1007A3C44();
}

Swift::Int sub_1004A1D14()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1007A3C04();
  sub_1007A3C14(v2);
  sub_1004A2E84(v4, v1);
  return sub_1007A3C44();
}

void sub_1004A1D74(uint64_t a1)
{
  v3 = *v1;
  sub_1007A3C14(*(v1 + 8));
  sub_1004A2E84(a1, v3);
}

Swift::Int sub_1004A1DB8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1007A3C04();
  sub_1007A3C14(v2);
  sub_1004A2E84(v4, v1);
  return sub_1007A3C44();
}

uint64_t sub_1004A1E14(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_1004A03D0(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_1004A0190(v4, v5);
}

BOOL static UserCollectionEvent.Reason.__derived_enum_equals(_:_:)(unint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  switch(a2)
  {
    case 0xFDu:
      return a4 == 253;
    case 0xFEu:
      return a4 == 254;
    case 0xFFu:
      return a4 == 0xFF;
  }

  if (a4 > 0xFCu)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    return (a4 & 1) == 0 && (sub_1004A0190(a1, a3) & 1) != 0;
  }

  return (a4 & 1) != 0 && (sub_1004A03D0(a1, a3) & 1) != 0;
}

void UserCollectionEvent.Reason.hash(into:)(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  switch(a3)
  {
    case 0xFDu:
      sub_1007A3C14(2uLL);
      break;
    case 0xFEu:
      sub_1007A3C14(1uLL);
      break;
    case 0xFFu:
      sub_1007A3C14(0);
      break;
    default:
      sub_1007A3C14(3uLL);
      sub_1007A3C14((a3 & 1) != 0);
      sub_1004A2E84(a1, a2);
      break;
  }
}

Swift::Int UserCollectionEvent.Reason.hashValue.getter(unint64_t a1, unsigned __int8 a2)
{
  sub_1007A3C04();
  switch(a2)
  {
    case 0xFDu:
      sub_1007A3C14(2uLL);
      break;
    case 0xFEu:
      sub_1007A3C14(1uLL);
      break;
    case 0xFFu:
      sub_1007A3C14(0);
      break;
    default:
      sub_1007A3C14(3uLL);
      sub_1007A3C14((a2 & 1) != 0);
      sub_1004A2E84(v5, a1);
      break;
  }

  return sub_1007A3C44();
}

void sub_1004A2058(uint64_t a1)
{
  v3 = *(v1 + 8);
  switch(v3)
  {
    case 253:
      v4 = 2;
      goto LABEL_7;
    case 254:
      v4 = 1;
      goto LABEL_7;
    case 255:
      v4 = 0;
LABEL_7:
      sub_1007A3C14(v4);
      return;
  }

  v5 = *v1;
  sub_1007A3C14(3uLL);
  sub_1007A3C14((v3 & 1) != 0);
  sub_1004A2E84(a1, v5);
}

Swift::Int sub_1004A20F0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1007A3C04();
  switch(v2)
  {
    case 253:
      sub_1007A3C14(2uLL);
      break;
    case 254:
      sub_1007A3C14(1uLL);
      break;
    case 255:
      sub_1007A3C14(0);
      break;
    default:
      sub_1007A3C14(3uLL);
      sub_1007A3C14((v2 & 1) != 0);
      sub_1004A2E84(v4, v1);
      break;
  }

  return sub_1007A3C44();
}

BOOL sub_1004A21A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  switch(v2)
  {
    case 253:
      return v3 == 253;
    case 254:
      return v3 == 254;
    case 255:
      return v3 == 255;
  }

  if (v3 > 0xFC)
  {
    return 0;
  }

  v5 = *a1;
  v6 = *a2;
  if ((v2 & 1) == 0)
  {
    return (v3 & 1) == 0 && (sub_1004A0190(v5, v6) & 1) != 0;
  }

  return (v3 & 1) != 0 && (sub_1004A03D0(v5, v6) & 1) != 0;
}

void UserCollectionEvent.hash(into:)(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v3 = *(v1 + 40);
  switch(v3)
  {
    case 253:
      v4 = 2;
      goto LABEL_7;
    case 254:
      v4 = 1;
      goto LABEL_7;
    case 255:
      v4 = 0;
LABEL_7:
      sub_1007A3C14(v4);
      return;
  }

  v5 = *(v1 + 32);
  sub_1007A3C14(3uLL);
  sub_1007A3C14((v3 & 1) != 0);
  sub_1004A2E84(a1, v5);
}

Swift::Int UserCollectionEvent.hashValue.getter()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v1 = *(v0 + 40);
  switch(v1)
  {
    case 253:
      v2 = 2;
      break;
    case 254:
      v2 = 1;
      break;
    case 255:
      v2 = 0;
      break;
    default:
      v3 = *(v0 + 32);
      sub_1007A3C14(3uLL);
      sub_1007A3C14((v1 & 1) != 0);
      sub_1004A2E84(v5, v3);
      return sub_1007A3C44();
  }

  sub_1007A3C14(v2);
  return sub_1007A3C44();
}

void sub_1004A23C8(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  switch(v4)
  {
    case 253:
      v5 = 2;
      goto LABEL_7;
    case 254:
      v5 = 1;
      goto LABEL_7;
    case 255:
      v5 = 0;
LABEL_7:
      sub_1007A3C14(v5);
      return;
  }

  sub_1007A3C14(3uLL);
  sub_1007A3C14((v4 & 1) != 0);
  sub_1004A2E84(a1, v3);
}

Swift::Int sub_1004A2484()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  switch(v2)
  {
    case 253:
      sub_1007A3C14(2uLL);
      break;
    case 254:
      sub_1007A3C14(1uLL);
      break;
    case 255:
      sub_1007A3C14(0);
      break;
    default:
      sub_1007A3C14(3uLL);
      sub_1007A3C14((v2 & 1) != 0);
      sub_1004A2E84(v4, v1);
      break;
  }

  return sub_1007A3C44();
}

BOOL sub_1004A256C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s5Books19UserCollectionEventV23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7);
}

Swift::Int UserCollectionReorderEvent.hashValue.getter(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books26UserCollectionReorderEventV4hash4intoys6HasherVz_tF_0(v3, a1);
  return sub_1007A3C44();
}

Swift::Int sub_1004A260C()
{
  v1 = *v0;
  sub_1007A3C04();
  _s5Books26UserCollectionReorderEventV4hash4intoys6HasherVz_tF_0(v3, v1);
  return sub_1007A3C44();
}

Swift::Int sub_1004A265C()
{
  v1 = *v0;
  sub_1007A3C04();
  _s5Books26UserCollectionReorderEventV4hash4intoys6HasherVz_tF_0(v3, v1);
  return sub_1007A3C44();
}

uint64_t sub_1004A26AC@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_1001F1160(&qword_100AE6008);
  __chkstk_darwin(v27);
  v26 = &v19 - v3;
  v4 = sub_1001F1160(&qword_100AE1108);
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v25 = sub_1001F1160(&qword_100AE6010);
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v19 - v7;
  type metadata accessor for SidebarViewModel(0);
  sub_1004A3B34(&unk_100ADE828, type metadata accessor for SidebarViewModel);
  v21 = a1;

  v9 = sub_10079C024();
  v29 = a1;
  v30 = v9;
  v31 = v10;
  v32 = 0;
  sub_10079E414();
  sub_10079C9F4();
  v11 = sub_1001F1160(&qword_100AE6018);
  v20 = sub_1004A3970();
  v35 = &type metadata for Solarium;
  v36 = &protocol witness table for Solarium;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_1004A39C4();
  v13 = v24;
  sub_10079DC64();
  v14 = v13;
  (*(v23 + 8))(v6, v13);

  v15 = v22;
  v16 = v25;
  (*(v22 + 16))(v26, v8, v25);
  swift_storeEnumTagMultiPayload();
  sub_1001F1160(&qword_100AE6030);
  sub_1004A3A50();
  v29 = &type metadata for SidebarCollectionView;
  v30 = v14;
  v31 = v11;
  v32 = v20;
  v33 = OpaqueTypeConformance2;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  sub_10079CCA4();
  return (*(v15 + 8))(v8, v16);
}

uint64_t sub_1004A2A78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = sub_10079C2C4();
  v8 = sub_10079D294();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
}

id sub_1004A2B04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [objc_allocWithZone(_UIScrollPocketContainerInteraction) initWithScrollView:0 edge:v1];
  [v3 _setCollectorInteraction:v2];
  return v3;
}

id sub_1004A2B5C()
{
  v0 = objc_allocWithZone(_UIScrollPocketInteraction);

  return [v0 initWithStyle:0];
}

void _s5Books26UserCollectionReorderEventV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1007A3C14(v3);
  if (!v3)
  {
    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v7 = v5 + 48 * v4;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);

    sub_1004A30D0(v8, v9);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    if (v9 == 253)
    {
      v6 = 2;
      goto LABEL_4;
    }

    if (v9 != 254)
    {
      break;
    }

    v6 = 1;
LABEL_4:
    sub_1007A3C14(v6);

LABEL_5:
    if (++v4 == v3)
    {
      return;
    }
  }

  if (v9 == 255)
  {
    v6 = 0;
    goto LABEL_4;
  }

  sub_1007A3C14(3uLL);
  if (v9)
  {
    sub_1007A3C14(1uLL);
    if (v8 >> 62)
    {
      v20 = sub_1007A38D4();
      sub_1007A3C14(v20);
      v10 = sub_1007A38D4();
      if (!v10)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_1007A3C14(*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_35;
      }
    }

    if (v10 < 1)
    {
      goto LABEL_38;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        sub_1007A3784();
        sub_1007A3194();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v14 = (v8 + 32);
      do
      {
        v15 = *v14++;
        v16 = v15;
        sub_1007A3194();

        --v10;
      }

      while (v10);
    }

    goto LABEL_31;
  }

  sub_1007A3C14(0);
  if (v8 >> 62)
  {
    v21 = sub_1007A38D4();
    sub_1007A3C14(v21);
    v12 = sub_1007A38D4();
    if (!v12)
    {
LABEL_35:

      sub_1004A3B7C(v8, v9);
      goto LABEL_5;
    }
  }

  else
  {
    sub_1007A3C14(*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_35;
    }
  }

  if (v12 >= 1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v12; ++j)
      {
        sub_1007A3784();
        sub_1007A3194();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v17 = (v8 + 32);
      do
      {
        v18 = *v17++;
        v19 = v18;
        sub_1007A3194();

        --v12;
      }

      while (v12);
    }

LABEL_31:

    sub_1004A3B7C(v8, v9);
    v5 = a2 + 32;
    goto LABEL_5;
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_1004A2E84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1007A38D4();
    sub_1007A3C14(v8);
    v3 = sub_1007A38D4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    sub_1007A3C14(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      sub_1007A3784();
      sub_1007A3194();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1007A3194();

      --v3;
    }

    while (v3);
  }
}

BOOL _s5Books14SearchBarEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2)
  {
    if (a5)
    {
      if (a1 == a4 && a2 == a5)
      {
        return a3 == a6;
      }

      v6 = a3;
      v7 = a6;
      v8 = sub_1007A3AB4();
      a3 = v6;
      a6 = v7;
      if (v8)
      {
        return a3 == a6;
      }
    }
  }

  else if (!a5)
  {
    return a3 == a6;
  }

  return 0;
}

BOOL _s5Books19UserCollectionEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1007A3AB4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1007A3AB4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  switch(v6)
  {
    case 253:
      return v7 == 253;
    case 254:
      return v7 == 254;
    case 255:
      if (v7 == 255)
      {
        return 1;
      }

      break;
    default:
      if (v7 <= 0xFC)
      {
        v9 = *(a1 + 32);
        v10 = *(a2 + 32);
        if (v6)
        {
          if (v7 & 1) != 0 && (sub_1004A03D0(v9, v10))
          {
            return 1;
          }
        }

        else if (v7 & 1) == 0 && (sub_1004A0190(v9, v10))
        {
          return 1;
        }
      }

      break;
  }

  return 0;
}

uint64_t sub_1004A30D0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xFCu)
  {
  }

  return result;
}

unint64_t sub_1004A30E8()
{
  result = qword_100AE5F20;
  if (!qword_100AE5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F20);
  }

  return result;
}

unint64_t sub_1004A3140()
{
  result = qword_100AE5F28;
  if (!qword_100AE5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F28);
  }

  return result;
}

unint64_t sub_1004A3198()
{
  result = qword_100AE5F30;
  if (!qword_100AE5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F30);
  }

  return result;
}

unint64_t sub_1004A31F0()
{
  result = qword_100AE5F38;
  if (!qword_100AE5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F38);
  }

  return result;
}

unint64_t sub_1004A3248()
{
  result = qword_100AE5F40;
  if (!qword_100AE5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F40);
  }

  return result;
}

unint64_t sub_1004A32A0()
{
  result = qword_100AE5F48;
  if (!qword_100AE5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F48);
  }

  return result;
}

unint64_t sub_1004A32F8()
{
  result = qword_100AE5F50;
  if (!qword_100AE5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F50);
  }

  return result;
}

unint64_t sub_1004A3350()
{
  result = qword_100AE5F58[0];
  if (!qword_100AE5F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100AE5F58);
  }

  return result;
}

uint64_t sub_1004A33A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004A33EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004A3400(uint64_t a1)
{
  if ((*(a1 + 41) & 7u) <= 5)
  {
    return *(a1 + 41) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 sub_1004A341C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1004A3430(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 42))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 41);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004A3478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004A34C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 41) = a2;
  return result;
}

__n128 sub_1004A3508(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1004A351C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1004A3564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A35C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1004A3620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1004A3694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1004A36DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A3738(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004A3780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -3 - a2;
    }
  }

  return result;
}

uint64_t sub_1004A37CC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

uint64_t sub_1004A3804(uint64_t a1, unsigned int a2)
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

uint64_t sub_1004A384C(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_1004A38E8(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 == 3 || a3 == 4)
      {
      }

      return result;
    }

    return result;
  }

  if (!a3)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

void sub_1004A392C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 == 3 || a3 == 4)
      {
        goto LABEL_5;
      }

      return;
    }

LABEL_8:

    return;
  }

  if (!a3)
  {
LABEL_5:

    return;
  }

  if (a3 == 1)
  {
    goto LABEL_8;
  }
}

unint64_t sub_1004A3970()
{
  result = qword_100AE6020;
  if (!qword_100AE6020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6020);
  }

  return result;
}

unint64_t sub_1004A39C4()
{
  result = qword_100AE6028;
  if (!qword_100AE6028)
  {
    sub_1001F1234(&qword_100AE6018);
    sub_1004A3970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6028);
  }

  return result;
}

unint64_t sub_1004A3A50()
{
  result = qword_100AE6038;
  if (!qword_100AE6038)
  {
    sub_1001F1234(&qword_100AE6030);
    sub_100005920(&qword_100AE6040, &qword_100AE6048);
    sub_100005920(&qword_100AE6050, &qword_100AE6058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6038);
  }

  return result;
}

uint64_t sub_1004A3B34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004A3B7C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xFCu)
  {
  }

  return result;
}

unint64_t sub_1004A3BB0()
{
  result = qword_100AE6068;
  if (!qword_100AE6068)
  {
    sub_1001F1234(&qword_100AE6070);
    sub_1004A3A50();
    sub_1001F1234(&qword_100AE1108);
    sub_1001F1234(&qword_100AE6018);
    sub_1004A3970();
    swift_getOpaqueTypeConformance2();
    sub_1004A39C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6068);
  }

  return result;
}

uint64_t KeyboardAvoidance.animationOptions.getter()
{
  result = *(v0 + 72) << 16;
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

double KeyboardAvoidance.init(notification:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1004A41B8(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

void KeyboardAvoidance.additionalSafeAreaInsets(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0.0;
  if (![a1 isViewLoaded] || (v6 = objc_msgSend(a1, "view")) == 0)
  {
    v24 = 1;
LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = v24;
    return;
  }

  v7 = v6;
  [v6 convertRect:0 fromView:{v2[4], v2[5], v2[6], v2[7]}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [a1 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    [a1 additionalSafeAreaInsets];
    v21 = v19 - v20;
    [v7 frame];
    Height = CGRectGetHeight(v25);
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    MinY = CGRectGetMinY(v26);

    v24 = 0;
    if (Height - MinY - v21 < 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = Height - MinY - v21;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static KeyboardAvoidance.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (CGRectEqualToRect(*a1, *a2) && CGRectEqualToRect(*(a1 + 32), *(a2 + 32)) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    v4 = *(a1 + 80) ^ *(a2 + 80) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1004A3F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v16 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v15 = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v17.origin.x = v2;
    v17.origin.y = v3;
    v17.size.width = v4;
    v17.size.height = v5;
    v18.origin.x = v8;
    v18.origin.y = v9;
    v18.size.width = v10;
    v18.size.height = v11;
    result = CGRectEqualToRect(v17, v18);
    if (result)
    {
      result = 0;
      if (v16 == v15)
      {
        if (v6 == v12)
        {
          return v7 ^ v13 ^ 1u;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004A4094(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t a3, uint64_t a4)
{
  v7 = sub_100796594();
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  result = sub_1004A41B8(v10, v14);
  if (v15 != 2)
  {
    v16[3] = v14[3];
    v16[4] = v14[4];
    v16[1] = v14[1];
    v16[2] = v14[2];
    v16[0] = v14[0];
    v17 = v15;
    return a2(a4, v16);
  }

  return result;
}

uint64_t sub_1004A41B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100796584();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v45 = sub_1007A2254();
  sub_1007A36B4();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_10000E2A4(v50);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100007484(*(v5 + 56) + 32 * v6, v51);
  sub_10002899C(v50);
  sub_10000A7C4(0, &qword_100AE6080);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v45 CGRectValue];
  v43 = v9;
  v44 = v8;
  v41 = v10;
  v42 = v11;

  v46 = sub_1007A2254();
  sub_1007A36B4();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v12 = sub_10000E2A4(v50);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100007484(*(v5 + 56) + 32 * v12, v51);
  sub_10002899C(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v46 CGRectValue];
  v39 = v15;
  v40 = v14;
  v37 = v16;
  v38 = v17;

  v47 = sub_1007A2254();
  sub_1007A36B4();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v18 = sub_10000E2A4(v50);
  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100007484(*(v5 + 56) + 32 * v18, v51);
  sub_10002899C(v50);
  sub_10000A7C4(0, &qword_100AD6750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v47 floatValue];
  v21 = v20;

  v48 = sub_1007A2254();
  sub_1007A36B4();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v22 = sub_10000E2A4(v50);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100007484(*(v5 + 56) + 32 * v22, v51);
  sub_10002899C(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v36 = sub_100796594();
    (*(*(v36 - 8) + 8))(a1, v36);

    goto LABEL_20;
  }

  v24 = [v48 integerValue];

  v49 = sub_1007A2254();
  sub_1007A36B4();
  if (!*(v5 + 16) || (v25 = sub_10000E2A4(v50), (v26 & 1) == 0))
  {
LABEL_18:

    sub_10002899C(v50);
    goto LABEL_19;
  }

  sub_100007484(*(v5 + 56) + 32 * v25, v51);
  sub_10002899C(v50);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v35 = sub_100796594();
    result = (*(*(v35 - 8) + 8))(a1, v35);
LABEL_20:
    v24 = 0;
    v31 = 0uLL;
    v27 = 2;
    v30 = 0.0;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    goto LABEL_21;
  }

  v27 = [v49 BOOLValue];

  v28 = sub_100796594();
  result = (*(*(v28 - 8) + 8))(a1, v28);
  v30 = v21;
  *&v31 = v44;
  *(&v31 + 1) = v41;
  *&v32 = v43;
  *(&v32 + 1) = v42;
  *&v33 = v40;
  *(&v33 + 1) = v37;
  *&v34 = v39;
  *(&v34 + 1) = v38;
LABEL_21:
  *a2 = v31;
  *(a2 + 16) = v32;
  *(a2 + 32) = v33;
  *(a2 + 48) = v34;
  *(a2 + 64) = v30;
  *(a2 + 72) = v24;
  *(a2 + 80) = v27;
  return result;
}

uint64_t _s5Books16KeyboardObserverV7options6updateACShyAC6OptionOG_yAG_AA0B9AvoidanceVtctcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v31 = sub_1007A2E74();
  __chkstk_darwin(v31);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v34 = &_swiftEmptySetSingleton;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v26 = UIKeyboardDidChangeFrameNotification;
  v28 = UIKeyboardWillChangeFrameNotification;
  v30 = UIKeyboardDidHideNotification;
  v25 = UIKeyboardWillHideNotification;
  v27 = UIKeyboardDidShowNotification;
  v29 = UIKeyboardWillShowNotification;
  v14 = (v5 + 8);
  v32 = a1;

  v16 = 0;
  while (v12)
  {
LABEL_10:
    v21 = *(*(v32 + 48) + (__clz(__rbit64(v12)) | (v16 << 6)));
    v22 = [objc_opt_self() defaultCenter];
    if (v21 > 2)
    {
      v23 = v30;
      if (v21 != 3)
      {
        v23 = v28;
        if (v21 != 4)
        {
          v23 = v26;
        }
      }
    }

    else
    {
      v23 = v29;
      if (v21)
      {
        v23 = v27;
        if (v21 != 1)
        {
          v23 = v25;
        }
      }
    }

    v12 &= v12 - 1;
    v17 = v23;
    sub_1007A2E84();

    v18 = swift_allocObject();
    *(v18 + 16) = v33;
    *(v18 + 24) = a3;
    *(v18 + 32) = v21;
    sub_100005B5C();

    v19 = v31;
    sub_10079BB04();

    (*v14)(v7, v19);
    sub_10079B854();
  }

  while (1)
  {
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v20 >= v13)
    {
      v24 = v32;

      return v24;
    }

    v12 = *(v9 + 8 * v20);
    ++v16;
    if (v12)
    {
      v16 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1004A4970()
{
  result = qword_100AE6078;
  if (!qword_100AE6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6078);
  }

  return result;
}

uint64_t sub_1004A49C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1004A4A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t EngagementManagerAnalyticsHelper.collectLocalSignalsAnalytics(with:)(uint64_t a1)
{
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v172 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v5 - 8);
  v169 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v170 = &v125 - v8;
  __chkstk_darwin(v9);
  v171 = &v125 - v10;
  __chkstk_darwin(v11);
  v13 = &v125 - v12;
  v14 = sub_100798204();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100798444();
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v165 = v3;
      v167 = v2;
      v19 = OBJC_IVAR___BKEngagementManager_metadata;
      v20 = result;
      swift_beginAccess();
      v21 = *&v20[v19];

      v22 = OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts;
      swift_beginAccess();
      v168 = v21;
      v23 = *&v21[v22];
      v24 = *(v23 + 16);
      v163 = v14;
      v164 = a1;
      v161 = v17;
      v162 = v15;
      if (v24)
      {

        result = sub_10000E53C(0xD000000000000019, 0x80000001008D7B40);
        if (v25)
        {
          v26 = round(*(*(v23 + 56) + 8 * result) / 5.0) * 5.0;
          if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          if (v26 <= -9.22337204e18)
          {
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          if (v26 >= 9.22337204e18)
          {
LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

          v159 = 0;
          v27 = v26;
LABEL_11:
          v175 = 0x527361576B6F6F62;
          v176 = 0xEB00000000646165;
          v177._countAndFlagsBits = 45;
          v177._object = 0xE100000000000000;
          sub_1007A23D4(v177);
          v178._countAndFlagsBits = 0x656C706D6173;
          v178._object = 0xE600000000000000;
          sub_1007A23D4(v178);
          v28 = *(v23 + 16);
          v160 = v27;
          if (v28)
          {
            v29 = sub_10000E53C(v175, v176);
            v31 = v30;

            if (v31)
            {
              v32 = round(*(*(v23 + 56) + 8 * v29) / 5.0) * 5.0;
              if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_166:
                __break(1u);
                goto LABEL_167;
              }

              if (v32 <= -9.22337204e18)
              {
LABEL_169:
                __break(1u);
                goto LABEL_170;
              }

              if (v32 >= 9.22337204e18)
              {
LABEL_173:
                __break(1u);
                goto LABEL_174;
              }

              v157 = 0;
              v158 = v32;
            }

            else
            {
              v158 = 0;
              v157 = 1;
            }
          }

          else
          {

            v158 = 0;
            v157 = 1;
          }

          v175 = 0xD000000000000012;
          v176 = 0x80000001008BF840;
          v179._countAndFlagsBits = 45;
          v179._object = 0xE100000000000000;
          sub_1007A23D4(v179);
          v180._countAndFlagsBits = 0x656C706D6173;
          v180._object = 0xE600000000000000;
          sub_1007A23D4(v180);
          if (*(v23 + 16))
          {
            v33 = sub_10000E53C(v175, v176);
            v35 = v34;

            if (v35)
            {
              v36 = round(*(*(v23 + 56) + 8 * v33) / 5.0) * 5.0;
              if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_168:
                __break(1u);
                goto LABEL_169;
              }

              if (v36 <= -9.22337204e18)
              {
LABEL_172:
                __break(1u);
                goto LABEL_173;
              }

              if (v36 >= 9.22337204e18)
              {
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              v155 = 0;
              v156 = v36;
LABEL_27:
              v175 = 0x527361576B6F6F62;
              v176 = 0xEB00000000646165;
              v181._countAndFlagsBits = 45;
              v181._object = 0xE100000000000000;
              sub_1007A23D4(v181);
              v182._countAndFlagsBits = 0x706D61732D6E6F6ELL;
              v182._object = 0xEA0000000000656CLL;
              sub_1007A23D4(v182);
              if (*(v23 + 16))
              {
                v37 = sub_10000E53C(v175, v176);
                v39 = v38;

                if (v39)
                {
                  v40 = round(*(*(v23 + 56) + 8 * v37) / 5.0) * 5.0;
                  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                  {
LABEL_171:
                    __break(1u);
                    goto LABEL_172;
                  }

                  if (v40 <= -9.22337204e18)
                  {
LABEL_175:
                    __break(1u);
                    goto LABEL_176;
                  }

                  if (v40 >= 9.22337204e18)
                  {
LABEL_179:
                    __break(1u);
                    goto LABEL_180;
                  }

                  v41 = 0;
                  v42 = v40;
                }

                else
                {
                  v42 = 0;
                  v41 = 1;
                }
              }

              else
              {

                v42 = 0;
                v41 = 1;
              }

              v175 = 0xD000000000000012;
              v176 = 0x80000001008BF840;
              v183._countAndFlagsBits = 45;
              v183._object = 0xE100000000000000;
              sub_1007A23D4(v183);
              v184._countAndFlagsBits = 0x706D61732D6E6F6ELL;
              v184._object = 0xEA0000000000656CLL;
              sub_1007A23D4(v184);
              if (*(v23 + 16))
              {
                v43 = sub_10000E53C(v175, v176);
                v45 = v44;

                if (v45)
                {
                  v46 = round(*(*(v23 + 56) + 8 * v43) / 5.0) * 5.0;
                  v47 = v168;
                  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                  {
LABEL_174:
                    __break(1u);
                    goto LABEL_175;
                  }

                  if (v46 <= -9.22337204e18)
                  {
LABEL_178:
                    __break(1u);
                    goto LABEL_179;
                  }

                  if (v46 >= 9.22337204e18)
                  {
LABEL_181:
                    __break(1u);
                    goto LABEL_182;
                  }

                  v48 = 0;
                  v49 = v46;
                  if (!*(v23 + 16))
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_44;
                }
              }

              else
              {
              }

              v49 = 0;
              v48 = 1;
              v47 = v168;
              if (!*(v23 + 16))
              {
LABEL_41:
                v150 = 0;
                v152 = 0;
                v153 = 0;
                v148 = 0;
                v149 = 1;
                v154 = 1;
                goto LABEL_57;
              }

LABEL_44:
              result = sub_10000E53C(0x6E61576F54646461, 0xEF646165526F5474);
              if (v50)
              {
                v51 = round(*(*(v23 + 56) + 8 * result) / 5.0) * 5.0;
                if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

                if (v51 <= -9.22337204e18)
                {
LABEL_180:
                  __break(1u);
                  goto LABEL_181;
                }

                if (v51 >= 9.22337204e18)
                {
LABEL_182:
                  __break(1u);
                  goto LABEL_183;
                }

                v153 = v51;
              }

              else
              {
                v153 = 0;
              }

              v154 = v50 ^ 1;
              if (*(v23 + 16))
              {
                result = sub_10000E53C(0x64616F6C6E776F64, 0xEE00656C706D6153);
                if (v52)
                {
                  v53 = round(*(*(v23 + 56) + 8 * result) / 5.0) * 5.0;
                  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                  {
LABEL_189:
                    __break(1u);
                    goto LABEL_190;
                  }

                  if (v53 <= -9.22337204e18)
                  {
LABEL_190:
                    __break(1u);
                    goto LABEL_191;
                  }

                  if (v53 >= 9.22337204e18)
                  {
LABEL_191:
                    __break(1u);
                    goto LABEL_192;
                  }

                  v152 = v53;
                }

                else
                {
                  v152 = 0;
                }

                v151 = v52 ^ 1;
                if (*(v23 + 16))
                {
                  result = sub_10000E53C(0x676E69746172, 0xE600000000000000);
                  if (v54)
                  {
                    v55 = round(*(*(v23 + 56) + 8 * result) / 5.0) * 5.0;
                    if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                    {
LABEL_198:
                      __break(1u);
                      goto LABEL_199;
                    }

                    if (v55 <= -9.22337204e18)
                    {
LABEL_199:
                      __break(1u);
                      goto LABEL_200;
                    }

                    if (v55 >= 9.22337204e18)
                    {
LABEL_200:
                      __break(1u);
                      goto LABEL_201;
                    }

                    v150 = v55;
                  }

                  else
                  {
                    v150 = 0;
                  }

                  v149 = v54 ^ 1;
                  if (*(v23 + 16))
                  {
                    result = sub_10000E53C(0x4D74736567677573, 0xEB0000000065726FLL);
                    if (v56)
                    {
                      v57 = round(*(*(v23 + 56) + 8 * result) / 5.0) * 5.0;
                      if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                      {
LABEL_204:
                        __break(1u);
                        goto LABEL_205;
                      }

                      if (v57 <= -9.22337204e18)
                      {
LABEL_205:
                        __break(1u);
                        goto LABEL_206;
                      }

                      if (v57 >= 9.22337204e18)
                      {
LABEL_206:
                        __break(1u);
                        goto LABEL_207;
                      }

                      v147 = 0;
                      v148 = v57;
LABEL_75:
                      if (*(v23 + 16))
                      {
                        result = sub_10000E53C(0x6572616873, 0xE500000000000000);
                        if (v58)
                        {
                          v59 = round(*(*(v23 + 56) + 8 * result) / 5.0) * 5.0;
                          if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                          {
LABEL_183:
                            __break(1u);
                            goto LABEL_184;
                          }

                          if (v59 <= -9.22337204e18)
                          {
LABEL_184:
                            __break(1u);
                            goto LABEL_185;
                          }

                          if (v59 >= 9.22337204e18)
                          {
LABEL_185:
                            __break(1u);
                            goto LABEL_186;
                          }

                          v146 = v59;
                        }

                        else
                        {
                          v146 = 0;
                        }

                        v145 = v58 ^ 1;
                        if (*(v23 + 16))
                        {
                          result = sub_10000E53C(0x72706D496B6F6F62, 0xEE006E6F69737365);
                          if (v60)
                          {
                            v61 = round(*(*(v23 + 56) + 8 * result) / 5.0) * 5.0;
                            if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                            {
LABEL_192:
                              __break(1u);
                              goto LABEL_193;
                            }

                            if (v61 <= -9.22337204e18)
                            {
LABEL_193:
                              __break(1u);
                              goto LABEL_194;
                            }

                            if (v61 >= 9.22337204e18)
                            {
LABEL_194:
                              __break(1u);
                              goto LABEL_195;
                            }

                            v143 = v61;
                          }

                          else
                          {
                            v143 = 0;
                          }

                          v144 = v60 ^ 1;
                          if (*(v23 + 16))
                          {
                            result = sub_10000E53C(0x4C74736567677573, 0xEB00000000737365);
                            if (v62)
                            {
                              v63 = round(*(*(v23 + 56) + 8 * result) / 5.0) * 5.0;
                              if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                              {
LABEL_201:
                                __break(1u);
                                goto LABEL_202;
                              }

                              if (v63 <= -9.22337204e18)
                              {
LABEL_202:
                                __break(1u);
                                goto LABEL_203;
                              }

                              if (v63 >= 9.22337204e18)
                              {
LABEL_203:
                                __break(1u);
                                goto LABEL_204;
                              }

                              v141 = v63;
                            }

                            else
                            {
                              v141 = 0;
                            }

                            v140 = v62 ^ 1;
                            if (*(v23 + 16))
                            {
                              result = sub_10000E53C(0x6B6F6F4265646968, 0xE800000000000000);
                              if (v64)
                              {
                                v65 = round(*(*(v23 + 56) + 8 * result) / 5.0) * 5.0;
                                if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                                {
LABEL_207:
                                  __break(1u);
                                  goto LABEL_208;
                                }

                                if (v65 <= -9.22337204e18)
                                {
LABEL_208:
                                  __break(1u);
                                  goto LABEL_209;
                                }

                                if (v65 >= 9.22337204e18)
                                {
LABEL_209:
                                  __break(1u);
                                  return result;
                                }

                                v136 = 0;
                                v137 = v65;
LABEL_108:
                                v66 = *(v23 + 16);
                                v142 = v42;
                                v138 = v48;
                                v139 = v41;
                                if (v66)
                                {
                                  result = sub_10000E53C(0xD000000000000014, 0x80000001008D7B60);
                                  if (v67)
                                  {
                                    v68 = round(*(*(v23 + 56) + 8 * result) / 5.0) * 5.0;
                                    if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                                    {
LABEL_186:
                                      __break(1u);
                                      goto LABEL_187;
                                    }

                                    v69 = v167;
                                    v70 = v165;
                                    if (v68 <= -9.22337204e18)
                                    {
LABEL_187:
                                      __break(1u);
                                      goto LABEL_188;
                                    }

                                    if (v68 >= 9.22337204e18)
                                    {
LABEL_188:
                                      __break(1u);
                                      goto LABEL_189;
                                    }

                                    v71 = v68;
                                  }

                                  else
                                  {
                                    v71 = 0;
                                    v69 = v167;
                                    v70 = v165;
                                  }

                                  v72 = *(v23 + 16);
                                  v135 = v67 ^ 1;
                                  if (v72)
                                  {
                                    v73 = sub_10000E53C(0x615365766F6D6572, 0xEC000000656C706DLL);
                                    if (v74)
                                    {
                                      v75 = *(*(v23 + 56) + 8 * v73);

                                      v76 = round(v75 / 5.0) * 5.0;
                                      if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                                      {
LABEL_195:
                                        __break(1u);
                                        goto LABEL_196;
                                      }

                                      if (v76 <= -9.22337204e18)
                                      {
LABEL_196:
                                        __break(1u);
                                        goto LABEL_197;
                                      }

                                      if (v76 >= 9.22337204e18)
                                      {
LABEL_197:
                                        __break(1u);
                                        goto LABEL_198;
                                      }

                                      v134 = 0;
                                      v77 = v76;
LABEL_123:
                                      v78 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitSuccessTimestamp;
                                      swift_beginAccess();
                                      sub_100217B24(&v47[v78], v13);
                                      v166 = *(v70 + 48);
                                      if (v166(v13, 1, v69))
                                      {
                                        sub_10038F7FC(v13);
                                        v130 = 0;
LABEL_129:
                                        v131 = v77;
                                        v132 = v49;
                                        v83 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitError;
                                        swift_beginAccess();
                                        if (*&v47[v83])
                                        {
                                          ErrorValue = swift_getErrorValue();
                                          v85 = v174;
                                          v86 = *(v174 - 8);
                                          v87 = __chkstk_darwin(ErrorValue);
                                          v89 = &v125 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
                                          (*(v86 + 16))(v89, v87);
                                          v90 = sub_1007A3B84();
                                          v128 = v91;
                                          v129 = v90;
                                          (*(v86 + 8))(v89, v85);
                                          v47 = v168;
                                        }

                                        else
                                        {
                                          v128 = 0;
                                          v129 = 0;
                                        }

                                        v92 = v170;
                                        v93 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitErrorTimestamp;
                                        swift_beginAccess();
                                        v94 = v171;
                                        sub_100217B24(&v47[v93], v171);
                                        v95 = v166;
                                        LODWORD(v170) = v166(v94, 1, v69);
                                        if (v170)
                                        {
                                          sub_10038F7FC(v94);
                                          v171 = 0;
LABEL_138:
                                          v100 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitSuccessTimestamp;
                                          swift_beginAccess();
                                          sub_100217B24(&v47[v100], v92);
                                          if (v95(v92, 1, v69))
                                          {
                                            sub_10038F7FC(v92);
                                            v126 = 0;
LABEL_144:
                                            v127 = v71;
                                            v105 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitError;
                                            swift_beginAccess();
                                            if (*&v47[v105])
                                            {
                                              v106 = swift_getErrorValue();
                                              v107 = v173;
                                              v108 = *(v173 - 8);
                                              v109 = __chkstk_darwin(v106);
                                              v111 = &v125 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
                                              (*(v108 + 16))(v111, v109);
                                              sub_1007A3B84();
                                              v112 = v111;
                                              v47 = v168;
                                              (*(v108 + 8))(v112, v107);
                                            }

                                            v113 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitErrorTimestamp;
                                            swift_beginAccess();
                                            v114 = &v47[v113];
                                            v115 = v169;
                                            sub_100217B24(v114, v169);
                                            v116 = v167;
                                            if (v166(v115, 1, v167))
                                            {
                                              sub_10038F7FC(v115);
LABEL_151:
                                              v123 = v161;
                                              sub_1007981F4();
                                              sub_1004A66F8(&qword_100AE60A8);
                                              sub_1004A66F8(&qword_100AE60B0);
                                              v124 = v163;
                                              sub_100798404();
                                              sub_100798414();

                                              return (*(v162 + 8))(v123, v124);
                                            }

                                            v117 = v165;
                                            v118 = v115;
                                            v119 = v172;
                                            (*(v165 + 16))(v172, v118, v116);
                                            sub_10038F7FC(v118);
                                            sub_100796B44();
                                            v121 = round(v120 / 3600.0);
                                            result = (*(v117 + 8))(v119, v116);
                                            v122 = v121 * 3600.0 * 1000.0;
                                            if (COERCE__INT64(fabs(v122)) <= 0x7FEFFFFFFFFFFFFFLL)
                                            {
                                              if (v122 > -9.22337204e18)
                                              {
                                                if (v122 < 9.22337204e18)
                                                {
                                                  goto LABEL_151;
                                                }

                                                goto LABEL_164;
                                              }

LABEL_163:
                                              __break(1u);
LABEL_164:
                                              __break(1u);
                                              goto LABEL_165;
                                            }

                                            goto LABEL_161;
                                          }

                                          v101 = v172;
                                          (*(v70 + 16))(v172, v92, v69);
                                          sub_10038F7FC(v92);
                                          sub_100796B44();
                                          v103 = round(v102 / 3600.0);
                                          result = (*(v70 + 8))(v101, v69);
                                          v104 = v103 * 3600.0 * 1000.0;
                                          if (COERCE__INT64(fabs(v104)) <= 0x7FEFFFFFFFFFFFFFLL)
                                          {
                                            if (v104 > -9.22337204e18)
                                            {
                                              if (v104 >= 9.22337204e18)
                                              {
LABEL_162:
                                                __break(1u);
                                                goto LABEL_163;
                                              }

                                              v126 = v104;
                                              goto LABEL_144;
                                            }

LABEL_160:
                                            __break(1u);
LABEL_161:
                                            __break(1u);
                                            goto LABEL_162;
                                          }

                                          goto LABEL_158;
                                        }

                                        v96 = v172;
                                        (*(v70 + 16))(v172, v94, v69);
                                        sub_10038F7FC(v94);
                                        sub_100796B44();
                                        v98 = round(v97 / 3600.0);
                                        result = (*(v70 + 8))(v96, v69);
                                        v99 = v98 * 3600.0 * 1000.0;
                                        if (COERCE__INT64(fabs(v99)) <= 0x7FEFFFFFFFFFFFFFLL)
                                        {
                                          if (v99 > -9.22337204e18)
                                          {
                                            if (v99 >= 9.22337204e18)
                                            {
LABEL_159:
                                              __break(1u);
                                              goto LABEL_160;
                                            }

                                            v171 = v99;
                                            goto LABEL_138;
                                          }

LABEL_157:
                                          __break(1u);
LABEL_158:
                                          __break(1u);
                                          goto LABEL_159;
                                        }

                                        goto LABEL_155;
                                      }

                                      v79 = v172;
                                      (*(v70 + 16))(v172, v13, v69);
                                      sub_10038F7FC(v13);
                                      sub_100796B44();
                                      v81 = round(v80 / 3600.0);
                                      result = (*(v70 + 8))(v79, v69);
                                      v82 = v81 * 3600.0 * 1000.0;
                                      if (COERCE__INT64(fabs(v82)) > 0x7FEFFFFFFFFFFFFFLL)
                                      {
                                        __break(1u);
                                      }

                                      else if (v82 > -9.22337204e18)
                                      {
                                        if (v82 >= 9.22337204e18)
                                        {
LABEL_156:
                                          __break(1u);
                                          goto LABEL_157;
                                        }

                                        v130 = v82;
                                        goto LABEL_129;
                                      }

                                      __break(1u);
LABEL_155:
                                      __break(1u);
                                      goto LABEL_156;
                                    }
                                  }
                                }

                                else
                                {
                                  v71 = 0;
                                  v135 = 1;
                                  v69 = v167;
                                  v70 = v165;
                                }

                                v77 = 0;
                                v134 = 1;
                                goto LABEL_123;
                              }
                            }

                            v137 = 0;
                          }

                          else
                          {
                            v141 = 0;
                            v137 = 0;
                            v140 = 1;
                          }

LABEL_107:
                          v136 = 1;
                          goto LABEL_108;
                        }

                        v141 = 0;
                        v143 = 0;
                        v137 = 0;
                        v140 = 1;
                      }

                      else
                      {
                        v141 = 0;
                        v146 = 0;
                        v143 = 0;
                        v137 = 0;
                        v140 = 1;
                        v145 = 1;
                      }

                      v144 = 1;
                      goto LABEL_107;
                    }
                  }

                  v148 = 0;
                }

                else
                {
                  v150 = 0;
                  v148 = 0;
                  v149 = 1;
                }

LABEL_74:
                v147 = 1;
                goto LABEL_75;
              }

              v150 = 0;
              v152 = 0;
              v148 = 0;
              v149 = 1;
LABEL_57:
              v151 = 1;
              goto LABEL_74;
            }
          }

          else
          {
          }

          v156 = 0;
          v155 = 1;
          goto LABEL_27;
        }
      }

      else
      {
      }

      v27 = 0;
      v159 = 1;
      goto LABEL_11;
    }
  }

  return result;
}