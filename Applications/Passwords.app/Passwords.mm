int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for PMPasswordsApp();
  sub_1000018F0(&qword_10000C170, 255, type metadata accessor for PMPasswordsApp);
  static App.main()();
  return 0;
}

uint64_t type metadata accessor for PMPasswordsApp()
{
  result = qword_10000C270;
  if (!qword_10000C270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000170C()
{
  sub_1000017D8(319, &qword_10000C280, &type metadata accessor for PMUIApplicationDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
  if (v0 <= 0x3F)
  {
    sub_100001860();
    if (v1 <= 0x3F)
    {
      sub_100001938();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000017D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100001860()
{
  if (!qword_10000C288)
  {
    type metadata accessor for AppLaunchActions();
    sub_1000018F0(&qword_10000C290, v0, type metadata accessor for AppLaunchActions);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C288);
    }
  }
}

uint64_t sub_1000018F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_100001938()
{
  if (!qword_10000C298)
  {
    type metadata accessor for PMDebugSettingsManager();
    sub_1000018F0(&unk_10000C2A0, 255, &type metadata accessor for PMDebugSettingsManager);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C298);
    }
  }
}

uint64_t sub_1000019D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PMUIApplicationDelegate();
  sub_1000018F0(&qword_10000C2D8, 255, &type metadata accessor for PMUIApplicationDelegate);
  UIApplicationDelegateAdaptor<>.init(_:)();
  v4 = a2 + *(a1 + 20);
  *v4 = sub_100001D58;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v5 = (a2 + *(a1 + 24));
  swift_getKeyPath();
  sub_1000018F0(&unk_10000C2A0, 255, &type metadata accessor for PMDebugSettingsManager);
  result = ObservedObject.init(dependency:)();
  *v5 = result;
  v5[1] = v7;
  return result;
}

unint64_t sub_100001B24()
{
  result = qword_10000C470;
  if (!qword_10000C470)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10000C470);
  }

  return result;
}

