@interface THPaginationResultsKey
- (BOOL)isEqual:(id)equal;
- (THPaginationResultsKey)initWithCoder:(id)coder;
- (THPaginationResultsKey)initWithContentNode:(id)node presentationType:(id)type;
- (THPaginationResultsKey)initWithContentNodeGUID:(id)d presentationType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THPaginationResultsKey

- (THPaginationResultsKey)initWithContentNodeGUID:(id)d presentationType:(id)type
{
  v8.receiver = self;
  v8.super_class = THPaginationResultsKey;
  v6 = [(THPaginationResultsKey *)&v8 init];
  if (v6)
  {
    v6->_contentNodeGUID = [d copy];
    v6->_presentationType = [type copyFixingSize];
  }

  return v6;
}

- (THPaginationResultsKey)initWithContentNode:(id)node presentationType:(id)type
{
  v8.receiver = self;
  v8.super_class = THPaginationResultsKey;
  v6 = [(THPaginationResultsKey *)&v8 init];
  if (v6)
  {
    v6->_contentNodeGUID = [objc_msgSend(node "nodeGUID")];
    v6->_presentationType = [type copyFixingSize];
  }

  return v6;
}

- (THPaginationResultsKey)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = THPaginationResultsKey;
  v4 = [(THPaginationResultsKey *)&v6 init];
  if (v4)
  {
    v4->_contentNodeGUID = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"contentNodeGUID", "copy"}];
    v4->_presentationType = [coder decodeObjectOfClass:objc_opt_class() forKey:@"presentationTypeGUID"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[THPaginationResultsKey contentNodeGUID](self forKey:{"contentNodeGUID"), @"contentNodeGUID"}];
  presentationType = [(THPaginationResultsKey *)self presentationType];

  [coder encodeObject:presentationType forKey:@"presentationTypeGUID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  contentNodeGUID = self->_contentNodeGUID;
  presentationType = self->_presentationType;

  return [v4 initWithContentNodeGUID:contentNodeGUID presentationType:presentationType];
}

- (void)dealloc
{
  self->_contentNodeGUID = 0;

  self->_presentationType = 0;
  v3.receiver = self;
  v3.super_class = THPaginationResultsKey;
  [(THPaginationResultsKey *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  v5 = -[NSString isEqualToString:](-[THPaginationResultsKey contentNodeGUID](self, "contentNodeGUID"), "isEqualToString:", [v4 contentNodeGUID]);
  if (v5)
  {
    presentationType = [(THPaginationResultsKey *)self presentationType];
    presentationType2 = [v4 presentationType];

    LOBYTE(v5) = [(THPresentationType *)presentationType isEqualIncludingSize:presentationType2];
  }

  return v5;
}

@end