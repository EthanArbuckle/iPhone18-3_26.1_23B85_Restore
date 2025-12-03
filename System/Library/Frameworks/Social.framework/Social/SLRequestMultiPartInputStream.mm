@interface SLRequestMultiPartInputStream
- (SLRequestMultiPartInputStream)initWithMultiPart:(id)part;
- (int64_t)currentStateRead:(char *)read maxLength:(unint64_t)length;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (unint64_t)readStateSourceData:(id)data toBuffer:(char *)buffer offset:(unint64_t)offset maxLength:(unint64_t)length;
- (void)transitionState;
@end

@implementation SLRequestMultiPartInputStream

- (SLRequestMultiPartInputStream)initWithMultiPart:(id)part
{
  partCopy = part;
  v9.receiver = self;
  v9.super_class = SLRequestMultiPartInputStream;
  v6 = [(SLRequestMultiPartInputStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_multiPart, part);
    v7->_streamStatus = 0;
    [(SLRequestMultiPartInputStream *)v7 transitionState];
  }

  return v7;
}

- (void)transitionState
{
  self->_bytesReadInState = 0;
  uniqueIdentifier = [(SLRequestMultiPart *)self->_multiPart uniqueIdentifier];
  currentState = self->_currentState;
  _SLLog(v2, 6, @"MultipartStream %@ transitioning from state %d");

  v4 = self->_currentState;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v10 = [(SLRequestMultiPart *)self->_multiPart payloadEpilogue:uniqueIdentifier];
      srcData = self->_srcData;
      self->_srcData = v10;

      v7 = 3;
      goto LABEL_11;
    }

    if (v4 == 3)
    {
      v7 = 4;
      goto LABEL_11;
    }

LABEL_8:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"MultipartInputStream in unexpected state", uniqueIdentifier, currentState}];
    goto LABEL_12;
  }

  if (!v4)
  {
    v8 = [(SLRequestMultiPart *)self->_multiPart payloadPreamble:uniqueIdentifier];
    v9 = self->_srcData;
    self->_srcData = v8;

    uniqueIdentifier = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_srcData encoding:4];
    _SLLog(v2, 6, @"Preamble for stream %@");

    v7 = 1;
    goto LABEL_11;
  }

  if (v4 != 1)
  {
    goto LABEL_8;
  }

  v5 = [(SLRequestMultiPart *)self->_multiPart payload:uniqueIdentifier];
  v6 = self->_srcData;
  self->_srcData = v5;

  v7 = 2;
LABEL_11:
  self->_currentState = v7;
LABEL_12:
  uniqueIdentifier2 = [(SLRequestMultiPart *)self->_multiPart uniqueIdentifier];
  _SLLog(v2, 6, @"MultipartStream %@ transitioned to state %d");
}

- (unint64_t)readStateSourceData:(id)data toBuffer:(char *)buffer offset:(unint64_t)offset maxLength:(unint64_t)length
{
  dataCopy = data;
  v11 = self->_bytesReadInState + length;
  if (v11 <= [dataCopy length])
  {
    bytesReadInState = self->_bytesReadInState;
  }

  else
  {
    v12 = [dataCopy length];
    bytesReadInState = self->_bytesReadInState;
    length = v12 - bytesReadInState;
  }

  [dataCopy getBytes:buffer range:{bytesReadInState, length}];
  uniqueIdentifier = [(SLRequestMultiPart *)self->_multiPart uniqueIdentifier];
  v17.location = self->_bytesReadInState;
  v17.length = length;
  v16 = NSStringFromRange(v17);
  _SLLog(v6, 6, @"MultipartStream %@ read %u bytes in range %@ in state %d");

  return length;
}

- (int64_t)currentStateRead:(char *)read maxLength:(unint64_t)length
{
  v5 = [(SLRequestMultiPartInputStream *)self readStateSourceData:self->_srcData toBuffer:read offset:self->_bytesReadInState maxLength:length];
  v6 = self->_bytesReadInState + v5;
  self->_bytesReadInState = v6;
  if (v6 == [(NSData *)self->_srcData length])
  {
    [(SLRequestMultiPartInputStream *)self transitionState];
  }

  return v5;
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  if (self->_currentState == 4)
  {
    return 0;
  }

  else
  {
    return [(SLRequestMultiPartInputStream *)self currentStateRead:read maxLength:length];
  }
}

@end