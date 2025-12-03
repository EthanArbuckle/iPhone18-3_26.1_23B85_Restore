@interface TUIStructBuilder
- (TUIStructBuilder)initWithClosure:(id)closure basedOn:(id)on context:(id)context;
- (id)finalizeStruct;
- (void)setStructValue:(id)value forKey:(id)key;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation TUIStructBuilder

- (TUIStructBuilder)initWithClosure:(id)closure basedOn:(id)on context:(id)context
{
  onCopy = on;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = TUIStructBuilder;
  v11 = [(TUIStructBuilder *)&v13 init];
  if (v11)
  {
    v11->_context = [contextCopy _context];
    v11->_closure.index = closure.var0;
    objc_storeStrong(&v11->_basedOn, on);
  }

  return v11;
}

- (void)setValue:(id)value forKey:(id)key
{
  TUI::Evaluation::Context::resolve(self->_context, value.var0, v6);
  TUI::Evaluation::Variables::Scope::define(&self->_scope, key.var0 << 16, v6);
}

- (void)setStructValue:(id)value forKey:(id)key
{
  LODWORD(v8) = 18;
  valueCopy = value;
  v6 = key.var0 << 16;
  v7 = valueCopy;
  TUI::Evaluation::Variables::Scope::define(&self->_scope, v6, &v8);
}

- (id)finalizeStruct
{
  v3 = *(self->_context + 72);
  index = self->_closure.index;
  if (TUIClosureNotNil(self->_closure.index) && *(v3 + 376) > index && *(v3 + 368) + 28 * index)
  {
    TUI::Evaluation::Variables::Capture::create(0, *(self->_context + 71), &v6);
  }

  return 0;
}

@end