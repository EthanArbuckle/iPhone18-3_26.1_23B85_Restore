void sub_100000F38(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100001040(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(sub_100001A04() - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = v6;
    swift_errorRetain();
    sub_1000019F4();
    sub_1000017F8(&qword_1000081A8, &qword_100001D08);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100001CB0;
    swift_getErrorValue();
    v10 = sub_100001A74();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1000018EC();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100001A34();

    v6 = (*(v4 + 8))(v8, v15);
  }

  return a2(v6);
}

id sub_100001318()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IndexRequestHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001380()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000013C8(uint64_t a1, uint64_t a2)
{
  v5 = sub_100001A04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000019F4();
  sub_100001A14();
  (*(v6 + 8))(v9, v5);
  v10 = *(v2 + OBJC_IVAR____TtC18TipsSpotlightIndex19IndexRequestHandler_searchQueryClient);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1000019B8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100000F38;
  aBlock[3] = &unk_100004290;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  [v13 reindexAllSearchableItemsWithCompletionHandler:v12];
  _Block_release(v12);
}

void sub_100001580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a2;
  v7 = sub_100001A04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000019F4();
  sub_1000017F8(&qword_1000081A8, &qword_100001D08);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100001CB0;
  aBlock[0] = a1;
  sub_1000017F8(&qword_1000081B0, &unk_100001D10);
  sub_100001840();
  v13 = sub_100001A44();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1000018EC();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_100001A24();

  (*(v8 + 8))(v11, v7);
  v16 = *(v4 + OBJC_IVAR____TtC18TipsSpotlightIndex19IndexRequestHandler_searchQueryClient);
  isa = sub_100001A54().super.isa;
  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  *(v18 + 24) = a3;
  aBlock[4] = sub_100001940;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100000F38;
  aBlock[3] = &unk_100004218;
  v19 = _Block_copy(aBlock);

  [v16 reindexSearchableItemsWithIdentifiers:isa completionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_1000017F8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001840()
{
  result = qword_1000081B8;
  if (!qword_1000081B8)
  {
    sub_1000018A4(&qword_1000081B0, &unk_100001D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000081B8);
  }

  return result;
}

uint64_t sub_1000018A4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000018EC()
{
  result = qword_1000081C0;
  if (!qword_1000081C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000081C0);
  }

  return result;
}

uint64_t sub_100001968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001980()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}