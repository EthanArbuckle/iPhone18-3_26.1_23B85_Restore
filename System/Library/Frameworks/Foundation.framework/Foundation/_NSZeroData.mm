@interface _NSZeroData
+ (id)data;
- (_NSZeroData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator;
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

- (_NSZeroData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator
{
  copyCopy = copy;
  _NSDataReinitializationBreak();
  v10 = objc_alloc(MEMORY[0x1E695DEF0]);

  return [v10 initWithBytes:bytes length:length copy:copyCopy deallocator:deallocator];
}

@end