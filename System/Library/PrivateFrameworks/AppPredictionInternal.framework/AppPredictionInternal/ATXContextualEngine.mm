@interface ATXContextualEngine
+ (ATXContextualEngine)sharedInstance;
- (void)donateRerankedBlendingSuggestions:(id)suggestions;
@end

@implementation ATXContextualEngine

+ (ATXContextualEngine)sharedInstance
{
  if (qword_2813905D8 != -1)
  {
    swift_once();
  }

  v3 = qword_2813905E0;

  return v3;
}

- (void)donateRerankedBlendingSuggestions:(id)suggestions
{
  sub_2263B51C8();
  v4 = sub_226836568();
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x88);
  selfCopy = self;
  v7 = v6();
  (*((*v5 & *v7) + 0xA8))(v4);

  v8 = (*((*v5 & selfCopy->super.isa) + 0xA0))();
  (*((*v5 & *v8) + 0x90))();
}

@end