unint64_t sub_100043FF8()
{
  result = qword_10008E258;
  if (!qword_10008E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E258);
  }

  return result;
}

unint64_t sub_100044054()
{
  result = qword_10008E260;
  if (!qword_10008E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E260);
  }

  return result;
}

uint64_t sub_1000440A8@<X0>(uint64_t *a1@<X8>)
{
  sub_100043568();
  result = sub_100064BC0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100044120@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100003B1C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10004420C(uint64_t a1)
{
  v2 = sub_100043A14();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10004425C()
{
  result = qword_10008E278;
  if (!qword_10008E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E278);
  }

  return result;
}

uint64_t sub_1000442B0()
{
  v0 = sub_100003AD4(&qword_10008CAE8, &unk_100072340);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000651D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000651B0();
  (*(v9 + 56))(v7, 1, 1, v8);
  v11 = sub_100064FA0();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_100064FC0();
}

uint64_t sub_100044488(uint64_t a1)
{
  v2 = sub_100044054();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100044514(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100044528(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100044570(uint64_t result, int a2, int a3)
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

unint64_t sub_100044658()
{
  result = qword_10008E298;
  if (!qword_10008E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E298);
  }

  return result;
}

uint64_t sub_1000446AC()
{
  v21[0] = sub_1000650D0();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_1000651D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003AD4(&qword_10008E2B0, &unk_100078A50);
  sub_1000651B0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v18 = sub_100064D30();
  memset(&v21[1], 0, 24);
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_100043A14();
  return sub_100064DC0();
}

uint64_t sub_1000449A8()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1000650D0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1000651D0();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_100003AD4(&qword_10008E2B0, &unk_100078A50);
  sub_1000651B0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_100064D30();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100043A14();
  v27[0] = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1000653E0();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_100064DD0();
  return v27[0];
}

uint64_t sub_100044E10()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1000650D0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1000651D0();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_100003AD4(&qword_10008E2B0, &unk_100078A50);
  sub_1000651B0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_100064D30();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100043A14();
  v27[0] = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1000653E0();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_100064DD0();
  return v27[0];
}

uint64_t sub_100045278()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1000650D0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1000651D0();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_100003AD4(&qword_10008E2B0, &unk_100078A50);
  sub_1000651B0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_100064D30();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100043A14();
  v27[0] = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1000653E0();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_100064DD0();
  return v27[0];
}

uint64_t sub_1000456E0()
{
  v0 = sub_1000651D0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_100003AD4(&qword_10008E190, qword_100078040);
  sub_1000651B0();
  sub_1000084D8(&qword_10008E2A0, &qword_10008E2A8, &qword_100078A28);
  v2 = sub_100065180();
  sub_100003AD4(&qword_10008E1B0, qword_1000781A0);
  sub_1000651B0();
  sub_100065180();
  sub_100003AD4(&qword_10008E1D0, qword_100078300);
  sub_1000651B0();
  sub_100065180();
  return v2;
}

unint64_t sub_100045940()
{
  result = qword_10008E2E8;
  if (!qword_10008E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E2E8);
  }

  return result;
}

unint64_t sub_100045994()
{
  result = qword_10008E2F0;
  if (!qword_10008E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E2F0);
  }

  return result;
}

uint64_t sub_100045A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_100065020();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_100064D30();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();
  v10 = sub_100003AD4(&qword_10008E308, &qword_100078B38);
  v3[21] = v10;
  v11 = *(v10 - 8);
  v3[22] = v11;
  v12 = *(v11 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_100045C1C, 0, 0);
}

uint64_t sub_100045C1C()
{
  v1 = objc_opt_self();
  *(v0 + 208) = v1;
  v2 = [v1 sharedController];
  v3 = [v2 assistantIsEnabled];

  v4 = *(v0 + 96);
  if (v3)
  {
    sub_100064D90();
    v5 = *(v0 + 366);
    v6 = [v1 sharedController];
    v7 = v6;
    if (v5 == 1)
    {
      v8 = (v0 + 370);
      v9 = *(v0 + 96);
LABEL_10:
      sub_100064D90();
      [v7 setHardwareButtonAssistant:*v8];
      v26 = *(v0 + 88);

      sub_100064D90();
      v27 = *(v0 + 64);
      *(v0 + 328) = v27;
      *(v0 + 72) = v27;
      if (qword_10008C450 != -1)
      {
        swift_once();
      }

      v28 = qword_10008F410;
      *(v0 + 336) = qword_10008F410;
      v29 = async function pointer to AppEntity._value<A, B>(for:)[1];

      v30 = swift_task_alloc();
      *(v0 + 344) = v30;
      v31 = sub_1000084D8(&qword_10008D708, &qword_10008D710, &unk_100078B40);
      *v30 = v0;
      v30[1] = sub_100046AD0;

      return AppEntity._value<A, B>(for:)(v0 + 362, v28, v31);
    }

    v22 = [v6 isVoiceTriggerEnabled];

    if (v22)
    {
      v8 = (v0 + 369);
      v23 = *(v0 + 96);
      v24 = [v1 sharedController];
LABEL_9:
      v7 = v24;
      goto LABEL_10;
    }

    v32 = *(v0 + 200);
    v34 = *(v0 + 152);
    v33 = *(v0 + 160);
    v36 = *(v0 + 136);
    v35 = *(v0 + 144);
    *(v0 + 32) = *(v0 + 88);
    sub_100046FFC(v33);
    sub_100064D60();
    v37 = *(v34 + 8);
    *(v0 + 216) = v37;
    *(v0 + 224) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v37(v33, v35);
    sub_100065010();
    v38 = async function pointer to AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)[1];
    v39 = swift_task_alloc();
    *(v0 + 232) = v39;
    v17 = sub_10001B958();
    *(v0 + 240) = v17;
    v18 = sub_1000084D8(&qword_10008E310, &qword_10008E308, &qword_100078B38);
    *(v0 + 248) = v18;
    *v39 = v0;
    v39[1] = sub_100046080;
    v19 = *(v0 + 200);
    v20 = *(v0 + 168);
    v21 = *(v0 + 136);
  }

  else
  {
    sub_100064D90();
    if (*(v0 + 360) != 1)
    {
      v8 = (v0 + 361);
      v25 = *(v0 + 96);
      v24 = [v1 sharedController];
      goto LABEL_9;
    }

    v10 = *(v0 + 184);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 88);
    sub_10004761C(v11);
    sub_100064D60();
    (*(v12 + 8))(v11, v13);
    sub_100065010();
    v15 = async function pointer to AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)[1];
    v16 = swift_task_alloc();
    *(v0 + 312) = v16;
    v17 = sub_10001B958();
    v18 = sub_1000084D8(&qword_10008E310, &qword_10008E308, &qword_100078B38);
    *v16 = v0;
    v16[1] = sub_100046738;
    v19 = *(v0 + 184);
    v20 = *(v0 + 168);
    v21 = *(v0 + 120);
  }

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v19, v21, 1, &type metadata for TalkToSiriEntity.UpdateIntent_value, v20, v17, v18);
}

uint64_t sub_100046080()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 176);
  v6 = *(*v1 + 168);
  v7 = *(*v1 + 136);
  v8 = *(*v1 + 112);
  v9 = *(*v1 + 104);
  v10 = *v1;
  v2[32] = v0;

  v11 = *(v8 + 8);
  v2[33] = v11;
  v2[34] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v9);
  v12 = *(v5 + 8);
  v2[35] = v12;
  v2[36] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v4, v6);
  if (v0)
  {
    v13 = sub_100046D0C;
  }

  else
  {
    v13 = sub_100046278;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_100046278()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 88);
  sub_100047360(v4);
  sub_100064D60();
  v2(v4, v5);
  sub_100065010();
  v7 = async function pointer to AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)[1];
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_100046388;
  v9 = *(v0 + 240);
  v10 = *(v0 + 248);
  v11 = *(v0 + 192);
  v12 = *(v0 + 168);
  v13 = *(v0 + 128);

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v11, v13, 1, &type metadata for TalkToSiriEntity.UpdateIntent_value, v12, v9, v10);
}

uint64_t sub_100046388()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v6 = *(*v1 + 264);
  v7 = *(*v1 + 192);
  v8 = *(*v1 + 168);
  v9 = *(*v1 + 128);
  v10 = *(*v1 + 104);
  v13 = *v1;
  *(*v1 + 304) = v0;

  v6(v9, v10);
  v4(v7, v8);
  if (v0)
  {
    v11 = sub_100046DC8;
  }

  else
  {
    v11 = sub_100046574;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100046574()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 96);
  v3 = [v1 sharedController];
  sub_100064D90();
  [v3 setHardwareButtonAssistant:*(v0 + 367)];

  v4 = [v1 sharedController];
  sub_100064D90();
  [v4 setAssistantIsEnabled:*(v0 + 368)];
  v5 = *(v0 + 88);

  sub_100064D90();
  v6 = *(v0 + 64);
  *(v0 + 72) = v6;
  *(v0 + 328) = v6;
  if (qword_10008C450 != -1)
  {
    swift_once();
  }

  v7 = qword_10008F410;
  *(v0 + 336) = qword_10008F410;
  v8 = async function pointer to AppEntity._value<A, B>(for:)[1];

  v9 = swift_task_alloc();
  *(v0 + 344) = v9;
  v10 = sub_1000084D8(&qword_10008D708, &qword_10008D710, &unk_100078B40);
  *v9 = v0;
  v9[1] = sub_100046AD0;

  return AppEntity._value<A, B>(for:)(v0 + 362, v7, v10);
}

uint64_t sub_100046738()
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *(*v1 + 104);
  v11 = *v1;
  *(*v1 + 320) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_100046E84;
  }

  else
  {
    v9 = sub_10004690C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10004690C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 96);
  v3 = [v1 sharedController];
  sub_100064D90();
  [v3 setHardwareButtonAssistant:*(v0 + 364)];

  v4 = [v1 sharedController];
  sub_100064D90();
  [v4 setAssistantIsEnabled:*(v0 + 365)];
  v5 = *(v0 + 88);

  sub_100064D90();
  v6 = *(v0 + 64);
  *(v0 + 72) = v6;
  *(v0 + 328) = v6;
  if (qword_10008C450 != -1)
  {
    swift_once();
  }

  v7 = qword_10008F410;
  *(v0 + 336) = qword_10008F410;
  v8 = async function pointer to AppEntity._value<A, B>(for:)[1];

  v9 = swift_task_alloc();
  *(v0 + 344) = v9;
  v10 = sub_1000084D8(&qword_10008D708, &qword_10008D710, &unk_100078B40);
  *v9 = v0;
  v9[1] = sub_100046AD0;

  return AppEntity._value<A, B>(for:)(v0 + 362, v7, v10);
}

uint64_t sub_100046AD0()
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v5 = sub_100046F40;
  }

  else
  {
    v5 = sub_100046C24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100046C24()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = *(v0 + 80);
  *(v0 + 363) = *(v0 + 362);
  sub_10003F410();
  sub_100064D50();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100046D0C()
{
  v1 = v0[32];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100046DC8()
{
  v1 = v0[38];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100046E84()
{
  v1 = v0[40];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100046F40()
{
  v1 = v0[44];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100046FFC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_1000651C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100065370();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v26 = sub_1000651D0();
  v24 = *(v26 - 8);
  v10 = v24;
  v11 = *(v24 + 64);
  v12 = __chkstk_darwin(v26);
  v27 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v25 = v23 - v15;
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_100065360();
  v23[1] = "ASSISTANT_LOCK_SCREEN_ACCESS";
  sub_100065200();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v2 + 104);
  v19(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  sub_1000651F0();
  v20 = *(v10 + 16);
  v21 = v26;
  v20(v25, v17, v26);
  sub_100065360();
  sub_100065200();
  v19(v5, v18, v1);
  sub_1000651F0();
  sub_100064D20();
  return (*(v24 + 8))(v17, v21);
}

uint64_t sub_100047360@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_1000651C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100065370();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000651D0();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v12);
  sub_100065360();
  sub_100065200();
  v13 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v14 = *(v2 + 104);
  v14(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  sub_1000651F0();
  sub_100065360();
  sub_100065200();
  v14(v5, v13, v1);
  sub_1000651F0();
  return sub_100064D20();
}

uint64_t sub_10004761C@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_1000651C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065210();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100065370();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000651D0();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v12);
  sub_100065360();
  sub_100065200();
  v13 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v14 = *(v2 + 104);
  v14(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  sub_1000651F0();
  sub_100065360();
  sub_100065200();
  v14(v5, v13, v1);
  sub_1000651F0();
  return sub_100064D20();
}

unint64_t sub_1000478DC()
{
  result = qword_10008E328;
  if (!qword_10008E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E328);
  }

  return result;
}

uint64_t type metadata accessor for SiriAppAccessForAppEntity()
{
  result = qword_10008E4A8;
  if (!qword_10008E4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004797C(uint64_t a1)
{
  v3 = type metadata accessor for SiriAppAccessForAppEntity();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_100065490();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v54 = _swiftEmptyArrayStorage;
  sub_100063AAC(0, v7 & ~(v7 >> 63), 0);
  v8 = v54;
  if (v46)
  {
    result = sub_100065450();
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    result = sub_100065440();
    v10 = *(a1 + 36);
  }

  v51 = result;
  v52 = v10;
  v53 = v46 != 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v13 = a1;
    }

    v41 = a1 + 56;
    v42 = v13;
    v39 = v1;
    v40 = a1 + 64;
    v43 = v7;
    v44 = a1;
    while (v12 < v7)
    {
      if (__OFADD__(v12++, 1))
      {
        goto LABEL_37;
      }

      v49 = v51;
      v47 = v52;
      v48 = v53;
      sub_100063DBC(v51, v52, v53, a1);
      v17 = v16;
      v18 = [v16 bundleId];
      v19 = v6;
      v20 = sub_100065390();
      v22 = v21;

      v23 = [v17 localizedName];
      v24 = sub_100065390();
      v26 = v25;

      sub_100048570(v20, v22, v24, v26, v19);
      v54 = v8;
      v28 = v8[2];
      v27 = v8[3];
      if (v28 >= v27 >> 1)
      {
        sub_100063AAC(v27 > 1, v28 + 1, 1);
        v8 = v54;
      }

      v8[2] = v28 + 1;
      sub_10004E7DC(v19, v8 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v28);
      v6 = v19;
      if (v46)
      {
        a1 = v44;
        result = v49;
        if (!v48)
        {
          goto LABEL_42;
        }

        if (sub_100065460())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v7 = v43;
        sub_100003AD4(&qword_10008CAF8, &qword_1000714E0);
        v14 = sub_100065400();
        sub_1000654B0();
        result = v14(v50, 0);
        if (v12 == v7)
        {
LABEL_34:
          sub_1000084CC(v51, v52, v53);
          return v8;
        }
      }

      else
      {
        a1 = v44;
        result = v49;
        if (v48)
        {
          goto LABEL_43;
        }

        if ((v49 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v29 = 1 << *(v44 + 32);
        if (v49 >= v29)
        {
          goto LABEL_38;
        }

        v30 = v49 >> 6;
        v31 = *(v41 + 8 * (v49 >> 6));
        if (((v31 >> v49) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v44 + 36) != v47)
        {
          goto LABEL_40;
        }

        v32 = v31 & (-2 << (v49 & 0x3F));
        if (v32)
        {
          v29 = __clz(__rbit64(v32)) | v49 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v33 = v30 << 6;
          v34 = v30 + 1;
          v35 = (v40 + 8 * v30);
          while (v34 < (v29 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              result = sub_1000084CC(v49, v47, 0);
              v29 = __clz(__rbit64(v36)) + v33;
              goto LABEL_33;
            }
          }

          result = sub_1000084CC(v49, v47, 0);
        }

LABEL_33:
        v38 = *(a1 + 36);
        v51 = v29;
        v52 = v38;
        v53 = 0;
        v7 = v43;
        if (v12 == v43)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_100047DAC()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F740);
  sub_100003B1C(v0, qword_10008F740);
  return sub_1000651B0();
}

uint64_t sub_100047E10(uint64_t a1)
{
  v3 = type metadata accessor for SiriAppAccessForAppEntity();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_10004E71C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_10004E780(a1);
}

void (*sub_100047EA0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_100047F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000501B0();
  v5 = sub_10004E6D4(&qword_10008E558, type metadata accessor for SiriAppAccessForAppEntity);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100047FB4()
{
  result = qword_10008E338;
  if (!qword_10008E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E338);
  }

  return result;
}

unint64_t sub_10004800C()
{
  result = qword_10008E340;
  if (!qword_10008E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E340);
  }

  return result;
}

uint64_t sub_1000480B0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000501B0();
  v7 = sub_100050204();
  v8 = sub_10004E6D4(&qword_10008E558, type metadata accessor for SiriAppAccessForAppEntity);
  *v5 = v2;
  v5[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000481AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004E840();
  *a1 = result;
  return result;
}

uint64_t sub_1000481D4(uint64_t a1)
{
  v2 = sub_10003EF70();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100048280()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000651C0();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100065210();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100065370();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000651D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100065130();
  sub_100003B54(v15, qword_10008F768);
  sub_100003B1C(v15, qword_10008F768);
  sub_100065360();
  sub_100065200();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000651F0();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100065120();
}

uint64_t sub_100048570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v6 = sub_100003AD4(&qword_10008CAE8, &unk_100072340);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_1000651D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = type metadata accessor for SiriAppAccessForAppEntity();
  v18 = v17[6];
  sub_100003AD4(&qword_10008E350, &qword_100078CE0);
  sub_1000651B0();
  sub_1000084D8(&qword_10008E578, &qword_10008E4C0, &qword_1000798D0);
  *(a5 + v18) = sub_100065180();
  v19 = v17[7];
  sub_100003AD4(&qword_10008E370, &qword_100078E80);
  sub_1000651B0();
  *(a5 + v19) = sub_100065180();
  v20 = v17[8];
  sub_100003AD4(&qword_10008E390, &qword_100079020);
  sub_1000651B0();
  *(a5 + v20) = sub_100065180();
  v21 = v17[9];
  sub_100003AD4(&qword_10008E3B8, &qword_1000791C0);
  sub_1000651B0();
  *(a5 + v21) = sub_100065180();
  v22 = (a5 + v17[5]);
  v23 = v27;
  *v22 = v26;
  v22[1] = v23;
  sub_1000651B0();
  (*(v15 + 56))(v13, 1, 1, v14);
  v24 = sub_100064FA0();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  return sub_100064FC0();
}

uint64_t sub_1000489B8()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F780);
  sub_100003B1C(v0, qword_10008F780);
  return sub_1000651B0();
}

uint64_t sub_100048A1C()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F798);
  v1 = sub_100003B1C(v0, qword_10008F798);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100048ADC()
{
  result = swift_getKeyPath();
  qword_10008F7B0 = result;
  return result;
}

