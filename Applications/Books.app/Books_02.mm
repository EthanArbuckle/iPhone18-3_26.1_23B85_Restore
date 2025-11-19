uint64_t sub_100041488(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AEA3C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041504@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C6B4();
  *a1 = result;
  return result;
}

uint64_t sub_100041598@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079C764();
  *a1 = result;
  return result;
}

uint64_t sub_1000415F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AEA4B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041660()
{
  sub_10020B534(*(v0 + 32), *(v0 + 40));
  sub_10020B534(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1000419F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100041A30()
{

  return swift_deallocObject();
}

uint64_t sub_100041DF0()
{

  return swift_deallocObject();
}

uint64_t sub_100041E30()
{

  return swift_deallocObject();
}

id sub_100041E68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_100041ED4()
{

  return swift_deallocObject();
}

uint64_t sub_100041F1C()
{

  return swift_deallocObject();
}

uint64_t sub_100041F54()
{

  return swift_deallocObject();
}

uint64_t sub_100041F94()
{

  return swift_deallocObject();
}

uint64_t sub_100041FEC()
{

  return swift_deallocObject();
}

uint64_t sub_100042038()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100042070()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000420B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000420EC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100042134(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F1160(&qword_100AE3E60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000421F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F1160(&qword_100AE3E60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000422A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007A01C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100042310(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AEBAE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100042394@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfo;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_100042400()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100042438()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100042470()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000424E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10079FF64();
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

uint64_t sub_1000425A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10079FF64();
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

uint64_t sub_100042668()
{
  v1 = sub_1001F1160(&qword_100AEC088);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10004276C()
{
  v1 = sub_10079A3E4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_1001F1160(qword_100AEC0E0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000428DC()
{
  v1 = sub_1001F1160(qword_100AEC0E0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100042984()
{

  return swift_deallocObject();
}

uint64_t sub_1000429CC()
{
  type metadata accessor for PopoverListItem();
  sub_10079C2A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100042A84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007A1054();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100042AB0()
{

  return swift_deallocObject();
}

uint64_t sub_100042AE8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100042B20()
{

  return swift_deallocObject();
}

uint64_t sub_100042B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&unk_100ADB5E0);
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
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100042C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F1160(&unk_100ADB5E0);
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
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100042CF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100042D30()
{

  return swift_deallocObject();
}

uint64_t sub_100042D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AEC4C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042E0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100042E90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_100042EE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100042F38()
{

  return swift_deallocObject();
}

uint64_t sub_100042F78()
{

  return swift_deallocObject();
}

uint64_t sub_100042FB8()
{

  return swift_deallocObject();
}

uint64_t sub_100042FF8()
{

  return swift_deallocObject();
}

uint64_t sub_100043030()
{

  return swift_deallocObject();
}

uint64_t sub_100043088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5Books25AnnotationProviderService_currentHighlightStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000430F8()
{
  v1 = sub_1001F1160(&qword_100AECD30);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000431B8()
{
  v1 = sub_1001F1160(&unk_100ADA050);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10004324C()
{

  return swift_deallocObject();
}

uint64_t sub_1000432A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100043354(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100043400()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_100043438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BKMainContentViewController_miniPlayerViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1000434A4()
{

  return swift_deallocObject();
}

uint64_t sub_1000434E0()
{

  return swift_deallocObject();
}

uint64_t sub_100043518()
{

  return swift_deallocObject();
}

uint64_t sub_1000435AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_100043620()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_100043678()
{

  return swift_deallocObject();
}

uint64_t sub_1000436C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10004371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AE39E0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_1000437A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001F1160(&qword_100AE39E0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_100043830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE39D8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000438A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE39D8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100043928()
{

  return swift_deallocObject();
}

uint64_t sub_100043960()
{

  return swift_deallocObject();
}

uint64_t sub_1000439A0()
{

  return swift_deallocObject();
}

uint64_t sub_1000439E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100043A38()
{

  return swift_deallocObject();
}

uint64_t sub_100043A70()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100043AC0()
{

  sub_1000074E0((v0 + 10));

  sub_1000074E0((v0 + 18));

  return swift_deallocObject();
}

uint64_t sub_100043B38()
{
  swift_unknownObjectRelease();

  sub_1000074E0((v0 + 13));

  sub_1000074E0((v0 + 21));

  return swift_deallocObject();
}

uint64_t sub_100043BC0()
{
  swift_unknownObjectRelease();
  sub_1000074E0(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_100043C08()
{
  v1 = sub_1001F1160(&unk_100ADA050);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100043CE0()
{

  return swift_deallocObject();
}

uint64_t sub_100043D18()
{

  return swift_deallocObject();
}

uint64_t sub_100043D60()
{

  return swift_deallocObject();
}

uint64_t sub_100043D98()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100043DD0()
{

  return swift_deallocObject();
}

uint64_t sub_100043E10()
{

  return swift_deallocObject();
}

uint64_t sub_100043E4C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100043E84()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100043EC4()
{

  return swift_deallocObject();
}

uint64_t sub_100043EFC()
{

  swift_unknownObjectRelease();
  sub_1000074E0(v0 + 48);
  sub_1000074E0(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_100043F60()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100043F98()
{

  return swift_deallocObject();
}

uint64_t sub_100043FD8()
{

  return swift_deallocObject();
}

uint64_t sub_100044080()
{

  return swift_deallocObject();
}

uint64_t sub_1000440C8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100044100()
{

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100044150()
{
  sub_1001F1234(&qword_100AED7F0);
  sub_10079CCC4();
  sub_1006041A8();
  sub_10060465C(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100044204()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004423C()
{
  v1 = sub_1007969B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100044318()
{

  return swift_deallocObject();
}

uint64_t sub_10004436C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100044418(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000444C8()
{

  return swift_deallocObject();
}

uint64_t sub_100044500()
{

  return swift_deallocObject();
}

uint64_t sub_10004454C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_100044578()
{

  return swift_deallocObject();
}

uint64_t sub_1000445B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000445F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100044638()
{

  return swift_deallocObject();
}

uint64_t sub_100044678@<X0>(void *a1@<X8>)
{
  result = sub_10079BEB4();
  *a1 = v3;
  return result;
}

uint64_t sub_1000446B0()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000446E8()
{
  sub_1000074E0(v0 + 16);

  sub_10061B744();

  return swift_deallocObject();
}

uint64_t sub_10004474C()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000447B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A0774();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1001F1160(&qword_100AEE0B8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000448CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1007A0774();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1001F1160(&qword_100AEE0B8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000449E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001F1160(&unk_100ADB5E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100044A9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F1160(&unk_100ADB5E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100044BB8()
{
  v1 = (type metadata accessor for PopoverSearchBar(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079BC44();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100044CFC()
{
  v1 = (type metadata accessor for PopoverSearchBar(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[10];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10079BC44();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100044F58()
{

  return swift_deallocObject();
}

uint64_t sub_100044FA0()
{
  v1 = sub_1001F1160(&qword_100AEE588);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100045084()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100045124()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000451B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F1160(&qword_100AEEAF8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100045270(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F1160(&qword_100AEEAF8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004533C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10079B3D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100045408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10079B3D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000454C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10079F4E4();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10004556C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_10079F4E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100045610()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100045648()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100045690()
{

  return swift_deallocObject();
}

uint64_t sub_1000456C8()
{

  return swift_deallocObject();
}

uint64_t sub_10004570C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100045C68()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100045CA0()
{

  return swift_deallocObject();
}

id sub_100045CE0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BKReadingGoalsShouldClearDataKey];
  *a2 = result;
  return result;
}

uint64_t sub_100045D28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100045D68()
{
  v1 = *(sub_10079E6B4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v3 = *(sub_1001F1160(&qword_100AE0CA8) + 48);
    v4 = sub_1007989D4();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100045E7C()
{

  return swift_deallocObject();
}

uint64_t sub_100045EBC()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100045F04()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100045F64()
{
  sub_1001F1234(&unk_100ADB470);
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E1A4();
  sub_10079C2A4();
  swift_getWitnessTable();
  sub_100423AF0();
  return swift_getWitnessTable();
}

uint64_t sub_100046090()
{

  return swift_deallocObject();
}

uint64_t sub_1000460C8()
{

  return swift_deallocObject();
}

uint64_t sub_100046100()
{
  v1 = sub_100796E74();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000461C8()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100046218()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100046250()
{

  return swift_deallocObject();
}

uint64_t sub_1000462A4()
{

  return swift_deallocObject();
}

uint64_t sub_100046320(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000463CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100046470()
{
  v1 = sub_1001F1160(&unk_100ADA050);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100046504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AF26C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000465C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F1160(&qword_100AF26C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100046694()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000466E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100046790(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100046838()
{

  return swift_deallocObject();
}

uint64_t sub_100046870()
{
  type metadata accessor for HalfSheetModifier();
  swift_getWitnessTable();
  sub_10079CE54();
  type metadata accessor for HalfSheet();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E1A4();
  swift_getWitnessTable();
  sub_10079CCE4();
  return swift_getWitnessTable();
}

uint64_t sub_1000469AC()
{
  v1 = *(sub_10079E6B4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v3 = *(sub_1001F1160(&qword_100AE0CA8) + 48);
    v4 = sub_1007989D4();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100046AB8()
{
  sub_10066F1F8();
  swift_unknownObjectWeakDestroy();
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100046B20()
{

  return swift_deallocObject();
}

uint64_t sub_100046B68(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F1160(&unk_100ADB5F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001F1160(&unk_100ADB5E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100046CA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1001F1160(&unk_100ADB5F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F1160(&unk_100ADB5E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100046DE0()
{

  return swift_deallocObject();
}

uint64_t sub_100046E18()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_100046ED0@<Q0>(uint64_t a1@<X8>)
{
  sub_100795DF4();
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_10004710C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_1000074E0(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_10004715C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100047194()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000471DC()
{

  return swift_deallocObject();
}

uint64_t sub_10004721C()
{

  return swift_deallocObject();
}

uint64_t sub_10004726C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100047364()
{

  return swift_deallocObject();
}

uint64_t sub_10004739C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000473E4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004741C()
{

  return swift_deallocObject();
}

uint64_t sub_1000474AC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100047508(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000475B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100047658()
{
  v1 = (type metadata accessor for DislikeActionItem() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  sub_1000074E0(v0 + v2);
  sub_1000074E0(v0 + v2 + 40);

  sub_1000074E0(v0 + v2 + 88);
  sub_1000074E0(v0 + v2 + 128);
  v3 = v1[11];
  v4 = sub_100797144();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_100047768()
{
  v1 = (type metadata accessor for DislikeActionItem() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  sub_1000074E0(v0 + v2);
  sub_1000074E0(v0 + v2 + 40);

  sub_1000074E0(v0 + v2 + 88);
  sub_1000074E0(v0 + v2 + 128);
  v3 = v1[11];
  v4 = sub_100797144();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_100047880(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004792C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000479D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100047A08()
{
  v1 = sub_10079ACE4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100047AAC()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100047B88()
{

  return swift_deallocObject();
}

uint64_t sub_100047BD0()
{

  return swift_deallocObject();
}

uint64_t sub_100047C5C()
{

  return swift_deallocObject();
}

uint64_t sub_100047CDC()
{

  return swift_deallocObject();
}

uint64_t sub_100047D18()
{
  v1 = sub_1001F1160(&unk_100ADA050);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100047E0C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100047E44()
{

  return swift_deallocObject();
}

uint64_t sub_100047E7C()
{

  return swift_deallocObject();
}

uint64_t sub_100047ED8()
{
  v1 = *(sub_1001F1160(&qword_100AF2650) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_10079FFA4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100048010()
{

  return swift_deallocObject();
}

uint64_t sub_100048068()
{
  v1 = *(sub_1001F1160(&unk_100AD6170) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1001F1160(&unk_100AE6A30);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000481D4()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10004823C()
{
  v1 = sub_1007A0424();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10004833C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007A2BB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100048374()
{

  return swift_deallocObject();
}

uint64_t sub_1000483AC()
{
  v1 = sub_10079F4E4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100048470()
{

  return swift_deallocObject();
}

uint64_t sub_1000484D4()
{

  return swift_deallocObject();
}

uint64_t sub_1000485F8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1001F1160(&qword_100AF29B8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_1001F1160(&qword_100AE3E60);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_100048788(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1001F1160(&qword_100AF29B8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_1001F1160(&qword_100AE3E60);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100048918(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F1160(&qword_100AF2A90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1000489D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F1160(&qword_100AF2A90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100048AB8()
{

  return swift_deallocObject();
}

uint64_t sub_100048BD4()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100048C1C()
{

  sub_1000074E0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100048C6C()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100048CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001F1160(qword_100ADC258);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100048D78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F1160(qword_100ADC258);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100048E2C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AF2D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100048EB8()
{
  v1 = sub_100798034();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100048F94()
{

  return swift_deallocObject();
}

uint64_t sub_100048FD4()
{
  v1 = sub_100798034();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000490B0()
{

  return swift_deallocObject();
}

uint64_t sub_100049100()
{
  v1 = sub_100796594();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000491DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10079A084();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000492A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10079A084();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10004939C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100049448(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000494EC()
{

  return swift_deallocObject();
}

uint64_t sub_100049554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C4B4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100049594(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AF3468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000495FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF3468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004966C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF34B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000496DC()
{
  sub_1001F1234(&qword_100AF3430);
  sub_10079CCC4();
  sub_1001F1234(&qword_100AF3428);
  sub_10079CDF4();
  sub_1001F1234(&qword_100AF3420);
  sub_1001F1234(&qword_100AF34C8);
  sub_100005920(&qword_100AF34D0, &qword_100AF3420);
  sub_1006DABE8();
  swift_getOpaqueTypeConformance2();
  sub_1006DACCC(&qword_100AD5388, &type metadata accessor for BorderlessButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_1006DACCC(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000498DC()
{

  return swift_deallocObject();
}

uint64_t sub_100049914()
{
  sub_1001F1234(&unk_100AF34F0);
  sub_10079C2A4();
  sub_100005920(&unk_100ADB7D0, &unk_100AF34F0);
  return swift_getWitnessTable();
}

uint64_t sub_1000499D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADB5F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100049A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADB5F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100049ACC()
{
  v1 = sub_1001F1160(&qword_100AF3650);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100049BAC()
{

  return swift_deallocObject();
}

uint64_t sub_100049BEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100049C44()
{

  return swift_deallocObject();
}

uint64_t sub_100049C9C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100049CDC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100049D24()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100049D74()
{

  return swift_deallocObject();
}

uint64_t sub_100049DAC()
{

  return swift_deallocObject();
}

uint64_t sub_100049DFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100049EB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100795DF4();
  *a1 = v3;
  return result;
}

uint64_t sub_100049F28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100795DF4();
  *a1 = v3;
  return result;
}

uint64_t sub_100049FC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100795DF4();
  *a1 = v3;
  return result;
}

uint64_t sub_10004A060@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100795DF4();
  *a1 = v3;
  return result;
}

uint64_t sub_10004A1F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10004A220@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

id sub_10004A258@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BKFinishedAssetRemovalEnabledKey];
  *a2 = result;
  return result;
}

uint64_t sub_10004A2A0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004A2E0()
{

  return swift_deallocObject();
}

uint64_t sub_10004A318()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10004A368()
{

  return swift_deallocObject();
}

uint64_t sub_10004A3A0()
{

  return swift_deallocObject();
}

uint64_t sub_10004A3E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10004A438()
{

  return swift_deallocObject();
}

uint64_t sub_10004A48C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004A538(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004A5DC()
{

  return swift_deallocObject();
}

uint64_t sub_10004A618(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004A6C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004A768()
{

  return swift_deallocObject();
}

uint64_t sub_10004A804(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Books25CurrentLocationController_sendTimer;
  swift_beginAccess();
  sub_1000077D8(a1 + v2, &v5, &qword_100AD9580);
  if (*(&v6 + 1))
  {
    sub_100009864(&v5, v4);
    sub_100007840(&v5, &qword_100AD9580);
    sub_10000E3E8(v4, v4[3]);
    sub_10079B834();
    sub_1000074E0(v4);
  }

  else
  {
    sub_100007840(&v5, &qword_100AD9580);
  }

  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  swift_beginAccess();
  sub_1002391EC(&v5, a1 + v2, &qword_100AD9580);
  return swift_endAccess();
}

uint64_t sub_10004A928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A0044();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1001F1160(&unk_100AF1140);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10004AA24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1007A0044();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1001F1160(&unk_100AF1140);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10004AB2C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004AB64()
{

  return swift_deallocObject();
}

uint64_t sub_10004AB9C()
{

  return swift_deallocObject();
}

uint64_t sub_10004ABEC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004AC24()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10004AC5C()
{

  return swift_deallocObject();
}

uint64_t sub_10004AC94@<X0>(uint64_t a1@<X8>)
{
  sub_100536AA8();
  result = sub_10079C834();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_10004AD50()
{
  swift_unknownObjectRelease();

  sub_10071DA94();

  return swift_deallocObject();
}

uint64_t sub_10004ADCC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004AE78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004AF20()
{

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004AF60()
{

  return swift_deallocObject();
}

uint64_t sub_10004AF9C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004AFD4()
{

  return swift_deallocObject();
}

uint64_t sub_10004B01C()
{

  return swift_deallocObject();
}

uint64_t sub_10004B06C()
{

  return swift_deallocObject();
}

uint64_t sub_10004B0AC()
{

  return swift_deallocObject();
}

uint64_t sub_10004B0FC()
{

  return swift_deallocObject();
}

uint64_t sub_10004B148()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10004B1A0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004B1D8()
{

  return swift_deallocObject();
}

uint64_t sub_10004B210()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10004B260()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004B298()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10004B2E0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10004B328()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004B360()
{
  swift_unknownObjectRelease();
  sub_1002FB09C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_10004B3AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10004B3FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = sub_1001F1160(&qword_100AE3E60);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_1001F1160(&qword_100AF51D0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[10];
    goto LABEL_9;
  }

  v12 = sub_1001F1160(&unk_100ADB5F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[11];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[12]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_1001F1160(&qword_100AE3E70);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v7 = v16;
      v8 = *(v16 - 8);
      v9 = a3[16];
      goto LABEL_9;
    }

    v17 = sub_10079ACE4();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[22];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10004B680(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = sub_1001F1160(&qword_100AE3E60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_1001F1160(&qword_100AF51D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  result = sub_1001F1160(&unk_100ADB5F0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[12]) = (a2 - 1);
    return result;
  }

  v16 = sub_1001F1160(&qword_100AE3E70);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[16];
    goto LABEL_9;
  }

  v17 = sub_10079ACE4();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[22];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_10004B904@<X0>(void *a1@<X8>)
{
  sub_10032AB6C();
  result = sub_10079C834();
  *a1 = v3;
  return result;
}

uint64_t sub_10004BA68@<X0>(uint64_t a1@<X8>)
{
  sub_1004C7CB8();
  result = sub_10079C834();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_10004BB7C()
{
  sub_10020B534(*(v0 + 16), *(v0 + 24));

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004BBF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004BCA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004BD48()
{

  return swift_deallocObject();
}

uint64_t sub_10004BDA0()
{
  v1 = (type metadata accessor for ReadThisActionItem() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  sub_1000074E0(v4);
  sub_1000074E0(v4 + 40);

  sub_1000074E0(v4 + 88);
  sub_1000074E0(v4 + 128);
  v5 = v1[11];
  v6 = sub_100797144();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  sub_1000074E0(v0 + v3);
  sub_1000074E0(v0 + ((v3 + 55) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_10004BED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001F1160(&qword_100AF5708);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004BF90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F1160(&qword_100AF5708);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004C040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF57C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004C0B0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AF57C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004C11C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C794();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004C1D4()
{

  return swift_deallocObject();
}

uint64_t sub_10004C218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&unk_100ADB5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1001F1160(&qword_100AF6390);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10004C340(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1001F1160(&unk_100ADB5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1001F1160(&qword_100AF6390);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10004C498()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004C4D0()
{

  return swift_deallocObject();
}

uint64_t sub_10004C5A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10004C5CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10004C600@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C6D4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004C634()
{

  return swift_deallocObject();
}

uint64_t sub_10004C66C()
{

  return swift_deallocObject();
}

uint64_t sub_10004C6A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004C6F8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F1160(&qword_100AF6388);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001F1160(&qword_100AF6390);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10004C834(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1001F1160(&qword_100AF6388);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F1160(&qword_100AF6390);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10004C994(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF6578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004CA04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079C744();
  *a1 = result;
  return result;
}

uint64_t sub_10004CA6C()
{
  v1 = type metadata accessor for ReportIssueView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_1001F1160(&qword_100AF6570);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079B724();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 28);
  sub_1001F1160(&qword_100AD61C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(sub_1001F1160(qword_100AF6430) + 32);
    v8 = sub_10079C3B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_10004CCC8()
{
  sub_1001F1234(&qword_100AF6498);
  sub_10079D004();
  sub_100005920(&qword_100AF64D0, &qword_100AF6498);
  sub_10076F8C8(&qword_100AF64D8, &type metadata accessor for StackNavigationViewStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004CDBC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004CE00()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10004CF04()
{
  v1 = sub_1007A0774();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  sub_1000074E0(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10004CFDC()
{
  sub_1000074E0(v0 + 16);

  sub_10061B744();

  return swift_deallocObject();
}

uint64_t sub_10004D03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AF6AD8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004D104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F1160(&qword_100AF6AD8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004D1C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1001F1160(&qword_100AF51D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1007A0774();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1001F1160(&qword_100AEE0B8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10004D334(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1001F1160(&qword_100AF51D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1007A0774();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1001F1160(&qword_100AEE0B8);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10004D4A0()
{

  return swift_deallocObject();
}

uint64_t sub_10004D4E8()
{
  v1 = type metadata accessor for SearchRow(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1001F1160(&qword_100AD9FA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079CAA4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  v6 = sub_1007A0774();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = v1[6];
  v8 = sub_10079FF64();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_10004D6E8()
{
  sub_10061B744();

  return swift_deallocObject();
}

uint64_t sub_10004D780()
{
  sub_1001F1234(&qword_100AF6E90);
  sub_10077DFC0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004D824()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004D85C()
{

  return swift_deallocObject();
}

uint64_t sub_10004D89C()
{

  return swift_deallocObject();
}

uint64_t sub_10004D8DC()
{

  return swift_deallocObject();
}

uint64_t sub_10004D924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001F1160(&qword_100AD6190);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001F1160(&unk_100AF1140);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10004DA60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001F1160(&qword_100AD6190);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F1160(&unk_100AF1140);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10004DC70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100795DF4();
  *a1 = v3;
  return result;
}

uint64_t sub_10004DCE4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_10004DEE0(uint64_t a1)
{
  v1 = [*(a1 + 32) onReceiveHandler];
  v1[2]();
}

void sub_10004E2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_10004E2F8(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained running];

  if (v4)
  {
    v5 = *(*(*(a1 + 48) + 8) + 24);
    [*(a1 + 32) contentSize];
    v7 = v6;
    [*(a1 + 32) bounds];
    if (v5 >= v7 - v8)
    {
      [v11 invalidate];
      v10 = objc_loadWeakRetained((a1 + 56));
      [v10 setTimer:0];

      [*(a1 + 32) setContentOffset:{0.0, 0.0}];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [*(a1 + 32) setContentOffset:{0.0, *(*(*(a1 + 48) + 8) + 24)}];
      [*(a1 + 32) bounds];
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v9 * 0.25;
    }
  }

  else
  {
    [v11 invalidate];
  }
}

void sub_10004E5BC(uint64_t a1)
{
  v2 = [*(a1 + 32) bookshelf];
  if (!v2)
  {
    v3 = sub_1001E65B0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Could not find the bookshelf", buf, 2u);
    }
  }

  v4 = [v2 collectionView];
  if (!v4)
  {
    v5 = sub_1001E65B0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Could not find the bookshelf scrollview", buf, 2u);
    }
  }

  if (*(*(a1 + 32) + 106) == 1)
  {
    v6 = [RPTScrollViewTestParameters alloc];
    v7 = [*(a1 + 32) name];
    v8 = [v6 initWithTestName:v7 scrollView:v4 completionHandler:0];

    [RPTTestRunner runTestWithParameters:v8];
  }

  else
  {
    [v4 contentOffset];
    [v4 setContentOffset:1 animated:?];
    v9 = dispatch_time(0, 750000000);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10004E7E0;
    v16[3] = &unk_100A03440;
    v10 = v4;
    v11 = *(a1 + 32);
    v17 = v10;
    v18 = v11;
    dispatch_after(v9, &_dispatch_main_q, v16);
    v8 = v17;
  }

  [*(a1 + 32) setResult:0];
  v12 = [*(a1 + 32) onTestFinished];
  v12[2](v12, v13, v14, v15);
}

void sub_10004E7E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) name];
  [*(a1 + 32) contentSize];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004E89C;
  v5[3] = &unk_100A03418;
  v5[4] = *(a1 + 40);
  [v2 _performScrollTest:v3 iterations:1 delta:10 length:v4 scrollAxis:2 extraResultsBlock:0 completionBlock:v5];
}

void sub_10004E89C(uint64_t a1)
{
  if (*(*(a1 + 32) + 105) == 1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    [v2 setBool:0 forKey:kOverrideNightMode];
  }
}

id sub_10004EDF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  v5.receiver = *(a1 + 40);
  v5.super_class = BKRootViewController;
  return objc_msgSendSuper2(&v5, "bc_presentCardViewController:animated:completion:", v1, v2, v3);
}

void sub_10004EEFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    *(v2 + 24) = 0;
    v6 = v3;

    [*(a1 + 32) presentViewController:v6 animated:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }
}

void sub_10004F388(id a1)
{
  v3 = @"ADD_TO_WANT_TO_READ";
  v4 = kBKCollectionDefaultIDWantToRead;
  v1 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  v2 = qword_100AF73C0;
  qword_100AF73C0 = v1;
}

void sub_10004F91C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10078823C(a1, v4);
  }
}

void sub_10004F970(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100788300(a1, v4);
  }
}

void sub_10004FD74(id a1)
{
  v1 = objc_alloc_init(TUIManager);
  v2 = qword_100AF73D0;
  qword_100AF73D0 = v1;

  v3 = objc_alloc_init(TUIElementRegistry);
  [qword_100AF73D0 setElementRegistry:v3];
  [BCMetrics registerNamedColorsWithTemplateManger:qword_100AF73D0];
}

void sub_10004FF04(uint64_t a1)
{
  v2 = [TUITemplateFactory alloc];
  v3 = [*(a1 + 32) _manager];
  v4 = [v3 elementRegistry];
  v5 = [v2 initWithRegistry:v4];
  v6 = qword_100AF73E0;
  qword_100AF73E0 = v5;

  v7 = [*(a1 + 32) _templatePackageURL];
  v8 = [TUIBinaryPackage packageWithURL:v7];

  [qword_100AF73E0 registerPackage:v8];
}

void sub_10005007C(uint64_t a1)
{
  v4 = [*(a1 + 32) _templatePackageURL];
  v1 = [v4 URLByDeletingLastPathComponent];
  v2 = [v1 URLByAppendingPathComponent:@"BKLibraryBookshelfConfiguration.xml"];
  v3 = qword_100AF73F0;
  qword_100AF73F0 = v2;
}

void sub_100050D2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

void sub_100050DB0(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 56));
  v2 = BKStoreLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BKStoreController: Suspending bagSnapshotAccessQueue for bag update", buf, 2u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = +[BUBag defaultBag];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100050FD8;
  v10[3] = &unk_100A035A8;
  objc_copyWeak(&v12, buf);
  v5 = v3;
  v11 = v5;
  [v4 createSnapshotWithCompletion:v10];

  v6 = dispatch_time(0, 200000000);
  dispatch_group_wait(v5, v6);
  dispatch_resume(*(*(a1 + 32) + 56));
  v7 = BKStoreLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BKStoreController: Resuming bagSnapshotAccessQueue after bag update", v9, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051058;
  block[3] = &unk_100A033C8;
  block[4] = *(a1 + 32);
  dispatch_group_notify(v5, &_dispatch_main_q, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void sub_100050FB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_100050FD8(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [[BUBag alloc] initWithBackingBag:v6];
    v5 = WeakRetained[8];
    WeakRetained[8] = v4;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100051058(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:kAEStoreBookmarkUrlsChangedNotification object:*(a1 + 32)];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:kAEStoreEnabledChangedNotification object:*(a1 + 32)];
}

void sub_1000511D4(uint64_t a1)
{
  v2 = +[BUBag defaultBag];
  v3 = [v2 availableBookUpdates];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100051280;
  v4[3] = &unk_100A03670;
  v4[4] = *(a1 + 32);
  [v3 valueWithCompletion:v4];
}

void sub_100051280(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000513B8;
    v10[3] = &unk_100A03648;
    objc_copyWeak(&v12, &location);
    v10[4] = *(a1 + 32);
    v11 = v6;
    [v8 canCheckForBookUpdatesWithCompletion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = BKStoreBookUpdateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100788494(v7, v9);
    }
  }
}

void sub_10005139C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000513B8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    v6 = *(*(a1 + 32) + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100051488;
    block[3] = &unk_100A03620;
    objc_copyWeak(&v12, (a1 + 48));
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    dispatch_async(v6, block);

    objc_destroyWeak(&v12);
  }
}

void sub_100051488(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained updateCountOperation];

  if (v3)
  {
    v4 = BKStoreBookUpdateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "refreshUpdateCountAsync - Skipping ... there is an ongoing updateCountOperation", buf, 2u);
    }
  }

  else
  {
    v5 = [BKLibraryBookUpdateCountOperation alloc];
    v6 = [WeakRetained libraryAssetProvider];
    v4 = [(BKLibraryBookUpdateCountOperation *)v5 initWithLibraryAssetProvider:v6 updatesURL:*(a1 + 32)];

    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100051650;
    v12 = &unk_100A035F8;
    v13 = *(a1 + 40);
    objc_copyWeak(&v14, (a1 + 48));
    [v4 setCompletionBlock:&v9];
    v7 = BKStoreBookUpdateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "refreshUpdateCountAsync - Enqueuing bookUpdateCountOperation", buf, 2u);
    }

    v8 = [WeakRetained operationQueue];
    [v8 addOperation:v4];

    [WeakRetained setUpdateCountOperation:v4];
    objc_destroyWeak(&v14);
  }
}

void sub_100051650(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000516E4;
  block[3] = &unk_100A035D0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void sub_1000516E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained updateCountOperation];
  v2 = [WeakRetained updateCountOperation];
  v3 = [v2 result];
  [WeakRetained _operationDidFinish:v1 result:v3];

  [WeakRetained setUpdateCountOperation:0];
}

void sub_10005182C(uint64_t a1)
{
  v2 = +[BSUIStoreServices sharedInstance];
  [v2 showProductPageForStoreID:*(a1 + 32) resourceType:3 transaction:0 needsAnalyticsLinkData:0];
}

void sub_100051A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100051A28(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 64) viewBook];
  v2 = [v5 jsa_valueWithError:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100051D3C(uint64_t a1)
{
  v2 = BCBookDownloadLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138477827;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished requesting download of asset with ID %{private}@", &v4, 0xCu);
  }
}

void sub_1000520D4(uint64_t a1, void *a2)
{
  if (a2)
  {
    a2 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [a2 CGImage]);
  }

  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_1000521C4(uint64_t a1)
{
  v3 = +[NSDate date];
  [v3 timeIntervalSince1970];
  *(*(a1 + 32) + 72) = v2;
}

void sub_100052644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_100052694(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  if (v3 != v2 && ([v3 isEqual:?] & 1) == 0)
  {
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v7 = [*(a1 + 40) copy];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(*(a1 + 32) + 16) copy];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = *(a1 + 32);
    v14 = *(v13 + 16);
    *(v13 + 16) = &__NSArray0__struct;
  }
}

void sub_1000528D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_1000528F8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

void sub_100052938(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:BKLibraryOperationAssetIDsKey];
  v4 = [v2 objectForKeyedSubscript:BKLibraryOperationTypeKey];
  v5 = [v4 integerValue];

  if ((v5 - 1) <= 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([*(*(a1 + 40) + 32) containsObject:{v11, v12}])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            [*(*(a1 + 40) + 32) removeObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

void sub_100052CB0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:kAEStoreNumberOfUpdatesAvailableChangedNotification object:*(a1 + 32)];
}

void sub_100052E04(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000530C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000530F0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10005313C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) mutableCopy];
  v3 = objc_retainBlock(*(a1 + 40));
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v2;
}

void sub_10005358C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BKStoreBookUpdateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100788550(v6, v7);
    }
  }

  if (v5)
  {
    v8 = [v5 valueForKey:@"storeID"];
    v9 = [v8 count];
    if (v9 != [*(a1 + 32) count])
    {
      v10 = BKStoreBookUpdateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v8 componentsJoinedByString:{@", "}];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Only owned these items: [%@]", &v12, 0xCu);
      }
    }

    [*(a1 + 32) removeAllObjects];
    [*(a1 + 32) addObjectsFromArray:v8];
    [*(a1 + 40) setStoreIDsWithAvailableUpdates:*(a1 + 32)];
  }
}

void sub_1000537EC(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 64) kvsGetAll];
  v2 = [v5 jsa_valueWithError:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10005394C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 64) kvsPutAll];
  v2 = [v5 jsa_valueWithError:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100053A68(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 64) allowCitations];
  v2 = [v3 jsa_valueWithError:0];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

void sub_100053B88(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) reportConcerns];
  v4 = [v2 jsa_valueWithError:0];

  v3 = [v4 objectForKey:@"enabled"];
  *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];
}

void sub_100053D08(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 64) allowingCitations];
  v2 = [v5 jsa_valueWithError:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000540AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000540DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  if (v8)
  {
    if ([v8 intValue] > 7199)
    {
      goto LABEL_6;
    }

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    v9 = &off_100A433F8;
  }

  else
  {
    v9 = &off_100A433E0;
  }

  *(v7 + 40) = v9;

LABEL_6:
  dispatch_group_leave(*(a1 + 32));
}

void sub_100054180(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000541E0(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2 && ([v2 isAnyNetworkTypeEnabled] & 1) == 0 || !*(*(*(a1 + 56) + 8) + 40))
  {
    v9 = objc_retainBlock(*(a1 + 40));
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v3 = [*(a1 + 32) lastBookUpdateCheck];
  if (!v3)
  {
    v9 = objc_retainBlock(*(a1 + 40));
    goto LABEL_11;
  }

  v4 = v3;
  v5 = +[NSDate date];
  [v5 timeIntervalSince1970];
  v7 = v6;

  v8 = &v4[[*(*(*(a1 + 56) + 8) + 40) unsignedLongLongValue]];
  v9 = objc_retainBlock(*(a1 + 40));
  if (v8 <= v7)
  {
LABEL_11:
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = v9[2];
    v11 = v9;
    goto LABEL_13;
  }

  if (v9)
  {
LABEL_9:
    v10 = v9[2];
    v11 = v9;
LABEL_13:
    v10();
    v9 = v11;
  }

LABEL_14:
}

void sub_1000543D8(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 64) tafEmailBodyUrlBase];
  v2 = [v5 jsa_valueWithError:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000554D0(uint64_t a1)
{
  sub_1007885C8(*(a1 + 32));
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 indexPathsForVisibleRows];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [*(a1 + 32) tableView];
        v11 = [v10 cellForRowAtIndexPath:v9];

        [*(a1 + 32) _configureThemeForCell:v11];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

id sub_1000558B4(uint64_t a1)
{
  result = [*(a1 + 32) isVisible];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) arrangedObjects];
    [v3 _mergeAssets:v4];

    v5 = *(a1 + 32);
    v6 = [objc_opt_class() _uploadErrorType];

    return [v5 _updateTitle:v6];
  }

  return result;
}

void sub_100055C4C(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 indexPathsForVisibleRows];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [*(a1 + 32) tableView];
        v11 = [v10 cellForRowAtIndexPath:v9];

        [*(a1 + 32) _configureThemeForCell:v11];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

id sub_100056014(uint64_t a1)
{
  result = [*(a1 + 32) isVisible];
  if (result)
  {
    v3 = *(a1 + 32);

    return sub_1007885C8(v3);
  }

  return result;
}

void sub_100056480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100056498(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) statusForAssetID:a2];
  if ([v3 state] != 11)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void sub_1000568C0(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = [*(a1 + 32) statusForAssetID:v14];
  v6 = [*(a1 + 40) assetIdToState];
  v7 = [v6 objectForKeyedSubscript:v14];

  if (v7)
  {
    v8 = [v5 state];
    if (v8 == [v7 integerValue])
    {
      goto LABEL_6;
    }

    v9 = 56;
  }

  else
  {
    v9 = 48;
  }

  v10 = *(a1 + v9);
  v11 = [NSIndexPath indexPathForRow:a3 inSection:0];
  [v10 addObject:v11];

  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 state]);
  v13 = [*(a1 + 40) assetIdToState];
  [v13 setObject:v12 forKeyedSubscript:v14];

LABEL_6:
}

void sub_100056B50(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 libraryUploadStatusViewControllerDismissed:*(a1 + 32)];

  v3 = objc_retainBlock(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

void sub_100056D58(uint64_t a1)
{
  v2 = +[BKCloudQuotaUIServices sharedInstance];
  [v2 presentUpgradeOfferWithNavigationController:*(a1 + 32)];
}

void *sub_100057464(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x3FF0000000000000;
  return result;
}

uint64_t sub_100057474(uint64_t a1, CGColorRef color)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  Components = CGColorGetComponents(color);
  NumberOfComponents = CGColorGetNumberOfComponents(color);
  if (NumberOfComponents > 2)
  {
    if (NumberOfComponents != 3)
    {
      if (NumberOfComponents != 4)
      {
        goto LABEL_10;
      }

      *(a1 + 24) = Components[3];
    }

    *a1 = *Components;
    *(a1 + 8) = Components[1];
    *(a1 + 16) = Components[2];
    goto LABEL_10;
  }

  if (NumberOfComponents == 1)
  {
    goto LABEL_5;
  }

  if (NumberOfComponents == 2)
  {
    *(a1 + 24) = Components[1];
LABEL_5:
    v6 = *Components;
    *(a1 + 8) = *Components;
    *(a1 + 16) = v6;
    *a1 = v6;
  }

LABEL_10:
  ColorSpace = CGColorGetColorSpace(color);
  v8 = sub_1000A4730();
  *a1 = sub_10005754C(a1, ColorSpace, v8);
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  return a1;
}

double sub_10005754C(_OWORD *a1, CGColorSpaceRef space, CGColorSpace *cf2)
{
  data = 0;
  if (!space || !cf2 || !CFEqual(space, cf2))
  {
    v7 = a1[1];
    *components = *a1;
    v15 = v7;
    v8 = CGColorCreate(space, components);
    if (v8)
    {
      v9 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 4uLL, cf2, 0x4002u);
      v10 = v9;
      if (v9)
      {
        CGContextSetFillColorWithColor(v9, v8);
        v16.origin.x = 0.0;
        v16.origin.y = 0.0;
        v16.size.width = 1.0;
        v16.size.height = 1.0;
        CGContextFillRect(v10, v16);
        LOBYTE(v11) = BYTE1(data);
        v6 = v11 / 255.0;
LABEL_10:
        CGColorRelease(v8);
        CGContextRelease(v10);
        return v6;
      }
    }

    else
    {
      v10 = 0;
    }

    v6 = 0.0;
    goto LABEL_10;
  }

  return *a1;
}

uint64_t sub_1000576C4(uint64_t result, double a2, double a3, double a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0x3FF0000000000000;
  return result;
}

double *sub_1000576D8(double *result, double a2, double a3, double a4, double a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

double sub_1000576E4(double *a1)
{
  v4 = 0.0;
  v2 = 0;
  v3 = 0;
  sub_10005772C(&v4, &v3, &v2, *a1, a1[1], a1[2]);
  return v4;
}

double *sub_10005772C(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a5 > 1.0)
  {
    a5 = 1.0;
  }

  if (a5 >= 0.0)
  {
    v6 = a5;
  }

  else
  {
    v6 = 0.0;
  }

  if (a6 <= 1.0)
  {
    v7 = a6;
  }

  else
  {
    v7 = 1.0;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  if (v6 == 0.0)
  {
    *result = v7;
    *a2 = v7;
    goto LABEL_13;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  v8 = a4 * 6.0;
  v9 = v8;
  v10 = v6 * v7 * (v8 - v8);
  v11 = v7 - v6 * v7;
  v12 = v11 + v10;
  if (v11 + v10 > 1.0)
  {
    v12 = 1.0;
  }

  v13 = v7 - v10;
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  v14 = v11;
  if (v9)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  if (v14 <= 1.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = v7;
  if (v9 > 3)
  {
    if (v9 != 5)
    {
      v17 = v15;
      if (v9 != 4)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v9)
  {
    v17 = v15;
    if (v9 != 1)
    {
LABEL_34:
      v17 = v16;
    }
  }

  *result = v17;
  v18 = v7;
  if ((v9 - 1) >= 2)
  {
    v19 = v9 == 3 || v9 == 0;
    v18 = v15;
    if (!v19)
    {
      v18 = v16;
    }
  }

  *a2 = v18;
  if ((v9 - 3) >= 2)
  {
    v20 = v9 == 5 || v9 == 2;
    v7 = v15;
    if (!v20)
    {
      v7 = v16;
    }
  }

LABEL_13:
  *a3 = v7;
  return result;
}

double sub_10005784C(double a1, double a2, double a3)
{
  v6 = 0.0;
  v4 = 0;
  v5 = 0;
  sub_10005772C(&v6, &v5, &v4, a1, a2, a3);
  return v6;
}

double *sub_1000578CC(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 >= 1.0)
  {
    a4 = 1.0;
  }

  v6 = 0.0;
  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  if (a5 >= 1.0)
  {
    a5 = 1.0;
  }

  if (a5 < 0.0)
  {
    a5 = 0.0;
  }

  if (a6 >= 1.0)
  {
    a6 = 1.0;
  }

  if (a6 >= 0.0)
  {
    v7 = a6;
  }

  else
  {
    v7 = 0.0;
  }

  if (a5 <= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a5;
  }

  if (a5 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a5;
  }

  if (v7 <= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v7;
  }

  if (v7 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v7;
  }

  if (a5 <= v7)
  {
    v8 = v10;
  }

  if (a5 >= v7)
  {
    v9 = v11;
  }

  if (v8 <= 1.0)
  {
    v12 = v8;
  }

  else
  {
    v12 = 1.0;
  }

  *a3 = v12;
  if (v8 == 0.0)
  {
    *a2 = 0.0;
  }

  else
  {
    v13 = v8 - v9;
    v14 = v13 / v8;
    if (v13 / v8 <= 1.0)
    {
      *a2 = v14;
      if (v14 == 0.0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *a2 = 1.0;
    }

    if (v13 == 0.0)
    {
      v15 = 0.0;
      v16 = 0.0;
    }

    else
    {
      v6 = (v8 - a4) / v13;
      v15 = (v8 - a5) / v13;
      v16 = (v8 - v7) / v13;
    }

    if (a4 == v8)
    {
      v17 = v16 - v15;
    }

    else if (a5 == v8)
    {
      v17 = v6 + 2.0 - v16;
    }

    else
    {
      v17 = v15 + 4.0 - v6;
    }

    v18 = v17 / 6.0;
    if (v18 < 0.0)
    {
      v18 = v18 + 1.0;
    }

    if (v18 <= 1.0)
    {
      v6 = v18;
    }

    else
    {
      v6 = 1.0;
    }
  }

LABEL_51:
  *result = v6;
  return result;
}

void sub_1000579F4(__int128 *a1)
{
  v1 = 0;
  v4 = *a1;
  v5 = *(a1 + 2);
  do
  {
    v2 = *(&v4 + v1);
    if (v2 <= 0.0392800011)
    {
      v3 = v2 / 12.9200001;
    }

    else
    {
      v3 = pow((v2 + 0.0549999997) / 1.05499995, 2.4);
    }

    *(&v4 + v1) = v3;
    v1 += 8;
  }

  while (v1 != 24);
}

double sub_100057B14(__int128 *a1, __int128 *a2)
{
  sub_1000579F4(a2);
  v4 = v3;
  sub_1000579F4(a1);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v5 > v4)
  {
    v5 = v4;
  }

  return (v6 + 0.0500000007) / (v5 + 0.0500000007);
}

double sub_100057B70(__int128 *a1, double a2)
{
  sub_1000579F4(a1);
  if (v3 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  if (v3 > a2)
  {
    v3 = a2;
  }

  return (v4 + 0.0500000007) / (v3 + 0.0500000007);
}

double sub_100057BB4(uint64_t a1, double a2, double a3)
{
  if (a2 < 1.0)
  {
    if (a2 <= 0.0)
    {
      return *a1;
    }

    else
    {
      return (1.0 - a2) * *a1 + a3 * a2;
    }
  }

  return a3;
}

void sub_1000593A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000593D4(uint64_t a1)
{
  v3 = [*(a1 + 32) upgradeViewController];
  v1 = [v3 view];
  v2 = [v1 layer];
  [v2 setOpacity:0.0];
}

id sub_100059444(uint64_t a1)
{
  v2 = [*(a1 + 32) upgradeViewController];
  v3 = [v2 view];
  [v3 removeFromSuperview];

  v4 = *(a1 + 32);

  return [v4 setUpgradeViewController:0];
}

void sub_1000594AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = BCSceneLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1007891E8(a1, v3);
    }

    v4 = [WeakRetained launchCoordinator];
    [v4 signalConditionSatisfied:7];

    v5 = WeakRetained[11];
    WeakRetained[11] = 0;
  }
}

void sub_1000595F0(uint64_t a1)
{
  v2 = [*(a1 + 32) rootBarCoordinator];

  if (v2)
  {
    v5 = [*(a1 + 32) rootBarCoordinator];
    v3 = [v5 rootViewController];
    [v3 im_finishOngoingModalTransitionAnimations:*(a1 + 40)];
  }

  else
  {
    v4 = objc_retainBlock(*(a1 + 40));
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = v4;
    v4[2]();
  }

  v4 = v5;
LABEL_6:
}

void sub_100059A18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100059AC8;
  v3[3] = &unk_100A03920;
  v4 = *(a1 + 48);
  [v2 dismissViewControllerWithTransition:7 completion:v3];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) welcomeScreenViewControllerDidDismiss];
  }
}

void sub_100059AC8(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_100059DB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100059DCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [*(a1 + 32) analyticsController];
    v4 = [v3 applicationTracker];

    [v4 pushSessionEndReasonDataWithReason:*(a1 + 48) file:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKSceneController.m" line:445];
    v5 = [v9 bk_window];
    v6 = [v5 rootViewController];
    [v6 bc_analyticsVisibilitySubtreeWillDisappear];

    v7 = [v9 bk_window];
    v8 = [v7 rootViewController];
    [v8 bc_analyticsVisibilitySubtreeDidDisappear];

    [*(a1 + 32) analyticsEndSession];
    WeakRetained = v9;
  }
}

id sub_10005A564(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_10005A6E4;
        v9[3] = &unk_100A033C8;
        v9[4] = v7;
        [v7 updatePromotionStateWithCompletion:v9];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) didDisconnectScene:*(a1 + 48)];
  [*(a1 + 56) setRootViewController:0];
  [*(a1 + 64) setBk_window:0];
  return [*(a1 + 64) setScene:0];
}

void sub_10005A828(uint64_t a1)
{
  v2 = [*(a1 + 32) rootBarCoordinator];

  if (v2)
  {
    v3 = [*(a1 + 32) rootViewController];
    v4 = [v3 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];

    [v4 updateAllAssetPresenterCloseStateTypes];
  }
}

void sub_10005A980(uint64_t a1)
{
  v2 = [*(a1 + 32) rootBarCoordinator];

  if (v2)
  {
    v3 = [*(a1 + 32) rootViewController];
    v4 = [v3 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];

    [v4 updateAllAssetPresenterCloseStateTypes];
  }
}

id sub_10005AED8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = BKSceneController;
  return objc_msgSendSuper2(&v4, "_handleOpenBookActivityWithAssetID:isStateRestoration:", v1, v2);
}

void sub_10005B308(uint64_t a1)
{
  v2 = [*(a1 + 32) scene];

  if (v2)
  {
    v5 = +[BKSceneUtilities sharedInstance];
    v3 = [*(a1 + 32) sceneInfo];
    v4 = [v3 sceneSession];
    [v5 destroySceneWithSceneSession:v4 withAnimationType:1];
  }
}

void sub_10005C358(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeAnimated];
}

void sub_10005C544(id a1)
{
  v1 = objc_alloc_init(BKTestDriverDispatcher);
  v2 = qword_100AF7400;
  qword_100AF7400 = v1;
}

void sub_10005C848(uint64_t a1)
{
  v2 = [*(a1 + 32) getReceivers:*(a1 + 40)];
  [v2 addObject:*(a1 + 48)];
}

void sub_10005C96C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) types];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) removeObject:*(a1 + 40)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_10005CCEC(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) getReceivers:*(a1 + 40)];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 56) + 16))();
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10005CF40(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 onBookViewControllerChange:*(a1 + 32)];
  }
}

void sub_10005D08C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 onLibraryViewControllerChange:*(a1 + 32)];
  }
}

id sub_10005D1D8()
{
  if (qword_100AF7418 != -1)
  {
    sub_1007892E8();
  }

  v1 = qword_100AF7410;

  return v1;
}

void sub_10005D21C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKAssetPresentingViewController");
  v2 = qword_100AF7410;
  qword_100AF7410 = v1;
}

void sub_10005D9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005DA08(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _assetPresenterWillEnterForeground];
  }

  else
  {
    [WeakRetained _assetPresenterDidEnterBackground];
  }
}

void sub_10005DF28(uint64_t a1)
{
  BEURLHandlerClearCachedInfoForBookWithAssetID();
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_10005EB40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = BCIMLog();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100789338();
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005EDAC;
      block[3] = &unk_100A033C8;
      block[4] = *(a1 + 40);
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        *buf = 138412290;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BKAssetPresentingViewController coordinateReadingItemAtURL Successful coordinated read [URL: %@]", buf, 0xCu);
      }

      v8 = [*(a1 + 40) assetIdentifier];
      v9 = [v8 permanentAssetID];

      v10 = +[BKBookCacheController sharedInstance];
      v11 = [*(a1 + 40) assetHelper];
      [v10 setMetadataForAssetID:v9 withHelper:v11 pageCount:*(a1 + 64)];

      v12 = [*(a1 + 40) assetViewController];
      LOBYTE(v11) = objc_opt_respondsToSelector();

      if (v11)
      {
        v13 = [*(a1 + 40) assetViewController];
        [v13 loadMetadata];
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10005EDBC;
      v14[3] = &unk_100A03920;
      v15 = *(a1 + 48);
      dispatch_async(&_dispatch_main_q, v14);
    }
  }
}

void sub_10005EDBC(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10005F778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10005F7A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSampleToPurchasedMonitor:0];
  if ([WeakRetained assetState] == 2)
  {
    [WeakRetained _reloadAssetCloseViewController:1];
  }
}

void sub_10005F800(uint64_t a1)
{
  v1 = [*(a1 + 32) assetViewController];
  v3 = BUProtocolCast();

  v2 = v3;
  if (v3)
  {
    [v3 forceRepagination];
    v2 = v3;
  }
}

id sub_10005F878(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 proposedBeginState];
  if (WeakRetained)
  {
    objc_opt_class();
    v6 = [WeakRetained presentedViewController];
    v7 = BUDynamicCast();

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v9 = [WeakRetained assetViewController];
      v8 = [v9 dismissShouldBegin:v3];
    }
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

void sub_10005FB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005FB24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _willOpenBookAnimated:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void sub_10005FE34(uint64_t a1)
{
  v2 = BCCurrentBookLiveResizeLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1007893BC(a1);
  }

  if ([*(a1 + 32) scrimAppliedForLiveResize])
  {
    v3 = [*(a1 + 32) transitioningViewController];
    v4 = [v3 viewIfLoaded];

    if (v4)
    {
      v5 = [*(a1 + 32) view];
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v42.origin.x = v7;
      v42.origin.y = v9;
      v42.size.width = v11;
      v42.size.height = v13;
      Width = CGRectGetWidth(v42);
      v43.origin.x = v7;
      v43.origin.y = v9;
      v43.size.width = v11;
      v43.size.height = v13;
      Height = CGRectGetHeight(v43);
      [*(a1 + 32) liveResizeViewOriginalFrame];
      v16 = CGRectGetWidth(v44);
      [*(a1 + 32) liveResizeViewOriginalFrame];
      v17 = CGRectGetHeight(v45);
      if (v16 > 1.0 && v17 > 1.0 && Width > 1.0 && Height > 1.0)
      {
        if ([*(a1 + 32) aspectFitDuringResize])
        {
          if (Width / Height <= v16 / v17)
          {
            v18 = Width / v16;
          }

          else
          {
            v18 = Height / v17;
          }

          CGAffineTransformMakeScale(&v41, v18, v18);
          v19 = [*(a1 + 32) scrimLiveResizeView];
          v20 = [v19 layer];
          v21 = v20;
          v38 = *&v41.a;
          v39 = *&v41.c;
          v22 = *&v41.tx;
        }

        else
        {
          CGAffineTransformMakeScale(&v37, Width / v16, Height / v17);
          v19 = [*(a1 + 32) scrimLiveResizeView];
          v20 = [v19 layer];
          v21 = v20;
          v38 = *&v37.a;
          v39 = *&v37.c;
          v22 = *&v37.tx;
        }

        v40 = v22;
        [v20 setAffineTransform:&v38];

        v23 = [*(a1 + 32) scrimLiveResizeView];
        [v23 frame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v32 = *(a1 + 40);
        v46.origin.x = v25;
        v46.origin.y = v27;
        v46.size.width = v29;
        v46.size.height = v31;
        v33 = (v32 - CGRectGetWidth(v46)) * 0.5;
        v34 = *(a1 + 48);
        v47.origin.x = v25;
        v47.origin.y = v27;
        v47.size.width = v29;
        v47.size.height = v31;
        v35 = (v34 - CGRectGetHeight(v47)) * 0.5;
        v36 = [*(a1 + 32) scrimLiveResizeView];
        [v36 setFrame:{v33, v35, v29, v31}];
      }
    }
  }
}

void sub_1000600C0(uint64_t a1)
{
  v2 = BCCurrentBookLiveResizeLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1007894AC(a1);
  }

  v3 = [*(a1 + 32) assetViewController];
  [v3 assetViewControllerUpdateCloseStateTypeIfNeeded];

  if ([*(a1 + 32) stateFlags])
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) placeholderViewController];
    v7 = [v6 view];
    [v7 setFrame:{0.0, 0.0, v4, v5}];

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = [*(a1 + 32) assetViewController];
    v11 = [v10 view];
    [v11 setFrame:{0.0, 0.0, v8, v9}];
  }

  [*(a1 + 32) setStateFlags:{objc_msgSend(*(a1 + 32), "stateFlags") & 0xFFFFFFFFFFFFFFBFLL}];
  v12 = [*(a1 + 32) transitionCompletedBlock];
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12);
  }

  [*(a1 + 32) setTransitionCompletedBlock:0];
}

void sub_1000603BC(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

id sub_100060650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _loadWithAssetViewController:a2 helper:a3];
  v4 = *(a1 + 32);

  return [v4 setLoadAssetBlock:0];
}

void sub_100060AB0(uint64_t a1)
{
  [*(a1 + 32) setAssetViewController:*(a1 + 40)];
  [*(a1 + 32) setAssetHelper:*(a1 + 48)];
  [*(a1 + 32) _startBookSuccessfullyOpenedTimer];
  v2 = [*(a1 + 40) asset];
  v3 = +[BKBasePresentingViewController animatorForAsset:isCurrentBook:opening:largeCover:skipZoom:](BKAssetPresentingViewController, "animatorForAsset:isCurrentBook:opening:largeCover:skipZoom:", v2, 0, 1, [*(a1 + 56) coverAnimationSourceUseLargeCover], 1);
  v4 = [*(a1 + 56) coverAnimationSourceImage];
  [v3 setCoverImage:v4];

  v5 = [*(a1 + 32) openOptions];
  v6 = [v5 objectForKeyedSubscript:@"BKBookPresentingCoverShadowImage"];
  [v3 setCoverShadowImage:v6];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100060D84;
  v19[3] = &unk_100A03C28;
  v20 = *(a1 + 56);
  [v3 setClosedCoverFrameBlock:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100060D8C;
  v17[3] = &unk_100A033C8;
  v18 = *(a1 + 56);
  [v3 setPreTransitionBlock:v17];
  [v3 setAssertions:0];
  [*(a1 + 40) setAssetViewControllerDelegate:*(a1 + 32)];
  [*(a1 + 40) setContentOpenAnimator:v3];
  [*(a1 + 32) setAssetPresenterAnimator:v3];
  v7 = [*(a1 + 40) asset];
  v8 = [v7 url];

  objc_initWeak(&location, *(a1 + 32));
  v9 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100060D94;
  v12[3] = &unk_100A03C50;
  objc_copyWeak(&v15, &location);
  v10 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v10;
  v11 = v3;
  v14 = v11;
  [v9 _updateLibraryAssetFromMetadataWithURL:v8 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void sub_100060D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100060D94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _willOpenBookAnimated:1];
    v4 = [v3 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKScenePresenting];
    [v3 setStateFlags:{objc_msgSend(v3, "stateFlags") | 1}];
    [v4 presenterVisibleViewControllerWillChangeAnimated:1];
    v5 = [*(a1 + 32) transitioningViewController];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100060EF0;
    v9[3] = &unk_100A03648;
    objc_copyWeak(&v12, (a1 + 56));
    v10 = *(a1 + 40);
    v8 = v4;
    v11 = v8;
    [v5 transitionToContentViewController:v6 withTransition:v7 completion:v9];

    objc_destroyWeak(&v12);
  }
}

void sub_100060EF0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained setMinifiedBarHidden:0];
    [a1[4] setContentOpenAnimator:0];
    [a1[5] presenterVisibleViewControllerDidChangeAnimated:1];
    [v8 _didOpenBookAnimated:1];
    v4 = [v8 view];
    [v4 setOpaque:1];

    [v8 setStateFlags:{objc_msgSend(v8, "stateFlags") & 0xFFFFFFFFFFFFFFFBLL}];
    [v8 setStateFlags:{objc_msgSend(v8, "stateFlags") & 0xFFFFFFFFFFFFFFFELL}];
    v5 = [v8 stateFlags];
    v3 = v8;
    if ((v5 & 2) != 0)
    {
      [v8 im_dismissAnimated:1];
      v6 = [v8 errorCloseBlock];
      v7 = v6;
      if (v6)
      {
        (*(v6 + 16))(v6);
      }

      [v8 setErrorCloseBlock:0];
      v3 = v8;
    }
  }
}

id sub_100061004(uint64_t a1)
{
  v2 = [*(a1 + 32) placeholderViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [*(a1 + 32) placeholderViewController];
    [v4 setShowBackButton:0];
  }

  v5 = [*(a1 + 32) stateFlags];
  v6 = *(a1 + 40);
  if ((v5 & 0x40) != 0)
  {
    v10 = *(a1 + 32);

    return [v10 setTransitionCompletedBlock:v6];
  }

  else
  {
    v7 = *(v6 + 16);
    v8 = *(a1 + 40);

    return v7(v8);
  }
}

void sub_1000610CC(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100061200;
    v5[3] = &unk_100A033C8;
    v6 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000612F0;
    v3[3] = &unk_100A03CA0;
    v4 = *(a1 + 40);
    [UIView animateWithDuration:v5 animations:v3 completion:0.2];
  }

  else
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }
}

void sub_100061200(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) setAlpha:{0.0, v6}];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1000618E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100061944(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!+[NSThread isMainThread])
  {
    sub_100789614();
  }

  v5 = [v3 assetID];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v4 assetIdentifier];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v9 = [v3 assetID];
      v10 = [BKAssetID identifierWithAssetID:v9];
      [v4 setAssetIdentifier:v10];
    }
  }

  else
  {
    v11 = sub_10005D1D8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100789650();
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100061AD4;
  v12[3] = &unk_100A03CF0;
  v12[4] = *(a1 + 32);
  [v4 _waitForOngoingMigrationAttemptToFinish:v3 completion:v12];
}

void sub_100061AD4(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100061BE0;
  v4[3] = &unk_100A03CF0;
  v4[4] = *(a1 + 32);
  v1 = objc_retainBlock(v4);
  if (v1)
  {
    if (+[NSThread isMainThread])
    {
      (v1[2])(v1);
    }

    else
    {
      v2[0] = _NSConcreteStackBlock;
      v2[1] = 3221225472;
      v2[2] = sub_100061BF0;
      v2[3] = &unk_100A03920;
      v3 = v1;
      dispatch_async(&_dispatch_main_q, v2);
    }
  }
}

void sub_100061C00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!+[NSThread isMainThread])
  {
    sub_1007896C4();
  }

  v4 = [v3 assetID];
  v5 = [v3 dataSourceIdentifier];
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = sub_10005D1D8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 title];
    *buf = 141559042;
    v20 = 1752392040;
    v21 = 2112;
    v22 = v4;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 2112;
    v26 = v8;
    v27 = 2114;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resolveAndWaitAndLoadAssetVC: resolveLibraryAsset begin. assetID: %{mask.hash}@ title: %{mask.hash}@ dataSourceIdentifier: %{public}@", buf, 0x34u);
  }

  v9 = [v6 libraryAssetProvider];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100061E18;
  v14[3] = &unk_100A03D40;
  v15 = v4;
  v16 = v5;
  v10 = *(a1 + 32);
  v17 = v3;
  v18 = v10;
  v11 = v3;
  v12 = v5;
  v13 = v4;
  [v9 resolveLibraryAsset:v11 completion:v14];
}

void sub_100061E18(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  v7 = sub_10005D1D8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 141558786;
    v25 = 1752392040;
    v26 = 2112;
    v27 = v8;
    v28 = 2114;
    v29 = v9;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resolveAndWaitAndLoadAssetVC: resolveLibraryAsset end. assetID: %{mask.hash}@ dataSourceIdentifier: %{public}@ error: %@", buf, 0x2Au);
  }

  if (v6)
  {
    v10 = sub_10005D1D8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100789700();
    }
  }

  else if (a3)
  {
    v11 = +[BKLibraryManager defaultManager];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10006214C;
    v21[3] = &unk_100A03A58;
    v23 = *(a1 + 56);
    v22 = *(a1 + 48);
    [v11 addCustomOperationBlock:v21];

    v10 = v23;
  }

  else
  {
    v12 = sub_10005D1D8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      *buf = 141558530;
      v25 = 1752392040;
      v26 = 2112;
      v27 = v13;
      v28 = 2114;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "resolveAndWaitAndLoadAssetVC: resolveLibraryAsset returned NO. assetID: %{mask.hash}@ dataSourceIdentifier: %{public}@", buf, 0x20u);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000622A0;
    v18[3] = &unk_100A03A58;
    v20 = *(a1 + 56);
    v19 = *(a1 + 48);
    v15 = objc_retainBlock(v18);
    if (v15)
    {
      if (+[NSThread isMainThread])
      {
        (v15[2])(v15);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000622B4;
        block[3] = &unk_100A03920;
        v17 = v15;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    v10 = v20;
  }
}

void sub_10006214C(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006227C;
  v5[3] = &unk_100A03A58;
  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  v2 = objc_retainBlock(v5);
  if (v2)
  {
    if (+[NSThread isMainThread])
    {
      (v2[2])(v2);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100062290;
      block[3] = &unk_100A03920;
      v4 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_1000622C4(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000623A0;
  v5[3] = &unk_100A03D90;
  v6 = a1[4];
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v9, a1 + 6);
  v8 = a1[5];
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v9);
}

void sub_1000623A0(uint64_t a1)
{
  v2 = sub_10005D1D8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v13 = 141558530;
    v14 = 1752392040;
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] Auto Download resolved to Local.  Returned asset:%@", &v13, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = [WeakRetained downloadProgressBlock];
  v8 = v6;
  if (v6)
  {
    v9 = *(a1 + 40);
    v7.n128_u64[0] = 0;
    if (v9)
    {
      v7.n128_f64[0] = 1.0;
    }

    (*(v6 + 16))(v6, v9 != 0, v7);
  }

  [WeakRetained setStateFlags:{objc_msgSend(WeakRetained, "stateFlags") & 0xFFFFFFFFFFFFFFF7}];
  if ([WeakRetained autoOpen])
  {
    [WeakRetained setStateFlags:{objc_msgSend(WeakRetained, "stateFlags") | 4}];
    v10 = [WeakRetained libraryAssetProvider];
    v11 = [WeakRetained assetIdentifier];
    v12 = [v10 libraryAssetOnMainQueueWithAssetIdentifier:v11];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100063200(uint64_t a1)
{
  v2 = +[BCBookReadingTimeTracker sharedInstance];
  [v2 promoteTrackedAsset:*(a1 + 32) promoteIfNotTracked:0];
}

void sub_1000639FC(uint64_t a1)
{
  v2 = sub_10005D1D8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) assetIdentifier];
    v4 = [v3 permanentOrTemporaryAssetID];
    *buf = 141558274;
    v11 = 1752392040;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _reloadAssetCloseViewController after clearCache", buf, 0x16u);
  }

  v5 = [*(a1 + 32) assetViewController];
  [v5 setAssetViewControllerDelegate:0];

  [*(a1 + 32) setAssetViewController:0];
  [*(a1 + 32) setAssetHelper:0];
  v6 = [*(a1 + 32) assetIdentifier];
  v7 = [v6 permanentAssetID];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063BB8;
  v9[3] = &unk_100A03C00;
  v9[4] = *(a1 + 32);
  v8 = [BKAssetLookup assetLookupWithID:v7 options:&__NSDictionary0__struct completion:v9];
  [*(a1 + 32) setAssetLookup:v8];
}

void sub_100063BB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_10005D1D8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) assetIdentifier];
    v12 = [v11 permanentOrTemporaryAssetID];
    *buf = 141558274;
    v27 = 1752392040;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _reloadAssetCloseViewController after assetLookup", buf, 0x16u);
  }

  v14 = *(a1 + 32);
  v13 = (a1 + 32);
  [v14 setAssetViewController:v7];
  v15 = *v13;
  v16 = [*v13 assetViewController];
  [v16 setAssetViewControllerDelegate:v15];

  [*v13 setAssetHelper:v8];
  v17 = +[NSNotificationCenter defaultCenter];
  [v17 postNotificationName:@"BKPresentedAssetVCDidChangeNotificationName" object:*v13];

  v18 = [*v13 minifiedPresenter];
  [v18 minifiedPresenterDidReloadAssetViewController:v7];

  v19 = [v7 asset];
  v20 = [v19 url];

  objc_initWeak(buf, *v13);
  v21 = *v13;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100063E3C;
  v23[3] = &unk_100A03620;
  objc_copyWeak(&v25, buf);
  v23[4] = *v13;
  v22 = v7;
  v24 = v22;
  [v21 _updateLibraryAssetFromMetadataWithURL:v20 completion:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void sub_100063E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100063E3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = sub_10005D1D8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) assetIdentifier];
      v5 = [v4 permanentOrTemporaryAssetID];
      *buf = 141558274;
      v19 = 1752392040;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _reloadAssetCloseViewController after _updateLibraryAssetFromMetadataWithURL", buf, 0x16u);
    }

    [WeakRetained _willOpenBookAnimated:0];
    [WeakRetained setStateFlags:{objc_msgSend(WeakRetained, "stateFlags") | 1}];
    v6 = [WeakRetained im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKScenePresenting];
    [v6 presenterVisibleViewControllerWillChangeAnimated:0];
    v7 = objc_alloc_init(BKBookReloadAnimator);
    v8 = [WeakRetained assetViewController];
    [v8 setContentOpenAnimator:v7];

    v9 = [WeakRetained assetViewController];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [WeakRetained assetViewController];
      [v11 setAssetReloading:1];
    }

    v12 = [WeakRetained transitioningViewController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000640B4;
    v15[3] = &unk_100A03E08;
    v13 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    objc_copyWeak(&v17, (a1 + 48));
    v14 = v6;
    v16 = v14;
    [v12 transitionToContentViewController:v13 withTransition:v7 completion:v15];

    objc_destroyWeak(&v17);
  }
}

void sub_1000640B4(id *a1)
{
  v2 = sub_10005D1D8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] assetIdentifier];
    v4 = [v3 permanentOrTemporaryAssetID];
    v19 = 141558274;
    v20 = 1752392040;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _reloadAssetCloseViewController after transitionToContentViewController", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setMinifiedBarHidden:0];
    v7 = [v6 assetViewController];
    [v7 setContentOpenAnimator:0];

    v8 = [v6 assetViewController];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [v6 assetViewController];
      [v10 setAssetReloading:0];
    }

    [a1[5] presenterVisibleViewControllerDidChangeAnimated:0];
    [v6 _didOpenBookAnimated:0];
    v11 = [v6 view];
    [v11 setOpaque:1];

    [v6 setStateFlags:{objc_msgSend(v6, "stateFlags") & 0xFFFFFFFFFFFFFFFBLL}];
    [v6 setStateFlags:{objc_msgSend(v6, "stateFlags") & 0xFFFFFFFFFFFFFFFELL}];
    v12 = [v6 sessionID];

    if (!v12)
    {
      v13 = +[UIApplication sharedApplication];
      v14 = [v13 applicationState];

      v15 = BCCurrentBookLog();
      v16 = v15;
      if (v14 == 2)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1007897D8(v6, v16);
        }
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Book reloaded with no active tracking session so start tracking.", &v19, 2u);
        }

        [v6 _beginReadingSessionForEventType:0];
      }
    }

    if (([v6 stateFlags] & 2) != 0)
    {
      [v6 im_dismissAnimated:1];
      v17 = [v6 errorCloseBlock];
      v18 = v17;
      if (v17)
      {
        (*(v17 + 16))(v17);
      }

      [v6 setErrorCloseBlock:0];
    }
  }
}

void sub_100064A60(uint64_t a1)
{
  v2 = [*(a1 + 32) liveResizeWrapperView];
  [v2 setAlpha:0.0];

  v4 = [*(a1 + 32) transitioningViewController];
  v3 = [v4 view];
  [v3 setAlpha:1.0];
}

uint64_t sub_100064AE0(uint64_t a1)
{
  [*(a1 + 32) _clearLiveResizeViews];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 assetViewControllerDidFinishUpdateForLiveResize];
  }

  return result;
}

void sub_100065150(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000651E8;
  block[3] = &unk_100A03E80;
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000651E8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 40) sampleProfileFuture];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000652B4;
    v4[3] = &unk_100A03E58;
    v4[4] = *(a1 + 40);
    [v2 get:v4];
  }

  else
  {
    [*(a1 + 32) setModeState:1];
    v3 = *(a1 + 32);

    [v3 setDisableInteraction:0];
  }
}

