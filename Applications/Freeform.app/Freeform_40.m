uint64_t sub_100733E6C()
{
  v1 = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_assetUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100733F28(unint64_t a1)
{
  v27 = type metadata accessor for UUID();
  v2 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (a1 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = _swiftEmptyArrayStorage;
    if (v10)
    {
      v28 = _swiftEmptyArrayStorage;
      result = sub_100776524(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v23 = v9;
      v24 = v7;
      v12 = 0;
      v11 = v28;
      v13 = a1;
      v25 = v2 + 32;
      v26 = a1 & 0xC000000000000001;
      do
      {
        if (v26)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v13 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = &v14[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
        v18 = *(v16 + 3);
        v17 = *(v16 + 4);
        sub_100020E58(v16, v18);
        (*(v17 + 24))(v18, v17);

        v28 = v11;
        v20 = v11[2];
        v19 = v11[3];
        if (v20 >= v19 >> 1)
        {
          sub_100776524(v19 > 1, v20 + 1, 1);
          v11 = v28;
        }

        ++v12;
        v11[2] = v20 + 1;
        (*(v2 + 32))(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v20, v4, v27);
        v13 = a1;
      }

      while (v10 != v12);
      v9 = v23;
      v7 = v24;
    }

    static TaskPriority.high.getter();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v9;
    v22[5] = v11;

    sub_100CA64C8(0, 0, v7, &unk_1014787D0, v22);

    return sub_10000CAAC(v7, &qword_1019FB750);
  }

  return result;
}

uint64_t sub_100734264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v7 = type metadata accessor for UUID();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_100734328, a4, 0);
}

uint64_t sub_100734328()
{
  v1 = v0[20];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v4 = v0[19];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    swift_beginAccess();
    v7 = *(v3 + 16);
    v3 += 16;
    v6 = v7;
    v8 = (v3 - 8);
    v9 = *(v3 + 56);
    v26 = v4;
    v24 = v9;
    v25 = v7;
    v7(v0[23], v5, v0[21]);
    while (1)
    {
      v10 = *(v4 + 272);
      if (*(v10 + 16))
      {
        v11 = v0[23];

        v12 = sub_10003E994(v11);
        if (v13)
        {
          v14 = *(*(v10 + 56) + 8 * v12);

          *(v14 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) = 1;
          if (qword_1019F2108 != -1)
          {
            swift_once();
          }

          v15 = static OS_os_log.crlAssetDownloadManager;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146BDE0;
          v17 = UUID.uuidString.getter();
          v19 = v18;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v17;
          *(inited + 40) = v19;
          v20 = *(v14 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts);
          *(inited + 96) = &type metadata for Int;
          *(inited + 104) = &protocol witness table for Int;
          *(inited + 72) = v20;
          v21 = static os_log_type_t.default.getter();
          sub_100005404(v15, &_mh_execute_header, v21, "Asset %{public}@ download was cancelled on the %d attempt", 57, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          if (*(v14 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask))
          {

            Task.cancel()();
          }

          v4 = v26;
          v9 = v24;
          v6 = v25;
        }

        else
        {
        }
      }

      (*v8)(v0[23], v0[21]);
      v5 += v9;
      if (!--v2)
      {
        break;
      }

      v6(v0[23], v5, v0[21]);
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100734604()
{
  type metadata accessor for CRLAsset();
  v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100733F28(v0);
}

uint64_t sub_10073466C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1007346A4()
{

  sub_10000CAAC(v0 + 176, &unk_1019FD5A0);

  sub_10000CAAC(v0 + 224, &qword_1019FD580);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100734724()
{
  sub_1007346A4();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for CRLAssetDownloadManager.AssetRequestInfo()
{
  result = qword_1019FD258;
  if (!qword_1019FD258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007347C8()
{
  result = type metadata accessor for UUID();
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

unint64_t sub_1007348E0()
{
  result = qword_1019FD548;
  if (!qword_1019FD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FD548);
  }

  return result;
}

uint64_t sub_100734934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100734264(a1, v4, v5, v7, v6);
}

uint64_t sub_100734A28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100734A9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D4C8;

  return sub_10072D864(v10, a1, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100734BE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100730650(a1, v4, v5, v6);
}

uint64_t sub_100734CA8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100734D98(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D3D4;

  return sub_10072D864(v10, a1, v8, v9, v1 + v6, v11, v12);
}

char *sub_100734EF4(uint64_t a1, void *a2)
{
  v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BC5DC(_swiftEmptyArrayStorage);
    v5 = v14;
  }

  else
  {
    v5 = _swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_observedObjects] = v5;
  *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting] = a1;
  v6 = [swift_unknownObjectRetain() interactiveCanvasController];
  v7 = [v6 changeNotifier];

  *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_changeNotifier] = v7;
  *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CRLMiniFormatterStateManager();
  v8 = a2;
  v9 = objc_msgSendSuper2(&v15, "init");
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:"selectionPathDidChangeWithNotification:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:*&v11[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController]];

  sub_1007357AC();
  swift_unknownObjectRelease();

  return v11;
}

void *sub_100735088()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 editorController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = 0;
      v6 = (v5 + 16);
      v9[4] = sub_1007257EC;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = *"";
      v9[2] = sub_10066C70C;
      v9[3] = &unk_101884A40;
      v7 = _Block_copy(v9);

      [v4 enumerateEditorsOnStackUsingBlock:v7];

      _Block_release(v7);
      swift_beginAccess();
      v2 = *v6;
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

void sub_100735208(uint64_t a1, SEL *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_changeNotifier);
  if (v3)
  {
    v4 = v2;
    v5 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = v3;

      __CocoaSet.makeIterator()();
      type metadata accessor for CRLBoardItem(0);
      sub_1006D2240();
      Set.Iterator.init(_cocoa:)();
      v5 = v23;
      v7 = v24;
      v8 = v25;
      v9 = v26;
      v10 = v27;
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      v7 = a1 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(a1 + 56);
      v14 = v3;

      v9 = 0;
    }

    v15 = (v8 + 64) >> 6;
    if (v5 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v16 = v9;
      v17 = v10;
      v18 = v9;
      if (!v10)
      {
        break;
      }

LABEL_13:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v5 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
LABEL_19:
        sub_100035F90();

        return;
      }

      while (1)
      {
        [v3 *a2];

        v9 = v18;
        v10 = v19;
        if ((v5 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for CRLBoardItem(0);
          swift_dynamicCast();
          v20 = v22;
          v18 = v9;
          v19 = v10;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_19;
      }

      v17 = *(v7 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void CRLMiniFormatterStateManager.processChanges(_:forChangeSource:)(uint64_t a1, uint64_t a2)
{
  if ((v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode] & 1) == 0)
  {
    v5 = [*&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting] interactiveCanvasController];
    if (v5)
    {
      v6 = v5;
      sub_100064288(a2, v11);
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = v2;
      sub_10000BF3C(v11, (v7 + 32));
      v10[4] = sub_100735CC4;
      v10[5] = v7;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = *"";
      v10[2] = sub_100007638;
      v10[3] = &unk_1018848E0;
      v8 = _Block_copy(v10);

      v9 = v2;

      [v6 performBlockOnMainThreadAfterLayoutIfNecessary:v8];
      _Block_release(v8);
    }
  }
}

void sub_10073554C(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v6;
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v7 = sub_1000640CC(v18), (v8 & 1) != 0))
    {
      sub_100064288(*(v5 + 56) + 32 * v7, v21);
      sub_100064234(v18);

      sub_100006370(0, &qword_1019FCBC0);
      if (swift_dynamicCast())
      {
        v9 = v19;
        v10 = [*&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController] selectionPath];
        if (v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode] == 1 || (v11 = [*&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting] interactiveCanvasController]) == 0)
        {
        }

        else
        {
          v12 = v11;
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v2;
          v13[4] = v9;
          v18[4] = sub_100736534;
          v18[5] = v13;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = *"";
          v18[2] = sub_100007638;
          v18[3] = &unk_1018849F0;
          v14 = _Block_copy(v18);
          v15 = v10;
          v16 = v2;
          v17 = v9;

          [v12 performBlockOnMainThreadAfterLayoutIfNecessary:v14];

          _Block_release(v14);
        }
      }
    }

    else
    {

      sub_100064234(v18);
    }
  }
}

void sub_1007357AC()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1019F2368 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD80C8;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_10073652C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = *"";
  v5[2] = sub_100059694;
  v5[3] = &unk_1018849A0;
  v3 = _Block_copy(v5);

  v4 = [v0 addObserverForName:v1 object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

void sub_1007359FC(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    v17 = *((swift_isaMask & *a2) + 0x138);
    v16 = *((swift_isaMask & *a2) + 0x120);
    v15 = *((swift_isaMask & *a2) + 0x100);
    v14 = a3;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v17(&v18, v8, a3);
      if (v19)
      {
        sub_100050F74(&v18, v20);
        (*((swift_isaMask & *a2) + 0x140))(v20);
        sub_100005070(v20);
      }

      else
      {
        sub_10000CAAC(&v18, &qword_1019FD6C8);
      }

      if (v16(v9, a3))
      {
        (*((swift_isaMask & *a2) + 0x128))();
      }

      v10 = v15(v9, a3);
      if (v10)
      {
        v11 = v10;
        v12 = *((swift_isaMask & *a2) + 0x118);
        v13 = v9;
        v12(v11, v9, 0, 1);
        a3 = v14;
      }

      ++v7;
    }

    while (v6 != v7);
  }
}

void sub_100735D64(void *a1, void *a2, void *a3)
{
  sub_100006370(0, &qword_1019F54D0);
  v6 = [*(a2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController) selectionPath];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    (*((swift_isaMask & *a2) + 0x130))(&v13, a3, a1);
    if (v14)
    {
      sub_100050F74(&v13, v15);
      (*((swift_isaMask & *a2) + 0x140))(v15);
      sub_100005070(v15);
    }

    else
    {
      sub_10000CAAC(&v13, &qword_1019FD6C8);
    }

    v8 = (*((swift_isaMask & *a2) + 0xF8))(a3, a1);
    if (v8)
    {
      v9 = v8;
      v10 = *((swift_isaMask & *a2) + 0x118);
      v11 = a3;
      v12 = a1;
      v10(v9, a3, a1, 0);
    }
  }
}

double sub_100735FE8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id CRLMiniFormatterStateManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterStateManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10073611C()
{
  if ((*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode) = 1;
    v1 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 editingCoordinator];

      if (v3)
      {
        if (*&v3[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator])
        {
          sub_100833EBC(0xD00000000000001BLL, 0x8000000101562840);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_100736200()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode) == 1)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode) = 0;
    v2 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 editingCoordinator];

      if (v4)
      {
        if (!*&v4[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator])
        {
          __break(1u);
          return;
        }

        sub_1008346E4(0xD00000000000001BLL, 0x8000000101562840);
      }
    }

    v5 = (*((swift_isaMask & *v1) + 0x110))();
    if (v5)
    {
      (*((swift_isaMask & *v1) + 0x118))(v5, 2, 0, 2);
    }
  }
}

void sub_100736378()
{
  v0 = Notification.userInfo.getter();
  if (v0)
  {
    v1 = v0;
    *&v8[0] = 0xD000000000000021;
    *(&v8[0] + 1) = 0x8000000101562810;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_1000640CC(v9), (v3 & 1) != 0))
    {
      sub_100064288(*(v1 + 56) + 32 * v2, v8);
      sub_100064234(v9);

      sub_10000CAAC(v8, &unk_1019F4D00);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        if ((*(Strong + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode) & 1) == 0)
        {
          v7 = (*((swift_isaMask & *Strong) + 0x108))(Strong, v5);
          if (v7)
          {
            (*((swift_isaMask & *v6) + 0x118))(v7, 1);
          }
        }
      }
    }

    else
    {

      sub_100064234(v9);
      memset(v8, 0, sizeof(v8));
      sub_10000CAAC(v8, &unk_1019F4D00);
    }
  }
}

void sub_100736558(void *a1, id a2)
{
  v4 = *(v2 + 16);
  v5 = [a2 ownerName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0xE000000000000000;
  }

  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_13;
  }

  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v10)
  {

LABEL_13:

    goto LABEL_14;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    v13 = &selRef_sharedCloudDatabase;
    goto LABEL_15;
  }

LABEL_14:
  v13 = &selRef_privateCloudDatabase;
LABEL_15:
  v14 = [v4 *v13];
  [a1 setDatabase:v14];
  [v14 addOperation:a1];
}

uint64_t sub_1007366B8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100736714(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v32 = a2;
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v33 = type metadata accessor for UUID();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v34 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3;
  if (a3)
  {
    v30 = v9;
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.assetManagement;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(inited + 56) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 64) = v16;
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v16;
    *(inited + 72) = v17;
    *(inited + 80) = v18;
    v19 = static os_log_type_t.default.getter();
    sub_100005404(v29, &_mh_execute_header, v19, "CRLCloudAssetDownloader _downloadFinished(assetUUID:%@, result: failed) - %@ ", 77, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v9 = v30;
  }

  else
  {
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.assetManagement;
    sub_1005B981C(&qword_1019F54E0);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_10146C6B0;
    v22 = UUID.uuidString.getter();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_1000053B0();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v25 = static os_log_type_t.default.getter();
    sub_100005404(v20, &_mh_execute_header, v25, "CRLCloudAssetDownloader _downloadFinished(assetUUID:%@, result: success) ", 73, 2, v21);
    swift_setDeallocating();
    sub_100005070(v21 + 32);
  }

  swift_beginAccess();
  if (*(*(v4 + 176) + 16))
  {

    sub_10003E994(a1);
    if (v26)
    {

      sub_10073AE24(v32, v31 & 1);
    }

    else
    {
    }
  }

  v27 = v34;
  (*(v10 + 16))(v34, a1, v33);
  swift_beginAccess();
  sub_100BC389C(0, v27);
  swift_endAccess();
  swift_beginAccess();
  sub_100ED6D70(a1, v9);
  sub_10000CAAC(v9, &qword_1019F6990);
  return swift_endAccess();
}

uint64_t sub_100736B38(uint64_t a1)
{
  v2[51] = a1;
  v2[52] = v1;
  v3 = type metadata accessor for UUID();
  v2[53] = v3;
  v2[54] = *(v3 - 8);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();

  return _swift_task_switch(sub_100736C10, v1, 0);
}

uint64_t sub_100736C10()
{
  v1 = v0[51];
  v2 = v0[52];
  swift_beginAccess();
  v3 = *(v2 + 168);

  LOBYTE(v1) = sub_10079C3B4(v1, v3);

  if (v1)
  {
    v4 = v0[52];
    swift_beginAccess();
    v5 = *(v4 + 176);
    if (*(v5 + 16))
    {
      v6 = v0[51];

      v7 = sub_10003E994(v6);
      if (v8)
      {
        v9 = *(*(v5 + 56) + 8 * v7);
        swift_retain_n();

LABEL_10:
        v0[58] = v9;
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v19 = static OS_os_log.dataSync;
        v0[59] = static OS_os_log.dataSync;
        v0[60] = sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v21 = UUID.uuidString.getter();
        v23 = v22;
        *(inited + 56) = &type metadata for String;
        v24 = sub_1000053B0();
        v0[61] = v24;
        *(inited + 64) = v24;
        *(inited + 32) = v21;
        *(inited + 40) = v23;
        v25 = static os_log_type_t.default.getter();
        sub_100005404(v19, &_mh_execute_header, v25, "Waiting on an ongoing download for asset: %@", 44, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        UUID.init()();
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_10146BDE0;
        v27 = UUID.uuidString.getter();
        *(v26 + 56) = &type metadata for String;
        *(v26 + 64) = v24;
        *(v26 + 32) = v27;
        *(v26 + 40) = v28;
        v29 = UUID.uuidString.getter();
        *(v26 + 96) = &type metadata for String;
        *(v26 + 104) = v24;
        *(v26 + 72) = v29;
        *(v26 + 80) = v30;
        v31 = static os_log_type_t.default.getter();
        sub_100005404(v19, &_mh_execute_header, v31, "Adding observer %{public}@ for asset %{public}@", 47, 2, v26);
        swift_setDeallocating();
        v0[62] = sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v32 = swift_task_alloc();
        v0[63] = v32;
        *v32 = v0;
        v32[1] = sub_100737094;

        return sub_10073AA38();
      }
    }

    v17 = v0[51];
    sub_1005B981C(&qword_1019FD8B0);
    v9 = swift_allocObject();
    *(v9 + 16) = _swiftEmptyArrayStorage;
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v4 + 176);
    *(v4 + 176) = 0x8000000000000000;
    sub_100A9E144(v9, v17, isUniquelyReferenced_nonNull_native);
    *(v4 + 176) = v33;
    swift_endAccess();
    goto LABEL_10;
  }

  v11 = v0[55];
  v10 = v0[56];
  v12 = v0[53];
  v13 = v0[54];
  (*(v13 + 16))(v11, v0[51], v12);
  swift_beginAccess();
  sub_100E6AF38(v10, v11);
  (*(v13 + 8))(v10, v12);
  swift_endAccess();
  v14 = swift_task_alloc();
  v0[66] = v14;
  *v14 = v0;
  v14[1] = sub_100737354;
  v15 = v0[51];

  return sub_100737690(v15);
}