uint64_t sub_100048B04()
{
  v1 = *(v0 + *(type metadata accessor for SiriAppAccessForAppEntity() + 24));
}

uint64_t sub_100048B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100003AD4(&qword_10008CB00, &unk_1000714F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100003AD4(&qword_10008CB08, &qword_100073870) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_100003AD4(&qword_10008E5C0, &qword_100079A68) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100064D30();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for SiriAppAccessForAppEntity();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_100003AD4(&qword_10008E598, &qword_1000799B0);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100048D54, 0, 0);
}

uint64_t sub_100048D54()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_100064D90();
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);
  *v4 = v0;
  v4[1] = sub_100048E50;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v7, sub_10005025C, 0, v8, v5);
}

uint64_t sub_100048E50()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_100048F4C, 0, 0);
}

uint64_t sub_100048F4C()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C5E0 != -1)
  {
    swift_once();
  }

  v4 = qword_10008F7B0;
  *(v0 + 152) = qword_10008F7B0;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = sub_1000084D8(&qword_10008E578, &qword_10008E4C0, &qword_1000798D0);
  *v6 = v0;
  v6[1] = sub_10004909C;
  v8 = *(v0 + 96);

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v4, &type metadata for Bool, v7);
}

uint64_t sub_10004909C()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_10004E780(v4);

  if (v0)
  {
    v5 = sub_10005026C;
  }

  else
  {
    v5 = sub_1000491F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000491F0()
{
  v1 = v0[16];
  v2 = v0[15];
  v14 = v0[13];
  v15 = v0[17];
  v19 = v0[12];
  v3 = v0[11];
  v12 = v0[10];
  v13 = v0[14];
  v17 = v0[9];
  v18 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v16 = v0[2];
  sub_100064D90();
  v8 = sub_100065100();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_100065140();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_10003F210();
  sub_10004E6D4(&qword_10008E038, type metadata accessor for SiriAppAccessForAppEntity);
  sub_100064CF0();
  (*(v2 + 16))(v1, v15, v13);
  sub_100064D10();
  sub_100064D40();
  (*(v17 + 8))(v12, v18);
  sub_10004E780(v14);
  (*(v2 + 8))(v15, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000494BC(void *a1, uint64_t *a2)
{
  v4 = sub_100003AD4(&qword_10008E5A0, &qword_1000799B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = *a2;

  sub_100064F70();

  type metadata accessor for SiriAppAccessForAppEntity();
  sub_10004E6D4(&qword_10008E038, type metadata accessor for SiriAppAccessForAppEntity);
  sub_1000084D8(&qword_10008E5A8, &qword_10008E5A0, &qword_1000799B8);
  sub_100064F60();
  return (*(v5 + 8))(v8, v4);
}

void (*sub_100049664(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_1000496D8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_100049774()
{
  result = qword_10008E358;
  if (!qword_10008E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E358);
  }

  return result;
}

unint64_t sub_1000497CC()
{
  result = qword_10008E360;
  if (!qword_10008E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E360);
  }

  return result;
}

uint64_t sub_1000498C8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_100048B38(a1, v5, v4);
}

uint64_t sub_100049974@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004EBF0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100049A00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100049A20, 0, 0);
}

uint64_t sub_100049A20()
{
  if (qword_10008C5B8 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_10008F758;
  v4 = (v1 + *(type metadata accessor for SiriAppAccessForAppEntity() + 20));
  v6 = *v4;
  v5 = v4[1];
  v7 = v3;
  v8 = sub_100065380();
  LOBYTE(v5) = [v7 isLearningEnabledForApp:v8];

  *v2 = v5;
  v9 = v0[1];

  return v9();
}

uint64_t sub_100049B10(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_100049B38, 0, 0);
}

uint64_t sub_100049B38()
{
  if (qword_10008C5B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = qword_10008F758;
  v4 = (v2 + *(type metadata accessor for SiriAppAccessForAppEntity() + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v3;
  v8 = sub_100065380();
  [v7 setLearningForApp:v8 enabled:v1];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100049C28()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F7B8);
  sub_100003B1C(v0, qword_10008F7B8);
  return sub_1000651B0();
}

uint64_t sub_100049C8C()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F7D0);
  v1 = sub_100003B1C(v0, qword_10008F7D0);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100049D4C()
{
  result = swift_getKeyPath();
  qword_10008F7E8 = result;
  return result;
}

uint64_t sub_100049D74()
{
  v1 = *(v0 + *(type metadata accessor for SiriAppAccessForAppEntity() + 28));
}

uint64_t sub_100049DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100003AD4(&qword_10008CB00, &unk_1000714F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100003AD4(&qword_10008CB08, &qword_100073870) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_100003AD4(&qword_10008E5B8, &qword_100079A30) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100064D30();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for SiriAppAccessForAppEntity();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_100003AD4(&qword_10008E598, &qword_1000799B0);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100049FC4, 0, 0);
}

uint64_t sub_100049FC4()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_100064D90();
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);
  *v4 = v0;
  v4[1] = sub_10004A0C0;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v7, sub_100050260, 0, v8, v5);
}

uint64_t sub_10004A0C0()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10004A1BC, 0, 0);
}

uint64_t sub_10004A1BC()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C5F8 != -1)
  {
    swift_once();
  }

  v4 = qword_10008F7E8;
  *(v0 + 152) = qword_10008F7E8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = sub_1000084D8(&qword_10008E578, &qword_10008E4C0, &qword_1000798D0);
  *v6 = v0;
  v6[1] = sub_10004A30C;
  v8 = *(v0 + 96);

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v4, &type metadata for Bool, v7);
}

uint64_t sub_10004A30C()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_10004E780(v4);

  if (v0)
  {
    v5 = sub_1000051E8;
  }

  else
  {
    v5 = sub_10004A460;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004A460()
{
  v1 = v0[16];
  v2 = v0[15];
  v14 = v0[13];
  v15 = v0[17];
  v19 = v0[12];
  v3 = v0[11];
  v12 = v0[10];
  v13 = v0[14];
  v17 = v0[9];
  v18 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v16 = v0[2];
  sub_100064D90();
  v8 = sub_100065100();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_100065140();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_10003F264();
  sub_10004E6D4(&qword_10008E038, type metadata accessor for SiriAppAccessForAppEntity);
  sub_100064CF0();
  (*(v2 + 16))(v1, v15, v13);
  sub_100064D10();
  sub_100064D40();
  (*(v17 + 8))(v12, v18);
  sub_10004E780(v14);
  (*(v2 + 8))(v15, v13);

  v10 = v0[1];

  return v10();
}

void (*sub_10004A730(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void (*sub_10004A7A4(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_10004A840()
{
  result = qword_10008E378;
  if (!qword_10008E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E378);
  }

  return result;
}

unint64_t sub_10004A898()
{
  result = qword_10008E380;
  if (!qword_10008E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E380);
  }

  return result;
}

uint64_t sub_10004A994(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002CCC;

  return sub_100049DA8(a1, v5, v4);
}

uint64_t sub_10004AA40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F118();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004AACC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10004AAEC, 0, 0);
}

uint64_t sub_10004AAEC()
{
  if (qword_10008C5C0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_10008F760;
  v4 = (v1 + *(type metadata accessor for SiriAppAccessForAppEntity() + 20));
  v6 = *v4;
  v5 = v4[1];
  v7 = v3;
  v8 = sub_100065380();
  LOBYTE(v5) = [v7 suggestionsShowOnHomeScreenEnabledForBundleId:v8];

  *v2 = v5;
  v9 = v0[1];

  return v9();
}

uint64_t sub_10004ABDC(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_10004AC04, 0, 0);
}

uint64_t sub_10004AC04()
{
  if (qword_10008C5C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = qword_10008F760;
  v4 = (v2 + *(type metadata accessor for SiriAppAccessForAppEntity() + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v3;
  v8 = sub_100065380();
  [v7 setSuggestionsShowOnHomeScreenEnabled:v1 bundleId:v8];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10004ACF4()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F7F0);
  sub_100003B1C(v0, qword_10008F7F0);
  return sub_1000651B0();
}

uint64_t sub_10004AD58()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F808);
  v1 = sub_100003B1C(v0, qword_10008F808);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10004AE18()
{
  result = swift_getKeyPath();
  qword_10008F820 = result;
  return result;
}

uint64_t sub_10004AE40()
{
  v1 = *(v0 + *(type metadata accessor for SiriAppAccessForAppEntity() + 32));
}

uint64_t sub_10004AE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100003AD4(&qword_10008CB00, &unk_1000714F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100003AD4(&qword_10008CB08, &qword_100073870) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_100003AD4(&qword_10008E5B0, &qword_1000799F8) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100064D30();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for SiriAppAccessForAppEntity();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_100003AD4(&qword_10008E598, &qword_1000799B0);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10004B090, 0, 0);
}

uint64_t sub_10004B090()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_100064D90();
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);
  *v4 = v0;
  v4[1] = sub_10004B18C;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v7, sub_100050264, 0, v8, v5);
}

uint64_t sub_10004B18C()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10004B288, 0, 0);
}

uint64_t sub_10004B288()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C610 != -1)
  {
    swift_once();
  }

  v4 = qword_10008F820;
  *(v0 + 152) = qword_10008F820;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = sub_1000084D8(&qword_10008E578, &qword_10008E4C0, &qword_1000798D0);
  *v6 = v0;
  v6[1] = sub_10004B3D8;
  v8 = *(v0 + 96);

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v4, &type metadata for Bool, v7);
}

uint64_t sub_10004B3D8()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_10004E780(v4);

  if (v0)
  {
    v5 = sub_10005026C;
  }

  else
  {
    v5 = sub_10004B52C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004B52C()
{
  v1 = v0[16];
  v2 = v0[15];
  v14 = v0[13];
  v15 = v0[17];
  v19 = v0[12];
  v3 = v0[11];
  v12 = v0[10];
  v13 = v0[14];
  v17 = v0[9];
  v18 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v16 = v0[2];
  sub_100064D90();
  v8 = sub_100065100();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_100065140();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_10003F2B8();
  sub_10004E6D4(&qword_10008E038, type metadata accessor for SiriAppAccessForAppEntity);
  sub_100064CF0();
  (*(v2 + 16))(v1, v15, v13);
  sub_100064D10();
  sub_100064D40();
  (*(v17 + 8))(v12, v18);
  sub_10004E780(v14);
  (*(v2 + 8))(v15, v13);

  v10 = v0[1];

  return v10();
}

void (*sub_10004B7F8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_10004B86C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_10004B908()
{
  result = qword_10008E398;
  if (!qword_10008E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E398);
  }

  return result;
}

unint64_t sub_10004B960()
{
  result = qword_10008E3A0;
  if (!qword_10008E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E3A0);
  }

  return result;
}

uint64_t sub_10004BA5C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_10004AE74(a1, v5, v4);
}

uint64_t sub_10004BB08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F640();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10004BB50()
{
  result = qword_10008E3A8;
  if (!qword_10008E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E3A8);
  }

  return result;
}

uint64_t sub_10004BBE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10004BC08, 0, 0);
}

uint64_t sub_10004BC08()
{
  if (qword_10008C5C0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_10008F760;
  v4 = (v1 + *(type metadata accessor for SiriAppAccessForAppEntity() + 20));
  v6 = *v4;
  v5 = v4[1];
  v7 = v3;
  v8 = sub_100065380();
  LOBYTE(v5) = [v7 suggestionsSuggestAppEnabledForBundleId:v8];

  *v2 = v5;
  v9 = v0[1];

  return v9();
}

uint64_t sub_10004BCF8(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_10004BD20, 0, 0);
}

uint64_t sub_10004BD20()
{
  if (qword_10008C5C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = qword_10008F760;
  v4 = (v2 + *(type metadata accessor for SiriAppAccessForAppEntity() + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v3;
  v8 = sub_100065380();
  [v7 setSuggestionsSuggestAppEnabled:v1 bundleId:v8];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10004BE10()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F828);
  sub_100003B1C(v0, qword_10008F828);
  return sub_1000651B0();
}

uint64_t sub_10004BE74()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F840);
  v1 = sub_100003B1C(v0, qword_10008F840);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10004BF34()
{
  result = swift_getKeyPath();
  qword_10008F858 = result;
  return result;
}

uint64_t sub_10004BF5C()
{
  v1 = *(v0 + *(type metadata accessor for SiriAppAccessForAppEntity() + 36));
}

uint64_t sub_10004BF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100003AD4(&qword_10008CB00, &unk_1000714F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100003AD4(&qword_10008CB08, &qword_100073870) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_100003AD4(&qword_10008E590, &qword_1000799A8) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100064D30();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for SiriAppAccessForAppEntity();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_100003AD4(&qword_10008E598, &qword_1000799B0);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10004C1AC, 0, 0);
}

