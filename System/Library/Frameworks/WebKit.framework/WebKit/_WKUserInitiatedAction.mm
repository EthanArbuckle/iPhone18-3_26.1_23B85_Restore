@interface _WKUserInitiatedAction
- (NSString)description;
- (_WKUserInitiatedAction)init;
- (void)dealloc;
@end

@implementation _WKUserInitiatedAction

- (_WKUserInitiatedAction)init
{
  v9.receiver = self;
  v9.super_class = _WKUserInitiatedAction;
  v2 = [(_WKUserInitiatedAction *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    _apiObject = [(_WKUserInitiatedAction *)v3 _apiObject];
    v11 = v3;
    v12 = _apiObject;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v12, &v11, v10);
    _apiObject2 = [(_WKUserInitiatedAction *)v3 _apiObject];
    *_apiObject2 = 0u;
    _apiObject2[1] = 0u;
    _apiObject2[2] = 0u;
    _apiObject2[3] = 0u;
    v7 = API::Object::Object(_apiObject2);
    *v7 = &unk_1F10FC318;
    *(v7 + 16) = 0;
    *(v7 + 32) = 0;
    *(v7 + 48) = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = _WKUserInitiatedAction;
    [(_WKUserInitiatedAction *)&v4 dealloc];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  isConsumed = [(_WKUserInitiatedAction *)self isConsumed];
  v7 = "NO";
  if (isConsumed)
  {
    v7 = "YES";
  }

  return [v3 stringWithFormat:@"<%@: %p; consumed = %s>", v5, self, v7];
}

@end