uint64_t sub_1000352A0()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000352D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002020C;

  return sub_100031310(a1, v8);
}

uint64_t sub_1000353B0()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 6);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);
  v9 = *&v0[v7];

  return _swift_deallocObject(v0, v7 + 8, v5 | 7);
}

uint64_t sub_1000354A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[5];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = v2[6];

  return sub_100030564(a1, v10, v2 + v8, a2);
}

uint64_t sub_100035568()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  updated = type metadata accessor for SceneUpdateContext();
  v4 = *(updated - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v17 = v5 | v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v6, updated);
  v14 = *(v0 + v7);

  (*(v9 + 8))(v0 + v11, AssociatedTypeWitness);
  v15 = *(v0 + v12);

  sub_10000519C((v0 + v13));

  return _swift_deallocObject(v0, v13 + 40, v17 | 7);
}

uint64_t sub_100035718(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(type metadata accessor for SceneUpdateContext() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v7);
  v12 = *(v1 + v10);

  return sub_1000308E4(a1, v1 + v6, v11, v1 + v9, v12, v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_100035874(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002020C;

  return sub_100031BB8(a1);
}

uint64_t sub_100035928()
{
  sub_10000519C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100035960(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_100034BFC(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_100070020, &qword_10004F160, &type metadata accessor for PreviewGroupMetadata.Section);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for PreviewGroupMetadata.Section();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100035AB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100035AF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002020C;

  return sub_1000398CC(a1, v4, v5, v6);
}

uint64_t sub_100035BA8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035BE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002020C;

  return sub_100034950(a1, v5);
}

uint64_t sub_100035CB0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100035CF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001D424;

  return sub_10002E980(a1, v4, v5, v7, v6);
}

uint64_t sub_100035DB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100035DF4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100035E08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100035E50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100035FF8()
{
  result = qword_100070010;
  if (!qword_100070010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070010);
  }

  return result;
}

uint64_t sub_10003604C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100036094(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006FFB8, &qword_10004F118);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100036134(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  sub_10000E678(a1, a1[3]);
  v4 = dispatch thunk of CanvasContentHost.viewController.getter();
  sub_1000364E0(v4);

  v5 = dispatch thunk of CanvasContentHost.viewController.getter();
  v6 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating;
  v7 = *(v2 + OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating);

  if (v7)
  {
    v8 = v5 == v7;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = *(v2 + v6);
    v14 = v9;
    v10 = dispatch thunk of CanvasContentHost.viewController.getter();
    v11 = *(v2 + v6);
    *(v2 + v6) = v10;

    if (v9)
    {
      v12 = *(v2 + OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active);
      if (v12)
      {
        v13 = v9 == v12;
      }

      else
      {
        v13 = 0;
      }

      if (!v13)
      {
        sub_1000366D8(v14);
      }
    }
  }
}

void sub_100036254(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  sub_10000E678(a1, a1[3]);
  v4 = dispatch thunk of CanvasContentHost.viewController.getter();
  sub_1000364E0(v4);

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = dispatch thunk of CanvasContentHost.viewController.getter();
  v8 = [v7 view];

  if (!v8)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v6 bringSubviewToFront:v8];

  v9 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay;
  v10 = *&v2[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay];
  if (v10)
  {
    v11 = v10;
    PreviewDebugOverlay.bringToFront()();

    v12 = *&v2[v9];
    if (v12)
    {
      v13 = v12;
      PreviewDebugOverlay.contentsUpdated()();
    }
  }

  v14 = dispatch thunk of CanvasContentHost.viewController.getter();
  v15 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active;
  v16 = *&v2[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active];

  if (!v16 || v14 != v16)
  {
    v17 = *&v2[v15];
    v21 = v17;
    v18 = dispatch thunk of CanvasContentHost.viewController.getter();
    v19 = *&v2[v15];
    *&v2[v15] = v18;

    if (v17)
    {
      v20 = *&v2[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating];
      if (!v20 || v17 != v20)
      {
        sub_1000366D8(v21);
      }
    }
  }
}

void sub_1000364E0(void *a1)
{
  v3 = [a1 parentViewController];
  if (v3)
  {
    v4 = v3;

    if (v4 == v1)
    {
      return;
    }
  }

  [v1 addChildViewController:a1];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [a1 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v6 addSubview:v7];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [a1 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  [v10 sendSubviewToBack:v11];

  v13 = [a1 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v1 view];
  if (!v15)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v14 setFrame:{v18, v20, v22, v24}];

  [a1 didMoveToParentViewController:v1];
}

void sub_1000366D8(void *a1)
{
  v3 = [a1 parentViewController];
  if (v3)
  {
    v4 = v3;

    if (v4 == v1)
    {
      [a1 willMoveToParentViewController:0];
      v5 = [a1 view];
      if (v5)
      {
        v6 = v5;
        [v5 removeFromSuperview];

        [a1 removeFromParentViewController];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1000367D0()
{
  v1 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_forcedOrientation;
  swift_beginAccess();
  if (!(*(v2 + 48))(v0 + v9, 1, v1))
  {
    (*(v2 + 16))(v8, v0 + v9, v1);
    (*(v2 + 32))(v6, v8, v1);
    v10 = (*(v2 + 88))(v6, v1);
    if (v10 != enum case for PreviewPreferences.InterfaceOrientation.portrait(_:))
    {
      if (v10 == enum case for PreviewPreferences.InterfaceOrientation.portraitUpsideDown(_:))
      {
        return 4;
      }

      if (v10 == enum case for PreviewPreferences.InterfaceOrientation.landscapeLeft(_:))
      {
        return 16;
      }

      if (v10 == enum case for PreviewPreferences.InterfaceOrientation.landscapeRight(_:))
      {
        return 8;
      }

      (*(v2 + 8))(v6, v1);
    }
  }

  return 30;
}

void sub_1000369C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for PreviewDebugOverlay.AlignmentEdge();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLoad");
  (*(v4 + 104))(v7, enum case for PreviewDebugOverlay.AlignmentEdge.bottom(_:), v3);
  if ([v1 view])
  {
    v8 = objc_allocWithZone(type metadata accessor for PreviewDebugOverlay());
    v9 = PreviewDebugOverlay.init(edge:parent:)();
    v10 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay;
    v11 = *&v1[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay];
    *&v1[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay] = v9;

    v12 = *&v1[v10];
    if (v12)
    {
      v13 = &v1[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_sceneIdentifier];
      v14 = *&v1[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_sceneIdentifier];
      v15 = *(v13 + 1);
      v16 = v12;

      PreviewDebugOverlay.identifier.setter();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100036B90()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewWillLayoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating];
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v15 = *&v1[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active];
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = [v15 view];
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = v16;
  v18 = [v1 view];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  [v18 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v17 setFrame:{v21, v23, v25, v27}];
LABEL_9:
  v28 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay;
  v29 = *&v1[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v31 = [v1 view];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v32 = v31;
  [v31 bounds];

  PreviewDebugOverlay.size.setter();
  v33 = *&v1[v28];
  if (v33)
  {
    v34 = v33;
    PreviewDebugOverlay.bringToFront()();
  }
}

uint64_t type metadata accessor for CanvasViewController()
{
  result = qword_100070080;
  if (!qword_100070080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100036ED0()
{
  sub_100036F78();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100036F78()
{
  if (!qword_100070090)
  {
    type metadata accessor for PreviewPreferences.InterfaceOrientation();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100070090);
    }
  }
}

uint64_t sub_100036FD0(uint64_t a1)
{
  v2 = sub_100004C60(&qword_100070098, &unk_10004F238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100037184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

id sub_100037238(void *a1)
{
  v2 = [a1 role];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v3 == 0xD000000000000017 && 0x8000000100054D50 == v5;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = [a1 role];
    v8 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v7];

    type metadata accessor for LocalSceneDelegate();
  }

  else
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v10 == v5)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v13 = [a1 role];
        v14 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v13];

        type metadata accessor for DeviceMainSceneDelegate();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v8 = v14;
        [v8 setDelegateClass:ObjCClassFromMetadata];
        v16 = String._bridgeToObjectiveC()();
        v17 = [objc_opt_self() storyboardWithName:v16 bundle:0];

        [v8 setStoryboard:v17];
        return v8;
      }
    }

    v18 = [a1 role];
    v8 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v18];

    type metadata accessor for InjectedSceneDelegate();
  }

  [v8 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v8;
}

unint64_t sub_1000374B8()
{
  result = qword_10006F428;
  if (!qword_10006F428)
  {
    type metadata accessor for PreviewShellService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F428);
  }

  return result;
}

uint64_t sub_100037534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v44 = a7;
  v47 = a4;
  v48 = a6;
  v41 = a2;
  v42 = a5;
  v46 = a3;
  v39 = a1;
  v8 = type metadata accessor for AgentUpdate.Context();
  v50 = *(v8 - 8);
  v51 = v8;
  v45 = *(v50 + 64);
  __chkstk_darwin(v8);
  v49 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PropertyList();
  v37 = v10;
  v11 = *(v10 - 8);
  v40 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v13;
  v14 = type metadata accessor for PreviewAgentConnector();
  v34 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v36 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ContentKey();
  v17 = *(v33 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v33);
  v35 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v7 + 48);
  (*(v17 + 16))();
  (*(v15 + 16))(v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v14);
  v32[0] = v11;
  (*(v11 + 16))(v13, v42, v10);
  v19 = v50;
  (*(v50 + 16))(v49, v44, v51);
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = (v18 + *(v15 + 80) + v20) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 16) & ~*(v11 + 80);
  v44 = (v40 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v19 + 80) + v44 + 8) & ~*(v19 + 80);
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 16) = v32[1];
  (*(v17 + 32))(v25 + v20, v35, v26);
  (*(v15 + 32))(v25 + v21, v36, v34);
  v27 = (v25 + v22);
  v28 = v47;
  *v27 = v46;
  v27[1] = v28;
  (*(v32[0] + 32))(v25 + v23, v38, v37);
  v29 = v49;
  *(v25 + v44) = v48;
  (*(v50 + 32))(v25 + v24, v29, v51);

  default argument 0 of FutureSerialQueue.enqueue<A>(priority:makeFuture:)();
  v30 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)();

  return v30;
}

uint64_t sub_100037978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76 = a8;
  v75 = a7;
  v74 = a6;
  v73 = a3;
  v82 = type metadata accessor for ExecutionLane();
  v78 = *(v82 - 8);
  v12 = *(v78 + 64);
  __chkstk_darwin(v82);
  v77 = &v67[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = type metadata accessor for ContentKey();
  v70 = *(v71 - 1);
  v14 = *(v70 + 64);
  __chkstk_darwin(v71);
  v16 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = type metadata accessor for Logger();
  v72 = *(v79 - 8);
  v17 = *(v72 + 64);
  __chkstk_darwin(v79);
  v19 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for Callsite();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v67[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *(a1 + 56);
  swift_retain_n();
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v21 + 8))(v24, v20);
  v84 = a4;
  v85 = a5;
  v86 = v25;
  swift_beginAccess();
  sub_100004C60(&qword_10006ECB0, &qword_10004DB48);
  sub_10000DEB8();
  KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
  swift_endAccess();
  sub_10000E808(v91, v88);
  v27 = v25[3];
  v26 = v25[4];
  updated = type metadata accessor for CanvasUpdater.UpdateDelegate(0);
  v29 = *(updated + 48);
  v30 = *(updated + 52);
  v83 = updated;
  swift_allocObject();
  swift_unknownObjectRetain();

  v80 = sub_100012360(v88, v27, v26, sub_100039194, a1);
  swift_unknownObjectRelease();
  v81 = a1;

  if (v25[2])
  {
    v88[0] = v25[2];
    sub_100039348(&qword_10006ECC0, 255, type metadata accessor for CanvasUpdater.UpdateDelegate);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
    v31 = v25[2];
  }

  v25[2] = v80;

  v32 = v19;
  static Logger.uv.getter();
  v33 = v70;
  v34 = v16;
  v35 = v71;
  (*(v70 + 16))(v16, a2, v71);
  sub_10000E808(v91, v88);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v69 = v32;
    v87 = v39;
    *v38 = 136446722;
    v68 = v37;
    v40 = v34;
    v41 = v25[3];
    v42 = v25[4];
    swift_getObjectType();
    v43 = *(*(v42 + 8) + 8);
    v44 = dispatch thunk of PreviewShellScene.identifier.getter();
    v46 = sub_10000E0C0(v44, v45, &v87);

    *(v38 + 4) = v46;
    *(v38 + 12) = 2082;
    sub_100039348(&qword_10006ECD8, 255, &type metadata accessor for ContentKey);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    (*(v33 + 8))(v40, v35);
    v50 = sub_10000E0C0(v47, v49, &v87);

    *(v38 + 14) = v50;
    *(v38 + 22) = 2082;
    v51 = v90;
    sub_10000E678(v88, v89);
    v52 = *(v51 + 8);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    sub_10000519C(v88);
    v56 = sub_10000E0C0(v53, v55, &v87);

    *(v38 + 24) = v56;
    _os_log_impl(&_mh_execute_header, v36, v68, "Canvas %{public}s performing update for %{public}s using %{public}s", v38, 0x20u);
    swift_arrayDestroy();

    (*(v72 + 8))(v69, v79);
  }

  else
  {

    (*(v33 + 8))(v34, v35);
    (*(v72 + 8))(v32, v79);
    sub_10000519C(v88);
  }

  sub_100004C60(&qword_10006ECC8, &unk_10004DB50);
  v79 = static Future.create(dsoHandle:file:line:column:function:)();
  v72 = v57;
  sub_10000E678(v91, v91[3]);
  v58 = swift_allocObject();
  v60 = v80;
  v59 = v81;
  v58[2] = sub_10003918C;
  v58[3] = v59;
  v58[4] = v60;
  v58[5] = v25;
  v89 = v83;
  v71 = type metadata accessor for CanvasUpdater.UpdateDelegate;
  v90 = sub_100039348(&qword_10006ECD0, 255, type metadata accessor for CanvasUpdater.UpdateDelegate);
  v88[0] = v60;
  swift_retain_n();

  v75 = dispatch thunk of CanvasContentProviderBox.performUpdate(using:providerPromise:updatePayload:controlStates:agentContext:makeSceneContext:delegate:)();

  sub_10000519C(v88);
  v61 = swift_allocObject();
  *(v61 + 16) = v25;
  *(v61 + 24) = v60;

  v62 = v77;
  static ExecutionLane.any.getter();
  type metadata accessor for SceneLayout();
  v76 = Future.tryThen<A>(dsoHandle:file:line:column:function:on:transform:)();

  v78 = *(v78 + 8);
  (v78)(v62, v82);
  sub_100004C60(&qword_10006E8F8, &qword_10004D790);
  static Future<A>.zip<A, B>(dsoHandle:file:line:column:function:_:_:)();
  static ExecutionLane.any.getter();
  type metadata accessor for CanvasUpdater.UpdateResult(0);
  Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

  v63 = v82;
  v64 = v78;
  (v78)(v62, v82);
  v88[0] = v60;
  sub_100039348(&qword_10006ECC0, 255, v71);

  Invalidatable.onInvalidation(_:)();

  sub_10000519C(v91);
  static ExecutionLane.main.getter();
  type metadata accessor for PropertyList();
  v65 = Future.tryThen<A>(dsoHandle:file:line:column:function:on:transform:)();

  v64(v62, v63);
  return v65;
}

