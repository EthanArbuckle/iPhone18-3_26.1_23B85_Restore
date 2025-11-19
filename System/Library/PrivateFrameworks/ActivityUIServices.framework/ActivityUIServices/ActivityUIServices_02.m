void sub_18E6470D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_18E65D7C4(ObjectType);
  v5 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_baseContentTouchedDown;
  swift_beginAccess();
  v6 = *(a2 + v5);
  if (v4 == 2)
  {
    if (v6 == 2)
    {
      return;
    }

LABEL_6:
    sub_18E65DAE4(v6, ObjectType);
    return;
  }

  if (v6 == 2 || ((v4 ^ v6) & 1) != 0)
  {
    goto LABEL_6;
  }
}

uint64_t sub_18E647174()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_baseContentTouchedDown;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E6471B8(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_baseContentTouchedDown;
  swift_beginAccess();
  v1[v3] = a1;
  BSDispatchQueueAssertMain();
  v10 = v1;
  result = BSDispatchQueueAssertMain();
  if ((v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] & 1) == 0)
  {
    v5 = [v1 _FBSScene];
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18E648444;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E6492E4;
    *(v7 + 24) = v6;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_218;
    v8 = _Block_copy(aBlock);

    [v5 updateClientSettingsWithBlock_];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_18E647378(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E647400;
}

void sub_18E647400(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_4;
  }

  v4 = v3[6];
  v5 = BSDispatchQueueAssertMain();
  MEMORY[0x1EEE9AC00](v5);
  v11[2] = v4;
  BSDispatchQueueAssertMain();
  if (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    goto LABEL_4;
  }

  v6 = [v3[6] _FBSScene];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E649304;
  *(v7 + 24) = v11;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18E6492E4;
  *(v8 + 24) = v7;
  v3[4] = sub_18E63D3DC;
  v3[5] = v8;
  *v3 = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_18E6150BC;
  v3[3] = &block_descriptor_230;
  v9 = _Block_copy(v3);
  v10 = v3[5];

  [v6 updateClientSettingsWithBlock_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
LABEL_4:
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E647610(uint64_t (*a1)(uint64_t))
{
  v3 = [v1 _FBSScene];
  v4 = [v3 clientSettings];

  if (swift_dynamicCastObjCProtocolConditional())
  {
    ObjectType = swift_getObjectType();
    v6 = a1(ObjectType);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_18E6476BC(uint64_t a1, uint64_t a2)
{
  result = BSDispatchQueueAssertMain();
  if ((*(v2 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate) & 1) == 0)
  {
    v6 = [v2 _FBSScene];
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18E6492E4;
    *(v8 + 24) = v7;
    v10[4] = sub_18E63D3DC;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_18E6150BC;
    v10[3] = &block_descriptor_291_0;
    v9 = _Block_copy(v10);

    [v6 updateClientSettingsWithBlock_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_18E647844(void *a1, void (*a2)(uint64_t))
{
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    a2(v5);
  }
}

id ActivityScene.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityScene();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E647974(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady;
  swift_beginAccess();
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  v6 = v1;
  return sub_18E6476BC(sub_18E6492EC, &v5);
}

uint64_t (*sub_18E6479E8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647A4C;
}

uint64_t (*sub_18E647A84(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647AE8;
}

uint64_t (*sub_18E647B20(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647B84;
}

uint64_t (*sub_18E647BBC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647C20;
}

void sub_18E647C58(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  swift_beginAccess();
  v9 = *(v5 + v8);
  *(v5 + v8) = a1;
  v10 = a1;

  BSDispatchQueueAssertMain();
  v12 = v5;
  sub_18E6476BC(a5, &v11);
}

uint64_t (*sub_18E647CD8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647D3C;
}

uint64_t sub_18E647D54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  BSDispatchQueueAssertMain();
  v7 = v1;
  return sub_18E6476BC(sub_18E6492F8, &v6);
}

uint64_t (*sub_18E647DD0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647E34;
}

uint64_t sub_18E647E4C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily;
  swift_beginAccess();
  *(v1 + v3) = v2;
  BSDispatchQueueAssertMain();
  v6 = v1;
  return sub_18E6476BC(sub_18E649300, &v5);
}

uint64_t (*sub_18E647EC0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647F24;
}

uint64_t sub_18E647F3C(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_baseContentTouchedDown;
  swift_beginAccess();
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  v6 = v1;
  return sub_18E6476BC(sub_18E649304, &v5);
}

uint64_t (*sub_18E647FB0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E648014;
}

uint64_t sub_18E64802C(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    v8 = BSDispatchQueueAssertMain();
    MEMORY[0x1EEE9AC00](v8);
    v9[2] = v7;
    return sub_18E6476BC(a3, v9);
  }

  return result;
}

uint64_t sub_18E6480D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = [v3 _FBSScene];
  v6 = [v5 clientSettings];

  if (swift_dynamicCastObjCProtocolConditional())
  {
    ObjectType = swift_getObjectType();
    v8 = a3(ObjectType);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_18E648180(void *a1, uint64_t (*a2)(__int128 *))
{
  v3 = a1;
  swift_getAtKeyPath();

  return a2(&v5);
}

void sub_18E6481EC(void *a1, void (*a2)(void **))
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v4 = a1;
    swift_getAtKeyPath();

    v5 = v6;
    a2(&v6);
  }

  else
  {
    sub_18E65FCC0();
    __break(1u);
  }
}

unint64_t sub_18E6482C8(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_18E6482E4(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2], a1[3]);
}

void *sub_18E64832C(uint64_t a1)
{
  v2 = sub_18E648F6C(a1, *(v1 + 16), *(v1 + 24));
  v3 = v2;
  return v2;
}

uint64_t sub_18E64835C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_18E648474()
{
  result = qword_1EAC8A2E0;
  if (!qword_1EAC8A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A2E0);
  }

  return result;
}

id sub_18E648F0C(void *a1, uint64_t *a2, SEL *a3)
{
  v6 = *(v3 + 16);
  v7 = *a2;
  swift_beginAccess();
  return [a1 *a3];
}

uint64_t sub_18E648F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = &unk_1F01BC4E0;
  v5 = swift_dynamicCastObjCProtocolUnconditional();
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady;
  swift_beginAccess();
  sub_18E65DA4C(*(a2 + v7), ObjectType);
  v8 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_contentPayloadID;
  swift_beginAccess();
  [v5 setContentPayloadID_];
  v9 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_backgroundTintColor;
  swift_beginAccess();
  v10 = *(a2 + v9);
  v11 = v10;
  sub_18E65D840(v10, ObjectType);
  v12 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_textColor;
  swift_beginAccess();
  v13 = *(a2 + v12);
  v14 = v13;
  sub_18E65D8A0(v13, ObjectType);
  v15 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_resolvedMetrics;
  swift_beginAccess();
  [v5 setResolvedMetrics_];
  v16 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects;
  swift_beginAccess();
  v17 = *(a2 + v16);
  type metadata accessor for CGRect(0);

  v18 = sub_18E65F990();

  [v5 setActivityHostTouchRestrictedRects_];

  v19 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_idleTimerDisabled;
  swift_beginAccess();
  sub_18E65DA58(*(a2 + v19), ObjectType);
  v20 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily;
  swift_beginAccess();
  v22 = *(a2 + v20);
  sub_18E65DA64(&v22);
  return a3;
}

void sub_18E649184(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_18E6481EC(a1, *(v1 + 16));
}

uint64_t objectdestroy_293Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E6491D8(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_18E648180(a1, *(v1 + 16));
}

uint64_t objectdestroy_296Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id ActivitySceneMetrics.__allocating_init(size:cornerRadius:edgeInsets:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v9[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  v11 = &v9[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  *v11 = a2;
  v11[1] = a3;
  *&v9[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = a4;
  swift_beginAccess();
  *&v9[v10] = a1;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

double sub_18E6493FC()
{
  v1 = v0 + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_18E64949C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double sub_18E64959C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E649634(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_18E649730()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E6497DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_18E649834(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id ActivitySceneMetrics.__allocating_init(xpcDictionary:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_18E64A59C();
  swift_unknownObjectRelease();
  return v2;
}

id ActivitySceneMetrics.init(xpcDictionary:)()
{
  v0 = sub_18E64A59C();
  swift_unknownObjectRelease();
  return v0;
}

void sub_18E6499B0(uint64_t a1)
{
  if (a1)
  {
    v2 = (v1 + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    BSSerializeCGSizeToXPCDictionaryWithKey();
    v5 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
    swift_beginAccess();
    v6 = *(v1 + v5);
    BSSerializeDoubleToXPCDictionaryWithKey();
    v7 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
    swift_beginAccess();
    v8 = *(v1 + v7);
    if (v8)
    {
      v9 = v8;
      v10 = [v9 bs_secureEncoded];
      if (v10)
      {
        v11 = v10;
        v12 = sub_18E65F420();
        v14 = v13;

        v15 = sub_18E65F410();
        sub_18E64A6D0(v12, v14);
      }

      else
      {
        v15 = 0;
      }

      BSSerializeDataToXPCDictionaryWithKey();
    }
  }
}

id ActivitySceneMetrics.init(size:cornerRadius:edgeInsets:)(uint64_t a1, double a2, double a3, double a4)
{
  v6 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  v7 = &v4[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  *v7 = a2;
  v7[1] = a3;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = a4;
  swift_beginAccess();
  *&v4[v6] = a1;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for ActivitySceneMetrics();
  return objc_msgSendSuper2(&v9, sel_init);
}

id ActivitySceneMetrics.__allocating_init(size:cornerRadius:)(double a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  v9 = &v7[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  *v9 = a1;
  v9[1] = a2;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = a3;
  swift_beginAccess();
  *&v7[v8] = 0;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id ActivitySceneMetrics.init(size:cornerRadius:)(double a1, double a2, double a3)
{
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  v5 = &v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  *v5 = a1;
  v5[1] = a2;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = a3;
  swift_beginAccess();
  *&v3[v4] = 0;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for ActivitySceneMetrics();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_18E649E10(uint64_t a1)
{
  sub_18E61ED24(a1, v19);
  if (!v20)
  {
    sub_18E61D6A8(v19);
    goto LABEL_11;
  }

  type metadata accessor for ActivitySceneMetrics();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v15 = 0;
    return v15 & 1;
  }

  v2 = (v1 + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  v5 = &v18[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  swift_beginAccess();
  if (v4 != *v5)
  {
    goto LABEL_10;
  }

  if (v3 != v5[1])
  {
    goto LABEL_10;
  }

  v6 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  if (v7 != *&v18[v8])
  {
    goto LABEL_10;
  }

  v9 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v12 = *&v18[v11];
  if (!v10)
  {
    v17 = v12;

    if (!v12)
    {
      v15 = 1;
      return v15 & 1;
    }

    goto LABEL_11;
  }

  if (!v12)
  {
LABEL_10:

    goto LABEL_11;
  }

  type metadata accessor for ActivityEdgeInsets();
  v13 = v12;
  v14 = v10;
  v15 = sub_18E65FB20();

  return v15 & 1;
}

void sub_18E64A060(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_18E65F8F0();
  [a1 encodeCGSize:v6 forKey:{v4, v5}];

  v7 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  *&v4 = *(v1 + v7);
  v8 = sub_18E65F8F0();
  LODWORD(v9) = LODWORD(v4);
  [a1 encodeFloat:v8 forKey:v9];

  v10 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11)
  {
    v12 = v11;
    v13 = sub_18E65F8F0();
    [a1 encodeObject:v12 forKey:v13];
  }
}

id ActivitySceneMetrics.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E64A748(a1);

  return v4;
}

id ActivitySceneMetrics.init(coder:)(void *a1)
{
  v2 = sub_18E64A748(a1);

  return v2;
}

uint64_t sub_18E64A340()
{
  v1 = v0;
  sub_18E65FC70();

  v2 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size;
  swift_beginAccess();
  v11 = *(v1 + v2);
  type metadata accessor for CGSize(0);
  v3 = sub_18E65F910();
  MEMORY[0x193AD0160](v3);

  MEMORY[0x193AD0160](0xD000000000000011, 0x800000018E669D60);
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = sub_18E65F9E0();
  MEMORY[0x193AD0160](v6);

  MEMORY[0x193AD0160](0x692065676465202CLL, 0xEF203A737465736ELL);
  v7 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v8 = *(v1 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A1A0, &qword_18E665048);
  v9 = sub_18E65F910();
  MEMORY[0x193AD0160](v9);

  return 0x203A657A6953;
}

id ActivitySceneMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySceneMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E64A59C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v0[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  BSDeserializeCGSizeFromXPCDictionaryWithKey();
  v2 = &v0[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  *v2 = v3;
  *(v2 + 1) = v4;
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  *&v0[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = v5;
  v6 = BSDeserializeDataFromXPCDictionaryWithKey();
  if (v6)
  {
    v7 = v6;
    v8 = sub_18E65F420();
    v10 = v9;

    type metadata accessor for ActivityEdgeInsets();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = sub_18E65F410();
    v13 = [ObjCClassFromMetadata bs:v12 secureDecodedFromData:?];
    sub_18E64A6D0(v8, v10);

    swift_beginAccess();
    v14 = *&v0[v1];
    *&v0[v1] = v13;
  }

  v16.receiver = v0;
  v16.super_class = type metadata accessor for ActivitySceneMetrics();
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_18E64A6D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_18E64A748(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  v5 = sub_18E65F8F0();
  [a1 decodeCGSizeForKey_];
  v7 = v6;
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  *v10 = v7;
  *(v10 + 1) = v9;
  v11 = sub_18E65F8F0();
  [a1 decodeFloatForKey_];
  LODWORD(v7) = v12;

  *&v2[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = *&v7;
  v13 = sub_18E65F8F0();
  v14 = [a1 containsValueForKey_];

  if (v14)
  {
    type metadata accessor for ActivityEdgeInsets();
    v15 = sub_18E65FAF0();
    swift_beginAccess();
    v16 = *&v2[v4];
    *&v2[v4] = v15;
  }

  v18.receiver = v2;
  v18.super_class = type metadata accessor for ActivitySceneMetrics();
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_18E64AB6C()
{
  result = [objc_opt_self() weakToStrongObjectsMapTable];
  qword_1EAC8A310 = result;
  return result;
}

id sub_18E64ABA8(void *a1)
{
  if (qword_1EAC89950 != -1)
  {
    swift_once();
  }

  v2 = [qword_1EAC8A310 objectForKey_];
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC18ActivityUIServicesP33_42B3556390A22B89B98C4663B8A10CA229_FBSSceneSettingsObserverImpl__observers;
    swift_beginAccess();

    MEMORY[0x193AD01B0](v5);
    if (*((*(v3 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = *((*(v3 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_18E65F9C0();
    }

    sub_18E65F9D0();
    swift_endAccess();
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for _FBSSceneSettingsObserverImpl()) init];
    v6 = OBJC_IVAR____TtC18ActivityUIServicesP33_42B3556390A22B89B98C4663B8A10CA229_FBSSceneSettingsObserverImpl__observers;
    swift_beginAccess();

    MEMORY[0x193AD01B0](v7);
    if (*((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_18E65F9C0();
    }

    sub_18E65F9D0();
    swift_endAccess();
    [a1 addObserver_];
    [qword_1EAC8A310 setObject:v3 forKey:a1];
  }

  return v3;
}

uint64_t sub_18E64AD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC18ActivityUIServicesP33_42B3556390A22B89B98C4663B8A10CA229_FBSSceneSettingsObserverImpl__observers;
  swift_beginAccess();

  v6 = sub_18E64B0E8((a2 + v5), a3);

  v8 = *(a2 + v5);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v10 = *(a2 + v5);
    }

    result = sub_18E65FBC0();
    v9 = result;
    if (result >= v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= v6)
    {
LABEL_3:
      sub_18E64DB90(v6, v9);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E64AE44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

id sub_18E64AF78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _FBSSceneSettingsObserverImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18E64AFE4(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_18E65FBC0();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x193AD04B0](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_18E64B0E8(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_18E64AFE4(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_18E65FBC0();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_18E65FBC0())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x193AD04B0](v11, v7);
    swift_unknownObjectRelease();
    if (v19 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x193AD04B0](v10, v7);
        v16 = MEMORY[0x193AD04B0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_18E64DB28(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = sub_18E64DB28(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
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
  return sub_18E65FBC0();
}

void sub_18E64B310(void *a1)
{
  v3 = [a1 settingsDiff];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 settings];
    v6 = OBJC_IVAR____TtC18ActivityUIServicesP33_42B3556390A22B89B98C4663B8A10CA229_FBSSceneSettingsObserverImpl__observers;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (v7 >> 62)
    {
LABEL_21:
      v8 = sub_18E65FBC0();
      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_4:

        v9 = 0;
        v17 = v5;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x193AD04B0](v9, v7);
            v14 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v13 = *(v7 + 8 * v9 + 32);

            v14 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_19:
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          if (v13[3])
          {
            v15 = v13[2];
            v16 = v13[3];
            swift_bridgeObjectRetain_n();
            if (([v4 containsProperty_] & 1) == 0)
            {

              goto LABEL_8;
            }

            if (!v5)
            {
              __break(1u);
              return;
            }

            v10 = v13[5];
            v18 = v13[4];

            v11 = v5;

            objc_opt_self();
            v12 = swift_dynamicCastObjCClassUnconditional();
            v18(v12);

            v5 = v17;
          }

LABEL_8:
          ++v9;
          if (v14 == v8)
          {

            return;
          }
        }
      }
    }
  }
}

uint64_t ActivityInstanceIdentity.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18E65F4C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActivityInstanceIdentity.hostIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ActivityInstanceIdentity() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ActivityInstanceIdentity()
{
  result = qword_1EAC8A390;
  if (!qword_1EAC8A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityInstanceIdentity.init(descriptor:hostIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_18E65F4C0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ActivityInstanceIdentity();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_18E64B6DC()
{
  result = sub_18E65F4C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id ActivitySceneDescriptor.__allocating_init(activitySceneType:activityDescriptor:metricsRequest:payloadID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v14 = &v12[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v14 = v13;
  v14[1] = v15;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = a1;
  v16 = sub_18E65F4C0();
  sub_18E64CDEC(&unk_1EAC894E0, MEMORY[0x1E6959B98]);
  *&v12[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v12[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], a2, v16);
  *&v12[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = a3;
  v18 = &v12[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  *v18 = a4;
  *(v18 + 1) = a5;
  v21.receiver = v12;
  v21.super_class = v6;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v17 + 8))(a2, v16);
  return v19;
}

unint64_t sub_18E64B8E8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18E64CB04(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ActivitySceneDescriptor.activityIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier + 8);

  return v1;
}

uint64_t ActivitySceneDescriptor.activityDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor;
  v4 = sub_18E65F4C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivitySceneDescriptor.payloadID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID);
  v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID + 8);

  return v1;
}

id sub_18E64BD30()
{
  v0 = type metadata accessor for ActivitySceneMetrics();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size] = xmmword_18E6644E0;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = 0x4028000000000000;
  swift_beginAccess();
  *&v1[v2] = 0;
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_18E64BDD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18E65F580();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18E65F4D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18E65F480();
  if (*(v2 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) == 4)
  {
    (*(v10 + 104))(v13, *MEMORY[0x1E6959BF8], v9);
    if (*(v14 + 16))
    {
      v15 = sub_18E64C584(v13);
      if (v16)
      {
        sub_18E64CB14(*(v14 + 56) + *(v5 + 72) * v15, v8);
        (*(v10 + 8))(v13, v9);

        return sub_18E64CB78(v8, a1);
      }
    }

    (*(v10 + 8))(v13, v9);
  }

  else
  {
  }

  return sub_18E65F490();
}

id ActivitySceneDescriptor.init(activitySceneType:activityDescriptor:metricsRequest:payloadID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v13 = &v6[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v13 = v12;
  v13[1] = v14;
  *&v6[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = a1;
  v15 = sub_18E65F4C0();
  sub_18E64CDEC(&unk_1EAC894E0, MEMORY[0x1E6959B98]);
  *&v6[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v6[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], a2, v15);
  *&v6[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = a3;
  v17 = &v6[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  *v17 = a4;
  *(v17 + 1) = a5;
  v20.receiver = v6;
  v20.super_class = type metadata accessor for ActivitySceneDescriptor();
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v16 + 8))(a2, v15);
  return v18;
}

id ActivitySceneDescriptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySceneDescriptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneDescriptor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18E64C50C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_18E65FEB0();
  sub_18E65F920();
  v6 = sub_18E65FF10();

  return sub_18E64C6EC(a1, a2, v6);
}

unint64_t sub_18E64C584(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_18E65F4D0();
  sub_18E64CDEC(&qword_1EAC894D8, MEMORY[0x1E6959C18]);
  v5 = sub_18E65F8C0();

  return sub_18E64C7A4(a1, v5);
}

unint64_t sub_18E64C61C(unsigned int a1)
{
  v3 = MEMORY[0x193AD06C0](*(v1 + 40), a1, 4);

  return sub_18E64C964(a1, v3);
}

unint64_t sub_18E64C664(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_18E65FBF0();

  return sub_18E64C9D0(a1, v5);
}

unint64_t sub_18E64C6A8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_18E65FEA0();

  return sub_18E64CA98(a1, v4);
}

unint64_t sub_18E64C6EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_18E65FDE0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_18E64C7A4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_18E65F4D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_18E64CDEC(&qword_1EAC894D0, MEMORY[0x1E6959C18]);
      v17 = sub_18E65F8E0();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_18E64C964(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18E64C9D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_18E64CE34(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x193AD0430](v9, a1);
      sub_18E64CE90(v9);
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

unint64_t sub_18E64CA98(uint64_t a1, uint64_t a2)
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

unint64_t sub_18E64CB04(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

uint64_t sub_18E64CB14(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E65F580();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E64CB78(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E65F580();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ActivitySceneDescriptor()
{
  result = qword_1ED764F18;
  if (!qword_1ED764F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_18E64CC2C()
{
  result = qword_1EAC8A3B0;
  if (!qword_1EAC8A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A3B0);
  }

  return result;
}

uint64_t sub_18E64CC98()
{
  result = sub_18E65F4C0();
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

uint64_t sub_18E64CDEC(unint64_t *a1, void (*a2)(uint64_t))
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

id ActivityModalFullScreenHostViewController.__allocating_init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v10 = sub_18E65F4C0();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v7);
  v15 = v11[2];
  v15(v14, a1, v10);
  v16 = type metadata accessor for ActivitySceneDescriptor();
  v17 = objc_allocWithZone(v16);
  v18 = a2;
  v19 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v20 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v20 = v19;
  v20[1] = v21;
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 4;
  sub_18E6220E4(&unk_1EAC894E0);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  v15(&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v14, v10);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v18;
  v22 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v32.receiver = v17;
  v32.super_class = v16;
  v24 = objc_msgSendSuper2(&v32, sel_init);
  v25 = v11[1];
  v25(v14, v10);
  v26 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v24, v30, v31);

  v25(a1, v10);
  return v26;
}

id ActivityModalFullScreenHostViewController.init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_18E64D3C0(a1, a2, a3, a4, a5, a6);

  return v7;
}

id sub_18E64D27C()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityModalFullScreenSceneSpecification());

  return [v0 init];
}

id ActivityModalFullScreenHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityModalFullScreenHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E64D3C0(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v28 = a4;
  v29 = a5;
  v9 = sub_18E65F4C0();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v10[2];
  v15(v14, a1, v9, v12);
  v16 = type metadata accessor for ActivitySceneDescriptor();
  v17 = objc_allocWithZone(v16);
  v18 = a2;
  v19 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v20 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v20 = v19;
  v20[1] = v21;
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 4;
  sub_18E6220E4(&unk_1EAC894E0);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  (v15)(&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v14, v9);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v18;
  v22 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v23 = v28;
  *v22 = a3;
  *(v22 + 1) = v23;
  v31.receiver = v17;
  v31.super_class = v16;
  v24 = objc_msgSendSuper2(&v31, sel_init);
  v25 = v10[1];
  v25(v14, v9);
  v26 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v24, v29, v30);
  v25(a1, v9);
  return v26;
}

id sub_18E64D63C()
{
  result = [objc_opt_self() weakToStrongObjectsMapTable];
  qword_1EAC893C0 = result;
  return result;
}

id sub_18E64D678(void *a1)
{
  if (qword_1EAC893B8 != -1)
  {
    swift_once();
  }

  v2 = [qword_1EAC893C0 objectForKey_];
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC18ActivityUIServicesP33_DD5DF7862A88440F78F9DB17ABF64C4334_FBSceneClientSettingsObserverImpl__observers;
    swift_beginAccess();

    MEMORY[0x193AD01B0](v5);
    if (*((*(v3 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = *((*(v3 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_18E65F9C0();
    }

    sub_18E65F9D0();
    swift_endAccess();
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for _FBSceneClientSettingsObserverImpl()) init];
    v6 = OBJC_IVAR____TtC18ActivityUIServicesP33_DD5DF7862A88440F78F9DB17ABF64C4334_FBSceneClientSettingsObserverImpl__observers;
    swift_beginAccess();

    MEMORY[0x193AD01B0](v7);
    if (*((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_18E65F9C0();
    }

    sub_18E65F9D0();
    swift_endAccess();
    [a1 addObserver_];
    [qword_1EAC893C0 setObject:v3 forKey:a1];
  }

  return v3;
}

uint64_t sub_18E64D850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC18ActivityUIServicesP33_DD5DF7862A88440F78F9DB17ABF64C4334_FBSceneClientSettingsObserverImpl__observers;
  swift_beginAccess();

  v6 = sub_18E64DBA8((a2 + v5), a3);

  v8 = *(a2 + v5);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v10 = *(a2 + v5);
    }

    result = sub_18E65FBC0();
    v9 = result;
    if (result >= v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= v6)
    {
LABEL_3:
      sub_18E64DED4(v6, v9, type metadata accessor for ClientObserverMetadata);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

id sub_18E64DA1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _FBSceneClientSettingsObserverImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E64DA88(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_18E65FBC0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_18E65FC90();
  *v1 = result;
  return result;
}

uint64_t sub_18E64DB2C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_18E65FBC0();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_18E65FC90();
}

uint64_t sub_18E64DBA8(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_18E64AFE4(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_18E65FBC0();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_18E65FBC0())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x193AD04B0](v11, v7);
    swift_unknownObjectRelease();
    if (v19 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x193AD04B0](v10, v7);
        v16 = MEMORY[0x193AD04B0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_18E64DB2C(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = sub_18E64DB2C(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
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
  return sub_18E65FBC0();
}

uint64_t sub_18E64DDD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_18E65FBC0();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_18E65FBC0();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_18E64DED4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_18E65FBC0();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = sub_18E65FBC0();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_18E64DA88(result);
    return sub_18E64DDD0(v6, v5, 0, v3);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_18E64DFB0(void *a1)
{
  v3 = [a1 transitionContext];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 animationFence];

    if (v5)
    {
      [objc_opt_self() _synchronizeDrawingWithFence_];
    }
  }

  v6 = [a1 settingsDiff];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 settings];
    v9 = OBJC_IVAR____TtC18ActivityUIServicesP33_DD5DF7862A88440F78F9DB17ABF64C4334_FBSceneClientSettingsObserverImpl__observers;
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (v10 >> 62)
    {
LABEL_24:
      v11 = sub_18E65FBC0();
      if (v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_7:

        v12 = 0;
        v20 = v8;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x193AD04B0](v12, v10);
            v17 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v16 = *(v10 + 8 * v12 + 32);

            v17 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }
          }

          if (v16[3])
          {
            v18 = v16[2];
            v19 = v16[3];
            swift_bridgeObjectRetain_n();
            if (([v7 containsProperty_] & 1) == 0)
            {

              goto LABEL_11;
            }

            if (!v8)
            {
              __break(1u);
              return;
            }

            v13 = v16[5];
            v21 = v16[4];

            v14 = v8;

            objc_opt_self();
            v15 = swift_dynamicCastObjCClassUnconditional();
            v21(v15);

            v8 = v20;
          }

LABEL_11:
          ++v12;
          if (v17 == v11)
          {

            return;
          }
        }
      }
    }
  }
}

void sub_18E64E238(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_18E65F900();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

uint64_t sub_18E64E28C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_18E65F4C0();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  swift_getObjectType();
  return sub_18E63E528(v8);
}

void sub_18E64E364(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 payloadID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18E65F900();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_18E64E3CC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_18E65F8F0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setPayloadID_];
}

uint64_t static SceneSettingScopes.ApplicationSettings.FrameKey.keyIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_1EAC8A3D0 = a1;
  return result;
}

uint64_t static SceneSettingScopes.ActivitySettings.ActivityIdentifierKey.keyIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_1EAC8A3E8 = a1;
  return result;
}

uint64_t static SceneSettingScopes.ActivitySettings.ActivityMetricsKey.keyIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_1EAC8A400 = a1;
  return result;
}

uint64_t static SceneSettingScopes.ActivitySettings.ActivityHostIdentifierKey.keyIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_1EAC8A408 = a1;
  return result;
}

uint64_t static SceneSettingScopes.ActivitySettings.ActivityDescriptorKey.keyIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_1EAC8A420 = a1;
  return result;
}

uint64_t static SceneSettingScopes.ActivitySettings.ActivityMetricsRequestKey.keyIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_1EAC8A438 = a1;
  return result;
}

uint64_t static SceneSettingScopes.ActivitySettings.ActivityPayloadIDKey.keyIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_1EAC8A440 = a1;
  return result;
}

uint64_t static SceneSettingScopes.ActivitySettings.WantsBaseContentTouchEventsKey.keyIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_1EAC8A458 = a1;
  return result;
}

uint64_t sub_18E64F10C(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_18E64F170(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_18E64F228(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
}

uint64_t sub_18E64F2A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;

  return v6;
}

void SceneSettingDynamicLookup.subscript.getter()
{
  sub_18E65FCC0();
  __break(1u);
}

{
  sub_18E65FCC0();
  __break(1u);
}

{
  SceneSettingDynamicLookup.subscript.getter();
}

uint64_t keypath_get_3Tm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t dispatch thunk of TypedSettings.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))();
}

{
  return (*(a5 + 32))();
}

uint64_t sub_18E64F5A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = (*(*(a2 + 8) + 16))(a1);
  if (v5 > 3003)
  {
    if (v5 <= 3006 || v5 == 3007)
    {
      goto LABEL_10;
    }
  }

  else if (v5 > 3001 || v5 == -1 || v5 == 3001)
  {
LABEL_10:
    result = swift_getKeyPath();
    v7 = *(v3 + OBJC_IVAR____TtC18ActivityUIServices28ActivitySceneSettings_Legacy__originalSettings);
    if (v7)
    {
      swift_dynamicCastObjCProtocolUnconditional();
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4C0, qword_18E665CE8);
      swift_getAtAnyKeyPath();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89DE0, &qword_18E663570);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v10 = swift_dynamicCast();
      return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v10 ^ 1u, 1, AssociatedTypeWitness);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v11 = swift_getAssociatedTypeWitness();
  v12 = *(*(v11 - 8) + 56);

  return v12(a3, 1, 1, v11);
}

id sub_18E64FA4C(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  *&a1[*a3] = 0;
  v5.receiver = a1;
  v5.super_class = a4();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_18E64FAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = objc_allocWithZone(a4());

  return [v5 initWithSettings_];
}

id sub_18E64FB10(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (sub_18E650FDC(a3))
  {
    (*(v7 + 8))();
LABEL_5:
    v11 = sub_18E65F8F0();

    goto LABEL_6;
  }

  v13.receiver = a1;
  v13.super_class = a4();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v13, sel_keyDescriptionForSetting_, a3);
  if (v9)
  {
    v10 = v9;
    sub_18E65F900();

    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

uint64_t sub_18E64FC48(uint64_t *a1, uint64_t a2)
{
  v45 = a2;
  v3 = *a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAC8A4A8, &qword_18E665CA8);
  v49 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_18E65FB40();
  v57 = sub_18E651894(&qword_1EAC894F0);
  v5 = sub_18E65F710();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v52 = v41 - v7;
  v8 = sub_18E65F750();
  v43 = v5;
  WitnessTable = swift_getWitnessTable();
  v51 = WitnessTable;
  v50 = swift_getWitnessTable();
  v61 = v5;
  v62 = v8;
  v63 = WitnessTable;
  v64 = v50;
  v48 = sub_18E65F720();
  v47 = swift_getWitnessTable();
  v54 = sub_18E65F700();
  v53 = swift_getWitnessTable();
  v56 = sub_18E65F6F0();
  v59 = *(v56 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v46 = v41 - v11;
  v12 = v4;
  v44 = *(v4 - 8);
  v13 = v44;
  v14 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v41 - v19;
  BSDispatchQueueAssertMain();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v22 = [Strong settings];

  v23 = [objc_allocWithZone(type metadata accessor for ActivitySceneSettings_Legacy()) initWithSettings_];
  v24 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v42 = v20;
  v25 = v45;
  sub_18E64F5A4(v24, v45, v20);

  (*(v13 + 16))(v17, v20, v4);
  sub_18E65F760();
  v26 = v49;
  v27 = v25;
  v28 = v41[1];
  v61 = sub_18E650E88(v49, v25);
  v29 = swift_allocObject();
  v29[2] = v25;
  v29[3] = v28;
  v29[4] = a1;
  v30 = swift_allocObject();
  v30[2] = v26;
  v30[3] = v25;
  v30[4] = sub_18E6518E4;
  v30[5] = v29;
  v31 = v28;

  v32 = v52;
  sub_18E65F7B0();

  v33 = v43;
  v34 = sub_18E65F7C0();
  (*(v60 + 8))(v32, v33);
  v61 = v34;
  v35 = sub_18E65F770();

  v61 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v26;
  *(v36 + 24) = v27;
  v37 = v46;
  sub_18E65F7A0();

  v38 = v56;
  swift_getWitnessTable();
  v39 = sub_18E65F790();

  (*(v59 + 8))(v37, v38);
  (*(v44 + 8))(v42, v12);
  return v39;
}

void sub_18E6502A4(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = [Strong settings];

  v8 = [objc_allocWithZone(type metadata accessor for ActivitySceneSettings_Legacy()) initWithSettings_];
  sub_18E64F5A4(*(*a1 + *MEMORY[0x1E69E77B0] + 8), a2, a3);
}

uint64_t sub_18E650390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_18E65FB40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id sub_18E6504E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18E6505A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4D0, &unk_18E664A20);
  result = sub_18E65FCF0();
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      result = MEMORY[0x193AD06C0](*(v8 + 40), v21, 4);
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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

uint64_t sub_18E650814(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A4B8, &unk_18E665CB0);
  result = sub_18E65FCF0();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_18E65FEA0();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_18E650A84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4D0, &unk_18E664A20);
  v2 = *v0;
  v3 = sub_18E65FCE0();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_18E650BE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A4B8, &unk_18E665CB0);
  v2 = *v0;
  v3 = sub_18E65FCE0();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

unint64_t sub_18E650D3C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_18E64C6A8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_18E650814(v14, a3 & 1);
      v18 = *v4;
      result = sub_18E64C6A8(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_18E65FE10();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_18E650BE0();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_18E650E88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 8);
  v6 = *(v5 + 16);
  v7 = v6(a1, v5);
  v8 = OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_publishersByKeyIndex;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (*(v9 + 16) && (v10 = sub_18E64C6A8(v7), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4A8, &qword_18E665CA8);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_18E65F740();
    v16 = v6(a1, v5);
    swift_beginAccess();

    v17 = *(v3 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v3 + v8);
    *(v3 + v8) = 0x8000000000000000;
    sub_18E650D3C(v12, v16, isUniquelyReferenced_nonNull_native);
    *(v3 + v8) = v20;
    swift_endAccess();
  }

  return v12;
}

ValueMetadata *sub_18E650FDC(uint64_t a1)
{
  swift_beginAccess();
  if (qword_1EAC8A400 == a1)
  {
    return &type metadata for SceneSettingScopes.ActivitySettings.ActivityMetricsKey;
  }

  swift_beginAccess();
  if (qword_1EAC8A3E8 == a1)
  {
    return &type metadata for SceneSettingScopes.ActivitySettings.ActivityIdentifierKey;
  }

  swift_beginAccess();
  if (qword_1EAC8A408 == a1)
  {
    return &type metadata for SceneSettingScopes.ActivitySettings.ActivityHostIdentifierKey;
  }

  swift_beginAccess();
  if (qword_1EAC8A420 == a1)
  {
    return &type metadata for SceneSettingScopes.ActivitySettings.ActivityDescriptorKey;
  }

  swift_beginAccess();
  if (qword_1EAC8A438 == a1)
  {
    return &type metadata for SceneSettingScopes.ActivitySettings.ActivityMetricsRequestKey;
  }

  swift_beginAccess();
  if (qword_1EAC8A440 == a1)
  {
    return &type metadata for SceneSettingScopes.ActivitySettings.ActivityPayloadIDKey;
  }

  swift_beginAccess();
  if (qword_1EAC8A458 == a1)
  {
    return &type metadata for SceneSettingScopes.ActivitySettings.WantsBaseContentTouchEventsKey;
  }

  else
  {
    return 0;
  }
}

id sub_18E6511A8(id result, uint64_t *a2, uint64_t (*a3)(void))
{
  v4 = *a2;
  *&v3[*a2] = 0;
  if (result)
  {
    v6 = result;
    [result copy];
    sub_18E65FB60();
    swift_unknownObjectRelease();
    sub_18E651848();
    swift_dynamicCast();
    v7 = *&v3[v4];
    *&v3[v4] = v9;

    v8.receiver = v3;
    v8.super_class = a3();
    return objc_msgSendSuper2(&v8, sel_initWithSettings_, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18E65126C(void *a1)
{
  v2 = v1;
  v4 = [a1 settingsDiff];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 settings];
    if ([v5 containsProperty_])
    {
      v7 = OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_publishersByKeyIndex;
      swift_beginAccess();
      v8 = *(v2 + v7);
      if (*(v8 + 16))
      {
        v9 = sub_18E64C6A8(-1);
        if (v10)
        {
          v11 = *(*(v8 + 56) + 8 * v9);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4A8, &qword_18E665CA8);
          sub_18E651894(&unk_1EAC89340);
          sub_18E65F780();
        }
      }
    }

    if (v6)
    {
      if (swift_dynamicCastObjCProtocolConditional())
      {
        if ([v5 containsProperty_])
        {
          v12 = OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_publishersByKeyIndex;
          swift_beginAccess();
          v13 = *(v2 + v12);
          if (*(v13 + 16))
          {
            v14 = sub_18E64C6A8(3001);
            if (v15)
            {
              v16 = *(*(v13 + 56) + 8 * v14);

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4A8, &qword_18E665CA8);
              sub_18E651894(&unk_1EAC89340);
              sub_18E65F780();
            }
          }
        }

        if ([v5 containsProperty_])
        {
          v17 = OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_publishersByKeyIndex;
          swift_beginAccess();
          v18 = *(v2 + v17);
          if (*(v18 + 16))
          {
            v19 = sub_18E64C6A8(3002);
            if (v20)
            {
              v21 = *(*(v18 + 56) + 8 * v19);

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4A8, &qword_18E665CA8);
              sub_18E651894(&unk_1EAC89340);
              sub_18E65F780();
            }
          }
        }

        if ([v5 containsProperty_])
        {
          v22 = OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_publishersByKeyIndex;
          swift_beginAccess();
          v23 = *(v2 + v22);
          if (*(v23 + 16))
          {
            v24 = sub_18E64C6A8(3003);
            if (v25)
            {
              v26 = *(*(v23 + 56) + 8 * v24);

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4A8, &qword_18E665CA8);
              sub_18E651894(&unk_1EAC89340);
              sub_18E65F780();
            }
          }
        }

        if ([v5 containsProperty_])
        {
          v27 = OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_publishersByKeyIndex;
          swift_beginAccess();
          v28 = *(v2 + v27);
          if (*(v28 + 16))
          {
            v29 = sub_18E64C6A8(3004);
            if (v30)
            {
              v31 = *(*(v28 + 56) + 8 * v29);

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4A8, &qword_18E665CA8);
              sub_18E651894(&unk_1EAC89340);
              sub_18E65F780();
            }
          }
        }

        if ([v5 containsProperty_])
        {
          v32 = OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_publishersByKeyIndex;
          swift_beginAccess();
          v33 = *(v2 + v32);
          if (*(v33 + 16))
          {
            v34 = sub_18E64C6A8(3005);
            if (v35)
            {
              v36 = *(*(v33 + 56) + 8 * v34);

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4A8, &qword_18E665CA8);
              sub_18E651894(&unk_1EAC89340);
              sub_18E65F780();
            }
          }
        }

        if ([v5 containsProperty_])
        {
          v37 = OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_publishersByKeyIndex;
          swift_beginAccess();
          v38 = *(v2 + v37);
          if (*(v38 + 16))
          {
            v39 = sub_18E64C6A8(3006);
            if (v40)
            {
              v41 = *(*(v38 + 56) + 8 * v39);

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4A8, &qword_18E665CA8);
              sub_18E651894(&unk_1EAC89340);
              sub_18E65F780();
            }
          }
        }

        if ([v5 containsProperty_])
        {
          v42 = OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_publishersByKeyIndex;
          swift_beginAccess();
          v43 = *(v2 + v42);
          if (*(v43 + 16))
          {
            v44 = sub_18E64C6A8(3007);
            if (v45)
            {
              v46 = *(*(v43 + 56) + 8 * v44);

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4A8, &qword_18E665CA8);
              sub_18E651894(&unk_1EAC89340);
              sub_18E65F780();
            }
          }
        }
      }
    }

    else
    {
      v6 = v5;
    }
  }
}

