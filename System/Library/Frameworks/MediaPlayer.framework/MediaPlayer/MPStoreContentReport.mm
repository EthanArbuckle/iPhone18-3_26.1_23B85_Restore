@interface MPStoreContentReport
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MPStoreContentReport

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  contentID = [(MPStoreContentReport *)self contentID];
  concernTypeID = [(MPStoreContentReport *)self concernTypeID];
  v8 = [v3 stringWithFormat:@"<%@: %p %@:'%@'>", v5, self, contentID, concernTypeID];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  userID = [(MPStoreContentReport *)self userID];
  v6 = [userID copy];
  [v4 setUserID:v6];

  contentID = [(MPStoreContentReport *)self contentID];
  v8 = [contentID copy];
  [v4 setContentID:v8];

  concernTypeID = [(MPStoreContentReport *)self concernTypeID];
  v10 = [concernTypeID copy];
  [v4 setConcernTypeID:v10];

  [v4 setConcernItemType:{-[MPStoreContentReport concernItemType](self, "concernItemType")}];
  commentText = [(MPStoreContentReport *)self commentText];
  v12 = [commentText copy];
  [v4 setCommentText:v12];

  displayText = [(MPStoreContentReport *)self displayText];
  v14 = [displayText copy];
  [v4 setDisplayText:v14];

  return v4;
}

@end