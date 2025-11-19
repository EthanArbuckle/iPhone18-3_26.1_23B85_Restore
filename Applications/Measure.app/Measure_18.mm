uint64_t sub_10017C944()
{
  v0 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v56 = swift_allocObject();
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v54 = swift_allocObject();
  v4 = v3;
  swift_unknownObjectWeakInit();
  v5 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v62 = swift_allocObject();
  v6 = v5;
  swift_unknownObjectWeakInit();
  v7 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v61 = swift_allocObject();
  v8 = v7;
  swift_unknownObjectWeakInit();
  v27 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000F974(&unk_1004A3F10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003E02A0;
  *(v11 + 32) = v1;
  *(v11 + 40) = v2;
  *(v11 + 48) = v4;
  *(v11 + 56) = v6;
  *(v11 + 64) = v8;
  *(v11 + 72) = v27;
  *(v11 + 80) = v25;
  *(v11 + 88) = v22;
  *(v11 + 96) = v38;
  *(v11 + 104) = v45;
  *(v11 + 112) = v43;
  *(v11 + 120) = v40;
  *(v11 + 128) = v36;
  *(v11 + 136) = v34;
  *(v11 + 144) = v9;
  *(v11 + 152) = v10;
  v21 = v11;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = objc_opt_self();
  sub_100018630(0, &qword_1004AC9B0);
  v33 = v1;
  v32 = v2;
  v31 = v4;
  v30 = v6;
  v29 = v8;
  v28 = v27;
  v26 = v25;
  v23 = v22;
  v39 = v38;
  v46 = v45;
  v44 = v43;
  v41 = v40;
  v37 = v36;
  v35 = v34;
  v20 = v9;
  v19 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12 = swift_allocObject();
  v12[2] = v56;
  v12[3] = v55;
  v12[4] = v54;
  v12[5] = v62;
  v12[6] = v61;
  v12[7] = v60;
  v12[8] = v58;
  v12[9] = v57;
  v12[10] = v59;
  v12[11] = v51;
  v12[12] = v53;
  v12[13] = v52;
  v12[14] = v49;
  v12[15] = v48;
  v12[16] = v47;
  v12[17] = v16;
  v12[18] = v42;
  v67 = sub_10017EA68;
  v68 = v12;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_100041180;
  v66 = &unk_100470B10;
  v17 = _Block_copy(&aBlock);

  v13 = swift_allocObject();
  v13[2] = v56;
  v13[3] = v55;
  v13[4] = v54;
  v13[5] = v62;
  v13[6] = v61;
  v13[7] = v60;
  v13[8] = v58;
  v13[9] = v57;
  v13[10] = v59;
  v13[11] = v51;
  v13[12] = v53;
  v13[13] = v52;
  v13[14] = v49;
  v13[15] = v48;
  v13[16] = v47;
  v13[17] = v16;
  v13[18] = v42;
  v67 = sub_10017EB38;
  v68 = v13;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_100041180;
  v66 = &unk_100470B60;
  v15 = _Block_copy(&aBlock);

  [v24 _createTransformerWithInputAnimatableProperties:isa modelValueSetter:v17 presentationValueSetter:v15];

  _Block_release(v15);
  _Block_release(v17);

  *(v50 + OBJC_IVAR____TtC7Measure11ReticleView_animatingProperties) = v21;
}

uint64_t sub_10017D2E4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 orientation];

  return sub_10017B6E0(v1);
}

void sub_10017D428(char a1)
{
  if (a1 == 6)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    [v2 kReticleADSlerpFactor];
    v4 = v3;

    if (v4 > 0.0)
    {
      v5 = [v1 standardUserDefaults];
      [v5 kReticleADSlerpFactor];
    }
  }
}

void sub_10017D4E4(double *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_animatingProperties);
  if (!v2)
  {
    return;
  }

  v4 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_71;
    }

    v5 = *(v2 + 32);

    v6 = v5;
  }

  v7 = v6;
  [v6 setValue:*a1];

  if (v4)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v8 = *(v2 + 40);
LABEL_10:
  v9 = v8;
  [v8 setValue:a1[1]];

  if (v4)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v10 = *(v2 + 48);
LABEL_14:
  v11 = v10;
  [v10 setValue:a1[2]];

  if (v4)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_18;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v12 = *(v2 + 56);
LABEL_18:
  v13 = v12;
  [v12 setValue:a1[3]];

  if (v4)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v14 = *(v2 + 64);
LABEL_22:
  v15 = v14;
  [v14 setValue:a1[4]];

  if (v4)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_26;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v16 = *(v2 + 72);
LABEL_26:
  v17 = v16;
  [v16 setValue:a1[5]];

  if (v4)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_30;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 7uLL)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v18 = *(v2 + 80);
LABEL_30:
  v19 = v18;
  [v18 setValue:a1[6]];

  if (v4)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_34;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 8uLL)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v20 = *(v2 + 88);
LABEL_34:
  v21 = v20;
  [v20 setValue:a1[7]];

  if (v4)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_38;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 9uLL)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v22 = *(v2 + 96);
LABEL_38:
  v23 = v22;
  [v22 setValue:a1[8]];

  if (v4)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_42;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xAuLL)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v24 = *(v2 + 104);
LABEL_42:
  v25 = v24;
  [v24 setValue:a1[9]];

  if (v4)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_46;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xBuLL)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v26 = *(v2 + 112);
LABEL_46:
  v27 = v26;
  [v26 setValue:a1[10]];

  if (v4)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_50;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xCuLL)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v28 = *(v2 + 120);
LABEL_50:
  v29 = v28;
  [v28 setValue:a1[11]];

  if (v4)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_54;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xDuLL)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v30 = *(v2 + 128);
LABEL_54:
  v31 = v30;
  [v30 setValue:a1[12]];

  if (v4)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_58;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xEuLL)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v32 = *(v2 + 136);
LABEL_58:
  v33 = v32;
  [v32 setValue:a1[13]];

  if (v4)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_62;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xFuLL)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v34 = *(v2 + 144);
LABEL_62:
  v35 = v34;
  [v34 setValue:a1[14]];

  if (!v4)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 0x10uLL)
    {
      v36 = *(v2 + 152);
      goto LABEL_66;
    }

LABEL_85:
    __break(1u);
    return;
  }

  v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_66:
  v37 = v36;

  [v37 setValue:a1[15]];
}

