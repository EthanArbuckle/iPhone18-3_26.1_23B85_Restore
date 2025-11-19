void sub_100019A1C()
{
  sub_10007F828();
  v1 = v0[OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_forceButtonToHideSymbol];
  v2 = [v0 imageView];
  if (v2)
  {
    v3 = v2;
    [v2 setHidden:v1];
  }
}

uint64_t sub_100019AA4()
{
  if (*(v0 + OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_lockButtonToDisabledState))
  {
    return 16;
  }

  v2 = sub_10007FB98();
  result = v2 & 8;
  if (v2)
  {
    if ((v2 & 4) != 0)
    {
      result |= 5uLL;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }
    }

    else
    {
      result |= 1uLL;
      if ((v2 & 0x10) == 0)
      {
        return result;
      }
    }

    return result | 0x10;
  }

  if ((v2 & 4) != 0)
  {
    result |= 4uLL;
  }

  if ((v2 & 0x10) != 0)
  {
    return result | 0x10;
  }

  return result;
}

id sub_100019B30(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100019B98(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100019C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - v7;
  v9 = type metadata accessor for CAUVehicleLayoutKey();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v55 - v15;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  sub_10001AF08(a2, v8);
  if ((v10[6])(v8, 1, v9) == 1)
  {
    sub_10001AEA0(v8);
    return;
  }

  v68 = v13;
  (v10[4])(v18, v8, v9);
  v19 = [objc_opt_self() sharedApplication];
  v20 = [v19 delegate];

  if (v20)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v21 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v72)
    {
LABEL_35:
      (v10[1])(v18, v9);
      return;
    }

    v65 = v72;
    v62 = v73;
    v63 = v74;
    v64 = v75;
    v66 = v76;
    v22 = v77;
    v67 = v78;
    sub_10001ABB4(a1, v18, a3);
    v23 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_ventsForLayoutKey;
    swift_beginAccess();
    if (!*(*(a3 + v23) + 16) || (, sub_10007DEE8(v18), v25 = v24, , (v25 & 1) == 0))
    {
      if (v22[2])
      {
        v26 = sub_10007DEE8(v18);
        if (v27)
        {
          v58 = v16;
          v28 = *(v22[7] + 8 * v26);
          v29 = OBJC_IVAR____TtC7Climate11ClimateZone_vents;
          swift_beginAccess();
          v30 = *(v28 + v29);
          (v10[2])(v68, v18, v9);
          if (v30 >> 62)
          {
            goto LABEL_38;
          }

          for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
          {
            v56 = v23;
            v57 = v22;
            v59 = a3;
            v60 = v10;
            v61 = v9;

            if (!i)
            {
              break;
            }

            v23 = 0;
            a3 = v30 & 0xFFFFFFFFFFFFFF8;
            v10 = _swiftEmptyArrayStorage;
            while (1)
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v23 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_37;
                }

                v32 = *(v30 + 8 * v23 + 32);
              }

              v22 = v32;
              v33 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              swift_unknownObjectWeakInit();
              swift_unknownObjectWeakAssign();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_1000C4B08(0, v10[2] + 1, 1, v10);
              }

              v9 = v10[2];
              v34 = v10[3];
              v22 = (v9 + 1);
              if (v9 >= v34 >> 1)
              {
                v10 = sub_1000C4B08((v34 > 1), v9 + 1, 1, v10);
              }

              v10[2] = v22;
              sub_10000A930(v71, &v10[v9 + 4], &qword_100115820);
              ++v23;
              if (v33 == i)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            ;
          }

          v10 = _swiftEmptyArrayStorage;
LABEL_25:
          v35 = v59;
          v36 = v56;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = *(v35 + v36);
          *(v35 + v36) = 0x8000000000000000;
          v38 = v68;
          sub_10004B610(v10, v68, isUniquelyReferenced_nonNull_native);
          v10 = v60;
          v9 = v61;
          (v60[1])(v38, v61);
          *(v35 + v36) = v70;
          v39 = swift_endAccess();
          __chkstk_darwin(v39);
          *(&v55 - 2) = v35;
          *(&v55 - 1) = v18;
          sub_100014BF8(sub_10001B1B4, (&v55 - 4), v30);
          a3 = v35;

          v16 = v58;
        }
      }
    }

    v40 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_stateForLayoutKey;
    swift_beginAccess();
    v41 = a3;
    if (*(*(a3 + v40) + 16))
    {

      sub_10007DEE8(v18);
      v43 = v42;

      if (v43)
      {
        goto LABEL_31;
      }
    }

    v44 = v16;
    v45 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_ventsInAutomodeForLayoutKey;
    swift_beginAccess();
    v46 = *(v41 + v45);
    if (*(v46 + 16))
    {

      v47 = sub_10007DEE8(v18);
      if (v48)
      {
        v49 = *(*(v46 + 56) + 8 * v47);

        (v10[2])(v44, v18, v9);
        v50 = *(v49 + 16);

        swift_beginAccess();
        sub_100078380(v50 != 0, v44);
        swift_endAccess();
LABEL_31:
        v51 = v65;
        v52 = v62;
        v53 = v63;
LABEL_34:
        sub_1000081D8(v51, v52, v53);
        goto LABEL_35;
      }
    }

    swift_beginAccess();
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v41 + v40);
    *(v41 + v40) = 0x8000000000000000;
    sub_10004B474(0, v18, v54);
    *(v41 + v40) = v69;
    swift_endAccess();
    v51 = v65;
    v52 = v62;
    v53 = v63;
    goto LABEL_34;
  }

  __break(1u);
}

void sub_10001A3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - v7;
  v9 = type metadata accessor for CAUVehicleLayoutKey();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v55 - v15;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  sub_10001AF08(a2, v8);
  if ((v10[6])(v8, 1, v9) == 1)
  {
    sub_10001AEA0(v8);
    return;
  }

  v68 = v13;
  (v10[4])(v18, v8, v9);
  v19 = [objc_opt_self() sharedApplication];
  v20 = [v19 delegate];

  if (v20)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v21 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v72)
    {
LABEL_35:
      (v10[1])(v18, v9);
      return;
    }

    v65 = v72;
    v62 = v73;
    v63 = v74;
    v64 = v75;
    v66 = v76;
    v22 = v77;
    v67 = v78;
    sub_10001ABB4(a1, v18, a3);
    v23 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_ventsForLayoutKey;
    swift_beginAccess();
    if (!*(*(a3 + v23) + 16) || (, sub_10007DEE8(v18), v25 = v24, , (v25 & 1) == 0))
    {
      if (v22[2])
      {
        v26 = sub_10007DEE8(v18);
        if (v27)
        {
          v58 = v16;
          v28 = *(v22[7] + 8 * v26);
          v29 = OBJC_IVAR____TtC7Climate11ClimateZone_vents;
          swift_beginAccess();
          v30 = *(v28 + v29);
          (v10[2])(v68, v18, v9);
          if (v30 >> 62)
          {
            goto LABEL_38;
          }

          for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
          {
            v56 = v23;
            v57 = v22;
            v59 = a3;
            v60 = v10;
            v61 = v9;

            if (!i)
            {
              break;
            }

            v23 = 0;
            a3 = v30 & 0xFFFFFFFFFFFFFF8;
            v10 = _swiftEmptyArrayStorage;
            while (1)
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v23 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_37;
                }

                v32 = *(v30 + 8 * v23 + 32);
              }

              v22 = v32;
              v33 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              swift_unknownObjectWeakInit();
              swift_unknownObjectWeakAssign();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_1000C4B08(0, v10[2] + 1, 1, v10);
              }

              v9 = v10[2];
              v34 = v10[3];
              v22 = (v9 + 1);
              if (v9 >= v34 >> 1)
              {
                v10 = sub_1000C4B08((v34 > 1), v9 + 1, 1, v10);
              }

              v10[2] = v22;
              sub_10000A930(v71, &v10[v9 + 4], &qword_100115820);
              ++v23;
              if (v33 == i)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            ;
          }

          v10 = _swiftEmptyArrayStorage;
LABEL_25:
          v35 = v59;
          v36 = v56;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = *(v35 + v36);
          *(v35 + v36) = 0x8000000000000000;
          v38 = v68;
          sub_10004B610(v10, v68, isUniquelyReferenced_nonNull_native);
          v10 = v60;
          v9 = v61;
          (v60[1])(v38, v61);
          *(v35 + v36) = v70;
          v39 = swift_endAccess();
          __chkstk_darwin(v39);
          *(&v55 - 2) = v35;
          *(&v55 - 1) = v18;
          sub_100014BF8(sub_10001AF80, (&v55 - 4), v30);
          a3 = v35;

          v16 = v58;
        }
      }
    }

    v40 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_stateForLayoutKey;
    swift_beginAccess();
    v41 = a3;
    if (*(*(a3 + v40) + 16))
    {

      sub_10007DEE8(v18);
      v43 = v42;

      if (v43)
      {
        goto LABEL_31;
      }
    }

    v44 = v16;
    v45 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_ventsInAutomodeForLayoutKey;
    swift_beginAccess();
    v46 = *(v41 + v45);
    if (*(v46 + 16))
    {

      v47 = sub_10007DEE8(v18);
      if (v48)
      {
        v49 = *(*(v46 + 56) + 8 * v47);

        (v10[2])(v44, v18, v9);
        v50 = *(v49 + 16);

        swift_beginAccess();
        sub_100078380(v50 != 0, v44);
        swift_endAccess();
LABEL_31:
        v51 = v65;
        v52 = v62;
        v53 = v63;
LABEL_34:
        sub_1000081D8(v51, v52, v53);
        goto LABEL_35;
      }
    }

    swift_beginAccess();
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v41 + v40);
    *(v41 + v40) = 0x8000000000000000;
    sub_10004B474(0, v18, v54);
    *(v41 + v40) = v69;
    swift_endAccess();
    v51 = v65;
    v52 = v62;
    v53 = v63;
    goto LABEL_34;
  }

  __break(1u);
}

uint64_t sub_10001ABB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_observersForLayoutKey;
  swift_beginAccess();
  if (!*(*(a3 + v9) + 16) || (, sub_10007DEE8(a2), v11 = v10, , (v11 & 1) == 0))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[0] = *(a3 + v9);
    *(a3 + v9) = 0x8000000000000000;
    sub_10004B460(_swiftEmptyArrayStorage, a2, isUniquelyReferenced_nonNull_native);
    *(a3 + v9) = v23[0];
    swift_endAccess();
  }

  (*(v6 + 16))(v8, a2, v5);
  v13 = sub_100036B18();
  v15 = sub_100040EF4(v23);
  if (*v14)
  {
    v16 = v14;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v17 = *v16;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v17;
    if ((v18 & 1) == 0)
    {
      v17 = sub_1000C4988(0, v17[2] + 1, 1, v17);
      *v16 = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1000C4988((v19 > 1), v20 + 1, 1, v17);
      *v16 = v17;
    }

    v17[2] = v20 + 1;
    sub_10000A930(v22, &v17[v20 + 4], &unk_100118260);
    (v15)(v23, 0);
    (*(v6 + 8))(v8, v5);
    return (v13)(v24, 0);
  }

  else
  {
    (v15)(v23, 0);
    (*(v6 + 8))(v8, v5);
    return (v13)(v24, 0);
  }
}

uint64_t sub_10001AEA0(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_100115840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001AF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&qword_100115840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001AF9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AFDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001B054(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001B064()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001B0A4(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

void sub_10001B0E0(double a1)
{
  v2 = sub_100014EA0();
  [v2 setAlpha:a1];
}

uint64_t sub_10001B250()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate31ClimateZonesSyncedServiceButton_zonesSynced);
  v2 = [v1 on];
  v3 = [v1 onRestricted];
  v4 = [v1 onInvalid];
  v5 = [v1 onDisabled];
  if (v2)
  {
    if (v3)
    {
      v6 = 5;
      if (v4)
      {
        v6 = 13;
      }

      if ((v5 & 1) == 0)
      {
        return v6;
      }

      return v6 | 0x10;
    }

    v6 = 9;
    if (!v4)
    {
      v6 = 1;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else if (v3)
  {
    v6 = 4;
    if (v4)
    {
      v6 = 12;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else
  {
    v6 = 8;
    if (!v4)
    {
      v6 = 0;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  return v6;
}

void sub_10001B328(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 setOn:{objc_msgSend(a3, "on") ^ 1}];
    sub_1000C10C4();
    [v5 setEnabled:sub_10001B250() < 8];
    sub_10001B428();
    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
  }
}

void sub_10001B428()
{
  v1 = v0;
  if ((sub_10001B250() & 0x1B) == 1)
  {
    v2 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v3 = v0 + *v2;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *v3;
  v7 = v4;

  sub_10007A4CC(v6, v7, v5);

  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (!v9)
  {
    __break(1u);
    return;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v10 = sub_1000AF438();
  swift_unknownObjectRelease();
  v11 = *&v10[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

  v12 = *&v11[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
  if (v12 == 2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor);
    v14 = *(v1 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 8);
    v15 = *(v1 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 16);
    v16 = objc_opt_self();
    v27 = v13;
    v17 = v14;

    v18 = [v16 labelColor];
    if (v18)
    {
      v19 = v18;

      v17 = v19;
    }
  }

  else
  {
    v20 = *(v1 + OBJC_IVAR____TtC7Climate31ClimateZonesSyncedServiceButton_style);
    v21 = *(v1 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor);
    v22 = *(v1 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 8);
    v15 = *(v1 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 16);
    v23 = objc_opt_self();
    v27 = v21;
    v24 = v22;

    v25 = [v23 systemGreenColor];
    v26 = v25;
    if (v20 != 4)
    {
      if (v25)
      {
      }

      else
      {
        v26 = v24;
      }

      sub_1000A70A8(v27, v26, v15);
      v17 = v26;
      goto LABEL_17;
    }

    if (qword_100113EC0 != -1)
    {
      swift_once();
    }

    v17 = [v26 resolvedColorWithTraitCollection:qword_100116C00];
  }

  sub_1000A70A8(v27, v17, v15);
LABEL_17:
}

id sub_10001B724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateZonesSyncedServiceButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateZonesSyncedServiceButton()
{
  result = qword_100114BB8;
  if (!qword_100114BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001B8E0(void *a1, unsigned __int8 a2)
{
  *&v2[OBJC_IVAR____TtC7Climate31ClimateZonesSyncedServiceButton_zonesSynced] = a1;
  v2[OBJC_IVAR____TtC7Climate31ClimateZonesSyncedServiceButton_style] = a2;
  v42.receiver = v2;
  v42.super_class = type metadata accessor for ClimateZonesSyncedServiceButton();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v42, "init");
  [v5 registerObserver:v6];
  v7 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  swift_beginAccess();
  v8 = v6[v7];
  v6[v7] = 1;
  if ((v8 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v9 = &v6[OBJC_IVAR____TtC7Climate13ClimateButton_title];
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = xmmword_1000D61F0;
  if (!v11 || (v10 == 1129208147 ? (v12 = v11 == 0xE400000000000000) : (v12 = 0), !v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v13 = a2;
  if (a2 == 1)
  {
  }

  else
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v5;
    v16 = &v6[OBJC_IVAR____TtC7Climate13ClimateButton_action];
    swift_beginAccess();
    v17 = *v16;
    *v16 = sub_10001BF18;
    v16[1] = v15;
    v18 = v5;

    sub_100003380(v17);

    if (v13 == 4)
    {
      if (qword_100113EF0 != -1)
      {
        swift_once();
      }

      v36 = qword_10011B0E8;
      v37 = qword_10011B0F8;
      v38 = [objc_opt_self() systemGreenColor];
      if (qword_100113EC0 != -1)
      {
        swift_once();
      }

      v39 = [v38 resolvedColorWithTraitCollection:qword_100116C00];

      v40 = v36;

      sub_1000A70A8(v40, v39, v37);

      if (qword_100113EE8 != -1)
      {
        swift_once();
      }

      v26 = &qword_10011B0D0;
      goto LABEL_25;
    }

    if (v13 != 3)
    {
      goto LABEL_26;
    }
  }

  v19 = [v6 titleLabel];
  if (v19)
  {
    if (qword_100113F10 != -1)
    {
      v41 = v19;
      swift_once();
      v19 = v41;
    }

    v20 = v19;
    [v19 setFont:qword_10011B250];
  }

  if (qword_100113EE0 != -1)
  {
    swift_once();
  }

  v21 = qword_10011B0B8;
  v22 = qword_10011B0C0;
  v23 = qword_10011B0C8;
  v24 = [objc_opt_self() systemGreenColor];
  if (!v24)
  {
    v24 = v22;
  }

  v25 = v21;

  sub_1000A70A8(v25, v24, v23);

  if (qword_100113ED8 != -1)
  {
    swift_once();
  }

  v26 = &qword_10011B0A0;
LABEL_25:
  v27 = v26[1];
  v28 = v26[2];
  v29 = *v26;
  v30 = v27;

  sub_1000A70B4(v29, v30, v28);

LABEL_26:
  sub_1000C10C4();
  [v6 setEnabled:sub_10001B250() < 8];
  sub_10001B428();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v31 = [objc_opt_self() sharedApplication];
  v32 = [v31 delegate];

  if (v32)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v33 = sub_1000AF438();
    swift_unknownObjectRelease();
    v34 = *&v33[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v35 = v6;
    sub_1000AD348();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001BEA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BED8()
{

  return _swift_deallocObject(v0, 32, 7);
}

BOOL sub_10001BF90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000040E8(&qword_100114CA0);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v14 = v17 - v13;
  (*(v7 + 16))(v17 - v13, a1, v6, v12);
  sub_10001C1A4(a2, &v14[*(v11 + 56)]);
  v15 = [a3 trackerUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10001C214();
  LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  sub_10001C26C(v14);
  return (v15 & 1) == 0;
}

uint64_t sub_10001C148()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10001C1A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_100117FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001C214()
{
  result = qword_100114CA8;
  if (!qword_100114CA8)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114CA8);
  }

  return result;
}

uint64_t sub_10001C26C(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_100114CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001C2F0()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v4 = sub_1000AF438();
    swift_unknownObjectRelease();
    v5 = v4[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

    v6 = objc_allocWithZone(type metadata accessor for ClimateFanContinuousStepper());
    v7 = sub_1000C17E4(v1, v5, 2);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = qword_100113EC8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = *algn_10011B078;
    v11 = qword_10011B080;
    v12 = qword_10011B070;
    v13 = v10;

    sub_100095F20(v12, v13, v11);

    sub_1000040E8(&unk_1001179E0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000D5970;
    *(v14 + 32) = v9;
    *(v14 + 40) = &off_1000F91B0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001C4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10001C62C()
{
  v1 = v0;
  v2 = sub_1000040E8(&unk_100115120);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  sub_1000040E8(&qword_1001150C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5BA0;
  v6 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView);
  *(inited + 32) = v6;
  v7 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView);
  *(inited + 40) = v7;
  if (v6)
  {
    v8 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_persistentElements;
    swift_beginAccess();
    sub_1000287E8(v1 + v8, v4, &unk_100115120);
    v9 = *((swift_isaMask & *v6) + 0x110);
    v10 = v7;
    v11 = v6;
    v9(v4);

    sub_100008904(v4, &unk_100115120);
  }

  else
  {
    v10 = v7;
  }

  v12 = v10;

  if (v7)
  {
    v14 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_persistentElements;
    swift_beginAccess();
    sub_1000287E8(v1 + v14, v4, &unk_100115120);
    (*((swift_isaMask & *v12) + 0x110))(v4);

    return sub_100008904(v4, &unk_100115120);
  }

  return result;
}

char *sub_10001C888(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_heading] = 4;
  v5 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_persistentElements;
  v6 = type metadata accessor for CAUPersistentElements();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView] = 0;
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftFocusGuide] = 0;
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightFocusGuide] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = sub_100027E1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_cancellables] = v7;
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_activeConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_primaryTopLeft] = 0;
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_secondaryTopLeft] = 0;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = a2;
    }
  }

  else
  {
    v8 = 0;
  }

  type metadata accessor for ClimatePopoverManager();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v10 + 64) = 0;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_popoverManager] = v10;
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_dockFrames] = a1;
  v11 = objc_allocWithZone(UILayoutGuide);

  v12 = [v11 init];
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftDockLayoutGuide] = v12;
  v13 = [objc_allocWithZone(UILayoutGuide) init];
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightDockLayoutGuide] = v13;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for ClimateOverlayViewController(0);
  v14 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  *(*&v14[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_popoverManager] + 64) = &off_1000F7608;
  swift_unknownObjectWeakAssign();
  v15 = v14;
  sub_10001C62C();

  return v15;
}

