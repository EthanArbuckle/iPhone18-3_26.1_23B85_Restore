@interface MPMediaKitContentReport
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MPMediaKitContentReport

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  concernItemID = [(MPMediaKitContentReport *)self concernItemID];
  concernTypeID = [(MPMediaKitContentReport *)self concernTypeID];
  v8 = [v3 stringWithFormat:@"<%@: %p %@:'%@'>", v5, self, concernItemID, concernTypeID];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  userID = [(MPMediaKitContentReport *)self userID];
  v6 = [userID copy];
  [v4 setUserID:v6];

  concernItemID = [(MPMediaKitContentReport *)self concernItemID];
  v8 = [concernItemID copy];
  [v4 setConcernItemID:v8];

  concernTypeID = [(MPMediaKitContentReport *)self concernTypeID];
  v10 = [concernTypeID copy];
  [v4 setConcernTypeID:v10];

  [v4 setConcernItemType:{-[MPMediaKitContentReport concernItemType](self, "concernItemType")}];
  commentText = [(MPMediaKitContentReport *)self commentText];
  v12 = [commentText copy];
  [v4 setCommentText:v12];

  displayText = [(MPMediaKitContentReport *)self displayText];
  v14 = [displayText copy];
  [v4 setDisplayText:v14];

  parentContentID = [(MPMediaKitContentReport *)self parentContentID];
  v16 = [parentContentID copy];
  [v4 setParentContentID:v16];

  parentConcernType = [(MPMediaKitContentReport *)self parentConcernType];
  v18 = [parentConcernType copy];
  [v4 setParentConcernType:v18];

  return v4;
}

@end