id sub_1000652B4(uint64_t a1, void *a2)
{
  result = [a2 isPreorder];
  if (result)
  {
    [*(a1 + 32) setBuyButtonItem:0];
    v4 = *(a1 + 32);

    return [v4 assetPresenterUpdateToolbars];
  }

  return result;
}

void sub_1000655D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 libraryAssetProvider];
  v6 = [*(a1 + 32) assetIdentifier];
  v7 = [v5 libraryMutableAssetWithAssetIdentifier:v6 inManagedObjectContext:v4];

  [v7 setFinishedStateAssetRead];
  [*(a1 + 32) setStateFlags:{objc_msgSend(*(a1 + 32), "stateFlags") | 0x10}];
}

void sub_1000657E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000658BC;
  block[3] = &unk_100A03A30;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100065BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100065C20(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065CE8;
  block[3] = &unk_100A03620;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_100065CE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _configureBuyButtonForPricing:*(a1 + 32) profile:*(a1 + 40)];
}

void sub_100065F18(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065FF0;
  block[3] = &unk_100A039C0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v11 = v4;
  v12 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100065FF0(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryMutableAssetWithPermanentOrTemporaryAssetID:*(a1 + 40) inManagedObjectContext:*(a1 + 48)];
  if (([v2 isFinished] & 1) == 0)
  {
    v20[0] = BKLibraryAssetMarkedLocation;
    v20[1] = BKLibraryAssetIDKey;
    v3 = *(a1 + 40);
    v21[0] = BALocationTypePostReading;
    v21[1] = v3;
    v4 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    [v2 setFinishedStateUserSetsFinished:1 userInfo:v4];

    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = [v2 dateFinished];
    [v5 willMarkAsset:v6 finished:1 finishedDate:v7];

    if ([v2 isOwned])
    {
      v8 = [v2 storeID];
      if ([v8 length])
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = +[BAUtilities contentTypeFromAssetType:](BAUtilities, "contentTypeFromAssetType:", [v2 contentType]);
    v11 = +[BAEventReporter sharedReporter];
    v12 = [v11 seriesTypeForContentID:*(a1 + 40)];

    if ([v2 isAudiobook])
    {
      v13 = [v2 hasRACSupport];
      if ([v13 BOOLValue])
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = +[BAEventReporter sharedReporter];
    v16 = [*(a1 + 64) ba_effectiveAnalyticsTracker];
    v17 = *(a1 + 40);
    v18 = [v2 supplementalContentAssets];
    v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 count]);
    [v15 emitMarkAsFinishedEventWithTracker:v16 contentID:v17 contentAcquisitionType:v9 contentType:v10 supplementalContentCount:v19 seriesType:v12 productionType:v14];
  }
}

