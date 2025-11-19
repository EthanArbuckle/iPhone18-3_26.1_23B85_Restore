@interface CKDPRecordFieldValueEncryptedValue
- (BOOL)isEqual:(id)a3;
- (double)doubleListValueAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)signedListValueAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addDateListValue:(id)a3;
- (void)addLocationListValue:(id)a3;
- (void)addStringListValue:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasSignedValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRecordFieldValueEncryptedValue

- (void)dealloc
{
  PBRepeatedInt64Clear();
  PBRepeatedDoubleClear();
  v3.receiver = self;
  v3.super_class = CKDPRecordFieldValueEncryptedValue;
  [(CKDPRecordFieldValueEncryptedValue *)&v3 dealloc];
}

- (void)setHasSignedValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int64_t)signedListValueAtIndex:(unint64_t)a3
{
  p_signedListValues = &self->_signedListValues;
  count = self->_signedListValues.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"idx (%lu) is out of range (%lu)", a3, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_signedListValues->list[a3];
}

- (double)doubleListValueAtIndex:(unint64_t)a3
{
  p_doubleListValues = &self->_doubleListValues;
  count = self->_doubleListValues.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"idx (%lu) is out of range (%lu)", a3, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_doubleListValues->list[a3];
}

- (void)addDateListValue:(id)a3
{
  v4 = a3;
  dateListValues = self->_dateListValues;
  v8 = v4;
  if (!dateListValues)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dateListValues;
    self->_dateListValues = v6;

    v4 = v8;
    dateListValues = self->_dateListValues;
  }

  objc_msgSend_addObject_(dateListValues, v4, v4);
}

- (void)addStringListValue:(id)a3
{
  v4 = a3;
  stringListValues = self->_stringListValues;
  v8 = v4;
  if (!stringListValues)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_stringListValues;
    self->_stringListValues = v6;

    v4 = v8;
    stringListValues = self->_stringListValues;
  }

  objc_msgSend_addObject_(stringListValues, v4, v4);
}

