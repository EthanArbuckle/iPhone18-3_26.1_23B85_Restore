@interface ASUIClientManager
+ (_TtC17AccessorySetupKit17ASUIClientManager)shared;
- (void)activateConnectionWithSession:(id)a3 with:(id)a4 pickerSettings:(id)a5 for:(id)a6 completionHandler:(id)a7;
- (void)dealloc;
- (void)failWithAccessory:(id)a3 completionHandler:(id)a4;
- (void)finishDiscoveryWith:(id)a3;
- (void)updatePickerWith:(id)a3 completionHandler:(id)a4;
- (void)updateWithAccessory:(id)a3 options:(unint64_t)a4 for:(id)a5 completionHandler:(id)a6;
@end

@implementation ASUIClientManager

+ (_TtC17AccessorySetupKit17ASUIClientManager)shared
{
  if (qword_27DE603B0 != -1)
  {
    swift_once();
  }

  v3 = qword_27DE60558;

  return v3;
}

- (void)activateConnectionWithSession:(id)a3 with:(id)a4 pickerSettings:(id)a5 for:(id)a6 completionHandler:(id)a7
{
  v11 = _Block_copy(a7);
  sub_2369DFC4C(0, &qword_27DE605B8, off_278A01740);
  v12 = sub_2369E19E8();
  if (a6)
  {
    v13 = sub_2369E1998();
    a6 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = a3;
  v17 = a5;
  v18 = self;
  sub_2369DA794(v16, v12, v17, v13, a6, sub_2369DFE64, v15);
}

- (void)failWithAccessory:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_2369DBC64(v8, sub_2369DFE64, v7);
}

- (void)updateWithAccessory:(id)a3 options:(unint64_t)a4 for:(id)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  if (a5)
  {
    v11 = sub_2369E1998();
    a5 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = a3;
  v15 = self;
  sub_2369DBE80(v14, a4, v11, a5, sub_2369DFE64, v13);
}

- (void)updatePickerWith:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_2369DFC4C(0, &qword_27DE605B8, off_278A01740);
  v6 = sub_2369E19E8();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_2369DC1D0(v6, sub_2369DFE64, v7);
}

- (void)finishDiscoveryWith:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_2369DC5F8(sub_2369DFBA4, v5);
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ASUIClientManager();
  [(ASUIClientManager *)&v5 dealloc];
}

@end