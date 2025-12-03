@interface _INPBIntentSlotResolutionResult
- (BOOL)isEqual:(id)equal;
- (_INPBIntentSlotResolutionResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentSlotResolutionResult

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  payloadConfirmation = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];
  dictionaryRepresentation = [payloadConfirmation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"_payloadConfirmation"];

  payloadNeedsDisambiguation = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];
  dictionaryRepresentation2 = [payloadNeedsDisambiguation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"_payloadNeedsDisambiguation"];

  payloadNeedsExecuteIntent = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];
  dictionaryRepresentation3 = [payloadNeedsExecuteIntent dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"_payloadNeedsExecuteIntent"];

  payloadNeedsValue = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];
  dictionaryRepresentation4 = [payloadNeedsValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"_payloadNeedsValue"];

  payloadSuccess = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];
  dictionaryRepresentation5 = [payloadSuccess dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"_payloadSuccess"];

  payloadUnsupported = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];
  dictionaryRepresentation6 = [payloadUnsupported dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"_payloadUnsupported"];

  if ([(_INPBIntentSlotResolutionResult *)self hasType])
  {
    type = [(_INPBIntentSlotResolutionResult *)self type];
    v17 = type - 1;
    if (type - 1) < 0xB && ((0x7EFu >> v17))
    {
      v18 = off_1E7283B28[v17];
    }

    else
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    [dictionary setObject:v18 forKeyedSubscript:@"type"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  payloadConfirmation = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];
  payloadConfirmation2 = [equalCopy payloadConfirmation];
  if ((payloadConfirmation != 0) == (payloadConfirmation2 == 0))
  {
    goto LABEL_31;
  }

  payloadConfirmation3 = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];
  if (payloadConfirmation3)
  {
    v8 = payloadConfirmation3;
    payloadConfirmation4 = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];
    payloadConfirmation5 = [equalCopy payloadConfirmation];
    v11 = [payloadConfirmation4 isEqual:payloadConfirmation5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  payloadConfirmation = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];
  payloadConfirmation2 = [equalCopy payloadNeedsDisambiguation];
  if ((payloadConfirmation != 0) == (payloadConfirmation2 == 0))
  {
    goto LABEL_31;
  }

  payloadNeedsDisambiguation = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];
  if (payloadNeedsDisambiguation)
  {
    v13 = payloadNeedsDisambiguation;
    payloadNeedsDisambiguation2 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];
    payloadNeedsDisambiguation3 = [equalCopy payloadNeedsDisambiguation];
    v16 = [payloadNeedsDisambiguation2 isEqual:payloadNeedsDisambiguation3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  payloadConfirmation = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];
  payloadConfirmation2 = [equalCopy payloadNeedsExecuteIntent];
  if ((payloadConfirmation != 0) == (payloadConfirmation2 == 0))
  {
    goto LABEL_31;
  }

  payloadNeedsExecuteIntent = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];
  if (payloadNeedsExecuteIntent)
  {
    v18 = payloadNeedsExecuteIntent;
    payloadNeedsExecuteIntent2 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];
    payloadNeedsExecuteIntent3 = [equalCopy payloadNeedsExecuteIntent];
    v21 = [payloadNeedsExecuteIntent2 isEqual:payloadNeedsExecuteIntent3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  payloadConfirmation = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];
  payloadConfirmation2 = [equalCopy payloadNeedsValue];
  if ((payloadConfirmation != 0) == (payloadConfirmation2 == 0))
  {
    goto LABEL_31;
  }

  payloadNeedsValue = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];
  if (payloadNeedsValue)
  {
    v23 = payloadNeedsValue;
    payloadNeedsValue2 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];
    payloadNeedsValue3 = [equalCopy payloadNeedsValue];
    v26 = [payloadNeedsValue2 isEqual:payloadNeedsValue3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  payloadConfirmation = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];
  payloadConfirmation2 = [equalCopy payloadSuccess];
  if ((payloadConfirmation != 0) == (payloadConfirmation2 == 0))
  {
    goto LABEL_31;
  }

  payloadSuccess = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];
  if (payloadSuccess)
  {
    v28 = payloadSuccess;
    payloadSuccess2 = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];
    payloadSuccess3 = [equalCopy payloadSuccess];
    v31 = [payloadSuccess2 isEqual:payloadSuccess3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  payloadConfirmation = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];
  payloadConfirmation2 = [equalCopy payloadUnsupported];
  if ((payloadConfirmation != 0) == (payloadConfirmation2 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  payloadUnsupported = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];
  if (payloadUnsupported)
  {
    v33 = payloadUnsupported;
    payloadUnsupported2 = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];
    payloadUnsupported3 = [equalCopy payloadUnsupported];
    v36 = [payloadUnsupported2 isEqual:payloadUnsupported3];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  hasType = [(_INPBIntentSlotResolutionResult *)self hasType];
  if (hasType == [equalCopy hasType])
  {
    if (!-[_INPBIntentSlotResolutionResult hasType](self, "hasType") || ![equalCopy hasType] || (type = self->_type, type == objc_msgSend(equalCopy, "type")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentSlotResolutionResult allocWithZone:](_INPBIntentSlotResolutionResult init];
  v6 = [(_INPBPayloadConfirmation *)self->_payloadConfirmation copyWithZone:zone];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadConfirmation:v6];

  v7 = [(_INPBPayloadNeedsDisambiguation *)self->_payloadNeedsDisambiguation copyWithZone:zone];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadNeedsDisambiguation:v7];

  v8 = [(_INPBPayloadNeedsExecuteIntent *)self->_payloadNeedsExecuteIntent copyWithZone:zone];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadNeedsExecuteIntent:v8];

  v9 = [(_INPBPayloadNeedsValue *)self->_payloadNeedsValue copyWithZone:zone];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadNeedsValue:v9];

  v10 = [(_INPBPayloadSuccess *)self->_payloadSuccess copyWithZone:zone];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadSuccess:v10];

  v11 = [(_INPBPayloadUnsupported *)self->_payloadUnsupported copyWithZone:zone];
  [(_INPBIntentSlotResolutionResult *)v5 setPayloadUnsupported:v11];

  if ([(_INPBIntentSlotResolutionResult *)self hasType])
  {
    [(_INPBIntentSlotResolutionResult *)v5 setType:[(_INPBIntentSlotResolutionResult *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentSlotResolutionResult *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentSlotResolutionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentSlotResolutionResult *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  payloadConfirmation = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];

  if (payloadConfirmation)
  {
    payloadConfirmation2 = [(_INPBIntentSlotResolutionResult *)self payloadConfirmation];
    PBDataWriterWriteSubmessage();
  }

  payloadNeedsDisambiguation = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];

  if (payloadNeedsDisambiguation)
  {
    payloadNeedsDisambiguation2 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsDisambiguation];
    PBDataWriterWriteSubmessage();
  }

  payloadNeedsExecuteIntent = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];

  if (payloadNeedsExecuteIntent)
  {
    payloadNeedsExecuteIntent2 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsExecuteIntent];
    PBDataWriterWriteSubmessage();
  }

  payloadNeedsValue = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];

  if (payloadNeedsValue)
  {
    payloadNeedsValue2 = [(_INPBIntentSlotResolutionResult *)self payloadNeedsValue];
    PBDataWriterWriteSubmessage();
  }

  payloadSuccess = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];

  if (payloadSuccess)
  {
    payloadSuccess2 = [(_INPBIntentSlotResolutionResult *)self payloadSuccess];
    PBDataWriterWriteSubmessage();
  }

  payloadUnsupported = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];

  if (payloadUnsupported)
  {
    payloadUnsupported2 = [(_INPBIntentSlotResolutionResult *)self payloadUnsupported];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBIntentSlotResolutionResult *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Success"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Unsupported"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"NeedsValue"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"NeedsDisambiguation"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"NeedsConfirmation"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"NotRequired"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"CallerToResolve"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"CalleeNotImplemented"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"AuthenticationRequired"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"NeedsExecuteIntent"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = type;
  }
}

@end