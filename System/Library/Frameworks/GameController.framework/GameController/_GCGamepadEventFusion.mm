@interface _GCGamepadEventFusion
- (_GCGamepadEventFusion)init;
- (_GCGamepadEventFusion)initWithConfiguration:(id)configuration sources:(id)sources;
- (id)observeGamepadEvents:(id)events;
- (void)dealloc;
@end

@implementation _GCGamepadEventFusion

- (_GCGamepadEventFusion)initWithConfiguration:(id)configuration sources:(id)sources
{
  configurationCopy = configuration;
  sourcesCopy = sources;
  v26.receiver = self;
  v26.super_class = _GCGamepadEventFusion;
  v10 = [(_GCGamepadEventFusion *)&v26 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_config, configuration);
    v11->_lastEvent = malloc_type_calloc([sourcesCopy count], 8uLL, 0x80040B8603338uLL);
    sourceCount = [configurationCopy sourceCount];
    if (sourceCount != [sourcesCopy count])
    {
      [_GCGamepadEventFusion initWithConfiguration:a2 sources:v11];
    }

    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(sourcesCopy, "count")}];
    if ([sourcesCopy count])
    {
      v14 = 0;
      do
      {
        v15 = objc_opt_new();
        lastEvent = v11->_lastEvent;
        v17 = lastEvent[v14];
        lastEvent[v14] = v15;

        v18 = [sourcesCopy objectAtIndexedSubscript:v14];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __55___GCGamepadEventFusion_initWithConfiguration_sources___block_invoke;
        v25[3] = &__block_descriptor_48_e27_v16__0____GCGamepadEvent__8lu32l8;
        v25[4] = v11;
        v25[5] = v14;
        v19 = [v18 observeGamepadEvents:v25];

        [v13 addObject:v19];
        ++v14;
      }

      while (v14 < [sourcesCopy count]);
    }

    v20 = [v13 copy];
    observations = v11->_observations;
    v11->_observations = v20;

    v22 = objc_opt_new();
    observers = v11->_observers;
    v11->_observers = v22;
  }

  return v11;
}

- (_GCGamepadEventFusion)init
{
  [(_GCGamepadEventFusion *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  observations = self->_observations;
  self->_observations = 0;

  if ([(_GCGamepadEventFusionConfig *)self->_config sourceCount])
  {
    v4 = 0;
    do
    {
      lastEvent = self->_lastEvent;
      v6 = lastEvent[v4];
      lastEvent[v4] = 0;

      ++v4;
    }

    while (v4 < [(_GCGamepadEventFusionConfig *)self->_config sourceCount]);
  }

  free(self->_lastEvent);
  v7.receiver = self;
  v7.super_class = _GCGamepadEventFusion;
  [(_GCGamepadEventFusion *)&v7 dealloc];
}

- (id)observeGamepadEvents:(id)events
{
  v4 = [events copy];
  observers = [(_GCGamepadEventFusion *)self observers];
  v6 = _Block_copy(v4);
  v7 = [observers containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      observers2 = [(_GCGamepadEventFusion *)self observers];
      v9 = [observers2 mutableCopy];

      v10 = _Block_copy(v4);
      [v9 addObject:v10];

      [(_GCGamepadEventFusion *)self setObservers:v9];
      observers3 = [(_GCGamepadEventFusion *)self observers];
      v12 = _Block_copy(v4);
      v13 = [observers3 containsObject:v12];
    }

    while (!v13);
  }

  v14 = [_GCObservation alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46___GCGamepadEventFusion_observeGamepadEvents___block_invoke;
  v18[3] = &unk_1E8418BB8;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [(_GCObservation *)v14 initWithCleanupHandler:v18];

  return v16;
}

- (void)initWithConfiguration:(uint64_t)a1 sources:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCGamepadEventFusion.m" lineNumber:241 description:@"Sources count does not match the configuration"];
}

@end