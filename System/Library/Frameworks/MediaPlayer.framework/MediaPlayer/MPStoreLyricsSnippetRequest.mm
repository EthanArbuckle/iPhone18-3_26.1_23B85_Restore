@interface MPStoreLyricsSnippetRequest
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation MPStoreLyricsSnippetRequest

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_opt_new();
  snippetURL = [(MPStoreLyricsSnippetRequest *)self snippetURL];
  [v5 setSnippetURL:snippetURL];

  [v5 setResponseHandler:handlerCopy];
  return v5;
}

@end