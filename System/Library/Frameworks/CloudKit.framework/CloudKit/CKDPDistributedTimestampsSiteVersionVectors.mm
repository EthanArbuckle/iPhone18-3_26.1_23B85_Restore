@interface CKDPDistributedTimestampsSiteVersionVectors
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPDistributedTimestampsSiteVersionVectors

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKDPDistributedTimestampsSiteVersionVectors;
  v4 = [(CKDPDistributedTimestampsSiteVersionVectors *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  previousVector = self->_previousVector;
  if (previousVector)
  {
    v8 = objc_msgSend_dictionaryRepresentation(previousVector, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"previousVector");
  }

  contentsVector = self->_contentsVector;
  if (contentsVector)
  {
    v11 = objc_msgSend_dictionaryRepresentation(contentsVector, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"contentsVector");
  }

  removalsVector = self->_removalsVector;
  if (removalsVector)
  {
    v14 = objc_msgSend_dictionaryRepresentation(removalsVector, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"removalsVector");
  }

  dependenciesVector = self->_dependenciesVector;
  if (dependenciesVector)
  {
    v17 = objc_msgSend_dictionaryRepresentation(dependenciesVector, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"dependenciesVector");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_previousVector)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_contentsVector)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_removalsVector)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_dependenciesVector)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  previousVector = self->_previousVector;
  v10 = v4;
  if (previousVector)
  {
    objc_msgSend_setPreviousVector_(v4, v5, previousVector);
    v4 = v10;
  }

  contentsVector = self->_contentsVector;
  if (contentsVector)
  {
    objc_msgSend_setContentsVector_(v10, v5, contentsVector);
    v4 = v10;
  }

  removalsVector = self->_removalsVector;
  if (removalsVector)
  {
    objc_msgSend_setRemovalsVector_(v10, v5, removalsVector);
    v4 = v10;
  }

  dependenciesVector = self->_dependenciesVector;
  if (dependenciesVector)
  {
    objc_msgSend_setDependenciesVector_(v10, v5, dependenciesVector);
    v4 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_previousVector, v11, a3);
  v13 = v10[3];
  v10[3] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_contentsVector, v14, a3);
  v16 = v10[1];
  v10[1] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_removalsVector, v17, a3);
  v19 = v10[4];
  v10[4] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_dependenciesVector, v20, a3);
  v22 = v10[2];
  v10[2] = v21;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((previousVector = self->_previousVector, v9 = v4[3], !(previousVector | v9)) || objc_msgSend_isEqual_(previousVector, v7, v9)) && ((contentsVector = self->_contentsVector, v11 = v4[1], !(contentsVector | v11)) || objc_msgSend_isEqual_(contentsVector, v7, v11)) && ((removalsVector = self->_removalsVector, v13 = v4[4], !(removalsVector | v13)) || objc_msgSend_isEqual_(removalsVector, v7, v13)))
  {
    dependenciesVector = self->_dependenciesVector;
    v15 = v4[2];
    if (dependenciesVector | v15)
    {
      isEqual = objc_msgSend_isEqual_(dependenciesVector, v7, v15);
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

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_previousVector, a2, v2);
  v7 = objc_msgSend_hash(self->_contentsVector, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_removalsVector, v8, v9);
  return v7 ^ v10 ^ objc_msgSend_hash(self->_dependenciesVector, v11, v12);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  previousVector = self->_previousVector;
  v13 = v4;
  v6 = v4[3];
  if (previousVector)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(previousVector, v4, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setPreviousVector_(self, v4, v6);
  }

  contentsVector = self->_contentsVector;
  v8 = v13[1];
  if (contentsVector)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(contentsVector, v13, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setContentsVector_(self, v13, v8);
  }

  removalsVector = self->_removalsVector;
  v10 = v13[4];
  if (removalsVector)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(removalsVector, v13, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setRemovalsVector_(self, v13, v10);
  }

  dependenciesVector = self->_dependenciesVector;
  v12 = v13[2];
  if (dependenciesVector)
  {
    if (v12)
    {
      objc_msgSend_mergeFrom_(dependenciesVector, v13, v12);
    }
  }

  else if (v12)
  {
    objc_msgSend_setDependenciesVector_(self, v13, v12);
  }
}

@end