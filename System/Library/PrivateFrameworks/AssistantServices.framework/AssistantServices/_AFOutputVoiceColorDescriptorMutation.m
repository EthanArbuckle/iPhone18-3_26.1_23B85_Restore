@interface _AFOutputVoiceColorDescriptorMutation
- (_AFOutputVoiceColorDescriptorMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _AFOutputVoiceColorDescriptorMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v5 = [AFOutputVoiceColorDescriptor alloc];
    *&v6 = self->_alpha;
    v4 = [(AFOutputVoiceColorDescriptor *)v5 initWithHexColor:self->_hexColor colorName:self->_colorName alpha:self->_localizedOutputVoiceColor localizedOutputVoiceColor:self->_localizedOutputVoice localizedOutputVoice:v6];
    goto LABEL_5;
  }

  if (*&self->_mutationFlags)
  {
    if ((*&self->_mutationFlags & 2) != 0)
    {
      v8 = self->_hexColor;
    }

    else
    {
      v8 = [(AFOutputVoiceColorDescriptor *)baseModel hexColor];
    }

    v9 = v8;
    if ((*&self->_mutationFlags & 4) != 0)
    {
      v10 = self->_colorName;
    }

    else
    {
      v10 = [(AFOutputVoiceColorDescriptor *)self->_baseModel colorName];
    }

    v11 = v10;
    if ((*&self->_mutationFlags & 8) != 0)
    {
      alpha = self->_alpha;
      if ((*&self->_mutationFlags & 0x10) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [(AFOutputVoiceColorDescriptor *)self->_baseModel alpha];
      alpha = v12;
      if ((*&self->_mutationFlags & 0x10) != 0)
      {
LABEL_14:
        v14 = self->_localizedOutputVoiceColor;
LABEL_17:
        v15 = v14;
        if ((*&self->_mutationFlags & 0x20) != 0)
        {
          v16 = self->_localizedOutputVoice;
        }

        else
        {
          v16 = [(AFOutputVoiceColorDescriptor *)self->_baseModel localizedOutputVoice];
        }

        v17 = v16;
        v18 = [AFOutputVoiceColorDescriptor alloc];
        *&v19 = alpha;
        v7 = [(AFOutputVoiceColorDescriptor *)v18 initWithHexColor:v9 colorName:v11 alpha:v15 localizedOutputVoiceColor:v17 localizedOutputVoice:v19];

        goto LABEL_21;
      }
    }

    v14 = [(AFOutputVoiceColorDescriptor *)self->_baseModel localizedOutputVoiceColor];
    goto LABEL_17;
  }

  v4 = [(AFOutputVoiceColorDescriptor *)baseModel copy];
LABEL_5:
  v7 = v4;
LABEL_21:

  return v7;
}

- (_AFOutputVoiceColorDescriptorMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFOutputVoiceColorDescriptorMutation;
  v6 = [(_AFOutputVoiceColorDescriptorMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end