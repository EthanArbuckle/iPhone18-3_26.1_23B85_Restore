uint64_t sub_89A54()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);
  if (v0)
  {
    v5 = sub_89FD0;
  }

  else
  {
    v5 = sub_89B90;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_89B90()
{
  (*(v0[22] + 104))(v0[23], enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v0[21]);
  v1 = swift_task_alloc();
  v0[50] = v1;
  *v1 = v0;
  v1[1] = sub_89C5C;
  v2 = v0[47];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[23];

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v3, v0 + 2, v5, v2, v4);
}

uint64_t sub_89C5C()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    (*(v2[22] + 8))(v2[23], v2[21]);
    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_8A0D0;
  }

  else
  {
    v7 = v2[25];
    v6 = v2[26];
    v8 = v2[24];
    (*(v2[22] + 8))(v2[23], v2[21]);
    (*(v7 + 8))(v6, v8);
    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_89DC4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_89DC4()
{
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[27];

  (*(v4 + 8))(v5, v6);
  sub_68CD0((v0 + 2));
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_89EEC()
{
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[38];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_89FD0()
{
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[38];

  sub_68CD0((v0 + 2));
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_8A0D0()
{
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[38];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];

  (*(v5 + 8))(v4, v6);
  sub_68CD0((v0 + 2));
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_8A39C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 88) = a3;
  *(v6 + 16) = a1;
  sub_2C5C18();
  *(v6 + 56) = sub_2C5C08();
  v8 = sub_2C5BB8();

  return _swift_task_switch(sub_8A440, v8, v7);
}

uint64_t sub_8A440()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);

  *(v0 + 64) = _Block_copy(v2);
  v5 = sub_2C57E8();
  *(v0 + 72) = v5;
  v6 = v4;
  v7 = v3;
  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_8A544;
  v10 = *(v0 + 88);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);

  return JetActionHandler.perform(rawActionModel:parentTracker:shouldReportFigaro:sourceViewController:)(v5, v11, v10, v12);
}

uint64_t sub_8A544()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;

  v9 = *(v3 + 64);
  if (v2)
  {
    v10 = sub_2BE348();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 64), 0);
  }

  _Block_release(*(v4 + 64));
  v11 = *(v8 + 8);

  return v11();
}

id BooksUIComponentHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_8A7C4()
{
  result = qword_3BD850;
  if (!qword_3BD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD850);
  }

  return result;
}

unint64_t sub_8A818()
{
  result = qword_3BD868;
  if (!qword_3BD868)
  {
    sub_2C1398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD868);
  }

  return result;
}

unint64_t sub_8A870()
{
  result = qword_3BCE60;
  if (!qword_3BCE60)
  {
    sub_718D4(&unk_3BD220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BCE60);
  }

  return result;
}

unint64_t sub_8A974()
{
  result = qword_3BD898;
  if (!qword_3BD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD898);
  }

  return result;
}

uint64_t sub_8A9C8()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_8AA20()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_7100C;

  return sub_8A39C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_8AAFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8AB3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_88BE0;

  return sub_297D28(a1, v4, v5, v6);
}

uint64_t sub_8AC0C()
{
  v1 = 0x7079547465737361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64497465737361;
  }
}

