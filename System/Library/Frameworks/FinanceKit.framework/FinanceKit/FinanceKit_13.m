unint64_t sub_1B72CB3E8()
{
  result = qword_1EDAFA030;
  if (!qword_1EDAFA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFA030);
  }

  return result;
}

unint64_t sub_1B72CB440()
{
  result = qword_1EDAF9FA8;
  if (!qword_1EDAF9FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9FA8);
  }

  return result;
}

unint64_t sub_1B72CB498()
{
  result = qword_1EDAF9FB0;
  if (!qword_1EDAF9FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9FB0);
  }

  return result;
}

unint64_t sub_1B72CB4F0()
{
  result = qword_1EDAF9F78;
  if (!qword_1EDAF9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F78);
  }

  return result;
}

unint64_t sub_1B72CB548()
{
  result = qword_1EDAF9F80;
  if (!qword_1EDAF9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F80);
  }

  return result;
}

unint64_t sub_1B72CB5A0()
{
  result = qword_1EDAF9F88;
  if (!qword_1EDAF9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F88);
  }

  return result;
}

unint64_t sub_1B72CB5F8()
{
  result = qword_1EDAF9F90;
  if (!qword_1EDAF9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F90);
  }

  return result;
}

unint64_t sub_1B72CB650()
{
  result = qword_1EDAF9FB8;
  if (!qword_1EDAF9FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9FB8);
  }

  return result;
}

unint64_t sub_1B72CB6A8()
{
  result = qword_1EDAF9FC0;
  if (!qword_1EDAF9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9FC0);
  }

  return result;
}

uint64_t sub_1B72CB6FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E756F636361 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x42746E756F636361 && a2 == 0xEF7365636E616C61 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B72CB820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616964656D6D69 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C72756F68 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C696164 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796C6B656577 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B72CB980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id ManagedFinHealthTransactionInsight.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedFinHealthTransactionInsight.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedFinHealthTransactionInsight.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedFinHealthTransactionInsight.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit34ManagedFinHealthTransactionInsight;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t ScheduledPaymentQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v28 = a6;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991118);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F628);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  *a7 = a1;
  v22 = type metadata accessor for ScheduledPaymentQuery();
  sub_1B72CBEA8(a2, a7 + v22[5]);
  v23 = a7 + v22[6];
  *v23 = a3;
  v23[8] = a4 & 1;
  v24 = a7 + v22[7];
  *v24 = v27;
  v24[8] = v28 & 1;
  sub_1B72CBEA8(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B72CBF18(a2);
    result = sub_1B72CBF18(v14);
    v26 = 0;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1B729D790();
    (*(v16 + 16))(v19, v21, v15);
    v26 = sub_1B71F8AC8(v19);
    sub_1B72CBF18(a2);
    result = (*(v16 + 8))(v21, v15);
  }

  *(a7 + v22[8]) = v26;
  return result;
}

