@interface CKDPOneTimeFullTokenInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPOneTimeFullTokenInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKDPOneTimeFullTokenInfo;
  v4 = [(CKDPOneTimeFullTokenInfo *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  v6 = v4;
  sharingKeyBytes = self->_sharingKeyBytes;
  if (sharingKeyBytes)
  {
    objc_msgSend_setObject_forKey_(v4, v5, sharingKeyBytes, @"sharingKeyBytes");
  }

  if (*&self->_has)
  {
    v8 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, self->_sharingKeyType);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"sharingKeyType");
  }

  sharingKeySeed = self->_sharingKeySeed;
  if (sharingKeySeed)
  {
    objc_msgSend_setObject_forKey_(v6, v5, sharingKeySeed, @"sharingKeySeed");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sharingKeyBytes)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    sharingKeyType = self->_sharingKeyType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_sharingKeySeed)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  sharingKeyBytes = self->_sharingKeyBytes;
  v8 = v4;
  if (sharingKeyBytes)
  {
    objc_msgSend_setSharingKeyBytes_(v4, v5, sharingKeyBytes);
    v4 = v8;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_sharingKeyType;
    *(v4 + 28) |= 1u;
  }

  sharingKeySeed = self->_sharingKeySeed;
  if (sharingKeySeed)
  {
    objc_msgSend_setSharingKeySeed_(v8, v5, sharingKeySeed);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_sharingKeyBytes, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 24) = self->_sharingKeyType;
    *(v10 + 28) |= 1u;
  }

  v15 = objc_msgSend_copyWithZone_(self->_sharingKeySeed, v14, a3);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_11;
  }

  sharingKeyBytes = self->_sharingKeyBytes;
  v9 = v4[1];
  if (sharingKeyBytes | v9)
  {
    if (!objc_msgSend_isEqual_(sharingKeyBytes, v7, v9))
    {
      goto LABEL_11;
    }
  }

  v10 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_sharingKeyType != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    isEqual = 0;
    goto LABEL_12;
  }

  sharingKeySeed = self->_sharingKeySeed;
  v12 = v4[2];
  if (sharingKeySeed | v12)
  {
    isEqual = objc_msgSend_isEqual_(sharingKeySeed, v7, v12);
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
  v4 = objc_msgSend_hash(self->_sharingKeyBytes, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_sharingKeyType;
  }

  else
  {
    v7 = 0;
  }

  return v7 ^ v4 ^ objc_msgSend_hash(self->_sharingKeySeed, v5, v6);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 1);
  v8 = v4;
  if (v6)
  {
    objc_msgSend_setSharingKeyBytes_(self, v5, v6);
    v4 = v8;
  }

  if (*(v4 + 28))
  {
    self->_sharingKeyType = *(v4 + 6);
    *&self->_has |= 1u;
  }

  v7 = *(v4 + 2);
  if (v7)
  {
    objc_msgSend_setSharingKeySeed_(self, v5, v7);
    v4 = v8;
  }
}

@end