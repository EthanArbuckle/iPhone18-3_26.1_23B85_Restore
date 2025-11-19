@interface SessionManager
- (void)flushWithCallbackQueue:(id)a3 completion:(id)a4;
@end

@implementation SessionManager

- (void)flushWithCallbackQueue:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = sub_1B69D72B0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v11 = *self->accessQueue;
  v10 = *self->accessGroup;
  v12 = swift_allocObject();
  v13 = *self->processorManager;
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = a3;
  v14[4] = v9;
  v14[5] = v8;
  v15 = a3;

  sub_1B698BF94(v9);
  sub_1B69877A4(v11, sub_1B6A0BE34, v14);
  sub_1B69A3100(v9);
}

@end