uint64_t sub_1A2C9C79C(uint64_t (*a1)(void))
{
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08094();
  __swift_project_value_buffer(v2, qword_1ED709870);
  v3 = sub_1A2D08074();
  v4 = sub_1A2D086A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, v3, v4, "Activity feed cancelled", v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }

  return a1();
}

uint64_t ActivityOutputClient.descriptor(id:)()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  return sub_1A2D08704();
}

uint64_t ActivityOutputClient.descriptors(matching:)(uint64_t *a1)
{
  v3 = type metadata accessor for ActivityDescriptor();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v43 - v9);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[3];
  v62 = a1[2];
  v64 = v13;
  v15 = a1[4];
  v14 = a1[5];
  v16 = a1[6];
  v17 = *(v1 + 24);
  v18 = *(v17 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  v65 = v17;
  v19 = v63;
  result = sub_1A2D08704();
  if (!v19)
  {
    v43 = 0;
    v57 = v14;
    v58 = v15;
    result = v67;
    v51 = *(v67 + 16);
    if (v51)
    {
      v56 = v16;
      v21 = 0;
      v49 = v58 & 0x1010101;
      v52 = MEMORY[0x1E69E7CC0];
      v22 = v64;
      v48 = v4;
      v47 = v8;
      v46 = v10;
      v45 = v11;
      v44 = v12;
      v50 = v67;
      while (v21 < *(result + 16))
      {
        v54 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v23 = *(v4 + 72);
        v55 = v21;
        v53 = v23;
        result = sub_1A2C7BFE4(result + v54 + v23 * v21, v10, type metadata accessor for ActivityDescriptor);
        if (v22)
        {
          v61 = v61 & 0xFFFFFFFF00000000 | v49;
          v24 = v10[13];
          v60 = *(v24 + 16);
          if (v60)
          {
            v25 = 0;
            v26 = (v24 + 48);
            v27 = v24;
            v59 = v24;
            while (1)
            {
              if (v25 >= *(v27 + 16))
              {
                __break(1u);
                goto LABEL_43;
              }

              v28 = *(v26 - 2);
              v30 = *(v26 - 1);
              v32 = *v26;
              v31 = v26[1];
              v33 = v26[2];
              v74 = *(v26 + 3);
              if (*(v26 + 40) == 1)
              {
                v67 = v28;
                v68 = v30;
                v34 = v32;
                v69 = v32;
                v70 = v31;
                v35 = v31;
                v36 = v33;
                v71 = v33;
                v72 = v74;
                v73 = 1;
                sub_1A2C6BD18(&v67, v66, &qword_1EB0A0218, &qword_1A2D0A8F0);
                v29 = v62;
                if (v30)
                {
                  if (v28 == v62 && v30 == v22)
                  {
                    LODWORD(v63) = 1;
                  }

                  else
                  {
                    LODWORD(v63) = sub_1A2D08B34();
                  }

                  sub_1A2CA0190(v29, v22);
                  sub_1A2CA0190(v28, v30);
                  sub_1A2C5E574(v62, v64);
                  v67 = v28;
                  v68 = v30;
                  v69 = v34;
                  v70 = v35;
                  v71 = v36;
                  sub_1A2C7337C(&v67);
                  result = sub_1A2C5E574(v28, v30);
                  v27 = v59;
                  if (v63)
                  {
                    v37 = 1;
                    v4 = v48;
                    v8 = v47;
                    v10 = v46;
                    v11 = v45;
                    v12 = v44;
                    v22 = v64;
                    if (v44)
                    {
                      goto LABEL_29;
                    }

                    goto LABEL_31;
                  }

                  goto LABEL_12;
                }

                v63 = v36;
              }

              else
              {
                v63 = 0;
                v28 = 0;
                v29 = v62;
              }

              sub_1A2CA0190(v29, v22);
              sub_1A2C5E574(v28, 0);
              result = sub_1A2C5E574(v29, v22);
              v27 = v59;
LABEL_12:
              ++v25;
              v26 += 8;
              v22 = v64;
              if (v60 == v25)
              {
                v37 = 0;
                v4 = v48;
                v8 = v47;
                v10 = v46;
                v11 = v45;
                v12 = v44;
                if (v44)
                {
                  goto LABEL_29;
                }

LABEL_31:
                if (v37)
                {
                  goto LABEL_34;
                }

LABEL_4:
                sub_1A2C73F50(v10, type metadata accessor for ActivityDescriptor);
                goto LABEL_5;
              }
            }
          }

          v37 = 0;
          if (!v12)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v37 = 1;
          if (!v12)
          {
            goto LABEL_31;
          }
        }

LABEL_29:
        if (v10[2] == v11 && v12 == v10[3])
        {
          goto LABEL_31;
        }

        if ((v37 & sub_1A2D08B34() & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_34:
        sub_1A2C725C0(v10, v8, type metadata accessor for ActivityDescriptor);
        v38 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v38;
        v75 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A2CA014C(0, *(v38 + 16) + 1, 1);
          v40 = v75;
        }

        v42 = *(v40 + 16);
        v41 = *(v40 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1A2CA014C(v41 > 1, v42 + 1, 1);
          v40 = v75;
        }

        *(v40 + 16) = v42 + 1;
        v52 = v40;
        sub_1A2C725C0(v8, v40 + v54 + v42 * v53, type metadata accessor for ActivityDescriptor);
        v22 = v64;
LABEL_5:
        v21 = v55 + 1;
        result = v50;
        if (v55 + 1 == v51)
        {
          goto LABEL_40;
        }
      }

LABEL_43:
      __break(1u);
    }

    else
    {
      v52 = MEMORY[0x1E69E7CC0];
LABEL_40:

      return v52;
    }
  }

  return result;
}

uint64_t ActivityOutputClient.currentActivities()()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  v7 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue;
  v8 = *(v6 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  *v5 = v8;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8018], v1);
  v9 = v8;
  LOBYTE(v8) = sub_1A2D08364();
  result = (*(v2 + 8))(v5, v1);
  if (v8)
  {
    v11 = *(v6 + v7);
    MEMORY[0x1EEE9AC00](result);
    v12[-2] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0190, &qword_1A2D0A890);
    sub_1A2D08704();
    return v12[1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivityOutputClient.observePayloads(id:feed:)(uint64_t a1, uint64_t a2, char *a3)
{
  v36 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0220, &qword_1A2D0A8F8);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0228, &qword_1A2D0A900);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0230, &qword_1A2D0A908);
  v39 = *(v41 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v15 = v32 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0238, &qword_1A2D0A910);
  v40 = *(v42 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v18 = v32 - v17;
  v19 = *a3;
  ActivityOutputClient.observeActivities()();
  if (!v3)
  {
    v45 = v20;
    v32[0] = v20;
    v35 = 0;
    v21 = swift_allocObject();
    v33 = v18;
    v22 = v36;
    *(v21 + 16) = v36;
    *(v21 + 24) = a2;
    *(v21 + 32) = v19;

    v34 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01B0, &qword_1A2D0A8A0);
    v32[1] = MEMORY[0x1E695BED8];
    sub_1A2C56A78(&unk_1ED7092B8, &unk_1EB0A01B0, &qword_1A2D0A8A0);
    sub_1A2D08254();

    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a2;
    *(v23 + 32) = v19;

    sub_1A2D080B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0240, &qword_1A2D0A918);
    sub_1A2C56A78(&unk_1EB09EEC8, &qword_1EB0A0228, &qword_1A2D0A900);
    sub_1A2C56A78(&qword_1EB09EEB0, &unk_1EB0A0240, &qword_1A2D0A918);
    v24 = v38;
    sub_1A2D082A4();

    (*(v37 + 8))(v12, v24);
    sub_1A2C56A78(&unk_1EB09EEB8, &qword_1EB0A0230, &qword_1A2D0A908);
    sub_1A2C586F0(&qword_1EB09F1F0, type metadata accessor for OpaqueActivityPayload);
    v25 = v33;
    v26 = v41;
    sub_1A2D08274();
    (*(v39 + 8))(v15, v26);
    sub_1A2C56A78(&unk_1EB09EED8, &qword_1EB0A0238, &qword_1A2D0A910);
    v27 = v42;
    v28 = sub_1A2D081F4();
    (*(v40 + 8))(v25, v27);
    v45 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0250, &qword_1A2D0A920);
    v29 = v43;
    sub_1A2D08204();
    sub_1A2C56A78(&qword_1EB09EEE8, &qword_1EB0A0220, &qword_1A2D0A8F8);
    v30 = v34;
    a2 = sub_1A2D081F4();

    (*(v44 + 8))(v29, v30);
  }

  return a2;
}

uint64_t sub_1A2C9D740(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for SubscribedActivity(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v20 = *a1;
  if (!*(v20 + 16))
  {
    return 0;
  }

  v21 = sub_1A2C64868(a2, a3);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  sub_1A2C7BFE4(*(v20 + 56) + *(v13 + 72) * v21, v17, type metadata accessor for SubscribedActivity);
  sub_1A2C725C0(v17, v19, type metadata accessor for SubscribedActivity);
  v23 = *&v19[*(v12 + 28)];
  if (*(v23 + 16) && (v24 = sub_1A2C7C7B4(a4 & 1), (v25 & 1) != 0))
  {
    v26 = v24;
    v27 = *(v23 + 56);
    v28 = type metadata accessor for OpaqueActivityPayload(0);
    v29 = *(v28 - 8);
    sub_1A2C7BFE4(v27 + *(v29 + 72) * v26, v11, type metadata accessor for OpaqueActivityPayload);
    v30 = 1;
    (*(v29 + 56))(v11, 0, 1, v28);
  }

  else
  {
    v32 = type metadata accessor for OpaqueActivityPayload(0);
    (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
    v30 = 0;
  }

  sub_1A2C54E38(v11, &qword_1EB0A02E0, &qword_1A2D0AA50);
  sub_1A2C73F50(v19, type metadata accessor for SubscribedActivity);
  return v30;
}

uint64_t sub_1A2C9DA0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v38 = a4;
  v39 = a2;
  v40 = a3;
  v37 = a5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A03C8, &qword_1A2D0AAC8);
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v33 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A03D0, &unk_1A2D0AAD0);
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v33 - v11;
  v13 = type metadata accessor for OpaqueActivityPayload(0);
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v20 = type metadata accessor for SubscribedActivity(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1A2C64868(v39, v40);
  if ((v27 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = sub_1A2C7BFE4(*(v26 + 56) + *(v21 + 72) * result, v25, type metadata accessor for SubscribedActivity);
  v28 = *&v25[*(v20 + 28)];
  if (!*(v28 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1A2C7C7B4(v38 & 1);
  if (v29)
  {
    sub_1A2C7BFE4(*(v28 + 56) + *(v33 + 72) * result, v19, type metadata accessor for OpaqueActivityPayload);
    sub_1A2C7BFE4(v19, v17, type metadata accessor for OpaqueActivityPayload);
    sub_1A2D081D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
    v30 = v35;
    sub_1A2D081C4();
    (*(v6 + 8))(v9, v30);
    sub_1A2C56A78(&qword_1EB09EE78, &unk_1EB0A03D0, &unk_1A2D0AAD0);
    v31 = v36;
    v32 = sub_1A2D081F4();
    (*(v34 + 8))(v12, v31);
    sub_1A2C73F50(v19, type metadata accessor for OpaqueActivityPayload);
    result = sub_1A2C73F50(v25, type metadata accessor for SubscribedActivity);
    *v37 = v32;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1A2C9DE20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for OpaqueActivityPayload(0);
  a2[4] = &protocol witness table for OpaqueActivityPayload;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1A2C7BFE4(a1, boxed_opaque_existential_1, type metadata accessor for OpaqueActivityPayload);
}

uint64_t ActivityOutputClient.observeDescriptors(matching:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0260, &qword_1A2D0A928);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v26 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0268, &qword_1A2D0A930);
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0270, &qword_1A2D0A938);
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  v16 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v16;
  v36[2] = *(a1 + 32);
  v37 = *(a1 + 48);
  v17 = ActivityOutputClient.observeDescriptors()();
  if (!v2)
  {
    v38 = v17;
    v31 = 0;
    v18 = swift_allocObject();
    v30 = v4;
    v19 = *(a1 + 16);
    *(v18 + 16) = *a1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(a1 + 32);
    *(v18 + 64) = *(a1 + 48);
    sub_1A2C63D94(v36, v35);
    v26[2] = sub_1A2D080B4();
    v29 = v5;
    v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0150, &qword_1A2D0A858);
    v28 = v8;
    v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0278, &qword_1A2D0A940);
    v27 = v12;
    sub_1A2C56A78(&unk_1EB09EB90, &qword_1EB0A0150, &qword_1A2D0A858);
    sub_1A2C56A78(&qword_1EB09EBA0, &qword_1EB0A0278, &qword_1A2D0A940);
    sub_1A2D082A4();

    sub_1A2C56A78(&qword_1EB09EBD8, &qword_1EB0A0268, &qword_1A2D0A930);
    sub_1A2C9EE14();
    v20 = v34;
    sub_1A2D08274();
    (*(v32 + 8))(v11, v20);
    sub_1A2C56A78(&qword_1EB09EBF0, &qword_1EB0A0270, &qword_1A2D0A938);
    v21 = v27;
    v22 = sub_1A2D081F4();
    (*(v33 + 8))(v15, v21);
    v35[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0158, &qword_1A2D0A860);
    v23 = v28;
    sub_1A2D08204();
    sub_1A2C56A78(&qword_1EB09EBF8, &qword_1EB0A0260, &qword_1A2D0A928);
    v24 = v30;
    v1 = sub_1A2D081F4();

    (*(v29 + 8))(v23, v24);
  }

  return v1;
}

