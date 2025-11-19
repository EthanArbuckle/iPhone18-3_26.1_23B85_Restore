uint64_t sub_10001DC18()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049A80);
  sub_10000219C(v0, qword_100049A80);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DAF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "USER_INTERACTION_TYPE_UNKNOWN";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "USER_INTERACTION_TYPE_TAP";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "USER_INTERACTION_TYPE_CLICK";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "USER_INTERACTION_TYPE_LONGPRESS";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "USER_INTERACTION_TYPE_SCROLL";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001DEBC()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049A98);
  sub_10000219C(v0, qword_100049A98);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "REQUEST_TYPE_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REQUEST_TYPE_BROWSING_ASSISTANT_ELIGIBILITY";
  *(v10 + 1) = 43;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REQUEST_TYPE_CONTENT";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001E0E4()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049AB0);
  sub_10000219C(v0, qword_100049AB0);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "COMPONENT_TYPE_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "COMPONENT_TYPE_HINT";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "COMPONENT_TYPE_CARD";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "COMPONENT_TYPE_READER_VIEW_SECTION";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001E344()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049AC8);
  sub_10000219C(v0, qword_100049AC8);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CARD_TYPE_UNKNOWN";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CARD_TYPE_SUMMARY";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CARD_TYPE_ENTITY";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001E56C()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049AE0);
  sub_10000219C(v0, qword_100049AE0);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DAF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ENTITY_TYPE_UNKNOWN";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ENTITY_TYPE_PEOPLE";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ENTITY_TYPE_POI";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ENTITY_TYPE_MOVIE_TV";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ENTITY_TYPE_MUSIC";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001E810()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049AF8);
  sub_10000219C(v0, qword_100049AF8);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "READER_VIEW_SECTION_TYPE_UNKNOWN";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "READER_VIEW_SECTION_TYPE_SUMMARY";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "READER_VIEW_SECTION_TYPE_TABLE_OF_CONTENTS";
  *(v12 + 1) = 42;
  v12[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001EA38()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049B10);
  sub_10000219C(v0, qword_100049B10);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "HIDE_SHOW_BUTTON_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_10002CB18();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HIDE_SHOW_BUTTON_HIDE";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HIDE_SHOW_BUTTON_SHOW";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_10002CB28();
}

uint64_t sub_10001EE6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002154(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001EEC0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10001EEE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return sub_10001FB84(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001EEF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10001EF28(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return sub_10001FB84(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001EF3C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_10001EFD8()
{
  result = qword_100042400;
  if (!qword_100042400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042400);
  }

  return result;
}

unint64_t sub_10001F030()
{
  result = qword_100042408;
  if (!qword_100042408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042408);
  }

  return result;
}

unint64_t sub_10001F088()
{
  result = qword_100042410;
  if (!qword_100042410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042410);
  }

  return result;
}

unint64_t sub_10001F0E0()
{
  result = qword_100042418;
  if (!qword_100042418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042418);
  }

  return result;
}

unint64_t sub_10001F138()
{
  result = qword_100042420;
  if (!qword_100042420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042420);
  }

  return result;
}

unint64_t sub_10001F190()
{
  result = qword_100042428;
  if (!qword_100042428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042428);
  }

  return result;
}

unint64_t sub_10001F1E8()
{
  result = qword_100042430;
  if (!qword_100042430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042430);
  }

  return result;
}

unint64_t sub_10001F240()
{
  result = qword_100042438;
  if (!qword_100042438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042438);
  }

  return result;
}

unint64_t sub_10001F298()
{
  result = qword_100042440;
  if (!qword_100042440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042440);
  }

  return result;
}

unint64_t sub_10001F2F0()
{
  result = qword_100042448;
  if (!qword_100042448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042448);
  }

  return result;
}

unint64_t sub_10001F348()
{
  result = qword_100042450;
  if (!qword_100042450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042450);
  }

  return result;
}

unint64_t sub_10001F3A0()
{
  result = qword_100042458;
  if (!qword_100042458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042458);
  }

  return result;
}

unint64_t sub_10001F3F8()
{
  result = qword_100042460;
  if (!qword_100042460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042460);
  }

  return result;
}

unint64_t sub_10001F450()
{
  result = qword_100042468;
  if (!qword_100042468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042468);
  }

  return result;
}

unint64_t sub_10001F4A8()
{
  result = qword_100042470;
  if (!qword_100042470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042470);
  }

  return result;
}

unint64_t sub_10001F500()
{
  result = qword_100042478;
  if (!qword_100042478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042478);
  }

  return result;
}

unint64_t sub_10001F558()
{
  result = qword_100042480;
  if (!qword_100042480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042480);
  }

  return result;
}

unint64_t sub_10001F5B0()
{
  result = qword_100042488;
  if (!qword_100042488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042488);
  }

  return result;
}

unint64_t sub_10001F608()
{
  result = qword_100042490;
  if (!qword_100042490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042490);
  }

  return result;
}

unint64_t sub_10001F660()
{
  result = qword_100042498;
  if (!qword_100042498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042498);
  }

  return result;
}

unint64_t sub_10001F6B8()
{
  result = qword_1000424A0;
  if (!qword_1000424A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424A0);
  }

  return result;
}

unint64_t sub_10001F710()
{
  result = qword_1000424A8;
  if (!qword_1000424A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424A8);
  }

  return result;
}

unint64_t sub_10001F768()
{
  result = qword_1000424B0;
  if (!qword_1000424B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424B0);
  }

  return result;
}

unint64_t sub_10001F7C0()
{
  result = qword_1000424B8;
  if (!qword_1000424B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424B8);
  }

  return result;
}

unint64_t sub_10001F818()
{
  result = qword_1000424C0;
  if (!qword_1000424C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424C0);
  }

  return result;
}

unint64_t sub_10001F870()
{
  result = qword_1000424C8;
  if (!qword_1000424C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424C8);
  }

  return result;
}

unint64_t sub_10001F8C8()
{
  result = qword_1000424D0;
  if (!qword_1000424D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424D0);
  }

  return result;
}

unint64_t sub_10001F920()
{
  result = qword_1000424D8;
  if (!qword_1000424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424D8);
  }

  return result;
}

unint64_t sub_10001F978()
{
  result = qword_1000424E0;
  if (!qword_1000424E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424E0);
  }

  return result;
}

unint64_t sub_10001F9D0()
{
  result = qword_1000424E8;
  if (!qword_1000424E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424E8);
  }

  return result;
}

unint64_t sub_10001FA28()
{
  result = qword_1000424F0;
  if (!qword_1000424F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424F0);
  }

  return result;
}

unint64_t sub_10001FA80()
{
  result = qword_1000424F8;
  if (!qword_1000424F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424F8);
  }

  return result;
}

unint64_t sub_10001FAD8()
{
  result = qword_100042500;
  if (!qword_100042500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042500);
  }

  return result;
}

uint64_t sub_10001FB5C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = a1[8];
  v3 = *a2;
  v4 = *(a2 + 8);
  return *a1;
}

uint64_t sub_10001FB90(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t sub_10001FBA4()
{

  return sub_10002CB98();
}

uint64_t sub_10001FBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 152) = a5;
  *(v7 + 160) = v6;
  *(v7 + 136) = a3;
  *(v7 + 144) = a4;
  *(v7 + 128) = a6;
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SafariBrowsingAssistantEvent();
  *(v7 + 168) = v8;
  sub_1000187F8(v8);
  v10 = *(v9 + 64);
  *(v7 + 176) = sub_100022690();
  v11 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  *(v7 + 184) = v11;
  sub_1000187F8(v11);
  v13 = *(v12 + 64);
  *(v7 + 192) = sub_100022690();
  v14 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  sub_1000187F8(v14);
  v16 = *(v15 + 64) + 15;
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  v17 = sub_10002C938();
  sub_1000187F8(v17);
  v19 = *(v18 + 64);
  *(v7 + 216) = sub_100022690();
  v20 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload(0);
  *(v7 + 224) = v20;
  v21 = *(v20 - 8);
  *(v7 + 232) = v21;
  v22 = *(v21 + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  v23 = sub_10002CB68();
  *(v7 + 264) = v23;
  v24 = *(v23 - 8);
  *(v7 + 272) = v24;
  v25 = *(v24 + 64);
  *(v7 + 280) = sub_100022690();

  return _swift_task_switch(sub_10001FDA4, 0, 0);
}

