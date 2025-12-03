@interface CKDPDistributedTimestampsVersionVector
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)stateValuesAsString:(int)string;
- (int)StringAsStateValues:(id)values;
- (int)stateValuesAtIndex:(unint64_t)index;
- (unint64_t)clockValueLengthsAtIndex:(unint64_t)index;
- (unint64_t)clockValuesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (unsigned)stateValueLengthsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPDistributedTimestampsVersionVector

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = CKDPDistributedTimestampsVersionVector;
  [(CKDPDistributedTimestampsVersionVector *)&v3 dealloc];
}

- (unint64_t)clockValuesAtIndex:(unint64_t)index
{
  p_clockValues = &self->_clockValues;
  count = self->_clockValues.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"idx (%lu) is out of range (%lu)", index, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_clockValues->list[index];
}

- (unint64_t)clockValueLengthsAtIndex:(unint64_t)index
{
  p_clockValueLengths = &self->_clockValueLengths;
  count = self->_clockValueLengths.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"idx (%lu) is out of range (%lu)", index, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_clockValueLengths->list[index];
}

- (int)stateValuesAtIndex:(unint64_t)index
{
  p_stateValues = &self->_stateValues;
  count = self->_stateValues.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"idx (%lu) is out of range (%lu)", index, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_stateValues->list[index];
}

- (id)stateValuesAsString:(int)string
{
  if (string >= 9)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_1E70BF080[string];
  }

  return v4;
}

