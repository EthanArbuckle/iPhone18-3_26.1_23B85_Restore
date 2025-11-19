@interface BKStringTranscriptTarget
- (BKStringTranscriptTarget)init;
@end

@implementation BKStringTranscriptTarget

- (BKStringTranscriptTarget)init
{
  v6.receiver = self;
  v6.super_class = BKStringTranscriptTarget;
  v2 = [(BKStringTranscriptTarget *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
    string = v2->_string;
    v2->_string = v3;
  }

  return v2;
}

@end