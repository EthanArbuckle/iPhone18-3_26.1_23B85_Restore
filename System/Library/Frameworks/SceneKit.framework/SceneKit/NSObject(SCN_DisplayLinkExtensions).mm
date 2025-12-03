@interface NSObject(SCN_DisplayLinkExtensions)
- (SCNDisplayLink)SCN_setupDisplayLinkWithQueue:()SCN_DisplayLinkExtensions screen:policy:;
@end

@implementation NSObject(SCN_DisplayLinkExtensions)

- (SCNDisplayLink)SCN_setupDisplayLinkWithQueue:()SCN_DisplayLinkExtensions screen:policy:
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v10 = [SCNDisplayLink alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__NSObject_SCN_DisplayLinkExtensions__SCN_setupDisplayLinkWithQueue_screen_policy___block_invoke;
  v13[3] = &unk_2782FD9A0;
  objc_copyWeak(&v14, &location);
  v11 = [(SCNDisplayLink *)v10 initWithQueue:v8 screen:v9 policy:a5 block:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v11;
}

@end