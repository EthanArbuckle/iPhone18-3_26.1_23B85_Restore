@interface AVCaptureSessionConfiguration
- (AVCaptureSessionConfiguration)initWithConfigurationID:(int64_t)a3 inputs:(id)a4 outputs:(id)a5 videoPreviewLayers:(id)a6 connections:(id)a7;
- (BOOL)_videoPreviewLayersContains:(id)a3;
- (id)uniqueConnections:(id)a3;
- (id)uniqueInputs:(id)a3;
- (id)uniqueOutputs:(id)a3;
- (id)uniqueVideoPreviewLayers:(id)a3;
- (void)dealloc;
@end

@implementation AVCaptureSessionConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureSessionConfiguration;
  [(AVCaptureSessionConfiguration *)&v3 dealloc];
}

- (AVCaptureSessionConfiguration)initWithConfigurationID:(int64_t)a3 inputs:(id)a4 outputs:(id)a5 videoPreviewLayers:(id)a6 connections:(id)a7
{
  v15.receiver = self;
  v15.super_class = AVCaptureSessionConfiguration;
  v12 = [(AVCaptureSessionConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_configurationID = a3;
    v12->_inputs = [a4 copy];
    v13->_outputs = [a5 copy];
    v13->_videoPreviewLayers = [a6 copy];
    v13->_connections = [a7 copy];
  }

  return v13;
}

- (id)uniqueInputs:(id)a3
{
  v4 = [MEMORY[0x1E695DFA8] setWithArray:self->_inputs];
  [v4 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(a3, "inputs"))}];
  return v4;
}

- (id)uniqueOutputs:(id)a3
{
  v4 = [MEMORY[0x1E695DFA8] setWithArray:self->_outputs];
  [v4 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(a3, "outputs"))}];
  return v4;
}

- (id)uniqueConnections:(id)a3
{
  v4 = [MEMORY[0x1E695DFA8] setWithArray:self->_connections];
  [v4 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(a3, "connections"))}];
  return v4;
}

- (id)uniqueVideoPreviewLayers:(id)a3
{
  v5 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  videoPreviewLayers = self->_videoPreviewLayers;
  v7 = [(NSPointerArray *)videoPreviewLayers countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(videoPreviewLayers);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (([a3 _videoPreviewLayersContains:v11] & 1) == 0)
        {
          [v5 addPointer:v11];
        }
      }

      v8 = [(NSPointerArray *)videoPreviewLayers countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_videoPreviewLayersContains:(id)a3
{
  if (![(NSPointerArray *)self->_videoPreviewLayers count])
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = [(NSPointerArray *)self->_videoPreviewLayers pointerAtIndex:v5];
    v7 = v6 == a3;
    if (v6 == a3)
    {
      break;
    }

    ++v5;
  }

  while (v5 < [(NSPointerArray *)self->_videoPreviewLayers count]);
  return v7;
}

@end