uint64_t type metadata accessor for ScheduledPaymentQuery()
{
  result = qword_1EB991120;
  if (!qword_1EB991120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B72CBEA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72CBF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B72CBFA8()
{
  sub_1B729D930(319, &qword_1EB991130, &qword_1EB991138, &unk_1B7820610, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B729D930(319, &qword_1EB991140, &qword_1EB98F628, &unk_1B7809408, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B729D994();
      if (v2 <= 0x3F)
      {
        sub_1B729D9E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

Swift::String __swiftcall FKLocalizedString(for:table:)(Swift::String a1, FinanceKit::LocalizedStringTable table)
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDAF93B0;
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = sub_1B7800838();

  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_1B7800868();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t FKLocalizedString(for:table:_:)(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a3;
  FKLocalizedString(for:table:)(*&a1, &v5);
  v3 = sub_1B78008A8();

  return v3;
}

NSBundle __swiftcall NSBundle.init(identifier:)(FinanceKit::BundleIdentifier identifier)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v2 = sub_1B7800838();

  v3 = [ObjCClassFromMetadata bundleWithIdentifier_];

  if (v3)
  {

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void NSBundle.identifier.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
}

void sub_1B72CC36C()
{
  v0 = objc_opt_self();
  v1 = sub_1B7800838();
  v2 = [v0 bundleWithIdentifier_];

  if (v2)
  {
    qword_1EDAF93B0 = v2;
  }

  else
  {
    __break(1u);
  }
}

id static NSBundle.financeKit.getter()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAF93B0;

  return v1;
}

Swift::Bool __swiftcall NSBundle.hasResource(_:withExtension:localization:)(Swift::String _, Swift::String withExtension, Swift::String localization)
{
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v15 - v8;
  v10 = sub_1B7800838();
  v11 = sub_1B7800838();
  v12 = sub_1B7800838();
  v13 = [v15[1] URLForResource:v10 withExtension:v11 subdirectory:0 localization:v12];

  if (v13)
  {
    sub_1B77FF478();

    (*(v4 + 32))(v9, v6, v3);
    (*(v4 + 56))(v9, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v9, 1, 1, v3);
  }

  sub_1B726A798(v9);
  return v13 != 0;
}

void NSBundle.localizations(forTable:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v45 - v8;
  v55 = v2;
  v9 = [v2 localizations];
  v10 = sub_1B7800C38();

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 40;
    v46 = v11 - 1;
    v48 = MEMORY[0x1E69E7CC0];
    v49 = v11;
    v14 = &off_1E7CAF000;
    v50 = v10;
    v51 = a1;
    v47 = v10 + 40;
    do
    {
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= *(v10 + 16))
        {
          __break(1u);
          return;
        }

        v54 = v16;
        v18 = *(v15 - 1);
        v17 = *v15;

        v19 = sub_1B7800838();
        v20 = sub_1B7800838();
        v56 = v18;
        v57 = v17;
        v21 = sub_1B7800838();
        v22 = v14;
        v23 = [v55 v14[177]];

        if (v23)
        {
          v33 = v53;
          sub_1B77FF478();

          v34 = sub_1B77FF4F8();
          (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
          v35 = v33;
          goto LABEL_11;
        }

        v24 = sub_1B77FF4F8();
        v25 = *(*(v24 - 8) + 56);
        v26 = v53;
        v25(v53, 1, 1, v24);
        sub_1B726A798(v26);
        v27 = a2;
        v28 = sub_1B7800838();
        v29 = sub_1B7800838();
        v30 = sub_1B7800838();
        v31 = [v55 v22 + 1715];

        if (v31)
        {
          break;
        }

        v16 = v54 + 1;

        v32 = v52;
        v25(v52, 1, 1, v24);
        sub_1B726A798(v32);
        v15 += 2;
        v10 = v50;
        a2 = v27;
        v14 = &off_1E7CAF000;
        if (v49 == v16)
        {
          goto LABEL_18;
        }
      }

      v36 = v52;
      sub_1B77FF478();

      v25(v36, 0, 1, v24);
      v35 = v36;
      a2 = v27;
      v10 = v50;
LABEL_11:
      v37 = v57;
      sub_1B726A798(v35);
      v38 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v38;
      v13 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B71FDB50(0, *(v38 + 16) + 1, 1);
        v38 = v58;
      }

      v40 = v54;
      v41 = v56;
      v43 = *(v38 + 16);
      v42 = *(v38 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1B71FDB50((v42 > 1), v43 + 1, 1);
        v41 = v56;
        v38 = v58;
      }

      v12 = v40 + 1;
      *(v38 + 16) = v43 + 1;
      v48 = v38;
      v44 = v38 + 16 * v43;
      *(v44 + 32) = v41;
      *(v44 + 40) = v37;
      v14 = &off_1E7CAF000;
    }

    while (v46 != v40);
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
}

unint64_t LocalizedStringTable.rawValue.getter()
{
  v1 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

FinanceKit::LocalizedStringTable_optional __swiftcall LocalizedStringTable.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B72CCB6C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B72CCC24()
{
  sub_1B7800798();
}

uint64_t sub_1B72CCCC8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B72CCD88(unint64_t *a1@<X8>)
{
  v2 = "FinancialLab_Localizable";
  v3 = 0xD000000000000016;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000013;
    v2 = "FinanceKit_Localizable";
  }

  v4 = 0xD000000000000018;
  if (*v1)
  {
    v5 = "BankConnect_Localizable";
  }

  else
  {
    v4 = 0xD000000000000017;
    v5 = "";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_1B72CCE04()
{
  result = qword_1EB991148;
  if (!qword_1EB991148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991148);
  }

  return result;
}

FinanceKit::BundleIdentifier_optional __swiftcall BundleIdentifier.init(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    countAndFlagsBits = a1.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  *v1 = countAndFlagsBits;
  v1[1] = a1.value._object;
  result.value = a1;
  return result;
}

uint64_t BundleIdentifier.description.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1B72CD064()
{
  result = qword_1EB991150;
  if (!qword_1EB991150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991150);
  }

  return result;
}

unint64_t sub_1B72CD0C8()
{
  result = qword_1EDAF9E40;
  if (!qword_1EDAF9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9E40);
  }

  return result;
}

uint64_t ContentPackageReader.fileUrl(possibleNames:ext:bundle:localization:preferUnlocalized:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v99) = a7;
  v95 = a5;
  v96 = a6;
  v105 = a3;
  v106 = a4;
  v101 = a2;
  v90 = a8;
  v9 = sub_1B77FF4F8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v98 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v86 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v88 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v94 = &v86 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v93 = &v86 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v97 = &v86 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v89 = &v86 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v87 = &v86 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v86 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v86 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v91 = &v86 - v33;
  v92 = a1;
  v34 = *(a1 + 16);
  v107 = v9;
  v100 = v10;
  v86 = v34;
  if (v34)
  {
    v35 = (v10 + 48);
    v102 = (v10 + 32);
    v103 = (v10 + 56);
    v36 = a1 + 40;
    v37 = MEMORY[0x1E69E7CC0];
    do
    {

      v38 = sub_1B7800838();
      if (v105)
      {
        v39 = sub_1B7800838();
      }

      else
      {
        v39 = 0;
      }

      v40 = [v106 URLForResource:v38 withExtension:v39 subdirectory:0 localization:{0, v86}];

      if (v40)
      {
        sub_1B77FF478();

        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      v9 = v107;
      (*v103)(v29, v41, 1, v107);
      sub_1B726A728(v29, v32);
      if ((*v35)(v32, 1, v9) == 1)
      {
        sub_1B726A798(v32);
      }

      else
      {
        v42 = *v102;
        (*v102)(v104, v32, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1B723E714(0, *(v37 + 2) + 1, 1, v37);
        }

        v44 = *(v37 + 2);
        v43 = *(v37 + 3);
        if (v44 >= v43 >> 1)
        {
          v37 = sub_1B723E714(v43 > 1, v44 + 1, 1, v37);
        }

        *(v37 + 2) = v44 + 1;
        v42(&v37[((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v44], v104, v9);
      }

      v36 += 16;
      --v34;
    }

    while (v34);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  if (*(v37 + 2))
  {
    v45 = v100;
    v46 = v91;
    (*(v100 + 16))(v91, &v37[(*(v100 + 80) + 32) & ~*(v100 + 80)], v9);
    v47 = 0;
    v48 = v92;
  }

  else
  {
    v47 = 1;
    v46 = v91;
    v48 = v92;
    v45 = v100;
  }

  v49 = v96;

  v103 = *(v45 + 56);
  v104 = (v45 + 56);
  (v103)(v46, v47, 1, v9);
  if ((v99 & 1) == 0)
  {
    v50 = v89;
    sub_1B7228664(v46, v89);
    v51 = *(v45 + 48);
    v102 = (v45 + 48);
    v99 = v51;
    if (v51(v50, 1, v9) == 1)
    {
      v52 = v86;
      if (v86)
      {
        v53 = (v45 + 32);
        v54 = v92 + 40;
        v55 = MEMORY[0x1E69E7CC0];
        do
        {

          v56 = sub_1B7800838();
          if (v49)
          {
            if (v105)
            {
              v57 = sub_1B7800838();
            }

            else
            {
              v57 = 0;
            }

            v59 = sub_1B7800838();
            v60 = [v106 URLForResource:v56 withExtension:v57 subdirectory:0 localization:v59];

            if (v60)
            {
              v61 = v94;
              sub_1B77FF478();

              v62 = 0;
              v45 = v100;
            }

            else
            {
              v62 = 1;
              v45 = v100;
              v61 = v94;
            }
          }

          else
          {
            if (v105)
            {
              v58 = sub_1B7800838();
            }

            else
            {
              v58 = 0;
            }

            v63 = [v106 URLForResource:v56 withExtension:{v58, v86}];

            if (v63)
            {
              v61 = v93;
              sub_1B77FF478();

              v62 = 0;
            }

            else
            {
              v62 = 1;
              v61 = v93;
            }
          }

          v64 = v62;
          v65 = v107;
          (v103)(v61, v64, 1, v107);
          v66 = v97;
          sub_1B726A728(v61, v97);
          if (v99(v66, 1, v65) == 1)
          {
            sub_1B726A798(v66);
          }

          else
          {
            v67 = *v53;
            (*v53)(v98, v66, v65);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_1B723E714(0, *(v55 + 2) + 1, 1, v55);
            }

            v69 = *(v55 + 2);
            v68 = *(v55 + 3);
            if (v69 >= v68 >> 1)
            {
              v55 = sub_1B723E714(v68 > 1, v69 + 1, 1, v55);
            }

            *(v55 + 2) = v69 + 1;
            v67(&v55[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v69], v98, v107);
            v49 = v96;
          }

          v54 += 16;
          --v52;
        }

        while (v52);
      }

      else
      {
        v55 = MEMORY[0x1E69E7CC0];
      }

      if (*(v55 + 2))
      {
        v70 = v87;
        v9 = v107;
        (*(v45 + 16))(v87, &v55[(*(v45 + 80) + 32) & ~*(v45 + 80)], v107);

        v46 = v91;
        sub_1B726A798(v91);
        v71 = 0;
      }

      else
      {
        v72 = v91;
        sub_1B726A798(v91);
        v46 = v72;

        v71 = 1;
        v9 = v107;
        v70 = v87;
      }

      v73 = v89;
      v48 = v92;
      (v103)(v70, v71, 1, v9);
      if (v99(v73, 1, v9) != 1)
      {
        sub_1B726A798(v73);
      }
    }

    else
    {
      sub_1B726A798(v46);
      v70 = v87;
      (*(v45 + 32))(v87, v50, v9);
      (v103)(v70, 0, 1, v9);
    }

    sub_1B726A728(v70, v46);
    v74 = v88;
    sub_1B7228664(v46, v88);
    v75 = v99(v74, 1, v9);
    sub_1B726A798(v74);
    if (v75 == 1)
    {
      if (qword_1EDAF6548 != -1)
      {
        swift_once();
      }

      v76 = sub_1B78000B8();
      __swift_project_value_buffer(v76, qword_1EDAF6550);

      v77 = sub_1B7800098();
      v78 = sub_1B78011D8();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v108 = v80;
        *v79 = 136315138;
        v81 = MEMORY[0x1B8CA4F60](v48, MEMORY[0x1E69E6158]);
        v83 = sub_1B71A3EF8(v81, v82, &v108);

        *(v79 + 4) = v83;
        _os_log_impl(&dword_1B7198000, v77, v78, "Could not find file with name in %s in bundle", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        v84 = v80;
        v46 = v91;
        MEMORY[0x1B8CA7A40](v84, -1, -1);
        MEMORY[0x1B8CA7A40](v79, -1, -1);
      }
    }
  }

  return sub_1B726A728(v46, v90);
}

uint64_t LocalizedURLMap.url(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for LocalizedURLMap();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B72CDE28(v4, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    if (*(v11 + 16) && (v12 = sub_1B724548C(a1, a2), (v13 & 1) != 0))
    {
      v14 = v12;
      v15 = *(v11 + 56);
      v16 = sub_1B77FF4F8();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a3, v15 + *(v17 + 72) * v14, v16);

      return (*(v17 + 56))(a3, 0, 1, v16);
    }

    else
    {

      v21 = sub_1B77FF4F8();
      return (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
    }
  }

  else
  {
    v19 = sub_1B77FF4F8();
    v20 = *(v19 - 8);
    (*(v20 + 32))(a3, v10, v19);
    return (*(v20 + 56))(a3, 0, 1, v19);
  }
}

uint64_t type metadata accessor for LocalizedURLMap()
{
  result = qword_1EB991158;
  if (!qword_1EB991158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B72CDE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedURLMap();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B72CDE8C()
{
  sub_1B77FF4F8();
  if (v0 <= 0x3F)
  {
    sub_1B72CDF00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B72CDF00()
{
  if (!qword_1EB991168)
  {
    sub_1B77FF4F8();
    v0 = sub_1B7800748();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB991168);
    }
  }
}

CFMutableDataRef CGImageRef.pngData.getter()
{
  v1 = v0;
  v2 = sub_1B77FFF98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CFDataCreateMutable(0, 0);
  if (result)
  {
    v7 = result;
    sub_1B77FFF58();
    sub_1B77FFF28();
    (*(v3 + 8))(v5, v2);
    v8 = sub_1B7800838();

    v9 = CGImageDestinationCreateWithData(v7, v8, 1uLL, 0);

    if (v9)
    {
      CGImageDestinationAddImage(v9, v1, 0);
      if (CGImageDestinationFinalize(v9))
      {
        v10 = v7;
        v11 = sub_1B77FF5B8();

        return v11;
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B72CE100(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991170);
  inited = swift_initStackObject();
  v5 = MEMORY[0x1E696E0A8];
  *(inited + 16) = xmmword_1B7807CD0;
  v6 = *v5;
  *(inited + 32) = v6;
  *(inited + 40) = 0;
  v7 = v6;
  v8 = sub_1B7202C18(inited);
  swift_setDeallocating();
  sub_1B72CE57C(inited + 32);
  v9 = sub_1B72225D0(v8);

  v10 = createOrderImageSourceWithData(_:_:)(a1, a2, v9);

  if (v10)
  {
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1B7807CD0;
    *(v11 + 32) = v7;
    *(v11 + 40) = 0;
    v7;
    sub_1B7202C18(v11);
    swift_setDeallocating();
    sub_1B72CE57C(v11 + 32);
    type metadata accessor for CFString(0);
    sub_1B72CE5E4();
    v12 = sub_1B7800708();

    v13 = CGImageSourceCopyPropertiesAtIndex(v10, 0, v12);

    if (!v13)
    {
LABEL_6:

      return 0;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v15 = 0;
      sub_1B7800718();

      goto LABEL_6;
    }
  }

  return 0;
}

uint64_t sub_1B72CE57C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B72CE5E4()
{
  result = qword_1EB98EFC8;
  if (!qword_1EB98EFC8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98EFC8);
  }

  return result;
}

uint64_t AccountQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v28 = a6;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991180);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F618);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  *a7 = a1;
  v22 = type metadata accessor for AccountQuery();
  sub_1B72CE8F4(a2, a7 + v22[5]);
  sub_1B72CE8F4(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B72CE964(a2);
    result = sub_1B72CE964(v14);
    v24 = 0;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1B729D790();
    (*(v16 + 16))(v19, v21, v15);
    v24 = sub_1B71F8F18(v19);
    sub_1B72CE964(a2);
    result = (*(v16 + 8))(v21, v15);
  }

  *(a7 + v22[8]) = v24;
  v25 = a7 + v22[6];
  *v25 = a3;
  v25[8] = a4 & 1;
  v26 = a7 + v22[7];
  *v26 = v27;
  v26[8] = v28 & 1;
  return result;
}

uint64_t type metadata accessor for AccountQuery()
{
  result = qword_1EB991188;
  if (!qword_1EB991188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B72CE8F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72CE964(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrivateAccountQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

void sub_1B72CEA14()
{
  sub_1B729D930(319, &qword_1EB991198, &qword_1EB9911A0, &unk_1B7820710, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B729D930(319, &qword_1EB9911A8, &qword_1EB98F618, &unk_1B78093A0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B729D994();
      if (v2 <= 0x3F)
      {
        sub_1B729D9E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

CGPath *sub_1B72CEB30(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetHeight(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetWidth(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetHeight(v12);
  Mutable = CGPathCreateMutable();
  sub_1B7801258();
  sub_1B7801278();
  sub_1B7801278();
  sub_1B7801278();
  sub_1B7801268();
  sub_1B7801278();
  sub_1B7801278();
  sub_1B7801278();
  sub_1B7801268();
  sub_1B7801278();
  sub_1B7801278();
  sub_1B7801278();
  sub_1B7801278();
  sub_1B7801268();
  sub_1B7801278();
  sub_1B7801278();
  sub_1B7801278();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

uint64_t InternalInstitutionQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v28 = a6;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9911B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F608);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  *a7 = a1;
  v22 = type metadata accessor for InternalInstitutionQuery();
  sub_1B72CF21C(a2, a7 + v22[5]);
  sub_1B72CF21C(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B72CF28C(a2);
    result = sub_1B72CF28C(v14);
    v24 = 0;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1B729D790();
    (*(v16 + 16))(v19, v21, v15);
    v24 = sub_1B71F95F0(v19);
    sub_1B72CF28C(a2);
    result = (*(v16 + 8))(v21, v15);
  }

  *(a7 + v22[8]) = v24;
  v25 = a7 + v22[6];
  *v25 = a3;
  v25[8] = a4 & 1;
  v26 = a7 + v22[7];
  *v26 = v27;
  v26[8] = v28 & 1;
  return result;
}

uint64_t type metadata accessor for InternalInstitutionQuery()
{
  result = qword_1EB9911B8;
  if (!qword_1EB9911B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B72CF21C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9911B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72CF28C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9911B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B72CF31C()
{
  sub_1B729D930(319, &qword_1EB9911C8, &qword_1EB9911D0, "h~\b", MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B729D930(319, &qword_1EB9911D8, &qword_1EB98F608, &unk_1B7809390, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B729D994();
      if (v2 <= 0x3F)
      {
        sub_1B729D9E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t ManagedInstitutionMatchingResponseError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

void sub_1B72CF49C(id *a1)
{
  v1 = [*a1 expiration];
  sub_1B77FF928();
}

void sub_1B72CF4FC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 passSerial];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B72CF554(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 institutionsResponseData];
  v4 = sub_1B77FF5B8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void *ManagedInstitutionMatchingResponse.__allocating_init(passSerial:institutionsResponseWithExpiration:context:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = type metadata accessor for RawBankConnectData.Institution(0);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration(0);
  sub_1B7280900(a3 + *(v15 + 20), v10);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = [objc_allocWithZone(v4) initWithContext_];
    v31 = a4;
    a4 = v16;
    v17 = *a3;

    v18 = sub_1B7800838();

    [a4 setPassSerial_];

    sub_1B77FE9B8();
    swift_allocObject();
    sub_1B77FE9A8();
    v36 = v17;
    sub_1B72CFA8C();
    v19 = v35;
    v20 = sub_1B77FE998();
    if (v19)
    {

      sub_1B72CFB44(a3, type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration);
      (*(v12 + 8))(v14, v11);

      return a4;
    }

    v35 = a3;
    v22 = v20;
    v23 = v21;

    v24 = sub_1B77FF598();
    sub_1B720A388(v22, v23);
    [a4 setInstitutionsResponseData_];

    v25 = sub_1B77FF8B8();
    [a4 setExpiration_];

    if (v17)
    {
      if (*(v17 + 16))
      {
        v26 = v33;
        sub_1B72CFAE0(v17 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v33);

        v27 = *(v26 + *(v34 + 44));
        sub_1B72CFB44(v26, type metadata accessor for RawBankConnectData.Institution);
LABEL_10:
        v28 = v35;
        [a4 setLinkable_];

        sub_1B72CFB44(v28, type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration);
        (*(v12 + 8))(v14, v11);
        return a4;
      }
    }

    v27 = 0;
    goto LABEL_10;
  }

  sub_1B7205418(v10, &qword_1EB98EBD0);
  sub_1B72CFA38();
  swift_allocError();
  swift_willThrow();

  sub_1B72CFB44(a3, type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration);
  return a4;
}

unint64_t sub_1B72CFA38()
{
  result = qword_1EB9911E0;
  if (!qword_1EB9911E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9911E0);
  }

  return result;
}

unint64_t sub_1B72CFA8C()
{
  result = qword_1EB9911E8;
  if (!qword_1EB9911E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9911E8);
  }

  return result;
}

uint64_t sub_1B72CFAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Institution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72CFB44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id ManagedInstitutionMatchingResponse.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedInstitutionMatchingResponse.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedInstitutionMatchingResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ManagedInstitutionMatchingResponse.institutionsResponse.getter()
{
  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  v1 = [v0 institutionsResponseData];
  v2 = sub_1B77FF5B8();
  v4 = v3;

  sub_1B72CFDBC();
  sub_1B77FE8D8();
  sub_1B720A388(v2, v4);
}

unint64_t sub_1B72CFDBC()
{
  result = qword_1EB9911F0;
  if (!qword_1EB9911F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9911F0);
  }

  return result;
}

id static ManagedInstitutionMatchingResponse.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit34ManagedInstitutionMatchingResponse;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t static ManagedInstitutionMatchingResponse.predicateForResponses(expiredOnOrBefore:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF8B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EDAF93C8);
  *(v0 + 64) = sub_1B71B592C();
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

uint64_t static ManagedInstitutionMatchingResponse.predicate(passSerial:)(uint64_t a1, uint64_t a2)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

uint64_t static ManagedInstitutionMatchingResponse.predicate(passSerial:expiration:)(uint64_t a1, uint64_t a2)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7808C50;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = sub_1B77FF8B8();
  *(v4 + 96) = sub_1B7205540(0, &qword_1EDAF93C8);
  *(v4 + 104) = sub_1B71B592C();
  *(v4 + 72) = v5;
  return sub_1B78010E8();
}

unint64_t static ManagedInstitutionMatchingResponse.existingResponse(passSerial:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit34ManagedInstitutionMatchingResponse;
  v6 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v6 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedInstitutionMatchingResponse.danglingResponses(for:in:)(uint64_t a1)
{
  v9.receiver = swift_getObjCClassFromMetadata();
  v9.super_class = &OBJC_METACLASS____TtC10FinanceKit34ManagedInstitutionMatchingResponse;
  v2 = objc_msgSendSuper2(&v9, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(v4 + 64) = sub_1B7220068();
  *(v4 + 32) = a1;

  *(v3 + 32) = sub_1B78010E8();
  v5 = sub_1B7800C18();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v2 setPredicate_];
  v7 = sub_1B7801498();

  return v7;
}

uint64_t static ManagedInstitutionMatchingResponse.notExpiredResponses(now:in:)()
{
  v6.receiver = swift_getObjCClassFromMetadata();
  v6.super_class = &OBJC_METACLASS____TtC10FinanceKit34ManagedInstitutionMatchingResponse;
  v0 = objc_msgSendSuper2(&v6, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7807CD0;
  v2 = sub_1B77FF8B8();
  *(v1 + 56) = sub_1B7205540(0, &qword_1EDAF93C8);
  *(v1 + 64) = sub_1B71B592C();
  *(v1 + 32) = v2;
  v3 = sub_1B78010E8();
  [v0 setPredicate_];

  v4 = sub_1B7801498();
  return v4;
}

uint64_t ManagedInstitutionMatchingResponse.description.getter()
{
  v1 = v0;
  v2 = sub_1B77FF988();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9911F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for RawBankConnectData.Institution(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_1B7801A78();

  strcpy(v32, "pass serial:\t");
  HIWORD(v32[1]) = -4864;
  v12 = [v0 passSerial];
  v13 = sub_1B7800868();
  v15 = v14;

  MEMORY[0x1B8CA4D30](v13, v15);

  MEMORY[0x1B8CA4D30](10, 0xE100000000000000);
  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  v16 = [v1 institutionsResponseData];
  v17 = sub_1B77FF5B8();
  v19 = v18;

  sub_1B72CFDBC();
  sub_1B77FE8D8();
  sub_1B720A388(v17, v19);

  if (!v31[0])
  {
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_7:
    sub_1B7205418(v7, &qword_1EB9911F8);
    MEMORY[0x1B8CA4D30](0xD000000000000024, 0x80000001B7878AF0);
    goto LABEL_17;
  }

  if (*(v31[0] + 16))
  {
    sub_1B72CFAE0(v31[0] + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v9 + 56))(v7, v20, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_7;
  }

  sub_1B72D0FFC(v7, v11);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1B7801A78();

  strcpy(v31, "Institution:\t");
  HIWORD(v31[1]) = -4864;
  MEMORY[0x1B8CA4D30](v11[2], v11[3]);
  MEMORY[0x1B8CA4D30](10272, 0xE200000000000000);
  MEMORY[0x1B8CA4D30](*v11, v11[1]);
  MEMORY[0x1B8CA4D30](2601, 0xE200000000000000);
  MEMORY[0x1B8CA4D30](v31[0], v31[1]);

  v21 = *(v11 + *(v8 + 44));
  if (v21 != 2)
  {
    strcpy(v31, "linkable:\t");
    BYTE3(v31[1]) = 0;
    HIDWORD(v31[1]) = -369098752;
    if (v21)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (v21)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    MEMORY[0x1B8CA4D30](v22, v23);

    MEMORY[0x1B8CA4D30](10, 0xE100000000000000);
    MEMORY[0x1B8CA4D30](v31[0], v31[1]);
  }

  sub_1B72CFB44(v11, type metadata accessor for RawBankConnectData.Institution);
LABEL_17:
  strcpy(v31, "expiration:\t");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  v24 = [v1 expiration];
  sub_1B77FF928();

  sub_1B72D0FA4();
  v25 = v30;
  v26 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v26);

  (*(v29 + 8))(v4, v25);
  MEMORY[0x1B8CA4D30](v31[0], v31[1]);

  return v32[0];
}

uint64_t sub_1B72D0D44(uint64_t a1)
{
  type metadata accessor for ManagedInstitutionMatchingResponse();
  v11.receiver = swift_getObjCClassFromMetadata();
  v11.super_class = &OBJC_METACLASS____TtC10FinanceKit34ManagedInstitutionMatchingResponse;
  v2 = objc_msgSendSuper2(&v11, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(v4 + 64) = sub_1B7220068();
  *(v4 + 32) = a1;

  *(v3 + 32) = sub_1B78010E8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = sub_1B77FF8B8();
  *(v5 + 56) = sub_1B7205540(0, &qword_1EDAF93C8);
  *(v5 + 64) = sub_1B71B592C();
  *(v5 + 32) = v6;
  *(v3 + 40) = sub_1B78010E8();
  v7 = sub_1B7800C18();

  v8 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v2 setPredicate_];
  v9 = sub_1B7801498();

  return v9;
}

unint64_t sub_1B72D0FA4()
{
  result = qword_1EB991200;
  if (!qword_1EB991200)
  {
    sub_1B77FF988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991200);
  }

  return result;
}

uint64_t sub_1B72D0FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Institution(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B72D1064()
{
  result = qword_1EB991208;
  if (!qword_1EB991208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991208);
  }

  return result;
}

void keypath_set_2Tm(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = a5(*a1, a1[1]);
  [v7 *a6];
}

uint64_t MandateDetails.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MandateDetails.reason.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MandateDetails.purposeCode.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MandateDetails.classificationCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall MandateDetails.init(name:reason:purposeCode:classificationCode:)(FinanceKit::MandateDetails *__return_ptr retstr, Swift::String_optional name, Swift::String_optional reason, Swift::String_optional purposeCode, Swift::String_optional classificationCode)
{
  retstr->name = name;
  retstr->reason = reason;
  retstr->purposeCode = purposeCode;
  retstr->classificationCode = classificationCode;
}

unint64_t sub_1B72D125C()
{
  v1 = 1701667182;
  v2 = 0x4365736F70727570;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6E6F73616572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B72D12D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72D1CF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72D1300(uint64_t a1)
{
  v2 = sub_1B72D1A3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72D133C(uint64_t a1)
{
  v2 = sub_1B72D1A3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MandateDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991210);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72D1A3C();
  sub_1B78023F8();
  v16 = 0;
  v10 = v12[7];
  sub_1B7801EF8();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1B7801EF8();
  v14 = 2;
  sub_1B7801EF8();
  v13 = 3;
  sub_1B7801EF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MandateDetails.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991220);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72D1A3C();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1B7801D78();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1B7801D78();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1B7801D78();
  v25 = v13;
  v33 = 3;
  v14 = sub_1B7801D78();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_1B72D1A90(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_1B72D1AC8(v32);
}

uint64_t _s10FinanceKit14MandateDetailsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v30 = a1[5];
      v31 = a2[5];
      v17 = a1[4];
      v18 = a2[6];
      v19 = a2[7];
      v20 = a1[7];
      v21 = a1[6];
      v22 = a2[4];
      v23 = sub_1B78020F8();
      v12 = v22;
      v7 = v21;
      v9 = v20;
      v16 = v19;
      v14 = v18;
      v5 = v17;
      v8 = v30;
      v15 = v31;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v24 = v7;
      v25 = v12;
      v26 = sub_1B78020F8();
      v12 = v25;
      v7 = v24;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v27 = v7;
      v28 = sub_1B78020F8();
      v7 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16 && (v7 == v14 && v9 == v16 || (sub_1B78020F8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B72D1A3C()
{
  result = qword_1EB991218;
  if (!qword_1EB991218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991218);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B72D1B0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B72D1B68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B72D1BF0()
{
  result = qword_1EB991228;
  if (!qword_1EB991228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991228);
  }

  return result;
}

unint64_t sub_1B72D1C48()
{
  result = qword_1EB991230;
  if (!qword_1EB991230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991230);
  }

  return result;
}

unint64_t sub_1B72D1CA0()
{
  result = qword_1EB991238;
  if (!qword_1EB991238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991238);
  }

  return result;
}

uint64_t sub_1B72D1CF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4365736F70727570 && a2 == 0xEB0000000065646FLL || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7878C10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id sub_1B72D1E60(uint64_t a1)
{
  v3 = type metadata accessor for MapsMerchant();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v78 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v78 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v78 - v19;
  v21 = *(a1 + v3[12]);
  if (v21 <= 3)
  {
    if (*(a1 + v3[12]) > 1u)
    {
      if (v21 == 2)
      {
        v22 = 2;
        if (*(a1 + 28))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v22 = 3;
        if (*(a1 + 28))
        {
          goto LABEL_28;
        }
      }
    }

    else if (*(a1 + v3[12]))
    {
      v22 = 1;
      if (*(a1 + 28))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v22 = 0;
      if (*(a1 + 28))
      {
        goto LABEL_28;
      }
    }
  }

  else if (*(a1 + v3[12]) <= 5u)
  {
    if (v21 == 4)
    {
      v22 = 4;
      if (*(a1 + 28))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v22 = 5;
      if (*(a1 + 28))
      {
        goto LABEL_28;
      }
    }
  }

  else if (v21 == 6)
  {
    v22 = 6;
    if (*(a1 + 28))
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v21 != 7)
    {
      v22 = 0;
      v23 = 1;
LABEL_29:
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v28 = sub_1B78000B8();
      __swift_project_value_buffer(v28, qword_1EDAF65B0);
      sub_1B72D2DDC(a1, v8);
      sub_1B72D2DDC(a1, v6);
      v29 = sub_1B7800098();
      v30 = sub_1B78011D8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = v22;
        v34 = v32;
        v91 = v32;
        *v31 = 136315650;
        v89 = v33;
        v90 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991240);
        v35 = sub_1B7801748();
        v37 = sub_1B71A3EF8(v35, v36, &v91);

        *(v31 + 4) = v37;
        *(v31 + 12) = 2080;
        if (v8[28])
        {
          v38 = 0xE300000000000000;
          v39 = 7104878;
        }

        else
        {
          LODWORD(v89) = *(v8 + 6);
          sub_1B72D2E9C();
          v39 = sub_1B7801838();
          v38 = v40;
        }

        sub_1B72D2E40(v8);
        v41 = sub_1B71A3EF8(v39, v38, &v91);

        *(v31 + 14) = v41;
        *(v31 + 22) = 2080;
        if (*(v6 + 5))
        {
          v42 = *(v6 + 4);
          v43 = *(v6 + 5);
        }

        else
        {
          v43 = 0xE300000000000000;
          v42 = 7104878;
        }

        sub_1B72D2E40(v6);
        v44 = sub_1B71A3EF8(v42, v43, &v91);

        *(v31 + 24) = v44;
        _os_log_impl(&dword_1B7198000, v29, v30, "Failed to initialize FKMapsMerchant because a field was missing. Values:\n- category: %s,\n- resultProviderIdentifier: %s,\n- name: %s.", v31, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v34, -1, -1);
        MEMORY[0x1B8CA7A40](v31, -1, -1);
      }

      else
      {

        sub_1B72D2E40(v6);
        sub_1B72D2E40(v8);
      }

      v45 = 0;
      goto LABEL_67;
    }

    v22 = 7;
    if (*(a1 + 28))
    {
LABEL_28:
      v23 = 0;
      goto LABEL_29;
    }
  }

  if (!*(a1 + 40))
  {
    goto LABEL_28;
  }

  v24 = *(a1 + 24);
  v25 = *a1;
  v26 = sub_1B7800838();
  v27 = *(a1 + 56);
  v86 = v1;
  v87 = v22;
  v85 = v26;
  v84 = v24;
  v83 = v25;
  if (v27)
  {
    v82 = sub_1B7800838();
  }

  else
  {
    v82 = 0;
  }

  sub_1B7205588(a1 + v3[9], v20, &unk_1EB994C70);
  v46 = sub_1B77FF4F8();
  v47 = *(v46 - 8);
  v88 = *(v47 + 48);
  v48 = 0;
  if (v88(v20, 1, v46) != 1)
  {
    v48 = sub_1B77FF3F8();
    (*(v47 + 8))(v20, v46);
  }

  sub_1B7205588(a1 + v3[10], v18, &unk_1EB994C70);
  v49 = v88(v18, 1, v46);
  v81 = v48;
  if (v49 == 1)
  {
    v50 = 0;
  }

  else
  {
    v50 = sub_1B77FF3F8();
    (*(v47 + 8))(v18, v46);
  }

  if (*(a1 + v3[11] + 8))
  {
    v80 = sub_1B7800838();
  }

  else
  {
    v80 = 0;
  }

  if (*(a1 + v3[13] + 8))
  {
    v51 = sub_1B7800838();
  }

  else
  {
    v51 = 0;
  }

  if (*(a1 + v3[14] + 8) >> 60 == 15)
  {
    v79 = 0;
  }

  else
  {
    v79 = sub_1B77FF598();
  }

  sub_1B7205588(a1 + v3[15], v15, &unk_1EB994C70);
  v52 = v88(v15, 1, v46);
  v78 = v50;
  if (v52 == 1)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1B77FF3F8();
    (*(v47 + 8))(v15, v46);
  }

  sub_1B7205588(a1 + v3[16], v11, &qword_1EB98EBD0);
  v54 = sub_1B77FF988();
  v55 = *(v54 - 8);
  v56 = 0;
  if ((*(v55 + 48))(v11, 1, v54) != 1)
  {
    v56 = sub_1B77FF8B8();
    (*(v55 + 8))(v11, v54);
  }

  v57 = a1 + v3[18];
  if (*(v57 + 8))
  {
    v58 = 0;
    v59 = v87;
    v60 = v82;
  }

  else
  {
    v61 = a1 + v3[19];
    v59 = v87;
    v60 = v82;
    if (*(v61 + 8))
    {
      v58 = 0;
    }

    else
    {
      v58 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*v57 longitude:*v61];
    }
  }

  v82 = v58;
  v62 = *(a1 + v3[20]);
  v63 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v76 = v58;
  v77 = v62;
  v74 = v53;
  v75 = v56;
  v64 = v79;
  v73 = v51;
  v72 = v59;
  v88 = v56;
  v65 = v53;
  v66 = v51;
  v67 = v80;
  v68 = v85;
  v69 = v81;
  v70 = v78;
  v45 = [v63 initWithMUID:v83 resultProviderIdentifier:v84 name:v85 phoneNumber:v60 url:v81 heroImageURL:v78 heroImageAttributionName:v80 category:v72 mapsCategoryIdentifier:v73 encodedStylingInfo:v79 businessChatURL:v74 lastProcessedDate:v75 location:v76 postalAddress:v77];

LABEL_67:
  sub_1B72D2E40(a1);
  return v45;
}

void sub_1B72D2714(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v91 = &v78 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v78 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v78 - v12;
  v14 = type metadata accessor for MapsMerchant();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v15 = v14[9];
  v16 = sub_1B77FF4F8();
  v17 = *(*(v16 - 8) + 56);
  v78 = v15;
  v17(a2 + v15, 1, 1, v16);
  v79 = v14[10];
  v17(a2 + v79, 1, 1, v16);
  v80 = v14[12];
  *(a2 + v80) = 8;
  v18 = (a2 + v14[14]);
  *v18 = xmmword_1B7810080;
  v19 = v14[15];
  v81 = v18;
  v82 = v19;
  v92 = v17;
  v17(a2 + v19, 1, 1, v16);
  v20 = v14[16];
  v21 = sub_1B77FF988();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v85 = v21;
  v86 = v20;
  v83 = v22 + 56;
  v84 = v23;
  (v23)(a2 + v20, 1, 1);
  v24 = a2 + v14[18];
  *v24 = 0;
  v88 = v24;
  *(v24 + 8) = 1;
  v25 = a2 + v14[19];
  *v25 = 0;
  v89 = v25;
  *(v25 + 8) = 1;
  v90 = v14[20];
  *(a2 + v90) = 0;
  v26 = a1;
  *a2 = [v26 muid];
  *(a2 + 24) = [v26 resultProviderIdentifier];
  *(a2 + 28) = 0;
  v27 = [v26 name];
  v28 = sub_1B7800868();
  v30 = v29;

  *(a2 + 32) = v28;
  *(a2 + 40) = v30;
  v31 = [v26 phoneNumber];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1B7800868();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  *(a2 + 48) = v33;
  *(a2 + 56) = v35;
  v36 = [v26 url];
  if (v36)
  {
    v37 = v36;
    sub_1B77FF478();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = 1;
  v92(v13, v38, 1, v16);
  sub_1B7213740(v13, a2 + v78, &unk_1EB994C70);
  v40 = [v26 heroImageURL];
  if (v40)
  {
    v41 = v40;
    sub_1B77FF478();

    v39 = 0;
  }

  v92(v11, v39, 1, v16);
  sub_1B7213740(v11, a2 + v79, &unk_1EB994C70);
  v42 = [v26 heroImageAttributionName];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1B7800868();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47 = (a2 + v14[11]);
  *v47 = v44;
  v47[1] = v46;
  MapsCategory.init(from:)([v26 category], &v93);
  *(a2 + v80) = v93;
  v48 = [v26 mapsCategoryIdentifier];
  if (v48)
  {
    v49 = v48;
    v50 = sub_1B7800868();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = v91;
  v54 = (a2 + v14[13]);
  *v54 = v50;
  v54[1] = v52;
  v55 = [v26 encodedStylingInfo];
  if (v55)
  {
    v56 = v55;
    v57 = sub_1B77FF5B8();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0xF000000000000000;
  }

  v60 = v81;
  sub_1B72380B8(*v81, v81[1]);
  *v60 = v57;
  v60[1] = v59;
  v61 = [v26 businessChatURL];
  if (v61)
  {
    v62 = v87;
    v63 = v61;
    sub_1B77FF478();

    v64 = 0;
  }

  else
  {
    v64 = 1;
    v62 = v87;
  }

  v65 = 1;
  v92(v62, v64, 1, v16);
  sub_1B7213740(v62, a2 + v82, &unk_1EB994C70);
  v66 = [v26 lastProcessedDate];

  if (v66)
  {
    sub_1B77FF928();

    v65 = 0;
  }

  v84(v53, v65, 1, v85);
  sub_1B7213740(v53, a2 + v86, &qword_1EB98EBD0);
  *(a2 + v14[17]) = 0;
  v67 = [v26 location];
  v68 = v67;
  if (v67)
  {
    v69 = v67;
    [v69 coordinate];
    v70 = v88;
    *v88 = v71;
    *(v70 + 8) = 0;
    [v69 coordinate];
    v73 = v72;
  }

  else
  {
    v74 = v88;
    *v88 = 0;
    *(v74 + 8) = 1;
    v73 = 0;
  }

  v75 = v89;
  *v89 = v73;
  *(v75 + 8) = v68 == 0;
  v76 = [v26 postalAddress];

  v77 = v90;
  *(a2 + v77) = v76;
}

uint64_t sub_1B72D2DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsMerchant();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72D2E40(uint64_t a1)
{
  v2 = type metadata accessor for MapsMerchant();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B72D2E9C()
{
  result = qword_1EB991248;
  if (!qword_1EB991248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991248);
  }

  return result;
}

uint64_t FinanceStore.entityGroups(since:isMonitoring:)(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  static DeviceInfo.deviceType.getter(v8);
  if (LOBYTE(v8[0]))
  {
    sub_1B7201CA4();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8[3] = type metadata accessor for FinanceStore();
    v8[4] = &off_1F2F66960;
    v8[0] = v2;

    v2 = sub_1B739F13C(&v9, a2 & 1, v8);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return v2;
}

uint64_t Transaction.Icon.Source.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

CGColorSpace *Transaction.Icon.backgroundColor.getter()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return 0;
  }

  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  if (result)
  {
    v5[0] = *(v1 + OBJC_IVAR____TtC10FinanceKit13StorableColor_red);
    v5[1] = *(v1 + OBJC_IVAR____TtC10FinanceKit13StorableColor_green);
    v5[2] = *(v1 + OBJC_IVAR____TtC10FinanceKit13StorableColor_blue);
    v5[3] = *(v1 + OBJC_IVAR____TtC10FinanceKit13StorableColor_alpha);
    v3 = result;
    v4 = CGColorCreate(result, v5);

    return v4;
  }

  return result;
}

uint64_t Transaction.Icon.data.getter()
{
  v1 = *v0;
  sub_1B720ABEC(*v0, *(v0 + 8));
  return v1;
}

uint64_t Transaction.Icon.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B720A388(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

id Transaction.Icon.init(data:width:height:backgroundColor:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, CGColor *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 20) = a4;
  v10 = objc_allocWithZone(type metadata accessor for StorableColor());
  result = StorableColor.init(color:)(a5);
  *(a7 + 32) = result;
  *(a7 + 24) = v9;
  return result;
}

void sub_1B72D32E0(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = objc_allocWithZone(type metadata accessor for StorableColor());
  v5 = v3;
  v6 = StorableColor.init(color:)(v3);

  *(a2 + 32) = v6;
}

void Transaction.Icon.backgroundColor.setter(CGColor *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for StorableColor());
  v5 = StorableColor.init(color:)(a1);

  *(v2 + 32) = v5;
}

void (*Transaction.Icon.backgroundColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 32);
  *(v3 + 80) = v5;
  if (v5)
  {
    v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    if (v6)
    {
      *(v4 + 32) = *(v5 + OBJC_IVAR____TtC10FinanceKit13StorableColor_red);
      *(v4 + 40) = *(v5 + OBJC_IVAR____TtC10FinanceKit13StorableColor_green);
      *(v4 + 48) = *(v5 + OBJC_IVAR____TtC10FinanceKit13StorableColor_blue);
      *(v4 + 56) = *(v5 + OBJC_IVAR____TtC10FinanceKit13StorableColor_alpha);
      v7 = v6;
      v5 = CGColorCreate(v6, (v4 + 32));
    }

    else
    {
      v5 = 0;
    }
  }

  *(v4 + 64) = v5;
  return sub_1B72D348C;
}

void sub_1B72D348C(void **a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 8);
  v4 = *v5;
  objc_allocWithZone(type metadata accessor for StorableColor());
  v6 = v3[9];
  v7 = v3[10];
  if (a2)
  {
    v8 = v4;
    v9 = StorableColor.init(color:)(v4);

    *(v6 + 32) = v9;
  }

  else
  {
    v10 = StorableColor.init(color:)(v4);

    *(v6 + 32) = v10;
  }

  free(v3);
}

uint64_t sub_1B72D3540()
{
  v1 = *v0;
  v2 = 1635017060;
  v3 = 0x746867696568;
  v4 = 0x656372756F73;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6874646977;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B72D35CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72D475C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72D35F4(uint64_t a1)
{
  v2 = sub_1B72D4368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72D3630(uint64_t a1)
{
  v2 = sub_1B72D4368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Transaction.Icon.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991250);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 20);
  v21 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v9;
  v15 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B720ABEC(v7, v8);
  sub_1B72D4368();
  sub_1B78023F8();
  v19 = v7;
  v20 = v8;
  v22 = 0;
  sub_1B727A60C();
  v10 = v18;
  sub_1B7801FC8();
  if (v10)
  {
    sub_1B720A388(v19, v20);
  }

  else
  {
    v11 = v16;
    v12 = v15;
    sub_1B720A388(v19, v20);
    LOBYTE(v19) = 1;
    sub_1B7801FE8();
    LOBYTE(v19) = 2;
    sub_1B7801FE8();
    LOBYTE(v19) = v11;
    v22 = 3;
    sub_1B72D43BC();
    sub_1B7801FC8();
    v19 = v12;
    v22 = 4;
    type metadata accessor for StorableColor();
    sub_1B72D4464(&qword_1EB991270);
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

void Transaction.Icon.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991278);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72D4368();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v21 = 0;
    sub_1B727A53C();
    sub_1B7801E48();
    v10 = v18;
    v9 = v19;
    LOBYTE(v18) = 1;
    v20 = sub_1B7801E68();
    LOBYTE(v18) = 2;
    v17 = sub_1B7801E68();
    v21 = 3;
    sub_1B72D4410();
    sub_1B7801E48();
    v16 = v18;
    type metadata accessor for StorableColor();
    v21 = 4;
    sub_1B72D4464(&qword_1EB991290);
    sub_1B7801DB8();
    (*(v6 + 8))(v8, v5);
    v11 = v18;
    *a2 = v10;
    *(a2 + 8) = v9;
    v12 = v16;
    v13 = v17;
    *(a2 + 16) = v20;
    *(a2 + 20) = v13;
    *(a2 + 24) = v12;
    *(a2 + 32) = v11;
    sub_1B720ABEC(v10, v9);
    v14 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B720A388(v10, v9);
  }
}

void sub_1B72D3C24(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 data];
  v5 = sub_1B77FF5B8();
  v7 = v6;

  v8 = [a1 width];
  v9 = [a1 height];
  ManagedTransactionIcon.source.getter(&v16);
  v10 = v16;
  v11 = [a1 backgroundColor];
  if (v11)
  {
    v12 = v11;
    v13 = StorableColor.cgColor.getter();
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_allocWithZone(type metadata accessor for StorableColor());
  v15 = StorableColor.init(color:)(v13);

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v15;
}

id Transaction.Icon.XPC.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___XPCTransactionIcon_value;
  v3 = *(v1 + OBJC_IVAR___XPCTransactionIcon_value);
  v4 = *(v1 + OBJC_IVAR___XPCTransactionIcon_value + 8);
  v5 = *(v1 + OBJC_IVAR___XPCTransactionIcon_value + 24);
  v7 = *(v1 + OBJC_IVAR___XPCTransactionIcon_value + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  sub_1B720ABEC(v3, v4);

  return v7;
}

id Transaction.Icon.XPC.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = &v3[OBJC_IVAR___XPCTransactionIcon_value];
  *v6 = *a1;
  *(v6 + 2) = *(a1 + 16);
  v6[24] = v4;
  *(v6 + 4) = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id Transaction.Icon.XPC.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = &v1[OBJC_IVAR___XPCTransactionIcon_value];
  *v6 = *a1;
  *(v6 + 2) = *(a1 + 16);
  v6[24] = v4;
  *(v6 + 4) = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id Transaction.Icon.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B7208104(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id Transaction.Icon.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B7208104(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id Transaction.Icon.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Transaction.Icon.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B72D4124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___XPCTransactionIcon_value;
  v3 = *(v1 + OBJC_IVAR___XPCTransactionIcon_value);
  v4 = *(v1 + OBJC_IVAR___XPCTransactionIcon_value + 8);
  v5 = *(v1 + OBJC_IVAR___XPCTransactionIcon_value + 24);
  v7 = *(v1 + OBJC_IVAR___XPCTransactionIcon_value + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  sub_1B720ABEC(v3, v4);

  return v7;
}

id sub_1B72D4188(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = &v3[OBJC_IVAR___XPCTransactionIcon_value];
  *v6 = *a1;
  *(v6 + 2) = *(a1 + 16);
  v6[24] = v4;
  *(v6 + 4) = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id Transaction.Icon.xpcValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for Transaction.Icon.XPC();
  v6 = *(v0 + 16);
  v7 = objc_allocWithZone(v5);
  v8 = &v7[OBJC_IVAR___XPCTransactionIcon_value];
  *v8 = v1;
  *(v8 + 1) = v2;
  *(v8 + 2) = v6;
  v8[24] = v3;
  *(v8 + 4) = v4;
  sub_1B720ABEC(v1, v2);
  v11.receiver = v7;
  v11.super_class = v5;
  v9 = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t _s10FinanceKit11TransactionV4IconV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 20);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a2 + 16);
  v6 = *(a2 + 20);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_1B73FC434(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v10 & 1) != 0 && v3 == v7 && v2 == v6 && v4 == v8)
  {
    if (v5)
    {
      if (v9)
      {
        type metadata accessor for StorableColor();
        v12 = v9;
        v13 = v5;
        v14 = sub_1B7801558();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!v9)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1B72D4368()
{
  result = qword_1EB991258;
  if (!qword_1EB991258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991258);
  }

  return result;
}

unint64_t sub_1B72D43BC()
{
  result = qword_1EB991268;
  if (!qword_1EB991268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991268);
  }

  return result;
}

unint64_t sub_1B72D4410()
{
  result = qword_1EB991288;
  if (!qword_1EB991288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991288);
  }

  return result;
}

uint64_t sub_1B72D4464(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StorableColor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B72D44D0()
{
  result = qword_1EB9912A0;
  if (!qword_1EB9912A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9912A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B72D4540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B72D459C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1B72D4658()
{
  result = qword_1EB991310;
  if (!qword_1EB991310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991310);
  }

  return result;
}

unint64_t sub_1B72D46B0()
{
  result = qword_1EB991318;
  if (!qword_1EB991318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991318);
  }

  return result;
}

unint64_t sub_1B72D4708()
{
  result = qword_1EB991320;
  if (!qword_1EB991320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991320);
  }

  return result;
}

uint64_t sub_1B72D475C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B7878C50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1B72D4908()
{
  result = qword_1EB991328;
  if (!qword_1EB991328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991328);
  }

  return result;
}

uint64_t sub_1B72D495C()
{
  result = sub_1B7800838();
  qword_1EDAF93E8 = result;
  return result;
}

id static NSNotificationName.FKOrderChanged.getter()
{
  if (qword_1EDAF93E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAF93E8;

  return v1;
}

uint64_t MapsLookupRequest.init(transactionID:transactionDisplayName:creationDate:bankTransactionDescriptionClean:bankTransactionDescription:bankMerchantEnhancedName:piiRedactionOccurred:otherBankTransactionLocationsData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for MapsLookupRequest();
  v21 = a9 + v20[11];
  *v21 = xmmword_1B7810080;
  v22 = sub_1B77FFA18();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = (a9 + v20[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = v20[6];
  v25 = sub_1B77FF988();
  (*(*(v25 - 8) + 32))(a9 + v24, a4, v25);
  v26 = (a9 + v20[7]);
  *v26 = a5;
  v26[1] = a6;
  v27 = (a9 + v20[8]);
  *v27 = a7;
  v27[1] = a8;
  v28 = (a9 + v20[9]);
  *v28 = a10;
  v28[1] = a11;
  *(a9 + v20[10]) = a12;
  result = sub_1B72380B8(*v21, *(v21 + 8));
  *v21 = a13;
  *(v21 + 8) = a14;
  return result;
}

uint64_t type metadata accessor for MapsLookupRequest()
{
  result = qword_1EB991360;
  if (!qword_1EB991360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MapsLookupRequest.transactionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MapsLookupRequest.transactionDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsLookupRequest() + 20));

  return v1;
}

uint64_t MapsLookupRequest.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MapsLookupRequest() + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MapsLookupRequest.bankTransactionDescriptionClean.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsLookupRequest() + 28));

  return v1;
}

uint64_t MapsLookupRequest.bankTransactionDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsLookupRequest() + 32));

  return v1;
}

uint64_t MapsLookupRequest.bankMerchantEnhancedName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsLookupRequest() + 36));

  return v1;
}

