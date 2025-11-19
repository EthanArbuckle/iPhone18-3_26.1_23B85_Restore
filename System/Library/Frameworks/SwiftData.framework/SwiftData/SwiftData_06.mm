void sub_19746544C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + *(type metadata accessor for EditingState() + 24)) != 1)
  {
    goto LABEL_7;
  }

  v11 = a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration;
  if ((*(v11 + *(type metadata accessor for ModelConfiguration() + 48)) & 1) == 0)
  {
    v12 = [a3 queryGenerationToken];
    if (v12)
    {
    }

    else
    {
      v13 = [objc_opt_self() currentQueryGenerationToken];
      v29 = 0;
      v14 = [a3 setQueryGenerationFromToken:v13 error:&v29];

      if (!v14)
      {
        v27 = v29;
        sub_1975211DC();

        swift_willThrow();
LABEL_14:
        v28 = *MEMORY[0x1E69E9840];
        return;
      }

      v15 = v29;
    }

LABEL_7:
    a4(a6);
    if (!v6)
    {
      v16 = [a3 queryGenerationToken];
      [a3 reset];
      if (v16)
      {
        v29 = 0;
        if ([a3 setQueryGenerationFromToken:v16 error:&v29])
        {
          v17 = v29;
        }

        else
        {
          v18 = v29;
          v19 = sub_1975211DC();

          swift_willThrow();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_19752C280;
          v29 = 0;
          v30 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000036, 0x8000000197524400);
          v21 = [v16 description];
          v22 = sub_1975217BC();
          v24 = v23;

          MEMORY[0x19A8DFF80](v22, v24);

          MEMORY[0x19A8DFF80](10, 0xE100000000000000);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
          sub_19752235C();
          v25 = v29;
          v26 = v30;
          *(v20 + 56) = MEMORY[0x1E69E6158];
          *(v20 + 32) = v25;
          *(v20 + 40) = v26;
          sub_197522A3C();
        }
      }
    }

    goto LABEL_14;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000005BLL, 0x8000000197524440);
  sub_19752235C();
  sub_1975223EC();
  __break(1u);
}

void sub_197465864(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  Request = type metadata accessor for DataStoreFetchRequest();
  sub_1974076EC(a2 + *(Request + 36), a3, a4, a5);
  if (v6)
  {
    return;
  }

  v15 = v14;
  [v14 setResultType_];
  v16 = *(a1 + 16);
  sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
  v17 = v16;
  v18 = sub_197521E8C();

  if (v18 >> 62)
  {
    sub_1973F3D34(0, qword_1ED7C7910, 0x1E695D630);

    v29 = sub_1975223FC();
    swift_bridgeObjectRelease_n();
    v18 = v29;
  }

  else
  {
    v19 = v18 & 0xFFFFFFFFFFFFFF8;

    sub_19752288C();
    sub_1973F3D34(0, qword_1ED7C7910, 0x1E695D630);
    if (swift_dynamicCastMetatype() || (v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_4:
    }

    else
    {
      v27 = (v19 + 32);
      while (1)
      {
        v28 = *v27;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v27;
        if (!--v26)
        {
          goto LABEL_4;
        }
      }

      v18 = v19 | 1;
    }
  }

  if (!(v18 >> 62))
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_24:

    *a6 = MEMORY[0x1E69E7CC0];
    return;
  }

  v20 = sub_1975220EC();
  if (!v20)
  {
    goto LABEL_24;
  }

LABEL_7:
  v31 = MEMORY[0x1E69E7CC0];
  sub_197411CB8(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x19A8E0960](v21, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      v24 = *(v31 + 16);
      v23 = *(v31 + 24);
      if (v24 >= v23 >> 1)
      {
        v30 = v22;
        sub_197411CB8((v23 > 1), v24 + 1, 1);
        v22 = v30;
      }

      ++v21;
      *(v31 + 16) = v24 + 1;
      v25 = v31 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = 0;
    }

    while (v20 != v21);

    *a6 = v31;
  }
}

id sub_197465B5C(void *a1)
{
  v2 = [a1 domain];
  if (!v2)
  {
    sub_1975217BC();
    v2 = sub_19752178C();
  }

  v3 = [a1 code];
  v4 = [a1 userInfo];
  v5 = sub_1975215FC();

  sub_197467F14(v5);

  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_1975215EC();

  v8 = [v6 initWithDomain:v2 code:v3 userInfo:v7];

  return v8;
}

uint64_t DefaultStore.cachedSnapshots(for:editingState:)()
{
  sub_19746F744();
  swift_allocError();
  *v0 = 0;
  return swift_willThrow();
}

uint64_t sub_197465CE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v87 = a3;
  swift_beginAccess();
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);

  v13 = sub_19752178C();
  v14 = [a2 valueForKey_];

  if (!v14)
  {
  }

  sub_197521FDC();
  swift_unknownObjectRelease();
  sub_1974028B8(&v93, v96);
  if ((*(a1 + 120) & 0x20) != 0)
  {
    swift_beginAccess();
    v17 = *(a1 + 56);
    *&v93 = v17;
    if (swift_conformsToProtocol2() && v17)
    {
      do
      {
        sub_1973F732C(v17, &v93);
        v17 = v93;
        if (swift_conformsToProtocol2())
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 1;
        }
      }

      while (!v18);
    }

    v19 = MEMORY[0x1E69E6158];
    if (swift_dynamicCastMetatype())
    {
      sub_197404860(v96, v90);
      *&v94[8] = v19;
      *&v94[16] = MEMORY[0x1E69E6190];
      v20 = MEMORY[0x1E69E6160];
    }

    else
    {
      v27 = MEMORY[0x1E69E6370];
      if (!swift_dynamicCastMetatype())
      {
        v29 = sub_19752132C();
        if (swift_dynamicCastMetatype())
        {
          sub_197404860(v96, v90);
          *&v94[8] = v29;
          v30 = MEMORY[0x1E6969530];
          *&v94[16] = sub_197413CBC(&qword_1ED7C77B0, MEMORY[0x1E6969530]);
          v31 = &unk_1ED7C77B8;
        }

        else
        {
          v32 = sub_19752135C();
          if (swift_dynamicCastMetatype())
          {
            sub_197404860(v96, v90);
            *&v94[8] = v32;
            v30 = MEMORY[0x1E69695A8];
            *&v94[16] = sub_197413CBC(&qword_1EAF2AC90, MEMORY[0x1E69695A8]);
            v31 = &unk_1EAF2AC98;
          }

          else
          {
            v33 = sub_1975212CC();
            if (!swift_dynamicCastMetatype())
            {
              if (!swift_dynamicCastMetatype())
              {
                v40 = MEMORY[0x1E69E7230];
                if (swift_dynamicCastMetatype())
                {
                  sub_197404860(v96, v90);
                  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                  swift_dynamicCast();
                  v41 = [v89[0] charValue];

                  *&v94[8] = v40;
                  *&v94[16] = MEMORY[0x1E69E7250];
                  v42 = MEMORY[0x1E69E7238];
                }

                else
                {
                  v43 = MEMORY[0x1E69E7508];
                  if (!swift_dynamicCastMetatype())
                  {
                    v44 = MEMORY[0x1E69E7290];
                    if (swift_dynamicCastMetatype())
                    {
                      sub_197404860(v96, v90);
                      sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                      swift_dynamicCast();
                      v45 = [v89[0] shortValue];

                      *&v94[8] = v44;
                      *&v94[16] = MEMORY[0x1E69E72B0];
                      v46 = MEMORY[0x1E69E7298];
                    }

                    else
                    {
                      v47 = MEMORY[0x1E69E75F8];
                      if (!swift_dynamicCastMetatype())
                      {
                        v48 = MEMORY[0x1E69E72F0];
                        if (swift_dynamicCastMetatype())
                        {
                          sub_197404860(v96, v90);
                          sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                          swift_dynamicCast();
                          v49 = [v89[0] intValue];

                          *&v94[8] = v48;
                          *&v94[16] = MEMORY[0x1E69E7320];
                          v50 = MEMORY[0x1E69E72F8];
                        }

                        else
                        {
                          v51 = MEMORY[0x1E69E7668];
                          if (!swift_dynamicCastMetatype())
                          {
                            v52 = MEMORY[0x1E69E6530];
                            if (swift_dynamicCastMetatype())
                            {
                              sub_197404860(v96, v90);
                              sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                              swift_dynamicCast();
                              v53 = [v89[0] integerValue];

                              v54 = MEMORY[0x1E69E6560];
                              v55 = MEMORY[0x1E69E6538];
                            }

                            else
                            {
                              v52 = MEMORY[0x1E69E6810];
                              if (swift_dynamicCastMetatype())
                              {
                                sub_197404860(v96, v90);
                                sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                swift_dynamicCast();
                                v53 = [v89[0] unsignedIntegerValue];

                                v54 = MEMORY[0x1E69E6840];
                                v55 = MEMORY[0x1E69E6818];
                              }

                              else
                              {
                                v52 = MEMORY[0x1E69E7360];
                                if (swift_dynamicCastMetatype())
                                {
                                  sub_197404860(v96, v90);
                                  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                  swift_dynamicCast();
                                  v53 = [v89[0] longLongValue];

                                  v54 = MEMORY[0x1E69E7390];
                                  v55 = MEMORY[0x1E69E7368];
                                }

                                else
                                {
                                  v52 = MEMORY[0x1E69E76D8];
                                  if (!swift_dynamicCastMetatype())
                                  {
                                    v56 = MEMORY[0x1E69E6448];
                                    if (swift_dynamicCastMetatype())
                                    {
                                      sub_197404860(v96, v90);
                                      sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                      swift_dynamicCast();
                                      [v89[0] floatValue];
                                      v58 = v57;

                                      *&v94[8] = v56;
                                      *&v94[16] = MEMORY[0x1E69E6478];
                                      v95 = MEMORY[0x1E69E6458];
                                      LODWORD(v93) = v58;
                                      goto LABEL_26;
                                    }

                                    v59 = MEMORY[0x1E69E7DE0];
                                    if (swift_dynamicCastMetatype())
                                    {
                                      sub_197404860(v96, &v93);
                                      sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                      swift_dynamicCast();
                                      [v90[0] doubleValue];
                                      v61 = v60;

                                      *&v94[8] = v59;
                                      *&v94[16] = sub_1974701E0();
                                      v95 = sub_197470234();
                                    }

                                    else
                                    {
                                      v62 = MEMORY[0x1E69E63B0];
                                      if (!swift_dynamicCastMetatype())
                                      {
                                        type metadata accessor for Decimal(0);
                                        v65 = v64;
                                        if (!swift_dynamicCastMetatype())
                                        {
                                          goto LABEL_75;
                                        }

                                        sub_197404860(v96, v90);
                                        *&v94[8] = v65;
                                        *&v94[16] = sub_197413CBC(&qword_1EAF2AEF0, type metadata accessor for Decimal);
                                        v95 = sub_197413CBC(&qword_1EAF2AEF8, type metadata accessor for Decimal);
                                        goto LABEL_22;
                                      }

                                      sub_197404860(v96, v90);
                                      sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                      swift_dynamicCast();
                                      [v89[0] doubleValue];
                                      v61 = v63;

                                      *&v94[8] = v62;
                                      *&v94[16] = MEMORY[0x1E69E63E8];
                                      v95 = MEMORY[0x1E69E63C0];
                                    }

                                    *&v93 = v61;
                                    goto LABEL_26;
                                  }

                                  sub_197404860(v96, v90);
                                  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                  swift_dynamicCast();
                                  v53 = [v89[0] unsignedLongLongValue];

                                  v54 = MEMORY[0x1E69E7708];
                                  v55 = MEMORY[0x1E69E76E0];
                                }
                              }
                            }

                            *&v94[16] = v54;
                            v95 = v55;
                            *&v94[8] = v52;
                            *&v93 = v53;
                            goto LABEL_26;
                          }

                          sub_197404860(v96, v90);
                          sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                          swift_dynamicCast();
                          v49 = [v89[0] unsignedIntValue];

                          *&v94[8] = v51;
                          *&v94[16] = MEMORY[0x1E69E7698];
                          v50 = MEMORY[0x1E69E7670];
                        }

                        v95 = v50;
                        LODWORD(v93) = v49;
                        goto LABEL_26;
                      }

                      sub_197404860(v96, v90);
                      sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                      swift_dynamicCast();
                      v45 = [v89[0] unsignedShortValue];

                      *&v94[8] = v47;
                      *&v94[16] = MEMORY[0x1E69E7628];
                      v46 = MEMORY[0x1E69E7600];
                    }

                    v95 = v46;
                    LOWORD(v93) = v45;
                    goto LABEL_26;
                  }

                  sub_197404860(v96, v90);
                  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                  swift_dynamicCast();
                  v41 = [v89[0] unsignedCharValue];

                  *&v94[8] = v43;
                  *&v94[16] = MEMORY[0x1E69E7528];
                  v42 = MEMORY[0x1E69E7510];
                }

                v95 = v42;
                LOBYTE(v93) = v41;
                goto LABEL_26;
              }

              v34 = swift_beginAccess();
              LOBYTE(v90[0]) = 0;
              *v91 = 0uLL;
              v90[1] = 0;
              *v94 = 0uLL;
              *&v91[16] = 256;
              v92 = 0;
              *&v94[14] = *&v91[14];
              v35 = *(a1 + 48);
              v93 = v90[0];
              MEMORY[0x1EEE9AC00](v34, v36);
              v85 = &v93;

              v37 = v88;
              v38 = sub_197476F7C(sub_197470288, &v84, v35);
              v88 = v37;

              sub_19741EE34(v90);
              if (v38)
              {
                v39 = *(a4 + 40);
                *&v93 = a5;
                BYTE8(v93) = a6;

                sub_19746C028(v96, &v93, v12, v11);

                v22 = *(a1 + 16);
                v23 = *(a1 + 24);
                *&v94[8] = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
                *&v94[16] = sub_1973FF3D4();
                v95 = sub_1973FF428();
                *&v93 = v12;
                *(&v93 + 1) = v11;
                v24 = 5;
                goto LABEL_18;
              }

              sub_197404860(v96, v89);
              *&v94[8] = MEMORY[0x1E6969080];
              *&v94[16] = sub_1974122A4();
              v95 = sub_1974122F8();
LABEL_22:
              swift_dynamicCast();
LABEL_26:
              v25 = v12;
              v26 = v11;
              goto LABEL_27;
            }

            sub_197404860(v96, v90);
            *&v94[8] = v33;
            v30 = MEMORY[0x1E6968FB0];
            *&v94[16] = sub_197413CBC(&qword_1EAF2AF10, MEMORY[0x1E6968FB0]);
            v31 = &unk_1EAF2AF18;
          }
        }

        v95 = sub_197413CBC(v31, v30);
        __swift_allocate_boxed_opaque_existential_2Tm(&v93);
        goto LABEL_22;
      }

      sub_197404860(v96, v90);
      *&v94[8] = v27;
      *&v94[16] = MEMORY[0x1E69E6390];
      v20 = MEMORY[0x1E69E6378];
    }

    v95 = v20;
    goto LABEL_22;
  }

  if ((*(a1 + 120) & 1) == 0)
  {
    if ((*(a1 + 120) & 0x90) != 0)
    {
      v15 = *(a4 + 40);
      *&v93 = a5;
      BYTE8(v93) = a6;

      sub_1973FF4F8(v96, &v93, v12, v11);

      *&v94[8] = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
      *&v94[16] = sub_1973FF3D4();
      v95 = sub_1973FF428();
      *&v93 = v12;
      *(&v93 + 1) = v11;
      v94[0] = 1;
LABEL_25:

      goto LABEL_26;
    }

    if ((*(a1 + 120) & 0x48) != 0)
    {
      v28 = *(a4 + 40);
      *&v93 = a5;
      BYTE8(v93) = a6;

      sub_19746BD5C(v96, &v93, v12, v11);

      *&v94[8] = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
      *&v94[16] = sub_1973FF3D4();
      v95 = sub_1973FF428();
      *&v93 = v12;
      *(&v93 + 1) = v11;
      v94[0] = 0;
      goto LABEL_25;
    }

    *&v93 = 0;
    *(&v93 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x8000000197523E90);
    v90[0] = a1;
    type metadata accessor for Schema.Attribute();
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    v76 = [a2 description];
    v77 = sub_1975217BC();
    v79 = v78;

    MEMORY[0x19A8DFF80](v77, v79);

    v86 = 0;
    for (i = 782; ; i = 764)
    {
LABEL_74:
      v85 = i;
      sub_1975223EC();
      __break(1u);
LABEL_75:
      *&v93 = 0;
      *(&v93 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x8000000197523E90);
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      v80 = [a2 description];
      v81 = sub_1975217BC();
      v83 = v82;

      MEMORY[0x19A8DFF80](v81, v83);

      v86 = 0;
    }
  }

  sub_197404860(v96, &v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
  if (!swift_dynamicCast())
  {
    *&v93 = 0;
    *(&v93 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197523EB0);
    MEMORY[0x19A8DFF80](v12, v11);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v66 = [a2 objectID];
    v67 = [v66 description];
    v68 = sub_1975217BC();
    v70 = v69;

    MEMORY[0x19A8DFF80](v68, v70);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    v71 = [a2 description];
    v72 = sub_1975217BC();
    v74 = v73;

    MEMORY[0x19A8DFF80](v72, v74);

    v86 = 0;
    i = 768;
    goto LABEL_74;
  }

  v21 = *(a4 + 40);
  *&v93 = a5;
  BYTE8(v93) = a6;

  sub_19746BEBC(v90[0], &v93, v12, v11);

  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  *&v94[8] = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
  *&v94[16] = sub_1973FF3D4();
  v95 = sub_1973FF428();
  *&v93 = v12;
  *(&v93 + 1) = v11;
  v24 = 2;
LABEL_18:
  v94[0] = v24;

  v25 = v22;
  v26 = v23;
LABEL_27:
  sub_19749B5D4(&v93, v25, v26);
  return __swift_destroy_boxed_opaque_existential_1Tm(v96);
}

uint64_t sub_197466F68()
{
  sub_19746F744();
  swift_allocError();
  *v0 = 0;
  return swift_willThrow();
}

