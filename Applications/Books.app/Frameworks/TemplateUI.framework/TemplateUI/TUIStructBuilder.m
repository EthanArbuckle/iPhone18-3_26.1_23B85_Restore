@interface TUIStructBuilder
- (TUIStructBuilder)initWithClosure:(id)a3 basedOn:(id)a4 context:(id)a5;
- (id)finalizeStruct;
- (void)setStructValue:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation TUIStructBuilder

- (TUIStructBuilder)initWithClosure:(id)a3 basedOn:(id)a4 context:(id)a5
{
  v9 = a4;
  v10 = a5;
  v13.receiver = self;
  v13.super_class = TUIStructBuilder;
  v11 = [(TUIStructBuilder *)&v13 init];
  if (v11)
  {
    v11->_context = [v10 _context];
    v11->_closure.index = a3.var0;
    objc_storeStrong(&v11->_basedOn, a4);
  }

  return v11;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  TUI::Evaluation::Context::resolve(self->_context, a3.var0, v6);
  TUI::Evaluation::Variables::Scope::define(&self->_scope, a4.var0 << 16, v6);
}

- (void)setStructValue:(id)a3 forKey:(id)a4
{
  LODWORD(v8) = 18;
  v9 = a3;
  v6 = a4.var0 << 16;
  v7 = v9;
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