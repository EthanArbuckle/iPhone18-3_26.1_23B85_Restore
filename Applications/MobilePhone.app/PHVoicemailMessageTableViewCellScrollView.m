@interface PHVoicemailMessageTableViewCellScrollView
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation PHVoicemailMessageTableViewCellScrollView

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(PHVoicemailMessageTableViewCellScrollView *)self isDragging]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = PHVoicemailMessageTableViewCellScrollView;
    [(PHVoicemailMessageTableViewCellScrollView *)&v9 touchesCancelled:v6 withEvent:v7];
  }

  else
  {
    v8 = [(PHVoicemailMessageTableViewCellScrollView *)self superview];
    [v8 touchesCancelled:v6 withEvent:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(PHVoicemailMessageTableViewCellScrollView *)self isDragging]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = PHVoicemailMessageTableViewCellScrollView;
    [(PHVoicemailMessageTableViewCellScrollView *)&v9 touchesMoved:v6 withEvent:v7];
  }

  else
  {
    v8 = [(PHVoicemailMessageTableViewCellScrollView *)self superview];
    [v8 touchesMoved:v6 withEvent:v7];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(PHVoicemailMessageTableViewCellScrollView *)self isDragging]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = PHVoicemailMessageTableViewCellScrollView;
    [(PHVoicemailMessageTableViewCellScrollView *)&v9 touchesBegan:v6 withEvent:v7];
  }

  else
  {
    v8 = [(PHVoicemailMessageTableViewCellScrollView *)self superview];
    [v8 touchesBegan:v6 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(PHVoicemailMessageTableViewCellScrollView *)self isDragging]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = PHVoicemailMessageTableViewCellScrollView;
    [(PHVoicemailMessageTableViewCellScrollView *)&v9 touchesEnded:v6 withEvent:v7];
  }

  else
  {
    v8 = [(PHVoicemailMessageTableViewCellScrollView *)self superview];
    [v8 touchesEnded:v6 withEvent:v7];
  }
}

@end