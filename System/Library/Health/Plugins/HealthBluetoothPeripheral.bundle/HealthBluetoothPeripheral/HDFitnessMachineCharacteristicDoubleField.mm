@interface HDFitnessMachineCharacteristicDoubleField
- (id)valueAsData;
- (void)setValueWithBytes:(const char *)bytes before:(const char *)before;
@end

@implementation HDFitnessMachineCharacteristicDoubleField

- (void)setValueWithBytes:(const char *)bytes before:(const char *)before
{
  if (!*bytes)
  {
    return;
  }

  fieldLength = [(HDFitnessMachineCharacteristicField *)self fieldLength];
  v8 = *bytes;
  v9 = &(*bytes)[fieldLength];
  if (v9 > before)
  {
    *&self->_isSigned = 0;
    *bytes = 0;
    return;
  }

  v10 = fieldLength;
  if ([(HDFitnessMachineCharacteristicDoubleField *)self isSigned])
  {
    v11 = *(v9 - 1) >= 0;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 1;
    if (v10)
    {
LABEL_6:
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = *v8++;
        v13 |= v14 << v12;
        v12 += 8;
      }

      while (8 * v10 != v12);
      goto LABEL_11;
    }
  }

  v13 = 0;
LABEL_11:
  if (v10 <= 7 && !v11)
  {
    v15 = 0;
    v16 = (8 - v10) + 1;
    do
    {
      v15 = (v15 << 8) | 0xFF00;
      --v16;
    }

    while (v16 > 1);
    v13 |= v15 << 8;
  }

  *bytes += v10;
  *&self->_isSigned = v13 / [(HDFitnessMachineCharacteristicField *)self factor];
  self->super._isSet = 1;
}

- (id)valueAsData
{
  [(HDFitnessMachineCharacteristicDoubleField *)self value];

  return sub_39F70(self, v3);
}

@end