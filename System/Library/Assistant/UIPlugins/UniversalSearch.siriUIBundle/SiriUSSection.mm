@interface SiriUSSection
- (void)addResult:(id)a3;
@end

@implementation SiriUSSection

- (void)addResult:(id)a3
{
  v4 = a3;
  if (v4)
  {
    results = self->_results;
    v8 = v4;
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