void sub_100066588(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10006663C;
    v4[3] = &unk_100A03440;
    v5 = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

void sub_100066B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100066BC4(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = +[BKContextMenuProvider sharedProvider];
    v5 = [*(a1 + 32) dataModelWithSourceView:*(a1 + 40)];
    v6 = [v4 menuElementsForViewController:WeakRetained dataModel:v5];

    v7[2](v7, v6);
  }

  else
  {
    v7[2](v7, &__NSArray0__struct);
  }
}

void sub_100066F60(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      [*(a1 + 40) setObject:v3 forKeyedSubscript:BCTransactionOptionsTransactionKey];
    }

    v4 = [*(a1 + 48) assetLogID];
    [*(a1 + 40) setObject:v4 forKeyedSubscript:AEAssetLogID];

    v5 = [*(a1 + 56) im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
    v6 = *(a1 + 64);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100067084;
    v11[3] = &unk_100A03F48;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = v9;
    v13 = v10;
    [v5 showAssetWithTransaction:v7 assetIdentifier:v6 location:0 options:v8 completion:v11];
  }
}

void sub_100067084(uint64_t a1, char a2)
{
  if ([*(a1 + 32) isValid] && (a2 & 1) == 0)
  {
    v4 = [*(a1 + 40) placeholderViewController];
    v5 = [v4 coverAnimationHostSourceForItem:*(a1 + 32)];

    [v5 coverAnimationSourceFinalize];
  }
}

