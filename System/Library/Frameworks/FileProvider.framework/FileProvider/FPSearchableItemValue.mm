@interface FPSearchableItemValue
+ (id)objectFromString:(id)a3;
+ (id)stringArrayFromObject:(id)a3;
+ (id)stringFromObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addArrayOfStringsValue:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIntegerValue:(BOOL)a3;
- (void)setHasTimeIntervalSinceReferenceDateValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FPSearchableItemValue

+ (id)stringFromObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FPSearchableItemValue);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__FPSearchableItemValue_Helpers__stringFromObject___block_invoke;
  aBlock[3] = &unk_1E793C590;
  v5 = v4;
  v16 = v5;
  v6 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v3 objCType];
    v8 = *v7;
    if ((v8 == 100 || v8 == 102) && !v7[1])
    {
      [v3 doubleValue];
      [(FPSearchableItemValue *)v5 setDoubleValue:?];
    }

    else
    {
      -[FPSearchableItemValue setIntegerValue:](v5, "setIntegerValue:", [v3 longLongValue]);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(FPSearchableItemValue *)v5 setStringValue:v3];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 timeIntervalSinceReferenceDate];
        [(FPSearchableItemValue *)v5 setTimeIntervalSinceReferenceDateValue:?];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([FPSearchableItemValue stringArrayFromObject:v3], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v13 = v12;
            v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v12];
            [(FPSearchableItemValue *)v5 setArrayOfStringsValues:v14];
            v10 = v6[2](v6);
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_14;
        }

        v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
        [(FPSearchableItemValue *)v5 setNameComponents:v9];
      }
    }
  }

  v10 = v6[2](v6);
LABEL_14:

  return v10;
}

id __51__FPSearchableItemValue_Helpers__stringFromObject___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) data];
  v2 = [v1 base64EncodedStringWithOptions:0];

  return v2;
}