uint64_t sub_100737094(uint64_t a1)
{
  v4 = *v2;
  v4[64] = v1;

  v5 = v4[52];

  if (v1)
  {
    v6 = sub_100737540;
  }

  else
  {
    v4[65] = a1;
    v6 = sub_1007371EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007371EC()
{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[54];
  v14 = v0[53];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v6 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v6;
  *(inited + 40) = v7;
  v8 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v10, "Observer %{public}@ received asset download result for asset %{public}@", 71, 2, inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  (*(v4 + 8))(v3, v14);
  v11 = v0[65];

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_100737354(uint64_t a1)
{
  v4 = *v2;
  v4[67] = v1;

  v5 = v4[52];
  if (v1)
  {
    v6 = sub_1007375E4;
  }

  else
  {
    v4[68] = a1;
    v6 = sub_100737490;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100737490()
{
  v1 = v0[68];
  v2 = v0[51];

  sub_100736714(v2, v1, 0);

  v3 = v0[68];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100737540()
{
  v1 = v0[57];
  v2 = v0[53];
  v3 = v0[54];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1007375E4()
{
  v1 = v0[67];
  v2 = v0[51];
  swift_errorRetain();
  sub_100736714(v2, v1, 1);

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100737690(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = type metadata accessor for UUID();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = type metadata accessor for CRLCloudAssetDownloader.DownloadRequest();
  v2[54] = swift_task_alloc();
  v4 = type metadata accessor for CRLAssetAddress();
  v2[55] = v4;
  v2[56] = *(v4 - 8);
  v2[57] = swift_task_alloc();

  return _swift_task_switch(sub_10073785C, v1, 0);
}

uint64_t sub_10073785C()
{
  v38 = v0;
  static Task<>.checkCancellation()();
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.assetManagement;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v9, "CRLCloudAssetDownloader _downloadAsset(assetUUID:%@) ", 53, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[58] = Strong;
  if (Strong)
  {
    v11 = type metadata accessor for CRLBoardDataStore(0);
    v12 = swift_task_alloc();
    v0[59] = v12;
    *v12 = v0;
    v12[1] = sub_100737EB8;
    v13 = v0[42];

    return (sub_100DCCD2C)(v13, v11, &off_101884678);
  }

  else
  {
    v14 = objc_opt_self();
    v15 = [v14 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlAssert;
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_10146CA70;
    *(v23 + 56) = &type metadata for Int32;
    *(v23 + 64) = &protocol witness table for Int32;
    *(v23 + 32) = v15;
    v24 = sub_100006370(0, &qword_1019F4D30);
    *(v23 + 96) = v24;
    v25 = sub_1005CF04C();
    *(v23 + 72) = v16;
    *(v23 + 136) = &type metadata for String;
    *(v23 + 144) = v8;
    *(v23 + 104) = v25;
    *(v23 + 112) = v19;
    *(v23 + 120) = v21;
    *(v23 + 176) = &type metadata for UInt;
    *(v23 + 184) = &protocol witness table for UInt;
    *(v23 + 152) = 119;
    v26 = v37;
    *(v23 + 216) = v24;
    *(v23 + 224) = v25;
    *(v23 + 192) = v26;
    v27 = v16;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v14 handleFailureInFunction:v33 file:v34 lineNumber:119 isFatal:0 format:v35 args:v32];

    sub_1007348E0();
    swift_allocError();
    *v36 = 0xD00000000000002CLL;
    v36[1] = 0x8000000101562C00;
    swift_willThrow();

    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_100737EB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 480) = a1;
  *(v4 + 488) = v1;

  v5 = *(v3 + 344);
  if (v1)
  {
    v6 = sub_100738820;
  }

  else
  {
    v6 = sub_100737FEC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100737FEC()
{
  v1 = *(v0 + 480);
  v2 = *(v1 + 16);
  *(v0 + 496) = v2;
  if (v2)
  {
    v4 = *(v0 + 440);
    v3 = *(v0 + 448);
    *(v0 + 504) = sub_100006370(0, &qword_1019F6E98);
    v5 = *(v3 + 80);
    *(v0 + 568) = v5;
    result = sub_100006370(0, &qword_1019F69D0);
    *(v0 + 512) = result;
    *(v0 + 520) = CKCurrentUserDefaultName;
    *(v0 + 528) = 0u;
    if (*(v1 + 16))
    {
      v7 = (v5 + 32) & ~v5;
      v8 = *(v0 + 456);
      v9 = *(v0 + 400);
      sub_10073B2D4(v1 + v7, v8, type metadata accessor for CRLAssetAddress);
      v10 = *(v4 + 24);
      sub_10073B2D4(v8 + v10, v9, type metadata accessor for CRLAssetReferrerIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = *(v0 + 416);
      v13 = *(v0 + 400);
      if (EnumCaseMultiPayload == 1)
      {
        v14 = *(v0 + 352);
        v15 = *(v0 + 360);
        v16 = sub_1005B981C(&qword_1019F4720);
        sub_10073B33C(v13 + *(v16 + 48), v12, type metadata accessor for CRLBoardIdentifier);
        (*(v15 + 8))(v13, v14);
      }

      else
      {
        sub_10073B33C(*(v0 + 400), *(v0 + 416), type metadata accessor for CRLBoardIdentifier);
      }

      sub_10073B2D4(v8 + v10, *(v0 + 392), type metadata accessor for CRLAssetReferrerIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = *(v0 + 392);
        v20 = *(v0 + 376);
        v22 = *(v0 + 352);
        v21 = *(v0 + 360);
        v23 = v19 + *(sub_1005B981C(&qword_1019F4720) + 48);
        (*(v21 + 32))(v20, v19, v22);
      }

      else
      {
        v24 = *(v0 + 408);
        v25 = *(v0 + 376);
        v26 = *(v0 + 352);
        v27 = *(v0 + 360);
        sub_10073B33C(*(v0 + 392), v24, type metadata accessor for CRLBoardIdentifier);
        (*(v27 + 16))(v25, v24, v26);
        v23 = *(v0 + 408);
      }

      v28 = *(v0 + 416);
      v29 = *(v0 + 368);
      v31 = *(v0 + 352);
      v30 = *(v0 + 360);
      sub_100025C68(v23, type metadata accessor for CRLBoardIdentifier);
      v32 = UUID.uuidString.getter();
      v34 = v33;
      v35 = *(v30 + 16);
      v35(v29, v28, v31);
      v36 = (v28 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
      v37 = *v36;
      v38 = v36[1];
      v64 = v35;
      v62 = v34;
      v63 = v32;
      if (!*v36 && v38 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v39;
      }

      else
      {
      }

      v40 = *(v0 + 432);
      v60 = *(v0 + 440);
      v61 = *(v0 + 456);
      v41 = *(v0 + 424);
      v59 = *(v0 + 416);
      v42 = *(v0 + 368);
      v58 = *(v0 + 376);
      v44 = *(v0 + 352);
      v43 = *(v0 + 360);
      *(v0 + 320) = 0x5F6472616F42;
      *(v0 + 328) = 0xE600000000000000;
      v45._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v45);

      v46._countAndFlagsBits = v37;
      v46._object = v38;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(*(v0 + 320), v46).super.isa;
      v48 = *(v43 + 8);
      v48(v42, v44);
      v49._object = v62;
      v49._countAndFlagsBits = v63;
      v50 = CKRecordID.init(recordName:zoneID:)(v49, isa).super.isa;
      v48(v58, v44);
      sub_100025C68(v59, type metadata accessor for CRLBoardIdentifier);
      v51 = (v61 + *(v60 + 20));
      v53 = *v51;
      v52 = v51[1];
      v64(v40);
      *(v40 + v41[5]) = v50;
      v54 = (v40 + v41[6]);
      *v54 = v53;
      v54[1] = v52;
      v55 = (v40 + v41[7]);
      *v55 = v53;
      v55[1] = v52;
      swift_bridgeObjectRetain_n();
      v56 = swift_task_alloc();
      *(v0 + 544) = v56;
      *v56 = v0;
      v56[1] = sub_100738588;
      v57 = *(v0 + 432);

      return sub_100738E50(v57);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_1007348E0();
    swift_allocError();
    *v17 = xmmword_101478600;
    swift_willThrow();
    swift_unknownObjectRelease();

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

uint64_t sub_100738588(uint64_t a1)
{
  v4 = *v2;
  v4[69] = v1;

  v5 = v4[54];
  v6 = v4[43];
  if (v1)
  {
    sub_100025C68(v5, type metadata accessor for CRLCloudAssetDownloader.DownloadRequest);
    v7 = sub_1007388EC;
  }

  else
  {
    v4[70] = a1;
    sub_100025C68(v5, type metadata accessor for CRLCloudAssetDownloader.DownloadRequest);
    v7 = sub_10073870C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10073870C()
{
  sub_100025C68(v0[57], type metadata accessor for CRLAssetAddress);

  swift_unknownObjectRelease();

  v1 = v0[1];
  v2 = v0[70];

  return v1(v2);
}

uint64_t sub_100738820()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007388EC()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  v3 = *(v0 + 536) + 1;

  result = sub_100025C68(v2, type metadata accessor for CRLAssetAddress);
  v5 = *(v0 + 552);
  if (v3 == v1)
  {

    swift_willThrow();
    swift_unknownObjectRelease();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v7 = *(v0 + 536) + 1;
    *(v0 + 536) = v7;
    *(v0 + 528) = v5;
    v8 = *(v0 + 480);
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      v9 = *(v0 + 456);
      v10 = *(v0 + 440);
      v11 = *(v0 + 400);
      sub_10073B2D4(v8 + ((*(v0 + 568) + 32) & ~*(v0 + 568)) + *(*(v0 + 448) + 72) * v7, v9, type metadata accessor for CRLAssetAddress);
      v12 = *(v10 + 24);
      sub_10073B2D4(v9 + v12, v11, type metadata accessor for CRLAssetReferrerIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v14 = *(v0 + 416);
      v15 = *(v0 + 400);
      if (EnumCaseMultiPayload == 1)
      {
        v16 = *(v0 + 352);
        v17 = *(v0 + 360);
        v18 = sub_1005B981C(&qword_1019F4720);
        sub_10073B33C(v15 + *(v18 + 48), v14, type metadata accessor for CRLBoardIdentifier);
        (*(v17 + 8))(v15, v16);
      }

      else
      {
        sub_10073B33C(*(v0 + 400), *(v0 + 416), type metadata accessor for CRLBoardIdentifier);
      }

      sub_10073B2D4(v9 + v12, *(v0 + 392), type metadata accessor for CRLAssetReferrerIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = *(v0 + 392);
        v20 = *(v0 + 376);
        v22 = *(v0 + 352);
        v21 = *(v0 + 360);
        v23 = v19 + *(sub_1005B981C(&qword_1019F4720) + 48);
        (*(v21 + 32))(v20, v19, v22);
      }

      else
      {
        v24 = *(v0 + 408);
        v25 = *(v0 + 376);
        v26 = *(v0 + 352);
        v27 = *(v0 + 360);
        sub_10073B33C(*(v0 + 392), v24, type metadata accessor for CRLBoardIdentifier);
        (*(v27 + 16))(v25, v24, v26);
        v23 = *(v0 + 408);
      }

      v28 = *(v0 + 416);
      v29 = *(v0 + 368);
      v31 = *(v0 + 352);
      v30 = *(v0 + 360);
      sub_100025C68(v23, type metadata accessor for CRLBoardIdentifier);
      v32 = UUID.uuidString.getter();
      v34 = v33;
      v35 = *(v30 + 16);
      v35(v29, v28, v31);
      v36 = (v28 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
      v37 = *v36;
      v38 = v36[1];
      v64 = v35;
      v62 = v34;
      v63 = v32;
      if (!*v36 && v38 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v39;
      }

      else
      {
      }

      v40 = *(v0 + 432);
      v60 = *(v0 + 440);
      v61 = *(v0 + 456);
      v41 = *(v0 + 424);
      v59 = *(v0 + 416);
      v42 = *(v0 + 368);
      v58 = *(v0 + 376);
      v44 = *(v0 + 352);
      v43 = *(v0 + 360);
      *(v0 + 320) = 0x5F6472616F42;
      *(v0 + 328) = 0xE600000000000000;
      v45._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v45);

      v46._countAndFlagsBits = v37;
      v46._object = v38;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(*(v0 + 320), v46).super.isa;
      v48 = *(v43 + 8);
      v48(v42, v44);
      v49._object = v62;
      v49._countAndFlagsBits = v63;
      v50 = CKRecordID.init(recordName:zoneID:)(v49, isa).super.isa;
      v48(v58, v44);
      sub_100025C68(v59, type metadata accessor for CRLBoardIdentifier);
      v51 = (v61 + *(v60 + 20));
      v53 = *v51;
      v52 = v51[1];
      v64(v40);
      *(v40 + v41[5]) = v50;
      v54 = (v40 + v41[6]);
      *v54 = v53;
      v54[1] = v52;
      v55 = (v40 + v41[7]);
      *v55 = v53;
      v55[1] = v52;
      swift_bridgeObjectRetain_n();
      v56 = swift_task_alloc();
      *(v0 + 544) = v56;
      *v56 = v0;
      v56[1] = sub_100738588;
      v57 = *(v0 + 432);

      return sub_100738E50(v57);
    }
  }

  return result;
}

uint64_t sub_100738E50(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100738E70, v1, 0);
}

uint64_t sub_100738E70()
{
  v1 = v0[3];
  v23 = v0[4];
  v2 = [objc_allocWithZone(CKFetchRecordsOperation) init];
  v0[5] = v2;
  v3 = type metadata accessor for CRLCloudAssetDownloader.DownloadRequest();
  v4 = (v1 + v3[6]);
  v24 = *v4;
  v26 = v4[1];

  v5._countAndFlagsBits = 0x7465737341;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v6 = v24;
  v7 = v26;
  v8 = (v1 + v3[7]);
  v25 = *v8;
  v27 = v8[1];

  v9._countAndFlagsBits = 0x74654D7465737341;
  v9._object = 0xED00006174616461;
  String.append(_:)(v9);
  v10 = *(v1 + v3[5]);
  sub_1005B981C(&unk_1019F4D60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101465920;
  *(v11 + 32) = v10;
  sub_100006370(0, &qword_1019F6E98);
  v12 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setRecordIDs:isa];

  sub_1005B981C(&unk_1019F61D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146BDE0;
  *(v14 + 32) = v6;
  *(v14 + 40) = v7;
  *(v14 + 48) = v25;
  *(v14 + 56) = v27;
  CKFetchRecordsOperation.desiredKeys.setter();
  v15 = swift_task_alloc();
  v0[6] = v15;
  v15[2] = v2;
  v15[3] = v12;
  v15[4] = v1;
  v15[5] = v23;
  v16 = swift_task_alloc();
  v0[7] = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = v2;
  v18 = sub_10073B28C(&qword_1019FD8A0, v17, type metadata accessor for CRLCloudAssetDownloader);
  v19 = v2;
  v20 = swift_task_alloc();
  v0[8] = v20;
  v21 = type metadata accessor for CRLAssetSyncRemoteRecord();
  *v20 = v0;
  v20[1] = sub_10073914C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_101478A20, v15, sub_10073A8EC, v16, v23, v18, v21);
}

uint64_t sub_10073914C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1007392F4;
  }

  else
  {
    v6 = v2 + 32;
    v5 = *(v2 + 32);

    v4 = sub_10073928C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10073928C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1007392F4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100739378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1007393A0, a5, 0);
}

uint64_t sub_1007393A0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 40);
  v3 = *(v2 + 48);
  v5 = sub_10073B28C(&qword_1019FD8A0, a2, type metadata accessor for CRLCloudAssetDownloader);
  v6 = swift_task_alloc();
  *(v2 + 56) = v6;
  *(v6 + 16) = *(v2 + 24);
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  v7 = swift_task_alloc();
  *(v2 + 64) = v7;
  v8 = type metadata accessor for CRLAssetSyncRemoteRecord();
  *v7 = v2;
  v7[1] = sub_1007394E4;
  v9 = *(v2 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v3, v5, 0xD000000000000024, 0x8000000101562970, sub_10073B180, v6, v8);
}

uint64_t sub_1007394E4()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];

    return _swift_task_switch(sub_100739620, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100739620()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100739684(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v27 = a5;
  v23 = a2;
  v24 = a4;
  v25 = a1;
  v6 = sub_1005B981C(&qword_1019FD8A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CRLCloudAssetDownloader.DownloadRequest();
  v11 = v10 - 8;
  v22 = *(v10 - 8);
  v12 = *(v22 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = _swiftEmptyDictionarySingleton;

  CKFetchRecordsOperation.perRecordResultBlock.setter();
  sub_10073B2D4(a4, v13, type metadata accessor for CRLCloudAssetDownloader.DownloadRequest);
  (*(v7 + 16))(v9, v25, v6);
  v15 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v18 = v26;
  *(v17 + 16) = v14;
  *(v17 + 24) = v18;
  sub_10073B33C(v13, v17 + v15, type metadata accessor for CRLCloudAssetDownloader.DownloadRequest);
  (*(v7 + 32))(v17 + v16, v9, v6);

  v19 = v18;
  v20 = v23;
  CKFetchRecordsOperation.fetchRecordsResultBlock.setter();
  [v20 setQueuePriority:4];
  sub_100020E58((v27 + 128), *(v27 + 152));
  v21 = [*(v24 + *(v11 + 28)) zoneID];
  sub_100736558(v20, v21);
}

uint64_t sub_100739970(void *a1, void *a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1;
  sub_1006CE2EC(a2, a3 & 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_100A9E2BC(a2, a3 & 1, v8, isUniquelyReferenced_nonNull_native);

  *(a4 + 16) = v11;
  return swift_endAccess();
}

void sub_100739A18(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 16);
  if (!*(v9 + 16) || (v10 = sub_1007C8B7C(a4), (v11 & 1) == 0))
  {
    swift_endAccess();
    if (a2)
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v29 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      v31 = [a4 recordName];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      *(inited + 56) = &type metadata for String;
      v35 = sub_1000053B0();
      *(inited + 64) = v35;
      *(inited + 32) = v32;
      *(inited + 40) = v34;
      v36 = [a4 zoneID];
      v37 = [v36 zoneName];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v35;
      *(inited + 72) = v38;
      *(inited + 80) = v40;
      swift_getErrorValue();
      v41 = Error.localizedDescription.getter();
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v35;
      *(inited + 112) = v41;
      *(inited + 120) = v42;
      v43 = static os_log_type_t.default.getter();
      sub_100005404(v29, &_mh_execute_header, v43, "Failed to download asset. RecordID: %@ zoneName: %@. Error %@", 61, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_errorRetain();
      sub_1005B981C(&qword_1019FD8A8);
    }

    else
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v44 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      v45 = swift_initStackObject();
      *(v45 + 16) = xmmword_10146C6B0;
      v46 = [a4 recordName];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_1000053B0();
      *(v45 + 32) = v47;
      *(v45 + 40) = v49;
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v50, "Encountered internal CloudKit logic error when fetching a record ID: %{public}@", 79, 2, v45);
      swift_setDeallocating();
      sub_100005070(v45 + 32);
      type metadata accessor for CKError(0);
      sub_1009F47A4(_swiftEmptyArrayStorage);
      sub_10073B28C(&qword_1019F3348, 255, type metadata accessor for CKError);
      _BridgedStoredNSError.init(_:userInfo:)();
      sub_1005B981C(&qword_1019FD8A8);
    }

    goto LABEL_14;
  }

  v12 = *(v9 + 56) + 16 * v10;
  v13 = *v12;
  v14 = *(v12 + 8);
  swift_endAccess();
  if (v14)
  {
    swift_errorRetain();
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v109 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_10146C4D0;
    v16 = [a4 recordName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v15 + 56) = &type metadata for String;
    v20 = sub_1000053B0();
    *(v15 + 64) = v20;
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    v21 = [a4 zoneID];
    v22 = [v21 zoneName];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v20;
    *(v15 + 72) = v23;
    *(v15 + 80) = v25;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    *(v15 + 136) = &type metadata for String;
    *(v15 + 144) = v20;
    *(v15 + 112) = v26;
    *(v15 + 120) = v27;
    v28 = static os_log_type_t.default.getter();
    sub_100005404(v109, &_mh_execute_header, v28, "Failed to download asset. RecordID: %@ zoneName: %@. Error %@", 61, 2, v15);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    sub_1005B981C(&qword_1019FD8A8);
LABEL_14:
    CheckedContinuation.resume(throwing:)();
    return;
  }

  v108 = v13;
  v51 = qword_1019F2270;
  v13;
  if (v51 != -1)
  {
    swift_once();
  }

  v52 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_10146BDE0;
  v54 = [a4 recordName];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  *(v53 + 56) = &type metadata for String;
  v58 = sub_1000053B0();
  *(v53 + 64) = v58;
  *(v53 + 32) = v55;
  *(v53 + 40) = v57;
  v59 = [a4 zoneID];
  v60 = [v59 zoneName];

  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  *(v53 + 96) = &type metadata for String;
  *(v53 + 104) = v58;
  v64 = v58;
  *(v53 + 72) = v61;
  *(v53 + 80) = v63;
  v65 = static os_log_type_t.default.getter();
  sub_100005404(v52, &_mh_execute_header, v65, "Downloaded record containing asset. RecordID: %@ zoneName: %@", 61, 2, v53);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v66 = (a5 + *(type metadata accessor for CRLCloudAssetDownloader.DownloadRequest() + 24));
  v68 = *v66;
  v67 = v66[1];
  if (sub_100EE982C(*v66, v67))
  {
    v107 = v52;
    if (static UUID.== infix(_:_:)())
    {
      v69 = swift_initStackObject();
      *(v69 + 16) = xmmword_10146BDE0;
      v70 = [a4 recordName];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      *(v69 + 56) = &type metadata for String;
      *(v69 + 64) = v58;
      *(v69 + 32) = v71;
      *(v69 + 40) = v73;
      v74 = [a4 zoneID];
      v75 = [v74 zoneName];

      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      *(v69 + 96) = &type metadata for String;
      *(v69 + 104) = v58;
      *(v69 + 72) = v76;
      *(v69 + 80) = v78;
      v79 = static os_log_type_t.default.getter();
      sub_100005404(v107, &_mh_execute_header, v79, "Successfully downloaded asset. RecordID: %@ zoneName: %@", 56, 2, v69);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1005B981C(&qword_1019FD8A8);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      v93 = swift_initStackObject();
      *(v93 + 16) = xmmword_10146C4D0;
      v94 = UUID.uuidString.getter();
      *(v93 + 56) = &type metadata for String;
      *(v93 + 64) = v64;
      *(v93 + 32) = v94;
      *(v93 + 40) = v95;
      v96 = [a4 recordName];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      *(v93 + 96) = &type metadata for String;
      *(v93 + 104) = v64;
      *(v93 + 72) = v97;
      *(v93 + 80) = v99;
      v100 = [a4 zoneID];
      v101 = [v100 zoneName];

      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      *(v93 + 136) = &type metadata for String;
      *(v93 + 144) = v64;
      *(v93 + 112) = v102;
      *(v93 + 120) = v104;
      v105 = static os_log_type_t.error.getter();
      sub_100005404(v52, &_mh_execute_header, v105, "Couldn't find asset with UUID %{public}@. RecordID: %@ zoneName: %@", 67, 2, v93);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1007348E0();
      swift_allocError();
      *v106 = xmmword_101478900;
      sub_1005B981C(&qword_1019FD8A8);
      CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    v80 = swift_initStackObject();
    *(v80 + 16) = xmmword_10146C4D0;

    v81._countAndFlagsBits = 0x7465737341;
    v81._object = 0xE500000000000000;
    String.append(_:)(v81);
    *(v80 + 56) = &type metadata for String;
    *(v80 + 64) = v58;
    *(v80 + 32) = v68;
    *(v80 + 40) = v67;
    v82 = [a4 recordName];
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    *(v80 + 96) = &type metadata for String;
    *(v80 + 104) = v58;
    *(v80 + 72) = v83;
    *(v80 + 80) = v85;
    v86 = [a4 zoneID];
    v87 = [v86 zoneName];

    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    *(v80 + 136) = &type metadata for String;
    *(v80 + 144) = v58;
    *(v80 + 112) = v88;
    *(v80 + 120) = v90;
    v91 = static os_log_type_t.error.getter();
    sub_100005404(v52, &_mh_execute_header, v91, "Couldn't find asset with key %@. RecordID: %@ zoneName: %@", 58, 2, v80);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1007348E0();
    swift_allocError();
    *v92 = 0;
    v92[1] = 0;
    sub_1005B981C(&qword_1019FD8A8);
    CheckedContinuation.resume(throwing:)();
  }

  sub_1006CCCD4(v108, 0);
}

id sub_10073A5AC(void *a1, void *a2)
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v6 = [a1 recordName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v11 = [a1 zoneID];
  v12 = [v11 zoneName];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v10;
  *(inited + 72) = v13;
  *(inited + 80) = v15;
  v16 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v16, "Cancelling the asset fetch request because the task was cancelled. RecordID: %@ zoneName: %@", 92, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  return [a2 cancel];
}

uint64_t sub_10073A76C()
{
  sub_1000C1024(v0 + 112);
  sub_100005070(v0 + 128);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for CRLCloudAssetDownloader.DownloadRequest()
{
  result = qword_1019FD920;
  if (!qword_1019FD920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10073A82C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_100739378(a1, v4, v5, v7, v6);
}

uint64_t sub_10073A8F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FD8C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1005B981C(&qword_1019FD8A8);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = *(*a2 + 88);
  swift_beginAccess();
  sub_10073B3AC(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_10073AA58()
{
  v1 = v0[6];
  sub_1005B981C(&qword_1019FD8B8);
  v2 = swift_allocObject();
  v0[7] = v2;
  v3 = *(*v2 + 88);
  v4 = sub_1005B981C(&qword_1019FD8A8);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = type metadata accessor for CRLAssetSyncRemoteRecord();
  *v5 = v0;
  v5[1] = sub_10073AC3C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0x286576726573626FLL, 0xE900000000000029, sub_10073B3A4, v2, v6);
}

uint64_t sub_10073AC3C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10073ADC0;
  }

  else
  {
    *(v2 + 80) = *(v2 + 40);
    v3 = sub_10073AD58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10073AD58()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_10073ADC0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10073AE24(uint64_t a1, int a2)
{
  v3 = v2;
  v27 = a2;
  v26 = a1;
  v4 = sub_1005B981C(&qword_1019FD8A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_1005B981C(&qword_1019FD8C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  swift_beginAccess();
  result = *(v3 + 16);
  if (result >> 62)
  {
    v22 = *(v3 + 16);
    v15 = _CocoaArrayWrapper.endIndex.getter();
    result = v22;
    if (!v15)
    {
      return result;
    }
  }

  else
  {
    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    v28 = result & 0xC000000000000001;
    v29 = result;
    v16 = (v5 + 48);
    v24 = (v5 + 8);
    v25 = (v5 + 16);
    v17 = (v5 + 56);

    v18 = 0;
    v19 = v15;
    do
    {
      if (v28)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v29 + 8 * v18 + 32);
      }

      v21 = *(*v20 + 88);
      swift_beginAccess();
      sub_10073B41C(v20 + v21, v13);
      if ((*v16)(v13, 1, v4))
      {
        sub_10000CAAC(v13, &qword_1019FD8C0);
      }

      else
      {
        (*v25)(v7, v13, v4);
        sub_10000CAAC(v13, &qword_1019FD8C0);
        v30 = v26;
        if (v27)
        {
          swift_errorRetain();
          CheckedContinuation.resume(throwing:)();
        }

        else
        {

          CheckedContinuation.resume(returning:)();
        }

        (*v24)(v7, v4);
      }

      ++v18;
      (*v17)(v10, 1, 1, v4);
      swift_beginAccess();
      sub_10073B3AC(v10, v20 + v21);
      swift_endAccess();
    }

    while (v19 != v18);
  }

  return result;
}

void sub_10073B198(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CRLCloudAssetDownloader.DownloadRequest() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_1005B981C(&qword_1019FD8A8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  sub_100739A18(a1, a2 & 1, v7, v8, v2 + v6);
}

uint64_t sub_10073B28C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10073B2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10073B33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10073B3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FD8C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10073B41C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FD8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10073B4B4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_100006370(319, &qword_1019F6E98);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_10073B5B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKInkTypeSwiftHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *CRLAnalyticsActiveUseManager.shared.unsafeMutableAddressor()
{
  if (qword_1019F1518 != -1)
  {
    swift_once();
  }

  return &static CRLAnalyticsActiveUseManager.shared;
}

id static CRLAnalyticsActiveUseManager.shared.getter()
{
  if (qword_1019F1518 != -1)
  {
    swift_once();
  }

  v1 = static CRLAnalyticsActiveUseManager.shared;

  return v1;
}

void sub_10073B710(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v5 + 16))(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  (*(v5 + 32))(v10 + v9, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_10073C1B8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101884CB8;
  v11 = _Block_copy(aBlock);

  [a2 addOperationWithBlock:v11];
  _Block_release(v11);
}

void sub_10073B904()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10073BBF4();
  }
}

id CRLAnalyticsActiveUseManager.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:UIApplicationWillEnterForegroundNotification object:0];
  v2 = qword_1019F1418;
  v3 = v0;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_dataStore;
  [v1 removeObserver:v3 name:qword_101AD60D8 object:*&v3[OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_dataStore]];

  v5 = qword_1019F1420;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v6 name:qword_101AD60E0 object:*&v3[v4]];

  v7 = qword_1019F1428;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v8 name:qword_101AD60E8 object:*&v3[v4]];

  v10.receiver = v8;
  v10.super_class = type metadata accessor for CRLAnalyticsActiveUseManager();
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_10073BBF4()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1000640CC(v12), (v3 & 1) == 0))
  {

    sub_100064234(v12);
LABEL_9:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_10;
  }

  sub_100064288(*(v1 + 56) + 32 * v2, &v13);
  sub_100064234(v12);

  if (!*(&v14 + 1))
  {
LABEL_10:
    sub_1005E09AC(&v13);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v4 = sub_100059A4C(v12[0], v12[1], 0);

    if (*(v4 + 16))
    {
      v5 = objc_opt_self();
      v6 = String._bridgeToObjectiveC()();
      sub_100006370(0, &qword_1019F54D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v5 sendEventInDomain:v6 lazily:1 eventPayload:{isa, 0xD000000000000010, 0x8000000101552EA0}];
    }

    else
    {
    }

    return;
  }

LABEL_11:
  if (qword_1019F2110 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAnalytics;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v10 = Notification._bridgeToObjectiveC()().super.isa;
  *(inited + 56) = sub_100006370(0, &qword_1019F8308);
  *(inited + 64) = sub_10005D590();
  *(inited + 32) = v10;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v11, "Unable to get CRLAnalyticsDataStore.overriddenUserIDKey from notification: %@", 77, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
}

void sub_10073BF84(char a1)
{
  if (*(sub_100059A4C(0, 0xE000000000000000, a1) + 16))
  {
    v1 = objc_opt_self();
    v2 = String._bridgeToObjectiveC()();
    sub_100006370(0, &qword_1019F54D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 sendEventInDomain:v2 lazily:1 eventPayload:isa];
  }

  else
  {
  }
}

uint64_t sub_10073C120()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10073C1B8()
{
  type metadata accessor for Notification();

  sub_10073B904();
}

uint64_t sub_10073C24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  v12 = static UUID.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
  if (v12)
  {
    v14 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
    v15 = sub_100746BE0(a2, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10073C3E4(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v16 = type metadata accessor for UUID();
  v15 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  v12 = *(v5 + 736);
  swift_beginAccess();
  sub_10074587C(a1, v8, &off_101884E38);
  result = swift_endAccess();
  if (!v2)
  {
    (*(v9 + 16))(v11, &v3[v12], v8);
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    (*(v9 + 8))(v11, v8);
    v14 = *(*v3 + 744);
    swift_beginAccess();
    (*(v15 + 40))(&v3[v14], v7, v16);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10073C67C()
{
  v1 = *(*v0 + 736);
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 744);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_10073C798()
{
  v1 = *v0;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v3 = v0[3];
  *(inited + 32) = v3;
  v4 = inited + 32;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  if (sub_10001FF1C() < v3)
  {
    v45 = v1;
    v44 = objc_opt_self();
    LODWORD(v1) = [v44 _atomicIncrementAssertCount];
    v47 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v47);
    StaticString.description.getter();
    v46 = inited;
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v11 = static OS_os_log.crlAssert;
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10146CA70;
      *(v12 + 56) = &type metadata for Int32;
      *(v12 + 64) = &protocol witness table for Int32;
      *(v12 + 32) = v1;
      v13 = sub_100006370(0, &qword_1019F4D30);
      *(v12 + 96) = v13;
      v14 = sub_1005CF04C();
      *(v12 + 104) = v14;
      *(v12 + 72) = v5;
      *(v12 + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(v12 + 112) = v8;
      *(v12 + 120) = v10;
      *(v12 + 176) = &type metadata for UInt;
      *(v12 + 184) = &protocol witness table for UInt;
      *(v12 + 144) = v15;
      *(v12 + 152) = 273;
      v16 = v47;
      *(v12 + 216) = v13;
      *(v12 + 224) = v14;
      *(v12 + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v12);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "Call to computedMinRequiredVersion while current minRequiredVersion is higher than current: %{public}d", 102, 2, v46);

      type metadata accessor for __VaListBuilder();
      v1 = swift_allocObject();
      *(v1 + 16) = 8;
      *(v1 + 24) = 0;
      v21 = (v1 + 24);
      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
      v22 = *(v46 + 16);
      if (!v22)
      {
LABEL_29:
        v39 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v41 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v42 = String._bridgeToObjectiveC()();

        [v44 handleFailureInFunction:v40 file:v41 lineNumber:273 isFatal:0 format:v42 args:v39];

        v1 = v45;
        return (*(v1 + 104))(v38);
      }

      v8 = 0;
      v10 = 40;
      while (1)
      {
        v23 = (v4 + 40 * v8);
        v5 = v23[4];
        sub_100020E58(v23, v23[3]);
        v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v25 = *v21;
        v26 = *(v24 + 16);
        v27 = __OFADD__(*v21, v26);
        v28 = *v21 + v26;
        if (v27)
        {
          break;
        }

        v29 = *(v1 + 32);
        if (v29 >= v28)
        {
          goto LABEL_20;
        }

        if (v29 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v5 = *(v1 + 40);
        if (2 * v29 > v28)
        {
          v28 = 2 * v29;
        }

        *(v1 + 32) = v28;
        if ((v28 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v30 = v24;
        v31 = swift_slowAlloc();
        v32 = v31;
        *(v1 + 40) = v31;
        if (v5)
        {
          if (v31 != v5 || v31 >= &v5[8 * v25])
          {
            memmove(v31, v5, 8 * v25);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v24 = v30;
LABEL_20:
          v32 = *(v1 + 40);
          if (!v32)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v24 = v30;
        if (!v32)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v34 = *(v24 + 16);
        if (v34)
        {
          v35 = (v24 + 32);
          v36 = *v21;
          while (1)
          {
            v37 = *v35++;
            *&v32[8 * v36] = v37;
            v36 = *v21 + 1;
            if (__OFADD__(*v21, 1))
            {
              break;
            }

            *v21 = v36;
            if (!--v34)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v8 == v22)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

LABEL_28:

  return (*(v1 + 104))(v38);
}

uint64_t sub_10073CD20()
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v84 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = inited + 32;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  if (sub_10001FF1C() >= v2)
  {
LABEL_28:

    goto LABEL_30;
  }

  v82 = v0;
  v81 = objc_opt_self();
  LODWORD(v0) = [v81 _atomicIncrementAssertCount];
  v85 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v85);
  StaticString.description.getter();
  v5 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v83 = inited;
  v6 = String._bridgeToObjectiveC()();

  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v9;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_69;
  }

LABEL_3:
  v10 = static OS_os_log.crlAssert;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_10146CA70;
  *(v11 + 56) = &type metadata for Int32;
  *(v11 + 64) = &protocol witness table for Int32;
  *(v11 + 32) = v0;
  v12 = sub_100006370(0, &qword_1019F4D30);
  *(v11 + 96) = v12;
  v13 = sub_1005CF04C();
  *(v11 + 104) = v13;
  *(v11 + 72) = v5;
  *(v11 + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(v11 + 112) = v8;
  *(v11 + 120) = v4;
  *(v11 + 176) = &type metadata for UInt;
  *(v11 + 184) = &protocol witness table for UInt;
  *(v11 + 144) = v14;
  *(v11 + 152) = 281;
  v15 = v85;
  *(v11 + 216) = v12;
  *(v11 + 224) = v13;
  *(v11 + 192) = v15;
  v16 = v5;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v11);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "Call to computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersion is higher than current: %{public}d", 123, 2, v83);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  *(v5 + 16) = 8;
  *(v5 + 24) = 0;
  v20 = (v5 + 24);
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  v21 = v83[2];
  if (v21)
  {
    v22 = 0;
    v8 = 40;
    while (1)
    {
      v23 = (v3 + 40 * v22);
      v4 = v23[4];
      LODWORD(v0) = sub_100020E58(v23, v23[3]);
      v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v25 = *v20;
      v26 = *(v24 + 16);
      v27 = __OFADD__(*v20, v26);
      v28 = *v20 + v26;
      if (v27)
      {
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
        swift_once();
        goto LABEL_3;
      }

      v0 = *(v5 + 32);
      if (v0 >= v28)
      {
        goto LABEL_20;
      }

      if (v0 + 0x4000000000000000 < 0)
      {
        goto LABEL_65;
      }

      v4 = *(v5 + 40);
      if (2 * v0 > v28)
      {
        v28 = 2 * v0;
      }

      *(v5 + 32) = v28;
      if ((v28 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_66;
      }

      v29 = v24;
      v30 = swift_slowAlloc();
      v31 = v30;
      *(v5 + 40) = v30;
      if (v4)
      {
        break;
      }

      v24 = v29;
      if (!v31)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v33 = *(v24 + 16);
      if (v33)
      {
        v34 = (v24 + 32);
        v35 = *v20;
        while (1)
        {
          v36 = *v34++;
          *&v31[8 * v35] = v36;
          v35 = *v20 + 1;
          if (__OFADD__(*v20, 1))
          {
            break;
          }

          *v20 = v35;
          if (!--v33)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_5:

      if (++v22 == v21)
      {
        goto LABEL_29;
      }
    }

    if (v30 != v4 || v30 >= &v4[8 * v25])
    {
      memmove(v30, v4, 8 * v25);
    }

    v0 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v24 = v29;
LABEL_20:
    v31 = *(v5 + 40);
    if (!v31)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_29:
  v37 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v39 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v40 = String._bridgeToObjectiveC()();

  [v81 handleFailureInFunction:v38 file:v39 lineNumber:281 isFatal:0 format:v40 args:v37];

  v0 = v82;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
LABEL_30:
  v41 = swift_initStackObject();
  *(v41 + 16) = v84;
  v42 = *(v0 + 32);
  *(v41 + 32) = v42;
  v3 = v41 + 32;
  *(v41 + 56) = v4;
  *(v41 + 64) = v5;
  if (sub_10001FF1C() >= v42)
  {
LABEL_58:
  }

  else
  {
    v83 = objc_opt_self();
    v43 = [v83 _atomicIncrementAssertCount];
    v85 = [objc_allocWithZone(NSString) init];
    sub_100604538(v41, &v85);
    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    *&v84 = v41;
    v45 = String._bridgeToObjectiveC()();

    v46 = [v45 lastPathComponent];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.crlAssert;
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_10146CA70;
    *(v51 + 56) = &type metadata for Int32;
    *(v51 + 64) = &protocol witness table for Int32;
    *(v51 + 32) = v43;
    v52 = sub_100006370(0, &qword_1019F4D30);
    *(v51 + 96) = v52;
    v53 = sub_1005CF04C();
    *(v51 + 104) = v53;
    *(v51 + 72) = v44;
    *(v51 + 136) = &type metadata for String;
    v54 = sub_1000053B0();
    *(v51 + 112) = v47;
    *(v51 + 120) = v49;
    *(v51 + 176) = &type metadata for UInt;
    *(v51 + 184) = &protocol witness table for UInt;
    *(v51 + 144) = v54;
    *(v51 + 152) = 282;
    v55 = v85;
    *(v51 + 216) = v52;
    *(v51 + 224) = v53;
    *(v51 + 192) = v55;
    v56 = v44;
    v57 = v55;
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v58, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v51);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v59, "Call to computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersionForGoodEnoughFidelity is higher than current: %{public}d", 144, 2, v84);

    type metadata accessor for __VaListBuilder();
    v60 = swift_allocObject();
    v60[2] = 8;
    v60[3] = 0;
    v61 = v60 + 3;
    v60[4] = 0;
    v60[5] = 0;
    v62 = *(v84 + 16);
    if (v62)
    {
      v63 = 0;
      v8 = 40;
      while (1)
      {
        v64 = (v3 + 40 * v63);
        v4 = v64[3];
        LODWORD(v0) = sub_100020E58(v64, v4);
        v65 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v5 = *v61;
        v66 = *(v65 + 16);
        v27 = __OFADD__(*v61, v66);
        v67 = *v61 + v66;
        if (v27)
        {
          goto LABEL_64;
        }

        v0 = v60[4];
        if (v0 >= v67)
        {
          goto LABEL_50;
        }

        if (v0 + 0x4000000000000000 < 0)
        {
          goto LABEL_67;
        }

        v4 = v60[5];
        if (2 * v0 > v67)
        {
          v67 = 2 * v0;
        }

        v60[4] = v67;
        if ((v67 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_68;
        }

        v68 = v65;
        v69 = swift_slowAlloc();
        v70 = v69;
        v60[5] = v69;
        if (v4)
        {
          break;
        }

        v65 = v68;
        if (!v70)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v72 = *(v65 + 16);
        if (v72)
        {
          v73 = (v65 + 32);
          v74 = *v61;
          do
          {
            v75 = *v73++;
            *&v70[8 * v74] = v75;
            v74 = *v61 + 1;
            if (__OFADD__(*v61, 1))
            {
              goto LABEL_62;
            }

            *v61 = v74;
          }

          while (--v72);
        }

        if (++v63 == v62)
        {
          goto LABEL_59;
        }
      }

      if (v69 != v4 || v69 >= &v4[8 * v5])
      {
        memmove(v69, v4, 8 * v5);
      }

      LODWORD(v0) = v60;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v65 = v68;
LABEL_50:
      v70 = v60[5];
      if (!v70)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_59:
    v76 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v78 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v79 = String._bridgeToObjectiveC()();

    [v83 handleFailureInFunction:v77 file:v78 lineNumber:282 isFatal:0 format:v79 args:v76];
  }

  return 0x2000400000000;
}

uint64_t sub_10073D758()
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = (inited + 32);
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  v85 = v0;
  if (sub_10001FF1C() >= v2)
  {
LABEL_28:

    goto LABEL_30;
  }

  v83 = objc_opt_self();
  LODWORD(v0) = [v83 _atomicIncrementAssertCount];
  v86 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v86);
  StaticString.description.getter();
  v5 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v9;

  v84 = inited;
  if (qword_1019F20A0 != -1)
  {
    goto LABEL_75;
  }

LABEL_3:
  v10 = static OS_os_log.crlAssert;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_10146CA70;
  *(v11 + 56) = &type metadata for Int32;
  *(v11 + 64) = &protocol witness table for Int32;
  *(v11 + 32) = v0;
  v12 = sub_100006370(0, &qword_1019F4D30);
  *(v11 + 96) = v12;
  v13 = sub_1005CF04C();
  *(v11 + 104) = v13;
  *(v11 + 72) = v5;
  *(v11 + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(v11 + 112) = v8;
  *(v11 + 120) = v4;
  *(v11 + 176) = &type metadata for UInt;
  *(v11 + 184) = &protocol witness table for UInt;
  *(v11 + 144) = v14;
  *(v11 + 152) = 290;
  v15 = v86;
  *(v11 + 216) = v12;
  *(v11 + 224) = v13;
  *(v11 + 192) = v15;
  v16 = v5;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v11);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersion is higher than current: %{public}d", 117, 2, v84);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v20 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v21 = *(v84 + 16);
  if (v21)
  {
    v22 = 0;
    v8 = 40;
    while (1)
    {
      v23 = &v3[40 * v22];
      v4 = *(v23 + 4);
      LODWORD(v0) = sub_100020E58(v23, *(v23 + 3));
      v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v25 = *v20;
      v26 = *(v24 + 16);
      v27 = __OFADD__(*v20, v26);
      v28 = *v20 + v26;
      if (v27)
      {
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
        swift_once();
        goto LABEL_3;
      }

      v0 = v5[4];
      if (v0 >= v28)
      {
        goto LABEL_20;
      }

      if (v0 + 0x4000000000000000 < 0)
      {
        goto LABEL_71;
      }

      v4 = v5[5];
      if (2 * v0 > v28)
      {
        v28 = 2 * v0;
      }

      v5[4] = v28;
      if ((v28 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_72;
      }

      v29 = v24;
      v30 = swift_slowAlloc();
      v31 = v30;
      v5[5] = v30;
      if (v4)
      {
        break;
      }

      v24 = v29;
      if (!v31)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v33 = *(v24 + 16);
      if (v33)
      {
        v34 = (v24 + 32);
        v35 = *v20;
        while (1)
        {
          v36 = *v34++;
          *&v31[8 * v35] = v36;
          v35 = *v20 + 1;
          if (__OFADD__(*v20, 1))
          {
            break;
          }

          *v20 = v35;
          if (!--v33)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_5:

      if (++v22 == v21)
      {
        goto LABEL_29;
      }
    }

    if (v30 != v4 || v30 >= &v4[8 * v25])
    {
      memmove(v30, v4, 8 * v25);
    }

    v0 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v24 = v29;
LABEL_20:
    v31 = v5[5];
    if (!v31)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_29:
  v37 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v39 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v40 = String._bridgeToObjectiveC()();

  [v83 handleFailureInFunction:v38 file:v39 lineNumber:290 isFatal:0 format:v40 args:v37];

  v0 = v85;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
LABEL_30:
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_10146C6B0;
  v42 = *(v0 + 40);
  *(v41 + 32) = v42;
  v43 = v41 + 32;
  *(v41 + 56) = v4;
  *(v41 + 64) = v5;
  if (sub_10001FF1C() >= v42)
  {
LABEL_58:
  }

  else
  {
    v83 = objc_opt_self();
    v44 = [v83 _atomicIncrementAssertCount];
    v86 = [objc_allocWithZone(NSString) init];
    sub_100604538(v41, &v86);
    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    v47 = [v46 lastPathComponent];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v84 = v41;
    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v51 = static OS_os_log.crlAssert;
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_10146CA70;
    *(v52 + 56) = &type metadata for Int32;
    *(v52 + 64) = &protocol witness table for Int32;
    *(v52 + 32) = v44;
    v53 = sub_100006370(0, &qword_1019F4D30);
    *(v52 + 96) = v53;
    v54 = sub_1005CF04C();
    *(v52 + 104) = v54;
    *(v52 + 72) = v45;
    *(v52 + 136) = &type metadata for String;
    v55 = sub_1000053B0();
    *(v52 + 112) = v48;
    *(v52 + 120) = v50;
    *(v52 + 176) = &type metadata for UInt;
    *(v52 + 184) = &protocol witness table for UInt;
    *(v52 + 144) = v55;
    *(v52 + 152) = 291;
    v3 = v86;
    *(v52 + 216) = v53;
    *(v52 + 224) = v54;
    *(v52 + 192) = v3;
    v56 = v45;
    v57 = v3;
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v58, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v52);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v59, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 132, 2, v84);

    type metadata accessor for __VaListBuilder();
    v5 = swift_allocObject();
    v5[2] = 8;
    v5[3] = 0;
    v60 = v5 + 3;
    v5[4] = 0;
    v5[5] = 0;
    v61 = *(v84 + 16);
    if (v61)
    {
      v62 = 0;
      v8 = 40;
      while (1)
      {
        v63 = (v43 + 40 * v62);
        v4 = v63[4];
        LODWORD(v0) = sub_100020E58(v63, v63[3]);
        v64 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v65 = *v60;
        v66 = *(v64 + 16);
        v27 = __OFADD__(*v60, v66);
        v67 = *v60 + v66;
        if (v27)
        {
          goto LABEL_70;
        }

        v0 = v5[4];
        if (v0 >= v67)
        {
          goto LABEL_50;
        }

        if (v0 + 0x4000000000000000 < 0)
        {
          goto LABEL_73;
        }

        v4 = v5[5];
        if (2 * v0 > v67)
        {
          v67 = 2 * v0;
        }

        v5[4] = v67;
        if ((v67 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_74;
        }

        v3 = v64;
        v68 = swift_slowAlloc();
        v69 = v68;
        v5[5] = v68;
        if (v4)
        {
          break;
        }

        v64 = v3;
        if (!v69)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v71 = *(v64 + 16);
        if (v71)
        {
          v72 = (v64 + 32);
          v73 = *v60;
          do
          {
            v74 = *v72++;
            *&v69[8 * v73] = v74;
            v73 = *v60 + 1;
            if (__OFADD__(*v60, 1))
            {
              goto LABEL_68;
            }

            *v60 = v73;
          }

          while (--v71);
        }

        if (++v62 == v61)
        {
          goto LABEL_59;
        }
      }

      if (v68 != v4 || v68 >= &v4[8 * v65])
      {
        memmove(v68, v4, 8 * v65);
      }

      v0 = v5;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v64 = v3;
LABEL_50:
      v69 = v5[5];
      if (!v69)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_59:
    v75 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v76 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v78 = String._bridgeToObjectiveC()();

    [v83 handleFailureInFunction:v76 file:v77 lineNumber:291 isFatal:0 format:v78 args:v75];

    v0 = v85;
    v4 = &type metadata for UInt64;
    v5 = &protocol witness table for UInt64;
  }

  if (*(v0 + 40) >= 0x2000400000000uLL)
  {
    v79 = *(v0 + 40);
  }

  else
  {
    v79 = 0x2000400000000;
  }

  if (*(v0 + 32) == 0x2000400000000)
  {
    v80 = *(v0 + 40);
  }

  else
  {
    v80 = v79;
  }

  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_10146C6B0;
  *(v81 + 56) = v4;
  *(v81 + 64) = v5;
  *(v81 + 32) = v80;

  return v80;
}

uint64_t sub_10073E1D8()
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = inited + 32;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  if (sub_10001FF1C() < v2)
  {
    v42 = objc_opt_self();
    LODWORD(v4) = [v42 _atomicIncrementAssertCount];
    v44 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v44);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v43 = inited;
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v11 = static OS_os_log.crlAssert;
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10146CA70;
      *(v12 + 56) = &type metadata for Int32;
      *(v12 + 64) = &protocol witness table for Int32;
      *(v12 + 32) = v4;
      v13 = sub_100006370(0, &qword_1019F4D30);
      *(v12 + 96) = v13;
      v14 = sub_1005CF04C();
      *(v12 + 104) = v14;
      *(v12 + 72) = v5;
      *(v12 + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(v12 + 112) = v8;
      *(v12 + 120) = v10;
      *(v12 + 176) = &type metadata for UInt;
      *(v12 + 184) = &protocol witness table for UInt;
      *(v12 + 144) = v15;
      *(v12 + 152) = 307;
      v16 = v44;
      *(v12 + 216) = v13;
      *(v12 + 224) = v14;
      *(v12 + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v12);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "Call to computedMinRequiredVersionMakesBoardUnsupported while current minRequiredVersion is higher than current: %{public}d", 123, 2, v43);

      type metadata accessor for __VaListBuilder();
      v4 = swift_allocObject();
      v4[2] = 8;
      v4[3] = 0;
      v21 = v4 + 3;
      v4[4] = 0;
      v4[5] = 0;
      v8 = *(v43 + 16);
      if (!v8)
      {
LABEL_29:
        v37 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v39 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v40 = String._bridgeToObjectiveC()();

        [v42 handleFailureInFunction:v38 file:v39 lineNumber:307 isFatal:0 format:v40 args:v37];

        return 0;
      }

      v10 = 0;
      while (1)
      {
        v22 = (v3 + 40 * v10);
        v5 = v22[3];
        sub_100020E58(v22, v5);
        v23 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v24 = *v21;
        v25 = *(v23 + 16);
        v26 = __OFADD__(*v21, v25);
        v27 = *v21 + v25;
        if (v26)
        {
          break;
        }

        v28 = v4[4];
        if (v28 >= v27)
        {
          goto LABEL_20;
        }

        if (v28 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v5 = v4[5];
        if (2 * v28 > v27)
        {
          v27 = 2 * v28;
        }

        v4[4] = v27;
        if ((v27 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v29 = v23;
        v30 = swift_slowAlloc();
        v31 = v30;
        v4[5] = v30;
        if (v5)
        {
          if (v30 != v5 || v30 >= &v5[8 * v24])
          {
            memmove(v30, v5, 8 * v24);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v23 = v29;
LABEL_20:
          v31 = v4[5];
          if (!v31)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v23 = v29;
        if (!v31)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v33 = *(v23 + 16);
        if (v33)
        {
          v34 = (v23 + 32);
          v35 = *v21;
          while (1)
          {
            v36 = *v34++;
            *&v31[8 * v35] = v36;
            v35 = *v21 + 1;
            if (__OFADD__(*v21, 1))
            {
              break;
            }

            *v21 = v35;
            if (!--v33)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v10 == v8)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

LABEL_28:

  return 0;
}

uint64_t sub_10073E718()
{
  v1 = *(v0 + 24);
  if (sub_10001FF1C() < v1)
  {
    return *(v0 + 16) & 1;
  }

  if ((*(v0 + 16) & 8) != 0)
  {
    v3 = (*(*v0 + 464))();
    if ((v5 & 0x100) != 0)
    {
      if (v3 | v4)
      {
        v6 = 0;
      }

      else
      {
        v6 = v5 == 0;
      }

      if (v6)
      {
        return *(v0 + 16) & 1;
      }

      v7 = v3 == 1 && v4 == 0;
      if (v7 && v5 == 0)
      {
        return *(v0 + 16) & 1;
      }

      v9 = v3 == 2 && v4 == 0;
      if (v9 && v5 == 0)
      {
        return *(v0 + 16) & 1;
      }

      v11 = v3 == 3 && v4 == 0;
      if (v11 && v5 == 0)
      {
        return *(v0 + 16) & 1;
      }

      v13 = v3 == 4 && v4 == 0;
      v14 = v13 && v5 == 0;
      if (v14 || v3 == 5 && !v4 && !v5 || v3 == 6 && !v4 && !v5 || v3 == 7 && !v4 && !v5 || v3 == 8 && !v4 && !v5 || v3 == 9 && !v4 && !v5 || v3 == 10 && !v4 && !v5)
      {
        return *(v0 + 16) & 1;
      }
    }

    else if ((v5 & 1) != 0 || !v4)
    {
      return *(v0 + 16) & 1;
    }
  }

  return 0;
}

unint64_t sub_10073E870(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  *(v2 + 24) = *a1;
  *(v2 + 40) = v4;
  *(v2 + 56) = *(a1 + 32);
  if (a2)
  {
    v5 = *(v2 + 16);
    if ((v5 & 1) == 0)
    {
      *(v2 + 16) = v5 | 1;
    }
  }

  result = sub_100747BB4();
  if ((a2 & 4) != 0)
  {
    v7 = *(v2 + 16);
    if ((v7 & 4) == 0)
    {
      *(v2 + 16) = v7 | 4;
    }
  }

  if ((a2 & 2) != 0)
  {
    v8 = *(v2 + 16);
    if ((v8 & 2) == 0)
    {
      *(v2 + 16) = v8 | 2;
    }
  }

  return result;
}

uint64_t sub_10073E8E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 744);
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10073E9B8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v59 - v9;
  v11 = *(v2 + 736);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v11], v7);
  v12 = sub_100746020(v7, &v64);
  (*(v8 + 8))(v10, v7, v12);
  v13 = objc_allocWithZone(CRLCanvasInfoGeometry);
  v14 = [v13 initWithPosition:v66 size:v67 widthValid:v68 heightValid:v69 horizontalFlip:*&v64 verticalFlip:*(&v64 + 1) angle:{*(&v64 + 2), *(&v64 + 3), v65}];
  sub_10074A710(&v64);
  if (([v14 allValuesValidNumbers] & 1) == 0)
  {
    v61 = v14;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10073E8E4(v6);
    v16 = UUID.uuidString.getter();
    v18 = v17;
    (*(v4 + 8))(v6, v3);
    *(inited + 56) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 32) = v16;
    v20 = inited + 32;
    v62 = v19;
    *(inited + 64) = v19;
    *(inited + 40) = v18;
    v60 = objc_opt_self();
    LODWORD(v14) = [v60 _atomicIncrementAssertCount];
    v63 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v63);
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    v23 = [v22 lastPathComponent];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v27 = static OS_os_log.crlAssert;
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_10146CA70;
      *(v28 + 56) = &type metadata for Int32;
      *(v28 + 64) = &protocol witness table for Int32;
      *(v28 + 32) = v14;
      v29 = sub_100006370(0, &qword_1019F4D30);
      *(v28 + 96) = v29;
      v30 = sub_1005CF04C();
      *(v28 + 72) = v21;
      v31 = v62;
      *(v28 + 136) = &type metadata for String;
      *(v28 + 144) = v31;
      *(v28 + 104) = v30;
      *(v28 + 112) = v24;
      *(v28 + 120) = v26;
      *(v28 + 176) = &type metadata for UInt;
      *(v28 + 184) = &protocol witness table for UInt;
      *(v28 + 152) = 640;
      v32 = v63;
      *(v28 + 216) = v29;
      *(v28 + 224) = v30;
      *(v28 + 192) = v32;
      v33 = v21;
      v34 = v32;
      v35 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v28);
      swift_setDeallocating();
      v59[1] = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v36 = static os_log_type_t.error.getter();

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v37 = v21 + 3;
      v21[4] = 0;
      v21[5] = 0;
      v62 = inited;
      v26 = *(inited + 16);
      if (!v26)
      {
LABEL_28:
        v54 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v55 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v56 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v57 = String._bridgeToObjectiveC()();

        [v60 handleFailureInFunction:v55 file:v56 lineNumber:640 isFatal:0 format:v57 args:v54];

        swift_setDeallocating();
        swift_arrayDestroy();
        v14 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];

        return v14;
      }

      v38 = 0;
      inited = 40;
      while (1)
      {
        v39 = (v20 + 40 * v38);
        v24 = v39[3];
        LODWORD(v14) = sub_100020E58(v39, v24);
        v40 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v41 = *v37;
        v42 = *(v40 + 16);
        v43 = __OFADD__(*v37, v42);
        v44 = *v37 + v42;
        if (v43)
        {
          break;
        }

        v14 = v21[4];
        if (v14 >= v44)
        {
          goto LABEL_20;
        }

        if (v14 + 0x4000000000000000 < 0)
        {
          goto LABEL_32;
        }

        v24 = v21[5];
        if (2 * v14 > v44)
        {
          v44 = 2 * v14;
        }

        v21[4] = v44;
        if ((v44 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_33;
        }

        v45 = v20;
        v46 = v40;
        v47 = swift_slowAlloc();
        v48 = v47;
        v21[5] = v47;
        if (v24)
        {
          if (v47 != v24 || v47 >= &v24[8 * v41])
          {
            memmove(v47, v24, 8 * v41);
          }

          LODWORD(v14) = v21;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v40 = v46;
          v20 = v45;
          inited = 40;
LABEL_20:
          v48 = v21[5];
          if (!v48)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v40 = v46;
        v20 = v45;
        inited = 40;
        if (!v48)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v50 = *(v40 + 16);
        if (v50)
        {
          v51 = (v40 + 32);
          v52 = *v37;
          while (1)
          {
            v53 = *v51++;
            *&v48[8 * v52] = v53;
            v52 = *v37 + 1;
            if (__OFADD__(*v37, 1))
            {
              break;
            }

            *v37 = v52;
            if (!--v50)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v38 == v26)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      swift_once();
    }
  }

  return v14;
}

void sub_10073F188(void *a1)
{
  v1 = a1;
  if (([a1 allValuesValidNumbers] & 1) == 0)
  {
    v27 = v1;
    v26 = objc_opt_self();
    v2 = [v26 _atomicIncrementAssertCount];
    v28[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v28);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 646;
    v14 = v28[0];
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Setting a new geometry with invalid numbers (NaN).", 50, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v21 file:v22 lineNumber:646 isFatal:0 format:v23 args:v20];

    v1 = v27;
  }

  v24 = v1;
  sub_101271CCC(v24, v28);

  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  sub_100746118(v28, v25);
  swift_endAccess();
}

__n128 sub_10073F5EC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6 + 16;
  v8 = *(v3 + 736);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  v9 = sub_1007461C0(v4, v13);
  (*(v5 + 8))(v7, v4, v9);
  v10 = v13[3];
  *(a1 + 32) = v13[2];
  *(a1 + 48) = v10;
  *(a1 + 64) = v14;
  result = v13[1];
  *a1 = v13[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10073F77C(uint64_t a1)
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  sub_1007462C8(a1, v2);
  return swift_endAccess();
}

uint64_t sub_10073F868(void (*a1)(uint64_t))
{
  v3 = *v1;
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(v3 + 736);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  a1(v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10073FA18(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v7 = sub_1005B981C(a2);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  sub_10000BE14(a1, &v12 - v8, a2);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  a4(v9, v10);
  swift_endAccess();
  return sub_10000CAAC(a1, a2);
}

uint64_t sub_10073FB74()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  v6 = *(v1 + 736);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v6], v2);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  v7 = v9[31];
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_10073FD04()
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_10073FDF8()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  v6 = *(v1 + 736);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v6], v2);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  v7 = v9[31];
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_10073FF88()
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_10074007C()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  v6 = *(v1 + 736);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v6], v2);
  v7 = sub_100745D3C();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_1007401FC()
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.setter();
  return swift_endAccess();
}

id sub_1007402FC()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-v4];
  v6 = *(v1 + 736);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v0[v6], v2);
  sub_1005B981C(&unk_101A09DC0);
  CRRegister.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  v24 = v19[4];
  v25 = v19[5];
  v26 = v19[6];
  v27 = v19[7];
  v20 = v19[0];
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  v7 = sub_10074A978(&v20);
  result = 0;
  if (v7 != 1)
  {
    v28[2] = v22;
    v28[3] = v23;
    v28[4] = v24;
    v29 = v25;
    v28[0] = v20;
    v28[1] = v21;
    v9 = *(&v25 + 1);
    v10 = v26;
    v11 = *(&v26 + 2);
    v12 = v27;
    sub_100006370(0, &qword_101A00EB0);
    sub_10074A990(v28, v18);
    v13 = sub_1008B0490(v28);
    v14 = *&v9;
    v15 = *(&v9 + 1);
    if (v12)
    {
      v16 = [objc_allocWithZone(CRLCurvedShadow) initWithOffset:v13 angle:1 radius:v15 curve:v14 opacity:*&v10 color:v11 enabled:*(&v10 + 1)];
    }

    else
    {
      v16 = [objc_allocWithZone(CRLDropShadow) initWithAngle:v13 offset:1 radius:v14 opacity:v15 color:*&v10 enabled:*(&v10 + 1)];
    }

    v17 = v16;
    sub_10000CAAC(v19, &unk_101A09DE0);

    return v17;
  }

  return result;
}

void sub_1007405F0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_100A72CD4(v1, &v3);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v3, v2);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = v6;
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    sub_1005B981C(&unk_101A09DC0);
    CRRegister.wrappedValue.setter();
    swift_endAccess();
  }

  else
  {
    sub_1005D0C00(&v3);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = v6;
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    sub_1005B981C(&unk_101A09DC0);
    CRRegister.wrappedValue.setter();
    swift_endAccess();
  }
}

uint64_t sub_10074081C()
{
  swift_getAssociatedTypeWitness();
  v0 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-v2];
  v4 = type metadata accessor for MergeResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = *(*v8 + 736);
    swift_beginAccess();
    (*(v1 + 16))(v3, v9 + v10, v0);
    swift_beginAccess();

    swift_getWitnessTable();
    CRStruct_6.merge(_:)();
    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
    swift_endAccess();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100740B28(uint64_t a1, char a2)
{
  v4 = *v2;
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = *(v4 + 736);
  swift_beginAccess();
  if (a2)
  {
    (*(v6 + 16))(v8, &v2[v12], v5);
    swift_getWitnessTable();
    CRType.copy(renamingReferences:)();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 16))(v11, &v2[v12], v5);
  }

  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v13, qword_101AD6348);
  swift_getWitnessTable();
  v14 = CRDT.serializedData(_:version:)();
  (*(v6 + 8))(v11, v5);
  return v14;
}

uint64_t sub_100740DE8()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = *(v1 + 736);
    swift_beginAccess();
    v12 = *(v3 + 16);
    v12(v8, &v0[v11], v2);
    v13 = *(*v10 + 736);
    swift_beginAccess();
    v12(v5, (v10 + v13), v2);
    swift_getWitnessTable();
    LOBYTE(v13) = CRStruct_6.hasDelta(from:)();
    v14 = *(v3 + 8);
    v14(v5, v2);
    v14(v8, v2);
    return v13 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100741090(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = *v2;
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &WitnessTable - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &WitnessTable - v9;
  WitnessTable = swift_getWitnessTable();
  v40 = type metadata accessor for CRStructMergeableDelta_6();
  v39 = type metadata accessor for Optional();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &WitnessTable - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &WitnessTable - v13;
  v41 = a1;
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = *(v4 + 736);
    swift_beginAccess();
    v18 = *(v6 + 16);
    v18(v10, v2 + v17, v5);
    v19 = *(*v16 + 736);
    swift_beginAccess();
    v20 = (v16 + v19);
    v21 = v38;
    v18(v38, v20, v5);

    CRStruct_6.delta(_:from:)();
    v22 = *(v6 + 8);
    v22(v21, v5);
    v22(v10, v5);
    v23 = v36;
    v24 = v37;
    v25 = v39;
    (*(v37 + 16))(v36, v14, v39);
    v26 = *(v40 - 8);
    v27 = v40;
    v28 = v23;
    if ((*(v26 + 48))(v23, 1, v40) == 1)
    {
      v29 = *(v24 + 8);
      v29(v14, v25);

      v29(v23, v25);
      return 0;
    }

    else
    {
      v38 = v14;
      v31 = v43;
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v32, qword_101AD6348);
      swift_getWitnessTable();
      v33 = PartialCRDT.deltaSerializedData(_:version:)();
      if (v31)
      {
        (*(v24 + 8))(v38, v25);

        return (*(v26 + 8))(v28, v27);
      }

      else
      {
        v34 = v33;
        (*(v24 + 8))(v38, v25);

        (*(v26 + 8))(v28, v27);
        return v34;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1007415FC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v33 = type metadata accessor for UUID();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v5[89];
  v32 = v5[90];
  swift_getAssociatedTypeWitness();
  v8 = v5[91];
  type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  swift_getWitnessTable();
  v9 = type metadata accessor for CRStructMergeableDelta_6();
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  sub_100024E98(a1, a2);
  swift_getWitnessTable();
  LOBYTE(a2) = v9;
  v13 = v36;
  PartialCRDT.init(serializedData:)();
  if (!v13)
  {
    v28 = v8;
    v29 = v7;
    v14 = v33;
    v36 = 0;
    swift_beginAccess();
    LODWORD(a2) = CRStruct_6.merge(delta:)();
    swift_endAccess();
    if ((a2 & 1) == 0)
    {
      v27 = a2;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v26 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v16 = v30;
      sub_10073E8E4(v30);
      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*(v31 + 8))(v16, v14);
      *(inited + 56) = &type metadata for String;
      v20 = sub_1000053B0();
      *(inited + 64) = v20;
      *(inited + 32) = v17;
      *(inited + 40) = v19;
      v35 = v3;
      type metadata accessor for CRLBoardItemCommonAbstractData();

      v21 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v20;
      *(inited + 72) = v21;
      *(inited + 80) = v22;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v23, "Delta failed to apply for %{public}@%{public}@", 46, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      LOBYTE(a2) = v27;
    }

    (*(v34 + 8))(v11, v9);
  }

  return a2 & 1;
}

uint64_t sub_100741A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*v3 + 568))();
  if (!v4)
  {
    v10 = result;
    v11 = v9;
    v12 = (*(*v3 + 584))(a1, a2);
    v14 = v13;
    v15 = (*(*v3 + 600))(a1, a2);
    if (v11 >> 60 == 15 && v14 >> 60 == 15 && v16 >> 60 == 15)
    {
      v33 = type metadata accessor for CRLBoardItemDeltaChange(0);
      return (*(*(v33 - 8) + 56))(a3, 1, 1, v33);
    }

    v44 = v15;
    v45 = v16;
    (*(*v3 + 264))();
    v19 = *(*v3 + 272);
    v20 = type metadata accessor for CRLBoardItemDeltaChange(0);
    v21 = v19();
    v42 = *(v3 + 40);
    v43 = *(v3 + 24);
    v22 = *(v3 + 56);
    v23 = *(v3 + 16);
    v24 = (*(*v3 + 464))(v21);
    if ((v26 & 0x100) != 0)
    {
      if (v24 | v25)
      {
        v34 = 0;
      }

      else
      {
        v34 = v26 == 0;
      }

      v27 = v11;
      v28 = v10;
      v29 = v14;
      v30 = v12;
      v31 = v44;
      v32 = v45;
      if (v34)
      {
        v25 = 0;
        LOBYTE(v26) = 0;
        v24 = 2;
        goto LABEL_23;
      }

      if (v24 == 1 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 3;
        goto LABEL_23;
      }

      if (v24 == 2 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 4;
        goto LABEL_23;
      }

      if (v24 == 3 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 5;
        goto LABEL_23;
      }

      if (v24 == 4 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 6;
        goto LABEL_23;
      }

      if (v24 == 5 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 7;
        goto LABEL_23;
      }

      if (v24 == 6 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 8;
        goto LABEL_23;
      }

      if (v24 == 7 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 9;
        goto LABEL_23;
      }

      if (v24 != 8 || v25 || v26)
      {
        if (v24 != 9 || v25 || v26)
        {
          if (v24 != 10 || v25 || v26)
          {
            if (v26)
            {
              v40 = 0;
            }

            else
            {
              v40 = v25 == 0;
            }

            if (v40 && v24 == 11)
            {
              v25 = 1;
            }

            else
            {
              v25 = 2;
            }

            v24 = 2;
            LOBYTE(v26) = 0;
          }

          else
          {
            v25 = 0;
            LOBYTE(v26) = 1;
            v24 = 12;
          }
        }

        else
        {
          v25 = 0;
          LOBYTE(v26) = 1;
          v24 = 11;
        }
      }

      else
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 10;
      }
    }

    v27 = v11;
    v28 = v10;
    v29 = v14;
    v30 = v12;
    v31 = v44;
    v32 = v45;
LABEL_23:
    v35 = a3 + v20[6];
    *v35 = v43;
    *(v35 + 16) = v42;
    *(v35 + 32) = v22;
    *(a3 + v20[7]) = v23;
    v36 = a3 + v20[8];
    *v36 = v24;
    *(v36 + 8) = v25;
    *(v36 + 16) = v26 & 1;
    v37 = (a3 + v20[9]);
    *v37 = v28;
    v37[1] = v27;
    v38 = (a3 + v20[10]);
    *v38 = v30;
    v38[1] = v29;
    v39 = (a3 + v20[11]);
    *v39 = v31;
    v39[1] = v32;
    return (*(*(v20 - 1) + 56))(a3, 0, 1, v20);
  }

  return result;
}

uint64_t sub_100741EE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v4 = *v2;
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v43 = sub_1005C4E5C(&qword_1019FDFB0);
  v39 = type metadata accessor for CRRegister.MutatingAction();
  v44 = type metadata accessor for Optional();
  v45 = sub_1005C4E5C(&qword_1019FDFB8);
  v46 = v45;
  v47 = sub_1005C4E5C(&qword_1019FDFC0);
  v48 = sub_1005C4E5C(&qword_1019FDFC8);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = type metadata accessor for Optional();
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v42 = a1;
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = *(v4 + 736);
    swift_beginAccess();
    v18 = *(v6 + 16);
    v18(v10, v2 + v17, v5);
    v19 = *(*v16 + 736);
    swift_beginAccess();
    v20 = (v16 + v19);
    v21 = v40;
    v18(v40, v20, v5);

    swift_getWitnessTable();
    CRStruct_6.actionUndoingDifference(from:)();
    v22 = *(v6 + 8);
    v22(v21, v5);
    v22(v10, v5);
    if ((*(*(TupleTypeMetadata - 1) + 48))(v14, 1, TupleTypeMetadata) == 1)
    {

      result = (*(v37 + 8))(v14, v38);
      v24 = v41;
      *v41 = 0u;
      *(v24 + 1) = 0u;
    }

    else
    {
      v25 = TupleTypeMetadata[12];
      v26 = TupleTypeMetadata[16];
      v27 = TupleTypeMetadata[20];
      v38 = TupleTypeMetadata[24];
      v40 = TupleTypeMetadata[28];
      v28 = v41;
      v41[3] = TupleTypeMetadata;
      v29 = sub_10002C58C(v28);
      v30 = TupleTypeMetadata[12];
      v31 = TupleTypeMetadata[16];
      v32 = TupleTypeMetadata[20];
      v33 = TupleTypeMetadata[24];
      v34 = TupleTypeMetadata[28];
      sub_10003DFF8(v14, v29, &qword_1019FDFB0);
      v35 = type metadata accessor for Optional();
      (*(*(v35 - 8) + 32))(v29 + v30, &v14[v25], v35);
      sub_10003DFF8(&v14[v26], v29 + v31, &qword_1019FDFB8);
      sub_10003DFF8(&v14[v27], v29 + v32, &qword_1019FDFB8);
      sub_10003DFF8(&v14[v38], v29 + v33, &qword_1019FDFC0);
      sub_10003DFF8(&v40[v14], v29 + v34, &qword_1019FDFC8);
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *sub_100742450(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  strcpy(v151, "id parentAffinity locked aspectRatioLocked accessibilityDescription shadow ");
  v152 = sub_1005C4E5C(&qword_101A01F00);
  v5 = *(*(*(*(*(v3 + 728) + 8) + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v136 = v5;
  v132 = swift_getAssociatedTypeWitness();
  v153 = type metadata accessor for Optional();
  v154 = v152;
  v155 = v152;
  v156 = v152;
  v157 = v152;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v146 = *(TupleTypeMetadata - 8);
  __chkstk_darwin(TupleTypeMetadata);
  v139 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v138 = &v130 - v10;
  __chkstk_darwin(v11);
  v137 = &v130 - v12;
  __chkstk_darwin(v13);
  v135 = &v130 - v14;
  __chkstk_darwin(v15);
  v134 = &v130 - v16;
  __chkstk_darwin(v17);
  v131 = &v130 - v18;
  __chkstk_darwin(v19);
  v149 = &v130 - v20;
  v133 = AssociatedTypeWitness;
  v21 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v130 - v26;
  v150 = TupleTypeMetadata;
  v144 = type metadata accessor for Optional();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v148 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v130 - v30;
  v145 = a1;
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = v32;
    v34 = *(v4 + 736);
    swift_beginAccess();
    v35 = *(v22 + 16);
    v35(v27, v1 + v34, v21);
    v36 = *(*v33 + 736);
    swift_beginAccess();
    v35(v24, (v33 + v36), v21);

    swift_getWitnessTable();
    CRType.observableDifference(from:)();
    v37 = *(v22 + 8);
    v37(v24, v21);
    v37(v27, v21);
    v38 = v143;
    v39 = v148;
    v40 = v144;
    (*(v143 + 16))(v148, v31, v144);
    v41 = v146;
    v42 = v150;
    if ((*(v146 + 48))(v39, 1, v150) == 1)
    {
      v43 = *(v38 + 8);
      v43(v31, v40);

      v43(v39, v40);
      return _swiftEmptyArrayStorage;
    }

    else
    {
      v130 = v31;
      v45 = v149;
      (*(v41 + 32))(v149, v39, v42);
      v46 = *(v41 + 16);
      v47 = v131;
      v148 = (v41 + 16);
      v147 = v46;
      v46(v131, v45, v42);
      v48 = v42[12];
      v49 = v42[16];
      v50 = v42[20];
      v51 = v42[24];
      v52 = v42[28];
      v53 = type metadata accessor for CRValueObservableDifference();
      v54 = *(v53 - 8);
      v55 = *(v54 + 48);
      v142 = v53;
      v141 = v55;
      v140 = v54 + 48;
      if ((v55)(v47, 1) == 1)
      {
        sub_10000CAAC(v47 + v52, &qword_101A01F00);
        sub_10000CAAC(v47 + v51, &qword_101A01F00);
        sub_10000CAAC(v47 + v50, &qword_101A01F00);
        sub_10000CAAC(v47 + v49, &qword_101A01F00);
        v56 = type metadata accessor for Optional();
        (*(*(v56 - 8) + 8))(v47 + v48, v56);
        sub_10000CAAC(v47, &qword_101A01F00);
        v44 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000CAAC(v47, &qword_101A01F00);
        sub_10000CAAC(v47 + v52, &qword_101A01F00);
        sub_10000CAAC(v47 + v51, &qword_101A01F00);
        sub_10000CAAC(v47 + v50, &qword_101A01F00);
        sub_10000CAAC(v47 + v49, &qword_101A01F00);
        v57 = type metadata accessor for Optional();
        (*(*(v57 - 8) + 8))(v47 + v48, v57);
        v44 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v59 = *(v44 + 2);
        v58 = *(v44 + 3);
        if (v59 >= v58 >> 1)
        {
          v44 = sub_100024CBC((v58 > 1), v59 + 1, 1, v44);
        }

        *(v44 + 2) = v59 + 1;
        v60 = &v44[16 * v59];
        *(v60 + 4) = 25705;
        *(v60 + 5) = 0xE200000000000000;
      }

      v61 = v134;
      v147(v134, v45, v42);
      v62 = v42[12];
      v63 = v42[16];
      v64 = v42[20];
      v65 = v42[24];
      v66 = v42[28];
      v67 = swift_getAssociatedTypeWitness();
      if ((*(*(v67 - 8) + 48))(v61 + v62, 1, v67) == 1)
      {
        sub_10000CAAC(v61 + v66, &qword_101A01F00);
        sub_10000CAAC(v61 + v65, &qword_101A01F00);
        sub_10000CAAC(v61 + v64, &qword_101A01F00);
        sub_10000CAAC(v61 + v63, &qword_101A01F00);
        v68 = type metadata accessor for Optional();
        (*(*(v68 - 8) + 8))(v61 + v62, v68);
        sub_10000CAAC(v61, &qword_101A01F00);
        v69 = v135;
      }

      else
      {
        v70 = type metadata accessor for Optional();
        (*(*(v70 - 8) + 8))(v61 + v62, v70);
        sub_10000CAAC(v61 + v66, &qword_101A01F00);
        sub_10000CAAC(v61 + v65, &qword_101A01F00);
        sub_10000CAAC(v61 + v64, &qword_101A01F00);
        sub_10000CAAC(v61 + v63, &qword_101A01F00);
        sub_10000CAAC(v61, &qword_101A01F00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_100024CBC(0, *(v44 + 2) + 1, 1, v44);
        }

        v69 = v135;
        v72 = *(v44 + 2);
        v71 = *(v44 + 3);
        if (v72 >= v71 >> 1)
        {
          v44 = sub_100024CBC((v71 > 1), v72 + 1, 1, v44);
        }

        *(v44 + 2) = v72 + 1;
        v73 = &v44[16 * v72];
        strcpy(v73 + 32, "parentAffinity");
        v73[47] = -18;
      }

      v74 = v150;
      v147(v69, v149, v150);
      v75 = v74[12];
      v76 = v74[16];
      v77 = v74[20];
      v78 = v74[24];
      v79 = v74[28];
      v80 = v141(v69 + v76, 1, v142);
      v136 = v67;
      if (v80 == 1)
      {
        sub_10000CAAC(v69 + v79, &qword_101A01F00);
        sub_10000CAAC(v69 + v78, &qword_101A01F00);
        sub_10000CAAC(v69 + v77, &qword_101A01F00);
        sub_10000CAAC(v69 + v76, &qword_101A01F00);
        v81 = type metadata accessor for Optional();
        (*(*(v81 - 8) + 8))(v69 + v75, v81);
        sub_10000CAAC(v69, &qword_101A01F00);
        v82 = v137;
        v83 = v149;
      }

      else
      {
        sub_10000CAAC(v69 + v76, &qword_101A01F00);
        sub_10000CAAC(v69 + v79, &qword_101A01F00);
        sub_10000CAAC(v69 + v78, &qword_101A01F00);
        sub_10000CAAC(v69 + v77, &qword_101A01F00);
        v84 = type metadata accessor for Optional();
        (*(*(v84 - 8) + 8))(v69 + v75, v84);
        sub_10000CAAC(v69, &qword_101A01F00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_100024CBC(0, *(v44 + 2) + 1, 1, v44);
        }

        v82 = v137;
        v83 = v149;
        v86 = *(v44 + 2);
        v85 = *(v44 + 3);
        if (v86 >= v85 >> 1)
        {
          v44 = sub_100024CBC((v85 > 1), v86 + 1, 1, v44);
        }

        *(v44 + 2) = v86 + 1;
        v87 = &v44[16 * v86];
        *(v87 + 4) = 0x64656B636F6CLL;
        *(v87 + 5) = 0xE600000000000000;
      }

      v88 = v150;
      v147(v82, v83, v150);
      v89 = v88[12];
      v90 = v88[16];
      v91 = v88[20];
      v92 = v88[24];
      v93 = v88[28];
      if (v141(v82 + v91, 1, v142) == 1)
      {
        sub_10000CAAC(v82 + v93, &qword_101A01F00);
        sub_10000CAAC(v82 + v92, &qword_101A01F00);
        sub_10000CAAC(v82 + v91, &qword_101A01F00);
        sub_10000CAAC(v82 + v90, &qword_101A01F00);
        v94 = type metadata accessor for Optional();
        (*(*(v94 - 8) + 8))(v82 + v89, v94);
        sub_10000CAAC(v82, &qword_101A01F00);
        v95 = v138;
      }

      else
      {
        sub_10000CAAC(v82 + v91, &qword_101A01F00);
        sub_10000CAAC(v82 + v93, &qword_101A01F00);
        sub_10000CAAC(v82 + v92, &qword_101A01F00);
        sub_10000CAAC(v82 + v90, &qword_101A01F00);
        v96 = type metadata accessor for Optional();
        (*(*(v96 - 8) + 8))(v82 + v89, v96);
        sub_10000CAAC(v82, &qword_101A01F00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_100024CBC(0, *(v44 + 2) + 1, 1, v44);
        }

        v95 = v138;
        v98 = *(v44 + 2);
        v97 = *(v44 + 3);
        if (v98 >= v97 >> 1)
        {
          v44 = sub_100024CBC((v97 > 1), v98 + 1, 1, v44);
        }

        *(v44 + 2) = v98 + 1;
        v99 = &v44[16 * v98];
        *(v99 + 4) = 0xD000000000000011;
        *(v99 + 5) = 0x8000000101563140;
      }

      v100 = v150;
      v147(v95, v149, v150);
      v101 = v100[12];
      v102 = v100[16];
      v103 = v100[20];
      v104 = v100[24];
      v105 = v100[28];
      if (v141(v95 + v104, 1, v142) == 1)
      {
        sub_10000CAAC(v95 + v105, &qword_101A01F00);
        sub_10000CAAC(v95 + v104, &qword_101A01F00);
        sub_10000CAAC(v95 + v103, &qword_101A01F00);
        sub_10000CAAC(v95 + v102, &qword_101A01F00);
        v106 = type metadata accessor for Optional();
        (*(*(v106 - 8) + 8))(v95 + v101, v106);
        sub_10000CAAC(v95, &qword_101A01F00);
        v107 = v149;
      }

      else
      {
        sub_10000CAAC(v95 + v104, &qword_101A01F00);
        sub_10000CAAC(v95 + v105, &qword_101A01F00);
        sub_10000CAAC(v95 + v103, &qword_101A01F00);
        sub_10000CAAC(v95 + v102, &qword_101A01F00);
        v108 = type metadata accessor for Optional();
        (*(*(v108 - 8) + 8))(v95 + v101, v108);
        sub_10000CAAC(v95, &qword_101A01F00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_100024CBC(0, *(v44 + 2) + 1, 1, v44);
        }

        v107 = v149;
        v110 = *(v44 + 2);
        v109 = *(v44 + 3);
        if (v110 >= v109 >> 1)
        {
          v44 = sub_100024CBC((v109 > 1), v110 + 1, 1, v44);
        }

        *(v44 + 2) = v110 + 1;
        v111 = &v44[16 * v110];
        *(v111 + 4) = 0xD000000000000018;
        *(v111 + 5) = 0x8000000101563120;
      }

      v112 = v139;
      v113 = v150;
      v147(v139, v107, v150);
      v114 = v113[12];
      v115 = v113[16];
      v116 = v113[20];
      v117 = v113[24];
      v118 = v113[28];
      if (v141(v112 + v118, 1, v142) == 1)
      {

        (*(v146 + 8))(v107, v113);
        (*(v143 + 8))(v130, v144);
        sub_10000CAAC(v112 + v118, &qword_101A01F00);
        sub_10000CAAC(v112 + v117, &qword_101A01F00);
        sub_10000CAAC(v112 + v116, &qword_101A01F00);
        sub_10000CAAC(v112 + v115, &qword_101A01F00);
        v119 = type metadata accessor for Optional();
        (*(*(v119 - 8) + 8))(v112 + v114, v119);
        sub_10000CAAC(v112, &qword_101A01F00);
      }

      else
      {
        sub_10000CAAC(v112 + v118, &qword_101A01F00);
        sub_10000CAAC(v112 + v117, &qword_101A01F00);
        sub_10000CAAC(v112 + v116, &qword_101A01F00);
        sub_10000CAAC(v112 + v115, &qword_101A01F00);
        v120 = type metadata accessor for Optional();
        (*(*(v120 - 8) + 8))(v112 + v114, v120);
        sub_10000CAAC(v112, &qword_101A01F00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_100024CBC(0, *(v44 + 2) + 1, 1, v44);
        }

        v121 = v146;
        v122 = v144;
        v123 = v143;
        v124 = v130;
        v126 = *(v44 + 2);
        v125 = *(v44 + 3);
        v127 = v150;
        if (v126 >= v125 >> 1)
        {
          v44 = sub_100024CBC((v125 > 1), v126 + 1, 1, v44);
        }

        (*(v121 + 8))(v149, v127);
        (*(v123 + 8))(v124, v122);
        *(v44 + 2) = v126 + 1;
        v128 = &v44[16 * v126];
        *(v128 + 4) = 0x776F64616873;
        *(v128 + 5) = 0xE600000000000000;
      }
    }

    return v44;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1007439B0(uint64_t a1)
{
  v3 = *v1;
  v21[0] = sub_1005C4E5C(&qword_1019FDFB0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20[1] = *(v3 + 728);
  type metadata accessor for CRRegister.MutatingAction();
  v21[1] = type metadata accessor for Optional();
  v22 = sub_1005C4E5C(&qword_1019FDFB8);
  v23 = v22;
  v24 = sub_1005C4E5C(&qword_1019FDFC0);
  v25 = sub_1005C4E5C(&qword_1019FDFC8);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v20 - v11;
  v13 = *(TupleTypeMetadata - 8);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  sub_10000BE14(a1, v21, &unk_1019F4D00);
  if (v23)
  {
    v20[0] = AssociatedTypeWitness;
    v17 = swift_dynamicCast();
    v18 = *(v13 + 56);
    v18(v12, v17 ^ 1u, 1, TupleTypeMetadata);
    if ((*(v13 + 48))(v12, 1, TupleTypeMetadata) != 1)
    {
      (*(v13 + 32))(v16, v12, TupleTypeMetadata);
      (*(v13 + 16))(v9, v16, TupleTypeMetadata);
      v18(v9, 0, 1, TupleTypeMetadata);
      swift_beginAccess();
      type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
      swift_getWitnessTable();
      CRStruct_6.apply(_:)();
      (*(v7 + 8))(v9, v6);
      swift_endAccess();
      return (*(v13 + 8))(v16, TupleTypeMetadata);
    }
  }

  else
  {
    sub_10000CAAC(v21, &unk_1019F4D00);
    (*(v13 + 56))(v12, 1, 1, TupleTypeMetadata);
  }

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_100743DF0()
{
  v42 = type metadata accessor for UUID();
  v1 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019F6990);
  v41 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - v8;
  v10 = (*(*v0 + 664))(v7);
  v11 = (*(*v0 + 672))();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v10;
  sub_1010935A0(v11, sub_100E8FDF4, 0, isUniquelyReferenced_nonNull_native, &v43);

  v13 = v43;
  v14 = sub_100BD5554(_swiftEmptyArrayStorage);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v13;
  sub_1010935A0(v14, sub_100E8FDF4, 0, v15, &v43);

  v16 = v43;
  v17 = v43 + 64;
  v18 = 1 << *(v43 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v43 + 64);
  v21 = (v18 + 63) >> 6;
  v37 = v1;
  v38 = (v1 + 32);

  v22 = 0;
  v40 = _swiftEmptyArrayStorage;
  while (v20)
  {
    v23 = v22;
LABEL_9:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    sub_10000BE14(*(v16 + 56) + *(v41 + 72) * (v24 | (v23 << 6)), v9, &qword_1019F6990);
    sub_10003DFF8(v9, v6, &qword_1019F6990);
    if ((*(v1 + 48))(v6, 1, v42) == 1)
    {
      sub_10000CAAC(v6, &qword_1019F6990);
      v22 = v23;
    }

    else
    {
      v36 = *v38;
      v36(v39, v6, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_100B356D0(0, *(v40 + 2) + 1, 1, v40);
      }

      v26 = *(v40 + 2);
      v25 = *(v40 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v34 = *(v40 + 2);
        v35 = v26 + 1;
        v30 = sub_100B356D0(v25 > 1, v26 + 1, 1, v40);
        v26 = v34;
        v27 = v35;
        v40 = v30;
      }

      v28 = v39;
      v29 = v40;
      *(v40 + 2) = v27;
      v36(&v29[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v26], v28, v42);
      v22 = v23;
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      v31 = sub_100E93A84(v40);

      return v31;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100744280@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 736);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100744370()
{
  v0 = type metadata accessor for CRCodableVersion();
  sub_10061655C(v0, qword_101AD6348);
  v1 = sub_1005EB3DC(v0, qword_101AD6348);
  v2 = enum case for CRCodableVersion.version3(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

Swift::Int sub_10074441C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101479530[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1007444A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101479530[v1]);
  return Hasher._finalize()();
}

unint64_t sub_100744508()
{
  v1 = *v0;
  v2 = 0x797274656D6F6567;
  v3 = 0xD000000000000010;
  v4 = 0x636E41656C626174;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1007445B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10074A548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100744608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007497F4();
  v5 = sub_10074984C();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100744660(uint64_t a1)
{
  v2 = sub_10074984C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074469C(uint64_t a1)
{
  v2 = sub_10074984C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007446D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v2 - 8);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for UUID();
  v25 = *(*(v13 - 8) + 56);
  v25(v12, 1, 1, v13);
  v14 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  v24 = v14;
  v28 = 1;
  v15 = type metadata accessor for CRLTableAnchorHint();
  v16 = *(*(v15 - 8) + 56);
  v16(v6, 1, 1, v15);
  sub_101271CCC(v14, v27);
  sub_10000BE14(v12, v9, &qword_1019F6990);
  sub_10000BE14(v6, v26, &unk_101A09DD0);
  v25(a1, 1, 1, v13);
  v17 = type metadata accessor for CRLBoardItemParentAffinity();
  v18 = v17[7];
  v19 = a1 + v17[6];
  v16((a1 + v18), 1, 1, v15);
  *(a1 + v17[8]) = _swiftEmptyDictionarySingleton;
  sub_10074A3BC(v9, a1);

  sub_10000CAAC(v9, &qword_1019F6990);
  sub_10000CAAC(v6, &unk_101A09DD0);
  sub_10000CAAC(v12, &qword_1019F6990);
  v20 = (a1 + v17[5]);
  v21 = v27[1];
  *v20 = v27[0];
  v20[1] = v21;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = v28;
  return sub_10002C638(v26, a1 + v18, &unk_101A09DD0);
}

uint64_t sub_1007449FC(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FDF88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100020E58(a1, a1[3]);
  sub_10074984C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = 0;
  type metadata accessor for UUID();
  sub_100749620(&qword_1019F43C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLBoardItemParentAffinity();
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v25[0] = *v10;
    v25[1] = v11;
    v12 = v10[1];
    v23 = *v10;
    v24 = v12;
    v22 = 1;
    sub_10074A4EC(v25, v19);
    sub_10074A8D0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21[0] = v23;
    v21[1] = v24;
    sub_10074A710(v21);
    v13 = (v3 + v9[6]);
    v14 = v13[3];
    v19[2] = v13[2];
    v19[3] = v14;
    v20 = *(v13 + 64);
    v15 = *v13;
    v19[1] = v13[1];
    v19[0] = v15;
    v18 = 2;
    sub_10074A924();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19[0]) = 3;
    type metadata accessor for CRLTableAnchorHint();
    sub_100749620(&qword_1019FDFA0, type metadata accessor for CRLTableAnchorHint);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v19[0] = *(v3 + v9[8]);
    v18 = 4;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100744D64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v35 = &v32 - v7;
  v36 = sub_1005B981C(&qword_1019FDF68);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v32 - v8;
  v10 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v37 = v10;
  v14 = *(v10 + 28);
  v15 = type metadata accessor for CRLTableAnchorHint();
  v16 = *(*(v15 - 8) + 56);
  v39 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = a1[3];
  v40 = a1;
  sub_100020E58(a1, v17);
  sub_10074984C();
  v18 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v22 = v39;
    sub_100005070(v40);
    sub_10000CAAC(v12, &qword_1019F6990);
    return sub_10000CAAC(&v12[v22], &unk_101A09DD0);
  }

  else
  {
    v38 = v5;
    v19 = v34;
    LOBYTE(v42) = 0;
    sub_100749620(&qword_1019F43A8, &type metadata accessor for UUID);
    v20 = v35;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10002C638(v20, v12, &qword_1019F6990);
    v51 = 1;
    sub_10074A764();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v19;
    v23 = v37;
    v24 = &v12[*(v37 + 20)];
    v25 = v48;
    *v24 = v47;
    *(v24 + 1) = v25;
    v50 = 2;
    sub_10074A7B8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = &v12[*(v23 + 24)];
    v27 = v45;
    *(v26 + 2) = v44;
    *(v26 + 3) = v27;
    v26[64] = v46;
    v28 = v43;
    *v26 = v42;
    *(v26 + 1) = v28;
    LOBYTE(v41) = 3;
    sub_100749620(&qword_1019FDF80, type metadata accessor for CRLTableAnchorHint);
    v29 = v38;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10002C638(v29, &v12[v39], &unk_101A09DD0);
    sub_1005B981C(&unk_101A0D960);
    v49 = 4;
    sub_100600EA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = *(v37 + 32);
    (*(v21 + 8))(v9, v36);
    *&v12[v30] = v41;
    sub_10074A80C(v12, v33);
    sub_100005070(v40);
    return sub_10074A870(v12, type metadata accessor for CRLBoardItemParentAffinity);
  }
}

__n128 sub_1007453D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v4 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1007453FC(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 24);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t sub_1007454B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100749620(&qword_1019FDF58, type metadata accessor for CRLBoardItemParentAffinity);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10074553C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100749620(&qword_1019FDF58, type metadata accessor for CRLBoardItemParentAffinity);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1007455C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100749620(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity);
  v7 = sub_100749620(&qword_1019FDF60, type metadata accessor for CRLBoardItemParentAffinity);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_10074568C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100749620(&qword_1019FDF58, type metadata accessor for CRLBoardItemParentAffinity);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100745800(uint64_t a1)
{
  v2 = sub_100749620(&qword_1019FDF50, type metadata accessor for CRLBoardItemParentAffinity);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

void sub_10074587C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v28 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  v12 = type metadata accessor for UUID();
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v15 = v25 - v14;
  v18 = __chkstk_darwin(v16);
  v20 = v25 - v19;
  v30 = a1;
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v26 = v17;
    v27 = v3;
    (*(a3 + 8))(a2, a3, v18);
    sub_100C03B78(v15, v20);
    v21 = v29;
    v25[0] = *(v29 + 8);
    v25[1] = v29 + 8;
    (v25[0])(v15, v12);
    (*(a3 + 16))(v20, a2, a3);
    (*(a3 + 32))(a2, a3);
    if ((*(v21 + 48))(v11, 1, v12) == 1)
    {
      sub_10000CAAC(v11, &qword_1019F6990);
    }

    else
    {
      v22 = v29;
      v23 = v26;
      (*(v29 + 32))(v26, v11, v12);
      v24 = v28;
      sub_100C03B78(v23, v28);
      (*(v22 + 56))(v24, 0, 1, v12);
      (*(a3 + 40))(v24, a2, a3);
      (v25[0])(v23, v12);
    }
  }
}

uint64_t sub_100745BA0()
{
  sub_1005B981C(&unk_1019F5250);

  return CRRegister.wrappedValue.getter();
}

uint64_t sub_100745BE8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_100745D3C()
{
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t sub_100745D88()
{
  sub_1005B981C(&unk_101A09DE0);
  sub_1007492B8();
  return CRRegister.init(wrappedValue:)();
}

uint64_t sub_100745E00(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745CEC();
  (*(*(a1 + 24) + 32))(v2);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100745EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-v5];
  sub_10000BE14(a1, &v11[-v5], &qword_1019F6990);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for CRRegister();
  v9 = CRRegister.wrappedValue.modify();
  (*(v7 + 40))(v6, v8, v7);
  v9(v11, 0);
  return sub_10000CAAC(a1, &qword_1019F6990);
}

double sub_100746020@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745CEC();
  (*(*(a1 + 24) + 56))(v10, v4);
  (*(v5 + 8))(v7, v4);
  result = *v10;
  v9 = v10[1];
  *a2 = v10[0];
  a2[1] = v9;
  return result;
}

uint64_t sub_100746118(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for CRRegister();
  v5 = CRRegister.wrappedValue.modify();
  (*(v4 + 64))(a1, v3, v4);
  return v5(&v7, 0);
}

__n128 sub_1007461C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745CEC();
  (*(*(a1 + 24) + 80))(v10, v4);
  (*(v5 + 8))(v7, v4);
  v8 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v8;
  *(a2 + 64) = v11;
  result = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1007462C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for CRRegister();
  v5 = CRRegister.wrappedValue.modify();
  (*(v4 + 88))(a1, v3, v4);
  return v5(&v7, 0);
}

uint64_t sub_100746370(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745CEC();
  (*(*(a1 + 24) + 104))(v2);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10074645C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-v5];
  sub_10000BE14(a1, &v11[-v5], &unk_101A09DD0);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for CRRegister();
  v9 = CRRegister.wrappedValue.modify();
  (*(v7 + 112))(v6, v8, v7);
  v9(v11, 0);
  return sub_10000CAAC(a1, &unk_101A09DD0);
}

uint64_t sub_100746590@<X0>(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = 97;
  a1[1] = 0xE100000000000000;
  a1[2] = KeyPath;
  a1[3] = 98;
  a1[4] = 0xE100000000000000;
  a1[5] = v3;
  a1[6] = 99;
  a1[7] = 0xE100000000000000;
  a1[8] = v4;
  a1[9] = 100;
  a1[10] = 0xE100000000000000;
  a1[11] = v5;
  a1[12] = 101;
  a1[13] = 0xE100000000000000;
  a1[14] = v6;
  a1[15] = 102;
  a1[16] = 0xE100000000000000;
  a1[17] = result;
  return result;
}

uint64_t sub_1007466A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __chkstk_darwin(a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8 - 8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  sub_1005D0C00(v13);
  v12[4] = v13[4];
  v12[5] = v13[5];
  v12[6] = v13[6];
  v12[7] = v13[7];
  v12[0] = v13[0];
  v12[1] = v13[1];
  v12[2] = v13[2];
  v12[3] = v13[3];
  (*(a2 + 24))(a1, a2);
  return sub_1007467F4(v10, v7, 0, 0, 0, 0xE000000000000000, v12, a1, a3, a2);
}

uint64_t sub_1007467F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *&v39 = a5;
  *(&v39 + 1) = a6;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v43 = a1;
  v33[1] = a10;
  v13 = sub_1005B981C(&unk_101A09DC0);
  v41 = *(v13 - 8);
  v42 = v13;
  __chkstk_darwin(v13);
  v40 = v33 - v14;
  v33[0] = a8;
  v34 = *(a8 - 8);
  v15 = v34;
  __chkstk_darwin(v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  v35 = *(v23 + 52);
  sub_1005D0C00(v60);
  v56 = v60[4];
  v57 = v60[5];
  v58 = v60[6];
  v59 = v60[7];
  v52 = v60[0];
  v53 = v60[1];
  v54 = v60[2];
  v55 = v60[3];
  sub_100745D88();
  *(a9 + *(v23 + 56)) = _swiftEmptyDictionarySingleton;
  (*(v20 + 16))(v22, v43, v19);
  CRRegister.init(_:)();
  v24 = *(v15 + 16);
  v25 = v36;
  v26 = v33[0];
  v24(v18, v36, v33[0]);
  CRRegister.init(_:)();
  LOBYTE(v44) = v37;
  CRRegister.init(_:)();
  LOBYTE(v44) = v38;
  CRRegister.init(_:)();
  v44 = v39;
  CRRegister.init(_:)();
  v27 = a7[5];
  v48 = a7[4];
  v49 = v27;
  v28 = a7[7];
  v50 = a7[6];
  v51 = v28;
  v29 = a7[1];
  v44 = *a7;
  v45 = v29;
  v30 = a7[3];
  v46 = a7[2];
  v47 = v30;
  sub_1005B981C(&unk_101A09DE0);
  sub_1007492B8();
  v31 = v40;
  CRRegister.init(_:)();
  (*(v34 + 8))(v25, v26);
  (*(v20 + 8))(v43, v19);
  return (*(v41 + 40))(a9 + v35, v31, v42);
}

uint64_t sub_100746BE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  sub_100745CEC();
  sub_100745CEC();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  v11 = v39;
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  if (v11 != v39)
  {
    goto LABEL_13;
  }

  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  v12 = v39;
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  if (v12 != v39)
  {
    goto LABEL_13;
  }

  v13 = sub_100745D3C();
  v15 = v14;
  if (v13 == sub_100745D3C() && v15 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_13:
      v18 = 0;
      return v18 & 1;
    }
  }

  sub_1005B981C(&unk_101A09DC0);
  CRRegister.wrappedValue.getter();
  sub_1005B981C(&unk_101A09DC0);
  CRRegister.wrappedValue.getter();
  v43 = v60;
  v44 = v61;
  v45 = v62;
  v46 = v63;
  v39 = v56;
  v40 = v57;
  v41 = v58;
  v42 = v59;
  v49 = v64[2];
  v50 = v64[3];
  v47 = v64[0];
  v48 = v64[1];
  v53 = v64[6];
  v54 = v64[7];
  v51 = v64[4];
  v52 = v64[5];
  v55[2] = v58;
  v55[3] = v59;
  v55[0] = v56;
  v55[1] = v57;
  v55[6] = v62;
  v55[7] = v63;
  v55[4] = v60;
  v55[5] = v61;
  if (sub_10074A978(v55) != 1)
  {
    v22[4] = v51;
    v22[5] = v52;
    v22[6] = v53;
    v22[7] = v54;
    v22[0] = v47;
    v22[1] = v48;
    v22[2] = v49;
    v22[3] = v50;
    if (sub_10074A978(v22) != 1)
    {
      v20[4] = v51;
      v20[5] = v52;
      v20[6] = v53;
      v20[7] = v54;
      v20[0] = v47;
      v20[1] = v48;
      v20[2] = v49;
      v20[3] = v50;
      v25 = v49;
      v26 = v50;
      v23 = v47;
      v24 = v48;
      v29 = v53;
      v30 = v54;
      v27 = v51;
      v28 = v52;
      v67 = v41;
      v68 = v42;
      v65 = v39;
      v66 = v40;
      v71 = v45;
      v72 = v46;
      v69 = v43;
      v70 = v44;
      sub_10000BE14(&v56, v21, &unk_101A09DE0);
      sub_10000BE14(v64, v21, &unk_101A09DE0);
      v18 = sub_100A71A74(&v65, &v23);
      sub_10000CAAC(v20, &unk_101A09DE0);
      sub_10000CAAC(v64, &unk_101A09DE0);
      sub_10000CAAC(&v56, &unk_101A09DE0);
      v21[4] = v43;
      v21[5] = v44;
      v21[6] = v45;
      v21[7] = v46;
      v21[0] = v39;
      v21[1] = v40;
      v21[2] = v41;
      v21[3] = v42;
      sub_10000CAAC(v21, &unk_101A09DE0);
      return v18 & 1;
    }

    goto LABEL_12;
  }

  v27 = v51;
  v28 = v52;
  v29 = v53;
  v30 = v54;
  v23 = v47;
  v24 = v48;
  v25 = v49;
  v26 = v50;
  if (sub_10074A978(&v23) != 1)
  {
LABEL_12:
    v35 = v51;
    v36 = v52;
    v37 = v53;
    v38 = v54;
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v27 = v43;
    v28 = v44;
    v29 = v45;
    v30 = v46;
    v23 = v39;
    v24 = v40;
    v25 = v41;
    v26 = v42;
    sub_10000CAAC(&v23, &qword_1019FDFA8);
    goto LABEL_13;
  }

  v69 = v43;
  v70 = v44;
  v71 = v45;
  v72 = v46;
  v65 = v39;
  v66 = v40;
  v67 = v41;
  v68 = v42;
  sub_10000CAAC(&v65, &unk_101A09DE0);
  v18 = 1;
  return v18 & 1;
}

__n128 sub_10074714C@<Q0>(uint64_t a1@<X8>)
{
  sub_100746590(&v13);
  v2 = v15;
  v3 = v17;
  v4 = v19;
  v5 = v21;
  v6 = v23;
  result = v14;
  v8 = v16;
  v9 = v18;
  v10 = v20;
  v11 = v22;
  v12 = v24;
  *a1 = v13;
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  *(a1 + 32) = v8;
  *(a1 + 48) = v3;
  *(a1 + 56) = v9;
  *(a1 + 72) = v4;
  *(a1 + 80) = v10;
  *(a1 + 96) = v5;
  *(a1 + 104) = v11;
  *(a1 + 120) = v6;
  *(a1 + 128) = v12;
  return result;
}

uint64_t sub_1007471E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return static CRStruct_6.fieldKeys.getter(a1, WitnessTable);
}

uint64_t sub_100747244(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1007472AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CRType.context.getter(a1, WitnessTable);
}

uint64_t sub_100747300(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_6.newRefs(from:)(a1, a2, WitnessTable);
}

uint64_t sub_100747360()
{
  swift_getWitnessTable();

  return CRStruct_6.actionUndoingDifference(from:)();
}

uint64_t sub_1007473C8()
{
  swift_getWitnessTable();

  return CRStruct_6.apply(_:)();
}

uint64_t sub_100747428()
{
  swift_getWitnessTable();

  return CRStruct_6.hasDelta(from:)();
}

uint64_t sub_100747488()
{
  swift_getWitnessTable();

  return CRStruct_6.delta(_:from:)();
}

uint64_t sub_100747504(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_6.canMerge(delta:)(a1, a2, WitnessTable);
}

uint64_t sub_100747564()
{
  swift_getWitnessTable();

  return CRStruct_6.merge(delta:)();
}

uint64_t sub_1007475C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_6.copy(renamingReferences:)(a1, a2, WitnessTable);
}

uint64_t sub_10074762C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_6.copy(renamingReferences:)(a1, a2, WitnessTable);
}

uint64_t sub_100747694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_6.observableDifference(from:with:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100747710(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_6.visitReferences(_:)(a1, a2, WitnessTable);
}

BOOL sub_100747770()
{
  swift_getWitnessTable();

  return CRStruct_6.needToFinalizeTimestamps()();
}

uint64_t sub_1007477C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_6.finalizeTimestamps(_:)(a1, a2, WitnessTable);
}

uint64_t sub_100747824()
{
  swift_getWitnessTable();

  return CRStruct_6.merge(_:)();
}

uint64_t sub_10074788C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_6.merge(_:)(a1, a2, WitnessTable);
}

uint64_t sub_100747A8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CRStruct_6.minEncodingVersion.getter(a1, WitnessTable);
}

uint64_t *sub_100747AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *v2;
  v7 = *(a1 + 16);
  *(v2 + 3) = *a1;
  *(v2 + 5) = v7;
  *(v2 + 56) = *(a1 + 32);
  v8 = v6;
  if ((*(v5 + 128))())
  {
    a2 |= 2uLL;
  }

  v9 = (*(v8 + 136))();
  v10 = a2 | 4;
  if ((v9 & 1) == 0)
  {
    v10 = a2;
  }

  v3[2] = v10;
  return v3;
}