uint64_t sub_10004C1AC()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_100064D90();
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);
  *v4 = v0;
  v4[1] = sub_10004C2A8;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v7, sub_100050268, 0, v8, v5);
}

uint64_t sub_10004C2A8()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10004C3A4, 0, 0);
}

uint64_t sub_10004C3A4()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C628 != -1)
  {
    swift_once();
  }

  v4 = qword_10008F858;
  *(v0 + 152) = qword_10008F858;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = sub_1000084D8(&qword_10008E578, &qword_10008E4C0, &qword_1000798D0);
  *v6 = v0;
  v6[1] = sub_10004C4F4;
  v8 = *(v0 + 96);

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v4, &type metadata for Bool, v7);
}

uint64_t sub_10004C4F4()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_10004E780(v4);

  if (v0)
  {
    v5 = sub_10005026C;
  }

  else
  {
    v5 = sub_10004C648;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004C648()
{
  v1 = v0[16];
  v2 = v0[15];
  v14 = v0[13];
  v15 = v0[17];
  v19 = v0[12];
  v3 = v0[11];
  v12 = v0[10];
  v13 = v0[14];
  v17 = v0[9];
  v18 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v16 = v0[2];
  sub_100064D90();
  v8 = sub_100065100();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_100065140();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_10004BB50();
  sub_10004E6D4(&qword_10008E038, type metadata accessor for SiriAppAccessForAppEntity);
  sub_100064CF0();
  (*(v2 + 16))(v1, v15, v13);
  sub_100064D10();
  sub_100064D40();
  (*(v17 + 8))(v12, v18);
  sub_10004E780(v14);
  (*(v2 + 8))(v15, v13);

  v10 = v0[1];

  return v10();
}

void (*sub_10004C914(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_10004C988(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_10004CA24()
{
  result = qword_10008E3C0;
  if (!qword_10008E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E3C0);
  }

  return result;
}

unint64_t sub_10004CA7C()
{
  result = qword_10008E3C8;
  if (!qword_10008E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E3C8);
  }

  return result;
}

uint64_t sub_10004CBCC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_10004BF90(a1, v5, v4);
}

uint64_t sub_10004CC78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004FB68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10004CCBC()
{
  result = qword_10008E3D0;
  if (!qword_10008E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E3D0);
  }

  return result;
}

uint64_t sub_10004CD10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10004CD30, 0, 0);
}

uint64_t sub_10004CD30()
{
  if (qword_10008C5C0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_10008F760;
  v4 = (v1 + *(type metadata accessor for SiriAppAccessForAppEntity() + 20));
  v6 = *v4;
  v5 = v4[1];
  v7 = v3;
  v8 = sub_100065380();
  LOBYTE(v5) = [v7 suggestionsNotificationEnabledForBundleId:v8];

  *v2 = v5;
  v9 = v0[1];

  return v9();
}

uint64_t sub_10004CE20(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_10004CE48, 0, 0);
}

uint64_t sub_10004CE48()
{
  if (qword_10008C5C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = qword_10008F760;
  v4 = (v2 + *(type metadata accessor for SiriAppAccessForAppEntity() + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v3;
  v8 = sub_100065380();
  [v7 setSuggestionsNotificationsEnabled:v1 bundleId:v8];

  v9 = *(v0 + 8);

  return v9();
}

id sub_10004CF4C(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  result = [objc_opt_self() sharedController];
  *a3 = result;
  return result;
}

uint64_t sub_10004CF8C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for SiriAppAccessForAppEntity();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10004D058, 0, 0);
}

uint64_t sub_10004D058()
{
  v1 = [*(v0 + 40) visibleApps];
  sub_1000082F4();
  sub_10004E6D4(&qword_10008CAE0, sub_1000082F4);
  v2 = sub_1000653F0();

  v3 = sub_10004797C(v2);

  v23 = *(v3 + 16);
  if (v23)
  {
    v5 = 0;
    v6 = *(v0 + 56);
    v22 = *(v0 + 48);
    while (v5 < *(v3 + 16))
    {
      v7 = *(v0 + 72);
      v8 = *(v0 + 32);
      v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v10 = *(v6 + 72);
      sub_10004E71C(v3 + v9 + v10 * v5, v7);
      v11 = (v7 + *(v22 + 20));
      v13 = *v11;
      v12 = v11[1];
      *(v0 + 16) = v13;
      *(v0 + 24) = v12;
      v14 = swift_task_alloc();
      *(v14 + 16) = v0 + 16;
      LOBYTE(v8) = sub_100063D10(sub_1000083EC, v14, v8);

      v15 = *(v0 + 72);
      if (v8)
      {
        sub_10004E7DC(v15, *(v0 + 64));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100063AAC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_100063AAC(v16 > 1, v17 + 1, 1);
        }

        v18 = *(v0 + 64);
        _swiftEmptyArrayStorage[2] = v17 + 1;
        result = sub_10004E7DC(v18, _swiftEmptyArrayStorage + v9 + v17 * v10);
      }

      else
      {
        result = sub_10004E780(v15);
      }

      if (v23 == ++v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);

    v21 = *(v0 + 8);

    return v21(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_10004D2D4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10004D2F8, 0, 0);
}

uint64_t sub_10004D2F8()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) visibleApps];
  sub_1000082F4();
  sub_10004E6D4(&qword_10008CAE0, sub_1000082F4);
  v3 = sub_1000653F0();

  v4 = sub_10004797C(v3);

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_10004D3F8()
{
  result = qword_10008E3D8;
  if (!qword_10008E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E3D8);
  }

  return result;
}

unint64_t sub_10004D450()
{
  result = qword_10008E3E0;
  if (!qword_10008E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E3E0);
  }

  return result;
}

id sub_10004D4A4@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedController];
  *a1 = result;
  return result;
}

uint64_t sub_10004D4E8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003DDC;

  return sub_10004CF8C(a1, v4);
}

uint64_t sub_10004D584(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EnumerableEntityQuery.suggestedEntities()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10004E680();
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v7);
}

unint64_t sub_10004D63C()
{
  result = qword_10008E3F0;
  if (!qword_10008E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E3F0);
  }

  return result;
}

unint64_t sub_10004D694()
{
  result = qword_10008E3F8;
  if (!qword_10008E3F8)
  {
    sub_100002BD0(&qword_10008E400, qword_100079418);
    sub_10004E6D4(&qword_10008E038, type metadata accessor for SiriAppAccessForAppEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E3F8);
  }

  return result;
}

uint64_t sub_10004D748(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10004CCBC();
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return EntityQuery.results()(a1, a2, v7);
}

id sub_10004D8D8@<X0>(void *a1@<X8>)
{
  if (qword_10008C630 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10008F860;
  *a1 = qword_10008F860;

  return v2;
}

uint64_t sub_10004D990()
{
  v0 = qword_10008E318;

  return v0;
}

uint64_t sub_10004DA10()
{
  v0 = sub_100003AD4(&qword_10008E560, &qword_100079930);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003AD4(&qword_10008E568, &qword_100079938);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);
  sub_1000650A0();
  v9._object = 0x8000000100065CB0;
  v9._countAndFlagsBits = 0xD000000000000049;
  sub_100065090(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100065080();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100065090(v10);
  return sub_1000650B0();
}

uint64_t sub_10004DD24()
{
  sub_10004E6D4(&qword_10008E558, type metadata accessor for SiriAppAccessForAppEntity);
  v1 = sub_100065050();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10004DDF8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100003B1C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10004DEE4(uint64_t a1)
{
  v2 = sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10004DFA8(uint64_t a1)
{
  v2 = sub_10004E6D4(&qword_10008E430, type metadata accessor for SiriAppAccessForAppEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10004E088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064FD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004E15C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100064FD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10004E218()
{
  sub_100064FD0();
  if (v0 <= 0x3F)
  {
    sub_10004E3D0(319, &qword_10008E4B8, sub_10004E37C);
    if (v1 <= 0x3F)
    {
      sub_10004E3D0(319, &qword_10008E4D8, sub_10004E4EC);
      if (v2 <= 0x3F)
      {
        sub_10004E3D0(319, &qword_10008E4E8, sub_10004E540);
        if (v3 <= 0x3F)
        {
          sub_10004E3D0(319, &qword_10008E4F8, sub_10004E594);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10004E37C()
{
  result = qword_10008E4D0;
  if (!qword_10008E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E4D0);
  }

  return result;
}

void sub_10004E3D0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    type metadata accessor for SiriAppAccessForAppEntity();
    sub_100002BD0(&qword_10008E4C0, &qword_1000798D0);
    sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);
    sub_1000084D8(&qword_10008E4C8, &qword_10008E4C0, &qword_1000798D0);
    a3();
    v5 = sub_1000651A0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10004E4EC()
{
  result = qword_10008E4E0;
  if (!qword_10008E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E4E0);
  }

  return result;
}

unint64_t sub_10004E540()
{
  result = qword_10008E4F0;
  if (!qword_10008E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E4F0);
  }

  return result;
}

unint64_t sub_10004E594()
{
  result = qword_10008E500;
  if (!qword_10008E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E500);
  }

  return result;
}

unint64_t sub_10004E680()
{
  result = qword_10008E570;
  if (!qword_10008E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E570);
  }

  return result;
}

uint64_t sub_10004E6D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004E71C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAppAccessForAppEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004E780(uint64_t a1)
{
  v2 = type metadata accessor for SiriAppAccessForAppEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004E7DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAppAccessForAppEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004E840()
{
  v27 = sub_1000650D0();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100003AD4(&qword_10008E580, &qword_100079988);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_1000651D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_100003AD4(&qword_10008E588, &unk_100079990);
  sub_1000651B0();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for SiriAppAccessForAppEntity();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100064D30();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);
  return sub_100064DC0();
}

uint64_t sub_10004EBF0()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v42 = &v33 - v2;
  v43 = sub_1000650D0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_100003AD4(&qword_10008E580, &qword_100079988);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v33 - v20;
  v34 = &v33 - v20;
  v22 = sub_1000651D0();
  v40 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v38 = sub_100003AD4(&qword_10008E588, &unk_100079990);
  sub_1000651B0();
  v25 = *(v23 + 56);
  v39 = v23 + 56;
  v41 = v25;
  v25(v21, 1, 1, v22);
  v26 = type metadata accessor for SiriAppAccessForAppEntity();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = sub_100064D30();
  v28 = *(*(v27 - 8) + 56);
  v28(v13, 1, 1, v27);
  v28(v11, 1, 1, v27);
  v37 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v3 + 104);
  v35 = v3 + 104;
  v36 = v29;
  v29(v6);
  sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);
  v30 = v34;
  v38 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v41(v30, 1, 1, v40);
  v44 = 2;
  v31 = sub_1000653E0();
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v28(v13, 1, 1, v27);
  v36(v6, v37, v43);
  sub_100064DD0();
  return v38;
}

uint64_t sub_10004F118()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v42 = &v33 - v2;
  v43 = sub_1000650D0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_100003AD4(&qword_10008E580, &qword_100079988);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v33 - v20;
  v34 = &v33 - v20;
  v22 = sub_1000651D0();
  v40 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v38 = sub_100003AD4(&qword_10008E588, &unk_100079990);
  sub_1000651B0();
  v25 = *(v23 + 56);
  v39 = v23 + 56;
  v41 = v25;
  v25(v21, 1, 1, v22);
  v26 = type metadata accessor for SiriAppAccessForAppEntity();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = sub_100064D30();
  v28 = *(*(v27 - 8) + 56);
  v28(v13, 1, 1, v27);
  v28(v11, 1, 1, v27);
  v37 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v3 + 104);
  v35 = v3 + 104;
  v36 = v29;
  v29(v6);
  sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);
  v30 = v34;
  v38 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v41(v30, 1, 1, v40);
  v44 = 2;
  v31 = sub_1000653E0();
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v28(v13, 1, 1, v27);
  v36(v6, v37, v43);
  sub_100064DD0();
  return v38;
}

uint64_t sub_10004F640()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v42 = &v33 - v2;
  v43 = sub_1000650D0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_100003AD4(&qword_10008E580, &qword_100079988);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v33 - v20;
  v34 = &v33 - v20;
  v22 = sub_1000651D0();
  v40 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v38 = sub_100003AD4(&qword_10008E588, &unk_100079990);
  sub_1000651B0();
  v25 = *(v23 + 56);
  v39 = v23 + 56;
  v41 = v25;
  v25(v21, 1, 1, v22);
  v26 = type metadata accessor for SiriAppAccessForAppEntity();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = sub_100064D30();
  v28 = *(*(v27 - 8) + 56);
  v28(v13, 1, 1, v27);
  v28(v11, 1, 1, v27);
  v37 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v3 + 104);
  v35 = v3 + 104;
  v36 = v29;
  v29(v6);
  sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);
  v30 = v34;
  v38 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v41(v30, 1, 1, v40);
  v44 = 2;
  v31 = sub_1000653E0();
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v28(v13, 1, 1, v27);
  v36(v6, v37, v43);
  sub_100064DD0();
  return v38;
}

uint64_t sub_10004FB68()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v42 = &v33 - v2;
  v43 = sub_1000650D0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_100003AD4(&qword_10008E580, &qword_100079988);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v33 - v20;
  v34 = &v33 - v20;
  v22 = sub_1000651D0();
  v40 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v38 = sub_100003AD4(&qword_10008E588, &unk_100079990);
  sub_1000651B0();
  v25 = *(v23 + 56);
  v39 = v23 + 56;
  v41 = v25;
  v25(v21, 1, 1, v22);
  v26 = type metadata accessor for SiriAppAccessForAppEntity();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = sub_100064D30();
  v28 = *(*(v27 - 8) + 56);
  v28(v13, 1, 1, v27);
  v28(v11, 1, 1, v27);
  v37 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v3 + 104);
  v35 = v3 + 104;
  v36 = v29;
  v29(v6);
  sub_10004E6D4(&qword_10008E3E8, type metadata accessor for SiriAppAccessForAppEntity);
  v30 = v34;
  v38 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v41(v30, 1, 1, v40);
  v44 = 2;
  v31 = sub_1000653E0();
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v28(v13, 1, 1, v27);
  v36(v6, v37, v43);
  sub_100064DD0();
  return v38;
}

uint64_t sub_100050090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SiriAppAccessForAppEntity() + 36));
}

uint64_t sub_1000500D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SiriAppAccessForAppEntity() + 32));
}

uint64_t sub_100050120@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SiriAppAccessForAppEntity() + 28));
}

uint64_t sub_100050168@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SiriAppAccessForAppEntity() + 24));
}

unint64_t sub_1000501B0()
{
  result = qword_10008E5C8;
  if (!qword_10008E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5C8);
  }

  return result;
}

unint64_t sub_100050204()
{
  result = qword_10008E5D0;
  if (!qword_10008E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5D0);
  }

  return result;
}

uint64_t sub_10005029C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726576656ELL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65724673646E6168;
    }

    else
    {
      v4 = 0x6E6F687064616568;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xEE00796C6E4F7365;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x737961776C61;
    }

    else
    {
      v4 = 0x726576656ELL;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x65724673646E6168;
  v8 = 0xE900000000000065;
  if (a2 != 2)
  {
    v7 = 0x6E6F687064616568;
    v8 = 0xEE00796C6E4F7365;
  }

  if (a2)
  {
    v2 = 0x737961776C61;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100065500();
  }

  return v11 & 1;
}

