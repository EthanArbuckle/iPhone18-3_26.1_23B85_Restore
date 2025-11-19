@interface MusicStoreFlowScriptInterface
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (MusicStoreFlowScriptCapabilitiesController)capabilitiesController;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)setCapabilitiesController:(id)a3;
@end

@implementation MusicStoreFlowScriptInterface

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MusicStoreFlowScriptInterface;
  [(MusicStoreFlowScriptInterface *)&v3 dealloc];
}

- (MusicStoreFlowScriptCapabilitiesController)capabilitiesController
{
  [(MusicStoreFlowScriptInterface *)self lock];
  capabilitiesController = self->_capabilitiesController;
  v4 = capabilitiesController;
  if (!capabilitiesController)
  {
    v5 = objc_alloc_init(MusicStoreFlowScriptCapabilitiesController);
    self->_capabilitiesController = v5;
    [(MusicStoreFlowScriptCapabilitiesController *)v5 setVisible:1];
    v4 = self->_capabilitiesController;
  }

  v6 = v4;
  [(MusicStoreFlowScriptInterface *)self unlock];
  if (!capabilitiesController)
  {
    [(MusicStoreFlowScriptInterface *)self checkInScriptObject:v6];
  }

  return v6;
}

- (void)setCapabilitiesController:(id)a3
{
  v3 = [NSString stringWithFormat:@"%@ is readonly", @"musicCapabilitiesController"];

  [WebScriptObject throwException:v3];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [qword_100011780 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MusicStoreFlowScriptInterface;
    return objc_msgSendSuper2(&v6, "webScriptNameForKeyName:", a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2();
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MusicStoreFlowScriptInterface;
    return objc_msgSendSuper2(&v6, "webScriptNameForSelector:", a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = MusicStoreFlowScriptInterface;
  v2 = [(MusicStoreFlowScriptInterface *)&v4 scriptAttributeKeys];
  [v2 addObjectsFromArray:{objc_msgSend(qword_100011780, "allKeys")}];
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100011780 = &off_10000CAA0;
  }
}

@end