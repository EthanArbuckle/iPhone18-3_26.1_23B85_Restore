@interface AVAudioMix
- (AVAudioMix)init;
- (BOOL)isEqual:(id)equal;
- (id)audioMixInputParametersForTrackID:(int)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)setInputParameters:(id)parameters;
@end

@implementation AVAudioMix

- (AVAudioMix)init
{
  v5.receiver = self;
  v5.super_class = AVAudioMix;
  v2 = [(AVAudioMix *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVAudioMixInternal);
    v2->_audioMix = v3;
    if (v3)
    {
      CFRetain(v3);
      v2->_audioMix->inputParameters = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  audioMix = self->_audioMix;
  if (audioMix)
  {

    CFRelease(self->_audioMix);
  }

  v4.receiver = self;
  v4.super_class = AVAudioMix;
  [(AVAudioMix *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, input parameters = %@>", NSStringFromClass(v4), self, -[AVAudioMix inputParameters](self, "inputParameters")];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([(AVAudioMix *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v5 = [[AVAudioMix allocWithZone:?]];
    v6 = v5;
    if (v5)
    {
      [(AVAudioMix *)v5 setInputParameters:self->_audioMix->inputParameters];
    }

    return v6;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(AVAudioMix *)[AVMutableAudioMix allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    [(AVMutableAudioMix *)v4 setInputParameters:self->_audioMix->inputParameters];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NSArray count](-[AVAudioMix inputParameters](self, "inputParameters"), "count"), v5 == [objc_msgSend(equal "inputParameters")]))
  {
    if (!-[AVAudioMix inputParameters](self, "inputParameters") || (v6 = -[NSArray isEqualToArray:](-[AVAudioMix inputParameters](self, "inputParameters"), "isEqualToArray:", [equal inputParameters])))
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  inputParameters = [(AVAudioMix *)self inputParameters];

  return [(NSArray *)inputParameters hash];
}

- (void)setInputParameters:(id)parameters
{
  if (parameters)
  {
    parametersCopy = parameters;
  }

  else
  {
    parametersCopy = MEMORY[0x1E695E0F0];
  }

  inputParameters = self->_audioMix->inputParameters;
  if (inputParameters != parametersCopy)
  {

    self->_audioMix->inputParameters = [(NSArray *)parametersCopy copy];
  }
}

- (id)audioMixInputParametersForTrackID:(int)d
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  inputParameters = [(AVAudioMix *)self inputParameters];
  v5 = [(NSArray *)inputParameters countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(inputParameters);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 trackID] == d)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)inputParameters countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end