uint64_t sub_1A2C9E360@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A03B0, &qword_1A2D0AAB8);
  v35 = *(v37 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v33 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A03B8, &qword_1A2D0AAC0);
  v36 = *(v38 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v33 - v8;
  v9 = type metadata accessor for ActivityDescriptor();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - v16;
  v18 = *a1;
  v42 = *(*a1 + 16);
  if (v42)
  {
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v40 = v14;
    v41 = v10;
    while (v19 < *(v18 + 16))
    {
      v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v22 = *(v10 + 72);
      sub_1A2C7BFE4(v18 + v21 + v22 * v19, v17, type metadata accessor for ActivityDescriptor);
      v23 = a2[1];
      v43 = *a2;
      v44 = v23;
      v45 = a2[2];
      v46 = *(a2 + 6);
      if (ActivityPredicate.matches(descriptor:)(v17))
      {
        sub_1A2C725C0(v17, v14, type metadata accessor for ActivityDescriptor);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A2CA014C(0, *(v20 + 16) + 1, 1);
          v20 = v47;
        }

        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1A2CA014C(v25 > 1, v26 + 1, 1);
          v20 = v47;
        }

        *(v20 + 16) = v26 + 1;
        v27 = v20 + v21 + v26 * v22;
        v14 = v40;
        result = sub_1A2C725C0(v40, v27, type metadata accessor for ActivityDescriptor);
        v10 = v41;
      }

      else
      {
        result = sub_1A2C73F50(v17, type metadata accessor for ActivityDescriptor);
      }

      if (v42 == ++v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *&v43 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0158, &qword_1A2D0A860);
    v28 = v33;
    sub_1A2D081D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
    v29 = v34;
    v30 = v37;
    sub_1A2D081C4();
    (*(v35 + 8))(v28, v30);
    sub_1A2C56A78(&qword_1EB09EB10, &unk_1EB0A03B8, &qword_1A2D0AAC0);
    v31 = v38;
    v32 = sub_1A2D081F4();
    result = (*(v36 + 8))(v29, v31);
    *v39 = v32;
  }

  return result;
}

uint64_t ActivityOutputClient.observeDescriptorStates(matching:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0280, &qword_1A2D0A948);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v26 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0288, &qword_1A2D0A950);
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0290, &qword_1A2D0A958);
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  v16 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v16;
  v36[2] = *(a1 + 32);
  v37 = *(a1 + 48);
  ActivityOutputClient.observeDescriptorStates()();
  if (!v2)
  {
    v38 = v17;
    v31 = 0;
    v18 = swift_allocObject();
    v30 = v4;
    v19 = *(a1 + 16);
    *(v18 + 16) = *a1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(a1 + 32);
    *(v18 + 64) = *(a1 + 48);
    sub_1A2C63D94(v36, v35);
    v26[2] = sub_1A2D080B4();
    v29 = v5;
    v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0148, &qword_1A2D0A850);
    v28 = v8;
    v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0298, &qword_1A2D0A960);
    v27 = v12;
    sub_1A2C56A78(&unk_1EB09F510, &qword_1EB0A0148, &qword_1A2D0A850);
    sub_1A2C56A78(&unk_1EB09F520, &qword_1EB0A0298, &qword_1A2D0A960);
    sub_1A2D082A4();

    sub_1A2C56A78(&qword_1EB09F538, &qword_1EB0A0288, &qword_1A2D0A950);
    sub_1A2CA001C();
    v20 = v34;
    sub_1A2D08274();
    (*(v32 + 8))(v11, v20);
    sub_1A2C56A78(&qword_1EB09F550, &qword_1EB0A0290, &qword_1A2D0A958);
    v21 = v27;
    v22 = sub_1A2D081F4();
    (*(v33 + 8))(v15, v21);
    v35[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01C0, &qword_1A2D0A8A8);
    v23 = v28;
    sub_1A2D08204();
    sub_1A2C56A78(&qword_1EB09F568, &qword_1EB0A0280, &qword_1A2D0A948);
    v24 = v30;
    v1 = sub_1A2D081F4();

    (*(v29 + 8))(v23, v24);
  }

  return v1;
}

uint64_t sub_1A2C9EC84()
{
  v1 = *(*(*v0 + 24) + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  return sub_1A2D08704();
}

uint64_t sub_1A2C9ED34(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = 0;
  return ActivityOutputClient.observePayloads(id:feed:)(a1, a2, &v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1A2C9EE14()
{
  result = qword_1EB09EB20;
  if (!qword_1EB09EB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0158, &qword_1A2D0A860);
    sub_1A2C586F0(qword_1EB09EDD0, type metadata accessor for ActivityDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EB20);
  }

  return result;
}

id sub_1A2C9EF24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Singleton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A2C9F034(void *a1@<X8>)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ActivityDescriptor();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A2C54EB4();
  if (!v8)
  {
    if (qword_1ED709860 != -1)
    {
      swift_once();
    }

    v39 = sub_1A2D08094();
    __swift_project_value_buffer(v39, qword_1ED709870);
    v40 = sub_1A2D08074();
    v41 = sub_1A2D08684();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1A2C51000, v40, v41, "Remote target does not exist", v42, 2u);
      MEMORY[0x1A58E5180](v42, -1, -1);
    }

    sub_1A2CA0368();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
    goto LABEL_22;
  }

  v9 = v8;
  v64[0] = 0;
  v10 = [v8 activityDescriptorsWithError_];
  v11 = v64[0];
  if (!v10)
  {
    v44 = v11;
    sub_1A2D07ED4();

    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_22:
    v51 = *MEMORY[0x1E69E9840];
    return;
  }

  v60 = v4;
  v12 = sub_1A2D07F44();
  v14 = v13;

  v61 = v12;
  v62 = v14;
  v15 = sub_1A2D07F24();
  v16 = sub_1A2D07E84();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v19 = sub_1A2D07F44();
  v21 = v20;
  sub_1A2CA0420();
  sub_1A2D07E64();
  v22 = v19;
  v23 = v21;
  if (!v1)
  {
    sub_1A2C55840(v19, v21);

    v24 = v64[0];
    if (v64[0])
    {

      if (qword_1ED709860 != -1)
      {
        swift_once();
      }

      v25 = sub_1A2D08094();
      __swift_project_value_buffer(v25, qword_1ED709870);

      v26 = sub_1A2D08074();
      v27 = sub_1A2D086A4();

      if (os_log_type_enabled(v26, v27))
      {
        v58 = v27;
        v59 = 0;
        v28 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v64[0] = v56;
        v57 = v28;
        *v28 = 136446210;
        v29 = v24[2];
        v30 = MEMORY[0x1E69E7CC0];
        if (v29)
        {
          v52 = v26;
          v54 = v9;
          v55 = a1;
          v63 = MEMORY[0x1E69E7CC0];
          sub_1A2C7F170(0, v29, 0);
          v30 = v63;
          v31 = *(v60 + 80);
          v53 = v24;
          v32 = v24 + ((v31 + 32) & ~v31);
          v33 = *(v60 + 72);
          do
          {
            sub_1A2C7BFE4(v32, v7, type metadata accessor for ActivityDescriptor);
            v34 = *v7;
            v35 = v7[1];

            sub_1A2C73F50(v7, type metadata accessor for ActivityDescriptor);
            v63 = v30;
            v37 = *(v30 + 16);
            v36 = *(v30 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_1A2C7F170((v36 > 1), v37 + 1, 1);
              v30 = v63;
            }

            *(v30 + 16) = v37 + 1;
            v38 = v30 + 16 * v37;
            *(v38 + 32) = v34;
            *(v38 + 40) = v35;
            v32 += v33;
            --v29;
          }

          while (v29);
          a1 = v55;
          v26 = v52;
          v24 = v53;
        }

        v45 = MEMORY[0x1A58E4220](v30, MEMORY[0x1E69E6158]);
        v47 = v46;

        v48 = sub_1A2C55558(v45, v47, v64);

        v49 = v57;
        *(v57 + 1) = v48;
        _os_log_impl(&dword_1A2C51000, v26, v58, "Fetched descriptors: %{public}s", v49, 0xCu);
        v50 = v56;
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x1A58E5180](v50, -1, -1);
        MEMORY[0x1A58E5180](v49, -1, -1);
        sub_1A2C55840(v61, v62);
        swift_unknownObjectRelease();

        *a1 = v24;
      }

      else
      {
        sub_1A2C55840(v61, v62);
        swift_unknownObjectRelease();

        *a1 = v24;
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  sub_1A2C55840(v22, v23);
  swift_unexpectedError();
  __break(1u);
}

void sub_1A2C9F5AC(uint64_t a1@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  v2 = *(*(v38 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v38);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v36 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v36 - v9;
  v11 = sub_1A2C54EB4();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A2D08434();
    v14 = [v12 activityDescriptorForIdentifier_];

    if (v14)
    {
      v15 = sub_1A2D07F44();
      v17 = v16;

      sub_1A2C5E63C(v15, v17);
      v18 = sub_1A2D07F24();
      sub_1A2C55840(v15, v17);
      if (v18)
      {
        sub_1A2CB4EFC(v18, v10);

        v19 = type metadata accessor for ActivityDescriptor();
        (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
LABEL_12:
        sub_1A2C639DC(v10, a1, &qword_1EB0A0210, &unk_1A2D0ACA0);
        if (qword_1ED709860 != -1)
        {
          swift_once();
        }

        v26 = sub_1A2D08094();
        __swift_project_value_buffer(v26, qword_1ED709870);
        sub_1A2C6BD18(a1, v8, &qword_1EB0A0210, &unk_1A2D0ACA0);
        v27 = sub_1A2D08074();
        v28 = sub_1A2D086A4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v37 = v15;
          v31 = v30;
          v39 = v30;
          *v29 = 136380675;
          v36[1] = v12;
          sub_1A2C6BD18(v8, v5, &qword_1EB0A0210, &unk_1A2D0ACA0);
          v32 = sub_1A2D08454();
          v38 = v17;
          v34 = v33;
          sub_1A2C54E38(v8, &qword_1EB0A0210, &unk_1A2D0ACA0);
          v35 = sub_1A2C55558(v32, v34, &v39);

          *(v29 + 4) = v35;
          _os_log_impl(&dword_1A2C51000, v27, v28, "Fetched descriptor: %{private}s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x1A58E5180](v31, -1, -1);
          MEMORY[0x1A58E5180](v29, -1, -1);
          sub_1A2C5DE40(v37, v38);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1A2C5DE40(v15, v17);

          swift_unknownObjectRelease();
          sub_1A2C54E38(v8, &qword_1EB0A0210, &unk_1A2D0ACA0);
        }

        return;
      }
    }

    else
    {
      v15 = 0;
      v17 = 0xF000000000000000;
    }

    v25 = type metadata accessor for ActivityDescriptor();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    goto LABEL_12;
  }

  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v20 = sub_1A2D08094();
  __swift_project_value_buffer(v20, qword_1ED709870);
  v21 = sub_1A2D08074();
  v22 = sub_1A2D08684();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1A2C51000, v21, v22, "Remote target does not exist", v23, 2u);
    MEMORY[0x1A58E5180](v23, -1, -1);
  }

  sub_1A2CA0368();
  swift_allocError();
  *v24 = 0;
  swift_willThrow();
}

uint64_t sub_1A2C9FA74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
  swift_beginAccess();
  *a2 = *(a1 + v4);
}

uint64_t sub_1A2C9FAD8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v4 = sub_1A2D08094();
  __swift_project_value_buffer(v4, qword_1ED709870);
  v5 = sub_1A2D08074();
  v6 = sub_1A2D086A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1A2C51000, v5, v6, "Client %{public}llu removed", v7, 0xCu);
    MEMORY[0x1A58E5180](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_subscriptions;
  swift_beginAccess();
  v9 = *(a2 + v8);
  v10 = sub_1A2C61290(a1);
  if (v11)
  {
    v12 = v10;
    v13 = *(a2 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a2 + v8);
    *(a2 + v8) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A2CB36F8();
    }

    sub_1A2CA8E14(v12, v15);
    *(a2 + v8) = v15;
  }

  swift_endAccess();
  return sub_1A2C615B4();
}

void sub_1A2C9FCF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A2C9FD4C();
  }
}

void sub_1A2C9FD4C()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2C615B4();
  }

  else
  {
    __break(1u);
    swift_once();
    v8 = sub_1A2D08094();
    __swift_project_value_buffer(v8, qword_1ED709870);
    v9 = v5;
    v10 = sub_1A2D08074();
    v11 = sub_1A2D08684();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[1] = v5;
      v19 = v13;
      *v12 = 136446210;
      v14 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
      v15 = sub_1A2D08454();
      v17 = sub_1A2C55558(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1A2C51000, v10, v11, "Could not reconnect output client: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1A58E5180](v13, -1, -1);
      MEMORY[0x1A58E5180](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1A2C9FFC8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1A2CA001C()
{
  result = qword_1EB09F508;
  if (!qword_1EB09F508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A01C0, &qword_1A2D0A8A8);
    sub_1A2C586F0(&qword_1EB09F5E8, type metadata accessor for ActivityDescriptorState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F508);
  }

  return result;
}

void sub_1A2CA0110(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1A2C9F5AC(a1);
}

size_t sub_1A2CA014C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A2C7E67C(a1, a2, a3, *v3, &unk_1EB0A03F0, &qword_1A2D0AAE0, type metadata accessor for ActivityDescriptor);
  *v3 = result;
  return result;
}

uint64_t sub_1A2CA0190(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A2CA01D4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t objectdestroy_22Tm()
{
  v1 = v0[3];

  if (v0[5])
  {

    v2 = v0[8];
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A2CA02FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribedActivity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A2CA0368()
{
  result = qword_1EB0A0368;
  if (!qword_1EB0A0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0368);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1A2CA0420()
{
  result = qword_1EB09F278;
  if (!qword_1EB09F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F278);
  }

  return result;
}

unint64_t sub_1A2CA0494()
{
  result = qword_1EB0A0438;
  if (!qword_1EB0A0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0438);
  }

  return result;
}

void sub_1A2CA0520()
{
  if (qword_1ED709838 != -1)
  {
    swift_once();
  }

  v0 = sub_1A2D08094();
  __swift_project_value_buffer(v0, qword_1ED709840);
  v1 = sub_1A2D08074();
  v2 = sub_1A2D08674();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A2C51000, v1, v2, "ActivityClient Service: Interrupted", v3, 2u);
    MEMORY[0x1A58E5180](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1A2CA0690();
  }
}

void sub_1A2CA063C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A2C58800(Strong);
  }
}

