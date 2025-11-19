int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100001B94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001340(&qword_1000080D0, &unk_100001D30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100001D20;
  v9 = type metadata accessor for AuthServiceAssembly();
  v10 = swift_allocObject();
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_100001388();
  *(v8 + 32) = v10;
  v11 = sub_100001B24();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_100001B14();
  (*(v4 + 104))(v7, enum case for Container.Environment.normal(_:), v3);
  v14 = sub_100001BC4();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  qword_100008190 = sub_100001BA4();
  [objc_opt_self() setSuppressEngagement:1];
  sub_100001BB4();
  qword_1000081C0 = [objc_opt_self() serviceListener];
  sub_1000013E0(qword_100008198, qword_1000081B0);
  sub_100001C54();
  v17 = sub_100001AF4();
  if (v17)
  {
    qword_1000081C8 = v17;
    [qword_1000081C0 setDelegate:v17];
    [qword_1000081C0 activate];
    LODWORD(v17) = 0;
  }

  else
  {
    __break(1u);
  }

  return v17;
}

uint64_t sub_100001340(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001388()
{
  result = qword_1000080D8;
  if (!qword_1000080D8)
  {
    type metadata accessor for AuthServiceAssembly();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080D8);
  }

  return result;
}

void *sub_1000013E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001424()
{
  sub_100001B34();
  sub_100001C54();
  sub_100001B64();

  sub_100001B44();
  sub_100001B54();
}

uint64_t sub_1000014C8(void *a1)
{
  v2 = sub_100001BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(sub_100001340(&qword_100008188, &qword_100001DB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v23 - v8;
  v10 = a1[4];
  sub_1000013E0(a1, a1[3]);
  v11 = sub_100001A48();
  result = sub_100001AE4();
  if (result)
  {
    v23[8] = v11;
    v23[9] = &protocol witness table for NSURLSession;
    v23[5] = result;
    v13 = sub_100001C14();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_100001C04();
    v23[3] = v13;
    v23[4] = &protocol witness table for WDSJWTMescalSigner;
    v23[0] = v16;
    v17 = a1[4];
    sub_1000013E0(a1, a1[3]);
    v18 = sub_100001BF4();
    sub_100001B04();
    result = sub_100001A8C(v9, 1, v18);
    if (result != 1)
    {
      (*(v3 + 104))(v6, enum case for WDSVersion.tokenServiceVersion(_:), v2);
      v19 = sub_100001C34();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      sub_100001C24();
      v22 = objc_allocWithZone(sub_100001C54());
      return sub_100001C44();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100001734()
{
  v0 = sub_100001B84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A48();
  sub_100001B64();

  sub_100001BF4();
  sub_100001B74();
  (*(v1 + 104))(v4, enum case for Scope.singleton(_:), v0);
  sub_100001AD4();

  return (*(v1 + 8))(v4, v0);
}

id sub_1000018A8()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  [v0 setRequestCachePolicy:4];
  [v0 setURLCache:0];
  v1 = [objc_opt_self() sessionWithConfiguration:v0];

  return v1;
}

uint64_t sub_10000193C()
{
  v0 = (*(*(sub_100001340(&qword_100008180, &qword_100001DB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v5 - v1;
  sub_100001AB4();
  v3 = sub_100001AC4();
  result = sub_100001A8C(v2, 1, v3);
  if (result != 1)
  {
    return sub_100001BE4();
  }

  __break(1u);
  return result;
}

unint64_t sub_100001A48()
{
  result = qword_100008178;
  if (!qword_100008178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008178);
  }

  return result;
}