uint64_t sub_8AC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_8B274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_8ACB0(uint64_t a1)
{
  v2 = sub_8B5E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8ACEC(uint64_t a1)
{
  v2 = sub_8B5E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8AD28(void *a1)
{
  v3 = sub_6620C(&qword_3BD8C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_72084(a1, a1[3]);
  sub_8B5E8();
  sub_2C67B8();
  v8[15] = 0;
  sub_2C6518();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2C6518();
  v8[13] = 2;
  sub_2C6518();
  return (*(v4 + 8))(v6, v3);
}

double sub_8AEF4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_8B39C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_8AF50@<X0>(unint64_t *a1@<X8>)
{
  sub_6620C(&unk_3C44C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E4110;
  v4 = *v1;
  v10 = v1[1];
  v5 = v10;
  v11 = v4;
  *(inited + 48) = v4;
  *(inited + 32) = 0x64497465737361;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 64) = 0x7079547465737361;
  *(inited + 72) = 0xE900000000000065;
  *(inited + 80) = v5;
  *(inited + 96) = 0xD000000000000012;
  *(inited + 104) = 0x80000000003021B0;
  v9 = v1[2];
  *(inited + 112) = v9;
  sub_8B0E4(&v11, v8);
  sub_8B0E4(&v10, v8);
  sub_8B0E4(&v9, v8);
  v6 = sub_677B4(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BD8A0);
  swift_arrayDestroy();
  a1[3] = sub_6620C(&qword_3BD8A8);
  result = sub_8B140();
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_8B140()
{
  result = qword_3BD8B0;
  if (!qword_3BD8B0)
  {
    sub_718D4(&qword_3BD8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD8B0);
  }

  return result;
}

__n128 sub_8B1BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_8B1D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_8B218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_8B274(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497465737361 && a2 == 0xE700000000000000;
  if (v4 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000003021B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2C65B8();

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

uint64_t sub_8B39C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_6620C(&qword_3BD8B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_72084(a1, a1[3]);
  sub_8B5E8();
  sub_2C67A8();
  if (v2)
  {
    return sub_68CD0(a1);
  }

  v25 = 0;
  v9 = sub_2C6468();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_2C6468();
  v21 = v12;
  v23 = 2;
  v13 = sub_2C6468();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_68CD0(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_8B5E8()
{
  result = qword_3BD8C0;
  if (!qword_3BD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD8C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EditionsPageIntent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EditionsPageIntent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_8B790()
{
  result = qword_3BD8D0;
  if (!qword_3BD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD8D0);
  }

  return result;
}

unint64_t sub_8B7E8()
{
  result = qword_3BD8D8;
  if (!qword_3BD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD8D8);
  }

  return result;
}

unint64_t sub_8B840()
{
  result = qword_3BD8E0;
  if (!qword_3BD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD8E0);
  }

  return result;
}

BookStoreUI::ContextActionPublisherInfo __swiftcall ContextActionPublisherInfo.init(name:year:)(Swift::String_optional name, Swift::String_optional year)
{
  *v2 = name;
  v2[1] = year;
  result.year = year;
  result.name = name;
  return result;
}

uint64_t dispatch thunk of YearlyReadingHistoryStateProviding.state(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_7100C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_8B9D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_8BA1C(uint64_t result, int a2, int a3)
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

uint64_t sub_8BA6C(uint64_t a1)
{
  v1 = *sub_72084((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_2C5B28();

  return _swift_continuation_resume(v1);
}

uint64_t sub_8BB28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7100C;

  return (sub_8BC68)(a1, a2);
}

uint64_t sub_8BBDC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsFieldsProviderCategory.expensive(_:);
  v3 = sub_2C5548();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_8BC68(uint64_t a1)
{
  v1[23] = a1;
  v2 = sub_2C4F98();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = sub_6620C(&qword_3BD980);
  v1[28] = swift_task_alloc();
  sub_6620C(&qword_3BD988);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_8BDB4, 0, 0);
}

uint64_t sub_8BDB4()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[25];
  v31 = v0[23];
  sub_72084(v31, v31[3]);
  sub_8C5B4(&qword_3BD990);
  sub_2C5148();
  sub_2C4F88();
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = *(v3 + 48);
  sub_8C4DC(v2, v4);
  sub_8C4DC(v1, v4 + v7);
  v8 = *(v6 + 48);
  if (v8(v4, 1, v5) != 1)
  {
    v11 = v0[24];
    sub_8C4DC(v0[28], v0[29]);
    v12 = v8(v4 + v7, 1, v11);
    v13 = v0[30];
    v14 = v0[31];
    v15 = v0[29];
    if (v12 != 1)
    {
      v29 = v0[31];
      v30 = v0[28];
      v18 = v0[25];
      v19 = v0[26];
      v20 = v0[24];
      (*(v18 + 32))(v19, v4 + v7, v20);
      sub_8C5B4(&qword_3BD9A0);
      v21 = sub_2C5878();
      v22 = *(v18 + 8);
      v22(v19, v20);
      sub_69198(v13, &qword_3BD988);
      sub_69198(v29, &qword_3BD988);
      v22(v15, v20);
      sub_69198(v30, &qword_3BD988);
      if ((v21 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    v16 = v0[24];
    v17 = v0[25];
    sub_69198(v0[30], &qword_3BD988);
    sub_69198(v14, &qword_3BD988);
    (*(v17 + 8))(v15, v16);
LABEL_6:
    sub_69198(v0[28], &qword_3BD980);
    goto LABEL_12;
  }

  v9 = v0[31];
  v10 = v0[24];
  sub_69198(v0[30], &qword_3BD988);
  sub_69198(v9, &qword_3BD988);
  if (v8(v4 + v7, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_69198(v0[28], &qword_3BD988);
LABEL_8:
  sub_72084(v0[23], v31[3]);
  sub_2C5158();
  if (v23)
  {
    v24 = objc_opt_self();
    v25 = sub_2C5888();
    v0[32] = v25;

    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_8C290;
    v26 = swift_continuation_init();
    v0[17] = sub_6620C(&qword_3BD998);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_8BA6C;
    v0[13] = &unk_38B2A8;
    v0[14] = v26;
    [v24 appendPageHistory:v25 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

LABEL_12:

  v27 = v0[1];

  return v27();
}

uint64_t sub_8C290()
{

  return _swift_task_switch(sub_8C370, 0, 0);
}

uint64_t sub_8C370()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  v3 = sub_6620C(&qword_3BCA70);
  *(v0 + 144) = v2;
  *(v0 + 168) = v3;
  sub_8C564(v1, *(v1 + 24));
  sub_2C5138();
  sub_68CD0(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_8C4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BD988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8C564(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_8C5B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2C4F98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8C5F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BD530);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  ThisRootView = type metadata accessor for IveReadThisRootView();
  sub_6932C(v1 + *(ThisRootView + 20), v9, &qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0C98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t IveReadThisRootView.init(assetInfo:objectGraph:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2C4368();
  *a3 = v9;
  *(a3 + 8) = v10;
  ThisRootView = type metadata accessor for IveReadThisRootView();
  v7 = ThisRootView[5];
  *(a3 + v7) = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  result = sub_693D0(a1, a3 + ThisRootView[6]);
  *(a3 + ThisRootView[7]) = a2;
  return result;
}

uint64_t type metadata accessor for IveReadThisRootView()
{
  result = qword_3BDA50;
  if (!qword_3BDA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IveReadThisRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v35 = sub_2C0C68();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2C0C98();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD9A8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = sub_6620C(&qword_3BD9B0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = sub_6620C(&qword_3BD9B8);
  v36 = *(v15 - 8);
  v37 = v15;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v33 = v1;
  sub_8CDD4(v11);
  sub_8C5F8(v7);
  sub_2C0C78();
  (*(v5 + 8))(v7, v34);
  sub_2C0C58();
  (*(v2 + 8))(v4, v35);
  v18 = sub_2C3758();
  sub_2C24D8();
  v19 = &v11[*(v9 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_2C46A8();
  sub_2C2AD8();
  sub_8D8F8(v11, v14);
  v24 = &v14[*(v12 + 36)];
  v25 = v46;
  *(v24 + 4) = v45;
  *(v24 + 5) = v25;
  *(v24 + 6) = v47;
  v26 = v42;
  *v24 = v41;
  *(v24 + 1) = v26;
  v27 = v44;
  *(v24 + 2) = v43;
  *(v24 + 3) = v27;
  type metadata accessor for IveReadThisRootView();
  sub_2BF028();
  sub_2C4DB8();
  v28 = v39;
  v29 = sub_8D968();
  sub_2C3DD8();

  sub_69198(v14, &qword_3BD9B0);
  sub_2C4DB8();
  if (v39 == 1)
  {
  }

  else
  {
    sub_2C4E58();
    sub_2C4DC8();
  }

  sub_2C4E28();
  v39 = v12;
  v40 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v37;
  sub_2C3AD8();

  return (*(v36 + 8))(v17, v30);
}

uint64_t sub_8CDD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v44 = sub_6620C(&qword_3BD660);
  __chkstk_darwin(v44);
  v4 = &v37 - v3;
  v42 = sub_6620C(&qword_3BDA98);
  __chkstk_darwin(v42);
  v43 = &v37 - v5;
  v41 = sub_2BF558();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C1AA8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v38 = type metadata accessor for MarkAsFinishedViewModel(0);
  __chkstk_darwin(v38);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for MarkAsFinishedView(0);
  __chkstk_darwin(v46);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 8);
  LOBYTE(v56[0]) = *v1;
  v56[1] = v18;
  sub_6620C(&qword_3BDAA0);
  sub_2C4378();
  v19 = v57;
  v20 = v2 + *(type metadata accessor for IveReadThisRootView() + 24);
  if (v19)
  {
    v21 = sub_691F8(v20, v56);
    __chkstk_darwin(v21);
    *(&v37 - 2) = v2;
    sub_842D4(v56, 1, sub_8DF6C, &v37 - 32, v4);
    sub_6932C(v4, v43, &qword_3BD660);
    swift_storeEnumTagMultiPayload();
    sub_8DF74(&qword_3BD9E0, type metadata accessor for MarkAsFinishedView);
    sub_72B74(&qword_3BD9E8, &qword_3BD660);
    sub_2C33C8();
    return sub_69198(v4, &qword_3BD660);
  }

  else
  {
    sub_691F8(v20, v56);
    v23 = *(v2 + 8);
    LOBYTE(v53) = *v2;
    v54 = v23;
    sub_2C4398();
    v47 = v50;
    v48 = v51;
    v49 = v52;
    sub_2C4708();
    sub_6620C(&qword_3BDAA8);
    sub_2C4518();

    v24 = v53;
    v37 = v54;
    v25 = v55;
    v26 = *(v46 + 28);
    v27 = v7;
    v28 = v15;
    v29 = v46;
    *&v17[v26] = swift_getKeyPath();
    sub_6620C(&qword_3BD530);
    swift_storeEnumTagMultiPayload();
    v30 = &v17[*(v29 + 24)];
    v31 = v37;
    *v30 = v24;
    *(v30 + 1) = v31;
    v30[16] = v25;
    sub_691F8(v56, v28);
    (*(v8 + 104))(v13, enum case for ThumbOpinionButtonState.neutral(_:), v27);
    (*(v8 + 16))(v11, v13, v27);
    v32 = v28;
    sub_2C4368();
    (*(v8 + 8))(v13, v27);
    sub_8DFBC(v28, v17, type metadata accessor for MarkAsFinishedViewModel);
    v33 = v40;
    v34 = v39;
    v35 = v41;
    (*(v40 + 104))(v39, enum case for BooksFeatureFlag.iveReadThisFullFlow(_:), v41);
    sub_8DF74(&qword_3BD678, &type metadata accessor for BooksFeatureFlag);
    sub_72B74(&qword_3BD680, &qword_3BD688);
    v36 = sub_2C5A78();
    (*(v33 + 8))(v34, v35);
    sub_8E024(v32, type metadata accessor for MarkAsFinishedViewModel);
    sub_68CD0(v56);
    v17[*(v46 + 20)] = v36 & 1;
    sub_8DFBC(v17, v43, type metadata accessor for MarkAsFinishedView);
    swift_storeEnumTagMultiPayload();
    sub_8DF74(&qword_3BD9E0, type metadata accessor for MarkAsFinishedView);
    sub_72B74(&qword_3BD9E8, &qword_3BD660);
    sub_2C33C8();
    return sub_8E024(v17, type metadata accessor for MarkAsFinishedView);
  }
}

uint64_t sub_8D558()
{
  v0 = type metadata accessor for AssetActionImplementation();
  __chkstk_darwin(v0);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6620C(&qword_3BD1B0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  sub_2BEF48();
  v15[1] = sub_2C4E28();
  sub_2C4F38();
  v10 = *(v4 + 16);
  v10(v9, v7, v3);
  sub_8DF74(&unk_3BFEA0, type metadata accessor for AssetActionImplementation);
  sub_2C4EF8();
  v11 = *(v4 + 8);
  v11(v7, v3);
  sub_8E024(v2, type metadata accessor for AssetActionImplementation);
  sub_6620C(&qword_3BD520);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v10((v13 + v12), v9, v3);
  sub_2C4F38();
  v10(v7, (v13 + v12), v3);
  swift_setDeallocating();
  v11((v13 + v12), v3);
  swift_deallocClassInstance();
  sub_2C4EE8();
  v11(v7, v3);
  return (v11)(v9, v3);
}

uint64_t sub_8D844@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DA078();
  v6 = v5;
  ThisRootView = type metadata accessor for IveReadThisRootView();
  sub_691F8(a1 + *(ThisRootView + 24), (a2 + 2));
  v8 = *(type metadata accessor for IveReadThisHeaderView() + 24);
  *(a2 + v8) = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t sub_8D8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BD9A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_8D968()
{
  result = qword_3BD9C0;
  if (!qword_3BD9C0)
  {
    sub_718D4(&qword_3BD9B0);
    sub_8D9F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD9C0);
  }

  return result;
}

unint64_t sub_8D9F4()
{
  result = qword_3BD9C8;
  if (!qword_3BD9C8)
  {
    sub_718D4(&qword_3BD9A8);
    sub_8DA80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD9C8);
  }

  return result;
}

unint64_t sub_8DA80()
{
  result = qword_3BD9D0;
  if (!qword_3BD9D0)
  {
    sub_718D4(&qword_3BD9D8);
    sub_8DF74(&qword_3BD9E0, type metadata accessor for MarkAsFinishedView);
    sub_72B74(&qword_3BD9E8, &qword_3BD660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD9D0);
  }

  return result;
}

unint64_t sub_8DB6C()
{
  result = qword_3BD9F0;
  if (!qword_3BD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD9F0);
  }

  return result;
}

uint64_t sub_8DC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BD588);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_8DCE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BD588);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

void sub_8DDB0()
{
  sub_8DE64();
  if (v0 <= 0x3F)
  {
    sub_85768();
    if (v1 <= 0x3F)
    {
      sub_85704();
      if (v2 <= 0x3F)
      {
        sub_2C4E28();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_8DE64()
{
  if (!qword_3BDA60)
  {
    v0 = sub_2C43A8();
    if (!v1)
    {
      atomic_store(v0, &qword_3BDA60);
    }
  }
}

uint64_t sub_8DEB4()
{
  sub_718D4(&qword_3BD9B8);
  sub_2C4E28();
  sub_718D4(&qword_3BD9B0);
  sub_8D968();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_8DF74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8DFBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_8E024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_8E0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[50] = a2;
  v3[51] = a3;
  v3[49] = a1;
  v4 = sub_6620C(&qword_3BD858);
  v3[52] = v4;
  v3[53] = *(v4 - 8);
  v3[54] = swift_task_alloc();
  v5 = sub_6620C(&qword_3BD1B0);
  v3[55] = v5;
  v3[56] = *(v5 - 8);
  v3[57] = swift_task_alloc();
  v6 = sub_2C4C08();
  v3[58] = v6;
  v3[59] = *(v6 - 8);
  v3[60] = swift_task_alloc();
  sub_6620C(&unk_3CA260);
  v3[61] = swift_task_alloc();
  sub_2C4BF8();
  v3[62] = swift_task_alloc();
  v7 = sub_6620C(&qword_3BD478);
  v3[63] = v7;
  v3[64] = *(v7 - 8);
  v3[65] = swift_task_alloc();
  v8 = sub_6620C(&qword_3BC238);
  v3[66] = v8;
  v3[67] = *(v8 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v9 = type metadata accessor for Shelf();
  v3[70] = v9;
  v3[71] = *(v9 - 8);
  v3[72] = swift_task_alloc();
  v10 = sub_6620C(&qword_3BDAC0);
  v11 = swift_task_alloc();
  v3[73] = v11;
  *v11 = v3;
  v11[1] = sub_8E468;

  return BaseObjectGraph.inject<A>(_:)(v3 + 13, v10, v10);
}

uint64_t sub_8E468()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_8F478;
  }

  else
  {
    v2 = sub_8E57C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8E57C()
{
  v1 = v0[16];
  v2 = v0[17];
  sub_72084(v0 + 13, v1);
  sub_2C1F58();
  sub_72084(v0 + 18, v0[21]);
  v3 = sub_2BF3B8();
  v5 = v4;
  v0[75] = v4;
  v0[48] = 4;
  v8 = (*(v2 + 8) + **(v2 + 8));
  v6 = swift_task_alloc();
  v0[76] = v6;
  *v6 = v0;
  v6[1] = sub_8E704;

  return v8(v0 + 8, v3, v5, v0 + 48, v1, v2);
}

uint64_t sub_8E704()
{
  v1 = *v0;

  sub_68CD0(v1 + 144);

  return _swift_task_switch(sub_8E824, 0, 0);
}

uint64_t sub_8E824()
{
  sub_68CD0(v0 + 104);
  sub_2C1F58();
  sub_72084((v0 + 264), *(v0 + 288));
  v1 = sub_2BF3E8();
  sub_2C1F58();
  sub_72084((v0 + 304), *(v0 + 328));
  sub_2BF298();
  sub_2BF788();

  sub_68CD0(v0 + 304);
  sub_68CD0(v0 + 264);
  if (*(v0 + 248))
  {
    sub_68D1C((v0 + 224), v0 + 184);
    v2 = swift_task_alloc();
    *(v0 + 616) = v2;
    *v2 = v0;
    v2[1] = sub_8EA8C;
    v3 = *(v0 + 400);

    return sub_8F900(v0 + 16, v0 + 184, v3);
  }

  else
  {
    v5 = *(v0 + 464);
    v6 = *(v0 + 472);
    v7 = *(v0 + 392);
    sub_69198(v0 + 64, &qword_3BDAC8);
    sub_69198(v0 + 224, &qword_3BDAD0);
    (*(v6 + 104))(v7, enum case for ActionOutcome.unsupported(_:), v5);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_8EA8C()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_8F558;
  }

  else
  {
    v2 = sub_8EBA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8EBA0()
{
  v1 = *(v0 + 624);
  static Shelf.seriesHeader(from:seriesPromotionState:with:)((v0 + 184), v0 + 16, *(v0 + 400), *(v0 + 576));
  if (v1)
  {
    sub_9150C(v0 + 16);
    sub_68CD0(v0 + 184);
    sub_69198(v0 + 64, &qword_3BDAC8);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 576);
    v5 = *(v0 + 568);
    v6 = *(v0 + 552);
    v7 = *(v0 + 544);
    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v10 = *(v0 + 488);
    sub_6620C(&qword_3BC288);
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2E3F30;
    sub_91560(v4, v12 + v11);
    *v6 = v12;
    (*(v8 + 104))(v6, enum case for PageUpdateInstruction.replaceShelves<A, B>(_:), v9);
    sub_2C4BE8();
    (*(v8 + 16))(v7, v6, v9);
    v13 = sub_2BF088();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    type metadata accessor for Page();
    sub_915C4(&qword_3BD4F0, type metadata accessor for Page);
    sub_915C4(&qword_3BD4F8, type metadata accessor for Shelf);
    sub_2C10D8();
    v14 = swift_task_alloc();
    *(v0 + 632) = v14;
    *v14 = v0;
    v14[1] = sub_8EEF0;
    v15 = *(v0 + 456);
    v16 = *(v0 + 440);

    return BaseObjectGraph.inject<A>(_:)(v15, v16, v16);
  }
}

uint64_t sub_8EEF0()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_8F658;
  }

  else
  {
    v2 = sub_8F004;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8F004()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v5 = v0[53];
  v4 = v0[54];
  v6 = v0[52];
  v0[46] = v2;
  v0[47] = sub_72B74(&qword_3BD480, &qword_3BD478);
  v7 = sub_720C8(v0 + 43);
  (*(v3 + 16))(v7, v1, v2);
  (*(v5 + 104))(v4, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v6);
  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_8F148;
  v9 = v0[60];
  v10 = v0[54];
  v11 = v0[55];
  v12 = v0[50];

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v9, v0 + 43, v10, v12, v11);
}

uint64_t sub_8F148()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v4 = v2[56];
    v3 = v2[57];
    v5 = v2[55];
    (*(v2[53] + 8))(v2[54], v2[52]);
    (*(v4 + 8))(v3, v5);
    v6 = sub_8F7A8;
  }

  else
  {
    v8 = v2[59];
    v7 = v2[60];
    v10 = v2[57];
    v9 = v2[58];
    v11 = v2[55];
    v12 = v2[56];
    (*(v2[53] + 8))(v2[54], v2[52]);
    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
    sub_68CD0((v2 + 43));
    v6 = sub_8F304;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_8F304()
{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[49];
  (*(v0[64] + 8))(v0[65], v0[63]);
  (*(v3 + 8))(v2, v4);
  sub_9160C(v1);
  sub_9150C((v0 + 2));
  sub_68CD0((v0 + 23));
  sub_69198((v0 + 8), &qword_3BDAC8);
  (*(v6 + 104))(v7, enum case for ActionOutcome.performed(_:), v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_8F478()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_8F558()
{
  sub_68CD0(v0 + 184);
  sub_69198(v0 + 64, &qword_3BDAC8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_8F658()
{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[66];
  (*(v0[64] + 8))(v0[65], v0[63]);
  (*(v3 + 8))(v2, v4);
  sub_9160C(v1);
  sub_9150C((v0 + 2));
  sub_68CD0((v0 + 23));
  sub_69198((v0 + 8), &qword_3BDAC8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_8F7A8()
{
  v1 = v0[72];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[66];
  (*(v0[64] + 8))(v0[65], v0[63]);
  (*(v3 + 8))(v2, v4);
  sub_9160C(v1);
  sub_9150C((v0 + 2));
  sub_68CD0((v0 + 23));
  sub_69198((v0 + 8), &qword_3BDAC8);
  sub_68CD0((v0 + 43));

  v5 = v0[1];

  return v5();
}

uint64_t sub_8F900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  return _swift_task_switch(sub_8F924, 0, 0);
}

uint64_t sub_8F924()
{
  v1 = *(v0 + 408);
  v3 = v1[3];
  v2 = v1[4];
  sub_72084(v1, v3);
  SeriesInfo.getPromotionState()(v3, v2, v0 + 16);
  sub_91668(v0 + 16, v0 + 64);
  v4 = (v0 + 64);
  if (*(v0 + 104) != 4)
  {
    sub_9150C(v4);
    goto LABEL_5;
  }

  sub_68D1C(v4, v0 + 112);
  sub_72084((v0 + 112), *(v0 + 136));
  v5 = sub_2BF3E8();
  if (v5)
  {

    sub_68CD0(v0 + 112);
LABEL_5:
    v6 = *(v0 + 400);
    v7 = *(v0 + 16);
    v8 = *(v0 + 32);
    *(v6 + 25) = *(v0 + 41);
    *v6 = v7;
    v6[1] = v8;
    v9 = *(v0 + 8);

    return v9();
  }

  v11 = sub_6620C(&qword_3BD1F0);
  v12 = swift_task_alloc();
  *(v0 + 424) = v12;
  *v12 = v0;
  v12[1] = sub_8FAD4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 152, v11, v11);
}

uint64_t sub_8FAD4()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_90B64;
  }

  else
  {
    v2 = sub_8FBE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8FBE8()
{
  sub_72084((v0 + 112), *(v0 + 136));
  v1 = sub_2BF8F8();
  if (v1)
  {
    if (v1 != 1)
    {
      sub_2C61F8(21);
      *(v0 + 352) = 0;
      *(v0 + 360) = 0xE000000000000000;
      v17._object = 0x8000000000302240;
      v17._countAndFlagsBits = 0xD000000000000013;
      sub_2C5978(v17);
      sub_72084((v0 + 112), *(v0 + 136));
      *(v0 + 57) = sub_2BF8F8();
      sub_2C6368();
      return sub_2C6378();
    }

    sub_6620C(&qword_3BF590);
    v2 = swift_allocObject();
    *(v0 + 464) = v2;
    *(v2 + 16) = xmmword_2E3F30;
    sub_72084((v0 + 112), *(v0 + 136));
    *(v2 + 32) = sub_2BF3B8();
    *(v2 + 40) = v3;
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    sub_72084((v0 + 152), v4);
    *(v0 + 376) = v2;
    v6 = swift_task_alloc();
    *(v0 + 472) = v6;
    v7 = sub_6620C(&qword_3BDAD8);
    v8 = sub_72B74(&qword_3BDAE0, &qword_3BDAD8);
    *v6 = v0;
    v6[1] = sub_90578;
    v9 = *(v0 + 416);
    v10 = v0 + 368;
    v11 = v0 + 376;
  }

  else
  {
    sub_6620C(&qword_3BF590);
    v12 = swift_allocObject();
    *(v0 + 440) = v12;
    *(v12 + 16) = xmmword_2E3F30;
    sub_72084((v0 + 112), *(v0 + 136));
    *(v12 + 32) = sub_2BF3B8();
    *(v12 + 40) = v13;
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    sub_72084((v0 + 152), v4);
    *(v0 + 392) = v12;
    v14 = swift_task_alloc();
    *(v0 + 448) = v14;
    v7 = sub_6620C(&qword_3BDAF0);
    v8 = sub_72B74(&qword_3BDAF8, &qword_3BDAF0);
    *v14 = v0;
    v14[1] = sub_8FF8C;
    v9 = *(v0 + 416);
    v10 = v0 + 384;
    v11 = v0 + 392;
  }

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v10, v11, v9, v7, v8, v4, v5);
}

uint64_t sub_8FF8C()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_90BD0;
  }

  else
  {

    v2 = sub_900A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_900A8()
{
  v28 = v0;
  v1 = *(v0 + 384);
  if (v1 >> 62)
  {
    sub_2BF848();

    v2 = sub_2C6388();
  }

  else
  {

    sub_2C65F8();
    sub_2BF848();
    v2 = v1;
  }

  if (!(v2 >> 62))
  {
    if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_5;
    }

LABEL_16:

LABEL_17:
    if (qword_3BB830 == -1)
    {
LABEL_18:
      v13 = sub_2C00B8();
      sub_57AD8(v13, qword_3C3128);
      sub_691F8(v0 + 112, v0 + 312);
      v14 = sub_2C0098();
      v15 = sub_2C5DC8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v27 = v17;
        *v16 = 136315138;
        sub_72084((v0 + 312), *(v0 + 336));
        v18 = sub_2BF3B8();
        v20 = v19;
        sub_68CD0(v0 + 312);
        v21 = sub_5CCF4(v18, v20, &v27);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_0, v14, v15, "Attempted to fetch store data for assetID: %s, but received empty response.", v16, 0xCu);
        sub_68CD0(v17);
      }

      else
      {

        sub_68CD0(v0 + 312);
      }

      v22 = *(v0 + 400);
      v23 = *(v0 + 16);
      v24 = *(v0 + 32);
      *(v22 + 25) = *(v0 + 41);
      *v22 = v23;
      v22[1] = v24;
      goto LABEL_22;
    }

LABEL_27:
    swift_once();
    goto LABEL_18;
  }

  if (!sub_2C6398())
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_2C6208();
  }

  else
  {
    if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_27;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  sub_72084((v0 + 112), *(v0 + 136));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_2C60B8();
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  sub_2BF388();
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v8, v6);

    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
  }

  else
  {
    *(v0 + 296) = AssociatedTypeWitness;
    *(v0 + 304) = swift_getAssociatedConformanceWitness();
    v10 = sub_720C8((v0 + 272));
    (*(v9 + 32))(v10, v8, AssociatedTypeWitness);
  }

  v11 = v4;
  sub_2BF748();

  sub_69198(v0 + 272, &qword_3BDAE8);
  if (!*(v0 + 256))
  {
    sub_69198(v0 + 232, &unk_3C2550);
    goto LABEL_17;
  }

  v12 = *(v0 + 400);
  sub_9150C(v0 + 16);
  sub_68D1C((v0 + 232), v12);
  *(v12 + 40) = 4;
LABEL_22:
  sub_68CD0(v0 + 152);
  sub_68CD0(v0 + 112);
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_90578()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_90DDC;
  }

  else
  {

    v2 = sub_90694;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_90694()
{
  v28 = v0;
  v1 = *(v0 + 368);
  if (v1 >> 62)
  {
    sub_2BF848();

    v2 = sub_2C6388();
  }

  else
  {

    sub_2C65F8();
    sub_2BF848();
    v2 = v1;
  }

  if (!(v2 >> 62))
  {
    if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_5;
    }

LABEL_16:

LABEL_17:
    if (qword_3BB830 == -1)
    {
LABEL_18:
      v13 = sub_2C00B8();
      sub_57AD8(v13, qword_3C3128);
      sub_691F8(v0 + 112, v0 + 312);
      v14 = sub_2C0098();
      v15 = sub_2C5DC8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v27 = v17;
        *v16 = 136315138;
        sub_72084((v0 + 312), *(v0 + 336));
        v18 = sub_2BF3B8();
        v20 = v19;
        sub_68CD0(v0 + 312);
        v21 = sub_5CCF4(v18, v20, &v27);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_0, v14, v15, "Attempted to fetch store data for assetID: %s, but received empty response.", v16, 0xCu);
        sub_68CD0(v17);
      }

      else
      {

        sub_68CD0(v0 + 312);
      }

      v22 = *(v0 + 400);
      v23 = *(v0 + 16);
      v24 = *(v0 + 32);
      *(v22 + 25) = *(v0 + 41);
      *v22 = v23;
      v22[1] = v24;
      goto LABEL_22;
    }

LABEL_27:
    swift_once();
    goto LABEL_18;
  }

  if (!sub_2C6398())
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_2C6208();
  }

  else
  {
    if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_27;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  sub_72084((v0 + 112), *(v0 + 136));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_2C60B8();
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  sub_2BF388();
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v8, v6);

    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
  }

  else
  {
    *(v0 + 296) = AssociatedTypeWitness;
    *(v0 + 304) = swift_getAssociatedConformanceWitness();
    v10 = sub_720C8((v0 + 272));
    (*(v9 + 32))(v10, v8, AssociatedTypeWitness);
  }

  v11 = v4;
  sub_2BF748();

  sub_69198(v0 + 272, &qword_3BDAE8);
  if (!*(v0 + 256))
  {
    sub_69198(v0 + 232, &unk_3C2550);
    goto LABEL_17;
  }

  v12 = *(v0 + 400);
  sub_9150C(v0 + 16);
  sub_68D1C((v0 + 232), v12);
  *(v12 + 40) = 4;
LABEL_22:
  sub_68CD0(v0 + 152);
  sub_68CD0(v0 + 112);
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_90B64()
{
  sub_9150C(v0 + 16);
  sub_68CD0(v0 + 112);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_90BD0()
{
  v16 = v0;

  if (qword_3BB830 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C3128);
  sub_691F8(v0 + 112, v0 + 192);
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    sub_72084((v0 + 192), *(v0 + 216));
    v6 = sub_2BF3B8();
    v8 = v7;
    sub_68CD0(v0 + 192);
    v9 = sub_5CCF4(v6, v8, &v15);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "Failed to fetch store data for assetID: %s.", v4, 0xCu);
    sub_68CD0(v5);
  }

  else
  {

    sub_68CD0(v0 + 192);
  }

  v10 = *(v0 + 400);
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);
  *(v10 + 25) = *(v0 + 41);
  *v10 = v11;
  v10[1] = v12;
  sub_68CD0(v0 + 152);
  sub_68CD0(v0 + 112);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_90DDC()
{
  v16 = v0;

  if (qword_3BB830 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C3128);
  sub_691F8(v0 + 112, v0 + 192);
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    sub_72084((v0 + 192), *(v0 + 216));
    v6 = sub_2BF3B8();
    v8 = v7;
    sub_68CD0(v0 + 192);
    v9 = sub_5CCF4(v6, v8, &v15);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "Failed to fetch store data for assetID: %s.", v4, 0xCu);
    sub_68CD0(v5);
  }

  else
  {

    sub_68CD0(v0 + 192);
  }

  v10 = *(v0 + 400);
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);
  *(v10 + 25) = *(v0 + 41);
  *v10 = v11;
  v10[1] = v12;
  sub_68CD0(v0 + 152);
  sub_68CD0(v0 + 112);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_90FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_2C1F68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  (*(v8 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  (*(v8 + 32))(v11 + v10, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_6620C(&qword_3BDAB8);

  v12 = sub_2C5738();
  v13 = sub_2C5C58();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2E4D70;
  v14[5] = v11;
  v14[6] = v12;

  sub_1CDB58(0, 0, v6, &unk_2E4D80, v14);

  return v12;
}

uint64_t sub_91240()
{
  v1 = sub_2C1F68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_91304(uint64_t a1)
{
  v4 = *(sub_2C1F68() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7100C;

  return sub_8E0DC(a1, v6, v1 + v5);
}

uint64_t sub_913E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_91430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7100C;

  return sub_1CE044(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_91560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_915C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_9160C(uint64_t a1)
{
  v2 = type metadata accessor for Shelf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActionOrigin.init(jsActionOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2C06E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v8 = sub_5D228(0xD000000000000013, 0x8000000000302260), (v9 & 1) != 0))
  {
    sub_68C64(*(a1 + 56) + 32 * v8, v60);

    sub_6620C(&qword_3BD860);
    if (swift_dynamicCast())
    {
      v10 = v58;
      if (*(v58 + 16))
      {
        v11 = sub_5D228(0xD000000000000011, 0x8000000000302280);
        v12 = &enum case for ActionOrigin.Kind.other(_:);
        if (v13)
        {
          sub_68C64(*(v10 + 56) + 32 * v11, v60);
          if (swift_dynamicCast())
          {
            if (v58)
            {
              v12 = &enum case for ActionOrigin.Kind.header(_:);
            }
          }
        }
      }

      else
      {
        v12 = &enum case for ActionOrigin.Kind.other(_:);
      }

      if (*(v10 + 16) && (v17 = sub_5D228(0x6449746E65726170, 0xE800000000000000), (v18 & 1) != 0) && (sub_68C64(*(v10 + 56) + 32 * v17, v60), (swift_dynamicCast() & 1) != 0))
      {
        v19 = v59;
        v57 = v58;
      }

      else
      {
        v57 = 0;
        v19 = 0xE000000000000000;
      }

      v56 = v19;
      if (*(v10 + 16) && (v20 = sub_5D228(0xD000000000000012, 0x80000000003022A0), (v21 & 1) != 0))
      {
        sub_68C64(*(v10 + 56) + 32 * v20, v60);
        v22 = swift_dynamicCast();
        if (v22)
        {
          v23 = v58;
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v24 = v59;
        }

        else
        {
          v24 = 0;
        }

        v54 = v24;
        v55 = v23;
        if (!*(v10 + 16))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v54 = 0;
        v55 = 0;
        if (!*(v10 + 16))
        {
          goto LABEL_38;
        }
      }

      v25 = sub_5D228(0x49746E65746E6F63, 0xE900000000000064);
      if (v26)
      {
        sub_68C64(*(v10 + 56) + 32 * v25, v60);
        v27 = swift_dynamicCast();
        if (v27)
        {
          v28 = v58;
        }

        else
        {
          v28 = 0;
        }

        if (v27)
        {
          v29 = v59;
        }

        else
        {
          v29 = 0;
        }

        v52 = v29;
        v53 = v28;
LABEL_39:
        (*(v5 + 104))(v7, *v12, v4);
        if (*(v10 + 16) && (v30 = sub_5D228(0x6449736569726573, 0xE800000000000000), (v31 & 1) != 0))
        {
          sub_68C64(*(v10 + 56) + 32 * v30, v60);
          v32 = swift_dynamicCast();
          if (v32)
          {
            v33 = v58;
          }

          else
          {
            v33 = 0;
          }

          if (v32)
          {
            v34 = v59;
          }

          else
          {
            v34 = 0;
          }

          v50 = v34;
          v51 = v33;
          if (!*(v10 + 16))
          {
            goto LABEL_59;
          }
        }

        else
        {
          v50 = 0;
          v51 = 0;
          if (!*(v10 + 16))
          {
            goto LABEL_59;
          }
        }

        v35 = sub_5D228(0x444965726E6567, 0xE700000000000000);
        if (v36)
        {
          sub_68C64(*(v10 + 56) + 32 * v35, v60);
          v37 = swift_dynamicCast();
          if (v37)
          {
            v38 = v58;
          }

          else
          {
            v38 = 0;
          }

          if (v37)
          {
            v39 = v59;
          }

          else
          {
            v39 = 0;
          }

          v48 = v39;
          v49 = v38;
          if (!*(v10 + 16))
          {
            goto LABEL_63;
          }

          goto LABEL_60;
        }

LABEL_59:
        v48 = 0;
        v49 = 0;
        if (!*(v10 + 16))
        {
          goto LABEL_63;
        }

LABEL_60:
        v40 = sub_5D228(0x697463656C6C6F63, 0xEC00000044496E6FLL);
        if (v41)
        {
          sub_68C64(*(v10 + 56) + 32 * v40, v60);
          swift_dynamicCast();
          if (!*(v10 + 16))
          {
            goto LABEL_67;
          }

          goto LABEL_64;
        }

LABEL_63:
        if (!*(v10 + 16))
        {
          goto LABEL_67;
        }

LABEL_64:
        v42 = sub_5D228(0x4449726F68747561, 0xE800000000000000);
        if (v43)
        {
          sub_68C64(*(v10 + 56) + 32 * v42, v60);
          swift_dynamicCast();
          if (!*(v10 + 16))
          {
            goto LABEL_71;
          }

          goto LABEL_68;
        }

LABEL_67:
        if (!*(v10 + 16))
        {
          goto LABEL_71;
        }

LABEL_68:
        v44 = sub_5D228(0x65736163776F6C66, 0xEA00000000004449);
        if (v45)
        {
          sub_68C64(*(v10 + 56) + 32 * v44, v60);
          swift_dynamicCast();
          if (!*(v10 + 16))
          {
            goto LABEL_74;
          }

LABEL_72:
          v46 = sub_5D228(0x44496B63697262, 0xE700000000000000);
          if (v47)
          {
            sub_68C64(*(v10 + 56) + 32 * v46, v60);

            swift_dynamicCast();
LABEL_75:
            sub_2C0758();
            v14 = 0;
            goto LABEL_12;
          }

LABEL_74:

          goto LABEL_75;
        }

LABEL_71:
        if (!*(v10 + 16))
        {
          goto LABEL_74;
        }

        goto LABEL_72;
      }

LABEL_38:
      v52 = 0;
      v53 = 0;
      goto LABEL_39;
    }
  }

  else
  {
  }

  v14 = 1;
LABEL_12:
  v15 = sub_2C0778();
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

unint64_t ActionOrigin.appAnalyticsMetricsFeedOptions.getter()
{
  v0 = sub_2C06E8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  sub_6620C(&qword_3BC8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E4DD0;
  *(inited + 32) = 0x49746E65746E6F63;
  v24[0] = inited + 32;
  *(inited + 40) = 0xE900000000000064;
  v8 = sub_2C0748();
  v10 = v9;
  v11 = sub_6620C(&qword_3BDB00);
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = 0x6449746E65726170;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_2C0768();
  *(inited + 104) = v12;
  *(inited + 120) = v11;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x80000000003022A0;
  *(inited + 144) = sub_2C06C8();
  *(inited + 152) = v13;
  *(inited + 168) = v11;
  strcpy((inited + 176), "parentSeriesID");
  *(inited + 191) = -18;
  *(inited + 192) = sub_2C0738();
  *(inited + 200) = v14;
  *(inited + 216) = v11;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000000003022C0;
  *(inited + 240) = sub_2C0728();
  *(inited + 248) = v15;
  *(inited + 264) = v11;
  *(inited + 272) = 0x73756F6976657270;
  *(inited + 280) = 0xEF44496B63697242;
  *(inited + 288) = sub_2C0708();
  *(inited + 296) = v16;
  *(inited + 312) = v11;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = 0x80000000003022E0;
  *(inited + 336) = sub_2C06D8();
  *(inited + 344) = v17;
  *(inited + 360) = v11;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = 0x8000000000302300;
  *(inited + 384) = sub_2C06B8();
  *(inited + 392) = v18;
  *(inited + 408) = v11;
  *(inited + 416) = 0x73756F6976657270;
  *(inited + 424) = 0xEF444965726E6547;
  *(inited + 432) = sub_2C0718();
  *(inited + 440) = v19;
  *(inited + 456) = v11;
  *(inited + 464) = 0xD000000000000011;
  *(inited + 472) = 0x8000000000302280;
  sub_2C06F8();
  (*(v1 + 104))(v3, enum case for ActionOrigin.Kind.header(_:), v0);
  sub_92134();
  sub_2C5A88();
  sub_2C5A88();
  if (v24[3] == v24[1] && v24[4] == v24[2])
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_2C65B8();
  }

  v21 = *(v1 + 8);
  v21(v3, v0);
  v21(v6, v0);

  *(inited + 504) = &type metadata for Bool;
  *(inited + 480) = v20 & 1;
  v22 = sub_6759C(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BC318);
  swift_arrayDestroy();
  return v22;
}

unint64_t sub_92134()
{
  result = qword_3BDB08;
  if (!qword_3BDB08)
  {
    sub_2C06E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BDB08);
  }

  return result;
}

uint64_t sub_922CC()
{
}

id sub_9230C()
{
  v1 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_editionsCoverResources;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = swift_unknownObjectRelease())
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
    [swift_unknownObjectRetain() removeNonVolatileInterest];
    [v11 removeInterest];
    [v11 removeWithObserver:v0];
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v12.receiver = v0;
      v12.super_class = type metadata accessor for WantToReadBarButtonItem();
      return objc_msgSendSuper2(&v12, "dealloc");
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_92508()
{
  sub_6620C(&unk_3C0230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 32) = sub_2C0258();
  *(inited + 40) = &protocol witness table for UITraitDisplayScale;
  *(inited + 48) = sub_2C0268();
  *(inited + 56) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_10F510(inited);
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_9259C()
{
  v1 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  sub_2ADC74();
  v4 = sub_2C5C58();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_2C5C18();
  v5 = v0;
  v6 = sub_2C5C08();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_1C0888(0, 0, v3, &unk_2E4E50, v7);
}

uint64_t sub_92700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_2C5C18();
  v4[4] = sub_2C5C08();
  v6 = sub_2C5BB8();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_92798, v6, v5);
}

uint64_t sub_92798()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v0[8] = sub_DA510();
    v4 = sub_6620C(&unk_3BDC20);
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_928F0;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v4, v4);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_928F0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_92B24;
  }

  else
  {
    v5 = sub_92A2C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_92A2C()
{
  v1 = v0[7];
  v2 = v0[3];

  v3 = v0[2];
  v4 = [v3 stateCenter];
  [v4 removeObserver:v2];

  sub_92B9C(v3);
  sub_92D74(v3);
  sub_931A0();
  sub_93A50();
  v5 = sub_949DC();
  [v2 setMenu:v5];

  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_92B24()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_92B9C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_isInWantToRead;
  *(v1 + OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_isInWantToRead) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
    v7 = Strong;
    swift_beginAccess();
    sub_6932C(v7 + v6, &v14, &unk_3C2550);

    if (*(&v15 + 1))
    {
      sub_68D1C(&v14, v17);
      v8 = [a1 stateCenter];
      sub_72084(v17, v18);
      sub_2BF3B8();
      v9 = sub_2C5888();

      [v8 addObserver:v2 forItemIdentifier:v9];

      sub_72084(v17, v18);
      sub_2BF3B8();
      v10 = sub_2C5888();

      v11 = [a1 itemStateWithIdentifier:v10];

      v12 = [v11 wantToRead];
      swift_unknownObjectRelease();
      *(v2 + v4) = v12;
      return sub_68CD0(v17);
    }
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  return sub_69198(&v14, &unk_3C2550);
}

uint64_t sub_92D74(void *a1)
{
  v2 = v1;
  v3 = sub_678C8(&_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_editionsIsInWantToRead;
  swift_beginAccess();
  *(v2 + v4) = v3;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    return sub_69198(&v40, &unk_3C2550);
  }

  v6 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v7 = Strong;
  swift_beginAccess();
  sub_6932C(v7 + v6, &v40, &unk_3C2550);

  if (!*(&v41 + 1))
  {
    return sub_69198(&v40, &unk_3C2550);
  }

  sub_68D1C(&v40, v43);
  sub_72084(v43, v44);
  if ((sub_2BFA38() & 1) == 0)
  {
    return sub_68CD0(v43);
  }

  sub_72084(v43, v44);
  v8 = sub_2BFA08();
  if (!v8)
  {
    return sub_68CD0(v43);
  }

  v37 = *(v8 + 16);
  if (!v37)
  {
LABEL_22:

    return sub_68CD0(v43);
  }

  v9 = 0;
  v10 = v8 + 32;
  v36 = v8;
  while (v9 < *(v8 + 16))
  {
    sub_691F8(v10, &v40);
    v13 = [a1 stateCenter];
    sub_72084(&v40, *(&v41 + 1));
    sub_2BF3B8();
    v14 = sub_2C5888();

    [v13 addObserver:v2 forItemIdentifier:v14];

    sub_72084(&v40, *(&v41 + 1));
    v15 = sub_2BF3B8();
    v17 = v16;
    sub_72084(&v40, *(&v41 + 1));
    sub_2BF3B8();
    sub_68CD0(&v40);
    v18 = sub_2C5888();

    v19 = [a1 itemStateWithIdentifier:v18];

    v20 = [v19 wantToRead];
    swift_unknownObjectRelease();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v2 + v4);
    v39 = v22;
    *(v2 + v4) = 0x8000000000000000;
    v23 = sub_5D228(v15, v17);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_26;
    }

    v29 = v24;
    if (v22[3] < v28)
    {
      sub_5E468(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_5D228(v15, v17);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_28;
      }

LABEL_15:
      if (v29)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v34 = v23;
    sub_63154();
    v23 = v34;
    if (v29)
    {
LABEL_7:
      v11 = v23;

      v12 = v39;
      *(v39[7] + v11) = v20;
      goto LABEL_8;
    }

LABEL_16:
    v12 = v22;
    v22[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v22[6] + 16 * v23);
    *v31 = v15;
    v31[1] = v17;
    *(v22[7] + v23) = v20;
    v32 = v22[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_27;
    }

    v22[2] = v33;
LABEL_8:
    ++v9;
    *(v2 + v4) = v12;
    swift_endAccess();
    v10 += 40;
    v8 = v36;
    if (v37 == v9)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_2C6678();
  __break(1u);
  return result;
}

uint64_t sub_931A0()
{
  v1 = v0;
  v2 = sub_6620C(&qword_3BDCA8);
  __chkstk_darwin(v2 - 8);
  v61 = &v48[-v3];
  v4 = sub_6620C(&unk_3BDCB0);
  __chkstk_darwin(v4 - 8);
  v62 = &v48[-v5];
  v63 = sub_2C1438();
  v59 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_editionsCoverResources;
  swift_beginAccess();
  v65 = v7;
  v8 = *(v1 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v60 = 0;
  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_9:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = *(*(v8 + 56) + ((v15 << 9) | (8 * v16)));
      [swift_unknownObjectRetain() removeNonVolatileInterest];
      [v17 removeInterest];
      [v17 removeWithObserver:v1];
      result = swift_unknownObjectRelease();
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v18 = sub_679C4(&_swiftEmptyArrayStorage);
  *(v1 + v65) = v18;

  v19 = OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_sourceViewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    return sub_69198(&v67, &unk_3C2550);
  }

  v21 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v22 = Strong;
  swift_beginAccess();
  sub_6932C(v22 + v21, &v67, &unk_3C2550);

  if (!*(&v68 + 1))
  {
    return sub_69198(&v67, &unk_3C2550);
  }

  sub_68D1C(&v67, &v70);
  sub_72084(&v70, v71);
  if (sub_2BFA38())
  {
    sub_72084(&v70, v71);
    v23 = sub_2BFA08();
    if (v23)
    {
      v51 = v23;
      v24 = *(v23 + 16);
      v25 = v60;
      v26 = v63;
      v27 = v64;
      if (v24)
      {
        v28 = v51 + 32;
        v57 = (v59 + 13);
        v56 = (v59 + 7);
        v53 = (v59 + 4);
        v52 = enum case for ImageResourceSource.network(_:);
        v50 = (v59 + 6);
        v55 = (v59 + 1);
        v49 = enum case for ImageResourceSource.persistedCache(_:);
        v54 = v1;
        v58 = v19;
        do
        {
          sub_691F8(v28, &v67);
          v29 = swift_unknownObjectWeakLoadStrong();
          if (v29)
          {
            v30 = v29;
            sub_DA510();
            if (v25)
            {

              v25 = 0;
            }

            else
            {
              sub_6620C(&qword_3BD1E8);
              sub_2C4DB8();

              v31 = [v30 traitCollection];
              sub_72084(&v67, *(&v68 + 1));
              v32 = sub_2BF9A8();
              if (v33)
              {
                v34 = v62;
                *v62 = v32;
                v34[1] = v33;
                (*v57)(v34, v52, v26);
                (*v56)(v34, 0, 1, v26);
                (*v53)(v27, v34, v26);
              }

              else
              {
                v35 = *v56;
                v60 = v31;
                v36 = v62;
                v35(v62, 1, 1, v26);
                sub_72084(&v67, *(&v68 + 1));
                *v27 = sub_2BF3B8();
                v27[1] = v37;
                (*v57)(v27, v49, v26);
                v31 = v60;
                if ((*v50)(v36, 1, v26) != 1)
                {
                  sub_69198(v62, &unk_3BDCB0);
                }
              }

              v60 = v66[4];
              v59 = sub_72084(v66, v66[3]);
              sub_72084(&v67, *(&v68 + 1));
              sub_954C8();
              [v31 displayScale];
              v38 = *(&v68 + 1);
              sub_72084(&v67, *(&v68 + 1));
              v39 = [v31 userInterfaceStyle] != &dword_0 + 2;
              v40 = v61;
              sub_95574(v39, v38, v61);
              v27 = v64;
              v41 = sub_2C18A8();

              sub_69198(v40, &qword_3BDCA8);
              v26 = v63;
              (*v55)(v27, v63);
              sub_68CD0(v66);
              if (v41)
              {
                sub_72084(&v67, *(&v68 + 1));
                v42 = sub_2BF3B8();
                v44 = v43;
                v45 = v54;
                swift_beginAccess();
                v46 = swift_unknownObjectRetain();
                v47 = v44;
                v27 = v64;
                sub_1B5D40(v46, v42, v47);
                swift_endAccess();
                [v41 addWithObserver:v45];
                [v41 addInterest];
                [v41 addNonVolatileInterest];
                swift_unknownObjectRelease();
              }
            }
          }

          sub_68CD0(&v67);
          v28 += 40;
          --v24;
        }

        while (v24);
      }
    }
  }

  return sub_68CD0(&v70);
}

uint64_t sub_93A50()
{
  v1 = v0;
  v2 = sub_2C5118();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v35 - v6;
  v8 = sub_2C4838();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C4818();
  v36 = *(v11 - 8);
  v37 = v11;
  __chkstk_darwin(v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    goto LABEL_5;
  }

  v15 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v16 = Strong;
  swift_beginAccess();
  sub_6932C(v16 + v15, &v42, &unk_3C2550);

  v17 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
LABEL_5:
    sub_69198(&v42, &unk_3C2550);
    v45 = 0u;
    v46 = 0u;
    v47 = 0;
    goto LABEL_6;
  }

  v18 = v44;
  sub_72084(&v42, *(&v43 + 1));
  v19 = v1[OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_isInWantToRead];
  *(&v46 + 1) = sub_2C0638();
  v47 = sub_969BC(&qword_3BDC68, &type metadata accessor for AssetAction);
  v20 = sub_720C8(&v45);
  sub_9405C(v19, 0, 0, v17, v18, v20);
  sub_68CD0(&v42);
LABEL_6:
  v21 = OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_actionModel;
  swift_beginAccess();
  sub_9694C(&v45, &v1[v21]);
  swift_endAccess();
  sub_2AE468();
  sub_69198(&v45, &unk_3BDC90);
  v22 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_isInWantToRead;
  v23 = objc_opt_self();
  v24 = sub_2C5888();
  v25 = [v23 __systemImageNamedSwift:v24];

  v26 = [v1 image];
  if (v26 && (v26, v25))
  {
    v27 = v25;
    sub_2C4808();
    sub_2C4828();
    sub_969BC(&qword_3BDCA0, &type metadata accessor for ReplaceSymbolEffect);
    v28 = v37;
    sub_2C5E18();

    (*(v38 + 8))(v10, v39);
    (*(v36 + 8))(v13, v28);
  }

  else
  {
    [v1 setImage:v25];
  }

  sub_1DA078();
  v29 = sub_2C5888();

  [v1 setAccessibilityLabel:v29];

  v45 = 0u;
  v46 = 0u;
  v42 = 0u;
  v43 = 0u;
  sub_2C50B8();
  sub_69198(&v42, qword_3C0250);
  sub_69198(&v45, qword_3C0250);
  v30 = v1[v22];
  *(&v46 + 1) = &type metadata for Bool;
  LOBYTE(v45) = v30;
  sub_2C50F8();
  v31 = *(v40 + 8);
  v32 = v5;
  v33 = v41;
  v31(v32, v41);
  sub_69198(&v45, qword_3C0250);
  type metadata accessor for WantToReadBarButtonItem();
  sub_2C5F08();

  return (v31)(v7, v33);
}

uint64_t sub_9405C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a3;
  v78 = a2;
  v73 = a6;
  v10 = sub_2BE5C8();
  v71 = *(v10 - 8);
  v72 = v10;
  __chkstk_darwin(v10);
  v70 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v12 - 8);
  v69 = &v48[-v13];
  v58 = sub_2C2198();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v64 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_6620C(&unk_3BDC80);
  __chkstk_darwin(v15 - 8);
  v76 = &v48[-v16];
  v17 = sub_2C22F8();
  v66 = *(v17 - 8);
  v67 = v17;
  __chkstk_darwin(v17);
  v63 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_6620C(&unk_3C4370);
  __chkstk_darwin(v19 - 8);
  v21 = &v48[-v20];
  v22 = sub_2C2178();
  v74 = *(v22 - 8);
  v75 = v22;
  __chkstk_darwin(v22);
  v24 = &v48[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_2C4BF8();
  __chkstk_darwin(v25 - 8);
  v77 = &v48[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = sub_2C0608();
  v62 = *(v65 - 8);
  v27 = __chkstk_darwin(v65);
  v59 = &v48[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v30 = &v48[-v29];
  v31 = sub_2C2208();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v48[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_2BF3B8();
  v54 = v35;
  v60 = v32;
  v36 = *(v32 + 104);
  v49 = a1;
  v61 = v31;
  if (a1)
  {
    v36(v34, enum case for Metrics.ClickActionType.removeFromWantToRead(_:), v31);
    sub_2C05F8();
  }

  else
  {
    v36(v34, enum case for Metrics.ClickActionType.addToWantToRead(_:), v31);
    sub_2C05E8();
  }

  v57 = v30;
  v53 = sub_2BF908();
  (*(v74 + 104))(v24, enum case for Metrics.TargetType.button(_:), v75);
  v79[3] = a4;
  v79[4] = a5;
  v37 = sub_720C8(v79);
  (*(*(a4 - 8) + 16))(v37, v6, a4);
  sub_2C21B8();
  sub_68CD0(v79);
  v51 = a5;
  v50 = v6;
  sub_2BF968();
  v38 = sub_2BE3B8();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v21, 1, v38) == 1)
  {
    sub_69198(v21, &unk_3C4370);
  }

  else
  {
    sub_2BE378();
    (*(v39 + 8))(v21, v38);
  }

  v40 = sub_2C2258();
  (*(*(v40 - 8) + 56))(v76, 1, 1, v40);
  (*(v56 + 104))(v64, enum case for Metrics.LocationType.button(_:), v58);
  if (v78)
  {
    if (v49)
    {
      sub_18ECD4(v50, a4);
    }

    else
    {
      sub_18EF24(v50, a4);
    }
  }

  swift_bridgeObjectRetain_n();
  v41 = v63;
  sub_2C22E8();
  v52 = v34;
  sub_2C2118();

  (*(v66 + 8))(v41, v67);
  (*(v74 + 8))(v24, v75);
  v42 = v62;
  v43 = v57;
  v44 = v65;
  (*(v62 + 16))(v59, v57, v65);
  v45 = sub_2BF088();
  (*(*(v45 - 8) + 56))(v69, 1, 1, v45);
  v46 = v70;
  sub_2BE5B8();
  sub_2BE598();
  (*(v71 + 8))(v46, v72);
  sub_2C05D8();
  (*(v42 + 8))(v43, v44);
  return (*(v60 + 8))(v52, v61);
}

uint64_t sub_949DC()
{
  v1 = v0;
  v2 = sub_6620C(&qword_3BDC30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  v7 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v8 = Strong;
  swift_beginAccess();
  sub_6932C(v8 + v7, &v27, &unk_3C2550);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_69198(&v27, &unk_3C2550);
    return 0;
  }

  sub_68D1C(&v27, v32);
  sub_72084(v32, v33);
  if ((sub_2BFA38() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_72084(v32, v33);
  v9 = sub_2BFA08();
  if (!v9)
  {
    goto LABEL_13;
  }

  if (!*(v9 + 16))
  {

LABEL_13:
    sub_68CD0(v32);
    return 0;
  }

  v10 = v9;
  v11 = sub_96594(v32);
  *&v27 = v10;
  sub_6620C(&qword_3BDC38);
  sub_72B74(&qword_3BDC40, &qword_3BDC38);
  sub_2BFF38();
  sub_72B74(&qword_3BDC48, &qword_3BDC30);
  v12 = sub_2C5D48();
  if (v12)
  {
    v13 = v12;
    v26 = v3;
    v31 = &_swiftEmptyArrayStorage;
    sub_2C62A8();
    result = sub_2C5D18();
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v15 = sub_2C5D88();
      sub_6932C(v16, &v27, &unk_3BDC50);
      v15(v30, 0);
      sub_94EDC(v27, &v27 + 1, v11, v1);
      sub_69198(&v27, &unk_3BDC50);
      sub_2C6278();
      sub_2C62B8();
      sub_2C62C8();
      sub_2C6288();
      sub_2C5D68();
      --v13;
    }

    while (v13);

    (*(v26 + 8))(v5, v2);
    v17 = v31;
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    v17 = &_swiftEmptyArrayStorage;
  }

  v18 = sub_1DA078();
  v20 = v19;
  if (v17 >> 62)
  {
    sub_66278(0, &qword_3C0240);

    v21 = sub_2C6388();
  }

  else
  {

    sub_2C65F8();
    sub_66278(0, &qword_3C0240);
    v21 = v17;
  }

  sub_66278(0, &qword_3BDC60);
  v35._countAndFlagsBits = v18;
  v35._object = v20;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v34.value.super.isa = 0;
  v34.is_nil = 0;
  v22.value = (&dword_0 + 1);
  isa = sub_2C5F58(v35, v36, v34, v22, 0xFFFFFFFFFFFFFFFFLL, v21, v24).super.super.isa;
  sub_68CD0(v32);
  return isa;
}

void *sub_94EDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = a1;
  v7 = sub_2C0638();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72084(a2, a2[3]);
  v11 = sub_2BF928();
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  if (!*(a3 + 16))
  {

LABEL_10:
    v57 = 0;
    goto LABEL_11;
  }

  if (!v12)
  {
    v11 = 0;
  }

  v14 = sub_5D228(v11, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    goto LABEL_10;
  }

  v57 = *(*(a3 + 56) + 8 * v14) > 1;
LABEL_11:
  sub_72084(a2, a2[3]);
  v17 = sub_2BF3B8();
  v19 = v18;
  v20 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_editionsIsInWantToRead;
  swift_beginAccess();
  v21 = *(a4 + v20);
  if (*(v21 + 16) && (, v22 = sub_5D228(v17, v19), v24 = v23, , (v24 & 1) != 0))
  {
    v25 = *(*(v21 + 56) + v22);

    if (v25 == 1)
    {
      v26 = a2[3];
      v27 = sub_72084(a2, v26);
      sub_18ECD4(v27, v26);
      v28 = 1;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v29 = a2[3];
  v30 = sub_72084(a2, v29);
  sub_18EF24(v30, v29);
  v28 = 0;
LABEL_17:
  v31 = a2[3];
  v32 = a2[4];
  sub_72084(a2, v31);
  sub_9405C(v28, 1, v56, v31, v32, v10);
  v33 = v7;
  v59[3] = v7;
  v59[4] = sub_969BC(&qword_3BDC68, &type metadata accessor for AssetAction);
  v34 = sub_720C8(v59);
  (*(v8 + 16))(v34, v10, v7);
  sub_66278(0, &qword_3BDC70);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_691F8(v59, v58);
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  sub_68D1C(v58, v36 + 24);
  v37 = sub_2C6018();
  sub_68CD0(v59);
  if (v57)
  {
    v38 = a2[3];
    v39 = a2[4];
    sub_72084(a2, v38);
    v40 = v37;
    sub_9540C(v38, v39);
    if (v41)
    {
      v42 = sub_2C5888();
    }

    else
    {
      v42 = 0;
    }

    [v40 setSubtitle:v42];
  }

  sub_72084(a2, a2[3]);
  v43 = sub_2BF3B8();
  v45 = v44;
  v46 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_editionsCoverResources;
  swift_beginAccess();
  v47 = *(a4 + v46);
  if (!*(v47 + 16) || (, v48 = sub_5D228(v43, v45), v50 = v49, , (v50 & 1) == 0))
  {

    goto LABEL_27;
  }

  v51 = *(*(v47 + 56) + 8 * v48);
  swift_unknownObjectRetain();

  v52 = [v51 image];
  swift_unknownObjectRelease();
  if (!v52)
  {
LABEL_27:
    v53 = 0;
    goto LABEL_28;
  }

  v53 = sub_2C5FE8();

LABEL_28:
  [v37 setImage:v53];

  (*(v8 + 8))(v10, v33);
  return v37;
}

uint64_t sub_9540C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2BF8F8();
  if (!v5)
  {
    return sub_18F0DC(v2, a1, a2);
  }

  if (v5 == 1)
  {
    return sub_18F350(v2, a1);
  }

  return 0;
}

uint64_t sub_9547C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_72084(a1, a1[3]);
  result = sub_2BF928();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_954C8()
{
  sub_2BF8F8();
  v0 = sub_2BFA98();
  v2 = v1;
  if (v0 == sub_2BFA98() && v2 == v3)
  {
  }

  else
  {
    sub_2C65B8();
  }

  return 26.0;
}

uint64_t sub_95574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v48) = a1;
  v50 = a3;
  v47 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BDCC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_6620C(&qword_3BDCA8);
  v11 = __chkstk_darwin(v10 - 8);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = sub_2C0648();
  v49 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  if (v18 & 1) == 0 && (sub_2BF908())
  {
    v19 = &enum case for ImageFilter.Environment.light(_:);
    if ((v48 & 1) == 0)
    {
      v19 = &enum case for ImageFilter.Environment.night(_:);
    }

    (*(v49 + 104))(v17, *v19, v15);
    v20 = sub_2C0668();
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    v48 = v20;
    v45 = v22;
    (v22)(v14, 1, 1);
    v23 = sub_2BF8F8();
    if (v23)
    {
      if (v23 == 1)
      {
        (*(v47 + 16))(v6, v3, a2);
        v24 = sub_2BF258();
        v25 = swift_dynamicCast();
        v26 = *(*(v24 - 8) + 56);
        if (v25)
        {
          v27 = *(v24 - 8);
          v26(v9, 0, 1, v24);
          v28 = sub_2BF238();
          sub_69198(v14, &qword_3BDCA8);
          (*(v27 + 8))(v9, v24);
          v29 = v28 & 1;
        }

        else
        {
          v26(v9, 1, 1, v24);
          sub_69198(v14, &qword_3BDCA8);
          sub_69198(v9, &qword_3BDCC0);
          v29 = 0;
        }

        v39 = v50;
        v41 = v45;
        v40 = v46;
        v42 = v48;
        *v46 = v29;
        v43 = sub_6620C(&qword_3BDCC8);
        v44 = *(v43 + 64);
        (*(v49 + 32))(v40 + *(v43 + 48), v17, v15);
        *(v40 + v44) = 1;
        (*(v21 + 104))(v40, enum case for ImageFilter.book(_:), v42);
        v41(v40, 0, 1, v42);
        sub_96A04(v40, v14);
        v38 = v39;
        return sub_96A04(v14, v38);
      }

      sub_69198(v14, &qword_3BDCA8);
      (*(v49 + 32))(v14, v17, v15);
      v36 = &enum case for ImageFilter.pdf(_:);
    }

    else
    {
      sub_69198(v14, &qword_3BDCA8);
      v35 = *(sub_6620C(&unk_3BDCD0) + 48);
      (*(v49 + 32))(v14, v17, v15);
      v14[v35] = 1;
      v36 = &enum case for ImageFilter.audiobook(_:);
    }

    v37 = v48;
    (*(v21 + 104))(v14, *v36, v48);
    v45(v14, 0, 1, v37);
    v38 = v50;
    return sub_96A04(v14, v38);
  }

  v30 = sub_2C0668();
  v31 = *(*(v30 - 8) + 56);
  v32 = v30;
  v33 = v50;

  return v31(v33, 1, 1, v32);
}

uint64_t sub_95B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  sub_2C5C18();
  v7[22] = sub_2C5C08();
  v9 = sub_2C5BB8();

  return _swift_task_switch(sub_95C38, v9, v8);
}

uint64_t sub_95C38()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_10;
  }

  v2 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v3 = Strong;
  swift_beginAccess();
  sub_6932C(v3 + v2, v0 + 56, &unk_3C2550);

  if (!*(v0 + 80))
  {
LABEL_10:
    sub_69198(v0 + 56, &unk_3C2550);
    goto LABEL_20;
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  sub_68D1C((v0 + 56), v0 + 16);
  sub_72084((v0 + 16), *(v0 + 40));
  if (sub_2BF3B8() == v5 && v6 == v4)
  {

LABEL_12:
    v9 = *(v0 + 144);
    v10 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_isInWantToRead;
    v11 = *(v9 + OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_isInWantToRead);
    if (v11 != [*(v0 + 168) wantToRead])
    {
      *(v9 + v10) = [*(v0 + 168) wantToRead];
      sub_93A50();
    }

    goto LABEL_14;
  }

  v8 = sub_2C65B8();

  if (v8)
  {
    goto LABEL_12;
  }

LABEL_14:
  v12 = *(v0 + 144);
  v13 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_editionsIsInWantToRead;
  swift_beginAccess();
  v14 = *(v12 + v13);
  if (*(v14 + 16))
  {
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);

    v17 = sub_5D228(v16, v15);
    if (v18)
    {
      v19 = *(v0 + 168);
      v20 = *(*(v14 + 56) + v17);

      if (v20 != [v19 wantToRead])
      {
        v21 = *(v0 + 160);
        v23 = *(v0 + 144);
        v22 = *(v0 + 152);
        v24 = [*(v0 + 168) wantToRead];
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *(v12 + v13);
        *(v12 + v13) = 0x8000000000000000;
        sub_6219C(v24, v22, v21, isUniquelyReferenced_nonNull_native);
        *(v12 + v13) = v29;
        swift_endAccess();
        v26 = sub_949DC();
        [v23 setMenu:v26];
      }
    }

    else
    {
    }
  }

  sub_68CD0(v0 + 16);
LABEL_20:
  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_96078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2C5C18();
  *(v4 + 24) = sub_2C5C08();
  v6 = sub_2C5BB8();

  return _swift_task_switch(sub_96110, v6, v5);
}

uint64_t sub_96110()
{
  v1 = *(v0 + 16);

  v2 = sub_949DC();
  [v1 setMenu:v2];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_962C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_88BE0;

  return sub_96078(a1, v4, v5, v6);
}

uint64_t sub_9637C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_963CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_7100C;

  return sub_95B9C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_964A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_964E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7100C;

  return sub_92700(a1, v4, v5, v6);
}

uint64_t sub_96594(void *a1)
{
  sub_72084(a1, a1[3]);
  v1 = sub_2BFA08();
  if (v1)
  {
    v2 = v1;
    swift_getKeyPath();
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 32;
      v5 = &_swiftEmptyArrayStorage;
      do
      {
        sub_691F8(v4, v35);
        swift_getAtKeyPath();
        sub_68CD0(v35);
        if (v34)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_5BB78(0, *(v5 + 2) + 1, 1, v5);
          }

          v8 = *(v5 + 2);
          v7 = *(v5 + 3);
          if (v8 >= v7 >> 1)
          {
            v5 = sub_5BB78((v7 > 1), v8 + 1, 1, v5);
          }

          *(v5 + 2) = v8 + 1;
          v6 = &v5[16 * v8];
          *(v6 + 4) = v33;
          *(v6 + 5) = v34;
        }

        v4 += 40;
        --v3;
      }

      while (v3);

      goto LABEL_14;
    }
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_14:
  v9 = sub_67BF8(&_swiftEmptyArrayStorage);
  v10 = *(v5 + 2);
  if (!v10)
  {
LABEL_30:

    return v9;
  }

  v11 = 0;
  v12 = (v5 + 40);
  while (v11 < *(v5 + 2))
  {
    v14 = *(v12 - 1);
    v13 = *v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = v9;
    v16 = sub_5D228(v14, v13);
    v18 = v9[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_32;
    }

    v22 = v17;
    if (v9[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v16;
        sub_632BC();
        v16 = v31;
        v9 = v35[0];
        if (v22)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    else
    {
      sub_5E708(v21, isUniquelyReferenced_nonNull_native);
      v9 = v35[0];
      v16 = sub_5D228(v14, v13);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_35;
      }
    }

    if (v22)
    {
      goto LABEL_25;
    }

LABEL_23:
    v9[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v9[6] + 16 * v16);
    *v24 = v14;
    v24[1] = v13;
    *(v9[7] + 8 * v16) = 0;
    v25 = v9[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_34;
    }

    v9[2] = v26;
    v27 = v16;

    v16 = v27;
LABEL_25:
    v28 = v9[7];
    v29 = *(v28 + 8 * v16);
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v20)
    {
      goto LABEL_33;
    }

    ++v11;
    *(v28 + 8 * v16) = v30;

    v12 += 2;
    if (v10 == v11)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_2C6678();
  __break(1u);
  return result;
}

uint64_t sub_96874()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_968AC()
{

  sub_68CD0(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_96900@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_72084(a1, a1[3]);
  result = sub_2BF928();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_9694C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDC90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_969BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_96A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BDCA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_96ADC()
{
  result = qword_3BDCE0;
  if (!qword_3BDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BDCE0);
  }

  return result;
}

uint64_t sub_96B30(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BDCF8);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_6620C(&qword_3BCE00);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_2C1798();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C15D8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SingleBookWidgetComponentModel();
  (*(v9 + 16))(v11, a1 + *(v16 + 28), v8);
  sub_2C15C8();
  sub_1DF3EC(v4);
  v17 = sub_2C2338();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v4, 1, v17) == 1)
  {
    sub_69198(v4, &qword_3BDCF8);
    v19 = 1;
  }

  else
  {
    sub_2C2308();
    (*(v18 + 8))(v4, v17);
    v19 = 0;
  }

  v20 = sub_2BE5C8();
  (*(*(v20 - 8) + 56))(v7, v19, 1, v20);
  sub_96FEC(&qword_3BDD00, &type metadata accessor for SingleBookLockupView);
  sub_2C3BB8();
  sub_69198(v7, &qword_3BCE00);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_96EA4()
{
  sub_96ADC();

  return sub_2BFD18();
}

unint64_t sub_96EEC()
{
  result = qword_3BDCE8;
  if (!qword_3BDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BDCE8);
  }

  return result;
}

uint64_t sub_96FEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_97034()
{
  sub_2C15D8();
  sub_96FEC(&qword_3BDD00, &type metadata accessor for SingleBookLockupView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_970BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD530);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_6932C(v2, &v14 - v9, &qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0C98();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_972BC()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ChartComponent(0) + 20);
  result = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {
    v7 = *v5;

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v7, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return result;
}

uint64_t sub_9740C()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ChartComponent(0) + 24);
  result = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {
    v7 = *v5;

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v7, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return result;
}

uint64_t sub_9755C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChartComponent(0);
  sub_6932C(v1 + *(v7 + 32), v10, &qword_3BDFE0);
  if (v11 == 1)
  {
    return sub_68D1C(v10, a1);
  }

  sub_2C5DD8();
  v9 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_976D4@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v35 = sub_6620C(&qword_3BDE18);
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29 - v5;
  v36 = sub_6620C(&qword_3BDE20);
  __chkstk_darwin(v36);
  v38 = &v29 - v6;
  v7 = type metadata accessor for ChartComponentModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_6620C(&qword_3BDE28);
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v29 - v11;
  v12 = sub_2C30F8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2 + *(type metadata accessor for ChartComponent(0) + 36);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
LABEL_3:
      v18 = v32;
      sub_97D50(a1, v32);
      v19 = v35;
      (*(v4 + 16))(v38, v18, v35);
      swift_storeEnumTagMultiPayload();
      sub_72B74(&qword_3BDE30, &qword_3BDE28);
      sub_72B74(&qword_3BDE38, &qword_3BDE18);
      sub_2C33C8();
      return (*(v4 + 8))(v18, v19);
    }
  }

  else
  {

    sub_2C5DD8();
    v30 = v12;
    v21 = sub_2C3718();
    v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = a1;
    v23 = v21;
    sub_2C0058();

    a1 = v22;
    v10 = v31;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v17, 0);
    (*(v13 + 8))(v15, v30);
    if (v40 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_9E3DC(a1, v10, type metadata accessor for ChartComponentModel);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = swift_allocObject();
  sub_9E374(v10, v25 + v24, type metadata accessor for ChartComponentModel);
  sub_6620C(&qword_3BDE40);
  sub_2BFBC8();
  sub_2BFBA8();
  sub_9E0CC();
  sub_9DD40(&qword_3BDE60, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_9DD40(&qword_3BDE68, &type metadata accessor for _JetLocalizeDefaultFailed);
  v26 = v33;
  sub_2BFBD8();
  v27 = v34;
  v28 = v37;
  (*(v34 + 16))(v38, v26, v37);
  swift_storeEnumTagMultiPayload();
  sub_72B74(&qword_3BDE30, &qword_3BDE28);
  sub_72B74(&qword_3BDE38, &qword_3BDE18);
  sub_2C33C8();
  return (*(v27 + 8))(v26, v28);
}

uint64_t sub_97D50@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for ChartComponentModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChartComponent(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_9740C();
  result = sub_972BC();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v12 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_13;
  }

  if (v12 / result <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12 / result;
  }

  result = sub_9ACB4(a1);
  v15 = 3 * v14;
  if ((v14 * 3) >> 64 != (3 * v14) >> 63)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v16 = result;
  if (v15 >= *(result + 16))
  {
    v15 = *(result + 16);
  }

  v25 = (2 * v15) | 1;
  v26 = result + 32;
  sub_9E3DC(v2, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartComponent);
  sub_9E3DC(a1, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartComponentModel);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_9E374(v11, v20 + v17, type metadata accessor for ChartComponent);
  sub_9E374(v7, v20 + v18, type metadata accessor for ChartComponentModel);
  *(v20 + v19) = v14;
  v21 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v25;
  v23 = v26;
  *v21 = v16;
  v21[1] = v23;
  v21[2] = 0;
  v21[3] = v22;
  sub_6620C(&qword_3BDE88);
  sub_2BFBC8();
  sub_2BFBA8();
  sub_72B74(&qword_3BDE90, &qword_3BDE88);
  sub_9DD40(&qword_3BDE60, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_9DD40(&qword_3BDE68, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_2BFBD8();
}

uint64_t sub_9810C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v81 = a8;
  v15 = sub_6620C(&qword_3BD6A0);
  v79 = *(v15 - 8);
  v80 = v15;
  __chkstk_darwin(v15);
  v78 = &v58 - v16;
  v17 = sub_6620C(&qword_3BD6A8);
  v76 = *(v17 - 8);
  v77 = v17;
  __chkstk_darwin(v17);
  v74 = &v58 - v18;
  v19 = sub_2C0C98();
  v72 = *(v19 - 8);
  v73 = v19;
  __chkstk_darwin(v19);
  v71 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2C3678();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2C30F8();
  v22 = *(v59 - 1);
  __chkstk_darwin(v59);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_6620C(&qword_3BDE98);
  __chkstk_darwin(v61);
  v26 = &v58 - v25;
  v63 = sub_6620C(&qword_3BDEA0);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v58 - v27;
  v28 = sub_6620C(&qword_3BDEA8);
  v69 = *(v28 - 8);
  v70 = v28;
  v29 = __chkstk_darwin(v28);
  v68 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v66 = &v58 - v31;
  *v26 = sub_2C3338();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v32 = sub_6620C(&qword_3BDEB0);
  sub_989AC(a1, a2, a3, a4, a5, a6, a7, &v26[*(v32 + 44)]);
  v33 = *(type metadata accessor for ChartComponent(0) + 28);
  v75 = a1;
  LOBYTE(a7) = *(a1 + v33 + 8);

  if ((a7 & 1) == 0)
  {
    sub_2C5DD8();
    v35 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    v34 = (*(v22 + 8))(v24, v59);
  }

  v59 = &v58;
  __chkstk_darwin(v34);
  *(&v58 - 2) = a2;
  sub_2C4DB8();
  if (v82 == 1)
  {
  }

  else
  {
    sub_2C4E58();
    sub_2C4DC8();
  }

  v36 = sub_2C4E28();
  v37 = sub_72B74(&qword_3BDEB8, &qword_3BDE98);
  v38 = v60;
  v39 = v61;
  sub_2C3AD8();

  sub_69198(v26, &qword_3BDE98);

  v40 = v64;
  sub_2C3668();
  v82 = v39;
  v83 = v36;
  v84 = v37;
  swift_getOpaqueTypeConformance2();
  v41 = v66;
  v42 = v63;
  sub_2C3FA8();
  (*(v65 + 8))(v40, v67);
  (*(v62 + 8))(v38, v42);
  v43 = v71;
  sub_970BC(v71);
  v44 = v73;
  v45 = v74;
  sub_2C1768();
  (*(v72 + 8))(v43, v44);
  swift_getKeyPath();
  v46 = v77;
  v47 = v78;
  sub_2C0BC8();

  (*(v76 + 8))(v45, v46);
  swift_getKeyPath();
  sub_85AF8();
  v48 = v80;
  sub_2C0BD8();

  (*(v79 + 8))(v47, v48);
  v49 = v82;
  v51 = v68;
  v50 = v69;
  v52 = *(v69 + 16);
  v53 = v70;
  v52(v68, v41, v70);
  v54 = v81;
  v52(v81, v51, v53);
  v55 = &v54[*(sub_6620C(&qword_3BDEC0) + 48)];
  *v55 = v49;
  v55[8] = 0;
  v56 = *(v50 + 8);
  v56(v41, v53);
  return (v56)(v51, v53);
}

uint64_t sub_989AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v91 = a6;
  v92 = a7;
  v90 = a5;
  v93 = a4;
  v103 = a2;
  v104 = a3;
  v96 = a8;
  v9 = type metadata accessor for ChartComponent(0);
  v85 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v87 = v10;
  v88 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChartComponentModel();
  v12 = *(v11 - 8);
  v102 = (v11 - 8);
  v82 = v12;
  __chkstk_darwin(v11 - 8);
  v83 = v13;
  v84 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3BDED0);
  v15 = __chkstk_darwin(v14 - 8);
  v95 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v105 = (&v81 - v17);
  v101 = type metadata accessor for ChartSectionTitleView(0) - 8;
  v18 = __chkstk_darwin(v101);
  v94 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = (&v81 - v20);
  v22 = sub_6620C(&qword_3BD6A0);
  v23 = *(v22 - 8);
  v99 = v22;
  v100 = v23;
  __chkstk_darwin(v22);
  v98 = &v81 - v24;
  v25 = sub_6620C(&qword_3BD6A8);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v81 - v27;
  v29 = sub_2C0C98();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_6620C(&qword_3BDED8);
  v34 = v33 - 8;
  v35 = __chkstk_darwin(v33);
  v89 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = (&v81 - v37);
  sub_2C4538();
  v97 = sub_2C37A8();
  v86 = a1;
  sub_970BC(v32);
  sub_2C1768();
  (*(v30 + 8))(v32, v29);
  swift_getKeyPath();
  v39 = v98;
  sub_2C0BC8();

  (*(v26 + 8))(v28, v25);
  swift_getKeyPath();
  sub_85AF8();
  v40 = v99;
  sub_2C0BD8();

  v100[1](v39, v40);
  sub_2C24D8();
  v41 = *(v34 + 44);
  v100 = v38;
  v42 = v38 + v41;
  v44 = v102;
  v43 = v103;
  *v42 = v97;
  *(v42 + 1) = v45;
  *(v42 + 2) = v46;
  *(v42 + 3) = v47;
  *(v42 + 4) = v48;
  v42[40] = 0;
  v49 = *(v44 + 40);
  v50 = v101;
  v51 = *(v101 + 40);
  v52 = sub_2BFDD8();
  (*(*(v52 - 8) + 16))(v21 + v51, v43 + v49, v52);
  sub_2C1D98();
  v53 = v104;
  *(v21 + v50[7]) = swift_getKeyPath();
  sub_6620C(&qword_3BDEE0);
  swift_storeEnumTagMultiPayload();
  *v21 = swift_getKeyPath();
  sub_6620C(&unk_3C8530);
  swift_storeEnumTagMultiPayload();
  v54 = v21 + v50[8];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  v55 = v50[9];
  *(v21 + v55) = swift_getKeyPath();
  sub_6620C(&qword_3BDEE8);
  v102 = v21;
  swift_storeEnumTagMultiPayload();
  result = sub_2C3178();
  v57 = v105;
  *v105 = result;
  v57[1] = 0;
  *(v57 + 16) = 1;
  if ((v53 & 0x8000000000000000) == 0)
  {
    v58 = v57;
    if (v53)
    {
      v59 = sub_9E1B4(v53, 0);
      if (sub_9EB58(v107, (v59 + 4), v53, 0, v53) == v53)
      {
LABEL_6:
        sub_6620C(&qword_3BDEF0);
        v106 = v59;
        swift_getKeyPath();
        v60 = v84;
        sub_9E3DC(v43, v84, type metadata accessor for ChartComponentModel);
        v61 = v88;
        sub_9E3DC(v86, v88, type metadata accessor for ChartComponent);
        v62 = (*(v82 + 80) + 16) & ~*(v82 + 80);
        v63 = (v83 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
        v64 = (*(v85 + 80) + v63 + 32) & ~*(v85 + 80);
        v65 = swift_allocObject();
        sub_9E374(v60, v65 + v62, type metadata accessor for ChartComponentModel);
        v66 = (v65 + v63);
        v67 = v90;
        v68 = v91;
        *v66 = v93;
        v66[1] = v67;
        v69 = v92;
        v66[2] = v68;
        v66[3] = v69;
        sub_9E374(v61, v65 + v64, type metadata accessor for ChartComponent);
        swift_unknownObjectRetain();
        sub_6620C(&qword_3BDEF8);
        sub_6620C(&qword_3BDF00);
        sub_72B74(&qword_3BDF08, &qword_3BDEF8);
        v70 = sub_718D4(&qword_3BDF10);
        v71 = sub_72B74(&qword_3BDF18, &qword_3BDF10);
        v107[0] = v70;
        v107[1] = v71;
        swift_getOpaqueTypeConformance2();
        v72 = v58;
        sub_2C4558();
        v73 = v100;
        v74 = v89;
        sub_6932C(v100, v89, &qword_3BDED8);
        v75 = v102;
        v76 = v94;
        sub_9E3DC(v102, v94, type metadata accessor for ChartSectionTitleView);
        v77 = v58;
        v78 = v95;
        sub_9F1AC(v77, v95);
        v79 = v96;
        sub_6932C(v74, v96, &qword_3BDED8);
        v80 = sub_6620C(&qword_3BDF20);
        sub_9E3DC(v76, v79 + *(v80 + 48), type metadata accessor for ChartSectionTitleView);
        sub_9F1AC(v78, v79 + *(v80 + 64));
        sub_69198(v72, &qword_3BDED0);
        sub_9E444(v75, type metadata accessor for ChartSectionTitleView);
        sub_69198(v73, &qword_3BDED8);
        sub_69198(v78, &qword_3BDED0);
        sub_9E444(v76, type metadata accessor for ChartSectionTitleView);
        return sub_69198(v74, &qword_3BDED8);
      }

      __break(1u);
    }

    v59 = &_swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_99424()
{
  v0 = sub_6620C(&qword_3BD1B0);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v13 - v5;
  v7 = sub_16C2EC();
  v13[0] = sub_2C4E28();
  sub_2C4F38();
  v13[1] = v7;
  v8 = *(v1 + 16);
  v8(v6, v4, v0);
  sub_9EA8C();
  sub_2C4EF8();
  v9 = *(v1 + 8);
  v9(v4, v0);

  sub_6620C(&qword_3BD520);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v8((v11 + v10), v6, v0);
  sub_2C4F38();
  v8(v4, (v11 + v10), v0);
  swift_setDeallocating();
  v9((v11 + v10), v0);
  swift_deallocClassInstance();
  sub_2C4EE8();
  v9(v4, v0);
  return (v9)(v6, v0);
}

uint64_t sub_99668@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v28 = a6;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v33 = a7;
  v10 = type metadata accessor for ChartComponent(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v27[2] = v12;
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_6620C(&qword_3BDF10);
  __chkstk_darwin(v32);
  v15 = v27 - v14;
  v16 = *a1;
  *v15 = sub_2C3338();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_6620C(&qword_3BC4D0);
  v17 = swift_allocObject();
  v18 = j__malloc_size(v17);
  v19 = v18 - 32;
  if (v18 < 32)
  {
    v19 = v18 - 25;
  }

  *(v17 + 16) = 3;
  *(v17 + 24) = 2 * (v19 >> 3);
  v27[1] = *(sub_6620C(&qword_3BDF28) + 44);
  *(v17 + 32) = xmmword_2E4FD0;
  *(v17 + 48) = 2;
  v34 = v17;
  v27[0] = swift_getKeyPath();
  sub_9E3DC(a6, v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartComponent);
  v20 = *(v11 + 80);
  v21 = swift_allocObject();
  v21[2] = v16;
  v21[3] = 3;
  v22 = v29;
  v23 = v30;
  v21[4] = a2;
  v21[5] = v22;
  v24 = v31;
  v21[6] = v23;
  v21[7] = v24;
  sub_9E374(v13, v21 + ((v20 + 64) & ~v20), type metadata accessor for ChartComponent);
  swift_unknownObjectRetain();
  sub_6620C(&qword_3BDEF8);
  sub_6620C(&qword_3BDF30);
  sub_72B74(&qword_3BDF08, &qword_3BDEF8);
  sub_9F51C();
  sub_2C4558();
  sub_2C3728();
  sub_2C46B8();
  sub_9E3DC(v28, v13, type metadata accessor for ChartComponent);
  v25 = swift_allocObject();
  sub_9E374(v13, v25 + ((v20 + 16) & ~v20), type metadata accessor for ChartComponent);
  sub_72B74(&qword_3BDF18, &qword_3BDF10);
  sub_2C3FF8();

  return sub_69198(v15, &qword_3BDF10);
}

uint64_t sub_99A38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = sub_6620C(&qword_3BDF48);
  result = __chkstk_darwin(v14);
  v18 = &v24[-1] - v17;
  v19 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = __OFADD__(v19, *a1);
  v21 = v19 + *a1;
  if (v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (v21 < ((a6 >> 1) - a5))
  {
    if (v21 >= a5 && v21 < (a6 >> 1))
    {
      v23 = v16;
      sub_691F8(a4 + 40 * v21, v24);
      sub_99C28(v24, v21, a3, v18);
      sub_68CD0(v24);
      sub_69130(v18, a7, &qword_3BDF48);
      return (*(v23 + 56))(a7, 0, 1, v14);
    }

    goto LABEL_14;
  }

  v22 = *(v16 + 56);

  return v22(a7, 1, 1, v14);
}

uint64_t sub_99C28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v75 = a3;
  v95 = a2;
  v74 = a4;
  v72 = sub_2C4548();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v66 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BDF50);
  v7 = __chkstk_darwin(v6 - 8);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v71 = &v66 - v9;
  v10 = sub_2BE9B8();
  v93 = *(v10 - 8);
  v94 = v10;
  __chkstk_darwin(v10);
  v92 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v12 - 8);
  v90 = &v66 - v13;
  v91 = sub_2C5258();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_6620C(&qword_3C8300);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v16 = &v66 - v15;
  v78 = sub_6620C(&qword_3BDF60);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v18 = &v66 - v17;
  v76 = sub_6620C(&qword_3BDF68);
  __chkstk_darwin(v76);
  v20 = &v66 - v19;
  v21 = sub_6620C(&qword_3BDF70);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  v83 = sub_6620C(&qword_3BDF78);
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v25 = &v66 - v24;
  v85 = sub_6620C(&qword_3BDF80);
  v82 = *(v85 - 8);
  __chkstk_darwin(v85);
  v27 = &v66 - v26;
  v87 = sub_6620C(&qword_3BDF88);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v66 - v28;
  v69 = sub_6620C(&qword_3BDF90);
  v68 = *(v69 - 8);
  v29 = __chkstk_darwin(v69);
  v67 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v96 = &v66 - v31;
  sub_691F8(a1, &v100);
  sub_9F8B8();
  sub_2BFCA8();
  sub_691F8(a1, &v100);
  sub_6620C(&qword_3BC278);
  sub_6620C(&qword_3BDF98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v99 = 0;
    memset(v98, 0, sizeof(v98));
  }

  sub_9755C(v97);
  sub_72B74(&unk_3C8340, &qword_3C8300);
  v32 = v80;
  sub_2C3CE8();
  sub_68CD0(v97);
  (*(v79 + 8))(v16, v32);
  sub_69198(v98, &qword_3BDFA0);
  KeyPath = swift_getKeyPath();
  (*(v77 + 32))(v20, v18, v78);
  v34 = &v20[*(v76 + 36)];
  v35 = v95;
  *v34 = KeyPath;
  v34[1] = v35;
  v36 = swift_getKeyPath();
  v37 = &v23[*(v21 + 36)];
  v38 = *(sub_6620C(&qword_3BDFA8) + 28);
  v39 = sub_2C1A68();
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  *v37 = v36;
  sub_69130(v20, v23, &qword_3BDF68);
  v40 = v88;
  sub_2C5238();
  sub_72084(a1, a1[3]);
  v41 = v90;
  sub_2C57B8();
  v42 = sub_9F91C();
  sub_2C3A98();
  sub_69198(v41, &qword_3BDF58);
  (*(v89 + 8))(v40, v91);
  sub_69198(v23, &qword_3BDF70);
  v100 = v21;
  v101 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v83;
  sub_2C3D08();
  (*(v81 + 8))(v25, v44);
  v100 = v44;
  v101 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v84;
  v47 = v85;
  sub_2C3D78();
  (*(v82 + 8))(v27, v47);
  sub_72084(a1, a1[3]);
  sub_2C4CF8();
  sub_72084(a1, a1[3]);
  v48 = v92;
  sub_2C4CE8();
  v100 = v47;
  v101 = v45;
  swift_getOpaqueTypeConformance2();
  v49 = v87;
  sub_2C3D88();

  (*(v93 + 8))(v48, v94);
  result = (*(v86 + 8))(v46, v49);
  if (__OFADD__(v35, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!v75)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v35 == 0x7FFFFFFFFFFFFFFFLL && v75 == -1)
  {
    goto LABEL_13;
  }

  if ((v35 + 1) % v75)
  {
    v51 = v66;
    sub_2C4538();
    v52 = v70;
    v53 = v71;
    v54 = v51;
    v55 = v72;
    (*(v70 + 32))(v71, v54, v72);
    v56 = 0;
    v57 = v74;
    v58 = v73;
  }

  else
  {
    v56 = 1;
    v57 = v74;
    v58 = v73;
    v55 = v72;
    v53 = v71;
    v52 = v70;
  }

  v59 = v69;
  v60 = v68;
  v61 = v67;
  (*(v52 + 56))(v53, v56, 1, v55);
  v62 = *(v60 + 16);
  v63 = v96;
  v62(v61, v96, v59);
  sub_6932C(v53, v58, &qword_3BDF50);
  v62(v57, v61, v59);
  v64 = sub_6620C(&qword_3BDFD8);
  sub_6932C(v58, &v57[*(v64 + 48)], &qword_3BDF50);
  sub_69198(v53, &qword_3BDF50);
  v65 = *(v60 + 8);
  v65(v63, v59);
  sub_69198(v58, &qword_3BDF50);
  return (v65)(v61, v59);
}

