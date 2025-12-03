@interface ASUIClientManager
+ (_TtC17AccessorySetupKit17ASUIClientManager)shared;
- (void)activateConnectionWithSession:(id)session with:(id)with pickerSettings:(id)settings for:(id)for completionHandler:(id)handler;
- (void)dealloc;
- (void)failWithAccessory:(id)accessory completionHandler:(id)handler;
- (void)finishDiscoveryWith:(id)with;
- (void)updatePickerWith:(id)with completionHandler:(id)handler;
- (void)updateWithAccessory:(id)accessory options:(unint64_t)options for:(id)for completionHandler:(id)handler;
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

- (void)activateConnectionWithSession:(id)session with:(id)with pickerSettings:(id)settings for:(id)for completionHandler:(id)handler
{
  v11 = _Block_copy(handler);
  sub_2369DFC4C(0, &qword_27DE605B8, off_278A01740);
  v12 = sub_2369E19E8();
  if (for)
  {
    v13 = sub_2369E1998();
    for = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  sessionCopy = session;
  settingsCopy = settings;
  selfCopy = self;
  sub_2369DA794(sessionCopy, v12, settingsCopy, v13, for, sub_2369DFE64, v15);
}

- (void)failWithAccessory:(id)accessory completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_2369DBC64(accessoryCopy, sub_2369DFE64, v7);
}

- (void)updateWithAccessory:(id)accessory options:(unint64_t)options for:(id)for completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  if (for)
  {
    v11 = sub_2369E1998();
    for = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_2369DBE80(accessoryCopy, options, v11, for, sub_2369DFE64, v13);
}

- (void)updatePickerWith:(id)with completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_2369DFC4C(0, &qword_27DE605B8, off_278A01740);
  v6 = sub_2369E19E8();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_2369DC1D0(v6, sub_2369DFE64, v7);
}

- (void)finishDiscoveryWith:(id)with
{
  v4 = _Block_copy(with);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_2369DC5F8(sub_2369DFBA4, v5);
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ASUIClientManager();
  [(ASUIClientManager *)&v5 dealloc];
}

@end