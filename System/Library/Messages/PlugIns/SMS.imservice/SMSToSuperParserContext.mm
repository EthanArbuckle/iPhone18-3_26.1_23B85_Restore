@interface SMSToSuperParserContext
- (void)_addPart:(id)a3;
- (void)dealloc;
@end

@implementation SMSToSuperParserContext

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SMSToSuperParserContext;
  [(SMSToSuperParserContext *)&v3 dealloc];
}

- (void)_addPart:(id)a3
{
  if (a3)
  {
    orderedParts = self->_orderedParts;
    if (!orderedParts)
    {
      orderedParts = objc_alloc_init(NSMutableArray);
      self->_orderedParts = orderedParts;
    }

    [(NSMutableArray *)orderedParts addObject:a3];
  }
}

@end