@interface CRLInsertionContext
+ (id)dragInsertionContextWithPreferredCenter:(CGPoint)a3 required:(BOOL)a4 shouldEndEditing:(BOOL)a5 fromDragToInsertController:(BOOL)a6 insertFloating:(BOOL)a7 targetZOrder:(unint64_t)a8;
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

+ (id)dragInsertionContextWithPreferredCenter:(CGPoint)a3 required:(BOOL)a4 shouldEndEditing:(BOOL)a5 fromDragToInsertController:(BOOL)a6 insertFloating:(BOOL)a7 targetZOrder:(unint64_t)a8
{
  v8 = [[CRLDragInsertionContext alloc] initWithPreferredCenter:a4 required:a5 shouldEndEditing:a6 fromDragToInsertController:a7 insertFloating:a8 targetZOrder:a3.x, a3.y];

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