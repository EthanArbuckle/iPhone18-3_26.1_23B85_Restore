@interface BETextDocumentContext
- (BETextDocumentContext)initWithAttributedSelectedText:(id)a3 contextBefore:(id)a4 contextAfter:(id)a5 markedText:(id)a6 selectedRangeInMarkedText:(_NSRange)a7;
- (BETextDocumentContext)initWithSelectedText:(id)a3 contextBefore:(id)a4 contextAfter:(id)a5 markedText:(id)a6 selectedRangeInMarkedText:(_NSRange)a7;
@end

@implementation BETextDocumentContext

- (BETextDocumentContext)initWithSelectedText:(id)a3 contextBefore:(id)a4 contextAfter:(id)a5 markedText:(id)a6 selectedRangeInMarkedText:(_NSRange)a7
{
  length = a7.length;
  location = a7.location;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v30.receiver = self;
  v30.super_class = BETextDocumentContext;
  v17 = [(BETextDocumentContext *)&v30 init];
  if (v17)
  {
    v18 = MEMORY[0x1E69DD2A0];
    v19 = v13;
    v20 = v14;
    v28 = length;
    v21 = v15;
    v29 = v13;
    v22 = location;
    v23 = v16;
    v24 = objc_alloc_init(v18);
    [v24 setSelectedText:v19];

    [v24 setContextBefore:v20];
    [v24 setContextAfter:v21];

    [v24 setMarkedText:v23];
    v25 = v22;
    v13 = v29;
    [v24 setSelectedRangeInMarkedText:{v25, v28}];
    backingContext = v17->_backingContext;
    v17->_backingContext = v24;
  }

  return v17;
}

- (BETextDocumentContext)initWithAttributedSelectedText:(id)a3 contextBefore:(id)a4 contextAfter:(id)a5 markedText:(id)a6 selectedRangeInMarkedText:(_NSRange)a7
{
  length = a7.length;
  location = a7.location;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v30.receiver = self;
  v30.super_class = BETextDocumentContext;
  v17 = [(BETextDocumentContext *)&v30 init];
  if (v17)
  {
    v18 = MEMORY[0x1E69DD2A0];
    v19 = v13;
    v20 = v14;
    v28 = length;
    v21 = v15;
    v29 = v13;
    v22 = location;
    v23 = v16;
    v24 = objc_alloc_init(v18);
    [v24 setSelectedText:v19];

    [v24 setContextBefore:v20];
    [v24 setContextAfter:v21];

    [v24 setMarkedText:v23];
    v25 = v22;
    v13 = v29;
    [v24 setSelectedRangeInMarkedText:{v25, v28}];
    backingContext = v17->_backingContext;
    v17->_backingContext = v24;
  }

  return v17;
}

@end