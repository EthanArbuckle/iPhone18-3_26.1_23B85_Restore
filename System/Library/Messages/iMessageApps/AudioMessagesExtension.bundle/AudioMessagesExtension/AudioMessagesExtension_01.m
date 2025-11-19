void sub_36CA0(unsigned __int8 a1, char a2, double a3)
{
  v4 = v3;
  if (v3[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isFirstStateSet] == 1 && v3[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state] == a1)
  {
    return;
  }

  v3[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isFirstStateSet] = 1;
  v7 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state;
  v8 = v3[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state];
  v3[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state] = a1;
  v9 = v3;
  v10 = sub_428D8();
  v11 = sub_42A58();

  if (os_log_type_enabled(v10, v11))
  {
    v95 = v8;
    v12 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v12 = 136315650;
    v13 = [v9 debugDescription];
    v14 = sub_42978();
    v16 = v15;

    v17 = sub_2D818(v14, v16, &aBlock);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2D818(0xD00000000000001FLL, 0x8000000000063A80, &aBlock);
    *(v12 + 22) = 2080;
    v18 = v4[v7];
    if (v18 <= 2)
    {
      if (v4[v7])
      {
        v8 = v95;
        if (v18 == 1)
        {
          v19 = 0xE900000000000067;
          v20 = 0x6E6964726F636572;
        }

        else
        {
          v19 = 0xEB00000000656C62;
          v20 = 0x616C6C65636E6163;
        }
      }

      else
      {
        v19 = 0xE500000000000000;
        v20 = 0x7964616572;
        v8 = v95;
      }
    }

    else if (v4[v7] > 4u)
    {
      v8 = v95;
      if (v18 == 5)
      {
        v19 = 0xE600000000000000;
        v20 = 0x776569766572;
      }

      else
      {
        v19 = 0xE700000000000000;
        v20 = 0x676E6979616C70;
      }
    }

    else
    {
      v8 = v95;
      if (v18 == 3)
      {
        v19 = 0xE400000000000000;
        v20 = 1801678700;
      }

      else
      {
        v19 = 0xE600000000000000;
        v20 = 0x64656B636F6CLL;
      }
    }

    v21 = sub_2D818(v20, v19, &aBlock);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_0, v10, v11, "%s %s transitioned to state %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if ((a1 - 1) <= 2u)
  {
    if ((v8 - 1) < 4)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  if ((v8 - 1) <= 2)
  {
    if (a1 == 4)
    {
      goto LABEL_48;
    }

LABEL_31:
    v29 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recorder] + OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_power;
    swift_beginAccess();
    *v29 = 0;
    *(v29 + 4) = 1;
    v30 = &v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v30 + 1);
      ObjectType = swift_getObjectType();
      (*(v31 + 24))(v9, ObjectType, v31);
LABEL_33:
      swift_unknownObjectRelease();
    }

LABEL_34:
    v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isCollapsed] = 1;
LABEL_35:
    if (a1 <= 1u)
    {
      if (a1)
      {
        v38 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
        if (!v38)
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        [v38 timestamp];
        v34 = 0;
        v37 = v39 + 0.3;
      }

      else
      {
        v35 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
        if (!v35)
        {
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        [v35 timestamp];
        v34 = 0;
        v37 = v36 + a3;
      }
    }

    else
    {
      if (a1 - 2 < 3)
      {
        goto LABEL_48;
      }

      if (a1 == 5)
      {
        v33 = &v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_ringStartTime];
        *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_ringStartTime] = 0;
        v34 = 1;
LABEL_47:
        v33[8] = v34;
        goto LABEL_48;
      }

      v40 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
      if (!v40)
      {
LABEL_96:
        __break(1u);
        return;
      }

      [v40 timestamp];
      v34 = 0;
    }

    v33 = &v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_ringStartTime];
    *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_ringStartTime] = v37;
    goto LABEL_47;
  }

  if (a1 != 4)
  {
    if (v8 != 4)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v8 != 4)
  {
LABEL_21:
    v22 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recorder] + OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_power;
    swift_beginAccess();
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
    if (!v23)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    [v23 timestamp];
    v24 = &v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recordingStartTime];
    *v24 = v25;
    v24[8] = 0;
    v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_hasStartedFirstRecording] = 1;
    v26 = &v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate];
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_34;
    }

    v27 = *(v26 + 1);
    v28 = swift_getObjectType();
    (*(v27 + 8))(v9, v28, v27);
    goto LABEL_33;
  }

LABEL_48:
  sub_37D6C(a1);
  v41 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_iconView];
  sub_379D8(a1);
  v43 = v42;
  [v41 setImage:v42];

  v44 = &v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpText];
  *v44 = 0;
  *(v44 + 1) = 0;
  v96 = v44;

  v45 = &v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpPresentTime];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpDismissTime];
  *v46 = 0;
  v46[8] = 1;
  v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isHelpVisible] = 0;
  v47 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpCalloutView;
  v48 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpCalloutView];
  p_type = (&stru_7AFF0 + 16);
  if (v48)
  {
    v50 = v48;
    [v50 setAlpha:1.0];
    aBlock = 0x3FF0000000000000;
    v98 = 0;
    v99 = 0;
    v100 = 0x3FF0000000000000;
    v101 = 0;
    v102 = 0;
    [v50 setTransform:&aBlock];
    v93 = objc_opt_self();
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = 0;
    v101 = sub_3A378;
    v102 = v51;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_3D178;
    v100 = &unk_6E330;
    v52 = _Block_copy(&aBlock);
    v53 = v50;

    v54 = swift_allocObject();
    *(v54 + 16) = 1;
    *(v54 + 24) = v53;
    v101 = sub_3A358;
    v102 = v54;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    p_type = &stru_7AFF0.type;
    v99 = sub_3D1BC;
    v100 = &unk_6E380;
    v55 = _Block_copy(&aBlock);
    v56 = v53;

    [v93 animateWithDuration:6 delay:v52 usingSpringWithDamping:v55 initialSpringVelocity:0.65 options:0.0 animations:0.78 completion:0.0];

    _Block_release(v55);
    _Block_release(v52);
    v57 = *&v9[v47];
    *&v9[v47] = 0;
  }

  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if ((v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recordingStartTime + 8] & 1) == 0)
        {
          *v45 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recordingStartTime] + 0.8;
          v45[8] = 0;
        }

        v63 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
        if (!v63)
        {
          goto LABEL_92;
        }

        [v63 timestamp];
        *v46 = v64 + 0.8 + 2.0;
        v46[8] = 0;
        type metadata accessor for AMMessagesViewController(0);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v62 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      }

      else
      {
        v71 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
        if (!v71)
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        [v71 timestamp];
        *v45 = v72;
        v45[8] = 0;
        type metadata accessor for AMMessagesViewController(0);
        v73 = swift_getObjCClassFromMetadata();
        v62 = [objc_opt_self() bundleForClass:v73];
      }

      v69 = sub_42968();
      v70 = [v62 localizedStringForKey:v69 value:0 table:0];
      v58 = v96;
      goto LABEL_66;
    }

    v66 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
    v58 = v96;
    if (!v66)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    [v66 timestamp];
    *v45 = v67 + 10.0;
    v45[8] = 0;
    type metadata accessor for AMMessagesViewController(0);
    v68 = swift_getObjCClassFromMetadata();
    v62 = [objc_opt_self() bundleForClass:v68];
  }

  else
  {
    v58 = v96;
    if (a1 - 4 < 3)
    {
      goto LABEL_67;
    }

    v59 = *&v9[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
    if (!v59)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    [v59 timestamp];
    *v45 = v60;
    v45[8] = 0;
    type metadata accessor for AMMessagesViewController(0);
    v61 = swift_getObjCClassFromMetadata();
    v62 = [objc_opt_self() bundleForClass:v61];
  }

  v69 = sub_42968();
  v70 = [v62 localizedStringForKey:v69 value:0 table:0];
LABEL_66:
  v74 = v70;

  v75 = sub_42978();
  v77 = v76;

  *v58 = v75;
  v58[1] = v77;

LABEL_67:
  v78 = [v9 view];
  if (!v78)
  {
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v79 = v78;
  sub_37C10();
  if (v80)
  {
    v81 = sub_42968();
  }

  else
  {
    v81 = 0;
  }

  [v79 setAccessibilityLabel:v81];

  v82 = [v9 view];
  if (!v82)
  {
    goto LABEL_88;
  }

  v83 = v82;
  if (v58[1])
  {

    v84 = sub_42968();
  }

  else
  {
    v84 = 0;
  }

  [v83 setAccessibilityHint:v84];

  if (!UIAccessibilityIsVoiceOverRunning())
  {
    if (a1 <= 2u)
    {
      v87 = UIAccessibilityScreenChangedNotification;
      v88 = [v9 view];
      UIAccessibilityPostNotification(v87, v88);
    }

LABEL_81:
    if ((a2 & 1) == 0)
    {
      return;
    }

    goto LABEL_82;
  }

  if (a1 > 2u)
  {
    goto LABEL_81;
  }

  v85 = UIAccessibilityAnnouncementNotification;
  if (v58[1])
  {

    v86 = sub_42968();
  }

  else
  {
    v86 = 0;
  }

  UIAccessibilityPostNotification(v85, v86);
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_82:
    v89 = objc_opt_self();
    v90 = swift_allocObject();
    *(v90 + 16) = v9;
    v101 = sub_3A268;
    v102 = v90;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_3D178;
    v100 = &unk_6E2E0;
    v91 = _Block_copy(&aBlock);
    v92 = v9;

    [v89 p_type[452]];
    _Block_release(v91);
  }
}

void sub_379D8(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
LABEL_10:
      if (v1 != 5)
      {
        goto LABEL_17;
      }

      v6 = sub_42968();
      v7 = [objc_opt_self() systemImageNamed:v6];

      if (v7)
      {
        return;
      }

      __break(1u);
      goto LABEL_13;
    }

    if (a1 == 3)
    {
LABEL_8:
      v4 = sub_42968();
      v5 = [objc_opt_self() systemImageNamed:v4];

      if (v5)
      {
        return;
      }

      __break(1u);
      goto LABEL_10;
    }

    v2 = sub_42968();
    v3 = [objc_opt_self() systemImageNamed:v2];

    if (v3)
    {
      return;
    }

    __break(1u);
  }

  if (!v1)
  {
LABEL_13:
    v8 = sub_42968();
    v9 = [objc_opt_self() systemImageNamed:v8];

    if (v9)
    {
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v1 == 1)
  {
    goto LABEL_8;
  }

LABEL_15:
  v10 = sub_42968();
  v11 = [objc_opt_self() systemImageNamed:v10];

  if (v11)
  {
    return;
  }

  __break(1u);
LABEL_17:
  v12 = sub_42968();
  v13 = [objc_opt_self() systemImageNamed:v12];

  if (!v13)
  {
    __break(1u);
  }
}