unint64_t sub_18E651848()
{
  result = qword_1EAC894F8;
  if (!qword_1EAC894F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAC894F8);
  }

  return result;
}

uint64_t sub_18E651894(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAC8A4A8, &qword_18E665CA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E6518F0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_18E651918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_18E650390(a1, a2);
}

void keypath_set_148Tm(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = sub_18E65F8F0();
  [v8 *a5];
}

id ActivityTouchEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityTouchEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityTouchEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t JindoDemoAttributes.ContentState.config.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_18E651B50(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_18E64C50C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_18E65FDE0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E651D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_18E65FDE0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_18E651D8C(uint64_t a1)
{
  v2 = sub_18E651F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E651DC8(uint64_t a1)
{
  v2 = sub_18E651F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JindoDemoAttributes.ContentState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A4E8, &qword_18E665EA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E651F9C();

  sub_18E65FF50();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A4F8, &qword_18E665EA8);
  sub_18E6529D8(&qword_1EAC8A500);
  sub_18E65FDA0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_18E651F9C()
{
  result = qword_1EAC8A4F0;
  if (!qword_1EAC8A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A4F0);
  }

  return result;
}

uint64_t JindoDemoAttributes.ContentState.hashValue.getter()
{
  v1 = *v0;
  sub_18E65FEB0();
  sub_18E65286C(v3, v1);
  return sub_18E65FF10();
}

uint64_t JindoDemoAttributes.ContentState.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A508, &qword_18E665EB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E651F9C();
  sub_18E65FF40();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A4F8, &qword_18E665EA8);
    sub_18E6529D8(&qword_1EAC8A510);
    sub_18E65FD60();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_18E652214()
{
  v1 = *v0;
  sub_18E65FEB0();
  sub_18E65286C(v3, v1);
  return sub_18E65FF10();
}

