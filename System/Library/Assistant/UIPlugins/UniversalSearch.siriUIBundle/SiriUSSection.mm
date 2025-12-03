@interface SiriUSSection
- (void)addResult:(id)result;
@end

@implementation SiriUSSection

- (void)addResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    results = self->_results;
    v8 = resultCopy;
    if (!results)
    {
      v6 = +[NSMutableArray array];
      v7 = self->_results;
      self->_results = v6;

      results = self->_results;
    }

    [(NSMutableArray *)results addObject:v8];
  }

  _objc_release_x1();
}

@end