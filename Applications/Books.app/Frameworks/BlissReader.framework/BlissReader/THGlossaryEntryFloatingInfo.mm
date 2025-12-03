@interface THGlossaryEntryFloatingInfo
- (BOOL)isAnchoredToText;
- (BOOL)isInlineWithText;
- (NSArray)bodyFloatingInfos;
- (THGlossaryEntryFloatingInfo)initWithEntry:(id)entry body:(id)body;
- (TSDInfoGeometry)geometry;
- (id)childEnumerator;
- (id)childInfos;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setOwningAttachment:(id)attachment;
@end

@implementation THGlossaryEntryFloatingInfo

- (THGlossaryEntryFloatingInfo)initWithEntry:(id)entry body:(id)body
{
  v9.receiver = self;
  v9.super_class = THGlossaryEntryFloatingInfo;
  v6 = [(THGlossaryEntryFloatingInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mEntry = entry;
    v6->mBody = body;
  }

  return v7;
}

- (void)dealloc
{
  self->mBody = 0;
  v3.receiver = self;
  v3.super_class = THGlossaryEntryFloatingInfo;
  [(THGlossaryEntryFloatingInfo *)&v3 dealloc];
}

- (NSArray)bodyFloatingInfos
{
  body = [(THGlossaryEntryFloatingInfo *)self body];

  return [(THModelGlossaryEntryBody *)body bodyFloatingInfos];
}

- (id)childEnumerator
{
  childInfos = [(THGlossaryEntryFloatingInfo *)self childInfos];

  return [childInfos objectEnumerator];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithEntry:body:", self->mEntry, self->mBody}];
  [v4 setParentInfo:{-[THGlossaryEntryFloatingInfo parentInfo](self, "parentInfo")}];
  [v4 setGeometry:{-[THGlossaryEntryFloatingInfo geometry](self, "geometry")}];
  [v4 setOwningAttachment:{-[THGlossaryEntryFloatingInfo owningAttachment](self, "owningAttachment")}];
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
    v4 = [NSString stringWithUTF8String:"[THGlossaryEntryFloatingInfo setOwningAttachment:]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THGlossaryEntryFloatingInfo.m"];

    [v3 handleFailureInFunction:v4 file:v5 lineNumber:109 description:@"Glossary entries should not have an owning attachment."];
  }
}

- (BOOL)isAnchoredToText
{
  owningAttachment = [(THGlossaryEntryFloatingInfo *)self owningAttachment];

  return [(TSDOwningAttachment *)owningAttachment isAnchored];
}

- (BOOL)isInlineWithText
{
  if ([(THGlossaryEntryFloatingInfo *)self isFloatingAboveText])
  {
    return 0;
  }

  else
  {
    return ![(THGlossaryEntryFloatingInfo *)self isAnchoredToText];
  }
}

- (id)childInfos
{
  body = [(THGlossaryEntryFloatingInfo *)self body];

  return [(THModelGlossaryEntryBody *)body bodyFloatingInfos];
}

@end