uint64_t type metadata accessor for ReticleView()
{
  result = qword_1004AC958;
  if (!qword_1004AC958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017DAF4()
{
  sub_100065060();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10017DC28(uint64_t a1)
{
  result = sub_10017DC50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10017DC50()
{
  result = qword_1004AC9A0;
  if (!qword_1004AC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC9A0);
  }

  return result;
}

unint64_t sub_10017DCAC()
{
  result = qword_1004AC9A8;
  if (!qword_1004AC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC9A8);
  }

  return result;
}

void sub_10017DD00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong value];
    v3 = v2;

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v4 value];
      v7 = v6;

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v8 value];
        v11 = v10;

        swift_beginAccess();
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = v12;
          [v12 value];
          v15 = v14;

          swift_beginAccess();
          v16 = swift_unknownObjectWeakLoadStrong();
          if (v16)
          {
            v17 = v16;
            [v16 value];
            v19 = v18;

            swift_beginAccess();
            v20 = swift_unknownObjectWeakLoadStrong();
            if (v20)
            {
              v21 = v20;
              [v20 value];
              v23 = v22;

              swift_beginAccess();
              v24 = swift_unknownObjectWeakLoadStrong();
              if (v24)
              {
                v25 = v24;
                [v24 value];
                v27 = v26;

                swift_beginAccess();
                v28 = swift_unknownObjectWeakLoadStrong();
                if (v28)
                {
                  v29 = v28;
                  [v28 value];
                  v31 = v30;

                  swift_beginAccess();
                  v32 = swift_unknownObjectWeakLoadStrong();
                  if (v32)
                  {
                    v33 = v32;
                    [v32 value];
                    v66 = v34;

                    swift_beginAccess();
                    v35 = swift_unknownObjectWeakLoadStrong();
                    if (v35)
                    {
                      v36 = v35;
                      [v35 value];
                      v65 = v37;

                      swift_beginAccess();
                      v38 = swift_unknownObjectWeakLoadStrong();
                      if (v38)
                      {
                        v39 = v38;
                        [v38 value];
                        v64 = v40;

                        swift_beginAccess();
                        v41 = swift_unknownObjectWeakLoadStrong();
                        if (v41)
                        {
                          v42 = v41;
                          [v41 value];
                          v63 = v43;

                          swift_beginAccess();
                          v44 = swift_unknownObjectWeakLoadStrong();
                          if (v44)
                          {
                            v45 = v44;
                            [v44 value];
                            v62 = v46;

                            swift_beginAccess();
                            v47 = swift_unknownObjectWeakLoadStrong();
                            if (v47)
                            {
                              v48 = v47;
                              [v47 value];
                              v61 = v49;

                              swift_beginAccess();
                              v50 = swift_unknownObjectWeakLoadStrong();
                              if (v50)
                              {
                                v51 = v50;
                                [v50 value];
                                v60 = v52;

                                swift_beginAccess();
                                v53 = swift_unknownObjectWeakLoadStrong();
                                if (v53)
                                {
                                  v54 = v53;
                                  [v53 value];
                                  v59 = v55;

                                  swift_beginAccess();
                                  v56 = swift_unknownObjectWeakLoadStrong();
                                  if (v56)
                                  {
                                    v57 = v56;
                                    v58 = [v56 layer];

                                    v67[0] = v3;
                                    v67[1] = v7;
                                    v67[2] = v11;
                                    v67[3] = v15;
                                    v67[4] = v19;
                                    v67[5] = v23;
                                    v67[6] = v27;
                                    v67[7] = v31;
                                    v67[8] = v66;
                                    v67[9] = v65;
                                    v67[10] = v64;
                                    v67[11] = v63;
                                    v67[12] = v62;
                                    v67[13] = v61;
                                    v67[14] = v60;
                                    v67[15] = v59;
                                    [v58 setSublayerTransform:v67];
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
  }
}

void sub_10017E174()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong presentationValue];
    v3 = v2;

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v4 presentationValue];
      v7 = v6;

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v8 presentationValue];
        v11 = v10;

        swift_beginAccess();
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = v12;
          [v12 presentationValue];
          v15 = v14;

          swift_beginAccess();
          v16 = swift_unknownObjectWeakLoadStrong();
          if (v16)
          {
            v17 = v16;
            [v16 presentationValue];
            v19 = v18;

            swift_beginAccess();
            v20 = swift_unknownObjectWeakLoadStrong();
            if (v20)
            {
              v21 = v20;
              [v20 presentationValue];
              v23 = v22;

              swift_beginAccess();
              v24 = swift_unknownObjectWeakLoadStrong();
              if (v24)
              {
                v25 = v24;
                [v24 presentationValue];
                v27 = v26;

                swift_beginAccess();
                v28 = swift_unknownObjectWeakLoadStrong();
                if (v28)
                {
                  v29 = v28;
                  [v28 presentationValue];
                  v31 = v30;

                  swift_beginAccess();
                  v32 = swift_unknownObjectWeakLoadStrong();
                  if (v32)
                  {
                    v33 = v32;
                    [v32 presentationValue];
                    v67 = v34;

                    swift_beginAccess();
                    v35 = swift_unknownObjectWeakLoadStrong();
                    if (v35)
                    {
                      v36 = v35;
                      [v35 presentationValue];
                      v66 = v37;

                      swift_beginAccess();
                      v38 = swift_unknownObjectWeakLoadStrong();
                      if (v38)
                      {
                        v39 = v38;
                        [v38 presentationValue];
                        v65 = v40;

                        swift_beginAccess();
                        v41 = swift_unknownObjectWeakLoadStrong();
                        if (v41)
                        {
                          v42 = v41;
                          [v41 presentationValue];
                          v64 = v43;

                          swift_beginAccess();
                          v44 = swift_unknownObjectWeakLoadStrong();
                          if (v44)
                          {
                            v45 = v44;
                            [v44 presentationValue];
                            v63 = v46;

                            swift_beginAccess();
                            v47 = swift_unknownObjectWeakLoadStrong();
                            if (v47)
                            {
                              v48 = v47;
                              [v47 presentationValue];
                              v62 = v49;

                              swift_beginAccess();
                              v50 = swift_unknownObjectWeakLoadStrong();
                              if (v50)
                              {
                                v51 = v50;
                                [v50 presentationValue];
                                v61 = v52;

                                swift_beginAccess();
                                v53 = swift_unknownObjectWeakLoadStrong();
                                if (v53)
                                {
                                  v54 = v53;
                                  [v53 presentationValue];
                                  v60 = v55;

                                  swift_beginAccess();
                                  v56 = swift_unknownObjectWeakLoadStrong();
                                  if (v56)
                                  {
                                    v57 = v56;
                                    v68[0] = v3;
                                    v68[1] = v7;
                                    v68[2] = v11;
                                    v68[3] = v15;
                                    v68[4] = v19;
                                    v68[5] = v23;
                                    v68[6] = v27;
                                    v68[7] = v31;
                                    v68[8] = v67;
                                    v68[9] = v66;
                                    v68[10] = v65;
                                    v68[11] = v64;
                                    v68[12] = v63;
                                    v68[13] = v62;
                                    v68[14] = v61;
                                    v68[15] = v60;
                                    v58 = [objc_opt_self() valueWithCATransform3D:v68];
                                    v59 = String._bridgeToObjectiveC()();
                                    [v57 _setPresentationValue:v58 forKey:v59];
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
  }
}

unint64_t sub_10017E61C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10017E62C()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10017E664(uint64_t a1)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC7Measure11ReticleView_searchArea;
  result = *v2;
  v4 = *(v2 + 8);
  *(a1 + 24) = *v2;
  *(a1 + 32) = v4;
  return result;
}

void sub_10017E688()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC7Measure11ReticleView__state) = 0;
  v2 = OBJC_IVAR____TtC7Measure11ReticleView_currentDiameter;
  if (qword_1004A0768 != -1)
  {
    swift_once();
  }

  *(v1 + v2) = *&dword_1004D52F0 + *&dword_1004D52F0;
  v3 = (v1 + OBJC_IVAR____TtC7Measure11ReticleView_targetOffset);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_snapTimer) = 0;
  v4 = OBJC_IVAR____TtC7Measure11ReticleView_snapTimestamp;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC7Measure11ReticleView__frameState;
  KeyPath = swift_getKeyPath();
  v8 = sub_10000F974(&qword_1004A1200);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D5058;
  v10 = *(v8 + 272);
  swift_retain_n();
  *(v1 + v6) = v10(KeyPath, v9);
  v11 = OBJC_IVAR____TtC7Measure11ReticleView__input;
  v12 = swift_getKeyPath();
  v13 = sub_10000F974(&unk_1004A72D0);
  *(v1 + v11) = (*(v13 + 272))(v12, v9);
  v14 = (v1 + OBJC_IVAR____TtC7Measure11ReticleView_currentReticleTransform);
  v14[2] = 0u;
  v14[3] = 0u;
  *v14 = 0u;
  v14[1] = 0u;
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView__orientation) = 0;
  v15 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer;
  *(v1 + v15) = [objc_allocWithZone(CATransformLayer) init];
  v16 = OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer;
  *(v1 + v16) = [objc_allocWithZone(CATransformLayer) init];
  v17 = OBJC_IVAR____TtC7Measure11ReticleView_reticleShapeLayer;
  *(v1 + v17) = [objc_allocWithZone(CAShapeLayer) init];
  v18 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointLayer;
  *(v1 + v18) = [objc_allocWithZone(CAShapeLayer) init];
  v19 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer;
  *(v1 + v19) = [objc_allocWithZone(CALayer) init];
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_isGoingActive) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_transformChangeDuration) = 0x3FB999999999999ALL;
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_transformChangeDurationAfterIdle) = 0x3FC999999999999ALL;
  v20 = v1 + OBJC_IVAR____TtC7Measure11ReticleView_searchArea;
  *v20 = 0;
  *(v20 + 8) = 1106247680;
  v21 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBackingView;
  *(v1 + v21) = [objc_allocWithZone(type metadata accessor for TransformLayerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_animatingProperties) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_animator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10017EA14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017EA2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10017EA80()
{

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10017EBA0()
{

  return _swift_deallocObject(v0, 152, 7);
}

void sub_10017EC30(uint64_t a1)
{
  v51 = type metadata accessor for UUID();
  v3 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v1 + OBJC_IVAR____TtC7Measure18SceneDebugObserver_sceneView);
  v5 = [v52 session];
  v6 = [v5 currentFrame];

  if (!v6)
  {
    return;
  }

  v46 = a1;
  v7 = objc_opt_self();
  [v7 lock];
  v8 = _swiftEmptyArrayStorage;
  v55 = _swiftEmptyArrayStorage;
  v9 = [objc_opt_self() standardUserDefaults];
  Defaults.drawDebugPlanes.unsafeMutableAddressor();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 BOOLForKey:v10];

  v12 = &off_100494000;
  if ((v11 & 1) == 0)
  {
    v13 = [v6 anchors];
    sub_100018630(0, &unk_1004A8730);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14 >> 62)
    {
      goto LABEL_42;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v44 = v7;
      v45 = v6;
      if (i < 1)
      {
        goto LABEL_56;
      }

      v7 = 0;
      v16 = 0;
      v53 = v14 & 0xC000000000000001;
      v49 = v3 + 1;
      v47 = _swiftEmptyArrayStorage;
      v48 = i;
      while (1)
      {
        if (v53)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (!v20)
        {
          v17 = v19;
          goto LABEL_8;
        }

        v3 = v20;
        v8 = v12;
        v21 = [v52 v12[39]];
        v6 = [v21 rootNode];

        strcpy(v54, "arkit_plane_");
        HIBYTE(v54[6]) = 0;
        v54[7] = -5120;
        v22 = [v3 identifier];
        v23 = v50;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = UUID.uuidString.getter();
        v26 = v25;
        (*v49)(v23, v51);
        v27._countAndFlagsBits = v24;
        v27._object = v26;
        String.append(_:)(v27);

        v28 = String._bridgeToObjectiveC()();

        v17 = [v6 childNodeWithName:v28 recursively:0];

        if (!v17)
        {
          v17 = v19;
          v12 = v8;
          goto LABEL_32;
        }

        if (qword_1004A0118 != -1)
        {
          swift_once();
        }

        v29 = qword_1004D4A80;
        v12 = v8;
        if (qword_1004D4A80 >> 62)
        {
          break;
        }

        v30 = *((qword_1004D4A80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v30)
        {
          goto LABEL_37;
        }

LABEL_19:
        if (v7 == 0x8000000000000000 && v30 == -1)
        {
          goto LABEL_41;
        }

        v31 = v7 % v30;
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v32 = *(v29 + 8 * v31 + 32);
        }

        v6 = v32;
        v33 = sub_100050194(v32);

        if (!v33)
        {

LABEL_32:
          i = v48;
LABEL_8:

          goto LABEL_9;
        }

        [v17 addChildNode:v33];
        v3 = v33;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v6 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (__OFADD__(v7++, 1))
        {
          goto LABEL_40;
        }

        v47 = v55;
        i = v48;
LABEL_9:
        if (i == ++v16)
        {

          v7 = v44;
          v6 = v45;
          v8 = v47;
          goto LABEL_44;
        }
      }

      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (v30)
      {
        goto LABEL_19;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      ;
    }
  }

LABEL_44:
  v35 = [v52 v12[39]];
  URL._bridgeToObjectiveC()(v36);
  v38 = v37;
  [v35 writeToURL:v37 options:0 delegate:0 progressHandler:0];

  if (v8 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
    if (v39)
    {
      goto LABEL_46;
    }

LABEL_53:

    [v7 unlock];

    return;
  }

  v39 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_53;
  }

LABEL_46:
  if (v39 >= 1)
  {
    for (j = 0; j != v39; ++j)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v41 = v8[j + 4];
      }

      v42 = v41;
      [(__objc2_prot *)v41 removeFromParentNode];
    }

    goto LABEL_53;
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

id sub_10017F280(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure18SceneDebugObserver_keys;
  sub_10000F974(&qword_1004A3DB8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1003D5720;
  v6 = Defaults.showStatistics.unsafeMutableAddressor();
  v8 = *v6;
  v7 = v6[1];
  *(v5 + 32) = v8;
  *(v5 + 40) = v7;

  v9 = Defaults.showFeaturePoints.unsafeMutableAddressor();
  v11 = *v9;
  v10 = v9[1];
  *(v5 + 48) = v11;
  *(v5 + 56) = v10;

  v12 = Defaults.exportSceneFilePath.unsafeMutableAddressor();
  v14 = *v12;
  v13 = v12[1];
  *(v5 + 64) = v14;
  *(v5 + 72) = v13;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC7Measure18SceneDebugObserver_sceneView] = a1;
  v19.receiver = v1;
  v19.super_class = ObjectType;

  v15 = a1;
  v16 = objc_msgSendSuper2(&v19, "init");
  sub_100018630(0, &unk_1004A7540);
  v17 = v16;

  static NSUserDefaults.observe(observer:keys:)();

  return v17;
}

void sub_10017F590(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = Defaults.showStatistics.unsafeMutableAddressor();
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v11 = *(v2 + OBJC_IVAR____TtC7Measure18SceneDebugObserver_sceneView);
      v12 = [objc_opt_self() standardUserDefaults];
      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 BOOLForKey:v13];

      [v11 setShowsStatistics:v14];
    }

    else
    {
      v15 = Defaults.showFeaturePoints.unsafeMutableAddressor();
      if (*v15 == a1 && v15[1] == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100018630(0, &unk_1004A7540);
        v16 = *(v2 + OBJC_IVAR____TtC7Measure18SceneDebugObserver_sceneView);
        v24[1] = ARSCNDebugOptionShowFeaturePoints;
        v24[0] = [v16 debugOptions];
        type metadata accessor for SCNDebugOptions(0);
        sub_10017F974(&qword_1004AC9F0, type metadata accessor for SCNDebugOptions);
        static NSUserDefaults.update<A>(_:key:feature:)();
        [v16 setDebugOptions:v24[0]];
      }

      else
      {
        v17 = Defaults.exportSceneFilePath.unsafeMutableAddressor();
        if (*v17 == a1 && v17[1] == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v18 = objc_opt_self();
          v19 = [v18 standardUserDefaults];

          v20 = String._bridgeToObjectiveC()();

          v21 = [v19 stringForKey:v20];

          if (v21)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            URL.init(fileURLWithPath:)();

            sub_10017EC30(v8);
            (*(v6 + 8))(v8, v5);
            v22 = [v18 standardUserDefaults];

            v23 = String._bridgeToObjectiveC()();

            [v22 removeObjectForKey:v23];
          }
        }
      }
    }
  }
}

uint64_t sub_10017F974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10017F9CC(uint64_t a1)
{
  v2 = sub_100028DB8();

  return Context.description.getter(a1, v2);
}

unint64_t sub_10017FA08(uint64_t a1)
{
  result = sub_10017FA30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10017FA30()
{
  result = qword_1004AC9F8;
  if (!qword_1004AC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC9F8);
  }

  return result;
}

uint64_t sub_10017FA84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10017FAF8()
{
  v1 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = qword_1004ACA08;
  swift_beginAccess();
  sub_100085F70(v0 + v4, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v7 = sub_10000F974(&qword_1004A9310);
      sub_1000223C4(*&v3[*(v7 + 64)]);
      v8 = type metadata accessor for URL();
      (*(*(v8 - 8) + 8))(v3, v8);
LABEL_8:
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v11) = 0;
      goto LABEL_11;
    }

LABEL_7:
    sub_100085FD4(v3);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_100085FD4(v3);
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = 2;
  }

  HIBYTE(v11) = v6;
LABEL_11:
  v9 = v0;
  return static Published.subscript.setter();
}

void sub_10017FCC0(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v72 = a1;
  v9 = type metadata accessor for URL();
  __chkstk_darwin(v9 - 8);
  v69 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000F974(&qword_1004ACE48);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v67 - v13;
  v15 = qword_1004ACA00;
  v73 = 2;
  Published.init(initialValue:)();
  (*(v12 + 32))(&v5[v15], v14, v11);
  type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  swift_storeEnumTagMultiPayload();
  v16 = qword_1004ACA10;
  sub_10000F974(&qword_1004ACE50);
  swift_getKeyPath();
  v71 = type metadata accessor for DebugSessionCoordinator(0);
  *&v5[v16] = MutableStateValue.__allocating_init(_:_:)();
  v68 = qword_1004ACA18;
  *&v5[qword_1004ACA18] = 0;
  v70 = qword_1004ACA20;
  *&v5[qword_1004ACA20] = 0;
  v17 = qword_1004ACA28;
  *&v5[qword_1004ACA28] = 0;
  *&v5[qword_1004ACA30] = 0;
  v18 = &qword_1004D4000;
  *&v5[qword_1004D4F68] = 0;
  v5[qword_1004D4F70] = 0;
  v5[qword_1004D4F78] = 0;
  v19 = &v5[qword_1004ACA38];
  *v19 = a3;
  v19[1] = a4;

  v20 = v72;
  [v20 frame];
  v25 = [objc_allocWithZone(type metadata accessor for RecordingView()) initWithFrame:{v21, v22, v23, v24}];
  v26 = *&v5[v17];
  *&v5[v17] = v25;
  v27 = v25;

  if (!v27)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v27 setHidden:1];

  v28 = [a2 view];
  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!*&v5[v17])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v28;
  [v28 addSubview:?];

  if ([objc_opt_self() internalInstall])
  {
    v72 = v20;
    v30 = [objc_opt_self() standardUserDefaults];
    v31 = [v30 kHideTapToRadar];

    if (v31)
    {
      v20 = v72;
      goto LABEL_7;
    }

    v39 = v72;
    [v72 frame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = [objc_allocWithZone(type metadata accessor for TapToRadarView()) initWithFrame:{v41, v43, v45, v47}];
    v49 = *&v5[v70];
    *&v5[v70] = v48;
    v50 = v48;

    v51 = *&a2[qword_1004AF9A8];
    if (v51)
    {
      if (v50)
      {
        v67[1] = a4;
        v52 = v51;
        [v52 addSubview:v50];

        v53 = *&v5[v70];
        type metadata accessor for TapToRadarController();
        v54 = swift_allocObject();
        KeyPath = swift_getKeyPath();
        v56 = sub_10000F974(&qword_1004A11F8);
        v57 = qword_1004A04D8;
        v58 = v53;
        if (v57 != -1)
        {
          swift_once();
        }

        v59 = qword_1004D5058;
        v60 = *(v56 + 272);

        *(v54 + 64) = v60(KeyPath, v59);
        *(v54 + 72) = v53;
        v74 = &type metadata for Configurations.Default;
        v75 = &protocol witness table for Configurations.Default;
        v61 = v58;
        v62 = StateObserver.init(configuration:)();
        v63 = *(v62 + 72);
        if (v63)
        {
          *(v63 + OBJC_IVAR____TtC7Measure14TapToRadarView_delegate + 8) = &off_100471CF0;
          swift_unknownObjectWeakAssign();
        }

        sub_1001AF504();

        v64 = v68;
        *&v5[v68] = v62;

        v32 = v71;
        v65 = *&v5[v70];
        v18 = &qword_1004D4000;
        v20 = v72;
        if (v65)
        {
          if (*&v5[v64])
          {
            v66 = &off_100471CF0;
          }

          else
          {
            v66 = 0;
          }

          *(v65 + OBJC_IVAR____TtC7Measure14TapToRadarView_delegate + 8) = v66;
          swift_unknownObjectWeakAssign();
        }

        goto LABEL_8;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_7:

  v32 = v71;
LABEL_8:
  v76.receiver = v5;
  v76.super_class = v32;
  v33 = objc_msgSendSuper2(&v76, "init");
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 standardUserDefaults];
  LODWORD(v34) = [v36 kShouldReportMeasurements];

  if (v34)
  {
    type metadata accessor for ResultsReporter(0);
    v37 = v69;
    sub_1000CD58C();
    swift_allocObject();
    v38 = sub_1000CCB74(v37);

    *&v35[v18[493]] = v38;
  }

  else
  {
  }
}

void sub_10018031C()
{
  v1 = objc_allocWithZone(v0);
  Published.init(initialValue:)();
  type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  swift_storeEnumTagMultiPayload();
  sub_10000F974(&qword_1004ACE50);
  swift_getKeyPath();
  MutableStateValue.__allocating_init(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100180400(uint64_t a1)
{
  v21 = a1;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = qword_1004ACA08;
  swift_beginAccess();
  sub_100085F70(v1 + v9, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = sub_10000F974(&qword_1004A9310);
      v14 = (v8 + *(v13 + 64));
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v8 + *(v13 + 48));
      (*(v3 + 32))(v5, v8, v2);
      v18 = sub_100180C7C(v21, v5, v17, v15, v16);
      sub_1000223C4(v15);
      (*(v3 + 8))(v5, v2);
      return v18;
    }

    v11 = *v8;
    if (*(*v8 + OBJC_IVAR____TtC7Measure15SessionRecorder_state))
    {
      v12 = sub_1000E13E4(v21);
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100085FD4(v8);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v11 = *v8;
    if (*(*v8 + qword_1004A6B88))
    {
      v12 = sub_1000A6418(v21);
LABEL_11:
      v18 = v12;

      return v18;
    }

LABEL_13:
  }

  v20 = v21;

  return v20;
}

uint64_t sub_100180670()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  URL.path.getter();
  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathExtension(_:)();
  v9 = *(v3 + 8);
  v9(v6, v2);
  (*(v3 + 16))(v6, v8, v2);
  type metadata accessor for ResultsReporter(0);
  swift_allocObject();
  v10 = sub_1000CCB74(v6);
  v9(v8, v2);
  *(v1 + qword_1004D4F68) = v10;
}

uint64_t sub_100180810()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - v8;
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  NSUserDefaults.recordReplayOption.unsafeMutableAddressor();
  RecordReplayOption.replayFile.getter();
  URL.path.getter();
  v12 = *(v3 + 8);
  v12(v9, v2);
  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathExtension(_:)();
  v12(v6, v2);
  (*(v3 + 16))(v9, v11, v2);
  type metadata accessor for ResultsReporter(0);
  swift_allocObject();
  v13 = sub_1000CCB74(v9);
  v12(v11, v2);
  *(v1 + qword_1004D4F68) = v13;
}

id sub_100180A08(void *a1)
{
  v3 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v3);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = [v6 kShouldReportMeasurements];

  if (v7)
  {
    sub_100180810();
  }

  v8 = [objc_allocWithZone(type metadata accessor for SessionSimulator()) init];
  *v5 = v8;
  swift_storeEnumTagMultiPayload();
  v9 = qword_1004ACA08;
  swift_beginAccess();
  v10 = v8;
  sub_10018243C(v5, v1 + v9);
  swift_endAccess();
  sub_10017FAF8();
  sub_100085FD4(v5);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = sub_1000A5EFC(a1, sub_100182574, v11);

  return v12;
}

void sub_100180BA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() defaultCenter];
    if (qword_1004A03A8 != -1)
    {
      swift_once();
    }

    [v2 postNotificationName:qword_1004D4F60 object:0];

    v1[qword_1004D4F78] = 1;
  }
}

id sub_100180C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v70 = a1;
  v10 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v10);
  v69 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for URL();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = __chkstk_darwin(v12);
  v65 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v64 - v16;
  __chkstk_darwin(v15);
  v19 = &v64 - v18;
  sub_100181930(1);
  sub_100181958(0);
  static RecordReplayOption.insertTimestamp(to:)();
  v20 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL.path.getter();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 fileExistsAtPath:v21];

  v71 = v20;
  if ((v22 & 1) == 0)
  {
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    aBlock._countAndFlagsBits = 0;
    v26 = [v20 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&aBlock];

    if (v26)
    {
      v27 = aBlock._countAndFlagsBits;
    }

    else
    {
      v66 = a3;
      v67 = a4;
      v68 = a5;
      v28 = aBlock._countAndFlagsBits;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1004A0270 != -1)
      {
        swift_once();
      }

      aBlock._countAndFlagsBits = 0;
      aBlock._object = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      aBlock._countAndFlagsBits = 0xD00000000000001BLL;
      aBlock._object = 0x800000010040AED0;
      sub_10018252C(&qword_1004ACE58, &type metadata accessor for URL);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v30._countAndFlagsBits = 0x63657220726F6620;
      v30._object = 0xEF2E676E6964726FLL;
      String.append(_:)(v30);
      Log.error(_:isPrivate:)(aBlock, 0);

      a4 = v67;
      a5 = v68;
      a3 = v66;
      v20 = v71;
    }
  }

  URL.path.getter();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v20 isWritableFileAtPath:v31];

  p_prots = (&OBJC_PROTOCOL___RPScreenRecorderDelegate + 16);
  v34 = &qword_1004D4000;
  if (v32)
  {
    goto LABEL_15;
  }

  v64 = v10;
  v66 = a3;
  v68 = a5;
  if (qword_1004A0270 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v67 = a4;
    aBlock._countAndFlagsBits = 0;
    aBlock._object = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v35._countAndFlagsBits = 0x6620746567726154;
    v35._object = 0xEE00207265646C6FLL;
    String.append(_:)(v35);
    v36._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 0xD000000000000021;
    v37._object = 0x800000010040AEF0;
    String.append(_:)(v37);
    if (qword_1004A01D8 != -1)
    {
      swift_once();
    }

    v38 = v73;
    sub_10001D4C4(v73, qword_1004D4B88);
    v39._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v39);

    Log.error(_:isPrivate:)(aBlock, 0);

    URL.lastPathComponent.getter();
    v40 = v65;
    URL.appendingPathComponent(_:)();

    v41 = v72;
    (*(v72 + 8))(v19, v38);
    (*(v41 + 32))(v19, v40, v38);
    [objc_opt_self() removeCachedObjectForKey:ARSessionRecordingFilePathDefaultsKey];
    aBlock._countAndFlagsBits = 0;
    aBlock._object = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v42._object = 0x800000010040AF20;
    v42._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v42);
    v43._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 0xD000000000000026;
    v44._object = 0x800000010040AF40;
    String.append(_:)(v44);
    v45._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v45);

    v46 = String._bridgeToObjectiveC()();
    v47 = String._bridgeToObjectiveC()();

    v48 = [objc_opt_self() alertControllerWithTitle:v46 message:v47 preferredStyle:1];

    v49 = String._bridgeToObjectiveC()();
    v77 = nullsub_1;
    v78 = 0;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    v75 = sub_1000508F8;
    v76 = &unk_100470D98;
    v50 = _Block_copy(&aBlock);

    v51 = [objc_opt_self() actionWithTitle:v49 style:0 handler:v50];
    _Block_release(v50);

    [v48 addAction:v51];
    p_prots = &OBJC_PROTOCOL___RPScreenRecorderDelegate.prots;
    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    v34 = &qword_1004D4000;
    result = *(&xmmword_1004D4AB8 + 1);
    a4 = v67;
    a5 = v68;
    LOBYTE(a3) = v66;
    if (!*(&xmmword_1004D4AB8 + 1))
    {
      break;
    }

    [*(&xmmword_1004D4AB8 + 1) presentViewController:v48 animated:1 completion:0];

LABEL_15:
    sub_100180670();
    if (p_prots[48] == -1)
    {
      v53 = v34[344];
      if (v53)
      {
        goto LABEL_17;
      }
    }

    else
    {
      swift_once();
      v53 = v34[344];
      if (v53)
      {
LABEL_17:
        v54 = objc_allocWithZone(type metadata accessor for SessionRecorder());
        v55 = sub_1000E0D5C(v53);
        v56 = v69;
        *v69 = v55;
        swift_storeEnumTagMultiPayload();
        v57 = qword_1004ACA08;
        swift_beginAccess();
        v58 = v55;
        sub_10018243C(v56, v6 + v57);
        swift_endAccess();
        sub_10017FAF8();
        sub_100085FD4(v56);
        v59 = URL.path.getter();
        v61 = sub_1000E0E18(v70, v59, v60, a3, a4, a5);

        v62 = v73;
        v63 = *(v72 + 8);
        v63(v17, v73);
        v63(v19, v62);
        return v61;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001815F0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v17[-v9];
  v11 = qword_1004ACA08;
  swift_beginAccess();
  sub_100085F70(v2 + v11, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_100085FD4(v10);
  }

  v12 = *v10;
  *v8 = v12;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v13 = v12;
  sub_10018243C(v8, v2 + v11);
  swift_endAccess();
  sub_10017FAF8();
  sub_100085FD4(v8);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;

  sub_100038EBC(a1);
  sub_1000E166C(sub_100182520, v15);
}

void sub_1001817C8(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_storeEnumTagMultiPayload();
    v8 = qword_1004ACA08;
    swift_beginAccess();
    sub_10018243C(v5, &v7[v8]);
    swift_endAccess();
    sub_10017FAF8();
    sub_100085FD4(v5);
    v9 = qword_1004D4F70;
    v7[qword_1004D4F70] = 1;
    sub_100181930(0);
    sub_100181958(1);
    v10 = *&v7[qword_1004ACA38];

    v10(v11);

    v7[v9] = 1;
    if (a2)
    {
      a2(v12);
    }
  }
}

uint64_t sub_100181980(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  aBlock[4] = v19;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10018252C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v21);
}

