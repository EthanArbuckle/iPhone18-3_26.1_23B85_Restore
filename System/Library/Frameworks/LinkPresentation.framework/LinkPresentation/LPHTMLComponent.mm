@interface LPHTMLComponent
- (LPHTMLComponent)initWithTagName:(id)a3 themePath:(id)a4 generator:(id)a5;
- (LPLinkHTMLGenerator)generator;
- (id)childThemePathWithName:(id)a3;
- (void)addChild:(id)a3;
@end

@implementation LPHTMLComponent

- (LPHTMLComponent)initWithTagName:(id)a3 themePath:(id)a4 generator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = LPHTMLComponent;
  v11 = [(LPHTMLComponent *)&v17 init];
  if (v11)
  {
    WebThreadLock();
    v12 = [v10 parentDocument];
    v13 = [v12 createElement:v8];
    element = v11->_element;
    v11->_element = v13;

    objc_storeStrong(&v11->_themePath, a4);
    objc_storeWeak(&v11->_generator, v10);
    v15 = v11;
  }

  return v11;
}

- (void)addChild:(id)a3
{
  v7 = a3;
  WebThreadLock();
  [(NSMutableArray *)self->_children addObject:v7];
  element = self->_element;
  v5 = [v7 element];
  v6 = [(DOMElement *)element appendChild:v5];
}

- (id)childThemePathWithName:(id)a3
{
  v3 = [(NSString *)self->_themePath stringByAppendingFormat:@"-%@", a3];

  return v3;
}

- (LPLinkHTMLGenerator)generator
{
  WeakRetained = objc_loadWeakRetained(&self->_generator);

  return WeakRetained;
}

@end