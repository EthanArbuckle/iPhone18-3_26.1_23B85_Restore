@interface THModelStorageAnchor
+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)node pageLocation:(id)location;
+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)node storage:(id)storage range:(_NSRange)range;
+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)node storageUID:(id)d range:(_NSRange)range;
+ (THModelStorageAnchor)storageAnchorWithGlossaryEntry:(id)entry storageUID:(id)d range:(_NSRange)range;
- (THModelStorageAnchor)initWithContentNode:(id)node pageLocation:(id)location;
- (THModelStorageAnchor)initWithContentNode:(id)node storage:(id)storage range:(_NSRange)range;
- (THModelStorageAnchor)initWithContentNode:(id)node storageUID:(id)d range:(_NSRange)range;
- (THModelStorageAnchor)initWithGlossaryEntry:(id)entry storageUID:(id)d range:(_NSRange)range;
- (THWPStorage)storage;
- (_NSRange)range;
- (id)description;
- (unint64_t)absolutePageIndex;
- (void)dealloc;
- (void)setAbsolutePageIndex:(unint64_t)index;
@end

@implementation THModelStorageAnchor

- (THModelStorageAnchor)initWithContentNode:(id)node storageUID:(id)d range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v11.receiver = self;
  v11.super_class = THModelStorageAnchor;
  v8 = [(THModelBoundAnchor *)&v11 initWithContentNode:node];
  v9 = v8;
  if (v8)
  {
    [(THModelStorageAnchor *)v8 setStorageUID:d];
    [(THModelStorageAnchor *)v9 setRange:location, length];
    [(THModelStorageAnchor *)v9 setNodeRelativePageIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v9;
}

- (THModelStorageAnchor)initWithGlossaryEntry:(id)entry storageUID:(id)d range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v11.receiver = self;
  v11.super_class = THModelStorageAnchor;
  v8 = [(THModelBoundAnchor *)&v11 initWithGlossaryEntry:entry];
  v9 = v8;
  if (v8)
  {
    [(THModelStorageAnchor *)v8 setStorageUID:d];
    [(THModelStorageAnchor *)v9 setRange:location, length];
    [(THModelStorageAnchor *)v9 setNodeRelativePageIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v9;
}

- (THModelStorageAnchor)initWithContentNode:(id)node storage:(id)storage range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8 = [node nodeUniqueIDForInfo:storage];
  if (v8)
  {
    v9 = v8;
    v10 = objc_alloc(objc_opt_class());

    return [v10 initWithContentNode:node storageUID:v9 range:{location, length}];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }
}

+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)node storage:(id)storage range:(_NSRange)range
{
  v5 = [objc_alloc(objc_opt_class()) initWithContentNode:node storage:storage range:{range.location, range.length}];

  return v5;
}

- (THModelStorageAnchor)initWithContentNode:(id)node pageLocation:(id)location
{
  storageUID = [location storageUID];
  range = [location range];

  return [(THModelStorageAnchor *)self initWithContentNode:node storageUID:storageUID range:range, v8];
}

+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)node pageLocation:(id)location
{
  v4 = [objc_alloc(objc_opt_class()) initWithContentNode:node pageLocation:location];

  return v4;
}

- (void)dealloc
{
  [(THModelStorageAnchor *)self setStorageUID:0];
  v3.receiver = self;
  v3.super_class = THModelStorageAnchor;
  [(THModelBoundAnchor *)&v3 dealloc];
}

+ (THModelStorageAnchor)storageAnchorWithContentNode:(id)node storageUID:(id)d range:(_NSRange)range
{
  v5 = [[THModelStorageAnchor alloc] initWithContentNode:node storageUID:d range:range.location, range.length];

  return v5;
}

+ (THModelStorageAnchor)storageAnchorWithGlossaryEntry:(id)entry storageUID:(id)d range:(_NSRange)range
{
  v5 = [[THModelStorageAnchor alloc] initWithGlossaryEntry:entry storageUID:d range:range.location, range.length];

  return v5;
}

- (void)setAbsolutePageIndex:(unint64_t)index
{
  contentNode = [(THModelBoundAnchor *)self contentNode];
  if (index != 0x7FFFFFFFFFFFFFFFLL && contentNode)
  {
    [(THModelNode *)[(THModelBoundAnchor *)self contentNode] relativePageIndexForAbsolutePageIndex:index forPresentationType:[THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)[(THModelBoundAnchor *)self contentNode] context]]];
  }

  [(THModelStorageAnchor *)self setNodeRelativePageIndex:?];
}

- (unint64_t)absolutePageIndex
{
  if (![(THModelBoundAnchor *)self contentNode]|| [(THModelStorageAnchor *)self nodeRelativePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  contentNode = [(THModelBoundAnchor *)self contentNode];
  nodeRelativePageIndex = [(THModelStorageAnchor *)self nodeRelativePageIndex];
  v6 = [THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)[(THModelBoundAnchor *)self contentNode] context]];

  return [(THModelNode *)contentNode absolutePageIndexForRelativePageIndex:nodeRelativePageIndex forPresentationType:v6];
}

- (THWPStorage)storage
{
  objc_opt_class();
  [(THModelContentNode *)[(THModelBoundAnchor *)self contentNode] infoForNodeUniqueID:[(THModelStorageAnchor *)self storageUID] forPresentationType:[THPresentationType paginatedPresentationTypeInContext:[(THModelContentNode *)[(THModelBoundAnchor *)self contentNode] context]]];

  return TSUDynamicCast();
}

- (id)description
{
  absolutePageIndex = [(THModelStorageAnchor *)self absolutePageIndex];
  if (absolutePageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"?";
  }

  else
  {
    v4 = [NSString stringWithFormat:@"%lu", absolutePageIndex];
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