uint64_t MapsLookupRequest.otherBankTransactionLocationsData.getter()
{
  v1 = v0 + *(type metadata accessor for MapsLookupRequest() + 44);
  v2 = *v1;
  sub_1B7228588(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1B72D4E10()
{
  if (*v0)
  {
    return 0x656475746974616CLL;
  }

  else
  {
    return 0x64757469676E6F6CLL;
  }
}

uint64_t sub_1B72D4E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B72D4F34(uint64_t a1)
{
  v2 = sub_1B72D5134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72D4F70(uint64_t a1)
{
  v2 = sub_1B72D5134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsLookupRequest.Location.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991330);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72D5134();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801F98();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B7801F98();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B72D5134()
{
  result = qword_1EB991338;
  if (!qword_1EB991338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991338);
  }

  return result;
}

uint64_t MapsLookupRequest.Location.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991340);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72D5134();
  sub_1B78023C8();
  if (!v2)
  {
    v16 = 0;
    sub_1B7801E18();
    v10 = v9;
    v15 = 1;
    sub_1B7801E18();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MapsLookupRequest.init(transactionID:transactionDisplayName:creationDate:bankTransactionDescriptionClean:bankTransactionDescription:bankMerchantEnhancedName:piiRedactionOccurred:otherBankTransactionLocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, unint64_t a13)
{
  v52 = a7;
  v53 = a8;
  v49 = a5;
  v50 = a6;
  v45 = a2;
  v46 = a3;
  v51 = a12;
  v47 = a10;
  v48 = a11;
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B77FFA18();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 16);
  v44 = a1;
  v24(v23, a1, v20);
  v25 = *(v17 + 16);
  v42 = a4;
  v43 = v19;
  v25(v19, a4, v16);
  v26 = sub_1B72D5844(a13);
  v28 = v27;

  v29 = v28;
  (*(v17 + 8))(v42, v16);
  (*(v21 + 8))(v44, v20);
  v30 = type metadata accessor for MapsLookupRequest();
  v31 = a9 + v30[11];
  *v31 = xmmword_1B7810080;
  (*(v21 + 32))(a9, v23, v20);
  v32 = (a9 + v30[5]);
  v33 = v46;
  *v32 = v45;
  v32[1] = v33;
  (*(v17 + 32))(a9 + v30[6], v43, v16);
  v34 = (a9 + v30[7]);
  v35 = v50;
  *v34 = v49;
  v34[1] = v35;
  v36 = (a9 + v30[8]);
  v37 = v53;
  *v36 = v52;
  v36[1] = v37;
  v38 = (a9 + v30[9]);
  v39 = v48;
  *v38 = v47;
  v38[1] = v39;
  *(a9 + v30[10]) = v51 & 1;
  result = sub_1B72380B8(*v31, *(v31 + 8));
  *v31 = v26;
  *(v31 + 8) = v29;
  return result;
}

uint64_t MapsLookupRequest.locations()()
{
  v2 = sub_1B77FE8B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for MapsLookupRequest() + 44));
  v7 = v6[1];
  if (v7 >> 60 == 15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = *v6;
  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B720ABEC(v9, v7);
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EB991BC8);
  (*(v3 + 16))(v5, v10, v2);
  sub_1B77FE8C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991348);
  sub_1B72D5E10(&qword_1EB991350, sub_1B72D5B64);
  sub_1B77FE8D8();

  result = sub_1B72380B8(v9, v7);
  if (!v1)
  {
    return v11[1];
  }

  return result;
}