uint64_t sub_10003853C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 24);
  sub_100036134(a1);
  v5 = enum case for SceneUpdateTiming.async(_:);
  updated = type metadata accessor for SceneUpdateTiming();
  v7 = *(*(updated - 8) + 104);

  return v7(a3, v5, updated);
}

char *sub_1000385B8(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionLane();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for CanvasUpdateOutput();
  v6 = *(updated - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(updated);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for CanvasUpdater.UpdateResult(0);
  v13 = *(v6 + 16);
  v13(v11, a1 + *(v12 + 20), updated);
  v14 = CanvasUpdateOutput.makeStaticOutput.getter();
  v15 = v24;
  v14();
  v24 = v15;
  if (v15)
  {
    (*(v6 + 8))(v11, updated);
  }

  else
  {

    v13(v9, v11, updated);
    v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = swift_allocObject();
    (*(v6 + 32))(v17 + v16, v9, updated);
    v18 = v21;
    static ExecutionLane.any.getter();
    type metadata accessor for PropertyList();
    v9 = Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

    (*(v22 + 8))(v18, v23);
    (*(v6 + 8))(v11, updated);
  }

  return v9;
}

uint64_t sub_1000388A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = type metadata accessor for PropertyList();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChromeType();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for StaticPreviewReply();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  CanvasUpdateOutput.staticChromeType.getter();
  CanvasUpdateOutput.controlDescriptions.getter();
  CanvasUpdateOutput.controlStates.getter();
  (*(v4 + 16))(v7, a1, v3);
  StaticPreviewReply.init(chromeType:controlDescriptions:controlStates:contentPayload:)();
  sub_100039348(&qword_100070250, 255, &type metadata accessor for StaticPreviewReply);
  PropertyListRepresentable.propertyList.getter();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100038B04()
{
  if (*(v0 + 64))
  {
    v0 = *(v0 + 64);
  }

  else
  {
    *(v0 + 64) = v0;
    swift_retain_n();
  }

  return v0;
}

uint64_t sub_100038B4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_100038CDC(uint64_t a1, uint64_t a2)
{
  result = sub_100039348(&qword_10006F6E8, a2, type metadata accessor for StaticPreviewCanvas);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100038D34()
{
  v24 = type metadata accessor for ContentKey();
  v1 = *(v24 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v23 = type metadata accessor for PreviewAgentConnector();
  v4 = *(v23 - 8);
  v5 = *(v4 + 80);
  v21 = (((v2 + 24) & ~v2) + v3 + v5) & ~v5;
  v17 = (*(v4 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = type metadata accessor for PropertyList();
  v6 = *(v22 - 8);
  v7 = *(v6 + 80);
  v19 = (v17 + v7 + 16) & ~v7;
  v8 = (*(v6 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = type metadata accessor for AgentUpdate.Context();
  v9 = *(v20 - 8);
  v10 = *(v9 + 80);
  v11 = (v8 + v10 + 8) & ~v10;
  v18 = *(v9 + 64);
  v12 = v2 | v5 | v7 | v10;
  v13 = *(v0 + 16);

  (*(v1 + 8))(v0 + ((v2 + 24) & ~v2), v24);
  (*(v4 + 8))(v0 + v21, v23);
  v14 = *(v0 + v17 + 8);

  (*(v6 + 8))(v0 + v19, v22);
  v15 = *(v0 + v8);

  (*(v9 + 8))(v0 + v11, v20);

  return _swift_deallocObject(v0, v11 + v18, v12 | 7);
}

uint64_t sub_100038FD8()
{
  v1 = *(type metadata accessor for ContentKey() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for PropertyList() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for AgentUpdate.Context() - 8);
  v11 = *(v0 + 16);
  v12 = *(v0 + v6);
  v13 = *(v0 + v6 + 8);
  v14 = *(v0 + v9);
  v15 = v0 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80));

  return sub_100037978(v11, v0 + v2, v0 + v5, v12, v13, v0 + v8, v14, v15);
}

uint64_t sub_1000391B8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100039200()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039240()
{
  updated = type metadata accessor for CanvasUpdateOutput();
  v2 = *(updated - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, updated);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000392C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for CanvasUpdateOutput() - 8) + 80);

  return sub_1000388A8(a1, a2);
}

uint64_t sub_100039348(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100039390(int a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SceneSettingsPolicy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Callsite();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v12 + 8))(v15, v11);
  v16 = static ProcessUtilities.processHandle(for:)();
  if (v16 && (v17 = v16, v18 = RBSProcessHandle.applicationProcess.getter(), v17, v18))
  {
    v19 = a2;
    v20 = [v18 identity];
    v21 = AgentSceneConfiguration.sceneSpecification.getter();
    v22 = [v21 specification];

    v23 = objc_opt_self();
    v44 = v22;
    v43 = [v23 parametersForSpecification:v22];
    v45 = v19;
    AgentSceneConfiguration.previewShellScene.getter();
    (*(v7 + 16))(v10, a3, v6);
    v24 = (*(v7 + 88))(v10, v6);
    if (v24 == enum case for SceneSettingsPolicy.custom(_:))
    {
      swift_unknownObjectRelease();
      (*(v7 + 96))(v10, v6);
      v25 = *v10;
    }

    else
    {
      v29 = v24;
      v42 = v20;
      v30 = v18;
      v31 = enum case for SceneSettingsPolicy.mirrorParent(_:);
      swift_getObjectType();
      v25 = dispatch thunk of PreviewShellScene.sceneSettings.getter();
      swift_unknownObjectRelease();
      if (v29 != v31)
      {
        (*(v7 + 8))(v10, v6);
      }

      v18 = v30;
      v20 = v42;
    }

    v32 = [v25 settings];

    v33 = [v32 copyResettingInterruptionPolicy];
    v34 = v43;
    [v43 setSettings:v33];

    v35 = [objc_allocWithZone(FBSMutableSceneDefinition) init];
    AgentSceneConfiguration.sceneIdentifier.getter();
    v36 = String._bridgeToObjectiveC()();

    v37 = [objc_opt_self() identityForIdentifier:v36];

    [v35 setIdentity:v37];
    v38 = [objc_opt_self() identityForProcessIdentity:v20];
    [v35 setClientIdentity:v38];

    v39 = v44;
    [v35 setSpecification:v44];
    v40 = [objc_opt_self() sharedInstance];
    v41 = [v40 createSceneWithDefinition:v35 initialParameters:v34];

    return v41;
  }

  else
  {
    v26 = type metadata accessor for ProcessError();
    sub_10003A294(&qword_10006E8D8, &type metadata accessor for ProcessError);
    swift_allocError();
    *v27 = a1;
    (*(*(v26 - 8) + 104))(v27, enum case for ProcessError.noProcessForPid(_:), v26);
    return swift_willThrow();
  }
}

uint64_t sub_1000398CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[3] = a4;
  v6 = *a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v4[2] = a4;
  v7 = async function pointer to ConcurrentInvalidatable.invalidation.getter[1];
  v8 = swift_task_alloc();
  v4[6] = v8;
  v9 = sub_10003A294(qword_10006FE20, &type metadata accessor for PreviewSceneAgentProxy);
  *v8 = v4;
  v8[1] = sub_1000399F4;

  return ConcurrentInvalidatable.invalidation.getter(v6, v9);
}

uint64_t sub_1000399F4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100039B30, v5, v4);
}

uint64_t sub_100039B30()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = PreviewSceneAgentProxy.scene.getter();
  v4 = [v3 scene];

  sub_10003A03C(0, v4);
  v5 = v0[1];

  return v5();
}

void *sub_100039BC8()
{
  result = sub_10002B8C0(&_swiftEmptyArrayStorage);
  off_100070258 = result;
  return result;
}

id sub_100039BF0()
{
  result = [objc_allocWithZone(SBSKeyboardFocusService) init];
  qword_100070260 = result;
  return result;
}

Swift::Int sub_100039C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&qword_100070270, &qword_10004F300);
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

