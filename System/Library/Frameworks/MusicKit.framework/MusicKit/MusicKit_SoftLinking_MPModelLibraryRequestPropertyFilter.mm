@interface MusicKit_SoftLinking_MPModelLibraryRequestPropertyFilter
- (MusicKit_SoftLinking_MPModelLibraryRequestPropertyFilter)initWithKeys:(id)keys value:(id)value type:(int64_t)type;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryRequestPropertyFilter

- (MusicKit_SoftLinking_MPModelLibraryRequestPropertyFilter)initWithKeys:(id)keys value:(id)value type:(int64_t)type
{
  keysCopy = keys;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = MusicKit_SoftLinking_MPModelLibraryRequestPropertyFilter;
  v10 = [(MusicKit_SoftLinking_MPModelLibraryRequestPropertyFilter *)&v17 init];
  if (v10)
  {
    v11 = [objc_opt_class() _underlyingComparisonTypeForComparisonType:type];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v12 = get_MPModelLibraryRequestPropertyFilterClass_softClass;
    v22 = get_MPModelLibraryRequestPropertyFilterClass_softClass;
    if (!get_MPModelLibraryRequestPropertyFilterClass_softClass)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __get_MPModelLibraryRequestPropertyFilterClass_block_invoke;
      v18[3] = &unk_278229610;
      v18[4] = &v19;
      __get_MPModelLibraryRequestPropertyFilterClass_block_invoke(v18);
      v12 = v20[3];
    }

    v13 = v12;
    _Block_object_dispose(&v19, 8);
    v14 = [[v12 alloc] initWithKeys:keysCopy value:valueCopy comparisonType:v11];
    underlyingPropertyFilter = v10->_underlyingPropertyFilter;
    v10->_underlyingPropertyFilter = v14;
  }

  return v10;
}

@end