uint64_t sub_18E652264()
{
  v1 = *v0;
  sub_18E65FEB0();
  sub_18E65286C(v3, v1);
  return sub_18E65FF10();
}

uint64_t JindoDemoAttributes.selection.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JindoDemoAttributes.selection.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_18E652360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F697463656C6573 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_18E65FDE0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_18E6523F0(uint64_t a1)
{
  v2 = sub_18E652A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E65242C(uint64_t a1)
{
  v2 = sub_18E652A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JindoDemoAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A518, &qword_18E665EB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E652A44();
  sub_18E65FF50();
  sub_18E65FD80();
  return (*(v4 + 8))(v7, v3);
}

uint64_t JindoDemoAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A528, &qword_18E665EC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E652A44();
  sub_18E65FF40();
  if (!v2)
  {
    v11 = sub_18E65FD40();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_18E652730(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A518, &qword_18E665EB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E652A44();
  sub_18E65FF50();
  sub_18E65FD80();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_18E65286C(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_18E65F920();

    sub_18E65F920();

    result = sub_18E65FF10();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x193AD06F0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6529D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8A4F8, &qword_18E665EA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18E652A44()
{
  result = qword_1EAC8A520;
  if (!qword_1EAC8A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A520);
  }

  return result;
}

unint64_t sub_18E652A9C()
{
  result = qword_1EAC8A530;
  if (!qword_1EAC8A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A530);
  }

  return result;
}

unint64_t sub_18E652AF4()
{
  result = qword_1EAC8A538;
  if (!qword_1EAC8A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A538);
  }

  return result;
}

unint64_t sub_18E652B4C()
{
  result = qword_1EAC8A540;
  if (!qword_1EAC8A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A540);
  }

  return result;
}

