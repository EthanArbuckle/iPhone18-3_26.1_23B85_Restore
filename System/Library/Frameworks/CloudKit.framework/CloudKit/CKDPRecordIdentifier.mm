@interface CKDPRecordIdentifier
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordIdentifier

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKDPRecordIdentifier;
  v4 = [(CKDPRecordIdentifier *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  value = self->_value;
  if (value)
  {
    v8 = objc_msgSend_dictionaryRepresentation(value, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"value");
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v11 = objc_msgSend_dictionaryRepresentation(zoneIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"zoneIdentifier");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  value = self->_value;
  v8 = toCopy;
  if (value)
  {
    objc_msgSend_setValue_(toCopy, v5, value);
    toCopy = v8;
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v8, v5, zoneIdentifier);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_value, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((value = self->_value, v9 = equalCopy[1], !(value | v9)) || objc_msgSend_isEqual_(value, v7, v9)))
  {
    zoneIdentifier = self->_zoneIdentifier;
    v11 = equalCopy[2];
    if (zoneIdentifier | v11)
    {
      isEqual = objc_msgSend_isEqual_(zoneIdentifier, v7, v11);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  value = self->_value;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (value)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(value, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setValue_(self, fromCopy, v6);
  }

  fromCopy = v9;
LABEL_7:
  zoneIdentifier = self->_zoneIdentifier;
  v8 = fromCopy[2];
  if (zoneIdentifier)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    zoneIdentifier = objc_msgSend_mergeFrom_(zoneIdentifier, fromCopy, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    zoneIdentifier = objc_msgSend_setZoneIdentifier_(self, fromCopy, v8);
  }

  fromCopy = v9;
LABEL_13:

  MEMORY[0x1EEE66BB8](zoneIdentifier, fromCopy);
}

@end