uint64_t sub_1B72D5844(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1B77FE968();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    result = sub_1B7801958();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_1B77FE9B8();
  swift_allocObject();
  v9 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_1EB991BE8);
  (*(v5 + 16))(v7, v10, v4);
  sub_1B77FE988();
  if (a1 >> 62)
  {
    v11 = sub_1B7801958();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v27 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FDB70(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v25 = v9;
    v26 = v1;
    v13 = 0;
    v12 = v27;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1B8CA5DC0](v13, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      [v14 coordinate];
      v17 = v16;
      [v15 coordinate];
      v19 = v18;

      v27 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B71FDB70((v20 > 1), v21 + 1, 1);
        v12 = v27;
      }

      ++v13;
      *(v12 + 16) = v21 + 1;
      v22 = v12 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
    }

    while (v11 != v13);
    v2 = v26;
  }

  v27 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991348);
  sub_1B72D5E10(&qword_1EB991390, sub_1B72D5E88);
  v23 = sub_1B77FE998();
  if (v2)
  {
  }

  else
  {
    v24 = v23;

    return v24;
  }
}

unint64_t sub_1B72D5B64()
{
  result = qword_1EB991358;
  if (!qword_1EB991358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991358);
  }

  return result;
}

void sub_1B72D5BE0()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B77FF988();
    if (v1 <= 0x3F)
    {
      sub_1B72D5C98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B72D5C98()
{
  if (!qword_1EB991370)
  {
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB991370);
    }
  }
}

unint64_t sub_1B72D5D0C()
{
  result = qword_1EB991378;
  if (!qword_1EB991378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991378);
  }

  return result;
}

unint64_t sub_1B72D5D64()
{
  result = qword_1EB991380;
  if (!qword_1EB991380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991380);
  }

  return result;
}

unint64_t sub_1B72D5DBC()
{
  result = qword_1EB991388;
  if (!qword_1EB991388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991388);
  }

  return result;
}

uint64_t sub_1B72D5E10(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991348);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B72D5E88()
{
  result = qword_1EB991398;
  if (!qword_1EB991398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991398);
  }

  return result;
}

uint64_t AccountBalanceQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v28 = a6;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5F0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  *a7 = a1;
  v22 = type metadata accessor for AccountBalanceQuery();
  sub_1B72D6194(a2, a7 + v22[5]);
  sub_1B72D6194(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B72D6204(a2);
    result = sub_1B72D6204(v14);
    v24 = 0;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1B729D790();
    (*(v16 + 16))(v19, v21, v15);
    v24 = sub_1B71F9A40(v19);
    sub_1B72D6204(a2);
    result = (*(v16 + 8))(v21, v15);
  }

  *(a7 + v22[8]) = v24;
  v25 = a7 + v22[6];
  *v25 = a3;
  v25[8] = a4 & 1;
  v26 = a7 + v22[7];
  *v26 = v27;
  v26[8] = v28 & 1;
  return result;
}

uint64_t type metadata accessor for AccountBalanceQuery()
{
  result = qword_1EB9913A8;
  if (!qword_1EB9913A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B72D6194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72D6204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B72D62EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B77FF7F8();
  v10 = a1;
  v11 = a2;
  v12 = v7;
  v13 = type metadata accessor for AccountBalance(0);
  sub_1B77FFD38();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B72D63FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v42 = a5;
  v43 = a6;
  v35 = a4;
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913D0);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5E8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913D8);
  v13 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913E0);
  v17 = *(v16 - 8);
  v33 = v16;
  v34 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913E8);
  v40 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v31 = &v30 - v20;
  sub_1B728216C(&qword_1EB9913F0, &qword_1EB98F5E8);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v10 + 8))(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913F8);
  type metadata accessor for Balance(0);
  sub_1B77FF988();
  sub_1B728216C(&qword_1EB991400, &qword_1EB9913D8);
  sub_1B728216C(&qword_1EB991408, &qword_1EB9913F8);
  v21 = v32;
  sub_1B77FF018();
  (*(v13 + 8))(v15, v21);
  v46 = v37;
  v47 = v38;
  v48 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991410);
  sub_1B728216C(&qword_1EB991418, &qword_1EB9913E0);
  sub_1B728216C(&qword_1EB991420, &qword_1EB991410);
  v22 = v31;
  v23 = v33;
  sub_1B77FF018();
  (*(v34 + 8))(v19, v23);
  v49 = 0;
  v24 = v41;
  sub_1B77FF2C8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991428);
  v26 = v43;
  v43[3] = v25;
  v26[4] = sub_1B72D7570();
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_1B728216C(&qword_1EB9914F0, &qword_1EB9913E8);
  sub_1B728216C(&qword_1EB9914F8, &qword_1EB9913D0);
  v27 = v36;
  v28 = v44;
  sub_1B77FF0A8();
  (*(v45 + 8))(v24, v28);
  return (*(v40 + 8))(v22, v27);
}

uint64_t sub_1B72D6A7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991468);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  sub_1B728216C(&qword_1EB991530, &qword_1EB991468);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1B72D6BCC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, void, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a3;
  v62 = a4;
  v55 = a2;
  v47 = a1;
  v69 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9914D0);
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v59 = v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9914C0);
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v58 = v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9914B0);
  v12 = *(v11 - 8);
  v67 = v11;
  v68 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v60 = v44 - v13;
  v70 = sub_1B77FF0C8();
  v14 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9914A0);
  v72 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v18 = v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991490);
  v71 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991480);
  v23 = *(v22 - 8);
  v56 = v22;
  v57 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v54 = v44 - v24;
  sub_1B728216C(&qword_1EB991500, &qword_1EB991490);
  sub_1B77FF2D8();
  v48 = sub_1B77FF988();
  sub_1B77FF2C8();
  v25 = *MEMORY[0x1E6968C38];
  v26 = *(v14 + 104);
  v44[2] = v14 + 104;
  v55 = v26;
  v45 = v16;
  v27 = v70;
  v26(v16, v25, v70);
  v46 = MEMORY[0x1E6968D20];
  v44[1] = sub_1B728216C(&qword_1EB991508, &qword_1EB9914A0);
  v52 = sub_1B71A6F54(&qword_1EB98EBD8);
  v28 = v53;
  sub_1B77FF088();
  v29 = *(v14 + 8);
  v50 = v14 + 8;
  v51 = v29;
  v29(v16, v27);
  v30 = *(v72 + 8);
  v72 += 8;
  v31 = v28;
  v30(v18, v28);
  v32 = *(v71 + 8);
  v71 += 8;
  v49 = v32;
  v32(v21, v19);
  sub_1B77FF2D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v33 = v59;
  sub_1B77FF2C8();
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB991510, &qword_1EB9914D0);
  v34 = v58;
  v35 = v63;
  sub_1B77FF0A8();
  v30(v18, v31);
  (*(v64 + 8))(v33, v35);
  v36 = v45;
  v37 = v70;
  v55(v45, *MEMORY[0x1E6968C40], v70);
  sub_1B728216C(&qword_1EB991518, &qword_1EB9914C0);
  v38 = v60;
  v39 = v65;
  sub_1B77FF088();
  v51(v36, v37);
  (*(v66 + 8))(v34, v39);
  v49(v21, v19);
  sub_1B728216C(&qword_1EB991520, &qword_1EB991480);
  sub_1B728216C(&qword_1EB991528, &qword_1EB9914B0);
  v40 = v54;
  v41 = v56;
  v42 = v67;
  sub_1B77FF098();
  (*(v68 + 8))(v38, v42);
  return (*(v57 + 8))(v40, v41);
}

uint64_t PrivateAccountBalanceQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

void sub_1B72D7434()
{
  sub_1B729D930(319, &qword_1EB9913B8, &qword_1EB9913C0, &unk_1B78204C0, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B729D930(319, &qword_1EB9913C8, &qword_1EB98F5F0, &unk_1B7809378, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B729D994();
      if (v2 <= 0x3F)
      {
        sub_1B729D9E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B72D7570()
{
  result = qword_1EB991430;
  if (!qword_1EB991430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991428);
    sub_1B72D75FC();
    sub_1B72D7CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991430);
  }

  return result;
}

unint64_t sub_1B72D75FC()
{
  result = qword_1EB991438;
  if (!qword_1EB991438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9913E8);
    sub_1B72D7688();
    sub_1B72D7874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991438);
  }

  return result;
}

unint64_t sub_1B72D7688()
{
  result = qword_1EB991440;
  if (!qword_1EB991440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9913E0);
    sub_1B72D7714();
    sub_1B72D77C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991440);
  }

  return result;
}

unint64_t sub_1B72D7714()
{
  result = qword_1EB991448;
  if (!qword_1EB991448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9913D8);
    sub_1B728216C(&qword_1EB991450, &qword_1EB98F5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991448);
  }

  return result;
}

unint64_t sub_1B72D77C4()
{
  result = qword_1EB991458;
  if (!qword_1EB991458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9913F8);
    sub_1B728216C(&qword_1EB991460, &qword_1EB991468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991458);
  }

  return result;
}

unint64_t sub_1B72D7874()
{
  result = qword_1EB991470;
  if (!qword_1EB991470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991410);
    sub_1B72D7958(&qword_1EB991478, &qword_1EB991480, &unk_1B7812E80, sub_1B72D7A08);
    sub_1B72D7958(&qword_1EB9914A8, &qword_1EB9914B0, &unk_1B7812E98, sub_1B72D7ACC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991470);
  }

  return result;
}

uint64_t sub_1B72D7958(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1B728216C(&qword_1EB991488, &qword_1EB991490);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B72D7A08()
{
  result = qword_1EB991498;
  if (!qword_1EB991498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9914A0);
    sub_1B71A6F54(&unk_1EDAF65E0);
    sub_1B71A6F54(&qword_1EDAF65F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991498);
  }

  return result;
}

unint64_t sub_1B72D7ACC()
{
  result = qword_1EB9914B8;
  if (!qword_1EB9914B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9914C0);
    sub_1B72D7B58();
    sub_1B72D7A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9914B8);
  }

  return result;
}

unint64_t sub_1B72D7B58()
{
  result = qword_1EB9914C8;
  if (!qword_1EB9914C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9914D0);
    sub_1B72D7C54(&qword_1EB9914D8, &unk_1EDAF65E0);
    sub_1B72D7C54(&qword_1EB9914E0, &qword_1EDAF65F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9914C8);
  }

  return result;
}

uint64_t sub_1B72D7C54(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98EBD0);
    sub_1B71A6F54(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B72D7CDC()
{
  result = qword_1EB9914E8;
  if (!qword_1EB9914E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9913D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9914E8);
  }

  return result;
}