uint64_t sub_1A2CA0690()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v81 = &i - v4;
  v5 = type metadata accessor for ActivityDescriptor();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &i - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityRequest();
  v75 = *(v8 - 8);
  v9 = *(v75 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &i - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v82 = &i - v13;
  MEMORY[0x1EEE9AC00](v12);
  v74 = &i - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D8, &unk_1A2D0AC80);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v79 = (&i - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v78 = &i - v19;
  v20 = sub_1A2D08344();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&i - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *&v1[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue];
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x1E69E8020], v20);
  v26 = v25;
  LOBYTE(v25) = sub_1A2D08364();
  v28 = *(v21 + 8);
  v27 = v21 + 8;
  v28(v24, v20);
  if ((v25 & 1) == 0)
  {
    while (1)
    {
      __break(1u);
LABEL_36:
      swift_once();
LABEL_11:
      v31 = sub_1A2D08094();
      v32 = __swift_project_value_buffer(v31, qword_1ED709840);
      v33 = v1;
      v71 = v32;
      v34 = sub_1A2D08074();
      v35 = sub_1A2D086A4();
      v36 = os_log_type_enabled(v34, v35);
      v76 = v33;
      if (v36)
      {
        v37 = swift_slowAlloc();
        *v37 = 134349056;
        *(v37 + 4) = *(*&v1[v27] + 16);

        _os_log_impl(&dword_1A2C51000, v34, v35, "Reconnecting %{public}ld activities", v37, 0xCu);
        MEMORY[0x1A58E5180](v37, -1, -1);
      }

      else
      {

        v34 = v33;
      }

      v38 = v79;

      v39 = *&v1[v27];
      v42 = *(v39 + 64);
      v41 = v39 + 64;
      v40 = v42;
      v43 = 1 << *(*&v1[v27] + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & v40;
      v46 = (v43 + 63) >> 6;
      v73 = *&v1[v27];

      v47 = 0;
      v1 = 0;
      *&v48 = 136446210;
      for (i = v48; v45; v47 = v80)
      {
        v27 = v47;
LABEL_29:
        v52 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        v53 = v52 | (v27 << 6);
        v54 = v74;
        v55 = (*(v73 + 48) + 16 * v53);
        v57 = *v55;
        v56 = v55[1];
        sub_1A2C68E98(*(v73 + 56) + *(v75 + 72) * v53, v74, type metadata accessor for ActivityRequest);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04E8, &qword_1A2D0AC90);
        v59 = *(v58 + 48);
        v60 = v79;
        *v79 = v57;
        v60[1] = v56;
        v61 = v54;
        v38 = v60;
        sub_1A2C7C528(v61, v60 + v59, type metadata accessor for ActivityRequest);
        (*(*(v58 - 8) + 56))(v38, 0, 1, v58);

        v80 = v27;
        v1 = 0;
LABEL_30:
        v62 = v78;
        sub_1A2C639DC(v38, v78, &qword_1EB0A04D8, &unk_1A2D0AC80);
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04E8, &qword_1A2D0AC90);
        if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
        {
        }

        v64 = *(v62 + 8);

        v65 = v62 + *(v63 + 48);
        v66 = v82;
        sub_1A2C7C528(v65, v82, type metadata accessor for ActivityRequest);
        v67 = type metadata accessor for AlertConfiguration();
        v68 = v81;
        (*(*(v67 - 8) + 56))(v81, 1, 1, v67);
        v69 = v77;
        sub_1A2C6758C(v66, v68, v77);
        sub_1A2C54E38(v81, &qword_1EB0A04D0, &unk_1A2D15640);
        sub_1A2C69F24(v69, type metadata accessor for ActivityDescriptor);
        sub_1A2C69F24(v82, type metadata accessor for ActivityRequest);
      }

      if (v46 <= v47 + 1)
      {
        v49 = v47 + 1;
      }

      else
      {
        v49 = v46;
      }

      v50 = v49 - 1;
      while (1)
      {
        v27 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v27 >= v46)
        {
          v80 = v50;
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04E8, &qword_1A2D0AC90);
          (*(*(v51 - 8) + 56))(v38, 1, 1, v51);
          v45 = 0;
          goto LABEL_30;
        }

        v45 = *(v41 + 8 * v27);
        ++v47;
        if (v45)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }
  }

  v29 = *&v1[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection];
  if (v29)
  {
    if ([v29 remoteTarget])
    {
      sub_1A2D087F4();
      swift_unknownObjectRelease();
    }

    else
    {
      v83 = 0u;
      v84 = 0u;
    }

    v85 = v83;
    v86 = v84;
    if (*(&v84 + 1))
    {
      return sub_1A2C54E38(&v85, &qword_1EB0A04E0, &unk_1A2D0AA70);
    }
  }

  else
  {
    v85 = 0u;
    v86 = 0u;
  }

  sub_1A2C54E38(&v85, &qword_1EB0A04E0, &unk_1A2D0AA70);
  v27 = OBJC_IVAR____TtC11ActivityKit19ActivityInputClient__queue_ephemeralActivityRequests;
  result = swift_beginAccess();
  if (*(*&v1[v27] + 16))
  {
    sub_1A2C58800(result);
    if (qword_1ED709838 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

  return result;
}

id sub_1A2CA1028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityInputClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CA10B8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
  type metadata accessor for ActivityDescriptor();
  return sub_1A2D08704();
}

uint64_t sub_1A2CA1134(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a14;
  if (a2 >> 60 == 15)
  {
    if (a13)
    {
      v15 = sub_1A2C68B54();
      if (v15)
      {
        v16 = v15;
        v17 = sub_1A2D08434();
        v18 = sub_1A2D08434();
        v19 = sub_1A2D08434();
        v20 = sub_1A2D08384();
        sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
        v21 = sub_1A2D087A4();
        v22 = swift_allocObject();
        *(v22 + 16) = a10;
        *(v22 + 24) = a11;
        v41 = sub_1A2CA15F4;
        v42 = v22;
        aBlock = MEMORY[0x1E69E9820];
        v38 = 1107296256;
        v39 = sub_1A2CA1504;
        v40 = &block_descriptor_63;
        v23 = _Block_copy(&aBlock);

        [v16 mockPushWithChannelID:v17 processIdentifier:v18 environmentName:v19 payload:v20 pushPriority:v21 completionHandler:v23];
        swift_unknownObjectRelease();
        _Block_release(v23);

        v14 = a14;
      }
    }
  }

  else
  {
    sub_1A2C5E63C(a1, a2);
    v26 = sub_1A2C68B54();
    if (v26)
    {
      v27 = v26;
      v36 = sub_1A2D07F24();
      v35 = sub_1A2D08434();
      v28 = sub_1A2D08434();
      v29 = sub_1A2D08384();
      sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
      v30 = sub_1A2D087A4();
      v31 = swift_allocObject();
      *(v31 + 16) = a10;
      *(v31 + 24) = a11;
      v41 = sub_1A2CA1654;
      v42 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v38 = 1107296256;
      v39 = sub_1A2CA1504;
      v40 = &block_descriptor_69;
      v32 = _Block_copy(&aBlock);

      [v27 mockPushWithToken:v36 processIdentifier:v35 environmentName:v28 payload:v29 pushPriority:v30 completionHandler:v32];
      sub_1A2C5DE40(a1, a2);
      swift_unknownObjectRelease();
      _Block_release(v32);
    }

    else
    {
      sub_1A2C5DE40(a1, a2);
    }

    v14 = a14;
  }

  v33 = *(*(v14 + 24) + 16);

  os_unfair_lock_lock(v33);
  sub_1A2C8EB74();
  os_unfair_lock_unlock(v33);
}

void sub_1A2CA1504(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

unint64_t sub_1A2CA1590()
{
  result = qword_1EB09F000;
  if (!qword_1EB09F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F000);
  }

  return result;
}

uint64_t sub_1A2CA15F8(void *a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  return v4([a1 BOOLValue], a2);
}

id ActivityAuthorization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ActivityAuthorization.init()()
{
  *&v0[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock;
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  *&v0[v1] = v2;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ActivityAuthorization();
  v4 = objc_msgSendSuper2(&v9, sel_init);
  v5 = qword_1EB09F638;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *(*&v6[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);

  os_unfair_lock_lock(v7);
  *&v6[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = &off_1F157B848;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v7);

  return v6;
}

char *ActivityAuthorization.__allocating_init(client:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = objc_allocWithZone(v3);
  *&v5[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock;
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *&v5[v6] = v7;
  v13.receiver = v5;
  v13.super_class = v3;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = *(*&v9[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v11 = v9;

  os_unfair_lock_lock(v10);
  *&v11[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v10);

  swift_unknownObjectRelease();

  return v11;
}

char *ActivityAuthorization.init(client:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  *&v2[v4] = v5;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ActivityAuthorization();
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = *(*&v7[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v9 = v7;

  os_unfair_lock_lock(v8);
  *&v9[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v8);

  swift_unknownObjectRelease();

  return v9;
}

void sub_1A2CA1A14(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v7);
  v8 = v3 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = a1 & 1;
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12[0] = v9;
    v12[1] = 2;
    (*(v10 + 48))(a2, a3, v12, ObjectType, v10);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CA1B0C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_8;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(v4 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v9);
  v10 = v4 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = a1 & 1;
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v14[0] = v11;
    v14[1] = v8;
    (*(v12 + 48))(a2, a3, v14, ObjectType, v12);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v9);
    return;
  }

  __break(1u);
LABEL_8:
  sub_1A2D08944();
  __break(1u);
}

void sub_1A2CA1D10(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 64))(a1, a2, ObjectType, v7);
    swift_unknownObjectRelease();

    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CA1DCC(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 72))(a1, a2, ObjectType, v7);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CA1E84(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 80))(a1, a2, ObjectType, v7);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CA1F3C(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 56))(a1, a2, ObjectType, v7);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A2CA2110(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 40))(a1, a2, ObjectType, v8);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
    return v10 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CA2294(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 88))(a1, a2, ObjectType, v8);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
    return v10 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A2CA2418(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v7);
  v8 = v3 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = a1 & 1;
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12[0] = v9;
    v12[1] = 2;
    (*(v10 + 96))(a2, a3, v12, ObjectType, v10);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A2CA2510(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_1A2D08444();
  v11 = v10;
  v12 = a1;
  a6(a3, v9, v11);

  return 1;
}

id ActivityAuthorization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAuthorization();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CA28F4()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09EC40);
  __swift_project_value_buffer(v0, qword_1EB09EC40);
  return sub_1A2D08084();
}

id sub_1A2CA2974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EB09ECD8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB09ECE8;
  v9 = sub_1A2D08434();
  v10 = sub_1A2D08434();
  v14[4] = a5;
  v14[5] = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1A2CA2AC0;
  v14[3] = &block_descriptor_1;
  v11 = _Block_copy(v14);

  v12 = [v8 listenForActivityPresentationWithActivityIdentifier:v9 presenterBundleIdentifier:v10 handler:v11];
  _Block_release(v11);

  return v12;
}

uint64_t sub_1A2CA2AC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1A2CA2C8C(__int128 *a1)
{
  v2 = *a1;
  if (qword_1EB09ECD8 != -1)
  {
    a1 = swift_once();
  }

  v3 = *(qword_1EB09ECE8 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  MEMORY[0x1EEE9AC00](a1);
  sub_1A2D080E4();
  result = sub_1A2D08704();
  if (!v1)
  {
    return v5;
  }

  return result;
}

id ActivityPresentationObservationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityPresentationObservationClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPresentationObservationClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A2CA2E4C()
{
  result = [objc_allocWithZone(_s11ActivityKit9SingletonCMa_0()) init];
  qword_1EB09ECE8 = result;
  return result;
}

uint64_t sub_1A2CA2EDC()
{
  v28 = sub_1A2D086E4();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D086C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1A2D08314();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v27 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue;
  v9 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v26[0] = "resentation-observation";
  v26[1] = v9;
  sub_1A2D082E4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v28);
  *&v0[v27] = sub_1A2D08724();
  v10 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_serverStartupToken] = -1;
  v11 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__presentationPublisher;
  v12 = MEMORY[0x1E69E7CC0];
  aBlock[0] = sub_1A2CAA78C(MEMORY[0x1E69E7CC0]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0568, &qword_1A2D0AD98);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v0[v11] = sub_1A2D081B4();
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_presentations] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_predicates] = v12;
  v16 = *&v0[v10];
  *&v0[v10] = 0;

  v17 = _s11ActivityKit9SingletonCMa_0();
  v30.receiver = v0;
  v30.super_class = v17;
  v18 = objc_msgSendSuper2(&v30, sel_init);
  v19 = *&v18[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1A2CA5B60;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_56;
  v22 = _Block_copy(aBlock);
  v23 = v18;
  v24 = v19;

  dispatch_sync(v24, v22);

  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    return v23;
  }

  __break(1u);
  return result;
}

void sub_1A2CA3344()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CA5B04();
    v9 = v0;
    v10 = sub_1A2D08784();
    if (v10)
    {
      v11 = *&v0[v8];
      *&v9[v8] = v10;
      v12 = v10;

      v13 = swift_allocObject();
      *(v13 + 16) = v9;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A2CA5B58;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_38;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2CA3BAC();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1A2CA35F0(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CA38E8;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_41;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CA38F4;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_44;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CA3900;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_47_0;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CA390C(uint64_t a1, const char *a2)
{
  if (qword_1EB09EC30 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB09EC40);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CA39FC()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2CA3344();
    v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CA3BAC()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CA5AFC;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_29;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09EC30 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB09EC40);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CA3DA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A2CA4714();
  }
}

uint64_t sub_1A2CA3DF8()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CA39FC();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection);
  if (!v8)
  {
    if (qword_1EB09EC30 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1EB09EC40);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "ActivityPresentationObservationClient: Failed to establish a connection", v11, 2u);
      MEMORY[0x1A58E5180](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0560, &qword_1A2D0AD90);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C54E38(v20, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1EB09EC30 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1EB09EC40);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "ActivityPresentationObservationClient: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