unint64_t sub_100747BB4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = [v1 BOOLForKey:@"CRLAllowInteractionWithUnsupportedBoardAndBoardItemsUserDefault"];

  v3 = v0[3];
  result = sub_10001FF1C();
  if (result < v3 && v2 == 0)
  {
    return result;
  }

  v0[3] = (*(*v0 + 216))();
  v6 = (*(*v0 + 240))();
  v7 = v0[2];
  if (v6)
  {
    if ((v7 & 1) == 0)
    {
      v8 = v7 | 1;
LABEL_10:
      v0[2] = v8;
    }
  }

  else if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_10;
  }

  v9 = v0[4];
  if (sub_10001FF1C() >= v9)
  {
    v0[4] = (*(*v0 + 224))();
  }

  v10 = v0[5];
  result = sub_10001FF1C();
  if (result >= v10)
  {
    result = (*(*v0 + 232))();
    v0[5] = result;
  }

  return result;
}

uint64_t sub_100748A88()
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 sub_100748C90@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 56);
  result = *(*v1 + 24);
  v4 = *(*v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_100748CE4()
{
  v1 = *(*v0 + 736);
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 744);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_100748E08()
{
  sub_10073C67C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLBoardItemParentAffinity()
{
  result = qword_1019FDDE0;
  if (!qword_1019FDDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100748F04()
{
  sub_100749074(319, &qword_1019F44E0, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_100749024();
    if (v1 <= 0x3F)
    {
      sub_100749074(319, &unk_1019FDDF8, type metadata accessor for CRLTableAnchorHint);
      if (v2 <= 0x3F)
      {
        sub_100749390(319, &qword_1019F5D58, &type metadata accessor for AnyCRValue);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100749024()
{
  if (!qword_1019FDDF0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FDDF0);
    }
  }
}

void sub_100749074(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1007490D0()
{
  sub_10007DE30();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRRegister();
    if (v1 <= 0x3F)
    {
      sub_100039D58(319, &qword_1019F7D40);
      if (v2 <= 0x3F)
      {
        sub_100039D58(319, &qword_1019F48D0);
        if (v3 <= 0x3F)
        {
          sub_100749248();
          if (v4 <= 0x3F)
          {
            sub_100749390(319, &qword_1019F48F8, &type metadata accessor for AnyCRDT);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100749248()
{
  if (!qword_1019FDEC0)
  {
    sub_1005C4E5C(&unk_101A09DE0);
    sub_1007492B8();
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FDEC0);
    }
  }
}

unint64_t sub_1007492B8()
{
  result = qword_101A106A0;
  if (!qword_101A106A0)
  {
    sub_1005C4E5C(&unk_101A09DE0);
    sub_10074933C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A106A0);
  }

  return result;
}

unint64_t sub_10074933C()
{
  result = qword_101A09DF0;
  if (!qword_101A09DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09DF0);
  }

  return result;
}

void sub_100749390(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100749620(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100749744()
{
  result = qword_1019FDF10;
  if (!qword_1019FDF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDF10);
  }

  return result;
}

unint64_t sub_10074979C()
{
  result = qword_1019FDF18;
  if (!qword_1019FDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDF18);
  }

  return result;
}

unint64_t sub_1007497F4()
{
  result = qword_1019FDF20;
  if (!qword_1019FDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDF20);
  }

  return result;
}

unint64_t sub_10074984C()
{
  result = qword_1019FDF28;
  if (!qword_1019FDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDF28);
  }

  return result;
}

unint64_t sub_1007498A4()
{
  result = qword_1019FDF30;
  if (!qword_1019FDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDF30);
  }

  return result;
}

unint64_t sub_1007498FC()
{
  result = qword_1019FDF38;
  if (!qword_1019FDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDF38);
  }

  return result;
}

uint64_t sub_1007499DC(uint64_t a1)
{
  *(a1 + 8) = sub_100749620(&qword_1019FDF58, type metadata accessor for CRLBoardItemParentAffinity);
  result = sub_100749620(&qword_1019FDF60, type metadata accessor for CRLBoardItemParentAffinity);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100749A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = __chkstk_darwin(v4);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v60 - v7;
  v8 = type metadata accessor for CRLTableAnchorHint();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v10 - 8);
  v66 = &v60 - v11;
  v67 = sub_1005B981C(&unk_101A0B010);
  __chkstk_darwin(v67);
  v70 = &v60 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v17 - 8);
  v19 = &v60 - v18;
  v20 = sub_1005B981C(&unk_101A0AFE0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v60 - v22;
  v24 = *(v21 + 56);
  v71 = a1;
  sub_10000BE14(a1, &v60 - v22, &qword_1019F6990);
  sub_10000BE14(a2, &v23[v24], &qword_1019F6990);
  v25 = *(v14 + 48);
  if (v25(v23, 1, v13) == 1)
  {
    if (v25(&v23[v24], 1, v13) == 1)
    {
      sub_10000CAAC(v23, &qword_1019F6990);
      goto LABEL_11;
    }

LABEL_6:
    v26 = &unk_101A0AFE0;
    v27 = v23;
    goto LABEL_7;
  }

  sub_10000BE14(v23, v19, &qword_1019F6990);
  if (v25(&v23[v24], 1, v13) == 1)
  {
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  (*(v14 + 32))(v16, &v23[v24], v13);
  sub_100749620(&qword_1019F37C0, &type metadata accessor for UUID);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v14 + 8);
  v31(v16, v13);
  v31(v19, v13);
  sub_10000CAAC(v23, &qword_1019F6990);
  if ((v30 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v32 = type metadata accessor for CRLBoardItemParentAffinity();
  v28 = 0;
  v33 = v32[5];
  v34 = v71;
  v35 = (v71 + v33);
  v36 = *(v71 + v33 + 16);
  v37 = (a2 + v33);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v35, *v37)))) & 1) == 0 && v36 == v37[1].f32[0] && ((v35[1].u8[4] ^ v37[1].u8[4]) & 1) == 0 && ((v35[1].u8[5] ^ v37[1].u8[5]) & 1) == 0 && ((v35[1].u8[6] ^ v37[1].u8[6]) & 1) == 0 && ((v35[1].u8[7] ^ v37[1].u8[7]) & 1) == 0)
  {
    if ((sub_100B3216C(v35[1].i64[1], v37[1].i64[1]) & 1) == 0)
    {
      goto LABEL_8;
    }

    v38 = v32[6];
    v39 = (v34 + v38);
    v40 = *(v34 + v38 + 64);
    v41 = (a2 + v38);
    if (v40)
    {
      if ((v41[4].i8[0] & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if ((v41[4].i8[0] & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v39[1], v41[1]), vceqq_f32(*v39, *v41)), vandq_s8(vceqq_f32(v39[2], v41[2]), vceqq_f32(v39[3], v41[3])))) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    v42 = v32[7];
    v43 = *(v67 + 48);
    v44 = v70;
    sub_10000BE14(v34 + v42, v70, &unk_101A09DD0);
    sub_10000BE14(a2 + v42, v44 + v43, &unk_101A09DD0);
    v45 = v69;
    v46 = *(v68 + 6);
    if (v46(v44, 1, v69) == 1)
    {
      if (v46(v44 + v43, 1, v45) == 1)
      {
        sub_10000CAAC(v44, &unk_101A09DD0);
LABEL_26:
        v28 = sub_100B3216C(*(v34 + v32[8]), *(a2 + v32[8]));
        return v28 & 1;
      }
    }

    else
    {
      v47 = v66;
      sub_10000BE14(v44, v66, &unk_101A09DD0);
      if (v46(v44 + v43, 1, v45) != 1)
      {
        v68 = v32;
        v48 = v65;
        sub_10074A42C(v44 + v43, v65);
        _s6CellIDVMa(0);
        sub_100749620(&unk_101A0B020, _s6CellIDVMa);
        v49 = v61;
        dispatch thunk of RawRepresentable.rawValue.getter();
        v50 = v62;
        v51 = v48;
        dispatch thunk of RawRepresentable.rawValue.getter();
        sub_100749620(&unk_101A2C5A0, &type metadata accessor for CRKeyPath);
        v52 = v64;
        v53 = dispatch thunk of static Equatable.== infix(_:_:)();
        v54 = *(v63 + 8);
        v54(v50, v52);
        v54(v49, v52);
        if (v53)
        {
          v55 = (v47 + *(v69 + 20));
          v56 = v55[1];
          v72[0] = *v55;
          v72[1] = v56;
          v57 = (v51 + *(v69 + 20));
          v58 = v57[1];
          v73[0] = *v57;
          v73[1] = v58;
          if (sub_101271C28(v72, v73))
          {
            v59 = sub_100B3216C(*(v47 + *(v69 + 24)), *(v51 + *(v69 + 24)));
            sub_10074A870(v51, type metadata accessor for CRLTableAnchorHint);
            sub_10074A870(v47, type metadata accessor for CRLTableAnchorHint);
            sub_10000CAAC(v70, &unk_101A09DD0);
            v32 = v68;
            if (v59)
            {
              goto LABEL_26;
            }

            goto LABEL_8;
          }
        }

        sub_10074A870(v51, type metadata accessor for CRLTableAnchorHint);
        sub_10074A870(v47, type metadata accessor for CRLTableAnchorHint);
        v26 = &unk_101A09DD0;
        v27 = v70;
        goto LABEL_7;
      }

      sub_10074A870(v47, type metadata accessor for CRLTableAnchorHint);
    }

    v26 = &unk_101A0B010;
    v27 = v44;
LABEL_7:
    sub_10000CAAC(v27, v26);
LABEL_8:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_10074A3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074A42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLTableAnchorHint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074A548(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000101563040 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797274656D6F6567 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101563060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E41656C626174 && a2 == 0xEF746E6948726F68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_10074A764()
{
  result = qword_1019FDF70;
  if (!qword_1019FDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDF70);
  }

  return result;
}

unint64_t sub_10074A7B8()
{
  result = qword_1019FDF78;
  if (!qword_1019FDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDF78);
  }

  return result;
}

uint64_t sub_10074A80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardItemParentAffinity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074A870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10074A8D0()
{
  result = qword_1019FDF90;
  if (!qword_1019FDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDF90);
  }

  return result;
}

