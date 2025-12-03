@interface BETextDocumentContext
- (BETextDocumentContext)initWithAttributedSelectedText:(id)text contextBefore:(id)before contextAfter:(id)after markedText:(id)markedText selectedRangeInMarkedText:(_NSRange)inMarkedText;
- (BETextDocumentContext)initWithSelectedText:(id)text contextBefore:(id)before contextAfter:(id)after markedText:(id)markedText selectedRangeInMarkedText:(_NSRange)inMarkedText;
@end

@implementation BETextDocumentContext

- (BETextDocumentContext)initWithSelectedText:(id)text contextBefore:(id)before contextAfter:(id)after markedText:(id)markedText selectedRangeInMarkedText:(_NSRange)inMarkedText
{
  length = inMarkedText.length;
  location = inMarkedText.location;
  textCopy = text;
  beforeCopy = before;
  afterCopy = after;
  markedTextCopy = markedText;
  v30.receiver = self;
  v30.super_class = BETextDocumentContext;
  v17 = [(BETextDocumentContext *)&v30 init];
  if (v17)
  {
    v18 = MEMORY[0x1E69DD2A0];
    v19 = textCopy;
    v20 = beforeCopy;
    v28 = length;
    v21 = afterCopy;
    v29 = textCopy;
    v22 = location;
    v23 = markedTextCopy;
    v24 = objc_alloc_init(v18);
    [v24 setSelectedText:v19];

    [v24 setContextBefore:v20];
    [v24 setContextAfter:v21];

    [v24 setMarkedText:v23];
    v25 = v22;
    textCopy = v29;
    [v24 setSelectedRangeInMarkedText:{v25, v28}];
    backingContext = v17->_backingContext;
    v17->_backingContext = v24;
  }

  return v17;
}

- (BETextDocumentContext)initWithAttributedSelectedText:(id)text contextBefore:(id)before contextAfter:(id)after markedText:(id)markedText selectedRangeInMarkedText:(_NSRange)inMarkedText
{
  length = inMarkedText.length;
  location = inMarkedText.location;
  textCopy = text;
  beforeCopy = before;
  afterCopy = after;
  markedTextCopy = markedText;
  v30.receiver = self;
  v30.super_class = BETextDocumentContext;
  v17 = [(BETextDocumentContext *)&v30 init];
  if (v17)
  {
    v18 = MEMORY[0x1E69DD2A0];
    v19 = textCopy;
    v20 = beforeCopy;
    v28 = length;
    v21 = afterCopy;
    v29 = textCopy;
    v22 = location;
    v23 = markedTextCopy;
    v24 = objc_alloc_init(v18);
    [v24 setSelectedText:v19];

    [v24 setContextBefore:v20];
    [v24 setContextAfter:v21];

    [v24 setMarkedText:v23];
    v25 = v22;
    textCopy = v29;
    [v24 setSelectedRangeInMarkedText:{v25, v28}];
    backingContext = v17->_backingContext;
    v17->_backingContext = v24;
  }

  return v17;
}

@end