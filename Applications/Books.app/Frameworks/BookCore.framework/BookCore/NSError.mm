@interface NSError
- (void)logRecursively;
@end

@implementation NSError

- (void)logRecursively
{
  userInfo = [(NSError *)self userInfo];
  localizedDescription = [(NSError *)self localizedDescription];
  localizedFailureReason = [(NSError *)self localizedFailureReason];
  localizedRecoverySuggestion = [(NSError *)self localizedRecoverySuggestion];
  localizedRecoveryOptions = [(NSError *)self localizedRecoveryOptions];
  NSLog(@"NSError %@\n%@\n%@\n%@\n%@\n%@", self, localizedDescription, localizedFailureReason, localizedRecoverySuggestion, localizedRecoveryOptions, userInfo);

  v8 = [userInfo objectForKey:@"NSDetailedErrors"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
  {
    NSLog(@"----------------------- Sub-errors: %03lu", [v8 count]);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v14 logRecursively];
          }

          else
          {
            NSLog(@"Not an NSError: %@", v14);
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    NSLog(@"-----------------------");
  }
}

@end