- (void)addLocationListValue:(id)a3
{
  v4 = a3;
  locationListValues = self->_locationListValues;
  v8 = v4;
  if (!locationListValues)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_locationListValues;
    self->_locationListValues = v6;

    v4 = v8;
    locationListValues = self->_locationListValues;
  }

  objc_msgSend_addObject_(locationListValues, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKDPRecordFieldValueEncryptedValue;
  v4 = [(CKDPRecordFieldValueEncryptedValue *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v4, self->_signedValue);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"signedValue");

    has = self->_has;
  }

  if (has)
  {
    v10 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, self->_ckDoubleValue);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"ckDoubleValue");
  }

  dateValue = self->_dateValue;
  if (dateValue)
  {
    v13 = objc_msgSend_dictionaryRepresentation(dateValue, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"dateValue");
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_setObject_forKey_(v6, v4, stringValue, @"stringValue");
  }

  locationValue = self->_locationValue;
  if (locationValue)
  {
    v17 = objc_msgSend_dictionaryRepresentation(locationValue, v4, stringValue);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"locationValue");
  }

  referenceValue = self->_referenceValue;
  if (referenceValue)
  {
    v20 = objc_msgSend_dictionaryRepresentation(referenceValue, v4, stringValue);
    objc_msgSend_setObject_forKey_(v6, v21, v20, @"referenceValue");
  }

  v22 = PBRepeatedInt64NSArray();
  objc_msgSend_setObject_forKey_(v6, v23, v22, @"signedListValue");

  v24 = PBRepeatedDoubleNSArray();
  objc_msgSend_setObject_forKey_(v6, v25, v24, @"doubleListValue");

  if (objc_msgSend_count(self->_dateListValues, v26, v27))
  {
    v29 = objc_alloc(MEMORY[0x1E695DF70]);
    v32 = objc_msgSend_count(self->_dateListValues, v30, v31);
    v34 = objc_msgSend_initWithCapacity_(v29, v33, v32);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v35 = self->_dateListValues;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v70, v75, 16);
    if (v37)
    {
      v40 = v37;
      v41 = *v71;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v71 != v41)
          {
            objc_enumerationMutation(v35);
          }

          v43 = objc_msgSend_dictionaryRepresentation(*(*(&v70 + 1) + 8 * i), v38, v39);
          objc_msgSend_addObject_(v34, v44, v43);
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v70, v75, 16);
      }

      while (v40);
    }

    objc_msgSend_setObject_forKey_(v6, v45, v34, @"dateListValue");
  }

  stringListValues = self->_stringListValues;
  if (stringListValues)
  {
    objc_msgSend_setObject_forKey_(v6, v28, stringListValues, @"stringListValue");
  }

  if (objc_msgSend_count(self->_locationListValues, v28, stringListValues))
  {
    v47 = objc_alloc(MEMORY[0x1E695DF70]);
    v50 = objc_msgSend_count(self->_locationListValues, v48, v49);
    v52 = objc_msgSend_initWithCapacity_(v47, v51, v50);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v53 = self->_locationListValues;
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v66, v74, 16);
    if (v55)
    {
      v58 = v55;
      v59 = *v67;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v67 != v59)
          {
            objc_enumerationMutation(v53);
          }

          v61 = objc_msgSend_dictionaryRepresentation(*(*(&v66 + 1) + 8 * j), v56, v57, v66);
          objc_msgSend_addObject_(v52, v62, v61);
        }

        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v66, v74, 16);
      }

      while (v58);
    }

    objc_msgSend_setObject_forKey_(v6, v63, v52, @"locationListValue");
  }

  v64 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)writeTo:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    signedValue = self->_signedValue;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if (has)
  {
    ckDoubleValue = self->_ckDoubleValue;
    PBDataWriterWriteDoubleField();
  }

  if (self->_dateValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locationValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_referenceValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_signedListValues.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_signedListValues.list[v8];
      PBDataWriterWriteInt64Field();
      ++v8;
    }

    while (v8 < self->_signedListValues.count);
  }

  if (self->_doubleListValues.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_doubleListValues.list[v10];
      PBDataWriterWriteDoubleField();
      ++v10;
    }

    while (v10 < self->_doubleListValues.count);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = self->_dateListValues;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v45, v51, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v45 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v19, &v45, v51, 16);
    }

    while (v15);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v20 = self->_stringListValues;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v41, v50, 16);
  if (v22)
  {
    v23 = v22;
    v24 = *v42;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v41 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v27, &v41, v50, 16);
    }

    while (v23);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v28 = self->_locationListValues;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v37, v49, 16);
  if (v30)
  {
    v31 = v30;
    v32 = *v38;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v37 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v35, &v37, v49, 16);
    }

    while (v31);
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[8] = self->_signedValue;
    *(v4 + 128) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[7] = *&self->_ckDoubleValue;
    *(v4 + 128) |= 1u;
  }

  dateValue = self->_dateValue;
  v57 = v4;
  if (dateValue)
  {
    objc_msgSend_setDateValue_(v4, v5, dateValue);
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_setStringValue_(v57, v5, stringValue);
  }

  locationValue = self->_locationValue;
  if (locationValue)
  {
    objc_msgSend_setLocationValue_(v57, v5, locationValue);
  }

  referenceValue = self->_referenceValue;
  if (referenceValue)
  {
    objc_msgSend_setReferenceValue_(v57, v5, referenceValue);
  }

  if (objc_msgSend_signedListValuesCount(self, v5, referenceValue))
  {
    objc_msgSend_clearSignedListValues(v57, v11, v12);
    v15 = objc_msgSend_signedListValuesCount(self, v13, v14);
    if (v15)
    {
      v16 = v15;
      for (i = 0; i != v16; ++i)
      {
        v18 = objc_msgSend_signedListValueAtIndex_(self, v11, i);
        objc_msgSend_addSignedListValue_(v57, v19, v18);
      }
    }
  }

  if (objc_msgSend_doubleListValuesCount(self, v11, v12))
  {
    objc_msgSend_clearDoubleListValues(v57, v20, v21);
    v24 = objc_msgSend_doubleListValuesCount(self, v22, v23);
    if (v24)
    {
      v25 = v24;
      for (j = 0; j != v25; ++j)
      {
        objc_msgSend_doubleListValueAtIndex_(self, v20, j);
        objc_msgSend_addDoubleListValue_(v57, v27, v28);
      }
    }
  }

  if (objc_msgSend_dateListValuesCount(self, v20, v21))
  {
    objc_msgSend_clearDateListValues(v57, v29, v30);
    v33 = objc_msgSend_dateListValuesCount(self, v31, v32);
    if (v33)
    {
      v34 = v33;
      for (k = 0; k != v34; ++k)
      {
        v36 = objc_msgSend_dateListValueAtIndex_(self, v29, k);
        objc_msgSend_addDateListValue_(v57, v37, v36);
      }
    }
  }

  if (objc_msgSend_stringListValuesCount(self, v29, v30))
  {
    objc_msgSend_clearStringListValues(v57, v38, v39);
    v42 = objc_msgSend_stringListValuesCount(self, v40, v41);
    if (v42)
    {
      v43 = v42;
      for (m = 0; m != v43; ++m)
      {
        v45 = objc_msgSend_stringListValueAtIndex_(self, v38, m);
        objc_msgSend_addStringListValue_(v57, v46, v45);
      }
    }
  }

  if (objc_msgSend_locationListValuesCount(self, v38, v39))
  {
    objc_msgSend_clearLocationListValues(v57, v47, v48);
    v51 = objc_msgSend_locationListValuesCount(self, v49, v50);
    if (v51)
    {
      v53 = v51;
      for (n = 0; n != v53; ++n)
      {
        v55 = objc_msgSend_locationListValueAtIndex_(self, v52, n);
        objc_msgSend_addLocationListValue_(v57, v56, v55);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 64) = self->_signedValue;
    *(v10 + 128) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 56) = self->_ckDoubleValue;
    *(v10 + 128) |= 1u;
  }

  v14 = objc_msgSend_copyWithZone_(self->_dateValue, v11, a3);
  v15 = v12[10];
  v12[10] = v14;

  v17 = objc_msgSend_copyWithZone_(self->_stringValue, v16, a3);
  v18 = v12[15];
  v12[15] = v17;

  v20 = objc_msgSend_copyWithZone_(self->_locationValue, v19, a3);
  v21 = v12[12];
  v12[12] = v20;

  v23 = objc_msgSend_copyWithZone_(self->_referenceValue, v22, a3);
  v24 = v12[13];
  v12[13] = v23;

  PBRepeatedInt64Copy();
  PBRepeatedDoubleCopy();
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v25 = self->_dateListValues;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v62, v68, 16);
  if (v27)
  {
    v29 = v27;
    v30 = *v63;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v63 != v30)
        {
          objc_enumerationMutation(v25);
        }

        v32 = objc_msgSend_copyWithZone_(*(*(&v62 + 1) + 8 * i), v28, a3);
        objc_msgSend_addDateListValue_(v12, v33, v32);
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v62, v68, 16);
    }

    while (v29);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v34 = self->_stringListValues;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v58, v67, 16);
  if (v36)
  {
    v38 = v36;
    v39 = *v59;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v59 != v39)
        {
          objc_enumerationMutation(v34);
        }

        v41 = objc_msgSend_copyWithZone_(*(*(&v58 + 1) + 8 * j), v37, a3);
        objc_msgSend_addStringListValue_(v12, v42, v41);
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v58, v67, 16);
    }

    while (v38);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v43 = self->_locationListValues;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v54, v66, 16);
  if (v45)
  {
    v47 = v45;
    v48 = *v55;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v55 != v48)
        {
          objc_enumerationMutation(v43);
        }

        v50 = objc_msgSend_copyWithZone_(*(*(&v54 + 1) + 8 * k), v46, a3, v54);
        objc_msgSend_addLocationListValue_(v12, v51, v50);
      }

      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v54, v66, 16);
    }

    while (v47);
  }

  v52 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_28;
  }

  v8 = *(v4 + 128);
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[16] & 2) == 0 || self->_signedValue != v4[8])
    {
      goto LABEL_28;
    }
  }

  else if ((v4[16] & 2) != 0)
  {
LABEL_28:
    isEqual = 0;
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((v4[16] & 1) == 0 || self->_ckDoubleValue != *(v4 + 7))
    {
      goto LABEL_28;
    }
  }

  else if (v4[16])
  {
    goto LABEL_28;
  }

  dateValue = self->_dateValue;
  v10 = v4[10];
  if (dateValue | v10 && !objc_msgSend_isEqual_(dateValue, v7, v10))
  {
    goto LABEL_28;
  }

  stringValue = self->_stringValue;
  v12 = v4[15];
  if (stringValue | v12)
  {
    if (!objc_msgSend_isEqual_(stringValue, v7, v12))
    {
      goto LABEL_28;
    }
  }

  locationValue = self->_locationValue;
  v14 = v4[12];
  if (locationValue | v14)
  {
    if (!objc_msgSend_isEqual_(locationValue, v7, v14))
    {
      goto LABEL_28;
    }
  }

  referenceValue = self->_referenceValue;
  v16 = v4[13];
  if (referenceValue | v16)
  {
    if (!objc_msgSend_isEqual_(referenceValue, v7, v16))
    {
      goto LABEL_28;
    }
  }

  if (!PBRepeatedInt64IsEqual())
  {
    goto LABEL_28;
  }

  if (!PBRepeatedDoubleIsEqual())
  {
    goto LABEL_28;
  }

  dateListValues = self->_dateListValues;
  v19 = v4[9];
  if (dateListValues | v19)
  {
    if (!objc_msgSend_isEqual_(dateListValues, v17, v19))
    {
      goto LABEL_28;
    }
  }

  stringListValues = self->_stringListValues;
  v21 = v4[14];
  if (stringListValues | v21)
  {
    if (!objc_msgSend_isEqual_(stringListValues, v17, v21))
    {
      goto LABEL_28;
    }
  }

  locationListValues = self->_locationListValues;
  v23 = v4[11];
  if (locationListValues | v23)
  {
    isEqual = objc_msgSend_isEqual_(locationListValues, v17, v23);
  }

  else
  {
    isEqual = 1;
  }

