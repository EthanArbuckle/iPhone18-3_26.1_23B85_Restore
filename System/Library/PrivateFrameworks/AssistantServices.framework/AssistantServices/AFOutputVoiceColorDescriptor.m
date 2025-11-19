@interface AFOutputVoiceColorDescriptor
+ (id)newWithBuilder:(id)a3;
- (AFOutputVoiceColorDescriptor)initWithCoder:(id)a3;
- (AFOutputVoiceColorDescriptor)initWithHexColor:(id)a3 colorName:(id)a4 alpha:(float)a5 localizedOutputVoiceColor:(id)a6 localizedOutputVoice:(id)a7;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFOutputVoiceColorDescriptor

- (void)encodeWithCoder:(id)a3
{
  hexColor = self->_hexColor;
  v7 = a3;
  [v7 encodeObject:hexColor forKey:@"AFOutputVoiceColorDescriptor::hexColor"];
  [v7 encodeObject:self->_colorName forKey:@"AFOutputVoiceColorDescriptor::colorName"];
  *&v5 = self->_alpha;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [v7 encodeObject:v6 forKey:@"AFOutputVoiceColorDescriptor::alpha"];

  [v7 encodeObject:self->_localizedOutputVoiceColor forKey:@"AFOutputVoiceColorDescriptor::localizedOutputVoiceColor"];
  [v7 encodeObject:self->_localizedOutputVoice forKey:@"AFOutputVoiceColorDescriptor::localizedOutputVoice"];
}

- (AFOutputVoiceColorDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFOutputVoiceColorDescriptor::hexColor"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFOutputVoiceColorDescriptor::colorName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFOutputVoiceColorDescriptor::alpha"];
  [v7 floatValue];
  v9 = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFOutputVoiceColorDescriptor::localizedOutputVoiceColor"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFOutputVoiceColorDescriptor::localizedOutputVoice"];

  LODWORD(v12) = v9;
  v13 = [(AFOutputVoiceColorDescriptor *)self initWithHexColor:v5 colorName:v6 alpha:v10 localizedOutputVoiceColor:v11 localizedOutputVoice:v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      alpha = self->_alpha;
      [(AFOutputVoiceColorDescriptor *)v5 alpha];
      if (alpha == v7)
      {
        v9 = [(AFOutputVoiceColorDescriptor *)v5 hexColor];
        hexColor = self->_hexColor;
        if (hexColor == v9 || [(NSString *)hexColor isEqual:v9])
        {
          v11 = [(AFOutputVoiceColorDescriptor *)v5 colorName];
          colorName = self->_colorName;
          if (colorName == v11 || [(NSString *)colorName isEqual:v11])
          {
            v13 = [(AFOutputVoiceColorDescriptor *)v5 localizedOutputVoiceColor];
            localizedOutputVoiceColor = self->_localizedOutputVoiceColor;
            if (localizedOutputVoiceColor == v13 || [(NSString *)localizedOutputVoiceColor isEqual:v13])
            {
              v15 = [(AFOutputVoiceColorDescriptor *)v5 localizedOutputVoice];
              localizedOutputVoice = self->_localizedOutputVoice;
              v8 = localizedOutputVoice == v15 || [(NSString *)localizedOutputVoice isEqual:v15];
            }

            else
            {
              v8 = 0;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_hexColor hash];
  v4 = [(NSString *)self->_colorName hash]^ v3;
  *&v5 = self->_alpha;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v7 = [v6 hash];
  v8 = v4 ^ [(NSString *)self->_localizedOutputVoiceColor hash]^ v7;
  v9 = [(NSString *)self->_localizedOutputVoice hash];

  return v8 ^ v9;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v28[5] = *MEMORY[0x1E69E9840];
  v24 = objc_alloc(MEMORY[0x1E696AEC0]);
  v27.receiver = self;
  v27.super_class = AFOutputVoiceColorDescriptor;
  v4 = [(AFOutputVoiceColorDescriptor *)&v27 description];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v26 = [(NSString *)self->_hexColor description];
  v25 = [v5 initWithFormat:@"hexColor = %@", v26];
  v28[0] = v25;
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v23 = [(NSString *)self->_colorName description];
  v22 = [v6 initWithFormat:@"colorName = %@", v23];
  v28[1] = v22;
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  *&v8 = self->_alpha;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v10 = [v7 initWithFormat:@"alpha = %@", v9];
  v28[2] = v10;
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [(NSString *)self->_localizedOutputVoiceColor description];
  v13 = [v11 initWithFormat:@"localizedOutputVoiceColor = %@", v12];
  v28[3] = v13;
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [(NSString *)self->_localizedOutputVoice description];
  v16 = [v14 initWithFormat:@"localizedOutputVoice = %@", v15];
  v28[4] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:5];
  v18 = [v17 componentsJoinedByString:{@", "}];
  v19 = [v24 initWithFormat:@"%@ {%@}", v4, v18];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (AFOutputVoiceColorDescriptor)initWithHexColor:(id)a3 colorName:(id)a4 alpha:(float)a5 localizedOutputVoiceColor:(id)a6 localizedOutputVoice:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = AFOutputVoiceColorDescriptor;
  v16 = [(AFOutputVoiceColorDescriptor *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    hexColor = v16->_hexColor;
    v16->_hexColor = v17;

    v19 = [v13 copy];
    colorName = v16->_colorName;
    v16->_colorName = v19;

    v16->_alpha = a5;
    v21 = [v14 copy];
    localizedOutputVoiceColor = v16->_localizedOutputVoiceColor;
    v16->_localizedOutputVoiceColor = v21;

    v23 = [v15 copy];
    localizedOutputVoice = v16->_localizedOutputVoice;
    v16->_localizedOutputVoice = v23;
  }

  return v16;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFOutputVoiceColorDescriptorMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_AFOutputVoiceColorDescriptorMutation *)v5 generate];
  }

  else
  {
    v6 = [(AFOutputVoiceColorDescriptor *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_AFOutputVoiceColorDescriptorMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_AFOutputVoiceColorDescriptorMutation *)v4 generate];

  return v5;
}

@end