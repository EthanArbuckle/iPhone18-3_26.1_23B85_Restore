@interface MusicStoreFlowScriptInterface
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (MusicStoreFlowScriptCapabilitiesController)capabilitiesController;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)setCapabilitiesController:(id)controller;
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

- (void)setCapabilitiesController:(id)controller
{
  v3 = [NSString stringWithFormat:@"%@ is readonly", @"musicCapabilitiesController"];

  [WebScriptObject throwException:v3];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [qword_100011780 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MusicStoreFlowScriptInterface;
    return objc_msgSendSuper2(&v6, "webScriptNameForKeyName:", name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2();
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MusicStoreFlowScriptInterface;
    return objc_msgSendSuper2(&v6, "webScriptNameForSelector:", selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = MusicStoreFlowScriptInterface;
  scriptAttributeKeys = [(MusicStoreFlowScriptInterface *)&v4 scriptAttributeKeys];
  [scriptAttributeKeys addObjectsFromArray:{objc_msgSend(qword_100011780, "allKeys")}];
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100011780 = &off_10000CAA0;
  }
}

@end