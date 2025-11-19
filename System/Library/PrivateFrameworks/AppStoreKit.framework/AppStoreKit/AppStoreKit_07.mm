uint64_t sub_1E13C1300()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - v3;
  v5 = v0[9];
  if (v5)
  {
    v6 = *(v5 + qword_1EE2168A8);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = v0[3];
    v10 = v0[5];
    if (v7)
    {
      if (v10)
      {
        if (v8 == v0[4] && v7 == v10 || (sub_1E1AF74AC() & 1) != 0)
        {
          goto LABEL_22;
        }

        v13 = v0[5];
        if (!v13)
        {
          v12 = v7;
LABEL_40:

          goto LABEL_41;
        }

        v14 = v0[4];
        v12 = v7;
        if (v14 != v8)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }

      v12 = v7;
    }

    else
    {
      if (!v10)
      {
LABEL_22:

        return swift_unknownObjectRelease();
      }

      v12 = 0;
    }

    v13 = v0[5];
    if (!v13)
    {
      goto LABEL_32;
    }

    v14 = v0[4];
    if (!v7)
    {

LABEL_31:
      ObjectType = swift_getObjectType();
      v31 = v14;
      v32 = v13;
      (*(v9 + 56))(&v31, ObjectType, v9);
      v19 = v18;

      v20 = swift_getObjectType();
      (*(v19 + 80))(v1, v20, v19);
      swift_unknownObjectRelease();
LABEL_32:
      if (!v7)
      {
LABEL_42:
        swift_unknownObjectRelease();
        goto LABEL_43;
      }

      v12 = v7;
      v16 = v1[5];
      if (!v16)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }

    if (v14 != v8)
    {
LABEL_28:
      v15 = sub_1E1AF74AC();

      if (v15)
      {
LABEL_29:

        v16 = v1[5];
        if (!v16)
        {
          goto LABEL_40;
        }

LABEL_34:
        if (v8 == v1[4] && v7 == v16)
        {
        }

        else
        {
          v21 = sub_1E1AF74AC();

          if ((v21 & 1) == 0)
          {
LABEL_41:
            v22 = swift_getObjectType();
            v31 = v8;
            v32 = v12;
            v23 = (*(v9 + 56))(&v31, v22, v9);
            v25 = v24;

            v26 = sub_1E1AF649C();
            (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
            v27 = swift_allocObject();
            v27[2] = 0;
            v27[3] = 0;
            v27[4] = v23;
            v27[5] = v25;
            v27[6] = v1;
            swift_unknownObjectRetain();

            sub_1E154AF74(0, 0, v4, &unk_1E1B05E40, v27);

            v28 = swift_getObjectType();
            v29 = swift_allocObject();
            swift_weakInit();
            v30 = *(v25 + 72);

            v30(v1, sub_1E13C2E78, v29, v28, v25);
            swift_unknownObjectRelease();

            goto LABEL_42;
          }
        }

        swift_unknownObjectRelease();

LABEL_43:
        v1[4] = v8;
        v1[5] = v7;
      }

      goto LABEL_31;
    }

LABEL_20:
    if (v13 == v7)
    {

      goto LABEL_29;
    }

    goto LABEL_28;
  }
}

uint64_t sub_1E13C17AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v29[-v2];
  v4 = sub_1E1AEFCCC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29[-v9];
  v11 = *(v0 + 72);
  if (v11 && *(v0 + 48) == 1)
  {
    v12 = *(v11 + qword_1EE2168A8);
    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E1B02CC0;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1E13C2F48();
    *(v15 + 32) = v14;
    *(v15 + 40) = v13;

    v16 = sub_1E1AF5E3C();
    v18 = v17;
    sub_1E1AEFCAC();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_1E1308058(v3, &unk_1ECEB4B60);
      return sub_1E13C2474();
    }

    (*(v5 + 32))(v10, v3, v4);
    (*(v5 + 16))(v8, v10, v4);
    v20 = objc_allocWithZone(MEMORY[0x1E6963630]);
    v21 = sub_1E13C2F9C(v8);
    v22 = [v21 bundleRecord];
    v23 = [v22 bundleIdentifier];

    if (v23)
    {
      v24 = sub_1E1AF5DFC();
      v26 = v25;

      if (v24 == 0xD000000000000014 && 0x80000001E1B5BFD0 == v26)
      {

LABEL_13:
        v28 = sub_1E13C1B6C(v16, v18);

        (*(v5 + 8))(v10, v4);
        return v28;
      }

      v27 = sub_1E1AF74AC();

      if (v27)
      {
        goto LABEL_13;
      }
    }

    (*(v5 + 8))(v10, v4);
    return sub_1E13C2474();
  }

  return 0;
}

uint64_t sub_1E13C1B6C(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v64 = a1;
  v59 = sub_1E1AEFEAC();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v54 - v8;
  v9 = sub_1E1AEFCCC();
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF3E1C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v54 - v15;
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  v16._object = 0x80000001E1B5BFF0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = localizedString(_:comment:)(v16, v17);
  v19 = *(v2 + 64);
  countAndFlagsBits = v18._countAndFlagsBits;
  object = v18._object;
  if (v19)
  {
    v68 = *(v2 + 56);

    v20._countAndFlagsBits = 0x5050415F41544542;
    v20._object = 0xEF52454E4E41425FLL;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    localizedString(_:comment:)(v20, v21);
    v56 = v11;
    v55 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E1B02CD0;
    v23 = MEMORY[0x1E69E6158];
    *(v22 + 56) = MEMORY[0x1E69E6158];
    v24 = sub_1E13C2F48();
    *(v22 + 32) = v68;
    *(v22 + 40) = v19;
    *(v22 + 96) = v23;
    *(v22 + 104) = v24;
    *(v22 + 64) = v24;
    *(v22 + 72) = v18;

    v6 = v55;
    v11 = v56;
  }

  else
  {
    v25._object = 0x80000001E1B5C010;
    v25._countAndFlagsBits = 0xD000000000000019;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    localizedString(_:comment:)(v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1E1B02CC0;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1E13C2F48();
    *(v27 + 32) = v18;
  }

  v68 = sub_1E1AF5DCC();
  v67 = v28;

  v29 = v70;
  sub_1E1AF3DFC();
  type metadata accessor for ExternalUrlAction();
  v30 = swift_allocObject();
  v31 = v63;
  sub_1E1AEFCAC();
  v32 = v69;
  if ((*(v69 + 48))(v31, 1, v9) == 1)
  {
    (*(v12 + 8))(v29, v11);

    sub_1E1308058(v31, &unk_1ECEB4B60);
    swift_deallocPartialClassInstance();
    v30 = 0;
  }

  else
  {
    v33 = v61;
    (*(v32 + 32))(v61, v31, v9);
    (*(v32 + 16))(v30 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url, v33, v9);
    *(v30 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive) = 1;
    *(v30 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_allowFromLockscreen) = 0;
    v34 = v30 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_timeoutSeconds;
    *v34 = 0;
    v34[8] = 1;
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v35 = v62;
    (*(v12 + 16))(v62, v29, v11);
    v36 = sub_1E1AF46DC();
    (*(*(v36 - 8) + 56))(v6, 1, 1, v36);
    v37 = (v30 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v37 = 0u;
    v37[1] = 0u;
    sub_1E138853C(&v79, &v73);
    if (*(&v74 + 1))
    {
      v76 = v73;
      v77 = v74;
      v78 = v75;
    }

    else
    {
      v38 = v58;
      sub_1E1AEFE9C();
      v39 = sub_1E1AEFE7C();
      v41 = v40;
      (*(v60 + 8))(v38, v59);
      v71 = v39;
      v72 = v41;
      v35 = v62;
      v33 = v61;
      v32 = v69;
      sub_1E1AF6F6C();
      sub_1E1308058(&v73, &unk_1ECEB5670);
    }

    sub_1E1308058(&v79, &unk_1ECEB5670);
    (*(v32 + 8))(v33, v9);
    (*(v12 + 8))(v70, v11);
    v42 = v30 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    v43 = v77;
    *v42 = v76;
    *(v42 + 1) = v43;
    *(v42 + 4) = v78;
    sub_1E134B7C8(v6, v30 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
    v44 = object;
    v30[2] = countAndFlagsBits;
    v30[3] = v44;
    v30[4] = 0;
    v30[5] = 0;
    (*(v12 + 32))(v30 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v35, v11);
  }

  type metadata accessor for Banner();
  v79 = 0u;
  v80 = 0u;
  v81 = 0;
  v45 = swift_allocObject();
  sub_1E138853C(&v79, &v76);
  if (*(&v77 + 1))
  {
    v46 = v77;
    *(v45 + 104) = v76;
    *(v45 + 120) = v46;
    *(v45 + 136) = v78;
  }

  else
  {
    v47 = v58;
    sub_1E1AEFE9C();
    v48 = sub_1E1AEFE7C();
    v50 = v49;
    (*(v60 + 8))(v47, v59);
    *&v73 = v48;
    *(&v73 + 1) = v50;
    sub_1E1AF6F6C();
    sub_1E1308058(&v76, &unk_1ECEB5670);
  }

  sub_1E1308058(&v79, &unk_1ECEB5670);
  v51 = v67;
  *(v45 + 16) = v68;
  *(v45 + 24) = v51;
  v52 = MEMORY[0x1E69E7CC0];
  *(v45 + 32) = v30;
  *(v45 + 40) = v52;
  *(v45 + 56) = 0;
  *(v45 + 64) = 0;
  *(v45 + 48) = 0;
  *(v45 + 72) = 0;
  *(v45 + 80) = xmmword_1E1B04490;
  *(v45 + 96) = 2;
  return v45;
}

uint64_t sub_1E13C2474()
{
  v1 = sub_1E1AEFEAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 64);
  if (v5)
  {
    v6 = *(v0 + 56);

    v7._object = 0x80000001E1B5C060;
    v7._countAndFlagsBits = 0xD000000000000017;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    localizedString(_:comment:)(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E1B02CC0;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1E13C2F48();
    *(v9 + 32) = v6;
    *(v9 + 40) = v5;
    countAndFlagsBits = sub_1E1AF5DCC();
    object = v11;
  }

  else
  {
    v13._countAndFlagsBits = 0xD000000000000021;
    v13._object = 0x80000001E1B5C030;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v15 = localizedString(_:comment:)(v13, v14);
    countAndFlagsBits = v15._countAndFlagsBits;
    object = v15._object;
  }

  type metadata accessor for Banner();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v16 = swift_allocObject();
  sub_1E138853C(v27, &v24);
  if (*(&v25 + 1))
  {
    v17 = v25;
    *(v16 + 104) = v24;
    *(v16 + 120) = v17;
    *(v16 + 136) = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v20 = v19;
    (*(v2 + 8))(v4, v1);
    v23[1] = v18;
    v23[2] = v20;
    sub_1E1AF6F6C();
    sub_1E1308058(&v24, &unk_1ECEB5670);
  }

  sub_1E1308058(v27, &unk_1ECEB5670);
  *(v16 + 16) = countAndFlagsBits;
  *(v16 + 24) = object;
  v21 = MEMORY[0x1E69E7CC0];
  *(v16 + 32) = 0;
  *(v16 + 40) = v21;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 48) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = xmmword_1E1B04490;
  *(v16 + 96) = 2;
  return v16;
}

uint64_t sub_1E13C2714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_1E1AF649C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a1;
    v10[5] = a2;
    v10[6] = v8;
    swift_unknownObjectRetain();
    sub_1E154AF74(0, 0, v6, &unk_1E1B05E48, v10);
  }

  return result;
}

uint64_t sub_1E13C285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E13C2880, 0, 0);
}

uint64_t sub_1E13C2880()
{
  v1 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  *(v0 + 112) = (*(v1 + 24))(ObjectType, v1) & 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 64);
    v5 = *(*(v0 + 72) + 24);
    v6 = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    v7 = *(v0 + 24);
    *(v0 + 32) = *(v0 + 16);
    *(v0 + 40) = v7;
    v15 = (*(v5 + 104) + **(v5 + 104));
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = sub_1E13C2AD0;

    return v15(v0 + 32, v6, v5);
  }

  else
  {
    v10 = *(v0 + 72);
    v11 = *(v10 + 72);
    if (v11)
    {
      v12 = *(v0 + 112);
      if (v12 != *(v10 + 48) || *(v10 + 64) != 0)
      {
        *(v10 + 48) = v12;
        *(v10 + 56) = 0;
        *(v10 + 64) = 0;

        *(v0 + 48) = v11;
        sub_1E1AF35BC();
      }
    }

    else
    {
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1E13C2AD0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1E13C2C14, 0, 0);
}

