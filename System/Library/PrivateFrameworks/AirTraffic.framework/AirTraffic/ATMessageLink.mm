@interface ATMessageLink
- (ATMessageLink)init;
- (void)sendRequest:(id)a3 withCompletion:(id)a4;
- (void)sendResponse:(id)a3 withCompletion:(id)a4;
- (void)sendResponse:(id)a3 withProgress:(id)a4 completion:(id)a5;
@end

@implementation ATMessageLink

- (void)sendResponse:(id)a3 withProgress:(id)a4 completion:(id)a5
{
  v7 = a5;
  [(ATMessageLink *)self doesNotRecognizeSelector:a2];
  v7[2](v7, 0);
}

- (void)sendResponse:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  [(ATMessageLink *)self doesNotRecognizeSelector:a2];
  v6[2](v6, 0);
}

- (void)sendRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  [(ATMessageLink *)self doesNotRecognizeSelector:a2];
  (*(v6 + 2))(v6, 0, 0);
}

- (ATMessageLink)init
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"ATMessageLink.m" lineNumber:14 description:@"ATMessageLink is an abstract class and requires a concrete implementation."];
  }

  v7.receiver = self;
  v7.super_class = ATMessageLink;
  return [(ATMessageLink *)&v7 init];
}

@end