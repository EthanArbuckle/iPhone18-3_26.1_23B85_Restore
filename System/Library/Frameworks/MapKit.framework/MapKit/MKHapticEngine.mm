@interface MKHapticEngine
- (MKHapticEngine)init;
- (void)draggedObjectLanded;
- (void)draggedObjectLifted;
@end

@implementation MKHapticEngine

- (void)draggedObjectLanded
{
  if (self->_isDragging)
  {
    self->_isDragging = 0;
    [(_UIDragSnappingFeedbackGenerator *)self->_dragSnappingGenerator draggedObjectLanded];
    dragSnappingGenerator = self->_dragSnappingGenerator;

    [(_UIDragSnappingFeedbackGenerator *)dragSnappingGenerator userInteractionEnded];
  }
}

- (void)draggedObjectLifted
{
  if (!self->_isDragging)
  {
    self->_isDragging = 1;
    [(_UIDragSnappingFeedbackGenerator *)self->_dragSnappingGenerator userInteractionStarted];
    [(_UIDragSnappingFeedbackGenerator *)self->_dragSnappingGenerator draggedObjectLifted];
    dragSnappingGenerator = self->_dragSnappingGenerator;

    [(_UIDragSnappingFeedbackGenerator *)dragSnappingGenerator prepare];
  }
}

- (MKHapticEngine)init
{
  v10.receiver = self;
  v10.super_class = MKHapticEngine;
  v2 = [(MKHapticEngine *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCCF0]);
    notificationGenerator = v2->_notificationGenerator;
    v2->_notificationGenerator = v3;

    v5 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:3];
    feedbackGenerator = v2->_feedbackGenerator;
    v2->_feedbackGenerator = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DD488]);
    dragSnappingGenerator = v2->_dragSnappingGenerator;
    v2->_dragSnappingGenerator = v7;
  }

  return v2;
}

@end