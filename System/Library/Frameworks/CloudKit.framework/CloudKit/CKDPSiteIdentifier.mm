@interface CKDPSiteIdentifier
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPSiteIdentifier

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKDPSiteIdentifier;
  v4 = [(CKDPSiteIdentifier *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  v6 = v4;
  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_setObject_forKey_(v4, v5, identifier, @"identifier");
  }

  modifier = self->_modifier;
  if (modifier)
  {
    objc_msgSend_setObject_forKey_(v6, v5, modifier, @"modifier");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_modifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  identifier = self->_identifier;
  v8 = toCopy;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(toCopy, v5, identifier);
    toCopy = v8;
  }

  modifier = self->_modifier;
  if (modifier)
  {
    objc_msgSend_setModifier_(v8, v5, modifier);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_modifier, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((identifier = self->_identifier, v9 = equalCopy[1], !(identifier | v9)) || objc_msgSend_isEqual_(identifier, v7, v9)))
  {
    modifier = self->_modifier;
    v11 = equalCopy[2];
    if (modifier | v11)
    {
      isEqual = objc_msgSend_isEqual_(modifier, v7, v11);
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
  v6 = fromCopy[1];
  v8 = fromCopy;
  if (v6)
  {
    objc_msgSend_setIdentifier_(self, v5, v6);
    fromCopy = v8;
  }

  v7 = fromCopy[2];
  if (v7)
  {
    objc_msgSend_setModifier_(self, v5, v7);
    fromCopy = v8;
  }
}

@end