void sub_197466FB8(char *a1, uint64_t a2, id *a3, uint64_t a4, size_t *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  sub_19744FB48(a2, 0);
  if (!v5)
  {
    v11 = v10;
    v12 = [*&a1[OBJC_IVAR____TtC9SwiftData12DefaultStore_container] persistentStoreCoordinator];
    *&v21 = 0;
    if (![v12 executeRequest:v11 withContext:a4 error:&v21])
    {
      v17 = v21;
      sub_1975211DC();

      swift_willThrow();
      goto LABEL_17;
    }

    v13 = v21;
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1973F3D34(0, qword_1ED7C75A0, 0x1E695D6A0);
    v14 = swift_dynamicCast();
    v15 = v19;
    if (!v14)
    {
      v15 = 0;
    }

    v16 = *a3;
    *a3 = v15;

    if (*a3)
    {
      if ([*a3 result])
      {
        sub_197521FDC();
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      v21 = v19;
      v22 = v20;
      if (*(&v20 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFB0, &qword_19752C718);
        if (swift_dynamicCast())
        {

          sub_19746FCFC(v19, a1, a5);
        }

        else
        {
        }

        goto LABEL_17;
      }
    }

    else
    {

      v21 = 0u;
      v22 = 0u;
    }

    sub_19740C044(&v21, &qword_1EAF2AF20, &unk_19752F320);
  }

LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
}

int *sub_19746723C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_19752132C();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  v12 = [a1 changes];
  if (v12)
  {
    v13 = v12;
    sub_1973F3D34(0, &qword_1ED7C6D38, 0x1E695D690);
    v14 = sub_1975219CC();

    v15 = a1;
    sub_19746FBF8(v14, a2, v15, &v50);

    v11 = v50;
  }

  v16 = [a1 timestamp];
  v46 = v10;
  sub_19752131C();

  sub_19744E718([a1 token], &v49);
  v45 = v49;
  v44 = [a1 transactionNumber];
  v17 = [a1 storeID];
  v18 = sub_1975217BC();
  v42 = v19;
  v43 = v18;

  v20 = [a1 bundleID];
  v21 = sub_1975217BC();
  v41 = v22;

  v23 = [a1 processID];
  v24 = sub_1975217BC();
  v26 = v25;

  v27 = [a1 author];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1975217BC();
    v31 = v30;
  }

  else
  {

    v29 = 0;
    v31 = 0;
  }

  (*(v47 + 32))(a3, v46, v48);

  result = type metadata accessor for DefaultHistoryTransaction();
  *(a3 + result[5]) = v11;
  v33 = v44;
  *(a3 + result[6]) = v45;
  *(a3 + result[7]) = v33;
  v34 = (a3 + result[8]);
  v35 = v42;
  *v34 = v43;
  v34[1] = v35;
  v36 = (a3 + result[9]);
  v37 = v41;
  *v36 = v21;
  v36[1] = v37;
  v38 = (a3 + result[10]);
  *v38 = v24;
  v38[1] = v26;
  v39 = (a3 + result[11]);
  *v39 = v29;
  v39[1] = v31;
  return result;
}

void DefaultStore.deleteHistory(_:)()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container);
  v3 = objc_allocWithZone(MEMORY[0x1E695D628]);
  v4 = v2;
  v5 = [v3 initWithConcurrencyType_];
  v6 = [v4 persistentStoreCoordinator];
  [v5 setPersistentStoreCoordinator_];

  v7 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v5 setMergePolicy_];

  [v5 set:1 isSwiftBound:?];
  sub_197521E5C();
  if (!v1)
  {

    return;
  }

  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
  sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
  if (swift_dynamicCast())
  {

    v9 = [v20 domain];
    v10 = sub_1975217BC();
    v12 = v11;

    v13 = *MEMORY[0x1E696A250];
    if (v10 == sub_1975217BC() && v12 == v14)
    {
    }

    else
    {
      v15 = sub_19752282C();

      if ((v15 & 1) == 0)
      {
LABEL_12:
        swift_willThrow();
        goto LABEL_13;
      }
    }

    if ([v20 code] == 134301)
    {
      if (qword_1EAF2AD88 != -1)
      {
        swift_once();
      }

      v16 = byte_1EAF2B818;
      v18 = qword_1EAF2B820;
      v17 = unk_1EAF2B828;
      sub_19744BE3C();
      swift_allocError();
      *v19 = v16;
      *(v19 + 8) = v18;
      *(v19 + 16) = v17;
      swift_willThrow();

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
}

void sub_197467854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[4] = *MEMORY[0x1E69E9840];
  sub_19744FB48(a2, 1);
  if (!v3)
  {
    v7 = v6;
    v8 = [*(a1 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
    v12[0] = 0;
    if ([v8 executeRequest:v7 withContext:a3 error:v12])
    {
      v9 = v12[0];
      sub_197521FDC();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    else
    {
      v10 = v12[0];
      sub_1975211DC();

      swift_willThrow();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

unint64_t sub_197467984()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF98, &qword_19752C708);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v45 - v5;
  v7 = sub_19752177C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v48 = &v45 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF60, &qword_19752C6D0);
  v49 = v0;
  if (sub_197520C3C())
  {
    v20 = sub_197470C44();
    if (v1)
    {

      return v0;
    }

    v25 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v25 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v46 = v20;
      v47 = v21;
    }

    else
    {

      v46 = 0x44497463656A626FLL;
      v47 = 0xE800000000000000;
    }

    sub_197520C0C();
    v26 = v8;
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_19740C044(v6, &qword_1EAF2AF98, &qword_19752C708);
      v27 = 0;
LABEL_20:
      sub_197520C1C();
      v36 = sub_1975213BC();
      v37 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v38 = sub_19752178C();

      v0 = [v37 initWithKey:v38 ascending:v36 & 1 selector:v27];

      return v0;
    }

    v28 = *(v8 + 32);
    v29 = v48;
    v28(v48, v6, v7);
    (*(v26 + 16))(v17, v29, v7);
    sub_19752175C();
    v30 = v26;
    v45 = sub_197413CBC(qword_1EAF2AA80, MEMORY[0x1E6969DA8]);
    v31 = sub_19752173C();
    v32 = *(v30 + 8);
    v32(v13, v7);
    if (v31)
    {
      v33 = &selRef_compare_;
LABEL_18:
      v35 = v32;
      v32(v17, v7);
LABEL_19:
      v27 = *v33;
      v35(v48, v7);
      goto LABEL_20;
    }

    sub_19752176C();
    v34 = sub_19752173C();
    v32(v13, v7);
    if (v34)
    {
      v33 = &selRef_localizedCompare_;
      goto LABEL_18;
    }

    sub_19752174C();
    v40 = sub_19752173C();
    v32(v13, v7);
    v32(v17, v7);
    v35 = v32;
    if (v40)
    {
      v33 = &selRef_localizedStandardCompare_;
      goto LABEL_19;
    }

    v41 = v32;

    if (qword_1EAF2AD38 != -1)
    {
      swift_once();
    }

    v42 = byte_1EAF2B728;
    v43 = qword_1EAF2B730;
    v0 = unk_1EAF2B738;
    sub_19744BE3C();
    swift_allocError();
    *v44 = v42;
    *(v44 + 8) = v43;
    *(v44 + 16) = v0;
    swift_willThrow();

    v41(v48, v7);
  }

  else
  {
    if (qword_1EAF2AD38 != -1)
    {
      swift_once();
    }

    v0 = byte_1EAF2B728;
    v23 = qword_1EAF2B730;
    v22 = unk_1EAF2B738;
    sub_19744BE3C();
    swift_allocError();
    *v24 = v0;
    *(v24 + 8) = v23;
    *(v24 + 16) = v22;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_197467F14(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC8];
  while (v4)
  {
    v12 = v6;
LABEL_14:
    v15 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_197404860(*(a1 + 56) + 32 * v16, &v130);
    *&v132 = v19;
    *(&v132 + 1) = v18;
    sub_1974028B8(&v130, &v133);

    v14 = v12;
LABEL_15:
    v135 = v132;
    v136[0] = v133;
    v136[1] = v134;
    v20 = *(&v132 + 1);
    if (!*(&v132 + 1))
    {

      return v7;
    }

    v21 = v135;
    sub_1974028B8(v136, &v132);
    sub_197404860(&v132, &v130);
    v22 = sub_1973F3D34(0, &qword_1EAF2ACD8, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v23 = v20;
      v24 = v5;
      v25 = v1;
      v125 = v129[0];
      v127 = v14;
      v26 = sub_197468A88(v129[0]);
      v131 = v22;
      *&v130 = v26;
      sub_1974028B8(&v130, v129);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v21;
      v29 = isUniquelyReferenced_nonNull_native;
      v30 = v28;
      v31 = sub_1973F4028(v28, v23);
      v33 = v7[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_87;
      }

      v37 = v32;
      if (v7[3] >= v36)
      {
        if ((v29 & 1) == 0)
        {
          v116 = v31;
          sub_197422CFC();
          v31 = v116;
        }

        v38 = v30;
      }

      else
      {
        sub_1973FF860(v36, v29);
        v38 = v30;
        v31 = sub_1973F4028(v30, v23);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_97;
        }
      }

      v1 = v25;
      v5 = v24;
      if (v37)
      {
        v58 = v31;

        v59 = (v7[7] + 32 * v58);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        sub_1974028B8(v129, v59);

        __swift_destroy_boxed_opaque_existential_1Tm(&v132);
      }

      else
      {
        v7[(v31 >> 6) + 8] |= 1 << v31;
        v60 = (v7[6] + 16 * v31);
        *v60 = v38;
        v60[1] = v23;
        sub_1974028B8(v129, (v7[7] + 32 * v31));

        __swift_destroy_boxed_opaque_existential_1Tm(&v132);
        v61 = v7[2];
        v35 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v35)
        {
          goto LABEL_88;
        }

        v7[2] = v62;
      }

      v6 = v127;
    }

    else
    {
      sub_197404860(&v132, &v130);
      v40 = sub_1973F3D34(0, &qword_1EAF2AFE8, 0x1E695DEC8);
      if (swift_dynamicCast())
      {
        v8 = v21;
        v9 = v129[0];
        v10 = sub_19746924C(v129[0]);
        v131 = v40;
        *&v130 = v10;
        sub_1974028B8(&v130, v129);
        v11 = swift_isUniquelyReferenced_nonNull_native();
        sub_1973FF710(v129, v8, v20, v11);

        __swift_destroy_boxed_opaque_existential_1Tm(&v132);
        v6 = v14;
      }

      else
      {
        v126 = v21;
        sub_197404860(&v132, &v130);
        sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
        if (swift_dynamicCast())
        {
          v41 = v14;
          v42 = v129[0];
          v43 = [v129[0] description];
          v44 = sub_1975217BC();
          v46 = v45;

          v131 = MEMORY[0x1E69E6158];
          *&v130 = v44;
          *(&v130 + 1) = v46;
          sub_1974028B8(&v130, v129);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v48 = sub_1973F4028(v126, v20);
          v50 = v7[2];
          v51 = (v49 & 1) == 0;
          v35 = __OFADD__(v50, v51);
          v52 = v50 + v51;
          if (v35)
          {
            goto LABEL_89;
          }

          v53 = v49;
          if (v7[3] >= v52)
          {
            if (v47)
            {
              v54 = v126;
              if (v49)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v117 = v48;
              sub_197422CFC();
              v48 = v117;
              v54 = v126;
              if (v53)
              {
                goto LABEL_27;
              }
            }
          }

          else
          {
            sub_1973FF860(v52, v47);
            v54 = v126;
            v48 = sub_1973F4028(v126, v20);
            if ((v53 & 1) != (v55 & 1))
            {
              goto LABEL_97;
            }

            if (v53)
            {
LABEL_27:
              v56 = v48;

              v57 = (v7[7] + 32 * v56);
              __swift_destroy_boxed_opaque_existential_1Tm(v57);
              sub_1974028B8(v129, v57);

              __swift_destroy_boxed_opaque_existential_1Tm(&v132);
              goto LABEL_55;
            }
          }

          v7[(v48 >> 6) + 8] |= 1 << v48;
          v96 = (v7[6] + 16 * v48);
          *v96 = v54;
          v96[1] = v20;
          sub_1974028B8(v129, (v7[7] + 32 * v48));

          __swift_destroy_boxed_opaque_existential_1Tm(&v132);
          v97 = v7[2];
          v35 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v35)
          {
            goto LABEL_91;
          }

          v7[2] = v98;
LABEL_55:
          v6 = v41;
        }

        else
        {
          sub_197404860(&v132, &v130);
          v63 = sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
          v128 = v14;
          if (swift_dynamicCast())
          {
            v64 = v129[0];
            v65 = [v129[0] domain];
            if (!v65)
            {
              sub_1975217BC();
              v65 = sub_19752178C();
            }

            v122 = v64;
            v123 = [v64 code];
            v66 = [v64 userInfo];
            v67 = sub_1975215FC();

            sub_197467F14(v67);

            v68 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v69 = sub_1975215EC();

            v70 = [v68 initWithDomain:v65 code:v123 userInfo:v69];

            v131 = v63;
            *&v130 = v70;
            sub_1974028B8(&v130, v129);
            v71 = swift_isUniquelyReferenced_nonNull_native();
            v72 = sub_1973F4028(v126, v20);
            v74 = v7[2];
            v75 = (v73 & 1) == 0;
            v35 = __OFADD__(v74, v75);
            v76 = v74 + v75;
            if (v35)
            {
              goto LABEL_90;
            }

            v77 = v73;
            if (v7[3] >= v76)
            {
              if (v71)
              {
                v78 = v126;
                if (v73)
                {
                  goto LABEL_44;
                }
              }

              else
              {
                v118 = v72;
                sub_197422CFC();
                v72 = v118;
                v78 = v126;
                if (v77)
                {
                  goto LABEL_44;
                }
              }
            }

            else
            {
              sub_1973FF860(v76, v71);
              v78 = v126;
              v72 = sub_1973F4028(v126, v20);
              if ((v77 & 1) != (v79 & 1))
              {
                goto LABEL_97;
              }

              if (v77)
              {
LABEL_44:
                v80 = v72;

                v81 = (v7[7] + 32 * v80);
                __swift_destroy_boxed_opaque_existential_1Tm(v81);
                sub_1974028B8(v129, v81);

                goto LABEL_62;
              }
            }

            v7[(v72 >> 6) + 8] |= 1 << v72;
            v109 = (v7[6] + 16 * v72);
            *v109 = v78;
            v109[1] = v20;
            sub_1974028B8(v129, (v7[7] + 32 * v72));

            __swift_destroy_boxed_opaque_existential_1Tm(&v132);
            v110 = v7[2];
            v35 = __OFADD__(v110, 1);
            v111 = v110 + 1;
            if (v35)
            {
              goto LABEL_94;
            }

LABEL_76:
            v7[2] = v111;
            v6 = v128;
          }

          else
          {
            sub_197404860(&v132, &v130);
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
            if (swift_dynamicCast())
            {
              v83 = sub_197467F14(v129[0]);

              v131 = v82;
              *&v130 = v83;
              sub_1974028B8(&v130, v129);
              v84 = swift_isUniquelyReferenced_nonNull_native();
              v85 = sub_1973F4028(v126, v20);
              v87 = v7[2];
              v88 = (v86 & 1) == 0;
              v35 = __OFADD__(v87, v88);
              v89 = v87 + v88;
              if (v35)
              {
                goto LABEL_93;
              }

              v90 = v86;
              if (v7[3] >= v89)
              {
                if (v84)
                {
                  v91 = v126;
                  if ((v86 & 1) == 0)
                  {
                    goto LABEL_70;
                  }
                }

                else
                {
                  v119 = v85;
                  sub_197422CFC();
                  v85 = v119;
                  v91 = v126;
                  if ((v90 & 1) == 0)
                  {
                    goto LABEL_70;
                  }
                }
              }

              else
              {
                sub_1973FF860(v89, v84);
                v91 = v126;
                v85 = sub_1973F4028(v126, v20);
                if ((v90 & 1) != (v92 & 1))
                {
                  goto LABEL_97;
                }

                if ((v90 & 1) == 0)
                {
LABEL_70:
                  v7[(v85 >> 6) + 8] |= 1 << v85;
                  v112 = (v7[6] + 16 * v85);
                  *v112 = v91;
                  v112[1] = v20;
                  sub_1974028B8(v129, (v7[7] + 32 * v85));
                  __swift_destroy_boxed_opaque_existential_1Tm(&v132);
                  v113 = v7[2];
                  v35 = __OFADD__(v113, 1);
                  v111 = v113 + 1;
                  if (v35)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_76;
                }
              }

              v93 = v85;

              v94 = (v7[7] + 32 * v93);
              __swift_destroy_boxed_opaque_existential_1Tm(v94);
              v95 = v129;
            }

            else
            {
              sub_197404860(&v132, &v130);
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v129[0] = v7;
              v100 = sub_1973F4028(v126, v20);
              v102 = v7[2];
              v103 = (v101 & 1) == 0;
              v35 = __OFADD__(v102, v103);
              v104 = v102 + v103;
              if (v35)
              {
                goto LABEL_92;
              }

              v105 = v101;
              if (v7[3] >= v104)
              {
                if (v99)
                {
                  v106 = v126;
                  if ((v101 & 1) == 0)
                  {
                    goto LABEL_75;
                  }
                }

                else
                {
                  v120 = v100;
                  sub_197422CFC();
                  v100 = v120;
                  v106 = v126;
                  if ((v105 & 1) == 0)
                  {
                    goto LABEL_75;
                  }
                }
              }

              else
              {
                sub_1973FF860(v104, v99);
                v106 = v126;
                v100 = sub_1973F4028(v126, v20);
                if ((v105 & 1) != (v107 & 1))
                {
                  goto LABEL_97;
                }

                if ((v105 & 1) == 0)
                {
LABEL_75:
                  v7 = v129[0];
                  *(v129[0] + (v100 >> 6) + 8) |= 1 << v100;
                  v114 = (v7[6] + 16 * v100);
                  *v114 = v106;
                  v114[1] = v20;
                  sub_1974028B8(&v130, (v7[7] + 32 * v100));
                  __swift_destroy_boxed_opaque_existential_1Tm(&v132);
                  v115 = v7[2];
                  v35 = __OFADD__(v115, 1);
                  v111 = v115 + 1;
                  if (v35)
                  {
                    goto LABEL_96;
                  }

                  goto LABEL_76;
                }
              }

              v108 = v100;

              v7 = v129[0];
              v94 = (*(v129[0] + 7) + 32 * v108);
              __swift_destroy_boxed_opaque_existential_1Tm(v94);
              v95 = &v130;
            }

            sub_1974028B8(v95, v94);
LABEL_62:
            __swift_destroy_boxed_opaque_existential_1Tm(&v132);
            v6 = v128;
          }
        }
      }
    }
  }

  if (v5 <= v6 + 1)
  {
    v13 = v6 + 1;
  }

  else
  {
    v13 = v5;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v5)
    {
      v4 = 0;
      v133 = 0u;
      v134 = 0u;
      v132 = 0u;
      goto LABEL_15;
    }

    v4 = *(v1 + 8 * v12);
    ++v6;
    if (v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

id sub_197468A88(void *a1)
{
  v2 = [a1 count];
  v35 = [objc_allocWithZone(MEMORY[0x1E695DF90]) initWithCapacity_];
  v33 = a1;
  v34 = sub_197521D7C();
  sub_197521D9C();
  if (v44)
  {
    v3 = &unk_1EAF2AFF0;
    v4 = &unk_19752C750;
    do
    {
      sub_1974028B8(&v43, v41);
      sub_1974028B8(&v45, &v42);
      sub_1973FE0E4(v41, &v38, v3, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      v8 = [v33 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v8)
      {
        sub_197521FDC();
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
      }

      v40[0] = v38;
      v40[1] = v39;
      sub_1973FE0E4(v40, &v38, &qword_1EAF2AF20, &unk_19752F320);
      if (*(&v39 + 1))
      {
        sub_1973F3D34(0, &qword_1EAF2ACD8, 0x1E695DF20);
        if (swift_dynamicCast())
        {
          v5 = v36[0];
          v6 = sub_197468A88(v36[0]);
          goto LABEL_4;
        }
      }

      else
      {
        sub_19740C044(&v38, &qword_1EAF2AF20, &unk_19752F320);
      }

      sub_1973FE0E4(v40, &v38, &qword_1EAF2AF20, &unk_19752F320);
      if (!*(&v39 + 1))
      {
        sub_19740C044(&v38, &qword_1EAF2AF20, &unk_19752F320);
LABEL_18:
        sub_1973FE0E4(v40, &v38, &qword_1EAF2AF20, &unk_19752F320);
        if (*(&v39 + 1))
        {
          sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
          if (swift_dynamicCast())
          {
            v9 = v36[0];
            sub_1973FE0E4(v41, &v38, v3, v4);
            v10 = [v9 description];
            if (!v10)
            {
              sub_1975217BC();
              v10 = sub_19752178C();
              v3 = &unk_1EAF2AFF0;
            }

            sub_1973FE0E4(&v38, v36, v3, v4);
            [v35 __swift_setObject_forKeyedSubscript_];

LABEL_34:
            swift_unknownObjectRelease();
            sub_19740C044(&v38, v3, v4);
            goto LABEL_5;
          }
        }

        else
        {
          sub_19740C044(&v38, &qword_1EAF2AF20, &unk_19752F320);
        }

        sub_1973FE0E4(v40, &v38, &qword_1EAF2AF20, &unk_19752F320);
        if (*(&v39 + 1))
        {
          sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
          if (swift_dynamicCast())
          {
            v11 = v36[0];
            sub_1973FE0E4(v41, &v38, v3, v4);
            v12 = [v11 domain];
            v13 = v4;
            v14 = v3;
            if (!v12)
            {
              sub_1975217BC();
              v12 = sub_19752178C();
            }

            v31 = [v11 code];
            v15 = [v11 userInfo];
            v16 = sub_1975215FC();
            v32 = v11;
            v17 = v16;

            sub_197467F14(v17);

            v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v19 = sub_1975215EC();

            v20 = [v18 initWithDomain:v12 code:v31 userInfo:v19];

            sub_1973FE0E4(&v38, v36, v14, v13);
            [v35 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
            sub_19740C044(&v38, v14, v13);
            sub_19740C044(v40, &qword_1EAF2AF20, &unk_19752F320);
            sub_19740C044(v41, v14, v13);
            v3 = v14;
            v4 = v13;
            goto LABEL_6;
          }
        }

        else
        {
          sub_19740C044(&v38, &qword_1EAF2AF20, &unk_19752F320);
        }

        sub_1973FE0E4(v41, &v38, v3, v4);
        sub_1973FE0E4(v40, v36, &qword_1EAF2AF20, &unk_19752F320);
        v21 = v37;
        if (v37)
        {
          v22 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v32 = &v31;
          v23 = v4;
          v24 = *(v21 - 8);
          v25 = *(v24 + 64);
          MEMORY[0x1EEE9AC00](v22, v22);
          v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v24 + 16))(v27);
          v28 = sub_19752281C();
          v29 = v27;
          v3 = &unk_1EAF2AFF0;
          (*(v24 + 8))(v29, v21);
          v4 = v23;
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        else
        {
          v28 = 0;
        }

        sub_1973FE0E4(&v38, v36, v3, v4);
        [v35 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      sub_1973F3D34(0, &qword_1EAF2AFE8, 0x1E695DEC8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }

      v5 = v36[0];
      v6 = sub_19746924C(v36[0]);
LABEL_4:
      v7 = v6;
      sub_1973FE0E4(v41, &v38, v3, v4);
      [v35 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
LABEL_5:
      sub_19740C044(v40, &qword_1EAF2AF20, &unk_19752F320);
      sub_19740C044(v41, v3, v4);
LABEL_6:
      sub_197521D9C();
    }

    while (v44);
  }

  return v35;
}

id sub_19746924C(void *a1)
{
  v2 = sub_1975211FC();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 count];
  v8 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithCapacity_];
  sub_197521F0C();
  sub_1975211EC();
  if (v33)
  {
    v9 = MEMORY[0x1E69E7CA0];
    v10 = &off_1E74AD000;
    v11 = &off_1E74AD000;
    do
    {
      sub_1974028B8(&v32, v30);
      sub_197404860(v30, v29);
      sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
      if (swift_dynamicCast())
      {
        v12 = v28;
        v13 = [v28 v10[338]];
        if (!v13)
        {
          sub_1975217BC();
          v13 = sub_19752178C();
          v11 = &off_1E74AD000;
        }

        [v8 v11[436]];
      }

      else
      {
        sub_197404860(v30, v29);
        sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
        if (swift_dynamicCast())
        {
          v14 = v8;
          v15 = v28;
          v16 = [v28 domain];
          if (!v16)
          {
            sub_1975217BC();
            v16 = sub_19752178C();
          }

          v17 = [v15 code];
          v18 = [v15 userInfo];
          v19 = v9;
          v20 = sub_1975215FC();

          sub_197467F14(v20);

          v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v22 = sub_1975215EC();

          v23 = v21;
          v9 = v19;
          v24 = [v23 initWithDomain:v16 code:v17 userInfo:v22];

          v11 = &off_1E74AD000;
          v8 = v14;
          [v14 addObject_];

          v10 = &off_1E74AD000;
        }

        else
        {
          __swift_project_boxed_opaque_existential_1Tm(v30, v31);
          [v8 v11[436]];
          swift_unknownObjectRelease();
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      sub_1975211EC();
    }

    while (v33);
  }

  (*(v26 + 8))(v6, v27);
  return v8;
}

void sub_197469694(id *a1, uint64_t a2, void *a3, char **a4)
{
  v7 = *a1;
  v8 = [*a1 changedObjectID];
  v9 = v8;
  if (!a2)
  {
    goto LABEL_11;
  }

  v10 = *(a2 + 72);
  v11 = [v8 entityName];
  v12 = sub_1975217BC();
  v14 = v13;

  if (!*(v10 + 16))
  {

LABEL_11:

    return;
  }

  v15 = sub_1973F4028(v12, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

  v18 = *(v10 + 56);
  v19 = *(v18 + 8 * v15);
  v20 = *(v19 + 144);
  if (!v20)
  {
    goto LABEL_11;
  }

  v21 = *(v19 + 152);
  v22 = *(v18 + 8 * v15);

  sub_197469858(v7, v20, a3, v20, v21, v33);
  sub_1974713D0(v33, &v31);
  v23 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_1974771C0(0, *(v23 + 2) + 1, 1, v23);
    *a4 = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    *a4 = sub_1974771C0((v25 > 1), v26 + 1, 1, v23);
  }

  sub_19747142C(v33);
  v27 = *a4;
  *(v27 + 2) = v26 + 1;
  v28 = &v27[48 * v26];
  v30 = v31;
  v29 = v32[0];
  *(v28 + 57) = *(v32 + 9);
  *(v28 + 2) = v30;
  *(v28 + 3) = v29;
}

void sub_197469858(id a1@<X1>, char *a2@<X0>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = [a1 changeType];
  if (v12 == 2)
  {
    v17 = a1;
    v18 = [a3 transactionNumber];
    *(a6 + 24) = type metadata accessor for DefaultHistoryDelete();
    *(a6 + 32) = swift_getWitnessTable();
    v19 = swift_allocObject();
    *a6 = v19;
    sub_197469D54(v17, v18, a2, a5, a4, a5, v19 + 16);
    v16 = 2;
    goto LABEL_7;
  }

  if (v12 == 1)
  {
    v13 = a1;
    v14 = [a3 transactionNumber];
    *(a6 + 24) = type metadata accessor for DefaultHistoryUpdate();
    *(a6 + 32) = swift_getWitnessTable();
    v15 = swift_allocObject();
    *a6 = v15;
    sub_197469BE0(v13, v14, a2, a5, a4, a5, v15 + 16);
    v16 = 1;
LABEL_7:
    *(a6 + 40) = v16;
    return;
  }

  if (!v12)
  {
    v20 = a1;
    v21 = [a3 transactionNumber];
    *(a6 + 24) = type metadata accessor for DefaultHistoryInsert();
    *(a6 + 32) = swift_getWitnessTable();
    v22 = swift_allocObject();
    *a6 = v22;
    sub_197469B24(v20, v21, v22 + 16);
    v16 = 0;
    goto LABEL_7;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197524500);
  [a1 changeType];
  type metadata accessor for NSPersistentHistoryChangeType(0);
  sub_19752235C();
  sub_1975223EC();
  __break(1u);
}

double sub_197469B24@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 changedObjectID];
  v7 = [a1 changeID];

  v11 = v6;
  v12 = 0;
  sub_1974CF6D4(v7, a2, &v11, &v13);
  v8 = v14;
  v9 = v15;
  result = *&v13;
  *a3 = v13;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  return result;
}

double sub_197469BE0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = [a1 updatedProperties];
  if (v14)
  {
    v15 = v14;
    sub_1973F3D34(0, &qword_1ED7C9B98, 0x1E695D6D8);
    sub_197471480(&qword_1ED7C6D40, &qword_1ED7C9B98, 0x1E695D6D8);
    sub_197521BCC();
  }

  v16 = sub_19746FAB8(a1, a5, a3, a6, a4);

  v17 = [a1 changedObjectID];
  v18 = [a1 changeID];

  v23 = v17;
  v24 = 0;
  sub_1974CF6EC(v18, a2, &v23, v16, &v25);
  v19 = v26;
  v20 = v27;
  v21 = v28;
  result = *&v25;
  *a7 = v25;
  *(a7 + 16) = v19;
  *(a7 + 24) = v20;
  *(a7 + 32) = v21;
  return result;
}

double sub_197469D54@<D0>(void *a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = [a1 tombstone];
  if (v14)
  {
    v15 = v14;
    sub_1975215FC();
  }

  sub_19746A164(a1, a5, a3, a6, a4, &v25);

  v21 = v25;
  v16 = [a1 changedObjectID];
  v17 = [a1 changeID];

  v23 = v16;
  v24 = 0;
  v22 = v21;
  sub_1974CF888(v17, a2, &v23, &v22, &v25);
  v18 = v26;
  v19 = v27;
  *a7 = v25;
  *(a7 + 16) = v18;
  *(a7 + 24) = v19;
  result = *&v28;
  *(a7 + 32) = v28;
  return result;
}

uint64_t sub_197469EB8(void **a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6)
{
  v9 = *a1;
  v10 = sub_19752178C();
  v11 = [v9 valueForKey_];

  if (v11)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v30 = v6;

      MEMORY[0x19A8DFF80](46, 0xE100000000000000);

      v12 = [v9 name];
      v13 = sub_1975217BC();
      v15 = v14;

      MEMORY[0x19A8DFF80](v13, v15);

      v16 = sub_1974A280C(v25, v26, a4, a6);

      sub_19752228C();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        *&v29[0] = v17;
      }

      else
      {
        *&v29[0] = v16;
      }

      sub_197521AAC();
      return sub_197521A7C();
    }
  }

  else
  {
    sub_19740C044(v29, &qword_1EAF2AF20, &unk_19752F320);
  }

  v18 = [v9 name];
  v19 = sub_1975217BC();
  v21 = v20;

  v22 = sub_1974A280C(v19, v21, a4, a6);

  sub_19752228C();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    *&v29[0] = v23;
  }

  else
  {
    *&v29[0] = v22;
  }

  sub_197521AAC();
  return sub_197521A7C();
}

