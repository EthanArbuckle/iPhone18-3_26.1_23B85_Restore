@interface ATSpatialStreamParameters
- (ATSpatialStreamParameters)init;
- (BOOL)enableStreamWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initInternalWithFormat:(id)format;
- (void)disableStream;
@end

@implementation ATSpatialStreamParameters

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  uTF8String = [uUIDString UTF8String];
  v6 = [(AVAudioFormat *)self->_format description];
  v7 = [v3 stringWithFormat:@"<params@%p: id %s, format %s>", self, uTF8String, objc_msgSend(v6, "UTF8String")];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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

  v5 = equalCopy;
  isEnabled = [(ATSpatialStreamParameters *)self isEnabled];
  if (isEnabled != [(ATSpatialStreamParameters *)v5 isEnabled])
  {
    goto LABEL_10;
  }

  if (self->_identifier)
  {
    identifier = [(ATSpatialStreamParameters *)v5 identifier];

    if (identifier)
    {
      identifier = self->_identifier;
      identifier2 = [(ATSpatialStreamParameters *)v5 identifier];
      LOBYTE(identifier) = [(NSUUID *)identifier isEqual:identifier2];

      if (identifier)
      {
        format = self->_format;
        format = [(ATSpatialStreamParameters *)v5 format];
        v12 = [(AVAudioFormat *)format isEqual:format];

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

- (BOOL)enableStreamWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  identifier = self->_identifier;
  p_identifier = &self->_identifier;
  identifierCopy2 = identifier;
  if (!identifier)
  {
    goto LABEL_4;
  }

  if (([(NSUUID *)identifierCopy2 isEqual:identifierCopy]& 1) != 0)
  {
    if (*p_identifier)
    {
LABEL_5:
      if (error)
      {
        *error = 0;
      }

      LOBYTE(error) = 1;
      goto LABEL_10;
    }

LABEL_4:
    objc_storeStrong(p_identifier, identifier);
    goto LABEL_5;
  }

  if (error)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    *error = v11;

    LOBYTE(error) = 0;
  }

LABEL_10:

  return error;
}

- (id)initInternalWithFormat:(id)format
{
  formatCopy = format;
  v10.receiver = self;
  v10.super_class = ATSpatialStreamParameters;
  v6 = [(ATSpatialStreamParameters *)&v10 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    identifier = v6->_identifier;
    v6->_identifier = 0;

    objc_storeStrong(p_isa + 2, format);
  }

  return p_isa;
}

- (ATSpatialStreamParameters)init
{
  [(ATSpatialStreamParameters *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end