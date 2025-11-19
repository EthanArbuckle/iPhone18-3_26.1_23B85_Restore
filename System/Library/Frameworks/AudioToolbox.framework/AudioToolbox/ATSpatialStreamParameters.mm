@interface ATSpatialStreamParameters
- (ATSpatialStreamParameters)init;
- (BOOL)enableStreamWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initInternalWithFormat:(id)a3;
- (void)disableStream;
@end

@implementation ATSpatialStreamParameters

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSUUID *)self->_identifier UUIDString];
  v5 = [v4 UTF8String];
  v6 = [(AVAudioFormat *)self->_format description];
  v7 = [v3 stringWithFormat:@"<params@%p: id %s, format %s>", self, v5, objc_msgSend(v6, "UTF8String")];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
LABEL_12:

    return v12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [(ATSpatialStreamParameters *)self isEnabled];
  if (v6 != [(ATSpatialStreamParameters *)v5 isEnabled])
  {
    goto LABEL_10;
  }

  if (self->_identifier)
  {
    v7 = [(ATSpatialStreamParameters *)v5 identifier];

    if (v7)
    {
      identifier = self->_identifier;
      v9 = [(ATSpatialStreamParameters *)v5 identifier];
      LOBYTE(identifier) = [(NSUUID *)identifier isEqual:v9];

      if (identifier)
      {
        format = self->_format;
        v11 = [(ATSpatialStreamParameters *)v5 format];
        v12 = [(AVAudioFormat *)format isEqual:v11];

LABEL_11:
        goto LABEL_12;
      }

LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)disableStream
{
  identifier = self->_identifier;
  self->_identifier = 0;
  MEMORY[0x1EEE66BB8]();
}

- (BOOL)enableStreamWithIdentifier:(id)a3 error:(id *)a4
{
  v7 = a3;
  identifier = self->_identifier;
  p_identifier = &self->_identifier;
  v8 = identifier;
  if (!identifier)
  {
    goto LABEL_4;
  }

  if (([(NSUUID *)v8 isEqual:v7]& 1) != 0)
  {
    if (*p_identifier)
    {
LABEL_5:
      if (a4)
      {
        *a4 = 0;
      }

      LOBYTE(a4) = 1;
      goto LABEL_10;
    }

LABEL_4:
    objc_storeStrong(p_identifier, a3);
    goto LABEL_5;
  }

  if (a4)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    *a4 = v11;

    LOBYTE(a4) = 0;
  }

LABEL_10:

  return a4;
}

- (id)initInternalWithFormat:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ATSpatialStreamParameters;
  v6 = [(ATSpatialStreamParameters *)&v10 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    identifier = v6->_identifier;
    v6->_identifier = 0;

    objc_storeStrong(p_isa + 2, a3);
  }

  return p_isa;
}

- (ATSpatialStreamParameters)init
{
  [(ATSpatialStreamParameters *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end