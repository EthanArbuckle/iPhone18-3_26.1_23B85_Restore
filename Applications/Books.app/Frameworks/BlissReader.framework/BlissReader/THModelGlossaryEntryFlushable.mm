@interface THModelGlossaryEntryFlushable
- (BOOL)hasCachedVersion;
- (BOOL)readFromApplePubWithDelegate:(id)a3 error:(id *)a4;
- (THModelGlossaryEntryBody)body;
- (THModelGlossaryEntryFlushable)initWithParent:(id)a3;
- (id)applePubEntry;
- (id)applePubURL;
- (void)dealloc;
- (void)p_clearFlushableMembers;
- (void)p_populate;
- (void)p_populateParagraphStyle:(id)a3;
@end

@implementation THModelGlossaryEntryFlushable

- (THModelGlossaryEntryFlushable)initWithParent:(id)a3
{
  v7.receiver = self;
  v7.super_class = THModelGlossaryEntryFlushable;
  v4 = [(THModelGlossaryEntryFlushable *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THModelGlossaryEntryFlushable *)v4 setParent:a3];
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

- (void)p_populateParagraphStyle:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1E47F4;
  v7[3] = &unk_45B500;
  v7[4] = a3;
  [+[TSWPParagraphStyle paragraphProperties](TSWPParagraphStyle "paragraphProperties")];
  v5 = [(THBookDescription *)[(THDocumentRoot *)[[(THModelGlossaryEntry *)self->mParent glossary] documentRoot] bookDescription] language];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"en";
  }

  [a3 setBoxedValue:v6 forProperty:39];
}

- (void)p_populate
{
  v3 = [(THModelGlossaryEntryFlushable *)self body];
  v4 = [(THModelGlossaryEntryBody *)v3 context];
  v12 = [[TSSStylesheet alloc] initWithContext:v4 canCullStyles:0];
  [v12 setParent:{-[THDocumentRoot stylesheet](-[THModelGlossary documentRoot](-[THModelGlossaryEntry glossary](self->mParent, "glossary"), "documentRoot"), "stylesheet")}];
  [(THModelGlossaryEntryBody *)v3 setStylesheet:v12];
  v5 = [TSWPParagraphStyle defaultStyleWithContext:v4];
  [(THModelGlossaryEntryFlushable *)self p_populateParagraphStyle:v5];
  [v12 addStyle:v5 withIdentifier:kTSWPDefaultGlossaryParagraphStyleIdentifier];
  v6 = [TSWPListStyle defaultStyleWithContext:v4];
  [v12 addStyle:v6 withIdentifier:TSWPDefaultListStyleIdentifier];
  v7 = [TSWPColumnStyle defaultStyleWithContext:v4];
  [v12 addStyle:v7 withIdentifier:kTSWPDefaultGlossaryColumnStyleIdentifier];
  v8 = [[THWPStorage alloc] initWithContext:v4 string:0 kind:0 stylesheet:v12 paragraphStyle:v5 listStyle:v6 section:0 columnStyle:v7];
  v9 = [[THWPStorage alloc] initWithContext:v4 string:0 kind:0 stylesheet:v12 paragraphStyle:v5 listStyle:v6 section:0 columnStyle:v7];
  v10 = [[THWPStorage alloc] initWithContext:v4 string:0 kind:0 stylesheet:v12 paragraphStyle:v5 listStyle:v6 section:0 columnStyle:v7];
  v11 = [[THWPStorage alloc] initWithContext:v4 string:0 kind:0 stylesheet:v12 paragraphStyle:v5 listStyle:v6 section:0 columnStyle:v7];
  [(THModelGlossaryEntryBody *)v3 setHeaderInfo:v8];
  [(THModelGlossaryEntryBody *)v3 setBodyStorage:v9];
  [(THModelGlossaryEntryBody *)v3 setRelatedTermsInfo:v10];
  [(THModelGlossaryEntryBody *)v3 setLinksInfo:v11];
}

- (id)applePubURL
{
  v2 = [[[(THModelGlossaryEntryFlushable *)self parent] glossary] applePubURL];

  return [(NSURL *)v2 path];
}

- (id)applePubEntry
{
  v2 = [(THModelGlossaryEntryFlushable *)self parent];

  return [(THModelGlossaryEntry *)v2 applePubRelativePath];
}

- (BOOL)readFromApplePubWithDelegate:(id)a3 error:(id *)a4
{
  v5 = [(THModelGlossaryEntryFlushable *)self applePubURL:a3];
  v6 = [(THModelGlossaryEntryFlushable *)self applePubEntry];
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
  v9 = [[PFAIGlossaryState alloc] initWithEntryBody:[(THModelGlossaryEntryFlushable *)self body] documentRoot:[[(THModelGlossaryEntry *)self->mParent glossary] documentRoot] archive:v8 documentEntryUri:v6];
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
  v3 = [(THModelGlossaryEntryFlushable *)self applePubURL];
  v4 = [(THModelGlossaryEntryFlushable *)self applePubEntry];
  v5 = 0;
  if (v3)
  {
    v6 = v4;
    if (v4)
    {
      v7 = [[PFXArchive alloc] initWithPath:v3];
      v5 = [(PFXArchive *)v7 decryptEntryWithName:v6 error:0]!= 0;
    }
  }

  return v5;
}

@end