id sub_100039D8C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10000E0C0(a1, a2, &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "Allowing keyboard focus for %s", v11, 0xCu);
    sub_10000519C(v12);
  }

  (*(v5 + 8))(v8, v4);
  if (qword_10006E620 != -1)
  {
    swift_once();
  }

  v13 = qword_100070260;
  sub_100004C60(&qword_100070268, &qword_10004F2F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004E380;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_100039C24(inited);
  swift_setDeallocating();
  sub_10003A240(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v16 = String._bridgeToObjectiveC()();
  v17 = [v13 setExternalSceneIdentities:isa forReason:v16];

  return v17;
}

uint64_t sub_10003A03C(char a1, id a2)
{
  v3 = [a2 identityToken];
  v4 = [v3 stringRepresentation];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (a1)
  {
    if (qword_10006E618 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_100070258 + 2))
    {
      sub_100006E04(v5, v7);
      if (v8)
      {
        swift_endAccess();
      }
    }

    swift_endAccess();
    v14 = sub_100039D8C(v5, v7);
    swift_beginAccess();
    v15 = v14;
    v16 = v5;
    v17 = v7;
  }

  else
  {
    if (qword_10006E618 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = off_100070258;
    if (*(off_100070258 + 2) && (v11 = sub_100006E04(v5, v7), (v12 & 1) != 0))
    {
      v13 = *(v10[7] + 8 * v11);
      swift_endAccess();
      [v13 invalidate];
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v15 = 0;
    v16 = v5;
    v17 = v7;
  }

  sub_100006380(v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_10003A294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003A2F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SceneLayout();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003A3B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SceneLayout();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SceneConfigurator()
{
  result = qword_1000702D8;
  if (!qword_1000702D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003A4A0()
{
  sub_10003A53C();
  if (v0 <= 0x3F)
  {
    sub_10003A5A0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SceneLayout();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10003A53C()
{
  result = qword_1000702E8;
  if (!qword_1000702E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000702E8);
  }

  return result;
}

void sub_10003A5A0()
{
  if (!qword_1000702F0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000702F0);
    }
  }
}

void sub_10003A5F0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setInterfaceOrientation:sub_10003BEC8()];
  sub_10003C338();
  [a1 setFrame:{0.0, 0.0, v9, v10}];
  [a1 setInterfaceOrientationMode:2];
  [a1 setDeviceOrientation:sub_10003BEC8()];
  v11 = v1[3];
  v12 = v2[4];
  sub_10000E678(v2, v11);
  [a1 setPreviewMaximumSize:{sub_1000053E0(v11, v12)}];
  v13 = *(type metadata accessor for SceneConfigurator() + 24);
  [a1 setPreviewSceneLayout:sub_10003C5D4()];
  sub_10003C818(a1);
  if (qword_10006E5D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for PreviewShellPluginRegistry();
  sub_10000BE8C(v14, qword_1000736E8);
  swift_beginAccess();
  PreviewShellPluginRegistry.sceneConfigurator.getter();
  swift_endAccess();
  if (v49)
  {
    sub_10000BF1C(&v48, v50);
    sub_10000E678(v50, v50[3]);
    v15 = [objc_allocWithZone(PSMutableSceneSettings) initWithSettings:a1];
    dispatch thunk of PreviewShellSceneConfigurator.configure(sceneSettings:for:)();

    sub_10000519C(v50);
  }

  else
  {
    sub_10003D3FC(&v48);
  }

  static Logger.uv.getter();
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v17, v18))
  {

    (*(v5 + 8))(v8, v4);
    return;
  }

  v46 = v5;
  v47 = v4;
  v19 = swift_slowAlloc();
  v50[0] = swift_slowAlloc();
  *v19 = 136316162;
  v20 = [v16 persistenceIdentifier];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_10000E0C0(v22, v24, v50);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    [v16 interfaceOrientation];
    v26 = BSInterfaceOrientationDescription();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_10000E0C0(v27, v29, v50);

    *(v19 + 14) = v30;
    *(v19 + 22) = 2080;
    [v16 frame];
    v31 = BSStringFromCGRect();

    if (v31)
    {
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = sub_10000E0C0(v32, v34, v50);

      *(v19 + 24) = v35;
      *(v19 + 32) = 2080;
      [v16 previewMaximumSize];
      v36 = BSStringFromCGSize();

      if (v36)
      {
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v40 = sub_10000E0C0(v37, v39, v50);

        *(v19 + 34) = v40;
        *(v19 + 42) = 2080;
        [v16 previewSceneLayout];
        v41 = UVPreviewSceneLayoutDescription();
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = sub_10000E0C0(v42, v44, v50);

        *(v19 + 44) = v45;
        _os_log_impl(&_mh_execute_header, v17, v18, "Configuring scene %s with orientation:%s, frame:%s, maxSize:%s, layout:%s", v19, 0x34u);
        swift_arrayDestroy();

        (*(v46 + 8))(v8, v47);
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

id sub_10003AB58(uint64_t a1)
{
  v3 = type metadata accessor for SceneLayout();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(type metadata accessor for SceneConfigurator() + 24);
  v12 = *(v4 + 16);
  v12(v10, v1 + v11, v3);
  v13 = (*(v4 + 88))(v10, v3);
  if (v13 == enum case for SceneLayout.device(_:))
  {
    (*(v4 + 96))(v10, v3);
    v14 = *(a1 + 48);
    if (v14)
    {
      [v14 setHidden:0];
    }

    v15 = type metadata accessor for PreviewTraits.Orientation();
    return (*(*(v15 - 8) + 8))(v10, v15);
  }

  else if (v13 == enum case for SceneLayout.custom(_:))
  {
    result = *(a1 + 48);
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v18 = 0xD000000000000015;
    v19 = 0x80000001000557E0;
    v12(v8, v1 + v11, v3);
    v17._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v17);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003ADDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Callsite();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v20 = 0;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = &v20;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10003D5A0;
  *(v9 + 24) = v8;
  v18 = sub_10003D5AC;
  v19 = v9;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10003D4E8;
  v17 = &unk_100063BD0;
  v10 = _Block_copy(&aBlock);

  [v3 performUpdate:v10];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    if ((v20 & 1) == 0)
    {
      aBlock = 0;
      v15 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      aBlock = 0xD000000000000026;
      v15 = 0x8000000100055800;
      v12 = [v3 settings];
      swift_getObjectType();

      v13._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v13);

      Callsite.init(_:_:_:_:)();
      type metadata accessor for Unreachable();
      sub_10003BCB0();
      swift_allocError();
      Unreachable.init(_:diagnostics:callsite:)();
      swift_willThrow();
    }
  }

  return result;
}

void sub_10003B094(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v61 = a4;
  v8 = type metadata accessor for Callsite();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(FBSMutableSceneDefinition) init];
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() identityForIdentifier:v13];

  [v12 setIdentity:v14];
  v15 = [objc_opt_self() localIdentity];
  [v12 setClientIdentity:v15];

  v16 = [objc_allocWithZone(type metadata accessor for LocalSceneSpecification()) init];
  [v12 setSpecification:v16];

  v17 = [v12 specification];
  v18 = [objc_opt_self() parametersForSpecification:v17];

  v63 = v4;
  v64 = a3;
  v65 = a1;
  v66 = a2;
  v19 = v68;
  sub_10003B9F8(sub_10003B9EC, v62);
  if (v19)
  {

    v20 = v18;
LABEL_3:

    return;
  }

  v58 = v4;
  v59 = v11;
  v21 = [objc_opt_self() sharedInstance];
  v60 = v12;
  v22 = [v21 createSceneWithDefinition:v12 initialParameters:v18];

  if (qword_10006E5B0 != -1)
  {
    swift_once();
  }

  sub_10000E678(qword_10006EAD0, qword_10006EAE8);
  v23 = [objc_allocWithZone(PSScene) initWithScene:v22];
  v68 = v22;
  v24 = v23;
  dispatch thunk of PreviewShellSceneBinder.bind(scene:)();

  v25 = v68;
  v26 = [objc_opt_self() sharedInstance];
  v27 = [v26 fbsSceneForScene:v25];

  if (!v27)
  {
    Callsite.init(_:_:_:_:)();
    type metadata accessor for Unreachable();
    sub_10003BCB0();
    swift_allocError();
    Unreachable.init(_:diagnostics:callsite:)();
    swift_willThrow();

    v20 = v25;
    goto LABEL_3;
  }

  v28 = [v27 windowScene];
  v29 = v58;
  if (!v28)
  {
    Callsite.init(_:_:_:_:)();
    type metadata accessor for Unreachable();
    sub_10003BCB0();
    swift_allocError();
    Unreachable.init(_:diagnostics:callsite:)();
    swift_willThrow();

    v20 = v27;
    goto LABEL_3;
  }

  v20 = v28;
  v57 = v27;
  v30 = [v28 delegate];
  v31 = v60;
  if (!v30)
  {
    Callsite.init(_:_:_:_:)();
    type metadata accessor for Unreachable();
    sub_10003BCB0();
    swift_allocError();
    Unreachable.init(_:diagnostics:callsite:)();
    swift_willThrow();

    goto LABEL_3;
  }

  v59 = v30;
  v32 = v60;
  v56 = [objc_allocWithZone(UIWindow) initWithWindowScene:v20];
  [v56 setHidden:0];
  v33 = v29[3];
  v34 = v29[4];
  sub_10000E678(v29, v33);
  v36 = (*(v34 + 8))(v33, v34);
  v37 = v35;
  if ((v38 & 1) == 0 || (v39 = [v35 exclusionArea]) == 0)
  {

LABEL_16:
    v51 = 0;
    goto LABEL_17;
  }

  v40 = v39;
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (!v41)
  {

    goto LABEL_16;
  }

  [v41 rect];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = objc_allocWithZone(type metadata accessor for ExclusionWindow());
  v51 = sub_10001E07C(v20, v43, v45, v47, v49);
LABEL_17:
  v52 = sub_10003BD08();
  v67[0] = a1;
  v67[1] = a2;
  v67[2] = v20;
  v67[3] = v56;
  v67[4] = v52;
  v67[5] = v59;
  v67[6] = v51;
  v55 = v51;

  sub_10003AB58(v67);

  v53 = v61;
  *v61 = v68;
  v53[1] = a1;
  v53[2] = a2;
  v53[3] = v20;
  v53[4] = v56;
  v53[5] = v52;
  v53[6] = v59;
  v53[7] = v51;
}

uint64_t sub_10003B800()
{
  v0 = type metadata accessor for SceneLayout();
  sub_100020278(v0, qword_100073738);
  v1 = sub_10000BE8C(v0, qword_100073738);
  v2 = enum case for PreviewTraits.Orientation.portrait(_:);
  v3 = type metadata accessor for PreviewTraits.Orientation();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = enum case for SceneLayout.device(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

void sub_10003B8E0(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_10000E678(a2, v3);
  v5 = sub_10000542C(v3, v4);
  [a1 setDisplayConfiguration:v5];

  [a1 setLevel:0.0];
  [a1 setForeground:1];
  v6 = String._bridgeToObjectiveC()();
  v7 = UVSceneIdentifierToPersistenceIdentifier();

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [a1 setPersistenceIdentifier:v7];

  sub_10003A5F0(a1);
}

void sub_10003B9EC(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_10003B8E0(a1, *(v1 + 16));
}

uint64_t sub_10003B9F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Callsite();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v19 = 0;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = &v19;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10003D3A0;
  *(v9 + 24) = v8;
  v17 = sub_10003D3BC;
  v18 = v9;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000133D0;
  v16 = &unk_100063B58;
  v10 = _Block_copy(&aBlock);

  [v3 updateSettingsWithBlock:v10];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    if ((v19 & 1) == 0)
    {
      aBlock = 0;
      v14 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      aBlock = 0xD000000000000026;
      v14 = 0x8000000100055800;

      sub_100004C60(&qword_100070328, &qword_10004F348);
      v12._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v12);

      Callsite.init(_:_:_:_:)();
      type metadata accessor for Unreachable();
      sub_10003BCB0();
      swift_allocError();
      Unreachable.init(_:diagnostics:callsite:)();
      swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_10003BCB0()
{
  result = qword_10006EA30;
  if (!qword_10006EA30)
  {
    type metadata accessor for Unreachable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EA30);
  }

  return result;
}

uint64_t sub_10003BD08()
{
  v1 = v0;
  v2 = type metadata accessor for Callsite();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = [v0 settings];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  _StringGuts.grow(_:)(40);

  sub_100004C60(&qword_100070328, &qword_10004F348);
  v7._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v7);

  Callsite.init(_:_:_:_:)();
  type metadata accessor for Unreachable();
  sub_10003BCB0();
  swift_allocError();
  Unreachable.init(_:diagnostics:callsite:)();
  return swift_willThrow();
}

uint64_t sub_10003BEC8()
{
  v1 = type metadata accessor for PreviewTraits.Orientation();
  v31 = *(v1 - 8);
  v2 = *(v31 + 64);
  v3 = __chkstk_darwin(v1);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - v6;
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SceneLayout();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v28 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = *(type metadata accessor for SceneConfigurator() + 24);
  v18 = *(v11 + 16);
  v30 = v0;
  v18(v16, v0 + v17, v10);
  v19 = (*(v11 + 88))(v16, v10);
  if (v19 == enum case for SceneLayout.device(_:))
  {
    (*(v11 + 96))(v16, v10);
    v20 = v31;
    (*(v31 + 32))(v9, v16, v1);
    object = *(v20 + 16);
    object(v7, v9, v1);
    v22 = (*(v20 + 88))(v7, v1);
    v23 = v20;
    if (v22 == enum case for PreviewTraits.Orientation.portrait(_:))
    {
      v24 = 1;
    }

    else if (v22 == enum case for PreviewTraits.Orientation.portraitUpsideDown(_:))
    {
      v24 = 2;
    }

    else if (v22 == enum case for PreviewTraits.Orientation.landscapeLeft(_:))
    {
      v24 = 4;
    }

    else
    {
      if (v22 != enum case for PreviewTraits.Orientation.landscapeRight(_:))
      {
        while (1)
        {
          v32 = 0;
          v33 = 0xE000000000000000;
          _StringGuts.grow(_:)(23);

          v32 = 0xD000000000000015;
          v33 = 0x80000001000558D0;
          object(v29, v9, v1);
          v27._countAndFlagsBits = String.init<A>(describing:)();
          object = v27._object;
          String.append(_:)(v27);

LABEL_15:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v24 = 3;
    }

    (*(v23 + 8))(v9, v1);
  }

  else
  {
    if (v19 != enum case for SceneLayout.custom(_:))
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v32 = 0xD000000000000015;
      v33 = 0x80000001000557E0;
      v18(v28, v30 + v17, v10);
      v26._countAndFlagsBits = String.init<A>(describing:)();
      object = v26._object;
      String.append(_:)(v26);

      goto LABEL_15;
    }

    return 1;
  }

  return v24;
}

uint64_t sub_10003C338()
{
  v1 = type metadata accessor for SceneLayout();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v19 - v7);
  v9 = *(type metadata accessor for SceneConfigurator() + 24);
  v10 = *(v2 + 16);
  v10(v8, &v0[v9], v1);
  v11 = (*(v2 + 88))(v8, v1);
  if (v11 == enum case for SceneLayout.device(_:))
  {
    (*(v2 + 96))(v8, v1);
    v12 = *(v0 + 3);
    v13 = *(v0 + 4);
    sub_10000E678(v0, v12);
    sub_1000053E0(v12, v13);
    v14 = type metadata accessor for PreviewTraits.Orientation();
    return (*(*(v14 - 8) + 8))(v8, v14);
  }

  else if (v11 == enum case for SceneLayout.custom(_:))
  {
    result = (*(v2 + 96))(v8, v1);
    v16 = *v8;
    v17 = v8[1];
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v19 = 0xD000000000000015;
    v20 = 0x80000001000557E0;
    v10(v6, &v0[v9], v1);
    v18._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v18);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003C5D4()
{
  v1 = v0;
  v2 = type metadata accessor for SceneLayout();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = *(v3 + 16);
  v10(&v15 - v8, v1, v2);
  v11 = (*(v3 + 88))(v9, v2);
  if (v11 == enum case for SceneLayout.device(_:))
  {
    (*(v3 + 96))(v9, v2);
    v12 = type metadata accessor for PreviewTraits.Orientation();
    (*(*(v12 - 8) + 8))(v9, v12);
    return 0;
  }

  else if (v11 == enum case for SceneLayout.custom(_:))
  {
    return 1;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v15 = 0xD000000000000015;
    v16 = 0x80000001000557E0;
    v10(v7, v1, v2);
    v14._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v14);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10003C818(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SceneLayout();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v81 - v10;
  if (v1[6])
  {
    v12 = v1[5];

    v88 = sub_100015884();
  }

  else
  {
    v88 = 0;
  }

  v13 = *(type metadata accessor for SceneConfigurator() + 24);
  v14 = *(v5 + 16);
  v14(v11, v1 + v13, v4);
  v15 = (*(v5 + 88))(v11, v4);
  if (v15 == enum case for SceneLayout.device(_:))
  {
    (*(v5 + 96))(v11, v4);
    v16 = v1[3];
    v17 = v1[4];
    sub_10000E678(v1, v16);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    [v18 deviceInfoFloatValueForKey:UISDeviceContextDeviceCornerRadiusKey];
    v22 = v21;

    v23 = [objc_allocWithZone(BSCornerRadiusConfiguration) initWithCornerRadius:v22];
    [a1 setCornerRadiusConfiguration:v23];

    v24 = v2[3];
    v25 = v2[4];
    sub_10000E678(v2, v24);
    v26 = (*(v25 + 8))(v24, v25);
    v28 = v27;
    v29 = [v27 displayEdgeInfo];
    if (!v29)
    {
      v29 = [objc_allocWithZone(UISApplicationSupportDisplayEdgeInfo) init];
    }

    v82 = v11;

    sub_10003D01C(a1);
    v30 = v88;
    if (qword_10006E630 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v15 != enum case for SceneLayout.custom(_:))
    {
      v89 = 0;
      v90 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v89 = 0xD000000000000015;
      v90 = 0x80000001000557E0;
      v14(v9, v1 + v13, v4);
      v80._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v80);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v56 = [objc_allocWithZone(BSCornerRadiusConfiguration) initWithCornerRadius:0.0];
    [a1 setCornerRadiusConfiguration:v56];

    v57 = [objc_allocWithZone(UISApplicationSupportDisplayEdgeInfo) init];
    sub_10003D01C(a1);

    if (qword_10006E630 != -1)
    {
      swift_once();
    }

    v58 = off_100070278;
    v59 = off_100070278 + 64;
    v60 = 1 << *(off_100070278 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(off_100070278 + 8);
    v30 = ((v60 + 63) >> 6);

    v63 = 0;
    while (v62)
    {
      v64 = v63;
LABEL_35:
      v65 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      [a1 setDefaultStatusBarHeight:*(v58[6] + ((v64 << 9) | (8 * v65))) forOrientation:0.0];
    }

    while (1)
    {
      v64 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v64 >= v30)
      {

        [a1 setStatusBarHeight:0.0];

        return;
      }

      v62 = *&v59[8 * v64];
      ++v63;
      if (v62)
      {
        v63 = v64;
        goto LABEL_35;
      }
    }

LABEL_43:
    __break(1u);
  }

  swift_once();
LABEL_8:
  v31 = off_100070278;
  v32 = off_100070278 + 64;
  v33 = 1 << *(off_100070278 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(off_100070278 + 8);
  v36 = (v33 + 63) >> 6;
  v83 = UISDeviceContextDeviceIdiomKey;

  v37 = 0;
  v85 = v2;
  v86 = a1;
  v84 = v31;
  while (v35)
  {
LABEL_21:
    v43 = (v37 << 9) | (8 * __clz(__rbit64(v35)));
    v44 = *(v31[6] + v43);
    v41 = *(v31[7] + v43);
    if (v30)
    {
      v45 = v2[3];
      v46 = v2[4];
      sub_10000E678(v2, v45);
      v47 = v2;
      v87 = v30;
      v48 = sub_10000542C(v45, v46);
      v50 = v2[3];
      v49 = v47[4];
      sub_10000E678(v47, v47[3]);
      v51 = (*(v49 + 8))(v50, v49);
      v53 = v52;
      v54 = v83;
      v55 = [v51 deviceInfoIntegerValueForKey:v54];

      if ((v55 - 1) < 7)
      {
        v38 = qword_10004F360[(v55 - 1)];
      }

      else
      {
        v38 = -1;
      }

      v39 = v87;
      v40 = [v87 statusBarForcedHiddenForInterfaceOrientation:v44 onDisplay:v48 withUserInterfaceIdiom:v38];

      if (v40)
      {
        v41 = 0.0;
      }

      v2 = v85;
      a1 = v86;
      v30 = v88;
      v31 = v84;
    }

    v35 &= v35 - 1;
    [a1 setDefaultStatusBarHeight:v44 forOrientation:v41];
  }

  while (1)
  {
    v42 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v42 >= v36)
    {
      break;
    }

    v35 = *&v32[8 * v42];
    ++v37;
    if (v35)
    {
      v37 = v42;
      goto LABEL_21;
    }
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  v66 = v30;
  v67 = sub_10003BEC8();
  v68 = v2[3];
  v69 = v2[4];
  sub_10000E678(v2, v68);
  v70 = sub_10000542C(v68, v69);
  v71 = v2[3];
  v72 = v2[4];
  sub_10000E678(v2, v71);
  v73 = (*(v72 + 8))(v71, v72);
  v75 = v74;
  v76 = sub_1000058B0(v73);

  v77 = v67;
  v30 = v88;
  LOBYTE(v73) = [v66 statusBarHiddenForInterfaceOrientation:v77 onDisplay:v70 withUserInterfaceIdiom:v76];

  v78 = 0.0;
  if ((v73 & 1) == 0)
  {
LABEL_39:
    [a1 defaultStatusBarHeightForOrientation:sub_10003BEC8()];
  }

  [a1 setStatusBarHeight:v78];

  v79 = type metadata accessor for PreviewTraits.Orientation();
  (*(*(v79 - 8) + 8))(v82, v79);
}

id sub_10003D01C(void *a1)
{
  v3 = [v1 safeAreaInsetsPortrait];
  UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [a1 setSafeAreaInsetsPortrait:{v5, v7, v9, v11}];
  v12 = [v1 peripheryInsets];
  UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [a1 setPeripheryInsets:{v14, v16, v18, v20}];
  v21 = [v1 homeAffordanceOverlayAllowance];
  if (v21)
  {
    v22 = v21;
    [v21 doubleValue];
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  return [a1 setHomeAffordanceOverlayAllowance:v24];
}

void *sub_10003D158()
{
  result = sub_10003D178();
  off_100070278 = result;
  return result;
}

void *sub_10003D178()
{
  sub_10003D554();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = 0;
  while (1)
  {
    v2 = *(&off_1000625A8 + v1 + 32);
    [ObjCClassFromMetadata heightForStyle:0 orientation:v2];
    v4 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = sub_1000072E8(v2);
    v8 = _swiftEmptyDictionarySingleton[2];
    v9 = (v7 & 1) == 0;
    v10 = __OFADD__(v8, v9);
    v11 = v8 + v9;
    if (v10)
    {
      break;
    }

    v12 = v7;
    if (_swiftEmptyDictionarySingleton[3] < v11)
    {
      sub_100009150(v11, isUniquelyReferenced_nonNull_native);
      v6 = sub_1000072E8(v2);
      if ((v12 & 1) != (v13 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v12)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v16 = v6;
    sub_10000B500();
    v6 = v16;
    if (v12)
    {
LABEL_2:
      *(_swiftEmptyDictionarySingleton[7] + 8 * v6) = v4;
      goto LABEL_3;
    }

LABEL_10:
    _swiftEmptyDictionarySingleton[(v6 >> 6) + 8] |= 1 << v6;
    *(_swiftEmptyDictionarySingleton[6] + 8 * v6) = v2;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v6) = v4;
    v14 = _swiftEmptyDictionarySingleton[2];
    v10 = __OFADD__(v14, 1);
    v15 = v14 + 1;
    if (v10)
    {
      goto LABEL_16;
    }

    _swiftEmptyDictionarySingleton[2] = v15;
LABEL_3:
    v1 += 8;
    if (v1 == 32)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  type metadata accessor for UIInterfaceOrientation(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10003D314(void *a1, void (*a2)(uint64_t), uint64_t a3, _BYTE *a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    a2(v8);

    *a4 = 1;
  }
}

uint64_t sub_10003D3BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10003D3E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003D3FC(uint64_t a1)
{
  v2 = sub_100004C60(&qword_100070330, &unk_10004F350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10003D464(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, _BYTE *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    a3(v10, a2);

    *a5 = 1;
  }
}

void sub_10003D4E8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

unint64_t sub_10003D554()
{
  result = qword_100070338;
  if (!qword_100070338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100070338);
  }

  return result;
}

uint64_t sub_10003D5AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10003D5E4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12PreviewShell18LocalSceneDelegate_previewShellScene);
  v4 = *(v2 + OBJC_IVAR____TtC12PreviewShell18LocalSceneDelegate_previewShellScene);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5 = *(v2 + OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings);
  if (v5 && *v3)
  {
    v6 = v3[1];
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = v5;
    swift_unknownObjectRetain();
    sub_10003E938(v9, 0, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10003D738(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_windowScene];
  if (v9)
  {
    v10 = v9 == a1;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    static Logger.uv.getter();
    v11 = v1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v27 = a1;
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v14 = 136446210;
      v28 = v11;
      type metadata accessor for SceneDelegate();
      v15 = v11;
      sub_100004C60(&qword_100070518, &qword_10004F4A0);
      if (!swift_dynamicCast())
      {
        goto LABEL_13;
      }

      sub_10000BF1C(v29, v32);
      v17 = v33;
      v16 = v34;
      sub_10000E678(v32, v33);
      v18 = (*(v16 + 8))(v17, v16);
      v20 = v19;
      sub_10000519C(v32);
      v21 = sub_10000E0C0(v18, v20, &v31);

      *(v14 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s will enter foreground", v14, 0xCu);
      sub_10000519C(v26);

      (*(v4 + 8))(v8, v3);
      a1 = v27;
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    v31 = v11;
    type metadata accessor for SceneDelegate();
    v22 = v11;
    sub_100004C60(&qword_100070518, &qword_10004F4A0);
    if (swift_dynamicCast())
    {
      sub_10000BF1C(v29, v32);
      v23 = v33;
      v24 = v34;
      sub_10000E678(v32, v33);
      (*(v24 + 24))(a1, v23, v24);
      return sub_10000519C(v32);
    }

LABEL_13:
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_100041E08(v29);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003DB10(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_windowScene];
  if (v9)
  {
    v10 = v9 == a1;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    static Logger.uv.getter();
    v11 = v1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136446210;
      v25 = v11;
      type metadata accessor for SceneDelegate();
      v16 = v11;
      sub_100004C60(&qword_100070518, &qword_10004F4A0);
      if (!swift_dynamicCast())
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        sub_100041E08(v23);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      sub_10000BF1C(v23, v26);
      v17 = v27;
      v18 = v28;
      sub_10000E678(v26, v27);
      v19 = (*(v18 + 8))(v17, v18);
      v21 = v20;
      sub_10000519C(v26);
      v22 = sub_10000E0C0(v19, v21, &v29);

      *(v14 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s did enter background", v14, 0xCu);
      sub_10000519C(v15);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_10003DE34(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_windowScene];
  if (v9)
  {
    v10 = v9 == a1;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    static Logger.uv.getter();
    v11 = v1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v27 = a1;
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v14 = 136446210;
      v28 = v11;
      type metadata accessor for SceneDelegate();
      v15 = v11;
      sub_100004C60(&qword_100070518, &qword_10004F4A0);
      if (!swift_dynamicCast())
      {
        goto LABEL_13;
      }

      sub_10000BF1C(v29, v32);
      v17 = v33;
      v16 = v34;
      sub_10000E678(v32, v33);
      v18 = (*(v16 + 8))(v17, v16);
      v20 = v19;
      sub_10000519C(v32);
      v21 = sub_10000E0C0(v18, v20, &v31);

      *(v14 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s did disconnect", v14, 0xCu);
      sub_10000519C(v26);

      (*(v4 + 8))(v8, v3);
      a1 = v27;
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    v31 = v11;
    type metadata accessor for SceneDelegate();
    v22 = v11;
    sub_100004C60(&qword_100070518, &qword_10004F4A0);
    if (swift_dynamicCast())
    {
      sub_10000BF1C(v29, v32);
      v23 = v33;
      v24 = v34;
      sub_10000E678(v32, v33);
      (*(v24 + 40))(a1, v23, v24);
      return sub_10000519C(v32);
    }

LABEL_13:
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_100041E08(v29);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10003E328()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003E424(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MainViewController();
  v7 = [objc_allocWithZone(v6) init];
  v28[3] = v6;
  v28[4] = sub_100041B04(&qword_1000704D0, type metadata accessor for MainViewController);
  v28[0] = v7;
  v8 = type metadata accessor for MainScene(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = v7;
  v12 = a1;
  v13 = a2;
  v14 = sub_1000459A8(v12, v28, v13);

  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  v15 = qword_100073700;

  v17 = sub_100040718(v16, v15);

  v18 = *&v11[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas];
  *&v11[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas] = v17;
  swift_retain_n();

  sub_1000233D0();

  v19 = [objc_allocWithZone(UIWindow) initWithWindowScene:v12];
  sub_1000052B8(0, &qword_1000704D8, UIColor_ptr);
  v20 = v19;
  v21 = static UIColor.shellTintColor.getter();
  [v20 setTintColor:v21];

  [v20 setRootViewController:v11];
  [v20 makeKeyAndVisible];
  v22 = *(v3 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_window);
  *(v3 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_window) = v20;
  v23 = v20;

  v24 = *(v3 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController);
  *(v3 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController) = v11;
  v25 = v11;

  v26 = *(v3 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene);
  *(v3 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene) = v14;

  if ([v12 activationState] <= 1)
  {
    sub_100040D0C();
  }
}

void sub_10003E6D4(void *a1, void *a2)
{
  v5 = type metadata accessor for SceneSettingsUpdate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 animationFence];
  if (v10)
  {

    v11 = [a2 animationSettings];
    if (!v11)
    {
      if (!a2)
      {
        goto LABEL_6;
      }

      v12 = [objc_opt_self() settingsWithDuration:0.3];
      [a2 setAnimationSettings:v12];
      v11 = v12;
    }
  }

LABEL_6:
  v13 = [a1 copyRemovingTargetOfEventDeferringEnvironments];
  if (*(v2 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene))
  {
    v20 = v13;
    v14 = objc_allocWithZone(PSSceneSettings);

    [v14 initWithSettings:v20];
    v15 = a2;
    SceneSettingsUpdate.init(sceneSettings:transitionContext:)();
    v16 = sub_100041B04(&qword_1000704C8, type metadata accessor for MainScene);
    v17 = *(v16 + 40);
    v18 = type metadata accessor for MainScene(0);
    v17(v9, v18, v16);

    (*(v6 + 8))(v9, v5);
  }

  else
  {
  }
}

uint64_t sub_10003E938(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SceneSettingsUpdate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_allocWithZone(PSSceneSettings) initWithSettings:a1];
  v13 = a2;
  SceneSettingsUpdate.init(sceneSettings:transitionContext:)();
  (*(a4 + 40))(v12, a3, a4);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10003EAC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene);
}

void sub_10003EC9C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MainScene(0);
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = a1;
  v10 = a2;
  v11 = sub_1000459A8(v9, &v20, v10);

  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  v12 = qword_100073700;

  v14 = sub_100040718(v13, v12);

  v15 = objc_allocWithZone(UIWindow);
  v16 = [v15 initWithWindowScene:{v9, v20, v21, v22}];
  [v16 setRootViewController:*(v14 + 24)];
  v17 = v16;
  [v17 setHidden:0];

  v18 = *(v3 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_previewShellScene);
  *(v3 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_previewShellScene) = v11;

  v19 = *(v3 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window);
  *(v3 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window) = v17;
}

uint64_t sub_10003EE0C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for SceneSettingsUpdate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_previewShellScene))
  {
    v11 = objc_allocWithZone(PSSceneSettings);

    [v11 initWithSettings:a1];
    v12 = a2;
    SceneSettingsUpdate.init(sceneSettings:transitionContext:)();
    v13 = sub_100041B04(&qword_1000704C8, type metadata accessor for MainScene);
    v14 = *(v13 + 40);
    v15 = type metadata accessor for MainScene(0);
    v14(v10, v15, v13);

    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_10003F134(uint64_t result, void *a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC12PreviewShell18LocalSceneDelegate_previewShellScene);
  if (*v3)
  {
    v5 = result;
    v6 = v3[1];
    v7 = *v3;
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 8);
    swift_unknownObjectRetain();
    sub_10003E938(v5, a2, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003F254(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 _sceneIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = type metadata accessor for HostInjectedScene(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = a1;
  v14 = a2;
  v15 = sub_10004571C(v7, v9, v13, v14);

  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  v16 = qword_100073700;

  v18 = sub_1000400CC(v17, v16);

  v19 = [objc_allocWithZone(UVInjectedSceneWindow) initWithWindowScene:v13];
  [v19 setHidden:0];
  v20 = *(v18 + 24);
  [v19 setRootViewController:v20];

  v21 = *(v3 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_previewShellScene);
  *(v3 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_previewShellScene) = v15;

  v22 = *(v3 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window);
  *(v3 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window) = v19;
}

uint64_t sub_10003F3EC(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for SceneSettingsUpdate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_previewShellScene))
  {
    v11 = objc_allocWithZone(PSSceneSettings);

    [v11 initWithSettings:a1];
    v12 = a2;
    SceneSettingsUpdate.init(sceneSettings:transitionContext:)();
    v13 = sub_100041B04(&qword_100070508, type metadata accessor for HostInjectedScene);
    v14 = *(v13 + 40);
    v15 = type metadata accessor for HostInjectedScene(0);
    v14(v10, v15, v13);

    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_10003F578(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window;
  v5 = *(v2 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window);
  if (v5)
  {
    [v5 setHidden:1];
    v6 = *(v2 + v4);
  }

  else
  {
    v6 = 0;
  }

  *(v2 + v4) = 0;

  v7 = OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_previewShellScene;
  if (*(v2 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_previewShellScene))
  {
    v17 = *(v2 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_previewShellScene);
    v15 = type metadata accessor for HostInjectedScene(0);
    v16 = sub_100041B04(&qword_100070500, type metadata accessor for HostInjectedScene);
    LOBYTE(v14) = 2;
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
    v8 = *(v2 + v7);
  }

  *(v2 + v7) = 0;

  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  v9 = [a1 _sceneIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_100022E9C(v10, v12);
}

id sub_10003F714(char *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&a1[*a3] = 0;
  *&a1[*a4] = 0;
  v9.receiver = a1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10003F788(void *a1, void *a2)
{
  v4 = *(v2 + *a2);
}

uint64_t sub_10003F7E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a4);
}

uint64_t sub_10003F8DC(uint64_t a1, uint64_t a2)
{
  v26 = *a2;
  v27 = type metadata accessor for ExecutionLane();
  v25 = *(v27 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v27);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100041B04(&qword_100070508, type metadata accessor for HostInjectedScene);
  v8 = type metadata accessor for InvalidationHandle();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(a2 + 16) = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 84) = 0u;
  v11 = sub_100004C60(&qword_1000704F8, &qword_10004F498);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(a2 + 104) = EventStream.Sink.init()();
  if (*(a1 + 40))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
  }

  else
  {
    v15 = 0xE400000000000000;
    v14 = 1852399981;
  }

  v16 = type metadata accessor for CanvasViewController();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active] = 0;
  *&v17[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating] = 0;
  v18 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_forcedOrientation;
  v19 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  *&v17[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay] = 0;
  v20 = &v17[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_sceneIdentifier];
  *v20 = v14;
  v20[1] = v15;
  v29.receiver = v17;
  v29.super_class = v16;

  *(a2 + 24) = objc_msgSendSuper2(&v29, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for CanvasUpdater();
  v21 = swift_allocObject();
  v21[2] = 0;

  v22 = sub_10002B6D0(&_swiftEmptyArrayStorage);
  v21[4] = v7;
  v21[5] = v22;
  v21[3] = a1;
  *(a2 + 40) = v7;
  *(a2 + 48) = v21;
  *(a2 + 32) = a1;
  v28[5] = a2;
  v28[3] = swift_getObjectType();
  v28[4] = *(*(*(v7 + 8) + 8) + 8);
  v28[0] = a1;
  sub_100041B04(&qword_10006ECA8, type metadata accessor for HostedPreviewCanvas);

  Invalidatable.trackInvalidation(dsoHandle:file:line:column:function:of:)();
  sub_10000519C(v28);
  v28[0] = a2;
  static ExecutionLane.main.getter();

  Invalidatable.onInvalidation(on:_:)();

  (*(v25 + 8))(v6, v27);
  return a2;
}

uint64_t sub_10003FCE8(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = type metadata accessor for ExecutionLane();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100041B04(&qword_1000704C8, type metadata accessor for MainScene);
  v11 = type metadata accessor for InvalidationHandle();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(a2 + 16) = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 84) = 0u;
  v14 = sub_100004C60(&qword_1000704F8, &qword_10004F498);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(a2 + 104) = EventStream.Sink.init()();
  v17 = type metadata accessor for CanvasViewController();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active] = 0;
  *&v18[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating] = 0;
  v19 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_forcedOrientation;
  v20 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *&v18[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay] = 0;
  v21 = &v18[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_sceneIdentifier];
  *v21 = 1852399981;
  *(v21 + 1) = 0xE400000000000000;
  v26.receiver = v18;
  v26.super_class = v17;
  *(a2 + 24) = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for CanvasUpdater();
  v22 = swift_allocObject();
  v22[2] = 0;

  v23 = sub_10002B6D0(&_swiftEmptyArrayStorage);
  v22[4] = v10;
  v22[5] = v23;
  v22[3] = a1;
  *(a2 + 40) = v10;
  *(a2 + 48) = v22;
  *(a2 + 32) = a1;
  v25[5] = a2;
  v25[3] = swift_getObjectType();
  v25[4] = *(*(*(v10 + 8) + 8) + 8);
  v25[0] = a1;
  sub_100041B04(&qword_10006ECA8, type metadata accessor for HostedPreviewCanvas);

  Invalidatable.trackInvalidation(dsoHandle:file:line:column:function:of:)();
  sub_10000519C(v25);
  v25[0] = a2;
  static ExecutionLane.main.getter();

  Invalidatable.onInvalidation(on:_:)();

  (*(v6 + 8))(v9, v5);
  return a2;
}

uint64_t sub_1000400CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Callsite();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100041B04(&qword_100070510, type metadata accessor for HostInjectedScene);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  swift_beginAccess();
  v15 = *(a2 + 16);
  v16 = *(v15 + 16);

  if (v16 && (v17 = sub_100007180(v13, v14), (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v17);
    swift_endAccess();

    Callsite.init(_:_:_:_:)();
    assertUnreachable(callsite:)();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    swift_endAccess();
    static Logger.uv.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = v14;
    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      v52 = v14;
      v24 = v23;
      v25 = swift_slowAlloc();
      v54 = v25;
      *v24 = 136446210;
      v53[0] = v13;
      v53[1] = v52;

      v26 = String.init<A>(describing:)();
      v28 = v13;
      v29 = sub_10000E0C0(v26, v27, &v54);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "registering injected scene '%{public}s'", v24, 0xCu);
      sub_10000519C(v25);

      v22 = v52;

      (*(v49 + 8))(v12, v50);
    }

    else
    {

      (*(v49 + 8))(v12, v50);
      v28 = v13;
    }

    v30 = v51;
    v31 = type metadata accessor for HostedPreviewCanvas();
    v32 = swift_allocObject();

    v19 = sub_10003F8DC(v33, v32);
    swift_weakAssign();
    v53[0] = v19;
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    *(v34 + 24) = v30;
    sub_100041B04(&qword_10006ECA8, type metadata accessor for HostedPreviewCanvas);

    Invalidatable.onInvalidation(_:)();

    swift_beginAccess();

    v35 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_10000A64C(v19, v28, v22, isUniquelyReferenced_nonNull_native);

    *(a2 + 16) = v54;
    swift_endAccess();
    swift_beginAccess();
    v37 = *(a2 + 24);
    v38 = *(v37 + 16);
    v48 = v28;
    if (v38 && (v39 = sub_100007180(v28, v22), (v40 & 1) != 0))
    {
      v52 = v22;
      v41 = *(*(v37 + 56) + 8 * v39);
      swift_endAccess();
      v47 = a2;
      if (v41 >> 62)
      {
        goto LABEL_26;
      }

      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

      if (v42)
      {
        v43 = 0;
        v22 = &qword_1000704F0;
        do
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          else
          {
            if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_26:
              v42 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_11;
            }

            v44 = *(v41 + 8 * v43 + 32);

            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_20;
            }
          }

          v53[3] = v31;
          v53[4] = sub_100041B04(&qword_1000704F0, type metadata accessor for HostedPreviewCanvas);
          v53[0] = v19;

          Promise.succeed(with:)();

          sub_10000519C(v53);
          ++v43;
        }

        while (v45 != v42);
      }

      v22 = v52;
    }

    else
    {
LABEL_21:
      swift_endAccess();
    }

    swift_beginAccess();
    sub_1000066A0(0, v48, v22);
    swift_endAccess();
  }

  return v19;
}

uint64_t sub_100040718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Callsite();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100041B04(&unk_1000704E0, type metadata accessor for MainScene);
  swift_beginAccess();
  v15 = *(a2 + 16);
  if (*(v15 + 16) && (v16 = sub_100007180(0, 0), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();

    Callsite.init(_:_:_:_:)();
    assertUnreachable(callsite:)();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    swift_endAccess();
    static Logger.uv.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = a2;
      v45[0] = 0;
      v23 = v14;
      v24 = v22;
      v46 = v22;
      *v21 = 136446210;
      v45[1] = 0;
      v25 = String.init<A>(describing:)();
      v43 = v9;
      v27 = sub_10000E0C0(v25, v26, &v46);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "registering injected scene '%{public}s'", v21, 0xCu);
      sub_10000519C(v24);
      v14 = v23;
      a2 = v44;

      (*(v10 + 8))(v13, v43);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    v28 = type metadata accessor for HostedPreviewCanvas();
    v29 = swift_allocObject();

    v18 = sub_10003FCE8(v30, v29);
    swift_weakAssign();
    v45[0] = v18;
    v31 = swift_allocObject();
    *(v31 + 16) = a1;
    *(v31 + 24) = v14;
    sub_100041B04(&qword_10006ECA8, type metadata accessor for HostedPreviewCanvas);

    Invalidatable.onInvalidation(_:)();

    swift_beginAccess();
    v32 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_10000A64C(v18, 0, 0, isUniquelyReferenced_nonNull_native);
    *(a2 + 16) = v46;
    swift_endAccess();
    swift_beginAccess();
    v34 = *(a2 + 24);
    if (*(v34 + 16) && (v35 = sub_100007180(0, 0), (v36 & 1) != 0))
    {
      v37 = *(*(v34 + 56) + 8 * v35);
      swift_endAccess();
      v44 = a2;
      if (v37 >> 62)
      {
        goto LABEL_26;
      }

      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

      if (v38)
      {
        v39 = 0;
        do
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v41 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          else
          {
            if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_26:
              v38 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_11;
            }

            v40 = *(v37 + 8 * v39 + 32);

            v41 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_20;
            }
          }

          v45[3] = v28;
          v45[4] = sub_100041B04(&qword_1000704F0, type metadata accessor for HostedPreviewCanvas);
          v45[0] = v18;

          Promise.succeed(with:)();

          sub_10000519C(v45);
          ++v39;
        }

        while (v41 != v38);
      }
    }

    else
    {
LABEL_21:
      swift_endAccess();
    }

    swift_beginAccess();
    sub_1000066A0(0, 0, 0);
    swift_endAccess();
  }

  return v18;
}

