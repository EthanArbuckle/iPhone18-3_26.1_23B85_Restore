@interface DigestVerifier
- (BOOL)_validateAndResetDigestError:(id *)a3;
- (BOOL)verifyBuffer:(const char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)verifyData:(id)a3 error:(id *)a4;
- (DigestVerifier)initWithChunkedDigest:(id)a3 resumptionOffset:(unint64_t)a4;
- (DigestVerifier)initWithDigest:(id)a3 type:(int64_t)a4;
- (void)_hashData:(id)a3;
@end

@implementation DigestVerifier

- (DigestVerifier)initWithChunkedDigest:(id)a3 resumptionOffset:(unint64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = DigestVerifier;
  v7 = [(DigestVerifier *)&v14 init];
  if (v7)
  {
    v8 = [v6 copy];
    digest = v7->_digest;
    v7->_digest = v8;

    v7->_bytesProcessed = a4;
    v7->_bytesValidated = a4;
    v10 = [(ChunkedDigest *)v7->_digest chunkSize];
    if (v10)
    {
      v7->_index = a4 / v10;
      if (a4 % v10)
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

- (DigestVerifier)initWithDigest:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(ChunkedDigest);
  [(ChunkedDigest *)v7 setChunkType:a4];
  [(ChunkedDigest *)v7 setChunkSize:0];
  v11 = v6;
  v8 = [NSArray arrayWithObjects:&v11 count:1];

  [(ChunkedDigest *)v7 setChunkDigests:v8];
  v9 = [(DigestVerifier *)self initWithChunkedDigest:v7 resumptionOffset:0];

  return v9;
}

- (BOOL)verifyBuffer:(const char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  if (self->_valid)
  {
    if ([(ChunkedDigest *)self->_digest chunkSize]&& (v9 = [(ChunkedDigest *)self->_digest chunkSize], bytesProcessed = self->_bytesProcessed, v11 = [(ChunkedDigest *)self->_digest chunkSize], v12 = v9 + (bytesProcessed / v11) * v11 - bytesProcessed, a4 >= v12))
    {
      [(DigestVerifier *)self _hashBuffer:a3 length:v12];
      if (![(DigestVerifier *)self _validateAndResetDigestError:a5])
      {
        return 0;
      }

      v14 = &a3[v12];
      v13 = self;
      v15 = a4 - v12;
    }

    else
    {
      v13 = self;
      v14 = a3;
      v15 = a4;
    }

    [(DigestVerifier *)v13 _hashBuffer:v14 length:v15];
    return self->_valid;
  }

  else
  {
    return 0;
  }
}

- (BOOL)verifyData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!self->_valid)
  {
    goto LABEL_8;
  }

  if ([(ChunkedDigest *)self->_digest chunkSize])
  {
    v7 = [(ChunkedDigest *)self->_digest chunkSize];
    bytesProcessed = self->_bytesProcessed;
    v9 = [(ChunkedDigest *)self->_digest chunkSize];
    v10 = v7 + (bytesProcessed / v9) * v9 - bytesProcessed;
    if ([v6 length] >= v10)
    {
      v12 = [v6 subdataWithRange:{0, v10}];
      [(DigestVerifier *)self _hashData:v12];

      if ([(DigestVerifier *)self _validateAndResetDigestError:a4])
      {
        v13 = [(ChunkedDigest *)self->_digest chunkSize];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000690B4;
        v15[3] = &unk_100382B28;
        v15[4] = self;
        v15[5] = a4;
        [v6 lib_enumerateSubdataWithOffset:v10 length:v13 usingBlock:v15];
        goto LABEL_5;
      }

LABEL_8:
      valid = 0;
      goto LABEL_9;
    }
  }

  [(DigestVerifier *)self _hashData:v6];
LABEL_5:
  valid = self->_valid;
LABEL_9:

  return valid;
}

- (void)_hashData:(id)a3
{
  v4 = a3;
  self->_bytesProcessed += [v4 length];
  [(HashDigest *)self->_hashDigest updateWithData:v4];
}

- (BOOL)_validateAndResetDigestError:(id *)a3
{
  v5 = [(HashDigest *)self->_hashDigest finalAndCompute];
  index = self->_index;
  v7 = [(ChunkedDigest *)self->_digest chunkDigests];
  v8 = [v7 count];

  if (index >= v8)
  {
    v15 = self->_index;
    v16 = [(ChunkedDigest *)self->_digest chunkDigests];
    if (v15 == [v16 count])
    {
      bytesProcessed = self->_bytesProcessed;
      bytesValidated = self->_bytesValidated;

      if (bytesValidated == bytesProcessed)
      {
        goto LABEL_22;
      }

      if (!a3)
      {
        goto LABEL_13;
      }
    }

    else
    {

      if (!a3)
      {
        goto LABEL_13;
      }
    }

    *a3 = ASDErrorWithDescription();
LABEL_13:
    self->_valid = 0;
    goto LABEL_22;
  }

  if (!v5)
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

  v9 = [(ChunkedDigest *)self->_digest chunkDigests];
  v10 = [v9 objectAtIndexedSubscript:self->_index];
  self->_valid = [v5 isEqualToString:v10];

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
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  digest = self->_digest;
  v26 = v11;
  v27 = [(ChunkedDigest *)digest chunkDigests];
  v28 = [v27 objectAtIndexedSubscript:self->_index];
  *buf = 138412546;
  v30 = v5;
  v31 = 2112;
  v32 = v28;
  _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Invalid hash '%@' expected '%@'", buf, 0x16u);

  if (a3)
  {
LABEL_8:
    v12 = [(ChunkedDigest *)self->_digest chunkDigests];
    v13 = [v12 objectAtIndexedSubscript:self->_index];
    v14 = [NSString stringWithFormat:@"Invalid hash '%@' expected '%@'", v5, v13];

    *a3 = ASDErrorWithDescription();
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