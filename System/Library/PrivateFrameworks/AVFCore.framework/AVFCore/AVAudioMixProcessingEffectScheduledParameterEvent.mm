@interface AVAudioMixProcessingEffectScheduledParameterEvent
+ (id)eventWithParameters:(id)parameters at:(id *)at;
- (AVAudioMixProcessingEffectScheduledParameterEvent)initWithParameters:(id)parameters at:(id *)at;
- (BOOL)isEqual:(id)equal;
- (id)_figSchedule;
- (id)parameters;
- (unint64_t)hash;
@end

@implementation AVAudioMixProcessingEffectScheduledParameterEvent

- (AVAudioMixProcessingEffectScheduledParameterEvent)initWithParameters:(id)parameters at:(id *)at
{
  v9.receiver = self;
  v9.super_class = AVAudioMixProcessingEffectScheduledParameterEvent;
  v6 = [(AVAudioMixProcessingEffectScheduledParameterEvent *)&v9 init];
  if (v6)
  {
    v6->_parameters = [parameters copy];
    var3 = at->var3;
    *&v6->_time.value = *&at->var0;
    v6->_time.epoch = var3;
  }

  return v6;
}

+ (id)eventWithParameters:(id)parameters at:(id *)at
{
  v6 = [AVAudioMixProcessingEffectScheduledParameterEvent alloc];
  v8 = *at;
  return [(AVAudioMixProcessingEffectScheduledParameterEvent *)v6 initWithParameters:parameters at:&v8];
}

- (id)parameters
{
  v2 = self->_parameters;

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (equal == self)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = [(NSArray *)self->_parameters isEqual:*(equal + 1)];
      if (v5)
      {
        time1 = self->_time;
        v7 = *(equal + 16);
        LOBYTE(v5) = CMTimeCompare(&time1, &v7) == 0;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_parameters hash];
  time = self->_time;
  return CMTimeHash(&time) ^ v3;
}

- (id)_figSchedule
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = *MEMORY[0x1E695E480];
  time = self->_time;
  v5 = CMTimeCopyAsDictionary(&time, v4);
  [dictionary setObject:v5 forKey:*MEMORY[0x1E6971708]];
  v6 = [MEMORY[0x1E695DF88] dataWithCapacity:{12 * objc_msgSend(-[AVAudioMixProcessingEffectScheduledParameterEvent parameters](self, "parameters"), "count")}];
  v7 = [MEMORY[0x1E695DF88] dataWithCapacity:{4 * objc_msgSend(-[AVAudioMixProcessingEffectScheduledParameterEvent parameters](self, "parameters"), "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  parameters = [(AVAudioMixProcessingEffectScheduledParameterEvent *)self parameters];
  v9 = [parameters countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(parameters);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        time.timescale = 0;
        time.value = 0;
        fourcc = [v13 fourcc];
        time.timescale = 0;
        time.value = fourcc;
        [v6 appendData:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", &time, 12)}];
        [v13 value];
        v17 = v15;
        [v7 appendData:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", &v17, 4)}];
        ++v12;
      }

      while (v10 != v12);
      v10 = [parameters countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
  }

  [dictionary setObject:v6 forKey:*MEMORY[0x1E6971700]];
  [dictionary setObject:v7 forKey:*MEMORY[0x1E6971710]];
  if (v5)
  {
    CFRelease(v5);
  }

  return dictionary;
}

@end