@interface SAUIAddViews(ClientFeedbackPresented)
- (void)_af_enumerateClientFeedbackDetails:()ClientFeedbackPresented;
@end

@implementation SAUIAddViews(ClientFeedbackPresented)

- (void)_af_enumerateClientFeedbackDetails:()ClientFeedbackPresented
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [a1 dialogPhase];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [a1 views];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __76__SAUIAddViews_ClientFeedbackPresented___af_enumerateClientFeedbackDetails___block_invoke;
          v13[3] = &unk_1E7347130;
          v14 = v5;
          v15 = v4;
          [v11 _af_enumerateClientFeedbackDetails:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end