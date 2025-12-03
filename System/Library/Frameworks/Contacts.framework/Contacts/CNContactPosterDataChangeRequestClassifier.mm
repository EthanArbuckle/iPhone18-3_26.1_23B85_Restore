@interface CNContactPosterDataChangeRequestClassifier
+ (id)classifyRequests:(id)requests;
- (CNContactPosterDataChangeRequestClassifier)init;
@end

@implementation CNContactPosterDataChangeRequestClassifier

+ (id)classifyRequests:(id)requests
{
  v17 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v5 = objc_alloc_init(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = requestsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) acceptVisitor:{v5, v12}];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (CNContactPosterDataChangeRequestClassifier)init
{
  v11.receiver = self;
  v11.super_class = CNContactPosterDataChangeRequestClassifier;
  v2 = [(CNContactPosterDataChangeRequestClassifier *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    createRequests = v2->_createRequests;
    v2->_createRequests = v3;

    v5 = objc_opt_new();
    updateRequests = v2->_updateRequests;
    v2->_updateRequests = v5;

    v7 = objc_opt_new();
    deleteRequests = v2->_deleteRequests;
    v2->_deleteRequests = v7;

    v9 = v2;
  }

  return v2;
}

@end