double sub_9A964(double a1)
{
  v2 = sub_6620C(&qword_3BD6A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - v4;
  v6 = sub_6620C(&qword_3BD6A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  v10 = sub_2C0C98();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 / sub_9740C();
  sub_970BC(v13);
  sub_2C1768();
  (*(v11 + 8))(v13, v10);
  swift_getKeyPath();
  sub_2C0BC8();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  sub_85AF8();
  sub_2C0BD8();

  (*(v3 + 8))(v5, v2);
  return v14 - v16[1];
}

uint64_t sub_9AC10@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();

  v4 = sub_25AC84(KeyPath, 0, v3, 0, &_swiftEmptyDictionarySingleton);

  *a1 = v4;
  return result;
}

uint64_t sub_9ACB4(void (*a1)(char *, char *, uint64_t))
{
  v29 = sub_6620C(&qword_3BDFE8);
  v2 = __chkstk_darwin(v29);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v6 = &v26 - v5;
  v7 = *(type metadata accessor for ChartComponentModel() + 40);
  v30 = a1;
  v8 = *(a1 + v7);
  v9 = *(v8 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v35 = &_swiftEmptyArrayStorage;
  sub_64698(0, v9, 0);
  v10 = v35;
  v28 = *(v8 + 16);
  v11 = type metadata accessor for ListItemComponentModel();
  v12 = 0;
  v14 = *(v11 - 8);
  result = v11 - 8;
  v26 = v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v27 = v14;
  while (v28 != v12)
  {
    if (v12 >= *(v8 + 16))
    {
      goto LABEL_10;
    }

    v15 = v29;
    v16 = *(v29 + 48);
    sub_9E3DC(v26 + *(v27 + 72) * v12, &v6[v16], type metadata accessor for ListItemComponentModel);
    *v4 = v12;
    v17 = *(v15 + 48);
    sub_9E374(&v6[v16], v4 + v17, type metadata accessor for ListItemComponentModel);
    sub_9AFAC(v12, v4 + v17, v31, v30, v32);
    sub_69198(v4, &qword_3BDFE8);
    v35 = v10;
    v19 = v10[2];
    v18 = v10[3];
    if (v19 >= v18 >> 1)
    {
      sub_64698((v18 > 1), v19 + 1, 1);
    }

    ++v12;
    v20 = v33;
    v21 = v34;
    v22 = sub_8C564(v32, v33);
    __chkstk_darwin(v22);
    v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v24);
    sub_24EE68(v19, v24, &v35, v20, v21);
    result = sub_68CD0(v32);
    v10 = v35;
    if (v9 == v12)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_9AFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v64 = a4;
  v56[1] = a1;
  v72 = a5;
  v7 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v7 - 8);
  v58 = v56 - v8;
  v60 = sub_2BF088();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2BF0B8();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2C30F8();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3BDFF0);
  __chkstk_darwin(v12 - 8);
  v14 = v56 - v13;
  v15 = sub_6620C(&qword_3BDE70);
  __chkstk_darwin(v15 - 8);
  v17 = v56 - v16;
  v18 = sub_2BEA28();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v56 - v23;
  v66 = type metadata accessor for ListItemComponentModel();
  v25 = __chkstk_darwin(v66);
  v67 = v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v68 = v56 - v27;
  sub_9E3DC(a2, v56 - v27, type metadata accessor for ListItemComponentModel);
  v28 = type metadata accessor for ChartComponent(0);
  v65 = a3;
  v29 = sub_2BE7F8();
  v30 = type metadata accessor for ChartComponentModel();
  sub_6932C(v64 + *(v30 + 28), v14, &qword_3BDFF0);
  sub_69130(v14, v17, &qword_3BDE70);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_69198(v17, &qword_3BDE70);
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    v64 = *(v19 + 16);
    v64(v22, v24, v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_5BCAC(0, v29[2] + 1, 1, v29);
    }

    v32 = v29[2];
    v31 = v29[3];
    v56[0] = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v33 = sub_5BCAC((v31 > 1), v32 + 1, 1, v29);
    }

    else
    {
      v33 = v29;
    }

    v34 = *(v19 + 8);
    v34(v24, v18);
    *(&v74 + 1) = v18;
    v75 = sub_9DD40(&unk_3C0030, &type metadata accessor for SectionData);
    v76 = sub_9DD40(&unk_3C43F0, &type metadata accessor for SectionData);
    v35 = sub_720C8(&v73);
    v64(v35, v22, v18);
    v33[2] = v56[0];
    sub_9FB74(&v73, &v33[6 * v32 + 4]);
    v34(v22, v18);
  }

  v36 = v65 + *(v28 + 40);
  v37 = *v36;
  v38 = v69;
  v39 = v67;
  v40 = v66;
  if (*(v36 + 8) == 1)
  {
    v41 = v37;
  }

  else
  {

    sub_2C5DD8();
    v42 = sub_2C3718();
    sub_2C0058();

    v43 = v61;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v37, 0);
    (*(v62 + 8))(v43, v63);
    v37 = v73;
  }

  v83 = 0;
  memset(v82, 0, sizeof(v82));
  sub_29AB30(v38);
  sub_29AB58(v81);
  v44 = v68;
  sub_9E3DC(v68, v39, type metadata accessor for ListItemComponentModel);
  sub_6932C(v44 + *(v40 + 24), v77, &unk_3BDC90);
  if (!v78)
  {

    sub_69198(v77, &unk_3BDC90);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
LABEL_19:
    sub_69198(&v73, &qword_3BDFF8);
    goto LABEL_20;
  }

  sub_6620C(&qword_3BC248);
  sub_6620C(&qword_3CA270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v75 = 0;
    v74 = 0u;
    v73 = 0u;
    goto LABEL_18;
  }

  if (!*(&v74 + 1))
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_68D1C(&v73, v79);
  sub_72084(v79, v80);
  v45 = v58;
  sub_2C0288();
  v46 = v59;
  if ((*(v59 + 48))(v45, 1, v60) != 1)
  {
    v54 = v57;
    (*(v46 + 32))();
    sub_2BF068();
    sub_72084(v79, v80);
    sub_2C4A18();

    sub_691F8(v77, &v73);
    sub_9FB04(&v73, v39 + *(v40 + 24));
    *(&v74 + 1) = v40;
    v75 = sub_9DD40(&qword_3BE000, type metadata accessor for ListItemComponentModel);
    v55 = sub_720C8(&v73);
    sub_9E374(v39, v55, type metadata accessor for ListItemComponentModel);

    sub_68CD0(v77);
    (*(v46 + 8))(v54, v60);
    sub_69198(v81, &unk_3BDDB8);
    (*(v70 + 8))(v38, v71);
    sub_69198(v82, &qword_3BE008);
    sub_68CD0(v79);
    goto LABEL_21;
  }

  sub_69198(v45, &unk_3CA260);
  sub_68CD0(v79);
