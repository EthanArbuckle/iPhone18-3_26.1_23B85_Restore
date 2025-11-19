Swift::Int sub_13B0()
{
  sub_2794();
  sub_27A4(0);
  return sub_27B4();
}

Swift::Int sub_141C()
{
  sub_2794();
  sub_27A4(0);
  return sub_27B4();
}

id sub_166C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_16D0(uint64_t a1, id *a2)
{
  result = sub_26F4();
  *a2 = 0;
  return result;
}

uint64_t sub_1748(uint64_t a1, id *a2)
{
  v3 = sub_2704();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_17C8@<X0>(void *a1@<X8>)
{
  sub_2714();
  v2 = sub_26E4();

  *a1 = v2;
  return result;
}

uint64_t sub_180C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26E4();

  *a2 = v5;
  return result;
}

uint64_t sub_1854@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2714();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1880(uint64_t a1)
{
  v2 = sub_2660(&qword_8450);
  v3 = sub_2660(&qword_8458);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1918()
{
  v1 = *v0;
  sub_2714();
  v2 = sub_2734();

  return v2;
}

uint64_t sub_1954()
{
  v1 = *v0;
  sub_2714();
  sub_2724();
}

Swift::Int sub_19A8()
{
  v1 = *v0;
  sub_2714();
  sub_2794();
  sub_2724();
  v2 = sub_27B4();

  return v2;
}

uint64_t sub_1A1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2714();
  v6 = v5;
  if (v4 == sub_2714() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2784();
  }

  return v9 & 1;
}

id sub_1AA4()
{
  v0 = sub_26D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v32[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v32[-1] - v7;
  __chkstk_darwin(v6);
  v10 = &v32[-1] - v9;
  v32[3] = &type metadata for WalletFeatureFlag;
  v32[4] = sub_22F8();
  v11 = sub_26A4();
  sub_234C(v32);
  v12 = PKIsPhone();
  if ((v11 & 1) == 0)
  {
    sub_26B4();
    v21 = sub_26C4();
    v22 = sub_2764();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "actionsForDeletingAccount - Feature disabled", v23, 2u);
    }

    (*(v1 + 8))(v10, v0);
    sub_2398(&qword_8418, " \a");
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2B90;
    result = [objc_opt_self() actionWithType:0];
    if (result)
    {
      v24 = result;
      *(v16 + 56) = sub_23E0();
      *(v16 + 32) = v24;
      return v16;
    }

    __break(1u);
    goto LABEL_20;
  }

  if ((v12 & 1) == 0)
  {
    sub_26B4();
    v25 = sub_26C4();
    v26 = sub_2764();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "actionsForDeletingAccount - Platform unsupported", v27, 2u);
    }

    (*(v1 + 8))(v8, v0);
    sub_2398(&qword_8418, " \a");
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2BA0;
    v28 = objc_opt_self();
    result = [v28 destructiveActionWithType:3];
    if (result)
    {
      v29 = result;
      v30 = sub_23E0();
      *(v16 + 56) = v30;
      *(v16 + 32) = v29;
      result = [v28 actionWithType:0];
      if (result)
      {
        *(v16 + 88) = v30;
        *(v16 + 64) = result;
        return v16;
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_26B4();
  v13 = sub_26C4();
  v14 = sub_2764();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "actionsForDeletingAccount - Pass deletion enabled", v15, 2u);
  }

  (*(v1 + 8))(v5, v0);
  sub_2398(&qword_8418, " \a");
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2BB0;
  v17 = objc_opt_self();
  result = [v17 destructiveActionWithType:3];
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = result;
  v20 = sub_23E0();
  *(v16 + 56) = v20;
  *(v16 + 32) = v19;
  result = [v17 actionWithType:2];
  if (!result)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v16 + 88) = v20;
  *(v16 + 64) = result;
  result = [v17 actionWithType:0];
  if (result)
  {
    *(v16 + 120) = v20;
    *(v16 + 96) = result;
    return v16;
  }

LABEL_24:
  __break(1u);
  return result;
}

void *sub_1F5C(uint64_t a1)
{
  v2 = sub_26D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v30 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v16 = &v30 - v15;
  if (result)
  {
    v17 = [result type];
    if (v17 > 8)
    {
      sub_26B4();
      v27 = sub_26C4();
      v28 = sub_2764();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "performActionForAccount - Unknown Default", v29, 2u);
      }

      (*(v3 + 8))(v7, v2);
    }

    else if (((1 << v17) & 0x1F2) != 0)
    {
      sub_26B4();
      v18 = sub_26C4();
      v19 = sub_2764();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v18, v19, "performActionForAccount - Unexpected DataclassAction", v20, 2u);
      }

      (*(v3 + 8))(v10, v2);
    }

    else
    {
      if (((1 << v17) & 5) != 0)
      {
        sub_26B4();
        v21 = sub_26C4();
        v22 = sub_2764();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_0, v21, v22, "performActionForAccount - Disabling pass deletion flag", v23, 2u);
        }

        (*(v3 + 8))(v13, v2);
      }

      else
      {
        sub_26B4();
        v24 = sub_26C4();
        v25 = sub_2764();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_0, v24, v25, "performActionForAccount - Enabling pass deletion flag", v26, 2u);
        }

        (*(v3 + 8))(v16, v2);
      }

      PKSetiCloudSignoutShouldDeleteLocalData();
    }

    return &dword_0 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F8()
{
  result = qword_84C0;
  if (!qword_84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_84C0);
  }

  return result;
}

uint64_t sub_234C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2398(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_23E0()
{
  result = qword_8420;
  if (!qword_8420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8420);
  }

  return result;
}

void type metadata accessor for Dataclass()
{
  if (!qword_8430)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_8430);
    }
  }
}

uint64_t getEnumTagSinglePayload for WalletFeatureFlag(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WalletFeatureFlag(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2570()
{
  result = qword_84C8[0];
  if (!qword_84C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_84C8);
  }

  return result;
}

uint64_t sub_2660(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Dataclass();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}