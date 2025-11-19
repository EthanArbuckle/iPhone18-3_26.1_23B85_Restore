@interface _BGContinuedProcessingTask
- (id)_initWithIdentifier:(id)a3 activity:(id)a4;
- (id)description;
- (void)updateProgress:(id)a3;
- (void)updateTitle:(id)a3 withReason:(id)a4;
@end

@implementation _BGContinuedProcessingTask

- (id)_initWithIdentifier:(id)a3 activity:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = _BGContinuedProcessingTask;
  v7 = [(BGTask *)&v15 _initWithIdentifier:a3 activity:v6];
  if (v7)
  {
    v8 = [v6 continuedProcessingWrapper];
    v9 = [v8 title];
    v10 = v7[8];
    v7[8] = v9;

    v11 = [v6 continuedProcessingWrapper];
    v12 = [v11 subtitle];
    v13 = v7[9];
    v7[9] = v12;
  }

  return v7;
}

- (void)updateTitle:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_BGContinuedProcessingTask *)self _descriptionUpdateHandler];

  if (v8)
  {
    v9 = [(_BGContinuedProcessingTask *)self _descriptionUpdateHandler];
    (v9)[2](v9, v6, v7);
  }

  title = self->_title;
  self->_title = v6;
  v12 = v6;

  reason = self->_reason;
  self->_reason = v7;
}

- (void)updateProgress:(id)a3
{
  v6 = a3;
  v4 = [(_BGContinuedProcessingTask *)self _progressHandler];

  if (v4)
  {
    v5 = [(_BGContinuedProcessingTask *)self _progressHandler];
    (v5)[2](v5, v6);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BGTask *)self identifier];
  v5 = [(_BGContinuedProcessingTask *)self title];
  v6 = [(_BGContinuedProcessingTask *)self reason];
  v7 = [v3 stringWithFormat:@"<BGContinuedProcessingTask: %@ (%@, %@)>", v4, v5, v6];

  return v7;
}

@end