uint64_t sub_1000503F4()
{
  sub_100003AD4(&qword_10008E828, &qword_10007A4B8);
  v0 = sub_100003AD4(&qword_10008E830, &qword_10007A4C0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100077540;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 1;
  sub_100064F80();
  v6 = *(v0 + 48);
  v4[v1] = 2;
  sub_100064F80();
  v7 = *(v0 + 48);
  v4[2 * v1] = 3;
  sub_100064F80();
  v8 = *(v0 + 48);
  v4[3 * v1] = 0;
  sub_100064F80();
  v9 = sub_100053B8C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10008F868 = v9;
  return result;
}

uint64_t sub_1000505BC()
{
  v0 = sub_100065130();
  sub_100003B54(v0, qword_10008F870);
  sub_100003B1C(v0, qword_10008F870);
  return sub_100065110();
}

unint64_t sub_100050630()
{
  result = qword_10008E5E8;
  if (!qword_10008E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5E8);
  }

  return result;
}

Swift::Int sub_100050684()
{
  v1 = *v0;
  sub_100065550();
  sub_1000653B0();

  return sub_100065560();
}

uint64_t sub_100050750()
{
  *v0;
  *v0;
  *v0;
  sub_1000653B0();
}

Swift::Int sub_100050808()
{
  v1 = *v0;
  sub_100065550();
  sub_1000653B0();

  return sub_100065560();
}

uint64_t sub_1000508D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005476C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100050900(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726576656ELL;
  v4 = 0xE900000000000065;
  v5 = 0x65724673646E6168;
  if (*v1 != 2)
  {
    v5 = 0x6E6F687064616568;
    v4 = 0xEE00796C6E4F7365;
  }

  if (*v1)
  {
    v3 = 0x737961776C61;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10005098C()
{
  result = qword_10008E5F0;
  if (!qword_10008E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5F0);
  }

  return result;
}

unint64_t sub_1000509E4()
{
  result = qword_10008E5F8;
  if (!qword_10008E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5F8);
  }

  return result;
}

unint64_t sub_100050A3C()
{
  result = qword_10008E600;
  if (!qword_10008E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E600);
  }

  return result;
}

unint64_t sub_100050A94()
{
  result = qword_10008E608;
  if (!qword_10008E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E608);
  }

  return result;
}

unint64_t sub_100050AEC()
{
  result = qword_10008E610;
  if (!qword_10008E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E610);
  }

  return result;
}

unint64_t sub_100050B48()
{
  result = qword_10008E618;
  if (!qword_10008E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E618);
  }

  return result;
}

unint64_t sub_100050C00()
{
  result = qword_10008E620;
  if (!qword_10008E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E620);
  }

  return result;
}

uint64_t sub_100050C54(uint64_t a1)
{
  v2 = sub_100050C00();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100050CA4()
{
  result = qword_10008E628;
  if (!qword_10008E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E628);
  }

  return result;
}

unint64_t sub_100050CFC()
{
  result = qword_10008E630;
  if (!qword_10008E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E630);
  }

  return result;
}

unint64_t sub_100050D54()
{
  result = qword_10008E638;
  if (!qword_10008E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E638);
  }

  return result;
}

uint64_t sub_100050DA8()
{
  if (qword_10008C638 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100050E04(uint64_t a1)
{
  v2 = sub_100050B48();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100050EA8()
{
  result = qword_10008E650;
  if (!qword_10008E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E650);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceCallsEntity()
{
  result = qword_10008E768;
  if (!qword_10008E768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100050F48()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F888);
  sub_100003B1C(v0, qword_10008F888);
  return sub_1000651B0();
}

uint64_t sub_100050FAC(uint64_t a1)
{
  v3 = type metadata accessor for AnnounceCallsEntity();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_100054660(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_1000545BC(a1);
}

void (*sub_10005103C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_1000510B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000546C4();
  v5 = sub_100052E90(&qword_10008E698);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10005113C()
{
  result = qword_10008E660;
  if (!qword_10008E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E660);
  }

  return result;
}

unint64_t sub_100051194()
{
  result = qword_10008E668;
  if (!qword_10008E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E668);
  }

  return result;
}

uint64_t sub_10005124C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000546C4();
  v7 = sub_100054718();
  v8 = sub_100052E90(&qword_10008E698);
  *v5 = v2;
  v5[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100051334@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100053D74();
  *a1 = result;
  return result;
}

uint64_t sub_10005135C(uint64_t a1)
{
  v2 = sub_10003EE20();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000513E0()
{
  v0 = sub_100065130();
  sub_100003B54(v0, qword_10008F8A0);
  sub_100003B1C(v0, qword_10008F8A0);
  return sub_100065110();
}

id sub_100051450()
{
  result = [objc_opt_self() sharedController];
  qword_10008F8B8 = result;
  return result;
}

uint64_t sub_10005148C()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F8C0);
  sub_100003B1C(v0, qword_10008F8C0);
  return sub_1000651B0();
}

uint64_t sub_1000514F0()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F8D8);
  v1 = sub_100003B1C(v0, qword_10008F8D8);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000515B0()
{
  result = swift_getKeyPath();
  qword_10008F8F0 = result;
  return result;
}

uint64_t sub_1000515D8()
{
  v1 = *(v0 + *(type metadata accessor for AnnounceCallsEntity() + 20));
}

uint64_t sub_10005160C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100003AD4(&qword_10008CB00, &unk_1000714F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100003AD4(&qword_10008CB08, &qword_100073870) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_100003AD4(&qword_10008E7F8, &qword_10007A470) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100064D30();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for AnnounceCallsEntity();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_100003AD4(&qword_10008E800, &qword_10007A478);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100051828, 0, 0);
}

uint64_t sub_100051828()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_100064D90();
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_100052E90(&qword_10008E6A8);
  *v4 = v0;
  v4[1] = sub_100051910;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v7, sub_100054820, 0, v8, v5);
}

uint64_t sub_100051910()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_100051A0C, 0, 0);
}

uint64_t sub_100051A0C()
{
  v1 = v0[12];
  v3 = v0[3];
  v2 = v0[4];
  sub_100064D90();
  sub_100064D90();
  if (qword_10008C670 != -1)
  {
    swift_once();
  }

  v4 = qword_10008F8F0;
  v0[19] = qword_10008F8F0;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  v0[20] = v6;
  v7 = sub_1000084D8(&qword_10008E7D8, &qword_10008E780, &qword_10007A3C8);
  *v6 = v0;
  v6[1] = sub_100051B50;
  v8 = v0[12];

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 22, v4, &type metadata for AnnounceCallsOption, v7);
}