uint64_t sub_37C10()
{
  type metadata accessor for AMMessagesViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_42968();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_42978();
  return v4;
}

void sub_37D6C(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 17) = a1;
  v4 = objc_allocWithZone(UIColor);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_3A218;
  *(v5 + 24) = v3;
  v25 = sub_3A260;
  v26 = v5;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_392C8;
  v24 = &unk_6E1A0;
  v6 = _Block_copy(&v21);

  v7 = [v4 initWithDynamicProvider:v6];

  _Block_release(v6);
  v8 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_popoverColor);
  *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_popoverColor) = v7;

  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  *(v9 + 17) = a1;
  v10 = objc_allocWithZone(UIColor);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_3A3C4;
  *(v11 + 24) = v9;
  v25 = sub_3A3C8;
  v26 = v11;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_392C8;
  v24 = &unk_6E218;
  v12 = _Block_copy(&v21);

  v13 = [v10 initWithDynamicProvider:v12];

  _Block_release(v12);
  v14 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_labelColor);
  *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_labelColor) = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = 3;
  *(v15 + 17) = a1;
  v16 = objc_allocWithZone(UIColor);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_3A3C4;
  *(v17 + 24) = v15;
  v25 = sub_3A3C8;
  v26 = v17;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_392C8;
  v24 = &unk_6E290;
  v18 = _Block_copy(&v21);

  v19 = [v16 initWithDynamicProvider:v18];

  _Block_release(v18);
  v20 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_buttonColor);
  *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_buttonColor) = v19;
}

Swift::Bool __swiftcall AudioAppContentViewController.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v3 = [v1 view];
  [(objc_class *)a1.super.isa locationInView:v3];
  v5 = v4;
  v7 = v6;

  if ([(objc_class *)a1.super.isa state]== &dword_0 + 2 || [(objc_class *)a1.super.isa state]== &dword_0 + 1)
  {
    if (qword_81A58 != -1)
    {
      swift_once();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      __break(1u);
      return Strong;
    }
  }

  v9 = *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerView];
  v10 = [v1 view];
  [v9 convertPoint:v10 fromView:{v5, v7}];
  v12 = v11;
  v14 = v13;

  LOBYTE(Strong) = [v9 pointInside:0 withEvent:{v12, v14}];
  return Strong;
}

void sub_38250(void *a1)
{
  v2 = v1;
  v4 = sub_42908();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_42928();
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_42948();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v64 - v15;
  v17 = [v1 view];
  [a1 locationInView:v17];
  v19 = v18;
  v21 = v20;

  if ([a1 state] == &dword_0 + 2 || objc_msgSend(a1, "state") == &dword_0 + 1)
  {
    if (qword_81A58 != -1)
    {
      swift_once();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      __break(1u);
      goto LABEL_54;
    }
  }

  [*&v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerView] center];
  v81.origin.x = v23 + -50.0;
  v81.origin.y = v24 + -50.0;
  v81.size.width = 100.0;
  v81.size.height = 100.0;
  v80.x = v19;
  v80.y = v21;
  v69 = CGRectContainsPoint(v81, v80);
  if ([a1 state] == &dword_0 + 1)
  {
    v25 = &v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isPressed];
    if ((v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isPressed] & 1) == 0)
    {
      v67 = v14;
      v68 = v16;
      v26 = v11;
      v27 = v9;
      v28 = v6;
      v29 = v10;
      LOBYTE(v30) = 1;
LABEL_12:
      *v25 = v30;
      v31 = objc_opt_self();
      v32 = swift_allocObject();
      *(v32 + 16) = v2;
      v78 = sub_3A39C;
      v79 = v32;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v76 = sub_3D178;
      v77 = &unk_6DF98;
      v33 = _Block_copy(&aBlock);
      v34 = v2;

      [v31 animateWithDuration:6 delay:v33 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:0.9 completion:0.0];
      _Block_release(v33);
      v10 = v29;
      v6 = v28;
      v9 = v27;
      v11 = v26;
      v14 = v67;
      v16 = v68;
    }
  }

  else
  {
    v30 = [a1 state] == &dword_0 + 2;
    v25 = &v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isPressed];
    if (v30 != v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isPressed])
    {
      v67 = v14;
      v68 = v16;
      v26 = v11;
      v27 = v9;
      v28 = v6;
      v29 = v10;
      goto LABEL_12;
    }
  }

  if ([a1 state] == &dword_0 + 1 && !v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state])
  {
    sub_3094C(0, &qword_82020);
    v67 = sub_42A78();
    sub_42938();
    sub_42958();
    v68 = *(v11 + 8);
    (v68)(v14, v10);
    v35 = swift_allocObject();
    *(v35 + 16) = v2;
    v78 = sub_3A038;
    v79 = v35;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_3D178;
    v77 = &unk_6DFE8;
    v64 = _Block_copy(&aBlock);
    v65 = v10;
    v66 = v2;

    sub_42918();
    aBlock = _swiftEmptyArrayStorage;
    sub_3A040();
    sub_2D124(&qword_82030);
    sub_3A098();
    v36 = v73;
    sub_42AB8();
    v37 = v64;
    v38 = v67;
    sub_42A68();
    _Block_release(v37);

    (*(v72 + 8))(v6, v36);
    (*(v70 + 8))(v9, v71);
    (v68)(v16, v65);
    sub_36CA0(1u, 1, 0.0);
  }

  if ([a1 state] != &dword_0 + 3 && objc_msgSend(a1, "state") != &dword_4 && v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state] - 1 <= 2)
  {
    if (v69)
    {
      v39 = 1;
    }

    else
    {
      v39 = 2;
    }

    sub_36CA0(v39, 1, 0.0);
  }

  if ([a1 state] != &dword_0 + 3 && objc_msgSend(a1, "state") != &dword_4)
  {
    return;
  }

  v40 = v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state];
  if (v40 <= 2)
  {
    if (!v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state])
    {
      v41 = 1;
      goto LABEL_42;
    }

    if (v40 != 1)
    {
      v53 = &v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v54 = *(v53 + 1);
        ObjectType = swift_getObjectType();
        (*(v54 + 64))(v2, ObjectType, v54);
        swift_unknownObjectRelease();
      }

      sub_36CA0(0, 1, 0.0);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v56 = *(v53 + 1);
      v57 = swift_getObjectType();
      (*(v56 + 72))(v2, v57, v56);
LABEL_51:
      swift_unknownObjectRelease();
      return;
    }

    if (v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recordingStartTime + 8])
    {
LABEL_34:
      v45 = &v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v46 = *(v45 + 1);
        v47 = swift_getObjectType();
        (*(v46 + 64))(v2, v47, v46);
        swift_unknownObjectRelease();
      }

      sub_36CA0(0, 1, 1.0);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v48 = *(v45 + 1);
      v49 = swift_getObjectType();
      (*(v48 + 56))(v2, v49, v48);
      goto LABEL_51;
    }

    v42 = *&v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
    if (v42)
    {
      v43 = *&v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recordingStartTime];
      [v42 targetTimestamp];
      if (v44 - v43 < 0.8)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }

LABEL_54:
    __break(1u);
    return;
  }

  if (v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state] > 4u)
  {
    if (v40 == 5)
    {
      sub_36CA0(6u, 1, 0.0);
      v50 = &v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate];
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v51 = *(v50 + 1);
      v52 = swift_getObjectType();
      (*(v51 + 40))(v2, v52, v51);
    }

    else
    {
      sub_36CA0(5u, 1, 0.0);
      v61 = &v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate];
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v62 = *(v61 + 1);
      v63 = swift_getObjectType();
      (*(v62 + 48))(v2, v63, v62);
    }

    goto LABEL_51;
  }

  if (v40 == 3)
  {
LABEL_28:
    v41 = 4;
LABEL_42:
    sub_36CA0(v41, 1, 0.0);
    return;
  }

  sub_36CA0(5u, 1, 0.0);
  v58 = &v2[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v59 = *(v58 + 1);
    v60 = swift_getObjectType();
    (*(v59 + 32))(v2, v60, v59);
    goto LABEL_51;
  }
}

void sub_38C5C(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [a1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

uint64_t sub_38CFC(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state) - 1 <= 1)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 80))(v1, ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t AudioAppContentViewController.power(_:from:)(float a1)
{
  v3 = v1 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v1, ObjectType, v5, (a1 + 60.0) / 50.0);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_38EC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerFillView);
  [v1 frame];
  result = [v1 drawViewHierarchyInRect:0 afterScreenUpdates:?];
  if (result)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerView);
    [v3 frame];
    result = [v3 drawViewHierarchyInRect:0 afterScreenUpdates:?];
    if (result)
    {
      v4 = *(v0 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_iconView);
      [v4 frame];
      return [v4 drawViewHierarchyInRect:0 afterScreenUpdates:?];
    }
  }

  return result;
}

Swift::Void __swiftcall AudioAppContentViewController.didSendMessage()()
{
  if (*(v0 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state))
  {
    sub_36CA0(0, 1, 0.0);
    v1 = v0 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 56))(v0, ObjectType, v2);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall AudioAppContentViewController.didCancelMessage()()
{
  if (*(v0 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state))
  {
    sub_36CA0(0, 1, 0.0);
    v1 = v0 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 72))(v0, ObjectType, v2);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall AudioAppContentViewController.restoreForPlayback()()
{
  if (*(v0 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state) != 5)
  {
    sub_36CA0(5u, 1, 0.0);
  }
}

Swift::Void __swiftcall AudioAppContentViewController.startRecording()()
{
  if (*(v0 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state) != 4)
  {
    sub_36CA0(4u, 1, 0.0);
  }
}

uint64_t AudioAppContentViewController.shouldStopRecordingOrPlayback(with:)(uint64_t (*a1)(BOOL, BOOL))
{
  v3 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state);
  if ((v3 | 2) == 6)
  {
    sub_36CA0(5u, 1, 0.0);
  }

  return a1(v3 == 4, v3 == 6);
}

id AudioAppContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_42968();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t type metadata accessor for AudioAppContentViewController()
{
  result = qword_81E80;
  if (!qword_81E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_392C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_39330(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_393A4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

_BYTE **sub_39418(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_39430()
{
  result = sub_428F8();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_396E8()
{
  result = qword_82008;
  if (!qword_82008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_82008);
  }

  return result;
}

id sub_3973C(char a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (((1 << a1) & 0x1D) != 0)
      {
        v8 = [objc_opt_self() systemRedColor];
        v6 = v8;
        if (a2 == 2)
        {
          v7 = [v8 colorWithAlphaComponent:0.39];
        }

        else
        {
          v7 = [v8 colorWithAlphaComponent:0.18];
        }

        goto LABEL_40;
      }

      if (((1 << a1) & 0x60) == 0)
      {
        goto LABEL_27;
      }

      result = [objc_opt_self() secondaryLabelColor];
      if (a2 == 2)
      {
        return result;
      }

      v12 = result;
      v13 = [result colorWithAlphaComponent:0.18];
      goto LABEL_53;
    }

    if (a3 == 4)
    {
      if (((1 << a1) & 0x1D) != 0)
      {
        v5 = [objc_opt_self() systemRedColor];
        v6 = v5;
        if (a2 == 2)
        {
LABEL_10:
          v7 = [v5 colorWithAlphaComponent:0.26];
LABEL_40:
          v17 = v7;

          return v17;
        }

LABEL_38:
        v7 = [v5 colorWithAlphaComponent:0.0];
        goto LABEL_40;
      }

      if (((1 << a1) & 0x60) == 0)
      {
        v5 = [objc_opt_self() systemBlueColor];
        v6 = v5;
        if (a2 == 2)
        {
          goto LABEL_10;
        }

        goto LABEL_38;
      }

      v14 = objc_opt_self();
      if (a2 == 2)
      {
        v12 = [v14 tertiarySystemFillColor];
        v13 = [v12 colorWithAlphaComponent:0.26];
      }

      else
      {
        v12 = [v14 secondaryLabelColor];
        v13 = [v12 colorWithAlphaComponent:0.0];
      }

LABEL_53:
      v18 = v13;

      return v18;
    }

    if (((1 << a1) & 0x1D) != 0)
    {
      v9 = [objc_opt_self() systemRedColor];
      v6 = v9;
      if (a2 == 2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (((1 << a1) & 0x60) != 0)
      {
        v16 = objc_opt_self();
        if (a2 == 2)
        {
          v12 = [v16 tertiarySystemFillColor];
          v13 = [v12 colorWithAlphaComponent:0.48];
        }

        else
        {
          v12 = [v16 secondaryLabelColor];
          v13 = [v12 colorWithAlphaComponent:0.1];
        }

        goto LABEL_53;
      }

      v9 = [objc_opt_self() systemBlueColor];
      v6 = v9;
      if (a2 == 2)
      {
LABEL_20:
        v7 = [v9 colorWithAlphaComponent:0.48];
        goto LABEL_40;
      }
    }

    v7 = [v9 colorWithAlphaComponent:0.1];
    goto LABEL_40;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      if (((1 << a1) & 0x1D) == 0)
      {
        if (((1 << a1) & 0x60) != 0)
        {
          v15 = objc_opt_self();
          if (a2 == 2)
          {
            v4 = [v15 blackColor];
          }

          else
          {
            v4 = [v15 secondaryLabelColor];
          }
        }

        else
        {
          v4 = [objc_opt_self() whiteColor];
        }

LABEL_49:

        return v4;
      }

LABEL_5:
      v4 = [objc_opt_self() systemRedColor];
      goto LABEL_49;
    }

    if (((1 << a1) & 0x1D) != 0)
    {
      goto LABEL_5;
    }

LABEL_27:
    v4 = [objc_opt_self() systemBlueColor];
    goto LABEL_49;
  }

  if (a2 == 2)
  {
    v4 = [objc_opt_self() tertiarySystemBackgroundColor];
    goto LABEL_49;
  }

  v10 = objc_allocWithZone(UIColor);

  return [v10 initWithWhite:1.0 alpha:0.8];
}

void sub_39CB0()
{
  v1 = (v0 + OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_textInset);
  *v1 = xmmword_5F950;
  v1[1] = xmmword_5F960;
  *(v0 + OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_arrowSize) = xmmword_5F970;
  *(v0 + OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_maxWidth) = 0x7FF0000000000000;
  *(v0 + OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_maxHeight) = 0;
  *(v0 + OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_cornerRadius) = 0x402E000000000000;
  *(v0 + OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_arrowPointingDown) = 1;
  v2 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_backdropColor;
  *(v0 + v2) = [objc_allocWithZone(UIColor) init];
  v3 = (v0 + OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_text);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_textColor;
  v5 = objc_opt_self();
  *(v0 + v4) = [v5 labelColor];
  v6 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_shadowColor;
  *(v0 + v6) = [v5 blackColor];
  v7 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_shapeView;
  *(v0 + v7) = sub_326BC();
  v8 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_backgroundView;
  *(v0 + v8) = sub_32804();
  v9 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_shadowView;
  type metadata accessor for ShadowView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = [v10 layer];
  LODWORD(v12) = 1028443341;
  [v11 setShadowOpacity:v12];

  v13 = [v10 layer];
  [v13 setShadowRadius:20.0];

  v14 = [v10 layer];
  [v14 setShadowOffset:{0.0, 3.0}];

  *(v0 + v9) = v10;
  v15 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_labelView;
  *(v0 + v15) = sub_32AF0();
  sub_42B78();
  __break(1u);
}

uint64_t sub_39FE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3A020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_3A040()
{
  result = qword_82028;
  if (!qword_82028)
  {
    sub_42908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_82028);
  }

  return result;
}

unint64_t sub_3A098()
{
  result = qword_82038;
  if (!qword_82038)
  {
    sub_3A0FC(&qword_82030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_82038);
  }

  return result;
}

uint64_t sub_3A0FC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3A144()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_3A188()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_3A1C0()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) removeFromSuperview];
  }

  return result;
}

uint64_t sub_3A228()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3A284()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_3A414()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AMUnavailableViewController();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension27AMUnavailableViewController_conversation];
  if (!v1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v2 = [v1 remoteParticipantIdentifiers];
  sub_428A8();
  v3 = sub_429E8();

  v4 = *(v3 + 16);

  if (!v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if ([objc_opt_self() isCurrentEntryViewEmpty])
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    __break(1u);
    return;
  }

LABEL_7:
  v6 = Strong;
  type metadata accessor for AMMessagesViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9 = sub_42968();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  if (!v10)
  {
    sub_42978();
    v10 = sub_42968();
  }

  [v6 setText:v10];
}

id sub_3A80C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMUnavailableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_3AA28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMWaveFormViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double clamp(value:from:to:)(double result, double a2, double a3)
{
  if (a3 < result)
  {
    result = a3;
  }

  if (result < a2)
  {
    return a2;
  }

  return result;
}

uint64_t GradientView.gradientLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

void *GradientView.colors.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() colors];

  if (v2)
  {
    v3 = sub_429E8();

    v13 = _swiftEmptyArrayStorage;
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;
      v2 = _swiftEmptyArrayStorage;
      do
      {
        sub_2E46C(v5, v12);
        sub_2E310(v12, v12[3]);
        v6 = sub_42BC8();
        v7 = CFGetTypeID(v6);
        swift_unknownObjectRelease();
        if (v7 == CGColorGetTypeID())
        {
          sub_2E46C(v12, v11);
          type metadata accessor for CGColor(0);
          swift_dynamicCast();
          v8 = [objc_allocWithZone(UIColor) initWithCGColor:v10];

          sub_2E268(v12);
          if (v8)
          {
            sub_429C8();
            if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v13 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_429F8();
            }

            sub_42A08();
            v2 = v13;
          }
        }

        else
        {
          sub_2E268(v12);
        }

        v5 += 32;
        --v4;
      }

      while (v4);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void GradientView.colors.setter(unint64_t a1)
{
  if (a1)
  {
    v3 = [v1 layer];
    objc_opt_self();
    p_type = swift_dynamicCastObjCClassUnconditional();
    if (a1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_42B88())
    {
      v19 = _swiftEmptyArrayStorage;
      sub_309D8(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v15 = p_type;
      v6 = 0;
      v7 = v19;
      p_type = &stru_7AFF0.type;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = sub_42AF8();
          goto LABEL_11;
        }

        if ((v6 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v6 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * v6 + 32);
LABEL_11:
        v9 = v8;
        v10 = [v8 CGColor];
        type metadata accessor for CGColor(0);
        v18 = v11;

        *&v17 = v10;
        v19 = v7;
        v13 = v7[2];
        v12 = v7[3];
        if (v13 >= v12 >> 1)
        {
          sub_309D8((v12 > 1), v13 + 1, 1);
          v7 = v19;
        }

        ++v6;
        v7[2] = v13 + 1;
        sub_2E4CC(&v17, &v7[4 * v13 + 4]);
        if (i == v6)
        {

          p_type = v15;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_22:
    isa = sub_429D8().super.isa;

    [p_type setColors:isa];
  }

  else
  {
    v16 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setColors:0];
  }
}

uint64_t (*GradientView.colors.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = GradientView.colors.getter();
  return sub_3B060;
}

char *GradientView.locations.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() locations];

  if (!v2)
  {
    return v2;
  }

  sub_3094C(0, &qword_81C00);
  v3 = sub_429E8();

  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v4 = sub_42B88();
  if (!v4)
  {
LABEL_14:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  result = sub_30994(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_42AF8();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      [v7 doubleValue];
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_30994((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
    }

    while (v4 != v6);

    return v2;
  }

  __break(1u);
  return result;
}

void GradientView.locations.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = [v1 layer];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    v5 = *(a1 + 16);
    if (v5)
    {
      sub_42B48();
      v6 = 32;
      do
      {
        [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + v6)];
        sub_42B28();
        sub_42B58();
        sub_42B68();
        sub_42B38();
        v6 += 8;
        --v5;
      }

      while (v5);
    }

    sub_3094C(0, &qword_81C00);
    isa = sub_429D8().super.isa;

    [v4 setLocations:isa];
  }

  else
  {
    isa = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setLocations:0];
  }
}

uint64_t (*GradientView.locations.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = GradientView.locations.getter();
  return sub_3B488;
}

uint64_t sub_3B4A0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

void (*GradientView.startPoint.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v5 = v4;
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return sub_3B5CC;
}