void sub_100067444(uint64_t a1)
{
  v2 = [*(a1 + 32) im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedPresenting];
  v3 = +[BKAppDelegate sceneManager];
  v4 = [v3 primarySceneController];
  v5 = [v4 primaryScenePresenting];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100067538;
  v8[3] = &unk_100A03440;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [v2 minifiedPresenterUpdateCurrentBookWithCompletion:v8];
}

void sub_10006754C(id a1)
{
  v1 = BCCurrentBookLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Updated recent books feed as a result of a book promotion", v2, 2u);
  }
}

void sub_1000678C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _confirmBookSuccessfullyOpened];
}

void sub_1000682A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = 0;
  v11 = v7;
  if (a2 && a3)
  {
    v9 = a3;
    v10 = a2;
    v8 = [(BKBasePresentingViewController *)[BKAssetPresentingViewController alloc] initWithAssetIdentifier:*(a1 + 32) assetViewController:v10 helper:v9 libraryAssetProvider:*(a1 + 40)];

    [(BKBasePresentingViewController *)v8 setOpenOptions:*(a1 + 48)];
    v7 = v11;
  }

  [*(a1 + 56) set:v8 error:v7];
}

void sub_100068368(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 code] == 1)
  {
    v4 = [v6 domain];
    v5 = [v4 isEqualToString:BCFutureErrorDomain];

    if (v5)
    {
      [*(a1 + 32) cancel];
    }
  }
}

