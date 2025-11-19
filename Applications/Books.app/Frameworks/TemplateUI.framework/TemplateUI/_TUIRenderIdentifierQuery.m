@interface _TUIRenderIdentifierQuery
- (BOOL)matchesUUID:(id)a3 uid:(id)a4;
- (id)queryMatchedWithUUID:(id)a3 uid:(id)a4;
@end

@implementation _TUIRenderIdentifierQuery

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

- (id)queryMatchedWithUUID:(id)a3 uid:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_TUIRenderIdentifierQuery);
  [(_TUIRenderIdentifierQuery *)v8 setIdentifier:self->_identifier];
  [(_TUIRenderIdentifierQuery *)v8 setUUID:v7];

  [(_TUIRenderIdentifierQuery *)v8 setUid:v6];
  [(_TUIRenderIdentifierQuery *)v8 setMatchedUUID:1];

  return v8;
}

@end