double sub_3B5E4(SEL *a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() *a1];
  v5 = v4;

  return v5;
}

void sub_3B674(SEL *a1, double a2, double a3)
{
  v7 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() *a1];
}

void (*GradientView.endPoint.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() endPoint];
  v5 = v4;
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return sub_3B7B4;
}

void sub_3B7C0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = [*(a1 + 16) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() *a3];
}

id GradientView.type.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() type];

  return v2;
}

void GradientView.type.setter(void *a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:a1];
}

void (*GradientView.type.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() type];

  *a1 = v4;
  return sub_3BA10;
}

void sub_3BA10(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v5 = *a1;
  if (a2)
  {
    v3 = v5;
    v4 = [v2 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setType:v3];
  }

  else
  {
    v3 = [v2 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setType:v5];
  }
}

id GradientView.action(for:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2 == 0x73726F6C6F63 && a3 == 0xE600000000000000;
  if (v7 || (sub_42BD8() & 1) != 0 || a2 == 0x6E6F697461636F6CLL && a3 == 0xE900000000000073 || (sub_42BD8() & 1) != 0 || a2 == 0x696F507472617473 && a3 == 0xEA0000000000746ELL || (sub_42BD8() & 1) != 0 || a2 == 0x746E696F50646E65 && a3 == 0xE800000000000000 || (sub_42BD8() & 1) != 0)
  {
    v8 = sub_42968();
    v15.receiver = v3;
    v15.super_class = type metadata accessor for GradientView();
    v9 = objc_msgSendSuper2(&v15, "actionForLayer:forKey:", a1, v8);

    v10 = [v3 layer];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
    v12 = sub_3C908(a2, a3, v11, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_42968();
    v16.receiver = v3;
    v16.super_class = type metadata accessor for GradientView();
    v12 = objc_msgSendSuper2(&v16, "actionForLayer:forKey:", a1, v14);
  }

  return v12;
}

id GradientView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id GradientView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GradientView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id GradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BackdropView.backdropLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

id BackdropView.action(for:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0xD000000000000020 && 0x8000000000063BB0 == a3 || (sub_42BD8() & 1) != 0)
  {
    v7 = sub_42968();
    v14.receiver = v3;
    v14.super_class = type metadata accessor for BackdropView();
    v8 = objc_msgSendSuper2(&v14, "actionForLayer:forKey:", a1, v7);

    v9 = [v3 layer];
    objc_opt_self();
    v10 = swift_dynamicCastObjCClassUnconditional();
    v11 = sub_3C908(a2, a3, v10, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = sub_42968();
    v15.receiver = v3;
    v15.super_class = type metadata accessor for BackdropView();
    v11 = objc_msgSendSuper2(&v15, "actionForLayer:forKey:", a1, v12);
  }

  return v11;
}

id BackdropView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for BackdropView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id BackdropView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BackdropView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id BackdropView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackdropView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static BackdropView.blur()()
{
  type metadata accessor for BackdropView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = sub_42A28().super.super.isa;
  v3 = sub_42968();
  [v1 setValue:isa forKey:v3];

  v4 = sub_42A18().super.super.isa;
  v5 = sub_42968();
  [v1 setValue:v4 forKey:v5];

  v6 = [v0 layer];
  sub_2D124(&qword_82010);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_5F5C0;
  *(v7 + 56) = sub_3094C(0, &qword_82018);
  *(v7 + 32) = v1;
  v8 = v1;
  v9 = sub_429D8().super.isa;

  [v6 setFilters:v9];

  return v0;
}

void BackdropView.blurRadius.getter()
{
  v1 = [v0 layer];
  v2 = sub_42968();
  v3 = [v1 valueForKeyPath:v2];

  if (v3)
  {
    sub_42AA8();
    swift_unknownObjectRelease();
    sub_2E4CC(&v4, &v5);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

void BackdropView.blurRadius.setter()
{
  v1 = [v0 layer];
  isa = sub_428C8().super.super.isa;
  v3 = sub_42968();
  [v1 setValue:isa forKeyPath:v3];
}

void (*BackdropView.blurRadius.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  BackdropView.blurRadius.getter();
  *a1 = v3;
  return sub_3C858;
}

void sub_3C858(uint64_t a1)
{
  v3 = [*(a1 + 8) layer];
  isa = sub_428C8().super.super.isa;
  v2 = sub_42968();
  [v3 setValue:isa forKeyPath:v2];
}

id sub_3C908(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a4)
  {
    return [objc_allocWithZone(NSNull) init];
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      swift_unknownObjectRetain();
      v17 = sub_42968();
      v18 = [objc_opt_self() animationWithKeyPath:v17];

      v19 = sub_42968();
      v20 = [a3 valueForKey:v19];

      [v18 setFromValue:v20];
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      v12 = v18;
      v21 = [v16 timingFunction];
      [v12 setTimingFunction:v21];

      [v12 setDelegate:{objc_msgSend(v16, "delegate")}];
      swift_unknownObjectRelease();
      [v12 setAutoreverses:{objc_msgSend(v16, "autoreverses")}];
      [v16 beginTime];
      [v12 setBeginTime:?];
      [v16 duration];
      [v12 setDuration:?];
      v22 = [v16 fillMode];
      [v12 setFillMode:v22];

      [v16 repeatCount];
      [v12 setRepeatCount:?];
      [v16 repeatDuration];
      [v12 setRepeatDuration:?];
      [v16 speed];
      [v12 setSpeed:?];
      [v16 timeOffset];
      [v12 setTimeOffset:?];
      v14 = [v16 beginTimeMode];
      goto LABEL_6;
    }

    return [objc_allocWithZone(NSNull) init];
  }

  v6 = v5;
  swift_unknownObjectRetain();
  v7 = sub_42968();
  v8 = [objc_opt_self() animationWithKeyPath:v7];

  v9 = v8;
  v10 = sub_42968();
  v11 = [a3 valueForKey:v10];

  [v9 setFromValue:v11];
  swift_unknownObjectRelease();
  [v6 mass];
  [v9 setMass:?];
  [v6 stiffness];
  [v9 setStiffness:?];
  [v6 damping];
  [v9 setDamping:?];
  [v6 initialVelocity];
  [v9 setInitialVelocity:?];
  swift_unknownObjectRetain();
  v12 = v9;
  [v12 setDelegate:{objc_msgSend(v6, "delegate")}];
  swift_unknownObjectRelease();
  [v12 setAutoreverses:{objc_msgSend(v6, "autoreverses")}];
  [v6 beginTime];
  [v12 setBeginTime:?];
  [v6 duration];
  [v12 setDuration:?];
  v13 = [v6 fillMode];
  [v12 setFillMode:v13];

  [v6 repeatCount];
  [v12 setRepeatCount:?];
  [v6 repeatDuration];
  [v12 setRepeatDuration:?];
  [v6 speed];
  [v12 setSpeed:?];
  [v6 timeOffset];
  [v12 setTimeOffset:?];
  v14 = [v6 beginTimeMode];
LABEL_6:
  v23 = v14;
  swift_unknownObjectRelease();
  if (!v23)
  {
    sub_42978();
    v23 = sub_42968();
  }

  [v12 setBeginTimeMode:v23];

  swift_unknownObjectRelease();
  return v12;
}

double Spring.init(dampingRatio:response:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v3 = 6.28318531 / a3 * (6.28318531 / a3);
  v4 = sqrt(v3);
  result = (v4 + v4) * a2;
  *a1 = v3;
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  return result;
}

Swift::Void __swiftcall Spring.update(dt:)(Swift::Double dt)
{
  v3 = v1[3];
  v4 = v1[2] - v3;
  v5 = v1[4];
  v6 = sqrt(*v1);
  v7 = v1[1] * 0.5;
  v8 = -v7;
  v9 = exp(-(v7 * dt));
  v10 = v5 + v7 * v4;
  if (v7 >= v6)
  {
    if (v6 >= v7)
    {
      v15 = v4 + v10 * dt;
      v22 = v9 * v10 + v9 * v8 * v15;
      goto LABEL_7;
    }

    v17 = sqrt(v7 * v7 - v6 * v6);
    v18 = v17 * dt;
    v19 = v10 / v17;
    v20 = cosh(v18);
    v21 = sinh(v18);
    v15 = v4 * v20 + v19 * v21;
    v16 = v17 * (v19 * v20) + v17 * (v4 * v21);
  }

  else
  {
    v11 = sqrt(v6 * v6 - v7 * v7);
    v12 = v11 * dt;
    v13 = v10 / v11;
    v14 = __sincos_stret(v12);
    v15 = v4 * v14.__cosval + v13 * v14.__sinval;
    v16 = v11 * (v13 * v14.__cosval) - v11 * (v4 * v14.__sinval);
  }

  v22 = v9 * v8 * v15 + v9 * v16;
LABEL_7:
  v1[2] = v3 + v9 * v15;
  v1[4] = v22;
}

void Spring.init(stiffness:damping:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
}

__n128 sub_3D100(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3D114(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3D134(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_3D178(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_3D1BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_3D210()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.980392157 green:0.882352941 blue:0.882352941 alpha:1.0];
  qword_829B8 = result;
  return result;
}

id sub_3D260()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.337254902 green:0.623529412 blue:0.97254902 alpha:1.0];
  qword_829C0 = result;
  return result;
}

id sub_3D2B4()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.937254902 green:0.929411765 blue:0.937254902 alpha:1.0];
  qword_829C8 = result;
  return result;
}

id sub_3D300()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.980392157 green:0.882352941 blue:0.882352941 alpha:1.0];
  qword_829D0 = result;
  return result;
}

id sub_3D350()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.337254902 green:0.623529412 blue:0.97254902 alpha:1.0];
  qword_829D8 = result;
  return result;
}

id sub_3D3A4()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.937254902 green:0.929411765 blue:0.937254902 alpha:1.0];
  qword_829E0 = result;
  return result;
}

id sub_3D3F0()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.925490196 green:0.329411765 blue:0.270588235 alpha:1.0];
  qword_829E8 = result;
  return result;
}

id sub_3D440()
{
  result = [objc_opt_self() whiteColor];
  qword_829F0 = result;
  return result;
}

id sub_3D47C()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  qword_829F8 = result;
  return result;
}

