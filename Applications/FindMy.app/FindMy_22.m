unint64_t sub_100251398(unint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  result = sub_100251280(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v9 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v10 = v9;
    sub_10000905C(0, &qword_1006B4980);
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v14)
          {
            goto LABEL_45;
          }

          if (v7 >= v14)
          {
            goto LABEL_46;
          }

          v15 = *(v3 + 32 + 8 * v7);
          v12 = *(v3 + 32 + 8 * v6);
          v13 = v15;
        }

        v16 = v13;
        v17 = v2;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1000C1EE4(v3);
          v18 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v3 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v16;

        if ((v3 & 0x8000000000000000) != 0 || v18)
        {
          v3 = sub_1000C1EE4(v3);
          v19 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v19 + 16))
        {
          goto LABEL_43;
        }

        v2 = v17;
        v21 = v19 + 8 * v7;
        v22 = *(v21 + 32);
        *(v21 + 32) = v12;

        *v17 = v3;
      }

      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_42;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
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
  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_100251620(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchTime();
  v7 = *(v64 - 8);
  v8 = __chkstk_darwin(v64);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v61 - v11;
  v72 = &type metadata for SolariumFeatureFlag;
  v13 = sub_10000BD04();
  v73 = v13;
  v14 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if ((v14 & 1) == 0)
  {
    v15 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar];
    if (v15)
    {
      v16 = v15;
      [v16 setAlpha:0.0];
      v17 = *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBarTopConstraint];
      if (v17)
      {
        v18 = v17;
        [v18 setConstant:300.0];
      }
    }
  }

  v72 = &type metadata for SolariumFeatureFlag;
  v73 = v13;
  v19 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if (v19)
  {
    v20 = 0.5;
  }

  else
  {
    v20 = 0.64;
  }

  v21 = [v2 traitCollection];
  v22 = [v21 horizontalSizeClass];

  if (v22 == 1)
  {
    sub_1000490B0();
    if (v23 < v20)
    {
      sub_1000493F8(0, v20);
      v72 = &type metadata for SolariumFeatureFlag;
      v73 = v13;
      v24 = isFeatureEnabled(_:)();
      sub_100006060(aBlock);
      v25 = 0.5;
      if ((v24 & 1) == 0)
      {
        v25 = 0.64;
      }

      v26 = v25 - v20;
      if (v26 <= 0.0)
      {
        v26 = 0.0;
      }

      [*&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] setAlpha:v26 * *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration]];
    }
  }

  else
  {
    type metadata accessor for FMCardContainerViewController();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent;
      if (v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent])
      {
        if (v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent] == 1)
        {
          v72 = &type metadata for SolariumFeatureFlag;
          v73 = v13;
          v30 = a1;
          v31 = isFeatureEnabled(_:)();
          sub_100006060(aBlock);
          v32 = 0.5;
          if ((v31 & 1) == 0)
          {
            v32 = 0.64;
          }
        }

        else
        {
          v34 = a1;
          v32 = 1.0;
        }
      }

      else
      {
        v33 = a1;
        v32 = 0.0;
      }

      sub_1000493F8(0, v32);
      v35 = 0.0;
      if (v2[v29])
      {
        if (v2[v29] == 1)
        {
          v72 = &type metadata for SolariumFeatureFlag;
          v73 = v13;
          v36 = isFeatureEnabled(_:)();
          sub_100006060(aBlock);
          if (v36)
          {
            v35 = 0.5;
          }

          else
          {
            v35 = 0.64;
          }
        }

        else
        {
          v35 = 1.0;
        }
      }

      v72 = &type metadata for SolariumFeatureFlag;
      v73 = v13;
      v37 = isFeatureEnabled(_:)();
      sub_100006060(aBlock);
      v38 = 0.5;
      if ((v37 & 1) == 0)
      {
        v38 = 0.64;
      }

      v39 = v38 - v35;
      if (v39 <= 0.0)
      {
        v39 = 0.0;
      }

      [*(v28 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground) setAlpha:v39 * *(v28 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration)];
      *(v28 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) = v2[v29];
      sub_1000507D4();
    }
  }

  v40 = [v2 view];
  if (!v40)
  {
    goto LABEL_47;
  }

  v41 = v40;
  type metadata accessor for FMPassthroughView();
  v42 = swift_dynamicCastClass();
  if (!v42 || (v43 = v42, (v44 = [a1 view]) == 0))
  {
LABEL_46:

LABEL_47:
    *(*&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer] + OBJC_IVAR____TtC6FindMy19FMCardContainerView_appearance) = 1;
    sub_10001DA30();
    sub_10000905C(0, &qword_1006AEDC0);
    v53 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v63 = *(v7 + 1);
    v54 = v64;
    v63(v10, v64);
    v55 = swift_allocObject();
    *(v55 + 16) = v2;
    v73 = sub_100252498;
    v74 = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    v72 = &unk_1006313A8;
    v56 = _Block_copy(aBlock);
    v57 = v2;

    v58 = v65;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A198(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v59 = v67;
    v60 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v56);

    (*(v69 + 8))(v59, v60);
    (*(v66 + 8))(v58, v68);
    v63(v12, v54);
    return;
  }

  v45 = v44;
  if (!swift_dynamicCastClass())
  {
LABEL_45:

    v41 = v45;
    goto LABEL_46;
  }

  v63 = v7;
  v46 = OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews;
  swift_beginAccess();
  v62 = v45;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v43 + v46) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v43 + v46) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v47 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView];
  if (v47)
  {
    v48 = OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews;
    swift_beginAccess();
    v49 = v2;
    v45 = v47;
    v50 = sub_100251398(&v47[v48]);

    v51 = *&v47[v48];
    if (v51 >> 62)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
      if (v52 >= v50)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52 >= v50)
      {
LABEL_44:
        sub_1003CE0D8(v50, v52);
        swift_endAccess();

        v41 = v62;
        v7 = v63;
        goto LABEL_45;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100251E6C(void *a1)
{
  v3 = v1;
  v58 = a1;
  v4 = &type metadata for SolariumFeatureFlag;
  v60 = &type metadata for SolariumFeatureFlag;
  v5 = sub_10000BD04();
  v61 = v5;
  v6 = isFeatureEnabled(_:)();
  sub_100006060(v59);
  v7 = &selRef__enter3DMode;
  if (v6)
  {
    goto LABEL_7;
  }

  v8 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar];
  if (!v8)
  {
    goto LABEL_7;
  }

  v6 = v8;
  [v6 setAlpha:1.0];
  v9 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBarTopConstraint];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = qword_1006AEC30;
  v11 = v9;
  if (v10 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    [(SEL *)v11 setConstant:-*(&xmmword_1006D4720 + 1), v58];

LABEL_6:
    v12 = [v6 v7[367]];
    [v12 layoutIfNeeded];

LABEL_7:
    v13 = [v3 view];
    if (!v13)
    {
      goto LABEL_19;
    }

    v11 = v13;
    type metadata accessor for FMPassthroughView();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = v14;
    v4 = OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews;
    swift_beginAccess();
    v16 = *(&v4->Kind + v15);
    if (v16 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v17 = sub_100250C38();
    if (!v17)
    {
      v18 = *(&v4->Kind + v15);
      if (v18 >> 62)
      {
        v57 = _CocoaArrayWrapper.endIndex.getter();
        v20 = __OFSUB__(v57, 1);
        v21 = v57 - 1;
        if (v20)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
          goto LABEL_64;
        }
      }

      v17 = sub_100250790(v21);
    }

    v2 = v7;

    swift_endAccess();
    v6 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView];
    if (!v6)
    {
      goto LABEL_66;
    }

    v7 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer];
    v4 = OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews;
    swift_beginAccess();
    if (!(*(&v4->Kind + v6) >> 62))
    {
      break;
    }

LABEL_59:
    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_61:
    swift_once();
  }

  v22 = v6;
  v23 = v7;
  sub_1003CE0EC(0, 0, v23);
  swift_endAccess();

  v11 = v23;
  v7 = v2;
  v4 = &type metadata for SolariumFeatureFlag;
LABEL_18:

LABEL_19:
  v24 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController];
  if (v24)
  {
    v25 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController + 8];
    ObjectType = swift_getObjectType();
    v27 = v4;
    v28 = *(v25 + 8);
    v29 = v24;
    v30 = v28(ObjectType, v25);
    v4 = v27;
    v31 = v30;

    if (v31)
    {
      [v31 setContentOffset:0 animated:{0.0, 0.0}];
    }
  }

  v60 = v4;
  v61 = v5;
  v32 = isFeatureEnabled(_:)();
  sub_100006060(v59);
  *(*&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer] + OBJC_IVAR____TtC6FindMy19FMCardContainerView_appearance) = 0;
  sub_10001DA30();
  v33 = [v3 traitCollection];
  v34 = [v33 horizontalSizeClass];

  if (v34 == 1)
  {
    if (v32)
    {
      v35 = 0.5;
    }

    else
    {
      v35 = 0.64;
    }

    sub_1000493F8(0, v35);
    v60 = v4;
    v61 = v5;
    v36 = isFeatureEnabled(_:)();
    sub_100006060(v59);
    if (v36)
    {
      v37 = 0.5;
    }

    else
    {
      v37 = 0.64;
    }

    v38 = v37 - v35;
    if (v38 <= 0.0)
    {
      v38 = 0.0;
    }

    [*&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] setAlpha:v38 * *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration]];
    v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent] = 1;
    sub_1000507D4();
  }

  else
  {
    type metadata accessor for FMCardContainerViewController();
    v39 = v58;
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      v41 = v40;
      v42 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent;
      if (v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent])
      {
        if (v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent] == 1)
        {
          v60 = v4;
          v61 = v5;
          v43 = v58;
          v44 = isFeatureEnabled(_:)();
          sub_100006060(v59);
          v39 = v58;
          v45 = 0.64;
          if (v44)
          {
            v45 = 0.5;
          }
        }

        else
        {
          v47 = v58;
          v45 = 1.0;
        }
      }

      else
      {
        v46 = v58;
        v45 = 0.0;
      }

      sub_1000493F8(0, v45);
      v48 = 0.0;
      if (v3[v42])
      {
        if (v3[v42] == 1)
        {
          v60 = v4;
          v61 = v5;
          v49 = isFeatureEnabled(_:)();
          sub_100006060(v59);
          v39 = v58;
          if (v49)
          {
            v48 = 0.5;
          }

          else
          {
            v48 = 0.64;
          }
        }

        else
        {
          v48 = 1.0;
        }
      }

      v60 = v4;
      v61 = v5;
      v50 = isFeatureEnabled(_:)();
      sub_100006060(v59);
      v51 = 0.64;
      if (v50)
      {
        v51 = 0.5;
      }

      v52 = v51 - v48;
      if (v52 <= 0.0)
      {
        v52 = 0.0;
      }

      [*(v41 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground) setAlpha:v52 * *(v41 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration)];
      *(v41 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) = v3[v42];
      sub_1000507D4();
    }
  }

  v53 = [v3 view];
  if (!v53)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v54 = v53;
  v55 = [v53 v7[367]];

  if (v55)
  {
    type metadata accessor for FMPassthroughView();
    v56 = swift_dynamicCastClass();
    if (v56)
    {
      *(v56 + OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled) = 1;
    }
  }
}

double sub_1002524A0(char a1)
{
  if (a1 == 1)
  {
    v7 = &type metadata for SolariumFeatureFlag;
    v8 = sub_10000BD04();
    isFeatureEnabled(_:)();
    sub_100006060(v6);
  }

  v7 = &type metadata for SolariumFeatureFlag;
  v8 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v6);
  if (v1)
  {
    sub_100250DD0();
    if (qword_1006AEBA8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_100250F24();
    sub_1002510B8();
  }

  sub_100250C9C();
  v2 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale();
  v4 = v3;

  return v4;
}

id sub_100252620()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_100252798()
{
  v1 = v0;
  [v0 setDismissalType:3];
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v35._object = 0x8000000100579A00;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v4._object = 0x8000000100589A70;
  v5.value._object = 0x80000001005799E0;
  v35._countAndFlagsBits = 0xD000000000000018;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v35);

  v7 = String._bridgeToObjectiveC()();

  [v1 setTitle:v7];

  v8 = *&v1[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFlowSelectionCard_imageView];
  sub_10000905C(0, &qword_1006BC2B0);
  v9 = sub_1003DE3DC(0x63496D6574496F4ELL, 0xEA00000000006E6FLL, 6778480, 0xE300000000000000);
  [v8 setImage:v9];

  [v8 setContentMode:4];
  v10 = [v2 mainBundle];
  v11.value._countAndFlagsBits = 0xD000000000000010;
  v36._object = 0x8000000100582000;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  v12._object = 0x8000000100589A90;
  v11.value._object = 0x8000000100581FE0;
  v36._countAndFlagsBits = 0xD000000000000015;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v36);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v15 = String._bridgeToObjectiveC()();

  v33 = sub_100253178;
  v34 = v14;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100017328;
  v32 = &unk_100631718;
  v16 = _Block_copy(&aBlock);
  v17 = objc_opt_self();

  v18 = [v17 actionWithTitle:v15 style:0 handler:v16];

  _Block_release(v16);

  v19 = [v1 addAction:v18];

  v20 = [v2 mainBundle];
  v37._object = 0x8000000100579A00;
  v21._countAndFlagsBits = 0xD00000000000001CLL;
  v21._object = 0x8000000100589AB0;
  v22.value._object = 0x80000001005799E0;
  v37._countAndFlagsBits = 0xD000000000000018;
  v22.value._countAndFlagsBits = 0xD000000000000013;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v37);

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v25 = String._bridgeToObjectiveC()();

  v33 = sub_100253198;
  v34 = v24;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100017328;
  v32 = &unk_100631740;
  v26 = _Block_copy(&aBlock);

  v27 = [v17 actionWithTitle:v25 style:1 handler:v26];

  _Block_release(v26);

  v28 = [v1 addAction:v27];
}

void sub_100252C60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0);
  __chkstk_darwin(v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();

    if (v9)
    {
      *v6 = a3;
      swift_storeEnumTagMultiPayload();
      sub_10026E410(v6);

      sub_1002531B8(v6);
    }
  }
}

void sub_100252D54()
{
  v23 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1005521F0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFlowSelectionCard_imageView];
  v3 = [v2 centerXAnchor];
  v4 = [v0 contentView];
  v5 = [v4 mainContentGuide];

  v6 = [v5 centerXAnchor];
  v7 = [v3 constraintEqualToAnchor:v6];

  *(v1 + 32) = v7;
  v8 = [v2 topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 mainContentGuide];

  v11 = [v10 topAnchor];
  v12 = [v8 constraintGreaterThanOrEqualToAnchor:v11];

  *(v1 + 40) = v12;
  v13 = [v2 bottomAnchor];
  v14 = [v0 contentView];
  v15 = [v14 mainContentGuide];

  v16 = [v15 bottomAnchor];
  v17 = [v13 constraintLessThanOrEqualToAnchor:v16];

  *(v1 + 48) = v17;
  v18 = [v2 centerYAnchor];
  v19 = [v0 contentView];
  v20 = [v19 mainContentGuide];

  v21 = [v20 centerYAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];

  *(v1 + 56) = v22;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
}

