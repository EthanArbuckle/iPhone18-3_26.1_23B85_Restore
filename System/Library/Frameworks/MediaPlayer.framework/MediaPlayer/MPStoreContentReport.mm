@interface MPStoreContentReport
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MPStoreContentReport

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MPStoreContentReport *)self contentID];
  v7 = [(MPStoreContentReport *)self concernTypeID];
  v8 = [v3 stringWithFormat:@"<%@: %p %@:'%@'>", v5, self, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(MPStoreContentReport *)self userID];
  v6 = [v5 copy];
  [v4 setUserID:v6];

  v7 = [(MPStoreContentReport *)self contentID];
  v8 = [v7 copy];
  [v4 setContentID:v8];

  v9 = [(MPStoreContentReport *)self concernTypeID];
  v10 = [v9 copy];
  [v4 setConcernTypeID:v10];

  [v4 setConcernItemType:{-[MPStoreContentReport concernItemType](self, "concernItemType")}];
  v11 = [(MPStoreContentReport *)self commentText];
  v12 = [v11 copy];
  [v4 setCommentText:v12];

  v13 = [(MPStoreContentReport *)self displayText];
  v14 = [v13 copy];
  [v4 setDisplayText:v14];

  return v4;
}

@end