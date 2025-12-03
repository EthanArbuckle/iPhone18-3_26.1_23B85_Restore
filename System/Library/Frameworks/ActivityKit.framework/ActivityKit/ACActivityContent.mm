@interface ACActivityContent
- (ACActivityContent)initWithContentData:(id)data staleDate:(id)date relevanceScore:(double)score;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ACActivityContent

- (ACActivityContent)initWithContentData:(id)data staleDate:(id)date relevanceScore:(double)score
{
  dataCopy = data;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = ACActivityContent;
  v11 = [(ACActivityContent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentData, data);
    objc_storeStrong(&v12->_staleDate, date);
    v12->_relevanceScore = score;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ACActivityContent alloc];
  contentData = [(ACActivityContent *)self contentData];
  staleDate = [(ACActivityContent *)self staleDate];
  [(ACActivityContent *)self relevanceScore];
  v7 = [(ACActivityContent *)v4 initWithContentData:contentData staleDate:staleDate relevanceScore:?];

  return v7;
}

@end