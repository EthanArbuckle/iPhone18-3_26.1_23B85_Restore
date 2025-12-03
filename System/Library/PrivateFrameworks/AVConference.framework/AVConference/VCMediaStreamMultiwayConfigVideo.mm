@interface VCMediaStreamMultiwayConfigVideo
- (VCMediaStreamMultiwayConfigVideo)init;
- (id)streamIds;
- (void)addPayload:(int)payload;
- (void)dealloc;
@end

@implementation VCMediaStreamMultiwayConfigVideo

- (VCMediaStreamMultiwayConfigVideo)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCMediaStreamMultiwayConfigVideo;
  v2 = [(VCMediaStreamMultiwayConfig *)&v4 init];
  if (v2)
  {
    v2->_payloads = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_subStreamConfigs = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaStreamMultiwayConfigVideo;
  [(VCMediaStreamMultiwayConfig *)&v3 dealloc];
}

- (void)addPayload:(int)payload
{
  payloads = self->_payloads;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];

  [(NSMutableSet *)payloads addObject:v4];
}

- (id)streamIds
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", -[VCMediaStreamMultiwayConfig idsStreamID](self, "idsStreamID"))}];
  if ([(VCMediaStreamMultiwayConfig *)self hasRepairedStreamID])
  {
    [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", -[VCMediaStreamMultiwayConfig repairedStreamID](self, "repairedStreamID"))}];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  subStreamConfigs = self->_subStreamConfigs;
  v5 = [(NSMutableArray *)subStreamConfigs countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(subStreamConfigs);
        }

        streamIds = [*(*(&v12 + 1) + 8 * v8) streamIds];
        if (streamIds)
        {
          [v3 addObjectsFromArray:streamIds];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)subStreamConfigs countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  return v3;
}

@end