@interface SWCollaborationNoticeTransmissionMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SWCollaborationNoticeTransmissionMessage

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SWCollaborationNoticeTransmissionMessage;
  v4 = [(SWCollaborationNoticeTransmissionMessage *)&v8 description];
  v5 = [(SWCollaborationNoticeTransmissionMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  guidString = self->_guidString;
  if (guidString)
  {
    [v3 setObject:guidString forKey:@"guidString"];
  }

  highlightChangeEvent = self->_highlightChangeEvent;
  if (highlightChangeEvent)
  {
    [v3 setObject:highlightChangeEvent forKey:@"highlightChangeEvent"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_highlightChangeEventType];
  [v3 setObject:v7 forKey:@"highlightChangeEventType"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateAsTimeIntervalSince1970];
  [v3 setObject:v8 forKey:@"dateAsTimeIntervalSince1970"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  version = self->_version;
  v8 = v4;
  PBDataWriterWriteUint32Field();
  if (!self->_guidString)
  {
    [SWCollaborationNoticeTransmissionMessage writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_highlightChangeEvent)
  {
    [SWCollaborationNoticeTransmissionMessage writeTo:];
  }

  PBDataWriterWriteDataField();
  highlightChangeEventType = self->_highlightChangeEventType;
  PBDataWriterWriteInt64Field();
  dateAsTimeIntervalSince1970 = self->_dateAsTimeIntervalSince1970;
  PBDataWriterWriteDoubleField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 10) = self->_version;
  guidString = self->_guidString;
  v5 = a3;
  [v5 setGuidString:guidString];
  [v5 setHighlightChangeEvent:self->_highlightChangeEvent];
  *(v5 + 2) = self->_highlightChangeEventType;
  *(v5 + 1) = *&self->_dateAsTimeIntervalSince1970;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_version;
  v6 = [(NSString *)self->_guidString copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_highlightChangeEvent copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 16) = self->_highlightChangeEventType;
  *(v5 + 8) = self->_dateAsTimeIntervalSince1970;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = [v4 isMemberOfClass:objc_opt_class()] && self->_version == *(v4 + 10) && ((guidString = self->_guidString, !(guidString | *(v4 + 3))) || -[NSString isEqual:](guidString, "isEqual:")) && ((highlightChangeEvent = self->_highlightChangeEvent, !(highlightChangeEvent | *(v4 + 4))) || -[NSData isEqual:](highlightChangeEvent, "isEqual:")) && self->_highlightChangeEventType == *(v4 + 2) && self->_dateAsTimeIntervalSince1970 == *(v4 + 1);

  return v7;
}

- (unint64_t)hash
{
  version = self->_version;
  v4 = [(NSString *)self->_guidString hash];
  v5 = [(NSData *)self->_highlightChangeEvent hash];
  dateAsTimeIntervalSince1970 = self->_dateAsTimeIntervalSince1970;
  if (dateAsTimeIntervalSince1970 < 0.0)
  {
    dateAsTimeIntervalSince1970 = -dateAsTimeIntervalSince1970;
  }

  *v6.i64 = floor(dateAsTimeIntervalSince1970 + 0.5);
  v9 = (dateAsTimeIntervalSince1970 - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v6.i64[0] = vbslq_s8(vnegq_f64(v10), v7, v6).i64[0];
  v11 = 2654435761u * *v6.i64;
  v12 = v11 + v9;
  if (v9 <= 0.0)
  {
    v12 = 2654435761u * *v6.i64;
  }

  v13 = v11 - fabs(v9);
  if (v9 >= 0.0)
  {
    v13 = v12;
  }

  return v4 ^ v5 ^ (2654435761 * version) ^ (2654435761 * self->_highlightChangeEventType) ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = *(v4 + 10);
  v5 = v4;
  if (*(v4 + 3))
  {
    [(SWCollaborationNoticeTransmissionMessage *)self setGuidString:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(SWCollaborationNoticeTransmissionMessage *)self setHighlightChangeEvent:?];
    v4 = v5;
  }

  self->_highlightChangeEventType = *(v4 + 2);
  self->_dateAsTimeIntervalSince1970 = *(v4 + 1);
}

@end