uint64_t sub_100181C60()
{
  v1 = qword_1004ACA00;
  v2 = sub_10000F974(&qword_1004ACE48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100085FD4(v0 + qword_1004ACA08);
}

id sub_100181D58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSessionCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100181D90(uint64_t a1)
{
  v2 = qword_1004ACA00;
  v3 = sub_10000F974(&qword_1004ACE48);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_100085FD4(a1 + qword_1004ACA08);
}

void sub_100181EAC()
{
  sub_100181FAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DebugSessionCoordinator.RecordReplayState(319);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_100181FAC()
{
  if (!qword_1004ACA78)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ACA78);
    }
  }
}

void sub_100182074()
{
  sub_100182134();
  if (v0 <= 0x3F)
  {
    sub_1001821BC(319, &qword_1004ACE08, type metadata accessor for SessionRecorder);
    if (v1 <= 0x3F)
    {
      sub_1001821BC(319, &unk_1004ACE10, type metadata accessor for SessionSimulator);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100182134()
{
  if (!qword_1004ACDF8)
  {
    type metadata accessor for URL();
    sub_100013BB0(&qword_1004ACE00);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1004ACDF8);
    }
  }
}

void sub_1001821BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

unint64_t sub_10018221C()
{
  result = qword_1004ACE40;
  if (!qword_1004ACE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACE40);
  }

  return result;
}

NSString sub_100182270()
{
  result = String._bridgeToObjectiveC()();
  qword_1004D4F60 = result;
  return result;
}

uint64_t sub_1001822AC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100182330(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1001823A8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1001823EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100182410(void *a1)
{
  result = *(*(v1 + 16) + *a1);
  if (result)
  {
    return [result setHidden:(*(v1 + 24) & 1) == 0];
  }

  return result;
}

uint64_t sub_10018243C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001824A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001824D8()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10018252C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100182594()
{
  v1 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode);
  }

  else
  {
    v4 = sub_1001825F4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1001825F4()
{
  v1 = v0;
  v2 = [objc_opt_self() boxWithWidth:0.0003 height:0.0003 length:3.0 chamferRadius:0.0];
  v3 = [v2 materials];
  sub_100018630(0, &qword_1004AF720);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    v7 = v6;

    v8 = [v7 diffuse];

    sub_100018630(0, &qword_1004A2930);
    isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.14913, 0.0, 1.0).super.isa;
    [v8 setContents:isa];

LABEL_9:
    v10 = [objc_opt_self() nodeWithGeometry:v2];

    v11 = String._bridgeToObjectiveC()();
    [v10 setName:v11];

    [v10 position];
    [v10 setPosition:?];
    [v10 setHidden:1];
    v12 = [objc_allocWithZone(SCNNode) init];
    v13 = String._bridgeToObjectiveC()();
    [v12 setName:v13];

    [v12 addChildNode:v10];
    v14 = objc_opt_self();
    [v14 begin];
    [v1 addChildNode:v12];
    [v14 commit];

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001828C4(id a1)
{
  v3 = objc_opt_self();
  v4 = [v3 boxWithWidth:0.001 height:0.2 length:0.001 chamferRadius:0.0];
  v5 = [v4 materials];
  sub_100018630(0, &qword_1004AF720);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = &off_100494000;
  v29 = a1;
  if (v7)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_30;
      }

      v9 = *(v6 + 32);
    }

    v10 = v9;

    v11 = [v10 diffuse];
    [v11 setContents:a1];
  }

  else
  {
  }

  v5 = objc_opt_self();
  v6 = [v5 nodeWithGeometry:v4];

  v12 = String._bridgeToObjectiveC()();
  [v6 setName:v12];

  [v6 position];
  [v6 setPosition:?];
  v8 = [objc_opt_self() sphereWithRadius:0.01];
  v13 = [v8 materials];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v28 = v1;
    if (result)
    {
      goto LABEL_11;
    }

LABEL_17:

    goto LABEL_18;
  }

  result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = v1;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v16 = *(v14 + 32);
  }

  v17 = v16;

  v18 = [v17 diffuse];

  [v18 setContents:v29];
LABEL_18:
  a1 = [v5 nodeWithGeometry:{v8, v28}];

  v19 = String._bridgeToObjectiveC()();
  [a1 setName:v19];

  v1 = &selRef_setFrame_;
  [a1 setHidden:1];
  [a1 setOpacity:0.75];
  v3 = [v3 boxWithWidth:0.1 height:0.001 length:0.1 chamferRadius:0.0];
  v20 = [v3 materials];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_20;
    }

LABEL_25:

    goto LABEL_26;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v21 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_23;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v21 + 32);
LABEL_23:
    v23 = v22;

    v24 = [v23 diffuse];
    [v24 setContents:v29];

    [v23 setBlendMode:4];
LABEL_26:
    v25 = [v5 nodeWithGeometry:v3];

    v26 = String._bridgeToObjectiveC()();
    [v25 setName:v26];

    [v25 v1[1]];
    [v25 addChildNode:v6];
    [v25 addChildNode:a1];
    [v25 setOpacity:0.75];
    [v27 addChildNode:v25];

    return v25;
  }

LABEL_32:
  __break(1u);
  return result;
}

id sub_100182E3C(uint64_t *a1, Swift::Float a2, Swift::Float a3, Swift::Float a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = v4;
    sub_100018630(0, &qword_1004A2930);
    isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(a2, a3, a4, 1.0).super.isa;
    v13 = sub_1001828C4(isa);

    v14 = *(v8 + v5);
    *(v8 + v5) = v13;
    v7 = v13;

    v6 = 0;
  }

  v15 = v6;
  return v7;
}

id sub_100182F2C(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode] = 0;
  v6 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___arKitNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___arKitNode] = 0;
  v7 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___mlNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___mlNode] = 0;
  v8 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___lpNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___lpNode] = 0;
  v9 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___fallbackNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___fallbackNode] = 0;
  v10 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___previousNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___previousNode] = 0;
  v11 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___patchNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___patchNode] = 0;
  v12 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___adNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___adNode] = 0;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger_sceneView] = v13;
    *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger_planeSelector] = a3;
    v25.receiver = v3;
    v25.super_class = ObjectType;
    v14 = v13;
    v15 = a1;

    v16 = objc_msgSendSuper2(&v25, "init");
    v17 = String._bridgeToObjectiveC()();
    [v16 setName:v17];

    v18 = PlaneSelector.debugOptions.getter();
    [v16 setHidden:(*PlaneSelector.DebugOptions.showHitPoints.unsafeMutableAddressor() & ~v18) != 0];

    v19 = objc_opt_self();
    [v19 begin];
    v20 = [v14 scene];
    v21 = [v20 rootNode];

    [v21 addChildNode:v16];
    [v19 commit];
    sub_100018630(0, &unk_1004A7540);
    PlaneSelector.DebugOptions.keys.unsafeMutableAddressor();

    static NSUserDefaults.observe(observer:keys:)();
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v16;
}

void sub_100183318()
{
  v1 = v0;
  ARFrame.getHitRay(cameraPoint:)();
  v5 = v2;
  v3 = sub_100182594();
  [v3 setHidden:0];

  v4 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode;
  [*(v1 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode) setSimdWorldPosition:v5];
  v6 = *(v1 + v4);
  SCNNode.setForwardDirection(direction:)();
}

void sub_1001833B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 80);
  v93 = *(a5 + 64);
  v94 = v9;
  v95 = *(a5 + 96);
  v96 = *(a5 + 112);
  v10 = *(a5 + 16);
  v89 = *a5;
  v90 = v10;
  v11 = *(a5 + 48);
  v91 = *(a5 + 32);
  v92 = v11;
  v12 = *a4;
  v13 = *(a4 + 16);
  v14 = *(a4 + 48);
  v99 = *(a4 + 32);
  v100 = v14;
  v97 = v12;
  v98 = v13;
  v15 = *(a4 + 64);
  v16 = *(a4 + 80);
  v17 = *(a4 + 96);
  v104 = *(a4 + 112);
  v102 = v16;
  v103 = v17;
  v101 = v15;
  v18 = *a3;
  v19 = *(a3 + 16);
  v20 = *(a3 + 48);
  v107 = *(a3 + 32);
  v108 = v20;
  v105 = v18;
  v106 = v19;
  v21 = *(a3 + 64);
  v22 = *(a3 + 80);
  v23 = *(a3 + 96);
  v112 = *(a3 + 112);
  v110 = v22;
  v111 = v23;
  v109 = v21;
  v24 = *a2;
  v25 = *(a2 + 16);
  v26 = *(a2 + 48);
  v115 = *(a2 + 32);
  v116 = v26;
  v113 = v24;
  v114 = v25;
  v27 = *(a2 + 64);
  v28 = *(a2 + 80);
  v29 = *(a2 + 96);
  v120 = *(a2 + 112);
  v118 = v28;
  v119 = v29;
  v117 = v27;
  v30 = *a1;
  v31 = *(a1 + 16);
  v32 = *(a1 + 48);
  v123 = *(a1 + 32);
  v124 = v32;
  v121 = v30;
  v122 = v31;
  v33 = *(a1 + 64);
  v34 = *(a1 + 80);
  v35 = *(a1 + 96);
  v128 = *(a1 + 112);
  v126 = v34;
  v127 = v35;
  v125 = v33;
  v36 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___lpNode, 0.21961, 0.0078431, 0.8549);
  v37 = v36;
  if (*(a1 + 104))
  {
    v67 = *(a1 + 32);
    v72 = *(a1 + 16);
    v59 = *(a1 + 64);
    v62 = *(a1 + 48);
    v85 = v125;
    v86 = v126;
    v87 = v127;
    v88 = v128;
    v81 = v121;
    v82 = v122;
    v83 = v123;
    v84 = v124;
    sub_100103724(&v81, v80);
    [v37 setSimdWorldTransform:{*&v72, *&v67, *&v62, *&v59}];
    [v37 setHidden:0];
    [v37 setRenderingOrder:1];
    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 childNodeWithName:v38 recursively:0];

    if (v39)
    {
      [v39 setHidden:1];

      sub_100018F04(a1, &qword_1004A3E20);
    }

    else
    {

      sub_100018F04(a1, &qword_1004A3E20);
    }
  }

  else
  {
    [v36 setHidden:1];
    [v37 setRenderingOrder:1];
  }

  v40 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___arKitNode, 0.80784, 0.027451, 0.33333);
  v41 = v40;
  if (*(a2 + 104))
  {
    v68 = *(a2 + 32);
    v73 = *(a2 + 16);
    v60 = *(a2 + 64);
    v63 = *(a2 + 48);
    v85 = v117;
    v86 = v118;
    v87 = v119;
    v88 = v120;
    v81 = v113;
    v82 = v114;
    v83 = v115;
    v84 = v116;
    sub_100103724(&v81, v80);
    [v41 setSimdWorldTransform:{*&v73, *&v68, *&v63, *&v60}];
    [v41 setHidden:0];
    [v41 setRenderingOrder:1];
    v42 = String._bridgeToObjectiveC()();
    v43 = &off_100494000;
    v44 = [v41 childNodeWithName:v42 recursively:0];

    if (v44)
    {
      [v44 setHidden:1];

      sub_100018F04(a2, &qword_1004A3E20);
    }

    else
    {

      sub_100018F04(a2, &qword_1004A3E20);
    }
  }

  else
  {
    [v40 setHidden:1];
    [v41 setRenderingOrder:1];

    v43 = &off_100494000;
  }

  v45 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___mlNode, 0.46667, 0.76471, 0.26667);
  v46 = v45;
  if (*(a3 + 104))
  {
    v69 = *(a3 + 32);
    v74 = *(a3 + 16);
    v61 = *(a3 + 64);
    v64 = *(a3 + 48);
    v85 = v109;
    v86 = v110;
    v87 = v111;
    v88 = v112;
    v81 = v105;
    v82 = v106;
    v83 = v107;
    v84 = v108;
    sub_100103724(&v81, v80);
    [v46 setSimdWorldTransform:{*&v74, *&v69, *&v64, *&v61}];
    [v46 setHidden:0];
    [v46 setRenderingOrder:1];
    v47 = String._bridgeToObjectiveC()();
    v48 = [v46 v43[67]];

    if (v48)
    {
      [v48 setHidden:1];

      sub_100018F04(a3, &qword_1004A3E20);
    }

    else
    {

      sub_100018F04(a3, &qword_1004A3E20);
    }
  }

  else
  {
    [v45 setHidden:1];
    [v46 setRenderingOrder:1];
  }

  v49 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___fallbackNode, 1.0, 1.0, 1.0);
  [v49 setHidden:1];
  [v49 setRenderingOrder:1];

  v50 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___previousNode, 0.0, 0.0, 0.0);
  [v50 setHidden:1];
  [v50 setRenderingOrder:1];

  v51 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___patchNode, 1.0, 0.25279, 1.0);
  v52 = v51;
  if (*(a4 + 104))
  {
    v78 = *(a4 + 16);
    v70 = *(a4 + 48);
    v75 = *(a4 + 32);
    v65 = *(a4 + 64);
    v85 = v101;
    v86 = v102;
    v87 = v103;
    v88 = v104;
    v81 = v97;
    v82 = v98;
    v83 = v99;
    v84 = v100;
    sub_100103724(&v81, v80);
    [v52 setSimdWorldTransform:{*&v78, *&v75, *&v70, *&v65}];
    [v52 setHidden:0];
    [v52 setRenderingOrder:1];
    v53 = String._bridgeToObjectiveC()();
    v54 = [v52 v43[67]];

    [v54 setHidden:1];
    sub_100018F04(a4, &qword_1004A3E20);
  }

  else
  {
    [v51 setHidden:1];
    [v52 setRenderingOrder:1];
  }

  v55 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___adNode, 0.0, 0.99144, 1.0);
  v56 = v55;
  if (*(a5 + 104))
  {
    v79 = *(a5 + 16);
    v71 = *(a5 + 48);
    v76 = *(a5 + 32);
    v66 = *(a5 + 64);
    v85 = v93;
    v86 = v94;
    v87 = v95;
    v88 = v96;
    v81 = v89;
    v82 = v90;
    v83 = v91;
    v84 = v92;
    sub_100103724(&v81, v80);
    [v56 setSimdWorldTransform:{*&v79, *&v76, *&v71, *&v66}];
    [v56 setHidden:0];
    [v56 setRenderingOrder:1];
    v57 = String._bridgeToObjectiveC()();
    v58 = [v56 v43[67]];

    [v58 setHidden:1];
    sub_100018F04(a5, &qword_1004A3E20);
  }

  else
  {
    [v55 setHidden:1];
    [v56 setRenderingOrder:1];
  }
}

void sub_100183C78(uint64_t a1)
{
  v1 = *(a1 + 80);
  v47 = *(a1 + 64);
  v48 = v1;
  v49 = *(a1 + 96);
  v50 = *(a1 + 112);
  v2 = *(a1 + 16);
  v43 = *a1;
  v44 = v2;
  v3 = *(a1 + 48);
  v45 = *(a1 + 32);
  v46 = v3;
  v4 = *(a1 + 104);
  if (v4)
  {
    v6 = *(v4 + 48);
    v32 = *(a1 + 32);
    v33 = *(a1 + 16);
    v30 = *(a1 + 64);
    v31 = *(a1 + 48);
    if (v6 > 2)
    {
      if (v6 <= 4)
      {
        v7 = *(a1 + 80);
        v39 = *(a1 + 64);
        v40 = v7;
        v41 = *(a1 + 96);
        v42 = *(a1 + 112);
        v8 = *(a1 + 16);
        v35 = *a1;
        v36 = v8;
        v9 = *(a1 + 48);
        v37 = *(a1 + 32);
        v38 = v9;
        if (v6 == 3)
        {
          sub_100103724(&v35, v34);
          v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___lpNode;
          v11 = 0.21961;
          v12 = 0.0078431;
          v13 = 0.8549;
        }

        else
        {
          sub_100103724(&v35, v34);
          v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___previousNode;
          v11 = 0.0;
          v12 = 0.0;
          v13 = 0.0;
        }

        goto LABEL_16;
      }

      v17 = *(a1 + 80);
      v39 = *(a1 + 64);
      v40 = v17;
      v41 = *(a1 + 96);
      v42 = *(a1 + 112);
      v18 = *(a1 + 16);
      v35 = *a1;
      v36 = v18;
      v19 = *(a1 + 48);
      v37 = *(a1 + 32);
      v38 = v19;
      if (v6 == 5)
      {
        sub_100103724(&v35, v34);
        v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___patchNode;
        v12 = 0.25279;
        v11 = 1.0;
      }

      else
      {
        sub_100103724(&v35, v34);
        v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___adNode;
        v12 = 0.99144;
        v11 = 0.0;
      }

      goto LABEL_15;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        v23 = *(a1 + 80);
        v39 = *(a1 + 64);
        v40 = v23;
        v41 = *(a1 + 96);
        v42 = *(a1 + 112);
        v24 = *(a1 + 16);
        v35 = *a1;
        v36 = v24;
        v25 = *(a1 + 48);
        v37 = *(a1 + 32);
        v38 = v25;
        sub_100103724(&v35, v34);
        v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___fallbackNode;
        v11 = 1.0;
        v12 = 1.0;
LABEL_15:
        v13 = 1.0;
        goto LABEL_16;
      }

      v14 = *(a1 + 80);
      v39 = *(a1 + 64);
      v40 = v14;
      v41 = *(a1 + 96);
      v42 = *(a1 + 112);
      v15 = *(a1 + 16);
      v35 = *a1;
      v36 = v15;
      v16 = *(a1 + 48);
      v37 = *(a1 + 32);
      v38 = v16;
      sub_100103724(&v35, v34);
      v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___mlNode;
      v11 = 0.46667;
      v12 = 0.76471;
      v13 = 0.26667;
    }

    else
    {
      v20 = *(a1 + 80);
      v39 = *(a1 + 64);
      v40 = v20;
      v41 = *(a1 + 96);
      v42 = *(a1 + 112);
      v21 = *(a1 + 16);
      v35 = *a1;
      v36 = v21;
      v22 = *(a1 + 48);
      v37 = *(a1 + 32);
      v38 = v22;
      sub_100103724(&v35, v34);
      v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___arKitNode;
      v11 = 0.80784;
      v12 = 0.027451;
      v13 = 0.33333;
    }

LABEL_16:
    v26 = sub_100182E3C(v10, v11, v12, v13);
    sub_10018427C(a1, &v35);
    sub_10018427C(a1, &v35);
    v27 = v26;
    [v27 setSimdWorldTransform:{*&v33, *&v32, *&v31, *&v30}];
    [v27 setHidden:0];
    [v27 setRenderingOrder:-1];
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 childNodeWithName:v28 recursively:0];

    [v29 setHidden:0];
    sub_100018F04(a1, &qword_1004A3E20);
    sub_100018F04(a1, &qword_1004A3E20);
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    v38 = v46;
    sub_1001842EC(&v35);
  }
}