void sub_10001CBF8(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ClimateOverlayViewController(0);
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000040E8(&unk_100114770);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000D58A0;
    *(v5 + 32) = [objc_allocWithZone(CRSUIClimatePopoverBSActionsHandler) initWithDelegate:v1];
    *(v5 + 40) = [objc_allocWithZone(CRSUIClimateQuickControlRequestActionHandler) initWithDelegate:v1];
    sub_1000040E8(&unk_1001151F0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 _registerSceneActionsHandlerArray:isa forKey:v1];
  }
}

void sub_10001CD94()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v4 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = static Published.subscript.modify();
    if ((~*v5 & 3) != 0)
    {
      *v5 |= 3uLL;
    }

    v6(v8, 0);

    v7.receiver = v1;
    v7.super_class = type metadata accessor for ClimateOverlayViewController(0);
    objc_msgSendSuper2(&v7, "dealloc");
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001D07C()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for ClimateOverlayViewController(0);
  objc_msgSendSuper2(&v20, "viewWillLayoutSubviews");
  v1 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v2 = qword_10011B1C0;
  result = os_log_type_enabled(qword_10011B1C0, v1);
  if (result)
  {
    v4 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v4 = 136315394;
    swift_getKeyPath();
    sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    type metadata accessor for CGRect(0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000835C(v5, v6, &v19);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000835C(v8, v9, &v19);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v1, "viewWillLayoutSubviews: primaryDockFrame %s; secondaryDockFrame %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *&v0[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_primaryTopLeft];
  if (v11)
  {
    v12 = *&v0[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_dockFrames];
    swift_getKeyPath();
    sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v12 + 16);
    v14 = *(v12 + 24);

    [*(v11 + 16) setConstant:v14];
    [*(v11 + 24) setConstant:v13];
  }

  v15 = *&v0[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_secondaryTopLeft];
  if (v15)
  {
    v16 = *&v0[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_dockFrames];
    swift_getKeyPath();
    sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v16 + 48);
    v18 = *(v16 + 56);

    [*(v15 + 16) setConstant:v18];
    [*(v15 + 24) setConstant:v17];
  }

  return result;
}

void sub_10001D510()
{
  v1 = v0;
  v2 = sub_1000040E8(&qword_1001151A0);
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v48 = &v39 - v3;
  v4 = sub_1000040E8(&qword_1001151A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v39 - v6;
  v7 = sub_1000040E8(&unk_1001166C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v52 = sub_1000040E8(&unk_1001151B0);
  v10 = *(v52 - 8);
  __chkstk_darwin(v52);
  v12 = &v39 - v11;
  v13 = sub_1000040E8(&qword_1001144B8);
  v53 = *(v13 - 8);
  v54 = v13;
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for ClimateOverlayViewController(0);
  v56.receiver = v0;
  v56.super_class = v16;
  objc_msgSendSuper2(&v56, "viewDidLoad");
  v17 = [v0 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = v17;
  [v17 addLayoutGuide:*&v1[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftDockLayoutGuide]];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20 = v19;
  v45 = v4;
  v46 = v10;
  v44 = v5;
  [v19 addLayoutGuide:*&v1[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightDockLayoutGuide]];

  sub_10001DDA8();
  v47 = objc_opt_self();
  v21 = [v47 sharedApplication];
  v22 = [v21 delegate];

  if (!v22)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v43 = type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v23 = sub_1000AF438();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1000040E8(&unk_1001151C0);
  Published.projectedValue.getter();
  swift_endAccess();

  v42 = objc_opt_self();
  v24 = [v42 mainRunLoop];
  v55 = v24;
  v25 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v39 = v26 + 56;
  v40 = v27;
  v27(v9, 1, 1, v25);
  v28 = sub_10000827C(0, &unk_1001166E0);
  sub_10000A8E8(&qword_1001144D0, &unk_1001151B0);
  sub_10002879C(&qword_1001166F0, &unk_1001166E0);
  v29 = v52;
  v41 = v28;
  Publisher.receive<A>(on:options:)();
  sub_100008904(v9, &unk_1001166C0);

  (*(v46 + 8))(v12, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000A8E8(&unk_1001151D0, &qword_1001144B8);
  v30 = v54;
  Publisher<>.sink(receiveValue:)();

  (*(v53 + 8))(v15, v30);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v31 = [v47 sharedApplication];
  v32 = [v31 delegate];

  if (v32)
  {
    swift_dynamicCastClassUnconditional();
    v33 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1000040E8(&unk_100117E00);
    v34 = v48;
    Published.projectedValue.getter();
    swift_endAccess();

    v35 = [v42 mainRunLoop];
    v55 = v35;
    v40(v9, 1, 1, v25);
    sub_10000A8E8(&unk_1001151E0, &qword_1001151A0);
    v36 = v50;
    v37 = v51;
    Publisher.receive<A>(on:options:)();
    sub_100008904(v9, &unk_1001166C0);

    (*(v49 + 8))(v34, v36);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A8E8(&unk_100117E10, &qword_1001151A8);
    v38 = v45;
    Publisher<>.sink(receiveValue:)();

    (*(v44 + 8))(v37, v38);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10001DDA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_activeConstraints;
  swift_beginAccess();
  v91 = v2;
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = NSLayoutConstraint_ptr;
  if (v4)
  {
    v6 = objc_opt_self();
    sub_10000827C(0, &qword_1001149C0);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 deactivateConstraints:isa];

    *&v1[v91] = _swiftEmptyArrayStorage;
  }

  v93[0] = *&v1[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView];
  v93[1] = 2;
  v94 = *&v1[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView];
  v95 = 8;
  v89 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftDockLayoutGuide;
  v90 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightDockLayoutGuide;
  v8 = v94;
  v9 = v93[0];
  v10 = 0;
  v11 = 0;
  v12 = &stru_100102000;
  v87 = xmmword_1000D5D90;
  v88 = v1;
  while (1)
  {
    v29 = v10;
    v30 = &v93[2 * v11];
    v31 = *v30;
    if (!*v30)
    {
      goto LABEL_11;
    }

    v92 = v29;
    v32 = v5;
    v33 = v30[1];
    v34 = v90;
    if (v33 == 2)
    {
      v34 = v89;
    }

    v35 = *&v1[v34];
    v36 = objc_opt_self();
    v37 = v35;
    v38 = v31;
    v39 = [v36 v12[121].offs];
    v40 = [v39 delegate];

    if (!v40)
    {
      break;
    }

    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v41 = sub_1000AF438();
    swift_unknownObjectRelease();
    v42 = v41[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

    if (v42)
    {
      if (v33 == 2)
      {
        v13 = &selRef_leftAnchor;
      }

      else
      {
        v13 = &selRef_rightAnchor;
      }

      v14 = [v38 *v13];
      v15 = [v37 *v13];
      v16 = [v14 constraintEqualToAnchor:v15];

      sub_1000040E8(&unk_100114770);
      inited = swift_initStackObject();
      *(inited + 16) = v87;
      v18 = v38;
      v19 = v16;
      v20 = [v18 topAnchor];
      v21 = [v37 topAnchor];
      [v37 layoutFrame];
      v22 = [v20 constraintEqualToAnchor:v21 constant:31.0 - CGRectGetMinY(v96)];

      *(inited + 32) = v22;
      *(inited + 40) = v19;
      v23 = [v18 widthAnchor];
      v24 = [v37 widthAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];

      *(inited + 48) = v25;
      v26 = [v18 bottomAnchor];

      v27 = [v37 bottomAnchor];
      v1 = v88;
      v28 = [v26 constraintEqualToAnchor:v27];

      *(inited + 56) = v28;
      goto LABEL_10;
    }

    sub_10001FE58();
    if (v33 == 2)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44;
    }

    v46 = [v36 v12[121].offs];
    v47 = [v46 delegate];

    if (!v47)
    {
      goto LABEL_49;
    }

    swift_dynamicCastClassUnconditional();
    v48 = sub_1000AF438();
    swift_unknownObjectRelease();
    v49 = v48[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

    if (v49)
    {
      v50 = 114.0;
    }

    else
    {
      v51 = [v1 view];
      if (!v51)
      {
        goto LABEL_50;
      }

      v52 = v51;
      [v51 bounds];
      v54 = v53;

      if (v54 < 600.0)
      {
        v50 = 96.0;
      }

      else
      {
        v50 = 114.0;
      }
    }

    v55 = [v36 v12[121].offs];
    v56 = [v55 delegate];

    if (!v56)
    {
      goto LABEL_48;
    }

    swift_dynamicCastClassUnconditional();
    v57 = sub_1000AF438();
    swift_unknownObjectRelease();
    v58 = [*&v57[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 configuration];

      LOBYTE(v59) = [v60 rightHandDrive];
      if (v59)
      {
        if (v33 != 8)
        {
          goto LABEL_31;
        }

        goto LABEL_38;
      }
    }

    else
    {
    }

    if (v33 != 2)
    {
LABEL_31:
      if (v45 == 0.0)
      {
        v61 = 4.0;
      }

      else
      {
        v61 = 14.5;
      }

      if (v33 != 2)
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    }

LABEL_38:
    v65 = [v1 view];
    if (!v65)
    {
      goto LABEL_51;
    }

    v66 = v65;
    [v65 frame];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v97.origin.x = v68;
    v97.origin.y = v70;
    v97.size.width = v72;
    v97.size.height = v74;
    if (CGRectGetWidth(v97) >= 430.0)
    {
      v61 = 85.0;
    }

    else
    {
      v61 = 42.0;
    }

    if (v33 != 2)
    {
LABEL_43:
      v62 = [v38 rightAnchor];
      v63 = [v37 rightAnchor];
      v64 = [v62 constraintEqualToAnchor:v63 constant:-v61];
      goto LABEL_44;
    }

LABEL_35:
    v62 = [v38 leftAnchor];
    v63 = [v37 leftAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:v61];
LABEL_44:
    v75 = v64;

    sub_1000040E8(&unk_100114770);
    inited = swift_initStackObject();
    *(inited + 16) = v87;
    *(inited + 32) = v75;
    v76 = v38;
    v19 = v75;
    v77 = [v76 bottomAnchor];
    v78 = [v37 bottomAnchor];
    v79 = [v77 constraintEqualToAnchor:v78];

    *(inited + 40) = v79;
    v80 = [v76 heightAnchor];
    v81 = [v37 heightAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];

    *(inited + 48) = v82;
    v83 = [v76 widthAnchor];

    v84 = [v83 constraintEqualToConstant:v45 + v50];
    *(inited + 56) = v84;
    v1 = v88;
LABEL_10:
    swift_beginAccess();
    sub_1000B7604(inited);
    swift_endAccess();

    v5 = v32;
    v12 = &stru_100102000;
    v29 = v92;
LABEL_11:
    v10 = 1;
    v11 = 1;
    if (v29)
    {
      sub_1000040E8(&qword_100115178);
      swift_arrayDestroy();
      v85 = objc_opt_self();
      sub_10000827C(0, &qword_1001149C0);

      v86 = Array._bridgeToObjectiveC()().super.isa;

      [v85 activateConstraints:v86];

      return;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

void sub_10001E758(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v9 = Strong;
  if (!v1)
  {

LABEL_10:
    static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    return;
  }

  v33[0] = v1;
  v33[1] = v2;
  v33[2] = v3;
  v33[3] = v4;
  v33[4] = v5;
  v33[5] = v6;
  v33[6] = v7;

  v10 = v1;
  v31 = v2;
  v11 = v2;
  v30 = v3;
  v12 = v3;

  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v13 = v10;
  v14 = v11;
  v15 = v12;

  sub_1000204D4(v33);
  v17 = v16;
  v19 = v18;
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20 && (v21 = v20, v29 = [v20 _FBSScene], v21, v22 = swift_allocObject(), v22[2] = 0, v22[3] = v17, v22[4] = 0, v22[5] = v19, v23 = swift_allocObject(), *(v23 + 16) = sub_100028A2C, *(v23 + 24) = v22, aBlock[4] = sub_100028A90, aBlock[5] = v23, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_10001FDA4, aBlock[3] = &unk_1000F7968, v24 = _Block_copy(aBlock), , , objc_msgSend(v29, "updateClientSettingsWithBlock:", v24), v29, _Block_release(v24), LOBYTE(v24) = swift_isEscapingClosureAtFileLocation(), , , (v24 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    sub_10001DDA8();
    sub_1000081D8(v1, v31, v30);
    v25 = [objc_opt_self() sharedApplication];
    v26 = [v25 delegate];

    if (v26)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v27 = sub_1000AF438();
      swift_unknownObjectRelease();
      v28 = *&v27[OBJC_IVAR____TtC7Climate18ClimateCoordinator_signpostManager];

      v28[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_overlayViewControllerDidLoad] = 1;
      sub_1000B4ABC();

      sub_1000081D8(v1, v31, v30);
      return;
    }
  }

  __break(1u);
}

void sub_10001EBB4(unint64_t *a1)
{
  v2 = sub_1000040E8(&unk_100115120);
  __chkstk_darwin(v2 - 8);
  v4 = &v67 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v9 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109632;
      *(v10 + 4) = (v5 >> 1) & 1;
      *(v10 + 8) = 1024;
      *(v10 + 10) = v5 & 1;
      *(v10 + 14) = 1024;
      *(v10 + 16) = (v5 >> 2) & 1;
      _os_log_impl(&_mh_execute_header, v9, v8, "Status bar stepper state updated. isInteractive: %{BOOL}d, isVisible: %{BOOL}d, autoDeepLink: %{BOOL}d", v10, 0x14u);
    }

    if ((v5 & 2) == 0)
    {
      sub_10001F3E0();
    }

    sub_1000040E8(&qword_1001150C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D5BA0;
    v12 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
    v13 = *&v7[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView];
    *(inited + 32) = v13;
    v14 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView;
    v15 = *&v7[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView];
    *(inited + 40) = v15;
    if (v13)
    {
      v69 = v12;
      type metadata accessor for ClimateHorizontalStatusBarView();
      v16 = swift_dynamicCastClass();
      v17 = (v5 >> 1) & 1;
      if (!v16)
      {
        v23 = v15;
        [v13 setUserInteractionEnabled:(v5 >> 1) & 1];
        v24 = v23;

        goto LABEL_16;
      }

      v18 = v16;
      v68 = v5;
      v19 = *(v16 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator);
      v20 = v15;
      v21 = v13;
      if (v19)
      {
        [v19 setUserInteractionEnabled:v17];
      }

      v26 = *(v18 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_seatHeatingIndicator);
      if (v26)
      {
        v27 = v26;
        [v27 setUserInteractionEnabled:v17];

        v28 = v15;

        v5 = v68;
LABEL_16:
        v12 = v69;
        if (!v15)
        {
          goto LABEL_27;
        }

LABEL_20:
        type metadata accessor for ClimateHorizontalStatusBarView();
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v31 = v30;
          v32 = *(v30 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator);
          if (v32)
          {
            [v32 setUserInteractionEnabled:(v5 >> 1) & 1];
          }

          v33 = *(v31 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_seatHeatingIndicator);
          if (v33)
          {
            v34 = v33;
            [v34 setUserInteractionEnabled:(v5 >> 1) & 1];
          }
        }

        else
        {
          [v15 setUserInteractionEnabled:(v5 >> 1) & 1];
        }

LABEL_27:
        v35 = *&v7[v12];
        if (v35 && (v36 = (*((swift_isaMask & *v35) + 0xB0))(v25)) != 0)
        {
          v37 = v36;
          [v36 alpha];
          v39 = v38;

          v40 = v39 > 0.5;
          v41 = *&v7[v14];
          if (!v41)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v40 = 0;
          v41 = *&v7[v14];
          if (!v41)
          {
            goto LABEL_39;
          }
        }

        v42 = (*((swift_isaMask & *v41) + 0xB0))();
        if (v42)
        {
          v43 = v42;
          [v42 alpha];
          v45 = v44;

          if (v5)
          {
            if (v45 > 0.5 && v40)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v47 = v45 > 0.5 || v40;
            if ((v47 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

LABEL_45:
          v48 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_persistentElements;
          swift_beginAccess();
          sub_1000287E8(&v7[v48], v4, &unk_100115120);
          v49 = type metadata accessor for CAUPersistentElements();
          LODWORD(v48) = (*(*(v49 - 8) + 48))(v4, 1, v49);
          sub_100008904(v4, &unk_100115120);
          v50 = *&v7[v12];
          if (v48 == 1)
          {
            if (v50)
            {
              v51 = *((swift_isaMask & *v50) + 0x118);
              v52 = v50;
              v51(v5 & 1);
            }

            v53 = *&v7[v14];
            if (v53)
            {
              v54 = *((swift_isaMask & *v53) + 0x118);
              v55 = v53;
              v54(v5 & 1);
            }
          }

          else
          {
            if (v50)
            {
              [v50 setAlpha:1.0];
            }

            v56 = *&v7[v14];
            if (v56)
            {
              [v56 setAlpha:1.0];
            }
          }

          v57 = [objc_opt_self() sharedApplication];
          v58 = [v57 delegate];

          if (!v58)
          {
            __break(1u);
            return;
          }

          type metadata accessor for ClimateAppDelegate();
          swift_dynamicCastClassUnconditional();
          v59 = sub_1000AF438();
          swift_unknownObjectRelease();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v60 = aBlock[0];
          v61 = swift_unknownObjectWeakLoadStrong();
          if (v61)
          {
            v62 = v61;
            v63 = [v61 _FBSScene];

            v64 = swift_allocObject();
            *(v64 + 16) = (v60 & 1) == 0;
            v65 = swift_allocObject();
            *(v65 + 16) = sub_1000289E4;
            *(v65 + 24) = v64;
            aBlock[4] = sub_100028A90;
            aBlock[5] = v65;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10001FDA4;
            aBlock[3] = &unk_1000F78F0;
            v66 = _Block_copy(aBlock);

            [v63 updateClientSettingsWithBlock:v66];

            _Block_release(v66);
            LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

            if ((v63 & 1) == 0)
            {
              return;
            }

            __break(1u);
          }

          goto LABEL_58;
        }

LABEL_39:
        if ((v5 | v40))
        {
          goto LABEL_45;
        }

LABEL_58:

        return;
      }

      v22 = v15;
      v5 = v68;
      v12 = v69;
    }

    else
    {
      v22 = v15;
    }

    v29 = v22;

    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }
}

void sub_10001F3E0()
{
  v1 = v0;
  v2 = sub_1000040E8(&qword_100115108);
  v3 = __chkstk_darwin(v2 - 8);
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v66 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v66 - v11;
  v13 = *&v0[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView];
  if (v13)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = *&v13[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone];

      v17 = v15;
      v18 = v13;
      v19 = [v1 view];
      if (!v19)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v67 = v19;
      v69 = v16;
      v70 = v17;
      v20 = static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      v68 = v18;
      v71 = v7;
      v72 = v8;
      v21 = qword_10011B1C0;
      if (os_log_type_enabled(qword_10011B1C0, v20))
      {
        v22 = swift_slowAlloc();
        *v22 = 134349056;
        *(v22 + 4) = 2;
        _os_log_impl(&_mh_execute_header, v21, v20, "Updating popover for side: %{public}lu", v22, 0xCu);
      }

      v23 = objc_opt_self();
      v24 = [v23 sharedApplication];
      v25 = [v24 delegate];

      if (!v25)
      {
        goto LABEL_44;
      }

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v26 = sub_1000AF438();
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v75 & 4) != 0)
      {
        sub_100096674(v69 + OBJC_IVAR____TtC7Climate11ClimateZone_key, v6);
        v7 = v71;
        v8 = v72;
        if ((v72)[6](v6, 1, v71) == 1)
        {
          sub_100008904(v6, &qword_100115108);
        }

        else
        {
          v8[4](v12, v6, v7);
          v30 = swift_unknownObjectWeakLoadStrong();
          if (v30)
          {
            v32 = v30;
            URL._bridgeToObjectiveC()(v31);
            v34 = v33;
            [v32 openURL:v33 options:0 completionHandler:0];
          }

          (v8[1])(v12, v7);
        }

        sub_10007C424();
        v29 = v70;
      }

      else
      {
        v27 = [v23 sharedApplication];
        v28 = [v27 delegate];

        v8 = v72;
        if (!v28)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        swift_dynamicCastClassUnconditional();

        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_10002253C(1, 2, 0);
          swift_unknownObjectRelease();
        }

        sub_10007C758(2);
        v29 = v70;
        v7 = v71;
      }
    }
  }

  v35 = *&v1[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView];
  if (v35)
  {
    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36)
    {
      v37 = v36;
      v38 = *&v1[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_popoverManager];
      v39 = *&v35[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone];

      v40 = v37;
      v41 = v35;
      v42 = [v1 view];
      if (v42)
      {
        v71 = v40;
        v72 = v42;
        v69 = v38;
        v70 = v41;
        v43 = static os_log_type_t.debug.getter();
        if (qword_100113F00 != -1)
        {
          swift_once();
        }

        v44 = v8;
        v45 = v7;
        v46 = qword_10011B1C0;
        if (os_log_type_enabled(qword_10011B1C0, v43))
        {
          v47 = swift_slowAlloc();
          *v47 = 134349056;
          *(v47 + 4) = 8;
          _os_log_impl(&_mh_execute_header, v46, v43, "Updating popover for side: %{public}lu", v47, 0xCu);
        }

        v48 = objc_opt_self();
        v49 = [v48 sharedApplication];
        v50 = [v49 delegate];

        if (v50)
        {
          type metadata accessor for ClimateAppDelegate();
          swift_dynamicCastClassUnconditional();
          v51 = sub_1000AF438();
          swift_unknownObjectRelease();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if ((v75 & 4) != 0)
          {
            v57 = v74;
            sub_100096674(v39 + OBJC_IVAR____TtC7Climate11ClimateZone_key, v74);
            v58 = v44;
            if (v44[6](v57, 1, v45) == 1)
            {
              sub_100008904(v57, &qword_100115108);
            }

            else
            {
              v59 = v44[4];
              v60 = v73;
              v59(v73, v57, v45);
              v61 = swift_unknownObjectWeakLoadStrong();
              if (v61)
              {
                v63 = v61;
                URL._bridgeToObjectiveC()(v62);
                v65 = v64;
                [v63 openURL:v64 options:0 completionHandler:0];
              }

              (v58[1])(v60, v45);
            }

            sub_10007C424();
            v56 = v70;
            v55 = v71;
            v54 = v72;
            goto LABEL_40;
          }

          v52 = [v48 sharedApplication];
          v53 = [v52 delegate];

          v54 = v72;
          if (v53)
          {
            swift_dynamicCastClassUnconditional();

            swift_unknownObjectRelease();
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_10002253C(1, 8, 0);
              swift_unknownObjectRelease();
            }

            sub_10007C758(8);
            v56 = v70;
            v55 = v71;
LABEL_40:

            return;
          }

LABEL_47:
          __break(1u);
          return;
        }

        goto LABEL_45;
      }

      goto LABEL_43;
    }
  }
}

id sub_10001FD0C(double a1, double a2, double a3, double a4)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result setStepperInsets:{a1, a2, a3, a4}];
  }

  return result;
}

