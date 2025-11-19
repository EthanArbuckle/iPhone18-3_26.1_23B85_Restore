@interface THGlossaryEntryInfo
- (BOOL)hasTitle;
- (BOOL)isAnchoredToText;
- (BOOL)isInlineWithText;
- (THGlossaryEntryInfo)initWithEntry:(id)a3 body:(id)a4;
- (THWPStorage)bodyStorage;
- (THWPStorage)headerInfo;
- (THWPStorage)linksInfo;
- (THWPStorage)relatedTermsInfo;
- (TSDInfoGeometry)geometry;
- (id)childEnumerator;
- (id)childInfos;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setOwningAttachment:(id)a3;
@end

@implementation THGlossaryEntryInfo

- (THGlossaryEntryInfo)initWithEntry:(id)a3 body:(id)a4
{
  v12.receiver = self;
  v12.super_class = THGlossaryEntryInfo;
  v6 = [(THGlossaryEntryInfo *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->mEntry = a3;
    v6->mBody = a4;
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
    if ([objc_msgSend(objc_msgSend(a4 "body")])
    {
      v7->mFloatingInfo = [[THGlossaryEntryFloatingInfo alloc] initWithEntry:a3 body:a4];
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
  v3 = [(THModelGlossaryEntryBody *)[(THGlossaryEntryInfo *)self body] bodyStorage];
  if (v3)
  {
    LOBYTE(v3) = [(THWPStorage *)[(THModelGlossaryEntryBody *)[(THGlossaryEntryInfo *)self body] bodyStorage] length]!= 0;
  }

  return v3;
}

- (THWPStorage)headerInfo
{
  v2 = [(THGlossaryEntryInfo *)self body];

  return [(THModelGlossaryEntryBody *)v2 headerInfo];
}

- (THWPStorage)bodyStorage
{
  v2 = [(THGlossaryEntryInfo *)self body];

  return [(THModelGlossaryEntryBody *)v2 bodyStorage];
}

- (THWPStorage)relatedTermsInfo
{
  v2 = [(THGlossaryEntryInfo *)self body];

  return [(THModelGlossaryEntryBody *)v2 relatedTermsInfo];
}

- (THWPStorage)linksInfo
{
  v2 = [(THGlossaryEntryInfo *)self body];

  return [(THModelGlossaryEntryBody *)v2 linksInfo];
}

- (id)childEnumerator
{
  v2 = [(THGlossaryEntryInfo *)self childInfos];

  return [v2 objectEnumerator];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithEntry:body:", self->mEntry, self->mBody}];
  [v4 setParentInfo:{-[THGlossaryEntryInfo parentInfo](self, "parentInfo")}];
  [v4 setOwningAttachment:{-[THGlossaryEntryInfo owningAttachment](self, "owningAttachment")}];
  return v4;
}

- (TSDInfoGeometry)geometry
{
  v2 = objc_alloc_init(TSDInfoGeometry);

  return v2;
}

- (void)setOwningAttachment:(id)a3
{
  if (a3)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THGlossaryEntryInfo setOwningAttachment:]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THGlossaryEntryInfo.m"];

    [v3 handleFailureInFunction:v4 file:v5 lineNumber:152 description:@"Glossary entries should not have an owning attachment."];
  }
}

- (BOOL)isAnchoredToText
{
  v2 = [(THGlossaryEntryInfo *)self owningAttachment];

  return [(TSDOwningAttachment *)v2 isAnchored];
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
  v3 = [(THGlossaryEntryInfo *)self body];
  result = self->mChildInfos;
  if (!result)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](-[THModelGlossaryEntryBody bodyFloatingInfos](v3, "bodyFloatingInfos"), "count") + 4}];
    if ([(THModelGlossaryEntryBody *)v3 headerInfo])
    {
      [v5 addObject:{-[THModelGlossaryEntryBody headerInfo](v3, "headerInfo")}];
    }

    if ([(THGlossaryEntryInfo *)self floatingInfo])
    {
      [v5 addObject:{-[THGlossaryEntryInfo floatingInfo](self, "floatingInfo")}];
    }

    if ([(THModelGlossaryEntryBody *)v3 bodyStorage])
    {
      [v5 addObject:{-[THModelGlossaryEntryBody bodyStorage](v3, "bodyStorage")}];
    }

    if ([(THModelGlossaryEntryBody *)v3 relatedTermsInfo])
    {
      [v5 addObject:{-[THModelGlossaryEntryBody relatedTermsInfo](v3, "relatedTermsInfo")}];
    }

    if ([(THModelGlossaryEntryBody *)v3 linksInfo])
    {
      [v5 addObject:{-[THModelGlossaryEntryBody linksInfo](v3, "linksInfo")}];
    }

    self->mChildInfos = [[NSArray alloc] initWithArray:v5];

    return self->mChildInfos;
  }

  return result;
}

@end