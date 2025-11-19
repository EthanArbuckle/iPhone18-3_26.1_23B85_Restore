@interface AFMyriadPerceptualAudioHash
+ (id)newWithBuilder:(id)a3;
- (AFMyriadPerceptualAudioHash)initWithBuilder:(id)a3;
- (AFMyriadPerceptualAudioHash)initWithCoder:(id)a3;
- (AFMyriadPerceptualAudioHash)initWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation AFMyriadPerceptualAudioHash

- (AFMyriadPerceptualAudioHash)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadPerceptualAudioHash::data"];

  v6 = [(AFMyriadPerceptualAudioHash *)self initWithData:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AFMyriadPerceptualAudioHash *)v4 data];
      data = self->_data;
      v7 = data == v5 || [(NSData *)data isEqual:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFMyriadPerceptualAudioHash;
  v5 = [(AFMyriadPerceptualAudioHash *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {data = (%llu bytes)}", v5, -[NSData length](self->_data, "length")];

  return v6;
}

- (AFMyriadPerceptualAudioHash)initWithData:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AFMyriadPerceptualAudioHash_initWithData___block_invoke;
  v8[3] = &unk_1E7342E50;
  v9 = v4;
  v5 = v4;
  v6 = [(AFMyriadPerceptualAudioHash *)self initWithBuilder:v8];

  return v6;
}

- (AFMyriadPerceptualAudioHash)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFMyriadPerceptualAudioHash;
  v5 = [(AFMyriadPerceptualAudioHash *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFMyriadPerceptualAudioHashMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFMyriadPerceptualAudioHashMutation *)v7 isDirty])
    {
      v8 = [(_AFMyriadPerceptualAudioHashMutation *)v7 getData];
      v9 = [v8 copy];
      data = v6->_data;
      v6->_data = v9;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFMyriadPerceptualAudioHashMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFMyriadPerceptualAudioHashMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFMyriadPerceptualAudioHash);
      v7 = [(_AFMyriadPerceptualAudioHashMutation *)v5 getData];
      v8 = [v7 copy];
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