id sub_19746A164@<X0>(void *a1@<X2>, uint64_t a2@<X3>, char *a3@<X4>, uint64_t a4@<X5>, char *a5@<X6>, _OWORD *a6@<X8>)
{
  sub_1974CF708(&v25);
  result = [a1 tombstone];
  if (result)
  {
    v12 = result;
    v13 = sub_1975215FC();

    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;

    for (i = 0; v16; result = sub_19740C044(v23, &qword_1EAF2AFB8, &qword_19752C720))
    {
      v19 = i;
LABEL_10:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v19 << 6);
      sub_19741FFE0(*(v13 + 48) + 40 * v21, v23);
      sub_197404860(*(v13 + 56) + 32 * v21, v24);
      sub_19746A320(v23, v24, &v25, a2, a3, a4, a5);
    }

    while (1)
    {
      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        goto LABEL_13;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++i;
      if (v16)
      {
        i = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    *a6 = v25;
  }

  return result;
}

uint64_t sub_19746A320(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7)
{
  sub_19741FFE0(a1, v18);
  swift_dynamicCast();
  sub_1974A280C(v16, v17, a5, a7);

  sub_19752228C();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = a2[3];
  v12 = __swift_project_boxed_opaque_existential_1Tm(a2, v11);
  v18[3] = v11;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v18);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_2Tm, v12, v11);
  v14 = type metadata accessor for HistoryTombstone();

  sub_1974CF7D0(v10, v18, v14);

  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t sub_19746A47C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v1 + 56) + 8 * v11);
    v16 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v17 = [v16 initWithLongLong_];
    if (v17)
    {
      v42 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = sub_1973F4028(v14, v13);
      v25 = v8[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        result = sub_1975229CC();
        __break(1u);
        return result;
      }

      v29 = v24;
      if (v8[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v34 = v23;
        sub_19747B114();
        v23 = v34;
        if ((v29 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        v31 = v23;

        v32 = v8[7];
        v33 = *(v32 + 8 * v31);
        *(v32 + 8 * v31) = v42;
      }

      else
      {
        sub_1974786D8(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_1973F4028(v14, v13);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_30;
        }

LABEL_19:
        if (v29)
        {
          goto LABEL_20;
        }

LABEL_22:
        v8[(v23 >> 6) + 8] |= 1 << v23;
        v35 = (v8[6] + 16 * v23);
        *v35 = v14;
        v35[1] = v13;
        *(v8[7] + 8 * v23) = v42;
        v36 = v8[2];
        v27 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v27)
        {
          goto LABEL_28;
        }

        v8[2] = v37;
      }
    }

    else
    {
      v18 = sub_1973F4028(v14, v13);
      v20 = v19;

      if (v20)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_19747B114();
        }

        v21 = *(v8[6] + 16 * v18 + 8);

        sub_1974A013C(v18, v8);
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
  v39 = sub_1975215EC();
  v40 = [v38 initWithDictionary_];

  if (!v40)
  {
    goto LABEL_29;
  }

  return v40;
}

uint64_t sub_19746A79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for DataStoreBatchFetchRequest() + 40);
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a1;
  v12 = v3;
  v8 = MEMORY[0x19A8E1370]();
  v9 = sub_197464164(a1 + v7, v3, sub_197471314, v11);
  objc_autoreleasePoolPop(v8);
  return v9;
}

void sub_19746A83C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v12 = *(a1 + 16);
  sub_1974076EC(a2, a3, a4, a5);
  if (v6)
  {

    return;
  }

  v14 = v13;
  sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
  v15 = sub_197521E8C();
  v16 = v15;
  if (!(v15 >> 62))
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_22:

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v17 = sub_1975220EC();
  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_6:
  v44 = v12;
  v45 = v14;
  v46 = a6;
  v50 = 0;
  *&v47 = MEMORY[0x1E69E7CC0];
  sub_1975222CC();
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v18 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x19A8E0960](v18, v16);
    }

    else
    {
      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = [v19 objectID];

    sub_19752229C();
    v22 = *(v47 + 16);
    sub_1975222DC();
    sub_1975222EC();
    sub_1975222AC();
  }

  while (v17 != v18);

  v14 = v47;
  if ((v47 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v33 = v14;
    v34 = 0;
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      v35 = MEMORY[0x19A8E0960](v34, v33);
      ResultsCollectionElement = type metadata accessor for CoreDataFetchResultsCollectionElement();
      v37 = swift_allocObject();
      v37[3] = 0;
      v37[4] = 0;
      swift_weakInit();
      v38 = v37[3];
      v37[3] = 0;
      v37[4] = 0;
      v37[2] = v35;
      swift_unknownObjectRelease();
      swift_weakAssign();
      v39 = ResultsCollectionElement;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_197477070(0, v24[2] + 1, 1, v24);
      }

      v41 = v24[2];
      v40 = v24[3];
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v43 = sub_197477070((v40 > 1), v41 + 1, 1, v24);
        v42 = v41 + 1;
        v24 = v43;
      }

      ++v34;
      v48 = v39;
      v49 = &off_1F0BAA170;
      *&v47 = v37;
      v24[2] = v42;
      sub_197471350(&v47, &v24[5 * v41 + 4]);
    }

    while (v17 != v34);
    goto LABEL_20;
  }

  if (v17 <= *(v47 + 16))
  {
    v23 = type metadata accessor for CoreDataFetchResultsCollectionElement();
    v24 = MEMORY[0x1E69E7CC0];
    v25 = 32;
    do
    {
      v26 = v14;
      v27 = *&v14[v25];
      v28 = swift_allocObject();
      v28[3] = 0;
      v28[4] = 0;
      swift_weakInit();
      v29 = v28[3];
      v28[3] = 0;
      v28[4] = 0;
      v28[2] = v27;
      v30 = v27;
      swift_unknownObjectRelease();
      swift_weakAssign();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_197477070(0, v24[2] + 1, 1, v24);
      }

      v32 = v24[2];
      v31 = v24[3];
      if (v32 >= v31 >> 1)
      {
        v24 = sub_197477070((v31 > 1), v32 + 1, 1, v24);
      }

      v48 = v23;
      v49 = &off_1F0BAA170;
      *&v47 = v28;
      v24[2] = v32 + 1;
      sub_197471350(&v47, &v24[5 * v32 + 4]);
      v25 += 8;
      --v17;
      v14 = v26;
    }

    while (v17);
LABEL_20:

    a6 = v46;
LABEL_23:

    *a6 = v24;
    return;
  }

  __break(1u);
}

uint64_t sub_19746AC8C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_19746ACCC()
{
  v1 = *v0;
  v2 = 0x6C6261646F636564;
  v3 = 0xD000000000000012;
  if (v1 != 4)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x726F66736E617274;
  if (v1 != 1)
  {
    v4 = 0x7469736F706D6F63;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_19746ADA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1974710EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19746ADE0(uint64_t a1)
{
  v2 = sub_197471948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746AE1C(uint64_t a1)
{
  v2 = sub_197471948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746AE58(void *a1, int a2)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B038, &qword_19752C980);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v55 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B040, &qword_19752C988);
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v52 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B048, &qword_19752C990);
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v49 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B050, &qword_19752C998);
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B058, &qword_19752C9A0);
  v45 = *(v20 - 8);
  v46 = v20;
  v21 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v43 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B060, &qword_19752C9A8);
  v44 = *(v25 - 8);
  v26 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v43 - v28;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B068, &qword_19752C9B0);
  v30 = *(v58 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v58, v32);
  v34 = &v43 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_197471948();
  sub_197522B0C();
  v36 = (v30 + 8);
  if (v59 > 2u)
  {
    if (v59 == 3)
    {
      v63 = 3;
      sub_197471A44();
      v39 = v49;
      v40 = v58;
      sub_19752266C();
      v42 = v50;
      v41 = v51;
    }

    else if (v59 == 4)
    {
      v64 = 4;
      sub_1974719F0();
      v39 = v52;
      v40 = v58;
      sub_19752266C();
      v42 = v53;
      v41 = v54;
    }

    else
    {
      v65 = 5;
      sub_19747199C();
      v39 = v55;
      v40 = v58;
      sub_19752266C();
      v42 = v56;
      v41 = v57;
    }

    (*(v42 + 8))(v39, v41);
  }

  else if (v59)
  {
    if (v59 == 1)
    {
      v61 = 1;
      sub_197471AEC();
      v37 = v58;
      sub_19752266C();
      (*(v45 + 8))(v24, v46);
      return (*v36)(v34, v37);
    }

    v62 = 2;
    sub_197471A98();
    v40 = v58;
    sub_19752266C();
    (*(v47 + 8))(v19, v48);
  }

  else
  {
    v60 = 0;
    sub_197471B40();
    v40 = v58;
    sub_19752266C();
    (*(v44 + 8))(v29, v25);
  }

  return (*v36)(v34, v40);
}