id sub_1001841C4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(v3);
  result = sub_100182F2C(a1, v8, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018427C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A3E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100184340()
{
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___arKitNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___mlNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___lpNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___fallbackNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___previousNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___patchNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___adNode) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001843FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = PlaneSelector.DebugOptions.keyForFeature.unsafeMutableAddressor();
    v7 = *v6;
    if (*(*v6 + 16))
    {

      v8 = sub_100198230(a1, a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        sub_100018630(0, &unk_1004A7540);
        v13 = PlaneSelector.debugOptions.getter();
        sub_100184580();
        v11 = static NSUserDefaults.update<A>(_:key:feature:)();
        PlaneSelector.debugOptions.setter();
        if (*PlaneSelector.DebugOptions.showHitPoints.unsafeMutableAddressor() == v10)
        {
          [v3 setHidden:{(v11 & 1) == 0, v13, v10}];
        }

        else if (*PlaneSelector.DebugOptions.showHitRay.unsafeMutableAddressor() == v10)
        {
          v12 = sub_100182594();
          [v12 setHidden:{(v11 & 1) == 0, v13, v10}];
        }
      }

      else
      {
      }
    }
  }
}

unint64_t sub_100184580()
{
  result = qword_1004ACED8;
  if (!qword_1004ACED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACED8);
  }

  return result;
}

void sub_1001845D4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018630(0, &qword_1004A3F00);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  if (a1)
  {
    [*(v2 + 16) pause];
  }

  v9 = [*(v2 + 32) layer];
  CALayer.pauseAnimations()();

  if (qword_1004A0180 != -1)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (qword_1004D4AD0)
  {
    v10 = qword_1004D4AD0;
    sub_1001815F0(0, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_10018478C(__int16 a1)
{
  v6 = sub_100185018();
  if ([objc_opt_self() jasperAvailable])
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = [v2 kPersonSegmentationAlwaysOn];

    if ((v3 & 1) != 0 || *NSUserDefaults.recordReplayOption.unsafeMutableAddressor() - 1 <= 3)
    {
      v4 = [v6 frameSemantics];
    }

    else
    {
      v4 = [v6 frameSemantics];
      if ((a1 & 0x100) == 0)
      {
        v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
        goto LABEL_6;
      }
    }

    v5 = v4 | 1;
LABEL_6:
    [v6 setFrameSemantics:v5];
  }

  sub_100184898(a1 & 1, v6);
}

void sub_100184898(char a1, void *a2)
{
  v3 = v2;
  v44 = a2;
  v5 = type metadata accessor for URL();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  v9 = __chkstk_darwin(v8);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = (&v41 - v12);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018630(0, &qword_1004A3F00);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v43 = v3;
    if (qword_1004A0260 == -1)
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
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v45._countAndFlagsBits = 0xD000000000000014;
  v45._object = 0x800000010040B190;
  v19 = a1;
  if (a1)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (a1)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  v22 = v21;
  String.append(_:)(*&v20);

  Log.default(_:isPrivate:)(v45, 0);

  v23 = NSUserDefaults.recordReplayOption.unsafeMutableAddressor();
  if (*v23 - 1 > 1)
  {
    goto LABEL_15;
  }

  if (qword_1004A0180 != -1)
  {
    goto LABEL_37;
  }

  v24 = qword_1004D4AD0;
  if (!qword_1004D4AD0)
  {
    goto LABEL_38;
  }

LABEL_12:
  if ((*(v24 + qword_1004D4F70) & 1) == 0)
  {
    v25 = v23;
    v26 = qword_1004ACA08;
    swift_beginAccess();
    sub_100085F70(v24 + v26, v13);
    if (swift_getEnumCaseMultiPayload() - 1 >= 2)
    {
      sub_100085FD4(v13);
      if (qword_1004D4AD0)
      {
        v38 = *v25;
        v39 = qword_1004D4AD0;
        RecordReplayOption.recordFile.getter();
        v34 = sub_100180C7C(v44, v7, v38, 0, 0);

        (*(v41 + 8))(v7, v42);
        v29 = v19;
        goto LABEL_25;
      }

      goto LABEL_41;
    }

    v23 = v25;
  }

LABEL_15:
  v27 = qword_1004A0180;
  if (*v23 - 3 <= 1)
  {
    if (qword_1004A0180 != -1)
    {
      goto LABEL_39;
    }

    v28 = qword_1004D4AD0;
    if (qword_1004D4AD0)
    {
      goto LABEL_18;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  while (1)
  {
    v29 = v19;
    if (v27 != -1)
    {
      v23 = swift_once();
      v31 = qword_1004D4AD0;
      if (qword_1004D4AD0)
      {
        goto LABEL_23;
      }

      goto LABEL_36;
    }

    do
    {
      v31 = qword_1004D4AD0;
      if (qword_1004D4AD0)
      {
LABEL_23:
        v32 = v31;
        v33 = sub_100180400(v44);
        goto LABEL_24;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      v40 = v23;
      swift_once();
      v23 = v40;
      v24 = qword_1004D4AD0;
      if (qword_1004D4AD0)
      {
        goto LABEL_12;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      v23 = swift_once();
      v28 = qword_1004D4AD0;
      if (!qword_1004D4AD0)
      {
        goto LABEL_40;
      }

LABEL_18:
      v29 = v19;
    }

    while ((*(v28 + qword_1004D4F78) & 1) != 0);
    v30 = qword_1004ACA08;
    swift_beginAccess();
    sub_100085F70(v28 + v30, v11);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      break;
    }

    v27 = qword_1004A0180;
  }

  sub_100085FD4(v11);
  if (!qword_1004D4AD0)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v29 = v19;
  v32 = qword_1004D4AD0;
  v33 = sub_100180A08(v44);
LABEL_24:
  v34 = v33;

LABEL_25:
  v35 = v43;
  v36 = [*(v43 + 32) layer];
  CALayer.resumeAnimations()();

  if (v29)
  {
    *(v35 + 24) = 1;
    v37 = 3;
  }

  else
  {
    v37 = 0;
  }

  [*(v35 + 16) runWithConfiguration:v34 options:v37];
}

uint64_t sub_100184E50()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for Session.Configuration(unsigned __int16 *a1, unsigned int a2)
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

_WORD *storeEnumTagSinglePayload for Session.Configuration(_WORD *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100185018()
{
  v0 = [objc_allocWithZone(ARWorldTrackingConfiguration) init];
  [v0 setPlaneDetection:3];
  v1 = v0;
  [v1 setLightEstimationEnabled:1];
  [v1 setMinVergenceAngle:1.5];
  [v1 setDisableOcclusionForPersonSegmentation:1];
  sub_100018630(0, &qword_1004A1930);
  if ((static UIDevice.hasHWAcceleratedFeatureDetection()() & 1) == 0 && *MeasureCore.isTrackingVGAEnabled.unsafeMutableAddressor() == 1)
  {
    v2 = String._bridgeToObjectiveC()();
    [v1 setSlamConfiguration:v2];
  }

  v3 = objc_opt_self();
  [v1 setMlModelEnabled:{objc_msgSend(v3, "hasAppleNeuralEngine")}];
  if ([v3 jasperAvailable])
  {
    [v1 setFrameSemantics:8];
    [v1 setAllowCameraInMultipleForegroundAppLayout:1];
    if (static UIDevice.isIPhone()())
    {
      [v1 setLowQosSchedulingEnabled:1];
    }
  }

  if ((static UIDevice.shouldLockFramerate()() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_100018630(0, &qword_1004A9360);
  v4 = [swift_getObjCClassFromMetadata() supportedVideoFormats];
  sub_100018630(0, &qword_1004ACF90);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 2)
    {
      goto LABEL_10;
    }

LABEL_15:

    goto LABEL_16;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 2)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v7 = *(v5 + 40);
LABEL_13:
    v8 = v7;

    [v1 setVideoFormat:v8];

LABEL_16:
    return v1;
  }

  __break(1u);
  return result;
}

Class sub_1001852C8()
{
  swift_beginAccess();
  sub_100018630(0, &qword_1004AD150);

  v0.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v0.super.isa;
}

uint64_t sub_10018535C(uint64_t a1)
{
  sub_100018630(0, &qword_1004AD150);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = qword_1004ACFA0;
  swift_beginAccess();
  *(a1 + v3) = v2;
}

id sub_1001853E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[qword_1004ACF98] = 0;
  *&v4[qword_1004ACFA0] = _swiftEmptyArrayStorage;
  v11 = qword_1004ACFA8;
  v12 = objc_opt_self();
  *&v5[v11] = [v12 whiteColor];
  v13 = qword_1004ACFB0;
  *&v5[v13] = [v12 systemYellowColor];
  *&v5[qword_1004ACFB8] = 0x4042000000000000;
  *&v5[qword_1004ACFC0] = 0x4024000000000000;
  v14 = qword_1004ACFC8;
  v15 = sub_10000F974(&unk_1004AFC00);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v17 = qword_1004D5058;
  v18 = *(v15 + 272);

  *&v5[v14] = v18(KeyPath, v17);
  v19 = qword_1004ACFD0;
  sub_10000F974(&qword_1004AD138);
  swift_getKeyPath();
  *&v5[v19] = MutableStateValue.__allocating_init(_:_:)();
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v12 clearColor];
  [v20 setBackgroundColor:v21];

  v22 = [v20 layer];
  [v22 setCornerRadius:20.0];

  v23 = [v20 layer];
  [v23 setMasksToBounds:1];

  v24 = [v20 layer];
  [v24 setCornerCurve:kCACornerCurveContinuous];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100185C4C();
  sub_1001858A8();
  v25 = [objc_opt_self() effectWithStyle:17];
  v26 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v25];
  [v20 bounds];
  [v26 setFrame:?];
  [v26 setAutoresizingMask:18];
  [v20 insertSubview:v26 atIndex:0];

  [v20 layoutIfNeeded];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:1];

  return v20;
}

uint64_t sub_1001857D8()
{

  StateValue.ifUpdated(_:)();
}

