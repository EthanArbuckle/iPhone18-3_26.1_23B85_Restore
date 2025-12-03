@interface ESDiagnosticsNotesPane
- (ESDiagnosticsNotesPane)initWithFrame:(CGRect)frame;
@end

@implementation ESDiagnosticsNotesPane

- (ESDiagnosticsNotesPane)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = ESDiagnosticsNotesPane;
  v7 = [(ESDiagnosticsNotesPane *)&v13 initWithFrame:?];
  if (v7)
  {
    v8 = [[UITextView alloc] initWithFrame:{x, y, width, height}];
    notesView = v7->_notesView;
    v7->_notesView = v8;

    [(UITextView *)v7->_notesView setAutoresizingMask:18];
    [(UITextView *)v7->_notesView setEditable:1];
    [(UITextView *)v7->_notesView setSelectedRange:0, 0];
    [(UITextView *)v7->_notesView setKeyboardType:0];
    v10 = v7->_notesView;
    v11 = [UIFont systemFontOfSize:16.0];
    [(UITextView *)v10 setFont:v11];

    [(UITextView *)v7->_notesView setBounces:1];
    [(ESDiagnosticsNotesPane *)v7 addSubview:v7->_notesView];
  }

  return v7;
}

@end