unint64_t sub_18E652BA4()
{
  result = qword_1EAC8A548;
  if (!qword_1EAC8A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A548);
  }

  return result;
}

unint64_t sub_18E652BFC()
{
  result = qword_1EAC8A550;
  if (!qword_1EAC8A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A550);
  }

  return result;
}

unint64_t sub_18E652C54()
{
  result = qword_1EAC8A558;
  if (!qword_1EAC8A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A558);
  }

  return result;
}

uint64_t sub_18E652CB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_18E652D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18E652D70()
{
  result = qword_1EAC8A560;
  if (!qword_1EAC8A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A560);
  }

  return result;
}

unint64_t sub_18E652DC8()
{
  result = qword_1EAC8A568;
  if (!qword_1EAC8A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A568);
  }

  return result;
}

unint64_t sub_18E652E20()
{
  result = qword_1EAC8A570;
  if (!qword_1EAC8A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A570);
  }

  return result;
}

unint64_t sub_18E652E78()
{
  result = qword_1EAC8A578;
  if (!qword_1EAC8A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A578);
  }

  return result;
}

unint64_t sub_18E652ED0()
{
  result = qword_1EAC8A580;
  if (!qword_1EAC8A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A580);
  }

  return result;
}

unint64_t sub_18E652F28()
{
  result = qword_1EAC8A588;
  if (!qword_1EAC8A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A588);
  }

  return result;
}

unint64_t ActivityAlertAction.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_18E652F9C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t ActivityAlertAction.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x746E6573657270;
  }

  if (a1 == 1)
  {
    return 0x7373696D736964;
  }

  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

unint64_t sub_18E65302C()
{
  result = qword_1EAC8A590;
  if (!qword_1EAC8A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A590);
  }

  return result;
}

uint64_t sub_18E653080()
{
  if (!*v0)
  {
    return 0x746E6573657270;
  }

  if (*v0 == 1)
  {
    return 0x7373696D736964;
  }

  v2 = *v0;
  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

uint64_t (*sub_18E653138(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E6531C0;
}

void sub_18E6531F0(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = a3;
  v7 = a1;
  [v6 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();

  type metadata accessor for SizeDimensionRequest();
  swift_dynamicCast();
  v8 = *a4;
  v9 = *&v7[*a4];
  *&v7[v8] = v10;
}

void sub_18E6532A8(void *a1, void *a2)
{
  [a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();

  type metadata accessor for SizeDimensionRequest();
  swift_dynamicCast();
  v5 = *(v2 + *a2);
  *(v2 + *a2) = v6;
}

void sub_18E65333C(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a2;
  [*a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();
  type metadata accessor for SizeDimensionRequest();
  swift_dynamicCast();
  v7 = *(v6 + *a5);
  *(v6 + *a5) = v8;
}

uint64_t (*sub_18E6533D0(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E656F6C;
}

void sub_18E653458(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v6 = v3;
    [v6 copy];
    sub_18E65FB60();

    swift_unknownObjectRelease();
    type metadata accessor for SizeDimensionRequest();
    swift_dynamicCast();
    v7 = *(v5 + v4);
    *(v5 + v4) = *(v2 + 40);
  }

  else
  {
    [*(*a1 + 32) copy];
    sub_18E65FB60();

    swift_unknownObjectRelease();
    type metadata accessor for SizeDimensionRequest();
    swift_dynamicCast();
    v8 = *(v5 + v4);
    *(v5 + v4) = *(v2 + 40);
  }

  free(v2);
}

double sub_18E6535C4()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E65365C(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_18E653754()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E6537EC(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_18E6538E4()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E65397C(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_18E653A78()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E653B24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_18E653B7C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_18E653C4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
  v2 = v1;
  return v1;
}

void sub_18E653CD8(void *a1)
{
  if (a1)
  {
    [a1 copy];
    sub_18E65FB60();
    swift_unknownObjectRelease();

    type metadata accessor for ActivityEdgeInsets();
    v3 = swift_dynamicCast();
    v4 = v6;
    if (!v3)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
  *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets) = v4;
}

void (*sub_18E653D80(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_18E653DD4;
}

void sub_18E653DD4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    sub_18E653CD8(v2);
  }

  else
  {
    sub_18E653CD8(*a1);
  }
}

double sub_18E653E60()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest) + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
  v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  v3 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest);
  v4 = *(v3 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type);
  if (v4 == 1)
  {
    v5 = *(v3 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
  }

  else if (!v4)
  {
    *(v3 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
    *(v3 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum);
  }

  return v1 * *(v0 + v2);
}

double sub_18E653FD0()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest) + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
  v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  v3 = *(v0 + v2);
  result = v1 * v3;
  v5 = v3 * *(*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest) + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
  return result;
}

id ActivityItemMetricsRequest.__allocating_init(width:height:cornerRadius:)(void *a1, void *a2, double a3)
{
  v6 = [objc_allocWithZone(v3) initWithWidth:a1 height:a2 cornerRadius:0 edgeInsets:a3 clipMargin:0.0 scaleFactor:1.0];

  return v6;
}

id ActivityItemMetricsRequest.init(width:height:cornerRadius:)(void *a1, void *a2, double a3)
{
  v6 = [v3 initWithWidth:a1 height:a2 cornerRadius:0 edgeInsets:a3 clipMargin:0.0 scaleFactor:1.0];

  return v6;
}

id ActivityItemMetricsRequest.__allocating_init(width:height:cornerRadius:watchDisplayVariant:)(void *a1, void *a2, void *a3, double a4)
{
  v8 = [objc_allocWithZone(v4) initWithWidth:a1 height:a2 cornerRadius:0 edgeInsets:a3 clipMargin:a4 scaleFactor:0.0 watchDisplayVariant:1.0];

  return v8;
}

id ActivityItemMetricsRequest.init(width:height:cornerRadius:watchDisplayVariant:)(void *a1, void *a2, void *a3, double a4)
{
  v8 = [v4 initWithWidth:a1 height:a2 cornerRadius:0 edgeInsets:a3 clipMargin:a4 scaleFactor:0.0 watchDisplayVariant:1.0];

  return v8;
}

id ActivityItemMetricsRequest.__allocating_init(width:height:cornerRadius:edgeInsets:)(void *a1, void *a2, void *a3, double a4)
{
  v8 = [objc_allocWithZone(v4) initWithWidth:a1 height:a2 cornerRadius:a3 edgeInsets:a4 clipMargin:0.0 scaleFactor:1.0];

  return v8;
}

id ActivityItemMetricsRequest.init(width:height:cornerRadius:edgeInsets:)(void *a1, void *a2, void *a3, double a4)
{
  v8 = [v4 initWithWidth:a1 height:a2 cornerRadius:a3 edgeInsets:a4 clipMargin:0.0 scaleFactor:1.0];

  return v8;
}

id ActivityItemMetricsRequest.__allocating_init(width:height:cornerRadius:edgeInsets:clipMargin:)(void *a1, void *a2, void *a3, double a4, double a5)
{
  v9 = [objc_allocWithZone(v5) initWithWidth:a1 height:a2 cornerRadius:a3 edgeInsets:a4 clipMargin:a5 scaleFactor:1.0];

  return v9;
}

id ActivityItemMetricsRequest.init(width:height:cornerRadius:edgeInsets:clipMargin:)(void *a1, void *a2, void *a3, double a4, double a5)
{
  v9 = [v5 initWithWidth:a1 height:a2 cornerRadius:a3 edgeInsets:a4 clipMargin:a5 scaleFactor:1.0];

  return v9;
}

id ActivityItemMetricsRequest.__allocating_init(width:height:cornerRadius:edgeInsets:clipMargin:scaleFactor:)(void *a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v10 = [objc_allocWithZone(v6) initWithWidth:a1 height:a2 cornerRadius:a3 edgeInsets:0 clipMargin:a4 scaleFactor:a5 watchDisplayVariant:a6];

  return v10;
}

id ActivityItemMetricsRequest.init(width:height:cornerRadius:edgeInsets:clipMargin:scaleFactor:)(void *a1, void *a2, void *a3)
{
  v7 = [v3 initWithWidth:a1 height:a2 cornerRadius:a3 edgeInsets:0 clipMargin:? scaleFactor:? watchDisplayVariant:?];

  return v7;
}

id ActivityItemMetricsRequest.__allocating_init(width:height:cornerRadius:edgeInsets:clipMargin:scaleFactor:watchDisplayVariant:)(void *a1, void *a2, void *a3, void *a4, double a5, double a6, double a7)
{
  v14 = objc_allocWithZone(v7);
  v15 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  *&v14[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin] = 0;
  v16 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  *&v14[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor] = 0x3FF0000000000000;
  v17 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  *&v14[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant] = 0;
  v18 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets;
  *&v14[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets] = 0;
  v27 = a1;
  [a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();
  type metadata accessor for SizeDimensionRequest();
  swift_dynamicCast();
  *&v14[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest] = v29;
  [a2 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  *&v14[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest] = v29;
  if (a3)
  {
    [a3 copy];
    sub_18E65FB60();
    swift_unknownObjectRelease();
    type metadata accessor for ActivityEdgeInsets();
    swift_dynamicCast();
    v19 = v29;
  }

  else
  {
    v19 = 0;
  }

  v20 = *&v14[v18];
  *&v14[v18] = v19;

  *&v14[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius] = a5;
  swift_beginAccess();
  *&v14[v15] = a6;
  swift_beginAccess();
  *&v14[v16] = a7;
  swift_beginAccess();
  v21 = *&v14[v17];
  *&v14[v17] = a4;
  v22 = a4;

  v28.receiver = v14;
  v28.super_class = v26;
  v23 = objc_msgSendSuper2(&v28, sel_init);

  return v23;
}

id ActivityItemMetricsRequest.init(width:height:cornerRadius:edgeInsets:clipMargin:scaleFactor:watchDisplayVariant:)(void *a1, void *a2, void *a3, void *a4, double a5, double a6, double a7)
{
  v11 = sub_18E655F48(a1, a2, a3, a4, a5, a6, a7);

  return v11;
}

BOOL sub_18E6548B0()
{
  if (*(*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest) + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) != 0.0 || *(*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest) + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) != 0.0)
  {
    return 1;
  }

  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1) != 0.0;
}

uint64_t sub_18E6549A0()
{
  v1 = v0;
  sub_18E65FF20();
  v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest);
  sub_18E65FB30();

  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest);
  sub_18E65FB30();

  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x193AD0720](*&v5);
  v6 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
  sub_18E65FED0();
  if (v6)
  {
    v7 = v6;
    sub_18E65FB30();
  }

  v8 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x193AD0720](*&v9);
  v10 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x193AD0720](*&v11);
  v12 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13)
  {
    v14 = [v13 integerValue];
    sub_18E65FED0();
    MEMORY[0x193AD06F0](v14);
  }

  else
  {
    sub_18E65FED0();
  }

  return sub_18E65FF00();
}