_BYTE *sub_10018583C(_BYTE *result, char *a2)
{
  v2 = *result;
  if (!*result)
  {
    v3 = 0;
LABEL_7:
    *&a2[qword_1004ACF98] = v3;
    return [a2 updateHighlightState];
  }

  if (v2 == 1)
  {
    v3 = 1;
    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1001858A8()
{
  v1 = v0;
  v2 = qword_1004ACFA0;
  swift_beginAccess();
  if (*&v1[v2] >> 62)
  {
    sub_100018630(0, &qword_1004A7550);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100018630(0, &qword_1004A7550);
  }

  v3 = objc_allocWithZone(UIStackView);
  sub_100018630(0, &qword_1004A7550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithArrangedSubviews:isa];

  [v5 setAxis:1];
  [v5 setAlignment:0];
  [v5 setDistribution:1];
  [v5 setSpacing:0.0];
  v6 = v5;
  [v1 addSubview:v6];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 topAnchor];
  v8 = [v1 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:6.0];

  [v9 setActive:1];
  v10 = [v6 bottomAnchor];

  v11 = [v1 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-6.0];

  [v12 setActive:1];
  v13 = [v6 leftAnchor];

  v14 = [v1 leftAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:10.0];

  [v15 setActive:1];
  v16 = [v6 rightAnchor];

  v17 = [v1 rightAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-10.0];

  [v18 setActive:1];
}

void sub_100185C4C()
{
  v1 = v0;
  v2 = qword_1004ACFA0;
  swift_beginAccess();
  *&v0[v2] = _swiftEmptyArrayStorage;

  v3 = [v0 subviews];
  sub_100018630(0, &qword_1004A7550);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v10 = objc_opt_self();
  v11 = "changeSelectionWithSender:";
  v12 = *&v1[qword_1004ACFA8];
  if (qword_1004A03D0 != -1)
  {
    swift_once();
  }

  v13 = 0;
  if (byte_1004D4FA0 != 1)
  {
    goto LABEL_21;
  }

  if (qword_1004A03C0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    if (!*(qword_1004D4F90 + 16))
    {
      __break(1u);
LABEL_41:
      swift_once();
      goto LABEL_22;
    }

    sub_10019C35C(v13);
    if (v14)
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_21:
    if (qword_1004A03B0 != -1)
    {
      goto LABEL_41;
    }

LABEL_22:
    if (!*(qword_1004D4F80 + 16))
    {
      break;
    }

    sub_10019C35C(v13);
    if ((v15 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_24:

    sub_10018616C(v13);
    v13 = v16;
    v17 = [v10 buttonWithType:1];
    [v17 setImage:v13 forState:0];
    v18 = String._bridgeToObjectiveC()();

    [v17 setTitle:v18 forState:0];

    [v17 addTarget:v1 action:v11 forControlEvents:64];
    [v17 setTitleColor:v12 forState:0];
    v10 = &off_100494000;
    [v17 setTintColor:v12];
    v19 = [v17 titleLabel];
    if (v19)
    {
      v20 = v19;
      v11 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption2 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      [v20 setFont:v11];
    }

    sub_100186350(2.0, 10.0);
    swift_beginAccess();
    v12 = v17;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    swift_beginAccess();
    v21 = *&v1[v2];
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_38;
      }

      v22 = *(v21 + 32);
    }

    v13 = v22;
    swift_endAccess();
    v23 = *&v1[qword_1004ACFB0];
    [v13 setTitleColor:v23 forState:0];

    swift_beginAccess();
    v24 = *&v1[v2];
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_34;
    }

    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(v24 + 32);
LABEL_34:
      v26 = v25;
      swift_endAccess();
      [v26 setTintColor:v23];

      return;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_10018616C(uint64_t a1)
{
  if (qword_1004A03D0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  if (byte_1004D4FA0 != 1)
  {
    goto LABEL_10;
  }

  if (qword_1004A03C8 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  if (*(qword_1004D4F98 + 16))
  {
    sub_10019C35C(a1);
    if ((v1 & 1) == 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v2 = String._bridgeToObjectiveC()();

    v3 = [objc_opt_self() imageNamed:v2];

    if (v3)
    {
      return;
    }

    __break(1u);
LABEL_10:
    if (qword_1004A03B8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_16:
  v9 = a1;
  swift_once();
  a1 = v9;
LABEL_11:
  if (!*(qword_1004D4F88 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_10019C35C(a1);
  if ((v4 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() imageNamed:v5];

  if (!v6)
  {
LABEL_20:
    __break(1u);
  }
}

void sub_100186350(double a1, double a2)
{
  v5 = [v2 imageView];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 image];

    if (v7)
    {
      [v7 size];
      v9 = v8;
      v11 = v10;

      v12 = [v2 titleLabel];
      if (v12)
      {
        v13 = v12;
        v33 = [v12 text];

        if (v33)
        {
          v14 = [v2 titleLabel];
          if (v14 && (v15 = v14, v16 = [v14 font], v15, v16))
          {
            v17 = [v2 effectiveUserInterfaceLayoutDirection];
            v18 = -v9;
            if (v17 == 1)
            {
              v19 = -v9;
            }

            else
            {
              v19 = 0.0;
            }

            if (v17 == 1)
            {
              v18 = 0.0;
            }

            v20 = v17;
            [v2 setTitleEdgeInsets:{0.0, v18, -(v11 + a1), v19, v33}];
            sub_10000F974(&qword_1004A7288);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1003D5360;
            *(inited + 32) = NSFontAttributeName;
            *(inited + 64) = sub_100018630(0, &qword_1004A7290);
            *(inited + 40) = v16;
            v22 = NSFontAttributeName;
            v23 = v16;
            sub_100199F34(inited);
            swift_setDeallocating();
            sub_100018F04(inited + 32, &qword_1004A7298);
            type metadata accessor for Key(0);
            sub_100187410();
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v34 sizeWithAttributes:isa];
            v26 = v25;
            v28 = v27;

            if (v20 == 1)
            {
              v29 = 0.0;
            }

            else
            {
              v29 = -v26;
            }

            if (v20 == 1)
            {
              v30 = -v26;
            }

            else
            {
              v30 = 0.0;
            }

            v31 = v28 + a1;
            [v2 setImageEdgeInsets:{-v31, v30, 0.0, v29}];
            if (v26 >= v9)
            {
              v32 = v9;
            }

            else
            {
              v32 = v26;
            }

            [v2 setContentEdgeInsets:{v31 * 0.5 + a2, a2 - v32 * 0.5, v31 * 0.5 + a2, a2 - v32 * 0.5}];
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_10018665C()
{
  v1 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v1);
  v21 = (v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = qword_1004ACFA0;
  swift_beginAccess();
  v4 = *&v0[v3];
  v22 = v0;
  v20[1] = v1;
  if (v4 >> 62)
  {
LABEL_25:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
  }

  for (i = 0; ; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_100018630(0, &qword_1004AE0D0);
    result = static NSObject.== infix(_:_:)();
    if (result)
    {
      break;
    }

    if (v9 == v5)
    {
    }
  }

  if (i)
  {
  }

  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  if (qword_1004D4AD0)
  {
    v11 = qword_1004D4AD0;

    v12 = qword_1004ACA08;
    swift_beginAccess();
    v13 = v11 + v12;
    v14 = v21;
    sub_100085F70(v13, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = *v14;
      v16 = sub_1000E0CE8();

      sub_100072394(7, 0, 0, 1);
    }

    else
    {

      sub_100085FD4(v14);
    }

    v17 = v22;
    *(swift_allocObject() + 16) = 0;

    StateValue.mutateImmediatelyNotifyAsync(_:)();

    *&v17[qword_1004ACF98] = 0;
    [v17 updateHighlightState];
    v18 = *(**&v17[qword_1004ACFD0] + 400);

    v19 = v18(v23);
    sub_10008E8B4(0);
    v19(v23, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001869D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10018665C();
}

uint64_t sub_100186A38()
{
  v1 = qword_1004ACFA0;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = qword_1004ACFA8;
    v13 = qword_1004ACF98;
    v4 = qword_1004ACFB0;

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = v12;
      if (j == *(v0 + v13))
      {
        v9 = v4;
      }

      v10 = *(v0 + v9);
      [v6 setTitleColor:v10 forState:0];
      [v7 setTintColor:v10];

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void sub_100186B98(void *a1)
{
  v1 = a1;
  sub_100186A38();
}

uint64_t sub_100186BE0()
{
}

uint64_t sub_100186C50(uint64_t a1)
{
}

uint64_t type metadata accessor for ModeControl()
{
  result = qword_1004AD000;
  if (!qword_1004AD000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100186DBC()
{
  result = sub_100186DDC();
  qword_1004D4F80 = result;
  return result;
}

void *sub_100186DDC()
{
  sub_10000F974(&qword_1004AD140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5720;
  *(inited + 32) = 0;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v16._object = 0x800000010040B2C0;
  v3._countAndFlagsBits = 0x5455415F45444F4DLL;
  v3._object = 0xE90000000000004FLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000020;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v16);

  *(inited + 40) = v5;
  *(inited + 56) = 1;
  v6 = [v1 mainBundle];
  v17._object = 0x800000010040B2F0;
  v7._countAndFlagsBits = 0x4E454C5F45444F4DLL;
  v7._object = 0xEB00000000485447;
  v17._countAndFlagsBits = 0xD000000000000022;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v17);

  *(inited + 64) = v9;
  *(inited + 80) = 2;
  v10 = [v1 mainBundle];
  v18._object = 0x800000010040B320;
  v11._countAndFlagsBits = 0x5255535F45444F4DLL;
  v11._object = 0xEC00000045434146;
  v18._countAndFlagsBits = 0xD000000000000023;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v18);

  *(inited + 88) = v13;
  v14 = sub_10019AFDC(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AD148);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_10018700C()
{
  v0 = sub_10019AFDC(&off_100465550);
  sub_10000F974(&qword_1004AD148);
  result = swift_arrayDestroy();
  qword_1004D4F88 = v0;
  return result;
}

uint64_t sub_100187068()
{
  sub_10000F974(&qword_1004AD140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5360;
  *(inited + 32) = 0;
  v1 = [objc_opt_self() mainBundle];
  v7._object = 0x800000010040B290;
  v2._countAndFlagsBits = 0x41454D5F45444F4DLL;
  v2._object = 0xEC00000045525553;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000023;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v7);

  *(inited + 40) = v4;
  v5 = sub_10019AFDC(inited);
  swift_setDeallocating();
  result = sub_100018F04(inited + 32, &qword_1004AD148);
  qword_1004D4F90 = v5;
  return result;
}

uint64_t sub_100187188()
{
  v0 = sub_10019AFDC(&off_100465518);
  result = sub_100018F04(&unk_100465538, &qword_1004AD148);
  qword_1004D4F98 = v0;
  return result;
}

void sub_1001871D8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 showsOnlyYukonEModes];

  byte_1004D4FA0 = v1;
}

void sub_100187234()
{
  v1 = v0;
  swift_getObjectType();
  *(v0 + qword_1004ACF98) = 0;
  *(v0 + qword_1004ACFA0) = _swiftEmptyArrayStorage;
  v2 = qword_1004ACFA8;
  v3 = objc_opt_self();
  *(v1 + v2) = [v3 whiteColor];
  v4 = qword_1004ACFB0;
  *(v1 + v4) = [v3 systemYellowColor];
  *(v1 + qword_1004ACFB8) = 0x4042000000000000;
  *(v1 + qword_1004ACFC0) = 0x4024000000000000;
  v5 = qword_1004ACFC8;
  v6 = sub_10000F974(&unk_1004AFC00);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v6 + 272);

  *(v1 + v5) = v9(KeyPath, v8);
  v10 = qword_1004ACFD0;
  sub_10000F974(&qword_1004AD138);
  swift_getKeyPath();
  *(v1 + v10) = MutableStateValue.__allocating_init(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100187410()
{
  result = qword_1004A72A0;
  if (!qword_1004A72A0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A72A0);
  }

  return result;
}

uint64_t sub_10018747C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483643)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 4;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ARCamera.TrackingState();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_10018754C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483643)
  {
    *result = (a2 + 3);
  }

  else
  {
    v7 = type metadata accessor for ARCamera.TrackingState();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SessionState()
{
  result = qword_1004AD1B0;
  if (!qword_1004AD1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100187640()
{
  result = type metadata accessor for ARCamera.TrackingState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001876BC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001876D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100187728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_100187784(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1001877B4()
{
  result = Contexts.UIKit.init()();
  qword_1004D4FA8 = result;
  return result;
}

id sub_1001877D4@<X0>(void *a1@<X8>)
{
  if (qword_1004A03D8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4FA8;
  *a1 = qword_1004D4FA8;

  return v2;
}

uint64_t sub_100187844(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }

      return static ARCamera.TrackingState.== infix(_:_:)();
    }

    if (v2 == 3)
    {
      if (v3 != 3)
      {
        return 0;
      }

      return static ARCamera.TrackingState.== infix(_:_:)();
    }
  }

  else
  {
    if (!v2)
    {
      if (!v3)
      {
        return static ARCamera.TrackingState.== infix(_:_:)();
      }

      return 0;
    }

    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }

      return static ARCamera.TrackingState.== infix(_:_:)();
    }
  }

  if (v3 >= 4)
  {
    return static ARCamera.TrackingState.== infix(_:_:)();
  }

  return 0;
}

BOOL sub_1001878B8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }

    return v3 > 3;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      return v3 == 3;
    }

    return v3 > 3;
  }

  return v3 == 2;
}

unint64_t sub_100187934(uint64_t a1)
{
  result = sub_10018795C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018795C()
{
  result = qword_1004AD210;
  if (!qword_1004AD210)
  {
    type metadata accessor for SessionState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD210);
  }

  return result;
}

__n128 sub_1001879B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1001879C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_100187A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100187A64(unint64_t a1, id *a2, uint64_t a3, void *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = v9;
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = [*a2 childNodes];
      sub_100018630(0, &qword_1004A1318);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v13 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v14 == a3)
      {
        v15 = [objc_allocWithZone(SCNNode) init];
        v16 = *a2;
        *a2 = v15;
        v17 = v15;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      [*a2 addChildNode:v10];

      if (v11 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

unint64_t sub_100187C54@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018C804(*a1);
  *a2 = result;
  return result;
}

void sub_100187CB8(void *a1)
{
  v281 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v274 = *(v1 - 8);
  v275 = v1;
  __chkstk_darwin(v1);
  v273 = &v244 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v268 = *(v3 - 8);
  v269 = v3;
  __chkstk_darwin(v3);
  v267 = &v244 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v265);
  v266 = &v244 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v272 = *(v6 - 8);
  __chkstk_darwin(v6);
  v271 = &v244 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() shaderWithFileNamed:v8];

  v10 = qword_1004D4FB0;
  qword_1004D4FB0 = v9;
  v11 = v9;

  if (v11)
  {
    sub_10000F974(&unk_1004A3F10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1003D56B0;
    v13 = objc_allocWithZone(SKAttribute);
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 initWithName:v14 type:2];

    *(v12 + 32) = v15;
    sub_100018630(0, &qword_1004AD2C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setAttributes:isa];

    v17 = sub_10018C814();
    v19 = v18;
    v289 = sub_10018C814();
    v286 = v20;
    v287 = sub_10018C814();
    v278 = v21;
    v22 = sub_10018C814();
    v276 = v23;
    v277 = v22;
    v24 = [objc_allocWithZone(SCNMaterial) init];
    v291 = sub_10000F974(&qword_1004AD2C8);
    inited = swift_initStackObject();
    v290 = xmmword_1003D5360;
    *(inited + 16) = xmmword_1003D5360;
    *(inited + 32) = SCNShaderModifierEntryPointGeometry;
    v282 = v17;
    *(inited + 40) = v17;
    *(inited + 48) = v19;
    v26 = SCNShaderModifierEntryPointGeometry;
    v284 = v19;

    sub_10019B0F0(inited);
    swift_setDeallocating();
    sub_10018C98C(inited + 32);
    type metadata accessor for SCNShaderModifierEntryPoint(0);
    v28 = v27;
    v29 = sub_10018CA6C(&qword_1004A0C60, type metadata accessor for SCNShaderModifierEntryPoint);
    v292 = v28;
    v293 = v29;
    v30 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v24 setShaderModifiers:v30];

    v31 = [v24 diffuse];
    if (qword_1004A0648 != -1)
    {
      swift_once();
    }

    [v31 setContents:qword_1004D51C0];

    v32 = [v24 emission];
    if (qword_1004A0670 != -1)
    {
      swift_once();
    }

    v264 = v6;
    [v32 setContents:qword_1004D51E8];

    if (qword_1004A03E0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    v280 = v33;
    sub_1000BCA18(v33, 0, isUniquelyReferenced_nonNull_native);
    off_1004AD218 = v301;
    swift_endAccess();
    v35 = [objc_allocWithZone(SCNMaterial) init];
    v36 = swift_initStackObject();
    *(v36 + 16) = v290;
    *(v36 + 32) = v26;
    *(v36 + 40) = v282;
    *(v36 + 48) = v284;

    sub_10019B0F0(v36);
    swift_setDeallocating();
    sub_10018C98C(v36 + 32);
    v37 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v35 setShaderModifiers:v37];

    v283 = objc_opt_self();
    v38 = [v283 jasperAvailable];
    swift_beginAccess();
    v39 = v35;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v39, 4, v40);
    off_1004AD218 = v301;
    swift_endAccess();
    if (v38)
    {
      if (qword_1004A03E8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v41 = v39;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v301 = off_1004AD220;
      off_1004AD220 = 0x8000000000000000;
      sub_1000BCA18(v41, 4, v42);
      off_1004AD220 = v301;
      swift_endAccess();
    }

    v263 = v39;
    v43 = [objc_allocWithZone(SCNMaterial) init];
    v44 = swift_initStackObject();
    *(v44 + 16) = v290;
    *(v44 + 32) = v26;
    v45 = v286;
    *(v44 + 40) = v289;
    *(v44 + 48) = v45;
    v285 = v26;

    sub_10019B0F0(v44);
    swift_setDeallocating();
    sub_10018C98C(v44 + 32);
    v46 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v43 setShaderModifiers:v46];

    [v43 setLocksAmbientWithDiffuse:1];
    swift_beginAccess();
    v47 = v43;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    v279 = v47;
    sub_1000BCA18(v47, 1, v48);
    off_1004AD218 = v301;
    swift_endAccess();
    v49 = [objc_allocWithZone(SCNMaterial) init];
    v50 = swift_initStackObject();
    *(v50 + 16) = v290;
    *(v50 + 32) = v285;
    *(v50 + 40) = v289;
    *(v50 + 48) = v45;

    sub_10019B0F0(v50);
    swift_setDeallocating();
    sub_10018C98C(v50 + 32);
    v51 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v49 setShaderModifiers:v51];

    [v49 setLocksAmbientWithDiffuse:1];
    LODWORD(v51) = [v283 jasperAvailable];
    swift_beginAccess();
    v52 = v49;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v52, 5, v53);
    off_1004AD218 = v301;
    swift_endAccess();
    if (v51)
    {
      if (qword_1004A03E8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v54 = v52;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v301 = off_1004AD220;
      off_1004AD220 = 0x8000000000000000;
      sub_1000BCA18(v54, 5, v55);
      off_1004AD220 = v301;
      swift_endAccess();
    }

    v262 = v52;
    v56 = [objc_allocWithZone(SCNMaterial) init];
    v57 = swift_initStackObject();
    v288 = xmmword_1003D5730;
    *(v57 + 16) = xmmword_1003D5730;
    *(v57 + 32) = v285;
    v58 = v278;
    *(v57 + 40) = v287;
    *(v57 + 48) = v58;
    v59 = v276;
    v60 = v277;
    *(v57 + 56) = SCNShaderModifierEntryPointFragment;
    *(v57 + 64) = v60;
    *(v57 + 72) = v59;
    v61 = SCNShaderModifierEntryPointFragment;
    sub_10019B0F0(v57);
    swift_setDeallocating();
    v287 = sub_10000F974(&qword_1004AD2D0);
    swift_arrayDestroy();
    v62 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v56 setShaderModifiers:v62];

    [v56 setLocksAmbientWithDiffuse:1];
    swift_beginAccess();
    v63 = v56;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    v278 = v63;
    sub_1000BCA18(v63, 2, v64);
    off_1004AD218 = v301;
    swift_endAccess();
    v65 = [objc_allocWithZone(SCNMaterial) init];
    [v65 setDoubleSided:1];
    [v65 setWritesToDepthBuffer:0];
    swift_beginAccess();
    v66 = v65;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    v277 = v66;
    sub_1000BCA18(v66, 3, v67);
    off_1004AD218 = v301;
    swift_endAccess();
    if (![v283 jasperAvailable])
    {

LABEL_35:
      v230 = [objc_allocWithZone(SCNScene) init];
      v293 = v230;
      v231 = v281;
      v232 = [objc_opt_self() rendererWithDevice:objc_msgSend(v281 options:{"device"), 0}];
      swift_unknownObjectRelease();
      [v232 setScene:v230];
      [v232 setAutoenablesDefaultLighting:{objc_msgSend(v231, "autoenablesDefaultLighting")}];
      sub_100018630(0, &qword_1004A3F00);
      v233 = v271;
      static DispatchQoS.unspecified.getter();
      v294[0] = _swiftEmptyArrayStorage;
      sub_10018CA6C(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_10000F974(&qword_1004ABEE0);
      sub_10001D47C(&qword_1004A4030, &qword_1004ABEE0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v268 + 104))(v267, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v269);
      v234 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v235 = swift_allocObject();
      v236 = v270;
      v235[2] = v231;
      v235[3] = v236;
      v237 = v293;
      v235[4] = v293;
      v235[5] = v232;
      v235[6] = v234;
      v296 = sub_10018CA44;
      v297 = v235;
      v294[0] = _NSConcreteStackBlock;
      v294[1] = 1107296256;
      v294[2] = sub_100041180;
      v295 = &unk_100470FD0;
      v238 = _Block_copy(v294);
      v239 = v231;
      v293 = v237;
      v240 = v232;
      v241 = v234;
      static DispatchQoS.unspecified.getter();
      v301 = _swiftEmptyArrayStorage;
      sub_10018CA6C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000F974(&unk_1004A3D80);
      sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
      v242 = v273;
      v243 = v275;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v238);

      (*(v274 + 8))(v242, v243);
      (*(v272 + 8))(v233, v264);

      return;
    }

    v261 = v61;
    v68 = sub_10018C814();
    v259 = v69;
    v260 = v68;
    v70 = sub_10018C814();
    v253 = v71;
    v254 = v70;
    v72 = sub_10018C814();
    v247 = v73;
    v248 = v72;
    v74 = sub_10018C814();
    v249 = v75;
    v250 = v74;
    v76 = sub_10018C814();
    v251 = v77;
    v252 = v76;
    v244 = sub_10018C814();
    v79 = v78;
    v80 = sub_10018C814();
    v82 = v81;
    v83 = sub_10018C814();
    v245 = v84;
    v246 = v83;
    v85 = sub_10018C814();
    v255 = v86;
    v256 = v85;
    v87 = sub_10018C814();
    v257 = v88;
    v258 = v87;
    v283 = sub_10018C814();
    v276 = v89;
    v90 = objc_opt_self();
    v91 = [v90 standardUserDefaults];
    v92 = [v91 isLineOcclusionEnabled];

    if (v92)
    {
      v93 = swift_allocObject();
      v95 = v285;
      v94 = v286;
      *(v93 + 32) = v285;
      *(v93 + 16) = v288;
      *(v93 + 40) = v289;
      *(v93 + 48) = v94;
      v96 = v261;
      *(v93 + 56) = v261;
      *(v93 + 64) = v80;
      *(v93 + 72) = v82;
      v97 = v95;

      v98 = v96;
      sub_10019B0F0(v93);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    else
    {

      v99 = swift_initStackObject();
      *(v99 + 16) = v290;
      v95 = v285;
      v100 = v286;
      *(v99 + 32) = v285;
      *(v99 + 40) = v289;
      *(v99 + 48) = v100;
      v101 = v95;

      sub_10019B0F0(v99);
      swift_setDeallocating();
      sub_10018C98C(v99 + 32);
    }

    v102 = Dictionary._bridgeToObjectiveC()().super.isa;

    v103 = v279;
    [v279 setShaderModifiers:v102];

    swift_beginAccess();
    v104 = v103;
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v104, 1, v105);
    off_1004AD218 = v301;
    swift_endAccess();
    if (qword_1004A03E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v106 = v104;
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v106, 1, v107);
    off_1004AD220 = v301;
    swift_endAccess();
    v108 = [v90 standardUserDefaults];
    LODWORD(v106) = [v108 isPointOcclusionEnabled];

    if (v106)
    {
      v109 = swift_allocObject();
      *(v109 + 32) = v95;
      *(v109 + 16) = v288;
      v110 = v284;
      *(v109 + 40) = v282;
      *(v109 + 48) = v110;
      v111 = v261;
      v112 = v244;
      *(v109 + 56) = v261;
      *(v109 + 64) = v112;
      *(v109 + 72) = v79;
      v113 = v95;
      v114 = v111;
      sub_10019B0F0(v109);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    else
    {

      v115 = swift_initStackObject();
      *(v115 + 16) = v290;
      *(v115 + 32) = v95;
      v116 = v284;
      *(v115 + 40) = v282;
      *(v115 + 48) = v116;
      v117 = v95;
      sub_10019B0F0(v115);
      swift_setDeallocating();
      sub_10018C98C(v115 + 32);
    }

    v118 = Dictionary._bridgeToObjectiveC()().super.isa;

    v119 = v280;
    [v280 setShaderModifiers:v118];

    swift_beginAccess();
    v120 = v119;
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v120, 0, v121);
    off_1004AD218 = v301;
    swift_endAccess();
    swift_beginAccess();
    v122 = v120;
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v122, 0, v123);
    off_1004AD220 = v301;
    swift_endAccess();
    v124 = [objc_allocWithZone(SCNMaterial) init];
    v125 = swift_initStackObject();
    *(v125 + 16) = v290;
    *(v125 + 32) = v95;
    v126 = v286;
    *(v125 + 40) = v289;
    *(v125 + 48) = v126;
    v289 = v95;
    sub_10019B0F0(v125);
    swift_setDeallocating();
    sub_10018C98C(v125 + 32);
    v127 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v124 setShaderModifiers:v127];

    swift_beginAccess();
    v128 = v124;
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v128, 6, v129);
    off_1004AD218 = v301;
    swift_endAccess();
    swift_beginAccess();
    v130 = v128;
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    v285 = v130;
    sub_1000BCA18(v130, 6, v131);
    off_1004AD220 = v301;
    swift_endAccess();
    v132 = [objc_allocWithZone(SCNMaterial) init];
    v133 = swift_initStackObject();
    *(v133 + 16) = v290;
    v134 = v261;
    *(v133 + 32) = v261;
    v135 = v255;
    *(v133 + 40) = v256;
    *(v133 + 48) = v135;
    v136 = v134;
    sub_10019B0F0(v133);
    swift_setDeallocating();
    sub_10018C98C(v133 + 32);
    v137 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v132 setShaderModifiers:v137];

    swift_beginAccess();
    v138 = v132;
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v138, 7, v139);
    off_1004AD218 = v301;
    swift_endAccess();
    swift_beginAccess();
    v140 = v138;
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    v284 = v140;
    sub_1000BCA18(v140, 7, v141);
    off_1004AD220 = v301;
    swift_endAccess();
    v142 = [objc_allocWithZone(SCNMaterial) init];
    v143 = swift_allocObject();
    *(v143 + 32) = v289;
    *(v143 + 16) = v288;
    v144 = v257;
    *(v143 + 40) = v258;
    *(v143 + 48) = v144;
    v145 = v283;
    *(v143 + 56) = v136;
    *(v143 + 64) = v145;
    *(v143 + 72) = v276;
    v286 = v136;

    sub_10019B0F0(v143);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v146 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v142 setShaderModifiers:v146];

    v147 = [v142 diffuse];
    [v147 setContents:sub_100191D2C(v281)];

    swift_unknownObjectRelease();
    v148 = [v142 emission];
    v261 = objc_opt_self();
    v149 = [v261 clearColor];
    [v148 setContents:v149];

    swift_beginAccess();
    v150 = v142;
    v151 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v150, 8, v151);
    off_1004AD218 = v301;
    swift_endAccess();
    v152 = v294;
    swift_beginAccess();
    v153 = v150;
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    v282 = v153;
    sub_1000BCA18(v153, 8, v154);
    off_1004AD220 = v301;
    swift_endAccess();
    v155 = [objc_allocWithZone(SCNMaterial) init];
    v156 = swift_allocObject();
    *(v156 + 16) = v290;
    *(v156 + 32) = v286;
    v157 = v156 + 32;
    v158 = v276;
    *(v156 + 40) = v283;
    *(v156 + 48) = v158;
    sub_10019B0F0(v156);
    swift_setDeallocating();
    sub_10018C98C(v157);
    swift_deallocClassInstance();
    v159 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v155 setShaderModifiers:v159];

    if (qword_1004A04E8 != -1)
    {
      swift_once();
    }

    v160 = qword_1004AD940;
    v161 = swift_allocObject();
    v161[2] = 0;
    v161[3] = 0xE000000000000000;
    v162 = swift_allocObject();
    v162[2] = sub_10018CAEC;
    v162[3] = v161;
    v296 = sub_100038D64;
    v297 = v162;
    v294[0] = _NSConcreteStackBlock;
    v294[1] = 1107296256;
    v294[2] = sub_1001C5E40;
    v295 = &unk_100471048;
    v163 = _Block_copy(v294);

    v164 = [v160 imageWithActions:v163];
    _Block_release(v163);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v166 = [v164 CGImage];

      v152 = &off_100494000;
      if (v166)
      {
        v167 = [v155 diffuse];
        [v167 setContents:v166];

        v168 = [v155 diffuse];
        LODWORD(v294[0]) = 1065353216;
        *(&v294[1] + 4) = 0;
        *(v294 + 4) = 0;
        HIDWORD(v294[2]) = 1056964608;
        v296 = 0;
        v297 = 0;
        v295 = 0;
        v298 = 0;
        v299 = 1056964608;
        v300 = 1065353216;
        [v168 setContentsTransform:v294];
      }

      v169 = [v155 emission];
      v170 = [v261 clearColor];
      [v169 setContents:v170];

      swift_beginAccess();
      v171 = v155;
      v172 = swift_isUniquelyReferenced_nonNull_native();
      v301 = off_1004AD218;
      off_1004AD218 = 0x8000000000000000;
      sub_1000BCA18(v171, 9, v172);
      off_1004AD218 = v301;
      swift_endAccess();
      swift_beginAccess();
      v173 = v171;
      v174 = swift_isUniquelyReferenced_nonNull_native();
      v301 = off_1004AD220;
      off_1004AD220 = 0x8000000000000000;
      v283 = v173;
      sub_1000BCA18(v173, 9, v174);
      off_1004AD220 = v301;
      swift_endAccess();
      v155 = [objc_allocWithZone(SCNMaterial) init];
      v175 = swift_allocObject();
      v176 = v289;
      *(v175 + 32) = v289;
      *(v175 + 16) = v288;
      v177 = v259;
      *(v175 + 40) = v260;
      *(v175 + 48) = v177;
      v178 = v286;
      v179 = v245;
      v180 = v246;
      *(v175 + 56) = v286;
      *(v175 + 64) = v180;
      *(v175 + 72) = v179;
      v181 = v176;
      v182 = v178;
      isEscapingClosureAtFileLocation = v181;
      v162 = v182;

      sub_10019B0F0(v175);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v183 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v155 setShaderModifiers:v183];

      v161 = [v155 diffuse];
      if (qword_1004A05E0 == -1)
      {
        goto LABEL_32;
      }
    }

    swift_once();
