uint64_t sub_2564C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC190);
  sub_30B8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1A8);
  sub_30B8E8();
  v8 = sub_307C08();
  sub_30B8C8();
  sub_EB00(v7, v5, &qword_3FBD68);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
  {
    sub_EB00(&v5[*(v8 + 20)], &v20, &unk_3FBB70);
    sub_28930(v5, &type metadata accessor for ActionOrigin);
    if (!*(&v21 + 1))
    {
      sub_EB68(v7, &qword_3FBD68);
      __swift_destroy_boxed_opaque_existential_1(v18);
      goto LABEL_9;
    }

    sub_3039F8();
    if (swift_dynamicCast())
    {
      sub_3039E8();
      if (v21 >= 3 && (v20 & 1) != 0)
      {
        __swift_project_boxed_opaque_existential_1Tm(v19, v19[3]);
        sub_30ACC8();
        sub_30AE38();

        sub_12670(v18, &v15);
        v9 = swift_allocObject();
        *(v9 + 16) = a1;
        sub_12658(&v15, v9 + 24);
        v10 = sub_124C4(0, &qword_3FBF20);

        v11 = sub_30C8F8();
        v16 = v10;
        v17 = &protocol witness table for OS_dispatch_queue;
        *&v15 = v11;
        sub_30BEA8();

        sub_289D8(&v20);
        sub_EB68(v7, &qword_3FBD68);
        __swift_destroy_boxed_opaque_existential_1(v18);
        v12 = &v15;
LABEL_12:
        __swift_destroy_boxed_opaque_existential_1(v12);
        return __swift_destroy_boxed_opaque_existential_1(v19);
      }

      sub_289D8(&v20);
    }

    sub_EB68(v7, &qword_3FBD68);
    v12 = v18;
    goto LABEL_12;
  }

  sub_EB68(v7, &qword_3FBD68);
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_EB68(v5, &qword_3FBD68);
  v20 = 0u;
  v21 = 0u;
LABEL_9:
  sub_EB68(&v20, &unk_3FBB70);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_25A30(uint64_t a1)
{
  v34 = sub_3035A8();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3041E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC190);
  sub_30B8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1B8);
  sub_30B8E8();
  v14 = sub_307C08();
  v35 = v13;
  sub_30B8C8();
  sub_124C4(0, &qword_3FC1C0);
  sub_30D358();

  v15 = sub_3041D8();
  v16 = sub_30C7B8();
  if (os_log_type_enabled(v15, v16))
  {
    v32 = v3;
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    result = sub_309148();
    if (v19)
    {
      result = 0;
    }

    else if (result < 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v17 + 4) = result;

    _os_log_impl(&dword_0, v15, v16, "Handling ChannelOfferAction for channel: %lld", v17, 0xCu);

    v3 = v32;
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  sub_EB00(v35, v11, &qword_3FBD68);
  if ((*(*(v14 - 8) + 48))(v11, 1, v14) == 1)
  {
    sub_EB68(v11, &qword_3FBD68);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_28930(v11, &type metadata accessor for ActionOrigin);
    v21 = [Strong window];

    if (v21)
    {
      goto LABEL_13;
    }
  }

  v22 = [objc_opt_self() sharedApplication];
  v23 = [v22 delegate];

  if (!v23)
  {
LABEL_15:
    v32 = 0;
    v24 = 0;
    goto LABEL_17;
  }

  result = [v23 respondsToSelector:"window"];
  if ((result & 1) == 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v21 = [v23 window];
  swift_unknownObjectRelease();
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_13:
  v24 = v21;
  v25 = [v24 windowScene];

  if (v25)
  {
    v26 = [v25 session];

    v27 = [v26 persistentIdentifier];
    v32 = sub_30C0D8();
  }

  else
  {
    v32 = 0;
  }

LABEL_17:
  __swift_project_boxed_opaque_existential_1Tm(v38, v38[3]);
  sub_309158();
  sub_303598();
  v28 = v3;
  if (v24)
  {
    v29 = sub_124C4(0, &qword_3FC1C8);
  }

  else
  {
    v29 = 0;
    v37[1] = 0;
    v37[2] = 0;
  }

  v37[0] = v24;
  v37[3] = v29;
  sub_12670(v39, v36);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  sub_12658(v36, v30 + 24);

  v31 = v24;
  sub_303C48();

  (*(v33 + 8))(v28, v34);
  sub_EB68(v35, &qword_3FBD68);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_EB68(v37, &unk_3FBB70);
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_260A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5[0] = Strong, sub_124C4(0, &qword_3FC1E0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1E8), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v3 + 1))
    {
      sub_12658(&v2, v5);
      __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
      sub_308BF8();
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
  }

  return sub_EB68(&v2, &qword_3FC1D8);
}

uint64_t sub_261A8()
{
  sub_3088C8();
  v0 = sub_309D18();
  v2 = v1;
  if (v0 == sub_309D18() && v2 == v3)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_30D728();

    v4 = v5 ^ 1;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13[0] = Strong, sub_124C4(0, &qword_3FC1E0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1F8), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v11 + 1))
    {
      sub_12658(&v10, v13);
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1Tm(v13, v14);
      (*(v8 + 8))(v4 & 1, v7, v8);
      return __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  return sub_EB68(&v10, &qword_3FC1F0);
}

uint64_t sub_26338()
{
  v0 = sub_301CB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3041E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_308858();
  sub_30B8E8();
  v24 = v25;
  sub_124C4(0, &qword_3FC1C0);
  sub_30D358();

  v8 = sub_3041D8();
  v9 = sub_30C778();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = v5;
    v11 = v10;
    v12 = swift_slowAlloc();
    v23 = v0;
    v13 = v12;
    v25 = v12;
    *v11 = 136315138;
    sub_308F78();
    v14 = sub_301BD8();
    v21 = v4;
    v15 = v1;
    v17 = v16;
    (*(v15 + 8))(v3, v23);
    v18 = sub_191264(v14, v17, &v25);
    v1 = v15;

    *(v11 + 4) = v18;
    _os_log_impl(&dword_0, v8, v9, "Resuming OAuth session with redirectURL: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v0 = v23;

    (*(v22 + 8))(v7, v21);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  sub_308F78();
  sub_308838();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26650(uint64_t a1, uint64_t a2)
{
  v4 = sub_30A0B8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v51 = v7;
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  v10 = sub_3041E8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v53 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  sub_303908();
  v50 = a2;
  sub_30B8E8();
  v54 = v56;
  sub_3041B8();
  v48 = *(v5 + 16);
  v49 = v5 + 16;
  v48(v9, a1, v4);
  v16 = sub_3041D8();
  v17 = sub_30C788();
  v18 = os_log_type_enabled(v16, v17);
  v47 = v5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v46 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = v11;
    v22 = v21;
    v56 = v21;
    *v20 = 136315138;
    v55 = sub_30A098();
    sub_1D770();
    v23 = sub_30D438();
    v24 = v5;
    v26 = v25;
    (*(v24 + 8))(v9, v4);
    v27 = sub_191264(v23, v26, &v56);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_0, v16, v17, "Favorite for interest with adamID: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);

    a1 = v46;

    v28 = v45;
  }

  else
  {

    (*(v5 + 8))(v9, v4);
    v28 = v11;
  }

  v29 = *(v28 + 8);
  v29(v15, v10);
  sub_30A098();
  sub_3038D8();
  sub_30A088();
  v30 = sub_303108();
  v32 = v31;
  v33 = sub_303108();
  v35 = v53;
  if (v30 == v33 && v32 == v34)
  {
  }

  else
  {
    v36 = sub_30D728();

    if ((v36 & 1) == 0)
    {
    }
  }

  sub_3041B8();
  v37 = sub_3041D8();
  v38 = sub_30C788();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "[ChannelUpdaterUtil] FavoriteInterestAction is for a channel. Attempting to fetch the channel from Media API if needed.", v39, 2u);
  }

  v29(v35, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC208);
  sub_30B8E8();
  sub_3038B8();
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_3038A8();
  sub_30A098();
  v40 = v52;
  v48(v52, a1, v4);
  v41 = v47;
  v42 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v43 = swift_allocObject();
  (*(v41 + 32))(v43 + v42, v40, v4);
  sub_303898();

  return swift_unknownObjectRelease();
}

uint64_t sub_26BC4(uint64_t a1)
{
  v2 = sub_30A7D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3041E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_303908();
  sub_30B8E8();
  v24 = v26;
  sub_3041B8();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_3041D8();
  v11 = sub_30C788();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = a1;
    v15 = v14;
    v26 = v14;
    *v13 = 136315138;
    v25 = sub_30A7C8();
    sub_1D770();
    v16 = sub_30D438();
    v21 = v6;
    v18 = v17;
    (*(v3 + 8))(v5, v2);
    v19 = sub_191264(v16, v18, &v26);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_0, v10, v11, "Unfavorite for interest with adamID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);

    (*(v22 + 8))(v9, v21);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  sub_30A7C8();
  sub_3038C8();
}

void sub_26EC4()
{
  v0 = sub_3041E8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3041B8();
  v4 = sub_3041D8();
  v5 = sub_30C788();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "User just dismissed the Inline Selection Module. Set the user default key to true.", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v7 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_303BF8();
  sub_303BE8();
  v8 = sub_30C098();

  [v7 setBool:1 forKey:v8];
}

uint64_t sub_27060(uint64_t a1)
{
  v2 = sub_30AB38();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3041E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_303908();
  sub_30B8E8();
  v22 = v24;
  sub_3041B8();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_3041D8();
  v11 = sub_30C788();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v7;
    v13 = v12;
    v20 = swift_slowAlloc();
    v24 = v20;
    *v13 = 136315138;
    v23 = sub_30AB28();
    sub_1D770();
    v14 = sub_30D438();
    v19 = v6;
    v16 = v15;
    (*(v3 + 8))(v5, v2);
    v17 = sub_191264(v14, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v10, v11, "Suggest Less for interest with adamID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);

    (*(v21 + 8))(v9, v19);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  sub_30AB28();
  sub_30AB18();
  sub_3038E8();
}

uint64_t sub_27378(uint64_t a1)
{
  v2 = sub_30AE08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3041E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_303908();
  sub_30B8E8();
  v24 = v26;
  sub_3041B8();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_3041D8();
  v11 = sub_30C788();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = a1;
    v15 = v14;
    v26 = v14;
    *v13 = 136315138;
    v25 = sub_30ADF8();
    sub_28A88();
    v16 = sub_30D6D8();
    v21 = v6;
    v18 = v17;
    (*(v3 + 8))(v5, v2);
    v19 = sub_191264(v16, v18, &v26);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_0, v10, v11, "Undo Suggest Less for interest with adamID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);

    (*(v22 + 8))(v9, v21);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  sub_30ADF8();
  sub_3038F8();
}

void *sub_276B8(void *a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v77 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC140);
  __chkstk_darwin(v4 - 8);
  v69 = &v66 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBEE8);
  v81 = *(v76 - 8);
  __chkstk_darwin(v76);
  v68 = &v66 - v6;
  v71 = sub_309F08();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v78 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_30B7E8();
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v80 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_307C08();
  v75 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD60);
  v11 = __chkstk_darwin(v10 - 8);
  v74 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD68);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v66 - v19;
  v21 = sub_30B898();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_30B718();
  v25 = sub_30B888();
  v26 = *(v22 + 8);
  v26(v24, v21);
  v27 = *(v25 + 16);

  if (v27)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_30B718();
    v28 = sub_30B888();
    v26(v24, v21);
    return v28;
  }

  v67 = v18;
  v29 = v81;
  v30 = v83;
  sub_30B8C8();
  sub_12670(a1, v87);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
  sub_3076F8();
  v32 = v20;
  v33 = v30;
  v34 = a1;
  if (swift_dynamicCast())
  {
    v66 = v31;
    v82 = v20;
    sub_307698();
    v35 = sub_308778();
    v36 = *(v35 - 8);
    v37 = *(v36 + 48);
    v38 = v29;
    if (v37(v14, 1, v35) == 1)
    {
      sub_EB68(v14, &qword_3FBD60);
      v39 = v74;
    }

    else
    {
      v40 = (*(v36 + 88))(v14, v35);
      v41 = enum case for FlowDestination.longDescription(_:);
      (*(v36 + 8))(v14, v35);
      v42 = v40 == v41;
      v39 = v74;
      if (v42)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_315430;
        sub_308D58();
        sub_308CE8();
        sub_307E18();

        sub_EB68(v82, &qword_3FBD68);
        return v28;
      }
    }

    sub_307698();
    if (v37(v39, 1, v35) == 1)
    {

      sub_EB68(v39, &qword_3FBD60);
    }

    else
    {
      if ((*(v36 + 88))(v39, v35) == enum case for FlowDestination.upsell(_:))
      {
        (*(v36 + 8))(v39, v35);

        v43 = v82;
LABEL_21:
        sub_EB68(v43, &qword_3FBD68);
        return &_swiftEmptyArrayStorage;
      }

      (*(v36 + 8))(v39, v35);
    }

    v32 = v82;
    v33 = v83;
  }

  else
  {
    v38 = v29;
  }

  sub_12670(v34, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC150);
  v44 = swift_dynamicCast();
  v45 = v79;
  v46 = v78;
  v47 = v76;
  v48 = v75;
  if ((v44 & 1) == 0)
  {
    v85 = 0;
    memset(v84, 0, sizeof(v84));
    sub_EB68(v84, &unk_3FBEF0);
    goto LABEL_20;
  }

  sub_12658(v84, v87);
  v49 = v67;
  sub_EB00(v32, v67, &qword_3FBD68);
  if ((*(v48 + 48))(v49, 1, v33) == 1)
  {
    sub_EB68(v49, &qword_3FBD68);
    __swift_destroy_boxed_opaque_existential_1(v87);
LABEL_20:
    v43 = v32;
    goto LABEL_21;
  }

  sub_28D58(v49, v45, &type metadata accessor for ActionOrigin);
  __swift_project_boxed_opaque_existential_1Tm(v87, v87[3]);
  sub_30A1B8();
  v50 = v68;
  sub_30BBD8();
  v51 = v69;
  v52 = v71;
  sub_30BC38();
  (*(v38 + 8))(v50, v47);
  v53 = v70;
  if ((*(v70 + 48))(v51, 1, v52) == 1)
  {
    sub_EB68(v51, &unk_3FC140);
    v54 = v73;
    v55 = v72;
    v56 = v80;
  }

  else
  {
    (*(v53 + 32))(v46, v51, v52);
    v57 = v46;
    v58 = v52;
    v59 = sub_303208();
    v61 = v60;
    v62 = sub_309EF8();
    v56 = v80;
    v63 = sub_30B7B8();

    sub_2470C(v62, v84);
    sub_23E74(v84, v59, v61);

    v63(v86, 0);
    v45 = v79;
    (*(v53 + 8))(v57, v58);
    v54 = v73;
    v55 = v72;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
  v64 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_315430;
  (*(v54 + 32))(v28 + v64, v56, v55);
  sub_28930(v45, &type metadata accessor for ActionOrigin);
  sub_EB68(v32, &qword_3FBD68);
  __swift_destroy_boxed_opaque_existential_1(v87);
  return v28;
}

uint64_t sub_281DC(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v54 = a1;
  v2 = sub_30BF58();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v48 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC108);
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v41 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC110);
  v44 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v41 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_409160);
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v10 = &v41 - v9;
  v45 = sub_30BC28();
  v55 = *(v45 - 8);
  v11 = __chkstk_darwin(v45);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v43 = &v41 - v15;
  __chkstk_darwin(v14);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC120);
  __chkstk_darwin(v18 - 8);
  v20 = &v41 - v19;
  v21 = sub_30B9D8();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30B8C8();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_EB68(v20, &unk_3FC120);
    v25 = v48;
    sub_30BF18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490);
    sub_30B708();
    *(swift_allocObject() + 16) = xmmword_315430;
    sub_30B698();
    v26 = v50;
    sub_30BDD8();

    return (*(v49 + 8))(v25, v26);
  }

  else
  {
    v50 = v22;
    (*(v22 + 32))(v24, v20, v21);
    sub_303958();
    v56 = sub_303948();
    sub_30BBA8();
    sub_30BB98();
    (*(v8 + 8))(v10, v42);

    sub_3087E8();
    v28 = sub_3087D8();
    v29 = sub_3087C8();

    v56 = v29;
    sub_30BBF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC130);
    v30 = v43;
    sub_30BB38();
    (*(v44 + 8))(v7, v47);

    v32 = v55 + 8;
    v31 = *(v55 + 8);
    v33 = v45;
    v31(v13, v45);
    LOBYTE(v56) = 0;
    v34 = v51;
    sub_30BBE8();
    sub_30BB98();
    (*(v52 + 8))(v34, v53);
    v55 = v32;
    v31(v30, v33);
    v35 = v54;
    v36 = *(v54 + 16);
    v37 = v33;
    if (v36)
    {
      v38 = *(sub_30B7E8() - 8);
      v39 = v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
      v40 = *(v38 + 72);
      do
      {
        sub_30B9C8();

        v39 += v40;
        --v36;
      }

      while (v36);
    }

    v31(v17, v37);
    return (*(v50 + 8))(v24, v21);
  }
}

uint64_t sub_28930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_28990(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t objectdestroy_31Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_28A88()
{
  result = qword_3FC1D0;
  if (!qword_3FC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC1D0);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_28AFC()
{
  v1 = sub_301CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + v5);

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_28BA8(char a1, uint64_t a2)
{
  v5 = *(sub_301CB8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);

  return sub_235E4(a1, a2, v2 + v6, v8, (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_28C60()
{
  v1 = sub_30A0B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_28CE8(uint64_t a1)
{
  v3 = *(sub_30A0B8() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_239F4(a1, v4);
}

uint64_t sub_28D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_28E5C(char *a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_checkmarkImageView;
  result = [*&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_checkmarkImageView] image];
  if (result)
  {
    v4 = result;
    [result size];
    v6 = v5;
    v8 = v7;

    v9 = [a1 effectiveUserInterfaceLayoutDirection];
    [a1 bounds];
    if (v9 == &dword_0 + 1)
    {
      v14 = v10 + 0.0;
    }

    else
    {
      v14 = CGRectGetMaxX(*&v10) - v6;
    }

    [a1 bounds];
    [*&a1[v2] setFrame:{v14, CGRectGetMaxY(v21) - v8, v6, v8}];
    v15 = [*&a1[v2] superview];
    if (!v15 || (v16 = v15, sub_293E0(), v17 = a1, v18 = sub_30D098(), v16, v17, (v18 & 1) == 0))
    {
      [a1 addSubview:*&a1[v2]];
    }

    v19 = *&a1[v2];

    return [a1 bringSubviewToFront:v19];
  }

  return result;
}

id sub_291E4(float a1)
{
  v2 = *v1;
  *(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_progress) = a1;
  return [v2 setNeedsLayout];
}

void sub_29214()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_progressStyle] = 2;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_checkmarkInset] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_progress] = 0;
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_playing] = 0;
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_30C098();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

  if (v5)
  {
    v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];

    *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ArtworkCheckmarkProgressOverlay_checkmarkImageView] = v6;
    v7.receiver = v0;
    v7.super_class = ObjectType;
    objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29370()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_293E0()
{
  result = qword_3FBD90;
  if (!qword_3FBD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3FBD90);
  }

  return result;
}

id sub_29574()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ArtworkCollectionViewCell();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell_artworkView];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView;
  v3 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView] layer];
  [v3 removeAllAnimations];

  [*&v1[v2] setImage:0];
  return [v1 invalidateIntrinsicContentSize];
}

id sub_29724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_297DC(unsigned __int8 a1)
{
  sub_124C4(0, &qword_4019C0);
  if (sub_30C988())
  {
    v2 = a1;
    if (a1 <= 2u)
    {
      if (a1 - 1 >= 2)
      {
LABEL_8:
        v5 = sub_30C098();
        v6 = [objc_opt_self() imageNamed:v5];

        if (!v6)
        {
          __break(1u);
        }

        return;
      }

      v3 = sub_30C098();
      v4 = [objc_opt_self() imageNamed:v3];

      if (v4)
      {
        return;
      }

      __break(1u);
    }

    if (v2 == 3)
    {
      return;
    }

    goto LABEL_8;
  }
}

void sub_298F4(unsigned __int8 a1)
{
  sub_124C4(0, &qword_4019C0);
  if (sub_30C988())
  {
    v2 = a1;
    if (a1 <= 2u)
    {
      if (a1 - 1 >= 2)
      {
LABEL_8:
        v5 = sub_30C098();
        v6 = [objc_opt_self() imageNamed:v5];

        if (!v6)
        {
          __break(1u);
        }

        return;
      }

      v3 = sub_30C098();
      v4 = [objc_opt_self() imageNamed:v3];

      if (v4)
      {
        return;
      }

      __break(1u);
    }

    if (v2 == 3)
    {
      return;
    }

    goto LABEL_8;
  }
}

