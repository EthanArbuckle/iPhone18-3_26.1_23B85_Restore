@interface THModelGlossaryEntryFlushable
- (BOOL)hasCachedVersion;
- (BOOL)readFromApplePubWithDelegate:(id)delegate error:(id *)error;
- (THModelGlossaryEntryBody)body;
- (THModelGlossaryEntryFlushable)initWithParent:(id)parent;
- (id)applePubEntry;
- (id)applePubURL;
- (void)dealloc;
- (void)p_clearFlushableMembers;
- (void)p_populate;
- (void)p_populateParagraphStyle:(id)style;
@end

@implementation THModelGlossaryEntryFlushable

- (THModelGlossaryEntryFlushable)initWithParent:(id)parent
{
  v7.receiver = self;
  v7.super_class = THModelGlossaryEntryFlushable;
  v4 = [(THModelGlossaryEntryFlushable *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THModelGlossaryEntryFlushable *)v4 setParent:parent];
  }

  return v5;
}

- (void)p_clearFlushableMembers
{
  objc_sync_enter(self);

  self->mBody = 0;

  objc_sync_exit(self);
}

- (void)dealloc
{
  self->mParent = 0;
  [(THModelGlossaryEntryFlushable *)self p_clearFlushableMembers];
  v3.receiver = self;
  v3.super_class = THModelGlossaryEntryFlushable;
  [(THModelGlossaryEntryFlushable *)&v3 dealloc];
}

- (THModelGlossaryEntryBody)body
{
  objc_sync_enter(self);
  if (!self->mBody)
  {
    [(THModelGlossaryEntryFlushable *)self setBody:[[THModelGlossaryEntryBody alloc] initWithContext:[[(THModelGlossaryEntryFlushable *)self parent] context]]];
    [(THModelGlossaryEntryFlushable *)self readFromApplePubWithDelegate:0 error:0];
  }

  objc_sync_exit(self);
  return self->mBody;
}

- (void)p_populateParagraphStyle:(id)style
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1E47F4;
  v7[3] = &unk_45B500;
  v7[4] = style;
  [+[TSWPParagraphStyle paragraphProperties](TSWPParagraphStyle "paragraphProperties")];
  language = [(THBookDescription *)[(THDocumentRoot *)[[(THModelGlossaryEntry *)self->mParent glossary] documentRoot] bookDescription] language];
  if (language)
  {
    v6 = language;
  }

  else
  {
    v6 = @"en";
  }

  [style setBoxedValue:v6 forProperty:39];
}

- (void)p_populate
{
  body = [(THModelGlossaryEntryFlushable *)self body];
  context = [(THModelGlossaryEntryBody *)body context];
  v12 = [[TSSStylesheet alloc] initWithContext:context canCullStyles:0];
  [v12 setParent:{-[THDocumentRoot stylesheet](-[THModelGlossary documentRoot](-[THModelGlossaryEntry glossary](self->mParent, "glossary"), "documentRoot"), "stylesheet")}];
  [(THModelGlossaryEntryBody *)body setStylesheet:v12];
  v5 = [TSWPParagraphStyle defaultStyleWithContext:context];
  [(THModelGlossaryEntryFlushable *)self p_populateParagraphStyle:v5];
  [v12 addStyle:v5 withIdentifier:kTSWPDefaultGlossaryParagraphStyleIdentifier];
  v6 = [TSWPListStyle defaultStyleWithContext:context];
  [v12 addStyle:v6 withIdentifier:TSWPDefaultListStyleIdentifier];
  v7 = [TSWPColumnStyle defaultStyleWithContext:context];
  [v12 addStyle:v7 withIdentifier:kTSWPDefaultGlossaryColumnStyleIdentifier];
  v8 = [[THWPStorage alloc] initWithContext:context string:0 kind:0 stylesheet:v12 paragraphStyle:v5 listStyle:v6 section:0 columnStyle:v7];
  v9 = [[THWPStorage alloc] initWithContext:context string:0 kind:0 stylesheet:v12 paragraphStyle:v5 listStyle:v6 section:0 columnStyle:v7];
  v10 = [[THWPStorage alloc] initWithContext:context string:0 kind:0 stylesheet:v12 paragraphStyle:v5 listStyle:v6 section:0 columnStyle:v7];
  v11 = [[THWPStorage alloc] initWithContext:context string:0 kind:0 stylesheet:v12 paragraphStyle:v5 listStyle:v6 section:0 columnStyle:v7];
  [(THModelGlossaryEntryBody *)body setHeaderInfo:v8];
  [(THModelGlossaryEntryBody *)body setBodyStorage:v9];
  [(THModelGlossaryEntryBody *)body setRelatedTermsInfo:v10];
  [(THModelGlossaryEntryBody *)body setLinksInfo:v11];
}

- (id)applePubURL
{
  applePubURL = [[[(THModelGlossaryEntryFlushable *)self parent] glossary] applePubURL];

  return [(NSURL *)applePubURL path];
}

- (id)applePubEntry
{
  parent = [(THModelGlossaryEntryFlushable *)self parent];

  return [(THModelGlossaryEntry *)parent applePubRelativePath];
}

- (BOOL)readFromApplePubWithDelegate:(id)delegate error:(id *)error
{
  v5 = [(THModelGlossaryEntryFlushable *)self applePubURL:delegate];
  applePubEntry = [(THModelGlossaryEntryFlushable *)self applePubEntry];
  v7 = objc_alloc_init(NSAutoreleasePool);
  v8 = [[PFXArchive alloc] initWithPath:v5];
  if (![(PFXArchive *)v8 isValid])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(PFXArchive *)v8 isValid])
  {
    v9 = 0;
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  [(THModelGlossaryEntryFlushable *)self p_populate];
  v9 = [[PFAIGlossaryState alloc] initWithEntryBody:[(THModelGlossaryEntryFlushable *)self body] documentRoot:[[(THModelGlossaryEntry *)self->mParent glossary] documentRoot] archive:v8 documentEntryUri:applePubEntry];
  [(PFXHtmlReaderState *)v9 setPageContentWidth:600.0];
  if (![(PFXXmlStreamReaderState *)v9 streamAPI])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(PFXXmlStreamReaderState *)v9 streamAPI])
  {
    goto LABEL_9;
  }

  v10 = [PFAIGlossaryDocument readWithState:v9];
LABEL_10:

  return v10;
}

- (BOOL)hasCachedVersion
{
  applePubURL = [(THModelGlossaryEntryFlushable *)self applePubURL];
  applePubEntry = [(THModelGlossaryEntryFlushable *)self applePubEntry];
  v5 = 0;
  if (applePubURL)
  {
    v6 = applePubEntry;
    if (applePubEntry)
    {
      v7 = [[PFXArchive alloc] initWithPath:applePubURL];
      v5 = [(PFXArchive *)v7 decryptEntryWithName:v6 error:0]!= 0;
    }
  }

  return v5;
}

@end