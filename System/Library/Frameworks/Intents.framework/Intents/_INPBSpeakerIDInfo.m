@interface _INPBSpeakerIDInfo
- (BOOL)isEqual:(id)a3;
- (_INPBSpeakerIDInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsSpeakerIDConfidence:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSpeakerIDConfidence:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSpeakerIDInfo

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSpeakerIDInfo *)self sharedUserID];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"sharedUserID"];

  if ([(_INPBSpeakerIDInfo *)self hasSpeakerIDConfidence])
  {
    v6 = [(_INPBSpeakerIDInfo *)self speakerIDConfidence];
    if (v6 >= 6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = *(&off_1E7287A38 + v6);
    }

    [v3 setObject:v7 forKeyedSubscript:@"speakerIDConfidence"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [(_INPBSpeakerIDInfo *)self sharedUserID];
  v6 = [v4 sharedUserID];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(_INPBSpeakerIDInfo *)self sharedUserID];
    if (v8)
    {
      v9 = v8;
      v10 = [(_INPBSpeakerIDInfo *)self sharedUserID];
      v11 = [v4 sharedUserID];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = [(_INPBSpeakerIDInfo *)self hasSpeakerIDConfidence];
    if (v13 == [v4 hasSpeakerIDConfidence])
    {
      if (!-[_INPBSpeakerIDInfo hasSpeakerIDConfidence](self, "hasSpeakerIDConfidence") || ![v4 hasSpeakerIDConfidence] || (speakerIDConfidence = self->_speakerIDConfidence, speakerIDConfidence == objc_msgSend(v4, "speakerIDConfidence")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSpeakerIDInfo allocWithZone:](_INPBSpeakerIDInfo init];
  v6 = [(_INPBString *)self->_sharedUserID copyWithZone:a3];
  [(_INPBSpeakerIDInfo *)v5 setSharedUserID:v6];

  if ([(_INPBSpeakerIDInfo *)self hasSpeakerIDConfidence])
  {
    [(_INPBSpeakerIDInfo *)v5 setSpeakerIDConfidence:[(_INPBSpeakerIDInfo *)self speakerIDConfidence]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSpeakerIDInfo *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSpeakerIDInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSpeakerIDInfo *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_INPBSpeakerIDInfo *)self sharedUserID];

  if (v4)
  {
    v5 = [(_INPBSpeakerIDInfo *)self sharedUserID];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSpeakerIDInfo *)self hasSpeakerIDConfidence])
  {
    speakerIDConfidence = self->_speakerIDConfidence;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsSpeakerIDConfidence:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_CONFIDENCE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FULL_CONFIDENCE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HIGH_CONFIDENCE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MEDIUM_CONFIDENCE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AMBIGUOUS_CONFIDENCE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NO_CONFIDENCE"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSpeakerIDConfidence:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_speakerIDConfidence = a3;
  }
}

@end