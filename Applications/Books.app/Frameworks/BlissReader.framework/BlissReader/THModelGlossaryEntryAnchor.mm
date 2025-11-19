@interface THModelGlossaryEntryAnchor
+ (id)glossaryEntryAnchorWithGlossaryEntry:(id)a3;
@end

@implementation THModelGlossaryEntryAnchor

+ (id)glossaryEntryAnchorWithGlossaryEntry:(id)a3
{
  v3 = [(THModelBoundAnchor *)[THModelGlossaryEntryAnchor alloc] initWithGlossaryEntry:a3];

  return v3;
}

@end