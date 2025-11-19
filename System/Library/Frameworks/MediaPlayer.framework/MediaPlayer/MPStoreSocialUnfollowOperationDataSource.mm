@interface MPStoreSocialUnfollowOperationDataSource
- (id)httpBody;
@end

@implementation MPStoreSocialUnfollowOperationDataSource

- (id)httpBody
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [(MPModelObject *)self->_person identifiers];
  v3 = [v2 universalStore];
  v4 = [v3 socialProfileID];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACB0];
    v9 = @"id";
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v5 dataWithJSONObject:v6 options:0 error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end