uint64_t ManagedApplePayMerchantTokenPastPayment.__allocating_init(_:atIndex:usageInformationPackage:context:)(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v130 = a4;
  v114 = a2;
  v6 = sub_1B77FF988();
  v106 = *(v6 - 8);
  v107 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1B77FFCF8();
  v111 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v108 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = (&v105 - v12);
  v13 = sub_1B77FED28();
  v116 = *(v13 - 8);
  v117 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1B77FF4F8();
  v16 = *(v128 - 8);
  v17 = MEMORY[0x1EEE9AC00](v128 - 8);
  v120 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v105 - v19;
  v21 = MEMORY[0x1E69E7CC0];
  v143 = MEMORY[0x1E69E7CC0];
  v119 = a1;
  v22 = *(a1 + 16);
  v23 = *(v22 + 2);

  v118 = v15;
  v129 = a3;
  if (v23)
  {
    v25 = 0;
    v26 = v22 + 32;
    v121 = (v16 + 16);
    v122 = 0x80000001B7876290;
    v112 = v16;
    v123 = (v16 + 8);
    v124 = v20;
    v125 = v22;
    while (v25 < v23)
    {
      v134 = *v26;
      v27 = v26[1];
      v28 = v26[2];
      v29 = v26[3];
      v138 = *(v26 + 8);
      v136 = v28;
      v137 = v29;
      v135 = v27;
      v24 = memmove(&__dst, v26, 0x48uLL);
      if (v25 == 0x8000)
      {
        goto LABEL_51;
      }

      v126 = v26;
      v127 = v25;
      MEMORY[0x1EEE9AC00](v24);
      *(&v105 - 4) = v30;
      *(&v105 - 3) = v31;
      *(&v105 - 2) = 0xD000000000000010;
      v32 = v121;
      *(&v105 - 1) = v122;
      v34 = *(v33 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
      v35 = v124;
      v36 = v128;
      v37 = (*v32)(v124, v33 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v128);
      MEMORY[0x1EEE9AC00](v37);
      *(&v105 - 4) = v35;
      *(&v105 - 3) = sub_1B7262E4C;
      *(&v105 - 2) = (&v105 - 6);
      sub_1B72D9F60(&v134, v132);

      v38 = v130;
      os_unfair_lock_lock((v34 + 24));
      sub_1B72D9F48((v34 + 16), &v133);
      os_unfair_lock_unlock((v34 + 24));
      v39 = v133;
      (*v123)(v35, v36);
      v40 = *(&v140 + 1);
      v41 = [objc_allocWithZone(type metadata accessor for ManagedApplePayMerchantTokenPastPaymentLineItem()) initWithContext_];
      v42 = v127;
      [v41 setDecodingIndex_];
      [v41 setLabel_];
      if (v40)
      {
        v43 = sub_1B7800838();
      }

      else
      {
        v43 = 0;
      }

      v22 = v125;
      v44 = v126;
      [v41 setImageName_];

      v45 = sub_1B7801608();
      [v41 setAmountValue_];

      v46 = sub_1B7800838();
      [v41 setAmountCurrencyCode_];
      a3 = v129;

      sub_1B72D9FBC(&__dst);
      v47 = v41;
      MEMORY[0x1B8CA4F20]();
      if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      v25 = v42 + 1;
      sub_1B7800C88();

      v23 = *(v22 + 2);
      v26 = v44 + 9;
      if (v25 == v23)
      {
        v122 = v143;
        v15 = v118;
        v21 = MEMORY[0x1E69E7CC0];
        v16 = v112;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v122 = v21;
LABEL_13:

  v133 = v21;
  v48 = *(*(v119 + 24) + 16);

  if (v48)
  {
    v25 = 0;
    v22 = (v24 + 32);
    v123 = (v16 + 16);
    v124 = 0x80000001B7876290;
    v125 = (v16 + 8);
    v126 = v24;
    v26 = v120;
    while (v25 < v48)
    {
      v49 = *v22;
      v50 = *(v22 + 1);
      v51 = *(v22 + 2);
      *&v137 = *(v22 + 6);
      v135 = v50;
      v136 = v51;
      v134 = v49;
      v52 = *v22;
      v53 = *(v22 + 1);
      v54 = *(v22 + 2);
      v142 = *(v22 + 6);
      v140 = v53;
      v141 = v54;
      __dst = v52;
      if (v25 == 0x8000)
      {
        goto LABEL_53;
      }

      v127 = v25;
      MEMORY[0x1EEE9AC00](v24);
      *(&v105 - 4) = v55;
      *(&v105 - 3) = v56;
      *(&v105 - 2) = 0xD000000000000010;
      v57 = v123;
      *(&v105 - 1) = v124;
      v59 = *(v58 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
      v60 = v128;
      (*v57)(v26, v58 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v128);
      MEMORY[0x1EEE9AC00](a3);
      *(&v105 - 4) = v26;
      *(&v105 - 3) = sub_1B726357C;
      *(&v105 - 2) = (&v105 - 6);

      v61 = v130;
      sub_1B72DA010(&v134, v132);
      os_unfair_lock_lock((v59 + 24));
      sub_1B72DA230((v59 + 16), &v131);
      os_unfair_lock_unlock((v59 + 24));
      v62 = v131;
      (*v125)(v26, v60);
      v63 = [objc_allocWithZone(type metadata accessor for ManagedApplePayMerchantTokenPastPaymentSummaryItem()) initWithContext_];
      v64 = v127;
      [v63 setDecodingIndex_];
      [v63 setLabel_];
      v65 = sub_1B7801608();
      [v63 setAmountValue_];

      v66 = sub_1B7800838();
      [v63 setAmountCurrencyCode_];
      a3 = v129;

      sub_1B72DA06C(&__dst);
      v67 = v63;
      MEMORY[0x1B8CA4F20]();
      if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      v25 = v64 + 1;
      sub_1B7800C88();

      v24 = v126;
      v48 = v126[2];
      v22 += 56;
      if (v25 == v48)
      {
        v21 = v133;
        v15 = v118;
        goto LABEL_21;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_21:

  v68 = v119;
  LODWORD(v126) = *(v119 + 48);
  v69 = *(v119 + 56);
  v127 = *(v119 + 64);
  v128 = v69;
  v125 = *(v119 + 40);
  v70 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment(0);
  (*(v116 + 16))(v15, v68 + *(v70 + 32), v117);
  v71 = objc_allocWithZone(v113);
  v72 = [v71 initWithContext_];
  [v72 setDecodingIndex_];
  v73 = sub_1B7800838();
  [v72 setIdentifier_];

  sub_1B7240458(v122);
  v74 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v25 = MEMORY[0x1E69E7CA0];
  v75 = sub_1B7800C18();

  v76 = [v74 initWithArray_];

  [v72 setLineItemObjects_];
  v124 = v21;
  sub_1B7240470(v21);
  v26 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v77 = sub_1B7800C18();

  v78 = [v26 initWithArray_];

  v22 = v118;
  [v72 setSummaryItemObjects_];

  v79 = sub_1B7801608();
  [v72 setTotalAmountValue_];

  v80 = sub_1B7800838();
  [v72 setTotalAmountCurrencyCode_];

  v24 = sub_1B77FEC58();
  if (v81)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v24 < -32768)
  {
    goto LABEL_54;
  }

  if (v24 >= 0x8000)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v72 setPaymentYear_];
  v24 = sub_1B77FEC78();
  if (v82)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v25 = v124;
  if (v24 < -32768)
  {
    goto LABEL_56;
  }

  if (v24 >= 0x8000)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  [v72 setPaymentMonth_];
  v24 = sub_1B77FEC08();
  if ((v83 & 1) == 0)
  {
    v84 = v24;

    if (v84 < -32768)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v84 >= 0x8000)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    [v72 setPaymentDay_];
    v85 = sub_1B77FEC38();
    v87 = v86;
    v88 = sub_1B77FEC98();
    v90 = v89;
    v128 = sub_1B77FECB8();
    v92 = v91;
    v93 = v115;
    sub_1B77FED08();
    if (v87)
    {

      v94 = v93;
    }

    else if (v90)
    {

      v94 = v115;
    }

    else
    {
      v26 = v115;
      if (v92)
      {
      }

      else
      {
        v95 = v108;
        sub_1B72DA184(v115, v108);
        v96 = v111;
        v25 = v109;
        if ((*(v111 + 48))(v95, 1, v109) == 1)
        {

          sub_1B72DA0C0(v26);
          (*(v116 + 8))(v22, v117);
          sub_1B72DA128(v119);
          sub_1B72DA0C0(v95);
          return v72;
        }

        v24 = (*(v96 + 32))(v110, v95, v25);
        if (v85 < -32768)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (v85 >= 0x8000)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v97 = sub_1B7802288();
        [v72 setPaymentHour_];

        if (v88 < -32768)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v88 >= 0x8000)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v98 = sub_1B7802288();
        [v72 setPaymentMinute_];

        v24 = v128;
        if (v128 < -32768)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v128 >= 0x8000)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v99 = sub_1B7802288();
        [v72 setPaymentSecond_];

        v100 = v105;
        sub_1B77FF978();
        v101 = sub_1B77FFC98();
        v24 = (*(v106 + 8))(v100, v107);
        if (v101 < 0xFFFFFFFF80000000)
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        if (v101 > 0x7FFFFFFF)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v102 = sub_1B7802298();
        [v72 setPaymentTimeZoneSecondsFromGMT_];

        (*(v111 + 8))(v110, v25);
      }

      v94 = v26;
    }

    sub_1B72DA0C0(v94);
    (*(v116 + 8))(v22, v117);
    sub_1B72DA128(v119);
    return v72;
  }

LABEL_70:
  __break(1u);
  os_unfair_lock_unlock(v24);
  v104 = (*v123)(v26, v22);
  __break(1u);
  os_unfair_lock_unlock(v104);
  result = (*v125)(v26, v25);
  __break(1u);
  return result;
}

void sub_1B72D8C3C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void ManagedApplePayMerchantTokenPastPayment.__allocating_init(decodingIndex:identifier:lineItems:summaryItems:totalAmount:paymentDateComponents:context:)(__int16 a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = sub_1B77FF988();
  v67 = *(v16 - 8);
  v68 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B77FFCF8();
  v71 = *(v18 - 8);
  v72 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v70 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v66 - v23;
  v24 = *(a6 + 16);
  v78[0] = *a6;
  v78[1] = v24;
  v79 = *(a6 + 32);
  v25 = objc_allocWithZone(v8);
  v73 = a8;
  v26 = [v25 initWithContext_];
  [v26 setDecodingIndex_];
  v74 = a3;
  v27 = sub_1B7800838();
  [v26 setIdentifier_];

  v75 = a4;
  sub_1B7240458(a4);
  v28 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v29 = sub_1B7800C18();

  v30 = [v28 initWithArray_];

  [v26 setLineItemObjects_];
  sub_1B7240470(a5);
  v31 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v32 = sub_1B7800C18();

  v33 = [v31 initWithArray_];

  [v26 setSummaryItemObjects_];
  v34 = sub_1B7801608();
  [v26 setTotalAmountValue_];

  sub_1B7215720(v78, v77);
  v35 = sub_1B7800838();
  sub_1B721722C(v78);
  [v26 setTotalAmountCurrencyCode_];

  v36 = sub_1B77FEC58();
  if (v37)
  {
    goto LABEL_40;
  }

  if (v36 < -32768)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v36 >= 0x8000)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v26 setPaymentYear_];
  v38 = sub_1B77FEC78();
  if (v39)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v40 = v76;
  if (v38 < -32768)
  {
    goto LABEL_28;
  }

  if (v38 >= 0x8000)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v26 setPaymentMonth_];
  v41 = sub_1B77FEC08();
  if ((v42 & 1) == 0)
  {
    v43 = v41;

    sub_1B721722C(v78);
    if (v43 >= -32768)
    {
      if (v43 < 0x8000)
      {
        [v26 setPaymentDay_];
        v44 = sub_1B77FEC38();
        v46 = v45;
        v47 = sub_1B77FEC98();
        v49 = v48;
        v50 = sub_1B77FECB8();
        v52 = v51;
        sub_1B77FED08();
        if (v46 & 1) != 0 || (v49 & 1) != 0 || (v52)
        {

          v53 = sub_1B77FED28();
          (*(*(v53 - 8) + 8))(a7, v53);
LABEL_14:
          sub_1B72DA0C0(v40);
          return;
        }

        v54 = v70;
        sub_1B72DA184(v40, v70);
        v56 = v71;
        v55 = v72;
        if ((*(v71 + 48))(v54, 1, v72) == 1)
        {

          v57 = sub_1B77FED28();
          (*(*(v57 - 8) + 8))(a7, v57);
          sub_1B72DA0C0(v40);
          v40 = v54;
          goto LABEL_14;
        }

        v58 = v69;
        (*(v56 + 32))(v69, v54, v55);
        if (v44 >= -32768)
        {
          if (v44 < 0x8000)
          {
            v59 = sub_1B7802288();
            [v26 setPaymentHour_];

            if (v47 >= -32768)
            {
              if (v47 < 0x8000)
              {
                v60 = sub_1B7802288();
                [v26 setPaymentMinute_];

                if (v50 >= -32768)
                {
                  if (v50 < 0x8000)
                  {
                    v61 = sub_1B7802288();
                    [v26 setPaymentSecond_];

                    v62 = v66;
                    sub_1B77FF978();
                    v63 = sub_1B77FFC98();
                    (*(v67 + 8))(v62, v68);
                    if (v63 >= 0xFFFFFFFF80000000)
                    {
                      if (v63 <= 0x7FFFFFFF)
                      {
                        v64 = sub_1B7802298();
                        [v26 setPaymentTimeZoneSecondsFromGMT_];

                        v65 = sub_1B77FED28();
                        (*(*(v65 - 8) + 8))(a7, v65);
                        (*(v56 + 8))(v58, v55);
                        goto LABEL_14;
                      }

                      goto LABEL_39;
                    }

LABEL_38:
                    __break(1u);
LABEL_39:
                    __break(1u);
LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }

LABEL_37:
                  __break(1u);
                  goto LABEL_38;
                }

LABEL_36:
                __break(1u);
                goto LABEL_37;
              }

LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_42:
  __break(1u);
}

uint64_t ManagedApplePayMerchantTokenPastPayment.lineItems.getter()
{
  v1 = [v0 lineItemObjects];
  v2 = sub_1B7262934(v1);

  sub_1B7240588(v2);

  v5 = sub_1B725F224(v3);
  sub_1B72D9D7C(&v5, sub_1B77E6DD4, type metadata accessor for ManagedApplePayMerchantTokenPastPaymentLineItem);

  return v5;
}

uint64_t ManagedApplePayMerchantTokenPastPayment.summaryItems.getter()
{
  v1 = [v0 summaryItemObjects];
  v2 = sub_1B7262934(v1);

  sub_1B72405A0(v2);

  v5 = sub_1B725F23C(v3);
  sub_1B72D9D7C(&v5, sub_1B77E6DD4, type metadata accessor for ManagedApplePayMerchantTokenPastPaymentSummaryItem);

  return v5;
}

void ManagedApplePayMerchantTokenPastPayment.totalAmount.getter(uint64_t a1@<X8>)
{
  v3 = [v1 totalAmountValue];
  v4 = sub_1B7801678();
  v6 = v5;
  v8 = v7;

  v9 = [v1 totalAmountCurrencyCode];
  v10 = sub_1B7800868();
  v12 = v11;

  CurrencyAmount.init(_:currencyCode:)(v4, v6, v8, v10, v12, a1);
}

void ManagedApplePayMerchantTokenPastPayment.paymentDateComponents.getter(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_1B77FFCF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1B77FFB08();
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v43 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - v15;
  v17 = sub_1B77FFC88();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v44 = v1;
  v45 = v2;
  v39 = *(v2 + 56);
  v39(v13, 1, 1, v1);
  v36 = v13;
  sub_1B77FECD8();
  v19 = v40;
  (*(v4 + 104))(v6, *MEMORY[0x1E6969830], v40);
  sub_1B77FFB18();
  (*(v4 + 8))(v6, v19);
  v20 = v42;
  v18(v16, 0, 1, v17);
  sub_1B77FECF8();
  [v20 paymentYear];
  sub_1B77FEC68();
  [v20 paymentMonth];
  sub_1B77FEC88();
  [v20 paymentDay];
  sub_1B77FEC18();
  v21 = [v20 paymentTimeZoneSecondsFromGMT];
  if (v21)
  {
    v22 = v21;
    [v21 integerValue];
    v23 = v43;
    sub_1B77FFCA8();

    v24 = v44;
  }

  else
  {
    v23 = v43;
    v24 = v44;
    v39(v43, 1, 1, v44);
  }

  v25 = [v20 paymentHour];
  v26 = v45;
  if (!v25)
  {
    goto LABEL_12;
  }

  v27 = v25;
  v28 = [v20 paymentMinute];
  if (!v28)
  {
    sub_1B72DA0C0(v23);

    return;
  }

  v29 = v28;
  v30 = [v20 paymentSecond];
  if (!v30)
  {
    sub_1B72DA0C0(v23);

    return;
  }

  v31 = v30;
  v32 = v38;
  sub_1B72DA184(v23, v38);
  if ((*(v26 + 48))(v32, 1, v24) != 1)
  {
    v34 = v37;
    (*(v26 + 32))(v37, v32, v24);
    [v27 integerValue];
    sub_1B77FEC48();
    [v29 integerValue];
    sub_1B77FECA8();
    [v31 integerValue];
    sub_1B77FECC8();
    v35 = v36;
    (*(v26 + 16))(v36, v34, v24);
    v39(v35, 0, 1, v24);
    sub_1B77FED18();

    (*(v26 + 8))(v34, v24);
LABEL_12:
    v33 = v23;
    goto LABEL_13;
  }

  sub_1B72DA0C0(v23);

  v33 = v32;
LABEL_13:
  sub_1B72DA0C0(v33);
}

id ManagedApplePayMerchantTokenPastPayment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenPastPayment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenPastPayment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B72D9D7C(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a2(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1B72D9E10(v10, a3);
  return sub_1B7801B78();
}

void sub_1B72D9E10(uint64_t *a1, void (*a2)(void))
{
  v4 = a1[1];
  v5 = sub_1B7802038();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v8 = sub_1B7800C78();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_1B725B1C8(v10, v11, a1, v6);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1B725B0D0(0, v4, 1, a1);
  }
}

void *sub_1B72D9F1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *(*a3)(void *__return_ptr, void)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_1B7244BAC(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1B72DA0C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B72DA128(uint64_t a1)
{
  v2 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.PastPayment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B72DA184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B72DA258(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39 = a3;
  v36 = sub_1B77FFA18();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedFinHealthTransactionEntityGroup();
  v42.receiver = swift_getObjCClassFromMetadata();
  v42.super_class = &OBJC_METACLASS____TtC10FinanceKit38ManagedFinHealthTransactionEntityGroup;
  v5 = objc_msgSendSuper2(&v42, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v6 = swift_allocObject();
  v35 = xmmword_1B7807CD0;
  *(v6 + 16) = xmmword_1B7807CD0;
  v7 = a1;
  v8 = sub_1B77FF9B8();
  v9 = sub_1B7205540(0, &qword_1EB9905A8);
  *(v6 + 56) = v9;
  v10 = sub_1B726E47C();
  *(v6 + 64) = v10;
  *(v6 + 32) = v8;
  v11 = sub_1B78010E8();
  [v5 setPredicate_];

  v12 = v40;
  v13 = sub_1B7801488();
  if (v12)
  {
  }

  else
  {
    v40 = v7;
    v15 = v37;
    v14 = v38;
    if (v13 == 1)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v35;
      v17 = sub_1B77FF9B8();
      *(v16 + 56) = v9;
      *(v16 + 64) = v10;
      *(v16 + 32) = v17;
      v18 = sub_1B78010E8();
      sub_1B72DA6E8(v18, v39);
    }

    else
    {
      v41 = v5;
      *&v35 = v13;
      if (qword_1EDAFAF50 != -1)
      {
        swift_once();
      }

      v19 = sub_1B78000B8();
      __swift_project_value_buffer(v19, qword_1EDAFAF58);
      v20 = v14;
      v21 = v15;
      v22 = v15;
      v23 = v36;
      (*(v14 + 16))(v22, v40, v36);
      v24 = sub_1B7800098();
      v25 = sub_1B78011D8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v43 = v27;
        *v26 = 136315394;
        sub_1B71A6970(&qword_1EB98F120);
        v28 = sub_1B7802068();
        v29 = v21;
        v31 = v30;
        (*(v20 + 8))(v29, v23);
        v32 = sub_1B71A3EF8(v28, v31, &v43);

        *(v26 + 4) = v32;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v35;
        _os_log_impl(&dword_1B7198000, v24, v25, "Styling information requested for groupID: %s but %ld groups were found.", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x1B8CA7A40](v27, -1, -1);
        MEMORY[0x1B8CA7A40](v26, -1, -1);
      }

      else
      {

        (*(v20 + 8))(v21, v23);
      }

      v33 = v39;
      v34 = type metadata accessor for InternalTransaction(0);
      (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
    }
  }
}

void sub_1B72DA6E8(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ManagedInternalTransaction();
  v54.receiver = swift_getObjCClassFromMetadata();
  v54.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v3 = objc_msgSendSuper2(&v54, sel_fetchRequest);
  v4 = sub_1B7800C18();
  [v3 setRelationshipKeyPathsForPrefetching_];

  [v3 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B780C060;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = sub_1B7800838();
  v8 = [v6 initWithKey:v7 ascending:0];

  *(v5 + 32) = v8;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v10 = sub_1B7800838();
  v11 = [v9 initWithKey:v10 ascending:0];

  *(v5 + 40) = v11;
  sub_1B7205540(0, &qword_1EDAF6470);
  v12 = sub_1B7800C18();

  [v3 setSortDescriptors_];

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B780C060;
  *(v13 + 32) = a1;
  sub_1B7205540(0, &qword_1EDAFAF30);
  v14 = a1;
  *(v13 + 40) = sub_1B78010E8();
  v15 = sub_1B7800C18();

  v16 = objc_opt_self();
  v17 = [v16 andPredicateWithSubpredicates_];

  [v3 setPredicate_];
  v18 = v55;
  v19 = sub_1B7801498();
  if (v18)
  {

    return;
  }

  if (v19 >> 62)
  {
    v25 = v19;
    v26 = sub_1B7801958();
    v19 = v25;
    if (v26)
    {
      goto LABEL_5;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v19 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1B8CA5DC0](0);
      v20 = a2;
      goto LABEL_8;
    }

    v20 = a2;
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v19 + 32);
LABEL_8:

      InternalTransaction.init(_:)(v21, v20);

LABEL_9:
      v22 = type metadata accessor for InternalTransaction(0);
      v23 = *(*(v22 - 8) + 56);
      v24 = v20;
LABEL_10:
      v23(v24, 0, 1, v22);
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  v27 = swift_allocObject();
  v55 = v3;
  v28 = v27;
  *(v27 + 16) = xmmword_1B780C060;
  *(v27 + 32) = v14;
  v14 = v14;
  *(v28 + 40) = sub_1B78010E8();
  v29 = sub_1B7800C18();

  v30 = [v16 andPredicateWithSubpredicates_];

  [v55 setPredicate_];
  v19 = sub_1B7801498();
  if (!(v19 >> 62))
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_14:
    if ((v19 & 0xC000000000000001) != 0)
    {
      goto LABEL_33;
    }

    v20 = a2;
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_21:
  v33 = v19;
  v34 = sub_1B7801958();
  v19 = v33;
  if (v34)
  {
    goto LABEL_14;
  }

LABEL_22:

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B780C060;
  *(v35 + 32) = v14;
  v14 = v14;
  *(v35 + 40) = sub_1B78010E8();
  v36 = sub_1B7800C18();

  v37 = [v16 andPredicateWithSubpredicates_];

  [v55 setPredicate_];
  v19 = sub_1B7801498();
  if (!(v19 >> 62))
  {
    v38 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

LABEL_35:
  v43 = v19;
  v38 = sub_1B7801958();
  v19 = v43;
LABEL_24:
  if (!v38)
  {
    goto LABEL_28;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_33:
    v32 = MEMORY[0x1B8CA5DC0](0);
    v20 = a2;
    goto LABEL_18;
  }

  v20 = a2;
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_28:

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B780C060;
  *(v39 + 32) = v14;
  v40 = v14;
  *(v39 + 40) = sub_1B78010E8();
  v41 = sub_1B7800C18();

  v42 = [v16 andPredicateWithSubpredicates_];

  [v55 setPredicate_];
  v19 = sub_1B7801498();
  if (v19 >> 62)
  {
    v44 = v19;
    v45 = sub_1B7801958();
    v19 = v44;
    v20 = a2;
    if (v45)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v20 = a2;
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_30:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1B8CA5DC0](0);
        goto LABEL_17;
      }

      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

LABEL_16:
      v31 = *(v19 + 32);
LABEL_17:
      v32 = v31;
LABEL_18:

      InternalTransaction.init(_:)(v32, v20);

      goto LABEL_9;
    }
  }

  [v55 setPredicate_];
  v46 = sub_1B7801498();
  if (v46 >> 62)
  {
    v50 = v46;
    v51 = sub_1B7801958();
    v46 = v50;
    if (v51)
    {
      goto LABEL_39;
    }

LABEL_45:

    v52 = type metadata accessor for InternalTransaction(0);
    (*(*(v52 - 8) + 56))(v20, 1, 1, v52);
    return;
  }

  if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_45;
  }

LABEL_39:
  if ((v46 & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_42;
  }

  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v47 = *(v46 + 32);
LABEL_42:
    v48 = v47;

    v49 = v48;
    InternalTransaction.init(_:)(v49, a2);

    v22 = type metadata accessor for InternalTransaction(0);
    v23 = *(*(v22 - 8) + 56);
    v24 = a2;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1B72DAFE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B77FFA18();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  type metadata accessor for ManagedPredictedTransaction();
  v12 = static ManagedPredictedTransaction.existingPredictedTransaction(withID:in:)();
  if (!v2)
  {
    v44 = 0;
    if (v12)
    {
      v43 = v12;
      v13 = [v12 relatedTransactionIDs];
      if (v13)
      {
        v14 = v13;
        sub_1B71A6970(&qword_1EB99DAF0);
        v15 = sub_1B7800FA8();

        sub_1B7205540(0, &qword_1EDAFAF30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1B7807CD0;
        *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
        *(v16 + 64) = sub_1B72A6DD4();
        *(v16 + 32) = v15;
        v17 = sub_1B78010E8();
        sub_1B72DA6E8(v17, a2);

        return;
      }

      if (qword_1EDAFAF50 != -1)
      {
        swift_once();
      }

      v29 = sub_1B78000B8();
      __swift_project_value_buffer(v29, qword_1EDAFAF58);
      (*(v6 + 16))(v11, a1, v5);
      v30 = sub_1B7800098();
      v31 = sub_1B78011D8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v42 = a2;
        v34 = v33;
        v45 = v33;
        *v32 = 136315138;
        sub_1B71A6970(&qword_1EB98F120);
        v35 = sub_1B7802068();
        v37 = v36;
        (*(v6 + 8))(v11, v5);
        v38 = sub_1B71A3EF8(v35, v37, &v45);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_1B7198000, v30, v31, "Representative transaction was requested for predictedTransactionID: %s but it has no related transactions.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        v39 = v34;
        a2 = v42;
        MEMORY[0x1B8CA7A40](v39, -1, -1);
        MEMORY[0x1B8CA7A40](v32, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v11, v5);
      }
    }

    else
    {
      if (qword_1EDAFAF50 != -1)
      {
        swift_once();
      }

      v18 = sub_1B78000B8();
      __swift_project_value_buffer(v18, qword_1EDAFAF58);
      (*(v6 + 16))(v9, a1, v5);
      v19 = sub_1B7800098();
      v20 = sub_1B78011D8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v42 = a2;
        v23 = v22;
        v45 = v22;
        *v21 = 136315138;
        sub_1B71A6970(&qword_1EB98F120);
        v24 = sub_1B7802068();
        v26 = v25;
        (*(v6 + 8))(v9, v5);
        v27 = sub_1B71A3EF8(v24, v26, &v45);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_1B7198000, v19, v20, "Representative transaction was requested for predictedTransactionID: %s but no predicted transaction was found.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v28 = v23;
        a2 = v42;
        MEMORY[0x1B8CA7A40](v28, -1, -1);
        MEMORY[0x1B8CA7A40](v21, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v9, v5);
      }
    }

    v40 = type metadata accessor for InternalTransaction(0);
    (*(*(v40 - 8) + 56))(a2, 1, 1, v40);
  }
}

id ManagedApplePayMerchantTokenPastPaymentLineItem.__allocating_init(_:atIndex:usageInformationPackage:context:)(__int128 *a1, __int16 a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = a1[1];
  v20 = *a1;
  v21 = v8;
  v9 = a1[3];
  v22 = a1[2];
  v23 = v9;
  v24 = *(a1 + 8);
  v17[1] = v20;
  v18 = 0xD000000000000010;
  v19 = 0x80000001B7876290;
  v10 = sub_1B723940C(sub_1B7262E4C, v17);
  v11 = *(&v21 + 1);
  v12 = [objc_allocWithZone(v5) initWithContext_];
  [v12 setDecodingIndex_];
  [v12 setLabel_];
  if (v11)
  {
    v13 = sub_1B7800838();
  }

  else
  {
    v13 = 0;
  }

  [v12 setImageName_];

  v14 = sub_1B7801608();
  [v12 setAmountValue_];

  v15 = sub_1B7800838();
  [v12 setAmountCurrencyCode_];

  sub_1B72D9FBC(&v20);
  return v12;
}

void sub_1B72DB744(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 imageName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B72DB7AC(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setImageName_];
}

id ManagedApplePayMerchantTokenPastPaymentLineItem.__allocating_init(decodingIndex:label:imageName:amount:context:)(__int16 a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v11 = [objc_allocWithZone(v7) initWithContext_];
  [v11 setDecodingIndex_];
  [v11 setLabel_];
  if (a4)
  {
    v12 = sub_1B7800838();
  }

  else
  {
    v12 = 0;
  }

  [v11 setImageName_];

  v13 = sub_1B7801608();
  [v11 setAmountValue_];

  v14 = sub_1B7800838();

  [v11 setAmountCurrencyCode_];

  return v11;
}

void ManagedApplePayMerchantTokenPastPaymentLineItem.amount.getter(uint64_t a1@<X8>)
{
  v3 = [v1 amountValue];
  v4 = sub_1B7801678();
  v6 = v5;
  v8 = v7;

  v9 = [v1 amountCurrencyCode];
  v10 = sub_1B7800868();
  v12 = v11;

  CurrencyAmount.init(_:currencyCode:)(v4, v6, v8, v10, v12, a1);
}

id ManagedApplePayMerchantTokenPastPaymentLineItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenPastPaymentLineItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenPastPaymentLineItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedApplePayMerchantTokenPastPaymentSummaryItem.__allocating_init(_:atIndex:usageInformationPackage:context:)(uint64_t a1, __int16 a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v8;
  v17[2] = *(a1 + 32);
  v18 = *(a1 + 48);
  v14[1] = v17[0];
  v15 = 0xD000000000000010;
  v16 = 0x80000001B7876290;
  v9 = sub_1B723940C(sub_1B7262E4C, v14);
  v10 = [objc_allocWithZone(v5) initWithContext_];
  [v10 setDecodingIndex_];
  [v10 setLabel_];
  v11 = sub_1B7801608();
  [v10 setAmountValue_];

  v12 = sub_1B7800838();
  [v10 setAmountCurrencyCode_];

  sub_1B72DA06C(v17);
  return v10;
}

id ManagedApplePayMerchantTokenPastPaymentSummaryItem.__allocating_init(decodingIndex:label:amount:context:)(__int16 a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = [objc_allocWithZone(v5) initWithContext_];
  [v9 setDecodingIndex_];
  [v9 setLabel_];
  v10 = sub_1B7801608();
  [v9 setAmountValue_];

  v11 = sub_1B7800838();

  [v9 setAmountCurrencyCode_];

  return v9;
}

void ManagedApplePayMerchantTokenPastPaymentSummaryItem.amount.getter(uint64_t a1@<X8>)
{
  v3 = [v1 amountValue];
  v4 = sub_1B7801678();
  v6 = v5;
  v8 = v7;

  v9 = [v1 amountCurrencyCode];
  v10 = sub_1B7800868();
  v12 = v11;

  CurrencyAmount.init(_:currencyCode:)(v4, v6, v8, v10, v12, a1);
}

id ManagedApplePayMerchantTokenPastPaymentSummaryItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenPastPaymentSummaryItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenPastPaymentSummaryItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedApplePayMerchantTokenUpcomingPayment.__allocating_init(_:atIndex:usageInformationPackage:context:)(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v4 = sub_1B72DCF0C(a1, a2, a3, a4);

  return v4;
}

uint64_t ManagedApplePayMerchantTokenUpcomingPayment.PaymentType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x6E69727275636572 && a2 == 0xE900000000000067;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x6465727265666564 && v3 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0x6974616D6F747561 && v3 == 0xEF64616F6C655263 || (result = sub_1B78020F8(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 2;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t ManagedApplePayMerchantTokenUpcomingPayment.PaymentType.rawValue.getter()
{
  v1 = v0[1];
  v2 = 0x6465727265666564;
  v3 = 0x6974616D6F747561;
  if (v1 != 2)
  {
    v3 = *v0;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x6E69727275636572;
  }

  sub_1B72C60D0();
  return v4;
}

double sub_1B72DC274@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  ManagedApplePayMerchantTokenUpcomingPayment.PaymentType.init(rawValue:)(*a1, a1[1], &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B72DC2B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = 0xE900000000000067;
  v4 = 0x6E69727275636572;
  v5 = 0xE800000000000000;
  v6 = 0x6465727265666564;
  v7 = 0xEF64616F6C655263;
  v8 = 0x6974616D6F747561;
  if (v2 != 2)
  {
    v8 = *v1;
    v7 = v1[1];
  }

  if (v2 != 1)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2)
  {
    v4 = v6;
    v3 = v5;
  }

  *a1 = v4;
  a1[1] = v3;
  return sub_1B72C60D0();
}

id ManagedApplePayMerchantTokenUpcomingPayment.__allocating_init(decodingIndex:identifier:label:imageName:paymentDetails:context:)(__int16 a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v13 = *a7;
  v14 = *(a7 + 8);
  v15 = *(a7 + 16);
  v16 = [objc_allocWithZone(v9) initWithContext_];
  [v16 setDecodingIndex_];
  v17 = sub_1B7800838();

  [v16 setIdentifier_];

  [v16 setLabel_];
  if (a6)
  {
    v18 = sub_1B7800838();
  }

  else
  {
    v18 = 0;
  }

  [v16 setImageName_];

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      [v16 setAutomaticReloadPaymentDetails_];
      sub_1B72DD564(v13, v14, 2u);
      v13 = 0;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_12;
      }

      if (v14 == 1)
      {
        goto LABEL_11;
      }

      if (v14 != 2)
      {
        sub_1B72C60D0(v13, v14);
        goto LABEL_12;
      }
    }

    v14 = 2;
    goto LABEL_12;
  }

  if (v15)
  {
    [v16 setDeferredPaymentDetails_];
    sub_1B72DD564(v13, v14, 1u);
    v13 = 0;
LABEL_11:
    v14 = 1;
    goto LABEL_12;
  }

  [v16 setRecurringPaymentDetails_];
  sub_1B72DD564(v13, v14, 0);
  v13 = 0;
  v14 = 0;
LABEL_12:
  v19 = sub_1B7800838();
  sub_1B7282B50(v13, v14);

  [v16 setPaymentTypeValue_];

  return v16;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ManagedApplePayMerchantTokenUpcomingPayment.validateForInsert()()
{
  v1 = v0;
  v28[31] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v3 = sub_1B77FE748();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FE758();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.super_class = ObjectType;
  v28[0] = 0;
  v27.receiver = v1;
  if (!objc_msgSendSuper2(&v27, sel_validateForInsert_, v28))
  {
    v16 = v28[0];
    sub_1B77FF318();

LABEL_10:
    swift_willThrow();
    return;
  }

  v25 = v6;
  v26 = v5;
  v24 = v7;
  v10 = v28[0];
  v11 = [v1 paymentTypeValue];
  v12 = sub_1B7800868();
  v14 = v13;

  if (v12 == 0x6E69727275636572 && v14 == 0xE900000000000067 || (sub_1B78020F8() & 1) != 0)
  {

    v15 = [v1 recurringPaymentDetails];
    if (v15)
    {
LABEL_6:

      return;
    }

    sub_1B77FE6D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7807CD0;
    *(inited + 32) = sub_1B7800868();
    v19 = inited + 32;
    v20 = 0x80000001B78790C0;
    *(inited + 72) = MEMORY[0x1E69E6158];
    v21 = 0xD000000000000023;
    goto LABEL_9;
  }

  if (v12 == 0x6465727265666564 && v14 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v15 = [v1 deferredPaymentDetails];
    if (v15)
    {
      goto LABEL_6;
    }

    sub_1B77FE6D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7807CD0;
    *(inited + 32) = sub_1B7800868();
    v19 = inited + 32;
    v20 = 0x80000001B7879090;
    *(inited + 72) = MEMORY[0x1E69E6158];
    v21 = 0xD000000000000022;
    goto LABEL_9;
  }

  if (v12 == 0x6974616D6F747561 && v14 == 0xEF64616F6C655263)
  {

LABEL_21:
    v15 = [v1 automaticReloadPaymentDetails];
    if (v15)
    {
      goto LABEL_6;
    }

    sub_1B77FE6D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7807CD0;
    *(inited + 32) = sub_1B7800868();
    v19 = inited + 32;
    v20 = 0x80000001B7879060;
    *(inited + 72) = MEMORY[0x1E69E6158];
    v21 = 0xD000000000000029;
LABEL_9:
    *(inited + 40) = v18;
    *(inited + 48) = v21;
    *(inited + 56) = v20;
    sub_1B72018E0(inited);
    swift_setDeallocating();
    sub_1B72DD59C(v19);
    sub_1B72DD604();
    v22 = v25;
    sub_1B77FF2F8();
    sub_1B77FE688();
    (*(v24 + 8))(v9, v22);
    goto LABEL_10;
  }

  v23 = sub_1B78020F8();

  if (v23)
  {
    goto LABEL_21;
  }
}

uint64_t ManagedApplePayMerchantTokenUpcomingPayment.paymentType.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 paymentTypeValue];
  v4 = sub_1B7800868();
  v6 = v5;

  return ManagedApplePayMerchantTokenUpcomingPayment.PaymentType.init(rawValue:)(v4, v6, a1);
}

uint64_t ManagedApplePayMerchantTokenUpcomingPayment.paymentDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 paymentTypeValue];
  v4 = sub_1B7800868();
  v6 = v5;

  v7 = v4 == 0x6E69727275636572 && v6 == 0xE900000000000067;
  if (v7 || (sub_1B78020F8() & 1) != 0)
  {

    result = [v1 recurringPaymentDetails];
    if (result)
    {
      v4 = result;
      v6 = 0;
      v9 = 0;
LABEL_8:
      *a1 = v4;
      *(a1 + 8) = v6;
      *(a1 + 16) = v9;
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = v4 == 0x6465727265666564 && v6 == 0xE800000000000000;
  if (v10 || (sub_1B78020F8() & 1) != 0)
  {

    result = [v1 deferredPaymentDetails];
    if (result)
    {
      v4 = result;
      v6 = 0;
      v9 = 1;
      goto LABEL_8;
    }

    goto LABEL_25;
  }

  if (v4 != 0x6974616D6F747561 || v6 != 0xEF64616F6C655263)
  {
    result = sub_1B78020F8();
    if ((result & 1) == 0)
    {
      v9 = 3;
      goto LABEL_8;
    }
  }

  result = [v1 automaticReloadPaymentDetails];
  if (result)
  {
    v4 = result;
    v6 = 0;
    v9 = 2;
    goto LABEL_8;
  }

LABEL_26:
  __break(1u);
  return result;
}

id ManagedApplePayMerchantTokenUpcomingPayment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenUpcomingPayment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenUpcomingPayment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *ManagedApplePayMerchantTokenUpcomingPayment.PaymentType.init(_:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (v2 >= 3)
  {
    *a2 = *result;
  }

  else
  {
    *a2 = 0;
  }

  a2[1] = v2;
  return result;
}

id sub_1B72DCF0C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  LODWORD(v50) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v48 - v7;
  v9 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v48 - v13;
  v15 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment(0) + 28);
  v52 = a1;
  sub_1B72DD7F4(a1 + v18, v17, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *(v17 + 4);
      v27 = *(v17 + 9);
      type metadata accessor for ManagedApplePayMerchantTokenAutomaticReloadPaymentDetails();
      v28 = *(v17 + 1);
      v53 = *v17;
      v54 = v28;
      v55 = v26;
      v29 = *(v17 + 40);
      v58[1] = *(v17 + 56);
      v58[0] = v29;
      v59 = v27;

      v30 = a4;

      v24 = ManagedApplePayMerchantTokenAutomaticReloadPaymentDetails.__allocating_init(amount:thresholdAmount:context:)(&v53, v58, v30);

      v25 = 0;
      v31 = 2;
    }

    else
    {
      v25 = *(v17 + 1);
      if (v25 >= 3)
      {
        v24 = *v17;
      }

      else
      {
        v24 = 0;
      }

      v31 = 3;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = *(v17 + 16);
      v21 = *(v17 + 5);
      v22 = v17[48];
      type metadata accessor for ManagedApplePayMerchantTokenRecurringPaymentDetails();
      v23 = *(v17 + 1);
      v53 = *v17;
      v54 = v23;
      LOWORD(v55) = v20;
      v56 = v21;
      v57 = v22;
      ManagedApplePayMerchantTokenRecurringPaymentDetails.__allocating_init(_:context:)(&v53, a4);
      v24 = EnumCaseMultiPayload;
      v25 = 0;
      v49 = 0;
      goto LABEL_12;
    }

    sub_1B72DD790(v17, v14);
    type metadata accessor for ManagedApplePayMerchantTokenDeferredPaymentDetails();
    sub_1B72DD7F4(v14, v12, type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails);
    v32 = *(v12 + 4);
    v33 = *(v12 + 1);
    v53 = *v12;
    v54 = v33;
    v55 = v32;
    sub_1B72DD85C(&v12[*(v9 + 20)], v8);

    v24 = ManagedApplePayMerchantTokenDeferredPaymentDetails.__allocating_init(amount:paymentDateComponents:context:)(&v53, v8, a4);
    sub_1B72DD8CC(v12, type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails);
    EnumCaseMultiPayload = sub_1B72DD8CC(v14, type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails);
    v25 = 0;
    v31 = 1;
  }

  v49 = v31;