+ (id)stringArrayFromObject:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = fp_current_or_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            [(FPSearchableItemValue(Helpers) *)v8 stringArrayFromObject:v10];
          }

          v9 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = v3;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)objectFromString:(id)a3
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  v6 = [[FPSearchableItemValue alloc] initWithData:v5];
  if ([(FPSearchableItemValue *)v6 hasDoubleValue])
  {
    v7 = MEMORY[0x1E696AD98];
    [(FPSearchableItemValue *)v6 doubleValue];
    v8 = [v7 numberWithDouble:?];
LABEL_13:
    v13 = v8;
    goto LABEL_14;
  }

  if ([(FPSearchableItemValue *)v6 hasStringValue])
  {
    v8 = [(FPSearchableItemValue *)v6 stringValue];
    goto LABEL_13;
  }

  if ([(FPSearchableItemValue *)v6 hasIntegerValue])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[FPSearchableItemValue integerValue](v6, "integerValue")}];
    goto LABEL_13;
  }

  if ([(FPSearchableItemValue *)v6 hasTimeIntervalSinceReferenceDateValue])
  {
    v9 = MEMORY[0x1E695DF00];
    [(FPSearchableItemValue *)v6 timeIntervalSinceReferenceDateValue];
    v8 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_13;
  }

  if ([(FPSearchableItemValue *)v6 hasNameComponents])
  {
    v10 = MEMORY[0x1E696ACD0];
    v11 = objc_opt_class();
    v12 = [(FPSearchableItemValue *)v6 nameComponents];
    v13 = [v10 unarchivedObjectOfClass:v11 fromData:v12 error:0];

    goto LABEL_14;
  }

  if ([(FPSearchableItemValue *)v6 arrayOfStringsValuesCount])
  {
    v8 = [(FPSearchableItemValue *)v6 arrayOfStringsValues];
    goto LABEL_13;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (void)setHasIntegerValue:(BOOL)a3
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

- (void)setHasTimeIntervalSinceReferenceDateValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addArrayOfStringsValue:(id)a3
{
  v4 = a3;
  arrayOfStringsValues = self->_arrayOfStringsValues;
  v8 = v4;
  if (!arrayOfStringsValues)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_arrayOfStringsValues;
    self->_arrayOfStringsValues = v6;

    v4 = v8;
    arrayOfStringsValues = self->_arrayOfStringsValues;
  }

  [(NSMutableArray *)arrayOfStringsValues addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = FPSearchableItemValue;
  v4 = [(FPSearchableItemValue *)&v8 description];
  v5 = [(FPSearchableItemValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"stringValue"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_doubleValue];
    [v4 setObject:v11 forKey:@"doubleValue"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_integerValue];
  [v4 setObject:v12 forKey:@"integerValue"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeIntervalSinceReferenceDateValue];
    [v4 setObject:v7 forKey:@"timeIntervalSinceReferenceDateValue"];
  }

LABEL_7:
  nameComponents = self->_nameComponents;
  if (nameComponents)
  {
    [v4 setObject:nameComponents forKey:@"nameComponents"];
  }

  arrayOfStringsValues = self->_arrayOfStringsValues;
  if (arrayOfStringsValues)
  {
    [v4 setObject:arrayOfStringsValues forKey:@"arrayOfStringsValue"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  integerValue = self->_integerValue;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    timeIntervalSinceReferenceDateValue = self->_timeIntervalSinceReferenceDateValue;
    PBDataWriterWriteDoubleField();
  }

LABEL_7:
  if (self->_nameComponents)
  {
    PBDataWriterWriteDataField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_arrayOfStringsValues;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_stringValue)
  {
    [v4 setStringValue:?];
    v4 = v10;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_doubleValue;
    *(v4 + 56) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 2) = self->_integerValue;
  *(v4 + 56) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(v4 + 3) = *&self->_timeIntervalSinceReferenceDateValue;
    *(v4 + 56) |= 4u;
  }

LABEL_7:
  if (self->_nameComponents)
  {
    [v10 setNameComponents:?];
  }

  if ([(FPSearchableItemValue *)self arrayOfStringsValuesCount])
  {
    [v10 clearArrayOfStringsValues];
    v6 = [(FPSearchableItemValue *)self arrayOfStringsValuesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(FPSearchableItemValue *)self arrayOfStringsValueAtIndex:i];
        [v10 addArrayOfStringsValue:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_doubleValue;
    *(v5 + 56) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_integerValue;
  *(v5 + 56) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_timeIntervalSinceReferenceDateValue;
    *(v5 + 56) |= 4u;
  }

LABEL_5:
  v9 = [(NSData *)self->_nameComponents copyWithZone:a3];
  v10 = *(v5 + 40);
  *(v5 + 40) = v9;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_arrayOfStringsValues;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{a3, v19}];
        [v5 addArrayOfStringsValue:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 6))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v6 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_doubleValue != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_integerValue != *(v4 + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_timeIntervalSinceReferenceDateValue != *(v4 + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_23;
  }

  nameComponents = self->_nameComponents;
  if (nameComponents | *(v4 + 5) && ![(NSData *)nameComponents isEqual:?])
  {
    goto LABEL_23;
  }

  arrayOfStringsValues = self->_arrayOfStringsValues;
  if (arrayOfStringsValues | *(v4 + 4))
  {
    v9 = [(NSMutableArray *)arrayOfStringsValues isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_24:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stringValue hash];
  if (*&self->_has)
  {
    doubleValue = self->_doubleValue;
    if (doubleValue < 0.0)
    {
      doubleValue = -doubleValue;
    }

    *v4.i64 = floor(doubleValue + 0.5);
    v8 = (doubleValue - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_integerValue;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v10 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  timeIntervalSinceReferenceDateValue = self->_timeIntervalSinceReferenceDateValue;
  if (timeIntervalSinceReferenceDateValue < 0.0)
  {
    timeIntervalSinceReferenceDateValue = -timeIntervalSinceReferenceDateValue;
  }

  *v4.i64 = floor(timeIntervalSinceReferenceDateValue + 0.5);
  v12 = (timeIntervalSinceReferenceDateValue - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_17:
  v15 = v6 ^ v3 ^ v10 ^ v14 ^ [(NSData *)self->_nameComponents hash];
  return v15 ^ [(NSMutableArray *)self->_arrayOfStringsValues hash];
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 6))
  {
    [(FPSearchableItemValue *)self setStringValue:?];
  }

  v5 = *(v4 + 56);
  if (v5)
  {
    self->_doubleValue = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 56);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 56) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_integerValue = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 56) & 4) != 0)
  {
LABEL_6:
    self->_timeIntervalSinceReferenceDateValue = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_7:
  if (*(v4 + 5))
  {
    [(FPSearchableItemValue *)self setNameComponents:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 4);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(FPSearchableItemValue *)self addArrayOfStringsValue:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end