LABEL_29:

  return isEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_signedValue;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  ckDoubleValue = self->_ckDoubleValue;
  if (ckDoubleValue < 0.0)
  {
    ckDoubleValue = -ckDoubleValue;
  }

  *v3.i64 = floor(ckDoubleValue + 0.5);
  v8 = (ckDoubleValue - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v4, v3).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  v11 = v10 ^ v6 ^ objc_msgSend_hash(self->_dateValue, a2, v2);
  v14 = objc_msgSend_hash(self->_stringValue, v12, v13);
  v17 = v11 ^ v14 ^ objc_msgSend_hash(self->_locationValue, v15, v16);
  v20 = objc_msgSend_hash(self->_referenceValue, v18, v19);
  v21 = v20 ^ PBRepeatedInt64Hash();
  v22 = v17 ^ v21 ^ PBRepeatedDoubleHash();
  v25 = objc_msgSend_hash(self->_dateListValues, v23, v24);
  v28 = v25 ^ objc_msgSend_hash(self->_stringListValues, v26, v27);
  return v22 ^ v28 ^ objc_msgSend_hash(self->_locationListValues, v29, v30);
}

- (void)mergeFrom:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = v4;
  v7 = *(v4 + 128);
  if ((v7 & 2) != 0)
  {
    self->_signedValue = *(v4 + 8);
    *&self->_has |= 2u;
    v7 = *(v4 + 128);
  }

  if (v7)
  {
    self->_ckDoubleValue = *(v4 + 7);
    *&self->_has |= 1u;
  }

  dateValue = self->_dateValue;
  v9 = *(v6 + 10);
  if (dateValue)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(dateValue, v5, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setDateValue_(self, v5, v9);
  }

  v10 = *(v6 + 15);
  if (v10)
  {
    objc_msgSend_setStringValue_(self, v5, v10);
  }

  locationValue = self->_locationValue;
  v12 = *(v6 + 12);
  if (locationValue)
  {
    if (v12)
    {
      objc_msgSend_mergeFrom_(locationValue, v5, v12);
    }
  }

  else if (v12)
  {
    objc_msgSend_setLocationValue_(self, v5, v12);
  }

  referenceValue = self->_referenceValue;
  v14 = *(v6 + 13);
  if (referenceValue)
  {
    if (v14)
    {
      objc_msgSend_mergeFrom_(referenceValue, v5, v14);
    }
  }

  else if (v14)
  {
    objc_msgSend_setReferenceValue_(self, v5, v14);
  }

  v15 = objc_msgSend_signedListValuesCount(v6, v5, v14);
  if (v15)
  {
    v18 = v15;
    for (i = 0; i != v18; ++i)
    {
      v20 = objc_msgSend_signedListValueAtIndex_(v6, v16, i);
      objc_msgSend_addSignedListValue_(self, v21, v20);
    }
  }

  v22 = objc_msgSend_doubleListValuesCount(v6, v16, v17);
  if (v22)
  {
    v24 = v22;
    for (j = 0; j != v24; ++j)
    {
      objc_msgSend_doubleListValueAtIndex_(v6, v23, j);
      objc_msgSend_addDoubleListValue_(self, v26, v27);
    }
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v28 = *(v6 + 9);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v58, v64, 16);
  if (v30)
  {
    v32 = v30;
    v33 = *v59;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v59 != v33)
        {
          objc_enumerationMutation(v28);
        }

        objc_msgSend_addDateListValue_(self, v31, *(*(&v58 + 1) + 8 * k));
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v58, v64, 16);
    }

    while (v32);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v35 = *(v6 + 14);
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v54, v63, 16);
  if (v37)
  {
    v39 = v37;
    v40 = *v55;
    do
    {
      for (m = 0; m != v39; ++m)
      {
        if (*v55 != v40)
        {
          objc_enumerationMutation(v35);
        }

        objc_msgSend_addStringListValue_(self, v38, *(*(&v54 + 1) + 8 * m));
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v54, v63, 16);
    }

    while (v39);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = *(v6 + 11);
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v50, v62, 16);
  if (v44)
  {
    v46 = v44;
    v47 = *v51;
    do
    {
      for (n = 0; n != v46; ++n)
      {
        if (*v51 != v47)
        {
          objc_enumerationMutation(v42);
        }

        objc_msgSend_addLocationListValue_(self, v45, *(*(&v50 + 1) + 8 * n), v50);
      }

      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v50, v62, 16);
    }

    while (v46);
  }

  v49 = *MEMORY[0x1E69E9840];
}

@end