void sub_29A1C(uint64_t a1)
{
  v3 = sub_303748();
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playState;
  swift_beginAccess();
  sub_2B3F0(a1, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton);
  if (v7)
  {
    sub_1DC68(v1 + v6, v5);
    v8 = v7;
    v9 = v1;
    v10 = sub_3036F8();
    sub_2B454(v5);
    v11 = *(v9 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_style);
    if (v10)
    {
      sub_297DC(v11);
    }

    else
    {
      sub_298F4(v11);
    }

    v13 = *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_image];
    *&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_image] = v12;
    v14 = v12;

    [*&v8[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_imageView] setImage:v14];
    sub_2B454(a1);
  }

  else
  {
    sub_2B454(a1);
  }
}

Swift::Int EpisodeInfoViewStyle.hashValue.getter()
{
  v1 = *v0;
  sub_30D7F8();
  sub_30D808(v1);
  return sub_30D858();
}

Swift::Int sub_29BEC()
{
  v1 = *v0;
  sub_30D7F8();
  sub_30D808(v1);
  return sub_30D858();
}

char *sub_29C44(unsigned __int8 a1, char *a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = a1;
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_episodePlayStateController] = 0;
  v16 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_libraryActionController];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_303748();
  swift_storeEnumTagMultiPayload();
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playbackStatusPresenter] = 0;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton] = 0;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playAction] = 0;
  v17 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playHandler];
  *v17 = 0;
  v17[1] = 0;
  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_isHovering] = 0;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_objectGraph] = 0;
  v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_style] = a1;
  *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_artworkView] = a2;
  v18 = &selRef_registerImage_withTraitCollection_;
  if (v14 == 4)
  {
    v19 = objc_allocWithZone(type metadata accessor for GradientView());
    v20 = a2;
    v38 = [v19 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v39 = a4;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_317F20;
    v22 = ObjectType;
    v23 = objc_opt_self();
    v24 = [v23 blackColor];
    v25 = [v24 colorWithAlphaComponent:0.0];

    *(v21 + 32) = v25;
    v26 = v23;
    ObjectType = v22;
    v27 = [v26 blackColor];
    v28 = [v27 colorWithAlphaComponent:0.4];

    *(v21 + 40) = v28;
    v41 = 0;
    v40 = v21;
    a4 = v39;
    v42 = xmmword_317F30;
    v43 = xmmword_317F40;
    v44 = kCAGradientLayerAxial;
    v29 = kCAGradientLayerAxial;
    sub_254AD8(&v40);
    v30 = v38;
    v31 = [v30 layer];
    [v31 setCornerRadius:5.0];

    v32 = [v30 layer];
    [v32 setMaskedCorners:12];

    [v30 setUserInteractionEnabled:0];
    [v30 setHidden:1];

    *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_legibilityGradientView] = v30;
    v18 = &selRef_registerImage_withTraitCollection_;
  }

  else
  {
    *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_legibilityGradientView] = 0;
    v33 = a2;
  }

  v45.receiver = v7;
  v45.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v45, v18[160], 0.0, 0.0, 0.0, 0.0, v38);
  [v34 addSubview:a2];
  if (*&v34[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_legibilityGradientView])
  {
    [v34 addSubview:?];
  }

  sub_124C4(0, &qword_4019C0);
  if (sub_30C988())
  {
    if (a3)
    {
      v35 = &a2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
      v36 = *&a2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
      *v35 = a3;
      *(v35 + 1) = a4;
      *(v35 + 2) = a5;
      *(v35 + 3) = a6;
      a3 = a3;

      sub_2D294();
    }

    else
    {

      a3 = v34;
    }
  }

  else
  {
  }

  return v34;
}

uint64_t sub_2A088()
{
  v1 = v0;
  v2 = sub_307D18();
  sub_2A218(v2);

  v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_episodePlayStateController);
  if (!v4)
  {
    return result;
  }

  sub_309A78();
  if (swift_dynamicCastClass())
  {

    v5 = sub_309A68();
    v7 = v6;
    type metadata accessor for PlaybackStatusPresenter(0);
    swift_allocObject();

    v8 = sub_2A38D8(v5, v7, v4);
LABEL_7:

    v10 = swift_unknownObjectRetain();
    sub_2A2D04(v10, &off_3B5EB8);

    goto LABEL_8;
  }

  sub_309548();
  v8 = swift_dynamicCastClass();
  if (v8)
  {

    v9 = sub_307D98();
    type metadata accessor for PlaybackStatusPresenter(0);
    swift_allocObject();

    v8 = sub_2A3A84(v9, v4);

    goto LABEL_7;
  }

LABEL_8:
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playbackStatusPresenter) = v8;
}

void sub_2A218(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playAction;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playAction) = a1;

  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton);
  if (v3)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler];
    v6 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler];
    *v5 = sub_2B8D8;
    v5[1] = v4;
    v7 = v3;

    sub_1EBD0(v6);

    [v7 setHidden:*(v1 + v2) == 0];
  }
}

void sub_2A330(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton) = a1;
  v7 = a1;

  if (a1)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = &v7[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler];
    v6 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler];
    *v5 = sub_2B6E4;
    v5[1] = v4;

    sub_1EBD0(v6);

    [v7 setHidden:*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playAction) == 0];
  }
}

void sub_2A438(void *a1)
{
  v2 = sub_303748();
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playHandler);
  if (v7)
  {

    v7(v8);
    sub_1EBD0(v7);
LABEL_4:

    return;
  }

  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playState;
  swift_beginAccess();
  sub_1DC68(&v6[v9], v4);
  LOBYTE(v9) = sub_3036F8();
  sub_2B454(v4);
  if (v9)
  {
    v10 = &v6[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_libraryActionController];
    swift_beginAccess();
    if (*(v10 + 24))
    {
      sub_12670(v10, v16);
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      sub_30AE28();
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  else
  {
    v11 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playAction];
    if (v11)
    {
      v17 = sub_30B038();
      v18 = sub_2B7F4(&qword_3FBDA0, &type metadata accessor for Action);
      v16[0] = v11;
      v15[3] = sub_124C4(0, &qword_3FBD90);
      v15[0] = a1;
      type metadata accessor for ArtworkContainer();
      sub_2B7F4(&qword_3FC310, type metadata accessor for ArtworkContainer);
      swift_retain_n();
      v12 = a1;
      v13 = v6;
      sub_3025C8();

      sub_EB68(v15, &unk_3FBB70);
      goto LABEL_10;
    }
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_4;
  }

  sub_268168();

  swift_unknownObjectRelease();
}

uint64_t sub_2A6FC(uint64_t result, char a2)
{
  v3 = result & 1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_isHovering;
  if (v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_isHovering] == (result & 1))
  {
    return result;
  }

  v6 = result;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_isHovering] = v3;
  type metadata accessor for LegacyArtworkWithPlaybackStatusView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v7[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressHidden] = v3;
    v7 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressOverlay];
    if (v7)
    {
      v8 = 1.0;
      if (v6)
      {
        v8 = 0.0;
      }

      v7 = [v7 setAlpha:v8];
    }
  }

  if (v2[v4] != 1)
  {
    goto LABEL_12;
  }

  if ((a2 & 1) == 0)
  {
LABEL_11:
    sub_2A940(v7);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  v11 = swift_allocObject();
  v12 = sub_2B4E8;
  *(v11 + 16) = sub_2B4E8;
  *(v11 + 24) = v10;
  v17[4] = sub_293C0;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_19D688;
  v17[3] = &block_descriptor_4;
  v13 = _Block_copy(v17);
  v14 = v2;

  [v9 performWithoutAnimation:v13];
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_13:
  v15 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton];
  if (v15)
  {
    v16 = 0.0;
    if (v2[v4])
    {
      v16 = 1.0;
    }

    [v15 setAlpha:v16];
  }

  return sub_1EBD0(v12);
}

void sub_2A940()
{
  if (!*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton])
  {
    v1 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_style];
    sub_298F4(v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_style]);
    if (v2)
    {
      v3 = v2;
      v4 = 0x4041000000000000;
      v5 = 0x403E000000000000;
      if (v1 != 2)
      {
        v5 = 0;
      }

      v6 = v1 != 2;
      if (v1 == 4)
      {
        v6 = 0;
      }

      else
      {
        v4 = v5;
      }

      v7 = v1 == 1;
      if (v1 == 1)
      {
        v8 = 0x4046800000000000;
      }

      else
      {
        v8 = v4;
      }

      v9 = !v7 && v6;
      objc_allocWithZone(type metadata accessor for BlurIconButton());
      v10 = v3;
      v11 = sub_219B8C(v10, v8, v8, v9);
      [v11 setAlpha:0.0];
      [v0 addSubview:v11];
      [v0 setNeedsLayout];
      v12 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_objectGraph];
      if (v12)
      {
        *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_objectGraph] = v12;
      }

      v13 = v11;
      sub_2A330(v11);
    }
  }
}

void sub_2AAF8()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_artworkView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_legibilityGradientView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    MinX = CGRectGetMinX(v15);
    [v0 bounds];
    v6 = CGRectGetMaxY(v16) + -100.0;
    [v0 bounds];
    [v4 setFrame:{MinX, v6, CGRectGetWidth(v17), 100.0}];
  }

  v7 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton];
  if (v7)
  {
    v8 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_style];
    v9 = v7;
    [v0 bounds];
    sub_2AC60(v1 == &dword_0 + 1, v8, v10, v11, v12, v13);
    [v9 setFrame:?];
  }
}

void sub_2AC60(char a1, unsigned __int8 a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (!a2 || a2 == 3)
  {
    sub_298F4(a2);
    if (v12)
    {
      v13 = v12;
      if ((a1 & 1) == 0)
      {
        v15.origin.x = a3;
        v15.origin.y = a4;
        v15.size.width = a5;
        v15.size.height = a6;
        CGRectGetMaxX(v15);
        [v13 size];
      }

      v16.origin.x = a3;
      v16.origin.y = a4;
      v16.size.width = a5;
      v16.size.height = a6;
      CGRectGetMaxY(v16);
      [v13 size];
      [v13 size];
    }
  }

  else if (a2 == 4)
  {
    CGRectGetMaxX(*&a3);
    v14.origin.x = a3;
    v14.origin.y = a4;
    v14.size.width = a5;
    v14.size.height = a6;
    CGRectGetMaxY(v14);
  }
}

void sub_2AE20(uint64_t a1)
{
  v2 = v1;
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_objectGraph) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);

  sub_30B8E8();
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_episodePlayStateController) = v7[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC190);
  sub_30B8E8();
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_libraryActionController;
  swift_beginAccess();
  sub_2B864(v7, v2 + v4);
  swift_endAccess();
  v5 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton);
  if (v5)
  {
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_objectGraph] = a1;
    v6 = v5;
  }
}

uint64_t type metadata accessor for ArtworkContainer()
{
  result = qword_3FC2F8;
  if (!qword_3FC2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B0B4()
{
  result = sub_303748();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkContainer.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkContainer.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2B304()
{
  result = qword_3FC308;
  if (!qword_3FC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC308);
  }

  return result;
}

void sub_2B36C(uint64_t a1)
{
  v2 = sub_303748();
  __chkstk_darwin(v2 - 8);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC68(a1, v4);
  sub_29A1C(v4);
}

uint64_t sub_2B3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_303748();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B454(uint64_t a1)
{
  v2 = sub_303748();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2B4B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_2B4E8()
{
  v1 = *(v0 + 16);
  sub_2A940();

  return [v1 layoutIfNeeded];
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2B550(unsigned __int8 a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (!a1 || a1 == 3)
  {
    sub_298F4(a1);
    if (v10)
    {
      v11 = v10;
      v13.origin.x = a2;
      v13.origin.y = a3;
      v13.size.width = a4;
      v13.size.height = a5;
      CGRectGetMaxX(v13);
      [v11 size];
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      CGRectGetMaxY(v14);
      [v11 size];
      [v11 size];
    }
  }

  else if (a1 == 4)
  {
    CGRectGetMaxX(*&a2);
    v12.origin.x = a2;
    v12.origin.y = a3;
    v12.size.width = a4;
    v12.size.height = a5;
    CGRectGetMaxY(v12);
  }
}

uint64_t sub_2B6AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_2B6EC()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_episodePlayStateController) = 0;
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_libraryActionController;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_303748();
  swift_storeEnumTagMultiPayload();
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playbackStatusPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playAction) = 0;
  v2 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_isHovering) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_2B7F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2B864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC318);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ArtworkPlaybackStatusStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkPlaybackStatusStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2BABC()
{
  result = qword_3FC320;
  if (!qword_3FC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC320);
  }

  return result;
}

id sub_2BB10()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressStyle] = 1;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progress] = 0;
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_playing] = 0;
  v2 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.1];
  v3 = [objc_opt_self() whiteColor];
  v4 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  v5 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressBarSettings];
  *v5 = xmmword_3181E0;
  *(v5 + 2) = v2;
  *(v5 + 3) = v3;
  *(v5 + 4) = v4;
  __asm { FMOV            V0.2D, #8.0 }

  *(v5 + 40) = _Q0;
  *(v5 + 56) = _Q0;
  v11 = *(v5 + 3);
  v21[2] = *(v5 + 2);
  v21[3] = v11;
  v22 = *(v5 + 8);
  v12 = *(v5 + 1);
  v21[0] = *v5;
  v21[1] = v12;
  sub_2C588(v21, v20);
  v13 = sub_2B7C0C(0);
  sub_2C5E4(v21);
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressView] = v13;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for ArtworkProgressBarOverlay();
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 defaultCenter];
  [v17 addObserver:v16 selector:"updateProgressViewOpacity" name:UIAccessibilityReduceTransparencyStatusDidChangeNotification object:0];

  return v16;
}

char *sub_2BD6C()
{
  result = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressView);
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progress);
  if (v2 <= 0.0)
  {
    v2 = 0.0;
  }

  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  v3 = &result[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView__progress];
  if ((result[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView__progress + 4] & 1) != 0 || vabds_f32(*v3, v2) >= COERCE_FLOAT(1))
  {
    *v3 = v2;
    *(v3 + 4) = 0;
    return [result setNeedsLayout];
  }

  return result;
}

void sub_2BDE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressView;
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressView];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_barHeight;
  swift_beginAccess();
  v5 = *&v3[v4];
  [v3 frame];
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 0.0;
  v24.size.height = 0.0;
  if (CGRectEqualToRect(v21, v24) || (v6 = [v1 traitCollection], v7 = sub_30C968(), v6, (v7 & 1) != 0))
  {
    v8 = objc_opt_self();
    [v8 begin];
    v9 = 1;
    [v8 setDisableActions:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressBarSettings + 48];
  v11 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressBarSettings + 56];
  v12 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressBarSettings + 64];
  [v1 bounds];
  v13 = CGRectGetMaxY(v22) - v11;
  v14 = *&v1[v2];
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_barHeight;
  swift_beginAccess();
  v16 = v13 - *(v14 + v15);
  [v1 bounds];
  [*&v1[v2] setFrame:{v10, v16, CGRectGetMaxY(v23) - (v10 + v12), v5}];
  v17 = [*&v1[v2] superview];
  if (!v17 || (v18 = v17, sub_293E0(), v19 = v1, v20 = sub_30D098(), v18, v19, (v20 & 1) == 0))
  {
    [v1 addSubview:*&v1[v2]];
  }

  [v1 bringSubviewToFront:*&v1[v2]];
  sub_2C054();
  if (v9)
  {
    [objc_opt_self() commit];
  }
}

void sub_2C054()
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressView;
  v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressView);
  v4 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressBarSettings;
  v5 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressBarSettings + 16);
  if (!IsReduceTransparencyEnabled)
  {
    v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_trackColor;
    swift_beginAccess();
    v24 = *&v3[v23];
    *&v3[v23] = v5;
    v25 = v5;
    v26 = v3;

    v27 = *&v26[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_backgroundShapeLayer];
    v28 = [v25 CGColor];
    [v27 setFillColor:v28];

    v29 = *(v0 + v2);
    v30 = *(v4 + 32);
    v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
    swift_beginAccess();
    v32 = *&v29[v31];
    *&v29[v31] = v30;
    v19 = v30;
    v15 = v29;

    v20 = *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer];
    v33 = *&v29[v31];
    if (v33)
    {
      v34 = [v33 CGColor];
    }

    else
    {
      v34 = 0;
    }

    [v20 setStrokeColor:v34];

    if (*&v29[v31])
    {
      goto LABEL_11;
    }

LABEL_12:
    [v20 removeFromSuperlayer];
    goto LABEL_13;
  }

  v6 = v3;
  v7 = [v5 colorWithAlphaComponent:1.0];
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_trackColor;
  swift_beginAccess();
  v9 = *&v6[v8];
  *&v6[v8] = v7;
  v10 = v7;

  v11 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_backgroundShapeLayer];
  v12 = [v10 CGColor];
  [v11 setFillColor:v12];

  v13 = *(v0 + v2);
  v14 = *(v4 + 32);
  v15 = v13;
  v16 = [v14 colorWithAlphaComponent:1.0];
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  swift_beginAccess();
  v18 = *&v15[v17];
  *&v15[v17] = v16;
  v19 = v16;

  v20 = *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer];
  v21 = *&v15[v17];
  if (v21)
  {
    v22 = [v21 CGColor];
  }

  else
  {
    v22 = 0;
  }

  [v20 setStrokeColor:v22];

  if (!*&v15[v17])
  {
    goto LABEL_12;
  }

LABEL_11:
  v35 = [v15 layer];
  [v35 addSublayer:v20];

  v15 = v19;
  v19 = v35;
LABEL_13:
}

void sub_2C414()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressBarSettings + 16);
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressBarSettings + 24);

  v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkProgressBarOverlay_progressView);
}

id sub_2C474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkProgressBarOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2C644()
{
  result = qword_3FC378;
  if (!qword_3FC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC378);
  }

  return result;
}

unint64_t sub_2C69C()
{
  result = qword_3FC380;
  if (!qword_3FC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC380);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkViewStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkAlignment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ArtworkAlignment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2C990()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_2CA58;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_2EB7C;
  v4[3] = &block_descriptor_5;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_428FC8 = v2;
  return result;
}

id sub_2CA58(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_318240[v1 == &dword_0 + 2];
  v4 = &selRef_whiteColor;
  if (v1 != &dword_0 + 2)
  {
    v4 = &selRef_blackColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

char *sub_2CB08(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_accessibilityTitle];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadowView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_radiosityView] = 0;
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v10 = 0u;
  v10[1] = 0u;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_internalBackgroundColor] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_isStyleInvalid] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 4;
  v11 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode];
  *v11 = 0;
  v11[8] = 1;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_requestCancellable] = 0;
  v12 = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView__contentView] = v12;
  v13 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView] = v13;
  v14 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize];
  *v14 = a3;
  v14[1] = a4;
  [v13 setContentMode:1];
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_aspectRule;
  v16 = enum case for ArtworkAspectRule.aspectFill(_:);
  v17 = sub_303758();
  (*(*(v17 - 8) + 104))(&v4[v15], v16, v17);
  v29.receiver = v4;
  v29.super_class = type metadata accessor for ArtworkView();
  v18 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v19 = qword_3FAFE8;
  v20 = v18;
  if (v19 != -1)
  {
    v28 = v20;
    swift_once();
    v20 = v28;
  }

  v21 = v20;
  [v20 setBackgroundColor:qword_42B028];
  [v21 setClipsToBounds:0];
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView__contentView;
  v23 = *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView__contentView];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 clearColor];
  [v25 setBackgroundColor:v26];

  [*&v21[v22] setClipsToBounds:0];
  [v21 addSubview:*&v21[v22]];
  [*&v21[v22] addSubview:*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView]];

  return v21;
}

uint64_t sub_2CE00(unsigned __int8 *a1, uint64_t a2)
{
  v5 = sub_303758();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [v2 effectiveUserInterfaceLayoutDirection];
  v12 = 6;
  v13 = 5;
  v14 = 7;
  if (v10 != 4)
  {
    v14 = 8;
  }

  if (v10 != 3)
  {
    v13 = v14;
  }

  v15 = 11;
  if (v11 == &dword_0 + 1)
  {
    v15 = 12;
  }

  v16 = 11;
  if (v11 != &dword_0 + 1)
  {
    v16 = 12;
  }

  if (v10 != 1)
  {
    v15 = v16;
  }

  if (v10)
  {
    v12 = v15;
  }

  if (v10 <= 2)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  [v2 setContentMode:v17];
  (*(v6 + 16))(v9, a2, v5);
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_aspectRule;
  swift_beginAccess();
  (*(v6 + 40))(&v2[v18], v9, v5);
  return swift_endAccess();
}

void sub_2D088(void *a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadowView;
  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadowView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView);
    v8 = v6;
    [v7 frame];
    [v8 setFrame:?];

    [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView__contentView) insertSubview:v8 belowSubview:v7];
  }
}

void sub_2D178(void *a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_radiosityView;
  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_radiosityView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView);
    v8 = v6;
    [v7 frame];
    [v8 setFrame:?];
    [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView__contentView) addSubview:v8];
    v9 = [v8 layer];

    [v9 setZPosition:-2.0];
  }
}