void sub_100068B28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

id sub_100068B50(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 41);
  v4.receiver = *(a1 + 32);
  v4.super_class = BKBasePresentingViewController;
  return objc_msgSendSuper2(&v4, "im_dismissAnimated:immediate:", v1, v2);
}

void sub_100068B94(uint64_t a1)
{
  v2 = UIApp;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100068C5C;
  v3[3] = &unk_100A04058;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 _performBlockAfterCATransactionCommits:v3];

  objc_destroyWeak(&v5);
}

void sub_100068C5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPreparingEndOfBookExperience:0];
  (*(*(a1 + 32) + 16))();
  v2 = +[UIApplication sharedApplication];
  [v2 endIgnoringInteractionEvents];
}

void sub_100068CD8(uint64_t a1, char a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100068D90;
  v5[3] = &unk_100A040E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v8 = *(a1 + 56);
  v6 = v4;
  v9 = a2;
  v7 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100068D90(uint64_t a1)
{
  v2 = [*(a1 + 32) im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedPresenting];
  v3 = +[BKAppDelegate sceneManager];
  v4 = [v3 primarySceneController];
  v5 = [v4 primaryScenePresenting];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100068ECC;
  v10[3] = &unk_100A040C0;
  v16 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v5;
  v12 = v2;
  v17 = *(a1 + 57);
  v13 = *(a1 + 32);
  v14 = v7;
  v15 = *(a1 + 48);
  v8 = v2;
  v9 = v5;
  [v9 presenterFixInterfaceOrientationIfNeededWithAssetPresenter:v6 completion:v10];
}

void sub_100068ECC(uint64_t a1, char a2)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100069090;
  v14[3] = &unk_100A04078;
  v15 = a2;
  v3 = objc_retainBlock(v14);
  v4 = v3;
  if (*(a1 + 72) == 1)
  {
    (*(*(a1 + 56) + 16))();
  }

  else if (*(a1 + 32) && *(a1 + 40) && *(a1 + 73) == 1)
  {
    v5 = +[UIApplication sharedApplication];
    [v5 beginIgnoringInteractionEvents];

    [*(a1 + 48) setPreparingEndOfBookExperience:1];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100069114;
    v11[3] = &unk_100A03440;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v12 = v7;
    v13 = v8;
    [v6 minifiedPresenterUpdateCurrentBookWithCompletion:v11];
    v9 = BCCurrentBookLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Dismissing current book", v10, 2u);
    }

    v4[2](v4, *(a1 + 64));
  }

  else
  {
    (v3[2])(v3, *(a1 + 56));
  }
}

