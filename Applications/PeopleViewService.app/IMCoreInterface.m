@interface IMCoreInterface
+ (id)checkWithWait:(id)a3 service:(id)a4;
+ (id)logHandle;
+ (void)checkAndClear:(id)a3 service:(id)a4;
+ (void)clearUnreadFor:(id)a3 andPhone:(id)a4;
- (IMCoreInterface)init;
- (void)grabUnreadFor:(id)a3 completionHandler:(id)a4;
@end

@implementation IMCoreInterface

+ (id)logHandle
{
  if (qword_1000264B8[0] != -1)
  {
    sub_10001531C();
  }

  v3 = qword_1000264B0;

  return v3;
}

+ (void)checkAndClear:(id)a3 service:(id)a4
{
  v12 = a4;
  v5 = a4;
  v6 = a3;
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v11 = v6;
  v8 = [NSArray arrayWithObjects:&v11 count:1];

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.people.checkAndClear", v9);
  IMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOS();
}

+ (void)clearUnreadFor:(id)a3 andPhone:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (v6 && [v6 length])
  {
    [IMCoreInterface checkAndClear:v6 service:IMSPIiMessageService];
  }

  if (v5 && [v5 length])
  {
    [IMCoreInterface checkAndClear:v5 service:IMSPIiMessageService];
    [IMCoreInterface checkAndClear:v5 service:IMSPISMSService];
  }
}

+ (id)checkWithWait:(id)a3 service:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [AAFPromise alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002964;
  v12[3] = &unk_100020DE0;
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  v10 = [v7 initWithBlock:v12];

  return v10;
}

- (IMCoreInterface)init
{
  v3.receiver = self;
  v3.super_class = IMCoreInterface;
  return [(IMCoreInterface *)&v3 init];
}

- (void)grabUnreadFor:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v20 = a4;
  v6 = [[AAFPromise alloc] initWithValue:&__NSArray0__struct];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v23 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v23)
  {
    v22 = *v35;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v7);
        v10 = [v8 then];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100003060;
        v33[3] = &unk_100020E08;
        v33[4] = v9;
        v26 = v10;
        v25 = (*(v10 + 16))(v10, v33);
        v11 = [v25 then];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100003170;
        v32[3] = &unk_100020E08;
        v32[4] = v9;
        v24 = (v11)[2](v11, v32);
        v12 = [v24 then];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100003280;
        v31[3] = &unk_100020E08;
        v31[4] = v9;
        v13 = (v12)[2](v12, v31);
        v14 = [v13 then];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10000338C;
        v30[3] = &unk_100020E08;
        v30[4] = v9;
        v15 = (v14)[2](v14, v30);
        v16 = [v15 then];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100003498;
        v29[3] = &unk_100020E08;
        v29[4] = v9;
        v6 = (v16)[2](v16, v29);

        v7 = v7 + 1;
        v8 = v6;
      }

      while (v23 != v7);
      v23 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v23);
  }

  v17 = [v6 then];
  v18 = (v17)[2](v17, &stru_100020E48);

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000037C4;
  v27[3] = &unk_100020E98;
  v28 = v20;
  v19 = v20;
  [v18 onComplete:v27];
}

@end