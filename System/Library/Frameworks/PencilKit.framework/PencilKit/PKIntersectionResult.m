@interface PKIntersectionResult
+ (id)noResult;
@end

@implementation PKIntersectionResult

+ (id)noResult
{
  if (_MergedGlobals_172 != -1)
  {
    dispatch_once(&_MergedGlobals_172, &__block_literal_global_92);
  }

  v3 = qword_1ED6A5588;

  return v3;
}

uint64_t __32__PKIntersectionResult_noResult__block_invoke()
{
  v0 = objc_alloc_init(PKIntersectionResult);
  v1 = qword_1ED6A5588;
  qword_1ED6A5588 = v0;

  v2 = [MEMORY[0x1E695DFB8] orderedSet];
  [qword_1ED6A5588 setIntersectedStrokes:v2];

  [qword_1ED6A5588 setIntersectionAlgorithmType:0];
  v3 = qword_1ED6A5588;

  return [v3 setContentType:0];
}

@end