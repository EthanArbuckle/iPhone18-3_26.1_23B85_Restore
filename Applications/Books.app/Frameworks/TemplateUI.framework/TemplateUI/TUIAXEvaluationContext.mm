@interface TUIAXEvaluationContext
- (CGPoint)sectionOffset;
- (TUIAXEvaluationContext)init;
- (TUIAXScreenOffsetProviding)screenOffsetProvider;
@end

@implementation TUIAXEvaluationContext

- (TUIAXEvaluationContext)init
{
  v6.receiver = self;
  v6.super_class = TUIAXEvaluationContext;
  v2 = [(TUIAXEvaluationContext *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    identifierToAXElementMap = v2->_identifierToAXElementMap;
    v2->_identifierToAXElementMap = v3;
  }

  return v2;
}

- (TUIAXScreenOffsetProviding)screenOffsetProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_screenOffsetProvider);

  return WeakRetained;
}

- (CGPoint)sectionOffset
{
  x = self->_sectionOffset.x;
  y = self->_sectionOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end