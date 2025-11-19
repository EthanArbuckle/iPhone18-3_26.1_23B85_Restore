@interface PKFakeNotesDelegate
- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4;
- (PKFakeNotesDelegate)initWithTextView:(id)a3;
- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4;
@end

@implementation PKFakeNotesDelegate

- (PKFakeNotesDelegate)initWithTextView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKFakeNotesDelegate;
  v5 = [(PKFakeNotesDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textView, v4);
  }

  return v6;
}

- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  [WeakRetained setEditable:1];
}

- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained ink];
    v7 = [v6 _isHandwritingInk];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end