void sub_2D294()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow);
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow) || *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_internalBackgroundColor))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadowView);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadowView);
    }

    else
    {
      type metadata accessor for ShadowView();
      v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v3 = v4;
      sub_2D088(v4);
    }

    v5 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerRadius);
    v6 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerStyle);
    *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerRadius] = v5;
    v3[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerStyle] = v6;
    v7 = v2;
    v8 = v3;
    v9 = v8;
    v10 = (v5 < COERCE_DOUBLE(1)) | v6;
    if (v5 < COERCE_DOUBLE(1))
    {
      v5 = 0.0;
    }

    v11 = (v10 & 1) == 0;
    if (v10)
    {
      v12 = &selRef__setContinuousCornerRadius_;
    }

    else
    {
      v12 = &selRef__setCornerRadius_;
    }

    if (v11)
    {
      v13 = &selRef__setContinuousCornerRadius_;
    }

    else
    {
      v13 = &selRef__setCornerRadius_;
    }

    [v8 *v12];
    [v9 *v13];
    [v9 setNeedsLayout];
    v14 = [v9 layer];
    [v14 setMaskedCorners:sub_2DB5F8(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_roundedCorners))];

    v15 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_internalBackgroundColor);
    [v9 setBackgroundColor:v15];

    v16 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
    v17 = *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_shadow];
    v18 = *v1;
    v19 = v1[1];
    *v16 = *v1;
    *(v16 + 1) = v19;
    v22 = v18;

    sub_2BF1DC();
    v20 = v22;
  }

  else
  {
    v21 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadowView;
    v20 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadowView);
    if (v20)
    {
      [v20 removeFromSuperview];
      v20 = *(v0 + v21);
    }

    *(v0 + v21) = 0;
  }
}

void sub_2D4F4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_roundedCorners;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_roundedCorners] = a1;
  v3 = sub_2DB5F8(a1);
  v4 = [v1 layer];
  [v4 setMaskedCorners:v3];

  sub_2BE604();
  v5 = sub_2DB5F8(*&v1[v2]);
  v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadowView];
  if (v6)
  {
    v7 = [v6 layer];
    [v7 setMaskedCorners:v5];
  }

  v8 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView] layer];
  [v8 setMaskedCorners:v5];

  sub_2BE604();
}

void sub_2D5EC(char a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadowView);
  if (v5)
  {
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerRadius] = a2;
    v6 = a1 & 1;
    v5[OBJC_IVAR____TtC23ShelfKitCollectionViews10ShadowView_cornerStyle] = a1 & 1;
    v7 = v5;
    v8 = v7;
    if (a2 >= COERCE_DOUBLE(1))
    {
      v9 = a2;
    }

    else
    {
      v9 = 0.0;
    }

    if ((a2 < COERCE_DOUBLE(1)) | a1 & 1)
    {
      v10 = &selRef__setContinuousCornerRadius_;
    }

    else
    {
      v10 = &selRef__setCornerRadius_;
    }

    if ((a2 < COERCE_DOUBLE(1)) | a1 & 1)
    {
      v11 = &selRef__setCornerRadius_;
    }

    else
    {
      v11 = &selRef__setContinuousCornerRadius_;
    }

    [v7 *v10];
    [v8 *v11];
    [v8 setNeedsLayout];
  }

  else
  {
    v6 = a1 & 1;
  }

  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerRadius) = a2;
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerStyle) = v6;
  v12 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView);
  v13 = "_setCornerRadius:";
  if (a1)
  {
    v13 = "_setContinuousCornerRadius:";
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView) _setContinuousCornerRadius:0.0];
  }

  else
  {
    [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView) v13];
  }

  v14 = "_setContinuousCornerRadius:";
  if (a1)
  {
    v14 = "_setCornerRadius:";
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    v15 = 0.0;
  }

  else
  {
    v15 = a2;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [v12 _setCornerRadius:v15];
  }

  else
  {
    [v12 v14];
  }

  [v12 setClipsToBounds:a2 >= COERCE_DOUBLE(1)];

  sub_2BE604();
}

id sub_2D844()
{
  v1 = sub_303758();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView__contentView];
  [v13 setBounds:?];
  v33.origin.x = v6;
  v33.origin.y = v8;
  v33.size.width = v10;
  v33.size.height = v12;
  v14 = CGRectGetWidth(v33) * 0.5;
  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v10;
  v34.size.height = v12;
  [v13 setCenter:{v14, CGRectGetHeight(v34) * 0.5}];
  [v0 bounds];
  [v0 contentMode];
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_aspectRule;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v15], v1);
  sub_30CC78();
  v17 = v16;
  v19 = v18;
  (*(v2 + 8))(v4, v1);
  v20 = [v0 contentMode];
  v21 = 0.0;
  if (v20 > 0xC)
  {
    [v0 contentMode];
  }

  else if (((1 << v20) & 0x7F) != 0)
  {
    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    v21 = CGRectGetMidX(v35) + v17 * -0.5;
  }

  else if (((1 << v20) & 0xA80) == 0)
  {
    v36.origin.x = v6;
    v36.origin.y = v8;
    v36.size.width = v10;
    v36.size.height = v12;
    v21 = CGRectGetMaxX(v36) - v17;
  }

  v22 = [v0 contentMode];
  v23 = 0.0;
  if (v22 > 0xC)
  {
    [v0 contentMode];
  }

  else if (((1 << v22) & 0x19F) != 0)
  {
    v37.origin.x = v6;
    v37.origin.y = v8;
    v37.size.width = v10;
    v37.size.height = v12;
    v23 = CGRectGetMidY(v37) + v19 * -0.5;
  }

  else if (((1 << v22) & 0x620) == 0)
  {
    v38.origin.x = v6;
    v38.origin.y = v8;
    v38.size.width = v10;
    v38.size.height = v12;
    v23 = CGRectGetMaxY(v38) - v19;
  }

  if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_isStyleInvalid] == 1)
  {
    v24 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
    if (v24 == 4)
    {
      v25 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerRadius];
      v26 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerStyle];
    }

    else
    {
      sub_3031D8();
      v26 = v24 == 1;
    }

    sub_2D5EC(v26, v25);
  }

  v27 = type metadata accessor for ArtworkView();
  v32.receiver = v0;
  v32.super_class = v27;
  objc_msgSendSuper2(&v32, "layoutSubviews");
  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView] setFrame:{v21, v23, v17, v19}];
  v28 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderView];
  if (v28)
  {
    [v28 setFrame:{v21, v23, v17, v19}];
  }

  v29 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadowView];
  if (v29)
  {
    [v29 setFrame:{v21, v23, v17, v19}];
  }

  result = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_radiosityView];
  if (result)
  {
    return [result setFrame:{v21, v23, v17, v19}];
  }

  return result;
}

id sub_2DD8C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for ArtworkView();
  v22.receiver = v4;
  v22.super_class = v9;
  objc_msgSendSuper2(&v22, "frame");
  v11 = v10;
  v13 = v12;
  v21.receiver = v4;
  v21.super_class = v9;
  result = objc_msgSendSuper2(&v21, "setFrame:", a1, a2, a3, a4);
  v15 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize];
  v16 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize];
  v17 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize + 8];
  if (v16 == 0.0 && v17 == 0.0 || (v16 == v11 ? (v18 = v17 == v13) : (v18 = 0), v18))
  {
    [v4 frame];
    *v15 = v19;
    *(v15 + 1) = v20;
    return [v4 setNeedsLayout];
  }

  return result;
}

id sub_2DE78(unsigned __int8 *a1)
{
  v3 = sub_30D6F8();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  if (v9 == 4)
  {
    if (v8 == 4)
    {
      return result;
    }

    v10 = [objc_opt_self() clearColor];
    v11 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = v10;
    v12 = v10;

    sub_2BE604();
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0;
  }

  else
  {
    if (v9 == v8)
    {
      return result;
    }

    v13 = result;
    if (qword_3FA928 != -1)
    {
      swift_once();
    }

    v14 = qword_428FC8;
    v15 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = qword_428FC8;
    v16 = v14;

    sub_2BE604();
    (*(v4 + 104))(v7, enum case for FloatingPointRoundingRule.up(_:), v13);
    sub_302E78();
    v18 = v17;
    (*(v4 + 8))(v7, v13);
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = v18;
  }

  sub_2BE604();
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_isStyleInvalid] = 1;
  return [v1 setNeedsLayout];
}

void (*sub_2E09C(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = [v3 image];
  return sub_2E100;
}

void sub_2E100(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode];
  if (a2)
  {
    if (v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode + 8])
    {
      v5 = *(a1 + 16);
      v10 = v2;
      [v5 setImage:?];
    }

    else
    {
      v10 = *a1;
      if (v2)
      {
        v6 = a1;
        v7 = [v2 imageWithRenderingMode:v4];
        a1 = v6;
      }

      else
      {
        v7 = 0;
      }

      [*(a1 + 16) setImage:v7];
    }

    [v3 invalidateIntrinsicContentSize];
  }

  else
  {
    v10 = *a1;
    if (v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode + 8])
    {
      [*(a1 + 16) setImage:v2];
    }

    else
    {
      if (v2)
      {
        v8 = a1;
        v9 = [v2 imageWithRenderingMode:v4];
        a1 = v8;
      }

      else
      {
        v9 = 0;
      }

      [*(a1 + 16) setImage:v9];
    }

    [v3 invalidateIntrinsicContentSize];
  }
}

void sub_2E280(id a1, char a2)
{
  v5 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView];
  v6 = [v5 layer];
  [v6 removeAllAnimations];

  if (a2)
  {
    [v5 setAlpha:0.0];
    if (v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode + 8])
    {
      [v5 setImage:a1];
    }

    else
    {
      if (a1)
      {
        a1 = [a1 imageWithRenderingMode:*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode]];
      }

      [v5 setImage:a1];
    }

    [v2 invalidateIntrinsicContentSize];
    v7 = [objc_allocWithZone(UICubicTimingParameters) init];
    v8 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v7 timingParameters:0.15];

    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    v12[4] = sub_2EED8;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_914CC;
    v12[3] = &block_descriptor_65;
    v10 = _Block_copy(v12);
    v11 = v2;

    [v8 addAnimations:v10];
    _Block_release(v10);
    [v8 startAnimation];
  }

  else
  {
    if (v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode + 8])
    {
      [v5 setImage:a1];
    }

    else
    {
      if (a1)
      {
        a1 = [a1 imageWithRenderingMode:*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode]];
      }

      [v5 setImage:a1];
    }

    [v2 invalidateIntrinsicContentSize];
  }
}

uint64_t sub_2E528()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_aspectRule;
  v2 = sub_303758();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_2E614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArtworkView()
{
  result = qword_3FC3E8;
  if (!qword_3FC3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2E790()
{
  result = sub_303758();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_2E87C()
{
  result = qword_3FC3F8;
  if (!qword_3FC3F8)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC3F8);
  }

  return result;
}

id sub_2E8D4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView) image];

  return v1;
}

void sub_2E914(void *a1)
{
  sub_2EDC8(a1);
}

void (*sub_2E94C(void *a1))(void *a1)
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
  v2[4] = sub_2E09C(v2);
  return sub_2E9BC;
}

void sub_2E9BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2EA4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_requestCancellable;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_2EB0C(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView) image];
  v4 = v3;
  if (v3)
  {
  }

  sub_2E280(a1, v4 == 0);
}

id sub_2EB7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_2EBE4()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_accessibilityTitle);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadowView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_radiosityView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow);
  *v2 = 0u;
  v2[1] = 0u;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_internalBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_isStyleInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style) = 4;
  v3 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_requestCancellable) = 0;
  sub_30D648();
  __break(1u);
}

char *sub_2ECC8()
{
  v0 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_303E38();
  sub_2D5EC(1, v7);
  v1 = qword_3FA928;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_428FC8;
  v4 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = qword_428FC8;
  v5 = v3;

  sub_2BE604();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0x3FE0000000000000;
  sub_2BE604();

  return v2;
}

id sub_2EDC8(id a1)
{
  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView];
  if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode + 8])
  {
    [v3 setImage:a1];
  }

  else
  {
    if (a1)
    {
      v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView];
      v5 = [a1 imageWithRenderingMode:*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode]];
      v3 = v4;
    }

    else
    {
      v5 = 0;
    }

    [v3 setImage:v5];
  }

  return [v1 invalidateIntrinsicContentSize];
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2EEA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_2EF18(uint64_t a1, double a2, double a3)
{
  v7 = v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = *(a1 + 129);
  v16 = v7;
  sub_2DE78(&v16);
  v8 = sub_3031C8();
  sub_3030C8();
  [v3 setContentMode:sub_303118()];
  v9 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize];
  *v9 = a2;
  v9[1] = a3;
  [v3 setNeedsLayout];
  v10 = (a1 + *(v8 + 48));
  v12 = *v10;
  v11 = v10[1];
  v13 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_accessibilityTitle];
  *v13 = v12;
  v13[1] = v11;

  if (*(a1 + 64) == 255)
  {
    if (qword_3FAFE8 != -1)
    {
      swift_once();
    }

    v14 = qword_42B028;
  }

  else
  {
    v14 = sub_303D48();
  }

  [v3 setBackgroundColor:v14];
}

_BYTE *sub_2F084()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_playbackStatusPresenter] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progress] = 0;
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressHidden] = 0;
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlayStyle] = 0;
  v2 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlay];
  *v2 = 0;
  v2[1] = 0;
  sub_303748();
  swift_storeEnumTagMultiPayload();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v9, "init");
  v4 = v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
  LOBYTE(v8[0]) = v4;
  v5 = v3;
  sub_2DE78(v8);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  v10._object = 0x8000000000336AD0;
  v10._countAndFlagsBits = 0xD00000000000001ELL;
  sub_30C238(v10);
  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  sub_30C238(v11);
  sub_30D638();
  v6 = sub_30C098();

  [v5 setAccessibilityIdentifier:v6];

  return v5;
}

id sub_2F224()
{
  v1 = v0;
  v2 = sub_303748();
  v3 = __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_episodePlayState;
  swift_beginAccess();
  sub_1DC68(&v1[v8], v7);
  v9 = sub_303738();
  result = sub_2B454(v7);
  if ((v9 & 1) == 0)
  {
    sub_1DC68(&v1[v8], v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progress] = 1065353216;
        [v1 setNeedsLayout];
        sub_2FB8C(v5);
        v15 = 2;
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          goto LABEL_5;
        }

        sub_2B454(v5);
        v15 = 0;
      }

LABEL_14:
      v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlayStyle] = v15;
      [v1 setNeedsLayout];
      return [v1 setNeedsLayout];
    }

LABEL_5:
    v12 = v5[1];
    if (v12 <= 0.0)
    {
      goto LABEL_9;
    }

    v13 = *v5 / v12;
    v14 = 1.0;
    if (v13 >= 1.0)
    {
      v15 = 2;
      goto LABEL_13;
    }

    if (v13 <= 0.0)
    {
LABEL_9:
      v15 = 0;
      v14 = 0.0;
    }

    else
    {
      v15 = 1;
      v14 = v13;
    }

LABEL_13:
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progress] = v14;
    [v1 setNeedsLayout];
    goto LABEL_14;
  }

  return result;
}

void sub_2F3F8()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v2 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlay];
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlay];
  if (v3)
  {
    v4 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = v3;
    if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlayStyle] != v6(ObjectType, v4))
    {
      if (*v2)
      {
        v8 = *v2;
        [v8 removeFromSuperview];
      }

      v7 = *v2;
      *v2 = 0;
      *(v2 + 1) = 0;
    }
  }

  sub_2F4F4();
  sub_2F6D4();
}

void sub_2F4F4()
{
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_objectGraph))
  {
    v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlay;
    if (!*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlay))
    {
      if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlayStyle))
      {
        if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlayStyle) == 1)
        {
          v2 = objc_allocWithZone(type metadata accessor for ArtworkProgressBarOverlay());
          swift_retain_n();
          v3 = sub_2BB10();
          v4 = &off_3B6000;
        }

        else
        {
          v5 = objc_allocWithZone(type metadata accessor for ArtworkCheckmarkProgressOverlay());

          sub_29214();
          v4 = &off_3B5D08;
        }
      }

      else
      {

        v3 = 0;
        v4 = 0;
      }

      v6 = *v1;
      *v1 = v3;
      *(v1 + 8) = v4;

      v7 = *v1;
      if (*v1)
      {
        v8 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerRadius);
        v9 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerStyle);
        v10 = *(&stru_68.reserved2 + (swift_isaMask & *v7));
        v11 = v7;
        v10(v9, v8);

        if (*v1)
        {
          if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressHidden))
          {
            v12 = 0.0;
          }

          else
          {
            v12 = 1.0;
          }

          v13 = *v1;
          [v13 setAlpha:v12];
        }
      }
    }
  }
}

void sub_2F6D4()
{
  v1 = v0;
  v2 = sub_303748();
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlay];
  v6 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progressOverlay];
  if (v6)
  {
    v7 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v9 = v6;
    [v1 bounds];
    [v9 setFrame:?];

    v10 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_progress];
    v20 = v9;
    (*(v7 + 24))(ObjectType, v7, v10);
    v11 = v20;
    v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_episodePlayState;
    swift_beginAccess();
    sub_1DC68(&v1[v12], v4);
    LOBYTE(v12) = sub_3036F8();
    sub_2B454(v4);
    v13 = swift_getObjectType();
    v19 = v11;
    (*(v7 + 48))(v12 & 1, v13, v7);
    v14 = v19;
    v15 = [v19 superview];
    if (!v15 || (v16 = v15, sub_293E0(), v17 = v1, v18 = sub_30D098(), v16, v17, (v18 & 1) == 0))
    {
      [v1 addSubview:v14];
    }
  }
}

uint64_t sub_2F908()
{

  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_episodePlayState;

  return sub_2B454(v1);
}

uint64_t type metadata accessor for ArtworkWithPlaybackStatusView()
{
  result = qword_3FC448;
  if (!qword_3FC448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2FA08()
{
  result = sub_303748();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2FAD0(uint64_t a1)
{
  v3 = sub_303748();
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC68(a1, v5);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews29ArtworkWithPlaybackStatusView_episodePlayState;
  swift_beginAccess();
  sub_2B3F0(v5, v1 + v6);
  swift_endAccess();
  sub_2F224();
  return sub_2B454(v5);
}

uint64_t sub_2FB8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2FCE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadiosityView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_2FD3C(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for RadiosityView();
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews13RadiosityView_saturation;
  *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews13RadiosityView_saturation] = 0x4000000000000000;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews13RadiosityView_scaleFactor;
  *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews13RadiosityView_scaleFactor] = 0x3FEB333333333333;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews13RadiosityView_blurRadius;
  *&v11[v12] = a4;
  *&v11[v14] = a3;
  *&v11[v13] = a5;
  v31.receiver = v11;
  v31.super_class = v10;
  v15 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v15 setSourceView:a1];
  [v15 setAlpha:a2];
  v16 = [v15 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_315420;
  v18 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v19 = sub_30C098();
  [v18 setName:v19];

  isa = sub_302DF8().super.super.isa;
  [v18 setValue:isa forKey:kCAFilterInputRadius];

  v21 = sub_3006C();
  *(v17 + 56) = v21;
  *(v17 + 32) = v18;
  v22 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v23 = sub_30C098();
  [v22 setName:v23];

  v24 = sub_302DF8().super.super.isa;
  [v22 setValue:v24 forKey:kCAFilterInputAmount];

  *(v17 + 88) = v21;
  *(v17 + 64) = v22;
  v25 = sub_30C358().super.isa;

  [v16 setFilters:v25];

  v26 = *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews13RadiosityView_scaleFactor];
  v30.a = 1.0;
  v30.b = 0.0;
  v30.c = 0.0;
  v30.d = 1.0;
  v30.tx = 0.0;
  v30.ty = 0.0;
  CGAffineTransformScale(&v29, &v30, v26, v26);
  v30 = v29;
  [v15 setTransform:&v30];

  return v15;
}

unint64_t sub_3006C()
{
  result = qword_3FC4A0;
  if (!qword_3FC4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3FC4A0);
  }

  return result;
}

uint64_t static Dependencies.allDependencies()()
{
  sub_307C48();

  sub_303F68();

  v0 = sub_30B988();

  return v0;
}

__n128 sub_30160@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC4A8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_315420;
  if (qword_3FA950 != -1)
  {
    swift_once();
  }

  v3 = qword_429060;
  *(v2 + 32) = qword_429058;
  *(v2 + 40) = v3;

  sub_306BE8();
  sub_306D38();
  sub_306D48();
  sub_3053A8();
  if (qword_3FA948 != -1)
  {
    swift_once();
  }

  v4 = sub_3055F8();
  v5 = __swift_project_value_buffer(v4, qword_429040);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC4B0) + 36);
  sub_30304(v5, v6);
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC4B8) + 36)) = 256;
  *a1 = v8;
  result = v9;
  *(a1 + 24) = v10;
  *(a1 + 8) = v9;
  *(a1 + 40) = 256;
  return result;
}

