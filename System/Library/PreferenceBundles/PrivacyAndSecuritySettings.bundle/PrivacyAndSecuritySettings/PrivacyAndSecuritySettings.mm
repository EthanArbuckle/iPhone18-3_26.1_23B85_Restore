uint64_t sub_2850()
{
  v2 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -5;
  v9 = 8;
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_2948;
  v6 = &unk_6DFD8;
  v7 = &v10;
  v8 = &v2;
  if (ACMKernelControl())
  {
    v0 = 0;
  }

  else
  {
    v0 = *(v11 + 6) == 0;
  }

  _Block_object_dispose(&v10, 8);
  return *&v0 & ((v2 & 8) >> 3);
}

uint64_t sub_2948(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = -5;
  if (a2 && a3 == 4)
  {
    v3 = 0;
    **(result + 40) = *a2;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  return result;
}

uint64_t sub_2A28@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v69 = sub_44BC(&qword_77070, &qword_562A0);
  v2 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v70 = &v60 - v3;
  v65 = sub_44BC(&qword_77078, &qword_562A8);
  v4 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v6 = (&v60 - v5);
  v63 = sub_44BC(&qword_77080, &qword_562B0);
  v7 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v9 = &v60 - v8;
  v66 = sub_44BC(&qword_77088, &qword_562B8);
  v10 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v64 = &v60 - v11;
  v68 = sub_44BC(&qword_77090, &qword_562C0);
  v12 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v67 = &v60 - v13;
  v14 = sub_53FD8();
  v62 = *(v14 - 8);
  v15 = *(v62 + 64);
  (__chkstk_darwin)();
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_44BC(&qword_77098, &qword_562C8);
  v19 = *(*(v18 - 8) + 64);
  v20 = (__chkstk_darwin)();
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v25 = &v60 - v24;
  v26 = *(v1 + 24);
  v27 = *(v1 + 32);
  if (v27 <= 1)
  {
    if (!*(v1 + 32))
    {
      v72 = *(v1 + 16);
      v73 = 0;

      sub_44BC(&qword_770D0, &qword_562D8);
      sub_4714();
      sub_540D8();
      v32 = v75;
      *v6 = v74;
      *(v6 + 8) = v32;
      swift_storeEnumTagMultiPayload();
      sub_44BC(&qword_770C0, &qword_562D0);
      sub_45D8();
      sub_4688();
      v33 = v67;
      sub_540D8();
      sub_4790(v33, v70, &qword_77090, &qword_562C0);
      swift_storeEnumTagMultiPayload();
      sub_4504();
      sub_540D8();
      v34 = v33;
      return sub_47F8(v34, &qword_77090, &qword_562C0);
    }

    v61 = v23;
    v42 = objc_allocWithZone(ISIcon);
    v43 = sub_54638();
    v44 = [v42 initWithBundleIdentifier:v43];

    v45 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v46 = *v1;
    v74 = *v1;
    v75 = *(v1 + 8);
    if (v75)
    {
      v47 = v46;
    }

    else
    {

      sub_54818();
      v53 = sub_54168();
      v60 = v44;
      v54 = v53;
      sub_53C08();

      sub_53FC8();
      swift_getAtKeyPath();
      sub_47F8(&v74, &qword_770D8, &qword_562E0);
      (*(v62 + 8))(v17, v14);
      v47 = v72;
    }

    [v45 setScale:v47];
    [v45 setDrawBorder:1];
    sub_53B98();
    v55 = v61;
    (*(v61 + 16))(v9, v25, v18);
    swift_storeEnumTagMultiPayload();
    sub_489C(&qword_770B0, &qword_77098, &qword_562C8);
    v56 = v64;
    sub_540D8();
    sub_4790(v56, v6, &qword_77088, &qword_562B8);
    swift_storeEnumTagMultiPayload();
    sub_44BC(&qword_770C0, &qword_562D0);
    sub_45D8();
    sub_4688();
    v57 = v67;
    sub_540D8();
    sub_47F8(v56, &qword_77088, &qword_562B8);
    sub_4790(v57, v70, &qword_77090, &qword_562C0);
    swift_storeEnumTagMultiPayload();
    sub_4504();
    sub_540D8();
    sub_47F8(v57, &qword_77090, &qword_562C0);
    return (*(v55 + 8))(v25, v18);
  }

  else
  {
    if (v27 != 2)
    {
      if (v27 != 3)
      {
        swift_storeEnumTagMultiPayload();
        sub_4504();
        return sub_540D8();
      }

      v28 = [objc_opt_self() settingsIconCache];
      v29 = sub_54638();
      v30 = [v28 imageForKey:v29];

      if (v30)
      {
        *&v31 = COERCE_DOUBLE(sub_54318());
      }

      else
      {
        *&v31 = 0.0;
      }

      v72 = *&v31;
      v73 = 1;

      sub_44BC(&qword_770D0, &qword_562D8);
      sub_4714();
      sub_540D8();
      v58 = v75;
      *v6 = v74;
      *(v6 + 8) = v58;
      swift_storeEnumTagMultiPayload();
      sub_44BC(&qword_770C0, &qword_562D0);
      sub_45D8();
      sub_4688();
      v59 = v67;
      sub_540D8();
      sub_4790(v59, v70, &qword_77090, &qword_562C0);
      swift_storeEnumTagMultiPayload();
      sub_4504();
      sub_540D8();

      v34 = v59;
      return sub_47F8(v34, &qword_77090, &qword_562C0);
    }

    v61 = v23;
    v35 = objc_allocWithZone(ISIcon);
    v36 = sub_54638();
    v37 = [v35 initWithType:v36];

    v38 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v39 = *v1;
    v74 = *v1;
    v75 = *(v1 + 8);
    if (v75)
    {
      v40 = v39;
    }

    else
    {

      sub_54818();
      v48 = sub_54168();
      v60 = v37;
      v49 = v48;
      sub_53C08();

      sub_53FC8();
      swift_getAtKeyPath();
      sub_47F8(&v74, &qword_770D8, &qword_562E0);
      (*(v62 + 8))(v17, v14);
      v40 = v72;
    }

    [v38 setScale:v40];
    [v38 setDrawBorder:1];
    sub_53B98();
    v50 = v61;
    (*(v61 + 16))(v9, v22, v18);
    swift_storeEnumTagMultiPayload();
    sub_489C(&qword_770B0, &qword_77098, &qword_562C8);
    v51 = v64;
    sub_540D8();
    sub_4790(v51, v6, &qword_77088, &qword_562B8);
    swift_storeEnumTagMultiPayload();
    sub_44BC(&qword_770C0, &qword_562D0);
    sub_45D8();
    sub_4688();
    v52 = v67;
    sub_540D8();
    sub_47F8(v51, &qword_77088, &qword_562B8);
    sub_4790(v52, v70, &qword_77090, &qword_562C0);
    swift_storeEnumTagMultiPayload();
    sub_4504();
    sub_540D8();
    sub_47F8(v52, &qword_77090, &qword_562C0);
    return (*(v50 + 8))(v22, v18);
  }
}

uint64_t sub_3678@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_2A28(a1);
}

uint64_t sub_36B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_532F0(2, 26, 0, 0))
  {
    sub_54118();

    return sub_53EB8();
  }

  else
  {
    sub_53F08();
    swift_getWitnessTable();
    sub_54108();
    sub_53EB8();
    sub_54998();
    swift_getWitnessTable();
    sub_53F08();
    swift_getWitnessTable();
    sub_54108();
    return sub_53EB8();
  }
}

uint64_t sub_3818(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_532F0(2, 26, 0, 0))
  {
    sub_54118();
    sub_53EB8();
  }

  else
  {
    sub_53F08();
    swift_getWitnessTable();
    sub_54108();
    sub_53EB8();
    sub_54998();
    swift_getWitnessTable();
    sub_53F08();
    swift_getWitnessTable();
    sub_54108();
    sub_53EB8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_3A38()
{
  v1 = *v0;
  sub_54668();
  v2 = sub_54718();

  return v2;
}

uint64_t sub_3A74()
{
  v1 = *v0;
  sub_54668();
  sub_546C8();
}

Swift::Int sub_3AC8()
{
  v1 = *v0;
  sub_54668();
  sub_54C28();
  sub_546C8();
  v2 = sub_54C58();

  return v2;
}

uint64_t sub_3B44(uint64_t a1, id *a2)
{
  result = sub_54648();
  *a2 = 0;
  return result;
}

uint64_t sub_3BBC(uint64_t a1, id *a2)
{
  v3 = sub_54658();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_3C3C@<X0>(uint64_t *a1@<X8>)
{
  sub_54668();
  v2 = sub_54638();

  *a1 = v2;
  return result;
}

uint64_t sub_3C80()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_53AB8();
}

uint64_t sub_3CCC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_53AA8();
}

Swift::Int sub_3D24()
{
  sub_54C28();
  v1 = *v0;
  swift_getWitnessTable();
  sub_53AA8();
  return sub_54C58();
}

uint64_t sub_3D8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_54668();
  v6 = v5;
  if (v4 == sub_54668() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_54BD8();
  }

  return v9 & 1;
}

uint64_t sub_3E14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();
  return sub_53A98() & 1;
}

void *sub_3E78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_3E88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_54638();

  *a2 = v5;
  return result;
}

uint64_t sub_3ED0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_54668();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_3EFC(uint64_t a1)
{
  v2 = sub_4164(&qword_77060, type metadata accessor for SRSensor);
  v3 = sub_4164(&qword_77068, type metadata accessor for SRSensor);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_3FB8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_54BD8();
      }
    }

    else if (!a6)
    {
      return sub_54328();
    }

    return 0;
  }

  if (a3 == 2)
  {
    if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_54BD8();
    }

    return 0;
  }

  if (a3 != 3)
  {
    return a6 == 4 && !(a5 | a4);
  }

  if (a6 != 3)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_54BD8();
}