void sub_3D4C8()
{
  v1 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_audioMessagingState;
  if (v0[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_audioMessagingState] == 3)
  {
    v2 = 86.4;
  }

  else
  {
    v2 = 108.0;
  }

  v3 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonWidthAnchor];
  if (!v3)
  {
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  v4 = &selRef_powerLevels;
  [v3 setConstant:v2];
  v5 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonHeightAnchor];
  if (!v5)
  {
LABEL_246:
    __break(1u);
    goto LABEL_247;
  }

  [v5 setConstant:v2];
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  *(v7 + 24) = v2;
  v214 = sub_41AD4;
  v215 = v7;
  aBlock = _NSConcreteStackBlock;
  v211 = 1107296256;
  v212 = sub_3D178;
  v213 = &unk_6E748;
  v8 = _Block_copy(&aBlock);
  v209 = v0;

  v214 = AudioAppContentViewController.buffer(_:from:);
  v215 = 0;
  aBlock = _NSConcreteStackBlock;
  v211 = 1107296256;
  v212 = sub_3D1BC;
  v213 = &unk_6E770;
  v9 = _Block_copy(&aBlock);
  v208 = v6;
  [v6 animateWithDuration:0 delay:v8 options:v9 animations:0.075 completion:0.0];
  _Block_release(v9);
  _Block_release(v8);
  v10 = v0[v1];
  if (v10 <= 2)
  {
    if (!v0[v1])
    {
      return;
    }

    v22 = v209;
    if (v10 != 1)
    {
      v38 = *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton);
      if (v38)
      {
        v39 = v38;
        sub_40844(2u);

        i = *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews);
        if (i)
        {
          v203 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews;
          v15 = i & 0xFFFFFFFFFFFFFF8;
          if (i >> 62)
          {
            goto LABEL_223;
          }

          v40 = *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8));
          goto LABEL_55;
        }

        goto LABEL_253;
      }

      goto LABEL_250;
    }

    v23 = *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton);
    if (!v23)
    {
      goto LABEL_248;
    }

    v24 = v23;
    sub_40844(1u);

    v203 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews;
    i = *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews);
    if (i)
    {
      v15 = i & 0xFFFFFFFFFFFFFF8;
      if (i >> 62)
      {
        v25 = sub_42B88();
      }

      else
      {
        v25 = *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8));
      }

      if (v25)
      {
        v26 = 0;
        do
        {
          if ((i & 0xC000000000000001) != 0)
          {
            v27 = sub_42AF8();
          }

          else
          {
            if (v26 >= *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_219;
            }

            v27 = *(i + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_217;
          }

          v30 = [v27 layer];
          [v30 removeAllAnimations];

          ++v26;
        }

        while (v29 != v25);
      }

      v22 = v209;
      v4 = &selRef_powerLevels;
    }

    sub_2D124(&qword_81D00);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_5F5D0;
    if (qword_81A60 != -1)
    {
      swift_once();
    }

    v112 = qword_829B8;
    v113 = [v22 view];
    if (!v113)
    {
      goto LABEL_255;
    }

    v114 = v113;
    v115 = type metadata accessor for AMWavePulsingView();
    objc_allocWithZone(v115);
    v116 = v112;
    sub_31B1C(v116, v114, 54.0);
    *(v111 + 32) = v117;
    v118 = [v22 view];
    if (!v118)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v119 = v118;
    v120 = objc_allocWithZone(v115);
    sub_31B1C(v116, v119, 54.0);
    *(v111 + 40) = v121;
    v66 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_inititalWavePulsingViews;
    *&v22[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_inititalWavePulsingViews] = v111;

    v122 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
    if (v122)
    {
      i = 0;
      v15 = &v212;
      v123 = 0.0;
      while (1)
      {
        if ((v111 & 0xC000000000000001) != 0)
        {
          v124 = sub_42AF8();
        }

        else
        {
          if (i >= *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8)))
          {
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          v124 = *(v111 + 8 * i + 32);
        }

        v125 = v124;
        v126 = *&v124[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleWidthAnchor];
        if (!v126)
        {
          break;
        }

        [v126 v4[143]];
        v127 = *&v125[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleHeightAnchor];
        if (!v127)
        {
          goto LABEL_231;
        }

        [v127 v4[143]];
        v128 = swift_allocObject();
        *(v128 + 16) = v125;
        v214 = sub_41D04;
        v215 = v128;
        aBlock = _NSConcreteStackBlock;
        v211 = 1107296256;
        v212 = sub_3D178;
        v213 = &unk_6EA40;
        v129 = _Block_copy(&aBlock);
        v130 = v125;

        v131 = swift_allocObject();
        *(v131 + 16) = v130;
        v214 = sub_41D28;
        v215 = v131;
        aBlock = _NSConcreteStackBlock;
        v211 = 1107296256;
        v212 = sub_3D1BC;
        v213 = &unk_6EA90;
        v132 = _Block_copy(&aBlock);
        v133 = v130;

        [v208 animateWithDuration:131080 delay:v129 options:v132 animations:3.0 completion:v123];
        _Block_release(v132);
        _Block_release(v129);
        v134 = *(v209 + v66);
        if (!v134)
        {
          goto LABEL_232;
        }

        if (v134 >> 62)
        {
          v135 = sub_42B88();
        }

        else
        {
          v135 = *(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8));
        }

        v4 = &selRef_powerLevels;
        ++i;

        v123 = v123 + 3.0 / v135;
        if (v122 == i)
        {
          goto LABEL_134;
        }
      }

      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }
  }

  else
  {
    if (v0[v1] > 4u)
    {
      v15 = v209;
      if (v10 == 5)
      {
        v31 = *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton);
        if (!v31)
        {
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        v32 = v31;
        sub_40844(5u);

        i = *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews);
        if (!i)
        {
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
          goto LABEL_254;
        }

        v208 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews;
        if (i >> 62)
        {
          v33 = sub_42B88();
        }

        else
        {
          v33 = *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8));
        }

        if (v33)
        {
          v34 = 0;
          do
          {
            if ((i & 0xC000000000000001) != 0)
            {
              v35 = sub_42AF8();
            }

            else
            {
              if (v34 >= *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_210;
              }

              v35 = *(i + 8 * v34 + 32);
            }

            v36 = v35;
            v15 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_207;
            }

            v37 = [v35 layer];
            [v37 removeAllAnimations];

            ++v34;
          }

          while (v15 != v33);
        }

        *&v208[v209] = _swiftEmptyArrayStorage;
        goto LABEL_202;
      }

      v46 = *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton);
      if (!v46)
      {
LABEL_251:
        __break(1u);
        goto LABEL_252;
      }

      v47 = v46;
      sub_40844(6u);

      i = *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews);
      if (!i)
      {
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
        goto LABEL_257;
      }

      v203 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews;
      v15 = i & 0xFFFFFFFFFFFFFF8;
      if (i >> 62)
      {
        v48 = sub_42B88();
      }

      else
      {
        v48 = *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8));
      }

      if (v48)
      {
        v49 = 0;
        do
        {
          if ((i & 0xC000000000000001) != 0)
          {
            v50 = sub_42AF8();
          }

          else
          {
            if (v49 >= *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_211;
            }

            v50 = *(i + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_208;
          }

          v53 = [v50 layer];
          [v53 removeAllAnimations];

          ++v49;
        }

        while (v52 != v48);
      }

      sub_2D124(&qword_81D00);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_5F5D0;
      if (qword_81A70 != -1)
      {
        swift_once();
      }

      v82 = qword_829C8;
      v83 = [v209 view];
      v84 = &selRef_powerLevels;
      if (!v83)
      {
        goto LABEL_260;
      }

      v85 = v83;
      v86 = type metadata accessor for AMWavePulsingView();
      objc_allocWithZone(v86);
      v87 = v82;
      sub_31B1C(v87, v85, 54.0);
      *(v81 + 32) = v88;
      v89 = [v209 view];
      if (!v89)
      {
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
        goto LABEL_264;
      }

      v90 = v89;
      v91 = objc_allocWithZone(v86);
      sub_31B1C(v87, v90, 54.0);
      *(v81 + 40) = v92;
      v93 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_inititalWavePulsingViews;
      *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_inititalWavePulsingViews) = v81;

      v206 = v81 & 0xFFFFFFFFFFFFFF8;
      v94 = *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8));
      if (v94)
      {
        i = 0;
        v204 = v81 & 0xC000000000000001;
        v15 = &v212;
        v95 = 0.0;
        do
        {
          if (v204)
          {
            v96 = sub_42AF8();
          }

          else
          {
            if (i >= *(v206 + 16))
            {
              goto LABEL_213;
            }

            v96 = *(v81 + 8 * i + 32);
          }

          v97 = v96;
          v98 = *&v96[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleWidthAnchor];
          if (!v98)
          {
            goto LABEL_234;
          }

          v99 = v81;
          [v98 v84[143]];
          v100 = *&v97[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleHeightAnchor];
          if (!v100)
          {
            goto LABEL_236;
          }

          [v100 v84[143]];
          v101 = swift_allocObject();
          *(v101 + 16) = v97;
          v214 = sub_41AF8;
          v215 = v101;
          aBlock = _NSConcreteStackBlock;
          v211 = 1107296256;
          v212 = sub_3D178;
          v213 = &unk_6E7C0;
          v102 = _Block_copy(&aBlock);
          v103 = v97;

          v104 = swift_allocObject();
          *(v104 + 16) = v103;
          v214 = sub_41B00;
          v215 = v104;
          aBlock = _NSConcreteStackBlock;
          v211 = 1107296256;
          v212 = sub_3D1BC;
          v213 = &unk_6E810;
          v105 = _Block_copy(&aBlock);
          v106 = v103;

          [v208 animateWithDuration:131080 delay:v102 options:v105 animations:3.0 completion:v95];
          _Block_release(v105);
          _Block_release(v102);
          v107 = *(v209 + v93);
          if (!v107)
          {
            goto LABEL_238;
          }

          if (v107 >> 62)
          {
            v108 = sub_42B88();
          }

          else
          {
            v108 = *(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8));
          }

          v84 = &selRef_powerLevels;
          ++i;

          v95 = v95 + 3.0 / v108;
          v81 = v99;
        }

        while (v94 != i);
      }

      v109 = v209;
      v110 = *(v209 + v93);
      goto LABEL_135;
    }

    if (v10 != 3)
    {
      return;
    }

    v11 = v209;
    v12 = *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton);
    if (!v12)
    {
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
      goto LABEL_249;
    }

    v13 = v12;
    sub_40844(3u);

    v200 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews;
    i = *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews);
    if (i)
    {
      v15 = i & 0xFFFFFFFFFFFFFF8;
      if (i >> 62)
      {
        v16 = sub_42B88();
      }

      else
      {
        v16 = *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8));
      }

      if (v16)
      {
        v17 = 0;
        do
        {
          if ((i & 0xC000000000000001) != 0)
          {
            v18 = sub_42AF8();
          }

          else
          {
            if (v17 >= *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_220;
            }

            v18 = *(i + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_218;
          }

          v21 = [v18 layer];
          [v21 removeAllAnimations];

          ++v17;
        }

        while (v20 != v16);
      }

      v11 = v209;
    }

    sub_2D124(&qword_81D00);
    v136 = swift_allocObject();
    v203 = 2;
    *(v136 + 16) = xmmword_5F5D0;
    if (qword_81A60 != -1)
    {
      swift_once();
    }

    v137 = qword_829B8;
    v138 = [v11 view];
    if (!v138)
    {
      goto LABEL_256;
    }

    v139 = v138;
    v140 = type metadata accessor for AMWavePulsingView();
    objc_allocWithZone(v140);
    v141 = v137;
    sub_31B1C(v141, v139, 54.0);
    *(v136 + 32) = v142;
    v143 = [v11 view];
    if (!v143)
    {
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v144 = v143;
    v201 = v140;
    v145 = objc_allocWithZone(v140);
    sub_31B1C(v141, v144, 54.0);
    *(v136 + 40) = v146;
    v207 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_inititalWavePulsingViews;
    *&v11[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_inititalWavePulsingViews] = v136;

    v15 = v136 & 0xFFFFFFFFFFFFFF8;
    v147 = *(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8));
    v148 = &selRef_powerLevels;
    if (v147)
    {
      for (i = 0; i != v147; ++i)
      {
        if ((v136 & 0xC000000000000001) != 0)
        {
          v149 = sub_42AF8();
        }

        else
        {
          if (i >= *(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_205;
          }

          v149 = *(v136 + 8 * i + 32);
        }

        v150 = v149;
        [v149 setHidden:1];
      }
    }

    v202 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_releaseToStopWavePulsingViews;
    i = *&v11[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_releaseToStopWavePulsingViews];
    if (i)
    {
      v15 = i & 0xFFFFFFFFFFFFFF8;
      if (i >> 62)
      {
        v151 = sub_42B88();
      }

      else
      {
        v151 = *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8));
      }

      if (v151)
      {
        v152 = 0;
        do
        {
          if ((i & 0xC000000000000001) != 0)
          {
            v153 = sub_42AF8();
          }

          else
          {
            if (v152 >= *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_222;
            }

            v153 = *(i + 8 * v152 + 32);
          }

          v154 = v153;
          v155 = v152 + 1;
          if (__OFADD__(v152, 1))
          {
            goto LABEL_221;
          }

          v156 = [v153 layer];
          [v156 removeAllAnimations];

          v148 = &selRef_powerLevels;
          ++v152;
          v157 = v155 == v151;
          v11 = v209;
        }

        while (!v157);
      }
    }

    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_5F5D0;
    if (qword_81A68 != -1)
    {
      v199 = v158;
      swift_once();
      v158 = v199;
    }

    v205 = v158;
    v159 = qword_829C0;
    v160 = [v11 view];
    v15 = v201;
    if (!v160)
    {
      goto LABEL_263;
    }

    v161 = v160;
    objc_allocWithZone(v201);
    v162 = v159;
    sub_31B1C(v162, v161, 54.0);
    v163 = v205;
    *(v205 + 32) = v164;
    v165 = [v11 view];
    if (!v165)
    {
LABEL_264:
      __break(1u);
      goto LABEL_265;
    }

    v166 = v165;
    v167 = objc_allocWithZone(v201);
    sub_31B1C(v162, v166, 54.0);
    *(v205 + 40) = v168;
    *&v11[v202] = v205;

    v169 = *(&dword_10 + (v205 & 0xFFFFFFFFFFFFFF8));
    if (v169)
    {
      i = 0;
      v203 = v205 & 0xC000000000000001;
      v170 = 0.0;
      v15 = 0x4074400000000000;
      while (1)
      {
        if (v203)
        {
          v171 = sub_42AF8();
        }

        else
        {
          if (i >= *(&dword_10 + (v205 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_214;
          }

          v171 = *(v163 + 8 * i + 32);
        }

        v172 = v171;
        v173 = *&v171[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleWidthAnchor];
        if (!v173)
        {
          break;
        }

        [v173 v148[143]];
        v174 = *&v172[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleHeightAnchor];
        if (!v174)
        {
          goto LABEL_240;
        }

        [v174 v148[143]];
        v175 = swift_allocObject();
        *(v175 + 16) = v172;
        v214 = sub_41D04;
        v215 = v175;
        aBlock = _NSConcreteStackBlock;
        v211 = 1107296256;
        v212 = sub_3D178;
        v213 = &unk_6E860;
        v176 = _Block_copy(&aBlock);
        v177 = v172;

        v178 = swift_allocObject();
        *(v178 + 16) = v177;
        v214 = sub_41D28;
        v215 = v178;
        aBlock = _NSConcreteStackBlock;
        v211 = 1107296256;
        v212 = sub_3D1BC;
        v213 = &unk_6E8B0;
        v179 = _Block_copy(&aBlock);
        v180 = v177;

        [v208 animateWithDuration:131080 delay:v176 options:v179 animations:1.0 completion:v170];
        _Block_release(v179);
        _Block_release(v176);
        v181 = *(v209 + v207);
        if (!v181)
        {
          goto LABEL_241;
        }

        if (v181 >> 62)
        {
          v182 = sub_42B88();
        }

        else
        {
          v182 = *(&dword_10 + (v181 & 0xFFFFFFFFFFFFFF8));
        }

        v148 = &selRef_powerLevels;
        ++i;

        v170 = v170 + 1.0 / v182;
        v163 = v205;
        if (v169 == i)
        {
          goto LABEL_181;
        }
      }

LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
      goto LABEL_245;
    }

LABEL_181:

    i = *(v209 + v207);
    if (!i)
    {
LABEL_265:
      __break(1u);
      goto LABEL_266;
    }

    if (i >> 62)
    {
      v183 = sub_42B88();
    }

    else
    {
      v183 = *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8));
    }

    if (!v183)
    {
LABEL_199:

      if (!*(v209 + v207))
      {
LABEL_266:
        __break(1u);
        goto LABEL_267;
      }

      if (!*(v209 + v202))
      {
LABEL_267:
        __break(1u);
        return;
      }

      aBlock = *(v209 + v207);

      sub_40D78(v198);
      *(v209 + v200) = aBlock;
      goto LABEL_202;
    }

    v184 = 0;
    v185 = 0.0;
    while (1)
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v186 = sub_42AF8();
      }

      else
      {
        if (v184 >= *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_216;
        }

        v186 = *(i + 8 * v184 + 32);
      }

      v187 = v186;
      v15 = v184 + 1;
      if (__OFADD__(v184, 1))
      {
        break;
      }

      v188 = *&v186[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleWidthAnchor];
      if (!v188)
      {
        goto LABEL_242;
      }

      [v188 v148[143]];
      v189 = *&v187[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleHeightAnchor];
      if (!v189)
      {
        goto LABEL_243;
      }

      [v189 v148[143]];
      v190 = swift_allocObject();
      *(v190 + 16) = v187;
      v214 = sub_41D04;
      v215 = v190;
      aBlock = _NSConcreteStackBlock;
      v211 = 1107296256;
      v212 = sub_3D178;
      v213 = &unk_6E900;
      v191 = _Block_copy(&aBlock);
      v192 = v187;

      v193 = swift_allocObject();
      *(v193 + 16) = v192;
      v214 = sub_41D28;
      v215 = v193;
      aBlock = _NSConcreteStackBlock;
      v211 = 1107296256;
      v212 = sub_3D1BC;
      v213 = &unk_6E950;
      v194 = _Block_copy(&aBlock);
      v195 = v192;

      [v208 animateWithDuration:131080 delay:v191 options:v194 animations:1.0 completion:v185];
      _Block_release(v194);
      _Block_release(v191);
      v196 = *(v209 + v207);
      if (!v196)
      {
        goto LABEL_244;
      }

      if (v196 >> 62)
      {
        v197 = sub_42B88();
      }

      else
      {
        v197 = *(&dword_10 + (v196 & 0xFFFFFFFFFFFFFF8));
      }

      v185 = v185 + 1.0 / v197;
      ++v184;
      v148 = &selRef_powerLevels;
      if (v15 == v183)
      {
        goto LABEL_199;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      v40 = sub_42B88();
LABEL_55:

      if (!v40)
      {
        break;
      }

      v41 = 0;
      while (1)
      {
        if ((i & 0xC000000000000001) != 0)
        {
          v42 = sub_42AF8();
        }

        else
        {
          if (v41 >= *(v15 + 16))
          {
            goto LABEL_209;
          }

          v42 = *(i + 8 * v41 + 32);
        }

        v43 = v42;
        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        v45 = [v42 layer];
        [v45 removeAllAnimations];

        ++v41;
        if (v44 == v40)
        {
          goto LABEL_77;
        }
      }

LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
    }

