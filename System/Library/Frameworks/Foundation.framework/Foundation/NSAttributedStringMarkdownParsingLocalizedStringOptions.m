@interface NSAttributedStringMarkdownParsingLocalizedStringOptions
@end

@implementation NSAttributedStringMarkdownParsingLocalizedStringOptions

uint64_t ___NSAttributedStringMarkdownParsingLocalizedStringOptions_block_invoke()
{
  qword_1ED43F1B0 = objc_alloc_init(NSAttributedStringMarkdownParsingOptions);
  [qword_1ED43F1B0 setAllowsExtendedAttributes:1];
  [qword_1ED43F1B0 setInterpretedSyntax:2];
  [qword_1ED43F1B0 setFailurePolicy:1];
  v0 = -[NSArray firstObject]([+[NSBundle mainBundle](NSBundle preferredLocalizations], "firstObject");
  v1 = qword_1ED43F1B0;

  return [v1 setLanguageCode:v0];
}

@end