- (int)StringAsStateValues:(id)values
{
  valuesCopy = values;
  if (objc_msgSend_isEqualToString_(valuesCopy, v4, @"unknown"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(valuesCopy, v5, @"regular"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(valuesCopy, v7, @"regularPresent"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(valuesCopy, v8, @"regularTombstoned"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(valuesCopy, v9, @"regularMissing"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(valuesCopy, v10, @"lwwPerModifier"))
  {
    v6 = 5;
  }

  else if (objc_msgSend_isEqualToString_(valuesCopy, v11, @"lwwPerModifierPresent"))
  {
    v6 = 6;
  }

  else if (objc_msgSend_isEqualToString_(valuesCopy, v12, @"lwwPerModifierTombstoned"))
  {
    v6 = 7;
  }

  else if (objc_msgSend_isEqualToString_(valuesCopy, v13, @"lwwPerModifierMissing"))
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)stateValueLengthsAtIndex:(unint64_t)index
{
  p_stateValueLengths = &self->_stateValueLengths;
  count = self->_stateValueLengths.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"idx (%lu) is out of range (%lu)", index, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_stateValueLengths->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKDPDistributedTimestampsVersionVector;
  v4 = [(CKDPDistributedTimestampsVersionVector *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2);
  v5 = PBRepeatedUInt64NSArray();
  objc_msgSend_setObject_forKey_(v4, v6, v5, @"clockValues");

  v7 = PBRepeatedUInt64NSArray();
  objc_msgSend_setObject_forKey_(v4, v8, v7, @"clockValueLengths");

  p_stateValues = &self->_stateValues;
  count = self->_stateValues.count;
  if (count)
  {
    v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v9, count);
    if (self->_stateValues.count)
    {
      v14 = 0;
      do
      {
        v15 = p_stateValues->list[v14];
        if (v15 >= 9)
        {
          v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"(unknown: %i)", p_stateValues->list[v14]);
        }

        else
        {
          v16 = off_1E70BF080[v15];
        }

        objc_msgSend_addObject_(v13, v12, v16);

        ++v14;
      }

      while (v14 < self->_stateValues.count);
    }

    objc_msgSend_setObject_forKey_(v4, v12, v13, @"stateValues");
  }

  v17 = PBRepeatedUInt32NSArray();
  objc_msgSend_setObject_forKey_(v4, v18, v17, @"stateValueLengths");

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_clockValues.count)
  {
    PBDataWriterPlaceMark();
    if (self->_clockValues.count)
    {
      v5 = 0;
      do
      {
        v6 = self->_clockValues.list[v5];
        PBDataWriterWriteUint64Field();
        ++v5;
      }

      while (v5 < self->_clockValues.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_clockValueLengths.count)
  {
    PBDataWriterPlaceMark();
    if (self->_clockValueLengths.count)
    {
      v7 = 0;
      do
      {
        v8 = self->_clockValueLengths.list[v7];
        PBDataWriterWriteUint64Field();
        ++v7;
      }

      while (v7 < self->_clockValueLengths.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_stateValues.count)
  {
    PBDataWriterPlaceMark();
    if (self->_stateValues.count)
    {
      v9 = 0;
      do
      {
        v10 = self->_stateValues.list[v9];
        PBDataWriterWriteInt32Field();
        ++v9;
      }

      while (v9 < self->_stateValues.count);
    }

    PBDataWriterRecallMark();
  }

  p_stateValueLengths = &self->_stateValueLengths;
  if (p_stateValueLengths->count)
  {
    PBDataWriterPlaceMark();
    if (p_stateValueLengths->count)
    {
      v12 = 0;
      do
      {
        v13 = p_stateValueLengths->list[v12];
        PBDataWriterWriteUint32Field();
        ++v12;
      }

      while (v12 < p_stateValueLengths->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (objc_msgSend_clockValuesCount(self, v4, v5))
  {
    objc_msgSend_clearClockValues(toCopy, v6, v7);
    v10 = objc_msgSend_clockValuesCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_clockValuesAtIndex_(self, v6, i);
        objc_msgSend_addClockValues_(toCopy, v14, v13);
      }
    }
  }

  if (objc_msgSend_clockValueLengthsCount(self, v6, v7))
  {
    objc_msgSend_clearClockValueLengths(toCopy, v15, v16);
    v19 = objc_msgSend_clockValueLengthsCount(self, v17, v18);
    if (v19)
    {
      v20 = v19;
      for (j = 0; j != v20; ++j)
      {
        v22 = objc_msgSend_clockValueLengthsAtIndex_(self, v15, j);
        objc_msgSend_addClockValueLengths_(toCopy, v23, v22);
      }
    }
  }

  if (objc_msgSend_stateValuesCount(self, v15, v16))
  {
    objc_msgSend_clearStateValues(toCopy, v24, v25);
    v28 = objc_msgSend_stateValuesCount(self, v26, v27);
    if (v28)
    {
      v29 = v28;
      for (k = 0; k != v29; ++k)
      {
        v31 = objc_msgSend_stateValuesAtIndex_(self, v24, k);
        objc_msgSend_addStateValues_(toCopy, v32, v31);
      }
    }
  }

  if (objc_msgSend_stateValueLengthsCount(self, v24, v25))
  {
    objc_msgSend_clearStateValueLengths(toCopy, v33, v34);
    v37 = objc_msgSend_stateValueLengthsCount(self, v35, v36);
    if (v37)
    {
      v39 = v37;
      for (m = 0; m != v39; ++m)
      {
        v41 = objc_msgSend_stateValueLengthsAtIndex_(self, v38, m);
        objc_msgSend_addStateValueLengths_(toCopy, v42, v41);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  v6 = objc_msgSend_allocWithZone_(v4, v5, zone);
  v9 = objc_msgSend_init(v6, v7, v8);
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedInt32Copy();
  PBRepeatedUInt32Copy();
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v5, v4) && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual() && PBRepeatedInt32IsEqual())
  {
    IsEqual = PBRepeatedUInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v2 = PBRepeatedUInt64Hash();
  v3 = PBRepeatedUInt64Hash() ^ v2;
  v4 = PBRepeatedInt32Hash();
  return v3 ^ v4 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = objc_msgSend_clockValuesCount(fromCopy, v4, v5);
  if (v6)
  {
    v9 = v6;
    for (i = 0; i != v9; ++i)
    {
      v11 = objc_msgSend_clockValuesAtIndex_(fromCopy, v7, i);
      objc_msgSend_addClockValues_(self, v12, v11);
    }
  }

  v13 = objc_msgSend_clockValueLengthsCount(fromCopy, v7, v8);
  if (v13)
  {
    v16 = v13;
    for (j = 0; j != v16; ++j)
    {
      v18 = objc_msgSend_clockValueLengthsAtIndex_(fromCopy, v14, j);
      objc_msgSend_addClockValueLengths_(self, v19, v18);
    }
  }

  v20 = objc_msgSend_stateValuesCount(fromCopy, v14, v15);
  if (v20)
  {
    v23 = v20;
    for (k = 0; k != v23; ++k)
    {
      v25 = objc_msgSend_stateValuesAtIndex_(fromCopy, v21, k);
      objc_msgSend_addStateValues_(self, v26, v25);
    }
  }

  v27 = objc_msgSend_stateValueLengthsCount(fromCopy, v21, v22);
  if (v27)
  {
    v29 = v27;
    for (m = 0; m != v29; ++m)
    {
      v31 = objc_msgSend_stateValueLengthsAtIndex_(fromCopy, v28, m);
      objc_msgSend_addStateValueLengths_(self, v32, v31);
    }
  }
}

@end