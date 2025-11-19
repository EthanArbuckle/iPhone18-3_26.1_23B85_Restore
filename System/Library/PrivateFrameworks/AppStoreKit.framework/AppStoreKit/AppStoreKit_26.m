uint64_t sub_1E158FB4C(void *a1, void *a2, char a3, void *a4, int a5)
{
  v23 = a5;
  v9 = sub_1E1AF320C();
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_1E1AF324C();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E13006E4(0, &qword_1EE1E3430);
  v15 = sub_1E1AF68EC();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = v23;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  aBlock[4] = sub_1E15A4674;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_41;
  v17 = _Block_copy(aBlock);
  v18 = a4;
  v19 = a1;
  v20 = a2;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E15A4688(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v11, v17);
  _Block_release(v17);

  (*(v25 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v24);
}

void sub_1E158FE40(int a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v76 = a2;
  v98 = sub_1E1AF591C();
  v9 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v93 = a3;
    v75 = a1;
    v12 = qword_1EE1E35B8;
    v13 = a4;
    if (v12 != -1)
    {
      swift_once();
    }

    v97 = __swift_project_value_buffer(v98, qword_1EE216170);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    v15 = *(sub_1E1AF38EC() - 8);
    v16 = *(v15 + 72);
    v17 = *(v15 + 80);
    v18 = (v17 + 32) & ~v17;
    v89 = 4 * v16;
    v92 = v17;
    v100 = v14;
    v19 = swift_allocObject();
    v73 = xmmword_1E1B05090;
    *(v19 + 16) = xmmword_1E1B05090;
    v20 = v18;
    sub_1E1AF382C();
    v102 = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(v101[0]) = v93;
    sub_1E1AF38BC();
    sub_1E1308058(v101, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v90 = v16;
    v95 = 2 * v16;
    v21 = 3 * v16;
    v22 = sub_1E13006E4(0, &unk_1EE1E3300);
    v102 = v22;
    v101[0] = v13;
    v23 = v13;
    v96 = v21;
    sub_1E1AF38BC();
    sub_1E1308058(v101, &qword_1ECEB2DF0);
    sub_1E1AF548C();

    v74 = v23;
    v24 = [v23 messageActions];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1E13006E4(0, &unk_1ECEB4BA0);
      v27 = sub_1E1AF621C();

      v28 = v27 >> 62;
      if (v27 >> 62)
      {
LABEL_54:
        v29 = sub_1E1AF71CC();
      }

      else
      {
        v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = v20;
      if (v29)
      {
        v87 = v29;
        v86 = 5 * v90;
        v31 = swift_allocObject();
        v85 = xmmword_1E1B04930;
        *(v31 + 16) = xmmword_1E1B04930;
        sub_1E1AF382C();
        if (v28)
        {
          v32 = sub_1E1AF71CC();
        }

        else
        {
          v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v102 = MEMORY[0x1E69E6530];
        v101[0] = v32;
        sub_1E1AF38BC();
        sub_1E1308058(v101, &qword_1ECEB2DF0);
        sub_1E1AF382C();
        v102 = &type metadata for UnifiedMessagingPlacement;
        LOBYTE(v101[0]) = v93;
        sub_1E1AF38BC();
        sub_1E1308058(v101, &qword_1ECEB2DF0);
        sub_1E1AF382C();
        sub_1E1AF548C();

        if (v87 < 1)
        {
          __break(1u);
          return;
        }

        v43 = 0;
        v44 = v27;
        v84 = v27 & 0xC000000000000001;
        v83 = "). Iterating through them.";
        v72 = "cements dictionary:";
        v71 = "acementRequest (";
        v80 = "ctionary returned in";
        v78 = "lay for placement (";
        v77 = xmmword_1E1B02CD0;
        v79 = xmmword_1E1B03760;
        v82 = v27;
        v94 = v26;
        v81 = v20;
        while (1)
        {
          v99 = v43;
          v46 = v84 ? MEMORY[0x1E68FFD80](v43, v44) : *(v44 + 8 * v43 + 32);
          v47 = v46;
          *(swift_allocObject() + 16) = v85;
          v48 = v30;
          sub_1E1AF382C();
          v102 = v26;
          v101[0] = v47;
          v49 = v47;
          sub_1E1AF38BC();
          sub_1E1308058(v101, &qword_1ECEB2DF0);
          sub_1E1AF382C();
          v102 = &type metadata for UnifiedMessagingPlacement;
          v50 = v93;
          LOBYTE(v101[0]) = v93;
          sub_1E1AF38BC();
          sub_1E1308058(v101, &qword_1ECEB2DF0);
          sub_1E1AF382C();
          sub_1E1AF548C();

          v51 = [v49 placementsMap];
          if (v51)
          {
            break;
          }

          *(swift_allocObject() + 16) = v77;
          sub_1E1AF382C();
          v102 = v94;
          v101[0] = v49;
          v45 = v49;
          sub_1E1AF38BC();
          sub_1E1308058(v101, &qword_1ECEB2DF0);
          sub_1E1AF548C();

          v30 = v48;
          v44 = v82;
LABEL_24:
          v43 = v99 + 1;
          v26 = v94;
          if (v87 == v99 + 1)
          {

            if ((v75 & 1) == 0)
            {
              return;
            }

            v40 = v76;
            v41 = *(v76 + OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_engagement);
            LOBYTE(v101[0]) = v93;
LABEL_51:
            UnifiedMessagingPlacement.rawValue.getter();
            v68 = sub_1E1AF5DBC();

            v69 = sub_1E1AF5DBC();
            sub_1E13006E4(0, &qword_1EE1E3430);
            v70 = sub_1E1AF68EC();
            [v41 addObserver:v40 placement:v68 serviceType:v69 queue:v70];

            return;
          }
        }

        v52 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4BB0);
        v26 = MEMORY[0x1E69E6168];
        v91 = sub_1E1AF5C7C();

        v53 = v50;
        LOBYTE(v101[0]) = v50;
        v54 = UnifiedMessagingPlacement.rawValue.getter();
        v28 = v55;
        v56 = [v49 placementsMap];
        v57 = v49;
        if (v56)
        {
          v58 = v56;
          v27 = sub_1E1AF5C7C();

          if (*(v27 + 16))
          {
            v59 = sub_1E13018F8(v54, v28);
            v60 = v53;
            if (v61)
            {
              v62 = *(*(v27 + 56) + 8 * v59);

              v22 = v90;
              if (v62 >> 62)
              {
                v63 = sub_1E1AF71CC();
              }

              else
              {
                v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v20 = v81;
              if (v63)
              {

                if ((v62 & 0xC000000000000001) != 0)
                {
                  v64 = MEMORY[0x1E68FFD80](0, v62);
                }

                else
                {
                  if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_54;
                  }

                  v64 = *(v62 + 32);
                }

                v65 = v64;

                v66 = [v65 engagementRequest];
                if (v66)
                {
                  v67 = v66;
                  sub_1E1590EF8(v66);

                  v44 = v82;
                  v30 = v20;
                }

                else
                {
                  *(swift_allocObject() + 16) = v73;
                  sub_1E1AF382C();
                  v102 = sub_1E13006E4(0, &qword_1ECEB6180);
                  v101[0] = v65;
                  v91 = v65;
                  sub_1E1AF38BC();
                  sub_1E1308058(v101, &qword_1ECEB2DF0);
                  sub_1E1AF382C();
                  v102 = &type metadata for UnifiedMessagingPlacement;
                  LOBYTE(v101[0]) = v60;
                  sub_1E1AF38BC();
                  v30 = v20;
                  sub_1E1308058(v101, &qword_1ECEB2DF0);
                  sub_1E1AF548C();

                  v44 = v82;
                }

                goto LABEL_24;
              }

              v88 = v57;

              goto LABEL_44;
            }

            v88 = v49;
          }

          else
          {
            v88 = v49;

            v60 = v53;
          }

          v20 = v81;
        }

        else
        {
          v88 = v49;

          v60 = v53;
          v20 = v81;
        }

LABEL_44:
        *(swift_allocObject() + 16) = v79;
        v102 = &type metadata for UnifiedMessagingPlacement;
        LOBYTE(v101[0]) = v60;
        sub_1E1AF38BC();
        sub_1E1308058(v101, &qword_1ECEB2DF0);
        sub_1E1AF382C();
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6178);
        v101[0] = v91;
        sub_1E1AF38BC();
        sub_1E1308058(v101, &qword_1ECEB2DF0);
        sub_1E1AF548C();

        v44 = v82;
        v30 = v20;
        goto LABEL_24;
      }
    }

    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    sub_1E1AF382C();
    v102 = v22;
    v101[0] = v74;
    v38 = v74;
    sub_1E1AF38BC();
    sub_1E1308058(v101, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v102 = &type metadata for UnifiedMessagingPlacement;
    v39 = v93;
    LOBYTE(v101[0]) = v93;
    sub_1E1AF38BC();
    sub_1E1308058(v101, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF548C();

    if (v75)
    {
      v40 = v76;
      v41 = *(v76 + OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_engagement);
      LOBYTE(v101[0]) = v39;
      goto LABEL_51;
    }

    return;
  }

  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v33 = v98;
  v34 = __swift_project_value_buffer(v98, qword_1EE216170);
  (*(v9 + 16))(v11, v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v102 = &type metadata for UnifiedMessagingPlacement;
  LOBYTE(v101[0]) = a3;
  sub_1E1AF38BC();
  sub_1E1308058(v101, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  if (a5)
  {
    swift_getErrorValue();
    v35 = sub_1E1AF75AC();
    v37 = MEMORY[0x1E69E6158];
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v101[2] = 0;
  }

  v101[0] = v35;
  v101[1] = v36;
  v102 = v37;
  sub_1E1AF38BC();
  sub_1E1308058(v101, &qword_1ECEB2DF0);
  v42 = v98;
  sub_1E1AF548C();

  (*(v9 + 8))(v11, v42);
  if (a1)
  {
    v40 = v76;
    v41 = *(v76 + OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_engagement);
    LOBYTE(v101[0]) = a3;
    goto LABEL_51;
  }
}

uint64_t sub_1E1590EF8(void *a1)
{
  v2 = sub_1E1AF591C();
  v67 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v52 - v7;
  v8 = sub_1E1AF539C();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v64 = &v52 - v12;
  v58 = v13;
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v52 - v14;
  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_1EE216170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v63 = (2 * *(*(sub_1E1AF38EC() - 8) + 72));
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  *(&v70 + 1) = sub_1E13006E4(0, &unk_1ECEB5F50);
  *&v69 = a1;
  v16 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(&v69, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v53 = v16;
    v65 = Strong;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18 && (v19 = v18, v20 = [v18 rootViewController], v19, v20))
    {
      v67 = v20;
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      v21 = v54;
      v22 = v62;
      sub_1E1AF416C();
      type metadata accessor for ASKBagContract();
      v23 = swift_allocObject();
      v24 = v61;
      v25 = *(v61 + 32);
      v66 = (v61 + 32);
      v63 = v25;
      v25((v23 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag), v21, v22);
      *(v23 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = 0;
      v26 = v23 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 1;
      *&v69 = v23;
      v54 = MetricsTopicProvider.currentMetricsTopic.getter();
      v52 = v27;
      if (qword_1EE1E2F68 != -1)
      {
        swift_once();
      }

      v28 = v55;
      sub_1E1AF52FC();
      v29 = v57;
      sub_1E1AF532C();
      (*(v56 + 8))(v28, v29);
      v30 = v53;
      [v53 setAnonymousMetrics_];
      sub_1E1AF421C();
      v31 = v64;
      sub_1E1AF55EC();
      v32 = sub_1E1AF649C();
      v33 = v60;
      (*(*(v32 - 8) + 56))(v60, 1, 1, v32);
      v34 = v59;
      (*(v24 + 16))(v59, v31, v22);
      v35 = (*(v24 + 80) + 64) & ~*(v24 + 80);
      v36 = (v58 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v37 + 2) = 0;
      *(v37 + 3) = 0;
      v38 = v68;
      *(v37 + 4) = v30;
      *(v37 + 5) = v38;
      v39 = v52;
      *(v37 + 6) = v54;
      *(v37 + 7) = v39;
      v63(&v37[v35], v34, v22);
      v40 = v67;
      *&v37[v36] = v67;
      v41 = v30;
      v42 = v38;
      v43 = v40;
      sub_1E154AF74(0, 0, v33, &unk_1E1B19C80, v37);

      swift_setDeallocating();
      v44 = *(v24 + 8);
      v44(v23 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag, v22);
      swift_deallocClassInstance();

      return (v44)(v64, v22);
    }

    else
    {
      (*(v67 + 2))(v66, v15, v2);
      *(swift_allocObject() + 16) = xmmword_1E1B05090;
      sub_1E1AF382C();
      v46 = swift_unknownObjectWeakLoadStrong();
      v47 = v46;
      if (v46)
      {
        v46 = sub_1E13006E4(0, &qword_1ECEB5F60);
      }

      else
      {
        *(&v69 + 1) = 0;
        *&v70 = 0;
      }

      *&v69 = v47;
      *(&v70 + 1) = v46;
      sub_1E1AF38BC();
      sub_1E1308058(&v69, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      v48 = swift_unknownObjectWeakLoadStrong();
      if (v48 && (v49 = v48, v50 = [v48 rootViewController], v49, v50))
      {
        *(&v70 + 1) = sub_1E13006E4(0, &unk_1EE1D24E0);
        *&v69 = v50;
      }

      else
      {
        v69 = 0u;
        v70 = 0u;
      }

      sub_1E1AF38BC();
      sub_1E1308058(&v69, &qword_1ECEB2DF0);
      v51 = v66;
      sub_1E1AF548C();

      return (*(v67 + 1))(v51, v2);
    }
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t sub_1E15918DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v14;
  v8[8] = a4;
  v8[9] = a5;
  v11 = swift_task_alloc();
  v8[12] = v11;
  *v11 = v8;
  v11[1] = sub_1E1591998;

  return sub_1E1591C78(a6, a7);
}

uint64_t sub_1E1591998(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E1591A98, 0, 0);
}

uint64_t sub_1E1591A98()
{
  if (v0[13])
  {
    v1 = sub_1E1AF5C6C();
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  [v3 setMetricsOverlay_];

  v5 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:v3 bag:sub_1E1AF527C() presentingViewController:v2];
  swift_unknownObjectRelease();
  [v5 setDelegate_];
  v6 = [v5 presentEngagement];
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v0[6] = sub_1E15A45A4;
  v0[7] = v7;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E14CC840;
  v0[5] = &block_descriptor_30;
  v8 = _Block_copy(v0 + 2);
  v9 = v3;

  [v6 addFinishBlock_];
  _Block_release(v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E1591C78(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1591D48, 0, 0);
}

uint64_t sub_1E1591D48()
{
  Strong = swift_weakLoadStrong();
  v0[47] = Strong;
  if (Strong)
  {
    v3 = v0[41];
    v2 = v0[42];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CD0;
    *(inited + 32) = 0x6369706F74;
    v5 = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v3;
    *(inited + 56) = v2;
    *(inited + 72) = v5;
    *(inited + 80) = 0x746E6F4365676170;
    *(inited + 88) = 0xEB00000000747865;
    v6 = qword_1EE1F3430;

    if (v6 != -1)
    {
      swift_once();
    }

    v8 = *(off_1EE1F3438 + 2);
    v7 = *(off_1EE1F3438 + 3);
    *(inited + 120) = v5;
    v9 = 1701736302;
    if (v7)
    {
      v9 = v8;
    }

    v10 = 0xE400000000000000;
    if (v7)
    {
      v10 = v7;
    }

    *(inited + 96) = v9;
    *(inited + 104) = v10;

    v0[48] = sub_1E1303A74(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80);
    swift_arrayDestroy();
    v11 = type metadata accessor for MetricsIdStore();
    v12 = swift_task_alloc();
    v0[49] = v12;
    *v12 = v0;
    v12[1] = sub_1E1591F84;

    return MEMORY[0x1EEE166D0](v0 + 39, v11, v11);
  }

  else
  {

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_1E1591F84()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_1E15925C4;
  }

  else
  {
    v2 = sub_1E1592098;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1592098()
{
  v0[51] = v0[39];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F88);
  inited = swift_initStackObject();
  v0[52] = inited;
  *(inited + 16) = xmmword_1E1B02CD0;
  v2 = sub_1E1AF5DBC();
  v3 = objc_opt_self();
  v4 = [v3 keyWithName:v2 crossDeviceSync:1 isActiveITunesAccountRequired:1];

  if (qword_1EE1E2E60 != -1)
  {
    swift_once();
  }

  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[44];
  sub_1E1AF536C();
  sub_1E1AF532C();
  v8 = *(v6 + 8);
  v8(v5, v7);
  v9 = v0[35];
  v10 = v0[36];
  *(inited + 32) = v4;
  *(inited + 40) = v9;
  *(inited + 48) = v10;
  v11 = sub_1E1AF5DBC();
  v12 = [v3 keyWithName:v11 crossDeviceSync:0 isActiveITunesAccountRequired:0];

  if (qword_1ECEB1518 != -1)
  {
    swift_once();
  }

  v13 = v0[46];
  v14 = v0[44];
  sub_1E1AF536C();
  sub_1E1AF532C();
  v8(v13, v14);
  v15 = v0[37];
  v16 = v0[38];
  *(inited + 56) = v12;
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  v17 = swift_task_alloc();
  v0[53] = v17;
  *v17 = v0;
  v17[1] = sub_1E1592364;

  return sub_1E1603A6C(inited, 0);
}

uint64_t sub_1E1592364(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v5 = sub_1E15927FC;
  }

  else
  {
    *(v4 + 440) = a1;
    swift_setDeallocating();
    swift_arrayDestroy();
    v5 = sub_1E15924DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E15924DC()
{
  v8 = v0;
  v1 = v0[55];
  v2 = v0[48];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v2;
  sub_1E1429508(v1, sub_1E160785C, 0, isUniquelyReferenced_nonNull_native, &v7);

  v4 = sub_1E14C65A8(v7);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1E15925C4()
{
  v1 = v0[50];
  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE216170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v3 = v0[32];
  v4 = v0[33];
  v0[31] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 28);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF38BC();
  sub_1E1308058((v0 + 28), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  v6 = sub_1E14C65A8(v0[48]);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1E15927FC()
{

  v1 = v0[54];
  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE216170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v3 = v0[32];
  v4 = v0[33];
  v0[31] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 28);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF38BC();
  sub_1E1308058((v0 + 28), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  v6 = sub_1E14C65A8(v0[48]);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1E1592A3C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1E1AF591C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_1EE216170);
  (*(v7 + 16))(v9, v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B070F0;
  sub_1E1AF382C();
  v23 = sub_1E13006E4(0, &unk_1ECEB5F50);
  v20 = a3;
  v11 = a3;
  sub_1E1AF38BC();
  sub_1E1308058(&v20, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  if (a1)
  {
    v12 = sub_1E13006E4(0, &qword_1ECEB5F68);
    v13 = a1;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v21 = 0;
    v22 = 0;
  }

  v20 = v13;
  v23 = v12;
  v14 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(&v20, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  if (a2)
  {
    swift_getErrorValue();
    v15 = sub_1E1AF75AC();
    v17 = MEMORY[0x1E69E6158];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v22 = 0;
  }

  v20 = v15;
  v21 = v16;
  v23 = v17;
  sub_1E1AF38BC();
  sub_1E1308058(&v20, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  return (*(v7 + 8))(v9, v6);
}

uint64_t SheetEngagementManager.engagementTaskViewController(_:handleDynamicDelegateAction:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = [a2 identifier];
  v14 = sub_1E1AF5DFC();
  v16 = v15;

  if (v14 == 0xD00000000000001ALL && 0x80000001E1B66890 == v16)
  {
  }

  else
  {
    v18 = sub_1E1AF74AC();

    v19 = 0;
    if ((v18 & 1) == 0)
    {
      return v19;
    }
  }

  v20 = sub_1E1AF649C();
  v19 = 1;
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  sub_1E1AF644C();
  v21 = v4;
  v22 = a1;

  v23 = sub_1E1AF643C();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v21;
  v24[5] = v22;
  v24[6] = a3;
  v24[7] = a4;
  sub_1E154AF74(0, 0, v12, &unk_1E1B19A80, v24);

  return v19;
}

uint64_t sub_1E1593280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[12] = sub_1E1AF644C();
  v7[13] = sub_1E1AF643C();
  v9 = swift_task_alloc();
  v7[14] = v9;
  *v9 = v7;
  v9[1] = sub_1E1593340;

  return sub_1E1593608(a5);
}

uint64_t sub_1E1593340()
{
  *(*v1 + 120) = v0;

  v3 = sub_1E1AF63CC();
  if (v0)
  {
    v4 = sub_1E1593548;
  }

  else
  {
    v4 = sub_1E159349C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E159349C()
{
  v1 = *(v0 + 80);

  *(v0 + 72) = MEMORY[0x1E69E6370];
  *(v0 + 48) = 1;
  v1(v0 + 48, 0);
  sub_1E1308058(v0 + 48, &qword_1ECEB2DF0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E1593548()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);

  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v3 = v1;
  v2(v0 + 16, v1);

  sub_1E1308058(v0 + 16, &qword_1ECEB2DF0);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E1593608(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  sub_1E1AF389C();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for ActionIntent();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v2[21] = swift_task_alloc();
  v3 = sub_1E1AEFCCC();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  sub_1E1AF644C();
  v2[25] = sub_1E1AF643C();
  v5 = sub_1E1AF63CC();
  v2[26] = v5;
  v2[27] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E1593790, v5, v4);
}

uint64_t sub_1E1593790()
{
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (!Strong)
  {

    if (qword_1EE1E35B8 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE216170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v7 = v0[1];
    goto LABEL_7;
  }

  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];
  sub_1E1AEFCAC();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[21];

    sub_1E1308058(v5, &unk_1ECEB4B60);
    sub_1E15A4400();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();

    v7 = v0[1];
LABEL_7:

    return v7();
  }

  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  v14 = v0[19];
  v13 = v0[20];
  (*(v11 + 32))(v10, v0[21], v12);
  v15 = v14[5];
  v16 = *(v11 + 16);
  v0[29] = v16;
  v0[30] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v13 + v15, v10, v12);
  strcpy(v13, "ActionIntent");
  *(v13 + 13) = 0;
  *(v13 + 14) = -5120;
  *(v13 + v14[6]) = 0;
  v17 = v13 + v14[7];
  *v17 = xmmword_1E1B04490;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 16) = 0;
  *(v17 + 40) = 0;
  v18 = type metadata accessor for JSIntentDispatcher();
  v19 = swift_task_alloc();
  v0[31] = v19;
  *v19 = v0;
  v19[1] = sub_1E1593B78;

  return MEMORY[0x1EEE166D0](v0 + 13, v18, v18);
}

uint64_t sub_1E1593B78()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_1E15943A8;
  }

  else
  {
    v5 = sub_1E1593CB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E1593CB4()
{
  v1 = v0[13];
  v0[33] = v1;
  v8 = (*(*v1 + 112) + **(*v1 + 112));
  v2 = swift_task_alloc();
  v0[34] = v2;
  v3 = sub_1E15A4688(&qword_1EE1E06D8, type metadata accessor for ActionIntent);
  *v2 = v0;
  v2[1] = sub_1E1593E2C;
  v4 = v0[28];
  v6 = v0[19];
  v5 = v0[20];

  return v8(v0 + 15, v5, v4, "", 0, 2, v6, v3);
}

uint64_t sub_1E1593E2C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_1E1594084;
  }

  else
  {
    v5 = sub_1E1593F68;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E1593F68()
{
  v1 = v0[16];

  sub_1E15948EC(v2, v1);
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = v0[20];

  sub_1E14D28AC(v6);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E1594084()
{

  v1 = v0[35];
  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v3 = v0[24];
  v13 = v0[23];
  v4 = v0[22];
  v12 = v0[20];
  v11 = sub_1E1AF591C();
  __swift_project_value_buffer(v11, qword_1EE216170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v2(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  swift_getErrorValue();
  v6 = sub_1E1AF75AC();
  v0[9] = MEMORY[0x1E69E6158];
  v0[6] = v6;
  v0[7] = v7;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  sub_1E15A4400();
  swift_allocError();
  *v8 = v1;
  swift_willThrow();

  sub_1E14D28AC(v12);
  (*(v13 + 8))(v3, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E15943A8()
{

  v1 = v0[32];
  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v3 = v0[24];
  v13 = v0[23];
  v4 = v0[22];
  v12 = v0[20];
  v11 = sub_1E1AF591C();
  __swift_project_value_buffer(v11, qword_1EE216170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v2(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  swift_getErrorValue();
  v6 = sub_1E1AF75AC();
  v0[9] = MEMORY[0x1E69E6158];
  v0[6] = v6;
  v0[7] = v7;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  sub_1E15A4400();
  swift_allocError();
  *v8 = v1;
  swift_willThrow();

  sub_1E14D28AC(v12);
  (*(v13 + 8))(v3, v4);

  v9 = v0[1];

  return v9();
}

void sub_1E1594778(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E134FD1C(a1, v12, &qword_1ECEB2DF0);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1Tm(v12, v13);
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = sub_1E1AF748C();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_1E1AEFB1C();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_1E15948EC(uint64_t a1, void *a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = (v2 + OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_flowActionViewControllerFactory);
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    v8 = type metadata accessor for FlowAction();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;

      sub_1E1300E34(v7);
      v11 = v7(v10);
      if (v11)
      {
        v12 = v11;
        v13 = [a2 navigationController];
        if (v13)
        {
          v14 = v13;
          [v13 pushViewController:v12 animated:1];
        }

        else
        {
          if (qword_1EE1E35B8 != -1)
          {
            swift_once();
          }

          v22 = sub_1E1AF591C();
          __swift_project_value_buffer(v22, qword_1EE216170);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
          sub_1E1AF382C();
          sub_1E1AF54AC();

          sub_1E15A4400();
          swift_allocError();
          *v23 = 4;
          swift_willThrow();
        }
      }

      else
      {
        if (qword_1EE1E35B8 != -1)
        {
          swift_once();
        }

        v20 = sub_1E1AF591C();
        v26 = __swift_project_value_buffer(v20, qword_1EE216170);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
        sub_1E1AF382C();
        v25 = v8;
        v24[0] = v10;

        sub_1E1AF38BC();
        sub_1E1308058(v24, &qword_1ECEB2DF0);
        sub_1E1AF548C();

        sub_1E15A4400();
        swift_allocError();
        *v21 = 3;
        swift_willThrow();
      }
    }

    else
    {
      sub_1E1300E34(v7);
      if (qword_1EE1E35B8 != -1)
      {
        swift_once();
      }

      v18 = sub_1E1AF591C();
      __swift_project_value_buffer(v18, qword_1EE216170);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v25 = type metadata accessor for Action();
      v24[0] = a1;

      sub_1E1AF385C();
      sub_1E1308058(v24, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF54AC();

      sub_1E15A4400();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
    }

    return sub_1E1300EA8(v7);
  }

  else
  {
    if (qword_1EE1E35B8 != -1)
    {
      swift_once();
    }

    v15 = sub_1E1AF591C();
    __swift_project_value_buffer(v15, qword_1EE216170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    sub_1E15A4400();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }
}

id SheetEngagementManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SheetEngagementManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E15951A4(uint64_t *a1)
{
  sub_1E1AF762C();
  PageFacets.Facet.hash(into:)(v4);
  v2 = sub_1E1AF767C();

  return sub_1E1596000(a1, v2);
}

unint64_t sub_1E1595210(unsigned __int8 a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  v2 = sub_1E1AF767C();

  return sub_1E15962A4(a1, v2);
}

unint64_t sub_1E15952E8(uint64_t a1)
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  v2 = sub_1E1AF767C();

  return sub_1E1596454(a1, v2);
}

unint64_t sub_1E1595354(uint64_t a1)
{
  sub_1E1AF468C();
  v2 = MEMORY[0x1E69AB1C8];
  sub_1E15A4688(&qword_1EE1D29A0, MEMORY[0x1E69AB1C8]);
  v3 = sub_1E1AF5D0C();
  return sub_1E1596E94(a1, v3, MEMORY[0x1E69AB1C8], &qword_1EE1D2998, v2, MEMORY[0x1E69AB1D8]);
}

unint64_t sub_1E1595428(uint64_t a1, uint64_t a2)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v4 = sub_1E1AF767C();
  return sub_1E1301970(a1, a2, v4);
}

unint64_t sub_1E15954C8(char a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  v2 = sub_1E1AF767C();

  return sub_1E1596884(a1 & 1, v2);
}

uint64_t sub_1E159558C(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = sub_1E1AF762C();
  a2(v5);
  sub_1E1AF5F0C();

  v6 = sub_1E1AF767C();

  return a3(a1, v6);
}

unint64_t sub_1E159562C(uint64_t a1)
{
  sub_1E1AEFEAC();
  v2 = MEMORY[0x1E69695A8];
  sub_1E15A4688(&qword_1EE1FADB0, MEMORY[0x1E69695A8]);
  v3 = sub_1E1AF5D0C();
  return sub_1E1596E94(a1, v3, MEMORY[0x1E69695A8], &qword_1EE1FADA8, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1E1595700(uint64_t a1)
{
  sub_1E1AF5DFC();
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v2 = sub_1E1AF767C();

  return sub_1E1463944(a1, v2);
}

unint64_t sub_1E1595790(char a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  v2 = sub_1E1AF767C();

  return sub_1E1597034(a1, v2);
}

unint64_t sub_1E1595814(uint64_t a1)
{
  sub_1E1AF227C();
  v2 = MEMORY[0x1E697E730];
  sub_1E15A4688(&qword_1ECEB5EF0, MEMORY[0x1E697E730]);
  v3 = sub_1E1AF5D0C();
  return sub_1E1596E94(a1, v3, MEMORY[0x1E697E730], &qword_1ECEB5EF8, v2, MEMORY[0x1E697E750]);
}

unint64_t sub_1E15958E8(unsigned __int8 *a1)
{
  sub_1E1AF762C();
  OfferTitleType.rawValue.getter();
  sub_1E1AF5F0C();

  v2 = sub_1E1AF767C();

  return sub_1E1597120(a1, v2);
}

unint64_t sub_1E15959C8(unsigned __int8 *a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  v2 = sub_1E1AF767C();

  return sub_1E1597604(a1, v2);
}

unint64_t sub_1E1595AA4(uint64_t a1)
{
  sub_1E1AF459C();
  v2 = MEMORY[0x1E69AB188];
  sub_1E15A4688(&qword_1ECEB5FA0, MEMORY[0x1E69AB188]);
  v3 = sub_1E1AF5D0C();
  return sub_1E1596E94(a1, v3, MEMORY[0x1E69AB188], &qword_1ECEB5FA8, v2, MEMORY[0x1E69AB198]);
}

unint64_t sub_1E1595B78(uint64_t *a1)
{
  sub_1E1AF762C();
  if (a1[1])
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  sub_1E1AF6D1C();
  sub_1E1AF5F0C();
  v2 = sub_1E1AF767C();

  return sub_1E1597814(a1, v2);
}

unint64_t sub_1E1595C30(uint64_t a1)
{
  sub_1E1AF762C();
  MEMORY[0x1E6900360](a1);
  v2 = sub_1E1AF767C();

  return sub_1E15977A8(a1, v2);
}

unint64_t sub_1E1595CEC(unsigned __int8 a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  v2 = sub_1E1AF767C();

  return sub_1E1597A9C(a1, v2);
}

unint64_t sub_1E1595DFC(unsigned __int8 a1)
{
  v2 = sub_1E19274AC();

  return sub_1E1597C6C(a1, v2);
}

unint64_t sub_1E1595E40(void *a1)
{
  sub_1E1AF762C();
  MEMORY[0x1E6900360]([a1 hash]);
  v2 = sub_1E1AF767C();

  return sub_1E1597F60(a1, v2);
}

unint64_t sub_1E1595EB8(uint64_t a1)
{
  v2 = *(a1 + 112);
  v15 = *(a1 + 96);
  v16 = v2;
  v17 = *(a1 + 128);
  v18 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = v3;
  v4 = *(a1 + 80);
  v13 = *(a1 + 64);
  v14 = v4;
  v5 = *(a1 + 16);
  v9 = *a1;
  v10 = v5;
  sub_1E1AF762C();
  sub_1E1933EC8(v8);
  v6 = sub_1E1AF767C();

  return sub_1E1598004(a1, v6);
}

unint64_t sub_1E1595F58(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  MEMORY[0x1E6900360](a3);
  sub_1E1AF764C();
  v8 = sub_1E1AF767C();

  return sub_1E1598190(a1, a2, a3, a4, v8);
}

unint64_t sub_1E1596000(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *a1;
    v8 = a1[1];
    v21 = *(a1 + 89);
    do
    {
      sub_1E141D0E8(*(v2 + 48) + 136 * v4, v22);
      v9 = v22[0] == v7 && v22[1] == v8;
      if (!v9 && (sub_1E1AF74AC() & 1) == 0)
      {
        goto LABEL_43;
      }

      v10 = v22[4] == a1[4] && v22[5] == a1[5];
      if (!v10 && (sub_1E1AF74AC() & 1) == 0 || (v22[2] != a1[2] || v22[3] != a1[3]) && (sub_1E1AF74AC() & 1) == 0)
      {
        goto LABEL_43;
      }

      if (v23)
      {
        if (v23 == 1)
        {
          v11 = 0x6553656C676E6973;
        }

        else
        {
          v11 = 0xD000000000000011;
        }

        v12 = 0xEF6E6F697463656CLL;
        if (v23 == 1)
        {
          v13 = 0xEF6E6F697463656CLL;
        }

        else
        {
          v13 = 0x80000001E1B56180;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        v11 = 0x656C67676F74;
        v12 = 0xEF6E6F697463656CLL;
      }

      v14 = 0xD000000000000011;
      if (*(a1 + 48) == 1)
      {
        v14 = 0x6553656C676E6973;
      }

      else
      {
        v12 = 0x80000001E1B56180;
      }

      if (*(a1 + 48))
      {
        v15 = v14;
      }

      else
      {
        v15 = 0x656C67676F74;
      }

      if (*(a1 + 48))
      {
        v16 = v12;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      if (v11 == v15 && v13 == v16)
      {
      }

      else
      {
        v17 = sub_1E1AF74AC();

        if ((v17 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      if ((sub_1E16B0884(v25, a1[8]) & 1) != 0 && (sub_1E156EDEC(v24, a1[7]) & 1) != 0 && v26 == *(a1 + 88) && ((v27 ^ v21) & 1) == 0)
      {
        v18 = v28;
        v19 = *(a1 + 90);
        sub_1E141D144(v22);
        if (v18 == v19)
        {
          return v4;
        }

        goto LABEL_44;
      }

LABEL_43:
      sub_1E141D144(v22);
LABEL_44:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E15962A4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x736275732D6E6F6ELL;
          v8 = 0xEE00726562697263;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x6269726373627573;
          v8 = 0xEA00000000007265;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE700000000000000;
            if (v7 != 0x746C7561666564)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x746C7561666564;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x736275732D6E6F6ELL;
      }

      else
      {
        v10 = 0x6269726373627573;
      }

      if (v9 == 1)
      {
        v11 = 0xEE00726562697263;
      }

      else
      {
        v11 = 0xEA00000000007265;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1E1AF74AC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1E1596454(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E141CF00(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E68FFC60](v9, a1);
      sub_1E138867C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E159651C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 5)
      {
        v20 = 0xD000000000000021;
        v21 = 0xD00000000000001BLL;
        if (v7 != 10)
        {
          v21 = 0xD000000000000029;
        }

        v22 = "ing_ExpandedMedia";
        if (v7 != 10)
        {
          v22 = "downloadingOrdering_Compact";
        }

        if (v7 != 9)
        {
          v20 = v21;
        }

        v23 = "downloadingOrdering";
        if (v7 != 9)
        {
          v23 = v22;
        }

        v24 = 0xD000000000000019;
        v25 = 0xD000000000000027;
        if (v7 != 7)
        {
          v25 = 0xD000000000000013;
        }

        v26 = "purchasedOrdering_Compact";
        if (v7 != 7)
        {
          v26 = "g_ExpandedMedia_Compact";
        }

        if (v7 != 6)
        {
          v24 = v25;
        }

        v27 = "ring_ExpandedMedia_Compact";
        if (v7 != 6)
        {
          v27 = v26;
        }

        if (*(*(v2 + 48) + v4) <= 8u)
        {
          v16 = v24;
        }

        else
        {
          v16 = v20;
        }

        if (*(*(v2 + 48) + v4) <= 8u)
        {
          v17 = v27;
        }

        else
        {
          v17 = v23;
        }

        if (v6 > 5)
        {
LABEL_27:
          if (v6 > 8)
          {
            if (v6 == 9)
            {
              v18 = 0xD000000000000021;
              v19 = "downloadingOrdering";
            }

            else if (v6 == 10)
            {
              v18 = 0xD00000000000001BLL;
              v19 = "ing_ExpandedMedia";
            }

            else
            {
              v18 = 0xD000000000000029;
              v19 = "downloadingOrdering_Compact";
            }
          }

          else if (v6 == 6)
          {
            v18 = 0xD000000000000019;
            v19 = "ring_ExpandedMedia_Compact";
          }

          else if (v6 == 7)
          {
            v18 = 0xD000000000000027;
            v19 = "purchasedOrdering_Compact";
          }

          else
          {
            v18 = 0xD000000000000013;
            v19 = "g_ExpandedMedia_Compact";
          }

          goto LABEL_72;
        }
      }

      else
      {
        v8 = 0xD000000000000014;
        v9 = 0xD00000000000001FLL;
        v10 = 0xD00000000000001CLL;
        if (v7 != 4)
        {
          v10 = 0xD00000000000002ALL;
        }

        v11 = "purchasedOrdering_ExpandedMedia";
        if (v7 != 4)
        {
          v11 = "notPurchasedOrdering_Compact";
        }

        if (v7 != 3)
        {
          v9 = v10;
        }

        v12 = "purchasedOrdering";
        if (v7 != 3)
        {
          v12 = v11;
        }

        v13 = 0xD000000000000022;
        if (v7 != 1)
        {
          v13 = 0xD000000000000011;
        }

        v14 = "notPurchasedOrdering";
        if (v7 != 1)
        {
          v14 = "ring_ExpandedMedia";
        }

        if (*(*(v2 + 48) + v4))
        {
          v8 = v13;
        }

        v15 = "ockup";
        if (*(*(v2 + 48) + v4))
        {
          v15 = v14;
        }

        if (*(*(v2 + 48) + v4) <= 2u)
        {
          v16 = v8;
        }

        else
        {
          v16 = v9;
        }

        if (*(*(v2 + 48) + v4) <= 2u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v12;
        }

        if (v6 > 5)
        {
          goto LABEL_27;
        }
      }

      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v18 = 0xD00000000000001FLL;
          v19 = "purchasedOrdering";
        }

        else if (v6 == 4)
        {
          v18 = 0xD00000000000001CLL;
          v19 = "purchasedOrdering_ExpandedMedia";
        }

        else
        {
          v18 = 0xD00000000000002ALL;
          v19 = "notPurchasedOrdering_Compact";
        }
      }

      else if (v6)
      {
        if (v6 == 1)
        {
          v18 = 0xD000000000000022;
          v19 = "notPurchasedOrdering";
        }

        else
        {
          v18 = 0xD000000000000011;
          v19 = "ring_ExpandedMedia";
        }
      }

      else
      {
        v18 = 0xD000000000000014;
        v19 = "ockup";
      }

LABEL_72:
      if (v16 == v18 && (v17 | 0x8000000000000000) == (v19 | 0x8000000000000000))
      {

        return v4;
      }

      v28 = sub_1E1AF74AC();

      if ((v28 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1E1596884(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 7304045;
    }

    else
    {
      v6 = 1701736302;
    }

    if (a1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 7304045 : 1701736302;
      v9 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1E1AF74AC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1E15969B0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x647261646E617473;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x616D7269666E6F63;
          v7 = 0xEC0000006E6F6974;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x80000001E1B56B20;
          break;
        case 3:
          v8 = 0xD000000000000015;
          v7 = 0x80000001E1B56B40;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1852141679;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x657461647075;
          break;
        case 6:
          v8 = 0x64616F6C6E776F64;
          break;
        case 7:
          v8 = 0x6573616863727570;
          v7 = 0xE900000000000064;
          break;
        case 8:
          v8 = 0x64616F6C6E776F64;
          goto LABEL_21;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x6C61697274;
          break;
        case 0xA:
          v8 = 0x6373627553746F6ELL;
          v7 = 0xED00006465626972;
          break;
        case 0xB:
          v8 = 0x6269726373627573;
          goto LABEL_21;
        case 0xC:
          v8 = 0x7463697274736572;
LABEL_21:
          v7 = 0xEA00000000006465;
          break;
        case 0xD:
          v8 = 0xD000000000000012;
          v7 = 0x80000001E1B56BB0;
          break;
        case 0xE:
          v8 = 0xD000000000000015;
          v7 = 0x80000001E1B56BD0;
          break;
        case 0xF:
          v8 = 0xD000000000000014;
          v7 = 0x80000001E1B56BF0;
          break;
        case 0x10:
          v8 = 0xD000000000000017;
          v7 = 0x80000001E1B56C10;
          break;
        case 0x11:
          v8 = 0xD000000000000013;
          v7 = 0x80000001E1B56C30;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x647261646E617473;
      switch(a1)
      {
        case 1:
          v9 = 0xEC0000006E6F6974;
          if (v8 == 0x616D7269666E6F63)
          {
            goto LABEL_53;
          }

          goto LABEL_54;
        case 2:
          v9 = 0x80000001E1B56B20;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 3:
          v9 = 0x80000001E1B56B40;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 4:
          v9 = 0xE400000000000000;
          if (v8 != 1852141679)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 5:
          v9 = 0xE600000000000000;
          if (v8 != 0x657461647075)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 6:
          if (v8 != 0x64616F6C6E776F64)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 7:
          v9 = 0xE900000000000064;
          if (v8 != 0x6573616863727570)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 8:
          v11 = 0x64616F6C6E776F64;
          goto LABEL_58;
        case 9:
          v9 = 0xE500000000000000;
          if (v8 != 0x6C61697274)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 10:
          v10 = 0x6373627553746F6ELL;
          v9 = 0xED00006465626972;
          goto LABEL_52;
        case 11:
          v11 = 0x6269726373627573;
          goto LABEL_58;
        case 12:
          v11 = 0x7463697274736572;
LABEL_58:
          v9 = 0xEA00000000006465;
          if (v8 != v11)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 13:
          v9 = 0x80000001E1B56BB0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 14:
          v9 = 0x80000001E1B56BD0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 15:
          v9 = 0x80000001E1B56BF0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 16:
          v9 = 0x80000001E1B56C10;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 17:
          v9 = 0x80000001E1B56C30;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        default:
LABEL_52:
          if (v8 != v10)
          {
            goto LABEL_54;
          }

LABEL_53:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_54:
          v12 = sub_1E1AF74AC();

          if (v12)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1E1596E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1E15A4688(v23, v24);
      v19 = sub_1E1AF5DAC();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1E1597034(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = qword_1E1B19EC8[a1];
    while (qword_1E1B19EC8[*(*(v2 + 48) + v4)] != v6)
    {
      v7 = sub_1E1AF74AC();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1E1597120(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x647261646E617473;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x616D7269666E6F63;
          v7 = 0xEC0000006E6F6974;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x80000001E1B56B20;
          break;
        case 3:
          v8 = 0xD000000000000015;
          v7 = 0x80000001E1B56B40;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1852141679;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x657461647075;
          break;
        case 6:
          v8 = 0x64616F6C6E776F64;
          break;
        case 7:
          v8 = 0x6573616863727570;
          v7 = 0xE900000000000064;
          break;
        case 8:
          v8 = 0x64616F6C6E776F64;
          goto LABEL_21;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x6C61697274;
          break;
        case 0xA:
          v8 = 0x6373627553746F6ELL;
          v7 = 0xED00006465626972;
          break;
        case 0xB:
          v8 = 0x6269726373627573;
          goto LABEL_21;
        case 0xC:
          v8 = 0x7463697274736572;
LABEL_21:
          v7 = 0xEA00000000006465;
          break;
        case 0xD:
          v8 = 0xD000000000000012;
          v7 = 0x80000001E1B56BB0;
          break;
        case 0xE:
          v8 = 0xD000000000000015;
          v7 = 0x80000001E1B56BD0;
          break;
        case 0xF:
          v8 = 0xD000000000000014;
          v7 = 0x80000001E1B56BF0;
          break;
        case 0x10:
          v8 = 0xD000000000000017;
          v7 = 0x80000001E1B56C10;
          break;
        case 0x11:
          v8 = 0xD000000000000013;
          v7 = 0x80000001E1B56C30;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x647261646E617473;
      switch(v6)
      {
        case 1:
          v9 = 0xEC0000006E6F6974;
          if (v8 == 0x616D7269666E6F63)
          {
            goto LABEL_53;
          }

          goto LABEL_54;
        case 2:
          v9 = 0x80000001E1B56B20;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 3:
          v9 = 0x80000001E1B56B40;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 4:
          v9 = 0xE400000000000000;
          if (v8 != 1852141679)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 5:
          v9 = 0xE600000000000000;
          if (v8 != 0x657461647075)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 6:
          if (v8 != 0x64616F6C6E776F64)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 7:
          v9 = 0xE900000000000064;
          if (v8 != 0x6573616863727570)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 8:
          v11 = 0x64616F6C6E776F64;
          goto LABEL_58;
        case 9:
          v9 = 0xE500000000000000;
          if (v8 != 0x6C61697274)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 10:
          v10 = 0x6373627553746F6ELL;
          v9 = 0xED00006465626972;
          goto LABEL_52;
        case 11:
          v11 = 0x6269726373627573;
          goto LABEL_58;
        case 12:
          v11 = 0x7463697274736572;
LABEL_58:
          v9 = 0xEA00000000006465;
          if (v8 != v11)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 13:
          v9 = 0x80000001E1B56BB0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 14:
          v9 = 0x80000001E1B56BD0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 15:
          v9 = 0x80000001E1B56BF0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 16:
          v9 = 0x80000001E1B56C10;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 17:
          v9 = 0x80000001E1B56C30;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        default:
LABEL_52:
          if (v8 != v10)
          {
            goto LABEL_54;
          }

LABEL_53:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_54:
          v12 = sub_1E1AF74AC();

          if (v12)
          {
            return v4;
          }

          v4 = (v4 + 1) & v5;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1E1597604(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x736275732D6E6F6ELL;
          v8 = 0xEE00726562697263;
          if (!v6)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x6269726373627573;
          v8 = 0xEA00000000007265;
          if (!v6)
          {
LABEL_17:
            v10 = 0xE700000000000000;
            if (v7 != 0x746C7561666564)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x746C7561666564;
        if (!v6)
        {
          goto LABEL_17;
        }
      }

      if (v6 == 1)
      {
        v9 = 0x736275732D6E6F6ELL;
      }

      else
      {
        v9 = 0x6269726373627573;
      }

      if (v6 == 1)
      {
        v10 = 0xEE00726562697263;
      }

      else
      {
        v10 = 0xEA00000000007265;
      }

      if (v7 != v9)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v10)
      {

        return v4;
      }

LABEL_19:
      v11 = sub_1E1AF74AC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1E15977A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E1597814(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v20 = ~v4;
    v7 = a1[1];
    v19 = *a1;
    do
    {
      v8 = (*(v2 + 48) + 40 * v5);
      v10 = v8[1];
      v9 = v8[2];
      v11 = v8[3];
      v12 = v8[4];
      if (v10)
      {
        if (!v7)
        {
          goto LABEL_4;
        }

        v13 = *v8 == v19 && v10 == v7;
        if (!v13 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v7)
      {
        goto LABEL_4;
      }

      sub_1E13006E4(0, &qword_1EE1E31E0);

      v14 = v9;

      if (sub_1E1AF6D0C())
      {
        if (v11 == a1[3] && v12 == a1[4])
        {

          return v5;
        }

        v16 = sub_1E1AF74AC();

        v2 = v18;
        if (v16)
        {
          return v5;
        }
      }

      else
      {

        v2 = v18;
      }

LABEL_4:
      v5 = (v5 + 1) & v20;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E15979D0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1E13006E4(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1E1AF6D0C();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E1597A9C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v5 = *(*(v22 + 48) + v4);
      v6 = 0xD000000000000013;
      v7 = v5 == 2 ? 0x686374615777656ELL : 0xD000000000000013;
      v8 = v5 == 2 ? 0xEF676E6972696150 : 0x80000001E1B57920;
      v9 = *(*(v22 + 48) + v4) ? 0xD000000000000010 : 0x7070416F5477656ELL;
      v10 = *(*(v22 + 48) + v4) ? 0x80000001E1B578F0 : 0xED000065726F7453;
      v11 = *(*(v22 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v22 + 48) + v4) <= 1u ? v10 : v8;
      if (v21 == 2)
      {
        v6 = 0x686374615777656ELL;
        v13 = 0xEF676E6972696150;
      }

      else
      {
        v13 = 0x80000001E1B57920;
      }

      v14 = v21 ? 0xD000000000000010 : 0x7070416F5477656ELL;
      v15 = v21 ? 0x80000001E1B578F0 : 0xED000065726F7453;
      v16 = v21 <= 1 ? v14 : v6;
      v17 = v21 <= 1 ? v15 : v13;
      if (v11 == v16 && v12 == v17)
      {
        break;
      }

      v18 = sub_1E1AF74AC();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1E1597C6C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v11 = 0xD000000000000013;
            v12 = 0x80000001E1B568C0;
          }

          else
          {
            v11 = 0x6573616863727570;
            v12 = 0xEF79726F74736948;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x74666947646E6573;
          }

          else
          {
            v11 = 0x6853796C696D6166;
          }

          if (v6 == 4)
          {
            v12 = 0xE800000000000000;
          }

          else
          {
            v12 = 0xED0000676E697261;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0x6D6565646572;
        }

        else
        {
          v7 = 0x73646E7546646461;
        }

        if (v6 == 2)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xE800000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v9 = 0x6341657461657263;
        }

        else
        {
          v9 = 0x44746E756F636361;
        }

        if (v6)
        {
          v10 = 0xED0000746E756F63;
        }

        else
        {
          v10 = 0xEE00736C69617465;
        }

        if (v6 <= 1)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (v6 <= 1)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = 0xD000000000000013;
      if (v5 != 6)
      {
        v13 = 0x6573616863727570;
      }

      v14 = 0xEF79726F74736948;
      if (v5 == 6)
      {
        v14 = 0x80000001E1B568C0;
      }

      v15 = 0x74666947646E6573;
      if (v5 != 4)
      {
        v15 = 0x6853796C696D6166;
      }

      v16 = 0xED0000676E697261;
      if (v5 == 4)
      {
        v16 = 0xE800000000000000;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x6D6565646572;
      }

      else
      {
        v17 = 0x73646E7546646461;
      }

      if (v5 == 2)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      if (v5)
      {
        v19 = 0x6341657461657263;
      }

      else
      {
        v19 = 0x44746E756F636361;
      }

      if (v5)
      {
        v20 = 0xED0000746E756F63;
      }

      else
      {
        v20 = 0xEE00736C69617465;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_1E1AF74AC();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_1E1597F60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      if ([*(*(v2 + 48) + 8 * v4) isEqual_])
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E1598004(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v39[6] = *(a1 + 96);
  v39[7] = v3;
  v39[8] = *(a1 + 128);
  v40 = *(a1 + 144);
  v4 = *(a1 + 48);
  v39[2] = *(a1 + 32);
  v39[3] = v4;
  v5 = *(a1 + 80);
  v39[4] = *(a1 + 64);
  v39[5] = v5;
  v6 = *(a1 + 16);
  v39[0] = *a1;
  v39[1] = v6;
  v7 = -1 << *(v2 + 32);
  v8 = a2 & ~v7;
  if ((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    do
    {
      v10 = *(v2 + 48) + 152 * v8;
      v11 = *(v10 + 16);
      v35[0] = *v10;
      v35[1] = v11;
      v12 = *(v10 + 80);
      v14 = *(v10 + 32);
      v13 = *(v10 + 48);
      v35[4] = *(v10 + 64);
      v35[5] = v12;
      v35[2] = v14;
      v35[3] = v13;
      v16 = *(v10 + 112);
      v15 = *(v10 + 128);
      v17 = *(v10 + 96);
      v36 = *(v10 + 144);
      v35[7] = v16;
      v35[8] = v15;
      v35[6] = v17;
      v18 = *(v10 + 112);
      v31 = *(v10 + 96);
      v32 = v18;
      v33 = *(v10 + 128);
      v34 = *(v10 + 144);
      v19 = *(v10 + 48);
      v27 = *(v10 + 32);
      v28 = v19;
      v20 = *(v10 + 80);
      v29 = *(v10 + 64);
      v30 = v20;
      v21 = *(v10 + 16);
      v25 = *v10;
      v26 = v21;
      sub_1E141D030(v35, v24);
      v22 = sub_1E1934250(&v25, v39);
      v37[6] = v31;
      v37[7] = v32;
      v37[8] = v33;
      v38 = v34;
      v37[2] = v27;
      v37[3] = v28;
      v37[4] = v29;
      v37[5] = v30;
      v37[0] = v25;
      v37[1] = v26;
      sub_1E15A43AC(v37);
      if (v22)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1E1598190(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = v14 + 32 * v8;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *v15 == a1 && *(v15 + 8) == a2;
      if (v18 || (sub_1E1AF74AC()) && v16 == a3 && ((v17 ^ a4) & 1) == 0)
      {
        break;
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

_OWORD *sub_1E159827C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E13018F8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1E14154D8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1E168807C(v16, a4 & 1);
    v11 = sub_1E13018F8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1E1301CF0(a1, v22);
  }

  else
  {
    sub_1E165F11C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1E159840C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E135FCF4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1E1415834();
      goto LABEL_7;
    }

    sub_1E168860C(v13, a3 & 1);
    v24 = sub_1E135FCF4(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E134E724(a2, v26);
      return sub_1E165F188(v10, v26, a1, v16);
    }

LABEL_15:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = sub_1E1AEFCCC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 40);
  v21 = v18;
  v22 = v17 + *(v19 + 72) * v10;

  return v20(v22, a1, v21);
}

uint64_t sub_1E1598604(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E15952E8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
      return sub_1E13619D8(a1, *(v16 + 56) + 88 * v10, &qword_1ECEB36F0);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1E1415AE4();
    goto LABEL_7;
  }

  sub_1E16889C0(v13, a3 & 1);
  v18 = sub_1E15952E8(a2);
  if ((v14 & 1) != (v19 & 1))
  {
LABEL_14:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

  v10 = v18;
  v16 = *v4;
  if (v14)
  {
    return sub_1E13619D8(a1, *(v16 + 56) + 88 * v10, &qword_1ECEB36F0);
  }

LABEL_11:
  sub_1E141CF00(a2, v20);
  return sub_1E1660138(v10, v20, a1, v16);
}

void sub_1E1598734(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E135FCF4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1E1415B08();
      goto LABEL_7;
    }

    sub_1E16889F8(v13, a3 & 1);
    v19 = sub_1E135FCF4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E134E724(a2, v21);
      sub_1E165F248(v10, v21, a1, v16);
      return;
    }

LABEL_15:
    sub_1E1AF757C();
    __break(1u);
    return;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
}

_OWORD *sub_1E15988B4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E135FCF4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1E1415CB0();
      goto LABEL_7;
    }

    sub_1E1688CA8(v13, a3 & 1);
    v19 = sub_1E135FCF4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E134E724(a2, v21);
      return sub_1E165F2A0(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1E1301CF0(a1, v17);
}

uint64_t sub_1E1598A00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1E13018F8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1E1415E54();
      goto LABEL_7;
    }

    sub_1E1688F60(v15, a4 & 1);
    v26 = sub_1E13018F8(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1E1AEFCCC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1E165F31C(v12, a2, a3, a1, v18);
}

uint64_t sub_1E1598BC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1E13018F8(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1E13018F8(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_1E1598D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1E13018F8(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1E1415E90();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1E1688F9C(v18, a5 & 1);
    v13 = sub_1E13018F8(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1E165F3CC(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_1E1598ED0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1E159562C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1E1416334();
      goto LABEL_7;
    }

    sub_1E16897A8(v17, a3 & 1);
    v28 = sub_1E159562C(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1E165F434(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D40);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1E15990E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1E159562C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1E1416358();
      goto LABEL_7;
    }

    sub_1E16897CC(v17, a3 & 1);
    v28 = sub_1E159562C(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1E165F448(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D30);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_1E15992F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E135FCF4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1E14169B0();
      goto LABEL_7;
    }

    sub_1E168A1B8(v13, a3 & 1);
    v19 = sub_1E135FCF4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E134E724(a2, v21);
      sub_1E1660130(v10, v21, a1, v16);
      return;
    }

LABEL_15:
    sub_1E1AF757C();
    __break(1u);
    return;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
}

uint64_t sub_1E1599470(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1E13018F8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1E1416B58();
      result = v19;
      goto LABEL_8;
    }

    sub_1E168A47C(v16, a4 & 1);
    result = sub_1E13018F8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_1E165F564(result, a2, a3, a1, v21);
  }

  return result;
}

void sub_1E15995E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();

  sub_1E17FAE9C(a1, a3, a4, v4, ObjectType, a2);
}

uint64_t sub_1E1599648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1E13018F8(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1E1416CE8();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1E168A744(v18, a5 & 1);
    v13 = sub_1E13018F8(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1E165F3CC(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_1E1599798(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E13018F8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1E1416E60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1E168AA04(v16, a4 & 1);
    v11 = sub_1E13018F8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_1E14FF980(a1, v22);
  }

  else
  {
    sub_1E165F5AC(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1E15998E0(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E15951A4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1E1417014();
      goto LABEL_7;
    }

    sub_1E168ACD4(v13, a3 & 1);
    v18 = sub_1E15951A4(a2);
    if ((v14 & 1) == (v19 & 1))
    {
      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E141D0E8(a2, v20);
      return sub_1E165F608(v10, v20, a1, v16);
    }

LABEL_15:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

uint64_t sub_1E1599A20(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_1E1AF227C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1E1595814(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_1E14171E4();
      goto LABEL_7;
    }

    sub_1E168B0D4(result, a2 & 1);
    result = sub_1E1595814(a1);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      return sub_1E165F678(v14, v11, v20, a3);
    }
  }

  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E1599C18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), uint64_t (*a7)(uint64_t, uint64_t), void (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = sub_1E13018F8(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 >= v23 && (a4 & 1) == 0)
    {
      v26 = v18;
      a5();
      v18 = v26;
      goto LABEL_8;
    }

    a6(v23, a4 & 1);
    v18 = sub_1E13018F8(a2, a3);
    if ((v24 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v12;
  if (v24)
  {
    v29 = *(v28 + 56) + 40 * v18;
    __swift_destroy_boxed_opaque_existential_1(v29);

    return a7(a1, v29);
  }

  else
  {
    a8(v18, a2, a3, a1, v28);
  }
}

unint64_t sub_1E1599DA8(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E130A34C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1E1417624();
      result = v17;
      goto LABEL_8;
    }

    sub_1E168B790(v14, a3 & 1);
    result = sub_1E130A34C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = a1 & 1;
  }

  else
  {

    return sub_1E165F7A4(result, a2, a1 & 1, v19);
  }

  return result;
}

uint64_t sub_1E1599EF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E159558C(a2, ProductShelfOrderingId.rawValue.getter, sub_1E159651C);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E1417784();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E168BA24(v14, a3 & 1);
    v9 = sub_1E159558C(a2, ProductShelfOrderingId.rawValue.getter, sub_1E159651C);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_1E130A71C(v9, a2, a1, v19);
  }
}

void sub_1E159A06C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E1595978(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1E14178F8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1E168BE64(v13, a3 & 1);
    v8 = sub_1E1595978(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1E13006E4(0, &qword_1EE1E32B0);
      sub_1E1AF757C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_1E165F7E8(v8, a2, a1, v18);

    v21 = a2;
  }
}

uint64_t sub_1E159A1B0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E1595428(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1E1417D08();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1E168C478(v16, a4 & 1);
    v11 = sub_1E1595428(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    return sub_1E15A4290(a1, v22);
  }

  else
  {
    sub_1E165F82C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1E159A388(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(unint64_t, _BYTE *, uint64_t, uint64_t))
{
  v10 = v6;
  v14 = *v6;
  v16 = sub_1E135FCF4(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      a4();
      goto LABEL_7;
    }

    a5();
    v24 = sub_1E135FCF4(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v10;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E134E724(a2, v26);
      return a6(v16, v26, a1, v22);
    }

LABEL_15:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v10;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(*(v22 + 56) + 8 * v16) = a1;
}

void sub_1E159A4EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1E135FCF4(a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1E1418018();
      goto LABEL_7;
    }

    sub_1E168CA18(v15, a4 & 1);
    v21 = sub_1E135FCF4(a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E134E724(a3, v23);
      sub_1E1660140(v12, v23, a1, a2, v18);
      return;
    }

LABEL_15:
    sub_1E1AF757C();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = *(v18 + 56) + 16 * v12;
  v20 = *v19;
  *v19 = a1;
  *(v19 + 8) = a2;
}

uint64_t sub_1E159A638(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1E1AF468C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1E1595354(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1E14181B8();
      goto LABEL_7;
    }

    sub_1E168CCD8(v17, a3 & 1);
    v22 = sub_1E1595354(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1E165F884(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1E159A804(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1E1AF468C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1E1595354(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1E1418438();
    goto LABEL_7;
  }

  sub_1E168D0B4(result, a3 & 1);
  result = sub_1E1595354(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1E165F884(v14, v11, a1, v20);
}

unint64_t sub_1E159A9E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E1595C30(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1E1418960();
      result = v17;
      goto LABEL_8;
    }

    sub_1E168D830(v14, a3 & 1);
    result = sub_1E1595C30(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      type metadata accessor for InlinePresentationIntent(0);
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_1E165F7E8(result, a2, a1, v19);
  }

  return result;
}

uint64_t sub_1E159AAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1E13018F8(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_1E1418C10();
      v17 = v25;
      goto LABEL_8;
    }

    sub_1E168DD68(v22, a7 & 1);
    v17 = sub_1E13018F8(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    v29 = v28[2];
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;

    return sub_1E1300EA8(v29);
  }

  else
  {
    sub_1E165F93C(v17, a5, a6, a1, a2, a3, a4, v27);
  }
}

unint64_t sub_1E159AC6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E131A7E8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E1418DA8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E168E044(v14, a3 & 1);
    v9 = sub_1E131A7E8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_1E165F7E8(v9, a2, a1, v19);
  }
}

uint64_t sub_1E159AD90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E1595B78(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1E1418DBC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1E168E2B4(v16, a4 & 1);
    v11 = sub_1E1595B78(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    v24 = *a3;
    v25 = *(a3 + 16);
    v28 = *(a3 + 24);
    v29 = v24;
    sub_1E165F98C(v11, a3, a1, a2, v21);
    sub_1E134FD1C(&v29, v27, &unk_1ECEB5D40);
    v26 = v25;
    return sub_1E15A42EC(&v28, v27);
  }
}

uint64_t sub_1E159AF04(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E1595B78(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E1418F60();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E168E5DC(v14, a3 & 1);
    v9 = sub_1E1595B78(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    v21 = *a2;
    v22 = *(a2 + 16);
    v25 = *(a2 + 24);
    v26 = v21;
    sub_1E165F248(v9, a2, a1, v19);
    sub_1E134FD1C(&v26, v24, &unk_1ECEB5D40);
    v23 = v22;
    return sub_1E15A42EC(&v25, v24);
  }
}

void sub_1E159B064(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E1595B78(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E14190F8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E168E8F8(v14, a3 & 1);
    v9 = sub_1E1595B78(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      sub_1E1AF757C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {
    v22 = *a2;
    v23 = *(a2 + 16);
    v26 = *(a2 + 24);
    v27 = v22;
    sub_1E165F248(v9, a2, a1, v19);
    sub_1E134FD1C(&v27, v25, &unk_1ECEB5D40);
    v24 = v23;
    sub_1E15A42EC(&v26, v25);
  }
}

unint64_t sub_1E159B1C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E131A7E8(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1E14199DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1E168FBB4(v16, a4 & 1);
    v11 = sub_1E131A7E8(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_1E165F9E8(v11, a3, a1, a2, v21);
  }
}

void sub_1E159B338(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1E13018F8(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1E13018F8(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_1E1AF757C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

unint64_t sub_1E159B4A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E131A7E8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E1419B58();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E168FE4C(v14, a3 & 1);
    v9 = sub_1E131A7E8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 88 * v9;

    return sub_1E15A45AC(a1, v20);
  }

  else
  {

    return sub_1E165FA30(v9, a2, a1, v19);
  }
}

unint64_t sub_1E159B5C4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E131A7E8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E1419D18();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E1690150(v14, a3 & 1);
    v9 = sub_1E131A7E8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 48 * v9;

    return sub_1E15A4608(a1, v20);
  }

  else
  {

    return sub_1E165FA98(v9, a2, a1, v19);
  }
}

uint64_t sub_1E159B6E8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1E13018F8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1E1419E9C();
      result = v19;
      goto LABEL_8;
    }

    sub_1E1690408(v16, a4 & 1);
    result = sub_1E13018F8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
  }

  else
  {
    sub_1E165FAF0(result, a2, a3, a1 & 1, v21);
  }

  return result;
}

void sub_1E159B81C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1E135FCF4(a2);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a3 & 1) == 0)
  {
    if (v17 >= v15 && (a3 & 1) == 0)
    {
      sub_1E141A004();
      goto LABEL_7;
    }

    sub_1E16906A8(v15, a3 & 1);
    v21 = sub_1E135FCF4(a2);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E134E724(a2, v23);
      sub_1E165FB38(v12, v23, a1, v18, a4);
      return;
    }

LABEL_15:
    sub_1E1AF757C();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = v18[7] + 16 * v12;
  v20 = *(v19 + 8);
  *v19 = a4;
  *(v19 + 8) = a1;
}

uint64_t sub_1E159B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1E1595428(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1E141A1C0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1E169098C(v18, a5 & 1);
    v13 = sub_1E1595428(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1E165F3CC(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_1E159BB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1E1595428(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1E141A338();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1E1690C4C(v20, a6 & 1);
    v15 = sub_1E1595428(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  else
  {
    sub_1E165FB98(v15, a4, a5, a1, a2, a3, v25);
  }
}

uint64_t sub_1E159BC74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1E13018F8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1E141A4C0();
      result = v19;
      goto LABEL_8;
    }

    sub_1E1690F14(v16, a4 & 1);
    result = sub_1E13018F8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_1E166013C(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_1E159BE24(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1E13018F8(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_1E141A650();
      result = v19;
      goto LABEL_8;
    }

    sub_1E16911DC(v16, a3 & 1);
    result = sub_1E13018F8(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    sub_1E165FBEC(result, a1, a2, v21, a4);
  }

  return result;
}

uint64_t sub_1E159BFA0(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *v7;
  v15 = sub_1E131A7E8(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      a4();
      v15 = v23;
      goto LABEL_8;
    }

    a5(v20, a3 & 1);
    v15 = sub_1E131A7E8(a2);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v10;
  if (v21)
  {
    v26 = *(v25 + 56);
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return a6(v27);
  }

  else
  {

    return a7(v15, a2, a1, v25);
  }
}

unint64_t sub_1E159C100(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E159558C(a3, OfferTitleType.rawValue.getter, sub_1E15969B0);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1E141A914();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1E16916F0(v16, a4 & 1);
    v11 = sub_1E159558C(a3, OfferTitleType.rawValue.getter, sub_1E15969B0);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_1E165FC34(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_1E159C2C8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E1595EB8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E141B04C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E1692668(v14, a3 & 1);
    v9 = sub_1E1595EB8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 392 * v9;

    return sub_1E15A4350(a1, v20);
  }

  else
  {
    sub_1E165FC7C(v9, a2, a1, v19);
    return sub_1E141D030(a2, v22);
  }
}

uint64_t sub_1E159C3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v7 = v6;
  v9 = a5;
  v14 = *v6;
  v15 = sub_1E1595F58(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1E141B260();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1E1692CD8(v20, a6 & 1);
    v15 = sub_1E1595F58(a2, a3, a4, v9 & 1);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  else
  {
    sub_1E165FD20(v15, a2, a3, a4, v9 & 1, a1, v25);
  }
}

uint64_t sub_1E159C5AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1E13018F8(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1E13018F8(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_1E159C758(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(unint64_t, _BYTE *, uint64_t, uint64_t))
{
  v10 = v6;
  v14 = *v6;
  v16 = sub_1E15952E8(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      a4();
      goto LABEL_7;
    }

    a5();
    v24 = sub_1E15952E8(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v10;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E141CF00(a2, v26);
      return a6(v16, v26, a1, v22);
    }

LABEL_15:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v10;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(*(v22 + 56) + 8 * v16) = a1;
}

uint64_t sub_1E159C8BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E15952E8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
      return sub_1E13619D8(a1, *(v16 + 56) + 88 * v10, &qword_1ECEB36D0);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1E141B9BC();
    goto LABEL_7;
  }

  sub_1E1693A64(v13, a3 & 1);
  v18 = sub_1E15952E8(a2);
  if ((v14 & 1) != (v19 & 1))
  {
LABEL_14:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

  v10 = v18;
  v16 = *v4;
  if (v14)
  {
    return sub_1E13619D8(a1, *(v16 + 56) + 88 * v10, &qword_1ECEB36D0);
  }

LABEL_11:
  sub_1E141CF00(a2, v20);
  return sub_1E1660138(v10, v20, a1, v16);
}

uint64_t sub_1E159C9EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1E1595E40(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1E141BBB4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1E1693DA0(v18, a5 & 1);
    v13 = sub_1E1595E40(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 24 * v13);
    *v24 = a1;
    v24[1] = a2;
    v24[2] = a3;
  }

  else
  {
    sub_1E165FDEC(v13, a4, a1, a2, a3, v23);

    return swift_unknownObjectRetain();
  }
}

unint64_t sub_1E159CB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v14 = sub_1E135FCF4(a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      sub_1E141BD40();
      goto LABEL_7;
    }

    sub_1E1694070(v17, a5 & 1);
    v23 = sub_1E135FCF4(a4);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v6;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E134E724(a4, v25);
      return sub_1E165FE3C(v14, v25, a1, a2, a3, v20);
    }

LABEL_15:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v6;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 24 * v14);
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;

  return swift_unknownObjectRelease();
}

unint64_t sub_1E159CCBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1E135FCF4(a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1E141BEF8();
      goto LABEL_7;
    }

    sub_1E1694358(v15, a4 & 1);
    v21 = sub_1E135FCF4(a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E134E724(a3, v23);
      return sub_1E165F98C(v12, v23, a1, a2, v18);
    }

LABEL_15:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = (v18[7] + 16 * v12);
  *v19 = a1;
  v19[1] = a2;
}

uint64_t sub_1E159CE08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1E135FCF4(a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1E141C098();
      goto LABEL_7;
    }

    sub_1E1694620(v15, a4 & 1);
    v21 = sub_1E135FCF4(a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1E134E724(a3, v23);
      return sub_1E1660140(v12, v23, a1, a2, v18);
    }

LABEL_15:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = (*(v18 + 56) + 16 * v12);
  *v19 = a1;
  v19[1] = a2;
}

uint64_t sub_1E159CF94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1E1595428(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1E1595428(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

_OWORD *sub_1E159D100(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E1595700(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1E141C248();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1E16948E8(v13, a3 & 1);
    v8 = sub_1E1595700(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1E1301CF0(a1, v19);
  }

  else
  {
    sub_1E165FEA0(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_1E159D320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5E48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5E50);
    v7 = sub_1E1AF72CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E134FD1C(v9, v5, &qword_1ECEB5E48);
      result = sub_1E1595354(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1E1AF468C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1E159D508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6058);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6060);
    v7 = sub_1E1AF72CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E134FD1C(v9, v5, &qword_1ECEB6058);
      result = sub_1E1595354(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1E1AF468C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1E159D714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5FC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5FD0);
    v7 = sub_1E1AF72CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E134FD1C(v9, v5, &qword_1ECEB5FC8);
      result = sub_1E135FCF4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 40 * result;
      v15 = *v5;
      v16 = *(v5 + 1);
      *(v14 + 32) = *(v5 + 4);
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B8);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v13, &v5[v8], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1E159D92C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1E13018F8(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_1E159DA28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60C0);
  v3 = sub_1E1AF72CC();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_1E134FD1C(&v24, v23, &qword_1ECEB60C8);
  result = sub_1E1595428(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_1E134FD1C(&v24, v23, &qword_1ECEB60C8);
    result = sub_1E1595428(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E159DBE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1E1AF72CC();
    v8 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v8, v17, a4);
      result = sub_1E15952E8(v17);
      if (v10)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v7[6] + 40 * result;
      v12 = v17[0];
      v13 = v17[1];
      *(v11 + 32) = v18;
      *v11 = v12;
      *(v11 + 16) = v13;
      *(v7[7] + 8 * result) = v19;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      v8 += 48;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1E159DD24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1E1AF72CC();
    v8 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v8, v22, a4);
      result = sub_1E15952E8(v22);
      if (v10)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v7[6] + 40 * result;
      v12 = v22[0];
      v13 = v22[1];
      *(v11 + 32) = v23;
      *v11 = v12;
      *(v11 + 16) = v13;
      v14 = v7[7] + 88 * result;
      v15 = v25;
      *v14 = v24;
      *(v14 + 16) = v15;
      v16 = v26;
      v17 = v27;
      v18 = v28;
      *(v14 + 80) = v29;
      *(v14 + 48) = v17;
      *(v14 + 64) = v18;
      *(v14 + 32) = v16;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v8 += 128;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1E159DE84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5CC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36E0);
    v7 = sub_1E1AF72CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E134FD1C(v9, v5, &unk_1ECEB5CC0);
      result = sub_1E135FCF4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 40 * result;
      v15 = *v5;
      v16 = *(v5 + 1);
      *(v14 + 32) = *(v5 + 4);
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[7];
      v18 = sub_1E1AEFCCC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v13, &v5[v8], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1E159E07C(uint64_t a1, uint64_t a2)
{
  v4 = 0x6261547961646F74;
  sub_1E13B8AA4();
  if (sub_1E1AF6DDC() == a1 && v5 == a2)
  {
    goto LABEL_11;
  }

  v7 = sub_1E1AF74AC();

  if ((v7 & 1) == 0)
  {
    v4 = 0x4262615473707061;
    if (sub_1E1AF6DDC() == a1 && v8 == a2)
    {
      goto LABEL_11;
    }

    v9 = sub_1E1AF74AC();

    if ((v9 & 1) == 0)
    {
      v4 = 0x62615473656D6167;
      if (sub_1E1AF6DDC() == a1 && v10 == a2)
      {
LABEL_11:

        return v4;
      }

      v12 = sub_1E1AF74AC();

      if (v12)
      {
        return v4;
      }

      if (sub_1E1AF6DDC() == a1 && v13 == a2)
      {

        return 0xD000000000000010;
      }

      v14 = sub_1E1AF74AC();

      if (v14)
      {
        return 0xD000000000000010;
      }

      if (sub_1E1AF6DDC() == a1 && v15 == a2)
      {
      }

      else
      {
        v16 = sub_1E1AF74AC();

        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      return 0xD000000000000010;
    }
  }

  return v4;
}

id sub_1E159E358(id result, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    return sub_1E1361A40(result, a2);
  }

  return result;
}

void sub_1E159E36C(void *a1, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    sub_1E1361A60(a1, a2);
  }
}

unint64_t sub_1E159E380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3720);
    v7 = sub_1E1AF72CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E134FD1C(v9, v5, &unk_1ECEB5D10);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1E13018F8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1E1AEFCCC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_1E159E56C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5E00);
  v3 = sub_1E1AF72CC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1E131A7E8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1E131A7E8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E159E674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3790);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, v15, &unk_1ECEB5E20);
      result = sub_1E135FCF4(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
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

unint64_t sub_1E159E7A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3858);
  v3 = sub_1E1AF72CC();
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v16 = *(a1 + 72);
  v17 = *(a1 + 88);
  result = sub_1E131A7E8(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v7 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v8 = (v3[7] + (result << 6));
    *v8 = v14;
    v8[1] = v15;
    v8[2] = v16;
    v8[3] = v17;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      return v3;
    }

    v12 = (v7 + 72);
    v4 = *(v7 - 1);
    v14 = *v7;
    v15 = v7[1];
    v16 = v7[2];
    v17 = v7[3];
    result = sub_1E131A7E8(v4);
    v7 = v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E159E8C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5E40);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1E13018F8(v5, v6);
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

unint64_t sub_1E159E9C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5CD0);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, v13, &qword_1ECEB5CD8);
      result = sub_1E135FCF4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
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

unint64_t sub_1E159EAEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3868);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, &v13, &unk_1ECEB6160);
      v5 = v13;
      v6 = v14;
      result = sub_1E13018F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E1308EC0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1E159EC20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6148);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6150);
    v7 = sub_1E1AF72CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E134FD1C(v9, v5, &qword_1ECEB6148);
      result = sub_1E159562C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1E1AEFEAC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D40);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1E159EE4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6138);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6140);
    v7 = sub_1E1AF72CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E134FD1C(v9, v5, &qword_1ECEB6138);
      result = sub_1E159562C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1E1AEFEAC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D30);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1E159F078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6130);
  v3 = sub_1E1AF72CC();
  v4 = *(a1 + 32);
  v16 = *(a1 + 40);
  result = sub_1E131A7E8(v4);
  v6 = v16;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v15 = v6;

    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 1);
    v17 = *v8;
    v13 = v6;

    result = sub_1E131A7E8(v4);
    v8 = v12;
    v6 = v17;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E159F218(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1E1AF72CC();
    v8 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v8, v17, a4);
      result = sub_1E135FCF4(v17);
      if (v10)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v7[6] + 40 * result;
      v12 = v17[0];
      v13 = v17[1];
      *(v11 + 32) = v18;
      *v11 = v12;
      *(v11 + 16) = v13;
      *(v7[7] + 8 * result) = v19;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      v8 += 48;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1E159F330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6100);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1E1595790(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

unint64_t sub_1E159F43C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1E13018F8(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_1E159F538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3750);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1E13018F8(v5, v6);
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

unint64_t sub_1E159F67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5EC0);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1E13018F8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1E159F790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6070);
  v3 = sub_1E1AF72CC();
  v4 = *(a1 + 80);
  *&v24[32] = *(a1 + 64);
  *&v24[48] = v4;
  v5 = *(a1 + 112);
  *&v24[64] = *(a1 + 96);
  *&v24[80] = v5;
  v6 = *(a1 + 48);
  *v24 = *(a1 + 32);
  *&v24[16] = v6;
  v7 = *v24;
  result = sub_1E131A7E8(*v24);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1E134FD1C(v24, v23, &qword_1ECEB6078);
    return v3;
  }

  v10 = (a1 + 128);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v7;
    v11 = v3[7] + 88 * result;
    v12 = *&v24[24];
    *v11 = *&v24[8];
    *(v11 + 16) = v12;
    v13 = *&v24[40];
    v14 = *&v24[56];
    v15 = *&v24[72];
    *(v11 + 80) = *&v24[88];
    *(v11 + 48) = v14;
    *(v11 + 64) = v15;
    *(v11 + 32) = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1E134FD1C(v24, v23, &qword_1ECEB6078);
    v19 = v10[3];
    *&v24[32] = v10[2];
    *&v24[48] = v19;
    v20 = v10[5];
    *&v24[64] = v10[4];
    *&v24[80] = v20;
    v21 = v10[1];
    *v24 = *v10;
    *&v24[16] = v21;
    v7 = *v24;
    result = sub_1E131A7E8(*v24);
    v10 += 6;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E159F92C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3838);
  v3 = sub_1E1AF72CC();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = a1[10];
  v11 = sub_1E131A7E8(v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = v11;
  result = v6;
  v15 = a1 + 17;
  while (1)
  {
    *(v3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v3[6] + 8 * v13) = v5;
    v16 = (v3[7] + 48 * v13);
    *v16 = v4;
    v16[1] = result;
    v16[2] = v7;
    v16[3] = v8;
    v16[4] = v9;
    v16[5] = v10;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = v15 + 7;
    v5 = *(v15 - 6);
    v24 = *(v15 - 5);
    v21 = *(v15 - 4);
    v7 = *(v15 - 3);
    v8 = *(v15 - 2);
    v9 = *(v15 - 1);
    v22 = *v15;

    v13 = sub_1E131A7E8(v5);
    v15 = v20;
    v10 = v22;
    v4 = v24;
    result = v21;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E159FA90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5DE0);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, v17, &qword_1ECEB2640);
      result = sub_1E15951A4(v17);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 136 * result;
      v9 = v17[3];
      v8 = v17[4];
      v10 = v17[2];
      *(v7 + 16) = v17[1];
      *(v7 + 32) = v10;
      *(v7 + 48) = v9;
      *(v7 + 64) = v8;
      *v7 = v17[0];
      v11 = v17[5];
      v12 = v17[6];
      v13 = v17[7];
      *(v7 + 128) = v18;
      *(v7 + 96) = v12;
      *(v7 + 112) = v13;
      *(v7 + 80) = v11;
      *(v3[7] + 8 * result) = v19;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 144;
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

unint64_t sub_1E159FBD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3820);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1E159558C(v5, ProductShelfOrderingId.rawValue.getter, sub_1E159651C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1E159FCF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F20);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1E1595428(v5, v6);
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

unint64_t sub_1E159FDF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37C8);
    v7 = sub_1E1AF72CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E134FD1C(v9, v5, &unk_1ECEB5F00);
      result = sub_1E1595814(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1E1AF227C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1E159FFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5DA0);
    v3 = sub_1E1AF72CC();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1E130A34C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1E15A0110(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = a4(v9, v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1E15A021C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36C0);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 1);
      v5 = *i;
      v13[0] = *(i - 16);
      v14 = v6;
      v15 = v5;

      result = sub_1E15958E8(v13);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v13[0];
      v9 = (v3[7] + 16 * result);
      *v9 = v6;
      v9[1] = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1E15A0350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5DF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5DF8);
    v7 = sub_1E1AF72CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E134FD1C(v9, v5, &qword_1ECEB5DF0);
      result = sub_1E15959C8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_1E1AEFCCC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1E15A054C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6010);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1E13018F8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void *sub_1E15A0650(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5E30);
  v3 = sub_1E1AF72CC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1E131A7E8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1E131A7E8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E15A0764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5FF8);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, &v13, &unk_1ECEB6000);
      v5 = v13;
      v6 = v14;
      result = sub_1E13018F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E1308EC0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1E15A08BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1E1AF72CC();
    v8 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v8, v17, a4);
      result = sub_1E135FCF4(v17);
      if (v10)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v7[6] + 40 * result;
      v12 = v17[0];
      v13 = v17[1];
      *(v11 + 32) = v18;
      *v11 = v12;
      *(v11 + 16) = v13;
      *(v7[7] + 16 * result) = v19;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      v8 += 56;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1E15A09EC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *i;

      result = sub_1E13018F8(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_1E15A0B2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v12 = sub_1E1AF72CC();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);

    while (1)
    {
      sub_1E134FD1C(v14, v10, a2);
      result = sub_1E1595AA4(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = sub_1E1AF459C();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
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

unint64_t sub_1E15A0D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3748);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 4);
      v7 = *(i - 3);
      v6 = *(i - 2);
      v9 = *(i - 1);
      v8 = *i;
      *&v18 = *(i - 5);
      *(&v18 + 1) = v5;
      *&v19 = v7;
      *(&v19 + 1) = v6;
      v20 = v9;

      v10 = v7;

      result = sub_1E1595B78(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 40 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v3[7] + 8 * result) = v8;
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

unint64_t sub_1E15A0E48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D50);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 4);
      v7 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      *&v19 = *(i - 5);
      *(&v19 + 1) = v5;
      *&v20 = v7;
      *(&v20 + 1) = v6;
      v21 = v8;

      v10 = v7;

      v11 = v9;
      result = sub_1E1595B78(&v19);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 40 * result;
      v15 = v20;
      *v14 = v19;
      *(v14 + 16) = v15;
      *(v14 + 32) = v21;
      *(v3[7] + 8 * result) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_1E15A0F84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F30);
    v3 = sub_1E1AF72CC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1E1595C30(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1E15A1060(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D60);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 5);
      v7 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      *&v20 = *(i - 6);
      *(&v20 + 1) = v5;
      *&v21 = v7;
      *(&v21 + 1) = v6;
      v22 = v8;

      v11 = v7;

      result = sub_1E1595B78(&v20);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 40 * result;
      v15 = v21;
      *v14 = v20;
      *(v14 + 16) = v15;
      *(v14 + 32) = v22;
      v16 = (v3[7] + 16 * result);
      *v16 = v9;
      v16[1] = v10;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
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