uint64_t sub_30304(uint64_t a1, uint64_t a2)
{
  v4 = sub_3055F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_3036C()
{
  result = qword_3FC4C0;
  if (!qword_3FC4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC4B0);
    sub_EC8C(&qword_3FC4C8, &qword_3FC4D0);
    sub_EC8C(&qword_3FC4D8, &qword_3FC4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC4C0);
  }

  return result;
}

uint64_t sub_30450@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3058B8();
  *a1 = result;
  return result;
}

uint64_t sub_304A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_308CD8();
  __chkstk_darwin(v3 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_305A08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CategorySelectionBodyContent(0);
  v11 = __chkstk_darwin(v10);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v58 - v13;
  v15 = *a1;
  if (*(a1 + 8) == 1)
  {
    v97 = *a1;
  }

  else
  {

    sub_30C7A8();
    v16 = sub_306088();
    v58 = v6;
    v17 = v16;
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v58);
    v15 = v97;
  }

  v18 = type metadata accessor for CategorySelectionCell(0);
  sub_34178(a1 + *(v18 + 20), v5, &type metadata accessor for CategorySelection);
  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 3) = v15;
  sub_34178(v5, &v14[*(v10 + 24)], &type metadata accessor for CategorySelection);
  type metadata accessor for CategorySelectionFavoritedCategoriesObserver();
  swift_allocObject();

  v20 = sub_3E810(v19);
  v21 = &v14[*(v10 + 28)];
  *&v61 = v20;
  sub_306A08();
  sub_341E0(v5, &type metadata accessor for CategorySelection);
  v22 = v72;
  *v21 = v71;
  *(v21 + 1) = v22;
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  LODWORD(v58) = sub_3060D8();
  sub_304FD8();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  v34 = sub_3060F8();
  *(inited + 32) = v34;
  v35 = sub_306118();
  *(inited + 33) = v35;
  v36 = sub_306108();
  sub_306108();
  if (sub_306108() != v34)
  {
    v36 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v35)
  {
    v36 = sub_306108();
  }

  sub_304FD8();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v93 = 0;
  v45 = v60;
  sub_34178(v14, v60, type metadata accessor for CategorySelectionBodyContent);
  v46 = v59;
  sub_34178(v45, v59, type metadata accessor for CategorySelectionBodyContent);
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC540) + 64);
  *&v61 = KeyPath;
  BYTE8(v61) = 0;
  *(&v61 + 9) = *v96;
  HIDWORD(v61) = *&v96[3];
  v62 = v24;
  v63 = 0;
  LOBYTE(v64) = 0;
  *(&v64 + 1) = *v95;
  DWORD1(v64) = *&v95[3];
  v48 = v24;
  v49 = v58;
  BYTE8(v64) = v58;
  *(&v64 + 9) = *v94;
  HIDWORD(v64) = *&v94[3];
  *&v65 = v26;
  *(&v65 + 1) = v28;
  *&v66 = v30;
  *(&v66 + 1) = v32;
  LOBYTE(v67) = 0;
  BYTE8(v67) = v36;
  *&v68 = v38;
  *(&v68 + 1) = v40;
  *&v69 = v42;
  *(&v69 + 1) = v44;
  v70 = 0;
  v50 = v61;
  v51 = v62;
  v52 = v65;
  *(v47 + 32) = v64;
  *(v47 + 48) = v52;
  *v47 = v50;
  *(v47 + 16) = v51;
  v53 = v66;
  v54 = v67;
  v55 = v68;
  v56 = v69;
  *(v47 + 128) = 0;
  *(v47 + 96) = v55;
  *(v47 + 112) = v56;
  *(v47 + 64) = v53;
  *(v47 + 80) = v54;
  sub_EB00(&v61, &v71, &qword_3FC548);
  sub_341E0(v14, type metadata accessor for CategorySelectionBodyContent);
  v71 = KeyPath;
  LOBYTE(v72) = 0;
  *(&v72 + 1) = *v96;
  HIDWORD(v72) = *&v96[3];
  v73 = v48;
  v74 = 0;
  v75 = 0;
  *v76 = *v95;
  *&v76[3] = *&v95[3];
  v77 = v49;
  *&v78[3] = *&v94[3];
  *v78 = *v94;
  v79 = v26;
  v80 = v28;
  v81 = v30;
  v82 = v32;
  v83 = 0;
  v84 = v36;
  v85 = v38;
  v86 = v40;
  v87 = v42;
  v88 = v44;
  v89 = 0;
  sub_EB68(&v71, &qword_3FC548);
  return sub_341E0(v45, type metadata accessor for CategorySelectionBodyContent);
}

uint64_t sub_30A50()
{
  v1 = sub_306008();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC500);
  __chkstk_darwin(v5);
  v7 = (&v12 - v6);
  *v7 = sub_306C38();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC508);
  sub_304A8(v0, v7 + *(v9 + 44));
  v10 = *(v5 + 36);
  *(v7 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC510);
  swift_storeEnumTagMultiPayload();
  sub_305FF8();
  sub_34030();
  sub_306738();
  (*(v2 + 8))(v4, v1);
  return sub_EB68(v7, &qword_3FC500);
}

uint64_t sub_30C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_307048();
  (*(*(v8 - 8) + 8))(a1, v8);
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  return sub_348F0(a2, a4 + *(a3 + 20), &type metadata accessor for CategorySelection);
}

uint64_t sub_30CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_30EB8(&qword_3FC550, type metadata accessor for CategorySelectionCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

double sub_30D9C@<D0>(uint64_t a1@<X8>)
{
  sub_3074B8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_30EB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_30FAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3058B8();
  *a1 = result;
  return result;
}

uint64_t sub_31004@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  *v6 = sub_305BE8();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6B8);
  sub_311D4(v2, &v6[*(v7 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  v9 = sub_3060F8();
  *(inited + 32) = v9;
  v10 = sub_306118();
  *(inited + 33) = v10;
  v11 = sub_306108();
  sub_306108();
  if (sub_306108() != v9)
  {
    v11 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v10)
  {
    v11 = sub_306108();
  }

  sub_304FD8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_34804(v6, a1, &qword_3FC6B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6C0);
  v21 = a1 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_311D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v87 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6D0);
  __chkstk_darwin(v92);
  v7 = &v87 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6D8);
  v8 = __chkstk_darwin(v95);
  v98 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v94 = &v87 - v11;
  __chkstk_darwin(v10);
  v97 = &v87 - v12;
  v13 = *(type metadata accessor for CategorySelectionBodyContent(0) + 24);
  *&v100 = a1;
  v14 = a1 + v13;
  v15 = *(v14 + 24);
  v96 = v7;
  *&v93 = v5;
  KeyPath = v14;
  if (v15)
  {
    v16 = *(v14 + 16);
    v17 = v15;
  }

  else
  {
    if (qword_3FA930 != -1)
    {
      swift_once();
    }

    v16 = qword_429010;
  }

  v114 = v16;
  v115 = v17;
  sub_E504();

  v18 = sub_3063C8();
  v20 = v19;
  v22 = v21;
  sub_3061F8();
  sub_306178();

  v23 = sub_306388();
  v25 = v24;
  v27 = v26;

  sub_EBC8(v18, v20, v22 & 1);

  v114 = sub_306878();
  v28 = sub_306348();
  v103 = v29;
  v104 = v30;
  v32 = v31;
  sub_EBC8(v23, v25, v27 & 1);

  v102 = sub_3060D8();
  v114 = 0x4042000000000000;
  LOBYTE(v115) = 0;
  *&v105 = 0x4044000000000000;
  BYTE8(v105) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6E0);
  sub_303E38();
  v33 = 0;
  v34 = v139;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if ((v139 & 1) == 0)
  {
    sub_304FD8();
    v33 = v38;
    v35 = v39;
    v36 = v40;
    v37 = v41;
  }

  v101 = v32 & 1;
  v145 = v32 & 1;
  v91 = v34;
  v140 = v34;
  v90 = sub_3060E8();
  sub_304FD8();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v146 = 0;
  v50 = *(KeyPath + 32);
  KeyPath = swift_getKeyPath();
  v51 = v50;

  v52 = sub_305AA8();
  v53 = v93;
  *v93 = v52;
  *(v53 + 8) = 0;
  *(v53 + 16) = 1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6E8);
  sub_319B8(v53 + *(v54 + 44));
  v55 = sub_3060D8();
  *&v105 = 0x403A000000000000;
  BYTE8(v105) = 0;
  v137 = 0x4034000000000000;
  v138 = 0;
  sub_303E38();
  v56 = 0uLL;
  v100 = 0u;
  v57 = v115;
  v58 = 0uLL;
  v59 = v96;
  if ((v115 & 1) == 0)
  {
    sub_304FD8();
    *(&v58 + 1) = v60;
    *(&v56 + 1) = v61;
  }

  v87 = v58;
  v88 = v56;
  sub_34804(v53, v59, &qword_3FC6C8);
  v62 = v59 + *(v92 + 36);
  *v62 = v55;
  v63 = v88;
  *(v62 + 24) = v87;
  *(v62 + 8) = v63;
  *(v62 + 40) = v57;
  v64 = sub_3060E8();
  v114 = 0x403A000000000000;
  LOBYTE(v115) = 0;
  *&v105 = 0x403C000000000000;
  BYTE8(v105) = 0;
  sub_303E38();
  v65 = v138;
  v66 = 0uLL;
  if ((v138 & 1) == 0)
  {
    sub_304FD8();
    *(&v66 + 1) = v67;
    *(&v69 + 1) = v68;
    v100 = v69;
  }

  v93 = v66;
  v70 = v59;
  v71 = v94;
  sub_34804(v70, v94, &qword_3FC6D0);
  v72 = v71 + *(v95 + 36);
  *v72 = v64;
  *(v72 + 24) = v93;
  *(v72 + 8) = v100;
  *(v72 + 40) = v65;
  v73 = v71;
  v74 = v97;
  sub_34804(v73, v97, &qword_3FC6D8);
  v75 = v98;
  sub_EB00(v74, v98, &qword_3FC6D8);
  *&v105 = v28;
  *(&v105 + 1) = v103;
  LOBYTE(v106) = v101;
  *(&v106 + 1) = *v144;
  DWORD1(v106) = *&v144[3];
  *&v100 = v28;
  *(&v106 + 1) = v104;
  LOWORD(v107) = 256;
  *(&v107 + 2) = v142;
  WORD3(v107) = v143;
  BYTE8(v107) = v102;
  *(&v107 + 9) = *v141;
  HIDWORD(v107) = *&v141[3];
  *&v108 = v33;
  *(&v108 + 1) = v35;
  *&v109 = v36;
  *(&v109 + 1) = v37;
  v77 = v90;
  v76 = v91;
  LOBYTE(v110) = v91;
  DWORD1(v110) = *(v148 + 3);
  *(&v110 + 1) = v148[0];
  BYTE8(v110) = v90;
  *(&v110 + 9) = *v147;
  HIDWORD(v110) = *&v147[3];
  *&v111 = v43;
  *(&v111 + 1) = v45;
  *&v112 = v47;
  *(&v112 + 1) = v49;
  v113 = 0;
  v78 = v111;
  v79 = v112;
  v80 = v99;
  *(v99 + 128) = 0;
  *(v80 + 96) = v78;
  *(v80 + 112) = v79;
  v81 = v105;
  v82 = v106;
  v83 = v110;
  *(v80 + 64) = v109;
  *(v80 + 80) = v83;
  v84 = v108;
  *(v80 + 32) = v107;
  *(v80 + 48) = v84;
  *v80 = v81;
  *(v80 + 16) = v82;
  *(v80 + 136) = v51;
  *(v80 + 144) = 1;
  *(v80 + 152) = KeyPath;
  *(v80 + 160) = 0;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6F0);
  sub_EB00(v75, v80 + *(v85 + 64), &qword_3FC6D8);
  sub_EB00(&v105, &v114, &qword_3FC6F8);

  sub_EB68(v74, &qword_3FC6D8);
  sub_EB68(v75, &qword_3FC6D8);

  v114 = v100;
  v115 = v103;
  v116 = v101;
  *v117 = *v144;
  *&v117[3] = *&v144[3];
  v118 = v104;
  v119 = 256;
  v120 = v142;
  v121 = v143;
  v122 = v102;
  *&v123[3] = *&v141[3];
  *v123 = *v141;
  v124 = v33;
  v125 = v35;
  v126 = v36;
  v127 = v37;
  v128 = v76;
  *&v129[3] = *(v148 + 3);
  *v129 = v148[0];
  v130 = v77;
  *&v131[3] = *&v147[3];
  *v131 = *v147;
  v132 = v43;
  v133 = v45;
  v134 = v47;
  v135 = v49;
  v136 = 0;
  return sub_EB68(&v114, &qword_3FC6F8);
}

uint64_t sub_319B8@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC700);
  __chkstk_darwin(v73);
  v2 = &v69[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC708);
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = __chkstk_darwin(v3);
  v75 = &v69[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v69[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC710);
  v9 = __chkstk_darwin(v8 - 8);
  v82 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v69[-v11];
  v13 = sub_30B268();
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = __chkstk_darwin(v13);
  v79 = &v69[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v69[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC718);
  v19 = __chkstk_darwin(v18 - 8);
  v85 = &v69[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v84 = &v69[-v21];
  sub_3216C(&v69[-v21]);
  v76 = v17;
  sub_30B278();
  v22 = sub_305BE8();
  v86 = 0x4008000000000000;
  LOBYTE(v87) = 0;
  v88 = 0x4010000000000000;
  v89 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6E0);
  sub_303E38();
  v23 = v90;
  v24 = v91;
  *v12 = v22;
  *(v12 + 1) = v23;
  v12[16] = v24;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC720) + 44);
  v74 = v7;
  sub_32514(v7);
  if (qword_3FA940 != -1)
  {
    swift_once();
  }

  v71 = &v12[v25];
  v86 = qword_429030;
  v87 = *algn_429038;
  sub_E504();
  v72 = v12;

  v26 = sub_3063C8();
  v28 = v27;
  v30 = v29;
  sub_306248();
  v31 = sub_306388();
  v33 = v32;
  v35 = v34;

  sub_EBC8(v26, v28, v30 & 1);

  sub_306878();
  v36 = sub_306888();

  v37 = *(v73 + 36);
  v38 = enum case for BlendMode.plusLighter(_:);
  v39 = sub_306CB8();
  (*(*(v39 - 8) + 104))(v2 + v37, v38, v39);
  *v2 = v36;
  sub_EC8C(&qword_3FC728, &qword_3FC700);
  v40 = sub_306348();
  v42 = v41;
  v70 = v43;
  v73 = v44;
  sub_EBC8(v31, v33, v35 & 1);

  sub_EB68(v2, &qword_3FC700);
  KeyPath = swift_getKeyPath();
  v47 = v77;
  v46 = v78;
  v48 = *(v77 + 16);
  v49 = v74;
  v50 = v75;
  v48(v75, v74, v78);
  v51 = v71;
  v48(v71, v50, v46);
  v52 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC730) + 48)];
  *v52 = v40;
  *(v52 + 1) = v42;
  v53 = v70;
  LOBYTE(v36) = v70 & 1;
  v52[16] = v70 & 1;
  *(v52 + 3) = v73;
  *(v52 + 4) = KeyPath;
  v52[40] = 0;
  sub_EBD8(v40, v42, v53 & 1);
  v54 = *(v47 + 8);

  v54(v49, v46);
  sub_EBC8(v40, v42, v36);

  v54(v50, v46);
  v55 = v85;
  sub_EB00(v84, v85, &qword_3FC718);
  v57 = v79;
  v56 = v80;
  v58 = *(v80 + 16);
  v59 = v76;
  v60 = v81;
  v58(v79, v76, v81);
  v61 = v72;
  v62 = v82;
  sub_EB00(v72, v82, &qword_3FC710);
  LOBYTE(v86) = 1;
  v63 = v83;
  sub_EB00(v55, v83, &qword_3FC718);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC738);
  v58((v63 + v64[12]), v57, v60);
  sub_EB00(v62, v63 + v64[16], &qword_3FC710);
  v65 = v63 + v64[20];
  v66 = v86;
  *v65 = 0;
  *(v65 + 8) = v66;
  sub_EB68(v61, &qword_3FC710);
  v67 = *(v56 + 8);
  v67(v59, v60);
  sub_EB68(v84, &qword_3FC718);
  sub_EB68(v62, &qword_3FC710);
  v67(v57, v60);
  return sub_EB68(v85, &qword_3FC718);
}

__n128 sub_3216C@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CategorySelectionBodyContent(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_34178(v1, &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CategorySelectionBodyContent);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_348F0(&v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for CategorySelectionBodyContent);
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC7D0);
  sub_34EF0();
  sub_306A68();
  v9 = (v1 + *(v4 + 36));
  v11 = v9[1];
  v31 = *v9;
  v10 = v31;
  v32 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC840);
  sub_306A18();
  v12 = v30;
  swift_getKeyPath();
  v31 = v12;
  sub_30EB8(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
  sub_302D98();

  v13 = *(v12 + 24);

  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC850) + 36)) = v13;
  v31 = v10;
  v32 = v11;
  sub_306A18();
  v14 = v30;
  swift_getKeyPath();
  v31 = v14;
  sub_302D98();

  LOBYTE(v5) = *(v14 + 24);

  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = (v5 & 1) == 0;
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC858) + 36));
  *v17 = KeyPath;
  v17[1] = sub_35298;
  v17[2] = v16;
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC718) + 36));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC860);
  sub_305668();
  v20 = *(sub_3055F8() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = sub_305B68();
  (*(*(v22 - 8) + 104))(v18 + v20, v21, v22);
  __asm { FMOV            V0.2D, #15.0 }

  *v18 = result;
  v18->n128_u8[*(v19 + 36)] = 0;
  return result;
}

uint64_t sub_32514@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v43 = sub_306008();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_305BA8();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CategorySelectionBodyContent(0);
  v6 = v5 - 8;
  v33 = *(v5 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v5);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC740);
  __chkstk_darwin(v34);
  v9 = &v32 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC748);
  v10 = __chkstk_darwin(v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = &v32 - v13;
  v14 = *(v1 + *(v6 + 32) + 40);
  v15 = [objc_opt_self() mainBundle];
  v31._countAndFlagsBits = 0xE000000000000000;
  v49._object = 0x8000000000336BD0;
  v49._countAndFlagsBits = 0xD000000000000020;
  v50.value._countAndFlagsBits = 0;
  v50.value._object = 0;
  v16.super.isa = v15;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  sub_301AB8(v49, v50, v16, v51, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_315430;
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = v14;
  v18 = sub_30C0A8();
  v20 = v19;

  sub_34178(v1, &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CategorySelectionBodyContent);
  v21 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v22 = swift_allocObject();
  sub_348F0(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for CategorySelectionBodyContent);
  v44 = v18;
  v45 = v20;
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC750);
  sub_3497C();
  sub_306A68();
  v23 = &v9[*(v34 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v25 = enum case for Image.Scale.small(_:);
  v26 = sub_306958();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  v47 = v18;
  v48 = v20;
  sub_34B24();
  sub_E504();
  sub_3066C8();
  sub_EB68(v9, &qword_3FC740);

  v27 = v37;
  sub_305B88();
  v28 = v35;
  sub_305518();
  (*(v38 + 8))(v27, v39);
  sub_EB68(v12, &qword_3FC748);
  v29 = v40;
  sub_305FE8();
  sub_34C08();
  sub_306738();
  (*(v41 + 8))(v29, v43);
  return sub_EB68(v28, &qword_3FC748);
}

uint64_t sub_32AC0(uint64_t a1)
{
  v2 = sub_302558();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v42 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30BA28();
  __chkstk_darwin(v4 - 8);
  v41 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_30BD98();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v36 = sub_30B7E8();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_30B898();
  __chkstk_darwin(v12 - 8);
  v37 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_305A08();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(a1 + 8);
  v43 = a1;
  if (*(a1 + 16) == 1)
  {
    swift_unknownObjectRetain();
    v34 = v19;
  }

  else
  {

    sub_30C7A8();
    v20 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_348E4(v18, v19, 0);
    (*(v15 + 8))(v17, v14);
    v34 = *(&v47 + 1);
    v18 = v47;
  }

  v32 = v18;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
  v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_315430;
  sub_303548();
  sub_303838();
  sub_3037F8();
  v29 = v10;
  sub_303AB8();
  v21 = sub_301CB8();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = v9;
  sub_302718();
  v23 = v35;
  sub_30B788();
  v53 = v47;
  sub_EB68(&v53, &unk_408130);
  v52 = v48;
  sub_EB68(&v52, &qword_3FC878);
  v51 = v49;
  sub_EB68(&v51, &qword_408140);
  sub_1EBD0(v50);

  sub_EB68(v22, &qword_3FB8E0);
  v24 = v38;
  sub_30BD88();
  sub_30B798();
  (*(v39 + 8))(v24, v40);
  (*(v29 + 8))(v23, v36);
  sub_30BA18();
  sub_30B878();
  v46[3] = sub_30A828();
  v46[4] = sub_30EB8(&qword_3FC880, &type metadata accessor for DismissInlineModuleAction);
  __swift_allocate_boxed_opaque_existential_0Tm(v46);
  sub_30A818();
  v26 = v44;
  v25 = v45;
  v27 = v42;
  (*(v44 + 104))(v42, enum case for ActionMetricsBehavior.fromAction(_:), v45);
  sub_307C38();
  swift_unknownObjectRelease();

  (*(v26 + 8))(v27, v25);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

double sub_331F4@<D0>(uint64_t a1@<X8>)
{
  if (qword_3FA938 != -1)
  {
    swift_once();
  }

  sub_E504();

  v2 = sub_3063C8();
  v31 = v3;
  v32 = v2;
  v5 = v4;
  v33 = v6;
  sub_306C58();
  sub_305638();
  v7 = v5 & 1;
  LOBYTE(v35) = v5 & 1;
  v29 = sub_3060B8();
  sub_306168();
  v30 = sub_306178();

  KeyPath = swift_getKeyPath();
  sub_306878();
  type metadata accessor for CategorySelectionBodyContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC840);
  sub_306A18();
  swift_getKeyPath();
  sub_30EB8(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
  sub_302D98();

  v8 = sub_306888();

  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC7D0) + 36));
  v10 = *(sub_3055F8() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_305B68();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #15.0 }

  *v9 = _Q0;
  LODWORD(v11) = sub_305E68();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC868);
  v19 = &v9[*(v18 + 52)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC870) + 36);
  v21 = enum case for BlendMode.plusDarker(_:);
  v22 = sub_306CB8();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = v11;
  *&v9[*(v18 + 56)] = 256;
  v23 = sub_306C58();
  v25 = v24;
  v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC838) + 36)];
  *v26 = v23;
  v26[1] = v25;
  *a1 = v32;
  *(a1 + 8) = v31;
  *(a1 + 16) = v7;
  *(a1 + 20) = v35 >> 24;
  *(a1 + 17) = v35;
  *(a1 + 24) = v33;
  *(a1 + 32) = v36;
  *(a1 + 48) = v37;
  *(a1 + 112) = v41;
  *(a1 + 128) = v42;
  *(a1 + 64) = v38;
  *(a1 + 80) = v39;
  *(a1 + 96) = v40;
  *(a1 + 144) = v29;
  *(a1 + 148) = *(&v35 + 3);
  *(a1 + 145) = v35;
  result = 0.0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 1;
  *(a1 + 185) = *v34;
  *(a1 + 188) = *&v34[3];
  *(a1 + 192) = KeyPath;
  *(a1 + 200) = v30;
  *(a1 + 208) = v8;
  return result;
}

