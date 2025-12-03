@interface ATMessageLink
- (ATMessageLink)init;
- (void)sendRequest:(id)request withCompletion:(id)completion;
- (void)sendResponse:(id)response withCompletion:(id)completion;
- (void)sendResponse:(id)response withProgress:(id)progress completion:(id)completion;
@end

@implementation ATMessageLink

- (void)sendResponse:(id)response withProgress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  [(ATMessageLink *)self doesNotRecognizeSelector:a2];
  completionCopy[2](completionCopy, 0);
}

- (void)sendResponse:(id)response withCompletion:(id)completion
{
  completionCopy = completion;
  [(ATMessageLink *)self doesNotRecognizeSelector:a2];
  completionCopy[2](completionCopy, 0);
}

- (void)sendRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  [(ATMessageLink *)self doesNotRecognizeSelector:a2];
  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (ATMessageLink)init
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATMessageLink.m" lineNumber:14 description:@"ATMessageLink is an abstract class and requires a concrete implementation."];
  }

  v7.receiver = self;
  v7.super_class = ATMessageLink;
  return [(ATMessageLink *)&v7 init];
}

@end