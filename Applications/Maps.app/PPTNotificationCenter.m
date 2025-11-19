@interface PPTNotificationCenter
+ (void)addOnceObserverForName:(id)a3 object:(id)a4 usingBlock:(id)a5;
+ (void)postNotificationIfNeededWithName:(id)a3 object:(id)a4 userInfo:(id)a5;
@end

@implementation PPTNotificationCenter

+ (void)addOnceObserverForName:(id)a3 object:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 isEnabled];
  if (v10 && v11)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_10074FC6C;
    v23 = sub_10074FC7C;
    v24 = 0;
    v12 = +[NSNotificationCenter defaultCenter];
    v13 = +[NSOperationQueue mainQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10074FC84;
    v16[3] = &unk_101638E90;
    v18 = &v19;
    v17 = v10;
    v14 = [v12 addObserverForName:v8 object:v9 queue:v13 usingBlock:v16];
    v15 = v20[5];
    v20[5] = v14;

    _Block_object_dispose(&v19, 8);
  }
}

+ (void)postNotificationIfNeededWithName:(id)a3 object:(id)a4 userInfo:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([a1 isEnabled])
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:v11 object:v8 userInfo:v9];
  }
}

@end