id sub_1002530C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryDiscoveryFlowSelectionCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002531B8(uint64_t a1)
{
  v2 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPUnknownItem.findingProductType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FMIPProductType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPUnknownItem.productType.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for FMIPProductType.b389(_:))
  {
    (*(v3 + 96))(v5, v2);
    sub_100012DF0(v5, &qword_1006B1AA8);
LABEL_5:
    v8 = enum case for FMFindingProductType.item(_:);
    v9 = type metadata accessor for FMFindingProductType();
    return (*(*(v9 - 8) + 104))(a1, v8, v9);
  }

  if (v6 == enum case for FMIPProductType.zeus(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = type metadata accessor for FMIPZeusProductInformation();
    (*(*(v7 - 8) + 8))(v5, v7);
    goto LABEL_5;
  }

  if (v6 == enum case for FMIPProductType.hawkeye(_:))
  {
    (*(v3 + 96))(v5, v2);
    if ((FMIPUnknownItem.isAppleAudioAccessory.getter() & 1) != 0 && (v11 = FMIPUnknownItem.unknownBeacon.getter()) != 0)
    {
      v12 = v11;
      v13 = SPUnknownBeacon.productId.getter();
      v14 = [v12 type];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
        v19 = 1;
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      *a1 = v13;
      *(a1 + 8) = v19 & 1;
      v20 = &enum case for FMFindingProductType.airpods(_:);
    }

    else
    {
      v20 = &enum case for FMFindingProductType.item(_:);
    }

    v21 = *v20;
    v22 = type metadata accessor for FMFindingProductType();
    (*(*(v22 - 8) + 104))(a1, v21, v22);
    return sub_100012DF0(v5, &qword_1006C39A0);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t FMIPUnknownItem.findingPartType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for FMFindingPartType.standalone(_:);
  v3 = type metadata accessor for FMFindingPartType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002535EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void *FMIPUnknownItem.supportedFindingTechnologies.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FMFindingTechnology();
  v37 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v35 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = v34 - v5;
  v6 = type metadata accessor for FMItemCapabilities();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v34 - v11;
  v38 = _swiftEmptySetSingleton;
  FMIPUnknownItem.capabilities.getter();
  static FMItemCapabilities.canR1.getter();
  v13 = sub_100259DA8(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
  v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  if (v14)
  {
    v16 = sub_10007EBC0(&qword_1006C0020);
    v34[0] = v13;
    v17 = v2;
    v18 = *(v16 + 48);
    v19 = v35;
    *v35 = 1;
    v20 = enum case for FMFindingType.ut(_:);
    v21 = type metadata accessor for FMFindingType();
    v22 = *(*(v21 - 8) + 104);
    v34[1] = v1;
    v23 = v37;
    v22(&v19[v18], v20, v21);
    (*(v23 + 104))(v19, enum case for FMFindingTechnology.precision(_:), v17);
    v24 = v36;
    sub_1002549AC(v36, v19);
    v25 = v24;
    v2 = v17;
    (*(v23 + 8))(v25, v17);
  }

  FMIPUnknownItem.capabilities.getter();
  static FMItemCapabilities.canBTFinding.getter();
  v26 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15(v10, v6);
  v15(v12, v6);
  if (v26)
  {
    v27 = *(sub_10007EBC0(&qword_1006B68B0) + 48);
    v28 = enum case for FMFindingType.ut(_:);
    v29 = type metadata accessor for FMFindingType();
    v30 = v35;
    (*(*(v29 - 8) + 104))(v35, v28, v29);
    v30[v27] = 0;
    v31 = v37;
    (*(v37 + 104))(v30, enum case for FMFindingTechnology.proximity(_:), v2);
    v32 = v36;
    sub_1002549AC(v36, v30);
    (*(v31 + 8))(v32, v2);
  }

  return v38;
}

uint64_t FMIPUnknownItem.videoInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FMFindingProductType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPUnknownItem.findingProductType.getter(v5);
  FMFindingProductType.videoInfo(isZeus:)(0, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100253B80@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_100253BFC(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  if (a2 > 4u)
  {
    switch(a2)
    {
      case 5u:
        v6 = 4;
        goto LABEL_15;
      case 6u:
        v6 = 5;
        goto LABEL_15;
      case 7u:
        v6 = 6;
        goto LABEL_15;
    }

LABEL_12:
    Hasher._combine(_:)(3uLL);
    Hasher._combine(_:)(a2 & 1);
    goto LABEL_16;
  }

  if (a2 == 2)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (a2 == 3)
  {
    v6 = 1;
    goto LABEL_15;
  }

  if (a2 != 4)
  {
    goto LABEL_12;
  }

  v6 = 2;
LABEL_15:
  Hasher._combine(_:)(v6);
LABEL_16:
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 48);
    do
    {
      v12 = *(v11 + v9);
      if (v12 > 4)
      {
        switch(v12)
        {
          case 5u:
            if (a2 == 5)
            {
              result = 0;
              LOBYTE(a2) = 5;
              goto LABEL_41;
            }

            break;
          case 6u:
            if (a2 == 6)
            {
              result = 0;
              LOBYTE(a2) = 6;
              goto LABEL_41;
            }

            break;
          case 7u:
            if (a2 == 7)
            {
              result = 0;
              LOBYTE(a2) = 7;
              goto LABEL_41;
            }

            break;
          default:
            goto LABEL_33;
        }
      }

      else
      {
        if (v12 == 2)
        {
          if (a2 == 2)
          {
            result = 0;
            LOBYTE(a2) = 2;
            goto LABEL_41;
          }

          goto LABEL_19;
        }

        if (v12 != 3)
        {
          if (v12 == 4)
          {
            if (a2 == 4)
            {
              result = 0;
              LOBYTE(a2) = 4;
              goto LABEL_41;
            }

            goto LABEL_19;
          }

LABEL_33:
          if ((a2 - 2) >= 6u && ((v12 ^ a2) & 1) == 0)
          {
            result = 0;
            LOBYTE(a2) = *(v11 + v9);
            goto LABEL_41;
          }

          goto LABEL_19;
        }

        if (a2 == 3)
        {
          result = 0;
          LOBYTE(a2) = 3;
          goto LABEL_41;
        }
      }

LABEL_19:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  sub_100256BE8(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v15;
  result = 1;
LABEL_41:
  *a1 = a2;
  return result;
}

uint64_t sub_100253E7C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFFriend();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100259DA8(&qword_1006B85B0, &type metadata accessor for FMFFriend);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100259DA8(&qword_1006B85B8, &type metadata accessor for FMFFriend);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100256E70(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10025415C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100259DA8(&qword_1006B6918, &type metadata accessor for FMIPItem);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100259DA8(&qword_1006B7AA8, &type metadata accessor for FMIPItem);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100257138(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10025443C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  sub_1003B8270(v15, a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_1003B53E4(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[0] = *v2;

    sub_100257400(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = *&v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_10025457C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10025758C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1002546CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPPlaySoundChannels();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100259DA8(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100259DA8(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10025770C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1002549AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingTechnology();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100259DA8(&qword_1006B85C8, &type metadata accessor for FMFindingTechnology);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100259DA8(&qword_1006B85D0, &type metadata accessor for FMFindingTechnology);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1002579D4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100254CD4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100259DA8(&unk_1006C2410, &type metadata accessor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100259DA8(&qword_1006B22F0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100257C9C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int sub_100254FB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10007EBC0(&qword_1006B8598);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10004F7CC();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1002559B0();
        }

        v2 = v14;
        result = NSObject._rawHashValue(seed:)(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_100255194()
{
  v1 = v0;
  v2 = *v0;
  sub_10007EBC0(&qword_1006B85A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_100256A2C(*(*(v2 + 48) + (v11 | (v5 << 6))), v4))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      ;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v14 = 1 << *(v2 + 32);
    if (v14 >= 64)
    {
      bzero((v2 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v14;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1002552F8()
{
  v1 = v0;
  v35 = type metadata accessor for FMFFriend();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10007EBC0(&qword_1006B85C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100259DA8(&qword_1006B85B0, &type metadata accessor for FMFFriend);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100255654()
{
  v1 = v0;
  v35 = type metadata accessor for FMIPItem();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10007EBC0(&qword_1006B6910);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100259DA8(&qword_1006B6918, &type metadata accessor for FMIPItem);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1002559B0()
{
  v1 = v0;
  v2 = *v0;
  sub_10007EBC0(&qword_1006B8598);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_100255BD8()
{
  v1 = v0;
  v2 = *v0;
  sub_10007EBC0(&qword_1006B85A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    for (i = result + 56; v9; ++*(v4 + 16))
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      sub_1003B8270(v17, v15);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v4 + 48) + 8 * result) = v15;
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v16 = 1 << *(v2 + 32);
    if (v16 >= 64)
    {
      bzero((v2 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v16;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100255DB8()
{
  v1 = v0;
  v2 = *v0;
  sub_10007EBC0(&qword_1006B4358);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100256018()
{
  v1 = v0;
  v35 = type metadata accessor for FMIPPlaySoundChannels();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10007EBC0(&qword_1006B6950);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100259DA8(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100256374()
{
  v1 = v0;
  v35 = type metadata accessor for FMFindingTechnology();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10007EBC0(&qword_1006B85D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100259DA8(&qword_1006B85C8, &type metadata accessor for FMFindingTechnology);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1002566D0()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10007EBC0(&qword_1006B8590);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100259DA8(&unk_1006C2410, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t sub_100256A2C(unsigned __int8 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a1 > 4u)
  {
    switch(a1)
    {
      case 5u:
        v4 = 4;
        goto LABEL_15;
      case 6u:
        v4 = 5;
        goto LABEL_15;
      case 7u:
        v4 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(a1)
    {
      case 2u:
        v4 = 0;
        goto LABEL_15;
      case 3u:
        v4 = 1;
        goto LABEL_15;
      case 4u:
        v4 = 2;
LABEL_15:
        Hasher._combine(_:)(v4);
        goto LABEL_16;
    }
  }

  Hasher._combine(_:)(3uLL);
  Hasher._combine(_:)(a1 & 1);
LABEL_16:
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100256B64(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int sub_100256BE8(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_100255194();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100257F64();
      a2 = v7;
      goto LABEL_47;
    }

    sub_100258700();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  if (v4 > 4u)
  {
    switch(v4)
    {
      case 5u:
        v9 = 4;
        goto LABEL_22;
      case 6u:
        v9 = 5;
        goto LABEL_22;
      case 7u:
        v9 = 6;
        goto LABEL_22;
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:
        v9 = 0;
        goto LABEL_22;
      case 3u:
        v9 = 1;
        goto LABEL_22;
      case 4u:
        v9 = 2;
LABEL_22:
        Hasher._combine(_:)(v9);
        goto LABEL_23;
    }
  }

  Hasher._combine(_:)(3uLL);
  Hasher._combine(_:)(v4 & 1);
LABEL_23:
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_47;
  }

  v11 = ~v10;
  while (1)
  {
    v12 = *(*(v8 + 48) + a2);
    if (v12 > 4)
    {
      break;
    }

    switch(v12)
    {
      case 2u:
        if (v4 == 2)
        {
          goto LABEL_46;
        }

        break;
      case 3u:
        if (v4 == 3)
        {
          goto LABEL_46;
        }

        break;
      case 4u:
        if (v4 == 4)
        {
          goto LABEL_46;
        }

        break;
      default:
        goto LABEL_40;
    }

LABEL_26:
    a2 = (a2 + 1) & v11;
    if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  switch(v12)
  {
    case 5u:
      if (v4 == 5)
      {
        goto LABEL_46;
      }

      goto LABEL_26;
    case 6u:
      if (v4 == 6)
      {
        goto LABEL_46;
      }

      goto LABEL_26;
    case 7u:
      if (v4 == 7)
      {
        goto LABEL_46;
      }

      goto LABEL_26;
  }

LABEL_40:
  if (v4 - 2) < 6u || ((v12 ^ v4))
  {
    goto LABEL_26;
  }

LABEL_46:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_47:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

uint64_t sub_100256E70(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for FMFFriend();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002552F8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1002584C8(&type metadata accessor for FMFFriend, &qword_1006B85C0);
      goto LABEL_12;
    }

    sub_100258828();
  }

  v12 = *v3;
  sub_100259DA8(&qword_1006B85B0, &type metadata accessor for FMFFriend);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100259DA8(&qword_1006B85B8, &type metadata accessor for FMFFriend);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100257138(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100255654();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1002584C8(&type metadata accessor for FMIPItem, &qword_1006B6910);
      goto LABEL_12;
    }

    sub_100258B44();
  }

  v12 = *v3;
  sub_100259DA8(&qword_1006B6918, &type metadata accessor for FMIPItem);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100259DA8(&qword_1006B7AA8, &type metadata accessor for FMIPItem);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100257400(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100255BD8();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1002581F4();
      goto LABEL_12;
    }

    sub_100259074();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  sub_1003B8270(v18, v5);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      sub_10007EBC0(&qword_1006B4228);

      v12 = sub_1003B53E4(v11, v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v17;
  *(*v17 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10025758C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100255DB8();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100258344();
      goto LABEL_16;
    }

    sub_10025921C();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10025770C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for FMIPPlaySoundChannels();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100256018();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1002584C8(&type metadata accessor for FMIPPlaySoundChannels, &qword_1006B6950);
      goto LABEL_12;
    }

    sub_100259454();
  }

  v12 = *v3;
  sub_100259DA8(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100259DA8(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002579D4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for FMFindingTechnology();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100256374();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1002584C8(&type metadata accessor for FMFindingTechnology, &qword_1006B85D8);
      goto LABEL_12;
    }

    sub_100259770();
  }

  v12 = *v3;
  sub_100259DA8(&qword_1006B85C8, &type metadata accessor for FMFindingTechnology);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100259DA8(&qword_1006B85D0, &type metadata accessor for FMFindingTechnology);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100257C9C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002566D0();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1002584C8(&type metadata accessor for UUID, &qword_1006B8590);
      goto LABEL_12;
    }

    sub_100259A8C();
  }

  v13 = *v3;
  sub_100259DA8(&unk_1006C2410, &type metadata accessor for UUID);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100259DA8(&qword_1006B22F0, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100257F64()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B85A0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1002580A4()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B8598);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1002581F4()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B85A8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100258344()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B4358);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1002584C8(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10007EBC0(a2);
  v9 = *v2;
  v10 = static _SetStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

unint64_t sub_100258700()
{
  v1 = v0;
  v2 = *v0;
  sub_10007EBC0(&qword_1006B85A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; result = sub_100256A2C(*(*(v2 + 48) + (v10 | (v5 << 6))), v4))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      ;
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100258828()
{
  v1 = v0;
  v32 = type metadata accessor for FMFFriend();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10007EBC0(&qword_1006B85C0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100259DA8(&qword_1006B85B0, &type metadata accessor for FMFFriend);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100258B44()
{
  v1 = v0;
  v32 = type metadata accessor for FMIPItem();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10007EBC0(&qword_1006B6910);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100259DA8(&qword_1006B6918, &type metadata accessor for FMIPItem);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100258E60()
{
  v1 = v0;
  v2 = *v0;
  sub_10007EBC0(&qword_1006B8598);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_100259074()
{
  v1 = *v0;
  sub_10007EBC0(&qword_1006B85A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    for (i = result + 56; v7; ++*(v3 + 16))
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v13 = *(*(v1 + 48) + 8 * (v10 | (v4 << 6)));
      Hasher.init(_seed:)();

      sub_1003B8270(v14, v13);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 48) + 8 * result) = v13;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_14;
      }

      v12 = *(v1 + 56 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_10025921C()
{
  v1 = v0;
  v2 = *v0;
  sub_10007EBC0(&qword_1006B4358);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100259454()
{
  v1 = v0;
  v32 = type metadata accessor for FMIPPlaySoundChannels();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10007EBC0(&qword_1006B6950);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100259DA8(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100259770()
{
  v1 = v0;
  v32 = type metadata accessor for FMFindingTechnology();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10007EBC0(&qword_1006B85D8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100259DA8(&qword_1006B85C8, &type metadata accessor for FMFindingTechnology);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100259A8C()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10007EBC0(&qword_1006B8590);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100259DA8(&unk_1006C2410, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100259DA8(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100259DF0(uint64_t a1)
{
  v37 = a1;
  v44 = type metadata accessor for UIHostingControllerSizingOptions();
  v40 = *(v44 - 8);
  v41 = v40;
  __chkstk_darwin(v44);
  v43 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Font.TextStyle();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMChooseMapView();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [objc_allocWithZone(MKMapView) init];
  sub_10007EBC0(&qword_1006B2570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552210;
  *(inited + 32) = NSForegroundColorAttributeName;
  v10 = objc_opt_self();
  v11 = NSForegroundColorAttributeName;
  *(inited + 40) = [v10 labelColor];
  *(inited + 48) = NSFontAttributeName;
  v12 = objc_opt_self();
  v13 = NSFontAttributeName;
  *(inited + 56) = [v12 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v14 = sub_1001535F0(inited);
  swift_setDeallocating();
  sub_10007EBC0(&unk_1006B4DC0);
  swift_arrayDestroy();
  sub_1000F0914(v14);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = v34;
  v17 = [v34 mapAttributionWithStringAttributes:isa underlineText:1];

  type metadata accessor for FMChooseMapViewModel();
  swift_allocObject();
  v18 = v37;

  v36 = v17;
  v19 = sub_10024C314(v18, v17);
  v35 = xmmword_1005521A0;
  *v8 = xmmword_10055A7D0;
  *(v8 + 1) = xmmword_1005521A0;
  *(v8 + 4) = 0x4028000000000000;
  v20 = *(v6 + 32);
  *&v8[v20] = swift_getKeyPath();
  sub_10007EBC0(&qword_1006B5338);
  swift_storeEnumTagMultiPayload();
  v21 = *(v6 + 36);
  *&v8[v21] = swift_getKeyPath();
  sub_10007EBC0(&qword_1006B5340);
  swift_storeEnumTagMultiPayload();
  *&v45[0] = 0x4020000000000000;
  (*(v38 + 104))(v4, enum case for Font.TextStyle.footnote(_:), v39);
  sub_10019C2C4();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(v8 + 5) = sub_10025AC20;
  *(v8 + 6) = v19;
  v8[56] = 0;
  v22 = objc_allocWithZone(sub_10007EBC0(&qword_1006B8610));
  v23 = UIHostingController.init(rootView:)();
  *(v42 + OBJC_IVAR____TtC6FindMy25FMChooseMapViewController_hostingViewController) = v23;
  sub_10007EBC0(&qword_1006B3280);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100552220;
  v25 = v23;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  *&v45[0] = v24;
  sub_10025AC28();
  sub_10007EBC0(&qword_1006B3288);
  sub_10025AC80();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v54 = 0;
  v45[0] = xmmword_100554AC0;
  v45[1] = xmmword_100554AD0;
  v45[2] = xmmword_100552170;
  v45[3] = xmmword_100552180;
  v45[4] = xmmword_100552190;
  v45[5] = v35;
  v45[6] = xmmword_1005521B0;
  v45[7] = xmmword_1005521C0;
  v45[8] = xmmword_1005521D0;
  v45[9] = xmmword_1005521E0;
  v46 = 0;
  v47 = 0x403A000000000000;
  v48 = 0;
  *v49 = *v53;
  *&v49[3] = *&v53[3];
  __asm { FMOV            V0.2D, #16.0 }

  v50 = _Q0;
  v51 = 0x4046000000000000;
  v52 = 0;
  v31 = sub_100278C9C(v18, v45);

  return v31;
}

id sub_10025A43C()
{
  sub_1002791F0();
  v1 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView];
  [v1 setContentInsetAdjustmentBehavior:2];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView] setHidden:1];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel] setHidden:1];
  v2 = [objc_opt_self() mainBundle];
  v15._object = 0x800000010057ECE0;
  v3._object = 0x800000010057ECC0;
  v15._countAndFlagsBits = 0xD000000000000023;
  v3._countAndFlagsBits = 0xD000000000000011;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v15);

  *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText] = v5;

  sub_10027D190();
  v6 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel];
  [v6 setNumberOfLines:1];
  LODWORD(v7) = 1132068864;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];
  v8 = *&v0[OBJC_IVAR____TtC6FindMy25FMChooseMapViewController_hostingViewController];
  result = [v8 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = result;
  v11 = [objc_opt_self() clearColor];
  [v10 setBackgroundColor:v11];

  [v0 addChildViewController:v8];
  v12 = *&v1[OBJC_IVAR____TtC6FindMy12FMScrollView_content];
  result = [v8 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = result;
  [v12 addSubview:result];

  return [v8 didMoveToParentViewController:v0];
}

void sub_10025A6AC()
{
  sub_10027A200();
  v1 = [*&v0[OBJC_IVAR____TtC6FindMy25FMChooseMapViewController_hostingViewController] view];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005521F0;
  v4 = [v2 topAnchor];
  v5 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel] lastBaselineAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:19.0];

  *(v3 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v8 layoutMarginsGuide];

  v11 = [v10 leadingAnchor];
  v12 = [v7 constraintEqualToAnchor:v11];

  *(v3 + 40) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v15 layoutMarginsGuide];

  v18 = [v17 trailingAnchor];
  v19 = [v13 constraintEqualToAnchor:v18];

  *(v3 + 48) = v19;
  v20 = [v2 bottomAnchor];
  v21 = [*(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView] + OBJC_IVAR____TtC6FindMy12FMScrollView_content) bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v3 + 56) = v22;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];
}

uint64_t sub_10025AB58(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

unint64_t sub_10025AC28()
{
  result = qword_1006C1310;
  if (!qword_1006C1310)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1310);
  }

  return result;
}

unint64_t sub_10025AC80()
{
  result = qword_1006C1320;
  if (!qword_1006C1320)
  {
    sub_10007EC08(&qword_1006B3288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1320);
  }

  return result;
}

uint64_t sub_10025ACE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10025AD2C(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_10025AE30()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMSideBarViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  sub_10025AFBC();
  sub_10025B188();
  v2 = OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator;
  v3 = *(*&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator] + 16);
  sub_1003CCFC4(v1, v3);

  v4 = *(*(v1 + v2) + 24);
  type metadata accessor for FMDevicesSubscription();
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v5 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100631800;
  swift_unknownObjectWeakAssign();
  v6 = *(v4 + 16);

  os_unfair_lock_lock((v6 + 24));
  sub_10000E7C0((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  *(v1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_devicesSubscription) = v5;
}

void sub_10025AFBC()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  [v1 addSubview:*&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_sideBarView]];

  v3 = sub_10025B73C();
  sub_10052A850(v3);
  v4 = objc_allocWithZone(type metadata accessor for FMSegmentedControl());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithItems:isa];

  v7 = OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl;
  v8 = *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl];
  *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl] = v6;
  v9 = v6;

  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v9 addTarget:v0 action:"indexChangedWithSender:" forControlEvents:4096];

  v10 = *&v0[v7];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v10 addTarget:v0 action:"indexNotChangedWithSender:" forControlEvents:64];
  v11 = *&v0[v7];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v11 setHidden:*(v3 + 2) < 2uLL];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = *&v0[v7];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v12;
  v15 = v13;

  [v14 addSubview:v15];
}

void sub_10025B188()
{
  v1 = OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl];
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_sideBarView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = [v4 topAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v6;
  v8 = [v6 safeAreaLayoutGuide];

  v9 = [v8 topAnchor];
  v10 = [v5 constraintEqualToAnchor:v9 constant:0.0];

  v11 = *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_topConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_topConstraint] = v10;
  v12 = v10;

  if (v12)
  {
    sub_10007EBC0(&qword_1006AFC30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100552EF0;
    *(v13 + 32) = v12;
    v14 = *&v0[v1];
    if (!v14)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v15 = v13;
    v16 = v12;
    v17 = [v14 leadingAnchor];
    v18 = [v0 view];
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v19 = v18;
    v20 = [v18 leadingAnchor];

    v21 = [v17 constraintEqualToAnchor:v20 constant:10.0];
    *(v15 + 40) = v21;
    v22 = *&v0[v1];
    if (!v22)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v23 = [v22 trailingAnchor];
    v24 = [v0 view];
    if (!v24)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v25 = v24;
    v26 = objc_opt_self();
    v27 = [v25 trailingAnchor];

    v28 = [v23 constraintEqualToAnchor:v27 constant:-10.0];
    *(v15 + 48) = v28;
    sub_10000905C(0, &qword_1006B3A70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 activateConstraints:isa];
  }

  sub_10007EBC0(&qword_1006AFC30);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1005521F0;
  v31 = [v3 topAnchor];
  v32 = [v0 view];
  if (!v32)
  {
    goto LABEL_20;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v30 + 32) = v35;
  v36 = [v3 bottomAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  *(v30 + 40) = v40;
  v41 = [v3 leadingAnchor];
  v42 = [v0 view];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = v42;
  v44 = [v42 leadingAnchor];

  v45 = [v41 constraintEqualToAnchor:v44];
  *(v30 + 48) = v45;
  v46 = [v3 trailingAnchor];
  v47 = [v0 view];
  if (!v47)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v48 = v47;
  v49 = objc_opt_self();
  v50 = [v48 trailingAnchor];

  v51 = [v46 constraintEqualToAnchor:v50];
  *(v30 + 56) = v51;
  sub_10000905C(0, &qword_1006B3A70);
  v52 = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints:v52];
}

char *sub_10025B73C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator) + 16);
  v2 = v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted];
  v3 = qword_1006AECC0;
  v4 = v1;
  if (v3 != -1)
  {
    v28 = v4;
    swift_once();
    v4 = v28;
  }

  if (byte_1006D4AD1 != 1)
  {

LABEL_10:
    v10 = _swiftEmptyArrayStorage;
    if (v2)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v5 = v4[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

  if (v5)
  {
    goto LABEL_10;
  }

  v6 = [objc_opt_self() mainBundle];
  v34._object = 0x8000000100589CB0;
  v7._object = 0x8000000100589C90;
  v34._countAndFlagsBits = 0xD00000000000002ALL;
  v7._countAndFlagsBits = 0xD000000000000018;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v34);

  v10 = sub_10008B9E4(0, 1, 1, _swiftEmptyArrayStorage);
  v11 = *(v10 + 2);
  v12 = *(v10 + 3);
  v13 = v11 + 1;
  if (v11 >= v12 >> 1)
  {
    v29 = v2;
    v30 = v11 + 1;
    v31 = v10;
    v32 = *(v10 + 2);
    v33 = sub_10008B9E4((v12 > 1), v11 + 1, 1, v31);
    v11 = v32;
    v13 = v30;
    v2 = v29;
    v10 = v33;
  }

  *(v10 + 2) = v13;
  *&v10[16 * v11 + 32] = v9;
  if ((v2 & 1) == 0)
  {
LABEL_11:
    v14 = [objc_opt_self() mainBundle];
    v35._object = 0x8000000100589C60;
    v15._countAndFlagsBits = 0xD000000000000019;
    v15._object = 0x8000000100589C40;
    v35._countAndFlagsBits = 0xD00000000000002BLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v35);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10008B9E4(0, *(v10 + 2) + 1, 1, v10);
    }

    v19 = *(v10 + 2);
    v18 = *(v10 + 3);
    if (v19 >= v18 >> 1)
    {
      v10 = sub_10008B9E4((v18 > 1), v19 + 1, 1, v10);
    }

    *(v10 + 2) = v19 + 1;
    *&v10[16 * v19 + 32] = v17;
  }

LABEL_16:
  if (FMIPItemsTabEnabled.getter())
  {
    v20 = [objc_opt_self() mainBundle];
    v21.value._countAndFlagsBits = 0xD000000000000013;
    v36._object = 0x8000000100579A00;
    v22._countAndFlagsBits = 0x41545F534D455449;
    v21.value._object = 0x80000001005799E0;
    v22._object = 0xE900000000000042;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v36._countAndFlagsBits = 0xD000000000000018;
    v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v36);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10008B9E4(0, *(v10 + 2) + 1, 1, v10);
    }

    v26 = *(v10 + 2);
    v25 = *(v10 + 3);
    if (v26 >= v25 >> 1)
    {
      v10 = sub_10008B9E4((v25 > 1), v26 + 1, 1, v10);
    }

    *(v10 + 2) = v26 + 1;
    *&v10[16 * v26 + 32] = v24;
  }

  return v10;
}

uint64_t sub_10025BAC8(void *a1)
{
  v3 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 selectedSegmentIndex];
  v7 = qword_1006AECC0;
  v8 = *(*(v1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator) + 16);
  if (v7 != -1)
  {
    v12 = v8;
    swift_once();
    v8 = v12;
  }

  if (byte_1006D4AD1 == 1)
  {
    v9 = v8[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (__OFADD__(v6++, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_8:
  if (v6 == -1)
  {
    v6 = 0;
  }

  if (v6 == 2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v6 != 1)
  {
    if (!v6)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      goto LABEL_18;
    }

LABEL_21:
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v15 = 0xD00000000000002ELL;
    v16 = 0x8000000100589C10;
    v14[1] = v6;
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

LABEL_18:
  swift_storeEnumTagMultiPayload();
  sub_100352650(v5);
  swift_unknownObjectRelease();
  return sub_10005D4E4(v5);
}

uint64_t sub_10025BDB4(void *a1)
{
  v3 = type metadata accessor for FMSelectedSection();
  v4 = __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v15 - v7;
  v9 = [a1 selectedSegmentIndex];
  if (v9 > 0)
  {
    if (v9 == 1)
    {
      v10 = *(*(v1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator) + 56);
LABEL_10:
      swift_storeEnumTagMultiPayload();
      v11 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      sub_100062074(v10 + v11, v6);
      swift_beginAccess();

      sub_100058530(v8, v10 + v11);
      swift_endAccess();
      sub_100058594(v6);

      sub_10005D4E4(v6);
      return sub_10005D4E4(v8);
    }

    if (v9 == 2)
    {
      v10 = *(*(v1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator) + 56);
      goto LABEL_10;
    }
  }

  else
  {
    if (v9 == -1)
    {
      [a1 setSelectedSegmentIndex:0];
LABEL_7:
      v10 = *(*(v1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator) + 56);
      goto LABEL_10;
    }

    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  v13 = v9;
  _StringGuts.grow(_:)(48);

  v16 = 0xD00000000000002ELL;
  v17 = 0x8000000100589C10;
  v15[0] = v13;
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10025C094(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl;
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl);
  if (!v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = [v3 selectedSegmentIndex];
  v5 = *(a1 + v2);
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v5 removeAllSegments];
  v6 = sub_10025B73C();
  v7 = v6;
  v8 = *(v6 + 2);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = &v6[16 * v8 + 24];
    while (v9 < *(v7 + 2))
    {
      v11 = *(a1 + v2);
      if (!v11)
      {
        goto LABEL_13;
      }

      v12 = v11;
      v13 = String._bridgeToObjectiveC()();

      [v12 insertSegmentWithTitle:v13 atIndex:0 animated:1];

      --v9;
      v10 -= 16;
      if (v9 == -1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_8:

  v14 = *(a1 + v2);
  if (!v14)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v14 setSelectedSegmentIndex:v4];
}

id sub_10025C208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSideBarViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10025C364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_10025C610(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B8670);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v29 - v6;
  v8 = type metadata accessor for FMIPPartType();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - v16;
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  v31 = a1;
  FMIPItem.partType.getter();
  v32 = a2;
  FMIPItem.partType.getter();
  v20 = *(v5 + 56);
  v21 = *(v9 + 32);
  v21(v7, v19, v8);
  v21(&v7[v20], v17, v8);
  v22 = *(v9 + 88);
  v23 = v22(v7, v8);
  v24 = enum case for FMIPPartType.leftBud(_:);
  if (v23 != enum case for FMIPPartType.leftBud(_:))
  {
    if (v23 == enum case for FMIPPartType.rightBud(_:) && v22(&v7[v20], v8) == v24)
    {
      (*(v9 + 8))(v7, v8);
      v25 = 0;
      return v25 & 1;
    }

LABEL_7:
    FMIPItem.partType.getter();
    v26 = v30;
    FMIPItem.partType.getter();
    v25 = static FMIPPartType.< infix(_:_:)();
    v27 = *(v9 + 8);
    v27(v26, v8);
    v27(v14, v8);
    sub_100012DF0(v7, &qword_1006B8670);
    return v25 & 1;
  }

  if (v22(&v7[v20], v8) != enum case for FMIPPartType.rightBud(_:))
  {
    goto LABEL_7;
  }

  (*(v9 + 8))(v7, v8);
  v25 = 1;
  return v25 & 1;
}

Swift::Int sub_10025C924(void **a1)
{
  v2 = *(type metadata accessor for FMIPItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F2DC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10025C9CC(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10025C9CC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMIPItem();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMIPItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10025D160(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10025CAF8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10025CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v83 = sub_10007EBC0(&qword_1006B8670);
  __chkstk_darwin(v83);
  v91 = &v61 - v8;
  v90 = type metadata accessor for FMIPPartType();
  v9 = *(v90 - 8);
  v10 = __chkstk_darwin(v90);
  v69 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v68 = &v61 - v13;
  v14 = __chkstk_darwin(v12);
  v82 = &v61 - v15;
  __chkstk_darwin(v14);
  v81 = &v61 - v16;
  v17 = type metadata accessor for FMIPItem();
  v18 = __chkstk_darwin(v17);
  v73 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v89 = &v61 - v21;
  result = __chkstk_darwin(v20);
  v88 = &v61 - v24;
  v63 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v23 + 16);
    v26 = v23 + 16;
    v28 = *(v26 + 56);
    v77 = (v9 + 32);
    v78 = v27;
    v29 = (v9 + 88);
    v84 = enum case for FMIPPartType.leftBud(_:);
    v76 = enum case for FMIPPartType.rightBud(_:);
    v74 = (v26 - 8);
    v75 = (v9 + 8);
    v79 = v26;
    v30 = v25 + v28 * (a3 - 1);
    v70 = -v28;
    v71 = (v26 + 16);
    v31 = a1 - a3;
    v72 = v25;
    v62 = v28;
    v32 = v25 + v28 * a3;
    v80 = v17;
LABEL_6:
    v67 = a3;
    v64 = v32;
    v65 = v31;
    v34 = v31;
    v66 = v30;
    while (1)
    {
      v86 = v34;
      v87 = v32;
      v35 = v78;
      v78(v88, v32, v17);
      v35(v89, v30, v17);
      v36 = v81;
      FMIPItem.partType.getter();
      v37 = v82;
      FMIPItem.partType.getter();
      v38 = *(v83 + 48);
      v39 = *v77;
      v40 = v91;
      v41 = v90;
      (*v77)(v91, v36, v90);
      v39(&v40[v38], v37, v41);
      v42 = *v29;
      v43 = (*v29)(v40, v41);
      if (v43 == v84)
      {
        v44 = v42(&v91[v38], v90);
        if (v44 == v76)
        {
          (*v75)(v91, v90);
          v45 = *v74;
          v17 = v80;
          (*v74)(v89, v80);
          result = (v45)(v88, v17);
          v47 = v86;
          v46 = v87;
          goto LABEL_13;
        }
      }

      else if (v43 == v76)
      {
        v48 = v42(&v91[v38], v90);
        if (v48 == v84)
        {
          (*v75)(v91, v90);
          v33 = *v74;
          v17 = v80;
          (*v74)(v89, v80);
          result = (v33)(v88, v17);
LABEL_5:
          a3 = v67 + 1;
          v30 = v66 + v62;
          v31 = v65 - 1;
          v32 = v64 + v62;
          if (v67 + 1 == v63)
          {
            return result;
          }

          goto LABEL_6;
        }
      }

      v49 = v68;
      v50 = v88;
      FMIPItem.partType.getter();
      v51 = v69;
      v52 = v89;
      FMIPItem.partType.getter();
      v85 = static FMIPPartType.< infix(_:_:)();
      v53 = *v75;
      v54 = v51;
      v55 = v91;
      v56 = v90;
      (*v75)(v54, v90);
      v53(v49, v56);
      sub_100012DF0(v55, &qword_1006B8670);
      v57 = *v74;
      v17 = v80;
      (*v74)(v52, v80);
      result = (v57)(v50, v17);
      v47 = v86;
      v46 = v87;
      if ((v85 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_13:
      if (!v72)
      {
        __break(1u);
        return result;
      }

      v58 = *v71;
      v59 = v73;
      (*v71)(v73, v46, v17);
      swift_arrayInitWithTakeFrontToBack();
      result = (v58)(v30, v59, v17);
      v30 += v70;
      v32 = v46 + v70;
      v60 = __CFADD__(v47, 1);
      v34 = v47 + 1;
      if (v60)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_10025D160(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v5 = v4;
  v180 = a1;
  v209 = sub_10007EBC0(&qword_1006B8670);
  v8 = __chkstk_darwin(v209);
  v10 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v193 = &v174 - v11;
  v213 = type metadata accessor for FMIPPartType();
  v12 = *(v213 - 8);
  v13 = __chkstk_darwin(v213);
  v204 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v203 = &v174 - v16;
  v17 = __chkstk_darwin(v15);
  v196 = &v174 - v18;
  v19 = __chkstk_darwin(v17);
  v195 = &v174 - v20;
  v21 = __chkstk_darwin(v19);
  v189 = &v174 - v22;
  __chkstk_darwin(v21);
  v188 = &v174 - v23;
  v197 = type metadata accessor for FMIPItem();
  v24 = __chkstk_darwin(v197);
  v184 = &v174 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v200 = &v174 - v27;
  v28 = __chkstk_darwin(v26);
  v217 = &v174 - v29;
  v30 = __chkstk_darwin(v28);
  v218 = &v174 - v31;
  v32 = __chkstk_darwin(v30);
  v190 = &v174 - v33;
  v34 = __chkstk_darwin(v32);
  v35 = __chkstk_darwin(v34);
  v175 = &v174 - v36;
  result = __chkstk_darwin(v35);
  v174 = &v174 - v40;
  v41 = a3[1];
  v191 = v39;
  if (v41 < 1)
  {
    v44 = _swiftEmptyArrayStorage;
LABEL_109:
    v60 = *v180;
    if (!*v180)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_111;
  }

  v42 = v41;
  v192 = v38;
  v43 = 0;
  v210 = v39 + 16;
  v211 = (v39 + 8);
  v208 = (v12 + 32);
  v212 = (v12 + 88);
  v214 = enum case for FMIPPartType.leftBud(_:);
  v207 = enum case for FMIPPartType.rightBud(_:);
  v205 = (v39 + 32);
  v206 = (v12 + 8);
  v44 = _swiftEmptyArrayStorage;
  v181 = a3;
  v179 = a4;
  v202 = v10;
LABEL_4:
  v45 = v43;
  if (v43 + 1 >= v42)
  {
    v60 = v43 + 1;
    goto LABEL_33;
  }

  v194 = v42;
  v46 = *a3;
  v47 = *(v191 + 72);
  v48 = *a3 + v47 * (v43 + 1);
  v49 = *(v191 + 16);
  v50 = v174;
  v216 = v48;
  v51 = v197;
  v49(v174);
  v215 = v46;
  v52 = &v46[v47 * v43];
  v53 = v43;
  v54 = v175;
  v199 = v49;
  (v49)(v175, v52, v51);
  LODWORD(v201) = sub_10025C610(v50, v54);
  if (v5)
  {
    v173 = *v211;
    (*v211)(v54, v51);
    v173(v50, v51);
  }

  v176 = v44;
  v178 = 0;
  v55 = *v211;
  (*v211)(v54, v51);
  v198 = v55;
  result = (v55)(v50, v51);
  v177 = v53;
  v56 = v53 + 2;
  v57 = v216;
  v58 = v215 + v47 * (v53 + 2);
  v59 = v190;
  v60 = v194;
  v61 = v47;
  v215 = v47;
  while (v60 != v56)
  {
    v70 = v192;
    v71 = v199;
    (v199)(v192, v58, v51);
    v216 = v57;
    v71(v59, v57, v51);
    FMIPItem.partType.getter();
    v72 = v189;
    FMIPItem.partType.getter();
    v73 = *(v209 + 48);
    v74 = *v208;
    v75 = v193;
    (*v208)();
    (v74)(v75 + v73, v72, v213);
    v76 = v213;
    v77 = *v212;
    v78 = (*v212)(v75, v213);
    if (v78 == v214)
    {
      v79 = v77(v75 + v73, v76);
      if (v79 == v207)
      {
        (*v206)(v75, v76);
        v68 = v70;
        v65 = 1;
LABEL_16:
        v64 = v190;
        goto LABEL_8;
      }
    }

    else if (v78 == v207)
    {
      v80 = v77(v75 + v73, v76);
      if (v80 == v214)
      {
        (*v206)(v75, v76);
        v68 = v70;
        v65 = 0;
        goto LABEL_16;
      }
    }

    v62 = v195;
    FMIPItem.partType.getter();
    v63 = v196;
    v64 = v190;
    FMIPItem.partType.getter();
    v65 = static FMIPPartType.< infix(_:_:)();
    v66 = *v206;
    (*v206)(v63, v76);
    v67 = v76;
    v68 = v192;
    v66(v62, v67);
    v60 = v194;
    sub_100012DF0(v193, &qword_1006B8670);
LABEL_8:
    v51 = v197;
    v69 = v198;
    (v198)(v64, v197);
    result = v69(v68, v51);
    ++v56;
    v61 = v215;
    v58 += v215;
    v57 = &v216[v215];
    v59 = v64;
    if ((v201 ^ v65))
    {
      v60 = v56 - 1;
      break;
    }
  }

  v5 = v178;
  a3 = v181;
  a4 = v179;
  v44 = v176;
  v45 = v177;
  if ((v201 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v60 < v177)
  {
    goto LABEL_142;
  }

  if (v177 < v60)
  {
    v81 = v61 * (v60 - 1);
    v82 = v60 * v61;
    v83 = v60;
    v84 = v177;
    v85 = v177 * v61;
    do
    {
      if (v84 != --v83)
      {
        v87 = v60;
        v88 = *v181;
        if (!*v181)
        {
          goto LABEL_146;
        }

        v216 = *v205;
        (v216)(v184, v88 + v85, v197);
        if (v85 < v81 || v88 + v85 >= (v88 + v82))
        {
          v86 = v197;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v86 = v197;
          if (v85 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        result = (v216)(v88 + v81, v184, v86);
        v60 = v87;
        v61 = v215;
      }

      ++v84;
      v81 -= v61;
      v82 -= v61;
      v85 += v61;
    }

    while (v84 < v83);
    v5 = v178;
    a3 = v181;
    a4 = v179;
    v45 = v177;
  }

LABEL_33:
  v89 = a3[1];
  if (v60 >= v89)
  {
    goto LABEL_41;
  }

  if (__OFSUB__(v60, v45))
  {
    goto LABEL_139;
  }

  if (v60 - v45 >= a4)
  {
LABEL_41:
    v43 = v60;
    if (v60 < v45)
    {
      goto LABEL_138;
    }

    goto LABEL_42;
  }

  if (__OFADD__(v45, a4))
  {
    goto LABEL_140;
  }

  if (v45 + a4 < v89)
  {
    v89 = v45 + a4;
  }

  if (v89 < v45)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    result = sub_10025EFD4(v44);
    v44 = result;
LABEL_111:
    v219 = v44;
    v169 = *(v44 + 2);
    if (v169 >= 2)
    {
      while (*a3)
      {
        v170 = *&v44[16 * v169];
        v171 = *&v44[16 * v169 + 24];
        sub_10025E2B4(*a3 + *(v191 + 72) * v170, *a3 + *(v191 + 72) * *&v44[16 * v169 + 16], *a3 + *(v191 + 72) * v171, v60);
        if (v5)
        {
        }

        if (v171 < v170)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_10025EFD4(v44);
        }

        if (v169 - 2 >= *(v44 + 2))
        {
          goto LABEL_137;
        }

        v172 = &v44[16 * v169];
        *v172 = v170;
        *(v172 + 1) = v171;
        v219 = v44;
        result = sub_10025EF48(v169 - 1);
        v44 = v219;
        v169 = *(v219 + 2);
        if (v169 <= 1)
        {
        }
      }

      goto LABEL_147;
    }
  }

  v183 = v89;
  if (v60 == v89)
  {
    goto LABEL_41;
  }

  v176 = v44;
  v178 = v5;
  v136 = *a3;
  v137 = *(v191 + 72);
  v201 = *(v191 + 16);
  v138 = v136 + v137 * (v60 - 1);
  v198 = -v137;
  v177 = v45;
  v139 = (v45 - v60);
  v199 = v136;
  v182 = v137;
  v140 = v136 + v60 * v137;
  v141 = v197;
  while (2)
  {
    v194 = v60;
    v185 = v140;
    v143 = v140;
    v186 = v139;
    v144 = v139;
    v187 = v138;
    v145 = v138;
LABEL_96:
    v216 = v144;
    v146 = v201;
    v201(v218, v143, v141);
    v146(v217, v145, v141);
    v147 = v203;
    FMIPItem.partType.getter();
    v148 = v204;
    FMIPItem.partType.getter();
    v149 = *(v209 + 48);
    v150 = *v208;
    v151 = v202;
    v152 = v147;
    v153 = v213;
    (*v208)(v202, v152, v213);
    (v150)(v151 + v149, v148, v153);
    v154 = *v212;
    v155 = (*v212)(v151, v153);
    if (v155 != v214)
    {
      if (v155 != v207)
      {
        goto LABEL_101;
      }

      v158 = v154(v151 + v149, v153);
      if (v158 != v214)
      {
        goto LABEL_101;
      }

      (*v206)(v151, v153);
      v142 = *v211;
      (*v211)(v217, v141);
      v142(v218, v141);
LABEL_94:
      v60 = v194 + 1;
      v138 = &v187[v182];
      v139 = v186 - 1;
      v140 = &v185[v182];
      if (v194 + 1 != v183)
      {
        continue;
      }

      v5 = v178;
      a3 = v181;
      v44 = v176;
      v45 = v177;
      v43 = v183;
      if (v183 < v177)
      {
        goto LABEL_138;
      }

LABEL_42:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10008B8B8(0, *(v44 + 2) + 1, 1, v44);
        v44 = result;
      }

      v91 = *(v44 + 2);
      v90 = *(v44 + 3);
      v92 = v91 + 1;
      v93 = a3;
      if (v91 >= v90 >> 1)
      {
        result = sub_10008B8B8((v90 > 1), v91 + 1, 1, v44);
        v44 = result;
      }

      *(v44 + 2) = v92;
      v94 = &v44[16 * v91];
      *(v94 + 4) = v45;
      *(v94 + 5) = v43;
      if (!*v180)
      {
        goto LABEL_148;
      }

      if (!v91)
      {
LABEL_3:
        a3 = v93;
        v42 = v93[1];
        a4 = v179;
        if (v43 >= v42)
        {
          goto LABEL_109;
        }

        goto LABEL_4;
      }

      a3 = *v180;
      while (1)
      {
        v60 = v92 - 1;
        if (v92 >= 4)
        {
          break;
        }

        if (v92 == 3)
        {
          v95 = *(v44 + 4);
          v96 = *(v44 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_62:
          if (v98)
          {
            goto LABEL_127;
          }

          v111 = &v44[16 * v92];
          v113 = *v111;
          v112 = *(v111 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_130;
          }

          v117 = &v44[16 * v60 + 32];
          v119 = *v117;
          v118 = *(v117 + 1);
          v105 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v105)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v115, v120))
          {
            goto LABEL_134;
          }

          if (v115 + v120 >= v97)
          {
            if (v97 < v120)
            {
              v60 = v92 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v121 = &v44[16 * v92];
        v123 = *v121;
        v122 = *(v121 + 1);
        v105 = __OFSUB__(v122, v123);
        v115 = v122 - v123;
        v116 = v105;
LABEL_76:
        if (v116)
        {
          goto LABEL_129;
        }

        v124 = &v44[16 * v60];
        v126 = *(v124 + 4);
        v125 = *(v124 + 5);
        v105 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v105)
        {
          goto LABEL_132;
        }

        if (v127 < v115)
        {
          goto LABEL_3;
        }

LABEL_83:
        v132 = v60 - 1;
        if (v60 - 1 >= v92)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v93)
        {
          goto LABEL_145;
        }

        v133 = *&v44[16 * v132 + 32];
        v134 = *&v44[16 * v60 + 40];
        sub_10025E2B4(*v93 + *(v191 + 72) * v133, *v93 + *(v191 + 72) * *&v44[16 * v60 + 32], *v93 + *(v191 + 72) * v134, a3);
        if (v5)
        {
        }

        if (v134 < v133)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_10025EFD4(v44);
        }

        if (v132 >= *(v44 + 2))
        {
          goto LABEL_124;
        }

        v135 = &v44[16 * v132];
        *(v135 + 4) = v133;
        *(v135 + 5) = v134;
        v219 = v44;
        result = sub_10025EF48(v60);
        v44 = v219;
        v92 = *(v219 + 2);
        if (v92 <= 1)
        {
          goto LABEL_3;
        }
      }

      v99 = &v44[16 * v92 + 32];
      v100 = *(v99 - 64);
      v101 = *(v99 - 56);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_125;
      }

      v104 = *(v99 - 48);
      v103 = *(v99 - 40);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_126;
      }

      v106 = &v44[16 * v92];
      v108 = *v106;
      v107 = *(v106 + 1);
      v105 = __OFSUB__(v107, v108);
      v109 = v107 - v108;
      if (v105)
      {
        goto LABEL_128;
      }

      v105 = __OFADD__(v97, v109);
      v110 = v97 + v109;
      if (v105)
      {
        goto LABEL_131;
      }

      if (v110 >= v102)
      {
        v128 = &v44[16 * v60 + 32];
        v130 = *v128;
        v129 = *(v128 + 1);
        v105 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v105)
        {
          goto LABEL_135;
        }

        if (v97 < v131)
        {
          v60 = v92 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

    break;
  }

  v156 = v154(v151 + v149, v153);
  if (v156 == v207)
  {
    (*v206)(v151, v153);
    v157 = *v211;
    (*v211)(v217, v141);
    result = (v157)(v218, v141);
    goto LABEL_102;
  }

LABEL_101:
  v159 = v195;
  FMIPItem.partType.getter();
  v160 = v196;
  v161 = v217;
  FMIPItem.partType.getter();
  LODWORD(v215) = static FMIPPartType.< infix(_:_:)();
  v162 = *v206;
  (*v206)(v160, v153);
  v163 = v159;
  v141 = v197;
  v162(v163, v153);
  sub_100012DF0(v151, &qword_1006B8670);
  v164 = *v211;
  (*v211)(v161, v141);
  result = (v164)(v218, v141);
  if ((v215 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_102:
  v165 = v216;
  if (v199)
  {
    v166 = *v205;
    v167 = v200;
    (*v205)(v200, v143, v141);
    swift_arrayInitWithTakeFrontToBack();
    (v166)(v145, v167, v141);
    v145 += v198;
    v143 += v198;
    v168 = __CFADD__(v165, 1);
    v144 = v165 + 1;
    if (v168)
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_10025E2B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v130 = a4;
  v126 = sub_10007EBC0(&qword_1006B8670);
  v7 = __chkstk_darwin(v126);
  v107 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v105 - v9;
  v131 = type metadata accessor for FMIPPartType();
  v11 = *(v131 - 8);
  v12 = __chkstk_darwin(v131);
  v116 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v115 = (&v105 - v15);
  v16 = __chkstk_darwin(v14);
  v122 = &v105 - v17;
  v18 = __chkstk_darwin(v16);
  v121 = &v105 - v19;
  v20 = __chkstk_darwin(v18);
  v119 = &v105 - v21;
  __chkstk_darwin(v20);
  v120 = &v105 - v22;
  v132 = type metadata accessor for FMIPItem();
  v23 = *(v132 - 8);
  v24 = __chkstk_darwin(v132);
  v118 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v27 = __chkstk_darwin(v26);
  v128 = &v105 - v28;
  result = __chkstk_darwin(v27);
  v127 = &v105 - v31;
  v125 = *(v32 + 72);
  if (!v125)
  {
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (a2 - a1 == 0x8000000000000000 && v125 == -1)
  {
    goto LABEL_77;
  }

  v33 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v125 != -1)
  {
    v34 = (a2 - a1) / v125;
    v135 = a1;
    v35 = v130;
    v134 = v130;
    if (v34 < v33 / v125)
    {
      v36 = v34 * v125;
      if (v130 < a1 || a1 + v36 <= v130)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v130 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v35 = v130;
LABEL_17:
      v118 = (v35 + v36);
      v133 = v35 + v36;
      if (v36 >= 1 && a2 < a3)
      {
        v40 = *(v23 + 16);
        v114 = (v11 + 32);
        v115 = v40;
        LODWORD(v124) = enum case for FMIPPartType.leftBud(_:);
        LODWORD(v113) = enum case for FMIPPartType.rightBud(_:);
        v112 = (v11 + 8);
        v116 = (v23 + 16);
        v111 = (v23 + 8);
        v41 = (v11 + 88);
        v117 = a3;
        while (1)
        {
          v129 = a2;
          v42 = v35;
          v43 = v132;
          v44 = v115;
          v115(v127, a2, v132);
          v130 = v42;
          v44(v128, v42, v43);
          v45 = v120;
          FMIPItem.partType.getter();
          v46 = v119;
          FMIPItem.partType.getter();
          v47 = *(v126 + 48);
          v48 = *v114;
          v49 = v45;
          v50 = v131;
          (*v114)(v10, v49, v131);
          (v48)(&v10[v47], v46, v50);
          v51 = *v41;
          v52 = (*v41)(v10, v50);
          if (v52 == v124)
          {
            v53 = v51(&v10[v47], v131);
            if (v53 == v113)
            {
              (*v112)(v10, v131);
              v54 = *v111;
              v55 = v132;
              (*v111)(v128, v132);
              v54(v127, v55);
              goto LABEL_29;
            }
          }

          else if (v52 == v113)
          {
            v56 = v51(&v10[v47], v131);
            if (v56 == v124)
            {
              (*v112)(v10, v131);
              v57 = *v111;
              v58 = v132;
              (*v111)(v128, v132);
              v57(v127, v58);
LABEL_34:
              a2 = v129;
              v71 = v125;
              v73 = v130 + v125;
              if (a1 < v130 || a1 >= v73)
              {
                swift_arrayInitWithTakeFrontToBack();
                v72 = v117;
              }

              else
              {
                v72 = v117;
                if (a1 != v130)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v134 = v73;
              v35 = v73;
              goto LABEL_41;
            }
          }

          v59 = v41;
          v60 = v121;
          v61 = v127;
          FMIPItem.partType.getter();
          v62 = v10;
          v63 = v122;
          v64 = v128;
          FMIPItem.partType.getter();
          LODWORD(v123) = static FMIPPartType.< infix(_:_:)();
          v65 = *v112;
          v66 = v63;
          v10 = v62;
          v67 = v131;
          (*v112)(v66, v131);
          v68 = v60;
          v41 = v59;
          v65(v68, v67);
          sub_100012DF0(v10, &qword_1006B8670);
          v69 = *v111;
          v70 = v132;
          (*v111)(v64, v132);
          v69(v61, v70);
          if ((v123 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_29:
          v71 = v125;
          a2 = v129 + v125;
          if (a1 < v129 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v130;
            v72 = v117;
          }

          else
          {
            v72 = v117;
            if (a1 != v129)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v35 = v130;
          }

LABEL_41:
          a1 += v71;
          v135 = a1;
          if (v35 >= v118 || a2 >= v72)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_75;
    }

    v37 = v33 / v125 * v125;
    v128 = v30;
    if (v130 < a2 || a2 + v37 <= v130)
    {
      swift_arrayInitWithTakeFrontToBack();
      v30 = v128;
      v35 = v130;
      v38 = v118;
    }

    else
    {
      v38 = v118;
      if (v130 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
        v30 = v128;
        v35 = v130;
      }
    }

    v74 = v35 + v37;
    if (v37 < 1)
    {
LABEL_74:
      v135 = a2;
      v133 = v74;
LABEL_75:
      sub_10025F1E0(&v135, &v134, &v133, &type metadata accessor for FMIPItem);
      return 1;
    }

    v75 = -v125;
    v113 = (v23 + 16);
    v112 = (v11 + 32);
    v111 = (v11 + 88);
    LODWORD(v120) = enum case for FMIPPartType.leftBud(_:);
    v109 = enum case for FMIPPartType.rightBud(_:);
    v114 = (v11 + 8);
    v108 = (v23 + 8);
    v76 = v35 + v37;
    v110 = a1;
    v127 = -v125;
LABEL_48:
    v106 = v74;
    v77 = a2;
    v78 = a2 + v75;
    v79 = v107;
    v129 = v78;
    v119 = v77;
    while (1)
    {
      if (v77 <= a1)
      {
        v135 = v77;
        v133 = v106;
        goto LABEL_75;
      }

      v124 = a3;
      v117 = v74;
      v80 = *v113;
      v123 = v76 + v75;
      v81 = v132;
      v80(v30);
      (v80)(v38, v78, v81);
      v82 = v115;
      FMIPItem.partType.getter();
      v83 = v116;
      FMIPItem.partType.getter();
      v84 = *(v126 + 48);
      v85 = *v112;
      v86 = v82;
      v87 = v131;
      (*v112)(v79, v86, v131);
      (v85)(v79 + v84, v83, v87);
      v88 = *v111;
      v89 = (*v111)(v79, v87);
      v125 = v76;
      if (v89 == v120)
      {
        v90 = (v88)(v79 + v84, v131);
        if (v90 == v109)
        {
          (*v114)(v79, v131);
          v91 = 1;
LABEL_59:
          v93 = v118;
          v94 = v128;
          goto LABEL_61;
        }
      }

      else if (v89 == v109)
      {
        v92 = (v88)(v79 + v84, v131);
        if (v92 == v120)
        {
          (*v114)(v79, v131);
          v91 = 0;
          goto LABEL_59;
        }
      }

      v95 = v131;
      v96 = v121;
      v94 = v128;
      FMIPItem.partType.getter();
      v97 = v122;
      v93 = v118;
      FMIPItem.partType.getter();
      v91 = static FMIPPartType.< infix(_:_:)();
      v98 = *v114;
      (*v114)(v97, v95);
      v79 = v107;
      v98(v96, v95);
      sub_100012DF0(v79, &qword_1006B8670);
LABEL_61:
      v99 = v124;
      v100 = &v124[v127];
      v101 = *v108;
      v102 = v132;
      (*v108)(v93, v132);
      v101(v94, v102);
      if (v91)
      {
        v76 = v125;
        if (v99 < v119 || v100 >= v119)
        {
          a3 = v100;
          a2 = v129;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v110;
          v74 = v117;
        }

        else
        {
          v104 = v99 == v119;
          a2 = v129;
          a1 = v110;
          v74 = v117;
          a3 = v100;
          if (!v104)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v75 = v127;
        v30 = v128;
        v38 = v93;
        if (v76 <= v130)
        {
          goto LABEL_74;
        }

        goto LABEL_48;
      }

      v103 = v123;
      v74 = v123;
      if (v99 < v125 || v100 >= v125)
      {
        a3 = v100;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v110;
      }

      else
      {
        v104 = v99 == v125;
        a1 = v110;
        a3 = v100;
        if (!v104)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v74;
      v78 = v129;
      v75 = v127;
      v30 = v128;
      v77 = v119;
      v38 = v93;
      if (v103 <= v130)
      {
        a2 = v119;
        goto LABEL_74;
      }
    }
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_10025EF48(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10025EFD4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10025F000(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10007EBC0(&qword_1006AF940);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10025F1E0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_10025F408(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v46 = a4;
  LODWORD(v44) = a3;
  v5 = sub_10007EBC0(&qword_1006BB1E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for FMIPAddress();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = objc_opt_self();
  v12 = [v45 mainBundle];
  v51._object = 0x8000000100579900;
  v13._countAndFlagsBits = 0x45524444415F4F4ELL;
  v13._object = 0xEA00000000005353;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0xD00000000000001CLL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v51)._countAndFlagsBits;

  sub_100007204(a1, v7, &qword_1006BB1E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100012DF0(v7, &qword_1006BB1E0);
    if ((v46 & 1) == 0)
    {
      return countAndFlagsBits;
    }

    goto LABEL_27;
  }

  (*(v9 + 32))(v11, v7, v8);
  v16 = FMIPAddress.displayAddress.getter();
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v16;
  v19 = v17;

  v20 = FMIPAddress.label.getter();
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = v21;
  if ((v44 & 1) == 0)
  {
    countAndFlagsBits = v20;
    v25 = FMIPAddress.streetAddress.getter();
    if (!v26)
    {
      goto LABEL_14;
    }

    v27 = v25;
    v28 = v26;
    v29 = FMIPAddress.streetName.getter();
    if (!v30)
    {
      (*(v9 + 8))(v11, v8);

LABEL_15:

      if ((v46 & 1) == 0)
      {
        return countAndFlagsBits;
      }

      goto LABEL_27;
    }

    v43 = v29;
    v44 = v30;
    v49 = countAndFlagsBits;
    v50 = v22;
    v47 = v27;
    v48 = v28;
    sub_100035F3C();
    v31 = StringProtocol.contains<A>(_:)();

    if ((v31 & 1) == 0)
    {

      goto LABEL_25;
    }

    v49 = countAndFlagsBits;
    v50 = v22;
    v47 = v43;
    v48 = v44;
    v32 = StringProtocol.contains<A>(_:)();
    (*(v9 + 8))(v11, v8);

    if ((v32 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    countAndFlagsBits = v18;
    if ((v46 & 1) == 0)
    {
      return countAndFlagsBits;
    }

    goto LABEL_27;
  }

  v23 = FMIPAddress.mapItemFormattedAddress.getter();
  if (v24)
  {
    countAndFlagsBits = v23;
LABEL_14:
    (*(v9 + 8))(v11, v8);
    goto LABEL_15;
  }

  result = FMIPAddress.formattedAddressLines.getter();
  if (!result)
  {
LABEL_20:
    (*(v9 + 8))(v11, v8);
    goto LABEL_21;
  }

  if (result[2])
  {
    v34 = result[5];
    v44 = result[4];

    v35 = [v45 mainBundle];
    v52._object = 0x8000000100584E50;
    v36._object = 0x8000000100584E30;
    v52._countAndFlagsBits = 0xD00000000000002ELL;
    v36._countAndFlagsBits = 0xD00000000000001CLL;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v52);

    sub_10007EBC0(&unk_1006B20B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100552210;
    *(v38 + 56) = &type metadata for String;
    v39 = sub_10008EE84();
    *(v38 + 32) = v44;
    *(v38 + 40) = v34;
    *(v38 + 96) = &type metadata for String;
    *(v38 + 104) = v39;
    *(v38 + 64) = v39;
    *(v38 + 72) = v18;
    *(v38 + 80) = v19;
    countAndFlagsBits = String.init(format:_:)();
LABEL_25:

LABEL_26:
    (*(v9 + 8))(v11, v8);
    if ((v46 & 1) == 0)
    {
      return countAndFlagsBits;
    }

LABEL_27:

    v40 = [v45 mainBundle];
    v41._countAndFlagsBits = 0xD000000000000019;
    v53._object = 0x8000000100589D20;
    v41._object = 0x8000000100589D00;
    v53._countAndFlagsBits = 0xD00000000000002BLL;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v53)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

uint64_t sub_10025F99C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v91 = a3;
  v79 = a2;
  v96 = a1;
  v5 = type metadata accessor for PublishedLocation.Label.Length();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PublishedLocation.Label.DetailLevel();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v80 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006BB1E0);
  v10 = __chkstk_darwin(v9 - 8);
  v95 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v88 = &v74 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v74 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v74 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v74 - v21;
  __chkstk_darwin(v20);
  v24 = &v74 - v23;
  v25 = type metadata accessor for PublishedLocation.Label();
  v93 = *(v25 - 8);
  v94 = v25;
  __chkstk_darwin(v25);
  v92 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = 0;
  object = 0;
  v78 = a4;
  if (a4)
  {
    v29 = [objc_opt_self() mainBundle];
    v97._object = 0x8000000100589D20;
    v30._object = 0x8000000100589D00;
    v97._countAndFlagsBits = 0xD00000000000002BLL;
    v30._countAndFlagsBits = 0xD000000000000019;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v97);
    countAndFlagsBits = v32._countAndFlagsBits;
    object = v32._object;
  }

  v89 = object;
  v90 = countAndFlagsBits;
  v33 = v96;
  sub_100007204(v96, v24, &qword_1006BB1E0);
  v34 = type metadata accessor for FMIPAddress();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v24, 1, v34) == 1)
  {
    sub_100012DF0(v24, &qword_1006BB1E0);
    v86 = 0;
    v87 = 0;
  }

  else
  {
    FMIPAddress.coarseAddressModern.getter();
    v38 = v37;
    (*(v35 + 8))(v24, v34);
    if (v38)
    {
      v39 = String.nilIfEmpty.getter();
      v86 = v40;
      v87 = v39;
    }

    else
    {
      v86 = 0;
      v87 = 0;
    }

    v33 = v96;
  }

  v41 = v95;
  sub_100007204(v33, v22, &qword_1006BB1E0);
  if (v36(v22, 1, v34) == 1)
  {
    sub_100012DF0(v22, &qword_1006BB1E0);
    v84 = 0;
    v85 = 0;
  }

  else
  {
    FMIPAddress.streetAddressModern.getter();
    v43 = v42;
    (*(v35 + 8))(v22, v34);
    if (v43)
    {
      v44 = String.nilIfEmpty.getter();
      v84 = v45;
      v85 = v44;
    }

    else
    {
      v84 = 0;
      v85 = 0;
    }

    v41 = v95;
    v33 = v96;
  }

  v46 = v88;
  sub_100007204(v33, v19, &qword_1006BB1E0);
  if (v36(v19, 1, v34) == 1)
  {
    sub_100012DF0(v19, &qword_1006BB1E0);
    v88 = 0;
    v83 = 0;
  }

  else
  {
    FMIPAddress.smallAddressModern.getter();
    v48 = v47;
    (*(v35 + 8))(v19, v34);
    if (v48)
    {
      v88 = String.nilIfEmpty.getter();
      v83 = v49;
    }

    else
    {
      v88 = 0;
      v83 = 0;
    }

    v41 = v95;
    v33 = v96;
  }

  sub_100007204(v33, v16, &qword_1006BB1E0);
  if (v36(v16, 1, v34) == 1)
  {
    sub_100012DF0(v16, &qword_1006BB1E0);
  }

  else
  {
    FMIPAddress.mediumAddressModern.getter();
    v51 = v50;
    (*(v35 + 8))(v16, v34);
    if (v51)
    {
      String.nilIfEmpty.getter();
    }

    v41 = v95;
  }

  sub_100007204(v33, v46, &qword_1006BB1E0);
  if (v36(v46, 1, v34) == 1)
  {
    sub_100012DF0(v46, &qword_1006BB1E0);
  }

  else
  {
    FMIPAddress.largeAddressModern.getter();
    v53 = v52;
    (*(v35 + 8))(v46, v34);
    if (v53)
    {
      String.nilIfEmpty.getter();
    }

    v41 = v95;
    v33 = v96;
  }

  sub_100007204(v33, v41, &qword_1006BB1E0);
  if (v36(v41, 1, v34) == 1)
  {
    sub_100012DF0(v41, &qword_1006BB1E0);
    v54 = v92;
  }

  else
  {
    FMIPAddress.poiAddressModern.getter();
    v56 = v55;
    (*(v35 + 8))(v41, v34);
    v54 = v92;
    if (v56)
    {
      String.nilIfEmpty.getter();
    }

    v33 = v96;
  }

  v57 = v89;

  PublishedLocation.Label.init(customLabel:coarseLabel:streetLabel:smallLabel:mediumLabel:largeLabel:poiLabel:)();
  if (v91)
  {

    v59 = v80;
    v58 = v81;
    v60 = v82;
    (*(v81 + 104))(v80, enum case for PublishedLocation.Label.DetailLevel.detailed(_:), v82);
    v61 = PublishedLocation.Label.primaryAndSecondaryNoFallbackLabel(isInaccurate:detailLevel:)();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    (*(v58 + 8))(v59, v60);
    if (v63)
    {
      if (!v67)
      {

        v61 = v65;
LABEL_45:
        sub_10025F408(v33, v79, 1, v78 & 1);
      }
    }

    else if (!v67)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (!v57)
    {
      v69 = v76;
      v68 = v77;
      v70 = v75;
      (*(v76 + 104))(v75, enum case for PublishedLocation.Label.Length.small(_:), v77);
      PublishedLocation.Label.combinedNoFallbackLabel(maxLength:)();
      v72 = v71;
      (*(v69 + 8))(v70, v68);
      if (!v72)
      {
        sub_10025F408(v33, v79, 0, v78 & 1);
      }
    }

    v61 = 0;
  }

  (*(v93 + 8))(v54, v94);
  return v61;
}

uint64_t sub_100260334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v460 = a8;
  v529 = a7;
  v503 = a6;
  v464 = a5;
  v470 = a4;
  v527 = a3;
  v534 = a2;
  v528 = a9;
  v11 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v11 - 8);
  v473 = &v457 - v12;
  v488 = type metadata accessor for FMIPActionStatus();
  v500 = *(v488 - 8);
  v13 = __chkstk_darwin(v488);
  v487 = &v457 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v486 = &v457 - v15;
  v16 = sub_10007EBC0(&qword_1006B8678);
  __chkstk_darwin(v16 - 8);
  v493 = &v457 - v17;
  v514 = type metadata accessor for FMIPEraseMetadata();
  v513 = *(v514 - 8);
  __chkstk_darwin(v514);
  v499 = &v457 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v498 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v497 = *(v498 - 8);
  __chkstk_darwin(v498);
  v495 = &v457 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v496 = type metadata accessor for Date.FormatStyle.DateStyle();
  v494 = *(v496 - 8);
  __chkstk_darwin(v496);
  v492 = &v457 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10007EBC0(&unk_1006B0000);
  v22 = __chkstk_darwin(v21 - 8);
  v459 = &v457 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v474 = &v457 - v25;
  v26 = __chkstk_darwin(v24);
  v489 = &v457 - v27;
  v28 = __chkstk_darwin(v26);
  v512 = &v457 - v29;
  __chkstk_darwin(v28);
  v517 = &v457 - v30;
  v480 = type metadata accessor for FormatStyleCapitalizationContext();
  v481 = *(v480 - 8);
  __chkstk_darwin(v480);
  v479 = &v457 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v516 = type metadata accessor for Date();
  v515 = *(v516 - 8);
  v32 = __chkstk_darwin(v516);
  v462 = &v457 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v469 = &v457 - v35;
  v36 = __chkstk_darwin(v34);
  v468 = &v457 - v37;
  v38 = __chkstk_darwin(v36);
  v490 = &v457 - v39;
  v40 = __chkstk_darwin(v38);
  v483 = &v457 - v41;
  v42 = __chkstk_darwin(v40);
  v478 = &v457 - v43;
  v44 = __chkstk_darwin(v42);
  v491 = &v457 - v45;
  v46 = __chkstk_darwin(v44);
  v466 = &v457 - v47;
  __chkstk_darwin(v46);
  v472 = &v457 - v48;
  v535 = type metadata accessor for FMIPLocation();
  v533 = *(v535 - 8);
  __chkstk_darwin(v535);
  v463 = &v457 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = sub_10007EBC0(&qword_1006B8680);
  __chkstk_darwin(v475);
  v477 = &v457 - v50;
  v51 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v51 - 8);
  v504 = &v457 - v52;
  v53 = sub_10007EBC0(&qword_1006BB1E0);
  v54 = __chkstk_darwin(v53 - 8);
  v461 = &v457 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v526 = &v457 - v57;
  __chkstk_darwin(v56);
  v532 = &v457 - v58;
  v59 = sub_10007EBC0(&qword_1006B07D0);
  v60 = __chkstk_darwin(v59 - 8);
  v525 = &v457 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v523 = &v457 - v62;
  v63 = sub_10007EBC0(&unk_1006C0220);
  v64 = __chkstk_darwin(v63 - 8);
  v458 = &v457 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __chkstk_darwin(v64);
  v467 = &v457 - v67;
  v68 = __chkstk_darwin(v66);
  v482 = &v457 - v69;
  v70 = __chkstk_darwin(v68);
  v484 = &v457 - v71;
  v72 = __chkstk_darwin(v70);
  v476 = &v457 - v73;
  v74 = __chkstk_darwin(v72);
  v471 = &v457 - v75;
  v76 = __chkstk_darwin(v74);
  v530 = &v457 - v77;
  v78 = __chkstk_darwin(v76);
  v531 = &v457 - v79;
  v80 = __chkstk_darwin(v78);
  v524 = (&v457 - v81);
  v82 = __chkstk_darwin(v80);
  v522 = &v457 - v83;
  __chkstk_darwin(v82);
  v542 = &v457 - v84;
  v538 = type metadata accessor for FMIPDeviceStatus();
  v541 = *(v538 - 1);
  v85 = __chkstk_darwin(v538);
  v510 = &v457 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __chkstk_darwin(v85);
  v519 = &v457 - v88;
  v89 = __chkstk_darwin(v87);
  v91 = &v457 - v90;
  __chkstk_darwin(v89);
  v93 = &v457 - v92;
  v540 = type metadata accessor for FMIPDeviceState();
  v94 = *(v540 - 8);
  v95 = __chkstk_darwin(v540);
  v97 = &v457 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v95);
  v99 = &v457 - v98;
  v100 = FMIPDevice.ownerIdentifier.getter();
  v102 = v101;
  if (v100 == FMIPDefaultOwnerIdentifier.getter() && v102 == v103)
  {
    v502 = 1;
  }

  else
  {
    v502 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isFamilySharedDevice.getter();
  v104 = sub_100264AC8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  v105 = v540;
  v536 = v104;
  v501 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v107 = v94 + 8;
  v106 = *(v94 + 8);
  v106(v97, v105);
  v537 = v106;
  v106(v99, v105);
  if (v529)
  {
    v465 = 0;
  }

  else
  {
    v465 = FMIPDevice.isLocating.getter();
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isLocationCapable.getter();
  v108 = v540;
  v485 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v109 = v537;
  v537(v97, v108);
  v109(v99, v108);
  FMIPDevice.state.getter();
  static FMIPDeviceState.isLocationEnabled.getter();
  v509 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v109(v97, v108);
  v109(v99, v108);
  FMIPDevice.status.getter();
  v110 = *(v541 + 104);
  v508 = v541 + 104;
  v507 = v110;
  v110(v91, enum case for FMIPDeviceStatus.online(_:), v538);
  v111 = sub_100264AC8(&unk_1006C1D40, &type metadata accessor for FMIPDeviceStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v506 = v111;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v543 == v547 && v544 == v548)
  {
    v112 = a1;
    v520 = 1;
  }

  else
  {
    v112 = a1;
    v520 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v113 = v541 + 8;
  v114 = *(v541 + 8);
  v115 = v91;
  v116 = v538;
  v114(v115, v538);
  v541 = v113;
  v505 = v114;
  v114(v93, v116);

  v539 = v112;
  FMIPDevice.state.getter();
  static FMIPDeviceState.isThisDevice.getter();
  v117 = v540;
  v518 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v118 = v537;
  v537(v97, v117);
  v511 = v107;
  v118(v99, v117);
  v119 = v523;
  sub_100007204(v534, v523, &qword_1006B07D0);
  v120 = type metadata accessor for FMIPItem();
  v121 = *(v120 - 8);
  v521 = *(v121 + 48);
  if (v521(v119, 1, v120) == 1)
  {
    sub_100012DF0(v119, &qword_1006B07D0);
    v122 = v533;
    v123 = v522;
    v124 = v535;
    (*(v533 + 56))(v522, 1, 1, v535);
  }

  else
  {
    v123 = v522;
    FMIPItem.location.getter();
    (*(v121 + 8))(v119, v120);
    v122 = v533;
    v126 = v533 + 48;
    v125 = *(v533 + 48);
    v124 = v535;
    if ((v125)(v123, 1, v535) != 1)
    {
      v523 = v126 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v129 = v125;
      v130 = v542;
      (*(v122 + 32))(v542, v123, v124);
      v131 = v130;
      v127 = v129;
      v128 = v523;
      (*(v122 + 56))(v131, 0, 1, v124);
      goto LABEL_18;
    }
  }

  FMIPDevice.bestLocation.getter();
  v127 = *(v122 + 48);
  v128 = (v122 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if ((v127)(v123, 1, v124) != 1)
  {
    sub_100012DF0(v123, &unk_1006C0220);
  }

LABEL_18:
  v132 = v524;
  v524 = v127;
  sub_100007204(v542, v132, &unk_1006C0220);
  if ((v127)(v132, 1, v124) == 1)
  {
    sub_100012DF0(v132, &unk_1006C0220);
    v133 = 0;
  }

  else
  {
    v133 = FMIPLocation.isOld.getter();
    (*(v533 + 8))(v132, v535);
  }

  v134 = v531;
  v135 = v525;
  sub_100007204(v534, v525, &qword_1006B07D0);
  if (v521(v135, 1, v120) == 1)
  {
    sub_100012DF0(v135, &qword_1006B07D0);
    v136 = type metadata accessor for FMIPAddress();
    v137 = v526;
    (*(*(v136 - 8) + 56))(v526, 1, 1, v136);
  }

  else
  {
    v138 = v526;
    FMIPItem.address.getter();
    v139 = v120;
    v137 = v138;
    (*(v121 + 8))(v135, v139);
    v136 = type metadata accessor for FMIPAddress();
    v140 = *(v136 - 8);
    if ((*(v140 + 48))(v138, 1, v136) != 1)
    {
      v141 = v532;
      (*(v140 + 32))(v532, v138, v136);
      (*(v140 + 56))(v141, 0, 1, v136);
      goto LABEL_27;
    }
  }

  v141 = v532;
  FMIPDevice.address.getter();
  type metadata accessor for FMIPAddress();
  if ((*(*(v136 - 8) + 48))(v137, 1, v136) != 1)
  {
    sub_100012DF0(v137, &qword_1006BB1E0);
  }

LABEL_27:
  v142 = v530;
  if (v527)
  {
    v143 = v539;
    if (v520 & v133)
    {
      v144 = 1;
    }

    else
    {
      LODWORD(v534) = v133;
      FMIPDevice.status.getter();
      v145 = v510;
      v507(v510, enum case for FMIPDeviceStatus.pending(_:), v538);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v543 == v547 && v544 == v548)
      {
        v146 = v141;
      }

      else
      {
        v146 = v141;
        LODWORD(v534) = _stringCompareWithSmolCheck(_:_:expecting:)() & v534;
      }

      v147 = v145;
      v148 = v538;
      v149 = v505;
      v505(v147, v538);
      v149(v519, v148);

      v142 = v530;
      v141 = v146;
      v134 = v531;
      v144 = v534;
    }
  }

  else
  {
    v144 = 0;
    v143 = v539;
  }

  if (FMIPDevice.pairingIncomplete.getter())
  {
    v150 = [objc_opt_self() mainBundle];
    v549._object = 0x8000000100589D70;
    v151._object = 0x8000000100589D50;
    v549._countAndFlagsBits = 0xD00000000000002ELL;
    v151._countAndFlagsBits = 0xD00000000000001CLL;
    v152._countAndFlagsBits = 0;
    v152._object = 0xE000000000000000;
    v153 = NSLocalizedString(_:tableName:bundle:value:comment:)(v151, 0, v150, v152, v549);
    countAndFlagsBits = v153._countAndFlagsBits;
    object = v153._object;

    v156 = 0;
    v157 = 0;
    v158 = 0;
    v159 = v542;
    goto LABEL_38;
  }

  v523 = v128;
  if ((v518 & 1) == 0)
  {
    FMIPDevice.state.getter();
    static FMIPDeviceState.isDeviceInPendingRemove.getter();
    v167 = v540;
    v168 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v169 = v537;
    v537(v97, v167);
    v169(v99, v167);
    if (v168)
    {
      v165 = v517;
      FMIPDevice.pendingRemoveUntilTimestamp.getter();
      v159 = v542;
      v170 = v516;
      v171 = v515;
    }

    else
    {
      v171 = v515;
      v165 = v517;
      v170 = v516;
      (*(v515 + 56))(v517, 1, 1, v516);
      v159 = v542;
    }

    v187 = v513;
    v188 = v512;
    sub_100007204(v165, v512, &unk_1006B0000);
    v541 = *(v171 + 48);
    v189 = (v541)(v188, 1, v170);
    v190 = v514;
    if (v189 != 1)
    {
      v194 = v491;
      (*(v171 + 32))(v491, v188, v170);
      v195 = v171;
      v196 = [objc_opt_self() mainBundle];
      v197.value._countAndFlagsBits = 0xD000000000000015;
      v550._countAndFlagsBits = 0xD00000000000001ALL;
      v550._object = 0x800000010058A0D0;
      v198._countAndFlagsBits = 0xD000000000000023;
      v198._object = 0x800000010058A080;
      v197.value._object = 0x800000010058A0B0;
      v199._countAndFlagsBits = 0;
      v199._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v198, v197, v196, v199, v550);

      sub_10007EBC0(&unk_1006B20B0);
      v200 = swift_allocObject();
      *(v200 + 16) = xmmword_100552220;
      v201 = v492;
      static Date.FormatStyle.DateStyle.abbreviated.getter();
      v202 = v495;
      static Date.FormatStyle.TimeStyle.omitted.getter();
      v203 = Date.formatted(date:time:)();
      v205 = v204;
      (*(v497 + 8))(v202, v498);
      (*(v494 + 8))(v201, v496);
      *(v200 + 56) = &type metadata for String;
      *(v200 + 64) = sub_10008EE84();
      *(v200 + 32) = v203;
      *(v200 + 40) = v205;
      countAndFlagsBits = String.init(format:_:)();
      object = v206;

      (*(v195 + 8))(v194, v170);
      v159 = v542;
      sub_100012DF0(v517, &unk_1006B0000);
      v156 = 0;
      v157 = 0;
      v158 = 0;
      v141 = v532;
      goto LABEL_38;
    }

    sub_100012DF0(v188, &unk_1006B0000);
    v191 = v493;
    FMIPDevice.eraseMetadata.getter();
    if ((*(v187 + 48))(v191, 1, v190) == 1)
    {
      sub_100012DF0(v191, &qword_1006B8678);
      v192 = v489;
      v141 = v532;
      v193 = v170;
      goto LABEL_63;
    }

    (*(v187 + 32))(v499, v191, v190);
    v212 = v486;
    FMIPEraseMetadata.status.getter();
    v213 = v500;
    v214 = *(v500 + 104);
    v215 = v487;
    v216 = v488;
    v540 = v500 + 104;
    v538 = v214;
    (v214)(v487, enum case for FMIPActionStatus.eraseCancelled(_:), v488);
    v537 = sub_100264AC8(&unk_1006C1DA0, &type metadata accessor for FMIPActionStatus);
    v217 = dispatch thunk of static Equatable.== infix(_:_:)();
    v218 = *(v213 + 8);
    v218(v215, v216);
    v500 = v213 + 8;
    v218(v212, v216);
    if (v217)
    {
      (*(v187 + 8))(v499, v190);
      v141 = v532;
      v165 = v517;
      v193 = v516;
      v159 = v542;
LABEL_62:
      v192 = v489;
LABEL_63:
      FMIPDevice.wipedTimestamp.getter();
      v228 = (v541)(v192, 1, v193);
      v229 = v490;
      if (v228 == 1)
      {
        v230 = v193;
        sub_100012DF0(v192, &unk_1006B0000);
LABEL_73:
        v254 = v520 ^ 1;
        if (!(v502 & 1 | ((v501 & 1) == 0)) && (v254 & 1) == 0)
        {
          v255 = v482;
          sub_100007204(v159, v482, &unk_1006C0220);
          v256 = v535;
          if (v524(v255, 1, v535) == 1)
          {
            sub_100012DF0(v255, &unk_1006C0220);
            v257 = [objc_opt_self() mainBundle];
            v552._object = 0x8000000100589F70;
            v258._countAndFlagsBits = 0xD000000000000030;
            v258._object = 0x8000000100589F30;
            v552._countAndFlagsBits = 0xD000000000000042;
            v259._countAndFlagsBits = 0;
            v259._object = 0xE000000000000000;
            v260 = NSLocalizedString(_:tableName:bundle:value:comment:)(v258, 0, v257, v259, v552);
            countAndFlagsBits = v260._countAndFlagsBits;
            object = v260._object;

            v261 = &unk_1006B0000;
            v262 = v165;
LABEL_104:
            sub_100012DF0(v262, v261);
            goto LABEL_105;
          }

          v263 = v255;
          v264 = FMIPLocation.location.getter();
          (*(v533 + 8))(v263, v256);
        }

        if (((v485 | v254) & 1) == 0)
        {
          countAndFlagsBits = sub_10022EF6C(0xD000000000000036, 0x8000000100589EF0);
          object = v272;
          goto LABEL_84;
        }

        v265 = v474;
        FMIPDevice.lockedTimestamp.getter();
        v266 = v230;
        if ((v541)(v265, 1, v230) != 1)
        {
          v288 = v165;
          v289 = v468;
          (*(v515 + 32))(v468, v265, v266);
          v290 = [objc_opt_self() mainBundle];
          v291._countAndFlagsBits = 0xD00000000000001BLL;
          v554._object = 0x8000000100589EC0;
          v291._object = 0x8000000100589EA0;
          v554._countAndFlagsBits = 0xD00000000000002DLL;
          v292._countAndFlagsBits = 0;
          v292._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v291, 0, v290, v292, v554);

          sub_10007EBC0(&unk_1006B20B0);
          v293 = swift_allocObject();
          *(v293 + 16) = xmmword_100552220;
          if (v503)
          {
            v294 = sub_100455290();
            isa = Date._bridgeToObjectiveC()().super.isa;
            v296 = [v294 stringFromDate:isa];

            v297 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v299 = v298;
          }

          else
          {
            v369 = v479;
            static FormatStyleCapitalizationContext.middleOfSentence.getter();
            v297 = sub_1000CA838(v369);
            v299 = v370;
            (*(v481 + 8))(v369, v480);
          }

          *(v293 + 56) = &type metadata for String;
          *(v293 + 64) = sub_10008EE84();
          *(v293 + 32) = v297;
          *(v293 + 40) = v299;
          countAndFlagsBits = String.init(format:_:)();
          object = v371;

          (*(v515 + 8))(v289, v516);
          v261 = &unk_1006B0000;
          v262 = v288;
          goto LABEL_104;
        }

        sub_100012DF0(v265, &unk_1006B0000);
        v267 = v467;
        sub_100007204(v159, v467, &unk_1006C0220);
        v268 = v535;
        if (v524(v267, 1, v535) == 1)
        {
          sub_100012DF0(v267, &unk_1006C0220);
          if (v529)
          {
            v269 = "g PEOPLE_LIST_NO_LOCATION_LABEL";
            v270 = 0x800000010057DA00;
            v271 = [objc_opt_self() mainBundle];
LABEL_145:
            v403 = v271;
            v560._object = v270;
            v404._object = (v269 | 0x8000000000000000);
            v560._countAndFlagsBits = 0xD00000000000002ELL;
            v404._countAndFlagsBits = 0xD00000000000001CLL;
            v405._countAndFlagsBits = 0;
            v405._object = 0xE000000000000000;
            v406 = NSLocalizedString(_:tableName:bundle:value:comment:)(v404, 0, v403, v405, v560);
            countAndFlagsBits = v406._countAndFlagsBits;
            object = v406._object;

            goto LABEL_84;
          }

          if ((v520 & 1) == 0)
          {
            v269 = "g DEVICE_LIST_SUBTITLE_HOME";
            v270 = 0x8000000100589D70;
            v271 = [objc_opt_self() mainBundle];
            goto LABEL_145;
          }

          if (!a10)
          {
            v413 = v458;
            sub_100007204(v159, v458, &unk_1006C0220);
            if (v524(v413, 1, v268) == 1)
            {
              sub_100012DF0(v413, &unk_1006C0220);
              v414 = v459;
              (*(v515 + 56))(v459, 1, 1, v230);
              sub_100012DF0(v414, &unk_1006B0000);
              v415 = v165;
              v416 = [objc_opt_self() mainBundle];
              v561._object = 0x8000000100589E30;
              v417._countAndFlagsBits = 0xD000000000000031;
              v417._object = 0x8000000100589DF0;
              v561._countAndFlagsBits = 0xD000000000000043;
              v418._countAndFlagsBits = 0;
              v418._object = 0xE000000000000000;
              v419 = NSLocalizedString(_:tableName:bundle:value:comment:)(v417, 0, v416, v418, v561);
              countAndFlagsBits = v419._countAndFlagsBits;
              object = v419._object;

              v262 = v415;
              v261 = &unk_1006B0000;
              goto LABEL_104;
            }

            v453 = FMIPLocation.location.getter();
            (*(v533 + 8))(v413, v268);
            v454 = [v453 timestamp];

            v455 = v459;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100012DF0(v165, &unk_1006B0000);
            (*(v515 + 56))(v455, 0, 1, v230);
            sub_100012DF0(v455, &unk_1006B0000);
            v158 = 0;
            v156 = 0;
            v157 = 0;
            countAndFlagsBits = 0;
            object = 0xE000000000000000;
            goto LABEL_106;
          }

          v391 = objc_opt_self();

          v392 = [v391 mainBundle];
          v393._countAndFlagsBits = 0xD000000000000010;
          v559._countAndFlagsBits = 0xD000000000000015;
          v559._object = 0x80000001005797A0;
          v393._object = 0x8000000100589E80;
          v394.value._object = 0x8000000100579780;
          v394.value._countAndFlagsBits = 0xD000000000000010;
          v395._countAndFlagsBits = 0;
          v395._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v393, v394, v392, v395, v559);

          sub_10007EBC0(&unk_1006B20B0);
          v396 = swift_allocObject();
          *(v396 + 16) = xmmword_100552220;
          *(v396 + 56) = &type metadata for String;
          *(v396 + 64) = sub_10008EE84();
          *(v396 + 32) = v460;
          *(v396 + 40) = a10;
          countAndFlagsBits = String.init(format:_:)();
          object = v397;

LABEL_84:
          v261 = &unk_1006B0000;
LABEL_103:
          v262 = v165;
          goto LABEL_104;
        }

        v360 = v268;
        v361 = FMIPLocation.location.getter();
        (*(v533 + 8))(v267, v360);
        v362 = [v361 timestamp];

        v363 = v462;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v515 + 32))(v469, v363, v230);
        if (v529)
        {
          v364 = [objc_opt_self() mainBundle];
          v557._object = 0x800000010057DA00;
          v365._object = 0x800000010057D9E0;
          v557._countAndFlagsBits = 0xD00000000000002ELL;
          v365._countAndFlagsBits = 0xD00000000000001CLL;
          v366._countAndFlagsBits = 0;
          v366._object = 0xE000000000000000;
          v367 = NSLocalizedString(_:tableName:bundle:value:comment:)(v365, 0, v364, v366, v557);
          countAndFlagsBits = v367._countAndFlagsBits;
          object = v367._object;

          v368 = v230;
          goto LABEL_157;
        }

        if (!a10)
        {
          v368 = v230;
          if (v503)
          {
            Date.timeIntervalSinceNow.getter();
            if (v407 >= 3600.0)
            {
              v449 = sub_100455280();
              v450 = Date._bridgeToObjectiveC()().super.isa;
              v451 = [v449 stringFromDate:v450];

              countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
              object = v452;

              goto LABEL_157;
            }

            v408 = v479;
            static FormatStyleCapitalizationContext.beginningOfSentence.getter();
            v409 = sub_1000CA844(v408);
          }

          else
          {
            v408 = v479;
            static FormatStyleCapitalizationContext.beginningOfSentence.getter();
            v409 = sub_1000CA838(v408);
          }

          countAndFlagsBits = v409;
          object = v410;
          (*(v481 + 8))(v408, v480);
LABEL_157:
          if (v470)
          {
            v156 = sub_10025F99C(v141, v159, v503 & 1, v464 & 1);
            v157 = v434;
            v436 = v435;
            v438 = v437;
            v439 = [objc_opt_self() mainBundle];
            v440._countAndFlagsBits = 0xD00000000000001ALL;
            v563._object = 0x8000000100584EF0;
            v440._object = 0x8000000100584ED0;
            v563._countAndFlagsBits = 0xD00000000000002CLL;
            v441._countAndFlagsBits = 0;
            v441._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v440, 0, v439, v441, v563);

            sub_10007EBC0(&unk_1006B20B0);
            v442 = swift_allocObject();
            *(v442 + 16) = xmmword_100552210;
            *(v442 + 56) = &type metadata for String;
            v443 = sub_10008EE84();
            *(v442 + 32) = v436;
            *(v442 + 40) = v438;
            *(v442 + 96) = &type metadata for String;
            *(v442 + 104) = v443;
            v141 = v532;
            *(v442 + 64) = v443;
            *(v442 + 72) = countAndFlagsBits;
            *(v442 + 80) = object;
            v444 = v517;
            v159 = v542;
            countAndFlagsBits = String.init(format:_:)();
            object = v445;
            v368 = v516;
          }

          else
          {
            v156 = 0;
            v444 = v165;
            v157 = 0;
          }

          v446 = sub_1004A3F00(v159);
          v447 = objc_opt_self();
          v448 = &selRef_systemRedColor;
          if ((v446 & 1) == 0)
          {
            v448 = &selRef_systemGreenColor;
          }

          v158 = [v447 *v448];
          (*(v515 + 8))(v469, v368);
          sub_100012DF0(v444, &unk_1006B0000);
          goto LABEL_106;
        }

        v368 = v230;
        v398 = v165;
        if (v503)
        {
          Date.timeIntervalSinceNow.getter();
          if (v399 >= 3600.0)
          {
            v420 = sub_100455280();
            v421 = Date._bridgeToObjectiveC()().super.isa;
            v422 = [v420 stringFromDate:v421];

            v411 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v412 = v423;

            goto LABEL_156;
          }

          v400 = v479;
          static FormatStyleCapitalizationContext.beginningOfSentence.getter();
          v401 = sub_1000CA844(v400);
        }

        else
        {
          v400 = v479;
          static FormatStyleCapitalizationContext.beginningOfSentence.getter();
          v401 = sub_1000CA838(v400);
        }

        v411 = v401;
        v412 = v402;
        (*(v481 + 8))(v400, v480);
LABEL_156:
        v424 = [objc_opt_self() mainBundle];
        v425._countAndFlagsBits = 0xD000000000000010;
        v562._countAndFlagsBits = 0xD000000000000015;
        v562._object = 0x80000001005797A0;
        v425._object = 0x8000000100589E80;
        v426.value._object = 0x8000000100579780;
        v426.value._countAndFlagsBits = 0xD000000000000010;
        v427._countAndFlagsBits = 0;
        v427._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v425, v426, v424, v427, v562);

        sub_10007EBC0(&unk_1006B20B0);
        v428 = swift_allocObject();
        *(v428 + 16) = xmmword_100552220;
        *(v428 + 56) = &type metadata for String;
        *(v428 + 64) = sub_10008EE84();
        *(v428 + 32) = v460;
        *(v428 + 40) = a10;
        v429 = String.init(format:_:)();
        v431 = v430;

        v543 = v429;
        v544 = v431;

        v432._countAndFlagsBits = 10;
        v432._object = 0xE100000000000000;
        String.append(_:)(v432);

        v433._countAndFlagsBits = v411;
        v433._object = v412;
        String.append(_:)(v433);

        countAndFlagsBits = v543;
        object = v544;
        v165 = v398;
        goto LABEL_157;
      }

      (*(v171 + 32))(v490, v192, v193);
      Date.timeIntervalSince1970.getter();
      v232 = v231;
      v233 = v484;
      sub_100007204(v159, v484, &unk_1006C0220);
      v234 = v171;
      v235 = v535;
      if (v524(v233, 1, v535) == 1)
      {
        v230 = v193;
        sub_100012DF0(v233, &unk_1006C0220);
        if (v232 <= 0.0)
        {
          (*(v515 + 8))(v229, v193);
LABEL_72:
          v159 = v542;
          goto LABEL_73;
        }
      }

      else
      {
        v236 = FMIPLocation.location.getter();
        (*(v533 + 8))(v233, v235);
        v237 = [v236 timestamp];

        v238 = v483;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSince1970.getter();
        v240 = v239;
        v241 = *(v234 + 8);
        v230 = v193;
        v241(v238, v193);
        if (v240 >= v232)
        {
          v241(v229, v193);
          goto LABEL_72;
        }
      }

      v242 = v230;
      v243 = [objc_opt_self() mainBundle];
      v244._countAndFlagsBits = 0xD00000000000001BLL;
      v551._object = 0x8000000100589FE0;
      v244._object = 0x8000000100589FC0;
      v551._countAndFlagsBits = 0xD00000000000002DLL;
      v245._countAndFlagsBits = 0;
      v245._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v244, 0, v243, v245, v551);

      sub_10007EBC0(&unk_1006B20B0);
      v246 = swift_allocObject();
      *(v246 + 16) = xmmword_100552220;
      v247 = v165;
      if (v503)
      {
        v248 = sub_100455290();
        v249 = Date._bridgeToObjectiveC()().super.isa;
        v250 = [v248 stringFromDate:v249];

        v251 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v253 = v252;
      }

      else
      {
        v300 = v479;
        static FormatStyleCapitalizationContext.middleOfSentence.getter();
        v251 = sub_1000CA838(v300);
        v253 = v301;
        (*(v481 + 8))(v300, v480);
      }

      *(v246 + 56) = &type metadata for String;
      *(v246 + 64) = sub_10008EE84();
      *(v246 + 32) = v251;
      *(v246 + 40) = v253;
      countAndFlagsBits = String.init(format:_:)();
      object = v302;

      (*(v515 + 8))(v229, v242);
      v185 = &unk_1006B0000;
      v186 = v247;
      goto LABEL_47;
    }

    v219 = v478;
    v220 = v499;
    FMIPEraseMetadata.timestamp.getter();
    Date.timeIntervalSince1970.getter();
    v222 = v221;
    v223 = *(v171 + 8);
    v224 = v219;
    v225 = v516;
    v223(v224, v516);
    v226 = v476;
    sub_100007204(v542, v476, &unk_1006C0220);
    v227 = v535;
    if (v524(v226, 1, v535) == 1)
    {
      sub_100012DF0(v226, &unk_1006C0220);
      if (v222 <= 0.0)
      {
LABEL_61:
        (*(v513 + 8))(v220, v514);
        v141 = v532;
        v159 = v542;
        v165 = v517;
        v193 = v516;
        goto LABEL_62;
      }
    }

    else
    {
      v273 = v227;
      v274 = FMIPLocation.location.getter();
      (*(v533 + 8))(v226, v273);
      v275 = [v274 timestamp];

      v276 = v483;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v171 = v515;
      Date.timeIntervalSince1970.getter();
      v278 = v277;
      v223(v276, v225);
      if (v278 >= v222)
      {
        goto LABEL_61;
      }
    }

    v279 = v486;
    FMIPEraseMetadata.status.getter();
    v280 = v487;
    v281 = v488;
    (v538)(v487, enum case for FMIPActionStatus.pending(_:), v488);
    v282 = dispatch thunk of static Equatable.== infix(_:_:)();
    v218(v280, v281);
    v218(v279, v281);
    v283 = [objc_opt_self() mainBundle];
    if (v282)
    {
      v553._object = 0x800000010058A040;
      v284._countAndFlagsBits = 0xD000000000000022;
      v284._object = 0x800000010058A010;
      v553._countAndFlagsBits = 0xD000000000000034;
      v285._countAndFlagsBits = 0;
      v285._object = 0xE000000000000000;
      v286 = NSLocalizedString(_:tableName:bundle:value:comment:)(v284, 0, v283, v285, v553);
      countAndFlagsBits = v286._countAndFlagsBits;
      object = v286._object;

      v141 = v532;
      v287 = v517;
    }

    else
    {
      v349._countAndFlagsBits = 0xD00000000000001BLL;
      v556._object = 0x8000000100589FE0;
      v349._object = 0x8000000100589FC0;
      v556._countAndFlagsBits = 0xD00000000000002DLL;
      v350._countAndFlagsBits = 0;
      v350._object = 0xE000000000000000;
      v351 = NSLocalizedString(_:tableName:bundle:value:comment:)(v349, 0, v283, v350, v556)._countAndFlagsBits;

      sub_10007EBC0(&unk_1006B20B0);
      v352 = swift_allocObject();
      *(v352 + 16) = xmmword_100552220;
      v287 = v517;
      if (v503)
      {
        v353 = sub_100455290();
        v354 = v483;
        FMIPEraseMetadata.timestamp.getter();
        v355 = Date._bridgeToObjectiveC()().super.isa;
        v223(v354, v516);
        v356 = [v353 stringFromDate:v355];

        v357 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v359 = v358;
      }

      else
      {
        v541 = v351;
        v386 = v223;
        v387 = v483;
        FMIPEraseMetadata.timestamp.getter();
        v388 = v479;
        static FormatStyleCapitalizationContext.middleOfSentence.getter();
        v357 = sub_1000CA838(v388);
        v359 = v389;
        (*(v481 + 8))(v388, v480);
        v386(v387, v516);
      }

      *(v352 + 56) = &type metadata for String;
      *(v352 + 64) = sub_10008EE84();
      *(v352 + 32) = v357;
      *(v352 + 40) = v359;
      countAndFlagsBits = String.init(format:_:)();
      object = v390;

      v141 = v532;
    }

    (*(v513 + 8))(v220, v514);
    v185 = &unk_1006B0000;
    v186 = v287;
    goto LABEL_47;
  }

  if ((v509 & 1) == 0)
  {
    v172 = type metadata accessor for FMIPDevice();
    v173 = v143;
    v174 = v172;
    v175 = *(v172 - 8);
    v176 = v504;
    (*(v175 + 16))(v504, v173, v172);
    (*(v175 + 56))(v176, 0, 1, v174);
    v177 = sub_10022F104(0xD000000000000036, 0x800000010058A0F0, v176);
    v179 = v178;
    v181 = v180;
    v183 = v182;

    countAndFlagsBits = sub_10022E0A8(v177, v179, v181, v183, 0, 0);
    object = v184;

    swift_bridgeObjectRelease_n();
    v185 = &unk_1006BBCE0;
    v186 = v176;
LABEL_47:
    sub_100012DF0(v186, v185);
    v158 = 0;
    v156 = 0;
    v157 = 0;
    v159 = v542;
    goto LABEL_106;
  }

  v159 = v542;
  if (!(v502 & 1 | ((v501 & 1) == 0)) && ((v520 ^ 1) & 1) == 0)
  {
    v162 = "_LOCATION_NOT_AVAILABLE";
    v163 = type metadata accessor for FMIPDevice();
    v164 = *(v163 - 8);
    v165 = v504;
    (*(v164 + 16))(v504, v539, v163);
    (*(v164 + 56))(v165, 0, 1, v163);
    v166 = 0xD000000000000035;
LABEL_102:
    v320 = sub_10022F104(v166, v162 | 0x8000000000000000, v165);
    v322 = v321;
    v324 = v323;
    v326 = v325;

    countAndFlagsBits = sub_10022E0A8(v320, v322, v324, v326, 0, 0);
    object = v327;

    swift_bridgeObjectRelease_n();
    v261 = &unk_1006BBCE0;
    goto LABEL_103;
  }

  v207 = v516;
  if ((v144 & 1) == 0)
  {
    goto LABEL_96;
  }

  FMIPDevice.crowdSourcedLocation.getter();
  v208 = *(v475 + 48);
  v209 = v477;
  sub_100007204(v159, v477, &unk_1006C0220);
  sub_100007204(v134, v209 + v208, &unk_1006C0220);
  v210 = v535;
  v211 = v524;
  if (v524(v209, 1, v535) != 1)
  {
    sub_100007204(v209, v142, &unk_1006C0220);
    if (v211(v209 + v208, 1, v210) != 1)
    {
      v303 = v142;
      v304 = v533;
      v305 = v209 + v208;
      v306 = v463;
      (*(v533 + 32))(v463, v305, v210);
      sub_100264AC8(&qword_1006B8688, &type metadata accessor for FMIPLocation);
      v307 = v210;
      v308 = dispatch thunk of static Equatable.== infix(_:_:)();
      v309 = *(v304 + 8);
      v309(v306, v307);
      sub_100012DF0(v531, &unk_1006C0220);
      v309(v303, v307);
      sub_100012DF0(v209, &unk_1006C0220);
      v207 = v516;
      if (v308)
      {
        goto LABEL_96;
      }

LABEL_100:
      v162 = "ITLE_THIS_DEVICE";
      v316 = type metadata accessor for FMIPDevice();
      v317 = *(v316 - 8);
      v165 = v504;
      (*(v317 + 16))(v504, v539, v316);
      (*(v317 + 56))(v165, 0, 1, v316);
      v166 = 0xD000000000000037;
      goto LABEL_102;
    }

    sub_100012DF0(v134, &unk_1006C0220);
    (*(v533 + 8))(v142, v210);
LABEL_87:
    sub_100012DF0(v209, &qword_1006B8680);
    goto LABEL_100;
  }

  sub_100012DF0(v134, &unk_1006C0220);
  if (v211(v209 + v208, 1, v210) != 1)
  {
    goto LABEL_87;
  }

  sub_100012DF0(v209, &unk_1006C0220);
  v207 = v516;
LABEL_96:
  if ((FMIPShowCrowdSourcedLocationOnly.getter() & 1) == 0)
  {
    v162 = "_LOCATION_SERVICES_OFF";
    v318 = type metadata accessor for FMIPDevice();
    v319 = *(v318 - 8);
    v165 = v504;
    (*(v319 + 16))(v504, v539, v318);
    (*(v319 + 56))(v165, 0, 1, v318);
    v166 = 0xD000000000000020;
    goto LABEL_102;
  }

  v310 = v471;
  sub_100007204(v159, v471, &unk_1006C0220);
  v311 = v535;
  if (v524(v310, 1, v535) == 1)
  {
    sub_100012DF0(v310, &unk_1006C0220);
    if (v465)
    {
      v312 = [objc_opt_self() mainBundle];
      v555._object = 0x8000000100589D70;
      v313._object = 0x8000000100589D50;
      v555._countAndFlagsBits = 0xD00000000000002ELL;
      v313._countAndFlagsBits = 0xD00000000000001CLL;
      v314._countAndFlagsBits = 0;
      v314._object = 0xE000000000000000;
      v315 = NSLocalizedString(_:tableName:bundle:value:comment:)(v313, 0, v312, v314, v555);
      countAndFlagsBits = v315._countAndFlagsBits;
      object = v315._object;

LABEL_105:
      v158 = 0;
      v156 = 0;
      v157 = 0;
      goto LABEL_106;
    }

    goto LABEL_100;
  }

  v342 = FMIPLocation.location.getter();
  (*(v533 + 8))(v310, v311);
  v343 = [v342 timestamp];

  v344 = v466;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v515 + 32))(v472, v344, v207);
  if (v503)
  {
    v345 = sub_100455280();
    v346 = Date._bridgeToObjectiveC()().super.isa;
    v347 = [v345 stringFromDate:v346];

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v348;
  }

  else
  {
    v372 = v479;
    static FormatStyleCapitalizationContext.beginningOfSentence.getter();
    countAndFlagsBits = sub_1000CA838(v372);
    object = v373;
    (*(v481 + 8))(v372, v480);
  }

  if (v470)
  {
    v374 = v461;
    FMIPDevice.address.getter();
    v156 = sub_10025F99C(v374, v159, v503 & 1, v464 & 1);
    v157 = v375;
    v377 = v376;
    v379 = v378;
    sub_100012DF0(v374, &qword_1006BB1E0);
    v380 = [objc_opt_self() mainBundle];
    v381._countAndFlagsBits = 0xD00000000000001ALL;
    v558._object = 0x8000000100584EF0;
    v381._object = 0x8000000100584ED0;
    v558._countAndFlagsBits = 0xD00000000000002CLL;
    v382._countAndFlagsBits = 0;
    v382._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v381, 0, v380, v382, v558);

    sub_10007EBC0(&unk_1006B20B0);
    v383 = swift_allocObject();
    *(v383 + 16) = xmmword_100552210;
    *(v383 + 56) = &type metadata for String;
    v384 = sub_10008EE84();
    *(v383 + 32) = v377;
    *(v383 + 40) = v379;
    *(v383 + 96) = &type metadata for String;
    *(v383 + 104) = v384;
    v141 = v532;
    *(v383 + 64) = v384;
    *(v383 + 72) = countAndFlagsBits;
    *(v383 + 80) = object;
    v159 = v542;
    countAndFlagsBits = String.init(format:_:)();
    object = v385;
    v207 = v516;
  }

  else
  {
    v156 = 0;
    v157 = 0;
  }

  (*(v515 + 8))(v472, v207);
  v158 = 0;
LABEL_106:
  My = type metadata accessor for Feature.FindMy();
  v545 = My;
  v546 = sub_100264AC8(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v329 = sub_100008FC0(&v543);
  (*(*(My - 8) + 104))(v329, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(&v543);
  v330 = v524(v159, 1, v535);
  if (My)
  {
    if (v330 == 1 && (v503 & 1) == 0 && (FMIPDevice.hasLocation.getter() & 1) != 0 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) != 0)
    {

      v331 = v473;
      FMIPDevice.itemGroup.getter();
      v332 = type metadata accessor for FMIPItemGroup();
      v333 = *(v332 - 8);
      if ((*(v333 + 48))(v331, 1, v332) == 1)
      {
        sub_100012DF0(v331, &unk_1006BB1C0);
LABEL_119:
        v335 = [objc_opt_self() mainBundle];
        v336 = 0xD000000000000019;
        v456 = 0x8000000100589DC0;
        v337 = 0x8000000100589DA0;
        v338 = 0xD00000000000002BLL;
        goto LABEL_120;
      }

      v339 = FMIPItemGroup.partsAtMultipleLocations.getter();
      v159 = v542;
      (*(v333 + 8))(v331, v332);
      if ((v339 & 1) == 0)
      {
        goto LABEL_119;
      }

      v334 = [objc_opt_self() mainBundle];
LABEL_116:
      v335 = v334;
      v456 = 0x8000000100587260;
      v336 = 0xD00000000000001FLL;
      v337 = 0x8000000100587240;
      v338 = 0xD000000000000031;
LABEL_120:
      v340._countAndFlagsBits = 0;
      v340._object = 0xE000000000000000;
      v341 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v336, 0, v335, v340, *&v338);
      countAndFlagsBits = v341._countAndFlagsBits;
      object = v341._object;
    }
  }

  else if (v330 == 1 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) != 0)
  {

    v334 = [objc_opt_self() mainBundle];
    goto LABEL_116;
  }

LABEL_38:
  sub_100012DF0(v141, &qword_1006BB1E0);
  result = sub_100012DF0(v159, &unk_1006C0220);
  v161 = v528;
  *v528 = v156;
  v161[1] = v157;
  v161[2] = countAndFlagsBits;
  v161[3] = object;
  v161[4] = v158;
  return result;
}

uint64_t sub_1002642B0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v77 = a2;
  v7 = sub_10007EBC0(&unk_1006C2470);
  __chkstk_darwin(v7 - 8);
  v72 = &v69 - v8;
  v9 = type metadata accessor for FMIPPartType();
  v76 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v69 - v13;
  v15 = sub_10007EBC0(&qword_1006B07D0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v69 - v19;
  v21 = type metadata accessor for FMIPItem();
  v22 = *(v21 - 8);
  v78 = v21;
  v79 = v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v69 - v26;
  v71 = a1;
  result = FMIPDevice.name.getter();
  v83 = result;
  v84 = v29;
  if (a4)
  {
    My = type metadata accessor for Feature.FindMy();
    v82[3] = My;
    v82[4] = sub_100264AC8(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
    v31 = sub_100008FC0(v82);
    (*(*(My - 8) + 104))(v31, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100006060(v82);
    if ((My & 1) == 0)
    {
      return v83;
    }

    v70 = a3;
    sub_100007204(v77, v20, &qword_1006B07D0);
    v33 = v78;
    v32 = v79;
    v73 = *(v79 + 48);
    v74 = v79 + 48;
    v34 = v73(v20, 1, v78);
    v75 = v18;
    if (v34 == 1)
    {
      sub_100012DF0(v20, &qword_1006B07D0);
      v35 = v70;
      if (!v70)
      {
        return v83;
      }

      goto LABEL_16;
    }

    (*(v32 + 32))(v27, v20, v33);
    FMIPItem.partType.getter();
    v36 = v76;
    (*(v76 + 104))(v12, enum case for FMIPPartType.case(_:), v9);
    sub_100264AC8(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v82[0] == v80 && v82[1] == v81)
    {
      v37 = *(v36 + 8);
      v37(v12, v9);
      v37(v14, v9);

      v35 = v70;
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v39 = *(v36 + 8);
      v39(v12, v9);
      v39(v14, v9);

      v35 = v70;
      if ((v38 & 1) == 0)
      {
        v43 = v72;
        FMIPItem.partInfo.getter();
        v44 = type metadata accessor for FMIPPartInfo();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(v43, 1, v44) == 1)
        {
          sub_100012DF0(v43, &unk_1006C2470);
          v46 = FMIPDevice.name.getter();
          v48 = v47;
        }

        else
        {
          v46 = FMIPPartInfo.name.getter();
          v48 = v49;
          (*(v45 + 8))(v43, v44);
        }

        v18 = v75;
        (*(v79 + 8))(v27, v78);
        v83 = v46;
        v84 = v48;
        if (!v35)
        {
          return v83;
        }

LABEL_16:
        v82[0] = v35;

        sub_10025C924(v82);
        v50 = v82[0][2];
        if (v50)
        {
          v51 = *(v79 + 16);
          v52 = v82[0] + ((*(v79 + 80) + 32) & ~*(v79 + 80));
          v53 = *(v79 + 72);
          v76 = v79 + 8;
          v70 = v82[0];
          v71 = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v54 = v78;
          v79 += 16;
          v72 = v53;
          v51(v25, v52, v78);
          while (1)
          {
            v56 = FMIPItem.identifier.getter();
            v58 = v57;
            v59 = v51;
            v60 = v25;
            sub_100007204(v77, v18, &qword_1006B07D0);
            if (v73(v18, 1, v54) == 1)
            {
              break;
            }

            v64 = FMIPItem.identifier.getter();
            v66 = v65;
            v67 = v18;
            v63 = *v76;
            (*v76)(v67, v54);
            if (v56 == v64 && v58 == v66)
            {

              v25 = v60;
              v51 = v59;
              v55 = v72;
              goto LABEL_19;
            }

            v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v25 = v60;
            v51 = v59;
            v55 = v72;
            if ((v68 & 1) == 0)
            {
              goto LABEL_23;
            }

LABEL_19:
            v54 = v78;
            v63(v25, v78);
            v52 = &v55[v52];
            --v50;
            v18 = v75;
            if (!v50)
            {
              goto LABEL_28;
            }

            v51(v25, v52, v54);
          }

          sub_100012DF0(v18, &qword_1006B07D0);

          v51 = v59;
          v55 = v72;
LABEL_23:
          v61._countAndFlagsBits = 2108192;
          v61._object = 0xE300000000000000;
          String.append(_:)(v61);
          v62._countAndFlagsBits = FMIPItem.name.getter();
          String.append(_:)(v62);

          v63 = *v76;
          goto LABEL_19;
        }

LABEL_28:

        return v83;
      }
    }

    v40 = FMIPItem.name.getter();
    v42 = v41;
    (*(v79 + 8))(v27, v78);
    v83 = v40;
    v84 = v42;
    v18 = v75;
    if (!v35)
    {
      return v83;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100264AC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t isSolariumEnabled.getter()
{
  v3 = &type metadata for SolariumFeatureFlag;
  v4 = sub_10000BD04();
  v0 = isFeatureEnabled(_:)();
  sub_100006060(v2);
  return v0 & 1;
}

unint64_t sub_100264B64()
{
  result = qword_1006B8690;
  if (!qword_1006B8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B8690);
  }

  return result;
}

void sub_100264BC8()
{
  v1 = v0;
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    sub_10047F330();
  }

  v4 = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  v5 = objc_opt_self();
  v6 = [v5 grayColor];
  [v4 setColor:v6];

  v7 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView];
  [v7 setDataSource:v1];
  [v7 setDelegate:v1];
  [v7 setKeyboardDismissMode:2];
  [v7 setScrollEnabled:0];
  [v7 setAllowsSelection:0];
  v8 = [v5 clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setDirectionalLayoutMargins:{0.0, 1.0, 0.0, 1.0}];
  type metadata accessor for FMEditableMessageTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = String._bridgeToObjectiveC()();
  [v7 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v10];

  v11 = [v1 contentView];
  [v11 addSubview:v7];
}

id sub_100264DE8(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  type metadata accessor for FMEditableMessageTableViewCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectWeakAssign();
    *(v8 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textViewIsEnabled) = 1;
    v9 = v6;
    sub_100372524();

    v10 = *((swift_isaMask & *v2) + 0x268);
    v11 = *(v8 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView);
    v12 = v10();
    v13 = &v11[OBJC_IVAR____TtC6FindMy17FMMessageTextView_maxCharacterLimit];
    *v13 = v12;
    v13[8] = v14 & 1;
  }

  v15 = *(v2 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_message);
  v16 = *(v2 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_message + 8);

  sub_100265504(v15, v16, v17, 0, 1);

  return v6;
}

void sub_100264F8C()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100552F00;
  v3 = [v1 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5];
  *(v2 + 32) = v6;
  v7 = [v1 bottomAnchor];
  v8 = [v0 contentView];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor:v9];
  *(v2 + 40) = v10;
  v11 = [v1 leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-1.0];
  *(v2 + 48) = v14;
  v15 = [v1 trailingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:1.0];
  *(v2 + 56) = v18;
  v19 = [v1 heightAnchor];
  v20 = [v0 view];
  if (v20)
  {
    v21 = v20;
    v22 = objc_opt_self();
    v23 = [v21 heightAnchor];

    v24 = [v19 constraintEqualToAnchor:v23];
    LODWORD(v25) = 1132068864;
    [v24 setPriority:v25];
    *(v2 + 64) = v24;
    sub_10000905C(0, &qword_1006B3A70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100265308(void *a1)
{
  v2 = [a1 text];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v1 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_message);
  *v7 = v4;
  v7[1] = v6;

  sub_100265504(v4, v6, v8, 0, 1);
}