void sub_100069090(uint64_t a1, void (**a2)(void))
{
  if (*(a1 + 32) == 1)
  {
    v2 = a2;
    v3 = dispatch_time(0, 300000000);
    dispatch_after(v3, &_dispatch_main_q, v2);
  }

  else
  {
    a2[2](a2);
  }
}

void sub_100069128(id a1)
{
  v1 = BCCurrentBookLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Did finish snapshot and feed update for end of book", v2, 2u);
  }
}

void sub_100069284(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069310;
  block[3] = &unk_100A03490;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100069310(uint64_t a1)
{
  v2 = [*(a1 + 32) im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedPresenting];
  v3 = +[BKAppDelegate sceneManager];
  v4 = [v3 primarySceneController];
  v5 = [v4 primaryScenePresenting];

  v6 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100069434;
  v9[3] = &unk_100A04138;
  v10 = v5;
  v11 = v2;
  v14 = *(a1 + 48);
  v12 = v6;
  v13 = *(a1 + 40);
  v7 = v2;
  v8 = v5;
  [v8 presenterFixInterfaceOrientationIfNeededWithAssetPresenter:v6 completion:v9];
}

void sub_100069434(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40) && *(a1 + 64) == 1)
  {
    v2 = +[UIApplication sharedApplication];
    [v2 beginIgnoringInteractionEvents];

    [*(a1 + 48) setPreparingEndOfBookExperience:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100069538;
    v6[3] = &unk_100A03788;
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    v6[4] = *(a1 + 48);
    v7 = v4;
    [v3 minifiedPresenterUpdateCurrentBookWithCompletion:v6];
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

uint64_t sub_100069538(uint64_t a1)
{
  [*(a1 + 32) setPreparingEndOfBookExperience:0];
  v2 = +[UIApplication sharedApplication];
  [v2 endIgnoringInteractionEvents];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100069758(uint64_t a1)
{
  [*(*(a1 + 32) + 200) progressValue];
  v3 = v2;
  v4 = [*(a1 + 32) _buyButton];
  *&v5 = v3;
  [v4 setProgress:v5];

  v6 = [*(a1 + 32) assetViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [*(a1 + 32) assetViewController];
    [*(*(a1 + 32) + 200) progressValue];
    *&v8 = v8;
    [v9 setBuyButtonProgress:v8];
  }
}

void sub_100069D7C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 allValues];
  v8 = [v7 lastObject];

  v9 = [v8 buyParameters];

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      (*(v10 + 2))(v10, v8, 0);
    }
  }

  else if (v10)
  {
    if (v6)
    {
      (*(v10 + 2))(v10, 0, v6);
    }

    else
    {
      v12 = *(a1 + 32);
      v15 = @"storeID";
      v16 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v14 = [NSError errorWithDomain:@"BKAssetPresentingViewControllerErrorDomain" code:1001 userInfo:v13];
      (v11)[2](v11, 0, v14);
    }
  }
}

id sub_10006A1A4(uint64_t a1)
{
  v2 = [*(a1 + 32) progressStatus];

  if (!v2)
  {
    v3 = +[BKLibraryAssetStatusController sharedController];
    v4 = [v3 statusForAssetID:*(a1 + 40)];
    [*(a1 + 32) setProgressStatus:v4];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _updateAssetStateAndDownloadStatus:v6];
}

void sub_10006A4D8(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = 0.0;
  if (v2 == 6)
  {
    v5 = 2;
  }

  else if (v2 == 5)
  {
    [*(a1 + 32) progressValue];
    v3 = v6;
    v5 = 3;
  }

  else if (v2 == 4)
  {
    [*(a1 + 32) progressValue];
    v3 = v4;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if ([*(a1 + 32) state] == 4)
  {
    v7 = 2;
  }

  else
  {
    v8 = [*(a1 + 40) libraryAssetProvider];
    v9 = [*(a1 + 40) assetIdentifier];
    v10 = [v8 libraryAssetOnMainQueueWithAssetIdentifier:v9];

    v7 = [v10 state];
  }

  v11 = sub_10005D1D8();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) state]);
    v13 = [*(a1 + 32) assetID];
    v16 = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_updateAssetStateAndDownloadStatus: %{public}@, assetID: %@", &v16, 0x16u);
  }

  v14 = [*(a1 + 40) assetViewController];
  *&v15 = v3;
  [v14 setDownloadState:v5 assetState:v7 progressValue:v15];
}

void sub_10006AD4C(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10006B1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_retainBlock(*(a1 + 32));
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, a3);
    v4 = v5;
  }
}

void sub_10006C308(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10006C32C(id *a1, void *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006C44C;
  v10[3] = &unk_100A04250;
  v11 = a2;
  v3 = v11;
  objc_copyWeak(&v14, a1 + 8);
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v12 = v9;
  v13 = v8;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v14);
}

void sub_10006C44C(uint64_t a1)
{
  v2 = [*(a1 + 32) buyParameters];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = [WeakRetained upSellData];

  v5 = objc_loadWeakRetained((a1 + 72));
  v6 = [v5 appAnalyticsAdditionalData];

  v7 = objc_opt_new();
  [v7 setObject:*(a1 + 40) forKeyedSubscript:@"BATracker"];
  if (v4)
  {
    [v7 setObject:v4 forKeyedSubscript:@"upSellData"];
  }

  if (v6 && _os_feature_enabled_impl())
  {
    v8 = [v6 dictionary];
    [v7 setObject:v8 forKeyedSubscript:BAAppAnalyticsAdditionalDataKey];
  }

  v9 = objc_loadWeakRetained((a1 + 72));
  v10 = [v9 libraryAssetProvider];

  if (v10)
  {
    v11 = [*(a1 + 48) adamIDStringValue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006C6A4;
    v14[3] = &unk_100A04228;
    v15 = v2;
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v18 = v7;
    v19 = v10;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    [v19 fetchLibraryAssetFromStoreID:v11 handler:v14];
  }

  else
  {
    v12 = objc_retainBlock(*(a1 + 64));
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0, 0);
    }
  }
}

void sub_10006C6A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_opt_new();
    [v7 setObject:JSARecordEventTypeClick forKeyedSubscript:JSARecordKeyEventType];
    [v7 setObject:JSARecordActionTypeBuy forKeyedSubscript:JSARecordKeyActionType];
    v8 = *(a1 + 32);
    if (!v8)
    {
      v8 = &stru_100A30A68;
    }

    v23[0] = @"buyParams";
    v23[1] = @"type";
    v24[0] = v8;
    v24[1] = @"sampleUpsell";
    v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v7 setObject:v9 forKeyedSubscript:JSARecordKeyActionDetails];

    v10 = [*(a1 + 40) offer];
    v11 = [v10 objectForKeyedSubscript:@"type"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"buy";
    }

    [v7 setObject:v13 forKeyedSubscript:JSARecordKeyOfferType];

    [v7 setObject:*(a1 + 48) forKeyedSubscript:JSARecordKeyTargetId];
    [v7 setObject:JSARecordTargetTypeButton forKeyedSubscript:JSARecordKeyTargetType];
    [JSAApplication recordNativeEvent:v7 additionalInfo:*(a1 + 56)];
    v14 = *(a1 + 64);
    v15 = *(a1 + 32);
    v16 = [v5 isAudiobook];
    v17 = *(a1 + 56);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10006C980;
    v19[3] = &unk_100A04200;
    v20 = *(a1 + 72);
    v21 = *(a1 + 40);
    v22 = *(a1 + 80);
    [BKBookPurchaseAction tryToPurchaseBook:v5 libraryAssetProvider:v14 buyParameters:v15 allowPurchaseFromNonSampleBuyButton:0 suppressNetworkEvaluatorDialogs:v16 analyticsInfo:v17 completion:v19];
  }

  else
  {
    v18 = objc_retainBlock(*(a1 + 80));
    v7 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, 0, v6);
    }
  }
}