uint64_t sub_335EC(uint64_t a1)
{
  v2 = sub_302558();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_305A08();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v15 = v8;

    sub_30C7A8();
    v13 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_348E4(v11, v12, 0);
    (*(v7 + 8))(v10, v15);
  }

  swift_getObjectType();
  type metadata accessor for CategorySelectionBodyContent(0);
  sub_308CC8();
  (*(v3 + 104))(v5, enum case for ActionMetricsBehavior.fromAction(_:), v2);
  sub_307C38();
  swift_unknownObjectRelease();

  (*(v3 + 8))(v5, v2);
  return __swift_destroy_boxed_opaque_existential_1(&v16);
}

uint64_t sub_33870@<X0>(uint64_t a1@<X8>)
{

  sub_3099F8();
  sub_306258();
  v2 = sub_306178();

  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC768) + 36));
  *v4 = KeyPath;
  v4[1] = v2;
  v5 = sub_306898();
  v6 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC750);
  v8 = (a1 + *(result + 36));
  *v8 = v6;
  v8[1] = v5;
  return result;
}

uint64_t sub_33940(uint64_t a1, char a2)
{
  v4 = sub_305A08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_30C7A8();
    v8 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_33AD0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_305A08();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_EB00(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_30C7A8();
    v17 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_33D40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v17 = a3;
  v7 = sub_305A08();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_EB00(v6, &v16 - v12, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_34804(v13, v17, a2);
  }

  sub_30C7A8();
  v15 = sub_306088();
  sub_304108();

  sub_3059F8();
  swift_getAtKeyPath();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_33F64(uint64_t a1)
{
  v2 = sub_3050A8();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_305708();
}

unint64_t sub_34030()
{
  result = qword_3FC518;
  if (!qword_3FC518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC500);
    sub_EC8C(&qword_3FC520, &qword_3FC528);
    sub_30EB8(&qword_3FC530, type metadata accessor for CategorySelectionContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC518);
  }

  return result;
}

uint64_t sub_34138(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_34178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_341E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_34254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_308CD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_34314(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_308CD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_343B8()
{
  sub_3449C();
  if (v0 <= 0x3F)
  {
    sub_30B9A8();
    if (v1 <= 0x3F)
    {
      sub_308CD8();
      if (v2 <= 0x3F)
      {
        sub_34720(319, &unk_3FC5E0, type metadata accessor for CategorySelectionFavoritedCategoriesObserver, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_3449C()
{
  if (!qword_3FC5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_408F60);
    v0 = sub_3050B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3FC5D8);
    }
  }
}

uint64_t sub_34514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_308CD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_345CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_308CD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3466C()
{
  sub_34720(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_308CD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_34720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_34784()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC500);
  sub_34030();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_34804(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_3486C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_305998();
  *a1 = result & 1;
  return result;
}

uint64_t sub_348E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_348F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_3497C()
{
  result = qword_3FC758;
  if (!qword_3FC758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC750);
    sub_34A34();
    sub_EC8C(&qword_3FC788, &qword_3FC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC758);
  }

  return result;
}

unint64_t sub_34A34()
{
  result = qword_3FC760;
  if (!qword_3FC760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC768);
    sub_30EB8(&qword_3FC770, &type metadata accessor for ChevronAppendingView);
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC760);
  }

  return result;
}

unint64_t sub_34B24()
{
  result = qword_3FC7A0;
  if (!qword_3FC7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC740);
    sub_EC8C(&qword_3FC7A8, &qword_3FC7B0);
    sub_EC8C(&qword_3FC7B8, &qword_3FC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC7A0);
  }

  return result;
}

unint64_t sub_34C08()
{
  result = qword_3FC7C0;
  if (!qword_3FC7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC748);
    sub_34B24();
    sub_30EB8(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC7C0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for CategorySelectionBodyContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_348E4(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v5 = v0 + v4 + *(v1 + 24);

  __swift_destroy_boxed_opaque_existential_1(v5 + 48);
  v6 = *(sub_308CD8() + 36);
  v7 = sub_30BAA8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_34E74(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CategorySelectionBodyContent(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_34EF0()
{
  result = qword_3FC7D8;
  if (!qword_3FC7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC7D0);
    sub_34FA8();
    sub_EC8C(&qword_3FC830, &qword_3FC838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC7D8);
  }

  return result;
}

unint64_t sub_34FA8()
{
  result = qword_3FC7E0;
  if (!qword_3FC7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC7E8);
    sub_35060();
    sub_EC8C(&qword_3FC820, &qword_3FC828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC7E0);
  }

  return result;
}

unint64_t sub_35060()
{
  result = qword_3FC7F0;
  if (!qword_3FC7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC7F8);
    sub_35118();
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC7F0);
  }

  return result;
}

unint64_t sub_35118()
{
  result = qword_3FC800;
  if (!qword_3FC800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC808);
    sub_351A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC800);
  }

  return result;
}

unint64_t sub_351A4()
{
  result = qword_3FC810;
  if (!qword_3FC810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC810);
  }

  return result;
}

uint64_t sub_35230@<X0>(_BYTE *a1@<X8>)
{
  result = sub_305998();
  *a1 = result & 1;
  return result;
}

unint64_t sub_352B4()
{
  result = qword_3FC888;
  if (!qword_3FC888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC6C0);
    sub_EC8C(&qword_3FC890, &qword_3FC6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC888);
  }

  return result;
}

uint64_t sub_35388(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_30B3F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_35448(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_30B3F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CategorySelectionChip()
{
  result = qword_3FC8F8;
  if (!qword_3FC8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_35538()
{
  sub_30B9A8();
  if (v0 <= 0x3F)
  {
    sub_355EC();
    if (v1 <= 0x3F)
    {
      sub_30B3F8();
      if (v2 <= 0x3F)
      {
        sub_3564C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_355EC()
{
  result = qword_3FC908;
  if (!qword_3FC908)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_3FC908);
  }

  return result;
}

void sub_3564C()
{
  if (!qword_3FC910)
  {
    sub_303A98();
    sub_380B0(&unk_3FC918, &type metadata accessor for InterestStateMachine);
    v0 = sub_3053D8();
    if (!v1)
    {
      atomic_store(v0, &qword_3FC910);
    }
  }
}

uint64_t sub_356FC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v31 = sub_305E08();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCA28);
  __chkstk_darwin(v3);
  v5 = (&v28 - v4);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCA30);
  __chkstk_darwin(v28);
  v7 = &v28 - v6;
  type metadata accessor for CategorySelectionChip();
  sub_303A88();
  v8 = sub_3032F8();
  v10 = v9;
  if (v8 != sub_3032F8() || v10 != v11)
  {
    sub_30D728();
  }

  v13 = sub_306928();
  sub_306168();
  v14 = sub_306178();

  KeyPath = swift_getKeyPath();
  v16 = (v5 + *(v3 + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v18 = enum case for Image.Scale.small(_:);
  v19 = sub_306958();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v5 = v13;
  v5[1] = KeyPath;
  v5[2] = v14;
  sub_303A88();
  v20 = sub_3032F8();
  v22 = v21;
  if (v20 == sub_3032F8() && v22 == v23)
  {
  }

  else
  {
    v24 = sub_30D728();

    if ((v24 & 1) == 0)
    {
      sub_306878();
      v25 = sub_306888();

      goto LABEL_14;
    }
  }

  if (qword_3FA958 != -1)
  {
    swift_once();
  }

  v25 = qword_429068;

LABEL_14:
  sub_37CD8(v5, v7);
  *&v7[*(v28 + 36)] = v25;
  sub_305DF8();
  sub_37D48();
  sub_380B0(&qword_3FCA58, &type metadata accessor for BorderlessButtonStyle);
  v26 = v31;
  sub_3064E8();
  (*(v29 + 8))(v2, v26);
  return sub_EB68(v7, &qword_3FCA30);
}

uint64_t sub_35B4C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CategorySelectionChip();
  sub_30B3B8();
  sub_E504();
  v2 = sub_3063C8();
  v4 = v3;
  v6 = v5;
  sub_306158();
  sub_306178();

  v7 = sub_306388();
  v25 = v8;
  v10 = v9;

  sub_EBC8(v2, v4, v6 & 1);

  sub_303A88();
  v11 = sub_3032F8();
  v13 = v12;
  if (v11 == sub_3032F8() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_30D728();

    if ((v16 & 1) == 0)
    {
      sub_306878();
      goto LABEL_11;
    }
  }

  if (qword_3FA958 != -1)
  {
    swift_once();
  }

LABEL_11:
  v17 = sub_306348();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_EBC8(v7, v25, v10 & 1);

  result = swift_getKeyPath();
  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_35D80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v125 = a1;
  v126 = sub_305BA8();
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_306008();
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CategorySelectionChip();
  v113 = *(v5 - 8);
  __chkstk_darwin(v5);
  v114 = v6;
  v115 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_306CB8();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC950);
  __chkstk_darwin(v8 - 8);
  v10 = &v102 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC958);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v102 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC960);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v102 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC968);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v102 - v21;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC970);
  __chkstk_darwin(v103);
  v104 = &v102 - v23;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC978);
  __chkstk_darwin(v105);
  v106 = &v102 - v24;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC980);
  __chkstk_darwin(v108);
  v26 = &v102 - v25;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC988);
  v109 = *(v120 - 8);
  __chkstk_darwin(v120);
  v107 = &v102 - v27;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC990);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v118 = &v102 - v28;
  *v10 = sub_305AA8();
  *(v10 + 1) = 0x4014000000000000;
  v10[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC998);
  sub_36B50(&v10[*(v29 + 44)]);
  sub_306C58();
  sub_305638();
  sub_34804(v10, v14, &qword_3FC950);
  v30 = &v14[*(v12 + 44)];
  v31 = v134;
  *(v30 + 4) = v133;
  *(v30 + 5) = v31;
  *(v30 + 6) = v135;
  v32 = v130;
  *v30 = v129;
  *(v30 + 1) = v32;
  v33 = v132;
  *(v30 + 2) = v131;
  *(v30 + 3) = v33;
  LOBYTE(v12) = sub_3060F8();
  sub_304FD8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_34804(v14, v18, &qword_3FC958);
  v42 = &v18[*(v16 + 44)];
  *v42 = v12;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  LOBYTE(v14) = sub_306118();
  sub_304FD8();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_34804(v18, v22, &qword_3FC960);
  v51 = &v22[*(v20 + 44)];
  *v51 = v14;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  sub_303A88();
  v52 = sub_3032F8();
  v54 = v53;
  if (v52 == sub_3032F8() && v54 == v55)
  {
  }

  else
  {
    v56 = sub_30D728();

    if ((v56 & 1) == 0)
    {
      sub_306878();
      v57 = sub_306888();

      goto LABEL_7;
    }
  }

  v57 = sub_306878();
LABEL_7:
  v58 = v118;
  v59 = v104;
  v60 = sub_3060C8();
  sub_34804(v22, v59, &qword_3FC968);
  v61 = v59 + *(v103 + 36);
  *v61 = v57;
  *(v61 + 8) = v60;
  sub_303A88();
  v62 = sub_3032F8();
  v64 = v63;
  if (v62 == sub_3032F8() && v64 == v65)
  {

    v66 = &enum case for BlendMode.normal(_:);
  }

  else
  {
    v67 = sub_30D728();

    v66 = &enum case for BlendMode.plusLighter(_:);
    if (v67)
    {
      v66 = &enum case for BlendMode.normal(_:);
    }
  }

  v68 = v120;
  v69 = v111;
  v70 = v110;
  v71 = v112;
  (*(v111 + 104))(v110, *v66, v112);
  v72 = v106;
  (*(v69 + 32))(&v106[*(v105 + 36)], v70, v71);
  sub_34804(v59, v72, &qword_3FC970);
  v73 = v108;
  v74 = &v26[*(v108 + 36)];
  v75 = *(sub_3055F8() + 20);
  v76 = enum case for RoundedCornerStyle.continuous(_:);
  v77 = sub_305B68();
  (*(*(v77 - 8) + 104))(&v74[v75], v76, v77);
  __asm { FMOV            V0.2D, #12.0 }

  *v74 = _Q0;
  *&v74[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC4B8) + 36)] = 256;
  sub_34804(v72, v26, &qword_3FC978);
  v83 = v115;
  sub_3768C(v2, v115);
  v84 = (*(v113 + 80) + 16) & ~*(v113 + 80);
  v85 = swift_allocObject();
  sub_377F8(v83, v85 + v84);
  v86 = sub_378BC();
  v87 = v107;
  sub_306588();

  sub_EB68(v26, &qword_3FC980);
  v88 = v116;
  sub_305FE8();
  v127 = v73;
  v128 = v86;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = v58;
  sub_306738();
  (*(v117 + 8))(v88, v119);
  (*(v109 + 8))(v87, v68);
  sub_303A88();
  v91 = sub_3032F8();
  v93 = v92;
  if (v91 == sub_3032F8() && v93 == v94)
  {

    v95 = v124;
    v96 = v123;
  }

  else
  {
    v97 = sub_30D728();

    v95 = v124;
    v96 = v123;
    if ((v97 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC9E8);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_315430;
      sub_305B88();
      goto LABEL_18;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC9E8);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_315420;
  sub_305B88();
  sub_305B78();
LABEL_18:
  v127 = v98;
  sub_380B0(&qword_3FC9F0, &type metadata accessor for AccessibilityTraits);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC9F8);
  sub_EC8C(&qword_3FCA00, &qword_3FC9F8);
  v99 = v126;
  sub_30D488();
  v127 = v68;
  v128 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v100 = v122;
  sub_306758();
  (*(v95 + 8))(v96, v99);
  return (*(v121 + 8))(v90, v100);
}

uint64_t sub_36B50@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCA18);
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25[-1] - v7;
  sub_356FC(&v25[-1] - v7);
  v9 = sub_3060E8();
  sub_304FD8();
  v10 = &v8[*(v3 + 44)];
  *v10 = v9;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  sub_35B4C(v25);
  v15 = v25[0];
  v16 = v25[1];
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v21 = v30;
  sub_37C50(v8, v6);
  sub_37C50(v6, a1);
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCA20) + 48);
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  *(v22 + 32) = v19;
  *(v22 + 40) = v20;
  *(v22 + 48) = v21;
  sub_EBD8(v15, v16, v17);

  sub_EB68(v8, &qword_3FCA18);
  sub_EBC8(v15, v16, v17);

  return sub_EB68(v6, &qword_3FCA18);
}

uint64_t sub_36D14(uint64_t a1)
{
  v2 = sub_302558();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30BA28();
  __chkstk_darwin(v4 - 8);
  v41 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_30BD98();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v33 = sub_30B7E8();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_30B898();
  __chkstk_darwin(v12 - 8);
  v40 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  [v14 impactOccurred];

  type metadata accessor for CategorySelectionChip();
  LODWORD(v14) = sub_303A88();
  v15 = *(a1 + 8);
  v38 = *(a1 + 16);
  v39 = v15;
  ObjectType = swift_getObjectType();
  v31 = a1;
  v30 = sub_30B388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
  v29 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_315430;
  *&v48 = sub_30B388();
  sub_1D770();
  sub_30D438();
  if (v14 == 2)
  {
    v27 = v10;
    sub_303838();
    sub_3037D8();
    sub_303AB8();
    v16 = sub_301CB8();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    sub_302718();
    v17 = v32;
    sub_30B788();
    v54 = v48;
    sub_EB68(&v54, &unk_408130);
    v53 = v49;
    sub_EB68(&v53, &qword_3FC878);
    v52 = v50;
    sub_EB68(&v52, &qword_408140);
    sub_1EBD0(v51);

    sub_EB68(v9, &qword_3FB8E0);
    v18 = v34;
    sub_30BD88();
    sub_30B798();
    (*(v35 + 8))(v18, v37);
    v27[1](v17, v33);
    sub_30BA18();
    sub_30B878();
    v46 = sub_30A7D8();
    v47 = sub_380B0(&qword_3FCA10, &type metadata accessor for UnfavoriteInterestAction);
    __swift_allocate_boxed_opaque_existential_0Tm(v45);
    sub_30A7B8();
  }

  else
  {
    sub_303838();
    sub_303798();
    sub_303AB8();
    v19 = sub_301CB8();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    sub_302718();
    v27 = v9;
    v20 = v32;
    sub_30B788();
    v54 = v48;
    sub_EB68(&v54, &unk_408130);
    v53 = v49;
    sub_EB68(&v53, &qword_3FC878);
    v52 = v50;
    sub_EB68(&v52, &qword_408140);
    sub_1EBD0(v51);

    sub_EB68(v27, &qword_3FB8E0);
    v21 = v34;
    sub_30BD88();
    sub_30B798();
    (*(v35 + 8))(v21, v37);
    (*(v10 + 8))(v20, v33);
    sub_30BA18();
    sub_30B878();
    v46 = sub_30A0B8();
    v47 = sub_380B0(&qword_3FCA08, &type metadata accessor for FavoriteInterestAction);
    __swift_allocate_boxed_opaque_existential_0Tm(v45);
    sub_30A0A8();
  }

  v23 = v42;
  v22 = v43;
  v24 = v44;
  (*(v43 + 104))(v42, enum case for ActionMetricsBehavior.fromAction(_:), v44);
  sub_307C38();

  (*(v22 + 8))(v23, v24);
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_3768C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategorySelectionChip();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_376F0()
{
  v1 = (type metadata accessor for CategorySelectionChip() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  swift_unknownObjectRelease();
  v5 = v1[8];
  v6 = sub_30B3F8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_377F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategorySelectionChip();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3785C()
{
  v1 = *(type metadata accessor for CategorySelectionChip() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_36D14(v2);
}

unint64_t sub_378BC()
{
  result = qword_3FC9A0;
  if (!qword_3FC9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC980);
    sub_37974();
    sub_EC8C(&qword_3FC4D8, &qword_3FC4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC9A0);
  }

  return result;
}

unint64_t sub_37974()
{
  result = qword_3FC9A8;
  if (!qword_3FC9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC978);
    sub_37A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC9A8);
  }

  return result;
}

unint64_t sub_37A00()
{
  result = qword_3FC9B0;
  if (!qword_3FC9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC970);
    sub_37B14(&qword_3FC9B8, &qword_3FC968, &unk_318CE0, sub_37AE4);
    sub_EC8C(&qword_3FC9D8, &qword_3FC9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC9B0);
  }

  return result;
}

