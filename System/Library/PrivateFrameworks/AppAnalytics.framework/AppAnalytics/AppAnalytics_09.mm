uint64_t Tracker.enterGroup(groupName:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v25 = a4;
  v23 = a1;
  v24 = a3;
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  sub_1B6AB8DA0();
  v15 = v4 + 88;
  v14 = *(v4 + 88);
  v22 = *(v15 + 8);
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v23;
  *(v18 + 2) = v5;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  (*(v8 + 32))(&v18[v16], v11, v7);
  v20 = &v18[v17];
  *v20 = v24;
  v20[8] = v25 & 1;

  sub_1B69877A4(v14, sub_1B6A579F8, v18);

  return (*(v8 + 8))(v13, v7);
}

Swift::Void __swiftcall Tracker.leaveGroup(groupName:)(Swift::String_optional groupName)
{
  v2 = v1;
  object = groupName.value._object;
  countAndFlagsBits = groupName.value._countAndFlagsBits;
  v5 = *(v1 + 96);
  v6 = *(v2 + 88);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = countAndFlagsBits;
  v7[4] = object;

  sub_1B69877A4(v6, sub_1B6A56170, v7);
}

uint64_t sub_1B6A499E0(void (*a1)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a1(*(result + 56));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Tracker.identifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_1B6A49A78()
{
  sub_1B6A5664C();
}

uint64_t sub_1B6A49AF0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v45 = a5;
  v47 = a3;
  v48 = a4;
  v44 = sub_1B6AB8DB0();
  v43 = *(v44 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for SessionObserverChange();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B6AB90F0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(*(a2 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8020], v19);
  v25 = v24;
  LOBYTE(v24) = sub_1B6AB9110();
  result = (*(v20 + 8))(v23, v19);
  if (v24)
  {
    sub_1B699A32C(a1, v18, type metadata accessor for SessionObserverChange);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result == 2)
      {
        return sub_1B6984D38(v18, type metadata accessor for SessionObserverChange);
      }
    }

    else if (result)
    {
      sub_1B6984D38(v18, type metadata accessor for SessionObserverChange);
      v38 = v47;
      v37 = v48;
      sub_1B6992B50(v47, v48);
      sub_1B6AB8DA0();
      memset(v49, 0, sizeof(v49));
      v39 = *(a2 + 88);
      v50[2] = v45;
      restarted = v46;
      v52 = a2;
      v53 = v38;
      v54 = v37;
      v55 = 1;
      v56 = v10;
      v57 = 0;
      v58 = 0;
      v59 = v49;
      v60 = 0;
      v61 = 0;
      sub_1B6995F94(v39, sub_1B69AC4E4, v50, OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider);
      sub_1B69840C4(v49, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
      (*(v43 + 8))(v10, v44);
      v40 = sub_1B69A09A4(v38, v37);
      v42 = v41;
      restarted = type metadata accessor for Tracker.RestartTimer();
      v52 = &off_1F2E7AA40;
      v50[0] = v38;
      v50[1] = v37;
      swift_beginAccess();
      sub_1B69E1EC8(v50, v40, v42);
      return swift_endAccess();
    }

    else
    {
      sub_1B6984D38(v18, type metadata accessor for SessionObserverChange);
      v28 = v47;
      v27 = v48;
      v29 = v45;
      v30 = v46;
      v31 = sub_1B69A09A4(v47, v48);
      v33 = v32;
      swift_beginAccess();
      sub_1B6A96FA4(v31, v33, v14);
      sub_1B6A5718C(v14, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
      swift_endAccess();

      v34 = sub_1B69A09A4(v28, v27);
      v36 = v35;
      swift_beginAccess();
      sub_1B6A96E90(v34, v36, v50);
      sub_1B6A23F44(v50, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType);
      swift_endAccess();

      sub_1B6AB8DA0();
      sub_1B69A0AA0(v28, v27, v10, 1, v29, v30);
      return (*(v43 + 8))(v10, v44);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A4A09C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(v11 + 88);
  v14[2] = a10;
  v14[3] = a11;
  v14[5] = a1;
  v14[6] = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  return sub_1B6995F94(v12, sub_1B69AC4E4, v14, v12);
}

uint64_t sub_1B6A4A130(char *a1, uint64_t a2)
{
  v66 = a1;
  v64 = type metadata accessor for Tracker.DelayedEvent(0);
  v62 = *(v64 - 8);
  v3 = *(v62 + 64);
  v4 = MEMORY[0x1EEE9AC00](v64);
  v67 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v61 = v55 - v6;
  v7 = sub_1B6AB8E40();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v60 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, &qword_1EB95BAD0, sub_1B6A577D8, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v55 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        *(result + 200) = 1;
        v20 = result;
        swift_beginAccess();
        v55[0] = v20;
        v21 = *(v20 + 144);
        a2 = v21 + 64;
        v22 = 1 << *(v21 + 32);
        v23 = -1;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        v24 = v23 & *(v21 + 64);
        v25 = (v22 + 63) >> 6;
        v55[2] = v63 + 16;
        v55[1] = v63 + 32;
        v58 = (v63 + 8);
        v56 = v21;

        v26 = 0;
        v57 = xmmword_1B6ABD890;
        v65 = v16;
        v66 = v14;
        v59 = v7;
        while (v24)
        {
          v27 = v26;
LABEL_21:
          v30 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v31 = v30 | (v27 << 6);
          v32 = v56;
          v33 = v63;
          v34 = v60;
          (*(v63 + 16))(v60, *(v56 + 48) + *(v63 + 72) * v31, v7);
          v35 = v61;
          sub_1B699A32C(*(v32 + 56) + *(v62 + 72) * v31, v61, type metadata accessor for Tracker.DelayedEvent);
          sub_1B6A577D8();
          v37 = v36;
          v38 = *(v36 + 48);
          v39 = *(v33 + 32);
          v14 = v66;
          v39(v66, v34, v7);
          sub_1B6A57770(v35, &v14[v38], type metadata accessor for Tracker.DelayedEvent);
          (*(*(v37 - 8) + 56))(v14, 0, 1, v37);
          v16 = v65;
LABEL_22:
          sub_1B6A5784C(v14, v16, &qword_1EB95BAD0, sub_1B6A577D8, MEMORY[0x1E69E6720]);
          sub_1B6A577D8();
          if ((*(*(v37 - 8) + 48))(v16, 1, v37) == 1)
          {

            v51 = v55[0];
            v52 = *(v55[0] + 144);
            v53 = MEMORY[0x1E69E7CC8];
            *(v55[0] + 144) = MEMORY[0x1E69E7CC8];

            swift_beginAccess();
            v54 = *(v51 + 160);
            *(v51 + 160) = v53;
          }

          sub_1B6A57770(&v16[*(v37 + 48)], v67, type metadata accessor for Tracker.DelayedEvent);
          if (qword_1EDBCCEE0 != -1)
          {
            swift_once();
          }

          sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v40 = swift_allocObject();
          *(v40 + 16) = v57;
          v41 = v64;
          v42 = v67;
          v43 = (v67 + *(v64 + 20));
          v44 = *v43;
          v45 = v43[1];
          *(v40 + 56) = MEMORY[0x1E69E6158];
          *(v40 + 64) = sub_1B698CEC0();
          *(v40 + 32) = v44;
          *(v40 + 40) = v45;

          sub_1B6AB9900();
          sub_1B6AB8F70();

          v47 = *(v42 + *(v41 + 24));
          if ((*(v47 + OBJC_IVAR___AADelayedToken_sealed) & 1) == 0)
          {
            *(v47 + OBJC_IVAR___AADelayedToken_sealed) = 1;
            v48 = v47 + OBJC_IVAR___AADelayedToken_block;
            v49 = *(v48 + 8);
            (*v48)(v46);
          }

          sub_1B6984D38(v67, type metadata accessor for Tracker.DelayedEvent);
          v7 = v59;
          v16 = v65;
          (*v58)(v65, v59);
          v14 = v66;
        }

        if (v25 <= v26 + 1)
        {
          v28 = v26 + 1;
        }

        else
        {
          v28 = v25;
        }

        v29 = v28 - 1;
        while (1)
        {
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v27 >= v25)
          {
            sub_1B6A577D8();
            v37 = v50;
            (*(*(v50 - 8) + 56))(v14, 1, 1, v50);
            v24 = 0;
            v26 = v29;
            goto LABEL_22;
          }

          v24 = *(a2 + 8 * v27);
          ++v26;
          if (v24)
          {
            v26 = v27;
            goto LABEL_21;
          }
        }

        __break(1u);
      }

      else if (a2 == 3)
      {
        *(result + 200) = 0;
      }
    }

    else
    {
      if (!a2)
      {
      }

      if (a2 == 1)
      {
        v18 = *(result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager + 24);
        v19 = *(result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager + 32);
        __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager), v18);
        (*(v19 + 16))(v66, v18, v19);
      }
    }

    v68 = a2;
    result = sub_1B6ABA160();
    __break(1u);
  }

  return result;
}

uint64_t Tracker.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  sub_1B6988008(v0 + 72);

  v4 = *(v0 + 104);

  v5 = *(v0 + 112);

  v6 = *(v0 + 120);

  v7 = *(v0 + 128);

  v8 = *(v0 + 136);

  v9 = *(v0 + 144);

  v10 = *(v0 + 160);

  v11 = *(v0 + 168);

  v12 = *(v0 + 176);

  v13 = *(v0 + 184);

  v14 = *(v0 + 192);

  v15 = *(v0 + 208);
  swift_unknownObjectRelease();
  sub_1B6984D38(v0 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager));
  v16 = *(v0 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);

  v17 = *(v0 + 152);
  *(v0 + 152) = 0;

  if (v17)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v18 = *(v17 + 152);
      swift_retain_n();

      v17 = v18;
    }

    while (v18);
  }

  return v0;
}

uint64_t Tracker.__deallocating_deinit()
{
  Tracker.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Tracker.onWillSubmit<A>(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 192);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 192) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1B69E4350(0, *(v7 + 2) + 1, 1, v7);
    *(v3 + 192) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1B69E4350((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v11 + 6) = a3;
  *(v3 + 192) = v7;
  swift_endAccess();
}

uint64_t Tracker.explicitTime<A>(_:startTime:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 104);

  sub_1B69B61BC(a1, v9, 0, a2, a3, a4);
}

uint64_t Tracker.submit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v9 = *(v3 + 96);
  v10 = *(v4 + 88);
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = sub_1B6A56668;
  v11[4] = v8;

  sub_1B69877A4(v10, sub_1B6A40320, v11);
}

uint64_t AccessTracker.submit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager + 24);
    v9 = *(result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager + 32);
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager), v8);
    (*(v9 + 8))(a1, v3, a2, a3, v8, v9);
  }

  return result;
}

uint64_t Tracker.explicitSubmit<A>(_:submitTime:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 104);
  memset(v15, 0, sizeof(v15));

  sub_1B6989D00(a1, v13, 0, a2, v15, a3, a4, a5, a6);

  return sub_1B69840C4(v15, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
}

uint64_t sub_1B6A4AE50(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a6;
  v14 = type metadata accessor for EventSubmitResult();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v23 - v17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + 104);
    memset(v25, 0, sizeof(v25));

    sub_1B6989D00(a4, v20, a5 & 1, v24, v25, a2, a3, a7, a8);

    return sub_1B69840C4(v25, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
  }

  else if (a2)
  {
    sub_1B6A16B30();
    v21 = swift_allocError();
    *v22 = xmmword_1B6AC0310;
    *v18 = v21;
    swift_storeEnumTagMultiPayload();
    a2(v18);
    return (*(v15 + 8))(v18, v14);
  }

  return result;
}

id sub_1B6A4B02C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v27 = a7;
  v28 = a5;
  v29 = a1;
  v30 = a6;
  v31 = a2;
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  sub_1B6AB8DA0();
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v14, v16, v10);
  v18 = (*(v11 + 80) + 65) & ~*(v11 + 80);
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 16) = v28;
  *(v19 + 24) = v21;
  *(v19 + 32) = v17;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  *(v19 + 56) = v20;
  *(v19 + 64) = v31;
  (*(v11 + 32))(v19 + v18, v14, v10);
  v22 = type metadata accessor for DelayedToken();
  v23 = objc_allocWithZone(v22);
  v23[OBJC_IVAR___AADelayedToken_sealed] = 0;
  v24 = &v23[OBJC_IVAR___AADelayedToken_block];
  *v24 = v32;
  v24[1] = v19;

  sub_1B698BF94(a3);
  v33.receiver = v23;
  v33.super_class = v22;
  v25 = objc_msgSendSuper2(&v33, sel_init, v27);
  (*(v11 + 8))(v16, v10);

  return v25;
}

uint64_t sub_1B6A4B24C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a6;
  v14 = type metadata accessor for EventSubmitResult();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v25 - v17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    sub_1B6992534(a4, result, a7, a8);
    v21 = *(v20 + 104);
    memset(v27, 0, sizeof(v27));

    v22 = *(v20 + 88);
    v29 = a7;
    v30 = a8;
    v31 = v20;
    v32 = a4;
    v33 = v21;
    v34 = a5 & 1;
    v35 = v26;
    v36 = 0;
    v37 = 0;
    v38 = v27;
    v39 = a2;
    v40 = a3;
    sub_1B6995F94(v22, sub_1B69AC4E4, v28, OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider);

    return sub_1B69840C4(v27, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
  }

  else if (a2)
  {
    sub_1B6A16B30();
    v23 = swift_allocError();
    *v24 = xmmword_1B6AC0310;
    *v18 = v23;
    swift_storeEnumTagMultiPayload();
    a2(v18);
    return (*(v15 + 8))(v18, v14);
  }

  return result;
}

