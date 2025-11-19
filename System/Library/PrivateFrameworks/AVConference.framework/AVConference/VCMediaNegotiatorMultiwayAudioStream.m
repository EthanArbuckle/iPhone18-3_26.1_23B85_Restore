@interface VCMediaNegotiatorMultiwayAudioStream
- (BOOL)isEqual:(id)a3;
- (VCMediaNegotiatorMultiwayAudioStream)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addPayload:(int)a3;
- (void)dealloc;
@end

@implementation VCMediaNegotiatorMultiwayAudioStream

- (VCMediaNegotiatorMultiwayAudioStream)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCMediaNegotiatorMultiwayAudioStream;
  v2 = [(VCMediaNegotiatorMultiwayAudioStream *)&v4 init];
  if (v2)
  {
    v2->_supportedAudioPayloads = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorMultiwayAudioStream;
  [(VCMediaNegotiatorMultiwayAudioStream *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCMediaNegotiatorMultiwayAudioStream;
  v5 = [(VCMediaNegotiatorMultiwayMediaStream *)&v8 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSMutableSet *)self->_supportedAudioPayloads copyWithZone:a3];
    [v5 setSupportedAudioPayloads:v6];
  }

  return v5;
}

- (void)addPayload:(int)a3
{
  supportedAudioPayloads = self->_supportedAudioPayloads;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];

  [(NSMutableSet *)supportedAudioPayloads addObject:v4];
}

- (BOOL)isEqual:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v13.receiver = self;
  v13.super_class = VCMediaNegotiatorMultiwayAudioStream;
  v5 = [(VCMediaNegotiatorMultiwayMediaStream *)&v13 isEqual:a3];
  if (!v5)
  {
    return v5;
  }

  v6 = [objc_msgSend(a3 "supportedAudioPayloads")];
  if (v6 != [(NSMutableSet *)self->_supportedAudioPayloads count])
  {
LABEL_13:
    LOBYTE(v5) = 0;
    return v5;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [a3 supportedAudioPayloads];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v5 = [(NSMutableSet *)self->_supportedAudioPayloads containsObject:*(*(&v15 + 1) + 8 * v11)];
      if (!v5)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
        LOBYTE(v5) = 1;
        if (v9)
        {
          goto LABEL_6;
        }

        return v5;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end