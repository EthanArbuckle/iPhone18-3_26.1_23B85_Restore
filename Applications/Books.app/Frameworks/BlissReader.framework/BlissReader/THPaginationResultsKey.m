@interface THPaginationResultsKey
- (BOOL)isEqual:(id)a3;
- (THPaginationResultsKey)initWithCoder:(id)a3;
- (THPaginationResultsKey)initWithContentNode:(id)a3 presentationType:(id)a4;
- (THPaginationResultsKey)initWithContentNodeGUID:(id)a3 presentationType:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THPaginationResultsKey

- (THPaginationResultsKey)initWithContentNodeGUID:(id)a3 presentationType:(id)a4
{
  v8.receiver = self;
  v8.super_class = THPaginationResultsKey;
  v6 = [(THPaginationResultsKey *)&v8 init];
  if (v6)
  {
    v6->_contentNodeGUID = [a3 copy];
    v6->_presentationType = [a4 copyFixingSize];
  }

  return v6;
}

- (THPaginationResultsKey)initWithContentNode:(id)a3 presentationType:(id)a4
{
  v8.receiver = self;
  v8.super_class = THPaginationResultsKey;
  v6 = [(THPaginationResultsKey *)&v8 init];
  if (v6)
  {
    v6->_contentNodeGUID = [objc_msgSend(a3 "nodeGUID")];
    v6->_presentationType = [a4 copyFixingSize];
  }

  return v6;
}

- (THPaginationResultsKey)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = THPaginationResultsKey;
  v4 = [(THPaginationResultsKey *)&v6 init];
  if (v4)
  {
    v4->_contentNodeGUID = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"contentNodeGUID", "copy"}];
    v4->_presentationType = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"presentationTypeGUID"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[THPaginationResultsKey contentNodeGUID](self forKey:{"contentNodeGUID"), @"contentNodeGUID"}];
  v5 = [(THPaginationResultsKey *)self presentationType];

  [a3 encodeObject:v5 forKey:@"presentationTypeGUID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  v5 = -[NSString isEqualToString:](-[THPaginationResultsKey contentNodeGUID](self, "contentNodeGUID"), "isEqualToString:", [v4 contentNodeGUID]);
  if (v5)
  {
    v6 = [(THPaginationResultsKey *)self presentationType];
    v7 = [v4 presentationType];

    LOBYTE(v5) = [(THPresentationType *)v6 isEqualIncludingSize:v7];
  }

  return v5;
}

@end