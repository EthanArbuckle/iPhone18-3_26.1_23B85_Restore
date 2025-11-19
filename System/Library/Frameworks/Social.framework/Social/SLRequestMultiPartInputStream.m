@interface SLRequestMultiPartInputStream
- (SLRequestMultiPartInputStream)initWithMultiPart:(id)a3;
- (int64_t)currentStateRead:(char *)a3 maxLength:(unint64_t)a4;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (unint64_t)readStateSourceData:(id)a3 toBuffer:(char *)a4 offset:(unint64_t)a5 maxLength:(unint64_t)a6;
- (void)transitionState;
@end

@implementation SLRequestMultiPartInputStream

- (SLRequestMultiPartInputStream)initWithMultiPart:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SLRequestMultiPartInputStream;
  v6 = [(SLRequestMultiPartInputStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_multiPart, a3);
    v7->_streamStatus = 0;
    [(SLRequestMultiPartInputStream *)v7 transitionState];
  }

  return v7;
}

- (void)transitionState
{
  self->_bytesReadInState = 0;
  v12 = [(SLRequestMultiPart *)self->_multiPart uniqueIdentifier];
  currentState = self->_currentState;
  _SLLog(v2, 6, @"MultipartStream %@ transitioning from state %d");

  v4 = self->_currentState;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v10 = [(SLRequestMultiPart *)self->_multiPart payloadEpilogue:v12];
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
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"MultipartInputStream in unexpected state", v12, currentState}];
    goto LABEL_12;
  }

  if (!v4)
  {
    v8 = [(SLRequestMultiPart *)self->_multiPart payloadPreamble:v12];
    v9 = self->_srcData;
    self->_srcData = v8;

    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_srcData encoding:4];
    _SLLog(v2, 6, @"Preamble for stream %@");

    v7 = 1;
    goto LABEL_11;
  }

  if (v4 != 1)
  {
    goto LABEL_8;
  }

  v5 = [(SLRequestMultiPart *)self->_multiPart payload:v12];
  v6 = self->_srcData;
  self->_srcData = v5;

  v7 = 2;
LABEL_11:
  self->_currentState = v7;
LABEL_12:
  v13 = [(SLRequestMultiPart *)self->_multiPart uniqueIdentifier];
  _SLLog(v2, 6, @"MultipartStream %@ transitioned to state %d");
}

- (unint64_t)readStateSourceData:(id)a3 toBuffer:(char *)a4 offset:(unint64_t)a5 maxLength:(unint64_t)a6
{
  v10 = a3;
  v11 = self->_bytesReadInState + a6;
  if (v11 <= [v10 length])
  {
    bytesReadInState = self->_bytesReadInState;
  }

  else
  {
    v12 = [v10 length];
    bytesReadInState = self->_bytesReadInState;
    a6 = v12 - bytesReadInState;
  }

  [v10 getBytes:a4 range:{bytesReadInState, a6}];
  v14 = [(SLRequestMultiPart *)self->_multiPart uniqueIdentifier];
  v17.location = self->_bytesReadInState;
  v17.length = a6;
  v16 = NSStringFromRange(v17);
  _SLLog(v6, 6, @"MultipartStream %@ read %u bytes in range %@ in state %d");

  return a6;
}

- (int64_t)currentStateRead:(char *)a3 maxLength:(unint64_t)a4
{
  v5 = [(SLRequestMultiPartInputStream *)self readStateSourceData:self->_srcData toBuffer:a3 offset:self->_bytesReadInState maxLength:a4];
  v6 = self->_bytesReadInState + v5;
  self->_bytesReadInState = v6;
  if (v6 == [(NSData *)self->_srcData length])
  {
    [(SLRequestMultiPartInputStream *)self transitionState];
  }

  return v5;
}

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  if (self->_currentState == 4)
  {
    return 0;
  }

  else
  {
    return [(SLRequestMultiPartInputStream *)self currentStateRead:a3 maxLength:a4];
  }
}

@end