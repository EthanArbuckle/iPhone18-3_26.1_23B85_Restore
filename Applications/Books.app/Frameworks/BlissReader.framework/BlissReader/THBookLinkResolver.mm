@interface THBookLinkResolver
- (THBookLinkResolver)initWithDocumentLinkResolver:(id)a3 glossaryLinkResolver:(id)a4;
- (id)anchorFromAbsoluteLink:(id)a3 presentationType:(id)a4;
- (void)dealloc;
@end

@implementation THBookLinkResolver

- (THBookLinkResolver)initWithDocumentLinkResolver:(id)a3 glossaryLinkResolver:(id)a4
{
  v9.receiver = self;
  v9.super_class = THBookLinkResolver;
  v6 = [(THBookLinkResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(THBookLinkResolver *)v6 setDocumentLinkResolver:a3];
    [(THBookLinkResolver *)v7 setGlossaryLinkResolver:a4];
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

- (id)anchorFromAbsoluteLink:(id)a3 presentationType:(id)a4
{
  if (![(THBookLinkResolver *)self documentLinkResolver])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THBookLinkResolver *)self glossaryLinkResolver])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  result = [(THDocumentLinkResolver *)[(THBookLinkResolver *)self documentLinkResolver] anchorFromCustomLink:a3 presentationType:a4];
  if (!result)
  {
    if ([a3 isRelative])
    {
      return 0;
    }

    else
    {
      result = [(THDocumentLinkResolver *)[(THBookLinkResolver *)self documentLinkResolver] anchorFromAbsoluteLink:a3 presentationType:a4];
      if (!result)
      {
        v8 = [(THBookLinkResolver *)self glossaryLinkResolver];

        return [(THGlossaryLinkResolver *)v8 anchorFromAbsoluteLink:a3];
      }
    }
  }

  return result;
}

@end