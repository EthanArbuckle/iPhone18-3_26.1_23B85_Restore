@interface PreviewLayer
- (uint64_t)sendAccessibilityNotifications;
- (void)invalidate;
@end

@implementation PreviewLayer

- (void)invalidate
{
  v2 = *&self->layer[OBJC_IVAR____TtC6Tamale12PreviewLayer_previewLayerInvalidatedCallback];
  if (v2)
  {

    v3 = sub_100005630(v2);
    v2(v3);

    sub_100005640(v2);
  }
}

- (uint64_t)sendAccessibilityNotifications
{
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v24 - 8);
  __chkstk_darwin(v24);
  v23 = &v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for DispatchQoS();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTime();
  v22 = v4;
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0u;
  v30 = 0u;
  AccessibilityNotification.ScreenChanged.init(_:)();
  _AccessibilityNotifications.post()();
  (*(v12 + 8))(v14, v11);
  sub_10005BBC4(0, &qword_1001D6B40);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v5 + 8);
  v21 = v5 + 8;
  v16(v8, v4);
  v31 = sub_1000B8C2C;
  v32 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_1000B5F04;
  *(&v30 + 1) = &unk_1001C3A90;
  v17 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v28 = &_swiftEmptyArrayStorage;
  sub_1000C55A8(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_1000618FC(&qword_1001D6B20, &unk_1001D8010);
  v19 = v23;
  v18 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v27 + 8))(v19, v18);
  (*(v25 + 8))(v3, v26);
  return (v16)(v10, v22);
}

@end