uint64_t sub_18E654B64(uint64_t a1)
{
  sub_18E61ED24(a1, v34);
  if (!v35)
  {
    sub_18E61D6A8(v34);
    goto LABEL_18;
  }

  type metadata accessor for ActivityItemMetricsRequest();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    LOBYTE(v16) = 0;
    return v16 & 1;
  }

  sub_18E623B78(0, &qword_1ED764CC0, 0x1E69E58C0);
  v2 = v1;
  v3 = *&v33[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest];
  v4 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest);
  v5 = v3;
  v6 = sub_18E65FB20();

  if ((v6 & 1) == 0)
  {
    goto LABEL_17;
  }

  v7 = *&v33[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest];
  v8 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest);
  v9 = v7;
  v10 = sub_18E65FB20();

  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  v11 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  v12 = v2;
  swift_beginAccess();
  v13 = *(v2 + v11);
  v14 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  swift_beginAccess();
  if (v13 != *&v33[v14])
  {
    goto LABEL_17;
  }

  v15 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
  v16 = *&v33[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets];
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!v16)
  {

    return v16 & 1;
  }

  type metadata accessor for ActivityEdgeInsets();
  v17 = v16;
  v18 = v15;
  v12 = v2;
  v19 = sub_18E65FB20();

  if ((v19 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  v20 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  swift_beginAccess();
  v21 = *(v12 + v20);
  v22 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  swift_beginAccess();
  if (v21 != *&v33[v22])
  {
    goto LABEL_17;
  }

  v23 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  v24 = *(v12 + v23);
  v25 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  if (v24 != *&v33[v25])
  {
    goto LABEL_17;
  }

  v26 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v16 = *(v12 + v26);
  v27 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v28 = *&v33[v27];
  if (!v16)
  {
    v32 = v28;

    if (!v28)
    {
      LOBYTE(v16) = 1;
      return v16 & 1;
    }

    goto LABEL_18;
  }

  if (!v28)
  {
    goto LABEL_17;
  }

  sub_18E623B78(0, &qword_1EAC89300, 0x1E696AD98);
  v29 = v28;
  v30 = v16;
  LOBYTE(v16) = sub_18E65FB20();

  return v16 & 1;
}

id sub_18E654F54()
{
  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest);
    v4 = sub_18E65F8F0();

    v5 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest);
    v6 = sub_18E65F8F0();

    v7 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
    swift_beginAccess();
    v8 = *(v0 + v7);
    v9 = sub_18E65F8F0();

    v10 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
    v11 = sub_18E65F8F0();

    v12 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
    swift_beginAccess();
    v13 = *(v0 + v12);
    v14 = sub_18E65F8F0();

    v15 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
    swift_beginAccess();
    v16 = *(v0 + v15);
    v17 = sub_18E65F8F0();

    v18 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
    swift_beginAccess();
    v19 = *(v0 + v18);
    v20 = sub_18E65F8F0();

    result = [v2 build];
    if (result)
    {
      v21 = result;
      v22 = sub_18E65F900();

      return v22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_18E6552A8(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest);
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    v4 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest);
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    v5 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 bs_secureEncoded];
      if (v7)
      {
        v8 = v7;
        v9 = sub_18E65F420();
        v11 = v10;

        v12 = sub_18E65F410();
        sub_18E64A6D0(v9, v11);
      }

      else
      {
        v12 = 0;
      }

      BSSerializeDataToXPCDictionaryWithKey();
    }

    v13 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
    swift_beginAccess();
    v14 = *(v1 + v13);
    BSSerializeDoubleToXPCDictionaryWithKey();
    v15 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
    swift_beginAccess();
    v16 = *(v1 + v15);
    BSSerializeDoubleToXPCDictionaryWithKey();
    v17 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
    swift_beginAccess();
    v18 = *(v1 + v17);
    BSSerializeDoubleToXPCDictionaryWithKey();
    v19 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
    swift_beginAccess();
    v20 = *(v1 + v19);
    if (v20)
    {
      v21 = v20;
      xpc_dictionary_set_int64(a1, "watchDisplayVariant", [v21 longLongValue]);
    }
  }
}

id ActivityItemMetricsRequest.__allocating_init(xpcDictionary:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E656188(a1);
  swift_unknownObjectRelease();
  return v4;
}

id ActivityItemMetricsRequest.init(xpcDictionary:)(void *a1)
{
  v1 = sub_18E656188(a1);
  swift_unknownObjectRelease();
  return v1;
}

void sub_18E6555A4(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest);
  v28 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest);
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
  v6 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v30 = type metadata accessor for ActivityItemMetricsRequest();
  v12 = objc_allocWithZone(v30);
  v13 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin] = 0;
  v25 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor] = 0x3FF0000000000000;
  v14 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant] = 0;
  v15 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets] = 0;
  v29 = v11;
  v26 = v11;
  v16 = v2;
  v17 = v28;
  v18 = v5;
  [v16 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();
  type metadata accessor for SizeDimensionRequest();
  swift_dynamicCast();
  *&v12[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest] = v33;
  v27 = v17;
  [v17 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  *&v12[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest] = v33;
  if (v5)
  {
    [v18 copy];
    sub_18E65FB60();
    swift_unknownObjectRelease();
    type metadata accessor for ActivityEdgeInsets();
    swift_dynamicCast();
    v19 = v33;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18;
  v21 = *&v12[v15];
  *&v12[v15] = v19;

  *&v12[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius] = v4;
  swift_beginAccess();
  *&v12[v13] = v7;
  swift_beginAccess();
  *&v12[v25] = v9;
  swift_beginAccess();
  v22 = *&v12[v14];
  *&v12[v14] = v29;
  v23 = v26;

  v32.receiver = v12;
  v32.super_class = v30;
  v24 = objc_msgSendSuper2(&v32, sel_init);

  a1[3] = v30;
  *a1 = v24;
}

void sub_18E655940(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest);
  v4 = sub_18E65F8F0();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest);
  v6 = sub_18E65F8F0();
  [a1 encodeObject:v5 forKey:v6];

  v7 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = sub_18E65F8F0();
  [a1 encodeDouble:v9 forKey:v8];

  v10 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = sub_18E65F8F0();
  [a1 encodeDouble:v12 forKey:v11];

  v13 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = sub_18E65F8F0();
  [a1 encodeDouble:v15 forKey:v14];

  v16 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (v17)
  {
    v18 = v17;
    v19 = sub_18E65F8F0();
    [a1 encodeObject:v18 forKey:v19];
  }

  v20 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
  if (v20)
  {
    v21 = v20;
    v22 = sub_18E65F8F0();
    [a1 encodeObject:v21 forKey:v22];
  }
}

id ActivityItemMetricsRequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E65656C(a1);

  return v4;
}

id ActivityItemMetricsRequest.init(coder:)(void *a1)
{
  v2 = sub_18E65656C(a1);

  return v2;
}

id ActivityItemMetricsRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityItemMetricsRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityItemMetricsRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E655E3C()
{
  v0 = type metadata accessor for SizeDimensionRequest();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = 0;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = 0;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = 1;
  v8.receiver = v1;
  v8.super_class = v0;
  v2 = objc_msgSendSuper2(&v8, sel_init);
  v3 = objc_allocWithZone(v0);
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = 0;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = 0;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = 1;
  v7.receiver = v3;
  v7.super_class = v0;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  v5 = [objc_allocWithZone(type metadata accessor for ActivityItemMetricsRequest()) initWithWidth:v2 height:v4 cornerRadius:0 edgeInsets:0 clipMargin:0.0 scaleFactor:0.0 watchDisplayVariant:1.0];

  return v5;
}

id sub_18E655F48(void *a1, void *a2, void *a3, void *a4, double a5, double a6, double a7)
{
  v13 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin] = 0;
  v14 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor] = 0x3FF0000000000000;
  v15 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant] = 0;
  v16 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets] = 0;
  [a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();
  type metadata accessor for SizeDimensionRequest();
  swift_dynamicCast();
  *&v7[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest] = v24;
  [a2 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  *&v7[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest] = v24;
  if (a3)
  {
    [a3 copy];
    sub_18E65FB60();
    swift_unknownObjectRelease();
    type metadata accessor for ActivityEdgeInsets();
    swift_dynamicCast();
    v17 = v24;
  }

  else
  {
    v17 = 0;
  }

  v18 = *&v7[v16];
  *&v7[v16] = v17;

  *&v7[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius] = a5;
  swift_beginAccess();
  *&v7[v13] = a6;
  swift_beginAccess();
  *&v7[v14] = a7;
  swift_beginAccess();
  v19 = *&v7[v15];
  *&v7[v15] = a4;
  v20 = a4;

  v23.receiver = v7;
  v23.super_class = type metadata accessor for ActivityItemMetricsRequest();
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_18E656188(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin] = 0;
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor] = 0x3FF0000000000000;
  v6 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant] = 0;
  v7 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets] = 0;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    type metadata accessor for SizeDimensionRequest();
    if (swift_dynamicCast())
    {
      v8 = v31;
      goto LABEL_9;
    }
  }

  else
  {
    sub_18E61D6A8(&v37);
  }

  v9 = type metadata accessor for SizeDimensionRequest();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = 0;
  *&v10[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = 0;
  *&v10[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = 1;
  v34.receiver = v10;
  v34.super_class = v9;
  v8 = objc_msgSendSuper2(&v34, sel_init);
LABEL_9:
  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest] = v8;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    type metadata accessor for SizeDimensionRequest();
    if (swift_dynamicCast())
    {
      v11 = v31;
      goto LABEL_17;
    }
  }

  else
  {
    sub_18E61D6A8(&v37);
  }

  v12 = type metadata accessor for SizeDimensionRequest();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = 0;
  *&v13[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = 0;
  *&v13[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = 1;
  v33.receiver = v13;
  v33.super_class = v12;
  v11 = objc_msgSendSuper2(&v33, sel_init);
LABEL_17:
  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest] = v11;
  v14 = BSDeserializeDataFromXPCDictionaryWithKey();
  if (v14)
  {
    v15 = v14;
    v16 = sub_18E65F420();
    v18 = v17;

    type metadata accessor for ActivityEdgeInsets();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = sub_18E65F410();
    v21 = [ObjCClassFromMetadata bs:v20 secureDecodedFromData:?];
    sub_18E64A6D0(v16, v18);

    v22 = *&v2[v7];
    *&v2[v7] = v21;
  }

  BSDeserializeDoubleFromXPCDictionaryWithKey();
  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius] = v23;
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  v25 = v24;
  swift_beginAccess();
  *&v2[v4] = v25;
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  v27 = v26;
  result = swift_beginAccess();
  *&v2[v5] = v27;
  if (a1)
  {
    if (xpc_dictionary_get_value(a1, "watchDisplayVariant"))
    {
      swift_unknownObjectRelease();
      xpc_dictionary_get_int64(a1, "watchDisplayVariant");
      sub_18E623B78(0, &qword_1EAC89300, 0x1E696AD98);
      v29 = sub_18E65FB00();
      swift_beginAccess();
      v30 = *&v2[v6];
      *&v2[v6] = v29;
    }

    v32.receiver = v2;
    v32.super_class = type metadata accessor for ActivityItemMetricsRequest();
    return objc_msgSendSuper2(&v32, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_18E65656C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin] = 0;
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor] = 0x3FF0000000000000;
  v6 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant] = 0;
  v7 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets] = 0;
  v8 = type metadata accessor for SizeDimensionRequest();
  v9 = sub_18E65FAF0();
  if (!v9)
  {
    v10 = objc_allocWithZone(v8);
    *&v10[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = 0;
    *&v10[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = 0;
    *&v10[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = 1;
    v33.receiver = v10;
    v33.super_class = v8;
    v9 = objc_msgSendSuper2(&v33, sel_init);
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest] = v9;
  v11 = sub_18E65FAF0();
  if (!v11)
  {
    v12 = objc_allocWithZone(v8);
    *&v12[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = 0;
    *&v12[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = 0;
    *&v12[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = 1;
    v32.receiver = v12;
    v32.super_class = v8;
    v11 = objc_msgSendSuper2(&v32, sel_init);
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest] = v11;
  v13 = sub_18E65F8F0();
  v14 = [a1 containsValueForKey_];

  if (v14)
  {
    type metadata accessor for ActivityEdgeInsets();
    v15 = sub_18E65FAF0();
    v16 = *&v2[v7];
    *&v2[v7] = v15;
  }

  v17 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v19 = v18;

  *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius] = v19;
  v20 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v22 = v21;

  swift_beginAccess();
  *&v2[v4] = v22;
  v23 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v25 = v24;

  swift_beginAccess();
  *&v2[v5] = v25;
  v26 = sub_18E65F8F0();
  v27 = [a1 containsValueForKey_];

  if (v27)
  {
    sub_18E623B78(0, &qword_1EAC89300, 0x1E696AD98);
    v28 = sub_18E65FAF0();
    swift_beginAccess();
    v29 = *&v2[v6];
    *&v2[v6] = v28;
  }

  v31.receiver = v2;
  v31.super_class = type metadata accessor for ActivityItemMetricsRequest();
  return objc_msgSendSuper2(&v31, sel_init);
}

id sub_18E656F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v13 = sub_18E65FB70();
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  type metadata accessor for ClientObserverMetadata();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v15;
  v17[4] = sub_18E65C16C;
  v17[5] = v16;

  v18 = sub_18E64D678(v4);
  sub_18E65F440();
  sub_18E65F430();
  (*(v9 + 8))(v12, v8);
  aBlock = 0;
  v29 = 0xE000000000000000;
  sub_18E65FC70();

  aBlock = 0xD000000000000015;
  v29 = 0x800000018E66AA00;
  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E753CLL;
  }

  if (!v15)
  {
    v15 = 0xE90000000000003ELL;
  }

  MEMORY[0x193AD0160](v19, v15);

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v17;
  v21 = objc_allocWithZone(MEMORY[0x1E698E778]);
  v22 = v18;

  v23 = sub_18E65F8F0();

  v24 = sub_18E65F8F0();

  v32 = sub_18E65C278;
  v33 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_18E61D9D8;
  v31 = &block_descriptor_90_0;
  v25 = _Block_copy(&aBlock);
  v26 = [v21 initWithIdentifier:v23 forReason:v24 invalidationBlock:v25];

  _Block_release(v25);

  return v26;
}

id sub_18E65727C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v13 = sub_18E65FB70();
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  type metadata accessor for ClientObserverMetadata();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v15;
  v17[4] = sub_18E65C258;
  v17[5] = v16;

  v18 = sub_18E64D678(v4);
  sub_18E65F440();
  sub_18E65F430();
  (*(v9 + 8))(v12, v8);
  aBlock = 0;
  v29 = 0xE000000000000000;
  sub_18E65FC70();

  aBlock = 0xD000000000000015;
  v29 = 0x800000018E66AA00;
  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E753CLL;
  }

  if (!v15)
  {
    v15 = 0xE90000000000003ELL;
  }

  MEMORY[0x193AD0160](v19, v15);

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v17;
  v21 = objc_allocWithZone(MEMORY[0x1E698E778]);
  v22 = v18;

  v23 = sub_18E65F8F0();

  v24 = sub_18E65F8F0();

  v32 = sub_18E65C278;
  v33 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_18E61D9D8;
  v31 = &block_descriptor_80;
  v25 = _Block_copy(&aBlock);
  v26 = [v21 initWithIdentifier:v23 forReason:v24 invalidationBlock:v25];

  _Block_release(v25);

  return v26;
}

id sub_18E657588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v13 = sub_18E65FB70();
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  type metadata accessor for ClientObserverMetadata();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v15;
  v17[4] = sub_18E65C14C;
  v17[5] = v16;

  v18 = sub_18E64D678(v4);
  sub_18E65F440();
  sub_18E65F430();
  (*(v9 + 8))(v12, v8);
  aBlock = 0;
  v29 = 0xE000000000000000;
  sub_18E65FC70();

  aBlock = 0xD000000000000015;
  v29 = 0x800000018E66AA00;
  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E753CLL;
  }

  if (!v15)
  {
    v15 = 0xE90000000000003ELL;
  }

  MEMORY[0x193AD0160](v19, v15);

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v17;
  v21 = objc_allocWithZone(MEMORY[0x1E698E778]);
  v22 = v18;

  v23 = sub_18E65F8F0();

  v24 = sub_18E65F8F0();

  v32 = sub_18E65C278;
  v33 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_18E61D9D8;
  v31 = &block_descriptor_70;
  v25 = _Block_copy(&aBlock);
  v26 = [v21 initWithIdentifier:v23 forReason:v24 invalidationBlock:v25];

  _Block_release(v25);

  return v26;
}