unint64_t sub_10074A924()
{
  result = qword_1019FDF98;
  if (!qword_1019FDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDF98);
  }

  return result;
}

uint64_t sub_10074A978(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_10074AA00()
{
  result = qword_1019FDFD0;
  if (!qword_1019FDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDFD0);
  }

  return result;
}

uint64_t sub_10074AA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10074D924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10074AA80(uint64_t a1)
{
  v2 = sub_10005E280();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074AABC(uint64_t a1)
{
  v2 = sub_10005E280();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AASUserInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FDFD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_10005E280();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_1005B981C(&qword_1019FDFE8);
  sub_10074AD54();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for AASUserInfo();
    v10[6] = 1;
    type metadata accessor for UUID();
    sub_10005C8B0(&qword_1019F43C0, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[5] = 2;
    type metadata accessor for Date();
    sub_10005C8B0(&qword_101A19AD0, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10074AD54()
{
  result = qword_1019FDFF0;
  if (!qword_1019FDFF0)
  {
    sub_1005C4E5C(&qword_1019FDFE8);
    sub_10074AE10();
    sub_10005C8B0(&qword_101A19AD0, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDFF0);
  }

  return result;
}

unint64_t sub_10074AE10()
{
  result = qword_1019FDFF8;
  if (!qword_1019FDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FDFF8);
  }

  return result;
}

void sub_10074AE7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:isa forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t sub_10074AF18()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_10074B220;
  }

  else
  {
    v3 = sub_10074B080;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10074B080()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10074B144, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10074B144()
{
  v1 = *(v0 + 96);
  sub_10074B5F4();
  *(v1 + 208) = 0;
  sub_100060F08();

  return _swift_task_switch(sub_10074B1B4, 0, 0);
}

uint64_t sub_10074B1B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10074B220()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10074B284()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for AASUserInfo();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  [*sub_100020E58(v0 + 16 v0[19])];
  sub_1005B981C(&qword_1019FE200);
  v8 = *(sub_1005B981C(&qword_1019FE208) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10146C6B0;
  static Date.now.getter();
  v11 = sub_100BD6064(v10);
  swift_setDeallocating();
  sub_10000CAAC(v10 + v9, &qword_1019FE208);
  swift_deallocClassInstance();
  UUID.init()();
  v12 = *(v5 + 32);
  static Date.now.getter();
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v7 + v12, 0, 1, v13);
  *v7 = v11;
  sub_10074C368();
  sub_10005EC10(v7);
  if (v0[27])
  {

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();
  }

  sub_100060F08();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;

  sub_10064191C(0, 0, v3, &unk_101479A30, v17);
}

void sub_10074B5F4()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v41[-v2];
  v4 = sub_1005B981C(&qword_1019FBE50);
  __chkstk_darwin(v4 - 8);
  v6 = &v41[-v5];
  v7 = type metadata accessor for AASUserInfo();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v41[-v12];
  [*sub_100020E58(v0 + 16 v0[19])];
  sub_10005A4B8(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CAAC(v6, &qword_1019FBE50);
    sub_10074B284();
    v14 = objc_opt_self();
    v15 = [v14 _atomicIncrementAssertCount];
    v42 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v42);
    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v15;
    v24 = sub_1005CF000();
    *(inited + 96) = v24;
    v25 = sub_10005C8B0(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v25;
    *(inited + 72) = v16;
    *(inited + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 112) = v19;
    *(inited + 120) = v21;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v26;
    *(inited + 152) = 246;
    v27 = v42;
    *(inited + 216) = v24;
    *(inited + 224) = v25;
    *(inited + 192) = v27;
    v28 = v16;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v31, "UserInfo is nil, creating new UserInfo", 38, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
    v33 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    [v14 handleFailureInFunction:v34 file:v35 lineNumber:246 isFatal:0 format:v36 args:v33];
  }

  else
  {
    sub_10005EC6C(v6, v13);
    sub_10074C670(v13, v11);
    sub_10074C368();
    sub_10005EC10(v11);
    if (v0[27])
    {

      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }

    sub_100060F08();
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v3, 1, 1, v37);
    v38 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v39 = static MainActor.shared.getter();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = &protocol witness table for MainActor;
    v40[4] = v38;

    sub_10064191C(0, 0, v3, &unk_101479A18, v40);

    sub_10005EC10(v13);
  }
}