LABEL_77:

    sub_2D124(&qword_81D00);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_5F5D0;
    if (qword_81A60 != -1)
    {
      swift_once();
    }

    v55 = qword_829B8;
    v56 = [v209 view];
    v57 = &selRef_powerLevels;
    if (!v56)
    {
      goto LABEL_259;
    }

    v58 = v56;
    v59 = type metadata accessor for AMWavePulsingView();
    objc_allocWithZone(v59);
    v60 = v55;
    sub_31B1C(v60, v58, 54.0);
    *(v54 + 32) = v61;
    v62 = [v209 view];
    if (!v62)
    {
LABEL_261:
      __break(1u);
      goto LABEL_262;
    }

    v63 = v62;
    v64 = objc_allocWithZone(v59);
    sub_31B1C(v60, v63, 54.0);
    *(v54 + 40) = v65;
    v66 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_inititalWavePulsingViews;
    *(v209 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_inititalWavePulsingViews) = v54;

    v67 = *(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8));
    if (v67)
    {
      i = 0;
      v15 = &v212;
      v68 = 0.0;
      while (1)
      {
        if ((v54 & 0xC000000000000001) != 0)
        {
          v69 = sub_42AF8();
        }

        else
        {
          if (i >= *(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_212;
          }

          v69 = *(v54 + 8 * i + 32);
        }

        v70 = v69;
        v71 = *&v69[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleWidthAnchor];
        if (!v71)
        {
          break;
        }

        [v71 v57[143]];
        v72 = *&v70[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleHeightAnchor];
        if (!v72)
        {
          goto LABEL_235;
        }

        [v72 v57[143]];
        v73 = swift_allocObject();
        *(v73 + 16) = v70;
        v214 = sub_41D04;
        v215 = v73;
        aBlock = _NSConcreteStackBlock;
        v211 = 1107296256;
        v212 = sub_3D178;
        v213 = &unk_6E9A0;
        v74 = _Block_copy(&aBlock);
        v75 = v70;

        v76 = swift_allocObject();
        *(v76 + 16) = v75;
        v214 = sub_41D28;
        v215 = v76;
        aBlock = _NSConcreteStackBlock;
        v211 = 1107296256;
        v212 = sub_3D1BC;
        v213 = &unk_6E9F0;
        v77 = _Block_copy(&aBlock);
        v78 = v75;

        [v208 animateWithDuration:131080 delay:v74 options:v77 animations:1.0 completion:v68];
        _Block_release(v77);
        _Block_release(v74);
        v79 = *(v209 + v66);
        if (!v79)
        {
          goto LABEL_237;
        }

        if (v79 >> 62)
        {
          v80 = sub_42B88();
        }

        else
        {
          v80 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
        }

        v57 = &selRef_powerLevels;
        ++i;

        v68 = v68 + 1.0 / v80;
        if (v67 == i)
        {
          goto LABEL_134;
        }
      }

LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
      goto LABEL_239;
    }
  }