uint64_t sub_1A2CA413C(uint64_t *a1)
{
  v2 = v1;
  v39 = *MEMORY[0x1E69E9840];
  v4 = sub_1A2D08344();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = a1[1];
  v11 = *(v2 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  *v8 = v11;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v12 = v11;
  LOBYTE(v11) = sub_1A2D08364();
  (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
  }

  v13 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_predicates;
  swift_beginAccess();
  result = sub_1A2CF6B1C(v9, v10, *(v2 + v13));
  if ((v15 & 1) == 0)
  {
    v16 = result;
    swift_beginAccess();
    sub_1A2CF6D80(v16, &v38);
    swift_endAccess();

    result = sub_1A2CA3DF8();
    if (result)
    {
      v17 = result;
      v18 = *(v2 + v13);

      sub_1A2CA4474(v19, &v37);

      v20 = sub_1A2D07EB4();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      sub_1A2D07EA4();
      sub_1A2CA5AA8();
      v23 = sub_1A2D07E94();
      v25 = v24;

      v26 = sub_1A2D07F24();
      sub_1A2C55840(v23, v25);

      v27 = sub_1A2D07F44();
      v29 = v28;

      v30 = sub_1A2D07F24();
      v37 = 0;
      v31 = [v17 subscribeToActivityPresentationMatchingPredicate:v30 error:&v37];

      if (v31)
      {
        v32 = v37;
        sub_1A2C55840(v27, v29);
      }

      else
      {
        v33 = v37;
        v34 = sub_1A2D07ED4();

        swift_willThrow();
        sub_1A2C55840(v27, v29);
      }

      result = swift_unknownObjectRelease();
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A2CA4474@<X0>(uint64_t result@<X0>, char **a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 40);
    v4 = MEMORY[0x1E69E7CC0];
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      if (!v7)
      {
        v16 = *v3;

        goto LABEL_20;
      }

      v8 = *(v7 + 16);
      v9 = *(v5 + 2);
      v10 = (v9 + v8);
      if (__OFADD__(v9, v8))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        swift_once();
LABEL_40:
        v5 = qword_1EB0A0948;
        v24 = unk_1EB0A0950;

        goto LABEL_38;
      }

      v11 = *v3;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v5 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v17 = v9 + v8;
        }

        else
        {
          v17 = v9;
        }

        v5 = sub_1A2C8A10C(isUniquelyReferenced_nonNull_native, v17, 1, v5);
        if (*(v7 + 16))
        {
LABEL_10:
          if ((*(v5 + 3) >> 1) - *(v5 + 2) < v8)
          {
            goto LABEL_45;
          }

          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = *(v5 + 2);
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_47;
            }

            *(v5 + 2) = v15;
          }

          goto LABEL_20;
        }
      }

      if (v8)
      {
        goto LABEL_42;
      }

LABEL_20:
      if (!v6)
      {
        goto LABEL_4;
      }

      v18 = *(v6 + 16);
      v10 = *(v4 + 2);
      v19 = (v10 + v18);
      if (__OFADD__(v10, v18))
      {
        goto LABEL_43;
      }

      v20 = swift_isUniquelyReferenced_nonNull_native();
      if (v20 && v19 <= *(v4 + 3) >> 1)
      {
        if (*(v6 + 16))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v10 <= v19)
        {
          v21 = v10 + v18;
        }

        else
        {
          v21 = v10;
        }

        v4 = sub_1A2C8A10C(v20, v21, 1, v4);
        if (*(v6 + 16))
        {
LABEL_30:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v18)
          {
            goto LABEL_46;
          }

          swift_arrayInitWithCopy();

          if (v18)
          {
            v22 = *(v4 + 2);
            v14 = __OFADD__(v22, v18);
            v23 = v22 + v18;
            if (v14)
            {
              goto LABEL_48;
            }

            *(v4 + 2) = v23;
          }

          goto LABEL_4;
        }
      }

      if (v18)
      {
        goto LABEL_44;
      }

LABEL_4:
      v3 += 2;
      if (!--v2)
      {
        goto LABEL_35;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
LABEL_35:
  if (!*(v5 + 2) && !*(v4 + 2))
  {

    v10 = a2;
    if (qword_1EB09F6F8 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  v24 = v4;
  v10 = a2;
LABEL_38:
  *v10 = v5;
  v10[1] = v24;
  return result;
}

uint64_t sub_1A2CA4714()
{
  v31[2] = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 24);
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  v8 = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
  }

  result = sub_1A2CA3DF8(v8);
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_predicates;
    swift_beginAccess();
    v12 = *(v0 + v11);

    sub_1A2CA4474(v13, v31);

    v14 = sub_1A2D07EB4();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_1A2D07EA4();
    sub_1A2CA5AA8();
    v17 = sub_1A2D07E94();
    v19 = v18;

    v20 = sub_1A2D07F24();
    sub_1A2C55840(v17, v19);

    v21 = sub_1A2D07F44();
    v23 = v22;

    v24 = sub_1A2D07F24();
    v31[0] = 0;
    v25 = [v10 subscribeToActivityPresentationMatchingPredicate:v24 error:v31];

    if (v25)
    {
      v26 = v31[0];
      sub_1A2C55840(v21, v23);
    }

    else
    {
      v27 = v31[0];
      v28 = sub_1A2D07ED4();

      swift_willThrow();
      sub_1A2C55840(v21, v23);
    }

    result = swift_unknownObjectRelease();
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1A2CA4A00(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A2CA4AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A2D0AD20;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A2D0AD20;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a1;
  v15[7] = a2;
  v16 = *(v6 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  v17 = sub_1A2D080E4();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_1A2D08704();

  v18 = type metadata accessor for CancellableAssertion();
  v19 = objc_allocWithZone(v18);
  v20 = *(v17 + 48);
  v21 = *(v17 + 52);
  swift_allocObject();

  *&v19[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v24.receiver = v19;
  v24.super_class = v18;
  v22 = objc_msgSendSuper2(&v24, sel_init);

  return v22;
}

uint64_t sub_1A2CA4D08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 16))
  {
    v11 = sub_1A2C64868(a2, a3);
    if (v12)
    {
      v13 = *(*(a1 + 56) + 24 * v11 + 16);
      v14 = (v13 + 49);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v16 = *(v14 - 1);
        v17 = *v14;
        if (*(v14 - 17) != a6 || *(v14 - 9) != a7)
        {
          v14 += 24;
          if ((sub_1A2D08B34() & 1) == 0)
          {
            continue;
          }
        }

        v19 = 4;
        v20 = 1;
        v21 = 2;
        if (v16)
        {
          v21 = 3;
        }

        if (v16 != 2)
        {
          v20 = v21;
        }

        v22 = 5;
        if (v16)
        {
          v22 = 6;
        }

        if (v17 == 1)
        {
          v19 = v22;
        }

        if (v17)
        {
          v23 = v19;
        }

        else
        {
          v23 = v20;
        }

        a4(v23);
      }
    }
  }

  return (a4)(0);
}

uint64_t sub_1A2CA4F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v67 = a4;
  v73[5] = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0578, &qword_1A2D0ADA8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v59 - v17;
  v18 = sub_1A2CA3DF8();
  if (!v18)
  {
    sub_1A2CA1590();
    swift_allocError();
    *v56 = xmmword_1A2D0AC20;
    *(v56 + 16) = 0u;
    *(v56 + 32) = 0u;
    *(v56 + 48) = 0u;
    *(v56 + 64) = 0;
    result = swift_willThrow();
LABEL_11:
    v58 = *MEMORY[0x1E69E9840];
    return result;
  }

  v19 = v18;
  v64 = v14;
  v65 = a6;
  v20 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_predicates;
  swift_beginAccess();
  v21 = *(a1 + v20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = a5;
  v69 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1A2CB2A40(0, *(v21 + 2) + 1, 1, v21);
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  v62 = v15;
  v70 = v19;
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1A2CB2A40((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v24 + 1;
  v25 = &v21[16 * v24];
  *(v25 + 4) = v69;
  *(v25 + 5) = a3;
  v61 = a3;
  sub_1A2CA4474(v21, v73);
  v26 = sub_1A2D07EB4();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CA5AA8();
  v29 = v71;
  v30 = sub_1A2D07E94();
  if (!v29)
  {
    v32 = v30;
    v33 = v31;

    v34 = sub_1A2D07F24();
    sub_1A2C55840(v32, v33);

    v35 = sub_1A2D07F44();
    v37 = v36;

    v71 = v35;
    v38 = sub_1A2D07F24();
    v73[0] = 0;
    LOBYTE(v33) = [v70 subscribeToActivityPresentationMatchingPredicate:v38 error:v73];

    v39 = v73[0];
    if (v33)
    {
      v40 = *(a1 + v20);
      *(a1 + v20) = v21;
      v41 = v39;

      v42 = *(a1 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__presentationPublisher);
      v72 = *(a1 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
      v43 = v72;
      v73[0] = v42;
      v44 = sub_1A2D086D4();
      v45 = v66;
      (*(*(v44 - 8) + 56))(v66, 1, 1, v44);

      v59 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0568, &qword_1A2D0AD98);
      sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
      sub_1A2C56A78(&qword_1EB09EB68, &qword_1EB0A0568, &qword_1A2D0AD98);
      sub_1A2C8B9D4();
      v60 = v37;
      v46 = v68;
      sub_1A2D08264();
      sub_1A2C54E38(v45, &qword_1EB0A0570, &qword_1A2D0ADA0);

      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      v49 = v69;
      v48[2] = v47;
      v48[3] = v49;
      v50 = v61;
      v48[4] = v61;
      v51 = swift_allocObject();
      v51[2] = v49;
      v51[3] = v50;
      v52 = v63;
      v51[4] = v67;
      v51[5] = v52;
      sub_1A2C56A78(&qword_1EB09EBB8, &qword_1EB0A0578, &qword_1A2D0ADA8);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v53 = v64;
      v54 = sub_1A2D08224();
      sub_1A2C55840(v71, v60);
      swift_unknownObjectRelease();

      result = (*(v62 + 8))(v46, v53);
      *v65 = v54;
    }

    else
    {
      v57 = v73[0];

      sub_1A2D07ED4();

      swift_willThrow();
      sub_1A2C55840(v71, v37);
      result = swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1A2CA569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8[0] = a3;
    v8[1] = a4;
    sub_1A2CA413C(v8);
  }
}

uint64_t sub_1A2CA57BC(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1A2D07F24();
  v12 = sub_1A2D07E84();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v15 = sub_1A2D07F44();
  v17 = v16;
  sub_1A2CA5A20();
  sub_1A2D07E64();
  sub_1A2C55840(v15, v17);

  v18 = v25;
  if (v25)
  {

    v19 = *(a3 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
    *v10 = v19;
    (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
    v20 = v19;
    LOBYTE(v19) = sub_1A2D08364();
    (*(v7 + 8))(v10, v6);
    if (v19)
    {
      v21 = *(a3 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_presentations);
      *(a3 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_presentations) = v18;

      v22 = *(a3 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__presentationPublisher);
      v25 = v18;

      sub_1A2D08174();

      a4[2](a4, 0);
    }

    __break(1u);
  }

  _Block_release(a4);
  __break(1u);
  _Block_release(a4);
  sub_1A2C55840(v15, v17);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1A2CA5A20()
{
  result = qword_1EB09F0A0;
  if (!qword_1EB09F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0A0);
  }

  return result;
}

unint64_t sub_1A2CA5AA8()
{
  result = qword_1EB09F060;
  if (!qword_1EB09F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F060);
  }

  return result;
}

unint64_t sub_1A2CA5B04()
{
  result = qword_1EB09ED50;
  if (!qword_1EB09ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED50);
  }

  return result;
}

uint64_t sub_1A2CA5B90(uint64_t *a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v7 = *(v1 + 16);
  v4 = ActivityPresentationPredicate.filter(presentations:)(*a1);
  v3(v4, v5);
}

uint64_t ActivityAuthorizationOptions.init(enabled:source:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  if (a3)
  {
    v4 = 2;
LABEL_7:
    *a4 = result & 1;
    a4[1] = v4;
    return result;
  }

  if (!a2)
  {
    v4 = 0;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v4 = 1;
    goto LABEL_7;
  }

  result = sub_1A2D08944();
  __break(1u);
  return result;
}

uint64_t sub_1A2CA5CFC()
{
  if (*v0)
  {
    result = 0x656372756F73;
  }

  else
  {
    result = 0x64656C62616E65;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CA5D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CA5E0C(uint64_t a1)
{
  v2 = sub_1A2CA600C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA5E48(uint64_t a1)
{
  v2 = sub_1A2CA600C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityAuthorizationOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0580, &qword_1A2D0ADB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA600C();
  sub_1A2D08C74();
  v16 = 0;
  sub_1A2D08AC4();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1A2CA6060();
    sub_1A2D08AA4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1A2CA600C()
{
  result = qword_1EB0A0588;
  if (!qword_1EB0A0588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0588);
  }

  return result;
}

unint64_t sub_1A2CA6060()
{
  result = qword_1EB0A0590;
  if (!qword_1EB0A0590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0590);
  }

  return result;
}

uint64_t ActivityAuthorizationOptions.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0598, &qword_1A2D0ADB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA600C();
  sub_1A2D08C64();
  if (!v2)
  {
    v17 = 0;
    v11 = sub_1A2D08A34();
    v15 = 1;
    sub_1A2CA6274();
    sub_1A2D08A14();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v11 & 1;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1A2CA6274()
{
  result = qword_1EB0A05A0;
  if (!qword_1EB0A05A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A05A0);
  }

  return result;
}

uint64_t sub_1A2CA62F8()
{
  v9 = *v0;
  v10 = v0[1];
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CA7054();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

uint64_t sub_1A2CA63BC(uint64_t a1, _WORD *a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2CA7000();
  sub_1A2D07E64();
  sub_1A2C55840(v6, v8);

  *a2 = v10;
  return result;
}

uint64_t sub_1A2CA64B4()
{
  if (*v0)
  {
    result = 0x73676E6974746573;
  }

  else
  {
    result = 0x4372657474616C70;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CA64F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4372657474616C70 && a2 == 0xEB000000006E6968;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73676E6974746573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CA65D8(uint64_t a1)
{
  v2 = sub_1A2CA69FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA6614(uint64_t a1)
{
  v2 = sub_1A2CA69FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CA665C(uint64_t a1)
{
  v2 = sub_1A2CA6AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA6698(uint64_t a1)
{
  v2 = sub_1A2CA6AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CA66D4(uint64_t a1)
{
  v2 = sub_1A2CA6A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA6710(uint64_t a1)
{
  v2 = sub_1A2CA6A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityAuthorizationChangeSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05A8, &qword_1A2D0ADC0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05B0, &qword_1A2D0ADC8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05B8, &qword_1A2D0ADD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA69FC();
  sub_1A2D08C74();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1A2CA6A50();
    v18 = v22;
    sub_1A2D08A84();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1A2CA6AA4();
    sub_1A2D08A84();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1A2CA69FC()
{
  result = qword_1EB0A05C0;
  if (!qword_1EB0A05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A05C0);
  }

  return result;
}

unint64_t sub_1A2CA6A50()
{
  result = qword_1EB0A05C8;
  if (!qword_1EB0A05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A05C8);
  }

  return result;
}

unint64_t sub_1A2CA6AA4()
{
  result = qword_1EB0A05D0;
  if (!qword_1EB0A05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A05D0);
  }

  return result;
}

uint64_t ActivityAuthorizationChangeSource.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

uint64_t ActivityAuthorizationChangeSource.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05D8, &qword_1A2D0ADD8);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05E0, &qword_1A2D0ADE0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05E8, &qword_1A2D0ADE8);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA69FC();
  v17 = v37;
  sub_1A2D08C64();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1A2D08A64();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1A2D088A4();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
    *v25 = &type metadata for ActivityAuthorizationChangeSource;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1A2CA6A50();
    sub_1A2D089D4();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1A2CA6AA4();
    sub_1A2D089D4();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t sub_1A2CA7000()
{
  result = qword_1EB0A0A40;
  if (!qword_1EB0A0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0A40);
  }

  return result;
}

unint64_t sub_1A2CA7054()
{
  result = qword_1EB0A0A10;
  if (!qword_1EB0A0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0A10);
  }

  return result;
}

unint64_t sub_1A2CA70A8()
{
  result = qword_1EB0A05F8;
  if (!qword_1EB0A05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A05F8);
  }

  return result;
}

unint64_t sub_1A2CA7100()
{
  result = qword_1EB0A0600;
  if (!qword_1EB0A0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0600);
  }

  return result;
}

uint64_t sub_1A2CA71C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CA7218()
{
  result = qword_1EB0A0608;
  if (!qword_1EB0A0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0608);
  }

  return result;
}

uint64_t sub_1A2CA726C()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CA6060();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

uint64_t sub_1A2CA7328(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2CA6274();
  sub_1A2D07E64();
  sub_1A2C55840(v6, v8);

  *a2 = v10;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityAuthorizationOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ActivityAuthorizationOptions(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1A2CA75CC()
{
  result = qword_1EB0A0610;
  if (!qword_1EB0A0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0610);
  }

  return result;
}

unint64_t sub_1A2CA7624()
{
  result = qword_1EB0A0618;
  if (!qword_1EB0A0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0618);
  }

  return result;
}

unint64_t sub_1A2CA767C()
{
  result = qword_1EB0A0620;
  if (!qword_1EB0A0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0620);
  }

  return result;
}

unint64_t sub_1A2CA76D4()
{
  result = qword_1EB0A0628;
  if (!qword_1EB0A0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0628);
  }

  return result;
}

unint64_t sub_1A2CA772C()
{
  result = qword_1EB0A0630;
  if (!qword_1EB0A0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0630);
  }

  return result;
}

unint64_t sub_1A2CA7784()
{
  result = qword_1EB0A0638;
  if (!qword_1EB0A0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0638);
  }

  return result;
}

