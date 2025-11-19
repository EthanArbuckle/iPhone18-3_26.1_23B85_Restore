@interface CKDPRecordZoneIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)databaseTypeAsString:(int)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDatabaseType:(id)a3;
- (int)databaseType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (id)databaseTypeAsString:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_1E70BF120[a3 - 1];
  }

  return v4;
}

- (int)StringAsDatabaseType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"privateDB"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"publicDB"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"sharedDB"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"orgDB"))
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_ownerIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    databaseType = self->_databaseType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  value = self->_value;
  v8 = v4;
  if (value)
  {
    objc_msgSend_setValue_(v4, v5, value);
    v4 = v8;
  }

  ownerIdentifier = self->_ownerIdentifier;
  if (ownerIdentifier)
  {
    objc_msgSend_setOwnerIdentifier_(v8, v5, ownerIdentifier);
    v4 = v8;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_databaseType;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_value, v11, a3);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_ownerIdentifier, v14, a3);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_databaseType;
    *(v10 + 32) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_10;
  }

  value = self->_value;
  v9 = v4[3];
  if (value | v9)
  {
    if (!objc_msgSend_isEqual_(value, v7, v9))
    {
      goto LABEL_10;
    }
  }

  ownerIdentifier = self->_ownerIdentifier;
  v11 = v4[2];
  if (ownerIdentifier | v11)
  {
    if (!objc_msgSend_isEqual_(ownerIdentifier, v7, v11))
    {
      goto LABEL_10;
    }
  }

  v12 = (v4[4] & 1) == 0;
  if (*&self->_has)
  {
    if ((v4[4] & 1) != 0 && self->_databaseType == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  value = self->_value;
  v6 = *(v4 + 3);
  v9 = v4;
  if (value)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(value, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setValue_(self, v4, v6);
  }

  v4 = v9;
LABEL_7:
  ownerIdentifier = self->_ownerIdentifier;
  v8 = *(v4 + 2);
  if (ownerIdentifier)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    ownerIdentifier = objc_msgSend_mergeFrom_(ownerIdentifier, v4, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    ownerIdentifier = objc_msgSend_setOwnerIdentifier_(self, v4, v8);
  }

  v4 = v9;
LABEL_13:
  if (*(v4 + 32))
  {
    self->_databaseType = *(v4 + 2);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](ownerIdentifier, v4);
}

@end