uint64_t sub_1E13C2C14()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v2 + 72);
  if (!v3)
  {
LABEL_12:

    goto LABEL_13;
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 112);
  if (v5 != *(v2 + 48))
  {
    v6 = *(v0 + 72);
LABEL_4:
    *(v2 + 48) = v5;
    *(v6 + 56) = v4;
    *(v6 + 64) = v1;

    *(v0 + 48) = v3;
    sub_1E1AF35BC();

    goto LABEL_13;
  }

  v7 = *(v2 + 64);
  v6 = *(v0 + 72);
  if (v1)
  {
    if (!v7)
    {
      goto LABEL_4;
    }

    if (v4 != *(v2 + 56) || v1 != v7)
    {
      v9 = *(v0 + 104);
      if ((sub_1E1AF74AC() & 1) == 0)
      {
        LOBYTE(v5) = *(v0 + 112);
        v6 = *(v0 + 72);
        v1 = v9;
        goto LABEL_4;
      }
    }

    goto LABEL_12;
  }

  if (v7)
  {
    goto LABEL_4;
  }

LABEL_13:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E13C2D34()
{
  sub_1E1337DEC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1E13C2DB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5D8;

  return sub_1E13C285C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E13C2E80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5DC;

  return sub_1E13C285C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1E13C2F48()
{
  result = qword_1EE1E3538;
  if (!qword_1EE1E3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3538);
  }

  return result;
}

id sub_1E13C2F9C(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1E1AEFBEC();
  v13[0] = 0;
  v5 = [v2 initWithURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1E1AEFB2C();

    swift_willThrow();
    v11 = sub_1E1AEFCCC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1E13C30E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3098);
  swift_allocObject();
  *(v2 + 80) = sub_1E1AF35CC();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_1E13C1300();
  return v2;
}

uint64_t sub_1E13C3180@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_1E1AF6EFC();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 9;
  }

  else
  {
    result = sub_1E1967584(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

void (*TodayCardMediaMultiAppFallback.init(deserializing:using:)(char *a1, uint64_t a2))(uint64_t, uint64_t)
{
  v3 = v2;
  v80 = a2;
  v75 = v3;
  v68 = *v3;
  v81 = sub_1E1AF39DC();
  v79 = *(v81 - 8);
  v5 = MEMORY[0x1EEE9AC00](v81);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v73 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v66 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v64 = &v62 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v62 - v24;
  v26 = sub_1E1AF5A6C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v63 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v62 - v30;
  v82 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v67 = v16;
  v31 = *(v16 + 8);
  v74 = v15;
  v71 = v31;
  v31(v25, v15);
  v77 = v27;
  v78 = v26;
  if ((*(v27 + 48))(v14, 1, v26) == 1)
  {
    sub_1E1308058(v14, &qword_1ECEB1F90);
    v32 = sub_1E1AF5A7C();
    sub_1E13C4ED4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v33 = 0x7370756B636F6CLL;
    v34 = v68;
    v33[1] = 0xE700000000000000;
    v33[2] = v34;
    (*(*(v32 - 1) + 104))(v33, *MEMORY[0x1E69AB690], v32);
    swift_willThrow();
    (*(v79 + 8))(v80, v81);
    v71(v82, v74);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v77 + 32))(v76, v14, v78);
    sub_1E1AF46DC();
    sub_1E1AF381C();
    v35 = *(v79 + 16);
    v36 = v65;
    v37 = v80;
    v38 = v81;
    v35(v65);
    sub_1E1AF464C();
    v39 = v73;
    v68 = v35;
    (v35)(v73, v37, v38);
    (*(v77 + 16))(v63, v76, v78);
    (v35)(v36, v39, v38);
    type metadata accessor for Lockup();
    sub_1E13C4ED4(&qword_1EE1E4F60, type metadata accessor for Lockup);
    v40 = sub_1E1AF631C();
    v41 = v75;
    *&v75[OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_lockups] = v40;
    v42 = v82;
    sub_1E1AF381C();
    v43 = sub_1E1AF37CC();
    v45 = v44;
    v46 = v23;
    v47 = v74;
    v48 = v71;
    v71(v46, v74);
    v49 = &v41[OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_additionalText];
    *v49 = v43;
    v49[1] = v45;
    v50 = v64;
    sub_1E1AF381C();
    v51 = sub_1E1AF36EC();
    LOBYTE(v45) = v52;
    v48(v50, v47);
    v53 = 4;
    if ((v45 & 1) == 0)
    {
      v53 = v51;
    }

    *&v41[OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_lockupImpressionLimit] = v53;
    v54 = v66;
    (*(v67 + 16))(v66, v42, v47);
    v55 = v69;
    (v68)(v69, v80, v81);
    v56 = v70;
    v57 = TodayCardMedia.init(deserializing:using:)(v54, v55);
    if (v56)
    {
      v32 = *(v79 + 8);
      v58 = v81;
      v32(v80, v81);
      v48(v82, v47);
      v32(v73, v58);
    }

    else
    {
      v32 = v57;
      v60 = *(v79 + 8);
      v61 = v81;
      v60(v80, v81);
      v48(v82, v47);
      v60(v73, v61);
    }

    sub_1E1308058(v72, &unk_1ECEB1770);
    (*(v77 + 8))(v76, v78);
  }

  return v32;
}

uint64_t TodayCardMediaMultiAppFallback.__allocating_init(lockups:additionalText:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_lockups) = a1;
  v15 = (v14 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_additionalText);
  *v15 = a2;
  v15[1] = a3;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_lockupImpressionLimit) = a4;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1E134FD1C(a5, v14 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);
  sub_1E134FD1C(v25, &v22, &unk_1ECEB5670);
  if (*(&v23 + 1))
  {
    v16 = v23;
    *(v14 + 32) = v22;
    *(v14 + 48) = v16;
    *(v14 + 64) = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v21[1] = v17;
    v21[2] = v19;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670);
  }

  sub_1E1308058(a5, &unk_1ECEB1770);
  sub_1E1308058(v25, &unk_1ECEB5670);
  *(v14 + 16) = 3;
  *(v14 + 24) = 1;
  return v14;
}

uint64_t TodayCardMediaMultiAppFallback.init(lockups:additionalText:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1E1AEFEAC();
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - v16;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_lockups) = a1;
  v18 = (v6 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_additionalText);
  *v18 = a2;
  v18[1] = a3;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_lockupImpressionLimit) = a4;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_1E134FD1C(a5, v17, &unk_1ECEB1770);
  sub_1E134FD1C(v35, &v29, &unk_1ECEB5670);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v21 = v20;
    (*(v25 + 8))(v14, v26);
    v27 = v19;
    v28 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670);
  }

  sub_1E1308058(a5, &unk_1ECEB1770);
  sub_1E1308058(v35, &unk_1ECEB5670);
  v22 = v33;
  *(v6 + 32) = v32;
  *(v6 + 48) = v22;
  *(v6 + 64) = v34;
  sub_1E134B7C8(v17, v6 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v6 + 16) = 3;
  *(v6 + 24) = 1;
  return v6;
}

uint64_t TodayCardMediaMultiAppFallback.additionalText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_additionalText);

  return v1;
}

char *TodayCardMediaMultiAppFallback.offerAdamIds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_lockups);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E68FFD80](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1E172DC1C(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1E172DC1C((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t TodayCardMediaMultiAppFallback.dominantStyle.getter@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaMultiAppFallback_lockups);
  v21 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_22:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E68FFD80](v6, v2);
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        return result;
      }

      v8 = *(result + 48);

      v9 = swift_unknownObjectRelease();
      if (v8)
      {
        goto LABEL_15;
      }

LABEL_9:
      v6 = v4;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v3 = sub_1E1AF71CC();
      if (!v3)
      {
        goto LABEL_22;
      }

      goto LABEL_3;
    }

    if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v4 = v6 + 1;
    if (!*(*(v2 + 32 + 8 * v6) + 48))
    {
      goto LABEL_9;
    }

LABEL_15:
    MEMORY[0x1E68FEF20](v9);
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
    v5 = v21;
  }

  while (v4 != v3);
