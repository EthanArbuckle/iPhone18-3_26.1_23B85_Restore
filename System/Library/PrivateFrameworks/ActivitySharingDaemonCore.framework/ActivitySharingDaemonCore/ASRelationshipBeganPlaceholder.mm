@interface ASRelationshipBeganPlaceholder
- (ASRelationshipBeganPlaceholder)initWithToken:(id)a3;
- (void)registerBlockWaitingOnSuccess:(id)a3;
@end

@implementation ASRelationshipBeganPlaceholder

- (ASRelationshipBeganPlaceholder)initWithToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASRelationshipBeganPlaceholder;
  v6 = [(ASRelationshipBeganPlaceholder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, a3);
  }

  return v7;
}

- (void)registerBlockWaitingOnSuccess:(id)a3
{
  blocksWaitingOnSuccess = self->_blocksWaitingOnSuccess;
  if (blocksWaitingOnSuccess)
  {
    v6 = blocksWaitingOnSuccess;
    v7 = self->_blocksWaitingOnSuccess;
    self->_blocksWaitingOnSuccess = v6;
    v8 = a3;
  }

  else
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = a3;
    v11 = [v9 set];
    v7 = self->_blocksWaitingOnSuccess;
    self->_blocksWaitingOnSuccess = v11;
  }

  v12 = self->_blocksWaitingOnSuccess;
  v16 = [a3 copy];

  v13 = MEMORY[0x23EF0EB00](v16);
  v14 = [(NSSet *)v12 setByAddingObject:v13];
  v15 = self->_blocksWaitingOnSuccess;
  self->_blocksWaitingOnSuccess = v14;
}

@end