uint64_t sub_37B14(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_37B98()
{
  result = qword_3FC9C8;
  if (!qword_3FC9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC958);
    sub_EC8C(&qword_3FC9D0, &qword_3FC950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC9C8);
  }

  return result;
}

uint64_t sub_37C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCA18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_37CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCA28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_37D48()
{
  result = qword_3FCA38;
  if (!qword_3FCA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCA30);
    sub_37E00();
    sub_EC8C(&qword_3FC820, &qword_3FC828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCA38);
  }

  return result;
}

unint64_t sub_37E00()
{
  result = qword_3FCA40;
  if (!qword_3FCA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCA28);
    sub_37EB8();
    sub_EC8C(&qword_3FC7B8, &qword_3FC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCA40);
  }

  return result;
}

unint64_t sub_37EB8()
{
  result = qword_3FCA48;
  if (!qword_3FCA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCA50);
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCA48);
  }

  return result;
}

unint64_t sub_37F74()
{
  result = qword_3FCA60;
  if (!qword_3FCA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FC980);
    sub_378BC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_380B0(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCA60);
  }

  return result;
}

uint64_t sub_380B0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_38124(uint64_t a1, unsigned int a2)
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

uint64_t sub_3816C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_381E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCA78);
  __chkstk_darwin(v4);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCA80);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  v29 = *a1;
  v30 = *(a1 + 8);
  v27 = *(a1 + 1);
  v28 = *(a1 + 32);
  v13 = swift_allocObject();
  v14 = *(a1 + 1);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  sub_EB00(&v29, v26, &qword_3FCA88);
  sub_EB00(&v27, v26, &qword_3FCA90);
  sub_306A68();
  sub_306C58();
  sub_3051F8();
  v15 = &v6[*(v4 + 36)];
  v16 = v26[1];
  *v15 = v26[0];
  *(v15 + 1) = v16;
  *(v15 + 2) = v26[2];
  v17 = [objc_opt_self() mainBundle];
  v24._countAndFlagsBits = 0x8000000000336C30;
  v31._countAndFlagsBits = 0xD00000000000002ELL;
  v31._object = 0x8000000000336C00;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v18.super.isa = v17;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v19 = sub_301AB8(v31, v32, v18, v33, v24);
  v21 = v20;

  v25[0] = v19;
  v25[1] = v21;
  sub_38F18();
  sub_E504();
  sub_3066C8();

  sub_EB68(v6, &qword_3FCA78);
  sub_EB00(v12, v10, &qword_3FCA80);
  *a2 = 0;
  *(a2 + 8) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCAA0);
  sub_EB00(v10, a2 + *(v22 + 48), &qword_3FCA80);
  sub_EB68(v12, &qword_3FCA80);
  return sub_EB68(v10, &qword_3FCA80);
}

uint64_t sub_3853C(uint64_t *a1)
{
  v2 = sub_302558();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_30BA28();
  __chkstk_darwin(v6 - 8);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_30B898();
  __chkstk_darwin(v11 - 8);
  v31 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_305A08();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(a1 + 32);
  v35 = a1;
  v50 = *(a1 + 1);
  v38 = v2;
  v37 = v3;
  v36 = v5;
  v30 = v15;
  v29 = v14;
  v28 = v17;
  if (v51 == 1)
  {
    v32 = *(&v50 + 1);
    v34 = v50;
    swift_unknownObjectRetain();
  }

  else
  {

    sub_30C7A8();
    v18 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v50, &qword_3FCA90);
    (*(v14 + 8))(v17, v13);
    v32 = *(&v41 + 1);
    v34 = v41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
  sub_30B7E8();
  *(swift_allocObject() + 16) = xmmword_315430;
  sub_303578();
  sub_303838();
  sub_303808();
  v19 = sub_301CB8();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_302718();
  sub_30B788();
  v49 = v41;
  sub_EB68(&v49, &unk_408130);
  v48 = v42;
  sub_EB68(&v48, &qword_3FC878);
  v47 = v43;
  sub_EB68(&v47, &qword_408140);
  sub_1EBD0(v44);

  sub_EB68(v10, &qword_3FB8E0);
  sub_30BA18();
  sub_30B878();
  v40[3] = sub_30A828();
  v40[4] = sub_38FD0();
  __swift_allocate_boxed_opaque_existential_0Tm(v40);
  sub_30A818();
  v20 = v37;
  v21 = v36;
  v22 = v38;
  (*(v37 + 104))(v36, enum case for ActionMetricsBehavior.fromAction(_:), v38);
  v46 = *(v35 + 8);
  v23 = *v35;
  v45 = *v35;
  if (v46 == 1)
  {
    v39 = v23;
  }

  else
  {

    sub_30C7A8();
    v24 = sub_306088();
    sub_304108();

    v25 = v28;
    sub_3059F8();
    swift_getAtKeyPath();
    sub_EB68(&v45, &qword_3FCA88);
    (*(v29 + 8))(v25, v30);
  }

  swift_getObjectType();
  sub_307C38();

  swift_unknownObjectRelease();

  (*(v20 + 8))(v21, v22);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_38C24@<X0>(uint64_t a1@<X8>)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC700);
  __chkstk_darwin(v27);
  v3 = (&v26 - v2);
  sub_306928();
  v4 = sub_3063D8();
  v6 = v5;
  v8 = v7;
  sub_306228();
  sub_306178();

  v9 = sub_306388();
  v11 = v10;
  v13 = v12;
  v26 = v14;

  sub_EBC8(v4, v6, v8 & 1);

  sub_306878();
  v15 = sub_306888();

  v16 = *(v27 + 36);
  v17 = enum case for BlendMode.plusLighter(_:);
  v18 = sub_306CB8();
  (*(*(v18 - 8) + 104))(v3 + v16, v17, v18);
  *v3 = v15;
  sub_EC8C(&qword_3FC728, &qword_3FC700);
  v19 = sub_306348();
  v21 = v20;
  LOBYTE(v16) = v22;
  v24 = v23;
  sub_EBC8(v9, v11, v13 & 1);

  result = sub_EB68(v3, &qword_3FC700);
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v24;
  return result;
}

uint64_t sub_38E60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_305AA8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCA70);
  return sub_381E0(v6, a1 + *(v4 + 44));
}

uint64_t sub_38ECC()
{

  sub_348E4(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

unint64_t sub_38F18()
{
  result = qword_3FCA98;
  if (!qword_3FCA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCA78);
    sub_EC8C(&qword_3FB838, &qword_3FB808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCA98);
  }

  return result;
}

unint64_t sub_38FD0()
{
  result = qword_3FC880;
  if (!qword_3FC880)
  {
    sub_30A828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FC880);
  }

  return result;
}

uint64_t sub_3906C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_308CD8();
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_305A08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0(0);
  v11 = __chkstk_darwin(v10);
  v45 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);

  if ((v16 & 1) == 0)
  {
    sub_30C7A8();
    v17 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v15 = v53;
  }

  v18 = type metadata accessor for CategorySelectionCompactCell(0);
  sub_3C67C(a1 + *(v18 + 20), v5, &type metadata accessor for CategorySelection);
  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 3) = v15;
  sub_3C67C(v5, &v14[*(v10 + 24)], &type metadata accessor for CategorySelection);
  type metadata accessor for CategorySelectionFavoritedCategoriesObserver();
  swift_allocObject();

  v20 = sub_3E810(v19);
  v21 = &v14[*(v10 + 28)];
  *&v47 = v20;
  sub_306A08();
  sub_3C6E4(v5, &type metadata accessor for CategorySelection);
  v22 = v54;
  *v21 = v53;
  *(v21 + 1) = v22;
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_318FC0;
  v26 = sub_3060D8();
  *(inited + 32) = v26;
  v27 = sub_3060F8();
  *(inited + 33) = v27;
  v28 = sub_306118();
  *(inited + 34) = v28;
  v29 = sub_306108();
  sub_306108();
  if (sub_306108() != v26)
  {
    v29 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v27)
  {
    v29 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v28)
  {
    v29 = sub_306108();
  }

  sub_304FD8();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v38 = v45;
  sub_3C67C(v14, v45, _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0);
  v39 = v46;
  sub_3C67C(v38, v46, _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCAF8) + 64);
  *&v47 = KeyPath;
  BYTE8(v47) = 0;
  v48 = v24;
  LOBYTE(v49) = 0;
  BYTE8(v49) = v29;
  *&v50 = v31;
  *(&v50 + 1) = v33;
  *&v51 = v35;
  *(&v51 + 1) = v37;
  v52 = 0;
  v41 = v50;
  *(v40 + 32) = v49;
  *(v40 + 48) = v41;
  *(v40 + 80) = 0;
  v42 = v48;
  *v40 = v47;
  *(v40 + 16) = v42;
  *(v40 + 64) = v51;
  sub_EB00(&v47, &v53, &qword_3FCB00);
  sub_3C6E4(v14, _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0);
  v53 = KeyPath;
  LOBYTE(v54) = 0;
  v55 = v24;
  v56 = 0;
  v57 = 0;
  v58 = v29;
  v59 = v31;
  v60 = v33;
  v61 = v35;
  v62 = v37;
  v63 = 0;
  sub_EB68(&v53, &qword_3FCB00);
  return sub_3C6E4(v38, _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0);
}

uint64_t sub_395D4()
{
  v1 = sub_306008();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCAD0);
  __chkstk_darwin(v5);
  v7 = (&v12 - v6);
  *v7 = sub_306C38();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCAD8);
  sub_3906C(v0, v7 + *(v9 + 44));
  v10 = *(v5 + 36);
  *(v7 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC510);
  swift_storeEnumTagMultiPayload();
  sub_305FF8();
  sub_3C56C();
  sub_306738();
  (*(v2 + 8))(v4, v1);
  return sub_EB68(v7, &qword_3FCAD0);
}

uint64_t sub_397A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_307048();
  (*(*(v8 - 8) + 8))(a1, v8);
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  return sub_3CB8C(a2, a4 + *(a3 + 20), &type metadata accessor for CategorySelection);
}

uint64_t sub_39844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_39988(&qword_3FCB08, type metadata accessor for CategorySelectionCompactCell);

  return ShelfSwiftUICell.init(presentation:model:)(a1, a2, a3, v6);
}

uint64_t sub_39988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_39A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v196 = a2;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC700);
  __chkstk_darwin(v199);
  v200 = (&v181 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC48);
  __chkstk_darwin(v4 - 8);
  v6 = &v181 - v5;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC50);
  v7 = __chkstk_darwin(v197);
  v228 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v195 = &v181 - v10;
  __chkstk_darwin(v9);
  v230 = &v181 - v11;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC58);
  __chkstk_darwin(v189);
  v13 = &v181 - v12;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC60);
  v14 = __chkstk_darwin(v191);
  v227 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v190 = &v181 - v17;
  __chkstk_darwin(v16);
  v229 = &v181 - v18;
  v19 = a1 + *(_s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0(0) + 24);
  v20 = *(v19 + 24);
  v198 = v6;
  v194 = a1;
  v192 = v13;
  v207 = v19;
  if (v20)
  {
    v21 = *(v19 + 16);
    v22 = v20;
  }

  else
  {
    if (qword_3FA930 != -1)
    {
      swift_once();
    }

    v21 = qword_429010;
  }

  v298 = v21;
  v299 = v22;
  v23 = sub_E504();

  v193 = v23;
  v24 = sub_3063C8();
  v26 = v25;
  v28 = v27;
  sub_306208();
  sub_306178();

  v29 = sub_306388();
  v31 = v30;
  v33 = v32;

  sub_EBC8(v24, v26, v28 & 1);

  v298 = sub_306878();
  v34 = sub_306348();
  v224 = v35;
  v225 = v34;
  v37 = v36;
  v226 = v38;
  sub_EBC8(v29, v31, v33 & 1);

  v223 = sub_3060D8();
  sub_304FD8();
  v221 = v40;
  v222 = v39;
  v219 = v42;
  v220 = v41;
  v213 = v37 & 1;
  v347 = v37 & 1;
  v342 = 0;
  v218 = sub_3060E8();
  sub_304FD8();
  v216 = v44;
  v217 = v43;
  v214 = v46;
  v215 = v45;
  v348 = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC538);
  v48 = swift_allocObject();
  v231 = xmmword_315420;
  *(v48 + 16) = xmmword_315420;
  LOBYTE(v29) = sub_3060F8();
  *(v48 + 32) = v29;
  v49 = sub_306118();
  *(v48 + 33) = v49;
  v50 = sub_306108();
  sub_306108();
  if (sub_306108() != v29)
  {
    v50 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v49)
  {
    v50 = sub_306108();
  }

  v51 = v198;
  sub_304FD8();
  v210 = v53;
  v211 = v52;
  v208 = v55;
  v209 = v54;
  v351 = 0;
  v56 = *(v207 + 32);
  KeyPath = swift_getKeyPath();
  v57 = swift_allocObject();
  *(v57 + 16) = v231;
  v207 = v56;

  LOBYTE(v56) = sub_3060F8();
  *(v57 + 32) = v56;
  v58 = sub_306118();
  *(v57 + 33) = v58;
  v59 = sub_306108();
  sub_306108();
  if (sub_306108() != v56)
  {
    v59 = sub_306108();
  }

  sub_306108();
  v60 = sub_306108();
  v212 = v50;
  if (v60 != v58)
  {
    v59 = sub_306108();
  }

  sub_304FD8();
  v203 = v62;
  v204 = v61;
  v201 = v64;
  v202 = v63;
  v341 = 0;
  v340 = 0;
  v65 = v192;
  sub_3ACA4(v192);
  v66 = sub_3060D8();
  sub_304FD8();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC68) + 36);
  *v75 = v66;
  *(v75 + 8) = v68;
  *(v75 + 16) = v70;
  *(v75 + 24) = v72;
  *(v75 + 32) = v74;
  *(v75 + 40) = 0;
  v76 = sub_3060E8();
  sub_304FD8();
  v77 = v65 + *(v189 + 36);
  *v77 = v76;
  *(v77 + 8) = v78;
  *(v77 + 16) = v79;
  *(v77 + 24) = v80;
  *(v77 + 32) = v81;
  *(v77 + 40) = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = v231;
  v83 = sub_3060F8();
  *(v82 + 32) = v83;
  v84 = sub_306118();
  *(v82 + 33) = v84;
  v85 = sub_306108();
  sub_306108();
  if (sub_306108() != v83)
  {
    v85 = sub_306108();
  }

  sub_306108();
  v86 = sub_306108();
  v205 = v59;
  if (v86 != v84)
  {
    v85 = sub_306108();
  }

  sub_304FD8();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = v190;
  sub_34804(v65, v190, &qword_3FCC58);
  v96 = v95 + *(v191 + 36);
  *v96 = v85;
  *(v96 + 8) = v88;
  *(v96 + 16) = v90;
  *(v96 + 24) = v92;
  *(v96 + 32) = v94;
  *(v96 + 40) = 0;
  sub_34804(v95, v229, &qword_3FCC60);
  sub_3B24C(v51);
  v97 = swift_allocObject();
  *(v97 + 16) = v231;
  v98 = sub_3060F8();
  *(v97 + 32) = v98;
  v99 = sub_306118();
  *(v97 + 33) = v99;
  v100 = sub_306108();
  sub_306108();
  if (sub_306108() != v98)
  {
    v100 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v99)
  {
    v100 = sub_306108();
  }

  v194 = v47;
  sub_304FD8();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = v195;
  sub_34804(v51, v195, &qword_3FCC48);
  v110 = v109 + *(v197 + 36);
  *v110 = v100;
  *(v110 + 8) = v102;
  *(v110 + 16) = v104;
  *(v110 + 24) = v106;
  *(v110 + 32) = v108;
  *(v110 + 40) = 0;
  sub_34804(v109, v230, &qword_3FCC50);
  if (qword_3FA940 != -1)
  {
    swift_once();
  }

  v298 = qword_429030;
  v299 = *algn_429038;

  v111 = sub_3063C8();
  v113 = v112;
  v115 = v114;
  sub_306248();
  v116 = sub_306388();
  v118 = v117;
  v120 = v119;

  sub_EBC8(v111, v113, v115 & 1);

  sub_306878();
  v121 = sub_306888();

  v122 = *(v199 + 36);
  v123 = enum case for BlendMode.plusLighter(_:);
  v124 = sub_306CB8();
  v125 = v200;
  (*(*(v124 - 8) + 104))(v200 + v122, v123, v124);
  *v125 = v121;
  sub_EC8C(&qword_3FC728, &qword_3FC700);
  v126 = sub_306348();
  v192 = v127;
  v193 = v126;
  LOBYTE(v122) = v128;
  v195 = v129;
  sub_EBC8(v116, v118, v120 & 1);

  sub_EB68(v125, &qword_3FC700);
  v181 = sub_3060D8();
  sub_304FD8();
  v190 = v131;
  v191 = v130;
  v188 = v133;
  v189 = v132;
  v182 = v122 & 1;
  LOBYTE(v298) = v122 & 1;
  LOBYTE(v232) = 0;
  v187 = sub_3060E8();
  sub_304FD8();
  v185 = v135;
  v186 = v134;
  v183 = v137;
  v184 = v136;
  v331 = 0;
  v138 = swift_allocObject();
  *(v138 + 16) = v231;
  LOBYTE(v116) = sub_3060F8();
  *(v138 + 32) = v116;
  v139 = sub_306118();
  *(v138 + 33) = v139;
  v140 = sub_306108();
  sub_306108();
  if (sub_306108() != v116)
  {
    v140 = sub_306108();
  }

  sub_306108();
  if (sub_306108() == v139)
  {
    LODWORD(v231) = v140;
  }

  else
  {
    LODWORD(v231) = sub_306108();
  }

  sub_304FD8();
  v199 = v142;
  v200 = v141;
  v197 = v144;
  v198 = v143;
  v334 = 0;
  v145 = v227;
  sub_3CAB0(v229, v227);
  v146 = v228;
  sub_EB00(v230, v228, &qword_3FCC50);
  *&v232 = v225;
  *(&v232 + 1) = v224;
  LOBYTE(v233) = v213;
  *(&v233 + 1) = *v346;
  DWORD1(v233) = *&v346[3];
  *(&v233 + 1) = v226;
  LOWORD(v234) = 256;
  *(&v234 + 2) = v344;
  WORD3(v234) = v345;
  BYTE8(v234) = v223;
  *(&v234 + 9) = *v343;
  HIDWORD(v234) = *&v343[3];
  *&v235 = v222;
  *(&v235 + 1) = v221;
  *&v236 = v220;
  *(&v236 + 1) = v219;
  LOBYTE(v237) = 0;
  *(&v237 + 1) = *v350;
  DWORD1(v237) = *&v350[3];
  BYTE8(v237) = v218;
  *(&v237 + 9) = *v349;
  HIDWORD(v237) = *&v349[3];
  *&v238 = v217;
  *(&v238 + 1) = v216;
  *&v239 = v215;
  *(&v239 + 1) = v214;
  LOBYTE(v240) = 0;
  DWORD1(v240) = *(v353 + 3);
  *(&v240 + 1) = v353[0];
  BYTE8(v240) = v212;
  HIDWORD(v240) = *&v352[3];
  *(&v240 + 9) = *v352;
  *&v241 = v211;
  *(&v241 + 1) = v210;
  *&v242 = v209;
  *(&v242 + 1) = v208;
  v243 = 0;
  v147 = v240;
  v148 = v241;
  v149 = v242;
  v150 = v196;
  *(v196 + 176) = 0;
  v150[9] = v148;
  v150[10] = v149;
  v150[8] = v147;
  v151 = v232;
  v152 = v233;
  v153 = v235;
  v150[2] = v234;
  v150[3] = v153;
  *v150 = v151;
  v150[1] = v152;
  v154 = v236;
  v155 = v237;
  v156 = v239;
  v150[6] = v238;
  v150[7] = v156;
  v150[4] = v154;
  v150[5] = v155;
  *&v244 = v207;
  BYTE8(v244) = 0;
  *(&v244 + 9) = *v339;
  HIDWORD(v244) = *&v339[3];
  *&v245 = KeyPath;
  BYTE8(v245) = 0;
  HIDWORD(v245) = *&v338[3];
  *(&v245 + 9) = *v338;
  LOBYTE(v246) = v205;
  *(&v246 + 1) = *v337;
  DWORD1(v246) = *&v337[3];
  *(&v246 + 1) = v204;
  *&v247[0] = v203;
  *(&v247[0] + 1) = v202;
  *&v247[1] = v201;
  BYTE8(v247[1]) = 0;
  *(v150 + 184) = v244;
  v157 = v245;
  v158 = v246;
  v159 = v247[0];
  *(v150 + 241) = *(v247 + 9);
  *(v150 + 232) = v159;
  *(v150 + 216) = v158;
  *(v150 + 200) = v157;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC70);
  sub_3CAB0(v145, v150 + v160[16]);
  sub_EB00(v146, v150 + v160[20], &qword_3FCC50);
  v161 = (v150 + v160[24]);
  v162 = v192;
  v163 = v193;
  *&v248 = v193;
  *(&v248 + 1) = v192;
  v164 = v181;
  LOBYTE(v146) = v182;
  LOBYTE(v249) = v182;
  *(&v249 + 1) = *v330;
  DWORD1(v249) = *&v330[3];
  v165 = v195;
  *(&v249 + 1) = v195;
  LOBYTE(v250) = v181;
  *(&v250 + 1) = *v329;
  DWORD1(v250) = *&v329[3];
  v167 = v190;
  v166 = v191;
  *(&v250 + 1) = v191;
  *&v251 = v190;
  v169 = v188;
  v168 = v189;
  *(&v251 + 1) = v189;
  *&v252 = v188;
  BYTE8(v252) = 0;
  HIDWORD(v252) = *&v333[3];
  *(&v252 + 9) = *v333;
  LOBYTE(v150) = v187;
  LOBYTE(v253) = v187;
  DWORD1(v253) = *&v332[3];
  *(&v253 + 1) = *v332;
  v171 = v185;
  v170 = v186;
  *(&v253 + 1) = v186;
  *&v254 = v185;
  v173 = v183;
  v172 = v184;
  *(&v254 + 1) = v184;
  *&v255 = v183;
  BYTE8(v255) = 0;
  *(&v255 + 9) = *v336;
  HIDWORD(v255) = *&v336[3];
  LOBYTE(v256) = v231;
  *(&v256 + 1) = *v335;
  DWORD1(v256) = *&v335[3];
  *(&v256 + 1) = v200;
  *&v257[0] = v199;
  *(&v257[0] + 1) = v198;
  *&v257[1] = v197;
  BYTE8(v257[1]) = 0;
  v174 = v253;
  v161[4] = v252;
  v161[5] = v174;
  v175 = v255;
  v161[6] = v254;
  v161[7] = v175;
  v176 = v249;
  *v161 = v248;
  v161[1] = v176;
  v177 = v251;
  v161[2] = v250;
  v161[3] = v177;
  v178 = *(v257 + 9);
  v179 = v257[0];
  v161[8] = v256;
  v161[9] = v179;
  *(v161 + 153) = v178;
  sub_EB00(&v232, &v298, &qword_3FCC78);
  sub_EB00(&v244, &v298, &qword_3FCC80);
  sub_EB00(&v248, &v298, &qword_3FCC88);
  sub_EB68(v230, &qword_3FCC50);
  sub_3CB20(v229);
  v258[0] = v163;
  v258[1] = v162;
  v259 = v146;
  *v260 = *v330;
  *&v260[3] = *&v330[3];
  v261 = v165;
  v262 = v164;
  *v263 = *v329;
  *&v263[3] = *&v329[3];
  v264 = v166;
  v265 = v167;
  v266 = v168;
  v267 = v169;
  v268 = 0;
  *&v269[3] = *&v333[3];
  *v269 = *v333;
  v270 = v150;
  *&v271[3] = *&v332[3];
  *v271 = *v332;
  v272 = v170;
  v273 = v171;
  v274 = v172;
  v275 = v173;
  v276 = 0;
  *v277 = *v336;
  *&v277[3] = *&v336[3];
  v278 = v231;
  *v279 = *v335;
  *&v279[3] = *&v335[3];
  v280 = v200;
  v281 = v199;
  v282 = v198;
  v283 = v197;
  v284 = 0;
  sub_EB68(v258, &qword_3FCC88);
  sub_EB68(v228, &qword_3FCC50);
  sub_3CB20(v227);
  v285 = v207;
  v286 = 0;
  *v287 = *v339;
  *&v287[3] = *&v339[3];
  v288 = KeyPath;
  v289 = 0;
  *v290 = *v338;
  *&v290[3] = *&v338[3];
  v291 = v205;
  *v292 = *v337;
  *&v292[3] = *&v337[3];
  v293 = v204;
  v294 = v203;
  v295 = v202;
  v296 = v201;
  v297 = 0;
  sub_EB68(&v285, &qword_3FCC80);
  v298 = v225;
  v299 = v224;
  v300 = v213;
  *v301 = *v346;
  *&v301[3] = *&v346[3];
  v302 = v226;
  v303 = 256;
  v304 = v344;
  v305 = v345;
  v306 = v223;
  *v307 = *v343;
  *&v307[3] = *&v343[3];
  v308 = v222;
  v309 = v221;
  v310 = v220;
  v311 = v219;
  v312 = 0;
  *&v313[3] = *&v350[3];
  *v313 = *v350;
  v314 = v218;
  *&v315[3] = *&v349[3];
  *v315 = *v349;
  v316 = v217;
  v317 = v216;
  v318 = v215;
  v319 = v214;
  v320 = 0;
  *&v321[3] = *(v353 + 3);
  *v321 = v353[0];
  v322 = v212;
  *&v323[3] = *&v352[3];
  *v323 = *v352;
  v324 = v211;
  v325 = v210;
  v326 = v209;
  v327 = v208;
  v328 = 0;
  return sub_EB68(&v298, &qword_3FCC78);
}

