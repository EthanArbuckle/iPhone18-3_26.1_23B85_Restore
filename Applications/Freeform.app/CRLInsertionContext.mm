@interface CRLInsertionContext
+ (id)dragInsertionContextWithPreferredCenter:(CGPoint)center required:(BOOL)required shouldEndEditing:(BOOL)editing fromDragToInsertController:(BOOL)controller insertFloating:(BOOL)floating targetZOrder:(unint64_t)order;
+ (id)iosDragFloatingInsertionContext;
+ (id)nonInteractiveFloatingInsertionContext;
+ (id)nonInteractiveInlineInsertionContext;
+ (id)nonInteractiveInsertionContext;
+ (id)nonInteractiveNonEditingEndingFloatingInsertionContext;
- (CGPoint)preferredCenter;
- (id)initSubclass;
@end

@implementation CRLInsertionContext

- (id)initSubclass
{
  v3.receiver = self;
  v3.super_class = CRLInsertionContext;
  return [(CRLInsertionContext *)&v3 init];
}

+ (id)nonInteractiveInsertionContext
{
  if (qword_101A34AD0 != -1)
  {
    sub_10134ED5C();
  }

  v3 = qword_101A34AC8;

  return v3;
}

+ (id)nonInteractiveFloatingInsertionContext
{
  if (qword_101A34AE0 != -1)
  {
    sub_10134ED70();
  }

  v3 = qword_101A34AD8;

  return v3;
}

+ (id)iosDragFloatingInsertionContext
{
  if (qword_101A34AF0 != -1)
  {
    sub_10134ED84();
  }

  v3 = qword_101A34AE8;

  return v3;
}

+ (id)nonInteractiveNonEditingEndingFloatingInsertionContext
{
  if (qword_101A34B00 != -1)
  {
    sub_10134ED98();
  }

  v3 = qword_101A34AF8;

  return v3;
}

+ (id)nonInteractiveInlineInsertionContext
{
  if (qword_101A34B10 != -1)
  {
    sub_10134EDAC();
  }

  v3 = qword_101A34B08;

  return v3;
}

+ (id)dragInsertionContextWithPreferredCenter:(CGPoint)center required:(BOOL)required shouldEndEditing:(BOOL)editing fromDragToInsertController:(BOOL)controller insertFloating:(BOOL)floating targetZOrder:(unint64_t)order
{
  v8 = [[CRLDragInsertionContext alloc] initWithPreferredCenter:required required:editing shouldEndEditing:controller fromDragToInsertController:floating insertFloating:order targetZOrder:center.x, center.y];

  return v8;
}

- (CGPoint)preferredCenter
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

@end