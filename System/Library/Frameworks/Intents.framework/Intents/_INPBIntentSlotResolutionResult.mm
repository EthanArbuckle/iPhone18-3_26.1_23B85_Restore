@interface _INPBIntentSlotResolutionResult
- (BOOL)isEqual:(id)a3;
- (_INPBIntentSlotResolutionResult)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBIntentSlotResolutionResult

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"_payloadConfirmation"];

  v6 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"_payloadNeedsDisambiguation"];

  v8 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"_payloadNeedsExecuteIntent"];

  v10 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"_payloadNeedsValue"];

  v12 = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"_payloadSuccess"];

  v14 = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"_payloadUnsupported"];

  if ([(_INPBIntentSlotResolutionResult *)self hasType])
  {
    v16 = [(_INPBIntentSlotResolutionResult *)self type];
    v17 = v16 - 1;
    if (v16 - 1) < 0xB && ((0x7EFu >> v17))
    {
      v18 = off_1E7283B28[v17];
    }

    else
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
    }

    [v3 setObject:v18 forKeyedSubscript:@"type"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBPayloadConfirmation *)self->_payloadConfirmation hash];
  v4 = [(_INPBPayloadNeedsDisambiguation *)self->_payloadNeedsDisambiguation hash];
  v5 = [(_INPBPayloadNeedsExecuteIntent *)self->_payloadNeedsExecuteIntent hash];
  v6 = [(_INPBPayloadNeedsValue *)self->_payloadNeedsValue hash];
  v7 = [(_INPBPayloadSuccess *)self->_payloadSuccess hash];
  v8 = [(_INPBPayloadUnsupported *)self->_payloadUnsupported hash];
  if ([(_INPBIntentSlotResolutionResult *)self hasType])
  {
    v9 = 2654435761 * self->_type;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];
  v6 = [v4 payloadConfirmation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];
    v10 = [v4 payloadConfirmation];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];
  v6 = [v4 payloadNeedsDisambiguation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];
    v15 = [v4 payloadNeedsDisambiguation];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];
  v6 = [v4 payloadNeedsExecuteIntent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];
    v20 = [v4 payloadNeedsExecuteIntent];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];
  v6 = [v4 payloadNeedsValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];
    v25 = [v4 payloadNeedsValue];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];
  v6 = [v4 payloadSuccess];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];
    v30 = [v4 payloadSuccess];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];
  v6 = [v4 payloadUnsupported];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  v32 = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];
    v35 = [v4 payloadUnsupported];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v39 = [(_INPBIntentSlotResolutionResult *)self hasType];
  if (v39 == [v4 hasType])
  {
    if (!-[_INPBIntentSlotResolutionResult hasType](self, "hasType") || ![v4 hasType] || (type = self->_type, type == objc_msgSend(v4, "type")))
    {
      v37 = 1;
      goto LABEL_33;
    }
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBIntentSlotResolutionResult allocWithZone:](_INPBIntentSlotResolutionResult init];
  v6 = [(_INPBPayloadConfirmation *)self->_payloadConfirmation copyWithZone:a3];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadConfirmation:v6];

  v7 = [(_INPBPayloadNeedsDisambiguation *)self->_payloadNeedsDisambiguation copyWithZone:a3];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadNeedsDisambiguation:v7];

  v8 = [(_INPBPayloadNeedsExecuteIntent *)self->_payloadNeedsExecuteIntent copyWithZone:a3];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadNeedsExecuteIntent:v8];

  v9 = [(_INPBPayloadNeedsValue *)self->_payloadNeedsValue copyWithZone:a3];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadNeedsValue:v9];

  v10 = [(_INPBPayloadSuccess *)self->_payloadSuccess copyWithZone:a3];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadSuccess:v10];

  v11 = [(_INPBPayloadUnsupported *)self->_payloadUnsupported copyWithZone:a3];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadUnsupported:v11];

  if ([(_INPBIntentSlotResolutionResult *)self hasType])
  {
    [(_INPBIntentSlotResolutionResult *)v5 setType:[(_INPBIntentSlotResolutionResult *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentSlotResolutionResult *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentSlotResolutionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentSlotResolutionResult *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];

  if (v4)
  {
    v5 = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];

  if (v6)
  {
    v7 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];

  if (v8)
  {
    v9 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];

  if (v10)
  {
    v11 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];

  if (v12)
  {
    v13 = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];

  if (v14)
  {
    v15 = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBIntentSlotResolutionResult *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Success"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Unsupported"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NeedsValue"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NeedsDisambiguation"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NeedsConfirmation"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"NotRequired"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CallerToResolve"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CalleeNotImplemented"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"AuthenticationRequired"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"NeedsExecuteIntent"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = a3;
  }
}

@end