LABEL_20:
  *(&v74 + 1) = v40;
  v75 = sub_9DD40(&qword_3BE000, type metadata accessor for ListItemComponentModel);
  v47 = sub_720C8(&v73);
  sub_9E374(v39, v47, type metadata accessor for ListItemComponentModel);

  sub_69198(v81, &unk_3BDDB8);
  (*(v70 + 8))(v38, v71);
  sub_69198(v82, &qword_3BE008);
LABEL_21:
  v48 = *(&v74 + 1);
  v49 = v75;
  v50 = sub_72084(&v73, *(&v74 + 1));
  v51 = v72;
  v72[3] = v48;
  v51[4] = *(v49 + 8);
  v52 = sub_720C8(v51);
  (*(*(v48 - 8) + 16))(v52, v50, v48);
  sub_9E444(v44, type metadata accessor for ListItemComponentModel);
  return sub_68CD0(&v73);
}

uint64_t sub_9BBC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2BE9B8();
  __chkstk_darwin(v2 - 8);
  *a1 = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for ChartComponent(0);
  v4 = a1 + v3[5];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = a1 + v3[6];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a1 + v3[7];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a1 + v3[8];
  *v7 = swift_getKeyPath();
  v7[40] = 0;
  v8 = a1 + v3[9];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a1 + v3[10];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v3[11];
  *(a1 + v10) = swift_getKeyPath();
  sub_6620C(&qword_3BDD08);
  swift_storeEnumTagMultiPayload();
  v11 = a1 + v3[12];
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  sub_2BE998();
  return sub_2BE818();
}