uint64_t sub_3ACA4@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v43 = sub_306008();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_305BA8();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0(0);
  v6 = v5 - 8;
  v33 = *(v5 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v5);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCCE0);
  __chkstk_darwin(v34);
  v9 = &v32 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCCE8);
  v10 = __chkstk_darwin(v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = &v32 - v13;
  v14 = *(v1 + *(v6 + 32) + 40);
  v15 = [objc_opt_self() mainBundle];
  v31._countAndFlagsBits = 0xE000000000000000;
  v48._object = 0x8000000000336BD0;
  v48._countAndFlagsBits = 0xD000000000000020;
  v49.value._countAndFlagsBits = 0;
  v49.value._object = 0;
  v16.super.isa = v15;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_301AB8(v48, v49, v16, v50, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_315430;
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = v14;
  v18 = sub_30C0A8();
  v20 = v19;

  sub_3C67C(v1, &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0);
  v21 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v22 = swift_allocObject();
  sub_3CB8C(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0);
  v44 = v18;
  v45 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCCF0);
  sub_3D114();
  sub_306A68();
  v23 = &v9[*(v34 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v25 = enum case for Image.Scale.small(_:);
  v26 = sub_306958();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  v46 = v18;
  v47 = v20;
  sub_3D1D4();
  sub_E504();
  sub_3066C8();
  sub_EB68(v9, &qword_3FCCE0);

  v27 = v37;
  sub_305B88();
  v28 = v35;
  sub_305518();
  (*(v38 + 8))(v27, v39);
  sub_EB68(v12, &qword_3FCCE8);
  v29 = v40;
  sub_305FE8();
  sub_3D2B8();
  sub_306738();
  (*(v41 + 8))(v29, v43);
  return sub_EB68(v28, &qword_3FCCE8);
}

__n128 sub_3B24C@<Q0>(uint64_t a1@<X8>)
{
  v3 = _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_3C67C(v1, &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_3CB8C(&v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0);
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC90);
  sub_3CC14();
  sub_306A68();
  v9 = (v1 + *(v4 + 36));
  v11 = v9[1];
  v31 = *v9;
  v10 = v31;
  v32 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC840);
  sub_306A18();
  v12 = v30;
  swift_getKeyPath();
  v31 = v12;
  sub_39988(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
  sub_302D98();

  v13 = *(v12 + 24);

  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCCD0) + 36)) = v13;
  v31 = v10;
  v32 = v11;
  sub_306A18();
  v14 = v30;
  swift_getKeyPath();
  v31 = v14;
  sub_302D98();

  LOBYTE(v5) = *(v14 + 24);

  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = (v5 & 1) == 0;
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCCD8) + 36));
  *v17 = KeyPath;
  v17[1] = sub_3CEE8;
  v17[2] = v16;
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC48) + 36));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC860);
  sub_305668();
  v20 = *(sub_3055F8() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = sub_305B68();
  (*(*(v22 - 8) + 104))(v18 + v20, v21, v22);
  __asm { FMOV            V0.2D, #15.0 }

  *v18 = result;
  v18->n128_u8[*(v19 + 36)] = 0;
  return result;
}

uint64_t sub_3B5F4(uint64_t a1)
{
  v2 = sub_302558();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_305A08();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v15 = v8;

    sub_30C7A8();
    v13 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_348E4(v11, v12, 0);
    (*(v7 + 8))(v10, v15);
  }

  swift_getObjectType();
  _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0(0);
  sub_308CC8();
  (*(v3 + 104))(v5, enum case for ActionMetricsBehavior.fromAction(_:), v2);
  sub_307C38();
  swift_unknownObjectRelease();

  (*(v3 + 8))(v5, v2);
  return __swift_destroy_boxed_opaque_existential_1(&v16);
}

uint64_t sub_3B878@<X0>(uint64_t a1@<X8>)
{

  sub_3099F8();
  sub_306258();
  v2 = sub_306178();

  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC768) + 36));
  *v4 = KeyPath;
  v4[1] = v2;
  sub_306878();
  v5 = sub_306888();

  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCCF0) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC700) + 36);
  v8 = enum case for BlendMode.plusLighter(_:);
  v9 = sub_306CB8();
  result = (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = v5;
  return result;
}

uint64_t sub_3B9A8(uint64_t a1)
{
  v2 = sub_302558();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v42 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30BA28();
  __chkstk_darwin(v4 - 8);
  v41 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_30BD98();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v36 = sub_30B7E8();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_30B898();
  __chkstk_darwin(v12 - 8);
  v37 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_305A08();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(a1 + 8);
  v43 = a1;
  if (*(a1 + 16) == 1)
  {
    swift_unknownObjectRetain();
    v34 = v19;
  }

  else
  {

    sub_30C7A8();
    v20 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    sub_348E4(v18, v19, 0);
    (*(v15 + 8))(v17, v14);
    v34 = *(&v47 + 1);
    v18 = v47;
  }

  v32 = v18;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
  v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_315430;
  sub_303548();
  sub_303838();
  sub_3037F8();
  v29 = v10;
  sub_303AB8();
  v21 = sub_301CB8();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = v9;
  sub_302718();
  v23 = v35;
  sub_30B788();
  v53 = v47;
  sub_EB68(&v53, &unk_408130);
  v52 = v48;
  sub_EB68(&v52, &qword_3FC878);
  v51 = v49;
  sub_EB68(&v51, &qword_408140);
  sub_1EBD0(v50);

  sub_EB68(v22, &qword_3FB8E0);
  v24 = v38;
  sub_30BD88();
  sub_30B798();
  (*(v39 + 8))(v24, v40);
  (*(v29 + 8))(v23, v36);
  sub_30BA18();
  sub_30B878();
  v46[3] = sub_30A828();
  v46[4] = sub_39988(&qword_3FC880, &type metadata accessor for DismissInlineModuleAction);
  __swift_allocate_boxed_opaque_existential_0Tm(v46);
  sub_30A818();
  v26 = v44;
  v25 = v45;
  v27 = v42;
  (*(v44 + 104))(v42, enum case for ActionMetricsBehavior.fromAction(_:), v45);
  sub_307C38();
  swift_unknownObjectRelease();

  (*(v26 + 8))(v27, v25);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

__n128 sub_3C0DC@<Q0>(uint64_t a1@<X8>)
{
  if (qword_3FA938 != -1)
  {
    swift_once();
  }

  sub_E504();

  v2 = sub_3063C8();
  v30 = v3;
  v31 = v2;
  v5 = v4;
  v32 = v6;
  sub_306C58();
  sub_305638();
  v7 = v5 & 1;
  sub_306C58();
  sub_305638();
  sub_306168();
  v29 = sub_306178();

  KeyPath = swift_getKeyPath();
  sub_306878();
  _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC840);
  sub_306A18();
  swift_getKeyPath();
  sub_39988(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
  sub_302D98();

  v8 = sub_306888();

  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC90) + 36));
  v10 = *(sub_3055F8() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_305B68();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #15.0 }

  *v9 = _Q0;
  LODWORD(v11) = sub_305E68();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC868);
  v19 = &v9[*(v18 + 52)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC870) + 36);
  v21 = enum case for BlendMode.plusDarker(_:);
  v22 = sub_306CB8();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = v11;
  *&v9[*(v18 + 56)] = 256;
  v23 = sub_306C58();
  v25 = v24;
  v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC838) + 36)];
  *v26 = v23;
  v26[1] = v25;
  *(a1 + 32) = v41;
  *(a1 + 48) = v42;
  *(a1 + 96) = v45;
  *(a1 + 112) = v46;
  *(a1 + 64) = v43;
  *(a1 + 80) = v44;
  *(a1 + 192) = v37;
  *(a1 + 208) = v38;
  *(a1 + 224) = v39;
  *(a1 + 240) = v40;
  result = v34;
  *(a1 + 128) = v47;
  *(a1 + 144) = v34;
  *a1 = v31;
  *(a1 + 8) = v30;
  *(a1 + 16) = v7;
  *(a1 + 20) = v33 >> 24;
  *(a1 + 17) = v33;
  *(a1 + 24) = v32;
  *(a1 + 160) = v35;
  *(a1 + 176) = v36;
  *(a1 + 256) = KeyPath;
  *(a1 + 264) = v29;
  *(a1 + 272) = v8;
  return result;
}

uint64_t sub_3C4DC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_305BD8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC38);
  sub_39A84(v1, a1 + *(v3 + 44));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC40);
  v6 = a1 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 1;
  return result;
}

unint64_t sub_3C56C()
{
  result = qword_3FCAE0;
  if (!qword_3FCAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCAD0);
    sub_EC8C(&qword_3FCAE8, &qword_3FCAF0);
    sub_39988(&qword_3FC530, type metadata accessor for CategorySelectionContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCAE0);
  }

  return result;
}

uint64_t sub_3C67C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3C6E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3C758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_308CD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_3C818(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_308CD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_3C8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_308CD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_3C988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_308CD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_3CA28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCAD0);
  sub_3C56C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3CAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3CB20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3CB8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_3CC14()
{
  result = qword_3FCC98;
  if (!qword_3FCC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCC90);
    sub_3CCCC();
    sub_EC8C(&qword_3FC830, &qword_3FC838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCC98);
  }

  return result;
}

unint64_t sub_3CCCC()
{
  result = qword_3FCCA0;
  if (!qword_3FCCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCCA8);
    sub_3CD84();
    sub_EC8C(&qword_3FC820, &qword_3FC828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCCA0);
  }

  return result;
}

unint64_t sub_3CD84()
{
  result = qword_3FCCB0;
  if (!qword_3FCCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCCB8);
    sub_3CE3C();
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCCB0);
  }

  return result;
}

unint64_t sub_3CE3C()
{
  result = qword_3FCCC0;
  if (!qword_3FCCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCCC8);
    sub_351A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCCC0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = _s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_348E4(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v5 = v0 + v4 + *(v1 + 24);

  __swift_destroy_boxed_opaque_existential_1(v5 + 48);
  v6 = *(sub_308CD8() + 36);
  v7 = sub_30BAA8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_3D098(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s23ShelfKitCollectionViews28CategorySelectionBodyContentVMa_0(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_3D114()
{
  result = qword_3FCCF8;
  if (!qword_3FCCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCCF0);
    sub_34A34();
    sub_EC8C(&qword_3FCD00, &qword_3FCD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCCF8);
  }

  return result;
}

unint64_t sub_3D1D4()
{
  result = qword_3FCD10;
  if (!qword_3FCD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCCE0);
    sub_EC8C(&qword_3FCD18, &qword_3FCD20);
    sub_EC8C(&qword_3FC7B8, &qword_3FC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCD10);
  }

  return result;
}

unint64_t sub_3D2B8()
{
  result = qword_3FCD28;
  if (!qword_3FCD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCCE8);
    sub_3D1D4();
    sub_39988(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCD28);
  }

  return result;
}

unint64_t sub_3D378()
{
  result = qword_3FCD30;
  if (!qword_3FCD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCC40);
    sub_EC8C(&qword_3FCD38, &qword_3FCD40);
    sub_EC8C(&qword_3FCD48, &qword_3FCD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCD30);
  }

  return result;
}

void sub_3D464()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000000336C30;
  v6._object = 0x8000000000336D20;
  v6._countAndFlagsBits = 0xD000000000000018;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_301AB8(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_429010 = v2;
  *algn_429018 = v4;
}

void sub_3D51C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000000336D00;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x8000000000336CD0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_301AB8(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_429020 = v2;
  *algn_429028 = v4;
}

void sub_3D5D4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000000336C90;
  v6._object = 0x8000000000336C60;
  v6._countAndFlagsBits = 0xD000000000000021;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_301AB8(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_429030 = v2;
  *algn_429038 = v4;
}

__n128 sub_3D690()
{
  v0 = sub_3055F8();
  __swift_allocate_value_buffer(v0, qword_429040);
  v1 = __swift_project_value_buffer(v0, qword_429040);
  v2 = *(v0 + 20);
  v3 = enum case for RoundedCornerStyle.continuous(_:);
  v4 = sub_305B68();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #15.0 }

  *v1 = result;
  return result;
}

uint64_t sub_3D734()
{
  v0 = sub_306838();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for Color.RGBColorSpace.sRGB(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  qword_429058 = sub_3068B8();
  v5(v3, v4, v0);
  result = sub_3068B8();
  qword_429060 = result;
  return result;
}

uint64_t sub_3D870()
{
  if (qword_3FAFA8 != -1)
  {
    swift_once();
  }

  v0 = qword_40DB70;
  result = sub_306818();
  qword_429068 = result;
  return result;
}

uint64_t sub_3D8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCD58);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_3D96C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCD58);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CategorySelectionContainerModifier()
{
  result = qword_3FCDB8;
  if (!qword_3FCDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3DA34()
{
  sub_3DAA0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_3DAA0()
{
  if (!qword_3FCDC8)
  {
    sub_3050A8();
    v0 = sub_3050B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3FCDC8);
    }
  }
}

uint64_t sub_3DB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v2 = sub_3050A8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCDF8);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCE00);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCE08);
  __chkstk_darwin(v36);
  v13 = &v36 - v12;
  if (qword_3FA948 != -1)
  {
    swift_once();
  }

  v14 = sub_3055F8();
  v15 = __swift_project_value_buffer(v14, qword_429040);
  sub_33A80(v5);
  v16 = (*(v3 + 88))(v5, v2);
  v17 = enum case for ColorScheme.dark(_:);
  if (v16 == enum case for ColorScheme.dark(_:))
  {
    sub_306878();
    v18 = sub_306888();
  }

  else
  {
    sub_306858();
    v18 = sub_306888();

    (*(v3 + 8))(v5, v2);
  }

  sub_3050F8();
  sub_30304(v15, v8);
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCE10) + 36)];
  v20 = v40;
  *v19 = v39;
  *(v19 + 1) = v20;
  *(v19 + 4) = v41;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCE18);
  *&v8[*(v21 + 52)] = v18;
  *&v8[*(v21 + 56)] = 256;
  v22 = sub_306C58();
  v24 = v23;
  v25 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCE20) + 36)];
  *v25 = v22;
  v25[1] = v24;
  v26 = sub_306C58();
  v28 = v27;
  v29 = &v11[*(v9 + 36)];
  sub_34804(v8, v29, &qword_3FCDF8);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCE28) + 36));
  *v30 = v26;
  v30[1] = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCE30);
  (*(*(v31 - 8) + 16))(v11, v37, v31);
  v32 = &v13[*(v36 + 36)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCE38);
  (*(v3 + 104))(v32 + *(v33 + 28), v17, v2);
  *v32 = swift_getKeyPath();
  sub_34804(v11, v13, &qword_3FCE00);
  v34 = v38;
  sub_34804(v13, v38, &qword_3FCE08);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCE40);
  *(v34 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_3E028(uint64_t a1)
{
  v2 = sub_3050A8();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_305708();
}

unint64_t sub_3E0F8()
{
  result = qword_3FCE48;
  if (!qword_3FCE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCE40);
    sub_3E184();
    sub_3E320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCE48);
  }

  return result;
}

unint64_t sub_3E184()
{
  result = qword_3FCE50;
  if (!qword_3FCE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCE08);
    sub_3E23C();
    sub_EC8C(&qword_3FCE70, &qword_3FCE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCE50);
  }

  return result;
}

unint64_t sub_3E23C()
{
  result = qword_3FCE58;
  if (!qword_3FCE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCE00);
    sub_EC8C(&qword_3FCE60, &qword_3FCE30);
    sub_EC8C(&qword_3FCE68, &qword_3FCE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCE58);
  }

  return result;
}

unint64_t sub_3E320()
{
  result = qword_3FCE78;
  if (!qword_3FCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCE78);
  }

  return result;
}

