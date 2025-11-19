@interface AVAudioMixProcessingEffectScheduledParameterEvent
+ (id)eventWithParameters:(id)a3 at:(id *)a4;
- (AVAudioMixProcessingEffectScheduledParameterEvent)initWithParameters:(id)a3 at:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)_figSchedule;
- (id)parameters;
- (unint64_t)hash;
@end

@implementation AVAudioMixProcessingEffectScheduledParameterEvent

- (AVAudioMixProcessingEffectScheduledParameterEvent)initWithParameters:(id)a3 at:(id *)a4
{
  v9.receiver = self;
  v9.super_class = AVAudioMixProcessingEffectScheduledParameterEvent;
  v6 = [(AVAudioMixProcessingEffectScheduledParameterEvent *)&v9 init];
  if (v6)
  {
    v6->_parameters = [a3 copy];
    var3 = a4->var3;
    *&v6->_time.value = *&a4->var0;
    v6->_time.epoch = var3;
  }

  return v6;
}

+ (id)eventWithParameters:(id)a3 at:(id *)a4
{
  v6 = [AVAudioMixProcessingEffectScheduledParameterEvent alloc];
  v8 = *a4;
  return [(AVAudioMixProcessingEffectScheduledParameterEvent *)v6 initWithParameters:a3 at:&v8];
}

- (id)parameters
{
  v2 = self->_parameters;

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a3 == self)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = [(NSArray *)self->_parameters isEqual:*(a3 + 1)];
      if (v5)
      {
        time1 = self->_time;
        v7 = *(a3 + 16);
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = *MEMORY[0x1E695E480];
  time = self->_time;
  v5 = CMTimeCopyAsDictionary(&time, v4);
  [v3 setObject:v5 forKey:*MEMORY[0x1E6971708]];
  v6 = [MEMORY[0x1E695DF88] dataWithCapacity:{12 * objc_msgSend(-[AVAudioMixProcessingEffectScheduledParameterEvent parameters](self, "parameters"), "count")}];
  v7 = [MEMORY[0x1E695DF88] dataWithCapacity:{4 * objc_msgSend(-[AVAudioMixProcessingEffectScheduledParameterEvent parameters](self, "parameters"), "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(AVAudioMixProcessingEffectScheduledParameterEvent *)self parameters];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        time.timescale = 0;
        time.value = 0;
        v14 = [v13 fourcc];
        time.timescale = 0;
        time.value = v14;
        [v6 appendData:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", &time, 12)}];
        [v13 value];
        v17 = v15;
        [v7 appendData:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", &v17, 4)}];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
  }

  [v3 setObject:v6 forKey:*MEMORY[0x1E6971700]];
  [v3 setObject:v7 forKey:*MEMORY[0x1E6971710]];
  if (v5)
  {
    CFRelease(v5);
  }

  return v3;
}

@end