LABEL_32:
    v184 = v152[48];
    *&v290 = qword_1004D5158;
    [v161 v184];

    v185 = [v155 emission];
    if (qword_1004A0618 != -1)
    {
      swift_once();
    }

    v286 = qword_1004D5190;
    [v185 v152[48]];

    swift_beginAccess();
    v186 = v155;
    v187 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v186, 10, v187);
    off_1004AD218 = v301;
    swift_endAccess();
    swift_beginAccess();
    v188 = v186;
    v276 = v188;
    v189 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v188, 10, v189);
    off_1004AD220 = v301;
    swift_endAccess();
    v190 = [objc_allocWithZone(SCNMaterial) init];
    v191 = swift_allocObject();
    *(v191 + 32) = isEscapingClosureAtFileLocation;
    *(v191 + 16) = v288;
    v192 = v259;
    *(v191 + 40) = v260;
    *(v191 + 48) = v192;
    v193 = v247;
    v194 = v248;
    *(v191 + 56) = v162;
    *(v191 + 64) = v194;
    *(v191 + 72) = v193;
    v195 = isEscapingClosureAtFileLocation;
    v196 = v162;
    v197 = v195;
    v260 = v195;
    v289 = v196;
    sub_10019B0F0(v191);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v198 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v190 setShaderModifiers:v198];

    v199 = [v190 diffuse];
    [v199 v152[48]];

    v200 = [v190 emission];
    v201 = v286;
    [v200 v152[48]];

    swift_beginAccess();
    v202 = v190;
    v203 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v202, 11, v203);
    off_1004AD218 = v301;
    swift_endAccess();
    swift_beginAccess();
    v204 = v202;
    v261 = v204;
    v205 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v204, 11, v205);
    off_1004AD220 = v301;
    swift_endAccess();
    v206 = [objc_allocWithZone(SCNMaterial) init];
    v207 = swift_allocObject();
    *(v207 + 32) = v197;
    *(v207 + 16) = v288;
    v208 = v251;
    v209 = v252;
    *(v207 + 40) = v252;
    *(v207 + 48) = v208;
    v210 = v249;
    v211 = v250;
    *(v207 + 56) = v289;
    *(v207 + 64) = v211;
    *(v207 + 72) = v210;

    sub_10019B0F0(v207);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v212 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v206 setShaderModifiers:v212];

    v213 = [v206 diffuse];
    [v213 setContents:v290];

    v214 = [v206 emission];
    [v214 setContents:v201];

    swift_beginAccess();
    v215 = v206;
    v216 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v215, 12, v216);
    off_1004AD218 = v301;
    swift_endAccess();
    swift_beginAccess();
    v217 = v215;
    v218 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v217, 12, v218);
    off_1004AD220 = v301;
    swift_endAccess();
    v219 = [objc_allocWithZone(SCNMaterial) init];
    v220 = swift_allocObject();
    *(v220 + 32) = v260;
    *(v220 + 16) = v288;
    *(v220 + 40) = v209;
    *(v220 + 48) = v208;
    v221 = v253;
    v222 = v254;
    *(v220 + 56) = v289;
    *(v220 + 64) = v222;
    *(v220 + 72) = v221;
    sub_10019B0F0(v220);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v223 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v219 setShaderModifiers:v223];

    v224 = [v219 diffuse];
    [v224 setContents:v290];

    v225 = [v219 emission];
    [v225 setContents:v286];

    swift_beginAccess();
    v226 = v219;
    v227 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v226, 13, v227);
    off_1004AD218 = v301;
    swift_endAccess();
    swift_beginAccess();
    v228 = v226;
    v229 = swift_isUniquelyReferenced_nonNull_native();
    v301 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v228, 13, v229);
    off_1004AD220 = v301;
    swift_endAccess();

    goto LABEL_35;
  }

  __break(1u);
}

id sub_10018A4E4(void *a1, uint64_t a2, void *a3, double *a4, void *a5)
{
  v68 = a5;
  v61 = a4;
  v60 = a3;
  v59 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v58 = &v56 - v18;
  ariadne_trace(_:_:_:_:_:)();
  v19 = [objc_allocWithZone(MTLTextureDescriptor) init];
  [v19 setPixelFormat:55];
  [v19 setWidth:1];
  [v19 setHeight:1];
  result = [a1 device];
  if (result)
  {
    v57 = v14;
    v66 = v19;
    result = [result newTextureWithDescriptor:v19];
    if (result)
    {
      v21 = result;
      v22 = v13;
      v63 = v11;
      v64 = v10;
      v65 = v7;
      swift_unknownObjectRelease();
      if (qword_1004A03E0 != -1)
      {
        swift_once();
      }

      v62 = v9;
      swift_beginAccess();

      sub_10018B7C4(v23);
      v25 = v24;

      v26 = _swiftEmptyArrayStorage;
      aBlock = _swiftEmptyArrayStorage;
      sub_10018C6F8(v25, 0, &aBlock, 1.0);
      v27 = aBlock;
      aBlock = _swiftEmptyArrayStorage;
      sub_10018C6F8(v25, 0, &aBlock, 0.5);

      v28 = aBlock;
      if (qword_1004A03E8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      aBlock = _swiftEmptyArrayStorage;
      swift_unknownObjectRetain();

      sub_10018C6F8(v29, v21, &aBlock, 1.0);

      v30 = aBlock;
      v77 = _swiftEmptyArrayStorage;
      swift_unknownObjectRetain();

      sub_10018C6F8(v31, v21, &v77, 0.5);

      swift_unknownObjectRelease_n();
      sub_100103E84(v30);
      sub_100103E84(v28);
      sub_100103E84(v27);
      v32 = sub_10018CB04(v77);

      v33 = 727056420;
      ariadne_trace(_:_:_:_:_:)();
      v34 = swift_allocObject();
      *(v34 + 16) = 0;
      v35 = (v34 + 16);
      if (v32 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= 1)
        {
LABEL_9:
          swift_beginAccess();
          v36 = *v35;
          if ((v32 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v36 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_27;
            }

            if (v36 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v37 = *&v32[v36 + 4];
          }

          v33 = v37;
          v38 = [v37 childNodes];
          sub_100018630(0, &qword_1004A1318);
          v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!(v39 >> 62))
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_15;
          }

LABEL_27:
          v40 = _CocoaArrayWrapper.endIndex.getter();
LABEL_15:

          v41 = v40 <= 0;
          v26 = v61;
          v22 = v60;
          v16 = _swiftEmptyArrayStorage;
          if (v41)
          {
            goto LABEL_20;
          }

          v42 = [v60 rootNode];
          [v42 addChildNode:v33];

          if ([v26 prepareObject:v22 shouldAbortBlock:0])
          {
            goto LABEL_19;
          }

          if (qword_1004A02C0 != -1)
          {
            goto LABEL_30;
          }

          while (1)
          {
            v43._object = 0x800000010040B4C0;
            v43._countAndFlagsBits = 0xD000000000000031;
            Log.error(_:isPrivate:)(v43, 0);
LABEL_19:
            [v33 removeFromParentNode];
LABEL_20:
            if (!__OFADD__(*v35, 1))
            {
              break;
            }

            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            swift_once();
          }

          *(v34 + 16) = *v35 + 1;
          v44 = swift_allocObject();
          v44[2] = v34;
          v44[3] = v32;
          v44[4] = v22;
          v44[5] = v26;
          v45 = v68;
          v46 = v59;
          v44[6] = v68;
          v44[7] = v46;
          v75 = sub_10018CC6C;
          v76 = v44;
          aBlock = _NSConcreteStackBlock;
          v72 = 1107296256;
          v73 = sub_100041180;
          v74 = &unk_1004710E8;
          v47 = _Block_copy(&aBlock);

          v48 = v22;
          v49 = v26;
          v45;
          v68 = v33;
          v50 = v67;
          static DispatchQoS.unspecified.getter();
          v69 = v16;
          sub_10018CA6C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10000F974(&unk_1004A3D80);
          sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
          v51 = v62;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v47);
          swift_unknownObjectRelease();

          (*(v65 + 8))(v51, v6);
          (*(v63 + 8))(v50, v64);
          goto LABEL_24;
        }
      }

      else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_9;
      }

      ariadne_trace(_:_:_:_:_:)();
      static DispatchTime.now()();
      v61 = v34;
      v52 = v58;
      + infix(_:_:)();
      v60 = *(v57 + 8);
      v56 = v22;
      (v60)(v16, v22);
      v75 = sub_10018C1DC;
      v76 = 0;
      aBlock = _NSConcreteStackBlock;
      v72 = 1107296256;
      v73 = sub_100041180;
      v74 = &unk_100471098;
      v53 = _Block_copy(&aBlock);
      v54 = v67;
      static DispatchQoS.unspecified.getter();
      v70 = _swiftEmptyArrayStorage;
      sub_10018CA6C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000F974(&unk_1004A3D80);
      sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
      v55 = v62;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v53);
      swift_unknownObjectRelease();

      (*(v65 + 8))(v55, v6);
      (*(v63 + 8))(v54, v64);
      (v60)(v52, v56);
LABEL_24:

      return ariadne_trace(_:_:_:_:_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10018AFF4(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void (*a6)(char *, void *))
{
  v46 = a6;
  v47 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v49 = *(v12 - 8);
  v50 = v12;
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v16 = *(v15 - 1);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  if (!(a2 >> 62))
  {
    if (v22 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_17:
    ariadne_trace(_:_:_:_:_:)();
    static DispatchTime.now()();
    + infix(_:_:)();
    v46 = *(v16 + 8);
    v46(v18, v15);
    v59 = sub_10018C1DC;
    v60 = 0;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100041180;
    v58 = &unk_100471110;
    v41 = _Block_copy(&aBlock);
    v42 = v14;
    static DispatchQoS.unspecified.getter();
    v54 = _swiftEmptyArrayStorage;
    sub_10018CA6C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
    v43 = v48;
    v44 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v41);
    (*(v51 + 8))(v43, v44);
    (*(v49 + 8))(v42, v50);
    v46(v21, v15);
  }

  if (v22 >= _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_17;
  }

LABEL_3:
  swift_beginAccess();
  v23 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v23 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v24 = *(a2 + 8 * v23 + 32);
  }

  v15 = v24;
  v25 = [v24 childNodes];
  sub_100018630(0, &qword_1004A1318);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

LABEL_21:
  v27 = _CocoaArrayWrapper.endIndex.getter();
LABEL_9:

  if (v27 <= 0)
  {
    goto LABEL_14;
  }

  v28 = [a3 rootNode];
  [v28 addChildNode:v15];

  if ([a4 prepareObject:a3 shouldAbortBlock:0])
  {
    goto LABEL_13;
  }

  if (qword_1004A02C0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v29._object = 0x800000010040B4C0;
    v29._countAndFlagsBits = 0xD000000000000031;
    Log.error(_:isPrivate:)(v29, 0);
LABEL_13:
    [v15 removeFromParentNode];
LABEL_14:
    swift_beginAccess();
    v30 = *(a1 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      break;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  *(a1 + 16) = v32;
  v33 = swift_allocObject();
  v33[2] = a1;
  v33[3] = a2;
  v33[4] = a3;
  v33[5] = a4;
  v34 = v47;
  v35 = v46;
  v33[6] = v47;
  v33[7] = v35;
  v59 = sub_10018CEDC;
  v60 = v33;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_100041180;
  v58 = &unk_100471160;
  v36 = _Block_copy(&aBlock);

  v37 = a3;
  v38 = a4;
  v34;
  static DispatchQoS.unspecified.getter();
  v53 = _swiftEmptyArrayStorage;
  sub_10018CA6C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  v39 = v48;
  v40 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v51 + 8))(v39, v40);
  (*(v49 + 8))(v14, v50);
}