LABEL_12:
  v34 = v52;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  v48[-4] = v35;
  v48[-3] = v36;
  v48[-2] = 0xD000000000000010;
  v48[-1] = v37;
  v38 = sub_1B723940C(sub_1B7262E4C, &v48[-6]);
  v39 = *(v34 + 40);
  v48[1] = *(v34 + 32);
  v40 = objc_allocWithZone(v51);
  v41 = v49;
  sub_1B72DD758(v24, v25, v49);
  v51 = a4;
  v42 = [v40 initWithContext_];
  [v42 setDecodingIndex_];
  v43 = sub_1B7800838();
  [v42 setIdentifier_];

  v50 = v38;
  [v42 setLabel_];
  if (v39)
  {
    v39 = sub_1B7800838();
  }

  [v42 setImageName_];

  if (v41 > 1)
  {
    if (v41 == 2)
    {
      [v42 setAutomaticReloadPaymentDetails_];
      sub_1B72DD564(v24, v25, 2u);
      v44 = 0;
      goto LABEL_19;
    }

    if (v25)
    {
      v44 = v24;
      if (v25 == 1)
      {
        goto LABEL_21;
      }

      v44 = v24;
      if (v25 == 2)
      {
LABEL_19:
        v45 = 2;
        goto LABEL_27;
      }

      sub_1B72C60D0(v24, v25);
    }

    v44 = v24;
    v45 = v25;
    goto LABEL_27;
  }

  if (v41)
  {
    [v42 setDeferredPaymentDetails_];
    sub_1B72DD564(v24, v25, 1u);
    v44 = 0;
LABEL_21:
    v45 = 1;
    goto LABEL_27;
  }

  [v42 setRecurringPaymentDetails_];
  sub_1B72DD564(v24, v25, 0);
  v44 = 0;
  v45 = 0;
LABEL_27:
  v46 = sub_1B7800838();
  sub_1B7282B50(v44, v45);

  [v42 setPaymentTypeValue_];

  sub_1B72DD564(v24, v25, v41);
  sub_1B72DD8CC(v52, type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment);
  return v42;
}

void sub_1B72DD564(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    sub_1B7282B50(a1, a2);
  }
}

uint64_t sub_1B72DD59C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B72DD604()
{
  result = qword_1EDAF6608;
  if (!qword_1EDAF6608)
  {
    sub_1B77FE758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF6608);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit43ManagedApplePayMerchantTokenUpcomingPaymentC0I4TypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B72DD6B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B72DD6FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

id sub_1B72DD758(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return result;
    }

    return result;
  }

  if (a3 == 2)
  {
    return result;
  }

  if (a3 == 3)
  {
    return sub_1B72C60D0();
  }

  return result;
}

