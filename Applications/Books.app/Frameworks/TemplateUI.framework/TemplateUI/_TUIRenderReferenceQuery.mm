@interface _TUIRenderReferenceQuery
- (BOOL)matchesRefId:(id)id refInstance:(id)instance identifier:(id)identifier;
- (BOOL)matchesUUID:(id)d uid:(id)uid;
- (id)queryMatchedWithUUID:(id)d uid:(id)uid;
@end

@implementation _TUIRenderReferenceQuery

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

- (BOOL)matchesRefId:(id)id refInstance:(id)instance identifier:(id)identifier
{
  idCopy = id;
  instanceCopy = instance;
  identifierCopy = identifier;
  refId = self->_refId;
  if (refId)
  {
    v12 = refId == idCopy;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || [(NSString *)refId isEqualToString:idCopy])
  {
    refInstance = self->_refInstance;
    v14 = 1;
    if (refInstance && refInstance != instanceCopy)
    {
      v14 = [(NSString *)refInstance isEqualToString:instanceCopy];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)queryMatchedWithUUID:(id)d uid:(id)uid
{
  uidCopy = uid;
  dCopy = d;
  v8 = objc_alloc_init(_TUIRenderReferenceQuery);
  [(_TUIRenderReferenceQuery *)v8 setRefId:self->_refId];
  [(_TUIRenderReferenceQuery *)v8 setRefInstance:self->_refInstance];
  [(_TUIRenderReferenceQuery *)v8 setUUID:dCopy];

  [(_TUIRenderReferenceQuery *)v8 setUid:uidCopy];
  [(_TUIRenderReferenceQuery *)v8 setMatchedUUID:1];

  return v8;
}

@end