void sub_100040D0C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 BOOLForKey:v9];

  if ((v10 & 1) == 0)
  {
    static Logger.uv.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "MainSceneDelegate is coming foreground so make icon visible on the home screen", v13, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v14 = [v7 standardUserDefaults];
    v15 = String._bridgeToObjectiveC()();
    [v14 setBool:1 forKey:v15];

    v16 = CFNotificationCenterGetDarwinNotifyCenter();
    if (v16)
    {
      v17 = v16;
      v18 = String._bridgeToObjectiveC()();
      CFNotificationCenterPostNotification(v17, v18, 0, 0, 1u);
    }
  }

  v19 = *(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController);
  if (v19)
  {
    v20 = v19;
    sub_1000259C4();
  }
}

void sub_100040F84(void *a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = a1;
    v13 = [v12 _FBSScene];
    v58 = [v13 settings];

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      static Logger.uv.getter();
      v16 = v2;
      v17 = a2;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v54 = v19;
        v55 = v18;
        v56 = v12;
        v57 = v11;
        v20 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v62 = v53;
        *v20 = 136446466;
        v59 = v16;
        type metadata accessor for SceneDelegate();
        v21 = v16;
        sub_100004C60(&qword_100070518, &qword_10004F4A0);
        if (!swift_dynamicCast())
        {
          goto LABEL_16;
        }

        sub_10000BF1C(v60, v63);
        v23 = v64;
        v22 = v65;
        sub_10000E678(v63, v64);
        v24 = (*(v22 + 8))(v23, v22);
        v26 = v25;
        sub_10000519C(v63);
        v27 = sub_10000E0C0(v24, v26, &v62);

        *(v20 + 4) = v27;
        *(v20 + 12) = 2082;
        v28 = [v17 persistentIdentifier];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = sub_10000E0C0(v29, v31, &v62);

        *(v20 + 14) = v32;
        v33 = v55;
        _os_log_impl(&_mh_execute_header, v55, v54, "%{public}s will connect to session %{public}s", v20, 0x16u);
        swift_arrayDestroy();

        (*(v6 + 8))(v9, v5);
        v12 = v56;
        v11 = v57;
      }

      else
      {

        (*(v6 + 8))(v9, v5);
      }

      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (v35)
      {
        v36 = v35;
        v37 = v58;
      }

      else
      {
        v38 = [objc_allocWithZone(UVMutablePreviewSceneSettings) initWithSettings:v15];
        [v15 frame];
        [v38 setPreviewMaximumSize:{v39, v40}];
        v36 = [objc_allocWithZone(UVPreviewSceneSettings) initWithSettings:v38];
      }

      v41 = *&v16[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings];
      *&v16[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings] = v36;
      v42 = v36;

      v43 = *&v16[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_windowScene];
      *&v16[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_windowScene] = v11;
      v44 = v12;

      v62 = v16;
      type metadata accessor for SceneDelegate();
      v45 = v16;
      sub_100004C60(&qword_100070518, &qword_10004F4A0);
      if (swift_dynamicCast())
      {
        sub_10000BF1C(v60, v63);
        v46 = v64;
        v47 = v65;
        sub_10000E678(v63, v64);
        (*(v47 + 16))(v11, v42, v46, v47);
        sub_10000519C(v63);
        sub_100004C60(&qword_100070530, &qword_10004E1E0);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_10004DBA0;
        *(v48 + 32) = v45;
        v49 = v45;
        sub_100004C60(&qword_100070538, qword_10004F4C0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        sub_1000052B8(0, &unk_100070540, NSString_ptr);
        v51 = NSString.init(stringLiteral:)();
        [v11 _registerSettingsDiffActionArray:isa forKey:v51];

        return;
      }

LABEL_16:
      v61 = 0;
      memset(v60, 0, sizeof(v60));
      sub_100041E08(v60);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v34 = v58;
  }
}