uint64_t sub_4088(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_4164(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_41D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_4304(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_4320(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_4334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_437C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 sub_43D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_43E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_4430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_4478(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_44BC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_4504()
{
  result = qword_770A0;
  if (!qword_770A0)
  {
    sub_4590(&qword_77090, &qword_562C0);
    sub_45D8();
    sub_4688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_770A0);
  }

  return result;
}

uint64_t sub_4590(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_45D8()
{
  result = qword_770A8;
  if (!qword_770A8)
  {
    sub_4590(&qword_77088, &qword_562B8);
    sub_489C(&qword_770B0, &qword_77098, &qword_562C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_770A8);
  }

  return result;
}

unint64_t sub_4688()
{
  result = qword_770B8;
  if (!qword_770B8)
  {
    sub_4590(&qword_770C0, &qword_562D0);
    sub_4714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_770B8);
  }

  return result;
}

unint64_t sub_4714()
{
  result = qword_770C8;
  if (!qword_770C8)
  {
    sub_4590(&qword_770D0, &qword_562D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_770C8);
  }

  return result;
}

uint64_t sub_4790(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_44BC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_47F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_44BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_489C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4590(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivacyAndSecuritySettingsListItemIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyAndSecuritySettingsListItemIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_4A60()
{
  result = qword_770F0;
  if (!qword_770F0)
  {
    sub_4590(&qword_770F8, qword_56330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_770F0);
  }

  return result;
}

uint64_t sub_4AC4(char a1)
{
  switch(a1)
  {
    case 8:
      v1 = [objc_opt_self() defaultWorkspace];
      if (!v1)
      {
        __break(1u);
        JUMPOUT(0x5A1CLL);
      }

      v2 = v1;
      v3 = sub_54638();
      [v2 applicationIsInstalled:v3];

      v4 = sub_54628();
      v5 = *(*(v4 - 8) + 64);
      __chkstk_darwin(v4 - 8);
      break;
    default:
      v6 = sub_54628();
      v7 = *(*(v6 - 8) + 64);
      __chkstk_darwin(v6 - 8);
      break;
  }

  sub_54618();
  if (qword_76FE0 != -1)
  {
    swift_once();
  }

  v8 = sub_53908();
  v9 = sub_7700(v8, qword_7BC00);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v9);
  (*(v12 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_539F8();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_539E8();
  return sub_53928();
}

unint64_t sub_5AD0(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000030;
      break;
    case 2:
    case 9:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 16:
      result = 0x6C7070612E6D6F63;
      break;
    case 7:
    case 22:
    case 24:
      result = 0xD000000000000025;
      break;
    case 8:
      v3 = [objc_opt_self() defaultWorkspace];
      if (!v3)
      {
        __break(1u);
        JUMPOUT(0x6050);
      }

      v4 = v3;
      v5 = sub_54638();
      v6 = [v4 applicationIsInstalled:v5];

      if (v6)
      {
        result = 0xD000000000000019;
      }

      else
      {
        result = 0xD000000000000024;
      }

      break;
    case 10:
    case 29:
      result = 0xD000000000000022;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
    case 19:
    case 35:
      result = 0xD000000000000028;
      break;
    case 14:
    case 21:
      result = 0xD00000000000002ALL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 17:
    case 37:
      result = 0xD00000000000002DLL;
      break;
    case 18:
    case 39:
      result = 0xD000000000000027;
      break;
    case 20:
    case 36:
      result = 0xD000000000000029;
      break;
    case 23:
      result = 0xD000000000000035;
      break;
    case 25:
      result = 0xD00000000000001FLL;
      break;
    case 26:
      v7 = [objc_opt_self() currentDevice];
      v8 = [v7 userInterfaceIdiom];

      if (v8)
      {
        result = 0xD000000000000016;
      }

      else
      {
        result = 0xD000000000000012;
      }

      break;
    case 27:
    case 28:
    case 30:
      return result;
    case 31:
    case 42:
      result = 0xD000000000000037;
      break;
    case 32:
      result = 0xD000000000000023;
      break;
    case 33:
      result = 0xD00000000000002CLL;
      break;
    case 34:
      result = 0xD000000000000031;
      break;
    case 40:
      result = 0xD000000000000026;
      break;
    case 41:
      result = 0xD000000000000021;
      break;
    case 43:
      result = 0xD00000000000002FLL;
      break;
    case 44:
      result = 0xD00000000000001ELL;
      break;
    default:
      result = 0xD00000000000001FLL;
      break;
  }

  return result;
}

uint64_t sub_6104(char a1)
{
  result = 0x4E4F495441434F4CLL;
  switch(a1)
  {
    case 1:
      v3 = &kTCCUserTrackingID;
      goto LABEL_42;
    case 2:
      v3 = &kTCCCalendarsID;
      goto LABEL_42;
    case 3:
      v3 = &kTCCContactsID;
      goto LABEL_42;
    case 4:
      return 0x45434341454C4946;
    case 5:
      v4 = [objc_opt_self() defaultWorkspace];
      if (!v4)
      {
        __break(1u);
        JUMPOUT(0x6620);
      }

      v5 = v4;
      v6 = sub_54638();
      v7 = [v5 applicationIsInstalled:v6];

      if (v7)
      {
        return 0x48544C414548;
      }

      else
      {
        return 0x445F48544C414548;
      }

    case 6:
      v3 = &kTCCMediaLibraryID;
      goto LABEL_42;
    case 7:
      return 0x445F444552494150;
    case 8:
      v3 = &kTCCPhotosID;
      goto LABEL_42;
    case 9:
      v3 = &kTCCRemindersID;
      goto LABEL_42;
    case 10:
      return 0x524F535345434341;
    case 11:
      v3 = &kTCCBluetoothSharingID;
      goto LABEL_42;
    case 12:
      v3 = &kTCCCameraID;
      goto LABEL_42;
    case 13:
    case 34:
      return 0xD000000000000011;
    case 14:
      return 0x4C544341544E4F43;
    case 15:
      return 0x5355434F46;
    case 16:
      return 0x574F4C4C4957;
    case 17:
    case 38:
      return 0xD000000000000016;
    case 18:
      return 0x454E5F4C41434F4CLL;
    case 19:
      v3 = &kTCCMicrophoneID;
      goto LABEL_42;
    case 20:
      v3 = &kTCCMotionID;
      goto LABEL_42;
    case 21:
      v3 = &kTCCNearbyInteractions;
      goto LABEL_42;
    case 22:
      return 0x5359454B53534150;
    case 23:
      return 0x43414E414D4C41;
    case 24:
      return 0x455F455255434553;
    case 25:
      v3 = &kTCCSpeechRecognitionID;
LABEL_42:
      v8 = *v3;
      result = sub_54668();
      break;
    case 26:
      result = 0x54454C4C4157;
      break;
    case 27:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0x4D41435F4E49414DLL;
      break;
    case 29:
      result = 0xD00000000000001CLL;
      break;
    case 30:
      result = 0x444E554F52525553;
      break;
    case 31:
      result = 0x53494C4B434F4C42;
      break;
    case 32:
      result = 0x435F595445464153;
      break;
    case 33:
      result = 0xD000000000000010;
      break;
    case 35:
      result = 0x5349545245564441;
      break;
    case 36:
      result = 0x5F59434156495250;
      break;
    case 37:
      result = 0xD000000000000019;
      break;
    case 39:
      result = 0xD000000000000010;
      break;
    case 40:
      result = 0xD000000000000017;
      break;
    case 41:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0xD000000000000020;
      break;
    case 43:
      result = 0xD000000000000018;
      break;
    case 44:
      result = 0x4E574F444B434F4CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_66D4(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      v3 = &kTCCUserTrackingID;
      goto LABEL_19;
    case 2:
      v3 = &kTCCCalendarsID;
      goto LABEL_19;
    case 3:
      v3 = &kTCCContactsID;
      goto LABEL_19;
    case 6:
      v3 = &kTCCMediaLibraryID;
      goto LABEL_19;
    case 8:
      v3 = &kTCCPhotosID;
      goto LABEL_19;
    case 9:
      v3 = &kTCCRemindersID;
      goto LABEL_19;
    case 11:
      v3 = &kTCCBluetoothSharingID;
      goto LABEL_19;
    case 12:
      v3 = &kTCCCameraID;
      goto LABEL_19;
    case 14:
      v3 = &kTCCContactlessAccess;
      goto LABEL_19;
    case 16:
      v3 = &kTCCWillowID;
      goto LABEL_19;
    case 19:
      v3 = &kTCCMicrophoneID;
      goto LABEL_19;
    case 20:
      v3 = &kTCCMotionID;
      goto LABEL_19;
    case 21:
      v3 = &kTCCNearbyInteractions;
      goto LABEL_19;
    case 22:
      v3 = &kTCCPasskeysID;
      goto LABEL_19;
    case 24:
      v3 = &kTCCSecureElementAccess;
      goto LABEL_19;
    case 25:
      v3 = &kTCCSpeechRecognitionID;
LABEL_19:
      v4 = *v3;
      result = sub_54668();
      break;
    case 26:
      result = 0x54454C4C4157;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_68B0(unsigned __int8 a1)
{
  if (a1 > 0x24u)
  {
    if (a1 - 37 < 2)
    {
      return 1;
    }
  }

  else if (a1 == 2 || a1 == 5 || a1 == 8)
  {
    v2 = objc_opt_self();
    v3 = sub_54638();
    v4 = [v2 applicationWithBundleIdentifier:v3];

    return v4;
  }

  return 0;
}

uint64_t sub_6A08(char a1)
{
  v2 = sub_53918();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_4AC4(a1);
  sub_54688();
  v13 = 0u;
  v14 = 0u;
  v4 = sub_54638();
  v5 = [objc_allocWithZone(PSSpecifier) initWithName:v4 target:0 set:0 get:0 detail:0 cell:1 edit:0];

  swift_unknownObjectRelease();
  if (v5)
  {

    sub_66D4(a1);
    if (!v6)
    {
      sub_6104(a1);
    }

    v7 = sub_54638();

    [v5 setIdentifier:{v7, v13, v14}];

    if (a1 == 24)
    {
      v8 = sub_54638();
      v9 = sub_54638();
      [v5 setProperty:v8 forKey:v9];

      v10 = sub_54638();
      v11 = sub_54638();
      [v5 setProperty:v10 forKey:v11];
    }

    return v5;
  }

  else
  {
    result = sub_54B48();
    __break(1u);
  }

  return result;
}

Swift::Int sub_6D5C()
{
  v1 = *v0;
  sub_54C28();
  sub_54C38(v1);
  return sub_54C58();
}

Swift::Int sub_6DD0()
{
  v1 = *v0;
  sub_54C28();
  sub_54C38(v1);
  return sub_54C58();
}

unint64_t sub_6E28()
{
  result = qword_77100;
  if (!qword_77100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77100);
  }

  return result;
}

unint64_t sub_6E88(char a1)
{
  result = 0x676E696B63617274;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x7261646E656C6163;
    case 3:
      return 0x73746361746E6F63;
    case 4:
      return 0x646E4173656C6966;
    case 5:
      return 0x68746C616568;
    case 6:
    case 21:
      return 0xD000000000000012;
    case 7:
      return 0x6544646572696170;
    case 8:
      return 0x736F746F6870;
    case 9:
      return 0x7265646E696D6572;
    case 10:
      return 0x726F737365636361;
    case 11:
      return 0x746F6F7465756C62;
    case 12:
      return 0x6172656D6163;
    case 13:
      return 0xD000000000000010;
    case 14:
    case 25:
    case 27:
      return 0xD000000000000011;
    case 15:
      return 0x7375636F66;
    case 16:
      return 0x74694B656D6F68;
    case 17:
      v3 = 5;
      goto LABEL_41;
    case 18:
      return 0x74654E6C61636F6CLL;
    case 19:
      return 0x6F68706F7263696DLL;
    case 20:
      return 0xD000000000000010;
    case 22:
      return 0x7379656B73736170;
    case 23:
      v3 = 10;
      goto LABEL_41;
    case 24:
      return 0x6C45657275636573;
    case 26:
      return 0x74656C6C6177;
    case 28:
      return 0x656D61436E69616DLL;
    case 29:
      v3 = 9;
LABEL_41:
      result = v3 | 0xD000000000000010;
      break;
    case 30:
      result = 0x646E756F72727573;
      break;
    case 31:
      result = 0x73696C6B636F6C62;
      break;
    case 32:
      result = 0x6843797465666173;
      break;
    case 33:
    case 37:
      result = 0xD000000000000017;
      break;
    case 34:
      result = 0xD000000000000018;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0xD000000000000010;
      break;
    case 38:
      result = 0xD000000000000014;
      break;
    case 39:
      result = 0x53646E4161746164;
      break;
    case 40:
      result = 0x65706F6C65766564;
      break;
    case 41:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0xD00000000000001ELL;
      break;
    case 43:
      result = 0xD000000000000016;
      break;
    case 44:
      result = 0x6E776F646B636F6CLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void *sub_7400(char a1)
{
  v1 = 0;
  switch(a1)
  {
    case 1:
      v1 = kTCCServiceUserTracking;
      if (kTCCServiceUserTracking)
      {
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_4;
    case 2:
      goto LABEL_12;
    case 3:
      goto LABEL_20;
    case 6:
      goto LABEL_18;
    case 8:
      goto LABEL_8;
    case 9:
      goto LABEL_14;
    case 11:
      goto LABEL_22;
    case 12:
      goto LABEL_24;
    case 14:
      goto LABEL_32;
    case 15:
      goto LABEL_30;
    case 16:
      goto LABEL_6;
    case 19:
      goto LABEL_16;
    case 20:
      goto LABEL_10;
    case 21:
LABEL_4:
      v1 = kTCCServiceNearbyInteraction;
      if (kTCCServiceNearbyInteraction)
      {
        goto LABEL_37;
      }

      __break(1u);
LABEL_6:
      v1 = kTCCServiceWillow;
      if (!kTCCServiceWillow)
      {
        __break(1u);
LABEL_8:
        v1 = kTCCServicePhotos;
        if (!kTCCServicePhotos)
        {
          __break(1u);
LABEL_10:
          v1 = kTCCServiceMotion;
          if (!kTCCServiceMotion)
          {
            __break(1u);
LABEL_12:
            v1 = kTCCServiceCalendar;
            if (!kTCCServiceCalendar)
            {
              __break(1u);
LABEL_14:
              v1 = kTCCServiceReminders;
              if (!kTCCServiceReminders)
              {
                __break(1u);
LABEL_16:
                v1 = kTCCServiceMicrophone;
                if (!kTCCServiceMicrophone)
                {
                  __break(1u);
LABEL_18:
                  v1 = kTCCServiceMediaLibrary;
                  if (!kTCCServiceMediaLibrary)
                  {
                    __break(1u);
LABEL_20:
                    v1 = kTCCServiceAddressBook;
                    if (!kTCCServiceAddressBook)
                    {
                      __break(1u);
LABEL_22:
                      v1 = kTCCServiceBluetoothAlways;
                      if (!kTCCServiceBluetoothAlways)
                      {
                        __break(1u);
LABEL_24:
                        v1 = kTCCServiceCamera;
                        if (!kTCCServiceCamera)
                        {
                          __break(1u);
LABEL_26:
                          v1 = kTCCServiceWebBrowserPublicKeyCredential;
                          if (!kTCCServiceWebBrowserPublicKeyCredential)
                          {
                            __break(1u);
LABEL_28:
                            v1 = kTCCServiceSecureElementAccess;
                            if (!kTCCServiceSecureElementAccess)
                            {
                              __break(1u);
LABEL_30:
                              v1 = kTCCServiceFocusStatus;
                              if (!kTCCServiceFocusStatus)
                              {
                                __break(1u);
LABEL_32:
                                v1 = kTCCServiceContactlessAccess;
                                if (!kTCCServiceContactlessAccess)
                                {
                                  __break(1u);
LABEL_34:
                                  v1 = kTCCServiceFinancialData;
                                  if (!kTCCServiceFinancialData)
                                  {
                                    __break(1u);
LABEL_36:
                                    v1 = kTCCServiceSpeechRecognition;
                                    if (!kTCCServiceSpeechRecognition)
                                    {
                                      __break(1u);
                                      JUMPOUT(0x75C0);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_37:
      v2 = v1;
      return v1;
    case 22:
      goto LABEL_26;
    case 24:
      goto LABEL_28;
    case 25:
      goto LABEL_36;
    case 26:
      goto LABEL_34;
    default:
      return v1;
  }
}

__n128 sub_7630@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for StaticPrivacyAndSecuritySettingsListItemProvider();
  *(swift_initStackObject() + 16) = v3;
  sub_7F60(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_76AC()
{
  result = qword_77108;
  if (!qword_77108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77108);
  }

  return result;
}

uint64_t sub_7700(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_7738(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_777C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_77C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 10) = *(a1 + 74);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 10) = *(a2 + 74);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_78C8(v7, v9) & 1;
}

uint64_t sub_7834(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 56);
  v12[2] = *(a1 + 40);
  v12[3] = v3;
  v13[0] = *(a1 + 72);
  *(v13 + 10) = *(a1 + 82);
  v4 = *(a1 + 24);
  v12[0] = *(a1 + 8);
  v12[1] = v4;
  v5 = *a2;
  v6 = *(a2 + 24);
  v14[0] = *(a2 + 8);
  v14[1] = v6;
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  *&v15[10] = *(a2 + 82);
  v14[3] = v8;
  *v15 = v9;
  v14[2] = v7;
  if (v2 == v5)
  {
    v10 = sub_78C8(v12, v14);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_78C8(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v13 = a1[8];
  v12 = a1[9];
  v14 = a1[10];
  v15 = *(a1 + 44);
  v16 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v16 != 2)
    {
      if (*(a2 + 56) >> 62 != 3)
      {
        return 0;
      }

      v39 = *a2 ^ v5;
      if (*a2 != v5)
      {
        return 0;
      }

      v40 = *(a2 + 8);
      v41 = *(a2 + 16);
      v42 = *(a2 + 24);
      v43 = *(a2 + 32);
      return (sub_541B8() & 1) != 0;
    }

    if (*(a2 + 56) >> 62 != 2)
    {
      return 0;
    }

    v25 = *a2 ^ v5;
    if (*a2 != v5)
    {
      return 0;
    }

    v26 = *(a2 + 8);
    v27 = *(a2 + 16);
    v28 = *(a2 + 40);
    v52 = *(a2 + 48);
    v50 = *(a2 + 88);
    v29 = *(a2 + 64);
    v46 = *(a2 + 72);
    v48 = *(a2 + 80);
    v30 = *(a2 + 32);
    v56 = *(a2 + 24) & 1;
    if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
    {
      return 0;
    }

    if (v15 != 0xFF)
    {
      if (v50 == 0xFF)
      {
        return 0;
      }

      sub_7C6C(v46, v48, v50);
      v31 = sub_3FB8(v12, v14, v15, v46, v48, v50);
      sub_7CAC(v46, v48, v50);
      return (v31 & 1) != 0;
    }

    if (v50 == 0xFF)
    {
      return 1;
    }
  }

  else if (v16)
  {
    if (*(a2 + 56) >> 62 != 1)
    {
      return 0;
    }

    v32 = *a2 ^ v5;
    if (*a2 != v5)
    {
      return 0;
    }

    v33 = *(a2 + 8);
    v34 = *(a2 + 16);
    v35 = *(a2 + 40);
    v53 = *(a2 + 48);
    v51 = *(a2 + 88);
    v36 = *(a2 + 64);
    v47 = *(a2 + 72);
    v49 = *(a2 + 80);
    v37 = *(a2 + 32);
    v55 = *(a2 + 24) & 1;
    if ((sub_541B8() & 1) == 0 || (sub_541B8() & 1) == 0)
    {
      return 0;
    }

    if (v15 == 0xFF)
    {
      if (v51 != 0xFF)
      {
        return 0;
      }
    }

    else
    {
      if (v51 == 0xFF)
      {
        return 0;
      }

      sub_7C6C(v47, v49, v51);
      v38 = sub_3FB8(v12, v14, v15, v47, v49, v51);
      sub_7CAC(v47, v49, v51);
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }

    v45 = v51 >> 8;
    if (v15 >> 8 != 2)
    {
      return v45 != 2 && ((v45 ^ (v15 >> 8)) & 1) == 0;
    }

    if (v45 == 2)
    {
      return 1;
    }
  }

  else
  {
    v17 = *(a2 + 56);
    if (v17 >> 62)
    {
      return 0;
    }

    v18 = *a2 ^ v5;
    if (*a2 != v5)
    {
      return 0;
    }

    v19 = *(a2 + 8);
    v20 = *(a2 + 16);
    v22 = *(a2 + 40);
    v21 = *(a2 + 48);
    v23 = *(a2 + 32);
    v54 = *(a2 + 24) & 1;
    if ((sub_541B8() & 1) == 0)
    {
      return 0;
    }

    if (v11 != 0xFF)
    {
      if (v17 == 0xFF)
      {
        return 0;
      }

      sub_7C6C(v22, v21, v17);
      v24 = sub_3FB8(v9, v10, v11, v22, v21, v17);
      sub_7CAC(v22, v21, v17);
      return (v24 & 1) != 0;
    }

    if (v17 == 0xFF)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_7C6C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_7CAC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_7CC0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_7CC0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_7D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_7D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_7D50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 6;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_7DA0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 90) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *a1 = -a2 << 6;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0;
      return result;
    }

    *(a1 + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7E28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24) & 1;
  v3 = *(result + 56) | (a2 << 62);
  *result &= 0x3FuLL;
  *(result + 24) = v2;
  *(result + 56) = v3;
  return result;
}

__n128 sub_7E60(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_7E8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 6;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_7EDC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 98) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(a1 + 8) = -a2 << 6;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7F60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_5AD0(v3);
  if (v6 >= 4u)
  {
    v15 = sub_53918();
    v16 = *(*(v15 - 8) + 64);
    __chkstk_darwin(v15 - 8);
    sub_4AC4(v3);
    result = sub_541F8();
    v13 = v17 & 1;
    v14 = 0xC000000000000000;
  }

  else
  {
    sub_7CC0(v4, v5, v6);
    v7 = sub_53918();
    v8 = *(*(v7 - 8) + 64);
    __chkstk_darwin(v7 - 8);
    sub_4AC4(v3);
    result = sub_541F8();
    v13 = v12 & 1;
    v14 = 255;
  }

  *a1 = v3;
  *(a1 + 8) = v3 & 0x3F;
  *(a1 + 16) = result;
  *(a1 + 24) = v10;
  *(a1 + 32) = v13;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v14;
  return result;
}

__n128 sub_80D0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_7F60(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PrivacyAndSecuritySettingsListSectionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyAndSecuritySettingsListSectionIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_8284()
{
  result = qword_771B8;
  if (!qword_771B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_771B8);
  }

  return result;
}

uint64_t sub_82D8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_8334(v8, v9) & 1;
}

uint64_t sub_8334(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[4];
  if (a1[4])
  {
    if (!v2)
    {
      return 0;
    }

    v3 = a1[1];
    v4 = a1[2];
    v5 = a1[3];
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[3];
    v9 = a1;
    v10 = a2;
    sub_4088(v6, v7, a2[3] & 1);

    v11 = sub_541B8();
    sub_84F8(v6, v7, v8 & 1);

    a1 = v9;
    a2 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v12 = a2[8];
  if (!a1[8])
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v16 = a2[5];
  v17 = a2[6];
  v18 = a2[7];
  v19 = a1;
  v20 = a2;
  sub_4088(v16, v17, a2[7] & 1);

  v21 = sub_541B8();
  sub_84F8(v16, v17, v18 & 1);

  a1 = v19;
  a2 = v20;
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v22 = a1[9];
  v23 = a2[9];

  return sub_4B8E0(v22, v23);
}

uint64_t sub_84F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_8508(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_8520(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_853C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_85EC()
{
  result = qword_771C0;
  if (!qword_771C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_771C0);
  }

  return result;
}

void sub_8640(void *a1@<X8>)
{
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = v4 - 1;
    v7 = &_swiftEmptyArrayStorage;
    while (1)
    {
      sub_89B8(v5, v43);
      v8 = v44;
      v9 = v45;
      sub_7738(v43, v44);
      (*(v9 + 24))(v46, v8, v9);
      v40 = v49;
      v41 = v50;
      v42 = v51;
      v36 = v46[0];
      v37 = v46[1];
      v38 = v47;
      v39 = v48;
      sub_777C(v43);
      if (*(&v46[0] + 1) >> 6 != 0xFFFFFFFFLL || v47 > 1 || v49 >= 0x100)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_238C8(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_238C8((v10 > 1), v11 + 1, 1, v7);
        }

        v33 = v40;
        v34 = v41;
        v35 = v42;
        v31 = v38;
        v32 = v39;
        v12 = v36;
        v29 = v36;
        v30 = v37;
        *(v7 + 2) = v11 + 1;
        v13 = &v7[104 * v11];
        v14 = v31;
        *(v13 + 3) = v30;
        *(v13 + 4) = v14;
        v15 = v32;
        v16 = v33;
        v17 = v34;
        *(v13 + 64) = v35;
        *(v13 + 6) = v16;
        *(v13 + 7) = v17;
        *(v13 + 5) = v15;
        *(v13 + 2) = v12;
      }

      if (!v6)
      {
        break;
      }

      --v6;
      v5 += 40;
    }

    if (*(v7 + 2))
    {
      if (*(v28 + 17) == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_A63C(v7);
        }

        v18 = *(v7 + 2);
        *&v29 = v7 + 32;
        *(&v29 + 1) = v18;
        sub_8A60(&v29);
      }

      v27 = *(v28 + 16);
      v19 = *(v28 + 24);
      v20 = *(v28 + 32);
      v21 = *(v28 + 40);
      v22 = *(v28 + 48);
      v23 = *(v28 + 56);
      v24 = *(v28 + 64);
      v26 = *(v28 + 72);
      v25 = *(v28 + 80);
      sub_8A1C(v19, v20, v21, v22);
      sub_8A1C(v23, v24, v26, v25);
      v4 = v27;
    }

    else
    {

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v26 = 0;
      v25 = 0;
      v7 = 0;
      v4 = 0;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0;
    v7 = 0;
  }

  *a1 = v4;
  a1[1] = v19;
  a1[2] = v20;
  a1[3] = v21;
  a1[4] = v22;
  a1[5] = v23;
  a1[6] = v24;
  a1[7] = v26;
  a1[8] = v25;
  a1[9] = v7;
}

uint64_t sub_88F8()
{
  sub_A754(v0[3], v0[4], v0[5], v0[6]);
  sub_A754(v0[7], v0[8], v0[9], v0[10]);
  v1 = v0[11];

  return swift_deallocClassInstance();
}

__n128 sub_896C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_8640(v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v6[4];
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_89B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_8A1C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_4088(result, a2, a3 & 1);
  }

  return result;
}

Swift::Int sub_8A60(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_54BA8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_54768();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_8F9C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_8B58(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_8B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v64 = sub_53FD8();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v64);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a2;
  if (a3 != a2)
  {
    v12 = *a4;
    v13 = sub_53918();
    v14 = *(v13 - 8);
    result = v13 - 8;
    v62 = *(v14 + 64);
    v60 = v12;
    v61 = (v8 + 8);
    v15 = (v12 + 104 * a3);
    v16 = a1 - a3 + 1;
LABEL_5:
    v58 = v15;
    v59 = a3;
    v57 = v16;
    v70 = v16;
    while (1)
    {
      v17 = *v15;
      v18 = v15[2];
      v83[1] = v15[1];
      v83[2] = v18;
      v83[0] = v17;
      v19 = v15[3];
      v20 = v15[4];
      v21 = v15[5];
      v84 = *(v15 + 48);
      v83[4] = v20;
      v83[5] = v21;
      v83[3] = v19;
      v22 = *(v15 - 40);
      v23 = *(v15 - 24);
      v24 = *(v15 - 56);
      v86 = *(v15 - 4);
      v85[4] = v22;
      v85[5] = v23;
      v85[3] = v24;
      v25 = *(v15 - 104);
      v26 = *(v15 - 72);
      v85[1] = *(v15 - 88);
      v85[2] = v26;
      v85[0] = v25;
      v27 = v83[0];
      LODWORD(v72) = v25;
      __chkstk_darwin(result);
      sub_A650(v83, &v76);
      sub_A650(v85, &v76);
      sub_4AC4(v27);
      v73 = sub_541F8();
      v67 = v28;
      v68 = v29;
      v69 = v30;
      __chkstk_darwin(v73);
      sub_4AC4(v72);
      v65 = sub_541F8();
      v71 = v31;
      v87 = v32;
      v72 = v33;
      v34 = v63;
      sub_53FC8();
      v35 = sub_541A8();
      v37 = v36;
      v66 = v36;
      v38 = *v61;
      v39 = v64;
      (*v61)(v34, v64);
      *&v76 = v35;
      *(&v76 + 1) = v37;
      sub_53FC8();
      v40 = v65;
      v41 = sub_541A8();
      v43 = v42;
      v38(v34, v39);
      v74 = v41;
      v75 = v43;
      sub_A700();
      v44 = sub_549C8();

      sub_84F8(v40, v71, v87 & 1);

      sub_84F8(v73, v67, v68 & 1);

      sub_A6AC(v85);
      result = sub_A6AC(v83);
      v45 = v70;
      if (v44 != -1)
      {
LABEL_4:
        a3 = v59 + 1;
        v15 = (v58 + 104);
        v16 = v57 - 1;
        if (v59 + 1 == v56)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v60)
      {
        break;
      }

      v46 = v15 - 104;
      v79 = v15[3];
      v80 = v15[4];
      v81 = v15[5];
      v82 = *(v15 + 48);
      v76 = *v15;
      v77 = v15[1];
      v78 = v15[2];
      v47 = *(v15 - 88);
      *v15 = *(v15 - 104);
      v15[1] = v47;
      *(v15 + 12) = *(v15 - 1);
      v48 = *(v15 - 24);
      v15[4] = *(v15 - 40);
      v15[5] = v48;
      v49 = *(v15 - 56);
      v15[2] = *(v15 - 72);
      v15[3] = v49;
      v50 = v76;
      v51 = v78;
      *(v46 + 16) = v77;
      *(v46 + 32) = v51;
      *v46 = v50;
      v52 = v79;
      v53 = v80;
      v54 = v81;
      *(v46 + 96) = v82;
      *(v46 + 64) = v53;
      *(v46 + 80) = v54;
      *(v46 + 48) = v52;
      if (!v45)
      {
        goto LABEL_4;
      }

      v70 = v45 + 1;
      v15 = (v15 - 104);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_8F9C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v185 = a1;
  v197 = sub_53FD8();
  v7 = *(*(v197 - 8) + 64);
  result = __chkstk_darwin(v197);
  v196 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = &_swiftEmptyArrayStorage;
LABEL_93:
    v4 = *v185;
    if (!*v185)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_105F8(v13);
      v13 = result;
    }

    v233 = v13;
    v176 = v13;
    v177 = *(v13 + 16);
    if (v177 >= 2)
    {
      v13 = 104;
      while (*v190)
      {
        v178 = *&v176[16 * v177];
        v179 = *&v176[16 * v177 + 24];
        v180 = v192;
        sub_9DBC((*v190 + 104 * v178), (*v190 + 104 * *&v176[16 * v177 + 16]), (*v190 + 104 * v179), v4);
        v192 = v180;
        if (v180)
        {
        }

        if (v179 < v178)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v176 = sub_105F8(v176);
        }

        if (v177 - 2 >= *(v176 + 2))
        {
          goto LABEL_120;
        }

        v181 = &v176[16 * v177];
        *v181 = v178;
        *(v181 + 1) = v179;
        v233 = v176;
        result = sub_1056C(v177 - 1);
        v176 = v233;
        v177 = *(v233 + 16);
        if (v177 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v183 = a4;
  v12 = 0;
  v195 = (v9 + 8);
  v13 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v14 = v12;
    v15 = v12 + 1;
    v187 = v12;
    if (v12 + 1 < v11)
    {
      v184 = v13;
      v204 = *v190;
      v205 = v12 + 1;
      v16 = v204 + 104 * v15;
      v17 = *v16;
      v18 = *(v16 + 16);
      v19 = *(v16 + 32);
      v194 = v11;
      v220 = v18;
      v221 = v19;
      v219 = v17;
      v20 = *(v16 + 48);
      v21 = *(v16 + 64);
      v22 = *(v16 + 80);
      v225 = *(v16 + 96);
      v223 = v21;
      v224 = v22;
      v222 = v20;
      v23 = v204 + 104 * v12;
      v25 = *(v23 + 64);
      v24 = *(v23 + 80);
      v26 = *(v23 + 48);
      v232 = *(v23 + 96);
      v230 = v25;
      v231 = v24;
      v229 = v26;
      v27 = *v23;
      v28 = *(v23 + 32);
      v227 = *(v23 + 16);
      v228 = v28;
      v226 = v27;
      v29 = v219;
      v30 = v27;
      v31 = sub_53918();
      v32 = *(*(v31 - 8) + 64);
      __chkstk_darwin(v31 - 8);
      sub_A650(&v219, &v212);
      sub_A650(&v226, &v212);
      sub_4AC4(v29);
      v4 = sub_541F8();
      v234 = v33;
      v35 = v34;
      LODWORD(v206) = v34;
      v37 = v36;
      v193 = v32;
      __chkstk_darwin(v4);
      sub_4AC4(v30);
      v38 = sub_541F8();
      v40 = v39;
      v42 = v41;
      v14 = v187;
      v43 = v35 & 1;
      v44 = v234;
      LODWORD(v198) = sub_51F00(v4, v234, v43, v37, v38, v39, v42 & 1, v45);
      sub_84F8(v38, v40, v42 & 1);

      sub_84F8(v4, v44, v206 & 1);

      sub_A6AC(&v226);
      result = sub_A6AC(&v219);
      v46 = v14 + 2;
      if (v14 + 2 >= v194)
      {
        v15 = v14 + 2;
        v76 = v205;
      }

      else
      {
        v47 = v204 + 104 * v14 + 208;
        while (1)
        {
          v234 = &v182;
          v191 = v46;
          v48 = *v47;
          v49 = *(v47 + 32);
          v210[1] = *(v47 + 16);
          v210[2] = v49;
          v210[0] = v48;
          v50 = *(v47 + 48);
          v51 = *(v47 + 64);
          v52 = *(v47 + 80);
          v211 = *(v47 + 96);
          v210[4] = v51;
          v210[5] = v52;
          v210[3] = v50;
          v53 = *(v47 - 40);
          v54 = *(v47 - 24);
          v55 = *(v47 - 56);
          v218 = *(v47 - 8);
          v216 = v53;
          v217 = v54;
          v215 = v55;
          v56 = *(v47 - 104);
          v57 = *(v47 - 72);
          v213 = *(v47 - 88);
          v214 = v57;
          v212 = v56;
          v58 = v210[0];
          LODWORD(v206) = v56;
          __chkstk_darwin(result);
          sub_A650(v210, v209);
          sub_A650(&v212, v209);
          sub_4AC4(v58);
          v59 = sub_541F8();
          v202 = v60;
          v203 = v59;
          LODWORD(v204) = v61;
          v205 = v62;
          v200 = &v182;
          __chkstk_darwin(v59);
          sub_4AC4(v206);
          v199 = sub_541F8();
          v234 = v63;
          LODWORD(v201) = v64;
          v206 = v65;
          v66 = v196;
          sub_53FC8();
          v67 = sub_541A8();
          v69 = v68;
          v200 = v68;
          v70 = *v195;
          v4 = v197;
          (*v195)(v66, v197);
          v209[0] = v67;
          v209[1] = v69;
          sub_53FC8();
          v71 = v199;
          v72 = sub_541A8();
          v74 = v73;
          v70(v66, v4);
          v207 = v72;
          v208 = v74;
          sub_A700();
          v75 = sub_549C8();

          sub_84F8(v71, v234, v201 & 1);

          sub_84F8(v203, v202, v204 & 1);

          sub_A6AC(&v212);
          result = sub_A6AC(v210);
          if ((v198 & 1) == (v75 != -1))
          {
            break;
          }

          v76 = v191;
          v46 = v191 + 1;
          v47 += 104;
          v15 = v194;
          if (v194 == v191 + 1)
          {
            goto LABEL_12;
          }
        }

        v15 = v191;
        v76 = v191 - 1;
LABEL_12:
        v14 = v187;
      }

      v13 = v184;
      if (v198)
      {
        if (v15 < v14)
        {
          goto LABEL_123;
        }

        if (v14 <= v76)
        {
          v77 = v15;
          v78 = 104 * v15 - 104;
          v4 = 104 * v14;
          v79 = v14;
          do
          {
            if (v79 != --v77)
            {
              v81 = *v190;
              if (!*v190)
              {
                goto LABEL_129;
              }

              v80 = v81 + v78;
              v215 = *(v81 + v4 + 48);
              v216 = *(v81 + v4 + 64);
              v217 = *(v81 + v4 + 80);
              v218 = *(v81 + v4 + 96);
              v212 = *(v81 + v4);
              v213 = *(v81 + v4 + 16);
              v214 = *(v81 + v4 + 32);
              result = memmove((v81 + v4), (v81 + v78), 0x68uLL);
              *(v80 + 48) = v215;
              *(v80 + 64) = v216;
              *(v80 + 80) = v217;
              *(v80 + 96) = v218;
              *v80 = v212;
              *(v80 + 16) = v213;
              *(v80 + 32) = v214;
              v14 = v187;
            }

            ++v79;
            v78 -= 104;
            v4 += 104;
          }

          while (v79 < v77);
          v13 = v184;
        }
      }
    }

    v82 = v190[1];
    if (v15 >= v82)
    {
      v12 = v15;
LABEL_39:
      if (v12 < v14)
      {
        goto LABEL_121;
      }

      goto LABEL_40;
    }

    if (__OFSUB__(v15, v14))
    {
      goto LABEL_122;
    }

    v12 = v15;
    if (v15 - v14 >= v183)
    {
      goto LABEL_39;
    }

    if (__OFADD__(v14, v183))
    {
      goto LABEL_124;
    }

    if (v14 + v183 < v82)
    {
      v82 = v14 + v183;
    }

    if (v82 < v14)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v15 != v82)
    {
      break;
    }

LABEL_90:
    if (v12 < v187)
    {
      goto LABEL_121;
    }

LABEL_40:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1060C(0, *(v13 + 16) + 1, 1, v13);
      v13 = result;
    }

    v129 = *(v13 + 16);
    v128 = *(v13 + 24);
    v130 = v129 + 1;
    if (v129 >= v128 >> 1)
    {
      result = sub_1060C((v128 > 1), v129 + 1, 1, v13);
      v13 = result;
    }

    *(v13 + 16) = v130;
    v131 = v13 + 16 * v129;
    *(v131 + 32) = v187;
    *(v131 + 40) = v12;
    v4 = *v185;
    if (!*v185)
    {
      goto LABEL_131;
    }

    if (v129)
    {
      while (1)
      {
        v132 = v130 - 1;
        if (v130 >= 4)
        {
          break;
        }

        if (v130 == 3)
        {
          v133 = *(v13 + 32);
          v134 = *(v13 + 40);
          v143 = __OFSUB__(v134, v133);
          v135 = v134 - v133;
          v136 = v143;
LABEL_59:
          if (v136)
          {
            goto LABEL_110;
          }

          v149 = (v13 + 16 * v130);
          v151 = *v149;
          v150 = v149[1];
          v152 = __OFSUB__(v150, v151);
          v153 = v150 - v151;
          v154 = v152;
          if (v152)
          {
            goto LABEL_113;
          }

          v155 = (v13 + 32 + 16 * v132);
          v157 = *v155;
          v156 = v155[1];
          v143 = __OFSUB__(v156, v157);
          v158 = v156 - v157;
          if (v143)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v153, v158))
          {
            goto LABEL_117;
          }

          if (v153 + v158 >= v135)
          {
            if (v135 < v158)
            {
              v132 = v130 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v159 = (v13 + 16 * v130);
        v161 = *v159;
        v160 = v159[1];
        v143 = __OFSUB__(v160, v161);
        v153 = v160 - v161;
        v154 = v143;
LABEL_73:
        if (v154)
        {
          goto LABEL_112;
        }

        v162 = v13 + 16 * v132;
        v164 = *(v162 + 32);
        v163 = *(v162 + 40);
        v143 = __OFSUB__(v163, v164);
        v165 = v163 - v164;
        if (v143)
        {
          goto LABEL_115;
        }

        if (v165 < v153)
        {
          goto LABEL_3;
        }

LABEL_80:
        v170 = v132 - 1;
        if (v132 - 1 >= v130)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v190)
        {
          goto LABEL_128;
        }

        v171 = v13;
        v172 = *(v13 + 32 + 16 * v170);
        v173 = *(v13 + 32 + 16 * v132);
        v13 = *(v13 + 32 + 16 * v132 + 8);
        v174 = v192;
        sub_9DBC((*v190 + 104 * v172), (*v190 + 104 * v173), (*v190 + 104 * v13), v4);
        v192 = v174;
        if (v174)
        {
        }

        if (v13 < v172)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = sub_105F8(v171);
        }

        if (v170 >= *(v171 + 2))
        {
          goto LABEL_107;
        }

        v175 = &v171[16 * v170];
        *(v175 + 4) = v172;
        *(v175 + 5) = v13;
        v233 = v171;
        result = sub_1056C(v132);
        v13 = v233;
        v130 = *(v233 + 16);
        if (v130 <= 1)
        {
          goto LABEL_3;
        }
      }

      v137 = v13 + 32 + 16 * v130;
      v138 = *(v137 - 64);
      v139 = *(v137 - 56);
      v143 = __OFSUB__(v139, v138);
      v140 = v139 - v138;
      if (v143)
      {
        goto LABEL_108;
      }

      v142 = *(v137 - 48);
      v141 = *(v137 - 40);
      v143 = __OFSUB__(v141, v142);
      v135 = v141 - v142;
      v136 = v143;
      if (v143)
      {
        goto LABEL_109;
      }

      v144 = (v13 + 16 * v130);
      v146 = *v144;
      v145 = v144[1];
      v143 = __OFSUB__(v145, v146);
      v147 = v145 - v146;
      if (v143)
      {
        goto LABEL_111;
      }

      v143 = __OFADD__(v135, v147);
      v148 = v135 + v147;
      if (v143)
      {
        goto LABEL_114;
      }

      if (v148 >= v140)
      {
        v166 = (v13 + 32 + 16 * v132);
        v168 = *v166;
        v167 = v166[1];
        v143 = __OFSUB__(v167, v168);
        v169 = v167 - v168;
        if (v143)
        {
          goto LABEL_118;
        }

        if (v135 < v169)
        {
          v132 = v130 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v11 = v190[1];
    if (v12 >= v11)
    {
      goto LABEL_93;
    }
  }

  v83 = v15;
  v186 = v82;
  v184 = v13;
  v84 = *v190;
  v85 = sub_53918();
  v86 = *(v85 - 8);
  result = v85 - 8;
  v87 = *(v86 + 64);
  v193 = v84;
  v194 = v87;
  v88 = (v84 + 104 * v15);
  v89 = v187 - v15 + 1;
LABEL_33:
  v191 = v83;
  v188 = v89;
  v189 = v88;
  v204 = v89;
  while (1)
  {
    v90 = *v88;
    v91 = v88[2];
    v220 = v88[1];
    v221 = v91;
    v219 = v90;
    v92 = v88[3];
    v93 = v88[4];
    v94 = v88[5];
    v225 = *(v88 + 48);
    v223 = v93;
    v224 = v94;
    v222 = v92;
    v95 = *(v88 - 40);
    v96 = *(v88 - 24);
    v97 = *(v88 - 56);
    v232 = *(v88 - 4);
    v230 = v95;
    v231 = v96;
    v229 = v97;
    v98 = *(v88 - 104);
    v99 = *(v88 - 72);
    v227 = *(v88 - 88);
    v228 = v99;
    v226 = v98;
    v100 = v219;
    LODWORD(v206) = v98;
    __chkstk_darwin(result);
    sub_A650(&v219, &v212);
    sub_A650(&v226, &v212);
    sub_4AC4(v100);
    v201 = sub_541F8();
    v234 = v101;
    LODWORD(v202) = v102;
    v203 = v103;
    __chkstk_darwin(v201);
    sub_4AC4(v206);
    v198 = sub_541F8();
    v205 = v105;
    v206 = v104;
    LODWORD(v200) = v106;
    v107 = v196;
    sub_53FC8();
    v108 = sub_541A8();
    v110 = v109;
    v199 = v109;
    v4 = v195;
    v111 = *v195;
    v112 = v197;
    (*v195)(v107, v197);
    *&v212 = v108;
    *(&v212 + 1) = v110;
    sub_53FC8();
    v113 = v198;
    v114 = sub_541A8();
    v116 = v115;
    v111(v107, v112);
    *&v210[0] = v114;
    *(&v210[0] + 1) = v116;
    sub_A700();
    v117 = sub_549C8();

    sub_84F8(v113, v206, v200 & 1);

    sub_84F8(v201, v234, v202 & 1);

    sub_A6AC(&v226);
    result = sub_A6AC(&v219);
    v118 = v204;
    if (v117 != -1)
    {
LABEL_32:
      v83 = v191 + 1;
      v88 = (v189 + 104);
      v89 = v188 - 1;
      if (v191 + 1 != v186)
      {
        goto LABEL_33;
      }

      v12 = v186;
      v13 = v184;
      goto LABEL_90;
    }

    if (!v193)
    {
      break;
    }

    v119 = v88 - 104;
    v215 = v88[3];
    v216 = v88[4];
    v217 = v88[5];
    v218 = *(v88 + 48);
    v212 = *v88;
    v213 = v88[1];
    v214 = v88[2];
    v120 = *(v88 - 88);
    *v88 = *(v88 - 104);
    v88[1] = v120;
    *(v88 + 12) = *(v88 - 1);
    v121 = *(v88 - 24);
    v88[4] = *(v88 - 40);
    v88[5] = v121;
    v122 = *(v88 - 56);
    v88[2] = *(v88 - 72);
    v88[3] = v122;
    v123 = v212;
    v124 = v214;
    *(v119 + 16) = v213;
    *(v119 + 32) = v124;
    *v119 = v123;
    v125 = v215;
    v126 = v216;
    v127 = v217;
    *(v119 + 96) = v218;
    *(v119 + 64) = v126;
    *(v119 + 80) = v127;
    *(v119 + 48) = v125;
    if (!v118)
    {
      goto LABEL_32;
    }

    v204 = v118 + 1;
    v88 = (v88 - 104);
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_9DBC(char *a1, char *a2, char *a3, char *a4)
{
  v101 = sub_53FD8();
  v8 = *(v101 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v101);
  v100 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 - a1;
  v12 = (a2 - a1) / 104;
  v13 = (a3 - a2) / 104;
  v102 = a1;
  if (v12 >= v13)
  {
    v51 = 104 * v13;
    if (a4 != a2 || &a2[v51] <= a4)
    {
      memmove(a4, a2, 104 * v13);
    }

    v15 = &a4[v51];
    if (a3 - a2 < 104 || a2 <= v102)
    {
      v86 = a2;
    }

    else
    {
      v52 = sub_53918();
      v54 = *(v52 - 8);
      v53 = v52 - 8;
      v91 = *(v54 + 64);
      v90 = (v8 + 8);
      v126 = a4;
LABEL_22:
      v99 = a2;
      v55 = a2 - 104;
      v56 = a3 - 104;
      v57 = v15;
      v92 = a2 - 104;
      do
      {
        v105 = &v89;
        v15 = v57;
        v58 = *(v57 - 104);
        v107 = v56;
        v98 = (v56 + 104);
        v59 = *(v57 - 72);
        v113 = *(v57 - 88);
        v114 = v59;
        v112 = v58;
        v60 = *(v57 - 56);
        v61 = *(v57 - 40);
        v62 = *(v57 - 24);
        v118 = *(v57 - 8);
        v116 = v61;
        v117 = v62;
        v115 = v60;
        v63 = *(v55 + 5);
        v123 = *(v55 + 4);
        v124 = v63;
        v125 = *(v55 + 48);
        v64 = *(v55 + 1);
        v119 = *v55;
        v120 = v64;
        v65 = *(v55 + 3);
        v121 = *(v55 + 2);
        v122 = v65;
        v66 = v112;
        LODWORD(v104) = v119;
        __chkstk_darwin(v53);
        sub_A650(&v112, &v110);
        sub_A650(&v119, &v110);
        sub_4AC4(v66);
        v95 = sub_541F8();
        v106 = v67;
        LODWORD(v96) = v68;
        v97 = v69;
        __chkstk_darwin(v95);
        sub_4AC4(v104);
        v93 = sub_541F8();
        v104 = v70;
        v105 = v71;
        LODWORD(v103) = v72;
        v73 = v100;
        sub_53FC8();
        v74 = sub_541A8();
        v76 = v75;
        v94 = v75;
        v77 = *v90;
        v78 = v101;
        (*v90)(v73, v101);
        v110 = v74;
        v111 = v76;
        sub_53FC8();
        v79 = v93;
        v80 = sub_541A8();
        v82 = v81;
        v77(v73, v78);
        v108 = v80;
        v109 = v82;
        sub_A700();
        v83 = sub_549C8();

        sub_84F8(v79, v104, v103 & 1);

        sub_84F8(v95, v106, v96 & 1);

        sub_A6AC(&v119);
        v53 = sub_A6AC(&v112);
        if (v83 == -1)
        {
          a3 = v107;
          if (v98 < v99 || v107 >= v99)
          {
            v85 = v92;
            v53 = memmove(v107, v92, 0x68uLL);
            a4 = v126;
          }

          else
          {
            a4 = v126;
            v85 = v92;
            if (v98 != v99)
            {
              v53 = memmove(v107, v92, 0x68uLL);
            }
          }

          if (v15 <= a4 || (a2 = v85, v85 <= v102))
          {
            v86 = v85;
            goto LABEL_42;
          }

          goto LABEL_22;
        }

        v57 = v15 - 104;
        v84 = v107;
        if (v98 < v15 || v107 >= v15)
        {
          v53 = memmove(v107, (v15 - 104), 0x68uLL);
          a4 = v126;
          v55 = v92;
        }

        else
        {
          a4 = v126;
          v55 = v92;
          if (v98 != v15)
          {
            v53 = memmove(v107, (v15 - 104), 0x68uLL);
          }
        }

        v56 = v84 - 104;
      }

      while (v57 > a4);
      v15 -= 104;
      v86 = v99;
    }
  }

  else
  {
    v14 = 104 * v12;
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, v14);
    }

    v15 = &a4[v14];
    if (v11 >= 104 && a2 < a3)
    {
      v16 = sub_53918();
      v18 = *(v16 - 8);
      v17 = v16 - 8;
      v92 = *(v18 + 64);
      v93 = &a4[v14];
      v91 = (v8 + 8);
      v107 = a3;
      while (1)
      {
        v126 = a4;
        v99 = a2;
        v19 = *a2;
        v20 = *(a2 + 2);
        v113 = *(a2 + 1);
        v114 = v20;
        v112 = v19;
        v21 = *(a2 + 3);
        v22 = *(a2 + 4);
        v23 = *(a2 + 5);
        v118 = *(a2 + 48);
        v116 = v22;
        v117 = v23;
        v115 = v21;
        v25 = *(a4 + 4);
        v24 = *(a4 + 5);
        v26 = *(a4 + 3);
        v125 = *(a4 + 48);
        v123 = v25;
        v124 = v24;
        v122 = v26;
        v27 = *a4;
        v28 = *(a4 + 2);
        v120 = *(a4 + 1);
        v121 = v28;
        v119 = v27;
        v29 = v112;
        v30 = v27;
        __chkstk_darwin(v17);
        sub_A650(&v112, &v110);
        sub_A650(&v119, &v110);
        sub_4AC4(v29);
        v103 = sub_541F8();
        v105 = v32;
        v106 = v31;
        LODWORD(v104) = v33;
        __chkstk_darwin(v103);
        sub_4AC4(v30);
        v97 = sub_541F8();
        v94 = v35;
        v95 = v34;
        LODWORD(v98) = v36;
        v37 = v100;
        sub_53FC8();
        v38 = sub_541A8();
        v40 = v39;
        v96 = v39;
        v41 = *v91;
        v42 = v101;
        (*v91)(v37, v101);
        v110 = v38;
        v111 = v40;
        sub_53FC8();
        v43 = v95;
        v44 = sub_541A8();
        v46 = v45;
        v41(v37, v42);
        v108 = v44;
        v109 = v46;
        sub_A700();
        v47 = sub_549C8();

        sub_84F8(v97, v43, v98 & 1);

        sub_84F8(v103, v106, v104 & 1);

        sub_A6AC(&v119);
        v17 = sub_A6AC(&v112);
        if (v47 != -1)
        {
          break;
        }

        v48 = v99;
        a2 = (v99 + 104);
        v49 = v102;
        a4 = v126;
        v15 = v93;
        if (v102 != v99)
        {
          goto LABEL_10;
        }

LABEL_11:
        v50 = v49 + 104;
        if (a4 >= v15)
        {
          v86 = v50;
          goto LABEL_42;
        }

        v102 = v50;
        if (a2 >= v107)
        {
          v86 = v102;
          goto LABEL_42;
        }
      }

      v48 = v126;
      a4 = v126 + 104;
      v49 = v102;
      a2 = v99;
      v15 = v93;
      if (v102 == v126)
      {
        goto LABEL_11;
      }

LABEL_10:
      v17 = memmove(v49, v48, 0x68uLL);
      goto LABEL_11;
    }

    v86 = v102;
  }

LABEL_42:
  v87 = 104 * ((v15 - a4) / 104);
  if (v86 != a4 || v86 >= &a4[v87])
  {
    memmove(v86, a4, v87);
  }

  return 1;
}

unint64_t sub_A700()
{
  result = qword_772C0;
  if (!qword_772C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_772C0);
  }

  return result;
}

uint64_t sub_A754(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_84F8(result, a2, a3 & 1);
  }

  return result;
}

__n128 sub_A798(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_A7AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A7F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A844(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_4C0FC(*a1, *a2) & 1) == 0 || (sub_4CBA8(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_4D714(v3, v5);
}

uint64_t sub_A8C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_44BC(&qword_772D0, &qword_57278);
  result = sub_54B78();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = v18 | (v9 << 6);
      if (a2)
      {
LABEL_12:
        v20 = *(*(v5 + 48) + v19);
        v21 = *(v5 + 56) + 104 * v19;
        v50 = *(v21 + 48);
        v51 = *(v21 + 64);
        v52 = *(v21 + 80);
        v53 = *(v21 + 96);
        v47 = *v21;
        v48 = *(v21 + 16);
        v49 = *(v21 + 32);
      }

      else
      {
LABEL_18:
        v20 = *(*(v5 + 48) + v19);
        v24 = *(v5 + 56) + 104 * v19;
        v26 = *(v24 + 16);
        v25 = *(v24 + 32);
        v40 = *v24;
        v41 = v26;
        v42 = v25;
        v28 = *(v24 + 64);
        v27 = *(v24 + 80);
        v29 = *(v24 + 48);
        v46 = *(v24 + 96);
        v44 = v28;
        v45 = v27;
        v43 = v29;
        sub_A650(&v40, &v47);
        v51 = v44;
        v52 = v45;
        v53 = v46;
        v47 = v40;
        v48 = v41;
        v49 = v42;
        v50 = v43;
      }

      v30 = *(v8 + 40);
      sub_54C28();
      sub_54C38(v20);
      result = sub_54C58();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      v17 = *(v8 + 56) + 104 * v16;
      *(v17 + 48) = v50;
      *(v17 + 64) = v51;
      *(v17 + 80) = v52;
      *(v17 + 96) = v53;
      *v17 = v47;
      *(v17 + 16) = v48;
      *(v17 + 32) = v49;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v13 = (v23 - 1) & v23;
        v19 = __clz(__rbit64(v23)) | (v9 << 6);
        if (a2)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_AC20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_44BC(&qword_772C8, &qword_57270);
  v39 = a2;
  result = sub_54B78();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + 80 * v21;
      if (v39)
      {
        v24 = *v23;
        v40 = *(v23 + 8);
        v41 = *(v23 + 24);
        v25 = *(v23 + 40);
        v42 = v25;
        v43 = *(v23 + 56);
        v44 = *(v23 + 72);
      }

      else
      {
        v26 = *(v23 + 16);
        v27 = *(v23 + 32);
        v28 = *(v23 + 64);
        *&v46[48] = *(v23 + 48);
        *&v46[64] = v28;
        *&v46[16] = v26;
        *&v46[32] = v27;
        *v46 = *v23;
        v44 = *(&v28 + 1);
        v42 = *&v46[40];
        v43 = *&v46[56];
        v40 = *&v46[8];
        v41 = *&v46[24];
        v24 = v46[0];
        sub_C990(v46, v45);
      }

      v29 = *(v8 + 40);
      sub_54C28();
      sub_54C38(v22);
      result = sub_54C58();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = *(v8 + 56) + 80 * v16;
      *v17 = v24;
      *(v17 + 24) = v41;
      *(v17 + 8) = v40;
      *(v17 + 56) = v43;
      *(v17 + 40) = v42;
      *(v17 + 72) = v44;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_AF50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_44BC(&qword_772D8, &unk_57280);
  v38 = a2;
  result = sub_54B78();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_54C28();
      sub_546C8();
      result = sub_54C58();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_B1F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_44BC(&qword_772E0, &qword_5A820);
  v34 = a2;
  result = sub_54B78();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_54C28();
      type metadata accessor for CFString(0);
      sub_CA40();
      sub_53AA8();
      result = sub_54C58();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_B4A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_44BC(&qword_772F8, &qword_57298);
  result = sub_54B78();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_CB50((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_CA98(v24, &v37);
        sub_CAF4(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_54A38(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_CB50(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_B75C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_44BC(&qword_772F0, &qword_57290);
  v41 = a2;
  result = sub_54B78();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_CA98(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_54C28();
      sub_546C8();
      result = sub_54C58();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_BA2C()
{
  v1 = v0;
  sub_44BC(&qword_772D0, &qword_57278);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_A650(&v31, v30))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + v16);
      v18 = *(v2 + 56) + 104 * v16;
      v20 = *(v18 + 64);
      v19 = *(v18 + 80);
      v21 = *(v18 + 48);
      v37 = *(v18 + 96);
      v35 = v20;
      v36 = v19;
      v34 = v21;
      v23 = *(v18 + 16);
      v22 = *(v18 + 32);
      v31 = *v18;
      v32 = v23;
      v33 = v22;
      *(*(v4 + 48) + v16) = v17;
      v24 = *(v4 + 56) + 104 * v16;
      v25 = v31;
      v26 = v33;
      *(v24 + 16) = v32;
      *(v24 + 32) = v26;
      *v24 = v25;
      v27 = v34;
      v28 = v35;
      v29 = v36;
      *(v24 + 96) = v37;
      *(v24 + 64) = v28;
      *(v24 + 80) = v29;
      *(v24 + 48) = v27;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_BBFC()
{
  v1 = v0;
  sub_44BC(&qword_772C8, &qword_57270);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        v19 = (*(v2 + 56) + 80 * v17);
        v21 = v19[1];
        v20 = v19[2];
        v22 = v19[4];
        v31 = v19[3];
        v32 = v22;
        v28 = *v19;
        v29 = v21;
        v30 = v20;
        *(*(v4 + 48) + v17) = v18;
        v23 = (*(v4 + 56) + 80 * v17);
        *v23 = v28;
        v24 = v29;
        v25 = v30;
        v26 = v32;
        v23[3] = v31;
        v23[4] = v26;
        v23[1] = v24;
        v23[2] = v25;
        result = sub_C990(&v28, &v27);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_BDA0()
{
  v1 = v0;
  sub_44BC(&qword_772D8, &unk_57280);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_BF10()
{
  v1 = v0;
  sub_44BC(&qword_772E0, &qword_5A820);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_C074()
{
  v1 = v0;
  sub_44BC(&qword_772F8, &qword_57298);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_CA98(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_CAF4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_CB50(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_C218()
{
  v1 = v0;
  sub_44BC(&qword_772F0, &qword_57290);
  v2 = *v0;
  v3 = sub_54B68();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_CA98(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_C3CC(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = result + 104;
  v3 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = *v2;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      result = sub_238C8(result, v9, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 2);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 80;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_C50C(uint64_t a1)
{
  v1 = a1;
  v75 = *(a1 + 16);
  if (!v75)
  {
    return v1;
  }

  v2 = 0;
  v74 = a1 + 32;
  v3 = &_swiftEmptyDictionarySingleton;
  v4 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v5 = (v74 + 80 * v2);
    v6 = v5[1];
    v88 = *v5;
    v89 = v6;
    v7 = v5[3];
    v90 = v5[2];
    v91 = v7;
    v92 = v5[4];
    v8 = v88;
    sub_C990(&v88, &v81);
    sub_C990(&v88, &v81);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v79[0] = v3;
    v10 = sub_1C54C(v8);
    v12 = v3[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_37;
    }

    v16 = v11;
    if (v3[3] < v15)
    {
      sub_AC20(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_1C54C(v8);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_40;
      }

LABEL_8:
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v25 = v10;
    sub_BBFC();
    v10 = v25;
    if (v16)
    {
LABEL_9:
      v77 = *&v79[0];
      v18 = (*(*&v79[0] + 56) + 80 * v10);
      v81 = *v18;
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[4];
      v84 = v18[3];
      v85 = v21;
      v82 = v19;
      v83 = v20;
      v22 = v92;
      v24 = v89;
      v23 = v90;
      v18[3] = v91;
      v18[4] = v22;
      v18[1] = v24;
      v18[2] = v23;
      *v18 = v88;
      sub_C9EC(&v81);
      goto LABEL_13;
    }

LABEL_11:
    v26 = *&v79[0];
    *(*&v79[0] + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v26[6] + v10) = v8;
    v27 = (v26[7] + 80 * v10);
    v29 = v91;
    v28 = v92;
    v30 = v90;
    v27[1] = v89;
    v27[2] = v30;
    v27[3] = v29;
    v27[4] = v28;
    *v27 = v88;
    v31 = v26[2];
    v14 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v14)
    {
      goto LABEL_38;
    }

    v77 = v26;
    v26[2] = v32;
LABEL_13:
    v33 = *(&v92 + 1);
    v34 = *(*(&v92 + 1) + 16);
    if (v34)
    {
      break;
    }

    sub_C9EC(&v88);
LABEL_30:
    ++v2;
    v3 = v77;
    if (v2 == v75)
    {
      return v1;
    }

    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return v1;
    }
  }

  v76 = v2;

  v35 = 0;
  v36 = v34 - 1;
  v37 = 32;
  while (1)
  {
    v39 = *(v33 + v37 + 16);
    v38 = *(v33 + v37 + 32);
    v81 = *(v33 + v37);
    v82 = v39;
    v83 = v38;
    v40 = *(v33 + v37 + 48);
    v41 = *(v33 + v37 + 64);
    v42 = *(v33 + v37 + 80);
    v87 = *(v33 + v37 + 96);
    v85 = v41;
    v86 = v42;
    v84 = v40;
    v43 = v81;
    sub_A650(&v81, v79);
    sub_A650(&v81, v79);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    v45 = sub_1C54C(v43);
    v47 = v4[2];
    v48 = (v46 & 1) == 0;
    v14 = __OFADD__(v47, v48);
    v49 = v47 + v48;
    if (v14)
    {
      break;
    }

    v50 = v46;
    if (v4[3] < v49)
    {
      sub_A8C4(v49, v44);
      v45 = sub_1C54C(v43);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_39;
      }

LABEL_20:
      if ((v50 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    if (v44)
    {
      goto LABEL_20;
    }

    v63 = v45;
    sub_BA2C();
    v45 = v63;
    if ((v50 & 1) == 0)
    {
LABEL_24:
      v4 = v78;
      v78[(v45 >> 6) + 8] |= 1 << v45;
      *(v78[6] + v45) = v43;
      v64 = v78[7] + 104 * v45;
      v65 = v87;
      v67 = v85;
      v66 = v86;
      *(v64 + 48) = v84;
      *(v64 + 64) = v67;
      *(v64 + 80) = v66;
      *(v64 + 96) = v65;
      v69 = v82;
      v68 = v83;
      *v64 = v81;
      *(v64 + 16) = v69;
      *(v64 + 32) = v68;
      sub_A6AC(&v81);
      v70 = v78[2];
      v14 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v14)
      {
        goto LABEL_36;
      }

      v78[2] = v71;
      if (v36 == v35)
      {
LABEL_28:

        sub_C9EC(&v88);
        v1 = a1;
        v2 = v76;
        goto LABEL_30;
      }

      goto LABEL_26;
    }

LABEL_21:
    v4 = v78;
    v52 = v78[7] + 104 * v45;
    v54 = *(v52 + 16);
    v53 = *(v52 + 32);
    v79[0] = *v52;
    v79[1] = v54;
    v79[2] = v53;
    v56 = *(v52 + 64);
    v55 = *(v52 + 80);
    v57 = *(v52 + 48);
    v80 = *(v52 + 96);
    v79[4] = v56;
    v79[5] = v55;
    v79[3] = v57;
    v58 = v81;
    v59 = v83;
    *(v52 + 16) = v82;
    *(v52 + 32) = v59;
    *v52 = v58;
    v60 = v84;
    v61 = v85;
    v62 = v86;
    *(v52 + 96) = v87;
    *(v52 + 64) = v61;
    *(v52 + 80) = v62;
    *(v52 + 48) = v60;
    sub_A6AC(v79);
    sub_A6AC(&v81);
    if (v36 == v35)
    {
      goto LABEL_28;
    }

LABEL_26:
    ++v35;
    v37 += 104;
    if (v35 >= *(v33 + 16))
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  sub_54C08();
  __break(1u);
LABEL_40:
  result = sub_54C08();
  __break(1u);
  return result;
}

unint64_t sub_CA40()
{
  result = qword_772E8;
  if (!qword_772E8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_772E8);
  }

  return result;
}

uint64_t sub_CAF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_CB50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_CB74(char a1)
{
  result = 0x4E4F495441434F4CLL;
  switch(a1)
  {
    case 1:
      result = 0x4152545F52455355;
      break;
    case 2:
      result = 0x5241444E454C4143;
      break;
    case 3:
      result = 0x53544341544E4F43;
      break;
    case 4:
      result = 0x45434341454C4946;
      break;
    case 5:
      result = 0x48544C414548;
      break;
    case 6:
      result = 0x445F48544C414548;
      break;
    case 7:
      result = 0x42494C414944454DLL;
      break;
    case 8:
      result = 0x445F444552494150;
      break;
    case 9:
      result = 0x534F544F4850;
      break;
    case 10:
      result = 0x5245444E494D4552;
      break;
    case 11:
      result = 0x524F535345434341;
      break;
    case 12:
      result = 0x50495245505F5442;
      break;
    case 13:
      result = 0x4152454D4143;
      break;
    case 14:
    case 31:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x4C544341544E4F43;
      break;
    case 16:
      result = 0x5355434F46;
      break;
    case 17:
      result = 0x574F4C4C4957;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0x454E5F4C41434F4CLL;
      break;
    case 20:
      result = 0x4F48504F5243494DLL;
      break;
    case 21:
      result = 0x4E4F49544F4DLL;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0x5359454B53534150;
      break;
    case 24:
      result = 0x43414E414D4C41;
      break;
    case 25:
      result = 0x455F455255434553;
      break;
    case 26:
      result = 0xD000000000000012;
      break;
    case 27:
      result = 0x54454C4C4157;
      break;
    case 28:
      result = 0x53494C4B434F4C42;
      break;
    case 29:
      result = 0x435F595445464153;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0x5349545245564441;
      break;
    case 33:
      result = 0x5F59434156495250;
      break;
    case 34:
      result = 0xD000000000000019;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0xD000000000000017;
      break;
    case 37:
      result = 0xD000000000000010;
      break;
    case 38:
      result = 0xD000000000000020;
      break;
    case 39:
      result = 0xD000000000000018;
      break;
    case 40:
      result = 0x4E574F444B434F4CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_D0C4()
{
  v0 = sub_54BE8();

  if (v0 >= 0x29)
  {
    return 41;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for PrivacyAndSecuritySettingsDestinationOption()
{
  result = qword_77370;
  if (!qword_77370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D1B4()
{
  sub_D274(319, &qword_77380, &type metadata accessor for PreferencesControllerRecipe);
  if (v0 <= 0x3F)
  {
    sub_D274(319, &qword_77388, &type metadata accessor for SettingsPaneRecipe);
    if (v1 <= 0x3F)
    {
      sub_D2C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_D274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_D2C0()
{
  result = qword_77390;
  if (!qword_77390)
  {
    result = &type metadata for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn;
    atomic_store(&type metadata for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn, &qword_77390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyAndSecuritySettingsDestinationOption.PrivacySettingsDrillIn(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_D468()
{
  result = qword_773C0;
  if (!qword_773C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_773C0);
  }

  return result;
}

uint64_t sub_D4BC@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      sub_E444(0, &qword_774A0, PUITrackersController_ptr);
      v3 = 1;
      goto LABEL_46;
    case 2:
      sub_E444(0, &qword_77490, PUICalendarPrivacyController_ptr);
      v3 = 2;
      goto LABEL_46;
    case 3:
      sub_E444(0, &qword_77488, PUIContactsPrivacyController_ptr);
      v3 = 3;
      goto LABEL_46;
    case 4:
      sub_E444(0, &qword_77480, PUIFileAccessController_ptr);
      v3 = 4;
      goto LABEL_46;
    case 5:
      sub_6A08(5);
      goto LABEL_44;
    case 6:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 6;
      goto LABEL_46;
    case 7:
      v8 = sub_54938();
      v9 = *(*(v8 - 8) + 64);
      __chkstk_darwin(v8 - 8);
      sub_54928();
      goto LABEL_54;
    case 8:
      sub_E444(0, &qword_77478, PUIPhotosPrivacyController_ptr);
      v3 = 8;
      goto LABEL_46;
    case 9:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 9;
      goto LABEL_46;
    case 10:
      sub_E444(0, &qword_77498, PUIAccessoriesController_ptr);
      v3 = 10;
      goto LABEL_46;
    case 11:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 11;
      goto LABEL_46;
    case 12:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 12;
      goto LABEL_46;
    case 13:
      sub_6A08(13);
      v22 = sub_54908();
      v23 = *(*(v22 - 8) + 64);
      __chkstk_darwin(v22 - 8);
      sub_548E8();
      goto LABEL_51;
    case 14:
      v4 = sub_54938();
      v5 = *(*(v4 - 8) + 64);
      __chkstk_darwin(v4 - 8);
      sub_54928();
      sub_544E8();
      goto LABEL_55;
    case 15:
      sub_6A08(15);
      v6 = sub_54908();
      v7 = *(*(v6 - 8) + 64);
      __chkstk_darwin(v6 - 8);
      sub_548E8();
      goto LABEL_51;
    case 16:
    case 41:
    case 42:
      v34 = sub_54938();
      v35 = *(*(v34 - 8) + 64);
      __chkstk_darwin(v34 - 8);
      sub_54918();
LABEL_54:
      sub_544E8();
      goto LABEL_55;
    case 17:
      v10 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption();
      v11 = *(*(v10 - 8) + 64);
      __chkstk_darwin(v10);
      v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (!MOSettingsManager)
      {
        goto LABEL_58;
      }

      v14 = sub_54638();
      v15 = NSClassFromString(v14);

      if (!v15)
      {
        __break(1u);
        goto LABEL_57;
      }

      swift_getObjCClassMetadata();
      v36[1] = &OBJC_PROTOCOL___PSController;
      swift_dynamicCastTypeToObjCProtocolUnconditional();
      sub_E444(0, &qword_77470, UIViewController_ptr);
      if (!swift_dynamicCastMetatype())
      {
LABEL_57:
        __break(1u);
        while (1)
        {
LABEL_58:
          sub_54B48();
          __break(1u);
        }
      }

      sub_6A08(17);
      sub_53B38();
      swift_storeEnumTagMultiPayload();
      return sub_E3E0(v13, a2);
    case 18:
      sub_E444(0, &qword_77408, PUINetworkController_ptr);
      v3 = 18;
      goto LABEL_46;
    case 19:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 19;
      goto LABEL_46;
    case 20:
      sub_E444(0, &qword_77400, PUIMotionFitnessController_ptr);
      v3 = 20;
      goto LABEL_46;
    case 21:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 21;
      goto LABEL_46;
    case 22:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 22;
      goto LABEL_46;
    case 23:
      sub_6A08(23);
      v26 = sub_54908();
      v27 = *(*(v26 - 8) + 64);
      __chkstk_darwin(v26 - 8);
      sub_548F8();
      goto LABEL_51;
    case 24:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 24;
      goto LABEL_46;
    case 25:
      sub_E444(0, &qword_773F8, PUITCCAccessController_ptr);
      v3 = 25;
      goto LABEL_46;
    case 26:
      sub_6A08(26);
LABEL_44:
      v30 = sub_54908();
      v31 = *(*(v30 - 8) + 64);
      __chkstk_darwin(v30 - 8);
      sub_548F8();
      goto LABEL_51;
    case 27:
    case 28:
    case 29:
    case 30:
      goto LABEL_58;
    case 31:
      sub_6A08(31);
      v28 = sub_54908();
      v29 = *(*(v28 - 8) + 64);
      __chkstk_darwin(v28 - 8);
      sub_548E8();
      goto LABEL_51;
    case 32:
      sub_6A08(32);
      v17 = sub_54908();
      v18 = *(*(v17 - 8) + 64);
      __chkstk_darwin(v17 - 8);
      sub_548E8();
      goto LABEL_51;
    case 33:
      sub_6A08(33);
      v19 = [objc_opt_self() classForNudityDetectionSettings];
      sub_54668();

      v20 = sub_54908();
      v21 = *(*(v20 - 8) + 64);
      __chkstk_darwin(v20 - 8);
      sub_548E8();
      sub_53B48();
      goto LABEL_55;
    case 34:
      sub_E444(0, &qword_773F0, PUIProblemReportingController_ptr);
      v3 = 34;
      goto LABEL_46;
    case 35:
      sub_E444(0, &qword_773E8, PUIAdSupportController_ptr);
      v3 = 35;
      goto LABEL_46;
    case 36:
      sub_E444(0, &qword_773E0, PUIReportController_ptr);
      v3 = 36;
      goto LABEL_46;
    case 37:
      *a2 = 0;
      goto LABEL_5;
    case 38:
      *a2 = 1;
LABEL_5:
      type metadata accessor for PrivacyAndSecuritySettingsDestinationOption();
      goto LABEL_47;
    case 39:
      sub_E444(0, &qword_773D0, PUIDataAndSensorsController_ptr);
      v3 = 39;
      goto LABEL_46;
    case 40:
      sub_6A08(40);
      v32 = sub_54908();
      v33 = *(*(v32 - 8) + 64);
      __chkstk_darwin(v32 - 8);
      sub_548E8();
LABEL_51:
      sub_53B48();
      goto LABEL_55;
    case 43:
      v24 = sub_54938();
      v25 = *(*(v24 - 8) + 64);
      __chkstk_darwin(v24 - 8);
      sub_54918();
      sub_544F8();
LABEL_55:
      type metadata accessor for PrivacyAndSecuritySettingsDestinationOption();
      return swift_storeEnumTagMultiPayload();
    case 44:
      sub_E444(0, &qword_773D8, PUILockdownModeController_ptr);
      v3 = 44;
      goto LABEL_46;
    default:
      sub_E444(0, &qword_774A8, PUILocationServicesListController_ptr);
      v3 = 0;
LABEL_46:
      sub_6A08(v3);
      sub_53B38();
      type metadata accessor for PrivacyAndSecuritySettingsDestinationOption();
LABEL_47:

      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_E3E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacyAndSecuritySettingsDestinationOption();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E444(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Int sub_E48C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_110CC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_FBA0(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_E4F8(void *a1, char *a2)
{
  result = [a1 eventType];
  if (result <= 0x2A && ((1 << result) & 0x60000000400) != 0)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_50FAC(&_swiftEmptyArrayStorage);
    v6 = *&a2[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_session];
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = v5;
    v10[4] = sub_11120;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_F160;
    v10[3] = &unk_6EC40;
    v8 = _Block_copy(v10);
    v9 = a2;

    [v6 getDevicesWithFlags:8 completionHandler:v8];
    _Block_release(v8);
  }

  return result;
}

id sub_E648()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_session] invalidate];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_E770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_54458();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_54498();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin(v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = result;
    sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);

    v17 = sub_54878();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a4;
    aBlock[4] = sub_111C0;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_51A90;
    aBlock[3] = &unk_6ECB8;
    v20 = _Block_copy(aBlock);

    sub_54478();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_111CC();
    sub_44BC(&qword_775F0, &qword_574F8);
    sub_11224();
    sub_549E8();
    sub_54888();
    _Block_release(v20);

    (*(v7 + 8))(v10, v6);
    return (*(v12 + 8))(v16, v22);
  }

  return result;
}

void sub_EA44(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2 >> 62)
    {
      goto LABEL_52;
    }

    for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_54B58())
    {
      v6 = 0;
      v53 = a2;
      v54 = a2 & 0xC000000000000001;
      v50 = (a2 + 32);
      v51 = a2 & 0xFFFFFFFFFFFFFF8;
      p_type = (&stru_75FF0 + 16);
      v52 = i;
      while (1)
      {
        if (v54)
        {
          v8 = sub_54AB8();
        }

        else
        {
          if (v6 >= *(v51 + 16))
          {
            goto LABEL_51;
          }

          v8 = v50[v6];
        }

        v9 = v8;
        v10 = __OFADD__(v6++, 1);
        if (v10)
        {
          break;
        }

        v11 = [v8 appAccessInfoMap];
        if (v11)
        {
          v12 = v11;
          v57 = v9;
          v55 = v6;
          sub_E444(0, &qword_77600, DADeviceAppAccessInfo_ptr);
          v13 = sub_545C8();

          v14 = *(v13 + 16);
          if (v14)
          {
            a2 = sub_F910(*(v13 + 16), 0);
            v15 = sub_10F74(&v59, (a2 + 32), v14, v13);
            swift_bridgeObjectRetain_n();
            sub_11288();
            if (v15 != v14)
            {
              goto LABEL_50;
            }

            p_type = (&stru_75FF0 + 16);
          }

          else
          {

            a2 = &_swiftEmptyArrayStorage;
          }

          v59 = a2;
          sub_E48C(&v59);

          v16 = v59;
          v58 = v59[2];
          if (v58)
          {
            v17 = 0;
            v18 = v59 + 5;
            v56 = v59;
            do
            {
              if (v17 >= v16[2])
              {
                __break(1u);
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
LABEL_47:
                __break(1u);
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

              if (!*(v13 + 16))
              {
                goto LABEL_45;
              }

              v20 = *(v18 - 1);
              v19 = *v18;

              a2 = v13;
              v21 = sub_1BE04(v20, v19);
              if ((v22 & 1) == 0)
              {
                goto LABEL_46;
              }

              if ([*(*(v13 + 56) + 8 * v21) p_type[126]] == &dword_18 + 1)
              {
                swift_beginAccess();
                if (*(*(a3 + 16) + 16) && (sub_1BE04(v20, v19), (v23 & 1) != 0))
                {
                  swift_endAccess();
                }

                else
                {
                  swift_endAccess();
                  swift_beginAccess();
                  v24 = *(a3 + 16);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  a2 = *(a3 + 16);
                  *(a3 + 16) = 0x8000000000000000;
                  v27 = sub_1BE04(v20, v19);
                  v28 = *(a2 + 16);
                  v29 = (v26 & 1) == 0;
                  v30 = v28 + v29;
                  if (__OFADD__(v28, v29))
                  {
                    goto LABEL_47;
                  }

                  v31 = v26;
                  if (*(a2 + 24) >= v30)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_BDA0();
                    }
                  }

                  else
                  {
                    sub_AF50(v30, isUniquelyReferenced_nonNull_native);
                    v32 = sub_1BE04(v20, v19);
                    if ((v31 & 1) != (v33 & 1))
                    {
                      sub_54C08();
                      __break(1u);

                      __break(1u);
                      return;
                    }

                    v27 = v32;
                  }

                  v16 = v56;
                  if (v31)
                  {
                    v34 = *(a2 + 56);
                    v35 = *(v34 + 8 * v27);
                    *(v34 + 8 * v27) = &_swiftEmptyArrayStorage;
                  }

                  else
                  {
                    *(a2 + 8 * (v27 >> 6) + 64) |= 1 << v27;
                    v36 = (*(a2 + 48) + 16 * v27);
                    *v36 = v20;
                    v36[1] = v19;
                    *(*(a2 + 56) + 8 * v27) = &_swiftEmptyArrayStorage;
                    v37 = *(a2 + 16);
                    v10 = __OFADD__(v37, 1);
                    v38 = v37 + 1;
                    if (v10)
                    {
                      goto LABEL_48;
                    }

                    *(a2 + 16) = v38;
                  }

                  *(a3 + 16) = a2;
                  swift_endAccess();
                  p_type = &stru_75FF0.type;
                }

                swift_beginAccess();
                a2 = a3 + 16;
                v40 = sub_F08C(&v59, v20, v19);
                if (*v39)
                {
                  a2 = v39;
                  v41 = v57;
                  sub_54728();
                  if (*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a2 & 0xFFFFFFFFFFFFFF8)) >> 1)
                  {
                    v42 = *(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8));
                    sub_54758();
                    v16 = v56;
                  }

                  sub_54778();
                }

                (v40)(&v59, 0);
                swift_endAccess();
              }

              ++v17;

              v18 += 2;
            }

            while (v58 != v17);
          }

          i = v52;
          a2 = v53;
          v6 = v55;
        }

        else
        {
        }

        if (v6 == i)
        {
          goto LABEL_53;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      ;
    }

LABEL_53:
    swift_beginAccess();
    v43 = *(a3 + 16);
    v44 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessoriesAccessMap;
    v45 = Strong;
    v46 = *(Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessoriesAccessMap);
    *(Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessoriesAccessMap) = v43;

    v47 = *(*(Strong + v44) + 16);
    v48 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessCount;
    if (v47 != *(Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessCount))
    {
      sub_7738((Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_invalidator), *(Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_invalidator + 24));
      sub_54AA8(16);

      v60._countAndFlagsBits = sub_6E88(*(Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_id));
      sub_546D8(v60);

      type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
      v45 = Strong;
      sub_4B228();
    }

    *&v45[v48] = v47;
  }
}

void (*sub_F08C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10B98(v6, a2, a3);
  return sub_F114;
}

void sub_F114(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_F160(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_E444(0, &qword_775D8, DADevice_ptr);
    v4 = sub_54748();
  }

  v7 = a3;
  v6(v4, a3);
}

double sub_F204@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_54068();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_54058();
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  sub_54048(v56);
  v36 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_accessCount);
  v5 = sub_44BC(&qword_775C0, &qword_574F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35[-v8 - 8];
  v10 = sub_539F8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_539D8();
  sub_F6A0();
  sub_538E8();
  sub_F6F4();
  sub_549D8();
  (*(v6 + 8))(v9, v5);
  sub_54038(v45);

  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_54048(v57);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v12 = qword_7BBF8;
  v13 = sub_541D8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_id);
  v21 = sub_53918();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_4AC4(v20);
  v23 = sub_541F8();
  v35[104] = v24 & 1;
  v35[96] = v17 & 1;
  LOBYTE(v36) = v20;
  *&v37 = v23;
  *(&v37 + 1) = v25;
  v38 = v24 & 1;
  *&v39 = v26;
  *(&v39 + 1) = v13;
  v40 = v15;
  v41 = v17 & 1;
  v43 = 0;
  v42 = v19;
  v44 = 511;
  LOBYTE(v45._countAndFlagsBits) = v20;
  v45._object = v23;
  v46 = v25;
  v47 = v24 & 1;
  v48 = v26;
  v49 = v13;
  v50 = v15;
  v51 = v17 & 1;
  v52 = v19;
  v53 = 0;
  v54 = 0;
  v55 = 511;
  sub_F828(&v36, v35);
  sub_F884(&v45);
  v27 = v40;
  v28 = v43;
  v29 = v44;
  v30 = v36 & 0x3F;
  v31 = v38 & 1;
  v32 = v41 | 0x4000000000000000;
  *a1 = v20;
  *(a1 + 8) = v30;
  *(a1 + 16) = v37;
  *(a1 + 32) = v31;
  *(a1 + 40) = v39;
  *(a1 + 56) = v27;
  *(a1 + 64) = v32;
  result = *&v42;
  *(a1 + 72) = v42;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  return result;
}

__n128 sub_F640@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_F204(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_F6A0()
{
  result = qword_775C8;
  if (!qword_775C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_775C8);
  }

  return result;
}

unint64_t sub_F6F4()
{
  result = qword_775D0;
  if (!qword_775D0)
  {
    sub_4590(&qword_775C0, &qword_574F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_775D0);
  }

  return result;
}

Swift::Int sub_F754()
{
  sub_54C28();
  sub_54C38(0);
  return sub_54C58();
}

Swift::Int sub_F7C0()
{
  sub_54C28();
  sub_54C38(0);
  return sub_54C58();
}

uint64_t sub_F8D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_F910(uint64_t a1, uint64_t a2)
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

  sub_44BC(&qword_77610, &qword_57508);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_F994(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77610, &qword_57508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_FAA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77628, &unk_575D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

Swift::Int sub_FBA0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_54BA8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_54768();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_FD68(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_FC98(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_FC98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_54BD8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_FD68(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_105F8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10344((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_54BD8();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_54BD8();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1060C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1060C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10344((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_105F8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1056C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_54BD8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10344(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_54BD8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_54BD8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1056C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_105F8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1060C(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77608, &qword_57500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10710(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_549F8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_54C28();

      sub_546C8();
      v13 = sub_54C58();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_108C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_549F8() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_54C28();

      sub_546C8();
      v15 = sub_54C58();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10A7C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_10AC0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_CB50(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_10B3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void (*sub_10B98(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_10F40(v8);
  v8[9] = sub_10CA4(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10C44;
}

void sub_10C44(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10CA4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1BE04(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_BDA0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_AF50(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1BE04(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_54C08();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_10DFC;
}

void sub_10DFC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_11290(*(v13 + 48) + 16 * v12);
      sub_10710(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

uint64_t (*sub_10F40(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10F68;
}

void *sub_10F74(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_110E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_11128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_11140()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11178()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_111CC()
{
  result = qword_775E8;
  if (!qword_775E8)
  {
    sub_54458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_775E8);
  }

  return result;
}

unint64_t sub_11224()
{
  result = qword_775F8;
  if (!qword_775F8)
  {
    sub_4590(&qword_775F0, &qword_574F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_775F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoriesFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AccessoriesFeatureFlags(_WORD *result, int a2, int a3)
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

unint64_t sub_113D4()
{
  result = qword_77620;
  if (!qword_77620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77620);
  }

  return result;
}

void sub_11430()
{
  v1 = v0;
  v2 = [objc_opt_self() numberOfAppsUsingBackgroundMessaging];
  v3 = sub_547F8();

  if (v3 != *(v1 + 24))
  {
    sub_7738((v1 + 40), *(v1 + 64));
    sub_54AA8(16);

    v4._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v4);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  *(v1 + 24) = v3;
}

uint64_t sub_11560()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 32);
    }

    sub_54A08();
    sub_53CD8();
    sub_11F04();
    result = sub_547E8();
    v2 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    v12 = *(v0 + 32);

    v7 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_11288();
      v18 = *(v1 + 32);
      *(v1 + 32) = &_swiftEmptySetSingleton;

      sub_777C((v1 + 40));
      return v1;
    }

    while (1)
    {
      sub_53CC8();

      v7 = v15;
      v8 = v16;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_11760()
{
  sub_11560();

  return swift_deallocClassInstance();
}

__n128 sub_117B8@<Q0>(char *a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_54068();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_54058();
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  sub_54048(v63);
  v42 = *(v1 + 24);
  v5 = sub_44BC(&qword_775C0, &qword_574F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = sub_539F8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_539D8();
  sub_F6A0();
  sub_538E8();
  sub_F6F4();
  sub_549D8();
  (*(v6 + 8))(v9, v5);
  sub_54038(v52);

  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_54048(v64);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v12 = qword_7BBF8;
  v13 = sub_541D8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v1 + 16);
  v21 = sub_53918();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_4AC4(v20);
  v23 = sub_541F8();
  v41[104] = v24 & 1;
  v41[96] = v17 & 1;
  LOBYTE(v42) = v20;
  v43 = v23;
  v44 = v25;
  v45 = v24 & 1;
  *&v46 = v26;
  *(&v46 + 1) = v13;
  v47 = v15;
  v48 = v17 & 1;
  v50 = 0;
  v49 = v19;
  v51 = 511;
  LOBYTE(v52._countAndFlagsBits) = v20;
  v52._object = v23;
  v53 = v25;
  v54 = v24 & 1;
  v55 = v26;
  v56 = v13;
  v57 = v15;
  v58 = v17 & 1;
  v59 = v19;
  v60 = 0;
  v61 = 0;
  v62 = 511;
  sub_F828(&v42, v41);
  sub_F884(&v52);
  v27 = v43;
  v28 = v44;
  v29 = v47;
  v38 = v49;
  v39 = v46;
  v30 = v50;
  v31 = v51;
  v32 = v42 & 0x3F;
  v33 = v45 & 1;
  v34 = v2;
  v35 = v48 | 0x4000000000000000;
  sub_11B9C(v34);
  v36 = v40;
  *v40 = v20;
  *(v36 + 1) = v32;
  *(v36 + 2) = v27;
  *(v36 + 3) = v28;
  *(v36 + 4) = v33;
  result = v38;
  *(v36 + 40) = v39;
  *(v36 + 7) = v29;
  *(v36 + 8) = v35;
  *(v36 + 72) = result;
  *(v36 + 11) = v30;
  *(v36 + 48) = v31;
  return result;
}

uint64_t sub_11B9C(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 32);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v3 < 0)
  {
    v4 = *(a1 + 32);
  }

  v5 = *(a1 + 32);

  v6 = sub_54A18();

  if (!v6)
  {
LABEL_7:
    v7 = sub_548B8();
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    __chkstk_darwin(v7);
    v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v12 = [objc_opt_self() defaultCenter];
    if (qword_76F98 != -1)
    {
      swift_once();
    }

    sub_548C8();

    swift_allocObject();
    swift_weakInit();
    sub_11EB8();
    sub_53D98();

    (*(v8 + 8))(v11, v7);
    swift_beginAccess();
    sub_53CB8();
    swift_endAccess();
  }

  return result;
}

__n128 sub_11DC0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_117B8(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_11E20()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11E58()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_11430();
  }

  return result;
}

unint64_t sub_11EB8()
{
  result = qword_777B0;
  if (!qword_777B0)
  {
    sub_548B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_777B0);
  }

  return result;
}

unint64_t sub_11F04()
{
  result = qword_777C0;
  if (!qword_777C0)
  {
    sub_53CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_777C0);
  }

  return result;
}

uint64_t sub_11F7C()
{
  sub_547A8();
  *(v0 + 24) = sub_54798();
  v2 = sub_54788();

  return _swift_task_switch(sub_12010, v2, v1);
}

uint64_t sub_12010()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_12074();
  v3 = v0[1];

  return v3();
}

void sub_12074()
{
  v1 = v0;
  v2 = [objc_opt_self() enumeratorWithOptions:128];
  v3 = [v2 nextObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [v4 bundleIdentifier];
      if (v5)
      {
        v6 = v5;
        sub_54668();

        v7 = sub_546A8();
        v9 = v8;

        swift_beginAccess();
        sub_1F8F4(&v14, v7, v9);
        swift_endAccess();
      }

      else
      {
      }

      v4 = [v2 nextObject];
    }

    while (v4);
  }

  v10 = *&v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_accessManager];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_14A04;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12D50;
  aBlock[3] = &unk_6EEF0;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  [v10 bundleIdentifiersWithAccessToAnyItemCompletionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_12270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_44BC(&qword_777B8, &qword_57750);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_14068(a3, v27 - v11);
  v13 = sub_547D8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_140D8(v12);
  }

  else
  {
    sub_547C8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_54788();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_546B8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_140D8(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_140D8(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}