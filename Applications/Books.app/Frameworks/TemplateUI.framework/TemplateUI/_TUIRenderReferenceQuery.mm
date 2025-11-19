@interface _TUIRenderReferenceQuery
- (BOOL)matchesRefId:(id)a3 refInstance:(id)a4 identifier:(id)a5;
- (BOOL)matchesUUID:(id)a3 uid:(id)a4;
- (id)queryMatchedWithUUID:(id)a3 uid:(id)a4;
@end

@implementation _TUIRenderReferenceQuery

- (BOOL)matchesUUID:(id)a3 uid:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_matchedUUID)
  {
    v8 = 1;
  }

  else
  {
    UUID = self->_UUID;
    if (UUID)
    {
      v10 = UUID == v6;
    }

    else
    {
      v10 = 1;
    }

    if (v10 || [(NSUUID *)UUID isEqual:v6])
    {
      uid = self->_uid;
      v8 = 1;
      if (uid && uid != v7)
      {
        v8 = [(NSString *)uid isEqualToString:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)matchesRefId:(id)a3 refInstance:(id)a4 identifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  refId = self->_refId;
  if (refId)
  {
    v12 = refId == v8;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || [(NSString *)refId isEqualToString:v8])
  {
    refInstance = self->_refInstance;
    v14 = 1;
    if (refInstance && refInstance != v9)
    {
      v14 = [(NSString *)refInstance isEqualToString:v9];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)queryMatchedWithUUID:(id)a3 uid:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_TUIRenderReferenceQuery);
  [(_TUIRenderReferenceQuery *)v8 setRefId:self->_refId];
  [(_TUIRenderReferenceQuery *)v8 setRefInstance:self->_refInstance];
  [(_TUIRenderReferenceQuery *)v8 setUUID:v7];

  [(_TUIRenderReferenceQuery *)v8 setUid:v6];
  [(_TUIRenderReferenceQuery *)v8 setMatchedUUID:1];

  return v8;
}

@end