uint64_t sub_1000415AC()
{
  v1 = (v0 + OBJC_IVAR____TtC12PreviewShell18LocalSceneDelegate_previewShellScene);
  if (*(v0 + OBJC_IVAR____TtC12PreviewShell18LocalSceneDelegate_previewShellScene))
  {
    v2 = v1[1];
    swift_getObjectType();
    v10 = *(*(*(*(v2 + 8) + 8) + 8) + 8);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
    v3 = *v1;
  }

  *v1 = 0;
  v1[1] = 0;
  result = swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings);
  if (v5)
  {
    if (*v1)
    {
      v6 = v1[1];
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 8);
      v9 = v5;
      swift_unknownObjectRetain();
      sub_10003E938(v9, 0, ObjectType, v8);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000416C0()
{
  v1 = v0;
  v2 = type metadata accessor for InvalidationTrace();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  sub_100022E9C(0, 0);
  v7 = OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_window;
  v8 = *(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_window);
  if (v8)
  {
    [v8 setHidden:1];
    v9 = *(v1 + v7);
  }

  else
  {
    v9 = 0;
  }

  *(v1 + v7) = 0;

  v10 = OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController;
  v11 = *(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController);
  if (v11)
  {
    v17 = *(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController);
    v12 = v11;
    static InvalidationTrace.empty.getter();
    type metadata accessor for MainViewController();
    sub_100041B04(&qword_10006F840, type metadata accessor for MainViewController);
    AnyInvalidatable.invalidate(file:line:column:function:trace:)();
    (*(v3 + 8))(v6, v2);

    v11 = *(v1 + v10);
  }

  *(v1 + v10) = 0;

  v13 = OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene;
  if (*(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene))
  {
    v17 = *(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene);
    type metadata accessor for MainScene(0);
    sub_100041B04(&qword_1000704C0, type metadata accessor for MainScene);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
    v14 = *(v1 + v13);
  }

  *(v1 + v13) = 0;
}

uint64_t sub_10004196C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000419B4()
{
  v1 = v0;
  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  sub_100022E9C(0, 0);
  v2 = OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window;
  v3 = *(v1 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window);
  if (v3)
  {
    [v3 setHidden:1];
    v4 = *(v1 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v1 + v2) = 0;

  v5 = OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_previewShellScene;
  if (*(v1 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_previewShellScene))
  {
    v8 = *(v1 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_previewShellScene);
    type metadata accessor for MainScene(0);
    sub_100041B04(&qword_1000704C0, type metadata accessor for MainScene);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
    v6 = *(v1 + v5);
  }

  *(v1 + v5) = 0;
}

uint64_t sub_100041B04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100041B4C(void *a1, id a2)
{
  if (a2 && ([a2 copy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_1000052B8(0, &qword_100070528, FBSSceneTransitionContext_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v4 = v20[0];
    [v20[0] setActions:0];
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if (!a1)
    {
LABEL_11:

      return;
    }
  }

  v5 = [a1 settings];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    goto LABEL_11;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = v6;
  }

  else
  {
    v12 = [objc_allocWithZone(UVMutablePreviewSceneSettings) initWithSettings:v8];
    [v8 frame];
    [v12 setPreviewMaximumSize:{v13, v14}];
    v10 = [objc_allocWithZone(UVPreviewSceneSettings) initWithSettings:v12];
  }

  v15 = *&v2[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings];
  *&v2[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings] = v10;
  v16 = v10;

  v23 = v2;
  type metadata accessor for SceneDelegate();
  v17 = v2;
  sub_100004C60(&qword_100070518, &qword_10004F4A0);
  if (swift_dynamicCast())
  {
    sub_10000BF1C(v20, v24);
    v18 = v25;
    v19 = v26;
    sub_10000E678(v24, v25);
    (*(v19 + 32))(v16, v4, v18, v19);

    sub_10000519C(v24);
  }

  else
  {
    v22 = 0;
    *v20 = 0u;
    v21 = 0u;
    sub_100041E08(v20);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100041E08(uint64_t a1)
{
  v2 = sub_100004C60(&qword_100070520, qword_10004F4A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100041E7C()
{
  v2 = v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 24);
  v9 = *(v8 + 80);
  static Logger.uv.getter();
  v10 = v9;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v35 = v3;
    v36 = v1;
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v13 = 136315650;
    v14 = *(v8 + 24);
    v15 = *(v8 + 32);

    v16 = sub_10000E0C0(v14, v15, &v37);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = [v10 settings];
    [v17 interfaceOrientation];

    v18 = BSInterfaceOrientationDescription();
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10000E0C0(v19, v21, &v37);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2080;
    v23 = [v10 settings];
    [v23 frame];

    v24 = BSStringFromCGRect();
    if (!v24)
    {
      __break(1u);
      return;
    }

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_10000E0C0(v25, v27, &v37);

    *(v13 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v11, v12, "Snapshotting scene %s with orientation:%s, frame:%s", v13, 0x20u);
    swift_arrayDestroy();

    (*(v4 + 8))(v7, v35);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v29 = [v10 createSnapshot];
  if (v29 && (v30 = v29, v31 = [v29 CGImage], v30, v31))
  {
  }

  else
  {
    sub_100046074();
    swift_allocError();
    *v32 = v10;
    swift_willThrow();
  }
}

unint64_t sub_100042240(void *a1)
{
  _StringGuts.grow(_:)(34);

  v2 = [a1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return 0xD000000000000020;
}

uint64_t sub_100042314(uint64_t a1)
{
  v2 = sub_10004642C();

  return HumanReadableError.errorDescription.getter(a1, v2);
}

uint64_t sub_100042350(uint64_t a1)
{
  v2 = sub_10004642C();

  return HumanReadableError.description.getter(a1, v2);
}

uint64_t sub_10004238C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004C60(&qword_1000709A8, &unk_10004FB28);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC12PreviewShell15SimDisplayScene____lazy_storage___thumbnailSceneCache;
  swift_beginAccess();
  sub_10002D4F0(v1 + v10, v9, &qword_1000709A8, &unk_10004FB28);
  v11 = type metadata accessor for ThumbnailSceneCache();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_10000BF34(v9, &qword_1000709A8, &unk_10004FB28);
  sub_100045264(&qword_100070958, type metadata accessor for SimDisplayScene);
  swift_retain_n();
  ThumbnailSceneCache.init(in:makeHostingViewController:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_100045F64(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1000425D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_role;
  v4 = type metadata accessor for PreviewSceneRole();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_sceneSettingsUpdateSink);

  v6 = *(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_findStaticCanvas + 8);

  sub_10000BF34(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene____lazy_storage___thumbnailSceneCache, &qword_1000709A8, &unk_10004FB28);
  return v0;
}

uint64_t sub_1000426AC()
{
  sub_1000425D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10004272C()
{
  v0 = type metadata accessor for PreviewSceneRole();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100042824();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100042824()
{
  if (!qword_1000705A0)
  {
    type metadata accessor for ThumbnailSceneCache();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000705A0);
    }
  }
}

uint64_t sub_100042880()
{
  v1 = SceneSettingsUpdate.sceneSettings.getter();
  v2 = *(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_sceneSettings);
  *(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_sceneSettings) = v1;

  v3 = *(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_sceneSettingsUpdateSink);
  return EventStream.Sink.send(_:)();
}

uint64_t sub_1000428DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_findStaticCanvas);
  v2 = *(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_findStaticCanvas + 8);
  return v1();
}

unint64_t sub_100042910@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_findStaticCanvas);
  v5 = *(v1 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_findStaticCanvas + 8);
  result = v4();
  if (!v2)
  {
    v7 = sub_100038B04();

    a1[3] = &type metadata for ShellThumbnailFactory;
    result = sub_100045FD4();
    a1[4] = result;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_10004298C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);

  return v2;
}

uint64_t sub_1000429EC@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *(*(v1 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_display) + OBJC_IVAR____TtC12PreviewShell10SimDisplay_displayID);
  v3 = enum case for HostIdentity.simulator(_:);
  v4 = type metadata accessor for HostIdentity();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

void *sub_100042B2C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_display) + OBJC_IVAR____TtC12PreviewShell10SimDisplay_capabilities);
  v2 = v1;
  return v1;
}

void *sub_100042B6C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_display) + OBJC_IVAR____TtC12PreviewShell10SimDisplay_capabilities + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_100042BB0()
{
  v0 = sub_100046028();

  return static EventStream.empty.getter(v0);
}

