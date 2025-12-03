@interface _BGContinuedProcessingTask
- (id)_initWithIdentifier:(id)identifier activity:(id)activity;
- (id)description;
- (void)updateProgress:(id)progress;
- (void)updateTitle:(id)title withReason:(id)reason;
@end

@implementation _BGContinuedProcessingTask

- (id)_initWithIdentifier:(id)identifier activity:(id)activity
{
  activityCopy = activity;
  v15.receiver = self;
  v15.super_class = _BGContinuedProcessingTask;
  v7 = [(BGTask *)&v15 _initWithIdentifier:identifier activity:activityCopy];
  if (v7)
  {
    continuedProcessingWrapper = [activityCopy continuedProcessingWrapper];
    title = [continuedProcessingWrapper title];
    v10 = v7[8];
    v7[8] = title;

    continuedProcessingWrapper2 = [activityCopy continuedProcessingWrapper];
    subtitle = [continuedProcessingWrapper2 subtitle];
    v13 = v7[9];
    v7[9] = subtitle;
  }

  return v7;
}

- (void)updateTitle:(id)title withReason:(id)reason
{
  titleCopy = title;
  reasonCopy = reason;
  _descriptionUpdateHandler = [(_BGContinuedProcessingTask *)self _descriptionUpdateHandler];

  if (_descriptionUpdateHandler)
  {
    _descriptionUpdateHandler2 = [(_BGContinuedProcessingTask *)self _descriptionUpdateHandler];
    (_descriptionUpdateHandler2)[2](_descriptionUpdateHandler2, titleCopy, reasonCopy);
  }

  title = self->_title;
  self->_title = titleCopy;
  v12 = titleCopy;

  reason = self->_reason;
  self->_reason = reasonCopy;
}

- (void)updateProgress:(id)progress
{
  progressCopy = progress;
  _progressHandler = [(_BGContinuedProcessingTask *)self _progressHandler];

  if (_progressHandler)
  {
    _progressHandler2 = [(_BGContinuedProcessingTask *)self _progressHandler];
    (_progressHandler2)[2](_progressHandler2, progressCopy);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(BGTask *)self identifier];
  title = [(_BGContinuedProcessingTask *)self title];
  reason = [(_BGContinuedProcessingTask *)self reason];
  v7 = [v3 stringWithFormat:@"<BGContinuedProcessingTask: %@ (%@, %@)>", identifier, title, reason];

  return v7;
}

@end