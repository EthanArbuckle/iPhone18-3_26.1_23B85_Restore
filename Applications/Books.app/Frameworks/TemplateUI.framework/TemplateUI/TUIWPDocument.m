@interface TUIWPDocument
- (TUIWPDocument)init;
- (TUIWPDocument)initWithContext:(id)a3;
@end

@implementation TUIWPDocument

- (TUIWPDocument)init
{
  v3 = +[TUIWPTemporaryObjectContext temporaryObjectContext];
  v4 = [(TUIWPDocument *)self initWithContext:v3];

  return v4;
}

- (TUIWPDocument)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIWPDocument;
  v5 = [(TUIWPDocument *)&v9 initWithContext:v4];
  if (v5)
  {
    v6 = [[TSSStylesheet alloc] initWithContext:v4];
    stylesheet = v5->_stylesheet;
    v5->_stylesheet = v6;

    [(TUIWPDocument *)v5 documentDidLoad];
  }

  return v5;
}

@end