id sub_18E657894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v13 = sub_18E65FB70();
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  type metadata accessor for ClientObserverMetadata();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v15;
  v17[4] = sub_18E65C140;
  v17[5] = v16;

  v18 = sub_18E64D678(v4);
  sub_18E65F440();
  sub_18E65F430();
  (*(v9 + 8))(v12, v8);
  aBlock = 0;
  v29 = 0xE000000000000000;
  sub_18E65FC70();

  aBlock = 0xD000000000000015;
  v29 = 0x800000018E66AA00;
  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E753CLL;
  }

  if (!v15)
  {
    v15 = 0xE90000000000003ELL;
  }

  MEMORY[0x193AD0160](v19, v15);

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v17;
  v21 = objc_allocWithZone(MEMORY[0x1E698E778]);
  v22 = v18;

  v23 = sub_18E65F8F0();

  v24 = sub_18E65F8F0();

  v32 = sub_18E65C278;
  v33 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_18E61D9D8;
  v31 = &block_descriptor_60;
  v25 = _Block_copy(&aBlock);
  v26 = [v21 initWithIdentifier:v23 forReason:v24 invalidationBlock:v25];

  _Block_release(v25);

  return v26;
}

id sub_18E657BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v13 = sub_18E65FB70();
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  type metadata accessor for ClientObserverMetadata();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v15;
  v17[4] = sub_18E65C134;
  v17[5] = v16;

  v18 = sub_18E64D678(v4);
  sub_18E65F440();
  sub_18E65F430();
  (*(v9 + 8))(v12, v8);
  aBlock = 0;
  v29 = 0xE000000000000000;
  sub_18E65FC70();

  aBlock = 0xD000000000000015;
  v29 = 0x800000018E66AA00;
  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E753CLL;
  }

  if (!v15)
  {
    v15 = 0xE90000000000003ELL;
  }

  MEMORY[0x193AD0160](v19, v15);

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v17;
  v21 = objc_allocWithZone(MEMORY[0x1E698E778]);
  v22 = v18;

  v23 = sub_18E65F8F0();

  v24 = sub_18E65F8F0();

  v32 = sub_18E65C278;
  v33 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_18E61D9D8;
  v31 = &block_descriptor_50;
  v25 = _Block_copy(&aBlock);
  v26 = [v21 initWithIdentifier:v23 forReason:v24 invalidationBlock:v25];

  _Block_release(v25);

  return v26;
}

id sub_18E657EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v13 = sub_18E65FB70();
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  type metadata accessor for ClientObserverMetadata();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v15;
  v17[4] = sub_18E65C120;
  v17[5] = v16;

  v18 = sub_18E64D678(v4);
  sub_18E65F440();
  sub_18E65F430();
  (*(v9 + 8))(v12, v8);
  aBlock = 0;
  v29 = 0xE000000000000000;
  sub_18E65FC70();

  aBlock = 0xD000000000000015;
  v29 = 0x800000018E66AA00;
  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E753CLL;
  }

  if (!v15)
  {
    v15 = 0xE90000000000003ELL;
  }

  MEMORY[0x193AD0160](v19, v15);

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v17;
  v21 = objc_allocWithZone(MEMORY[0x1E698E778]);
  v22 = v18;

  v23 = sub_18E65F8F0();

  v24 = sub_18E65F8F0();

  v32 = sub_18E65C12C;
  v33 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_18E61D9D8;
  v31 = &block_descriptor_4;
  v25 = _Block_copy(&aBlock);
  v26 = [v21 initWithIdentifier:v23 forReason:v24 invalidationBlock:v25];

  _Block_release(v25);

  return v26;
}

uint64_t sub_18E6581B8(void *a1, void (*a2)(uint64_t *))
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = a1;
    swift_getAtKeyPath();

    a2(&v6);
  }

  else
  {
    result = sub_18E65FCC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_18E658298(void *a1, void (*a2)(uint64_t *))
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v4 = a1;
    swift_getAtKeyPath();

    a2(&v6);
  }

  else
  {
    result = sub_18E65FCC0();
    __break(1u);
  }

  return result;
}

void sub_18E658378(void *a1, void (*a2)(void **))
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v4 = a1;
    swift_getAtKeyPath();

    v5 = v6;
    a2(&v6);
  }

  else
  {
    sub_18E65FCC0();
    __break(1u);
  }
}

uint64_t sub_18E658454(void *a1, void (*a2)(uint64_t *))
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v4 = a1;
    swift_getAtKeyPath();

    a2(v6);
    return sub_18E65C178(v6[0], v6[1]);
  }

  else
  {
    result = sub_18E65FCC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_18E65852C(void *a1, void (*a2)(uint64_t *))
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v4 = a1;
    swift_getAtKeyPath();

    a2(&v6);
  }

  else
  {
    result = sub_18E65FCC0();
    __break(1u);
  }

  return result;
}

void *sub_18E658658()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_18E658720(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return sub_18E658784();
}

uint64_t sub_18E658784()
{
  v1 = v0;
  sub_18E65A09C();
  v2 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v4;
    sub_18E657EAC(KeyPath, sub_18E65C118, v6);

    swift_getObjectType();
    v8 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_sceneClientSettingsObservers;
    swift_beginAccess();
    sub_18E633F18((v1 + v8));
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_18E6588EC()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_descriptor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_18E6589A0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_descriptor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_18E658A00()
{
  v0 = objc_allocWithZone(MEMORY[0x1E699F7F8]);
  v1 = sub_18E65F8F0();
  v2 = [v0 initWithIdentifier_];

  qword_1EAC89460 = v2;
}

uint64_t sub_18E658B70()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_18E658BD0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18E6226F0;
}

char *ActivitySystemApertureSceneHandle.__allocating_init(acActivityDescritor:systemMetricsRequest:)(void *a1, void *a2)
{
  v5 = sub_18E65F4C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = objc_allocWithZone(v2);
  result = [a1 descriptorData];
  if (result)
  {
    v15 = result;
    sub_18E625368();
    sub_18E65F670();

    (*(v6 + 16))(v9, v12, v5);
    v16 = objc_allocWithZone(type metadata accessor for ActivitySystemApertureSceneHandle());
    v17 = sub_18E65950C(v9, a2, 0, 0);

    (*(v6 + 8))(v12, v5);
    swift_getObjectType();
    v18 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x30);
    v19 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x34);
    swift_deallocPartialClassInstance();
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *ActivitySystemApertureSceneHandle.init(acActivityDescritor:systemMetricsRequest:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_18E65F4C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v21 - v13;
  result = [a1 descriptorData];
  if (result)
  {
    v16 = result;
    sub_18E625368();
    sub_18E65F670();

    (*(v7 + 16))(v10, v14, v6);
    v17 = objc_allocWithZone(type metadata accessor for ActivitySystemApertureSceneHandle());
    v18 = sub_18E65950C(v10, a2, 0, 0);

    (*(v7 + 8))(v14, v6);
    swift_getObjectType();
    v19 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v20 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for ActivitySystemApertureSceneHandle()
{
  result = qword_1EAC89400;
  if (!qword_1EAC89400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *ActivitySystemApertureSceneHandle.__allocating_init(acActivityDescriptor:systemMetricsRequest:targetBundleIdentifier:)(void *a1, void *a2, void *a3, unint64_t a4)
{
  v24 = a4;
  v8 = sub_18E65F4C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = objc_allocWithZone(v4);
  result = [a1 descriptorData];
  if (result)
  {
    v18 = result;
    sub_18E625368();
    sub_18E65F670();

    (*(v9 + 16))(v12, v15, v8);
    v19 = objc_allocWithZone(type metadata accessor for ActivitySystemApertureSceneHandle());
    v20 = sub_18E65950C(v12, a2, a3, v24);

    (*(v9 + 8))(v15, v8);
    swift_getObjectType();
    v21 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x30);
    v22 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x34);
    swift_deallocPartialClassInstance();
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *ActivitySystemApertureSceneHandle.init(acActivityDescriptor:systemMetricsRequest:targetBundleIdentifier:)(void *a1, void *a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v25 = a4;
  v9 = sub_18E65F4C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v24 - v16;
  result = [a1 descriptorData];
  if (result)
  {
    v19 = result;
    sub_18E625368();
    sub_18E65F670();

    (*(v10 + 16))(v13, v17, v9);
    v20 = objc_allocWithZone(type metadata accessor for ActivitySystemApertureSceneHandle());
    v21 = sub_18E65950C(v13, a2, a3, v25);

    (*(v10 + 8))(v17, v9);
    swift_getObjectType();
    v22 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x30);
    v23 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x34);
    swift_deallocPartialClassInstance();
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_18E65950C(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v52 = a3;
  v9 = sub_18E65F600();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18E65F580();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_invalidated] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_currentContentPayloadID] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_backOffTimer] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_sceneClientSettingsObservers] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  v18 = &v4[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier];
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  v19 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_activityDescriptor;
  v20 = sub_18E65F4C0();
  v53 = *(v20 - 8);
  v54 = v20;
  (*(v53 + 16))(&v5[v19], a1);
  *&v5[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_descriptor] = sub_18E65F470();
  *&v5[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_systemMetricsRequest] = a2;
  if (a4)
  {
    v21 = a2;
    v22 = v52;
  }

  else
  {
    v52 = a2;
    v23 = a2;
    sub_18E65F490();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v10 + 32))(v13, v17, v9);
      v22 = sub_18E65F5E0();
      a4 = v24;
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      sub_18E65F5F0();
      v25 = sub_18E65F5E0();
      a4 = v26;
      v27 = *(v10 + 8);
      v27(v13, v9);
      v28 = v17;
      v22 = v25;
      v27(v28, v9);
    }

    a2 = v52;
  }

  v29 = &v5[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_processResource];
  *v29 = v22;
  v29[1] = a4;
  v30 = qword_1EAC89350;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_18E65F6E0();
  __swift_project_value_buffer(v31, qword_1EAC89358);
  v32 = sub_18E65F6C0();
  v33 = sub_18E65FA60();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_18E60F000, v32, v33, "System Aperture scene created", v34, 2u);
    MEMORY[0x193AD1140](v34, -1, -1);
  }

  v35 = type metadata accessor for ActivitySystemApertureSceneHandle();
  v62.receiver = v5;
  v62.super_class = v35;
  v61 = objc_msgSendSuper2(&v62, sel_init);
  v36 = v61;
  v55 = sub_18E65FF60();
  v56 = v37;
  v59 = 0x3030303030307830;
  v60 = 0xE900000000000030;
  v57 = 30768;
  v58 = 0xE200000000000000;
  sub_18E63CDCC();
  v38 = sub_18E65FB50();
  v40 = v39;

  v41 = sub_18E65B1A8(v22, a4, a1, a2, v38, v40);

  v55 = v38;
  v56 = v40;
  MEMORY[0x193AD0160](45, 0xE100000000000000);
  v42 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  MEMORY[0x193AD0160](v42);

  v43 = v56;
  v44 = &v36[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier];
  v45 = *&v36[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier + 8];
  *v44 = v55;
  v44[1] = v43;

  v46 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  swift_beginAccess();
  v47 = *&v36[v46];
  *&v36[v46] = v41;
  v48 = v41;

  sub_18E658784();
  v49 = *&v36[v46];
  if (v49)
  {
    [v49 setDelegate_];
  }

  (*(v53 + 8))(a1, v54);
  return v36;
}

id ActivitySystemApertureSceneHandle.__deallocating_deinit()
{
  sub_18E659BD8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySystemApertureSceneHandle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E659BD8()
{
  result = BSDispatchQueueAssertMain();
  if ((v0[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_invalidated] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_invalidated] = 1;
    if (qword_1EAC89350 != -1)
    {
      swift_once();
    }

    v2 = sub_18E65F6E0();
    __swift_project_value_buffer(v2, qword_1EAC89358);
    v3 = v0;
    v4 = sub_18E65F6C0();
    v5 = sub_18E65FA60();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      *(v6 + 4) = v3;
      *v7 = v3;
      v8 = v3;
      _os_log_impl(&dword_18E60F000, v4, v5, "%{public}@ invalidated", v6, 0xCu);
      sub_18E63CCD8(v7);
      MEMORY[0x193AD1140](v7, -1, -1);
      MEMORY[0x193AD1140](v6, -1, -1);
    }

    sub_18E65A5C8();
    v9 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_backOffTimer;
    if (*&v3[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_backOffTimer])
    {
      v10 = *&v3[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_backOffTimer];

      sub_18E625AEC();

      v11 = *&v3[v9];
    }

    *&v3[v9] = 0;
  }

  return result;
}

void sub_18E659DC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x193AD0160](a2, a3);
  MEMORY[0x193AD0160](58, 0xE100000000000000);
  MEMORY[0x193AD0160](a4, a5);
  v10 = sub_18E65F8F0();

  [a1 setIdentifier_];

  [a1 setClientIdentity_];
  v11 = [objc_allocWithZone(type metadata accessor for ActivitySystemApertureSceneSpecification()) init];
  [a1 setSpecification_];
}

id sub_18E659EE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18E65F4C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setInterfaceOrientation_];
  v14 = [objc_opt_self() mainConfiguration];
  [a1 setDisplayConfiguration_];

  v18[1] = &unk_1F01BC110;
  v15 = swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  v16 = sub_18E65F8F0();
  [v15 setActivityIdentifier_];

  (*(v9 + 16))(v13, a4, v8);
  sub_18E63E528(v13);
  return [v15 setMetricsRequest_];
}

uint64_t sub_18E65A09C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_sceneClientSettingsObservers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_18E65FBC0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x193AD04B0](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      [v5 invalidate];
      swift_unknownObjectRelease();
      ++v4;
    }

    while (v6 != v3);
  }

  v7 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

void sub_18E65A1CC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 contentPayloadID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18E65F900();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_18E65A234(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_18E65F8F0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setContentPayloadID_];
}