uint64_t sub_1B72DD790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.DeferredPaymentDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72DD7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72DD85C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72DD8CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ManagedApplePayMerchantTokenScheduledPayment.__allocating_init(decodingIndex:amount:paymentDateComponents:context:)(__int16 a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v14 = [objc_allocWithZone(v5) initWithContext_];
  [v14 setDecodingIndex_];
  if (v13)
  {
    v15 = sub_1B7801608();
    [v14 setAmountValue_];

    v24[0] = v9;
    v24[1] = v10;
    v24[2] = v12;
    v24[3] = v11;
    v24[4] = v13;
    sub_1B7215720(v24, &v23);
    v16 = sub_1B7800838();
  }

  else
  {
    [v14 setAmountValue_];
    v16 = 0;
  }

  [v14 setAmountCurrencyCode_];

  result = sub_1B77FEC58();
  if (v18)
  {
    goto LABEL_20;
  }

  if (result < -32768)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= 0x8000)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v14 setPaymentYear_];
  result = sub_1B77FEC78();
  if (v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result < -32768)
  {
    goto LABEL_16;
  }

  if (result >= 0x8000)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v14 setPaymentMonth_];
  result = sub_1B77FEC08();
  if ((v20 & 1) == 0)
  {
    v21 = result;

    if (v21 >= -32768)
    {
      if (v21 < 0x8000)
      {
        [v14 setPaymentDay_];

        v22 = sub_1B77FED28();
        (*(*(v22 - 8) + 8))(a3, v22);
        return v14;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
  return result;
}

double ManagedApplePayMerchantTokenScheduledPayment.amount.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 amountValue];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 amountCurrencyCode];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B7800868();
      v10 = v9;

      v11 = sub_1B7801678();
      CurrencyAmount.init(_:currencyCode:)(v11, v12, v13, v8, v10, v17);

      v14 = v18;
      result = *v17;
      v16 = v17[1];
      *a1 = v17[0];
      *(a1 + 16) = v16;
      *(a1 + 32) = v14;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ManagedApplePayMerchantTokenScheduledPayment.paymentDateComponents.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1B77FFB08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  (*(v6 + 104))(v8, *MEMORY[0x1E6969830], v5);
  sub_1B77FFB18();
  (*(v6 + 8))(v8, v5);
  v12 = sub_1B77FFC88();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = sub_1B77FFCF8();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  [v1 paymentYear];
  [v1 paymentMonth];
  [v1 paymentDay];
  return sub_1B77FECD8();
}

id ManagedApplePayMerchantTokenScheduledPayment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenScheduledPayment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenScheduledPayment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ManagedApplePayMerchantTokenScheduledPayment.__allocating_init(_:atIndex:context:)(void *a1, __int16 a2, void *a3)
{
  v4 = sub_1B72DE07C(a1, a2, a3);

  return v4;
}

uint64_t sub_1B72DE07C(void *a1, __int16 a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1B77FED28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v24[1] = *a1;
  v24[2] = v12;
  v13 = a1[4];
  v14 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment(0);
  v15 = *(v9 + 16);
  v16 = a1 + *(v14 + 20);
  v25 = v8;
  v15(v11, v16, v8);
  v17 = [objc_allocWithZone(v4) initWithContext_];
  [v17 setDecodingIndex_];
  if (v13)
  {
    v18 = sub_1B7801608();
    [v17 setAmountValue_];

    v19 = sub_1B7800838();
  }

  else
  {
    [v17 setAmountValue_];
    v19 = 0;
  }

  [v17 setAmountCurrencyCode_];

  result = sub_1B77FEC58();
  if (v21)
  {
    goto LABEL_20;
  }

  if (result < -32768)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= 0x8000)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v17 setPaymentYear_];
  result = sub_1B77FEC78();
  if (v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result < -32768)
  {
    goto LABEL_16;
  }

  if (result >= 0x8000)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v17 setPaymentMonth_];
  result = sub_1B77FEC08();
  if ((v23 & 1) == 0)
  {
    if (result >= -32768)
    {
      if (result < 0x8000)
      {
        [v17 setPaymentDay_];

        sub_1B72DE324(a1);
        (*(v9 + 8))(v11, v25);
        return v17;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1B72DE324(uint64_t a1)
{
  v2 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.ScheduledPayment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BankConnectWebServiceInsightsRequest.baaIdentification.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v7;
  a1[5] = v6;
  a1[6] = v8;
}

__n128 BankConnectWebServiceInsightsRequest.baaIdentification.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v4 = a1[2];
  v2 = *(a1 + 6);

  *v1 = v6;
  *(v1 + 16) = v5;
  result = v4;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  return result;
}

uint64_t BankConnectWebServiceInsightsRequest.transactions.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t BankConnectWebServiceInsightsRequest.mapsUserIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  *a1 = v1[8];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 BankConnectWebServiceInsightsRequest.mapsUserIdentifier.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  v1[4] = v4;
  v1[5].n128_u64[0] = v2;
  return result;
}

__n128 BankConnectWebServiceInsightsRequest.init(baaIdentification:transactions:mapsUserIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *a3;
  v9 = *(a3 + 2);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = v6;
  *(a4 + 48) = v7;
  *(a4 + 56) = a2;
  *(a4 + 64) = v8;
  *(a4 + 80) = v9;
  return result;
}

uint64_t BankConnectWebServiceInsightsRequest.jsonBody.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];

  result = sub_1B72DE64C(0);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v9;
  return result;
}

uint64_t sub_1B72DE64C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t BankConnectWebServiceInsightsRequest.makeJSONEncoder()()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB991BE8);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B77FE988();
  return v4;
}

uint64_t BankConnectWebServiceInsightsRequest.makeAdditionalHTTPHeaderFields()()
{
  v1 = sub_1B77FFAF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[9];
  v6 = v0[10];
  v10[0] = v0[8];
  v10[1] = v5;
  v10[2] = v6;

  sub_1B77FFA68();
  v7 = _s10FinanceKit32BankConnectInsightsHeaderBuilderO5build18mapsUserIdentifier6localeSayAA15HTTPHeaderFieldVGAA0cd4MapsjK0V_10Foundation6LocaleVtFZ_0(v10);
  (*(v2 + 8))(v4, v1);

  return v7;
}

uint64_t sub_1B72DE8D8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];

  result = sub_1B72DE64C(0);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v9;
  return result;
}

uint64_t sub_1B72DE980()
{
  v1 = sub_1B77FFAF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[9];
  v6 = v0[10];
  v10[0] = v0[8];
  v10[1] = v5;
  v10[2] = v6;

  sub_1B77FFA68();
  v7 = _s10FinanceKit32BankConnectInsightsHeaderBuilderO5build18mapsUserIdentifier6localeSayAA15HTTPHeaderFieldVGAA0cd4MapsjK0V_10Foundation6LocaleVtFZ_0(v10);
  (*(v2 + 8))(v4, v1);

  return v7;
}

uint64_t sub_1B72DEA84()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB991BE8);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B77FE988();
  return v4;
}

uint64_t RawBankConnectData.TransactionInsightsResponse.insights.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RawBankConnectData.TransactionInsightsResponse.retryAfter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.TransactionInsightsResponse() + 20);

  return sub_1B7280900(v3, a1);
}

uint64_t RawBankConnectData.TransactionInsightsResponse.retryAfter.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.TransactionInsightsResponse() + 20);

  return sub_1B72DFF88(a1, v3);
}

uint64_t sub_1B72DECE0()
{
  if (*v0)
  {
    return 0x7466417972746572;
  }

  else
  {
    return 0x7374686769736E69;
  }
}