uint64_t sub_100042BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004C60(&qword_1000709A8, &unk_10004FB28);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC12PreviewShell16LocalStaticScene____lazy_storage___thumbnailSceneCache;
  swift_beginAccess();
  sub_10002D4F0(v1 + v10, v9, &qword_1000709A8, &unk_10004FB28);
  v11 = type metadata accessor for ThumbnailSceneCache();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_10000BF34(v9, &qword_1000709A8, &unk_10004FB28);
  sub_100045264(&qword_100070940, type metadata accessor for LocalStaticScene);
  swift_retain_n();
  ThumbnailSceneCache.init(in:makeHostingViewController:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_100045F64(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_100042E38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InvalidationHandle();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  LOBYTE(v13) = 2;
  *(v1 + 16) = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  v7 = sub_100004C60(&qword_100070970, &qword_10004FAF8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v1 + 32) = EventStream.Sink.init()();
  v10 = OBJC_IVAR____TtC12PreviewShell16LocalStaticScene____lazy_storage___thumbnailSceneCache;
  v11 = type metadata accessor for ThumbnailSceneCache();
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  *(v2 + 24) = a1;
  *(v2 + 40) = [objc_allocWithZone(PSSceneSettings) initWithSettings:{*(a1 + 120), v13, 0, 0}];
  return v2;
}

uint64_t sub_100042F64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_10000BF34(v0 + OBJC_IVAR____TtC12PreviewShell16LocalStaticScene____lazy_storage___thumbnailSceneCache, &qword_1000709A8, &unk_10004FB28);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100043020()
{
  sub_100042824();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000430D0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  a1[3] = type metadata accessor for LocalSceneHost();
  a1[4] = &off_100063588;
  *a1 = v3;
}

uint64_t sub_100043120()
{
  v1 = SceneSettingsUpdate.sceneSettings.getter();
  v2 = *(v0 + 40);
  *(v0 + 40) = v1;

  v3 = *(v0 + 32);
  return EventStream.Sink.send(_:)();
}

uint64_t sub_100043254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v4 + 80);
  return sub_10003ADDC(a3, v4);
}

uint64_t sub_1000432D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004C60(&qword_1000709A8, &unk_10004FB28);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC12PreviewShell17HostInjectedScene____lazy_storage___thumbnailSceneCache;
  swift_beginAccess();
  sub_10002D4F0(v1 + v10, v9, &qword_1000709A8, &unk_10004FB28);
  v11 = type metadata accessor for ThumbnailSceneCache();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_10000BF34(v9, &qword_1000709A8, &unk_10004FB28);
  sub_100045264(&qword_100070928, type metadata accessor for HostInjectedScene);
  swift_retain_n();
  ThumbnailSceneCache.init(in:makeHostingViewController:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_100045F64(v7, v1 + v10);
  return swift_endAccess();
}

void sub_10004351C(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_100004C60(&qword_100070990, &qword_10004FB18);
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v38 - v6;
  v7 = type metadata accessor for ExecutionLane();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SceneUpdateTiming();
  v11 = *(updated - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(updated);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SceneUpdateSeed();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HostToShellMessage();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100045C5C(a1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *(v46 + 80);
      v47 = *v23;
      v25 = v47;
      EventStream.Sink.send(_:)();
    }

    else if (swift_weakLoadStrong())
    {
      sub_10000D5DC();
      v31 = v42;
      static ExecutionLane.main.getter();
      v32 = v40;
      sub_10002D4F0(v45, v40, &qword_100070990, &qword_10004FB18);
      v33 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v34 = swift_allocObject();
      sub_100045E2C(v32, v34 + v33);
      Future.observeCompletion(on:_:)();

      (*(v43 + 8))(v31, v44);
    }

    else
    {
      v35 = v39;
      sub_10002D4F0(v45, v39, &qword_100070990, &qword_10004FB18);
      v36 = type metadata accessor for SceneMessageResponder();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v35, 1, v36) == 1)
      {
        sub_10000BF34(v35, &qword_100070990, &qword_10004FB18);
      }

      else
      {
        sub_100045CC0();
        swift_allocError();
        SceneMessageResponder.reply(error:)();

        (*(v37 + 8))(v35, v36);
      }
    }
  }

  else
  {
    v27 = *(v23 + *(sub_100004C60(&qword_1000709A0, &qword_10004FB20) + 48));
    (*(v16 + 32))(v19, v23, v15);
    v28 = &enum case for SceneUpdateTiming.async(_:);
    v29 = v46;
    v30 = *(v46 + 72);
    if (v27)
    {
      v28 = &enum case for SceneUpdateTiming.fenced(_:);
    }

    (*(v11 + 104))(v14, *v28, updated);
    sub_100006A9C(v19);
    (*(v11 + 8))(v14, updated);
    if (v27)
    {
      [v27 applyToScene:*(v29 + 48)];
      [v27 invalidate];
    }

    (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_100043AA8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_100070990, &qword_10004FB18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_10002D4F0(a2, &v13 - v6, &qword_100070990, &qword_10004FB18);
  v10 = type metadata accessor for SceneMessageResponder();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    return sub_10000BF34(v7, &qword_100070990, &qword_10004FB18);
  }

  SceneMessageResponder.reply(result:)();
  return (*(v11 + 8))(v7, v10);
}

uint64_t sub_100043BEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  sub_10000BF34(v0 + OBJC_IVAR____TtC12PreviewShell17HostInjectedScene____lazy_storage___thumbnailSceneCache, &qword_1000709A8, &unk_10004FB28);
  swift_weakDestroy();
  return v0;
}

