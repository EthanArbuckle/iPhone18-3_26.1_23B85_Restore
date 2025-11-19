uint64_t sub_1000014C8@<X0>(uint64_t a1@<X8>)
{
  sub_100001944(&qword_100008068, &qword_100002260);
  sub_100001BC0();
  sub_100001FEC();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(sub_100001944(&qword_100008030, &qword_100002240) + 36));
  v4 = *(sub_100001944(&qword_100008050, &qword_100002250) + 28);
  v5 = enum case for ColorScheme.dark(_:);
  v6 = sub_100001FDC();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  v7 = sub_1000020FC();
  v8 = swift_getKeyPath();
  result = sub_100001944(&qword_100008018, &qword_100002238);
  v10 = (a1 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t sub_10000162C(uint64_t a1)
{
  v2 = *(*(sub_100001FDC() - 8) + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10000201C();
}

uint64_t sub_1000016F4()
{
  v0 = sub_100001944(&qword_100008018, &qword_100002238);
  v1 = sub_10000198C();

  return LockedCameraCaptureUIScene.init(content:)(sub_1000014C8, 0, v0, v1);
}

uint64_t sub_100001764(uint64_t a1)
{
  v2 = sub_1000018F0();

  return LockedCameraCaptureExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001810();
  sub_100001FAC();
  return 0;
}

unint64_t sub_100001810()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_100001898()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    sub_100001F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

unint64_t sub_1000018F0()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

uint64_t sub_100001944(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000198C()
{
  result = qword_100008020;
  if (!qword_100008020)
  {
    sub_100001A44(&qword_100008018, &qword_100002238);
    sub_100001A8C();
    sub_100001D3C(&qword_100008058, &qword_100008060, &qword_100002258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008020);
  }

  return result;
}

uint64_t sub_100001A44(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001A8C()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    sub_100001A44(&qword_100008030, &qword_100002240);
    sub_100001D3C(&qword_100008038, &qword_100008040, &qword_100002248);
    sub_100001D3C(&qword_100008048, &qword_100008050, &qword_100002250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_100001B70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100001FFC();
  v4 = sub_1000020DC();
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
}

unint64_t sub_100001BC0()
{
  result = qword_100008070;
  if (!qword_100008070)
  {
    sub_100001A44(&qword_100008068, &qword_100002260);
    sub_100001C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008070);
  }

  return result;
}

unint64_t sub_100001C4C()
{
  result = qword_100008078;
  if (!qword_100008078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008078);
  }

  return result;
}

uint64_t sub_100001CA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000202C();
  *a1 = result;
  return result;
}

uint64_t sub_100001CCC(uint64_t *a1)
{
  v1 = *a1;

  return sub_10000203C();
}

uint64_t sub_100001D3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001A44(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001D98()
{
  v1 = *v0;

  v2 = sub_100001F9C();

  return static CompositionRoot.magnifierExtensionViewController.getter(v2);
}

uint64_t sub_100001E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001F28();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100001E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001F28();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100001F00()
{
  sub_100001F28();
  sub_1000020AC();
  __break(1u);
}

unint64_t sub_100001F28()
{
  result = qword_100008090;
  if (!qword_100008090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008090);
  }

  return result;
}