@interface THModelStorageAnchor
+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)a3 pageLocation:(id)a4;
+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)a3 storage:(id)a4 range:(_NSRange)a5;
+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)a3 storageUID:(id)a4 range:(_NSRange)a5;
+ (THModelStorageAnchor)storageAnchorWithGlossaryEntry:(id)a3 storageUID:(id)a4 range:(_NSRange)a5;
- (THModelStorageAnchor)initWithContentNode:(id)a3 pageLocation:(id)a4;
- (THModelStorageAnchor)initWithContentNode:(id)a3 storage:(id)a4 range:(_NSRange)a5;
- (THModelStorageAnchor)initWithContentNode:(id)a3 storageUID:(id)a4 range:(_NSRange)a5;
- (THModelStorageAnchor)initWithGlossaryEntry:(id)a3 storageUID:(id)a4 range:(_NSRange)a5;
- (THWPStorage)storage;
- (_NSRange)range;
- (id)description;
- (unint64_t)absolutePageIndex;
- (void)dealloc;
- (void)setAbsolutePageIndex:(unint64_t)a3;
@end

@implementation THModelStorageAnchor

- (THModelStorageAnchor)initWithContentNode:(id)a3 storageUID:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v11.receiver = self;
  v11.super_class = THModelStorageAnchor;
  v8 = [(THModelBoundAnchor *)&v11 initWithContentNode:a3];
  v9 = v8;
  if (v8)
  {
    [(THModelStorageAnchor *)v8 setStorageUID:a4];
    [(THModelStorageAnchor *)v9 setRange:location, length];
    [(THModelStorageAnchor *)v9 setNodeRelativePageIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v9;
}

- (THModelStorageAnchor)initWithGlossaryEntry:(id)a3 storageUID:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v11.receiver = self;
  v11.super_class = THModelStorageAnchor;
  v8 = [(THModelBoundAnchor *)&v11 initWithGlossaryEntry:a3];
  v9 = v8;
  if (v8)
  {
    [(THModelStorageAnchor *)v8 setStorageUID:a4];
    [(THModelStorageAnchor *)v9 setRange:location, length];
    [(THModelStorageAnchor *)v9 setNodeRelativePageIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v9;
}

- (THModelStorageAnchor)initWithContentNode:(id)a3 storage:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v8 = [a3 nodeUniqueIDForInfo:a4];
  if (v8)
  {
    v9 = v8;
    v10 = objc_alloc(objc_opt_class());

    return [v10 initWithContentNode:a3 storageUID:v9 range:{location, length}];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }
}

+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)a3 storage:(id)a4 range:(_NSRange)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithContentNode:a3 storage:a4 range:{a5.location, a5.length}];

  return v5;
}

- (THModelStorageAnchor)initWithContentNode:(id)a3 pageLocation:(id)a4
{
  v7 = [a4 storageUID];
  v9 = [a4 range];

  return [(THModelStorageAnchor *)self initWithContentNode:a3 storageUID:v7 range:v9, v8];
}

+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)a3 pageLocation:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithContentNode:a3 pageLocation:a4];

  return v4;
}

- (void)dealloc
{
  [(THModelStorageAnchor *)self setStorageUID:0];
  v3.receiver = self;
  v3.super_class = THModelStorageAnchor;
  [(THModelBoundAnchor *)&v3 dealloc];
}

+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)a3 storageUID:(id)a4 range:(_NSRange)a5
{
  v5 = [[THModelStorageAnchor alloc] initWithContentNode:a3 storageUID:a4 range:a5.location, a5.length];

  return v5;
}

+ (THModelStorageAnchor)storageAnchorWithGlossaryEntry:(id)a3 storageUID:(id)a4 range:(_NSRange)a5
{
  v5 = [[THModelStorageAnchor alloc] initWithGlossaryEntry:a3 storageUID:a4 range:a5.location, a5.length];

  return v5;
}

- (void)setAbsolutePageIndex:(unint64_t)a3
{
  v5 = [(THModelBoundAnchor *)self contentNode];
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && v5)
  {
    [(THModelNode *)[(THModelBoundAnchor *)self contentNode] relativePageIndexForAbsolutePageIndex:a3 forPresentationType:[THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)[(THModelBoundAnchor *)self contentNode] context]]];
  }

  [(THModelStorageAnchor *)self setNodeRelativePageIndex:?];
}

- (unint64_t)absolutePageIndex
{
  if (![(THModelBoundAnchor *)self contentNode]|| [(THModelStorageAnchor *)self nodeRelativePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [(THModelBoundAnchor *)self contentNode];
  v5 = [(THModelStorageAnchor *)self nodeRelativePageIndex];
  v6 = [THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)[(THModelBoundAnchor *)self contentNode] context]];

  return [(THModelNode *)v4 absolutePageIndexForRelativePageIndex:v5 forPresentationType:v6];
}

- (THWPStorage)storage
{
  objc_opt_class();
  [(THModelContentNode *)[(THModelBoundAnchor *)self contentNode] infoForNodeUniqueID:[(THModelStorageAnchor *)self storageUID] forPresentationType:[THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)[(THModelBoundAnchor *)self contentNode] context]]];

  return TSUDynamicCast();
}

- (id)description
{
  v3 = [(THModelStorageAnchor *)self absolutePageIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"?";
  }

  else
  {
    v4 = [NSString stringWithFormat:@"%lu", v3];
  }

  if ([(THModelBoundAnchor *)self glossaryEntry])
  {
    v5 = [NSString stringWithFormat:@"glossary:'%@'; ", [(THModelGlossaryEntry *)[(THModelBoundAnchor *)self glossaryEntry] normalizedTerm]];
  }

  else
  {
    v5 = &stru_471858;
  }

  return [NSString stringWithFormat:@"anchor<%@pgi=%@; %@ @(%u, %u)>", v5, v4, self->mStorageUID, self->mRange.location, self->mRange.length];
}

- (_NSRange)range
{
  p_mRange = &self->mRange;
  location = self->mRange.location;
  length = p_mRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end