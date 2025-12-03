@interface SWCollaborationClearNoticeTransmissionMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SWCollaborationClearNoticeTransmissionMessage

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SWCollaborationClearNoticeTransmissionMessage;
  v4 = [(SWCollaborationClearNoticeTransmissionMessage *)&v8 description];
  dictionaryRepresentation = [(SWCollaborationClearNoticeTransmissionMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  guidString = self->_guidString;
  if (guidString)
  {
    [dictionary setObject:guidString forKey:@"guidString"];
  }

  collaborationId = self->_collaborationId;
  if (collaborationId)
  {
    [dictionary setObject:collaborationId forKey:@"collaborationId"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateAsTimeIntervalSince1970];
  [dictionary setObject:v7 forKey:@"dateAsTimeIntervalSince1970"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  version = self->_version;
  v7 = toCopy;
  PBDataWriterWriteUint32Field();
  if (!self->_guidString)
  {
    [SWCollaborationClearNoticeTransmissionMessage writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_collaborationId)
  {
    [SWCollaborationClearNoticeTransmissionMessage writeTo:];
  }

  PBDataWriterWriteStringField();
  dateAsTimeIntervalSince1970 = self->_dateAsTimeIntervalSince1970;
  PBDataWriterWriteDoubleField();
}

- (void)copyTo:(id)to
{
  *(to + 8) = self->_version;
  guidString = self->_guidString;
  toCopy = to;
  [toCopy setGuidString:guidString];
  [toCopy setCollaborationId:self->_collaborationId];
  toCopy[1] = self->_dateAsTimeIntervalSince1970;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 32) = self->_version;
  v6 = [(NSString *)self->_guidString copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_collaborationId copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 8) = self->_dateAsTimeIntervalSince1970;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_version == *(equalCopy + 8) && ((guidString = self->_guidString, !(guidString | *(equalCopy + 3))) || -[NSString isEqual:](guidString, "isEqual:")) && ((collaborationId = self->_collaborationId, !(collaborationId | *(equalCopy + 2))) || -[NSString isEqual:](collaborationId, "isEqual:")) && self->_dateAsTimeIntervalSince1970 == *(equalCopy + 1);

  return v7;
}

- (unint64_t)hash
{
  version = self->_version;
  v4 = [(NSString *)self->_guidString hash];
  v5 = [(NSString *)self->_collaborationId hash];
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

  return v4 ^ v5 ^ (2654435761 * version) ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = *(fromCopy + 8);
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(SWCollaborationClearNoticeTransmissionMessage *)self setGuidString:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(SWCollaborationClearNoticeTransmissionMessage *)self setCollaborationId:?];
    fromCopy = v5;
  }

  self->_dateAsTimeIntervalSince1970 = *(fromCopy + 1);
}

@end