@interface CKDPIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)a3;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPIdentifier

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (id)typeAsString:(int)a3
{
  if ((a3 - 1) >= 8)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_1E70BF0C8[a3 - 1];
  }

  return v4;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"record"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"device"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"subscription"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"share"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(v3, v9, @"comment"))
  {
    v6 = 5;
  }

  else if (objc_msgSend_isEqualToString_(v3, v10, @"recordZone"))
  {
    v6 = 6;
  }

  else if (objc_msgSend_isEqualToString_(v3, v11, @"user"))
  {
    v6 = 7;
  }

  else if (objc_msgSend_isEqualToString_(v3, v12, @"mergeableValue"))
  {
    v6 = 8;
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
  v11.super_class = CKDPIdentifier;
  v4 = [(CKDPIdentifier *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  v6 = v4;
  name = self->_name;
  if (name)
  {
    objc_msgSend_setObject_forKey_(v4, v5, name, @"name");
  }

  if (*&self->_has)
  {
    v8 = self->_type - 1;
    if (v8 >= 8)
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"(unknown: %i)", self->_type);
    }

    else
    {
      v9 = off_1E70BF0C8[v8];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v9, @"type");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  name = self->_name;
  if (name)
  {
    v7 = v4;
    objc_msgSend_setName_(v4, v5, name);
    v4 = v7;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_type;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_name, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 16) = self->_type;
    *(v10 + 20) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_8;
  }

  name = self->_name;
  v9 = v4[1];
  if (name | v9)
  {
    if (!objc_msgSend_isEqual_(name, v7, v9))
    {
      goto LABEL_8;
    }
  }

  v10 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_type == *(v4 + 4))
    {
      v10 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_name, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_type;
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 1);
  if (v6)
  {
    v7 = v4;
    objc_msgSend_setName_(self, v5, v6);
    v4 = v7;
  }

  if (*(v4 + 20))
  {
    self->_type = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

@end