uint64_t sub_1B72DED20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7374686769736E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B72DEE04(uint64_t a1)
{
  v2 = sub_1B72DFFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72DEE40(uint64_t a1)
{
  v2 = sub_1B72DFFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionInsightsResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991540);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72DFFF8();
  sub_1B78023F8();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991550);
  sub_1B72E004C(&qword_1EB991558, &qword_1EB991560);
  sub_1B7801FC8();
  if (!v2)
  {
    type metadata accessor for RawBankConnectData.TransactionInsightsResponse();
    v10[6] = 1;
    sub_1B77FF988();
    sub_1B72E0558(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.TransactionInsightsResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991568);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for RawBankConnectData.TransactionInsightsResponse();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 28);
  v15 = sub_1B77FF988();
  v16 = *(*(v15 - 8) + 56);
  v23 = v14;
  v16(&v13[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72DFFF8();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B7205418(&v13[v23], &qword_1EB98EBD0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991550);
    v25 = 0;
    sub_1B72E004C(&qword_1EB991570, &qword_1EB991578);
    v17 = v22;
    sub_1B7801E48();
    v19 = v26;
    *v13 = v26;
    v24 = 1;
    sub_1B72E0558(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    sub_1B7801DB8();
    (*(v21 + 8))(v9, v17);
    sub_1B72DFF88(v6, &v13[v23]);
    sub_1B72E00E8(v13, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B72E014C(v13);
  }
}

void sub_1B72DF458(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v59 = a2;
  v58 = a1;
  v54 = a4;
  v5 = sub_1B77FF988();
  v62 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v56 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v54 - v13;
  v14 = sub_1B77FE8B8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RawBankConnectData.TransactionInsightsResponse();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v61 = a3;
    v23 = [v22 statusCode];
    if (v23 == 429)
    {
      v31 = v62;
      (*(v62 + 56))(v10, 1, 1, v5);
      v32 = v5;
      v33 = sub_1B7800838();
      v34 = [v22 valueForHTTPHeaderField_];

      if (v34)
      {
        v35 = sub_1B7800868();
        v37 = v36;

        v38 = v57;
        sub_1B77FF938();
        v39 = v56;
        sub_1B7404B00(v35, v37, v56);

        (*(v31 + 8))(v38, v32);
        sub_1B7205418(v10, &qword_1EB98EBD0);
        sub_1B7205340(v39, v10);
      }

      type metadata accessor for FinanceNetworkError();
      sub_1B72E0558(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      sub_1B7280900(v10, v40);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1B7205418(v10, &qword_1EB98EBD0);
    }

    else if (v23 == 200)
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v14, qword_1EB991BC8);
      (*(v15 + 16))(v17, v24, v14);
      sub_1B77FE8C8();
      sub_1B72E0558(&qword_1EB9915B8, type metadata accessor for RawBankConnectData.TransactionInsightsResponse);
      v25 = v60;
      sub_1B77FE8D8();
      if (v25)
      {

        type metadata accessor for FinanceNetworkError();
        sub_1B72E0558(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        *v26 = v25;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {

        v43 = v62;
        v44 = v55;
        (*(v62 + 56))(v55, 1, 1, v5);
        v45 = sub_1B7800838();
        v46 = [v22 valueForHTTPHeaderField_];

        if (v46)
        {
          v47 = sub_1B7800868();
          v49 = v48;

          v50 = v57;
          sub_1B77FF938();
          v51 = v56;
          sub_1B7404B00(v47, v49, v56);
          v44 = v55;

          (*(v43 + 8))(v50, v5);
          sub_1B7205418(v44, &qword_1EB98EBD0);
          sub_1B7205340(v51, v44);
        }

        else
        {
        }

        v52 = *v20;

        sub_1B72E014C(v20);
        v53 = v54;
        *v54 = v52;
        sub_1B7205340(v44, v53 + *(v18 + 20));
      }
    }

    else
    {
      v41 = v23;
      type metadata accessor for FinanceNetworkError();
      sub_1B72E0558(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      *v42 = v41;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B72E0558(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v28 = v27;
    v29 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v28 = v29;
    v28[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

BOOL _s10FinanceKit18RawBankConnectDataO27TransactionInsightsResponseV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if ((sub_1B731E9AC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for RawBankConnectData.TransactionInsightsResponse() + 20);
  v15 = *(v11 + 48);
  sub_1B7280900(a1 + v14, v13);
  sub_1B7280900(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B7205418(v13, &qword_1EB98EBD0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1B7280900(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1B72E0558(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v18 = sub_1B7800828();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1B7205418(v13, &qword_1EB98EBD0);
  return (v18 & 1) != 0;
}

uint64_t type metadata accessor for RawBankConnectData.TransactionInsightsResponse()
{
  result = qword_1EB991588;
  if (!qword_1EB991588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B72DFF88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B72DFFF8()
{
  result = qword_1EB991548;
  if (!qword_1EB991548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991548);
  }

  return result;
}

uint64_t sub_1B72E004C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991550);
    sub_1B72E0558(a2, type metadata accessor for RawBankConnectData.TransactionClassificationResult);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B72E00E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.TransactionInsightsResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72E014C(uint64_t a1)
{
  v2 = type metadata accessor for RawBankConnectData.TransactionInsightsResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B72E01AC()
{
  result = qword_1EB991580;
  if (!qword_1EB991580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991580);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B72E0224(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1B72E026C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B72E02F8()
{
  sub_1B72E03DC(319, &qword_1EB991598, type metadata accessor for RawBankConnectData.TransactionClassificationResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B72E03DC(319, qword_1EDAFD2F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B72E03DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1B72E0454()
{
  result = qword_1EB9915A0;
  if (!qword_1EB9915A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9915A0);
  }

  return result;
}

unint64_t sub_1B72E04AC()
{
  result = qword_1EB9915A8;
  if (!qword_1EB9915A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9915A8);
  }

  return result;
}

unint64_t sub_1B72E0504()
{
  result = qword_1EB9915B0;
  if (!qword_1EB9915B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9915B0);
  }

  return result;
}

uint64_t sub_1B72E0558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B72E05E4(uint64_t a1)
{
  v2 = sub_1B72E7650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E0620(uint64_t a1)
{
  v2 = sub_1B72E7650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E065C(uint64_t a1)
{
  v2 = sub_1B72E76F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E0698(uint64_t a1)
{
  v2 = sub_1B72E76F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E06D4(uint64_t a1)
{
  v2 = sub_1B72E76A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E0710(uint64_t a1)
{
  v2 = sub_1B72E76A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackedOrder.OrderDate.encode(to:)(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9915C0);
  v25 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9915C8);
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9915D0);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v8 = v1[1];
  v32 = *v1;
  v26 = v8;
  v24 = v1[2];
  v10 = v1[4];
  v9 = v1[5];
  v11 = *(v1 + 48);
  v12 = a1[3];
  v13 = a1;
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1B72E7650();
  sub_1B78023F8();
  if (v11 < 0)
  {
    v30 = v9;
    v31 = v10;
    LODWORD(v29) = v11;
    v20 = v25;
    v45 = 1;
    sub_1B72E76A4();
    v21 = v27;
    sub_1B7801ED8();
    v44 = 0;
    v22 = v33;
    v23 = v28;
    sub_1B7801FA8();
    if (!v22)
    {
      v43 = 1;
      sub_1B7801FA8();
      v42 = 2;
      sub_1B7801FA8();
      v41 = 3;
      sub_1B7801FA8();
      v40 = 4;
      sub_1B7801FA8();
      v39 = 5;
      sub_1B7801F28();
    }

    (*(v20 + 8))(v21, v23);
    return (*(v34 + 8))(v15, v7);
  }

  else
  {
    v38 = 0;
    sub_1B72E76F8();
    v16 = v29;
    sub_1B7801ED8();
    v37 = 0;
    v17 = v33;
    v18 = v30;
    sub_1B7801FA8();
    if (!v17)
    {
      v36 = 1;
      sub_1B7801FA8();
      v35 = 2;
      sub_1B7801FA8();
    }

    (*(v31 + 8))(v16, v18);
    return (*(v34 + 8))(v15, v7);
  }
}

uint64_t TrackedOrder.OrderDate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9915F0);
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9915F8);
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991600);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  v12 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B72E7650();
  v13 = v50;
  sub_1B78023C8();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v14 = v49;
  v50 = v9;
  v15 = sub_1B7801E98();
  v16 = (2 * *(v15 + 16)) | 1;
  v52 = v15;
  v53 = v15 + 32;
  v54 = 0;
  v55 = v16;
  v17 = sub_1B721CE4C();
  if (v17 == 2 || v54 != v55 >> 1)
  {
    v21 = sub_1B7801B18();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v23 = &type metadata for TrackedOrder.OrderDate;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    (*(v50 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if (v17)
  {
    v56 = 1;
    sub_1B72E76A4();
    v18 = v4;
    sub_1B7801D38();
    v19 = v14;
    v56 = 0;
    v20 = v46;
    v45 = sub_1B7801E28();
    v56 = 1;
    v28 = v18;
    v29 = sub_1B7801E28();
    v30 = v48;
    v44 = v29;
    v56 = 2;
    v31 = sub_1B7801E28();
    v56 = 3;
    v32 = sub_1B7801E28();
    v56 = 4;
    v43 = sub_1B7801E28();
    v56 = 5;
    v47 = sub_1B7801DA8();
    v38 = v37;
    (*(v30 + 8))(v28, v20);
    (*(v50 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v39 = v38 & 1 | 0x80;
    v40 = v43;
    v41 = v31;
  }

  else
  {
    v56 = 0;
    sub_1B72E76F8();
    v25 = v7;
    sub_1B7801D38();
    v19 = v14;
    v56 = 0;
    v26 = sub_1B7801E28();
    v27 = v50;
    v45 = v26;
    v56 = 1;
    v33 = sub_1B7801E28();
    v34 = v47;
    v44 = v33;
    v56 = 2;
    v40 = 0;
    v41 = sub_1B7801E28();
    (*(v34 + 8))(v25, v5);
    (*(v27 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v32 = 0;
    v47 = 0;
    v39 = 0;
  }

  v35 = v44;
  *v19 = v45;
  *(v19 + 8) = v35;
  *(v19 + 16) = v41;
  *(v19 + 24) = v32;
  v36 = v47;
  *(v19 + 32) = v40;
  *(v19 + 40) = v36;
  *(v19 + 48) = v39;
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_1B72E12D8(uint64_t a1)
{
  v2 = sub_1B72E77FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E1314(uint64_t a1)
{
  v2 = sub_1B72E77FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E1350(uint64_t a1)
{
  v2 = sub_1B72E78A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E138C(uint64_t a1)
{
  v2 = sub_1B72E78A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E13C8(uint64_t a1)
{
  v2 = sub_1B72E7850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E1404(uint64_t a1)
{
  v2 = sub_1B72E7850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackedOrder.ShippingDate.encode(to:)(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991608);
  v25 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991610);
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991618);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v8 = v1[1];
  v32 = *v1;
  v26 = v8;
  v24 = v1[2];
  v10 = v1[4];
  v9 = v1[5];
  v11 = *(v1 + 48);
  v12 = a1[3];
  v13 = a1;
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1B72E77FC();
  sub_1B78023F8();
  if (v11 < 0)
  {
    v30 = v9;
    v31 = v10;
    LODWORD(v29) = v11;
    v20 = v25;
    v45 = 1;
    sub_1B72E7850();
    v21 = v27;
    sub_1B7801ED8();
    v44 = 0;
    v22 = v33;
    v23 = v28;
    sub_1B7801FA8();
    if (!v22)
    {
      v43 = 1;
      sub_1B7801FA8();
      v42 = 2;
      sub_1B7801FA8();
      v41 = 3;
      sub_1B7801FA8();
      v40 = 4;
      sub_1B7801FA8();
      v39 = 5;
      sub_1B7801F28();
    }

    (*(v20 + 8))(v21, v23);
    return (*(v34 + 8))(v15, v7);
  }

  else
  {
    v38 = 0;
    sub_1B72E78A4();
    v16 = v29;
    sub_1B7801ED8();
    v37 = 0;
    v17 = v33;
    v18 = v30;
    sub_1B7801FA8();
    if (!v17)
    {
      v36 = 1;
      sub_1B7801FA8();
      v35 = 2;
      sub_1B7801FA8();
    }

    (*(v31 + 8))(v16, v18);
    return (*(v34 + 8))(v15, v7);
  }
}

uint64_t TrackedOrder.ShippingDate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991638);
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991640);
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991648);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  v12 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B72E77FC();
  v13 = v50;
  sub_1B78023C8();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v14 = v49;
  v50 = v9;
  v15 = sub_1B7801E98();
  v16 = (2 * *(v15 + 16)) | 1;
  v52 = v15;
  v53 = v15 + 32;
  v54 = 0;
  v55 = v16;
  v17 = sub_1B721CE4C();
  if (v17 == 2 || v54 != v55 >> 1)
  {
    v21 = sub_1B7801B18();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v23 = &type metadata for TrackedOrder.ShippingDate;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    (*(v50 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if (v17)
  {
    v56 = 1;
    sub_1B72E7850();
    v18 = v4;
    sub_1B7801D38();
    v19 = v14;
    v56 = 0;
    v20 = v46;
    v45 = sub_1B7801E28();
    v56 = 1;
    v28 = v18;
    v29 = sub_1B7801E28();
    v30 = v48;
    v44 = v29;
    v56 = 2;
    v31 = sub_1B7801E28();
    v56 = 3;
    v32 = sub_1B7801E28();
    v56 = 4;
    v43 = sub_1B7801E28();
    v56 = 5;
    v47 = sub_1B7801DA8();
    v38 = v37;
    (*(v30 + 8))(v28, v20);
    (*(v50 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v39 = v38 & 1 | 0x80;
    v40 = v43;
    v41 = v31;
  }

  else
  {
    v56 = 0;
    sub_1B72E78A4();
    v25 = v7;
    sub_1B7801D38();
    v19 = v14;
    v56 = 0;
    v26 = sub_1B7801E28();
    v27 = v50;
    v45 = v26;
    v56 = 1;
    v33 = sub_1B7801E28();
    v34 = v47;
    v44 = v33;
    v56 = 2;
    v40 = 0;
    v41 = sub_1B7801E28();
    (*(v34 + 8))(v25, v5);
    (*(v27 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v32 = 0;
    v47 = 0;
    v39 = 0;
  }

  v35 = v44;
  *v19 = v45;
  *(v19 + 8) = v35;
  *(v19 + 16) = v41;
  *(v19 + 24) = v32;
  v36 = v47;
  *(v19 + 32) = v40;
  *(v19 + 40) = v36;
  *(v19 + 48) = v39;
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_1B72E1FCC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2 & 1) != 0 || (a4 & 1) != 0 || (a6)
  {
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0u;
    *a9 = 0u;
    *(a9 + 48) = -2;
  }

  else if (a8 & 1) != 0 || (a11)
  {
    *a9 = result;
    *(a9 + 8) = a3;
    *(a9 + 16) = a5;
    *(a9 + 24) = 0;
    *(a9 + 32) = 0;
    *(a9 + 40) = 0;
    *(a9 + 48) = 0;
  }

  else
  {
    *a9 = result;
    *(a9 + 8) = a3;
    *(a9 + 16) = a5;
    *(a9 + 24) = a7;
    *(a9 + 32) = a10;
    *(a9 + 40) = a12;
    *(a9 + 48) = a13 & 1 | 0x80;
  }

  return result;
}

uint64_t _s10FinanceKit12TrackedOrderO0D4DateO09convertToE08calendar8timeZone10Foundation0E0VAI8CalendarV_AI04TimeJ0VtF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v35 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v32 - v9;
  v11 = sub_1B77FED28();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v3[1];
  v40 = *v3;
  v41 = v14;
  v15 = v3[3];
  v42 = v3[2];
  v17 = v3[4];
  v16 = v3[5];
  v32[0] = v15;
  v32[1] = v17;
  v32[2] = v16;
  v39 = *(v3 + 48);
  v18 = sub_1B77FFC88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v36 = v18;
  v37 = v20;
  v20(v10, 1, 1, v18);
  v21 = sub_1B77FFCF8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v38;
  v23(v38, 1, 1, v21);
  v25 = v24;
  sub_1B77FECD8();
  v26 = v36;
  (*(v19 + 16))(v10, v43, v36);
  v37(v10, 0, 1, v26);
  sub_1B77FECF8();
  (*(v22 + 16))(v25, v44, v21);
  v23(v25, 0, 1, v21);
  v27 = v39;
  sub_1B77FED18();
  sub_1B77FEC68();
  sub_1B77FEC88();
  sub_1B77FEC18();
  if (v27 < 0)
  {
    sub_1B77FEC48();
    sub_1B77FECA8();
    sub_1B77FECC8();
  }

  v28 = v45;
  sub_1B77FEC28();
  v29 = sub_1B77FF988();
  v30 = *(v29 - 8);
  result = (*(v30 + 48))(v28, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v33 + 8))(v13, v34);
    return (*(v30 + 32))(v35, v28, v29);
  }

  return result;
}

uint64_t sub_1B72E24D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874695765746164 && a2 == 0xEC000000656D6954)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B72E25B0(uint64_t a1)
{
  v2 = sub_1B72E78F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E25EC(uint64_t a1)
{
  v2 = sub_1B72E78F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E2628(uint64_t a1)
{
  v2 = sub_1B72E79A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E2664(uint64_t a1)
{
  v2 = sub_1B72E79A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72E26A0(uint64_t a1)
{
  v2 = sub_1B72E794C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72E26DC(uint64_t a1)
{
  v2 = sub_1B72E794C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackedOrder.DeliveryDate.encode(to:)(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991650);
  v25 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991658);
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991660);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v8 = v1[1];
  v32 = *v1;
  v26 = v8;
  v24 = v1[2];
  v10 = v1[4];
  v9 = v1[5];
  v11 = *(v1 + 48);
  v12 = a1[3];
  v13 = a1;
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1B72E78F8();
  sub_1B78023F8();
  if (v11 < 0)
  {
    v30 = v9;
    v31 = v10;
    LODWORD(v29) = v11;
    v20 = v25;
    v45 = 1;
    sub_1B72E794C();
    v21 = v27;
    sub_1B7801ED8();
    v44 = 0;
    v22 = v33;
    v23 = v28;
    sub_1B7801FA8();
    if (!v22)
    {
      v43 = 1;
      sub_1B7801FA8();
      v42 = 2;
      sub_1B7801FA8();
      v41 = 3;
      sub_1B7801FA8();
      v40 = 4;
      sub_1B7801FA8();
      v39 = 5;
      sub_1B7801F28();
    }

    (*(v20 + 8))(v21, v23);
    return (*(v34 + 8))(v15, v7);
  }

  else
  {
    v38 = 0;
    sub_1B72E79A0();
    v16 = v29;
    sub_1B7801ED8();
    v37 = 0;
    v17 = v33;
    v18 = v30;
    sub_1B7801FA8();
    if (!v17)
    {
      v36 = 1;
      sub_1B7801FA8();
      v35 = 2;
      sub_1B7801FA8();
    }

    (*(v31 + 8))(v16, v18);
    return (*(v34 + 8))(v15, v7);
  }
}

uint64_t TrackedOrder.DeliveryDate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991680);
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991688);
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991690);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  v12 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B72E78F8();
  v13 = v50;
  sub_1B78023C8();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v14 = v49;
  v50 = v9;
  v15 = sub_1B7801E98();
  v16 = (2 * *(v15 + 16)) | 1;
  v52 = v15;
  v53 = v15 + 32;
  v54 = 0;
  v55 = v16;
  v17 = sub_1B721CE4C();
  if (v17 == 2 || v54 != v55 >> 1)
  {
    v21 = sub_1B7801B18();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v23 = &type metadata for TrackedOrder.DeliveryDate;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    (*(v50 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if (v17)
  {
    v56 = 1;
    sub_1B72E794C();
    v18 = v4;
    sub_1B7801D38();
    v19 = v14;
    v56 = 0;
    v20 = v46;
    v45 = sub_1B7801E28();
    v56 = 1;
    v28 = v18;
    v29 = sub_1B7801E28();
    v30 = v48;
    v44 = v29;
    v56 = 2;
    v31 = sub_1B7801E28();
    v56 = 3;
    v32 = sub_1B7801E28();
    v56 = 4;
    v43 = sub_1B7801E28();
    v56 = 5;
    v47 = sub_1B7801DA8();
    v38 = v37;
    (*(v30 + 8))(v28, v20);
    (*(v50 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v39 = v38 & 1 | 0x80;
    v40 = v43;
    v41 = v31;
  }

  else
  {
    v56 = 0;
    sub_1B72E79A0();
    v25 = v7;
    sub_1B7801D38();
    v19 = v14;
    v56 = 0;
    v26 = sub_1B7801E28();
    v27 = v50;
    v45 = v26;
    v56 = 1;
    v33 = sub_1B7801E28();
    v34 = v47;
    v44 = v33;
    v56 = 2;
    v40 = 0;
    v41 = sub_1B7801E28();
    (*(v34 + 8))(v25, v5);
    (*(v27 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v32 = 0;
    v47 = 0;
    v39 = 0;
  }

  v35 = v44;
  *v19 = v45;
  *(v19 + 8) = v35;
  *(v19 + 16) = v41;
  *(v19 + 24) = v32;
  v36 = v47;
  *(v19 + 32) = v40;
  *(v19 + 40) = v36;
  *(v19 + 48) = v39;
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t TrackedOrder.EstimatedDeliveryDate.init(startYear:startMonth:startDay:endYear:endMonth:endDay:startHour:startMinute:startSeconds:endHour:endMinute:endSeconds:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, unsigned __int8 a23, uint64_t a24, char a25)
{
  v25 = a13 | a11 | a8;
  if (a6 & 1) != 0 || (a4 & 1) != 0 || (a2)
  {
    if ((v25 & 1) == 0)
    {
      if (a21 & 1) != 0 || (a23)
      {
        *a9 = a7;
        *(a9 + 8) = a10;
        *(a9 + 16) = a12;
        *(a9 + 48) = 0;
        v27 = 96;
      }

      else
      {
        *a9 = a7;
        *(a9 + 8) = a10;
        *(a9 + 16) = a12;
        *(a9 + 24) = a20;
        *(a9 + 32) = a22;
        *(a9 + 40) = a24;
        *(a9 + 48) = a25 & 1;
        *(a9 + 55) = 0;
        *(a9 + 53) = 0;
        *(a9 + 49) = 0;
        v27 = 0x80;
      }

      goto LABEL_47;
    }

    *(a9 + 16) = 0u;
    *(a9 + 32) = 0u;
    *a9 = 0u;
    *(a9 + 48) = 0x1FFFFFFFELL;
    *(a9 + 56) = 0u;
    *(a9 + 72) = 0u;
    *(a9 + 88) = 0u;
LABEL_33:
    *(a9 + 104) = 0;
    return result;
  }

  if ((v25 & 1) == 0)
  {
    if (a5 != a12 || a3 != a10 || result != a7)
    {
      if ((a21 & 1) == 0 && (a23 & 1) == 0 && (a15 & 1) == 0 && (a17 & 1) == 0)
      {
        *a9 = result;
        *(a9 + 8) = a3;
        *(a9 + 16) = a5;
        *(a9 + 24) = a14;
        *(a9 + 32) = a16;
        *(a9 + 40) = a18;
        *(a9 + 48) = a19 & 1;
        *(a9 + 56) = a7;
        *(a9 + 64) = a10;
        *(a9 + 72) = a12;
        *(a9 + 80) = a20;
        *(a9 + 88) = a22;
        *(a9 + 96) = a24;
        *(a9 + 104) = a25 & 1 | 0xE0;
        return result;
      }

      *a9 = result;
      *(a9 + 8) = a3;
      *(a9 + 16) = a5;
      *(a9 + 24) = a7;
      *(a9 + 32) = a10;
      *(a9 + 40) = a12;
      *(a9 + 48) = 0;
      v27 = -64;
      goto LABEL_47;
    }

    if (a15 & 1) != 0 || (a17)
    {
      if (((a21 | a23) & 1) == 0)
      {
        v28 = a25 & 1;
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    if ((a21 | a23))
    {
      v26 = a19 & 1;
      goto LABEL_21;
    }

    if (a14 == a20 && a16 == a22)
    {
      if (a19)
      {
        if ((a25 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else if ((a25 & 1) != 0 || a18 != a24)
      {
        goto LABEL_45;
      }

      v26 = a19 & 1;
      goto LABEL_21;
    }

LABEL_45:
    v29 = a19 & 1;
    v30 = a25 & 1;
    goto LABEL_46;
  }

  if (a15 & 1) != 0 || (a17)
  {
    if (((a21 | a23) & 1) == 0)
    {
      v28 = a25 & 1;
LABEL_36:
      *a9 = result;
      *(a9 + 8) = a3;
      *(a9 + 16) = a5;
      *(a9 + 24) = a20;
      *(a9 + 32) = a22;
      *(a9 + 40) = a24;
      *(a9 + 48) = v28;
      *(a9 + 55) = 0;
      *(a9 + 53) = 0;
      *(a9 + 49) = 0;
      v27 = 64;
      goto LABEL_47;
    }

LABEL_32:
    *a9 = result;
    *(a9 + 8) = a3;
    *(a9 + 16) = a5;
    *(a9 + 48) = 0;
    goto LABEL_33;
  }

  if (((a21 | a23) & 1) == 0)
  {
    v29 = a19 & 1;
    v30 = a25 & 1;
LABEL_46:
    *a9 = result;
    *(a9 + 8) = a3;
    *(a9 + 16) = a5;
    *(a9 + 24) = a14;
    *(a9 + 32) = a16;
    *(a9 + 40) = a18;
    *(a9 + 48) = v29 & 1;
    *(a9 + 56) = a20;
    *(a9 + 64) = a22;
    *(a9 + 72) = a24;
    *(a9 + 80) = v30;
    v27 = -96;
    goto LABEL_47;
  }

  v26 = a19 & 1;
LABEL_21:
  *a9 = result;
  *(a9 + 8) = a3;
  *(a9 + 16) = a5;
  *(a9 + 24) = a14;
  *(a9 + 32) = a16;
  *(a9 + 40) = a18;
  *(a9 + 48) = v26;
  *(a9 + 55) = 0;
  *(a9 + 53) = 0;
  *(a9 + 49) = 0;
  v27 = 32;
LABEL_47:
  *(a9 + 104) = v27;
  return result;
}

uint64_t TrackedOrder.EstimatedDeliveryDate.convertStartToDate(calendar:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v38 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v30 - v10;
  v12 = sub_1B77FED28();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v41 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v3[1];
  v33 = *v3;
  v34 = v14;
  v15 = v3[3];
  v35 = v3[2];
  v17 = v3[4];
  v16 = v3[5];
  v30[1] = v15;
  v30[2] = v17;
  v32 = v16;
  v31 = *(v3 + 48);
  v42 = *(v3 + 104);
  v18 = sub_1B77FFC88();
  v19 = *(v18 - 8);
  v40 = *(v19 + 56);
  v40(v11, 1, 1, v18);
  v20 = sub_1B77FFCF8();
  v21 = *(v20 - 8);
  v39 = *(v21 + 56);
  v39(v8, 1, 1, v20);
  v22 = v41;
  sub_1B77FECD8();
  (*(v19 + 16))(v11, v43, v18);
  v40(v11, 0, 1, v18);
  sub_1B77FECF8();
  (*(v21 + 16))(v8, v44, v20);
  v39(v8, 0, 1, v20);
  sub_1B77FED18();
  v23 = v42 >> 5;
  if (v42 >> 5 > 2)
  {
    if (v42 >> 5 <= 5)
    {
      v24 = v45;
      if (v23 - 3 < 2)
      {
        (*(v36 + 8))(v22, v37);
        v25 = sub_1B77FF988();
        return (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
      }

      goto LABEL_9;
    }

    v24 = v45;
    if (v23 != 6)
    {
LABEL_9:
      sub_1B77FEC68();
      sub_1B77FEC88();
      sub_1B77FEC18();
      sub_1B77FEC48();
      sub_1B77FECA8();
      sub_1B77FECC8();
      goto LABEL_11;
    }

LABEL_7:
    sub_1B77FEC68();
    sub_1B77FEC88();
    sub_1B77FEC18();
    goto LABEL_11;
  }

  if (v23)
  {
    v24 = v45;
    if (v23 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1B77FEC68();
  sub_1B77FEC88();
  sub_1B77FEC18();
  v24 = v45;
LABEL_11:
  sub_1B77FEC28();
  v27 = sub_1B77FF988();
  v28 = *(v27 - 8);
  result = (*(v28 + 48))(v24, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v36 + 8))(v22, v37);
    v29 = v38;
    (*(v28 + 32))(v38, v24, v27);
    return (*(v28 + 56))(v29, 0, 1, v27);
  }

  return result;
}

uint64_t TrackedOrder.EstimatedDeliveryDate.convertEndToDate(calendar:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v56 = a2;
  v50 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v33 - v10;
  v12 = sub_1B77FED28();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v53 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v3[1];
  v45 = *v3;
  v46 = v14;
  v15 = v3[3];
  v47 = v3[2];
  v17 = v3[4];
  v16 = v3[5];
  v42 = v15;
  v43 = v17;
  v44 = v16;
  v41 = *(v3 + 48);
  v18 = v3[7];
  v19 = v3[9];
  v39 = v3[8];
  v40 = v19;
  v20 = *(v3 + 80);
  v37 = v18;
  v38 = v20;
  v33[1] = *(v3 + 87);
  v33[0] = *(v3 + 85);
  v34 = *(v3 + 81);
  v21 = v3[12];
  v35 = v3[11];
  v36 = v21;
  v54 = *(v3 + 104);
  v22 = sub_1B77FFC88();
  v23 = *(v22 - 8);
  v52 = *(v23 + 56);
  v52(v11, 1, 1, v22);
  v24 = sub_1B77FFCF8();
  v25 = *(v24 - 8);
  v51 = *(v25 + 56);
  v51(v8, 1, 1, v24);
  v26 = v53;
  sub_1B77FECD8();
  (*(v23 + 16))(v11, v55, v22);
  v52(v11, 0, 1, v22);
  sub_1B77FECF8();
  (*(v25 + 16))(v8, v56, v24);
  v51(v8, 0, 1, v24);
  v27 = v54;
  sub_1B77FED18();
  v28 = v27 >> 5;
  if (v27 >> 5 > 3)
  {
    if (v27 >> 5 <= 5)
    {
      v29 = v57;
      goto LABEL_11;
    }

    v29 = v57;
    if (v28 != 6)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_1B77FEC68();
    sub_1B77FEC88();
    sub_1B77FEC18();
    goto LABEL_12;
  }

  if (v27 >> 5 > 1)
  {
    v29 = v57;
    if (v28 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v29 = v57;
  if (!v28)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_1B77FEC68();
  sub_1B77FEC88();
  sub_1B77FEC18();
  sub_1B77FEC48();
  sub_1B77FECA8();
  sub_1B77FECC8();
LABEL_12:
  sub_1B77FEC28();
  v30 = sub_1B77FF988();
  v31 = *(v30 - 8);
  result = (*(v31 + 48))(v29, 1, v30);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v48 + 8))(v26, v49);
    return (*(v31 + 32))(v50, v29, v30);
  }

  return result;
}