unint64_t sub_1A2CA77DC()
{
  result = qword_1EB0A0640;
  if (!qword_1EB0A0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0640);
  }

  return result;
}

unint64_t sub_1A2CA7834()
{
  result = qword_1EB0A0648;
  if (!qword_1EB0A0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0648);
  }

  return result;
}

unint64_t sub_1A2CA788C()
{
  result = qword_1EB0A0650;
  if (!qword_1EB0A0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0650);
  }

  return result;
}

unint64_t sub_1A2CA78E4()
{
  result = qword_1EB0A0658;
  if (!qword_1EB0A0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0658);
  }

  return result;
}

uint64_t sub_1A2CA7958()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v5 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0668, qword_1A2D0B490);
    sub_1A2C56A78(&qword_1EB0A0670, &qword_1EB0A0668, qword_1A2D0B490);
    v2 = v0;
    v1 = sub_1A2D081F4();
    v3 = *(v0 + 104);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1A2CA7A1C(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 16) + 16);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(v2 + 72);
  if (*(v6 + 16))
  {
    v7 = *(v2 + 72);

    v8 = sub_1A2C64868(a1, a2);
    if (v9)
    {
      v10 = *(v6 + 56) + 16 * v8;
      v11 = *v10;
      sub_1A2C5E63C(*v10, *(v10 + 8));
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(v5);

  return v11;
}

unint64_t sub_1A2CA7AFC()
{
  sub_1A2D08864();

  swift_beginAccess();
  v1 = *(v0 + 72);

  v2 = sub_1A2D083A4();
  v4 = v3;

  MEMORY[0x1A58E4150](v2, v4);

  return 0xD00000000000001CLL;
}

uint64_t sub_1A2CA7BCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 96);
  if (*(v6 + 16))
  {

    v7 = sub_1A2C64868(a1, a2);
    if (v8)
    {
      v9 = (*(v6 + 56) + 16 * v7);
      v11 = *v9;
      v10 = v9[1];
      swift_unknownObjectRetain();

      swift_getObjectType();
      v28[0] = v11;
      v12 = *(v10 + 8);
      v13 = sub_1A2D081F4();
      swift_unknownObjectRelease();
      return v13;
    }
  }

  sub_1A2C53CD8(v3 + 24, v28);
  v14 = v29;
  v15 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v16 = (*(v15 + 16))(a1, a2, v14, v15);
  if (v17 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  if (v17 >> 60 == 15)
  {
    v19 = 0xC000000000000000;
  }

  else
  {
    v19 = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  v28[0] = v18;
  v28[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0668, qword_1A2D0B490);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1A2C5E63C(v18, v19);
  v23 = sub_1A2D081B4();
  swift_beginAccess();

  v24 = *(v3 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + 96);
  *(v3 + 96) = 0x8000000000000000;
  sub_1A2CA7EC0(v23, a1, a2, isUniquelyReferenced_nonNull_native, &v27);

  *(v3 + 96) = v27;
  swift_endAccess();
  v28[0] = v23;
  sub_1A2C56A78(&qword_1EB0A0670, &qword_1EB0A0668, qword_1A2D0B490);
  v13 = sub_1A2D081F4();
  sub_1A2C55840(v18, v19);

  return v13;
}

void *sub_1A2CA7E10()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  sub_1A2C5DE40(v0[10], v0[11]);
  v4 = v0[12];

  v5 = v0[13];

  v6 = v0[14];

  return v0;
}

uint64_t sub_1A2CA7E68()
{
  sub_1A2CA7E10();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1A2CA7EC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void **a5)
{
  v10 = *a5;
  v12 = sub_1A2C64868(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1A2CB3C5C();
      goto LABEL_7;
    }

    sub_1A2CB2E04(v15, a4 & 1);
    v22 = *a5;
    v23 = sub_1A2C64868(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1A2D08B84();
    __break(1u);
    return result;
  }

LABEL_7:
  if (v16)
  {
LABEL_8:
    v18 = sub_1A2C56A78(&qword_1EB0A0678, &qword_1EB0A0668, qword_1A2D0B490);
    v19 = ((*a5)[7] + 16 * v12);
    v20 = *v19;
    *v19 = a1;
    v19[1] = v18;

    return swift_unknownObjectRelease();
  }

LABEL_13:
  sub_1A2CA8040(v12, a2, a3, a1, *a5);
}

uint64_t sub_1A2CA8040(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_1A2C56A78(&qword_1EB0A0678, &qword_1EB0A0668, qword_1A2D0B490);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = (a5[7] + 16 * a1);
  *v12 = a4;
  v12[1] = result;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_1A2CA80FC()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1EB09F038);
  __swift_project_value_buffer(v0, qword_1EB09F038);
  return sub_1A2D08004();
}

uint64_t static ActivityQoSObservationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F030 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F038);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CA820C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F030 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F038);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Void __swiftcall CancellableAssertion.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token);

  sub_1A2D080D4();
}

id CancellableAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CancellableAssertion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CA840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0BB0, &unk_1A2D0B780);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for BufferedAlert();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1A2C54E38(a1, &unk_1EB0A0BB0, &unk_1A2D0B780);
    sub_1A2C91E28(a2, a3, type metadata accessor for BufferedAlert, type metadata accessor for BufferedAlert, type metadata accessor for BufferedAlert, sub_1A2CB4108, v10);

    return sub_1A2C54E38(v10, &unk_1EB0A0BB0, &unk_1A2D0B780);
  }

  else
  {
    sub_1A2C7C590(a1, v14, type metadata accessor for BufferedAlert);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1A2CF4B28(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1A2CA869C()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1A2CA86E4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0688, &qword_1A2D0B760);
  v3 = sub_1A2D083A4();

  return v3;
}

uint64_t sub_1A2CA877C()
{
  v4 = v0[12];
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for Activity();
  sub_1A2D08154();
  swift_getWitnessTable();
  return sub_1A2D081F4();
}

uint64_t sub_1A2CA8828()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];

  MEMORY[0x1A58E4150](v2, v3);

  MEMORY[0x1A58E4150](2108704, 0xE300000000000000);
  swift_beginAccess();
  v7 = v0[11];
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for Activity();
  sub_1A2D083C4();
  swift_getWitnessTable();
  sub_1A2D08B14();
  return 0;
}

uint64_t sub_1A2CA8944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(a3 + 16);
    v6[0] = *a3;
    v6[1] = v5;
    v6[2] = *(a3 + 32);
    v7 = *(a3 + 48);
    sub_1A2C5F480(v6);
  }

  return result;
}

uint64_t sub_1A2CA89BC()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  return v0;
}

uint64_t sub_1A2CA8A1C()
{
  v0 = sub_1A2CA89BC();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1A2CA8A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1A2D083F4();

  return sub_1A2CA8ACC(a1, v9, a2, a3);
}

unint64_t sub_1A2CA8ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1A2D08424();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

double sub_1A2CA8CA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1A2C64868(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A2CB3F60();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1A2C5E3C4((*(v12 + 56) + 40 * v9), a3);
    sub_1A2CA9154(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A2CA8E14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A2D08814() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1A2D08C04();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + v3);
          v19 = (v17 + v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A2CA8F84(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A2D08814() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1A2D08C14();
      MEMORY[0x1A58E48E0](v10);
      result = sub_1A2D08C54();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for OpaqueActivityPayload(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

uint64_t sub_1A2CA9154(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A2D08814() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1A2D08C14();

      sub_1A2D08484();
      v15 = sub_1A2D08C54();

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

uint64_t sub_1A2CA9328(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1A2CA8944(a1, v1[4], (v1 + 5));
}

uint64_t ActivityUpdateFeed.description.getter()
{
  if (*v0)
  {
    result = 0x7472656C61;
  }

  else
  {
    result = 7105633;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CA9380(uint64_t a1)
{
  v2 = sub_1A2CA98C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA93BC(uint64_t a1)
{
  v2 = sub_1A2CA98C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CA93F8(uint64_t a1)
{
  v2 = sub_1A2CA9918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA9434(uint64_t a1)
{
  v2 = sub_1A2CA9918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CA9470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7472656C61 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CA9548(uint64_t a1)
{
  v2 = sub_1A2CA9870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA9584(uint64_t a1)
{
  v2 = sub_1A2CA9870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityUpdateFeed.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06A0, &qword_1A2D0B790);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06A8, &qword_1A2D0B798);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06B0, &qword_1A2D0B7A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA9870();
  sub_1A2D08C74();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1A2CA98C4();
    v18 = v22;
    sub_1A2D08A84();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1A2CA9918();
    sub_1A2D08A84();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1A2CA9870()
{
  result = qword_1EB0A06B8;
  if (!qword_1EB0A06B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06B8);
  }

  return result;
}

unint64_t sub_1A2CA98C4()
{
  result = qword_1EB0A06C0;
  if (!qword_1EB0A06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06C0);
  }

  return result;
}

unint64_t sub_1A2CA9918()
{
  result = qword_1EB0A06C8;
  if (!qword_1EB0A06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06C8);
  }

  return result;
}

uint64_t ActivityUpdateFeed.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

uint64_t ActivityUpdateFeed.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06D0, &qword_1A2D0B7A8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06D8, &qword_1A2D0B7B0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06E0, &unk_1A2D0B7B8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA9870();
  v16 = v36;
  sub_1A2D08C64();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1A2D08A64();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1A2C6D870();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1A2D088A4();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
      *v26 = &type metadata for ActivityUpdateFeed;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1A2CA98C4();
        sub_1A2D089D4();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1A2CA9918();
        sub_1A2D089D4();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_1A2CA9F00()
{
  result = qword_1EB0A06E8;
  if (!qword_1EB0A06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06E8);
  }

  return result;
}

unint64_t sub_1A2CA9F58()
{
  result = qword_1EB0A06F0;
  if (!qword_1EB0A06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06F0);
  }

  return result;
}

unint64_t sub_1A2CA9FB0()
{
  result = qword_1EB0A06F8;
  if (!qword_1EB0A06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06F8);
  }

  return result;
}

unint64_t sub_1A2CAA008()
{
  result = qword_1EB0A0700;
  if (!qword_1EB0A0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0700);
  }

  return result;
}

unint64_t sub_1A2CAA060()
{
  result = qword_1EB0A0708;
  if (!qword_1EB0A0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0708);
  }

  return result;
}

unint64_t sub_1A2CAA0B8()
{
  result = qword_1EB0A0710;
  if (!qword_1EB0A0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0710);
  }

  return result;
}

unint64_t sub_1A2CAA110()
{
  result = qword_1EB0A0718;
  if (!qword_1EB0A0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0718);
  }

  return result;
}

uint64_t AlertPayload.sceneTargets.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlertPayload() + 40));
}

uint64_t AlertPayload.assetProviderBundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for AlertPayload() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

double AlertPayload.platterTarget.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AlertPayload() + 40));
  if (*(v3 + 16) && (v4 = sub_1A2C66BC0(0), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 48 * v4;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v6 + 24);
    v10 = *(v6 + 32);
    v11 = *(v6 + 40);
    *a1 = *v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    *(a1 + 40) = v11;

    sub_1A2C72A00();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = -1;
  }

  return result;
}

