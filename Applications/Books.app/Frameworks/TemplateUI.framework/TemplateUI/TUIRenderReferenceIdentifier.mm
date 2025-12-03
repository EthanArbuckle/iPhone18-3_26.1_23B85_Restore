@interface TUIRenderReferenceIdentifier
- (BOOL)isEqual:(id)equal;
- (TUIRenderReferenceIdentifier)initWithUUID:(id)d uid:(id)uid refId:(id)id refInstance:(id)instance;
- (unint64_t)hash;
@end

@implementation TUIRenderReferenceIdentifier

- (TUIRenderReferenceIdentifier)initWithUUID:(id)d uid:(id)uid refId:(id)id refInstance:(id)instance
{
  dCopy = d;
  uidCopy = uid;
  idCopy = id;
  instanceCopy = instance;
  v24.receiver = self;
  v24.super_class = TUIRenderReferenceIdentifier;
  v14 = [(TUIRenderReferenceIdentifier *)&v24 init];
  if (v14)
  {
    v15 = [dCopy copy];
    UUID = v14->_UUID;
    v14->_UUID = v15;

    v17 = [uidCopy copy];
    uid = v14->_uid;
    v14->_uid = v17;

    v19 = [idCopy copy];
    refId = v14->_refId;
    v14->_refId = v19;

    v21 = [instanceCopy copy];
    refInstance = v14->_refInstance;
    v14->_refInstance = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
    }

    else
    {
      v6 = objc_opt_class();
      v7 = TUIDynamicCast(v6, equalCopy);
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    UUID = self->_UUID;
    if (UUID == v7[1] || [(NSUUID *)UUID isEqual:?])
    {
      uid = self->_uid;
      if (uid == v7[2] || [(NSString *)uid isEqualToString:?])
      {
        refId = self->_refId;
        if (refId == v7[3] || [(NSString *)refId isEqualToString:?])
        {
          refInstance = self->_refInstance;
          if (refInstance == v7[4])
          {
            v8 = 1;
          }

          else
          {
            v8 = [(NSString *)refInstance isEqualToString:?];
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v8 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v8 = 0;
LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_UUID hash];
  v4 = [(NSString *)self->_uid hash]^ v3;
  v5 = [(NSString *)self->_refId hash];
  return v4 ^ v5 ^ [(NSString *)self->_refInstance hash];
}

@end