uint64_t sub_100051B50()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_1000545BC(v4);

  if (v0)
  {
    v5 = sub_1000051E8;
  }

  else
  {
    v5 = sub_100051CA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100051CA4()
{
  v15 = v0[17];
  v2 = v0[14];
  v1 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v3 = v0[11];
  v4 = v0[10];
  v5 = v0[7];
  v18 = v0[8];
  v19 = v0[12];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v16 = v0[2];
  v17 = v0[9];
  sub_100064D90();
  v9 = sub_100065100();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = sub_100065140();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_10003F06C();
  sub_100052E90(&qword_10008E118);
  sub_100064CF0();
  (*(v1 + 16))(v13, v15, v2);
  sub_100064D10();
  sub_100064D40();
  (*(v17 + 8))(v4, v18);
  sub_1000545BC(v14);
  (*(v1 + 8))(v15, v2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100051F30()
{
  v0 = sub_100003AD4(&qword_10008E808, &qword_10007A480);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10008C670 != -1)
  {
    swift_once();
  }

  sub_100064F70();

  type metadata accessor for AnnounceCallsEntity();
  sub_100052E90(&qword_10008E118);
  sub_1000084D8(&qword_10008E810, &qword_10008E808, &qword_10007A480);
  sub_100064F60();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000520C8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void (*sub_10005213C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_1000521B0()
{
  if (qword_10008C670 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100052210()
{
  result = qword_10008E680;
  if (!qword_10008E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E680);
  }

  return result;
}

unint64_t sub_100052268()
{
  result = qword_10008E688;
  if (!qword_10008E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E688);
  }

  return result;
}

uint64_t sub_10005239C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008C668 != -1)
  {
    swift_once();
  }

  v2 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  v3 = sub_100003B1C(v2, qword_10008F8D8);
  return sub_1000547B8(v3, a1, &qword_10008CB30, &unk_100071540);
}

uint64_t sub_10005242C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002CCC;

  return sub_10005160C(a1, v5, v4);
}

uint64_t sub_1000524D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100054110();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005253C()
{
  v1 = [objc_allocWithZone(TUUserConfiguration) init];
  v2 = [v1 announceCalls];

  if (v2 >= 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000525FC()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUUserConfiguration) init];
  [v2 setAnnounceCalls:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005268C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000651D0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100065270();
  v6 = sub_100065260();
  sub_100065240();

  sub_1000294B4(7, a2);
  v7 = *(a1 + 20);
  sub_100003AD4(&qword_10008E678, &qword_100079EC8);
  sub_1000651B0();
  sub_1000084D8(&qword_10008E7D8, &qword_10008E780, &qword_10007A3C8);
  sub_100050C00();
  result = sub_100065170();
  *(a2 + v7) = result;
  return result;
}

uint64_t sub_1000527FC(void *a1)
{
  a1[1] = sub_100052E90(&qword_10008E690);
  a1[2] = sub_100052E90(&qword_10008E698);
  result = sub_100052E90(&qword_10008E6A0);
  a1[3] = result;
  return result;
}

uint64_t sub_1000528F0(uint64_t a1)
{
  v2 = qword_10008E5D8;
  v3 = off_10008E5E0;
  v4 = sub_100052E90(&qword_10008E6A8);

  return EntityURLRepresentation.init(_:)(v2, v3, a1, v4);
}

uint64_t sub_100052A60(uint64_t a1)
{
  v2 = sub_100052E90(&qword_10008E6A0);

  return _UniqueEntityProvider.init(_:)(&unk_10007C0F0, 0, a1, v2);
}

uint64_t sub_100052B1C()
{
  sub_100052E90(&qword_10008E698);
  v1 = sub_100065050();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100052C74@<X0>(uint64_t *a1@<X8>)
{
  sub_100052E90(&qword_10008E6A0);
  result = sub_100064D70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100052D08@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100003B1C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100052DF4(uint64_t a1)
{
  v2 = sub_100052E90(&qword_10008E6A8);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100052E90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnnounceCallsEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100052ED4(uint64_t a1)
{
  v2 = sub_100052E90(&qword_10008E6F0);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100052F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064FD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100053030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100064FD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000530E8()
{
  sub_100064FD0();
  if (v0 <= 0x3F)
  {
    sub_10005316C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005316C()
{
  if (!qword_10008E778)
  {
    type metadata accessor for AnnounceCallsEntity();
    sub_100002BD0(&qword_10008E780, &qword_10007A3C8);
    sub_100052E90(&qword_10008E6A8);
    sub_1000084D8(&qword_10008E788, &qword_10008E780, &qword_10007A3C8);
    sub_100053268();
    v0 = sub_1000651A0();
    if (!v1)
    {
      atomic_store(v0, &qword_10008E778);
    }
  }
}

unint64_t sub_100053268()
{
  result = qword_10008E790;
  if (!qword_10008E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceCallsOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnounceCallsOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000534A4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100065550();
  sub_1000653B0();

  v4 = sub_100065560();

  return sub_10005365C(a1, v4);
}

unint64_t sub_100053568(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100065550();
  sub_1000653B0();

  v4 = sub_100065560();

  return sub_1000537EC(a1, v4);
}

unint64_t sub_10005365C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x737961776C61;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x726576656ELL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0x8000000100065900;
            if (v8 != 0xD000000000000011)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xD000000000000011;
        v7 = 0x8000000100065900;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x737961776C61;
      }

      else
      {
        v10 = 0x726576656ELL;
      }

      if (v9 == 1)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_100065500();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000537EC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x65724673646E6168 : 0x6E6F687064616568;
      v8 = v6 == 2 ? 0xE900000000000065 : 0xEE00796C6E4F7365;
      v9 = *(*(v23 + 48) + v4) ? 0x737961776C61 : 0x726576656ELL;
      v10 = *(*(v23 + 48) + v4) ? 0xE600000000000000 : 0xE500000000000000;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x65724673646E6168 : 0x6E6F687064616568;
      v14 = v5 == 2 ? 0xE900000000000065 : 0xEE00796C6E4F7365;
      v15 = v5 ? 0x737961776C61 : 0x726576656ELL;
      v16 = v5 ? 0xE600000000000000 : 0xE500000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_100065500();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000539A4(uint64_t a1)
{
  v2 = sub_100003AD4(&qword_10008D570, &qword_1000742F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003AD4(&qword_10008E840, &qword_10007A4D8);
    v8 = sub_1000654E0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000547B8(v10, v6, &qword_10008D570, &qword_1000742F0);
      v12 = *v6;
      result = sub_1000534A4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100064FD0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_100053B8C(uint64_t a1)
{
  v2 = sub_100003AD4(&qword_10008E830, &qword_10007A4C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003AD4(&qword_10008E838, &unk_10007A4C8);
    v8 = sub_1000654E0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000547B8(v10, v6, &qword_10008E830, &qword_10007A4C0);
      v12 = *v6;
      result = sub_100053568(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100064FD0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

uint64_t sub_100053D74()
{
  v27 = sub_1000650D0();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100003AD4(&qword_10008E7E0, &unk_10007A448);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_1000651D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_100003AD4(&qword_10008E7E8, &qword_10007A458);
  sub_1000651B0();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for AnnounceCallsEntity();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100064D30();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_100052E90(&qword_10008E6A8);
  return sub_100064DC0();
}

uint64_t sub_100054110()
{
  v36 = sub_1000650D0();
  v0 = *(v36 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v36);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v29 - v9;
  v11 = sub_100003AD4(&qword_10008E7E0, &unk_10007A448);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v29 - v13;
  v29[0] = v29 - v13;
  v15 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v29 - v17;
  v32 = v29 - v17;
  v19 = sub_1000651D0();
  v35 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v33 = sub_100003AD4(&qword_10008E7E8, &qword_10007A458);
  sub_1000651B0();
  v34 = *(v20 + 56);
  v34(v18, 1, 1, v19);
  v22 = type metadata accessor for AnnounceCallsEntity();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100064D30();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v25 = v8;
  v24(v8, 1, 1, v23);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v0 + 104);
  v29[1] = v0 + 104;
  v30 = v26;
  v26(v3);
  sub_100052E90(&qword_10008E6A8);
  v27 = v32;
  v33 = sub_100064DC0();
  sub_100003AD4(&qword_10008E7F0, &qword_10007A460);
  sub_1000651B0();
  v34(v27, 1, 1, v35);
  v37 = 4;
  v24(v10, 1, 1, v23);
  v24(v25, 1, 1, v23);
  v30(v3, v31, v36);
  sub_100050C00();
  sub_100064DB0();
  return v33;
}

uint64_t sub_1000545BC(uint64_t a1)
{
  v2 = type metadata accessor for AnnounceCallsEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100054618@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AnnounceCallsEntity() + 20));
}

uint64_t sub_100054660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnounceCallsEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000546C4()
{
  result = qword_10008E818;
  if (!qword_10008E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E818);
  }

  return result;
}

unint64_t sub_100054718()
{
  result = qword_10008E820;
  if (!qword_10008E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E820);
  }

  return result;
}

uint64_t sub_10005476C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100089758;
  v6._object = a2;
  v4 = sub_1000654F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000547B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003AD4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100054844(uint64_t a1, int a2)
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

uint64_t sub_10005488C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000548E8()
{
  v0 = sub_100003AD4(&qword_10008E850, &qword_10007A5C0);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100054970();
  sub_1000652C0();
  return 0;
}

unint64_t sub_100054970()
{
  result = qword_10008E848;
  if (!qword_10008E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E848);
  }

  return result;
}

unint64_t sub_1000549F4()
{
  result = qword_10008E858;
  if (!qword_10008E858)
  {
    sub_100002BD0(&qword_10008E860, &qword_10007A5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E858);
  }

  return result;
}

unint64_t sub_100054A5C()
{
  result = qword_10008E878;
  if (!qword_10008E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E878);
  }

  return result;
}

uint64_t type metadata accessor for MyInformationEntity()
{
  result = qword_10008E988;
  if (!qword_10008E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100054AFC()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F8F8);
  sub_100003B1C(v0, qword_10008F8F8);
  return sub_1000651B0();
}

uint64_t sub_100054B60(uint64_t a1)
{
  v3 = type metadata accessor for MyInformationEntity();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_1000560C8(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_100056570(a1);
}

void (*sub_100054BF0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_1000019C8;
}

uint64_t sub_100054C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000564C8();
  v5 = sub_100056084(&qword_10008E9C0);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100054CF0()
{
  result = qword_10008E888;
  if (!qword_10008E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E888);
  }

  return result;
}

unint64_t sub_100054D48()
{
  result = qword_10008E890;
  if (!qword_10008E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E890);
  }

  return result;
}

uint64_t sub_100054E24(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000564C8();
  v7 = sub_10005651C();
  v8 = sub_100056084(&qword_10008E9C0);
  *v5 = v2;
  v5[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100054F0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005612C();
  *a1 = result;
  return result;
}

uint64_t sub_100054F34(uint64_t a1)
{
  v2 = sub_10003EEC8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100054F74()
{
  result = qword_10008E898;
  if (!qword_10008E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E898);
  }

  return result;
}

uint64_t sub_100054FFC()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000651C0();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100065210();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100065370();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000651D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100065130();
  sub_100003B54(v15, qword_10008F910);
  sub_100003B1C(v15, qword_10008F910);
  sub_100065360();
  sub_100065200();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000651F0();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100065120();
}

uint64_t sub_1000552F0()
{
  v0 = type metadata accessor for MyInformationEntity();
  sub_100003B54(v0, qword_10008F928);
  v1 = sub_100003B1C(v0, qword_10008F928);
  sub_100065270();
  v2 = sub_100065260();
  sub_100065240();

  return sub_1000294B4(12, v1);
}

id sub_100055364()
{
  result = [objc_opt_self() sharedController];
  qword_10008F940 = result;
  return result;
}

uint64_t sub_1000553A0(uint64_t a1)
{
  if ([*v1 assistantIsEnabled])
  {
    if (qword_10008C688 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for MyInformationEntity();
    v5 = sub_100003B1C(v4, qword_10008F928);
    sub_1000560C8(v5, a1);
    v6 = *(v2 + 8);
  }

  else
  {
    sub_100003BFC();
    swift_allocError();
    *v7 = 0xD00000000000002ELL;
    v7[1] = 0x8000000100065BB0;
    swift_willThrow();
    v6 = *(v2 + 8);
  }

  return v6();
}

unint64_t sub_1000554BC()
{
  result = qword_10008E8A8;
  if (!qword_10008E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E8A8);
  }

  return result;
}

uint64_t sub_100055510(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000559F0();
  *v5 = v2;
  v5[1] = sub_100002540;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000555C4()
{
  result = qword_10008E8B0;
  if (!qword_10008E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E8B0);
  }

  return result;
}

unint64_t sub_10005561C()
{
  result = qword_10008E8B8;
  if (!qword_10008E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E8B8);
  }

  return result;
}

uint64_t sub_1000556A4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000559F0();
  *v6 = v2;
  v6[1] = sub_100003DDC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100055758(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000559F0();
  *v5 = v2;
  v5[1] = sub_100003DBC;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10005580C()
{
  result = qword_10008E8C8;
  if (!qword_10008E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E8C8);
  }

  return result;
}

unint64_t sub_100055898()
{
  result = qword_10008E8D0;
  if (!qword_10008E8D0)
  {
    sub_100002BD0(&qword_10008E8D8, qword_10007A860);
    sub_100056084(&qword_10008E090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E8D0);
  }

  return result;
}

uint64_t sub_100055938(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000554BC();
  *v6 = v2;
  v6[1] = sub_100002CCC;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000559F0()
{
  result = qword_10008E8E0;
  if (!qword_10008E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E8E0);
  }

  return result;
}

uint64_t sub_100055A78(uint64_t a1)
{
  v2 = sub_100056084(&qword_10008E8C0);

  return EntityURLRepresentation.init(_:)(0xD000000000000035, 0x80000001000699B0, a1, v2);
}

uint64_t sub_100055AF8()
{
  v0 = qword_10008E868;

  return v0;
}

id sub_100055BCC@<X0>(void *a1@<X8>)
{
  if (qword_10008C690 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10008F940;
  *a1 = qword_10008F940;

  return v2;
}

uint64_t sub_100055C3C()
{
  sub_100056084(&qword_10008E9C0);
  v1 = sub_100065050();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100055D60@<X0>(uint64_t *a1@<X8>)
{
  sub_100056084(&qword_10008E8A0);
  result = sub_100064D70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100055DF8()
{
  result = qword_10008E918;
  if (!qword_10008E918)
  {
    sub_100002BD0(&qword_10008E920, &qword_10007AB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E918);
  }

  return result;
}

uint64_t sub_100055E5C(uint64_t a1)
{
  v2 = sub_100056084(&qword_10008E8C0);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100055EF8(uint64_t a1)
{
  v2 = sub_100056084(&qword_10008E910);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100055F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064FD0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100056004(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064FD0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100056084(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MyInformationEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000560C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyInformationEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005612C()
{
  v27 = sub_1000650D0();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100003AD4(&qword_10008E9C8, &qword_10007AC98);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_1000651D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_100003AD4(&qword_10008E9D0, &unk_10007ACA0);
  sub_1000651B0();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for MyInformationEntity();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100064D30();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_100056084(&qword_10008E8C0);
  return sub_100064DC0();
}

unint64_t sub_1000564C8()
{
  result = qword_10008E9D8;
  if (!qword_10008E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E9D8);
  }

  return result;
}

unint64_t sub_10005651C()
{
  result = qword_10008E9E0;
  if (!qword_10008E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E9E0);
  }

  return result;
}

uint64_t sub_100056570(uint64_t a1)
{
  v2 = type metadata accessor for MyInformationEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000565E8()
{
  result = qword_10008E9F8;
  if (!qword_10008E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E9F8);
  }

  return result;
}

uint64_t type metadata accessor for SiriVoiceEntity()
{
  result = qword_10008EB08;
  if (!qword_10008EB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100056688()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F948);
  sub_100003B1C(v0, qword_10008F948);
  return sub_1000651B0();
}

uint64_t sub_1000566F8(uint64_t a1)
{
  v3 = type metadata accessor for SiriVoiceEntity();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_100057C60(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_100058108(a1);
}

void (*sub_100056788(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_1000019C8;
}

uint64_t sub_1000567FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058060();
  v5 = sub_100057C1C(&qword_10008EB40);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100056888()
{
  result = qword_10008EA08;
  if (!qword_10008EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EA08);
  }

  return result;
}

unint64_t sub_1000568E0()
{
  result = qword_10008EA10;
  if (!qword_10008EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EA10);
  }

  return result;
}

uint64_t sub_1000569BC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100058060();
  v7 = sub_1000580B4();
  v8 = sub_100057C1C(&qword_10008EB40);
  *v5 = v2;
  v5[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100056AA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100057CC4();
  *a1 = result;
  return result;
}

uint64_t sub_100056ACC(uint64_t a1)
{
  v2 = sub_10003F018();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100056B0C()
{
  result = qword_10008EA18;
  if (!qword_10008EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EA18);
  }

  return result;
}

uint64_t sub_100056B94()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000651C0();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100065210();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100065370();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000651D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100065130();
  sub_100003B54(v15, qword_10008F960);
  sub_100003B1C(v15, qword_10008F960);
  sub_100065360();
  sub_100065200();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000651F0();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100065120();
}

uint64_t sub_100056E88()
{
  v0 = type metadata accessor for SiriVoiceEntity();
  sub_100003B54(v0, qword_10008F978);
  v1 = sub_100003B1C(v0, qword_10008F978);
  sub_100065270();
  v2 = sub_100065260();
  sub_100065240();

  return sub_1000294B4(10, v1);
}

id sub_100056EFC()
{
  result = [objc_opt_self() sharedController];
  qword_10008F990 = result;
  return result;
}

uint64_t sub_100056F38(uint64_t a1)
{
  if ([*v1 assistantIsEnabled])
  {
    if (qword_10008C6A8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for SiriVoiceEntity();
    v5 = sub_100003B1C(v4, qword_10008F978);
    sub_100057C60(v5, a1);
    v6 = *(v2 + 8);
  }

  else
  {
    sub_100003BFC();
    swift_allocError();
    *v7 = 0xD00000000000002ELL;
    v7[1] = 0x8000000100065BB0;
    swift_willThrow();
    v6 = *(v2 + 8);
  }

  return v6();
}

unint64_t sub_100057054()
{
  result = qword_10008EA28;
  if (!qword_10008EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EA28);
  }

  return result;
}

uint64_t sub_1000570A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100057588();
  *v5 = v2;
  v5[1] = sub_100002540;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10005715C()
{
  result = qword_10008EA30;
  if (!qword_10008EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EA30);
  }

  return result;
}

unint64_t sub_1000571B4()
{
  result = qword_10008EA38;
  if (!qword_10008EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EA38);
  }

  return result;
}

uint64_t sub_10005723C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100057588();
  *v6 = v2;
  v6[1] = sub_100003DDC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000572F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100057588();
  *v5 = v2;
  v5[1] = sub_100003DBC;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000573A4()
{
  result = qword_10008EA48;
  if (!qword_10008EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EA48);
  }

  return result;
}

unint64_t sub_100057430()
{
  result = qword_10008EA50;
  if (!qword_10008EA50)
  {
    sub_100002BD0(&qword_10008EA58, qword_10007AF40);
    sub_100057C1C(&qword_10008DFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EA50);
  }

  return result;
}

uint64_t sub_1000574D0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100057054();
  *v6 = v2;
  v6[1] = sub_100002CCC;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100057588()
{
  result = qword_10008EA60;
  if (!qword_10008EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EA60);
  }

  return result;
}

uint64_t sub_100057610(uint64_t a1)
{
  v2 = sub_100057C1C(&qword_10008EA40);

  return EntityURLRepresentation.init(_:)(0xD000000000000036, 0x8000000100069A60, a1, v2);
}

uint64_t sub_100057690()
{
  v0 = qword_10008E9E8;

  return v0;
}

id sub_100057764@<X0>(void *a1@<X8>)
{
  if (qword_10008C6B0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10008F990;
  *a1 = qword_10008F990;

  return v2;
}

uint64_t sub_1000577D4()
{
  sub_100057C1C(&qword_10008EB40);
  v1 = sub_100065050();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000578F8@<X0>(uint64_t *a1@<X8>)
{
  sub_100057C1C(&qword_10008EA20);
  result = sub_100064D70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100057990()
{
  result = qword_10008EA98;
  if (!qword_10008EA98)
  {
    sub_100002BD0(&qword_10008EAA0, &qword_10007B210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EA98);
  }

  return result;
}

uint64_t sub_1000579F4(uint64_t a1)
{
  v2 = sub_100057C1C(&qword_10008EA40);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100057A90(uint64_t a1)
{
  v2 = sub_100057C1C(&qword_10008EA90);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100057B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064FD0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100057B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064FD0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100057C1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriVoiceEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriVoiceEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057CC4()
{
  v27 = sub_1000650D0();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100003AD4(&qword_10008EB48, &qword_10007B378);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_1000651D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_100003AD4(&qword_10008EB50, &unk_10007B380);
  sub_1000651B0();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for SiriVoiceEntity();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100064D30();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_100057C1C(&qword_10008EA40);
  return sub_100064DC0();
}

unint64_t sub_100058060()
{
  result = qword_10008EB58;
  if (!qword_10008EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EB58);
  }

  return result;
}

unint64_t sub_1000580B4()
{
  result = qword_10008EB60;
  if (!qword_10008EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EB60);
  }

  return result;
}

uint64_t sub_100058108(uint64_t a1)
{
  v2 = type metadata accessor for SiriVoiceEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000581C8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100003AD4(&qword_10008D5C8, &unk_10007B560);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100003AD4(&qword_10008D5D0, &qword_100074610);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v28 = &v27 - v18;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10005910C();
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640);
  sub_100065350();
  sub_1000652D0();
  v19 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0);
  sub_100065300();

  (*(v29 + 8))(v4, v1);
  sub_1000652D0();
  v37 = v1;
  v38 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000652E0();

  (*(v31 + 8))(v9, v21);
  v37 = v21;
  v38 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  v24 = v32;
  sub_100065310();
  (*(v33 + 8))(v14, v24);
  v37 = v24;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_1000652F0();
  return (*(v35 + 8))(v23, v25);
}

uint64_t sub_1000586F0@<X0>(uint64_t a1@<X8>)
{
  sub_1000652D0();
  result = sub_100065320();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10005878C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  v5 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100003AD4(&qword_10008EB68, &qword_10007B500);
  v11 = *(v10 - 8);
  v23 = v10;
  v24 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10005910C();
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640);
  sub_100065350();
  sub_1000652D0();
  v15 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0);
  sub_100065300();

  (*(v20 + 8))(v4, v1);
  v26 = v1;
  v27 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v21;
  sub_100065310();
  (*(v22 + 8))(v9, v17);
  v26 = v17;
  v27 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_1000652F0();
  return (*(v24 + 8))(v14, v18);
}

uint64_t sub_100058B84@<X0>(uint64_t a1@<X8>)
{
  sub_1000652D0();
  result = sub_100065320();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100058C1C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_100003AD4(&qword_10008D5B8, &unk_10007B4F0);
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  v5 = sub_100003AD4(&qword_10008D5C0, &unk_100074600);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100003AD4(&qword_10008EB68, &qword_10007B500);
  v11 = *(v10 - 8);
  v23 = v10;
  v24 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  swift_getKeyPath();
  sub_100003AD4(&qword_10008D5D8, &qword_100074640);
  sub_10005910C();
  sub_1000084D8(&qword_10008D5E8, &qword_10008D5D8, &qword_100074640);
  sub_100065350();
  sub_1000652D0();
  v15 = sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0);
  sub_100065300();

  (*(v20 + 8))(v4, v1);
  v26 = v1;
  v27 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v21;
  sub_100065310();
  (*(v22 + 8))(v9, v17);
  v26 = v17;
  v27 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_1000652F0();
  return (*(v24 + 8))(v14, v18);
}

uint64_t sub_100059014@<X0>(uint64_t a1@<X8>)
{
  sub_1000652D0();
  result = sub_100065320();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10005908C()
{
  v0 = sub_1000652D0();

  return Label<>.init(_:systemImage:)(v0);
}

unint64_t sub_10005910C()
{
  result = qword_10008EB70;
  if (!qword_10008EB70)
  {
    type metadata accessor for AutoSendMessagesEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EB70);
  }

  return result;
}

uint64_t sub_100059168()
{
  sub_100002BD0(&qword_10008EB68, &qword_10007B500);
  sub_100002BD0(&qword_10008D5C0, &unk_100074600);
  sub_100002BD0(&qword_10008D5B8, &unk_10007B4F0);
  sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100059280()
{
  sub_100002BD0(&qword_10008D5D0, &qword_100074610);
  sub_100002BD0(&qword_10008D5C8, &unk_10007B560);
  sub_100002BD0(&qword_10008D5C0, &unk_100074600);
  sub_100002BD0(&qword_10008D5B8, &unk_10007B4F0);
  sub_1000084D8(&qword_10008D5F0, &qword_10008D5B8, &unk_10007B4F0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000593DC()
{
  result = qword_10008EB88;
  if (!qword_10008EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EB88);
  }

  return result;
}

uint64_t type metadata accessor for AutoSendMessagesEntity()
{
  result = qword_10008ECD8;
  if (!qword_10008ECD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000594A0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  [v2 setSiriResponseShouldAlwaysPrint:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005955C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedController];
  [v2 setAlwaysShowRecognizedSpeech:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000595F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000651D0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100059684, 0, 0);
}

uint64_t sub_100059684()
{
  if (qword_10008C338 != -1)
  {
    swift_once();
  }

  if ([qword_10008F168 assistantIsEnabled])
  {
    v2 = v0[2];
    v1 = v0[3];
    sub_100065270();
    v3 = sub_100065260();
    sub_100065240();

    sub_1000294B4(2, v2);
    v4 = *(type metadata accessor for AlwaysPrintSiriResponseEntity() + 20);
    sub_100003AD4(&qword_10008CB80, &qword_1000716E0);
    sub_1000651B0();
    sub_1000084D8(&qword_10008CCF8, &qword_10008CC90, &qword_100071BE0);
    *(v2 + v4) = sub_100065180();
  }

  else
  {
    v6 = v0[3];
    sub_100003BFC();
    swift_allocError();
    *v7 = 0xD00000000000002ELL;
    v7[1] = 0x8000000100065BB0;
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100059890(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000651D0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100059920, 0, 0);
}

uint64_t sub_100059920()
{
  if (qword_10008C3B8 != -1)
  {
    swift_once();
  }

  if ([qword_10008F2A8 assistantIsEnabled])
  {
    v2 = v0[2];
    v1 = v0[3];
    sub_100065270();
    v3 = sub_100065260();
    sub_100065240();

    sub_1000294B4(4, v2);
    v4 = *(type metadata accessor for AlwaysShowSpeechEntity() + 20);
    sub_100003AD4(&qword_10008D170, &qword_1000732E0);
    sub_1000651B0();
    sub_1000084D8(&qword_10008D2E8, &qword_10008D280, &qword_1000737D8);
    *(v2 + v4) = sub_100065180();
  }

  else
  {
    v6 = v0[3];
    sub_100003BFC();
    swift_allocError();
    *v7 = 0xD00000000000002ELL;
    v7[1] = 0x8000000100065BB0;
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100059B4C()
{
  if (qword_10008C3F0 != -1)
  {
    swift_once();
  }

  if ([qword_10008F330 assistantIsEnabled])
  {
    sub_100015F94(*(v0 + 16));
  }

  else
  {
    sub_100003BFC();
    swift_allocError();
    *v2 = 0xD00000000000002ELL;
    v2[1] = 0x8000000100065BB0;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100059C70()
{
  if (qword_10008C658 != -1)
  {
    swift_once();
  }

  if ([qword_10008F8B8 assistantIsEnabled])
  {
    v1 = *(v0 + 16);
    v2 = type metadata accessor for AnnounceCallsEntity();
    v3 = sub_10005FBE8(&qword_10008EDC8, type metadata accessor for AnnounceCallsEntity);
    (*(v3 + 32))(v2, v3);
    v4 = *(v0 + 8);
  }

  else
  {
    if (qword_10008C3E0 != -1)
    {
      swift_once();
    }

    v5 = sub_1000652A0();
    sub_100003B1C(v5, qword_10008F300);
    v6 = sub_100065410();
    sub_100013A1C(v6, 0x6C62697369567369, 0xE900000000000065, 0xD000000000000044, 0x800000010006A080);
    sub_100003BFC();
    swift_allocError();
    *v7 = 0xD00000000000002ELL;
    v7[1] = 0x8000000100065BB0;
    swift_willThrow();
    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_100059E70()
{
  sub_10005D68C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100059ED4()
{
  v1 = *(v0 + *(type metadata accessor for AutoSendMessagesEntity() + 28));
}

uint64_t sub_100059F08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AutoSendMessagesEntity() + 28));
}

uint64_t sub_100059F50()
{
  v1 = *(v0 + *(type metadata accessor for AutoSendMessagesEntity() + 24));
}

uint64_t sub_100059F84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AutoSendMessagesEntity() + 24));
}

uint64_t sub_100059FCC()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F998);
  sub_100003B1C(v0, qword_10008F998);
  return sub_1000651B0();
}

uint64_t sub_10005A030(uint64_t a1)
{
  v3 = type metadata accessor for AutoSendMessagesEntity();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_10005FA4C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_10005F9A8(a1);
}

void (*sub_10005A0C0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_10005A134(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005FB40();
  v5 = sub_10005FBE8(&qword_10008EC10, type metadata accessor for AutoSendMessagesEntity);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10005A1D4()
{
  result = qword_10008EB98;
  if (!qword_10008EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EB98);
  }

  return result;
}

unint64_t sub_10005A22C()
{
  result = qword_10008EBA0;
  if (!qword_10008EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBA0);
  }

  return result;
}

uint64_t sub_10005A2D0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10005FB40();
  v7 = sub_10005FB94();
  v8 = sub_10005FBE8(&qword_10008EC10, type metadata accessor for AutoSendMessagesEntity);
  *v5 = v2;
  v5[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10005A3CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005E680();
  *a1 = result;
  return result;
}

uint64_t sub_10005A3F4(uint64_t a1)
{
  v2 = sub_10003EE74();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10005A478()
{
  v0 = sub_100065130();
  sub_100003B54(v0, qword_10008F9B0);
  sub_100003B1C(v0, qword_10008F9B0);
  return sub_100065110();
}

uint64_t sub_10005A4DC()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008F9C8);
  sub_100003B1C(v0, qword_10008F9C8);
  return sub_1000651B0();
}

uint64_t sub_10005A540()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008F9E0);
  v1 = sub_100003B1C(v0, qword_10008F9E0);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10005A600()
{
  result = swift_getKeyPath();
  qword_10008F9F8 = result;
  return result;
}

uint64_t sub_10005A628()
{
  v1 = *(v0 + *(type metadata accessor for AutoSendMessagesEntity() + 20));
}

uint64_t sub_10005A65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100003AD4(&qword_10008CB00, &unk_1000714F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100003AD4(&qword_10008CB08, &qword_100073870) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_100003AD4(&qword_10008EDB0, &qword_10007C0C0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100064D30();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for AutoSendMessagesEntity();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_100003AD4(&qword_10008ED90, &qword_10007C040);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10005A878, 0, 0);
}

uint64_t sub_10005A878()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_100064D90();
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_10005FBE8(&qword_10008EC18, type metadata accessor for AutoSendMessagesEntity);
  *v4 = v0;
  v4[1] = sub_10005A974;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v7, sub_10005FC34, 0, v8, v5);
}