uint64_t sub_19746B44C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEB8, &qword_19752C678);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19746FA10();
  sub_197522B0C();
  v18 = 0;
  sub_19752268C();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    sub_19746FA64();
    sub_1975226EC();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_19746B5F0(uint64_t a1)
{
  v2 = sub_197471A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B62C(uint64_t a1)
{
  v2 = sub_197471A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B680(uint64_t a1)
{
  v2 = sub_197471B40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B6BC(uint64_t a1)
{
  v2 = sub_197471B40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B710(uint64_t a1)
{
  v2 = sub_19747199C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B74C(uint64_t a1)
{
  v2 = sub_19747199C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B7A0(uint64_t a1)
{
  v2 = sub_1974719F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B7DC(uint64_t a1)
{
  v2 = sub_1974719F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B830(uint64_t a1)
{
  v2 = sub_197471A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B86C(uint64_t a1)
{
  v2 = sub_197471A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B8C0(uint64_t a1)
{
  v2 = sub_197471AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746B8FC(uint64_t a1)
{
  v2 = sub_197471AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19746B938()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19746B980()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19746B9C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1974702E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_19746BA34()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19746BAA8()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19746BAEC()
{
  if (*v0)
  {
    result = 0x7954657275747566;
  }

  else
  {
    result = 0x79747265706F7270;
  }

  *v0;
  return result;
}

uint64_t sub_19746BB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79747265706F7270 && a2 == 0xEC000000656D614ELL;
  if (v6 || (sub_19752282C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7954657275747566 && a2 == 0xEA00000000006570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19752282C();

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

uint64_t sub_19746BC34(uint64_t a1)
{
  v2 = sub_19746FA10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19746BC70(uint64_t a1)
{
  v2 = sub_19746FA10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_19746BCAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_19752282C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_19746BD0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_19746FF9C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_19746BD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 16);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1973FFB18(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:
  sub_197404860(a1, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1973FF710(v20, a3, a4, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v16 = *(v5 + 16);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_1973FF658(v14, v9, v10, v17);
  sub_1974028C8(v9, v10);
  *(v5 + 16) = v19;
  return swift_endAccess();
}

uint64_t sub_19746BEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 24);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1974BF974(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19747CCC8(a1, a3, a4, isUniquelyReferenced_nonNull_native);

  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v16 = *(v5 + 24);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + 24);
  *(v5 + 24) = 0x8000000000000000;
  sub_19747CB28(v14, v9, v10, v17);
  sub_1974028C8(v9, v10);
  *(v5 + 24) = v19;
  return swift_endAccess();
}

uint64_t sub_19746C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 56);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1973FFB18(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:
  sub_197404860(a1, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1973FF710(v20, a3, a4, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v16 = *(v5 + 56);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + 56);
  *(v5 + 56) = 0x8000000000000000;
  sub_1973FF658(v14, v9, v10, v17);
  sub_1974028C8(v9, v10);
  *(v5 + 56) = v19;
  return swift_endAccess();
}

uint64_t sub_19746C188(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 40);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1974249DC(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:

  v15 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19741213C(v15, a3, a4, isUniquelyReferenced_nonNull_native);

  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v17 = *(v5 + 40);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  sub_1974249B0(v14, v9, v10, v18);
  sub_1974028C8(v9, v10);
  *(v5 + 40) = v20;
  return swift_endAccess();
}

uint64_t sub_19746C2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 48);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_19740141C(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_197400C64(a1, a3, a4, isUniquelyReferenced_nonNull_native);

  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v16 = *(v5 + 48);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + 48);
  *(v5 + 48) = 0x8000000000000000;
  sub_1974013F4(v14, v9, v10, v17);
  sub_1974028C8(v9, v10);
  *(v5 + 48) = v19;
  return swift_endAccess();
}

uint64_t sub_19746C460(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B76C(0, v1, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B798(0, v1, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B76C(0, v1, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B930(0, v1, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B904(0, v1, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v1, v2);
  sub_19749B76C(0, v1, v2);
  return swift_endAccess();
}

uint64_t sub_19746C608(uint64_t a1, uint64_t a2)
{
  sub_1973F3D34(0, qword_1ED7C6730, 0x1E695DF90);
  v3 = sub_197521D6C();
  if ((*(a2 + 120) & 2) != 0)
  {
    sub_197521D7C();
    sub_197521D9C();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    for (i = v32; *(&v30 + 1); i = v32)
    {
      sub_1974028B8(&v33, &v29);
      sub_1974028B8(&v35, &v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
      if (swift_dynamicCast())
      {
        v25 = sub_19746D01C(v38);

        if (v25)
        {
          __swift_project_boxed_opaque_existential_1Tm(&v29, *(&v30 + 1));
          [v3 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
      sub_197521D9C();
      v33 = v29;
      v34 = v30;
      v35 = v31;
    }

    v26 = sub_19746D1F0(v3, a2);

    return v26;
  }

  result = swift_beginAccess();
  v5 = *(a2 + 128);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return v3;
    }

    goto LABEL_4;
  }

  result = sub_1975220EC();
  v6 = result;
  if (!result)
  {
    return v3;
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = v5 & 0xC000000000000001;

    v8 = 0;
    v9 = MEMORY[0x1E69E6158];
    v27 = v5;
    while (1)
    {
      if (v7)
      {
        MEMORY[0x19A8E0960](v8, v5);
      }

      else
      {
        v17 = *(v5 + 8 * v8 + 32);
      }

      type metadata accessor for Schema.CompositeAttribute();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = v18;
        swift_beginAccess();
        v20 = *(v19 + 24);
        *&v29 = *(v19 + 16);
        *(&v29 + 1) = v20;

        v21 = [v3 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v21)
        {
          sub_197521FDC();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
        }

        v33 = v29;
        v34 = v30;
        if (!*(&v30 + 1))
        {

          sub_19740C044(&v33, &qword_1EAF2AF20, &unk_19752F320);
          goto LABEL_9;
        }

        sub_1973F3D34(0, &qword_1EAF2ACD8, 0x1E695DF20);
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_9;
        }

        v22 = v37;
        if ((*(v19 + 120) & 2) == 0 || [v37 count])
        {
          v10 = v6;
          v11 = v7;
          v12 = v3;
          v13 = v9;
          v14 = *(v19 + 16);
          v15 = *(v19 + 24);

          v16 = sub_19746C608(v22, v19);
          *&v33 = v14;
          *(&v33 + 1) = v15;
          v9 = v13;
          v3 = v12;
          v7 = v11;
          v6 = v10;
          v5 = v27;
          [v3 __swift_setObject_forKeyedSubscript_];
        }

        else
        {
          v24 = *(v19 + 16);
          v23 = *(v19 + 24);

          *&v33 = v24;
          *(&v33 + 1) = v23;
          [v3 __swift_setObject_forKeyedSubscript_];
        }

        swift_unknownObjectRelease();
      }

LABEL_9:
      if (v6 == ++v8)
      {

        return v3;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19746CA90(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  type metadata accessor for CompositeDecoder();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v8 = a2;
  v9 = sub_197441730(v7);
  v6[4] = a3;
  v6[5] = v8;
  v6[3] = v9;
  sub_197413CBC(&qword_1ED7C6930, type metadata accessor for CompositeDecoder);

  sub_197521B9C();
}

uint64_t sub_19746CD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = dynamic_cast_existential_2_conditional(a6);
  if (result)
  {
    return sub_19746CDB0(result, a2, a3, a4, a5, a6, result, a7, v14);
  }

  return result;
}

uint64_t sub_19746CDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a4;
  v32[0] = a9;
  v32[1] = a3;
  v33 = sub_197521F5C();
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v33, v13);
  v16 = v32 - v15;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v14, v19);
  v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v32 - v24;
  v26 = sub_197520B7C();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_197520B6C();
  sub_197520B5C();

  (*(v17 + 32))(v22, v25, a7);
  v29 = swift_dynamicCast();
  (*(*(a5 - 8) + 56))(v16, v29 ^ 1u, 1, a5);
  v30 = v34;
  swift_beginAccess();
  return (*(v11 + 40))(v30, v16, v33);
}

uint64_t sub_19746D01C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = 1;
    return v3 & 1;
  }

  v2 = a1 + 64;
  v3 = 1;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_13:
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = v13 | (v10 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      sub_197404860(*(a1 + 56) + 32 * v14, v18);
      *&v19 = v16;
      *(&v19 + 1) = v17;
      sub_1974028B8(v18, &v20);

      v12 = v10;
LABEL_14:
      v22 = v19;
      v23[0] = v20;
      v23[1] = v21;
      if (!*(&v19 + 1))
      {

        return v3 & 1;
      }

      sub_1974028B8(v23, &v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v3 = sub_19746D01C(*&v18[0]);

      v9 = v12;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v3 = 0;
    return v3 & 1;
  }

LABEL_6:
  if (v7 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      goto LABEL_14;
    }

    v6 = *(v2 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19746D1F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1973F3D34(0, qword_1ED7C6730, 0x1E695DF90);
  v4 = sub_197521D6C();
  result = swift_beginAccess();
  v6 = a2[16];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return v4;
  }

  result = sub_1975220EC();
  v7 = result;
  if (!result)
  {
    return v4;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = v6 & 0xC000000000000001;

    v9 = 0;
    v21 = v6;
    do
    {
      if (v8)
      {
        v10 = MEMORY[0x19A8E0960](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        swift_beginAccess();
        v23 = *(v10 + 16);

        v13 = [v4 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v13)
        {
          sub_197521FDC();
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = 0u;
          v24 = 0u;
        }

        v25[0] = v23;
        v25[1] = v24;
        if (*(&v24 + 1))
        {
          sub_1973F3D34(0, &qword_1EAF2ACD8, 0x1E695DF20);
          if (swift_dynamicCast())
          {
            swift_beginAccess();
            v14 = v7;
            v15 = v8;
            v16 = v3;
            v17 = v4;
            v18 = *(v12 + 16);
            v19 = *(v12 + 24);

            v20 = sub_19746D1F0(v22, v12);
            *&v25[0] = v18;
            *(&v25[0] + 1) = v19;
            v4 = v17;
            v3 = v16;
            v8 = v15;
            v7 = v14;
            v6 = v21;
            [v4 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
          }
        }

        else
        {

          sub_19740C044(v25, &qword_1EAF2AF20, &unk_19752F320);
        }
      }

      else
      {
      }

      ++v9;
    }

    while (v7 != v9);

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_19746D578()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v1 = OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError;
  if (*&v0[OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError])
  {
    goto LABEL_2;
  }

  v4 = OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager;
  v5 = *&v0[OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager];
  if (!v5)
  {
    v20[0] = 0;
    if ([v0 _validateStages_])
    {
      v10 = *&v0[v4];
      if (v10)
      {
        v11 = v20[0];
        v12 = v10;
        v13 = [v12 stages];
        sub_1973F3D34(0, qword_1ED7C8060, 0x1E695D660);
        v14 = sub_1975219CC();

        result = v14;
        goto LABEL_3;
      }

      if (!*&v0[v1])
      {
        result = sub_1975223EC();
        __break(1u);
        return result;
      }

      v19 = v20[0];
    }

    else
    {
      v15 = v20[0];
      v16 = sub_1975211DC();

      swift_willThrow();
      v17 = *&v0[v1];
      *&v0[v1] = v16;
      v18 = v16;
    }

LABEL_2:
    result = MEMORY[0x1E69E7CC0];
LABEL_3:
    v3 = *MEMORY[0x1E69E9840];
    return result;
  }

  v6 = v5;
  v7 = [v6 stages];
  sub_1973F3D34(0, qword_1ED7C8060, 0x1E695D660);
  v8 = sub_1975219CC();

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void *sub_19746D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError;
  *(v4 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError) = 0;
  v11 = OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager;
  *(v4 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager) = 0;
  sub_19746F310(a2, a3);
  if (v5)
  {
    sub_19740AB48(a4, type metadata accessor for ModelConfiguration);

    type metadata accessor for DefaultMigrationManager(0);
    v12 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x30);
    v13 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_schema) = a1;
    v14 = (v4 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan);
    *v14 = a2;
    v14[1] = a3;
    sub_19740B324(a4, v4 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_configuration, type metadata accessor for ModelConfiguration);
    sub_1973F3D34(0, qword_1ED7C8060, 0x1E695D660);

    v15 = sub_1975219BC();
    v17.receiver = v4;
    v17.super_class = type metadata accessor for DefaultMigrationManager(0);
    v4 = objc_msgSendSuper2(&v17, sel_initWithMigrationStages_, v15);

    sub_19740AB48(a4, type metadata accessor for ModelConfiguration);
  }

  return v4;
}

void sub_19746D954()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError);
    swift_willThrow();
LABEL_3:
    v4 = v2;
    return;
  }

  v5 = OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager;
  if (!*(v0 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager))
  {
    sub_19746DA54();
    if (v1)
    {
      v2 = 0;
      goto LABEL_3;
    }

    v7 = *(v0 + v5);
    *(v0 + v5) = v6;
  }
}

void sub_19746DA54()
{
  v2 = v1;
  v3 = v0;
  v4 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v5 = v0 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan;
  v6 = *(v0 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan);
  v7 = *(v5 + 8);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v26 = v6;
    v10 = (v8 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = (*(*v10 + 8))(v11, *v10);
      (*(v12 + 16))(&v31, v11, v12);
      v27 = v31;
      v28 = v32;
      type metadata accessor for Schema();
      swift_allocObject();
      Schema.init(_:version:)(v13, &v27);

      MEMORY[0x19A8E00D0](v14);
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1975219FC();
      }

      sub_197521A4C();

      v10 += 2;
      --v9;
    }

    while (v9);
    v6 = v26;
  }

  v29 = 0;
  v30 = v4;
  v16 = (*(v7 + 16))(v6, v7);
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = (v16 + 32);
    while (v19 < *(v17 + 16))
    {
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[3];
      v33 = v20[2];
      v34 = v23;
      v31 = v21;
      v32 = v22;
      v24 = sub_197470AEC(&v31, &v27);
      v4 = MEMORY[0x19A8E1370](v24);
      sub_19746DCE8(&v31, v3, &v29, &v30);
      if (v2)
      {
        goto LABEL_14;
      }

      v2 = 0;
      ++v19;
      objc_autoreleasePoolPop(v4);
      sub_197470B48(&v31);
      v20 += 4;
      if (v18 == v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    objc_autoreleasePoolPop(v4);
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1973F3D34(0, &qword_1ED7C8348, 0x1E695D6F0);

    sub_197521E9C();
    v25 = v29;
  }
}

void sub_19746DCE8(void *a1, uint64_t a2, void **a3, void *a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if (v8 < 0)
  {
    v92 = a1[5];
    v93 = a1[4];
    v38 = a1[6];
    v95 = a1[7];
    v39 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    v40 = (*(v6 + 8))(v5, v6);
    (*(v6 + 16))(&v102, v5, v6);
    v100 = v102;
    v101 = v103;
    type metadata accessor for Schema();
    swift_allocObject();
    v41 = Schema.init(_:version:)(v40, &v100);
    v42 = (*(v39 + 8))(v7, v39);
    (*(v39 + 16))(&v102, v7, v39);
    v100 = v102;
    v101 = v103;
    swift_allocObject();
    v43 = Schema.init(_:version:)(v42, &v100);
    if (qword_1ED7C9CC0 != -1)
    {
      swift_once();
    }

    v44 = qword_1ED7C9CC8;
    [qword_1ED7C9CC8 lock];
    if (qword_1ED7C9598 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v45 = sub_19741AA7C(v41, qword_1ED7CE630);
    swift_endAccess();
    if (!v45)
    {
      v46 = sub_19741AB44();
      v45 = v46;
      if (v46)
      {
        [v46 _makeImmutable];
      }
    }

    v104 = v41;
    [v44 unlock];
    [v44 lock];
    swift_beginAccess();
    v47 = sub_19741AA7C(v43, qword_1ED7CE630);
    swift_endAccess();
    if (!v47)
    {
      v48 = sub_19741AB44();
      if (!v48)
      {
        [v44 unlock];
        if (v45)
        {

          v14 = a4;
          goto LABEL_60;
        }

        v47 = 0;
        goto LABEL_75;
      }

      v47 = v48;
      [v48 _makeImmutable];
    }

    [v44 unlock];
    if (v45)
    {
      v88 = v38;
      v49 = [v45 versionChecksum];
      if (!v49)
      {
        sub_1975217BC();
        v49 = sub_19752178C();
      }

      v50 = objc_allocWithZone(MEMORY[0x1E695D640]);
      v51 = v45;
      v52 = [v50 initWithModel:v51 versionChecksum:v49];
      v86 = v51;

      v53 = [v47 versionChecksum];
      if (!v53)
      {
        sub_1975217BC();
        v53 = sub_19752178C();
      }

      v54 = objc_allocWithZone(MEMORY[0x1E695D640]);
      v55 = v47;
      v56 = [v54 initWithModel:v55 versionChecksum:v53];

      sub_1973F3D34(0, &qword_1EAF2AA70, 0x1E695D5B0);
      v57 = v52;
      v83 = v56;
      v84 = v57;
      v58 = sub_197521E2C();
      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v60 = swift_allocObject();
      v60[2] = v93;
      v60[3] = v92;
      v61 = v104;
      v60[4] = v59;
      v60[5] = v61;

      sub_197470BC0(v93);
      sub_197521E4C();

      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v63 = swift_allocObject();
      v63[2] = v88;
      v63[3] = v95;
      v63[4] = v62;
      v63[5] = v43;

      sub_197470BC0(v88);
      sub_197521E3C();

      if (*a3)
      {
        objc_opt_self();
        v64 = swift_dynamicCastObjCClass();
        if (v64)
        {
          [v64 setSubsequentStage_];
        }
      }

      v65 = v58;
      v14 = a4;
      MEMORY[0x19A8E00D0]();
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v81 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1975219FC();
        v14 = a4;
      }

      sub_197521A4C();

      goto LABEL_60;
    }

LABEL_75:
    v14 = a4;

    goto LABEL_60;
  }

  v9 = (*(v6 + 8))(*a1, v6);
  (*(v6 + 16))(&v102, v5, v6);
  v100 = v102;
  v101 = v103;
  type metadata accessor for Schema();
  swift_allocObject();
  v104 = Schema.init(_:version:)(v9, &v100);
  v10 = (*(v8 + 8))(v7, v8);
  (*(v8 + 16))(&v102, v7, v8);
  v100 = v102;
  v101 = v103;
  swift_allocObject();
  v94 = Schema.init(_:version:)(v10, &v100);
  v11 = *(*(a2 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan + 8) + 8);
  v12 = (v11)(*(a2 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan), *(a2 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationPlan + 8));
  v13 = v12;
  v91 = *(v12 + 16);
  if (!v91)
  {

    goto LABEL_57;
  }

  v82 = v11;
  v14 = 0;
  v15 = 0;
  v85 = v12 + 40;
  v87 = MEMORY[0x1E69E7CC0];
  do
  {
    v16 = (v85 + 16 * v14++);
    while (1)
    {
      v19 = *(v16 - 1);
      v18 = *v16;
      v20 = (*(*v16 + 8))(v19, *v16);
      (*(v18 + 16))(&v102, v19, v18);
      v100 = v102;
      v101 = v103;
      swift_allocObject();
      v21 = Schema.init(_:version:)(v20, &v100);
      if (qword_1ED7C9CC0 != -1)
      {
        swift_once();
      }

      v22 = qword_1ED7C9CC8;
      [qword_1ED7C9CC8 lock];
      if (qword_1ED7C9598 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v23 = sub_19741AA7C(v21, qword_1ED7CE630);
      if (v23)
      {
        v24 = v23;
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v25 = sub_19741AB44();
        if (!v25)
        {
          [v22 unlock];
          *&v102 = 0;
          *(&v102 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD00000000000003ELL, 0x8000000197524260);
          *&v100 = v21;
          sub_19752235C();
          sub_1975223EC();
          __break(1u);
          return;
        }

        v24 = v25;
        [v25 _makeImmutable];
      }

      [v22 unlock];
      v26 = v21[7];
      v102 = *(v21 + 5);
      v103 = v26;
      v27 = v104[7];
      v100 = *(v104 + 5);
      v101 = v27;
      if ((_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v102, &v100) & 1) == 0)
      {
        v98 = v102;
        v99 = v103;
        v96 = v100;
        v97 = v101;
        if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v96, &v98) & 1) == 0 && (sub_197421268(v21[8], v104[8]))
        {
          break;
        }
      }

      v28 = v21[7];
      v102 = *(v21 + 5);
      v103 = v28;
      v29 = v94[7];
      v100 = *(v94 + 5);
      v101 = v29;
      if ((_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v102, &v100) & 1) == 0)
      {
        v98 = v102;
        v99 = v103;
        v96 = v100;
        v97 = v101;
        if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v96, &v98) & 1) == 0 && (sub_197421268(v21[8], v94[8]))
        {

          v69 = (v82() + 16);
          if (!*v69)
          {

LABEL_55:

            v14 = a4;
LABEL_58:
            sub_1973F3D34(0, qword_1ED7C6960, 0x1E695D618);
            v21 = sub_197521EAC();
            MEMORY[0x19A8E00D0]();
            if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_89;
            }

            goto LABEL_59;
          }

          v70 = v69[2 * *v69];

          v14 = a4;
          if (v19 != v70)
          {

            goto LABEL_58;
          }

          v71 = [v24 versionChecksum];
          v72 = sub_1975217BC();
          v74 = v73;

          v75 = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_19741E330(0, *(v87 + 2) + 1, 1, v87);
          }

          v77 = *(v75 + 2);
          v76 = *(v75 + 3);
          v78 = v75;
          if (v77 >= v76 >> 1)
          {
            v78 = sub_19741E330((v76 > 1), v77 + 1, 1, v75);
          }

          *(v78 + 2) = v77 + 1;
          v79 = &v78[16 * v77];
          *(v79 + 4) = v72;
          *(v79 + 5) = v74;
LABEL_57:
          v14 = a4;
          goto LABEL_58;
        }
      }

      if (v15)
      {
        goto LABEL_27;
      }

      if (v91 == v14)
      {
        goto LABEL_55;
      }

      v15 = 0;
LABEL_5:
      v16 += 2;
      if (v14++ >= *(v13 + 16))
      {
        goto LABEL_82;
      }
    }

    if (*a3)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        if (v91 == v14)
        {
          goto LABEL_55;
        }

        v15 = 1;
        goto LABEL_5;
      }
    }

LABEL_27:
    v30 = [v24 versionChecksum];
    v31 = sub_1975217BC();
    v33 = v32;

    v34 = v87;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_19741E330(0, *(v87 + 2) + 1, 1, v87);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_19741E330((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[16 * v36];
    *(v37 + 4) = v31;
    *(v37 + 5) = v33;
    if (v91 == v14)
    {

      goto LABEL_57;
    }

    v87 = v34;
    v15 = 1;
  }

  while (v14 < *(v13 + 16));
LABEL_82:
  __break(1u);
LABEL_83:
  v66 = sub_1975220EC();
  if (v66)
  {
    while (1)
    {
      v67 = v66 - 1;
      if (__OFSUB__(v66, 1))
      {
        break;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        goto LABEL_86;
      }

      if ((v67 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v67 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v66 = v21[v67 + 4];
        goto LABEL_67;
      }

      __break(1u);
LABEL_89:
      sub_1975219FC();
LABEL_59:
      sub_197521A4C();

LABEL_60:
      v21 = *v14;
      if (*v14 >> 62)
      {
        goto LABEL_83;
      }

      v66 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v66)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_86:

    v80 = MEMORY[0x19A8E0960](v67, v21);

    v66 = v80;
  }

LABEL_67:
  v68 = *a3;
  *a3 = v66;
}

uint64_t sub_19746EB60(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66[1] = a7;
  v68 = a6;
  v71 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v19 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = v66 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v69 = v66 - v25;
  v26 = type metadata accessor for ModelConfiguration();
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29, v32);
  v36 = v66 - v35;
  v70 = a3;
  if (!a3)
  {
    return result;
  }

  v67 = v34;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v37 = result;
  sub_19740B324(result + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_configuration, v31, type metadata accessor for ModelConfiguration);
  sub_197470BC0(v70);

  sub_197471368(v31, v36, type metadata accessor for ModelConfiguration);
  v38 = [a1 container];
  if (!v38)
  {
    v47 = sub_1975212CC();
    v48 = v69;
    (*(*(v47 - 8) + 56))(v69, 1, 1, v47);
    v49 = v73;
    goto LABEL_15;
  }

  v39 = v38;
  v40 = [v38 persistentStoreDescriptions];

  sub_1973F3D34(0, &qword_1ED7C9B90, 0x1E695D6C8);
  v41 = sub_1975219CC();
  v42 = v41;
  if (!(v41 >> 62))
  {
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (!sub_1975220EC())
  {
    goto LABEL_25;
  }

LABEL_6:

  if ((v42 & 0xC000000000000001) == 0)
  {
    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v43 = *(v42 + 32);
    goto LABEL_9;
  }

LABEL_26:
  v43 = MEMORY[0x19A8E0960](0, v42);
LABEL_9:
  v44 = v43;

  v45 = [v44 URL];

  if (v45)
  {
    sub_19752127C();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v49 = v73;
  v50 = sub_1975212CC();
  (*(*(v50 - 8) + 56))(v23, v46, 1, v50);
  v48 = v69;
  sub_19746F6B4(v23, v69);
LABEL_15:
  v51 = *(v26 + 40);
  v52 = *&v36[v51];
  v53 = v68;

  *&v36[v51] = v53;
  sub_1973FE0E4(v48, v19, &qword_1EAF2AE78, &qword_19752C290);
  sub_19740B324(v36, v13, type metadata accessor for ModelConfiguration);
  (*(v67 + 56))(v13, 0, 1, v26);
  type metadata accessor for ModelContainer();
  swift_allocObject();

  v55 = sub_197473DF4(v54, 0, 0, 0, 0, v19, v13);
  if (v49)
  {
LABEL_28:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v56 = v55;
  v57 = type metadata accessor for ModelContext(0);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();

  v61 = sub_19740B6EC(v60);

  v62 = v70;
  v70(v61);
  sub_19740E3D0(1);
  swift_beginAccess();
  v63 = *(v56 + 48);
  v64 = *(v63 + 16);
  if (v64)
  {
    v73 = 0;
    v65 = v63 + 32;
    v68 = v63;

    do
    {
      sub_1973FE0E4(v65, v72, &qword_1EAF2AF38, &qword_19752C6A8);
      type metadata accessor for DefaultStore(0);
      if (swift_dynamicCastClass())
      {
        sub_19745C5E8();
      }

      swift_unknownObjectRelease();
      sub_197414BEC(v72);
      v65 += 56;
      --v64;
    }

    while (v64);
    sub_197471304(v70);
  }

  else
  {
    sub_197471304(v62);
  }

  sub_19740C044(v69, &qword_1EAF2AE78, &qword_19752C290);
  return sub_19740AB48(v36, type metadata accessor for ModelConfiguration);
}

id sub_19746F250(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19746F310(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  v5 = (*(a2 + 16))(a1, a2);
  v6 = v5;
  v29 = *(v5 + 16);
  if (!v29)
  {
  }

  v7 = 0;
  v33 = v5 + 32;
  while (1)
  {
    v8 = (v33 + (v7 << 6));
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[1];
    v30[0] = *v8;
    v30[1] = v11;
    v31 = v9;
    v32 = v10;
    v12 = *&v30[0];
    v13 = v11;
    if ((*(&v11 + 1) & 0x8000000000000000) != 0)
    {
      v19 = v32;
      sub_197470BC0(v31);
      sub_197470BC0(v19);
      sub_197520B4C();
      sub_197520B4C();
      v20 = *(v4 + 16);
      if (v20)
      {
        v15 = 0;
        v21 = (v4 + 32);
        while (*v21 != v12)
        {
          ++v15;
          v21 += 2;
          if (v20 == v15)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:
        v15 = sub_197520B4C();
      }

      if (v20)
      {
        v17 = 0;
        v22 = (v4 + 32);
        while (*(v4 + 16) != v17)
        {
          if (*v22 == v13)
          {
            goto LABEL_32;
          }

          ++v17;
          v22 += 2;
          if (v20 == v17)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_48;
      }

LABEL_31:
      v17 = sub_197520B4C();
LABEL_32:
      if (v15 == sub_197520B4C() || v17 == sub_197520B4C())
      {
        if (v17 == sub_197520B4C())
        {
          if (qword_1EAF2ADA8 != -1)
          {
            swift_once();
          }

          if (dyld_program_sdk_at_least())
          {
            goto LABEL_40;
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      sub_197520B4C();
      sub_197520B4C();
      v14 = *(v4 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = (v4 + 32);
        while (*v16 != v12)
        {
          ++v15;
          v16 += 2;
          if (v14 == v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v15 = sub_197520B4C();
      }

      if (v14)
      {
        v17 = 0;
        v18 = (v4 + 32);
        while (*(v4 + 16) != v17)
        {
          if (*v18 == v13)
          {
            goto LABEL_15;
          }

          ++v17;
          v18 += 2;
          if (v14 == v17)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        swift_once();
LABEL_41:
        v24 = &byte_1EAF2B800;
        goto LABEL_46;
      }

LABEL_14:
      v17 = sub_197520B4C();
LABEL_15:
      if (v15 == sub_197520B4C() || v17 == sub_197520B4C())
      {
LABEL_40:

        if (qword_1EAF2AD80 != -1)
        {
          goto LABEL_50;
        }

        goto LABEL_41;
      }
    }

    if (v17 < v15)
    {
      break;
    }

LABEL_18:
    ++v7;
    sub_197470B48(v30);
    if (v7 == v29)
    {
    }

    if (v7 >= *(v6 + 16))
    {
      goto LABEL_49;
    }
  }

  if (qword_1EAF2AD78 != -1)
  {
    swift_once();
  }

  v24 = &byte_1EAF2B7E8;
LABEL_46:
  v25 = *v24;
  v27 = *(v24 + 1);
  v26 = *(v24 + 2);
  sub_19744BE3C();
  swift_allocError();
  *v28 = v25;
  *(v28 + 8) = v27;
  *(v28 + 16) = v26;

  swift_willThrow();
  return sub_197470B48(v30);
}

uint64_t sub_19746F6B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19746F744()
{
  result = qword_1EAF2AE90;
  if (!qword_1EAF2AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AE90);
  }

  return result;
}

uint64_t sub_19746F8DC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19746F914()
{
  result = type metadata accessor for ModelConfiguration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19746F9C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_19746FA10()
{
  result = qword_1EAF2AEC0;
  if (!qword_1EAF2AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AEC0);
  }

  return result;
}

unint64_t sub_19746FA64()
{
  result = qword_1EAF2AEC8;
  if (!qword_1EAF2AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AEC8);
  }

  return result;
}

uint64_t sub_19746FAB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_19752228C();
  v10 = sub_1975215CC();
  v18 = v10;
  v11 = [a1 updatedProperties];
  if (!v11)
  {
    return v10;
  }

  v12 = v11;
  sub_1973F3D34(0, &qword_1ED7C9B98, 0x1E695D6D8);
  sub_197471480(&qword_1ED7C6D40, &qword_1ED7C9B98, 0x1E695D6D8);
  v13 = sub_197521BCC();

  MEMORY[0x1EEE9AC00](v14, v15);
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = &v18;
  sub_197463070(sub_1974714D0, v17, v13);

  return v18;
}

void sub_19746FBF8(unint64_t a1, uint64_t a2, void *a3, char **a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1975220EC())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x19A8E0960](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_197469694(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_19746FCFC(unint64_t a1, char *a2, size_t *a3)
{
  v6 = type metadata accessor for DefaultHistoryTransaction();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v27 - v13;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1975220EC())
  {
    v16 = 0;
    v28 = &a2[OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration];
    v29 = i;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = a1 & 0xC000000000000001;
    v30 = v11;
    while (1)
    {
      if (v32)
      {
        v17 = MEMORY[0x19A8E0960](v16, a1);
      }

      else
      {
        if (v16 >= *(v31 + 16))
        {
          goto LABEL_16;
        }

        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = *&v28[*(type metadata accessor for ModelConfiguration() + 40)];

      a2 = v18;
      sub_19746723C(a2, v20, v14);
      sub_19740B324(v14, v11, type metadata accessor for DefaultHistoryTransaction);
      v21 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_197477198(0, v21[2] + 1, 1, v21);
        *a3 = v21;
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        *a3 = sub_197477198(v23 > 1, v24 + 1, 1, v21);
      }

      sub_19740AB48(v14, type metadata accessor for DefaultHistoryTransaction);
      v25 = *a3;
      v25[2] = v24 + 1;
      v26 = v25 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
      v11 = v30;
      sub_197471368(v30, v26, type metadata accessor for DefaultHistoryTransaction);

      ++v16;
      if (v19 == v29)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_19746FF9C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AED0, &unk_19752C680);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19746FA10();
  sub_197522AFC();
  if (!v1)
  {
    v11[15] = 0;
    v9 = sub_1975225EC();
    v11[13] = 1;
    sub_19747018C();
    sub_19752261C();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t sub_19747018C()
{
  result = qword_1EAF2AED8;
  if (!qword_1EAF2AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AED8);
  }

  return result;
}

unint64_t sub_1974701E0()
{
  result = qword_1EAF2AF00;
  if (!qword_1EAF2AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AF00);
  }

  return result;
}

unint64_t sub_197470234()
{
  result = qword_1EAF2AF08;
  if (!qword_1EAF2AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2AF08);
  }

  return result;
}

BOOL sub_197470288(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v8 = *a1;
  v9[0] = v3;
  *(v9 + 14) = *(a1 + 30);
  v4 = v2[1];
  v6 = *v2;
  v7[0] = v4;
  *(v7 + 14) = *(v2 + 30);
  return _s9SwiftData6SchemaC9AttributeC6OptionV2eeoiySbAG_AGtFZ_0(&v8, &v6);
}

uint64_t sub_1974702E8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0A8, &qword_19752C9B8);
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v68 = &v53[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0B0, &qword_19752C9C0);
  v7 = *(v6 - 8);
  v63 = v6;
  v64 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v67 = &v53[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0B8, &qword_19752C9C8);
  v12 = *(v11 - 8);
  v61 = v11;
  v62 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v70 = &v53[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0C0, &qword_19752C9D0);
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v69 = &v53[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0C8, &qword_19752C9D8);
  v57 = *(v20 - 8);
  v58 = v20;
  v21 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v53[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0D0, &qword_19752C9E0);
  v56 = *(v25 - 8);
  v26 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v53[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0D8, &qword_19752C9E8);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v53[-v34];
  v36 = a1[3];
  v37 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v36);
  sub_197471948();
  v38 = v71;
  sub_197522AFC();
  if (v38)
  {
    goto LABEL_9;
  }

  v55 = v25;
  v39 = v24;
  v41 = v69;
  v40 = v70;
  v71 = v31;
  v42 = sub_19752262C();
  if (*(v42 + 16) != 1 || (v43 = *(v42 + 32), v43 == 6))
  {
    v45 = sub_19752226C();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B0E0, &unk_19752C9F0) + 48);
    *v47 = &type metadata for DefaultStore.FutureType;
    sub_1975224EC();
    sub_19752225C();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    (*(v71 + 8))(v35, v30);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    return 0;
  }

  v54 = *(v42 + 32);
  if (v43 > 2)
  {
    if (v43 != 3)
    {
      v44 = v71;
      if (v43 == 4)
      {
        v77 = 4;
        sub_1974719F0();
        v50 = v67;
        sub_1975224DC();
        (*(v64 + 8))(v50, v63);
      }

      else
      {
        v78 = 5;
        sub_19747199C();
        v52 = v68;
        sub_1975224DC();
        (*(v65 + 8))(v52, v66);
      }

      goto LABEL_17;
    }

    v76 = 3;
    sub_197471A44();
    sub_1975224DC();
    v51 = v71;
    (*(v62 + 8))(v40, v61);
    (*(v51 + 8))(v35, v30);
  }

  else
  {
    if (v43)
    {
      if (v43 == 1)
      {
        v74 = 1;
        sub_197471AEC();
        sub_1975224DC();
        v44 = v71;
        (*(v57 + 8))(v39, v58);
      }

      else
      {
        v75 = 2;
        sub_197471A98();
        sub_1975224DC();
        v44 = v71;
        (*(v59 + 8))(v41, v60);
      }

LABEL_17:
      (*(v44 + 8))(v35, v30);
      goto LABEL_18;
    }

    v73 = 0;
    sub_197471B40();
    sub_1975224DC();
    (*(v56 + 8))(v29, v55);
    (*(v71 + 8))(v35, v30);
  }

LABEL_18:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  return v54;
}

uint64_t sub_197470BC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_81Tm()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_197470C44()
{
  sub_197521FEC();
  sub_197416D54();
  sub_197521FBC();

  sub_197521FBC();

  v0 = sub_197521F9C();

  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFA0, &qword_19752C710);
  sub_1974717A0(&qword_1EAF2AFA8, &qword_1EAF2AFA0, &qword_19752C710);
  v3 = sub_1975216CC();
  v4 = v2;
  if (v3 == 0x6E656B6F74 && v2 == 0xE500000000000000 || (sub_19752282C() & 1) != 0 || v3 == 0xD000000000000015 && 0x80000001975244A0 == v4 || (sub_19752282C() & 1) != 0 || v3 == 25705 && v4 == 0xE200000000000000 || (sub_19752282C() & 1) != 0)
  {
    v5 = 1179403603;

LABEL_11:

    return v5;
  }

  if (v3 == 0x6D617473656D6974 && v4 == 0xE900000000000070 || (sub_19752282C() & 1) != 0)
  {
    v5 = 0x4D415453454D4954;
LABEL_17:

    goto LABEL_11;
  }

  if (v3 == 0x726F68747561 && v4 == 0xE600000000000000 || (sub_19752282C() & 1) != 0)
  {
    v5 = 0x5354524F48545541;

    goto LABEL_11;
  }

  if (v3 == 0xD000000000000010 && 0x80000001975244C0 == v4 || (sub_19752282C() & 1) != 0)
  {

    v5 = 0x4449454C444E5542;
    goto LABEL_11;
  }

  v5 = 0x49535345434F5250;
  if (v3 == 0xD000000000000011 && 0x80000001975244E0 == v4)
  {
    goto LABEL_17;
  }

  v7 = sub_19752282C();

  if (v7)
  {
    goto LABEL_11;
  }

  if (qword_1EAF2AD28 != -1)
  {
    swift_once();
  }

  v8 = byte_1EAF2B6F8;
  v5 = qword_1EAF2B700;
  v9 = unk_1EAF2B708;
  sub_19744BE3C();
  swift_allocError();
  *v10 = v8;
  *(v10 + 8) = v5;
  *(v10 + 16) = v9;
  swift_willThrow();

  return v5;
}

uint64_t sub_1974710EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6261646F636564 && a2 == 0xE900000000000065;
  if (v4 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F66736E617274 && a2 == 0xED0000656C62616DLL || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469736F706D6F63 && a2 == 0xE900000000000065 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001975247C0 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001975247E0 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000197524800 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_197471304(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_197471350(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_197471368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_197471480(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1973F3D34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_197471530@<X0>(void *a1@<X8>)
{
  result = sub_19746506C(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_197471568@<X0>(void *a1@<X8>)
{
  result = sub_1974648B8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultStore.DefaultStoreSnapshotValueFuture.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DefaultStore.DefaultStoreSnapshotValueFuture.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1974717A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1974717EC()
{
  result = qword_1EAF2B018;
  if (!qword_1EAF2B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B018);
  }

  return result;
}

unint64_t sub_197471844()
{
  result = qword_1EAF2B020;
  if (!qword_1EAF2B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B020);
  }

  return result;
}

unint64_t sub_19747189C()
{
  result = qword_1EAF2B028;
  if (!qword_1EAF2B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B028);
  }

  return result;
}

unint64_t sub_1974718F4()
{
  result = qword_1EAF2B030;
  if (!qword_1EAF2B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B030);
  }

  return result;
}

unint64_t sub_197471948()
{
  result = qword_1EAF2B070;
  if (!qword_1EAF2B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B070);
  }

  return result;
}

unint64_t sub_19747199C()
{
  result = qword_1EAF2B078;
  if (!qword_1EAF2B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B078);
  }

  return result;
}

unint64_t sub_1974719F0()
{
  result = qword_1EAF2B080;
  if (!qword_1EAF2B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B080);
  }

  return result;
}

unint64_t sub_197471A44()
{
  result = qword_1EAF2B088;
  if (!qword_1EAF2B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B088);
  }

  return result;
}

unint64_t sub_197471A98()
{
  result = qword_1EAF2B090;
  if (!qword_1EAF2B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B090);
  }

  return result;
}

unint64_t sub_197471AEC()
{
  result = qword_1EAF2B098;
  if (!qword_1EAF2B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B098);
  }

  return result;
}

unint64_t sub_197471B40()
{
  result = qword_1EAF2B0A0;
  if (!qword_1EAF2B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B0A0);
  }

  return result;
}

uint64_t sub_197471B94(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_197471C24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_197471D4C()
{
  result = qword_1EAF2B0E8;
  if (!qword_1EAF2B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B0E8);
  }

  return result;
}

unint64_t sub_197471DA4()
{
  result = qword_1EAF2B0F0;
  if (!qword_1EAF2B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B0F0);
  }

  return result;
}

unint64_t sub_197471DFC()
{
  result = qword_1EAF2B0F8;
  if (!qword_1EAF2B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B0F8);
  }

  return result;
}

unint64_t sub_197471E54()
{
  result = qword_1EAF2B100;
  if (!qword_1EAF2B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B100);
  }

  return result;
}

unint64_t sub_197471EAC()
{
  result = qword_1EAF2B108;
  if (!qword_1EAF2B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B108);
  }

  return result;
}

unint64_t sub_197471F04()
{
  result = qword_1EAF2B110;
  if (!qword_1EAF2B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B110);
  }

  return result;
}

