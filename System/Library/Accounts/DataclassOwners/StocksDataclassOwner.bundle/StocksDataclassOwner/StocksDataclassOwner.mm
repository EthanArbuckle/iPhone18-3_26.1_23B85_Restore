id sub_1348()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Class sub_1468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a5())
  {
    v5.super.isa = sub_2300().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void sub_1574()
{
  if (!qword_8518)
  {
    type metadata accessor for Dataclass(255);
    v0 = sub_2330();
    if (!v1)
    {
      atomic_store(v0, &qword_8518);
    }
  }
}

uint64_t sub_15FC(uint64_t a1, id *a2)
{
  result = sub_22B0();
  *a2 = 0;
  return result;
}

uint64_t sub_1674(uint64_t a1, id *a2)
{
  v3 = sub_22C0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_16F4@<X0>(void *a1@<X8>)
{
  sub_22D0();
  v2 = sub_22A0();

  *a1 = v2;
  return result;
}

uint64_t sub_1738@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22A0();

  *a2 = v5;
  return result;
}

uint64_t sub_1780@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22D0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_17AC(uint64_t a1)
{
  v2 = sub_2220(&qword_8550);
  v3 = sub_2220(&qword_8558);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1844()
{
  v1 = *v0;
  sub_22D0();
  v2 = sub_22F0();

  return v2;
}

uint64_t sub_1880()
{
  v1 = *v0;
  sub_22D0();
  sub_22E0();
}

Swift::Int sub_18D4()
{
  v1 = *v0;
  sub_22D0();
  sub_2350();
  sub_22E0();
  v2 = sub_2360();

  return v2;
}

uint64_t sub_1948(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22D0();
  v6 = v5;
  if (v4 == sub_22D0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2340();
  }

  return v9 & 1;
}

void sub_19D0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_22A0();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v3 = sub_22A0();
  v4 = [v2 BOOLForKey:v3];

  if (v4)
  {
    v5 = objc_allocWithZone(NSUserDefaults);
    v6 = sub_22A0();
    v7 = [v5 initWithSuiteName:v6];

    if (v7)
    {
      v8 = sub_22A0();
      [v7 BOOLForKey:v8];

      return;
    }

    goto LABEL_7;
  }
}

id sub_1B30()
{
  sub_19D0();
  v1 = v0;
  sub_211C(0, &qword_8520, &type metadata for Any + 8, &type metadata accessor for _ContiguousArrayStorage);
  if ((v1 & 1) == 0)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2EC0;
    result = [objc_opt_self() actionWithType:1];
    if (result)
    {
      v7 = result;
      *(v2 + 56) = sub_216C();
      *(v2 + 32) = v7;
      return v2;
    }

    goto LABEL_9;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2ED0;
  v3 = objc_opt_self();
  result = [v3 actionWithType:5];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_216C();
  *(v2 + 56) = v6;
  *(v2 + 32) = v5;
  result = [v3 actionWithType:0];
  if (result)
  {
    *(v2 + 88) = v6;
    *(v2 + 64) = result;
    return v2;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1C88()
{
  sub_19D0();
  v1 = v0;
  sub_211C(0, &qword_8520, &type metadata for Any + 8, &type metadata accessor for _ContiguousArrayStorage);
  if ((v1 & 1) == 0)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2EC0;
    result = [objc_opt_self() actionWithType:3];
    if (result)
    {
      v7 = result;
      *(v2 + 56) = sub_216C();
      *(v2 + 32) = v7;
      return v2;
    }

    goto LABEL_10;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2EE0;
  v3 = objc_opt_self();
  result = [v3 actionWithType:3];
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v6 = sub_216C();
  *(v2 + 56) = v6;
  *(v2 + 32) = v5;
  result = [v3 actionWithType:2];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 88) = v6;
  *(v2 + 64) = result;
  result = [v3 actionWithType:0];
  if (result)
  {
    *(v2 + 120) = v6;
    *(v2 + 96) = result;
    return v2;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1E08()
{
  v0 = objc_allocWithZone(CHSTimelineController);
  v1 = sub_22A0();
  v2 = sub_22A0();
  v3 = [v0 initForAvocadoIdentifier:v1 inBundleIdentifier:v2];

  v4 = objc_allocWithZone(CHSTimelineController);
  v5 = sub_22A0();
  v6 = sub_22A0();
  v7 = [v4 initForAvocadoIdentifier:v5 inBundleIdentifier:v6];
}

void sub_1F58(void *a1)
{
  if (!a1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v1 = [a1 type];
  if (v1 == &dword_4 + 2)
  {
LABEL_5:
    v2 = objc_opt_self();
    [v2 killProcess:0];
    [v2 killProcess:1];
    sub_1E08();
    v3 = objc_allocWithZone(NSUserDefaults);
    v4 = sub_22A0();
    v5 = [v3 initWithSuiteName:v4];

    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (v1 != &dword_4 + 1)
  {
    if (v1 != &dword_0 + 3)
    {
      return;
    }

    goto LABEL_5;
  }

  v6 = objc_opt_self();
  [v6 killProcess:0];
  [v6 killProcess:1];
  sub_1E08();
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = sub_22A0();
  v5 = [v7 initWithSuiteName:v8];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

LABEL_8:
  v9 = sub_22A0();
  [v5 setBool:1 forKey:v9];
}

void sub_211C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_216C()
{
  result = qword_8528;
  if (!qword_8528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8528);
  }

  return result;
}

uint64_t sub_2220(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Dataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}