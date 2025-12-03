@interface THModelGlossaryEntryAnchor
+ (id)glossaryEntryAnchorWithGlossaryEntry:(id)entry;
@end

@implementation THModelGlossaryEntryAnchor

+ (id)glossaryEntryAnchorWithGlossaryEntry:(id)entry
{
  v3 = [(THModelBoundAnchor *)[THModelGlossaryEntryAnchor alloc] initWithGlossaryEntry:entry];

  return v3;
}

@end