@interface _TUIRenderIdentifierQuery
- (BOOL)matchesUUID:(id)d uid:(id)uid;
- (id)queryMatchedWithUUID:(id)d uid:(id)uid;
@end

@implementation _TUIRenderIdentifierQuery

- (BOOL)matchesUUID:(id)d uid:(id)uid
{
  dCopy = d;
  uidCopy = uid;
  if (self->_matchedUUID)
  {
    v8 = 1;
  }

  else
  {
    UUID = self->_UUID;
    if (UUID)
    {
      v10 = UUID == dCopy;
    }

    else
    {
      v10 = 1;
    }

    if (v10 || [(NSUUID *)UUID isEqual:dCopy])
    {
      uid = self->_uid;
      v8 = 1;
      if (uid && uid != uidCopy)
      {
        v8 = [(NSString *)uid isEqualToString:uidCopy];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)queryMatchedWithUUID:(id)d uid:(id)uid
{
  uidCopy = uid;
  dCopy = d;
  v8 = objc_alloc_init(_TUIRenderIdentifierQuery);
  [(_TUIRenderIdentifierQuery *)v8 setIdentifier:self->_identifier];
  [(_TUIRenderIdentifierQuery *)v8 setUUID:dCopy];

  [(_TUIRenderIdentifierQuery *)v8 setUid:uidCopy];
  [(_TUIRenderIdentifierQuery *)v8 setMatchedUUID:1];

  return v8;
}

@end