@interface PPKGPMagicPaperState
- (CGRect)frame;
- (PPKGPMagicPaperState)initWithFrame:(CGRect)frame isEditing:(BOOL)editing;
@end

@implementation PPKGPMagicPaperState

- (PPKGPMagicPaperState)initWithFrame:(CGRect)frame isEditing:(BOOL)editing
{
  editingCopy = editing;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = PPKGPMagicPaperState;
  v9 = [(PPKGPMagicPaperState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(PPKGPMagicPaperState *)v9 setFrame:x, y, width, height];
    [(PPKGPMagicPaperState *)v10 setIsEditing:editingCopy];
  }

  return v10;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end