@interface CKCodeProto2ProtectedEnvelope
- (BOOL)isEqual:(id)a3;
- (id)contentsAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContents:(id)a3;
- (int)contents;
- (unint64_t)hash;
- (void)clearOneofValuesForContents;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setEncrypted:(id)a3;
- (void)setValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKCodeProto2ProtectedEnvelope

- (void)setEncrypted:(id)a3
{
  v4 = a3;
  objc_msgSend_clearOneofValuesForContents(self, v5, v6);
  *&self->_has |= 1u;
  self->_contents = 1;
  encrypted = self->_encrypted;
  self->_encrypted = v4;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  objc_msgSend_clearOneofValuesForContents(self, v5, v6);
  *&self->_has |= 1u;
  self->_contents = 2;
  value = self->_value;
  self->_value = v4;
}

- (int)contents
{
  if (*&self->_has)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (id)contentsAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_1E70BE668[a3];
  }

  return v4;
}

- (int)StringAsContents:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"PBUNSET"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"encrypted"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"value"))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearOneofValuesForContents
{
  *&self->_has &= ~1u;
  self->_contents = 0;
  encrypted = self->_encrypted;
  self->_encrypted = 0;

  value = self->_value;
  self->_value = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKCodeProto2ProtectedEnvelope;
  v4 = [(CKCodeProto2ProtectedEnvelope *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  v6 = v4;
  encrypted = self->_encrypted;
  if (encrypted)
  {
    objc_msgSend_setObject_forKey_(v4, v5, encrypted, @"encrypted");
  }

  value = self->_value;
  if (value)
  {
    v9 = objc_msgSend_dictionaryRepresentation(value, v5, encrypted);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"value");
  }

  if (*&self->_has)
  {
    contents = self->_contents;
    if (contents >= 3)
    {
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"(unknown: %i)", self->_contents);
    }

    else
    {
      v12 = off_1E70BE668[contents];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v12, @"contents");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encrypted)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_contents;
    *(v4 + 32) |= 1u;
  }

  encrypted = self->_encrypted;
  v8 = v4;
  if (encrypted)
  {
    objc_msgSend_setEncrypted_(v4, v5, encrypted);
    v4 = v8;
  }

  value = self->_value;
  if (value)
  {
    objc_msgSend_setValue_(v8, v5, value);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 8) = self->_contents;
    *(v10 + 32) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_encrypted, v11, a3);
  v14 = v12[2];
  v12[2] = v13;

  v16 = objc_msgSend_copyWithZone_(self->_value, v15, a3);
  v17 = v12[3];
  v12[3] = v16;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_11;
  }

  v8 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((v4[4] & 1) == 0 || self->_contents != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (v4[4])
  {
LABEL_11:
    isEqual = 0;
    goto LABEL_12;
  }

  encrypted = self->_encrypted;
  v10 = v4[2];
  if (encrypted | v10 && !objc_msgSend_isEqual_(encrypted, v7, v10))
  {
    goto LABEL_11;
  }

  value = self->_value;
  v12 = v4[3];
  if (value | v12)
  {
    isEqual = objc_msgSend_isEqual_(value, v7, v12);
  }

  else
  {
    isEqual = 1;
  }

LABEL_12:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_contents;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_encrypted, a2, v2) ^ v4;
  return v5 ^ objc_msgSend_hash(self->_value, v6, v7);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 32))
  {
    self->_contents = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v6 = *(v4 + 2);
  v9 = v4;
  if (v6)
  {
    objc_msgSend_setEncrypted_(self, v4, v6);
    v5 = v9;
  }

  value = self->_value;
  v8 = *(v5 + 3);
  if (value)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    value = objc_msgSend_mergeFrom_(value, v5, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    value = objc_msgSend_setValue_(self, v5, v8);
  }

  v5 = v9;
LABEL_11:

  MEMORY[0x1EEE66BB8](value, v5);
}

@end