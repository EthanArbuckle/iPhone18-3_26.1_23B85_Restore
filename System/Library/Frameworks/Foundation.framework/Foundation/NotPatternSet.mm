@interface NotPatternSet
@end

@implementation NotPatternSet

id ___NotPatternSet_block_invoke()
{
  if (qword_1ED43F148 != -1)
  {
    dispatch_once(&qword_1ED43F148, &__block_literal_global_7);
  }

  result = [_MergedGlobals_5 invertedSet];
  qword_1ED43F150 = result;
  return result;
}

@end