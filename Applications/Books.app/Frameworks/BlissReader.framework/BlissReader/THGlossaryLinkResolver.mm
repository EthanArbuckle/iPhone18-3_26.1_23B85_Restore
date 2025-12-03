@interface THGlossaryLinkResolver
+ (THGlossaryLinkResolver)glossaryLinkResolverWithGlossaryController:(id)controller;
- (THGlossaryLinkResolver)initWithGlossaryController:(id)controller;
- (id)anchorFromAbsoluteLink:(id)link;
- (void)dealloc;
@end

@implementation THGlossaryLinkResolver

+ (THGlossaryLinkResolver)glossaryLinkResolverWithGlossaryController:(id)controller
{
  v3 = [objc_alloc(objc_opt_class()) initWithGlossaryController:controller];

  return v3;
}

- (THGlossaryLinkResolver)initWithGlossaryController:(id)controller
{
  v7.receiver = self;
  v7.super_class = THGlossaryLinkResolver;
  v4 = [(THGlossaryLinkResolver *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THGlossaryLinkResolver *)v4 setGlossaryController:controller];
  }

  return v5;
}

- (void)dealloc
{
  self->mGlossaryController = 0;
  v2.receiver = self;
  v2.super_class = THGlossaryLinkResolver;
  [(THGlossaryLinkResolver *)&v2 dealloc];
}

- (id)anchorFromAbsoluteLink:(id)link
{
  docRelativePath = [link docRelativePath];
  if (!docRelativePath)
  {
    return 0;
  }

  v5 = -[THGlossaryController entryForPath:](-[THGlossaryLinkResolver glossaryController](self, "glossaryController"), "entryForPath:", [@"/" stringByAppendingString:docRelativePath]);
  if (!v5)
  {
    return 0;
  }

  return [THModelGlossaryEntryAnchor glossaryEntryAnchorWithGlossaryEntry:v5];
}

@end