uint64_t sub_100043C74()
{
  sub_100043BEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100043CF4()
{
  sub_100042824();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100043DBC()
{
  swift_weakAssign();
}

uint64_t sub_100043E04@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 72);
  a1[3] = type metadata accessor for HostPreferenceResolver();
  a1[4] = &off_100062A00;
  *a1 = v3;
}

uint64_t sub_100043E54(int a1)
{
  v3 = type metadata accessor for ShellToHostMessage();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 64);
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  SceneMessenger.send(message:)();
  return sub_100006DA8(v6);
}

uint64_t sub_100043EF8()
{
  v1 = SceneSettingsUpdate.sceneSettings.getter();
  v2 = *(v0 + 56);
  *(v0 + 56) = v1;

  v3 = *(v0 + 24);
  return EventStream.Sink.send(_:)();
}

uint64_t sub_100043F54()
{
  v1 = type metadata accessor for ShellToHostMessage();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 64);
  swift_storeEnumTagMultiPayload();
  SceneMessenger.send(message:)();
  return sub_100006DA8(v4);
}

uint64_t sub_100043FEC(uint64_t a1)
{
  v3 = type metadata accessor for ShellToHostMessage();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 64);
  v8 = type metadata accessor for SuppressedPresentation();
  (*(*(v8 - 8) + 16))(v6, a1, v8);
  swift_storeEnumTagMultiPayload();
  SceneMessenger.send(message:)();
  return sub_100006DA8(v6);
}

uint64_t sub_100044110()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
  }

  else
  {
    v1 = 1852399981;
  }

  return v1;
}

uint64_t sub_100044180@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    *a1 = *(v1 + 32);
    a1[1] = v3;
    v4 = &enum case for HostIdentity.injected(_:);
  }

  else
  {
    v4 = &enum case for HostIdentity.main(_:);
  }

  v5 = *v4;
  v6 = type metadata accessor for HostIdentity();
  (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_1000442A4()
{
  v0 = type metadata accessor for Callsite();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  Callsite.init(_:_:_:_:)();
  type metadata accessor for Unreachable();
  sub_100045264(&qword_10006EA30, &type metadata accessor for Unreachable);
  swift_allocError();
  Unreachable.init(_:diagnostics:callsite:)();
  return swift_willThrow();
}

uint64_t sub_1000443F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004C60(&qword_1000709A8, &unk_10004FB28);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC12PreviewShell9MainScene____lazy_storage___thumbnailSceneCache;
  swift_beginAccess();
  sub_10002D4F0(v1 + v10, v9, &qword_1000709A8, &unk_10004FB28);
  v11 = type metadata accessor for ThumbnailSceneCache();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_10000BF34(v9, &qword_1000709A8, &unk_10004FB28);
  sub_100045264(&qword_100070918, type metadata accessor for MainScene);
  swift_retain_n();
  ThumbnailSceneCache.init(in:makeHostingViewController:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_100045F64(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_100044640(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v5 = sub_100045264(a3, a4);
  v6 = objc_allocWithZone(type metadata accessor for RemoteContentViewController());

  return sub_100012A18(v7, a2, v5);
}

char *sub_1000446B8()
{
  v1 = type metadata accessor for Callsite();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = [*(v0 + 32) keyWindow];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 uv_createSnapshotImageFromIOSurface];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      type metadata accessor for LocalSnapshotError();
      sub_100045264(&qword_1000709C8, &type metadata accessor for LocalSnapshotError);
      swift_allocError();
      v6 = v7;
      v4 = v4;
      LocalSnapshotError.init(window:)();
      swift_willThrow();
    }
  }

  else
  {
    v6 = "snapshots";
    Callsite.init(_:_:_:_:)();
    type metadata accessor for Unreachable();
    sub_100045264(&qword_10006EA30, &type metadata accessor for Unreachable);
    swift_allocError();
    Unreachable.init(_:diagnostics:callsite:)();
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000448A0()
{
  updated = type metadata accessor for SceneUpdateTiming();
  v1 = *(updated - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(updated);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PreviewPreferences();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004C60(&qword_100070098, &unk_10004F238);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + 24);

    SceneUpdateHandshake.preferences.getter();
    PreviewPreferences.preferredOrientation.getter();
    (*(v6 + 8))(v9, v5);
    v16 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
    (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
    v17 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_forcedOrientation;
    swift_beginAccess();
    sub_100046168(v13, v15 + v17);
    swift_endAccess();
    [v15 setNeedsUpdateOfSupportedInterfaceOrientations];

    sub_10000BF34(v13, &qword_100070098, &unk_10004F238);
  }

  v18 = SceneUpdateHandshake.fenceHandle.getter();
  [v18 invalidate];

  sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
  SceneUpdateHandshake.timing.getter();
  v19 = static Future.succeeded(dsoHandle:file:line:column:function:_:)();
  (*(v1 + 8))(v4, updated);
  return v19;
}

uint64_t sub_100044BC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC12PreviewShell9MainScene_sceneCrashedStyle;
  v4 = type metadata accessor for SceneCrashedStyle();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10000BF34(v0 + OBJC_IVAR____TtC12PreviewShell9MainScene____lazy_storage___thumbnailSceneCache, &qword_1000709A8, &unk_10004FB28);
  swift_weakDestroy();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100044CDC()
{
  v0 = type metadata accessor for SceneCrashedStyle();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100042824();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100044DD0()
{
  swift_weakAssign();
}

uint64_t sub_100044E3C@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = &off_100063D70;
  *a1 = v1;
}

uint64_t sub_100044E78()
{
  v1 = SceneSettingsUpdate.sceneSettings.getter();
  v2 = *(v0 + 40);
  *(v0 + 40) = v1;

  v3 = *(v0 + 24);
  return EventStream.Sink.send(_:)();
}

uint64_t sub_100044EC4()
{
  if (qword_10006E5F8 != -1)
  {
    swift_once();
  }

  v0 = qword_10006F690;
  if (byte_10006F698)
  {
    swift_errorRetain();
    sub_100004C60(&qword_10006E8E8, &qword_10004D780);
    swift_willThrowTypedImpl();
  }

  else
  {
  }

  return v0;
}

unint64_t sub_100044FBC@<X0>(unint64_t *a1@<X2>, void (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = sub_100045264(a1, a2);
  result = (*(v7 + 96))(v6, v7);
  if (!v4)
  {
    v9 = sub_100038B04();

    a3[3] = &type metadata for ShellThumbnailFactory;
    result = sub_100045FD4();
    a3[4] = result;
    *a3 = v9;
  }

  return result;
}

uint64_t sub_1000450B4@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_100045144@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_100045264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000452AC(uint64_t a1)
{
  result = sub_100045264(&qword_100070920, type metadata accessor for MainScene);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100045304(uint64_t a1)
{
  result = sub_100045264(&qword_1000704C8, type metadata accessor for MainScene);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000453EC(uint64_t a1)
{
  result = sub_100045264(&qword_100070930, type metadata accessor for HostInjectedScene);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100045444(uint64_t a1)
{
  result = sub_100045264(&qword_100070508, type metadata accessor for HostInjectedScene);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10004552C(uint64_t a1)
{
  result = sub_100045264(&qword_100070948, type metadata accessor for LocalStaticScene);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100045584(uint64_t a1)
{
  result = sub_100045264(&qword_10006F6E0, type metadata accessor for LocalStaticScene);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10004566C(uint64_t a1)
{
  result = sub_100045264(&qword_100070960, type metadata accessor for SimDisplayScene);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000456C4(uint64_t a1)
{
  result = sub_100045264(&qword_100070968, type metadata accessor for SimDisplayScene);
  *(a1 + 8) = result;
  return result;
}

char *sub_10004571C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for InvalidationHandle();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  LOBYTE(v29) = 2;
  *(v4 + 2) = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  v13 = sub_100004C60(&qword_100070970, &qword_10004FAF8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v4 + 3) = EventStream.Sink.init()();
  v16 = sub_100004C60(&qword_100070980, &qword_10004FB08);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v4 + 10) = EventStream.Sink.init()();
  v19 = OBJC_IVAR____TtC12PreviewShell17HostInjectedScene____lazy_storage___thumbnailSceneCache;
  v20 = type metadata accessor for ThumbnailSceneCache();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  swift_weakInit();
  *(v5 + 4) = a1;
  *(v5 + 5) = a2;
  *(v5 + 6) = a3;
  v21 = objc_allocWithZone(PSSceneSettings);
  v22 = a3;
  *(v5 + 7) = [v21 initWithSettings:{a4, v29, 0, 0}];
  sub_100004C60(&qword_100070988, &qword_10004FB10);
  *(swift_allocObject() + 16) = v22;
  v23 = v22;
  *(v5 + 8) = SceneMessenger.__allocating_init(actionSender:)();

  UIScene.setPreviewSceneActionHandler(_:)();

  v24 = *(v5 + 8);
  type metadata accessor for HostPreferenceResolver();
  v25 = swift_allocObject();

  v26 = sub_10002B3F0(&_swiftEmptyArrayStorage);
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  *(v5 + 9) = v25;
  v27 = *(v5 + 8);

  SceneMessenger.messageReceiver.setter();

  return v5;
}

uint64_t sub_1000459A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SceneCrashedStyle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = type metadata accessor for InvalidationHandle();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v3 + 16) = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  v16 = sub_100004C60(&qword_100070970, &qword_10004FAF8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v3 + 24) = EventStream.Sink.init()();
  v19 = OBJC_IVAR____TtC12PreviewShell9MainScene____lazy_storage___thumbnailSceneCache;
  v20 = type metadata accessor for ThumbnailSceneCache();
  (*(*(v20 - 8) + 56))(v4 + v19, 1, 1, v20);
  swift_weakInit();
  *(v4 + 32) = a1;
  sub_10002D4F0(a2, v25, &qword_100070978, &qword_10004FB00);
  v21 = a1;
  SceneCrashedStyle.init(snapshotStyle:redCrossVisible:reloadHandler:)();
  (*(v9 + 32))(v4 + OBJC_IVAR____TtC12PreviewShell9MainScene_sceneCrashedStyle, v12, v8);
  v22 = [objc_allocWithZone(PSSceneSettings) initWithSettings:a3];
  sub_10000BF34(a2, &qword_100070978, &qword_10004FB00);
  *(v4 + 40) = v22;
  return v4;
}

uint64_t sub_100045BF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostToShellMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100045CC0()
{
  result = qword_100070998;
  if (!qword_100070998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070998);
  }

  return result;
}

uint64_t sub_100045D14()
{
  v1 = *(sub_100004C60(&qword_100070990, &qword_10004FB18) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SceneMessageResponder();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100045E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_100070990, &qword_10004FB18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045E9C(uint64_t *a1)
{
  v3 = *(sub_100004C60(&qword_100070990, &qword_10004FB18) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100043AA8(a1, v4);
}

uint64_t sub_100045F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_1000709A8, &unk_10004FB28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100045FD4()
{
  result = qword_1000709B0;
  if (!qword_1000709B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709B0);
  }

  return result;
}

unint64_t sub_100046028()
{
  result = qword_1000709B8;
  if (!qword_1000709B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000709B8);
  }

  return result;
}

unint64_t sub_100046074()
{
  result = qword_1000709C0;
  if (!qword_1000709C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709C0);
  }

  return result;
}

uint64_t sub_100046168(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_100070098, &unk_10004F238);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046224()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Invalidating scene settings is no-op on injected preview shell scenes.", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_100046380()
{
  result = qword_1000709D0;
  if (!qword_1000709D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709D0);
  }

  return result;
}

unint64_t sub_1000463D8()
{
  result = qword_1000709D8;
  if (!qword_1000709D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709D8);
  }

  return result;
}

unint64_t sub_10004642C()
{
  result = qword_1000709E0;
  if (!qword_1000709E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709E0);
  }

  return result;
}

BOOL sub_1000464DC@<W0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = sub_1000274C8(*a1);
  if (result && (a2 & 0x18) == 24)
  {
    v9 = 0;
  }

  else
  {
    result = sub_1000274D8(v5);
    v8 = result && (a2 & 2) != 0;
    if (!v8)
    {
      v5 = 0;
    }

    v9 = v8 ^ 1;
  }

  *a3 = v5;
  *(a3 + 8) = v9 & 1;
  return result;
}

uint64_t UIInterfaceOrientation.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 0x7469617274726F70;
    }

    return 0x446E776F6E6B6E75;
  }

  if (a1 == 2)
  {
    return 0xD000000000000012;
  }

  result = 0x70616373646E616CLL;
  if (a1 != 4 && a1 != 3)
  {
    return 0x446E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_100046628()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (v1 == 1)
    {
      return 0x7469617274726F70;
    }

    return 0x446E776F6E6B6E75;
  }

  if (v1 == 2)
  {
    return 0xD000000000000012;
  }

  result = 0x70616373646E616CLL;
  if (v1 != 4 && v1 != 3)
  {
    return 0x446E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_100046710(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v71 = a4;
  v83 = a2;
  v84 = a3;
  v89 = a1;
  v10 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v85 = &v69 - v12;
  v13 = type metadata accessor for PreviewSceneRole();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  updated = type metadata accessor for SceneUpdateTiming();
  v77 = *(updated - 8);
  v78 = updated;
  v16 = *(v77 + 64);
  __chkstk_darwin(updated);
  v79 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SceneUpdateSeed();
  v74 = *(v75 - 8);
  v18 = *(v74 + 64);
  __chkstk_darwin(v75);
  v76 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SceneUpdateContext();
  v86 = *(v20 - 8);
  v87 = v20;
  v21 = *(v86 + 64);
  v22 = __chkstk_darwin(v20);
  v80 = v23;
  v81 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v88 = &v69 - v24;
  v73 = type metadata accessor for Logger();
  v72 = *(v73 - 8);
  v25 = *(v72 + 64);
  __chkstk_darwin(v73);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Callsite();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v29 + 8))(v32, v28);
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v33 = v7[3];
  v34 = v7[4];
  v35 = type metadata accessor for CanvasUpdater.UpdateDelegate(0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  v38 = sub_100012360(&v91, v33, v34, a5, a6);
  swift_unknownObjectRelease();

  v39 = v7[2];
  v82 = v35;
  if (v39)
  {
    *&v91 = v39;
    sub_100049E44(&qword_10006ECC0);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
    v40 = v7[2];
  }

  v7[2] = v38;

  static Logger.uv.getter();
  sub_10000E808(v89, &v91);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v70 = v38;
    v44 = v43;
    v45 = swift_slowAlloc();
    v69 = v27;
    v90 = v45;
    *v44 = 136446466;
    swift_getObjectType();
    v46 = *(*(v34 + 8) + 8);
    v47 = dispatch thunk of PreviewShellScene.identifier.getter();
    v49 = sub_10000E0C0(v47, v48, &v90);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2082;
    sub_10000E678(&v91, *(&v92 + 1));
    swift_getDynamicType();
    v50 = _typeName(_:qualified:)();
    v52 = v51;
    sub_10000519C(&v91);
    v53 = sub_10000E0C0(v50, v52, &v90);

    *(v44 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v41, v42, "Canvas %{public}s performing custom update using %{public}s", v44, 0x16u);
    swift_arrayDestroy();

    v38 = v70;

    (*(v72 + 8))(v69, v73);
  }

  else
  {

    sub_10000519C(&v91);
    (*(v72 + 8))(v27, v73);
  }

  (*(v74 + 16))(v76, v38 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_seed, v75);
  (*(v77 + 16))(v79, v83, v78);
  swift_getObjectType();
  v54 = *(*(v34 + 8) + 8);
  dispatch thunk of PreviewShellScene.role.getter();
  v55 = v88;
  SceneUpdateContext.init(seed:timing:role:)();
  sub_100004C60(&qword_1000709F8, &qword_10004FE78);
  v56 = type metadata accessor for TaskPriority();
  (*(*(v56 - 8) + 56))(v85, 1, 1, v56);
  v57 = v86;
  v58 = v87;
  v59 = v81;
  (*(v86 + 16))(v81, v55, v87);
  v60 = v38;
  v61 = (*(v57 + 80) + 40) & ~*(v57 + 80);
  v62 = swift_allocObject();
  v63 = v71;
  *(v62 + 2) = v84;
  *(v62 + 3) = v63;
  *(v62 + 4) = v60;
  (*(v57 + 32))(&v62[v61], v59, v58);

  Future<A>.init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)();
  v64 = v89[3];
  v65 = v89[4];
  v66 = sub_10000E678(v89, v64);
  sub_100011CFC(v60, v66, v7, v64, v65);
  sub_100004C60(&qword_10006E8F8, &qword_10004D790);
  v67 = static Future<A>.zip<A, B>(dsoHandle:file:line:column:function:_:_:)();
  *&v91 = v60;
  sub_100049E44(&qword_10006ECC0);

  Invalidatable.onInvalidation(_:)();

  (*(v57 + 8))(v88, v58);

  return v67;
}

