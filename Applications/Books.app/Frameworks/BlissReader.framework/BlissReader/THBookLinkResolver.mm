@interface THBookLinkResolver
- (THBookLinkResolver)initWithDocumentLinkResolver:(id)resolver glossaryLinkResolver:(id)linkResolver;
- (id)anchorFromAbsoluteLink:(id)link presentationType:(id)type;
- (void)dealloc;
@end

@implementation THBookLinkResolver

- (THBookLinkResolver)initWithDocumentLinkResolver:(id)resolver glossaryLinkResolver:(id)linkResolver
{
  v9.receiver = self;
  v9.super_class = THBookLinkResolver;
  v6 = [(THBookLinkResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(THBookLinkResolver *)v6 setDocumentLinkResolver:resolver];
    [(THBookLinkResolver *)v7 setGlossaryLinkResolver:linkResolver];
  }

  return v7;
}

- (void)dealloc
{
  [(THBookLinkResolver *)self setDocumentLinkResolver:0];
  [(THBookLinkResolver *)self setGlossaryLinkResolver:0];
  v3.receiver = self;
  v3.super_class = THBookLinkResolver;
  [(THBookLinkResolver *)&v3 dealloc];
}

- (id)anchorFromAbsoluteLink:(id)link presentationType:(id)type
{
  if (![(THBookLinkResolver *)self documentLinkResolver])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THBookLinkResolver *)self glossaryLinkResolver])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  result = [(THDocumentLinkResolver *)[(THBookLinkResolver *)self documentLinkResolver] anchorFromCustomLink:link presentationType:type];
  if (!result)
  {
    if ([link isRelative])
    {
      return 0;
    }

    else
    {
      result = [(THDocumentLinkResolver *)[(THBookLinkResolver *)self documentLinkResolver] anchorFromAbsoluteLink:link presentationType:type];
      if (!result)
      {
        glossaryLinkResolver = [(THBookLinkResolver *)self glossaryLinkResolver];

        return [(THGlossaryLinkResolver *)glossaryLinkResolver anchorFromAbsoluteLink:link];
      }
    }
  }

  return result;
}

@end