void sub_10001FDA4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_10001FDF0(uint64_t a1, char a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result setIsOverlayHidden:a2 & 1];
  }

  return result;
}

void sub_10001FE58()
{
  v0 = type metadata accessor for CAUAppDockIndicator();
  v60 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v62 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v59 = &v49 - v3;
  v66[3] = &type metadata for ClimateFeatures;
  v66[4] = sub_100028968();
  LOBYTE(v66[0]) = 1;
  v4 = isFeatureEnabled(_:)();
  sub_100006B9C(v66);
  if (v4)
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 delegate];

    if (v6)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v7 = sub_1000AF438();
      swift_unknownObjectRelease();
      v8 = v7[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

      if ((v8 & 1) == 0)
      {
        v9 = v65;
        v51 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
        v10 = *(v52 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView);
        v65[0] = *(v52 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView);
        v65[1] = v10;
        v58 = v60 + 16;
        v57 = enum case for CAUAppDockIndicator.seatHeating(_:);
        v56 = v60 + 104;
        v61 = v60 + 8;
        v11 = v65[0];
        v12 = v10;
        v13 = 0;
        v14 = 0;
        v15 = 0.0;
        v16 = 0.0;
        v50 = v65;
        do
        {
          v17 = v13;
          v18 = v9[v14];
          if (v18)
          {
            type metadata accessor for ClimateHorizontalStatusBarView();
            v19 = swift_dynamicCastClass();
            if (v19)
            {
              v20 = v19;
              swift_getKeyPath();
              swift_getKeyPath();
              v21 = v18;
              static Published.subscript.getter();

              v22 = *(v66[0] + 16);

              if (v22)
              {
                v54 = v21;
                v53 = v17;
                swift_getKeyPath();
                swift_getKeyPath();
                v55 = v20;
                static Published.subscript.getter();

                v23 = 0;
                v24 = v66[0];
                v25 = v66[0] + 56;
                v26 = 1 << *(v66[0] + 32);
                if (v26 < 64)
                {
                  v27 = ~(-1 << v26);
                }

                else
                {
                  v27 = -1;
                }

                v28 = v27 & *(v66[0] + 56);
                v29 = (v26 + 63) >> 6;
                while (v28)
                {
LABEL_21:
                  v32 = __clz(__rbit64(v28));
                  v28 &= v28 - 1;
                  v33 = v59;
                  v34 = v60;
                  (*(v60 + 16))(v59, *(v24 + 48) + *(v60 + 72) * (v32 | (v23 << 6)), v0);
                  (*(v34 + 104))(v62, v57, v0);
                  sub_1000280B0(&qword_100115198, &type metadata accessor for CAUAppDockIndicator);
                  dispatch thunk of RawRepresentable.rawValue.getter();
                  v35 = *(v34 + 8);
                  v35(v33, v0);
                  dispatch thunk of RawRepresentable.rawValue.getter();
                  if (v66[0] == v63 && v66[1] == v64)
                  {
                    v35(v62, v0);
                  }

                  else
                  {
                    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v35(v62, v0);

                    if ((v30 & 1) == 0)
                    {
                      v36 = *(v52 + v51);
                      if (v36 && (type metadata accessor for ClimateStatusBarView(), v37 = v54, v38 = v36, v39 = static NSObject.== infix(_:_:)(), v38, v37, (v39 & 1) != 0))
                      {
                        v16 = v16 + 29.0;
                      }

                      else
                      {
                        v15 = v15 + 29.0;
                      }
                    }
                  }
                }

                while (1)
                {
                  v31 = v23 + 1;
                  if (__OFADD__(v23, 1))
                  {
                    __break(1u);
                    goto LABEL_35;
                  }

                  if (v31 >= v29)
                  {
                    break;
                  }

                  v28 = *(v25 + 8 * v31);
                  ++v23;
                  if (v28)
                  {
                    v23 = v31;
                    goto LABEL_21;
                  }
                }

                v40 = *(v52 + v51);
                v41 = v54;
                if (v40 && (type metadata accessor for ClimateStatusBarView(), v42 = v41, v43 = v40, v44 = static NSObject.== infix(_:_:)(), v43, v42, (v44 & 1) != 0))
                {
                  sub_10009EB64();
                  v46 = v45;

                  v16 = v16 + v46;
                }

                else
                {
                  sub_10009EB64();
                  v48 = v47;

                  v15 = v15 + v48;
                }

                v9 = v50;
                LOBYTE(v17) = v53;
              }

              else
              {
              }
            }
          }

          v13 = 1;
          v14 = 1;
        }

        while ((v17 & 1) == 0);
        sub_1000040E8(&qword_100115190);
        swift_arrayDestroy();
      }
    }

    else
    {
LABEL_35:
      __break(1u);
    }
  }
}

void sub_1000204D4(void *a1)
{
  v2 = v1;
  v4 = sub_100054E6C();
  v5 = a1[3];
  if (v4)
  {
    v126 = 0;
    v127 = 0;
    v6 = 0;
    goto LABEL_13;
  }

  v7 = a1[1];
  v6 = [v7 cabin];
  v127 = [v7 recirculation];
  v8 = [v7 zonesSynceds];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  sub_10000827C(0, &qword_1001152C0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

LABEL_12:
    v126 = 0;
    goto LABEL_13;
  }

LABEL_6:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_88;
    }

    v11 = *(v10 + 32);
  }

  v126 = v11;

LABEL_13:
  p_name = &ClimateAccessibilityManager.name;
  v13 = &OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  v128 = v5;
  v122 = v4;
  if (v5)
  {
    v14 = *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView];
    if (v14)
    {
      v15 = v14;

      v16 = static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      v17 = qword_10011B1C0;
      if (os_log_type_enabled(qword_10011B1C0, v16))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v132 = v19;
        *v18 = 134349314;
        *(v18 + 4) = 2;
        *(v18 + 12) = 2080;
        swift_getObjectType();
        v20 = _typeName(_:qualified:)();
        v22 = sub_10000835C(v20, v21, &v132);

        *(v18 + 14) = v22;
        v5 = v128;
        _os_log_impl(&_mh_execute_header, v17, v16, "Status bar already existing for side: %{public}lu, kind: %s", v18, 0x16u);
        sub_100006B9C(v19);
        v4 = v122;

        v13 = &OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
      }

      *(v15 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone) = v5;

      (*((swift_isaMask & *v15) + 0x108))(v23);

      v130 = 0;
      p_name = &ClimateAccessibilityManager.name;
      v24 = a1[4];
      if (v4)
      {
        goto LABEL_20;
      }

LABEL_33:
      v123 = 0;
      v124 = 0;
      v125 = 0;
      goto LABEL_37;
    }

    sub_100021830(v33, 2, v6, v127, v126);

    v130 = 1;
    v24 = a1[4];
    if ((v4 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v30 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
    v31 = *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView];
    if (v31)
    {
      [v31 removeFromSuperview];
      v32 = *&v2[v30];
    }

    else
    {
      v32 = 0;
    }

    *&v2[v30] = 0;

    v130 = 0;
    v24 = a1[4];
    if ((v4 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_20:
  v25 = a1[1];
  v125 = [v25 cabin];
  v124 = [v25 recirculation];
  v26 = [v25 zonesSynceds];
  if (v26)
  {
    v27 = v26;
    sub_10000827C(0, &qword_1001152C0);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_23;
      }
    }

    else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_23:
      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_26;
      }

      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v29 = *(v28 + 32);
LABEL_26:
        v123 = v29;

        goto LABEL_37;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }
  }

  v123 = 0;
LABEL_37:
  v129 = v24;
  if (v24)
  {
    v34 = *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView];
    if (v34)
    {
      v35 = v34;

      v36 = static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      v37 = qword_10011B1C0;
      if (os_log_type_enabled(qword_10011B1C0, v36))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v132 = v39;
        *v38 = 134349314;
        *(v38 + 4) = 8;
        *(v38 + 12) = 2080;
        swift_getObjectType();
        v40 = _typeName(_:qualified:)();
        v42 = v2;
        v43 = v6;
        v44 = sub_10000835C(v40, v41, &v132);

        *(v38 + 14) = v44;
        v6 = v43;
        v2 = v42;
        v24 = v129;
        _os_log_impl(&_mh_execute_header, v37, v36, "Status bar already existing for side: %{public}lu, kind: %s", v38, 0x16u);
        sub_100006B9C(v39);
        v5 = v128;

        v13 = &OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
      }

      *(v35 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone) = v24;

      (*((swift_isaMask & *v35) + 0x108))(v45);

      p_name = (&ClimateAccessibilityManager + 24);
    }

    else
    {

      sub_100021830(v49, 8, v125, v124, v123);

      v130 = 1;
    }
  }

  else
  {
    v46 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView;
    v47 = *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView];
    if (v47)
    {
      [v47 removeFromSuperview];
      v48 = *&v2[v46];
    }

    else
    {
      v48 = 0;
    }

    *&v2[v46] = 0;
  }

  v50 = static os_log_type_t.debug.getter();
  if (p_name[480] != -1)
  {
    swift_once();
  }

  v51 = v13[56];
  if (os_log_type_enabled(v51, v50))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138544130;
    if (v5)
    {
      v5 = *&v5[OBJC_IVAR____TtC7Climate11ClimateZone_temperature];
      v54 = v5;
    }

    *(v52 + 4) = v5;
    *v53 = v5;
    *(v52 + 12) = 2114;
    if (v24)
    {
      v55 = *(v24 + OBJC_IVAR____TtC7Climate11ClimateZone_temperature);
      v56 = v55;
    }

    else
    {
      v56 = 0;
      v55 = 0;
    }

    *(v52 + 14) = v56;
    v53[1] = v55;
    *(v52 + 22) = 1024;
    *(v52 + 24) = v4 & 1;
    *(v52 + 28) = 1024;
    *(v52 + 30) = v130;
    _os_log_impl(&_mh_execute_header, v51, v50, "Update steppers for leftZone: %{public}@, rightZone: %{public}@ isRHD: %{BOOL}d didCreateNewView:%{BOOL}d.", v52, 0x22u);
    sub_1000040E8(&unk_1001149E0);
    swift_arrayDestroy();
  }

  if (v130)
  {
    sub_10001DDA8();
  }

  v57 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightDockLayoutGuide;
  if (v4)
  {
    v58 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightDockLayoutGuide;
  }

  else
  {
    v58 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftDockLayoutGuide;
  }

  v59 = *&v2[v58];
  if (v4)
  {
    v57 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftDockLayoutGuide;
  }

  v60 = *&v2[v57];
  v61 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_dockFrames;
  v62 = *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_dockFrames];
  swift_getKeyPath();
  v132 = v62;
  sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);
  v63 = v59;
  v64 = v60;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = v62[2];
  v66 = v62[3];
  v67 = v62[4];
  v68 = v62[5];

  v131 = v63;
  [v63 layoutFrame];
  v139.origin.x = v65;
  v139.origin.y = v66;
  v139.size.width = v67;
  v139.size.height = v68;
  if (!CGRectEqualToRect(v133, v139))
  {
    v121 = v6;
    v69 = [v63 leftAnchor];
    v70 = [v2 view];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 leftAnchor];

      v73 = [v69 constraintEqualToAnchor:v72 constant:v65];
      [v73 setActive:1];
      v74 = [v63 topAnchor];
      v75 = [v2 view];
      if (v75)
      {
        v76 = v75;
        v77 = [v75 topAnchor];

        v78 = [v74 constraintEqualToAnchor:v77 constant:v66];
        [v78 setActive:1];
        type metadata accessor for ClimateOverlayViewController.TopLeftAnchor();
        v79 = swift_allocObject();
        *(v79 + 16) = v78;
        *(v79 + 24) = v73;
        *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_primaryTopLeft] = v79;
        v80 = v78;
        v81 = v73;

        v82 = [v63 widthAnchor];
        v134.origin.x = v65;
        v134.origin.y = v66;
        v134.size.width = v67;
        v134.size.height = v68;
        v83 = [v82 constraintEqualToConstant:CGRectGetWidth(v134)];

        [v83 setActive:1];
        v84 = [v63 heightAnchor];
        v135.origin.x = v65;
        v135.origin.y = v66;
        v135.size.width = v67;
        v135.size.height = v68;
        v85 = [v84 constraintEqualToConstant:CGRectGetHeight(v135)];

        [v85 setActive:1];
        v6 = v121;
        goto LABEL_69;
      }

LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_69:
  v86 = *&v2[v61];
  swift_getKeyPath();
  v132 = v86;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v87 = v86[6];
  v88 = v86[7];
  v89 = v86[8];
  v90 = v86[9];

  [v64 layoutFrame];
  v140.origin.x = v87;
  v140.origin.y = v88;
  v140.size.width = v89;
  v140.size.height = v90;
  if (CGRectEqualToRect(v136, v140))
  {
    goto LABEL_73;
  }

  v91 = [v64 leftAnchor];
  v92 = [v2 view];
  if (!v92)
  {
    goto LABEL_91;
  }

  v93 = v92;
  v94 = [v92 leftAnchor];

  v95 = [v91 constraintEqualToAnchor:v94 constant:v87];
  [v95 setActive:1];
  v96 = [v64 topAnchor];
  v97 = [v2 view];
  if (!v97)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v98 = v97;
  v99 = [v97 topAnchor];

  v100 = [v96 constraintEqualToAnchor:v99 constant:v88];
  [v100 setActive:1];
  type metadata accessor for ClimateOverlayViewController.TopLeftAnchor();
  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  *(v101 + 24) = v95;
  *&v2[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_secondaryTopLeft] = v101;
  v102 = v100;
  v103 = v95;

  v104 = [v64 widthAnchor];
  v137.origin.x = v87;
  v137.origin.y = v88;
  v137.size.width = v89;
  v137.size.height = v90;
  v105 = [v104 constraintEqualToConstant:CGRectGetWidth(v137)];

  [v105 setActive:1];
  v106 = [v64 heightAnchor];
  v138.origin.x = v87;
  v138.origin.y = v88;
  v138.size.width = v89;
  v138.size.height = v90;
  v107 = [v106 constraintEqualToConstant:CGRectGetHeight(v138)];

  [v107 setActive:1];