LABEL_23:
  if (v5 >> 62)
  {
    goto LABEL_40;
  }

  v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_25:
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E68FFD80](v11, v5);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_48;
        }

        v14 = *(result + 64);
        swift_unknownObjectRelease();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v10 = sub_1E1AF71CC();
          if (!v10)
          {
            break;
          }

          goto LABEL_25;
        }

        if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v13 = v11 + 1;
        v14 = *(*(v5 + 32 + 8 * v11) + 64);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1E172DD28(0, *(v12 + 2) + 1, 1, v12);
      }

      v11 = v13;
      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_1E172DD28((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v12[v16 + 32] = v14;
      if (v13 == v10)
      {
        goto LABEL_42;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_42:

  v17 = sub_1E13C4A64(v12);

  if (*(v17 + 16) == 1)
  {
    sub_1E13C3180(v17, &v20);

    v18 = v20;
    if (v20 == 9)
    {
      v18 = 1;
    }
  }

  else
  {

    v18 = 1;
  }

  *a1 = v18;
  return result;
}

uint64_t sub_1E13C445C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E13C50E8();
  result = MEMORY[0x1E68FF2E0](v2, &type metadata for PersonalizationStyle, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1E1893F1C(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E13C4554(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E13C4F1C();
  result = MEMORY[0x1E68FF2E0](v2, &type metadata for AdamId, v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    sub_1E18943C0(&v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E13C46A4()
{
}

uint64_t TodayCardMediaMultiAppFallback.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaMultiAppFallback.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E13C4838(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E13C4FE4();
  result = MEMORY[0x1E68FF2E0](v2, &type metadata for PageFacets.Facet.Option, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v11[0] = *v5;
      v11[1] = v6;
      v7 = v5[3];
      v11[2] = v5[2];
      v11[3] = v7;
      sub_1E13C5038(v11, v9);
      sub_1E1893960(v8, v11);
      v9[0] = v8[0];
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      sub_1E13C5094(v9);
      v5 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1E13C494C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1E68FF2E0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_1E13C49CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E13C4F1C();
  result = MEMORY[0x1E68FF2E0](v2, &type metadata for AdamId, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_1E18943C0(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1E13C4A64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E13C51E4();
  result = MEMORY[0x1E68FF2E0](v2, &type metadata for Artwork.Style, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1E1894510(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for TodayCardMediaMultiAppFallback()
{
  result = qword_1EE1E1EF8;
  if (!qword_1EE1E1EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E13C4BB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E68FF2E0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1E189496C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1E13C4C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1E13C513C();
  result = MEMORY[0x1E68FF2E0](v1, &type metadata for SupplementaryAppPlatform, v2);
  v4 = result;
  if (v1)
  {
    do
    {
      sub_1E18955D4();
      --v1;
    }

    while (v1);
    return v4;
  }

  return result;
}

uint64_t sub_1E13C4CAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E68FF2E0](v2, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1E134E724(v4, v5);
      sub_1E1893DD0(v6, v5);
      sub_1E134B88C(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1E13C4D38(uint64_t a1)
{
  v2 = sub_1E1AF31DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E13C4ED4(&qword_1EE1E3C90, MEMORY[0x1E698B288]);
  result = MEMORY[0x1E68FF2E0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1E1895860(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E13C4ED4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E13C4F1C()
{
  result = qword_1EE1E5080;
  if (!qword_1EE1E5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E5080);
  }

  return result;
}

uint64_t sub_1E13C4F70(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E68FF2E0](v2, MEMORY[0x1E69E7360], MEMORY[0x1E69E7370]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1E1895B40(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1E13C4FE4()
{
  result = qword_1EE1E0BA0;
  if (!qword_1EE1E0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0BA0);
  }

  return result;
}

unint64_t sub_1E13C50E8()
{
  result = qword_1EE1ED6B0;
  if (!qword_1EE1ED6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ED6B0);
  }

  return result;
}

unint64_t sub_1E13C513C()
{
  result = qword_1EE1FAC78[0];
  if (!qword_1EE1FAC78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1FAC78);
  }

  return result;
}

unint64_t sub_1E13C5190()
{
  result = qword_1EE1EF0B0;
  if (!qword_1EE1EF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EF0B0);
  }

  return result;
}

unint64_t sub_1E13C51E4()
{
  result = qword_1EE1D2F58;
  if (!qword_1EE1D2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2F58);
  }

  return result;
}

uint64_t sub_1E13C52C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a2;
  v50 = a4;
  v46 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = sub_1E1AF3D0C();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF436C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 72) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  v17 = (v4 + qword_1EE216770);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + qword_1EE216768) = 0;
  v18 = (v4 + qword_1EE216748);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v4 + *(*v4 + 176));
  v19[1] = 0;
  v19[2] = 0;
  *v19 = 0x8000000000000000;
  v20 = *(*v4 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33B8);
  swift_allocObject();
  *(v4 + v20) = sub_1E1AF5BEC();
  v21 = v5 + *(*v5 + 192);
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v22 = v5 + *(*v5 + 200);
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v23 = (v5 + *(*v5 + 208));
  *v23 = 0;
  v23[1] = 0;
  v24 = (v5 + *(*v5 + 216));
  *v24 = 0.0;
  v24[1] = 0.0;
  *(v4 + 16) = a1;
  sub_1E1AF421C();

  sub_1E1AF55EC();
  (*(v14 + 32))(v4 + qword_1EE216760, v16, v13);
  v25 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0);
  sub_1E1AF413C();
  v26 = v52;
  v27 = v53;
  swift_beginAccess();
  *v24 = v26;
  *(v24 + 1) = v27;
  swift_unknownObjectRelease();
  type metadata accessor for ASKBagContract();
  sub_1E1AF55EC();
  if (v25)
  {
    v28 = v25;
    v29 = v46;
  }

  else
  {
    v30 = v44;
    v31 = v45;
    v46 = sub_1E1AF4EAC();
    if (qword_1EE1E2FE8 != -1)
    {
      swift_once();
    }

    (*(v30 + 104))(v12, *MEMORY[0x1E69AAFB8], v31);
    sub_1E1AF52AC();
    (*(v30 + 8))(v12, v31);
    v32 = v48;
    sub_1E1AF532C();
    (*(v47 + 8))(v9, v32);
    v28 = sub_1E1AF4E9C();
    v29 = MEMORY[0x1E69AB380];
  }

  v33 = (v5 + qword_1EE216758);
  *v33 = v28;
  v33[1] = v29;
  v34 = v50;
  if (v50)
  {
    swift_unknownObjectRetain();
    v35 = v34;
  }

  else
  {
    v36 = qword_1EE1E2E90;
    swift_unknownObjectRetain();
    if (v36 != -1)
    {
      swift_once();
    }

    sub_1E1AF535C();
    v37 = v48;
    sub_1E1AF532C();
    (*(v47 + 8))(v9, v37);
    v38 = v52;
    v39 = v33[1];
    type metadata accessor for ImpressionsCalculator();
    swift_allocObject();
    v40 = swift_unknownObjectRetain();
    v35 = sub_1E1812F7C(v38, v40, v39);
    swift_unknownObjectRelease();
  }

  *(v5 + qword_1EE216750) = v35;
  type metadata accessor for MetricsPageEnterGate();
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v41 + 32) = 0;
  *(v41 + 34) = 0;
  *(v41 + 24) = &protocol witness table for TimedMetricsPagePresenter<A>;
  swift_unknownObjectWeakAssign();
  v42 = qword_1EE216768;
  swift_beginAccess();
  *(v5 + v42) = v41;

  sub_1E1AF50BC();
  sub_1E1AF413C();
  sub_1E174E3CC(v51);

  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_1E13C5AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t))
{
  v56 = a7;
  v57 = a4;
  v9 = v7;
  v51 = a3;
  v55 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v49 - v12;
  v13 = sub_1E1AF3D0C();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF436C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 72) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 24) = 0u;
  v20 = (v7 + qword_1EE216770);
  *v20 = 0;
  v20[1] = 0;
  *(v7 + qword_1EE216768) = 0;
  v21 = (v7 + qword_1EE216748);
  *v21 = 0;
  v21[1] = 0;
  v22 = v7 + *(*v7 + 176);
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *v22 = 0;
  *(v22 + 24) = 2;
  v23 = *(*v7 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  swift_allocObject();
  *(v7 + v23) = sub_1E1AF5BEC();
  v24 = v9 + *(*v9 + 192);
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = v9 + *(*v9 + 200);
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = (v9 + *(*v9 + 208));
  *v26 = 0;
  v26[1] = 0;
  v27 = (v9 + *(*v9 + 216));
  *v27 = 0.0;
  v27[1] = 0.0;
  *(v7 + 16) = a1;
  sub_1E1AF421C();

  sub_1E1AF55EC();
  (*(v17 + 32))(v7 + qword_1EE216760, v19, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0);
  sub_1E1AF413C();
  v28 = v59;
  v29 = v60;
  swift_beginAccess();
  *v27 = v28;
  *(v27 + 1) = v29;
  v30 = v55;
  swift_unknownObjectRelease();
  type metadata accessor for ASKBagContract();
  sub_1E1AF55EC();
  if (v30)
  {
    v31 = v30;
    v32 = v51;
  }

  else
  {
    v33 = v49;
    v34 = v50;
    v51 = sub_1E1AF4EAC();
    if (qword_1EE1E2FE8 != -1)
    {
      swift_once();
    }

    (*(v33 + 104))(v15, *MEMORY[0x1E69AAFB8], v34);
    v35 = v52;
    sub_1E1AF52AC();
    (*(v33 + 8))(v15, v34);
    v36 = v54;
    sub_1E1AF532C();
    (*(v53 + 8))(v35, v36);
    v31 = sub_1E1AF4E9C();
    v32 = MEMORY[0x1E69AB380];
  }

  v37 = (v9 + qword_1EE216758);
  *v37 = v31;
  v37[1] = v32;
  v38 = v57;
  if (v57)
  {
    swift_unknownObjectRetain();
    v39 = v38;
  }

  else
  {
    v40 = qword_1EE1E2E90;
    swift_unknownObjectRetain();
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = v52;
    sub_1E1AF535C();
    v42 = v54;
    sub_1E1AF532C();
    (*(v53 + 8))(v41, v42);
    v43 = v59;
    v44 = v37[1];
    type metadata accessor for ImpressionsCalculator();
    swift_allocObject();
    v45 = swift_unknownObjectRetain();
    v39 = sub_1E1812F7C(v43, v45, v44);
    swift_unknownObjectRelease();
  }

  *(v9 + qword_1EE216750) = v39;
  type metadata accessor for MetricsPageEnterGate();
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v46 + 32) = 0;
  *(v46 + 34) = 0;
  *(v46 + 24) = &protocol witness table for TimedMetricsPagePresenter<A>;
  swift_unknownObjectWeakAssign();
  v47 = qword_1EE216768;
  swift_beginAccess();
  *(v9 + v47) = v46;

  sub_1E1AF50BC();
  sub_1E1AF413C();
  v56(v58);

  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_1E13C61FC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13E24C8();
  sub_1E1AF1F7C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v13 = v12[9];
  v14 = MEMORY[0x1E69E7CC0];
  sub_1E16847A4(MEMORY[0x1E69E7CC0], &v23);
  *(a4 + v13) = v23;
  v15 = v12[10];
  *(a4 + v15) = a2(v14);
  v16 = v12[11];
  *(a4 + v16) = a3(v14);
  *(a4 + v12[12]) = MEMORY[0x1E69E7CD0];
  *&v23 = 0;
  *(&v23 + 1) = 0xE000000000000000;
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD000000000000038, 0x80000001E1B5C500);
  sub_1E1AEFE9C();
  v17 = sub_1E1AEFE7C();
  v19 = v18;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x1E68FECA0](v17, v19);

  v21 = *(&v23 + 1);
  v22 = (a4 + v12[13]);
  *v22 = v23;
  v22[1] = v21;
  return result;
}

void sub_1E13C63E4(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31B8);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31C0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31C8);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB31C0);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB31C0);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_1E1AF5BBC();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_1E134FD1C(v2 + v45, v106, &qword_1ECEB31B0);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB31B0);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_1E134FD1C(v53, v99, &qword_1ECEB31C0);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB31C0);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_1E134FD1C(v62, v103, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v101;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31D0);
    sub_1E1302CD4(&qword_1EE1D2740, &qword_1ECEB31D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31D8);
    v59 = v119;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB31C0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31D8);
    v71 = v105;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31E0);
    sub_1E1302CD4(&qword_1EE1D2710, &qword_1ECEB31E0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31D8);
    v73 = v107;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB31B0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31D0);
    sub_1E1302CD4(&qword_1EE1D2740, &qword_1ECEB31D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31D8);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB31C0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31D8);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31D8);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_1EE2169B0;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_1EE2166C8;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1E13E2A6C;
    *(v93 + 24) = v92;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_193;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1E13C7890(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3388);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3378);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3390);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB3378);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB3378);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_1E1AF5BBC();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_1E134FD1C(v2 + v45, v106, &qword_1ECEB3380);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB3380);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_1E134FD1C(v53, v99, &qword_1ECEB3378);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB3378);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_1E134FD1C(v62, v103, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v101;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3398);
    sub_1E1302CD4(&qword_1EE1D2730, &qword_1ECEB3398);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33A0);
    v59 = v119;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB3378);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33A0);
    v71 = v105;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33A8);
    sub_1E1302CD4(&qword_1EE1D2700, &qword_1ECEB33A8);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33A0);
    v73 = v107;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB3380);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3398);
    sub_1E1302CD4(&qword_1EE1D2730, &qword_1ECEB3398);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33A0);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB3378);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33A0);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33A0);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_1EE2169B0;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_1EE2166C8;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1E13E20AC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_457;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1E13C8D3C(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33E0);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33D0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33E8);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB33D0);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB33D0);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_1E1AF5BBC();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_1E134FD1C(v2 + v45, v106, &qword_1ECEB33D8);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB33D8);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_1E134FD1C(v53, v99, &qword_1ECEB33D0);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB33D0);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_1E134FD1C(v62, v103, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v101;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F0);
    sub_1E1302CD4(&qword_1EE1D2728, &qword_1ECEB33F0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F8);
    v59 = v119;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB33D0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F8);
    v71 = v105;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3400);
    sub_1E1302CD4(&qword_1EE1D26F8, &qword_1ECEB3400);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F8);
    v73 = v107;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB33D8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F0);
    sub_1E1302CD4(&qword_1EE1D2728, &qword_1ECEB33F0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F8);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB33D0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F8);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F8);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_1EE2169B0;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_1EE2166C8;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1E13E2A6C;
    *(v93 + 24) = v92;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_497;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1E13CA1E8(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3298);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32A0);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3290);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32A8);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB3290);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB3290);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_1E1AF5BBC();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_1E134FD1C(v2 + v45, v106, &qword_1ECEB3298);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB3298);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_1E134FD1C(v53, v99, &qword_1ECEB3290);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB3290);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_1E134FD1C(v62, v103, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v101;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32B0);
    sub_1E1302CD4(&qword_1EE1E3568, &qword_1ECEB32B0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32B8);
    v59 = v119;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB3290);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32B8);
    v71 = v105;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32C0);
    sub_1E1302CD4(&qword_1EE1E3560, &qword_1ECEB32C0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32B8);
    v73 = v107;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB3298);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32B0);
    sub_1E1302CD4(&qword_1EE1E3568, &qword_1ECEB32B0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32B8);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB3290);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32B8);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32B8);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_1EE2169B0;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_1EE2166C8;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1E13E20AC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_351;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1E13CB694(uint64_t a1)
{
  v2 = v1;
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v110 = &v97 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v111 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v97 - v8;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v103 = &v97 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3330);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v108 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v107 = &v97 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3338);
  v118 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v105 = &v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v106 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v97 - v18;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v21 = &v97 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3328);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v109 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v97 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v100 = &v97 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v97 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3340);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v98 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v97 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v101 = v37;
  v38 = v119;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB3328);
  v99 = *(v32 + 48);
  v39 = v99(v30, 1, v31);
  v114 = v31;
  v120 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB3328);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v118;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v112;
  v43 = v113;
  if ((*(v112 + 48))(v19, 1, v113) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v119;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v119;
    if (v119)
    {
      sub_1E1AF5BBC();
      v40 = v118;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v107;
  sub_1E134FD1C(v2 + v45, v107, &qword_1ECEB3330);
  v47 = v115;
  v48 = (*(v40 + 48))(v46, 1, v115);
  v49 = v105;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB3330);
  }

  else
  {
    (*(v40 + 32))(v105, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v118;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v114;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v105 = v52;
  v53 = &v52[v2];
  v54 = v100;
  sub_1E134FD1C(v53, v100, &qword_1ECEB3328);
  v55 = v99(v54, 1, v51);
  v56 = v103;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB3328);
    v57 = v117;
    v58 = v116;
    v59 = v120;
  }

  else
  {
    v59 = v120;
    v60 = v98;
    (*(v120 + 32))(v98, v54, v51);
    v58 = v116;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v117;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v107 = v61;
  v62 = v2 + v61;
  v63 = v104;
  sub_1E134FD1C(v62, v104, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v102;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3348);
    sub_1E1302CD4(&qword_1ECEB3350, &qword_1ECEB3348);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3358);
    v59 = v120;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v120 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v101;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB3328);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3358);
    v71 = v106;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v106;
  }

  v72 = 1;
  (*(v112 + 56))(v71, v69, 1, v113);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3360);
    sub_1E1302CD4(&qword_1ECEB3368, &qword_1ECEB3360);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3358);
    v73 = v108;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v109;
  }

  else
  {
    v74 = v109;
    v73 = v108;
  }

  v75 = 1;
  (*(v118 + 56))(v73, v72, 1, v115);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB3330);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3348);
    sub_1E1302CD4(&qword_1ECEB3350, &qword_1ECEB3348);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3358);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v110;
  v77 = 1;
  v68(v74, v75, 1, v114);
  v78 = v105;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB3328);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3358);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v119;
  v80 = v111;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3358);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v116 + 56))(v80, v82, 1, v117);
  v84 = v107;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  v85 = swift_endAccess();
  v86 = *(v2 + v64);
  if (v86)
  {
    v87 = qword_1EE2169B0;
    swift_beginAccess();
    v88 = *(v2 + v87);
    v89 = qword_1EE2166C8;
    swift_beginAccess();
    v90 = *(v86 + v89);
    *(v86 + v89) = v88;

    v91 = v88;
  }

  if (v79 && ((*(*v2 + 1128))(v85) & 1) != 0)
  {
    v92 = *(v2 + *(*v2 + 688));
    v93 = swift_allocObject();
    *(v93 + 16) = v2;
    *(v93 + 24) = 0;
    *(v93 + 32) = 65920;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_1E13E20AC;
    *(v94 + 24) = v93;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v94;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_418;
    v95 = _Block_copy(aBlock);

    dispatch_sync(v92, v95);
    _Block_release(v95);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1E13CCB74(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32E8);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32D8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32F0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB32D8);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB32D8);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_1E1AF5BBC();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_1E134FD1C(v2 + v45, v106, &qword_1ECEB32E0);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB32E0);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_1E134FD1C(v53, v99, &qword_1ECEB32D8);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB32D8);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_1E134FD1C(v62, v103, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v101;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32F8);
    sub_1E1302CD4(&qword_1ECEB3300, &qword_1ECEB32F8);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3308);
    v59 = v119;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB32D8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3308);
    v71 = v105;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3310);
    sub_1E1302CD4(&qword_1ECEB3318, &qword_1ECEB3310);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3308);
    v73 = v107;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB32E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32F8);
    sub_1E1302CD4(&qword_1ECEB3300, &qword_1ECEB32F8);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3308);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB32D8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3308);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3308);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_1EE2169B0;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_1EE2166C8;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1E13E20AC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_379;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1E13CE020(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3168);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3170);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3178);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3180);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB3178);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB3178);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_1E1AF5BBC();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_1E134FD1C(v2 + v45, v106, &qword_1ECEB3168);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB3168);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_1E134FD1C(v53, v99, &qword_1ECEB3178);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB3178);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_1E134FD1C(v62, v103, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v101;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3188);
    sub_1E1302CD4(&qword_1ECEB3190, &qword_1ECEB3188);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3198);
    v59 = v119;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB3178);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3198);
    v71 = v105;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31A0);
    sub_1E1302CD4(&qword_1ECEB31A8, &qword_1ECEB31A0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3198);
    v73 = v107;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB3168);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3188);
    sub_1E1302CD4(&qword_1ECEB3190, &qword_1ECEB3188);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3198);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB3178);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3198);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3198);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_1EE2169B0;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_1EE2166C8;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1E13E20AC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_140;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1E13CF4CC(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3210);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3218);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3208);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3220);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB3208);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB3208);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_1E1AF5BBC();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_1E134FD1C(v2 + v45, v106, &qword_1ECEB3210);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB3210);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_1E134FD1C(v53, v99, &qword_1ECEB3208);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB3208);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_1E134FD1C(v62, v103, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v101;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3228);
    sub_1E1302CD4(&qword_1EE1D2750, &qword_1ECEB3228);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3230);
    v59 = v119;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB3208);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3230);
    v71 = v105;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3238);
    sub_1E1302CD4(&qword_1EE1D2720, &qword_1ECEB3238);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3230);
    v73 = v107;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB3210);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3228);
    sub_1E1302CD4(&qword_1EE1D2750, &qword_1ECEB3228);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3230);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB3208);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3230);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3230);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_1EE2169B0;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_1EE2166C8;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1E13E20AC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_273;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1E13D0978(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3418);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30C8);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3410);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v101 = &v96 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v99 = &v96 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30C0);
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB3410);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB3410);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_1E1AF5BBC();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_1E134FD1C(v2 + v45, v106, &qword_1ECEB3418);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB3418);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_1E134FD1C(v53, v99, &qword_1ECEB3410);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB3410);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_1E134FD1C(v62, v103, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v101;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31E8);
    sub_1E1302CD4(&qword_1EE1D2748, &qword_1ECEB31E8);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3420);
    v59 = v119;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB3410);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3420);
    v71 = v105;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F0);
    sub_1E1302CD4(&qword_1EE1D2718, &qword_1ECEB31F0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3420);
    v73 = v107;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB3418);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31E8);
    sub_1E1302CD4(&qword_1EE1D2748, &qword_1ECEB31E8);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3420);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB3410);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3420);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3420);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_1EE2169B0;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_1EE2166C8;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1E13E20AC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_522;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1E13D1E24(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30E0);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30E8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30F0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB30E8);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB30E8);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_1E1AF5BBC();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_1E134FD1C(v2 + v45, v106, &qword_1ECEB30D8);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB30D8);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_1E134FD1C(v53, v99, &qword_1ECEB30E8);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB30E8);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_1E134FD1C(v62, v103, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v101;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30F8);
    sub_1E1302CD4(&qword_1ECEB3100, &qword_1ECEB30F8);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3108);
    v59 = v119;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB30E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3108);
    v71 = v105;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3110);
    sub_1E1302CD4(&qword_1ECEB3118, &qword_1ECEB3110);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3108);
    v73 = v107;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB30D8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30F8);
    sub_1E1302CD4(&qword_1ECEB3100, &qword_1ECEB30F8);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3108);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB30E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3108);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3108);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_1EE2169B0;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_1EE2166C8;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1E13E20AC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_1E137AFA8;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_63;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1E13D32D0(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3120);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3128);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3130);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3138);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB3130);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB3130);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_1E1AF5BBC();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_1E134FD1C(v2 + v45, v106, &qword_1ECEB3120);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB3120);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_1E134FD1C(v53, v99, &qword_1ECEB3130);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB3130);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_1E134FD1C(v62, v103, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v101;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3140);
    sub_1E1302CD4(&qword_1ECEB3148, &qword_1ECEB3140);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3150);
    v59 = v119;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB3130);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3150);
    v71 = v105;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3158);
    sub_1E1302CD4(&qword_1ECEB3160, &qword_1ECEB3158);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3150);
    v73 = v107;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB3120);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3140);
    sub_1E1302CD4(&qword_1ECEB3148, &qword_1ECEB3140);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3150);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB3130);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3150);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3150);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_1EE2169B0;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_1EE2166C8;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1E13E20AC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_101;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1E13D477C(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3248);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3250);
  v117 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3258);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3260);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_1E134FD1C(v2 + v37, v30, &qword_1ECEB3258);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_1E1308058(v30, &qword_1ECEB3258);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_1E1AF5BBC();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_1E134FD1C(v2 + v41, v19, &qword_1ECEB24E0);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB24E0);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_1E1AF5BBC();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_1E134FD1C(v2 + v45, v106, &qword_1ECEB3248);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_1E1308058(v46, &qword_1ECEB3248);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_1E1AF5BBC();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_1E134FD1C(v53, v99, &qword_1ECEB3258);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_1E1308058(v54, &qword_1ECEB3258);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_1E134FD1C(v62, v103, &qword_1ECEB24F0);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB24F0);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_1E1AF5BBC();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_1EE2169B8;
  v65 = v101;
  if (*(v2 + qword_1EE2169B8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3268);
    sub_1E1302CD4(&qword_1EE1D2738, &qword_1ECEB3268);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3270);
    v59 = v119;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_1E13619D8(v67, v2 + v70, &qword_1ECEB3258);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
    sub_1E1302CD4(&qword_1EE1E3578, &qword_1ECEB2590);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3270);
    v71 = v105;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_1E13619D8(v71, v2 + v41, &qword_1ECEB24E0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3278);
    sub_1E1302CD4(&qword_1EE1D2708, &qword_1ECEB3278);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3270);
    v73 = v107;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_1E13619D8(v73, v2 + v45, &qword_1ECEB3248);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3268);
    sub_1E1302CD4(&qword_1EE1D2738, &qword_1ECEB3268);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3270);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_1E13619D8(v74, &v78[v2], &qword_1ECEB3258);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    sub_1E1302CD4(&qword_1EE1E3570, &qword_1ECEB2598);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3270);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_1E13619D8(v76, v2 + v83, &qword_1ECEB24E8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
    sub_1E1302CD4(&qword_1EE1E3548, &unk_1ECEB94D0);

    sub_1E1AF3CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3270);
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_1E13619D8(v80, v2 + v84, &qword_1ECEB24F0);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_1EE2169B0;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_1EE2166C8;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1E13E20AC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_312;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E13D6668(uint64_t a1, uint64_t a2)
{
  sub_1E136073C(a1, v6);
  v3 = *(*a2 + 704);
  swift_beginAccess();
  sub_1E136197C(v6, a2 + v3);
  swift_endAccess();
  sub_1E136073C(a2 + v3, v5);
  sub_1E1AF5BCC();
  sub_1E1360B10(v5);
  return sub_1E1360B10(v6);
}