uint64_t sub_9BD8C()
{
  v1 = __chkstk_darwin(v0);
  sub_9E3DC(v1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartComponent);
  sub_9DD40(&qword_3BDE08, type metadata accessor for ChartComponent);
  return sub_2BFD18();
}

uint64_t sub_9BE64@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_6620C(&qword_3BDE70);
  __chkstk_darwin(v1 - 8);
  v20 = &v20 - v2;
  v25 = type metadata accessor for ShelfView();
  __chkstk_darwin(v25);
  v21 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_6620C(&qword_3BDE78);
  __chkstk_darwin(v23);
  v5 = &v20 - v4;
  v24 = sub_6620C(&qword_3C82F0);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = sub_6620C(&qword_3BDE80);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Shelf();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = sub_16C60C(v8);
  (*(v10 + 56))(v8, 0, 1, v9, v16);
  sub_9E374(v8, v15, type metadata accessor for Shelf);
  sub_9E3DC(v15, v13, type metadata accessor for Shelf);
  v17 = v20;
  sub_6932C(&v15[*(v9 + 80)], v20, &qword_3BDE70);
  v18 = v21;
  sub_113C90(v13, v17, v21);
  sub_9E3DC(v18, v5, type metadata accessor for ShelfView);
  swift_storeEnumTagMultiPayload();
  sub_9DD40(&qword_3BDE50, type metadata accessor for ShelfView);
  sub_72B74(&qword_3BDE58, &qword_3C82F0);
  sub_2C33C8();
  sub_9E444(v18, type metadata accessor for ShelfView);
  return sub_9E444(v15, type metadata accessor for Shelf);
}