LABEL_73:
  sub_10001FE58();
  v108 = v129;
  if (v128 == 0 || (v122 & 1) == 0)
  {
    goto LABEL_79;
  }

  v109 = [objc_opt_self() sharedApplication];
  v110 = [v109 delegate];

  if (!v110)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v111 = sub_1000AF438();
  swift_unknownObjectRelease();
  v112 = v111[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (v112)
  {
    v108 = v129;
  }

  else
  {
    v113 = [v2 view];
    v108 = v129;
    if (!v113)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v114 = v113;
    [v113 bounds];
  }

LABEL_79:
  if (v122 & 1 | (v108 == 0))
  {
LABEL_84:
    sub_100021594();

    return;
  }

  v115 = [objc_opt_self() sharedApplication];
  v116 = [v115 delegate];

  if (!v116)
  {
    goto LABEL_94;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v117 = sub_1000AF438();
  swift_unknownObjectRelease();
  v118 = v117[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (v118)
  {
    goto LABEL_84;
  }

  v119 = [v2 view];
  if (v119)
  {
    v120 = v119;
    [v119 bounds];

    goto LABEL_84;
  }

LABEL_96:
  __break(1u);
}

void sub_100021594()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightFocusGuide];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (!v4)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v5 = v4;
    [v4 removeLayoutGuide:v3];
  }

  v6 = *&v1[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftFocusGuide];
  if (v6)
  {
    v7 = v6;
    v8 = [v1 view];
    if (!v8)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v9 = v8;
    [v8 removeLayoutGuide:v7];
  }

  v10 = objc_opt_self();
  v11 = [v10 sharedApplication];
  v12 = [v11 delegate];

  if (!v12)
  {
    __break(1u);
    goto LABEL_22;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v13 = sub_1000AF438();
  swift_unknownObjectRelease();
  v14 = v13[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (v14 == 1)
  {
    v15 = [v10 sharedApplication];
    v16 = [v15 delegate];

    if (v16)
    {
      swift_dynamicCastClassUnconditional();
      v17 = sub_1000AF438();
      swift_unknownObjectRelease();
      v18 = [*&v17[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 configuration];

        LOBYTE(v19) = [v20 rightHandDrive];
        if (v19)
        {
          v21 = 8;
LABEL_18:

          sub_1000259A0(v21);
          return;
        }
      }

      else
      {
      }

      v21 = 2;
      goto LABEL_18;
    }

LABEL_24:
    __break(1u);
    return;
  }

  sub_100025F18(2);

  sub_100025F18(8);
}

void sub_100021830(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v74 = a3;
  v75 = a4;
  v8 = sub_1000040E8(&unk_100115120);
  __chkstk_darwin(v8 - 8);
  v10 = &v74 - v9;
  v11 = sub_1000040E8(&unk_1001166C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v74 - v12;
  v14 = sub_1000040E8(&qword_100115130);
  v76 = *(v14 - 8);
  v77 = v14;
  __chkstk_darwin(v14);
  v16 = &v74 - v15;
  v17 = sub_1000040E8(&qword_100115138);
  v78 = *(v17 - 8);
  v79 = v17;
  __chkstk_darwin(v17);
  v19 = &v74 - v18;
  v20 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v21 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v20))
  {
    v22 = swift_slowAlloc();
    *v22 = 134349056;
    *(v22 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v21, v20, "Creating Climate status bar view for side: %{public}lu", v22, 0xCu);
  }

  v23 = [objc_opt_self() sharedApplication];
  v24 = [v23 delegate];

  if (!v24)
  {
    __break(1u);
    goto LABEL_39;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v25 = sub_1000AF438();
  swift_unknownObjectRelease();
  v26 = v25[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (v26 != 1)
  {
    v74 = v10;
    v75 = a2;
    v43 = objc_allocWithZone(type metadata accessor for ClimateHorizontalStatusBarView());

    sub_1000A24E8();
    v40 = v44;

    swift_beginAccess();
    sub_1000040E8(&unk_100115140);
    Published.projectedValue.getter();
    swift_endAccess();
    v45 = [objc_opt_self() mainRunLoop];
    v81[0] = v45;
    v46 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v46 - 8) + 56))(v13, 1, 1, v46);
    sub_10000827C(0, &unk_1001166E0);
    sub_10000A8E8(&unk_100115150, &qword_100115130);
    sub_10002879C(&qword_1001166F0, &unk_1001166E0);
    v47 = v77;
    Publisher.receive<A>(on:options:)();
    sub_100008904(v13, &unk_1001166C0);

    (*(v76 + 8))(v16, v47);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A8E8(&unk_100115160, &qword_100115138);
    v48 = v79;
    Publisher<>.sink(receiveValue:)();

    (*(v78 + 8))(v19, v48);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v49 = *&v40[OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper];
    if (v49)
    {
      [v49 _setCornerRadius:0.0];
    }

    v50 = *&v40[OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_seatHeatingIndicator];
    if (v75 == 8)
    {
      if (v49)
      {
        v56 = *&v49[OBJC_IVAR____TtC7Climate14ClimateStepper_upButton];
        v57 = v50;
        v58 = v80;
        [v56 addTarget:v80 action:"didTapRightClimateStatusBarButton:" forControlEvents:64];
        [*&v49[OBJC_IVAR____TtC7Climate14ClimateStepper_downButton] addTarget:v58 action:"didTapRightClimateStatusBarButton:" forControlEvents:64];
        v59 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
        swift_beginAccess();
        [*&v49[v59] addTarget:v58 action:"didTapRightClimateStatusBarButton:" forControlEvents:64];
        if (!v50)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v62 = v50;
        if (!v50)
        {
          goto LABEL_26;
        }
      }

      [*&v50[OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_seatButton] addTarget:v80 action:"didTapRightClimateStatusBarButton:" forControlEvents:64];
      goto LABEL_26;
    }

    if (v75 == 2)
    {
      if (v49)
      {
        v51 = *&v49[OBJC_IVAR____TtC7Climate14ClimateStepper_upButton];
        v52 = v50;
        v53 = v80;
        [v51 addTarget:v80 action:"didTapLeftClimateStatusBarButton:" forControlEvents:64];
        [*&v49[OBJC_IVAR____TtC7Climate14ClimateStepper_downButton] addTarget:v53 action:"didTapLeftClimateStatusBarButton:" forControlEvents:64];
        v54 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
        swift_beginAccess();
        [*&v49[v54] addTarget:v53 action:"didTapLeftClimateStatusBarButton:" forControlEvents:64];
        if (!v50)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      v61 = v50;
      if (v50)
      {
LABEL_23:
        [*&v50[OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_seatButton] addTarget:v80 action:"didTapLeftClimateStatusBarButton:" forControlEvents:64];
      }
    }

    else
    {
      v60 = v50;
    }

LABEL_26:
    v63 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_persistentElements;
    v64 = v80;
    swift_beginAccess();
    v65 = v74;
    sub_1000287E8(&v64[v63], v74, &unk_100115120);
    v66 = type metadata accessor for CAUPersistentElements();
    v67 = (*(*(v66 - 8) + 48))(v65, 1, v66);
    sub_100008904(v65, &unk_100115120);
    if (v49)
    {
      v68 = 0.0;
      if (v67 == 1)
      {
        v68 = 1.0;
      }

      [v49 setAlpha:v68];
    }

    v38 = v75;
    goto LABEL_31;
  }

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = a2;
  v29 = objc_allocWithZone(type metadata accessor for ClimateVerticalStatusBarView());
  v30 = a2;
  v31 = a5;
  v32 = a5;

  v33 = v74;
  v34 = v74;
  v35 = v75;
  v36 = v75;
  v37 = v31;
  v38 = v30;
  sub_1000653AC(a1, v33, v35, v37, sub_100028888, v28);
  v40 = v39;

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  if (v38 == 8)
  {
    v82 = type metadata accessor for ClimateOverlayViewController(0);
    v81[0] = v80;
    v55 = v80;
    sub_1000618E8(v81, "didTapRightClimateStatusBarButton:", 64);
    sub_100008904(v81, &unk_1001166B0);
    goto LABEL_33;
  }

  if (v38 == 2)
  {
    v82 = type metadata accessor for ClimateOverlayViewController(0);
    v81[0] = v80;
    v42 = v80;
    sub_1000618E8(v81, "didTapLeftClimateStatusBarButton:", 64);
    sub_100008904(v81, &unk_1001166B0);
LABEL_34:
    v69 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
    goto LABEL_35;
  }

LABEL_31:
  if (v38 == 2)
  {
    goto LABEL_34;
  }

  if (v38 != 8)
  {
    goto LABEL_36;
  }

LABEL_33:
  v69 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView;
LABEL_35:
  v70 = *v69;
  v71 = *&v80[v70];
  *&v80[v70] = v40;
  v40 = v40;

LABEL_36:
  v72 = [v80 view];
  if (v72)
  {
    v73 = v72;
    [v72 addSubview:v40];

    return;
  }

LABEL_39:
  __break(1u);
}

void sub_100022320()
{
  sub_10002240C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002240C()
{
  if (!qword_100114D68)
  {
    type metadata accessor for CAUPersistentElements();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100114D68);
    }
  }
}

void sub_100022464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10002253C(1, a3, 0);
  }
}

void sub_10002253C(char a1, uint64_t a2, char a3)
{
  LOBYTE(v4) = a3;
  v7 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v8 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349312;
    *(v9 + 4) = a2;
    *(v9 + 12) = 1026;
    *(v9 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v7, "Asking to update popover for side: %{public}lu, isHidden: %{BOOL,public}d", v9, 0x12u);
  }

  if (a2 == 2)
  {
    v10 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = *&v3[*v10];
  v44 = v11;
  if (a1)
  {
    if (!Strong)
    {
      goto LABEL_29;
    }

    v12 = [Strong view];
    if (v12)
    {
      v13 = v12;
      [v12 alpha];
      v15 = v14;

      if (v15 < 1.0)
      {
        v16 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v8, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 134349056;
          *(v17 + 4) = a2;
          _os_log_impl(&_mh_execute_header, v8, v16, "Early return, popover already hidden for side: %{public}lu", v17, 0xCu);
        }

        v18 = Strong;
        goto LABEL_32;
      }

LABEL_29:
      v37 = objc_opt_self();
      v38 = swift_allocObject();
      *(v38 + 16) = Strong;
      *(v38 + 24) = v11;
      *(v38 + 32) = v4 & 1;
      v50 = sub_1000281B8;
      v51 = v38;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_1000B4DF4;
      v49 = &unk_1000F76C0;
      v39 = _Block_copy(&aBlock);
      v40 = v44;
      v41 = Strong;

      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = sub_1000281FC;
      v51 = v42;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_10001C4BC;
      v49 = &unk_1000F7710;
      v43 = _Block_copy(&aBlock);

      [v37 animateWithDuration:0 delay:v39 options:v43 animations:0.35 completion:0.0];

      _Block_release(v43);
      _Block_release(v39);
      return;
    }

    goto LABEL_36;
  }

  if (Strong)
  {
    v19 = [Strong view];
    if (!v19)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v20 = v19;
    [v19 setAlpha:1.0];
  }

  if (v11)
  {
    type metadata accessor for ClimateVerticalStatusBarView();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = *(v21 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator);
      *(v21 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator) = 5;
      v23 = v44;
      sub_100060814(v22);
    }
  }

  if (Strong)
  {
    v24 = [Strong view];
    if (v24)
    {
      v25 = v24;
      v26 = [v3 view];
      if (!v26)
      {
LABEL_38:
        __break(1u);
        return;
      }

      v27 = v26;
      [v26 bringSubviewToFront:v25];
    }
  }

  v28 = [v3 view];
  if (!v28)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v29 = v28;
  [v28 layoutIfNeeded];

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    v4 = [v30 _FBSScene];

    v32 = swift_allocObject();
    *(v32 + 16) = v3;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_100028130;
    *(v33 + 24) = v32;
    v50 = sub_100028138;
    v51 = v33;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_10001FDA4;
    v49 = &unk_1000F7670;
    v34 = _Block_copy(&aBlock);
    v11 = v51;
    v35 = v3;

    [v4 updateClientSettingsWithBlock:v34];

    _Block_release(v34);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  v18 = v44;
LABEL_32:
}

void sub_100022B9C()
{
  v0 = static os_log_type_t.error.getter();
  sub_10000827C(0, &qword_1001149B0);
  v1 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v1, v0))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v29[0] = v3;
    *v2 = 136315138;
    type metadata accessor for CAUAppDockIndicator();
    sub_1000280B0(&qword_100115170, &type metadata accessor for CAUAppDockIndicator);
    v4 = Set.description.getter();
    v6 = sub_10000835C(v4, v5, v29);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v1, v0, "indicators: %s", v2, 0xCu);
    sub_100006B9C(v3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [objc_opt_self() sharedApplication];
    v10 = [v9 delegate];

    if (!v10)
    {
LABEL_12:
      __break(1u);
      return;
    }

    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v11 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = v29[0];
    if (v29[0])
    {
      v13 = v29[1];
      v14 = v29[2];

      v15 = v12;
      v16 = v13;
      v17 = v14;

      sub_1000204D4(v29);
      v19 = v18;
      v21 = v20;
      v22 = swift_unknownObjectWeakLoadStrong();
      if (!v22 || (v23 = v22, v27 = [v22 _FBSScene], v23, v24 = swift_allocObject(), v24[2] = 0, v24[3] = v19, v24[4] = 0, v24[5] = v21, v25 = swift_allocObject(), *(v25 + 16) = sub_1000288A8, *(v25 + 24) = v24, aBlock[4] = sub_100028A90, aBlock[5] = v25, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_10001FDA4, aBlock[3] = &unk_1000F7828, v26 = _Block_copy(aBlock), , , objc_msgSend(v27, "updateClientSettingsWithBlock:", v26), v27, _Block_release(v26), LOBYTE(v26) = swift_isEscapingClosureAtFileLocation(), , , (v26 & 1) == 0))
      {
        sub_10001DDA8();

        sub_1000081D8(v12, v13, v14);
        sub_1000081D8(v12, v13, v14);
        return;
      }

      __break(1u);
      goto LABEL_12;
    }
  }
}

void sub_10002302C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100008964(a1, v71);
  type metadata accessor for ClimateButton();
  if (swift_dynamicCast())
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 delegate];

    if (!v6)
    {
      __break(1u);
      goto LABEL_64;
    }

    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v7 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v71[0] & 2) != 0)
    {
      if (a2 == 2)
      {
        v8 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView];
        if (v8)
        {
          goto LABEL_9;
        }
      }

      else if (a2 == 8)
      {
        v8 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView];
        if (v8)
        {
LABEL_9:
          Strong = swift_unknownObjectWeakLoadStrong();
          v10 = v8;
          if (Strong)
          {
            type metadata accessor for ClimateHorizontalStatusBarView();
            v11 = swift_dynamicCastClass();
            if (v11)
            {
              v12 = v11;
              v13 = *(v11 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper);
              if (v13)
              {
                sub_10000827C(0, &qword_100115110);
                v14 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
                swift_beginAccess();
                v15 = *&v13[v14];
                v69 = Strong;
                v68 = v10;
                v16 = v13;
                v17 = v15;
                v18 = static NSObject.== infix(_:_:)();

                if (v18)
                {
                  v19 = [v69 view];
                  if (!v19)
                  {
LABEL_67:
                    __break(1u);
                    goto LABEL_68;
                  }

                  v20 = v19;
                  [v19 alpha];
                  v22 = v21;

                  v10 = v68;
                  goto LABEL_25;
                }
              }

              else
              {
                v25 = Strong;
                v26 = v10;
              }

              v27 = *(v12 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_seatHeatingIndicator);
              if (v27)
              {
                sub_10000827C(0, &qword_100115110);
                v28 = *&v27[OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_seatButton];
                v29 = v27;
                v30 = v28;
                v31 = static NSObject.== infix(_:_:)();

                if (v31)
                {
                  v32 = [Strong view];
                  if (!v32)
                  {
LABEL_68:
                    __break(1u);
                    goto LABEL_69;
                  }

                  v33 = v32;
                  [v32 alpha];
                  v22 = v34;

LABEL_25:
                  v35 = v22 == 1.0;
                  goto LABEL_29;
                }
              }
            }

            else
            {
              v24 = Strong;
            }
          }

          v35 = 0;
LABEL_29:
          v36 = *&v10[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone];

          v37 = [v3 view];
          if (v37)
          {
            v38 = v37;
            sub_10007BD94(Strong, v36, v37, a2, v35);

            type metadata accessor for ClimateHorizontalStatusBarView();
            v39 = swift_dynamicCastClass();
            if (!v39 || (v40 = *(v39 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper)) == 0)
            {
LABEL_34:
              type metadata accessor for ClimateVerticalStatusBarView();
              v47 = swift_dynamicCastClass();
              if (!v47)
              {

                return;
              }

              v48 = *(v47 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator);
              if (!v48)
              {

                goto LABEL_42;
              }

              sub_10000827C(0, &qword_100115110);
              v49 = v48;
              if ((static NSObject.== infix(_:_:)() & 1) == 0 || v35)
              {

LABEL_42:
                return;
              }

              v59 = swift_unknownObjectWeakLoadStrong();
              if (v59)
              {
                v60 = v59;
                v61 = [v59 view];
              }

              swift_unknownObjectWeakAssign();
              swift_unknownObjectRelease();
              v62 = [v3 view];
              if (v62)
              {
                v63 = v62;
                sub_10000827C(0, &unk_1001159D0);
                v64 = static UIFocusSystem.focusSystem(for:)();
                if (v64)
                {
                  v65 = v64;
                  if ([v64 focusedItem])
                  {
                    swift_unknownObjectRelease();
                    [v63 _setNeedsNonDeferredFocusUpdate];
                  }
                }

                v66 = [v3 view];
                if (v66)
                {
                  v67 = v66;
                  [v66 updateFocusIfNeeded];

                  goto LABEL_62;
                }

                goto LABEL_70;
              }

LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
              return;
            }

            sub_10000827C(0, &qword_100115110);
            v41 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
            swift_beginAccess();
            v42 = *&v40[v41];
            v43 = v10;
            v44 = v40;
            v45 = v42;
            v46 = static NSObject.== infix(_:_:)();

            if (v35 || (v46 & 1) == 0)
            {

              goto LABEL_34;
            }

            v50 = swift_unknownObjectWeakLoadStrong();
            if (v50)
            {
              v51 = v50;
              v52 = [v50 view];
            }

            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
            v53 = [v3 view];
            if (v53)
            {
              v54 = v53;
              sub_10000827C(0, &unk_1001159D0);
              v55 = static UIFocusSystem.focusSystem(for:)();
              if (v55)
              {
                v56 = v55;
                if ([v55 focusedItem])
                {
                  swift_unknownObjectRelease();
                  [v54 _setNeedsNonDeferredFocusUpdate];
                }
              }

              v57 = [v3 view];
              if (v57)
              {
                v58 = v57;
                [v57 updateFocusIfNeeded];

LABEL_62:
                swift_unknownObjectWeakAssign();
                return;
              }

              goto LABEL_66;
            }

LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      static os_log_type_t.error.getter();
      sub_10000827C(0, &qword_1001149B0);
      v23 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }
  }
}

uint64_t sub_10002383C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002302C(v8, a4);

  return sub_100006B9C(v8);
}

void sub_1000238B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_31;
  }

  v7 = v6;
  [v6 setAlpha:0.0];

  [v3 addChildViewController:a1];
  v8 = [v3 view];
  if (!v8)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = v8;
  v10 = [a1 view];
  if (!v10)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v11 = v10;
  [v9 addSubview:v10];

  [a1 didMoveToParentViewController:v3];
  v12 = [a1 view];
  if (!v12)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
  if (a2 != 2)
  {
    v14 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView;
  }

  v15 = *&v3[*v14];
  if (v15)
  {
    v38 = v15;
    sub_100023D74(a1, v38, a2);
    v16 = objc_opt_self();
    sub_10000827C(0, &qword_1001149C0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v16 activateConstraints:isa];

    swift_unknownObjectWeakAssign();
    type metadata accessor for ClimateHorizontalQuickActionPopover();
    if (!swift_dynamicCastClass())
    {

LABEL_22:
      v36 = static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      v37 = qword_10011B1C0;
      if (!os_log_type_enabled(qword_10011B1C0, v36))
      {
        goto LABEL_27;
      }

      v28 = swift_slowAlloc();
      *v28 = 134349056;
      *(v28 + 4) = a2;
      v29 = "Popover added to hiearchy for side: %{public}lu";
      v30 = v36;
      v31 = v37;
      goto LABEL_26;
    }

    v18 = objc_opt_self();
    v19 = a1;
    v20 = [v18 sharedApplication];
    v21 = [v20 delegate];

    if (v21)
    {

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v22 = sub_1000AF438();
      swift_unknownObjectRelease();
      v23 = [*&v22[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 configuration];

        LOBYTE(v24) = [v25 rightHandDrive];
        if (v24)
        {
          v26 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
LABEL_18:
          v32 = *&v3[*v26];
          if (v32 && (type metadata accessor for ClimateHorizontalStatusBarView(), swift_dynamicCastClass()))
          {
            v33 = v32;
            sub_10009E260();
            v35 = v34;

            swift_unknownObjectWeakAssign();
          }

          else
          {
          }

          goto LABEL_22;
        }
      }

      else
      {
      }

      v26 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView;
      goto LABEL_18;
    }

LABEL_34:
    __break(1u);
    return;
  }

  v27 = static os_log_type_t.error.getter();
  sub_10000827C(0, &qword_1001149B0);
  v38 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v38, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134349056;
    *(v28 + 4) = a2;
    v29 = "Unable to create popover for side: %{public}lu";
    v30 = v27;
    v31 = v38;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v31, v30, v29, v28, 0xCu);
  }

LABEL_27:
}

