@interface PHVoicemailMessageTableViewCellScrollView
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation PHVoicemailMessageTableViewCellScrollView

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (([(PHVoicemailMessageTableViewCellScrollView *)self isDragging]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = PHVoicemailMessageTableViewCellScrollView;
    [(PHVoicemailMessageTableViewCellScrollView *)&v9 touchesCancelled:cancelledCopy withEvent:eventCopy];
  }

  else
  {
    superview = [(PHVoicemailMessageTableViewCellScrollView *)self superview];
    [superview touchesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if (([(PHVoicemailMessageTableViewCellScrollView *)self isDragging]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = PHVoicemailMessageTableViewCellScrollView;
    [(PHVoicemailMessageTableViewCellScrollView *)&v9 touchesMoved:movedCopy withEvent:eventCopy];
  }

  else
  {
    superview = [(PHVoicemailMessageTableViewCellScrollView *)self superview];
    [superview touchesMoved:movedCopy withEvent:eventCopy];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (([(PHVoicemailMessageTableViewCellScrollView *)self isDragging]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = PHVoicemailMessageTableViewCellScrollView;
    [(PHVoicemailMessageTableViewCellScrollView *)&v9 touchesBegan:beganCopy withEvent:eventCopy];
  }

  else
  {
    superview = [(PHVoicemailMessageTableViewCellScrollView *)self superview];
    [superview touchesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (([(PHVoicemailMessageTableViewCellScrollView *)self isDragging]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = PHVoicemailMessageTableViewCellScrollView;
    [(PHVoicemailMessageTableViewCellScrollView *)&v9 touchesEnded:endedCopy withEvent:eventCopy];
  }

  else
  {
    superview = [(PHVoicemailMessageTableViewCellScrollView *)self superview];
    [superview touchesEnded:endedCopy withEvent:eventCopy];
  }
}

@end