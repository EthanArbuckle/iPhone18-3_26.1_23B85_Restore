@interface _INPBSpeakerIDInfo
- (BOOL)isEqual:(id)equal;
- (_INPBSpeakerIDInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsSpeakerIDConfidence:(id)confidence;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSpeakerIDConfidence:(int)confidence;
- (void)writeTo:(id)to;
@end

@implementation _INPBSpeakerIDInfo

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  sharedUserID = [(_INPBSpeakerIDInfo *)self sharedUserID];
  dictionaryRepresentation = [sharedUserID dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sharedUserID"];

  if ([(_INPBSpeakerIDInfo *)self hasSpeakerIDConfidence])
  {
    speakerIDConfidence = [(_INPBSpeakerIDInfo *)self speakerIDConfidence];
    if (speakerIDConfidence >= 6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", speakerIDConfidence];
    }

    else
    {
      v7 = *(&off_1E7287A38 + speakerIDConfidence);
    }

    [dictionary setObject:v7 forKeyedSubscript:@"speakerIDConfidence"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_sharedUserID hash];
  if ([(_INPBSpeakerIDInfo *)self hasSpeakerIDConfidence])
  {
    v4 = 2654435761 * self->_speakerIDConfidence;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  sharedUserID = [(_INPBSpeakerIDInfo *)self sharedUserID];
  sharedUserID2 = [equalCopy sharedUserID];
  v7 = sharedUserID2;
  if ((sharedUserID != 0) != (sharedUserID2 == 0))
  {
    sharedUserID3 = [(_INPBSpeakerIDInfo *)self sharedUserID];
    if (sharedUserID3)
    {
      v9 = sharedUserID3;
      sharedUserID4 = [(_INPBSpeakerIDInfo *)self sharedUserID];
      sharedUserID5 = [equalCopy sharedUserID];
      v12 = [sharedUserID4 isEqual:sharedUserID5];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    hasSpeakerIDConfidence = [(_INPBSpeakerIDInfo *)self hasSpeakerIDConfidence];
    if (hasSpeakerIDConfidence == [equalCopy hasSpeakerIDConfidence])
    {
      if (!-[_INPBSpeakerIDInfo hasSpeakerIDConfidence](self, "hasSpeakerIDConfidence") || ![equalCopy hasSpeakerIDConfidence] || (speakerIDConfidence = self->_speakerIDConfidence, speakerIDConfidence == objc_msgSend(equalCopy, "speakerIDConfidence")))
      {
        v14 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSpeakerIDInfo allocWithZone:](_INPBSpeakerIDInfo init];
  v6 = [(_INPBString *)self->_sharedUserID copyWithZone:zone];
  [(_INPBSpeakerIDInfo *)v5 setSharedUserID:v6];

  if ([(_INPBSpeakerIDInfo *)self hasSpeakerIDConfidence])
  {
    [(_INPBSpeakerIDInfo *)v5 setSpeakerIDConfidence:[(_INPBSpeakerIDInfo *)self speakerIDConfidence]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSpeakerIDInfo *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSpeakerIDInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSpeakerIDInfo *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  sharedUserID = [(_INPBSpeakerIDInfo *)self sharedUserID];

  if (sharedUserID)
  {
    sharedUserID2 = [(_INPBSpeakerIDInfo *)self sharedUserID];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSpeakerIDInfo *)self hasSpeakerIDConfidence])
  {
    speakerIDConfidence = self->_speakerIDConfidence;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsSpeakerIDConfidence:(id)confidence
{
  confidenceCopy = confidence;
  if ([confidenceCopy isEqualToString:@"UNKNOWN_CONFIDENCE"])
  {
    v4 = 0;
  }

  else if ([confidenceCopy isEqualToString:@"FULL_CONFIDENCE"])
  {
    v4 = 1;
  }

  else if ([confidenceCopy isEqualToString:@"HIGH_CONFIDENCE"])
  {
    v4 = 2;
  }

  else if ([confidenceCopy isEqualToString:@"MEDIUM_CONFIDENCE"])
  {
    v4 = 3;
  }

  else if ([confidenceCopy isEqualToString:@"AMBIGUOUS_CONFIDENCE"])
  {
    v4 = 4;
  }

  else if ([confidenceCopy isEqualToString:@"NO_CONFIDENCE"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSpeakerIDConfidence:(int)confidence
{
  has = self->_has;
  if (confidence == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_speakerIDConfidence = confidence;
  }
}

@end