@interface AVAudioChannelLayout
+ (AVAudioChannelLayout)layoutWithLayout:(const AudioChannelLayout *)layout;
+ (AVAudioChannelLayout)layoutWithLayout:(const AudioChannelLayout *)layout size:(unint64_t)size;
- (AVAudioChannelCount)channelCount;
- (AVAudioChannelLayout)initWithCoder:(id)coder;
- (AVAudioChannelLayout)initWithLayout:(const AudioChannelLayout *)layout;
- (AVAudioChannelLayout)initWithLayout:(const AudioChannelLayout *)layout size:(unint64_t)size;
- (AVAudioChannelLayout)initWithLayoutTag:(AudioChannelLayoutTag)layoutTag;
- (BOOL)isEqual:(id)object;
- (unint64_t)hash;
- (unint64_t)layoutSize;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAudioChannelLayout

- (unint64_t)layoutSize
{
  result = [(AVAudioChannelLayout *)self layout];
  if (result)
  {
    if (*[(AVAudioChannelLayout *)self layout])
    {
      return 12;
    }

    else
    {
      return 20 * [(AVAudioChannelLayout *)self layout][8] + 12;
    }
  }

  return result;
}

- (AVAudioChannelCount)channelCount
{
  layout = self->_layout;
  if (layout->mChannelLayoutTag == 0x10000)
  {
    v4 = vcnt_s8(layout->mChannelBitmap);
    v4.i16[0] = vaddlv_u8(v4);
    return v4.i32[0];
  }

  else if (layout->mChannelLayoutTag)
  {
    return layout->mChannelLayoutTag;
  }

  else
  {
    return layout->mNumberChannelDescriptions;
  }
}

- (AVAudioChannelLayout)initWithCoder:(id)coder
{
  v8 = 0;
  v9 = 0;
  v5 = [coder decodeBytesWithReturnedLength:&v9];
  v6 = [coder decodeBytesWithReturnedLength:&v8];
  if (v5 && v6 && v9 == 4 && v8 == *v5)
  {
    return [(AVAudioChannelLayout *)self initWithLayout:v6 size:?];
  }

  [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4864, 0)}];
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  layoutSize = [(AVAudioChannelLayout *)self layoutSize];
  [coder encodeBytes:&layoutSize length:4];
  [coder encodeBytes:self->_layout length:layoutSize];
}

- (unint64_t)hash
{
  v5 = 4;
  v6 = 0;
  PropertyProc = GetAudioFormatGetPropertyProc();
  PropertyProc(1667786849, 8, self->_layout, &v5, &v6);
  return v6;
}

- (BOOL)isEqual:(id)object
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (object == self)
  {
    result = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (-[AVAudioChannelLayout layout](self, "layout") && [object layout])
      {
        v11[0] = [(AVAudioChannelLayout *)self layout];
        v11[1] = [object layout];
        PropertyProc = GetAudioFormatGetPropertyProc();
        if (PropertyProc(1667786097, 16, v11, &v10, &v10 + 4))
        {
          v6 = 1;
        }

        else
        {
          v6 = HIDWORD(v10) == 0;
        }

        result = !v6;
      }

      else
      {
        layoutTag = [object layoutTag];
        result = layoutTag == [(AVAudioChannelLayout *)self layoutTag];
      }
    }

    else
    {
      result = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  free(self->_layout);
  v3.receiver = self;
  v3.super_class = AVAudioChannelLayout;
  [(AVAudioChannelLayout *)&v3 dealloc];
}

- (AVAudioChannelLayout)initWithLayout:(const AudioChannelLayout *)layout size:(unint64_t)size
{
  v19 = *MEMORY[0x1E69E9840];
  if (!layout)
  {
LABEL_10:

    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (self->_layoutTag)
  {
    v6 = 12;
  }

  else
  {
    v6 = 20 * layout->mNumberChannelDescriptions + 12;
  }

  if (v6 > size)
  {
    if (AVAudioChannelLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioChannelLogCategory(void)::once, &__block_literal_global_1643);
    }

    v7 = *AVAudioChannelLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioChannelLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315906;
      v12 = "AVAudioChannelLayout.mm";
      v13 = 1024;
      v14 = 106;
      v15 = 2048;
      v16 = v6;
      v17 = 2048;
      sizeCopy = size;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioChannelLayout has a mismatched size. Expected: %zu, got %lu", &v11, 0x26u);
    }

    goto LABEL_10;
  }

  v10 = *MEMORY[0x1E69E9840];

  return [(AVAudioChannelLayout *)self initWithLayout:?];
}

- (AVAudioChannelLayout)initWithLayout:(const AudioChannelLayout *)layout
{
  if (layout)
  {
    v10.receiver = self;
    v10.super_class = AVAudioChannelLayout;
    v4 = [(AVAudioChannelLayout *)&v10 init];
    v5 = v4;
    if (v4)
    {
      mChannelLayoutTag = layout->mChannelLayoutTag;
      v4->_layoutTag = layout->mChannelLayoutTag;
      if (mChannelLayoutTag)
      {
        v7 = 12;
      }

      else
      {
        v7 = 20 * layout->mNumberChannelDescriptions + 12;
      }

      v8 = malloc_type_malloc(v7, 0x1000040E0EAB150uLL);
      v5->_layout = v8;
      memcpy(v8, layout, v7);
      if (v5->_layoutTag)
      {
        v5->_layout->mNumberChannelDescriptions = 0;
      }
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (AVAudioChannelLayout)initWithLayoutTag:(AudioChannelLayoutTag)layoutTag
{
  if ((layoutTag & 0xFFFEFFFF) != 0)
  {
    v4[1] = 0;
    v4[2] = 0;
    v4[0] = layoutTag;
    return [(AVAudioChannelLayout *)self initWithLayout:v4 size:32];
  }

  else
  {

    return 0;
  }
}

+ (AVAudioChannelLayout)layoutWithLayout:(const AudioChannelLayout *)layout size:(unint64_t)size
{
  v4 = [[AVAudioChannelLayout alloc] initWithLayout:layout size:size];

  return v4;
}

+ (AVAudioChannelLayout)layoutWithLayout:(const AudioChannelLayout *)layout
{
  v3 = [[AVAudioChannelLayout alloc] initWithLayout:layout];

  return v3;
}

@end