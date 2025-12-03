@interface LPHTMLComponent
- (LPHTMLComponent)initWithTagName:(id)name themePath:(id)path generator:(id)generator;
- (LPLinkHTMLGenerator)generator;
- (id)childThemePathWithName:(id)name;
- (void)addChild:(id)child;
@end

@implementation LPHTMLComponent

- (LPHTMLComponent)initWithTagName:(id)name themePath:(id)path generator:(id)generator
{
  nameCopy = name;
  pathCopy = path;
  generatorCopy = generator;
  v17.receiver = self;
  v17.super_class = LPHTMLComponent;
  v11 = [(LPHTMLComponent *)&v17 init];
  if (v11)
  {
    WebThreadLock();
    parentDocument = [generatorCopy parentDocument];
    v13 = [parentDocument createElement:nameCopy];
    element = v11->_element;
    v11->_element = v13;

    objc_storeStrong(&v11->_themePath, path);
    objc_storeWeak(&v11->_generator, generatorCopy);
    v15 = v11;
  }

  return v11;
}

- (void)addChild:(id)child
{
  childCopy = child;
  WebThreadLock();
  [(NSMutableArray *)self->_children addObject:childCopy];
  element = self->_element;
  element = [childCopy element];
  v6 = [(DOMElement *)element appendChild:element];
}

- (id)childThemePathWithName:(id)name
{
  name = [(NSString *)self->_themePath stringByAppendingFormat:@"-%@", name];

  return name;
}

- (LPLinkHTMLGenerator)generator
{
  WeakRetained = objc_loadWeakRetained(&self->_generator);

  return WeakRetained;
}

@end