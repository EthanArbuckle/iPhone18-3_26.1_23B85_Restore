@interface THGlossaryEntryFloatingInfo
- (BOOL)isAnchoredToText;
- (BOOL)isInlineWithText;
- (NSArray)bodyFloatingInfos;
- (THGlossaryEntryFloatingInfo)initWithEntry:(id)a3 body:(id)a4;
- (TSDInfoGeometry)geometry;
- (id)childEnumerator;
- (id)childInfos;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setOwningAttachment:(id)a3;
@end

@implementation THGlossaryEntryFloatingInfo

- (THGlossaryEntryFloatingInfo)initWithEntry:(id)a3 body:(id)a4
{
  v9.receiver = self;
  v9.super_class = THGlossaryEntryFloatingInfo;
  v6 = [(THGlossaryEntryFloatingInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mEntry = a3;
    v6->mBody = a4;
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
  v2 = [(THGlossaryEntryFloatingInfo *)self body];

  return [(THModelGlossaryEntryBody *)v2 bodyFloatingInfos];
}

- (id)childEnumerator
{
  v2 = [(THGlossaryEntryFloatingInfo *)self childInfos];

  return [v2 objectEnumerator];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithEntry:body:", self->mEntry, self->mBody}];
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

- (void)setOwningAttachment:(id)a3
{
  if (a3)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THGlossaryEntryFloatingInfo setOwningAttachment:]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THGlossaryEntryFloatingInfo.m"];

    [v3 handleFailureInFunction:v4 file:v5 lineNumber:109 description:@"Glossary entries should not have an owning attachment."];
  }
}

- (BOOL)isAnchoredToText
{
  v2 = [(THGlossaryEntryFloatingInfo *)self owningAttachment];

  return [(TSDOwningAttachment *)v2 isAnchored];
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
  v2 = [(THGlossaryEntryFloatingInfo *)self body];

  return [(THModelGlossaryEntryBody *)v2 bodyFloatingInfos];
}

@end