uint64_t AlertPayload.init(updateIdentifier:bundleIdentifier:title:body:sound:deviceIdentifier:platterTarget:assetProviderBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t a14)
{
  v18 = *a8;
  v38 = a8[1];
  v19 = *(a8 + 16);
  v20 = a8[3];
  v36 = a12[1];
  v37 = *a12;
  v35 = *(a12 + 4);
  v21 = *(a12 + 40);
  v22 = sub_1A2D07FC4();
  v23 = *(v22 - 8);
  v43 = a1;
  (*(v23 + 16))(a9, a1, v22);
  v24 = type metadata accessor for AlertPayload();
  v25 = (a9 + v24[5]);
  *v25 = a2;
  v25[1] = a3;
  v26 = (a9 + v24[6]);
  *v26 = a4;
  v26[1] = a5;
  v27 = (a9 + v24[7]);
  *v27 = a6;
  v27[1] = a7;
  v28 = a9 + v24[8];
  *v28 = v18;
  *(v28 + 8) = v38;
  *(v28 + 16) = v19;
  *(v28 + 24) = v20;
  v29 = (a9 + v24[9]);
  *v29 = a10;
  v29[1] = a11;
  if (v21 == 255)
  {
    v32 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
    inited = swift_initStackObject();
    *(inited + 32) = 0;
    v31 = inited + 32;
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 56) = v36;
    *(inited + 40) = v37;
    *(inited + 72) = v35;
    *(inited + 80) = v21 & 1;
    v32 = sub_1A2CAA8B0(inited);
    swift_setDeallocating();
    sub_1A2C54E38(v31, &qword_1EB0A0728, &qword_1A2D0BB50);
  }

  result = (*(v23 + 8))(v43, v22);
  *(a9 + v24[10]) = v32;
  v34 = (a9 + v24[11]);
  *v34 = a13;
  v34[1] = a14;
  return result;
}

int *AlertPayload.init(updateIdentifier:bundleIdentifier:title:body:sound:deviceIdentifier:sceneTargets:assetProviderBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = *a8;
  v21 = a8[1];
  v22 = *(a8 + 16);
  v23 = a8[3];
  v24 = sub_1A2D07FC4();
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  result = type metadata accessor for AlertPayload();
  v26 = (a9 + result[5]);
  *v26 = a2;
  v26[1] = a3;
  v27 = (a9 + result[6]);
  *v27 = a4;
  v27[1] = a5;
  v28 = (a9 + result[7]);
  *v28 = a6;
  v28[1] = a7;
  v29 = a9 + result[8];
  *v29 = v20;
  *(v29 + 8) = v21;
  *(v29 + 16) = v22;
  *(v29 + 24) = v23;
  v30 = (a9 + result[9]);
  *v30 = a10;
  v30[1] = a11;
  *(a9 + result[10]) = a12;
  v31 = (a9 + result[11]);
  *v31 = a13;
  v31[1] = a14;
  return result;
}

uint64_t sub_1A2CAA5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CAB354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CAA624(uint64_t a1)
{
  v2 = sub_1A2C931CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CAA660(uint64_t a1)
{
  v2 = sub_1A2C931CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CAA69C()
{
  v0 = sub_1A2D07EB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C93220(&qword_1EB09ED28, type metadata accessor for AlertPayload);
  v3 = sub_1A2D07E94();
  v5 = v4;
  v6 = sub_1A2D07F24();
  sub_1A2C55840(v3, v5);

  return v6;
}

unint64_t sub_1A2CAA78C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0768, &qword_1A2D0BDB0);
    v3 = sub_1A2D08994();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_1A2C64868(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A2CAA8B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07C0, &qword_1A2D0BE38);
    v3 = sub_1A2D08994();

    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 48);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      sub_1A2C72A00();
      result = sub_1A2C66BC0(v5);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v14 = v3[7] + 48 * result;
      *v14 = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 24) = v9;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A2CAA9F0()
{
  result = qword_1ED7092F0;
  if (!qword_1ED7092F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7092F0);
  }

  return result;
}

unint64_t sub_1A2CAAA44()
{
  result = qword_1ED709638;
  if (!qword_1ED709638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709638);
  }

  return result;
}

unint64_t sub_1A2CAAA98()
{
  result = qword_1ED709570;
  if (!qword_1ED709570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709570);
  }

  return result;
}

uint64_t sub_1A2CAAAEC(void *a1)
{
  a1[1] = sub_1A2C93220(&qword_1EB09EFA0, type metadata accessor for AlertPayload);
  a1[2] = sub_1A2C93220(&qword_1EB09ED28, type metadata accessor for AlertPayload);
  result = sub_1A2C93220(&qword_1EB09ED20, type metadata accessor for AlertPayload);
  a1[3] = result;
  return result;
}

void sub_1A2CAAB98()
{
  sub_1A2D07FC4();
  if (v0 <= 0x3F)
  {
    sub_1A2C55FE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A2CAAC54()
{
  result = qword_1EB0A0748;
  if (!qword_1EB0A0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0748);
  }

  return result;
}

unint64_t sub_1A2CAACAC()
{
  result = qword_1EB09EFA8;
  if (!qword_1EB09EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EFA8);
  }

  return result;
}

unint64_t sub_1A2CAAD04()
{
  result = qword_1EB09EFB0;
  if (!qword_1EB09EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EFB0);
  }

  return result;
}

unint64_t sub_1A2CAAD58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0798, &qword_1A2D0BDD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07A0, &qword_1A2D0BDE0);
    v8 = sub_1A2D08994();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1A2C6BD18(v10, v6, &qword_1EB0A0798, &qword_1A2D0BDD8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1A2C64868(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for BufferedAlert();
      result = sub_1A2CAB604(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for BufferedAlert);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A2CAAF40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0780, &qword_1A2D0BDC0);
    v3 = sub_1A2D08994();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A2C6BD18(v4, &v13, &qword_1EB0A19B0, &qword_1A2D0BDC8);
      v5 = v13;
      v6 = v14;
      result = sub_1A2C64868(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A2CAB5F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A2CAB070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0750, &qword_1A2D0BDA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0758, &qword_1A2D0D140);
    v8 = sub_1A2D08994();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1A2C6BD18(v10, v6, &qword_1EB0A0750, &qword_1A2D0BDA0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1A2C64868(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for ActivityDescriptorContentState();
      result = sub_1A2CAB604(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for ActivityDescriptorContentState);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A2CAB258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A1B90, &qword_1A2D0BD98);
    v3 = sub_1A2D08994();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A2C64868(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A2CAB354(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A2D196C0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D196E0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E756F73 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D19700 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726154656E656373 && a2 == 0xEC00000073746567 || (sub_1A2D08B34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A2D19720 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_1A2D08B34();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

_OWORD *sub_1A2CAB5F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1A2CAB604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2CAB68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7364973 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CAB714(uint64_t a1)
{
  v2 = sub_1A2CAB938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CAB750(uint64_t a1)
{
  v2 = sub_1A2CAB938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityQoSMap.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07C8, &qword_1A2D0BE40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CAB938();

  sub_1A2D08C74();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07D8, &qword_1A2D0BE48);
  sub_1A2CABB98(&qword_1EB0A07E0, sub_1A2CAB98C);
  sub_1A2D08AE4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A2CAB938()
{
  result = qword_1EB0A07D0;
  if (!qword_1EB0A07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A07D0);
  }

  return result;
}

unint64_t sub_1A2CAB98C()
{
  result = qword_1EB0A07E8;
  if (!qword_1EB0A07E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A07E8);
  }

  return result;
}

uint64_t ActivityQoSMap.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07F0, &qword_1A2D0BE50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CAB938();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07D8, &qword_1A2D0BE48);
    sub_1A2CABB98(&qword_1EB0A07F8, sub_1A2CABC1C);
    sub_1A2D08A54();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2CABB98(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A07D8, &qword_1A2D0BE48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A2CABC1C()
{
  result = qword_1EB0A0800;
  if (!qword_1EB0A0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0800);
  }

  return result;
}

unint64_t sub_1A2CABCA0(void *a1)
{
  a1[1] = sub_1A2CABCD8();
  a1[2] = sub_1A2CABD2C();
  result = sub_1A2CABD80();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CABCD8()
{
  result = qword_1EB0A0AB0;
  if (!qword_1EB0A0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0AB0);
  }

  return result;
}

unint64_t sub_1A2CABD2C()
{
  result = qword_1EB0A0808;
  if (!qword_1EB0A0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0808);
  }

  return result;
}

unint64_t sub_1A2CABD80()
{
  result = qword_1EB0A0810;
  if (!qword_1EB0A0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0810);
  }

  return result;
}

uint64_t sub_1A2CABDD4()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CABD2C();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

uint64_t sub_1A2CABE9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1A2CABEE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A2CABF44()
{
  result = qword_1EB0A0818;
  if (!qword_1EB0A0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0818);
  }

  return result;
}

unint64_t sub_1A2CABF9C()
{
  result = qword_1EB0A0820;
  if (!qword_1EB0A0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0820);
  }

  return result;
}

unint64_t sub_1A2CABFF4()
{
  result = qword_1EB0A0828;
  if (!qword_1EB0A0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0828);
  }

  return result;
}

uint64_t BasicTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0830, &qword_1A2D0C060);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t BasicTimer.init()()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0830, &qword_1A2D0C060);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_1A2CAC0EC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(v4 + 24);

  os_unfair_lock_lock(v9 + 4);
  sub_1A2CAC174(a1, a2, a3, a4);
  os_unfair_lock_unlock(v9 + 4);
}

uint64_t sub_1A2CAC174(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v60 = a3;
  v55 = a2;
  v51 = a1;
  v7 = sub_1A2D082D4();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A2D08314();
  v59 = *(v62 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1A2D082C4();
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v49 - v16);
  v18 = sub_1A2D08334();
  v56 = *(v18 - 8);
  v57 = v18;
  v19 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v54 = &v49 - v23;
  v24 = sub_1A2D08734();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v4 + 24);

  os_unfair_lock_assert_owner(v29 + 4);

  if (*(v5 + 16))
  {
    v30 = *(v5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A2D08764();
    swift_unknownObjectRelease();
    v31 = *(v5 + 16);
  }

  *(v5 + 16) = 0;
  result = swift_unknownObjectRelease();
  v33 = a4 * 1000.0;
  if (COERCE__INT64(fabs(a4 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v49 = v5;
  if (v33 >= 0x7FFFFFFF)
  {
    v34 = 0x7FFFFFFFLL;
  }

  else
  {
    v34 = v33;
  }

  sub_1A2C8C524();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C8C4CC();
  v50 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0840, qword_1A2D0C0A8);
  sub_1A2C8C468();
  sub_1A2D08804();
  v35 = sub_1A2D08744();
  (*(v25 + 8))(v28, v24);
  sub_1A2D08324();
  *v17 = v34;
  v36 = v53;
  (*(v12 + 104))(v17, *MEMORY[0x1E69E7F38], v53);
  v37 = v54;
  MEMORY[0x1A58E4010](v21, v17);
  v38 = *(v12 + 8);
  v38(v17, v36);
  v39 = v57;
  v56 = *(v56 + 8);
  (v56)(v21, v57);
  ObjectType = swift_getObjectType();
  sub_1A2C8C570(v17);
  v41 = v52;
  sub_1A2C8C5E4(v52);
  MEMORY[0x1A58E4450](v37, v17, v41, ObjectType);
  v38(v41, v36);
  v38(v17, v36);
  v42 = swift_allocObject();
  v43 = v49;
  v44 = v55;
  v42[2] = v49;
  v42[3] = v44;
  v42[4] = v60;
  aBlock[4] = sub_1A2CAC95C;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C5E5B8;
  aBlock[3] = &block_descriptor_2;
  v45 = _Block_copy(aBlock);

  v46 = v58;
  sub_1A2C8C66C();
  v47 = v61;
  sub_1A2C8C670();
  sub_1A2D08754();
  _Block_release(v45);
  (*(v63 + 8))(v47, v50);
  (*(v59 + 8))(v46, v62);

  v48 = *(v43 + 16);
  *(v43 + 16) = v35;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_1A2D08774();
  swift_unknownObjectRelease_n();
  return (v56)(v37, v39);
}

uint64_t sub_1A2CAC81C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_1A2C874D8();
  os_unfair_lock_unlock(v3 + 4);

  return a2(v4);
}

uint64_t BasicTimer.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t BasicTimer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1A2CAC968()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1EB09EF08);
  __swift_project_value_buffer(v0, qword_1EB09EF08);
  return sub_1A2D08004();
}

uint64_t static StateCaptureServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09EF00 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09EF08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CACA78@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09EF00 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09EF08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *ActivityPresentationOptions.platterTintColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

double ActivityPresentationOptions.init(destinations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&result = 65793;
  *(a2 + 8) = 65793;
  *(a2 + 12) = 0;
  *(a2 + 14) = 3;
  *(a2 + 16) = 0;
  *a2 = a1;
  return result;
}

