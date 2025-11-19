id sub_100001810()
{
  result = [objc_allocWithZone(EKEventStore) initWithEKOptions:0x2000];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_100001848@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(CalLinkREMStoreWrapper) init];
  *a1 = result;
  return result;
}

id sub_100001884@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(CNContactStore) init];
  *a1 = result;
  return result;
}

uint64_t sub_1000018C0()
{
  v0 = sub_100002088();
  sub_100001FB4(v0, qword_1000083D0);
  sub_100001E28(v0, qword_1000083D0);
  return sub_100002078();
}

uint64_t sub_100001940(uint64_t a1)
{
  v2 = sub_100001A94();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000019EC();
  sub_100002058();
  return 0;
}

unint64_t sub_1000019EC()
{
  result = qword_1000081D0;
  if (!qword_1000081D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000081D0);
  }

  return result;
}

unint64_t sub_100001A94()
{
  result = qword_1000081D8;
  if (!qword_1000081D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000081D8);
  }

  return result;
}

id sub_100001AF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

uint64_t sub_100001B48()
{
  if (qword_1000082C0 != -1)
  {
    swift_once();
  }

  v0 = sub_100002088();
  sub_100001E28(v0, qword_1000083D0);
  v1 = sub_100002068();
  v2 = sub_100002098();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Initializing", v3, 2u);
  }

  v4 = objc_allocWithZone(EKEphemeralCacheEventStoreProvider);
  v11 = sub_100001810;
  v12 = 0;
  *&v9 = _NSConcreteStackBlock;
  *(&v9 + 1) = 1107296256;
  *&v10 = sub_100001AF8;
  *(&v10 + 1) = &unk_100004290;
  v5 = _Block_copy(&v9);
  v6 = [v4 initWithCreationBlock:v5];
  _Block_release(v5);

  sub_100002038();
  sub_100002028();
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  sub_100001EBC(&qword_100008240, &qword_100002408);
  sub_100002018();

  sub_100001F04(&v9);
  sub_100002028();
  sub_100001F6C(0, &qword_100008250, CalLinkREMStoreWrapper_ptr);
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  sub_100002018();

  sub_100001F04(&v9);
  sub_100002028();
  sub_100001F6C(0, &qword_100008258, CNContactStore_ptr);
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  sub_100002018();

  return sub_100001F04(&v9);
}

uint64_t sub_100001E28(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001E60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001E78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100001EBC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001F04(uint64_t a1)
{
  v2 = sub_100001EBC(&qword_100008248, &qword_100002410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001F6C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t *sub_100001FB4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}