uint64_t sub_1000470C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v6;
  v4[14] = v5;

  return _swift_task_switch(sub_100047160, v6, v5);
}

uint64_t sub_100047160()
{
  v1 = v0[10];
  v2 = v0[8];
  v0[5] = type metadata accessor for CanvasUpdater.UpdateDelegate(0);
  v0[6] = sub_100049E44(&qword_10006ECD0);
  v0[2] = v1;

  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1000472A8;
  v5 = v0[11];
  v6 = v0[9];

  return (v8)(v0 + 7, v0 + 2, v5);
}

uint64_t sub_1000472A8()
{
  v2 = *v1;
  v3 = (*v1)[15];
  v8 = *v1;
  (*v1)[16] = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_10004742C;
  }

  else
  {
    sub_10000519C(v2 + 2);
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_1000473C4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000473C4()
{
  v1 = v0[12];

  v2.n128_u64[0] = v0[7];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10004742C()
{
  v1 = v0[12];

  sub_10000519C(v0 + 2);
  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_100047498(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v10 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v28 - v12;
  updated = type metadata accessor for SceneUpdateTiming();
  v15 = *(updated - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(updated);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 24);
  sub_100036134(a2);
  v20 = *(a1 + 56);
  (*(v15 + 104))(v18, enum case for SceneUpdateTiming.async(_:), updated);
  sub_10000E808(a2, v31);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  sub_10000BF1C(v31, v21 + 24);

  sub_100046710(a2, v18, a3, a4, sub_1000495B0, v21);

  (*(v15 + 8))(v18, updated);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = swift_allocObject();
  v24 = v30;
  *(v23 + 16) = v29;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_10004FE58;
  *(v25 + 24) = v23;
  type metadata accessor for PreviewSnapshot();

  v26 = Future.then<A>(dsoHandle:file:line:column:function:priority:transform:)();

  sub_1000499E8(v13);
  return v26;
}

uint64_t sub_100047790(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(sub_100004C60(&qword_1000709F0, &qword_10004FE70) + 48);
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10002020C;

  return v11(a1, a2, a2 + v7);
}

uint64_t sub_1000478BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = *(a5 - 8);
  v5[27] = v6;
  v5[28] = *(v6 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = type metadata accessor for MainActor();
  v5[31] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[32] = v8;
  v5[33] = v7;

  return _swift_task_switch(sub_1000479B4, v8, v7);
}

uint64_t sub_1000479B4()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v0[34] = 0;
  v0[35] = 0xE000000000000000;
  type metadata accessor for ThumbnailHostFactory();
  v5 = ThumbnailHostFactory.makeHost.getter();
  v0[36] = v6;
  v7 = *(v2 + 32);
  v0[37] = v7;
  v8 = *(*(v2 + 40) + 8);
  swift_unknownObjectRetain();
  v12 = (v5 + *v5);
  v9 = v5[1];
  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_100047B18;

  return (v12)(v0 + 2, v7, v8);
}

uint64_t sub_100047B18()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  v2[39] = v0;

  v5 = v2[37];
  v6 = v2[36];
  if (v0)
  {
    v7 = v2[35];
    swift_unknownObjectRelease();

    v8 = v2[32];
    v9 = v2[33];
    v10 = sub_100048174;
  }

  else
  {

    swift_unknownObjectRelease();
    v8 = v2[32];
    v9 = v2[33];
    v10 = sub_100047C90;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100047C90()
{
  v24 = *(v0 + 272);
  v25 = *(v0 + 280);
  v1 = *(v0 + 232);
  v26 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = sub_10000E678((v0 + 16), v8);
  *(v0 + 80) = v8;
  *(v0 + 88) = *(v7 + 8);
  v10 = sub_100011FC4((v0 + 56));
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  sub_10000E808(v0 + 16, v0 + 96);
  (*(v3 + 16))(v1, v6, v4);
  v11 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v4;
  *(v12 + 3) = v24;
  *(v12 + 4) = v25;
  sub_10000BF1C((v0 + 96), (v12 + 40));
  (*(v3 + 32))(&v12[v11], v1, v4);
  v13 = swift_allocObject();
  v13[2] = v24;
  v13[3] = v25;
  v13[4] = v5;
  v14 = *(v5 + 48);
  sub_10000E808(v0 + 56, v0 + 136);
  v15 = swift_allocObject();
  v15[2] = v5;
  sub_10000BF1C((v0 + 136), (v15 + 3));
  v15[8] = &unk_10004FE20;
  v15[9] = v12;
  v15[10] = &unk_10004FE30;
  v15[11] = v13;
  v16 = type metadata accessor for PreviewSnapshot();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v17 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)();
  *(v0 + 320) = v17;

  sub_10000519C((v0 + 56));
  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  *(v18 + 24) = v25;
  Future.observeCancelation(_:)();

  v19 = static MainActor.shared.getter();
  *(v0 + 328) = v19;
  v20 = *(&async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:) + 1);
  v21 = swift_task_alloc();
  *(v0 + 336) = v21;
  *v21 = v0;
  v21[1] = sub_100047FD4;
  v22 = *(v0 + 176);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v22, &unk_10004FE40, v17, sub_1000494D0, v17, v19, &protocol witness table for MainActor, v16);
}

uint64_t sub_100047FD4()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = v2[32];
    v5 = v2[33];
    v6 = sub_1000481E0;
  }

  else
  {
    v7 = v2[41];

    v4 = v2[32];
    v5 = v2[33];
    v6 = sub_1000480F0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000480F0()
{
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[29];

  sub_10000519C(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100048174()
{
  v1 = v0[31];

  v2 = v0[39];
  v3 = v0[29];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000481E0()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[31];

  sub_10000519C(v0 + 2);
  v4 = v0[43];
  v5 = v0[29];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100048268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for Logger();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[13] = v12;
  v7[14] = v11;

  return _swift_task_switch(sub_100048368, v12, v11);
}

uint64_t sub_100048368()
{
  v25 = v0;
  v1 = v0[11];
  v2 = v0[6];
  static Logger.uv.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  if (v5)
  {
    v22 = v0[5];
    v23 = v0[6];
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136315394;
    sub_100049524();
    v10 = _typeName(_:qualified:)();
    v12 = sub_10000E0C0(v10, v11, &v24);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10000E0C0(v22, v23, &v24);
    _os_log_impl(&_mh_execute_header, v3, v4, "Hosting thumbnail content for %s, state = %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v6, v8);
  v13 = v0[7];
  v14 = v13[3];
  v15 = v13[4];
  sub_10000E678(v13, v14);
  v16 = async function pointer to dispatch thunk of ThumbnailHost.displayThumbnailAndPerformHandshake(for:context:delegate:)[1];
  v17 = swift_task_alloc();
  v0[15] = v17;
  *v17 = v0;
  v17[1] = sub_10004857C;
  v18 = v0[8];
  v20 = v0[3];
  v19 = v0[4];

  return dispatch thunk of ThumbnailHost.displayThumbnailAndPerformHandshake(for:context:delegate:)(v18, v19, v20, v14, v15);
}

uint64_t sub_10004857C(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v10 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v6 = *(v4 + 104);
    v7 = *(v4 + 112);
    v8 = sub_100048720;
  }

  else
  {
    *(v4 + 136) = a1;
    v6 = *(v4 + 104);
    v7 = *(v4 + 112);
    v8 = sub_1000486A0;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1000486A0()
{
  v1 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[2];

  *v4 = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_100048720()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_10004878C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v8 = type metadata accessor for Logger();
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = *a3;
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100048890, v12, v11);
}

uint64_t sub_100048890()
{
  v28 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[4];

  static Logger.uv.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  if (v6)
  {
    v25 = v0[3];
    v26 = v0[4];
    v10 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v10 = 136315394;
    sub_100049524();
    v11 = _typeName(_:qualified:)();
    v13 = sub_10000E0C0(v11, v12, v27);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10000E0C0(v25, v26, v27);
    _os_log_impl(&_mh_execute_header, v4, v5, "Generating thumbnail snapshot for %s, state = %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v8 + 8))(v7, v9);
  v14 = v0[5];
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);
  swift_getObjectType();
  v17 = *(*(v16 + 8) + 8);
  dispatch thunk of PreviewShellScene.takeSnapshot()();
  v18 = v0[9];
  v19 = v0[8];
  v20 = v0[2];
  v21 = dispatch thunk of PreviewShellScene.windowScene.getter();
  v22 = [v21 screen];

  [v22 scale];
  PreviewSnapshot.init(image:selectableRegions:cornerRadius:scaleFactor:)();

  v23 = v0[1];

  return v23();
}

uint64_t sub_100048B14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = a2;
    v13 = v12;
    v19 = swift_slowAlloc();
    *v13 = 136315394;
    sub_100049524();
    v14 = _typeName(_:qualified:)();
    v16 = sub_10000E0C0(v14, v15, &v19);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10000E0C0(v18, a3, &v19);
    _os_log_impl(&_mh_execute_header, v10, v11, "Thumbnail generation canceled for %s, state = %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100048D04(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = async function pointer to Future<A>.value.getter[1];
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_100048DC8;

  return Future<A>.value.getter(a1);
}

uint64_t sub_100048DC8()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_100048F88;
  }

  else
  {
    v8 = sub_100048F24;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100048F24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100048F88()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_100048FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10001D424;

  return sub_1000478BC(a1, a2, a3, v10, a4);
}

uint64_t sub_1000490B4()
{
  v1 = v0[2];
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0[4];

  sub_10000519C(v0 + 5);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v9 = (*(*(v3[2] - 8) + 80) + 80) & ~*(*(v3[2] - 8) + 80);
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10002020C;

  return sub_100048268(a1, a2, a3, v8, v10, (v3 + 5), v3 + v9);
}

uint64_t sub_100049284()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000492C4(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10002020C;

  return sub_10004878C(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_100049390()
{
  v1 = v0[2];

  sub_10000519C(v0 + 3);
  v2 = v0[9];

  v3 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000493F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049434(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002020C;

  return sub_100048D04(a1);
}

unint64_t sub_100049524()
{
  result = qword_1000709E8;
  if (!qword_1000709E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000709E8);
  }

  return result;
}

uint64_t sub_100049570()
{
  v1 = *(v0 + 16);

  sub_10000519C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000495BC(uint64_t a1, void *a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = *a2;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1000496D4;

  return v10(a1, a3, v4 + 16);
}

uint64_t sub_1000496D4()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_100049800;
  }

  else
  {
    v3 = sub_1000497E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100049818()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049850(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10001D424;

  return sub_1000495BC(a1, a2, a3, v9);
}

uint64_t sub_100049920(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002020C;

  return sub_100047790(a1, a2, v7);
}

uint64_t sub_1000499E8(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_100049B08;

  return sub_1000470C4(a2, a3, a4, a5);
}

uint64_t sub_100049B08(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_100049C18()
{
  updated = type metadata accessor for SceneUpdateContext();
  v2 = *(updated - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, updated);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049CE4(uint64_t a1)
{
  v4 = *(type metadata accessor for SceneUpdateContext() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002020C;

  return sub_100049A50(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100049E44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CanvasUpdater.UpdateDelegate(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ContentProviderRegistry.register<A>(provider:for:override:)()
{
  return ContentProviderRegistry.register<A>(provider:for:override:)();
}

{
  return ContentProviderRegistry.register<A>(provider:for:override:)();
}

{
  return ContentProviderRegistry.register<A>(provider:for:override:)();
}