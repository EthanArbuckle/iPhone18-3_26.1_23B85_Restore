@interface PPTNotificationCenter
+ (void)addOnceObserverForName:(id)name object:(id)object usingBlock:(id)block;
+ (void)postNotificationIfNeededWithName:(id)name object:(id)object userInfo:(id)info;
@end

@implementation PPTNotificationCenter

+ (void)addOnceObserverForName:(id)name object:(id)object usingBlock:(id)block
{
  nameCopy = name;
  objectCopy = object;
  blockCopy = block;
  isEnabled = [self isEnabled];
  if (blockCopy && isEnabled)
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
    v17 = blockCopy;
    v14 = [v12 addObserverForName:nameCopy object:objectCopy queue:v13 usingBlock:v16];
    v15 = v20[5];
    v20[5] = v14;

    _Block_object_dispose(&v19, 8);
  }
}

+ (void)postNotificationIfNeededWithName:(id)name object:(id)object userInfo:(id)info
{
  nameCopy = name;
  objectCopy = object;
  infoCopy = info;
  if ([self isEnabled])
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:nameCopy object:objectCopy userInfo:infoCopy];
  }
}

@end