uint64_t sub_9C474@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BDEE0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ChartSectionTitleView(0);
  sub_6932C(v1 + *(v10 + 20), v9, &qword_3BDEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0958();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_9C67C()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ChartSectionTitleView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  if (v6)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_9C7E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_2C2A58();
  v4 = *(v3 - 8);
  v23 = v3;
  v24 = v4;
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChartSectionTitleView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = sub_6620C(&unk_3C43D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_6620C(&qword_3BE0E8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v18 = sub_2C24B8();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  sub_6932C(v2 + *(v8 + 44), v26, &unk_3BDC90);
  sub_9E3DC(v2, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartSectionTitleView);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_9E374(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ChartSectionTitleView);
  sub_6620C(&qword_3BE0F0);
  sub_72B74(&qword_3BE0F8, &qword_3BE0F0);
  sub_2C0388();
  sub_2C2A48();
  sub_72B74(&qword_3BE100, &qword_3BE0E8);
  sub_9DD40(&qword_3BE108, &type metadata accessor for PlainButtonStyle);
  v21 = v23;
  sub_2C3E38();
  (*(v24 + 8))(v6, v21);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_9CBE4(uint64_t a1)
{
  v2 = type metadata accessor for ChartSectionTitleView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_9E3DC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartSectionTitleView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_9E374(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ChartSectionTitleView);
  sub_6620C(&qword_3BE110);
  sub_2BFBC8();
  sub_2BFBA8();
  sub_A0608();
  sub_9DD40(&qword_3BDE60, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_9DD40(&qword_3BDE68, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_2BFBD8();
}

uint64_t sub_9CE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v90 = a3;
  v83 = sub_2C0958();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2C29D8();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2BFDD8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_6620C(&qword_3BE148) - 8;
  __chkstk_darwin(v85);
  v84 = &v76 - v11;
  v87 = sub_6620C(&qword_3BE138) - 8;
  __chkstk_darwin(v87);
  v86 = &v76 - v12;
  v89 = sub_6620C(&qword_3BE128) - 8;
  __chkstk_darwin(v89);
  v88 = &v76 - v13;
  v78 = *(type metadata accessor for ChartSectionTitleView(0) + 32);
  (*(v8 + 16))(v10, a2 + v78, v7);
  sub_691F8(a1, v91);
  v14 = sub_2C3968();
  v16 = v15;
  LOBYTE(v10) = v17;
  LODWORD(v91[0]) = sub_2C3538();
  v18 = sub_2C39A8();
  v20 = v19;
  v22 = v21;
  sub_72180(v14, v16, v10 & 1);

  v23 = v77;
  sub_29ACE0(v77);
  v24 = v23;
  v25 = sub_2C3978();
  v27 = v26;
  LOBYTE(v16) = v28;
  sub_72180(v18, v20, v22 & 1);

  (*(v79 + 8))(v24, v80);
  v29 = v81;
  sub_9C474(v81);
  sub_2C0948();
  (*(v82 + 8))(v29, v83);
  sub_2C3808();

  v30 = sub_2C39E8();
  v32 = v31;
  LOBYTE(v8) = v33;

  sub_72180(v25, v27, v16 & 1);

  *&v91[0] = sub_2BFDB8();
  *(&v91[0] + 1) = v34;
  sub_7212C();
  v35 = sub_2C39B8();
  v37 = v36;
  LOBYTE(v10) = v38;
  v40 = v39;
  sub_72180(v30, v32, v8 & 1);

  v41 = sub_9C67C();
  KeyPath = swift_getKeyPath();
  v43 = v84;
  v44 = &v84[*(v85 + 44)];
  v45 = *(sub_6620C(&qword_3BD7E8) + 28);
  v46 = enum case for Image.Scale.small(_:);
  v47 = sub_2C42D8();
  (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
  *v44 = swift_getKeyPath();
  *v43 = v35;
  *(v43 + 8) = v37;
  *(v43 + 16) = v10 & 1;
  *(v43 + 24) = v40;
  *(v43 + 32) = KeyPath;
  *(v43 + 40) = v41;
  *(v43 + 48) = 0;
  sub_2C46B8();
  sub_2C2AD8();
  v48 = v86;
  sub_69130(v43, v86, &qword_3BE148);
  v49 = (v48 + *(v87 + 44));
  v50 = v91[5];
  v49[4] = v91[4];
  v49[5] = v50;
  v49[6] = v91[6];
  v51 = v91[1];
  *v49 = v91[0];
  v49[1] = v51;
  v52 = v91[3];
  v49[2] = v91[2];
  v49[3] = v52;
  LOBYTE(v41) = sub_2C3768();
  sub_2C24D8();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v48;
  v62 = v88;
  sub_69130(v61, v88, &qword_3BE138);
  v63 = v62 + *(v89 + 44);
  *v63 = v41;
  *(v63 + 8) = v54;
  *(v63 + 16) = v56;
  *(v63 + 24) = v58;
  *(v63 + 32) = v60;
  *(v63 + 40) = 0;
  LOBYTE(v41) = sub_2C3778();
  sub_2C24D8();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v62;
  v73 = v90;
  sub_69130(v72, v90, &qword_3BE128);
  result = sub_6620C(&qword_3BE110);
  v75 = v73 + *(result + 36);
  *v75 = v41;
  *(v75 + 8) = v65;
  *(v75 + 16) = v67;
  *(v75 + 24) = v69;
  *(v75 + 32) = v71;
  *(v75 + 40) = 0;
  return result;
}

uint64_t sub_9D598(uint64_t a1)
{
  v2 = sub_2C29D8();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2C2FC8();
}

uint64_t sub_9D6E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3BD588);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_6620C(&qword_3BDD10);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[11];
    goto LABEL_3;
  }

  v15 = sub_2BE808();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_9D87C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_6620C(&qword_3BD588);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = sub_6620C(&qword_3BDD10);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[11];
    goto LABEL_3;
  }

  v15 = sub_2BE808();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[13];

  return v16(v17, a2, a2, v15);
}

void sub_9DA08()
{
  sub_A00B8(319, &qword_3BD600, &type metadata accessor for SizeConstants);
  if (v0 <= 0x3F)
  {
    sub_9DC2C(319, &qword_3BDD80);
    if (v1 <= 0x3F)
    {
      sub_A00B8(319, &qword_3BDD88, &type metadata accessor for BaseObjectGraph);
      if (v2 <= 0x3F)
      {
        sub_A010C(319, &qword_3BDD90, &qword_3BD200, &unk_2FA030, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_9DC2C(319, &qword_3BC858);
          if (v4 <= 0x3F)
          {
            sub_A010C(319, &qword_3BDD98, &qword_3BDDA0, &unk_2E5200, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_A00B8(319, &qword_3BDDA8, &type metadata accessor for DataStack);
              if (v6 <= 0x3F)
              {
                sub_A010C(319, &qword_3BDDB0, &unk_3BDDB8, &unk_2E5208, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  sub_2BE808();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_9DC2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2C2558();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_9DD40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_9DE34()
{
  v1 = type metadata accessor for ChartComponentModel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_68CD0(v0 + v3);
  if (*(v0 + v3 + 64))
  {
    sub_68CD0(v5 + 40);
  }

  v6 = v1[6];
  v7 = sub_2C5018();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[7];
  v10 = sub_2BEA28();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[8];
  v13 = sub_2BFDD8();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  v14 = v1[9];
  v15 = sub_2C1DC8();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_9E0CC()
{
  result = qword_3BDE48;
  if (!qword_3BDE48)
  {
    sub_718D4(&qword_3BDE40);
    sub_9DD40(&qword_3BDE50, type metadata accessor for ShelfView);
    sub_72B74(&qword_3BDE58, &qword_3C82F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BDE48);
  }

  return result;
}

void *sub_9E1B4(uint64_t a1, uint64_t a2)
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

  sub_6620C(&qword_3BC4D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_9E238(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_6620C(&qword_3BC4B8);
  v4 = *(type metadata accessor for GenreHighlight(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_9E334()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_9E374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_9E3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_9E444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_9E4A4()
{
  v1 = type metadata accessor for ChartComponent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for ChartComponentModel();
  v6 = *(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  v8 = v0 + v3;
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2C0C98();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = v4 + v6;
  sub_71AF4(*(v8 + v1[5]), *(v8 + v1[5] + 8));
  sub_71AF4(*(v8 + v1[6]), *(v8 + v1[6] + 8));

  v11 = v8 + v1[8];
  if (*(v11 + 40))
  {
    sub_68CD0(v11);
  }

  else
  {
  }

  v12 = v3 + v10;
  sub_71AF4(*(v8 + v1[9]), *(v8 + v1[9] + 8));
  sub_9E94C(*(v8 + v1[10]), *(v8 + v1[10] + 8));
  v13 = v1[11];
  sub_6620C(&qword_3BDD08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_2BF0B8();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
  }

  v15 = v12 & ~v6;
  v16 = v8 + v1[12];
  if (*(v16 + 40))
  {
    if (*(v16 + 24))
    {
      sub_68CD0(v16);
    }
  }

  else
  {
  }

  v17 = v1[13];
  v18 = sub_2BE808();
  (*(*(v18 - 8) + 8))(v8 + v17, v18);
  v19 = v0 + v15;
  sub_68CD0(v0 + v15);
  if (*(v0 + v15 + 64))
  {
    sub_68CD0(v19 + 40);
  }

  v20 = v5[6];
  v21 = sub_2C5018();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v19 + v20, 1, v21))
  {
    (*(v22 + 8))(v19 + v20, v21);
  }

  v23 = v5[7];
  v24 = sub_2BEA28();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v19 + v23, 1, v24))
  {
    (*(v25 + 8))(v19 + v23, v24);
  }

  v26 = v2 | v6;
  v27 = v5[8];
  v28 = sub_2BFDD8();
  (*(*(v28 - 8) + 8))(v19 + v27, v28);
  v29 = v5[9];
  v30 = sub_2C1DC8();
  (*(*(v30 - 8) + 8))(v19 + v29, v30);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32, v26 | 7);
}

void sub_9E94C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_9E958@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ChartComponent(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ChartComponentModel() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = (v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  return sub_9810C(v1 + v4, v1 + v7, v9, v11, v12, v13, v14, a1);
}

unint64_t sub_9EA8C()
{
  result = qword_3BDEC8;
  if (!qword_3BDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BDEC8);
  }

  return result;
}

uint64_t *sub_9EB58(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_9EBF4()
{
  v1 = type metadata accessor for ChartComponentModel();
  v28 = *(*(v1 - 1) + 80);
  v2 = (v28 + 16) & ~v28;
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for ChartComponent(0);
  v5 = *(*(v4 - 1) + 80);
  v27 = *(*(v4 - 1) + 64);
  v6 = v0 + v2;
  sub_68CD0(v6);
  if (*(v6 + 64))
  {
    sub_68CD0(v6 + 40);
  }

  v7 = v1[6];
  v8 = sub_2C5018();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = (v3 + v5 + 32) & ~v5;
  v11 = v1[7];
  v12 = sub_2BEA28();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = v1[8];
  v15 = sub_2BFDD8();
  (*(*(v15 - 8) + 8))(v6 + v14, v15);
  v16 = v1[9];
  v17 = sub_2C1DC8();
  (*(*(v17 - 8) + 8))(v6 + v16, v17);

  swift_unknownObjectRelease();
  v18 = v0 + v10;
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_2C0C98();
    (*(*(v19 - 8) + 8))(v0 + v10, v19);
  }

  else
  {
  }

  sub_71AF4(*(v18 + v4[5]), *(v18 + v4[5] + 8));
  sub_71AF4(*(v18 + v4[6]), *(v18 + v4[6] + 8));

  v20 = v18 + v4[8];
  if (*(v20 + 40))
  {
    sub_68CD0(v20);
  }

  else
  {
  }

  sub_71AF4(*(v18 + v4[9]), *(v18 + v4[9] + 8));
  sub_9E94C(*(v18 + v4[10]), *(v18 + v4[10] + 8));
  v21 = v4[11];
  sub_6620C(&qword_3BDD08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_2BF0B8();
    (*(*(v22 - 8) + 8))(v18 + v21, v22);
  }

  else
  {
  }

  v23 = v18 + v4[12];
  if (*(v23 + 40))
  {
    if (*(v23 + 24))
    {
      sub_68CD0(v23);
    }
  }

  else
  {
  }

  v24 = v4[13];
  v25 = sub_2BE808();
  (*(*(v25 - 8) + 8))(v18 + v24, v25);

  return _swift_deallocObject(v0, v10 + v27, v28 | v5 | 7);
}

uint64_t sub_9F0B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChartComponentModel() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for ChartComponent(0) - 8);
  v8 = *(v2 + v6);
  v9 = *(v2 + v6 + 8);
  v10 = *(v2 + v6 + 16);
  v11 = *(v2 + v6 + 24);
  v12 = v2 + ((v6 + *(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_99668(a1, v8, v9, v10, v11, v12, a2);
}

uint64_t sub_9F1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BDED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9F21C()
{
  v1 = type metadata accessor for ChartComponent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2C0C98();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  sub_71AF4(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v7 = v5 + v1[8];
  if (*(v7 + 40))
  {
    sub_68CD0(v7);
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_9E94C(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v8 = v1[11];
  sub_6620C(&qword_3BDD08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2BF0B8();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v5 + v1[12];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      sub_68CD0(v10);
    }
  }

  else
  {
  }

  v11 = v1[13];
  v12 = sub_2BE808();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_9F490@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ChartComponent(0);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];

  return sub_99A38(a1, v5, v6, v7, v8, v9, a2);
}

unint64_t sub_9F51C()
{
  result = qword_3BDF38;
  if (!qword_3BDF38)
  {
    sub_718D4(&qword_3BDF30);
    sub_72B74(&qword_3BDF40, &qword_3BDF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BDF38);
  }

  return result;
}

uint64_t sub_9F5CC()
{
  v1 = type metadata accessor for ChartComponent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2C0C98();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  sub_71AF4(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v7 = v5 + v1[8];
  if (*(v7 + 40))
  {
    sub_68CD0(v7);
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_9E94C(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v8 = v1[11];
  sub_6620C(&qword_3BDD08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2BF0B8();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v5 + v1[12];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      sub_68CD0(v10);
    }
  }

  else
  {
  }

  v11 = v1[13];
  v12 = sub_2BE808();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_9F838(double a1)
{
  type metadata accessor for ChartComponent(0);

  return sub_9A964(a1);
}

unint64_t sub_9F8B8()
{
  result = qword_3C8350;
  if (!qword_3C8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8350);
  }

  return result;
}

unint64_t sub_9F91C()
{
  result = qword_3BDFB0;
  if (!qword_3BDFB0)
  {
    sub_718D4(&qword_3BDF70);
    sub_9F9D4();
    sub_72B74(&qword_3BDFD0, &qword_3BDFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BDFB0);
  }

  return result;
}

unint64_t sub_9F9D4()
{
  result = qword_3BDFB8;
  if (!qword_3BDFB8)
  {
    sub_718D4(&qword_3BDF68);
    sub_718D4(&qword_3C8300);
    sub_72B74(&unk_3C8340, &qword_3C8300);
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3BDFC0, &qword_3BDFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BDFB8);
  }

  return result;
}

uint64_t sub_9FB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDC90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_9FB74(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_9FBA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3BC7C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_6620C(&qword_3BE010);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_6620C(&qword_3BE018);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = sub_2BFDD8();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9] + 24);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_9FD84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6620C(&qword_3BC7C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_6620C(&qword_3BE010);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_6620C(&qword_3BE018);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = sub_2BFDD8();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9] + 24) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_9FF44()
{
  sub_A00B8(319, &qword_3BC850, &type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_A00B8(319, &qword_3BE088, &type metadata accessor for FontConstants.SectionHeader);
    if (v1 <= 0x3F)
    {
      sub_9DC2C(319, &qword_3BC858);
      if (v2 <= 0x3F)
      {
        sub_A00B8(319, &qword_3BE090, &type metadata accessor for LayoutDirection);
        if (v3 <= 0x3F)
        {
          sub_2BFDD8();
          if (v4 <= 0x3F)
          {
            sub_A010C(319, &qword_3BE098, &qword_3BC248, &unk_2E2F20, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_A00B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C2558();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_A010C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_718D4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_A0174()
{
  result = qword_3BE0D8;
  if (!qword_3BE0D8)
  {
    sub_718D4(&qword_3BE0E0);
    sub_72B74(&qword_3BDE30, &qword_3BDE28);
    sub_72B74(&qword_3BDE38, &qword_3BDE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE0D8);
  }

  return result;
}

uint64_t sub_A0274()
{
  v1 = *(type metadata accessor for ChartSectionTitleView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_9CBE4(v2);
}

uint64_t sub_A02E4()
{
  v1 = type metadata accessor for ChartSectionTitleView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_6620C(&unk_3C8530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2C0D48();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_6620C(&qword_3BDEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2C0958();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_71AF4(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v1[7];
  sub_6620C(&qword_3BDEE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2C29D8();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[8];
  v12 = sub_2BFDD8();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v5 + v1[9];
  if (*(v13 + 24))
  {
    sub_68CD0(v13);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_A0570(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_A0608()
{
  result = qword_3BE118;
  if (!qword_3BE118)
  {
    sub_718D4(&qword_3BE110);
    sub_A0694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE118);
  }

  return result;
}

unint64_t sub_A0694()
{
  result = qword_3BE120;
  if (!qword_3BE120)
  {
    sub_718D4(&qword_3BE128);
    sub_A0720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE120);
  }

  return result;
}

unint64_t sub_A0720()
{
  result = qword_3BE130;
  if (!qword_3BE130)
  {
    sub_718D4(&qword_3BE138);
    sub_A07AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE130);
  }

  return result;
}

unint64_t sub_A07AC()
{
  result = qword_3BE140;
  if (!qword_3BE140)
  {
    sub_718D4(&qword_3BE148);
    sub_A0864();
    sub_72B74(&qword_3BD800, &qword_3BD7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE140);
  }

  return result;
}

unint64_t sub_A0864()
{
  result = qword_3BE150;
  if (!qword_3BE150)
  {
    sub_718D4(&qword_3BE158);
    sub_72B74(&qword_3BE160, &qword_3BE168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE150);
  }

  return result;
}

uint64_t sub_A092C()
{
  sub_718D4(&qword_3BE0E8);
  sub_2C2A58();
  sub_72B74(&qword_3BE100, &qword_3BE0E8);
  sub_9DD40(&qword_3BE108, &type metadata accessor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

id sub_A0A10()
{
  result = [objc_allocWithZone(type metadata accessor for TVAppService()) init];
  qword_3BE170 = result;
  return result;
}

id static TVAppService.shared.getter()
{
  if (qword_3BB720 != -1)
  {
    swift_once();
  }

  v1 = qword_3BE170;

  return v1;
}

uint64_t sub_A0B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2C65B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_A0B90(uint64_t a1)
{
  v2 = sub_A4024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_A0BCC(uint64_t a1)
{
  v2 = sub_A4024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Shelf.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_A0C38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_6620C(&qword_3BE208);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_72084(a1, a1[3]);
  sub_A4024();
  sub_2C67A8();
  if (v2)
  {
    return sub_68CD0(a1);
  }

  v9 = sub_2C6468();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_68CD0(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_A0DB4(void *a1)
{
  v2 = sub_6620C(&qword_3BE218);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_72084(a1, a1[3]);
  sub_A4024();
  sub_2C67B8();
  sub_2C6518();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_A0EF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x776F68537674;
  }

  else
  {
    v3 = 0x6569766F6DLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x776F68537674;
  }

  else
  {
    v5 = 0x6569766F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = sub_2C65B8();
  }

  return v8 & 1;
}

Swift::Int sub_A0F90()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_A100C()
{
  sub_2C5958();
}

Swift::Int sub_A1074()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_A10EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_388E90;
  v8._object = v3;
  v5 = sub_2C63E8(v4, v8);

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

void sub_A114C(uint64_t *a1@<X8>)
{
  v2 = 0x6569766F6DLL;
  if (*v1)
  {
    v2 = 0x776F68537674;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_A1184()
{
  v1 = OBJC_IVAR___BKTVAppService____lazy_storage___tvMapping;
  if (*(v0 + OBJC_IVAR___BKTVAppService____lazy_storage___tvMapping))
  {
    v2 = *(v0 + OBJC_IVAR___BKTVAppService____lazy_storage___tvMapping);
  }

  else
  {
    v2 = sub_A11E8();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_A11E8()
{
  sub_2C4868();
  v0 = sub_2C4858();
  v1 = sub_2C4848();

  if (!*(v1 + 16) || (v2 = sub_5D228(0xD00000000000001CLL, 0x8000000000302560), (v3 & 1) == 0))
  {

    return sub_67CF4(&_swiftEmptyArrayStorage);
  }

  sub_68C64(*(v1 + 56) + 32 * v2, &v57);

  sub_6620C(&qword_3BE1E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_67CF4(&_swiftEmptyArrayStorage);
  }

  v4 = 0;
  v5 = 1 << *(v56 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v56 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = &_swiftEmptyDictionarySingleton;
  while (2)
  {
    while (2)
    {
      v55 = v9;
      while (1)
      {
        do
        {
          if (!v7)
          {
            while (1)
            {
              v10 = v4 + 1;
              if (__OFADD__(v4, 1))
              {
                break;
              }

              if (v10 >= v8)
              {

                return v55;
              }

              v7 = *(v56 + 64 + 8 * v10);
              ++v4;
              if (v7)
              {
                v4 = v10;
                goto LABEL_13;
              }
            }

            __break(1u);
            goto LABEL_42;
          }

LABEL_13:
          v11 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v12 = v11 | (v4 << 6);
          v13 = *(*(v56 + 56) + 8 * v12);
        }

        while (!*(v13 + 16));
        v14 = (*(v56 + 48) + 16 * v12);
        v16 = *v14;
        v15 = v14[1];

        v17 = sub_5D228(1682536052, 0xE400000000000000);
        if ((v18 & 1) == 0 || !*(v13 + 16))
        {
          goto LABEL_20;
        }

        v19 = (*(v13 + 56) + 16 * v17);
        v52 = *v19;
        v53 = v16;
        v20 = v19[1];

        v21 = sub_5D228(0x54746E65746E6F63, 0xEB00000000657079);
        if ((v22 & 1) == 0)
        {

LABEL_20:

          goto LABEL_21;
        }

        v51 = v20;
        v23 = (*(v13 + 56) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];

        v26._rawValue = &off_389E98;
        v58._countAndFlagsBits = v24;
        v58._object = v25;
        v27 = sub_2C63E8(v26, v58);

        if (!v27)
        {
          break;
        }

        v28 = v53;
        if (v27 == 1)
        {
          goto LABEL_24;
        }

LABEL_21:
      }

      v28 = v53;
LABEL_24:
      v54 = v27;
      if (*(v13 + 16) && (v29 = sub_5D228(1701667182, 0xE400000000000000), (v30 & 1) != 0))
      {
        v31 = (*(v13 + 56) + 16 * v29);
        v49 = *v31;
        v50 = v31[1];
      }

      else
      {
        v49 = 0x6E776F6E6B6E55;
        v50 = 0xE700000000000000;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v55;
      v33 = sub_5D228(v28, v15);
      v35 = v55[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v39 = v34;
      if (v55[3] >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v47 = v33;
          sub_63424();
          v33 = v47;
        }
      }

      else
      {
        sub_5E9A8(v38, isUniquelyReferenced_nonNull_native);
        v33 = sub_5D228(v28, v15);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_44;
        }
      }

      v9 = v57;
      if (v39)
      {
        v41 = v57[7] + 40 * v33;
        *v41 = v52;
        *(v41 + 8) = v51;
        *(v41 + 16) = v54;
        *(v41 + 24) = v49;
        *(v41 + 32) = v50;
        v42 = v9;

        v9 = v42;
        continue;
      }

      break;
    }

    v57[(v33 >> 6) + 8] |= 1 << v33;
    v43 = (v9[6] + 16 * v33);
    *v43 = v28;
    v43[1] = v15;
    v44 = v9[7] + 40 * v33;
    *v44 = v52;
    *(v44 + 8) = v51;
    *(v44 + 16) = v54;
    *(v44 + 24) = v49;
    *(v44 + 32) = v50;
    v45 = v9[2];
    v37 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (!v37)
    {
      v9[2] = v46;
      continue;
    }

    break;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_2C6678();
  __break(1u);
  return result;
}

void sub_A1648(void *a1)
{
  v3 = [a1 context];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v9[4] = sub_A3BE8;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1CEBE8;
  v9[3] = &unk_38B6A8;
  v5 = _Block_copy(v9);
  v6 = v1;
  v7 = a1;

  v8 = [objc_opt_self() valueWithNewPromiseInContext:v3 fromExecutor:v5];
  _Block_release(v5);

  if (!v8)
  {
    __break(1u);
  }
}

uint64_t sub_A176C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_6620C(&unk_3BDBB0);
  result = __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  if (a1)
  {
    v11 = sub_2C5C58();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a3;
    v12[5] = a4;
    v12[6] = a1;
    v13 = a1;
    v14 = a3;
    v15 = a4;
    sub_249B98(0, 0, v10, &unk_2E57F0, v12);
  }

  return result;
}

uint64_t sub_A1894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = sub_6620C(&qword_3BE1A8);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v8 = sub_2BF188();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_2C5908();
  v6[24] = swift_task_alloc();
  v9 = sub_2BF1D8();
  v6[25] = v9;
  v6[26] = *(v9 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v10 = sub_6620C(&qword_3BE1B0);
  v6[29] = v10;
  v6[30] = *(v10 - 8);
  v6[31] = swift_task_alloc();
  v11 = sub_2BF1F8();
  v6[32] = v11;
  v6[33] = *(v11 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return _swift_task_switch(sub_A1B30, 0, 0);
}

uint64_t sub_A1B30()
{
  v1 = [*(v0 + 120) toString];
  if (!v1)
  {
    __break(1u);
    return VideoResourceRequest.response()(v1, v2);
  }

  v3 = v1;
  v4 = sub_2C58C8();
  v6 = v5;

  v7 = sub_A1184();
  if (*(v7 + 16))
  {
    v8 = sub_5D228(v4, v6);
    v10 = v9;

    if (v10)
    {
      v11 = *(v7 + 56) + 40 * v8;
      *(v0 + 288) = *v11;
      *(v0 + 296) = *(v11 + 8);
      v12 = *(v11 + 16);
      *(v0 + 344) = v12;
      *(v0 + 304) = *(v11 + 32);

      if (v12)
      {
        v13 = sub_2C65B8();

        if ((v13 & 1) == 0)
        {
          sub_A3D20();

          sub_2BF198();
          v14 = swift_task_alloc();
          *(v0 + 328) = v14;
          *v14 = v0;
          v14[1] = sub_A2730;
          v1 = *(v0 + 176);
          v2 = *(v0 + 136);
          goto LABEL_13;
        }
      }

      else
      {
      }

      sub_A3D20();

      sub_2BF1A8();
      v21 = swift_task_alloc();
      *(v0 + 312) = v21;
      *v21 = v0;
      v21[1] = sub_A1EA4;
      v1 = *(v0 + 272);
      v2 = *(v0 + 232);
LABEL_13:

      return VideoResourceRequest.response()(v1, v2);
    }
  }

  else
  {
  }

  v15 = *(v0 + 128);

  v16 = [objc_opt_self() sharedInstance];
  v23.value._rawValue = &_swiftEmptyArrayStorage;
  v24._countAndFlagsBits = 0x80000000003024F0;
  v17.super.isa = v15;
  v23.is_nil = 106;
  v24._object = &stru_20 + 70;
  sub_2C6078(v17, v23, v24, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_A1EA4()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_A2FAC;
  }

  else
  {
    v2 = sub_A1FB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A1FB8()
{
  v63 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  (*(*(v0 + 264) + 32))(*(v0 + 280), *(v0 + 272), *(v0 + 256));
  sub_2BF1E8();
  sub_2BF1C8();
  (*(v3 + 8))(v1, v2);
  v4 = WLKRestrictionsMaximumEffectiveMovieRanking();
  if (v4)
  {
    v61 = 0;
    v62 = 1;
    v5 = v4;
    sub_2C5D08();
  }

  v6 = *(v0 + 320);
  sub_2BE1C8();
  swift_allocObject();
  sub_2BE1B8();
  sub_A3E30(&qword_3BE1E0, &type metadata accessor for MovieItem);
  v7 = sub_2BE1A8();
  if (!v6)
  {
    v27 = *(v0 + 256);
    v26 = *(v0 + 264);
    v28 = *(v0 + 240);
    v58 = *(v0 + 248);
    v60 = *(v0 + 280);
    v29 = *(v0 + 232);
    v30 = v7;
    v31 = v8;

    sub_2C58F8();
    v32 = sub_2C58D8();
    v34 = v33;
    sub_A3DDC(v30, v31);
    (*(v28 + 8))(v58, v29);
    v35 = v60;
LABEL_12:
    (*(v26 + 8))(v35, v27);
    goto LABEL_13;
  }

  if (qword_3BB8A8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 120);
  v10 = sub_2C00B8();
  sub_57AD8(v10, qword_3C3290);

  v11 = v9;
  swift_errorRetain();
  v12 = sub_2C0098();
  v13 = sub_2C5DC8();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 296);
  if (v14)
  {
    v56 = *(v0 + 288);
    v59 = v13;
    v16 = *(v0 + 120);
    v17 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v17 = 136315650;
    v18 = v16;
    v19 = [v18 description];
    v20 = sub_2C58C8();
    v22 = v21;

    v23 = sub_5CCF4(v20, v22, &v61);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;

    v24 = sub_5CCF4(v56, v15, &v61);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v25;
    *v57 = v25;
    _os_log_impl(&dword_0, v12, v59, "Failed to retrieve TV <Movie> information for adamID %s -> %s with error: %@", v17, 0x20u);
    sub_A3D74(v57);

    swift_arrayDestroy();
  }

  else
  {
  }

  v36 = *(v0 + 320);
  v38 = *(v0 + 240);
  v37 = *(v0 + 248);
  v39 = *(v0 + 232);
  v40 = *(v0 + 128);
  v41 = [objc_opt_self() sharedInstance];
  v65.value._rawValue = &_swiftEmptyArrayStorage;
  v42.super.isa = v40;
  v65.is_nil = 106;
  v67._countAndFlagsBits = 0x80000000003024F0;
  v67._object = &stru_20 + 46;
  sub_2C6078(v42, v65, v67, v43);

  (*(v38 + 8))(v37, v39);
  v32 = 0;
  v34 = 0;
  if (!v36)
  {
    v35 = *(v0 + 280);
    v27 = *(v0 + 256);
    v26 = *(v0 + 264);
    goto LABEL_12;
  }

LABEL_13:
  v44 = *(v0 + 344);
  v45 = *(v0 + 128);
  v46 = [objc_opt_self() sharedInstance];
  sub_6620C(&qword_3BC308);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2E3F30;
  sub_6620C(&qword_3BE1C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 32) = 1701869940;
  v49 = 0x6569766F6DLL;
  if (v44)
  {
    v49 = 0x776F68537674;
  }

  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v49;
  v50 = 0xE600000000000000;
  if (!v44)
  {
    v50 = 0xE500000000000000;
  }

  *(inited + 56) = v50;
  *(inited + 64) = 1635017060;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = v32;
  *(inited + 88) = v34;
  v51 = sub_67E30(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BE1C8);
  swift_arrayDestroy();
  *(v47 + 56) = sub_6620C(&qword_3BE1D0);
  *(v47 + 32) = v51;
  v52.super.isa = v45;
  v66.value._rawValue = v47;
  v66.is_nil = 106;
  v68._countAndFlagsBits = 0x80000000003024F0;
  v68._object = &stru_20 + 64;
  sub_2C6078(v52, v66, v68, v53);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_A2730()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_A34C0;
  }

  else
  {
    v2 = sub_A2844;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A2844()
{
  v62 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 176), *(v0 + 160));
  sub_2BF178();
  sub_2BF1C8();
  (*(v2 + 8))(v1, v3);
  v4 = WLKRestrictionsMaximumEffectiveTVShowRanking();
  if (v4)
  {
    v60 = 0;
    v61 = 1;
    v5 = v4;
    sub_2C5D08();
  }

  v6 = *(v0 + 336);
  sub_2BE1C8();
  swift_allocObject();
  sub_2BE1B8();
  sub_A3E30(&qword_3BE1D8, &type metadata accessor for TVShowItem);
  v7 = sub_2BE1A8();
  if (!v6)
  {
    v27 = *(v0 + 160);
    v26 = *(v0 + 168);
    v28 = *(v0 + 144);
    v57 = *(v0 + 136);
    v59 = *(v0 + 152);
    v29 = *(v0 + 184);
    v30 = v7;
    v31 = v8;

    sub_2C58F8();
    v32 = sub_2C58D8();
    v34 = v33;
    sub_A3DDC(v30, v31);
    (*(v28 + 8))(v59, v57);
LABEL_12:
    (*(v26 + 8))(v29, v27);
    goto LABEL_13;
  }

  if (qword_3BB8A8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 120);
  v10 = sub_2C00B8();
  sub_57AD8(v10, qword_3C3290);

  v11 = v9;
  swift_errorRetain();
  v12 = sub_2C0098();
  v13 = sub_2C5DC8();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 296);
  if (v14)
  {
    v55 = *(v0 + 288);
    v58 = v13;
    v16 = *(v0 + 120);
    v17 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v17 = 136315650;
    v18 = v16;
    v19 = [v18 description];
    v20 = sub_2C58C8();
    v22 = v21;

    v23 = sub_5CCF4(v20, v22, &v60);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;

    v24 = sub_5CCF4(v55, v15, &v60);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v25;
    *v56 = v25;
    _os_log_impl(&dword_0, v12, v58, "Failed to retrieve TV <TV Show> information for adamID %s -> %s with error: %@", v17, 0x20u);
    sub_A3D74(v56);

    swift_arrayDestroy();
  }

  else
  {
  }

  v35 = *(v0 + 336);
  v37 = *(v0 + 144);
  v36 = *(v0 + 152);
  v38 = *(v0 + 128);
  v39 = *(v0 + 136);
  v40 = [objc_opt_self() sharedInstance];
  v64.value._rawValue = &_swiftEmptyArrayStorage;
  v41.super.isa = v38;
  v64.is_nil = 106;
  v66._countAndFlagsBits = 0x80000000003024F0;
  v66._object = &stru_20 + 61;
  sub_2C6078(v41, v64, v66, v42);

  (*(v37 + 8))(v36, v39);
  v32 = 0;
  v34 = 0;
  if (!v35)
  {
    v29 = *(v0 + 184);
    v27 = *(v0 + 160);
    v26 = *(v0 + 168);
    goto LABEL_12;
  }

LABEL_13:
  v43 = *(v0 + 344);
  v44 = *(v0 + 128);
  v45 = [objc_opt_self() sharedInstance];
  sub_6620C(&qword_3BC308);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2E3F30;
  sub_6620C(&qword_3BE1C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 32) = 1701869940;
  v48 = 0x6569766F6DLL;
  if (v43)
  {
    v48 = 0x776F68537674;
  }

  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v48;
  v49 = 0xE600000000000000;
  if (!v43)
  {
    v49 = 0xE500000000000000;
  }

  *(inited + 56) = v49;
  *(inited + 64) = 1635017060;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = v32;
  *(inited + 88) = v34;
  v50 = sub_67E30(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BE1C8);
  swift_arrayDestroy();
  *(v46 + 56) = sub_6620C(&qword_3BE1D0);
  *(v46 + 32) = v50;
  v51.super.isa = v44;
  v65.value._rawValue = v46;
  v65.is_nil = 106;
  v67._countAndFlagsBits = 0x80000000003024F0;
  v67._object = &stru_20 + 64;
  sub_2C6078(v51, v65, v67, v52);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_A2FAC()
{
  v42 = v0;
  if (qword_3BB8A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C3290);

  v3 = v1;
  swift_errorRetain();
  v4 = sub_2C0098();
  v5 = sub_2C5DC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v38 = *(v0 + 288);
    v40 = v5;
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = v8;
    v11 = [v10 description];
    v12 = sub_2C58C8();
    v14 = v13;

    v15 = sub_5CCF4(v12, v14, &v41);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;

    v16 = sub_5CCF4(v38, v7, &v41);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v39 = v17;
    _os_log_impl(&dword_0, v4, v40, "Failed to retrieve TV <Movie> information for adamID %s -> %s with error: %@", v9, 0x20u);
    sub_A3D74(v39);

    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = *(v0 + 320);
  v20 = *(v0 + 240);
  v19 = *(v0 + 248);
  v21 = *(v0 + 232);
  v22 = *(v0 + 128);
  v23 = [objc_opt_self() sharedInstance];
  v44.value._rawValue = &_swiftEmptyArrayStorage;
  v46._countAndFlagsBits = 0x80000000003024F0;
  v24.super.isa = v22;
  v44.is_nil = 106;
  v46._object = &stru_20 + 46;
  sub_2C6078(v24, v44, v46, v25);

  (*(v20 + 8))(v19, v21);
  if (!v18)
  {
    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
  }

  v26 = *(v0 + 344);
  v27 = *(v0 + 128);
  v28 = [objc_opt_self() sharedInstance];
  sub_6620C(&qword_3BC308);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2E3F30;
  sub_6620C(&qword_3BE1C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 32) = 1701869940;
  v31 = 0x6569766F6DLL;
  if (v26)
  {
    v31 = 0x776F68537674;
  }

  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v31;
  v32 = 0xE600000000000000;
  if (!v26)
  {
    v32 = 0xE500000000000000;
  }

  *(inited + 56) = v32;
  *(inited + 64) = 1635017060;
  *(inited + 80) = 0;
  *(inited + 88) = 0;
  *(inited + 72) = 0xE400000000000000;
  v33 = sub_67E30(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BE1C8);
  swift_arrayDestroy();
  *(v29 + 56) = sub_6620C(&qword_3BE1D0);
  *(v29 + 32) = v33;
  v47._countAndFlagsBits = 0x80000000003024F0;
  v34.super.isa = v27;
  v45.value._rawValue = v29;
  v45.is_nil = 106;
  v47._object = &stru_20 + 64;
  sub_2C6078(v34, v45, v47, v35);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_A34C0()
{
  v42 = v0;
  if (qword_3BB8A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C3290);

  v3 = v1;
  swift_errorRetain();
  v4 = sub_2C0098();
  v5 = sub_2C5DC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v38 = *(v0 + 288);
    v40 = v5;
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = v8;
    v11 = [v10 description];
    v12 = sub_2C58C8();
    v14 = v13;

    v15 = sub_5CCF4(v12, v14, &v41);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;

    v16 = sub_5CCF4(v38, v7, &v41);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v39 = v17;
    _os_log_impl(&dword_0, v4, v40, "Failed to retrieve TV <TV Show> information for adamID %s -> %s with error: %@", v9, 0x20u);
    sub_A3D74(v39);

    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = *(v0 + 336);
  v20 = *(v0 + 144);
  v19 = *(v0 + 152);
  v21 = *(v0 + 128);
  v22 = *(v0 + 136);
  v23 = [objc_opt_self() sharedInstance];
  v44.value._rawValue = &_swiftEmptyArrayStorage;
  v46._countAndFlagsBits = 0x80000000003024F0;
  v24.super.isa = v21;
  v44.is_nil = 106;
  v46._object = &stru_20 + 61;
  sub_2C6078(v24, v44, v46, v25);

  (*(v20 + 8))(v19, v22);
  if (!v18)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
  }

  v26 = *(v0 + 344);
  v27 = *(v0 + 128);
  v28 = [objc_opt_self() sharedInstance];
  sub_6620C(&qword_3BC308);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2E3F30;
  sub_6620C(&qword_3BE1C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 32) = 1701869940;
  v31 = 0x6569766F6DLL;
  if (v26)
  {
    v31 = 0x776F68537674;
  }

  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v31;
  v32 = 0xE600000000000000;
  if (!v26)
  {
    v32 = 0xE500000000000000;
  }

  *(inited + 56) = v32;
  *(inited + 64) = 1635017060;
  *(inited + 80) = 0;
  *(inited + 88) = 0;
  *(inited + 72) = 0xE400000000000000;
  v33 = sub_67E30(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BE1C8);
  swift_arrayDestroy();
  *(v29 + 56) = sub_6620C(&qword_3BE1D0);
  *(v29 + 32) = v33;
  v47._countAndFlagsBits = 0x80000000003024F0;
  v34.super.isa = v27;
  v45.value._rawValue = v29;
  v45.is_nil = 106;
  v47._object = &stru_20 + 64;
  sub_2C6078(v34, v45, v47, v35);

  v36 = *(v0 + 8);

  return v36();
}

id TVAppService.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___BKTVAppService____lazy_storage___tvMapping] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

__n128 sub_A3AF4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_A3B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_A3B50(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_A3BA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A3BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A3C08()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_A3C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7100C;

  return sub_A1894(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_A3D20()
{
  result = qword_3BE1B8;
  if (!qword_3BE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE1B8);
  }

  return result;
}

uint64_t sub_A3D74(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BFEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A3DDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_A3E30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A3E78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_A3EC0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_A3F20()
{
  result = qword_3BE1F0;
  if (!qword_3BE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE1F0);
  }

  return result;
}

unint64_t sub_A3F78()
{
  result = qword_3BE1F8;
  if (!qword_3BE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE1F8);
  }

  return result;
}

unint64_t sub_A3FD0()
{
  result = qword_3BE200;
  if (!qword_3BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE200);
  }

  return result;
}

unint64_t sub_A4024()
{
  result = qword_3BE210;
  if (!qword_3BE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE210);
  }

  return result;
}

unint64_t sub_A408C()
{
  result = qword_3BE220;
  if (!qword_3BE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE220);
  }

  return result;
}

unint64_t sub_A40E4()
{
  result = qword_3BE228;
  if (!qword_3BE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE228);
  }

  return result;
}

unint64_t sub_A413C()
{
  result = qword_3BE230;
  if (!qword_3BE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE230);
  }

  return result;
}

uint64_t sub_A4190(uint64_t a1, _BYTE *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 152) = a5;
  *(v6 + 160) = a6;
  *(v6 + 136) = a1;
  *(v6 + 144) = a3;
  v9 = sub_2C06E8();
  *(v6 + 168) = v9;
  *(v6 + 176) = *(v9 - 8);
  *(v6 + 184) = swift_task_alloc();
  v10 = sub_2BF408();
  *(v6 + 192) = v10;
  *(v6 + 200) = *(v10 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  sub_2C0778();
  *(v6 + 248) = swift_task_alloc();
  v11 = sub_2BE898();
  *(v6 + 256) = v11;
  *(v6 + 264) = *(v11 - 8);
  *(v6 + 272) = swift_task_alloc();
  v12 = sub_2BEBD8();
  *(v6 + 280) = v12;
  *(v6 + 288) = *(v12 - 8);
  *(v6 + 296) = swift_task_alloc();
  v13 = sub_2C2148();
  *(v6 + 304) = v13;
  *(v6 + 312) = *(v13 - 8);
  *(v6 + 320) = swift_task_alloc();
  v14 = sub_2C2218();
  *(v6 + 328) = v14;
  *(v6 + 336) = *(v14 - 8);
  *(v6 + 344) = swift_task_alloc();
  sub_2C4BF8();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  v15 = sub_2C0368();
  *(v6 + 368) = v15;
  *(v6 + 376) = *(v15 - 8);
  *(v6 + 384) = swift_task_alloc();
  v16 = sub_2C5288();
  *(v6 + 392) = v16;
  *(v6 + 400) = *(v16 - 8);
  *(v6 + 408) = swift_task_alloc();
  v17 = sub_2BF368();
  *(v6 + 416) = v17;
  *(v6 + 424) = *(v17 - 8);
  *(v6 + 432) = swift_task_alloc();
  v18 = sub_2BE8F8();
  *(v6 + 440) = v18;
  *(v6 + 448) = *(v18 - 8);
  *(v6 + 456) = swift_task_alloc();
  sub_6620C(&qword_3BE238);
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 544) = *a2;
  *(v6 + 545) = *a4;
  v19 = sub_6620C(&qword_3BE240);
  v20 = swift_task_alloc();
  *(v6 + 472) = v20;
  *v20 = v6;
  v20[1] = sub_A46D8;

  return BaseObjectGraph.inject<A>(_:)(v6 + 16, v19, v19);
}

uint64_t sub_A46D8()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_A5CAC;
  }

  else
  {
    v2 = sub_A47EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A47EC()
{
  v1 = v0[58];
  v2 = v0[18];
  v3 = v0[5];
  v4 = v0[6];
  sub_72084(v0 + 2, v3);
  v5 = sub_2BF738();
  v0[61] = v5;
  v6 = *(v5 - 8);
  v0[62] = v6;
  (*(v6 + 56))(v1, 1, 1, v5);
  sub_72084(v2, v2[3]);
  v7 = sub_2BF3B8();
  (*(v4 + 8))(v1, v7, v8, v3, v4);

  sub_69198(v1, &qword_3BE238);
  v9 = v0[5];
  v10 = v0[6];
  sub_72084(v0 + 2, v9);
  sub_72084(v2, v2[3]);
  v11 = sub_2BF3B8();
  v13 = v12;
  v0[63] = v12;
  v17 = (*(v10 + 80) + **(v10 + 80));
  v14 = swift_task_alloc();
  v0[64] = v14;
  *v14 = v0;
  v14[1] = sub_A4A50;
  v15 = v0[17];

  return v17(v15, v11, v13, v9, v10);
}

uint64_t sub_A4A50()
{

  return _swift_task_switch(sub_A4B68, 0, 0);
}

uint64_t sub_A4B68()
{
  v21 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 544);
  v3 = *(v0 + 456);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v19 = *(v0 + 545);
  v6 = v4[3];
  v7 = v4[4];
  sub_72084(v4, v6);
  sub_2B7838(v6, v7, v3);
  v20[0] = v2;
  *(v0 + 520) = sub_20CB14(v4, &v19, v3, v20, v5);
  if (v1)
  {
    v8 = *(v0 + 488);
    v9 = *(v0 + 496);
    v11 = *(v0 + 448);
    v10 = *(v0 + 456);
    v12 = *(v0 + 440);
    v13 = *(v0 + 152);
    v14 = *(v0 + 136);

    sub_69198(v13, &qword_3BE248);
    (*(v9 + 8))(v14, v8);
    (*(v11 + 8))(v10, v12);
    sub_68CD0(v0 + 16);
    sub_68CD0(*(v0 + 144));

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
    v17 = sub_6620C(&unk_3BD1A0);
    v18 = swift_task_alloc();
    *(v0 + 528) = v18;
    *v18 = v0;
    v18[1] = sub_A4E50;

    return BaseObjectGraph.inject<A>(_:)(v0 + 56, v17, v17);
  }
}

uint64_t sub_A4E50()
{
  *(*v1 + 536) = v0;

  if (v0)
  {

    v2 = sub_A5E6C;
  }

  else
  {
    v2 = sub_A4F6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A4F6C()
{
  v85 = v0;
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  sub_72084(*(v0 + 144), *(*(v0 + 144) + 24));
  sub_2BF278();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for SeriesType.audiobook(_:) && v4 != enum case for SeriesType.book(_:))
  {
    return sub_2C6378();
  }

  sub_72084((v0 + 56), *(v0 + 80));
  sub_2C5278();
  v5 = sub_2C5798();
  v82 = v6;
  v83 = v5;
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 392);
  v62 = *(v0 + 360);
  v63 = *(v0 + 336);
  v64 = *(v0 + 328);
  v65 = *(v0 + 344);
  v67 = *(v0 + 320);
  v68 = *(v0 + 352);
  v10 = *(v0 + 312);
  v66 = *(v0 + 304);
  v69 = *(v0 + 288);
  v70 = *(v0 + 296);
  v73 = *(v0 + 256);
  v74 = *(v0 + 240);
  v77 = *(v0 + 232);
  v78 = *(v0 + 280);
  v84 = *(v0 + 200);
  v75 = *(v0 + 192);
  v76 = *(v0 + 272);
  v71 = *(v0 + 264);
  v72 = *(v0 + 144);
  v11 = *(v8 + 8);
  v11(*(v0 + 408), *(v0 + 392));
  v12 = *(v0 + 80);

  sub_72084((v0 + 56), v12);
  sub_2C5278();
  v79 = 0xD000000000000010;
  v13 = sub_2C5798();
  v80 = v14;
  v81 = v13;
  v11(v7, v9);
  sub_2C4BE8();
  sub_6620C(&qword_3BE250);
  v15 = *(sub_2C0338() - 8);
  v62 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2E3F30;
  sub_72084((v0 + 56), *(v0 + 80));
  sub_2C5278();
  v17 = sub_2C5798();
  v60 = v18;
  v61 = v17;
  v11(v7, v9);
  (*(v63 + 104))(v65, enum case for Metrics.DialogActionType.ok(_:), v64);
  (*(v10 + 104))(v67, enum case for Metrics.DialogType.alert(_:), v66);
  sub_2C2128();

  (*(v10 + 8))(v67, v66);
  (*(v63 + 8))(v65, v64);
  *(v0 + 120) = sub_2C4A68();
  *(v0 + 128) = &protocol witness table for EmptyAction;
  sub_720C8((v0 + 96));
  sub_2C4A48();
  (*(v69 + 104))(v70, enum case for DialogActionType.ok(_:), v78);
  v78 = v16;
  sub_2C0308();
  (*(v71 + 104))(v76, enum case for DialogType.seriesSortError(_:), v73);
  sub_72084(v72, v72[3]);
  sub_2BF288();
  v19 = *(v84 + 16);
  v20 = v75;
  v19(v77, v74, v75);
  v84 += 88;
  v75 = *v84;
  v21 = v75(v77, v20);
  v22 = enum case for ContentKind.pdf(_:);
  v76 = v19;
  if (v21 == enum case for ContentKind.pdf(_:))
  {
    v77 = 0x8000000000302710;
    v23 = *(*(v0 + 200) + 8);
    v23(*(v0 + 240), *(v0 + 192));
  }

  else if (v21 == enum case for ContentKind.audiobook(_:))
  {
    v77 = 0x8000000000302770;
    v23 = *(*(v0 + 200) + 8);
    v23(*(v0 + 240), *(v0 + 192));
    v79 = 0xD000000000000016;
  }

  else if (v21 == enum case for ContentKind.regularBook(_:))
  {
    v77 = 0x8000000000302750;
    v23 = *(*(v0 + 200) + 8);
    v23(*(v0 + 240), *(v0 + 192));
    v79 = 0xD000000000000011;
  }

  else if (v21 == enum case for ContentKind.manga(_:))
  {
    v77 = 0x8000000000302730;
    v23 = *(*(v0 + 200) + 8);
    v23(*(v0 + 240), *(v0 + 192));
    v79 = 0xD000000000000012;
  }

  else
  {
    v25 = *(v0 + 240);
    if (v21 == enum case for ContentKind.unknownBook(_:))
    {
      v77 = 0x80000000003026F0;
      v23 = *(*(v0 + 200) + 8);
      v23(v25, *(v0 + 192));
      v79 = 0xD000000000000018;
    }

    else
    {
      v26 = *(v0 + 232);
      v27 = *(v0 + 192);
      v28 = *(v0 + 200);
      v19(*(v0 + 224), *(v0 + 240), v27);
      v79 = sub_2C5928();
      v77 = v29;
      v23 = *(v28 + 8);
      v23(v25, v27);
      v23(v26, v27);
    }
  }

  v31 = *(v0 + 208);
  v30 = *(v0 + 216);
  v32 = *(v0 + 192);
  sub_72084(*(v0 + 144), *(*(v0 + 144) + 24));
  sub_2BF288();
  v76(v31, v30, v32);
  v33 = v75(v31, v32);
  if (v33 == v22)
  {
    v23(*(v0 + 216), *(v0 + 192));
    v53[0] = 4605008;
    v53[1] = 0xE300000000000000;
  }

  else if (v33 == enum case for ContentKind.audiobook(_:))
  {
    v23(*(v0 + 216), *(v0 + 192));
    BYTE3(v53[1]) = 0;
    HIDWORD(v53[1]) = -369098752;
    strcpy(v53, "Audiobooks");
  }

  else if (v33 == enum case for ContentKind.regularBook(_:))
  {
    v23(*(v0 + 216), *(v0 + 192));
    v53[0] = 0x736B6F6F42;
    v53[1] = 0xE500000000000000;
  }

  else if (v33 == enum case for ContentKind.manga(_:))
  {
    v23(*(v0 + 216), *(v0 + 192));
    v53[0] = 0x61676E614DLL;
    v53[1] = 0xE500000000000000;
  }

  else if (v33 == enum case for ContentKind.unknownBook(_:))
  {
    v23(*(v0 + 216), *(v0 + 192));
    BYTE5(v53[1]) = 0;
    HIWORD(v53[1]) = -5120;
    strcpy(v53, "Unknown book");
  }

  else
  {
    v34 = *(v0 + 216);
    v35 = *(v0 + 208);
    v36 = *(v0 + 192);
    v76(*(v0 + 224), v34, v36);
    v53[0] = sub_2C5928();
    v53[1] = v37;
    v23(v34, v36);
    v23(v35, v36);
  }

  v54 = *(v0 + 520);
  v62 = *(v0 + 496);
  v63 = *(v0 + 488);
  v65 = *(v0 + 464);
  v66 = *(v0 + 456);
  v67 = *(v0 + 432);
  v68 = *(v0 + 408);
  v38 = *(v0 + 376);
  v39 = *(v0 + 384);
  v56 = *(v0 + 368);
  v57 = *(v0 + 360);
  v69 = *(v0 + 352);
  v70 = *(v0 + 344);
  v71 = *(v0 + 320);
  v72 = *(v0 + 296);
  v60 = *(v0 + 272);
  v40 = *(v0 + 248);
  v73 = *(v0 + 240);
  v74 = *(v0 + 232);
  v75 = *(v0 + 224);
  v76 = *(v0 + 216);
  v84 = *(v0 + 208);
  v41 = *(v0 + 176);
  v42 = *(v0 + 168);
  v55 = *(v0 + 160);
  v43 = *(v0 + 144);
  v58 = *(v0 + 152);
  v59 = *(v0 + 136);
  v44 = *(v41 + 104);
  v64 = *(v0 + 184);
  v44(v64, enum case for ActionOrigin.Kind.other(_:), v42);
  sub_72084(v43, v43[3]);
  sub_2BF3B8();
  v61 = v40;
  sub_2C0758();
  sub_2C02C8();
  sub_6620C(&qword_3BC230);
  v45 = sub_6620C(&qword_3BC238);
  v46 = *(v45 - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v49 = swift_allocObject();
  v83 = v49;
  *(v49 + 16) = xmmword_2E15C0;
  v50 = (v49 + v48);
  *v50 = v54;
  v51 = *(v46 + 104);
  v51(v50, enum case for PageUpdateInstruction.replaceTrailingToolbarItems<A, B>(_:), v45);
  (*(v38 + 16))(&v50[v47], v39, v56);
  v51(&v50[v47], enum case for PageUpdateInstruction.presentAlert<A, B>(_:), v45);

  sub_69198(v58, &qword_3BE248);
  (*(v62 + 8))(v59, v63);
  (*(v38 + 8))(v39, v56);
  sub_68CD0(v0 + 56);
  sub_68CD0(v0 + 16);
  sub_68CD0(v43);

  v52 = *(v0 + 8);

  return v52(v83);
}

uint64_t sub_A5CAC()
{
  v1 = v0[19];
  v2 = v0[17];

  sub_69198(v1, &qword_3BE248);
  v3 = sub_2BF738();
  (*(*(v3 - 8) + 8))(v2, v3);
  sub_68CD0(v0[18]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_A5E6C()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[19];
  v4 = v0[17];

  sub_69198(v3, &qword_3BE248);
  (*(v2 + 8))(v4, v1);
  sub_68CD0((v0 + 2));
  sub_68CD0(v0[18]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_A603C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BDF58);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_A610C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_6620C(&qword_3BDF58);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_A61DC()
{
  sub_A62E4();
  if (v0 <= 0x3F)
  {
    sub_A6360();
    if (v1 <= 0x3F)
    {
      sub_AB560(319, &qword_3BE2D8, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_A63F4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_A62E4()
{
  if (!qword_3BE2C0)
  {
    v0 = sub_2C4E38();
    if (!v1)
    {
      atomic_store(v0, &qword_3BE2C0);
    }
  }
}

void sub_A6360()
{
  if (!qword_3BE2C8)
  {
    sub_2C0598();
    sub_A9328(&qword_3BE2D0, &type metadata accessor for ActionKinds);
    v0 = sub_2C5048();
    if (!v1)
    {
      atomic_store(v0, &qword_3BE2C8);
    }
  }
}

void sub_A63F4()
{
  if (!qword_3BE2E0)
  {
    v0 = sub_2C60B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3BE2E0);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for ContentUnavailableComponentModel.Layout(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_A648C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_6620C(&qword_3BE380);
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = type metadata accessor for InfoItemComponentModel(0);
  __chkstk_darwin(v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 40) = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 9) = 0;
  v39 = v13 + 40;
  sub_A9708(&v43, (v13 + 40), &unk_3BDC90);
  v41 = v11;
  v14 = *(v11 + 24);
  v15 = sub_2C5018();
  v16 = *(*(v15 - 8) + 56);
  v42 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v40 = a1;
  sub_72084(a1, v17);
  sub_A96AC();
  v18 = v10;
  sub_2C67A8();
  if (v2)
  {
    sub_68CD0(v40);
    sub_69198(v39, &qword_3BE370);
    return sub_69198(&v13[v42], &qword_3BDF58);
  }

  else
  {
    v19 = v6;
    sub_6620C(&qword_3BE378);
    v46 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378);
    v20 = v37;
    sub_2C64A8();
    v21 = v44;
    *v13 = v43;
    *(v13 + 1) = v21;
    *(v13 + 4) = v45;
    sub_6620C(&qword_3BE370);
    v46 = 1;
    sub_72B74(&qword_3BE398, &qword_3BE370);
    sub_2C64A8();
    sub_A9708(&v43, v39, &qword_3BE370);
    LOBYTE(v43) = 2;
    sub_A9328(&qword_3BE3A0, &type metadata accessor for ImpressionMetrics);
    sub_2C6458();
    sub_A9708(v19, &v13[v42], &qword_3BDF58);
    v46 = 3;
    sub_A9770();
    sub_2C64A8();
    v22 = v38;
    v23 = v44;
    v24 = v41;
    v25 = &v13[v41[7]];
    *v25 = v43;
    v25[16] = v23;
    LOBYTE(v43) = 4;
    v26 = sub_2C6468();
    v27 = &v13[v24[8]];
    *v27 = v26;
    v27[1] = v28;
    v46 = 5;
    sub_A97C4();
    sub_2C64A8();
    v29 = v44;
    v30 = &v13[v24[9]];
    *v30 = v43;
    v30[16] = v29;
    LOBYTE(v43) = 6;
    v31 = sub_2C6418();
    v32 = &v13[v24[10]];
    *v32 = v31;
    v32[1] = v33;
    v46 = 7;
    sub_A9818();
    sub_2C64A8();
    (*(v22 + 8))(v18, v20);
    *&v13[v41[11]] = v43;
    sub_A986C(v13, v36);
    sub_68CD0(v40);
    return sub_A98D0(v13);
  }
}

uint64_t sub_A6C20()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7470697263736564;
  if (v1 != 6)
  {
    v3 = 0x696C41656D617266;
  }

  v4 = 0x776F7262657965;
  if (v1 != 4)
  {
    v4 = 0x656C746974;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 2)
  {
    v5 = 0x6C6F626D7973;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_A6D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_A992C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_A6D50(uint64_t a1)
{
  v2 = sub_A96AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_A6D8C(uint64_t a1)
{
  v2 = sub_A96AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double ReviewBrickComponentModel.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_6932C(v1, v5, &qword_3BE378);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double ReviewBrickComponentModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  sub_6932C(v1 + 40, v5, &qword_3BE370);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}