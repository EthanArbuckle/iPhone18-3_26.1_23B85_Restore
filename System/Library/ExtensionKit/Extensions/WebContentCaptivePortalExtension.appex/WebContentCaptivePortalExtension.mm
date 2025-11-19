id sub_1000012DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebContentProcessExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001310(uint64_t a1, uint64_t a2)
{
  v5 = sub_100001824();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 3157553 && a2 == 0xE300000000000000 || (sub_100001864() & 1) != 0)
  {
    v14 = v2;
    v10 = &enum case for RestrictedSandboxRevision.revision1(_:);
LABEL_5:
    (*(v6 + 104))(v9, *v10, v5);
    type metadata accessor for WebContentProcessExtension();
    sub_1000017C8(&qword_100008120, v11, type metadata accessor for WebContentProcessExtension);
    sub_100001834();
    return (*(v6 + 8))(v9, v5);
  }

  if (a1 == 3157554 && a2 == 0xE300000000000000 || (result = sub_100001864(), (result & 1) != 0))
  {
    v14 = v2;
    v10 = &enum case for RestrictedSandboxRevision.revision2(_:);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_100001548()
{
  swift_getWitnessTable();

  return sub_100001834();
}

uint64_t sub_1000015A8()
{
  v0 = type metadata accessor for WebContentProcessExtension();
  v2 = sub_1000017C8(&qword_100008120, v1, type metadata accessor for WebContentProcessExtension);

  return WebContentExtension.configuration.getter(v0, v2);
}

id sub_100001628@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for WebContentProcessExtension();
  sub_1000017C8(&qword_100008118, v3, type metadata accessor for WebContentProcessExtension);
  sub_100001844();
  return 0;
}

uint64_t sub_1000017C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}