uint64_t sub_1E13D6798(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1EE1D2A08 != -1)
  {
    swift_once();
  }

  v3 = sub_1E1AF3C1C();
  v4 = __swift_project_value_buffer(v3, qword_1EE1D2A10);
  return a2(v4);
}

uint64_t (*sub_1E13D6808(uint64_t a1))(uint64_t)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E229C;
  *(v2 + 24) = a1;

  return sub_1E13E2B1C;
}

uint64_t (*sub_1E13D6880(uint64_t a1))(uint64_t)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E27E4;
  *(v2 + 24) = a1;

  return sub_1E13E2B1C;
}

uint64_t (*sub_1E13D68F8(uint64_t a1))(uint64_t)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E2870;
  *(v2 + 24) = a1;

  return sub_1E13E2B1C;
}

uint64_t (*sub_1E13D6970(uint64_t a1))(uint64_t)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E2614;
  *(v2 + 24) = a1;

  return sub_1E13E2B1C;
}

uint64_t (*sub_1E13D69E8(uint64_t a1))(uint64_t)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E2748;
  *(v2 + 24) = a1;

  return sub_1E13E2B1C;
}

uint64_t (*sub_1E13D6A60(uint64_t a1))(uint64_t)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E2690;
  *(v2 + 24) = a1;

  return sub_1E13E2B1C;
}

uint64_t (*sub_1E13D6AD8(uint64_t a1))(uint64_t)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E21F8;
  *(v2 + 24) = a1;

  return sub_1E13E2B1C;
}