void Tracker.delayedSubmit<A>(_:onlyIfTimed:awaiting:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a3;
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v7 + 200) == 1)
  {
    v29 = a4;
    v19 = *(*(v7 + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v18 = v19;
    (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
    v20 = v19;
    LOBYTE(v19) = sub_1B6AB9110();
    (*(v15 + 8))(v18, v14);
    if (v19)
    {
      v21 = sub_1B6A4B02C(a1, a2 & 1, v29, a5, a6, a7, &unk_1F2E7A818, sub_1B6A575C0);
      if (v21[OBJC_IVAR___AADelayedToken_sealed] == 1)
      {
      }

      else
      {
        v21[OBJC_IVAR___AADelayedToken_sealed] = 1;
        v26 = *&v21[OBJC_IVAR___AADelayedToken_block + 8];
        v27 = v21;
        (*&v21[OBJC_IVAR___AADelayedToken_block])();
      }

      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  v22 = *(v7 + 96);
  v18 = swift_allocObject();
  *(v18 + 2) = a6;
  *(v18 + 3) = a7;
  v23 = v29;
  *(v18 + 4) = v7;
  *(v18 + 5) = v23;
  *(v18 + 6) = a1;
  v18[56] = a2 & 1;
  *(v18 + 8) = a4;
  *(v18 + 9) = a5;

  sub_1B698BF94(a4);
  if (qword_1EDBCAA18 != -1)
  {
LABEL_11:
    swift_once();
  }

  v24 = qword_1EDBCFD78;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B6A566B0;
  *(v25 + 24) = v18;

  sub_1B69877A4(v24, sub_1B69B6F90, v25);
}

uint64_t sub_1B6A4B76C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, unint64_t a7, uint64_t a8)
{
  v95 = a4;
  v94 = a3;
  sub_1B6A56C3C(0, &qword_1EB95AE30, type metadata accessor for Tracker.DelayedEvent, MEMORY[0x1E69E6720]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v87 = &v78 - v16;
  v84 = sub_1B6AB8E40();
  v83 = *(v84 - 8);
  v17 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Tracker.DelayedEvent(0);
  v81 = *(v82 - 8);
  v19 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1B6AB8DB0();
  v79 = *(v80 - 8);
  v21 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B6AB90F0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = a1;
  v28 = *(*(a1 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x1E69E8020], v23);
  v29 = v28;
  LOBYTE(v28) = sub_1B6AB9110();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    v92 = a8;
    v93 = a5;
    v30 = *(a2 + 16);
    if (v30)
    {
      *&v99 = MEMORY[0x1E69E7CC0];
      sub_1B6994474(0, v30, 0);
      v31 = v99;
      v32 = (a2 + 32);
      do
      {
        v33 = *v32;
        v34 = sub_1B6ABA330();
        *&v99 = v31;
        v37 = *(v31 + 16);
        v36 = *(v31 + 24);
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v40 = a7;
          v41 = v34;
          a5 = v35;
          sub_1B6994474((v36 > 1), v37 + 1, 1);
          v35 = a5;
          v34 = v41;
          a7 = v40;
          v31 = v99;
        }

        *(v31 + 16) = v38;
        v39 = v31 + 16 * v37;
        *(v39 + 32) = v34;
        *(v39 + 40) = v35;
        v32 += 2;
        --v30;
      }

      while (v30);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
      v38 = *(MEMORY[0x1E69E7CC0] + 16);
      a5 = MEMORY[0x1E69E7CC0];
      if (!v38)
      {
LABEL_21:

        if (qword_1EDBCAA70 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }

    v90 = a7;
    v91 = a6;
    v42 = 0;
    v43 = v31 + 40;
    v88 = v38 - 1;
    v96 = MEMORY[0x1E69E7CC0];
    v89 = v31 + 40;
LABEL_10:
    a6 = (v43 + 16 * v42);
    a7 = v42;
    while (a7 < *(v31 + 16))
    {
      v44 = *(a6 - 1);
      a5 = *a6;
      v42 = a7 + 1;

      sub_1B69BEDE8(v44, a5, 0, 0, 1, &v99);
      if (!v101)
      {
        sub_1B6A23F44(&v99, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
        v45 = v96;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v98[0] = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B6994474(0, *(v45 + 16) + 1, 1);
          v45 = *&v98[0];
        }

        v48 = *(v45 + 16);
        v47 = *(v45 + 24);
        v49 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v96 = v48 + 1;
          sub_1B6994474((v47 > 1), v48 + 1, 1);
          v49 = v96;
          v45 = *&v98[0];
        }

        *(v45 + 16) = v49;
        v96 = v45;
        v50 = v45 + 16 * v48;
        *(v50 + 32) = v44;
        *(v50 + 40) = a5;
        v43 = v89;
        if (v88 == a7)
        {
LABEL_20:
          a6 = v91;
          a7 = v90;
          a5 = v96;
          goto LABEL_21;
        }

        goto LABEL_10;
      }

      sub_1B6A23F44(&v99, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
      a6 += 2;
      ++a7;
      if (v38 == v42)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_22:
  v51 = sub_1B6AB8F90();
  __swift_project_value_buffer(v51, qword_1EDBCFD80);

  v52 = sub_1B6AB8F80();
  v53 = sub_1B6AB98C0();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v99 = v55;
    *v54 = 136315394;
    v56 = sub_1B6ABA330();
    v58 = sub_1B698F63C(v56, v57, &v99);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    *&v98[0] = a5;
    sub_1B6980AE0(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1B699918C();
    v59 = sub_1B6AB9290();
    v61 = sub_1B698F63C(v59, v60, &v99);

    *(v54 + 14) = v61;
    _os_log_impl(&dword_1B697C000, v52, v53, "Delaying submission of %s due to unmet dependencies: %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C99550](v55, -1, -1);
    MEMORY[0x1B8C99550](v54, -1, -1);
  }

  v62 = v93;
  v63 = v92;
  if (*(a5 + 16))
  {
    v64 = sub_1B6A4B02C(v94, v95 & 1, v93, a6, a7, v92, &unk_1F2E7A818, sub_1B6A575C0);
    v65 = sub_1B6ABA330();
    v67 = v66;

    v68 = v85;
    sub_1B6AB8E30();
    v69 = v82;
    v70 = (v68 + *(v82 + 20));
    *v70 = v65;
    v70[1] = v67;
    *(v68 + *(v69 + 24)) = v64;
    *(v68 + *(v69 + 28)) = a5;
    v71 = v86;
    (*(v83 + 16))(v86, v68, v84);
    v72 = v87;
    sub_1B699A32C(v68, v87, type metadata accessor for Tracker.DelayedEvent);
    (*(v81 + 56))(v72, 0, 1, v69);
    swift_beginAccess();
    sub_1B69E200C(v72, v71);
    swift_endAccess();
    sub_1B6A4C148(a5);

    return sub_1B6984D38(v68, type metadata accessor for Tracker.DelayedEvent);
  }

  else
  {

    v74 = v97;
    v75 = *(v97 + 104);

    v76 = v78;
    sub_1B6AB8DA0();
    memset(v98, 0, sizeof(v98));
    v77 = *(v74 + 88);
    v100 = a7;
    v101 = v63;
    v102 = v74;
    v103 = v94;
    v104 = v75;
    v105 = v95 & 1;
    v106 = v76;
    v107 = 0;
    v108 = 0;
    v109 = v98;
    v110 = v62;
    v111 = a6;
    sub_1B6995F94(v77, sub_1B69AC4E4, &v99, OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider);

    sub_1B69840C4(v98, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
    return (*(v79 + 8))(v76, v80);
  }
}

uint64_t sub_1B6A4C148(uint64_t a1)
{
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = v1;
  v8 = *(v1[11] + OBJC_IVAR___AAAccessQueue_queue);
  *v7 = v8;
  v9 = v4[13];
  v59 = *MEMORY[0x1E69E8020];
  v57 = v9;
  v58 = v4 + 13;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = sub_1B6AB9110();
  v11 = v4[1];
  v60 = v4 + 1;
  v61 = v3;
  v56 = v11;
  result = (v11)(v7, v3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_32;
  }

  v52 = *(a1 + 16);
  if (v52)
  {
    v13 = 0;
    v53 = v55[19];
    v51 = a1 + 32;
    while (1)
    {
      v54 = v13;
      v14 = (v51 + 16 * v13);
      v16 = *v14;
      v15 = v14[1];

      sub_1B6A4C660(v16, v15, v55);
      if ()
      {
        break;
      }

LABEL_4:
      v13 = v54 + 1;

      if (v13 == v52)
      {
        return result;
      }
    }

    v17 = v53;
    while (1)
    {
      v19 = *(v17[11] + OBJC_IVAR___AAAccessQueue_queue);
      *v7 = v19;
      v20 = v61;
      v57(v7, v59, v61);

      v21 = v19;
      LOBYTE(v19) = sub_1B6AB9110();
      v56(v7, v20);
      if ((v19 & 1) == 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }

      swift_beginAccess();
      if (!v17[20][2])
      {
        break;
      }

      v22 = v17[20];

      sub_1B6993940(v16, v15);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        break;
      }

LABEL_23:
      v43 = sub_1B6A49AA0();
      v45 = sub_1B6A4C990(v63, v16, v15);
      if (*v44)
      {
        v46 = v44;
        swift_weakInit();
        v47 = *v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v46 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v47 = sub_1B69E3FFC(0, v47[2] + 1, 1, v47);
          *v46 = v47;
        }

        v50 = v47[2];
        v49 = v47[3];
        if (v50 >= v49 >> 1)
        {
          v47 = sub_1B69E3FFC((v49 > 1), v50 + 1, 1, v47);
          *v46 = v47;
        }

        v47[2] = v50 + 1;
        sub_1B6A5784C(v62, &v47[v50 + 4], &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak);
      }

      (v45)(v63, 0);
      (v43)(v64, 0);

      v18 = v17[19];

      v17 = v18;
      if (!v18)
      {
        goto LABEL_4;
      }
    }

    swift_beginAccess();
    v25 = v17[20];
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v17[20];
    v27 = v63[0];
    v17[20] = 0x8000000000000000;
    v28 = sub_1B6993940(v16, v15);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_30;
    }

    v34 = v29;
    if (v27[3] >= v33)
    {
      if ((v26 & 1) == 0)
      {
        v39 = v28;
        sub_1B69DFAF4();
        v28 = v39;
        v36 = v63[0];
        if (v34)
        {
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_1B69DCB7C(v33, v26);
      v28 = sub_1B6993940(v16, v15);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_33;
      }
    }

    v36 = v63[0];
    if (v34)
    {
LABEL_18:
      v37 = v36[7];
      v38 = *(v37 + 8 * v28);
      *(v37 + 8 * v28) = MEMORY[0x1E69E7CC0];

LABEL_22:
      v17[20] = v36;
      swift_endAccess();
      goto LABEL_23;
    }

LABEL_20:
    v36[(v28 >> 6) + 8] |= 1 << v28;
    v40 = (v36[6] + 16 * v28);
    *v40 = v16;
    v40[1] = v15;
    *(v36[7] + 8 * v28) = MEMORY[0x1E69E7CC0];
    v41 = v36[2];
    v32 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v32)
    {
      goto LABEL_31;
    }

    v36[2] = v42;

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B6A4C660(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(*(v4 + 11) + OBJC_IVAR___AAAccessQueue_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  LOBYTE(v13) = sub_1B6AB9110();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    a3 = sub_1B69E3FFC(0, a3[2] + 1, 1, a3);
    *a2 = a3;
    goto LABEL_7;
  }

  swift_beginAccess();
  if (!*(*(v4 + 20) + 16) || (v15 = *(v4 + 20), , sub_1B6993940(a1, a2), v17 = v16, , (v17 & 1) == 0))
  {
    swift_beginAccess();

    v18 = *(v4 + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = *(v4 + 20);
    *(v4 + 20) = 0x8000000000000000;
    sub_1B69E7820(MEMORY[0x1E69E7CC0], a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + 20) = v26[0];
    swift_endAccess();
  }

  v4 = sub_1B6A49AA0();
  v8 = sub_1B6A4C990(v26, a1, a2);
  if (!*v20)
  {
    (v8)(v26, 0);
    return (v4)(v27, 0);
  }

  a2 = v20;
  swift_weakInit();
  a3 = *a2;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = a3;
  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v23 = a3[2];
  v22 = a3[3];
  if (v23 >= v22 >> 1)
  {
    a3 = sub_1B69E3FFC((v22 > 1), v23 + 1, 1, a3);
    *a2 = a3;
  }

  a3[2] = v23 + 1;
  sub_1B6A5784C(v25, &a3[v23 + 4], &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak);
  (v8)(v26, 0);
  return (v4)(v27, 0);
}

void (*sub_1B6A4C990(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1B6A5619C(v6, a2, a3);
  return sub_1B6A4CA18;
}

void sub_1B6A4CA18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id sub_1B6A4CA64(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v88 = a6;
  v89 = a7;
  v79 = a5;
  v86 = a3;
  v87 = a4;
  v93 = a1;
  v94 = a2;
  v92 = a9;
  v12 = type metadata accessor for EventSubmitResult();
  v81 = *(v12 - 8);
  v82 = v12;
  v13 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v77 - v14;
  sub_1B6A56C3C(0, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v90 = &v77 - v17;
  v18 = sub_1B6AB8E40();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EventData();
  v78 = *(v23 - 1);
  v24 = *(v78 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v83 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v77 - v26);
  sub_1B6AB8E30();
  v84 = sub_1B6AB8DD0();
  v85 = v28;
  (*(v19 + 8))(v22, v18);
  v29 = v27 + v23[5];
  sub_1B6AB8DA0();
  *&v95[0] = 47;
  *(&v95[0] + 1) = 0xE100000000000000;

  v30 = MEMORY[0x1E69E7CC0];
  v91 = v10;
  v31 = v10;
  do
  {
    v34 = v31[3];
    if (v34)
    {
      v35 = v31[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1B69B5A00(0, *(v30 + 2) + 1, 1, v30);
      }

      v37 = *(v30 + 2);
      v36 = *(v30 + 3);
      if (v37 >= v36 >> 1)
      {
        v30 = sub_1B69B5A00((v36 > 1), v37 + 1, 1, v30);
      }

      *(v30 + 2) = v37 + 1;
      v32 = &v30[16 * v37];
      *(v32 + 4) = v35;
      *(v32 + 5) = v34;
    }

    v33 = v31[19];

    v31 = v33;
  }

  while (v33);
  v96 = sub_1B69B919C(v30);
  sub_1B6980AE0(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v38 = sub_1B6AB9290();
  v40 = v39;

  MEMORY[0x1B8C97BE0](v38, v40);

  v41 = v95[0];
  v42 = v85;
  *v27 = v84;
  v27[1] = v42;
  *(v27 + v23[6]) = v41;
  v43 = (v27 + v23[7]);
  *v43 = 0x6F69737365536F6ELL;
  v43[1] = 0xE90000000000006ELL;
  *(v27 + v23[8]) = xmmword_1B6AC0340;
  v44 = v90;
  v46 = v93;
  v45 = v94;
  v47 = a8;
  v48 = a8;
  v49 = v92;
  sub_1B69B92B4(v93, v94, v27, v48, v90);
  type metadata accessor for Sequence(0);
  v50 = swift_allocBox();
  sub_1B69BA134(v46, v45, v27, v44, v86, v87, v47, v49, v51);
  v86 = v50;
  v81 = sub_1B69C1A34(v47, v49);
  v80 = v52;
  v84 = v53;
  LODWORD(v82) = v54;
  v55 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v85 = v55;
  *(v55 + 16) = result;
  v87 = result;
  v77 = v47;
  if (result)
  {
    type metadata accessor for AccessTracker();
    v57 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v57[3] = 0;
    v57[4] = 0;
    v57[5] = sub_1B6A55214;
    v57[6] = 0;
    v58 = swift_allocObject();
    swift_weakInit();
    sub_1B699A32C(v27, v83, type metadata accessor for EventData);
    sub_1B6992ADC(v79, v95, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B6980AE0);
    v59 = (*(v78 + 80) + 72) & ~*(v78 + 80);
    v60 = (v24 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 39) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v64 = v92;
    v63[2] = v77;
    v63[3] = v64;
    v65 = v88;
    v66 = v89;
    v63[4] = v58;
    v63[5] = v65;
    v68 = v93;
    v67 = v94;
    v63[6] = v66;
    v63[7] = v68;
    v63[8] = v67;
    sub_1B6A57770(v83, v63 + v59, type metadata accessor for EventData);
    *(v63 + v60) = v86;
    v69 = (v63 + v61);
    v70 = v80;
    *v69 = v81;
    v69[1] = v70;
    v71 = v63 + ((v61 + 23) & 0xFFFFFFFFFFFFFFF8);
    v72 = v85;
    *v71 = v84;
    v71[8] = v82 & 1;
    v73 = (v63 + v62);
    v74 = v95[1];
    *v73 = v95[0];
    v73[1] = v74;
    *(v63 + ((v62 + 39) & 0xFFFFFFFFFFFFFFF8)) = v72;
    type metadata accessor for SessionObserver();
    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v75[3] = v57;
    v75[4] = sub_1B6A5707C;
    v75[5] = v63;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B698BF94(v88);
    sub_1B6992B50(v93, v94);

    if (Strong)
    {
      sub_1B6A04C10(v75);
      swift_unknownObjectRelease();
    }

    sub_1B6A5718C(v90, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
    sub_1B6984D38(v27, type metadata accessor for EventData);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B6A4D508(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t *a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v171 = a8;
  v178 = a7;
  v177 = a6;
  v186 = a5;
  v188 = a2;
  v181 = type metadata accessor for EventSubmitResult();
  v180 = *(v181 - 8);
  v19 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v179 = &v151[-v20];
  v182 = a16;
  v183 = a17;
  v166 = type metadata accessor for ProcessEvent();
  v165 = *(v166 - 8);
  v21 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v168 = &v151[-v22];
  v170 = type metadata accessor for Sequence(0);
  v23 = *(*(v170 - 8) + 64);
  MEMORY[0x1EEE9AC00](v170);
  v169 = &v151[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v184 = type metadata accessor for TimedData();
  v25 = *(*(v184 - 8) + 64);
  MEMORY[0x1EEE9AC00](v184);
  v176 = &v151[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v174 = sub_1B6AB8DB0();
  v173 = *(v174 - 8);
  v27 = *(v173 + 64);
  v28 = MEMORY[0x1EEE9AC00](v174);
  v172 = &v151[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v175 = &v151[-v31];
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v151[-v32];
  v34 = type metadata accessor for EventData();
  v35 = *(*(v34 - 1) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v185 = &v151[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = type metadata accessor for SessionObserverChange();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v151[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_1B6AB90F0();
  v42 = *(v41 - 8);
  v43 = v42[8];
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v151[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = swift_projectBox();
  swift_beginAccess();
  v167 = a3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v163 = v46;
    v164 = a4;
    v187 = Strong;
    v48 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v45 = v48;
    v49 = *MEMORY[0x1E69E8020];
    v50 = *MEMORY[0x1E69E8020];
    v162 = v42[13];
    v162(v45, v50, v41);
    v51 = v48;
    LOBYTE(v48) = sub_1B6AB9110();
    v161 = v42[1];
    v161(v45, v41);
    if ((v48 & 1) == 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_1B699A32C(v188, v40, type metadata accessor for SessionObserverChange);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {

        return;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      v153 = v42 + 13;
      v53 = *v40;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1B69B8B64(v177, v178, v182, v183, &v189);
        v194 = v189;
        v195 = v190;
        v196 = v191;
        v54 = sub_1B69B8DBC(&v194);
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0;
      }

      v61 = v171;
      v62 = *(v171 + 8);
      v159 = *v171;
      v160 = v62;

      sub_1B6AB8DA0();
      v63 = (v61 + v34[6]);
      v64 = v63[1];
      v171 = *v63;
      v154 = v54;
      v188 = v53;
      v152 = v49;
      v155 = v41;
      if (v54)
      {
        v158 = *(v54 + 16);
        v65 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
        v66 = *(v54 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
        v157 = *(v54 + 24);
        if (v66)
        {
          v156 = *(v54 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);

          v67 = v64;

          goto LABEL_21;
        }

        v69 = v188;
      }

      else
      {
        v68 = *(v53 + 24);
        v158 = *(v53 + 16);
        v157 = v68;

        v69 = v53;
        v65 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
      }

      v67 = v64;
      v70 = (v69 + v65);
      v66 = v70[1];
      v156 = *v70;

LABEL_21:
      v71 = v185;
      v72 = v160;
      *v185 = v159;
      *(v71 + 1) = v72;
      v73 = v34[5];
      v74 = v173;
      v75 = v174;
      (*(v173 + 32))(&v71[v73], v33, v174);
      v76 = &v71[v34[6]];
      *v76 = v171;
      *(v76 + 1) = v67;
      v77 = &v71[v34[7]];
      v78 = v157;
      *v77 = v158;
      *(v77 + 1) = v78;
      v79 = &v71[v34[8]];
      *v79 = v156;
      *(v79 + 1) = v66;
      v80 = *(v74 + 16);
      v40 = v175;
      v80(v175, v188 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate, v75);
      v171 = v73;
      v81 = &v71[v73];
      v82 = v172;
      v80(v172, v81, v75);
      v83 = v176;
      v80(v176, v40, v75);
      v84 = &v83[*(v184 + 20)];
      v160 = v74 + 16;
      v159 = v80;
      v80(v84, v82, v75);
      sub_1B6AB8D00();
      v86 = v85;
      v87 = *(v74 + 8);
      v87(v82, v75);
      v87(v40, v75);
      v88 = v86 * 1000.0;
      if (COERCE__INT64(fabs(v86 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v89 = v163;
        v90 = v155;
        if (v88 > -9.22337204e18)
        {
          v91 = v185;
          if (v88 < 9.22337204e18)
          {
            *&v83[*(v184 + 24)] = v88;
            v92 = swift_beginAccess();
            v93 = v83;
            v94 = *(v170 + 28);
            v95 = *(v89 + v94);
            MEMORY[0x1EEE9AC00](v92);
            v149 = v91;
            v150 = v93;
            v40 = 0;
            v97 = sub_1B6A115A8(sub_1B6A24388, v148, v96);
            v98 = *(v89 + v94);
            *(v89 + v94) = v97;
            swift_endAccess();

            v99 = v91;
            v100 = v187;
            if (sub_1B6A4D468(v177, v178, v164, v186, v182, v183))
            {
              swift_beginAccess();
              v101 = v89;
              v102 = v169;
              sub_1B699A32C(v101, v169, type metadata accessor for Sequence);
              v103 = v100[26];
              v104 = v100[27];
              ObjectType = swift_getObjectType();
              (*(v104 + 8))(&v189, ObjectType, v104);
              v106 = v189;
              v107 = *(v100[11] + OBJC_IVAR___AAAccessQueue_queue);
              *v45 = v107;
              v162(v45, v152, v90);
              v108 = v107;
              LOBYTE(v107) = sub_1B6AB9110();
              v161(v45, v90);
              if (v107)
              {
                v109 = MEMORY[0x1EEE9AC00](v100[11]);
                v149 = v106;
                v150 = v102;
                v122 = sub_1B69BF2DC(v109, sub_1B69BFC98, v148);

                sub_1B6984D38(v102, type metadata accessor for Sequence);
                v123 = v185;
                if (v122)
                {
                  v184 = a10;
                  v124 = v163;
                  swift_beginAccess();
                  v126 = *v124;
                  v125 = v124[1];
                  v127 = v175;
                  v159(v175, &v123[v171], v174);
                  sub_1B6992ADC(a14, &v189, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B6980AE0);
                  v149 = v183;
                  v148[1] = v182;
                  v128 = v168;
                  ProcessEvent.init(name:json:nonJitteredEventTimestamp:groupName:groupContentType:userInfo:)(v126, v125, v122, v127, v184, a11, a12, a13 & 1, v168, &v189);
                  swift_beginAccess();
                  if (swift_weakLoadStrong())
                  {
                    v129 = swift_unknownObjectWeakLoadStrong();

                    v130 = v122;

                    v131 = v176;
                    v132 = v164;
                    if (v129)
                    {
                      sub_1B69C1DD4(v128, v182, v183);
                      swift_unknownObjectRelease();
                    }
                  }

                  else
                  {

                    v141 = v122;
                    v131 = v176;
                    v132 = v164;
                  }

                  v142 = v185;
                  if (v132)
                  {
                    v143 = v165;
                    v144 = v179;
                    v145 = v166;
                    (*(v165 + 16))(v179, v128, v166);
                    v146 = v181;
                    swift_storeEnumTagMultiPayload();
                    v132(v144);

                    (*(v180 + 8))(v144, v146);
                    (*(v143 + 8))(v128, v145);
                  }

                  else
                  {
                    (*(v165 + 8))(v128, v166);
                  }

                  v116 = v131;
                  v117 = v142;
                  goto LABEL_44;
                }

                if (qword_1EDBCCEE0 != -1)
                {
                  swift_once();
                }

                sub_1B6AB98D0();
                sub_1B6AB8F70();
                v133 = v164;
                v134 = v163;
                if (v164)
                {
                  swift_beginAccess();
                  v136 = *v134;
                  v135 = v134[1];
                  sub_1B6A23D80();
                  v137 = swift_allocError();
                  *v138 = v136;
                  v138[1] = v135;
                  v139 = v179;
                  *v179 = v137;
                  v140 = v181;
                  swift_storeEnumTagMultiPayload();

                  v133(v139);

                  (*(v180 + 8))(v139, v140);
                }

                else
                {
                }

                sub_1B6984D38(v176, type metadata accessor for TimedData);
                v59 = type metadata accessor for EventData;
                v60 = v123;
                goto LABEL_12;
              }

LABEL_51:
              __break(1u);
              swift_once();
              sub_1B6AB98F0();
              sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v110 = swift_allocObject();
              *(v110 + 16) = xmmword_1B6ABF500;
              *&v189 = 0;
              *(&v189 + 1) = 0xE000000000000000;
              v192 = v177;
              v193 = v178;
              type metadata accessor for EventSubmit();
              sub_1B6ABA0D0();
              v112 = *(&v189 + 1);
              v111 = v189;
              v113 = MEMORY[0x1E69E6158];
              *(v110 + 56) = MEMORY[0x1E69E6158];
              v114 = sub_1B698CEC0();
              *(v110 + 64) = v114;
              *(v110 + 32) = v111;
              *(v110 + 40) = v112;
              *&v189 = 0;
              *(&v189 + 1) = 0xE000000000000000;
              v192 = v40;
              sub_1B697ED90(0, &qword_1EDBCBB00);
              sub_1B6AB9DF0();
              v115 = v189;
              *(v110 + 96) = v113;
              *(v110 + 104) = v114;
              *(v110 + 72) = v115;
              sub_1B6AB8F70();

              v116 = v176;
              v117 = v185;
              v118 = v164;
              if (v164)
              {
                v119 = v179;
                *v179 = v40;
                v120 = v181;
                swift_storeEnumTagMultiPayload();
                v121 = v40;
                v118(v119);

                (*(v180 + 8))(v119, v120);
              }

              else
              {
              }

LABEL_44:
              sub_1B6984D38(v116, type metadata accessor for TimedData);
              sub_1B6984D38(v117, type metadata accessor for EventData);
              swift_beginAccess();
              v147 = *(a15 + 16);
              *(a15 + 16) = 0;

              return;
            }

            sub_1B6984D38(v93, type metadata accessor for TimedData);
            v59 = type metadata accessor for EventData;
            v60 = v99;
LABEL_12:
            sub_1B6984D38(v60, v59);
            return;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v59 = type metadata accessor for SessionObserverChange;
    v60 = v40;
    goto LABEL_12;
  }

  if (a4)
  {
    sub_1B6A16B30();
    v55 = swift_allocError();
    *v56 = xmmword_1B6AC0310;
    v57 = v179;
    *v179 = v55;
    v58 = v181;
    swift_storeEnumTagMultiPayload();
    a4(v57);
    (*(v180 + 8))(v57, v58);
  }
}

uint64_t sub_1B6A4E8A8(void *a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for EventSubmitResult();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v35 - v16);
  v18 = *(v6 + 32);
  if (*(v18 + OBJC_IVAR___AATrackingConsent_consentEnforcement) != 1)
  {
    return 1;
  }

  v39 = v15;
  if (sub_1B69B9904(a1, a2, a5, a6))
  {
    return 1;
  }

  if ((sub_1B6A92194(a1, a2, a5, a6) & 1) == 0)
  {
    return 1;
  }

  v19 = *(v18 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v19 + 20));
  v20 = *(v19 + 16);
  os_unfair_lock_unlock((v19 + 20));
  if (!v20)
  {
    return 1;
  }

  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v21 = sub_1B6AB8F90();
  __swift_project_value_buffer(v21, qword_1EDBCFDA8);
  sub_1B6992B50(a1, a2);
  v22 = sub_1B6AB8F80();
  v23 = sub_1B6AB9900();
  sub_1B69C346C(a1, a2);
  v38 = v22;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v24 = 136446210;
    v25 = sub_1B69A09A4(a1, a2);
    v36 = v23;
    v35 = sub_1B698F63C(v25, v26, &v40);

    *(v24 + 4) = v35;
    _os_log_impl(&dword_1B697C000, v38, v36, "Tracking consent denied for event: %{public}s", v24, 0xCu);
    v27 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1B8C99550](v27, -1, -1);
    MEMORY[0x1B8C99550](v24, -1, -1);
  }

  if (a3)
  {
    v28 = sub_1B69A09A4(a1, a2);
    v30 = v29;
    sub_1B6A23E48();
    v31 = swift_allocError();
    *v32 = v28;
    v32[1] = v30;
    *v17 = v31;
    v33 = v39;
    swift_storeEnumTagMultiPayload();
    a3(v17);
    (*(v13 + 8))(v17, v33);
  }

  return 0;
}

uint64_t sub_1B6A4EC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_1B6AB9B30();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - v14;
  a3(a1, a2);
  v16 = *(a4 - 8);
  result = (*(v16 + 48))(v15, 1, a4);
  if (result == 1)
  {
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  else
  {
    v21 = a4;
    v22 = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(v16 + 32))(boxed_opaque_existential_1, v15, a4);
    return sub_1B6980E70(&v20, a6);
  }

  return result;
}

uint64_t sub_1B6A4EDB4(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  sub_1B6A56C3C(0, &qword_1EB95AE30, type metadata accessor for Tracker.DelayedEvent, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v60 - v5;
  v63 = sub_1B6AB8E40();
  v6 = *(v63 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Tracker.DelayedEvent(0);
  v9 = *(v74 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v74);
  v76 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v60 - v13;
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(v2 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  v21 = sub_1B6AB9110();
  result = (*(v15 + 8))(v18, v14);
  if (v21)
  {
    swift_beginAccess();
    v77 = v2;
    v23 = *(v2 + 144);
    v24 = v23 + 64;
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v23 + 64);
    v28 = (v25 + 63) >> 6;
    v61 = (v6 + 16);
    v60 = (v9 + 56);
    v73 = v23;

    v29 = 0;
    v31 = v66;
    v30 = v67;
    v68 = v28;
    v69 = v9;
    v65 = v24;
    while (v27)
    {
LABEL_12:
      v35 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v36 = v70;
      sub_1B699A32C(*(v73 + 56) + *(v9 + 72) * (v35 | (v29 << 6)), v70, type metadata accessor for Tracker.DelayedEvent);
      v37 = v36;
      v38 = v76;
      sub_1B6A57770(v37, v76, type metadata accessor for Tracker.DelayedEvent);
      v39 = *(v38 + *(v74 + 28));
      v40 = *(v39 + 16);
      v41 = (v39 + 40);
      v42 = v40 + 1;
      while (--v42)
      {
        result = *(v41 - 1);
        if (result != v31 || *v41 != v30)
        {
          v41 += 2;
          result = sub_1B6ABA0F0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v44 = 0;
        v45 = v39 + 40;
        v71 = v40 - 1;
        v75 = MEMORY[0x1E69E7CC0];
        v72 = v39 + 40;
        do
        {
          v46 = (v45 + 16 * v44);
          v47 = v44;
          while (1)
          {
            if (v47 >= *(v39 + 16))
            {
              __break(1u);
              goto LABEL_35;
            }

            v49 = *(v46 - 1);
            v48 = *v46;
            v44 = v47 + 1;

            sub_1B69BEDE8(v49, v48, 0, 0, 1, &v78);
            if (!v79)
            {
              break;
            }

            result = sub_1B6A23F44(&v78, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
            v46 += 2;
            ++v47;
            if (v40 == v44)
            {
              goto LABEL_30;
            }
          }

          sub_1B6A23F44(&v78, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
          v50 = v75;
          result = swift_isUniquelyReferenced_nonNull_native();
          v80 = v50;
          if ((result & 1) == 0)
          {
            result = sub_1B6994474(0, *(v50 + 16) + 1, 1);
            v50 = v80;
          }

          v52 = *(v50 + 16);
          v51 = *(v50 + 24);
          v53 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            v75 = v52 + 1;
            result = sub_1B6994474((v51 > 1), v52 + 1, 1);
            v53 = v75;
            v50 = v80;
          }

          *(v50 + 16) = v53;
          v75 = v50;
          v54 = v50 + 16 * v52;
          *(v54 + 32) = v49;
          *(v54 + 40) = v48;
          v45 = v72;
        }

        while (v71 != v47);
LABEL_30:
        v55 = *(v75 + 16);

        v31 = v66;
        v30 = v67;
        v24 = v65;
        if (!v55)
        {
          v57 = *(v76 + *(v74 + 24));
          if ((*(v57 + OBJC_IVAR___AADelayedToken_sealed) & 1) == 0)
          {
            *(v57 + OBJC_IVAR___AADelayedToken_sealed) = 1;
            v58 = v57 + OBJC_IVAR___AADelayedToken_block;
            v59 = *(v58 + 8);
            (*v58)(v56);
          }

          v32 = v62;
          (*v61)(v62, v76, v63);
          v33 = v64;
          (*v60)(v64, 1, 1, v74);
          swift_beginAccess();
          sub_1B69E200C(v33, v32);
          swift_endAccess();
          v24 = v65;
        }

        break;
      }

      result = sub_1B6984D38(v76, type metadata accessor for Tracker.DelayedEvent);
      v28 = v68;
      v9 = v69;
    }

    while (1)
    {
      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v34 >= v28)
      {
      }

      v27 = *(v24 + 8 * v34);
      ++v29;
      if (v27)
      {
        v29 = v34;
        goto LABEL_12;
      }
    }

LABEL_35:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A4F44C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = swift_beginAccess();
  v7 = *(v2 + 160);
  if (*(v7 + 16))
  {

    v8 = sub_1B6993940(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 32;
        v13 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1B6992ADC(v12, v23, &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak, sub_1B6A56C3C);
          if (swift_weakLoadStrong())
          {
            sub_1B6A4EDB4(a1, a2);

            sub_1B6A5784C(v23, &v24, &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1B69E3FFC(0, v13[2] + 1, 1, v13);
            }

            v15 = v13[2];
            v14 = v13[3];
            if (v15 >= v14 >> 1)
            {
              v13 = sub_1B69E3FFC((v14 > 1), v15 + 1, 1, v13);
            }

            v13[2] = v15 + 1;
            sub_1B6A5784C(&v24, &v13[v15 + 4], &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak);
          }

          else
          {
            sub_1B6A5718C(v23, &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak);
          }

          v12 += 8;
          --v11;
        }

        while (v11);
      }

      else
      {

        v13 = MEMORY[0x1E69E7CC0];
      }

      swift_beginAccess();

      v16 = *(v3 + 160);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v3 + 160);
      *(v3 + 160) = 0x8000000000000000;
      sub_1B69E7820(v13, a1, a2, isUniquelyReferenced_nonNull_native);

      v18 = v24;
      *(v3 + 160) = v24;
      result = swift_endAccess();
      if (*(v18 + 16))
      {

        v19 = sub_1B6993940(a1, a2);
        if (v20)
        {
          v21 = *(*(v18 + 56) + 8 * v19);

          v22 = *(v21 + 16);

          if (!v22)
          {
            swift_beginAccess();

            sub_1B69E225C(0, a1, a2);
            return swift_endAccess();
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1B6A4F7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v6[11] + OBJC_IVAR___AAAccessQueue_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  LOBYTE(v17) = sub_1B6AB9110();
  result = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v30 = a3;
  v20 = sub_1B69B5FF4(a1, a2, a4, a5);
  v22 = v21;
  swift_beginAccess();
  v23 = v6[16];
  if (*(v23 + 16))
  {
    v24 = v6[16];

    v25 = sub_1B6993940(v20, v22);
    if (v26)
    {
      v29 = a2;
      sub_1B6982544(*(v23 + 56) + 40 * v25, &v31);

      sub_1B697ED90(0, &qword_1EDBCC3B0);
      v27 = type metadata accessor for DataEventStack();
      if (swift_dynamicCast())
      {

        v28 = sub_1B6A25EF0();

        if ((v28 & 1) == 0)
        {
          sub_1B6998ABC(v27);
          v33 = v27;
          v34 = &off_1F2E77398;
          v31 = v35;
          v32 = v36;
          swift_beginAccess();
          sub_1B699A480(&v31, v20, v22);
          result = swift_endAccess();
LABEL_12:
          a2 = v29;
          if ((v30 & 1) == 0)
          {
            return result;
          }

          goto LABEL_13;
        }
      }

      goto LABEL_12;
    }
  }

  if ((v30 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  if (v6[19])
  {
    return sub_1B6A4F7C4(a1, a2, 1, a4, a5);
  }

  return result;
}

uint64_t Tracker.copy<A>(type:from:traits:popIfMissing:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  *(v14 + 32) = a1;
  *(v14 + 40) = a4;
  *(v14 + 48) = a3;
  v15 = *(v6 + 96);
  v16 = *(v7 + 88);
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = a2;
  v17[4] = sub_1B6A566E0;
  v17[5] = v14;

  sub_1B69877A4(v16, sub_1B6A566F4, v17);
}

uint64_t sub_1B6A4FBF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a5;
  v21 = a4;
  v9 = sub_1B6AB9B30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20[-v13];
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v20[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AccessTracker.peek<A>(_:)(a6, v14);
  if ((*(v15 + 48))(v14, 1, a6) == 1)
  {
    result = (*(v10 + 8))(v14, v9);
    if (v21)
    {
      return AccessTracker.pop<A>(type:)(result, a6, a7);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v14, a6);
    AccessTracker.push<A>(data:traits:file:line:)(v18, v22, 0xD00000000000004DLL, 0x80000001B6ACB520, 1265, a6, a7);
    return (*(v15 + 8))(v18, a6);
  }

  return result;
}

uint64_t AccessTracker.pop<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v9 = v11;
    (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
    v12 = v11;
    LOBYTE(v11) = sub_1B6AB9110();
    result = (*(v6 + 8))(v9, v5);
    if (v11)
    {
      sub_1B69B5C90(0, 0, a2, a3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t AccessTracker.peek<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1B6AB90F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v8 = v10;
    (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
    v11 = v10;
    LOBYTE(v10) = sub_1B6AB9110();
    result = (*(v5 + 8))(v8, v4);
    if (v10)
    {
      v13 = sub_1B6ABA330();
      sub_1B69BEDE8(v13, v14, 0, 0, 1, &v18);

      sub_1B6A23D18(0, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType, MEMORY[0x1E69E6720]);
      v15 = swift_dynamicCast();
      return (*(*(a1 - 8) + 56))(a2, v15 ^ 1u, 1, a1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v16 = *(*(a1 - 8) + 56);

    return v16(a2, 1, 1, a1);
  }

  return result;
}

uint64_t sub_1B6A501BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a5;
  v46 = a6;
  v43 = a3;
  v44 = a4;
  v41 = a1;
  v42 = a2;
  v8 = type metadata accessor for DiagnosticsConsentProvider(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 88);
  v13 = *(v6 + 96);
  v40 = *(v6 + 201);
  v14 = *(v6 + 104);
  v15 = *(v6 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  os_unfair_lock_lock_with_options();
  v18 = *(v7 + 184);
  swift_beginAccess();
  v19 = *(v7 + 176);
  v48[0] = v18;

  sub_1B69979DC(v19);
  v39 = v48[0];
  os_unfair_lock_unlock(*(v15 + 16));
  v47 = *(v7 + 208);
  sub_1B699A32C(v7 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v11, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v7 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager, v48);
  v20 = *(v7 + 32);
  v21 = type metadata accessor for Tracker(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  *(v24 + 80) = 0;
  *(v24 + 56) = 0;
  *(v24 + 64) = 0;
  swift_unknownObjectWeakInit();
  v25 = MEMORY[0x1E69E7CC8];
  *(v24 + 112) = MEMORY[0x1E69E7CC8];
  *(v24 + 120) = v25;
  *(v24 + 128) = v25;
  *(v24 + 136) = v25;
  *(v24 + 144) = v25;
  v26 = MEMORY[0x1E69E7CC0];
  *(v24 + 160) = v25;
  *(v24 + 168) = v26;
  *(v24 + 176) = v26;
  *(v24 + 192) = v26;
  *(v24 + 200) = 0;
  v27 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *(v28 + 16) = v29;
  *v29 = 0;
  *(v28 + 24) = 0x10000;
  *(v24 + v27) = v28;
  v30 = v42;
  *(v24 + 16) = v41;
  *(v24 + 24) = v30;
  *(v24 + 88) = v12;
  *(v24 + 96) = v13;
  *(v24 + 201) = v40;
  *(v24 + 104) = v14;
  *(v24 + 152) = v7;
  swift_unknownObjectWeakLoadStrong();
  *(v24 + 80) = *(v7 + 80);
  swift_unknownObjectWeakAssign();

  v31 = v12;
  v32 = v13;

  swift_unknownObjectRelease();
  *(v24 + 184) = v39;
  v33 = v44;
  *(v24 + 40) = v43;
  *(v24 + 48) = v33;
  v34 = *(v24 + 64);
  v35 = v46;
  *(v24 + 56) = v45;
  *(v24 + 64) = v35;

  *(v24 + 208) = v47;
  sub_1B699A32C(v11, v24 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v48, v24 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v24 + 32) = v20;
  swift_unknownObjectRetain();
  v36 = v20;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v37 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v37);

    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_1B6984D38(v11, type metadata accessor for DiagnosticsConsentProvider);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_1B6984D38(v11, type metadata accessor for DiagnosticsConsentProvider);
  }

  return v24;
}

Swift::Void __swiftcall Tracker.clearDynamicDataIdentifier()()
{
  v1 = v0;
  v2 = *(v0 + 96);
  v3 = *(v1 + 88);

  sub_1B69877A4(v3, sub_1B6A56700, v1);
}

uint64_t sub_1B6A50610(uint64_t a1, char **a2)
{
  sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6810];
  *(v4 + 16) = xmmword_1B6ABD890;
  v6 = MEMORY[0x1E69E6870];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  v7 = sub_1B6AB9300();
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(a1 + 40);
    sub_1B6AB9CA0();
    v18 = *(a1 + 16);
    sub_1B6AB9DF0();
    MEMORY[0x1B8C97BE0](0x78303D7264646120, 0xE800000000000000);
    MEMORY[0x1B8C97BE0](v7, v9);

    MEMORY[0x1B8C97BE0](0x69746E656469202CLL, 0xED00003D72656966);
    MEMORY[0x1B8C97BE0](v11, v10);
  }

  else
  {
    v19 = *(a1 + 16);
    sub_1B6AB9DF0();
    MEMORY[0x1B8C97BE0](0x78303D7264646120, 0xE800000000000000);
    MEMORY[0x1B8C97BE0](v7, v9);
  }

  v12 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1B69B5A00(0, *(v12 + 2) + 1, 1, v12);
    *a2 = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1B69B5A00((v14 > 1), v15 + 1, 1, v12);
    *a2 = v12;
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[16 * v15];
  *(v16 + 4) = 0;
  *(v16 + 5) = 0xE000000000000000;
  return 1;
}

id Tracker.bridgedTracker.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for BridgedEventMirrorStore();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = type metadata accessor for BridgedTracker();
  v7 = objc_allocWithZone(v6);
  v8 = 0x6E6564646968;
  if (v1)
  {
    v8 = v2;
  }

  v9 = 0xE600000000000000;
  if (v1)
  {
    v9 = v1;
  }

  v10 = &v7[OBJC_IVAR___AATracker_name];
  *v10 = v8;
  v10[1] = v9;
  *&v7[OBJC_IVAR___AATracker_tracker] = v0;
  *&v7[OBJC_IVAR___AATracker_eventMirrorStore] = v3;
  v11 = &v7[OBJC_IVAR___AATracker_identifier];
  *v11 = v5;
  *(v11 + 1) = v4;
  v13.receiver = v7;
  v13.super_class = v6;

  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t Tracker.snapshot(policy:)(char *a1)
{
  v4 = *a1;
  v2 = *(*(v1 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  sub_1B697ED90(0, qword_1EB95BA28);
  return sub_1B6AB99A0();
}

uint64_t sub_1B6A50A08@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(*(v2 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v9 = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v12 = v11;
  LOBYTE(v11) = sub_1B6AB9110();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    if (v10)
    {
      v29 = MEMORY[0x1E69E7CC0];

      v14 = v2;
      while (1)
      {

        v16 = sub_1B6A51124(v15, &v29);

        v17 = *(v14 + 152);

        if (!v17)
        {
          break;
        }

        v14 = v17;
        if ((v16 & 1) == 0)
        {

          break;
        }
      }

      v18 = v29;
      v19 = *(v2 + 104);
      sub_1B6A56C3C(0, &qword_1EB95BAC0, sub_1B69E8884, type metadata accessor for Snapshot);
      *(a2 + 24) = v20;
      *(a2 + 32) = &off_1F2E7B9F0;
      *a2 = 1;
      *(a2 + 8) = v18;
      *(a2 + 16) = v19;
    }

    else
    {
      v29 = MEMORY[0x1E69E7CD0];
      v28 = MEMORY[0x1E69E7CC0];

      v21 = v2;
      while (1)
      {

        v23 = sub_1B6A50C9C(v22, &v29, &v28);

        v24 = *(v21 + 152);

        if (!v24)
        {
          break;
        }

        v21 = v24;
        if ((v23 & 1) == 0)
        {

          break;
        }
      }

      v25 = v28;
      v26 = *(v2 + 104);
      sub_1B6A573F0();
      *(a2 + 24) = v27;
      *(a2 + 32) = &off_1F2E7B9F0;
      *a2 = 0;
      *(a2 + 8) = v25;
      *(a2 + 16) = v26;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A50C9C(uint64_t a1, uint64_t *a2, void **a3)
{
  swift_beginAccess();
  v45 = a1;
  v5 = *(a1 + 128);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a1 + 128) + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = ((v9 + 63) >> 6);
  v48 = *(a1 + 128);

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (!v11)
    {
      if (v12 <= (v13 + 1))
      {
        v16 = (v13 + 1);
      }

      else
      {
        v16 = v12;
      }

      v17 = v16 - 1;
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v12)
        {
          v11 = 0;
          *&v59 = 0;
          v57 = 0u;
          v58 = 0u;
          v13 = v17;
          v56 = 0u;
          goto LABEL_18;
        }

        v11 = *(v7 + 8 * v15);
        ++v13;
        if (v11)
        {
          v13 = v15;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_45;
    }

    v15 = v13;
LABEL_17:
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = v18 | (v15 << 6);
    v20 = (*(v48 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    sub_1B6982544(*(v48 + 56) + 40 * v19, &v50);
    *&v56 = v22;
    *(&v56 + 1) = v21;
    sub_1B6980E70(&v50, &v57);

LABEL_18:
    v65 = v56;
    v66[0] = v57;
    v66[1] = v58;
    v67 = v59;
    v23 = *(&v56 + 1);
    if (!*(&v56 + 1))
    {
      break;
    }

    v24 = v65;
    sub_1B6980E70(v66, v62);
    a1 = v63;
    v25 = v64;
    v3 = __swift_project_boxed_opaque_existential_1(v62, v63);
    (*(v25 + 24))(&v50, a1, v25);
    if (!*(&v50 + 1))
    {

      sub_1B69840C4(&v50, &qword_1EDBCB490, &type metadata for AnyDataEventEntry);
      goto LABEL_6;
    }

    v58 = v52;
    v59 = v53;
    v60 = v54;
    v61 = v55;
    v56 = v50;
    v57 = v51;
    a1 = *a2;
    if (!*(*a2 + 16))
    {
      goto LABEL_30;
    }

    v47 = v14;
    v26 = *(a1 + 40);
    sub_1B6ABA1F0();

    sub_1B6AB9380();
    v27 = sub_1B6ABA230();
    v3 = (a1 + 56);
    v28 = -1 << *(a1 + 32);
    v29 = v27 & ~v28;
    if (((*(a1 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
LABEL_29:

      v14 = v47;
LABEL_30:
      sub_1B6A0A6D0(&v56, &v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1B69E4488(0, *(v14 + 2) + 1, 1, v14);
      }

      v34 = *(v14 + 2);
      v33 = *(v14 + 3);
      a1 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v14 = sub_1B69E4488((v33 > 1), v34 + 1, 1, v14);
      }

      *(v14 + 2) = a1;
      v35 = &v14[96 * v34];
      v36 = v51;
      *(v35 + 2) = v50;
      *(v35 + 3) = v36;
      v37 = v52;
      v38 = v53;
      v39 = v55;
      *(v35 + 6) = v54;
      *(v35 + 7) = v39;
      *(v35 + 4) = v37;
      *(v35 + 5) = v38;
      v3 = a2;
      sub_1B6A93984(&v50, v24, v23);

      sub_1B69A6664(&v56);
      goto LABEL_6;
    }

    v30 = ~v28;
    while (1)
    {
      v31 = (*(a1 + 48) + 16 * v29);
      v32 = *v31 == v24 && v31[1] == v23;
      if (v32 || (sub_1B6ABA0F0() & 1) != 0)
      {
        break;
      }

      v29 = (v29 + 1) & v30;
      if (((*(v3 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_1B69A6664(&v56);
    v14 = v47;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  if (v45[3])
  {
    v7 = v45[2];
    v13 = v45[3];
  }

  else
  {
    v13 = 0xE600000000000000;
    v7 = 0x6E6564646968;
  }

  v12 = a3;
  swift_beginAccess();
  a1 = v45[14];
  v3 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v3;
  v11 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_45:
    v3 = sub_1B69E45C0(0, v3[2] + 1, 1, v3);
    *v12 = v3;
  }

  v42 = v3[2];
  v41 = v3[3];
  if (v42 >= v41 >> 1)
  {
    v3 = sub_1B69E45C0((v41 > 1), v42 + 1, 1, v3);
    *v12 = v3;
  }

  v3[2] = v42 + 1;
  v43 = &v3[4 * v42];
  v43[4] = v7;
  v43[5] = v13;
  v43[6] = v11;
  v43[7] = a1;
  return 1;
}

uint64_t sub_1B6A51124(void *a1, void *a2)
{
  swift_beginAccess();
  v48 = a1;
  v5 = a1[16];
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = ((v7 + 63) >> 6);
  v50 = v5;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  for (i = v6; ; v6 = i)
  {
    if (!v9)
    {
      if (v10 <= v11 + 1)
      {
        v14 = (v11 + 1);
      }

      else
      {
        v14 = v10;
      }

      v15 = v14 - 1;
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          v9 = 0;
          v56 = 0;
          v54 = 0u;
          v55 = 0u;
          v11 = v15;
          v53 = 0u;
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * v13);
        ++v11;
        if (v9)
        {
          v11 = v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v10 = sub_1B69E46F8(0, v10[2] + 1, 1, v10);
      *a2 = v10;
      goto LABEL_34;
    }

    v13 = v11;
LABEL_16:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(v50 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_1B6982544(*(v50 + 56) + 40 * v17, v52);
    *&v53 = v20;
    *(&v53 + 1) = v19;
    sub_1B6980E70(v52, &v54);

LABEL_17:
    v57 = v53;
    v58[0] = v54;
    v58[1] = v55;
    v59 = v56;
    v3 = *(&v53 + 1);
    if (!*(&v53 + 1))
    {
      break;
    }

    v21 = v57;
    sub_1B6980E70(v58, &v53);
    v22 = *(&v54 + 1);
    v23 = v55;
    v2 = __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
    if ((*(v23 + 8))(v22, v23))
    {
      goto LABEL_4;
    }

    v24 = *(&v54 + 1);
    v25 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
    v26 = (*(v25 + 16))(v24, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v12;
    v2 = v12;
    v12 = v21;
    v28 = sub_1B6993940(v21, v3);
    v30 = *(v2 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_38;
    }

    v34 = v29;
    if (*(v2 + 24) < v33)
    {
      sub_1B69DCE38(v33, isUniquelyReferenced_nonNull_native);
      v2 = *&v52[0];
      v28 = sub_1B6993940(v21, v3);
      if ((v34 & 1) != (v35 & 1))
      {
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }

LABEL_24:
      if (v34)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v2 = v52;
    v38 = v28;
    sub_1B69DFE10();
    v28 = v38;
    if (v34)
    {
LABEL_25:
      v2 = v28;

      v12 = *&v52[0];
      v36 = *(*&v52[0] + 56);
      v37 = *(v36 + 8 * v2);
      *(v36 + 8 * v2) = v26;
LABEL_4:

      goto LABEL_5;
    }

LABEL_28:
    v39 = *&v52[0];
    *(*&v52[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v40 = (*(v39 + 6) + 16 * v28);
    *v40 = v12;
    v40[1] = v3;
    *(*(v39 + 7) + 8 * v28) = v26;
    v41 = *(v39 + 2);
    v32 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v32)
    {
      goto LABEL_39;
    }

    v12 = v39;
    *(v39 + 2) = v42;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  if (v48[3])
  {
    v9 = v48[2];
    v3 = v48[3];
  }

  else
  {
    v3 = 0xE600000000000000;
    v9 = 0x6E6564646968;
  }

  swift_beginAccess();
  v2 = v48[14];
  v10 = *a2;

  v43 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((v43 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v45 = v10[2];
  v44 = v10[3];
  if (v45 >= v44 >> 1)
  {
    v10 = sub_1B69E46F8((v44 > 1), v45 + 1, 1, v10);
    *a2 = v10;
  }

  v10[2] = v45 + 1;
  v46 = &v10[4 * v45];
  v46[4] = v9;
  v46[5] = v3;
  v46[6] = v12;
  v46[7] = v2;
  return 1;
}

uint64_t sub_1B6A5153C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v80 = a2;
  v81 = a4;
  v8 = sub_1B6AB90F0();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v76 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DiagnosticsConsentProvider(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6AB8E40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC();
  v20 = v19;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v72 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v71 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v87 = &v71 - v31;
  v86 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
  v74 = *(a1 + 88);
  v32 = qword_1EDBC9F60;

  v82 = a3;

  if (v32 != -1)
  {
    swift_once();
  }

  v84 = a5;
  v85 = v30;
  v75 = v14;
  v73 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v79 = v88;
  if (v88)
  {
    v33 = *(v16 + 16);
    v34 = v87;
    v33(v87, v88 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v15);
    v35 = *(v16 + 56);
    v35(v34, 0, 1, v15);
  }

  else
  {
    v35 = *(v16 + 56);
    v35(v87, 1, 1, v15);
    v33 = *(v16 + 16);
  }

  v83 = a1;
  v36 = v85;
  v33(v85, a1 + v86, v15);
  v35(v36, 0, 1, v15);
  v37 = *(v20 + 48);
  v38 = MEMORY[0x1E69695A8];
  v39 = MEMORY[0x1E69E6720];
  sub_1B6992ADC(v87, v23, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
  sub_1B6992ADC(v36, &v23[v37], &qword_1EDBCAF50, v38, v39, sub_1B6A56C3C);
  v40 = *(v16 + 48);
  if (v40(v23, 1, v15) == 1)
  {
    v41 = MEMORY[0x1E69695A8];
    v42 = MEMORY[0x1E69E6720];
    sub_1B6A5718C(v36, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    sub_1B6A5718C(v87, &qword_1EDBCAF50, v41, v42);
    v43 = v40(&v23[v37], 1, v15);
    v44 = v83;
    if (v43 == 1)
    {
      sub_1B6A5718C(v23, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
LABEL_15:
      type metadata accessor for AccessTracker();
      v69 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v70 = v82;
      v69[3] = v80;
      v69[4] = v70;
      v69[5] = sub_1B6A55214;
      v69[6] = 0;

      v81(v69);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v45 = v72;
  sub_1B6992ADC(v23, v72, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
  if (v40(&v23[v37], 1, v15) == 1)
  {
    v46 = MEMORY[0x1E69695A8];
    v47 = MEMORY[0x1E69E6720];
    sub_1B6A5718C(v85, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    sub_1B6A5718C(v87, &qword_1EDBCAF50, v46, v47);
    (*(v16 + 8))(v45, v15);
    v44 = v83;
LABEL_11:
    sub_1B6984D38(v23, sub_1B6992BDC);
    goto LABEL_12;
  }

  v63 = v71;
  (*(v16 + 32))(v71, &v23[v37], v15);
  sub_1B6A576C8(&qword_1EDBCA470, MEMORY[0x1E69695A8]);
  v64 = v45;
  v65 = sub_1B6AB92A0();
  v66 = *(v16 + 8);
  v66(v63, v15);
  v67 = MEMORY[0x1E69695A8];
  v68 = MEMORY[0x1E69E6720];
  sub_1B6A5718C(v85, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  sub_1B6A5718C(v87, &qword_1EDBCAF50, v67, v68);
  v66(v64, v15);
  sub_1B6A5718C(v23, &qword_1EDBCAF50, v67, v68);
  v44 = v83;
  if (v65)
  {
    goto LABEL_15;
  }

LABEL_12:
  v48 = v75;
  sub_1B699A32C(v44 + v86, v75, type metadata accessor for DiagnosticsConsentProvider);
  v49 = type metadata accessor for LazyDiagnosticStatus(0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  *(v52 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v53 = v74;
  v54 = *&v74[OBJC_IVAR___AAAccessQueue_queue];
  v56 = v76;
  v55 = v77;
  *v76 = v54;
  v57 = v78;
  (*(v55 + 104))(v56, *MEMORY[0x1E69E8020], v78);
  v58 = v54;
  LOBYTE(v54) = sub_1B6AB9110();
  result = (*(v55 + 8))(v56, v57);
  if (v54)
  {
    sub_1B6A57770(v48, v52 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, type metadata accessor for DiagnosticsConsentProvider);
    *(v52 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v53;
    v88 = v52;
    sub_1B6A56C3C(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
    v60 = v53;

    swift_task_localValuePush();
    type metadata accessor for AccessTracker();
    v61 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v62 = v82;
    v61[3] = v80;
    v61[4] = v62;
    v61[5] = sub_1B6A55214;
    v61[6] = 0;

    v81(v61);

    swift_task_localValuePop();
LABEL_16:
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A51EF8(uint64_t a1, uint64_t a2, void (*a3)(void *, void *), uint64_t a4)
{
  v8 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
  v9 = *(a1 + 88);

  return sub_1B6AAE11C(v9, a1 + v8, a1, a2, a3, a4);
}

uint64_t sub_1B6A51FA4(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v109 = a2;
  v110 = a3;
  v4 = type metadata accessor for DiagnosticsConsentProvider(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  v105 = v8;
  v106 = v9;
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v103 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v107 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v104 = v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v92 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v108 = v92 - v23;
  v24 = type metadata accessor for SessionManager.SessionState(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1B6AB90F0();
  v29 = *(v28 - 8);
  v30 = v29[8];
  MEMORY[0x1EEE9AC00](v28);
  v32 = (v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v34 = Strong;
  v101 = v7;
  v35 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v32 = v35;
  v36 = v29[13];
  v99 = *MEMORY[0x1E69E8020];
  v100 = v29 + 13;
  v98 = v36;
  v36(v32);
  v37 = v35;
  LOBYTE(v35) = sub_1B6AB9110();
  v39 = v29[1];
  v38 = v29 + 1;
  v102 = v28;
  v97 = v39;
  v39(v32, v28);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_11:
    v92[2] = qword_1EDBC9F50;
    sub_1B6ABA320();
    v52 = v106;
    v94 = v111;
    if (v111)
    {
      v53 = v106[2];
      v92[1] = v38;
      v54 = v22;
      v55 = v13;
      v56 = v108;
      v57 = v105;
      v53();
      v58 = v52[7];
      v59 = v56;
      v13 = v55;
      v22 = v54;
      v58(v59, 0, 1, v57);
    }

    else
    {
      v58 = v106[7];
      v57 = v105;
      v58(v108, 1, 1, v105);
      v53 = v52[2];
    }

    (v53)(v22, a1 + v96, v57);
    v58(v22, 0, 1, v57);
    v60 = *(v13 + 48);
    v61 = MEMORY[0x1E69695A8];
    v62 = MEMORY[0x1E69E6720];
    v63 = v107;
    sub_1B6992ADC(v108, v107, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
    v105 = v60;
    sub_1B6992ADC(v22, v63 + v60, &qword_1EDBCAF50, v61, v62, sub_1B6A56C3C);
    v64 = v106;
    v65 = v106[6];
    if (v65(v63, 1, v57) == 1)
    {
      v66 = MEMORY[0x1E69695A8];
      v67 = MEMORY[0x1E69E6720];
      sub_1B6A5718C(v22, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      v68 = v66;
      v69 = v107;
      sub_1B6A5718C(v108, &qword_1EDBCAF50, v68, v67);
      if (v65(v69 + v105, 1, v57) == 1)
      {
        sub_1B6A5718C(v69, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
LABEL_23:
        type metadata accessor for AccessTracker();
        v91 = swift_allocObject();
        swift_weakInit();
        swift_weakAssign();
        v91[3] = 0;
        v91[4] = 0;
        v91[5] = sub_1B6A55214;
        v91[6] = 0;
        v109(v91, v95);
        goto LABEL_24;
      }
    }

    else
    {
      v70 = v104;
      sub_1B6992ADC(v63, v104, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
      if (v65(v63 + v105, 1, v57) != 1)
      {
        v86 = v103;
        (v64[4])(v103, v63 + v105, v57);
        sub_1B6A576C8(&qword_1EDBCA470, MEMORY[0x1E69695A8]);
        LODWORD(v105) = sub_1B6AB92A0();
        v87 = v64[1];
        v87(v86, v57);
        v88 = v70;
        v89 = MEMORY[0x1E69695A8];
        v90 = MEMORY[0x1E69E6720];
        sub_1B6A5718C(v22, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
        sub_1B6A5718C(v108, &qword_1EDBCAF50, v89, v90);
        v87(v88, v57);
        sub_1B6A5718C(v107, &qword_1EDBCAF50, v89, v90);
        v75 = v102;
        if (v105)
        {
          goto LABEL_23;
        }

LABEL_20:
        v76 = v101;
        sub_1B699A32C(a1 + v96, v101, type metadata accessor for DiagnosticsConsentProvider);
        v77 = type metadata accessor for LazyDiagnosticStatus(0);
        v78 = *(v77 + 48);
        v79 = *(v77 + 52);
        v80 = swift_allocObject();
        *(v80 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
        v81 = v93;
        v82 = *&v93[OBJC_IVAR___AAAccessQueue_queue];
        *v32 = v82;
        v98(v32, v99, v75);
        v83 = v82;
        LOBYTE(v82) = sub_1B6AB9110();
        result = v97(v32, v75);
        if ((v82 & 1) == 0)
        {
          __break(1u);
          goto LABEL_28;
        }

        sub_1B6A57770(v76, v80 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, type metadata accessor for DiagnosticsConsentProvider);
        *(v80 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v81;
        v111 = v80;
        sub_1B6A56C3C(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
        v84 = v81;

        swift_task_localValuePush();
        type metadata accessor for AccessTracker();
        v85 = swift_allocObject();
        swift_weakInit();
        swift_weakAssign();
        v85[3] = 0;
        v85[4] = 0;
        v85[5] = sub_1B6A55214;
        v85[6] = 0;
        v109(v85, v95);

        swift_task_localValuePop();
LABEL_24:
      }

      v71 = MEMORY[0x1E69695A8];
      v72 = v70;
      v73 = MEMORY[0x1E69E6720];
      sub_1B6A5718C(v22, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      v74 = v71;
      v69 = v107;
      sub_1B6A5718C(v108, &qword_1EDBCAF50, v74, v73);
      (v64[1])(v72, v57);
    }

    sub_1B6984D38(v69, sub_1B6992BDC);
    v75 = v102;
    goto LABEL_20;
  }

  v40 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  sub_1B699A32C(v34 + v40, v27, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v50 = *v27;
    v96 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
    v93 = *(a1 + 88);
    v51 = qword_1EDBC9F60;

    v95 = v50;

    if (v51 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B6984D38(v27, type metadata accessor for SessionManager.SessionState);
  }

LABEL_6:
  v42 = swift_allocObject();
  type metadata accessor for Tracker.Token();
  *(v42 + 16) = swift_allocObject();
  type metadata accessor for AccessTracker();
  v43 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v43[3] = 0;
  v43[4] = 0;
  v43[5] = sub_1B6A55214;
  v43[6] = 0;
  v44 = swift_allocObject();
  v45 = v109;
  v46 = v110;
  v44[2] = a1;
  v44[3] = v45;
  v44[4] = v46;
  v44[5] = v42;
  type metadata accessor for SessionObserver();
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v47[3] = v43;
  v47[4] = sub_1B6A57764;
  v47[5] = v44;
  result = swift_beginAccess();
  if (!*(v42 + 16))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  swift_unknownObjectWeakAssign();
  v49 = swift_unknownObjectWeakLoadStrong();

  if (!v49)
  {
  }

  sub_1B6A04C10(v47);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B6A52C50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v100 = a6;
  v104 = a5;
  v105 = a3;
  v102 = a4;
  v103 = a1;
  v106 = a2;
  v6 = sub_1B6AB90F0();
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DiagnosticsConsentProvider(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB8E40();
  v101 = *(v13 - 8);
  v14 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC();
  v18 = v17;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v87 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v87 - v30;
  v32 = type metadata accessor for SessionObserverChange();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B699A32C(v106, v35, type metadata accessor for SessionObserverChange);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1B6984D38(v35, type metadata accessor for SessionObserverChange);
  }

  v93 = v18;
  v94 = v31;
  v95 = v29;
  v37 = v16;
  v88 = v26;
  v106 = v13;
  v38 = v101;
  v96 = v21;
  v39 = *v35;
  v40 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
  v89 = *(v105 + 88);
  v90 = v12;
  v41 = qword_1EDBC9F60;

  v92 = v39;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v43 = v106;
  v87 = v37;
  v91 = v107;
  if (v107)
  {
    v44 = *(v38 + 16);
    v45 = v94;
    v44(v94, v107 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v106);
    v46 = *(v38 + 56);
    v46(v45, 0, 1, v43);
  }

  else
  {
    v46 = *(v38 + 56);
    v45 = v94;
    v46(v94, 1, 1, v106);
    v44 = *(v38 + 16);
  }

  v101 = v40;
  v47 = v95;
  v44(v95, v105 + v40, v43);
  v46(v47, 0, 1, v43);
  v48 = *(v93 + 48);
  v49 = MEMORY[0x1E69695A8];
  v50 = MEMORY[0x1E69E6720];
  v51 = v96;
  sub_1B6992ADC(v45, v96, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
  v52 = v51 + v48;
  v53 = v51;
  v54 = v106;
  sub_1B6992ADC(v47, v52, &qword_1EDBCAF50, v49, v50, sub_1B6A56C3C);
  v55 = *(v38 + 48);
  if (v55(v53, 1, v54) == 1)
  {
    v56 = v54;
    v57 = MEMORY[0x1E69695A8];
    v58 = MEMORY[0x1E69E6720];
    sub_1B6A5718C(v47, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    v59 = v57;
    v60 = v96;
    sub_1B6A5718C(v45, &qword_1EDBCAF50, v59, v58);
    if (v55(v60 + v48, 1, v56) == 1)
    {
      sub_1B6A5718C(v60, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      v102(v103, v92);
LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v61 = v88;
  sub_1B6992ADC(v53, v88, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
  if (v55(v53 + v48, 1, v54) == 1)
  {
    v62 = MEMORY[0x1E69695A8];
    v63 = v61;
    v64 = MEMORY[0x1E69E6720];
    sub_1B6A5718C(v95, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    v65 = v54;
    v60 = v96;
    sub_1B6A5718C(v45, &qword_1EDBCAF50, v62, v64);
    (*(v38 + 8))(v63, v65);
LABEL_13:
    v94 = v42;
    sub_1B6984D38(v60, sub_1B6992BDC);
    v66 = v102;
    v68 = v98;
    v67 = v99;
    v69 = v97;
    goto LABEL_14;
  }

  v94 = v42;
  v79 = v87;
  (*(v38 + 32))(v87, v53 + v48, v54);
  sub_1B6A576C8(&qword_1EDBCA470, MEMORY[0x1E69695A8]);
  v80 = sub_1B6AB92A0();
  v81 = *(v38 + 8);
  v81(v79, v54);
  v82 = v61;
  v83 = MEMORY[0x1E69695A8];
  v84 = MEMORY[0x1E69E6720];
  sub_1B6A5718C(v95, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  sub_1B6A5718C(v45, &qword_1EDBCAF50, v83, v84);
  v81(v82, v54);
  sub_1B6A5718C(v53, &qword_1EDBCAF50, v83, v84);
  v66 = v102;
  v68 = v98;
  v67 = v99;
  v69 = v97;
  if (v80)
  {
    v102(v103, v92);
    goto LABEL_18;
  }

LABEL_14:
  v70 = v90;
  sub_1B699A32C(v105 + v101, v90, type metadata accessor for DiagnosticsConsentProvider);
  v71 = type metadata accessor for LazyDiagnosticStatus(0);
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  v74 = swift_allocObject();
  *(v74 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v75 = v89;
  v76 = *&v89[OBJC_IVAR___AAAccessQueue_queue];
  *v69 = v76;
  (*(v68 + 104))(v69, *MEMORY[0x1E69E8020], v67);
  v77 = v76;
  LOBYTE(v76) = sub_1B6AB9110();
  result = (*(v68 + 8))(v69, v67);
  if (v76)
  {
    sub_1B6A57770(v70, v74 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, type metadata accessor for DiagnosticsConsentProvider);
    *(v74 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v75;
    v107 = v74;
    sub_1B6A56C3C(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
    v78 = v75;

    swift_task_localValuePush();
    v66(v103, v92);
    swift_task_localValuePop();

LABEL_19:

    v85 = v100;
    swift_beginAccess();
    v86 = *(v85 + 16);
    *(v85 + 16) = 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A536A4(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = type metadata accessor for SessionManager.SessionState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1B6AB90F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *(*(result + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v14 = v17;
    (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
    v18 = v17;
    LOBYTE(v17) = sub_1B6AB9110();
    result = (*(v11 + 8))(v14, v10);
    if (v17)
    {
      v19 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
      swift_beginAccess();
      sub_1B699A32C(v16 + v19, v9, type metadata accessor for SessionManager.SessionState);
      swift_unknownObjectRelease();
      result = swift_getEnumCaseMultiPayload();
      if (result)
      {
        if (result == 1)
        {
          return sub_1B6984D38(v9, type metadata accessor for SessionManager.SessionState);
        }
      }

      else
      {
        v20 = *v9;

        v21 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
        v22 = *(a1 + 88);

        return sub_1B69AA6C4(v22, a1 + v21, a1, a2, a3);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B6A53910(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = type metadata accessor for SessionManager.SessionState(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(Strong);
  }

  v13 = Strong;
  v14 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v11 = v14;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v15 = v14;
  LOBYTE(v14) = sub_1B6AB9110();
  result = (*(v8 + 8))(v11, v7);
  if (v14)
  {
    v17 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B699A32C(v13 + v17, v6, type metadata accessor for SessionManager.SessionState);
    swift_unknownObjectRelease();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6984D38(v6, type metadata accessor for SessionManager.SessionState);
      }

      Strong = 0;
    }

    else
    {
      v19 = *v6;

      Strong = 1;
    }

    return a2(Strong);
  }

  __break(1u);
  return result;
}

void sub_1B6A53B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v59 = a5;
  v57 = a3;
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 1);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = (v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(v5 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v18 = v19;
  v20 = v15[13];
  v51 = *MEMORY[0x1E69E8020];
  v52 = v15 + 13;
  v50 = v20;
  v20(v18);
  v21 = v19;
  LOBYTE(v19) = sub_1B6AB9110();
  v23 = v15[1];
  v22 = v15 + 1;
  v49 = v23;
  v23(v18, v14);
  if (v19)
  {
    v54 = a4;
    v55 = v11;
    v56 = v10;
    v47[1] = v22;
    v48 = v14;
    swift_beginAccess();
    v62 = *(v6 + 168);

    v53 = a1;
    v25 = sub_1B6A57298(v24, a1, a2);
    v27 = v26;

    MEMORY[0x1EEE9AC00](v28);
    v14 = 0;
    v47[-2] = &v62;
    if ((v27 & 1) == 0)
    {
      v63 = v25;
      sub_1B6A573B8(&v63, v60);
      v14 = v60[0];
    }

    if (!v14)
    {
      v33 = v55;
      v32 = v56;
      v34 = *(v55 + 16);
      v35 = v58;
      v34(v58, v57, v56);
      v36 = type metadata accessor for Group();
      v37 = objc_allocWithZone(v36);
      *&v37[OBJC_IVAR___AAGroup_count] = 1;
      v38 = &v37[OBJC_IVAR___AAGroup_name];
      *v38 = v53;
      v38[1] = a2;
      v34(&v37[OBJC_IVAR___AAGroup_startDate], v35, v32);
      v39 = &v37[OBJC_IVAR___AAGroup_contentType];
      *v39 = v54;
      v39[8] = v59 & 1;
      v61.receiver = v37;
      v61.super_class = v36;

      v40 = objc_msgSendSuper2(&v61, sel_init);
      (*(v33 + 8))(v35, v32);
      swift_beginAccess();
      v14 = v40;
      MEMORY[0x1B8C97D30]();
      if (*((*(v6 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v6 + 168) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    v29 = *(v14 + OBJC_IVAR___AAGroup_count);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v14 + OBJC_IVAR___AAGroup_count) = v31;
LABEL_12:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_15:
  sub_1B6AB9540();
LABEL_9:
  sub_1B6AB9580();
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v42 = Strong;
  v43 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v18 = v43;
  v44 = v48;
  v50(v18, v51, v48);
  v45 = v43;
  LOBYTE(v43) = sub_1B6AB9110();
  v49(v18, v44);
  if (v43)
  {
    v46 = *(v42 + 24);
    sub_1B69C880C(v14);
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_1B6A5405C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2[11] + OBJC_IVAR___AAAccessQueue_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = sub_1B6AB9110();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = swift_retain_n();
    v14 = sub_1B6A54210(v13, a1, a2, v2);

    v15 = v2[19];

    if (v15)
    {
      while ((v14 & 1) != 0)
      {

        v14 = sub_1B6A54210(v16, a1, a2, v2);

        v17 = *(v15 + 152);

        v15 = v17;
        if (!v17)
        {
          return result;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B6A54210(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 1);
  v10 = *(v9 + 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v46 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    swift_beginAccess();
    v13 = *(a1 + 168);
    v47 = v8;
    v48 = a4;
    v49 = v9;
    if (v13 >> 62)
    {
LABEL_42:
      a1 = sub_1B6AB9E60();
    }

    else
    {
      a1 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    while (1)
    {
      if (!a1)
      {
        goto LABEL_27;
      }

      v14 = __OFSUB__(a1--, 1);
      if (v14)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1B8C98510](a1, v13);
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (a1 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v15 = *(v13 + 32 + 8 * a1);
      }

      v9 = v15;
      v16 = &v15[OBJC_IVAR___AAGroup_name];
      v17 = *&v15[OBJC_IVAR___AAGroup_name];
      if (*v16 == a2 && *(v16 + 1) == a3)
      {
        break;
      }

      v19 = sub_1B6ABA0F0();

      if (v19)
      {

        goto LABEL_29;
      }
    }

LABEL_29:
    v8 = v48;
    swift_beginAccess();
    v32 = v8[21];
    if ((v32 & 0xC000000000000001) != 0)
    {
      v43 = v8[21];

      v25 = MEMORY[0x1B8C98510](a1, v32);

      v12 = v49;
    }

    else
    {
      v12 = v49;
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (a1 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v25 = *(v32 + 8 * a1 + 32);
    }

    v33 = *&v25[OBJC_IVAR___AAGroup_count];
    v14 = __OFSUB__(v33, 1);
    v34 = v33 - 1;
    if (!v14)
    {
      *&v25[OBJC_IVAR___AAGroup_count] = v34;
      if (v34)
      {
        goto LABEL_35;
      }

      swift_beginAccess();
      v35 = sub_1B6A54738(a1);
      swift_endAccess();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_35;
      }

      v27 = Strong;
      v8 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
      v38 = v46;
      v37 = v47;
      *v46 = v8;
      (*(v12 + 13))(v38, *MEMORY[0x1E69E8020], v37);
      v39 = v8;
      v40 = sub_1B6AB9110();
      v41 = *(v12 + 1);
      v12 += 8;
      v41(v38, v37);
      if (v40)
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_52;
    }

    goto LABEL_45;
  }

  swift_beginAccess();
  v20 = *(a1 + 168);
  if (v20 >> 62)
  {
LABEL_47:
    if (sub_1B6AB9E60())
    {
LABEL_20:
      v21 = sub_1B6A5657C();
      if (v21)
      {
        goto LABEL_24;
      }

      v22 = *(a1 + 168);
      if (!(v22 >> 62))
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = __OFSUB__(v23, 1);
        result = v23 - 1;
        if (!v14)
        {
LABEL_23:
          v21 = sub_1B6A54738(result);
LABEL_24:
          v25 = v21;
          swift_endAccess();
          v26 = swift_unknownObjectWeakLoadStrong();
          if (v26)
          {
            v27 = v26;
            v28 = v8;
            v29 = *(*(v26 + 48) + OBJC_IVAR___AAAccessQueue_queue);
            *v12 = v29;
            (*(v9 + 13))(v12, *MEMORY[0x1E69E8020], v28);
            v30 = v29;
            v31 = sub_1B6AB9110();
            (*(v9 + 1))(v12, v28);
            if (v31)
            {
LABEL_38:
              v42 = *(v27 + 24);
              sub_1B69C89B8(v25);

              swift_unknownObjectRelease();
              return 0;
            }

            __break(1u);
LABEL_27:

            return 1;
          }

LABEL_35:

          return 0;
        }

LABEL_54:
        __break(1u);
        return result;
      }

LABEL_52:
      v44 = sub_1B6AB9E60();
      v14 = __OFSUB__(v44, 1);
      result = v44 - 1;
      if (!v14)
      {
        goto LABEL_23;
      }

      goto LABEL_54;
    }
  }

  else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  swift_endAccess();
  return 1;
}

uint64_t sub_1B6A54684@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B6AB7E24(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[6 * a1];
    v10 = *(v9 + 2);
    v9 += 4;
    v11 = *(v9 + 16);
    v12 = *(v9 + 17);
    v13 = *(v9 + 3);
    v14 = v9[5];
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 17) = v12;
    *(a2 + 24) = v13;
    *(a2 + 40) = v14;
    result = memmove(v9, v9 + 6, 48 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B6A54738(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1B6AB7E38(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t Tracker.push(action:identifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  sub_1B6980AE0(0, &qword_1EDBC7FE8, &type metadata for Action, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABD890;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  sub_1B6A110A8(v5, v6, v7);
  v9.value._countAndFlagsBits = a2;
  v9.value._object = a3;
  Tracker.push(actions:identifier:)(inited, v9);
  swift_setDeallocating();
  return sub_1B6A5675C(inited + 32);
}

Swift::Void __swiftcall Tracker.push(actions:identifier:)(Swift::OpaquePointer actions, Swift::String_optional identifier)
{
  v3 = v2;
  object = identifier.value._object;
  countAndFlagsBits = identifier.value._countAndFlagsBits;
  v6 = *(v3 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v9 = *(v3 + 176);
  v10 = *(actions._rawValue + 2);
  v11 = *(v9 + 16);
  if (v11 >= v10)
  {
    v12 = v11 - v10;
  }

  else
  {
    v12 = 0;
  }

  v45 = object;
  if (!object)
  {
    rawValue = actions._rawValue;

LABEL_29:
    v34 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v44 = v6;
      v50 = MEMORY[0x1E69E7CC0];
      sub_1B69E4D8C(0, v10, 0);
      v34 = v50;
      v35 = (rawValue + 48);
      do
      {
        v36 = *(v35 - 2);
        v37 = *(v35 - 1);
        v38 = *v35;
        sub_1B6A110A8(v36, v37, *v35);
        v40 = *(v50 + 16);
        v39 = *(v50 + 24);

        if (v40 >= v39 >> 1)
        {
          sub_1B69E4D8C((v39 > 1), v40 + 1, 1);
        }

        v35 += 24;
        *(v50 + 16) = v40 + 1;
        v41 = v50 + 40 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v37;
        *(v41 + 48) = v38;
        *(v41 + 56) = countAndFlagsBits;
        *(v41 + 64) = v45;
        --v10;
      }

      while (v10);
      v6 = v44;
    }

    swift_beginAccess();
    sub_1B69979DC(v34);
    swift_endAccess();
LABEL_36:
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(*(v6 + 16));
    return;
  }

  v13 = v11 - v12;
  if (v11 == v12)
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:
    rawValue = actions._rawValue;
    v24 = sub_1B6A54DB8(v14, actions._rawValue);

    if (v24)
    {
      v25 = 0;
      v26 = ~v13 + v11;
      v27 = (40 * v11 - 40 * v13 + v9 + 64);
      v28 = v45;
      v29 = countAndFlagsBits;
      while (v13)
      {
        if (++v26 >= v11)
        {
          goto LABEL_38;
        }

        if (*v27)
        {
          if (*(v27 - 1) == v29 && *v27 == v28)
          {
            v30 = 1;
          }

          else
          {
            v33 = sub_1B6ABA0F0();
            v29 = countAndFlagsBits;
            v28 = v45;
            v30 = v33 & 1;
          }
        }

        else
        {
          v30 = 0;
        }

        v27 += 5;
        --v13;
        v31 = __OFADD__(v25, v30);
        v25 += v30;
        if (v31)
        {
          goto LABEL_39;
        }
      }

      if (v25 == v10)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_29;
  }

  v49 = MEMORY[0x1E69E7CC0];

  sub_1B69E4DAC(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v43 = v6;
    v14 = v49;
    v42 = v9;
    v16 = (40 * v11 - 40 * v13 + v9 + 48);
    v17 = v11 - v12;
    v46 = v11 - v12;
    v47 = v11;
    while (v12 < v11)
    {
      v18 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;
      sub_1B6A110A8(v18, v19, *v16);
      v22 = *(v49 + 16);
      v21 = *(v49 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B69E4DAC((v21 > 1), v22 + 1, 1);
      }

      *(v49 + 16) = v22 + 1;
      v23 = v49 + 24 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v19;
      *(v23 + 48) = v20;
      ++v12;
      v16 += 40;
      --v17;
      v13 = v46;
      v11 = v47;
      if (!v17)
      {
        v6 = v43;
        v9 = v42;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B6A54BFC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t sub_1B6A54C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1B6ABA0F0();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B6A54CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_1B6A571E8(v3, v9);
      sub_1B6A571E8(v4, v8);
      if (v9[0] == v8[0] && v9[1] == v8[1])
      {
        sub_1B6A57244(v8);
        sub_1B6A57244(v9);
      }

      else
      {
        v6 = sub_1B6ABA0F0();
        sub_1B6A57244(v8);
        sub_1B6A57244(v9);
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 48;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B6A54DB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v8 = *(v3 - 2);
      v7 = *(v3 - 1);
      v9 = *v3;
      if (*v4 > 1u)
      {
        if (*v4 != 2)
        {
          if (v6 | v5)
          {
            result = 0;
            if (v6 ^ 1 | v5)
            {
              if (v9 != 3 || v8 != 2)
              {
                return result;
              }
            }

            else if (v9 != 3 || v8 != 1)
            {
              return result;
            }

            if (v7)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if (v9 != 3 || v7 | v8)
            {
              return result;
            }
          }

          goto LABEL_6;
        }

        if (v9 != 2)
        {
          return 0;
        }
      }

      else if (*v4)
      {
        if (v9 != 1)
        {
          return 0;
        }
      }

      else if (*v3)
      {
        return 0;
      }

      if (v6 != v8 || v5 != v7)
      {
        v10 = *(v4 - 2);
        v11 = *(v4 - 1);
        v12 = *(v3 - 2);
        v13 = *(v3 - 1);
        if ((sub_1B6ABA0F0() & 1) == 0 && (v6 != 42 || v5 != 0xE100000000000000) && (sub_1B6ABA0F0() & 1) == 0 && (v8 != 42 || v7 != 0xE100000000000000) && (sub_1B6ABA0F0() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_6:
      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

Swift::Void __swiftcall Tracker.popActions()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v4 = *(v0 + 176);
  *(v0 + 176) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t Tracker.description.getter()
{
  v1 = v0;
  sub_1B6AB9CA0();

  strcpy(v15, "Tracker(name: ");
  HIBYTE(v15[1]) = -18;
  if (v0[3])
  {
    v2 = v0[2];
    v3 = v0[3];
  }

  else
  {
    v3 = 0xE600000000000000;
    v2 = 0x6E6564646968;
  }

  MEMORY[0x1B8C97BE0](v2, v3);

  MEMORY[0x1B8C97BE0](0x203A68746170202CLL, 0xE800000000000000);

  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v1[3];
    if (v7)
    {
      v8 = v1[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1B69B5A00(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1B69B5A00((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v5 = &v4[16 * v10];
      *(v5 + 4) = v8;
      *(v5 + 5) = v7;
    }

    v6 = v1[19];

    v1 = v6;
  }

  while (v6);
  sub_1B69B919C(v4);
  sub_1B6980AE0(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v11 = sub_1B6AB9290();
  v13 = v12;

  MEMORY[0x1B8C97BE0](v11, v13);

  MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
  return v15[0];
}

BOOL sub_1B6A55214(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(*(a1 + 32) + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16) == 0;
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t AccessTracker.deinit()
{
  swift_weakDestroy();
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t AccessTracker.explicitTime<A>(_:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v12 = v15;
    (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
    v16 = v15;
    LOBYTE(v15) = sub_1B6AB9110();
    result = (*(v9 + 8))(v12, v8);
    if (v15)
    {
      v17 = *(v14 + 104);

      sub_1B69A0AA0(a1, v17, a2, 0, a3, a4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t AccessTracker.explicitSubmit<A>(_:submitTime:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for EventSubmitResult();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v21 - v15);
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 104);
    memset(v21, 0, sizeof(v21));

    sub_1B69ACABC(a1, v18, 0, a2, v21, a3, a4, a5, a6);

    return sub_1B69840C4(v21, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
  }

  else if (a3)
  {
    sub_1B6A16B30();
    v19 = swift_allocError();
    *v20 = xmmword_1B6AC0310;
    *v16 = v19;
    swift_storeEnumTagMultiPayload();
    a3(v16);
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t AccessTracker.explicitSubmit<A>(_:submitTime:userInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a2;
  v22 = a3;
  v12 = type metadata accessor for EventSubmitResult();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v21 - v15);
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 104);

    sub_1B69ACABC(a1, v18, 0, v21, v22, a4, a5, a6, a7);
  }

  else if (a4)
  {
    sub_1B6A16B30();
    v19 = swift_allocError();
    *v20 = xmmword_1B6AC0310;
    *v16 = v19;
    swift_storeEnumTagMultiPayload();
    a4(v16);
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t AccessTracker.delayedSubmit<A>(_:onlyIfTimed:awaiting:completion:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a1;
  v21 = a3;
  v12 = type metadata accessor for EventSubmitResult();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v20 - v15);
  result = swift_weakLoadStrong();
  if (result)
  {
    Tracker.delayedSubmit<A>(_:onlyIfTimed:awaiting:completion:)(v20, a2 & 1, v21, a4, a5, a6, a7);
  }

  else if (a4)
  {
    sub_1B6A16B30();
    v18 = swift_allocError();
    *v19 = xmmword_1B6AC0310;
    *v16 = v18;
    swift_storeEnumTagMultiPayload();
    a4(v16);
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t AccessTracker.clearStack<A>(of:includeParentTrackers:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v11 = v13;
    (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
    v14 = v13;
    LOBYTE(v13) = sub_1B6AB9110();
    result = (*(v8 + 8))(v11, v7);
    if (v13)
    {
      sub_1B6A4F7C4(0, 0, a2 & 1, a3, a4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall AccessTracker.clearDynamicDataIdentifier()()
{
  v0 = sub_1B6AB90F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v4 = v7;
    (*(v1 + 104))(v4, *MEMORY[0x1E69E8020], v0);
    v8 = v7;
    LOBYTE(v7) = sub_1B6AB9110();
    (*(v1 + 8))(v4, v0);
    if (v7)
    {
      v9 = *(v6 + 64);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t ThresholdError.eventName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TrackingConsentError.eventName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

Swift::Void __swiftcall AccessTracker.enterGroup(groupName:)(Swift::String groupName)
{
  object = groupName._object;
  countAndFlagsBits = groupName._countAndFlagsBits;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_weakLoadStrong())
  {
    sub_1B6AB8DA0();
    sub_1B6A53B70(countAndFlagsBits, object, v7, 0, 1);

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t AccessTracker.enterGroup(groupName:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B6AB8DA0();
    sub_1B6A53B70(a1, a2, v12, a3, a4 & 1);

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

Swift::Void __swiftcall AccessTracker.leaveGroup()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 88);
    v2 = *(Strong + 96);
    v3 = Strong;
    v4 = swift_allocObject();
    v4[3] = 0;
    v4[4] = 0;
    v4[2] = v3;

    sub_1B69877A4(v1, sub_1B6A57A20, v4);
  }
}

Swift::Void __swiftcall AccessTracker.leaveGroup(groupName:)(Swift::String_optional groupName)
{
  object = groupName.value._object;
  countAndFlagsBits = groupName.value._countAndFlagsBits;
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v7 = v9;
    (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
    v10 = v9;
    LOBYTE(v9) = sub_1B6AB9110();
    (*(v4 + 8))(v7, v3);
    if (v9)
    {
      sub_1B6A5405C(countAndFlagsBits, object);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1B6A560A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1B6A560D4()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v0 + v2;
  v7 = v0[2];
  sub_1B6A53B70(v3, v4, v6, *v5, v5[8]);
}

uint64_t sub_1B6A56170()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1B6A5405C(v1, v2);
}

void (*sub_1B6A5619C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v8[8] = sub_1B6A564B4(v8);
  v8[9] = sub_1B6A562A8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1B6A56248;
}

void sub_1B6A56248(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1B6A562A8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
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
  v13 = sub_1B6993940(a2, a3);
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
      sub_1B69DFAF4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1B69DCB7C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1B6993940(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1B6ABA190();
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
  return sub_1B6A56400;
}

void sub_1B6A56400(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1B69E80C4(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1B6A57710(*(v7 + 48) + 16 * v6);
    sub_1B69AD900(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_1B6A564B4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B6A564DC;
}

uint64_t sub_1B6A564E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = v3[2];
    if (v5)
    {
LABEL_3:
      v6 = &v3[6 * v5];
      v7 = *v6;
      v8 = *(v6 + 1);
      v9 = *(v6 + 1);
      v10 = v6[3];
      *a1 = *(v6 - 1);
      *(a1 + 16) = v7;
      *(a1 + 17) = v8;
      *(a1 + 24) = v9;
      *(a1 + 40) = v10;
      v3[2] = v5 - 1;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_1B6AB7E24(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A5657C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1B6AB7E38(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B6A565E0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1B8C98510](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A5664C()
{
  result = v0;
  for (i = *(v0 + 152); i; i = *(i + 152))
  {
    result = i;
  }

  return result;
}

uint64_t sub_1B6A56700()
{
  v1 = *(v0 + 64);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
}

uint64_t sub_1B6A5670C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1B6A50A08(&v4, a1);
}

uint64_t sub_1B6A567B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1B697ED90(319, &qword_1EDBCBB00);
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B6A56A98()
{
  sub_1B6AB8E40();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DelayedToken();
    if (v1 <= 0x3F)
    {
      sub_1B6980AE0(319, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B6A56B88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A56BD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1B6A56C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B6A56CA0()
{
  v0 = sub_1B6AB92B0();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = [objc_opt_self() processInfo];
    v4 = [v3 environment];

    v5 = sub_1B6AB9210();
    if (*(v5 + 16))
    {
      sub_1B6993940(0xD000000000000010, 0x80000001B6ACB500);
      v2 = v6;
    }

    else
    {

      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1B6A56D9C(void *a1, unint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v11 = type metadata accessor for EventSubmitResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v33 - v14);
  if ((sub_1B69B9904(a1, a2, a5, a6) & 1) == 0)
  {
    return 1;
  }

  result = sub_1B69A31EC(&v40);
  if (v40 == 2)
  {
    __break(1u);
    return result;
  }

  if ((v40 & 1) == 0)
  {
    return 1;
  }

  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v17 = sub_1B6AB8F90();
  __swift_project_value_buffer(v17, qword_1EDBCFDA8);
  sub_1B6992B50(a1, a2);
  v18 = sub_1B6AB8F80();
  v19 = sub_1B6AB9900();
  sub_1B69C346C(a1, a2);
  v36 = v19;
  v20 = os_log_type_enabled(v18, v19);
  v37 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v35 = a3;
    v22 = v21;
    v34 = swift_slowAlloc();
    v39 = v34;
    *v22 = 136446210;
    v23 = sub_1B69A09A4(a1, a2);
    v25 = sub_1B698F63C(v23, v24, &v39);

    *(v22 + 4) = v25;
    _os_log_impl(&dword_1B697C000, v18, v36, "Discarding D&U-only event %{public}s", v22, 0xCu);
    v26 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1B8C99550](v26, -1, -1);
    v27 = v22;
    a3 = v35;
    MEMORY[0x1B8C99550](v27, -1, -1);
  }

  if (a3)
  {
    v28 = sub_1B69A09A4(a1, a2);
    v30 = v29;
    sub_1B6A23E9C();
    v31 = swift_allocError();
    *v32 = v28;
    v32[1] = v30;
    *v15 = v31;
    swift_storeEnumTagMultiPayload();
    a3(v15);
    (*(v37 + 8))(v15, v11);
  }

  return 0;
}

void sub_1B6A5707C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for EventData() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B6A4D508(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), v2 + v8, *(v2 + v9), *(v2 + v10), *(v2 + v10 + 8), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((v10 + 39) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v10 + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

uint64_t sub_1B6A5718C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1B6A56C3C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1B6A57298(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v15 = a1;
    v6 = sub_1B6AB9E60();
    a1 = v15;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = a1 & 0xC000000000000001;
  v16 = a1;
  v8 = a1 + 32;
  do
  {
    v9 = v6;
    if (!v6)
    {
      break;
    }

    --v6;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v7)
    {
      v10 = MEMORY[0x1B8C98510](v9 - 1, v16);
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (v6 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v10 = *(v8 + 8 * v6);
    }

    v11 = v10;
    if (*&v10[OBJC_IVAR___AAGroup_name] == a2 && *&v10[OBJC_IVAR___AAGroup_name + 8] == a3)
    {

      return v6;
    }

    v13 = sub_1B6ABA0F0();
  }

  while ((v13 & 1) == 0);
  return v6;
}

void sub_1B6A573F0()
{
  if (!qword_1EB95BAC8)
  {
    sub_1B6980AE0(255, &qword_1EB95ADB8, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Snapshot();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95BAC8);
    }
  }
}

uint64_t sub_1B6A5746C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  return sub_1B6A4F7C4(v3, v4, v5, v1, v2);
}

uint64_t objectdestroy_189Tm(uint64_t a1)
{
  v3 = *(v1 + 32);

  v4 = *(v1 + 48);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_44Tm()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 4);

  if (*(v0 + 5))
  {
    v6 = *(v0 + 6);
  }

  v7 = (v3 + 65) & ~v3;
  (*(v2 + 8))(&v0[v7], v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v4, v3 | 7);
}

uint64_t sub_1B6A575D8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(sub_1B6AB8DB0() - 8);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = v1 + ((*(v4 + 80) + 65) & ~*(v4 + 80));

  return a1(v5, v6, v7, v8, v9, v10, v2, v3);
}

uint64_t objectdestroy_205Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B6A576C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B6A57770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B6A577D8()
{
  if (!qword_1EB95BAD8)
  {
    sub_1B6AB8E40();
    type metadata accessor for Tracker.DelayedEvent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95BAD8);
    }
  }
}

uint64_t sub_1B6A5784C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1B6A56C3C(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1B6A578BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A57904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6A5797C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

id BridgedIDSessionKind.__allocating_init(kind:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___AAIDSessionKind_kind] = a1;
  v8 = &v7[OBJC_IVAR___AAIDSessionKind_name];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1B6A57B54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for BridgedIDSessionKind();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___AAIDSessionKind_kind] = a2;
  v7 = &v6[OBJC_IVAR___AAIDSessionKind_name];
  *v7 = 0;
  *(v7 + 1) = 0;
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a3 = result;
  return result;
}

id sub_1B6A57C10(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id BridgedIDSessionKind.init(kind:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___AAIDSessionKind_kind] = a1;
  v8 = &v3[OBJC_IVAR___AAIDSessionKind_name];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t BridgedIDSessionKind.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B69C1678(a1, v10);
  if (!v11)
  {
    sub_1B6981634(v10);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  if (v9 == v1)
  {
    goto LABEL_14;
  }

  if (*&v1[OBJC_IVAR___AAIDSessionKind_kind] != *&v9[OBJC_IVAR___AAIDSessionKind_kind])
  {

    goto LABEL_16;
  }

  v3 = *&v1[OBJC_IVAR___AAIDSessionKind_name + 8];
  v4 = *&v9[OBJC_IVAR___AAIDSessionKind_name + 8];
  if (!v3)
  {
    v8 = *&v9[OBJC_IVAR___AAIDSessionKind_name + 8];

    if (!v4)
    {
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    goto LABEL_16;
  }

  if (v4)
  {
    if (*&v1[OBJC_IVAR___AAIDSessionKind_name] != *&v9[OBJC_IVAR___AAIDSessionKind_name] || v3 != v4)
    {
      v6 = *&v9[OBJC_IVAR___AAIDSessionKind_name + 8];
      LOBYTE(v4) = sub_1B6ABA0F0();
      goto LABEL_12;
    }

LABEL_14:

    LOBYTE(v4) = 1;
    return v4 & 1;
  }

LABEL_12:

  return v4 & 1;
}

uint64_t BridgedIDSessionKind.hash.getter()
{
  sub_1B6ABA240();
  MEMORY[0x1B8C98A40](*(v0 + OBJC_IVAR___AAIDSessionKind_kind));
  if (*(v0 + OBJC_IVAR___AAIDSessionKind_name + 8))
  {
    v1 = *(v0 + OBJC_IVAR___AAIDSessionKind_name);
    sub_1B6ABA210();
    sub_1B6AB9380();
  }

  else
  {
    sub_1B6ABA210();
  }

  return sub_1B6ABA220();
}

id BridgedIDSessionKind.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedIDSessionKind.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BridgedIDSessionKind.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AAIDSessionKind_kind);
  v6 = *(v1 + OBJC_IVAR___AAIDSessionKind_name);
  v5 = *(v1 + OBJC_IVAR___AAIDSessionKind_name + 8);
  v7 = objc_allocWithZone(ObjectType);
  *&v7[OBJC_IVAR___AAIDSessionKind_kind] = v4;
  v8 = &v7[OBJC_IVAR___AAIDSessionKind_name];
  *v8 = v6;
  *(v8 + 1) = v5;
  v10.receiver = v7;
  v10.super_class = ObjectType;

  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1B6A582F8(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = sub_1B6AB9320();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1B69C1678(a1[2] + OBJC_IVAR___AAJSON_value, &v32);
  if (v33)
  {
    sub_1B69979CC(&v32, &v34);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v35 = sub_1B69E0520();
    *&v34 = v9;
    if (v33)
    {
      sub_1B6981634(&v32);
    }
  }

  v10 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&v34, v35);
  v11 = sub_1B6ABA0E0();
  __swift_destroy_boxed_opaque_existential_1(&v34);
  v12 = *v3;
  *&v34 = 0;
  v13 = [v10 dataWithJSONObject:v11 options:v12 error:&v34];
  swift_unknownObjectRelease();
  v14 = v34;
  if (v13)
  {
    v15 = sub_1B6AB8C80();
    v17 = v16;

    sub_1B6AB9310();
    v18 = sub_1B6AB92F0();
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v22 = a1[1];
      *&v34 = *a1;
      *(&v34 + 1) = v22;

      MEMORY[0x1B8C97BE0](540966432, 0xE400000000000000);
      MEMORY[0x1B8C97BE0](v20, v21);

      sub_1B6993C94(v15, v17);
      v23 = v34;
    }

    else
    {
      v28 = v3[4];
      v29 = v3[5];
      __swift_project_boxed_opaque_existential_1(v3 + 1, v28);
      v23 = (*(v29 + 8))(a1, a2, a3, v28, v29);
      sub_1B6993C94(v15, v17);
    }
  }

  else
  {
    v24 = v14;
    v25 = sub_1B6AB8A70();

    swift_willThrow();
    v26 = v3[4];
    v27 = v3[5];
    __swift_project_boxed_opaque_existential_1(v3 + 1, v26);
    v23 = (*(v27 + 8))(a1, a2, a3, v26, v27);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t sub_1B6A585D4(void *a1)
{
  sub_1B69C1678(a1[2] + OBJC_IVAR___AAJSON_value, &v5);
  if (v6)
  {
    sub_1B69979CC(&v5, v7);
    *&v5 = 0;
    *(&v5 + 1) = 0xE000000000000000;
    MEMORY[0x1B8C97BE0](*a1, a1[1]);
    MEMORY[0x1B8C97BE0](540966432, 0xE400000000000000);
    sub_1B6AB9DF0();
    v2 = v5;
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1B6981634(&v5);
    v3 = a1[1];
    *&v7[0] = *a1;
    *(&v7[0] + 1) = v3;

    MEMORY[0x1B8C97BE0](0x6C696E203E7E20, 0xE700000000000000);
    return *&v7[0];
  }

  return v2;
}

uint64_t UploadBatchEventConfig.directory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AAUploadBatchEventConfig_directory;
  v4 = sub_1B6AB8BB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id UploadBatchEventConfig.init(batchSize:batchDebugging:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1B6AB8BB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR___AAUploadBatchEventConfig_maxEventsPerSessionBatch] = a1;
  *&v2[OBJC_IVAR___AAUploadBatchEventConfig_maxByteSizePerSessionBatch] = 500000;
  v2[OBJC_IVAR___AAUploadBatchEventConfig_transparencyLoggingEnabled] = 0;
  v2[OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled] = a2;
  *&v2[OBJC_IVAR___AAUploadBatchEventConfig_maxUploadTries] = 5;
  v11 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v12 = sub_1B6AB9510();
  if (v12[2])
  {

    if (v12[2])
    {
      v13 = v12[4];
      v14 = v12[5];

      sub_1B6AB8AF0();

      (*(v7 + 32))(&v2[OBJC_IVAR___AAUploadBatchEventConfig_directory], v10, v6);
      v16.receiver = v2;
      v16.super_class = ObjectType;
      return objc_msgSendSuper2(&v16, sel_init);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id UploadBatchEventConfig.with(maxByteSizePerSessionBatch:)(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_1B6AB8BB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR___AAUploadBatchEventConfig_maxEventsPerSessionBatch);
  HIDWORD(v16) = *(v1 + OBJC_IVAR___AAUploadBatchEventConfig_transparencyLoggingEnabled);
  v10 = *(v1 + OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled);
  v11 = *(v1 + OBJC_IVAR___AAUploadBatchEventConfig_maxUploadTries);
  v12 = *(v5 + 16);
  v12(v8, v2 + OBJC_IVAR___AAUploadBatchEventConfig_directory, v4);
  v13 = objc_allocWithZone(ObjectType);
  *&v13[OBJC_IVAR___AAUploadBatchEventConfig_maxEventsPerSessionBatch] = v9;
  *&v13[OBJC_IVAR___AAUploadBatchEventConfig_maxByteSizePerSessionBatch] = v17;
  v13[OBJC_IVAR___AAUploadBatchEventConfig_transparencyLoggingEnabled] = BYTE4(v16);
  v13[OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled] = v10;
  *&v13[OBJC_IVAR___AAUploadBatchEventConfig_maxUploadTries] = v11;
  v12(&v13[OBJC_IVAR___AAUploadBatchEventConfig_directory], v8, v4);
  v18.receiver = v13;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  (*(v5 + 8))(v8, v4);
  return v14;
}

id UploadBatchEventConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UploadBatchEventConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BridgedUserIDStorage.init(accessGroup:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v11 = &type metadata for DefaultUserIDStorage;
  v12 = &protocol witness table for DefaultUserIDStorage;
  v6 = swift_allocObject();
  *&v10 = v6;
  *(v6 + 40) = &type metadata for DefaultKeyValueStore;
  *(v6 + 48) = &off_1F2E74C50;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = [objc_opt_self() standardUserDefaults];
  *(v6 + 56) = 0xD000000000000017;
  *(v6 + 64) = 0x80000001B6AC94D0;
  *(v6 + 88) = 2;
  *(v6 + 72) = 2;
  *(v6 + 80) = v7;
  sub_1B699A784(&v10, v2 + OBJC_IVAR___AAUserIDStorage_storage);
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id BridgedUserIDStorage.__allocating_init(accessGroup:syncRequiresDiagnosticConsent:syncRequiresTrackingConsent:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  if (a3)
  {
    v10 = a4 & 1 | 2;
  }

  else
  {
    v10 = a4 & 1;
  }

  v16 = &type metadata for DefaultUserIDStorage;
  v17 = &protocol witness table for DefaultUserIDStorage;
  v11 = swift_allocObject();
  *&v15 = v11;
  *(v11 + 40) = &type metadata for DefaultKeyValueStore;
  *(v11 + 48) = &off_1F2E74C50;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = [objc_opt_self() standardUserDefaults];
  *(v11 + 56) = 0xD000000000000017;
  *(v11 + 64) = 0x80000001B6AC94D0;
  *(v11 + 88) = 2;
  *(v11 + 72) = v10;
  *(v11 + 80) = v12;
  sub_1B699A784(&v15, v9 + OBJC_IVAR___AAUserIDStorage_storage);
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedUserIDStorage.init(accessGroup:syncRequiresDiagnosticConsent:syncRequiresTrackingConsent:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = a4 & 1 | 2;
  }

  else
  {
    v10 = a4 & 1;
  }

  v16 = &type metadata for DefaultUserIDStorage;
  v17 = &protocol witness table for DefaultUserIDStorage;
  v11 = swift_allocObject();
  *&v15 = v11;
  *(v11 + 40) = &type metadata for DefaultKeyValueStore;
  *(v11 + 48) = &off_1F2E74C50;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = [objc_opt_self() standardUserDefaults];
  *(v11 + 56) = 0xD000000000000017;
  *(v11 + 64) = 0x80000001B6AC94D0;
  *(v11 + 88) = 2;
  *(v11 + 72) = v10;
  *(v11 + 80) = v12;
  sub_1B699A784(&v15, v4 + OBJC_IVAR___AAUserIDStorage_storage);
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedUserIDStorage.__allocating_init(accessGroup:legacyStorage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B6A59C8C(a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

id BridgedUserIDStorage.init(accessGroup:legacyStorage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B6A59C8C(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

id BridgedUserIDStorage.__allocating_init(accessGroup:legacyStorage:syncRequiresDiagnosticConsent:syncRequiresTrackingConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v20[3] = &type metadata for ProxyMigrationUserIDStorage;
  v20[4] = &off_1F2E7BA80;
  v20[0] = a3;
  if (a4)
  {
    v12 = a5 & 1 | 2;
  }

  else
  {
    v12 = a5 & 1;
  }

  v22 = &type metadata for MigrationUserIDStorage;
  v23 = &protocol witness table for MigrationUserIDStorage;
  v13 = swift_allocObject();
  *&v21 = v13;
  sub_1B6982544(v20, (v13 + 7));
  v13[5] = &type metadata for DefaultUserIDStorage;
  v13[6] = &protocol witness table for DefaultUserIDStorage;
  v14 = swift_allocObject();
  v13[2] = v14;
  *(v14 + 40) = &type metadata for DefaultKeyValueStore;
  *(v14 + 48) = &off_1F2E74C50;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = objc_opt_self();
  swift_unknownObjectRetain();
  v16 = [v15 standardUserDefaults];
  *(v14 + 56) = 0xD000000000000017;
  *(v14 + 64) = 0x80000001B6AC94D0;
  *(v14 + 88) = 2;
  *(v14 + 72) = v12;
  *(v14 + 80) = v16;
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_1B699A784(&v21, v11 + OBJC_IVAR___AAUserIDStorage_storage);
  v19.receiver = v11;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  swift_unknownObjectRelease();
  return v17;
}

id BridgedUserIDStorage.init(accessGroup:legacyStorage:syncRequiresDiagnosticConsent:syncRequiresTrackingConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v5 = sub_1B6A59E04(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v5;
}

id BridgedUserIDStorage.__allocating_init(newStorage:legacyStorage:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___AAUserIDStorage_storage];
  *(v6 + 3) = &type metadata for MigrationUserIDStorage;
  *(v6 + 4) = &protocol witness table for MigrationUserIDStorage;
  v7 = swift_allocObject();
  *v6 = v7;
  v7[5] = &type metadata for ProxyUserIDStorage;
  v7[6] = &off_1F2E7DAA8;
  v7[2] = a1;
  v7[10] = &type metadata for ProxyMigrationUserIDStorage;
  v7[11] = &off_1F2E7BA80;
  v7[7] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id BridgedUserIDStorage.init(newStorage:legacyStorage:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___AAUserIDStorage_storage];
  *(v6 + 3) = &type metadata for MigrationUserIDStorage;
  *(v6 + 4) = &protocol witness table for MigrationUserIDStorage;
  v7 = swift_allocObject();
  *v6 = v7;
  v7[5] = &type metadata for ProxyUserIDStorage;
  v7[6] = &off_1F2E7DAA8;
  v7[2] = a1;
  v7[10] = &type metadata for ProxyMigrationUserIDStorage;
  v7[11] = &off_1F2E7BA80;
  v7[7] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id BridgedUserIDStorage.__allocating_init(storage:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___AAUserIDStorage_storage];
  *(v4 + 3) = &type metadata for ProxyUserIDStorage;
  *(v4 + 4) = &off_1F2E7DAA8;
  *v4 = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id BridgedUserIDStorage.init(storage:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___AAUserIDStorage_storage];
  *(v4 + 3) = &type metadata for ProxyUserIDStorage;
  *(v4 + 4) = &off_1F2E7DAA8;
  *v4 = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id BridgedUserIDStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedUserIDStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6A59C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v14[3] = &type metadata for ProxyMigrationUserIDStorage;
  v14[4] = &off_1F2E7BA80;
  v14[0] = a3;
  v16 = &type metadata for MigrationUserIDStorage;
  v17 = &protocol witness table for MigrationUserIDStorage;
  v8 = swift_allocObject();
  *&v15 = v8;
  sub_1B6982544(v14, (v8 + 7));
  v8[5] = &type metadata for DefaultUserIDStorage;
  v8[6] = &protocol witness table for DefaultUserIDStorage;
  v9 = swift_allocObject();
  v8[2] = v9;
  *(v9 + 40) = &type metadata for DefaultKeyValueStore;
  *(v9 + 48) = &off_1F2E74C50;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = objc_opt_self();
  swift_unknownObjectRetain();
  v11 = [v10 standardUserDefaults];
  *(v9 + 56) = 0xD000000000000017;
  *(v9 + 64) = 0x80000001B6AC94D0;
  *(v9 + 88) = 2;
  *(v9 + 72) = 2;
  *(v9 + 80) = v11;
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_1B699A784(&v15, v3 + OBJC_IVAR___AAUserIDStorage_storage);
  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_1B6A59E04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  ObjectType = swift_getObjectType();
  v19[3] = &type metadata for ProxyMigrationUserIDStorage;
  v19[4] = &off_1F2E7BA80;
  v19[0] = a3;
  if (a4)
  {
    v12 = a5 & 1 | 2;
  }

  else
  {
    v12 = a5 & 1;
  }

  v21 = &type metadata for MigrationUserIDStorage;
  v22 = &protocol witness table for MigrationUserIDStorage;
  v13 = swift_allocObject();
  *&v20 = v13;
  sub_1B6982544(v19, (v13 + 7));
  v13[5] = &type metadata for DefaultUserIDStorage;
  v13[6] = &protocol witness table for DefaultUserIDStorage;
  v14 = swift_allocObject();
  v13[2] = v14;
  *(v14 + 40) = &type metadata for DefaultKeyValueStore;
  *(v14 + 48) = &off_1F2E74C50;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = objc_opt_self();
  swift_unknownObjectRetain();
  v16 = [v15 standardUserDefaults];
  *(v14 + 56) = 0xD000000000000017;
  *(v14 + 64) = 0x80000001B6AC94D0;
  *(v14 + 88) = 2;
  *(v14 + 72) = v12;
  *(v14 + 80) = v16;
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_1B699A784(&v20, v5 + OBJC_IVAR___AAUserIDStorage_storage);
  v18.receiver = v5;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1B6A5A054@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

char *sub_1B6A5A0AC()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(*v0 + 96);
  v4 = *(v1 + 80);
  v5 = sub_1B6AB9B30();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  v6 = *&v0[*(*v0 + 104)];

  return v0;
}

uint64_t sub_1B6A5A15C()
{
  sub_1B6A5A0AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A5A1C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B6A5A368(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1B6A5A208()
{
  result = qword_1EB95BB98;
  if (!qword_1EB95BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95BB98);
  }

  return result;
}

unint64_t sub_1B6A5A260()
{
  result = qword_1EB95BBA0;
  if (!qword_1EB95BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95BBA0);
  }

  return result;
}

unint64_t sub_1B6A5A2B8()
{
  result = qword_1EB95BBA8;
  if (!qword_1EB95BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95BBA8);
  }

  return result;
}

unint64_t sub_1B6A5A310()
{
  result = qword_1EB95BBB0;
  if (!qword_1EB95BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95BBB0);
  }

  return result;
}

uint64_t sub_1B6A5A368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id BridgedRawEventProperty.__allocating_init(dataName:requirement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___AARawEventProperty_dataName];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___AARawEventProperty_requirement] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BridgedRawEventProperty.init(dataName:requirement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___AARawEventProperty_dataName];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR___AARawEventProperty_requirement] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BridgedRawEventProperty.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedRawEventProperty.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BridgedRotationMode.__allocating_init(mode:namespaceName:startDate:cachedRotations:resetCount:lastRotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_1B69867A4(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v44 - v16;
  v48 = type metadata accessor for RotationMode();
  v18 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v7;
  v21 = objc_allocWithZone(v7);
  v50 = a6;
  v51 = a3;
  if (a1 == 1)
  {
    v45 = v21;
    sub_1B698114C();
    v23 = *(v22 + 48);
    v44[0] = *(v22 + 64);
    v24 = sub_1B6AB8E40();
    v25 = *(*(v24 - 8) + 16);
    v44[1] = (v24 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v46 = v24;
    v47 = a2;
    v25(v20, a2);
    v26 = sub_1B6AB8DB0();
    v27 = *(v26 - 8);
    v28 = *(v27 + 16);
    v28(&v20[v23], a3, v26);
    sub_1B69B20C4(a6, v17);
    v29 = *(v27 + 48);
    if (v29(v17, 1, v26) == 1)
    {
      v28(&v20[v44[0]], a3, v26);
      if (v29(v17, 1, v26) != 1)
      {
        sub_1B69E9EBC(v17);
      }
    }

    else
    {
      (*(v27 + 32))(&v20[v44[0]], v17, v26);
    }

    swift_storeEnumTagMultiPayload();
    v31 = v45;
    sub_1B6A5B000(v20, v45 + OBJC_IVAR___AARotationMode_mode);
    v36 = v46;
    v37 = v47;
    v41 = v50;
    v39 = v51;
    goto LABEL_9;
  }

  v46 = a4;
  v47 = a5;
  if (!a1)
  {
    v30 = &v21[OBJC_IVAR___AARotationMode_mode];
    v31 = v21;
    sub_1B698103C(0);
    v33 = v32[12];
    v34 = v32[16];
    v35 = v32[20];
    v36 = sub_1B6AB8E40();
    (*(*(v36 - 8) + 16))(v30, a2, v36);
    v26 = sub_1B6AB8DB0();
    v37 = a2;
    v38 = &v30[v33];
    v39 = v51;
    (*(*(v26 - 8) + 16))(v38, v51, v26);
    v40 = v47;
    *&v30[v34] = v46;
    *&v30[v35] = v40;
    swift_storeEnumTagMultiPayload();
    v41 = v50;
LABEL_9:
    v52.receiver = v31;
    v52.super_class = v49;
    v42 = objc_msgSendSuper2(&v52, sel_init);
    sub_1B69E9EBC(v41);
    sub_1B6AB8DB0();
    (*(*(v26 - 8) + 8))(v39, v26);
    sub_1B6AB8E40();
    (*(*(v36 - 8) + 8))(v37, v36);
    return v42;
  }

  v53 = a1;
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

uint64_t BridgedRotationMode.init(mode:namespaceName:startDate:cachedRotations:resetCount:lastRotation:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  sub_1B69867A4(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v43 - v16;
  v48 = type metadata accessor for RotationMode();
  v18 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a6;
  v51 = a3;
  if (a1 == 1)
  {
    v46 = v7;
    sub_1B698114C();
    v22 = *(v21 + 64);
    v43 = *(v21 + 48);
    v44 = v22;
    v23 = sub_1B6AB8E40();
    v24 = *(*(v23 - 8) + 16);
    v45 = (v23 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v47 = a2;
    v24(v20, a2, v23);
    v25 = sub_1B6AB8DB0();
    v26 = a6;
    v27 = *(v25 - 8);
    v28 = *(v27 + 16);
    v28(&v20[v43], a3, v25);
    sub_1B69B20C4(v26, v17);
    v29 = *(v27 + 48);
    if (v29(v17, 1, v25) == 1)
    {
      v28(&v20[v44], v51, v25);
      if (v29(v17, 1, v25) != 1)
      {
        sub_1B69E9EBC(v17);
      }
    }

    else
    {
      (*(v27 + 32))(&v20[v44], v17, v25);
    }

    swift_storeEnumTagMultiPayload();
    v34 = v46;
    sub_1B6A5B000(v20, v46 + OBJC_IVAR___AARotationMode_mode);
    v36 = v47;
    v40 = v50;
    v38 = v51;
    goto LABEL_9;
  }

  v46 = a4;
  v47 = a5;
  if (!a1)
  {
    v30 = &v7[OBJC_IVAR___AARotationMode_mode];
    sub_1B698103C(0);
    v32 = v31[12];
    v33 = v31[16];
    v34 = v7;
    v35 = v31[20];
    v23 = sub_1B6AB8E40();
    (*(*(v23 - 8) + 16))(v30, a2, v23);
    v25 = sub_1B6AB8DB0();
    v36 = a2;
    v37 = &v30[v32];
    v38 = v51;
    (*(*(v25 - 8) + 16))(v37, v51, v25);
    v39 = v47;
    *&v30[v33] = v46;
    *&v30[v35] = v39;
    swift_storeEnumTagMultiPayload();
    v40 = v50;
LABEL_9:
    v52.receiver = v34;
    v52.super_class = ObjectType;
    v41 = objc_msgSendSuper2(&v52, sel_init);
    sub_1B69E9EBC(v40);
    sub_1B6AB8DB0();
    (*(*(v25 - 8) + 8))(v38, v25);
    sub_1B6AB8E40();
    (*(*(v23 - 8) + 8))(v36, v23);
    return v41;
  }

  v53 = a1;
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

uint64_t sub_1B6A5B000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RotationMode();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id BridgedRotationMode.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v86 = type metadata accessor for RotationMode();
  v4 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69867A4(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v85 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v77 - v12;
  v14 = sub_1B6AB8DB0();
  v15 = *(v14 - 8);
  v89 = v14;
  v90 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v77 - v20;
  sub_1B69867A4(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v77 - v23;
  v25 = sub_1B6AB8E40();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v91 = &v77 - v31;
  v32 = sub_1B6AB92B0();
  v87 = [a1 decodeInt64ForKey_];

  sub_1B6986438(0, &qword_1EB95BBD0, 0x1E696AFB0);
  v33 = sub_1B6AB9AF0();
  if (!v33 || (v34 = v33, (v26[7])(v24, 1, 1, v25), sub_1B6A5BC9C(&qword_1EB95BBD8, MEMORY[0x1E69695A8]), sub_1B6AB9EE0(), v34, (v26[6])(v24, 1, v25) == 1))
  {

LABEL_15:
    v61 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v62 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v82 = v2;
  v35 = v26[4];
  v35(v30, v24, v25);
  v36 = v91;
  v35(v91, v30, v25);
  sub_1B6986438(0, &qword_1EB95BBE0, 0x1E695DF00);
  v37 = sub_1B6AB9AF0();
  if (!v37)
  {
    (v26[1])(v36, v25);

    goto LABEL_14;
  }

  v38 = v37;
  v39 = a1;
  v40 = v89;
  v41 = v90;
  v81 = *(v90 + 56);
  v81(v13, 1, 1, v89);
  sub_1B6A5BC9C(&qword_1EB95BBE8, MEMORY[0x1E6969530]);
  sub_1B6AB9EE0();

  v42 = *(v41 + 48);
  if (v42(v13, 1, v40) == 1)
  {
    (v26[1])(v91, v25);

LABEL_14:
    v2 = v82;
    goto LABEL_15;
  }

  v80 = v42;
  v43 = v13;
  v44 = *(v41 + 32);
  v44(v19, v43, v40);
  v44(v88, v19, v40);
  v45 = v39;
  if (v87 == 1)
  {
    v78 = v44;
    v87 = v26;
    v59 = sub_1B6AB92B0();
    v60 = [v39 decodeObjectForKey_];

    if (v60)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
    }

    else
    {
      v94 = 0u;
      v95 = 0u;
    }

    v65 = v84;
    v64 = v85;
    v96[0] = v94;
    v96[1] = v95;
    v66 = v89;
    v79 = v45;
    if (*(&v95 + 1))
    {
      v67 = swift_dynamicCast() ^ 1;
      v68 = v64;
    }

    else
    {
      sub_1B6A5BCE4(v96, sub_1B69FA1E4);
      v68 = v64;
      v67 = 1;
    }

    v81(v68, v67, 1, v66);
    sub_1B698114C();
    v70 = *(v69 + 48);
    v89 = *(v69 + 64);
    v87[2](v65, v91, v25);
    v71 = *(v90 + 16);
    v72 = v65 + v70;
    v57 = v88;
    v71(v72, v88, v66);
    v73 = v64;
    v74 = v83;
    sub_1B69B20C4(v73, v83);
    v75 = v80;
    if (v80(v74, 1, v66) == 1)
    {
      v71(v65 + v89, v57, v66);
      v56 = v66;
      if (v75(v74, 1, v66) != 1)
      {
        sub_1B69E9EBC(v74);
      }
    }

    else
    {
      v78(v65 + v89, v74, v66);
      v56 = v66;
    }

    swift_storeEnumTagMultiPayload();
    v48 = v82;
    sub_1B6A5B000(v65, v82 + OBJC_IVAR___AARotationMode_mode);
    sub_1B69E9EBC(v85);
    v54 = v90;
    v53 = v91;
    v26 = v87;
    v58 = v79;
  }

  else
  {
    if (v87)
    {

      (*(v90 + 8))(v88, v40);
      (v26[1])(v91, v25);
      goto LABEL_14;
    }

    v46 = sub_1B6AB92B0();
    v87 = [v39 decodeInt64ForKey_];

    v47 = sub_1B6AB92B0();
    v85 = [v39 decodeInt64ForKey_];

    v48 = v82;
    v49 = v82 + OBJC_IVAR___AARotationMode_mode;
    sub_1B698103C(0);
    v51 = v50[12];
    v52 = v50[16];
    v84 = v50[20];
    v53 = v91;
    v26[2](v49, v91, v25);
    v54 = v90;
    v55 = &v49[v51];
    v57 = v88;
    v56 = v89;
    (*(v90 + 16))(v55, v88, v89);
    *&v49[v52] = v87;
    *&v49[v84] = v85;
    v58 = v39;
    swift_storeEnumTagMultiPayload();
  }

  v93.receiver = v48;
  v93.super_class = ObjectType;
  v76 = objc_msgSendSuper2(&v93, sel_init);

  (*(v54 + 8))(v57, v56);
  (v26[1])(v53, v25);
  return v76;
}

uint64_t sub_1B6A5BC9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B6A5BCE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall BridgedRotationMode.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v2 = sub_1B6AB8DB0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v60 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v60 - v7;
  v69 = sub_1B6AB8E40();
  v8 = *(v69 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RotationMode();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  v61 = OBJC_IVAR___AARotationMode_mode;
  sub_1B69E9DFC(v1 + OBJC_IVAR___AARotationMode_mode, &v60 - v16);
  v18 = swift_getEnumCaseMultiPayload() == 1;
  v66 = v2;
  if (v18)
  {
    sub_1B698114C();
    v20 = *(v19 + 48);
    v21 = v3;
    v22 = v3[1];
    v22(&v17[*(v19 + 64)], v2);
    v64 = v22;
    v22(&v17[v20], v2);
    v3 = v21;
    v25 = 1;
  }

  else
  {
    sub_1B698103C(0);
    v24 = &v17[*(v23 + 48)];
    v64 = v3[1];
    v64(v24, v2);
    v25 = 0;
  }

  v26 = v8;
  v27 = *(v8 + 8);
  v28 = v69;
  v62 = v8 + 8;
  v63 = v27;
  v27(v17, v69);
  v29 = sub_1B6AB92B0();
  v30 = isa;
  [(objc_class *)isa encodeInteger:v25 forKey:v29];

  sub_1B69E9DFC(v1 + v61, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B698114C();
    v32 = *(v31 + 48);
    v33 = *(v31 + 64);
    v34 = v65;
    (*(v26 + 32))(v65, v15, v28);
    v35 = v28;
    v36 = v3[4];
    v37 = &v15[v32];
    v38 = v68;
    v39 = v66;
    v36(v68, v37, v66);
    v40 = &v15[v33];
    v41 = v39;
    v42 = v60;
    v36(v60, v40, v39);
    v43 = sub_1B6AB8DE0();
    v44 = sub_1B6AB92B0();
    [(objc_class *)v30 encodeObject:v43 forKey:v44];

    v45 = sub_1B6AB8D20();
    v46 = sub_1B6AB92B0();
    [(objc_class *)v30 encodeObject:v45 forKey:v46];

    v47 = sub_1B6AB8D20();
    v48 = sub_1B6AB92B0();
    [(objc_class *)v30 encodeObject:v47 forKey:v48];

    v49 = v64;
    v64(v42, v41);
    v50 = v35;
  }

  else
  {
    sub_1B698103C(0);
    v52 = *&v15[v51[16]];
    v53 = v51[12];
    v61 = *&v15[v51[20]];
    v34 = v65;
    (*(v8 + 32))(v65, v15, v28);
    v38 = v68;
    v41 = v66;
    (v3[4])(v68, &v15[v53], v66);
    v54 = sub_1B6AB8DE0();
    v55 = sub_1B6AB92B0();
    [(objc_class *)v30 encodeObject:v54 forKey:v55];

    v56 = sub_1B6AB8D20();
    v57 = sub_1B6AB92B0();
    [(objc_class *)v30 encodeObject:v56 forKey:v57];

    v58 = sub_1B6AB92B0();
    [v30 &selRef:v52 timeEventType:v58 submitAndRestartWithSession:? startTime:? + 7];

    v59 = sub_1B6AB92B0();
    [v30 &selRef:v61 timeEventType:v59 submitAndRestartWithSession:? startTime:? + 7];

    v50 = v69;
    v49 = v64;
  }

  v49(v38, v41);
  v63(v34, v50);
}

id BridgedRotationMode.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedRotationMode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BridgedRotationMode()
{
  result = qword_1EB95BC50;
  if (!qword_1EB95BC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A5C578()
{
  result = type metadata accessor for RotationMode();
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

id sub_1B6A5C648()
{
  v0 = type metadata accessor for BridgedSessionGroup();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___AASessionGroup_groupName];
  *v2 = 0x746C7561666564;
  *(v2 + 1) = 0xE700000000000000;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1EDBC8A60 = result;
  return result;
}

id BridgedSessionGroup.__allocating_init(groupName:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___AASessionGroup_groupName];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id static BridgedSessionGroup.default.getter()
{
  if (qword_1EDBC8A58 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBC8A60;

  return v1;
}

uint64_t BridgedSessionGroup.groupName.getter()
{
  v1 = (v0 + OBJC_IVAR___AASessionGroup_groupName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

id BridgedSessionGroup.init(groupName:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___AASessionGroup_groupName];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedSessionGroup.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedSessionGroup.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6A5CCAC()
{
  result = sub_1B699F46C(10, 0xE100000000000000);
  qword_1EDBCB6E0 = result;
  *algn_1EDBCB6E8 = v1;
  return result;
}

uint64_t sub_1B6A5CCD8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = v5 >> 5;
  if (v5 >> 5 <= 1)
  {
    if (!v6)
    {
      sub_1B6AB9CA0();

      v17 = 0x7461427974706D65;
      MEMORY[0x1B8C97BE0](v1, v2);
      MEMORY[0x1B8C97BE0](0x203A61746164202CLL, 0xE800000000000000);
      sub_1B69A97A4(v4, v3);
      sub_1B69A9B10();
      sub_1B699918C();
      v8 = sub_1B6AB9290();
      v10 = v9;

      MEMORY[0x1B8C97BE0](v8, v10);

      MEMORY[0x1B8C97BE0](0xD000000000000013, 0x80000001B6ACC1B0);
      if (v5)
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (v5)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      MEMORY[0x1B8C97BE0](v11, v12);

      return v17;
    }

    sub_1B6AB9CA0();

    v17 = 0xD000000000000027;
    v7 = sub_1B6ABA080();
    goto LABEL_18;
  }

  if (v6 == 2)
  {
    sub_1B6AB9CA0();

    v17 = 0xD000000000000026;
    MEMORY[0x1B8C97BE0](v1, v2);
LABEL_19:
    MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
    return v17;
  }

  if (v6 == 3)
  {
    sub_1B6AB9CA0();

    v17 = 0xD000000000000018;
    v7 = sub_1B6AB9220();
LABEL_18:
    MEMORY[0x1B8C97BE0](v7);

    goto LABEL_19;
  }

  if (!(v4 | v2 | v1 | v3) && v5 == 128)
  {
    return 0xD000000000000012;
  }

  v14 = v4 | v2 | v3;
  if (v5 == 128 && v1 == 1 && !v14)
  {
    return 0xD000000000000017;
  }

  v16 = v1 == 2 && v14 == 0;
  if (v5 == 128 && v16)
  {
    return 0x736F6C43656C6966;
  }

  else
  {
    return 0x656C69466F6ELL;
  }
}

uint64_t sub_1B6A5D064@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled) == 1)
  {
    v4 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v4);
    (*(v5 + 16))(v4, v5);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  sub_1B698C128();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

uint64_t sub_1B6A5D130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t *a10)
{
  v130 = a8;
  v131 = a4;
  LODWORD(v136) = a7;
  v135 = a6;
  v132 = a5;
  v133 = a1;
  v150 = *MEMORY[0x1E69E9840];
  sub_1B697F028(0, &qword_1EDBCBCA8, type metadata accessor for Batch, MEMORY[0x1E69E6720]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v126 = (&v118 - v16);
  v17 = type metadata accessor for Batch();
  v124 = *(v17 - 8);
  v125 = v17;
  v18 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v123 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1B6AB90C0();
  v20 = *(v140 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v140);
  v24 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v118 - v25;
  v27 = a10[1];
  v134 = *a10;
  v129 = v27;
  v137 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  v28 = *(v10 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock);
  v29 = *(v28 + 16);
  v30 = *(v28 + 24);
  os_unfair_lock_lock_with_options();
  sub_1B6AB90B0();
  v127 = a3;
  v128 = a2;
  v31 = sub_1B699D580(a2, a3);
  v139 = v10;
  v32 = (v10 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  v33 = *(v10 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v34 = *(v10 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  v35 = __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v33);
  v36 = v138;
  (*(v34 + 32))(&v148, v31, v33, v34);
  if (!v36)
  {
    v37 = v134;
    v35 = v135;
    v38 = v136;
    v119 = 0;
    v120 = v32;
    v118 = v24;
    v138 = v31;
    v121 = v20;
    v122 = v26;
    if (v149 != 1)
    {
      sub_1B6A60A98();
      swift_allocError();
      *v57 = 2;
      *(v57 + 8) = 0;
      *(v57 + 16) = 0;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0x80;
      swift_willThrow();

      (*(v121 + 8))(v122, v140);
      goto LABEL_11;
    }

    v39 = v139;
    if (v148)
    {
      v40 = v133;
      v42 = v119;
      v41 = v120;
    }

    else
    {
      v60 = v120;
      sub_1B6982544(v120, &v144);
      v62 = v146;
      v61 = v147;
      v63 = __swift_project_boxed_opaque_existential_1(&v144, v146);
      v64 = v39[2];
      if (v38)
      {
        v35 = *(v39 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_contentType);
      }

      v142 = v37;
      v143 = v129;
      v65 = v130;
      v66 = v35;
      v35 = v63;
      v67 = v119;
      (*(v61 + 56))(v138, v130, v64, v66, v131, v132, &v142, v62, v61);
      v42 = v67;
      if (v67)
      {
        (*(v121 + 8))(v122, v140);

        __swift_destroy_boxed_opaque_existential_1(&v144);
        goto LABEL_12;
      }

      __swift_destroy_boxed_opaque_existential_1(&v144);
      sub_1B6982544(v60, &v144);
      v85 = v146;
      v86 = v147;
      __swift_project_boxed_opaque_existential_1(&v144, v146);
      v87 = *(v65 + *(type metadata accessor for Session() + 32));
      sub_1B697F028(0, &qword_1EDBCB610, sub_1B69B4824, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B6ABF500;
      *(inited + 32) = 1701869940;
      v89 = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = 0x6E6F6973736573;
      *(inited + 56) = 0xE700000000000000;
      *(inited + 72) = v89;
      *(inited + 80) = 1635017060;
      *(inited + 88) = 0xE400000000000000;
      sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
      *(inited + 120) = v90;
      *(inited + 96) = v87;

      sub_1B69B4888(inited);
      swift_setDeallocating();
      sub_1B69B4824();
      swift_arrayDestroy();
      v91 = objc_opt_self();
      v92 = sub_1B6AB91F0();

      v141[0] = 0;
      v93 = [v91 dataWithJSONObject:v92 options:0 error:v141];

      v94 = v141[0];
      v95 = v140;
      v96 = v122;
      if (!v93)
      {
        v35 = v94;
        sub_1B6AB8A70();

        swift_willThrow();

        (*(v121 + 8))(v96, v95);
        __swift_destroy_boxed_opaque_existential_1(&v144);
        goto LABEL_11;
      }

      v97 = v85;
      v98 = sub_1B6AB8C80();
      v100 = v99;

      v142 = v98;
      v143 = v100;
      if (qword_1EDBCB070 != -1)
      {
        swift_once();
      }

      sub_1B6AB8CA0();
      v101 = v142;
      v102 = v143;
      v103 = v138;
      (*(v86 + 8))(v142, v143, v138, v97, v86);
      v112 = MEMORY[0x1E69E6158];
      sub_1B6993C94(v101, v102);
      __swift_destroy_boxed_opaque_existential_1(&v144);
      v113 = v120[3];
      v114 = v120[4];
      v115 = v120;
      __swift_project_boxed_opaque_existential_1(v120, v113);
      v144 = 1;
      v145 = 1;
      (*(v114 + 40))(v103, &v144, v113, v114);
      v39 = v139;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98D0();
      sub_1B69990B4();
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_1B6ABD890;
      *(v116 + 56) = v112;
      *(v116 + 64) = sub_1B698CEC0();
      v117 = v127;
      *(v116 + 32) = v128;
      *(v116 + 40) = v117;

      sub_1B6AB8F70();

      v40 = v133;
      v41 = v115;
    }

    sub_1B6982544(v41, &v144);
    v43 = v146;
    v44 = v147;
    v139 = __swift_project_boxed_opaque_existential_1(&v144, v146);
    sub_1B697F028(0, &qword_1EDBCB610, sub_1B69B4824, MEMORY[0x1E69E6F90]);
    v45 = swift_initStackObject();
    v136 = xmmword_1B6ABF500;
    *(v45 + 16) = xmmword_1B6ABF500;
    *(v45 + 32) = 1701869940;
    v46 = MEMORY[0x1E69E6158];
    *(v45 + 40) = 0xE400000000000000;
    *(v45 + 48) = 0x746E657665;
    *(v45 + 56) = 0xE500000000000000;
    *(v45 + 72) = v46;
    *(v45 + 80) = 1635017060;
    *(v45 + 88) = 0xE400000000000000;
    sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
    *(v45 + 120) = v47;
    *(v45 + 96) = v40;

    sub_1B69B4888(v45);
    swift_setDeallocating();
    sub_1B69B4824();
    swift_arrayDestroy();
    v48 = objc_opt_self();
    v49 = sub_1B6AB91F0();

    v148 = 0;
    v50 = [v48 dataWithJSONObject:v49 options:0 error:&v148];

    v51 = v148;
    if (!v50)
    {
      v35 = v51;
      v68 = sub_1B6AB8A70();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(&v144);
      v144 = v68;
      v69 = v68;
      sub_1B697ED90(0, &qword_1EDBCBB00);
      v70 = swift_dynamicCast();
      v71 = v122;
      v72 = v138;
      if (!v70 || (v142 & 1) != 0)
      {
        (*(v121 + 8))(v122, v140);

        goto LABEL_12;
      }

      v104 = v140;

      v105 = *(v72 + 16);
      v106 = *(v72 + 24);

      sub_1B6A5DF98(v105, v106);

      (*(v121 + 8))(v71, v104);

LABEL_37:
      v35 = 1;
      goto LABEL_12;
    }

    v52 = sub_1B6AB8C80();
    v54 = v53;

    v142 = v52;
    v143 = v54;
    if (qword_1EDBCB070 != -1)
    {
      swift_once();
    }

    sub_1B6AB8CA0();
    v55 = v142;
    v56 = v143;
    (*(v44 + 8))(v142, v143, v138, v43, v44);
    sub_1B6993C94(v55, v56);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    v73 = v118;
    sub_1B6AB90B0();
    v74 = sub_1B6AB90A0();
    v75 = *(v121 + 8);
    v75(v73, v140);
    v76 = sub_1B6AB90A0();
    if (v74 < v76)
    {
      __break(1u);
    }

    else
    {
      v139 = v75;
      v11 = (v74 - v76) / 1000000.0;
      v42 = v128;
      if (qword_1EDBCCEE0 == -1)
      {
LABEL_22:
        sub_1B6AB98D0();
        sub_1B69990B4();
        v77 = swift_allocObject();
        *(v77 + 16) = v136;
        *(v77 + 56) = MEMORY[0x1E69E6158];
        *(v77 + 64) = sub_1B698CEC0();
        v78 = MEMORY[0x1E69E63B0];
        *(v77 + 32) = v42;
        v79 = v127;
        *(v77 + 40) = v127;
        v80 = MEMORY[0x1E69E6438];
        *(v77 + 96) = v78;
        *(v77 + 104) = v80;
        *(v77 + 72) = v11;

        sub_1B6AB8F70();
        v81 = v79;
        v82 = v128;

        sub_1B6A5E174(v82, v81);
        if (*(*(v39 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_transparencyLogging) + OBJC_IVAR___AATransparencyLogging_isEnabled) == 1)
        {
          v83 = v82;
          v84 = v126;
          sub_1B69AE29C(v83, v81, v126);
          if ((*(v124 + 48))(v84, 1, v125) == 1)
          {
            sub_1B698E840(v84, &qword_1EDBCBCA8, type metadata accessor for Batch);
          }

          else
          {
            v107 = v84;
            v108 = v123;
            sub_1B69B6BF4(v107, v123, type metadata accessor for Batch);
            sub_1B6A287EC(v108);
            sub_1B69B6CC4(v108, type metadata accessor for Batch);
          }
        }

        if ((a9 & 1) == 0 || (v109 = v39[3], *(v138 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_eventCount) < *(v109 + OBJC_IVAR___AAUploadBatchEventConfig_maxEventsPerSessionBatch)) && *(v138 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_byteSize) < *(v109 + OBJC_IVAR___AAUploadBatchEventConfig_maxByteSizePerSessionBatch))
        {
          (v139)(v122, v140);

          v35 = 0;
          goto LABEL_12;
        }

        v110 = *(v138 + 16);
        v111 = *(v138 + 24);

        sub_1B6A5DF98(v110, v111);

        (v139)(v122, v140);
        goto LABEL_37;
      }
    }

    swift_once();
    goto LABEL_22;
  }

  (*(v20 + 8))(v26, v140);

LABEL_11:
  v39 = v139;
LABEL_12:
  os_unfair_lock_unlock(*(*(v39 + v137) + 16));
  v58 = *MEMORY[0x1E69E9840];
  return v35;
}

uint64_t sub_1B6A5DF98(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B699D580(a1, a2);
  v6 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v7 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v6);
  (*(v7 + 24))(v5, v6, v7);

  return sub_1B6A60868(v2, a1, a2);
}

uint64_t sub_1B6A5E174(uint64_t a1, char *a2)
{
  v66 = a2;
  v70 = *MEMORY[0x1E69E9840];
  sub_1B697F028(0, &qword_1EDBCBCA8, type metadata accessor for Batch, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v62 - v6);
  v8 = sub_1B6AB8BB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v62 - v17;
  v19 = type metadata accessor for UploadDropbox.Debugging(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 32);
  sub_1B6A0DC34(v22);
  sub_1B698C128();
  result = (*(*(v24 - 8) + 48))(v22, 1, v24);
  if (result != 1)
  {
    (*(v9 + 32))(v18, v22, v8);
    v26 = v66;
    v65 = v18;
    sub_1B6AB8B30();
    sub_1B6AB8B40();
    v63 = *(v9 + 8);
    v64 = v8;
    v63(v13, v8);
    sub_1B69AE29C(a1, v26, v7);
    v27 = type metadata accessor for Batch();
    v28 = v16;
    v29 = v7;
    if ((*(*(v27 - 8) + 48))(v7, 1, v27) == 1)
    {
      sub_1B698E840(v7, &qword_1EDBCBCA8, type metadata accessor for Batch);
LABEL_14:
      v59 = v64;
      v58 = v65;
      v60 = v63;
      v63(v28, v64);
      result = v60(v58, v59);
      goto LABEL_15;
    }

    v30 = Batch.toJSONObject()();
    v66 = v16;
    v31 = objc_opt_self();
    v32 = MEMORY[0x1E69E6158];
    v33 = sub_1B6AB91F0();
    v34 = [v31 isValidJSONObject_];

    if (v34)
    {
      v35 = sub_1B6AB91F0();

      v68 = 0;
      v36 = [v31 dataWithJSONObject:v35 options:0 error:&v68];

      v37 = v68;
      if (v36)
      {
        v38 = sub_1B6AB8C80();
        v40 = v39;

        sub_1B69B6CC4(v29, type metadata accessor for Batch);
        v28 = v66;
        sub_1B6AB8C90();
        sub_1B6993C94(v38, v40);
        goto LABEL_14;
      }

      v47 = v37;
      v45 = sub_1B6AB8A70();
    }

    else
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98F0();
      sub_1B69990B4();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1B6ABD890;
      v42 = sub_1B6AB9220();
      v44 = v43;
      *(v41 + 56) = v32;
      *(v41 + 64) = sub_1B698CEC0();
      *(v41 + 32) = v42;
      *(v41 + 40) = v44;
      sub_1B6AB8F70();

      sub_1B6A2A954();
      v45 = swift_allocError();
      *v46 = v30;
      *(v46 + 8) = 0;
    }

    swift_willThrow();
    v48 = v66;
    sub_1B69B6CC4(v29, type metadata accessor for Batch);
    v49 = MEMORY[0x1E69E6158];
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    sub_1B69990B4();
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1B6ABF500;
    v51 = sub_1B6AB8B80();
    v53 = v52;
    *(v50 + 56) = v49;
    v54 = v48;
    v55 = sub_1B698CEC0();
    *(v50 + 64) = v55;
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    v68 = 0;
    v69 = 0xE000000000000000;
    v67 = v45;
    sub_1B697ED90(0, &qword_1EDBCBB00);
    sub_1B6AB9DF0();
    v56 = v68;
    v57 = v69;
    *(v50 + 96) = v49;
    *(v50 + 104) = v55;
    v28 = v54;
    *(v50 + 72) = v56;
    *(v50 + 80) = v57;
    sub_1B6AB8F70();

    goto LABEL_14;
  }

LABEL_15:
  v61 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B6A5E87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = sub_1B699D580(a2, a3);
  v7 = v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager;
  v8 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v9 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v8);
  (*(v9 + 32))(&v35, v6, v8, v9);
  if (v4)
  {
    goto LABEL_11;
  }

  if (v36 != 1)
  {
    sub_1B6A60A98();
    swift_allocError();
    v25 = 2;
LABEL_10:
    *v24 = v25;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x80;
    swift_willThrow();
LABEL_11:

    goto LABEL_12;
  }

  if (!v35)
  {
    sub_1B6A60A98();
    swift_allocError();
    v25 = 3;
    goto LABEL_10;
  }

  sub_1B6982544(v7, v32);
  v10 = v33;
  v11 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  sub_1B697F028(0, &qword_1EDBCB610, sub_1B69B4824, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABF500;
  *(inited + 32) = 1701869940;
  v13 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x746E657665;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v13;
  *(inited + 80) = 1635017060;
  *(inited + 88) = 0xE400000000000000;
  sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
  *(inited + 120) = v14;
  *(inited + 96) = a1;

  sub_1B69B4888(inited);
  swift_setDeallocating();
  sub_1B69B4824();
  swift_arrayDestroy();
  v15 = objc_opt_self();
  v16 = sub_1B6AB91F0();

  v29 = 0;
  v17 = [v15 dataWithJSONObject:v16 options:0 error:&v29];

  v18 = v29;
  if (v17)
  {
    v19 = sub_1B6AB8C80();
    v21 = v20;

    v30 = v19;
    v31 = v21;
    if (qword_1EDBCB070 != -1)
    {
      swift_once();
    }

    sub_1B6AB8CA0();
    v22 = v30;
    v23 = v31;
    (*(v11 + 8))(v30, v31, v6, v10, v11);

    sub_1B6993C94(v22, v23);
  }

  else
  {
    v28 = v18;
    sub_1B6AB8A70();

    swift_willThrow();
  }

  result = __swift_destroy_boxed_opaque_existential_1(v32);
LABEL_12:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B6A5EC3C(uint64_t a1)
{
  v3 = v2;
  v75 = *MEMORY[0x1E69E9840];
  v57 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  v4 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v7 = *(v1 + 40);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v1 + 40) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v59 = v1;
  v62 = *(v1 + 40);
  v63 = (v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v60 = v14;
  for (i = v9; ; v9 = i)
  {
    if (v13)
    {
      v16 = v3;
      v17 = v15;
      goto LABEL_12;
    }

    do
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      if (v17 >= v14)
      {

        os_unfair_lock_unlock(*(*(v59 + v57) + 16));
        goto LABEL_27;
      }

      v13 = *(v9 + 8 * v17);
      ++v15;
    }

    while (!v13);
    v16 = v3;
LABEL_12:
    v18 = *(*(v62 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v13)))));
    v19 = v63[3];
    v20 = v63[4];
    __swift_project_boxed_opaque_existential_1(v63, v19);
    v21 = *(v20 + 32);

    v21(&v73, v22, v19, v20);
    v3 = v16;
    if (v16)
    {

      goto LABEL_30;
    }

    v13 &= v13 - 1;
    if (v74 != 1 || !v73)
    {

      goto LABEL_5;
    }

    sub_1B6982544(v63, v70);
    v23 = v71;
    v56 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    v68[0] = 1701869940;
    v68[1] = 0xE400000000000000;
    v68[2] = 0x6E6F6973736573;
    v68[3] = 0xE700000000000000;
    v68[5] = MEMORY[0x1E69E6158];
    v69[0] = 1635017060;
    v69[1] = 0xE400000000000000;
    sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
    v69[5] = v24;
    v69[2] = a1;
    sub_1B6988228(0, &qword_1EDBCBB10, MEMORY[0x1E69E6EC8]);
    v25 = sub_1B6AB9E90();

    sub_1B69B6AF8(v68, &v65, sub_1B69B4824);
    v26 = v65;
    v27 = v66;
    v28 = sub_1B6993940(v65, v66);
    if (v29)
    {
      goto LABEL_32;
    }

    *(v25 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v28;
    v30 = (v25[6] + 16 * v28);
    *v30 = v26;
    v30[1] = v27;
    sub_1B69979CC(v67, (v25[7] + 32 * v28));
    v31 = v25[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_33;
    }

    v25[2] = v33;
    sub_1B69B6AF8(v69, &v65, sub_1B69B4824);
    v34 = v65;
    v35 = v66;
    v36 = sub_1B6993940(v65, v66);
    if (v37)
    {
      goto LABEL_32;
    }

    *(v25 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v36;
    v38 = (v25[6] + 16 * v36);
    *v38 = v34;
    v38[1] = v35;
    sub_1B69979CC(v67, (v25[7] + 32 * v36));
    v39 = v25[2];
    v32 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v32)
    {
      goto LABEL_33;
    }

    v25[2] = v40;
    sub_1B69B4824();
    swift_arrayDestroy();
    v41 = objc_opt_self();
    v42 = sub_1B6AB91F0();

    v64 = 0;
    v43 = [v41 dataWithJSONObject:v42 options:0 error:&v64];

    v44 = v64;
    if (!v43)
    {
      break;
    }

    v45 = sub_1B6AB8C80();
    v47 = v46;

    v65 = v45;
    v66 = v47;
    if (qword_1EDBCB070 != -1)
    {
      swift_once();
    }

    sub_1B6AB8CA0();
    v48 = v65;
    v49 = v66;
    (*(v56 + 8))(v65, v66, v18, v23);

    sub_1B6993C94(v48, v49);
    __swift_destroy_boxed_opaque_existential_1(v70);
LABEL_5:
    v15 = v17;
    v14 = v60;
  }

  v50 = v44;
  v51 = sub_1B6AB8A70();

  swift_willThrow();
  v3 = 0;
  __swift_destroy_boxed_opaque_existential_1(v70);
  v65 = v51;
  v52 = v51;
  sub_1B697ED90(0, &qword_1EDBCBB00);
  if (swift_dynamicCast() && (v70[0] & 1) == 0)
  {

    v54 = *(v18 + 16);
    v53 = *(v18 + 24);

    sub_1B6A5DF98(v54, v53);

    goto LABEL_5;
  }

LABEL_30:
  os_unfair_lock_unlock(*(*(v59 + v57) + 16));
LABEL_27:
  v55 = *MEMORY[0x1E69E9840];
}

void sub_1B6A5F260()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1B697F028(0, &qword_1EDBCBCA8, type metadata accessor for Batch, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = (&v66 - v5);
  v71 = type metadata accessor for Batch();
  v68 = *(v71 - 8);
  v6 = *(v68 + 64);
  v7 = MEMORY[0x1EEE9AC00](v71);
  v70 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v66 - v9;
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, v2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v66 - v12;
  v14 = type metadata accessor for Session();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_1B6AB8BB0();
  v76 = *(v78 - 8);
  v19 = *(v76 + 64);
  v20 = MEMORY[0x1EEE9AC00](v78);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v66 - v23;
  v25 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  v26 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock);
  v27 = *(v26 + 16);
  v28 = *(v26 + 24);
  os_unfair_lock_lock_with_options();
  v29 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v74 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  v75 = v29;
  v77 = (v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  v73 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v29);
  v30 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
  swift_beginAccess();
  sub_1B69B596C(v1 + v30, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B698E840(v13, qword_1EDBCCC78, type metadata accessor for Session);
    v31 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v32 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v31);
    (*(v32 + 8))(v31, v32);
    v33 = v1;
    v34 = v78;
    v35 = v76;
  }

  else
  {
    sub_1B69B6BF4(v13, v18, type metadata accessor for Session);
    v36 = v25;
    v38 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v37 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v38);
    v39 = v38;
    v25 = v36;
    (*(v37 + 8))(v39, v37);
    v40 = *v18;
    v41 = v18[1];
    sub_1B6AB8B30();
    v42 = v76;
    v34 = v78;
    (*(v76 + 8))(v22, v78);
    sub_1B69B6CC4(v18, type metadata accessor for Session);
    v33 = v1;
    v35 = v42;
  }

  v43 = v81;
  v44 = (v74[16])(v24, v75);
  if (!v43)
  {
    v45 = v44;
    v81 = 0;
    v67 = v25;
    (*(v35 + 8))(v24, v34);
    v76 = *(v45 + 16);
    if (!v76)
    {
      v74 = MEMORY[0x1E69E7CC0];
LABEL_31:

      os_unfair_lock_unlock(*(*(v33 + v67) + 16));
      return;
    }

    swift_beginAccess();
    v46 = 0;
    v73 = (v68 + 48);
    v47 = (v45 + 40);
    v74 = MEMORY[0x1E69E7CC0];
    v75 = v45;
    while (1)
    {
      if (v46 >= *(v45 + 16))
      {
        __break(1u);
        return;
      }

      v48 = *(v47 - 1);
      v49 = *v47;
      v50 = *(*(v33 + 40) + 16);

      if (v50)
      {

        sub_1B6993940(v48, v49);
        LODWORD(v78) = v51;
      }

      else
      {
        LODWORD(v78) = 0;
      }

      v52 = v33;
      v53 = sub_1B699D580(v48, v49);
      v55 = v77[3];
      v54 = v77[4];
      __swift_project_boxed_opaque_existential_1(v77, v55);
      v56 = v81;
      v57 = (*(v54 + 32))(&v79, v53, v55, v54);
      v81 = v56;
      if (v56)
      {

        v33 = v52;
        v25 = v67;
        goto LABEL_6;
      }

      if (v80 == 1)
      {
        v33 = v52;
        if (v79 && (v78 & 1) == 0)
        {
          v58 = MEMORY[0x1B8C98C40](v57);
          v59 = v72;
          sub_1B69AE29C(v48, v49, v72);

          if ((*v73)(v59, 1, v71) == 1)
          {
            sub_1B698E840(v59, &qword_1EDBCBCA8, type metadata accessor for Batch);
          }

          else
          {
            v60 = v59;
            v61 = v69;
            sub_1B69B6BF4(v60, v69, type metadata accessor for Batch);
            sub_1B69B6AF8(v61, v70, type metadata accessor for Batch);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v62 = v74;
            }

            else
            {
              v62 = sub_1B69E3918(0, v74[2] + 1, 1, v74);
            }

            v64 = v62[2];
            v63 = v62[3];
            v74 = v62;
            if (v64 >= v63 >> 1)
            {
              v74 = sub_1B69E3918(v63 > 1, v64 + 1, 1, v74);
            }

            sub_1B69B6CC4(v69, type metadata accessor for Batch);
            v65 = v74;
            v74[2] = v64 + 1;
            sub_1B69B6BF4(v70, v65 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v64, type metadata accessor for Batch);
          }

          v45 = v75;
          objc_autoreleasePoolPop(v58);
          goto LABEL_11;
        }
      }

      else
      {

        v33 = v52;
      }

      v45 = v75;
LABEL_11:
      ++v46;

      v47 += 2;
      if (v76 == v46)
      {
        goto LABEL_31;
      }
    }
  }

  (*(v35 + 8))(v24, v34);
LABEL_6:
  os_unfair_lock_unlock(*(*(v33 + v25) + 16));
}

void sub_1B6A5FA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = v5;
  v13 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  v14 = *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock);
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  os_unfair_lock_lock_with_options();
  if (a5 <= 1u)
  {
    if (a5)
    {
      if (a4)
      {
        sub_1B6A110A8(a3, a4, 1u);
        sub_1B6A60464(a1, a2, a3, a4);
      }

      goto LABEL_19;
    }

LABEL_9:
    sub_1B6A110A8(a3, a4, a5);
    sub_1B6A60464(a1, a2, a3, a4);

    if (!a5)
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B69990B4();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1B6ABD890;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1B698CEC0();
      *(v29 + 32) = a1;
      *(v29 + 40) = a2;

      sub_1B6AB9900();
      sub_1B6AB8F70();
      goto LABEL_25;
    }

    if (a5 != 1)
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98F0();
      sub_1B69990B4();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1B6ABD890;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1B698CEC0();
      *(v23 + 32) = a1;
      *(v23 + 40) = a2;

      sub_1B6AB8F70();
LABEL_25:

      v30 = *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
      __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24));
      sub_1B699D580(a1, a2);
      (*(v30 + 48))();

LABEL_46:
      v28 = *(v7 + v13);
      goto LABEL_47;
    }

LABEL_19:
    v51 = v13;
    v24 = sub_1B699D580(a1, a2);
    v25 = (v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
    v26 = *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
    v27 = *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
    __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v26);
    (*(v27 + 32))(&v49, v24, v26, v27);
    if (v6)
    {

      goto LABEL_21;
    }

    v31 = v49;
    if (v50 == 1)
    {
      if (!v49)
      {
        if (qword_1EDBCCEE0 != -1)
        {
          swift_once();
        }

        sub_1B6AB98E0();
        sub_1B69990B4();
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1B6ABD890;
        *(v46 + 56) = MEMORY[0x1E69E6158];
        *(v46 + 64) = sub_1B698CEC0();
        *(v46 + 32) = a1;
        *(v46 + 40) = a2;

        sub_1B6AB8F70();

        goto LABEL_44;
      }

      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98E0();
      sub_1B69990B4();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1B6ABD890;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = sub_1B698CEC0();
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;

      sub_1B6AB8F70();

      v33 = v25[3];
      v34 = v25[4];
      __swift_project_boxed_opaque_existential_1(v25, v33);
      v47 = 2;
    }

    else
    {
      if (v49 >= *(*(v7 + 24) + OBJC_IVAR___AAUploadBatchEventConfig_maxUploadTries))
      {
        if (qword_1EDBCCEE0 != -1)
        {
          swift_once();
        }

        sub_1B6AB98F0();
        sub_1B69990B4();
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1B6ABF500;
        v47 = v31;
        v40 = sub_1B6ABA080();
        v42 = v41;
        *(v39 + 56) = MEMORY[0x1E69E6158];
        v43 = sub_1B698CEC0();
        *(v39 + 32) = v40;
        *(v39 + 40) = v42;
        *(v39 + 96) = MEMORY[0x1E69E6158];
        *(v39 + 104) = v43;
        *(v39 + 64) = v43;
        *(v39 + 72) = a1;
        *(v39 + 80) = a2;

        sub_1B6AB8F70();

        v44 = v25[3];
        v45 = v25[4];
        __swift_project_boxed_opaque_existential_1(v25, v44);
        (*(v45 + 48))(v24, v44, v45);

        goto LABEL_45;
      }

      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B69990B4();
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1B6ABF500;
      v37 = v31 + 1;
      v38 = MEMORY[0x1E69E65A8];
      *(v36 + 56) = MEMORY[0x1E69E6530];
      *(v36 + 64) = v38;
      *(v36 + 32) = v37;
      *(v36 + 96) = MEMORY[0x1E69E6158];
      *(v36 + 104) = sub_1B698CEC0();
      *(v36 + 72) = a1;
      *(v36 + 80) = a2;

      sub_1B6AB9900();
      sub_1B6AB8F70();

      v33 = v25[3];
      v34 = v25[4];
      __swift_project_boxed_opaque_existential_1(v25, v33);
      v47 = v37;
    }

    v48 = 0;
    (*(v34 + 40))(v24, &v47, v33, v34);
LABEL_44:

LABEL_45:
    v13 = v51;
    goto LABEL_46;
  }

  if (a5 == 2)
  {
    goto LABEL_9;
  }

  if (a5 != 3)
  {
    if (a3 | a4)
    {
      if (qword_1EDBCCEE0 == -1)
      {
        goto LABEL_32;
      }
    }

    else if (qword_1EDBCCEE0 == -1)
    {
LABEL_32:
      sub_1B69990B4();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1B6ABD890;
      *(v35 + 56) = MEMORY[0x1E69E6158];
      *(v35 + 64) = sub_1B698CEC0();
      *(v35 + 32) = a1;
      *(v35 + 40) = a2;

      sub_1B6AB9900();
      sub_1B6AB8F70();

      goto LABEL_46;
    }

    swift_once();
    goto LABEL_32;
  }

  v51 = v13;
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B6AB98F0();
  sub_1B69990B4();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B6ABF500;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1B698CEC0();
  *(v17 + 64) = v19;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  v20 = ContentType.description.getter(a3);
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  *(v17 + 72) = v20;
  *(v17 + 80) = v21;
  sub_1B6AB8F70();

  v22 = *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24));
  sub_1B699D580(a1, a2);
  (*(v22 + 48))();

  if (!v6)
  {
    goto LABEL_45;
  }

LABEL_21:
  v28 = *(v7 + v51);
LABEL_47:
  os_unfair_lock_unlock(*(v28 + 16));
}

uint64_t sub_1B6A60464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v6 = sub_1B6AB8BB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v31 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v31 - v15;
  v17 = type metadata accessor for UploadDropbox.Debugging(0);
  v18 = *(*(v17 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v22 = *(v4 + 32);
    sub_1B6A0DC34(v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1B698C128();
    result = (*(*(v23 - 8) + 48))(v21, 1, v23);
    if (result != 1)
    {
      (*(v7 + 32))(v16, v21, v6);
      sub_1B6AB8B30();
      sub_1B6AB8B40();
      v24 = *(v7 + 8);
      v31[2] = v7 + 8;
      v24(v11, v6);
      v25 = sub_1B6AB88A0();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_1B6AB8890();
      v33 = v32;
      v34 = a4;
      sub_1B6A60A44();
      v28 = sub_1B6AB8870();
      v30 = v29;

      sub_1B6AB8C90();
      sub_1B6993C94(v28, v30);
      v24(v14, v6);
      return (v24)(v16, v6);
    }
  }

  return result;
}

uint64_t sub_1B6A60868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = sub_1B6993940(a2, a3);
  if (v8)
  {
    v9 = v7;
    v10 = *(a1 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + 40);
    *(a1 + 40) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69DDE44();
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(*(v12 + 56) + 8 * v9);

    sub_1B69AD900(v9, v12);
    *(a1 + 40) = v12;
  }

  return swift_endAccess();
}

uint64_t sub_1B6A6092C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  sub_1B698E840(v0 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession, qword_1EDBCCC78, type metadata accessor for Session);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager));
  v3 = *(v0 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock);

  return v0;
}

uint64_t sub_1B6A609D0()
{
  sub_1B6A6092C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1B6A60A44()
{
  result = qword_1EB95BCC8[0];
  if (!qword_1EB95BCC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB95BCC8);
  }

  return result;
}

unint64_t sub_1B6A60A98()
{
  result = qword_1EDBC7F18;
  if (!qword_1EDBC7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC7F18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics13UploadDropboxC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1B6A60B0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FC && *(a1 + 33))
  {
    return (*a1 + 508);
  }

  v3 = ((*(a1 + 32) >> 5) | (8 * ((*(a1 + 24) >> 60) & 3 | (4 * ((*(a1 + 32) >> 1) & 0xF))))) ^ 0x1FF;
  if (v3 >= 0x1FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6A60B6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 508;
    *(result + 8) = 0;
    if (a3 >= 0x1FC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((-a2 >> 3) & 3) << 60;
      *(result + 32) = ((((-a2 >> 3) & 0x3F) - (a2 << 6)) >> 1) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_1B6A60BE0(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 32) & 1 | (32 * a2);
    *(result + 24) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 32) = v2;
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

BOOL sub_1B6A60C2C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimedData();
  v3 = swift_dynamicCastMetatype();
  v4 = OBJC_IVAR___AAEventProperty_dataType;
  if (v3)
  {
    v5 = *(a2 + OBJC_IVAR___AAEventProperty_dataType);
    type metadata accessor for BridgedTimedData();
    if (swift_dynamicCastMetatype())
    {
      return 1;
    }
  }

  type metadata accessor for EventData();
  v6 = swift_dynamicCastMetatype();
  v7 = *(a2 + v4);
  if (v6 && (type metadata accessor for BridgedEventData(), swift_dynamicCastMetatype()))
  {
    return 1;
  }

  else
  {
    return swift_dynamicCastMetatype() != 0;
  }
}

uint64_t sub_1B6A60CF4()
{
  v1 = (*v0 + OBJC_IVAR___AAEventProperty_dataKey);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1B6A60D38()
{
  v1 = *(*v0 + OBJC_IVAR___AAEventProperty_requirement);
  if (v1 == 1)
  {
    return 1;
  }

  if (!v1)
  {
    return 0;
  }

  v3 = *(*v0 + OBJC_IVAR___AAEventProperty_requirement);
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

uint64_t sub_1B6A60E00(_OWORD *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  result = type metadata accessor for CombineLatestStateMachine.State();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B6A60E88(_DWORD *a1, unsigned int a2, void *a3)
{
  v4 = a3[5];
  v5 = *(a3[4] - 8);
  v6 = *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v6;
  }

  v37 = v6 + ((((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80);
  v9 = a3[6];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 80);
  v12 = a3[7];
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 80);
  v16 = v15 | 7;
  v17 = ((v8 + 8) & ~v8) + (v11 | 7) + *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v17;
  }

  v18 = (v17 + 1) & ~(v11 | 7);
  v19 = ((v11 + 8) & ~v11) + v16 + *(v10 + 64);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  v20 = (v19 + v18 + 1) & ~v16;
  v21 = ((v15 + 8) & ~v15) + *(v13 + 64) + (((v11 | v8 | v15) & 0xF8 ^ 0x1F8) & ((v11 | v8 | v15) + 8));
  if (!*(v14 + 84))
  {
    ++v21;
  }

  v22 = (v21 + v20 + 8) & 0xFFFFFFFFFFFFFFF8;
  v23 = v22 + 8;
  if (v22 + 8 <= v37)
  {
    v23 = v37;
  }

  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v24 <= v23)
  {
    v24 = v23;
  }

  v25 = 8;
  if (v24 > 8)
  {
    v25 = v24;
  }

  v26 = 250 - (1u >> (8 * v25));
  if (v25 > 3)
  {
    v26 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v26 >= a2)
  {
    goto LABEL_41;
  }

  v27 = (v25 & 0xFFFFFFFFFFFFFFF8) + 16;
  v28 = v27 & 0xFFFFFFF8;
  if ((v27 & 0xFFFFFFF8) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = a2 - v26 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v32 = *(a1 + v27);
      if (v32)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v32 = *(a1 + v27);
      if (v32)
      {
        goto LABEL_37;
      }
    }

LABEL_41:
    v35 = *(a1 + v25);
    if (v26 <= (v35 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v35);
    }
  }

  if (!v31)
  {
    goto LABEL_41;
  }

  v32 = *(a1 + v27);
  if (!v32)
  {
    goto LABEL_41;
  }

LABEL_37:
  v34 = v32 - 1;
  if (v28)
  {
    v34 = 0;
    LODWORD(v28) = *a1;
  }

  return v26 + (v28 | v34) + 1;
}

void sub_1B6A61278(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[5];
  v6 = *(a4[4] - 8);
  v7 = *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v35 = v7 + ((((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v6 + 80)) & ~*(v6 + 80));
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = a4[6];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 80);
  v13 = a4[7];
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = v16 | 7;
  v18 = ((v9 + 8) & ~v9) + (v12 | 7) + *(v8 + 64);
  if (!*(v8 + 84))
  {
    ++v18;
  }

  v19 = (v18 + 1) & ~(v12 | 7);
  v20 = ((v12 + 8) & ~v12) + v17 + *(v11 + 64);
  if (!*(v11 + 84))
  {
    ++v20;
  }

  v21 = (v20 + v19 + 1) & ~v17;
  v22 = ((v16 + 8) & ~v16) + *(v14 + 64) + (((v12 | v9 | v16) & 0xF8 ^ 0x1F8) & ((v12 | v9 | v16) + 8));
  if (!*(v15 + 84))
  {
    ++v22;
  }

  v23 = (v22 + v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  v24 = v23 + 8;
  if (v23 + 8 <= v35)
  {
    v24 = v35;
  }

  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v25 <= v24)
  {
    v25 = v24;
  }

  if (v25 <= 8)
  {
    v25 = 8;
  }

  v26 = 250 - (1u >> (8 * v25));
  if (v25 > 3)
  {
    v26 = 250;
  }

  v27 = (v25 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v25 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v28 = a3 - v26 + 1;
  }

  else
  {
    v28 = 2;
  }

  if (v28 >= 0x10000)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  if (v28 < 0x100)
  {
    v29 = 1;
  }

  if (v28 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v26 < a3)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (a2 <= v26)
  {
    if (v31 > 1)
    {
      v34 = a1;
      if (v31 != 2)
      {
        *(a1 + v27) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_49;
      }

      *(a1 + v27) = 0;
    }

    else
    {
      v34 = a1;
      if (v31)
      {
        *(a1 + v27) = 0;
        if (!a2)
        {
          return;
        }

LABEL_49:
        *(v34 + v25) = -a2;
        return;
      }
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  if ((v25 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v32 = a2 - v26;
  }

  else
  {
    v32 = 1;
  }

  if ((v25 & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v33 = ~v26 + a2;
    bzero(a1, v27);
    *a1 = v33;
  }

  if (v31 > 1)
  {
    if (v31 == 2)
    {
      *(a1 + v27) = v32;
    }

    else
    {
      *(a1 + v27) = v32;
    }
  }

  else if (v31)
  {
    *(a1 + v27) = v32;
  }
}