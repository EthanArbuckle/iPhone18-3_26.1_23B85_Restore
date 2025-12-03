@interface CKDPRecordZoneIdentifier
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)databaseTypeAsString:(int)string;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDatabaseType:(id)type;
- (int)databaseType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordZoneIdentifier

- (int)databaseType
{
  if (*&self->_has)
  {
    return self->_databaseType;
  }

  else
  {
    return 1;
  }
}

- (id)databaseTypeAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_1E70BF120[string - 1];
  }

  return v4;
}

- (int)StringAsDatabaseType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"privateDB"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"publicDB"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"sharedDB"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v8, @"orgDB"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKDPRecordZoneIdentifier;
  v4 = [(CKDPRecordZoneIdentifier *)&v11 description];
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

  ownerIdentifier = self->_ownerIdentifier;
  if (ownerIdentifier)
  {
    v11 = objc_msgSend_dictionaryRepresentation(ownerIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"ownerIdentifier");
  }

  if (*&self->_has)
  {
    v13 = self->_databaseType - 1;
    if (v13 >= 4)
    {
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"(unknown: %i)", self->_databaseType);
    }

    else
    {
      v14 = off_1E70BF120[v13];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v14, @"databaseType");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_ownerIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    databaseType = self->_databaseType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
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

  ownerIdentifier = self->_ownerIdentifier;
  if (ownerIdentifier)
  {
    objc_msgSend_setOwnerIdentifier_(v8, v5, ownerIdentifier);
    toCopy = v8;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_databaseType;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_value, v11, zone);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_ownerIdentifier, v14, zone);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_databaseType;
    *(v10 + 32) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_10;
  }

  value = self->_value;
  v9 = equalCopy[3];
  if (value | v9)
  {
    if (!objc_msgSend_isEqual_(value, v7, v9))
    {
      goto LABEL_10;
    }
  }

  ownerIdentifier = self->_ownerIdentifier;
  v11 = equalCopy[2];
  if (ownerIdentifier | v11)
  {
    if (!objc_msgSend_isEqual_(ownerIdentifier, v7, v11))
    {
      goto LABEL_10;
    }
  }

  v12 = (equalCopy[4] & 1) == 0;
  if (*&self->_has)
  {
    if ((equalCopy[4] & 1) != 0 && self->_databaseType == *(equalCopy + 2))
    {
      v12 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_value, a2, v2);
  v7 = objc_msgSend_hash(self->_ownerIdentifier, v5, v6);
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_databaseType;
  }

  else
  {
    v8 = 0;
  }

  return v7 ^ v4 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  value = self->_value;
  v6 = *(fromCopy + 3);
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
  ownerIdentifier = self->_ownerIdentifier;
  v8 = *(fromCopy + 2);
  if (ownerIdentifier)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    ownerIdentifier = objc_msgSend_mergeFrom_(ownerIdentifier, fromCopy, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    ownerIdentifier = objc_msgSend_setOwnerIdentifier_(self, fromCopy, v8);
  }

  fromCopy = v9;
LABEL_13:
  if (*(fromCopy + 32))
  {
    self->_databaseType = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](ownerIdentifier, fromCopy);
}

@end