uint64_t sub_3E374()
{
  swift_getKeyPath();
  sub_3F0B0(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
  sub_302D98();

  return *(v0 + 24);
}

uint64_t sub_3E414()
{
  swift_getKeyPath();
  sub_3F0B0(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
  sub_302D98();
}

uint64_t sub_3E4B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3F0B0(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
  sub_302D98();

  *a2 = *(v3 + 16);
}

uint64_t sub_3E564()
{
  swift_getKeyPath();
  sub_3F0B0(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
  sub_302D88();
}

uint64_t sub_3E630@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3F0B0(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
  sub_302D98();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_3E700(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3F0B0(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
    sub_302D88();
  }

  return result;
}

uint64_t sub_3E810(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCF48);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  if (&_swiftEmptyArrayStorage >> 62 && sub_30D668())
  {
    v11 = sub_176748(&_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCF50);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  *(v2 + 16) = v12;
  *(v2 + 24) = 0;
  v18[1] = OBJC_IVAR____TtC23ShelfKitCollectionViews44CategorySelectionFavoritedCategoriesObserver___observationRegistrar;
  sub_302DC8();
  sub_303BD8();
  sub_30B8E8();
  v13 = sub_303BC8();
  v18[2] = v13;

  v19 = v13;
  sub_3EFB4();
  v14 = sub_30C8F8();
  v18[4] = v14;
  v15 = sub_30C8E8();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCF58);
  v18[0] = a1;
  sub_EC8C(&qword_3FCF60, &qword_3FCF58);
  sub_3F0B0(&qword_3FCF68, sub_3EFB4);
  sub_304F28();
  sub_3F000(v6);

  swift_allocObject();
  swift_weakInit();
  sub_EC8C(&qword_3FCF70, &qword_3FCF48);
  sub_304F58();

  (*(v8 + 8))(v10, v7);
  swift_getKeyPath();
  v19 = v2;
  sub_3F0B0(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
  sub_302D98();

  v16 = *(v2 + 16);

  os_unfair_lock_lock(v16 + 6);
  sub_3F124();
  os_unfair_lock_unlock(v16 + 6);

  return v2;
}

uint64_t sub_3EC44()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCF78);
    sub_303E58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCF80);
    sub_EC8C(&qword_3FCF88, &qword_3FCF80);
    v2 = sub_30C5A8() & 1;

    if (v2 == *(v1 + 24))
    {
      *(v1 + 24) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_3F0B0(&qword_3FC848, type metadata accessor for CategorySelectionFavoritedCategoriesObserver);
      sub_302D88();
    }
  }

  return result;
}

uint64_t sub_3EE14()
{

  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews44CategorySelectionFavoritedCategoriesObserver___observationRegistrar;
  v2 = sub_302DD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CategorySelectionFavoritedCategoriesObserver()
{
  result = qword_3FCEB0;
  if (!qword_3FCEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3EF0C()
{
  result = sub_302DD8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_3EFB4()
{
  result = qword_3FBF20;
  if (!qword_3FBF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3FBF20);
  }

  return result;
}

uint64_t sub_3F000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3F068()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3F0B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3F14C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_3F1F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_3F238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3F2C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCF90);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCF98);
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  if (a2)
  {
    *v12 = xmmword_319750;
    *(v12 + 2) = 2;
    v12[24] = 1;
    v19 = a1;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = 1;
  }

  else
  {
    *v12 = xmmword_319740;
    *(v12 + 2) = 4;
    v12[24] = 0;
    v19 = a1;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = 0;
  }

  *(v16 + 32) = a3;
  *(v16 + 40) = a4 & 1;

  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCFA0);
  type metadata accessor for CategorySelectionChip();
  sub_EC8C(&qword_3FCFA8, &qword_3FCFA0);
  sub_4174C(&qword_3FCFB0, type metadata accessor for CategorySelectionChip);
  sub_4174C(&qword_3FCFB8, &type metadata accessor for Category);
  sub_306B48();
  sub_34804(v12, v15, &qword_3FCF90);
  v15[*(v13 + 36)] = 0;
  sub_34804(v15, a5, &qword_3FCF98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCFC0);
  *(a5 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_3F6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  v8 = sub_30B3F8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_305A08();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    sub_30C7A8();
    v16 = sub_306088();
    v29 = v9;
    v17 = v8;
    v18 = a4;
    v19 = a1;
    v20 = v16;
    sub_304108();

    a1 = v19;
    a4 = v18;
    v8 = v17;
    v9 = v29;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    a2 = v30;
  }

  v21 = *(v9 + 16);
  v21(v11, a1, v8);
  *a4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60);

  sub_30B8E8();
  *(a4 + 8) = v30;
  v22 = type metadata accessor for CategorySelectionChip();
  v21((a4 + *(v22 + 24)), v11, v8);
  sub_303BA8();
  sub_30B8E8();
  sub_30B388();
  sub_303B98();
  sub_303A98();
  sub_4174C(&unk_3FC918, &type metadata accessor for InterestStateMachine);
  v23 = sub_3053C8();
  v25 = v24;

  result = (*(v9 + 8))(v11, v8);
  v27 = (a4 + *(v22 + 28));
  *v27 = v23;
  v27[1] = v25;
  return result;
}

uint64_t objectdestroyTm_2()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_3FA90(uint64_t a1, char a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, size_t *a8, uint64_t a9, char a10)
{
  v18 = type metadata accessor for CategorySelectionGridLayout.SubviewPlacement();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v37 - v23;
  if (a2)
  {
    v25 = 10.0;
  }

  else
  {
    v25 = *&a1;
  }

  if (a10)
  {
    v26 = sub_405E0(a7, v25, a3, a4);
  }

  else
  {
    v26 = sub_3FD44(a7, v25, a3, a4);
  }

  v27 = v26;
  v28 = *(v26 + 16);
  if (!v28)
  {
  }

  v29 = v26 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v30 = *(v19 + 72);
  sub_4168C(v29 + v30 * (v28 - 1), v24);

  sub_416F0(v24);
  *a8 = v27;
  v31 = *(v27 + 16);
  v32 = &_swiftEmptyArrayStorage;
  if (v31)
  {
    v37 = a9;
    v38 = &_swiftEmptyArrayStorage;

    sub_1752AC(0, v31, 0);
    v32 = v38;
    do
    {
      sub_4168C(v29, v22);
      v33 = *&v22[*(v18 + 20) + 8];
      sub_416F0(v22);
      v38 = v32;
      v35 = v32[2];
      v34 = v32[3];
      if (v35 >= v34 >> 1)
      {
        sub_1752AC((v34 > 1), v35 + 1, 1);
        v32 = v38;
      }

      v32[2] = v35 + 1;
      v32[v35 + 4] = v33;
      v29 += v30;
      --v31;
    }

    while (v31);

    a9 = v37;
  }

  sub_8B67C(v32);

  if (!a9)
  {
    __break(1u);
  }

  return result;
}

size_t sub_3FD44(uint64_t a1, double a2, double a3, double a4)
{
  v69 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD038);
  __chkstk_darwin(v7 - 8);
  v67 = &v67 - v8;
  v9 = type metadata accessor for CategorySelectionGridLayout.SubviewPlacement();
  v75 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v68 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v67 - v12;
  v74 = sub_3052B8();
  v14 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_305388();
  v17 = sub_4174C(&qword_3FD040, &type metadata accessor for LayoutSubviews);
  v18 = sub_30C5B8();
  v19 = &_swiftEmptyArrayStorage;
  if (v18)
  {
    v20 = v18;
    v78 = &_swiftEmptyArrayStorage;
    sub_17528C(0, v18 & ~(v18 >> 63), 0);
    v19 = v78;
    result = sub_30C598();
    if (v20 < 0)
    {
      goto LABEL_80;
    }

    v72 = *&a2;
    v71 = (v14 + 16);
    v70 = (v14 + 8);
    do
    {
      v22 = sub_30C5F8();
      v23 = v73;
      v24 = v17;
      v25 = v16;
      v26 = v74;
      (*v71)(v73);
      v22(&v77, 0);
      LOBYTE(v77) = 0;
      v76 = 1;
      sub_305268();
      v28 = v27;
      v30 = v29;
      (*v70)(v23, v26);
      v78 = v19;
      v31 = a1;
      v33 = v19[2];
      v32 = v19[3];
      if (v33 >= v32 >> 1)
      {
        sub_17528C((v32 > 1), v33 + 1, 1);
        v19 = v78;
      }

      v19[2] = v33 + 1;
      v34 = &v19[2 * v33];
      v34[4] = v28;
      v34[5] = v30;
      sub_30C5E8();
      --v20;
      a1 = v31;
      v16 = v25;
      v17 = v24;
    }

    while (v20);
  }

  sub_30C598();
  result = sub_30C5D8();
  if (v78 < v77)
  {
    goto LABEL_79;
  }

  __chkstk_darwin(result);
  *(&v67 - 2) = a1;
  *(&v67 - 1) = v19;
  v37 = sub_216A8(sub_41794, (&v67 - 4), v35, v36);

  v77 = v37;
  v74 = v37[2];
  if (!v74)
  {
    return v37;
  }

  v38 = 0;
  v39 = 0;
  v40 = a2 * 0.5;
  v70 = (v13 + 8);
  v41 = 0.0;
  v42 = 1;
  v43 = 0.0;
  v44 = v75;
  while (1)
  {
    v45 = v37[2];
    if (v39)
    {
      if (v39 >= v45)
      {
        goto LABEL_70;
      }

      v46 = *(v37 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v39 + *(v9 + 20)) + a4;
      v47 = *(v44 + 80);
    }

    else
    {
      if (!v45)
      {
        goto LABEL_73;
      }

      v47 = *(v44 + 80);
      v46 = *(v37 + ((v47 + 32) & ~v47) + *(v9 + 20));
    }

    if (v46 > a2 - v43)
    {
      if (v45 <= v39)
      {
        goto LABEL_72;
      }

      v72 = (v47 + 32) & ~v47;
      v48 = v37 + v72;

      v73 = v42;
      while (1)
      {
        if (v45 == v42)
        {
          if (v39 >= v37[2])
          {
            goto LABEL_74;
          }

          v54 = &v48[*(v44 + 72) * v39];
          v43 = *(v54 + *(v9 + 20));
          v52 = v40 + v43 * -0.5;
          sub_4168C(v54, v13);

          v55 = *(v70 + *(v9 + 20));
          sub_416F0(v13);
          v41 = v41 + v55 + v69;
          v38 = v39;
          v53 = v37;
          goto LABEL_48;
        }

        v49 = *(v44 + 72);
        sub_4168C(&v48[v49 * v42], v13);
        v50 = *&v13[*(v9 + 20)];
        result = sub_416F0(v13);
        if (v50 + a4 <= a2 - v43)
        {
          break;
        }

        v51 = __OFADD__(v42++, 1);
        v44 = v75;
        if (v51)
        {
          goto LABEL_66;
        }
      }

      v60 = v37[2];
      v53 = v37;
      if (v42 >= v60 || v39 >= v60)
      {
        goto LABEL_44;
      }

      v71 = v47;
      v61 = v68;
      result = sub_17762C(v42, v68);
      v53 = v77;
      if (v77[2] < v39)
      {
        goto LABEL_77;
      }

      result = sub_4168C(v61, v67);
      v62 = v53[2];
      if (v62 >= v39)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v62 >= v53[3] >> 1)
        {
          v53 = sub_CA7E8(isUniquelyReferenced_nonNull_native, v62 + 1, 1, v53);
          v77 = v53;
        }

        LODWORD(v47) = v71;
        sub_17F000(v39, v39, 1, v67);
        result = sub_416F0(v68);
        v60 = v53[2];
LABEL_44:
        if (v39 >= v60)
        {
          goto LABEL_75;
        }

        if (v39 >= v38)
        {
          v43 = v43 + *(v53 + v72 + v49 * v39 + *(v9 + 20)) + a4;
          v52 = v40 + v43 * -0.5;
          if (v38 != v39)
          {
            v65 = v72 + v38 * v49;
            v66 = v38;
            do
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if (result)
              {
                if (v38 < 0)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                result = sub_17EE30(v53);
                v53 = result;
                if (v38 < 0)
                {
                  goto LABEL_67;
                }
              }

              if (v66 >= v53[2])
              {
                goto LABEL_68;
              }

              ++v66;
              *(v53 + *(v9 + 24) + v65) = v52;
              v52 = v52 + *(v53 + *(v9 + 20) + v65) + a4;
              v65 += v49;
            }

            while (v39 != v66);
          }

          v44 = v75;
LABEL_48:
          v42 = v73;
          goto LABEL_49;
        }

        goto LABEL_76;
      }

      goto LABEL_78;
    }

    if (v39 < v38)
    {
      goto LABEL_71;
    }

    v43 = v43 + v46;
    v52 = v40 + v43 * -0.5;
    if (v38 != v39)
    {
      break;
    }

    v53 = v37;
LABEL_49:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v37 = v53;
    }

    else
    {
      result = sub_17EE30(v53);
      v37 = result;
    }

    if (v39 >= v37[2])
    {
      goto LABEL_69;
    }

    v64 = (v37 + ((v47 + 32) & ~v47) + *(v44 + 72) * v39 + *(v9 + 24));
    *v64 = v52;
    v64[1] = v41;
    v77 = v37;
    ++v42;
    if (++v39 == v74)
    {
      return v37;
    }
  }

  v56 = v47;
  v47 = v42;
  v71 = v56;
  v57 = (v56 + 32) & ~v56;
  v58 = v38;
  while (1)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      break;
    }

    if (v38 < 0)
    {
      goto LABEL_64;
    }

LABEL_31:
    if (v58 >= v37[2])
    {
      goto LABEL_65;
    }

    v59 = v37 + v57 + *(v44 + 72) * v58;
    *&v59[*(v9 + 24)] = v52;
    v52 = v52 + *&v59[*(v9 + 20)] + a4;
    if (v39 == ++v58)
    {
      v53 = v37;
      v42 = v47;
      LODWORD(v47) = v71;
      goto LABEL_49;
    }
  }

  result = sub_17EE30(v37);
  v37 = result;
  if ((v38 & 0x8000000000000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

size_t sub_405E0(uint64_t a1, double a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD038);
  __chkstk_darwin(v8 - 8);
  v73 = &v70 - v9;
  v78 = type metadata accessor for CategorySelectionGridLayout.SubviewPlacement();
  v10 = *(v78 - 8);
  v11 = __chkstk_darwin(v78);
  v71 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v70 - v13;
  v77 = sub_3052B8();
  v15 = *(v77 - 8);
  __chkstk_darwin(v77);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_305388();
  sub_4174C(&qword_3FD040, &type metadata accessor for LayoutSubviews);
  v18 = sub_30C5B8();
  v19 = &_swiftEmptyArrayStorage;
  if (v18)
  {
    v20 = v18;
    v81 = &_swiftEmptyArrayStorage;
    sub_17528C(0, v18 & ~(v18 >> 63), 0);
    v19 = v81;
    result = sub_30C598();
    if (v20 < 0)
    {
      goto LABEL_77;
    }

    v72 = v10;
    v76 = a2;
    v74 = v15 + 8;
    v75 = (v15 + 16);
    do
    {
      v22 = sub_30C5F8();
      v23 = v77;
      (*v75)(v17);
      v22(&v80, 0);
      LOBYTE(v80) = 0;
      v79 = 1;
      sub_305268();
      v25 = v24;
      v27 = v26;
      (*v74)(v17, v23);
      v81 = v19;
      v28 = a1;
      v30 = v19[2];
      v29 = v19[3];
      if (v30 >= v29 >> 1)
      {
        sub_17528C((v29 > 1), v30 + 1, 1);
        v19 = v81;
      }

      v19[2] = v30 + 1;
      v31 = &v19[2 * v30];
      v31[4] = v25;
      v31[5] = v27;
      sub_30C5E8();
      --v20;
      a1 = v28;
    }

    while (v20);
    v10 = v72;
  }

  sub_30C598();
  result = sub_30C5D8();
  if (v81 >= v80)
  {
    __chkstk_darwin(result);
    *(&v70 - 2) = a1;
    *(&v70 - 1) = v19;
    v34 = sub_216A8(sub_41AFC, (&v70 - 4), v32, v33);

    v80 = v34;
    v35 = *(v34 + 16);
    if (!v35)
    {
      return v34;
    }

    v36 = 0.0;
    v37 = 0;
    v38 = 0;
    v72 = v14 + 8;
    v39 = 0.0;
    v40 = 0.0;
    v41 = 1;
    v70 = v35;
    while (1)
    {
      v42 = *(v34 + 16);
      if (v38)
      {
        if (v38 >= v42)
        {
          goto LABEL_62;
        }

        v43 = *(v34 + ((v10[80] + 32) & ~v10[80]) + *(v10 + 9) * v38 + *(v78 + 20)) + a4;
        LODWORD(v44) = *(v78 + 20);
        v45 = v10[80];
      }

      else
      {
        if (!v42)
        {
          goto LABEL_65;
        }

        v45 = v10[80];
        v44 = *(v78 + 20);
        v43 = *(v34 + ((v45 + 32) & ~v45) + v44);
      }

      v77 = v45;
      if (v43 <= a2 - v40)
      {
        if (v38 < v37)
        {
          goto LABEL_63;
        }

        v40 = v40 + v43;
        v51 = 0.0;
        if (v37 != v38)
        {
          if ((v37 & 0x8000000000000000) != 0)
          {
            goto LABEL_67;
          }

          if (v37 >= v42)
          {
            goto LABEL_68;
          }

          if (!v38)
          {
            goto LABEL_69;
          }

          if (v38 - 1 >= v42)
          {
            goto LABEL_70;
          }

          v52 = (v45 + 32) & ~v45;
          v53 = *(v10 + 9);
          v54 = v37 + *&v36;
          v55 = v52 + v37 * v53 + v44;
          do
          {
            v51 = v51 + *(v34 + v55) + a4;
            v55 += v53;
            v56 = __CFADD__(v54++, 1);
          }

          while (!v56);
        }

        v57 = v34;
      }

      else
      {
        if (v42 <= v38)
        {
          goto LABEL_64;
        }

        v76 = v36;
        v74 = v37;
        v75 = ((v45 + 32) & ~v45);
        v46 = v75 + v34;

        v47 = v41;
        while (1)
        {
          if (v42 == v47)
          {
            if (v38 >= *(v34 + 16))
            {
              goto LABEL_66;
            }

            v58 = &v46[*(v10 + 9) * v38];
            v59 = v78;
            v40 = *(v58 + *(v78 + 20));
            sub_4168C(v58, v14);

            v60 = *&v72[*(v59 + 20)];
            sub_416F0(v14);
            v39 = v39 + v60 + a3;
            v51 = 0.0;
            v37 = v38;
            v57 = v34;
            goto LABEL_48;
          }

          v48 = *(v10 + 9);
          sub_4168C(&v46[v48 * v47], v14);
          v49 = *&v14[*(v78 + 20)];
          result = sub_416F0(v14);
          if (v49 + a4 <= a2 - v40)
          {
            break;
          }

          if (__OFADD__(v47++, 1))
          {
            __break(1u);
            goto LABEL_61;
          }
        }

        v61 = *(v34 + 16);
        v57 = v34;
        if (v47 >= v61 || v38 >= v61)
        {
          goto LABEL_44;
        }

        v62 = v71;
        result = sub_17762C(v47, v71);
        v57 = v80;
        if (v80[2] < v38)
        {
          goto LABEL_73;
        }

        result = sub_4168C(v62, v73);
        v63 = *(v57 + 16);
        if (v63 < v38)
        {
          goto LABEL_74;
        }

        v64 = v62;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v63 >= *(v57 + 24) >> 1)
        {
          v57 = sub_CA7E8(isUniquelyReferenced_nonNull_native, v63 + 1, 1, v57);
          v80 = v57;
        }

        v35 = v70;
        sub_17F000(v38, v38, 1, v73);
        result = sub_416F0(v64);
        v61 = *(v57 + 16);
LABEL_44:
        if (v38 >= v61)
        {
          goto LABEL_71;
        }

        v37 = v74;
        if (v38 < v74)
        {
          goto LABEL_72;
        }

        v66 = *(v78 + 20);
        v40 = v40 + *(v75 + v57 + v48 * v38 + v66) + a4;
        if (v74 == v38)
        {

          v51 = 0.0;
LABEL_48:
          v36 = v76;
          goto LABEL_54;
        }

        v36 = v76;
        if (v74 < 0)
        {
          goto LABEL_75;
        }

        v67 = v74 + *&v76;
        v68 = v75 + v66 + v74 * v48;
        v51 = 0.0;
        do
        {
          v51 = v51 + *&v68[v57] + a4;
          v68 += v48;
          v56 = __CFADD__(v67++, 1);
        }

        while (!v56);
      }

LABEL_54:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v34 = v57;
      }

      else
      {
        result = sub_17EE30(v57);
        v34 = result;
      }

      if (v38 >= *(v34 + 16))
      {
        break;
      }

      v69 = (v34 + ((v77 + 32) & ~v77) + *(v10 + 9) * v38 + *(v78 + 24));
      *v69 = v51;
      v69[1] = v39;
      v80 = v34;
      --*&v36;
      ++v41;
      if (++v38 == v35)
      {
        return v34;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}