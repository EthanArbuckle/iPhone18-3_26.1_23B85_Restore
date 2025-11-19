@interface GAXPathContext
- (GAXPathContext)initWithLastSeenCGPath:(CGPath *)a3;
- (void)dealloc;
@end

@implementation GAXPathContext

- (GAXPathContext)initWithLastSeenCGPath:(CGPath *)a3
{
  v6.receiver = self;
  v6.super_class = GAXPathContext;
  v4 = [(GAXPathContext *)&v6 init];
  if (v4)
  {
    if (a3)
    {
      v4->_lastSeenCGPath = CGPathRetain(a3);
      v4->_linePointsContexts = AXCArrayCreate();
      v4->_linePointsIndicesPerElementIndices = AXCArrayCreate();
    }

    if (!v4->_lastSeenCGPath || !v4->_linePointsContexts || !v4->_linePointsIndicesPerElementIndices)
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  lastSeenCGPath = self->_lastSeenCGPath;
  if (lastSeenCGPath)
  {
    CGPathRelease(lastSeenCGPath);
  }

  linePointsContexts = self->_linePointsContexts;
  if (linePointsContexts)
  {
    CFRelease(linePointsContexts);
  }

  linePointsIndicesPerElementIndices = self->_linePointsIndicesPerElementIndices;
  if (linePointsIndicesPerElementIndices)
  {
    CFRelease(linePointsIndicesPerElementIndices);
  }

  v6.receiver = self;
  v6.super_class = GAXPathContext;
  [(GAXPathContext *)&v6 dealloc];
}

@end