@interface _NSKeyValueDidWillStats
- (void)_recordThread;
- (void)dealloc;
@end

@implementation _NSKeyValueDidWillStats

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSKeyValueDidWillStats;
  [(_NSKeyValueDidWillStats *)&v3 dealloc];
}

- (void)_recordThread
{
  v3 = +[NSThread currentThread];
  originalThread = self->_originalThread;
  if (originalThread)
  {
    self->_detectedIssues.hasWillDidThreadMismatch = originalThread != v3;
  }

  else
  {
    self->_originalThread = v3;
  }
}

@end