uint64_t (*sub_1E13D6B50(uint64_t a1))(uint64_t)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E251C;
  *(v2 + 24) = a1;

  return sub_1E13E2B1C;
}

uint64_t (*sub_1E13D6BC8(uint64_t a1))(uint64_t)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E28EC;
  *(v2 + 24) = a1;

  return sub_1E13E2B1C;
}

uint64_t (*sub_1E13D6C40(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E20C4;
  *(v2 + 24) = a1;

  return sub_1E13617F8;
}

uint64_t (*sub_1E13D6CB8(uint64_t a1))(uint64_t)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E216C;
  *(v2 + 24) = a1;

  return sub_1E13E2B1C;
}

uint64_t (*sub_1E13D6D30(uint64_t a1))(uint64_t)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E13E25AC;
  *(v2 + 24) = a1;

  return sub_1E13E2B1C;
}

uint64_t sub_1E13D6DA8(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E2A6C;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_472;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E2824;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D70BC(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E2A6C;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_366;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E2654;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D73D0(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E2A6C;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_433;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E2788;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D76E4(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E2A6C;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_394;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E26EC;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D79F8(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E2A6C;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_155;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E2238;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D7D0C(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E2A6C;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_288;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E255C;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D8020(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E2A6C;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_537;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E292C;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D8334(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E2A6C;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_77;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E2104;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D8648(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    sub_1E1A8184C(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E2A6C;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_116;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E21AC;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D8934(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E20AC;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_179;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E2294;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D8C48(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E20AC;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_218;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E2314;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D8F5C(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    v6 = result;
    (*(*v3 + 1184))(result, a3 & 1);
    *(v3 + qword_1EE2169A0) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1E13E2A6C;
    *(v9 + 24) = v8;
    v17[4] = sub_1E13E2A70;
    v17[5] = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E1551FBC;
    v17[3] = &block_descriptor_327;
    v10 = _Block_copy(v17);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(v6 + 16);

        sub_1E16F6684(v12);
      }

      else
      {
        if (!*(v6 + 16))
        {
          *(v4 + v11) = 0;
          return result;
        }
      }

      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v14 = sub_1E188BA60(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      *(v14 + 16) = sub_1E13E25EC;
      *(v14 + 24) = v15;

      sub_1E1300EA8(v16);
    }
  }

  return result;
}

uint64_t sub_1E13D9270(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E13E2A6C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E13E2A70;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1551FBC;
  v11[3] = &block_descriptor_208;
  v9 = _Block_copy(v11);

  sub_1E13E2150(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13D9404(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E13E2A6C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E13E2A70;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1551FBC;
  v11[3] = &block_descriptor_486;
  v9 = _Block_copy(v11);

  sub_1E13E2150(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13D9598(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E13E2A6C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E13E2A70;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1551FBC;
  v11[3] = &block_descriptor_512;
  v9 = _Block_copy(v11);

  sub_1E13E2150(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13D972C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E13E2A6C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E13E2A70;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1551FBC;
  v11[3] = &block_descriptor_447;
  v9 = _Block_copy(v11);

  sub_1E13E2150(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13D98C0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E13E2A6C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E13E2A70;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1551FBC;
  v11[3] = &block_descriptor_408;
  v9 = _Block_copy(v11);

  sub_1E13E2150(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13D9A54(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E13E2A6C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E13E2A70;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1551FBC;
  v11[3] = &block_descriptor_169;
  v9 = _Block_copy(v11);

  sub_1E13E2150(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13D9BE8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E13E2A6C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E13E2A70;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1551FBC;
  v11[3] = &block_descriptor_302;
  v9 = _Block_copy(v11);

  sub_1E13E2150(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13D9D7C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E13E2A6C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E13E2A70;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1551FBC;
  v11[3] = &block_descriptor_551;
  v9 = _Block_copy(v11);

  sub_1E13E2150(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13D9F10(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E13E2A6C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E13E2A70;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1551FBC;
  v11[3] = &block_descriptor_91;
  v9 = _Block_copy(v11);

  sub_1E13E2150(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13DA0A4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E13E2A6C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E13E2A70;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1551FBC;
  v11[3] = &block_descriptor_130;
  v9 = _Block_copy(v11);

  sub_1E13E2150(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13DA238(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E13E2A6C;
  *(v8 + 24) = v7;
  v11[4] = sub_1E13E2A70;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1551FBC;
  v11[3] = &block_descriptor_341;
  v9 = _Block_copy(v11);

  sub_1E13E2150(a1, a2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13DA3CC()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB3410);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB3418);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB3410);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_1E13DA684()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB3258);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB3248);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB3258);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_1E13DA93C()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB33D0);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB33D8);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB33D0);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_1E13DABF4()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB31C0);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB31B0);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB31C0);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_1E13DAEAC()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB3178);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB3168);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB3178);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_1E13DB164()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB3378);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB3380);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB3378);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_1E13DB41C()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB3328);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB3330);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB3328);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_1E13DB6D4()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB32D8);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB32E0);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB32D8);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_1E13DB98C()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB3130);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB3120);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB3130);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_1E13DBC44()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB3290);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB3298);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB3290);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_1E13DBEFC()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB30E8);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB30D8);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB30E8);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_1E13DC1B4()
{
  v0 = sub_1E1753988();
  sub_1E1308058(v0 + qword_1EE2169A8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + *(*v0 + 640), &qword_1ECEB3208);
  sub_1E1308058(v0 + *(*v0 + 648), &qword_1ECEB24E0);
  sub_1E1308058(v0 + *(*v0 + 656), &qword_1ECEB3210);
  sub_1E1308058(v0 + *(*v0 + 664), &qword_1ECEB3208);
  sub_1E1308058(v0 + *(*v0 + 672), &qword_1ECEB24E8);
  sub_1E1308058(v0 + *(*v0 + 680), &qword_1ECEB24F0);

  sub_1E1308058(v0 + *(*v0 + 696), &qword_1ECEB24A0);
  sub_1E1360B10(v0 + *(*v0 + 704));

  sub_1E1308058(v0 + *(*v0 + 744), &qword_1ECEB24F8);
  sub_1E1300EA8(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t SearchResultsDiffablePagePresenter.__allocating_init(objectGraph:guidedSearchPresenter:facetsPresenter:sponsoredSearchSessionManager:term:searchEntity:origin:source:referrerData:isNetworkConstrained:spellCheckEnabled:excludedTerms:originatingTerm:guidedSearchTokens:guidedSearchOptimizationTerm:appStateController:impressionsAppendixDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11, __int128 *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, void (*a17)(void, void, void), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24)
{
  v25 = v24;
  v124 = a7;
  v123 = a6;
  v122 = a5;
  v153 = a4;
  v157 = a1;
  v151 = a24;
  v154 = a23;
  v133 = a22;
  v152 = a21;
  v126 = a20;
  v149 = a19;
  v132 = a18;
  v131 = a17;
  v130 = a16;
  v129 = a15;
  v128 = a14;
  v127 = a13;
  v145 = a11;
  v141 = a10;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30A0);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v140 = &v116 - v29;
  v139 = sub_1E1AF68DC();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v134 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v150 = &v116 - v35;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v156 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v125 = &v116 - v36;
  v147 = sub_1E1AF3D0C();
  v155 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v25;
  v38 = swift_allocObject();
  v118 = *a8;
  v119 = *a9;
  v121 = *(a12 + 4);
  *(v38 + qword_1EE2155E8) = 0;
  v120 = *(a12 + 40);
  v39 = qword_1EE2155E0;
  *(v38 + qword_1EE2155E0) = 4;
  v40 = (v38 + qword_1EE2155D0);
  *v40 = 0;
  v40[1] = 0;
  v41 = v38 + qword_1EE1D4CC8;
  *v41 = xmmword_1E1B04490;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = 0;
  *(v41 + 40) = 0;
  *(v38 + qword_1EE2155B0) = 1;
  *(v38 + qword_1EE2155B8) = 0;
  *(v38 + qword_1EE1D4CB8) = 0;
  v42 = qword_1EE2155F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30A8);
  swift_allocObject();
  *(v38 + v42) = sub_1E1AF5BEC();
  v43 = qword_1EE2155F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30B0);
  swift_allocObject();
  *(v38 + v43) = sub_1E1AF5BEC();
  v44 = qword_1EE215618;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30B8);
  swift_allocObject();
  *(v38 + v44) = sub_1E1AF5BEC();
  *(v38 + qword_1EE215598) = 0;
  *(v38 + qword_1EE215590) = 0;
  type metadata accessor for ASKBagContract();
  v45 = *a12;
  v117 = a12[1];
  v116 = v45;
  sub_1E1AF416C();
  v46 = *&v159[0];
  *(v38 + qword_1EE1D4CE0) = a2;
  *(v38 + qword_1EE215610) = a3;
  v47 = (v38 + qword_1EE1D4CD8);
  v48 = v122;
  *v47 = v153;
  v47[1] = v48;
  v49 = (v38 + qword_1EE215580);
  v50 = v124;
  *v49 = v123;
  v49[1] = v50;
  swift_beginAccess();
  *(v38 + v39) = v118;
  *(v38 + qword_1EE2155D8) = v119;
  swift_beginAccess();
  v51 = v145;
  *v40 = v141;
  v40[1] = v51;
  v141 = a2;

  v145 = a3;

  swift_unknownObjectRetain();

  v52 = *v41;
  v53 = *(v41 + 8);
  v54 = *(v41 + 16);
  v55 = *(v41 + 24);
  v56 = *(v41 + 32);
  v57 = v117;
  *v41 = v116;
  *(v41 + 16) = v57;
  *(v41 + 32) = v121;
  v58 = *(v41 + 40);
  *(v41 + 40) = v120;
  sub_1E13DED78(v52, v53, v54, v55, v56, v58);
  *(v38 + qword_1EE2155A0) = v127;
  *(v38 + qword_1EE2155A8) = v128;
  *(v38 + qword_1EE2155C8) = v129;
  v59 = (v38 + qword_1EE2155C0);
  v60 = v131;
  *v59 = v130;
  v59[1] = v60;
  *(v38 + qword_1EE215600) = v132;
  v61 = (v38 + qword_1EE215608);
  v62 = v126;
  *v61 = v149;
  v61[1] = v62;
  if (qword_1EE1D21E8 != -1)
  {
    swift_once();
  }

  v63 = v155;
  v64 = *(v155 + 104);
  v65 = v146;
  LODWORD(v132) = *MEMORY[0x1E69AAFB8];
  v66 = v147;
  v131 = v64;
  v64(v146);
  v67 = v125;
  sub_1E1AF52AC();
  v149 = v46;
  v68 = v65;
  v69 = *(v63 + 8);
  v155 = v63 + 8;
  v69(v68, v66);
  v70 = v148;
  sub_1E1AF532C();
  v71 = *(v156 + 8);
  v156 += 8;
  v71(v67, v70);
  v72 = *&v159[0];
  type metadata accessor for FastImpressionFlushGate();
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73[4] = 0;
  v73[5] = 0;
  v73[2] = v72;
  *(v38 + qword_1EE1D4CD0) = v73;
  v74 = (v38 + qword_1EE1D4CC0);
  v75 = v133;
  *v74 = v152;
  v74[1] = v75;
  v76 = (v38 + qword_1EE215588);
  v77 = v151;
  *v76 = v154;
  v76[1] = v77;
  v78 = qword_1EE1E2FE8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v79 = v67;
  if (v78 != -1)
  {
    swift_once();
  }

  v133 = "GenericPagePresenter";
  v80 = v146;
  v81 = v147;
  v131(v146, v132, v147);
  sub_1E1AF52AC();
  v69(v80, v81);
  v82 = v148;
  sub_1E1AF532C();
  v71(v79, v82);
  v83 = *&v159[0];
  type metadata accessor for FastImpressionsTracker();
  v84 = swift_allocObject();
  v84[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1E1AF4EAC();
  swift_allocObject();
  v84[5] = sub_1E1AF4E8C();
  swift_allocObject();
  v84[6] = sub_1E1AF4E8C();
  v84[4] = v83;
  v85 = sub_1E1AEFCCC();
  (*(*(v85 - 8) + 56))(v150, 1, 1, v85);
  v156 = sub_1E13E1A2C(qword_1EE1DA5B0, type metadata accessor for FastImpressionsTracker);
  memset(v159, 0, sizeof(v159));
  v160 = 0;
  *(v38 + qword_1EE2169B8) = 0;
  v86 = MEMORY[0x1E69E7CC0];
  *(v38 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
  *(v38 + qword_1EE1ED400) = 0;
  v87 = *(*v38 + 640);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30C0);
  v89 = *(*(v88 - 8) + 56);
  v89(v38 + v87, 1, 1, v88);
  v90 = *(*v38 + 648);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  (*(*(v91 - 8) + 56))(v38 + v90, 1, 1, v91);
  v92 = *(*v38 + 656);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30C8);
  (*(*(v93 - 8) + 56))(v38 + v92, 1, 1, v93);
  v89(v38 + *(*v38 + 664), 1, 1, v88);
  v94 = *(*v38 + 672);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  (*(*(v95 - 8) + 56))(v38 + v94, 1, 1, v95);
  v96 = *(*v38 + 680);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  (*(*(v97 - 8) + 56))(v38 + v96, 1, 1, v97);
  v98 = *(*v38 + 688);
  sub_1E1361A80();

  sub_1E1AF322C();
  v158 = v86;
  sub_1E13E1A2C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v138 + 104))(v137, *MEMORY[0x1E69E8090], v139);
  *(v38 + v98) = sub_1E1AF692C();
  sub_1E13C61FC(&qword_1ECEB24A0, sub_1E159D2C4, sub_1E159D2E8, v38 + *(*v38 + 696));
  v99 = (v38 + *(*v38 + 704));
  *v99 = 0u;
  v99[1] = 0u;
  *(v99 + 25) = 0u;
  v100 = *(*v38 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
  swift_allocObject();
  *(v38 + v100) = sub_1E1AF5BEC();
  v101 = *(*v38 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
  swift_allocObject();
  *(v38 + v101) = sub_1E1AF5BEC();
  v102 = *(*v38 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v38 + v102) = sub_1E1AF5BEC();
  *(v38 + *(*v38 + 736)) = 0;
  v103 = (v38 + *(*v38 + 752));
  *v103 = 0;
  v103[1] = 0;
  v104 = v150;
  sub_1E134FD1C(v150, v38 + qword_1EE2169A8, &unk_1ECEB4B60);
  sub_1E134FD1C(v159, v38 + *(*v38 + 744), &qword_1ECEB24F8);
  v105 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

  *(v38 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v106);

  v107 = sub_1E13C5AB4(v106, v84, v156, 0, &qword_1ECEB3428, &unk_1E1B06378, sub_1E174E2FC);
  v108 = *(*v107 + 1112);

  *(v107 + qword_1EE2169B8) = v108(0);

  sub_1E13D0978(0);

  sub_1E1308058(v159, &qword_1ECEB24F8);
  sub_1E1308058(v104, &unk_1ECEB4B60);
  swift_beginAccess();
  v84[3] = &protocol witness table for SearchResultsDiffablePagePresenter;
  swift_unknownObjectWeakAssign();
  v109 = (v107 + *(*v107 + 208));
  swift_beginAccess();
  v110 = v151;
  *v109 = v154;
  v109[1] = v110;
  swift_retain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30D0);
  sub_1E1302CD4(&qword_1EE1D2A68, &qword_1ECEB30D0);
  sub_1E1AF3CDC();
  v111 = v140;
  sub_1E1AF3CEC();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v159);
  (*(v143 + 8))(v111, v144);

  v112 = *(v107 + qword_1EE1D4CD0);

  v113 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v114 = *(v112 + 32);
  *(v112 + 32) = sub_1E13E1A74;
  *(v112 + 40) = v113;

  sub_1E1300EA8(v114);

  return v107;
}

