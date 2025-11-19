@interface _WKGeolocationPosition
+ (id)positionWithLocation:(id)a3;
- (void)dealloc;
@end

@implementation _WKGeolocationPosition

+ (id)positionWithLocation:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  MEMORY[0x19EB0B460](v15, a3);
  v3 = API::Object::newObject(0x80uLL, 67);
  v4 = API::Object::Object(v3);
  *v4 = &unk_1F110E560;
  v6 = v15[5];
  v5 = v15[6];
  *(v4 + 5) = v15[4];
  *(v4 + 6) = v6;
  *(v4 + 7) = v5;
  v8 = v15[2];
  v7 = v15[3];
  v9 = v15[1];
  *(v4 + 1) = v15[0];
  *(v4 + 2) = v9;
  *(v4 + 3) = v8;
  *(v4 + 4) = v7;
  v10 = *(v4 + 1);
  if (!v10)
  {
    v13 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = v10;
    v13 = *(v3 + 1);
LABEL_7:
    CFRelease(v13);
    return v10;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    (**self->_geolocationPosition.m_storage.data)();
    v4.receiver = self;
    v4.super_class = _WKGeolocationPosition;
    [(_WKGeolocationPosition *)&v4 dealloc];
  }
}

@end