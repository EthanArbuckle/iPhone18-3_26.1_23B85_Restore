@interface CRLWPInteriorCookie
- (CRLWPColumn)column;
- (CRLWPLayoutTarget)layout;
@end

@implementation CRLWPInteriorCookie

- (CRLWPColumn)column
{
  WeakRetained = objc_loadWeakRetained(&self->_column);

  return WeakRetained;
}

- (CRLWPLayoutTarget)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

@end