uint64_t SearchResultsDiffablePagePresenter.init(objectGraph:guidedSearchPresenter:facetsPresenter:sponsoredSearchSessionManager:term:searchEntity:origin:source:referrerData:isNetworkConstrained:spellCheckEnabled:excludedTerms:originatingTerm:guidedSearchTokens:guidedSearchOptimizationTerm:appStateController:impressionsAppendixDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11, __int128 *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, void (*a16)(char *, uint64_t), void (*a17)(char *, uint64_t), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = v24;
  v140 = a7;
  v123 = a6;
  v122 = a5;
  v153 = a1;
  v150 = a24;
  v152 = a23;
  v132 = a22;
  v151 = a21;
  v125 = a20;
  v148 = a19;
  v131 = a18;
  v130 = a17;
  v129 = a16;
  v128 = a15;
  v127 = a14;
  v126 = a13;
  v144 = a11;
  v142 = a10;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30A0);
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v139 = &v116 - v30;
  v138 = sub_1E1AF68DC();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v133 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v149 = &v116 - v36;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v155 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v124 = &v116 - v37;
  v146 = sub_1E1AF3D0C();
  v154 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *a8;
  v119 = *a9;
  v121 = *(a12 + 4);
  *(v25 + qword_1EE2155E8) = 0;
  v120 = *(a12 + 40);
  v39 = qword_1EE2155E0;
  *(v25 + qword_1EE2155E0) = 4;
  v40 = (v25 + qword_1EE2155D0);
  *v40 = 0;
  v40[1] = 0;
  v41 = v25 + qword_1EE1D4CC8;
  *v41 = xmmword_1E1B04490;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  *(v25 + qword_1EE2155B0) = 1;
  *(v25 + qword_1EE2155B8) = 0;
  *(v25 + qword_1EE1D4CB8) = 0;
  v42 = qword_1EE2155F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30A8);
  swift_allocObject();
  *(v25 + v42) = sub_1E1AF5BEC();
  v43 = qword_1EE2155F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30B0);
  swift_allocObject();
  *(v25 + v43) = sub_1E1AF5BEC();
  v44 = qword_1EE215618;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30B8);
  swift_allocObject();
  *(v25 + v44) = sub_1E1AF5BEC();
  *(v25 + qword_1EE215598) = 0;
  *(v25 + qword_1EE215590) = 0;
  type metadata accessor for ASKBagContract();
  v45 = *a12;
  v117 = a12[1];
  v116 = v45;
  sub_1E1AF416C();
  v46 = *&v157[0];
  *(v25 + qword_1EE1D4CE0) = a2;
  *(v25 + qword_1EE215610) = a3;
  v47 = (v25 + qword_1EE1D4CD8);
  v48 = v122;
  *v47 = a4;
  v47[1] = v48;
  v49 = (v25 + qword_1EE215580);
  v50 = v140;
  *v49 = v123;
  v49[1] = v50;
  swift_beginAccess();
  *(v25 + v39) = v118;
  *(v25 + qword_1EE2155D8) = v119;
  swift_beginAccess();
  v51 = v144;
  *v40 = v142;
  v40[1] = v51;
  v140 = a2;

  v144 = a3;

  v142 = a4;
  swift_unknownObjectRetain();

  v52 = *v41;
  v53 = *(v41 + 8);
  v54 = *(v41 + 16);
  v55 = *(v41 + 24);
  v56 = *(v41 + 32);
  v57 = v117;
  *v41 = v116;
  *(v41 + 16) = v57;
  *(v41 + 32) = v121;
  v58 = *(v41 + 40);
  *(v41 + 40) = v120;
  sub_1E13DED78(v52, v53, v54, v55, v56, v58);
  *(v25 + qword_1EE2155A0) = v126;
  *(v25 + qword_1EE2155A8) = v127;
  *(v25 + qword_1EE2155C8) = v128;
  v59 = (v25 + qword_1EE2155C0);
  v60 = v130;
  *v59 = v129;
  v59[1] = v60;
  *(v25 + qword_1EE215600) = v131;
  v61 = (v25 + qword_1EE215608);
  v62 = v125;
  *v61 = v148;
  v61[1] = v62;
  if (qword_1EE1D21E8 != -1)
  {
    swift_once();
  }

  v63 = v154;
  v64 = v154[13];
  v65 = v145;
  LODWORD(v131) = *MEMORY[0x1E69AAFB8];
  v66 = v146;
  v130 = v64;
  (v64)(v145);
  v67 = v124;
  sub_1E1AF52AC();
  v148 = v46;
  v68 = v63[1];
  v154 = v63 + 1;
  v129 = v68;
  v68(v65, v66);
  v69 = v147;
  sub_1E1AF532C();
  v70 = *(v155 + 8);
  v155 += 8;
  v70(v67, v69);
  v71 = *&v157[0];
  type metadata accessor for FastImpressionFlushGate();
  v72 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72[4] = 0;
  v72[5] = 0;
  v72[2] = v71;
  *(v25 + qword_1EE1D4CD0) = v72;
  v73 = (v25 + qword_1EE1D4CC0);
  v74 = v132;
  *v73 = v151;
  v73[1] = v74;
  v75 = (v25 + qword_1EE215588);
  v76 = v150;
  *v75 = v152;
  v75[1] = v76;
  v77 = qword_1EE1E2FE8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v77 != -1)
  {
    swift_once();
  }

  v78 = v145;
  v79 = v146;
  (v130)(v145, v131, v146);
  sub_1E1AF52AC();
  v129(v78, v79);
  v80 = v147;
  sub_1E1AF532C();
  v70(v67, v80);
  v81 = *&v157[0];
  type metadata accessor for FastImpressionsTracker();
  v82 = swift_allocObject();
  v82[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1E1AF4EAC();
  swift_allocObject();
  v82[5] = sub_1E1AF4E8C();
  swift_allocObject();
  v82[6] = sub_1E1AF4E8C();
  v82[4] = v81;
  v154 = v82;
  v83 = sub_1E1AEFCCC();
  (*(*(v83 - 8) + 56))(v149, 1, 1, v83);
  v155 = sub_1E13E1A2C(qword_1EE1DA5B0, type metadata accessor for FastImpressionsTracker);
  memset(v157, 0, sizeof(v157));
  v158 = 0;
  *(v25 + qword_1EE2169B8) = 0;
  v84 = MEMORY[0x1E69E7CC0];
  *(v25 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
  *(v25 + qword_1EE1ED400) = 0;
  v85 = *(*v25 + 640);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30C0);
  v87 = *(*(v86 - 8) + 56);
  v87(v25 + v85, 1, 1, v86);
  v88 = *(*v25 + 648);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  (*(*(v89 - 8) + 56))(v25 + v88, 1, 1, v89);
  v90 = *(*v25 + 656);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30C8);
  (*(*(v91 - 8) + 56))(v25 + v90, 1, 1, v91);
  v87(v25 + *(*v25 + 664), 1, 1, v86);
  v92 = *(*v25 + 672);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  (*(*(v93 - 8) + 56))(v25 + v92, 1, 1, v93);
  v94 = *(*v25 + 680);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  (*(*(v95 - 8) + 56))(v25 + v94, 1, 1, v95);
  v96 = *(*v25 + 688);
  sub_1E1361A80();
  v97 = v153;

  sub_1E1AF322C();
  v156 = v84;
  sub_1E13E1A2C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v137 + 104))(v136, *MEMORY[0x1E69E8090], v138);
  *(v25 + v96) = sub_1E1AF692C();
  sub_1E13C61FC(&qword_1ECEB24A0, sub_1E159D2C4, sub_1E159D2E8, v25 + *(*v25 + 696));
  v98 = (v25 + *(*v25 + 704));
  *v98 = 0u;
  v98[1] = 0u;
  *(v98 + 25) = 0u;
  v99 = *(*v25 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
  swift_allocObject();
  *(v25 + v99) = sub_1E1AF5BEC();
  v100 = *(*v25 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
  swift_allocObject();
  *(v25 + v100) = sub_1E1AF5BEC();
  v101 = *(*v25 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v25 + v101) = sub_1E1AF5BEC();
  *(v25 + *(*v25 + 736)) = 0;
  v102 = (v25 + *(*v25 + 752));
  *v102 = 0;
  v102[1] = 0;
  v103 = v149;
  sub_1E134FD1C(v149, v25 + qword_1EE2169A8, &unk_1ECEB4B60);
  sub_1E134FD1C(v157, v25 + *(*v25 + 744), &qword_1ECEB24F8);
  v104 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

  *(v25 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v105);

  v106 = v154;

  v107 = sub_1E13C5AB4(v97, v106, v155, 0, &qword_1ECEB3428, &unk_1E1B06378, sub_1E174E2FC);
  v108 = *(*v107 + 1112);

  *(v107 + qword_1EE2169B8) = v108(0);

  sub_1E13D0978(0);

  sub_1E1308058(v157, &qword_1ECEB24F8);
  sub_1E1308058(v103, &unk_1ECEB4B60);
  swift_beginAccess();
  *(v106 + 24) = &protocol witness table for SearchResultsDiffablePagePresenter;
  swift_unknownObjectWeakAssign();
  v109 = (v107 + *(*v107 + 208));
  swift_beginAccess();
  v110 = v150;
  *v109 = v152;
  v109[1] = v110;
  swift_retain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30D0);
  sub_1E1302CD4(&qword_1EE1D2A68, &qword_1ECEB30D0);
  sub_1E1AF3CDC();
  type metadata accessor for SearchResultsDiffablePagePresenter();
  v111 = v139;
  sub_1E1AF3CEC();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v157);
  (*(v141 + 8))(v111, v143);

  v112 = *(v107 + qword_1EE1D4CD0);

  v113 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v114 = *(v112 + 32);
  *(v112 + 32) = sub_1E13E2A68;
  *(v112 + 40) = v113;

  sub_1E1300EA8(v114);

  return v107;
}