void sub_10018B7C4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_10018BADC(v7, v4, v2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_10018B924(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_10018B924(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + v13);
    v15 = qword_1004A03E8;
    v16 = *(*(a3 + 56) + 8 * v13);
    if (v15 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_1004AD220 + 2) && (sub_10019C35C(v14), (v17 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();

      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        goto LABEL_21;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      sub_10018BFB8(a1, a2, v21, a3);
      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void *sub_10018BADC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_10018B924(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_10018BB54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000F974(&unk_1004A7410);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(*(v4 + 48) + 8 * v16);
      memcpy(__dst, (*(v4 + 56) + 304 * v16), 0x130uLL);
      result = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v9 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v9 + 48) + 8 * v21) = v17;
      result = memcpy((*(v9 + 56) + 304 * v21), __dst, 0x130uLL);
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        sub_1000C1C28(__dst, v27);
        return v9;
      }

      result = sub_1000C1C28(__dst, v27);
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (++v20 != v23 || (v22 & 1) == 0)
    {
      v24 = v20 == v23;
      if (v20 == v23)
      {
        v20 = 0;
      }

      v22 |= v24;
      v25 = *(v12 + 8 * v20);
      if (v25 != -1)
      {
        v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_10018BDA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000F974(&qword_1004A7438);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = static Hasher._hash(seed:_:)();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10018BFB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000F974(&qword_1004A73D0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = v18;
    v4 = v28;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_10018C1EC(uint64_t a1)
{
  if (qword_1004A03E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_1004AD218;
  if (*(off_1004AD218 + 2) && (v3 = sub_10019C35C(a1), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + 8 * v3);
    swift_endAccess();
    v6 = v5;
    static ComputedCameraProperties.shared.getter();
    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v8 = String._bridgeToObjectiveC()();
    [v6 setValue:isa forKeyPath:v8];

    return v6;
  }

  else
  {
    swift_endAccess();
    return [objc_allocWithZone(SCNMaterial) init];
  }
}

id sub_10018C324(uint64_t a1)
{
  v2 = [objc_opt_self() planeWithWidth:0.01 height:0.01];
  v3 = sub_10018C1EC(a1);
  [v3 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018630(0, &qword_1004AF720);
  if (swift_dynamicCast())
  {
    v4 = v7;
  }

  else
  {
    v4 = [objc_allocWithZone(SCNMaterial) init];
  }

  [v2 setFirstMaterial:v4];

  v5 = [objc_opt_self() nodeWithGeometry:v2];
  return v5;
}

void sub_10018C468(unsigned __int8 *a1, uint64_t a2, void *a3, double a4)
{
  v7 = *a1;
  if (qword_1004A03E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1004AD220 + 2))
  {
    sub_10019C35C(v7);
    if (v8)
    {
      swift_endAccess();
      if (a2)
      {
        goto LABEL_8;
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
LABEL_8:
  v9 = sub_10018C324(v7);
  [v9 setOpacity:a4];
  if (a2)
  {
    swift_unknownObjectRetain();
    v10 = [v9 geometry];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 firstMaterial];

      if (v12)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = _bridgeAnythingToObjectiveC<A>(_:)();
        v14 = [objc_opt_self() materialPropertyWithContents:v13];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v15 = String._bridgeToObjectiveC()();
        [v12 setValue:v14 forKey:v15];
      }
    }

    swift_unknownObjectRelease();
  }

  v16 = v9;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_10018C6F8(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = *(*(a1 + 48) + (__clz(__rbit64(v12)) | (v15 << 6)));
      sub_10018C468(&v16, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v12 &= v12 - 1;
      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
        goto LABEL_11;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10018C804(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

uint64_t sub_10018C814()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v5 = String.init(contentsOfFile:encoding:)();

    return v5;
  }

  else
  {
    __break(1u);

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_10018C98C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004AD2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018C9F4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10018CA54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018CA6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018CAB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double *sub_10018CB04(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = roundf(v2 / 3.0);
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = _swiftEmptyArrayStorage;
  v7 = [objc_allocWithZone(SCNNode) init];
  v4 = v7;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_12:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100187A64(a1, &v7, v3, &v8);
  v5 = v8;

  return v5;
}

uint64_t sub_10018CC70()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t getEnumTagSinglePayload for ShaderCache.Material(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderCache.Material(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10018CE70()
{
  result = qword_1004AD2E8;
  if (!qword_1004AD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD2E8);
  }

  return result;
}

uint64_t sub_10018CF18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10018CF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_10018CFE8()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4FC0 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10018D068@<X0>(void *a1@<X8>)
{
  if (qword_1004A03F0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4FC0;
  *a1 = qword_1004D4FC0;

  return v2;
}

uint64_t sub_10018D0D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if ((sub_10018D1E0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  return sub_10018D1E0(v2, v3, v4, v5);
}

unint64_t sub_10018D164(uint64_t a1)
{
  result = sub_10018D18C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018D18C()
{
  result = qword_1004AD3B0;
  if (!qword_1004AD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3B0);
  }

  return result;
}

uint64_t sub_10018D1E0(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;
    type metadata accessor for ScreenPoint();
    v8 = a3;
    v9 = v7;
    LOBYTE(v7) = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      type metadata accessor for WorldPoint();
      v10 = a4;
      v11 = a2;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10018D2E4()
{
  result = qword_1004AD3B8;
  if (!qword_1004AD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3B8);
  }

  return result;
}

void sub_10018D338(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1 = *Float.piDiv2.unsafeMutableAddressor();
      SIMD3<>.up.unsafeMutableAddressor();
      v2 = 0.5;
    }

    else
    {
      v1 = *Float.piDiv2.unsafeMutableAddressor();
      SIMD3<>.up.unsafeMutableAddressor();
      v2 = -0.5;
    }

    __sincosf_stret(v1 * v2);
  }

  else if (a1)
  {
    vmulq_f32(*SIMD3<>.up.unsafeMutableAddressor(), 0);
  }

  else
  {
    SIMD3<>.up.unsafeMutableAddressor();
  }
}

void sub_10018D3EC()
{
  if ([objc_opt_self() jasperAvailable])
  {
    v0 = [objc_opt_self() standardUserDefaults];
    Defaults.divisionsEnabled.unsafeMutableAddressor();

    v1 = String._bridgeToObjectiveC()();

    v2 = [v0 BOOLForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  byte_1004D4FC8 = v2;
}

id sub_10018D4A8()
{
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  PublishedValue.wrappedValue.getter();

  result = sub_1000983B8();
  byte_1004D4FC9 = result == 1;
  return result;
}

uint64_t sub_10018D528()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0127;
  if (byte_1004D4FC9)
  {
    v0 = 0.01;
  }

  dword_1004D4FCC = LODWORD(v0);
  return result;
}

float sub_10018D5A0()
{
  if (qword_1004A0408 != -1)
  {
    swift_once();
  }

  result = *&dword_1004D4FCC * 0.25;
  *&dword_1004D4FD0 = *&dword_1004D4FCC * 0.25;
  return result;
}

uint64_t sub_10018D60C()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 10;
  if (!byte_1004D4FC9)
  {
    v0 = 1;
  }

  qword_1004D4FD8 = v0;
  return result;
}

uint64_t sub_10018D670()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.35;
  if (byte_1004D4FC9)
  {
    v0 = 0.6;
  }

  dword_1004D4FE0 = LODWORD(v0);
  return result;
}

uint64_t sub_10018D6F4(uint64_t a1, float *a2)
{
  if (qword_1004A0400 != -1)
  {
    v3 = a2;
    result = swift_once();
    a2 = v3;
  }

  v2 = 0.3048;
  if (byte_1004D4FC9)
  {
    v2 = 0.1;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10018D778()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 12;
  if (byte_1004D4FC9)
  {
    v0 = 5;
  }

  qword_1004D4FE8 = v0;
  return result;
}

uint64_t sub_10018D7E0()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 24;
  if (byte_1004D4FC9)
  {
    v0 = 10;
  }

  qword_1004D4FF0 = v0;
  return result;
}

id sub_10018D848()
{
  result = [objc_opt_self() systemFontOfSize:100.0 weight:UIFontWeightSemibold];
  qword_1004D4FF8 = result;
  return result;
}

id sub_10018D898()
{
  result = [objc_opt_self() whiteColor];
  qword_1004D5000 = result;
  return result;
}

uint64_t sub_10018D8D4()
{
  SCNVector3.init(_:_:_:)(0.0001, 0.0001, 0.0001);
  * infix(_:_:)();
  if (qword_1004A0400 != -1)
  {
    swift_once();
  }

  result = * infix(_:_:)();
  dword_1004D5008 = v1;
  *algn_1004D500C = v2;
  dword_1004D5010 = v3;
  return result;
}

uint64_t sub_10018D998()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.1;
  if (byte_1004D4FC9)
  {
    v0 = 0.5;
  }

  dword_1004D5014 = LODWORD(v0);
  return result;
}

uint64_t sub_10018DA28()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.2;
  if (!byte_1004D4FC9)
  {
    v0 = 0.25;
  }

  dword_1004D5020 = LODWORD(v0);
  return result;
}

uint64_t sub_10018DA98()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.07;
  if (byte_1004D4FC9)
  {
    v0 = 0.2;
  }

  dword_1004D5024 = LODWORD(v0);
  return result;
}

uint64_t sub_10018DB10()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.37;
  if (byte_1004D4FC9)
  {
    v0 = 0.55;
  }

  dword_1004D5028 = LODWORD(v0);
  return result;
}

float sub_10018DB98(float result, uint64_t a2, float *a3)
{
  if (qword_1004A0400 == -1)
  {
    *a3 = result;
  }

  else
  {
    v4 = result;
    swift_once();
    result = v4;
    *a3 = v4;
  }

  return result;
}

uint64_t sub_10018DC08()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.3;
  if (byte_1004D4FC9)
  {
    v0 = 0.55;
  }

  dword_1004D5030 = LODWORD(v0);
  return result;
}

uint64_t sub_10018DC80()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.2;
  if (byte_1004D4FC9)
  {
    v0 = 0.3;
  }

  dword_1004D5034 = LODWORD(v0);
  return result;
}

uint64_t sub_10018DCF8()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.85;
  if (byte_1004D4FC9)
  {
    v0 = 0.55;
  }

  dword_1004D5038 = LODWORD(v0);
  return result;
}

uint64_t sub_10018DD88(uint64_t a1, float *a2)
{
  if (qword_1004A0400 != -1)
  {
    v3 = a2;
    result = swift_once();
    a2 = v3;
  }

  v2 = 0.85;
  if (byte_1004D4FC9)
  {
    v2 = 0.95;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10018DE0C()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 1.2;
  if (byte_1004D4FC9)
  {
    v0 = 1.3;
  }

  dword_1004D5044 = LODWORD(v0);
  return result;
}

float sub_10018DE84()
{
  if (qword_1004A04C0 != -1)
  {
    swift_once();
  }

  result = *&dword_1004D5044 * 0.5;
  *&dword_1004D5048 = *&dword_1004D5044 * 0.5;
  return result;
}

id sub_10018DEF4()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D5050 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10018DF74@<X0>(void *a1@<X8>)
{
  if (qword_1004A04D0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D5050;
  *a1 = qword_1004D5050;

  return v2;
}

uint64_t sub_10018DFE4(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_10007B080(*a1, *a2) & 1) == 0 || (sub_10007B080(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_10007B080(v3, v5);
}

unint64_t sub_10018E064(uint64_t a1)
{
  result = sub_10018E08C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018E08C()
{
  result = qword_1004AD3E8;
  if (!qword_1004AD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3E8);
  }

  return result;
}

void sub_10018E0E0(void *a1)
{
  v3 = OBJC_IVAR____TtC7Measure23CardContainerController_containerView;
  v4 = [*(v1 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) topAnchor];
  v5 = [a1 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  [v6 setActive:1];
  v7 = [*(v1 + v3) trailingAnchor];
  v8 = [a1 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  [v9 setActive:1];
  v10 = [*(v1 + v3) leadingAnchor];
  v11 = [a1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  [v12 setActive:1];
  v13 = [*(v1 + v3) bottomAnchor];
  v14 = [a1 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  [v15 setActive:1];
}

id sub_10018E2F0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC7Measure23CardContainerController_isPanningCard] = 0;
  v1[OBJC_IVAR____TtC7Measure23CardContainerController_isDraggingEnabled] = 1;
  *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_containerHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_draggingAnimator] = 0;
  *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_cardTopConstraint] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_maxHeightSubscription] = 0;
  *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_containerView] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10018E3AC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7Measure23CardContainerController_draggingAnimator;
  v3 = *&v0[OBJC_IVAR____TtC7Measure23CardContainerController_draggingAnimator];
  if (v3)
  {
    [v3 stopAnimation:1];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

void *sub_10018E598()
{
  type metadata accessor for State();
  swift_allocObject();
  result = sub_10018E6EC();
  qword_1004D5058 = result;
  return result;
}

void *sub_10018E6EC()
{
  v1 = v0;
  v2 = type metadata accessor for MeasurementsHistory();
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v8 = type metadata accessor for SessionState();
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  sub_10008F12C();
  *&v31[0] = OrderedDictionary.init()();
  *(&v31[0] + 1) = v15;
  v31[1] = v16;
  LODWORD(v31[2]) = 1106247680;
  *(&v31[2] + 8) = 0u;
  sub_10000F974(&qword_1004AD608);
  swift_allocObject();
  v0[2] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = sub_1001CA4E0();
  *(&v31[0] + 1) = v17;
  *&v31[1] = v18;
  sub_10000F974(&qword_1004AD610);
  swift_allocObject();
  v0[3] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = 0x8000000000000000;
  sub_10000F974(&qword_1004AD618);
  swift_allocObject();
  v0[4] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = &_swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004AD620);
  swift_allocObject();
  v0[5] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 0;
  sub_10000F974(&qword_1004AD628);
  swift_allocObject();
  v0[6] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 2;
  *(v31 + 1) = 0;
  sub_10000F974(&qword_1004AD630);
  swift_allocObject();
  v0[7] = PublishedValue.init(wrappedValue:)();
  *v14 = 0;
  v19 = *(v9 + 28);
  v20 = type metadata accessor for ARCamera.TrackingState.Reason();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 2, v20);
  sub_10018F668(v14, v12, type metadata accessor for SessionState);
  sub_10000F974(&qword_1004AD638);
  swift_allocObject();
  v21 = PublishedValue.init(wrappedValue:)();
  sub_10018F6D0(v14, type metadata accessor for SessionState);
  v1[8] = v21;
  memset(v31, 0, 32);
  sub_10000F974(&qword_1004AD640);
  swift_allocObject();
  v1[9] = PublishedValue.init(wrappedValue:)();
  ComputedCameraProperties.init()();
  memcpy(&v34[8], v35, 0x1E0uLL);
  *&v31[0] = 0;
  *(&v31[0] + 1) = 0xBFF0000000000000;
  *&v31[1] = 0;
  memcpy(&v31[1] + 8, v34, 0x1E8uLL);
  sub_10000F974(&qword_1004AD648);
  swift_allocObject();
  v1[10] = PublishedValue.init(wrappedValue:)();
  ComputedCameraProperties.init()();
  v31[0] = 0u;
  *&v31[31] = 0;
  sub_10000F974(&qword_1004AD650);
  swift_allocObject();
  v1[11] = PublishedValue.init(wrappedValue:)();
  v36 = 1;
  LOBYTE(v47[0]) = 1;
  LOBYTE(v60[0]) = 1;
  LOBYTE(v59[0]) = 1;
  memset(v31, 0, 64);
  LOBYTE(v31[4]) = 1;
  *(&v31[4] + 1) = v42;
  BYTE3(v31[4]) = v43;
  DWORD1(v31[4]) = 0;
  BYTE8(v31[4]) = 1;
  *(&v31[4] + 9) = *v41;
  HIDWORD(v31[4]) = *&v41[3];
  v31[5] = 0u;
  LOBYTE(v31[6]) = 1;
  BYTE3(v31[6]) = v40;
  *(&v31[6] + 1) = v39;
  DWORD1(v31[6]) = 0;
  BYTE8(v31[6]) = 1;
  BYTE11(v31[6]) = v38;
  *(&v31[6] + 9) = v37;
  HIDWORD(v31[6]) = 0;
  LOBYTE(v31[7]) = 1;
  sub_10000F974(&qword_1004AD658);
  swift_allocObject();
  v1[12] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = 0;
  sub_10000F974(&qword_1004AD660);
  swift_allocObject();
  v1[13] = PublishedValue.init(wrappedValue:)();
  v31[0] = xmmword_1003E0C50;
  memset(&v31[1], 0, 32);
  sub_10000F974(&qword_1004AD668);
  swift_allocObject();
  v1[14] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 0;
  sub_10000F974(&qword_1004AD670);
  swift_allocObject();
  v1[15] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 5;
  sub_10000F974(&qword_1004AD678);
  swift_allocObject();
  v1[16] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 0;
  sub_10000F974(&qword_1004AD680);
  swift_allocObject();
  v1[17] = PublishedValue.init(wrappedValue:)();
  LODWORD(v31[0]) = 0;
  sub_10000F974(&qword_1004AD688);
  swift_allocObject();
  v1[18] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 2;
  sub_10000F974(&qword_1004AD690);
  swift_allocObject();
  v1[19] = PublishedValue.init(wrappedValue:)();
  sub_10000F974(&qword_1004AD698);
  swift_allocObject();
  v1[20] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = 0;
  sub_10000F974(&qword_1004AD6A0);
  swift_allocObject();
  v1[21] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 0;
  *(v31 + 8) = 0u;
  *(&v31[1] + 8) = 0u;
  BYTE8(v31[2]) = 1;
  sub_10000F974(&qword_1004AD6A8);
  swift_allocObject();
  v1[22] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v12) = v36;
  memset(v31, 0, 64);
  LOBYTE(v31[4]) = v36;
  *(&v31[4] + 1) = *v46;
  *(&v31[4] + 1) = *&v46[7];
  memset(&v31[5], 0, 64);
  LOBYTE(v31[9]) = v36;
  *(&v31[9] + 1) = v44;
  BYTE3(v31[9]) = v45;
  DWORD1(v31[9]) = 0;
  BYTE8(v31[9]) = 1;
  sub_10000F974(&qword_1004AD6B0);
  swift_allocObject();
  v1[23] = PublishedValue.init(wrappedValue:)();
  v31[0] = 0uLL;
  sub_10000F974(&qword_1004AD6B8);
  swift_allocObject();
  v1[24] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = &_swiftEmptyArrayStorage;
  *(&v31[0] + 1) = &_swiftEmptyArrayStorage;
  *&v31[1] = &_swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004AD6C0);
  swift_allocObject();
  v1[25] = PublishedValue.init(wrappedValue:)();
  sub_10004B268(v47);
  v31[6] = v47[6];
  v31[7] = v47[7];
  LOBYTE(v31[8]) = v48;
  v31[2] = v47[2];
  v31[3] = v47[3];
  v31[4] = v47[4];
  v31[5] = v47[5];
  v31[0] = v47[0];
  v31[1] = v47[1];
  *(&v31[8] + 1) = 0;
  *&v31[9] = &_swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004AD6C8);
  swift_allocObject();
  v1[26] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v60[0]) = 1;
  LOBYTE(v59[0]) = 1;
  v30[0] = 1;
  v65[0] = 1;
  LOBYTE(v64[0]) = 1;
  LOBYTE(v63[0]) = 1;
  LOBYTE(v62[0]) = 1;
  LOBYTE(v61[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  v50[0] = 1;
  LOWORD(v31[0]) = 1;
  BYTE2(v31[0]) = 0;
  *(v31 + 3) = *&v65[11];
  BYTE7(v31[0]) = v65[15];
  *(&v31[0] + 1) = 0;
  *&v31[1] = 0;
  BYTE8(v31[1]) = 1;
  *(&v31[1] + 9) = *v65;
  HIDWORD(v31[1]) = *&v65[3];
  v31[2] = 0uLL;
  LOBYTE(v31[3]) = 1;
  DWORD1(v31[3]) = *(v64 + 3);
  *(&v31[3] + 1) = v64[0];
  *(&v31[3] + 8) = 0u;
  BYTE8(v31[4]) = 1;
  HIDWORD(v31[4]) = *(v63 + 3);
  *(&v31[4] + 9) = v63[0];
  v31[5] = 0u;
  LOBYTE(v31[6]) = 1;
  DWORD1(v31[6]) = *(v62 + 3);
  *(&v31[6] + 1) = v62[0];
  *(&v31[6] + 8) = 0u;
  BYTE8(v31[7]) = 1;
  HIDWORD(v31[7]) = *(v61 + 3);
  *(&v31[7] + 9) = v61[0];
  memset(&v31[8], 0, 64);
  LOBYTE(v31[12]) = v12;
  *(&v31[12] + 1) = *(v60 + 7);
  *(&v31[12] + 1) = v60[0];
  memset(&v31[13], 0, 64);
  LOBYTE(v31[17]) = v12;
  *(&v31[17] + 1) = v59[0];
  *(&v31[17] + 1) = *(v59 + 7);
  memset(&v31[18], 0, 64);
  LOBYTE(v31[22]) = v12;
  *(&v31[22] + 1) = v58[0];
  DWORD1(v31[22]) = *(v58 + 3);
  *(&v31[22] + 8) = 0u;
  *(&v31[23] + 8) = 0u;
  BYTE8(v31[24]) = 1;
  *(&v31[24] + 9) = v57[0];
  HIDWORD(v31[24]) = *(v57 + 3);
  memset(&v31[25], 0, 32);
  LOBYTE(v31[27]) = 1;
  *(&v31[27] + 1) = v55;
  BYTE3(v31[27]) = v56;
  DWORD1(v31[27]) = 0;
  BYTE8(v31[27]) = 1;
  *(&v31[27] + 9) = v53;
  BYTE11(v31[27]) = v54;
  HIDWORD(v31[27]) = 0;
  LOBYTE(v31[28]) = 1;
  *(&v31[28] + 1) = v51;
  BYTE3(v31[28]) = v52;
  DWORD1(v31[28]) = 0;
  BYTE8(v31[28]) = 1;
  *(&v31[28] + 9) = *v50;
  HIDWORD(v31[28]) = *&v50[3];
  v31[29] = 0u;
  LOBYTE(v31[30]) = 1;
  *(&v31[30] + 1) = *v49;
  DWORD1(v31[30]) = *&v49[3];
  *(&v31[30] + 8) = 0u;
  v31[32] = 0u;
  v32 = 1;
  v33 = 2;
  sub_10000F974(&qword_1004AD6D0);
  swift_allocObject();
  v1[27] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 0;
  sub_10000F974(&qword_1004AD6D8);
  swift_allocObject();
  v1[28] = PublishedValue.init(wrappedValue:)();
  sub_10004E464(v31);
  sub_10000F974(&qword_1004AD6E0);
  swift_allocObject();
  v1[29] = PublishedValue.init(wrappedValue:)();
  *v7 = &_swiftEmptyArrayStorage;
  v22 = *(v3 + 28);
  v23 = type metadata accessor for MeasurementHistoryItem();
  v24 = *(*(v23 - 8) + 56);
  v24(&v7[v22], 1, 1, v23);
  v24(&v7[*(v3 + 32)], 1, 1, v23);
  sub_10018F668(v7, v29, type metadata accessor for MeasurementsHistory);
  sub_10000F974(&qword_1004AD6E8);
  swift_allocObject();
  v25 = PublishedValue.init(wrappedValue:)();
  sub_10018F6D0(v7, type metadata accessor for MeasurementsHistory);
  v1[30] = v25;
  *&v31[0] = 0;
  sub_10000F974(&qword_1004AD6F0);
  swift_allocObject();
  v1[31] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = 0;
  WORD4(v31[0]) = 0;
  sub_10000F974(&qword_1004AD6F8);
  swift_allocObject();
  v1[32] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = &_swiftEmptySetSingleton;
  sub_10000F974(&qword_1004AD700);
  swift_allocObject();
  v1[33] = PublishedValue.init(wrappedValue:)();
  LOWORD(v31[0]) = 0;
  BYTE2(v31[0]) = 0;
  sub_10000F974(&qword_1004AD708);
  swift_allocObject();
  v1[34] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = &_swiftEmptySetSingleton;
  sub_10000F974(&qword_1004AD710);
  swift_allocObject();
  v1[35] = PublishedValue.init(wrappedValue:)();
  swift_unknownObjectWeakInit();
  sub_10018F730(v31, v30);
  sub_10000F974(&qword_1004AD718);
  swift_allocObject();
  v26 = PublishedValue.init(wrappedValue:)();
  sub_10018F78C(v31);
  v1[36] = v26;
  return v1;
}

uint64_t sub_10018F484()
{

  return v0;
}

uint64_t sub_10018F5B4()
{
  sub_10018F484();

  return swift_deallocClassInstance();
}

uint64_t sub_10018F60C()
{
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10018F668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018F6D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10018F830(uint64_t a1)
{
  v3 = qword_1004AD720;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10018F8E8@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1004AD728;
  swift_beginAccess();
  return sub_100027DE4(v1 + v3, a1);
}

uint64_t sub_10018F940(uint64_t a1)
{
  v3 = qword_1004AD728;
  swift_beginAccess();
  sub_100027D74(a1, v1 + v3);
  return swift_endAccess();
}

id sub_10018FA5C(double a1, double a2, double a3, double a4)
{
  *&v4[qword_1004AD720] = _swiftEmptyArrayStorage;
  v9 = &v4[qword_1004AD728];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for StateObservingView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  swift_getWitnessTable();
  StateObserving.setup()();

  return v10;
}

void sub_10018FB90()
{
  *(v0 + qword_1004AD720) = _swiftEmptyArrayStorage;
  v1 = v0 + qword_1004AD728;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10018FC70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateObservingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018FCE0(uint64_t a1)
{

  v2 = a1 + qword_1004AD728;

  return sub_100027EDC(v2);
}

uint64_t (*sub_10018FD4C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10018F9A0();
  return sub_100027BEC;
}

uint64_t sub_10018FDBC()
{
  sub_10018FE8C();
}

uint64_t (*sub_10018FDE8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10018F888();
  return sub_100027F78;
}

uint64_t sub_10018FE8C()
{
  v1 = qword_1004AD720;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10018FED0()
{
  *(v0 + qword_1004AD720) = _swiftEmptyArrayStorage;
  v1 = v0 + qword_1004AD728;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_10018FF58(double a1, double a2, double a3, double a4)
{
  v20.receiver = v4;
  v20.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v10 = String._bridgeToObjectiveC()();
  [v9 setTitle:v10 forState:0];

  v11 = String._bridgeToObjectiveC()();
  [v9 setTitle:v11 forState:1];

  v12 = [v9 titleLabel];
  if (!v12)
  {
    goto LABEL_4;
  }

  if (qword_1004A06F0 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    [v12 setFont:qword_1004D5280];

LABEL_4:
    if (qword_1004A06F8 != -1)
    {
      swift_once();
    }

    [v9 setTitleColor:qword_1004D5288 forState:0];
    [v9 addTarget:v9 action:"stopRecording" forControlEvents:64];
    v13 = v9;
    [v13 sizeToFit];
    [v13 bounds];
    v22 = CGRectInset(v21, -20.0, -20.0);
    [v13 setBounds:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
    v14 = objc_opt_self();
    v9 = swift_allocObject();
    v9[2] = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100190B78;
    *(v15 + 24) = v9;
    v19[4] = sub_100031688;
    v19[5] = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_1000DC708;
    v19[3] = &unk_1004715D8;
    v16 = _Block_copy(v19);
    v12 = v13;

    [v14 performWithoutAnimation:v16];
    _Block_release(v16);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  v17 = [objc_opt_self() defaultCenter];
  [v17 addObserver:v12 selector:"updateForCurrentOrientation" name:UIDeviceOrientationDidChangeNotification object:0];

  return v12;
}

void sub_1001902EC(void *a1)
{
  v2 = [a1 superview];
  if (v2)
  {
    v9 = v2;
    [v2 bounds];
    Width = CGRectGetWidth(v11);
    [a1 bounds];
    v4 = Width - CGRectGetWidth(v12);
    if (qword_1004A0700 != -1)
    {
      swift_once();
    }

    v5 = v4 - qword_1004D5290;
    [v9 bounds];
    Height = CGRectGetHeight(v13);
    [a1 bounds];
    v7 = Height - CGRectGetHeight(v14);
    if (qword_1004A0708 != -1)
    {
      swift_once();
    }

    v8 = v7 - qword_1004D5298;
    [a1 frame];
    [a1 setFrame:{v5, v8}];
  }
}

void sub_100190458()
{
  v1 = [v0 superview];
  if (v1)
  {
    v8 = v1;
    [v1 bounds];
    Width = CGRectGetWidth(v10);
    [v0 bounds];
    v3 = Width - CGRectGetWidth(v11);
    if (qword_1004A0700 != -1)
    {
      swift_once();
    }

    v4 = v3 - qword_1004D5290;
    [v8 bounds];
    Height = CGRectGetHeight(v12);
    [v0 bounds];
    v6 = Height - CGRectGetHeight(v13);
    if (qword_1004A0708 != -1)
    {
      swift_once();
    }

    v7 = v6 - qword_1004D5298;
    [v0 frame];
    [v0 setFrame:{v4, v7}];
  }
}

void sub_10019068C()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1 forState:2];

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D4AD0;
  if (qword_1004D4AD0)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v2;

    sub_1001815F0(sub_100190B18, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100190780(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v10 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100190B20;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100471560;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1001909F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = String._bridgeToObjectiveC()();
    [v1 setTitle:v2 forState:2];
  }
}

uint64_t sub_100190AE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100190B28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100190B40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100190BE8(uint64_t a1)
{
  v3 = qword_1004AD840;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100190CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1004AD848;
  swift_beginAccess();
  return sub_100027DE4(v1 + v3, a1);
}

uint64_t sub_100190CF8(uint64_t a1)
{
  v3 = qword_1004AD848;
  swift_beginAccess();
  sub_100027D74(a1, v1 + v3);
  return swift_endAccess();
}

id sub_100190DB8(void *a1)
{
  *&v1[qword_1004AD840] = _swiftEmptyArrayStorage;
  v3 = &v1[qword_1004AD848];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for StateObservingViewController();
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    swift_getWitnessTable();
    StateObserving.setup()();
  }

  return v5;
}

void sub_100190EDC()
{
  *(v0 + qword_1004AD840) = _swiftEmptyArrayStorage;
  v1 = v0 + qword_1004AD848;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100190FE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1001912EC();
}

id sub_100191054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateObservingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001910C4(uint64_t a1)
{

  v2 = a1 + qword_1004AD848;

  return sub_100027EDC(v2);
}

uint64_t sub_100191128@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  *a1 = result;
  return result;
}

uint64_t (*sub_100191168(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100190D58();
  return sub_100027BEC;
}

uint64_t sub_1001911D8()
{
  sub_1001912A8();
}

uint64_t (*sub_100191204(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100190C40();
  return sub_100027F78;
}

uint64_t sub_1001912A8()
{
  v1 = qword_1004AD840;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_100191320()
{
  result = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{2000.0, 2000.0}];
  qword_1004AD938 = result;
  return result;
}

id sub_100191364()
{
  result = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{400.0, 250.0}];
  qword_1004AD940 = result;
  return result;
}

uint64_t sub_1001913AC()
{
  if (qword_1004A04E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1004AD938;
  v4[4] = sub_10019131C;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1001C5E40;
  v4[3] = &unk_1004716B8;
  v1 = _Block_copy(v4);

  v2 = [v0 imageWithActions:v1];
  _Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    qword_1004AD948 = v2;
  }

  return result;
}

void sub_1001914CC(void *a1)
{
  v20[0] = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v20[3] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v20[2] = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100191AE0(0, 0);
  v21 = sub_100191AE0(2, 0);
  v8 = 1;
  v20[1] = v7;
  while (1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
    if (qword_1004A0420 != -1)
    {
      swift_once();
    }

    if ((v8 * qword_1004D4FD8) >> 64 != (v8 * qword_1004D4FD8) >> 63)
    {
      break;
    }

    v23 = v8 * qword_1004D4FD8;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = 200 * ((((103 * (10 * ((v8 - 1) / 0xAu))) >> 15) & 1) + ((103 * (10 * ((v8 - 1) / 0xAu))) >> 10));
    v12 = (v11 + 97);
    v13 = (200 * ((v8 - 1) % 0xAu));
    v14 = (v11 + 173);
    v15 = String._bridgeToObjectiveC()();
    sub_100193DDC(v22);
    type metadata accessor for Key(0);
    sub_100191FDC(&qword_1004A72A0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 drawWithRect:0 options:isa attributes:0 context:{v13, v12, 200.0, 100.0}];

    v17 = String._bridgeToObjectiveC()();

    sub_100193DDC(v21);
    v18 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v17 drawWithRect:0 options:v18 attributes:0 context:{v13, v14, 200.0, 100.0}];

    if (++v8 == 101)
    {

      v19 = [objc_opt_self() redColor];
      [v19 setStroke];

      [v20[0] strokeRect:{0.0, 0.0, 1.0, 1.0}];
      return;
    }
  }

  __break(1u);
}

void sub_100191910()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100191AE0(0, 1);
  sub_100193DDC(v1);

  type metadata accessor for Key(0);
  sub_100191FDC(&qword_1004A72A0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 drawWithRect:0 options:isa attributes:0 context:{0.0, 110.0, 400.0, 125.0}];

  v5 = String._bridgeToObjectiveC()();
  v3 = sub_100191AE0(2, 1);
  sub_100193DDC(v3);

  v4 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 drawWithRect:0 options:v4 attributes:0 context:{0.0, 235.0, 400.0, 125.0}];
}

unint64_t sub_100191AE0(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v4 setAlignment:a1];
  sub_10000F974(&qword_1004AD950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5720;
  *(inited + 32) = NSFontAttributeName;
  v6 = qword_1004A0448;
  v7 = NSFontAttributeName;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D4FF8;
  *(inited + 40) = qword_1004D4FF8;
  *(inited + 48) = NSParagraphStyleAttributeName;
  *(inited + 56) = v4;
  *(inited + 64) = NSForegroundColorAttributeName;
  v9 = qword_1004A0450;
  v10 = v8;
  v11 = NSParagraphStyleAttributeName;
  v12 = v4;
  v13 = NSForegroundColorAttributeName;
  if (v9 != -1)
  {
    swift_once();
  }

  v14 = qword_1004D5000;
  *(inited + 72) = qword_1004D5000;
  v15 = v14;
  v16 = sub_10019B1F0(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AD958);
  swift_arrayDestroy();
  if (a2)
  {
    sub_100191CE0();
    v17 = NSBaselineOffsetAttributeName;
    isa = NSNumber.init(floatLiteral:)(12.5).super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BCB60(isa, v17, isUniquelyReferenced_nonNull_native);
  }

  else
  {
  }

  return v16;
}

unint64_t sub_100191CE0()
{
  result = qword_1004AE140;
  if (!qword_1004AE140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AE140);
  }

  return result;
}

uint64_t sub_100191D2C(void *a1)
{
  if (qword_1004A04F0 != -1)
  {
    swift_once();
  }

  v2 = [qword_1004AD948 CGImage];
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = v2;
  v4 = CGImageGetColorSpace(v2);
  v5 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
LABEL_14:
      v6 = v4;
      goto LABEL_15;
    }

    type metadata accessor for CGColorSpace(0);
    sub_100191FDC(&qword_1004AD960, type metadata accessor for CGColorSpace);
    v7 = static _CFObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_9:
    v8 = [a1 device];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:v8];
    v14 = 0;
    v10 = [v9 newTextureWithCGImage:v3 options:0 error:&v14];
    v4 = v14;
    if (v10)
    {
      v11 = v10;
      v12 = v14;

      swift_unknownObjectRelease();
      return v11;
    }

    v3 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_14;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_15:

LABEL_16:
LABEL_17:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100191FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100192024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL AppDependencyType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100465610, v2);

  return v3 != 0;
}