uint64_t ActivityPresentationOptions.ActivityPresentationDestination.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x657263736B636F6CLL;
  v3 = 0x657263536C6C7566;
  v4 = 0x746E6569626D61;
  if (v1 != 4)
  {
    v4 = 0x79616C50726163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72656E6E6162;
  if (v1 != 1)
  {
    v5 = 0x70416D6574737973;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A2CACE34()
{
  sub_1A2D08C14();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

uint64_t sub_1A2CACF44()
{
  *v0;
  *v0;
  *v0;
  sub_1A2D08484();
}

void ActivityPresentationOptions.acActivityPresentationOptions.getter()
{
  v2 = *v0;
  v3 = v0[2];
  sub_1A2C569A0(0, &qword_1ED7088D0, off_1E76B6510);
  sub_1A2C66F58(&v2, v1);
  sub_1A2C81D68(v0);
}

unint64_t sub_1A2CAD0B8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74616E6974736564;
    v6 = 0xD000000000000026;
    if (a1 != 2)
    {
      v6 = 0xD00000000000002BLL;
    }

    if (a1)
    {
      v5 = 0xD000000000000022;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    v2 = 0xD000000000000017;
    if (a1 != 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A2CAD1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CAD468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CAD224(uint64_t a1)
{
  v2 = sub_1A2C6B53C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CAD264()
{
  result = qword_1EB0A0880;
  if (!qword_1EB0A0880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0870, &qword_1A2D0C168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0880);
  }

  return result;
}

uint64_t sub_1A2CAD2C8(uint64_t *a1, int a2)
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

uint64_t sub_1A2CAD310(uint64_t result, int a2, int a3)
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

unint64_t sub_1A2CAD364()
{
  result = qword_1EB0A0888;
  if (!qword_1EB0A0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0888);
  }

  return result;
}

unint64_t sub_1A2CAD3BC()
{
  result = qword_1ED7096E8;
  if (!qword_1ED7096E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7096E8);
  }

  return result;
}

unint64_t sub_1A2CAD414()
{
  result = qword_1ED7096F0;
  if (!qword_1ED7096F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7096F0);
  }

  return result;
}

uint64_t sub_1A2CAD468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001A2D19930 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001A2D19960 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001A2D19990 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D199C0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A2D199E0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A2D19A00 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A2D19A20 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A2D19A40 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t ActivityStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CAD7D4()
{
  result = qword_1EB0A0890;
  if (!qword_1EB0A0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0890);
  }

  return result;
}

uint64_t ActivityDescriptorState.init(descriptor:state:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1A2CAD874(a1, a3);
  result = type metadata accessor for ActivityDescriptorState();
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_1A2CAD874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static ActivityDescriptorState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11ActivityKit0A10DescriptorV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActivityDescriptorState();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1A2CAD950()
{
  result = type metadata accessor for ActivityDescriptor();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A2CAD9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365676E616863 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CADA5C(uint64_t a1)
{
  v2 = sub_1A2C62540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CADA98(uint64_t a1)
{
  v2 = sub_1A2C62540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CADAD4()
{
  result = qword_1EB09EFE0;
  if (!qword_1EB09EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EFE0);
  }

  return result;
}

unint64_t sub_1A2CADB28(void *a1)
{
  a1[1] = sub_1A2C62624();
  a1[2] = sub_1A2CADB60();
  result = sub_1A2CADBB4();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CADB60()
{
  result = qword_1EB09F258;
  if (!qword_1EB09F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F258);
  }

  return result;
}

unint64_t sub_1A2CADBB4()
{
  result = qword_1EB09F250;
  if (!qword_1EB09F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F250);
  }

  return result;
}

uint64_t sub_1A2CADC08()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CADB60();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

unint64_t sub_1A2CADCE4()
{
  result = qword_1EB0A08B0;
  if (!qword_1EB0A08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A08B0);
  }

  return result;
}

uint64_t ActivityError.errorCode.getter()
{
  v1 = *(v0 + 8);
  if (v1 >= 3)
  {
    return 1004;
  }

  else
  {
    return v1 + 1001;
  }
}

unint64_t ActivityError.failureReason.getter()
{
  if (v0[1] < 3)
  {
    return 0;
  }

  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[7];
  v5 = v0[8];
  v6 = *v0;
  sub_1A2D08864();

  v7 = sub_1A2D08474();
  MEMORY[0x1A58E4150](v7);

  v8 = 0xE600000000000000;
  MEMORY[0x1A58E4150](0x206D6F726620, 0xE600000000000000);
  if (v3)
  {

    v8 = v3;
  }

  else
  {
    v2 = 0x3E656E6F6E3CLL;
  }

  MEMORY[0x1A58E4150](v2, v8);

  MEMORY[0x1A58E4150](544108320, 0xE400000000000000);
  MEMORY[0x1A58E4150](v4, v5);
  return 0xD000000000000016;
}

unint64_t ActivityError.errorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = 0xD00000000000001BLL;
  v3 = 0xD000000000000020;
  if (v1 == 1)
  {
    v3 = 0xD000000000000021;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1A2CADF30()
{
  v1 = *(v0 + 8);
  if (v1 >= 3)
  {
    return 1004;
  }

  else
  {
    return v1 + 1001;
  }
}

unint64_t sub_1A2CADF4C()
{
  v1 = *(v0 + 8);
  v2 = 0xD00000000000001BLL;
  v3 = 0xD000000000000020;
  if (v1 == 1)
  {
    v3 = 0xD000000000000021;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1A2CADFC4(uint64_t a1)
{
  v2 = sub_1A2CAE15C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A2CAE000(uint64_t a1)
{
  v2 = sub_1A2CAE15C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A2CAE060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 72))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2CAE0BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

double sub_1A2CAE118(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1A2CAE15C()
{
  result = qword_1EB09F008;
  if (!qword_1EB09F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F008);
  }

  return result;
}

unint64_t MockPushError.errorDescription.getter()
{
  v1 = 0xD000000000000024;
  v2 = *v0;
  v3 = 0xD000000000000043;
  v4 = 0xD000000000000032;
  if (v2 != 3)
  {
    v4 = 0xD00000000000002ELL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t MockPushError.description.getter()
{
  v1 = 0xD000000000000024;
  v2 = *v0;
  v3 = 0xD000000000000043;
  v4 = 0xD000000000000032;
  if (v2 != 3)
  {
    v4 = 0xD00000000000002ELL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t MockPushError.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CAE364()
{
  result = qword_1EB0A08B8;
  if (!qword_1EB0A08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A08B8);
  }

  return result;
}

unint64_t sub_1A2CAE3BC()
{
  result = qword_1EB0A08C0;
  if (!qword_1EB0A08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A08C0);
  }

  return result;
}

unint64_t sub_1A2CAE410()
{
  v1 = 0xD000000000000024;
  v2 = *v0;
  v3 = 0xD000000000000043;
  v4 = 0xD000000000000032;
  if (v2 != 3)
  {
    v4 = 0xD00000000000002ELL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CAE4B0()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED708BA0);
  __swift_project_value_buffer(v0, qword_1ED708BA0);
  return sub_1A2D08084();
}

uint64_t Watchdog.init()()
{
  *(v0 + 16) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t sub_1A2CAE580(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(*(a1 + 24) + 16);

  os_unfair_lock_lock(v4);
  if (*(a1 + 16))
  {
    *(a1 + 32) = 1;
    sub_1A2C8EB74();
    os_unfair_lock_unlock(v4);

    return a2(a1);
  }

  else
  {
    os_unfair_lock_unlock(v4);
  }
}

uint64_t Watchdog.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1A2CAE6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001CLL && 0x80000001A2D19CA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A2D08B34();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A2CAE738(uint64_t a1)
{
  v2 = sub_1A2C8B964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CAE774(uint64_t a1)
{
  v2 = sub_1A2C8B964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CAE7B0(void *a1)
{
  a1[1] = sub_1A2C951D0();
  a1[2] = sub_1A2CAE7E8();
  result = sub_1A2CAE83C();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CAE7E8()
{
  result = qword_1EB09EDC8;
  if (!qword_1EB09EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EDC8);
  }

  return result;
}

unint64_t sub_1A2CAE83C()
{
  result = qword_1EB09EDC0;
  if (!qword_1EB09EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EDC0);
  }

  return result;
}

uint64_t sub_1A2CAE890()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CAE7E8();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

unint64_t sub_1A2CAE97C()
{
  result = qword_1EB0A08D8;
  if (!qword_1EB0A08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A08D8);
  }

  return result;
}

unint64_t sub_1A2CAE9D4()
{
  result = qword_1ED708808;
  if (!qword_1ED708808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708808);
  }

  return result;
}

unint64_t sub_1A2CAEA2C()
{
  result = qword_1ED708810;
  if (!qword_1ED708810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708810);
  }

  return result;
}

uint64_t sub_1A2CAEA80()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09EC80);
  __swift_project_value_buffer(v0, qword_1EB09EC80);
  return sub_1A2D08084();
}

id sub_1A2CAEB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB09ECB8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB09ECC8;
  v7 = sub_1A2D08434();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A2C9576C;
  v11[3] = &block_descriptor_4;
  v8 = _Block_copy(v11);

  v9 = [v6 listenForActivityProminenceWithActivityIdentifier:v7 handler:v8];
  _Block_release(v8);

  return v9;
}

uint64_t sub_1A2CAEC30(uint64_t *a1)
{
  v2 = *a1;
  if (qword_1EB09ECB8 != -1)
  {
    a1 = swift_once();
  }

  v3 = *(qword_1EB09ECC8 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
  MEMORY[0x1EEE9AC00](a1);
  sub_1A2D080E4();
  result = sub_1A2D08704();
  if (!v1)
  {
    return v5;
  }

  return result;
}

id ActivityProminenceObservationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityProminenceObservationClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityProminenceObservationClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A2CAEDE8()
{
  result = [objc_allocWithZone(_s11ActivityKit9SingletonCMa_2()) init];
  qword_1EB09ECC8 = result;
  return result;
}

uint64_t sub_1A2CAEE78()
{
  v28 = sub_1A2D086E4();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D086C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1A2D08314();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v27 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue;
  v9 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v26[0] = "rominence-observation";
  v26[1] = v9;
  sub_1A2D082E4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C8BAD0(&qword_1ED709E30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v28);
  *&v0[v27] = sub_1A2D08724();
  v10 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_serverStartupToken] = -1;
  v11 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__prominencePublisher;
  v12 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0928, &unk_1A2D0CDC8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v0[v11] = sub_1A2D081B4();
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__queue_prominentActivityIdentifiers] = v12;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__queue_predicates] = v12;
  v16 = *&v0[v10];
  *&v0[v10] = 0;

  v17 = _s11ActivityKit9SingletonCMa_2();
  v30.receiver = v0;
  v30.super_class = v17;
  v18 = objc_msgSendSuper2(&v30, sel_init);
  v19 = *&v18[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1A2CB0650;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_56_0;
  v22 = _Block_copy(aBlock);
  v23 = v18;
  v24 = v19;

  dispatch_sync(v24, v22);

  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    return v23;
  }

  __break(1u);
  return result;
}

void sub_1A2CAF300(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CAF5F8;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_41_0;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CAF604;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_44_0;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CAF610;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_47_1;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CAF61C(uint64_t a1, const char *a2)
{
  if (qword_1EB09EC70 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB09EC80);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CAF70C()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CB05EC;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_29_0;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09EC70 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB09EC80);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CAF904()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A2CAFDBC();
  }
}

uint64_t sub_1A2CAF958(uint64_t *a1)
{
  v2 = v1;
  v51[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1A2D08344();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(v2 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v11 = v10;
  LOBYTE(v10) = sub_1A2D08364();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    goto LABEL_36;
  }

  v12 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__queue_predicates;
  swift_beginAccess();
  v13 = *(v2 + v12);

  v14 = sub_1A2CF6C90(v9, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    swift_beginAccess();
    sub_1A2CF6E0C(v14, v51);
    swift_endAccess();

    result = sub_1A2C897FC();
    if (result)
    {
      v18 = result;
      v19 = *(v2 + v12);
      v20 = *(v19 + 16);

      if (v20)
      {
        v21 = 0;
        v22 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v21 >= *(v19 + 16))
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
          }

          v23 = v19 + 8 * v21;
          v24 = *(v23 + 32);
          if (!v24)
          {

            v22 = 0;
            goto LABEL_26;
          }

          v25 = *(v24 + 16);
          v26 = *(v22 + 2);
          v27 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            goto LABEL_32;
          }

          v28 = *(v23 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v27 <= *(v22 + 3) >> 1)
          {
            if (!*(v24 + 16))
            {
              goto LABEL_6;
            }
          }

          else
          {
            if (v26 <= v27)
            {
              v30 = v26 + v25;
            }

            else
            {
              v30 = v26;
            }

            v22 = sub_1A2C8A10C(isUniquelyReferenced_nonNull_native, v30, 1, v22);
            if (!*(v24 + 16))
            {
LABEL_6:

              if (v25)
              {
                goto LABEL_33;
              }

              goto LABEL_7;
            }
          }

          if ((*(v22 + 3) >> 1) - *(v22 + 2) < v25)
          {
            goto LABEL_34;
          }

          swift_arrayInitWithCopy();

          if (v25)
          {
            v31 = *(v22 + 2);
            v32 = __OFADD__(v31, v25);
            v33 = v31 + v25;
            if (v32)
            {
              goto LABEL_35;
            }

            *(v22 + 2) = v33;
          }

LABEL_7:
          if (v20 == ++v21)
          {
            goto LABEL_24;
          }
        }
      }

      v22 = MEMORY[0x1E69E7CC0];
LABEL_24:

LABEL_26:
      v50[0] = v22;
      v34 = sub_1A2D07EB4();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      sub_1A2D07EA4();
      sub_1A2C8A218();
      v37 = sub_1A2D07E94();
      v39 = v38;

      v40 = sub_1A2D07F24();
      sub_1A2C55840(v37, v39);

      v41 = sub_1A2D07F44();
      v43 = v42;

      v44 = sub_1A2D07F24();
      v50[0] = 0;
      LOBYTE(v37) = [v18 subscribeToActivityProminenceMatchingPredicate:v44 error:v50];

      if (v37)
      {
        v45 = v50[0];
        sub_1A2C55840(v41, v43);
      }

      else
      {
        v46 = v50[0];
        v47 = sub_1A2D07ED4();

        swift_willThrow();
        sub_1A2C55840(v41, v43);
      }

      result = swift_unknownObjectRelease();
    }
  }

  v48 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A2CAFDBC()
{
  v43[4] = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v43[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  v8 = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    goto LABEL_35;
  }

  result = sub_1A2C897FC(v8);
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__queue_predicates;
    swift_beginAccess();
    v12 = *(v0 + v11);
    v13 = *(v12 + 16);

    if (v13)
    {
      v14 = 0;
      v15 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v14 >= *(v12 + 16))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

        v16 = v12 + 8 * v14;
        v17 = *(v16 + 32);
        if (!v17)
        {

          v15 = 0;
          goto LABEL_25;
        }

        v18 = *(v17 + 16);
        v19 = *(v15 + 2);
        v20 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          goto LABEL_31;
        }

        v21 = *(v16 + 32);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v20 <= *(v15 + 3) >> 1)
        {
          if (!*(v17 + 16))
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v19 <= v20)
          {
            v23 = v19 + v18;
          }

          else
          {
            v23 = v19;
          }

          v15 = sub_1A2C8A10C(isUniquelyReferenced_nonNull_native, v23, 1, v15);
          if (!*(v17 + 16))
          {
LABEL_5:

            if (v18)
            {
              goto LABEL_32;
            }

            goto LABEL_6;
          }
        }

        if ((*(v15 + 3) >> 1) - *(v15 + 2) < v18)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v18)
        {
          v24 = *(v15 + 2);
          v25 = __OFADD__(v24, v18);
          v26 = v24 + v18;
          if (v25)
          {
            goto LABEL_34;
          }

          *(v15 + 2) = v26;
        }

LABEL_6:
        if (v13 == ++v14)
        {
          goto LABEL_23;
        }
      }
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_23:

