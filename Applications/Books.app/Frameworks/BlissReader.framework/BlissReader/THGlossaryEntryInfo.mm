@interface THGlossaryEntryInfo
- (BOOL)hasTitle;
- (BOOL)isAnchoredToText;
- (BOOL)isInlineWithText;
- (THGlossaryEntryInfo)initWithEntry:(id)entry body:(id)body;
- (THWPStorage)bodyStorage;
- (THWPStorage)headerInfo;
- (THWPStorage)linksInfo;
- (THWPStorage)relatedTermsInfo;
- (TSDInfoGeometry)geometry;
- (id)childEnumerator;
- (id)childInfos;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setOwningAttachment:(id)attachment;
@end

@implementation THGlossaryEntryInfo

- (THGlossaryEntryInfo)initWithEntry:(id)entry body:(id)body
{
  v12.receiver = self;
  v12.super_class = THGlossaryEntryInfo;
  v6 = [(THGlossaryEntryInfo *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->mEntry = entry;
    v6->mBody = body;
    v8 = +[TSSPropertyMap propertyMap];
    [v8 setObject:+[TSUColor colorWithRed:green:blue:alpha:](TSUColor forProperty:{"colorWithRed:green:blue:alpha:", 0.0, 0.478431373, 1.0, 1.0), 18}];
    [v8 setObject:objc_msgSend(+[TSUFont systemFontOfSize:](TSUFont forProperty:{"systemFontOfSize:", 15.0), "fontName"), 16}];
    LODWORD(v9) = 15.0;
    [v8 setFloatValue:17 forProperty:v9];
    v13[0] = [(THModelGlossaryEntryBody *)[(THGlossaryEntryInfo *)v7 body] relatedTermsInfo];
    v13[1] = [(THModelGlossaryEntryBody *)[(THGlossaryEntryInfo *)v7 body] linksInfo];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_BEA60;
    v11[3] = &unk_45CFD0;
    v11[4] = v8;
    [[NSArray arrayWithObjects:2 count:?], "enumerateObjectsUsingBlock:", v11];
    if ([objc_msgSend(objc_msgSend(body "body")])
    {
      v7->mFloatingInfo = [[THGlossaryEntryFloatingInfo alloc] initWithEntry:entry body:body];
    }
  }

  return v7;
}

- (void)dealloc
{
  self->mChildInfos = 0;

  self->mFloatingInfo = 0;
  self->mBody = 0;
  v3.receiver = self;
  v3.super_class = THGlossaryEntryInfo;
  [(THGlossaryEntryInfo *)&v3 dealloc];
}

- (BOOL)hasTitle
{
  bodyStorage = [(THModelGlossaryEntryBody *)[(THGlossaryEntryInfo *)self body] bodyStorage];
  if (bodyStorage)
  {
    LOBYTE(bodyStorage) = [(THWPStorage *)[(THModelGlossaryEntryBody *)[(THGlossaryEntryInfo *)self body] bodyStorage] length]!= 0;
  }

  return bodyStorage;
}

- (THWPStorage)headerInfo
{
  body = [(THGlossaryEntryInfo *)self body];

  return [(THModelGlossaryEntryBody *)body headerInfo];
}

- (THWPStorage)bodyStorage
{
  body = [(THGlossaryEntryInfo *)self body];

  return [(THModelGlossaryEntryBody *)body bodyStorage];
}

- (THWPStorage)relatedTermsInfo
{
  body = [(THGlossaryEntryInfo *)self body];

  return [(THModelGlossaryEntryBody *)body relatedTermsInfo];
}

- (THWPStorage)linksInfo
{
  body = [(THGlossaryEntryInfo *)self body];

  return [(THModelGlossaryEntryBody *)body linksInfo];
}

- (id)childEnumerator
{
  childInfos = [(THGlossaryEntryInfo *)self childInfos];

  return [childInfos objectEnumerator];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithEntry:body:", self->mEntry, self->mBody}];
  [v4 setParentInfo:{-[THGlossaryEntryInfo parentInfo](self, "parentInfo")}];
  [v4 setOwningAttachment:{-[THGlossaryEntryInfo owningAttachment](self, "owningAttachment")}];
  return v4;
}

- (TSDInfoGeometry)geometry
{
  v2 = objc_alloc_init(TSDInfoGeometry);

  return v2;
}

- (void)setOwningAttachment:(id)attachment
{
  if (attachment)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THGlossaryEntryInfo setOwningAttachment:]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THGlossaryEntryInfo.m"];

    [v3 handleFailureInFunction:v4 file:v5 lineNumber:152 description:@"Glossary entries should not have an owning attachment."];
  }
}

- (BOOL)isAnchoredToText
{
  owningAttachment = [(THGlossaryEntryInfo *)self owningAttachment];

  return [(TSDOwningAttachment *)owningAttachment isAnchored];
}

- (BOOL)isInlineWithText
{
  if ([(THGlossaryEntryInfo *)self isFloatingAboveText])
  {
    return 0;
  }

  else
  {
    return ![(THGlossaryEntryInfo *)self isAnchoredToText];
  }
}

- (id)childInfos
{
  body = [(THGlossaryEntryInfo *)self body];
  result = self->mChildInfos;
  if (!result)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](-[THModelGlossaryEntryBody bodyFloatingInfos](body, "bodyFloatingInfos"), "count") + 4}];
    if ([(THModelGlossaryEntryBody *)body headerInfo])
    {
      [v5 addObject:{-[THModelGlossaryEntryBody headerInfo](body, "headerInfo")}];
    }

    if ([(THGlossaryEntryInfo *)self floatingInfo])
    {
      [v5 addObject:{-[THGlossaryEntryInfo floatingInfo](self, "floatingInfo")}];
    }

    if ([(THModelGlossaryEntryBody *)body bodyStorage])
    {
      [v5 addObject:{-[THModelGlossaryEntryBody bodyStorage](body, "bodyStorage")}];
    }

    if ([(THModelGlossaryEntryBody *)body relatedTermsInfo])
    {
      [v5 addObject:{-[THModelGlossaryEntryBody relatedTermsInfo](body, "relatedTermsInfo")}];
    }

    if ([(THModelGlossaryEntryBody *)body linksInfo])
    {
      [v5 addObject:{-[THModelGlossaryEntryBody linksInfo](body, "linksInfo")}];
    }

    self->mChildInfos = [[NSArray alloc] initWithArray:v5];

    return self->mChildInfos;
  }

  return result;
}

@end