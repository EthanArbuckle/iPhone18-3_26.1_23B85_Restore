@interface MPStoreLyricsSnippetRequest
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPStoreLyricsSnippetRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(MPStoreLyricsSnippetRequest *)self snippetURL];
  [v5 setSnippetURL:v6];

  [v5 setResponseHandler:v4];
  return v5;
}

@end