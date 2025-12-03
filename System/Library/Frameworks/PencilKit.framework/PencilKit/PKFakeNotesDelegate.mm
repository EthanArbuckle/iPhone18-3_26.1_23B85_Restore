@interface PKFakeNotesDelegate
- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (PKFakeNotesDelegate)initWithTextView:(id)view;
- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
@end

@implementation PKFakeNotesDelegate

- (PKFakeNotesDelegate)initWithTextView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = PKFakeNotesDelegate;
  v5 = [(PKFakeNotesDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textView, viewCopy);
  }

  return v6;
}

- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  [WeakRetained setEditable:1];
}

- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained ink];
    _isHandwritingInk = [v6 _isHandwritingInk];
  }

  else
  {
    _isHandwritingInk = 0;
  }

  return _isHandwritingInk;
}

@end