uint64_t sub_10074BCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_1005B981C(&qword_1019FBE50);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[24] = v7;
  v4[25] = v6;

  return _swift_task_switch(sub_10074BDE0, v7, v6);
}

uint64_t sub_10074BDE0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 208) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10074BEBC, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10074BEBC()
{
  sub_10005A4B8(v0[18]);

  v1 = v0[24];
  v2 = v0[25];

  return _swift_task_switch(sub_10074BF2C, v1, v2);
}

uint64_t sub_10074BF2C()
{
  v1 = v0[18];

  v2 = type metadata accessor for AASUserInfo();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000CAAC(v0[18], &qword_1019FBE50);
  }

  else
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[19];
    v6 = v0[20];
    v7 = v0[18];
    v8 = *(v6 + 16);
    v8(v4, v7 + *(v2 + 20), v5);
    sub_10005EC10(v7);
    (*(v6 + 32))(v3, v4, v5);
    sub_1005B981C(&qword_1019FE220);
    v9 = (sub_1005B981C(&qword_1019FE228) - 8);
    v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10146C6B0;
    v12 = (v11 + v10);
    v13 = v9[14];
    *v12 = 0x444972657375;
    v12[1] = 0xE600000000000000;
    v8(v12 + v13, v3, v5);
    v14 = sub_100BD6224(v11);
    swift_setDeallocating();
    sub_10000CAAC(v12, &qword_1019FE228);
    swift_deallocClassInstance();
    v15 = [objc_opt_self() defaultCenter];
    if (qword_1019F14F8 != -1)
    {
      swift_once();
    }

    v16 = static NSNotificationName.AASUserIdentifierDidResetNotification;
    sub_1010A8348(v14);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 postNotificationName:v16 object:0 userInfo:isa];

    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    v18 = v0[22];
    v19 = v0[19];
    v20 = v0[20];
    swift_beginAccess();
    v21 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v23 = v21;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v24;
    *(inited + 40) = v26;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v23, &_mh_execute_header, v27, "UserID did reset to: %@", 23, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    (*(v20 + 8))(v18, v19);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_10074C368()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for AASUserInfo();
  sub_10005C8B0(&qword_1019FE210, type metadata accessor for AASUserInfo);
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;
  v4 = v1;

  v5 = *sub_100020E58((v0 + 128), *(v0 + 152));
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 ubiquityIdentityToken];

  if (v7)
  {
    swift_unknownObjectRelease();

    v8 = &off_101885218;
  }

  else
  {
    v9 = v5;
    v8 = &off_1018850C8;
  }

  swift_getObjectType();
  v10 = v8[2];
  sub_100024E98(v4, v3);
  v10(v4, v3);
  sub_10002640C(v4, v3);
  swift_unknownObjectRelease();

  return sub_10002640C(v4, v3);
}

