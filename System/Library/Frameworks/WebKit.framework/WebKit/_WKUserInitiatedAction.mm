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
    v5 = [(_WKUserInitiatedAction *)v3 _apiObject];
    v11 = v3;
    v12 = v5;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v12, &v11, v10);
    v6 = [(_WKUserInitiatedAction *)v3 _apiObject];
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    v7 = API::Object::Object(v6);
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
  v6 = [(_WKUserInitiatedAction *)self isConsumed];
  v7 = "NO";
  if (v6)
  {
    v7 = "YES";
  }

  return [v3 stringWithFormat:@"<%@: %p; consumed = %s>", v5, self, v7];
}

@end