unint64_t sub_197471F5C()
{
  result = qword_1EAF2B118;
  if (!qword_1EAF2B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B118);
  }

  return result;
}

unint64_t sub_197471FB4()
{
  result = qword_1EAF2B120;
  if (!qword_1EAF2B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B120);
  }

  return result;
}

unint64_t sub_19747200C()
{
  result = qword_1EAF2B128;
  if (!qword_1EAF2B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B128);
  }

  return result;
}

unint64_t sub_197472064()
{
  result = qword_1EAF2B130;
  if (!qword_1EAF2B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B130);
  }

  return result;
}

unint64_t sub_1974720BC()
{
  result = qword_1EAF2B138;
  if (!qword_1EAF2B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B138);
  }

  return result;
}

unint64_t sub_197472114()
{
  result = qword_1EAF2B140;
  if (!qword_1EAF2B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B140);
  }

  return result;
}

unint64_t sub_19747216C()
{
  result = qword_1EAF2B148;
  if (!qword_1EAF2B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B148);
  }

  return result;
}

unint64_t sub_1974721C4()
{
  result = qword_1EAF2B150;
  if (!qword_1EAF2B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B150);
  }

  return result;
}

unint64_t sub_19747221C()
{
  result = qword_1EAF2B158;
  if (!qword_1EAF2B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B158);
  }

  return result;
}

