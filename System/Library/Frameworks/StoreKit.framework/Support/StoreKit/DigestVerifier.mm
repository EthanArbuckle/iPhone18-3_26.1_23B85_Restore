@interface DigestVerifier
- (BOOL)_validateAndResetDigestError:(id *)error;
- (BOOL)verifyBuffer:(const char *)buffer length:(unint64_t)length error:(id *)error;
- (BOOL)verifyData:(id)data error:(id *)error;
- (DigestVerifier)initWithChunkedDigest:(id)digest resumptionOffset:(unint64_t)offset;
- (DigestVerifier)initWithDigest:(id)digest type:(int64_t)type;
- (void)_hashData:(id)data;
@end

@implementation DigestVerifier

- (DigestVerifier)initWithChunkedDigest:(id)digest resumptionOffset:(unint64_t)offset
{
  digestCopy = digest;
  v14.receiver = self;
  v14.super_class = DigestVerifier;
  v7 = [(DigestVerifier *)&v14 init];
  if (v7)
  {
    v8 = [digestCopy copy];
    digest = v7->_digest;
    v7->_digest = v8;

    v7->_bytesProcessed = offset;
    v7->_bytesValidated = offset;
    chunkSize = [(ChunkedDigest *)v7->_digest chunkSize];
    if (chunkSize)
    {
      v7->_index = offset / chunkSize;
      if (offset % chunkSize)
      {
LABEL_7:
        v7->_valid = 1;
        goto LABEL_8;
      }
    }

    else
    {
      v7->_index = 0;
    }

    v11 = [[HashDigest alloc] initWithDigestType:[(ChunkedDigest *)v7->_digest chunkType]];
    hashDigest = v7->_hashDigest;
    v7->_hashDigest = v11;

    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

- (DigestVerifier)initWithDigest:(id)digest type:(int64_t)type
{
  digestCopy = digest;
  v7 = objc_alloc_init(ChunkedDigest);
  [(ChunkedDigest *)v7 setChunkType:type];
  [(ChunkedDigest *)v7 setChunkSize:0];
  v11 = digestCopy;
  v8 = [NSArray arrayWithObjects:&v11 count:1];

  [(ChunkedDigest *)v7 setChunkDigests:v8];
  v9 = [(DigestVerifier *)self initWithChunkedDigest:v7 resumptionOffset:0];

  return v9;
}

- (BOOL)verifyBuffer:(const char *)buffer length:(unint64_t)length error:(id *)error
{
  if (self->_valid)
  {
    if ([(ChunkedDigest *)self->_digest chunkSize]&& (v9 = [(ChunkedDigest *)self->_digest chunkSize], bytesProcessed = self->_bytesProcessed, v11 = [(ChunkedDigest *)self->_digest chunkSize], v12 = v9 + (bytesProcessed / v11) * v11 - bytesProcessed, length >= v12))
    {
      [(DigestVerifier *)self _hashBuffer:buffer length:v12];
      if (![(DigestVerifier *)self _validateAndResetDigestError:error])
      {
        return 0;
      }

      bufferCopy = &buffer[v12];
      selfCopy2 = self;
      lengthCopy = length - v12;
    }

    else
    {
      selfCopy2 = self;
      bufferCopy = buffer;
      lengthCopy = length;
    }

    [(DigestVerifier *)selfCopy2 _hashBuffer:bufferCopy length:lengthCopy];
    return self->_valid;
  }

  else
  {
    return 0;
  }
}

- (BOOL)verifyData:(id)data error:(id *)error
{
  dataCopy = data;
  if (!self->_valid)
  {
    goto LABEL_8;
  }

  if ([(ChunkedDigest *)self->_digest chunkSize])
  {
    chunkSize = [(ChunkedDigest *)self->_digest chunkSize];
    bytesProcessed = self->_bytesProcessed;
    chunkSize2 = [(ChunkedDigest *)self->_digest chunkSize];
    v10 = chunkSize + (bytesProcessed / chunkSize2) * chunkSize2 - bytesProcessed;
    if ([dataCopy length] >= v10)
    {
      v12 = [dataCopy subdataWithRange:{0, v10}];
      [(DigestVerifier *)self _hashData:v12];

      if ([(DigestVerifier *)self _validateAndResetDigestError:error])
      {
        chunkSize3 = [(ChunkedDigest *)self->_digest chunkSize];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000690B4;
        v15[3] = &unk_100382B28;
        v15[4] = self;
        v15[5] = error;
        [dataCopy lib_enumerateSubdataWithOffset:v10 length:chunkSize3 usingBlock:v15];
        goto LABEL_5;
      }

LABEL_8:
      valid = 0;
      goto LABEL_9;
    }
  }

  [(DigestVerifier *)self _hashData:dataCopy];
LABEL_5:
  valid = self->_valid;
LABEL_9:

  return valid;
}

- (void)_hashData:(id)data
{
  dataCopy = data;
  self->_bytesProcessed += [dataCopy length];
  [(HashDigest *)self->_hashDigest updateWithData:dataCopy];
}

- (BOOL)_validateAndResetDigestError:(id *)error
{
  finalAndCompute = [(HashDigest *)self->_hashDigest finalAndCompute];
  index = self->_index;
  chunkDigests = [(ChunkedDigest *)self->_digest chunkDigests];
  v8 = [chunkDigests count];

  if (index >= v8)
  {
    v15 = self->_index;
    chunkDigests2 = [(ChunkedDigest *)self->_digest chunkDigests];
    if (v15 == [chunkDigests2 count])
    {
      bytesProcessed = self->_bytesProcessed;
      bytesValidated = self->_bytesValidated;

      if (bytesValidated == bytesProcessed)
      {
        goto LABEL_22;
      }

      if (!error)
      {
        goto LABEL_13;
      }
    }

    else
    {

      if (!error)
      {
        goto LABEL_13;
      }
    }

    *error = ASDErrorWithDescription();
LABEL_13:
    self->_valid = 0;
    goto LABEL_22;
  }

  if (!finalAndCompute)
  {
    if (qword_1003D4758 != -1)
    {
      sub_1002D0968();
    }

    v19 = off_1003CBAF0;
    if (os_log_type_enabled(off_1003CBAF0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_index;
      *buf = 134217984;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Skipped chunk digest at index %lu", buf, 0xCu);
    }

    self->_valid = 1;
    goto LABEL_21;
  }

  chunkDigests3 = [(ChunkedDigest *)self->_digest chunkDigests];
  v10 = [chunkDigests3 objectAtIndexedSubscript:self->_index];
  self->_valid = [finalAndCompute isEqualToString:v10];

  if (self->_valid)
  {
LABEL_21:
    self->_bytesValidated = self->_bytesProcessed;
    ++self->_index;
    goto LABEL_22;
  }

  if (qword_1003D4758 != -1)
  {
    sub_1002D0968();
  }

  v11 = off_1003CBAF0;
  if (!os_log_type_enabled(off_1003CBAF0, OS_LOG_TYPE_ERROR))
  {
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  digest = self->_digest;
  v26 = v11;
  chunkDigests4 = [(ChunkedDigest *)digest chunkDigests];
  v28 = [chunkDigests4 objectAtIndexedSubscript:self->_index];
  *buf = 138412546;
  v30 = finalAndCompute;
  v31 = 2112;
  v32 = v28;
  _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Invalid hash '%@' expected '%@'", buf, 0x16u);

  if (error)
  {
LABEL_8:
    chunkDigests5 = [(ChunkedDigest *)self->_digest chunkDigests];
    v13 = [chunkDigests5 objectAtIndexedSubscript:self->_index];
    v14 = [NSString stringWithFormat:@"Invalid hash '%@' expected '%@'", finalAndCompute, v13];

    *error = ASDErrorWithDescription();
  }

LABEL_22:
  if (self->_valid)
  {
    v21 = [[HashDigest alloc] initWithDigestType:[(ChunkedDigest *)self->_digest chunkType]];
  }

  else
  {
    v21 = 0;
  }

  hashDigest = self->_hashDigest;
  self->_hashDigest = v21;

  valid = self->_valid;
  return valid;
}

@end