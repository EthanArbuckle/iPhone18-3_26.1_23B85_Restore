@interface _NSZeroData
+ (id)data;
- (_NSZeroData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 deallocator:(id)a6;
@end

@implementation _NSZeroData

+ (id)data
{
  if (qword_1ED43ED88 != -1)
  {
    dispatch_once(&qword_1ED43ED88, &__block_literal_global_245);
  }

  return _MergedGlobals_35;
}

- (_NSZeroData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 deallocator:(id)a6
{
  v7 = a5;
  _NSDataReinitializationBreak();
  v10 = objc_alloc(MEMORY[0x1E695DEF0]);

  return [v10 initWithBytes:a3 length:a4 copy:v7 deallocator:a6];
}

@end