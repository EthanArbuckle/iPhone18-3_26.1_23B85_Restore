@interface AVAudioMix
- (AVAudioMix)init;
- (BOOL)isEqual:(id)a3;
- (id)audioMixInputParametersForTrackID:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setInputParameters:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(AVAudioMix *)[AVMutableAudioMix allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    [(AVMutableAudioMix *)v4 setInputParameters:self->_audioMix->inputParameters];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NSArray count](-[AVAudioMix inputParameters](self, "inputParameters"), "count"), v5 == [objc_msgSend(a3 "inputParameters")]))
  {
    if (!-[AVAudioMix inputParameters](self, "inputParameters") || (v6 = -[NSArray isEqualToArray:](-[AVAudioMix inputParameters](self, "inputParameters"), "isEqualToArray:", [a3 inputParameters])))
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
  v2 = [(AVAudioMix *)self inputParameters];

  return [(NSArray *)v2 hash];
}

- (void)setInputParameters:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  inputParameters = self->_audioMix->inputParameters;
  if (inputParameters != v3)
  {

    self->_audioMix->inputParameters = [(NSArray *)v3 copy];
  }
}

- (id)audioMixInputParametersForTrackID:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(AVAudioMix *)self inputParameters];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 trackID] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end