uint64_t sub_10001FDA4()
{
  v143 = v0;
  if (qword_100040A18 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = sub_10000219C(v3, qword_100049B88);
  (*(v2 + 16))(v1, v9, v3);
  sub_100022168(&qword_100040F68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload);
  memset(v141, 0, sizeof(v141));
  v142 = 0;
  sub_100016394(v8, v7);
  sub_10002C928();
  sub_10002CA38();
  v10 = *(v0 + 256);
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  sub_10002230C(*(v0 + 248), v10, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload);
  sub_1000222AC(v10, v11, &qword_100040F88, &qword_10002F760);
  v13 = sub_100022684();
  sub_100018854(v13, v14, v12);
  if (!v15)
  {
    v34 = *(v0 + 184);
    sub_1000222AC(*(v0 + 208), *(v0 + 200), &qword_100040F88, &qword_10002F760);
    sub_100022610();
    if (!swift_getEnumCaseMultiPayload())
    {
      v59 = *(v0 + 224);
      v60 = *(v0 + 200);
      v61 = *(v0 + 128);
      v36 = *(v0 + 256);
      *(v36 + *(v59 + 20)) = sub_10002340C();
      sub_1000223C4();
      sub_10002236C(v60, v62);
      goto LABEL_20;
    }

    v37 = *(v0 + 200);
    v38 = *(v0 + 184);
    sub_1000223C4();
    sub_10002236C(v39, v40);
    v41 = sub_100022604();
    if (sub_1000020C8(v41, v42, v38))
    {
      goto LABEL_13;
    }

    v43 = *(v0 + 256);
    v44 = *(v0 + 192);
    sub_10002257C();
    sub_100022208(v45, v44, v46);
    sub_100023170((v0 + 56));
    sub_1000223C4();
    sub_10002236C(v44, v47);
    sub_100001DE4(&qword_100042528, &unk_1000315B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_13:
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v48 = *(v0 + 40);
      if (v48)
      {
        v49 = *(v0 + 48);
        sub_100022268((v0 + 16), *(v0 + 40));
        (*(v49 + 8))(v48, v49);
        sub_1000023D0((v0 + 16));
        v50 = sub_100022628();
        if (!sub_1000082E4(v50, v51))
        {
          v110 = *(v0 + 136);
          v111 = sub_100022628();
          v114 = sub_100020C84(v111, v112, v113);
          if ((v115 & 1) == 0)
          {
            v130 = *(v0 + 128);
            v131 = *&v114;
            v132 = sub_100022628();
            sub_1000221B0(v132, v133);
            v134 = 900.0;
            if (v130 - v131 <= 900.0)
            {
              v134 = v130 - v131;
            }

            v135 = v134 * 1000000.0;
            v136 = 0.0;
            if (v130 - v131 > 0.0)
            {
              v136 = v135;
              if ((*&v135 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_47:
                __break(1u);
                goto LABEL_48;
              }
            }

            if (v136 <= -1.0)
            {
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            if (v136 >= 1.84467441e19)
            {
LABEL_49:
              __break(1u);
              JUMPOUT(0x100020950);
            }

            *(*(v0 + 256) + *(*(v0 + 224) + 20)) = v136;
LABEL_20:
            v63 = *(v0 + 256);
            v64 = *(v0 + 232);
            v65 = *(v0 + 168);
            v66 = *(v0 + 176);
            sub_100015FF0(*(v0 + 208), &qword_100040F88, &qword_10002F760);
            sub_100020CDC(v63);
            v67 = v66 + *(v65 + 20);
            sub_10002C908();
            sub_100001DE4(&qword_100042518, &qword_1000315A8);
            v68 = *(v64 + 72);
            v69 = (*(v64 + 80) + 32) & ~*(v64 + 80);
            v70 = swift_allocObject();
            *(v70 + 16) = xmmword_10002DB30;
            sub_10002254C();
            sub_100022208(v63, v71 + v69, v72);
            *v66 = v70;
            sub_100022168(&qword_100042520, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SafariBrowsingAssistantEvent);
            v73 = sub_10002CA48();
            *(v0 + 288) = v73;
            *(v0 + 296) = v74;
            v75 = v73;
            v76 = v74;
            v77 = *(v0 + 256);
            v78 = *(v0 + 184);
            v79 = sub_100022604();
            if (sub_1000020C8(v79, v80, v81))
            {
              v82 = 0xE700000000000000;
              v83 = 0x6E776F6E6B6E75;
            }

            else
            {
              v84 = *(v0 + 192);
              sub_10002257C();
              sub_100022208(v77, v84, v85);
              v83 = sub_100022F08();
              v82 = v86;
              sub_1000223C4();
              sub_10002236C(v84, v87);
            }

            v88 = *(v0 + 280);

            v89 = sub_10002261C();
            sub_100016394(v89, v90);
            v91 = sub_10002CB48();
            v92 = sub_10002CDC8();

            if (!os_log_type_enabled(v91, v92))
            {
              v97 = sub_10002261C();
              sub_1000221B0(v97, v98);

LABEL_31:
              v138 = (*(v0 + 152) + 8);
              v140 = (*v138 + **v138);
              v104 = (*v138)[1];
              v105 = swift_task_alloc();
              *(v0 + 304) = v105;
              *v105 = v0;
              v105[1] = sub_100020960;
              v106 = *(v0 + 152);
              v107 = *(v0 + 160);
              v108 = *(v0 + 144);
              v109 = sub_10002261C();

              return v140(v109);
            }

            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *&v141[0] = v94;
            *v93 = 136446466;
            v95 = sub_100028D28(v83, v82, v141);

            *(v93 + 4) = v95;
            *(v93 + 12) = 2048;
            v96 = 0;
            switch(v76 >> 62)
            {
              case 1uLL:
                LODWORD(v96) = HIDWORD(v75) - v75;
                if (!__OFSUB__(HIDWORD(v75), v75))
                {
                  v96 = v96;
LABEL_30:
                  *(v93 + 14) = v96;
                  v102 = sub_10002261C();
                  sub_1000221B0(v102, v103);
                  _os_log_impl(&_mh_execute_header, v91, v92, "Attempt to send event (%{public}s) data (%ld bytes)", v93, 0x16u);
                  sub_1000023D0(v94);
                  sub_10002266C();
                  sub_10002266C();

                  goto LABEL_31;
                }

                __break(1u);
LABEL_46:
                __break(1u);
                break;
              case 2uLL:
                v100 = *(v75 + 16);
                v99 = *(v75 + 24);
                v101 = __OFSUB__(v99, v100);
                v96 = v99 - v100;
                if (!v101)
                {
                  goto LABEL_30;
                }

                goto LABEL_46;
              case 3uLL:
                goto LABEL_30;
              default:
                v96 = BYTE6(v76);
                goto LABEL_30;
            }

            goto LABEL_47;
          }

          v116 = *(v0 + 280);
          sub_10002397C(111);
          v117 = sub_100022628();
          sub_100016394(v117, v118);
          v119 = sub_10002CB48();
          v120 = sub_10002CDD8();
          v121 = sub_100022628();
          sub_1000221B0(v121, v122);
          if (os_log_type_enabled(v119, v120))
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            *&v141[0] = v124;
            *v123 = 136446210;
            v125 = sub_10002C788(0);
            v127 = sub_100028D28(v125, v126, v141);

            *(v123 + 4) = v127;
            _os_log_impl(&_mh_execute_header, v119, v120, "Start event missing for %{public}s", v123, 0xCu);
            sub_1000023D0(v124);
            sub_10002266C();
            sub_10002266C();
            v128 = sub_100022628();
            sub_1000221B0(v128, v129);

            goto LABEL_20;
          }
        }

        v52 = sub_100022628();
        sub_1000221B0(v52, v53);
        goto LABEL_20;
      }
    }

    sub_100015FF0(v0 + 16, &qword_100042510, &qword_1000315A0);
    goto LABEL_20;
  }

  v16 = *(v0 + 280);
  sub_10002397C(110);
  v17 = sub_10002CB48();
  v18 = sub_10002CDD8();
  v19 = os_log_type_enabled(v17, v18);
  v21 = *(v0 + 272);
  v20 = *(v0 + 280);
  v22 = *(v0 + 264);
  if (v19)
  {
    v137 = *(v0 + 264);
    v139 = *(v0 + 280);
    v23 = *(v0 + 256);
    v24 = *(v0 + 240);
    v25 = *(v0 + 224);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v141[0] = v27;
    *v26 = 136642819;
    swift_beginAccess();
    sub_10002254C();
    sub_100022208(v23, v24, v28);
    sub_10002261C();
    sub_10002CA68();
    sub_1000223DC();
    sub_10002236C(v24, v29);
    v30 = sub_100022610();
    v33 = sub_100028D28(v30, v31, v32);

    *(v26 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unknown oneof case %{sensitive}s", v26, 0xCu);
    sub_1000023D0(v27);
    sub_10002266C();
    sub_10002266C();

    (*(v21 + 8))(v139, v137);
  }

  else
  {

    (*(v21 + 8))(v20, v22);
  }

  v54 = *(v0 + 256);
  sub_100015FF0(*(v0 + 208), &qword_100040F88, &qword_10002F760);
  sub_1000223DC();
  sub_10002236C(v54, v55);
  sub_100022644();

  v56 = sub_100022634();

  return v57(v56);
}

uint64_t sub_100020960()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_100020B70;
  }

  else
  {
    v3 = sub_100020A74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100020A74()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[22];
  sub_1000221B0(v0[36], v0[37]);
  v6 = *(v2 + 8);
  v7 = sub_100022610();
  v8(v7);
  sub_100022438();
  sub_10002236C(v5, v9);
  sub_1000223DC();
  sub_10002236C(v4, v10);
  sub_100022644();

  v11 = v0[1];

  return v11(1);
}

uint64_t sub_100020B70()
{
  sub_1000221B0(v0[36], v0[37]);
  v14 = v0[39];
  v1 = v0[32];
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[22];
  (*(v0[34] + 8))(v0[35], v0[33]);
  sub_100022438();
  sub_10002236C(v8, v9);
  sub_1000223DC();
  sub_10002236C(v1, v10);

  v11 = sub_100022634();

  return v12(v11);
}

uint64_t sub_100020C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100023EF0(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100020CDC(uint64_t a1)
{
  v359 = a1;
  v1 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext(0);
  v2 = sub_1000187F8(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_1000223F4();
  sub_1000224F0();
  __chkstk_darwin(v5);
  sub_1000225EC();
  v347 = v6;
  v7 = sub_1000189B8();
  v351 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentInteractionInfo(v7);
  v8 = sub_100018638(v351);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10001860C();
  v337 = v11;
  v12 = sub_100001DE4(&qword_100041068, &qword_10002F838);
  v13 = sub_1000187F8(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_1000223F4();
  v341 = v16;
  sub_100022528();
  __chkstk_darwin(v17);
  sub_1000225EC();
  v346 = v18;
  v19 = sub_1000189B8();
  v355 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected(v19);
  v20 = sub_100018638(v355);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_1000223F4();
  v342 = v23;
  sub_100022528();
  __chkstk_darwin(v24);
  sub_1000225EC();
  v349 = v25;
  v26 = sub_100001DE4(&qword_100041010, &qword_10002F7E0);
  v27 = sub_1000187F8(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v348 = &v327 - v30;
  v31 = sub_100001DE4(&qword_100040FF8, &qword_10002F7C8);
  v32 = sub_1000187F8(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_1000223F4();
  sub_1000224F0();
  __chkstk_darwin(v35);
  sub_1000225EC();
  v344 = v36;
  v37 = sub_1000189B8();
  v343 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded(v37);
  v38 = sub_100018638(v343);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_1000223F4();
  sub_1000224F0();
  __chkstk_darwin(v41);
  sub_1000225EC();
  v345 = v42;
  v43 = sub_1000189B8();
  v356 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(v43);
  v44 = sub_100018638(v356);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  sub_1000223F4();
  v339 = v47;
  sub_100022528();
  __chkstk_darwin(v48);
  sub_1000225EC();
  v354 = v49;
  v50 = sub_1000189B8();
  v352 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentData(v50);
  v51 = sub_100018638(v352);
  v53 = *(v52 + 64);
  __chkstk_darwin(v51);
  sub_10001860C();
  v330 = v54;
  v55 = sub_100001DE4(&qword_100041040, &qword_10002F810);
  v56 = sub_1000187F8(v55);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56);
  sub_1000223F4();
  v350 = v59;
  sub_100022528();
  __chkstk_darwin(v60);
  sub_1000225EC();
  v333 = v61;
  v62 = sub_1000189B8();
  v357 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent(v62);
  v63 = sub_100018638(v357);
  v65 = *(v64 + 64);
  __chkstk_darwin(v63);
  sub_1000223F4();
  sub_1000224F0();
  __chkstk_darwin(v66);
  sub_1000225EC();
  v340 = v67;
  v68 = sub_100001DE4(&qword_100041030, &qword_10002F800);
  v69 = sub_1000187F8(v68);
  v71 = *(v70 + 64);
  __chkstk_darwin(v69);
  sub_1000223F4();
  sub_1000224F0();
  __chkstk_darwin(v72);
  sub_1000224F0();
  __chkstk_darwin(v73);
  v75 = &v327 - v74;
  v353 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(0);
  v76 = sub_100018638(v353);
  v78 = *(v77 + 64);
  __chkstk_darwin(v76);
  sub_1000223F4();
  sub_1000224F0();
  __chkstk_darwin(v79);
  sub_1000225EC();
  v358 = v80;
  v81 = sub_1000189B8();
  v82 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent(v81);
  v83 = sub_100018638(v82);
  v85 = *(v84 + 64);
  v86 = __chkstk_darwin(v83);
  v88 = &v327 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v90 = &v327 - v89;
  v91 = sub_100001DE4(&qword_100040F88, &qword_10002F760);
  v92 = sub_1000187F8(v91);
  v94 = *(v93 + 64);
  v95 = __chkstk_darwin(v92);
  v97 = &v327 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __chkstk_darwin(v95);
  v100 = &v327 - v99;
  __chkstk_darwin(v98);
  sub_1000224F0();
  v102 = __chkstk_darwin(v101);
  v104 = &v327 - v103;
  v105 = __chkstk_darwin(v102);
  v107 = &v327 - v106;
  __chkstk_darwin(v105);
  v109 = &v327 - v108;
  sub_1000222AC(v359, &v327 - v108, &qword_100040F88, &qword_10002F760);
  v110 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v111 = sub_100022684();
  sub_100018854(v111, v112, v110);
  if (v113)
  {
LABEL_30:
    v123 = 0;
  }

  else
  {
    sub_1000222AC(v109, v107, &qword_100040F88, &qword_10002F760);
    sub_100022610();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v114 = v347;
        sub_10002230C(v107, v347, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext);
        if (*(v114 + 105) != 1)
        {
          v128 = sub_100022500();
          goto LABEL_29;
        }

        v115 = v334;
        v116 = v110;
        v117 = v359;
        sub_100002640(v334);
        v118 = sub_100022500();
        sub_10002236C(v118, v119);
        *(v115 + 105) = 0;
        sub_100015FF0(v117, &qword_100040F88, &qword_10002F760);
        v120 = sub_10002261C();
        sub_10002230C(v120, v121, v122);
        v123 = 1;
        swift_storeEnumTagMultiPayload();
        sub_1000225F8();
        sub_100001E9C(v124, v125, v126, v116);
        break;
      case 4u:
        sub_10002230C(v107, v90, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent);
        v136 = *(v90 + 3);
        v137 = *(v90 + 2) & 0xFFFFFFFFFFFFLL;
        if ((v136 & 0x2000000000000000) != 0)
        {
          v137 = HIBYTE(v136) & 0xF;
        }

        if (!v137)
        {
          sub_100022534();
          v128 = v90;
          goto LABEL_29;
        }

        v138 = v110;
        v139 = v359;
        sub_1000222AC(v359, v104, &qword_100040F88, &qword_10002F760);
        sub_100018854(v104, 1, v138);
        if (v113)
        {
          v179 = v138;
          sub_100015FF0(v104, &qword_100040F88, &qword_10002F760);
        }

        else
        {
          v179 = v138;
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 4)
          {
            sub_1000225AC();
            sub_10002230C(v104, v88, v181);
            goto LABEL_52;
          }

          sub_1000223C4();
          sub_10002236C(v104, v214);
        }

        *v88 = xmmword_10002DAB0;
        *(v88 + 2) = 0;
        *(v88 + 3) = 0xE000000000000000;
        v215 = &v88[*(v82 + 24)];
        sub_10002C908();
LABEL_52:
        v216 = *(v88 + 3);

        *(v88 + 2) = 0;
        *(v88 + 3) = 0xE000000000000000;
        sub_100015FF0(v139, &qword_100040F88, &qword_10002F760);
        sub_1000225AC();
        sub_10002230C(v88, v139, v217);
        swift_storeEnumTagMultiPayload();
        v123 = 1;
        sub_1000225F8();
        sub_100001E9C(v218, v219, v220, v179);
        sub_100022534();
        sub_10002236C(v90, v221);
        break;
      case 5u:
        v355 = v110;
        sub_100022408();
        v129 = v354;
        sub_10002230C(v107, v354, v130);
        v131 = v344;
        sub_1000222AC(v129 + *(v356 + 24), v344, &qword_100040FF8, &qword_10002F7C8);
        v132 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent(0);
        v133 = sub_100022604();
        sub_100018854(v133, v134, v132);
        if (v113)
        {
          sub_100015FF0(v131, &qword_100040FF8, &qword_10002F7C8);
          v135 = v343;
        }

        else
        {
          sub_100022610();
          v171 = swift_getEnumCaseMultiPayload();
          v135 = v343;
          if (v171 == 1)
          {
            v140 = v109;
            sub_100022420();
            v172 = v345;
            sub_10002230C(v131, v345, v173);
            goto LABEL_35;
          }

          sub_1000225C4();
        }

        v140 = v109;
        v172 = v345;
        *v345 = 0;
        v172[1] = 0xE000000000000000;
        v182 = v172 + *(v135 + 20);
        sub_10002C908();
        v183 = *(v135 + 24);
        type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData(0);
        sub_10002251C();
        sub_100001E9C(v184, v185, v186, v187);
LABEL_35:
        v188 = v348;
        sub_1000222AC(v172 + *(v135 + 24), v348, &qword_100041010, &qword_10002F7E0);
        sub_10002236C(v172, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContextEnded);
        v189 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ResponseData(0);
        v190 = sub_1000020C8(v188, 1, v189);
        sub_100015FF0(v188, &qword_100041010, &qword_10002F7E0);
        if (v190 == 1)
        {
          sub_100022498();
          v192 = v129;
          goto LABEL_44;
        }

        sub_1000222AC(v359, v100, &qword_100040F88, &qword_10002F760);
        sub_100018854(v100, 1, v355);
        if (v113)
        {
          sub_100015FF0(v100, &qword_100040F88, &qword_10002F760);
          v193 = v335;
          v194 = v356;
        }

        else
        {
          v195 = swift_getEnumCaseMultiPayload();
          v194 = v356;
          if (v195 == 5)
          {
            sub_100022408();
            v196 = v339;
            sub_10002230C(v100, v339, v197);
            v198 = v338;
            v193 = v335;
            goto LABEL_55;
          }

          sub_1000223C4();
          sub_10002236C(v100, v222);
          v193 = v335;
        }

        v196 = v339;
        *v339 = xmmword_10002DAB0;
        *(v196 + 2) = 0;
        *(v196 + 3) = 0xE000000000000000;
        v223 = *(v194 + 24);
        sub_10002251C();
        sub_100001E9C(v224, v225, v226, v132);
        v227 = v196 + *(v194 + 28);
        sub_10002C908();
        v198 = v338;
LABEL_55:
        v228 = *(v194 + 24);
        sub_1000222AC(v196 + v228, v193, &qword_100040FF8, &qword_10002F7C8);
        v229 = sub_100022604();
        sub_100018854(v229, v230, v132);
        if (v113)
        {
          sub_100015FF0(v193, &qword_100040FF8, &qword_10002F7C8);
        }

        else
        {
          sub_100022610();
          v231 = swift_getEnumCaseMultiPayload();
          if (v231 == 1)
          {
            sub_100022498();
            sub_10002236C(v354, v232);
            sub_100022420();
            sub_10002230C(v193, v198, v233);
            goto LABEL_62;
          }

          sub_1000225C4();
        }

        *v198 = 0;
        v198[1] = 0xE000000000000000;
        v234 = v198 + *(v135 + 20);
        sub_10002C908();
        sub_100022498();
        sub_10002236C(v354, v235);
        v236 = *(v135 + 24);
        sub_10002251C();
        sub_100001E9C(v237, v238, v239, v189);
LABEL_62:
        sub_100015FF0(v198 + *(v135 + 24), &qword_100041010, &qword_10002F7E0);
        v123 = 1;
        sub_10002251C();
        sub_100001E9C(v240, v241, v242, v189);
        sub_100015FF0(v196 + v228, &qword_100040FF8, &qword_10002F7C8);
        sub_100022420();
        sub_10002230C(v198, v196 + v228, v243);
        swift_storeEnumTagMultiPayload();
        sub_1000225F8();
        sub_100001E9C(v244, v245, v246, v132);
        v247 = v359;
        sub_100015FF0(v359, &qword_100040F88, &qword_10002F760);
        sub_100022408();
        sub_10002230C(v196, v247, v248);
        v249 = v355;
        swift_storeEnumTagMultiPayload();
        sub_1000225F8();
        v253 = v249;
        goto LABEL_84;
      case 6u:
        v355 = v110;
        v140 = v109;
        sub_1000224B0();
        v141 = v358;
        sub_10002230C(v107, v358, v142);
        v143 = v353[7];
        sub_1000222AC(v141 + v143, v75, &qword_100041030, &qword_10002F800);
        v144 = v357;
        v145 = sub_1000020C8(v75, 1, v357);
        sub_100015FF0(v75, &qword_100041030, &qword_10002F800);
        v146 = v359;
        v147 = v352;
        v148 = v350;
        if (v145 == 1)
        {
          goto LABEL_43;
        }

        v149 = v332;
        sub_1000222AC(v141 + v143, v332, &qword_100041030, &qword_10002F800);
        v150 = sub_100022604();
        sub_100018854(v150, v151, v144);
        if (v113)
        {
          v199 = v340;
          *v340 = 0;
          v152 = v199 + v144[5];
          sub_10002C908();
          v153 = v144[6];
          type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute(0);
          sub_10002251C();
          sub_100001E9C(v154, v155, v156, v157);
          v158 = v144[7];
          sub_10002251C();
          sub_100001E9C(v159, v160, v161, v147);
          v162 = sub_100022604();
          sub_100018854(v162, v163, v144);
          if (!v113)
          {
            sub_100015FF0(v149, &qword_100041030, &qword_10002F800);
          }
        }

        else
        {
          sub_100022480();
          v199 = v340;
          sub_10002230C(v149, v340, v200);
        }

        v201 = v333;
        sub_1000222AC(v199 + v144[7], v333, &qword_100041040, &qword_10002F810);
        sub_10002236C(v199, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponent);
        v202 = sub_1000020C8(v201, 1, v147);
        v203 = sub_10002261C();
        sub_100015FF0(v203, v204, &qword_10002F810);
        v141 = v358;
        if (v202 == 1)
        {
LABEL_43:
          sub_100022468();
          v192 = v141;
LABEL_44:
          sub_10002236C(v192, v191);
          v123 = 0;
          goto LABEL_85;
        }

        v205 = v331;
        sub_1000222AC(v146, v331, &qword_100040F88, &qword_10002F760);
        v206 = sub_100022604();
        sub_100018854(v206, v207, v355);
        if (v113)
        {
          sub_100015FF0(v205, &qword_100040F88, &qword_10002F760);
          v208 = v329;
          v209 = v336;
          v210 = v328;
          v211 = v353;
        }

        else
        {
          sub_100022610();
          v254 = swift_getEnumCaseMultiPayload();
          v208 = v329;
          v209 = v336;
          v210 = v328;
          v211 = v353;
          if (v254 == 6)
          {
            sub_1000224B0();
            sub_10002230C(v255, v209, v256);
            goto LABEL_75;
          }

          sub_1000223C4();
          sub_10002236C(v280, v281);
        }

        *v209 = xmmword_10002DAB0;
        v282 = v211[5];
        type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext.OneOf_ContextEvent(0);
        sub_10002251C();
        sub_100001E9C(v283, v284, v285, v286);
        v287 = v209 + v211[6];
        sub_10002C908();
        v288 = v211[7];
        sub_10002251C();
        sub_100001E9C(v289, v290, v291, v144);
LABEL_75:
        v292 = v211[7];
        sub_1000222AC(v209 + v292, v210, &qword_100041030, &qword_10002F800);
        v293 = sub_100022684();
        sub_100018854(v293, v294, v144);
        if (v113)
        {
          *v208 = 0;
          v295 = v208 + v144[5];
          sub_10002C908();
          v296 = v144[6];
          type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentAttribute(0);
          sub_10002251C();
          sub_100001E9C(v297, v298, v299, v300);
          v301 = v144[7];
          sub_10002251C();
          sub_100001E9C(v302, v303, v304, v147);
          v305 = sub_100022684();
          sub_100018854(v305, v306, v144);
          v308 = v330;
          if (!v113)
          {
            sub_100015FF0(v210, &qword_100041030, &qword_10002F800);
          }
        }

        else
        {
          sub_100022480();
          sub_10002230C(v210, v208, v307);
          v308 = v330;
        }

        v309 = v144[7];
        sub_1000222AC(v208 + v309, v148, &qword_100041040, &qword_10002F810);
        sub_100018854(v148, 1, v147);
        if (v113)
        {
          *v308 = 0;
          v308[1] = 0xE000000000000000;
          v308[2] = 0;
          v310 = v308 + *(v147 + 24);
          sub_10002C908();
          sub_100022468();
          sub_10002236C(v358, v311);
          sub_100018854(v148, 1, v147);
          if (!v113)
          {
            sub_100015FF0(v148, &qword_100041040, &qword_10002F810);
          }
        }

        else
        {
          sub_100022468();
          sub_10002236C(v358, v312);
          sub_100022564();
          sub_10002230C(v148, v308, v313);
        }

        v314 = v308[1];

        *v308 = 0;
        v308[1] = 0xE000000000000000;
        sub_100015FF0(v208 + v309, &qword_100041040, &qword_10002F810);
        sub_100022564();
        sub_10002230C(v308, v208 + v309, v315);
        v123 = 1;
        sub_1000225F8();
        sub_100001E9C(v316, v317, v318, v147);
        v319 = v336;
        sub_100015FF0(v336 + v292, &qword_100041030, &qword_10002F800);
        sub_100022480();
        sub_10002230C(v208, v319 + v292, v320);
        sub_1000225F8();
        sub_100001E9C(v321, v322, v323, v144);
        sub_100015FF0(v146, &qword_100040F88, &qword_10002F760);
        sub_1000224B0();
        sub_10002230C(v319, v146, v324);
        v325 = v355;
        swift_storeEnumTagMultiPayload();
        sub_1000225F8();
        v253 = v325;
LABEL_84:
        sub_100001E9C(v250, v251, v252, v253);
LABEL_85:
        v109 = v140;
        break;
      case 7u:
        v164 = v110;
        v165 = v109;
        sub_100022450();
        v166 = v349;
        sub_10002230C(v107, v349, v167);
        v168 = v346;
        sub_1000222AC(v166 + v355[8], v346, &qword_100041068, &qword_10002F838);
        v169 = v351;
        v170 = sub_1000020C8(v168, 1, v351);
        sub_100015FF0(v168, &qword_100041068, &qword_10002F838);
        if (v170 == 1)
        {
          sub_1000224C8();
          v123 = 0;
          goto LABEL_73;
        }

        v174 = v359;
        sub_1000222AC(v359, v97, &qword_100040F88, &qword_10002F760);
        sub_100018854(v97, 1, v110);
        if (v113)
        {
          sub_100015FF0(v97, &qword_100040F88, &qword_10002F760);
          v175 = v357;
          v177 = v341;
          v176 = v342;
          v178 = v355;
        }

        else
        {
          v212 = swift_getEnumCaseMultiPayload();
          v175 = v357;
          v177 = v341;
          v176 = v342;
          v178 = v355;
          if (v212 == 7)
          {
            sub_100022450();
            sub_10002230C(v97, v176, v213);
            goto LABEL_68;
          }

          sub_1000223C4();
          sub_10002236C(v97, v257);
        }

        *v176 = xmmword_10002DAB0;
        *(v176 + 16) = 0;
        *(v176 + 24) = 1;
        v258 = v176 + v178[6];
        sub_10002C908();
        v259 = v178[7];
        sub_10002251C();
        sub_100001E9C(v260, v261, v262, v175);
        v263 = v178[8];
        sub_10002251C();
        sub_100001E9C(v264, v265, v266, v169);
LABEL_68:
        v267 = v337;
        v268 = v178[8];
        sub_1000222AC(v176 + v268, v177, &qword_100041068, &qword_10002F838);
        v123 = 1;
        sub_100018854(v177, 1, v169);
        if (v113)
        {
          *v267 = 0;
          *(v267 + 8) = 0xE000000000000000;
          *(v267 + 16) = 0;
          *(v267 + 24) = 0;
          *(v267 + 32) = 1;
          v269 = v267 + *(v169 + 28);
          sub_10002C908();
          sub_1000224C8();
          sub_100018854(v177, 1, v169);
          if (!v113)
          {
            sub_100015FF0(v177, &qword_100041068, &qword_10002F838);
          }
        }

        else
        {
          sub_1000224C8();
          sub_100022594();
          sub_10002230C(v177, v267, v270);
        }

        v271 = *(v267 + 8);

        *v267 = 0;
        *(v267 + 8) = 0xE000000000000000;
        sub_100015FF0(v176 + v268, &qword_100041068, &qword_10002F838);
        sub_100022594();
        sub_10002230C(v267, v176 + v268, v272);
        sub_1000225F8();
        sub_100001E9C(v273, v274, v275, v169);
        sub_100015FF0(v174, &qword_100040F88, &qword_10002F760);
        sub_100022450();
        sub_10002230C(v176, v174, v276);
        swift_storeEnumTagMultiPayload();
        sub_1000225F8();
        sub_100001E9C(v277, v278, v279, v164);
LABEL_73:
        v109 = v165;
        break;
      default:
        v127 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType;
        v128 = v107;
LABEL_29:
        sub_10002236C(v128, v127);
        goto LABEL_30;
    }
  }

  sub_100015FF0(v109, &qword_100040F88, &qword_10002F760);
  return v123;
}

uint64_t sub_100022168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000221B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100022208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018638(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void *sub_100022268(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000222AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DE4(a3, a4);
  sub_100018638(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10002230C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018638(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10002236C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100018638(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000224C8()
{

  return sub_10002236C(v0, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected);
}

uint64_t sub_1000225C4()
{

  return sub_10002236C(v0, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext.OneOf_ContextEvent);
}

uint64_t sub_100022644()
{
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[22];
}

uint64_t sub_10002266C()
{
}

uint64_t sub_100022690()
{

  return swift_task_alloc();
}

uint64_t sub_1000226A8()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_10002294C(0xD000000000000011, 0x8000000100033290);
  if (!v3)
  {
    v3 = [objc_opt_self() standardUserDefaults];
  }

  v4 = v3;
  sub_100001DE4(&qword_1000425D0, &qword_100031608);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *(v1 + 16) = v5;
  return v1;
}

void sub_100022750(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_10002CBB8();
  v5 = [v3 stringForKey:v4];

  if (v5)
  {
    v6 = sub_10002CBC8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_1000227E8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_10002292C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_100022840(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = sub_10002CBB8();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_10002CBB8();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

uint64_t sub_1000228D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_10002292C(void **a1)
{
  v2 = v1[4];
  v3 = v1[5];
  sub_100022840(a1, v1[2], v1[3]);
}

id sub_10002294C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10002CBB8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_1000229B0()
{
  v1 = v0;
  sub_100022EC8(0, &qword_100042678, RBSDomainAttribute_ptr);
  v2 = sub_100022C88();
  v3 = [objc_opt_self() currentProcess];
  sub_100001DE4(&qword_100042680, &qword_100031678);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100031630;
  *(v4 + 32) = v2;
  objc_allocWithZone(RBSAssertion);
  v5 = v2;
  v6 = sub_100022DB8(0xD000000000000014, 0x8000000100033330, v3);
  *(v1 + 16) = v6;
  v16 = 0;
  if ([v6 acquireWithError:&v16])
  {
    v7 = v16;
  }

  else
  {
    v8 = v16;
    sub_10002C768();

    swift_willThrow();
    if (qword_100040A00 != -1)
    {
      swift_once();
    }

    v9 = sub_10002CB68();
    sub_10000219C(v9, qword_100049B40);
    swift_errorRetain();
    v10 = sub_10002CB48();
    v11 = sub_10002CDD8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error acquiring write assertion: %@", v12, 0xCu);
      sub_100022E60(v13);
    }

    else
    {
    }
  }

  return v1;
}

id sub_100022C88()
{
  v0 = sub_10002CBB8();

  v1 = sub_10002CBB8();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

uint64_t sub_100022D1C()
{
  if ([*(v0 + 16) isValid])
  {
    [*(v0 + 16) invalidate];
  }

  return v0;
}

uint64_t sub_100022D60()
{
  sub_100022D1C();

  return _swift_deallocClassInstance(v0, 24, 7);
}

id sub_100022DB8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10002CBB8();

  sub_100022EC8(0, &qword_100042688, RBSAttribute_ptr);
  isa = sub_10002CC48().super.isa;

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:isa];

  return v7;
}

uint64_t sub_100022E60(uint64_t a1)
{
  v2 = sub_100001DE4(&qword_100042508, &unk_100031680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022EC8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100022F08()
{
  v1 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002309C(v0, v4);
  v5 = 0x656C626967696C65;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v5 = 0xD000000000000010;
      break;
    case 2u:
      sub_10002315C();
      v5 = v7 | 1;
      break;
    case 3u:
      break;
    case 4u:
      v5 = 0x5565676170626577;
      break;
    case 5u:
      sub_10002315C();
      v5 = v9 | 4;
      break;
    case 6u:
      sub_10002315C();
      v5 = v10 + 18;
      break;
    case 7u:
      sub_10002315C();
      v5 = v8 | 7;
      break;
    default:
      sub_10002315C();
      v5 = v6 | 2;
      break;
  }

  sub_100023100(v4);
  return v5;
}

uint64_t sub_10002309C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023100(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100023170@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload.OneOf_EventType(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002309C(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext(0);
      v9 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_DimensionContext;
      break;
    case 2u:
      v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed(0);
      v9 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_BloomFilterPassed;
      break;
    case 3u:
      v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible(0);
      v9 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_Eligible;
      break;
    case 4u:
      v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent(0);
      v9 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageUrlSent;
      break;
    case 5u:
      v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext(0);
      v9 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_ServerRequestContext;
      break;
    case 6u:
      v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext(0);
      v9 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_VisualComponentPresentationContext;
      break;
    case 7u:
      v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected(0);
      v9 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_UserInteractionDetected;
      break;
    default:
      v8 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted(0);
      v9 = type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_WebpageViewStarted;
      break;
  }

  v10 = v9;
  a1[3] = v8;
  v11 = sub_100023344(a1);
  return sub_1000233A4(v7, v11, v10);
}

uint64_t *sub_100023344(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1000233A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002340C()
{
  v0 = sub_100001DE4(&qword_100040B70, &qword_100031C30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v40 - v2;
  v41 = sub_10002C828();
  v4 = sub_100023968(v41);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100018660();
  v11 = v10 - v9;
  v12 = sub_100001DE4(&qword_100042690, &qword_100031728);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v40 - v14;
  v16 = sub_10002C888();
  v17 = sub_100023968(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100018660();
  v24 = v23 - v22;
  v40 = sub_10002C758();
  v25 = sub_100023968(v40);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_100018660();
  v32 = v31 - v30;
  if (qword_1000409F8 != -1)
  {
    swift_once();
  }

  v33 = sub_10002C868();
  sub_10000219C(v33, qword_100049B28);
  sub_10002C878();
  result = sub_1000020C8(v15, 1, v16);
  if (result == 1)
  {
    goto LABEL_14;
  }

  (*(v19 + 32))(v24, v15, v16);
  sub_10002C7B8();
  sub_10002C858();
  v35 = *(v6 + 8);
  v36 = v11;
  v37 = v41;
  v35(v36, v41);
  (*(v19 + 8))(v24, v16);
  sub_10002C748();
  sub_10002C728();
  sub_10002C738();
  if (sub_1000020C8(v3, 1, v37) == 1)
  {
    (*(v27 + 8))(v32, v40);
    result = sub_100023900(v3);
    v38 = 0.0;
  }

  else
  {
    sub_10002C7C8();
    v38 = v39;
    (*(v27 + 8))(v32, v40);
    result = (v35)(v3, v37);
  }

  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v38 > -1.0)
  {
    if (v38 < 1.84467441e19)
    {
      return v38;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000237E0()
{
  v0 = sub_10002C838();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002C868();
  sub_100015648(v5, qword_100049B28);
  sub_10000219C(v5, qword_100049B28);
  (*(v1 + 104))(v4, enum case for Calendar.Identifier.gregorian(_:), v0);
  sub_10002C848();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100023900(uint64_t a1)
{
  v2 = sub_100001DE4(&qword_100040B70, &qword_100031C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002397C(char a1)
{
  sub_100023C78();
  sub_10002CB88();
  sub_10002CD38();
  sub_100024968();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002495C();
  sub_100024780(v1, 0x6E6F697461727564, 0xE800000000000000, v3);
  sub_10002C8E8();
  sub_10002CE08();
  sub_100024968();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002495C();
  sub_100024780(v1, 0x726574706F6461, 0xE700000000000000, v4);
  sub_10002CE08();
  sub_100024968();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002495C();
  sub_100024780(v1, 1701869940, 0xE400000000000000, v5);
  v6 = qword_100031738[a1];
  isa = sub_10002CE08().super.super.isa;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002495C();
  sub_100024780(isa, 0x656D6F6374756FLL, 0xE700000000000000, v8);
  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  sub_10002CC18(v11);
  v12._countAndFlagsBits = 0x656372756F736572;
  v12._object = 0xEE00737365636341;
  sub_10002CC18(v12);
  sub_10002CBB8();
  sub_100024968();

  v9 = sub_10002CB78().super.isa;
  AnalyticsSendEvent();
}

uint64_t sub_100023C00(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002CB68();
  sub_100015648(v3, a2);
  sub_10000219C(v3, a2);
  return sub_10002CB58();
}

unint64_t sub_100023C78()
{
  result = qword_100042698;
  if (!qword_100042698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100042698);
  }

  return result;
}

uint64_t sub_100023CBC@<X0>(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      result = sub_100023E38(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        break;
      }

      goto LABEL_14;
    case 3uLL:
      if (!__s1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
        JUMPOUT(0x100023E28);
      }

      result = 1;
      break;
    default:
      __s2 = a2;
      v11 = a3;
      v12 = BYTE2(a3);
      v13 = BYTE3(a3);
      v14 = BYTE4(a3);
      v15 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      break;
  }

  *a4 = result & 1;
  return result;
}

uint64_t sub_100023E38(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_10002C6F8();
  v8 = result;
  if (result)
  {
    result = sub_10002C718();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_10002C708();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_100023F1C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  sub_10002CF88();
  a3(v12, a1, a2);
  v9 = sub_10002CFA8();

  return a4(a1, a2, v9);
}

unint64_t sub_100023FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10002CF08() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100024064(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v10 = ~v5;
    v11 = a2 >> 62;
    if (a1)
    {
      v12 = 0;
    }

    else
    {
      v12 = a2 == 0xC000000000000000;
    }

    v13 = !v12;
    v65 = v13;
    v56 = HIDWORD(a1);
    v14 = HIDWORD(a1) == a1;
    v15 = __OFSUB__(HIDWORD(a1), a1);
    v61 = v15;
    v60 = HIDWORD(a1) - a1;
    v16 = BYTE6(a2);
    v57 = a1;
    v58 = v3 + 64;
    v55 = a1 >> 32;
    v54 = (a1 >> 32) - a1;
    v62 = ~v5;
    v63 = BYTE6(a2);
    v64 = a2 >> 62;
    while (1)
    {
      v17 = (*(v7 + 48) + 16 * v6);
      v19 = *v17;
      v18 = v17[1];
      v20 = v18 >> 62;
      if (v14)
      {
        if (v19)
        {
          v21 = 0;
          v14 = 0;
        }

        else
        {
          v21 = v18 >= 0xC000000000000000;
          v14 = v18 == 0xC000000000000000;
        }

        v22 = !v21;
        if (((v22 | v65) & 1) == 0)
        {
          return v6;
        }

        v23 = 0;
      }

      else
      {
        v23 = 0;
        switch(v20)
        {
          case 0uLL:
            v23 = BYTE6(v18);
            break;
          case 1uLL:
            LODWORD(v23) = HIDWORD(v19) - v19;
            v14 = HIDWORD(v19) == v19;
            if (__OFSUB__(HIDWORD(v19), v19))
            {
              goto LABEL_89;
            }

            v23 = v23;
            break;
          case 2uLL:
            v25 = *(v19 + 16);
            v24 = *(v19 + 24);
            v26 = __OFSUB__(v24, v25);
            v23 = v24 - v25;
            v14 = v23 == 0;
            if (!v26)
            {
              break;
            }

            goto LABEL_88;
          case 3uLL:
            break;
          default:
LABEL_105:
            JUMPOUT(0);
        }
      }

      v27 = v16;
      switch(v11)
      {
        case 0uLL:
          goto LABEL_31;
        case 1uLL:
          v27 = v60;
          if (!v61)
          {
            goto LABEL_31;
          }

          __break(1u);
          goto LABEL_87;
        case 2uLL:
          v29 = *(a1 + 16);
          v28 = *(a1 + 24);
          v26 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v26)
          {
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
          }

LABEL_31:
          v14 = v23 == v27;
          if (v23 != v27)
          {
            goto LABEL_85;
          }

          if (v23 < 1)
          {
            return v6;
          }

          break;
        case 3uLL:
          if (!v23)
          {
            return v6;
          }

          goto LABEL_85;
        default:
          goto LABEL_105;
      }

      switch(v20)
      {
        case 1:
          if (v19 >> 32 < v19)
          {
            goto LABEL_90;
          }

          sub_100016394(a1, a2);
          sub_100016394(a1, a2);
          sub_100016394(a1, a2);
          sub_100016394(v19, v18);
          v35 = sub_10002C6F8();
          if (!v35)
          {
            goto LABEL_65;
          }

          v40 = sub_10002C718();
          if (__OFSUB__(v19, v40))
          {
            goto LABEL_93;
          }

          v35 += v19 - v40;
LABEL_65:
          sub_10002C708();
          sub_100023CBC(v35, a1, a2, __s1);
          sub_1000221B0(a1, a2);
          sub_1000221B0(v19, v18);
          sub_1000221B0(a1, a2);
          v41 = __s1[0];
          sub_1000221B0(a1, a2);
          v4 = v58;
          v7 = v59;
          v10 = v62;
          v16 = v63;
          v11 = v64;
          if (v41)
          {
            return v6;
          }

          goto LABEL_85;
        case 2:
          v33 = *(v19 + 16);
          v34 = *(v19 + 24);
          sub_100016394(a1, a2);
          sub_100016394(a1, a2);
          sub_100016394(a1, a2);
          sub_100016394(v19, v18);
          v35 = sub_10002C6F8();
          if (!v35)
          {
            goto LABEL_47;
          }

          v36 = sub_10002C718();
          if (__OFSUB__(v33, v36))
          {
            goto LABEL_92;
          }

          v35 += v33 - v36;
LABEL_47:
          if (!__OFSUB__(v34, v33))
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        case 3:
          memset(__s1, 0, 14);
          if (v11 == 2)
          {
            v43 = *(a1 + 16);
            v44 = *(a1 + 24);
            sub_100016394(a1, a2);
            sub_100016394(v19, v18);
            v45 = sub_10002C6F8();
            if (v45)
            {
              v46 = sub_10002C718();
              if (__OFSUB__(v43, v46))
              {
                goto LABEL_98;
              }

              v45 += v43 - v46;
            }

            v26 = __OFSUB__(v44, v43);
            v47 = v44 - v43;
            if (v26)
            {
              goto LABEL_96;
            }

            v48 = sub_10002C708();
            v7 = v59;
            if (!v45)
            {
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
              sub_1000221B0(a1, a2);
              sub_1000221B0(a1, a2);

              __break(1u);
              JUMPOUT(0x100024750);
            }

LABEL_80:
            if (v48 >= v47)
            {
              v52 = v47;
            }

            else
            {
              v52 = v48;
            }

            v39 = memcmp(__s1, v45, v52);
            sub_1000221B0(v19, v18);
            sub_1000221B0(a1, a2);
            v4 = v58;
LABEL_84:
            v10 = v62;
            v16 = v63;
            v11 = v64;
            if (!v39)
            {
              return v6;
            }

            goto LABEL_85;
          }

          if (v11 == 1)
          {
            if (v55 < v57)
            {
              goto LABEL_95;
            }

            sub_100016394(a1, a2);
            sub_100016394(v19, v18);
            v30 = sub_10002C6F8();
            if (v30)
            {
              v37 = sub_10002C718();
              if (__OFSUB__(v57, v37))
              {
                goto LABEL_100;
              }

              v30 += v57 - v37;
            }

            v32 = sub_10002C708();
            if (!v30)
            {
              goto LABEL_103;
            }

LABEL_57:
            if (v32 >= v54)
            {
              v38 = v54;
            }

            else
            {
              v38 = v32;
            }

            v39 = memcmp(__s1, v30, v38);
            sub_1000221B0(v19, v18);
            sub_1000221B0(a1, a2);
            goto LABEL_84;
          }

LABEL_67:
          __s2 = a1;
          v67 = BYTE2(a1);
          v68 = BYTE3(a1);
          v69 = v56;
          v70 = BYTE5(a1);
          v71 = BYTE6(a1);
          v72 = HIBYTE(a1);
          v73 = a2;
          v74 = BYTE2(a2);
          v75 = BYTE3(a2);
          v76 = BYTE4(a2);
          v77 = BYTE5(a2);
          v42 = memcmp(__s1, &__s2, v16);
          v16 = v63;
          v11 = v64;
          if (!v42)
          {
            return v6;
          }

LABEL_85:
          v6 = (v6 + 1) & v10;
          if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
          {
            return v6;
          }

          break;
        default:
          __s1[0] = v19;
          LOWORD(__s1[1]) = v18;
          BYTE2(__s1[1]) = BYTE2(v18);
          BYTE3(__s1[1]) = BYTE3(v18);
          BYTE4(__s1[1]) = BYTE4(v18);
          BYTE5(__s1[1]) = BYTE5(v18);
          if (!v11)
          {
            goto LABEL_67;
          }

          if (v11 == 1)
          {
            if (v55 < v57)
            {
              goto LABEL_94;
            }

            sub_100016394(a1, a2);
            sub_100016394(v19, v18);
            v30 = sub_10002C6F8();
            if (v30)
            {
              v31 = sub_10002C718();
              if (__OFSUB__(v57, v31))
              {
                goto LABEL_101;
              }

              v30 += v57 - v31;
            }

            v32 = sub_10002C708();
            if (!v30)
            {
              goto LABEL_102;
            }

            goto LABEL_57;
          }

          v49 = *(a1 + 16);
          v50 = *(a1 + 24);
          sub_100016394(a1, a2);
          sub_100016394(v19, v18);
          v45 = sub_10002C6F8();
          if (v45)
          {
            v51 = sub_10002C718();
            if (__OFSUB__(v49, v51))
            {
              goto LABEL_99;
            }

            v45 += v49 - v51;
          }

          v26 = __OFSUB__(v50, v49);
          v47 = v50 - v49;
          if (v26)
          {
            goto LABEL_97;
          }

          v48 = sub_10002C708();
          v7 = v59;
          if (!v45)
          {
            goto LABEL_104;
          }

          goto LABEL_80;
      }
    }
  }

  return v6;
}

void sub_100024780(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100023F1C(a2, a3, &String.hash(into:), sub_100023FB0);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100001DE4(&qword_1000426A0, &qword_100031730);
  if (!sub_10002CE68(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100023F1C(a2, a3, &String.hash(into:), sub_100023FB0);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    sub_10002CF28();
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    sub_10002490C(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_10002490C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100024990()
{
  sub_10001C284();
  if (!sub_100024A00())
  {
    objc_allocWithZone(sub_10002C8B8());
    sub_10002C8A8();
  }

  sub_10002977C();

  return v0();
}

uint64_t sub_100024A00()
{
  v0 = objc_opt_self();
  v1 = sub_10002CBB8();
  v2 = [v0 allowSubmissionForBundleID:v1 isDPG:1];

  if (v2)
  {
    v3 = sub_10002CBB8();
    v4 = [v0 allowDPGBundleID:v3];

    if (v4)
    {
      return 0;
    }
  }

  v6 = objc_allocWithZone(sub_10002C8B8());
  return sub_10002C8A8();
}

uint64_t sub_100024AD0()
{
  sub_10001C284();
  v0[17] = v1;
  v2 = sub_10002C828();
  v0[18] = v2;
  v3 = *(v2 - 8);
  sub_10002986C();
  v0[19] = v4;
  v6 = *(v5 + 64) + 15;
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_100024B94, 0, 0);
}

uint64_t sub_100024B94()
{
  sub_1000299B4();
  v28 = v0;
  v1 = sub_100024A00();
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);

    sub_10002977C();

    return v5(v2);
  }

  else
  {
    if (qword_100040A00 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 136);
    v8 = sub_10002CB68();
    *(v0 + 176) = sub_10000219C(v8, qword_100049B40);
    v9 = v7;
    v10 = sub_10002CB48();
    LOBYTE(v7) = sub_10002CDB8();

    if (os_log_type_enabled(v10, v7))
    {
      v11 = *(v0 + 136);
      v12 = sub_100029988();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v11;
      *v13 = v11;
      v14 = v11;
      sub_1000298C0(&_mh_execute_header, v15, v16, "Context: %@");
      sub_100029580(v13, &qword_100042508, &unk_100031680);
      sub_100029788();
      sub_10002266C();
    }

    v17 = *(v0 + 168);

    sub_10002C818();
    v18 = type metadata accessor for DefaultsKVStorage();
    swift_allocObject();
    v19 = sub_1000226A8();
    *(v0 + 184) = v19;
    v20 = *(v19 + 16);
    v21 = swift_task_alloc();
    sub_1000296EC(v21);
    os_unfair_lock_lock((v20 + 24));
    sub_100028CB0((v20 + 16), v27);
    os_unfair_lock_unlock((v20 + 24));
    *(v0 + 192) = *v27;

    type metadata accessor for SBABiomeEventSource();
    swift_allocObject();
    v22 = sub_1000017A0();
    v23 = objc_allocWithZone(FLLogger);

    v24 = [v23 initWithPersistenceConfiguration:1];
    sub_100001DE4(&qword_1000426B8, &qword_100031C18);
    v25 = swift_allocObject();
    *(v0 + 208) = v25;
    *(v0 + 40) = v18;
    *(v0 + 48) = &off_10003DCF0;
    *(v0 + 16) = v19;
    *(v0 + 80) = sub_100028CCC();
    *(v0 + 88) = &off_10003DDA8;
    *(v0 + 56) = v24;
    *(v0 + 120) = &type metadata for TaskCancellationTracker;
    *(v0 + 128) = &off_10003DF58;
    swift_defaultActor_initialize();
    sub_100028D10((v0 + 56), v25 + 160);
    *(v25 + 112) = v22;
    sub_100028D10((v0 + 16), v25 + 120);
    sub_100028D10((v0 + 96), v25 + 200);
    v26 = swift_task_alloc();
    *(v0 + 216) = v26;
    *v26 = v0;
    v26[1] = sub_100024F04;

    return sub_100025998();
  }
}

uint64_t sub_100024F04()
{
  sub_10001C29C();
  v3 = v2;
  sub_10001C290();
  v5 = v4;
  sub_10001C254();
  *v6 = v5;
  v8 = *(v7 + 216);
  v9 = *v1;
  sub_10001C244();
  *v10 = v9;
  *(v5 + 224) = v0;

  if (v0)
  {
    v11 = sub_100025250;
  }

  else
  {
    v12 = *(v5 + 208);

    *(v5 + 232) = v3 & 1;
    v11 = sub_100025020;
  }

  return _swift_task_switch(v11, 0, 0);
}

void sub_100025020()
{
  sub_1000299B4();
  v32 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  sub_10002C808();
  sub_10002C7E8();
  v6 = *(v5 + 8);
  v7 = sub_100029830();
  v6(v7);
  sub_10002397C(98);
  if ((v1 & 1) == 0)
  {
    v14 = *(v0 + 224);
    v15 = *(*(v0 + 184) + 16);
    v16 = swift_task_alloc();
    sub_1000296EC(v16);
    os_unfair_lock_lock((v15 + 24));
    sub_100029664((v15 + 16), v31);
    os_unfair_lock_unlock((v15 + 24));
    if (v14)
    {
      return;
    }

    v17 = *(v0 + 200);
    v19 = v31[0];
    v18 = v31[1];

    if (v17)
    {
      if (v18)
      {
        if (*(v0 + 192) != v19 || *(v0 + 200) != v18)
        {
          sub_1000299E0();
        }

        goto LABEL_17;
      }

      v21 = *(v0 + 200);
    }

    else if (!v18)
    {
LABEL_17:
      v22 = *(v0 + 184);
      v23 = *(v0 + 168);
      v24 = *(v0 + 144);
      v25 = *(v0 + 152);
      v26 = objc_allocWithZone(sub_10002C8B8());
      v12 = sub_1000299C0();

      v27 = sub_100029860();
      v6(v27);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v8 = *(v0 + 200);
  v9 = *(v0 + 168);
  v10 = *(v0 + 144);

  v11 = objc_allocWithZone(sub_10002C8B8());
  v12 = sub_10002C8A8();

  v13 = sub_100029860();
  v6(v13);
LABEL_18:
  v29 = *(v0 + 160);
  v28 = *(v0 + 168);

  sub_10002977C();

  v30(v12);
}

uint64_t sub_100025250()
{
  sub_100029878();
  v40 = v0;
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[22];

  swift_errorRetain();
  v5 = sub_10002CB48();
  v6 = sub_10002CDD8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[28];
    sub_100029988();
    v8 = sub_10002996C();
    *v1 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v8 = v9;
    sub_100029914();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100029580(v8, &qword_100042508, &unk_100031680);
    sub_10002266C();
    sub_100029788();
  }

  v15 = v0[28];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[18];
  v19 = v0[19];

  sub_10002C808();
  sub_10002C7E8();
  v20 = *(v19 + 8);
  v20(v17, v18);
  sub_10002397C(99);

  v21 = *(v0[23] + 16);
  v22 = swift_task_alloc();
  sub_1000296EC(v22);
  os_unfair_lock_lock((v21 + 24));
  sub_100029664((v21 + 16), v39);
  os_unfair_lock_unlock((v21 + 24));
  v23 = v0[25];
  v25 = v39[0];
  v24 = v39[1];

  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!v24)
  {
    v27 = v0[25];
LABEL_14:

    goto LABEL_16;
  }

  if (v0[24] != v25 || v0[25] != v24)
  {
    sub_1000299E0();
  }

LABEL_16:
  v28 = v0[23];
  v29 = v0[21];
  v30 = v0[18];
  v31 = v0[19];
  v32 = objc_allocWithZone(sub_10002C8B8());
  v33 = sub_1000299C0();

  v34 = sub_100029860();
  (v20)(v34);
  v36 = v0[20];
  v35 = v0[21];

  sub_10002977C();

  return v37(v33);
}

uint64_t sub_1000254F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100029660;

  return sub_100024974();
}

uint64_t sub_100025580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100025614;

  return sub_100024AD0();
}

uint64_t sub_100025614()
{
  sub_10001C284();
  v2 = v1;
  sub_10001C290();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_10001C244();
  *v6 = v5;

  sub_10002977C();

  return v7(v2);
}

uint64_t sub_1000256FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100019044;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000257E0(uint64_t a1)
{
  v2 = sub_100025944();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100025888();
  sub_10002C898();
  return 0;
}

unint64_t sub_100025888()
{
  result = qword_1000426A8;
  if (!qword_1000426A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000426A8);
  }

  return result;
}

unint64_t sub_100025944()
{
  result = qword_1000426B0;
  if (!qword_1000426B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000426B0);
  }

  return result;
}

uint64_t sub_100025998()
{
  v1[27] = v0;
  v2 = sub_10002C828();
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();
  v5 = *(*(sub_100001DE4(&qword_100040B70, &qword_100031C30) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v6 = sub_10002CB68();
  v1[37] = v6;
  v7 = *(v6 - 8);
  v1[38] = v7;
  v8 = *(v7 + 64) + 15;
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_100025B28, v0, 0);
}

uint64_t sub_100025B28()
{
  if (qword_100040A08 != -1)
  {
    sub_1000296AC();
  }

  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 216);
  sub_10000219C(*(v0 + 296), qword_100049B58);
  v4 = sub_10002983C();
  v5(v4);
  sub_100029298(v3 + 120, v0 + 16);
  v6 = *(v0 + 40);
  v7 = sub_1000292FC(v0 + 16, v6);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 16))(v10, v7, v6);
  v11 = sub_100029440(0x6D6B6F6F42414253, 0xEB000000006B7261, *v10);
  *(v0 + 320) = v11;
  sub_1000023D0((v0 + 16));

  v12 = *(v11[2] + 16);
  os_unfair_lock_lock((v12 + 40));
  v13 = *(v12 + 24);
  *(v0 + 328) = v13;
  v14 = *(v12 + 32);
  *(v0 + 336) = v14;
  os_unfair_lock_unlock((v12 + 40));
  v15 = sub_10002CB48();
  v16 = sub_10002CDE8();
  if (sub_10002993C(v16))
  {
    v17 = sub_100029988();
    *v17 = 134349056;
    *(v17 + 4) = v13;
    sub_100029820();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    sub_100029788();
  }

  if (v13 <= 0.0)
  {
    v24 = 1;
  }

  else
  {
    v23 = *(v0 + 288);
    sub_10002C7B8();
    v24 = 0;
  }

  v26 = *(v0 + 280);
  v25 = *(v0 + 288);
  v28 = *(v0 + 216);
  v27 = *(v0 + 224);
  sub_100001E9C(v25, v24, 1, v27);
  sub_100001E9C(v26, 1, 1, v27);
  *(v0 + 344) = *(v28 + 112);
  v29 = sub_100029860();
  v31 = sub_100001AB4(v29, v30);
  *(v0 + 352) = v31;
  sub_100029580(v26, &qword_100040B70, &qword_100031C30);
  sub_100029580(v25, &qword_100040B70, &qword_100031C30);
  sub_100001BB4(v31, (v0 + 56));
  swift_task_alloc();
  sub_1000297F0();
  *(v0 + 360) = v32;
  *v32 = v33;
  v32[1] = sub_100025E0C;
  v34 = *(v0 + 216);

  return sub_100026CD4(v0 + 56, v14, v13);
}

uint64_t sub_100025E0C()
{
  sub_100029A2C();
  sub_1000297E4();
  v4 = v3;
  sub_100029924();
  v5 = v1;
  sub_10001C244();
  *v6 = v1;
  v7 = *(v1 + 360);
  *v6 = *v2;
  *(v1 + 368) = v0;

  sub_100029930();
  v9 = *(v8 + 216);
  if (!v0)
  {
    *(v5 + 456) = v4 & 1;
  }

  sub_1000023D0((v5 + 56));
  sub_100029A18();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100025F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000298E0();
  sub_100029878();
  v16 = *(v14 + 456);

  if (v16 == 1)
  {
    v17 = *(v14 + 336);
    v18 = *(v14 + 344);
    v19 = *(v14 + 312);
    v20 = *(v14 + 280);
    sub_10001C2A8(v20, -900.0, *(v14 + 328));
    v21 = sub_1000019B0(v20);
    *(v14 + 376) = v21;
    sub_100029580(v20, &qword_100040B70, &qword_100031C30);
    v22 = sub_10002CB48();
    v23 = sub_10002CDE8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Reading events for timing data", v24, 2u);
      sub_100029788();
    }

    v25 = *(v14 + 344);

    sub_100001BB4(v21, (v14 + 96));
    swift_task_alloc();
    sub_1000297F0();
    *(v14 + 384) = v26;
    *v26 = v27;
    v26[1] = sub_1000262D0;
    v28 = *(v14 + 216);
    sub_100029884();

    return sub_1000273CC(v29);
  }

  else
  {
    sub_100029710();

    v32 = *(v15 + 8);
    v33 = sub_100029830();
    v34(v33);

    sub_100029744();
    sub_100029884();

    return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_10002613C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000298E0();
  sub_100029878();
  v17 = *(v14 + 368);
  v18 = *(v14 + 312);

  sub_10002397C(106);
  swift_errorRetain();
  v19 = sub_10002CB48();
  v20 = sub_10002CDD8();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v14 + 368);
  if (v21)
  {
    sub_100029988();
    v23 = sub_10002996C();
    *v15 = 138412290;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v24;
    *v23 = v24;
    sub_100029820();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    sub_100029580(v23, &qword_100042508, &unk_100031680);
    sub_10002266C();
    sub_100029788();
  }

  else
  {
  }

  sub_100029710();

  v30 = *(v16 + 8);
  v31 = sub_100029830();
  v32(v31);

  sub_100029744();
  sub_100029884();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000262D0()
{
  sub_10001C29C();
  sub_100029924();
  sub_10001C244();
  *v3 = v1;
  v4 = v1[48];
  v5 = *v2;
  sub_10001C254();
  *v6 = v5;
  v1[49] = v7;
  v1[50] = v8;
  v1[51] = v9;
  v1[52] = v0;

  sub_1000023D0(v1 + 12);
  sub_100029930();
  v11 = *(v10 + 216);
  sub_100029908();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000263F4()
{
  sub_100029878();
  v61 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 312);

  v3 = sub_10002CB48();
  v4 = sub_10002CDE8();
  if (sub_10002993C(v4))
  {
    v5 = *(v0 + 408);
    v6 = *(v0 + 392);
    v7 = sub_100029A00();
    *v7 = 134349312;
    *(v7 + 4) = *(v6 + 16);

    *(v7 + 12) = 2050;
    *(v7 + 14) = v5;
    sub_100029914();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    sub_100029788();
  }

  else
  {
    v13 = *(v0 + 392);
  }

  v14 = *(v0 + 328);
  if (v14 >= *(v0 + 400))
  {
    v16 = 1;
  }

  else
  {
    v15 = *(v0 + 272);
    sub_10002C7B8();
    v16 = 0;
    v14 = *(v0 + 328);
  }

  v17 = 1;
  sub_100001E9C(*(v0 + 272), v16, 1, *(v0 + 224));
  if (v14 > 0.0)
  {
    v18 = *(v0 + 328);
    v19 = *(v0 + 264);
    sub_10002C7B8();
    v17 = 0;
  }

  v20 = *(v0 + 344);
  v21 = *(v0 + 312);
  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  v24 = *(v0 + 256);
  sub_100001E9C(v23, v17, 1, *(v0 + 224));
  v25 = sub_100001AB4(v23, v22);
  *(v0 + 424) = v25;
  sub_100029580(v23, &qword_100040B70, &qword_100031C30);
  sub_100001E2C(v22, v24);
  v26 = sub_10002CB48();
  v27 = sub_10002CDE8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 328);
    v29 = sub_100029A00();
    v60 = swift_slowAlloc();
    *v29 = 136446466;
    if (v28 <= 0.0)
    {
      v34 = 0;
      v36 = 0xE000000000000000;
    }

    else
    {
      v30 = *(v0 + 328);
      v31 = *(v0 + 232);
      v32 = *(v0 + 240);
      v33 = *(v0 + 224);
      sub_10002C7B8();
      v34 = sub_10002C7D8();
      v36 = v35;
      (*(v31 + 8))(v32, v33);
    }

    v39 = *(v0 + 248);
    v38 = *(v0 + 256);
    v40 = *(v0 + 224);
    v41 = sub_100028D28(v34, v36, &v60);

    *(v29 + 4) = v41;
    *(v29 + 12) = 2082;
    sub_100001E2C(v38, v39);
    v42 = sub_1000020C8(v39, 1, v40);
    v43 = *(v0 + 248);
    if (v42 == 1)
    {
      sub_100029580(*(v0 + 248), &qword_100040B70, &qword_100031C30);
      v44 = 0;
      v45 = 0xE000000000000000;
    }

    else
    {
      v46 = *(v0 + 224);
      v47 = *(v0 + 232);
      v48 = *(v0 + 248);
      v44 = sub_10002C7D8();
      v45 = v49;
      (*(v47 + 8))(v43, v46);
    }

    sub_100029580(*(v0 + 256), &qword_100040B70, &qword_100031C30);
    v50 = sub_100028D28(v44, v45, &v60);

    *(v29 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v26, v27, "Reading events to report in range [%{public}s ... %{public}s]", v29, 0x16u);
    swift_arrayDestroy();
    sub_10002266C();
    sub_100029788();
  }

  else
  {
    v37 = *(v0 + 256);

    sub_100029580(v37, &qword_100040B70, &qword_100031C30);
  }

  v51 = *(v0 + 344);
  v52 = *(v0 + 320);
  sub_100001BB4(v25, (v0 + 136));
  *(v0 + 200) = type metadata accessor for SBASyncedStreamPosition();
  *(v0 + 208) = &off_10003DE88;
  *(v0 + 176) = v52;

  swift_task_alloc();
  sub_1000297F0();
  *(v0 + 432) = v53;
  *v53 = v54;
  v53[1] = sub_100026914;
  v55 = *(v0 + 392);
  v56 = *(v0 + 336);
  v57 = *(v0 + 328);
  v58 = *(v0 + 216);

  return sub_100027A8C(v0 + 136, v56, v0 + 176, v55, v57);
}

uint64_t sub_100026824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000298E0();
  sub_100029878();

  v16 = *(v14 + 312);
  v15 = *(v14 + 320);
  v18 = *(v14 + 296);
  v17 = *(v14 + 304);
  v20 = *(v14 + 280);
  v19 = *(v14 + 288);
  v22 = *(v14 + 264);
  v21 = *(v14 + 272);
  v23 = *(v14 + 256);
  v37 = *(v14 + 248);
  v38 = *(v14 + 240);
  v39 = *(v14 + 416);
  v24 = sub_100029830();
  sub_10002C48C(v24);

  v25 = *(v17 + 8);
  v26 = sub_100029860();
  v27(v26);

  sub_10002977C();
  sub_100029884();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, a12, a13, a14);
}

uint64_t sub_100026914()
{
  sub_10001C29C();
  sub_10001C290();
  v3 = v2;
  sub_10001C254();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *(v5 + 392);
  v8 = *v1;
  sub_10001C244();
  *v9 = v8;
  v3[55] = v10;
  v3[56] = v0;

  sub_1000023D0(v3 + 17);

  if (v0)
  {
    v11 = v3[27];
    v12 = sub_100026BB8;
  }

  else
  {
    v13 = v3[27];
    sub_1000023D0(v3 + 22);
    v12 = sub_100026A54;
    v11 = v13;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100026A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000298E0();
  sub_100029878();
  v16 = v14[39];
  v17 = sub_10002CB48();
  v18 = sub_10002CDE8();
  if (sub_10002993C(v18))
  {
    v19 = v14[55];
    v20 = sub_100029988();
    *v20 = 134349056;
    *(v20 + 4) = v19;
    sub_1000298C0(&_mh_execute_header, v21, v22, "Exiting process after sending %{public}lu events.");
    sub_10002266C();
  }

  v23 = v14[55];
  v24 = v14[53];
  v25 = v14[51];
  v26 = v14[47];
  v27 = v14[34];

  if (v25)
  {
    v28 = 101;
  }

  else
  {
    v28 = 102;
  }

  if (v23)
  {
    v29 = 100;
  }

  else
  {
    v29 = v28;
  }

  sub_10002397C(v29);

  sub_100029580(v27, &qword_100040B70, &qword_100031C30);
  sub_100029710();

  v30 = *(v15 + 8);
  v31 = sub_100029830();
  v32(v31);

  sub_100029744();
  sub_100029884();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100026BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000298E0();
  sub_100029878();
  v15 = *(v14 + 424);
  v16 = *(v14 + 272);

  sub_100029580(v16, &qword_100040B70, &qword_100031C30);
  sub_1000023D0((v14 + 176));
  v18 = *(v14 + 312);
  v17 = *(v14 + 320);
  v20 = *(v14 + 296);
  v19 = *(v14 + 304);
  v22 = *(v14 + 280);
  v21 = *(v14 + 288);
  v24 = *(v14 + 264);
  v23 = *(v14 + 272);
  v25 = *(v14 + 256);
  v39 = *(v14 + 248);
  v40 = *(v14 + 240);
  v41 = *(v14 + 448);
  v26 = sub_100029830();
  sub_10002C48C(v26);

  v27 = *(v19 + 8);
  v28 = sub_100029860();
  v29(v28);

  sub_10002977C();
  sub_100029884();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, a12, a13, a14);
}

uint64_t sub_100026CD4(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a3;
  *(v4 + 24) = a1;
  v5 = sub_10002CB68();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100026D9C, v3, 0);
}

uint64_t sub_100026D9C()
{
  sub_1000297E4();
  if (qword_100040A08 != -1)
  {
    sub_1000296AC();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_10000219C(*(v0 + 56), qword_100049B58);
  v3 = sub_10002983C();
  v4(v3);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  sub_100029954(*(v0 + 24));
  sub_100029760();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  swift_task_alloc();
  sub_1000297F0();
  *(v0 + 96) = v8;
  *v8 = v9;
  sub_1000297A4(v8);
  sub_100029850();

  return v11();
}

uint64_t sub_100026ED0()
{
  sub_10001C29C();
  sub_100029924();
  sub_10001C254();
  *v4 = v3;
  v5 = *(v1 + 96);
  *v4 = *v2;
  *(v3 + 104) = v0;

  sub_100029930();
  v7 = *(v6 + 48);
  sub_100029908();

  return _swift_task_switch(v8, v9, v10);
}

void sub_100026FE4()
{
  sub_100029878();
  v1 = *(v0 + 16);
  if (!v1)
  {
    v9 = *(v0 + 72);
    sub_10002397C(103);
    v10 = sub_10002CB48();
    v11 = sub_10002CDE8();
    if (sub_10002993C(v11))
    {
      *swift_slowAlloc() = 0;
      sub_100029820();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      sub_100029788();
    }

    goto LABEL_24;
  }

  v2 = *(v0 + 80);
  v3 = objc_autoreleasePoolPush();
  [v1 timestamp];
  v5 = v4;
  objc_autoreleasePoolPop(v3);
  v6 = floor(v5 * 1000.0) / 1000.0;
  if (v2 <= v6)
  {
    v8 = *(v0 + 80);
    if (v8 != v6)
    {
      v46 = *(v0 + 32);
      if (v46 <= 0.0 || v6 > v46)
      {
        goto LABEL_21;
      }

      v7 = 0;
      *(v0 + 80) = v6;
      goto LABEL_28;
    }

    v17 = *(v0 + 88);
    v7 = v17 + 1;
    if (v17 == -1)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 80);
  }

  v18 = *(v0 + 32);
  v20 = v8 == v18 && v7 > *(v0 + 40);
  if (v18 <= 0.0 || v8 > v18 || v20)
  {
LABEL_21:
    v23 = *(v0 + 72);
    v10 = sub_10002CB48();
    v24 = sub_10002CDE8();
    if (sub_10002993C(v24))
    {
      *swift_slowAlloc() = 0;
      sub_100029820();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      sub_100029788();
    }

LABEL_24:
    v31 = *(v0 + 64);
    v30 = *(v0 + 72);
    v32 = *(v0 + 56);
    v33 = *(v0 + 24);

    v34 = v33[3];
    v35 = v33[4];
    sub_100022268(v33, v34);
    (*(v35 + 24))(v34, v35);
    v36 = *(v31 + 8);
    v37 = sub_100029860();
    v38(v37);

    sub_10002977C();

    v39(v1 != 0);
    return;
  }

LABEL_28:
  *(v0 + 88) = v7;
  sub_100029954(*(v0 + 24));
  v40 = *(v7 + 16);
  sub_10002986C();
  v48 = (v41 + *v41);
  v43 = *(v42 + 4);
  swift_task_alloc();
  sub_1000297F0();
  *(v0 + 96) = v44;
  *v44 = v45;
  sub_1000297A4();

  v48(v0 + 16, v1, v7);
}

uint64_t sub_10002732C()
{
  sub_1000297E4();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = sub_10002967C(*(v0 + 24));
  v5(v4);
  v6 = *(v2 + 8);
  v7 = sub_100029830();
  v8(v7);

  sub_10002977C();
  v10 = *(v0 + 104);

  return v9(0);
}

uint64_t sub_1000273CC(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1000273EC, v1, 0);
}

uint64_t sub_1000273EC()
{
  sub_1000297E4();
  sub_1000295F8();
  v1 = sub_10002CB88();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = v1;
  sub_100029954(*(v0 + 32));
  sub_100029760();
  v8 = (v2 + *v2);
  v4 = *(v3 + 4);
  swift_task_alloc();
  sub_1000297F0();
  *(v0 + 72) = v5;
  *v5 = v6;
  sub_1000297C4(v5);
  sub_100029850();

  return v8();
}

uint64_t sub_100027500()
{
  sub_10001C29C();
  sub_100029924();
  sub_10001C254();
  *v4 = v3;
  v5 = *(v1 + 72);
  *v4 = *v2;
  *(v3 + 80) = v0;

  sub_100029930();
  v7 = *(v6 + 40);
  sub_100029908();

  return _swift_task_switch(v8, v9, v10);
}

void sub_100027614()
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    v11 = *(v1 + 64);
    v12 = *(v1 + 56);
    v13 = *(v1 + 48);
    goto LABEL_8;
  }

  v3 = *(v1 + 64);
  v4 = v3 + 1;
  if (v3 == -1)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v5 = *(v1 + 80);
  sub_10002CD18();
  if (v5)
  {

    v6 = *(v1 + 48);
    v7 = sub_10002967C(*(v1 + 32));
    v8(v7);

    sub_10001C278();
    sub_1000298A0();

    __asm { BRAA            X1, X16 }
  }

  v20 = *(*(v1 + 40) + 112);
  v21 = sub_100001C40(v2);
  if (v23 == 2)
  {

    goto LABEL_39;
  }

  v24 = v21;
  v0 = v22;
  v25 = v23;
  v26 = objc_autoreleasePoolPush();
  [v2 timestamp];
  v28 = v27;
  objc_autoreleasePoolPop(v26);
  v29 = *(v1 + 48);
  if ((v25 & 1) == 0)
  {
    if (!*(v29 + 16))
    {

      v54 = sub_1000298FC();
      sub_10002964C(v54, v55, v25);
      goto LABEL_39;
    }

    v44 = sub_1000298FC();
    sub_100023EF0(v44, v45);
    v47 = v46;
    v48 = sub_1000298FC();
    sub_10002964C(v48, v49, v25);

    if ((v47 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (*(v1 + 56) >= v28)
    {
      v28 = *(v1 + 56);
    }

LABEL_38:
    *(v1 + 56) = v28;
LABEL_39:
    *(v1 + 64) = v4;
    v61 = *(v1 + 32);
    v62 = v61[4];
    sub_100022268(v61, v61[3]);
    v63 = *(v62 + 16);
    sub_10002986C();
    v73 = v64 + *v64;
    v66 = *(v65 + 4);
    swift_task_alloc();
    sub_1000297F0();
    *(v1 + 72) = v67;
    *v67 = v68;
    sub_1000297C4();
    sub_1000299A0();
    sub_1000298A0();

    __asm { BRAA            X3, X16 }
  }

  v30 = *(v1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v29;
  v31 = sub_1000298FC();
  v71 = sub_100023EF0(v31, v32);
  v34 = *(v29 + 16);
  v35 = (v33 & 1) == 0;
  v36 = v34 + v35;
  if (__OFADD__(v34, v35))
  {
    goto LABEL_43;
  }

  v37 = v33;
  sub_100001DE4(&qword_1000426D8, &qword_100031C60);
  if (!sub_10002CE68(isUniquelyReferenced_nonNull_native, v36))
  {
    v41 = v71;
    goto LABEL_26;
  }

  v38 = *(v1 + 24);
  v39 = sub_1000298FC();
  v41 = sub_100023EF0(v39, v40);
  if ((v37 & 1) == (v42 & 1))
  {
LABEL_26:
    v50 = *(v1 + 24);
    if (v37)
    {
      *(v50[7] + 8 * v41) = v28;
      v51 = sub_1000298FC();
      sub_10002964C(v51, v52, v25);

      v53 = v50[2];
      goto LABEL_31;
    }

    v50[(v41 >> 6) + 8] |= 1 << v41;
    v56 = (v50[6] + 16 * v41);
    *v56 = v24;
    v56[1] = v0;
    *(v50[7] + 8 * v41) = v28;

    v57 = v50[2];
    v58 = __OFADD__(v57, 1);
    v53 = v57 + 1;
    if (!v58)
    {
      v50[2] = v53;
LABEL_31:
      v59 = *(v1 + 56);
      if (v59 >= v28 && v59 != 0.0)
      {
        v28 = *(v1 + 56);
      }

      if (v53 >> 4 < 0x271)
      {
        *(v1 + 48) = v50;
        goto LABEL_38;
      }

LABEL_8:
      sub_100029954(*(v1 + 32));
      v14 = *(v0 + 24);
      v15 = sub_100029830();
      v16(v15);
      v17 = *(v1 + 8);
      sub_1000298A0();

      __asm { BRAA            X3, X16 }
    }

LABEL_44:
    __break(1u);
    return;
  }

  sub_1000298A0();

  sub_10002CF28();
}

uint64_t sub_100027A0C()
{
  sub_100029A2C();
  sub_1000297E4();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = sub_10002967C(*(v0 + 32));
  v4(v3);

  sub_10001C278();
  sub_100029A18();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100027A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a5;
  *(v6 + 48) = a1;
  v7 = sub_10002CB68();
  *(v6 + 96) = v7;
  v8 = *(v7 - 8);
  *(v6 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100027B58, v5, 0);
}

uint64_t sub_100027B58()
{
  sub_1000297E4();
  if (qword_100040A08 != -1)
  {
    sub_1000296AC();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  sub_10000219C(*(v0 + 96), qword_100049B58);
  v3 = sub_10002983C();
  v4(v3);
  v5 = *(v0 + 56);
  *(v0 + 144) = *(v0 + 64);
  *(v0 + 136) = v5;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  sub_100029954(*(v0 + 48));
  sub_100029760();
  v12 = (v6 + *v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  sub_1000297F0();
  *(v0 + 184) = v9;
  *v9 = v10;
  sub_1000296CC(v9);
  sub_100029850();

  return v12();
}

uint64_t sub_100027CA8()
{
  sub_10001C29C();
  sub_100029924();
  sub_10001C254();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  sub_100029930();
  v7 = *(v6 + 88);
  sub_100029908();

  return _swift_task_switch(v8, v9, v10);
}

void sub_100027DBC()
{
  v63 = v0;
  v1 = *(v0 + 40);
  *(v0 + 200) = v1;
  if (!v1)
  {
    v8 = *(v0 + 48);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v9 = v8[4];
    sub_100022268(v8, v8[3]);
    v10 = *(v9 + 24);
    v11 = sub_100029860();
    v12(v11);

    sub_10002977C();
    v13 = *(v0 + 120);
    sub_1000297FC();

    __asm { BRAA            X2, X16 }
  }

  v2 = *(v0 + 192);
  sub_10002CD18();
  if (v2)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v3 = *(v0 + 112);
    v4 = sub_10002967C(*(v0 + 48));
    v5(v4);

    sub_10001C278();
    sub_1000297FC();

    __asm { BRAA            X1, X16 }
  }

  v16 = *(v0 + 176);
  type metadata accessor for SBAKeepAliveSignal();
  *(v0 + 208) = swift_initStackObject();
  *(v0 + 216) = sub_1000229B0();
  v17 = objc_autoreleasePoolPush();
  [v1 timestamp];
  v19 = v18;
  objc_autoreleasePoolPop(v17);
  v20 = floor(v19 * 1000.0);
  v21 = v20 / 1000.0;
  if (v16 <= v20 / 1000.0)
  {
    if (*(v0 + 176) != v21)
    {
      v23 = 0;
      v22 = 0;
      v50 = *(v0 + 136);
      v51 = v50 <= 0.0 || v50 < v21;
      v27 = v20 / 1000.0;
      if (v51)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    v24 = *(v0 + 168);
    v23 = v24 + 1;
    if (v24 == -1)
    {
      __break(1u);
      return;
    }

    v21 = *(v0 + 176);
    v22 = v24 + 1;
  }

  else
  {
    v22 = *(v0 + 168);
    v23 = *(v0 + 152);
    v21 = *(v0 + 176);
  }

  v25 = *(v0 + 136);
  if (v25 > 0.0 && v25 >= v21)
  {
    v27 = *(v0 + 160);
    if (v25 == v21 && *(v0 + 144) < v22)
    {
      goto LABEL_35;
    }

LABEL_25:
    v29 = *(v0 + 112);
    v30 = sub_10002CB48();
    v31 = sub_10002CDC8();
    if (sub_10002993C(v31))
    {
      v59 = *(v0 + 144);
      v32 = *(v0 + 136);
      v60 = v31;
      v33 = sub_100029A00();
      v62[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10001C3FC(v23);
      v36 = sub_100028D28(v34, v35, v62);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      v37 = sub_10001C3FC(v59);
      v39 = sub_100028D28(v37, v38, v62);

      *(v33 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v60, "Skipping - %s less than %s", v33, 0x16u);
      swift_arrayDestroy();
      sub_10002266C();
      sub_10002266C();
    }

    *(v0 + 176) = v21;
    *(v0 + 168) = v22;
    *(v0 + 160) = v27;
    *(v0 + 152) = v23;
    v40 = *(v0 + 48);
    v41 = v40[4];
    sub_100022268(v40, v40[3]);
    v42 = *(v41 + 16);
    sub_10002986C();
    v61 = v43 + *v43;
    v45 = *(v44 + 4);
    swift_task_alloc();
    sub_1000297F0();
    *(v0 + 184) = v46;
    *v46 = v47;
    sub_1000296CC();
    sub_1000299A0();
    sub_1000297FC();

    __asm { BRAA            X3, X16 }
  }

  v27 = *(v0 + 160);
LABEL_35:
  *(v0 + 248) = v22;
  *(v0 + 240) = v27;
  *(v0 + 232) = v23;
  *(v0 + 224) = v21;
  v52 = swift_task_alloc();
  *(v0 + 256) = v52;
  *v52 = v0;
  v52[1] = sub_100028308;
  v53 = *(v0 + 80);
  v54 = *(v0 + 88);
  sub_1000297FC();

  sub_100028694(v55, v56, v57);
}

uint64_t sub_100028270()
{
  sub_100029A2C();
  sub_1000297E4();
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v1 = *(v0 + 192);
  v2 = *(v0 + 112);
  v3 = sub_10002967C(*(v0 + 48));
  v4(v3);

  sub_10001C278();
  sub_100029A18();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100028308()
{
  sub_100029A2C();
  sub_1000297E4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_10001C244();
  *v6 = v5;
  v7 = *(v4 + 256);
  *v6 = *v1;
  *(v5 + 264) = v0;

  v8 = *(v4 + 88);
  if (!v0)
  {
    *(v5 + 272) = v3 & 1;
  }

  sub_100029908();
  sub_100029A18();

  return _swift_task_switch(v9, v10, v11);
}

void sub_100028430()
{
  sub_1000299B4();
  v1 = *(v0 + 128);
  if (*(v0 + 272))
  {
    v2 = v1 + 1;
    if (v1 == -1)
    {
      __break(1u);
      return;
    }

    ++v1;
  }

  else
  {
    v2 = *(v0 + 120);
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  v7 = *(v0 + 72);
  v8 = v7[3];
  v9 = v7[4];
  sub_100022268(v7, v8);
  (*(v9 + 16))(v4, v8, v9, v3);

  v10 = *(v0 + 248);
  v11 = *(v0 + 240);
  v12 = *(v0 + 232);
  v13 = *(v0 + 224);
  *(v0 + 136) = v11;
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;
  *(v0 + 176) = v13;
  *(v0 + 168) = v10;
  *(v0 + 160) = v11;
  *(v0 + 144) = v12;
  *(v0 + 152) = v12;
  sub_100029954(*(v0 + 48));
  v14 = *(v8 + 16);
  sub_10002986C();
  v20 = (v15 + *v15);
  v17 = *(v16 + 4);
  swift_task_alloc();
  sub_1000297F0();
  *(v0 + 184) = v18;
  *v18 = v19;
  sub_1000296CC();
  sub_100029850();

  v20();
}

uint64_t sub_1000285E4()
{
  sub_100029A2C();
  sub_1000297E4();
  v1 = *(v0 + 216);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);

  v5 = *(v3 + 8);
  v6 = sub_100029830();
  v7(v6);

  v8 = *(v0 + 264);
  v9 = *(v0 + 112);
  v10 = sub_10002967C(*(v0 + 48));
  v11(v10);

  sub_10001C278();
  sub_100029A18();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_100028694(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a3;
  *(v4 + 16) = a1;
  v5 = sub_10002CB68();
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_10002875C, v3, 0);
}

uint64_t sub_10002875C()
{
  sub_1000297E4();
  if (qword_100040A08 != -1)
  {
    sub_1000296AC();
  }

  v2 = *(v0 + 7);
  v1 = *(v0 + 8);
  v4 = *(v0 + 5);
  v3 = *(v0 + 6);
  v5 = *(v0 + 2);
  v6 = sub_10000219C(v3, qword_100049B58);
  (*(v2 + 16))(v1, v6, v3);
  v7 = *(v4 + 112);
  v8 = sub_100001D0C(v5);
  *(v0 + 9) = v8;
  *(v0 + 10) = v9;
  if (v9 >> 60 == 15)
  {
    v10 = *(v0 + 8);
    v11 = sub_10002CB48();
    v12 = sub_10002CDD8();
    if (sub_10002993C(v12))
    {
      v13 = *(v0 + 3);
      v14 = sub_100029988();
      *v14 = 134349056;
      *(v14 + 4) = v13;
      sub_1000298C0(&_mh_execute_header, v15, v16, "Event with no data found in stream at bookmark: %{public}f");
      sub_10002266C();
    }

    sub_10002397C(108);
    (*(*(v0 + 7) + 8))(*(v0 + 8), *(v0 + 6));

    sub_10002977C();

    return v17(0);
  }

  else
  {
    v19 = v8;
    v20 = v9;
    v21 = *(v0 + 5);
    v22 = v21[23];
    v23 = v21[24];
    sub_100022268(v21 + 20, v22);
    v24 = swift_task_alloc();
    *(v0 + 11) = v24;
    *v24 = v0;
    v24[1] = sub_100028968;
    v25 = *(v0 + 4);
    v26 = v0[3];

    return sub_10001FBC4(v19, v20, v25, v22, v23, v26);
  }
}

uint64_t sub_100028968()
{
  sub_100029A2C();
  sub_1000297E4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_10001C244();
  *v6 = v5;
  v7 = *(v4 + 88);
  *v6 = *v1;
  *(v5 + 96) = v0;

  v8 = *(v4 + 40);
  if (!v0)
  {
    *(v5 + 104) = v3 & 1;
  }

  sub_100029908();
  sub_100029A18();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100028A90()
{
  sub_10001C284();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_10002397C(105);
  sub_1000295E4(v1, v2);
  v3 = *(v0 + 104);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

  sub_10002977C();

  return v4(v3);
}

uint64_t sub_100028B2C()
{
  sub_1000299B4();
  v2 = v0[12];
  v3 = v0[8];
  sub_10002397C(107);
  swift_errorRetain();
  v4 = sub_10002CB48();
  v5 = sub_10002CDD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = v0[3];
    sub_100029A00();
    v8 = sub_10002996C();
    *v1 = 138412546;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v8 = v9;
    *(v1 + 12) = 2050;
    *(v1 + 14) = v7;
    sub_100029914();
    _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    sub_100029580(v8, &qword_100042508, &unk_100031680);
    sub_10002266C();
    sub_100029788();
  }

  v15 = v0[12];
  v17 = v0[9];
  v16 = v0[10];
  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[6];

  swift_willThrow();
  sub_1000295E4(v17, v16);
  (*(v19 + 8))(v18, v20);

  sub_10002977C();
  v22 = v0[12];

  return v21(0);
}

void sub_100028CB0(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_100022750(a1, a2);
}

unint64_t sub_100028CCC()
{
  result = qword_1000426C0;
  if (!qword_1000426C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000426C0);
  }

  return result;
}

uint64_t sub_100028D10(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100028D28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100028DEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10001BC18(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000023D0(v11);
  return v7;
}

unint64_t sub_100028DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100028EEC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_10002CE58();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100028EEC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100028F38(a1, a2);
  sub_100029050(&off_10003CE90);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100028F38(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10002CC28())
  {
    result = sub_100029134(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10002CE28();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_10002CE58();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100029050(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1000291A4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100029134(uint64_t a1, uint64_t a2)
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

  sub_100001DE4(&qword_1000426C8, &qword_100031C50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000291A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DE4(&qword_1000426C8, &qword_100031C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100029298(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000292FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_10002934C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = type metadata accessor for DefaultsKVStorage();
  v15 = &off_10003DCF0;
  v13[0] = a3;
  sub_100029298(v13, (a4 + 3));
  a4[8] = a1;
  a4[9] = a2;
  v8 = *(*sub_100022268(v13, v14) + 16);

  os_unfair_lock_lock((v8 + 24));
  sub_100029664((v8 + 16), v12);
  os_unfair_lock_unlock((v8 + 24));
  v9 = v12[0];
  v10 = v12[1];

  type metadata accessor for SBAAtomicStreamPosition();
  swift_allocObject();
  a4[2] = sub_10002B9D0(v9, v10);
  sub_1000023D0(v13);
  return a4;
}

void *sub_100029440(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v15[3] = v5;
  v15[4] = &off_10003DCF0;
  v15[0] = a3;
  type metadata accessor for SBASyncedStreamPosition();
  v6 = swift_allocObject();
  v7 = sub_1000292FC(v15, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v15[-1] - v9);
  (*(v11 + 16))(&v15[-1] - v9);
  v12 = sub_10002934C(a1, a2, *v10, v6);
  sub_1000023D0(v15);
  return v12;
}

uint64_t sub_100029580(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DE4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000295E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000221B0(a1, a2);
  }

  return a1;
}

unint64_t sub_1000295F8()
{
  result = qword_1000426D0;
  if (!qword_1000426D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000426D0);
  }

  return result;
}

uint64_t sub_10002964C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 2)
  {
    return sub_1000221B0(a1, a2);
  }

  return a1;
}

uint64_t sub_10002967C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_100022268(a1, v1);
  v3 = *(v2 + 24);
  return v1;
}

uint64_t sub_1000296AC()
{

  return swift_once();
}

uint64_t sub_1000296EC(uint64_t result)
{
  *(result + 16) = 0x6D6B6F6F42414253;
  *(result + 24) = 0xEB000000006B7261;
  return result;
}

void sub_100029710()
{
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  v11 = v0[30];
  v10 = v0[40];

  sub_10002C48C(v10);
}

uint64_t sub_100029760()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_100029788()
{
}

void sub_1000298C0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

BOOL sub_10002993C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_100029954(void *a1)
{
  v2 = a1[4];
  v3 = a1[3];

  return sub_100022268(a1, v3);
}

uint64_t sub_10002996C()
{

  return swift_slowAlloc();
}

uint64_t sub_100029988()
{

  return swift_slowAlloc();
}

uint64_t sub_1000299C0()
{

  return sub_10002C8A8();
}

uint64_t sub_1000299E0()
{

  return sub_10002CF08();
}

uint64_t sub_100029A00()
{

  return swift_slowAlloc();
}

uint64_t sub_100029A40()
{
  v1 = [v0 webpageViewStarted];
  if (!v1)
  {
    v1 = [v0 bloomFilterPassed];
    if (!v1)
    {
      v1 = [v0 dimensionContext];
      if (!v1)
      {
        v1 = [v0 eligible];
        if (!v1)
        {
          v1 = [v0 serverRequestContext];
          if (!v1)
          {
            v1 = [v0 userInteractionDetected];
            if (!v1)
            {
              v1 = [v0 visualComponentPresentationContext];
              if (!v1)
              {
                v1 = [v0 webpageUrlSent];
                if (!v1)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  v2 = v1;
  v3 = [v1 webpageViewIdentifier];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = sub_10002C7A8();

  return v5;
}

uint64_t sub_100029C38@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SafariBrowsingAssistantEvent() + 20);
  return sub_10002C908();
}

uint64_t sub_100029C78()
{
  v0 = sub_10002CB38();
  sub_100015648(v0, qword_100049BA0);
  sub_10000219C(v0, qword_100049BA0);
  sub_100001DE4(&qword_100040FD0, &qword_10002F7A8);
  v1 = (sub_100001DE4(&qword_100040FD8, &qword_10002F7B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002DB30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "safariBrowsingAssistantEvents";
  *(v5 + 8) = 29;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_10002CB18();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_10002CB28();
}

uint64_t sub_100029DE4()
{
  while (1)
  {
    result = sub_10002C978();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100029E4C();
    }
  }

  return result;
}

uint64_t sub_100029E4C()
{
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload(0);
  sub_10002A5C4(&qword_100040F68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload);
  return sub_10002CA08();
}

uint64_t sub_100029EEC()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload(0), sub_10002A5C4(&qword_100040F68, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload), result = sub_10002CAF8(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SafariBrowsingAssistantEvent() + 20);
    return sub_10002C8F8();
  }

  return result;
}

uint64_t sub_100029FD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1000156F0();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SafariBrowsingAssistantEvent() + 20);
  sub_10002C918();
  sub_10002A5C4(&qword_100040FE8, &type metadata accessor for UnknownStorage);
  return sub_10002CBA8() & 1;
}

Swift::Int sub_10002A084()
{
  sub_10002CF88();
  type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SafariBrowsingAssistantEvent();
  sub_10002A5C4(&qword_1000426E8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SafariBrowsingAssistantEvent);
  sub_10002CB98();
  return sub_10002CFA8();
}

uint64_t sub_10002A12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_10002C918();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10002A1A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_10002C918();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10002A244(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002A5C4(&qword_1000426F8, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SafariBrowsingAssistantEvent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10002A2C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100040A20 != -1)
  {
    swift_once();
  }

  v2 = sub_10002CB38();
  v3 = sub_10000219C(v2, qword_100049BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002A368(uint64_t a1)
{
  v2 = sub_10002A5C4(&qword_100042520, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SafariBrowsingAssistantEvent);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10002A3D8()
{
  sub_10002A5C4(&qword_100042520, type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SafariBrowsingAssistantEvent);

  return sub_10002CA78();
}

uint64_t type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SafariBrowsingAssistantEvent()
{
  result = qword_100042758;
  if (!qword_100042758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A5C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002A620(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10002C918();
    v9 = a1 + *(a3 + 20);

    return sub_1000020C8(v9, a2, v8);
  }
}

void *sub_10002A6BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10002C918();
    v8 = v5 + *(a4 + 20);

    return sub_100001E9C(v8, a2, a2, v7);
  }

  return result;
}

void sub_10002A73C()
{
  sub_10002A7C0();
  if (v0 <= 0x3F)
  {
    sub_10002C918();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002A7C0()
{
  if (!qword_100042768)
  {
    type metadata accessor for Com_Apple_Aiml_SafariBrowsingAssistant_SBAPayload(255);
    v0 = sub_10002CCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_100042768);
    }
  }
}

uint64_t sub_10002A818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return _swift_task_switch(sub_10002A840, 0, 0);
}

uint64_t sub_10002A840()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  isa = sub_10002C778().super.isa;
  v0[23] = isa;
  v7 = sub_10002CBB8();
  v0[24] = v7;
  v8 = sub_10002CBB8();
  v0[25] = v8;
  v0[2] = v0;
  v0[3] = sub_10002A9BC;
  v9 = swift_continuation_init();
  v0[17] = sub_100001DE4(&qword_100042798, &qword_100031E60);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002ABC0;
  v0[13] = &unk_10003DDB8;
  v0[14] = v9;
  [v1 reportDataPlatformBatchedEvent:isa forBundleID:v7 ofSchema:v8 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002A9BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_10002AB3C;
  }

  else
  {
    v3 = sub_10002AACC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002AACC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002AB3C()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_10002ABC0(uint64_t a1, void *a2)
{
  v3 = sub_100022268((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_10002AC30(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_10002AC30(uint64_t a1, uint64_t a2)
{
  sub_100001DE4(&qword_100042198, &qword_100030028);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_10002ACA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10002AD60;

  return sub_10002A818(a1, a2, a3, a4);
}

uint64_t sub_10002AD60()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002AE6C(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_10002CC08();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = v2[2];
  sub_10002B000(a1, a2);
  v9 = sub_100022268(v3 + 3, v3[6]);
  v10 = *(v8 + 16);
  os_unfair_lock_lock((v10 + 40));
  v11 = sub_10002C6E8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_10002C6D8();
  v21 = *(v10 + 16);
  v22 = *(v10 + 24);
  v23 = *(v10 + 32);
  sub_10002C004();
  v14 = sub_10002C6C8();
  v16 = v15;

  sub_10002CBF8();
  sub_10002CBE8();
  sub_1000221B0(v14, v16);
  os_unfair_lock_unlock((v10 + 40));
  v17 = v3[8];
  v18 = v3[9];
  v19 = *v9;
  sub_1000227E8();
}

void sub_10002B000(uint64_t a1, double a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 40));
  *(v5 + 24) = a2;
  *(v5 + 32) = a1;

  os_unfair_lock_unlock((v5 + 40));
}

void *sub_10002B054()
{
  v1 = v0[2];

  sub_1000023D0(v0 + 3);
  v2 = v0[9];

  return v0;
}

uint64_t sub_10002B084()
{
  sub_10002B054();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_10002B100(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002C828();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_10002CE38(26);

  strcpy(v10, "{timestamp: ");
  BYTE5(v10[1]) = 0;
  HIWORD(v10[1]) = -5120;
  sub_10002C7B8();
  sub_10001C604();
  v11._countAndFlagsBits = sub_10002CEE8();
  sub_10002CC18(v11);

  (*(v4 + 8))(v7, v3);
  v12._countAndFlagsBits = 0x3A7865646E69202CLL;
  v12._object = 0xE900000000000020;
  sub_10002CC18(v12);
  v9[1] = a2;
  v13._countAndFlagsBits = sub_10002CEE8();
  sub_10002CC18(v13);

  v14._countAndFlagsBits = 125;
  v14._object = 0xE100000000000000;
  sub_10002CC18(v14);
  return v10[0];
}

uint64_t sub_10002B2A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_10002CF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (sub_10002CF08() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_10002CF08();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int sub_10002B3F4(unsigned __int8 a1)
{
  sub_10002CF88();
  sub_10002CF98(a1);
  return sub_10002CFA8();
}

uint64_t sub_10002B448(char a1)
{
  if (!a1)
  {
    return 0x6E6F6973726576;
  }

  if (a1 == 1)
  {
    return 0x6D617473656D6974;
  }

  return 0x7865646E69;
}

Swift::Int sub_10002B4BC()
{
  v1 = *v0;
  sub_10002CF88();
  sub_10002CF98(v1);
  return sub_10002CFA8();
}

uint64_t sub_10002B508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002B2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002B550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002B3B4();
  *a1 = result;
  return result;
}

uint64_t sub_10002B578(uint64_t a1)
{
  v2 = sub_10002C058();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B5B4(uint64_t a1)
{
  v2 = sub_10002C058();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002B5F0(void *a1)
{
  v3 = sub_100001DE4(&qword_100042908, &qword_100031F98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100022268(a1, a1[3]);
  sub_10002C058();
  sub_10002CFC8();
  v10[15] = 0;
  sub_10002CEC8();
  if (!v1)
  {
    v10[14] = 1;
    sub_10002CEB8();
    v10[13] = 2;
    sub_10002CED8();
  }

  return (*(v4 + 8))(v7, v3);
}

double sub_10002B794(uint64_t *a1)
{
  v2 = sub_100001DE4(&qword_1000428F8, &qword_100031F90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_100022268(a1, a1[3]);
  sub_10002C058();
  sub_10002CFB8();
  v14 = 0;
  sub_10002CE98();
  v13 = 1;
  sub_10002CE88();
  v10 = v9;
  v12 = 2;
  sub_10002CEA8();
  (*(v3 + 8))(v6, v2);
  sub_1000023D0(a1);
  return v10;
}

void sub_10002B968(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_10002B794(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
  }
}

uint64_t sub_10002B99C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_10002B5F0(a1);
}

uint64_t sub_10002B9D0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_10002CC08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 1;
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_10002CBF8();
  v11 = sub_10002CBD8();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  if (v13 >> 60 == 15)
  {

LABEL_4:
    v14 = 0.0;
    sub_10002397C(104);
    v15 = 0;
    v16 = 0;
    goto LABEL_10;
  }

  if (qword_100040A10 != -1)
  {
    sub_10002C3B0();
  }

  v17 = sub_10002CB68();
  sub_10000219C(v17, qword_100049B70);

  v18 = sub_10002CB48();
  v19 = sub_10002CDC8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100028D28(a1, a2, v37);
    _os_log_impl(&_mh_execute_header, v18, v19, "Found raw bookmark - %s", v20, 0xCu);
    sub_1000023D0(v21);
    sub_10002266C();
    sub_10002266C();
  }

  v22 = sub_10002C6B8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_10002C6A8();
  sub_10002C0AC();
  sub_10002C698();

  v15 = v37[0];
  v16 = v37[2];
  v38 = 0;
  v25 = floor(*&v37[1] * 1000.0);
  sub_1000295E4(v11, v13);
  v14 = v25 / 1000.0;
LABEL_10:
  if (v38)
  {
    v16 = 0;
    v14 = 0.0;
    v15 = 1;
  }

  else
  {
    if (qword_100040A10 != -1)
    {
      sub_10002C3B0();
    }

    v26 = sub_10002CB68();
    sub_10000219C(v26, qword_100049B70);
    v27 = sub_10002CB48();
    v28 = sub_10002CDE8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v29 = 136315138;
      v31 = sub_10002B100(v15, v16);
      v33 = sub_100028D28(v31, v32, v37);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Starting state - %s", v29, 0xCu);
      sub_1000023D0(v30);
      sub_10002266C();
      sub_10002266C();
    }
  }

  sub_100001DE4(&qword_100042910, &unk_100031FA0);
  v34 = swift_allocObject();
  *(v34 + 40) = 0;
  *(v34 + 16) = v15;
  *(v34 + 24) = v14;
  *(v34 + 32) = v16;
  *(v3 + 16) = v34;
  return v3;
}

__n128 initializeBufferWithCopyOfBuffer for SBAAtomicStreamPosition.State(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SBAAtomicStreamPosition.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SBAAtomicStreamPosition.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_10002C004()
{
  result = qword_1000428F0;
  if (!qword_1000428F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000428F0);
  }

  return result;
}

unint64_t sub_10002C058()
{
  result = qword_100042900;
  if (!qword_100042900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042900);
  }

  return result;
}

unint64_t sub_10002C0AC()
{
  result = qword_100042918;
  if (!qword_100042918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SBAAtomicStreamPosition.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SBAAtomicStreamPosition.State.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10002C260);
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

unint64_t sub_10002C2AC()
{
  result = qword_100042920;
  if (!qword_100042920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042920);
  }

  return result;
}

unint64_t sub_10002C304()
{
  result = qword_100042928;
  if (!qword_100042928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042928);
  }

  return result;
}

unint64_t sub_10002C35C()
{
  result = qword_100042930[0];
  if (!qword_100042930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100042930);
  }

  return result;
}

uint64_t sub_10002C3B0()
{

  return swift_once();
}

uint64_t sub_10002C3E0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10002C48C(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 16);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 40));
  oslog = sub_10002CB48();
  v3 = sub_10002CDE8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    *(v4 + 4) = v2;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Ending Bookmark - %{public}f", v4, 0xCu);
  }
}

uint64_t sub_10002C560()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  sub_1000023D0((v0 + *(*v0 + 112)));
  sub_1000023D0((v0 + *(*v0 + 120)));
  sub_1000023D0((v0 + *(*v0 + 128)));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10002C62C()
{
  sub_10002C560();

  return _swift_defaultActor_deallocate(v0);
}