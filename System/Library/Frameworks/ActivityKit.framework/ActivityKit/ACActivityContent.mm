@interface ACActivityContent
- (ACActivityContent)initWithContentData:(id)a3 staleDate:(id)a4 relevanceScore:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ACActivityContent

- (ACActivityContent)initWithContentData:(id)a3 staleDate:(id)a4 relevanceScore:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ACActivityContent;
  v11 = [(ACActivityContent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentData, a3);
    objc_storeStrong(&v12->_staleDate, a4);
    v12->_relevanceScore = a5;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ACActivityContent alloc];
  v5 = [(ACActivityContent *)self contentData];
  v6 = [(ACActivityContent *)self staleDate];
  [(ACActivityContent *)self relevanceScore];
  v7 = [(ACActivityContent *)v4 initWithContentData:v5 staleDate:v6 relevanceScore:?];

  return v7;
}

@end