void sub_18E65A2A4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v5 = sub_18E65F6E0();
    __swift_project_value_buffer(v5, qword_1ED764D68);

    v6 = v4;
    v7 = sub_18E65F6C0();
    v8 = sub_18E65FA40();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26[0] = v10;
      *v9 = 136446466;
      v11 = *&v6[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier];
      v12 = *&v6[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier + 8];

      v13 = sub_18E61173C(v11, v12, v26);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      if (v1)
      {
        v14 = v2;
      }

      else
      {
        v14 = 7104878;
      }

      if (v1)
      {
        v15 = v1;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      v16 = sub_18E61173C(v14, v15, v26);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_18E60F000, v7, v8, "[%{public}s] ClientSetting[contentPayloadID] did change to: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v10, -1, -1);
      MEMORY[0x193AD1140](v9, -1, -1);
    }

    if (v1)
    {
      v17 = sub_18E65F8F0();
      v18 = v17;
      v19 = &v6[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_currentContentPayloadID];
      v20 = *&v6[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_currentContentPayloadID];
      if (v20)
      {
        if (v17)
        {
          sub_18E623B78(0, &qword_1ED764FB0, 0x1E696AEC0);
          v21 = v20;
          v22 = v18;
          v23 = sub_18E65FB20();

          if (v23)
          {

            return;
          }

          v20 = *v19;
        }

        goto LABEL_23;
      }

      if (v17)
      {
        v20 = 0;
LABEL_23:
        *v19 = v18;
        v24 = v18;

        swift_beginAccess();
        v25 = swift_unknownObjectWeakLoadStrong();
        if (v25)
        {
          [v25 activitySystemApertureWithSceneHandle:v6 updatedContentPayloadID:*v19];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }

    else
    {
      v19 = &v6[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_currentContentPayloadID];
      v20 = *&v6[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_currentContentPayloadID];
      if (v20)
      {
        v18 = 0;
        goto LABEL_23;
      }
    }
  }
}

uint64_t sub_18E65A5C8()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 setDelegate_];
    v2 = *(v0 + v1);
  }

  [v2 invalidate];
  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_18E658784();
  result = sub_18E65A09C();
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_invalidated) = 1;
  return result;
}

id ActivitySystemApertureSceneHandle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ActivitySystemApertureSceneHandle.sceneDidDeactivate(_:withError:)(void *a1, id a2)
{
  v3 = v2;
  if (a2)
  {
    v6 = a2;
    if (qword_1EAC89350 != -1)
    {
      swift_once();
    }

    v7 = sub_18E65F6E0();
    __swift_project_value_buffer(v7, qword_1EAC89358);
    v8 = a2;
    v9 = v2;
    v10 = sub_18E65F6C0();
    v11 = sub_18E65FA40();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v55[0] = v13;
      *v12 = 136446466;
      v14 = *&v9[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier];
      v15 = *&v9[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier + 8];

      v16 = sub_18E61173C(v14, v15, v55);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      swift_getErrorValue();
      v17 = sub_18E65FE40();
      v19 = sub_18E61173C(v17, v18, v55);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_18E60F000, v10, v11, "[%{public}s] Scene did deactivate with error: %{public}s.", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v13, -1, -1);
      MEMORY[0x193AD1140](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EAC89350 != -1)
    {
      swift_once();
    }

    v20 = sub_18E65F6E0();
    __swift_project_value_buffer(v20, qword_1EAC89358);
    v21 = v2;
    v22 = sub_18E65F6C0();
    v23 = sub_18E65FA40();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v55[0] = v25;
      *v24 = 136446210;
      v26 = &v21[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier];
      v27 = *&v21[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier];
      v28 = *(v26 + 1);

      v29 = sub_18E61173C(v27, v28, v55);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_18E60F000, v22, v23, "[%{public}s] Scene did deactivate.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x193AD1140](v25, -1, -1);
      MEMORY[0x193AD1140](v24, -1, -1);
    }
  }

  v30 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  swift_beginAccess();
  v31 = *&v3[v30];
  if (v31)
  {
    sub_18E623B78(0, &qword_1ED764CC0, 0x1E69E58C0);
    v32 = v31;
    if ((sub_18E65FB20() & 1) == 0)
    {
LABEL_18:

      return;
    }

    v33 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_backOffTimer;
    if (*&v3[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_backOffTimer])
    {
LABEL_17:

      sub_18E625440();

      goto LABEL_18;
    }

    sub_18E65FC70();

    v54[0] = 0xD000000000000022;
    v54[1] = 0x800000018E66A8B0;
    v34 = *&v3[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier];
    v35 = *&v3[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier + 8];

    MEMORY[0x193AD0160](v34, v35);

    sub_18E623B78(0, &qword_1ED764D10, 0x1E69E9610);
    v36 = sub_18E65FAA0();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = a1;
    type metadata accessor for BackOffTimer();
    v39 = swift_allocObject();
    *(v39 + 64) = v38;
    *(v39 + 72) = 0;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    *(v39 + 80) = 1;
    *(v39 + 88) = 0;
    *(v39 + 32) = 0xD000000000000022;
    *(v39 + 40) = 0x800000018E66A8B0;
    *(v39 + 48) = v36;
    *(v39 + 56) = sub_18E65B8D8;
    v40 = *&v3[v33];
    *&v3[v33] = v39;
    v41 = a1;

    v42 = *&v3[v33];
    if (v42)
    {
      *(v42 + 72) = 0x4046800000000000;
      *(v42 + 80) = 0;
      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {
    if (qword_1EAC89350 != -1)
    {
      swift_once();
    }

    v43 = sub_18E65F6E0();
    __swift_project_value_buffer(v43, qword_1EAC89358);
    v44 = a1;
    v45 = sub_18E65F6C0();
    v46 = sub_18E65FA50();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54[0] = v48;
      *v47 = 136315138;
      v49 = [v44 identifier];
      v50 = sub_18E65F900();
      v52 = v51;

      v53 = sub_18E61173C(v50, v52, v54);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_18E60F000, v45, v46, "No system aperture activity scene found: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x193AD1140](v48, -1, -1);
      MEMORY[0x193AD1140](v47, -1, -1);
    }
  }
}

void sub_18E65AE30(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 settings];
    v6 = [v5 isForeground];

    if ((*(v4 + OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_invalidated) & 1) == 0 && v6)
    {
      if (qword_1EAC89350 != -1)
      {
        swift_once();
      }

      v7 = sub_18E65F6E0();
      __swift_project_value_buffer(v7, qword_1EAC89358);
      v8 = v4;
      v9 = sub_18E65F6C0();
      v10 = sub_18E65FA60();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = v12;
        *v11 = 136315138;
        v13 = &v8[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier];
        v14 = *&v8[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier];
        v15 = *(v13 + 1);

        v16 = sub_18E61173C(v14, v15, &v17);

        *(v11 + 4) = v16;
        _os_log_impl(&dword_18E60F000, v9, v10, "[%s] Scene did deactivate but was foreground - reactivating.", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x193AD1140](v12, -1, -1);
        MEMORY[0x193AD1140](v11, -1, -1);
      }

      [a2 activateWithTransitionContext_];
    }
  }
}

void sub_18E65B134(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_18E65B1A8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v48 = a3;
  v46 = sub_18E65F4C0();
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAC89350 != -1)
  {
    swift_once();
  }

  v12 = sub_18E65F6E0();
  __swift_project_value_buffer(v12, qword_1EAC89358);
  v13 = sub_18E65F6C0();
  v14 = sub_18E65FA60();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_18E60F000, v13, v14, "Creating activity system aperture scene", v15, 2u);
    MEMORY[0x193AD1140](v15, -1, -1);
  }

  v16 = sub_18E6234B8(a1, a2);
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v16;
  v44 = a4;
  v18 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  a1 = v19;
  v20 = objc_opt_self();
  v43 = v17;
  v21 = [v20 identityForProcessIdentity_];
  if (qword_1EAC89450 != -1)
  {
    swift_once();
  }

  v22 = qword_1EAC89460;
  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = a1;
  v24 = v47;
  v23[4] = a5;
  v23[5] = v24;
  v23[6] = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_18E65C18C;
  *(v25 + 24) = v23;
  v53 = sub_18E63CDC4;
  v54 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v42[1] = &v51;
  v51 = sub_18E6361B8;
  v52 = &block_descriptor_99;
  v26 = _Block_copy(&aBlock);
  v42[0] = v18;

  v27 = v21;

  v28 = [v22 createScene_];
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    a2 = v45;
    v31 = v46;
    (*(v10 + 16))(v45, v48, v46);
    v32 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v42[0];
    *(v33 + 24) = a1;
    (*(v10 + 32))(v33 + v32, a2, v31);
    v34 = v44;
    *(v33 + ((v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v44;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_18E65C19C;
    *(v35 + 24) = v33;
    v53 = sub_18E63CC94;
    v54 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_18E6150BC;
    v52 = &block_descriptor_108;
    v36 = _Block_copy(&aBlock);
    v37 = v34;

    [v28 updateSettingsWithBlock_];

    _Block_release(v36);
    LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

    if ((v36 & 1) == 0)
    {
      return v28;
    }

    __break(1u);
LABEL_11:

    v38 = sub_18E65F6C0();
    v39 = sub_18E65FA50();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock = v41;
      *v40 = 136380675;
      *(v40 + 4) = sub_18E61173C(a1, a2, &aBlock);
      _os_log_impl(&dword_18E60F000, v38, v39, "Couldn't create a system aperture scene with %{private}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x193AD1140](v41, -1, -1);
      MEMORY[0x193AD1140](v40, -1, -1);
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_18E65B764(const char *a1)
{
  if (qword_1EAC89350 != -1)
  {
    swift_once();
  }

  v3 = sub_18E65F6E0();
  __swift_project_value_buffer(v3, qword_1EAC89358);
  v4 = v1;
  oslog = sub_18E65F6C0();
  v5 = sub_18E65FA40();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = &v4[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier];
    v9 = *&v4[OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier];
    v10 = *(v8 + 1);

    v11 = sub_18E61173C(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_18E60F000, oslog, v5, a1, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193AD1140](v7, -1, -1);
    MEMORY[0x193AD1140](v6, -1, -1);
  }
}

void sub_18E65B8E0(uint64_t a1)
{
  if (qword_1EAC89350 == -1)
  {
    goto LABEL_2;
  }

LABEL_49:
  swift_once();
LABEL_2:
  v3 = sub_18E65F6E0();
  __swift_project_value_buffer(v3, qword_1EAC89358);
  v4 = v1;

  v1 = sub_18E65F6C0();
  v5 = sub_18E65FA60();

  if (os_log_type_enabled(v1, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v56[0] = v7;
    *v6 = 136446467;
    v8 = *(&v4->isa + OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier);
    v9 = *(&v4[1].isa + OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_logIdentifier);

    v10 = sub_18E61173C(v8, v9, v56);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2081;
    sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
    sub_18E63B6CC();
    v11 = sub_18E65FA10();
    v13 = sub_18E61173C(v11, v12, v56);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_18E60F000, v1, v5, "[%{public}s] Scene did receive actions: %{private}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AD1140](v7, -1, -1);
    MEMORY[0x193AD1140](v6, -1, -1);
  }

  if (*(&v4->isa + OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_invalidated))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18E65FBB0();
    v1 = sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
    sub_18E63B6CC();
    sub_18E65FA20();
    a1 = v51;
    v14 = v52;
    v15 = v53;
    v16 = v54;
    v17 = v55;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v14 = a1 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(a1 + 56);

    v16 = 0;
  }

  v21 = (v15 + 64) >> 6;
  v45 = v14;
  v46 = a1;
  v47 = v4;
  v44 = v21;
  while ((a1 & 0x8000000000000000) == 0)
  {
    v22 = v16;
    v23 = v17;
    for (i = v16; !v23; ++v22)
    {
      i = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_48;
      }

      if (i >= v21)
      {
        goto LABEL_45;
      }

      v23 = *(v14 + 8 * i);
    }

    v25 = (v23 - 1) & v23;
    v26 = *(*(a1 + 48) + ((i << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v26)
    {
      goto LABEL_45;
    }

LABEL_24:
    v49 = v25;
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v1 = v27;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v29 = Strong;
        v30 = [v1 launchActions];
        if (v30)
        {
          v31 = v30;
          v48 = v29;
          sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
          v1 = sub_18E63B6CC();
          v32 = sub_18E65FA00();

          if ((v32 & 0xC000000000000001) != 0)
          {
            sub_18E65FBB0();
            sub_18E65FA20();
            v32 = v56[0];
            v33 = v56[1];
            v34 = v56[2];
            a1 = v56[3];
            v35 = v56[4];
          }

          else
          {
            a1 = 0;
            v36 = -1 << *(v32 + 32);
            v33 = v32 + 56;
            v34 = ~v36;
            v37 = -v36;
            if (v37 < 64)
            {
              v38 = ~(-1 << v37);
            }

            else
            {
              v38 = -1;
            }

            v35 = v38 & *(v32 + 56);
          }

          v39 = (v34 + 64) >> 6;
          if (v32 < 0)
          {
            goto LABEL_40;
          }

          while (1)
          {
            v40 = a1;
            v41 = v35;
            v42 = a1;
            if (!v35)
            {
              while (1)
              {
                v42 = v40 + 1;
                if (__OFADD__(v40, 1))
                {
                  break;
                }

                if (v42 >= v39)
                {
                  goto LABEL_44;
                }

                v41 = *(v33 + 8 * v42);
                ++v40;
                if (v41)
                {
                  goto LABEL_38;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_38:
            v43 = (v41 - 1) & v41;
            v1 = *(*(v32 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));
            if (!v1)
            {
              break;
            }

            while (1)
            {
              [v48 activitySystemApertureWithSceneHandle:v47 requestsLaunchWithAction:v1];

              a1 = v42;
              v35 = v43;
              if ((v32 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_40:
              v1 = (v32 & 0x7FFFFFFFFFFFFFFFLL);
              if (sub_18E65FBE0())
              {
                swift_dynamicCast();
                v1 = v50;
                v42 = a1;
                v43 = v35;
                if (v50)
                {
                  continue;
                }
              }

              goto LABEL_44;
            }
          }

LABEL_44:
          sub_18E63D354();
          v14 = v45;
          a1 = v46;
          v4 = v47;
          v21 = v44;
        }

        else
        {
          [v29 activitySystemApertureWithSceneHandle:v4 requestsLaunchWithAction:0];
        }

        swift_unknownObjectRelease();
      }
    }

    v16 = i;
    v17 = v49;
  }

  v1 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
  if (sub_18E65FBE0())
  {
    sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
    swift_dynamicCast();
    v26 = v50;
    i = v16;
    v25 = v17;
    if (v50)
    {
      goto LABEL_24;
    }
  }

LABEL_45:
  sub_18E63D354();
}

uint64_t sub_18E65BEBC()
{
  result = sub_18E65F4C0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_18E65C120(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_18E65852C(a1, *(v1 + 16));
}

uint64_t sub_18E65C134(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_18E6581B8(a1, *(v1 + 16));
}

uint64_t sub_18E65C140(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_18E658298(a1, *(v1 + 16));
}

void sub_18E65C14C(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_18E658378(a1, *(v1 + 16));
}

uint64_t sub_18E65C16C(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_18E658454(a1, *(v1 + 16));
}

uint64_t sub_18E65C178(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18E64A6D0(a1, a2);
  }

  return a1;
}

id sub_18E65C19C(void *a1)
{
  v3 = *(sub_18E65F4C0() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_18E659EE0(a1, v6, v7, v1 + v4, v5);
}

uint64_t SizeDimensionRequestType.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x6465786966;
  }

  if (!a1)
  {
    return 0x63696D616E7964;
  }

  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

unint64_t SizeDimensionRequestType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

id SizeDimensionRequest.__allocating_init(minimum:maximum:type:)(uint64_t a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = 0.0;
  if (a2 > 0.0)
  {
    v8 = a2;
  }

  *&v7[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = v8;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = a3;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = a1;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SizeDimensionRequest.init(minimum:maximum:type:)(uint64_t a1, double a2, double a3)
{
  if (a2 <= 0.0)
  {
    a2 = 0.0;
  }

  *&v3[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = a2;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = a3;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for SizeDimensionRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SizeDimensionRequest.__allocating_init(minimum:maximum:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithMinimum:0 maximum:a1 type:a2];
}

id sub_18E65C54C(double a1, double a2)
{
  v4 = type metadata accessor for SizeDimensionRequest();
  v5 = objc_allocWithZone(v4);
  v6 = 0.0;
  if (a1 > 0.0)
  {
    v6 = a1;
  }

  *&v5[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = v6;
  *&v5[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = a2;
  *&v5[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = 0;
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_18E65C5D0(double a1)
{
  v2 = type metadata accessor for SizeDimensionRequest();
  v3 = objc_allocWithZone(v2);
  v4 = 0.0;
  if (a1 > 0.0)
  {
    v4 = a1;
  }

  *&v3[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = v4;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = a1;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = 1;
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

double sub_18E65C654(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type);
  if (v2 == 1)
  {
    return *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
  }

  result = 0.0;
  if (!v2)
  {
    result = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
    if (result >= a1)
    {
      result = a1;
    }

    if (result <= *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum))
    {
      return *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum);
    }
  }

  return result;
}

uint64_t sub_18E65C6D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = 39 * v1;
  if ((v1 * 39) >> 64 != v2 >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v2 * v3;
  if ((v2 * v3) >> 64 != v4 >> 63)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v5 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type);
  if (v5 >= 1)
  {
    v5 = 1;
  }

  result = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    goto LABEL_21;
  }

  return result;
}

BOOL sub_18E65C7D8(uint64_t a1)
{
  sub_18E61ED24(a1, v6);
  if (v7)
  {
    type metadata accessor for SizeDimensionRequest();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum) == *&v5[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] && *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) == *&v5[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum])
      {
        v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type);
        v3 = *&v5[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_18E61D6A8(v6);
  }

  return 0;
}

uint64_t sub_18E65C97C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (!v1)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  if (*(v0 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type) <= 1uLL)
  {
    v3 = sub_18E65F8F0();

    v4 = sub_18E65F8F0();
    [v2 appendString:v3 withName:v4];

    v5 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum);
    v6 = sub_18E65F8F0();

    v7 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
    v8 = sub_18E65F8F0();

    v9 = [v2 build];
    if (v9)
    {
      v10 = v9;
      v11 = sub_18E65F900();

      return v11;
    }

    goto LABEL_6;
  }

LABEL_7:
  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

id sub_18E65CB60@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum);
  v4 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
  v5 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type);
  v6 = type metadata accessor for SizeDimensionRequest();
  v7 = objc_allocWithZone(v6);
  v8 = 0.0;
  if (v3 > 0.0)
  {
    v8 = v3;
  }

  *&v7[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = v8;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = v4;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = v6;
  *a1 = result;
  return result;
}

void sub_18E65CC80(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum);
  v4 = sub_18E65F8F0();
  [a1 encodeDouble:v4 forKey:v3];

  v5 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
  v6 = sub_18E65F8F0();
  [a1 encodeDouble:v6 forKey:v5];

  v7 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type);
  v8 = sub_18E65F8F0();
  [a1 encodeInteger:v7 forKey:v8];
}

id SizeDimensionRequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E65D168(a1);

  return v4;
}

id SizeDimensionRequest.init(coder:)(void *a1)
{
  v2 = sub_18E65D168(a1);

  return v2;
}

id SizeDimensionRequest.__allocating_init(xpcDictionary:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E65D28C(a1);
  swift_unknownObjectRelease();
  return v4;
}

id SizeDimensionRequest.init(xpcDictionary:)(void *a1)
{
  v1 = sub_18E65D28C(a1);
  swift_unknownObjectRelease();
  return v1;
}

void sub_18E65CF54(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum);
    BSSerializeDoubleToXPCDictionaryWithKey();
    v4 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
    BSSerializeDoubleToXPCDictionaryWithKey();
    v5 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type);

    xpc_dictionary_set_int64(a1, "type", v5);
  }
}

id SizeDimensionRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SizeDimensionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SizeDimensionRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E65D168(void *a1)
{
  v3 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v5 = v4;

  v6 = 0.0;
  if (v5 > 0.0)
  {
    v6 = v5;
  }

  *&v1[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = v6;
  v7 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v9 = v8;

  *&v1[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = v9;
  v10 = sub_18E65F8F0();
  v11 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = v11 != 0;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SizeDimensionRequest();
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_18E65D28C(void *a1)
{
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  if (v3 <= 0.0)
  {
    v3 = 0.0;
  }

  *&v1[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_minimum] = v3;
  result = BSDeserializeDoubleFromXPCDictionaryWithKey();
  *&v1[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum] = v5;
  if (a1)
  {
    *&v1[OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_type] = xpc_dictionary_get_int64(a1, "type") != 0;
    v6.receiver = v1;
    v6.super_class = type metadata accessor for SizeDimensionRequest();
    return objc_msgSendSuper2(&v6, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_18E65D33C()
{
  result = qword_1EAC8A6F0;
  if (!qword_1EAC8A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A6F0);
  }

  return result;
}

id ActivitySceneSettingsExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySceneSettingsExtension.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneSettingsExtension();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ActivitySceneSettingsExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneSettingsExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E65D64C(uint64_t a1, SEL *a2)
{
  v3 = [v2 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_18E65F420();
  v7 = v6;

  sub_18E623B78(0, &qword_1ED764D20, 0x1E696ACD0);
  sub_18E623B78(0, &qword_1ED764CE8, 0x1E69DC888);
  v8 = sub_18E65FA70();
  sub_18E64A6D0(v5, v7);
  return v8;
}

void sub_18E65D728(char *a1@<X8>)
{
  v3 = [v1 archivedActivityFamilyNumber];
  if (!v3)
  {
    v7 = 2;
LABEL_10:
    *a1 = v7;
    return;
  }

  v4 = [v1 archivedActivityFamilyNumber];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 integerValue];

    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (!v6)
    {
      v7 = 0;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_18E65D7E8(uint64_t a1, SEL *a2)
{
  v3 = [v2 *a2];
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  v5 = [v3 BOOLValue];

  return v5;
}

void sub_18E65D840(void *a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  sub_18E65D900(a1, a2, &selRef_setBackgroundTintColorData_);
}

void sub_18E65D8A0(void *a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  sub_18E65D900(a1, a2, &selRef_setTextColorData_);
}

void sub_18E65D900(void *a1, uint64_t a2, SEL *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = objc_opt_self();
    v17[0] = 0;
    v7 = a1;
    v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v17];
    v9 = v17[0];
    if (v8)
    {

      v10 = sub_18E65F420();
      v12 = v11;

      v13 = sub_18E65F410();
      [v3 *a3];

      sub_18E64A6D0(v10, v12);
    }

    else
    {
      v14 = v9;
      v15 = sub_18E65F360();

      swift_willThrow();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_18E65DA64(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  v4 = v3;
  [v1 setArchivedActivityFamilyNumber_];
}

void sub_18E65DAF0(char a1, uint64_t a2, SEL *a3)
{
  if (a1 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v6 = v5;
  [v3 *a3];
}

id ActivityCarPlayHostViewController.__allocating_init(activityDescriptor:systemMetricsRequest:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_18E65DE64(a1, a2, a3, a4);

  return v10;
}

id ActivityCarPlayHostViewController.init(activityDescriptor:systemMetricsRequest:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_18E65DE64(a1, a2, a3, a4);

  return v5;
}

id sub_18E65DD20()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityCarPlaySceneSpecification());

  return [v0 init];
}

id ActivityCarPlayHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityCarPlayHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E65DE64(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v7 = sub_18E65F4C0();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v8[2];
  v13(v12, a1, v7, v10);
  v14 = type metadata accessor for ActivitySceneDescriptor();
  v15 = objc_allocWithZone(v14);
  v16 = a2;
  v17 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v18 = &v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v18 = v17;
  v18[1] = v19;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 5;
  sub_18E6220E4(&unk_1EAC894E0);
  *&v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  (v13)(&v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v12, v7);
  *&v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v16;
  v20 = &v15[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  *v20 = 0;
  *(v20 + 1) = 0;
  v26.receiver = v15;
  v26.super_class = v14;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  v22 = v8[1];
  v22(v12, v7);
  v23 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v21, a3, v25);
  v22(a1, v7);
  return v23;
}

uint64_t ActivityInstanceJindoState.hashValue.getter()
{
  v1 = *v0;
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](v1);
  return sub_18E65FF10();
}

unint64_t sub_18E65E164()
{
  result = qword_1EAC8A6F8;
  if (!qword_1EAC8A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A6F8);
  }

  return result;
}

id ActivityAmbientHostViewController.__allocating_init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v10 = sub_18E65F4C0();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v7);
  v15 = v11[2];
  v15(v14, a1, v10);
  v16 = type metadata accessor for ActivitySceneDescriptor();
  v17 = objc_allocWithZone(v16);
  v18 = a2;
  v19 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v20 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v20 = v19;
  v20[1] = v21;
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 2;
  sub_18E6220E4(&unk_1EAC894E0);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  v15(&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v14, v10);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v18;
  v22 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v32.receiver = v17;
  v32.super_class = v16;
  v24 = objc_msgSendSuper2(&v32, sel_init);
  v25 = v11[1];
  v25(v14, v10);
  v26 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v24, v30, v31);

  v25(a1, v10);
  return v26;
}

id ActivityAmbientHostViewController.init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_18E65E758(a1, a2, a3, a4, a5, a6);

  return v7;
}

id sub_18E65E614()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityAmbientSceneSpecification());

  return [v0 init];
}

id ActivityAmbientHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAmbientHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E65E758(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v28 = a4;
  v29 = a5;
  v9 = sub_18E65F4C0();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v10[2];
  v15(v14, a1, v9, v12);
  v16 = type metadata accessor for ActivitySceneDescriptor();
  v17 = objc_allocWithZone(v16);
  v18 = a2;
  v19 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v20 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v20 = v19;
  v20[1] = v21;
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 2;
  sub_18E6220E4(&unk_1EAC894E0);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  (v15)(&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v14, v9);
  *&v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v18;
  v22 = &v17[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v23 = v28;
  *v22 = a3;
  *(v22 + 1) = v23;
  v31.receiver = v17;
  v31.super_class = v16;
  v24 = objc_msgSendSuper2(&v31, sel_init);
  v25 = v10[1];
  v25(v14, v9);
  v26 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v24, v29, v30);
  v25(a1, v9);
  return v26;
}

uint64_t (*EnvironmentValues.activityLaunchRequestHandler.getter())()
{
  sub_18E65EA68();
  sub_18E65F820();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_18E65EBD0;
}

unint64_t sub_18E65EA68()
{
  result = qword_1EAC8A700;
  if (!qword_1EAC8A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A700);
  }

  return result;
}

double sub_18E65EABC@<D0>(_OWORD *a1@<X8>)
{
  sub_18E65EA68();
  sub_18E65F820();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_18E65EB0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_18E65F224;
    *(v4 + 24) = v3;
  }

  sub_18E6174A0(v1);
  sub_18E65EA68();
  return sub_18E65F830();
}

uint64_t sub_18E65EBD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t EnvironmentValues.activityLaunchRequestHandler.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_18E65EA68();
  return sub_18E65F830();
}

uint64_t sub_18E65EC80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void (*EnvironmentValues.activityLaunchRequestHandler.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_18E65EA68();
  sub_18E65F820();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[3];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_18E65F224;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *v4 = v8;
  v4[1] = v7;
  return sub_18E65ED7C;
}

void sub_18E65ED7C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_18E65F21C;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v9 = v2[4];
    v10 = v2[5];
    v2[2] = v6;
    v2[3] = v5;
    sub_18E6174A0(v3);
    sub_18E65F830();
    v11 = v2[1];
    sub_18E63CC7C(*v2);
  }

  else
  {
    if (v3)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      *(v7 + 24) = v4;
      v8 = sub_18E65F21C;
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v13 = v2[4];
    v12 = v2[5];
    v2[2] = v8;
    v2[3] = v7;
    sub_18E65F830();
  }

  free(v2);
}

uint64_t sub_18E65EEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A710, &qword_18E6669D8);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A718, &qword_18E6669E0) + 36));
  *v10 = KeyPath;
  v10[1] = sub_18E65F21C;
  v10[2] = v8;
}

uint64_t View.onActivityLaunchRequest(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x193AD0070](v4, a3, &type metadata for LaunchRequestViewModifier);
}

unint64_t sub_18E65EFDC()
{
  result = qword_1EAC8A708;
  if (!qword_1EAC8A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A708);
  }

  return result;
}

uint64_t sub_18E65F030(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18E65F078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18E65F0F0()
{
  result = qword_1EAC8A720;
  if (!qword_1EAC8A720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8A718, &qword_18E6669E0);
    sub_18E65F1D4(&qword_1EAC8A728, &qword_1EAC8A710, &qword_18E6669D8);
    sub_18E65F1D4(&qword_1EAC8A730, &qword_1EAC8A738, &qword_18E6669E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A720);
  }

  return result;
}

uint64_t sub_18E65F1D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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