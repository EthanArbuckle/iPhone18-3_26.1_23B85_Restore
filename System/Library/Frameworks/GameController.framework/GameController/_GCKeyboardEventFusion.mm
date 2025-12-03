@interface _GCKeyboardEventFusion
- (_GCKeyboardEventFusion)init;
- (_GCKeyboardEventFusion)initWithSources:(id)sources;
- (id)observeKeyboardEvents:(id)events;
- (void)dealloc;
@end

@implementation _GCKeyboardEventFusion

- (_GCKeyboardEventFusion)initWithSources:(id)sources
{
  sourcesCopy = sources;
  v16.receiver = self;
  v16.super_class = _GCKeyboardEventFusion;
  v5 = [(_GCKeyboardEventFusion *)&v16 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(sourcesCopy, "count")}];
    if ([sourcesCopy count])
    {
      v7 = 0;
      do
      {
        v8 = [sourcesCopy objectAtIndexedSubscript:v7];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __42___GCKeyboardEventFusion_initWithSources___block_invoke;
        v15[3] = &__block_descriptor_40_e28_v16__0____GCKeyboardEvent__8lu32l8;
        v15[4] = v5;
        v9 = [v8 observeKeyboardEvents:v15];

        [v6 addObject:v9];
        ++v7;
      }

      while (v7 < [sourcesCopy count]);
    }

    v10 = [v6 copy];
    observations = v5->_observations;
    v5->_observations = v10;

    v12 = objc_opt_new();
    observers = v5->_observers;
    v5->_observers = v12;
  }

  return v5;
}

- (_GCKeyboardEventFusion)init
{
  [(_GCKeyboardEventFusion *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  observations = self->_observations;
  self->_observations = 0;

  v4.receiver = self;
  v4.super_class = _GCKeyboardEventFusion;
  [(_GCKeyboardEventFusion *)&v4 dealloc];
}

- (id)observeKeyboardEvents:(id)events
{
  v4 = [events copy];
  observers = [(_GCKeyboardEventFusion *)self observers];
  v6 = _Block_copy(v4);
  v7 = [observers containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      observers2 = [(_GCKeyboardEventFusion *)self observers];
      v9 = [observers2 mutableCopy];

      v10 = _Block_copy(v4);
      [v9 addObject:v10];

      [(_GCKeyboardEventFusion *)self setObservers:v9];
      observers3 = [(_GCKeyboardEventFusion *)self observers];
      v12 = _Block_copy(v4);
      v13 = [observers3 containsObject:v12];
    }

    while (!v13);
  }

  v14 = [_GCObservation alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48___GCKeyboardEventFusion_observeKeyboardEvents___block_invoke;
  v18[3] = &unk_1E8418BB8;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [(_GCObservation *)v14 initWithCleanupHandler:v18];

  return v16;
}

@end