uint64_t sub_10005A974()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10005AA70, 0, 0);
}

uint64_t sub_10005AA70()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C6D8 != -1)
  {
    swift_once();
  }

  v4 = qword_10008F9F8;
  *(v0 + 152) = qword_10008F9F8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = sub_1000084D8(&qword_10008ED70, &qword_10008ECF0, &qword_10007BF88);
  *v6 = v0;
  v6[1] = sub_10005ABC0;
  v8 = *(v0 + 96);

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v4, &type metadata for Bool, v7);
}

uint64_t sub_10005ABC0()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_10005F9A8(v4);

  if (v0)
  {
    v5 = sub_1000051E8;
  }

  else
  {
    v5 = sub_10005AD14;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005AD14()
{
  v1 = v0[16];
  v2 = v0[15];
  v14 = v0[13];
  v15 = v0[17];
  v19 = v0[12];
  v3 = v0[11];
  v12 = v0[10];
  v13 = v0[14];
  v17 = v0[9];
  v18 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v16 = v0[2];
  sub_100064D90();
  v8 = sub_100065100();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_100065140();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_10003F114();
  sub_10005FBE8(&qword_10008E0F8, type metadata accessor for AutoSendMessagesEntity);
  sub_100064CF0();
  (*(v2 + 16))(v1, v15, v13);
  sub_100064D10();
  sub_100064D40();
  (*(v17 + 8))(v12, v18);
  sub_10005F9A8(v14);
  (*(v2 + 8))(v15, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10005AFE0(void *a1, uint64_t *a2)
{
  v4 = sub_100003AD4(&qword_10008ED98, &qword_10007C048);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = *a2;

  sub_100064F70();

  type metadata accessor for AutoSendMessagesEntity();
  sub_10005FBE8(&qword_10008E0F8, type metadata accessor for AutoSendMessagesEntity);
  sub_1000084D8(&qword_10008EDA0, &qword_10008ED98, &qword_10007C048);
  sub_100064F60();
  return (*(v5 + 8))(v8, v4);
}

void (*sub_10005B18C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void (*sub_10005B200(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_10005B29C()
{
  result = qword_10008EBB8;
  if (!qword_10008EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBB8);
  }

  return result;
}

unint64_t sub_10005B2F4()
{
  result = qword_10008EBC0;
  if (!qword_10008EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBC0);
  }

  return result;
}

uint64_t sub_10005B3F0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002CCC;

  return sub_10005A65C(a1, v5, v4);
}

uint64_t sub_10005B49C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005EA30();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005B548()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 getMessageWithoutConfirmationEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10005B610()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setMessageWithoutConfirmationEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005B6A8()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008FA00);
  sub_100003B1C(v0, qword_10008FA00);
  return sub_1000651B0();
}

uint64_t sub_10005B70C()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008FA18);
  v1 = sub_100003B1C(v0, qword_10008FA18);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10005B7CC()
{
  result = swift_getKeyPath();
  qword_10008FA30 = result;
  return result;
}

uint64_t sub_10005B7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100003AD4(&qword_10008CB00, &unk_1000714F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100003AD4(&qword_10008CB08, &qword_100073870) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_100003AD4(&qword_10008EDA8, &qword_10007C088) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100064D30();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for AutoSendMessagesEntity();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_100003AD4(&qword_10008ED90, &qword_10007C040);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10005BA10, 0, 0);
}

uint64_t sub_10005BA10()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_100064D90();
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_10005FBE8(&qword_10008EC18, type metadata accessor for AutoSendMessagesEntity);
  *v4 = v0;
  v4[1] = sub_10005BB0C;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v7, sub_10005FC38, 0, v8, v5);
}

uint64_t sub_10005BB0C()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10005BC08, 0, 0);
}

uint64_t sub_10005BC08()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C6F0 != -1)
  {
    swift_once();
  }

  v4 = qword_10008FA30;
  *(v0 + 152) = qword_10008FA30;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = sub_1000084D8(&qword_10008ED70, &qword_10008ECF0, &qword_10007BF88);
  *v6 = v0;
  v6[1] = sub_10005BD58;
  v8 = *(v0 + 96);

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v4, &type metadata for Bool, v7);
}

uint64_t sub_10005BD58()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_10005F9A8(v4);

  if (v0)
  {
    v5 = sub_10005026C;
  }

  else
  {
    v5 = sub_10005BEAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005BEAC()
{
  v1 = v0[16];
  v2 = v0[15];
  v14 = v0[13];
  v15 = v0[17];
  v19 = v0[12];
  v3 = v0[11];
  v12 = v0[10];
  v13 = v0[14];
  v17 = v0[9];
  v18 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v16 = v0[2];
  sub_100064D90();
  v8 = sub_100065100();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_100065140();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_10003F168();
  sub_10005FBE8(&qword_10008E0F8, type metadata accessor for AutoSendMessagesEntity);
  sub_100064CF0();
  (*(v2 + 16))(v1, v15, v13);
  sub_100064D10();
  sub_100064D40();
  (*(v17 + 8))(v12, v18);
  sub_10005F9A8(v14);
  (*(v2 + 8))(v15, v13);

  v10 = v0[1];

  return v10();
}

void (*sub_10005C178(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_10005C1EC(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_10005C288()
{
  result = qword_10008EBD8;
  if (!qword_10008EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBD8);
  }

  return result;
}

unint64_t sub_10005C2E0()
{
  result = qword_10008EBE0;
  if (!qword_10008EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBE0);
  }

  return result;
}

uint64_t sub_10005C3DC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_10005B7F4(a1, v5, v4);
}

uint64_t sub_10005C488@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005EF58();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005C534()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 getMessageWithoutConfirmationInCarPlayEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10005C5FC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setMessageWithoutConfirmationInCarPlayEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005C694()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008FA38);
  sub_100003B1C(v0, qword_10008FA38);
  return sub_1000651B0();
}

uint64_t sub_10005C6F8()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008FA50);
  v1 = sub_100003B1C(v0, qword_10008FA50);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10005C7B8()
{
  result = swift_getKeyPath();
  qword_10008FA68 = result;
  return result;
}

uint64_t sub_10005C7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100003AD4(&qword_10008CB00, &unk_1000714F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100003AD4(&qword_10008CB08, &qword_100073870) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_100003AD4(&qword_10008ED88, &qword_10007C038) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100064D30();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for AutoSendMessagesEntity();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_100003AD4(&qword_10008ED90, &qword_10007C040);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10005C9FC, 0, 0);
}

uint64_t sub_10005C9FC()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_100064D90();
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_10005FBE8(&qword_10008EC18, type metadata accessor for AutoSendMessagesEntity);
  *v4 = v0;
  v4[1] = sub_10005CAF8;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v7, sub_10005FC3C, 0, v8, v5);
}

uint64_t sub_10005CAF8()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10005CBF4, 0, 0);
}

uint64_t sub_10005CBF4()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C708 != -1)
  {
    swift_once();
  }

  v4 = qword_10008FA68;
  *(v0 + 152) = qword_10008FA68;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = sub_1000084D8(&qword_10008ED70, &qword_10008ECF0, &qword_10007BF88);
  *v6 = v0;
  v6[1] = sub_10005CD44;
  v8 = *(v0 + 96);

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v4, &type metadata for Bool, v7);
}

uint64_t sub_10005CD44()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_10005F9A8(v4);

  if (v0)
  {
    v5 = sub_10005026C;
  }

  else
  {
    v5 = sub_10005CE98;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005CE98()
{
  v1 = v0[16];
  v2 = v0[15];
  v14 = v0[13];
  v15 = v0[17];
  v19 = v0[12];
  v3 = v0[11];
  v12 = v0[10];
  v13 = v0[14];
  v17 = v0[9];
  v18 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v16 = v0[2];
  sub_100064D90();
  v8 = sub_100065100();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_100065140();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_10003F1BC();
  sub_10005FBE8(&qword_10008E0F8, type metadata accessor for AutoSendMessagesEntity);
  sub_100064CF0();
  (*(v2 + 16))(v1, v15, v13);
  sub_100064D10();
  sub_100064D40();
  (*(v17 + 8))(v12, v18);
  sub_10005F9A8(v14);
  (*(v2 + 8))(v15, v13);

  v10 = v0[1];

  return v10();
}

void (*sub_10005D164(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

void (*sub_10005D1D8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

unint64_t sub_10005D274()
{
  result = qword_10008EBF8;
  if (!qword_10008EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBF8);
  }

  return result;
}

unint64_t sub_10005D2CC()
{
  result = qword_10008EC00;
  if (!qword_10008EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EC00);
  }

  return result;
}

uint64_t sub_10005D41C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_10005C7E0(a1, v5, v4);
}

uint64_t sub_10005D4C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005F480();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005D52C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 getMessageWithoutConfirmationHeadphonesEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10005D5F4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setMessageWithoutConfirmationHeadphonesEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005D68C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000651D0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100065270();
  v4 = sub_100065260();
  sub_100065240();

  sub_1000294B4(8, a1);
  v5 = type metadata accessor for AutoSendMessagesEntity();
  v6 = v5[5];
  sub_100003AD4(&qword_10008EBB0, &qword_10007B700);
  sub_1000651B0();
  sub_1000084D8(&qword_10008ED70, &qword_10008ECF0, &qword_10007BF88);
  *(a1 + v6) = sub_100065180();
  v7 = v5[6];
  sub_100003AD4(&qword_10008EBD0, &qword_10007B8A0);
  sub_1000651B0();
  *(a1 + v7) = sub_100065180();
  v8 = v5[7];
  sub_100003AD4(&qword_10008EBF0, &qword_10007BA40);
  sub_1000651B0();
  result = sub_100065180();
  *(a1 + v8) = result;
  return result;
}

