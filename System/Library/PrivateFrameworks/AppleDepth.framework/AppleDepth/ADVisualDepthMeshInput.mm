@interface ADVisualDepthMeshInput
- (ADVisualDepthMeshInput)init;
- (BOOL)removeChunkWithUUID:(id)a3;
@end

@implementation ADVisualDepthMeshInput

- (BOOL)removeChunkWithUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_MutableMeshChunks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          [(NSMutableArray *)self->_MutableMeshChunks removeObject:v9];
          v12 = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (ADVisualDepthMeshInput)init
{
  v6.receiver = self;
  v6.super_class = ADVisualDepthMeshInput;
  v2 = [(ADVisualDepthMeshInput *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    MutableMeshChunks = v2->_MutableMeshChunks;
    v2->_MutableMeshChunks = v3;
  }

  return v2;
}

@end