uint64_t sub_10074C670@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = static OS_os_log.crlAppAnalytics;
    v5 = static os_log_type_t.default.getter();
    sub_100005404(v4, &_mh_execute_header, v5, "update user info", 16, 2, _swiftEmptyArrayStorage);

    v6 = type metadata accessor for AASUserInfo();
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = static OS_os_log.crlAppAnalytics;
    v8 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v8, "update user info with new date", 30, 2, _swiftEmptyArrayStorage);

    sub_1005B981C(&qword_1019FE200);
    v9 = *(sub_1005B981C(&qword_1019FE208) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10146C6B0;
    static Date.now.getter();
    v3 = sub_100BD6064(v11);
    swift_setDeallocating();
    sub_10000CAAC(v11 + v10, &qword_1019FE208);
    swift_deallocClassInstance();
    v6 = type metadata accessor for AASUserInfo();
  }

  UUID.init()();
  v12 = *(v6 + 24);
  static Date.now.getter();
  v13 = type metadata accessor for Date();
  result = (*(*(v13 - 8) + 56))(a2 + v12, 0, 1, v13);
  *a2 = v3;
  return result;
}

uint64_t sub_10074C920()
{

  sub_100005070(v0 + 128);
  sub_100005070(v0 + 168);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

unint64_t sub_10074C974()
{
  result = qword_1019FE180;
  if (!qword_1019FE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE180);
  }

  return result;
}

