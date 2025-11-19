@interface MPMediaKitContentReport
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MPMediaKitContentReport

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MPMediaKitContentReport *)self concernItemID];
  v7 = [(MPMediaKitContentReport *)self concernTypeID];
  v8 = [v3 stringWithFormat:@"<%@: %p %@:'%@'>", v5, self, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(MPMediaKitContentReport *)self userID];
  v6 = [v5 copy];
  [v4 setUserID:v6];

  v7 = [(MPMediaKitContentReport *)self concernItemID];
  v8 = [v7 copy];
  [v4 setConcernItemID:v8];

  v9 = [(MPMediaKitContentReport *)self concernTypeID];
  v10 = [v9 copy];
  [v4 setConcernTypeID:v10];

  [v4 setConcernItemType:{-[MPMediaKitContentReport concernItemType](self, "concernItemType")}];
  v11 = [(MPMediaKitContentReport *)self commentText];
  v12 = [v11 copy];
  [v4 setCommentText:v12];

  v13 = [(MPMediaKitContentReport *)self displayText];
  v14 = [v13 copy];
  [v4 setDisplayText:v14];

  v15 = [(MPMediaKitContentReport *)self parentContentID];
  v16 = [v15 copy];
  [v4 setParentContentID:v16];

  v17 = [(MPMediaKitContentReport *)self parentConcernType];
  v18 = [v17 copy];
  [v4 setParentConcernType:v18];

  return v4;
}

@end