void sub_100001B74()
{
  sub_100001B24();
  if (v0 <= 0x3F)
  {
    sub_100001C40();
    if (v1 <= 0x3F)
    {
      sub_1000017D8(319, &qword_10000C480, &type metadata accessor for PMExtensionCoordinator, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100001C40()
{
  if (!qword_10000C478)
  {
    sub_100005304(&qword_10000C3E0, &qword_100005EA0);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C478);
    }
  }
}

uint64_t sub_100001D10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005304(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001D58()
{
  type metadata accessor for AppLaunchActions();
  v0 = swift_allocObject();
  sub_100004414();
  return v0;
}

uint64_t sub_100001D90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppLaunchActions();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100001DCC@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v78 = sub_100004BF8(&qword_10000C2F8, &qword_100005DE0);
  v1 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v77 = &v61 - v2;
  v74 = sub_100004BF8(&qword_10000C300, &qword_100005DE8);
  v75 = *(v74 - 8);
  v3 = *(v75 + 64);
  __chkstk_darwin(v74);
  v72 = &v61 - v4;
  v76 = sub_100004BF8(&qword_10000C308, &qword_100005DF0);
  v90 = *(v76 - 8);
  v5 = v90[8];
  v6 = __chkstk_darwin(v76);
  v73 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = &v61 - v8;
  v70 = sub_100004BF8(&qword_10000C310, &qword_100005DF8);
  v71 = *(v70 - 8);
  v9 = *(v71 + 64);
  __chkstk_darwin(v70);
  v69 = &v61 - v10;
  v87 = sub_100004BF8(&qword_10000C318, &qword_100005E00);
  v89 = *(v87 - 8);
  v11 = v89[8];
  v12 = __chkstk_darwin(v87);
  v86 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v61 - v14;
  v15 = type metadata accessor for PMPasswordsApp();
  v81 = *(v15 - 8);
  v16 = *(v81 + 8);
  __chkstk_darwin(v15 - 8);
  v17 = type metadata accessor for PMWindowGroupIdentifier();
  v18 = *(v17 - 8);
  v19 = v18[8];
  __chkstk_darwin(v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100004BF8(&qword_10000C320, &qword_100005E08);
  v66 = *(v22 - 8);
  v23 = *(v66 + 64);
  __chkstk_darwin(v22);
  v25 = &v61 - v24;
  v67 = sub_100004BF8(&qword_10000C328, &qword_100005E10);
  v68 = *(v67 - 8);
  v26 = *(v68 + 64);
  __chkstk_darwin(v67);
  v61 = &v61 - v27;
  v28 = sub_100004BF8(&qword_10000C330, &qword_100005E18);
  v29 = *(v28 - 8);
  v84 = v28;
  v85 = v29;
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v83 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v91 = &v61 - v33;
  v34 = v18[13];
  v65 = v18 + 13;
  v80 = v34;
  v62 = v17;
  v34(v21, enum case for PMWindowGroupIdentifier.main(_:), v17);
  PMWindowGroupIdentifier.rawValue.getter();
  v63 = v18[1];
  v64 = v18 + 1;
  v63(v21, v17);
  sub_100002AF0(v82, &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v36 = swift_allocObject();
  sub_100002B54(&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
  sub_100004BF8(&qword_10000C338, &qword_100005E20);
  sub_100001D10(&qword_10000C340, &qword_10000C338, &qword_100005E20);
  WindowGroup.init(id:title:lazyContent:)();
  sub_100002BB8(&off_100008780);
  sub_100002D20(&unk_1000087A0);
  v81 = &protocol conformance descriptor for WindowGroup<A>;
  v37 = sub_100001D10(&qword_10000C348, &qword_10000C320, &qword_100005E08);
  v38 = v61;
  Scene.handlesExternalEvents(matching:)();

  (*(v66 + 8))(v25, v22);
  v93 = v82;
  sub_100004BF8(&qword_10000C350, &qword_100005E28);
  v94 = v22;
  v95 = v37;
  swift_getOpaqueTypeConformance2();
  sub_100001D10(&qword_10000C358, &qword_10000C350, &qword_100005E28);
  v39 = v67;
  Scene.commands<A>(content:)();
  (*(v68 + 8))(v38, v39);
  v40 = v62;
  v80(v21, enum case for PMWindowGroupIdentifier.accountDetails(_:), v62);
  PMWindowGroupIdentifier.rawValue.getter();
  v41 = v63;
  v63(v21, v40);
  v82 = sub_100004BF8(&qword_10000C360, &qword_100005E30);
  sub_100001D10(&qword_10000C368, &qword_10000C360, &qword_100005E30);
  v42 = v69;
  WindowGroup.init<A, B>(id:for:content:)();
  sub_100001D10(&qword_10000C370, &qword_10000C310, &qword_100005DF8);
  v43 = v70;
  Scene.pmDisableSceneRestoration()();
  (*(v71 + 8))(v42, v43);
  v80(v21, enum case for PMWindowGroupIdentifier.wifiDetails(_:), v40);
  PMWindowGroupIdentifier.rawValue.getter();
  v41(v21, v40);
  type metadata accessor for PMWiFiNetworkIdentifier();
  sub_1000018F0(&qword_10000C378, 255, &type metadata accessor for PMWiFiNetworkIdentifier);
  sub_1000018F0(&qword_10000C380, 255, &type metadata accessor for PMWiFiNetworkIdentifier);
  sub_1000018F0(&qword_10000C388, 255, &type metadata accessor for PMWiFiNetworkIdentifier);
  v44 = v72;
  WindowGroup.init<A, B>(id:for:content:)();
  sub_100001D10(&qword_10000C390, &qword_10000C300, &qword_100005DE8);
  v45 = v88;
  v46 = v74;
  Scene.pmDisableSceneRestoration()();
  (*(v75 + 8))(v44, v46);
  v47 = v84;
  v82 = *(v85 + 16);
  v48 = v83;
  v82(v83, v91, v84);
  v81 = v89[2];
  v49 = v86;
  v81(v86, v92, v87);
  v80 = v90[2];
  v50 = v73;
  v51 = v76;
  v80(v73, v45, v76);
  v52 = v77;
  v82(v77, v48, v47);
  v53 = v78;
  v54 = v87;
  v81(&v52[*(v78 + 48)], v49, v87);
  v80(&v52[*(v53 + 64)], v50, v51);
  _TupleScene.init(_:)();
  v55 = v90[1];
  v56 = v51;
  v55(v88, v51);
  v57 = v89[1];
  v57(v92, v54);
  v58 = v84;
  v59 = *(v85 + 8);
  v59(v91, v84);
  v55(v50, v56);
  v57(v86, v54);
  return (v59)(v83, v58);
}

uint64_t sub_100002AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordsApp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordsApp();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100002BB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004BF8(&qword_10000C3D0, &qword_100005E60);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100002D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v34 = a2;
  v33 = sub_100004BF8(&qword_10000C3B0, &qword_100005E48);
  v2 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v29 - v3;
  v5 = sub_100004BF8(&qword_10000C3B8, &qword_100005E50);
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v29 = &v29 - v7;
  v8 = (*(*(sub_100004BF8(&qword_10000C3C0, &qword_100005E58) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v29 - v9;
  v11 = type metadata accessor for PMWindowGroupIdentifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMAppCommands();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for PMWindowGroupIdentifier.main(_:), v11);
  PMWindowGroupIdentifier.rawValue.getter();
  (*(v12 + 8))(v15, v11);
  PMAppCommands.init(mainWindowGroupIdentifier:)();
  v21 = *(v30 + *(type metadata accessor for PMPasswordsApp() + 24) + 8);
  if ((dispatch thunk of PMDebugSettingsManager.shouldShowDebugMenu.getter() & 1) != 0 && (dispatch thunk of PMDebugSettingsManager.hideDebugMenuUntilRelaunch.getter() & 1) == 0 && [objc_opt_self() isInternalInstall])
  {
    v30 = LocalizedStringKey.init(stringLiteral:)();
    type metadata accessor for PMDebugSettingsControls();
    sub_1000018F0(&qword_10000C3C8, 255, &type metadata accessor for PMDebugSettingsControls);
    v22 = v29;
    CommandMenu.init(_:content:)();
    v24 = v31;
    v23 = v32;
    (*(v31 + 32))(v10, v22, v32);
    v25 = v23;
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v24 = v31;
    v25 = v32;
  }

  (*(v24 + 56))(v10, v26, 1, v25);
  v27 = *(v33 + 48);
  (*(v17 + 16))(v4, v20, v16);
  sub_100005528(v10, &v4[v27], &qword_10000C3C0, &qword_100005E58);
  TupleCommandContent.init(_:)();
  sub_1000054C8(v10, &qword_10000C3C0, &qword_100005E58);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_100003234(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100005304(&qword_10000C498, &qword_100005F30);
  type metadata accessor for ModifiedContent();
  sub_100001D10(&qword_10000C4A8, &qword_10000C498, &qword_100005F30);
  return swift_getWitnessTable();
}

uint64_t sub_1000032E0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(type metadata accessor for PMPasswordsApp() - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  sub_100002AF0(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_100002B54(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_100003860;
  a2[1] = v7;
  v8 = sub_100004BF8(&qword_10000C338, &qword_100005E20);
  v9 = *(v8 + 36);
  *(a2 + v9) = swift_getKeyPath();
  sub_100004BF8(&qword_10000C3D8, &qword_100005E98);
  swift_storeEnumTagMultiPayload();
  v10 = (a2 + *(v8 + 40));
  [objc_allocWithZone(type metadata accessor for PMPasswordManagerState()) init];
  v11 = type metadata accessor for PMExtensionCoordinator();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v16[1] = PMExtensionCoordinator.init(appState:)();
  result = State.init(wrappedValue:)();
  v15 = v16[3];
  *v10 = v16[2];
  v10[1] = v15;
  return result;
}

uint64_t sub_100003494@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *(type metadata accessor for PMPasswordsApp() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000032E0(v4, a1);
}

uint64_t sub_100003508@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v4 = sub_100004BF8(&qword_10000C3E0, &qword_100005EA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v36 - v7;
  v9 = *(a1 + 16);
  v10 = a1;
  v36 = a1;
  v11 = *(v9 - 8);
  v38 = v9;
  v39 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v6);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005304(&qword_10000C498, &qword_100005F30);
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v36 - v21;
  v37 = v2;
  v24 = *v2;
  v23 = *(v2 + 8);
  v25 = (v2 + *(v10 + 40));
  v27 = *v25;
  v26 = v25[1];
  v44 = v27;
  v45 = v26;
  sub_100004BF8(&qword_10000C4A0, &qword_100005F38);
  State.wrappedValue.getter();
  v24(v43);

  swift_getKeyPath();
  v28 = v36;
  v29 = v37 + *(v36 + 36);
  sub_100003994(v8);
  v30 = *(v28 + 24);
  v31 = v38;
  View.environment<A>(_:_:)();

  sub_1000054C8(v8, &qword_10000C3E0, &qword_100005EA0);
  (*(v39 + 8))(v14, v31);
  v32 = sub_100001D10(&qword_10000C4A8, &qword_10000C498, &qword_100005F30);
  v41 = v30;
  v42 = v32;
  swift_getWitnessTable();
  v33 = v16[2];
  v33(v22, v20, v15);
  v34 = v16[1];
  v34(v20, v15);
  v33(v40, v22, v15);
  return (v34)(v22, v15);
}

uint64_t sub_100003860(uint64_t a1)
{
  v3 = *(type metadata accessor for PMPasswordsApp() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000038E0(a1, v4);
}

uint64_t sub_1000038E0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(type metadata accessor for PMAccountsNavigationStyle() - 8) + 64);
  __chkstk_darwin();
  PMExtensionCoordinator.appState.getter();
  v4 = *(a2 + *(type metadata accessor for PMPasswordsApp() + 24) + 8);
  dispatch thunk of PMDebugSettingsManager.accountsNavigationStyle.getter();
  return PMPasswordsPaneView.init(appState:style:)();
}

uint64_t sub_100003994@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004BF8(&qword_10000C3D8, &qword_100005E98);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100005528(v2, &v16 - v11, &qword_10000C3D8, &qword_100005E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100003B64(v12, a1);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100003B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004BF8(&qword_10000C3E0, &qword_100005EA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004BF8(&qword_10000C210, &qword_100005CE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100003CA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004BF8(&qword_10000C210, &qword_100005CE8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100003D68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003DA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003DD8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004BF8(qword_10000C3E8, &qword_100005EA8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_100003E94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004BF8(qword_10000C3E8, &qword_100005EA8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100003F4C(uint64_t *a1)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 1);
  sub_100004BF8(&qword_10000C3A8, &qword_100005E40);
  Binding.projectedValue.getter();
  v1 = type metadata accessor for PMAppAccountDetailsWindowModel();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PMAppAccountDetailsWindowModel.init(accountID:)();
  type metadata accessor for PMAppDetailsWindowView();
  sub_1000018F0(&qword_10000C3A0, 255, &type metadata accessor for PMAppDetailsWindowView);
  NavigationStack.init<>(root:)();
}

uint64_t sub_100004064(uint64_t a1)
{
  v2 = *(*(sub_100004BF8(&qword_10000C398, &qword_100005E38) - 8) + 64);
  v3 = (__chkstk_darwin)();
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  sub_100005528(a1, &v10 - v4, &qword_10000C398, &qword_100005E38);
  Binding.projectedValue.getter();
  v6 = type metadata accessor for PMWiFiDetailsWindowModel();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  PMWiFiDetailsWindowModel.init(networkID:)();
  type metadata accessor for PMAppDetailsWindowView();
  sub_1000018F0(&qword_10000C3A0, 255, &type metadata accessor for PMAppDetailsWindowView);
  NavigationStack.init<>(root:)();

  return sub_1000054C8(v5, &qword_10000C398, &qword_100005E38);
}

uint64_t sub_1000041F0(uint64_t a1, unsigned int *a2)
{
  v4 = *(*(type metadata accessor for PMAppDetailsWindowView.Detail() - 8) + 64);
  __chkstk_darwin();
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a1;
  (*(v7 + 104))(v6, *a2);

  return PMAppDetailsWindowView.init(model:)();
}

uint64_t sub_100004344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_100004BF8(&qword_10000C3E0, &qword_100005EA0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - v9;
  sub_100005528(a1, &v12 - v9, &qword_10000C3E0, &qword_100005EA0);
  return a5(v10);
}

uint64_t sub_100004414()
{
  v1 = (*(*(sub_100004BF8(&qword_10000C2E0, &qword_100005DA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v9 - v2;
  v4 = [objc_opt_self() sharedLogger];
  [v4 didLaunchPasswordsApp];

  if ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled])
  {
    v5 = [objc_allocWithZone(PMSignInWithAppleController) init];
    [v5 performHealthCheckInBackground];
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1000048D4(0, 0, v3, &unk_100005DB8, v7);

  return v0;
}

uint64_t sub_1000045A8()
{
  v1 = [objc_allocWithZone(_ASAgentPeriodicMaintenanceActivity) initRegisteringActivityHandler:0];
  v0[18] = v1;
  v2 = [objc_opt_self() sharedStore];
  isa = [v2 savedAccounts];

  if (!isa)
  {
    sub_1000051AC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v0[19] = isa;
  v0[2] = v0;
  v0[3] = sub_10000475C;
  v4 = swift_continuation_init();
  v0[17] = sub_100004BF8(&qword_10000C2F0, &qword_100005DD8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000048A0;
  v0[13] = &unk_100008828;
  v0[14] = v4;
  [v1 performPasskeyAvailabilityCheckForDomainsInSavedAccounts:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000475C()
{
  v2 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10000483C, 0, 0);
}

uint64_t sub_10000483C()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000048A0(uint64_t a1)
{
  v1 = *sub_1000052B8((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_1000048D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100004BF8(&qword_10000C2E0, &qword_100005DA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100005528(a3, v26 - v10, &qword_10000C2E0, &qword_100005DA8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000054C8(v11, &qword_10000C2E0, &qword_100005DA8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1000054C8(a3, &qword_10000C2E0, &qword_100005DA8);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000054C8(a3, &qword_10000C2E0, &qword_100005DA8);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100004BF8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004C54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = PMDependencyStore.debugSettingsManager.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100004C80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return PMDependencyStore.debugSettingsManager.setter();
}

uint64_t sub_100004CAC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100004D58;

  return sub_10000458C();
}

uint64_t sub_100004D58()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004E4C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004F44;

  return v7(a1);
}

uint64_t sub_100004F44()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000503C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005590;

  return sub_100004E4C(a1, v5);
}

uint64_t sub_1000050F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100004D58;

  return sub_100004E4C(a1, v5);
}

unint64_t sub_1000051AC()
{
  result = qword_10000C2E8;
  if (!qword_10000C2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C2E8);
  }

  return result;
}

uint64_t sub_100005208(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000526C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_1000052B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005304(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005394()
{
  v1 = (type metadata accessor for PMPasswordsApp() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_100004BF8(&qword_10000C210, &qword_100005CE8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  sub_1000052FC();
  v10 = *(v0 + v3 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000054C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004BF8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005528(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004BF8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}