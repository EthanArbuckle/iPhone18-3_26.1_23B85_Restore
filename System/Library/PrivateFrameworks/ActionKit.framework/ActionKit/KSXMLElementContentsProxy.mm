@interface KSXMLElementContentsProxy
- (void)forwardInvocation:(id)a3;
- (void)ks_prepareWithTarget:(id)a3 XMLWriter:(id)a4;
@end

@implementation KSXMLElementContentsProxy

- (void)forwardInvocation:(id)a3
{
  v10 = self->_XMLWriter;
  elementsCount = self->_elementsCount;
  [a3 invokeWithTarget:self->_target];
  target = self->_target;
  self->_target = 0;

  if ([(KSXMLWriter *)v10 openElementsCount]!= elementsCount)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:685 description:@"Writing element contents did not end the same number of sub-elements as it started"];
  }

  [(KSXMLWriter *)v10 endElement];
  XMLWriter = self->_XMLWriter;
  self->_XMLWriter = 0;
}

- (void)ks_prepareWithTarget:(id)a3 XMLWriter:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:663 description:{@"Invalid parameter not satisfying: %@", @"writer"}];
  }

  target = self->_target;
  self->_target = v7;
  v10 = v7;

  XMLWriter = self->_XMLWriter;
  self->_XMLWriter = v8;
  v12 = v8;

  v13 = [(KSXMLWriter *)v12 openElementsCount];
  self->_elementsCount = v13;
}

@end