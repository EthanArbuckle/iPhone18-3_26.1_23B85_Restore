@interface AFMyriadPerceptualAudioHash
+ (id)newWithBuilder:(id)builder;
- (AFMyriadPerceptualAudioHash)initWithBuilder:(id)builder;
- (AFMyriadPerceptualAudioHash)initWithCoder:(id)coder;
- (AFMyriadPerceptualAudioHash)initWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation AFMyriadPerceptualAudioHash

- (AFMyriadPerceptualAudioHash)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadPerceptualAudioHash::data"];

  v6 = [(AFMyriadPerceptualAudioHash *)self initWithData:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      data = [(AFMyriadPerceptualAudioHash *)equalCopy data];
      data = self->_data;
      v7 = data == data || [(NSData *)data isEqual:data];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFMyriadPerceptualAudioHash;
  v5 = [(AFMyriadPerceptualAudioHash *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {data = (%llu bytes)}", v5, -[NSData length](self->_data, "length")];

  return v6;
}

- (AFMyriadPerceptualAudioHash)initWithData:(id)data
{
  dataCopy = data;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AFMyriadPerceptualAudioHash_initWithData___block_invoke;
  v8[3] = &unk_1E7342E50;
  v9 = dataCopy;
  v5 = dataCopy;
  v6 = [(AFMyriadPerceptualAudioHash *)self initWithBuilder:v8];

  return v6;
}

- (AFMyriadPerceptualAudioHash)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = AFMyriadPerceptualAudioHash;
  v5 = [(AFMyriadPerceptualAudioHash *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFMyriadPerceptualAudioHashMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFMyriadPerceptualAudioHashMutation *)v7 isDirty])
    {
      getData = [(_AFMyriadPerceptualAudioHashMutation *)v7 getData];
      v9 = [getData copy];
      data = v6->_data;
      v6->_data = v9;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFMyriadPerceptualAudioHashMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFMyriadPerceptualAudioHashMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFMyriadPerceptualAudioHash);
      getData = [(_AFMyriadPerceptualAudioHashMutation *)v5 getData];
      v8 = [getData copy];
      data = v6->_data;
      v6->_data = v8;
    }

    else
    {
      v6 = [(AFMyriadPerceptualAudioHash *)self copy];
    }
  }

  else
  {
    v6 = [(AFMyriadPerceptualAudioHash *)self copy];
  }

  return v6;
}

@end