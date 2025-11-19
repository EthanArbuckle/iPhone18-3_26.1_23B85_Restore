@interface ASDLevelControl
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int *)a6 andData:(void *)a7 forClient:(int)a8;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3;
- (float)_decibelFromScalar:(float)a3;
- (float)_scalarFromDecibel:(float)a3;
- (float)decibelFromScalar:(float)a3;
- (float)decibelValue;
- (float)maximumDecibelValue;
- (float)minimumDecibelValue;
- (float)scalarFromDecibel:(float)a3;
- (float)scalarValue;
- (id)driverClassName;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5;
- (void)setDecibelValue:(float)a3;
- (void)setMaximumDecibelValue:(float)a3;
- (void)setMinimumDecibelValue:(float)a3;
- (void)setScalarValue:(float)a3;
@end

@implementation ASDLevelControl

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3
{
  if (!a3)
  {
    return 0;
  }

  mSelector = a3->mSelector;
  v6 = 1;
  if ((a3->mSelector - 1818453106 > 4 || ((1 << (a3->mSelector - 114)) & 0x13) == 0) && mSelector != 1818456932 && mSelector != 1818456950)
  {
    v12 = v3;
    v13 = v4;
    v11.receiver = self;
    v11.super_class = ASDLevelControl;
    return [(ASDControl *)&v11 hasProperty:?];
  }

  return v6;
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5
{
  if (!a3)
  {
    return 0;
  }

  mSelector = a3->mSelector;
  result = 4;
  if (a3->mSelector <= 1818453109)
  {
    if (mSelector == 1818453106)
    {
      return 16;
    }

    else if (mSelector != 1818453107)
    {
LABEL_15:
      v13 = v5;
      v14 = v6;
      v12.receiver = self;
      v12.super_class = ASDLevelControl;
      return [ASDControl dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
    }
  }

  else if (mSelector != 1818453110 && mSelector != 1818456932 && mSelector != 1818456950)
  {
    goto LABEL_15;
  }

  return result;
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int *)a6 andData:(void *)a7 forClient:(int)a8
{
  v9 = 0;
  if (a3 && a6 && a7)
  {
    mSelector = a3->mSelector;
    if (a3->mSelector <= 1818453109)
    {
      if (mSelector == 1818453106)
      {
        if (*a6 >= 0x10)
        {
          valueQueue = self->_valueQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __90__ASDLevelControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke;
          block[3] = &unk_278CE3F90;
          block[4] = self;
          block[5] = a7;
          dispatch_sync(valueQueue, block);
          v14 = 16;
          goto LABEL_19;
        }

        return 0;
      }

      if (mSelector == 1818453107)
      {
        if (*a6 >= 4)
        {
          LODWORD(v8) = *a7;
          [(ASDLevelControl *)self scalarFromDecibel:v8];
          goto LABEL_18;
        }

        return 0;
      }
    }

    else
    {
      switch(mSelector)
      {
        case 0x6C636476u:
          if (*a6 >= 4)
          {
            [(ASDLevelControl *)self decibelValue];
            goto LABEL_18;
          }

          return 0;
        case 0x6C637364u:
          if (*a6 >= 4)
          {
            LODWORD(v8) = *a7;
            [(ASDLevelControl *)self decibelFromScalar:v8];
            goto LABEL_18;
          }

          return 0;
        case 0x6C637376u:
          if (*a6 >= 4)
          {
            [(ASDLevelControl *)self scalarValue];
LABEL_18:
            *a7 = v13;
            v14 = 4;
LABEL_19:
            *a6 = v14;
            return 1;
          }

          return 0;
      }
    }

    v17.receiver = self;
    v17.super_class = ASDLevelControl;
    return [ASDControl getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
  }

  return v9;
}

double __90__ASDLevelControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v1[1] = *(*(a1 + 32) + 88);
  result = *(*(a1 + 32) + 84);
  *v1 = result;
  return result;
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3
{
  v5 = 0;
  if (!a3)
  {
    return v5;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1818456931)
  {
    if (mSelector - 1818453106 >= 2)
    {
      v7 = 25718;
      goto LABEL_7;
    }

    return v5;
  }

  if (mSelector == 1818456932)
  {
    return v5;
  }

  v7 = 29558;
LABEL_7:
  if (mSelector != (v7 | 0x6C630000))
  {
    v10 = v3;
    v11 = v4;
    v9.receiver = self;
    v9.super_class = ASDLevelControl;
    return [(ASDObject *)&v9 isPropertySettable:?];
  }

  return [(ASDLevelControl *)self isSettable];
}

- (float)_scalarFromDecibel:(float)a3
{
  minimumDecibelValue = self->_minimumDecibelValue;
  maximumDecibelValue = self->_maximumDecibelValue;
  v5 = minimumDecibelValue;
  if (minimumDecibelValue <= a3)
  {
    v5 = a3;
    if (maximumDecibelValue < a3)
    {
      v5 = self->_maximumDecibelValue;
    }
  }

  return (v5 - minimumDecibelValue) / (maximumDecibelValue - minimumDecibelValue);
}

- (float)_decibelFromScalar:(float)a3
{
  v3 = 1.0;
  if (a3 <= 1.0)
  {
    v3 = a3;
  }

  if (a3 >= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return self->_minimumDecibelValue + (v4 * (self->_maximumDecibelValue - self->_minimumDecibelValue));
}

- (float)scalarFromDecibel:(float)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  valueQueue = self->_valueQueue;
  v11 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ASDLevelControl_scalarFromDecibel___block_invoke;
  block[3] = &unk_278CE4280;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(valueQueue, block);
  v4 = v9[6];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __37__ASDLevelControl_scalarFromDecibel___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 48);
  result = [*(a1 + 32) _scalarFromDecibel:a2];
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (float)decibelFromScalar:(float)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  valueQueue = self->_valueQueue;
  v11 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ASDLevelControl_decibelFromScalar___block_invoke;
  block[3] = &unk_278CE4280;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(valueQueue, block);
  v4 = v9[6];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __37__ASDLevelControl_decibelFromScalar___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 48);
  result = [*(a1 + 32) _decibelFromScalar:a2];
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (void)setMaximumDecibelValue:(float)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  valueQueue = self->_valueQueue;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASDLevelControl_setMaximumDecibelValue___block_invoke;
  block[3] = &unk_278CE4230;
  v9 = a3;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(valueQueue, block);
  if (*(v11 + 24) == 1)
  {
    v7 = 0;
    v6 = 0x676C6F626C636472;
    v5 = [(ASDObject *)self propertyChangedDelegate];
    [v5 changedProperty:&v6 forObject:self];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __42__ASDLevelControl_setMaximumDecibelValue___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 88) != v2)
  {
    *(v1 + 88) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (float)maximumDecibelValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  valueQueue = self->_valueQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ASDLevelControl_maximumDecibelValue__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(valueQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __38__ASDLevelControl_maximumDecibelValue__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 88);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setMinimumDecibelValue:(float)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  valueQueue = self->_valueQueue;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASDLevelControl_setMinimumDecibelValue___block_invoke;
  block[3] = &unk_278CE4230;
  v9 = a3;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(valueQueue, block);
  if (*(v11 + 24) == 1)
  {
    v7 = 0;
    v6 = 0x676C6F626C636472;
    v5 = [(ASDObject *)self propertyChangedDelegate];
    [v5 changedProperty:&v6 forObject:self];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __42__ASDLevelControl_setMinimumDecibelValue___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 84) != v2)
  {
    *(v1 + 84) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (float)minimumDecibelValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  valueQueue = self->_valueQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ASDLevelControl_minimumDecibelValue__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(valueQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __38__ASDLevelControl_minimumDecibelValue__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 84);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setDecibelValue:(float)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  valueQueue = self->_valueQueue;
  v14 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ASDLevelControl_setDecibelValue___block_invoke;
  block[3] = &unk_278CE4230;
  v10 = a3;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(valueQueue, block);
  if (*(v12 + 24) == 1)
  {
    v8 = 0;
    v7 = 0x676C6F626C636476;
    v5 = [(ASDObject *)self propertyChangedDelegate];
    [v5 changedProperty:&v7 forObject:self];

    LODWORD(v7) = 1818456950;
    v6 = [(ASDObject *)self propertyChangedDelegate];
    [v6 changedProperty:&v7 forObject:self];
  }

  _Block_object_dispose(&v11, 8);
}

uint64_t __35__ASDLevelControl_setDecibelValue___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 80) != v2)
  {
    *(v1 + 80) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (float)decibelValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  valueQueue = self->_valueQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__ASDLevelControl_decibelValue__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(valueQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __31__ASDLevelControl_decibelValue__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setScalarValue:(float)a3
{
  [(ASDLevelControl *)self decibelFromScalar:?];

  [(ASDLevelControl *)self setDecibelValue:?];
}

- (float)scalarValue
{
  [(ASDLevelControl *)self decibelValue];

  [(ASDLevelControl *)self scalarFromDecibel:?];
  return result;
}

- (id)driverClassName
{
  v2 = [(ASDControl *)self objectClass];
  v3 = @"AudioLevelControl";
  if (v2 == 1986817381)
  {
    v3 = @"AudioVolumeControl";
  }

  if (v2 == 1937072758)
  {
    return @"AudioLFEVolumeControl";
  }

  else
  {
    return v3;
  }
}

- (void)initWithDecibelValue:(uint64_t)a1 minimumValue:(uint64_t)a2 maximumValue:isSettable:forElement:inScope:withPlugin:andObjectClassID:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDLevelControl.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"minimumValue <= maximumValue"}];
}

@end