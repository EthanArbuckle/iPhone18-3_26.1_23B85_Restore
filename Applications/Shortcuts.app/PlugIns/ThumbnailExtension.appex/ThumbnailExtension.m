void sub_100001360(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(sub_100001DB8() - 8) + 64);
  __chkstk_darwin();
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 fileURL];
  sub_100001DA8();

  v10 = objc_allocWithZone(WFShortcutExtractor);
  v12 = sub_100001890(v8, 1, 1, 0, 0, v11);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  aBlock[4] = sub_1000019EC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001604;
  aBlock[3] = &unk_100004260;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  [v12 extractShortcutWithCompletion:v14];
  _Block_release(v14);
}

id sub_1000014FC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000015C4;
  v9[3] = &unk_1000042B0;
  v6 = _Block_copy(v9);
  v7 = [swift_getObjCClassFromMetadata() replyWithContextSize:v6 currentContextDrawingBlock:{a3, a4}];
  _Block_release(v6);

  return v7;
}

uint64_t sub_1000015C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

void sub_100001604(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_100001730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100001D88();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_1000017A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000017F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001850()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100001890@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X6>, NSURL *a6@<X8>)
{
  v7 = v6;
  sub_100001D98(a6);
  v14 = v13;
  if (!a4)
  {
    v15 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_100001DC8();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_100001DC8();

LABEL_6:
  v17 = [v7 initWithURL:v14 allowsOldFormatFile:a2 & 1 skipsMaliciousScanning:a3 & 1 suggestedName:v15 sourceApplication:v16];

  v18 = sub_100001DB8();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v17;
}

uint64_t sub_1000019AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000019EC(void *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  if (a1)
  {
    v4 = v1[4];
    v17 = a1;
    [v4 maximumSize];
    v6 = v5;
    [v4 maximumSize];
    if (v7 < v6)
    {
      v6 = v7;
    }

    [v4 scale];
    v9 = v8;
    v10 = [v17 record];
    v11 = [v10 icon];

    sub_100001B9C();
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v12 + 32) = v6;
    *(v12 + 40) = v6;
    v13 = v11;
    v14 = sub_1000014FC(sub_100001C18, v12, v6, v6);
    [v14 setIconFlavor:0];
    v15 = v14;
    (v3)(v14, 0);
  }

  else
  {
    v16 = v1[3];
    v3();
  }
}

uint64_t sub_100001B84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100001B9C()
{
  result = qword_1000081A0;
  if (!qword_1000081A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000081A0);
  }

  return result;
}

uint64_t sub_100001BE0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100001C18()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = [objc_opt_self() currentContextWithScale:*(v0 + 16)];
  v5 = [objc_allocWithZone(WFWorkflowIconDrawer) initWithIcon:v1];
  [v5 setCornerRadius:1.0];
  [v5 drawInContext:v4 inRect:{0.0, 0.0, v2, v3}];

  return 1;
}

__n128 sub_100001CD8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001CE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001D08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_1000081A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000081A8);
    }
  }
}