uint64_t sub_10005D908(void *a1)
{
  a1[1] = sub_10005FBE8(&qword_10008EC08, type metadata accessor for AutoSendMessagesEntity);
  a1[2] = sub_10005FBE8(&qword_10008EC10, type metadata accessor for AutoSendMessagesEntity);
  result = sub_10005FBE8(&qword_10008EB70, type metadata accessor for AutoSendMessagesEntity);
  a1[3] = result;
  return result;
}

uint64_t sub_10005D9FC(uint64_t a1)
{
  v2 = sub_10005FBE8(&qword_10008EC18, type metadata accessor for AutoSendMessagesEntity);

  return EntityURLRepresentation.init(_:)(0xD00000000000004ALL, 0x8000000100069C20, a1, v2);
}

uint64_t sub_10005DAD8()
{
  v0 = qword_10008EB78;

  return v0;
}

uint64_t sub_10005DC2C(uint64_t a1)
{
  v2 = sub_10005FBE8(&qword_10008EB70, type metadata accessor for AutoSendMessagesEntity);

  return _UniqueEntityProvider.init(_:)(&unk_10007BFD8, 0, a1, v2);
}

uint64_t sub_10005DCFC()
{
  sub_10005FBE8(&qword_10008EC10, type metadata accessor for AutoSendMessagesEntity);
  v1 = sub_100065050();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10005DEB8@<X0>(uint64_t *a1@<X8>)
{
  sub_10005FBE8(&qword_10008EB70, type metadata accessor for AutoSendMessagesEntity);
  result = sub_100064D70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005DFA4(uint64_t a1)
{
  v2 = sub_10005FBE8(&qword_10008EC18, type metadata accessor for AutoSendMessagesEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10005E068(uint64_t a1)
{
  v2 = sub_10005FBE8(&qword_10008EC60, type metadata accessor for AutoSendMessagesEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10005E128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064FD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005E1F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100064FD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10005E2B0()
{
  sub_100064FD0();
  if (v0 <= 0x3F)
  {
    sub_10005E424(319, &qword_10008ECE8, sub_10005E3D0);
    if (v1 <= 0x3F)
    {
      sub_10005E424(319, &qword_10008ED08, sub_10005E540);
      if (v2 <= 0x3F)
      {
        sub_10005E424(319, &qword_10008ED18, sub_10005E594);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10005E3D0()
{
  result = qword_10008ED00;
  if (!qword_10008ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008ED00);
  }

  return result;
}

void sub_10005E424(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    type metadata accessor for AutoSendMessagesEntity();
    sub_100002BD0(&qword_10008ECF0, &qword_10007BF88);
    sub_10005FBE8(&qword_10008EC18, type metadata accessor for AutoSendMessagesEntity);
    sub_1000084D8(&qword_10008ECF8, &qword_10008ECF0, &qword_10007BF88);
    a3();
    v5 = sub_1000651A0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10005E540()
{
  result = qword_10008ED10;
  if (!qword_10008ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008ED10);
  }

  return result;
}

unint64_t sub_10005E594()
{
  result = qword_10008ED20;
  if (!qword_10008ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008ED20);
  }

  return result;
}

uint64_t sub_10005E680()
{
  v27 = sub_1000650D0();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100003AD4(&qword_10008ED78, &unk_10007C010);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_1000651D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_100003AD4(&qword_10008ED80, &unk_10007C020);
  sub_1000651B0();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for AutoSendMessagesEntity();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100064D30();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_10005FBE8(&qword_10008EC18, type metadata accessor for AutoSendMessagesEntity);
  return sub_100064DC0();
}

uint64_t sub_10005EA30()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v42 = &v33 - v2;
  v43 = sub_1000650D0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_100003AD4(&qword_10008ED78, &unk_10007C010);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v33 - v20;
  v34 = &v33 - v20;
  v22 = sub_1000651D0();
  v40 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v38 = sub_100003AD4(&qword_10008ED80, &unk_10007C020);
  sub_1000651B0();
  v25 = *(v23 + 56);
  v39 = v23 + 56;
  v41 = v25;
  v25(v21, 1, 1, v22);
  v26 = type metadata accessor for AutoSendMessagesEntity();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = sub_100064D30();
  v28 = *(*(v27 - 8) + 56);
  v28(v13, 1, 1, v27);
  v28(v11, 1, 1, v27);
  v37 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v3 + 104);
  v35 = v3 + 104;
  v36 = v29;
  v29(v6);
  sub_10005FBE8(&qword_10008EC18, type metadata accessor for AutoSendMessagesEntity);
  v30 = v34;
  v38 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v41(v30, 1, 1, v40);
  v44 = 2;
  v31 = sub_1000653E0();
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v28(v13, 1, 1, v27);
  v36(v6, v37, v43);
  sub_100064DD0();
  return v38;
}

uint64_t sub_10005EF58()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v42 = &v33 - v2;
  v43 = sub_1000650D0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_100003AD4(&qword_10008ED78, &unk_10007C010);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v33 - v20;
  v34 = &v33 - v20;
  v22 = sub_1000651D0();
  v40 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v38 = sub_100003AD4(&qword_10008ED80, &unk_10007C020);
  sub_1000651B0();
  v25 = *(v23 + 56);
  v39 = v23 + 56;
  v41 = v25;
  v25(v21, 1, 1, v22);
  v26 = type metadata accessor for AutoSendMessagesEntity();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = sub_100064D30();
  v28 = *(*(v27 - 8) + 56);
  v28(v13, 1, 1, v27);
  v28(v11, 1, 1, v27);
  v37 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v3 + 104);
  v35 = v3 + 104;
  v36 = v29;
  v29(v6);
  sub_10005FBE8(&qword_10008EC18, type metadata accessor for AutoSendMessagesEntity);
  v30 = v34;
  v38 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v41(v30, 1, 1, v40);
  v44 = 2;
  v31 = sub_1000653E0();
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v28(v13, 1, 1, v27);
  v36(v6, v37, v43);
  sub_100064DD0();
  return v38;
}

uint64_t sub_10005F480()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v42 = &v33 - v2;
  v43 = sub_1000650D0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_100003AD4(&qword_10008ED78, &unk_10007C010);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v33 - v20;
  v34 = &v33 - v20;
  v22 = sub_1000651D0();
  v40 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v38 = sub_100003AD4(&qword_10008ED80, &unk_10007C020);
  sub_1000651B0();
  v25 = *(v23 + 56);
  v39 = v23 + 56;
  v41 = v25;
  v25(v21, 1, 1, v22);
  v26 = type metadata accessor for AutoSendMessagesEntity();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = sub_100064D30();
  v28 = *(*(v27 - 8) + 56);
  v28(v13, 1, 1, v27);
  v28(v11, 1, 1, v27);
  v37 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v3 + 104);
  v35 = v3 + 104;
  v36 = v29;
  v29(v6);
  sub_10005FBE8(&qword_10008EC18, type metadata accessor for AutoSendMessagesEntity);
  v30 = v34;
  v38 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v41(v30, 1, 1, v40);
  v44 = 2;
  v31 = sub_1000653E0();
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v28(v13, 1, 1, v27);
  v36(v6, v37, v43);
  sub_100064DD0();
  return v38;
}

uint64_t sub_10005F9A8(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendMessagesEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005FA04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AutoSendMessagesEntity() + 28));
}

uint64_t sub_10005FA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendMessagesEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005FAB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AutoSendMessagesEntity() + 24));
}

uint64_t sub_10005FAF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AutoSendMessagesEntity() + 20));
}

unint64_t sub_10005FB40()
{
  result = qword_10008EDB8;
  if (!qword_10008EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EDB8);
  }

  return result;
}

unint64_t sub_10005FB94()
{
  result = qword_10008EDC0;
  if (!qword_10008EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EDC0);
  }

  return result;
}

uint64_t sub_10005FBE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005FC64()
{
  result = qword_10008EDE0;
  if (!qword_10008EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EDE0);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceNotificationForAppEntity()
{
  result = qword_10008EEF8;
  if (!qword_10008EEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005FD04(uint64_t a1)
{
  v3 = type metadata accessor for AnnounceNotificationForAppEntity();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_100065490();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v54 = _swiftEmptyArrayStorage;
  sub_100063AF0(0, v7 & ~(v7 >> 63), 0);
  v8 = v54;
  if (v46)
  {
    result = sub_100065450();
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    result = sub_100065440();
    v10 = *(a1 + 36);
  }

  v51 = result;
  v52 = v10;
  v53 = v46 != 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v13 = a1;
    }

    v41 = a1 + 56;
    v42 = v13;
    v39 = v1;
    v40 = a1 + 64;
    v43 = v7;
    v44 = a1;
    while (v12 < v7)
    {
      if (__OFADD__(v12++, 1))
      {
        goto LABEL_37;
      }

      v49 = v51;
      v47 = v52;
      v48 = v53;
      sub_100063DBC(v51, v52, v53, a1);
      v17 = v16;
      v18 = [v16 bundleId];
      v19 = v6;
      v20 = sub_100065390();
      v22 = v21;

      v23 = [v17 localizedName];
      v24 = sub_100065390();
      v26 = v25;

      sub_100061BFC(v20, v22, v24, v26, v19);
      v54 = v8;
      v28 = v8[2];
      v27 = v8[3];
      if (v28 >= v27 >> 1)
      {
        sub_100063AF0(v27 > 1, v28 + 1, 1);
        v8 = v54;
      }

      v8[2] = v28 + 1;
      sub_1000640C8(v19, v8 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v28);
      v6 = v19;
      if (v46)
      {
        a1 = v44;
        result = v49;
        if (!v48)
        {
          goto LABEL_42;
        }

        if (sub_100065460())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v7 = v43;
        sub_100003AD4(&qword_10008CAF8, &qword_1000714E0);
        v14 = sub_100065400();
        sub_1000654B0();
        result = v14(v50, 0);
        if (v12 == v7)
        {
LABEL_34:
          sub_1000084CC(v51, v52, v53);
          return v8;
        }
      }

      else
      {
        a1 = v44;
        result = v49;
        if (v48)
        {
          goto LABEL_43;
        }

        if ((v49 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v29 = 1 << *(v44 + 32);
        if (v49 >= v29)
        {
          goto LABEL_38;
        }

        v30 = v49 >> 6;
        v31 = *(v41 + 8 * (v49 >> 6));
        if (((v31 >> v49) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v44 + 36) != v47)
        {
          goto LABEL_40;
        }

        v32 = v31 & (-2 << (v49 & 0x3F));
        if (v32)
        {
          v29 = __clz(__rbit64(v32)) | v49 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v33 = v30 << 6;
          v34 = v30 + 1;
          v35 = (v40 + 8 * v30);
          while (v34 < (v29 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              result = sub_1000084CC(v49, v47, 0);
              v29 = __clz(__rbit64(v36)) + v33;
              goto LABEL_33;
            }
          }

          result = sub_1000084CC(v49, v47, 0);
        }

LABEL_33:
        v38 = *(a1 + 36);
        v51 = v29;
        v52 = v38;
        v53 = 0;
        v7 = v43;
        if (v12 == v43)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_100060134()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008FA70);
  sub_100003B1C(v0, qword_10008FA70);
  return sub_1000651B0();
}

uint64_t sub_100060198(uint64_t a1)
{
  v3 = type metadata accessor for AnnounceNotificationForAppEntity();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_100063A04(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100064DA0();
  return sub_10006406C(a1);
}

void (*sub_100060228(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_10006029C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064A94();
  v5 = sub_10006412C(&qword_10008EF70, type metadata accessor for AnnounceNotificationForAppEntity);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10006033C()
{
  result = qword_10008EDF0;
  if (!qword_10008EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EDF0);
  }

  return result;
}

unint64_t sub_100060394()
{
  result = qword_10008EDF8;
  if (!qword_10008EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EDF8);
  }

  return result;
}

uint64_t sub_100060438(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100064A94();
  v7 = sub_100064AE8();
  v8 = sub_10006412C(&qword_10008EF70, type metadata accessor for AnnounceNotificationForAppEntity);
  *v5 = v2;
  v5[1] = sub_100001D88;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100060534@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100064174();
  *a1 = result;
  return result;
}

uint64_t sub_10006055C(uint64_t a1)
{
  v2 = sub_10003EF1C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000605E0()
{
  v0 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000651C0();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100065210();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100065370();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000651D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100065130();
  sub_100003B54(v15, qword_10008FA88);
  sub_100003B1C(v15, qword_10008FA88);
  sub_100065360();
  sub_100065200();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000651F0();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100065120();
}

uint64_t sub_1000608D4()
{
  v0 = sub_1000651D0();
  sub_100003B54(v0, qword_10008FAA0);
  sub_100003B1C(v0, qword_10008FAA0);
  return sub_1000651B0();
}

uint64_t sub_100060938()
{
  v0 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  sub_100003B54(v0, qword_10008FAB8);
  v1 = sub_100003B1C(v0, qword_10008FAB8);
  sub_100064F10();
  v2 = sub_100064F20();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000609F8()
{
  result = swift_getKeyPath();
  qword_10008FAD0 = result;
  return result;
}

uint64_t sub_100060A20()
{
  v1 = *(v0 + *(type metadata accessor for AnnounceNotificationForAppEntity() + 24));
}

uint64_t sub_100060A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100003AD4(&qword_10008CB00, &unk_1000714F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100003AD4(&qword_10008CB08, &qword_100073870) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_100003AD4(&qword_10008EFB0, &qword_10007CA00) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100064D30();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for AnnounceNotificationForAppEntity();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_100003AD4(&qword_10008EFB8, &qword_10007CA08);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100060C70, 0, 0);
}

uint64_t sub_100060C70()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_100064D90();
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_10006412C(&qword_10008EE38, type metadata accessor for AnnounceNotificationForAppEntity);
  *v4 = v0;
  v4[1] = sub_100060D6C;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v7, sub_100064B3C, 0, v8, v5);
}

uint64_t sub_100060D6C()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_100060E68, 0, 0);
}

uint64_t sub_100060E68()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100064D90();
  sub_100064D90();
  *(v0 + 177) = *(v0 + 176);
  if (qword_10008C730 != -1)
  {
    swift_once();
  }

  v4 = qword_10008FAD0;
  *(v0 + 152) = qword_10008FAD0;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = sub_1000084D8(&qword_10008EF98, &qword_10008EF10, &qword_10007C948);
  *v6 = v0;
  v6[1] = sub_100060FB8;
  v8 = *(v0 + 96);

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v4, &type metadata for Bool, v7);
}

uint64_t sub_100060FB8()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_10006406C(v4);

  if (v0)
  {
    v5 = sub_1000051E8;
  }

  else
  {
    v5 = sub_10006110C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10006110C()
{
  v1 = v0[16];
  v2 = v0[15];
  v14 = v0[13];
  v15 = v0[17];
  v19 = v0[12];
  v3 = v0[11];
  v12 = v0[10];
  v13 = v0[14];
  v17 = v0[9];
  v18 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v16 = v0[2];
  sub_100064D90();
  v8 = sub_100065100();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_100065140();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_10003F0C0();
  sub_10006412C(&qword_10008E070, type metadata accessor for AnnounceNotificationForAppEntity);
  sub_100064CF0();
  (*(v2 + 16))(v1, v15, v13);
  sub_100064D10();
  sub_100064D40();
  (*(v17 + 8))(v12, v18);
  sub_10006406C(v14);
  (*(v2 + 8))(v15, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000613B8()
{
  v0 = sub_100003AD4(&qword_10008EFC0, &qword_10007CA10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10008C730 != -1)
  {
    swift_once();
  }

  sub_100064F70();

  type metadata accessor for AnnounceNotificationForAppEntity();
  sub_10006412C(&qword_10008E070, type metadata accessor for AnnounceNotificationForAppEntity);
  sub_1000084D8(&qword_10008EFC8, &qword_10008EFC0, &qword_10007CA10);
  sub_100064F60();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100061564(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100064D80();
  return sub_1000054EC;
}

void (*sub_1000615D8(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100064D80();
  return sub_100008690;
}

uint64_t sub_10006164C()
{
  if (qword_10008C730 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000616D0()
{
  result = qword_10008EE10;
  if (!qword_10008EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EE10);
  }

  return result;
}

unint64_t sub_100061728()
{
  result = qword_10008EE18;
  if (!qword_10008EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EE18);
  }

  return result;
}

uint64_t sub_100061854@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008C728 != -1)
  {
    swift_once();
  }

  v2 = sub_100003AD4(&qword_10008CB30, &unk_100071540);
  v3 = sub_100003B1C(v2, qword_10008FAB8);

  return sub_100008568(v3, a1);
}

uint64_t sub_1000618D8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return sub_100060A54(a1, v5, v4);
}

uint64_t sub_100061984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100064524();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000619C8()
{
  result = qword_10008EE20;
  if (!qword_10008EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EE20);
  }

  return result;
}

uint64_t sub_100061A1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100061A3C, 0, 0);
}

