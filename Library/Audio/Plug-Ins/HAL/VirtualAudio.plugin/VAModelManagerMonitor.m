@interface VAModelManagerMonitor
- (void)register_for_inference_monitor_eventsWithHash:(unint64_t)a3 eventCallback:(id)a4 completionHandler:;
- (void)unregister_from_inference_monitorWithObserver:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation VAModelManagerMonitor

- (void)register_for_inference_monitor_eventsWithHash:(unint64_t)a3 eventCallback:(id)a4 completionHandler:
{
  v5 = v4;
  v9 = sub_1D1138(&qword_6E48F8, &qword_516E88);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a4);
  v14 = _Block_copy(v5);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = v13;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_51349C();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_517088;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_517090;
  v18[5] = v17;

  sub_1D0460(0, 0, v12, &unk_517098, v18);
}

- (void)unregister_from_inference_monitorWithObserver:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = sub_1D1138(&qword_6E48F8, &qword_516E88);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_51349C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_517068;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_517070;
  v15[5] = v14;

  sub_1D0460(0, 0, v10, &unk_517078, v15);
}

@end