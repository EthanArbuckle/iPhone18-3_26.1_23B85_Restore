@interface _WKFrameHandle
- (BOOL)isEqual:(id)a3;
- (_WKFrameHandle)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _WKFrameHandle

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = _WKFrameHandle;
    [(_WKFrameHandle *)&v4 dealloc];
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(isType) = 1;
  }

  else if (a3)
  {
    isType = WTF::ObjCTypeCastTraits<_WKFrameHandle>::isType();
    if (isType)
    {
      v6 = *&self->_frameHandle.m_storage.data[16];
      v7 = *(a3 + 3);
      v8 = v6 != 0;
      v9 = v7 != 0;
      v10 = v6 == v7;
      if (v8 && v9)
      {
        LOBYTE(isType) = v10;
      }

      else
      {
        LOBYTE(isType) = v8 ^ v9 ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(isType) = 0;
  }

  return isType;
}

- (_WKFrameHandle)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = _WKFrameHandle;
  v4 = [(_WKFrameHandle *)&v14 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"frameID"];
    v6 = WTF::dynamic_objc_cast<NSNumber>(v5);
    if (v6)
    {
      v7 = v6;
      v8 = v6;
      v9 = [v7 unsignedLongLongValue];
      v10 = v9;
      if (v9 - 1 >= 0xFFFFFFFFFFFFFFFELL)
      {

        v4 = 0;
      }

      else
      {
        v11 = API::Object::apiObjectsUnderConstruction(v9);
        v17 = [(_WKFrameHandle *)v4 _apiObject];
        v16 = v4;
        WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v11, &v17, &v16, v15);
        v12 = API::Object::Object([(_WKFrameHandle *)v4 _apiObject]);
        *v12 = &unk_1F10E7C40;
        *(v12 + 2) = v10;
        *(v12 + 24) = 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&self->_frameHandle.m_storage.data[16]];

  [a3 encodeObject:v4 forKey:@"frameID"];
}

@end