void sub_10006C980(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006CA90;
    v10[3] = &unk_100A041D8;
    v12 = *(a1 + 48);
    v13 = a2;
    v11 = v5;
    [v6 didPurchaseWithProductProfile:v7 completion:v10];
  }

  else
  {
    v8 = objc_retainBlock(*(a1 + 48));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, a2, v5);
    }
  }
}

void sub_10006CA90(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 32));
    v2 = v3;
  }
}

void sub_10006CE3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10006CE68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BCProgressKitController sharedController];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 80);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006CFB4;
  v10[3] = &unk_100A042F0;
  objc_copyWeak(&v14, (a1 + 72));
  v15 = *(a1 + 88);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 64);
  [v4 didOpenBookWithAssetID:v5 version:v6 title:v8 pageCount:v7 storeID:v9 coverImage:v3 completion:v10];

  objc_destroyWeak(&v14);
}

void sub_10006CFB4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v3 || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 BOOLForKey:@"BKForceReadingStatisticsEnabled"], v5, v6))
    {
      if (*(a1 + 64) == 1)
      {
        v7 = [[BCReadingStatisticsController alloc] initWithAssetID:*(a1 + 32) versionString:*(a1 + 40)];
        [WeakRetained setReadingStatisticsController:v7];

        v8 = [WeakRetained readingStatisticsController];
        [v8 addObserver:WeakRetained];

        v9 = [WeakRetained readingStatisticsController];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10006D24C;
        v19[3] = &unk_100A042A0;
        objc_copyWeak(&v20, (a1 + 56));
        [v9 setupWithCompletion:v19];

        objc_destroyWeak(&v20);
      }

      v10 = [WeakRetained readingStatisticsController];

      if (v10)
      {
        v11 = +[BCProgressKitController sharedController];
        v12 = [WeakRetained readingStatisticsController];
        [v11 addReadingStatisticsController:v12 forAssetID:*(a1 + 32)];

        v13 = [WeakRetained readingStatisticsController];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10006D2DC;
        v17[3] = &unk_100A042C8;
        v14 = v18;
        v18[0] = *(a1 + 48);
        v18[1] = WeakRetained;
        [v13 tocCFIMapWithCompletion:v17];
      }

      else
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10006D3AC;
        v15[3] = &unk_100A033C8;
        v14 = &v16;
        v16 = *(a1 + 48);
        dispatch_async(&_dispatch_main_q, v15);
      }
    }
  }
}

void sub_10006D24C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a2)
  {
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v4 = [WeakRetained assetViewController];
      v5 = objc_opt_respondsToSelector();

      WeakRetained = v7;
      if (v5)
      {
        v6 = [v7 assetViewController];
        [v6 assetViewControllerReadyToAnswerReadingStatisticsQueries];

        WeakRetained = v7;
      }
    }
  }
}

void sub_10006D2DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10006D3A0;
    v4[3] = &unk_100A03440;
    v5 = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v4);
  }

  else
  {
    [*(a1 + 40) setNeedToForcePagination:1];
  }
}

void sub_10006F6AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10006F6C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  v3 = v2;
  if (*(a1 + 32))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    [v2 minifiedFlowControllerHandleAssetPresentationError:? assetID:? isRetry:?];
  }
}

void sub_10006FD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10006FD68(id *a1)
{
  [a1[4] minifiedAssetPresenterWillCloseAssetMinified];
  if ([a1[5] _legacyMinibarBehavior])
  {
    [a1[6] willMoveToParentViewController:0];
    v2 = [a1[6] view];
    [v2 removeFromSuperview];

    [a1[6] removeFromParentViewController];
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v4 = [WeakRetained minibarContainerView];
    v5 = objc_loadWeakRetained(a1 + 7);
    [v4 setHidden:{objc_msgSend(v5, "minibarVisible") ^ 1}];
  }

  v6 = a1[4];

  return [v6 minifiedAssetPresenterDidCloseAssetMinified];
}

void sub_100070000(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 minifiedAssetPresenterAssetID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    [v7 minifiedAssetPresenterDidReloadAssetViewController:*(a1 + 40)];
    *a3 = 1;
  }
}

void sub_100070B4C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) minibarContainerView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void sub_100070BB8(uint64_t a1)
{
  [*(a1 + 32) setMinibarVisible:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = [v2 audioBookAssetPresenter];
  [v2 _layoutPresenterMinibar:v3];

  [*(a1 + 32) _notifyToolbars];
  v4 = objc_retainBlock(*(a1 + 40));
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

void sub_100071344(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 audioBookAssetPresenter];
  [v1 _layoutPresenterMinibar:v2];
}

void sub_100071CE0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 assetID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_100071D44(uint64_t a1)
{
  v2 = +[BKLibraryManager defaultManager];
  v3 = [v2 libraryAssetOnMainQueueWithAssetID:*(a1 + 32)];

  if (!*(*(*(a1 + 40) + 8) + 24) || [v3 isSupplementalContent])
  {
    v4 = BCCurrentBookLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Current book is not found in the recent books list or has became ASC. Clearing it.", v5, 2u);
    }

    +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  }
}

void sub_100072098(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _cleanLastKnownCurrentBookIfNecessary:*(a1 + 32)];
  v3 = [*(a1 + 32) firstObject];
  v4 = [v3 assetID];
  if ([v3 isSupplementalContent])
  {
    +[BKLibraryManager defaultManager];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100072348;
    v19 = v18[3] = &unk_100A044A0;
    v20 = v4;
    v5 = v19;
    [v5 performBlockOnWorkerQueue:v18];
  }

  if ([WeakRetained _shouldHandleCurrentBookNotification:v4])
  {
    v6 = BCCurrentBookLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No book presented, setting up for new current book.", v17, 2u);
    }

    v7 = [WeakRetained currentBookAssetPresenter];
    v8 = [v7 minifiedAssetPresenterAssetID];
    v9 = [v8 isEqualToString:v4];

    if ((v9 & 1) == 0)
    {
      v10 = [WeakRetained currentBookAssetPresenter];
      if (v10)
      {
        v11 = v10;
        v12 = [WeakRetained currentBookAssetPresenter];
        if ([v12 minifiedAssetPresenterIsAudiobook])
        {
        }

        else
        {
          v13 = +[BKSceneUtilities hasMultiWindowEnabled];

          if ((v13 & 1) == 0)
          {
            v14 = BCCurrentBookLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *v17 = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Closing previous minified presenter as we are showing the cover.", v17, 2u);
            }

            v15 = [WeakRetained currentBookAssetPresenter];
            [WeakRetained _closeMinifiedPresenter:v15 animated:0 completion:0];

            [WeakRetained setCurrentBookAssetPresenter:0];
          }
        }
      }
    }

    v16 = BCCurrentBookLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Presenting current book as cover. Current book is not considered active, the book is not local, or most recent book is not the last known current book.", v17, 2u);
    }
  }

  else
  {
    [WeakRetained setIgnoredCurrentBookNotification:*(a1 + 40)];
  }
}

void sub_100072348(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) libraryMutableAssetWithPermanentOrTemporaryAssetID:*(a1 + 40) inManagedObjectContext:a2];
  [v2 setIsTrackedAsRecent:0];
}

void sub_100072764(uint64_t a1)
{
  if ([*(a1 + 32) useUIPFluidOpenTransition])
  {
    v2 = +[AETestDriver shared];
    [v2 postEvent:kBETestDriverOpenAnimationRevealEnd sender:*(a1 + 32)];

    v3 = +[AETestDriver shared];
    [v3 postEvent:kBETestDriverOpenAnimationEnd sender:*(a1 + 32)];
  }

  v4 = [*(a1 + 32) assetPresenter];
  [v4 setStateShouldOpen:0];
}

void sub_100072A4C(uint64_t a1)
{
  if ([*(a1 + 32) useUIPFluidOpenTransition])
  {
    v2 = +[AETestDriver shared];
    [v2 postEvent:kBETestDriverOpenAnimationEnd sender:*(a1 + 32)];
  }

  v3 = [*(a1 + 32) assetPresenter];
  [v3 assetPresenterDismissalDidEnd:*(a1 + 40)];
}

UIColor *__cdecl sub_100072F6C(id a1, UIColor *a2)
{
  v2 = a2;
  v3 = [(UIColor *)v2 colorWithAlphaComponent:0.12];
  v4 = [(UIColor *)v2 colorWithAlphaComponent:0.15];

  v5 = [UIColor bc_dynamicColorWithLightColor:v3 darkColor:v4];

  return v5;
}

id sub_1000737CC(uint64_t a1)
{
  if ([*(a1 + 32) opening])
  {
    v2 = [*(a1 + 32) minifiedBarAnimator];
    v3 = [*(a1 + 32) toViewController];
    [v2 minifiedBarAnimatorFinalizeHideIfNeededToViewController:v3];
  }

  v4 = *(a1 + 32);

  return [v4 _animationDidFinish];
}

void sub_100073848(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 duration];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073924;
  v7[3] = &unk_100A04558;
  v7[4] = *(a1 + 32);
  v5 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v5;
  v6 = *(a1 + 88);
  v10 = *(a1 + 72);
  v11 = v6;
  [UIView animateWithDuration:"animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:" delay:0 usingSpringWithDamping:v7 initialSpringVelocity:v4 options:? animations:? completion:?];
}

void sub_100073924(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) clipView];
  [v6 setFrame:{v2, v3, v4, v5}];

  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = [*(a1 + 32) tabBarView];
  [v11 setFrame:{v7, v8, v9, v10}];
}

void sub_10007488C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"BKApplicationDidTakeSnapshot" object:*(a1 + 32)];
}

void sub_1000762F8(id a1)
{
  IMAccessibilityInstallSafeCategory();

  IMAccessibilityInstallSafeCategory();
}

void sub_1000763A0(void *a1)
{
  v1 = a1;
  v1[2]();
}

id sub_10007643C(void *a1)
{
  v1 = a1;
  v2 = +[BKAppDelegate sceneManager];
  if (!v1 || ([v1 rootViewController], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "sceneControllerForViewController:", v3), v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v4 = [v2 currentSceneController];
  }

  objc_opt_class();
  v5 = [v2 bookPresenter];
  v6 = [v5 bookPresenterCurrentlyOpenBookForSingleScene:v4];
  v7 = [v6 assetPresenterAssetViewController];
  v8 = __IMAccessibilityCastAsSafeCategory();

  return v8;
}

id sub_10007656C(void *a1)
{
  v1 = sub_10007643C(a1);
  NSClassFromString(@"BKBookViewController");
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 imaxValueForKey:@"currentPages"];
    v3 = [v2 rangeValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1000765EC(void *a1)
{
  v1 = a1;
  v2 = qword_100AF7428;
  if (qword_100AF7428 || (+[NSBundle mainBundle], v3 = objc_claimAutoreleasedReturnValue(), v4 = qword_100AF7428, qword_100AF7428 = v3, v4, (v2 = qword_100AF7428) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_100A30A68 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v1)
  {
    if (IMAccessibilityShouldPerformValidationChecks())
    {
      abort();
    }

    v5 = 0;
  }

  return v5;
}

void sub_100076A64(uint64_t a1)
{
  [*(a1 + 32) cleanup];
  v2 = *(*(a1 + 40) + 16);

  dispatch_resume(v2);
}

void sub_100076AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 assetID];
    v8 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558530;
      v25 = 1752392040;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "importBookFromURL: importCompletion start. assetID: %{mask.hash}@ error: %@", buf, 0x20u);
    }

    v9 = [*(a1 + 32) mainLibrary];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100076D00;
    v18[3] = &unk_100A04668;
    v18[4] = *(a1 + 32);
    v19 = v7;
    v20 = v5;
    v10 = *(a1 + 48);
    v23 = *(a1 + 72);
    v11 = *(a1 + 40);
    *&v12 = *(a1 + 56);
    *(&v12 + 1) = *(a1 + 64);
    *&v13 = v11;
    *(&v13 + 1) = v10;
    v21 = v13;
    v22 = v12;
    v14 = v7;
    [v9 performBackgroundReadOnlyBlock:v18];
  }

  else
  {
    v15 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100789E0C();
    }

    v16 = objc_retainBlock(*(a1 + 48));
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_100076D00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mainLibrary];
  v6 = [v5 libraryAssetWithAssetID:*(a1 + 40) inManagedObjectContext:v4];

  if (!v6)
  {
    v7 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100789E80();
    }
  }

  v8 = [v6 isUbiquitousBook];
  v9 = +[BKUbiquityMetadataHelper sharedInstance];
  v10 = [*(a1 + 48) url];
  v11 = [v9 setUbiquityMetadataForURL:v10 withLibraryAsset:v6];

  if ((v11 & 1) == 0)
  {
    v12 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100789EF4((a1 + 48), v12);
    }
  }

  v13 = [*(a1 + 32) mainLibrary];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100076F10;
  v19[3] = &unk_100A04640;
  v24 = *(a1 + 64);
  v20 = v6;
  v27 = *(a1 + 88);
  v28 = v8;
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v21 = v14;
  v22 = v15;
  v23 = *(a1 + 56);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v25 = v16;
  v26 = v17;
  v18 = v6;
  [v13 assetForLibraryAsset:v18 completion:v19];
}

void sub_100076F10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_retainBlock(*(a1 + 64));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, *(a1 + 32));
  }

  v6 = (*(a1 + 88) & 1) == 0 && [v3 state] == 1;
  if (*(a1 + 89) == 1)
  {
    v7 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [v3 dataSourceIdentifier];
      v10 = [v3 url];
      *buf = 141559042;
      v23 = 1752392040;
      v24 = 2112;
      v25 = v8;
      v26 = 2114;
      v27 = v9;
      v28 = 2160;
      v29 = 1752392040;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "importBookFromURL: end. assetID: %{mask.hash}@ dataSource: %{public}@ finalURL: %{mask.hash}@", buf, 0x34u);
    }

    [*(a1 + 48) _handleImportedAndPotentiallyMigratedAsset:v3 canShow:v6 transaction:*(a1 + 56)];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v11 = *(*(*(a1 + 80) + 8) + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100077164;
    v15[3] = &unk_100A04618;
    v16 = v3;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v17 = v12;
    v18 = v13;
    v21 = v6;
    v19 = v14;
    v20 = *(a1 + 72);
    [v11 migrateBookToUbiquity:v16 completion:v15];
  }
}