uint64_t DefaultSerialModelExecutor.__allocating_init(modelContext:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_197472984(a1);

  return v2;
}

uint64_t DefaultSerialModelExecutor.init(modelContext:)(uint64_t a1)
{
  v1 = sub_197472984(a1);

  return v1;
}

uint64_t DefaultSerialModelExecutor.deinit()
{
  v1 = v0;
  if (qword_1EAF2ACB8 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least())
  {
    if (qword_1ED7C7270 != -1)
    {
      swift_once();
    }

    if ((*(qword_1ED7CE5B8 + 16) & 1) == 0)
    {
      if (*(*(v0 + 16) + 48))
      {
        if (qword_1EAF2AD08 != -1)
        {
          swift_once();
        }

        v2 = sub_19752157C();
        __swift_project_value_buffer(v2, qword_1EAF33E68);
        v3 = sub_19752155C();
        v4 = sub_197521DDC();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          _os_log_impl(&dword_1973F2000, v3, v4, "ModelActor was deinitialized while ModelContext has unsaved changes.  This violates the non-Sendable isolation scope of the ModelContext.  The ModelActor should be strongly reference for as long as the ModelContext is in use.  This will be a hard error in Swift 6.", v5, 2u);
          MEMORY[0x19A8E1B50](v5, -1, -1);
        }
      }

      else
      {
        v6 = *(v0 + 16);

        sub_19740E3D0(1);
      }
    }
  }

  v7 = *(v1 + 16);

  v8 = *(v1 + 24);

  return v1;
}

uint64_t DefaultSerialModelExecutor.__deallocating_deinit()
{
  DefaultSerialModelExecutor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1974726A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (_SD_get_current_context_tsd())
  {
    v2 = swift_retain_n();

    sub_19744AB88(v1);
  }

  else
  {
    _SD_get_current_context_tsd();
    type metadata accessor for _SwiftDataContextThreadLocalState();
    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x1E69E7CC0];
    sub_19744AB88(v1);
    _SD_set_current_context_tsd(v3);
  }

  sub_19744ADA8(&qword_1ED7C6D30);
  swift_job_run();
  result = _SD_get_current_context_tsd();
  if (result)
  {
    v5 = swift_retain_n();

    v6 = sub_19744BE90(v1);

    if (v6)
    {
    }
  }

  return result;
}

uint64_t sub_19747280C()
{
  swift_getWitnessTable();

  return sub_197521B1C();
}

uint64_t sub_19747286C()
{
  swift_getWitnessTable();

  return sub_197521B2C();
}