LABEL_134:

  v109 = v209;
  v110 = *(v209 + v66);
LABEL_135:
  *&v109[v203] = v110;

LABEL_202:
}

void sub_3EFE0(char a1)
{
  if (a1 == 1)
  {
    *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_isInReleaseToStop) = 0;
  }

  else if (!a1)
  {
    goto LABEL_10;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_audioMessagingState);
  if (v2 == 3)
  {
    if (a1 != 4)
    {
      goto LABEL_10;
    }
  }

  else if (v2 != 4 || a1 != 3)
  {
    goto LABEL_10;
  }

  *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_skipAnimationUpdate) = 1;
LABEL_10:
  *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_audioMessagingState) = a1;
  if (*(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_skipAnimationUpdate))
  {
    *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_skipAnimationUpdate) = 0;
  }

  else
  {
    v4 = v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_controlDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      sub_42988();
      v7 = sub_42968();

      (*(v5 + 8))(v7, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    sub_3D4C8();
  }
}

void sub_3F124()
{
  v56.receiver = v0;
  v56.super_class = type metadata accessor for AMRecordingViewController();
  objc_msgSendSuper2(&v56, "viewDidLoad");
  v1 = [objc_opt_self() buttonWithType:1];
  v2 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton;
  v3 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton];
  *&v0[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (qword_81A78 != -1)
  {
    swift_once();
  }

  [v4 setBackgroundColor:qword_829D0];

  v5 = *&v0[v2];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = [v5 layer];
  [v6 setCornerRadius:54.0];

  v7 = *&v0[v2];
  if (!v7)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = [v7 layer];
  [v8 setMasksToBounds:1];

  v9 = *&v0[v2];
  if (!v9)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v9 addTarget:v0 action:"controllButtonTouchDown:" forControlEvents:1];
  v10 = *&v0[v2];
  if (!v10)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v10 addTarget:v0 action:"controllButtonTouchUpInside:" forControlEvents:64];
  v11 = *&v0[v2];
  if (!v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v11 addTarget:v0 action:"controllButtonTouchUpOutside:" forControlEvents:128];
  v12 = *&v0[v2];
  if (!v12)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!*&v0[v2])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v14 = v13;
  [v13 addSubview:?];

  v15 = *&v0[v2];
  if (!v15)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v16 = [v15 widthAnchor];
  v17 = [v16 constraintEqualToConstant:108.0];

  v18 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonWidthAnchor;
  v19 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonWidthAnchor];
  *&v0[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonWidthAnchor] = v17;

  v20 = *&v0[v2];
  if (!v20)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v21 = [v20 heightAnchor];
  v22 = [v21 constraintEqualToConstant:108.0];

  v23 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonHeightAnchor;
  v24 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonHeightAnchor];
  *&v0[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonHeightAnchor] = v22;

  sub_2D124(&qword_81D00);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_5F8E0;
  v26 = *&v0[v2];
  if (!v26)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v27 = [v26 centerXAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v29 = v28;
  v30 = [v28 centerXAnchor];

  v31 = [v27 constraintEqualToAnchor:v30];
  *(v25 + 32) = v31;
  v32 = *&v0[v2];
  if (!v32)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = [v32 centerYAnchor];
  v34 = [v0 view];
  if (!v34)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v35 = v34;
  v36 = [v34 centerYAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v25 + 40) = v37;
  v38 = *&v0[v18];
  if (!v38)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v25 + 48) = v38;
  v39 = *&v0[v23];
  if (!v39)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v40 = objc_opt_self();
  *(v25 + 56) = v39;
  sub_3094C(0, &qword_81CB0);
  v41 = v39;
  v42 = v38;
  isa = sub_429D8().super.isa;

  [v40 activateConstraints:isa];

  v44 = objc_allocWithZone(UIPanGestureRecognizer);
  v45 = v0;
  v46 = [v44 initWithTarget:v45 action:"handlePan:"];
  v47 = *&v45[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_panGestureRecognizer];
  *&v45[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_panGestureRecognizer] = v46;
  v48 = v46;

  v49 = *&v0[v2];
  if (!v49)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v48)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v50 = v49;
  [v50 addGestureRecognizer:v48];

  v51 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v45 action:"controlButtonLongPress:"];
  v52 = *&v45[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_longPressGestureRecognizer];
  *&v45[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_longPressGestureRecognizer] = v51;
  v53 = v51;

  v54 = *&v0[v2];
  if (!v54)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!v53)
  {
LABEL_47:
    __break(1u);
    return;
  }

  v55 = v54;
  [v55 addGestureRecognizer:v53];

  if (!v45[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_audioMessagingState])
  {
    sub_3EFE0(1);
  }

  sub_3D4C8();
}

id sub_3F730(uint64_t a1, double a2)
{
  v3 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton;
  result = *(a1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = [result layer];
  [v6 setCornerRadius:a2 * 0.5];

  result = *(a1 + v3);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [result layoutIfNeeded];
}

void sub_3F964(void *a1)
{
  v3 = [a1 view];
  [a1 locationInView:v3];
  v5 = v4;
  v7 = v6;

  v8 = [a1 view];
  v12 = 0;
  if (v8)
  {
    v9 = v8;
    [v9 bounds];
    v11 = v10;

    if ((v11 - (v5 + v11 * 0.5)) * (v11 - (v5 + v11 * 0.5)) + (v11 - (v7 + v11 * 0.5)) * (v11 - (v7 + v11 * 0.5)) <= v11 * v11)
    {
      v12 = 1;
    }
  }

  v13 = [a1 state];
  if (v13 == &dword_0 + 1)
  {
    sub_2D124(&qword_82010);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_5F5C0;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 32) = 0xD000000000000010;
    *(v17 + 40) = 0x8000000000063E20;
    sub_42BF8();

    sub_3EFE0(3);
  }

  else if (v13 != &dword_0 + 2)
  {
    if (v13 == &dword_0 + 3)
    {
      sub_2D124(&qword_82010);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_5F5C0;
      *(v14 + 56) = &type metadata for String;
      *(v14 + 32) = 0xD000000000000010;
      *(v14 + 40) = 0x8000000000063E40;
      sub_42BF8();

      sub_3EFE0(1);
      v15 = v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_controlDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 8);
        sub_3094C(0, &qword_82220);
        v18 = sub_42A88();
        ObjectType = swift_getObjectType();
        (*(v16 + 8))(v18, ObjectType, v16);

        swift_unknownObjectRelease();
      }
    }

    return;
  }

  sub_3FC58(v12);
}

void sub_3FC58(char a1)
{
  v2 = OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_audioMessagingState;
  v3 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_audioMessagingState);
  if (a1)
  {
    if (v3 != 3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews);
      if (v4)
      {
        v5 = (v4 & 0xFFFFFFFFFFFFFF8);
        if (v4 >> 62)
        {
          goto LABEL_69;
        }

        for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); ; i = sub_42B88())
        {

          if (i)
          {
            v7 = 0;
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v8 = sub_42AF8();
              }

              else
              {
                if (v7 >= v5[2])
                {
                  goto LABEL_63;
                }

                v8 = *(v4 + 8 * v7 + 32);
              }

              v9 = v8;
              v10 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                break;
              }

              [v8 setHidden:1];

              ++v7;
              if (v10 == i)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
          }

          else
          {
LABEL_29:

            v4 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_releaseToStopWavePulsingViews);
            if (!v4)
            {
              goto LABEL_54;
            }

            v5 = (v4 & 0xFFFFFFFFFFFFFF8);
            if (v4 >> 62)
            {
              v16 = sub_42B88();
            }

            else
            {
              v16 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
            }

            if (!v16)
            {
LABEL_53:

LABEL_54:
              sub_3EFE0(3);
              v26 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton);
              if (!v26)
              {
                __break(1u);
                goto LABEL_56;
              }

              goto LABEL_58;
            }

            v17 = 0;
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v18 = sub_42AF8();
              }

              else
              {
                if (v17 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_67;
                }

                v18 = *(v4 + 8 * v17 + 32);
              }

              v19 = v18;
              v20 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              [v18 setHidden:0];

              ++v17;
              if (v20 == v16)
              {
                goto LABEL_53;
              }
            }
          }

          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          ;
        }
      }

      __break(1u);
      goto LABEL_74;
    }
  }

  else if (v3 != 4)
  {
    v4 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews);
    if (!v4)
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      return;
    }

    if (v4 >> 62)
    {
      v11 = sub_42B88();
    }

    else
    {
      v11 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    }

    v5 = &selRef_powerLevels;
    if (v11)
    {
      v12 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v13 = sub_42AF8();
        }

        else
        {
          if (v12 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_64;
          }

          v13 = *(v4 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_62;
        }

        [v13 setHidden:0];

        ++v12;
      }

      while (v15 != v11);
    }

    v4 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_releaseToStopWavePulsingViews);
    if (v4)
    {
      if (v4 >> 62)
      {
        v21 = sub_42B88();
      }

      else
      {
        v21 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      }

      if (v21)
      {
        v22 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v23 = sub_42AF8();
          }

          else
          {
            if (v22 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_68;
            }

            v23 = *(v4 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_66;
          }

          [v23 setHidden:1];

          ++v22;
        }

        while (v25 != v21);
      }