unint64_t sub_1001920A4()
{
  result = qword_1004AD968;
  if (!qword_1004AD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD968);
  }

  return result;
}

Swift::Int sub_1001920F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10019216C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001921C0@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100465648, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t getEnumTagSinglePayload for AppDependencyType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppDependencyType(_WORD *result, int a2, int a3)
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

void sub_10019231C(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = 3.14159265;
      break;
    case 4:
      v1 = -*CGFloat.piDiv2.unsafeMutableAddressor();
      break;
    case 3:
      v1 = *CGFloat.piDiv2.unsafeMutableAddressor();
      break;
    default:
      v1 = 0.0;
      break;
  }

  CGAffineTransformMakeRotation(&v9, v1);
  *&m.a = *&v9.m11;
  *&m.c = *&v9.m13;
  *&m.tx = *&v9.m21;
  CATransform3DMakeAffineTransform(&v9, &m);
  v2 = sub_1001924AC();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 2) = v6;
  v7[3] = v2;
  *(v7 + 4) = v4;
  *&v9.m21 = sub_1001935C0;
  *&v9.m22 = v7;
  *&v9.m11 = _NSConcreteStackBlock;
  *&v9.m12 = 1107296256;
  *&v9.m13 = sub_100041180;
  *&v9.m14 = &unk_1004717E8;
  v8 = _Block_copy(&v9);

  [v5 animateWithDuration:0 delay:v8 options:0 animations:0.25 completion:0.25];
  _Block_release(v8);
}

double sub_1001924AC()
{
  v1 = *&v0[qword_1004A4F38];
  v2 = 0.0;
  if (v1)
  {
    v3 = *&v1[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = v1;
      v6 = v3;
      v7 = [v4 sharedApplication];
      v8 = [v7 userInterfaceLayoutDirection];

      if (v8 == 1)
      {
        [v0 frame];
        v10 = v9;
        [v6 frame];
        v11 = v10 - CGRectGetWidth(v13);
        if (qword_1004A0520 != -1)
        {
          swift_once();
        }

        v2 = v11 - *&qword_1004D5090;
      }

      else
      {
        if (qword_1004A0520 != -1)
        {
          swift_once();
        }

        v2 = *&qword_1004D5090;
      }

      [v0 frame];
      CGRectGetHeight(v14);
      if (qword_1004A0510 != -1)
      {
        swift_once();
      }

      [v6 frame];
      CGRectGetHeight(v15);
    }
  }

  return v2;
}

void sub_100192698(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[qword_1004A4F38];
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton);
      if (v6)
      {
        v7 = Strong;
        v8 = v6;
        [v8 frame];
        [v8 setFrame:{a1, a2}];

        Strong = v7;
      }
    }
  }
}

void sub_100192754()
{
  v3[0] = xmmword_1003E10D0;
  v3[1] = xmmword_1003E10E0;
  v4 = 0x4000000000000000;
  v1 = [objc_opt_self() shutterButtonWithSpec:v3];
  v2 = *(v0 + qword_1004A4F58);
  *(v0 + qword_1004A4F58) = v1;
}

uint64_t sub_1001927C4()
{
  v1 = sub_1001924AC();
  v3 = v2;
  if (qword_1004A0538 != -1)
  {
    swift_once();
  }

  v4 = *&qword_1004D50A8;
  v5 = objc_allocWithZone(type metadata accessor for UndoButtonSolarium());
  v6 = sub_1001B2FB4(v1, v3, v4, v4);
  v7 = *(v0 + qword_1004A4F38);
  *(v0 + qword_1004A4F38) = v6;

  return _objc_release_x1(v6, v7);
}

void sub_100192880()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_allocWithZone(type metadata accessor for HistoryButtonSolarium());
  v3 = v0;
  v4 = sub_10008A4A4(sub_100193548, v1, 0.0, 0.0, 0.0, 0.0);

  v5 = *&v3[qword_1004A4F48];
  *&v3[qword_1004A4F48] = v4;
}

uint64_t sub_100192938()
{

  StateValue.wrappedValue.getter();

  v0 = *(v2 + 16);

  if (!v0)
  {
    sub_10000F974(&unk_1004AFBD0);
    sub_1000EA7DC();
    return Subject<>.send()();
  }

  return result;
}

void sub_1001929C8()
{
  v1 = *(**(v0 + qword_1004AD970) + 144);

  v1(&v9, v2);

  v3 = *(v0 + qword_1004A4F48);
  if (v3)
  {
    v4 = v9;
    v5 = *&v3[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone];
    v6 = v3;
    if (v5)
    {
      [v5 setEnabled:v4 > 0];
    }

    v7 = *&v3[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad];
    if (v7)
    {
      v8 = v7;
      [v8 setEnabled:v4 > 0];
    }
  }
}

uint64_t sub_100192AD0()
{
  v1 = qword_1004AD970;
  v2 = *(**(v0 + qword_1004AD970) + 144);

  v2(&v14, v3);

  if (v15 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(**(Strong + 80) + 200);
      v7 = Strong;

      v9 = v6(v8);

      v10 = *(*v9 + 280);
      swift_unknownObjectRetain();
      v10(sub_1000889E4, v7);
    }

    v11 = *(**(v0 + v1) + 400);

    v12 = v11(&v14);
    *(v13 + 8) = 0;
    v12(&v14, 0);
  }

  return result;
}