void sub_1E13DED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a2 != 1)
  {

    sub_1E137B778(a5, a6);
  }
}

uint64_t sub_1E13DEE1C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EE1D29E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1E1AF3C1C();
    v2 = __swift_project_value_buffer(v1, qword_1EE1D29E8);
    sub_1E183B654(v2);
  }

  return result;
}

uint64_t SearchResultsDiffablePagePresenter.term.getter()
{
  v1 = *(v0 + qword_1EE215580);

  return v1;
}

uint64_t sub_1E13DEEF4()
{
  v1 = sub_1E1AEF4AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_1EE215580 + 8);
  if (v5)
  {
    v15 = *(v0 + qword_1EE215580);
    v16 = v5;

    sub_1E1AEF49C();
    sub_1E13B8AA4();
    v6 = sub_1E1AF6E0C();
    v8 = v7;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = 0x745F686372616573;
  *(inited + 40) = 0xEB000000006D7265;
  v15 = 11043298;
  v16 = 0xA300000000000000;
  MEMORY[0x1E68FECA0](v6, v8);

  MEMORY[0x1E68FECA0](11108834, 0xA300000000000000);
  v10 = v16;
  *(inited + 48) = v15;
  *(inited + 56) = v10;
  v11 = sub_1E13017E4(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &unk_1ECEB9500);
  v12._object = 0x80000001E1B5C170;
  v12._countAndFlagsBits = 0xD000000000000013;
  countAndFlagsBits = localizedString(_:with:)(v12, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1E13DF118()
{
  v1 = qword_1EE2155E8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E13DF15C(uint64_t a1)
{
  v3 = qword_1EE2155E8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E13DF20C@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EE2155E0;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1E13DF260(char *a1)
{
  v2 = *a1;
  v3 = qword_1EE2155E0;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E13DF310@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EE2155D8;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1E13DF364(char *a1)
{
  v2 = *a1;
  v3 = qword_1EE2155D8;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E13DF414(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_1EE2155D0);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1E13DF480()
{
  v1 = (v0 + qword_1EE2155D0);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E13DF4D8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EE2155D0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SearchResultsDiffablePagePresenter.originatingTerm.getter()
{
  v1 = *(v0 + qword_1EE2155C0);

  return v1;
}

uint64_t SearchResultsDiffablePagePresenter.guidedSearchOptimizationTerm.getter()
{
  v1 = *(v0 + qword_1EE215608);

  return v1;
}

uint64_t sub_1E13DF660()
{
  v1 = qword_1EE2155B0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E13DF6A4(char a1)
{
  v3 = qword_1EE2155B0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E13DF7C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v122 = &v90 - v3;
  v123 = sub_1E1AEFEAC();
  v100 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v99 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_1EE215580 + 8))
  {
    v5 = *(v0 + qword_1EE215580);
    v120 = *(v0 + qword_1EE215580 + 8);
    v121 = v5;
  }

  else
  {
    v120 = 0xE000000000000000;
    v121 = 0;
  }

  v6 = qword_1EE2155D8;
  swift_beginAccess();
  v119 = *(v1 + v6);
  v7 = (v1 + qword_1EE2155D0);
  swift_beginAccess();
  v8 = v7[1];
  v118 = *v7;
  v117 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3060);
  sub_1E1AF690C();
  v116 = _s11AppStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v124);

  v9 = qword_1EE2155E0;
  swift_beginAccess();
  v115 = *(v1 + v9);
  v114 = *(v1 + qword_1EE2155A0);
  v113 = *(v1 + qword_1EE2155A8);
  v109 = *(v1 + qword_1EE2155C8);
  v10 = *(v1 + qword_1EE2155C0 + 8);
  v112 = *(v1 + qword_1EE2155C0);
  v108 = v10;
  v110 = *(v1 + qword_1EE215600);
  v12 = *(v1 + qword_1EE1D4CC8 + 8);
  v107 = *(v1 + qword_1EE1D4CC8);
  v11 = v107;
  v106 = v12;
  v13 = *(v1 + qword_1EE1D4CC8 + 24);
  v105 = *(v1 + qword_1EE1D4CC8 + 16);
  v14 = v105;
  v104 = v13;
  v103 = *(v1 + qword_1EE1D4CC8 + 32);
  v15 = v103;
  v16 = *(v1 + qword_1EE215608 + 8);
  v111 = *(v1 + qword_1EE215608);
  v101 = v16;
  v17 = *(v1 + qword_1EE1D4CC8 + 40);
  v102 = v17;

  sub_1E13E2380(v11, v12, v14, v13, v15, v17);

  v18 = v99;
  sub_1E1AEFE9C();
  v98 = sub_1E1AEFE7C();
  v97 = v19;
  (*(v100 + 8))(v18, v123);
  v90 = v1[2];
  v96 = *(v1 + qword_1EE1D4CE0);
  v20 = *(v1 + qword_1EE1D4CD8 + 8);
  v95 = *(v1 + qword_1EE1D4CD8);
  v94 = v20;
  v22 = *(v1 + qword_1EE1D4CC0 + 8);
  v92 = *(v1 + qword_1EE1D4CC0);
  v21 = v92;
  v93 = v22;
  swift_beginAccess();
  v23 = v1[3];
  swift_beginAccess();
  v24 = v1[4];
  v25 = *(v1 + qword_1EE215588 + 8);
  v99 = *(v1 + qword_1EE215588);
  v100 = v25;
  type metadata accessor for SearchResultsDiffablePageContentPresenter();
  v26 = swift_allocObject();
  v27 = qword_1EE1D3520;
  v91 = v24;

  v123 = v23;

  v28 = MEMORY[0x1E69E7CC0];
  *(v26 + v27) = sub_1E159DA28(MEMORY[0x1E69E7CC0]);
  v29 = (v26 + qword_1EE1D3528);
  *v29 = v21;
  v29[1] = v22;
  v30 = sub_1E1AEFCCC();
  (*(*(v30 - 8) + 56))(v122, 1, 1, v30);
  *(v26 + qword_1EE1E9D48) = 0;
  *(v26 + qword_1EE1E9DF8) = v28;
  v31 = qword_1EE2166A0;
  swift_unknownObjectRetain();

  *(v26 + v31) = sub_1E159D6F0(v28);
  v32 = (v26 + qword_1EE1E9E00);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v26 + qword_1EE1E9EA0);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v26 + qword_1EE1E9E08);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v26 + qword_1EE1E9DF0);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v26 + qword_1EE1E9E98);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v26 + qword_1EE216698);
  *v37 = 0u;
  v37[1] = 0u;
  *(v37 + 25) = 0u;
  *(v26 + qword_1EE2166D0) = 0;
  *(v26 + qword_1EE1E9D50) = 0;
  *(v26 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v26 + qword_1EE2166C8) = 0;
  v38 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31E8);
  swift_allocObject();
  *(v26 + v38) = sub_1E1AF5BEC();
  v39 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v26 + v39) = sub_1E1AF5BEC();
  v40 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F0);
  swift_allocObject();
  *(v26 + v40) = sub_1E1AF5BEC();
  v41 = qword_1EE2166B0;
  swift_allocObject();
  *(v26 + v41) = sub_1E1AF5BEC();
  v42 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v26 + v42) = sub_1E1AF5BEC();
  v43 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v26 + v43) = sub_1E1AF5BEC();
  v44 = qword_1EE1E9DD8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v46 = *(*(v45 - 8) + 56);
  v47 = v26 + v44;
  v48 = v90;
  v46(v47, 1, 1, v45);
  v46(v26 + qword_1EE1E9DE0, 1, 1, v45);
  *(v26 + 16) = v48;
  sub_1E13E23F8(v122, v26 + qword_1EE216678);
  v49 = *v32;
  *v32 = 0;
  v32[1] = 0;
  sub_1E1300EA8(v49);
  v50 = *v34;
  *v34 = 0;
  v34[1] = 0;
  sub_1E1300EA8(v50);
  v51 = *v33;
  *v33 = 0;
  v33[1] = 0;
  sub_1E1300EA8(v51);
  v52 = *v35;
  *v35 = 0;
  v35[1] = 0;
  sub_1E1300EA8(v52);
  v53 = *v36;
  *v36 = 0;
  v36[1] = 0;
  sub_1E1300EA8(v53);
  *(v26 + qword_1EE1E9E90) = v123;
  v54 = v91;
  *(v26 + qword_1EE216690) = v91;
  v55 = swift_allocObject();
  *(v55 + 24) = v94;
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  swift_weakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  *(v57 + 24) = v56;
  *(v57 + 32) = v48;
  *(v57 + 40) = v54;
  v58 = v97;
  *(v57 + 48) = v98;
  *(v57 + 56) = v58;
  v59 = v120;
  *(v57 + 64) = v121;
  *(v57 + 72) = v59;
  *(v57 + 80) = v119;
  v60 = v117;
  *(v57 + 88) = v118;
  *(v57 + 96) = v60;
  *(v57 + 104) = v116;
  *(v57 + 112) = v115;
  *(v57 + 113) = v114;
  *(v57 + 114) = v113;
  v61 = v112;
  *(v57 + 120) = v109;
  *(v57 + 128) = v61;
  v62 = v110;
  *(v57 + 136) = v108;
  *(v57 + 144) = v62;
  v63 = v106;
  *(v57 + 152) = v107;
  *(v57 + 160) = v63;
  v64 = v104;
  *(v57 + 168) = v105;
  *(v57 + 176) = v64;
  *(v57 + 184) = v103;
  *(v57 + 192) = v102;
  v65 = v101;
  *(v57 + 200) = v111;
  *(v57 + 208) = v65;
  v66 = v92;
  *(v57 + 216) = 0;
  *(v57 + 224) = v66;
  *(v57 + 232) = v93;
  v67 = swift_allocObject();
  swift_weakInit();
  v68 = swift_allocObject();
  v69 = v99;
  v68[2] = v67;
  v68[3] = v69;
  v68[4] = v100;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1E13E247C;
  *(v70 + 24) = v48;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1E13E2468;
  *(v71 + 24) = v57;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_1E13E2498;
  *(v72 + 24) = v71;
  v73 = (v26 + qword_1EE1E9E00);
  v74 = *(v26 + qword_1EE1E9E00);
  *v73 = sub_1E13E24A0;
  v73[1] = v72;
  swift_unknownObjectRetain();
  swift_retain_n();
  swift_retain_n();

  swift_unknownObjectRetain();

  sub_1E1300EA8(v74);
  v75 = (v26 + qword_1EE1E9EA0);
  v76 = *(v26 + qword_1EE1E9EA0);
  v77 = *(v26 + qword_1EE1E9EA0 + 8);
  if (v76)
  {
    v78 = swift_allocObject();
    *(v78 + 16) = v76;
    *(v78 + 24) = v77;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_1E13E24B8;
    *(v79 + 24) = v78;
    v80 = sub_1E13E24C0;
  }

  else
  {
    v80 = 0;
    v79 = *(v26 + qword_1EE1E9EA0 + 8);
  }

  *v75 = v80;
  v75[1] = v79;
  sub_1E1300E34(v76);
  sub_1E1300EA8(v76);
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1E13E2484;
  *(v81 + 24) = v68;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1E13E24A8;
  *(v82 + 24) = v81;
  v83 = (v26 + qword_1EE1E9E08);
  v84 = *(v26 + qword_1EE1E9E08);
  *v83 = sub_1E13E24B0;
  v83[1] = v82;

  sub_1E1300EA8(v84);
  v85 = swift_allocObject();
  *(v85 + 16) = sub_1E13E2490;
  *(v85 + 24) = v70;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1E13E2498;
  *(v86 + 24) = v85;
  v87 = (v26 + qword_1EE1E9E98);
  v88 = *(v26 + qword_1EE1E9E98);
  *v87 = sub_1E13E24A0;
  v87[1] = v86;

  sub_1E1300EA8(v88);

  return v26;
}

