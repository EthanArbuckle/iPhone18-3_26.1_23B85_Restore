@interface KSXMLElementContentsProxy
- (void)forwardInvocation:(id)invocation;
- (void)ks_prepareWithTarget:(id)target XMLWriter:(id)writer;
@end

@implementation KSXMLElementContentsProxy

- (void)forwardInvocation:(id)invocation
{
  v10 = self->_XMLWriter;
  elementsCount = self->_elementsCount;
  [invocation invokeWithTarget:self->_target];
  target = self->_target;
  self->_target = 0;

  if ([(KSXMLWriter *)v10 openElementsCount]!= elementsCount)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:685 description:@"Writing element contents did not end the same number of sub-elements as it started"];
  }

  [(KSXMLWriter *)v10 endElement];
  XMLWriter = self->_XMLWriter;
  self->_XMLWriter = 0;
}

- (void)ks_prepareWithTarget:(id)target XMLWriter:(id)writer
{
  targetCopy = target;
  writerCopy = writer;
  if (!writerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:663 description:{@"Invalid parameter not satisfying: %@", @"writer"}];
  }

  target = self->_target;
  self->_target = targetCopy;
  v10 = targetCopy;

  XMLWriter = self->_XMLWriter;
  self->_XMLWriter = writerCopy;
  v12 = writerCopy;

  openElementsCount = [(KSXMLWriter *)v12 openElementsCount];
  self->_elementsCount = openElementsCount;
}

@end