void sub_100023D74(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (!v9)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v10 = sub_1000AF438();
  swift_unknownObjectRelease();
  v11 = v10[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  v12 = [a1 view];
  v13 = v12;
  if (v11)
  {
    if (a3 == 2)
    {
      if (!v12)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v14 = [v12 leftAnchor];

      v15 = [v4 view];
      if (!v15)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v16 = v15;
      v17 = [v15 safeAreaLayoutGuide];

      v18 = [v17 leftAnchor];
      v19 = [v14 constraintEqualToAnchor:v18 constant:5.0];
    }

    else
    {
      if (!v12)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v14 = [v12 rightAnchor];

      v25 = [v4 view];
      if (!v25)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v26 = v25;
      v27 = [v25 safeAreaLayoutGuide];

      v18 = [v27 rightAnchor];
      v19 = [v14 constraintEqualToAnchor:v18 constant:-5.0];
    }

    v28 = v19;

    sub_1000040E8(&unk_100114770);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D5D90;
    v30 = v28;
    v31 = [a1 view];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 topAnchor];

      v34 = [v4 view];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 topAnchor];

        v37 = [v33 constraintEqualToAnchor:v36 constant:4.0];
        *(inited + 32) = v37;
        v38 = [a1 view];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 heightAnchor];

          v41 = [v4 view];
          if (v41)
          {
            v42 = v41;
            [v41 bounds];
            Height = CGRectGetHeight(v62);

            v44 = [v40 constraintEqualToConstant:Height + -8.0];
            *(inited + 40) = v44;
            v45 = [a1 view];
            if (v45)
            {
              v46 = v45;
              v47 = [v45 widthAnchor];

              v48 = [*&a1[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_contentView] widthAnchor];
              v49 = [v47 constraintEqualToAnchor:v48 constant:24.0];

              *(inited + 48) = v49;
              *(inited + 56) = v30;
LABEL_26:
              sub_1000B7604(inited);

              return;
            }

            goto LABEL_34;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (a3 == 2)
  {
    if (!v12)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v20 = [v12 leftAnchor];

    v21 = [v4 view];
    if (!v21)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v22 = v21;
    v23 = [v21 leftAnchor];

    v24 = [v20 constraintEqualToAnchor:v23 constant:6.0];
LABEL_23:
    v52 = v24;

    sub_1000040E8(&unk_100114770);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D5BB0;
    v30 = v52;
    v53 = [a1 view];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 heightAnchor];

      v56 = [v55 constraintEqualToConstant:64.0];
      *(inited + 32) = v56;
      v57 = [a1 view];
      if (v57)
      {
        v58 = v57;
        v59 = [v57 bottomAnchor];

        v60 = [a2 topAnchor];
        v61 = [v59 constraintEqualToAnchor:v60 constant:-6.0];

        *(inited + 40) = v61;
        *(inited + 48) = v30;
        goto LABEL_26;
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (!v12)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = [v12 rightAnchor];

  v50 = [v4 view];
  if (v50)
  {
    v51 = v50;
    v23 = [v50 rightAnchor];

    v24 = [v20 constraintEqualToAnchor:v23 constant:-6.0];
    goto LABEL_23;
  }

LABEL_42:
  __break(1u);
}

void sub_100024404(void *a1, void *a2, char a3)
{
  if (a1)
  {
    v5 = [a1 view];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 setAlpha:0.0];
  }

  if (a2)
  {
    type metadata accessor for ClimateVerticalStatusBarView();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      if ((a3 & 1) == 0)
      {
        v8 = *(v7 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator);
        *(v7 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator) = 0;
        v9 = a2;
        sub_100060814(v8);
      }
    }
  }
}

void sub_1000244E0(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isEscapingClosureAtFileLocation = Strong;
    if (a1)
    {
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        v6 = [v4 _FBSScene];

        v7 = swift_allocObject();
        *(v7 + 16) = isEscapingClosureAtFileLocation;
        v8 = swift_allocObject();
        *(v8 + 16) = sub_100028A94;
        *(v8 + 24) = v7;
        aBlock[4] = sub_100028A90;
        aBlock[5] = v8;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001FDA4;
        aBlock[3] = &unk_1000F7788;
        v9 = _Block_copy(aBlock);
        v10 = isEscapingClosureAtFileLocation;

        [v6 updateClientSettingsWithBlock:v9];

        _Block_release(v9);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
      }
    }
  }
}

void sub_1000246A4(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = a1;
    if (Strong)
    {
      v9 = Strong;
      v10 = [v9 view];
      if (!v10)
      {
        goto LABEL_34;
      }

      v11 = v10;
      [v10 alpha];
      v13 = v12;

      if (v13 != 0.0)
      {
        v19 = [v9 view];

        if (!v19)
        {
          goto LABEL_35;
        }

        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v28 = [objc_opt_self() valueWithCGRect:{v21, v23, v25, v27}];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (!v7)
        {
LABEL_19:
          sub_1000040E8(&qword_1001150B8);
          swift_arrayDestroy();
          if (_swiftEmptyArrayStorage >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_21;
            }
          }

          else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_21:
            sub_1000040E8(&qword_1001150C0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1000D5BA0;
            v40 = *(a2 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView);
            *(inited + 32) = v40;
            v41 = *(a2 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView);
            *(inited + 40) = v41;
            if (v40)
            {
              v42 = v41;
              v43 = v40;
              [v43 frame];
              v48 = [objc_opt_self() valueWithCGRect:{v44, v45, v46, v47}];
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            else
            {
              v42 = v41;
            }

            v49 = v42;

            if (v41)
            {
              [v49 frame];
              v54 = [objc_opt_self() valueWithCGRect:{v50, v51, v52, v53}];
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }
          }

          sub_10000827C(0, &qword_1001150C8);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v5 setPresentedPopoverFrames:isa];

          return;
        }

LABEL_7:
        v14 = v7;
        v15 = [v14 view];
        if (v15)
        {
          v16 = v15;
          [v15 alpha];
          v18 = v17;

          if (v18 == 0.0)
          {

            goto LABEL_19;
          }

          v29 = [v14 view];

          if (v29)
          {
            [v29 frame];
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v37 = v36;

            v38 = [objc_opt_self() valueWithCGRect:{v31, v33, v35, v37}];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            goto LABEL_19;
          }

LABEL_35:
          __break(1u);
          return;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }
}

void sub_100024C9C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v88 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v86 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v86 - v12;
  v14 = __chkstk_darwin(v11);
  v92 = &v86 - v15;
  v16 = __chkstk_darwin(v14);
  v90 = &v86 - v17;
  v18 = __chkstk_darwin(v16);
  v94 = &v86 - v19;
  __chkstk_darwin(v18);
  v21 = &v86 - v20;
  v22 = sub_1000040E8(&qword_100115840);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v86 - v27;
  __chkstk_darwin(v26);
  v30 = &v86 - v29;
  v31 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v31 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v95 = v21;
  if (!v31)
  {
    v91 = a1;
    v32 = [objc_opt_self() sharedApplication];
    v33 = [v32 delegate];

    if (!v33)
    {
      __break(1u);
      goto LABEL_55;
    }

    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v34 = sub_1000AF438();
    swift_unknownObjectRelease();
    v35 = [*&v34[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 configuration];
      v89 = a2;
      v38 = v5;
      v39 = v13;
      v40 = v10;
      v41 = v30;
      v42 = v37;

      LOBYTE(v36) = [v42 rightHandDrive];
      v30 = v41;
      v10 = v40;
      v13 = v39;
      v5 = v38;
      a2 = v89;

      if (v36)
      {
        v43 = &enum case for CAUVehicleLayoutKey.seat_front_right(_:);
LABEL_11:
        (*(v5 + 104))(v28, *v43, v4);
        (*(v5 + 56))(v28, 0, 1, v4);
        v21 = v95;
        a1 = v91;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v43 = &enum case for CAUVehicleLayoutKey.seat_front_left(_:);
    goto LABEL_11;
  }

  CAUVehicleLayoutKey.init(rawValue:)();
LABEL_12:
  sub_100028724(v28, v30);
  sub_1000287E8(v30, v25, &qword_100115840);
  if ((*(v5 + 48))(v25, 1, v4) == 1)
  {
    sub_100008904(v25, &qword_100115840);
    v44 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v45 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = a1;
      v49 = v47;
      v98 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_10000835C(v48, a2, &v98);
      _os_log_impl(&_mh_execute_header, v45, v44, "%s does not map to a VehicleLayoutKey.", v46, 0xCu);
      sub_100006B9C(v49);
    }

LABEL_38:
    v63 = v30;
LABEL_48:
    sub_100008904(v63, &qword_100115840);
    return;
  }

  v87 = v10;
  (*(v5 + 32))(v21, v25, v4);
  v50 = v5;
  v51 = *(v5 + 104);
  LODWORD(v89) = enum case for CAUVehicleLayoutKey.seat_front_left(_:);
  v91 = v51;
  v51(v94);
  sub_1000280B0(&qword_100115100, &type metadata accessor for CAUVehicleLayoutKey);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v98 == v96 && v99 == v97)
  {
    v52 = 1;
  }

  else
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v53 = v94;
  v94 = *(v5 + 8);
  (v94)(v53, v4);

  if ((v52 & 1) == 0)
  {
    v91(v90, enum case for CAUVehicleLayoutKey.seat_front_right(_:), v4);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v98 == v96 && v99 == v97)
    {
      (v94)(v90, v4);
    }

    else
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (v94)(v90, v4);

      if ((v54 & 1) == 0)
      {
        v73 = static os_log_type_t.debug.getter();
        if (qword_100113F00 != -1)
        {
          swift_once();
        }

        v74 = qword_10011B1C0;
        v75 = v88;
        v76 = v95;
        (*(v50 + 16))(v88, v95, v4);
        if (os_log_type_enabled(v74, v73))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v98 = v78;
          *v77 = 136315138;
          v79 = CAUVehicleLayoutKey.rawValue.getter();
          v81 = v80;
          v82 = v75;
          v83 = v94;
          (v94)(v82, v4);
          v84 = sub_10000835C(v79, v81, &v98);

          *(v77 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v74, v73, "%s is not a supported key for quick control", v77, 0xCu);
          sub_100006B9C(v78);

          v83(v95, v4);
        }

        else
        {
          v85 = v94;
          (v94)(v75, v4);
          v85(v76, v4);
        }

        goto LABEL_38;
      }
    }
  }

  v91(v92, v89, v4);
  v55 = v95;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v98 == v96 && v99 == v97)
  {
    (v94)(v92, v4);

    v56 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
  }

  else
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (v94)(v92, v4);

    v56 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView;
    v58 = (v57 & 1) == 0;
    v55 = v95;
    if (!v58)
    {
      v56 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
    }
  }

  v59 = *&v93[*v56];
  if (!v59)
  {
    static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    (v94)(v55, v4);
    goto LABEL_38;
  }

  v92 = *&v93[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_popoverManager];
  v91(v13, v89, v4);
  v60 = v59;
  v61 = v13;
  v62 = v60;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v86 = v30;
  if (v98 == v96 && v99 == v97)
  {
    (v94)(v61, v4);
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    (v94)(v61, v4);
  }

  v64 = v93;
  Strong = swift_unknownObjectWeakLoadStrong();
  v66 = v62;
  v67 = *&v62[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone];

  v68 = [v64 view];
  if (v68)
  {
    v69 = v68;
    v70 = v87;
    v91(v87, v89, v4);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v98 == v96 && v99 == v97)
    {
      v71 = 2;
    }

    else if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v71 = 2;
    }

    else
    {
      v71 = 8;
    }

    v72 = v94;
    (v94)(v70, v4);

    sub_10007BD94(Strong, v67, v69, v71, 0);

    v72(v95, v4);
    v63 = v86;
    goto LABEL_48;
  }

LABEL_55:
  __break(1u);
}

