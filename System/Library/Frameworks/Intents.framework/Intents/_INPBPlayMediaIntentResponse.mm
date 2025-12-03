@interface _INPBPlayMediaIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBPlayMediaIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBPlayMediaIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  nowPlayingInfo = [(_INPBPlayMediaIntentResponse *)self nowPlayingInfo];
  dictionaryRepresentation = [nowPlayingInfo dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"nowPlayingInfo"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    nowPlayingInfo = [(_INPBPlayMediaIntentResponse *)self nowPlayingInfo];
    nowPlayingInfo2 = [equalCopy nowPlayingInfo];
    v7 = nowPlayingInfo2;
    if ((nowPlayingInfo != 0) != (nowPlayingInfo2 == 0))
    {
      nowPlayingInfo3 = [(_INPBPlayMediaIntentResponse *)self nowPlayingInfo];
      if (!nowPlayingInfo3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = nowPlayingInfo3;
      nowPlayingInfo4 = [(_INPBPlayMediaIntentResponse *)self nowPlayingInfo];
      nowPlayingInfo5 = [equalCopy nowPlayingInfo];
      v12 = [nowPlayingInfo4 isEqual:nowPlayingInfo5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPlayMediaIntentResponse allocWithZone:](_INPBPlayMediaIntentResponse init];
  v6 = [(_INPBDictionary *)self->_nowPlayingInfo copyWithZone:zone];
  [(_INPBPlayMediaIntentResponse *)v5 setNowPlayingInfo:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPlayMediaIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPlayMediaIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPlayMediaIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  nowPlayingInfo = [(_INPBPlayMediaIntentResponse *)self nowPlayingInfo];

  if (nowPlayingInfo)
  {
    nowPlayingInfo2 = [(_INPBPlayMediaIntentResponse *)self nowPlayingInfo];
    PBDataWriterWriteSubmessage();
  }
}

@end