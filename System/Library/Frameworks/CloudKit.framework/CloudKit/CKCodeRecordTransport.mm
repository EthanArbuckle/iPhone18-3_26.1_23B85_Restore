@interface CKCodeRecordTransport
- (BOOL)isEqual:(id)equal;
- (CKCodeRecordTransport)initWithRecord:(id)record;
- (id)contentsAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContents:(id)contents;
- (int)contents;
- (unint64_t)hash;
- (void)clearOneofValuesForContents;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setLocalSerialization:(id)serialization;
- (void)setWireSerialization:(id)serialization;
- (void)writeTo:(id)to;
@end

@implementation CKCodeRecordTransport

- (void)setLocalSerialization:(id)serialization
{
  serializationCopy = serialization;
  objc_msgSend_clearOneofValuesForContents(self, v5, v6);
  *&self->_has |= 1u;
  self->_contents = 1;
  localSerialization = self->_localSerialization;
  self->_localSerialization = serializationCopy;
}

- (void)setWireSerialization:(id)serialization
{
  serializationCopy = serialization;
  objc_msgSend_clearOneofValuesForContents(self, v5, v6);
  *&self->_has |= 1u;
  self->_contents = 2;
  wireSerialization = self->_wireSerialization;
  self->_wireSerialization = serializationCopy;
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

- (id)contentsAsString:(int)string
{
  if (string >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_1E70BE680[string];
  }

  return v4;
}

- (int)StringAsContents:(id)contents
{
  contentsCopy = contents;
  if (objc_msgSend_isEqualToString_(contentsCopy, v4, @"PBUNSET"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(contentsCopy, v5, @"localSerialization"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(contentsCopy, v7, @"wireSerialization"))
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
  localSerialization = self->_localSerialization;
  self->_localSerialization = 0;

  wireSerialization = self->_wireSerialization;
  self->_wireSerialization = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKCodeRecordTransport;
  v4 = [(CKCodeRecordTransport *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  v6 = v4;
  localSerialization = self->_localSerialization;
  if (localSerialization)
  {
    objc_msgSend_setObject_forKey_(v4, v5, localSerialization, @"localSerialization");
  }

  wireSerialization = self->_wireSerialization;
  if (wireSerialization)
  {
    objc_msgSend_setObject_forKey_(v6, v5, wireSerialization, @"wireSerialization");
  }

  if (*&self->_has)
  {
    contents = self->_contents;
    if (contents >= 3)
    {
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"(unknown: %i)", self->_contents);
    }

    else
    {
      v10 = off_1E70BE680[contents];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v10, @"contents");
  }

  encryptedMasterKey = self->_encryptedMasterKey;
  if (encryptedMasterKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, encryptedMasterKey, @"encryptedMasterKey");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_localSerialization)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_wireSerialization)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_encryptedMasterKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_contents;
    *(toCopy + 40) |= 1u;
  }

  localSerialization = self->_localSerialization;
  v9 = toCopy;
  if (localSerialization)
  {
    objc_msgSend_setLocalSerialization_(toCopy, v5, localSerialization);
    toCopy = v9;
  }

  wireSerialization = self->_wireSerialization;
  if (wireSerialization)
  {
    objc_msgSend_setWireSerialization_(v9, v5, wireSerialization);
    toCopy = v9;
  }

  encryptedMasterKey = self->_encryptedMasterKey;
  if (encryptedMasterKey)
  {
    objc_msgSend_setEncryptedMasterKey_(v9, v5, encryptedMasterKey);
    toCopy = v9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 8) = self->_contents;
    *(v10 + 40) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_localSerialization, v11, zone);
  v14 = v12[3];
  v12[3] = v13;

  v16 = objc_msgSend_copyWithZone_(self->_wireSerialization, v15, zone);
  v17 = v12[4];
  v12[4] = v16;

  v19 = objc_msgSend_copyWithZone_(self->_encryptedMasterKey, v18, zone);
  v20 = v12[2];
  v12[2] = v19;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_13;
  }

  v8 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((equalCopy[5] & 1) == 0 || self->_contents != *(equalCopy + 2))
    {
      goto LABEL_13;
    }
  }

  else if (equalCopy[5])
  {
LABEL_13:
    isEqual = 0;
    goto LABEL_14;
  }

  localSerialization = self->_localSerialization;
  v10 = equalCopy[3];
  if (localSerialization | v10 && !objc_msgSend_isEqual_(localSerialization, v7, v10))
  {
    goto LABEL_13;
  }

  wireSerialization = self->_wireSerialization;
  v12 = equalCopy[4];
  if (wireSerialization | v12)
  {
    if (!objc_msgSend_isEqual_(wireSerialization, v7, v12))
    {
      goto LABEL_13;
    }
  }

  encryptedMasterKey = self->_encryptedMasterKey;
  v14 = equalCopy[2];
  if (encryptedMasterKey | v14)
  {
    isEqual = objc_msgSend_isEqual_(encryptedMasterKey, v7, v14);
  }

  else
  {
    isEqual = 1;
  }

LABEL_14:

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

  v5 = objc_msgSend_hash(self->_localSerialization, a2, v2) ^ v4;
  v8 = objc_msgSend_hash(self->_wireSerialization, v6, v7);
  return v5 ^ v8 ^ objc_msgSend_hash(self->_encryptedMasterKey, v9, v10);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 40))
  {
    self->_contents = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v6 = *(fromCopy + 3);
  v9 = fromCopy;
  if (v6)
  {
    objc_msgSend_setLocalSerialization_(self, v5, v6);
    fromCopy = v9;
  }

  v7 = *(fromCopy + 4);
  if (v7)
  {
    objc_msgSend_setWireSerialization_(self, v5, v7);
    fromCopy = v9;
  }

  v8 = *(fromCopy + 2);
  if (v8)
  {
    objc_msgSend_setEncryptedMasterKey_(self, v5, v8);
    fromCopy = v9;
  }
}

- (CKCodeRecordTransport)initWithRecord:(id)record
{
  v29[1] = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v28.receiver = self;
  v28.super_class = CKCodeRecordTransport;
  v8 = [(CKCodeRecordTransport *)&v28 init];
  if (v8)
  {
    v9 = objc_msgSend_valueStore(recordCopy, v6, v7);
    v29[0] = objc_opt_class();
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v29, 1);
    v13 = objc_msgSend_containsValueOfClasses_options_passingTest_(v9, v12, v11, 1, &unk_1EFA2F148);

    if (v13)
    {
      v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v14, v15);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, v8, @"CKRecord_CodeExtensions.m", 23, @"CKRecords sent via Inverness cannot container in-memory asset content");
    }

    v16 = objc_alloc(MEMORY[0x1E696ACC8]);
    inited = objc_msgSend_initRequiringSecureCoding_(v16, v17, 1);
    objc_msgSend_encodeWithCoder_(recordCopy, v19, inited);
    v22 = objc_msgSend_encodedData(inited, v20, v21);
    objc_msgSend_setLocalSerialization_(v8, v23, v22);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v8;
}

@end