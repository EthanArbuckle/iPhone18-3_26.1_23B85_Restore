@interface CRLDragInsertionContext
- (CGPoint)preferredCenter;
- (CRLDragInsertionContext)initWithPreferredCenter:(CGPoint)center required:(BOOL)required shouldEndEditing:(BOOL)editing fromDragToInsertController:(BOOL)controller insertFloating:(BOOL)floating targetZOrder:(unint64_t)order;
- (id)insertionContextFromInsertionContextWithNextZOrder;
- (id)insertionContextFromInsertionContextWithZOrder:(unint64_t)order;
@end

@implementation CRLDragInsertionContext

- (CRLDragInsertionContext)initWithPreferredCenter:(CGPoint)center required:(BOOL)required shouldEndEditing:(BOOL)editing fromDragToInsertController:(BOOL)controller insertFloating:(BOOL)floating targetZOrder:(unint64_t)order
{
  y = center.y;
  x = center.x;
  v16.receiver = self;
  v16.super_class = CRLDragInsertionContext;
  result = [(CRLInsertionContext *)&v16 initSubclass];
  if (result)
  {
    result->_preferredCenter.x = x;
    result->_preferredCenter.y = y;
    result->_preferredCenterRequired = required;
    result->_shouldEndEditing = editing;
    result->_fromDragToInsertController = controller;
    result->_insertFloating = floating;
    result->_targetZOrder = order;
  }

  return result;
}

- (id)insertionContextFromInsertionContextWithZOrder:(unint64_t)order
{
  v3 = [[CRLDragInsertionContext alloc] initWithPreferredCenter:self->_preferredCenterRequired required:self->_shouldEndEditing shouldEndEditing:self->_fromDragToInsertController fromDragToInsertController:self->_insertFloating insertFloating:order targetZOrder:self->_preferredCenter.x, self->_preferredCenter.y];

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