LABEL_56:
    }

    sub_3EFE0(4);
    v26 = *(v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton);
    if (!v26)
    {
      goto LABEL_75;
    }

LABEL_58:
    v27 = *(v1 + v2);
    v28 = v26;
    sub_40844(v27);
  }
}

char *sub_40090(void *a1)
{
  v3 = [a1 view];
  [a1 locationInView:v3];
  v5 = v4;
  v7 = v6;

  v8 = [a1 view];
  v12 = 0;
  if (v8)
  {
    v9 = v8;
    [v9 bounds];
    v11 = v10;

    if ((v11 - (v5 + v11 * 0.5)) * (v11 - (v5 + v11 * 0.5)) + (v11 - (v7 + v11 * 0.5)) * (v11 - (v7 + v11 * 0.5)) <= v11 * v11)
    {
      v12 = 1;
    }
  }

  result = [a1 state];
  if (result == &dword_0 + 3)
  {
    sub_3EFE0(1);
    v17 = v1 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_controlDelegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v18 = *(v17 + 8);
      sub_3094C(0, &qword_82220);
      v19 = sub_42A88();
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(v19, ObjectType, v18);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (result != &dword_0 + 2)
    {
      if (result != &dword_0 + 1)
      {
        return result;
      }

      sub_3EFE0(3);
    }

    sub_3FC58(v12);
    sub_2D124(&qword_82010);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_5F5C0;
    sub_42AE8(18);

    if (v12)
    {
      v15._countAndFlagsBits = 1684956531;
    }

    else
    {
      v15._countAndFlagsBits = 0x6C65636E6163;
    }

    if (v12)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE600000000000000;
    }

    v15._object = v16;
    sub_429A8(v15);

    *(v14 + 56) = &type metadata for String;
    *(v14 + 32) = 0xD000000000000010;
    *(v14 + 40) = 0x8000000000063E00;
    sub_42BF8();
  }

  return result;
}

id sub_403EC(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_viewPropertyAnimator] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonWidthAnchor] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonHeightAnchor] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_panGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_longPressGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_controlDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_skipAnimationUpdate] = 0;
  v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_audioMessagingState] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_inititalWavePulsingViews] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_releaseToStopWavePulsingViews] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews] = 0;
  v3[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_isInReleaseToStop] = 2;
  if (a2)
  {
    v6 = sub_42968();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for AMRecordingViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_40584(void *a1)
{
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_viewPropertyAnimator] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButton] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonWidthAnchor] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_recordingControlButtonHeightAnchor] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_panGestureRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_longPressGestureRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_controlDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_skipAnimationUpdate] = 0;
  v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_audioMessagingState] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_inititalWavePulsingViews] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_releaseToStopWavePulsingViews] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_currentWavePulsingViews] = 0;
  v1[OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_isInReleaseToStop] = 2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AMRecordingViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_406B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMRecordingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_407F0()
{
  result = qword_82218;
  if (!qword_82218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_82218);
  }

  return result;
}

void sub_40844(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_42988();
  v6 = v5;
  if (qword_81AB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = off_82180[0];
  if (*(off_82180[0] + &dword_10) && (v8 = sub_40F08(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*&stru_20.segname[v7 + 16] + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  swift_endAccess();
  sub_41A7C(a1);
  if (v11)
  {
    if (qword_81AA8 != -1)
    {
      swift_once();
    }

    v12 = qword_82178;
    v13 = sub_42968();

    v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

    swift_beginAccess();
    v10 = v14;
    sub_40C0C(v14, v4, v6);
    swift_endAccess();
    [v2 setImage:v10 forState:0];
  }

  else
  {
  }

  if (a1 <= 6u)
  {
    if (((1 << a1) & 0x16) != 0)
    {
      if (qword_81A78 != -1)
      {
        swift_once();
      }

      [v2 setBackgroundColor:qword_829D0];
      if (qword_81A90 != -1)
      {
        swift_once();
      }

      v15 = &qword_829E8;
LABEL_31:
      [v2 setTintColor:*v15];
      goto LABEL_32;
    }

    if (((1 << a1) & 0x60) != 0)
    {
      if (qword_81A88 != -1)
      {
        swift_once();
      }

      [v2 setBackgroundColor:qword_829E0];
      if (qword_81AA0 != -1)
      {
        swift_once();
      }

      v15 = &qword_829F8;
      goto LABEL_31;
    }

    if (a1 == 3)
    {
      if (qword_81A80 != -1)
      {
        swift_once();
      }

      [v2 setBackgroundColor:qword_829D8];
      if (qword_81A98 != -1)
      {
        swift_once();
      }

      v15 = &qword_829F0;
      goto LABEL_31;
    }
  }

LABEL_32:
}

uint64_t sub_40C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_413D4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_40F08(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_41604();
        v14 = v16;
      }

      result = sub_41224(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

id sub_40D04()
{
  result = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:34.0];
  qword_82178 = result;
  return result;
}

int *sub_40D50()
{
  result = sub_41978(_swiftEmptyArrayStorage);
  off_82180[0] = result;
  return result;
}

uint64_t sub_40D78(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_42B88();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_42B88();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_40E68(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_417F8(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_40E68(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_42B88();
LABEL_9:
  result = sub_42B08();
  *v1 = result;
  return result;
}

unint64_t sub_40F08(uint64_t a1, uint64_t a2)
{
  sub_42C08();
  sub_42998();
  v4 = sub_42C28();

  return sub_4154C(a1, a2, v4);
}

uint64_t sub_40F80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2D124(&qword_82228);
  v35 = a2;
  result = sub_42BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_42C08();
      sub_42998();
      result = sub_42C28();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_41224(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_42AC8() + 1) & ~v5;
    do
    {
      sub_42C08();

      sub_42998();
      v9 = sub_42C28();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_413D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_40F08(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_40F80(v16, a4 & 1);
      v11 = sub_40F08(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_42BE8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_41604();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

unint64_t sub_4154C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_42BD8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_41604()
{
  v1 = v0;
  sub_2D124(&qword_82228);
  v2 = *v0;
  v3 = sub_42B98();
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

        result = v20;
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

void (*sub_41770(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_42AF8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_417F0;
  }

  __break(1u);
  return result;
}

uint64_t sub_417F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_42B88();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_42B88();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_41B40();
          for (i = 0; i != v6; ++i)
          {
            sub_2D124(&qword_82230);
            v9 = sub_41770(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for AMWavePulsingView();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_41978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2D124(&qword_82228);
    v3 = sub_42BB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_40F08(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_41A9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_41AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_41B08()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_41B40()
{
  result = qword_82238;
  if (!qword_82238)
  {
    sub_3A0FC(&qword_82230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_82238);
  }

  return result;
}

void sub_41BA4()
{
  sub_2D124(&qword_82010);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_5F5C0;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x7075206863756F74;
  *(v1 + 40) = 0xEF656469736E6920;
  sub_42BF8();

  v2 = *(v0 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_audioMessagingState);
  if (v2 <= 2)
  {
    if (!*(v0 + OBJC_IVAR____TtC22AudioMessagesExtension25AMRecordingViewController_audioMessagingState))
    {
      return;
    }

    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 5;
    }
  }

  else if (v2 - 3 >= 2 && v2 == 5)
  {
    v3 = 6;
  }

  else
  {
    v3 = 1;
  }

  sub_3EFE0(v3);
}

uint64_t MSMessagesAppPresentationStyle.description.getter(uint64_t a1)
{
  v1 = 0x697263736E617274;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x6465646E61707865;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_41DE0()
{
  v1 = *v0;
  v2 = 0x697263736E617274;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x6465646E61707865;
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
    return 0x746361706D6F63;
  }
}

void sub_41EA8()
{
  if (__cxa_guard_acquire(&qword_82368))
  {
    *&qword_82360 = 1.0 / *&qword_82358;

    __cxa_guard_release(&qword_82368);
  }
}

void sub_41F00(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCWaveformRenderer _renderTimeRangeOfSegments:withDuration:needsWaveformCalculation:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s -- requestedPillsToRender.length is 0. There will be nothing to render.", &v1, 0xCu);
}

void sub_41F84(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCWaveformRenderer _renderTimeRangeOfSegments:withDuration:needsWaveformCalculation:]_block_invoke";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s -- Failed to create waveform slices. Will re-attempt on the next try.", &v1, 0xCu);
}

void sub_4201C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "[RCWaveformGenerator appendAveragePowerLevelsByDigestingContentsOfAudioFileURL:progressBlock:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s -- loading waveform data from audioFile %@", buf, 0x16u);
}

void sub_42088()
{
  v1[0] = 136315394;
  sub_10FB8();
  _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "%s -- loading waveform data from %@", v1, 0x16u);
}

void sub_42108(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCWaveformGenerator _appendPowerMeterValuesFromSampleBuffer:]";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s -- ERROR:  CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer failed:  rv = %d", &v2, 0x12u);
}

void sub_42194()
{
  v1[0] = 136315394;
  sub_10FB8();
  _os_log_error_impl(&dword_0, v0, OS_LOG_TYPE_ERROR, "%s -- audioError = %@", v1, 0x16u);
}

void sub_42214(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a2 + 40);
  v4 = 136315650;
  v5 = "[RCWaveformGenerator _appendPowerMeterValuesFromDataInAudioFile:progressBlock:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = v3;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s -- ERROR: encountered error while attempting to read from audio file %@, error = %@ canceling further operations..", &v4, 0x20u);
}

void sub_422B4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCWaveformGenerator _onQueue_appendPowerMeterValuesFromRawAudioData:frameCount:format:isPredigest:]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s -- ERROR: unable to process samples", &v1, 0xCu);
}

void sub_42360(uint64_t a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "[RCWaveformDataSource saveGeneratedWaveformIfNecessary]";
  v4 = 2112;
  v5 = @"saved";
  v6 = 2112;
  v7 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%s -- %@ waveform to %@", &v2, 0x20u);
}

void sub_423FC(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCWaveformDataSource waveformGeneratorDidFinishLoading:error:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s -- Waveform generator reported loading error! %@", &v2, 0x16u);
}

void sub_424EC(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCWaveform saveContentsToURL:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s -- ERROR:  archiving waveform:  %@", &v2, 0x16u);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}