unint64_t sub_10074C9CC()
{
  result = qword_1019FE188;
  if (!qword_1019FE188)
  {
    sub_1005C4E5C(&qword_1019FE190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE188);
  }

  return result;
}

uint64_t sub_10074CA30(uint64_t a1)
{
  v2 = sub_10005EA24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074CA6C(uint64_t a1)
{
  v2 = sub_10005EA24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10074CAA8(uint64_t a1)
{
  v2 = sub_10005EB00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074CAE4(uint64_t a1)
{
  v2 = sub_10005EB00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10074CB20(void *a1)
{
  v2 = sub_1005B981C(&qword_1019FE1B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = sub_1005B981C(&qword_1019FE1B8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100020E58(a1, a1[3]);
  sub_10005EA24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10005EB00();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10074CD08()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10074CD3C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 14;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10074CD70()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10074CDA4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10074CDD8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10074CE0C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10074CE40()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10074CE74(uint64_t a1, unint64_t a2)
{
  result = 0;
  sub_1005B981C(&qword_1019FE1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrApplicationTag;
  v6 = kSecClass;
  v7 = kSecClassKey;
  v8 = kSecAttrApplicationTag;

  *(inited + 80) = sub_1000607F0(a1, a2);
  *(inited + 88) = v9;
  *(inited + 104) = &type metadata for Data;
  *(inited + 112) = kSecAttrSynchronizable;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecReturnData;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = 1;
  v10 = kSecAttrSynchronizable;
  v11 = kSecReturnData;
  sub_100BD5F3C(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_1019FE1E8);
  swift_arrayDestroy();
  sub_10005C8B0(&qword_1019F3BC8, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = SecItemCopyMatching(isa, &result);

  if (v13)
  {
    v14 = SecCopyErrorMessageString(v13, 0);
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_10146C4D0;
    *(v18 + 56) = &type metadata for String;
    v19 = sub_1000053B0();
    *(v18 + 64) = v19;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    *(v18 + 96) = &type metadata for Int32;
    *(v18 + 104) = &protocol witness table for Int32;
    *(v18 + 72) = v13;
    *(v18 + 136) = &type metadata for String;
    *(v18 + 144) = v19;
    *(v18 + 112) = 0;
    *(v18 + 120) = 0xE000000000000000;

    v20 = v17;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v21, "Error reading data from Keychain, tag=%{public}@, status=%{public}d, error=%{public}@", 85, 2, v18);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v16 = 0;
  }

  else if (result)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v16 = v23;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_10074D264(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  v46 = a3;
  v47 = a4;
  v6 = sub_1000607F0(a3, a4);
  v8 = v7;
  sub_1005B981C(&qword_1019FE1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  v11 = v10;
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v10;
  *(inited + 72) = kSecAttrApplicationTag;
  *(inited + 80) = v6;
  *(inited + 88) = v8;
  *(inited + 104) = &type metadata for Data;
  *(inited + 112) = kSecAttrSynchronizable;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecReturnData;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = 1;
  v44 = kSecClass;
  v43 = kSecClassKey;
  v12 = v8;
  v13 = v6;
  v42 = kSecAttrApplicationTag;
  sub_100024E98(v6, v12);
  v41 = kSecAttrSynchronizable;
  v14 = kSecReturnData;
  sub_100BD5F3C(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_1019FE1E8);
  swift_arrayDestroy();
  sub_10005C8B0(&qword_1019F3BC8, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = SecItemDelete(isa);

  if (v16)
  {
    v17 = SecCopyErrorMessageString(v16, 0);
    if (v17)
    {
      v18 = v17;
      objc_opt_self();
      v19 = v12;
      if (swift_dynamicCastObjCClass())
      {
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    else
    {
      v19 = v12;
    }

    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_10146C4D0;
    *(v21 + 56) = &type metadata for String;
    v22 = sub_1000053B0();
    *(v21 + 64) = v22;
    *(v21 + 32) = a3;
    *(v21 + 40) = v47;
    *(v21 + 96) = &type metadata for Int32;
    *(v21 + 104) = &protocol witness table for Int32;
    *(v21 + 72) = v16;
    *(v21 + 136) = &type metadata for String;
    *(v21 + 144) = v22;
    *(v21 + 112) = 0;
    *(v21 + 120) = 0xE000000000000000;

    v23 = v20;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v24, "Error deleting data from Keychain, tag=%{public}@, status=%{public}d, error=%{public}@", 86, 2, v21);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v12 = v19;
    v13 = v6;
  }

  if (a2 >> 60 == 15)
  {
    return sub_10002640C(v13, v12);
  }

  v26 = swift_initStackObject();
  *(v26 + 32) = v44;
  *(v26 + 16) = xmmword_10146D2A0;
  *(v26 + 40) = v43;
  *(v26 + 64) = v11;
  *(v26 + 72) = v42;
  *(v26 + 80) = v13;
  *(v26 + 88) = v12;
  *(v26 + 104) = &type metadata for Data;
  *(v26 + 112) = v41;
  *(v26 + 120) = 1;
  *(v26 + 144) = &type metadata for Bool;
  *(v26 + 152) = kSecValueData;
  *(v26 + 184) = &type metadata for Data;
  *(v26 + 160) = a1;
  *(v26 + 168) = a2;
  sub_100024E84(a1, a2);
  v27 = v44;
  v28 = v43;
  v29 = v42;
  sub_100024E98(v13, v12);
  v30 = v41;
  sub_100024E84(a1, a2);
  v31 = kSecValueData;
  sub_100BD5F3C(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = SecItemAdd(v32, 0);

  if (v33)
  {
    v34 = SecCopyErrorMessageString(v33, 0);
    if (v34)
    {
      v35 = v34;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v36 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_10146C4D0;
    *(v37 + 56) = &type metadata for String;
    v38 = sub_1000053B0();
    *(v37 + 64) = v38;
    *(v37 + 32) = v46;
    *(v37 + 40) = v47;
    *(v37 + 96) = &type metadata for Int32;
    *(v37 + 104) = &protocol witness table for Int32;
    *(v37 + 72) = v33;
    *(v37 + 136) = &type metadata for String;
    *(v37 + 144) = v38;
    *(v37 + 112) = 0;
    *(v37 + 120) = 0xE000000000000000;

    v39 = v36;
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v40, "Error writing data to Keychain, tag=%{public}@, status=%{public}d, error=%{public}@", 83, 2, v37);
    sub_100025870(a1, a2);

    sub_10002640C(v13, v12);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    return swift_arrayDestroy();
  }

  else
  {
    sub_10002640C(v13, v12);
    return sub_100025870(a1, a2);
  }
}

uint64_t sub_10074D924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xEC00000070614D65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444972657375 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101563790 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10074DA44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10074BCA8(a1, v4, v5, v6);
}

uint64_t sub_10074DAF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_10074BCA8(a1, v4, v5, v6);
}

unint64_t sub_10074DBD0()
{
  result = qword_1019FE238;
  if (!qword_1019FE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FE238);
  }

  return result;
}

uint64_t sub_10074DC30(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = sub_100BD6410(_swiftEmptyArrayStorage);
  *(v3 + 72) = 0;
  *(v3 + 24) = a1;
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator))
  {

    v6 = sub_10078BDC0(0x6472616F62, 0xE500000000000000, a1);

    *(v3 + 32) = v6;

    swift_unknownObjectWeakAssign();
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v9 = v7;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v10;
    *(inited + 40) = v12;
    v13 = static os_log_type_t.debug.getter();
    sub_100005404(v9, &_mh_execute_header, v13, "Start observe user edit for %@", 30, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    v14 = [objc_opt_self() defaultCenter];
    [v14 addObserver:v3 selector:"boardItemDidInsert:" name:@"CRLBoardItemInsertionEditorDidInsertBoardItemsNotification" object:0];

    v15 = a2;
    a2 = v14;
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = static OS_os_log.crlAppAnalytics;
    v16 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v16, "Failed to chain board tracker", 29, 2, _swiftEmptyArrayStorage);
  }

  return v3;
}

uint64_t sub_10074DF38()
{
  v1 = v0;
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator))
  {
    v2 = *(v0 + 24);
    swift_beginAccess();

    sub_1006F6C58(v2, v5);
    swift_endAccess();

    sub_10000CAAC(v5, &qword_1019FBE68);
  }

  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v1];

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_10074E068()
{
  sub_10074DF38();

  return swift_deallocClassInstance();
}

void sub_10074E09C()
{
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) == 1)
  {
    if (*(v0 + 32))
    {

      Tracker.whenSession(block:)();
    }

    sub_10074F804();
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = static OS_os_log.crlAppAnalytics;
    v2 = static os_log_type_t.default.getter();
    sub_100005404(v1, &_mh_execute_header, v2, "Skip startEvents for unselected user", 36, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10074E22C()
{
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) == 1)
  {
    if (*(v0 + 16) == 1)
    {

      sub_10074F32C();
    }

    else
    {
      if (*(v0 + 32))
      {

        Tracker.whenSession(block:)();
      }

      sub_10074F624();
    }
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = static OS_os_log.crlAppAnalytics;
    v2 = static os_log_type_t.default.getter();
    sub_100005404(v1, &_mh_execute_header, v2, "Skip endEvents for unselected user", 34, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10074E3CC(uint64_t a1, double a2, double a3)
{
  if (qword_1019F14F0 != -1)
  {
    v18 = a1;
    v19 = a3;
    v20 = a2;
    swift_once();
    a1 = v18;
    a2 = v20;
    a3 = v19;
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) == 1)
  {
    v4 = a3;
    v5 = a2;
    sub_10074EA50(a1);
    v6 = *(v3 + 72);
    v7 = sub_100750A68(v5, v4);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = sub_10074EE3C();
    if (*(v3 + 32))
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v6;
      *(v15 + 24) = v7;
      *(v15 + 32) = v9;
      *(v15 + 40) = v11;
      *(v15 + 48) = v13;
      *(v15 + 56) = v14;

      Tracker.whenSession(block:)();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = static OS_os_log.crlAppAnalytics;
    v17 = static os_log_type_t.default.getter();
    sub_100005404(v16, &_mh_execute_header, v17, "Skip updateBoardData for unselected user", 40, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10074E614()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Update board events data", 24, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480);
  v11 = type metadata accessor for DataEventTrait();
  v2 = *(v11 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C6B0;
  v5 = enum case for DataEventTrait.unique(_:);
  v6 = *(v2 + 104);
  v10 = enum case for DataEventTrait.unique(_:);
  v6(v4 + v3, enum case for DataEventTrait.unique(_:), v11);
  sub_100751148();
  AccessTracker.push<A>(data:traits:file:line:)();

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146C6B0;
  v6(v7 + v3, v5, v11);
  sub_10075119C();
  AccessTracker.push<A>(data:traits:file:line:)();

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146C6B0;
  v6(v8 + v3, v10, v11);
  sub_100751038();
  AccessTracker.push<A>(data:traits:file:line:)();
}

uint64_t sub_10074E904()
{
  v1 = v0;
  if (*(v0 + 32))
  {
    sub_1007510A0();

    Tracker.clearStack<A>(of:includeParentTrackers:)();

    if (*(v0 + 32))
    {
      sub_100751148();

      Tracker.clearStack<A>(of:includeParentTrackers:)();

      if (*(v0 + 32))
      {
        sub_10075119C();

        Tracker.clearStack<A>(of:includeParentTrackers:)();

        if (*(v0 + 32))
        {
          sub_100751038();

          Tracker.clearStack<A>(of:includeParentTrackers:)();
        }
      }
    }
  }

  v2 = sub_100BD6410(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *(v1 + 64) = v2;

  *(v1 + 48) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_10074EA50(uint64_t a1)
{
  v2 = sub_100750410(a1);
  if (*(v1 + 32))
  {
    v5 = v2;
    v6 = v3;
    v7 = v4;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    *(v8 + 32) = v7 & 1;

    Tracker.whenSession(block:)();
  }

  else
  {
  }
}

uint64_t sub_10074EC68()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Update boardData", 16, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480);
  v2 = type metadata accessor for DataEventTrait();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  (*(v3 + 104))(v5 + v4, enum case for DataEventTrait.unique(_:), v2);
  sub_1007510A0();
  AccessTracker.push<A>(data:traits:file:line:)();
}

uint64_t sub_10074EE3C()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  for (i = _swiftEmptyArrayStorage; v4; *(v15 + 9) = v12)
  {
LABEL_8:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(v1 + 48) + v10);
    v12 = *(*(v1 + 56) + 8 * v10);
    if (v12 <= 100)
    {
      if (v12 <= 10)
      {
        if (v12 < 6)
        {
          if (v12 < 3)
          {
            if (v12 < 0)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              LODWORD(v12) = -1;
              if (result)
              {
                goto LABEL_10;
              }
            }

            else
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if (result)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            LODWORD(v12) = 5;
            if (result)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          LODWORD(v12) = 10;
          if (result)
          {
            goto LABEL_10;
          }
        }

LABEL_16:
        result = sub_100B375EC(0, *(i + 2) + 1, 1, i);
        i = result;
        goto LABEL_10;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      LODWORD(v12) = 100;
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      LODWORD(v12) = 101;
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    v14 = *(i + 2);
    v13 = *(i + 3);
    if (v14 >= v13 >> 1)
    {
      result = sub_100B375EC((v13 > 1), v14 + 1, 1, i);
      i = result;
    }

    v4 &= v4 - 1;
    *(i + 2) = v14 + 1;
    v15 = &i[8 * v14];
    v15[32] = v11;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return i;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10074F014()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Start boardCreateEvent", 22, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardCreateEvent(0);
  sub_100751204(&qword_1019FE498, type metadata accessor for BoardCreateEvent);
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_10074F11C()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Start boardViewEvent", 20, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardViewEvent(0);
  sub_100751204(&qword_1019FE4C0, type metadata accessor for BoardViewEvent);
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_10074F224()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Start boardEditEvent", 20, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardEditEvent(0);
  sub_100751204(&qword_1019FE490, type metadata accessor for BoardEditEvent);
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_10074F32C()
{
  v1 = v0;
  if (*(v0 + 32))
  {

    Tracker.whenSession(block:)();
  }

  *(v0 + 16) = 0;
  v2 = sub_100BD6410(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *(v1 + 64) = v2;
}

uint64_t sub_10074F3BC()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Submit boardCreateEvent", 23, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardCreateEvent(0);
  sub_100751204(&qword_1019FE498, type metadata accessor for BoardCreateEvent);
  memset(v3, 0, sizeof(v3));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10000CAAC(v3, &unk_1019F4D00);
}

uint64_t sub_10074F4F0()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Submit boardViewEvent", 21, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardViewEvent(0);
  sub_100751204(&qword_1019FE4C0, type metadata accessor for BoardViewEvent);
  memset(v3, 0, sizeof(v3));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10000CAAC(v3, &unk_1019F4D00);
}

void sub_10074F624()
{
  if (*(v0 + 56) == 1)
  {
    if (*(v0 + 32))
    {

      Tracker.whenSession(block:)();
    }

    *(v0 + 56) = 0;
    v1 = sub_100BD6410(_swiftEmptyArrayStorage);
    swift_beginAccess();
    *(v0 + 64) = v1;
  }
}

uint64_t sub_10074F6D0()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Submit boardEditEvent", 21, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardEditEvent(0);
  sub_100751204(&qword_1019FE490, type metadata accessor for BoardEditEvent);
  memset(v3, 0, sizeof(v3));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10000CAAC(v3, &unk_1019F4D00);
}

void sub_10074F804()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() defaultCenter];
    if (qword_1019F16E8 != -1)
    {
      swift_once();
    }

    v4 = qword_101AD6870;
    v5 = swift_allocObject();
    swift_weakInit();
    v11[4] = sub_10075108C;
    v11[5] = v5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = *"";
    v11[2] = sub_100059694;
    v11[3] = &unk_1018854C0;
    v6 = _Block_copy(v11);
    v7 = v2;

    v8 = [v3 addObserverForName:v4 object:v7 queue:0 usingBlock:v6];

    _Block_release(v6);
    *(v0 + 48) = v8;
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = static OS_os_log.crlAppAnalytics;
    v10 = static os_log_type_t.default.getter();
    sub_100005404(v9, &_mh_execute_header, v10, "Start observe user edit failed: commandController is nil", 56, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10074FA1C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + 16))
    {
      if (qword_1019F2118 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v2 = static OS_os_log.crlAppAnalytics;
      v3 = static os_log_type_t.default.getter();
      sub_100005404(v2, &_mh_execute_header, v3, "Newly created board, skip boardEditEvent", 40, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      *(Strong + 56) = 1;
      if (*(Strong + 32))
      {

        Tracker.whenSession(block:)();
      }
    }

    v6 = *(v1 + 48);
    if (v6)
    {
      v7 = objc_opt_self();
      swift_unknownObjectRetain();
      v8 = [v7 defaultCenter];
      [v8 removeObserver:v6];

      swift_unknownObjectRelease();
      *(v1 + 48) = 0;

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = static OS_os_log.crlAppAnalytics;
    v5 = static os_log_type_t.default.getter();
    sub_100005404(v4, &_mh_execute_header, v5, "BoardTracker released before user edit", 38, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10074FC50(void *a1)
{
  v2 = v1;
  if (qword_1019F14F0 != -1)
  {
    v40 = a1;
    swift_once();
    a1 = v40;
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) != 1)
  {
    if (qword_1019F2118 != -1)
    {
LABEL_53:
      swift_once();
    }

    swift_beginAccess();
    v11 = static OS_os_log.crlAppAnalytics;
    v12 = static os_log_type_t.default.getter();
    v13 = "Skip  adding drawables to analytics for unselected user";
    v14 = v11;
    v15 = 55;
    goto LABEL_45;
  }

  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_1000640CC(v45), (v7 & 1) == 0))
  {

    sub_100064234(v45);
LABEL_40:
    v46 = 0u;
    v47 = 0u;
    goto LABEL_41;
  }

  sub_100064288(*(v5 + 56) + 32 * v6, &v46);
  sub_100064234(v45);

  if (!*(&v47 + 1))
  {
LABEL_41:
    sub_10000CAAC(&v46, &unk_1019F4D00);
    goto LABEL_42;
  }

  sub_1005B981C(&qword_1019F5740);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = static OS_os_log.crlAppAnalytics;
    v12 = static os_log_type_t.default.getter();
    v13 = "Skip adding drawables to analytics, nil boardItem";
    v14 = v11;
    v15 = 49;
LABEL_45:
    sub_100005404(v14, &_mh_execute_header, v12, v13, v15, 2, _swiftEmptyArrayStorage);

    return;
  }

  v8 = v45[0];
  if (v45[0] >> 62)
  {
    goto LABEL_55;
  }

  v9 = *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
  swift_beginAccess();
  if (v9)
  {
    v10 = 0;
    v42 = v8 & 0xFFFFFFFFFFFFFF8;
    v43 = v8 & 0xC000000000000001;
    v41 = v8;
    while (1)
    {
      if (v43)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v42 + 16))
        {
          goto LABEL_50;
        }

        v16 = *(v8 + 8 * v10 + 32);
      }

      v17 = v16;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v18 = sub_100750BE8(v16);
      v19 = *(v2 + 64);
      if (*(v19 + 16))
      {

        v20 = sub_1007C8BCC(v18);
        if (v21)
        {
          v22 = *(*(v19 + 56) + 8 * v20);
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_51;
      }

      v44 = v10 + 1;
      v25 = v9;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v2 + 64);
      *(v2 + 64) = 0x8000000000000000;
      v8 = v18;
      v28 = sub_1007C8BCC(v18);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v23 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v23)
      {
        goto LABEL_52;
      }

      v33 = v29;
      if (v27[3] < v32)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v38 = v28;
      sub_100AA7FE4();
      v28 = v38;
      v35 = v27;
      if (v33)
      {
LABEL_15:
        *(v35[7] + 8 * v28) = v24;
        goto LABEL_16;
      }

LABEL_34:
      v35[(v28 >> 6) + 8] |= 1 << v28;
      *(v35[6] + v28) = v18;
      *(v35[7] + 8 * v28) = v24;
      v36 = v35[2];
      v23 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v23)
      {
        __break(1u);
LABEL_55:
        v9 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_11;
      }

      v35[2] = v37;
LABEL_16:
      *(v2 + 64) = v35;
      swift_endAccess();

      ++v10;
      v9 = v25;
      v8 = v41;
      if (v44 == v25)
      {
        goto LABEL_46;
      }
    }

    sub_100A8F9E4(v32, isUniquelyReferenced_nonNull_native);
    v28 = sub_1007C8BCC(v18);
    if ((v33 & 1) != (v34 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

LABEL_33:
    v35 = v27;
    if (v33)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_46:

  v39 = sub_10074EE3C();
  if (*(v2 + 32))
  {
    *(swift_allocObject() + 16) = v39;

    Tracker.whenSession(block:)();
  }

  else
  {
  }
}