uint64_t sub_1E13E0490(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  result = sub_1E1A7DD2C(*a1, a1[1], *(a1 + 16));
  if ((v3 & 0x80000000) == 0)
  {

    v5 = qword_1EE2155E8;
    swift_beginAccess();
    if (!*(v1 + v5))
    {
      v6 = *&v2[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason];
      v7 = *&v2[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_unavailableReason + 8];
      if (!v7)
      {
        v8._countAndFlagsBits = 0xD000000000000017;
        v8._object = 0x80000001E1B5C4C0;
        v9._countAndFlagsBits = 0;
        v9._object = 0xE000000000000000;
        localizedString(_:comment:)(v8, v9);
        v11 = *(v1 + qword_1EE215580);
        v10 = *(v1 + qword_1EE215580 + 8);
        if (v10)
        {
          v12 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v12 = v11 & 0xFFFFFFFFFFFFLL;
          }

          if (v12)
          {
            v13._object = 0x80000001E1B5C4E0;
            v13._countAndFlagsBits = 0xD000000000000011;
            v14._countAndFlagsBits = 0;
            v14._object = 0xE000000000000000;
            localizedString(_:comment:)(v13, v14);
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
            v15 = swift_allocObject();
            *(v15 + 16) = xmmword_1E1B02CC0;
            *(v15 + 56) = MEMORY[0x1E69E6158];
            *(v15 + 64) = sub_1E13C2F48();
            *(v15 + 32) = v11;
            *(v15 + 40) = v10;

            sub_1E1AF5DCC();
          }
        }
      }

      sub_1E13E231C(v6, v7);
      sub_1E1AF5BCC();
    }
  }

  return result;
}

uint64_t sub_1E13E06E4(uint64_t a1, char a2)
{
  sub_1E1A811A0(a1, a2);
  v4 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_isAutoPlayEnabled);
  v5 = qword_1EE2155B0;
  swift_beginAccess();
  v53 = v4;
  v52 = v5;
  *(v2 + v5) = v4;
  v6 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_transparencyLink);
  v7 = qword_1EE2155B8;
  swift_beginAccess();
  v55 = v2;
  *(v2 + v7) = v6;

  v8 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  v54 = v8;
  v9 = *(a1 + v8);
  v10 = MEMORY[0x1E69E7CC0];
  v56[0] = MEMORY[0x1E69E7CC0];
  v11 = *(v9 + 16);
  v12 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping;

  swift_beginAccess();
  if (!v11)
  {
    v15 = v10;
    goto LABEL_14;
  }

  v13 = 0;
  v14 = v9 + 32;
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    v16 = v14 + 40 * v13;
    v17 = v13;
    while (1)
    {
      if (v17 >= *(v9 + 16))
      {
        goto LABEL_59;
      }

      sub_1E134E724(v16, &_);
      if (!*(*(a1 + v12) + 16))
      {
        goto LABEL_4;
      }

      sub_1E135FCF4(&_);
      if (v18)
      {
        break;
      }

LABEL_4:
      ++v17;
      sub_1E134B88C(&_);
      v16 += 40;
      if (v11 == v17)
      {
        goto LABEL_14;
      }
    }

    v19 = sub_1E134B88C(&_);
    MEMORY[0x1E68FEF20](v19);
    if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v13 = v17 + 1;
    sub_1E1AF62AC();
    v15 = v56[0];
    v14 = v9 + 32;
  }

  while (v11 - 1 != v17);
LABEL_14:

  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    goto LABEL_61;
  }

  v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v21 = 0;
    v22 = 0;
    while (v20 != v21)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1E68FFD80](v21, v15);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v21 >= *(v16 + 16))
        {
          goto LABEL_57;
        }

        if (__OFADD__(v21, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      v24 = *(*(v23 + 24) + 16);

      ++v21;
      v25 = __OFADD__(v22, v24);
      v22 += v24;
      if (v25)
      {
        goto LABEL_58;
      }
    }

    v26 = qword_1EE2155E8;
    v27 = v55;
    swift_beginAccess();
    *(v55 + v26) = v22;
    v15 = *(a1 + v54);
    v57 = v10;
    v28 = *(v15 + 16);

    swift_beginAccess();
    if (v28)
    {
      v29 = 0;
      v30 = v15 + 32;
      v10 = MEMORY[0x1E69E7CC0];
      v54 = v15 + 32;
LABEL_29:
      v31 = v30 + 40 * v29;
      v16 = v29;
      while (v16 < *(v15 + 16))
      {
        sub_1E134E724(v31, v56);
        if (*(*(a1 + v12) + 16))
        {

          sub_1E135FCF4(v56);
          if (v32)
          {

            v33 = sub_1E134B88C(v56);
            MEMORY[0x1E68FEF20](v33);
            if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E1AF625C();
            }

            v29 = v16 + 1;
            sub_1E1AF62AC();
            v10 = v57;
            v30 = v15 + 32;
            v27 = v55;
            if (v28 - 1 != v16)
            {
              goto LABEL_29;
            }

            goto LABEL_40;
          }
        }

        ++v16;
        sub_1E134B88C(v56);
        v31 += 40;
        if (v28 == v16)
        {
          v27 = v55;
          goto LABEL_40;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      v20 = sub_1E1AF71CC();
      continue;
    }

    break;
  }

LABEL_40:

  if (v10 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_42;
    }

LABEL_63:

    goto LABEL_64;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_63;
  }

LABEL_42:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x1E68FFD80](0, v10);
LABEL_45:

    v35 = *(v34 + 24);

    if (!*(v35 + 16))
    {
      goto LABEL_63;
    }

    sub_1E1300B24(v35 + 32, &_);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
    type metadata accessor for AdvertsSearchResult();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_64;
    }

    v15 = *(v56[0] + OBJC_IVAR____TtC11AppStoreKit19AdvertsSearchResult_lockups);
    if (v15 >> 62)
    {
      goto LABEL_71;
    }

    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v10 + 32);

      goto LABEL_45;
    }

    __break(1u);
LABEL_71:
    if (!sub_1E1AF71CC())
    {
LABEL_72:

      goto LABEL_64;
    }
  }

  if ((v15 & 0xC000000000000001) == 0)
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v15 + 32);

      goto LABEL_52;
    }

    __break(1u);
LABEL_81:
    MEMORY[0x1E68FFD80](0, v15);

    swift_unknownObjectRelease();
LABEL_64:
    v37 = 0;
    goto LABEL_65;
  }

  v10 = MEMORY[0x1E68FFD80](0, v15);

LABEL_52:
  v15 = *(v10 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_trailers);
  if (!(v15 >> 62))
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_75;
    }

    goto LABEL_54;
  }

  if (sub_1E1AF71CC())
  {
LABEL_54:
    if ((v15 & 0xC000000000000001) != 0)
    {
      goto LABEL_81;
    }

    v36 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v36)
    {
      goto LABEL_64;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_75:
  v51 = *(v10 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_screenshots);
  if (v51 >> 62)
  {
    result = sub_1E1AF71CC();
    if (!result)
    {
      goto LABEL_83;
    }

LABEL_77:
    if ((v51 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E68FFD80](0, v51);
      swift_unknownObjectRelease();
    }

    else if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    goto LABEL_64;
  }

  result = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_77;
  }

LABEL_83:

  v37 = 1;
LABEL_65:
  *(v27 + qword_1EE1D4CB8) = v37;
  sub_1E1AF5BCC();
  if (*(v27 + v26))
  {
    *(v27 + v52) = v53;
    v38 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 8);
    v39 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 16);
    v40 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 24);
    _.value.facetGroups._rawValue = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets);
    _.value.resetButtonTitle.value._countAndFlagsBits = v38;
    _.value.resetButtonTitle.value._object = v39;
    _.value.allowsResetButton = v40;
    v41._rawValue = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_selectedFacetOptions);
    sub_1E13C0418(_.value.facetGroups._rawValue);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(&_, v41);
    sub_1E13C045C(_.value.facetGroups._rawValue);
    _.value.facetGroups._rawValue = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_message);

    sub_1E1AF5BCC();
  }

  else
  {
    v42 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 8);
    v43 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 16);
    v44 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets + 24);
    _.value.facetGroups._rawValue = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_facets);
    _.value.resetButtonTitle.value._countAndFlagsBits = v42;
    _.value.resetButtonTitle.value._object = v43;
    _.value.allowsResetButton = v44;
    v45._rawValue = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_selectedFacetOptions);
    sub_1E13C0418(_.value.facetGroups._rawValue);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(&_, v45);
    sub_1E13C045C(_.value.facetGroups._rawValue);
  }

  v46 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchClearAction);
  v47 = qword_1EE215590;
  swift_beginAccess();
  *(v27 + v47) = v46;

  v48 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_searchCancelAction);
  v49 = qword_1EE215598;
  swift_beginAccess();
  *(v27 + v49) = v48;
}

uint64_t sub_1E13E0FA8(double a1)
{
  v3 = qword_1EE2155B8;
  swift_beginAccess();
  if (!*(v1 + v3))
  {
    return 0;
  }

  v4 = ASKDeviceTypeGetCurrent();
  v5 = sub_1E1AF5DFC();
  v7 = v6;
  if (v5 == sub_1E1AF5DFC() && v7 == v8)
  {

    goto LABEL_18;
  }

  v10 = sub_1E1AF74AC();

  if (v10)
  {
    goto LABEL_17;
  }

  v11 = sub_1E1AF5DFC();
  v13 = v12;
  if (v11 == sub_1E1AF5DFC() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_1E1AF74AC();

    if ((v16 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (a1 == 1.0)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_30:
  v24 = sub_1E1AF5DFC();
  v26 = v25;
  if (v24 == sub_1E1AF5DFC() && v26 == v27)
  {

    goto LABEL_35;
  }

  v28 = sub_1E1AF74AC();

  if ((v28 & 1) == 0)
  {
    v29 = sub_1E1AF5DFC();
    v31 = v30;
    if (v29 == sub_1E1AF5DFC() && v31 == v32)
    {
    }

    else
    {
      v33 = sub_1E1AF74AC();

      if ((v33 & 1) == 0)
      {
LABEL_44:
        v34 = sub_1E1AF5DFC();
        v36 = v35;
        if (v34 == sub_1E1AF5DFC() && v36 == v37)
        {

          goto LABEL_48;
        }

        v38 = sub_1E1AF74AC();

        if (v38)
        {
LABEL_48:
          if (a1 == 3.0)
          {
            v18 = 9;
            goto LABEL_19;
          }
        }

LABEL_18:
        v18 = 5;
        goto LABEL_19;
      }
    }

    if (a1 == 2.0)
    {

      v18 = 10;
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_35:
  if (*(v1 + qword_1EE1D4CB8))
  {
    v18 = 11;
  }

  else
  {
    v18 = 10;
  }

LABEL_19:
  v19 = qword_1EE2155E8;
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20 < v18 && v20 >= 1)
  {
    v22 = *(*v1 + 704);
    swift_beginAccess();
    sub_1E136073C(v1 + v22, &v43);
    *&v40[9] = *&v44[9];
    v39 = v43;
    *v40 = *v44;
    if (v44[24])
    {
      sub_1E1301CF0(&v39, &v41);
    }

    else
    {

      v41 = v39;
      v42 = *v40;
    }

    v39 = v41;
    *v40 = v42;
    v23 = *(&v42 + 1);
    sub_1E1308058(&v39, &qword_1ECEB2DF0);
    if (!v23)
    {
      v18 = *(v1 + v19);
    }
  }

  result = v18 - 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  return result;
}