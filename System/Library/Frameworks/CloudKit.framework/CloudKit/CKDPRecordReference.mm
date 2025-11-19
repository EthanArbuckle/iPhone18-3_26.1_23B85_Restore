@interface CKDPRecordReference
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

@implementation CKDPRecordReference

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
  if ((a3 - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_1E70BF108[a3 - 1];
  }

  return v4;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"owning"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"weak"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"validating"))
  {
    v6 = 3;
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
  v11.super_class = CKDPRecordReference;
  v4 = [(CKDPRecordReference *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  if (*&self->_has)
  {
    v7 = self->_type - 1;
    if (v7 >= 3)
    {
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"(unknown: %i)", self->_type);
    }

    else
    {
      v8 = off_1E70BF108[v7];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v8, @"type");
  }

  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    v10 = objc_msgSend_dictionaryRepresentation(recordIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"recordIdentifier");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_recordIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_type;
    *(v4 + 20) |= 1u;
  }

  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    v7 = v4;
    objc_msgSend_setRecordIdentifier_(v4, v5, recordIdentifier);
    v4 = v7;
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
    *(v10 + 16) = self->_type;
    *(v10 + 20) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_recordIdentifier, v11, a3);
  v14 = v12[1];
  v12[1] = v13;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_9;
  }

  v8 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_type != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    isEqual = 0;
    goto LABEL_10;
  }

  recordIdentifier = self->_recordIdentifier;
  v10 = v4[1];
  if (recordIdentifier | v10)
  {
    isEqual = objc_msgSend_isEqual_(recordIdentifier, v7, v10);
  }

  else
  {
    isEqual = 1;
  }

LABEL_10:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  return objc_msgSend_hash(self->_recordIdentifier, a2, v2) ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    self->_type = v4[4];
    *&self->_has |= 1u;
  }

  recordIdentifier = self->_recordIdentifier;
  v7 = v5[1];
  if (recordIdentifier)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    recordIdentifier = objc_msgSend_mergeFrom_(recordIdentifier, v5, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    recordIdentifier = objc_msgSend_setRecordIdentifier_(self, v5, v7);
  }

  v5 = v8;
LABEL_9:

  MEMORY[0x1EEE66BB8](recordIdentifier, v5);
}

@end