uint64_t ModelActor.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  ModelActor.modelContext.getter(a3, a5);
  v12 = v5;
  LOBYTE(v13) = v6;
  v7 = sub_1974309B4(&v12);
  v9 = v8;

  v12 = v7;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197472984(uint64_t a1)
{
  v2 = v1;
  v2[4] = 0;
  v2[2] = a1;
  if (*(a1 + 16))
  {
    result = *(a1 + 16);
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  v2[3] = result;
  v5 = objc_allocWithZone(MEMORY[0x1E695D628]);

  v6 = [v5 initWithConcurrencyType_];
  v7 = v2[4];
  v2[4] = v6;

  v8 = v2[4];
  if (v8)
  {
    [v8 set:1 isSwiftBound:?];
  }

  if (*(a1 + 62) == 1)
  {
    sub_1974B033C();
    *(a1 + 62) = 0;
  }

  if (_SD_get_current_context_tsd())
  {
    v9 = swift_retain_n();

    v10 = sub_1974BEE44(a1);

    if (v10)
    {
    }
  }

  return v2;
}

uint64_t sub_197472AC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_197472AEC(uint64_t a1)
{
  *(a1 + 8) = sub_19744ADA8(&qword_1ED7C6D28);
  result = sub_19744ADA8(&qword_1ED7C6D30);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_197472B54(uint64_t a1)
{
  result = sub_19744ADA8(qword_1ED7C6D48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197472C38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v37 - v5;
  v7 = type metadata accessor for ModelConfiguration();
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v42 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v41 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v40 = &v37 - v17;
  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v23 = (v16 + 56);
  v45 = a1;

  v25 = 0;
  v38 = v23;
  v39 = v6;
  while (v21)
  {
LABEL_11:
    sub_197414BA4(*(v45 + 48) + 40 * (__clz(__rbit64(v21)) | (v25 << 6)), v44);
    sub_197421420(v44, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B170, &qword_19752D118);
    v27 = swift_dynamicCast();
    v28 = *v23;
    if (v27)
    {
      v28(v6, 0, 1, v7);
      v29 = v6;
      v30 = v40;
      sub_19740B38C(v29, v40);
      v31 = v7;
      v32 = v42;
      sub_19741598C(v30, v42);
      v33 = v41;
      v34 = v32;
      v7 = v31;
      sub_19747D408(v41, v34);
      v35 = v33;
      v23 = v38;
      sub_19740B2C8(v35);
      v36 = v30;
      v6 = v39;
      sub_19740B2C8(v36);
    }

    else
    {
      v28(v6, 1, 1, v7);
      sub_1974454C0(v6, &qword_1EAF2AF30, &qword_19752C6A0);
    }

    v21 &= v21 - 1;
    result = sub_197414BEC(v44);
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
    }

    v21 = *(v18 + 8 * v26);
    ++v25;
    if (v21)
    {
      v25 = v26;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197472F34(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_7;
  }

  v4 = *(a2 + 40);
  sub_197522A5C();
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = *(v5 + 8);
  sub_1975216BC();
  v7 = sub_197522A9C();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      sub_197414BA4(*(a2 + 48) + 40 * v9, v15);
      v11 = v16;
      v12 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v13 = sub_19749BC0C(a1, v11, v12);
      sub_197414BEC(v15);
      if (v13)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_197473058(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_19752213C();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (sub_19752202C(), v5 = *(a2 + 40), v6 = sub_1975216AC(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      do
      {
        v11 = *(*(a2 + 48) + 8 * v8);
        v10 = sub_19752173C();
        if (v10)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }
}

uint64_t sub_197473184(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_19752213C();

    return v4 & 1;
  }

  if (*(a2 + 16))
  {
    v6 = *(a2 + 40);
    sub_197522A5C();
    swift_beginAccess();
    v7 = a1[2];
    v8 = a1[3];

    sub_19752180C();

    v9 = sub_197522A9C();
    v10 = -1 << *(a2 + 32);
    v11 = v9 & ~v10;
    if ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v12 = ~v10;
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      do
      {
        v13 = *(*(a2 + 48) + 8 * v11);
        swift_beginAccess();
        v14 = v13[2] == a1[2] && v13[3] == a1[3];
        if (!v14 && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_7;
        }

        swift_beginAccess();
        v15 = v13[6];
        v16 = a1[6];
        if (v15)
        {
          if (!v16)
          {
            goto LABEL_7;
          }

          v17 = v13[5] == a1[5] && v15 == v16;
          if (!v17 && (sub_19752282C() & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        else if (v16)
        {
          goto LABEL_7;
        }

        swift_beginAccess();
        v18 = v13[10];
        v19 = a1[10];

        v20 = sub_197415D98(v18, v19);

        if ((v20 & 1) == 0)
        {
          goto LABEL_6;
        }

        swift_beginAccess();
        v21 = v13[11];
        v22 = a1[11];

        v23 = sub_19741616C(v21, v22);

        if (v23)
        {
          swift_beginAccess();
          v24 = v13[4];
          v25 = a1[4];

          v26 = sub_197416704(v24, v25);

          if (v26)
          {
            return 1;
          }
        }

        else
        {
LABEL_6:
        }

LABEL_7:
        v11 = (v11 + 1) & v12;
      }

      while (((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_197473494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = a3;
  v5 = *(a3 + 40);
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v27);
  v7 = v27;
  if (v28)
  {
    if (v28 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v7, 1);
      sub_197452CB8();
      sub_1974028C8(v7, 1);
      sub_1974028C8(v7, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v7, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v7, 2);
      sub_1974028C8(v7, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v7, 0);
    sub_197521F4C();
    sub_1974028C8(v7, 0);
    sub_1974028C8(v7, 0);
  }

  v9 = sub_197522A9C();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  v24 = v3 + 56;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v22 = ~v10;
  v23 = v3;
  while (1)
  {
    v12 = (*(v3 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = swift_getObjectType();
    swift_unknownObjectRetain();
    v25 = v15;
    v26 = v13;
    PersistentModel.persistentModelID.getter(v15, v13, &v29);
    v16 = v29;
    v17 = v30;
    PersistentModel.persistentModelID.getter(ObjectType, a2, &v27);
    v18 = v27;
    LOBYTE(v13) = v28;
    v19 = sub_19742291C(v16, v17, v27, v28);
    sub_1974028C8(v18, v13);
    sub_1974028C8(v16, v17);
    if ((v19 & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v20 = PersistentModel.modelContext.getter(v25, v26);
    v21 = PersistentModel.modelContext.getter(ObjectType, a2);
    swift_unknownObjectRelease();
    if (!v20)
    {
      break;
    }

    if (!v21)
    {
      goto LABEL_18;
    }

    if (v20 == v21)
    {
      return 1;
    }

LABEL_11:
    v3 = v23;
    v11 = (v11 + 1) & v22;
    if (((*(v24 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  if (v21)
  {
LABEL_18:

    goto LABEL_11;
  }

  return 1;
}

uint64_t ModelContainer.migrationPlan.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_1974737C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v7 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v4 = *(v3 + 40);

  sub_197472C38(v5);

  *a2 = v7;
  return result;
}

uint64_t sub_197473844()
{
  v4 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v1 = *(v0 + 40);

  sub_197472C38(v2);

  return v4;
}

void (*sub_1974738B8(uint64_t a1))(uint64_t a1, char a2)
{
  v6 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v3 = *(v1 + 40);

  sub_197472C38(v4);

  *(a1 + 24) = v6;
  return sub_19747394C;
}

void sub_19747394C(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  if (a2)
  {
    v3 = *(a1 + 24);

    sub_197480890();
  }

  else
  {
    v4 = *(a1 + 24);

    sub_197480890();
  }
}

uint64_t sub_1974739B0()
{
  sub_197522A5C();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 8);
  sub_1975216BC();
  return sub_197522A9C();
}

uint64_t sub_197473A14()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 8);
  return sub_1975216BC();
}

uint64_t sub_197473A60()
{
  sub_197522A5C();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 8);
  sub_1975216BC();
  return sub_197522A9C();
}

uint64_t sub_197473AC0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return sub_19749BC0C(a2, v3, v4) & 1;
}

uint64_t sub_197473B10()
{
  if (*(v0 + 64))
  {
    goto LABEL_3;
  }

  v1 = v0;
  v2 = type metadata accessor for ModelContext(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v6 = sub_19740B6EC(v5);

  sub_1974B05A8();
  v7 = *(v1 + 64);
  *(v1 + 64) = v6;

  result = *(v1 + 64);
  if (result)
  {
LABEL_3:
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197473B90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_197473BF0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_197473C28(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t ModelContainer.__allocating_init(for:migrationPlan:configurations:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = 1uLL;
  type metadata accessor for Schema();
  v12 = 0;
  swift_allocObject();
  v8 = Schema.init(_:version:)(a1, &v11);
  type metadata accessor for ModelContainer();
  v9 = swift_allocObject();
  ModelContainer.init(for:migrationPlan:configurations:)(v8, a2, a3, a4);
  return v9;
}

uint64_t sub_197473DF4(char *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v274 = a7;
  v269 = a6;
  v259 = a5;
  v265 = a4;
  v264 = a3;
  v263 = a2;
  v275 = a1;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE48, &unk_19752C0B0);
  v8 = *(*(v257 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v257, v9);
  v258 = &v247 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v256 = &v247 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v255 = &v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v261 = &v247 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v262 = &v247 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v247 - v26;
  v28 = sub_1975212CC();
  v270 = *(v28 - 8);
  v29 = v270[8];
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v254 = &v247 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v277 = &v247 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v278 = &v247 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8, v40);
  v42 = &v247 - v41;
  v43 = type metadata accessor for ModelConfiguration();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v47 = MEMORY[0x1EEE9AC00](v43, v46);
  v267 = &v247 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v52 = &v247 - v51;
  v54 = MEMORY[0x1EEE9AC00](v50, v53);
  v56 = &v247 - v55;
  v58 = MEMORY[0x1EEE9AC00](v54, v57);
  v60 = &v247 - v59;
  MEMORY[0x1EEE9AC00](v58, v61);
  v272 = &v247 - v62;
  v273 = v7;
  v7[5] = MEMORY[0x1E69E7CD0];
  v63 = v7 + 5;
  v63[1] = MEMORY[0x1E69E7CC0];
  v253 = v63 + 1;
  v63[2] = MEMORY[0x1E69E7CC8];
  v252 = v63 + 2;
  v268 = v63;
  v63[3] = 0;
  _SD_Initialize_framework();
  sub_197404790(v274, v42, &qword_1EAF2AF30, &qword_19752C6A0);
  v260 = v44;
  v64 = v44;
  v65 = v270;
  v66 = *(v64 + 48);
  v271 = v43;
  v67 = v66(v42, 1, v43);
  v266 = v28;
  if (v67 == 1)
  {
    sub_1974454C0(v42, &qword_1EAF2AF30, &qword_19752C6A0);
    sub_197404790(v269, v27, &qword_1EAF2AE78, &qword_19752C290);
    v68 = 0x1E696A000;
    v69 = &off_1E74AD000;
    if ((v65[6])(v27, 1, v28) == 1)
    {
      sub_1974454C0(v27, &qword_1EAF2AE78, &qword_19752C290);
      v70 = v271;
      v71 = v271[10];
      *&v56[v271[15]] = 0;
      v72 = &v56[v70[5]];
      *v72 = 0x746C7561666564;
      *(v72 + 1) = 0xE700000000000000;
      v73 = v275;
      *&v56[v71] = v275;
      v56[v70[11]] = 1;
      v74 = &v56[v70[8]];
      *v74 = 1;
      *(v74 + 1) = 0;
      *(v74 + 2) = 0;
      v75 = &v56[v70[9]];
      *v75 = 1;
      *(v75 + 1) = 0;
      *(v75 + 2) = 0;
      v56[v70[13]] = 0;
      v76 = v70[12];
      if (v265)
      {
        v56[v76] = 1;
        v56[v70[14]] = 0;

        sub_19752122C();
        v77 = &v56[v70[6]];
        *v77 = 0;
        *(v77 + 1) = 0;
      }

      else
      {
        v56[v76] = 0;
        v56[v70[14]] = 1;
        v101 = v257;
        v102 = v256;
        v103 = &v256[*(v257 + 48)];
        v104 = &v256[*(v257 + 64)];
        LOWORD(v279) = 1;
        *&v280 = 0;
        *(&v279 + 1) = 0;

        *v103 = sub_197461664(v102, &v279);
        v103[1] = v105;
        *v104 = v106;
        *(v104 + 1) = v107;
        v108 = v258;
        sub_197404790(v102, v258, &qword_1EAF2AE48, &unk_19752C0B0);
        v109 = *(v108 + *(v101 + 48) + 8);

        v110 = *(v108 + *(v101 + 64) + 8);

        v111 = v270;
        v112 = v266;
        (v270[4])(v56, v108, v266);
        *&v279 = 0x746C7561666564;
        *(&v279 + 1) = 0xE700000000000000;
        MEMORY[0x19A8DFF80](0x65726F74732ELL, 0xE600000000000000);
        sub_19752125C();

        v113 = v102;
        v69 = &off_1E74AD000;
        sub_197480DA8(v113, v108);
        v114 = (v108 + *(v101 + 48));
        v115 = *v114;
        v116 = v114[1];
        v117 = *(v101 + 64);
        v68 = 0x1E696A000uLL;
        v118 = *(v108 + v117 + 8);

        v119 = &v56[v271[6]];
        *v119 = v115;
        *(v119 + 1) = v116;
        v120 = v112;
        v70 = v271;
        (v111[1])(v108, v120);
      }

      v121 = *(v68 + 3632);
      v122 = [objc_opt_self() v69[324]];
      sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
      v124 = v123;

      v125 = 0;
      v126 = 0;
      if ((v124 & 1) == 0)
      {
        v125 = sub_1974A98BC();
      }

      v127 = &v56[v70[7]];
      *v127 = v125;
      v127[1] = v126;
    }

    else
    {
      v80 = v278;
      (v65[4])(v278, v27, v28);
      v81 = v65[2];
      v82 = v277;
      v81(v277, v80, v28);
      v83 = v271;
      v84 = v271[10];
      *&v52[v271[15]] = 0;
      v85 = &v52[v83[5]];
      *v85 = 0x746C7561666564;
      *(v85 + 1) = 0xE700000000000000;
      v73 = v275;
      *&v52[v84] = v275;
      v81(v52, v82, v28);
      v52[v83[14]] = 0;

      sub_19752128C();
      v86 = sub_19752188C();

      v52[v83[12]] = v86 & 1;
      v52[v83[11]] = 1;
      v87 = &v52[v83[6]];
      *v87 = 0;
      *(v87 + 1) = 0;
      v88 = &v52[v83[8]];
      *v88 = 256;
      *(v88 + 1) = 0;
      *(v88 + 2) = 0;
      v52[v83[13]] = 0;
      v89 = &v52[v83[9]];
      *v89 = 1;
      *(v89 + 1) = 0;
      *(v89 + 2) = 0;
      v90 = [objc_opt_self() processInfo];
      sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
      v92 = v91;

      v93 = 0;
      v94 = 0;
      if ((v92 & 1) == 0)
      {
        v93 = sub_1974A98BC();
        v94 = v95;
      }

      v96 = v270[1];
      v97 = v82;
      v98 = v266;
      v96(v97, v266);
      v96(v278, v98);
      v99 = v271;
      v100 = &v52[v271[7]];
      *v100 = v93;
      v100[1] = v94;
      v56 = v52;
      v70 = v99;
    }

    v78 = v273;
    v79 = v272;
  }

  else
  {
    sub_19740B38C(v42, v60);
    v56 = v60;
    v78 = v273;
    v73 = v275;
    v79 = v272;
    v70 = v271;
  }

  sub_19740B38C(v56, v79);
  v285 = v70;
  v286 = sub_197413D04(&qword_1ED7C9B58, type metadata accessor for ModelConfiguration);
  v128 = __swift_allocate_boxed_opaque_existential_1(&v284);
  sub_19741598C(v79, v128);
  v129 = v268;
  swift_beginAccess();
  v130 = *v129;

  v131 = sub_197472F34(&v284, v130);

  if (v131)
  {
    if (qword_1EAF2AD40 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_16;
  }

  v140 = v70[10];
  v141 = *(v79 + v140);
  if (v141)
  {
    v142 = *(v141 + 64);
    if (v142 >> 62)
    {
      v244 = *(v79 + v140);
      if (v142 < 0)
      {
        v245 = *(v141 + 64);
      }

      v143 = sub_1975220EC();
      v141 = v244;
    }

    else
    {
      v143 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v258 = v141;

    if (v143)
    {
      v144 = 0;
      v78 = (v142 & 0xFFFFFFFFFFFFFF8);
      v79 = &v279;
      do
      {
        if ((v142 & 0xC000000000000001) != 0)
        {
          v146 = MEMORY[0x19A8E0960](v144, v142);
          v145 = v146;
          v148 = v144 + 1;
          if (__OFADD__(v144, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v144 >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          v145 = *(v142 + 8 * v144 + 32);

          v148 = v144 + 1;
          if (__OFADD__(v144, 1))
          {
LABEL_31:
            __break(1u);
            break;
          }
        }

        v149 = *(v275 + 8);
        *&v279 = v145;
        MEMORY[0x1EEE9AC00](v146, v147);
        *(&v247 - 2) = &v279;
        v150 = v276;
        if ((sub_1974159FC(sub_197480F48, (&v247 - 4), v151) & 1) == 0)
        {

          v78 = v273;
          v79 = v272;
          if (qword_1EAF2AD58 != -1)
          {
            swift_once();
          }

          v174 = byte_1EAF2B788;
          v176 = qword_1EAF2B790;
          v175 = unk_1EAF2B798;
          sub_19744BE3C();
          swift_allocError();
          *v177 = v174;
          *(v177 + 8) = v176;
          *(v177 + 16) = v175;
          swift_willThrow();

          goto LABEL_17;
        }

        v276 = v150;

        ++v144;
      }

      while (v148 != v143);
    }

    v78 = v273;
    v73 = v275;
    v79 = v272;
  }

  else
  {
    *(v79 + v140) = v73;

    v258 = v73;
  }

  v78[2] = v73;
  v287 = MEMORY[0x1E69E7CD0];
  v152 = *(v73 + 8);
  if (v152 >> 62)
  {
    if (v152 < 0)
    {
      v243 = *(v73 + 8);
    }

    v153 = sub_1975220EC();
  }

  else
  {
    v153 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v154 = MEMORY[0x1E69E7CC8];
  if (!v153)
  {
    v163 = MEMORY[0x1E69E7CD0];
LABEL_48:

    v78[9] = v163;
    v78[10] = v154;
    v164 = v264;
    v78[3] = v263;
    v78[4] = v164;
    v165 = v285;
    v166 = v286;
    __swift_project_boxed_opaque_existential_1(&v284, v285);
    v167 = *(v166 + 64);
    v278 = v163;

    v168 = v276;
    v167(v165, v166);
    if (v168)
    {

      sub_1974454C0(v274, &qword_1EAF2AF30, &qword_19752C6A0);
      sub_1974454C0(v269, &qword_1EAF2AE78, &qword_19752C290);
LABEL_76:
      sub_197414BEC(&v284);

      sub_19740B2C8(v79);

      return v78;
    }

    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFF8, &unk_19752D470);
    v170 = *(v260 + 80);
    v171 = (v170 + 32) & ~v170;
    v260 = *(v260 + 72);
    v256 = v170;
    v172 = swift_allocObject();
    v251 = xmmword_19752C280;
    *(v172 + 16) = xmmword_19752C280;
    sub_19741598C(v79, v172 + v171);
    v173 = v275;

    swift_setDeallocating();
    sub_19740B2C8(v172 + v171);
    swift_deallocClassInstance();
    sub_197414BA4(&v284, &v283);
    swift_beginAccess();
    sub_197419B14(&v279, &v283);
    swift_endAccess();
    sub_197414BEC(&v279);
    v257 = v154;
    v276 = 0;
    v264 = v171;
    v263 = v169;
    if (v258)
    {
      v277 = v258;
    }

    else
    {

      v277 = v173;
    }

    v178 = v270;
    v179 = v78[4];
    v270 = v78[3];
    v268 = v179;
    v180 = v178;
    v181 = v262;
    v182 = v266;
    v248 = v178[2];
    v248(v262, v79, v266);
    v183 = v180[7];
    v183(v181, 0, 1, v182);
    sub_19741598C(v79, v267);
    v184 = type metadata accessor for DefaultStore(0);
    v185 = *(v184 + 48);
    v186 = *(v184 + 52);
    v187 = swift_allocObject();
    *(v187 + 40) = 0;
    v247 = OBJC_IVAR____TtC9SwiftData12DefaultStore_requestedStoreURL;
    v249 = v183;
    v183(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_requestedStoreURL, 1, 1, v182);
    *(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_hasSpotlight) = 0;
    *(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model) = 0;
    *(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription) = 0;
    *(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_store) = 0;
    *(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_errorOnLoad) = 0;
    v250 = OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager;
    *(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager) = 0;
    v188 = (v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationPlan);
    v189 = (v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore__managedObjectContextFactory);
    *v188 = 0;
    v188[1] = 0;
    v190 = type metadata accessor for DefaultStore.DefaultManagedObjectContextFactory();
    v191 = swift_allocObject();
    v189[3] = v190;
    v189[4] = &off_1F0BA5A68;
    *v189 = v191;
    v192 = OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
    v193 = swift_allocObject();
    *(v193 + 16) = 0;
    *(v187 + v192) = v193;
    *(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier) = MEMORY[0x1E69E7CC8];
    *(v187 + 16) = 0x746C7561666564;
    *(v187 + 24) = 0xE700000000000000;
    v194 = v277;
    *(v187 + 32) = v277;
    *(v187 + 40) = v265 & 1;
    *(v187 + 41) = 0;
    v195 = v261;
    sub_197404790(v181, v261, &qword_1EAF2AE78, &qword_19752C290);
    if ((v180[6])(v195, 1, v182) == 1)
    {

      sub_1974454C0(v195, &qword_1EAF2AE78, &qword_19752C290);
    }

    else
    {
      v196 = v254;
      (v180[4])(v254, v195, v182);
      v197 = v255;
      v248(v255, v196, v182);
      v249(v197, 0, 1, v182);
      v198 = v247;
      swift_beginAccess();

      sub_1973F6E44(v197, v187 + v198, &qword_1EAF2AE78, &qword_19752C290);
      swift_endAccess();
      sub_19752128C();
      LOBYTE(v198) = sub_19752188C();

      (v180[1])(v196, v182);
      if (v198)
      {
        *(v187 + 40) = 1;
      }
    }

    v199 = v268;
    *v188 = v270;
    v188[1] = v199;
    v200 = *(v187 + v250);
    *(v187 + v250) = 0;

    v201 = v267;
    v202 = *(v267 + v271[7] + 8);
    v203 = v264;
    v204 = swift_allocObject();
    *(v204 + 16) = v251;
    sub_19741598C(v201, v204 + v203);
    v205 = sub_19741A1AC(v194, v204);
    swift_setDeallocating();
    sub_19740B2C8(v204 + v203);
    result = swift_deallocClassInstance();
    v207 = v276;
    if (!v205)
    {
      __break(1u);
      return result;
    }

    v208 = 0x1E695D688;
    if (v202)
    {
      v208 = 0x1E695D668;
    }

    v209 = objc_allocWithZone(*v208);
    v210 = sub_19752178C();
    v211 = [v209 initWithName:v210 managedObjectModel:v205];

    sub_19744CC00(0, &qword_1ED7C9B90, 0x1E695D6C8);
    v212 = v211;
    v213 = sub_1975219BC();
    [v212 setPersistentStoreDescriptions_];

    *(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) = v212;
    v214 = *(v187 + 32);
    v215 = v212;

    v270 = v215;
    v78 = [v215 persistentStoreCoordinator];
    v79 = *(v214 + 64);
    if (v79 >> 62)
    {
      if (v79 < 0)
      {
        v246 = *(v214 + 64);
      }

      v216 = sub_1975220EC();
    }

    else
    {
      v216 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v271 = v205;
    if (v216)
    {
      if (v216 < 1)
      {
        __break(1u);
        goto LABEL_97;
      }

      for (i = 0; i != v216; ++i)
      {
        if ((v79 & 0xC000000000000001) != 0)
        {
          MEMORY[0x19A8E0960](i, v79);
        }

        else
        {
          v218 = *(v79 + 8 * i + 32);
        }

        sub_19750E574();
      }

      v207 = v276;
    }

    else
    {
    }

    v219 = sub_19741598C(v267, v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration);
    v220 = MEMORY[0x19A8E1370](v219);
    v221 = [*(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) managedObjectModel];
    v222 = *(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model);
    *(v187 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model) = v221;
    v223 = v221;

    v224 = v259;
    v225 = sub_1974085B0(v223, v259 & 1);
    v78 = v273;
    v79 = v272;
    if (v207)
    {

      objc_autoreleasePoolPop(v220);
      v226 = v269;
      v227 = v271;

      sub_1974454C0(v274, &qword_1EAF2AF30, &qword_19752C6A0);
      sub_1974454C0(v226, &qword_1EAF2AE78, &qword_19752C290);
      sub_1974454C0(v262, &qword_1EAF2AE78, &qword_19752C290);
      sub_19740B2C8(v267);
      goto LABEL_76;
    }

    v228 = v225;

    objc_autoreleasePoolPop(v220);
    if ((v224 & 1) == 0)
    {
      sub_19740C0A4();
    }

    v214 = v269;
    v216 = v253;
    v229 = v271;

    sub_1974454C0(v262, &qword_1EAF2AE78, &qword_19752C290);
    sub_19740B2C8(v267);
    v230 = sub_197413D04(&qword_1ED7C9B80, type metadata accessor for DefaultStore);
    sub_197414BA4(&v284, &v279);
    *(&v281 + 1) = v187;
    v282 = v230;
    swift_beginAccess();
    v212 = *v216;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v216 = v212;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_81:
      v233 = v212[2];
      v232 = v212[3];
      if (v233 >= v232 >> 1)
      {
        v212 = sub_19740D174((v232 > 1), v233 + 1, 1, v212);
      }

      v212[2] = v233 + 1;
      v234 = &v212[7 * v233];
      v235 = v279;
      v236 = v280;
      v237 = v281;
      v234[10] = v282;
      *(v234 + 3) = v236;
      *(v234 + 4) = v237;
      *(v234 + 2) = v235;
      v78[6] = v212;
      swift_endAccess();
      v238 = DefaultStore.identifier.getter();
      v240 = v239;
      swift_beginAccess();

      v241 = v78[7];
      v242 = swift_isUniquelyReferenced_nonNull_native();
      v283 = v78[7];
      v78[7] = 0x8000000000000000;
      sub_19748064C(v187, v238, v240, v242, &v283);

      v78[7] = v283;
      swift_endAccess();
      sub_19740CEC0();

      sub_1974454C0(v274, &qword_1EAF2AF30, &qword_19752C6A0);
      sub_1974454C0(v214, &qword_1EAF2AE78, &qword_19752C290);
      sub_197414BEC(&v284);

      sub_19740B2C8(v79);
      return v78;
    }

LABEL_97:
    v212 = sub_19740D174(0, v212[2] + 1, 1, v212);
    *v216 = v212;
    goto LABEL_81;
  }

  v155 = 0;
  v278 = (v152 & 0xC000000000000001);
  v277 = (v152 & 0xFFFFFFFFFFFFFF8);
  while (v278)
  {
    v156 = MEMORY[0x19A8E0960](v155, v152);
    v157 = v155 + 1;
    if (__OFADD__(v155, 1))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      v163 = v287;
      v78 = v273;
      v79 = v272;
      goto LABEL_48;
    }

LABEL_41:
    swift_beginAccess();
    v158 = v154;
    v159 = *(v156 + 16);
    v160 = *(v156 + 24);

    v79 = v152;
    sub_197414EA0(&v279, v159, v160);

    v161 = *(v156 + 16);
    v78 = *(v156 + 24);

    v162 = swift_isUniquelyReferenced_nonNull_native();
    *&v279 = v158;
    sub_1973F883C(v156, v161, v78, v162, &qword_1EAF2B380, &qword_19752D538, sub_1973FB840);

    v154 = v279;
    ++v155;
    if (v157 == v153)
    {
      goto LABEL_46;
    }
  }

  if (v155 < *(v277 + 2))
  {
    v156 = *(v152 + 8 * v155 + 32);

    v157 = v155 + 1;
    if (__OFADD__(v155, 1))
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  swift_once();
LABEL_16:
  v132 = byte_1EAF2B740;
  v134 = qword_1EAF2B748;
  v133 = unk_1EAF2B750;
  sub_19744BE3C();
  swift_allocError();
  *v135 = v132;
  *(v135 + 8) = v134;
  *(v135 + 16) = v133;
  swift_willThrow();

LABEL_17:

  sub_1974454C0(v274, &qword_1EAF2AF30, &qword_19752C6A0);
  sub_1974454C0(v269, &qword_1EAF2AE78, &qword_19752C290);
  sub_197414BEC(&v284);
  sub_19740B2C8(v79);
  v136 = v78[5];

  v137 = v78[6];

  v138 = v78[7];

  v139 = v78[8];

  type metadata accessor for ModelContainer();
  swift_deallocPartialClassInstance();
  return v78;
}

uint64_t ModelContainer.__allocating_init(for:configurations:)(uint64_t a1, uint64_t a2)
{
  v7 = 1uLL;
  type metadata accessor for Schema();
  v8 = 0;
  swift_allocObject();
  v4 = Schema.init(_:version:)(a1, &v7);
  type metadata accessor for ModelContainer();
  v5 = swift_allocObject();
  ModelContainer.init(for:configurations:)(v4, a2);
  return v5;
}

{
  v4 = swift_allocObject();
  ModelContainer.init(for:configurations:)(a1, a2);
  return v4;
}

uint64_t ModelContainer.init(for:configurations:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v135 - v8;
  v143 = type metadata accessor for ModelConfiguration();
  v141 = *(v143 - 8);
  v10 = *(v141 + 64);
  v12 = MEMORY[0x1EEE9AC00](v143, v11);
  v139 = v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v138 = v135 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v136 = (v135 - v18);
  v19 = MEMORY[0x1E69E7CD0];
  *(v2 + 40) = MEMORY[0x1E69E7CD0];
  v20 = v2 + 40;
  *(v2 + 48) = MEMORY[0x1E69E7CC0];
  v21 = v2 + 48;
  *(v2 + 56) = MEMORY[0x1E69E7CC8];
  v137 = (v2 + 56);
  *(v2 + 64) = 0;
  _SD_Initialize_framework();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  v164 = v19;
  v148 = a1;
  v22 = *(a1 + 64);
  if (v22 >> 62)
  {
    goto LABEL_103;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v140 = v9;
    v135[0] = v21;

    v147 = v2;
    v145 = v20;
    if (!v23)
    {
      v9 = MEMORY[0x1E69E7CC8];
      v31 = MEMORY[0x1E69E7CD0];
      goto LABEL_15;
    }

    v146 = a2;
    v20 = 0;
    v150 = v22 & 0xFFFFFFFFFFFFFF8;
    v151 = v22 & 0xC000000000000001;
    v9 = MEMORY[0x1E69E7CC8];
    v149 = v22;
    while (v151)
    {
      v24 = MEMORY[0x19A8E0960](v20, v22);
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_12;
      }

LABEL_8:
      swift_beginAccess();
      a2 = v23;
      v26 = v9;
      v27 = *(v24 + 16);
      v28 = *(v24 + 24);

      sub_197414EA0(&v154, v27, v28);

      v29 = *(v24 + 16);
      v21 = *(v24 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v154 = v26;
      v23 = a2;
      v2 = &v154;
      sub_1973F883C(v24, v29, v21, isUniquelyReferenced_nonNull_native, &qword_1EAF2B380, &qword_19752D538, sub_1973FB840);

      v9 = v154;
      ++v20;
      v22 = v149;
      if (v25 == a2)
      {
        goto LABEL_13;
      }
    }

    if (v20 >= *(v150 + 16))
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v24 = *(v22 + 8 * v20 + 32);

    v25 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v31 = v164;
    a2 = v146;
    v2 = v147;
    v20 = v145;
LABEL_15:

    *(v2 + 72) = v31;
    *(v2 + 80) = v9;
    v32 = *(a2 + 16);

    v144 = v9;
    v142 = v32;
    v135[1] = v31;
    if (!v32)
    {
      ModelConfiguration.init(isStoredInMemoryOnly:)(0, v136);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_1973F8160(0, *(a2 + 16) + 1, 1, a2, &qword_1EAF2B3F0, &qword_19752D5B0, &qword_1EAF2B170, &qword_19752D118);
      }

      v34 = *(a2 + 16);
      v33 = *(a2 + 24);
      v35 = v143;
      if (v34 >= v33 >> 1)
      {
        v134 = sub_1973F8160((v33 > 1), v34 + 1, 1, a2, &qword_1EAF2B3F0, &qword_19752D5B0, &qword_1EAF2B170, &qword_19752D118);
        v35 = v143;
        a2 = v134;
      }

      *(&v155 + 1) = v35;
      *&v156 = sub_197413D04(&qword_1ED7C9B58, type metadata accessor for ModelConfiguration);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v154);
      v37 = v136;
      sub_19741598C(v136, boxed_opaque_existential_1);
      *(a2 + 16) = v34 + 1;
      sub_1973FA938(&v154, a2 + 40 * v34 + 32);
      sub_19740B2C8(v37);
      v142 = *(a2 + 16);
      if (!v142)
      {

        v22 = MEMORY[0x1E69E7CC0];
        if (!*(MEMORY[0x1E69E7CC0] + 16))
        {
          goto LABEL_68;
        }

        goto LABEL_65;
      }
    }

    v149 = a2 + 32;
    swift_beginAccess();
    v2 = 0;
    v136 = (v141 + 56);
    v22 = MEMORY[0x1E69E7CC0];
    v146 = a2;
LABEL_22:
    if (v2 >= *(a2 + 16))
    {
      goto LABEL_102;
    }

    v151 = v22;
    sub_197421420(v149 + 40 * v2, &v161);
    sub_197421420(&v161, &v158);
    v21 = *v20;
    v38 = *(*v20 + 16);
    v150 = v2;
    if (v38)
    {
      v39 = *(v21 + 40);
      sub_197522A5C();
      v40 = v160;
      __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
      v41 = *(v40 + 8);

      sub_1975216BC();
      v42 = sub_197522A9C();
      v43 = -1 << *(v21 + 32);
      v44 = v42 & ~v43;
      if ((*(v21 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
      {
        v45 = ~v43;
        while (1)
        {
          sub_197414BA4(*(v21 + 48) + 40 * v44, &v154);
          v46 = *(&v155 + 1);
          v47 = v156;
          __swift_project_boxed_opaque_existential_1(&v154, *(&v155 + 1));
          LOBYTE(v46) = sub_19749BC0C(&v158, v46, v47);
          sub_197414BEC(&v154);
          if (v46)
          {
            break;
          }

          v44 = (v44 + 1) & v45;
          if (((*(v21 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        if (qword_1EAF2AD40 != -1)
        {
LABEL_105:
          swift_once();
        }

        v73 = byte_1EAF2B740;
        v75 = qword_1EAF2B748;
        v74 = unk_1EAF2B750;
        sub_19744BE3C();
        swift_allocError();
        *v76 = v73;
        *(v76 + 8) = v75;
        *(v76 + 16) = v74;
        swift_willThrow();

        v65 = v147;

        __swift_destroy_boxed_opaque_existential_1Tm_0(&v161);
        sub_197414BEC(&v158);

        return v65;
      }

LABEL_28:

      v20 = v145;
      a2 = v146;
    }

    v48 = *(&v159 + 1);
    v49 = v160;
    v2 = __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
    v50 = (*(v49 + 40))(v48, v49);
    if (!v50)
    {
      v59 = *(&v159 + 1);
      v60 = v160;
      __swift_mutable_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
      v21 = *(v60 + 48);

      (v21)(v61, v59, v60);
LABEL_45:
      v62 = *(&v159 + 1);
      v63 = v160;
      __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
      v64 = v165;
      (*(v63 + 64))(v62, v63);
      v65 = v147;
      v22 = v151;
      if (v64)
      {
        __swift_destroy_boxed_opaque_existential_1Tm_0(&v161);

        sub_197414BEC(&v158);

        goto LABEL_63;
      }

      v165 = 0;
      sub_197414BA4(&v158, v153);
      swift_beginAccess();
      sub_197419B14(&v154, v153);
      swift_endAccess();
      sub_197414BEC(&v154);
      sub_197421420(&v161, &v154);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B170, &qword_19752D118);
      v66 = v140;
      v67 = v143;
      if (swift_dynamicCast())
      {
        (*v136)(v66, 0, 1, v67);
        v68 = v66;
        v69 = v138;
        sub_19740B38C(v68, v138);
        sub_19741598C(v69, v139);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1974773F8(0, *(v22 + 16) + 1, 1, v22, &qword_1EAF2AFF8, &unk_19752D470, type metadata accessor for ModelConfiguration);
        }

        v71 = *(v22 + 16);
        v70 = *(v22 + 24);
        if (v71 >= v70 >> 1)
        {
          v22 = sub_1974773F8(v70 > 1, v71 + 1, 1, v22, &qword_1EAF2AFF8, &unk_19752D470, type metadata accessor for ModelConfiguration);
        }

        sub_19740B2C8(v138);
        __swift_destroy_boxed_opaque_existential_1Tm_0(&v161);
        *(v22 + 16) = v71 + 1;
        sub_19740B38C(v139, v22 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v71);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm_0(&v161);
        (*v136)(v66, 1, 1, v67);
        sub_1974454C0(v66, &qword_1EAF2AF30, &qword_19752C6A0);
      }

      v2 = v150 + 1;
      sub_197414BEC(&v158);
      if (v2 == v142)
      {

        if (!*(v22 + 16))
        {
LABEL_68:

LABEL_69:
          swift_beginAccess();
          v82 = *v20 + 56;
          v83 = 1 << *(*v20 + 32);
          v84 = -1;
          if (v83 < 64)
          {
            v84 = ~(-1 << v83);
          }

          v85 = v84 & *(*v20 + 56);
          v2 = (v83 + 63) >> 6;
          v149 = *v20;

          a2 = 0;
          v145 = v2;
          v146 = v82;
LABEL_74:
          if (!v85)
          {
            while (1)
            {
              v89 = a2 + 1;
              if (__OFADD__(a2, 1))
              {
                break;
              }

              if (v89 >= v2)
              {

                v65 = v147;
                sub_19740CEC0();

                return v65;
              }

              v85 = *(v82 + 8 * v89);
              ++a2;
              if (v85)
              {
                a2 = v89;
                goto LABEL_79;
              }
            }

LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            v23 = sub_1975220EC();
            continue;
          }

LABEL_79:
          sub_197414BA4(*(v149 + 48) + 40 * (__clz(__rbit64(v85)) | (a2 << 6)), &v161);
          v158 = v161;
          v159 = v162;
          v90 = v163;
          v160 = v163;
          v91 = *(&v162 + 1);
          v92 = __swift_project_boxed_opaque_existential_1(&v158, *(&v162 + 1));
          v93 = v147[2];
          v94 = v147[3];
          v95 = v147[4];

          v96 = v92;
          v97 = v165;
          v98 = sub_19740AF04(v96, v93, v94, v95, v91, v90);
          v165 = v97;
          if (v97)
          {
            v65 = v147;

            sub_197414BEC(&v158);

            return v65;
          }

          v100 = v98;
          v101 = v99;

          sub_197414BA4(&v158, &v154);
          *(&v156 + 1) = v100;
          v157 = v101;
          v102 = v135[0];
          swift_beginAccess();
          v103 = *v102;
          swift_unknownObjectRetain();
          v104 = swift_isUniquelyReferenced_nonNull_native();
          *v102 = v103;
          if ((v104 & 1) == 0)
          {
            v103 = sub_19740D174(0, v103[2] + 1, 1, v103);
            *v102 = v103;
          }

          v106 = v103[2];
          v105 = v103[3];
          if (v106 >= v105 >> 1)
          {
            v103 = sub_19740D174((v105 > 1), v106 + 1, 1, v103);
          }

          v103[2] = v106 + 1;
          v107 = &v103[7 * v106];
          v108 = v154;
          v109 = v155;
          v110 = v156;
          v107[10] = v157;
          *(v107 + 3) = v109;
          *(v107 + 4) = v110;
          *(v107 + 2) = v108;
          *v102 = v103;
          swift_endAccess();
          ObjectType = swift_getObjectType();
          v112 = *(v101 + 40);
          v113 = v100;
          v150 = v101;
          v114 = v112(ObjectType, v101);
          v21 = v115;
          v116 = v137;
          swift_beginAccess();
          v151 = v113;
          swift_unknownObjectRetain();
          v117 = *v116;
          v118 = swift_isUniquelyReferenced_nonNull_native();
          v152 = *v116;
          v119 = v152;
          *v116 = 0x8000000000000000;
          v121 = sub_1973F4028(v114, v21);
          v122 = *(v119 + 16);
          v123 = (v120 & 1) == 0;
          v124 = v122 + v123;
          if (__OFADD__(v122, v123))
          {
            __break(1u);
            goto LABEL_105;
          }

          v22 = v120;
          if (*(v119 + 24) >= v124)
          {
            if (v118)
            {
              v20 = v152;
              if ((v120 & 1) == 0)
              {
                goto LABEL_91;
              }
            }

            else
            {
              sub_19747B284();
              v20 = v152;
              if ((v22 & 1) == 0)
              {
                goto LABEL_91;
              }
            }
          }

          else
          {
            sub_19740CAD4(v124, v118);
            v125 = sub_1973F4028(v114, v21);
            if ((v22 & 1) != (v126 & 1))
            {
              goto LABEL_107;
            }

            v121 = v125;
            v20 = v152;
            if ((v22 & 1) == 0)
            {
LABEL_91:
              *(v20 + 8 * (v121 >> 6) + 64) |= 1 << v121;
              v127 = (*(v20 + 48) + 16 * v121);
              *v127 = v114;
              v127[1] = v21;
              v128 = (*(v20 + 56) + 16 * v121);
              v129 = v150;
              *v128 = v151;
              v128[1] = v129;
              v130 = *(v20 + 16);
              v131 = __OFADD__(v130, 1);
              v132 = v130 + 1;
              if (v131)
              {
                __break(1u);
LABEL_107:
                result = sub_1975229CC();
                __break(1u);
                return result;
              }

              *(v20 + 16) = v132;
              goto LABEL_73;
            }
          }

          v86 = (*(v20 + 56) + 16 * v121);
          v87 = *v86;
          v88 = v150;
          *v86 = v151;
          v86[1] = v88;

          swift_unknownObjectRelease();
LABEL_73:
          v85 &= v85 - 1;
          *v137 = v20;
          swift_endAccess();
          swift_unknownObjectRelease();
          sub_197414BEC(&v158);
          v9 = v144;
          v2 = v145;
          v82 = v146;
          goto LABEL_74;
        }

LABEL_65:
        v81 = sub_19741A1AC(v148, v22);

        goto LABEL_69;
      }

      goto LABEL_22;
    }

    break;
  }

  v135[2] = v50;
  a2 = *(v50 + 64);
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v72 = *(v50 + 64);
    }

    v51 = sub_1975220EC();
  }

  else
  {
    v51 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v51)
  {
LABEL_43:

    v9 = v144;
    v20 = v145;
    a2 = v146;
    goto LABEL_45;
  }

  v21 = 0;
  v22 = a2 & 0xC000000000000001;
  v20 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v22)
    {
      v53 = MEMORY[0x19A8E0960](v21, a2);
      v52 = v53;
      v9 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v52 = *(a2 + 8 * v21 + 32);

      v9 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        goto LABEL_99;
      }
    }

    v2 = v135;
    v55 = *(v148 + 8);
    *&v154 = v52;
    MEMORY[0x1EEE9AC00](v53, v54);
    v135[-2] = &v154;
    v56 = v165;
    v58 = sub_1974159FC(sub_197480F2C, &v135[-4], v57);
    v165 = v56;
    if ((v58 & 1) == 0)
    {
      break;
    }

    ++v21;
    if (v9 == v51)
    {
      goto LABEL_43;
    }
  }

  if (qword_1EAF2AD58 != -1)
  {
    swift_once();
  }

  v77 = byte_1EAF2B788;
  v79 = qword_1EAF2B790;
  v78 = unk_1EAF2B798;
  sub_19744BE3C();
  swift_allocError();
  *v80 = v77;
  *(v80 + 8) = v79;
  *(v80 + 16) = v78;
  swift_willThrow();

  v65 = v147;

  __swift_destroy_boxed_opaque_existential_1Tm_0(&v161);
  sub_197414BEC(&v158);

LABEL_63:

  return v65;
}

uint64_t sub_197476B80()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = *(v0 + 48);

    do
    {
      sub_197404790(v4, v13, &qword_1EAF2AF38, &qword_19752C6A8);
      v6 = v13[6];
      ObjectType = swift_getObjectType();
      (*(v6 + 72))(ObjectType, v6);
      swift_unknownObjectRelease();
      sub_197414BEC(v13);
      v4 += 56;
      --v3;
    }

    while (v3);

    v8 = *(v0 + 48);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = MEMORY[0x1E69E7CC0];

  if (qword_1ED7C9CD8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED7CE678;
  v13[0] = v9;
  v11 = *(qword_1ED7CE678 + 16);
  os_unfair_lock_lock(v11 + 4);
  sub_19745CCBC(v10, v13, v1);
  os_unfair_lock_unlock(v11 + 4);
}

uint64_t sub_197476CFC()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);

  if (!v3)
  {
  }

  v5 = 0;
  v6 = v2 + 32;
  while (v5 < *(v2 + 16))
  {
    sub_197404790(v6, v9, &qword_1EAF2AF38, &qword_19752C6A8);
    v7 = v9[6];
    ObjectType = swift_getObjectType();
    (*(v7 + 72))(ObjectType, v7);
    if (v1)
    {

      swift_unknownObjectRelease();
      return sub_197414BEC(v9);
    }

    swift_unknownObjectRelease();
    ++v5;
    result = sub_197414BEC(v9);
    v6 += 56;
    if (v3 == v5)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197476E20()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = MEMORY[0x1E69E7CC0];

  if (qword_1ED7C9CD8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED7CE678;
  v6 = v2;
  v4 = *(qword_1ED7CE678 + 16);
  os_unfair_lock_lock(v4 + 4);
  sub_19745CCBC(v3, &v6, v0);
  os_unfair_lock_unlock(v4 + 4);
}

id static ModelContainer.remoteChange.getter()
{
  if (qword_1ED7C8620 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED7C8628;

  return v1;
}

uint64_t sub_197476F3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_197476F7C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v18 = *v7;
      v19[0] = v9;
      *(v19 + 14) = *(v7 + 30);
      v10 = v7[1];
      v16 = *v7;
      v17[0] = v10;
      *(v17 + 14) = *(v7 + 30);
      sub_19741DE14(&v18, &v14);
      v11 = a1(&v16);
      if (v3)
      {
        break;
      }

      v4 = v11;
      v14 = v16;
      v15[0] = v17[0];
      *(v15 + 14) = *(v17 + 14);
      sub_19741EE34(&v14);
      v12 = v8-- == 0;
      v7 = (v7 + 40);
      if ((v4 | v12))
      {
        return v4 & 1;
      }
    }

    v14 = v16;
    v15[0] = v17[0];
    *(v15 + 14) = *(v17 + 14);
    sub_19741EE34(&v14);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

char *sub_197477094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B388, &qword_19752D540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1974771C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B430, &qword_19752D5F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1974772DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B348, &qword_19752D4F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

size_t sub_1974773F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1974775F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B340, &qword_19752D4E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19747772C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B260, &qword_19752D3F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_197477820(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B268, &qword_19752D400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B270, &qword_19752D408);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_197477954(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B248, &qword_19752D3D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B250, &unk_19752D3E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_197477AA4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_197477BC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B438, &qword_19752D5F8);
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = 16 * (v18 | (v9 << 6));
      v33 = *(*(v5 + 48) + v21);
      v22 = *(v5 + 56) + v21;
      if (a2)
      {
        sub_197480ED0(v22, v34);
      }

      else
      {
        sub_197480E74(v22, v34);
      }

      v23 = *(v8 + 40);
      sub_197522A5C();
      MEMORY[0x19A8E1190](v33);
      result = sub_197522A9C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      *(*(v8 + 48) + v17) = v33;
      result = sub_197480ED0(v34, *(v8 + 56) + v17);
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_197477E60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B188, &qword_19752D318);
  v37 = a2;
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + 8 * v21);
      v24 = (v22 + 16 * v21);
      v25 = v24[1];
      v38 = *v24;
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_19752202C();
      result = sub_1975216AC();
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
      *(*(v8 + 48) + 8 * v16) = v23;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v38;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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