void sub_100077164(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;
  v6 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = [v5 dataSourceIdentifier];
    v9 = [v5 url];
    v10 = 141559042;
    v11 = 1752392040;
    v12 = 2112;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2160;
    v17 = 1752392040;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "importBookFromURL: end. assetID: %{mask.hash}@ dataSource: %{public}@ finalURL: %{mask.hash}@", &v10, 0x34u);
  }

  [*(a1 + 48) _handleImportedAndPotentiallyMigratedAsset:v5 canShow:*(a1 + 72) transaction:*(a1 + 56)];
  (*(*(a1 + 64) + 16))();
}

void sub_1000772C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 141558530;
    v10 = 1752392040;
    v11 = 2112;
    v12 = v5;
    v13 = 1024;
    v14 = v6 != 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "importBookFromURL: import start. url: %{mask.hash}@ update: %d", &v9, 0x1Cu);
  }

  v8 = [*(a1 + 32) mainLibrary];
  [v8 importURL:v5 openInPlace:0 options:0 completion:*(a1 + 40)];
}

void sub_1000773DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558786;
    v17 = 1752392040;
    v18 = 2112;
    v19 = v6;
    v20 = 2160;
    v21 = 1752392040;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "importBookFromURL: checkAlreadyInLibrary start. assetID: %{mask.hash}@ url: %{mask.hash}@", buf, 0x2Au);
  }

  v8 = [*(a1 + 32) mainLibrary];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007756C;
  v12[3] = &unk_100A04708;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v6;
  v14 = v5;
  v15 = v9;
  v10 = v5;
  v11 = v6;
  [v8 performBackgroundReadOnlyBlock:v12];
}

void sub_10007756C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mainLibrary];
  v6 = [v5 libraryAssetWithAssetID:*(a1 + 40) inManagedObjectContext:v4];

  if (([v6 isLocal] & 1) == 0 && (objc_msgSend(v6, "isUbiquitousBook") & 1) == 0 && !objc_msgSend(v6, "isImporting"))
  {
    v10 = *(*(a1 + 56) + 16);
    goto LABEL_8;
  }

  if (!+[BKAssetUtilities isAggregateContentType:](BKAssetUtilities, "isAggregateContentType:", [v6 contentType]))
  {
    v10 = *(*(a1 + 56) + 16);
LABEL_8:
    v10();
    goto LABEL_9;
  }

  v7 = [*(a1 + 48) lastPathComponent];
  v8 = [*(a1 + 32) mainLibrary];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100077714;
  v11[3] = &unk_100A046E0;
  v12 = v7;
  v15 = *(a1 + 56);
  v13 = *(a1 + 48);
  v14 = v6;
  v9 = v7;
  [v8 assetPartsForLibraryAsset:v14 completion:v11];

LABEL_9:
}

void sub_100077714(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100789FA4();
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if (([BKAssetUtilities filenameForAsset:*(*(&v13 + 1) + 8 * v12) matches:*(a1 + 32), v13]& 1) != 0)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100077888(uint64_t a1)
{
  v2 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 141558274;
    v19 = 1752392040;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "importBookFromURL: start. url: %{mask.hash}@,", buf, 0x16u);
  }

  dispatch_suspend(*(*(a1 + 40) + 16));
  [*(a1 + 48) start];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077A54;
  block[3] = &unk_100A047A8;
  v14 = *(a1 + 88);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v12 = *(a1 + 72);
  v15 = *(a1 + 96);
  *&v6 = v4;
  *(&v6 + 1) = *(a1 + 40);
  v8 = v6;
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v5;
  v10 = v8;
  v11 = v7;
  v16 = *(a1 + 97);
  v17 = *(a1 + 98);
  v13 = *(a1 + 80);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100077A54(uint64_t a1)
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 ubiquitousDocumentsController];
  v4 = *(*(a1 + 80) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if ([*(a1 + 32) failed])
  {
    v6 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10078A018();
    }

    (*(*(a1 + 56) + 16))();
    v7 = objc_retainBlock(*(a1 + 64));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }

    goto LABEL_16;
  }

  if (*(a1 + 88) == 1)
  {
    v9 = [*(a1 + 40) sceneManager];
    v10 = [v9 libraryCollectionPresenter];
    [v10 showLibraryAllCollectionWithTransaction:*(a1 + 48) animated:1];
  }

  else
  {
    if (*(a1 + 89) != 1 || (*(a1 + 90) & 1) != 0 || *(a1 + 91) != 1)
    {
      goto LABEL_13;
    }

    v9 = [*(a1 + 40) sceneManager];
    v10 = [v9 libraryCollectionPresenter];
    [v10 showLibraryWithTransaction:*(a1 + 48)];
  }

LABEL_13:
  v11 = [*(a1 + 32) resultURL];
  v12 = [*(a1 + 40) mainLibrary];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100077D34;
  v20[3] = &unk_100A04758;
  v22 = *(a1 + 72);
  v8 = v11;
  v21 = v8;
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v13 = [v12 examineURL:v8 completion:v20];

  if ((v13 & 1) == 0)
  {
    v14 = dispatch_get_global_queue(25, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100077E0C;
    v15[3] = &unk_100A04780;
    v16 = v8;
    v17 = *(a1 + 72);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    dispatch_async(v14, v15);
  }

LABEL_16:
}

void sub_100077D34(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v8 = a1 + 32;
    v6 = *(a1 + 32);
    v7 = *(v8 + 8);
    v9 = [a2 assetID];
    (*(v7 + 16))(v7, v6, v9);
  }

  else
  {
    v10 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10078A058();
    }

    (*(*(a1 + 48) + 16))();
    v11 = objc_retainBlock(*(a1 + 56));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }
}

void sub_100077E0C(uint64_t a1)
{
  v2 = [*(a1 + 32) path];
  v3 = [BLLibraryUtility identifierFromBookPath:v2 error:0];

  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10078A0DC();
    }

    (*(*(a1 + 48) + 16))();
    v5 = objc_retainBlock(*(a1 + 56));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, 0);
    }
  }
}

void sub_100077FDC(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007808C;
  v3[3] = &unk_100A047F8;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_10007808C(uint64_t a1)
{
  v2 = [*(a1 + 32) mainLibrary];
  v3 = [*(a1 + 40) assetID];
  v4 = [v2 libraryAssetOnMainQueueWithAssetID:v3];

  if (*(a1 + 56) != 1 || v4 == 0)
  {
    goto LABEL_10;
  }

  if (+[BKSceneUtilities hasMultiWindowEnabled](BKSceneUtilities, "hasMultiWindowEnabled") && ([v4 isAudiobook] & 1) == 0)
  {
    v12 = +[BKAppDelegate sceneManager];
    v13 = [*(a1 + 40) assetID];
    v14 = [v12 newBookSceneControllerProviderWithRequestAssetID:v13];

    v15 = +[BKAppDelegate currentSceneController];
    v6 = [v15 newShowAssetTransactionWithTargetSceneDescriptor:v14];

    if (v6)
    {
      goto LABEL_8;
    }

LABEL_10:
    v11 = +[BKLibraryManager defaultManager];
    v16 = [*(a1 + 40) assetID];
    v17 = +[NSDate date];
    [v11 updateLibraryAssetWithID:v16 withLastOpenDate:v17 completion:0];

    goto LABEL_11;
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = objc_opt_new();
  [v7 setObject:v6 forKeyedSubscript:BCTransactionOptionsTransactionKey];
  v8 = [v4 assetLogID];
  [v7 setObject:v8 forKeyedSubscript:AEAssetLogID];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007833C;
  v20[3] = &unk_100A03C78;
  v9 = *(a1 + 40);
  v20[4] = *(a1 + 32);
  v21 = v6;
  v22 = v9;
  v23 = v7;
  v10 = v7;
  v11 = v6;
  [v11 commit:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000783D0;
  v18[3] = &unk_100A033C8;
  v19 = *(a1 + 40);
  [v11 whenCancelled:v18];

LABEL_11:
}

void sub_10007833C(uint64_t a1)
{
  v5 = [*(a1 + 32) sceneManager];
  v2 = [v5 bookPresenter];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) assetID];
  [v2 showAssetWithTransaction:v3 assetID:v4 location:0 options:*(a1 + 56) completion:0];
}

void sub_1000783D0(uint64_t a1)
{
  v4 = +[BKLibraryManager defaultManager];
  v2 = [*(a1 + 32) assetID];
  v3 = +[NSDate date];
  [v4 updateLibraryAssetWithID:v2 withLastOpenDate:v3 completion:0];
}

void sub_100078950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100078978(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processChangedBooksWithCompletion:v3];
}

void sub_100078A74(uint64_t a1)
{
  v2 = [NSSet setWithObjects:@"title", @"state", @"contentType", @"lastOpenDate", @"creationDate", @"author", @"assetID", @"genre", @"seriesID", @"seriesSortKey", @"localOnlySeriesItemsParent", @"purchasedAndLocalParent", @"dataSourceIdentifier", @"readingProgress", 0];
  v3 = qword_100AF7438;
  qword_100AF7438 = v2;

  v4 = objc_alloc_init(*(a1 + 32));
  v5 = qword_100AF7440;
  qword_100AF7440 = v4;
}

void sub_1000792E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007930C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v3 = dispatch_queue_create("BKLibraryIndexer.attributeSet.coverRequest", v2);
  v4 = qword_100AF7450;
  qword_100AF7450 = v3;

  v5 = dispatch_queue_create("BKLibraryIndexer.attributeSet.callback", v2);
  v6 = qword_100AF7458;
  qword_100AF7458 = v5;

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 integerForKey:@"BKMaxConcurrentCoverRequestsForIndexing"];

  if (v8 >= 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 4;
  }

  v10 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "maxConcurrentCoverRequests: %ld", &v13, 0xCu);
  }

  v11 = dispatch_semaphore_create(v9);
  v12 = qword_100AF7460;
  qword_100AF7460 = v11;
}

void sub_100079470(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setContentDescription:v3];
  v4 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A224();
  }

  CGSizeScaleToScreen();
  v5 = [BICDescribedImage describedImageWithIdentifier:*(a1 + 40) size:0 processingOptions:?];
  [v5 setPersistanceOptions:3];
  [v5 setPriority:2];
  v6 = qword_100AF7450;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079618;
  block[3] = &unk_100A048E0;
  v7 = *(a1 + 64);
  v16 = v5;
  v19 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v17 = v13;
  v18 = v12;
  v20 = *(a1 + 72);
  v14 = v5;
  dispatch_async(v6, block);
}

void sub_100079618(uint64_t a1)
{
  dispatch_semaphore_wait(qword_100AF7460, 0xFFFFFFFFFFFFFFFFLL);
  v2 = +[BCCacheManager defaultCacheManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100079800;
  v18[3] = &unk_100A04890;
  v21 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v19 = v9;
  v20 = v8;
  [v2 fetchDescribedImageFileURLForImage:v3 completion:v18];

  v10 = *(a1 + 80);
  if (v10 > 0.0)
  {
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    v12 = qword_100AF7458;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000799FC;
    block[3] = &unk_100A048B8;
    v17 = *(a1 + 72);
    v14 = *(a1 + 48);
    v16 = *(a1 + 64);
    v15 = *(a1 + 40);
    dispatch_after(v11, v12, block);
  }
}

void sub_100079800(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100AF7458;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100079910;
  v11[3] = &unk_100A04868;
  v5 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = v3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v14 = v9;
  v15 = v8;
  v10 = v3;
  dispatch_async(v4, v11);
}

void sub_100079910(uint64_t a1)
{
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v2 = BCSpotlightIndexLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10078A318();
    }
  }

  else
  {
    [*(a1 + 32) setThumbnailURL:*(a1 + 40)];
    v3 = BCSpotlightIndexLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10078A294();
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
    v4 = objc_retainBlock(*(a1 + 64));
    v5 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4, *(a1 + 32));
    }

    dispatch_semaphore_signal(qword_100AF7460);
  }
}

intptr_t sub_1000799FC(intptr_t result)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = BCSpotlightIndexLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10078A3A8();
    }

    *(*(*(v1 + 56) + 8) + 24) = 1;
    v3 = objc_retainBlock(*(v1 + 48));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3, *(v1 + 40));
    }

    return dispatch_semaphore_signal(qword_100AF7460);
  }

  return result;
}

void sub_100079B98(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v4 = +[BCBackgroundTaskAssertion sharedAssertion];
    [v4 claimAssertionForIdentifier:*(a1 + 40) description:@"BKLibraryIndexer immediate"];
  }

  else
  {
    v3 = *(a1 + 40);

    [v2 setAssetIDNeedingProcessAssertion:v3];
  }
}

uint64_t sub_10007A07C(CC_SHA256_CTX *a1, id a2)
{
  v4 = a2;
  v5 = [a2 UTF8String];
  if (v5)
  {
    v6 = v5;
    v7 = strlen(v5) + 1;

    return CC_SHA256_Update(a1, v6, v7);
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(a1, &data, 1u);
  }
}

void sub_10007A148(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 bundleIdentifier];
  v5 = [LSBundleRecord bundleRecordWithApplicationIdentifier:v2 error:0];

  v3 = [v5 dataContainerURL];
  v4 = qword_100AF7478;
  qword_100AF7478 = v3;
}

void sub_10007A280(uint64_t a1)
{
  v2 = [NSUserDefaults alloc];
  v5 = [*(a1 + 32) _iBooksContainerURL];
  v3 = [v2 _initWithSuiteName:@"com.apple.iBooks.indexing" container:v5];
  v4 = qword_100AF7488;
  qword_100AF7488 = v3;
}

void sub_10007A998(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007AAF4;
  block[3] = &unk_100A03440;
  block[4] = v5;
  v16 = v4;
  dispatch_sync(v6, block);
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007ABB4;
  v13[3] = &unk_100A03440;
  v13[4] = v7;
  v14 = v3;
  v9 = v3;
  dispatch_async(v8, v13);
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007B154;
  v12[3] = &unk_100A033C8;
  v12[4] = v10;
  dispatch_async(v11, v12);
}