void sub_1000259A0(uint64_t a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    v4 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
  }

  else
  {
    if (a1 != 8)
    {
      return;
    }

    v4 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView;
  }

  v5 = *&v1[*v4];
  if (v5)
  {
    v42 = v5;

    v6 = sub_1000714A4();

    if (v6 || (type metadata accessor for ClimateVerticalStatusBarView(), (v7 = swift_dynamicCastClass()) == 0))
    {
    }

    else
    {
      v8 = v7;
      v44 = 0;
      v45 = 0xE000000000000000;
      if (a1 == 2)
      {
        v9 = 1952867692;
      }

      else
      {
        v9 = 0x7468676972;
      }

      if (a1 == 2)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      v11 = v42;
      v12._countAndFlagsBits = v9;
      v12._object = v10;
      String.append(_:)(v12);

      v13._countAndFlagsBits = 0x6975477375636F46;
      v13._object = 0xEA00000000006564;
      String.append(_:)(v13);
      v14 = [v1 view];
      if (v14)
      {
        v15 = v14;
        sub_1000040E8(&unk_100114770);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1000D5DA0;
        *(v16 + 32) = v8;
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = swift_allocObject();
        *(v18 + 2) = v17;
        *(v18 + 3) = v8;
        *(v18 + 4) = v11;
        v19 = type metadata accessor for ClimateFocusGuide();
        v20 = objc_allocWithZone(v19);
        swift_unknownObjectWeakInit();
        v21 = &v20[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
        *v21 = 0;
        v21[1] = 0;
        *&v20[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
        v20[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
        *v21 = sub_10002890C;
        v21[1] = v18;
        v43.receiver = v20;
        v43.super_class = v19;
        v22 = v11;

        v23 = objc_msgSendSuper2(&v43, "init");
        v24 = String._bridgeToObjectiveC()();

        [v23 setIdentifier:v24];

        sub_1000040E8(&unk_1001150F0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v23 setPreferredFocusEnvironments:isa];

        [v15 addLayoutGuide:v23];

        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1000D5D90;
        v27 = [v23 leadingAnchor];
        v28 = v22;
        v29 = [v28 leadingAnchor];
        v30 = [v27 constraintEqualToAnchor:v29];

        *(v26 + 32) = v30;
        v31 = [v23 trailingAnchor];
        v32 = [v28 trailingAnchor];
        v33 = [v31 constraintEqualToAnchor:v32];

        *(v26 + 40) = v33;
        v34 = [v23 topAnchor];
        v35 = [v28 topAnchor];

        v36 = [v34 constraintEqualToAnchor:v35 constant:33.0];
        *(v26 + 48) = v36;
        v37 = [v23 heightAnchor];

        v38 = [v37 constraintEqualToConstant:1.0];
        *(v26 + 56) = v38;
        sub_10005B210(v26);
        if (a1 == 2)
        {
          v39 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftFocusGuide;
        }

        else
        {
          v39 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightFocusGuide;
        }

        v40 = *&v2[v39];
        *&v2[v39] = v23;
        v41 = v23;

        [v41 setEnabled:0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100025F18(uint64_t a1)
{
  if (a1 == 2)
  {
    v3 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
  }

  else
  {
    if (a1 != 8)
    {
      return;
    }

    v3 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView;
  }

  v4 = *&v1[*v3];
  if (v4)
  {
    type metadata accessor for ClimateHorizontalStatusBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = *(v5 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper);
      if (v7)
      {
        v65 = v1;
        v8 = objc_opt_self();
        v9 = v4;
        v64 = v7;
        v10 = [v8 sharedApplication];
        v11 = [v10 delegate];

        if (v11)
        {
          type metadata accessor for ClimateAppDelegate();
          swift_dynamicCastClassUnconditional();
          v12 = sub_1000AF438();
          swift_unknownObjectRelease();
          v13 = [*&v12[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
          if (v13)
          {
            v14 = v13;
            v15 = [v13 configuration];

            [v15 rightHandDrive];
          }

          v16 = [v8 sharedApplication];
          v17 = [v16 delegate];

          if (v17)
          {
            swift_dynamicCastClassUnconditional();
            v18 = sub_1000AF438();
            swift_unknownObjectRelease();

            v19 = [v8 sharedApplication];
            v20 = [v19 userInterfaceLayoutDirection];

            sub_1000040E8(&unk_100114770);
            v21 = swift_allocObject();
            *(v21 + 16) = xmmword_1000D5DA0;
            if (a1 == 2)
            {
              v22 = 0xE400000000000000;
            }

            else
            {
              v22 = 0xE500000000000000;
            }

            if (a1 == 2)
            {
              v23 = 1952867692;
            }

            else
            {
              v23 = 0x7468676972;
            }

            if ((v20 == 1) != (a1 == 2))
            {
              v24 = &OBJC_IVAR____TtC7Climate14ClimateStepper_upButton;
            }

            else
            {
              v24 = &OBJC_IVAR____TtC7Climate14ClimateStepper_downButton;
            }

            v25 = *&v64[*v24];
            *(v21 + 32) = v25;
            v26 = v25;
            v67 = 0;
            v68 = 0xE000000000000000;
            v27._countAndFlagsBits = v23;
            v27._object = v22;
            String.append(_:)(v27);

            v28._countAndFlagsBits = 0x6975477375636F46;
            v28._object = 0xEA00000000006564;
            String.append(_:)(v28);
            v29 = [v65 view];
            if (v29)
            {
              v30 = v29;

              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
              sub_1000040E8(&unk_1001150F0);
              v31 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v32 = swift_allocObject();
              *(v32 + 16) = v31;
              *(v32 + 24) = v6;
              *(v32 + 32) = a1;
              *(v32 + 40) = v20 == 1;
              v33 = type metadata accessor for ClimateFocusGuide();
              v34 = objc_allocWithZone(v33);
              swift_unknownObjectWeakInit();
              v35 = &v34[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
              *v35 = 0;
              v35[1] = 0;
              *&v34[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
              v34[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
              *v35 = sub_100028958;
              v35[1] = v32;
              v66.receiver = v34;
              v66.super_class = v33;
              v36 = v9;

              v37 = objc_msgSendSuper2(&v66, "init");
              v38 = String._bridgeToObjectiveC()();

              [v37 setIdentifier:v38];

              isa = Array._bridgeToObjectiveC()().super.isa;

              [v37 setPreferredFocusEnvironments:isa];

              [v30 addLayoutGuide:v37];

              sub_1000040E8(&unk_100114770);
              v40 = swift_allocObject();
              *(v40 + 16) = xmmword_1000D5D90;
              if (a1 != 2)
              {
                v53 = [v37 rightAnchor];
                v54 = [v36 leftAnchor];
                v43 = v36;

                v55 = [v53 constraintEqualToAnchor:v54];
                *(v40 + 32) = v55;
                v56 = [v37 widthAnchor];
                v57 = [v56 constraintEqualToConstant:1.0];

                *(v40 + 40) = v57;
                v58 = [v37 heightAnchor];
                v59 = [v58 constraintEqualToConstant:45.0];

                *(v40 + 48) = v59;
                v49 = [v37 bottomAnchor];

                v60 = [v65 view];
                if (v60)
                {
                  v51 = v60;
                  v52 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightFocusGuide;
                  goto LABEL_27;
                }

LABEL_33:
                __break(1u);
                return;
              }

              v41 = [v37 leftAnchor];
              v42 = [v36 rightAnchor];
              v43 = v36;

              v44 = [v41 constraintEqualToAnchor:v42];
              *(v40 + 32) = v44;
              v45 = [v37 widthAnchor];
              v46 = [v45 constraintEqualToConstant:1.0];

              *(v40 + 40) = v46;
              v47 = [v37 heightAnchor];
              v48 = [v47 constraintEqualToConstant:45.0];

              *(v40 + 48) = v48;
              v49 = [v37 bottomAnchor];

              v50 = [v65 view];
              if (v50)
              {
                v51 = v50;
                v52 = &OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftFocusGuide;
LABEL_27:

                v61 = [v51 bottomAnchor];

                v62 = [v49 constraintEqualToAnchor:v61];
                *(v40 + 56) = v62;
                sub_10005B210(v40);

                v63 = *&v65[*v52];
                *&v65[*v52] = v37;

                return;
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_31;
      }
    }
  }
}

void sub_100026744(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [a2 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [a3 frame];
    v16 = v8 + v15;
    [a3 frame];
    v18 = v10 + v17;
    v19 = *&v6[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_heading];
    v20 = 2;
    if (v19 != 16)
    {
      v20 = *&v6[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_heading];
    }

    if (v19 == 32)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v22 = [objc_opt_self() _movementWithHeading:v21 isInitial:1 fallbackMovementOriginatingFrame:{v16, v18, v12, v14}];
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 infoWithSenderID:0];
    v26 = [objc_allocWithZone(UIFocusMovementAction) initWithFocusMovementInfo:v24 inputDeviceInfo:v25 shouldPerformHapticFeedback:0 focusedFrameInSceneCoordinateSpace:{v16, v18, v12, v14}];

    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      v29 = [v27 _FBSScene];

      sub_1000040E8(&unk_100114770);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D5DA0;
      *(inited + 32) = v26;
      v31 = v26;
      sub_1000283A4(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_10000827C(0, &qword_1001150D8);
      sub_10002879C(&unk_100115180, &qword_1001150D8);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v29 sendActions:isa];
    }
  }
}

void sub_100026A00(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [a2 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if ([a2 isHidden])
    {
      v17 = [objc_opt_self() _movementWithHeading:*&v8[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_heading] isInitial:1 fallbackMovementOriginatingFrame:{v10, v12, v14, v16}];
    }

    else
    {
      v18 = objc_opt_self();
      if (a3 == 2)
      {
        v19 = 16;
        v20 = 32;
      }

      else
      {
        v19 = 32;
        v20 = 16;
      }

      if (a4)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      v17 = [v18 _movementWithHeading:v21 isInitial:1 fallbackMovementOriginatingFrame:{v10, v12, v14, v16}];
    }

    v22 = v17;
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 infoWithSenderID:0];
    v26 = [objc_allocWithZone(UIFocusMovementAction) initWithFocusMovementInfo:v24 inputDeviceInfo:v25 shouldPerformHapticFeedback:0 focusedFrameInSceneCoordinateSpace:{v10, v12, v14, v16}];

    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      v29 = [v27 _FBSScene];

      sub_1000040E8(&unk_100114770);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D5DA0;
      *(inited + 32) = v26;
      v31 = v26;
      sub_1000283A4(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_10000827C(0, &qword_1001150D8);
      sub_10002879C(&unk_100115180, &qword_1001150D8);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v29 sendActions:isa];
    }
  }
}

void sub_100026CD0(void *a1, uint64_t a2)
{
  v3 = v2;
  v62.receiver = v3;
  v62.super_class = type metadata accessor for ClimateOverlayViewController(0);
  objc_msgSendSuper2(&v62, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v6 = objc_opt_self();
  v7 = [v6 sharedApplication];
  v8 = [v7 delegate];

  if (!v8)
  {
    __break(1u);
    goto LABEL_53;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v9 = sub_1000AF438();
  swift_unknownObjectRelease();
  v10 = v9[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (v10 != 1)
  {
    goto LABEL_13;
  }

  v11 = [v6 sharedApplication];
  v12 = [v11 delegate];

  if (!v12)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  swift_dynamicCastClassUnconditional();
  v13 = sub_1000AF438();
  swift_unknownObjectRelease();
  v14 = [*&v13[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
  if (!v14)
  {

LABEL_9:
    v17 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftFocusGuide];
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v14 configuration];

  LOBYTE(v15) = [v16 rightHandDrive];
  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightFocusGuide];
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = v17;
  v19 = [a1 previouslyFocusedView];
  v20 = v19;
  if (v19)
  {
  }

  [v18 setEnabled:v20 != 0];

LABEL_13:
  v21 = [a1 nextFocusedItem];
  if (v21)
  {
    swift_unknownObjectRelease();
  }

  v22 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView;
  v23 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView];
  if (v23)
  {
    v24 = v23;
    if ([v24 isHidden])
    {
      v25 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftFocusGuide];
      if (v25)
      {
        v26 = v25;
        [v26 setEnabled:1];
      }

      goto LABEL_23;
    }
  }

  v27 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftFocusGuide];
  if (v27)
  {
    [v27 setEnabled:v21 != 0];
  }

LABEL_23:
  v28 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView;
  v29 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView];
  if (v29)
  {
    v30 = v29;
    if ([v30 isHidden])
    {
      v31 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightFocusGuide];
      if (v31)
      {
        v32 = v31;
        [v32 setEnabled:1];
      }

      goto LABEL_31;
    }
  }

  v33 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightFocusGuide];
  if (v33)
  {
    [v33 setEnabled:v21 != 0];
  }

LABEL_31:
  v34 = [a1 nextFocusedView];
  if (v34)
  {
    v35 = v34;
    v36 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftFocusGuide];
    if (v36)
    {
      sub_1000040E8(&unk_100114770);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000D5DA0;
      *(v37 + 32) = v35;
      v38 = v36;
      v39 = v35;
      sub_1000040E8(&unk_1001150F0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v38 setPreferredFocusEnvironments:isa];
    }

    v41 = *&v3[OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightFocusGuide];
    if (v41)
    {
      sub_1000040E8(&unk_100114770);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1000D5DA0;
      *(v42 + 32) = v35;
      v43 = v35;
      v44 = v41;
      sub_1000040E8(&unk_1001150F0);
      v45 = Array._bridgeToObjectiveC()().super.isa;

      [v44 setPreferredFocusEnvironments:v45];
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_isFocusable] = v21 != 0;
    *(*&Strong[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_contentView] + OBJC_IVAR____TtC7Climate27ClimateTransparentFocusView_canBePartOfFocusInteraction) = v21 != 0;
  }

  v47 = swift_unknownObjectWeakLoadStrong();
  if (v47)
  {
    v47[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_isFocusable] = v21 != 0;
    *(*&v47[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_contentView] + OBJC_IVAR____TtC7Climate27ClimateTransparentFocusView_canBePartOfFocusInteraction) = v21 != 0;
  }

  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    v50 = *&v3[v22];
    if (!v50)
    {
LABEL_45:

      goto LABEL_46;
    }

    v51 = v50;
    v52 = [v49 view];
    if (v52)
    {
      v53 = v52;
      v54 = [v52 isHidden];

      v51[OBJC_IVAR____TtC7Climate27ClimateTransparentFocusView_canBePartOfFocusInteraction] = v54 ^ 1;
      v49 = v51;
      goto LABEL_45;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_46:
  v55 = swift_unknownObjectWeakLoadStrong();
  if (!v55)
  {
    return;
  }

  v56 = v55;
  v57 = *&v3[v28];
  if (v57)
  {
    v58 = v57;
    v59 = [v56 view];
    if (v59)
    {
      v60 = v59;
      v61 = [v59 isHidden];

      v58[OBJC_IVAR____TtC7Climate27ClimateTransparentFocusView_canBePartOfFocusInteraction] = v61 ^ 1;
      v56 = v58;
      goto LABEL_50;
    }

LABEL_55:
    __break(1u);
    return;
  }

LABEL_50:
}

double sub_100027418()
{
  swift_getKeyPath();
  sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

__n128 sub_1000274BC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_100027564(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 16), v11);
  if (result)
  {
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = a3;
    *(v4 + 40) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1000276AC()
{
  swift_getKeyPath();
  sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

__n128 sub_100027750@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 48);
  v5 = *(v3 + 64);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1000277F8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 48), v11);
  if (result)
  {
    *(v4 + 48) = a1;
    *(v4 + 56) = a2;
    *(v4 + 64) = a3;
    *(v4 + 72) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100027940(void *a1)
{
  v2 = v1;
  [a1 primaryDockFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  if (CGRectEqualToRect(*(v1 + 16), v27))
  {
    *(v1 + 16) = v5;
    *(v1 + 24) = v7;
    *(v1 + 32) = v9;
    *(v1 + 40) = v11;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v13 = [objc_opt_self() sharedApplication];
  v14 = [v13 delegate];

  if (v14)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v15 = sub_1000AF438();
    swift_unknownObjectRelease();
    v16 = v15[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

    v17 = &selRef_secondaryDockFrame;
    if (!v16)
    {
      v17 = &selRef_primaryDockFrame;
    }

    [a1 *v17];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v28.origin.x = v18;
    v28.origin.y = v20;
    v28.size.width = v22;
    v28.size.height = v24;
    if (CGRectEqualToRect(*(v2 + 48), v28))
    {
      *(v2 + 48) = v19;
      *(v2 + 56) = v21;
      *(v2 + 64) = v23;
      *(v2 + 72) = v25;
    }

    else
    {
      v26 = swift_getKeyPath();
      __chkstk_darwin(v26);
      sub_1000280B0(&unk_1001150E0, type metadata accessor for ClimateOverlayViewController.DockFrames);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100027C58()
{
  v1 = OBJC_IVAR____TtCC7Climate28ClimateOverlayViewController10DockFrames___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100027D1C()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100027DB8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100027E1C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000040E8(&qword_1001150A0);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_1000280B0(&qword_1001150A8, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1000280B0(&qword_1001150B0, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000280B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000280F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100028178()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000281C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100028204()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_heading) = 4;
  v1 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_persistentElements;
  v2 = type metadata accessor for CAUPersistentElements();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftView) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightView) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_leftFocusGuide) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_rightFocusGuide) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = sub_100027E1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_cancellables) = v3;
  *(v0 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_activeConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_primaryTopLeft) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_secondaryTopLeft) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000283A4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000040E8(&qword_1001150D0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000827C(0, &qword_1001150D8);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000827C(0, &qword_1001150D8);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

__n128 sub_1000286B0()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  return result;
}

__n128 sub_100028710()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 48) = result;
  *(v1 + 64) = v3;
  return result;
}

uint64_t sub_100028724(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&qword_100115840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002879C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000827C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000287E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000040E8(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100028850()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000288C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100028918()
{

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_100028968()
{
  result = qword_1001172C0;
  if (!qword_1001172C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001172C0);
  }

  return result;
}

void sub_100028A98()
{
  v0 = type metadata accessor for CAUVehicleLayoutKey.Side();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 delegate];

  if (v8)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v9 = sub_1000AF438();
    swift_unknownObjectRelease();
    v10 = [*&v9[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 configuration];

      [v12 rightHandDrive];
    }

    CAUVehicleLayoutKey.side.getter();
    v13 = *(v1 + 104);
    v13(v4, enum case for CAUVehicleLayoutKey.Side.right(_:), v0);
    v14 = static CAUVehicleLayoutKey.Side.== infix(_:_:)();
    v15 = *(v1 + 8);
    v15(v4, v0);
    v15(v6, v0);
    if ((v14 & 1) == 0)
    {
      CAUVehicleLayoutKey.side.getter();
      v13(v4, enum case for CAUVehicleLayoutKey.Side.left(_:), v0);
      sub_100028D58();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v15(v4, v0);
      v15(v6, v0);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100028D58()
{
  result = qword_100115200;
  if (!qword_100115200)
  {
    type metadata accessor for CAUVehicleLayoutKey.Side();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115200);
  }

  return result;
}

void sub_100028DB0()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v4 = sub_1000AF438();
    swift_unknownObjectRelease();
    v5 = v4[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

    if (v5 == 1)
    {
      v6 = *(v1 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone);
      if (*(v6 + OBJC_IVAR____TtC7Climate11ClimateZone_seatHeatingCooling))
      {
        if (*(v6 + OBJC_IVAR____TtC7Climate11ClimateZone_seatFan))
        {

          sub_1000714A4();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100028F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_isFocusable] = 1;
  *&v3[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_sourceView] = 0;
  v3[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_isSet] = 0;
  v6 = OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_contentView;
  type metadata accessor for ClimateTransparentFocusView();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = &v3[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_delegate];
  *&v3[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_popoverTapView;
  *&v3[v8] = [objc_allocWithZone(type metadata accessor for ClimatePopoverTapView()) init];
  *&v3[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone] = a1;
  *(v7 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v86.receiver = v3;
  v86.super_class = type metadata accessor for ClimateQuickActionPopover();

  v9 = objc_msgSendSuper2(&v86, "initWithNibName:bundle:", 0, 0);
  v10 = *(a1 + OBJC_IVAR____TtC7Climate11ClimateZone_monitoredServices);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    [v13 registerObserver:v9];
  }

LABEL_10:
  v15 = v9;
  v16 = [v15 view];
  if (!v16)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = v16;
  v18 = OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_contentView;
  [v16 addSubview:*&v15[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_contentView]];

  [*&v15[v18] setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [objc_opt_self() sharedApplication];
  v20 = [v19 delegate];

  if (!v20)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v21 = sub_1000AF438();
  swift_unknownObjectRelease();
  v22 = v21[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (v22 == 1)
  {

    sub_1000040E8(&unk_100114770);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1000D5BB0;
    v24 = [*&v15[v18] centerXAnchor];
    v25 = [v15 view];

    if (!v25)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v26 = [v25 centerXAnchor];

    v27 = [v24 constraintEqualToAnchor:v26];
    *(v23 + 32) = v27;
    v28 = [*&v15[v18] centerYAnchor];
    v29 = [v15 view];

    if (!v29)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v30 = [v29 centerYAnchor];

    v31 = [v28 constraintEqualToAnchor:v30];
    *(v23 + 40) = v31;
    v32 = [*&v15[v18] heightAnchor];
    v33 = [v15 view];

    if (!v33)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v34 = objc_opt_self();
    v35 = (v23 + 48);
    v36 = [v33 heightAnchor];

    v37 = [v32 constraintEqualToAnchor:v36 constant:-24.0];
LABEL_22:
    v52 = v37;

    *v35 = v52;
    sub_10000827C(0, &qword_1001149C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v34 activateConstraints:isa];

    v54 = *&v15[v18];
    v55 = v15;
    v56 = [v54 layer];
    [v56 setMasksToBounds:1];

    v57 = OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_popoverTapView;
    [*&v55[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_popoverTapView] setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = *&v55[v57];
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = &v58[OBJC_IVAR____TtC7Climate21ClimatePopoverTapView_tapHandler];
    v61 = *&v58[OBJC_IVAR____TtC7Climate21ClimatePopoverTapView_tapHandler];
    *v60 = sub_10002CCFC;
    v60[1] = v59;
    v62 = v55;
    v63 = v58;

    sub_100003380(v61);

    [*&v15[v18] addSubview:*&v55[v57]];
    sub_1000040E8(&unk_100114770);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1000D5D90;
    v65 = [*&v55[v57] leftAnchor];
    v66 = [v62 view];
    if (v66)
    {
      v67 = v66;
      v68 = [v66 leftAnchor];

      v69 = [v65 constraintEqualToAnchor:v68];
      *(v64 + 32) = v69;
      v70 = [*&v55[v57] trailingAnchor];
      v71 = [v62 view];
      if (v71)
      {
        v72 = v71;
        v73 = [v71 trailingAnchor];

        v74 = [v70 constraintEqualToAnchor:v73];
        *(v64 + 40) = v74;
        v75 = [*&v55[v57] topAnchor];
        v76 = [v62 view];
        if (v76)
        {
          v77 = v76;
          v78 = [v76 topAnchor];

          v79 = [v75 constraintEqualToAnchor:v78];
          *(v64 + 48) = v79;
          v80 = [*&v55[v57] bottomAnchor];
          v81 = [v62 view];

          if (v81)
          {
            v82 = objc_opt_self();
            v83 = [v81 bottomAnchor];

            v84 = [v80 constraintEqualToAnchor:v83];
            *(v64 + 56) = v84;
            v85 = Array._bridgeToObjectiveC()().super.isa;

            [v82 activateConstraints:v85];

            swift_unknownObjectRelease();

            return;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_1000040E8(&unk_100114770);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000D5D90;
  v39 = [*&v15[v18] leftAnchor];
  v40 = [v15 view];

  if (!v40)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v41 = [v40 leftAnchor];

  v42 = [v39 constraintEqualToAnchor:v41];
  *(v38 + 32) = v42;
  v43 = [*&v15[v18] rightAnchor];
  v44 = [v15 view];

  if (!v44)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v45 = [v44 rightAnchor];

  v46 = [v43 constraintEqualToAnchor:v45];
  *(v38 + 40) = v46;
  v47 = [*&v15[v18] topAnchor];
  v48 = [v15 view];

  if (!v48)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v49 = [v48 topAnchor];

  v50 = [v47 constraintEqualToAnchor:v49];
  *(v38 + 48) = v50;
  v32 = [*&v15[v18] bottomAnchor];
  v51 = [v15 view];

  if (v51)
  {
    v34 = objc_opt_self();
    v35 = (v38 + 56);
    v36 = [v51 bottomAnchor];

    v37 = [v32 constraintEqualToAnchor:v36];
    goto LABEL_22;
  }

LABEL_42:
  __break(1u);
}

void sub_100029A40(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10007C924(v3, a1 & 1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100029AF8(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = _swiftEmptyArrayStorage;
  v36 = _swiftEmptyArrayStorage;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = a2;
    v8 = 0;
    v33 = v4 + 32;
    v30 = *(v4 + 16);
    v31 = v4;
    while (1)
    {
      if (v8 >= *(v4 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_1000C4DB8(0, v5[2] + 1, 1, v5);
        v5 = result;
        *a3 = result;
LABEL_27:
        v28 = v5[2];
        v27 = v5[3];
        if (v28 >= v27 >> 1)
        {
          result = sub_1000C4DB8((v27 > 1), v28 + 1, 1, v5);
          v5 = result;
          *a3 = result;
        }

        v5[2] = v28 + 1;
        v5[v28 + 4] = v3;
        return result;
      }

      v9 = *(v33 + v8);
      v3 = v7;
      sub_100029DC4(v9);
      if (v10)
      {
        break;
      }

LABEL_5:
      if (++v8 == v6)
      {
        v5 = v36;
        goto LABEL_25;
      }
    }

    v11 = v10;
    if (v10 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      v34 = v8;
      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v8;
      if (v12)
      {
LABEL_10:
        v35 = _swiftEmptyArrayStorage;
        v3 = &v35;
        sub_1000A8A60(0, v12 & ~(v12 >> 63), 0);
        if (v12 < 0)
        {
          goto LABEL_32;
        }

        v13 = v35;
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = 0;
          do
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v35 = v13;
            v17 = v13[2];
            v16 = v13[3];
            if (v17 >= v16 >> 1)
            {
              sub_1000A8A60((v16 > 1), v17 + 1, 1);
              v13 = v35;
            }

            ++v14;
            v13[2] = v17 + 1;
            v18 = &v13[2 * v17];
            *(v18 + 32) = v9;
            v18[5] = v15;
          }

          while (v12 != v14);
        }

        else
        {
          v19 = (v11 + 32);
          do
          {
            v20 = *v19;
            v35 = v13;
            v22 = v13[2];
            v21 = v13[3];
            v23 = v20;
            if (v22 >= v21 >> 1)
            {
              v25 = v23;
              sub_1000A8A60((v21 > 1), v22 + 1, 1);
              v23 = v25;
              v13 = v35;
            }

            v13[2] = v22 + 1;
            v24 = &v13[2 * v22];
            *(v24 + 32) = v9;
            v24[5] = v23;
            ++v19;
            --v12;
          }

          while (v12);
        }

        v5 = _swiftEmptyArrayStorage;
        v4 = v31;
        v7 = a2;
        v6 = v30;
        goto LABEL_4;
      }
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_4:
    v3 = &v36;
    sub_1000B761C(v13);
    v8 = v34;
    goto LABEL_5;
  }

LABEL_25:
  if (v5[2])
  {
    v3 = sub_1000C0DF0(v5);

    v5 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v5;
    if ((result & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }
}

void sub_100029DC4(unsigned int a1)
{
  v2 = v1;
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (v4)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v5 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = v18[0];
    if (v18[0])
    {
      v7 = v18[2];
      v16 = v18[1];
      sub_10002A0A4(a1, v18);
      v9 = v8;
      if (v8 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v14 = v7;
        v15 = v6;
        v6 = 0;
        v7 = (v9 & 0xC000000000000001);
        while (1)
        {
          if (v7)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v11 = *(v9 + 8 * v6 + 32);
          }

          v12 = v11;
          v13 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            break;
          }

          (*((swift_isaMask & *v2) + 0x158))(v11, a1);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          ++v6;
          if (v13 == i)
          {
            sub_1000081D8(v15, v16, v14);

            return;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

      sub_1000081D8(v6, v16, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10002A0A4(unsigned __int8 a1, uint64_t a2)
{
  v5 = a1;
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(v5)
  {
    case 0:
      v11 = *(*(v2 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_on);
      if (!v11)
      {
        return;
      }

      sub_1000040E8(&unk_100114770);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1000D5DA0;
      v13 = objc_allocWithZone(type metadata accessor for ClimateZoneOnServiceButton());
      v14 = v11;
      v15 = sub_10000AA70(v14);
      goto LABEL_23;
    case 1:

      sub_10002AB9C();
      return;
    case 2:

      sub_10002AA5C();
      return;
    case 3:

      sub_10002A860();
      return;
    case 4:

      sub_10002BED0(a2);
      return;
    case 5:
      v32 = *(*(v2 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_seatHeatingCooling);
      if (!v32)
      {
        return;
      }

      sub_1000040E8(&unk_100114770);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1000D5DA0;
      v33 = objc_allocWithZone(type metadata accessor for ClimateSeatHeatingCoolingServiceButton());
      v14 = v32;
      v15 = sub_10006E5D8(v14, 4);
      goto LABEL_23;
    case 6:
      v35 = *(*(v2 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_seatFan);
      if (!v35)
      {
        return;
      }

      sub_1000040E8(&unk_100114770);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1000D5DA0;
      v36 = objc_allocWithZone(type metadata accessor for ClimateSeatFanServiceButton());
      v14 = v35;
      v15 = sub_1000584A8(v14);
      goto LABEL_23;
    case 8:
      v26 = *(*(v2 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_steeringWheel);
      if (!v26)
      {
        return;
      }

      sub_1000040E8(&unk_100114770);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1000D5DA0;
      v27 = objc_allocWithZone(type metadata accessor for ClimateSteeringWheelButton());
      v14 = v26;
      v15 = sub_10005BB50(v14);
LABEL_23:
      *(v12 + 32) = v15;

      return;
    case 10:
      sub_1000040E8(&unk_100114770);
      v40 = swift_allocObject();
      v41 = *(v2 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone);
      *(v40 + 16) = xmmword_1000D5DA0;
      v42 = *(v41 + OBJC_IVAR____TtC7Climate11ClimateZone_temperature);
      sub_10000827C(0, &unk_100114750);
      v43 = v42;
      CAFPositionedRequired.layoutKey.getter();

      v44 = objc_allocWithZone(type metadata accessor for ClimateDeepLinkButton());
      *(v40 + 32) = sub_100066818(v10);
      return;
    case 11:
      v23 = [*(a2 + 8) recirculation];
      if (!v23)
      {
        return;
      }

      v24 = v23;
      sub_1000040E8(&unk_100114770);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000D5DA0;
      v25 = objc_allocWithZone(type metadata accessor for ClimateRecirculationServiceButton());
      v21 = v24;
      sub_1000AFEBC(v21, 4);
      goto LABEL_17;
    case 12:
      sub_10002ACFC();
      if ((v37 & 1) == 0)
      {
        return;
      }

      v38 = [*(a2 + 8) cabin];
      if (!v38)
      {
        return;
      }

      v18 = v38;
      if (![v38 hasMaxACOn])
      {
        goto LABEL_43;
      }

      sub_1000040E8(&unk_100114770);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000D5DA0;
      v39 = objc_allocWithZone(type metadata accessor for ClimateMaxACButton());
      v21 = v18;
      sub_100097F6C(v21, 4u);
      goto LABEL_17;
    case 13:
      sub_10002ACFC();
      if ((v16 & 1) == 0)
      {
        return;
      }

      v17 = [*(a2 + 8) cabin];
      if (!v17)
      {
        return;
      }

      v18 = v17;
      if ([v17 hasMaxDefrostOn])
      {
        sub_1000040E8(&unk_100114770);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1000D5DA0;
        v20 = objc_allocWithZone(type metadata accessor for ClimateMaxDefrostButton());
        v21 = v18;
        sub_1000052A0(v21, 4u);
LABEL_17:
        v31 = v22;

        *(v19 + 32) = v31;
      }

      else
      {
LABEL_43:
      }

      return;
    case 14:

      sub_10002BA50(a2);
      return;
    case 15:
      v34 = &enum case for CAUVehicleLayoutKey.windshield_front(_:);
      goto LABEL_42;
    case 16:
      v34 = &enum case for CAUVehicleLayoutKey.windshield_rear(_:);
LABEL_42:
      v45 = v8;
      (*(v7 + 104))(v10, *v34, v8);
      v46 = CAUVehicleLayoutKey.rawValue.getter();
      v48 = v47;
      (*(v7 + 8))(v10, v45);
      sub_10002BBD4(a2, v46, v48);

      return;
    case 17:
      v28 = [*(a2 + 8) cabin];
      if (!v28)
      {
        return;
      }

      v29 = v28;
      sub_1000040E8(&unk_100114770);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000D5DA0;
      v30 = objc_allocWithZone(type metadata accessor for ClimateCompressorButton());
      v21 = v29;
      sub_100002FA4(v21, 4u);
      goto LABEL_17;
    default:
      v53 = 0;
      v54 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v49 = sub_100056230(a1);
      v51 = v50;

      v53 = v49;
      v54 = v51;
      v52._object = 0x80000001000DB550;
      v52._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v52);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x10002A818);
  }
}

void sub_10002A860()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_fan);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedApplication];
    v5 = [v4 delegate];

    if (v5)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v6 = sub_1000AF438();
      swift_unknownObjectRelease();
      v7 = v6[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

      if (v7 != 1)
      {
        v14 = objc_allocWithZone(type metadata accessor for ClimateFanServiceStepper());
        v13 = sub_1000A3058(v3, 4u);
        goto LABEL_8;
      }

      v8 = [v2 sharedApplication];
      v9 = [v8 delegate];

      if (v9)
      {
        swift_dynamicCastClassUnconditional();
        v10 = sub_1000AF438();
        swift_unknownObjectRelease();
        v11 = v10[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

        v12 = objc_allocWithZone(type metadata accessor for ClimateFanContinuousStepper());
        v13 = sub_1000C17E4(v3, v11, 4);
LABEL_8:
        v15 = v13;
        sub_1000040E8(&unk_100114770);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1000D5DA0;
        *(v16 + 32) = v15;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10002AA5C()
{
  sub_1000040E8(&unk_100114770);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone);
  *(v1 + 16) = xmmword_1000D5DA0;
  v3 = *(v2 + OBJC_IVAR____TtC7Climate11ClimateZone_temperature);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v8 = sub_1000AF438();
    swift_unknownObjectRelease();
    v9 = v8[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

    v10 = objc_allocWithZone(type metadata accessor for ClimateTargetTemperatureStepper());
    sub_10002F8EC(v5, v9, 4);
    v12 = v11;

    *(v1 + 32) = v12;
  }

  else
  {
    __break(1u);
  }
}

void *sub_10002AB9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone);
  v2 = OBJC_IVAR____TtC7Climate11ClimateZone_vents;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v4)
  {

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v3 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        v9 = objc_allocWithZone(type metadata accessor for ClimateVentServiceButton());
        sub_1000810E8(v8, 4);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v4 != v6);

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void sub_10002ACFC()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v2 = sub_1000AF438();
    swift_unknownObjectRelease();
    v3 = [*&v2[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 configuration];

      [v5 rightHandDrive];
    }

    sub_10002AE28();
  }

  else
  {
    __break(1u);
  }
}

void sub_10002AE28()
{
  v1 = v0;
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000040E8(&unk_1001152A0);
  __chkstk_darwin(v35);
  v5 = &v32 - v4;
  v6 = sub_1000040E8(&qword_100115840);
  v7 = __chkstk_darwin(v6 - 8);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v37 = &v32 - v12;
  v13 = [objc_opt_self() sharedApplication];
  v14 = [v13 delegate];

  if (v14)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v15 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = v39;
    if (v39 && (v17 = v41, v33 = v40, v18 = v42, , sub_1000081D8(v16, v33, v17), v18))
    {
      v20 = v37;
      v19 = v38;
      v21 = *(v38 + 16);
      v21(v37, v18 + OBJC_IVAR____TtC7Climate11ClimateZone_key, v2);

      v22 = *(v19 + 56);
      v22(v20, 0, 1, v2);
    }

    else
    {
      v20 = v37;
      v23 = v38;
      v22 = *(v38 + 56);
      v22(v37, 1, 1, v2);
      v21 = *(v23 + 16);
    }

    v21(v11, *(v1 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_key, v2);
    v22(v11, 0, 1, v2);
    v24 = *(v35 + 48);
    sub_10001AF08(v20, v5);
    sub_10001AF08(v11, &v5[v24]);
    v25 = v20;
    v26 = *(v38 + 48);
    v27 = v26(v5, 1, v2);
    v28 = v36;
    if (v27 == 1)
    {
      sub_100008904(v11, &qword_100115840);
      sub_100008904(v25, &qword_100115840);
      if (v26(&v5[v24], 1, v2) == 1)
      {
        sub_100008904(v5, &qword_100115840);
        return;
      }

      goto LABEL_11;
    }

    sub_10001AF08(v5, v36);
    if (v26(&v5[v24], 1, v2) == 1)
    {
      sub_100008904(v11, &qword_100115840);
      sub_100008904(v37, &qword_100115840);
      (*(v38 + 8))(v28, v2);
LABEL_11:
      sub_100008904(v5, &unk_1001152A0);
      return;
    }

    v29 = v38;
    v30 = v34;
    (*(v38 + 32))(v34, &v5[v24], v2);
    sub_10000801C();
    dispatch thunk of static Equatable.== infix(_:_:)();
    v31 = *(v29 + 8);
    v31(v30, v2);
    sub_100008904(v11, &qword_100115840);
    sub_100008904(v37, &qword_100115840);
    v31(v28, v2);
    sub_100008904(v5, &qword_100115840);
  }

  else
  {
    __break(1u);
  }
}

id sub_10002B3F8(void *a1, char a2)
{
  sub_10002C530(a1, a2);

  return v2;
}

void sub_10002B584()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 delegate];

  if (v2)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v3 = sub_1000AF438();
    swift_unknownObjectRelease();

    v4 = [v0 sharedApplication];
    v5 = [v4 userInterfaceLayoutDirection];

    sub_10002AE28();
    if (v6 != 8 || v5 == 1)
    {
      sub_10002AE28();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10002B95C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002B9CC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Climate21ClimatePopoverTapView_tapHandler);
  if (v2)
  {
    v3 = result;

    v2(v3 & 1);

    return sub_100003380(v2);
  }

  return result;
}

void *sub_10002BA50(uint64_t a1)
{
  v1 = [*(a1 + 8) zonesSynceds];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_10000827C(0, &qword_1001152C0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_12:

    return _swiftEmptyArrayStorage;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = objc_allocWithZone(type metadata accessor for ClimateZonesSyncedServiceButton());
      sub_10001B8E0(v8, 4u);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v4 != v6);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t *sub_10002BBD4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = [*(a1 + 8) defrosts];
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = v5;
    sub_10000827C(0, &qword_1001167B0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = _swiftEmptyArrayStorage;
    if (v8 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = [v11 vehicleLayoutKey];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v16;

        if (v15 == a2 && v6 == a3)
        {
        }

        else
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v18 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = &v27;
        specialized ContiguousArray._endMutation()();
LABEL_7:
        ++v10;
        if (v13 == i)
        {
          v19 = v27;
          v6 = _swiftEmptyArrayStorage;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v19 = v6;
LABEL_24:

    v27 = v6;
    if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
    {
      goto LABEL_41;
    }

    for (j = *(v19 + 16); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v21 = 0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v19 + 16))
          {
            goto LABEL_40;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v25 = objc_allocWithZone(type metadata accessor for ClimateDefrostServiceButton());
        sub_1000047D8(v23, 4u);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v6 = &v27;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v21;
        if (v24 == j)
        {
          v6 = v27;
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_37:
  }

  return v6;
}

void *sub_10002BED0(uint64_t a1)
{
  v1 = [*(a1 + 8) autoClimateControls];
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = v1;
    sub_10000827C(0, &qword_1001152D0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = _swiftEmptyArrayStorage;
    if (v4 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      v55 = v4 & 0xFFFFFFFFFFFFFF8;
      v56 = v4 & 0xC000000000000001;
      v53 = v4;
      v54 = i;
      while (1)
      {
        if (v56)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v55 + 16))
          {
            goto LABEL_39;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v2 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v61 = v6 + 1;
        v62 = v6;
        v60 = v7;
        if ([v7 hasLevel])
        {
          v9 = objc_allocWithZone(type metadata accessor for ClimateAutoModeLevelButton());
          sub_100050E00(v8);
          v11 = v10;
        }

        else
        {
          v12 = objc_allocWithZone(type metadata accessor for ClimateAutoModeIntensityButton());
          *&v12[OBJC_IVAR____TtC7Climate31ClimateAutoControlServiceButton_autoClimateControl] = v8;
          v13 = type metadata accessor for ClimateAutoControlServiceButton();
          v64.receiver = v12;
          v64.super_class = v13;
          v14 = v8;
          v15 = objc_msgSendSuper2(&v64, "init");
          v16 = *((swift_isaMask & *v15) + 0x1F8);
          v17 = v15;
          v16();
          [v14 registerObserver:v17];

          v18 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
          swift_beginAccess();
          LOBYTE(v16) = *(v17 + v18);
          *(v17 + v18) = 1;
          v11 = v17;
          if ((v16 & 1) == 0)
          {
            ClimateButton.updateClimateConfiguration()();
          }

          v19 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = v14;
          v21 = &v11[OBJC_IVAR____TtC7Climate13ClimateButton_action];
          swift_beginAccess();
          v22 = *v21;
          *v21 = sub_10002CC0C;
          v21[1] = v20;
          v23 = v14;

          sub_100003380(v22);

          sub_10008CD4C();
        }

        v24 = &v11[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor];
        v25 = *&v11[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor];
        v26 = *&v11[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 8];
        v27 = *&v11[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 16];
        v28 = objc_opt_self();
        v29 = v11;
        v30 = v25;
        v31 = v26;

        v32 = [v28 systemGreenColor];
        if (!v32)
        {
          v32 = v31;
        }

        v33 = *v24;
        v63 = *(v24 + 1);
        v34 = *(v24 + 2);
        *v24 = v30;
        *(v24 + 1) = v32;
        *(v24 + 2) = v27;
        sub_10000827C(0, &qword_100115110);
        v35 = v30;

        v59 = v32;
        if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
        {

LABEL_21:
          v57 = v33;
          v58 = v35;
          if (((*((swift_isaMask & *v29) + 0x118))(v38) & 0x1B) == 1)
          {
            v39 = v24;
          }

          else
          {
            v39 = &v29[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor];
          }

          v40 = *(v39 + 1);
          v41 = *(v39 + 2);
          v42 = *v39;
          v43 = v40;

          v44 = &v29[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
          v46 = *&v29[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
          v45 = *&v29[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
          v47 = *&v29[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
          *v44 = v42;
          *(v44 + 1) = v43;
          *(v44 + 2) = v41;
          v48 = v42;
          v49 = v43;

          if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (sub_10007DB08(v41, v47), (v50 & 1) == 0))
          {
            ClimateButton.refreshColorConfig()();
          }

          v4 = v53;
          goto LABEL_29;
        }

        sub_10007DB08(v27, v34);
        v37 = v36;

        if ((v37 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_29:
        v2 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
        swift_beginAccess();
        v51 = *(v2 + v29);
        *(v2 + v29) = 1;
        if ((v51 & 1) == 0)
        {
          ClimateButton.updateClimateConfiguration()();
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v2 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v62 + 1;
        if (v61 == v54)
        {
          v2 = v65;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

LABEL_36:
  }

  return v2;
}

void sub_10002C530(void *a1, char a2)
{
  type metadata accessor for ClimateButton();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = a1;
    v8 = [v6 systemFontOfSize:15.0 weight:UIFontWeightRegular];
    v9 = [objc_opt_self() configurationWithFont:v8 scale:-1];

    (*((swift_isaMask & *v5) + 0x128))(v9);
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [a1 layer];
  v11 = objc_opt_self();
  v12 = [v11 sharedApplication];
  v13 = [v12 delegate];

  if (!v13)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v14 = sub_1000AF438();
  swift_unknownObjectRelease();
  v15 = v14[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  v16 = 20.0;
  if (v15)
  {
    v16 = 22.0;
  }

  [v10 setCornerRadius:v16];

  if (sub_100056230(a2) == 0x70706574536E6166 && v17 == 0xEA00000000007265)
  {

    v18 = &stru_100102000;
    v19 = &stru_100102000;
    goto LABEL_14;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v18 = &stru_100102000;
  v19 = &stru_100102000;
  if ((v20 & 1) == 0)
  {
    if (sub_100056230(a2) == 0xD000000000000012 && 0x80000001000D9E50 == v21)
    {

      goto LABEL_14;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      sub_1000040E8(&unk_100114770);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000D58A0;
      v40 = [a1 widthAnchor];
      v41 = [v11 sharedApplication];
      v42 = [v41 delegate];

      if (!v42)
      {
LABEL_30:
        __break(1u);
        return;
      }

      swift_dynamicCastClassUnconditional();
      v43 = sub_1000AF438();
      swift_unknownObjectRelease();
      v44 = v43[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

      v45 = 40.0;
      v34 = 44.0;
      if (v44)
      {
        v45 = 44.0;
      }

      v46 = [v40 constraintEqualToConstant:v45];

      *(v23 + 32) = v46;
      v31 = [a1 heightAnchor];
      v47 = [v11 sharedApplication];
      v48 = [v47 delegate];

      if (v48)
      {
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_27;
    }
  }

LABEL_14:
  sub_1000040E8(&unk_100114770);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000D58A0;
  v24 = [a1 widthAnchor];
  v25 = [v11 v19[121].offs];
  v26 = [v25 v18[121].name];

  if (!v26)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_dynamicCastClassUnconditional();
  v27 = sub_1000AF438();
  swift_unknownObjectRelease();
  v28 = v27[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  v29 = 120.0;
  if (v28)
  {
    v29 = 44.0;
  }

  v30 = [v24 constraintEqualToConstant:v29];

  *(v23 + 32) = v30;
  v31 = [a1 heightAnchor];
  v32 = [v11 v19[121].offs];
  v33 = [v32 v18[121].name];

  if (!v33)
  {
    goto LABEL_29;
  }

  v34 = 208.0;
LABEL_19:
  swift_dynamicCastClassUnconditional();
  v35 = sub_1000AF438();
  swift_unknownObjectRelease();
  v36 = v35[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (!v36)
  {
    v34 = 40.0;
  }

  v37 = objc_opt_self();
  v38 = [v31 constraintEqualToConstant:v34];

  *(v23 + 40) = v38;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:isa];
}

uint64_t sub_10002CB94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002CBCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10002CC14()
{
  *(v0 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_isFocusable) = 1;
  *(v0 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_sourceView) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_isSet) = 0;
  v1 = OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_contentView;
  type metadata accessor for ClimateTransparentFocusView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_popoverTapView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ClimatePopoverTapView()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10002CD08()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for ClimateVentServiceButton());
  v3 = v1;
  v4 = sub_1000810E8(v3, 2);

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000040E8(&unk_1001179E0);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_1000D5970;
  *(v5 + 32) = v4;
  *(v5 + 40) = &off_1000F6DF0;
  return result;
}

Class sub_10002CDAC(void *a1)
{
  sub_1000040E8(&unk_100114770);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000D5DA0;
  v3 = a1;
  *(v2 + 32) = [v3 contentView];

  sub_1000040E8(&unk_1001150F0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

uint64_t ClimateProminentSettingsCell.preferredFocusEnvironments.getter()
{
  sub_1000040E8(&unk_100114770);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000D5DA0;
  *(v1 + 32) = [v0 contentView];
  return v1;
}

uint64_t sub_10002CED4()
{
  type metadata accessor for ClimateTransparentFocusView();

  return swift_getObjCClassFromMetadata();
}

id ClimateGlassView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id ClimateProminentSettingsCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ClimateProminentSettingsCell();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

uint64_t type metadata accessor for ClimateProminentSettingsCell()
{
  result = qword_1001152D8;
  if (!qword_1001152D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10002D018(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ClimateProminentSettingsCell();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id ClimateProminentSettingsCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateProminentSettingsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t ClimateStepperButton.presentationStates.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock);
  if (!v1)
  {
    return 0;
  }

  v3 = v1(v2);
  sub_100003380(v1);
  return v3;
}

id ClimateStepperButton.isHighlighted.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateStepperButton(0);
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

uint64_t ClimateStepperButton.isHighlighted.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ClimateStepperButton(0);
  objc_msgSendSuper2(&v4, "setHighlighted:", a1 & 1);
  return sub_10002D2C4();
}

uint64_t sub_10002D2C4()
{
  v1 = [v0 titleLabel];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 isHighlighted];
    v4 = 0.2;
    if (!v3)
    {
      v4 = 1.0;
    }

    [v2 setAlpha:v4];
  }

  v5 = [v0 imageView];
  if (v5)
  {
    v6 = v5;
    v7 = [v0 isHighlighted];
    v8 = 0.2;
    if (!v7)
    {
      v8 = 1.0;
    }

    [v6 setAlpha:v8];
  }

  v9 = &v0[OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))([v0 isHighlighted], ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

id ClimateGlassView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClimateStepperButton.init()()
{
  v1 = &v0[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ClimateStepperButton(0);
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_10002D510()
{
  sub_100003380(*(v0 + OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock));
  v1 = v0 + OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate;

  return sub_1000289EC(v1);
}

void sub_10002D5BC(char a1)
{
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = 0.2;
    if ((a1 & 1) == 0)
    {
      v4 = 1.0;
    }

    v5 = v3;
    [v3 setAlpha:v4];
  }

  v6 = [v1 imageView];
  if (v6)
  {
    v7 = 0.2;
    if ((a1 & 1) == 0)
    {
      v7 = 1.0;
    }

    v8 = v6;
    [v6 setAlpha:v7];
  }
}

void sub_10002D6A8()
{
  v1 = v0;
  sub_1000C10C4();
  v2 = &v0[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v3 = *&v0[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v5 = v3(v4);
  sub_100003380(v3);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    v6 = (v5 & 8) == 0;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:
  [v1 setEnabled:v6];
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v7 = *v2;
  if (*v2 && (v8 = , v9 = v7(v8), sub_100003380(v7), (v9 & 0x18) != 0))
  {
    v10 = [v1 imageView];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = [objc_opt_self() tertiaryLabelColor];
    if (qword_100113EC0 != -1)
    {
      swift_once();
    }

    v14 = [v12 resolvedColorWithTraitCollection:qword_100116C00];

    [v11 setTintColor:v14];
  }

  else
  {
    v13 = [v1 imageView];
    if (!v13)
    {
      return;
    }

    v14 = v13;
    [v13 setTintColor:*&v1[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8]];
  }
}

id ClimateMaskedStepperButton.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateMaskedStepperButton(0);
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10002D960(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002DA38()
{
  v1 = sub_1000040E8(&unk_100114790);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v27[-v3];
  v5 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
  swift_beginAccess();
  [*(v0 + v5) targetTemperatureRestricted];
  v6 = [*(v0 + v5) targetTemperatureInvalid];
  v7 = [*(v0 + v5) targetTemperatureDisabled];
  v8 = *(v0 + OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_temperatureButton);
  if ((v6 & 1) != 0 || v7)
  {
    v20 = (v8 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
    swift_beginAccess();
    v21 = v20[1];
    *v20 = 0;
    v20[1] = 0;
    if (v21)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v22 = (v8 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
    swift_beginAccess();
    v23 = *v22;
    v24 = v22[1];
    *v22 = 0xD000000000000012;
    v22[1] = 0x80000001000DB780;
    if (!v24)
    {
      goto LABEL_19;
    }

    if (v23 == 0xD000000000000012 && 0x80000001000DB780 == v24)
    {
    }

    goto LABEL_18;
  }

  v9 = (v8 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  if (v10)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v11 = OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_currentValue;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v11, v1);
  v12 = [*(v0 + v5) targetTemperatureRange];
  v13 = Measurement<>.readableString(in:)();
  v15 = v14;

  (*(v2 + 8))(v4, v1);
  v16 = (v8 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  *v16 = v13;
  v16[1] = v15;
  if (!v18)
  {
    goto LABEL_19;
  }

  if (v13 != v17 || v18 != v15)
  {
LABEL_18:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_19:
      ClimateButton.updateClimateConfiguration()();
    }
  }
}

id sub_10002DD2C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ClimateTargetTemperatureStepper();
  result = objc_msgSendSuper2(&v4, "layoutSubviews");
  if (!v0[OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_style])
  {
    v2 = *&v0[OBJC_IVAR____TtC7Climate14ClimateStepper_upButton];
    [v2 frame];
    [v2 _setCornerRadius:CGRectGetWidth(v5) * 0.5];
    v3 = *&v0[OBJC_IVAR____TtC7Climate14ClimateStepper_downButton];
    [v3 frame];
    return [v3 _setCornerRadius:CGRectGetWidth(v6) * 0.5];
  }

  return result;
}

uint64_t sub_10002DE40(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_1000040E8(&unk_100114790);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v27 = &v24 - v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
  swift_beginAccess();
  v12 = [*(v1 + v11) targetTemperature];
  sub_10000827C(0, &qword_100114AB0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = Measurement.unit.getter();
  v14 = *(v4 + 8);
  v14(v10, v3);
  v15 = [*(v2 + v11) targetTemperatureRange];
  v16 = [v15 step];

  [v16 doubleValue];
  v25 = v13;
  Measurement.init(value:unit:)();
  v17 = *(v2 + v11);
  v18 = [v17 targetTemperature];
  v19 = v26;
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = [*(v2 + v11) targetTemperatureRange];
  v21 = v27;
  Measurement<>.localeStep(_:by:in:)();

  v14(v19, v3);
  v29 = Measurement._bridgeToObjectiveC()();
  isa = v29.super.isa;
  (v14)(v21, v3, *&v29._doubleValue);
  [v17 setTargetTemperature:isa];

  return (v14)(v10, v3);
}

void sub_10002E13C()
{
  v1 = objc_allocWithZone(v0);
  v2 = [objc_opt_self() celsius];
  sub_10000827C(0, &qword_100114AB0);
  Measurement.init(value:unit:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10002E204()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_temperatureButton) titleLabel];
  if (v1)
  {
    v2 = v1;
    v3 = 1 << *(v0 + OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_style);
    if ((v3 & 0x23) != 0)
    {
      if (qword_100113E48 != -1)
      {
        swift_once();
      }

      v4 = &qword_10011ADB8;
LABEL_22:
      v10 = *v4;
      [v2 setFont:v10];

      return;
    }

    if ((v3 & 0xC) != 0)
    {
      v5 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
      swift_beginAccess();
      if (*(v0 + v5) != 1)
      {
        if (qword_100113E58 != -1)
        {
          swift_once();
        }

        v4 = &qword_10011ADC8;
        goto LABEL_22;
      }

      sub_10000827C(0, &qword_100115110);
      v6 = [objc_opt_self() fahrenheit];
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        if (qword_100113E50 != -1)
        {
          swift_once();
        }

        v4 = &qword_10011ADC0;
        goto LABEL_22;
      }
    }

    else
    {
      sub_10000827C(0, &qword_100115110);
      v8 = [objc_opt_self() fahrenheit];
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        if (qword_100113E60 != -1)
        {
          swift_once();
        }

        v4 = &qword_10011ADD0;
        goto LABEL_22;
      }
    }

    if (qword_100113E40 != -1)
    {
      swift_once();
    }

    v4 = &qword_10011ADB0;
    goto LABEL_22;
  }
}

void sub_10002E4B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000040E8(&unk_1001153F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35[-v7];
  v9 = sub_1000040E8(&unk_100114790);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35[-v11];
  v13 = Measurement._bridgeToObjectiveC()();
  v14 = type metadata accessor for ClimateTargetTemperatureStepper();
  v44.receiver = v3;
  v44.super_class = v14;
  objc_msgSendSuper2(&v44, "temperatureService:didUpdateTargetTemperature:", a1, v13);

  v15 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v16 = qword_10011B1C0;
  v17 = *(v10 + 16);
  v17(v12, a2, v9);
  if (os_log_type_enabled(v16, v15))
  {
    v18 = swift_slowAlloc();
    v40 = a2;
    v19 = v18;
    v38 = swift_slowAlloc();
    v42 = 0;
    v43 = v38;
    *v19 = 136315650;
    memset(v41, 0, sizeof(v41));
    v20 = ClimateLogPrefix(file:function:line:_:)(0xD00000000000002DLL, 0x80000001000DB6F0, "temperatureService(_:didUpdateTargetTemperature:)", 49, 2, 127, v41);
    v39 = v17;
    v21 = v20;
    v37 = v16;
    v23 = v22;
    sub_100008904(v41, &qword_100115408);
    v24 = sub_10000835C(v21, v23, &v43);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v25 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
    swift_beginAccess();
    v26 = [*&v3[v25] vehicleLayoutKey];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v15;
    v29 = v28;

    v30 = sub_10000835C(v27, v29, &v43);

    *(v19 + 14) = v30;
    *(v19 + 22) = 2082;
    sub_10000830C(&unk_100117DE0);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v10 + 8))(v12, v9);
    v34 = sub_10000835C(v31, v33, &v43);

    *(v19 + 24) = v34;
    v17 = v39;
    _os_log_impl(&_mh_execute_header, v37, v36, "%s Update zone: %{public}s with target temperature: %{public}s.", v19, 0x20u);
    swift_arrayDestroy();

    a2 = v40;
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  v17(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_10002EA2C(v8);
  sub_100008904(v8, &unk_1001153F0);
  sub_10002DA38();
  ClimateStepper.updatePresentation()();
}

uint64_t sub_10002EA2C(uint64_t a1)
{
  v2 = v1;
  sub_1000040E8(&unk_1001153F0);
  (__chkstk_darwin)();
  v5 = v32 - v4 + 16;
  v6 = sub_1000040E8(&unk_100114790);
  v7 = *(v6 - 8);
  v8 = (__chkstk_darwin)();
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v8);
  v12 = v32 - v11 + 16;
  sub_1000302F4(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100008904(v5, &unk_1001153F0);
  }

  else
  {
    v31 = *(v7 + 32);
    v31(v12, v5, v6);
    v13 = OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_currentValue;
    swift_beginAccess();
    (*(v7 + 16))(v10, v2 + v13, v6);
    sub_10000830C(&unk_100115410);
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    v15 = *(v7 + 8);
    v15(v10, v6);
    if ((v14 & 1) == 0)
    {
      v31(v10, v12, v6);
      swift_beginAccess();
      (*(v7 + 40))(v2 + v13, v10, v6);
      return swift_endAccess();
    }

    v15(v12, v6);
  }

  v16 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v17 = qword_10011B1C0;
  result = os_log_type_enabled(qword_10011B1C0, v16);
  if (result)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = 0;
    v34 = v20;
    *v19 = 136315394;
    memset(v32, 0, sizeof(v32));
    v21 = ClimateLogPrefix(file:function:line:_:)(0xD00000000000002DLL, 0x80000001000DB6F0, "updateCurrentValue(with:)", 25, 2, 135, v32);
    v23 = v22;
    sub_100008904(v32, &qword_100115408);
    v24 = sub_10000835C(v21, v23, &v34);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v25 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
    swift_beginAccess();
    v26 = [*(v2 + v25) vehicleLayoutKey];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_10000835C(v27, v29, &v34);

    *(v19 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v17, v16, "%s Target temperature is nil or already set for zone: %{public}s.", v19, 0x16u);
    swift_arrayDestroy();
  }

  return result;
}

void sub_10002EF9C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v4 = sub_1000AF438();
    swift_unknownObjectRelease();
    v5 = *&v4[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v6 = *&v5[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
    v7 = objc_opt_self();
    v8 = [v7 clearColor];
    v9 = &selRef_systemBlueColor;
    if (v6 == 2)
    {
      v9 = &selRef_labelColor;
      v10 = &selRef_labelColor;
    }

    else
    {
      v10 = &selRef_systemRedColor;
    }

    v11 = [v7 *v9];
    v12 = (v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downColorConfig);
    v14 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downColorConfig);
    v13 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downColorConfig + 8);
    *v12 = v8;
    v12[1] = v11;
    v12[2] = &_swiftEmptyDictionarySingleton;
    v15 = v8;
    v16 = v11;

    sub_10007A4CC(v15, v16, &_swiftEmptyDictionarySingleton);
    v17 = [v7 clearColor];
    v18 = [v7 *v10];
    v19 = (v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_upColorConfig);
    v20 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_upColorConfig);
    v21 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_upColorConfig + 8);
    *v19 = v17;
    v19[1] = v18;
    v19[2] = &_swiftEmptyDictionarySingleton;
    v23 = v17;
    v22 = v18;

    sub_10007A4CC(v23, v22, &_swiftEmptyDictionarySingleton);
  }

  else
  {
    __break(1u);
  }
}

void sub_10002F210()
{
  v1 = OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_currentValue;
  v2 = sub_1000040E8(&unk_100114790);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_temperatureButton);
}

id sub_10002F294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateTargetTemperatureStepper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateTargetTemperatureStepper()
{
  result = qword_1001153D0;
  if (!qword_1001153D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002F3A8()
{
  sub_10002F450();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002F450()
{
  if (!qword_1001153E0)
  {
    sub_10000827C(255, &qword_100114AB0);
    v0 = type metadata accessor for Measurement();
    if (!v1)
    {
      atomic_store(v0, &qword_1001153E0);
    }
  }
}

void sub_10002F5E4(uint64_t a1, id *a2, uint64_t a3, uint64_t *a4)
{
  sub_10000827C(0, &unk_100114780);
  v6 = *a2;
  v7 = static UIFont.preferredFont(forTextStyle:weight:)();

  *a4 = v7;
}

id sub_10002F678(double a1, uint64_t a2, double *a3, void *a4)
{
  result = [objc_opt_self() monospacedDigitSystemFontOfSize:a1 weight:*a3];
  *a4 = result;
  return result;
}

void sub_10002F6D4(void *a1, uint64_t a2)
{
  v3 = v2;
  v17.receiver = v3;
  v17.super_class = type metadata accessor for ClimateTargetTemperatureStepper();
  objc_msgSendSuper2(&v17, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v6 = [a1 nextFocusedView];
  v7 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  if (v6 && (v8 = *&v3[v7], sub_10000827C(0, &qword_100115400), v9 = v8, v10 = static NSObject.== infix(_:_:)(), v9, v6, (v10 & 1) != 0))
  {
    v11 = *&v3[v7];
    [v11 frame];
    [v11 _setCornerRadius:CGRectGetWidth(v18) * 0.5];
  }

  else
  {
    v12 = [a1 previouslyFocusedView];
    if (v12)
    {
      v13 = v12;
      v14 = *&v3[v7];
      sub_10000827C(0, &qword_100115400);
      v15 = v14;
      v16 = static NSObject.== infix(_:_:)();

      if (v16)
      {
        [*&v3[v7] _setCornerRadius:0.0];
      }
    }
  }
}

void sub_10002F8EC(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_1000040E8(&unk_1001153F0);
  __chkstk_darwin(v8 - 8);
  v78 = &v75 - v9;
  v76 = objc_opt_self();
  v10 = [v76 celsius];
  v77 = sub_10000827C(0, &qword_100114AB0);
  Measurement.init(value:unit:)();
  *(v3 + OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_style) = a3;
  if (a3 <= 1u)
  {
    if (!a3)
    {
      v17 = objc_allocWithZone(type metadata accessor for ClimateTemperatureIndicator());
      v12 = a1;
      v13 = 1;
      v14 = 0x4041000000000000;
      v15 = 0;
      v16 = 0;
      goto LABEL_8;
    }
  }

  else if (a3 - 2 >= 2 && a3 == 4)
  {
    v11 = objc_allocWithZone(type metadata accessor for ClimateTemperatureIndicator());
    v12 = a1;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    v16 = 4;
    goto LABEL_8;
  }

  v18 = objc_allocWithZone(type metadata accessor for ClimateTemperatureIndicator());
  v12 = a1;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v16 = a3;
LABEL_8:
  sub_1000B37D0(v12, v13, v14, v15, v16);
  v20 = v19;

  *(v4 + OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_temperatureButton) = v20;
  *(v4 + OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature) = a1;
  v21 = v20;
  v22 = a1;
  v23 = v21;
  v24 = ClimateStepper.init(primaryButton:axis:range:)(v23, a2, [v22 targetTemperatureRange]);
  [v22 registerObserver:v24];

  if (!a3)
  {
    v25 = *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButtonWidth];
    *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButtonWidth] = 0x4043000000000000;
    if (v25 == 38.0)
    {
      v26 = v24;
    }

    else
    {
      v27 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
      swift_beginAccess();
      v28 = *&v24[v27];
      v29 = v24;
      if (!v28)
      {
        ClimateStepper.updateConstraintsAndArrows()();
      }
    }

    v30 = *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_arrowsWidth];
    *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_arrowsWidth] = 0x4043000000000000;
    if (v30 != 38.0)
    {
      v31 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
      swift_beginAccess();
      if (!*&v24[v31])
      {
        ClimateStepper.updateConstraintsAndArrows()();
      }
    }

    v32 = *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_arrowsHeight];
    *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_arrowsHeight] = 0x4046800000000000;
    if (v32 != 45.0)
    {
      v33 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
      swift_beginAccess();
      if (*&v24[v33] == 1)
      {
        ClimateStepper.updateConstraintsAndArrows()();
      }
    }

    v34 = *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButtonHeight];
    *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButtonHeight] = 0x4046800000000000;
    if (v34 != 45.0)
    {
      v35 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
      swift_beginAccess();
      if (*&v24[v35] == 1)
      {
        ClimateStepper.updateConstraintsAndArrows()();
      }
    }

    v36 = *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig];
    v37 = *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 8];
    v38 = *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 16];
    v39 = objc_opt_self();
    v40 = v36;
    v41 = v37;

    v42 = [v39 clearColor];
    if (v42)
    {
      v43 = v42;

      v40 = v43;
    }

    sub_100095F20(v40, v41, v38);
  }

  v80 = a3;
  v79 = v22;
  v44 = [v79 car];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 dimensionManager];

    [v46 registerObserver:v24];
  }

  v47 = objc_opt_self();
  v48 = [v47 clearColor];
  v49 = [v47 systemBlueColor];
  v50 = &v24[OBJC_IVAR____TtC7Climate14ClimateStepper_downColorConfig];
  v51 = *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_downColorConfig];
  v52 = *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_downColorConfig + 8];
  *v50 = v48;
  *(v50 + 1) = v49;
  *(v50 + 2) = &_swiftEmptyDictionarySingleton;
  v53 = v48;
  v54 = v49;

  sub_10007A4CC(v53, v54, &_swiftEmptyDictionarySingleton);
  v55 = [v47 clearColor];
  v56 = [v47 systemRedColor];
  v57 = &v24[OBJC_IVAR____TtC7Climate14ClimateStepper_upColorConfig];
  v58 = *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_upColorConfig];
  v59 = *&v24[OBJC_IVAR____TtC7Climate14ClimateStepper_upColorConfig + 8];
  *v57 = v55;
  *(v57 + 1) = v56;
  *(v57 + 2) = &_swiftEmptyDictionarySingleton;
  v60 = v55;
  v61 = v56;

  sub_10007A4CC(v60, v61, &_swiftEmptyDictionarySingleton);
  if (v80 == 4 || v80 == 2)
  {
    v62 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
    swift_beginAccess();
    [*&v24[v62] setUserInteractionEnabled:0];
  }

  v63 = v79;
  v64 = [v79 car];

  if (!v64 || (v65 = [v64 dimensionManager], v64, v66 = objc_msgSend(v65, "unitTemperature"), v65, !v66))
  {
    v66 = [v76 celsius];
  }

  sub_10002E204();

  v67 = [objc_opt_self() sharedApplication];
  v68 = [v67 delegate];

  if (v68)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v69 = sub_1000AF438();
    swift_unknownObjectRelease();
    v70 = *&v69[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v71 = v24;
    sub_1000AD348();

    v72 = [v63 targetTemperature];
    v73 = v78;
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v74 = sub_1000040E8(&unk_100114790);
    (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
    sub_10002EA2C(v73);
    sub_100008904(v73, &unk_1001153F0);
    sub_10002DA38();
    ClimateStepper.updatePresentation()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100030100()
{
  v1 = sub_1000040E8(&unk_100114790);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-v3];
  sub_10002E204();
  v5 = *(v0 + OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_temperatureButton);
  v6 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = [v7 targetTemperature];
  sub_10000827C(0, &qword_100114AB0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [v7 targetTemperatureRange];
  v10 = Measurement<>.readableString(in:)();
  v12 = v11;

  (*(v2 + 8))(v4, v1);
  v13 = (v5 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = v10;
  v13[1] = v12;
  if (!v15 || (v10 == v14 ? (v16 = v15 == v12) : (v16 = 0), !v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    ClimateButton.updateClimateConfiguration()();
  }
}

uint64_t sub_1000302F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_1001153F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030364()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate29ClimateAutomakerSettingButton_setting);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    v5 = [v3 on];
    if ([v3 disabled] & 1) != 0 || (sub_1000C0074(), (v6) && (CAFAutomakerSetting.isLimitableUI.getter())
    {

      if (v5)
      {
        return 17;
      }

      return 16;
    }

    if ([v3 hasHidden])
    {
      v7 = CAFAutomakerSetting.isHidden.getter();

      if (v5)
      {
        if ((v7 & 1) == 0)
        {
          return 1;
        }

        return 17;
      }

      if (v7)
      {
        return 16;
      }
    }

    else
    {

      if (v5)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id sub_1000304F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateBoolAutomakerSettingButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateBoolAutomakerSettingButton()
{
  result = qword_1001154A8;
  if (!qword_1001154A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000305BC()
{
  v1 = *(v0 + 48);
  if (!*(v1 + 16))
  {
    return;
  }

  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v3 = *(v0 + 48);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
    if ((v4 & 0xC000000000000001) == 0)
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v9 = *(v4 + 32);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_8:
  type metadata accessor for ClimateStepper();
  if (swift_dynamicCastClass())
  {
    v5._countAndFlagsBits = 95;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 95;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    sub_100033FAC(28757, 0xE200000000000000);
  }

  else
  {
    sub_100033EDC();
  }
}