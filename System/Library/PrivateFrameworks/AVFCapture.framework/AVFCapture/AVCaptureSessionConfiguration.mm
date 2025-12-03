@interface AVCaptureSessionConfiguration
- (AVCaptureSessionConfiguration)initWithConfigurationID:(int64_t)d inputs:(id)inputs outputs:(id)outputs videoPreviewLayers:(id)layers connections:(id)connections;
- (BOOL)_videoPreviewLayersContains:(id)contains;
- (id)uniqueConnections:(id)connections;
- (id)uniqueInputs:(id)inputs;
- (id)uniqueOutputs:(id)outputs;
- (id)uniqueVideoPreviewLayers:(id)layers;
- (void)dealloc;
@end

@implementation AVCaptureSessionConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureSessionConfiguration;
  [(AVCaptureSessionConfiguration *)&v3 dealloc];
}

- (AVCaptureSessionConfiguration)initWithConfigurationID:(int64_t)d inputs:(id)inputs outputs:(id)outputs videoPreviewLayers:(id)layers connections:(id)connections
{
  v15.receiver = self;
  v15.super_class = AVCaptureSessionConfiguration;
  v12 = [(AVCaptureSessionConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_configurationID = d;
    v12->_inputs = [inputs copy];
    v13->_outputs = [outputs copy];
    v13->_videoPreviewLayers = [layers copy];
    v13->_connections = [connections copy];
  }

  return v13;
}

- (id)uniqueInputs:(id)inputs
{
  v4 = [MEMORY[0x1E695DFA8] setWithArray:self->_inputs];
  [v4 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(inputs, "inputs"))}];
  return v4;
}

- (id)uniqueOutputs:(id)outputs
{
  v4 = [MEMORY[0x1E695DFA8] setWithArray:self->_outputs];
  [v4 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(outputs, "outputs"))}];
  return v4;
}

- (id)uniqueConnections:(id)connections
{
  v4 = [MEMORY[0x1E695DFA8] setWithArray:self->_connections];
  [v4 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(connections, "connections"))}];
  return v4;
}

- (id)uniqueVideoPreviewLayers:(id)layers
{
  weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
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
        if (([layers _videoPreviewLayersContains:v11] & 1) == 0)
        {
          [weakObjectsPointerArray addPointer:v11];
        }
      }

      v8 = [(NSPointerArray *)videoPreviewLayers countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  return weakObjectsPointerArray;
}

- (BOOL)_videoPreviewLayersContains:(id)contains
{
  if (![(NSPointerArray *)self->_videoPreviewLayers count])
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = [(NSPointerArray *)self->_videoPreviewLayers pointerAtIndex:v5];
    v7 = v6 == contains;
    if (v6 == contains)
    {
      break;
    }

    ++v5;
  }

  while (v5 < [(NSPointerArray *)self->_videoPreviewLayers count]);
  return v7;
}

@end