LABEL_25:
    v43[0] = v15;
    v27 = sub_1A2D07EB4();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1A2D07EA4();
    sub_1A2C8A218();
    v30 = sub_1A2D07E94();
    v32 = v31;

    v33 = sub_1A2D07F24();
    sub_1A2C55840(v30, v32);

    v34 = sub_1A2D07F44();
    v36 = v35;

    v37 = sub_1A2D07F24();
    v43[0] = 0;
    LOBYTE(v30) = [v10 subscribeToActivityProminenceMatchingPredicate:v37 error:v43];

    if (v30)
    {
      v38 = v43[0];
      sub_1A2C55840(v34, v36);
    }

    else
    {
      v39 = v43[0];
      v40 = sub_1A2D07ED4();

      swift_willThrow();
      sub_1A2C55840(v34, v36);
    }

    result = swift_unknownObjectRelease();
  }

  v41 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1A2CB01C8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A2CB027C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A2D0AD20;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v14 = *(a1 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
  v15 = sub_1A2D080E4();
  swift_bridgeObjectRetain_n();

  sub_1A2D08704();

  v16 = type metadata accessor for CancellableAssertion();
  v17 = objc_allocWithZone(v16);
  v18 = *(v15 + 48);
  v19 = *(v15 + 52);
  swift_allocObject();

  *&v17[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v22.receiver = v17;
  v22.super_class = v16;
  v20 = objc_msgSendSuper2(&v22, sel_init);

  result = sub_1A2C8BAD0(qword_1EB09ED00, type metadata accessor for CancellableAssertion);
  a6[3] = v16;
  a6[4] = result;
  *a6 = v20;
  return result;
}

void sub_1A2CB056C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a3;
    sub_1A2CAF958(&v6);
  }
}

unint64_t sub_1A2CB05F4()
{
  result = qword_1EB09ED60;
  if (!qword_1EB09ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED60);
  }

  return result;
}

uint64_t sub_1A2CB06C0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = *(v0 + 80);

    v3 = v0;
    v1 = sub_1A2CA7958();

    v4 = *(v0 + 16);
    *(v3 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1A2CB073C(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t (*sub_1A2CB074C(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A2CB06C0();
  return sub_1A2CB0794;
}

uint64_t sub_1A2CB0794(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

uint64_t sub_1A2CB07A4()
{
  v1 = *(v0 + 80);
  v2 = *(v1[2] + 16);

  os_unfair_lock_lock(v2);
  v3 = v1[10];
  sub_1A2CB0824(v3, v1[11]);
  os_unfair_lock_unlock(v2);

  return v3;
}

uint64_t sub_1A2CB0824(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A2C5E63C(a1, a2);
  }

  return a1;
}

uint64_t static ActivityManager.shared.getter()
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A2CB08E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0940, &unk_1A2D0D280);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AE0, &qword_1A2D15370);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(v0 + 88);
  v12 = *&v11[OBJC_IVAR____TtC11ActivityKit40ActivityFrequentUpdatesObservationClient_singleton];
  v13 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activities;
  swift_beginAccess();
  v14 = *(v12 + v13);
  v15 = MEMORY[0x1E69E7CD0];
  if (v14)
  {
    v15 = v14;
  }

  v20 = v15;
  v19 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AF0, qword_1A2D0D290);
  sub_1A2D081D4();
  v20 = *(v12 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activityDiffPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0B00, &qword_1A2D0CDF0);
  sub_1A2C56A78(&unk_1EB09EB48, &qword_1EB0A0940, &unk_1A2D0D280);
  sub_1A2C56A78(&qword_1EB09EB70, &qword_1EB0A0B00, &qword_1A2D0CDF0);
  sub_1A2D08244();
  (*(v2 + 8))(v5, v1);
  sub_1A2C56A78(&qword_1EB09EBE0, &qword_1EB0A0AE0, &qword_1A2D15370);
  v16 = sub_1A2D081F4();
  (*(v7 + 8))(v10, v6);

  return v16;
}

uint64_t sub_1A2CB0BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A2C53CD8(v3 + 32, v12);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v9 + 8))(a1, a2, v8, v9);
  if (!v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  v10 = type metadata accessor for ActivityDescriptor();
  return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
}

uint64_t sub_1A2CB0CCC(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(v1 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 16))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CB0D84(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(v1 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 24))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CB0E3C(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(v1 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 48))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CB0EF4(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(v1 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 56))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CB0FAC(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(v1 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 64))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CB1064(uint64_t a1, uint64_t a2)
{
  sub_1A2C53CD8(v2 + 32, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = (*(v6 + 32))(a1, a2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t sub_1A2CB1104(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  sub_1A2C53CD8(v3 + 32, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = v6;
  v9 = (*(v8 + 40))(a1, a2, &v14, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t ActivityManager.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return v0;
}

uint64_t ActivityManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t ActivityManager.mockPush(token:channelID:processIdentifier:environmentName:payload:pushPriority:completionHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  queue = *(v12 + 96);
  v19 = swift_allocObject();
  v19[2] = v12;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = a5;
  v19[8] = a6;
  v19[9] = a7;
  v19[10] = a8;
  v19[11] = a9;
  v19[12] = a10;
  v19[13] = a11;
  v19[14] = a12;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1A2CB1880;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1A2C90938;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_23;
  v21 = _Block_copy(aBlock);

  sub_1A2CB0824(a1, a2);

  dispatch_sync(queue, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CB1464(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v50 = a8;
  v51 = a4;
  v52 = a2;
  v18 = sub_1A2D08344();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(a1 + 96);
  *v23 = v24;
  (*(v19 + 104))(v23, *MEMORY[0x1E69E8020], v18, v21);
  v25 = v24;
  LOBYTE(v24) = sub_1A2D08364();
  v27 = *(v19 + 8);
  v26 = (v19 + 8);
  v27(v23, v18);
  if (v24)
  {
    v28 = *(a1 + 24);
    v29 = qword_1ED708A58;
    v26 = v28;
    if (v29 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v30 = qword_1ED712970;
  swift_unknownObjectWeakInit();
  type metadata accessor for Watchdog();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  type metadata accessor for UnfairLock();
  v32 = swift_allocObject();
  v33 = swift_slowAlloc();
  *(v32 + 16) = v33;
  v33->_os_unfair_lock_opaque = 0;
  *(v31 + 24) = v32;
  *(v31 + 32) = 0;

  os_unfair_lock_lock(v33);
  sub_1A2C8BCE8(v30, sub_1A2CA1640, 0, 10.0);
  os_unfair_lock_unlock(v33);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v46 = a3;
    v47 = a13;
    v49 = v26;
    v44 = a12;
    v45 = a5;
    v48 = *(Strong + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
    v36 = swift_allocObject();
    v36[2] = v52;
    v36[3] = a3;
    v36[4] = v35;
    v36[5] = a6;
    v37 = v50;
    v36[6] = a7;
    v36[7] = v37;
    v36[8] = a9;
    v36[9] = a10;
    v38 = v44;
    v39 = v45;
    v36[10] = a11;
    v36[11] = v38;
    v40 = v51;
    v36[12] = a13;
    v36[13] = v40;
    v36[14] = v39;
    v36[15] = v31;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1A2CB1CC4;
    *(v41 + 24) = v36;
    aBlock[4] = sub_1A2C90938;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A2C56C44;
    aBlock[3] = &block_descriptor_53;
    v26 = _Block_copy(aBlock);
    sub_1A2CB0824(v52, v46);

    v42 = v35;

    dispatch_sync(v48, v26);
    _Block_release(v26);

    MEMORY[0x1A58E5250](v54);
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if ((v39 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return MEMORY[0x1A58E5250](v54);
}

uint64_t ActivityPresentationPredicate.init(activityIdentifiers:presenterBundleIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ActivityPresentationPredicate.filter(presentations:)(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = v1[1];
  v68 = v3;
  if (!(v4 | v3))
  {

    return v2;
  }

  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v58 = MEMORY[0x1E69E7CC8];
  v59 = v9;
  v67 = v2;
  v60 = v2 + 64;
  v61 = v4;
  while (v8)
  {
LABEL_13:
    while (1)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v11 << 6);
      v15 = (*(v2 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v2 + 56) + 24 * v14 + 16);
      v66 = *v15;
      if (v4)
      {
        break;
      }

      if (!v68)
      {
        goto LABEL_30;
      }

LABEL_18:
      v63 = v17;
      v64 = v11;
      v65 = v8;
      v20 = *(v18 + 16);
      v62 = v18;
      if (v20)
      {
        v21 = (v18 + 49);
        v22 = MEMORY[0x1E69E7CC0];
        do
        {
          v23 = *(v21 - 17);
          v24 = *(v21 - 9);
          v25 = *(v21 - 1);
          v26 = *v21;
          v69 = v23;
          v70 = v24;
          MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
          v57 = &v69;
          swift_bridgeObjectRetain_n();
          v27 = sub_1A2C956A8(sub_1A2CB464C, v56, v68);

          if (v27)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_1A2CB2B4C(0, *(v22 + 16) + 1, 1, v22);
              v22 = isUniquelyReferenced_nonNull_native;
            }

            v29 = *(v22 + 16);
            v28 = *(v22 + 24);
            if (v29 >= v28 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_1A2CB2B4C((v28 > 1), v29 + 1, 1, v22);
              v22 = isUniquelyReferenced_nonNull_native;
            }

            *(v22 + 16) = v29 + 1;
            v30 = v22 + 24 * v29;
            *(v30 + 32) = v23;
            *(v30 + 40) = v24;
            *(v30 + 48) = v25;
            *(v30 + 49) = v26;
          }

          else
          {
          }

          v21 += 24;
          --v20;
        }

        while (v20);
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      v18 = v22;
      v2 = v67;
      v5 = v60;
      v4 = v61;
      v9 = v59;
      v11 = v64;
      v8 = v65;
      v17 = v63;
LABEL_30:
      if (!*(v18 + 16))
      {

        goto LABEL_8;
      }

      v65 = v8;

      v31 = v58;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v33 = v17;
      v34 = v32;
      v69 = v31;
      v35 = v33;
      v10 = sub_1A2C64868(v66, v33);
      v37 = v31[2];
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        goto LABEL_47;
      }

      v41 = v36;
      if (v31[3] >= v40)
      {
        if ((v34 & 1) == 0)
        {
          v54 = v10;
          sub_1A2CB3AD4(&qword_1EB0A0768, &qword_1A2D0BDB0);
          v10 = v54;
        }

        v42 = v35;
        if (v41)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_1A2C7A07C(v40, v34, &qword_1EB0A0768, &qword_1A2D0BDB0);
        v42 = v35;
        v10 = sub_1A2C64868(v66, v35);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_49;
        }

        if (v41)
        {
LABEL_36:
          v44 = v10;

          v58 = v69;
          v45 = (v69[7] + 24 * v44);
          v47 = v45[1];
          v46 = v45[2];
          *v45 = v66;
          v45[1] = v42;
          v45[2] = v18;

          goto LABEL_42;
        }
      }

      v48 = v69;
      v69[(v10 >> 6) + 8] |= 1 << v10;
      v49 = (v48[6] + 16 * v10);
      v50 = v66;
      *v49 = v66;
      v49[1] = v42;
      v51 = (v48[7] + 24 * v10);
      *v51 = v50;
      v51[1] = v42;
      v51[2] = v18;
      v52 = v48[2];
      v39 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v39)
      {
        goto LABEL_48;
      }

      v58 = v48;
      v48[2] = v53;
LABEL_42:
      v8 = v65;
      v4 = v61;
      if (!v65)
      {
        goto LABEL_9;
      }
    }

    v69 = v16;
    v70 = v17;
    MEMORY[0x1EEE9AC00](v10);
    v57 = &v69;

    isUniquelyReferenced_nonNull_native = sub_1A2C956A8(sub_1A2CB4A9C, v56, v4);
    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v67;
      if (!v68)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

    v2 = v67;
LABEL_8:
  }

LABEL_9:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v58;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1A2D08B84();
  __break(1u);
  return result;
}

uint64_t static ActivityPresentationPredicate.all.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB09F6F8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EB0A0950;
  *a1 = qword_1EB0A0948;
  a1[1] = v1;
}

Swift::Bool __swiftcall ActivityPresentationPredicate.matches(activityIdentifier:presenterBundleIdentifier:)(Swift::String activityIdentifier, Swift::String presenterBundleIdentifier)
{
  countAndFlagsBits = presenterBundleIdentifier._countAndFlagsBits;
  if (*v2)
  {
    object = presenterBundleIdentifier._object;
    v5 = v2[1];
    v12 = activityIdentifier;
    MEMORY[0x1EEE9AC00](activityIdentifier._countAndFlagsBits);
    v11 = &v12;
    v7 = sub_1A2C956A8(sub_1A2CB4A9C, v10, v6);
    v8 = 0;
    if ((v7 & 1) != 0 && v5)
    {
      v12._countAndFlagsBits = countAndFlagsBits;
      v12._object = object;
      MEMORY[0x1EEE9AC00](0);
      v11 = &v12;
      v8 = sub_1A2C956A8(sub_1A2CB4A9C, v10, v5);
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

unint64_t sub_1A2CB2380()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CB23BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001A2D19F50 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A2D19F70 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A2D08B34();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A2CB24A0(uint64_t a1)
{
  v2 = sub_1A2CB46C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CB24DC(uint64_t a1)
{
  v2 = sub_1A2CB46C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentationPredicate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0958, &unk_1A2D0CE70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CB46C0();

  sub_1A2D08C74();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
  sub_1A2C8A470(&unk_1ED708820);
  sub_1A2D08AA4();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1A2D08AA4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ActivityPresentationPredicate.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0960, &qword_1A2D0CE80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CB46C0();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
  v16 = 0;
  sub_1A2C8A470(&qword_1ED709510);
  sub_1A2D08A14();
  v11 = v17;
  v16 = 1;
  sub_1A2D08A14();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v15;
  *v15 = v11;
  v13[1] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2CB2970()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CA5AA8();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

char *sub_1A2CB2A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0980, &qword_1A2D0D110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1A2CB2B4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09C8, &unk_1A2D0D180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A2CB2C90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09B0, &unk_1A2D0D160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A2CB2E04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07B8, &qword_1A2D0BE30);
  v36 = a2;
  result = sub_1A2D08974();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      v26 = *(v8 + 40);
      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A2CB30BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0760, &qword_1A2D0BDA8);
  v36 = a2;
  result = sub_1A2D08974();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_1A2C5E63C(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A2CB33F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0780, &qword_1A2D0BDC0);
  v36 = a2;
  result = sub_1A2D08974();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1A2CAB5F4(v25, v37);
      }

      else
      {
        sub_1A2C57B10(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1A2CAB5F4(v37, (*(v8 + 56) + 32 * v16));
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_1A2CB36F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09D0, &qword_1A2D0D198);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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