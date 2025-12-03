@interface TUIWPDocument
- (TUIWPDocument)init;
- (TUIWPDocument)initWithContext:(id)context;
@end

@implementation TUIWPDocument

- (TUIWPDocument)init
{
  v3 = +[TUIWPTemporaryObjectContext temporaryObjectContext];
  v4 = [(TUIWPDocument *)self initWithContext:v3];

  return v4;
}

- (TUIWPDocument)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TUIWPDocument;
  v5 = [(TUIWPDocument *)&v9 initWithContext:contextCopy];
  if (v5)
  {
    v6 = [[TSSStylesheet alloc] initWithContext:contextCopy];
    stylesheet = v5->_stylesheet;
    v5->_stylesheet = v6;

    [(TUIWPDocument *)v5 documentDidLoad];
  }

  return v5;
}

@end