uint64_t sub_100061A3C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_opt_self() sharedController];
  v4 = (v1 + *(type metadata accessor for AnnounceNotificationForAppEntity() + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_100065380();
  v8 = [v3 isAnnounceNotificationEnabledForApp:v7];

  *v2 = v8;
  v9 = v0[1];

  return v9();
}

uint64_t sub_100061B08(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_100061B30, 0, 0);
}

uint64_t sub_100061B30()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = [objc_opt_self() sharedController];
  v4 = (v2 + *(type metadata accessor for AnnounceNotificationForAppEntity() + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_100065380();
  [v3 setAnnounceNotificationEnabledForApp:v7 annouceNotificationEnabled:v1];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100061BFC@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a3;
  v50 = a4;
  v44 = a2;
  v7 = sub_100003AD4(&qword_10008CAE8, &unk_100072340);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v51 = &v43 - v9;
  v10 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v48 = &v43 - v12;
  v45 = sub_1000651C0();
  v13 = *(v45 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v45);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100065210();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_100065370();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_1000651D0();
  v46 = *(v21 - 8);
  v47 = v21;
  v22 = *(v46 + 64);
  __chkstk_darwin(v21);
  v23 = type metadata accessor for AnnounceNotificationForAppEntity();
  v24 = *(v23 + 24);
  sub_100003AD4(&qword_10008EE08, &qword_10007C2D0);
  sub_1000651B0();
  sub_1000084D8(&qword_10008EF98, &qword_10008EF10, &qword_10007C948);
  *(a5 + v24) = sub_100065180();
  v25 = *(v23 + 20);
  v52 = a5;
  v26 = (a5 + v25);
  v27 = v44;
  *v26 = a1;
  v26[1] = v27;
  sub_100065270();
  v28 = sub_100065260();
  LOBYTE(a1) = sub_100065250();

  sub_100065360();
  v43 = "ASSISTANT_LOCK_SCREEN_ACCESS";
  sub_100065200();
  if (a1)
  {
    v29 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v44 = *(v13 + 104);
    v30 = v45;
    v44(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v45);
    sub_1000651E0();
    v53 = sub_1000653A0();
    v54 = v31;

    v55._countAndFlagsBits = 0x209286E220;
    v55._object = 0xA500000000000000;
    sub_1000653C0(v55);

    v32 = v53;
    v33 = v54;
    sub_100065360();
    sub_100065200();
    v44(v16, v29, v30);
  }

  else
  {
    v34 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v44 = *(v13 + 104);
    v35 = v45;
    v44(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v45);
    sub_1000651E0();
    v53 = sub_1000653A0();
    v54 = v36;

    v56._countAndFlagsBits = 0x209286E220;
    v56._object = 0xA500000000000000;
    sub_1000653C0(v56);

    v32 = v53;
    v33 = v54;
    sub_100065360();
    sub_100065200();
    v44(v16, v34, v35);
  }

  sub_1000651E0();
  v37 = sub_1000653A0();
  v39 = v38;
  v53 = v32;
  v54 = v33;

  v57._countAndFlagsBits = v37;
  v57._object = v39;
  sub_1000653C0(v57);

  sub_1000651B0();
  v40 = v48;
  sub_1000651B0();
  (*(v46 + 56))(v40, 0, 1, v47);
  v41 = sub_100064FA0();
  (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
  return sub_100064FC0();
}

id sub_100062318()
{
  result = [objc_opt_self() sharedController];
  qword_10008FAD8 = result;
  return result;
}

uint64_t sub_100062374()
{
  v1 = *(v0 + 16);
  sub_100065270();
  v2 = sub_100065260();
  sub_100065240();

  if ([v1 assistantIsEnabled] && objc_msgSend(*(v0 + 16), "isAnnounceNotificationEnabled"))
  {
    v3 = [*(v0 + 16) getAllNotificationApps];
    sub_1000082F4();
    sub_10006412C(&qword_10008CAE0, sub_1000082F4);
    v4 = sub_1000653F0();

    v5 = sub_10005FD04(v4);

    v6 = *(v0 + 8);

    return v6(v5);
  }

  else
  {
    sub_100003BFC();
    swift_allocError();
    *v8 = 0xD00000000000002ELL;
    v8[1] = 0x8000000100065BB0;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10006252C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v4 = type metadata accessor for AnnounceNotificationForAppEntity();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[9] = v7;
  *v7 = v2;
  v7[1] = sub_10006262C;

  return sub_100062354(a2);
}

uint64_t sub_10006262C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v7 = v3[7];
    v6 = v3[8];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_100062784, 0, 0);
  }
}

void sub_100062784()
{
  v1 = v0[10];
  v22 = *(v1 + 16);
  if (v22)
  {
    v2 = 0;
    v3 = v0[6];
    v21 = v0[5];
    v4 = v0[11];
    while (v2 < *(v1 + 16))
    {
      v5 = v0[8];
      v6 = v0[4];
      v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v8 = *(v3 + 72);
      sub_100063A04(v0[10] + v7 + v8 * v2, v5);
      v9 = (v5 + *(v21 + 20));
      v11 = *v9;
      v10 = v9[1];
      v0[2] = v11;
      v0[3] = v10;
      v12 = swift_task_alloc();
      *(v12 + 16) = v0 + 2;
      LOBYTE(v6) = sub_100063D10(sub_100064014, v12, v6);

      v13 = v0[8];
      if (v6)
      {
        sub_1000640C8(v13, v0[7]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100063AF0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_100063AF0(v14 > 1, v15 + 1, 1);
        }

        v16 = v0[7];
        _swiftEmptyArrayStorage[2] = v15 + 1;
        sub_1000640C8(v16, _swiftEmptyArrayStorage + v7 + v15 * v8);
      }

      else
      {
        sub_10006406C(v13);
      }

      if (v22 == ++v2)
      {
        v17 = v0[10];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v19 = v0[7];
    v18 = v0[8];

    v20 = v0[1];

    v20(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100062988(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100002540;

  return sub_100062354(v3);
}

unint64_t sub_100062A24()
{
  result = qword_10008EE28;
  if (!qword_10008EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EE28);
  }

  return result;
}

unint64_t sub_100062A7C()
{
  result = qword_10008EE30;
  if (!qword_10008EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EE30);
  }

  return result;
}

uint64_t sub_100062AD0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003DDC;

  return sub_10006252C(a1, v4);
}

uint64_t sub_100062B6C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EnumerableEntityQuery.suggestedEntities()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000639B0();
  *v6 = v2;
  v6[1] = sub_100002CCC;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v7);
}

unint64_t sub_100062C24()
{
  result = qword_10008EE40;
  if (!qword_10008EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EE40);
  }

  return result;
}

unint64_t sub_100062C7C()
{
  result = qword_10008EE48;
  if (!qword_10008EE48)
  {
    sub_100002BD0(&qword_10008EE50, qword_10007C528);
    sub_10006412C(&qword_10008E070, type metadata accessor for AnnounceNotificationForAppEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EE48);
  }

  return result;
}

uint64_t sub_100062D30(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000619C8();
  *v6 = v2;
  v6[1] = sub_100003DB8;

  return EntityQuery.results()(a1, a2, v7);
}

id sub_100062EC0@<X0>(void *a1@<X8>)
{
  if (qword_10008C738 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10008FAD8;
  *a1 = qword_10008FAD8;

  return v2;
}

uint64_t sub_100062F78()
{
  v0 = *aComAppleSiri;

  return v0;
}

uint64_t sub_100062FF8()
{
  v0 = sub_100003AD4(&qword_10008EF78, &qword_10007C9A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003AD4(&qword_10008EF80, &qword_10007C9B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10006412C(&qword_10008EE38, type metadata accessor for AnnounceNotificationForAppEntity);
  sub_1000650A0();
  v9._object = 0x800000010006A130;
  v9._countAndFlagsBits = 0xD00000000000005CLL;
  sub_100065090(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100065080();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100065090(v10);
  return sub_1000650B0();
}

uint64_t sub_10006330C()
{
  sub_10006412C(&qword_10008EF70, type metadata accessor for AnnounceNotificationForAppEntity);
  v1 = sub_100065050();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100063424(uint64_t a1)
{
  v2 = sub_10006412C(&qword_10008EE38, type metadata accessor for AnnounceNotificationForAppEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000634E8(uint64_t a1)
{
  v2 = sub_10006412C(&qword_10008EE80, type metadata accessor for AnnounceNotificationForAppEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100063598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100064FD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006366C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100064FD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100063728()
{
  sub_100064FD0();
  if (v0 <= 0x3F)
  {
    sub_1000637B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000637B4()
{
  if (!qword_10008EF08)
  {
    type metadata accessor for AnnounceNotificationForAppEntity();
    sub_100002BD0(&qword_10008EF10, &qword_10007C948);
    sub_10006412C(&qword_10008EE38, type metadata accessor for AnnounceNotificationForAppEntity);
    sub_1000084D8(&qword_10008EF18, &qword_10008EF10, &qword_10007C948);
    sub_1000638C4();
    v0 = sub_1000651A0();
    if (!v1)
    {
      atomic_store(v0, &qword_10008EF08);
    }
  }
}

unint64_t sub_1000638C4()
{
  result = qword_10008EF20;
  if (!qword_10008EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EF20);
  }

  return result;
}

unint64_t sub_1000639B0()
{
  result = qword_10008EF88;
  if (!qword_10008EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EF88);
  }

  return result;
}

uint64_t sub_100063A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnounceNotificationForAppEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t sub_100063A68(size_t a1, int64_t a2, char a3)
{
  result = sub_100063B34(a1, a2, a3, *v3, &qword_10008EFE8, &unk_10007CA50, type metadata accessor for SiriSuggestionsShowInAppEntity);
  *v3 = result;
  return result;
}

size_t sub_100063AAC(size_t a1, int64_t a2, char a3)
{
  result = sub_100063B34(a1, a2, a3, *v3, &qword_10008EFE0, &qword_10007CA48, type metadata accessor for SiriAppAccessForAppEntity);
  *v3 = result;
  return result;
}

size_t sub_100063AF0(size_t a1, int64_t a2, char a3)
{
  result = sub_100063B34(a1, a2, a3, *v3, &qword_10008EF90, &qword_10007C9C8, type metadata accessor for AnnounceNotificationForAppEntity);
  *v3 = result;
  return result;
}

size_t sub_100063B34(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003AD4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100063D10(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_100063DBC(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1000654A0();
      sub_1000082F4();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000082F4();
    if (sub_100065470() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_100065480();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_100065420(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_100065430();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100063FBC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100065500() & 1;
  }
}

uint64_t sub_100064014(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100065500() & 1;
  }
}

uint64_t sub_10006406C(uint64_t a1)
{
  v2 = type metadata accessor for AnnounceNotificationForAppEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000640C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnounceNotificationForAppEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006412C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100064174()
{
  v27 = sub_1000650D0();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100003AD4(&qword_10008EFA0, &qword_10007C9E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_1000651D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_100003AD4(&qword_10008EFA8, &unk_10007C9E8);
  sub_1000651B0();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for AnnounceNotificationForAppEntity();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100064D30();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_10006412C(&qword_10008EE38, type metadata accessor for AnnounceNotificationForAppEntity);
  return sub_100064DC0();
}

uint64_t sub_100064524()
{
  v0 = sub_100003AD4(&qword_10008CA98, &unk_100071480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v42 = &v33 - v2;
  v43 = sub_1000650D0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003AD4(&qword_10008C8A0, &qword_100073830);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_100003AD4(&qword_10008EFA0, &qword_10007C9E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_100003AD4(&qword_10008C8B0, &qword_100072330);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v33 - v20;
  v34 = &v33 - v20;
  v22 = sub_1000651D0();
  v40 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v38 = sub_100003AD4(&qword_10008EFA8, &unk_10007C9E8);
  sub_1000651B0();
  v25 = *(v23 + 56);
  v39 = v23 + 56;
  v41 = v25;
  v25(v21, 1, 1, v22);
  v26 = type metadata accessor for AnnounceNotificationForAppEntity();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = sub_100064D30();
  v28 = *(*(v27 - 8) + 56);
  v28(v13, 1, 1, v27);
  v28(v11, 1, 1, v27);
  v37 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v3 + 104);
  v35 = v3 + 104;
  v36 = v29;
  v29(v6);
  sub_10006412C(&qword_10008EE38, type metadata accessor for AnnounceNotificationForAppEntity);
  v30 = v34;
  v38 = sub_100064DC0();
  sub_100003AD4(&qword_10008CAB0, &qword_100073850);
  sub_1000651B0();
  v41(v30, 1, 1, v40);
  v44 = 2;
  v31 = sub_1000653E0();
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  v28(v13, 1, 1, v27);
  v36(v6, v37, v43);
  sub_100064DD0();
  return v38;
}

uint64_t sub_100064A4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AnnounceNotificationForAppEntity() + 24));
}

unint64_t sub_100064A94()
{
  result = qword_10008EFD0;
  if (!qword_10008EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EFD0);
  }

  return result;
}

unint64_t sub_100064AE8()
{
  result = qword_10008EFD8;
  if (!qword_10008EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EFD8);
  }

  return result;
}