@interface CRLDragInsertionContext
- (CGPoint)preferredCenter;
- (CRLDragInsertionContext)initWithPreferredCenter:(CGPoint)a3 required:(BOOL)a4 shouldEndEditing:(BOOL)a5 fromDragToInsertController:(BOOL)a6 insertFloating:(BOOL)a7 targetZOrder:(unint64_t)a8;
- (id)insertionContextFromInsertionContextWithNextZOrder;
- (id)insertionContextFromInsertionContextWithZOrder:(unint64_t)a3;
@end

@implementation CRLDragInsertionContext

- (CRLDragInsertionContext)initWithPreferredCenter:(CGPoint)a3 required:(BOOL)a4 shouldEndEditing:(BOOL)a5 fromDragToInsertController:(BOOL)a6 insertFloating:(BOOL)a7 targetZOrder:(unint64_t)a8
{
  y = a3.y;
  x = a3.x;
  v16.receiver = self;
  v16.super_class = CRLDragInsertionContext;
  result = [(CRLInsertionContext *)&v16 initSubclass];
  if (result)
  {
    result->_preferredCenter.x = x;
    result->_preferredCenter.y = y;
    result->_preferredCenterRequired = a4;
    result->_shouldEndEditing = a5;
    result->_fromDragToInsertController = a6;
    result->_insertFloating = a7;
    result->_targetZOrder = a8;
  }

  return result;
}

- (id)insertionContextFromInsertionContextWithZOrder:(unint64_t)a3
{
  v3 = [[CRLDragInsertionContext alloc] initWithPreferredCenter:self->_preferredCenterRequired required:self->_shouldEndEditing shouldEndEditing:self->_fromDragToInsertController fromDragToInsertController:self->_insertFloating insertFloating:a3 targetZOrder:self->_preferredCenter.x, self->_preferredCenter.y];

  return v3;
}

- (id)insertionContextFromInsertionContextWithNextZOrder
{
  targetZOrder = self->_targetZOrder;
  if (targetZOrder == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = targetZOrder + 1;
  }

  v4 = [[CRLDragInsertionContext alloc] initWithPreferredCenter:self->_preferredCenterRequired required:self->_shouldEndEditing shouldEndEditing:self->_fromDragToInsertController fromDragToInsertController:self->_insertFloating insertFloating:v3 targetZOrder:self->_preferredCenter.x, self->_preferredCenter.y];

  return v4;
}

- (CGPoint)preferredCenter
{
  x = self->_preferredCenter.x;
  y = self->_preferredCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end