unint64_t sub_1E15A11A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36C0);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1E159558C(v5, OfferTitleType.rawValue.getter, sub_1E15969B0);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

unint64_t sub_1E15A12D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5EB0);
  v3 = sub_1E1AF72CC();
  v13 = *(a1 + 32);
  result = sub_1E131A7E8(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_1E131A7E8(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E15A13E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5D30);
  v3 = sub_1E1AF72CC();

  v4 = *(a1 + 240);
  v53 = *(a1 + 224);
  v54 = v4;
  v55 = *(a1 + 256);
  v5 = *(a1 + 176);
  v49 = *(a1 + 160);
  v50 = v5;
  v6 = *(a1 + 208);
  v51 = *(a1 + 192);
  v52 = v6;
  v7 = *(a1 + 112);
  v45 = *(a1 + 96);
  v46 = v7;
  v8 = *(a1 + 144);
  v47 = *(a1 + 128);
  v48 = v8;
  v9 = *(a1 + 48);
  v41 = *(a1 + 32);
  v42 = v9;
  v10 = *(a1 + 80);
  v43 = *(a1 + 64);
  v44 = v10;
  v12 = *(&v41 + 1);
  v11 = v41;
  sub_1E134FD1C(&v41, v40, &qword_1ECEB5D38);
  result = sub_1E1595428(v11, v12);
  if (v14)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v15 = (a1 + 264);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v16 = (v3[6] + 16 * result);
    *v16 = v11;
    v16[1] = v12;
    v17 = v3[7] + 216 * result;
    v18 = v43;
    *v17 = v42;
    *(v17 + 16) = v18;
    v19 = v44;
    v20 = v45;
    v21 = v47;
    *(v17 + 64) = v46;
    *(v17 + 80) = v21;
    *(v17 + 32) = v19;
    *(v17 + 48) = v20;
    v22 = v48;
    v23 = v49;
    v24 = v51;
    *(v17 + 128) = v50;
    *(v17 + 144) = v24;
    *(v17 + 96) = v22;
    *(v17 + 112) = v23;
    v25 = v52;
    v26 = v53;
    v27 = v54;
    *(v17 + 208) = v55;
    *(v17 + 176) = v26;
    *(v17 + 192) = v27;
    *(v17 + 160) = v25;
    v28 = v3[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      break;
    }

    v3[2] = v30;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v31 = (v15 + 232);
    v32 = v15[13];
    v53 = v15[12];
    v54 = v32;
    v55 = *(v15 + 28);
    v33 = v15[9];
    v49 = v15[8];
    v50 = v33;
    v34 = v15[11];
    v51 = v15[10];
    v52 = v34;
    v35 = v15[5];
    v45 = v15[4];
    v46 = v35;
    v36 = v15[7];
    v47 = v15[6];
    v48 = v36;
    v37 = v15[1];
    v41 = *v15;
    v42 = v37;
    v38 = v15[3];
    v43 = v15[2];
    v44 = v38;
    v12 = *(&v41 + 1);
    v11 = v41;
    sub_1E134FD1C(&v41, v40, &qword_1ECEB5D38);
    result = sub_1E1595428(v11, v12);
    v15 = v31;
    if (v39)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E15A1608(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3740);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1E1595C9C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1E15A1700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5DF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5DF8);
    v7 = sub_1E1AF72CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E134FD1C(v9, v5, &qword_1ECEB5DF0);
      result = sub_1E1595210(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_1E1AEFCCC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1E15A18E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3788);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1E1595DFC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1E15A1A18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1E1AF72CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1E15A1B24(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 24)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1E13018F8(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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